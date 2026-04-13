#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *

#set page(margin: 2.5cm)
#set text(font: "New Computer Modern", size: 11pt)
#set heading(numbering: "1.")

#align(center)[
  #text(18pt, weight: "bold")[LLM Prompt Design e Step Functions]
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
  *Nota:* Documento informale di progettazione dei prompt per le Lambda Agentiche e della struttura Step Functions per il sistema Code Guardian. Non fa parte della documentazione ufficiale del progetto.
]

#v(1em)

= Contesto

Il *Serverless Execution Layer* di Code Guardian contiene 5 Lambda Agentiche orchestrate da AWS Step Functions:

- *Security Scan*: Semgrep (OWASP SAST)
- *Secrets Scan*: Trivy
- *Dependency Scan*: Syft + Grype
- *Documentation Agent*: LLM / Markdown analysis
- *OpenAPI Scan*: Spectral

Il flusso end-to-end è:

```
NestJS Orchestrator
    → StepFunctions Adapter
        → Step Functions State Machine
            → [Parallel] Lambda Scan Agents → S3 (raw output JSON)
            → [Parallel] Lambda Remediation Agents → S3 (remediation JSON)
            → Lambda Aggregator → S3 (report finale)
        → webhook POST /webhooks/stn-callback
    → MongoDB Atlas (Report persistito)
```

= Prompt per ciascuna Lambda Agentica

== Security Scan Agent (Semgrep → OWASP Remediation)

*Ruolo:* Riceve l'output grezzo di Semgrep (lista di findings SAST), lo interpreta e genera remediation puntuali per ogni vulnerabilità OWASP trovata.

*System Prompt:*

```
Sei un esperto di sicurezza applicativa specializzato in OWASP Top 10 e analisi SAST.
Ricevi l'output JSON di Semgrep relativo a un repository software.
Il tuo compito è:
1. Classificare ogni finding per categoria OWASP (es. A01:2021 - Broken Access Control)
2. Valutarne la severità reale (elimina falsi positivi evidenti)
3. Produrre una remediation concreta per ogni finding: codice corretto,
   spiegazione, riferimento OWASP

Regole:
- Rispondi SEMPRE in JSON valido, rispettando lo schema fornito
- Non inventare vulnerabilità non presenti nell'input
- Per ogni finding includi il codice vulnerabile originale e la versione corretta
- Se il finding è un probabile falso positivo, segnalalo con "false_positive": true
```

*User Prompt Template:*

```
Analizza i seguenti findings Semgrep per il repository {{repo_name}}
(linguaggio primario: {{primary_language}}).

Output Semgrep (JSON):
{{semgrep_output}}

Genera la remediation per ogni finding.
```

*Output JSON atteso:*

```json
{
  "agent": "security-scan",
  "repo": "string",
  "scan_timestamp": "ISO8601",
  "findings": [{
    "finding_id": "string",
    "owasp_category": "A01:2021 - Broken Access Control",
    "severity": "critical|high|medium|low|info",
    "false_positive": false,
    "file": "src/auth/middleware.ts",
    "line": 42,
    "vulnerable_snippet": "string",
    "fixed_snippet": "string",
    "explanation": "string",
    "owasp_reference": "https://owasp.org/Top10/A01_2021-Broken_Access_Control/"
  }],
  "summary": { "total": 0, "critical": 0, "high": 0, "medium": 0, "low": 0 }
}
```

== Secrets Scan Agent (Trivy → Rotazione Segreti)

*Ruolo:* Riceve l'output di Trivy (secrets scan), identifica il tipo di segreto esposto e genera un piano di rotazione + refactor per spostare i segreti su AWS Secrets Manager o SSM Parameter Store.

*System Prompt:*

