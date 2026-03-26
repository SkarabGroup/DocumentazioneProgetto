#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *

#set page(margin: 2.5cm)
#set text(font: "New Computer Modern", size: 11pt)
#set heading(numbering: "1.")

#align(center)[
  #text(18pt, weight: "bold")[Selezione Modelli LLM: AWS Bedrock]
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
  *Nota:* Questo documento è un appunto informale di analisi e selezione dei modelli LLM per il sistema Code Guardian. Non fa parte della documentazione ufficiale del progetto.
]

#v(1em)

= Contesto

Code Guardian utilizza *AWS Bedrock* come unico provider LLM. La scelta del provider unico garantisce:

- *Data residency*: i dati rimangono nell'infrastruttura AWS, compatibile con le policy di data governance del cliente.
- *Integrazione nativa IAM*: le Lambda Remediation Agents accedono a Bedrock tramite IAM Role, senza chiavi API da gestire o segreti da ruotare.
- *Pricing on-demand*: nessun impegno volumetrico o contratto privato. Il costo è proporzionale all'utilizzo reale.

La valutazione ha coperto *tutti i provider* disponibili su Bedrock a marzo 2026: ~100 modelli da 13+ provider. I modelli Anthropic/Claude sono esclusi per vincolo cliente. Vengono valutati tutti i candidati non-Anthropic rilevanti per task di analisi del codice e sicurezza.

= Modelli Bedrock candidati

#[
#set text(size: 8.5pt)
#figure(
  table(
    columns: (1.8fr, 1fr, 2.8fr, 0.85fr, 0.85fr, 0.7fr, 0.8fr, 0.8fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header(
      [*Modello*], [*Provider*], [*Model ID Bedrock*],
      [*In \$/MTok*], [*Out \$/MTok*], [*Context*], [*SWE-bench*], [*HumanEval*]
    ),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => if col <= 2 { left + horizon } else { center + horizon },

    [Amazon Nova Premier],        [Amazon],    [amazon.nova-premier-v1:0],                       [\$2.50],  [\$12.50], [1M],   [],        [],
    [Amazon Nova Pro],            [Amazon],    [amazon.nova-pro-v1:0],                           [\$0.80],  [\$3.20],  [],     [],        [89%],
    [Amazon Nova Lite],           [Amazon],    [amazon.nova-lite-v1:0],                          [\$0.06],  [\$0.24],  [300K], [],        [85.4%],
    [Amazon Nova Micro],          [Amazon],    [amazon.nova-micro-v1:0],                         [\$0.035], [\$0.14],  [128K], [],        [81.1%],
    [Llama 4 Scout 17B],          [Meta],      [meta.llama4-scout-17b-instruct-v1:0],            [n.d.],    [n.d.],    [10M],  [],        [],
    [Llama 4 Maverick 17B],       [Meta],      [meta.llama4-maverick-17b-instruct-v1:0],         [n.d.],    [n.d.],    [],     [],        [],
    [Llama 3.3 70B],              [Meta],      [meta.llama3-3-70b-instruct-v1:0],                [~\$0.99], [~\$0.99], [128K], [],        [],
    [Mistral Large 3],            [Mistral],   [mistral.mistral-large-3-v1:0],                   [n.d.],    [n.d.],    [],     [],        [],
    [Mistral Small],              [Mistral],   [mistral.mistral-small-v1:0],                     [~\$0.10], [~\$0.30], [],     [],        [],
    [DeepSeek R1],                [DeepSeek],  [deepseek.r1-v1:0],                               [n.d.],    [n.d.],    [],     [],        [],
    [Qwen3 235B A22B],            [Qwen],      [qwen.qwen3-235b-a22b-v1:0],                      [n.d.],    [n.d.],    [],     [],        [],
    [NVIDIA Nemotron 3 Super],    [NVIDIA],    [nvidia.nemotron-3-super-v1:0],                   [n.d.],    [n.d.],    [],     [],        [],
    [Gemma 3 27B PT],             [Google],    [google.gemma-3-27b-pt-v1:0],                     [n.d.],    [n.d.],    [],     [],        [],
    [Gemma 3 12B IT],             [Google],    [google.gemma-3-12b-it-v1:0],                     [n.d.],    [n.d.],    [],     [],        [],
  ),
  caption: "Modelli Bedrock candidati, prezzi on-demand marzo 2026"
)
]

= Modelli esclusi

*Anthropic / Claude*: vincolo cliente. Nessun modello Anthropic viene considerato indipendentemente dalle prestazioni.

