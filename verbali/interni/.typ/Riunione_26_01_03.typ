#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"
#verbale(
  versioni: (
    (
      "2026-01-03",
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
    #let punto1 = "Discussione stato di avanzamento della redazione dei documenti per la RTB"
    #let punto2 = "Rotazione dei membri del gruppo per la redazione e verifica dei documenti"
    + #punto1.
    + #punto2.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "09:45"//...
    #let dataRiunione = "03 Gennaio"
    #let orarioFineRiunione = "11:00" //...
    #let presidenteRiunione = members.suar //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il gruppo ha discusso dello stato di avanzamento dei documenti necessari per la RTB: Piano di Progetto, Piano di Qualifica e Norme di Progetto sono in fase di finalizzazione, mentre l'elaborazione dell'Analisi dei Requisiti procede secondo le tempistiche previste con un avanzamento ottimale. Inoltre, il team ha effettuato il Merge nel branch develop delle modifiche caricate nei branch di riferimento, garantendo l'allineamento dell'ambiente di sviluppo.",
      decisione: "SkarabGroup conferma l'intenzione di mantenere l'attuale produttività, così da poter avviare le attività dedicate allo sviluppo del Proof of Concept (PoC).",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Il gruppo ha discusso in merito alla ripartizione dei compiti per ottimizzare le attività in corso: parte dei componenti si dedicherà alla stesura dell'Analisi dei Requisiti, mentre i restanti membri sono incaricati della verifica degli altri documenti di progetto. Tale divisione garantisce un avanzamento rapido sul documento principale e, contemporaneamente, un controllo rigoroso sulla qualità del materiale restante.",
      decisione: "Zago Alice, Sgreva Andrea, Martinello Riccardo, Sandu Antonio e Berengan Riccardo si occuperanno dell'Analisi dei Requisiti. Suar Alberto e Basso Kevin, invece, della verifica degli altri documenti. Il glossario continuerà ad essere aggiornato.",
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
        "2026/01/03",
        "In avanzamento",
      ),
      (
        "Verifica NdP",
        members.kevin,
        "2026/01/03",
        "Da iniziare",
      ),
      (
        "Verifica PdP",
        members.suar,
        "2026/01/03",
        "Da iniziare",
      ),
      (
        "Verifica PdQ",
        members.suar,
        "2026/01/03",
        "Da iniziare",
      ),
    ))
  ],
)
