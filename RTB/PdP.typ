#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *

//Note sul versionamento
/*
  x.y.z
  La X si modifica solamente a documento completo
  La Y si modifica solo quando vengono aggiunti nuovi elementi
  La Z si modifica solo quando si modificano elementi già esistenti

  Si raccomanda di modificare sempre questo valore quando si lavora su un qualunque file
*/
#let versione = "v0.0.0"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#let history = (
  (
    "2025/12/23", 
    "0.0.0", 
    "Creazione documento", 
    members.andrea
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

#indiceTabelle()

#pagebreak()

= Introduzione

== Scopo del documento
Bla bla //ricorda #def("parola") per glossario 

== Glossario
Bla bla //ricorda #def("parola") per glossario

== Riferimenti
- #strong("Capitolato C2: Piattaforma ad agenti per l’audit e la remediation dei repository software") \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf] \ Ultimo accesso 2025/12/23
- #strong("Dispense del corso di Ingegneria del Software sulla gestione di progetto") \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf] \ Ultimo accesso 2025/12/23



#pagebreak()

= Analisi e gestione dei rischi

== Introduzione
Bla bla //ricorda #def("parola") per glossario

== Rischio Tecnologico

=== RT1: Rischio Tecnologico...
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr),
    inset: 10pt,
    table.header(
      [*Tipologia Dato*],
      [*Valore*],
    ),

    [*Codice*],
    [RT1],
    [*Nome*], 
    [],
    [*Descrizione*], 
    [],
    [*Probabilità di avvenimento*],
    [],
    [*Pericolosità delle ripercussioni*],
    [],
  ),
  caption: [Informazioni sul rischio RT1],
)

=== RT2: Rischio Tecnologico...
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr),
    inset: 10pt,
    table.header(
      [*Tipologia Dato*],
      [*Valore*],
    ),

    [*Codice*],
    [RT2],
    [*Nome*], 
    [],
    [*Descrizione*], 
    [],
    [*Probabilità di avvenimento*],
    [],
    [*Pericolosità delle ripercussioni*],
    [],
  ),
  caption: [Informazioni sul rischio RT2],
)

== Rischio Individuale

=== RI1: Rischio Individuale...
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr),
    inset: 10pt,
    table.header(
      [*Tipologia Dato*],
      [*Valore*],
    ),

    [*Codice*],
    [RI1],
    [*Nome*], 
    [],
    [*Descrizione*], 
    [],
    [*Probabilità di avvenimento*],
    [],
    [*Pericolosità delle ripercussioni*],
    [],
  ),
  caption: [Informazioni sul rischio RI1],
)

== Rischio Globale

=== RG1: Rischio Globale...
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr),
    inset: 10pt,
    table.header(
      [*Tipologia Dato*],
      [*Valore*],
    ),

    [*Codice*],
    [RG1],
    [*Nome*], 
    [],
    [*Descrizione*], 
    [],
    [*Probabilità di avvenimento*],
    [],
    [*Pericolosità delle ripercussioni*],
    [],
  ),
  caption: [Informazioni sul rischio RG1],
)

= Pianificazione nel lungo termine

== Attività previste per la Requirements and Technology Baseline (RTB)

== Attività previste per la Product Baseline (PB)

= Pianificazione nel breve termine