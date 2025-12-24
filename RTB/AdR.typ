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
#let versione = "v0.7.0"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2025/12/24",
    "0.8.0",
    "Correzioni minori ai casi d'uso UC 1.5.1",
    members.kevin,
    members.suar
  ),
  (
    "2025/12/23",
    "0.7.0",
    "Correzione UML dei casi d'uso descritti, aggiunti UC2.1.2 e UC2.2.2. Esplicitate le postcondizioni e i trigger degli UC",
    members.suar,
    members.kevin
  ),
  (
    "2025/12/22",
    "0.6.0",
    "Correzione sezione Introduzione -> riferimenti. Fatti UC2, UC4, UC4.1.2, UC4.1.3 UC5. Inizio stesura Requisiti",
    members.kevin,
    members.suar
  ),
  (
    "2025/12/22",
    "0.5.0",
    "Aggiunti diagrammi dei casi d'uso UC1 e da UC1.1 a UC1.5. Modificate le postcondizioni delle estensioni",
    members.suar,
    members.kevin
  ),
  (
    "2025/12/22",
    "0.4.0",
    "Completato Introduzione e attori dei casi d'uso e correzione UC1.X",
    members.kevin,
    members.suar
  ),
  (
    "2025/12/22",
    "0.3.1",
    "Leggere correzioni lessicali",
    members.kevin,
    members.suar
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

L'#def("utente") potrá richiedere l'analisi di uno o piú #def("repository") #def("GitHub") specificando l'#def("URL") del repository e le aree di interesse (codice, documentazione o entrambe). Il sistema genererà un report dettagliato con i risultati dell'analisi, evidenziando le aree di miglioramento e fornendo raccomandazioni per ottimizzare la qualitá del codice e della documentazione. L'interfaccia sará una #def("webapp") con una #def("GUI") intuitiva e user-friendly da cui l'utente potrá interagire con il sistema, richiedere analisi e visualizzare i report generati sottoforma di grafici e tabelle.

== Caratteristiche degli utenti

Gli #def("utenti") principali del sistema sono #def("sviluppatori software"), manager #def("IT") e #def("consulente informatico") che desiderano una valutazione sulla qualitá del codice e della documentazione nei loro progetti. Gli utenti avranno diversi livelli di competenza tecnica, pertanto l'interfaccia utente sará progettata per essere accessibile sia a utenti esperti che a quelli meno esperti.  

== Definizioni e Acronimi
Tutte le definizioni e gli acronimi di termini tecnici utilizzati in questo documento sono elencati nel #strong("Glossario"), un documento separato fornito al lettore. Questo glossario serve a garantire una comprensione chiara e condivisa dei termini utilizzati nel contesto del progetto e del sistema software in sviluppo.

== Riferimenti
- #strong("Standard IEEE") \ #underline[https://ieeexplore.ieee.org/document/720574] \ Ultimo accesso 2025/12/22
- #strong("Dispense del corso di Ingegneria del Software sull'analisi dei requisiti") \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf] \ Ultimo accesso 2025/12/22
- #strong("Dispense del corso di Ingegneria del Software sui casi d'uso") \ #underline[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf] \ Ultimo accesso 2025/12/22


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
    - L'utente inserisce il proprio nome #link(<UC1.1>)[#underline[\[UC1.1\]]]
    - L'utente inserisce il proprio cognome #link(<UC1.2>)[#underline[\[UC1.2\]]]
    - L'utente inserisce un username #link(<UC1.3>)[#underline[\[UC1.3\]]]
    - L'utente inserisce una email di riferimento #link(<UC1.4>)[#underline[\[UC1.4\]]]
    - L'utente inserisce una password #link(<UC1.5>)[#underline[\[UC1.5\]]]
  ],
  inclusioni: [
    - #link(<UC1.1>)[#underline[\[UC1.1\]]] // Inserimento Nome
    - #link(<UC1.2>)[#underline[\[UC1.2\]]] // Inserimento Cognome
    - #link(<UC1.3>)[#underline[\[UC1.3\]]] // Inserimento Username
    - #link(<UC1.4>)[#underline[\[UC1.4\]]] // Inserimento Email
    - #link(<UC1.5>)[#underline[\[UC1.5\]]] // Inserimento Password
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1", "UC1 - Registrazione")
]

