#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/useCaseUtil.typ": *

#let UAA = "Utente autenticato avanzato"

//Note sul versionamento
/*
  x.y.z
  La X si modifica solamente a documento completo
  La Y si modifica solo quando vengono aggiunti nuovi elementi
  La Z si modifica solo quando si modificano elementi già esistenti

  Si raccomanda di modificare sempre questo valore quando si lavora su un qualunque file
*/
#let versione = "v0.14.0"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2025/12/29",
    "0.14.0",
    "Spunti su UC3, requisiti UC3, numerazione automatica requisiti",
    members.kevin
  ),
  (
    "2025/12/28",
    "0.13.0",
    "Requisiti per UC1 e UC2",
    members.suar,
    members.kevin
  ),
  (
    "2025/12/28",
    "0.12.0",
    "Aggiunti diagrammi UC9 e UC12",
    members.kevin,
    members.suar
  ),
  (
    "2025/12/27",
    "0.11.0",
    "Diagrammi UC3. Modificato UC4 e aggiunti diagrammi. Rivalutare UC5 per maggiore chiarezza",
    members.suar,
    members.kevin
  ),
  (
    "2025/12/27",
    "0.10.0",
    "Aggiunta UC da 7 a 12 con relativi sotto casi d'uso, aggiunta estensioni per UC4.3",
    members.kevin,
    members.suar
  ),
  (
    "2025/12/24",
    "0.9.0",
    "Aggiunto UC3",
    members.suar,
    members.kevin
  ),
  (
    "2025/12/24",
    "0.8.0",
    "Correzioni minori ai casi d'uso UC 1.5.1, aggiunto UC5.5, aggiornamento numerazione UC 5.X, Aggiunta UC6",
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

=== UC3: Collegamento account CodeGuardian con account GitHub <UC3>
#useCase(
  attore: "Utente autenticato",
  attori_secondari: "GitHub",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - L'utente è autenticato al sistema CodeGuardian e ha abilitato la condivisione di informazioni con GitHub
  ],
  scenari: [
    - L'utente accede alla sezione dedicata al collegamento del proprio account GitHub
    - L'utente visualizza l’avviso di reindirizzamento verso GitHub #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - L'utente viene rimandato a GitHub per completare l’autorizzazione #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  inclusioni: [
    - #link(<UC3.1>)[#underline[\[UC3.1\]]] // Visualizzazione avviso redirect
    - #link(<UC3.2>)[#underline[\[UC3.2\]]] // Reindirizzamento a GitHub e ricezione codice identificativo
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente autenticato seleziona la sezione di collegamento account GitHub in CodeGuardian"
)[
  #useCaseDiagram("3", "UC3 - Collegamento account CodeGuardian con account GitHub")
]

==== UC3.1: Visualizzazione avviso redirect <UC3.1>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha selezionato la sezione di collegamento account GitHub in CodeGuardian
  ],
  post: [
    - L'utente ha confermato di essere consapevole che verrà rimandato a GitHub per l’autorizzazione
  ],
  scenari: [
    - L'utente visualizza l’avviso di redirect verso GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC3.1.1>)[#underline[\[UC3.1.1\]]] // L’utente rifiuta il collegamento
  ],
  trigger: "L'utente visualizza la sezione di collegamento account e interagisce con il messaggio di avviso"
)[
  #useCaseDiagram("3_1", "UC3.1 - Visualizzazione avviso redirect")
]

===== UC3.1.1: Utente rifiuta il collegamento a GitHub <UC3.1.1>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente sta eseguendo la procedura di collegamento dell'account di CodeGuardian con l'account di GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha interagito con l'avviso di reindirizzamento a GitHub, rifiutando il collegamento #link(<UC3.1>)[#underline[\[UC3.1\]]]
  ],
  post: [
    - La procedura di collegamento non viene finalizzata e l'utente ritorna alla sezione di collegamento account GitHub
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che il collegamento degli account non è stato completato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona l’opzione di annullamento nel messaggio di avviso"
)[
]

==== UC3.2: Reindirizzamento a GitHub e ricezione codice identificativo <UC3.2>
#useCase(
  attore: "Utente autenticato",
  attori_secondari: "GitHub",
  pre: [
    - L'utente ha confermato di voler essere reindirizzato a GitHub #link(<UC3.1>)[#underline[\[UC3.1\]]]
  ],
  post: [
    - Il codice identificativo ricevuto da GitHub è associato alle credenziali dell’utente CodeGuardian
  ],
  scenari: [
    - L'utente viene reindirizzato a GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC3.2.1>)[#underline[\[UC3.2.1\]]] // Codice non ricevuto
    - #link(<UC3.2.2>)[#underline[\[UC3.2.2\]]] // Codice già associato a un altro utente
    - #link(<UC3.2.3>)[#underline[\[UC3.2.3\]]] // Codice non conforme
  ],
  trigger: "L'utente conferma il collegamento e viene reindirizzato a GitHub"
)[
  #useCaseDiagram("3_2", "UC3.2 - Reindirizzamento a GitHub e ricezione codice identificativo")
]

