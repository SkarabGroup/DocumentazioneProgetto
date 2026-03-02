#set page(
  paper: "a4",
  margin: 2cm,
  header: context {
    if counter(page).get().first() > 1 [
      #set text(10pt, style: "normal")
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [Verbale riunione], [*Skarab Group - Anno accademico 2025/2026*],
      )
      #line(length: 100%, stroke: 0.5pt)
    ]
  },
  footer: context {
    if counter(page).get().first() > 1 [
      #align(center, counter(page).display())
    ]
  },
)

#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(justify: true)
#show heading: set block(above: 1.5em, below: 1em)

#let titoloDocumento = "Allineamento con Var Group"
#let dataDocumento = "2026-01-14"
#let emailGruppo = "skarabswegroup@gmail.com"
#let redattoreDocumento = "Zago Alice"
#let logoPath = "../../../assets/logo.jpg"

#let meetingStartingTime = "16:00"
#let meetingEndingTime = "16:58"
#let location = "Microsoft Teams"
#let chair = "Zago Alice"
#let attendees = "Suar Alberto, Zago Alice, Basso Kevin, Berengan Riccardo, Sandu Antonio, Sgreva Andrea"
#let assenti = "Martinello Riccardo"
#let managers = " Battistella Francesco, Pivetta Federico"

#align(center + horizon)[
  #v(-3cm)
  #if logoPath != "" {
    image(logoPath, width: 40%)
  }
  #v(1cm)
  #text(24pt, weight: "bold")[Skarab Group]
  #v(0.5cm)
  #line(length: 80%, stroke: 0.5pt)
  #v(0.5cm)
  #text(18pt, weight: "bold")[#titoloDocumento]
  #v(0.5cm)
  #line(length: 80%, stroke: 0.5pt)
  #v(2cm)
  #emailGruppo
]

#pagebreak()

#heading(level: 1, numbering: none)[Registro delle Modifiche]
#table(
  columns: (auto, auto, 1fr, auto, auto),
  inset: 10pt,
  align: center + horizon,
  fill: (x, y) => if y == 0 { gray.lighten(0%) },
  [*Data*], [*Versione*], [*Descrizione*], [*Redattore*], [*Verificatore*],
  [2026-01-14], [1.0.0], [Prima stesura del documento], [Zago Alice], [Suar Alberto],
)

#pagebreak()

#outline(title: [Indice], indent: auto)

#pagebreak()

= Informazioni generali

== Apertura
In data 14 gennaio 2026, alle ore #meetingStartingTime, ha avuto luogo in modalità telematica, tramite la piattaforma #location, la riunione di allineamento tra il team Skarab Group e i referenti dell'azienda Var Group.

== Presenti e assenti
#grid(
  columns: (120pt, 1fr),
  row-gutter: 1em,
  [*Presenti:*], [#attendees],
  [*Assenti:*], [#assenti],
  [*Referenti Aziendali:*], [#managers],
)

#v(1em)

= Ordine del giorno
#let punto1 = "Esposizione dello stato di avanzamento relativo all'Analisi dei Requisiti"
#let punto2 = "Chiarimento dubbi relativi al progetto"
#let punto3 = "Definizione obiettivi minimi per lo sviluppo del Proof of Concept (PoC)"

+ #punto1
+ #punto2
+ #punto3

#v(1em)

#let nota(etichetta, contenuto) = grid(
  columns: (80pt, 1fr),
  gutter: 10pt,
  [*#etichetta:*], [#contenuto],
)

= Svolgimento della Riunione

== Punto 1: #punto1
#nota("Sintesi")[
  Il team ha presentato ai referenti dell'azienda il lavoro svolto finora in merito all'*Analisi dei Requisiti*, concentrandosi sui casi d'uso lato Frontend e sui relativi diagrammi. L'obiettivo era mostrare come l'utente interagirà con l'applicazione e come verranno visualizzate le varie fasi dell'analisi.
]
#nota("Decisione")[
  I casi d'uso presentati sono stati considerati validi dai referenti.
]

== Punto 2: #punto2
#nota("Sintesi")[
  Il team ha esposto alcuni dubbi riguardanti la modellazione dell'architettura e la gestione dei dati. Nello specifico, si è discusso della necessità di definire i *casi d'uso lato Backend*, di come gestire le diverse richieste dell'utente (ad esempio, la possibilità di scegliere tra analisi di sicurezza, testing o documentazione) e sono state chieste delucidazioni sulla gestione dei token di accesso alle repository e sui permessi degli utenti.

  È stata sollevata anche la questione dei test di performance: il team ha domandato la fattibilità nel definire i requisiti di prestazione precisi senza test preventivi. Infine, è stata sottolineata l'importanza di stabilire dei *requisiti minimi di sistema* per garantire la corretta esecuzione dell'ambiente progettuale.
]
#nota("Decisione")[
  Si è stabilito di procedere con la stesura dei casi d'uso lato Backend, identificando come possibili attori "Backend" e "Frontend", così da mappare chiaramente le interazioni con l'orchestratore e il database. In merito agli *accessi*, è previsto l'utilizzo dei token, inseriti dall'owner della repository; ogni utente autorizzato potrà avviare scansioni senza reinserire il token.

  Per quanto riguarda le performance, Var Group ha concordato sulla difficoltà di definire vincoli quantitativi rigidi in questa fase. Verrà infine redatta una sezione dedicata ai requisiti di sistema.
]

== Punto 3: #punto3
#nota("Sintesi")[
  Il team ha aperto il confronto su come impostare lo sviluppo del *Proof of Concept* (PoC) per dimostrare al meglio l'utilità degli strumenti scelti e la fattibilità dell'architettura proposta.
]
#nota("Decisione")[
  È stato consigliato dai referenti di focalizzare gli sforzi iniziali sullo sviluppo di un singolo agente, integrandolo con un'interfaccia utente essenziale per permettere una prima valutazione della User Experience durante il processo di analisi. Il successo di questa fase servirà come prova della validità tecnologica del progetto e come base per lo sviluppo degli agenti successivi.
]

#v(1em)

= Chiusura
La riunione si è conclusa alle #meetingEndingTime.

#v(4cm)

#grid(
  columns: (1fr, 1fr),
  [
    *Responsabile Team Skarab:* \
    #v(1.5cm)
    #chair
  ],
  [
    *Referente Aziendale:* \
    #v(1.5cm)
    #line(length: 90%, stroke: 0.5pt)
    Var Group S.p.A
  ],
)