==== UC1.1: Inserimento nome <UC1.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - Il nome inserito dall'utente è idoneo alla procedura di registrazione
  ],
  scenari: [
    - L'utente inserisce il nome per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC1.1.1>)[#underline[\[UC1.1.1\]]] // Nome inserito non conforme ai vincoli di formato
  ],
  trigger: "L'utente interagisce con la sezione di inserimento del nome durante la procedura di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1_1", "UC1.1 - Inserimento nome")
]

===== UC1.1.1: Nome inserito non conforme ai vincoli di formato <UC1.1.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha inserito un nome non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento del nome #link(<UC1.1>)[#underline[\[UC1.1\]]]
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il nome inserito non rispetta i vincoli di formato previsti dal Sistema per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento del nome durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.2: Inserimento cognome <UC1.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - Il cognome inserito dall'utente è idoneo alla procedura di registrazione
  ],
  scenari: [
    - L'utente inserisce il cognome per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC1.2.1>)[#underline[\[UC1.2.1\]]] // Cognome inserito non conforme ai vincoli di formato
  ],
  trigger: "L'utente interagisce con la sezione di inserimento del cognome durante la procedura di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1_2", "UC1.2 - Inserimento cognome")
]

==== UC1.2.1: Cognome inserito non conforme con i vincoli di formato <UC1.2.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha inserito un cognome non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento del cognome #link(<UC1.2>)[#underline[\[UC1.2\]]]
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il cognome inserito non rispetta i vincoli di formato previsti dal Sistema per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento del cognome durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.3: Inserimento username <UC1.3>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - L'username inserita dall'utente è idoneo alla procedura di registrazione
  ],
  scenari: [
    - L'utente inserisce l'username per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC1.3.1>)[#underline[\[UC1.3.1\]]] // Username non conforme ai vincoli di formato
    - #link(<UC1.3.2>)[#underline[\[UC1.3.2\]]] // Username già censita dal Sistema
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1_3", "UC1.3 - Inserimento username")
]

==== UC1.3.1: Username non conforme ai vincoli di formato <UC1.3.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha inserito un username non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento dell'username #link(<UC1.3>)[#underline[\[UC1.3\]]]
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'username inserito non rispetta i vincoli di formato previsti dal Sistema (es. lunghezza, simboli ammessi)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento dell'username durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.3.2: Username inserito già censito dal Sistema <UC1.3.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha inserito un username già censito dal Sistema durante l'inserimento dell'username #link(<UC1.3>)[#underline[\[UC1.3\]]]
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'username inserita non è disponibile (per motivi di sicurezza, non viene specificato che l'username è già in uso)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento dell'username durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.4: Inserimento email <UC1.4>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - L'email inserita dall'utente è idonea alla procedura di registrazione
  ],
  scenari: [
    - L'utente inserisce l'email per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC1.4.1>)[#underline[\[UC1.4.1\]]] // Email non conforme ai vincoli di formato
    - #link(<UC1.4.2>)[#underline[\[UC1.4.2\]]] // Email già censita dal Sistema
  ],
  trigger: "L'utente conferma l'inserimento dell'email durante la procedura di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1_4", "UC1.4 - Inserimento email")
]

===== UC1.4.1: Email inserita non valida <UC1.4.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha inserito un'email non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento dell'email #link(<UC1.4>)[#underline[\[UC1.4\]]]
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'email inserita non rispetta i vincoli di formato previsti dal Sistema (es. assenza di '@', dominio non valido)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento dell'email durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.4.2: Email inserita già censita dal Sistema <UC1.4.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha inserito un'email già censita dal Sistema durante l'inserimento dell'email #link(<UC1.4>)[#underline[\[UC1.4\]]]
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'email inserita non è disponibile (per motivi di sicurezza, non viene specificato che l'email è già in uso)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento dell'email durante la procedura di registrazione a CodeGuardian"
)[
]