===== UC3.2.1: Codice GitHub non ricevuto dal Sistema <UC3.2.1>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente ha completato la sezione di reindirizzamento a GitHub #link(<UC3.2>)[#underline[\[UC3.2\]]]
    - L'utente non ha autorizzato GitHub a condividere le informazioni necessarie con CodeGuardian
  ],
  post: [
    - La procedura di collegamento account GitHub non viene finalizzata e il Sistema rimane nello stato di attesa di un nuovo tentativo
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che non è stato possibile ricevere il codice identificativo del profilo GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema rileva che non è stato ricevuto alcun codice da GitHub al termine della procedura di autorizzazione"
)[
]

===== UC3.2.2: Codice già associato ad un altro utente censito dal Sistema <UC3.2.2>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente ha completato la sezione di reindirizzamento a GitHub #link(<UC3.2>)[#underline[\[UC3.2\]]]
    - Il codice identificativo ricevuto da GitHub è già associato a un altro account CodeGuardian nel sistema
  ],
  post: [
    - La procedura di collegamento account GitHub non viene finalizzata e il Sistema rimane nello stato di attesa di un nuovo tentativo
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il codice ricevuto è già associato a un altro account CodeGuardian
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema rileva che il codice identificativo ricevuto da GitHub è già presente nel database associato a un altro account"
)[
]

===== UC3.2.3: Codice non conforme ai vincoli di formato <UC3.2.3>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente ha completato la sezione di reindirizzamento a GitHub #link(<UC3.2>)[#underline[\[UC3.2\]]]
    - Il codice identificativo ricevuto da GitHub non rispetta il formato previsto dal sistema
  ],
  post: [
    - La procedura di collegamento account GitHub non viene finalizzata e il Sistema rimane nello stato di attesa di un nuovo tentativo
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il codice ricevuto non è conforme al formato previsto
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema rileva che il codice identificativo ricevuto da GitHub non è conforme al formato previsto"
)[
]

=== UC4: Richiesta analisi repository GitHub <UC4>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian
      ad un account GitHub e ha abilitato la condivisione di informazioni
      #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - La richiesta di analisi del repository GitHub è stata correttamente
      inoltrata al Sistema
  ],
  scenari: [
    - L'utente accede alla sezione dedicata alla richiesta di analisi
      di un repository GitHub
    - L'utente inserisce l'URL del repository GitHub da analizzare
      #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente seleziona le aree di interesse per l’analisi
      #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente conferma l'invio della richiesta di analisi
      #link(<UC4.3>)[#underline[\[UC4.3\]]]
  ],
  inclusioni: [
    - #link(<UC4.1>)[#underline[\[UC4.1\]]] // Inserimento URL repository GitHub
    - #link(<UC4.2>)[#underline[\[UC4.2\]]] // Selezione aree di interesse
    - #link(<UC4.3>)[#underline[\[UC4.3\]]] // Invio richiesta di analisi
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di richiesta analisi repository 
            GitHub in CodeGuardian"
)[
  #useCaseDiagram("4", "UC4 - Richiesta analisi repository GitHub")
]

==== UC4.1: Inserimento URL repository GitHub <UC4.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian
      ad un account GitHub e ha abilitato la condivisione di informazioni
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi
      di un repository GitHub
      #link(<UC4>)[#underline[\[UC4\]]]
  ],
  post: [
    - L'URL del repository GitHub inserito dall'utente è idoneo
      alla procedura di analisi
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub da analizzare
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC4.1.1>)[#underline[\[UC4.1.1\]]] // URL repository GitHub non conforme
    - #link(<UC4.1.2>)[#underline[\[UC4.1.2\]]] // Repository GitHub non accessibile
  ],
  trigger: "L'utente conferma l'inserimento dell'URL del repository GitHub
            durante la procedura di richiesta analisi"
)[
  #useCaseDiagram("4_1", "UC4.1 - Inserimento URL repository GitHub")
]

