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
#let versione = "v0.35.0"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2026/01/25",
    "0.37.2",
    "Fix alla struttura delle precondizioni, modifica a UC2 e relativi requisiti",
    members.antonio,
  ),
  (
    "2026/01/24",
    "0.37.1",
    "Fix alla struttura di inclusioni ed estensioni",
    members.antonio,
  ),
  (
    "2026/01/24",
    "0.37.0",
    "Inserimento diagrammi per UC38-41",
    members.andrea,
  ),
  (
    "2026/01/24",
    "0.36.0",
    "Modifica dei casi d'uso UC38, UC40 e UC40.1 e aggiunta di UC38.1, UC39, UC39.1, UC41 e UC41.1",
    members.andrea,
  ),
  (
    "2026/01/21",
    "0.35.0",
    "Inserimento diagrammi aggiornati per UC1-5 e UC34-37",
    members.antonio,
  ),
  (
    "2026/01/21",
    "0.34.0",
    "Aggiunta di sottocasi di UC29 e 30 e altri fix",
    members.berengan
  ),
  (
    "2026/01/19",
    "0.33.1",
    "Aggiunti requisiti funzionali UC12 e UC13, UC16-UC20 e UC24-UC28. Modifica requisiti UC5-UC15",
    members.alice,
  ),
  (
    "2026/01/18",
    "0.32.1",
    "Riorganizzazione requisiti funzionali relativi ai casi d'uso da UC1 a UC4",
    members.alice,
  ),
  (
    "2026/01/17",
    "0.32.0",
    "Modifica alla struttura dei requisiti",
    members.antonio,
    members.alice,
  ),
  (
    "2026/01/17",
    "0.31.0",
    "Modifica UC19, 20 e da 24 a 29",
    members.martinello,
  ),
  (
    "2026/01/17",
    "0.30.2",
    "Modificati requisiti funzionali. Eliminazione requisiti di performance",
    members.alice,
  ),
  (
    "2026/01/17",
    "0.30.1",
    "Modifica UC30. Aggiunta UC31, UC32",
    members.berengan,
  ),
  (
    "2026/01/16",
    "0.29.0",
    "Aggiunta UC38, UC40, UC40.1, UC41",
    members.andrea,
  ),
  (
    "2026/01/16",
    "0.28.0",
    "Aggiunta UC34, UC35, UC36 e UC37",
    members.antonio,
  ),
  (
    "2026/01/16",
    "0.27.0",
    "Aggiunta UC29 e UC30",
    members.berengan,
  ),
  (
    "2026/01/15",
    "0.26.0",
    "Aggiunta UC19-UC28 con relativi sotto casi d'uso",
    members.martinello,
  ),
  (
    "2026/01/15",
    "0.25.1",
    "Fix per UC17 e UC18",
    members.antonio,
  ),
  (
    "2026/01/15",
    "0.25.0",
    "UC17 e UC18",
    members.berengan,
  ),
  (
    "2026/01/14",
    "0.24.1",
    "Fix minori al documento",
    members.antonio,
    members.alice,
  ),
  (
    "2026/01/13",
    "0.24.0",
    "Requisiti funzionali relativi a UC9, UC10, UC11",
    members.berengan,
    members.alice,
  ),
  (
    "2026/01/12",
    "0.23.0",
    "Caso d'uso UC16 con relativi sottocasi e diagrammi",
    members.alice,
  ),
  (
    "2026/01/10",
    "0.22.0",
    "Requisiti funzionali relativi ad UC15",
    members.berengan,
    members.alice,
  ),
  (
    "2026/01/09",
    "0.21.1",
    "Fix minori label del documento",
    members.martinello,
    members.alice,
  ),
  (
    "2026/01/09",
    "0.21.0",
    "Caso d'uso UC15",
    members.berengan,
    members.alice,
  ),
  (
    "2026/01/09",
    "0.20.0",
    "Requisiti da UC6 a UC8",
    members.alice,
  ),
  (
    "2026/01/9",
    "0.19.0",
    "Aggiunti diagrammi per UC9 e UC10",
    members.antonio,
    members.alice,
  ),
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
    members.alice,
  ),
  (
    "2025/12/30",
    "0.15.1",
    "Piccoli fix e spell corrections",
    members.kevin,
    members.alice,
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
Il documento descrive attentamente i #def("casi d'uso") del sistema, che sono la fonte dei #def("requisiti funzionali"), ovvero l'obiettivo finale dell'#def("analisi dei requisiti"). Per ogni #def("caso d'uso"), vengono specificati gli attori coinvolti, le precondizioni e postcondizioni, gli scenari principali, eventuali inclusioni ed estensioni, trigger oltre che i #def("diagrammi dei casi d'uso")

Questo documento si pone alla base di progettazione, implementazione e collaudo del #def("sistema software"), fornendo una chiara comprensione delle funzionalità richieste e delle aspettative degli stakeholder, garantendo che il sistema soddisfi le esigenze degli #def("utenti") finali.

L'obiettivo stesso del documento identifica i suoi destinatari principali, che includono:
- L' #strong("azienda committente") #def("Var Group"), che utilizzeranno questo documento per verificare che il sistema che verrá sviluppato soddisfi le loro esigenze e aspettative.
- I #strong("team di sviluppo") #def("Skarab Group") ovvero #def("progettisti") e #def("programmatori"), che utilizzerà questo documento come guida per la progettazione e l'implementazione del sistema software.
- I #strong("team di verificatori"), che utilizzeranno questo documento per garantire che il sistema soddisfi i requisiti specificati.

== Classificazione dei Requisiti

Ogni Requisito individuato viene classificato secondo due criteri distinti: la *priorità* (importanza strategica) e la *tipologia* (natura tecnica).

==== Classificazione per Priorità
I Requisiti sono suddivisi in tre livelli di priorità, definiti in base alla loro criticità per il successo del progetto e per il rilascio del Sistema:

- #strong("Obbligatori"): Requisiti vincolanti e indispensabili. Il mancato soddisfacimento di anche uno solo di questi requisiti rende il sistema non conforme agli obiettivi minimi del progetto (#def("MVP")).
- #strong("Desiderabili"): Requisiti che apportano valore aggiunto al sistema. Sebbene la loro implementazione sia auspicabile, la loro eventuale omissione non compromette le funzionalità core del prodotto.
- #strong("Opzionali"): Requisiti di importanza secondaria o funzionalità avanzate da implementare solo qualora le risorse e le tempistiche lo consentano. Sono candidati ideali per sviluppi futuri (versioni successive alla 1.0.0).

==== Classificazione per Tipologia
Seguendo la classificazione definita nelle #link(<R3>)[#underline[Dispense del corso di Ingegneria del Software sull'Analisi dei Requisiti]], i Requisiti sono stati suddivisi in 3 macro-categorie:
- #strong("Requisiti Funzionali (FR)"): descrivono cosa il Sistema deve fare, inclusi i comportamenti, le reazioni a specifici input e le regole di validazione dei dati;
- #strong("Requisiti di Qualità (QR)"): specificano caratteristiche come le prestazioni e la documentazione tecnica a corredo del _Software_;
- #strong("Requisiti di Vincolo (VR)"): impongono limiti e condizioni di progetto, come l'utilizzo di tecnologie specifiche, standard o piattaforme;

=== Fonte dei requisiti
I requisiti sono stati identificati a partire dalle seguenti fonti:
- #strong("Capitolato"): requisiti individuati nel capitolato fornito da #def("Var Group");
- #strong("Interno"): requisiti individuati dal team di sviluppo #def("Skarab Group") durante le riunioni interne;
- #strong("Esterno"): requisiti individuati durante gli incontri con l'azienda propontente #def("Var Group").
- #strong("Piano di Qualifica"): requisiti necessari pre rispettare standard di qualità definiti nel documento di Piano di Qualifica;
- #strong("Norme di Progetto"): requisiti necessari per rispettare le norme di progetto definite nel documento di Norme di Progetto;

=== Descrizione dei Requisiti
Ogni Requisito è identificato da un codice univoco, strutturato per garantirne la *piena tracciabilità* e facilitarne la gestione lungo l'intero ciclo di vita del progetto. Per ciascuno di essi vengono specificati: una descrizione concisa, la categoria tipologica di appartenenza e il relativo livello di priorità.

/*In accordo con lo standard #link(<R2>)[#underline[ISO/IEC/IEEE International Standard - Systems and software engineering -- Life cycle
  processes -- Requirements engineering]], i requisiti sono ulteriormente categorizzati in base alla loro natura tecnica:

- #strong("Funzionali (FR)"): Descrivono i comportamenti specifici del sistema, le reazioni a input determinati e le regole di validazione dei dati ("cosa fa il sistema").
- #strong("Usabilità (UR)"): Riguardano l'efficacia, l'efficienza e la soddisfazione dell'interazione utente, inclusi aspetti di accessibilità e feedback visivi.
- #strong("Interfaccia (IR)"): Specificano le interazioni logiche e visive con l'utente (elementi UI) e le interfacce verso sistemi esterni (API, protocolli).
- #strong("Logici del Database (LDR)"): Definiscono la struttura dei dati, le modalità di conservazione, i vincoli di integrità e le relazioni tra entità.
- #strong("Vincoli di Design (DC)"): Limitazioni imposte da scelte tecnologiche obbligatorie, standard industriali, protocolli di comunicazione o normative specifiche.
- #strong("Attributi del Software (SSA)"): Caratteristiche di qualità non funzionali critiche, con particolare focus su Sicurezza (cifratura, protezione dati), Affidabilità e Robustezza.*/

== Prospettiva del prodotto
Il prodotto che #def("Skarab Group") intende sviluppare è un #def("sistema software") #def("multiagente") per l'analisi di #def("repository") #def("GitHub"). Il sistema sarà progettato per essere modulare e scalabile, consentendo l'aggiunta di nuove funzionalità e agenti in futuro. Dal momento in cui l'obiettivo del #def("progetto") è lo sviluppo di un #def("MVP"), il sistema sarà sviluppato con un focus sulle funzionalità essenziali, garantendo al contempo una solida base per future espansioni.

== Funzioni del prodotto
Questa sezione descrive le principali funzionalitá che il prodotto dovrá fornire all'utilizzatore finale; esse sono suddivise in 3 sezioni principali, #emph("Test"), #emph("Sicurezza") e #emph("Documentazione").
- Test:
  - Analisi statica del codice sorgente per identificare potenziali errori a compile time.
  - Controllo dei test unitari per valutare l'efficacia di questi.
- Sicurezza:
  - Analisi delle dipendenzanze per individuare librerie obsolete o vulnerabili.
  - Verifica della conformità alle normative di sicurezza dello standard OWASP.
- Documentazione:
  - Verifica della completezza della documentazione del codice.
  - Controllo della conformità agli standard di documentazione aziendali e non e delle best practice.
  - Analisi semantica per garantire che la documentazione rifletta accuratamente il funzionamento del codice.
L'#def("utente") potrá richiedere l'analisi di uno o piú #def("repository") #def("GitHub") specificando l'#def("URL") del repository e le aree di interesse (tutte, solo una parte o solo una). Il sistema genererà un report dettagliato con i risultati dell'analisi, evidenziando le aree di miglioramento e fornendo raccomandazioni per ottimizzare la qualitá del codice e della documentazione. L'interfaccia sará una #def("webapp") con una #def("GUI") intuitiva e user-friendly da cui l'utente potrá interagire con il sistema, richiedere analisi e visualizzare i report generati sottoforma di grafici e tabelle.

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

#TODO("CAPIRE COME GESTIRE PAGINA DI LOGIN INIZIALE")
=== UC1: Registrazione a CodeGuardian <UC1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - Il sistema è attivo e funzionante
    // -L'utente passa dalla schermata iniziale di login alla sezione di registrazione
    - L'utente seleziona la sezione di registrazione di CodeGuardian
  ],
  post: [
    - L'utente ha completato con successo la registrazione e possiede le credenziali di un account CodeGuardian censito nel Sistema
  ],
  scenari: [
    - L'utente inserisce un username #link(<UC1.1>)[#underline[\[UC1.1\]]]
    - L'utente inserisce una email di riferimento #link(<UC1.2>)[#underline[\[UC1.2\]]]
    - L'utente inserisce una password #link(<UC1.3>)[#underline[\[UC1.3\]]]
  ],
  inclusioni: [
    - #link(<UC1.1>)[#underline[\[UC1.1\]]] // Inserimento Username
    - #link(<UC1.2>)[#underline[\[UC1.2\]]] // Inserimento Email
    - #link(<UC1.3>)[#underline[\[UC1.3\]]] // Inserimento Password
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di registrazione a CodeGuardian",
)[
  #useCaseDiagram("1", "UC1 - Registrazione")
]

