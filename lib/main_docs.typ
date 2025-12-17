#import "macro.typ": *


#let maindocs(
  data: [],
  tipo: [],
  versioni: (),
  versione: [],
  stato: [],
  responsabile: (),
  verificatore: (),
  redattori: (),
  descrizione: [],
  titolo: [],
  body,
) = {
  if titolo == "Norme di Progetto" {
    [#metadata[NP v#versione] <titolo> ]
  } else if titolo == "Piano di Qualifica" {
    [#metadata[PQ v#versione] <titolo> ]
  } else if titolo == "Analisi dei Requisiti" {
    [#metadata[AR v#versione] <titolo> ]
  } else if titolo == "Piano di Progetto" {
    [#metadata[PP v#versione] <titolo> ]
  } else if titolo == "Specifica Tecnica" {
    [#metadata[ST v#versione] <titolo> ]
  } else if titolo == "Manuale Utente" {
    [#metadata[MU v#versione] <titolo> ]
  } else {
    panic("Unknown title: " + titolo)
  }

  let versione = versioni.at(0).vers
  let titolo = [#emph[#titolo] \ Versione #versione]

  set list(indent: 1em)
  set enum(indent: 1em)
  set document(title: titolo, date: data, author: "Skarab Group")
  set text(lang: "it", font: "Hanken Grotesk")
  show link: underline

  prima-pagina(
    titolo,
    {
      v(1em)
      text(14pt, weight: "black", fill: black)[Descrizione]
      v(0.5em)
      text(10pt)[#descrizione]
    },
    [Stato], stato,
    [Responsabile], grid(align: left, gutter: 8pt, ..responsabile.map(persona)),
    [Verificatore], grid(align: left, gutter: 8pt, ..verificatore.map(persona)),
    [Redattori], grid(align: left, gutter: 8pt, ..redattori.map(persona)),
    [Distribuzione],
    if tipo == [esterno]
    {
      grid(align: left, gutter: 8pt, [ciao])
    }
    else
    {
      grid(align: left, gutter: 8pt, [_Skarab Group_])
    }
  )

  set heading(numbering: "1.1 -")
  set page(numbering: "1", header: header(titolo), footer: footer())
  counter(page).update(1)
  pagebreak()

  registro-modifiche(versioni)
  pagebreak()

  indice()
  pagebreak()

  pagebreak()

  pagebreak()

  body
}
