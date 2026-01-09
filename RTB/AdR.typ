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
#let versione = "v0.18.0"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2026/01/08",
    "0.18.0",
    "Modificati requisiti relativi a UC14. Aggiunti diagrammi UC14",
    members.alice,
  ),
  (
    "2026/01/06",
    "0.17.0",
    "Casi d'uso UC14, UC14.1, UC14.1.1 e UC14.2. Requisiti relativi a UC14",
    members.alice,
  ),
  (
    "2026/01/04",
    "0.16.0",
    "Aggiunta UC13 e relativi sottocasi",
    members.berengan,
  ),
  (
    "2025/12/30",
    "0.15.1",
    "Piccoli fix e spell corrections",
    members.kevin,
  ),
  (
    "2025/12/29",
    "0.15.0",
    "Classificazione dei requisiti. Requisiti relativi a UC1 - UC5, aggiunta sezione Classificazione Requisiti in Introduzione. Rielaborazione Introduzione per garantire maggiore formalità, diagrammi UC5",
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/29",
    "0.14.0",
    "Spunti su UC3, requisiti UC3, numerazione automatica requisiti",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/28",
    "0.13.0",
    "Requisiti per UC1 e UC2",
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/28",
    "0.12.0",
    "Aggiunti diagrammi UC9 e UC12",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/27",
    "0.11.0",
    "Diagrammi UC3. Modificato UC4 e aggiunti diagrammi. Rivalutare UC5 per maggiore chiarezza",
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/27",
    "0.10.0",
    "Aggiunta UC da 7 a 12 con relativi sotto casi d'uso, aggiunta estensioni per UC4.3",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/24",
    "0.9.0",
    "Aggiunto UC3",
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/24",
    "0.8.0",
    "Correzioni minori ai casi d'uso UC 1.5.1, aggiunto UC5.5, aggiornamento numerazione UC 5.X, Aggiunta UC6",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/23",
    "0.7.0",
    "Correzione UML dei casi d'uso descritti, aggiunti UC2.1.2 e UC2.2.2. Esplicitate le postcondizioni e i trigger degli UC",
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/22",
    "0.6.0",
    "Correzione sezione Introduzione -> riferimenti. Fatti UC2, UC4, UC4.1.2, UC4.1.3 UC5. Inizio stesura Requisiti",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/22",
    "0.5.0",
    "Aggiunti diagrammi dei casi d'uso UC1 e da UC1.1 a UC1.5. Modificate le postcondizioni delle estensioni",
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/22",
    "0.4.0",
    "Completato Introduzione e attori dei casi d'uso e correzione UC1.X",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/22",
    "0.3.1",
    "Leggere correzioni lessicali",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/21",
    "0.3.0",
    "Casi d'uso UC1 e da UC1.1 a UC1.5 (compresi di estensioni)",
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/20",
    "0.2.0",
    "Completamento sezione funzioni del prodotto e caratteristiche degli utenti",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/18",
    "0.1.0",
    "Inizio stesura documento, introduzione, scopo e prospettiva del prodotto",
    members.kevin,
    members.suar,
  ),
  (
    "2025/12/17",
    "0.0.0",
    "Creazione documento",
    members.kevin,
    members.suar,
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

== Classificazione dei Requisiti

Ogni requisito individuato viene classificato secondo due criteri distinti: la *priorità* (importanza strategica) e la *tipologia* (natura tecnica).

==== Classificazione per Priorità
I requisiti sono suddivisi in tre livelli di priorità in base alla loro necessità per il rilascio del sistema:

- #strong("Obbligatori"): Requisiti vincolanti e indispensabili. Il mancato soddisfacimento di anche solo uno di questi requisiti implica che il sistema non è conforme agli obiettivi minimi del progetto (#def("MVP")).
- #strong("Desiderabili"): Requisiti che apportano valore aggiunto al sistema e che sarebbe auspicabile soddisfare, ma la cui omissione non compromette le funzionalità core del prodotto.
- #strong("Opzionali"): Requisiti di importanza marginale o funzionalità avanzate che possono essere implementate solo se le risorse e i tempi lo consentono. Sono candidati ideali per sviluppi futuri (versioni successive alla 1.0).

==== Classificazione per Tipologia
In accordo con lo standard #link(<R2>)[#underline[ISO/IEC/IEEE International Standard - Systems and software engineering -- Life cycle
  processes -- Requirements engineering]], i requisiti sono ulteriormente categorizzati in base alla loro natura tecnica:

- #strong("Funzionali (FR)"): Descrivono i comportamenti specifici del sistema, le reazioni a input determinati e le regole di validazione dei dati ("cosa fa il sistema").
- #strong("Performance (PR)"): Definiscono i vincoli prestazionali, come tempi di risposta, latenza, throughput e capacità di carico.
- #strong("Usabilità (UR)"): Riguardano l'efficacia, l'efficienza e la soddisfazione dell'interazione utente, inclusi aspetti di accessibilità e feedback visivi.
- #strong("Interfaccia (IR)"): Specificano le interazioni logiche e visive con l'utente (elementi UI) e le interfacce verso sistemi esterni (API, protocolli).
- #strong("Logici del Database (LDR)"): Definiscono la struttura dei dati, le modalità di conservazione, i vincoli di integrità e le relazioni tra entità.
- #strong("Vincoli di Design (DC)"): Limitazioni imposte da scelte tecnologiche obbligatorie, standard industriali, protocolli di comunicazione o normative specifiche.
- #strong("Attributi del Software (SSA)"): Caratteristiche di qualità non funzionali critiche, con particolare focus su Sicurezza (cifratura, protezione dati), Affidabilità e Robustezza.

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
=== Riferimenti normativi
- [R1] #strong("IEEE Recommended Practice for Software Requirements Specifications") \
  #underline[https://ieeexplore.ieee.org/document/720574] \
  Ultimo accesso: 22/12/2025 <R1>
- [R2] #strong("ISO/IEC/IEEE International Standard – Systems and software engineering – Life cycle processes – Requirements engineering") \
  #underline[https://ieeexplore.ieee.org/document/8559686] \
  Ultimo accesso: 29/12/2025 <R2>

=== Riferimenti organizzativi e didattici
- [R3] #strong("Dispense del corso di Ingegneria del Software sull'analisi dei requisiti") \
  #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf] \
  Ultimo accesso: 22/12/2025 <R3>
- [R4] #strong("Dispense del corso di Ingegneria del Software sui casi d'uso") \
  #underline[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf] \
  Ultimo accesso: 22/12/2025 <R4>


#pagebreak()