==== UC1.1: Inserimento username <UC1.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
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
    - #link(<UC1.1.1>)[#underline[\[UC1.1.1\]]] // Username non conforme ai vincoli di formato
    - #link(<UC1.1.2>)[#underline[\[UC1.1.2\]]] // Username già censito nel Sistema
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di registrazione a CodeGuardian",
)[
  #useCaseDiagram("1_1", "UC1.1 - Inserimento username")
]

===== UC1.1.1: Username non conforme ai vincoli di formato <UC1.1.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian 
    - L'utente ha inserito un username non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento dell'username 
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

===== UC1.1.2: Username inserito già censito nel Sistema <UC1.1.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian 
    - L'utente ha inserito un username già censito nel Sistema durante l'inserimento dell'username 
  ],
  post: [
    - La procedura di registrazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'username inserito non è disponibile (per motivi di sicurezza, non viene specificato che l'username è già in uso)
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

==== UC1.2: Inserimento email <UC1.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
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
    - #link(<UC1.2.1>)[#underline[\[UC1.2.1\]]] // Email non conforme ai vincoli di formato
    - #link(<UC1.2.2>)[#underline[\[UC1.2.2\]]] // Email già censita nel Sistema
  ],
  trigger: "L'utente conferma l'inserimento dell'email durante la procedura di registrazione a CodeGuardian",
)[
  #useCaseDiagram("1_2", "UC1.2 - Inserimento email")
]

===== UC1.2.1: Email inserita non valida <UC1.2.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
    - L'utente ha inserito un'email non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento dell'email
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

===== UC1.2.2: Email inserita già censita nel Sistema <UC1.2.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian 
    - L'utente ha inserito un'email già censita nel Sistema durante l'inserimento dell'email 
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

==== UC1.3: Inserimento password <UC1.3>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian
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
    - #link(<UC1.3.1>)[#underline[\[UC1.3.1\]]] // Password non conforme ai vincoli di formato
  ],
  trigger: "L'utente conferma l'inserimento della password durante la procedura di registrazione a CodeGuardian",
)[
  #useCaseDiagram("1_3", "UC1.3 - Inserimento password")
]

===== UC1.3.1: Password inserita non conforme ai vincoli di formato <UC1.3.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione a CodeGuardian 
    - L'utente ha inserito una password non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento della password 
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
)[]

=== UC2: Autenticazione a CodeGuardian <UC2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - Il sistema è attivo e funzionante
    //- L'utente è sulla schermata iniziale di login di CodeGuardian (appena entrato nel sito o riportato alla schermata di login dopo la registrazione)
  ],
  post: [
    - L'utente è autenticato al Sistema CodeGuardian e può accedere alle funzionalità riservate agli utenti autenticati
  ],
  scenari: [
    - L'utente inserisce lo username #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - L'utente inserisce la password #link(<UC2.2>)[#underline[\[UC2.2\]]]
    - Il sistema verifica le credenziali inserite e autentica l'utente #link(<UC2.3>)[#underline[\[UC2.3\]]]
  ],
  inclusioni: [
    - #link(<UC2.1>)[#underline[\[UC2.1\]]] // Inserimento username
    - #link(<UC2.2>)[#underline[\[UC2.2\]]] // Inserimento password
    - #link(<UC2.3>)[#underline[\[UC2.3\]]] // Verifica credenziali
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di autenticazione di CodeGuardian", //l'utente entra nel sito o viene rimandato dalla registrazione alla schermata di login
)[
  #useCaseDiagram("2", "UC2 - Autenticazione")
]

//- #link(<UC2.1.2>)[#underline[\[UC2.1.2\]]] // Username non censito nel Sistema
==== UC2.1: Inserimento username <UC2.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
  ],
  post: [
    - L'utente ha inserito un username conforme ai vincoli di formato
  ],
  scenari: [
    - L'utente inserisce un username per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC2.1.1>)[#underline[\[UC2.1.1\]]] // Username non conforme ai vincoli di formato
  ],
  trigger: "L'utente interagisce con la sezione di inserimento dell'username durante la procedura di autenticazione a CodeGuardian",
)[
  #useCaseDiagram("2_1", "UC2.1 - Inserimento username")
]
#TODO("Cambiare diagrammi per UC2")

===== UC2.1.1: Username non conforme ai vincoli di formato <UC2.1.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
    - L'utente ha inserito un username non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento dello username
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'username inserito non rispetta i vincoli di formato previsti dal Sistema per la procedura di autenticazione
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

//    - #link(<UC2.2.2>)[#underline[\[UC2.2.2\]]] // Password non corretta
==== UC2.2: Inserimento password <UC2.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
  ],
  post: [
    - L'utente ha inserito una password conforme ai vincoli di formato
  ],
  scenari: [
    - L'utente inserisce una password per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC2.2.1>)[#underline[\[UC2.2.1\]]] // Password non conforme ai vincoli di formato
  ],
  trigger: "L'utente interagisce con la sezione di inserimento della password durante la procedura di autenticazione a CodeGuardian",
)[
  #useCaseDiagram("2_2", "UC2.2 - Inserimento password")
]

===== UC2.2.1: Password non conforme ai vincoli di formato <UC2.2.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
    - L'utente ha inserito una password non conforme ai vincoli di formato previsti dal Sistema durante l'inserimento della password
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che la password inserita non rispetta i vincoli di formato previsti dal Sistema per la procedura di autenticazione
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

==== UC2.3: Verifica credenziali <UC2.3>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito nel Sistema #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
    - L'utente ha inserito un username conforme ai vincoli di formato #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - L'utente ha inserito una password conforme ai vincoli di formato #link(<UC2.2>)[#underline[\[UC2.2\]]]
  ],
  post: [
    - L'utente è autenticato al Sistema CodeGuardian
  ],
  scenari: [
    - Il sistema verifica che l'username sia censito nel Sistema #link(<UC2.3.1>)[#underline[\[UC2.3.1\]]]
    - Il sistema verifica che la password corrisponda all'username inserito #link(<UC2.3.2>)[#underline[\[UC2.3.2\]]]
    - L'utente viene rimandato alla schermata successiva alla procedura di autenticazione, con accesso alle funzionalità riservate agli utenti autenticati
  ],
  inclusioni: [
    - #link(<UC2.3.1>)[#underline[\[UC2.3.1\]]] // Verifica username
    - #link(<UC2.3.2>)[#underline[\[UC2.3.2\]]] // Verifica password 
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento delle credenziali durante la procedura di autenticazione a CodeGuardian",
)[
]

===== UC2.3.1: Verifica username <UC2.3.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito nel Sistema #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
    - L'utente ha inserito un username conforme ai vincoli di formato #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - Il sistema ha verificato che lo username inserito è censito nel Sistema
  ],
  scenari: [
    - Il sistema trova lo username inserito tra quelli censiti nel Sistema 
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC2.3.1.1>)[#underline[\[UC2.3.1.1\]]] // Username non censito nel Sistema
  ],
  trigger: "L'utente conferma l'inserimento delle credenziali durante la procedura di autenticazione a CodeGuardian",
)[
]

====== UC2.3.1.1: Username non censito nel Sistema <UC2.3.1.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito nel Sistema #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
    - L'utente ha inserito un username conforme ai vincoli di formato #link(<UC2.1>)[#underline[\[UC2.1\]]] 
    - L'utente ha inserito un username non censito nel Sistema
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - Il sistema non trova lo username inserito tra quelli censiti nel Sistema
    - L'utente visualizza un messaggio di errore che indica che le credenziali inserite non sono valide per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Lo username inserito non è censito nel Sistema",
)[
]

===== UC2.3.2: Verifica password <UC2.3.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito nel Sistema #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
    - L'utente ha inserito una password conforme ai vincoli di sistema #link(<UC2.2>)[#underline[\[UC2.2\]]]
    - L'utente ha inserito un username censito nel Sistema #link(<UC2.3.1>)[#underline[\[UC2.3.1\]]]
  ],
  post: [
    - Il sistema ha verificato che la password inserita corrisponde all'username inserito
  ],
  scenari: [
    - Il sistema confronta la password inserita con quella associata all'username nel Sistema
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC2.3.2.1>)[#underline[\[UC2.3.2.1\]]] // Password non corretta
  ],
  trigger: "L'utente conferma l'inserimento delle credenziali durante la procedura di autenticazione a CodeGuardian",
)[
]

====== UC2.3.2.1: Password non corretta <UC2.3.2.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente possiede le credenziali di un account CodeGuardian censito nel Sistema #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente sta eseguendo la procedura di autenticazione a CodeGuardian
    - L'utente ha inserito una password conforme ai vincoli di sistema #link(<UC2.2>)[#underline[\[UC2.2\]]]
    - L'utente ha inserito un username censito nel Sistema #link(<UC2.3.1>)[#underline[\[UC2.3.1\]]]
    - L'utente ha inserito una password che non corrisponde a quella associata all'username nel Sistema
  ],
  post: [
    - La procedura di autenticazione non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - Il sistema rileva che la password inserita non corrisponde a quella associata all'username nel Sistema
    - L'utente visualizza un messaggio di errore che indica che le credenziali inserite non sono valide per la procedura di autenticazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "La password inserita non corrisponde a quella associata all'username nel Sistema",
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
    - L'utente sta eseguendo la procedura di collegamento dell'account di CodeGuardian con l'account di GitHub 
    - L'utente ha interagito con l'avviso di reindirizzamento a GitHub, rifiutando il collegamento 
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente sta eseguendo la procedura di collegamento dell'account di CodeGuardian con l'account di GitHub 
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha confermato di voler essere reindirizzato a GitHub #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - L'utente ha completato la sezione di reindirizzamento a GitHub
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

===== UC3.2.2: Codice già associato ad un altro utente censito nel Sistema <UC3.2.2>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha confermato di voler essere reindirizzato a GitHub #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - L'utente ha completato la sezione di reindirizzamento a GitHub 
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha confermato di voler essere reindirizzato a GitHub #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - L'utente ha completato la sezione di reindirizzamento a GitHub
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
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
  trigger: "L'utente accede alla sezione di richiesta analisi repository GitHub in CodeGuardian",
)[
  #useCaseDiagram("4", "UC4 - Richiesta analisi repository GitHub")
]

==== UC4.1: Inserimento URL repository GitHub <UC4.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
  ],
  post: [
    - L'URL del repository GitHub inserito dall'utente è idoneo alla procedura di analisi
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
    - #link(<UC4.1.3>)[#underline[\[UC4.1.3\]]] // Repository GitHub non inserito
  ],
  trigger: "L'utente conferma l'inserimento dell'URL del repository GitHub
            durante la procedura di richiesta analisi",
)[
  #useCaseDiagram("4_1", "UC4.1 - Inserimento URL repository GitHub")
]

===== UC4.1.1: URL repository GitHub non conforme ai vincoli di formato <UC4.1.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL non conforme ai vincoli di formato previsti per l'inserimento dell'URL del repository GitHub
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub non accessibile
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente non ha inserito alcun URL del repository GitHub
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub
  ],
  post: [
    - L'utente ha selezionato le aree di interesse del repository GitHub da analizzare,
      specificando cosa includere tra test, sicurezza o documentazione
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
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub
    - L'utente non ha selezionato alcuna area di interesse durante la selezione delle aree di interesse
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
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub
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
    - #link(<UC4.3.1>)[#underline[\[UC4.3.1\]]]
    - #link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]
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
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub corretto #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente invia la richiesta di analisi al sistema
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
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub corretto #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente invia la richiesta di analisi al sistema
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
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
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
    - Nessuna
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
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
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
)[]

==== UC5.2: Selezione report di analisi <UC5.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report di analisi del proprio account #link(<UC5.1>)[#underline[\[UC5.1\]]]
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
    - #link(<UC5.2.1>)[#underline[\[UC5.2.1\]]]
    - #link(<UC5.2.2>)[#underline[\[UC5.2.2\]]]
  ],
  trigger: "L'utente interagisce con l’elenco dei report di analisi nella sezione dedicata del proprio account",
)[
  #useCaseDiagram("5_2", "UC5.2: Selezione report di analisi")
]

