#import "../lib/main_docs.typ": *
#import "../lib/UC.typ": *
#let ver = [1.0.0] // vá aggiornata manualmente

#show ref: it => if str(it.target).starts-with("UC") {
  link(it.target, "[" + str(it.target) + "]")
} else {
  it
}

#show: body => maindocs(
  data: datetime(day: 03, month: 02, year: 2025),
  tipo: [interno],
  versione: ver,
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 17, month: 12, year: 2025),
      autore: name.kevin,
      verifica: "",
      descr: "Creazione documento",
    ),
    (
        vers: "1.1.0",
        date: datetime(day: 18, month: 12, year: 2025),
        autore: name.kevin,
        verifica: "",
        descr: "Inizio stesura documento, scopo e prospettiva del prodotto",
    )
  ),
  stato: [Da creare],
  responsabile: (
    name.kevin,
  ),
  verificatore: (),
  redattori: (name.kevin,),
  descrizione: "Questo documento contiene l'analisi dei requisiti del sistema Software per la gestione di un sistema multiagente per l'analisi di repository github da Skarab Group.",
  titolo: "Analisi dei Requisiti",
  body,
)

//cpntrolla che le references esistano
#show ref: it => {
  if str(it.target).starts-with("UC") {
    link(it.target)[[#str(it.target), §2.3.#str(it.target).slice(2)]] //slice toglie la sottostringa "UC"
  } else {
    it
  }
}

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di definire e analizzare i #def("requisiti funzionali") e i #def("requisiti non funzionali") del sistema software che #def("Skarab Group") intende sviluppare a supporto del progetto '#def("Code Guardian")' proposto dall'azienda #def("Var Group").

== Prospetttiva del prodotto

== Funzioni del prodotto

== Caratteristiche degli utenti

== Definizioni, acronimi e abbreviazioni

== Riferimenti

#pagebreak()

= Casi d'uso

== Introduzione

== attori_secondari

== Lista

=== UC1 <UC1>

#use-case(
  attore: "...",
  pre: [
    - ...
  ],
  post: [
    - ...
  ],
  scenari: [
    - ....
  ],
  scenari_alternativi: [
    - ...
  ],
  inclusioni: [
    - @UC1
  ],
  estensioni: [
    
  ],
  trigger: "...",
)[
  #use-case-diagram("1", "UC1")
]
