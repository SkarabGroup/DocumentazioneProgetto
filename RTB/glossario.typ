#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/glossarioUtil.typ": *

#let versione = "v0.3.0"

#titlePage("Glossario", versione)
#set page(numbering: "1", header: header("Glossario"), footer: footer())
#let history = (
  (
    "02/01/2026", 
    "0.3.0", 
    "Aggiunti termini per standard industriali, ruoli progetto e tecnologie (SQA, ISO, Node.js, etc.)",
    members.martinello, 
    members.suar
  ),
  (
    "20/12/2025", 
    "0.2.0", 
    "Aggiunti termini IT e sviluppatore software",
    members.kevin, 
    members.suar
  ),
    
  (
    "19/12/2025", 
    "0.1.0", 
    "Aggiunti primi termini al glossario", 
    members.kevin, 
    members.suar
  ),
    
  (
    "18/12/2025", 
    "0.0.0", 
    "Creazione documento",
    members.kevin,
    members.suar
  )
)

#versionTable(history)

#indice()

#glossario()