#TODO("SAREBBE DA CAMBIARE QUESTA PARTE IN MODO CHE L'UTENTE POSSA SELEZIONARE I REPOSITORY A CUI SONO ASSOCIATI DEI REPORT, INVECE DI VEDERE TUTTI I REPOSITORY DELL'UTENTE, QUESTO SOTTOCASO DIVENTEREBBE 'LISTA VUOTA' O QUALCOSA DEL GENERE")
===== UC5.2.1: Nessun report di analisi disponibile per il repository GitHub selezionato <UC5.2.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
    // - Non ci sono repository da selezionare
    - Non esistono report di analisi associati al repository GitHub selezionato
  ],
  post: [
    // - L'utente non può selezionare alcun report di analisi, gli viene mostrata un messaggio di avviso che lo rimanda alla sezione precedente in modo che possa effettuare un'analisi
    - L'utente non può procedere alla visualizzazione di alcun report di analisi
  ],
  scenari: [
    // - Il sistema mostra un elenco vuoto di report di analisi e un messaggio di avviso che invita l’utente a richiedere un’analisi per un repository GitHub
    - Il sistema informa l’utente che non sono disponibili report di analisi per il repository selezionato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  // trigger: "L'utente accede alla sezione di selezione dei report di analisi per un repository GitHub senza report disponibili",
  trigger: "Il sistema rileva l’assenza di report di analisi per il repository selezionato dall’utente",
)[]


===== UC5.2.2: Nessun report selezionato <UC5.2.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report di analisi #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  post: [
    - L'utente rimane nella sezione di selezione dei report senza poter procedere
  ],
  scenari: [
    - L'utente tenta di procedere senza selezionare nessun report
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
    - L'utente si trova nella sezione di visualizzazione dei report #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato un report di analisi #link(<UC5.2>)[#underline[\[UC5.2\]]]
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
    - #link(<UC5.3.1>)[#underline[\[UC5.3.1\]]]
  ],
  trigger: "L'utente interagisce con le opzioni di configurazione del report nella sezione di visualizzazione",
)[
  #useCaseDiagram("5_3", "UC5.3: Selezione dati specifici da visualizzare nel report")
]

===== UC5.3.1: Nessun dato specifico selezionato <UC5.3.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato un report di analisi #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - L'utente non può procedere alla visualizzazione del report
  ],
  scenari: [
    - L'utente tenta di procedere senza selezionare alcun dato da visualizzare
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
    - L'utente si trova nella sezione di visualizzazione dei report #link(<UC5.1>)[#underline[\[UC5.1\]]]
    - L'utente ha selezionato un report di analisi #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente ha selezionato un insieme non vuoto di dati da visualizzare #link(<UC5.3>)[#underline[\[UC5.3\]]]
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
    - #link(<UC6.1>)[#underline[\[UC6.1\]]]
    - #link(<UC6.2>)[#underline[\[UC6.2\]]]
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
    - #link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]
    - #link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]
    - #link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]
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

=== UC8: Visualizzazione tabella comparativa tra report di analisi repository GitHub <UC8>
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
    - L'utente visualizza l'insieme di sezioni di valutazione dell'analisi del codice repository GitHub
    - L'utente visualizza il report di analisi statica del codice repository GitHub #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - L'utente visualizza l'analisi delle librerie e dipendenze del codice repository GitHub #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - L'utente visualizza il report di analisi della sicurezza #def("OWASP") del codice repository GitHub #link(<UC9.3>)[#underline[\[UC9.3\]]]
    - L'utente visualizza il numero totale di vulnerabilità individuate nel report di analisi codice repository GitHub #link(<UC9.4>)[#underline[\[UC9.4\]]]
  ],
  inclusioni: [
    - #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - #link(<UC9.3>)[#underline[\[UC9.3\]]]
    - #link(<UC9.4>)[#underline[\[UC9.4\]]]
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
    - L'utente visualizza l'insieme delle sezioni di analisi relative alla documentazione del repository GitHub selezionato
    - L'utente visualizza il report di analisi degli errori di spelling #link(<UC10.1>)[#underline[\[UC10.1\]]]
    - L'utente visualizza il report di analisi della completezza della documentazione nei confronti del codice del repository GitHub #link(<UC10.2>)[#underline[\[UC10.2\]]]
  ],
  inclusioni: [
    - #link(<UC10.1>)[#underline[\[UC10.1\]]]
    - #link(<UC10.2>)[#underline[\[UC10.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa al report di analisi della documentazione repository GitHub",
)[#useCaseDiagram("10", "UC10 - Visualizzazione report analisi della documentazione repository GitHub")]

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
    - L'utente visualizza la data del report di analisi repository GitHub #link(<UC12.1>)[#underline[\[UC12.1\]]]
    - L'utente visualizza i commit analizzati nel report di analisi repository GitHub #link(<UC12.2>)[#underline[\[UC12.2\]]]
    - L'utente visualizza il richiedente del report di analisi repository GitHub #link(<UC12.3>)[#underline[\[UC12.3\]]]
  ],
  inclusioni: [
    - #link(<UC12.1>)[#underline[\[UC12.1\]]]
    - #link(<UC12.2>)[#underline[\[UC12.2\]]]
    - #link(<UC12.3>)[#underline[\[UC12.3\]]]
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
    - L'utente ha disconnesso con successo il proprio accont GitHub dalla piattaforma Codeguardian
  ],
  scenari: [
    - L'utente disconnette il proprio account GitHub dalla paiattaforma CodeGuardian
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
    - L'utente ha disconnesso con successo il proprio accont GitHub dalla piattaforma Codeguardian
  ],
  scenari: [
    - L'utente seleziona il tasto "Disconnetti"
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC13.1.1>)[#underline[\[UC13.1.1\]]]

  ],
  trigger: "L'untente seleziona e attiva il tasto Disconnetti per disconnettere il proprio account",
)[]

===== UC13.1.1: Conferma disconnessione account<UC13.1.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha selezionato la sezione di disconnessione dell'account GitHub dal sistema CodeGuardian #link(<UC13>)[#underline[\[UC13\]]]
    - L'utente ha selezionato il tasto Disconnetti #link(<UC13.1>)[#underline[\[UC13.1\]]]
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
    - Nessuna
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
    - #link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]
  ],
  trigger: "L'utente seleziona il formato dopo aver cliccato il pulsante di esportazione nella sezione di visualizzazione del report",
)[#useCaseDiagram("14_1", "UC14.1 - Selezione formato di esportazione")]

===== UC14.1.1: Nessun formato selezionato <UC14.1.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi #link(<UC5.4>)[#underline[\[UC5.4\]]]
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
    - L'utente sta visualizzando il report di analisi #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente sta eseguendo la procedura di esportazione #link(<UC14>)[#underline[\[UC14\]]]
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

=== UC15: Modifica password profilo <UC15>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente vuole modificare la password del proprio account
  ],
  post: [
    - L'utente ha modificato correttamente la propria password
  ],
  scenari: [
    - L'utente entra nella sezione "Impostazioni"
    - L'utente seleziona la sezione "Modifica Password"
    - L'utente inserisce la password corrente nel primo campo del form di modifica #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - L'utente inserisce la nuova password nel campo del form di modifica sottostante #link(<UC15.2>)[#underline[\[UC15.2\]]]
    - L'utente conferma la modifica della propria password #link(<UC15.3>)[#underline[\[UC15.3\]]]
    - L'utente riceve la conferma dell'avvenuta modifica della propria password #link(<UC15.4>)[#underline[\[UC15.4\]]]
  ],
  inclusioni: [
    - #link(<UC15.1>)[#underline[\[UC15.1\]]] // Inserimento password corrente
    - #link(<UC15.2>)[#underline[\[UC15.2\]]] // Inserimento nuova password
    - #link(<UC15.3>)[#underline[\[UC15.3\]]] // Conferma modifica password
    - #link(<UC15.4>)[#underline[\[UC15.4\]]] // Ricezione avvenuta modifica
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona l'opzione Modifica Password nella sezione Impostazioni",
)[]

==== UC15.1 Inserimento della password corrente <UC15.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente entra nella sezione Impostazioni > Modifica Password #link(<UC15>)[#underline[\[UC15\]]]
  ],
  post: [
    - L'utente ha inserito correttamente la password corrente
  ],
  scenari: [
    - L'utente clicca sul campo password corrente
    - L'utente digita la password corrente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC15.1.1>)[#underline[\[UC15.1.1 \]]]
    - #link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]
  ],
  trigger: "L'utente interagisce con il form di modifica inserendo la password corrente nell'apposito campo",
)[]

===== UC15.1.1 Password corrente non inserita <UC15.1.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente entra nella sezione Impostazioni > Modifica Password #link(<UC15>)[#underline[\[UC15\]]]
  ],
  post: [
    - L'utente non può procedere con la modifica della password
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che lo invita ad inserire la password corrente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente tenta di confermare senza aver inserito la password corrente",
)[]

==== UC15.1.2 Password corrente errata <UC15.1.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha inserito la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
  ],
  post: [
    - All'utente viene impedito di cambiare la propria password
  ],
  scenari: [
    - L'utene inserice una password corrente errata nel form
    - L'utente visualizza un messaggio di errore che lo invita a modificare la password inserita perchè errata
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con il form di modifica inserendo una password corrente errata",
)[]

==== UC15.2 Inserimento della nuova password <UC15.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
  ],
  post: [
    - L'utente ha inserito una nuova password valida
  ],
  scenari: [
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
  trigger: "L'utente interagisce con il form di modifica inserendo una nuova password",
)[]

===== UC15.2.1 Nessuna nuova password inserita <UC15.2.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
  ],
  post: [
    - L'utente non può procedere alla conferma della modifica password
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che lo invita ad inserire una nuova password prima di confermare
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente tenta di confermare senza aver inserito una nuova password",
)[]

===== UC15.2.2 Nuova password non conforme allo standard adottato <UC15.2.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
  ],
  post: [
    - All'utente viene impedito di confermare la modifica della password
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica i requisiti necessari affinché la password sia conforme
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con il form di modifica inserendo una nuova password non conforme allo standard",
)[]

===== UC15.2.3 Nuova password uguale alla precedente <UC15.2.3>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
  ],
  post: [
    - All'utente viene impedito di confermare la modifica della password
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che lo informa dell'uguaglianza
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente inserisce una nuova password uguale a quella corrente",
)[]

==== UC15.3 Conferma modifica password <UC15.3>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha iserito correttamente la password corrente nell'apposito campo del form #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - L'utente ha inserito una nuova password valida nell'apposito campo del form #link(<UC15.2>)[#underline[\[UC15.2\]]]
  ],
  post: [
    - L'utente conferma correttamente la modifica della propria password
  ],
  scenari: [
    - L'utente clicca sul pulsante di conferma
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente interagisce con il tasto di conferma di modifica della password",
)[]

==== UC15.4 Ricezione dell'avvenuta modifica password <UC15.4>
#useCase(
  attore: UAA,
  pre: [
    - La conferma della modifica password è andata a buon fine #link(<UC15.3>)[#underline[\[UC15.3\]]]
  ],
  post: [
    - L'utente è informato del successo dell'operazione
  ],
  scenari: [
    - L'utente visualizza un messaggio di avvenuta modifica
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente ha completato con successo la modifica della password",
)[]

=== UC16: Visualizzazione suggerimenti di remediation <UC16>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai suggerimenti di remediation
  ],
  post: [
    - L'utente ha visualizzato la lista delle issue identificate e i relativi suggerimenti di remediation
  ],
  scenari: [
    - L'utente visualizza la lista delle issue identificate #link(<UC16.1>)[#underline[\[UC16.1\]]]
    - L'utente visualizza i dettagli del suggerimento di remediation di un'issue specifica #link(<UC16.2>)[#underline[\[UC16.2\]]]
  ],
  inclusioni: [
    - #link(<UC16.1>)[#underline[\[UC16.1\]]] // Visualizzazione lista issue identificate
    - #link(<UC16.2>)[#underline[\[UC16.2\]]] // Visualizzazione dettaglio suggerimento di remediation
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente visualizza, nella pagina del report di analisi del repository GitHub richiesto, la sezione relativa ai suggerimenti di remediation",
)[#useCaseDiagram("16", "UC16 - Visualizzazione suggerimenti di remediation")]

==== UC16.1: Visualizzazione lista issue identificate <UC16.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai suggerimenti di remediation #link(<UC16>)[#underline[\[UC16\]]]
  ],
  post: [
    - L'utente visualizza la lista completa delle issue identificate nel repository analizzato
  ],
  scenari: [
    - L'utente consulta la lista delle issue
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC16.1.1>)[#underline[\[UC16.1.1\]]]
  ],
  trigger: "L'utente accede alla sezione suggerimenti di remediation nel report di analisi",
)[#useCaseDiagram("16_1", "UC16.1 - Visualizzazione lista issue identificate")]

===== UC16.1.1: Nessuna issue identificata nel repository <UC16.1.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai suggerimenti di remediation #link(<UC16>)[#underline[\[UC16\]]]
    - L'analisi del repository non ha identificato alcuna issue
  ],
  post: [
    - L'utente è informato che non sono state identificate issue nel repository analizzato
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che l'analisi non ha identificato issue nel repository analizzato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di visualizzazione delle issue per un repository privo di segnalazioni",
)[]

