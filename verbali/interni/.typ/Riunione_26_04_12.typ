#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-04-12",
      "1.0.0",
      "Stesura verbale",
      members.andrea,
      members.antonio,
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
    #let punto4 = "Definizione dell'architettura dei dati e della persistenza dei report"
    + #punto1.
    + #punto2.
    + #punto3.
    + #punto4.

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
      "Si è fatto il punto sullo stato dello sviluppo, rilevando il completamento del microservizio Account e le criticità residue per gli Agenti e il deployment AWS.",
      decisione: "È stato stabilito di concentrare l'impegno tecnico sul completamento degli endpoint di recupero analisi e sulla persistenza dei report. Da tale decisione scaturiscono le attività di progettazione dei DTO, la rifinitura del servizio Orchestrator per il salvataggio dei dati e l'implementazione delle funzionalità di ricerca (getAnalysis e getAll), dettagliate nella tabella sottostante.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Si è valutato lo stato della documentazione in vista della Product Baseline, con particolare attenzione alla Specifica Tecnica e al Piano di Qualifica.",
      decisione: "Ogni membro del team dovrà aggiornare la Specifica Tecnica per i componenti di cui si è occupato, caricando i relativi diagrammi UML. Verrà generata una mappatura dei test da inserire nel PdQ, mentre la stesura del Manuale Utente sarà posticipata a quando il sistema sarà del tutto stabile.",
    )

   === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "È stata definita la metodologia per la rendicontazione delle ore produttive e verificata la coerenza degli artefatti in vista della Product Baseline.",
      decisione: "A seguito del riallineamento dei carichi di lavoro, è stata approvata una revisione strutturale della documentazione ufficiale per rimuovere i contenuti obsoleti e garantire la pulizia dei testi. Il team ha inoltre stabilito di considerare rendicontabili solo le attività che producono un avanzamento verificabile sui documenti o sul codice di progetto.",
    )

    === Punto 4: #punto4
    #puntoOdg(
      punto4,
      "Il team ha discusso la struttura tecnica necessaria per garantire la corretta memorizzazione e il recupero dei report generati dagli agenti.",
      decisione: "Si è deciso di procedere con la revisione dello schema dei code-report e con la definizione puntuale del mapping tra le entità di dominio e i modelli di persistenza. Tale modellazione include la creazione del modello save-code-report e lo sviluppo della logica di salvataggio nell'adapter MongoDB, corredata dai necessari test di integrazione.",
    )

    = Azioni e responsabilità
    #task_table((
      ("Manutenzione della documentazione: revisione dei contenuti e rimozione delle sezioni obsolete", "Amministratore", "2:00"),
      ("Progettazione dei contratti getAnalysis e getAll e definizione della struttura dei DTO di risposta", "Progettista", "1:30"),
      ("Revisione dello schema per i code-report e definizione del mapping tra entità e modelli", "Progettista", "2:00"),
      ("Ottimizzazione del servizio Orchestrator per l'integrazione della porta di salvataggio dei codici", "Progettista", "1:30"),
      ("Sviluppo iniziale della funzionalità di recupero analisi (getAnalysis)", "Programmatore", "3:00"),
      ("Implementazione dell'endpoint GET filtrato per identificativo di analisi", "Programmatore", "2:30"),
      ("Sviluppo della funzionalità di recupero globale delle analisi (getAll)", "Programmatore", "3:00"),
      ("Integrazione della porta di salvataggio codice all'interno del servizio Orchestrator", "Programmatore", "2:00"),
      ("Definizione del modello save-code-report e correzione dell'entità per i report degli agenti", "Programmatore", "2:30"),
      ("Implementazione della logica di salvataggio report nell'adapter MongoDB e relativi test d'integrazione", "Programmatore", "2:00"),
      ("Aggiornamento PdQ", "Amministratore", "2:30"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)
