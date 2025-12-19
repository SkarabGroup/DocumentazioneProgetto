// Importa il template del verbale
#import "../../../lib/verbale.typ": *

// Applica il template
#show: body => verbale(
  data: datetime(day: 19, month: 12, year: 2025),
  tipo: [interno],
  versioni: (
    (
      date: datetime(day: 19, month: 12, year: 2025),
      vers: "1.0.0",
      autore: name.kevin,
      verificatore: name.suar,
      descr: "Creazione Documento.",
    ),
  ),
  stato: [redatto],
  presenze: (
    name.suar,
    name.kevin,
    name.andrea,
    name.riccardom,
    name.antonio,
    name.alice,
  ),
  assenze: (name.riccardob,),
  odg: [
    + Suddivisione ruoli per stesura documenti RTB.
    + Standardizzaziione documenti in typst con templates.
  ],
  canale: [Discord],
  presiede: [name.suar],
  ora-inizio: [10:00],
  ora-fine: [10:40],
  disambiguatore: [],
  body,
)

= Ordine del giorno

== Argomenti proposti
+ Suddivisione ruoli per stesura documenti RTB.
+ Standardizzaziione documenti in typst con templates.
+ POC, capire come procedere e l'obiettivo effettivo
+ definire incontro con prof. name.cardin e con l'azienda Var Group

= Svolgimento Riunione

== Apertura
La riunione ha avuto inizio alle 9:53, introdotta da name.suar che ha presentato l'ordine del giorno.

== Discussione punto per punto

#punto-odg(
  numero: [1],
  titolo: [Suddivisione ruoli per stesura documenti RTB],
  sintesi: [Il gruppo ha discusso sulla suddivisione dei ruoli per la stesura dei documenti RTB.],
  decisione: [I membri hanno concordato una suddivisione chiara dei ruoli per ottimizzare la redazione dei documenti. In cui le persone sono divise cosí:
    - #strong("Analisi dei requisiti"): #persona(name.kevin), #persona(name.suar)
    - #strong("Piano di progetto"): #persona(name.andrea), #persona(name.antonio)
    - #strong("Piano di qualifica"): #persona(name.alice), #persona(name.riccardob)
    - #strong("Glossario"): tutti
    - #strong("Norme di progetto"): #persona(name.riccardom)
  ],
)

#punto-odg(
  numero: [2],
  titolo: [Standardizzaziione documenti in typst con templates],
  sintesi: [name.kevin ha prensentato i template in typst per la standardizzazione dei documenti.],
  decisione: [I membri hanno deciso di utilizzare i template proposti per garantire coerenza e uniformità nei documenti.],
)

#punto-odg(
  numero: [3],
  titolo: [POC - capire come procedere e l'obiettivo effettivo],
  sintesi: [Capire cosa bisogna presentare nell'POC],
  decisione: [Si é deciso di procedere non come una sintesi del progetto ma un sistema che permette di mostrare che loe tecnologie funzionano senza che l'obiettivo effettivo sia raggiunto.],
)

= Azioni e responsabilità

#tabella-azioni(
  [Stesura documento di analisi dei requisiti],
  [name.suar, name.kevin],
  [2025-12-29],
  [Da iniziare],
  table.hline(stroke: 0.3pt),

  [Stesura documento piano di progetto],
  [name.andrea, name.antonio],
  [2025-12-29],
  [Da iniziare],
  table.hline(stroke: 0.3pt),

  [Stesura documento piano di qualifica],
  [name.alice, name.riccardob],
  [2025-12-29],
  [Da iniziare],

  table.hline(stroke: 0.3pt),
  [Stesura documento norme di progetto],
  [name.riccardom],
  [2025-12-29],
  [Da iniziare],
)