===== UC4.1.1: URL repository GitHub non conforme ai vincoli di formato <UC4.1.1>
#useCase(
  attore: "Utente autenticato e avanzato",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian
      ad un account GitHub e ha abilitato la condivisione di informazioni
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi
      di un repository GitHub
      #link(<UC4>)[#underline[\[UC4\]]]
    - L'utente ha inserito un URL non conforme ai vincoli di formato
      previsti per l'inserimento dell'URL del repository GitHub
      #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - La procedura di richiesta analisi non viene finalizzata e il Sistema
      rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'URL
      inserito non è valido per la procedura di analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento di un URL del repository GitHub
            non conforme ai vincoli di formato"
)[]

===== UC4.1.2: Repository GitHub non accessibile <UC4.1.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      e ha abilitato la condivisione di informazioni
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
      #link(<UC4>)[#underline[\[UC4\]]]
    - L'utente ha inserito un URL del repository GitHub non accessibile
      #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata
      e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il repository GitHub
      specificato non è accessibile per la procedura di richiesta analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento dell'URL del repository GitHub non accessibile
            durante la procedura di richiesta analisi"
)[]

===== UC4.1.3: Repository GitHub non inserito <UC4.1.3>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      e ha abilitato la condivisione di informazioni
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
      #link(<UC4>)[#underline[\[UC4\]]]
    - L'utente non ha inserito alcun URL del repository GitHub
      #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata
      e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere inserito
      un URL del repository GitHub per procedere con la richiesta di analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'invio senza inserire alcun URL durante la procedura di richiesta analisi repository GitHub"
)[]

==== UC4.2: Selezione aree di interesse <UC4.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      e ha abilitato la condivisione di informazioni
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi
      di un repository GitHub
      #link(<UC4>)[#underline[\[UC4\]]]
    - L'utente ha inserito un URL del repository GitHub valido
      #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - L'utente ha selezionato le aree di interesse del repository GitHub da analizzare,
      specificando se includere solo il codice, solo la documentazione,
      o sia il codice che la documentazione
  ],
  scenari: [
    - L'utente seleziona le aree del repository GitHub da analizzare, indicando se includere
      solo il codice o sia il codice che la documentazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC4.2.1>)[#underline[\[UC4.2.1\]]] // Nessuna area di interesse selezionata
  ],
  trigger: "L'utente conferma la selezione delle aree del repository GitHub da analizzare
            durante la procedura di richiesta analisi repository GitHub"
)[
  #useCaseDiagram("4_2", "UC4.2: Selezione aree di interesse")
]

===== UC4.2.1: Nessuna area di interesse selezionata <UC4.2.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      e ha abilitato la condivisione di informazioni
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub valido
      #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente non ha selezionato alcuna area di interesse durante la selezione delle aree di interesse
      #link(<UC4.2>)[#underline[\[UC4.2\]]]
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionata almeno
      un'area di interesse (codice o documentazione) per procedere con la richiesta di analisi del repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma la selezione delle aree del repository GitHub da analizzare durante la procedura di richiesta analisi repository GitHub"
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
    - Ultimo report up-to-date #link(<UC4.3.1>)[#underline[\[UC4.3.1\]]] 
    - Ultimo report in elaborazione #link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]
  ],
  trigger: "L'utente interagisce con la sezione di invio della richiesta di analisi durante la procedura di richiesta analisi repository GitHub a CodeGuardian"
)[
  #useCaseDiagram("4_3", "UC4.3: Invio richiesta di analisi")
]

==== UC4.3.1: Ultimo report up-to-date <UC4.3.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub valido durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente invia la richiesta di analisi al sistema #link(<UC4.3>)[#underline[\[UC4.3\]]]
    - Il sistema rileva che l'ultimo report di analisi del repository GitHub specificato è già aggiornato rispetto all'ultima modifica del repository stesso
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata in quanto l'analisi risulta già aggiornata
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che l'analisi del repository GitHub specificato è già aggiornata e non è necessario avviare una nuova analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema rileva che l'ultimo report di analisi del repository GitHub specificato è già aggiornato rispetto all'ultima modifica del repository stesso"
)[
]

==== UC4.3.2: Ultimo report in elaborazione <UC4.3.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito un URL del repository GitHub valido durante l'inserimento dell'URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente invia la richiesta di analisi al sistema #link(<UC4.3>)[#underline[\[UC4.3\]]]
    - Il sistema rileva che l'ultimo report di analisi del repository GitHub specificato è ancora in elaborazione
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata in quanto l'analisi è ancora in corso
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che l'analisi del repository GitHub specificato è ancora in corso e non è possibile avviare una nuova analisi fino al completamento di quella in corso
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema rileva che l'ultimo report di analisi del repository GitHub specificato è ancora in elaborazione"
)[
]

