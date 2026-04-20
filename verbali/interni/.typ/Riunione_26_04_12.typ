#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-04-12",
      "0.1.0",
      "Prima stesura del documento",
      members.andrea,
      ""
    ),
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.martinello,
      #members.berengan
      #v(0.4cm)]
  ),

  assenze: [
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Stato di avanzamento dello sviluppo (Microservizi, Agenti, Frontend e Deployment AWS)"
    #let punto2 = "Pianificazione documentazione (ST, PdP, PdQ) e test"
    #let punto3 = "Definizione dei criteri di rendicontazione oraria e allineamento sui task"
    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "9:55"
    #let dataRiunione = "12 Aprile"
    #let orarioFineRiunione = "11:20"
    #let presidenteRiunione = members.andrea

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Si è fatto il punto sullo stato dello sviluppo dei vari componenti. Il microservizio Account può considerarsi concluso. Per il microservizio Analisi, i controller funzionano correttamente anche testati con repository private e relativi Personal Access Token. Riguardo agli Agenti, l'Agente Codice è a buon punto ma rileva problemi bloccanti legati ai limiti di token in output generati dai report di coverage. L'Agente Documentazione è concluso e necessita solo dell'implementazione del salvataggio nel database e adapter di risposta, mentre l'Agente Sicurezza è in fase di completamento. Il frontend è stato pushato su un branch dedicato e necessita di essere collegato agli endpoint del backend. Infine, il deployment su AWS (AppRunner, RDS, ECS) è in corso e presenta alcune complessità legate alla comunicazione dei servizi sulla stessa rete.",
      decisione: "È prioritario risolvere i problemi di limite token per l'Agente Codice, valutando l'accantonamento temporaneo della code coverage se necessario. Si dovrà inoltre concludere il deployment dell'infrastruttura AWS e collegare le interfacce frontend agli endpoint.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Si è valutato lo stato di completamento della documentazione in vista della Product Baseline. La Specifica Tecnica (ST) relativa all'Account è terminata, ma risultano parzialmente mancanti i diagrammi delle classi per gli agenti e la relativa architettura. Sono da redigere o aggiornare le sezioni del Manuale Utente e del Piano di Qualifica (PdQ). Infine, si è discusso di come strutturare e mappare documentale i test di sistema e di integrazione.",
      decisione: "Ogni membro del team dovrà aggiornare la Specifica Tecnica per i componenti di cui si è occupato, caricando i relativi diagrammi UML. Verrà generata una mappatura dei test da inserire nel PdQ, mentre la stesura del Manuale Utente sarà posticipata a quando il sistema sarà del tutto stabile.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Il team ha discusso i criteri metodologici per la corretta rendicontazione delle ore di lavoro, ponendo l'accento sulla differenza tra ore di studio preliminare (cosiddetta 'palestra') e ore effettivamente produttive. È emersa la necessità di standardizzare la misurazione dell'effort per evitare discrepanze nelle metriche tra i vari membri del team.",
      decisione: "Si è stabilito in via definitiva che verranno considerate come 'ore produttive' rendicontabili esclusivamente le attività che portano a un caricamento effettivo (push) sulla repository o sui documenti ufficiali di progetto. Alla luce di questo chiarimento metodologico, il team ha effettuato un riallineamento dei carichi di lavoro per lo Sprint 9, riassegnando alcune attività critiche di sviluppo per garantire il rispetto delle tempistiche della Product Baseline.",
    )

    = Azioni e responsabilità
    #task_table((
      ("Completamento Agente Codice, risoluzione limiti token e adapter", "Programmatore", "8:00"),
      ("Completamento Agente Sicurezza e adapter", "Programmatore", "8:00"),
      ("Completamento Agente Documentazione e adapter", "Programmatore", "8:00"),
      ("Configurazione e deployment infrastruttura AWS (AppRunner, RDS)", "Programmatore", "6:00"),
      ("Collegamento interfacce Frontend agli endpoint backend", "Programmatore", "5:00"),
      ("Mappatura test di sistema e integrazione nel PdQ", "Amministratore", "4:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)
