// Importa il template del verbale
#import "../../../lib/verbale.typ": *

// Applica il template
#show: body => verbale(
  data: datetime(day: 22, month: 11, year: 2025),
  tipo: [interno],
  versioni: (
    (
      date: datetime(day: 22, month: 11, year: 2025),
      vers: "1.0.0",
      autore: name.kevin,
      verificatore: name.alice,
      descr: "Creazione Documento."
    ),
    (
      date: datetime(day: 22, month: 11, year: 2025),
      vers: "1.0.0",
      autore: name.kevin,
      verificatore: name.alice,
      descr: "Creazione Documento."
    ),
  ),
  stato: [verificato],
  presenze: (
    name.suar,
    name.kevin,
    name.andrea,
    name.riccardom,
    name.antonio,
    name.alice,
    name.riccardob,
  ),
  assenze: (),
  odg: [
    - Struttura dell'incontro con Var group.
    - Esposizione dei confronti con gli altri gruppi sulle modalità di svolgimento dell'incontro.
  ],
  canale: [Discord],
  presiede: [Alberto Suar],
  ora-inizio: [9:52],
  ora-fine: [11:08],
  disambiguatore: [],
  body,
)

= Ordine del giorno

== Argomenti proposti
+ Scelta linguaggio standard per la redazione della documentazione.
+ Analisi dei requisiti.
+ Esposizione delle domande da porre a Var Group.

= Svolgimento Riunione

== Apertura
La riunione ha avuto inizio alle 9:53, introdotta da Alberto Suar che ha presentato l'ordine del giorno.

== Discussione punto per punto

#punto-odg(
  numero: [1],
  titolo: [Scelta linguaggio standard per la redazione della documentazione],
  sintesi: [Il gruppo ha discusso sui possibili linguaggi da utilizzare per la documentazione ed è arrivato a una scelta binaria tra LaTeX e typst.],
  decisione: [Il gruppo ha scelto di redigere i documenti nel linguaggio che si preferisce, a condizione che venga adottato il formato standard definito dai template.]
)

#punto-odg(
  numero: [2],
  titolo: [Analisi dei requisiti],
  sintesi: [I vari membri hanno esposto le tecnologie analizzate e le conclusioni a cui sono arrivati.]
)

#punto-odg(
  numero: [3],
  titolo: [Esposizione domande da porre a Var Group],
  sintesi: [Dopo aver esposto l'analisi delle tecnologie studiate, i membri hanno presentato le domande emerse da porre a Var Group.],
  decisione: [Ognuno dovrà aggiungere le proprie domande a un documento sulla repository GitHub.]
)

= Azioni e responsabilità

#tabella-azioni(
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
)