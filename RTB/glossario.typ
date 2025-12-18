#import "../lib/glos.typ": *

#let vers = [0.0.0]

#show: body => glossario(
  data: datetime(day: 17, month: 02, year: 2025),
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 18, month: 12, year: 2025),
      autore: name.kevin,
      verifica: name.alice,
      descr: "Creazione documento",
    ),
  ),
  stato: [In redazione],
  responsabile: ((name.kevin),),
  verificatore: ((name.alice),),
  redattori: ((name.kevin),),
  versione: vers,
  descrizione: "Questo documento contiente il glossario dei termini utilizzati nel contesto del progetto Code Guardian proposto nel capitolato dell'azienda Var Group sviluppato dal team Skarab Group",
  body,
)

= Introduzione

#pagebreak()
