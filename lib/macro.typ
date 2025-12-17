#import "@preview/cetz:0.3.2": *
#import "@preview/cetz-plot:0.1.1": chart

#let name = (
    tullio: (nome: "Tullio", cognome: "Vardanega"),
    cardin: (nome: "Riccardo", cognome: "Cardin"),

    kevin: (nome: "Kevin", cognome: "Basso", matricola: "2101077"),
    suar: (nome: "Suar", cognome: "Alberto", matricola: "2101051"),
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

#let issue(n, repo: repo.docs) = {
  link(repo.link + repo.issues + str(n), repo.abbrev + str(n))
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

  show grid.cell.where(x: 0): cell => align(right, cell)
  show grid.cell.where(x: 1): cell => align(left, cell)
  set text(11pt)
  box(
    width: 80%,
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
      [titolo],[*Skarab Group - Anno accademico 2025/2026*]
    )
    line(length: 100%, stroke: 0.5pt)
}

#let footer= {
    line(length: 100%, stroke: 0.5pt)
    v(0.3em)
    align(center)[context {counter(page).display()}]
}

#let registro-modifiche(modifiche) = {
  text(16pt, weight: "black", fill: black)[Registro delle Modifiche]
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
        if "verificatore" in mod {
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
