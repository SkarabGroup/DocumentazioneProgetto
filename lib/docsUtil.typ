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
    depth: 7,
    indent: auto,
  )

  pagebreak()
}

#let def(parola) = {
  let yml = yaml("../PB/glossario.yml")

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
    [#text(parola) #super[G]]

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


#let activity_table(data, caption_text) = {
  let table_body = ()

  for row in data {
    table_body.push(row.at(0))  // Attività
    table_body.push(row.at(1))  // Data Inizio
    table_body.push(row.at(2))  // Data Fine
    table_body.push(row.at(3))  // Ruoli Assegnati
    table_body.push(row.at(4))
  }

  // Rendering della figura
  figure(
    table(
      fill: (col, row) => if row == 0 { luma(64%) } else { white },
      columns: (3fr,2fr,1fr,1fr,2fr),
      inset: 8pt,
      align: (col, row) => if col == 0 { left + horizon } else { center + horizon },
      stroke: 0.5pt + luma(200),
      
      // Header
      table.header(
        text(fill: white, weight: "bold")[Attività],
        text(fill: white, weight: "bold")[Ruoli Assegnati],
        text(fill: white, weight: "bold")[Ore previste],
        text(fill: white, weight: "bold")[Ore effettive],
        text(fill: white, weight: "bold")[Stato di completamento],
      ),

      // Inserisco le celle generate dal loop
      ..table_body,
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

#let improvement_table(caption_text, content_list) = {
  figure(
    table(
      fill: (x, y) => if (y == 0) {
        luma(230) // Header scuro
      } else {
        luma(250) // Righe chiare
      },
      // 3 Colonne: ID, Problema, Azione
      columns: (0.6fr, 2fr, 2.4fr),
      inset: 10pt,
      align: (x, y) => if x == 0 { center + horizon } else { left + horizon },
      table.header([*ID*], [*Problema / Causa*], [*Azione Correttiva*]),
      
      ..content_list
    ),
    caption: caption_text,
    kind: table
  )
}
#let task_table(data) = {
  table(
    columns: (1fr, 0.8fr, 0.4fr),
    align: (left, left, center),
    stroke: 0.5pt + luma(200),
    inset: 10pt,
    
    // Header che si ripete su ogni pagina
    fill: (col, row) => if row == 0 { luma(245) },
    table.header(
      [*Descrizione Task*], 
      [*Ruolo responsabile*], 
      [*Ore*],
    ),

    // Dati
    ..data.flatten().map(item => [#item])
  )
}
#let preventivo_a_finire(data, caption_text, preventivo, consuntivo) = {
  let rates = (30, 20, 25, 25, 15, 15)

  let showVal(val) = {
    if val == 0 { [-] } else { [#val] }
  }

  let showCost(val) = {
    if val == 0 { [-] } else { [#val €] }
  }

  // Totale ore rimanenti = somma colonne dei membri
  let totals = (0, 0, 0, 0, 0, 0)
  let table_body = ()

  for row in data {
    totals = totals.enumerate().map(((i, t)) => t + row.at(i + 1))
    let row_total = range(6).map(i => row.at(i + 1)).sum()

    table_body.push(row.at(0))
    for i in range(6) {
      table_body.push(showVal(row.at(i + 1)))
    }
    table_body.push(table.cell(fill: luma(240))[*#row_total*])
  }

  let tot_grand  = totals.sum()
  let pac        = totals.enumerate().map(((i, t)) => t * rates.at(i))
  let pac_grand  = pac.sum()

  figure(
    table(
      fill: (col, row) => if row == 0 { luma(63.75%) } else { white },
      columns: (1.0fr, 0.7fr, 0.8fr, 0.5fr, 0.6fr, 0.8fr, 0.6fr, 1.0fr),
      inset: 8pt,
      align: (col, row) => if col == 0 { left + horizon } else { center + horizon },
      stroke: 0.5pt + luma(200),

      table.header(
        text(fill: white, weight: "bold")[Membro],
        text(fill: white, size: 8pt, weight: "bold")[Responsabile],
        text(fill: white, size: 8pt, weight: "bold")[Amministratore],
        text(fill: white, size: 8pt, weight: "bold")[Analista],
        text(fill: white, size: 8pt, weight: "bold")[Progettista],
        text(fill: white, size: 8pt, weight: "bold")[Programmatore],
        text(fill: white, size: 8pt, weight: "bold")[Verificatore],
        text(fill: white, size: 8pt, weight: "bold")[Totale ore rimaste rispetto alle 90 preventivate],
      ),

      ..table_body,

      // Preventivo sprint — solo display, non usato nei calcoli
      table.cell(fill: luma(220), align: left)[*Preventivo sprint*],
      ..preventivo.map(p => table.cell(fill: luma(220))[#showVal(p)]),
      table.cell(fill: luma(220))[#showVal(preventivo.sum())],

      // Consuntivo sprint — solo display, non usato nei calcoli
      table.cell(fill: luma(220), align: left)[*Consuntivo sprint*],
      ..consuntivo.map(c => table.cell(fill: luma(220))[#showVal(c)]),
      table.cell(fill: luma(220))[#showVal(consuntivo.sum())],

      // Totale ore rimanenti = somma ore rimanenti per ruolo dai membri
      table.cell(fill: luma(240), align: left)[*Totale Ore rimanenti*],
      ..totals.map(t => table.cell(fill: luma(240))[*#t*]),
      table.cell(fill: luma(230))[*#tot_grand*],

      // Prev. a finire = ore rimanenti × tariffa
      table.cell(fill: luma(200), align: left)[*Prev. a finire*],
      ..pac.map(c => table.cell(fill: luma(200))[#showCost(c)]),
      table.cell(fill: luma(200))[#showCost(pac_grand)],
    ),
    caption: caption_text,
  )
}

#let sprint_table_con_preventivo(data, caption_text) = {
  let showVal(val) = if val == 0 { [-] } else { [#val] }

  // Ore preventivate hardcoded per ruolo (per membro)
  let preventivo_per_ruolo = (7,13,12,17,20,21)
  let costo_per_ruolo = (30, 20, 25, 25, 15, 15)
  let preventivo_orario_totale = (49,91,84,119,140,147)
  let preventivo_totale = preventivo_per_ruolo.sum()
  let totale_preventivo_orario_generale = preventivo_orario_totale.sum()

  let table_body = ()
  let total_generale = 0

  for row in data {
    let row_total = range(6).map(i => row.at(i + 1)).sum()
    total_generale += row_total

    table_body.push(row.at(0))
    for i in range(6) {
      table_body.push(showVal(row.at(i + 1)))
    }
    table_body.push([*#row_total*])
  }

  let showCost(val) = if val == 0 { [-] } else { [#val €] }

  figure(
    table(
      fill: (col, row) => if row == 0 { luma(63.75%) } else { white },
      columns: (1.5fr, 0.7fr, 0.8fr, 0.5fr, 0.6fr, 0.8fr, 0.6fr, 0.9fr),
      inset: 8pt,
      align: (col, row) => if col == 0 { left + horizon } else { center + horizon },
      stroke: 0.5pt + luma(200),

      table.header(
        text(fill: white, weight: "bold")[Membro],
        text(fill: white, size: 8pt, weight: "bold")[Responsabile],
        text(fill: white, size: 8pt, weight: "bold")[Amministratore],
        text(fill: white, size: 8pt, weight: "bold")[Analista],
        text(fill: white, size: 8pt, weight: "bold")[Progettista],
        text(fill: white, size: 8pt, weight: "bold")[Programmatore],
        text(fill: white, size: 8pt, weight: "bold")[Verificatore],
        text(fill: white, size: 8pt, weight: "bold")[Totale],
      ),

      // Prima riga: preventivo hardcoded per membro
      table.cell(fill: luma(230), align: left)[*Preventivo per membro*],
      ..preventivo_per_ruolo.map(v => table.cell(fill: luma(230))[#showVal(v)]),
      table.cell(fill: luma(230))[*#preventivo_totale*],

      // Righe membri
      ..table_body,
      //totale preventivo per ruolo
      table.cell(fill: luma(240), align: left)[*Totale Preventivato*],
      ..preventivo_orario_totale.map(v => table.cell(fill: luma(240))[#showVal(v)]),
      table.cell(fill: luma(240))[*#totale_preventivo_orario_generale*],

      // Totale complessivo finale
      table.cell(fill: luma(230), align: left)[*Totale Consuntivato*],
      ..range(6).map(i => table.cell(fill: luma(230))[*#data.map(row => row.at(i + 1)).sum()*]),
      table.cell(fill: luma(230))[*#total_generale*],

      //costi
      table.cell(fill: luma(240), align: left)[*Costo orario ruolo*],
      ..costo_per_ruolo.map(v => table.cell(fill: luma(240))[#showVal(v)]),
      table.cell(fill: luma(240))[*-*],

      //totasle preventivato = ore preventivate × costo orario
      table.cell(fill: luma(230), align: left)[*Costo totale Preventivato*],
      ..range(6).map(i => table.cell(fill: luma(230))[#showCost(preventivo_orario_totale.at(i) * costo_per_ruolo.at(i))]),
      table.cell(fill: luma(230))[#underline(showCost(range(6).map(i => preventivo_orario_totale.at(i) * costo_per_ruolo.at(i)).sum()))],

      //totale consuntivato = ore consuntivate × costo orario
      table.cell(fill: luma(240), align: left)[*Costo totale Consuntivato*],
      ..range(6).map(i => table.cell(fill: luma(240))[#showCost(data.map(row => row.at(i + 1)).sum() * costo_per_ruolo.at(i))]),
      table.cell(fill: luma(240))[#underline(showCost(range(6).map(i => data.map(row => row.at(i + 1)).sum() * costo_per_ruolo.at(i)).sum()))],
    ),
    caption: caption_text,
  )
}