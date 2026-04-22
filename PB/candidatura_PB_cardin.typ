#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)

//Macro da modificare a modo
#let titoloDocumento = "Lettera di Presentazione PB - Docente Cardin"
#let dataDocumento = "22/04/2026"
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

con la presente, il gruppo *Skarab Group* comunica formalmente la propria intenzione di candidarsi alla revisione della *Product Baseline (PB)* per il capitolato *C2*, proposto dall'azienda *Var Group*, dal nome 
\ \
#align(center)[
  *CodeGuardian - Piattaforma ad agenti per
l’audit e la remediation dei
repository software*
]
\
Si comunica, inoltre, che il gruppo ha sviluppato un *Minimum Viable Product (MVP)* che implementa un insieme completo di funzionalità essenziali, volto a dimostrare il valore della soluzione proposta e a supportarne la valutazione operativa, reperibile al seguente indirizzo: #link("https://github.com/SkarabGroup/MinimumViableProduct")[#underline[Repository MVP]].

Il verbale di approvazione del MVP da parte dell’azienda proponente è consultabile al seguente indirizzo: #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/esterni/Consegna_MVP_26_04_21.pdf")[#underline[Verbale di approvazione MVP]].

L'intera documentazione di progetto è consultabile visitando il sito ufficiale del gruppo, #link("https://skarabgroup.github.io/DocumentazioneProgetto/")[#underline[Skarab Group - Sito Documentazione]], oppure direttamente all'interno del #link("https://github.com/SkarabGroup/DocumentazioneProgetto")[#underline[Repository Documentazione]].

Il documento di *Specifica Tecnica* aggiornato e completo, versione *1.0.0*, è disponibile per la consultazione al seguente link: #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/ST.pdf")[#underline[Specifica Tecnica v1.0.0]].

Si segnala infine che il costo complessivo sostenuto per lo sviluppo del progetto ammonta a *12.130 €*, in linea con le stime pianificate.

#v(1cm)

#align(right)[
  *Il gruppo Skarab Group*
]

#v(1cm)
