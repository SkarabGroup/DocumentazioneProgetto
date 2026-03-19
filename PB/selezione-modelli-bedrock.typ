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

La valutazione ha coperto *4 provider* disponibili su Bedrock a marzo 2026: *Anthropic*, *Amazon*, *Meta* e *Mistral*.

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

    [Claude Sonnet 4.6],          [Anthropic], [anthropic.claude-sonnet-4-6],                   [\$3.00],  [\$15.00], [1M],   [*77.2%*], [],
    [Claude 3.5 Sonnet (legacy)], [Anthropic], [anthropic.claude-3-5-sonnet-20241022-v2:0],      [\$6.00],  [\$30.00], [200K], [49%],     [92%],
    [Claude 3.5 Haiku],           [Anthropic], [anthropic.claude-3-5-haiku-20241022-v1:0],       [\$0.80],  [\$4.00],  [200K], [40.6%],   [88.1%],
    [Claude 3 Haiku],             [Anthropic], [anthropic.claude-3-haiku-20240307-v1:0],         [\$0.25],  [\$1.25],  [200K], [],        [],
    [Amazon Nova Premier],        [Amazon],    [amazon.nova-premier-v1:0],                       [\$2.50],  [\$12.50], [],     [],        [],
    [Amazon Nova Pro],            [Amazon],    [amazon.nova-pro-v1:0],                           [\$0.80],  [\$3.20],  [],     [],        [89%],
    [Amazon Nova Lite],           [Amazon],    [amazon.nova-lite-v1:0],                          [\$0.06],  [\$0.24],  [300K], [],        [85.4%],
    [Amazon Nova Micro],          [Amazon],    [amazon.nova-micro-v1:0],                         [\$0.035], [\$0.14],  [128K], [],        [81.1%],
    [Llama 3.1 70B],              [Meta],      [meta.llama3-1-70b-instruct-v1:0],                [~\$0.99], [~\$0.99], [128K], [],        [],
    [Llama 3.3 70B],              [Meta],      [(routing Bedrock)],                              [~\$0.99], [~\$0.99], [128K], [],        [],
    [Mixtral 8x7B],               [Mistral],   [mistral.mixtral-8x7b-instruct-v0:1],             [\$0.45],  [\$0.70],  [],     [],        [],
    [Mistral 7B],                 [Mistral],   [mistral.mistral-7b-instruct-v0:2],               [\$0.15],  [\$0.20],  [],     [],        [],
  ),
  caption: "Modelli Bedrock candidati, prezzi on-demand marzo 2026"
)
]

= Esclusione Meta e Mistral

I modelli *Meta* (Llama 3.1/3.3 70B) e *Mistral* (Mixtral 8x7B, Mistral 7B) sono stati esclusi dalla selezione finale per due ragioni:

+ *Mancanza di benchmark security-specific*: nessun dato pubblico su security reasoning (classificazione OWASP, analisi CVE, contesto exploit). I benchmark generici non sono rappresentativi di task security-critical.
+ *Qualità inconsistente su code security*: la letteratura documenta output di qualità variabile su task di analisi e remediation del codice. Per un sistema che produce fix di sicurezza direttamente consumati da sviluppatori in produzione, il rischio di false remediation o fix incorretti non è accettabile.

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

    [Code Remediation (OWASP)],   [Claude Sonnet 4.6],  [anthropic.claude-sonnet-4-6],              [\$3.00],  [\$15.00], [77.2%], [Best SWE-bench su Bedrock, context 1M, code fix precisi],
    [Docs Analysis + Generation], [Claude Sonnet 4.6],  [anthropic.claude-sonnet-4-6],              [\$3.00],  [\$15.00], [77.2%], [Scrittura tecnica eccellente, 1M ctx per repo interi],
    [Security Remediation],       [Claude Sonnet 4.6],  [anthropic.claude-sonnet-4-6],              [\$3.00],  [\$15.00], [77.2%], [Massima accuratezza su exploit/OWASP, nessun compromesso],
    [Dependency CVE],             [Claude 3.5 Haiku],   [anthropic.claude-3-5-haiku-20241022-v1:0], [\$0.80],  [\$4.00],  [40.6%], [Task semi-strutturato; supera Claude 3 Opus (22.2% SWE), costo contenuto],
    [Secrets Remediation],        [Claude Sonnet 4.6],  [anthropic.claude-sonnet-4-6],              [\$3.00],  [\$15.00], [77.2%], [Conoscenza AWS SDK, IAM least privilege, Secrets Manager],
    [OpenAPI Fix (semplice)],     [Amazon Nova Lite],   [amazon.nova-lite-v1:0],                    [\$0.06],  [\$0.24],  [],      [Task deterministico; ~12× più economico di Haiku, HumanEval 85.4%],
    [OpenAPI Fix (complesso)],    [Claude Sonnet 4.6],  [anthropic.claude-sonnet-4-6],              [\$3.00],  [\$15.00], [77.2%], [Schema inconsistenti, security scheme errors: ragionamento strutturale],
    [Aggregazione Report],        [Claude Sonnet 4.6],  [anthropic.claude-sonnet-4-6],              [\$3.00],  [\$15.00], [77.2%], [1M context, sintesi multi-dominio, correlazioni tra findings],
    [Routing / Classificazione],  [Amazon Nova Micro],  [amazon.nova-micro-v1:0],                   [\$0.035], [\$0.14],  [],      [~85× più economico di Sonnet 4.6; task di classificazione triviale],
  ),
  caption: "Selezione finale modelli per categoria di task"
)
]

