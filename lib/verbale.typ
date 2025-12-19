#import "macro.typ": *

#let verbale(
  data: [],
  tipo: [],
  versioni: (),
  stato: [],
  presenze: (),
  assenze: (),
  odg: [],
  canale: [],
  presiede: [],
  ora-inizio: [],
  ora-fine: [],
  disambiguatore: [],
  body,
) = {
  let titolo = [Verbale riunione #tipo]
  let versione = versioni.at(0).vers
  
  if tipo == [interno] {
    [ #metadata[VI #data.display("[year]-[month]-[day]") v#versione #disambiguatore] <titolo>]
  } else if tipo == [esterno] {
    [ #metadata[VE #data.display("[year]-[month]-[day]") v#versione #disambiguatore] <titolo>]
  } else {
    panic("Tipo di verbale sconosciuto: " + tipo)
  }

  set list(indent: 1em)
  set enum(indent: 1em)
  set document(title: titolo, date: data)
  set text(lang: "it", font: "New Computer Modern")
  set par(leading: 0.65em, justify: true)
  show link: underline

  // Prima pagina
  prima-pagina(
    titolo,
    {
      v(1cm)
      text(12pt)[Data: #data.display("[year]-[month]-[day]")]
      linebreak()
      text(12pt)[Ora: #ora-inizio]
      linebreak()
      text(12pt)[Canale: #canale]
      v(1cm)
      text(12pt)[Presiede: #presiede]
    },
    [Versione], versione,
    [Stato], stato,
  )

  set heading(numbering: "1.")
  set page(
    numbering: "1",
    header: context {
      grid(
        columns: (1fr, 2fr),
        align: (left, right),
        [#titolo],
        [*Skarab Group - Anno accademico 2025/2026*]
      )
      line(length: 100%, stroke: 0.5pt)
    },
    footer: context {
      line(length: 100%, stroke: 0.5pt)
      v(0.3em)
      align(center)[#counter(page).display()]
    }
  )
  counter(page).update(1)
  pagebreak()

  // Registro modifiche
  registro-modifiche(versioni)
  pagebreak()

  // Indice
  indice()
  pagebreak()

  // Presenze
  [= Presenze]
 grid(
  columns: (1.5fr, 2fr),
  [*Presenti*], grid(align: left, gutter: 4pt, ..presenze.map(persona)),
  [], v(15pt),  // spazio verticale specifico
  [*Assenti*], if assenze.len() > 0 {
    grid(align: left, gutter: 4pt, ..assenze.map(persona))
  } else {
    [-]
  }
)
  v(1em)
  [Inizio riunione ore #ora-inizio.]
  v(1em)
  
  body
  
  // Chiusura
  [= Chiusura]
  [La riunione si è conclusa alle ore #ora-fine.]
  
  [= Presiede]
  v(1cm)
  line(length: 30%, stroke: 0.5pt)
  linebreak()
  presiede
}

/// Sezione per strutturare un punto dell'ordine del giorno
#let punto-odg(
  numero: [],
  titolo: [],
  sintesi: [],
  decisione: none,
) = {
  heading(level: 3)[Punto #numero: #titolo]
  pad(left: 2cm)[
    *Sintesi:* #sintesi
    #if decisione != none {
      v(0.5em)
      [*Decisione presa:* #decisione]
    }
  ]
}

/// Tabella azioni e responsabilità
#let tabella-azioni(..azioni) = {
  set align(center)
  figure(
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
      ..azioni.pos().flatten(),
      table.hline(stroke: 1pt),
    )
  )
}

#let approvazione-esterna(
  nome_parte_esterna: [],
) = [
  Si attesta, con la seguente sezione, che il presente verbale è stato approvato da parte dei rappresentanti di #nome_parte_esterna.\
  Tale attestazione è comprovata dalla presenza, qui di seguito, delle firme di almeno uno dei rappresentanti:
]