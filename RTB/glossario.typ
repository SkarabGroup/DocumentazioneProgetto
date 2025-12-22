#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/glossarioUtil.typ": *

#let versione = "v0.2.0"

#titlePage("Glossario", versione)
#set page(numbering: "1", header: header("Glossario"), footer: footer())
#let history = (
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