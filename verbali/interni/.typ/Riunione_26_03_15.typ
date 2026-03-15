#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-15",
      "0.1.0",
      "Prima stesura del documento",
      members.martinello,
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
      decisione: "Proseguire con analisi dettagliata e sessioni di sincronizzazione dedicate all'architettura del prodotto."
    )
    
    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Sono state riviste le modalità operative per la PB e l'assegnazione delle task settimanali.",
      decisione: "Aumentare la periodicità delle riunioni di coordinamento nella prima fase della PB e chiarire le assegnazioni."
    )
    
    = Azioni e responsabilità
    #task_table((
      ("Completare l'analisi dei tool mancanti e redigere la loro documentazione", "Progettista", "6:00"),
      ("Studi sull'implementazione e configurazione OAuth", "Progettista", "2:00"),
      ("Completamento del componente C3 e relative integrazioni interne", "Progettista", "3:00"),
      ("Spacchettamento del repository e definizione della strategia di persistenza", "Progettista", "3:00"),
      ("Definire gateway e porte di ingresso per l'architettura esagonale", "Progettista", "2:00"),
      ("Verifica del meccanismo di zipping e del flusso dati di ritorno", "Progettista", "2:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)