= Casi d'uso
== Introduzione
In questa sezione vengono descritti i #def("casi d'uso") principali del sistema software #def("Code Guardian").
La definizione e la strutturazione dei casi d’uso sono state condotte in conformità alle linee guida e alle buone pratiche descritte negli standard IEEE per la specifica dei requisiti software #link(<R1>)[#underline[\[R1\]]] e per l’ingegneria dei requisiti #link(<R2>)[#underline[\[R2\]]], nonché facendo riferimento al materiale didattico adottato nel corso di Ingegneria del Software #link(<R3>)[#underline[\[R3\]]] #link(<R4>)[#underline[\[R4\]]].

Ogni #def("caso d'uso") è descritto in modo dettagliato, includendo gli attori coinvolti, le precondizioni e postcondizioni, gli scenari principali, nonché eventuali inclusioni ed estensioni.
Inoltre, per ciascun caso d’uso viene fornita una rappresentazione #def("UML") che illustra visivamente le interazioni tra gli attori e il sistema, al fine di migliorare la comprensione del comportamento funzionale del sistema.


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
    table.header([*Campo*], [*Descrizione*]),

    [*Precondizioni*],
    [Lista di elementi fondamentali affinché l'Attore possa compiere l'azione indicata dal caso d'uso],

    [*Attori*],
    [Sono esterni al Sistema e interagiscono attivamente con esso per compiere l'azione descritta dal Caso d'Uso],

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
    table.header([*Attore*], [*Descrizione*]),

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
    [Piattaforma di hosting per lo sviluppo di software che fornisce servizi di controllo versione e collaborazione tramite repository Git.],
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
  trigger: "L'utente accede alla sezione di registrazione a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di inserimento del nome durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento del nome durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di inserimento del cognome durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento del cognome durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento dell'username durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento dell'username durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento dell'email durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento dell'email durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento dell'email durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento della password durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento della password durante la procedura di registrazione a CodeGuardian",
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
  trigger: "L'utente accede alla sezione di autenticazione di CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di autenticazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento dell'username durante la procedura di autenticazione a CodeGuardian",
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
  trigger: "L'utente conferma inserimento dell'username durante la procedura di autenticazione a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di inserimento della password durante la procedura di autenticazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento della password durante la procedura di autenticazione a CodeGuardian",
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
  trigger: "L'utente conferma l'inserimento della password durante la procedura di autenticazione a CodeGuardian",
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
  trigger: "L'utente autenticato seleziona la sezione di collegamento account GitHub in CodeGuardian",
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
  trigger: "L'utente visualizza la sezione di collegamento account e interagisce con il messaggio di avviso",
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
  trigger: "L'utente seleziona l’opzione di annullamento nel messaggio di avviso",
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
  trigger: "L'utente conferma il collegamento e viene reindirizzato a GitHub",
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
  trigger: "Il sistema rileva che non è stato ricevuto alcun codice da GitHub al termine della procedura di autorizzazione",
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
  trigger: "Il sistema rileva che il codice identificativo ricevuto da GitHub è già presente nel database associato a un altro account",
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
  trigger: "Il sistema rileva che il codice identificativo ricevuto da GitHub non è conforme al formato previsto",
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
            GitHub in CodeGuardian",
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
            durante la procedura di richiesta analisi",
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
            non conforme ai vincoli di formato",
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
            durante la procedura di richiesta analisi",
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
  trigger: "L'utente conferma l'invio senza inserire alcun URL durante la procedura di richiesta analisi repository GitHub",
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
            durante la procedura di richiesta analisi repository GitHub",
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
  trigger: "L'utente conferma la selezione delle aree del repository GitHub da analizzare durante la procedura di richiesta analisi repository GitHub",
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
  trigger: "L'utente interagisce con la sezione di invio della richiesta di analisi durante la procedura di richiesta analisi repository GitHub a CodeGuardian",
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
  trigger: "Il sistema rileva che l'ultimo report di analisi del repository GitHub specificato è già aggiornato rispetto all'ultima modifica del repository stesso",
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
  trigger: "Il sistema rileva che l'ultimo report di analisi del repository GitHub specificato è ancora in elaborazione",
)[
]

=== UC5: Visualizzazione report analisi repository GitHub <UC5>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - L'utente ha visualizzato il report di analisi del repository GitHub selezionato
  ],
  scenari: [
    - L'utente accede alla sezione di visualizzazione dei report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente seleziona un report di analisi relativo a un repository GitHub #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente seleziona i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente visualizza il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  inclusioni: [
    - #link(<UC5.1>)[#underline[\[UC5.1\]]] // Accesso sezione visualizzazione report
    - #link(<UC5.2>)[#underline[\[UC5.2\]]] // Selezione report di analisi
    - #link(<UC5.3>)[#underline[\[UC5.3\]]] // Selezione dati specifici
    - #link(<UC5.4>)[#underline[\[UC5.4\]]] // Visualizzazione report
  ],
  estensioni: [
    - #link(<UC5.2.1>)[#underline[\[UC5.2.1\]]] // Nessun report disponibile
    - #link(<UC5.2.2>)[#underline[\[UC5.2.2\]]] // Nessun report selezionato
    - #link(<UC5.3.1>)[#underline[\[UC5.3.1\]]] // Nessun dato selezionato
  ],
  trigger: "L'utente autenticato accede alla funzionalità di visualizzazione dei report di analisi di CodeGuardian",
)[
  #useCaseDiagram("5", "UC5 - Visualizzazione report analisi repository GitHub")
]

==== UC5.1: Accesso alla sezione di visualizzazione dei report di analisi <UC5.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - L'utente visualizza la sezione del proprio account dedicata alla consultazione dei report di analisi dei repository GitHub
  ],
  scenari: [
    - L'utente accede alla propria area personale di CodeGuardian
    - L'utente seleziona la sezione di visualizzazione dei report di analisi dei repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente autenticato seleziona dal proprio account CodeGuardian la sezione dedicata ai report di analisi",
)[
  #useCaseDiagram("5_1", "UC5.1 - Accesso alla sezione di visualizzazione dei report di analisi")
]

==== UC5.2: Selezione report di analisi <UC5.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente si trova nella sezione di visualizzazione dei report di analisi del proprio account
      #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  post: [
    - L'utente ha selezionato un report di analisi associato a un repository GitHub collegato al proprio account
  ],
  scenari: [
    - Il sistema mostra l’elenco dei report di analisi disponibili per i repository GitHub dell’utente
    - L'utente seleziona il report di analisi di interesse
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessun report di analisi disponibile per il repository selezionato
      #link(<UC5.2.1>)[#underline[\[UC5.2.1\]]]
    - Nessun report selezionato
      #link(<UC5.2.2>)[#underline[\[UC5.2.2\]]]
  ],
  trigger: "L'utente interagisce con l’elenco dei report di analisi nella sezione dedicata del proprio account",
)[
  #useCaseDiagram("5_2", "UC5.2: Selezione report di analisi")
]


