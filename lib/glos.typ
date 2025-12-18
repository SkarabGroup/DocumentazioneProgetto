//glossario

#import "macro.typ": *

#let glossario(
  responsabile: (),
  verificatore: (),
  redattori: (),
  versioni: (),
  data: [],
  stato: [],
  versione: [],
  descrizione: [],
  body,
) = {
  [#metadata[Glossario #versione] <titolo>]
  set text(lang: "it", font: "Hanken Grotesk")
  prima-pagina(
    [_Glossario_ \ Versione #versione], //titolo
    {
      v(1em)
      text(14pt, weight: "black", fill: black)[Descrizione]
      v(0.5em)
      text(10pt)[#descrizione]
    },
    [Stato],stato,
    [Versione],versione,
    [Responsabili],    grid(align: left, gutter: 8pt, ..responsabile.map(persona)),
    [Verificatori],    grid(align: left, gutter: 8pt, ..verificatore.map(persona)),
    [Redattori],    grid(align: left, gutter: 8pt, ..redattori.map(persona)),
    [Distribuzione],grid(align: left, gutter: 8pt, [ciao]),
  )

  set enum(indent: 1em)
  set heading(numbering: none, hanging-indent: 1em)
  set page(numbering: "1", header: header("Glossario" + "\n Versione " + versione), footer: footer())
  counter(page).update(1)
  pagebreak()

  registro-modifiche(versioni)
  pagebreak()

  indice()
  pagebreak()

  body

  for (letter, terms) in yaml("../RTB/glossario.yml") [
    #heading(letter, level: 1)
    #for (key, value) in terms [
      #if (key != "") [
        // Usa emph o strong, non list()
        #strong[#key]
        #label(key)
        
        // Mostra l'acronimo se presente
        #if "acronimo" in value [ 
          (#emph[#value.acronimo]) 
        ]
        
        // Mostra le alternative se presenti
        #if "alternative" in value [
          #text(size: 0.9em, fill: gray)[(#value.alternative)]
        ]
        
        // Descrizione
        #if "descrizione" in value [
          #value.descrizione
        ]
        
        #v(0.5em) // Spazio tra i termini
      ]
    ]
    #if (letter != "Z") [
      #pagebreak()
    ]
  ]
}