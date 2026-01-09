#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": chart

// In glossarioUtil.typ
#let GLOSSARIO_URL = "https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html"

#let term-to-id(term) = {
  let result = lower(term)
  
  // Caratteri accentati
  let accents = (
    ("à", "a"), ("á", "a"), ("â", "a"), ("ã", "a"), ("ä", "a"), ("å", "a"),
    ("è", "e"), ("é", "e"), ("ê", "e"), ("ë", "e"),
    ("ì", "i"), ("í", "i"), ("î", "i"), ("ï", "i"),
    ("ò", "o"), ("ó", "o"), ("ô", "o"), ("õ", "o"), ("ö", "o"),
    ("ù", "u"), ("ú", "u"), ("û", "u"), ("ü", "u"),
  )
  
  for (from, to) in accents {
    result = result.replace(from, to)
  }
  
  // Altri caratteri comuni
  result = result.replace("'", "")
  result = result.replace(":", "")
  result = result.replace(".", "")
  result = result.replace(",", "")
  result = result.replace(";", "")
  
  // Sostituisci spazi con trattini
  result = result.replace(" ", "-")
  
  // Pulisci trattini multipli
  while result.contains("--") {
    result = result.replace("--", "-")
  }
  
  // Rimuovi trattini iniziali/finali
  result = result.trim("-", at: start, repeat: true)
  result = result.trim("-", at: end, repeat: true)
  
  return result
}

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
    if row.len() == 4 { row + ([],) } 
    else if row.len() == 5 { row }
    else {
      // Più verificatori: combina tutti gli elementi dal 5° in poi
      let verificatori = row.slice(4).join([, ])
      row.slice(0, 4) + (verificatori,)
    }
  })

  table(
    columns: (auto, auto, auto, auto, auto),
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

      if found { break }
    }
    if found { break }
  }

  // Se la parola non esiste, genera errore a compile-time
  if not found {
    panic("Parola non definita nel glossario: " + parola)
  } else {
    let term_id = term-to-id(parola)
    let url = GLOSSARIO_URL + "#" + term_id
    
    link(url)[#underline(parola)]
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