===== UC5.2.1: Nessun report di analisi disponibile per il repository GitHub selezionato <UC5.2.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account CodeGuardian a GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente si trova nella sezione di visualizzazione dei report di analisi
      #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - Non esistono report di analisi associati al repository GitHub selezionato
  ],
  post: [
    - L'utente non può procedere alla visualizzazione di alcun report di analisi
  ],
  scenari: [
    - Il sistema informa l’utente che non sono disponibili report di analisi per il repository selezionato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema rileva l’assenza di report di analisi per il repository selezionato dall’utente",
)[]


===== UC5.2.2: Nessun report selezionato <UC5.2.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account CodeGuardian a GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente si trova nella sezione di visualizzazione dei report di analisi
      #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  post: [
    - L'utente rimane nella sezione di selezione dei report senza poter procedere
  ],
  scenari: [
    - Il sistema segnala all’utente che è necessario selezionare un report di analisi per proseguire
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente tenta di procedere senza selezionare alcun report di analisi",
)[]


==== UC5.3: Selezione dati specifici da visualizzare nel report <UC5.3>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account CodeGuardian a GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente si trova nella sezione di visualizzazione dei report
      #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato un report di analisi
      #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - L'utente ha definito l’insieme di dati da visualizzare nel report di analisi
  ],
  scenari: [
    - Il sistema presenta le opzioni di visualizzazione dei dati del report
    - L'utente seleziona uno o più dati di interesse
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessun dato specifico selezionato
      #link(<UC5.3.1>)[#underline[\[UC5.3.1\]]]
  ],
  trigger: "L'utente interagisce con le opzioni di configurazione del report nella sezione di visualizzazione",
)[
  #useCaseDiagram("5_3", "UC5.3: Selezione dati specifici da visualizzare nel report")
]

===== UC5.3.1: Nessun dato specifico selezionato <UC5.3.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account CodeGuardian a GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha selezionato un report di analisi
      #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - L'utente non può procedere alla visualizzazione del report
  ],
  scenari: [
    - Il sistema informa l’utente che è necessario selezionare almeno un dato da visualizzare
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente tenta di visualizzare il report senza selezionare alcun dato",
)[]


==== UC5.4: Visualizzazione report di analisi <UC5.4>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account CodeGuardian a GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha selezionato un report di analisi
      #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato i dati da visualizzare
      #link(<UC5.3>)[#underline[\[UC5.3\]]]
  ],
  post: [
    - L'utente visualizza, nella sezione del proprio account, il report di analisi del repository GitHub selezionato
  ],
  scenari: [
    - Il sistema genera la vista del report in base alle preferenze selezionate
    - L'utente consulta il report di analisi nella sezione di visualizzazione del proprio account
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma la visualizzazione del report dalla sezione dedicata del proprio account CodeGuardian",
)[
  #useCaseDiagram("5_4", "UC5.4: Visualizzazione report di analisi")
]


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
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di visualizzazione del grafico comparativo tra report di analisi repository GitHub durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente interagisce con la sezione di visualizzazione della tabella comparativa tra report di analisi repository GitHub durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa alla valutazione della copertura del codice repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi statica del codice repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi librerie e dipendenze del codice repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi della sicurezza OWASP del codice repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi delle vulnerabilità del codice repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi della documentazione repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi degli errori di spelling della documentazione repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi della completezza della documentazione nei confronti del codice repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al numero totale di vulnerabilità individuate nel report di analisi repository GitHub",
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
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa ai metadati del report di analisi repository GitHub",
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
  trigger: "L'utente visualizza la data nella sezione relativa ai metadati del report di analisi repository GitHub",
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
  trigger: "L'utente visualizza i commit analizzati nella sezione relativa ai metadati del report di analisi repository GitHub",
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
  trigger: "L'utente visualizza il richiedente nella sezione relativa ai metadati del report di analisi repository GitHub",
)[]


=== UC13: Disconnessione account GitHub da CodeGuardian<UC13>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha selezionato la sezione di disconnessione dell'account GitHub dal sistema CodeGuardian
  ],
  post: [
    - L'utente ha scollegato con successo il suo accont GitHub dalla piattaforma Codeguardian
  ],
  scenari: [
    - L'utente scollega il proprio account GitHub dalla paiattaforma CodeGuardian
  ],
  inclusioni: [
    - #link(<UC13.1>)[#underline[\[UC13.1\]]] // Conferma disconnessione
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente entra nella sezione Impostazioni > Account > GitHub dell'applicazione e disconnette il proprio account di GitHub dalla piattaforma CodeGuardian",
)[]

==== UC13.1: Selezione tasto Disconnetti <UC13.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha selezionato la sezione di disconnessione dell'account GitHub dal sistema CodeGuardian #link(<UC13>)[#underline[\[UC13\]]]
  ],
  post: [
    - L'utente ha scollegato con successo il suo accont GitHub dalla piattaforma Codeguardian
  ],
  scenari: [
    - L'utente seleziona il tasto "Disconnetti Account
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Conferma finale della disconnessione #link(<UC13.1.1>)[#underline[\[UC13.1.1\]]]

  ],
  trigger: "L'untente seleziona e attiva il tasto disconnetti per disconnettere il proprio account",
)[]

===== UC13.1.1: Conferma disconnessione account<UC13.1.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha selezionato la sezione di disconnessione dell'account GitHub dal sistema CodeGuardian #link(<UC13>)[#underline[\[UC13\]]]
  ],
  post: [
    - L'utente ha disconnesso con successo il proprio account di GitHub dalla piattaforma CodeGuardian
  ],
  scenari: [
    - L'utente visualizza il banner di conferma
    - L'utente conferma la disconessione del proprio account
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona e conferma la disconnessione del proprio account GitHub dalla piattaforma CodeGuardian",
)[]

