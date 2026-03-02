#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-02-28",
      "1.0.0",
      "Approvazione verbale",
      "",
      members.suar
    ),
    (
      "2026-02-28",
      "0.1.0",
      "Prima stesura del documento",
      members.berengan,
      members.suar
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
    #let punto1 = "Discussione sul lavoro svolto e sul lavoro rimanente"
    #let punto2 = "Discussione sulla preparazione alla revisione dell'Analisi dei Requisiti"
    #let punto3 = "Discussione in merito all'organizzazione del team in vista della Product Baseline"
    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "9:45"
    #let dataRiunione = "28 Febbraio"
    #let orarioFineRiunione = "10:50"
    #let presidenteRiunione = members.berengan 

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno analizzato il lavoro svolto durante l'ultima settimana dello Sprint 4. È stata verificata la completezza della sezione dedicata ai test nel documento PdQ e la revisione finale delle NdP. Inoltre, è stata compilata collegialmente la sezione relativa allo Sprint 4 nel documento PdP.",
      decisione: "Assegnazione dei compiti finali per la chiusura della documentazione RTB e preparazione della discussione tecnica."
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "In riferimento alla discussione della documentazione con il Professor Vardanega, il team ha definito le modalità di esposizione ritenute più efficaci per dimostrare la solidità della Technology Baseline.",
      decisione: "Rilettura critica individuale di tutta la documentazione prodotta per garantire massima coerenza durante il colloquio."
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "In vista della Product Baseline (PB), il team ha discusso la transizione verso le attività di progettazione e l'organizzazione dei futuri ruoli, con particolare attenzione alla redazione della Specifica Tecnica.",
      decisione: "Individuazione dei membri incaricati di approfondire le future mansioni di progettazione architetturale."
    )

     = Azioni e responsabilità
    #task_table((
      ("Revisione e verifica del documento NdP", "Amministratore", "2:00"),
      ("Raccolta informazioni per la Specifica Tecnica", "Progettista", "16:00"),
      ("Strutturazione del documento Specifica Tecnica", "Progettista", "16:00"),
      ("Inizio fase di progettazione architetturale", "Progettista", "16:00"),
      ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile", "7:00"),
      ("Verifica del documento PdQ (Metriche e Test)", "Amministratore", "2:00"),
      ("Preparazione delle slide per la presentazione con il Professor Vardanega", "Responsabile", "3:00")
    ))
    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)