==== UC1.5: Inserimento password <UC1.5>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian censito dal Sistema
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - La password inserita dall'utente è idonea alla procedura di registrazione
  ],
  scenari: [
    - L'utente inserisce la password per la procedura di registrazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC1.5.1>)[#underline[\[UC1.5.1\]]] // Password non conforme ai vincoli di formato
  ],
  trigger: "L'utente conferma l'inserimento della password durante la procedura di registrazione a CodeGuardian"
)[
  #useCaseDiagram("1_5", "UC1.5 - Inserimento password")
]

===== UC1.5.1: Password inserita non conforme ai vincoli di formato <UC1.5.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha inserito una password non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento della password #link(<UC1.5>)[#underline[\[UC1.5\]]]
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che la password inserita non rispetta i vincoli di formato previsti dal Sistema (es. lunghezza minima, presenza di lettere maiuscole, numeri, simboli)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento della password durante la procedura di registrazione a CodeGuardian"
)[
]

=== UC2: Autenticazione a CodeGuardian <UC2>
#useCase(
  attore: "Utente registrato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema,
      avendo già completato la procedura di registrazione a CodeGuardian
      #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente ha selezionato la sezione di autenticazione di CodeGuardian
  ],
  post: [
    - L'utente è autenticato al Sistema CodeGuardian e può accedere alle funzionalità
      riservate agli utenti autenticati
  ],
  scenari: [
    - L'utente inserisce il proprio username
      #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - L'utente inserisce la propria password
      #link(<UC2.2>)[#underline[\[UC2.2\]]]
  ],
  inclusioni: [
    - #link(<UC2.1>)[#underline[\[UC2.1\]]] // Inserimento username
    - #link(<UC2.2>)[#underline[\[UC2.2\]]] // Inserimento password
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di autenticazione di CodeGuardian"
)[
  #useCaseDiagram("2", "UC2 - Autenticazione")
]

==== UC2.1: Inserimento username <UC2.1>
#useCase(
  attore: "Utente registrato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema,
      avendo già completato la procedura di registrazione a CodeGuardian
      #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
      #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - L'username inserito dall'utente è idoneo alla procedura di autenticazione
  ],
  scenari: [
    - L'utente inserisce l'username per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC2.1.1>)[#underline[\[UC2.1.1\]]] // Username non conforme ai vincoli di formato
    - #link(<UC2.1.2>)[#underline[\[UC2.1.2\]]] // Username non censito dal Sistema
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di autenticazione a CodeGuardian"
)[
  #useCaseDiagram("2_1", "UC2.1 - Inserimento username")
]


===== UC2.1.1: Username non conforme ai vincoli di formato <UC2.1.1>
#useCase(
  attore: "Utente registrato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema
      #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
      #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha inserito un username non conforme ai vincoli di formato previsti dal Sistema
      durante l'inserimento dell'username
      #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato
      di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'username inserito
      non rispetta i vincoli di formato previsti dal Sistema per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento dell'username durante la procedura di autenticazione a CodeGuardian"
)[
]

===== UC2.1.2: Username non censito dal Sistema <UC2.1.2>
#useCase(
  attore: "Utente registrato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema
      #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
      #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha inserito un username conforme ai vincoli di formato ma non censito dal Sistema
      durante l'inserimento dell'username
      #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato
      di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che le credenziali inserite
      non sono valide per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma inserimento dell'username durante la procedura di autenticazione a CodeGuardian"
)[
]

==== UC2.2: Inserimento password <UC2.2>
#useCase(
  attore: "Utente registrato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema,
      avendo già completato la procedura di registrazione a CodeGuardian
      #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
      #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha inserito un username idoneo alla procedura di autenticazione
      #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - La password inserita dall'utente è idonea alla procedura di autenticazione
  ],
  scenari: [
    - L'utente inserisce la password per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC2.2.1>)[#underline[\[UC2.2.1\]]] // Password non conforme ai vincoli di formato
    - #link(<UC2.2.2>)[#underline[\[UC2.2.2\]]] // Password non corretta
  ],
  trigger: "L'utente interagisce con la sezione di inserimento della password durante la procedura di autenticazione a CodeGuardian"
)[
  #useCaseDiagram("2_2", "UC2.2 - Inserimento password")
]

