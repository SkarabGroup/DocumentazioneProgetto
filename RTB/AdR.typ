#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/useCaseUtil.typ": *

//Note sul versionamento
/*
  x.y.z
  La X si modifica solamente a documento completo
  La Y si modifica solo quando vengono aggiunti nuovi elementi
  La Z si modifica solo quando si modificano elementi già esistenti

  Si raccomanda di modificare sempre questo valore quando si lavora su un qualunque file
*/
#let versione = "v0.4.0"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2025/12/22",
    "0.4.0",
    "Completato Introduzione e attori dei casi d'uso e correzione UC1.X",
    members.kevin
  ),
  (
    "2025/12/22",
    "0.3.1",
    "Leggere correzioni lessicali",
    members.kevin
  ),
  (
    "2025/12/21",
    "0.3.0",
    "Casi d'uso UC1 e da UC1.1 a UC1.5 (compresi di estensioni)",
    members.suar,
    members.kevin

  ),

  (
    "2025/12/20",  
    "0.2.0", 
    "Completamento sezione funzioni del prodotto e caratteristiche degli utenti", 
    members.kevin,
    members.suar
  ),
  
  (
    "2025/12/18", 
    "0.1.0", 
    "Inizio stesura documento, introduzione, scopo e prospettiva del prodotto", 
    members.kevin, 
    members.suar
  ),
  
  (
    "2025/12/17", 
    "0.0.0", 
    "Creazione documento", 
    members.kevin, 
    members.suar
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

#indiceTabelle()

#pagebreak()

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

== Prospettiva del prodotto

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

L'#def("utente") potrá richiedere l'analisi di uno o piú #def("repository") #def("GitHub") specificando l'#def("URL") del repository e le aree di interesse (codice, documentazione o entrambe). Il sistema genererà un report dettagliato con i risultati dell'analisi, evidenziando le aree di miglioramento e fornendo raccomandazioni per ottimizzare la qualitá del codice e della documentazione. L'interfaccia sará una #def("webapp") con una #def("GUI") intuitiva e user-friendlyc da cui l'utente potrá interagire con il sistema, richiedere analisi e visualizzare i report generati sottoforma di grafici e tabelle.

== Caratteristiche degli utenti

Gli #def("utenti") principali del sistema sono #def("sviluppatori software"), manager #def("IT") e #def("consulente informatico") che desiderano una valutazione sulla qualitá del codice e della documentazione nei loro progetti. Gli utenti avranno diversi livelli di competenza tecnica, pertanto l'interfaccia utente sará progettata per essere accessibile sia a utenti esperti che a quelli meno esperti.  

== Definizioni e Acronimi
Tutte le definizioni e gli acronimi di termini tecnici utilizzati in questo documento sono elencati nel #strong("Glossario"), un documento separato fornito al lettore. Questo glossario serve a garantire una comprensione chiara e condivisa dei termini utilizzati nel contesto del progetto e del sistema software in sviluppo.

== Riferimenti
- Standard IEEE \ #underline[https://ieeexplore.ieee.org/document/720574]
- Dispense del corso di Ingegneria del Software sull'analisi dei requisiti \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf]
- Dispense del corso di Ingegneria del Software sui casi d'uso \ #underline[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf]


#pagebreak()

= Casi d'uso

== Introduzione
In questa sezione vengono descritti i #def("casi d'uso") principali del sistema software #def("Code Guardian"). Ogni #def("caso d'uso") è descritto in dettaglio, includendo gli attori coinvolti, le precondizioni e postcondizioni, gli scenari principali, nonché eventuali inclusioni ed estensioni. Inoltre, per ogni #def("caso d'uso") viene fornito un #def("UML") che illustra visivamente le interazioni tra gli attori e il sistema.

Di seguito sono elencati le componenti di un caso d'uso del sistema con relativa descrizione:

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(62.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      [*Campo*],
      [*Descrizione*],
    ),

    [*Precondizioni*],
    [Lista di elementi fondamentali affinché l'Attore possa compiere l'azione indicata dal caso d'uso],
    [*Attori*], [Sono esterni al Sistema e interagiscono attivamente con esso per compiere l'azione descritta dal Caso d'Uso],
    [*Attori secondari*], [Sono attori che interagiscono con il sistema solo passivamente],

    [*Postcondizioni*],
    [Insieme delle modifiche allo stato interno del Sistema che risultano dall'esecuzione del Caso d'Uso da parte dell'Attore.],

    [*Scenario principale*],
    [Sequenza ordinata di azioni che l'Attore deve eseguire affinché il Caso d'Uso venga portato a termine con successo],

    [*Inclusioni*],
    [Elenco dei Casi d'Uso aggiuntivi che devono essere necessariamente eseguiti dall'Attore per completare il Caso d'Uso corrente.],

    [*Estensioni*],
    [Insieme dei Casi d'Uso opzionali che possono manifestarsi durante l'esecuzione del Caso d'Uso principale in presenza di determinate condizioni.],

    [*Trigger*],
    [Evento o condizione che induce l'Attore ad avviare il Caso d'Uso descritto; può non essere specificato qualora il Caso d'Uso sia attivato come inclusione di un altro Caso d'Uso.],
  ),
  caption: [Campi dei Casi d'Uso],
)

#pagebreak()
== Attori

Di seguito sono elencati gli attori principali che interagiscono con il sistema software #def("Code Guardian"):

#figure(
  image("../assets/Actors.png", width: 70%),
  caption: [Attori del sistema CodeGuardian],
)
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(62.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (2fr, 5fr),
    inset: 10pt,
    table.header(
      [*Attore*],
      [*Descrizione*],
    ),

    [*Utente non registrato*],
    [Utente che non possiede un account CodeGuardian e desidera registrarsi per utilizzare il sistema.],

    [*Utente registrato*],
    [Utente che ha completato la procedura di registrazione a CodeGuardian e possiede un account valido per accedere al sistema.],

    [*Utente registrato avanzato*],
    [Utente registrato che ha collegato con successo il proprio account CodeGuardian ad un account GitHub e può usufruire di funzionalitá avanzate del sistema.],

    [*Utente autenticato*],
    [Utente che ha effettuato con successo l'accesso al proprio account CodeGuardian e può utilizzare le funzionalità del sistema.],

    [*Utente autenticato avanzato*],
    [Utente autenticato che ha collegato con successo il proprio account CodeGuardian ad un account GitHub e può usufruire di funzionalitá avanzate del sistema.],

    [*Sistema GitHub*],
    [Piattaforma di hosting per lo sviluppo di software che fornisce servizi di controllo versione e collaborazione tramite repository Git.]
  ),
  caption: [Attori principali del sistema CodeGuardian],
)

== Lista

=== UC1: Registrazione a CodeGuardian <UC1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente seleziona la sezione di registrazione di CodeGuardian
  ],
  post: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema
  ],
  scenari: [
    - L'utente inserisce il proprio nome (UC1.1)
    - L'utente inserisce il proprio cognome (UC1.2)
    - L'utente inserisce un username (UC1.3)
    - L'utente inserisce una email di riferimento (UC1.4)
    - L'utente inserisce una password (UC1.5)
  ],
  inclusioni: [
    - UC1.1 // Inserimento Nome
    - UC1.2 // Inserimento Cognome
    - UC1.3 // Inserimento Username
    - UC1.4 // Inserimento Email
    - UC1.5 // Inserimento Password
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1", "UC1 - Registrazione")
]

==== UC1.1: Inserimento Nome <UC1.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
  ],
  post: [
    - L'utente ha inserito il nome con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  scenari: [
    - L'utente inserisce il nome con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - UC1.1.1 // Nome inserito non valido
  ],
  trigger: "L'utente interagisce con la sezione di inserimento del nome durante la procedura di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1_1", "UC1.1 - Inserimento nome")
]