=== UC14: Esportazione report di analisi repository GitHub <UC14>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  post: [
    - L'utente ha esportato con successo il report di analisi nel formato selezionato
  ],
  scenari: [
    - L'utente seleziona il pulsante "Esporta Report" nella pagina di visualizzazione del report
    - L'utente seleziona il formato di esportazione desiderato #link(<UC14.1>)[#underline[\[UC14.1\]]]
    - L'utente conferma l'esportazione #link(<UC14.2>)[#underline[\[UC14.2\]]]
  ],
  inclusioni: [
    - #link(<UC14.1>)[#underline[\[UC14.1\]]] // Selezione formato di esportazione
    - #link(<UC14.2>)[#underline[\[UC14.2\]]] // Conferma esportazione
  ],
  estensioni: [
    - #link(<UC14.1.1>)[#underline[\[UC14.1.1\]]] // Nessun formato selezionato
  ],
  trigger: "L'utente interagisce con il pulsante di esportazione nella sezione di visualizzazione del report",
)[#useCaseDiagram("14", "UC14 - Esportazione report di analisi repository GitHub")]

==== UC14.1: Selezione formato di esportazione <UC14.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha avviato la procedura di esportazione #link(<UC14>)[#underline[\[UC14\]]]
  ],
  post: [
    - L'utente ha selezionato un formato valido per l'esportazione
  ],
  scenari: [
    - L'utente visualizza la lista dei formati di esportazione disponibili
    - L'utente seleziona il formato desiderato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessun formato selezionato #link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]
  ],
  trigger: "L'utente seleziona il formato dopo aver cliccato il pulsante di esportazione nella sezione di visualizzazione del report",
)[#useCaseDiagram("14_1", "UC14.1 - Selezione formato di esportazione")]

===== UC14.1.1: Nessun formato selezionato <UC14.1.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta eseguendo la procedura di esportazione #link(<UC14>)[#underline[\[UC14\]]]
    - L'utente tenta di procedere senza selezionare un formato #link(<UC14.1>)[#underline[\[UC14.1\]]]
  ],
  post: [
    - La procedura di esportazione non viene finalizzata
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica la necessità di selezionare un formato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'esportazione del report di analisi senza aver selezionato alcun formato valido",
)[]

==== UC14.2: Conferma esportazione <UC14.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha selezionato un formato di esportazione valido #link(<UC14.1>)[#underline[\[UC14.1\]]]
  ],
  post: [
    - L'utente ha completato la richiesta di generazione del file di esportazione
  ],
  scenari: [
    - L'utente conferma l'avvio della procedura di generazione del file
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'esportazione del report di analisi dopo aver selezionato un formato valido",
)[]

=== UC15: modifica password profilo 
#useCase(
  attore:UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente vuole cambiare la password del proprio account
  ],
  post: [
    - L'utente ha cambiato correttamente la propria password
  ],
  scenari: [
    - L'utente è entrato nella sezione Impostazioni
    - L'utente seleziona la sezione "Modifica Password" delle impostazioni
    - L'utente inserisce la password corrente nel primo campo del form di modifica #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - L'utente inserisce la nuova password nel campo del form di modifica sottostante #link(<UC15.2>)[#underline[\[UC15.2\]]]
    - L'utente conferma la modifica della propria password #link(<UC15.3>)[#underline[\[UC15.3\]]]
    - L'utente riceve la conferma dell'avvenuta modifica della propria password #link(<UC15.4>)[#underline[\[UC15.4\]]]
  ],
  inclusioni: [
    - #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - #link(<UC15.2>)[#underline[\[UC15.2\]]]
    - #link(<UC15.3>)[#underline[\[UC15.3\]]]
  ],
  estensioni: [
    - #link(<UC15.1.1>)[#underline[\[UC15.1.1\]]]
    - #link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]
    - #link(<UC15.2.1>)[#underline[\[UC15.2.1\]]]
    - #link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]
    - #link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]
  ],
  trigger: "L'utente inserisce la password attuale, la nuova password ed in seguito clicca il tasto di conferma",

)[]

==== UC15.1 inserimento della password corrente
#useCase(
  attore: UAA,
  pre: [
    - L'utente è entrato nella sezione Impostazioni > Modifica Password #link(<UC15>)[#underline[\[UC15\]]]
  ],
  post: [
    - L'utente ha inserito correttamente la propria password 
  ],
  scenari:[
    - L'utente clicca o tabba sul form di modifica password
    - L'utente digita la password corrente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC15.1.1>)[#underline[\[UC15.1.1 \]]]
    - #link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]
  ],
  trigger: "L'utente interagisce con il form di modifica inserendo la password corrente nell'apposto campo" 
)[]

===== UC15.1.1 Password corrente non inserita
#useCase(
  attore: UAA,
  pre: [
    - L'utente è entrato nella sezione Impostazioni > Modifica Password #link(<UC15>)[#underline[\[UC15\]]]
  ],
  post: [
    - L'utene non può inserire la nuova password nel campo del form
  ],
  scenari:[
    - L'utente prova a cliccare su un altro campo del form
    - L'utente prova a cliccare il tasto di conferma del cambio password
    - L'utente visualizza un messaggio di errore che lo invita ad inserire la password corrente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente prova a cliccare su un altro campo del form o sul tasto di conferma senza aver inserito la password corrente" 
)[]

==== UC15.1.2 Password corrente errata
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha inserito la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
  ],
  post: [
    - All'utente viene impedito di cambiare la propria password
  ],
  scenari:[
    - L'utene inserice una password errata nel form
    - L'utente visualizza un messaggio di errore che lo invita a modificare la password inserita perchè errata
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con il form di modifica inserendo una password errata e visualizza a schermo un errore" 
)[]

==== UC15.2 Inserimento della nuova password
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
  ],
  post: [
    - L'utente può procedere alla conferma della modifica password 
  ],
  scenari:[
    - L'utente inserisce la nuova password all'interno del form di modifica
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC15.2.1>)[#underline[\[UC15.2.1\]]]
    - #link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]
    - #link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]
  ],
  trigger: "L'utente interagisce con il form di modifica inserendo una nuova password" 
)[]

===== UC15.2.1 Nessuna nuova password inserita
#useCase(
 attore: UAA,
 pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
 ],
 post: [
  - L'utente non può procedere alla conferma della modirfica password
 ],
 scenari: [
  - L'utente clicca il tasto di conferma della modifica password
  - L'utente visualizza un errore a schermo che lo invita ad inserire una nuova password prima di confermare
 ],
 inclusioni: [
  - Nessuna
 ],
 estensioni: [
  - Nessuna
 ],
 trigger: "L'utente clicca il tasto di conferma della modifica password"
)[],


===== UC15.2.2 Nuova password non conforme allo standard adottato
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]] 
  ],
  post: [
    - All'utente viene impedito di confermare la modifica della password
  ],
  scenari:[
    - L'utente visualizza a schermo un errore che gli indica il tipo di caratteri da inseire nella nuova password in modo che sia conforme allo standard adottato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con il form di modifica inserendo una nuova password" 
)[]

==== UC15.2.3 Nuova password uguale alla precedente
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]] 
  ],
  post: [
    - All'utente viene impedito di confermare la modifica della password
  ],
  scenari:[
    - L'utente inserisce una password uguale a quella precedente
    - L'utente visualizza un errore a schermo che lo informa dell'ugualianza tra la nuova password e quella precedente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente inserisce la nuova password all'interno dell'apposto campo del form di modifica" 
)[]