===== UC2.2.1: Password non conforme ai vincoli di formato <UC2.2.1>
#useCase(
  attore: "Utente registrato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema
      #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
      #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha inserito una password non conforme ai vincoli di formato previsti dal Sistema
      durante l'inserimento della password
      #link(<UC2.2>)[#underline[\[UC2.2\]]]
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato
      di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che la password inserita
      non rispetta i vincoli di formato previsti dal Sistema per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento della password durante la procedura di autenticazione a CodeGuardian"
)[
]

===== UC2.2.2: Password non corretta <UC2.2.2>
#useCase(
  attore: "Utente registrato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito dal Sistema
      #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
      #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha inserito un username idoneo alla procedura di autenticazione
      #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - L'utente ha inserito una password conforme ai vincoli di formato ma non corretta
      rispetto all'username inserito
      #link(<UC2.2>)[#underline[\[UC2.2\]]]
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato
      di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che le credenziali inserite
      non sono valide per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento della password durante la procedura di autenticazione a CodeGuardian"
)[
]

=== UC3: Collegamento account CodeGuardian ad account GitHub <UC3>

=== UC4: Richiesta analisi repository GitHub <UC4>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - Il Sistema ha avviato l'analisi del repository GitHub specificato dall'utente
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub da analizzare
    - L'utente seleziona le aree di interesse per l'analisi (solo codice o entrambe (codice e documentazione)) 
    - L'utente invia la richiesta di analisi al sistema
  ],
  inclusioni: [
    - Inserimento URL repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]] // Inserimento URL repository GitHub
    - Selezione aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]] // Selezione aree di interesse
    - Invio richiesta di analisi #link(<UC4.3>)[#underline[\[UC4.3\]]] // Invio richiesta di analisi
  ],
  estensioni: [
    - nessuna
  ],
  trigger: "L'utente accede alla sezione di richiesta analisi repository GitHub di CodeGuardian"
)[
  //#useCaseDiagram("4", "UC4 - Richiesta analisi repository GitHub")
]

==== UC4.1: Inserimento URL repository GitHub <UC4.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - Il Sistema ha validato l'URL del repository GitHub inserito dall'utente
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub da analizzare
    
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC4.1.1>)[#underline[\[UC4.1.1\]]] // URL repository GitHub non valido
    - #link(<UC4.1.2>)[#underline[\[UC4.1.2\]]] // repository GitHub non accessibile
    - #link(<UC4.1.3>)[#underline[\[UC4.1.3\]]] // repository GitHub non inserito
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'URL del repository GitHub durante la procedura di richiesta analisi repository GitHub a CodeGuardian"
)[
  //#useCaseDiagram("4_1", "UC4.1 - Inserimento URL repository GitHub")
]

===== UC4.1.1: URL repository GitHub non valido <UC4.1.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub non valido durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'URL del repository GitHub inserito non è valido per la procedura di richiesta analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'URL del repository GitHub durante la procedura di richiesta analisi repository GitHub a CodeGuardian" 
)[]

===== UC4.1.2: Repository GitHub non accessibile <UC4.1.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub non accessibile durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il repository GitHub specificato non è accessibile per la procedura di richiesta analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'URL del repository GitHub durante la procedura di richiesta analisi repository GitHub a CodeGuardian"
)[
]

===== UC4.1.3: Repository GitHub non inserito <UC4.1.3>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente non ha inserito alcun URL del repository GitHub durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere inserito un URL del repository GitHub per procedere con la richiesta di analisi del repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'URL del repository GitHub durante la procedura di richiesta analisi repository GitHub a CodeGuardian"
)[]

