#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)

//Macro da modificare a modo
#let titoloDocumento = "Lettera di Candidatura RTB - Docente Vardanega"
#let dataDocumento = "27/02/2026"
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

Egregio Professor Vardanega,

con la presente, il gruppo *Skarab Group* comunica formalmente la propria intenzione di candidarsi alla revisione della *Requirements and Technology Baseline (RTB)* per il capitolato *C2*, proposto dall'azienda *Var Group*, dal nome 
\ \
#align(center)[
  *CodeGuardian - Piattaforma ad agenti per
  l’audit e la remediation dei
  repository software*
]
\
Tale candidatura viene presentata a seguito del conseguimento del "semaforo verde", ottenuto dopo il colloquio di valutazione con il docente Cardin, avvenuto in data *25/02/2026*, che ha confermato l'idoneità del gruppo a procedere con la seconda parte della revisione.
\

Si comunica, inoltre, che il gruppo ha sviluppato un *Proof of Concept* volto a validare la fattibilità tecnologica, reperibile al seguente indirizzo: #link("https://github.com/SkarabGroup/PoC")[#underline[Repository PoC]].

L'intera documentazione di progetto è consultabile visitando il sito ufficiale del gruppo, #link("https://skarabgroup.github.io/DocumentazioneProgetto/")[#underline[Skarab Group - Sito Documentazione]], oppure direttamente all'interno del #link("https://github.com/SkarabGroup/DocumentazioneProgetto")[#underline[Repository Documentazione]].

I documenti consultabili presenti sono i seguenti: 
=== Presentazioni e Lettere
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/candidatura_RTB_vardanega.pdf")[#underline[Lettera di Candidatura alla RTB (Docente Vardanega)]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/candidatura_RTB_cardin.pdf")[#underline[Lettera di Candidatura alla RTB (Docente Cardin)]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/Presentazione_RTB_cardin.pdf")[#underline[Diapositive di Presentazione RTB (Docente Cardin)]]

=== Documenti Interni
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/glossario.pdf")[#underline[Glossario (v1.0.0)]], visionabile anche sul sito #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[#underline[al seguente link]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[#underline[Norme di Progetto (v1.0.0)]]

=== Documenti Esterni
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/PdP.pdf")[#underline[Piano di Progetto (v1.0.0)]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/PdQ.pdf")[#underline[Piano di Qualifica (v1.0.0)]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")[#underline[Analisi dei Requisiti (v1.0.0)]]

=== Verbali Riunioni Esterne
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/esterni/Allineamento_26_01_14.pdf")[#underline[Verbale Riunione Esterna | 2026 - 01 - 14]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/esterni/Allineamento_25_11_25.pdf")[#underline[Verbale Riunione Esterna | 2025 - 11 - 25]]

=== Verbali Riunioni Interne
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_02_14.pdf")[#underline[Verbale Riunione Interna | 2026 - 02 - 14]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_02_07.pdf")[#underline[Verbale Riunione Interna | 2026 - 02 - 07]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_02_01.pdf")[#underline[Verbale Riunione Interna | 2026 - 02 - 01]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_01_24.pdf")[#underline[Verbale Riunione Interna | 2026 - 01 - 24]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_01_17.pdf")[#underline[Verbale Riunione Interna | 2026 - 01 - 17]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_01_11.pdf")[#underline[Verbale Riunione Interna | 2026 - 01 - 11]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_01_03.pdf")[#underline[Verbale Riunione Interna | 2026 - 01 - 03]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_12_29.pdf")[#underline[Verbale Riunione Interna | 2025 - 12 - 29]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_12_19.pdf")[#underline[Verbale Riunione Interna | 2025 - 12 - 19]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_12_13.pdf")[#underline[Verbale Riunione Interna | 2025 - 12 - 13]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_12_06.pdf")[#underline[Verbale Riunione Interna | 2025 - 12 - 06]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_11_29.pdf")[#underline[Verbale Riunione Interna | 2025 - 11 - 29]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_11_22.pdf")[#underline[Verbale Riunione Interna | 2025 - 11 - 22]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_11_15.pdf")[#underline[Verbale Riunione Interna | 2025 - 11 - 15]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_25_11_08.pdf")[#underline[Verbale Riunione Interna | 2025 - 11 - 08]]

Confermiamo, in conclusione, la nostra ferma intenzione di completare e consegnare il progetto entro la data del *21/03/2026*.

#v(1cm)

#align(right)[
  *Il gruppo Skarab Group*
]

#v(1cm)