==== UC16.2: Visualizzazione dettaglio suggerimento di remediation <UC16.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]]
    - L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai suggerimenti di remediation #link(<UC16>)[#underline[\[UC16\]]]
    - L'utente sta visualizzando la lista delle issue identificate #link(<UC16.1>)[#underline[\[UC16.1\]]]
  ],
  post: [
    - L'utente visualizza il dettaglio completo del suggerimento di remediation
  ],
  scenari: [
    - L'utente consulta il suggerimento di remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente clicca sul pulsante di visualizzazione remediation relativo all'issue",
)[]

=== UCx: Accesso al profilo CodeGuardian
=== UCx: Recupero password profilo Codeguardian

//USE CASE DEL BACKEND
// UC17
=== UC17 Creazione dell'ambiente sand box <UC17>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'utente autenticato avanzato ha effettuato l'accesso al proprio profilo CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente autenticato avanzato ha effettuato la connessiono del proprio account di GitHub a CodeGuardian #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente autenticato avanzato ha richiesto l'avvio dell'analisi del proprio repository GitHub #link(<UC4>)[#underline[\[UC4\]]]
  ],
  post: [
    - L'ambiente sandbox è stato correttamente creato ed è pronto all'uso
  ],
  scenari: [
    - Il frontend riceve la richiesta di analisi del repository
    - Il frontend comunica all'orchestratore la richiesta di analisi del repository
    - L'orchestratore avvia la creazione dell'ambiente sandbox tramite immagine docker
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC17.1>)[#underline[\[UC17.1\]]]
  ],
  trigger: "Il sistema frontend comunica all'orchestratore la richiesta di avvio dell'analisi",
)[]

==== UC17.1 Errore durante la creazione dell'ambiente sand box <UC17.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il sistema CodeGuardian ha accettato la richesta di analisi del repository
  ],
  post: [
    - L'ambiente sand box non viene creato correttamente
  ],
  scenari: [
    - Si verifica un errore durante la creazione dell'ambiente sandbox
  ],
  inclusioni: [
    - #link(<UC17.1.1>)[#underline[\[UC17.1.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Durante la creazione dell'ambiente sandbox si verifica un errore",
)[]

=== UC17.1.1 Comunicazione dell'errore durante la creazione dell'ambiente sand box <UC17.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Viene rilevato un errore durante la creazione dell'ambiente sandbox #link(<UC17.1>)[#underline[\[UC17.1\]]]
  ],
  post: [
    - L'ambiente sandbox non viene creato correttamente e ciò viene comunicato al frontend
  ],
  scenari: [
    - L'orchestratore comunica l'errore al frontend
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Durante la creazione dell'ambiente sandbox si verifica un errore",
)[]

=== UC18 Lettura delle richieste dell'utente da parte dell'orchestratore <UC18>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'utente autenticato avanzato ha richiesto l'analisi del proprio repository al sistema CodeGuardian #link(<UC4>)[#underline[\[UC4\]]]
    - L'ambiente sandbox é stato creato correttamente #link(<UC17>)[#underline[\[UC17\]]]
  ],
  post: [
    - L'orchestratore ha letto e interpretato correttamente le richieste dell'utente
  ],
  scenari: [
    - L'orchestratore legge le richieste dell'utente
    - L'orchestratore notifica al backend i compiti da svolgere
  ],
  inclusioni: [
    - #link(<UC18.1>)[#underline[\[UC18.1\]]]
    - #link(<UC18.2>)[#underline[\[UC18.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'orchestratore, una volta lette le richieste e visionato il repository, decide come agire e come istruire gli agenti",
)[]

==== UC18.1 Richiesta di analisi completa <UC18.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Non ci sono state richieste specifiche da parte dell'utente
  ],
  post: [
    - L'orchestratore istruisce gli agenti sullo svoglimento dell'analisi completa del repository
  ],
  scenari: [
    - Il frontend comunica al backend che l'utente vuole svolgere un'analisi completa del proprio repository
    - L'orchestratore istruisce gli agenti per un'analisi completa del repository
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il frontend deve comunicare al backend la richiesta di analisi completa",
)[]
==== UC18.2 Richieste specifiche sull'analisi da parte del frontend <UC18.2>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'utente ha fatto delle richieste specifiche
  ],
  post: [
    - L'orchestratore istruisce gli agenti sui ruoli per l'analisi delle singole richieste dell'utente
  ],
  scenari: [
    - Il frontend comunica al backend le specifiche richieste dell'utente rispetto alle aree da analizzare
    - L'orchestratore, prima di istruire gli agenti, controlla la pre esistenza del repository da analizzare nel database e la trova
    - L'orchestratore, una volta compresa la richiesta, istruisce gli agenti
  ],
  inclusioni: [
    - #link(<UC18.2.1>)[#underline[\[UC18.2.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il frontend deve comunicare al backend le richieste che dovranno essere prese in carico",
)[]

===== UC18.2.1 Repository mai analizzato in precedenza <UC18.2.1>
#useCase(
  attore: "Orchestratore", 
  pre: [
    - L'utente ha fatto delle richieste specifiche in relazione alle aree del repository che ha interesse vengano analizzate #link(<UC18.2>)[#underline[\[UC18.2\]]]
    - Il repository non era mai stato analizzato in precedenza
  ],
  post: [
    - L'orchestratore istruisce gli agenti come se fosse stata richiesta un'analisi completa
  ],
  scenari: [
    - L'orchestratore prima di istruire gli agenti controlla la pre esistenza del repository da analizzare nel database e non la trova
    - L'orchestratore si comporta come se fosse stata richiesta l'analisi completa
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'orchestore non trova la repository nel database e si comporta come fosse stata richiesta l'analisi completa",
)[]

/// USE CASE DELLE ANALISI
=== UC19: Analisi vulnerabilità dipendenze <UC19>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha selezionato il repository da analizzare #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - Il repository ha manifest e/o lock file visibili
  ],
  post: [
    - L'utente visualizza il report delle librerie vulnerabili con suggerimenti di remediation
    - L'utente può accettare le remediation proposte
  ],
  scenari: [
    - L'utente richiede l'analisi delle dipendenze dal pannello del report
    - L'analisi elenca le dipendenze e ne misura la severità
    - Il sistema propone remediation (es. upgrade versione)
    - L'utente accetta o rifuta le remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC19.1>)[#underline[\[UC19.1\]]]
    - #link(<UC19.2>)[#underline[\[UC19.2\]]]
  ],
  trigger: "L'utente richiede l'analisi dipendenze o la analisi viene pianificata automaticamente",
)[]
==== UC19.1 L'utente accetta la remediation proposta <UC19.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha preso visione dell'analisi delle vulnerabilità #link(<UC19>)[#underline[\[UC19\]]]
    - L'utente ha visualizzato le remediation proposte
  ],
  post: [
    - Le remediation proposte vengono integrate
  ],
  scenari: [
    - L'utente accetta le remediation proposte
    - Le remediation proposte vengono integrate
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Conferma delle remediation",
)[]
==== UC19.2: L'utente rifiuta la remediation proposta <UC19.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha preso visione dell'analisi delle vulnerabilità #link(<UC19>)[#underline[\[UC19\]]]
    - L'utente ha visualizzato le remediation proposte
  ],
  post: [
    - Le remediation proposte vengono scartate
  ],
  scenari: [
    - L'utente visualiza le remediation proposte
    - L'utente non accetta le remediation proposte
    - Le remediation vengono scartate
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Remediation proposte non accettate",
)[]


=== UC20: Rilevamento segreti e token <UC20>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha selezionato il repository da analizzare #link(<UC5.2>)[#underline[\[UC5.2\]]]
  ],
  post: [
    - Il sistema genera un report con i possibili segreti rilevati e raccomandazioni
  ],
  scenari: [
    - L'utente avvia la scansione per segreti
    - Vengono segnalati file e commit sospetti contenenti possibili chiavi o token
    - Il motore segnala pattern sospetti e classifica i risultati per confidenza
    - Il sistema prepara raccomandazioni e registra i risultati per revisione manuale o azioni automatiche
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC20.1>)[#underline[\[UC20.1\]]] // Verifica manuale dei falsi positivi
    - #link(<UC20.2>)[#underline[\[UC20.2\]]] // Esecuzione automatica di revoca se integrata con provider
    - #link(<UC20.3>)[#underline[\[UC20.3\]]] // Visualizzazione risultati
  ],
  trigger: "L'utente avvia la scansione segreti o la scansione è parte di una pipeline CI",
)[]

==== UC20.1: L'utente rifiuta le remediation proposte <UC20.1>
#useCase(
  attore: UAA,
  pre: [
    - La scansione ha rilevato possibili segreti #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - L'utente rifiuta le remediation proposte
  ],
  scenari: [
    - L'utente esamina i warning proposti
    - L'utente ignora i warning proposti
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento di possibili segreti",
)[]

==== UC20.2: Esecuzione automatica di revoca se integrata con provider <UC20.2>
#useCase(
  attore: UAA,
  pre: [
    - Il sistema è integrato con il provider di segreti
  ],
  post: [
    - I segreti vengono revocati automaticamente
  ],
  scenari: [
    - Il sistema revoca automaticamente i segreti compromessi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Conferma di segreti validi",
)[]

==== UC20.3: Visualizzazione risultati <UC20.3>
#useCase(
  attore: UAA,
  pre: [
    - Il report dei possibili segreti è disponibile #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - L'utente visualizza l'elenco dei possibili segreti con dettagli e azioni
  ],
  scenari: [
    - L'utente apre il pannello dei risultati; il frontend richiede il report al backend e mostra i dettagli con azioni suggerite
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Apertura pannello risultati da parte dell'utente",
)[]

=== UC21: Verifica conformità licenze <UC21>
#useCase(
  attore: UAA,
  pre: [
    - Manifest delle dipendenze disponibile
  ],
  post: [
    - L'utente riceve un report di compatibilità delle licenze e i rischi associati
    - L'utente conferma le azioni consigliate
  ],
  scenari: [
    - L'utente richiede la verifica licenze prima di una release
    - Il controllo segnala licenze non compatibili con la policy
    - Il sistema propone azioni correttive e l'utente le accetta o le invia al team legale
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC21.1>)[#underline[\[UC21.1\]]] // Integrazione con processo di approvazione legale
  ],
  trigger: "Verifica pre-release o su richiesta del team di progetto",
)[]

==== UC21.1: Integrazione con processo di approvazione legale <UC21.1>
#useCase(
  attore: UAA,
  pre: [
    - Licenze non compatibili rilevate #link(<UC21>)[#underline[\[UC21\]]]
  ],
  post: [
    - Il processo di approvazione legale è integrato
  ],
  scenari: [
    - L'utente invia al team legale per approvazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento licenze non compatibili",
)[]

=== UC22: Revisione PR automatizzata <UC22>
#useCase(
  attore: UAA,
  pre: [
    - Pull request aperta nel repository collegato
  ],
  post: [
    - L'utente riceve commenti automatici con checklist e suggerimenti
    - L'utente applica le remediation proposte e conferma le modifiche
  ],
  scenari: [
    - Alla creazione o aggiornamento della PR la pipeline esegue lint, security scan e test
    - Vengono prodotti commenti sintetici e link alle remediation
    - L'utente rivede i commenti, applica i cambiamenti e conferma
  ],
  inclusioni: [
    - #link(<UC22.1>)[#underline[\[UC22.1\]]] // Esecuzione test automatici
  ],
  estensioni: [
    - #link(<UC22.2>)[#underline[\[UC22.2\]]] // Suggerimenti di modifica automatici (codemods)
  ],
  trigger: "Apertura o aggiornamento di una pull request",
)[]

==== UC22.1: Esecuzione test automatici <UC22.1>
#useCase(
  attore: UAA,
  pre: [
    - PR aperta #link(<UC22>)[#underline[\[UC22\]]]
  ],
  post: [
    - Test automatici eseguiti
  ],
  scenari: [
    - La pipeline esegue i test automaticamente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Apertura PR",
)[]