==== UC4.2: Selezione aree di interesse <UC4.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub valido durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - L'utente ha selezionato le aree di interesse per l'analisi (solo codice o entrambe)
  ],
  scenari: [
    - L'utente seleziona le aree di interesse per l'analisi (solo codice o entrambe)
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC4.2.1>)[#underline[\[UC4.2.1\]]] // nessuna area di interesse selezionata
  ],
  trigger: "L'utente interagisce con la sezione di selezione delle aree di interesse durante la procedura di richiesta analisi repository GitHub a CodeGuardian"
)[]

===== UC4.2.1: Nessuna area di interesse selezionata <UC4.2.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub valido durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente non ha selezionato alcuna area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionata almeno
      un'area di interesse per procedere con la richiesta di analisi del repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione delle aree di interesse durante la procedura di richiesta analisi repository GitHub a CodeGuardian"
)[]

==== UC4.3: Invio richiesta di analisi <UC4.3>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub valido durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
  ],
  post: [
    - Il Sistema ha avviato l'analisi del repository GitHub specificato dall'utente
  ],
  scenari: [
    - L'utente invia la richiesta di analisi al sistema
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di invio della richiesta di analisi durante la procedura di richiesta analisi repository GitHub a CodeGuardian"
)[]


=== UC5: Visualizzazione report analisi repository GitHub <UC5>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
  ],
  post: [
    - L'utente ha visualizzato il report dell'analisi del repository GitHub richiesto
  ],
  scenari: [
    - L'utente accede alla sezione di visualizzazione del report di analisi
    - L'utente seleziona il report di analisi del repository GitHub di interesse
    - L'utente seleziona i dati specifici da visualizzare nel report di analisi
    - L'utente seleziona se visualizzare i dettagli del singolo report o il rapporto rispetto ai report precedenti
    - L'utente visualizza il report di analisi del repository GitHub richiesto
  ],
  inclusioni: [
    - Accesso sezione visualizzazione report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]] // Accesso sezione visualizzazione report di analisi
    - Selezione report di analisi #link(<UC5.2>)[#underline[\[UC5.2\]]] // Selezione report di analisi
    - Selezione dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]] // Selezione dati specifici da visualizzare nel report
    - Selezione modalità visualizzazione report #link(<UC5.4>)[#underline[\[UC5.4\]]] // Selezione modalità visualizzazione report
    - Visualizzazione report di analisi #link(<UC5.5>)[#underline[\[UC5.5\]]] // Visualizzazione report di analisi
  ],
  estensioni: [
    - nessuna
  ],
  trigger: "L'utente accede alla sezione di visualizzazione del report di analisi repository GitHub di CodeGuardian"
)[
  //#useCaseDiagram("5", "UC5 - Visualizzazione report analisi repository GitHub")
]

==== UC5.1: Accesso sezione visualizzazione report di analisi <UC5.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
  ],
  post: [
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi
  ],
  scenari: [
    - L'utente accede alla sezione di visualizzazione del report di analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di visualizzazione del report di analisi repository GitHub di CodeGuardian"
)[] 

==== UC5.2: Selezione report di analisi <UC5.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  post: [
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse
  ],
  scenari: [
    - L'utente seleziona il report di analisi del repository GitHub di interesse
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessun report di analisi disponibile per il repository GitHub selezionato #link(<UC5.2.1>)[#underline[\[UC5.2.1\]]] // nessun report selezionato
    - Nessun report selezionato #link(<UC5.2.2>)[#underline[\[UC5.2.2\]]] // nessun report selezionato

  ],
  trigger: "L'utente interagisce con la sezione di selezione del report di analisi repository GitHub di CodeGuardian"
)[] 

===== UC5.2.1: Nessun report di analisi disponibile per il repository GitHub selezionato <UC5.2.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - Non sono disponibili report di analisi per il repository GitHub selezionato
  ],
  post: [
    - L'utente non può procedere con la selezione del report di analisi del repository GitHub di interesse
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che non sono disponibili report di analisi
      per il repository GitHub selezionato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione del report di analisi repository GitHub di CodeGuardian"
)[]