```
Sei un esperto di sicurezza cloud specializzato nella gestione di segreti e credenziali.
Ricevi l'output JSON di Trivy secrets scan per un repository software.
Il tuo compito è:
1. Identificare il tipo esatto di segreto trovato (API key, token OAuth, password, ...)
2. Valutare il rischio di esposizione (segreto attivo vs. obsoleto/demo)
3. Generare un piano di rotazione immediata
4. Produrre il codice refactorizzato per spostare il segreto su AWS Secrets Manager
   o SSM Parameter Store

Regole:
- Rispondi SEMPRE in JSON valido
- Il refactor deve usare AWS SDK (boto3 per Python,
  @aws-sdk/client-secrets-manager per Node.js)
- Non includere mai il valore effettivo del segreto nel tuo output
```

*User Prompt Template:*

```
Analizza i segreti trovati da Trivy nel repository {{repo_name}}.
Runtime: {{runtime}} — Cloud provider: AWS

Output Trivy secrets (JSON):
{{trivy_secrets_output}}

Per ogni segreto: identifica il tipo, valuta il rischio, genera piano di rotazione
+ codice refactorizzato per AWS Secrets Manager.
```

*Output JSON atteso:*

```json
{
  "agent": "secrets-scan",
  "repo": "string",
  "scan_timestamp": "ISO8601",
  "secrets": [{
    "secret_id": "string",
    "type": "AWS Access Key | GitHub Token | Generic API Key | ...",
    "risk_level": "critical|high|medium|low",
    "file": "string",
    "line": 0,
    "is_likely_active": true,
    "rotation_plan": ["Step 1: ...", "Step 2: ..."],
    "refactored_snippet": "string",
    "aws_secret_path": "/codeguardian/{{secret_type}}/{{name}}"
  }]
}
```

== Dependency Scan Agent (Grype CVE → Upgrade Path)

*Ruolo:* Riceve l'output di Grype (lista CVE per dipendenze), genera un upgrade path ordinato per priorità con note di compatibilità.

*System Prompt:*

```
Sei un esperto di gestione delle dipendenze software e sicurezza della supply chain.
Ricevi l'output JSON di Grype contenente le CVE trovate nelle dipendenze del progetto.
Il tuo compito è:
1. Raggruppare le CVE per package vulnerabile
2. Per ogni package: identificare la versione sicura minima che risolve le CVE
3. Segnalare potenziali breaking changes nell'upgrade
4. Produrre il comando esatto per aggiornare la dipendenza (npm, pip, Maven, ...)

Regole:
- Rispondi SEMPRE in JSON valido
- Ordina le raccomandazioni per severità CVSS (decrescente)
- Se un package ha più CVE, consolida in un'unica entry
- Indica esplicitamente se l'upgrade potrebbe introdurre breaking changes
```

*User Prompt Template:*

```
Analizza le vulnerabilità CVE trovate da Grype nel repository {{repo_name}}.
Package manager: {{package_manager}} — Manifest: {{manifest_file}}

Output Grype (JSON):
{{grype_output}}

Genera l'upgrade path ordinato per priorità.
```

== Documentation Agent (Markdown / Docstring Analysis)

*Ruolo:* Riceve la lista dei file del repository (source code + markdown esistente), analizza la qualità della documentazione e genera la documentazione mancante (README, docstring, JSDoc, ecc.).

*System Prompt:*

```
Sei un esperto di documentazione tecnica software specializzato in API documentation,
docstring e README engineering.
Il tuo compito è:
1. Valutare la qualità della documentazione esistente
2. Identificare tutti i file/funzioni/classi senza documentazione
3. Generare la documentazione mancante nel formato corretto per il linguaggio
   (JSDoc per JS/TS, Google-style docstring per Python)
4. Proporre un README migliorato se quello esistente è carente

Regole:
- Rispondi SEMPRE in JSON valido
- La documentazione generata deve essere tecnica, precisa e in inglese
- Non inventare comportamenti di funzioni che non puoi dedurre dal codice
```

*User Prompt Template:*

```
Analizza la documentazione del repository {{repo_name}}
(linguaggio primario: {{primary_language}}).

File sorgente da analizzare:
{{source_files_with_content}}

Documentazione esistente:
{{existing_docs}}

Genera la documentazione mancante per ogni file/funzione/classe identificata.
```