==== UC22.2: Suggerimenti di modifica automatici (codemods) <UC22.2>
#useCase(
  attore: UAA,
  pre: [
    - Problemi rilevati nella PR #link(<UC22>)[#underline[\[UC22\]]]
  ],
  post: [
    - Suggerimenti di modifica applicati automaticamente
  ],
  scenari: [
    - Il sistema applica codemods per fix automatici
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento problemi correggibili",
)[]

//sni
=== UC23: Monitor qualità del codice <UC23>
#useCase(
  attore: UAA,
  pre: [
    - Storico commit disponibile nel repository
  ],
  post: [
    - L'utente visualizza dashboard con metriche e trend
    - L'utente accetta o pianifica remediation per regressioni critiche
  ],
  scenari: [
    - Il sistema calcola metriche periodiche (complessità, duplicazioni, maintainability)
    - Vengono generati trend e alert per regressioni
    - L'utente definisce azioni di miglioramento e le approva
  ],
  inclusioni: [
    - #link(<UC23.1>)[#underline[\[UC23.1\]]] // Integrazione con tool di metriche esterni
  ],
  estensioni: [
    - #link(<UC23.2>)[#underline[\[UC23.2\]]] // Suggerimenti KPI e obiettivi qualità
  ],
  trigger: "Esecuzione pianificata o su richiesta",
)[]


==== UC23.1: Integrazione con tool di metriche esterni <UC23.1>
#useCase(
  attore: UAA,
  pre: [
    - Metriche calcolate #link(<UC23>)[#underline[\[UC23\]]]
  ],
  post: [
    - Integrazione con tool esterni completata
  ],
  scenari: [
    - Il sistema si collega a tool esterni per metriche aggiuntive
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Richiesta di metriche avanzate",
)[]

==== UC23.2: Suggerimenti KPI e obiettivi qualità <UC23.2>
#useCase(
  attore: UAA,
  pre: [
    - Metriche disponibili #link(<UC23>)[#underline[\[UC23\]]]
  ],
  post: [
    - Suggerimenti KPI forniti
  ],
  scenari: [
    - Il sistema propone obiettivi di qualità basati sui KPI
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Analisi metriche completata",
)[]

//sni
=== UC24: Suggerimenti di refactor <UC24>
#useCase(
  attore: UAA,
  pre: [
    - Codice analizzato con metriche e code smells
  ],
  post: [
    - L'utente riceve elenco di refactor consigliati con snippet
    - L'utente applica e conferma le remediation suggerite
  ],
  scenari: [
    - Analisi rileva hot-spot e suggerisce refactor
    - L'utente sceglie le proposte da applicare e conferma
  ],
  inclusioni: [
    - #link(<UC24.1>)[#underline[\[UC24.1\]]] // Verifica impatto tramite test automatizzati
  ],
  estensioni: [
    - #link(<UC24.2>)[#underline[\[UC24.2\]]] // Applicazione automatica sotto supervisione
    - #link(<UC24.3>)[#underline[\[UC24.3\]]] // Visualizzazione suggerimenti
  ],
  trigger: "Richiesta manuale o raccomandazione durante code review",
)[]

//altro caso
==== UC24.1: Verifica impatto tramite test automatizzati <UC24.1>
#useCase(
  attore: UAA,
  pre: [
    - Refactor suggeriti #link(<UC24>)[#underline[\[UC24\]]]
  ],
  post: [
    - Impatto verificato tramite test
  ],
  scenari: [
    - Test automatici verificano l'impatto del refactor
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Selezione di refactor da applicare",
)[]

==== UC24.2: Applicazione automatica sotto supervisione <UC24.2>
#useCase(
  attore: UAA,
  pre: [
    - Refactor selezionati #link(<UC24>)[#underline[\[UC24\]]]
  ],
  post: [
    - Refactor applicati automaticamente
  ],
  scenari: [
    - Il sistema applica il refactor sotto supervisione dell'utente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Approvazione dell'utente",
)[]

==== UC24.3: Visualizzazione suggerimenti <UC24.3>
#useCase(
  attore: UAA,
  pre: [
    - Elenco suggerimenti di refactor generato #link(<UC24>)[#underline[\[UC24\]]]
  ],
  post: [
    - L'utente visualizza i suggerimenti con snippet e azioni
  ],
  scenari: [
    - L'utente apre il pannello refactor; il frontend richiede i suggerimenti e mostra snippet con azioni possibili
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Apertura pannello suggerimenti da parte dell'utente",
)[
]

=== UC25: Generazione changelog e release notes <UC25>
#useCase(
  attore: UAA,
  pre: [
    - Lista commit/issue tra due tag o date disponibile
  ],
  post: [
    - Il sistema genera un changelog strutturato in formato markdown
    - Il changelog è proposto come bozza per revisione e approvazione
  ],
  scenari: [
    - Il motore raccoglie i commit e li raggruppa per tipo
    - Il sistema genera automaticamente il testo proposto per le release notes
    - L'utente rivede e approva o modifica il testo prima della pubblicazione
  ],
  inclusioni: [
    - #link(<UC25.1>)[#underline[\[UC25.1\]]] // Rilevamento note di breaking change
  ],
  estensioni: [
    - #link(<UC25.2>)[#underline[\[UC25.2\]]] // Pubblicazione automatica su GitHub Release
    - #link(<UC25.3>)[#underline[\[UC25.3\]]] // Visualizzazione e approvazione changelog
  ],
  trigger: "Preparazione della release o su richiesta dell'amministratore",
)[]

==== UC25.1: Rilevamento note di breaking change <UC25.1>
#useCase(
  attore: UAA,
  pre: [
    - Commit analizzati per changelog #link(<UC25>)[#underline[\[UC25\]]]
  ],
  post: [
    - Note di breaking change rilevate
  ],
  scenari: [
    - Il sistema identifica e segnala breaking changes
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Analisi commit",
)[]

==== UC25.2: Pubblicazione automatica su GitHub Release <UC25.2>
#useCase(
  attore: UAA,
  pre: [
    - Changelog approvato #link(<UC25>)[#underline[\[UC25\]]]
  ],
  post: [
    - Release pubblicata su GitHub
  ],
  scenari: [
    - Il sistema pubblica automaticamente la release
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Approvazione del changelog",
)[]

==== UC25.3: Visualizzazione e approvazione changelog <UC25.3>
#useCase(
  attore: UAA,
  pre: [
    - Changelog generato e disponibile #link(<UC25>)[#underline[\[UC25\]]]
  ],
  post: [
    - L'utente visualizza la bozza del changelog, la modifica o la approva per pubblicazione
  ],
  scenari: [
    - L'utente apre la bozza del changelog dal pannello release; il sistema mostra i dettagli e le proposte di testo
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Apertura bozza changelog da parte dell'utente",
)[
]

=== UC26: Analisi test e coverage <UC26>
#useCase(
  attore: UAA,
  pre: [
    - Suite di test eseguibile e ambiente di esecuzione configurato
  ],
  post: [
    - Il sistema genera report di test e coverage con gap evidenziati e metriche aggregate
    - Findings e gap sono registrati per pianificazione e remediation
  ],
  scenari: [
    - Esecuzione della suite di test e raccolta coverage
    - Identificazione di test flakiness e failure critici; aggregazione delle metriche
    - Il sistema suggerisce test addizionali e propone azioni correttive
  ],
  inclusioni: [
    - #link(<UC26.1>)[#underline[\[UC26.1\]]] // Replay test intermittenti
  ],
  estensioni: [
    - #link(<UC26.2>)[#underline[\[UC26.2\]]] // Suggerimenti per test addizionali
    - #link(<UC26.3>)[#underline[\[UC26.3\]]] // Visualizzazione report
  ],
  trigger: "Esecuzione pipeline CI o richiesta manuale del team di QA",
)[]

==== UC26.1: Replay test intermittenti <UC26.1>
#useCase(
  attore: UAA,
  pre: [
    - Test flakiness rilevata #link(<UC26>)[#underline[\[UC26\]]]
  ],
  post: [
    - Test intermittenti rieseguiti
  ],
  scenari: [
    - Il sistema riesegue i test intermittenti per confermare
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento flakiness",
)[]

==== UC26.2: Suggerimenti per test addizionali <UC26.2>
#useCase(
  attore: UAA,
  pre: [
    - Coverage analizzata #link(<UC26>)[#underline[\[UC26\]]]
  ],
  post: [
    - Suggerimenti per test aggiuntivi forniti
  ],
  scenari: [
    - Il sistema propone test per coprire gap di coverage
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Analisi coverage completata",
)[]

==== UC26.3: Visualizzazione report <UC26.3>
#useCase(
  attore: UAA,
  pre: [
    - Report di test e coverage generato e disponibile #link(<UC26>)[#underline[\[UC26\]]]
  ],
  post: [
    - L'utente visualizza il report dettagliato con gap e suggerimenti di test
  ],
  scenari: [
    - L'utente apre il pannello dei report; il frontend richiede il report al backend e mostra percentuali di coverage, test falliti e suggerimenti
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Apertura pannello report da parte dell'utente",
)[
]

=== UC27: Policy CI/CD pre-merge <UC27>
#useCase(
  attore: UAA,
  pre: [
    - Policy CI/CD definite e configurate
  ],
  post: [
    - Merge bloccato fino al superamento delle policy
    - L'utente applica remediation e riprova il merge
  ],
  scenari: [
    - Alla richiesta di merge le policy vengono verificate automaticamente
    - In caso di fallimento il sistema propone remediation
    - L'utente accetta le remediation e riprova
  ],
  inclusioni: [
    - #link(<UC27.1>)[#underline[\[UC27.1\]]] // Gestione eccezioni approvate manualmente
  ],
  estensioni: [
    - #link(<UC27.2>)[#underline[\[UC27.2\]]] // Policy dinamiche per branch differenti
    - #link(<UC27.3>)[#underline[\[UC27.3\]]] // Visualizzazione risultati policy
  ],
  trigger: "Tentativo di merge su branch protetto",
)[]

==== UC27.1: Gestione eccezioni approvate manualmente <UC27.1>
#useCase(
  attore: UAA,
  pre: [
    - Policy fallite #link(<UC27>)[#underline[\[UC27\]]]
  ],
  post: [
    - Eccezione approvata manualmente
  ],
  scenari: [
    - L'utente richiede eccezione manuale per il merge
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Fallimento policy",
)[]

==== UC27.2: Policy dinamiche per branch differenti <UC27.2>
#useCase(
  attore: UAA,
  pre: [
    - Branch differenti configurati #link(<UC27>)[#underline[\[UC27\]]]
  ],
  post: [
    - Policy applicate dinamicamente
  ],
  scenari: [
    - Il sistema applica policy specifiche per ciascun branch
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Merge su branch specifico",
)[]

==== UC27.3: Visualizzazione risultati policy <UC27.3>
#useCase(
  attore: UAA,
  pre: [
    - Il tentativo di merge è stato valutato dal sistema e il report policy è disponibile #link(<UC27>)[#underline[\[UC27\]]]
  ],
  post: [
    - L'utente visualizza dettagli sulle policy fallite e le eccezioni proposte
  ],
  scenari: [
    - L'utente apre il pannello merge; il frontend richiede il report policy e mostra info su fallimenti e possibili azioni
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Apertura pannello merge da parte dell'utente",
)[
]

=== UC28: Report programmabili e alert <UC28>
#useCase(
  attore: UAA,
  pre: [
    - Configurazione report e canali di notifica impostati
  ],
  post: [
    - Il sistema genera report periodici con KPI e alert su regressioni
    - Gli alert vengono inviati sui canali configurati e gli eventi critici sono registrati per azioni successive
  ],
  scenari: [
    - La pianificazione o un evento di sistema attivano la generazione del report
    - Il sistema elabora KPI e verifica soglie configurate
    - In caso di alert critici il sistema lo notifica e propone azioni
  ],
  inclusioni: [
    - #link(<UC28.1>)[#underline[\[UC28.1\]]] // Filtri e template report
  ],
  estensioni: [
    - #link(<UC28.2>)[#underline[\[UC28.2\]]] // Azioni automatiche su alert critici
    - #link(<UC28.3>)[#underline[\[UC28.3\]]] // Visualizzazione report
  ],
  trigger: "Pianificazione temporale o evento di sistema che provoca l'alert",
)[]

==== UC28.1: Filtri e template report <UC28.1>
#useCase(
  attore: UAA,
  pre: [
    - Report configurato #link(<UC28>)[#underline[\[UC28\]]]
  ],
  post: [
    - Filtri e template applicati
  ],
  scenari: [
    - L'utente configura filtri e template per i report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Configurazione report",
)[]

