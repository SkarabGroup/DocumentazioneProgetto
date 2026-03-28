#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *

#set page(margin: 2.5cm)
#set text(font: "New Computer Modern", size: 11pt)
#set heading(numbering: "1.")

#align(center)[
  #text(18pt, weight: "bold")[Bedrock Agent Layer: Architettura]
  #v(0.3em)
  #text(12pt, style: "italic")[Code Guardian, Appunti interni]
]

#v(1em)

#block(
  fill: luma(235),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
)[
  *Nota:* Questo documento è un appunto informale di architettura del layer LLM per le Lambda Remediation Agents. Non fa parte della documentazione ufficiale del progetto.
]

#v(1em)

= Contesto

Le *Lambda Remediation Agents* di Code Guardian (Phase 2 della Step Functions State Machine) invocano modelli LLM differenti per categoria di task: Amazon Nova Premier per remediation OWASP/Security/Secrets/Docs/OpenAPI complesso, Nova Pro per Dependency CVE, Nova Lite per OpenAPI semplice, Nova Micro per routing. Tutti i modelli sono Amazon Nova su AWS Bedrock.

Il layer Bedrock è implementato seguendo il *pattern Port/Adapter* (Hexagonal Architecture): le classi di dominio degli agenti non dipendono da AWS SDK, boto3 o da qualsiasi concetto Bedrock. Dipendono da due interfacce (Port) che esprimono le esigenze del dominio: invocare un LLM e costruire prompt. `BedrockAdapter` e `ModelRouter` sono Adapter nell'Infrastructure layer.

Questo disaccoppiamento consente di:
- Sostituire Bedrock con qualsiasi altro provider (OpenAI, Vertex AI) modificando solo l'Infrastructure layer.
- Mockare `ILLMProvider` in test unitari senza alcuna chiamata AWS.
- Aggiungere nuovi agenti nel Domain layer senza toccare l'infrastruttura.

= Diagramma C4 Level 4

Il diagramma si trova in:

```
assets/st_diagrams/code/plantuml/bedrock_agents.plantuml
```

Il diagramma è organizzato in *3 package*.

== Application Layer

Contiene le astrazioni condivise da tutti gli agenti:

- *`TaskCategory`*: enum con le 9 categorie di task: `CODE_REMEDIATION`, `DOCS_ANALYSIS`, `SECURITY_REMEDIATION`, `DEPENDENCY_CVE`, `SECRETS_REMEDIATION`, `OPENAPI_SIMPLE`, `OPENAPI_COMPLEX`, `REPORT_AGGREGATION`, `ROUTING`.
- *`ILLMProvider`* (Port): interfaccia con un solo metodo `invoke(systemPrompt, userPrompt, category)`. Tutto ciò che il domain sa di "parlare con un LLM".
- *`IPromptBuilder`* (Port): interfaccia con `buildSystemPrompt(ctx)` e `buildUserPrompt(ctx)`. Separa la costruzione del prompt dalla sua esecuzione.
- *`RemediationAgentBase`* (abstract): classe base che inietta `ILLMProvider` e `IPromptBuilder` e implementa `execute(ctx)`. Gli agenti concreti devono solo implementare `getTaskCategory()`.

== Domain

Implementazioni concrete degli agenti, ognuna responsabile di un solo tipo di task:

- `SecurityRemediationAgent`
- `SecretsRemediationAgent`
- `DepsRemediationAgent`
- `OpenAPIRemediationAgent` (ha un campo `isComplex: bool` per differenziare `OPENAPI_SIMPLE` da `OPENAPI_COMPLEX`)
- `ReportAggregatorAgent`

Tutti ereditano da `RemediationAgentBase` e non importano nulla di AWS.

== Infrastructure

- *`ModelRouter`*: mappa ogni `TaskCategory` al Model ID Bedrock corrispondente (vedi sezione 3).
- *`BedrockAdapter`*: implementa `ILLMProvider`. Tiene un `BedrockRuntimeClient`, delega al `ModelRouter` la risoluzione del Model ID, e chiama `InvokeModel`.

= Pattern Port/Adapter

== Come aggiungere un nuovo agente

+ Creare una nuova classe in *Domain* che eredita da `RemediationAgentBase`.
+ Implementare `getTaskCategory()` con la nuova categoria.
+ Aggiungere la categoria all'`enum TaskCategory` nell'Application Layer.
+ Aggiungere il mapping categoria → Model ID in `ModelRouter`.
+ Registrare la Lambda nella Step Functions State Machine.

