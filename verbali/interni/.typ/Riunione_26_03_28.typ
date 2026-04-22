#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-28",
      "1.0.0",
      "Stesura verbale",
      members.martinello,
      members.kevin
    ),
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.martinello,
      #members.berengan #v(0.3cm)]
  ),

  assenze: [
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Aggiornamento sui progressi dei diagrammi C3 e C4"
    #let punto2 = "Avanzamento codice e procedure Git"
    #let punto3 = "Discussione documento di Specifica Tecnica"
    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "9:50"
    #let dataRiunione = "28 Marzo"
    #let orarioFineRiunione = "11:50"
    #let presidenteRiunione = members.martinello

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno presentato e discusso l'avanzamento relativo ai diagrammi di livello C3 e C4.",
      decisione: "Si è deciso di procedere con la finalizzazione dei diagrammi architetturali, assicurando la pulizia degli artefatti grafici e l'allineamento dei nomi dei componenti all'Ubiquitous Language stabilito nel glossario.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I membri del team hanno mostrato l'avanzamento lato codice (progettazione e sviluppo). Inoltre è stata fornita a tutti una spiegazione dettagliata su come procedere correttamente con le operazioni di push e pull per il repository condiviso.",
      decisione: "È stata approvata l'adozione degli standard Git per le operazioni sui branch, recependo tali direttive nelle Norme di Progetto. Contestualmente è stato confermato l'avvio dello sviluppo dei servizi core di autenticazione, dei relativi test e dell'interazione con il database.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Si è dato il via alla discussione per la stesura del documento di Specifica Tecnica. Per quanto riguarda i diagrammi delle classi, si è deciso di optare per una versione che mostri il nome della classe, le responsabilità principali/uso e le operazioni, per spiegarne il significato all'interno dell'infrastruttura.",
      decisione: "È stata definita la rappresentazione UML compatta per le classi in ST; si è quindi stabilito di revisionare gli errori nei link ai componenti e di integrare le nuove sezioni relative ai command applicativi e all'architettura di deployment.",
    )

    = Azioni e responsabilità
    #task_table((
      ("Aggiornamento NdP: recepimento delle direttive di codifica", "Amministratore", "1:00"),
      ("Aggiornamento PdQ: correzione delle metriche di testing e consolidamento", "Amministratore", "0:45"),
      ("Stesura Glossario v1.1.0 e aggiornamento del sito web per la PB", "Amministratore", "0:30"),
      ("Revisione ST: correzione degli errori e dei collegamenti ai componenti", "Progettista", "3:00"),
      ("Stesura ST: introduzione e definizione dei command applicativi", "Progettista", "3:00"),
      ("Stesura ST: definizione dell'architettura di deployment", "Progettista", "3:30"),
      ("Progettazione in ST: Value Object per il microservizio Account", "Progettista", "3:00"),
      ("Ristrutturazione logica dei Sub-Application Services", "Progettista", "2:30"),
      ("Progettazione dell'Helper Service per i mapper e definizione confini StartAnalysis", "Progettista", "3:00"),
      ("Revisione artefatti architetturali per allineamento all'Ubiquitous Language", "Progettista", "4:00"),
      
      ("Sviluppo delle entità User e GitHub Token con relativi test", "Programmatore", "3:00"),
      ("Implementazione del Value Object PasswordHash e relativi test", "Programmatore", "1:00"),
      ("Sviluppo di DTO, porte e factory per l'integrazione GitHub con test", "Programmatore", "2:30"),
      ("Implementazione dei casi d'uso per i servizi GitHub e relativi test", "Programmatore", "2:30"),
      ("Sviluppo servizi di autenticazione JWT e BCrypt con risoluzione errori di linting", "Programmatore", "2:30"),
      ("Implementazione del servizio di registrazione e correzione adapter PostgreSQL", "Programmatore", "3:30"),
      ("Sviluppo dei servizi di login/registrazione e configurazione ambiente Docker", "Programmatore", "2:00"),
      ("Implementazione del servizio e del controller di eliminazione con test", "Programmatore", "3:30"),
      ("Sviluppo componenti di richiesta Git, mapper e comando StartAnalysis con test", "Programmatore", "3:00"),
      ("Implementazione del modello credenziali e del Value Object PAT Password", "Programmatore", "1:30"),
      ("Sviluppo adapter MongoDB, scrittura credenziali GitHub e correzioni ai pacchetti", "Programmatore", "5:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)
