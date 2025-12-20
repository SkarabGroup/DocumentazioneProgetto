#import "../lib/main_docs.typ": *
#import "../lib/UC.typ": *
#let ver = [1.0.0] // vá aggiornata manualmente

#show ref: it => if str(it.target).starts-with("UC") {
  link(it.target, "[" + str(it.target) + "]")
} else {
  it
}

#show: body => maindocs(
  data: datetime(day: 03, month: 02, year: 2025),
  tipo: [interno],
  versione: ver,
  versioni: (
    (
      vers: "1.0.0",
      date: datetime(day: 17, month: 12, year: 2025),
      autore: name.kevin,
      verifica: "",
      descr: "Creazione documento",
    ),
    (
        vers: "1.1.0",
        date: datetime(day: 18, month: 12, year: 2025),
        autore: name.kevin,
        verifica: "",
        descr: "Inizio stesura documento, introduzione, scopo e prospettiva del prodotto",
    ),
    (
        vers: "1.2.0",
        date: datetime(day: 20, month: 12, year: 2025),
        autore: name.kevin,
        verifica: "",
        descr: "Completamento sezione funzioni del prodotto e caratteristiche degli utenti",
    ),
  ),
  stato: [Da creare],
  responsabile: (
    name.kevin,
  ),
  verificatore: (),
  redattori: (name.kevin,),
  descrizione: "Questo documento contiene l'analisi dei requisiti del sistema Software per la gestione di un sistema multiagente per l'analisi di repository github da Skarab Group.",
  titolo: "Analisi dei Requisiti",
  body,
)

//cpntrolla che le references esistano
#show ref: it => {
  if str(it.target).starts-with("UC") {
    link(it.target)[[#str(it.target), §2.3.#str(it.target).slice(2)]] //slice toglie la sottostringa "UC"
  } else {
    it
  }
}

= Introduzione

== Scopo del documento
Il presente documento ha lo scopo di definire e analizzare i #def("requisiti funzionali") e i #def("requisiti non funzionali") del sistema software che #def("Skarab Group") intende sviluppare a supporto del progetto '#def("Code Guardian")' proposto dall'azienda #def("Var Group").
Il documento descrive attentamente i #def("casi d'uso") del sistema, che sono la fonte dei #def("requisiti funzionali"), ovvero l'obiettivo finale dell'#def("analisi dei requisiti"). Per ogni #def("caso d'uso"), vengono specificati gli attori coinvolti, le precondizioni e postcondizioni, gli scenari principali e alternativi, nonché eventuali inclusioni ed estensioni oltre che i #def("diagrammi dei casi d'uso")

Questo documento si pone alla base di progettazione, implementazione e collaudo del #def("sistema software"), fornendo una chiara comprensione delle funzionalità richieste e delle aspettative degli stakeholder e garantendo che il sistema soddisfi le esigenze degli #def("utenti") finali.

L'obiettivo stesso del documento identifica i suoi destinatari principali, che includono:
- L' #strong("azienda committente") #def("Var Group"), che utilizzeranno questo documento per verificare che il sistema che verrá sviluppato soddisfi le loro esigenze e aspettative.
- I #strong("team di sviluppo") #def("Skarab Group") ovvero #def("progettisti") e #def("programmatori"), che utilizzerà questo documento come guida per la progettazione e l'implementazione del sistema software.
- I #strong("team di verificatori"), che utilizzeranno questo documento per garantire che il sistema soddisfi i requisiti specificati.

Sono identificabili 3 tipi di requisiti:
- #strong("Obbligatori"): requisiti che devono essere assolutamente soddisfatti dal sistema.
- #strong("Desiderabili"): requisiti che sarebbe auspicabile soddisfare, ma che non sono strettamente necessari.
- #strong("Opzionali"): requisiti che possono essere implementati se le risorse e il tempo lo permettono, ma che non sono essenziali per il funzionamento dell'#def("MVP"), potrebbero, tuttasi, essere presi in considerazione per versioni future del sistema.



== Prospetttiva del prodotto

Il prodotto che #def("Skarab Group") intende sviluppare è un #def("sistema software") #def("multiagente") per l'analisi di #def("repository") #def("GitHub"). Il sistema sarà progettato per essere modulare e scalabile, consentendo l'aggiunta di nuove funzionalità e agenti in futuro. Dal momento in cui l'obiettivo del #def("progetto") è lo sviluppo di un #def("MVP"), il sistema sarà sviluppato con un focus sulle funzionalità essenziali, garantendo al contempo una solida base per future espansioni.

== Funzioni del prodotto

Questa sezione descrive le principali funzionalitá dovrá fornire all'utilizzatore finale; esse sono suddivise in 2 sezioni principali, #emph("Codice") e #emph("Documentazione")
- Codice:
  - Analisi statica del codice sorgente per identificare potenziali errori a compile time.
  - Analisi delle dipendenzanze per individuare librerie obsolete o vulnerabili.
  - Copertura dei test per valutare l'efficacia dei test esistenti.
- Documentazione:
  - Verifica della completezza della documentazione del codice.
  - Controllo della conformità agli standard di documentazione aziendali e non e delle best practice.
  - Analisi semantica per garantire che la documentazione rifletta accuratamente il funzionamento del codice.

L'#def("utente") potrá richiedere l'analisi di uno o piú #def("repository") #def("GitHub") specificando l'#def("URL") del repository e le aree di interesse (codice, documentazione o entrambe). Il sistema genererá un report dettagliato con i risultati dell'analisi, evidenziando le aree di miglioramento e fornendo raccomandazioni per ottimizzare la qualitá del codice e della documentazione. L'interfaccia sará una #def("webapp") con una #def("GUI") intuitiva e user-friendlyc da cui l'utente potrá interagire con il sistema, richiedere analisi e visualizzare i report generati sottoforma di grafici e tabelle.

== Caratteristiche degli utenti

Gli #def("utenti") principali del sistema sono #def("sviluppatori software"), manager #def("IT") e #TODO("ultimo utente, non ricordo") che desiderano una valutazione sulla qualitá del codice e della documentazione nei loro progetti. Gli utenti avranno diversi livelli di competenza tecnica, pertanto l'interfaccia utente sará progettata per essere accessibile sia a utenti esperti che a quelli meno esperti.  

== Definizioni e Acronimi
Tutte le definizioni e gli acronimi di termini tecnici utilizzati in questo documento sono elencati nel #strong("Glossario"), un documento separato fornito al lettore. Questo glossario serve a garantire una comprensione chiara e condivisa dei termini utilizzati nel contesto del progetto e del sistema software in sviluppo.

== Riferimenti

#pagebreak()

= Casi d'uso

== Introduzione

== attori_secondari

== Lista

=== UC1 <UC1>

#use-case(
  attore: "...",
  pre: [
    - ...
  ],
  post: [
    - ...
  ],
  scenari: [
    - ....
  ],
  scenari_alternativi: [
    - ...
  ],
  inclusioni: [
    - @UC1
  ],
  estensioni: [
    
  ],
  trigger: "...",
)[
  #use-case-diagram("1", "UC1")
]
