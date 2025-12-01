#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)

//Macro da modificare a modo
#let titoloDocumento = "Verbale riunione interna"
#let dataDocumento = "2025-11-22"
#let emailGruppo = "skarabswegroup@gmail.com"
#let redattoreDocumento = "Bassso Kevin"
#let oraInizio = "9:52"
#let oraFine = "11:08"
#let canale = "Discord"
#let presiede = "Alberto Suar"
#let versione = "1.0.0"
#let modifica = "Creazione
Documento"
#let verificatore = "Zago Alice"

// Title page
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
    Data: #dataDocumento #linebreak()
    Ora: #oraInizio #linebreak()
    Canale: #canale #linebreak()
    #v(2cm)
    Pesiede: #presiede #linebreak()
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

= Presenze
#grid(
  columns: (1.5fr,2fr),
  [*Presenti*],[Alberto Suar, Kevin Basso, Andrea Sgreva, Riccardo Martinello, Antonio Sandu, Alice Zago, Riccardo Berengan],
  [*Assenti*],[]
)
//Da qui iniziano gli argomenti
Inizio riunione ore #oraInizio.

Agenda:
- Struttura dell'incontro con Var group.
- Esposizione dei confronti con gli altri gruppi sulle modalità di svolgimento dell'incontro.

 = Ordine del giorno
+ == Argomenti proposti
 + Scelta linguaggio standard per la redazione della documentazione.
 + Analisi dei requisiti.
 + Esposizione delle domande da porre a Var Group.
 
+ = Svolgimento Riunione
 == Apertura
 La riunione ha avuto inizio alle 9:53, introdotta da #presiede che ha presentato l'ordine del giorno.
 == Discussione punto per punto
 === Punto 1: Scelta linguaggio standard per la redazione della documentazione
 #pad(left: 2cm)[
   *Sintesi*: Il gruppo ha discusso sui possibili linguaggi da utilizzare per la documentazione ed è arrivato a una scelta binaria tra LaTeX e typst.
   
   *Decisione presa*: Il gruppo ha scelto di redigere i documenti nel linguaggio che si preferisce, a condizione che venga adottato il formato standard definito dai template.
 ]
 
 === Punto 2: Analisi dei requisiti
 #pad(left: 2cm)[
   *Sintesi*: I vari membri hanno esposto le tecnologie analizzate e le conclusioni a cui sono arrivati.
 ]
 
 === Punto 3: Esposizione domande da porre a Var Group
 #pad(left: 2cm)[
   *Sintesi*: Dopo aver esposto l'analisi delle tecnologie studiate, i membri hanno presentato le domande emerse da porre a Var Group.
   
   *Decisione presa*: Ognuno dovrà aggiungere le proprie domande a un documento sulla repository GitHub.
 ]

= Azioni e responsabilità

#figure(
  table(
    columns: (1fr, 0.8fr, 0.6fr, 0.6fr),
    align: (left, left, left, left),
    stroke: none,
    table.hline(stroke: 1pt),
    table.header(
      [*Azione*], 
      [*Responsabile*], 
      [*Scadenza*], 
      [*Stato*],
    ),
    table.hline(stroke: 0.5pt),
    
    [Definizione template], 
    [Suar Alberto], 
    [2025-11-21], 
    [conclusa],
    table.hline(stroke: 0.3pt),
    
    [Analisi delle tecnologie], 
    [SkarabGroup], 
    [2025-11-24], 
    [conclusa],
    table.hline(stroke: 0.3pt),
    
    [Definizione primi requisiti], 
    [SkarabGroup], 
    [2025-11-21], 
    [In corso],
    
    table.hline(stroke: 1pt),
  )
)

 = Chiusura
 La riunione si è conclusa alle ore #oraFine.

= Presiede

#v(1cm)
#line(length: 30%, stroke: 0.5pt)
#presiede




