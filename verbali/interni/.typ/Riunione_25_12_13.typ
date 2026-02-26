#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2025-12-13",
      "1.0.0",
      "Verifica verbale",
      "",
      members.suar,
    ),
    (
      "2025-12-13",
      "0.1.0",
      "Prima stesura del documento",
      members.antonio,
      members.suar
    )
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.martinello,
      #members.antonio,
      #members.alice,
      #members.berengan, #v(0.3cm)]
  ),

  assenze: (
    [#members.andrea]
  ),

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Pianificazione obiettivi a breve termine"
    #let punto2 = "Avanzamento analisi casi d'uso e requisiti"
    #let punto3 = "Ottimizzazione gestione riunioni interne"
    
    + #punto1
    + #punto2
    + #punto3

    = Svolgimento Riunione
    #let orarioInizioRiunione = "09:45"
    #let dataRiunione = "13 Dicembre"
    #let orarioFineRiunione = "12:50"
    #let presidenteRiunione = members.suar

    == Apertura
    La riunione, svolta in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il gruppo ha discusso la timeline per le prossime settimane, focalizzandosi sulle sessioni di formazione tecnologica rimanenti e sulla chiusura dei requisiti entro fine anno.",
      decisione: "Il team fisserà un incontro con VarGroup per la settimana prossima e punterà a completare l'Analisi dei Requisiti per organizzare un confronto con il Prof. Cardin a inizio gennaio.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Ampio spazio è stato dedicato all'esposizione del lavoro svolto:
      - Backend: Approfondimento su autenticazione (Amazon Cognito), gestione repository e flussi di esecuzione. Confermata l'efficacia di MongoDB per la struttura JSON dei report. Scartata la funzionalità di gestione nuove analisi sullo stesso report per l'orchestratore.
      - Frontend: Analisi dei ruoli utente, storico analisi e gestione remediation (interattive e suggerimenti). Martinello ha presentato i mockup in Figma per visualizzare l'interfaccia.",
      decisione: "I feedback ricevuti sui mockup e sulle analisi dei flussi fungeranno da base per l'avvio della stesura ufficiale dei documenti di analisi.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Berengan ha proposto una modifica strutturale alle riunioni per ottimizzare le tempistiche e la chiarezza dell'esposizione.",
      decisione: "Le domande e le discussioni aperte verranno posticipate alla fine di ogni sessione, permettendo a ciascun membro di completare l'esposizione dei propri progressi senza interruzioni.",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Definizione template ufficiale UC e approfondimento analisi",
        members.suar,
        "2025/12/19",
      ),
      (
        "Analisi struttura report e requisiti collegati",
        members.berengan,
        "2025/12/19",
      ),
      (
        "Studio gestione memoria agenti e approfondimento UC",
        members.kevin,
        "2025/12/19",
      ),
      (
        "Studio funzionamento agenti e approfondimento UC",
        members.alice,
        "2025/12/19",
      ),
      (
        "Redazione verbale interno e approfondimento UC",
        members.antonio,
        "2025/12/19",
      ),
      (
        "Aggiornamento modello Figma con feedback emersi",
        members.martinello,
        "2025/12/19",
      ),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],
)