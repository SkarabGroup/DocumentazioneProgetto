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
#let dataDocumento = "2026-03-18"
#let emailGruppo = "skarabswegroup@gmail.com"
#let redattoreDocumento = "Basso Kevin"
#let logoPath = "../../../assets/logo.jpg"

#let meetingStartingTime = "14:07"
#let meetingEndingTime = "14:36"
#let location = "Microsoft Teams"
#let chair = "Basso Kevin"
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
  [2026-03-18], [1.0.0], [Stesura verbale], [Basso Kevin], [Zago Alice],)

#pagebreak()

#outline(title: [Indice], indent: auto)

#pagebreak()

= Informazioni generali

== Apertura
In data 18 Marzo 2026, alle ore #meetingStartingTime, ha avuto luogo in modalità telematica, tramite la piattaforma #location, la riunione di allineamento tra il team Skarab Group e i referenti dell'azienda Var Group.

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
#let punto1 = "Esposizione architettura livello container del c4 model proposta per l'MVP"
#let punto2 = "Esposizione microservizio analisi"
#let punto3 = "Esposizione microservizio Credenziali"


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
  Il team ha esposto ai rappresentanti dell'azienda la scelta di adottare un'architettura a microservizi per l'MVP, illustrando la struttura composta da 2 microservizi: microservizio analisi e microservizio credenziali. Il team ha esposto i dubbi riguardo alla comunicazione tra i microservizi, esponendo la difficoltá di implementare una subnet privata e suggerendo un approccio basato su criptazione dei contenuti, scelta appoggiata e approvata dai rappresentanti dell'azienda.]
#nota("Decisione")[
  SkarabGroup ha deciso di adottare un'architettura a microservizi per l'MVP, composta da 2 microservizi: microservizio analisi e microservizio Credenziali. Per quanto riguarda la comunicazione tra i microservizi, SkarabGroup adotterá un approccio basato sulla criptazione dei contenuti, evitando l'implementazione di una subnet privata.]


#v(1em)

== Punto 2: #punto2
#nota("Sintesi")[
  Il team ha esposto ai rappresentanti dell'azienda la scelta di utilizzare un'architettura esagonale per il microservizio di analisi con il core hostato su ECS + Fargate, DataBase in Atlas MongoDB, le repo clonate nello storage effimero di Fargate poi zippate in S3 e gli agenti hostati su delle Lambda con un orchestratore implementato tramite Step Function. L'azienda si é mostrata dubbiosa sulla scelta di utilizzare un orchestratore basato su Step Function, tuttavia ha appoggiato la scelta e ha permesso al team di continuare la progettazione senza modifiche.]
#nota("Decisione")[
  SkarabGroup ha deciso di utilizzare un'architettura esagonale per il microservizio di analisi con il core hostato su ECS + Fargate, DataBase in Atlas MongoDB, le repo clonate nello storage effimero di Fargate poi zippate in S3 e gli agenti Hostati su delle Lambda con un orchestratore implementato tramite Step Functions, le risposte degli agenti saranno inviate ad un webhook implementato tramite API Gateway che inoltrerá le risposte al microservizio di analisi.]

== Punto 3: #punto3
#nota("Sintesi")[
  Il team ha esposto ai rappresentanti dell'azienda la scelta di utilizzare un'architettura esagonale per il microservizio di credenziali con il core hostato su AppRunner e database in RDS MySQL. L'azienda si é mostrata dubbiosa sulla scelta di utilizzare un database SQL, tuttavia ha appoggiato la scelta e ha permesso al team di continuare la progettazione senza modifiche.]
#nota("Decisione")[
  SkarabGroup ha deciso di utilizzare un'architettura esagonale per il microservizio di Credenziali con il core hostato su AppRunner, DataBase in RDS MySQL, le credenziali saranno inviate al microservizio di analisi tramite un webhook implementato tramite API Gateway che inoltrerá le credenziali al microservizio di analisi.]
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