==== UC28.2: Azioni automatiche su alert critici <UC28.2>
#useCase(
  attore: UAA,
  pre: [
    - Alert critico rilevato #link(<UC28>)[#underline[\[UC28\]]]
  ],
  post: [
    - Azioni automatiche eseguite
  ],
  scenari: [
    - Il sistema esegue automaticamente azioni su alert critici
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Alert critico",
)[]

==== UC28.3: Visualizzazione report <UC28.3>
#useCase(
  attore: UAA,
  pre: [
    - Report programmabile generato e disponibile #link(<UC28>)[#underline[\[UC28\]]]
  ],
  post: [
    - L'utente visualizza report periodici, KPI e alert
  ],
  scenari: [
    - L'utente apre il pannello report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Apertura pannello report da parte dell'utente",
)[
]

=== UC29  Recupero e avvio tool esterni di analisi <UC29>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il BackEnd ha chiari i propri compiti rispetto alle richieste del FrontEnd realtive all'analisi #link(<UC17>)[#underline[\[UC18\]]]
  ],
  post: [
    - Il BackEnd ha contattato corettamente i tool esterni di analisi
  ],
  scenari: [
    - Il BackEnd legge le richieste del sistema FrontEnd e le interpreta correttamente
    - Il BackEnd sceglie quali sono i tool esterni di analisi da interrogare
    - Il BackEnd contatta i tool esterni
    - Il BackEnd inserisce all'interno dei tool esterni i dati appropriati da analizzare
  ],
  inclusioni: [
    - #link(<UC29.1>)[#underline[\[UC29.1\]]]
    - #link(<UC29.2>)[#underline[\[UC29.2\]]]
    - #link(<UC29.3>)[#underline[\[UC29.3\]]]
  ],
  estensioni: [
    - #link(<UC29.4>)[#underline[\[UC29.4\]]] // Gestione errore contatto tool
  ],
  trigger: "Comunicazione con tool esterni",
)[]

==== UC29.1 Richiesta di analisi del codice <UC29.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "SonarQube/Semgrep",
  pre: [
    - L'orchestratore ha istruito il Back-end sulla necessità di contattare lo strumento di analisi del codice
  ],
  post: [
    - Lo strumento di analisi del codice ha ricevuto correttamente il codice da analizzare e può iniziare l'analisi
  ],
  scenari: [
    - Il backend riceve istruzione del codice da analizzare da parte dell'orchestratore
    - Il sistema backend recupera il codice da analizzare e contatta il tool di analisi
    - Lo strumento di analisi del codice viene contattato e gli viene passato il codice da analizzare
    - Lo strumento di analisi del codice analizza il codice
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC29.1.1>)[#underline[\[UC29.1.1\]]]
  ],
  trigger: "viene richiesta l'analisi del codice",
)[]

===== UC29.1.1 Uno o più linguaggi presenti nella codebase non sono supportati dallo strumento di analisi <UC29.1.1>
#useCase(
  attore: "SonarQube/Semgrep",
  pre: [
    - Lo strumento di analisi del codice ha ricevuto correttamente #link(<UC29.1>)[#underline[\[UC29.1\]]]
  ],
  post:[
    - Lo strumento di analisi del codice comunica al sistema backend che il linguaggio non è supportato 
  ],
  scenari: [
    - Lo strumento di analisi del codice legge la richiesta del sistema backend
    - Lo struento di analis del codice rileva dei linguaggi non riconosciuti
    - Lo strumento di analis del codice comunica l'errore al sistema backend
  ],
  inclusioni:[
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene richiesta l'analisi del codice"
)[]

==== UC29.2 Richiesta di analisi della documentazione <UC29.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "OpenAI",
  pre: [
    - L'orchestratore ha istruito il Back-end sulla necessità di contattare lo strumento di analisi della documentazione
  ],
  post:[
    - La documentazione viene passata correttamente allo strumento di analisi
  ],
  scenari: [
    - Il sistema backend riceve istruzione di analizzare la documentazione da parte dell'orchestratore
    - Il backend recupera la documentazione appropriata da passare allo strumento di analisi
    - Lo strumento di analisi riceve la documentazione
  ],
  inclusioni:[
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene richiesta l'analisi della documentazione"
)[]

==== UC29.3 Richiesta di analisi del rispetto degi standard OWASP <UC29.3>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "OWASP ZAP",
  pre: [
    - L'orchestratore ha istruito il Back-end sulla necessità di contattare lo strumento di analisi degli standard OWASP
  ],
  post:[
    - Lo strumento di analisi degli standard OWASP riceve l'applicazione da analizzare correttamente
  ],
  scenari: [
    - Il sistema backend riceve istruzione di analizzare l'applicazione rispetto agli standard OWASP da parte dell'orchestratore
    - Il backend recupera correttamente l'applicazione da passare allo strumenti di anlisi degli standard OWASP
    - Lo strumento di analisi riceve correttamente l'applicazione e può procedere con l'analisi
  ],
  inclusioni:[
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Richiesta di analisi del rispetto degli standard",
)[]

==== UC29.4 Impossibilità di contattare un tool <UC29.4>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il BackEnd ha provato a contattare un tool esterno per l'analisi
  ],
  post: [
    - Il BackEnd trova un tool alternativo e lo contatta
  ],
  scenari: [
    - Il BackEnd ha provato a contattare un tool esterno fallendo
    - Il BackEnd cerca internamente un tool alternativo
    - Il BackEnd contatta il tool alternativo
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Contatto con tool alternativo",
)[]

=== UC30 Generazione del report finale <UC30>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il sistema Back-end ha concluso con successo l'analisi della repository
  ],
  post: [
    - L'orchestratore ha preso in carico il report di analisi
  ],
  scenari: [
    - Il sistema Back-end finisce la propria analisi
    - Il sistema Back-end ha scritto il report finale
    - L'orchestratore visualizza il report
  ],
  inclusioni: [
    - #link(<UC30.1>)[#underline[\[UC30.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene completata l'analisi della repository",
)[]

==== UC30.1 Integrazione delle nuove analisi singole <UC30.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il sistema backend ha completato la parte di analisi richiesta
  ],
  post:[
    - L'orchestratore ha preso in carico la nuova sezione del report di analisi
  ],
  scenari: [
    - Il sistema backend ha finito la parte di analisi richiesta da parte dell'utente
    - L'orchestratore ha visualizzato la nuova sezione del report
    - L'orchestratore integra la nuova sezione nel report corrente
    - L'orchestratore modifica il report segnalando che una sezione è avanti nell'analisi rispetto alle alte
  ],
  inclusioni:[
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene completata l'analisi della repository"
)[]

=== UC31 Trasferimento del report di analisi al sistema front-end <UC31>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha preso in carico il report di analisi #link(<UC30>)[#underline[\[UC30\]]]
  ],
  post: [
    - Il sistema front-end può mostrare correttamente il report di analisi
  ],
  scenari: [
    - L'orchestratore comunica al sistema front-end che il report di analisi è disponibile
    - L'orchestratore invia il report di analisi al sistema front-end
    - Il sistema front-end può ora mostrare il report di analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il report deve arrivare all'utente tramite il sistema front-end",
)[]

=== UC32 L'utente viene notificato della disponibilità di visualizzare il nuovo report id anlisi<UC32>
#useCase(
  attore: UAA,
  pre: [
    - Il sistema front-end ha ricevuto correttamente il report di analisi da parte dell'orchestratore #link(<UC31>)[#underline[\[UC31\]]]
  ],
  post: [
    - L'utente può visualizzare il report richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
  ],
  scenari: [
    - Il sistema front-end ha ricevuto il report di analisi ed è pronto a mostrarlo
    - Il sistema front-end notifica all'utente la disponibilità di visualizzazione del nuovo report di analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il report è pronto per la visualizzazione",
)[]

//spazio per quelli in mezzo

=== UC34: Notifica completamento al frontend <UC34>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha ricevuto una richiesta di analisi dal Front-end #link(<UC4>)[#underline[\[UC4\]]]
    - L'orchestratore ha iniziato l'analisi della repository #link(<UC29>)[#underline[\[UC29\]]]
    - L'orchestratore ha concluso con successo l'analisi della repository
  ],
  post: [
    - Il sistema Front-end è stato notificato del completamento dell'analisi
  ],
  scenari: [
    - L'orchestratore ha concluso l'analisi richiesta
    - L'orchestratore invia una notifica al Front-end del completamento dell'analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC34.1>)[#underline[\[UC34.1\]]]
  ],
  trigger: "L'orchestratore ha completato l'analisi della repository",
)[
  #useCaseDiagram("34", "UC34 - Notifica completamento al frontend")
]

==== UC34.1: Nuovo tentativo di invio del messaggio di completamento <UC34.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'Orchestratore non riceve un ack dal Front-end dopo aver inviato la notifica di completamento dell'analisi #link(<UC34>)[#underline[\[UC34\]]]
  ],
  post: [
    - L'Orchestratore ritenta l'invio della notifica di completamento dell'analisi al Front-end
  ],
  scenari: [
    - L'Orchestratore non riceve l'ack di avvenuta ricezione della notifica di completamento dell'analisi
    - L'Orchestratore ritenta l'invio della notifica al Front-end
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'Orchestratore non riceve l'ack dal Front-end",
)[]

=== UC35: Gestione errore critico durante l'analisi <UC35>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'Orchestratore ha ricevuto una richiesta di analisi #link(<UC4>)[#underline[\[UC4\]]]
    - L'Orchestratore ha avviato l'analisi della repository #link(<UC29>)[#underline[\[UC29\]]]
    - L'Orchestratore riscontra un errore bloccante durante l'analisi
  ],
  post: [
    - Il Front-end viene notificato che l'analisi non è andata a buon fine
  ],
  scenari: [
    - L'Orchestratore inizia l'analisi della repository
    - Durante l'analisi si verifica un errore critico che blocca il processo
    - L'Orchestratore cattura l'errore e prepara una notifica di fallimento
    - L'Orchestratore invia la notifica al Front-end informandolo del fallimento dell'analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC35.1>)[#underline[\[UC35.1\]]]
  ],
  trigger: "Un errore critico blocca l'analisi della repository",
)[
  #useCaseDiagram("35", "UC35 - Gestione errore critico durante l'analisi")
]

==== UC35.1: Nuovo tentativo di invio del messaggio di fallimento <UC35.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'Orchestratore non riceve un ack dal Front-end dopo aver inviato la notifica di fallimento dell'analisi #link(<UC35>)[#underline[\[UC35\]]]
  ],
  post: [
    - L'Orchestratore ritenta l'invio della notifica di fallimento
  ],
  scenari: [
    - L'Orchestratore non riceve l'ack di avvenuta ricezione della notifica di fallimento dell'analisi
    - L'Orchestratore ritenta l'invio della notifica al Front-end
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'Orchestratore non riceve l'ack dal Front-end",
)[]

=== UC36: Salvataggio metadati repository <UC36>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'utente ha richiesto l'analisi di una repository #link(<UC4>)[#underline[\[UC4\]]]
    - L'analisi è stata avviata e presa in carico dall'Orchestratore #link(<UC29>)[#underline[\[UC29\]]]
  ],
  post: [
    - I metadati della repository sono stati salvati nel database
  ],
  scenari: [
    - L'Orchestratore manda al Database i metadati della repository selezionata dall'utente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'analisi è stata avviata con successo",
)[]

=== UC37: Verifica esistenza repository analizzata <UC37>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L’utente si trova nella sezione di visualizzazione dei report (#link(<UC5.1>)[#underline[\[UC5.1\]]])
    - Il Front-end richiede all'Orchestratore di inviare i dati relativi alle repository analizzate dall'utente
  ],
  post: [
    - L'utente visualizza le repository per le quali sono stati svolte delle analisi
  ],
  scenari: [
    //- L'Orchestratore interroga il Database per recuperare le informazioni richieste
    - L'Orchestratore invia al Front-end la lista delle repository analizzate
    - Il Front-end mostra all'utente la lista delle repository analizzate
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC37.1>)[#underline[\[UC37.1\]]]
  ],
  trigger: "Richiesta di visualizzazione delle repository analizzate",
)[
  #useCaseDiagram("37", "UC37 - Verifica esistenza repository analizzata")
]

