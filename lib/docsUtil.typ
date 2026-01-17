#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": chart

//Definizione della prima pagina dei documenti
#let titlePage(titoloDocumento, versioneDocumento) = {
  set text(font: "New Computer Modern", size: 15pt)
  set align(center)
  image("../assets/logo.jpg", height: 10cm)
  v(1em)

  line(length: 80%, stroke: 0.5pt)
  v(1em)

  text(26pt, weight: "bold")[#titoloDocumento]
  v(0.5em)

  text(23pt, weight: "regular")[#versioneDocumento]

  line(length: 80%, stroke: 0.5pt)
  v(2em)

  pagebreak()
}

//Tabella di versionamento
#let versionTable(rows) = {
  heading(level: 1, numbering: none, outlined: false)[Registro delle Modifiche]
  v(1em)

  set text(size: 13pt)

  let normalizedRows = rows.map(row => {
    if row.len() == 4 { row + ([],) } else { row }
  })

  table(
    columns: (auto, auto, 1fr, auto, auto),
    inset: 5pt,
    stroke: 0.5pt + luma(200),
    
    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.even(row) {
      luma(220)
    } else {
      none
    },

    align: (col, row) => (
      (
        center,
        center,
        left,
        left,
        left,
      ).at(col)
        + horizon
    ),

    table.header([*Data*], [*Versione*], [*Descrizione*], [*Redattore*], [*Verificatore*]),

    ..normalizedRows.flatten(),
  )
}

#let header(titolo) = {
  grid(
    columns: (1fr, 2fr),
    align: (left, right),
    [#titolo], [*Skarab Group - Anno accademico 2025/2026*],
  )
  line(length: 100%, stroke: 0.5pt)
}

#let footer() = {
  line(length: 100%, stroke: 0.5pt)
  set align(center)
  v(0.3em)
  context [
    Pagina #counter(page).display() di #counter(page).final().first()
  ]
}

#let indice() = {
  pagebreak()

  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    text(weight: "bold", it)
  }

  show outline.entry.where(level: 2): it => {
    text(weight: "regular", it)
  }

  outline(
    title: text(weight: "bold", size: 22pt)[Indice],
    depth: 5,
    indent: auto,
  )

  pagebreak()
}

#let def(parola) = {
  let yml = yaml("../RTB/glossario.yml")

  if type(parola) == content {
    parola = parola.text
  }

  let found = false

  for (letter, words) in yml {
    for (termine, def) in words {
      // Controlla il termine principale
      if lower(termine) == lower(parola) {
        found = true
        break
      }

      // Controlla le alternative (verifica se la chiave esiste)
      if "alternative" in def {
        let alt_list = def.alternative.split(",").map(s => s.trim())
        for alt in alt_list {
          if lower(alt) == lower(parola) {
            found = true
            break
          }
        }
      }

      if "acronimo" in def {
        let alt_list = def.acronimo.split(",").map(s => s.trim())
        for alt in alt_list {
          if lower(alt) == lower(parola) {
            found = true
            break
          }
        }
      }

      if found { break }
    }
    if found { break }
  }

  // Se la parola non esiste, genera errore a compile-time
  if not found {
    panic("Parola non definita nel glossario: " + parola)
  } else {
    // Normalizza il nome per la label (sostituisce spazi con trattini)
    //let label_name = termine_originale.replace(" ", "-")
    // Crea il link alla label del glossario
    //link(label(label_name))[#parola#sub[G]]
    underline(text(parola))
  }
}

#let TODO(string) = {
  box(fill: rgb("#ff6666"), inset: 4pt)[#text(fill: white)[TODO: #string]]
}

#let indiceTabelle() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice tabelle #v(2em)], indent: 1em, target: figure.where(kind: table))
}

/// Indicizza le immagini presenti nel documento
#let indiceImmagini() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice immagini #v(2em)], indent: 1em, target: figure.where(kind: image))
}

