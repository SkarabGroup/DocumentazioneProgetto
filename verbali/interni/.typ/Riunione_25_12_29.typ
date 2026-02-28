#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"
#verbale(
  versioni: (
    (
      "2025-12-29",
      "1.0.0",
      "Verifica verbale",
      " ",
      members.alice,
    ),
    (
      "2025-12-29",
      "0.1.0",
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
    #task_table((
      ("Stesura sezione gestione rischi PdP", "Amministratore", "1:00"),
      ("Stesura introduzione analisi dei rischi", "Amministratore", "1:30"),
      ("Aggiunta primi rischi PdP", "Amministratore", "1:00"),
      ("Stesura sezione pianificazione PdP", "Amministratore", "1:00"),
      ("Stesura sezione processi primari PdQ", "Amministratore", "1:30"),
      ("Stesura sezione processi secondari PdQ", "Amministratore", "1:30"),
      ("Stesura sezione processi organizzativi PdQ", "Amministratore", "1:00"),
      ("Stesura sezione qualitá di prodotto PdQ", "Amministratore", "1:00"),
      ("Stesura sezione automiglioramento PdQ", "Amministratore", "1:00"),
      ("Stesura caratteristiche degli utenti", "Analista", "1:00"),
      ("Stesura UC1-12", "Analista", "10:00"),
      ("Inizio stesura sezione requisiti", "Analista", "3:00"),
      ("Stesura verbale riunione seconda settimana", "Responsabile", "1:30"),
      ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile", "3:00"),
      ("Verifica verbale riunione interna seconda settimana", "Verificatore", "0:15"),
      ("Verifica AdR", "Verificatore", "6:00"),
      ("Verifica PdP", "Verificatore", "4:00"),
      ("Verifica NdP", "Verificatore", "1:30"),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],
)
