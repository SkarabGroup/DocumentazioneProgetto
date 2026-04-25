#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-04-04",
      "1.0.0",
      "Stesura verbale",
      members.andrea,
      members.kevin,
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
    #let punto4 = "Verifica PDCA: Efficacia Azioni Correttive su Comunicazione e Toolchain"
    + #punto1.
    + #punto2.
    + #punto3.
    + #punto4.

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
      "Si è discusso lo stato attuale dei due microservizi, definendo le attività necessarie per ultimare i flussi di comunicazione e persistenza.",
      decisione: "Si è stabilito di procedere con il completamento dei controller per l'autenticazione e la gestione dei Personal Access Token (PAT). Contestualmente, è stato approvato l'avvio dello sviluppo del servizio di clonazione delle repository e dell'integrazione con MongoDB, unitamente al rafforzamento della sicurezza tramite JWT. Tali attività operative sono state assegnate ai programmatori e dettagliate nella tabella sottostante.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Il team ha analizzato la necessità di standardizzare i dati restituiti dai vari tool di analisi attraverso i Value Object e gli Adapter dedicati.",
      decisione: "È stata approvata l'implementazione dei Value Object relativi a coverage, sicurezza e documentazione, delegando agli adapter (CodeAgentAdapter) la responsabilità del mapping dei dati. Da tale decisione scaturiscono i compiti di sviluppo delle entità dei report di analisi e dei servizi di orchestrazione degli agenti.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Si è valutato l'avanzamento dei mockup della dashboard React e discusso di come scrivere la Specifica Tecnica per il Frontend.",
      decisione: "Si è deciso di procedere con la documentazione in ST dei componenti del microservizio di analisi e la definizione dei pattern di autorizzazione (Strategy/Authorization). Queste scelte progettuali e la ristrutturazione dei servizi applicativi pongono le basi necessarie per il successivo sviluppo dell'interfaccia grafica.",
    )

    === Punto 4: #punto4
    #puntoOdg(
      punto4,
      "A distanza di alcuni sprint dalla loro implementazione, il team ha verificato l'impatto delle Azioni Correttive AM01 (Micro-allineamenti) e AM04 (Toolchain).\n- *Riscontro (Check)*: Dai dati del PdP si evince che le metriche di produttività (Schedule Performance Index) sono tornate in positivo (SPI ≥ 1). L'assenza di blocchi prolungati conferma l'efficacia degli allineamenti rapidi, mentre la costanza nell'uso degli strumenti ha azzerato l'overhead iniziale.",
      decisione: "- *Decisione (Act)*: Le pratiche introdotte vengono consolidate definitivamente come standard metodologico di Skarab Group. Non sono richieste ulteriori iterazioni di aggiustamento per questi due ambiti."
    )
#pagebreak()
    = Azioni e responsabilità
    #task_table((
      ("Specifica Tecnica: analisi e selezione degli strumenti per la sicurezza", "Progettista", "3:00"),
      ("Specifica Tecnica: definizione dei componenti per il microservizio di Analisi", "Progettista", "3:00"),
      ("Aggiornamento dei diagrammi PlantUML relativi ai Value Object per l'analisi del codice", "Progettista", "3:00"),
      ("Definizione dei pattern Strategy e Authorization per il modulo di analisi", "Progettista", "3:00"),
      ("Progettazione del flusso di clonazione repository e integrazione con MongoDB", "Progettista", "2:30"),
      ("Progettazione dei contratti di sessione e gestione delle eccezioni", "Progettista", "2:30"),

      ("Sviluppo dei Value Object per i risultati base (coverage, path, severity) con relativi test", "Programmatore", "3:30"),
      ("Sviluppo dei Value Object per i risultati estesi (file-coverage, dependency) con relativi test", "Programmatore", "3:00"),
      ("Sviluppo dei Value Object per la sicurezza (static-analysis, owasp, secrets) con relativi test", "Programmatore", "4:30"),
      ("Implementazione delle entità per i report di analisi (documentation e code report) con test d'unità", "Programmatore", "4:00"),
      ("Implementazione delle porte di salvataggio per i report di analisi con test d'unità", "Programmatore", "3:30"),
      ("Sviluppo del CodeAgentAdapter e della relativa porta di comunicazione", "Programmatore", "5:00"),
      ("Implementazione dell'OrchestratorService e configurazione iniziale della cartella agenti", "Programmatore", "3:00"),
      ("Sviluppo iniziale del Documentation Agent e ottimizzazione dell'adapter", "Programmatore", "4:00"),
      ("Implementazione del flusso completo per la gestione dei PAT: validatori e controller", "Programmatore", "4:30"),
      ("Sviluppo del servizio applicativo di clonazione, AnalysisController e integrazione MongoDB", "Programmatore", "4:00"),
      ("Rafforzamento della sicurezza: implementazione JWT Guard e gestione persistenza sessioni", "Programmatore", "4:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)