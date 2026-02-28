#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2025-11-29",
      "1.0.0",
      "Verifica verbale",
      "",
      members.alice,
    ),
    (
      "2025-11-29",
      "0.1.0",
      "Prima stesura del documento",  
      members.suar,
      members.alice
    )
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.berengan, #v(0.3cm)]
  ),

  assenze: (
    [#members.martinello]
  ),

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Organizzazione operativa e gestione requisiti/casi d'uso"
    #let punto2 = "Individuazione linguaggi di programmazione target"
    #let punto3 = "Definizione tipologia di soluzione (Webapp vs Tool)"
    #let punto4 = "Configurazione nuove repository di progetto"
    
    + #punto1
    + #punto2
    + #punto3
    + #punto4

    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:00"
    #let dataRiunione = "29 Novembre"
    #let orarioFineRiunione = "11:30"
    #let presidenteRiunione = members.suar

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il team ha discusso la necessità di un contatto costante e di una suddivisione dei compiti più granulare (day-by-day) per monitorare l'avanzamento su requisiti e casi d'uso. È stata sottolineata l'importanza dell'uso di Slack per la comunicazione esterna.",
      decisione: "Vengono formati piccoli gruppi divisi tra frontend e backend per la stesura dei casi d'uso. Per le prossime due settimane il focus sarà esclusivamente su analisi e requisiti, posticipando la scelta delle tecnologie specifiche.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Basandosi sul report GitHub Octoverse 2025, è stata valutata la copertura dei linguaggi per i tool di analisi.",
      decisione: "Il gruppo stabilisce come obiettivo la copertura dei primi 5 linguaggi della classifica: TypeScript, Python, JavaScript, Java e C#.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "A seguito della sessione di design thinking, è stata valutata l'architettura della soluzione.",
      decisione: "Si procederà con lo sviluppo di una Webapp con dashboard dedicate. L'integrazione con GitHub Actions sarà considerata solo come step futuro opzionale.",
    )

    === Punto 4: #punto4
    #puntoOdg(
      punto4,
      "Necessità di riorganizzare gli spazi di lavoro su GitHub per separare il codice dalla documentazione di gestione.",
      decisione: "Creazione della repository 'CodeGuardian' per codice e documentazione tecnica, mantenendo 'DocumentazioneProgetto' per i verbali e il diario di bordo.",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Creazione documento collaborativo per requisiti e casi d'uso",
        members.suar,
        "2025/12/06",
      ),
      (
        "Analisi requisiti e casi d'uso lato Frontend",
        members.alice + " " + members.berengan,
        "2025/12/06",
      ),
      (
        "Analisi requisiti e casi d'uso lato Backend",
        members.antonio + " " + members.andrea,
        "2025/12/06",
      ),
      (
        "Setup repository CodeGuardian e migrazione schemi",
        members.kevin,
        "2025/12/06",
      ),
      (
        "Verifica ricezione inviti Slack per tutto il team",
        members.suar,
        "2025/12/06",
      ),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],
)
