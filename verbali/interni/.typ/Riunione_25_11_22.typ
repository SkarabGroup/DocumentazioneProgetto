#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ": *
#import "../../../lib/variables.typ": *

#verbale(
  versioni: (
    ("2025-11-22", "1.0.0", "Verifica verbale", "", "Zago Alice"),
    ("2025-11-22", "0.1.0", "Prima stesura del documento", "Basso Kevin", "Zago Alice")
  ),

  presenti: [
    #members.suar,
    #members.kevin,
    #members.andrea,
    #members.alice,
    #members.berengan,
    #members.antonio,
    #members.martinello
    #v(1em)
  ],
  
  assenze: [
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Scelta del linguaggio standard per la redazione dei documenti"
    #let punto2 = "Selezione delle domande da porre a VarGroup"

    + #punto1.
    + #punto2.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "09:55"//...
    #let orarioFineRiunione = "11:05" //...
    #let presidenteRiunione = members.suar //...
    #let dataRiunione = "22 Novembre 2025"
    == Apertura
    La riunione, svolta in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il gruppo ha discusso sui possibili linguaggi da utilizzare per la documentazione ed è arrivato a una scelta binaria tra LaTeX e Typst.",
      decisione: [ Il gruppo ha scelto di redigere i documenti nel linguaggio che si preferisce, a condizione che venga adottato il formato standard definito dai template.],
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Dopo aver esposto l’analisi delle tecnologie studiate, i membri hanno presentato le domande emerse da porre a Var Group durante la sessione di design thinking prevista per il 26/11.",
      decisione: "Ognuno dovrà aggiungere le proprie domande a un documento sulla repository GitHub"
    )
#pagebreak()
    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Domande per VarGroup",
        "Tutti i membri",
        "2025-11-25",
      ),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],
)