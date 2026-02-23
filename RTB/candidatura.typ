#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)

//Macro da modificare a modo
#let titoloDocumento = "Lettera di Candidatura RTB - Docente Cardin"
#let dataDocumento = "23/02/2026"
#let emailGruppo = "skarabswegroup@gmail.com"

#page(header: none, numbering: none)[
  #align(center)[
    #v(1fr)
    #image("../assets/logo.jpg", width: 40%)
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

#pagebreak()

Egregio Professor Cardin,

con la presente, il gruppo *Skarab Group* comunica formalmente la propria intenzione di candidarsi alla revisione della *Requirements and Technology Baseline (RTB)* per il capitolato *C2*, proposto dall'azienda *Var Group*, dal nome 
\ \
#align(center)[
  *CodeGuardian - Piattaforma ad agenti per
l’audit e la remediation dei
repository software*
]
\
Si comunica, inoltre, che il gruppo ha sviluppato un *Proof of Concept* volto a validare la fattibilità tecnologica, reperibile al seguente indirizzo: #link("https://github.com/SkarabGroup/PoC")[#underline[Repository PoC]].

L'intera documentazione di progetto è consultabile visitando il sito ufficiale del gruppo, #link("https://skarabgroup.github.io/DocumentazioneProgetto/")[#underline[Skarab Group - Sito Documentazione]], oppure direttamente all'interno del #link("https://github.com/SkarabGroup/DOcumentazioneProgetto")[#underline[Repository Documentazione]].

Il documento di *Analisi dei Requisiti* aggiornato e completo è disponibile per la consultazione al seguente link: #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")[#underline[Analisi dei Requisiti v1.0.0]].

Confermiamo, in conclusione, la nostra ferma intenzione di completare e consegnare il progetto entro la data del *21/03/2026*.

#v(1cm)

#align(right)[
  *Il gruppo Skarab Group*
]

#v(1cm)