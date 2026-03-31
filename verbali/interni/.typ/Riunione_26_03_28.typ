#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-28",
      "0.1.0",
      "Prima stesura del documento",
      members.martinello,
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
      decisione: "Approvare lo stato di avanzamento e procedere verso la finalizzazione dei diagrammi.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I membri del team hanno mostrato l'avanzamento lato codice (progettazione e sviluppo). Inoltre è stata fornita a tutti una spiegazione dettagliata su come procedere correttamente con le operazioni di push e pull per il repository condiviso.",
      decisione: "Adottare lo standard condiviso per le operazioni su Git per evitare conflitti.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Si è dato il via alla discussione per la stesura del documento di Specifica Tecnica. Per quanto riguarda i diagrammi delle classi, si è deciso di optare per una versione che mostri il nome della classe, le responsabilità principali/uso e le operazioni, per spiegarne il significato all'interno dell'infrastruttura.",
      decisione: "I diagrammi UML nella Specifica Tecnica conterranno una versione compatta delle classi.",
    )

    = Azioni e responsabilità
    #task_table((
      ("Sviluppo microservizio analisi", "Programmatore", "8:00"),
      ("Sviluppo frontend", "Programmatore", "8:00"),
      ("Sviluppo microservizio agenti", "Programmatore", "8:00"),
      ("Sviluppo microservizio autenticazione", "Programmatore", "8:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)
