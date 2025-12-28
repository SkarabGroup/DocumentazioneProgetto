#let renderTerm(term, data) = {
  block(width: 100%, breakable: true)[
    #box(width: 100%)[
      #text(1.2em, weight: "bold", fill: black)[#term]
      #label(term)
      #if "acronimo" in data and data.acronimo != none {
        h(0.5em)
        text(1.1em, style: "italic", fill: luma(100))[ (#data.acronimo) ]
      }
    ]
    #par(justify: true, first-line-indent: 0em)[
      #if "descrizione" in data {
        data.descrizione
      } else {
        text(fill: red)[Descrizione mancante.]
      }
    ]
    #if "alternative" in data and data.alternative != none {
      v(0.2em)
      text(fill: luma(100))[
        *Vedi anche:* #data.alternative
      ]
    }
  ]
  v(1.5em)
}

#let glossario(file-dati: "../RTB/glossario.yml") = {
  let raw-data = yaml(file-dati)

  show heading.where(level: 2): it => {
    v(1em)
    block(breakable: false, width: 100%)[
      #text(2em, weight: "bold", fill: luma(60))[#it.body]
      #v(-0.8em)
      #line(length: 100%, stroke: 1pt + luma(150))
    ]
    v(0.5em)
  }

  for (letter, terms) in raw-data {
    heading(level: 2, numbering: none)[#letter]
    
    for (term, definition) in terms {
      renderTerm(term, definition)
    }
  }
}