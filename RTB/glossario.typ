#import "../lib/glos.typ": *

#let vers = [0.0.0]

#show: body => glossario(
  data: datetime(day: 17, month: 02, year: 2025),
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 18, month: 12, year: 2025),
      autore: name.kevin,
      verifica: "",
      descr: "Creazione documento",
    ),
    (
      vers: "1.1.0",
      date: datetime(day: 18, month: 12, year: 2025),
      autore: name.kevin,
      verifica: "",
      descr: "Aggiunta primi termini al glossario",
    ),
    (
      vers: "1.2.0",
      date: datetime(day: 20, month: 12, year: 2025),
      autore: name.kevin,
      verifica: "",
      descr: "Aggiunta termini IT e sviluppatore software",
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
