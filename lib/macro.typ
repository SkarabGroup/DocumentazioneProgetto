#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": chart

#let name = (
    tullio: (nome: "Tullio", cognome: "Vardanega"),
    cardin: (nome: "Riccardo", cognome: "Cardin"),

    kevin: (nome: "Kevin", cognome: "Basso", matricola: "2101077"),
    suar: (nome: "Alberto", cognome: "Suar", matricola: "2101051"),
    andrea: (nome: "Andrea", cognome: "Sgreva", matricola: "2113179"),
    riccardob: (nome: "Riccardo", cognome: "Berengan", matricola: "2080041"),
    alice: (nome: "Alice", cognome: "Zago", matricola: "2116430"),
    riccardom: (nome: "Riccardo", cognome: "Martinello", matricola: "2009086"),
    antonio: (nome: "Antonio", cognome: "Sandu", matricola: "2113194"),
    //to do persone azienda
)
#let repo = (
  docs: (
    abbrev: "DOCS",
    link: "https://github.com/SkarabGroup/DocumentazioneProgetto",
  )
)

#let persona(name) = {
    name.nome
    " "
    name.cognome
}

#let prima-pagina(titolo, extra, ..entries) = {
  set align(center)

  image("../assets/logo.jpg", height: 7cm)
  v(1em)
  text(28pt, weight: "bold", fill: black)[Skarab Group]
  v(1em)
  line(length: 80%, stroke: 0.5pt)
  text(18pt, weight: "bold", fill: black)[#titolo]
  line(length: 80%, stroke: 0.5pt)
  v(2.25em)

  box(
    width: 100%,
    grid(
      columns: (1fr,1fr),
      grid.vline(x:1,stroke: 0.5pt),
      align: (right, left),
      inset: 8pt,
      ..entries
    ),
  )

  if extra != none {
    extra
  }
}


#let header(titolo) ={
    grid(
      columns: (1fr,2fr),
      align: (left, right),
      [#titolo],[*Skarab Group - Anno accademico 2025/2026*]
    )
    line(length: 100%, stroke: 0.5pt)
}

#let footer()= {
    line(length: 100%, stroke: 0.5pt)
    set align(center)
    v(0.3em)
    context [
      Pagina #counter(page).display(page.numbering) di #counter(page).final().first()
  ]
}

#let registro-modifiche(modifiche) = {
  text(16pt, weight: "black", fill: black)[Registro versioni]
  table(
    fill: (x, y) => if (y == 0) {
      rgb("#afafaf")
    } else if (calc.gcd(y, 2) == 2) {
      rgb("#d0d0d0")
    },
    columns: (0.5fr, 0.25fr, 1fr, 0.5fr, 0.5fr),
    inset: 5pt,
    align: center,
    stroke: none,
    table.header(
      text(12pt, fill: black)[*Data*],
      text(12pt, fill: black)[*Vers.*],
      text(12pt, fill: black)[*Descrizione*],
      text(12pt, fill: black)[*Autore*],
      text(12pt, fill: black)[*Verificatore*],
    ),
    ..modifiche.map(mod => {

      (
        mod.date.display("[year]-[month]-[day]"),
        mod.vers,
        mod.descr,
        persona(mod.autore),
        if "verificatore" in mod and mod.verificatore != "" {
          persona(mod.verificatore)
        } else {
          [-]
        },
      )
    }).flatten(),
  )
}

#let indice() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(
    title: [Indice],
    depth: 3,
    indent: auto
  )
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
    // Normalizza il nome per la label (sostituisce spazi con trattini)
    //let label_name = termine_originale.replace(" ", "-")
    // Crea il link alla label del glossario
    //link(label(label_name))[#parola#sub[G]]
    underline(text(parola))
  }
}


#let indice_tabelle() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice tabelle #v(2em)], indent: 1em, target: figure.where(kind: table))
}

/// Indicizza le immagini presenti nel documento
#let indice_immagini() = {
  show outline.entry.where(level: 1): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(title: [#v(2em) Indice immagini #v(2em)], indent: 1em, target: figure.where(kind: image))
}

#let TODO(string) = {
  box(fill: rgb("#ff6666"), inset: 4pt)[#text(fill: white)[TODO: #string]]
}




