#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-15",
      "1.0.0",
      "Stesura verbale",
      members.martinello,
      members.andrea,
    ),
  ),
  
  presenti: (
    [#members.suar,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.martinello,
      #members.kevin,
      #members.berengan #v(0.3cm)]
  ),
  
  assenze: [],
  
  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione sul progresso in merito al documento Specifica Tecnica (ST) e progettazione"
    #let punto2 = "Discussione sullo stato di avanzamento con la PB"
    + #punto1.
    + #punto2.
    
    = Svolgimento Riunione
    #let orarioInizioRiunione = "14:00"
    #let dataRiunione = "15 Marzo"
    #let orarioFineRiunione = "16:30"
    #let presidenteRiunione = members.berengan
    
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.
    
    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno discusso in merito allo stato di avanzamento della Specifica Tecnica e delle priorità progettuali, con riferimento alle sezioni sui microservizi e persistenza.",
      decisione: "Si è deciso di procedere con la progettazione di dettaglio dei componenti core del sistema. Da tale decisione scaturiscono i compiti di analisi tool, configurazione OAuth, definizione del componente C3, gestione della persistenza, architettura esagonale, flussi di zipping e rifinitura diagrammi; tali incarichi sono assegnati al ruolo di Progettista"
    )
    
    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Sono state riviste le modalità operative per la PB e l'assegnazione delle task settimanali.",
      decisione: "Per rendere operativa l'architettura della PB, il team ha stabilito di avviare la progettazione dei gateway e delle porte di ingresso secondo il pattern esagonale, definendo contestualmente il meccanismo di zipping e la strategia di persistenza dei dati. Queste attività rappresentano il nucleo dell'impegno operativo immediato del gruppo."
    )
    
    = Azioni e responsabilità
    #task_table((
      ("Completare l'analisi dei tool mancanti e redigerne la documentazione", "Progettista", "8:00"),
    ("Progettazione dell'implementazione e configurazione OAuth", "Progettista", "5:00"),
    ("Completamento del componente C3 e relative integrazioni interne", "Progettista", "7:00"),
    ("Progettazione dell'impacchettamento del repository e definizione persistenza", "Progettista", "6:00"),
    ("Progettazione dei gateway e delle porte di ingresso per l'architettura esagonale", "Progettista", "5:00"),
    ("Progettazione del meccanismo di zipping e del flusso dati", "Progettista", "4:00"),
    ("Rifinitura diagrammi C3/C4 e allineamento decisioni architetturali", "Progettista", "3:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)