= Note sulla selezione

== Claude Sonnet 4.6 e non il legacy Claude 3.5 Sonnet

Il legacy `claude-3-5-sonnet-20241022-v2:0` è dominato sotto ogni dimensione da Sonnet 4.6: costa il doppio (\$6/\$30 vs \$3/\$15 per MTok), ha SWE-bench del 49% contro il 77.2% e context window 200K contro 1M. Non esiste scenario in cui il legacy sia preferibile. Tutti i riferimenti al legacy devono essere rimossi dal codice.

== Amazon Nova Lite per OpenAPI semplice, non Claude 3 Haiku

Nova Lite (\$0.06/\$0.24) batte Claude 3 Haiku (\$0.25/\$1.25) sul costo (~4× input, ~5× output) con HumanEval comparabile (85.4%). Per task deterministici come aggiungere un `operationId` mancante o completare una `description` vuota, la qualità di Haiku è over-engineered.

== Perché non Amazon Nova Pro

Nova Pro (\$0.80/\$3.20) ha HumanEval 89%, comparabile a Claude 3.5 Haiku, ma non ha benchmark SWE-bench pubblici né benchmark su OWASP/security reasoning. Per un sistema il cui output è remediation di sicurezza, l'incertezza sulla qualità su task security-specific è inaccettabile.

== Prompt caching, batch pricing, Intelligent Routing

La selezione adotta tre ottimizzazioni di costo attivabili senza modifiche al codice applicativo:

- *Prompt caching*: il system prompt invariante di ogni Lambda viene messo in cache da Bedrock. Risparmio stimato ~25% sui token input per modelli Anthropic.
- *Batch pricing*: −50% su tutti i modelli Claude per batch inference. Da attivare per analisi schedulate non urgenti.
- *Bedrock Intelligent Prompt Routing*: opzione futura per distribuire richieste tra modelli in base alla complessità stimata del prompt.

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

    [Security Remediation],      [Claude Sonnet 4.6],  [80 000],  [15 000], [\$0.240],   [\$0.225],   [\$0.465],
    [Secrets Remediation],       [Claude Sonnet 4.6],  [10 000],  [3 000],  [\$0.030],   [\$0.045],   [\$0.075],
    [Dependency CVE],            [Claude 3.5 Haiku],   [15 000],  [5 000],  [\$0.012],   [\$0.020],   [\$0.032],
    [Documentation],             [Claude Sonnet 4.6],  [60 000],  [20 000], [\$0.180],   [\$0.300],   [\$0.480],
    [OpenAPI Fix (semplice)],    [Amazon Nova Lite],   [5 000],   [2 000],  [\$0.0003],  [\$0.0005],  [~\$0.001],
    [OpenAPI Fix (complesso)],   [Claude Sonnet 4.6],  [8 000],   [3 000],  [\$0.024],   [\$0.045],   [\$0.069],
    [Aggregazione Report],       [Claude Sonnet 4.6],  [40 000],  [10 000], [\$0.120],   [\$0.150],   [\$0.270],
    [Routing / Classificazione], [Amazon Nova Micro],  [2 000],   [500],    [\$0.00007], [\$0.00007], [~\$0.0001],
    [*Totale analisi*],          [],                   [],        [],       [],          [],          [*~\$1.39*],
  ),
  caption: "Stima costo per analisi, repo ~50K LOC, prezzi on-demand"
)
]

Con *prompt caching* attivo (~25% risparmio input Anthropic): *~\$1.05/analisi*. \
Con *batch pricing* (−50% modelli Claude): *~\$0.60/analisi* per run schedulate non urgenti. \
La voce dominante è Documentation + Security Remediation.
