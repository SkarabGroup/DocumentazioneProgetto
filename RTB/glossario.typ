#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/glossarioUtil.typ": *

#let versione = "v0.5.0"

#titlePage("Glossario", versione)
#set page(numbering: "1", header: header("Glossario"), footer: footer())
#let history = (
  (
    "30/12/2025",
    "0.5.0",
    "Aggiunti termini relativi ai test",
    members.alice,
  ),
  (
    "28/12/2025",
    "0.4.0",
    "Aggiunto termine CMMI",
    members.alice,
  ),
  (
    "27/12/2025",
    "0.3.0",
    "Aggiunti termini Qualità, Piano di Qualifica e Ciclo di vita del software",
    members.alice,
  ),
  (
    "20/12/2025",
    "0.2.0",
    "Aggiunti termini IT e sviluppatore software",
    members.kevin,
    members.suar,
  ),
  (
    "19/12/2025",
    "0.1.0",
    "Aggiunti primi termini al glossario",
    members.kevin,
    members.suar,
  ),
  (
    "18/12/2025",
    "0.0.0",
    "Creazione documento",
    members.kevin,
    members.suar,
  ),
)

#versionTable(history)

#indice()

#glossario()
