#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)

//Macro da modificare a modo
#let titoloDocumento = "Strands SDK"
#let dataDocumento = "2025-11-20"
#let emailGruppo = "skarabswegroup@gmail.com"
#let redattoreDocumento = "Basso Kevin"
#let versione = "1.0.0"
#let modifica = "Creazione    documento"
#let verificatore = " / "

// Title page
#page(header: none, numbering: none)[
  #align(center)[
    #v(1fr)
    #image("skarablogo_.jpg", width: 40%)
    #v(1cm)
    #text(size: 28pt, weight: "bold")[Skarab Group]
    #v(0.5cm)
    #line(length: 80%, stroke: 0.5pt)
    #v(0.5cm)
    #text(size: 18pt, weight: "bold")[#titoloDocumento]
    #v(0.5cm)
    #line(length: 80%, stroke: 0.5pt)
    #v(1fr)
    #emailGruppo
    #v(1fr)
  ]
  
]

#set page(
  header: [
    #grid(
      columns: (1fr,2fr),
      align: (left, right),
      [#titoloDocumento],[*Skarab Group - Anno accademico 2025/2026*]
    )
    #line(length: 100%, stroke: 0.5pt)
  ],
  footer: [
    #line(length: 100%, stroke: 0.5pt)
    #v(0.3em)
    #align(center)[#context {counter(page).display()}]
  ]
)


// Sezione Versionamento
#align(center)[
  #text(size: 16pt, weight: "bold")[Versionamento e changelog]
]

#v(1em)

#align(center)[
  #table(
    columns: (3cm, 3cm, 3.0cm, 3cm, 3cm),
    align: center + horizon,
    stroke: 0.5pt,
    fill: (_, y) => if y == 0 { rgb("#d0d0d0") },
    [*Data \ Modifica*], [*Versione*], [*Descrizione Modifica*], [*Redattore*], [*Verificatore*], 
    [2025-11-21],[1.0.1],[Fix formato data],[Basso Kevin],[/],   
    [#dataDocumento], [1.0.0], [Creazione \ documento], [#redattoreDocumento], [/]
  )
]

#pagebreak()

// Indice
#outline(
  title: [Indice],
  depth: 3,
  indent: auto
)
#pagebreak()

//Da qui iniziano gli argomenti
= Cos'è Strands SDK
AWS Strands è un SDK (Software Developer Kit) open source sviluppato da Amazon per lo sviluppo di Agenti AI, esso è completamente agent-agnostic ovvero fornisce solo un modo per creaare gli agenti senza fare alcuna assunzione sul modello generazionale su cui si basa, quindi può essere utilizzato con qualsiasi modello. Ogni agente ha una serie di tool che può utilizzare e un modello (di default usa l'ultimo di Atropic).

= Modelli generativi
Come già detto Strands SDK è model-agnostic quindi può usare sia modelli che eseguono in locale che essere integrato con architetture di cloud computing. La scelta dipende dalla sensibilità e dalla complessità dei task richiesti; l'utilizzo di modelli locali come Llama di Meta è preferibile se le informazioni su cui l'agente deve lavvorare sono sensibilee e i task semplici, mentre, l'utilizzo di servizi di cloud computing come AWS Bedrock è preferibile per task più complessi dato che permette di utilizzare LLM's con molti più parametri ma, allo steso tempo, questo espone le informazioni trattate ad un canale non sicuro.

== AWS Bedrock
Nel caso del progetto Code Guardian la scelta dei modelli generativi per i vari agenti ricade tra quelli presenti in AWS Bedrock dato che i task da eseguire sono alquanto complessi e i contenuti da analizzare derivano da repository GitHub pubbliche che, quindi, non sono private.

= Server MCP
Quando si creano sistemi di agenti AI è consigliabile dividere strumenti e servizi esterni dall' implementazione effettiva dell'agente, questo è utile soprattutto per questioni di sicurezza, scalabilità e riusabilità. Infatti i server MCP (Model Context Protocol) posso esporre solo alcune funzioni, richiedere chiavi di accesso per poter utilizzare le funzioni all'interno di essi; inoltre, avendo più di un server MCP posso modificare i tool di un agente molto più velocemente.

#pagebreak()
= Recap
Per il progetto Code Guardian l'utilizzo di questa libreria è fondamentale in quanto permette l'effettiva creazione di tutta la struttura degli agenti

= Fonti
#link("https://aws.amazon.com/bedrock/")[Documentazione AWS Bedrock] #linebreak()
#link("https://www.youtube.com/watch?v=TD2ihEBkdkY")[Video AWS Strands] #linebreak()
#link("https://www.youtube.com/watch?v=j2wYT6jqXZY&t=837s")[Video Agent's in production di AWS] #linebreak()
#link("https://github.com/awsdocs/aws-doc-sdk-examples/tree/main/python")[Repository GitHub Strands] #linebreak()
#link("https://www.youtube.com/watch?v=jRhceBy_QqU")[Video su server MCP] #linebreak()




