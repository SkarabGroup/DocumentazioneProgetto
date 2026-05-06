#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-21",
      "1.0.0",
      "Stesura verbale",
      members.martinello,
      members.andrea
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
    #let punto3 = "Retrospettiva di Sprint e Ciclo PDCA: Disomogeneità nella Documentazione"
    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "21:30"
    #let dataRiunione = "21 Marzo"
    #let orarioFineRiunione = "00:30"
    #let presidenteRiunione = members.martinello

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Il team ha effettuato un allineamento per verificare il completamento e lo stato di avanzamento delle mansioni assegnate nell'incontro precedente.",
      decisione: "Si è deciso di riprendere e ultimare il consolidamento dei capitoli della Specifica Tecnica e l'aggiornamento dei diagrammi C3/C4 relativi a Value Object ed Entità, al fine di fornire una base stabile per l'inizio dell'implementazione.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "In vista dell'imminente fase di implementazione, sono stati definiti i criteri per l'organizzazione del codice e la struttura del repository.",
      decisione: "È stato stabilito l'avvio della codifica dei componenti software di base, partendo dall'implementazione dei principali Value Object e delle entità del dominio analisi, contestualmente alla revisione degli strumenti di build per uniformare l'ambiente di sviluppo.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Nell'ambito del miglioramento continuo (PDCA), è stata condotta una retrospettiva sulla qualità documentale.\n- Obiettivo (Plan): Garantire redazioni parallele coerenti per la stesura della PB.\n- Riscontro (Check): I controlli di qualità effettuati dai Verificatori e tracciati nel Piano di Qualifica (PdQ) evidenziano una disomogeneità testuale. La stesura parallela ha prodotto incoerenze stilistiche e formattazioni ridondanti.",
      decisione: "(Act) Istituzione dell'Azione Correttiva AM03. Il team ha deciso di ingegnerizzare ulteriormente le funzioni in Typst e adottare template fortemente vincolanti per annullare l'incidenza dello stile personale e standardizzare ogni documento prodotto."
    )
#pagebreak()
    = Azioni e responsabilità
    #task_table((
      ("Allineamento architetturale domain/entity/factory del microservizio analisi", "Progettista", "6:00"),
    ("Definizione model Analysis e flussi del provider", "Progettista", "5:00"),
    ("Revisione struttura repository (src-only) e convenzioni build", "Progettista", "3:00"),
    ("Aggiornamento diagrammi C3/C4 su Value Object ed Entity", "Progettista", "8:00"),
    ("Consolidamento capitoli ST su dominio analisi e tool", "Progettista", "6:00"),

    ("Implementazione userId/repoURL/personalAccessToken VO con test", "Programmatore", "2:30"),
    ("Implementazione commitHash/branchName/analysisId VO con test", "Programmatore", "2:00"),
    ("Implementazione encrypted-pat/github-id VO con test", "Programmatore", "1:30"),
    ("Implementazione Analysis, GitHubAnalysis, FactoryCommand e Factory", "Programmatore", "2:30"),
    ("Implementazione AnalysisProvider e analysis model", "Programmatore", "1:30"),
    ("Fix tooling build/test (ESM→CJS uuid, rootDir, path check-test-symmetry)", "Programmatore", "1:00"),
    ("Ingegnerizzazione avanzata template Typst (AM03)", "Amministratore", "1:30"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)