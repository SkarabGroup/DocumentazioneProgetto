#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-01-17",
      "1.0.0",
      "Prima stesura del documento",
      members.kevin,
      members.andrea
    ),
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.berengan,
      #members.martinello]
  ),

  assenze: [],

  [

    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione stato di avanzamento della redazione e della verifica dei documenti per la RTB"
    #let punto2 = "Retrospettiva sprint 2 e discrepanze nell'impegno orario tra membri del team"
    #let punto3 = "Pianificazione per lo sviluppo del Proof of Concept (PoC)"
    #let punto4 = "Valutazione dei costi orari per le risorse umane coinvolte nel progetto"
    #let punto5 = "Azioni per migliorare la gestione del progetto e l'efficienza del team"
    + #punto1.
    + #punto2.
    + #punto3.
    + #punto4.
    + #punto5.
    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:00"//...
    #let dataRiunione = "17 Gennaio"
    #let orarioFineRiunione = "12:30" //...
    #let presidenteRiunione = members.kevin //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Un componente per ogni sottoteam ha esposto lo stato di avanzamento del proprio lavoro riguardo alle attività di redazione e verifica della documentazione per la RTB. La redazione dell'Analisi dei Requisiti procede con un ritmo inferiore rispetto a quanto pianificato, mentre PdP, PdQ e NdP risultano in fase di verifica. In seguito Zago Alice, ha mostrato al team i grafici per il PdQ",
      decisione: "Il team ha deciso che PdP, PdQ e NdP necessitino solo di verifica. I grafici del PdQ sono stati approvati. Il team ha pianificato un ulteriore approfondimento dell'AdR durante il prossimo sprint",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "È stata condotta una retrospettiva sullo sprint 2, con particolare attenzione alle discrepanze nell'impegno orario tra i membri del team. In particolare si é discusso di come i membri singoli Basso Kevin e Suar Alberto abbiano dedicato un numero di ore significativamente superiore rispetto agli altri membri del team.",
      decisione: "Sono state diminuite le ore di effettivo lavoro produttivo da parte di questi membri, mentre quelle di Basso Kevin e Alberto Suar sono state mantenute in quanto ritenute adeguate al lavoro svolto dal momento in cui la fase di verifica si é rivelata, in realtá, ri-stesura quasi completa dei documenti.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "In previsione della candidatura per la RTB, è stata discussa la necessità di avviare lo sviluppo del Proof of Concept (PoC).",
      decisione: "Ë stato deciso che verrá sviluppato l'agente per lo spell checking come PoC, quindi gestiione di orchestratore, agente spell checking, DB e interfaccia utente. Alcuni membri del gruppo si focalizzeranno sull'implementazione del PoC mentre altri si dedicheranno alla finalizzazione e alla verifica dei documenti restanti.",
    )

    === Punto 4: #punto4
    #puntoOdg(
      punto4, 
      "È stata discussa la necessità di modificare i costi orari delle risorse umane coinvolte nel progetto, al fine di predisporre un preventivo accurato per la RTB.",
      decisione: "Si è deciso aumentare le ore di Amministratore e Analista per riflettere meglio il lavoro svolto in queste aree. Le modifiche saranno implementate nel documento di Piano di Progetto.",
    )

   
    
    
    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Gestione GitHub actions",
        members.suar + ", " + members.kevin,
        "2026/01/24",
        "Da iniziare",
      ),
      (
        "Inizio sviluppo PoC",
        members.kevin + ", " + members.suar + ", " + members.berengan,
        "2026/01/24",
        "Da iniziare",
      ),
      (
        "Verifica PdP,PdQ,NdP",
        members.alice + ", " + members.martinello,
        "2026/01/24",
        "Da iniziare",
      ),
      (
        "Redazione AdR",
        members.alice + ", " + members.antonio + ", " + members.andrea + ", " + members.martinello,
        "2026/01/24",
        "In avanzamento",
      )
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],

)