=== UC5: Visualizzazione report analisi repository GitHub <UC5>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - L'utente ha visualizzato il report dell'analisi del repository GitHub richiesto
  ],
  scenari: [
    - L'utente accede alla sezione di visualizzazione del report di analisi
    - L'utente seleziona il report di analisi specifico del repository GitHub di interesse
    - L'utente seleziona i dati specifici da visualizzare nel report di analisi
    - L'utente seleziona se visualizzare i dettagli del singolo report o il rapporto rispetto ai report precedenti
    - L'utente visualizza il report di analisi del repository GitHub richiesto
  ],
  inclusioni: [
    - Accesso sezione visualizzazione report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]] // Accesso sezione visualizzazione report di analisi
    - Selezione report di analisi #link(<UC5.2>)[#underline[\[UC5.2\]]] // Selezione report di analisi
    - Selezione dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]] // Selezione dati specifici da visualizzare nel report
    - Visualizzazione report di analisi #link(<UC5.4>)[#underline[\[UC5.4\]]] // Visualizzazione report di analisi
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
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
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
  trigger: "L'utente interagisce con il pulsante per accedere alla sezione di visualizzazione del report di analisi repository GitHub di CodeGuardian"
)[] 

==== UC5.2: Selezione report di analisi <UC5.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
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
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
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
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
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
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
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
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
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

==== UC5.4: Visualizzazione report di analisi <UC5.4>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]            
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
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

=== UC6: Scelta intervallo temporale per visualizzazione confronto con report passati <UC6>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente ha selezionato il tasto per la modifica dell'intervallo temporale per il confronto con i report passati
      durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente ha selezionato l'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente seleziona l'intervallo temporale per il confronto con i report passati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessun intervallo temporale selezionato #link(<UC6.1>)[#underline[\[UC6.1\]]]
    - Intervallo temporale non valido #link(<UC6.2>)[#underline[\[UC6.2\]]]
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[]

==== UC6.1: Nessun intervallo temporale selezionato <UC6.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente selezione il tasto per la modifica dell'intervallo temporale per il confronto con i report passati
      durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionato un intervallo temporale
      per poter procedere con il confronto con i report passati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[]

==== UC6.2: Intervallo temporale non valido <UC6.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente selezione il tasto per la modifica dell'intervallo temporale per il confronto con i report passati
      durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'intervallo temporale selezionato non è valido
      per poter procedere con il confronto con i report passati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessun report di analisi disponibile nel periodo selezionato
      #link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]
    - Intervallo temporale incoerente #link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]
    - Intervallo temporale troppo ampio #link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[]

===== UC6.2.1: Nessun report di analisi disponibile nel periodo selezionato <UC6.2.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente selezione il tasto per la modifica dell'intervallo temporale per il confronto con i report passati
      durante la procedura  di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che non sono disponibili report di analisi
      nel periodo selezionato per poter procedere con il confronto con i report passati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[]     

===== UC6.2.2: Intervallo temporale incoerente <UC6.2.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente selezione il tasto per la modifica dell'intervallo temporale per il confronto con i report passati
      durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'intervallo temporale selezionato non è coerente
      per poter procedere con il confronto con i report passati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[] 

===== UC6.2.3: Intervallo temporale troppo ampio <UC6.2.3>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente selezione il tasto per la modifica dell'intervallo temporale per il confronto con i report passati
      durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'intervallo temporale selezionato è troppo ampio
      per poter procedere con il confronto con i report passati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[] 


=== UC7: Visualizzazione grafico comparativo tra report di analisi repository GitHub <UC7>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato l'intervallo temporale per il confronto con i report passati
      #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente ha selezionato il tasto per la visualizzazione del grafico comparativo tra report di analisi repository GitHub
      durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente ha visualizzato il grafico comparativo tra report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza il grafico comparativo tra report di analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di visualizzazione del grafico comparativo tra report di analisi repository GitHub durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[]

=== UC8: visualizzazione tabella comparativa tra report di analisi repository GitHub <UC8>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha selezionato l'intervallo temporale per il confronto con i report passati
      #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente seleziona il tasto per la visualizzazione del grafico comparativo tra report di analisi repository GitHub durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian
      #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente ha visualizzato la tabella comparativa tra report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza la tabella comparativa tra report di analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con la sezione di visualizzazione della tabella comparativa tra report di analisi repository GitHub durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian"
)[]