===== UC1.1.1: Nome inserito non valido <UC1.1.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserito un nome non valido durante
  ],
  post: [
    - La procedura di registrazione non viene completata
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il nome inserito non è valido
      per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento del nome durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.2: Inserimento Cognome <UC1.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
  ],
  post: [
    - L'utente ha inserito il cognome con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  scenari: [
    - L'utente inserisce il cognome con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - UC1.2.1 // cognome inserito non valido
  ],
  trigger: "L'utente interagisce con la sezione di inserimento del cognome durante la procedura di registrazione a CodeGuardian"
)[
  //#useCaseDiagram("1.2", "UC1.2")
]

==== UC1.2.1: Cognome inserito non valido <UC1.2.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserito un cognome non valido
  ],
  post: [
    - La procedura di registrazione non viene completata
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il cognome inserito non è
      valido per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento del cognome durante la procedura di registrazione a CodeGuardian"
)[
]


==== UC1.3: Inserimento username <UC1.3>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
  ],
  post: [
    - L'utente ha inserito l'username con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  scenari: [
    - L'utente inserisce l'username con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - UC1.3.1 // username inserita non valida
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di registrazione a CodeGuardian"
)[
  //#useCaseDiagram("1.3", "UC1.3")
]

==== UC1.3.1: Username inserito non valido <UC1.3.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserita un username non valida
  ],
  post: [
    - La procedura di registrazione non viene completata
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'username inserito non è valido
      per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.3.2: Username inserito già censito dal Sistema <UC1.3.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserito un username già censito dal sistema
  ],
  post: [
    - La procedura di registrazione non viene completata
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'username inserito non è valido
      per la procedura di registrazione (per questioni di sicurezza, non viene specificato che 
      si tratta di un username già in uso)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.4: Inserimento email <UC1.4>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
  ],
  post: [
    - L'utente ha inserito l'email con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  scenari: [
    - L'utente inserisce l'email con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - UC1.4.1 // email inserita non valido
    - UC1.4.2 // email già censita a sistema
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'email durante la procedura di registrazione a CodeGuardian"
)[
  //#useCaseDiagram("1.4", "UC1.4")
]

===== UC1.4.1: Email inserita non valida <UC1.4.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserita un email non valida durante l'inserimento dell'email (UC1.4)
  ],
  post: [
    - L'utente riceve una notifica di errore che il email inserita non è valida
  ],
  scenari: [
    - L'utente inserisce un email non valida
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'email durante la procedura di registrazione a CodeGuardian"
)[
]


==== UC1.4.2: Email inserita già censita dal Sistema <UC1.4.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserito un'email già censita dal sistema
  ],
  post: [
    - La procedura di registrazione non viene terminata
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che la email inserita non è valida
      per la procedura di registrazione (per questioni di sicurezza, non viene specificato che 
      si tratta di un'email già in uso)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'email durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.5: Inserimento password <UC1.5>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
  ],
  post: [
    - L'utente ha inserito la password con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  scenari: [
    - L'utente inserisce la password con cui vuole effettuare la procedura di registrazione a CodeGuardian
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - UC1.5.1 // password inserita non valida
  ],
  trigger: "L'utente interagisce con la sezione di inserimento della password durante la procedura di registrazione a CodeGuardian"
)[
  //#useCaseDiagram("1.4", "UC1.4")
]

===== UC1.5.1: Password inserita non valida <UC1.5.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserito una password non valida
  ],
  post: [
    - La procedura di registrazione non viene terminata
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che la password inserita non è
      valida per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento della password durante la procedura di registrazione a CodeGuardian"
)[
]

=== UC2: Autenticazione account a CodeGuardian

=== UC3: Collegamento account CodeGuardian ad account GitHub
