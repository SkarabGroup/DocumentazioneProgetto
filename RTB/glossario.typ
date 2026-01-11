#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/glossarioUtil.typ": *

#let versione = "v0.9.0"

#titlePage("Glossario", versione)
#set page(numbering: "1", header: header("Glossario"), footer: footer())
#let history = (
  (
    "2026/01/10",
    "0.9.0",
    "Aggiunti termini Analisi Statica, API Contract, Bus Factor, Caching, Containerizzazione, Data Leakage, DevOps, Gold Plating, Human-in-the-loop, Infrastructure as Code, Integrazione Continua, Mock, Optimism Bias, Pair Programming, Proof of Concept, Stato Avanzamento Lavori, T-Shaped Skills",
    members.suar
  ),
  (
    "2026/01/02", 
    "0.8.0", 
    "Aggiunti i termini LLM, Norme di Progetto, Falso positivo, falso negativo per PdP", 
    members.andrea, 
    members.antonio
  ),
  (
    "2025/12/30",
    "0.7.0",
    "Aggiunti termini relativi ai test",
    members.alice,
    members.kevin,
  ),
  (
    "2025/12/28",
    "0.6.0",
    "Aggiunto termine CMMI",
    members.alice,
    members.kevin,
  ),
  (
    "2025/12/27", 
    "0.5.0", 
    "Aggiunti i termini per PdP", 
    members.andrea, 
    members.antonio
  ),
  (
    "2025/12/27",
    "0.4.0",
    "Aggiunti termini Qualità, Piano di Qualifica e Ciclo di vita del software",
    members.alice,
    members.kevin,
  ),
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
    members.suar,
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
    members.suar,
  ),
)

#versionTable(history)

#indice()

#glossario()
