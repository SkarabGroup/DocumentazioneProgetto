#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-03-08",
      "1.0.0",
      "Stesura verbale",
      members.berengan,
      members.suar,
    ),
  ),

  presenti: (
    [#members.suar,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.martinello,
      #members.kevin,
      #members.berengan #v(0.3cm)]
  ),

  assenze: [],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione in merito al documento Specifica Tecnica (ST) e progettazione"
    #let punto2 = "Discussione sulle modalità di lavoro per procedere con la PB"
    #let punto3 = "Retrospettiva di Sprint e Ciclo PDCA: Inefficienza nella Comunicazione Interna"
    + #punto1.
    + #punto2.
    + #punto3.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "14:00"
    #let dataRiunione = "08 Marzo"
    #let orarioFineRiunione = "15:10"
    #let presidenteRiunione = members.berengan 

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno discusso in merito al documento Specifica Tecnica, ognuno ha riportato agli altri membri le conoscenze acquisite durante lo studio individuale. Inoltre è stata discussa la progettazione, decidendo le priorità sul lavoro da svolgere.",
      decisione: "Sono state assegnate delle ore di studio individuale ed è stata individuata la necessità di sessioni di brainstorming collettivo relative all'architettura del prodotto. Da questa decisione scaturisce l'assegnazione delle attività di stesura tecnica in ST e la progettazione dei modelli C4, riportate esplicitamente nella tabella delle azioni e responsabilità.."
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Sono state discusse le modalità di lavoro, in particolare la modifica di comportamenti che si sono rivelati dannosi ed hanno rallentato il lavoro del team durante la RTB",
      decisione: "Assegnazione immediata e chiara delle task settimanali unita ad una maggior periodicità delle riunioni nella prima parte della PB. In linea con questa riorganizzazione, si è deciso di completare le correzioni ai documenti AdR e NdP segnalate dal docente e di aggiornare la pianificazione nel PdP; i compiti specifici di modifica e verifica sono tracciati nella tabella sottostante."
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "In ottemperanza al ciclo di Deming (PDCA), il team ha condotto una retrospettiva sulle inefficienze di comunicazione emerse durante l'ultimo sprint.\n- Obiettivo (Plan): Garantire massima reattività per la risoluzione dei blocchi operativi.\n- Riscontro (Check): Dall'analisi a consuntivo nel Piano di Progetto (PdP), è emerso che alcuni task hanno subito uno slittamento rispetto all'Estimated Time. Il team ha identificato come causa (Root Cause) un eccessivo affidamento alla comunicazione asincrona, che ha generato colli di bottiglia decisionali.",
      decisione: "(Act) Viene istituita l'Azione Correttiva AM01. Vengono definiti canali diretti per le emergenze e si inserisce a calendario una routine di micro-allineamenti frequenti per sbloccare i task pendenti in tempo reale. Le Norme di Progetto (NdP) verranno aggiornate di conseguenza."
    )
#pagebreak()
     = Azioni e responsabilità
    #task_table((
    ("Modifica del documento AdR in conformità alle correzioni proposte", "Analista", "2:00"),
    ("Stesura introduzione e primi capitoli del documento ST", "Analista", "3:00"),
    ("Scrittura in ST dell'architettura a microservizi, sezione relativa alla persistenza", "Progettista", "6:00"),
    ("Scrittura in ST dell'architettura a microservizi, sezione relativa al backend", "Progettista", "12:00"),    
    ("Scrittura in ST dell'architettura a microservizi, sezione relativa agli agenti LLM", "Progettista", "10:00",),
    ("Progettazione di livello 3 del C4 model per il microservizio di Analisi", "Progettista", "12:00"),
    ("Progettazione di livello 3 del C4 model per il microservizio di Gestione degli Account", "Progettista","8:00"),
    ("Progettazione di livello 3 del C4 model per il frontend", "Progettista","6:00"),
    ("Verifica verbale riunione interna prima settimana", "Verificatore","0:30"),
    ("Verifica verbale riunione interna seconda settimana", "Verificatore","0:30"),
    ("Verifica ST","Verificatore","8:00"),
    ("Verifica delle modifiche al documento AdR", "Verificatore", "1:00"),
    ("Verifica delle modifiche in NdP", "Verificatore", "1:00"),
    ("Applicazione Azione Correttiva AM01 in NdP", "Amministratore", "1:00"),
    ))
    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)