// Funzione per la costruzione della tabella dei rischi
#let schedaRischio(codice, nome, descrizione, cause, mitigazione, contingenza, probabilità, pericolo) = {
  figure(
    table(
      fill: (x, y) => if(y == 0) {
        luma(63.75%)
      } else if (calc.gcd(y, 2) == 2) {
        luma(220)
      } else {
        white
      }, 
      columns: (3fr, 7fr),
      inset: 10pt,
      table.header(
        text(fill: white, weight: "bold")[Tipologia Dato],
        text(fill: white, weight: "bold")[Valore],
      ),
      [*Codice*], [#codice],
      [*Nome*], [#nome],
      [*Descrizione*], [#descrizione],
      [*Cause*], [#cause],
      [*Mitigazione \ (Preventiva)*], [#mitigazione],
      [*Contingenza \ (Reattiva)*], [#contingenza],
      [*Probabilità (P)*], [#probabilità],
      [*Impatto (I)*], [#pericolo]
    ),
    caption: [Scheda del rischio #codice],
    kind: table
  )
}

//Funzione per la tabella di consuntivo degli sprint
#let sprint_table(data, caption_text) = {
  let showVal(val) = {
    if val == 0 { [-] } else { [#val] }
  }
  let tot_resp = 0
  let tot_amm = 0
  let tot_anal = 0
  let tot_prog = 0
  let tot_cod = 0
  let tot_ver = 0

  let table_body = ()

  for row in data {
    
    tot_resp += row.at(1)
    tot_amm  += row.at(2)
    tot_anal += row.at(3)
    tot_prog += row.at(4)
    tot_cod  += row.at(5)
    tot_ver  += row.at(6)

    table_body.push(row.at(0))        // Nome
    table_body.push(showVal(row.at(1)))  // Resp
    table_body.push(showVal(row.at(2)))  // Amm
    table_body.push(showVal(row.at(3)))  // Anal
    table_body.push(showVal(row.at(4)))  // Prog
    table_body.push(showVal(row.at(5)))  // Cod
    table_body.push(showVal(row.at(6)))  // Ver
  }

  // Rendering della figura
  figure(
    table(
      fill: (col, row) => if row == 0 { luma(63.75%) } else { white },
      columns: (1.5fr, 0.7fr, 0.8fr, 0.5fr, 0.6fr, 0.8fr, 0.6fr),
      inset: 8pt,
      align: (col, row) => if col == 0 { left + horizon } else { center + horizon },
      stroke: 0.5pt + luma(200),
      
      // Header
      table.header(
        text(fill: white, weight: "bold")[Membro],
        text(fill: white, size: 8pt, weight: "bold")[Responsabile],
        text(fill: white, size: 8pt, weight: "bold")[Amministratore],
        text(fill: white, size: 8pt, weight: "bold")[Analista],
        text(fill: white, size: 8pt, weight: "bold")[Progettista],
        text(fill: white, size: 8pt, weight: "bold")[Programmatore],
        text(fill: white, size: 8pt, weight: "bold")[Verificatore],
      ),

      // Inserisco le celle generate dal loop
      ..table_body,

      // Riga dei Totali (Calcolata automaticamente)
      table.cell(colspan: 1, fill: luma(240), align: left)[*Totale Ore*],
      table.cell(fill: luma(240))[*#tot_resp*],
      table.cell(fill: luma(240))[*#tot_amm*],
      table.cell(fill: luma(240))[*#tot_anal*],
      table.cell(fill: luma(240))[*#tot_prog*],
      table.cell(fill: luma(240))[*#tot_cod*],
      table.cell(fill: luma(240))[*#tot_ver*],
    ),
    caption: caption_text,
  )
}

#let metrics_table(caption_text, content_list) = {
  figure(
    table(
      fill: (x, y) => if (y == 0) { luma(220) } else { white },
      columns: (1.2fr, 2.2fr, 3fr, 1.1fr, 1.1fr),
      inset: 10pt,
      align: horizon,
      table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),
      ..content_list
    ),
    caption: caption_text,
    kind: table
  )
}
