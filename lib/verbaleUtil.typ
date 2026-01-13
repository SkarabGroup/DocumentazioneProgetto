#import "docsUtil.typ": *
#import "variables.typ": members

#let grigliaPresenze(presenti, assenti) = {
  heading(level: 1)[Presenze]

  let presentiText = if type(presenti) == "list" { presenti.join(", ") } else { presenti }
  let assentiText = if type(assenti) == "list" { assenti.join(", ") } else { assenti }

  grid(
    columns: (1.5fr, 0.5fr, 2fr),
    [*Presenti*], [], [#presentiText],
    [*Assenti*], [], [#assentiText],
  )
}

#let puntoOdg(
  titolo,
  sintesi,
  decisione: none,
) = {
  pad(left: 2cm)[
    *Sintesi*: #sintesi

    #if decisione != none {
      parbreak()
      [*Decisione presa*: #decisione]
    }
  ]
}

#let tabellaAzioni(azioni) = {
  figure(
    table(
      columns: (1fr, 0.8fr, 0.6fr, 0.6fr),
      align: (left, left, left, left),
      stroke: none,
      table.hline(stroke: 1pt),
      table.header([*Azione*], [*Responsabile*], [*Scadenza*], [*Stato*]),
      table.hline(stroke: 0.5pt),
      ..azioni
        .map(a => (
          a.at(0),
          a.at(1),
          a.at(2),
          a.at(3),
          table.hline(stroke: 0.3pt),
        ))
        .flatten(),
      table.hline(stroke: 1pt),
      // Linea finale più spessa
    ),
  )
}

#let chiusuraVerbale(ora-fine, presiede) = {
  heading(level: 1)[Chiusura]
  [La riunione si è conclusa alle ore #ora-fine.]

  heading(level: 1)[Presiede]
  v(1cm)
  line(length: 30%, stroke: 0.5pt)
  presiede
}

#let verbale(
  titolo: "Verbale riunione",
  versioni: (),
  presenti: (),
  assenze: (),
  body,
) = {
  set page(width: 210mm, height: 297mm, margin: 2.5cm)
  set text(font: "New Computer Modern", size: 12pt, lang: "it")
  set par(leading: 0.65em, justify: true)

  titlePage("Verbale riunione interna", "1.0.0")

  set page(
    header: header(titolo),
    footer: footer(),
  )
  v(1em)

  versionTable(versioni)

  pagebreak()

  outline(
    title: [Indice],
    depth: 3,
    indent: auto,
  )
  pagebreak()

  grigliaPresenze(presenti, assenze)


  body

  chiusuraVerbale("16:50", members.alice)
}









//Quando si definisce il verbale, copiare e modificare questi punti
//#import "../../../lib/verbaleUtil.typ": *
//#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    ("DataVersione", "NumeroVersione", "DettaglioModifica", "Relatore", "Verificatore"),
  ),

  presenti: (
    "Cognome e Nome",
    "Cognome e Nome",
  ),

  assenze: (
    "Cognome e Nome",
    "Cognome e Nome",
  ),

  [

    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "PuntoOrdineDelGiorno1"
    #let punto2 = "PuntoOrdineDelGiorno2"
    + #punto1.
    + #punto2.
    + ...

    = Svolgimento Riunione
    #let orarioInizioRiunione = "09:00"//...
    #let dataRiunione = "Data"
    #let orarioFineRiunione = "09:00" //...
    #let presidenteRiunione = "Io" //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il gruppo ha discusso sui possibili linguaggi da utilizzare per la documentazione ed è arrivato a una scelta binaria tra LaTeX e typst.",
      decisione: "Il gruppo ha scelto di redigere i documenti nel linguaggio che si preferisce, a condizione che venga adottato il formato standard definito dai template.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Sintesi Punto 2",
      decisione: "Decisione Punto 2",
    )

    === Punto 3: Esposizione domande da porre a Var Group
    #puntoOdg(
      "Domande Var Group",
      "Dopo aver esposto l'analisi delle tecnologie studiate, i membri hanno presentato le domande emerse da porre a Var Group.",
      decisione: "Ognuno dovrà aggiungere le proprie domande a un documento sulla repository GitHub.",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Azione",
        "Responsabile Azione",
        "Scadenza Azione",
        "Stato Azione",
      ),
      (
        "Analisi delle tecnologie",
        "SkarabGroup",
        "2025-11-24",
        "conclusa",
      ),
      (
        "Definizione primi requisiti",
        "SkarabGroup",
        "2025-11-21",
        "In corso",
      ),
    ))
  ],
)
