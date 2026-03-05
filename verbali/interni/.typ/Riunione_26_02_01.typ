#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-02-01",
      "1.0.0",
      "Verifica verbale",
      "",
      members.andrea
    ),
    (
      "2026-02-01",
      "0.1.0",
      "Prima stesura del documento",
      members.antonio,
      members.andrea
    ),
  ),

  presenti: (
    [#members.suar,
     #members.alice,
     #members.antonio,
     #members.andrea,
     #members.martinello #v(0.3cm)]
  ),

  assenze: (
    [#members.kevin,
     #members.berengan
   ]
  ),

  [

    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione sul lavoro svolto riguardo il Proof of Concept (PoC), la redazione dei documenti e la loro verifica in vista per la RTB"
    #let punto2 = "Pianificazione delle attività che seguiranno nel quarto sprint"
    + #punto1.
    + #punto2.
    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:10"//...
    #let dataRiunione = "1 Febbraio"
    #let orarioFineRiunione = "11:25" //...
    #let presidenteRiunione = members.suar //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Ogni componente ha esposto il proprio lavoro svolto durante la settimana, il PoC procede a buon ritmo, PdP, NdP e PdQ hanno quasi raggiunto una versione stabile per la RTB, l'AdR ha ancora bisogno di modifiche prima di essere pronto",
      decisione: "È stato approvato che PdP, NdP e PdQ sono prossimi alla versione stabile per la RTB, mentre l'AdR e PoC richiedono ulteriori modifiche prima della consegna",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I membri hanno discusso su cosa fosse necessario porre attenzione e migliorare allo scopo di arrivare pronti per la RTB",
      decisione: "È stato deciso di focalizzarsi sulla redazione dell'AdR revisionando diagrammi, casi d'uso, requisiti e argomentazione delle tecnologie scelte; continuare lo sviluppo del PoC su aspetti di backend, fronted, agenti, server, database; ed eseguire una verifica finale di PdP, NdP e PdQ, implementando procedure adottate mancanti",
    )
    
    = Azioni e responsabilità
    #task_table((
      ("Inserimento requisiti di qualità e di vincolo", "Analista", "1:30"),
      ("Inserimento della colonna della priorità dei requisiti", "Analista", "1:30"),
      ("Aggiunta UC mancanti con relativi diagrammi e requisiti", "Analista", "2:30"),
      ("Aggiunta dei diagrammi mancanti ai casi d'uso esistenti", "Analista", "2:00"),
      ("Link al glossario aggiornati in AdR", "Amministratore", "2:00"),
      ("Stesura verbale riunione prima settimana", "Responsabile", "1:00"),
      ("Verifica verbale riunione interna prima settimana", "Verificatore", "0:30"),
      ("Aggiunta task Jira", "Responsabile", "0:30"),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],

)