==== UC37.1: Nessuna repository analizzata <UC37.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L’utente si trova nella sezione di visualizzazione dei report (#link(<UC5.1>)[#underline[\[UC5.1\]]])
    - Il Front-end richiede all'Orchestratore di inviare i dati relativi alle repository analizzate dall'utente #link(<UC37>)[#underline[\[UC37\]]]
    - Non sono presenti repository analizzate per l'utente
  ],
  post: [
    - L'utente viene informato che non sono presenti repository analizzate
  ],
  scenari: [
    - L'Orchestratore invia al Front-end un messaggio di errore
    - Il Front-end mostra all'utente il messaggio di errore
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Nessuna repository analizzata trovata",
)[]

=== UC38 Salvataggio del report dell'analisi <UC38>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il report dell'analisi è stato completato e visualizzato dall'orchestratore #link(<UC30>)[#underline[[UC30]]]
  ],
  post: [
    - Il report finale è archiviato nel database del sistema Back-end
  ],
  scenari: [
    - L'orchestratore invia una richiesta di persistenza al sistema Back-end
    - Il sistema Back-end riceve i dati del report
    - Il sistema Back-end memorizza il report nel database
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC38.1>)[#underline[[UC38.1]]]
  ],
  trigger: "Il report finale è preso in carico dall'orchestratore",
)[
  #useCaseDiagram("38", "UC38 - Salvataggio del report dell'analisi")
]

==== UC38.1 Errore durante il salvataggio del report <UC38.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha richiesto l'archiviazione del report #link(<UC38>)[#underline[[UC38]]]
  ],
  post: [
    - Il sistema Front-end è stato informato dall'orchestratore del fallimento del salvataggio
  ],
  scenari: [
    - Il sistema Back-end riscontra un errore interno durante la persistenza dei dati
    - L'orchestratore notifica il Front-end del mancato salvataggio
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema Back-end fallisce la procedura di archiviazione",
)[]

=== UC39 Salvataggio delle metriche aggregate <UC39>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'analisi della repository è completata ed è stato generato il report finale #link(<UC30>)[#underline[[UC30]]]
  ],
  post: [
    - Le metriche aggregate per la visualizzazione di grafici e tabelle sono salvate nel database dal sistema Back-end
  ],
  scenari: [
    - L'orchestratore richiede al sistema Back-end la sintesi dei dati raccolti dalle diverse analisi
    - L'orchestratore elabora i dati dei singoli report degli agenti per calcolare le metriche globali e le invia al Back-end
    - Il sistema Back-end memorizza le metriche all'interno del database
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC39.1>)[#underline[[UC39.1]]]
  ],
  trigger: "Il report finale viene generato e completato",
)[
  #useCaseDiagram("39", "UC39 - Salvataggio delle metriche aggregate")
]

==== UC39.1 Errore durante il salvataggio delle metriche aggregate <UC39.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha richiesto il salvataggio delle metriche aggregate #link(<UC39>)[#underline[[UC39]]]
  ],
  post: [
    - L'orchestratore viene informato dell'impossibilità di salvare le metriche per la dashboard
  ],
  scenari: [
    - Il sistema Back-end riscontra un errore interno o di connessione al database durante il salvataggio dei dati
    - L'orchestratore notifica il sistema Front-end del mancato aggiornamento delle metriche
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema Back-end fallisce la procedura di archiviazione delle metriche",
)[]

=== UC40 Invio delle credenziali al sistema Back-end <UC40>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha compilato i campi necessari alla registrazione a CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - Il sistema Back-end ha ricevuto correttamente le credenziali per l'elaborazione
  ],
  scenari: [
    - L'utente conferma l'invio delle proprie credenziali attraverso l'interfaccia di CodeGuardian
    - Il sistema Front-end trasmette le credenziali al sistema Back-end
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC40.1>)[#underline[\[UC40.1\]]]
  ],
  trigger: "L'utente richiede la creazione di un nuovo account CodeGuardian",
)[
  #useCaseDiagram("40", "UC40 - Invio delle credenziali al sistema Back-end")
]

==== UC40.1 Errore durante il trasferimento delle credenziali al Back-end <UC40.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha tentato l'invio delle credenziali #link(<UC40>)[#underline[[UC40]]]
  ],
  post: [
    - Il sistema Back-end non acquisisce i dati e l'utente viene avvisato dell'impossibilità di procedere
  ],
  scenari: [
    - Il sistema Front-end riscontra un errore di comunicazione interna o di rete durante il trasferimento dei dati al Back-end
    - Il sistema Front-end mostra all'utente un messaggio di errore indicando il fallimento dell'operazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema Back-end non riceve le credenziali a causa di un errore di comunicazione",
)[] 

=== UC41 Gestione del codice OAuth GitHub <UC41>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'utente ha collegato il suo account CodeGuardian a GitHub #link(<UC3>)[#underline[[UC3]]]
    - Il sistema Front-end ha ricevuto il codice temporaneo di autorizzazione (OAuth Code)
  ],
  post: [
    - Il sistema Back-end ha ottenuto il token di accesso e lo ha associato al profilo dell'utente
  ],
  scenari: [
    - Il sistema Front-end comunica al sistema Back-end il codice ricevuto da GitHub
    - L'orchestratore richiede al sistema GitHub lo scambio del codice con un token di accesso permanente
    - Il sistema GitHub restituisce il token di accesso e le informazioni del profilo autorizzate
    - Il sistema Back-end memorizza il token nel database associandolo all'utente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC41.1>)[#underline[[UC41.1]]]
  ],
  trigger: "Ricezione del codice di autorizzazione OAuth da parte del Front-end",
)[
  #useCaseDiagram("41", "UC41 - Gestione del codice OAuth GitHub")
]

==== UC41.1 Errore durante lo scambio del codice OAuth GitHub <UC41.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'orchestratore ha tentato di scambiare il codice di autorizzazione con il sistema GitHub
  ],
  post: [
    - La procedura di collegamento viene interrotta e il sistema Front-end viene notificato dell'errore da parte dell'orchestratore
  ],
  scenari: [
    - Il sistema GitHub restituisce un errore (es. codice scaduto o non valido)
    - L'orchestratore notifica il sistema Front-end del fallimento della procedura di collegamento
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema GitHub rifiuta lo scambio del codice o la connessione fallisce",
)[]

#TODO("Valutare con il gruppo l'UC41")

#TODO("UC42 Validazione delle credenziali dell'utente. Sinceramente eliminerei questo UC perchè la validazione è già presente nelle inclusioni di UC1 e UC2")

#pagebreak()

= Requisiti di Sistema
In questa sezione sono elencati i requisiti del sistema CodeGuardian individuati da _Skarab Group_.

#let fr_counter = counter("FR")
#let qr_counter = counter("QR")
#let vr_counter = counter("VR")

#let FRx = context [FR#fr_counter.step()#fr_counter.display()]
#let QRx = context [QR#qr_counter.step()#qr_counter.display()]
#let VRx = context [VR#vr_counter.step()#vr_counter.display()]

//partono da 1
#fr_counter.step()
#qr_counter.step()
#vr_counter.step()

== Requisiti Funzionali (FR)