=== UC9: Visualizzazione valutazione analisi del codice repository GitHub <UC9>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente ha visualizzato la valutazione dell'analisi del codice repository GitHub
  ],
  scenari: [
    - L'utente visualizza la valutazione dell'analisi del codice repository GitHub
  ],
  inclusioni: [
    - Visualizzazione report di analisi statica del codice repository GitHub #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - Visualizzazione analisi librerie e dipendenze del codice repository GitHub #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - Visualizzazione report analisi della sicurezza #def("OWASP") del codice repository GitHub #link(<UC9.3>)[#underline[\[UC9.3\]]]
    - Visualizzazione numero totale di vulnerabilità individuate nel report di analisi codice repository GitHub #link(<UC9.4>)[#underline[\[UC9.4\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa alla valutazione della copertura del codice repository GitHub"
)[
  #useCaseDiagram("9", "UC9 - Visualizzazione valutazione analisi del codice repository GitHub")
]


==== UC9.1: Visualizzazione report analisi statica del codice repository GitHub <UC9.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi statica del codice repository GitHub
  ],
  post: [
    - L'utente ha visualizzato il report di analisi statica del codice repository GitHub
  ],
  scenari: [
    - L'utente visualizza il report di analisi statica del codice repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi statica del codice repository GitHub"
)[]

==== UC9.2: Visualizzazione analisi librerie e dipendenze del codice repository GitHub <UC9.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi librerie e dipendenze del codice repository GitHub
  ],
  post: [
    - L'utente ha visualizzato il report di analisi librerie e dipendenze del codice repository GitHub
  ],
  scenari: [
    - L'utente visualizza il report di analisi librerie e dipendenze del codice repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi librerie e dipendenze del codice repository GitHub"
)[]

==== UC9.3: Visualizzazione report analisi della sicurezza #def("OWASP") del codice repository GitHub <UC9.3>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi della sicurezza OWASP del codice repository GitHub
  ],
  post: [
    - L'utente ha visualizzato il report di analisi della sicurezza OWASP del codice repository GitHub
  ],
  scenari: [
    - L'utente visualizza il report di analisi della sicurezza OWASP del codice repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi della sicurezza OWASP del codice repository GitHub"
)[]

==== UC9.4: Visualizzazione numero totale di vulnerabilità individuate nel report di analisi codice repository GitHub <UC9.4>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi delle vulnerabilità del codice repository GitHub
  ],
  post: [
    - L'utente ha visualizzato il report di analisi delle vulnerabilità del codice repository GitHub
  ],
  scenari: [
    - L'utente visualizza il report di analisi delle vulnerabilità del codice repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi delle vulnerabilità del codice repository GitHub"
)[]

=== UC10: Visualizzazione report analisi della documentazione repository GitHub <UC10>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi della documentazione repository GitHub
  ],
  post: [
    - L'utente ha visualizzato il report di analisi della documentazione repository GitHub
  ],
  scenari: [
    - L'utente visualizza il report di analisi della documentazione repository GitHub
  ],
  inclusioni: [
    - Visualizzazione errori di spelling #link(<UC10.1>)[#underline[\[UC10.1\]]]
    - Visualizzazione completezza della documentazione nei confronti del codice#link(<UC10.2>)[#underline[\[UC10.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi della documentazione repository GitHub"
)[]

==== UC10.1: Visualizzazione errori di spelling <UC10.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi della documentazione repository GitHub #link(<UC10>)[#underline[\[UC10\]]]
  ],
  post: [
    - L'utente ha visualizzato il report di analisi degli errori di spelling della documentazione repository GitHub
  ],
  scenari: [
    - L'utente visualizza il report di analisi degli errori di spelling della documentazione repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi degli errori di spelling della documentazione repository GitHub"
)[]

==== UC10.2: Visualizzazione completezza della documentazione nei confronti del codice <UC10.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi della documentazione repository GitHub #link(<UC10>)[#underline[\[UC10\]]]
  ],
  post: [
    - L'utente ha visualizzato il report di analisi della completezza della documentazione nei confronti del codice repository GitHub
  ],
  scenari: [
    - L'utente visualizza il report di analisi della completezza della documentazione nei confronti del codice repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi della completezza della documentazione nei confronti del codice repository GitHub"
)[]

=== UC11: Visualizzazione numero totale di vulnerabilità individuate nel report di analisi repository GitHub <UC11>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al numero totale di vulnerabilità individuate nel report di analisi repository GitHub
  ],
  post: [
    - L'utente ha visualizzato il numero totale di vulnerabilità individuate nel report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza il numero totale di vulnerabilità individuate nel report di analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [ 
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al numero totale di vulnerabilità individuate nel report di analisi repository GitHub"
)[]

