#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)

//Macro da modificare a modo
#let titoloDocumento = "<<<TITOLO>>"
#let dataDocumento = "<<<DATA>>>"
#let emailGruppo = "skarabswegroup@gmail.com"
#let redattoreDocumento = "<<<REDATTORE>>>"
#let versione = "<<<VERSIONE>>>"
#let modifica = "<<<MODIFICA>>>"
#let verificatore = "<<<VERIFICATORE>>>"

#page(header: none, numbering: none)[
  #align(center)[
    #v(1fr)
    #image("skarablogo_.jpg", width: 40%)
    #v(1cm)
    #text(size: 28pt, weight: "bold")[Skarab Group]
    #v(0.5cm)
    #line(length: 80%, stroke: 0.5pt)
    #v(0.5cm)
    #text(size: 18pt, weight: "bold")[#titoloDocumento]
    #v(0.5cm)
    #line(length: 80%, stroke: 0.5pt)
    #v(1fr)
    #emailGruppo
    #v(1fr)
  ]
  
]

#set page(
  header: [
    #grid(
      columns: (1fr,2fr),
      align: (left, right),
      [#titoloDocumento],[*Skarab Group - Anno accademico 2025/2026*]
    )
    #line(length: 100%, stroke: 0.5pt)
  ],
  footer: [
    #line(length: 100%, stroke: 0.5pt)
    #v(0.3em)
    #align(center)[#context {counter(page).display()}]
  ]
)


// Sezione Versionamento
#align(center)[
  #text(size: 16pt, weight: "bold")[Versionamento e changelog]
]

#v(1em)

#align(center)[
  #table(
    columns: (3cm, 3cm, 3.0cm, 3cm, 3cm),
    align: center + horizon,
    stroke: 0.5pt,
    fill: (_, y) => if y == 0 { rgb("#d0d0d0") },
    [*Data \ Modifica*], [*Versione*], [*Descrizione Modifica*], [*Redattore*], [*Verificatore*],
    [#dataDocumento], [#versione], [#modifica], [#redattoreDocumento], [#verificatore]
  )
]

#pagebreak()

// Indice
#outline(
  title: [Indice],
  depth: 3, //da aggiornare se necessario
  indent: auto
)
#pagebreak()

//Da qui iniziano gli argomenti
= Argomento
== Sotto argomento
=== Ancora più piccolo
= Recap
= Fonti