Nessuna modifica a `BedrockAdapter`, `ILLMProvider`, `IPromptBuilder`, o agli agenti esistenti.

== Come sostituire Bedrock con un altro provider

Creare una nuova classe (es. `OpenAIAdapter`) che implementa `ILLMProvider` e iniettarla al posto di `BedrockAdapter` nella configurazione della Lambda. Nessuna modifica al Domain.

== Come mockare nei test

```python
class MockLLMProvider(ILLMProvider):
    def invoke(self, system_prompt, user_prompt, category):
        return '{"findings": []}'

agent = SecurityRemediationAgent(
    llm_provider=MockLLMProvider(),
    prompt_builder=SecurityPromptBuilder()
)
result = agent.execute(ctx)
```

Nessuna chiamata AWS, nessun costo, test deterministici.

= ModelRouter: Routing per categoria

#figure(
  table(
    columns: (2fr, 3fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header([*Categoria (`TaskCategory`)*], [*Model ID Bedrock*]),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: left + horizon,

    [`CODE_REMEDIATION`], [`amazon.nova-premier-v1:0`],
    [`DOCS_ANALYSIS`], [`amazon.nova-premier-v1:0`],
    [`SECURITY_REMEDIATION`], [`amazon.nova-premier-v1:0`],
    [`DEPENDENCY_CVE`], [`amazon.nova-pro-v1:0`],
    [`SECRETS_REMEDIATION`], [`amazon.nova-premier-v1:0`],
    [`OPENAPI_SIMPLE`], [`amazon.nova-lite-v1:0`],
    [`OPENAPI_COMPLEX`], [`amazon.nova-premier-v1:0`],
    [`REPORT_AGGREGATION`], [`amazon.nova-premier-v1:0`],
    [`ROUTING`], [`amazon.nova-micro-v1:0`],
  ),
  caption: "ModelRouter: mapping TaskCategory / Model ID Bedrock",
)

Il routing per categoria è preferito al routing dinamico (es. per lunghezza del prompt) perché il tipo di task è un predittore più affidabile dei requisiti di qualità. La complessità è controllata staticamente: `OpenAPIRemediationAgent.isComplex` viene settato dalla Lambda handler in base al tipo di errori Spectral trovati.

= Ciclo di esecuzione

Flusso completo per una singola Lambda Remediation Agent (es. `SecurityRemediationAgent`):

```
Step Functions
  └─ Avvia Lambda "SecurityRemediationAgent"
       Input: { task_token, s3_key: "/{sha}/raw/security.json" }

Lambda Handler
  ├─ Legge s3://bucket/{sha}/raw/security.json
  ├─ Costruisce ctx
  └─ Istanzia SecurityRemediationAgent(
         llm_provider=BedrockAdapter(client, router),
         prompt_builder=SecurityPromptBuilder()
     )

RemediationAgentBase.execute(ctx)
  ├─ IPromptBuilder.buildSystemPrompt(ctx)
  ├─ IPromptBuilder.buildUserPrompt(ctx)
  └─ ILLMProvider.invoke(system, user, SECURITY_REMEDIATION)

BedrockAdapter.invoke(...)
  ├─ ModelRouter.resolveModelId(SECURITY_REMEDIATION)
  │    → "amazon.nova-premier-v1:0"
  └─ BedrockRuntimeClient.invoke_model(modelId, body)
       → response text

Lambda Handler (continua)
  ├─ Scrive → s3://bucket/{sha}/remediation/security.json
  └─ sfn.send_task_success(taskToken, output)

Step Functions riprende
```

= Note e considerazioni future

- *Swap provider senza downtime*: il pattern Port/Adapter consente A/B test tra provider iniettando due implementazioni di `ILLMProvider` e distribuendo il traffico tramite feature flag.

- *Mock per test automatizzati*: ogni agente può essere testato in isolamento con fixture JSON predefinite. Considerare golden-file test: input fisso → output atteso → delta.

- *Versionamento prompt*: i prompt (`IPromptBuilder`) sono configurazione. Esternalizzarli su SSM Parameter Store o DynamoDB consente aggiornamenti senza re-deploy della Lambda; la struttura Port/Adapter lo rende possibile senza modifiche al Domain.

- *Prompt caching*: Amazon Nova Premier su Bedrock supporta il caching del system prompt invariante (`cache_control`). Risparmio stimato ~25% sui token input per le invocazioni Nova Premier.

- *Logging per categoria*: il `ModelRouter` è il punto ideale dove emettere metriche CloudWatch per categoria (latenza, costo stimato, tasso errore per modello), utile per il monitoring Grafana/Loki descritto in ST.typ.