=== UC12: Visualizzazione area metadati di un report di analisi repository GitHub <UC12>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai metadati del report di analisi repository GitHub
  ],
  post: [
    - L'utente ha visualizzato l'area metadati del report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza l'area metadati del report di analisi repository GitHub
  ],
  inclusioni: [
    - Visualizzazione data report analisi repository GitHub #link(<UC12.1>)[#underline[\[UC12.1\]]]
    - Visualizzazione commit analizzati nel report di analisi repository GitHub #link(<UC12.2>)[#underline[\[UC12.2\]]]
    - Visualizzazione richiedente report di analisi repository GitHub #link(<UC12.3>)[#underline[\[UC12.3\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa ai metadati del report di analisi repository GitHub"
)[
  #useCaseDiagram("12", "UC12 - Visualizzazione area metadati di un report di analisi repository GitHub")
]

==== UC12.1: Visualizzazione data report analisi repository GitHub <UC12.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai metadati del report di analisi repository GitHub #link(<UC12>)[#underline[\[UC12\]]]
  ],
  post: [
    - L'utente ha visualizzato la data del report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza la data del report di analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza la data nella sezione relativa ai metadati del report di analisi repository GitHub"
)[]

==== UC12.2: Visualizzazione commit analizzati nel report di analisi repository GitHub <UC12.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai metadati del report di analisi repository GitHub #link(<UC12>)[#underline[\[UC12\]]]
  ],
  post: [
    - L'utente ha visualizzato i commit analizzati nel report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza i commit analizzati nel report di analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza i commit analizzati nella sezione relativa ai metadati del report di analisi repository GitHub"
)[]

==== UC12.3: Visualizzazione richiedente report di analisi repository GitHub <UC12.3>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai metadati del report di analisi repository GitHub #link(<UC12>)[#underline[\[UC12\]]]
  ],
  post: [
    - L'utente ha visualizzato il richiedente del report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza il richiedente del report di analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza il richiedente nella sezione relativa ai metadati del report di analisi repository GitHub"
)[]



=== UCx: Scollegamento account GitHub da CodeGuardian
=== UCx: Accesso al profilo CodeGuardian 
=== UCx: modifica password profilo CodeGuardian 
=== UCx: Recupero password profilo CodeGuardian 

#pagebreak()
= Requisiti
In questa sezione sono elencati i requisiti del sistema CodeGuardian individuati da Skarab Group

#let rf_counter = counter("RF")
#rf_counter.step() //parte da 1

