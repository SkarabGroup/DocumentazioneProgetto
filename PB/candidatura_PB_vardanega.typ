#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)

//Macro da modificare a modo
#let titoloDocumento = "Lettera di Presentazione PB - Docente Vardanega"
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

Egregio Professor Vardanega,

con la presente, il gruppo *Skarab Group* comunica formalmente la propria intenzione di candidarsi alla revisione della *Product Baseline (PB)* per il capitolato *C2*, proposto dall'azienda *Var Group*, dal nome 
\ \
#align(center)[
  *CodeGuardian - Piattaforma ad agenti per
  l’audit e la remediation dei
  repository software*
]
\
Tale candidatura viene presentata a seguito del conseguimento del "semaforo verde", ottenuto dopo il colloquio di valutazione con il docente Cardin, avvenuto in data *27/04/2026*, che ha confermato l'idoneità del gruppo a procedere con la seconda parte della revisione.
\

Si comunica, inoltre, che il gruppo ha sviluppato un *Minimum Viable Product (MVP)* che implementa un insieme completo di funzionalità essenziali, volto a dimostrare il valore della soluzione proposta e a supportarne la valutazione operativa, reperibile al seguente indirizzo: #link("https://github.com/SkarabGroup/MinimumViableProduct")[#underline[Repository MVP]].

L'intera documentazione di progetto è consultabile visitando il sito ufficiale del gruppo, #link("https://skarabgroup.github.io/DocumentazioneProgetto/")[#underline[Skarab Group - Sito Documentazione]], oppure direttamente all'interno del #link("https://github.com/SkarabGroup/DocumentazioneProgetto")[#underline[Repository Documentazione]].

I documenti consultabili presenti sono i seguenti: 
=== Lettere di Presentazione
- Il presente documento
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/candidatura_PB_cardin.pdf")[#underline[Lettera di Presentazione alla PB (Docente Cardin)]]

=== Documenti Interni
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/glossario.pdf")[#underline[Glossario (v2.0.0)]], visionabile anche sul sito #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[#underline[al seguente link]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/NdP.pdf")[#underline[Norme di Progetto (v2.0.0)]]

=== Documenti Esterni
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/AdR.pdf")[#underline[Analisi dei Requisiti (v2.0.0)]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/PdP.pdf")[#underline[Piano di Progetto (v2.0.0)]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/PdQ.pdf")[#underline[Piano di Qualifica (v2.0.0)]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/MU.pdf")[#underline[Manuale Utente (v1.0.0)]], visionabile anche sul sito #link("https://skarabgroup.github.io/DocumentazioneProgetto/manuale_utente.html")[#underline[al seguente link]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/ST.pdf")[#underline[Specifica Tecnica (v1.0.0)]]

=== Verbali Riunioni Esterne
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/esterni/Consegna_MVP_26_04_21.pdf")[#underline[Approvazione Minimum Viable Product | 2026 - 04 - 21]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/esterni/Allineamento_26_03_19.pdf")[#underline[#underline[Verbale Riunione Esterna | 2026 - 03 - 19]]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/esterni/Allineamento_26_03_05.pdf")[#underline[#underline[Verbale Riunione Esterna | 2026 - 03 - 05]]]

#pagebreak()
=== Verbali Riunioni Interne
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_04_18.pdf")[#underline[Verbale Riunione Interna | 2026 - 04 - 18]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_04_12.pdf")[#underline[Verbale Riunione Interna | 2026 - 04 - 12]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_04_04.pdf")[#underline[Verbale Riunione Interna | 2026 - 04 - 04]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_03_28.pdf")[#underline[Verbale Riunione Interna | 2026 - 03 - 28]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_03_21.pdf")[#underline[Verbale Riunione Interna | 2026 - 03 - 21]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_03_15.pdf")[#underline[Verbale Riunione Interna | 2026 - 03 - 15]]
- #link("https://skarabgroup.github.io/DocumentazioneProgetto/verbali/interni/Riunione_26_03_08.pdf")[#underline[Verbale Riunione Interna | 2026 - 03 - 08]]

Si segnala infine che il costo complessivo sostenuto per lo sviluppo del progetto ammonta a *12.130 €*, in linea con le stime pianificate.

#v(1cm)

#align(right)[
  *Il gruppo Skarab Group*
]

#v(1cm)