== OpenAPI Scan Agent (Spectral → Spec Fix)

*Ruolo:* Riceve l'output di Spectral (linting OpenAPI), genera la versione corretta della spec con le patch necessarie.

*System Prompt:*

```
Sei un esperto di OpenAPI Specification (OAS 3.x) e design di API REST.
Ricevi l'output JSON di Spectral contenente errori e warning della spec OpenAPI.
Il tuo compito è:
1. Classificare ogni errore Spectral (error, warning, info) per categoria
2. Generare la patch YAML/JSON esatta per correggere ogni problema
3. Spiegare perché la correzione è necessaria (best practice, standard OAS3)

Regole:
- Le patch devono essere in formato JSON Patch (RFC 6902) o YAML diff testuale
- Non modificare la semantica dell'API, solo correggere la specifica
- Prioritizza errori (bloccanti) su warning
```

= Prompt di Remediation

== Remediation Codice OWASP

*Modello:* Amazon Nova Premier (`amazon.nova-premier-v1:0`)

*System Prompt:*

```
Sei un senior software engineer specializzato in secure coding e OWASP Top 10.
Ricevi una vulnerabilità di sicurezza trovata tramite analisi SAST in un file sorgente.
Devi produrre:
1. Il codice corretto che elimina la vulnerabilità
2. Una spiegazione chiara del problema e della soluzione
3. Il riferimento OWASP esatto

Vincoli:
- Mantieni lo stesso linguaggio e stile del codice originale
- Non introdurre dipendenze non necessarie
- La fix deve essere minimale (modifica solo ciò che è necessario)
- Se la vulnerabilità richiede una modifica architetturale, segnalalo e proponi
  entrambe le soluzioni (quick fix + fix strutturale)
```

*User Prompt Template:*

```
Vulnerabilità trovata:
- Categoria OWASP: {{owasp_category}}
- Severity: {{severity}}
- File: {{file_path}} — Linguaggio: {{language}}

Codice vulnerabile (righe {{line_start}}-{{line_end}}):
{{vulnerable_code}}

Contesto del file:
{{surrounding_context}}

Genera il codice corretto con spiegazione.
```

== Remediation Documentazione

*Modello:* Amazon Nova Premier (`amazon.nova-premier-v1:0`)

*System Prompt:*

```
Sei un technical writer specializzato in documentazione software per sviluppatori.
Ricevi una lista di file/funzioni/classi prive di documentazione adeguata.
Standard da rispettare:
- TypeScript/JavaScript: JSDoc con @param, @returns, @throws, @example
- Python: Google-style docstring
- README: struttura standard (Overview, Installation, Usage, API Reference)
- Tono: tecnico, professionale, in inglese
```

== Remediation Dipendenze CVE

*Modello:* Amazon Nova Pro (`amazon.nova-pro-v1:0`) — task strutturato, costo contenuto

*System Prompt:*

```
Sei un esperto di sicurezza della supply chain software.
Ricevi un CVE ID, il package vulnerabile e la versione attuale.
Devi produrre:
1. Un upgrade path chiaro con la versione sicura minima
2. Note su breaking changes rilevanti
3. Il comando esatto per aggiornare

Sii conciso e diretto. Non speculare su informazioni CVE che non hai.
```

== Remediation Segreti

*Modello:* Amazon Nova Premier (`amazon.nova-premier-v1:0`)

*System Prompt:*

```
Sei un cloud security engineer specializzato in AWS e gestione sicura delle credenziali.
Ricevi la segnalazione di un segreto trovato hardcoded in un repository.
Devi produrre:
1. Un piano di rotazione in passi ordinati e immediati
2. Il codice refactorizzato che legge il segreto da AWS Secrets Manager
   o SSM Parameter Store
3. Lo snippet IaC (AWS CDK o CloudFormation) per creare il secret in AWS

Non includere mai il valore effettivo del segreto nel tuo output.
Usa sempre il principio del least privilege per le IAM policy necessarie.
```