#let RFx = context ([RF#rf_counter.display()#rf_counter.step()])
== Requisiti funzionali
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),

  // Header che si ripete su ogni pagina
  table.header([*ID*], [*Descrizione*], [*Use cases di riferimento*]),

  // Stile righe alternate
  fill: (col, row) => if row == 0 {
    luma(62.75%)
  } else if calc.odd(row) {
    luma(220)
  },

  

  align: (col, row) => (center, left, center).at(col) + horizon,
    // UC1
    [#RFx], [L'utente non registrato deve poter visualizzare ed accedere alla sezione di registrazione di CodeGuardian], [#link(<UC1>)[#underline[\[UC1\]]]],
    
    [#RFx], [L'utente non registrato, durante la procedura di registrazione, deve poter inserire il proprio nome nell'apposito campo di testo], [#link(<UC1.1>)[#underline[\[UC1.1\]]]],
    [#RFx], [Il Sistema, durante l'inserimento del nome, deve rimuovere automaticamente eventuali spazi bianchi superflui all'inizio e alla fine del testo (trimming)], [#link(<UC1.1>)[#underline[\[UC1.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che il nome inserito non contenga caratteri numerici], [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che il nome inserito non contenga caratteri speciali (ad eccezione di apostrofi o trattini)], [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],
    [#RFx], [Il Sistema, in caso di rilevazione di caratteri non ammessi nel nome, deve impedire il proseguimento della registrazione], [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],
    [#RFx], [Il Sistema, in caso di nome non conforme, deve mostrare all'utente un messaggio di errore specifico che indichi il mancato rispetto dei vincoli di formato], [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

    [#RFx], [L'utente non registrato, durante la procedura di registrazione, deve poter inserire il proprio cognome nell'apposito campo di testo], [#link(<UC1.2>)[#underline[\[UC1.2\]]]],
    [#RFx], [Il Sistema, durante l'inserimento del cognome, deve rimuovere automaticamente eventuali spazi bianchi superflui all'inizio e alla fine del testo], [#link(<UC1.2>)[#underline[\[UC1.2\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che il cognome inserito non contenga caratteri numerici], [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che il cognome inserito non contenga caratteri speciali (ad eccezione di apostrofi, trattini o spazi intermadi)], [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],
    [#RFx], [Il Sistema, in caso di rilevazione di caratteri non ammessi nel cognome, deve impedire il proseguimento della registrazione], [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],
    [#RFx], [Il Sistema, in caso di cognome non conforme, deve mostrare all'utente un messaggio di errore specifico che indichi il mancato rispetto dei vincoli di formato], [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

    [#RFx], [L'utente non registrato, durante la procedura di registrazione, deve poter inserire un identificativo univoco (username) nell'apposito campo di testo], [#link(<UC1.3>)[#underline[\[UC1.3\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che l'username abbia una lunghezza compresa tra 4 e 20 caratteri], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che l'username sia composto esclusivamente da caratteri alfanumerici], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],
    [#RFx], [Il Sistema, in caso di username non conforme ai vincoli di formato, deve mostrare all'utente un messaggio di errore specifico], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare l'eventuale presenza dell'username all'interno del database tramite ricerca case-insensitive], [#link(<UC1.3.2>)[#underline[\[UC1.3.2\]]]],
    [#RFx], [Il Sistema, in caso di username già esistente o non disponibile, deve mostrare all'utente un messaggio di errore generico per finalità di sicurezza], [#link(<UC1.3.2>)[#underline[\[UC1.3.2\]]]],
    [#RFx], [Il Sistema, in caso di username non valido o non disponibile, deve impedire il completamento della procedura di registrazione], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]], #link(<UC1.3.2>)[#underline[\[UC1.3.2\]]]],

    [#RFx], [L'utente non registrato, durante la procedura di registrazione, deve poter inserire un indirizzo email di riferimento nell'apposito campo di testo], [#link(<UC1.4>)[#underline[\[UC1.4\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare la validità sintattica dell'email inserita (presenza del carattere '@' e di un dominio valido)], [#link(<UC1.4.1>)[#underline[\[UC1.4.1\]]]],
    [#RFx], [Il Sistema, in caso di email sintatticamente non valida, deve mostrare all'utente un messaggio di errore specifico e impedire il proseguimento della registrazione], [#link(<UC1.4.1>)[#underline[\[UC1.4.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare l'eventuale presenza dell'indirizzo email all'interno del database], [#link(<UC1.4.2>)[#underline[\[UC1.4.2\]]]],
    [#RFx], [Il Sistema, in caso di email già censita o non disponibile, deve mostrare all'utente un messaggio di errore generico per finalità di sicurezza], [#link(<UC1.4.2>)[#underline[\[UC1.4.2\]]]],

    [#RFx], [L'utente non registrato, durante la procedura di registrazione, deve poter inserire una password nell'apposito campo di testo], [#link(<UC1.5>)[#underline[\[UC1.5\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che la password abbia una lunghezza minima di 8 caratteri], [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che la password contenga almeno una lettera maiuscola, una lettera minuscola, un numero e un carattere speciale], [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],
    [#RFx], [Il Sistema, in caso di password non conforme ai vincoli di formato, deve mostrare all'utente un messaggio di errore specifico indicando i criteri non soddisfatti], [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],
    [#RFx], [Il Sistema, in caso di password non valida, deve impedire il completamento della procedura di registrazione mantenendo il Sistema nello stato di inserimento dati], [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],   
    
    [#RFx], [L'utente non registrato, dopo aver compilato i campi richiesti, deve poter inviare il modulo di registrazione tramite un comando di conferma], [#link(<UC1>)[#underline[\[UC1\]]]],
    [#RFx], [Il Sistema, a seguito della validazione positiva di tutti i dati inseriti, deve creare in modo persistente il nuovo profilo utente nel database], [#link(<UC1>)[#underline[\[UC1\]]]],
    [#RFx], [Il Sistema, avvenuta la registrazione, deve inviare una notifica di conferma all'indirizzo email fornito dall'utente], [#link(<UC1>)[#underline[\[UC1\]]]],
    [#RFx], [Il Sistema, completata la registrazione, deve mostrare un messaggio di successo e reindirizzare l'utente alla pagina di login], [#link(<UC1>)[#underline[\[UC1\]]]],
    [#RFx], [Il Sistema deve permettere all'utente di visualizzare in chiaro la password inserita tramite l'interazione con un apposito comando (icona occhio)], [#link(<UC1.5>)[#underline[\[UC1.5\]]]],
    [#RFx], [Il Sistema deve mantenere il comando di conferma registrazione disabilitato finché tutti i campi obbligatori non risultano popolati], [#link(<UC1>)[#underline[\[UC1\]]]],

    [#RFx], [L'utente registrato, nella sezione di autenticazione, deve poter visualizzare i campi di input per username e password], [#link(<UC2>)[#underline[\[UC2\]]]],
    [#RFx], [L'utente registrato, dopo aver inserito le credenziali, deve poter inviare il modulo di autenticazione tramite un comando di conferma], [#link(<UC2>)[#underline[\[UC2\]]]],
    [#RFx], [Il Sistema, a seguito della conferma dell'autenticazione, deve verificare la corrispondenza delle credenziali fornite con quelle censite nel database], [#link(<UC2>)[#underline[\[UC2\]]]],
    [#RFx], [Il Sistema, in caso di esito positivo della verifica delle credenziali, deve autenticare l'utente e permettere l'accesso alle funzionalità riservate], [#link(<UC2>)[#underline[\[UC2\]]]],
    [#RFx], [Il Sistema, avvenuta l'autenticazione, deve reindirizzare l'utente verso la dashboard principale dell'applicazione], [#link(<UC2>)[#underline[\[UC2\]]]],

    [#RFx], [L'utente registrato, durante la procedura di autenticazione, deve poter inserire il proprio username nell'apposito campo di testo], [#link(<UC2.1>)[#underline[\[UC2.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che l'username inserito rispetti i vincoli di formato (4-20 caratteri, alfanumerico)], [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],
    [#RFx], [Il Sistema, in caso di username non conforme al formato, deve mostrare un messaggio di errore e impedire il proseguimento della procedura], [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare l'esistenza dell'username all'interno del database], [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],
    [#RFx], [Il Sistema, in caso di username non presente nel database, deve mostrare all'utente un messaggio di errore generico relativo alle credenziali], [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],
    [#RFx], [Il Sistema deve garantire che i messaggi di errore per username non esistente o credenziali errate siano identici per prevenire l'enumerazione degli account], [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

    [#RFx], [L'utente registrato, durante la procedura di autenticazione, deve poter inserire la propria password nell'apposito campo di testo], [#link(<UC2.2>)[#underline[\[UC2.2\]]]],
    [#RFx], [Il Sistema deve permettere all'utente di visualizzare la password in chiaro durante l'inserimento tramite apposito comando], [#link(<UC2.2>)[#underline[\[UC2.2\]]]],
    [#RFx], [Il Sistema, al momento della conferma dei dati, deve verificare che la password inserita rispetti i vincoli di formato definiti in fase di registrazione], [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],
    [#RFx], [Il Sistema, in caso di password non conforme al formato, deve mostrare all'utente un messaggio di errore specifico], [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],
    [#RFx], [Il Sistema, in caso di password non corrispondente all'username inserito, deve mostrare un messaggio di errore generico relativo alle credenziali], [#link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],
    [#RFx], [Il Sistema, in caso di credenziali errate o non conformi, deve impedire l'accesso e mantenere l'utente nella sezione di autenticazione], [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]], #link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

    [#RFx], [L'utente registrato deve poter collegare un account GitHub al proprio profilo CodeGuardian], [#link(<UC3>)[#underline[\[UC3\]]]],
    [#RFx], [L'utente che vuole collegare un account GitHub a CodeGuardian deve poter avviare la procedura di collegamento tramite un comando dedicato], [#link(<UC3>)[#underline[\[UC3\]]]],
    [#RFx], [L'utente che sta collegando un account GitHub ad uno di CodeGuardian deve essere reindirizzato alla pagina di autenticazione di GitHub per autorizzare l'accesso alle informazioni del proprio account], [#link(<UC3.1>)[#underline[\[UC3.2\]]]],
    [#RFx], [Il Sistema deve permettere all'utente di concedere o negare l'autorizzazione al collegamento con GitHub per il collegamento dell'account], [#link(<UC3.1>)[#underline[\[UC3.1\]]]], 
    [#RFx],[Il Sistema, in caso di mancata autorizzazione da parte dell'utente, deve interrompere la procedura di collegamento e mostrare un messaggio di errore], [#link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],
    [#RFx], [Il Sistema, avvenuto il collegamento dell'account GitHub, deve mostrare un messaggio di conferma all'utente], [/*#link(<UC3.1.2>)[#underline[\[UC3.1.2\]]]*/ #TODO("lo famo o no? (secondo Kevin si)")]

  
)
