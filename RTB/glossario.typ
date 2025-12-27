#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/glossarioUtil.typ": *

#let versione = "v0.3.0"

#titlePage("Glossario", versione)
#set page(numbering: "1", header: header("Glossario"), footer: footer())
#let history = (
  (
    "2025/12/27", 
    "0.3.0", 
    "Correzioni sul formato delle date, standardizzate, riordino in ordine alfabetico dei termini e aggiunta termini",
    members.kevin, 
  ),
  (
    "2025/12/24", 
    "0.2.0", 
    "Aggiunti termini IT e sviluppatore software",
    members.kevin, 
    members.suar
  ),
    
  (
    "2025/12/19", 
    "0.1.0", 
    "Aggiunti primi termini al glossario", 
    members.kevin, 
    members.suar
  ),
    
  (
    "2025/12/18", 
    "0.0.0", 
    "Creazione documento",
    members.kevin,
    members.suar
  )
)

#versionTable(history)

#indice()

#glossario()