===== UC5.2.2: Nessun report selezionato <UC5.2.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione del report di analisi del repository GitHub di interesse
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve selezionare un report di analisi per poter procedere con la visualizzazione del report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione del report di analisi repository GitHub di CodeGuardian"
)[]

==== UC5.3: Selezione dati specifici da visualizzare nel report <UC5.3> 
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - L'utente ha selezionato i dati specifici da visualizzare nel report
  ],
  scenari: [
    - L'utente seleziona i dati specifici da visualizzare nel report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessun dato specifico selezionato #link(<UC5.3.1>)[#underline[\[UC5.3.1\]]] // nessun dato selezionato
  ],
  trigger: "L'utente interagisce con la sezione di selezione dei dati specifici da visualizzare nel report di analisi repository GitHub di CodeGuardian"
)[]

===== UC5.3.1: Nessun dato specifico selezionato <UC5.3.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione dei dati specifici da visualizzare nel report
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve selezionare almeno
      un dato specifico da visualizzare nel report per poter procedere con la visualizzazione del report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione dei dati specifici da visualizzare nel report di analisi repository GitHub di CodeGuardian"
)[] 

==== UC5.4: Selezione modalità visualizzazione report <UC5.4>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - L'utente ha selezionato la modalità di visualizzazione del report di analisi
  ],
  scenari: [
    - L'utente seleziona se visualizzare i dettagli del singolo report o il rapporto rispetto ai report precedenti
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna modalità di visualizzazione selezionata #link(<UC5.3.1>)[#underline[\[UC5.3.1\]]] // nessuna modalità selezionata
  ],
  trigger: "L'utente interagisce con la sezione di selezione della modalità di visualizzazione del report di analisi repository GitHub di CodeGuardian"
)[] 

===== UC5.4.1: Nessuna modalità di visualizzazione selezionata <UC5.4.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione della modalità di visualizzazione del report di analisi
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve selezionare una modalità di visualizzazione per poter procedere con la visualizzazione del report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione della modalità di visualizzazione del report di analisi repository GitHub di CodeGuardian"
)[]

==== UC5.5: Visualizzazione report di analisi <UC5.5>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha richiesto l'analisi di un repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
    - Il Sistema ha completato l'analisi del repository GitHub richiesto dall'utente
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente ha selezionato la modalità di visualizzazione del report di analisi #link(<UC5.3>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente ha visualizzato il report dell'analisi del repository GitHub richiesto
  ],
  scenari: [
    - L'utente visualizza il report di analisi del repository GitHub richiesto
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di visualizzazione del report di analisi repository GitHub di CodeGuardian"
)[] 

==== UC6: Accesso al profilo CodeGuardian <UC6>
==== UC7: modifica password profilo CodeGuardian <UC7>
==== UC8: Recupero password profilo CodeGuardian <UC8>

= Requisiti
In questa sezione sono elencati i requisiti del sistema CodeGuardian individuati da Skarab Grouop

== Requisiti funzionali
#figure(
  table(
    columns: (1fr, 3fr, 1fr),
    inset: 5pt,
    stroke: 0.5pt + luma(200),
    
    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.even(row) {
      luma(220)
    },

    align: (col, row) => (
      (
        center,
        center,
        left,
      ).at(col)
        + horizon
    ),

    table.header([*ID*], [*Descrizione*], [*Use cases di riferimento*],),
    ["RF1"], ["L'utente non registrato può registrarsi a CodeGuardian fornendo le informazioni richieste dal sistema."], ["#link(<UC1>)[#underline[\[UC1\]]]"],
    ["RF2"], ["L'utente registrato può autenticarsi a CodeGuardian fornendo le proprie credenziali."], ["#link(<UC2>)[#underline[\[UC2\]]]"],
    ["RF3"], ["L'utente autenticato avanzato può richiedere l'analisi di un repository GitHub collegato al proprio account CodeGuardian."], ["#link(<UC4>)[#underline[\[UC4\]]]"],
    ["RF4"], ["L'utente autenticato avanzato può visualizzare il report dell'analisi del repository GitHub richiesto."], ["#link(<UC5>)[#underline[\[UC5\]]]"],
  )
)
   
