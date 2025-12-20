#let header(titolo) = {
  grid(
    columns: (1fr, 2fr),
    align: (left, right),
    [#titolo], [*Skarab Group - Anno accademico 2025/2026*]
  )
  line(length: 100%, stroke: 0.5pt)
}

#let footer() = {
  line(length: 100%, stroke: 0.5pt)
  v(0.3em)
  align(center)[#context {counter(page).display()}]
}

#let prima-pagina(
  titolo,
  data,
  ora-inizio,
  canale,
  presiede,
  logo-path: "../assets/logo.jpg"
) = {
  page(header: none, numbering: none)[
    #align(center)[
      #v(1fr)
      #image(logo-path, width: 40%)
      #v(1cm)
      #text(size: 28pt, weight: "bold")[Skarab Group]
      #v(0.5cm)
      #line(length: 80%, stroke: 0.5pt)
      #v(0.5cm)
      #text(size: 18pt, weight: "bold")[#titolo]
      #v(0.5cm)
      #line(length: 80%, stroke: 0.5pt)
      #v(1fr)
      Data: #data.display("[year]-[month]-[day]") #linebreak()
      Ora: #ora-inizio #linebreak()
      Canale: #canale #linebreak()
      #v(2cm)
      Presiede: #presiede #linebreak()
      #v(1fr)
    ]
  ]
}

#let registro-modifiche(versioni) = {
  align(center)[
    #table(
      columns: (3cm, 3cm, 3.0cm, 3cm, 3cm),
      align: center + horizon,
      stroke: 0.5pt,
      fill: (_, y) => if y == 0 { rgb("#d0d0d0") },
      [*Data \ Modifica*], [*Versione*], [*Descrizione Modifica*], [*Redattore*], [*Verificatore*],
      ..versioni.map(v => (
        v.at(0), // Data
        v.at(1), // Versione
        v.at(2), // Descrizione
        v.at(3), // Redattore
        v.at(4)  // Verificatore
      )).flatten()
    )
  ]
}

#let griglia-presenze(presenti, assenti) = {
  heading(level: 1)[Presenze]
  grid(
    columns: (1.5fr, 2fr),
    [*Presenti*], [#presenti.join(", ")],
    [*Assenti*], [#if assenti.len() > 0 { assenze.join(", ") } else { [] }]
  )
}

#let punto-odg(
  titolo, 
  sintesi, 
  decisione: none
) = {
  pad(left: 2cm)[
    *Sintesi*: #sintesi
    
    #if decisione != none {
      parbreak()
      [*Decisione presa*: #decisione]
    }
  ]
}

#let tabella-azioni(azioni) = {
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
      ..azioni.map(a => (
        a.at(0), 
        a.at(1), 
        a.at(2), 
        a.at(3),
        table.hline(stroke: 0.3pt)
      )).flatten(),
      table.hline(stroke: 1pt), // Linea finale più spessa
    )
  )
}

#let chiusura-verbale(ora-fine, presiede) = {
  heading(level: 1)[Chiusura]
  [La riunione si è conclusa alle ore #ora-fine.]

  heading(level: 1)[Presiede]
  v(1cm)
  line(length: 30%, stroke: 0.5pt)
  presiede
}

#let verbale(
  titolo: "Verbale riunione interna",
  data: datetime.today(),
  ora-inizio: "00:00",
  ora-fine: "00:00",
  canale: "Discord",
  presiede: "Nome Cognome",
  versioni: (),
  presenti: (),
  assenze: (),
  body
) = {
  set page(width: 210mm, height: 297mm, margin: 2.5cm)
  set text(font: "New Computer Modern", size: 12pt, lang: "it")
  set par(leading: 0.65em, justify: true)
  
  prima-pagina(titolo, data, ora-inizio, canale, presiede)

  set page(
    header: header(titolo),
    footer: footer()
  )
  v(1em)

  registro-modifiche(versioni)

  pagebreak()

  outline(
    title: [Indice],
    depth: 3,
    indent: auto
  )
  pagebreak()

  griglia-presenze(presenti, assenze)

  [Inizio riunione ore #ora-inizio.]
  
  body

  chiusura-verbale(ora-fine, presiede)
}