=== UCx: Accesso al profilo CodeGuardian
=== UCx: Recupero password profilo CodeGuardian

#pagebreak()
= Requisiti di Sistema
In questa sezione sono elencati i requisiti del sistema CodeGuardian individuati da Skarab Group.

#let fr_counter = counter("FR")
#let pr_counter = counter("PR")
#let ur_counter = counter("UR")
#let ir_counter = counter("IR")
#let lr_counter = counter("LDR")
#let dc_counter = counter("DC")
#let sa_counter = counter("SSA")

#let FRx = context [FR#fr_counter.step()#fr_counter.display()]
#let PRx = context [PR#pr_counter.step()#pr_counter.display()]
#let URx = context [UR#ur_counter.step()#ur_counter.display()]
#let IRx = context [IR#ir_counter.step()#ir_counter.display()]
#let LDRx = context [LDR#lr_counter.step()#lr_counter.display()]
#let DCx = context [DC#dc_counter.step()#dc_counter.display()]
#let SSAx = context [SSA#sa_counter.step()#sa_counter.display()]


//partono da 1
#fr_counter.step()
#pr_counter.step()
#ur_counter.step()
#ir_counter.step()
#lr_counter.step()
#dc_counter.step()
#sa_counter.step()

== Requisiti Funzionali (FR)
Descrivono cosa il sistema deve fare, inclusi i comportamenti, le reazioni a specifici input e le regole di validazione dei dati.
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#FRx],
  [L'utente non registrato, accedendo all'applicazione, deve poter visualizzare la pagina di registrazione],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRx],
  [L'utente non registrato, completata la compilazione, deve poter inviare la richiesta tramite il pulsante di conferma],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRx],
  [Il Sistema, completata la registrazione con successo, deve reindirizzare l'utente alla pagina di Login],
  [#link(<UC1>)[#underline[\[UC1\]]]],
  // UC1.1
  [#FRx],
  [L'utente non registrato, nella schermata di registrazione, deve poter inserire il proprio nome nel campo di testo dedicato],
  [#link(<UC1.1>)[#underline[\[UC1.1\]]]],

  [#FRx],
  [Il Sistema deve rimuovere automaticamente gli spazi bianchi all'inizio e alla fine del nome],
  [#link(<UC1.1>)[#underline[\[UC1.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che il nome non contenga caratteri numerici],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che il nome non contenga caratteri speciali non ammessi],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore visuale specifico se il nome non è valido],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],
  // UC1.2
  [#FRx],
  [L'utente non registrato, nella schermata di registrazione, deve poter inserire il proprio cognome nel campo di testo dedicato],
  [#link(<UC1.2>)[#underline[\[UC1.2\]]]],

  [#FRx],
  [Il Sistema deve rimuovere automaticamente gli spazi bianchi all'inizio e alla fine del cognome],
  [#link(<UC1.2>)[#underline[\[UC1.2\]]]],

  [#FRx],
  [Il Sistema deve verificare che il cognome non contenga caratteri numerici],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che il cognome non contenga caratteri speciali non ammessi],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore visuale specifico se il cognome non è valido],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],
  // UC1.3
  [#FRx],
  [L'utente non registrato, nella schermata di registrazione, deve poter inserire il proprio username nel campo di testo dedicato],
  [#link(<UC1.3>)[#underline[\[UC1.3\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'username abbia una lunghezza minima di 4 caratteri],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'username abbia una lunghezza massima di 20 caratteri],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'username contenga solo caratteri alfanumerici],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore specifico se l'username non rispetta il formato],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore generico se l'username non è disponibile],
  [#link(<UC1.3.2>)[#underline[\[UC1.3.2\]]]],
  //UC1.4
  [#FRx],
  [L'utente non registrato, nella schermata di registrazione, deve poter inserire il proprio indirizzo email nel campo di testo dedicato],
  [#link(<UC1.4>)[#underline[\[UC1.4\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'email contenga il carattere '\@'],
  [#link(<UC1.4.1>)[#underline[\[UC1.4.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'email contenga un dominio valido],
  [#link(<UC1.4.1>)[#underline[\[UC1.4.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore specifico se l'email non rispetta il formato],
  [#link(<UC1.4.1>)[#underline[\[UC1.4.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore generico se l'email non è disponibile],
  [#link(<UC1.4.2>)[#underline[\[UC1.4.2\]]]],
  // UC1.5
  [#FRx],
  [L'utente non registrato, nella schermata di registrazione, deve poter inserire la propria password nel campo di testo dedicato],
  [#link(<UC1.5>)[#underline[\[UC1.5\]]]],

  [#FRx],
  [Il Sistema, durante la digitazione della password, deve nascondere i caratteri inseriti (masking)],
  [#link(<UC1.5>)[#underline[\[UC1.5\]]]],

  [#FRx],
  [L'utente non registrato, durante l'inserimento, deve poter attivare la visualizzazione in chiaro della password],
  [#link(<UC1.5>)[#underline[\[UC1.5\]]]],

  [#FRx],
  [Il Sistema deve verificare che la password abbia una lunghezza minima di 8 caratteri],
  [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che la password contenga almeno una lettera maiuscola],
  [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che la password contenga almeno una lettera minuscola],
  [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che la password contenga almeno un numero],
  [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che la password contenga almeno un carattere speciale],
  [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore specifico se la password non rispetta i criteri],
  [#link(<UC1.5.1>)[#underline[\[UC1.5.1\]]]],

  // UC2
  [#FRx],
  [L'utente registrato, accedendo all'applicazione, deve poter visualizzare la pagina di login],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRx],
  [L'utente registrato, dopo aver inserito le credenziali, deve poter inviare la richiesta tramite pulsante],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRx],
  [Il Sistema, completata l'autenticazione con successo, deve reindirizzare l'utente alla dashboard],
  [#link(<UC2>)[#underline[\[UC2\]]]],
  // UC2.1
  [#FRx],
  [Il Sistema, in caso di autenticazione fallita, deve mostrare un messaggio di errore generico],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]], #link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

  [#FRx],
  [L'utente registrato, nella schermata di login, deve poter inserire il proprio username nel campo dedicato],
  [#link(<UC2.1>)[#underline[\[UC2.1\]]]],

  [#FRx],
  [Il Sistema deve rimuovere automaticamente gli spazi bianchi all'inizio e alla fine dell'username],
  [#link(<UC2.1>)[#underline[\[UC2.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'username abbia una lunghezza compresa tra 4 e 20 caratteri],
  [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'username contenga solo caratteri alfanumerici],
  [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore specifico se il formato username non è valido],
  [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],
  // UC2.2
  [#FRx],
  [L'utente registrato, nella schermata di login, deve poter inserire la propria password nel campo dedicato],
  [#link(<UC2.2>)[#underline[\[UC2.2\]]]],

  [#FRx],
  [Il Sistema, durante la digitazione della password, deve nascondere i caratteri inseriti],
  [#link(<UC2.2>)[#underline[\[UC2.2\]]]],

  [#FRx],
  [L'utente registrato, durante l'inserimento, deve poter attivare la visualizzazione in chiaro della password],
  [#link(<UC2.2>)[#underline[\[UC2.2\]]]],

  [#FRx],
  [Il Sistema deve verificare che la password rispetti i criteri di complessità (lunghezza, caratteri)],
  [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio di errore specifico se il formato password non è valido],
  [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],

  // UC3
  [#FRx],
  [L'utente autenticato deve poter accedere alla sezione di collegamento account GitHub],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRx],
  [Il Sistema deve generare l'URL di autorizzazione corretto per l'OAuth GitHub],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRx],
  [Il Sistema deve gestire il reindirizzamento dell'utente verso il portale esterno],
  [#link(<UC3>)[#underline[\[UC3\]]]],
  // UC3.1
  [#FRx],
  [Il Sistema deve mostrare un avviso informativo prima di reindirizzare l'utente],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRx],
  [L'utente deve poter confermare la volontà di procedere con il collegamento],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRx],
  [L'utente deve poter annullare la procedura tramite comando dedicato],
  [#link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],

  [#FRx],
  [Il Sistema, in caso di annullamento, deve interrompere la procedura],
  [#link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],
  // UC3.2
  [#FRx],
  [Il Sistema deve catturare la richiesta di callback proveniente da GitHub],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  [#FRx],
  [Il Sistema deve estrarre il codice identificativo temporaneo dalla callback],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  [#FRx],
  [Il Sistema deve verificare la presenza del codice nella risposta],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se il codice non è stato ricevuto],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'account GitHub non sia già associato a un altro utente],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRx],
  [Il Sistema deve impedire il collegamento se l'account GitHub risulta già censito],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se l'account GitHub è già associato],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRx],
  [Il Sistema deve verificare la conformità del formato del codice ricevuto],
  [#link(<UC3.2.3>)[#underline[\[UC3.2.3\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se il codice non rispetta il formato],
  [#link(<UC3.2.3>)[#underline[\[UC3.2.3\]]]],

  // UC4
  [#FRx],
  [L'utente autenticato avanzato deve poter accedere alla sezione di richiesta analisi],
  [#link(<UC4>)[#underline[\[UC4\]]]],
  // UC4.1
  [#FRx],
  [L'utente deve poter inserire l'URL del repository GitHub nel campo di testo dedicato],
  [#link(<UC4.1>)[#underline[\[UC4.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che l'URL inizi con il protocollo 'https://'],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRx],
  [Il Sistema deve verificare che il dominio dell'URL sia 'github.com'],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRx],
  [Il Sistema deve verificare l'effettiva esistenza del repository tramite chiamata alle API di GitHub],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRx],
  [Il Sistema deve verificare che il repository sia accessibile (pubblico o autorizzato)],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se l'URL non rispetta il formato],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se il repository non è accessibile o inesistente],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore se il campo URL è vuoto al momento dell'invio],
  [#link(<UC4.1.3>)[#underline[\[UC4.1.3\]]]],
  // UC4.2
  [#FRx],
  [L'utente deve poter selezionare le aree di interesse per l'analisi (Codice, Documentazione)],
  [#link(<UC4.2>)[#underline[\[UC4.2\]]]],

  [#FRx],
  [Il Sistema deve verificare che sia selezionata almeno un'area di interesse],
  [#link(<UC4.2.1>)[#underline[\[UC4.2.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se nessuna area è selezionata],
  [#link(<UC4.2.1>)[#underline[\[UC4.2.1\]]]],
  // UC4.3
  [#FRx],
  [L'utente deve poter inviare la richiesta di analisi tramite pulsante di conferma],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#FRx],
  [Il Sistema deve verificare se esiste già un report di analisi aggiornato per il commit corrente],
  [#link(<UC4.3.1>)[#underline[\[UC4.3.1\]]]],

  [#FRx],
  [Il Sistema deve inibire l'avvio di una nuova analisi se il report esistente è già up-to-date],
  [#link(<UC4.3.1>)[#underline[\[UC4.3.1\]]]],

  [#FRx],
  [Il Sistema deve verificare se un'analisi per lo stesso repository è già in corso di elaborazione],
  [#link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]],

  [#FRx],
  [Il Sistema deve inibire l'avvio di una nuova analisi se ne esiste già una in corso per lo stesso repository],
  [#link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]],

  // UC5
  // UC5.1
  [#FRx],
  [L'utente autenticato avanzato deve poter accedere alla sezione di visualizzazione dei report di analisi],
  [#link(<UC5.1>)[#underline[\[UC5.1\]]]],
  // UC5.2
  [#FRx],
  [Il Sistema deve mostrare l'elenco dei report di analisi disponibili per l'utente],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#FRx],
  [L'utente deve poter selezionare un singolo report dall'elenco per consultarne i dettagli],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#FRx],
  [Il Sistema deve mostrare un messaggio informativo se non sono presenti report per il repository selezionato],
  [#link(<UC5.2.1>)[#underline[\[UC5.2.1\]]]],

  [#FRx],
  [Il Sistema deve impedire la prosecuzione se l'utente tenta di avanzare senza aver selezionato un report],
  [#link(<UC5.2.2>)[#underline[\[UC5.2.2\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se nessun report è selezionato],
  [#link(<UC5.2.2>)[#underline[\[UC5.2.2\]]]],
  // UC5.3
  [#FRx],
  [Il Sistema deve presentare le opzioni di filtraggio dei dati disponibili per il report selezionato],
  [#link(<UC5.3>)[#underline[\[UC5.3\]]]],

  [#FRx],
  [L'utente deve poter selezionare uno o più tipi di dati da includere nella visualizzazione (es. Vulnerabilità, Code Smells)],
  [#link(<UC5.3>)[#underline[\[UC5.3\]]]],

  [#FRx],
  [Il Sistema deve impedire la visualizzazione del report se non è stato selezionato alcun dato],
  [#link(<UC5.3.1>)[#underline[\[UC5.3.1\]]]],

  [#FRx],
  [Il Sistema deve mostrare un errore specifico se nessun dato è stato selezionato per la visualizzazione],
  [#link(<UC5.3.1>)[#underline[\[UC5.3.1\]]]],

  [#FRx],
  [Il Sistema deve generare la vista del report includendo solo i dati filtrati dall'utente],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  [#FRx],
  [L'utente deve poter visualizzare i dettagli completi dell'analisi (metriche, grafici, suggerimenti)],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC14
  // UC14.1
  [#FRx],
  [L'utente autenticato avanzato deve poter visualizzare un modale per la selezione del formato di esportazione],
  [#link(<UC14.1>)[#underline[\[UC14.1\]]]],
  // UC14.1.1
  [#FRx],
  [L'utente autenticato avanzato deve visualizzare un messaggio di errore se tenta di confermare l'esportazione senza aver selezionato un formato],
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],
  // UC14.2
  [#FRx],
  [L'utente autenticato avanzato deve poter confermare l'esportazione del report solo dopo aver selezionato un formato],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  [#FRx],
  [L'utente autenticato avanzato deve poter scaricare il file generato nel formato selezionato],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  [#FRx],
  [L'utente autenticato avanzato deve poter visualizzare tutti i dati del report nel file esportato (metriche, vulnerabilità, suggerimenti)],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  [#FRx],
  [L'utente autenticato avanzato deve ricevere automaticamente il download del file generato],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],
)

#pagebreak()
== Requisiti di Performance (PR)
Definiscono i vincoli sulle prestazioni del sistema, come tempi di risposta, latenza e capacità di carico.
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#PRx],
  [Il Sistema deve completare la validazione lato client dei campi entro 100ms],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#PRx],
  [Il Sistema deve completare la procedura di registrazione nel database entro 2 secondi],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // UC2
  [#PRx],
  [Il Sistema deve completare il processo di verifica delle credenziali entro 1 secondo],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  // UC3
  [#PRx],
  [Il Sistema deve generare l'URL di redirect verso GitHub in meno di 200ms],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  [#PRx],
  [Il Sistema deve processare la callback e completare l'associazione entro 2 secondi],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  //UC4
  [#PRx],
  [Il Sistema deve verificare l'accessibilità del repository GitHub (chiamata API HEAD) entro 3 secondi],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#PRx],
  [Il Sistema deve completare la verifica dello stato del report (aggiornato/in corso) entro 500ms],
  [#link(<UC4.3.1>)[#underline[\[UC4.3.1\]]], #link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]],

  [#PRx],
  [Il Sistema deve accodare il nuovo task di analisi nel sistema di elaborazione asincrono entro 200ms dalla conferma],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  // UC5
  [#PRx],
  [Il Sistema deve caricare l'elenco dei report disponibili entro 1 secondo],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#PRx],
  [Il Sistema deve renderizzare la vista di dettaglio del report entro 2 secondi dalla conferma dei filtri],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC14
  [#PRx],
  [L'utente autenticato avanzato deve visualizzare la lista dei formati disponibili entro 1 secondo],
  [#link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#PRx],
  [L'utente autenticato avanzato deve ricevere il file generato entro 2 secondi dalla conferma dell'esportazione],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],
)

#pagebreak()
== Requisiti di Usabilità (UR)
Riguardano l'efficacia, l'efficienza e la soddisfazione dell'interazione utente, inclusi feedback visivi e facilità di apprendimento.
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#URx], [Il Sistema deve indicare graficamente i campi obbligatori], [#link(<UC1>)[#underline[\[UC1\]]]],
  [#URx],
  [Il Sistema deve fornire feedback di validazione testuale immediato (inline)],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // UC2
  [#URx],
  [Il Sistema deve permettere l'invio del modulo di login tramite il tasto "Invio" della tastiera],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#URx],
  [Il Sistema, in caso di errore, deve mantenere il focus sul campo Password],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  // UC3
  [#URx],
  [Il messaggio di avviso deve spiegare chiaramente che l'utente sta lasciando l'applicazione],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#URx],
  [In caso di errore, il sistema deve suggerire all'utente di riprovare l'operazione],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  //UC4
  [#URx],
  [Il Sistema deve mostrare un indicatore visivo di caricamento (spinner) durante la verifica dell'URL del repository],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#URx],
  [In caso di analisi già esistente o in corso, il messaggio informativo deve fornire un link diretto al report o allo stato di avanzamento],
  [#link(<UC4.3.1>)[#underline[\[UC4.3.1\]]], #link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]],

  // UC5
  [#URx],
  [Il Sistema deve ordinare l'elenco dei report cronologicamente (dal più recente al meno recente)],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#URx],
  [Il Sistema deve utilizzare rappresentazioni grafiche (es. grafici a torta/barre) per riassumere le metriche di analisi],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  [#URx],
  [Il Sistema deve utilizzare indicatori cromatici standard (Rosso/Giallo/Verde) per indicare la gravità delle problematiche],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC14
  [#URx],
  [L'utente autenticato avanzato deve poter riconoscere facilmente ogni formato disponibile grazie a icone nella modale di selezione],
  [#link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#URx],
  [L'utente autenticato avanzato deve comprendere chiaramente l'azione necessaria dal messaggio di errore quando nessun formato è selezionato],
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],

  [#URx],
  [L'utente autenticato avanzato deve visualizzare un indicatore di caricamento (spinner) durante la generazione del file],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],
)

#pagebreak()
== Requisiti di Interfaccia (IR)
Specificano le interazioni logiche e visive con l'utente (elementi UI) e con sistemi esterni (API, protocolli).
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#IRx],
  [Il campo password deve includere un'icona interattiva per il toggle della visibilità],
  [#link(<UC1.5>)[#underline[\[UC1.5\]]]],

  [#IRx],
  [Il Sistema, in caso di errore, deve evidenziare il bordo del campo errato con il colore rosso],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // UC2
  [#IRx],
  [Il campo password deve includere un'icona interattiva per il toggle della visibilità],
  [#link(<UC2.2>)[#underline[\[UC2.2\]]]],

  [#IRx],
  [Il modulo di login deve includere un collegamento per il recupero della password],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  // UC3
  [#IRx], [Il pulsante di collegamento deve includere il logo ufficiale di GitHub], [#link(<UC3>)[#underline[\[UC3\]]]],
  [#IRx],
  [La modale di conferma deve presentare due azioni distinte: "Procedi" e "Annulla"],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  //UC4
  [#IRx],
  [Il modulo di richiesta deve presentare le opzioni "Analisi Codice" e "Analisi Documentazione" come checkbox indipendenti],
  [#link(<UC4.2>)[#underline[\[UC4.2\]]]],

  [#IRx],
  [Il pulsante di invio richiesta deve essere etichettato chiaramente (es. "Avvia Analisi")],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#IRx],
  [Il Sistema deve disabilitare il pulsante di invio se la validazione client-side dei campi fallisce],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  // UC5
  [#IRx],
  [L'elenco dei report deve mostrare per ogni elemento: Nome Repository, Data Analisi e Stato],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#IRx],
  [Le opzioni di selezione dati devono essere presentate tramite checkbox o interruttori (toggle)],
  [#link(<UC5.3>)[#underline[\[UC5.3\]]]],

  [#IRx],
  [La vista di dettaglio deve permettere di espandere le singole voci per visualizzare suggerimenti di correzione],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC14
  [#IRx],
  [L'utente autenticato avanzato deve poter individuare facilmente il pulsante "Esporta Report" nella pagina di visualizzazione del report di analisi],
  [#link(<UC14>)[#underline[\[UC14\]]]],

  [#IRx],
  [L'utente autenticato avanzato deve poter selezionare il formato di esportazione tramite card selezionabili nella modale],
  [#link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#IRx],
  [L'utente autenticato avanzato deve poter cliccare il pulsante di conferma solo dopo aver selezionato un formato (pulsante disabilitato fino alla selezione)],
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],
)

#pagebreak()
== Requisiti Logici del DB (LDR)
Definiscono la struttura, l'organizzazione, la conservazione e i vincoli di integrità dei dati (es. unicità, relazioni).
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#LDRx],
  [Il database deve imporre un vincolo di unicità sulla colonna Username],
  [#link(<UC1.3.2>)[#underline[\[UC1.3.2\]]]],

  [#LDRx],
  [Il database deve imporre un vincolo di unicità sulla colonna Email],
  [#link(<UC1.4.2>)[#underline[\[UC1.4.2\]]]],

  [#LDRx],
  [Il database deve memorizzare la data e l'ora di creazione del profilo utente],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // UC2
  [#LDRx],
  [Il Sistema deve eseguire la ricerca utente in modalità case-insensitive],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

  [#LDRx],
  [Il Sistema deve aggiornare il timestamp di "Ultimo Accesso" al login avvenuto],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  // UC3
  [#LDRx],
  [Il database deve imporre un vincolo di unicità sulla colonna dell'ID GitHub],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#LDRx], [Il database deve memorizzare l'Access Token di GitHub], [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  //UC4
  [#LDRx],
  [Il database deve memorizzare la richiesta di analisi associandola univocamente all'ID dell'utente e all'URL del repository],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#LDRx],
  [Il database deve registrare il timestamp di creazione della richiesta],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#LDRx],
  [Il database deve utilizzare la coppia (URL Repository, Commit SHA) per identificare duplicati o analisi aggiornate],
  [#link(<UC4.3.1>)[#underline[\[UC4.3.1\]]]],

  // UC5
  [#LDRx],
  [Il Sistema deve eseguire la query di recupero report filtrando rigorosamente per l'ID dell'utente autenticato],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#LDRx],
  [Il Sistema deve associare ogni report al relativo repository GitHub presente nel database],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  // UC14
  [#LDRx],
  [L'utente autenticato avanzato deve poter verificare la cronologia delle proprie esportazioni attraverso i timestamp memorizzati nel database],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],
)

#pagebreak()
== Limitazioni di Design (DC)
Vincoli imposti da scelte tecnologiche obbligatorie, standard industriali, protocolli di comunicazione o normative
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#DCx],
  [Il Sistema deve trasmettere i dati di registrazione esclusivamente tramite protocollo HTTPS],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#DCx],
  [Il Sistema deve eseguire la validazione dei dati sia lato client che lato server],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // UC2
  [#DCx],
  [Il Sistema deve trasmettere le credenziali esclusivamente tramite protocollo HTTPS],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  // UC3
  [#DCx], [Il processo deve aderire allo standard OAuth 2.0 (RFC 6749)], [#link(<UC3.2>)[#underline[\[UC3.2\]]]],
  [#DCx],
  [Tutte le comunicazioni con GitHub devono avvenire su protocollo HTTPS],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  // UC4
  [#DCx],
  [L'elaborazione dell'analisi deve essere gestita in modo asincrono tramite una coda di messaggi (Message Queue)],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#DCx],
  [Il Sistema deve utilizzare le API ufficiali di GitHub (REST o GraphQL) per verificare lo stato del repository],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  // UC5
  [#DCx],
  [La visualizzazione dei report deve essere responsiva (adattabile a desktop e mobile)],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC14
  [#DCx],
  [L'utente autenticato avanzato deve ricevere file esportati generati esclusivamente lato server, per garantire consistenza del formato],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  [#DCx],
  [L'utente autenticato avanzato deve poter esportare report contemporaneamente ad altri utenti senza conflitti],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],
)

#pagebreak()
== Attributi del Software di Sistema (SSA)
Caratteristiche di qualità non funzionali critiche, principalmente focalizzate su Sicurezza (cifratura, protezione), Affidabilità e Robustezza.
#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#SSAx],
  [Il Sistema, finché il form non è valido, deve mantenere il pulsante di conferma disabilitato],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#SSAx],
  [Il Sistema, in caso di username esistente, deve restituire un errore generico per prevenire l'enumerazione],
  [#link(<UC1.3.2>)[#underline[\[UC1.3.2\]]]],

  [#SSAx],
  [Il Sistema, in caso di email esistente, deve restituire un errore generico per prevenire l'enumerazione],
  [#link(<UC1.4.2>)[#underline[\[UC1.4.2\]]]],

  [#SSAx],
  [Il Sistema deve memorizzare la password applicando l'algoritmo di hashing Argon2id],
  [#link(<UC1.5>)[#underline[\[UC1.5\]]]],

  // UC2
  [#SSAx],
  [Il Sistema deve utilizzare messaggi di errore identici per credenziali errate (Anti-Enumeration)],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]], #link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

  [#SSAx],
  [Il Sistema deve verificare la password confrontando l'hash fornito con quello memorizzato (Argon2id)],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  // UC3
  [#SSAx],
  [Il Sistema deve validare il parametro `state` per prevenire attacchi CSRF],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  [#SSAx],
  [Il Sistema deve memorizzare l'Access Token in formato cifrato (es. AES-256)],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  //UC4
  [#SSAx],
  [Il Sistema deve sanitizzare l'input URL per prevenire attacchi di tipo Command Injection prima di utilizzarlo in operazioni di sistema],
  [#link(<UC4.1>)[#underline[\[UC4.1\]]]],

  [#SSAx],
  [Il Sistema deve garantire che un utente possa richiedere l'analisi solo per repository pubblici o per quelli privati a cui ha esplicitamente accesso],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  // UC5
  [#SSAx],
  [Il Sistema deve verificare che l'utente abbia i permessi di lettura per il report richiesto (IDOR Protection)],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#SSAx],
  [Il Sistema deve sanitizzare (HTML escaping) qualsiasi input proveniente dal repository analizzato prima di visualizzarlo],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC14
  [#SSAx],
  [L'utente autenticato avanzato deve ricevere file esportati con dati sanitizzati per prevenire code injection],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  [#SSAx],
  [L'utente autenticato avanzato deve ricevere file validati nel formato prima del download],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],
)
