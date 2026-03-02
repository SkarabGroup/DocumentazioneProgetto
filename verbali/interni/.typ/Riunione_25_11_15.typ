#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ": *
#import "../../../lib/variables.typ": *

#verbale(
  versioni: (
    ("2025-11-15", "1.0.0", "Verifica verbale", "", "Sandu Antonio"),
    ("2025-11-15", "0.1.0", "Prima stesura del documento", "Suar Alberto", "Sandu Antonio")
  ),

  presenti: [
    #members.suar,
    #members.kevin,
    #members.andrea,
    #members.alice,
    #members.berengan,
    #members.antonio
    #v(1em)
  ],
  
  assenze: [
    #members.martinello
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Generatore automatico di documenti"
    #let punto2 = "Diario di Bordo"
    #let punto3 = "Analisi delle tecnologie proposte dalla azienda"

    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "09:55"//...
    #let orarioFineRiunione = "11:05" //...
    #let presidenteRiunione = members.suar //...
    #let dataRiunione = "15 Novembre 2025"
    == Apertura
    La riunione, svolta in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il team necessita di un generatore automatico di documenti per velocizzare le tempistiche di stesura dei documenti e limitare il più possibile il tempo produttivo da rendicontare per il ruolo di Responsabile, in quanto figura chiamante della stesura dei documenti",
      decisione: [Suar Alberto si occuperà di definire un generatore di documenti automatico e di renderlo disponibile a tutti i membri del gruppo],
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Emersa la necessità di definire il diario di bordo per il 2025-11-17.",
      decisione: "Antonio Sandu si occuperà della stesura del diario di bordo.",
    )

    === Punto 3 : #punto3
    #puntoOdg(
      punto3,
      "Ogni componente del gruppo ha svolto autonomamente una prima sessione di analisi delle tecnologie proposte dalla azienda proponente, focalizzandosi sul definire i pregi e i difetti di ognuna e delle possibili alternative da presentare alla proponente",
      decisione: "Il team si impegna a continuare questa analisi, cercando di spostare l'attenzione su esercizi di potenziamento per comprendere meglio le tecnologie proposte e stabilire delle strutture predefinite per salvare i link e le note relative ad ogni argomento"
    )
    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Definizione dei template",
        members.berengan + " | " + members.suar,
        "2025-11-21",
      ),
      (
        "Analisi delle tecnologie",
        "Tutti i membri",
        "2025-11-21",
      ),
      (
        "Redazione DbB",
        members.antonio,
        "2025-11-21"
      ),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],
)