#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ": *
#import "../../../lib/variables.typ": *

#verbale(
  versioni: (
    ("2025-11-08", "1.0.0", "Verifica verbale", "", "Suar Alberto"),
    ("2025-11-08", "0.1.0", "Prima stesura del documento", "Basso Kevin", "Suar Alberto")
  ),

  presenti: [
    #members.suar,
    #members.kevin,
    #members.andrea,
    #members.martinello,
    #members.antonio
    #v(1em)
  ],
  
  assenze: [
    #members.alice,
    #members.berengan
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Aggiornamento sulla definizione di un ambiente Typst"
    #let punto2 = "Analisi del lavoro svolto dal team"
    #let punto3 = "Analisi della presentazione di capitolato e discussione degli argomenti da studiare"
    #let punto4 = "Definizione della sessione di design thinking"
    #let punto5 = "Suddivisione dello studio delle componenti del progetto"
    #let punto6 = "Stesura diario di bordo"

    + #punto1.
    + #punto2.
    + #punto3.
    + #punto4. 
    + #punto5. 
    + #punto6

    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:00"//...
    #let orarioFineRiunione = "10:55" //...
    #let presidenteRiunione = members.suar //...
    #let dataRiunione = "8 Novembre 2025"
    == Apertura
    La riunione, svolta in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Riccardo Berengan si era offerto di occuparsi della definizione dei template dei documenti in Typst, a seguito della decisione del team di adottarlo come strumento di redazione.",
      decisione: [L’ambiente comune è stato creato ma, data la sua assenza, lo stato di avanzamento dei template rimane al momento ignoto.],
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      [Il team si è dichiarato complessivamente soddisfatto dell’andamento della settimana, durante la quale tutti i membri si sono dedicati alla stesura della documentazione necessaria per la proposta di candidatura. Antonio Sandu ha evidenziato la necessità di una maggiore trasparenza nel processo decisionale, sottolineando l’importanza di discutere e definire ogni scelta operativa esclusivamente nei meeting interni, riducendo al minimo le decisioni tempestive prese individualmente.],
      decisione: "Il team si impegna a operare in conformità con quanto stabilito durante i meeting interni. In caso di situazioni che richiedano interventi urgenti, verrà convocata una riunione straordinaria o, qualora ciò non sia possibile, sarà richiesta l’approvazione via messaggio da parte di tutti i membri del gruppo.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Il team ha esaminato i requisiti minimi della presentazione di capitolato e Kevin Basso ha esposto il suo parere sulle tecnologie analizzate, indicando semplicità nell’utilizzo dopo una breve sessione di studio e qualche difficoltà nella configurazione all’uso. Ha inoltre esposto come alcuni elementi, come le credenziali per usare AWS dovranno essere fornite dall’azienda. L’analisi degli obiettivi ha fatto emergere qualche incertezza, specialmente per il requisito 'Proposte di Remediation', il quale necessiterà di una descrizione più specifica da parte della proponente.",
      decisione: "Si è deciso di suddividere in maniera equa lo studio di questi elementi, come viene descritto nella tabella al Punto 5.",
    )

    === Punto 4 : #punto4
    #puntoOdg(
      punto4,
      "Il team ha letto la mail di risposta di VarGroup in cui venivano proposte delle date in cui svolgere le sessioni di design thinking.",
      decisione: "Il responsabile del team si consulterà con i responsabili di HeptaCode e ByteHolders per evitare sovrapposizioni di date."
    )

    === Punto 5 : #punto5
    #puntoOdg(
      punto5,
      "Il team ha deciso di suddividersi equamente lo studio dei macro-argomenti suggeriti dall’azienda proponente.",
      decisione: "Il lavoro viene diviso in questa maniera: " + table(
  columns: (auto, 1fr),
  inset: 5pt,
  align: (center, center),
  stroke: 0.5pt,
  fill: (x, y) => if y == 0 { gray.lighten(80%) },
  
  [*Argomento*], [*Incaricati dello Studio*],
  
  [BackEnd], [Alberto Suar | Kevin Basso | Riccardo Martinello],
  [FrontEnd], [Alice Zago | Riccardo Martinello],
  [Cloud e AWS], [Kevin Basso | Riccardo Berengan],
  [Database], [Andrea Sgreva | Riccardo Berengan | Antonio Sandu],
  [CI/CD], [Antonio Sandu | Alberto Suar],
) + "Verranno quindi definiti dei documenti accessibili a tutti in modo che vi sia unaanalisi completa degli argomenti. Questa suddivisione è su libera scelta, quindi i componenti possono liberamente focalizzarsi anche su aspetti non inclusi in questa tabella."
    )

    === Punto 6 : #punto6
    #puntoOdg(
      punto6,
      "Emersa la necessità di definire il diario di bordo per il 2025-11-10.",
      decisione: "Alice Zago si occuperà della stesura del diario di bordo."
    )
    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Organizzare l'ambiente Typst",
        members.berengan,
        "2025-11-15",
      ),
      (
        "Applicazione regole decisionali",
        "Tutti i membri",
        "Continuativo",
      ),
      (
        "Redazione DbB",
        members.alice,
        "2025-11-10"
      ),
      (
        "Decisione data sessione Design Thinking",
        members.suar,
        "2025-11-10",
      ),
      (
        "Analisi dei componenti",
        "Tabella sopra",
        "2025-11-15"
      ),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],
)