*DeepSeek (R1, V3) e Qwen (Alibaba)*: esclusi per *compliance*. Code Guardian analizza codice sorgente contenente segreti e vulnerabilità; inviare questi dati a un provider di origine cinese introduce un rischio di compliance contrattuale non accettabile, indipendentemente dal fatto che i dati transitino su infrastruttura AWS.

*Llama 4 Scout / Maverick e Mistral Large 3*: candidati frontier legittimi (Llama 4: aprile 2025, Mistral Large 3: dicembre 2025) con qualità paragonabile o superiore a Nova Premier. Esclusi in questa iterazione per *pricing su Bedrock non ancora consolidato* (dati di costo stabili non disponibili a marzo 2026), non per qualità. *Da rivalutare a settembre 2026* quando i prezzi Bedrock saranno stabili.

*NVIDIA Nemotron 3 Super*: posizionato su multi-agent orchestration e inferenza ibrida MoE, non su analisi di codice e security reasoning. Nessun benchmark rilevante per i task di Code Guardian.

*Llama 3.3 70B, Mistral Small*: adeguati per task deterministici (ROUTING, OPENAPI_SIMPLE), ma Nova Micro e Nova Lite sono già ottimali per quegli slot e garantiscono uniformità del batch pricing Nova.

*Google Gemma 3*: da non confondere con Gemini (disponibile solo su Google Cloud Vertex AI, non su Bedrock). Gemma 3 è open-source; le varianti disponibili su Bedrock sono 4B IT, 12B IT e 27B PT. Dimensioni insufficienti per task security-critical; il 27B è pre-trained (non instruction-tuned, non utilizzabile direttamente). Nessun benchmark security-specific pubblicato.

*Modelli generazione immagini (Stability AI, Luma AI), embedding (Cohere), video*: fuori scope per Code Guardian.

= Selezione finale per categoria

Le 9 categorie corrispondono esattamente all'`enum TaskCategory` nel diagramma C4 Level 4 (`assets/st_diagrams/code/plantuml/bedrock_agents.plantuml`).

#[
#set text(size: 8.5pt)
#figure(
  table(
    columns: (1.8fr, 1.5fr, 2.6fr, 0.7fr, 0.7fr, 0.7fr, 2.8fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header(
      [*Categoria*], [*Modello*], [*Model ID Bedrock*],
      [*In \$/M*], [*Out \$/M*], [*SWE-bench*], [*Motivazione*]
    ),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => if col == 0 or col == 1 or col == 2 or col == 6 { left + horizon } else { center + horizon },

    [Code Remediation (OWASP)],   [Amazon Nova Premier], [amazon.nova-premier-v1:0],  [\$2.50],  [\$12.50], [], [Miglior modello Amazon disponibile; task complesso OWASP/SAST, ragionamento strutturale],
    [Docs Analysis + Generation], [Amazon Nova Premier], [amazon.nova-premier-v1:0],  [\$2.50],  [\$12.50], [], [Scrittura tecnica, analisi repo interi],
    [Security Remediation],       [Amazon Nova Premier], [amazon.nova-premier-v1:0],  [\$2.50],  [\$12.50], [], [Task security-critical: massima qualità tra modelli non-Anthropic su Bedrock],
    [Dependency CVE],             [Amazon Nova Pro],     [amazon.nova-pro-v1:0],      [\$0.80],  [\$3.20],  [], [Task semi-strutturato, output deterministico; HumanEval 89%, costo contenuto],
    [Secrets Remediation],        [Amazon Nova Premier], [amazon.nova-premier-v1:0],  [\$2.50],  [\$12.50], [], [Conoscenza AWS SDK, IAM least privilege, Secrets Manager],
    [OpenAPI Fix (semplice)],     [Amazon Nova Lite],    [amazon.nova-lite-v1:0],     [\$0.06],  [\$0.24],  [], [Task deterministico; HumanEval 85.4%, costo minimo],
    [OpenAPI Fix (complesso)],    [Amazon Nova Premier], [amazon.nova-premier-v1:0],  [\$2.50],  [\$12.50], [], [Schema inconsistenti, security scheme errors: ragionamento strutturale],
    [Aggregazione Report],        [Amazon Nova Premier], [amazon.nova-premier-v1:0],  [\$2.50],  [\$12.50], [], [Sintesi multi-dominio, correlazioni tra findings],
    [Routing / Classificazione],  [Amazon Nova Micro],   [amazon.nova-micro-v1:0],    [\$0.035], [\$0.14],  [], [Task di classificazione triviale, costo minimo],
  ),
  caption: "Selezione finale modelli per categoria di task"
)
]

= Note sulla selezione

== Amazon Nova Premier per task complessi

Amazon Nova Premier (`amazon.nova-premier-v1:0`, \$2.50/\$12.50 per MTok) è scelto per le 6 categorie che richiedono qualità massima (Code Remediation, Security Remediation, Secrets Remediation, Docs Analysis, OpenAPI Fix complesso, Aggregazione Report) per tre ragioni combinate:

