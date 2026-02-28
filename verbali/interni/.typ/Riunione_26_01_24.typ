#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-01-24",
      "1.0.0",
      "Verifica verbale",
      "",
      members.antonio
    ),
    (
      "2026-01-24",
      "0.1.0",
      "Prima stesura del documento",
      members.kevin,
      members.antonio
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
      "Ogni componente ha esposto il proprio lavoro svolto durante la settimana, il PoC è in stato embrionale ma sta iniziando a prendere forma, i documenti PdP, NdP e PdQ sono in fase di revisione e l'AdR necessita di ulteriori modifiche",
      decisione: "Si è concordato che la suddivisione dei ruoli è corretta e che il lavoro procede secondo le aspettative. Si vuole continuare il lavoro allo stesso modo",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I membri hanno discusso le difficoltà incontrate a causa della sessione di esami universitari in corso, che ha rallentato il progresso del lavoro",
      decisione: "È stato notato l'effettivo rallentamento e si è stimato lo stesso rallentamento per la settimana successiva. Questo porterá a meno lavoro svolto durante questo sprint, lavoro che andrà recuperato in seguito",
    )
    
    = Azioni e responsabilità
    #task_table((
      ("Orchestrator PoC", "Programmatore", "2:00"),
      ("SpellChecker PoC", "Programmatore", "1:30"),
      ("Creazione repo mock PoC", "Programmatore", "0:30"),
      ("Parte Database PoC", "Programmatore", "4:00"),
      ("Parte Server PoC", "Programmatore", "4:00"),
      ("Verifica PoC", "Verificatore", "4:00"),
      ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile", "4:30"),
      ("Stesura diario di bordo", "Responsabile", "0:30"),
      ("Aggiunta task Jira", "Responsabile", "0:30"),
      ("Stesura verbale riunione seconda settimana", "Responsabile", "1:00"),
      ("Verifica verbale riunione interna seconda settimana", "Verificatore", "0:15"),
      ("Verifica AdR", "Verificatore", "1:00"),
      ("Verifica PdP", "Verificatore", "1:00"),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],

)