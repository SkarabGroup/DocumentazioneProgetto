#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-08",
      "0.1.0",
      "Prima stesura del documento",
      members.berengan,
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
    #let punto1 = "Discussione in merito al documento Specifica Tecnica (ST) e progettazione"
    #let punto2 = "Discussione sulle modalità di lavoro per procedere con la PB"
    + #punto1.
    + #punto2.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "14:00"
    #let dataRiunione = "08 Marzo"
    #let orarioFineRiunione = "15:10"
    #let presidenteRiunione = members.berengan 

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno discusso in merito al documento Specifica Tecnica, ognuno ha riportato agli altri membri le conoscenze acquisite durante lo studio individuale. Inoltre è stata discussa la progettazione, decidendo le priorità sul lavoro da svolgere.",
      decisione: "Sono state assegnate delle ore di studio individuale ed è stata indivudata la necessità di delle sessioni di brainstorming collettivo relative all'architettura del prodotto."
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Sono state discusse le modalità di lavoro, in particolare la modifica di comportamenti che si sono rivelati dannosi ed hanno rallentato il lavoro del team durante la RTB",
      decisione: "Assegnazione immediata e chiara delle task settimanali unita ad una maggior periodicità delle riunioni nella prima parte della PB. Ciò serve ad adottare un metodo di lavoro incrementale, evitando iterazioni inutili e costose"
    )

     = Azioni e responsabilità
    #task_table((
      ("Modfica del documento AdR in conformità con le correzioni proposte dal docente Cardin", "Analista", "2:00"),
      ("Modifica della definizione di verificatore nel documneto NdP", "Analista", "1:00"),
      ("Verifica delle modfiche ai documenti AdR e Ndp", "Verificatore", "2:00"),
      ("Scrittura della sezione dei microsevizi per agenti LLM in ST", "Progettista", "2:00"),
      ("Scrittura della sezione dei microsevizi per backend in ST", "Progettista", "2:00"),
      ("Scrittura della sezione dei microsevizi per persistenza in ST", "Progettista", "2:00"),
    ))
    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)