+ *AWS-native*: stesso account, stessa catena IAM, stessa Region dei Lambda Agents. Nessun dato attraversa provider diversi.
+ *Pricing fisso e noto*: \$2.50/\$12.50 sono stabili. Mistral Large 3 e Llama 4 Maverick, pur essendo candidati frontier legittimi, non hanno prezzi Bedrock consolidati a marzo 2026.
+ *Batch pricing integrato*: il −50% Nova batch si applica uniformemente a tutta la famiglia Nova (Premier + Pro + Lite + Micro), semplificando la gestione dei costi.

Nova Premier *non è l'unico candidato tecnicamente valido*: Mistral Large 3 (dicembre 2025) e Llama 4 Maverick (aprile 2025) sono modelli frontier che competono sulla qualità. La scelta è di governance e pricing, non di qualità assoluta.

== Amazon Nova Pro per Dependency CVE

Nova Pro (`amazon.nova-pro-v1:0`, \$0.80/\$3.20) con HumanEval 89% è sufficiente per il task Dependency CVE, che produce output semi-strutturato e deterministico (upgrade path + breaking changes). Il costo è significativamente inferiore a Premier. HumanEval 89% supera quello di Claude 3.5 Haiku (88.1%) che era il modello precedente per questa categoria.

== Amazon Nova Lite per OpenAPI semplice

Nova Lite (\$0.06/\$0.24) è adeguato per task completamente deterministici come aggiungere un `operationId` mancante o completare una `description` vuota. HumanEval 85.4%. Costo minimo.

== Rivalutazione futura: Mistral Large 3 e Llama 4

Mistral Large 3 (Mistral AI, dicembre 2025) e Llama 4 Scout / Maverick (Meta, aprile 2025) sono modelli frontier con qualità paragonabile o superiore a Nova Premier per task di codice e ragionamento. *Non sono esclusi per qualità*, ma per pricing Bedrock non ancora stabilizzato al momento di questa analisi.

Criteri per la rivalutazione (settembre 2026):
- Pricing Bedrock pubblico e stabile disponibile
- Benchmark indipendenti su task security-specific (OWASP, CVE) pubblicati
- Llama 4 Scout (10M token context): potenzialmente molto rilevante per analisi di repo large con 200K+ LOC

== Batch pricing

AWS Bedrock offre il −50% su tutti i modelli Nova per batch inference. Da attivare per analisi schedulate non urgenti (scan notturno dell'intera codebase). Il risparmio si applica a tutti i modelli della selezione.

= Stima costo per analisi (repo ~50K LOC)

#[
#set text(size: 8.5pt)
#figure(
  table(
    columns: (2fr, 1.5fr, 1.1fr, 1.1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header(
      [*Agente*], [*Modello*], [*Tok. input*], [*Tok. output*],
      [*Costo in*], [*Costo out*], [*Totale*]
    ),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => if col <= 1 { left + horizon } else { center + horizon },

    [Security Remediation],      [Amazon Nova Premier], [80 000],  [15 000], [\$0.200],   [\$0.1875],  [\$0.388],
    [Secrets Remediation],       [Amazon Nova Premier], [10 000],  [3 000],  [\$0.025],   [\$0.0375],  [\$0.063],
    [Dependency CVE],            [Amazon Nova Pro],     [15 000],  [5 000],  [\$0.012],   [\$0.016],   [\$0.028],
    [Documentation],             [Amazon Nova Premier], [60 000],  [20 000], [\$0.150],   [\$0.250],   [\$0.400],
    [OpenAPI Fix (semplice)],    [Amazon Nova Lite],    [5 000],   [2 000],  [\$0.0003],  [\$0.0005],  [~\$0.001],
    [OpenAPI Fix (complesso)],   [Amazon Nova Premier], [8 000],   [3 000],  [\$0.020],   [\$0.0375],  [\$0.058],
    [Aggregazione Report],       [Amazon Nova Premier], [40 000],  [10 000], [\$0.100],   [\$0.125],   [\$0.225],
    [Routing / Classificazione], [Amazon Nova Micro],   [2 000],   [500],    [\$0.00007], [\$0.00007], [~\$0.0001],
    [*Totale analisi*],          [],                    [],        [],       [],          [],          [*~\$1.16*],
  ),
  caption: "Stima costo per analisi, repo ~50K LOC, prezzi on-demand"
)
]

Con *batch pricing* (−50% modelli Nova): *~\$0.58/analisi* per run schedulate non urgenti. \
La voce dominante è Documentation + Security Remediation.
