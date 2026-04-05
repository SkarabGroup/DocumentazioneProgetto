#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-04-04",
      "0.1.0",
      "Prima stesura del documento",
      members.andrea,
    ),
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.martinello
      #v(0.4cm)]
  ),

  assenze: [
    #members.berengan
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Stato di avanzamento dei microservizi (Analisi e Account)"
    #let punto2 = "Definizione dei Value Object per report e responsabilità degli Adapter (mapping dati)"
    #let punto3 = "Avanzamento Frontend"
    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:11"
    #let dataRiunione = "4 Aprile"
    #let orarioFineRiunione = "11:07"
    #let presidenteRiunione = members.andrea

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Si è discusso dello stato attuale dei due microservizi, cosa manca da ultimare e le tempistiche previste per il completamento.",
      decisione: "Per il microservizio di analisi, la comunicazione per l'inizializzazione è a buon punto; mancano da ultimare gli use case per il recupero dei report, la logica finale di clonazione della repository e i test di integrazione con MongoDB. Per quanto riguarda il microservizio di amministrazione account, è necessario completare i controller per le fasi di login e registrazione, sistemare in via definitiva il Postgre Adapter per il database e integrare la gestione dei Personal Access Token (PAT) per le repository private.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Il team ha fatto il punto sui Value Object, dicendo che mancavano ancora quelli per la Code Coverage e per la Documentazione. È sorto inoltre un dubbio su dove e come convertire i valori eterogenei restituiti dai vari tool (ad esempio, le scale di severità degli errori).",
      decisione: "Si è deciso per ragioni architetturali che la conversione e la standardizzazione dei dati non devono avvenire nell'Application Service. Sarà responsabilità esclusiva dell'Adapter del singolo tool occuparsi di mappare la risposta nel formato di dominio.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Si è valutato l'avanzamento dei mockup della dashboard React e discusso di come scrivere la Specifica Tecnica per il Frontend.",
      decisione: "Il lavoro sul Frontend procederà affiancandosi allo sviluppo dei controller del backend. Per quanto riguarda la documentazione, si è deciso che i componenti grafici (es. bottoni o form) non verranno descritti nel dettaglio a livello di codice, ma verranno raggruppati in macro-componenti per spiegarne la logica costruttiva.",
    )

    = Azioni e responsabilità
    #task_table((
      ("Completamento Use Case recupero report e test integrazione MongoDB", "Programmatore", "5:00"),
      ("Implementazione gestione credenziali tramite PAT per repository private", "Programmatore", "5:00"),
      ("Definizione e implementazione Value Object mancanti", "Programmatore", "7:00"),
      ("Sviluppo logica di mapping negli Adapter dei tool", "Progettista", "6:00"),
      ("Sviluppo controller Login/Registrazione e fix PostgreAdapter", "Programmatore", "6:00"),
      ("Sviluppo interfacce Frontend", "Programmatore", "5:00")
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)
