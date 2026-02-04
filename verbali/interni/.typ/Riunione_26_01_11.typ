#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"
#verbale(
  versioni: (
    (
      "2026-01-11",
      "1.0.0",
      "Prima stesura del documento",
      members.alice,
      members.suar
    ),
  ),

  presenti: (
    [#members.suar,
      #members.kevin,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.berengan,
      #members.martinello]
  ),

  assenze: [],

  [

    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione stato di avanzamento della redazione e della verifica dei documenti per la RTB"
    #let punto2 = "Pianificazione per lo sviluppo del Proof of Concept (PoC)"
    #let punto3 = "Coordinamento per il colloquio con il professor Cardin e incontro con VarGroup"
    + #punto1.
    + #punto2.
    + #punto3

    = Svolgimento Riunione
    #let orarioInizioRiunione = "15:00"//...
    #let dataRiunione = "11 Gennaio"
    #let orarioFineRiunione = "16:50" //...
    #let presidenteRiunione = members.alice //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il gruppo ha condotto un esame dello stato dei lavori relativo ai documenti di progetto per la RTB. Il Piano di Progetto e le Norme di Progetto risultano verificati, il Piano di Qualifica resta in attesa di verifica mentre l'Analisi dei Requisiti procede ma evidenzia una lieve flessione nella velocità di redazione.",
      decisione: "SkarabGroup si impegna a mantenere l'assetto operativo definito all'inizio dello Sprint 2. Viene confermato l'impegno all'aggiornamento contestuale del glossario.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "In previsione della candidatura per la RTB, è stata discussa la necessità di avviare lo sviluppo del Proof of Concept (PoC).",
      decisione: "A partire dallo Sprint 3, alcuni membri del gruppo si focalizzeranno sull'implementazione del PoC mentre altri si dedicheranno alla finalizzazione e alla verifica dei documenti restanti. Qualora lo stato di avanzamento dei lavori fosse abbondantemente oltre i requisiti minimi, l'avvio del PoC verrebbe anticipato alla seconda metà del secondo sprint.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Il team ha identificato un set di quesiti fondamentali da sottoporre al professor Cardin durante l'incontro programmato. Inoltre, il gruppo concorda sulla necessità di un incontro di allineamento con Var Group per presentare l'avanzamento del progetto e validare i requisiti emersi finora, assicurando la piena aderenza alle aspettative aziendali.",
      decisione: "SkarabGroup inserirà in un documento i quesiti da sottoporre al professore. Contestualmente, procederà a contattare VarGroup per calendarizzare un colloquio di aggiornamento.",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Continuazione redazione AdR",
        members.alice
          + " "
          + members.andrea
          + " "
          + members.martinello
          + " "
          + members.antonio
          + " "
          + members.berengan,
        "2026/01/17",
        "In avanzamento",
      ),
      (
        "Verifica NdP",
        members.kevin,
        "2026/01/17",
        "Completata",
      ),
      (
        "Verifica PdP",
        members.suar,
        "2026/01/17",
        "Completata",
      ),
      (
        "Verifica PdQ",
        members.suar,
        "2026/01/17",
        "Da iniziare",
      ),
    ))
  ],
)
