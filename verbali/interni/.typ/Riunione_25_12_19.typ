// Importa il template del verbale

#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ": *
#import "../../../lib/variables.typ": *

#verbale(
  versioni: (
    ("2025-12-19", "1.0.0", "Creazione documento", "Basso Kevin", "Suar Alberto"),
  ),

  presenti: (
    members.suar,
    members.kevin,
    members.andrea,
    members.martinello,
    members.antonio,
    members.alice,
    members.berengan,
  ),

  assenze: (
    "",
  ),

  [

    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Suddivisione ruoli per stesura documenti RTB"
    #let punto2 = "Standardizzazione documenti in typst con templates"
    #let punto3 = "Comprensione della struttura del POC"

    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:00"//...
    #let orarioFineRiunione = "10:40" //...
    #let presidenteRiunione = members.suar //...
    #let dataRiunione = "19 Dicembre 2025"
    == Apertura
    La riunione, svolta in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il gruppo ha discusso su una possibile suddivisione dei membri del gruppo per la stesura dei principali documenti previsti per la RTB.",
      decisione: [I membri hanno concordato una suddivisione chiara dei ruoli per ottimizzare la redazione dei documenti. In cui le persone sono divise cosí:
        - #strong("Analisi dei requisiti"): #members.kevin, #members.suar
        - #strong("Piano di progetto"): #members.andrea, #members.antonio
        - #strong("Piano di qualifica"): #members.alice, #members.berengan
        - #strong("Glossario"): #members.kevin, #members.suar, #members.andrea, #members.antonio, #members.alice, #members.berengan, #members.martinello
        - #strong("Norme di progetto"): #members.martinello
      ],
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      [#members.kevin ha prensentato i template in typst per la standardizzazione dei documenti.],
      decisione: "I membri hanno deciso di utilizzare i template proposti per garantire coerenza e uniformità nei documenti.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Capire cosa bisogna presentare nell'POC",
      decisione: "Si é deciso di procedere non come una sintesi del progetto ma un sistema che permette di mostrare che le tecnologie funzionano senza che l'obiettivo effettivo sia raggiunto.",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Prima stesura del documento di analisi dei requisiti e glossario",
        members.suar + " - " + members.kevin,
        "2025-12-29",
        "In corso di svolgimento",
      ),
      (
        "Prima stesura del documento piano di progetto",
        members.andrea + " - " + members.antonio,
        "2025-12-29",
        "Da iniziare",
      ),
      (
        "Prima stesura del documento piano di qualifica",
        members.alice + " - " + members.berengan,
        "2025-12-29",
        "Da iniziare",
      ),
      (
        "Prima stesura del documento norme di progetto",
        members.martinello,
        "2025-12-29",
        "Da iniziare",
      ),
    ))
  ],
)