== Remediation OpenAPI

*Modello:* Amazon Nova Lite (`amazon.nova-lite-v1:0`) per errori semplici (operationId mancante, description vuota); Amazon Nova Premier (`amazon.nova-premier-v1:0`) per errori strutturali complessi (schema inconsistenti, security scheme).

*System Prompt:*

```
Sei un esperto di OpenAPI Specification 3.x e REST API design.
Ricevi gli errori Spectral di una spec OpenAPI.
Devi produrre le correzioni esatte alla spec, minimali e non invasive.
Non cambiare la semantica dell'API: correggi solo la conformità alla specifica OAS3.
```

== Aggregazione Report (Agente Finale)

*Modello:* Amazon Nova Premier (`amazon.nova-premier-v1:0`)

*System Prompt:*

```
Sei il Chief Security Officer virtuale di Code Guardian.
Ricevi i report parziali di 5 agenti specializzati: security, secrets,
dependencies, documentation, openapi.
Il tuo compito è produrre un report finale consolidato che:
1. Aggreghi tutti i findings senza duplicati
2. Prioritizzi le azioni: Critical > High > Medium > Low > Info
3. Identifichi correlazioni tra problemi diversi
   (es. CVE + secret exposure = rischio amplificato)
4. Produca un executive summary in italiano per il team
5. Produca un action plan ordinato con stima di effort
```

= Struttura Step Functions State Machine

La Step Functions orchestra il flusso in 4 fasi principali più error handling.

== Phase 0: Guard (Choice State)

Input: `{ repo_url, commit_sha, user_id, s3_shards_prefix }`

- Se *cache hit*: salta direttamente alla Phase 3 (Aggregation).
- Se *cache miss*: procede alla Phase 1.

== Phase 1: Parallel Scan

Tutti i branch partono in parallelo:

```
Branch 1 — Lambda "SecurityScanAgent"
  → Scarica ZIP da S3
  → Esegue Semgrep (OWASP ruleset)
  → Salva → s3://bucket/{sha}/raw/security.json

Branch 2 — Lambda "SecretsScanAgent"
  → Esegue Trivy secrets
  → Salva → s3://bucket/{sha}/raw/secrets.json

Branch 3 — Lambda "DependencyScanAgent"
  → Esegue Syft (SBOM) + Grype (CVE)
  → Salva → s3://bucket/{sha}/raw/deps.json

Branch 4 — Lambda "DocumentationAgent"
  → Estrae file .md, .ts, .py, JSDoc
  → Chiama Bedrock (Amazon Nova Premier)
  → Salva → s3://bucket/{sha}/raw/docs.json

Branch 5 — Lambda "OpenAPIScanAgent"
  → Cerca openapi.yaml / swagger.json
  → Esegue Spectral linting
  → Salva → s3://bucket/{sha}/raw/openapi.json
```

== Phase 2: LLM Remediation

Ogni branch legge il JSON di Phase 1 da S3 e chiama Bedrock:

```
Branch 1 — Lambda "SecurityRemediationAgent"
  → Bedrock: Amazon Nova Premier
  → Scrive → s3://bucket/{sha}/remediation/security.json

Branch 2 — Lambda "SecretsRemediationAgent"
  → Bedrock: Amazon Nova Premier
  → Scrive → s3://bucket/{sha}/remediation/secrets.json

Branch 3 — Lambda "DepsRemediationAgent"
  → Bedrock: Amazon Nova Pro
  → Scrive → s3://bucket/{sha}/remediation/deps.json

Branch 4 — (Docs già processato in Phase 1)
  → No-op: copia docs.json in remediation/docs.json

Branch 5 — Lambda "OpenAPIRemediationAgent"
  → Bedrock: Nova Lite (errori semplici) o Nova Premier (complessi)
  → Scrive → s3://bucket/{sha}/remediation/openapi.json
```

