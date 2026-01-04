#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"
#verbale(
  versioni: (
    (
      "2025-12-29",
      "1.0.0",
      "Prima stesura del documento",
      members.suar,
      members.alice,
    ),
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
    #let punto1 = "Discussione stato di avanzamento della redazione dei documenti per la RTB"
    #let punto2 = "Necessità di un incontro di allineamento con VarGroup e con il professor Cardin"
    + #punto1.
    + #punto2.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "09:45"//...
    #let dataRiunione = "29 Dicembre"
    #let orarioFineRiunione = "11:00" //...
    #let presidenteRiunione = members.suar //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il gruppo ha discusso dello stato di avanzamento dei documenti necessari per la RTB, dimostrandosi soddisfatto dell'attuale rendimento generale dei componenti del team. Sono stati posti quesiti rivolti a tutti in merito alla definizione di alcuni elementi per l'Analisi dei Requisiti, specialmente in relazione alla visualizzazione dei report analizzati.",
      decisione: "SkarabGroup si impegna a continuare con questo ritmo, in modo da poter svolgere una rotazione dei ruoli per una verifica collettiva, marcare come completati alcuni dei principali documenti e focalizzarsi sul PoC. Il team inoltre effettuerà delle Pull Requests sul branch develop una volta che verranno caricati nel branch di riferimento i contenuti essenziali del documento.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Il gruppo ha espresso la necessità di definire un incontro con l'azienda VarGroup in modo da avere un feedback sul lavoro svolto finora e per comprendere se le necessità dell'azienda sono soddisfatte. In aggiunta, SkarabGroup necessita di definire un incontro anche con il professor Cardin per poter comprendere se quanto fatto fino ad ora è coerente con le aspettative del docente per la valutazione della prima fase del progetto",
      decisione: "Al rientro dalle vacanze, il team si occuperà di comunicare ad entrambi i referenti la necessità di un incontro di allineamento",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Continuazione redazione AdR",
        members.suar + " " + members.kevin,
        "2026/01/03",
        "In avanzamento",
      ),
      (
        "Continuazione redazione NdP",
        members.martinello,
        "2026/01/03",
        "In avanzamento",
      ),
      (
        "Continuazione redazione PdP",
        members.antonio + " " + members.andrea,
        "2026/01/03",
        "In avanzamento",
      ),
      (
        "Continuazione redazione PdQ",
        members.alice + " " + members.berengan,
        "2026/01/03",
        "In avanzamento",
      ),
    ))
  ],
)
