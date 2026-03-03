#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2025-12-06",
      "1.0.0",
      "Verifica verbale",
      "",
      members.alice
    ),
    (
      "2025-12-06",
      "0.1.0",
      "Prima stesura del documento",
      members.suar,
      members.alice,
    ),
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.andrea,
      #members.martinello,
      #members.antonio,
      #members.alice,
      #members.berengan, #v(0.3cm)]
  ),

  assenze: (
    []
  ),

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione sessioni di formazione con VarGroup"
    #let punto2 = "Esposizione casi d'uso e requisiti emersi (FE/BE)"
    #let punto3 = "Analisi del rendimento e della comunicazione interna"
    
    + #punto1
    + #punto2
    + #punto3

    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:45"
    #let dataRiunione = "06 Dicembre"
    #let orarioFineRiunione = "13:00"
    #let presidenteRiunione = members.suar

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "A causa di sovrapposizioni con l'orario delle lezioni universitarie, le sessioni di formazione previste per il 09/12 e il 16/12 presso la sede di VarGroup sono state temporaneamente sospese.",
      decisione: "Il team rimane in attesa di nuove proposte dall'azienda per rischedulare gli incontri, garantendo la massima disponibilità per le nuove date.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I sottogruppi hanno presentato i workflow definiti:
      - **Backend**: Analisi incentrata sull'Orchestratore, validazione repository tramite hash commit e logica di analisi incrementale (diff tra commit).
      - **Frontend**: Focus su UX, gestione login, dashboard e visualizzazione strutturata dei report (Qualità, Sicurezza OWASP, Coerenza documentazione).",
      decisione: "Le linee guida emerse vengono approvate come base solida per la definizione dei requisiti di dettaglio e per lo sviluppo del PoC.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "È stata evidenziata una criticità nel rendimento e nella partecipazione attiva durante le sessioni infrasettimanali, con una comunicazione scarsa.",
      decisione: "Il team stabilisce un nuovo protocollo: ogni riunione del sabato prevederà un allineamento di 10 minuti per membro per esporre il lavoro svolto, con assegnazione di task individuali chiari.",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Analisi funzionamento orchestratore e comunicazione DB",
        members.suar,
        "2025/12/13",
      ),
      (
        "Definizione struttura JSON report e persistenza MongoDB",
        members.berengan,
        "2025/12/13",
      ),
      (
        "Gestione logica nuove analisi su report esistenti",
        members.kevin,
        "2025/12/13",
      ),
      (
        "Progettazione UX e flussi interfaccia",
        members.alice + " " + members.antonio,
        "2025/12/13",
      ),
      (
        "Strutturazione modello Figma per mockup frontend",
        members.martinello,
        "2025/12/13",
      ),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],
)