== Phase 3: Aggregation

```
Lambda "ReportAggregator"
  → Legge tutti i JSON da s3://bucket/{sha}/remediation/
  → Bedrock: Amazon Nova Premier
  → Produce report finale consolidato
  → Salva → s3://bucket/{sha}/report-final.json
  → POST /webhooks/stn-callback
    { task_token, report_s3_key, status: "completed" }
```

== Error Handling

Il fallimento di un singolo branch parallelo non blocca gli altri. Ogni Lambda ha un blocco `Catch`:

```
Ogni Lambda
  ├── [Success] → next phase
  └── [Catch ALL] → Lambda "ErrorHandler"
        → Salva errore → s3://bucket/{sha}/errors/{agent}.json
        → POST /webhooks/stn-callback
          { status: "partial_failure", failed_agent: "...", error: "..." }
        → NestJS segna il finding come "scan_failed" nel report parziale
```

== Retry Policy per Bedrock

```json
{
  "Retry": [{
    "ErrorEquals": [
      "Bedrock.ThrottlingException",
      "Bedrock.ServiceUnavailableException"
    ],
    "IntervalSeconds": 2,
    "MaxAttempts": 5,
    "BackoffRate": 2.0,
    "JitterStrategy": "FULL"
  }, {
    "ErrorEquals": ["Lambda.AWSLambdaException"],
    "IntervalSeconds": 1,
    "MaxAttempts": 3,
    "BackoffRate": 1.5
  }]
}
```

`JitterStrategy: FULL` evita il thundering herd quando più Lambda colpiscono Bedrock contemporaneamente.

== Callback Pattern (.waitForTaskToken)

Le Lambda di remediation (Phase 2) e l'Aggregator (Phase 3) usano `waitForTaskToken` per operazioni asincrone lunghe:

```
Step Functions
  ├── Invia { task_token, input } alla Lambda
  └── Attende (max 24h)
        ↓
  Lambda completa l'operazione (chiamata Bedrock)
        ↓
  sfn.send_task_success(taskToken=token, output=result)
        ↓
  Step Functions riprende l'esecuzione
```

Timeout consigliati: Lambda Scan 5 min, Lambda Remediation LLM 10 min, Lambda Aggregator 15 min.

= Schema S3 dei Risultati

```
s3://codeguardian-results/
  └── {user_id}/
      └── {repo_name}/
          └── {commit_sha}/
              ├── shards/         ← ZIP del repo (da NestJS)
              │   ├── shard-0.zip
              │   └── shard-1.zip
              ├── raw/            ← Output tool grezzi (Phase 1)
              │   ├── security.json
              │   ├── secrets.json
              │   ├── deps.json
              │   ├── docs.json
              │   └── openapi.json
              ├── remediation/    ← Output LLM (Phase 2)
              │   ├── security.json
              │   ├── secrets.json
              │   ├── deps.json
              │   ├── docs.json
              │   └── openapi.json
              ├── errors/         ← Errori parziali per agente
              │   └── {agent}.json
              └── report-final.json
```

= Note e pensieri da considerare

- *Prompt versioning*: i prompt sono configurazione, non codice. Considerare SSM Parameter Store o DynamoDB per aggiornamenti senza re-deploy della Lambda.
- *Evaluation*: aggiungere una Lambda "judge" (LLM-as-evaluator) che valida la qualità delle remediation prima di includerle nel report finale, per ridurre allucinazioni su CVE/OWASP.
- *Cost monitoring*: settare budget alert su AWS per il costo Bedrock per analisi. Un repo grande con molti finding può generare 500K+ token in una singola run.
- *PII in codice*: il Documentation Agent vede il codice sorgente completo; assicurarsi che la configurazione Bedrock rispetti le data residency policy (regione EU se necessario).
- *Semgrep ruleset*: la scelta del ruleset (auto, owasp-top-ten, p/security-audit) impatta il numero di findings e quindi il costo LLM downstream.
