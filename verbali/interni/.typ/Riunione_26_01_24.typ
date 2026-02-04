#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-01-26",
      "1.0.0",
      "Prima stesura del documento",
      members.kevin,
    ),
  ),

  presenti: (
    [#members.suar,
     #members.alice,
     #members.antonio,
     #members.andrea,
     #members.kevin,
     #members.berengan,
     #members.martinello #v(0.3cm)]
  ),

  assenze: (
    [#members.suar,
   ]
  ),

  [

    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione sullo stato del lavoro svolto riguardo i vari documenti di progetto e sul Proof of Concept (PoC) dai vari membri"
    #let punto2 = "Discussioni difficoltá e rallentamenti dovuti alla sessione di esami universitari in corso"
    + #punto1.
    + #punto2.
    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:00"//...
    #let dataRiunione = "26 Gennaio"
    #let orarioFineRiunione = "11:12" //...
    #let presidenteRiunione = members.kevin //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Ogni componente ha esposto il proprio lavoro svolto durante la settimana, il PoC é in stato embrionale ma sta iniziando a prendere forma, i documenti PdP, NdP e PdQ sono in fase di revisione e l'AdR necessita di ulteriori modifiche",
      decisione: "Si é concordato che la suddivisione dei ruoliu é corretta e che il lavoro procede secondo le aspettative",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I membri hanno discusso le difficoltá incontrate a causa della sessione di esami universitari in corso, che ha rallentato il progresso del lavoro",
      decisione: "Si é notato l'effettivo rallentamento e si é stiamato lo stesso rallentamento per la settimana successiva. Questo porterá a meno lavoro svolto durante questo sprint, lavoro che andrá recuperato in seguito",
    )
    
    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Inizio sviluppo PoC",
        members.kevin + ", " + members.suar + ", " + members.berengan,
        "2026/01/24",
        "In avanzamento",
      ),
      (
        "Verifica PdP,PdQ,NdP",
        members.alice + ", " + members.martinello,
        "2026/01/24",
        "In avanzamento",
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