#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#FRx],
  [L'Utente non registrato deve poter visualizzare la pagina di registrazione],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRx],
  [L'Utente non registrato deve poter inviare la richiesta di registrazione tramite pulsante di conferma],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRx],
  [L'Utente non registrato deve poter inserire l'username nel campo dedicato],
  [#link(<UC1>)[#underline[\[UC1\]]], #link(<UC1.1>)[#underline[\[UC1.1\]]]],

  [#FRx],
  [L'Utente non registrato deve poter inserire l'email nel campo dedicato],
  [#link(<UC1>)[#underline[\[UC1\]]], #link(<UC1.2>)[#underline[\[UC1.2\]]]],

  [#FRx],
  [L'Utente non registrato deve poter inserire la password nel campo dedicato],
  [#link(<UC1>)[#underline[\[UC1\]]], #link(<UC1.3>)[#underline[\[UC1.3\]]]],

  [#FRx], [L'username deve avere una lunghezza minima di 4 caratteri], [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRx], [L'username deve avere una lunghezza massima di 20 caratteri], [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRx], [L'username deve contenere solo caratteri alfanumerici], [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'username non rispetta il formato],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'username è già censito],
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  [#FRx], [L'email deve contenere il carattere '\@'], [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRx], [L'email deve contenere un dominio valido], [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'email non rispetta il formato],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'email è già censita],
  [#link(<UC1.2.2>)[#underline[\[UC1.2.2\]]]],

  [#FRx], [La password deve avere una lunghezza minima di 8 caratteri], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx], [La password deve contenere almeno una lettera maiuscola], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx], [La password deve contenere almeno una lettera minuscola], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx], [La password deve contenere almeno un numero], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx], [La password deve contenere almeno un carattere speciale], [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se la password non rispetta i vincoli di formato],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  // UC2
  [#FRx],
  [L'Utente non autenticato deve poter visualizzare la pagina di autenticazione],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRx],
  [L'Utente non autenticato deve poter inserire lo username per autenticarsi],
  [#link(<UC2>)[#underline[\[UC2\]]], #link(<UC2.1>)[#underline[\[UC2.1\]]]],

  [#FRx],
  [L'Utente non autenticato deve poter inserire la password per autenticarsi],
  [#link(<UC2>)[#underline[\[UC2\]]], #link(<UC2.2>)[#underline[\[UC2.2\]]]],

  [#FRx],
  [L'Utente non autenticato deve ricevere un messaggio di errore se l'username non è conforme ai vincoli],
  [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],

  [#FRx],
  [L'Utente non autenticato deve ricevere un messaggio di errore se l'username non è censito],
  [#link(<UC2.3.1.1>)[#underline[\[UC2.3.2.1\]]]],

  [#FRx],
  [L'Utente non autenticato deve ricevere un messaggio di errore se la password non è conforme],
  [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],

  [#FRx],
  [L'Utente registrato deve ricevere un messaggio di errore se la password non è corretta],
  [#link(<UC2.3.2.1>)[#underline[\[UC2.2.2\]]]],

  // UC3
  [#FRx],
  [L'Utente autenticato deve poter accedere alla sezione di collegamento account GitHub],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRx],
  [L'Utente autenticato deve visualizzare un avviso prima del redirect a GitHub],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRx],
  [L'Utente deve poter confermare la volontà di procedere con il collegamento a GitHub],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRx], [L'Utente deve poter rifiutare il collegamento a GitHub], [#link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],

  [#FRx],
  [L'Utente deve poter completare l'autorizzazione tramite il reindirizzamento a GitHub e il successivo ritorno automatico all'applicazione per il recupero del codice identificativo],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se il codice GitHub non viene ricevuto],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se il codice è già associato ad altro utente],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se il codice non è conforme al formato],
  [#link(<UC3.2.3>)[#underline[\[UC3.2.3\]]]],

  // UC4
  [#FRx], [L'Utente deve poter accedere alla sezione di richiesta analisi], [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRx],
  [L'Utente deve poter inserire l'URL del repository GitHub nel campo dedicato],
  [#link(<UC4.1>)[#underline[\[UC4.1\]]]],

  [#FRx], [L'URL deve iniziare con il protocollo 'https://'], [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRx], [Il dominio dell'URL deve essere 'github.com'], [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'URL non è conforme ai vincoli di formato],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se il repository non è accessibile o è inesistente],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce alcun URL],
  [#link(<UC4.1.3>)[#underline[\[UC4.1.3\]]]],

  [#FRx], [L'Utente deve poter selezionare le aree di interesse per l'analisi], [#link(<UC4.2>)[#underline[\[UC4.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcuna area di interesse],
  [#link(<UC4.2.1>)[#underline[\[UC4.2.1\]]]],

  [#FRx],
  [L'utente deve poter inviare la richiesta di analisi tramite pulsante di conferma],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#FRx],
  [L'Utente deve ricevere un avviso se l'ultimo report è già up-to-date],
  [#link(<UC4.3.1>)[#underline[\[UC4.3.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un avviso se un'analisi è già in elaborazione],
  [#link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]],

  // UC5
  [#FRx],
  [L'Utente deve poter accedere alla sezione di visualizzazione dei report di analisi],
  [#link(<UC5.1>)[#underline[\[UC5.1\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare l'elenco dei report di analisi disponibili],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#FRx],
  [L'Utente deve poter selezionare un report dall'elenco per consultarne i dettagli],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un avviso se non ci sono report disponibili per il repository],
  [#link(<UC5.2.1>)[#underline[\[UC5.2.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcun report],
  [#link(<UC5.2.2>)[#underline[\[UC5.2.2\]]]],

  [#FRx], [L'Utente deve poter selezionare i dati specifici da visualizzare], [#link(<UC5.3>)[#underline[\[UC5.3\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcun dato specifico],
  [#link(<UC5.3.1>)[#underline[\[UC5.3.1\]]]],

  [#FRx], [L'Utente deve poter visualizzare i dettagli completi dell'analisi], [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC6
  [#FRx],
  [L'Utente deve poter selezionare un intervallo temporale per il confronto],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRx], [L'Utente deve poter confermare la selezione dell'intervallo temporale], [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRx],
  [L'Utente deve poter modificare l'intervallo temporale dopo averlo selezionato],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se tenta di confermare senza aver selezionato un intervallo temporale],
  [#link(<UC6.1>)[#underline[\[UC6.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'intervallo temporale non è valido],
  [#link(<UC6.2>)[#underline[\[UC6.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un avviso se non ci sono report nel periodo selezionato],
  [#link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'intervallo temporale è incoerente],
  [#link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se l'intervallo temporale è troppo ampio],
  [#link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]],

  // UC7
  [#FRx], [L'Utente deve poter visualizzare un grafico comparativo tra report], [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRx],
  [L'Utente deve poter interagire con il grafico per visualizzare dettagli specifici di ciascun punto dati],
  [#link(<UC7>)[#underline[\[UC7\]]]],

  // UC8
  [#FRx], [L'Utente deve poter visualizzare una tabella comparativa tra report], [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRx],
  [L'utente, all'interno della tabella, deve poter visualizzare indicatori di variazione rispetto al report precedente],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  //UC9
  [#FRx],
  [L'Utente deve poter visualizzare la sezione del report di analisi relativa all'analisi del codice],
  [#link(<UC9>)[#underline[\[UC9\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare il report di analisi statica del codice],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.1>)[#underline[\[UC9.1\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare l'analisi delle librerie e dipendenze],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.2>)[#underline[\[UC9.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare il report di analisi della sicurezza OWASP],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.3>)[#underline[\[UC9.3\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare il numero totale di vulnerabilità del codice],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.4>)[#underline[\[UC9.4\]]]],

  //UC10
  [#FRx],
  [L'Utente deve poter visualizzare la sezione del report di analisi relativa all'analisi della documentazione],
  [#link(<UC10>)[#underline[\[UC10\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare gli errori di spelling nella documentazione],
  [#link(<UC10>)[#underline[\[UC10\]]], #link(<UC10.1>)[#underline[\[UC10.1\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare la completezza della documentazione rispetto al codice],
  [#link(<UC10>)[#underline[\[UC10\]]], #link(<UC10.2>)[#underline[\[UC10.2\]]]],

  //UC11
  [#FRx],
  [L'Utente deve poter visualizzare la sezione del report di analisi relativa al numero totale di vulnerabilità del repository],
  [#link(<UC11>)[#underline[\[UC11\]]]],

  //UC12
  [#FRx],
  [L'Utente deve poter visualizzare l'area metadati di un report di analisi],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare la data del report di analisi],
  [#link(<UC12>)[#underline[\[UC12\]]], #link(<UC12.1>)[#underline[\[UC12.1\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare i commit analizzati nel report],
  [#link(<UC12>)[#underline[\[UC12\]]], #link(<UC12.2>)[#underline[\[UC12.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare il richiedente del report di analisi],
  [#link(<UC12>)[#underline[\[UC12\]]], #link(<UC12.3>)[#underline[\[UC12.3\]]]],

  //UC13
  [#FRx], [L'Utente deve poter disconnettere il proprio account GitHub], [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRx],
  [L'Utente deve selezionare il tasto "Disconnetti" per avviare la procedura],
  [#link(<UC13>)[#underline[\[UC13\]]], #link(<UC13.1>)[#underline[\[UC13.1\]]]],

  [#FRx],
  [L'Utente deve poter confermare la disconnessione del proprio account GitHub],
  [#link(<UC13>)[#underline[\[UC13\]]], #link(<UC13.1.1>)[#underline[\[UC13.1.1\]]]],

  // UC14
  [#FRx], [L'Utente deve poter esportare il report di analisi], [#link(<UC14>)[#underline[\[UC14\]]]],

  [#FRx],
  [L'Utente deve selezionare il formato di esportazione desiderato],
  [#link(<UC14>)[#underline[\[UC14\]]], #link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcun formato],
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],

  [#FRx],
  [L'Utente deve poter confermare l'esportazione del report],
  [#link(<UC14>)[#underline[\[UC14\]]], #link(<UC14.2>)[#underline[\[UC14.2\]]]],

  // UC15
  [#FRx], [L'Utente deve poter accedere alla sezione di modifica password], [#link(<UC15>)[#underline[\[UC15\]]]],

  [#FRx],
  [L'utente deve inserire la password corrente all'interno dell'apposito campo del form di modifica],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.1>)[#underline[\[UC15.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce la password corrente],
  [#link(<UC15.1.1>)[#underline[\[UC15.1.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se la password corrente è errata],
  [#link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]],

  [#FRx],
  [L'Utente deve inserire la nuova password nell'apposito campo del form di modifica],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.2>)[#underline[\[UC15.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce la nuova password],
  [#link(<UC15.2.1>)[#underline[\[UC15.2.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se la nuova password non è conforme allo standard],
  [#link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]],

  [#FRx],
  [L'Utente deve ricevere un messaggio di errore se la nuova password è uguale alla precedente],
  [#link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]],

  [#FRx],
  [L'Utente deve poter confermare la modifica della password tramite pulsante],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.3>)[#underline[\[UC15.3\]]]],

  [#FRx],
  [L'Utente deve ricevere conferma dell'avvenuta modifica della password],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.4>)[#underline[\[UC15.4\]]]],

  //UC16
  [#FRx], [L'Utente deve poter visualizzare i suggerimenti di remediation], [#link(<UC16>)[#underline[\[UC16\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare la lista delle issue identificate],
  [#link(<UC16>)[#underline[\[UC16\]]], #link(<UC16.1>)[#underline[\[UC16.1\]]]],

  [#FRx],
  [L'Utente deve ricevere un avviso se non ci sono issue identificate],
  [#link(<UC16.1.1>)[#underline[\[UC16.1.1\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare il dettaglio di ogni suggerimento di remediation],
  [#link(<UC16>)[#underline[\[UC16\]]], #link(<UC16.2>)[#underline[\[UC16.2\]]]],

  //UC17
  [#FRx], [L'Orchestratore deve creare l'ambiente sandbox per l'analisi], [#link(<UC17>)[#underline[\[UC17\]]]],

  [#FRx],
  [Gli errori verificatisi durante la creazione dell'ambiente sandbox devono essere intercettati],
  [#link(<UC17.1>)[#underline[\[UC17.1\]]]],

  [#FRx],
  [L'Orchestratore deve comunicare al frontend gli errori nella creazione del sandbox],
  [#link(<UC17.1.1>)[#underline[\[UC17.1.1\]]]],

  //UC18
  [#FRx],
  [L'Orchestratore deve leggere le richieste dell'utente per configurare l'analisi],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  [#FRx],
  [L'Orchestratore deve eseguire l'analisi completa se richiesta dall'utente],
  [#link(<UC18>)[#underline[\[UC18\]]], #link(<UC18.1>)[#underline[\[UC18.1\]]]],

  [#FRx],
  [L'Orchestratore deve processare le richieste specifiche dell'utente sulle aree da analizzare],
  [#link(<UC18>)[#underline[\[UC18\]]], #link(<UC18.2>)[#underline[\[UC18.2\]]]],

  [#FRx],
  [L'Orchestratore deve eseguire l'analisi completa se il repository non è mai stato analizzato],
  [#link(<UC18.2.1>)[#underline[\[UC18.2.1\]]]],

  //UC19
  [#FRx], [Le vulnerabilità delle dipendenze devono essere analizzate], [#link(<UC19>)[#underline[\[UC19\]]]],

  [#FRx],
  [L'Utente deve poter accettare le remediation proposte per le vulnerabilità],
  [#link(<UC19>)[#underline[\[UC19\]]], #link(<UC19.1>)[#underline[\[UC19.1\]]]],

  [#FRx],
  [L'Utente deve poter rifiutare le remediation proposte],
  [#link(<UC19>)[#underline[\[UC19\]]], #link(<UC19.2>)[#underline[\[UC19.2\]]]],

  //UC20
  [#FRx], [Segreti e token esposti devono essere rilevati], [#link(<UC20>)[#underline[\[UC20\]]]],

  [#FRx],
  [L'Utente deve poter rifiutare le remediation proposte per i segreti rilevati],
  [#link(<UC20>)[#underline[\[UC20\]]], #link(<UC20.1>)[#underline[\[UC20.1\]]]],

  [#FRx],
  [La revoca automatica di segreti, se integrata con provider, deve poter essere eseguita],
  [#link(<UC20>)[#underline[\[UC20\]]], #link(<UC20.2>)[#underline[\[UC20.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare i risultati del rilevamento segreti],
  [#link(<UC20>)[#underline[\[UC20\]]], #link(<UC20.3>)[#underline[\[UC20.3\]]]],

  //UC21
  //UC22
  //UC23

  //UC24
  [#FRx], [Deve essere suggerito refactoring del codice], [#link(<UC24>)[#underline[\[UC24\]]]],

  [#FRx],
  [I refactor devono poter essere applicati automaticamente sotto supervisione],
  [#link(<UC24>)[#underline[\[UC24\]]], #link(<UC24.2>)[#underline[\[UC24.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare i suggerimenti di refactoring],
  [#link(<UC24>)[#underline[\[UC24\]]], #link(<UC24.3>)[#underline[\[UC24.3\]]]],

  //UC25
  [#FRx], [Devono poter essere generati changelog e release notes], [#link(<UC25>)[#underline[\[UC25\]]]],

  [#FRx],
  [Le note di breaking change devono essere rilevate e segnalate],
  [#link(<UC25>)[#underline[\[UC25\]]], #link(<UC25.1>)[#underline[\[UC25.1\]]]],

  [#FRx],
  [La pubblicazione su GitHub Release deve avvenire automaticamente],
  [#link(<UC25>)[#underline[\[UC25\]]], #link(<UC25.2>)[#underline[\[UC25.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare, modificare e approvare il changelog generato],
  [#link(<UC25>)[#underline[\[UC25\]]], #link(<UC25.3>)[#underline[\[UC25.3\]]]],

  //UC26
  [#FRx], [I test e il coverage del codice devono essere analizzati], [#link(<UC26>)[#underline[\[UC26\]]]],

  [#FRx],
  [Devono poter essere rieseguiti test intermittenti per conferma],
  [#link(<UC26>)[#underline[\[UC26\]]], #link(<UC26.1>)[#underline[\[UC26.1\]]]],

  [#FRx],
  [Devono essere suggeriti test addizionali per coprire gap di coverage],
  [#link(<UC26>)[#underline[\[UC26\]]], #link(<UC26.2>)[#underline[\[UC26.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare il report di test e coverage],
  [#link(<UC26>)[#underline[\[UC26\]]], #link(<UC26.3>)[#underline[\[UC26.3\]]]],

  //UC27
  [#FRx], [Devono poter essere applicate policy CI/CD pre-merge], [#link(<UC27>)[#underline[\[UC27\]]]],

  [#FRx],
  [Devono poter essere gestite eccezioni manuali alle policy],
  [#link(<UC27>)[#underline[\[UC27\]]], #link(<UC27.1>)[#underline[\[UC27.1\]]]],

  [#FRx],
  [Devono poter essere applicate policy dinamiche per branch differenti],
  [#link(<UC27>)[#underline[\[UC27\]]], #link(<UC27.2>)[#underline[\[UC27.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare i risultati delle policy applicate],
  [#link(<UC27>)[#underline[\[UC27\]]], #link(<UC27.3>)[#underline[\[UC27.3\]]]],

  //UC28
  [#FRx], [Devono poter essere generati report programmabili e inviati alert], [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRx],
  [L'Utente deve poter configurare filtri e template per i report],
  [#link(<UC28>)[#underline[\[UC28\]]], #link(<UC28.1>)[#underline[\[UC28.1\]]]],

  [#FRx],
  [Devono poter essere eseguite azioni automatiche su alert critici],
  [#link(<UC28>)[#underline[\[UC28\]]], #link(<UC28.2>)[#underline[\[UC28.2\]]]],

  [#FRx],
  [L'Utente deve poter visualizzare i report programmati generati],
  [#link(<UC28>)[#underline[\[UC28\]]], #link(<UC28.3>)[#underline[\[UC28.3\]]]],
)

#pagebreak()
== Requisiti di Qualità (QR)

#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,
)

#pagebreak()
== Requisiti di Vincolo (VR)

#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,
)
