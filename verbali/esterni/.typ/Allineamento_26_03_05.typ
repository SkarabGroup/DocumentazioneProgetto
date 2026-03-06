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
#let dataDocumento = "2026-03-05"
#let emailGruppo = "skarabswegroup@gmail.com"
#let redattoreDocumento = "Riccardo Berengan"
#let logoPath = "../../../assets/logo.jpg"

#let meetingStartingTime = "14:00"
#let meetingEndingTime = "14:30"
#let location = "Microsoft Teams"
#let chair = "Berengan Riccardo"
#let attendees = "Suar Alberto, Zago Alice, Basso Kevin, Berengan Riccardo, Sandu Antonio, Sgreva Andrea"
#let assenti = "Martinello Riccardo"
#let managers = " Battistella Francesco"

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
  [2026-03-05], [1.0.0], [Verifica verbale], [], [Riccardo Berengan],
  [2026-03-05], [0.1.0], [Prima stesura del documento], [Riccardo Berengan], [Suar Alberto],
)

#pagebreak()

#outline(title: [Indice], indent: auto)

#pagebreak()

= Informazioni generali

== Apertura
In data 05 Marzo 2026, alle ore #meetingStartingTime, ha avuto luogo in modalità telematica, tramite la piattaforma #location, la riunione di allineamento tra il team Skarab Group e i referenti dell'azienda Var Group.

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
#let punto1 = "Esposizione dello stato di avanzamento ed esposizione del Proof of Concept (PoC)"
#let punto2 = "Discussione con l'azienda in relazione alla progettazione"
#let punto3 = "Pianificazione di runioni periodiche"

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
  Il team ha esposto ai rappresentanti dell'azienda lo stato di avanzamento del progetto, mostrando l'artefatto PoC in esecuzione. Conseguentemente, i referenti aziendali hanno posto dei quesiti di approfondimento in merito alle scelte tecnologiche effettuate. A seguito di ciò, la proponente ha sottolineato la superficialità nello sviluppo del sistema agentico, segnalando la necessità di un maggiore approfondimento durante la PB, al fine di soddisfare le aspettative.
]
#nota("Decisione")[
  SkarabGroup prende atto dei consigli forniti e ne fa tesoro per la progettazione ed il successivo sviluppo dell'artefatto MVP.
]

== Punto 2: #punto2
#nota("Sintesi")[
  Il team ha posto alcune domande ai rappresentanti dell'azienda in merito alla direzione da seguire per avviare correttamente la *Product Baseline*; in particolare, è stato suggerito il *Data Modeling* come primo aspetto da affrontare.
  Successivamente sono state tattate: 
  - La metodologia di deployment dell'applicazione tramite servizi AWS
  - La gestione delle credenziali utente e delle modalità di accesso alle repository
  - La selezione degli LLM da adottare per le analisi
  In merito al secondo punto, l'azienda ha posto il vincolo di escludere l'utilizzo delle GitHub App per il collegamento utente al proprio profilo GitHub.
]
#nota("Decisione")[
  Le restrizioni imposte ed i suggerimenti forniti dall'azienda fungeranno da elementi determinanti nella progettazione e nello sviluppo
]

== Punto 3: #punto3
#nota("Sintesi")[
  I membri del team presenti alla riunione hanno chiesto all'azienda di programmare un calendario delle riunioni, finora assente.
  Sono stati discussi l'ordine delle periodicità e la durata attesa delle riunioni. Inoltre i rappresentati dell'azienda si sono resi disponibili a rispondere velocemente al team tramite la piattaforma Slack per dubbi di ordine minore.
]
#nota("Decisione")[
  È stata pianificata la riunione successiva per il 2026-03-19 e deciso di mantenere una periodicità quindicinale. È stato anche previsto che possano essere convocate delle riunioni straordinarie in caso di emergenza.
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
