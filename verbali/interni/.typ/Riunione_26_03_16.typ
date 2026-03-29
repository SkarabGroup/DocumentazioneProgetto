#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-17",
      "0.1.0",
      "Prima stesura del documento",
      members.martinello,
    ),
  ),

  presenti: (
    [#members.suar,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.martinello,
      #members.berengan #v(0.3cm)]
  ),

  assenze: [
    #members.kevin
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Verifica dello stato di avanzamento dei punti discussi nella riunione precedente"
    #let punto2 = "Avvio della progettazione tecnica in vista della codifica"
    + #punto1.
    + #punto2.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "21:30"
    #let dataRiunione = "16 Marzo"
    #let orarioFineRiunione = "00:30"
    #let presidenteRiunione = members.martinello

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il team ha effettuato un allineamento per verificare il completamento e lo stato di avanzamento delle mansioni assegnate nell'incontro precedente.",
      decisione: "Alcuni punti sono risultati incompleti e sono stati riassegnati.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Essendo prossimi alla fase di implementazione, sono stati gettati i primi fondamenti riguardo le scelte tecnologiche e i pattern architetturali per iniziare l'avvio della codifica in modo organizzato e performante.",
      decisione: "Iniziare a definire la struttura tecnica di base per l'inizio dello sviluppo.",
    )

    = Azioni e responsabilità
    #task_table((
      ("Rimozione della sezione GitHub App dal diagramma", "Progettista", "1:00"),
      ("Integrazione dei tool e delle parti mancanti nel diagramma", "Progettista", "1:00"),
      ("Rivalutazione e confronto tecnico tra i tool", "Progettista", "2:00"),
      ("Ricerca e impostazione pattern progettuali per la codifica", "Programmatore", "4:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)
