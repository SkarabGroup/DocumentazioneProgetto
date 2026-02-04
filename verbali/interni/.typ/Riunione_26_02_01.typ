#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-02-03",
      "1.0.0",
      "Prima stesura del documento",
      members.antonio
    ),
  ),

  presenti: (
    [#members.suar,
     #members.alice,
     #members.antonio,
     #members.andrea,
     #members.martinello]
  ),

  assenze: (
    [#members.kevin,
     #members.berengan
   ]
  ),

  [

    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione sul lavoro svolto riguardo il Proof of Concept (PoC) e la redazione dei documenti e la loro verifica in vista per la RTB"
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
      decisione: "Sono stati discussi i punti cruciali, in modo da essere allineati per il lavoro a seguire",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I membri hanno discusso su cosa fosse necessario porre attenzione e migliorare allo scopo di arrivare pronti per la RTB",
      decisione: "È stato deciso di focalizzarsi sulla redazione dell'AdR revisionando diagrammi, casi d'uso, requisiti e argomentazione delle tecnologie scelte; continuare lo sviluppo del PoC su aspetti di backend, fronted, agenti, server, database; ed eseguire una verifica finale di PdP, NdP e PdQ, implementando procedure adottate mancanti",
    )
    
    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Continuamento dello sviluppo PoC",
        members.kevin + ", " + members.suar + ", " + members.berengan + ", " + members.martinello,
        "2026/02/09",
        "In avanzamento",
      ),
      (
        "Modifiche e revisione NdP, PdP, PdQ",
        members.andrea + ", " + members.andrea + ", " + members.suar + ", " + members.kevin + ", " + members.alice,
        "2026/02/09",
        "In stato di rifinitura",
      ),
      (
        "Redazione e verifica AdR",
        members.antonio + ", " + members.andrea + ", " + members.berengan + ", " + members.alice,
        "2026/02/09",
        "In avanzamento",
      )
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],

)