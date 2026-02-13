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
#let versione = "v0.44.5"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2026/02/10",
    "0.44.5",
    "Fix vari degli UC + fix specifici UC13-15",
    members.andrea
  ),
  (
    "2026/02/10",
    "0.44.4",
    "Fix della posizione del sistema in tutti i diagrammi UC",
    members.andrea
  ),
  (
    "2026/02/10",
    "0.44.3",
    "Primo fix generale UC",
    members.andrea
  ),
  (
    "2026/02/09",
    "0.44.2",
    "Sistemato formato dei link al glossario",
    members.antonio,
  ),
  (
    "2026/02/09",
    "0.44.1",
    "Fix definizione attori",
    members.andrea
  ),
  (
    "2026/02/08",
    "0.44.0",
    "Aggiunto UC43, inclusi diagrammi e requisiti associati. Fix alle precondizioni, attori e diagrammi di UC1, UC2, UC4",
    members.antonio,
  ),
  (
    "2026/02/04",
    "0.43.0",
    "Classificazione Requisiti per priorità",
    members.alice,
  ),
  (
    "2026/02/04",
    "0.42.1",
    "Sistemata la sezione Attori + immagini separate per Front-end e Back-end",
    members.andrea,
  ),
  (
    "2026/02/03",
    "0.42.0",
    "Aggiunta diagrammi UC16-30",
    members.andrea,
  ),
  (
    "2026/02/02",
    "0.41.0",
    "Fix e aggiunta diagrammi mancanti UC6, UC9, UC10, UC12, UC13, UC14, UC15",
    members.andrea,
  ),
  (
    "2026/02/02",
    "0.40.0",
    "Fix e aggiunta diagrammi mancanti UC1-3",
    members.andrea,
  ),
  (
    "2026/02/01",
    "0.39.0",
    "Aggiunta Requisiti di Qualità e di Vincolo",
    members.alice,
  ),
  (
    "2026/01/27",
    "0.38.0",
    "Aggiunta dei requisiti funzionali UC38-UC41",
    members.andrea,
  ),
  (
    "2026/01/25",
    "0.37.2",
    "Fix alla struttura delle precondizioni, modifica a UC1-3 e relativi requisiti",
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
    members.berengan,
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
    members.alice,
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
    members.alice,
  ),
  (
    "2026/01/15",
    "0.25.1",
    "Fix per UC17 e UC18",
    members.antonio,
    members.alice,
  ),
  (
    "2026/01/15",
    "0.25.0",
    "UC17 e UC18",
    members.berengan,
    members.alice,
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
== Contesto del Progetto
Il presente documento descrive l'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-dei-requisiti")[#def("Analisi dei Requisiti")] relativo al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def("Code Guardian")], commissionato dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def("Var Group")] e realizzato dal gruppo di studenti #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def("Skarab Group")] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

Il progetto ha come obiettivo lo sviluppo di una piattaforma software ad #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] finalizzata all’#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e alla #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] automatizzata delle vulnerabilità presenti nei repository di codice sorgente. Il sistema è progettato in conformità ai requisiti e ai vincoli definiti nel #link(<capitolato>)[#underline[Capitolato *C2*]].
La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Finalità del Documento
Il documento di *Analisi dei Requisiti* formalizza le specifiche del prodotto software, descrivendo in modo dettagliato le funzionalità, i vincoli e gli standard di qualità che il sistema Code Guardian deve soddisfare per rispondere alle esigenze del committente.

Il documento costituisce il riferimento primario per il gruppo di lavoro (#def[Skarab Group]) e per gli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#stakeholder")[#def[stakeholder]], perseguendo i seguenti obiettivi:
- modellare le interazioni tra gli utenti e il sistema attraverso la definizione formale dei #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#caso-d-uso")[#def("casi d'uso")];
- individuare e dettagliare i requisiti di sistema, distinguendo tra #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisito-funzionale")[#def[requisiti funzionali]], #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisito-di-qualita")[#def[di qualità]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisito-di-vincolo")[#def[di vincolo]];
- classificare i requisiti in base alla priorità negoziale e strategica (#def[obbligatori], #def[opzionali], #def[desiderabili]), fornendo una guida per la pianificazione dello sviluppo;
- stabilire una base contrattuale verificabile per la validazione del prodotto finale rispetto a quanto concordato nel Capitolato e durante gli incontri con il proponente.

== Scopo del Prodotto
Il prodotto che #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] sviluppa è un #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sistema-software")[#def[sistema software]] #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sistema-multiagente")[#def[multiagente]] per l'analisi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#repository")[#def[repository]] #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#github")[#def[GitHub]].
Il sistema è progettato per essere modulare, scalabile e per operare in ambienti isolati, garantendo la sicurezza del sistema ospite durante l'esecuzione di codice non fidato.

L'obiettivo corrente è il rilascio di un #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#minimum-viable-product")[#def[MVP]] che dimostri l'efficacia dell'approccio a micro-agenti per la risoluzione automatica del debito tecnico.

== Funzioni del Prodotto
Le funzionalità del sistema sono suddivise in quattro macro-aree operative, accessibili tramite un'interfaccia web (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#gui")[#def[GUI]]):

- *Audit del Codice:* Esecuzione di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-statica")[#def[analisi statica]] per l'identificazione di errori a tempo di compilazione e verifica della presenza/copertura dei test unitari.
- *Audit della Sicurezza:* Analisi delle dipendenze per l'individuazione di librerie obsolete o affette da vulnerabilità note e verifica della conformità agli standard #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#owasp")[#def[OWASP]].
- *Audit della Documentazione:* Controllo della completezza e della coerenza semantica della documentazione tecnica rispetto al codice sorgente, effettuato tramite #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]].
- *Remediation:* Generazione automatica di suggerimenti correttivi (snippet di codice o testo) per le criticità rilevate.

== Caratteristiche degli Utenti
Il sistema è progettato per soddisfare le esigenze di diverse tipologie di utenti, con differenti livelli di competenza tecnica:

- *Sviluppatori Software:* Utenti tecnici che utilizzano il sistema per ottenere feedback immediato ("early feedback") sul proprio codice e applicare le correzioni suggerite.
- *Manager IT:* Utenti con focus gestionale che utilizzano la dashboard per monitorare la qualità complessiva e la postura di sicurezza dei progetti aziendali.
- *Consulenti Informatici:* Utenti esterni che utilizzano il tool per eseguire audit di terze parti su repository legacy o in fase di acquisizione.

== Limitazioni
Lo sviluppo e l'operatività del sistema sono soggetti ai seguenti vincoli e limitazioni:

- *Connettività:* Il funzionamento richiede una connessione internet attiva per comunicare con le #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#api")[#def[API]] di GitHub e i provider LLM.
- *Rate Limiting:* Le funzionalità di analisi semantica sono soggette ai limiti di frequenza e ai costi dei token imposti dai fornitori dei servizi LLM.
- *Privacy (GDPR):* Il sistema opera in modalità "stateless" e non deve memorizzare in modo persistente il codice sorgente analizzato oltre il tempo strettamente necessario all'analisi.
- *Ambito MVP:* Nella versione attuale, il supporto è limitato ai linguaggi di programmazione specificati nel Piano di Progetto; il supporto per ulteriori linguaggi è demandato a rilasci successivi.
== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario]].

== Riferimenti
=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione dell'Analisi dei Requisiti:
- *Standard IEEE 830-1998* IEEE Recommended Practice for Software Requirements Specifications <830> \
  #underline[https://ieeexplore.ieee.org/document/720574] \
  (ultimo accesso: *12/02/2026*)

- *Standard IEEE 29148-2018* ISO/IEC/IEEE International Standard – Systems and software engineering – Life cycle processes – Requirements engineering <29148>\
  #underline[https://ieeexplore.ieee.org/document/8559686] \
  (ultimo accesso: *12/02/2026*)

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *12/02/2026*)

- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. <NdP>\
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")] \
  (versione: *v1.0.0*)
=== Riferimenti Informativi
- *Dispense del Corso di Ingegneria del Software sull'Analisi dei Requisiti* <dispense_AdR>\
  #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf] \
  (ultimo accesso: *12/02/2026*)
- *Dispense del Corso di Ingegneria del Software sui Casi d'Uso* <dispense_UC>\
  #underline[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf] \
  (ultimo accesso: *12/02/2026*)


#pagebreak()
= Casi d'Uso
== Introduzione
In questa sezione sono descritti i casi d'uso principali del sistema, che illustrano le interazioni funzionali tra gli utenti (umani e software) e l'applicazione.

La specifica dei casi d'uso adotta il formato e le convenzioni di modellazione definite nel documento #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[#def[Norme di Progetto]]. Si rimanda a tale documento per la descrizione dettagliata della struttura dei campi (precondizioni, postcondizioni, scenari) e della sintassi #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#uml")[#def[UML]] utilizzata.

== Attori
Gli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#attore")[#def[attori]] rappresentano le entità che interagiscono con il sistema #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]]. Essi sono classificati in base al ruolo svolto nell'interazione:

- *Attori Primari:* Entità (umane o componenti software autonomi) che avviano le interazioni ("trigger") per raggiungere un obiettivo specifico.
- *Attori Secondari:* Sistemi o servizi esterni che il sistema interroga o notifica per completare le funzionalità richieste.

Di seguito vengono definiti i ruoli identificati nell'analisi.

#figure(
  table(
    columns: (1fr, 3fr),
    inset: 10pt,
    align: (col, row) => (if col == 0 { left } else { left }),
    fill: (col, row) => if row == 0 { luma(240) } else { white },
    stroke: 0.5pt + luma(200),
    
    table.header([*Attore*], [*Descrizione*]),

    // SEZIONE 1: UMANI
    table.cell(colspan: 2, fill: luma(250), [*Attori Primari (Utenti Umani)*]),

    [*Utente Non Autenticato*],
    [Utente generico che accede alle funzionalità pubbliche della piattaforma (es. Home Page, Login, Registrazione) senza possedere o aver attivato una sessione valida.],

    [*Utente Autenticato*],
    [Utente che ha completato con successo la procedura di autenticazione. Può configurare nuove analisi, consultare lo storico dei report e gestire il proprio profilo.],

    [*Utente Avanzato*],
    [Specializzazione dell'Utente Autenticato che ha collegato il proprio account al provider #def[GitHub], abilitando l'accesso ai repository privati e funzionalità di integrazione avanzata.],

    // SEZIONE 2: SISTEMI ATTIVI (ORCHESTRATORE)
    table.cell(colspan: 2, fill: luma(250), [*Attori Primari (Sistemi Interni)*]),

    [*Orchestratore*],
    [Componente software autonomo che agisce come attore sistemico. È responsabile dell'avvio e del coordinamento dei flussi di analisi automatizzati, della gestione degli ambienti di esecuzione  e della centralizzazione delle comunicazioni tra gli agenti e il database, senza richiedere intervento umano diretto durante l'elaborazione.],

    // SEZIONE 3: SISTEMI ESTERNI
    table.cell(colspan: 2, fill: luma(250), [*Attori Secondari (Sistemi Esterni)*]),

    [*GitHub*],
    [Piattaforma di hosting esterna. Interagisce con il sistema per fornire l'accesso al codice sorgente (via API o clone) e ai metadati dei repository.],

    [*Docker*],
    [Servizio di containerizzazione utilizzato per istanziare ambienti isolati necessari all'esecuzione sicura degli strumenti di analisi statica.],

    [*Servizio LLM*],
    [Servizio esterno di Intelligenza Artificiale interrogato per l'analisi semantica della documentazione e la generazione dei suggerimenti di remediation.],

    [*Strumenti di Analisi*],
    [Insieme degli strumenti terzi invocati dal sistema per l'esecuzione verticale delle scansioni di sicurezza e qualità.],
  ),
  caption: [Definizione e gerarchia degli Attori],
)

== Lista
=== UC1: Registrazione a CodeGuardian <UC1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian.
    - L'utente ha selezionato il comando di registrazione dalla pagina principale.
  ],
  post: [
    - L'utente visualizza un messaggio di conferma dell'avvenuta creazione dell'account CodeGuardian.
    - L'utente possiede le credenziali di un account CodeGuardian abilitate nel sistema.
  ],
  scenari: [
    - L'utente inserisce un username conforme e disponibile #link(<UC1.1>)[#underline[\[UC1.1\]]]
    - L'utente inserisce una email valida e disponibile #link(<UC1.2>)[#underline[\[UC1.2\]]]
    - L'utente inserisce una password valida #link(<UC1.3>)[#underline[\[UC1.3\]]]
    - L'utente seleziona il comando di conferma finale per completare la procedura.
  ],
  inclusioni: [
    - #link(<UC1.1>)[#underline[\[UC1.1\]]]
    - #link(<UC1.2>)[#underline[\[UC1.2\]]]
    - #link(<UC1.3>)[#underline[\[UC1.3\]]]
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
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione #link(<UC1>)[#underline[\[UC1\]]].
    - L'utente visualizza il campo di inserimento per lo username.
  ],
  post: [
    - L'utente ha inserito uno username conforme ai vincoli di formato e inutilizzato.
  ],
  scenari: [
    - L'utente digita lo username scelto per identificare il proprio profilo.
  ],
  estensioni: [
    - #link(<UC1.1.1>)[#underline[\[UC1.1.1\]]] // Errore formato
    - #link(<UC1.1.2>)[#underline[\[UC1.1.2\]]] // Errore disponibilità
  ],
  trigger: "L'utente interagisce con il campo di inserimento dello username",
)[
  #useCaseDiagram("1_1", "UC1.1 - Inserimento username")
]

===== UC1.1.1: Visualizzazione errore username non conforme <UC1.1.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha inserito lo username nella schermata di registrazione #link(<UC1.1>)[#underline[\[UC1.1\]]].
    - Lo username digitato non rispetta i vincoli di formato richiesti.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'errore di formato.
    - L'utente ha nuovamente accesso al campo di inserimento per digitare un altro username.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore in corrispondenza del campo username che specifica la non conformità del formato.
  ],
  trigger: "L'utente digita un valore non conforme ai vincoli di formato",
)[]

===== UC1.1.2: Visualizzazione errore username già in uso <UC1.1.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha inserito lo username nella schermata di registrazione #link(<UC1.1>)[#underline[\[UC1.1\]]].
    - Lo username digitato risulta già associato a un account CodeGuardian esistente.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'indisponibilità dello username.
    - L'utente ha nuovamente accesso al campo di inserimento per digitare un altro username.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'indisponibilità del nome utente scelto.
  ],
  trigger: "L'utente inserisce uno username che non risulta univoco",
)[]

==== UC1.2: Inserimento email <UC1.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione #link(<UC1>)[#underline[\[UC1\]]].
    - L'utente visualizza il campo di inserimento per l'indirizzo email.
  ],
  post: [
    - L'utente ha inserito un'email valida e disponibile per la registrazione.
  ],
  scenari: [
    - L'utente inserisce l'email di riferimento per l'account.
  ],
  estensioni: [
    - #link(<UC1.2.1>)[#underline[\[UC1.2.1\]]] // Errore formato
    - #link(<UC1.2.2>)[#underline[\[UC1.2.2\]]] // Errore disponibilità
  ],
  trigger: "L'utente interagisce con il campo di inserimento dell'email",
)[
  #useCaseDiagram("1_2", "UC1.2 - Inserimento email")
]

===== UC1.2.1: Visualizzazione errore email non valida <UC1.2.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta inserendo l'email nella schermata di registrazione #link(<UC1.2>)[#underline[\[UC1.2\]]].
    - L'email inserita non rispetta i vincoli di formato previsti.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'errore di formato.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore relativo alla non validità del formato email.
  ],
  trigger: "L'utente inserisce un'email non conforme ai vincoli di formato",
)[]

===== UC1.2.2: Visualizzazione errore email già in uso <UC1.2.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta inserendo l'email nella schermata di registrazione #link(<UC1.2>)[#underline[\[UC1.2\]]].
    - L'email inserita risulta già associata a un account esistente.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante che l'email è già registrata.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'indisponibilità dell'email scelta.
  ],
  trigger: "L'utente inserisce un'email già presente nel sistema",
)[]

==== UC1.3: Inserimento password <UC1.3>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta eseguendo la procedura di registrazione #link(<UC1>)[#underline[\[UC1\]]].
    - L'utente visualizza il campo per la password.
  ],
  post: [
    - L'utente ha inserito una password conforme ai criteri di sicurezza.
  ],
  scenari: [
    - L'utente inserisce la chiave d'accesso per il proprio account.
  ],
  estensioni: [
    - #link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]
  ],
  trigger: "L'utente interagisce con il campo di inserimento della password",
)[
  #useCaseDiagram("1_3", "UC1.3 - Inserimento password")
]

===== UC1.3.1: Visualizzazione errore password non conforme <UC1.3.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta inserendo la password nella schermata di registrazione #link(<UC1.3>)[#underline[\[UC1.3\]]].
    - La password inserita non rispetta i criteri di sicurezza richiesti.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante la non conformità della password.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che specifica la debolezza della password.
  ],
  trigger: "L'utente inserisce una password non conforme ai vincoli di formato",
)[]

=== UC2: Autenticazione a CodeGuardian <UC2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente possiede le credenziali di accesso a un account CodeGuardian #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente non ha l'autorizzazione ad usufruire delle funzionalità di CodeGuardian
    - L'utente ha selezionato il comando di accesso alla sezione di login.
  ],
  post: [
    - L'utente visualizza la conferma di avvenuta autenticazione.
    - L'utente ha accesso alle funzionalità riservate della piattaforma.
  ],
  scenari: [
    - L'utente inserisce uno username conforme e censito #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - L'utente inserisce la password conforme e associata allo username #link(<UC2.2>)[#underline[\[UC2.2\]]]
    - L'utente seleziona il comando di conferma per finalizzare l'accesso.
  ],
  inclusioni: [
    - #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - #link(<UC2.2>)[#underline[\[UC2.2\]]]
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
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta eseguendo la procedura di autenticazione #link(<UC2>)[#underline[\[UC2\]]].
    - L'utente visualizza il campo di inserimento per lo username.
  ],
  post: [
    - L'utente ha inserito uno username conforme ai vincoli di formato.
    - Lo username inserito corrisponde a un account CodeGuardian esistente.
  ],
  scenari: [
    - L'utente digita lo username nel campo dedicato.
  ],
  estensioni: [
    - #link(<UC2.1.1>)[#underline[\[UC2.1.1\]]] // Errore formato
    - #link(<UC2.1.2>)[#underline[\[UC2.1.2\]]] // Username non esistente
  ],
  trigger: "L'utente interagisce con il campo di inserimento dello username",
)[
  #useCaseDiagram("2_1", "UC2.1 - Inserimento username")
]

===== UC2.1.1: Visualizzazione errore username non conforme <UC2.1.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta inserendo lo username nella schermata di login #link(<UC2.1>)[#underline[\[UC2.1\]]].
    - Lo username digitato non rispetta i vincoli di formato richiesti.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'errore di formato.
    - L'utente ha nuovamente accesso al campo per correggere lo username.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore in corrispondenza del campo username che specifica la non conformità del valore inserito.
  ],
  trigger: "L'utente inserisce un valore non conforme ai vincoli di formato",
)[]

===== UC2.1.2: Visualizzazione errore username non esistente <UC2.1.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta inserendo lo username nella schermata di login #link(<UC2.1>)[#underline[\[UC2.1\]]].
    - Lo username digitato non corrisponde ad alcun account CodeGuardian censito.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'invalidità delle credenziali.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'invalidità dello username inserito.
  ],
  trigger: "L'utente inserisce uno username non presente nel sistema",
)[]

==== UC2.2: Inserimento password <UC2.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente ha inserito uno username esistente e conforme #link(<UC2.1>)[#underline[\[UC2.1\]]].
    - L'utente visualizza il campo di inserimento per la password.
  ],
  post: [
    - L'utente ha inserito una password conforme ai vincoli di formato.
    - La password inserita corrisponde a quella associata allo username fornito.
  ],
  scenari: [
    - L'utente digita la chiave d'accesso nel campo dedicato.
  ],
  estensioni: [
    - #link(<UC2.2.1>)[#underline[\[UC2.2.1\]]] // Errore formato
    - #link(<UC2.2.2>)[#underline[\[UC2.2.2\]]] // Errore password errata
  ],
  trigger: "L'utente interagisce con il campo di inserimento della password",
)[
  #useCaseDiagram("2_2", "UC2.2 - Inserimento password")
]

===== UC2.2.1: Visualizzazione errore password non conforme <UC2.2.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta inserendo la password nella schermata di login #link(<UC2.2>)[#underline[\[UC2.2\]]].
    - La password digitata non rispetta i vincoli di formato previsti.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'errore di formato.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che specifica la non conformità della password ai criteri di sistema.
  ],
  trigger: "L'utente inserisce una password formalmente non valida",
)[]

===== UC2.2.2: Visualizzazione errore password errata <UC2.2.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta inserendo la password nella schermata di login #link(<UC2.2>)[#underline[\[UC2.2\]]].
    - La password digitata non corrisponde a quella associata allo username fornito.
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'invalidità delle credenziali.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'errata combinazione delle credenziali.
  ],
  trigger: "L'utente inserisce una password non corretta",
)[]

=== UC3: Collegamento account GitHub <UC3>
#useCase(
  attore: "Utente autenticato",
  attori_secondari: "GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]].
    - L'utente non ha associato un account GitHub al proprio profilo CodeGuardian.
    - L'utente ha selezionato la sezione dedicata alle integrazioni esterne.
  ],
  post: [
    - L'utente visualizza la conferma dell'avvenuto collegamento tra gli account.
    - L'account GitHub risulta associato al profilo CodeGuardian dell'utente.
  ],
  scenari: [
    - L'utente interagisce con l'avviso di reindirizzamento esterno #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - L'utente esegue le operazioni di autorizzazione sulla piattaforma esterna GitHub.
    - L'utente visualizza l'esito della procedura di associazione #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  inclusioni: [
    - #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede il collegamento del proprio account GitHub",
)[
  #useCaseDiagram("3", "UC3 - Collegamento account GitHub")
]

==== UC3.1: Interazione con avviso di reindirizzamento <UC3.1>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente ha avviato la procedura di collegamento account #link(<UC3>)[#underline[\[UC3\]]].
  ],
  post: [
    - L'utente visualizza la pagina di autorizzazione sulla piattaforma esterna GitHub.
  ],
  scenari: [
    - L'utente visualizza un messaggio informativo relativo al trasferimento temporaneo su GitHub.
    - L'utente seleziona il comando per procedere con il reindirizzamento.
  ],
  estensioni: [
    - #link(<UC3.1.1>)[#underline[\[UC3.1.1\]]] // Rifiuto preventivo
  ],
  trigger: "L'utente seleziona l'opzione di collegamento account GitHub",
)[]

===== UC3.1.1: Visualizzazione annullamento reindirizzamento <UC3.1.1>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente visualizza l'avviso di trasferimento a piattaforma esterna #link(<UC3.1>)[#underline[\[UC3.1\]]].
  ],
  post: [
    - L'utente visualizza nuovamente la sezione integrazioni di CodeGuardian senza essere reindirizzato.
  ],
  scenari: [
    - L'utente seleziona il comando per annullare l'operazione di collegamento.
  ],
  trigger: "L'utente rifiuta il reindirizzamento a GitHub",
)[]

==== UC3.2: Visualizzazione esito associazione account <UC3.2>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente ha interagito con la piattaforma esterna GitHub a seguito del reindirizzamento #link(<UC3.1>)[#underline[\[UC3.1\]]].
    - L'utente è tornato alla piattaforma CodeGuardian.
  ],
  post: [
    - L'utente visualizza l'esito dell'operazione di associazione.
  ],
  scenari: [
    - L'utente visualizza un messaggio di conferma per l'avvenuta sincronizzazione tra l'account CodeGuardian e il profilo GitHub.
  ],
  estensioni: [
    - #link(<UC3.2.1>)[#underline[\[UC3.2.1\]]] // Errore tecnico/dati mancanti
    - #link(<UC3.2.2>)[#underline[\[UC3.2.2\]]] // Account già in uso
    - #link(<UC3.2.3>)[#underline[\[UC3.2.3\]]] // Rifiuto autorizzazione su GitHub
  ],
  trigger: "L'utente torna su CodeGuardian dopo l'interazione con GitHub",
)[]

===== UC3.2.1: Visualizzazione errore sincronizzazione fallita <UC3.2.1>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente è tornato su CodeGuardian a seguito della procedura esterna #link(<UC3.2>)[#underline[\[UC3.2\]]].
    - I dati di autorizzazione necessari non sono stati ricevuti correttamente.
  ],
  post: [
    - L'utente visualizza un messaggio di errore che invita a ripetere la procedura.
  ],
  scenari: [
    - L'utente visualizza un avviso relativo al fallimento tecnico della comunicazione.
  ],
  trigger: "Mancata ricezione delle informazioni di autorizzazione da GitHub",
)[]

===== UC3.2.2: Visualizzazione errore account già associato <UC3.2.2>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente è tornato su CodeGuardian a seguito della procedura esterna #link(<UC3.2>)[#underline[\[UC3.2\]]].
    - L'identificativo GitHub ricevuto risulta già collegato a un altro profilo CodeGuardian esistente.
  ],
  post: [
    - L'utente visualizza un avviso indicante che l'account GitHub è già associato a un altro utente.
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che specifica l'impossibilità di procedere con l'associazione.
  ],
  trigger: "L'account GitHub fornito è già presente nel database",
)[]

===== UC3.2.3: Visualizzazione rifiuto autorizzazione esterna <UC3.2.3>
#useCase(
  attore: "Utente autenticato",
  pre: [
    - L'utente è tornato su CodeGuardian a seguito della procedura esterna #link(<UC3.2>)[#underline[\[UC3.2\]]].
    - L'utente ha negato il consenso alla condivisione dei dati sulla piattaforma GitHub.
  ],
  post: [
    - L'utente visualizza un messaggio di avviso relativo al mancato consenso dell'autorizzazione.
  ],
  scenari: [
    - L'utente visualizza un avviso che informa che l'associazione non è avvenuta a causa del rifiuto espresso su GitHub.
  ],
  trigger: "L'utente nega i permessi sulla piattaforma GitHub",
)[]

=== UC4: Richiesta analisi repository GitHub <UC4>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian ad un account GitHub e ha abilitato la condivisione di informazioni #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente si trova nella sezione di richiesta di analisi di un repository GitHub 
  ],
  post: [
    - La richiesta di analisi del repository GitHub è stata correttamente inoltrata al Sistema
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub da analizzare #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente seleziona le aree di interesse per l’analisi #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente conferma l'invio della richiesta di analisi #link(<UC4.3>)[#underline[\[UC4.3\]]]
  ],
  inclusioni: [
    - #link(<UC4.1>)[#underline[\[UC4.1\]]] // Inserimento URL repository GitHub
    - #link(<UC4.2>)[#underline[\[UC4.2\]]] // Selezione aree di interesse
    - #link(<UC4.3>)[#underline[\[UC4.3\]]] // Invio richiesta di analisi
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione dedicata per la richiesta di analisi di repository GitHub in CodeGuardian",
)[
  #useCaseDiagram("4", "UC4 - Richiesta analisi repository GitHub")
]

==== UC4.1: Inserimento URL repository GitHub <UC4.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
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
  trigger: "L'utente interagisce con la sezione dell'inserimento dell'URL del repository GitHub durante la procedura di richiesta analisi repository GitHub",
)[
  #useCaseDiagram("4_1", "UC4.1 - Inserimento URL repository GitHub")
]

===== UC4.1.1: URL repository GitHub non conforme ai vincoli di formato <UC4.1.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'URL inserito non è conforme ai vincoli di formato previsti per l'inserimento dell'URL del repository GitHub
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
  trigger: "L'utente ha inserito un URL del repository GitHub non conforme ai vincoli di formato",
)[]

===== UC4.1.2: Repository GitHub non accessibile <UC4.1.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'URL del repository GitHub inserito non è accessibile
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il repository GitHub specificato non è accessibile per la procedura di richiesta analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'inserimento dell'URL del repository GitHub non accessibile durante la procedura di richiesta analisi",
)[]

===== UC4.1.3: Repository GitHub non inserito <UC4.1.3>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
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
  trigger: "L'utente termina senza inserire alcun URL durante la procedura di richiesta analisi repository GitHub",
)[]

==== UC4.2: Selezione aree di interesse <UC4.2>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
  ],
  post: [
    - L'utente ha selezionato le aree di interesse del repository GitHub da analizzare
  ],
  scenari: [
    - L'utente seleziona le aree del repository GitHub da analizzare, specificando cosa includere tra test, sicurezza o documentazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC4.2.1>)[#underline[\[UC4.2.1\]]] // Nessuna area di interesse selezionata
  ],
  trigger: "L'utente interagisce con la sezione della selezione delle aree del repository GitHub da analizzare durante la procedura di richiesta analisi repository GitHub",
)[
  #useCaseDiagram("4_2", "UC4.2: Selezione aree di interesse")
]

===== UC4.2.1: Nessuna area di interesse selezionata <UC4.2.1>
#useCase(
  attore: "Utente autenticato avanzato",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente non ha selezionato alcuna area di interesse durante la selezione delle aree di interesse
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionata almeno un'area di interesse per procedere con la richiesta di analisi del repository GitHub
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
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub #link(<UC4.1>)[#underline[\[UC4.1\]]]
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
  attore: UAA,
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub corretto #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente invia la richiesta di analisi al sistema
    - L'ultimo report di analisi del repository GitHub specificato è già aggiornato rispetto all'ultima modifica del repository stesso
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
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub
    - L'utente ha inserito un URL del repository GitHub corretto #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente invia la richiesta di analisi al sistema
    - Il sistema rileva che l'ultimo report di analisi del repository GitHub specificato è ancora in elaborazione
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata in quanto l'analisi precedente è ancora in corso
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

=== UC5: Visualizzazione singolo report analisi repository GitHub <UC5>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha almeno un report di analisi di un repository associato al proprio account
    - L'utente ha selezionato un repository dalla lista dei repository analizzati associati al proprio account
  ],
  post: [
    - L'utente ha visualizzato il report di analisi del repository GitHub selezionato
  ],
  scenari: [
    //- L'utente seleziona un report di analisi relativo a un repository GitHub #link(<UC5.2>)[#underline[\[UC5.2\]]]
    - L'utente seleziona i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]]
    - L'utente visualizza il report di analisi del repository GitHub richiesto 
  ],
  inclusioni: [
    - #link(<UC5.2>)[#underline[\[UC5.2\]]] // Selezione report di analisi
    - #link(<UC5.3>)[#underline[\[UC5.3\]]] // Selezione dati specifici
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente autorizzato accede alla funzionalità di visualizzazione del report di analisi di CodeGuardian",
)[
  #useCaseDiagram("5", "UC5 - Visualizzazione report analisi repository GitHub")
]

#TODO("Togliere UC5.4 e sistemare riferimenti")
#TODO("Check degli ex riferimenti UC5.1")

/* ==== UC5.1: Accesso alla sezione di visualizzazione dei report di analisi <UC5.1>
#useCase(
  attore: UAA,
  pre: [
    #TODO("inserire precondizioni")
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
)[] */

==== UC5.2: Selezione report di analisi <UC5.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report di analisi del proprio account //#link(<UC5.1>)[#underline[\[UC5.1\]]]
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

#TODO(
  "SAREBBE DA CAMBIARE QUESTA PARTE IN MODO CHE L'UTENTE POSSA SELEZIONARE I REPOSITORY A CUI SONO ASSOCIATI DEI REPORT, INVECE DI VEDERE TUTTI I REPOSITORY DELL'UTENTE, QUESTO SOTTOCASO DIVENTEREBBE 'LISTA VUOTA' O QUALCOSA DEL GENERE",
)
===== UC5.2.1: Nessun report di analisi disponibile per il repository GitHub selezionato <UC5.2.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report di analisi //#link(<UC5.1>)[#underline[\[UC5.1\]]]
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
    - L'utente si trova nella sezione di visualizzazione dei report di analisi //#link(<UC5.1>)[#underline[\[UC5.1\]]]
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
    #TODO("Da fare")
  ],
  post: [
    - L'utente ha definito l’insieme di dati da visualizzare nel report di analisi
  ],
  scenari: [
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
    - L'utente si trova nella sezione di visualizzazione dei report //#link(<UC5.1>)[#underline[\[UC5.1\]]]
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


==== UC5.4: Visualizzazione report di analisi <UC5.4>  #TODO("Va cancellato questo UC e sistemati i riferimenti")
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report //#link(<UC5.1>)[#underline[\[UC5.1\]]]
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
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC5>)[#underline[\[UC5\]]]
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati
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
    - #link(<UC6.3>)[#underline[\[UC6.3\]]]
    - #link(<UC6.4>)[#underline[\[UC6.4\]]]
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
)[#useCaseDiagram("6", "UC6 - Scelta intervallo temporale per visualizzazione confronto con report passati")]

==== UC6.1: Nessun intervallo temporale selezionato <UC6.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente non ha selezionato alcun intervallo temporale 
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionato un intervallo temporale per poter procedere con il 
     confronto con i report passati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente non inserisce alcun intervallo temporale e tenta di procedere con il confronto con i report passati",
)[]

===== UC6.2: Nessun report di analisi disponibile nel periodo selezionato <UC6.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC6>)[#underline[\[UC6\]]]
    - Non sono disponibili report di analisi nel periodo selezionato dall'utente
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
  trigger: "L'utente seleziona un intervallo temporale che non contiene report di analisi",
)[]

===== UC6.3: Intervallo temporale incoerente <UC6.3>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente ha selezionato un intervallo temporale incoerente
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
  trigger: "L'utente seleziona un intervallo temporale incoerente",
)[]

===== UC6.4: Intervallo temporale troppo ampio <UC6.4>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente ha selezionato un intervallo temporale troppo ampio
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
  trigger: "L'utente seleziona un intervallo temporale troppo ampio",
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
#TODO("Inglobare in UC7 e sistemare riferimenti")
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
    #TODO("Riguarda dopo UC5")
  ],
  post: [
    - L'utente ha visualizzato la valutazione dell'analisi del codice repository GitHub
  ],
  scenari: [
    - L'utente visualizza l'insieme di sezioni di valutazione dell'analisi del codice repository GitHub
    - L'utente visualizza il report di analisi statica del codice repository GitHub #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - L'utente visualizza l'analisi delle librerie e dipendenze del codice repository GitHub #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - L'utente visualizza il report di analisi della sicurezza OWASP del codice repository GitHub #link(<UC9.3>)[#underline[\[UC9.3\]]]
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
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]] già presente nell'UC9
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
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]] già presente nell'UC9
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

==== UC9.3: Visualizzazione report analisi della sicurezza OWASP del codice repository GitHub <UC9.3>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]] già presente nell'UC9
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
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]] già presente nell'UC9
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
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]] TOGLIEREI (vedi uc5 prima)
    #TODO("Riguarda dopo UC5")
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
  trigger: "L'utente accede alla sezione relativa al report di analisi della documentazione repository GitHub",
)[#useCaseDiagram("10", "UC10 - Visualizzazione report analisi della documentazione repository GitHub")]

==== UC10.1: Visualizzazione errori di spelling <UC10.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è nella sezione relativa agli errori di spelling del report di analisi della documentazione repository GitHub
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi della documentazione repository GitHub #link(<UC10>)[#underline[\[UC10\]]] GIA COMPRESI
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
  trigger: "L'utente accede alla sezione relativa al report di analisi degli errori di spelling della documentazione repository GitHub",
)[]

==== UC10.2: Visualizzazione completezza della documentazione nei confronti del codice <UC10.2>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è nella sezione relativa alla completezza della documentazione nei confronti del codice del report di analisi della documentazione repository GitHub
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa al report di analisi della documentazione repository GitHub #link(<UC10>)[#underline[\[UC10\]]]  GIA COMPRESI
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
  trigger: "L'utente accede alla sezione relativa al report di analisi della completezza della documentazione nei confronti del codice repository GitHub",
)[]

=== UC11: Visualizzazione numero totale di vulnerabilità individuate nel report di analisi repository GitHub <UC11>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]] (vedi prima uc5)
    #TODO("Riguarda dopo UC5")
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
  trigger: "L'utente accede alla sezione relativa al numero totale di vulnerabilità individuate nel report di analisi repository GitHub",
)[]

=== UC12: Visualizzazione area metadati di un report di analisi repository GitHub <UC12>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    #TODO("Riguarda dopo UC5")
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
  trigger: "L'utente accede alla sezione relativa ai metadati del report di analisi repository GitHub",
)[
  #useCaseDiagram("12", "UC12 - Visualizzazione area metadati di un report di analisi repository GitHub")
]

==== UC12.1: Visualizzazione data report analisi repository GitHub <UC12.1>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai metadati del report di analisi repository GitHub #link(<UC12>)[#underline[\[UC12\]]]
    - L'utente è nella sezione relativa alla data del report di analisi, all'interno dell'area metadati del report di analisi repository GitHub
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
  trigger: "L'utente accede alla sezione relativa alla data del report di analisi, all'interno dell'area metadati del report di analisi repository GitHub",
)[]

==== UC12.2: Visualizzazione commit analizzati nel report di analisi repository GitHub <UC12.2>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai metadati del report di analisi repository GitHub #link(<UC12>)[#underline[\[UC12\]]]
    - L'utente è nella sezione relativa ai commit analizzati, all'interno dell'area metadati del report di analisi repository GitHub
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
  trigger: "L'utente accede alla sezione relativa ai commit analizzati, all'interno dell'area metadati del report di analisi repository GitHub",
)[]

==== UC12.3: Visualizzazione richiedente report di analisi repository GitHub <UC12.3>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente sta visualizzando il report di analisi del repository GitHub richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai metadati del report di analisi repository GitHub #link(<UC12>)[#underline[\[UC12\]]]
    - L'utente è nella sezione relativa al richiedente del report di analisi, all'interno dell'area metadati del report di analisi repository GitHub
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
  trigger: "L'utente accede alla sezione relativa al richiedente del report di analisi, all'interno dell'area metadati del report di analisi repository GitHub",
)[]

=== UC13: Disconnessione account GitHub da CodeGuardian<UC13>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente è nella sezione di disconnessione dell'account GitHub dal sistema CodeGuardian
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
  trigger: "L'utente entra nella sezione Impostazioni > Account > GitHub dell'applicazione",
)[#useCaseDiagram("13", "UC13 - Disconnessione account GitHub da CodeGuardian")]

==== UC13.1: Selezione tasto Disconnetti <UC13.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha selezionato la sezione di disconnessione dell'account GitHub dall'applicazione CodeGuardian
  ],
  post: [
    - L'utente ha disconnesso con successo il proprio accont GitHub dall'applicazione Codeguardian
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
  trigger: "L'untente preme il tasto Disconnetti per disconnettere il proprio account",
)[#useCaseDiagram("13_1", "UC13.1 - Selezione tasto Disconnetti")]

===== UC13.1.1: Conferma disconnessione account<UC13.1.1>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    //- L'utente ha selezionato la sezione di disconnessione dell'account GitHub dal sistema CodeGuardian #link(<UC13>)[#underline[\[UC13\]]]
    - L'utente ha confermato la disconnessione del proprio account dall'applicazione CodeGuardian
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
    #TODO("Riguarda dopo UC5")
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
  trigger: "L'utente sta visualizzando il report di analisi e interagisce con il pulsante di esportazione",
)[#useCaseDiagram("14", "UC14 - Esportazione report di analisi repository GitHub")]

==== UC14.1: Selezione formato di esportazione <UC14.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente si trova nella sezione formati all'interno della visualizzazione del report
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
  trigger: "L'utente ha interagito con il pulsante di esportazione del report di analisi",
)[#useCaseDiagram("14_1", "UC14.1 - Selezione formato di esportazione")]

===== UC14.1.1: Nessun formato selezionato <UC14.1.1>
#useCase(
  attore: UAA,
  pre: [
    //- L'utente sta visualizzando il report di analisi #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente sta eseguendo la procedura di esportazione #link(<UC14>)[#underline[\[UC14\]]]
    - L'utente tenta di procedere senza selezionare un formato di esportazione nella sezione formati
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
    //- L'utente sta visualizzando il report di analisi #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente sta eseguendo la procedura di esportazione #link(<UC14>)[#underline[\[UC14\]]]
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
)[#useCaseDiagram("15", "UC15 - Modifica password profilo")]

==== UC15.1 Inserimento della password corrente <UC15.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è nella sezione di Modifica Password e si trova nel campo "password corrente"
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
)[#useCaseDiagram("15_1", "UC15.1 - Inserimento della password corrente")]

===== UC15.1.1 Password corrente non inserita <UC15.1.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è nella sezione di Modifica Password, si trova nel campo "password corrente" e non inserisce nulla
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
    - L'utente ha inserito la password corrente sbagliata nell'apposito campo del form "password corrente"
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
    - L'utente è nella sezione di Modifica Password e si trova nel campo "nuova password"
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
)[#useCaseDiagram("15_2", "UC15.2 - Inserimento della nuova password")]

===== UC15.2.1 Nessuna nuova password inserita <UC15.2.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è nella sezione di Modifica Password, si trova nel campo "nuova password" e non inserisce nulla
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
    - L'utente ha inserito la nuova password nell'apposito campo del form "nuova password" ma non segue lo standard adottato
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
    - L'utente ha inserito la nuova password nell'apposito campo del form "nuova password" ma è uguale alla password corrente
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
    //- L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]] già presenti in UC16
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai suggerimenti di remediation #link(<UC16>)[#underline[\[UC16\]]]
    - L'utente è nella sezione relativa alla visualizzazione delle issue identificate, all'interno della sezione dei suggerimenti di remediation del report di analisi repository GitHub
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
    //- L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai suggerimenti di remediation #link(<UC16>)[#underline[\[UC16\]]]
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
    //- L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC5.4>)[#underline[\[UC5.4\]]]
    //- L'utente ha selezionato, tra i dati specifici da visualizzare nel report #link(<UC5.3>)[#underline[\[UC5.3\]]], la sezione relativa ai suggerimenti di remediation #link(<UC16>)[#underline[\[UC16\]]]
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

//USE CASE DEL BACK-END
=== UC17: Verifica accessibilità repository GitHub <UC17>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'orchestratore ha ricevuto una richiesta di analisi contenente un URL GitHub da parte di un utente autorizzato di CodeGuardian //UC di avvio analisi.
  ],
  post: [
    - L'accessibilità della repository è stata accertata e l'orchestratore dispone dei permessi di lettura per avviare la analisi.
  ],
  scenari: [
    - L'orchestratore stabilisce una connessione con la piattaforma GitHub #link(<UC17.1>)[#underline[\[UC17.1\]]]
    - L'orchestratore esegue la ricerca della repository per determinarne la disponibilità #link(<UC17.2>)[#underline[\[UC17.2\]]]
  ],
  inclusioni: [
    - #link(<UC17.1>)[#underline[\[UC17.1\]]]
    - #link(<UC17.2>)[#underline[\[UC17.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'Orchestratore riceve una richiesta di analisi di un repository esterno",
)[
  #useCaseDiagram("17", "UC17 - Verifica accessibilità repository")
]

==== UC17.1: Comunicazione con GitHub <UC17.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'Orchestratore ha avviato la procedura di verifica #link(<UC17>)[#underline[\[UC17\]]].
  ],
  post: [
    - Il canale di comunicazione con la piattaforma esterna è stabilito correttamente.
  ],
  scenari: [
    - L'Orchestratore interroga i servizi di GitHub per verificarne l'operatività.
  ],
  estensioni: [
    - #link(<UC17.1.1>)[#underline[\[UC17.1.1\]]] // Mancata risposta
  ],
  trigger: "L'Orchestratore tenta di contattare GitHub",
)[
  #useCaseDiagram("17_1", "UC17.1 - Comunicazione con GitHub")
]

===== UC17.1.1: Errore di comunicazione con GitHub <UC17.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'Orchestratore ha tentato di contattare GitHub #link(<UC17.1>)[#underline[\[UC17.1\]]].
    - Il servizio esterno non risponde o restituisce un errore di rete.
  ],
  post: [
    - La procedura viene interrotta e l'errore di connessione viene tracciato.
  ],
  scenari: [
    - L'Orchestratore rileva l'impossibilità di raggiungere i servizi esterni di GitHub.
  ],
  trigger: "Mancata risposta da parte di GitHub",
)[]

==== UC17.2: Ricerca della repository <UC17.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - La comunicazione con GitHub è stata stabilita con successo #link(<UC17.1>)[#underline[\[UC17.1\]]].
  ],
  post: [
    - L'Orchestratore ha individuato la repository e ne ha convalidato l'accesso.
  ],
  scenari: [
    - L'Orchestratore ricerca la repository come risorsa pubblica.
  ],
  estensioni: [
    (UC17.2.1)
  ],
  trigger: "L'Orchestratore interroga GitHub per i metadati del repository",
)[]

==== UC17.2.1: Accesso a repository privata <UC17.2.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - La repository non risulta accessibile pubblicamente #link(<UC17.2>)[#underline[\[UC17.2\]]].
  ],
  post: [
    - L'Orchestratore ha ottenuto l'accesso alla risorsa tramite credenziali autorizzate.
  ],
  scenari: [
    - L'Orchestratore recupera le credenziali GitHub associate all'utente richiedente.
    - L'Orchestratore utilizza, in alternativa, il token di accesso fornito per la sessione.
  ],
  estensioni: [
    - #link(<UC17.2.1.1>)[#underline[\[UC17.2.1.1\]]] // Repository inaccessibile
  ],
  trigger: "La repository cercata richiede autorizzazione per l'accesso",
)[]

===== UC17.2.1.1: Repository inaccessibile <UC17.2.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'Orchestratore ha tentato l'accesso pubblico e privato (credenziali/token).
    - Nessun metodo di autorizzazione ha fornito l'accesso alla risorsa.
  ],
  post: [
    - La procedura di analisi viene annullata per mancanza di permessi.
  ],
  scenari: [
    - L'Orchestratore rileva il diniego definitivo di accesso da parte di GitHub per la risorsa specificata.
  ],
  trigger: "Esaurimento dei tentativi di accesso autorizzato",
)[]

/*
==== UC17.1 Errore durante la creazione dell'ambiente sandbox <UC17.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Docker",
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
)[#useCaseDiagram("17_1", "UC17.1 - Errore durante la creazione dell'ambiente sandbox")]

=== UC17.1.1 Comunicazione dell'errore durante la creazione dell'ambiente sand box <UC17.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Viene rilevato un errore durante la creazione dell'ambiente sandbox
  ],
  post: [
    - L'ambiente sandbox non viene creato correttamente e ciò viene comunicato al sistema Front-end
  ],
  scenari: [
    - L'orchestratore comunica l'errore al sistema Front-end
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
    //- L'utente autenticato avanzato ha richiesto l'analisi del proprio repository al sistema CodeGuardian #link(<UC4>)[#underline[\[UC4\]]]
    #TODO("check precondizione tolta")
    - L'ambiente sandbox é stato creato correttamente #link(<UC17>)[#underline[\[UC17\]]]
  ],
  post: [
    - L'orchestratore ha letto e interpretato correttamente le richieste dell'utente
  ],
  scenari: [
    - L'orchestratore legge le richieste dell'utente
    - L'orchestratore notifica al sistema Back-end i compiti da svolgere
  ],
  inclusioni: [
    - #link(<UC18.1>)[#underline[\[UC18.1\]]]
    - #link(<UC18.2>)[#underline[\[UC18.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'orchestratore ha letto e interpretato correttamente le richieste dell'utente e ha visionato il repository",
)[#useCaseDiagram("18", "UC18 - Lettura delle richieste dell'utente da parte dell'orchestratore")]

==== UC18.1 Richiesta di analisi completa <UC18.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Non ci sono state richieste specifiche da parte dell'utente
  ],
  post: [
    - L'orchestratore avvia l'analisi completa del repository
  ],
  scenari: [
    - Il sistema Front-end comunica all'orchestratore che l'utente vuole svolgere un'analisi completa del proprio repository
    - L'orchestratore riceve la richiesta e avvia l'analisi completa del repository
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'orchestratore riceve dal sistema Front-end la richiesta di analisi completa",
)[]
==== UC18.2 Richieste specifiche sull'analisi da parte del front-end <UC18.2>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'utente ha fatto delle richieste specifiche sulle aree da analizzare del proprio repository
  ],
  post: [
    - L'orchestratore avvia l'analisi specifica del repository in base alle richieste dell'utente
  ],
  scenari: [
    - Il sistema Front-end comunica all'orchestratore le specifiche richieste dell'utente rispetto alle aree da analizzare
    - L'orchestratore controlla la pre-esistenza del repository da analizzare nel #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#database")[#def("Database")]
    - L'orchestratore, una volta compresa la richiesta, avvia l'analisi specifica
  ],
  inclusioni: [
    - #link(<UC18.2.1>)[#underline[\[UC18.2.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema Front-end comunica al sistema Back-end le richieste che dovranno essere prese in carico",
)[#useCaseDiagram("18_2", "UC18.2 - Richieste specifiche sull'analisi da parte del frontend")]

===== UC18.2.1 Repository mai analizzato in precedenza <UC18.2.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il repository non era mai stato analizzato in precedenza
  ],
  post: [
    - L'orchestratore istruisce avvia un'analisi completa del repository
  ],
  scenari: [
    - L'orchestratore controlla la pre-esistenza del repository da analizzare nel database e non la trova
    - L'orchestratore si comporta come se fosse stata richiesta l'analisi completa
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'orchestratore non ha trovato la repository nel database",
)[]
*/

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
)[#useCaseDiagram("19", "UC19 - Analisi vulnerabilità dipendenze")]
==== UC19.1 L'utente accetta la remediation proposta <UC19.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente ha preso visione dell'analisi delle vulnerabilità
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
    - L'utente ha preso visione dell'analisi delle vulnerabilità
    - L'utente ha visualizzato le remediation proposte
  ],
  post: [
    - Le remediation proposte vengono scartate
  ],
  scenari: [
    - L'utente visualizza le remediation proposte
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
    - #link(<UC20.3>)[#underline[\[UC20.3\]]] // Visualizzazione risultati
  ],
  estensioni: [
    - #link(<UC20.1>)[#underline[\[UC20.1\]]] // Verifica manuale dei falsi positivi
    - #link(<UC20.2>)[#underline[\[UC20.2\]]] // Esecuzione automatica di revoca se integrata con provider
  ],
  trigger: "L'utente avvia la scansione segreti o la scansione è parte di una pipeline CI",
)[#useCaseDiagram("20", "UC20 - Rilevamento segreti e token")]

==== UC20.1: L'utente rifiuta le remediation proposte <UC20.1>
#useCase(
  attore: UAA,
  pre: [
    - La scansione ha rilevato possibili segreti
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
    - Il report dei possibili segreti è disponibile
  ],
  post: [
    - L'utente visualizza l'elenco dei possibili segreti con dettagli e azioni
  ],
  scenari: [
    - L'utente apre il pannello dei risultati; il front-end richiede il report al back-end e mostra i dettagli con azioni suggerite
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
    - L'utente riceve un report di compatibilità delle licenze e i #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#rischio")[#def("Rischi")] associati
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
)[#useCaseDiagram("21", "UC21 - Verifica conformità licenze")]

==== UC21.1: Integrazione con processo di approvazione legale <UC21.1>
#useCase(
  attore: UAA,
  pre: [
    - Licenze non compatibili rilevate
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
)[#useCaseDiagram("22", "UC22 - Revisione PR automatizzata")]

==== UC22.1: Esecuzione test automatici <UC22.1>
#useCase(
  attore: UAA,
  pre: [
    - PR aperta
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
    - Problemi rilevati nella PR
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
)[#useCaseDiagram("23", "UC23 - Monitor qualità del codice")]


==== UC23.1: Integrazione con tool di metriche esterni <UC23.1>
#useCase(
  attore: UAA,
  pre: [
    - Metriche calcolate
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
    - Metriche disponibili
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
    - #link(<UC24.3>)[#underline[\[UC24.3\]]] // Visualizzazione suggerimenti
  ],
  estensioni: [
    - #link(<UC24.2>)[#underline[\[UC24.2\]]] // Applicazione automatica sotto supervisione
  ],
  trigger: "Richiesta manuale o raccomandazione durante code review",
)[#useCaseDiagram("24", "UC24 - Suggerimenti di refactor")]

//altro caso
==== UC24.1: Verifica impatto tramite test automatizzati <UC24.1>
#useCase(
  attore: UAA,
  pre: [
    - Refactor suggeriti
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
    - Refactor selezionati
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
    - Elenco suggerimenti di refactor generato
  ],
  post: [
    - L'utente visualizza i suggerimenti con snippet e azioni
  ],
  scenari: [
    - L'utente apre il pannello refactor; il front-end richiede i suggerimenti e mostra snippet con azioni possibili
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
    - #link(<UC25.3>)[#underline[\[UC25.3\]]] // Visualizzazione e approvazione changelog
  ],
  estensioni: [
    - #link(<UC25.2>)[#underline[\[UC25.2\]]] // Pubblicazione automatica su GitHub Release
  ],
  trigger: "Preparazione della release o su richiesta dell'amministratore",
)[#useCaseDiagram("25", "UC25 - Generazione changelog e release notes")]

==== UC25.1: Rilevamento note di breaking change <UC25.1>
#useCase(
  attore: UAA,
  pre: [
    - Commit analizzati per changelog
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
    - Changelog approvato
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
    - Changelog generato e disponibile
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

=== UC26: Analisi test e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-coverage")[#def("Coverage")] <UC26>
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
    - #link(<UC26.3>)[#underline[\[UC26.3\]]] // Visualizzazione report
  ],
  estensioni: [
    - #link(<UC26.2>)[#underline[\[UC26.2\]]] // Suggerimenti per test addizionali
  ],
  trigger: "Esecuzione pipeline CI o richiesta manuale del team di QA",
)[#useCaseDiagram("26", "UC26 - Analisi test e coverage")]

==== UC26.1: Replay test intermittenti <UC26.1>
#useCase(
  attore: UAA,
  pre: [
    - Test flakiness rilevata
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
    - Coverage analizzata
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
    - Report di test e coverage generato e disponibile
  ],
  post: [
    - L'utente visualizza il report dettagliato con gap e suggerimenti di test
  ],
  scenari: [
    - L'utente apre il pannello dei report; il front-end richiede il report al back-end e mostra percentuali di coverage, test falliti e suggerimenti
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
    - #link(<UC27.3>)[#underline[\[UC27.3\]]] // Visualizzazione risultati policy
  ],
  estensioni: [
    - #link(<UC27.2>)[#underline[\[UC27.2\]]] // Policy dinamiche per branch differenti
  ],
  trigger: "Tentativo di merge su branch protetto",
)[#useCaseDiagram("27", "UC27 - Policy CI/CD pre-merge")]

==== UC27.1: Gestione eccezioni approvate manualmente <UC27.1>
#useCase(
  attore: UAA,
  pre: [
    - Policy fallite
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
    - Branch differenti configurati
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
    - Il tentativo di merge è stato valutato dal sistema e il report policy è disponibile
  ],
  post: [
    - L'utente visualizza dettagli sulle policy fallite e le eccezioni proposte
  ],
  scenari: [
    - L'utente apre il pannello merge; il front-end richiede il report policy e mostra info su fallimenti e possibili azioni
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
    - #link(<UC28.3>)[#underline[\[UC28.3\]]] // Visualizzazione report
  ],
  estensioni: [
    - #link(<UC28.2>)[#underline[\[UC28.2\]]] // Azioni automatiche su alert critici
  ],
  trigger: "Pianificazione temporale o evento di sistema che provoca l'alert",
)[#useCaseDiagram("28", "UC28 - Report programmabili e alert")]

==== UC28.1: Filtri e template report <UC28.1>
#useCase(
  attore: UAA,
  pre: [
    - Report configurato 
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
    - Alert critico rilevato
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
    - Report programmabile generato e disponibile 
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
    - Il sistema Back-end ha chiari i propri compiti rispetto alle richieste del //sistema Front-end realtive all'analisi #link(<UC17>)[#underline[\[UC18\]]]
  ],
  post: [
    - L'orchestratore ha contattato corettamente i tool esterni di analisi
  ],
  scenari: [
    - L'orchestratore legge le richieste del sistema Front-end e le interpreta correttamente
    - L'orchestratore sceglie quali sono i tool esterni di analisi da interrogare
    - L'orchestratore contatta i tool esterni
    - L'orchestratore inserisce all'interno dei tool esterni i dati appropriati da analizzare
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
)[#useCaseDiagram("29", "UC29 - Recupero e avvio tool esterni di analisi")]

==== UC29.1 Richiesta di analisi del codice <UC29.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "SonarQube/Semgrep",
  pre: [
    - L'orchestratore ha istruito il sistema Back-end sulla necessità di contattare lo strumento di analisi del codice
  ],
  post: [
    - Lo strumento di analisi del codice ha ricevuto correttamente il codice da analizzare e può iniziare l'analisi
  ],
  scenari: [
    - L'orchestratore riceve l'istruzione del codice da analizzare
    - L'orchestratore recupera il codice da analizzare e contatta il tool di analisi
    - Lo strumento di analisi del codice viene contattato e gli viene passato il codice da analizzare
    - Lo strumento di analisi del codice analizza il codice
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC29.1.1>)[#underline[\[UC29.1.1\]]]
  ],
  trigger: "Viene richiesta l'analisi del codice",
)[#useCaseDiagram("29_1", "UC29.1 - Richiesta di analisi del codice")]

===== UC29.1.1 Uno o più linguaggi presenti nella codebase non sono supportati dallo strumento di analisi <UC29.1.1>
#useCase(
  attore: "SonarQube/Semgrep",
  pre: [
    - Lo strumento di analisi del codice ha ricevuto correttamente il codice da analizzare e ha iniziato l'analisi
  ],
  post: [
    - Lo strumento di analisi del codice comunica al sistema Back-end che il linguaggio non è supportato
  ],
  scenari: [
    - Lo strumento di analisi del codice legge la richiesta del sistema Back-end
    - Lo strumento di analisi del codice rileva dei linguaggi non riconosciuti
    - Lo strumento di analisi del codice comunica l'errore al sistema Back-end
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene richiesta l'analisi del codice e sono presenti linguaggi non supportati",
)[]

==== UC29.2 Richiesta di analisi della documentazione <UC29.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "OpenAI",
  pre: [
    - L'orchestratore è stato istruito sulla necessità di contattare lo strumento di analisi della documentazione 
  ],
  post: [
    - La documentazione viene passata correttamente allo strumento di analisi
  ],
  scenari: [
    - L'orchestratore riceve istruzione di analizzare la documentazione
    - L'orchestratore recupera la documentazione appropriata da passare allo strumento di analisi
    - Lo strumento di analisi riceve la documentazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene richiesta l'analisi della documentazione",
)[]

==== UC29.3 Richiesta di analisi del rispetto degli standard OWASP <UC29.3>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "OWASP ZAP",
  pre: [
    - L'orchestratore è stato istruito sulla necessità di contattare lo strumento di analisi degli standard OWASP
  ],
  post: [
    - Lo strumento di analisi degli standard OWASP riceve l'applicazione da analizzare correttamente
  ],
  scenari: [
    - L'orchestratore riceve istruzione di analizzare l'applicazione rispetto agli standard OWASP da parte dell'orchestratore
    - L'orchestratore recupera correttamente l'applicazione da passare allo strumenti di anlisi degli standard OWASP
    - Lo strumento di analisi riceve correttamente l'applicazione e può procedere con l'analisi
  ],
  inclusioni: [
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
    - L'orchestratore ha provato a contattare un tool esterno per l'analisi
  ],
  post: [
    - L'orchestratore trova un tool alternativo e lo contatta
  ],
  scenari: [
    - L'orchestratore ha provato a contattare un tool esterno fallendo
    - L'orchestratore cerca internamente un tool alternativo
    - L'orchestratore contatta il tool alternativo
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
)[#useCaseDiagram("30", "UC30 - Generazione report finale")]

==== UC30.1 Integrazione delle nuove analisi singole <UC30.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha completato la parte di analisi richiesta
  ],
  post: [
    - L'orchestratore ha preso in carico la nuova sezione del report di analisi
  ],
  scenari: [
    - L'orchestratore ha finito la parte di analisi richiesta da parte dell'utente
    - L'orchestratore ha visualizzato la nuova sezione del report
    - L'orchestratore integra la nuova sezione nel report corrente
    - L'orchestratore modifica il report segnalando che una sezione è avanti nell'analisi rispetto alle alte
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene completata l'analisi della repository",
)[]

=== UC31 Trasferimento del report di analisi al sistema front-end <UC31>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha preso in carico il report di analisi #link(<UC30>)[#underline[\[UC30\]]]
  ],
  post: [
    - Il sistema Front-end può mostrare correttamente il report di analisi
  ],
  scenari: [
    - L'orchestratore comunica al sistema Front-end che il report di analisi è disponibile
    - L'orchestratore invia il report di analisi al sistema Front-end
    - Il sistema Front-end può ora mostrare il report di analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il report è in mano all'orchestratore e pronto per essere inviato al sistema Front-end",
)[]

=== UC32 L'utente viene notificato della disponibilità di visualizzare il nuovo report id anlisi<UC32>
#useCase(
  attore: UAA,
  pre: [
    - Il sistema Front-end ha ricevuto correttamente il report di analisi da parte dell'orchestratore #link(<UC31>)[#underline[\[UC31\]]]
  ],
  post: [
    - L'utente può visualizzare il report richiesto #link(<UC5.4>)[#underline[\[UC5.4\]]]
    #TODO("Riguarda dopo UC5")
  ],
  scenari: [
    - Il sistema Front-end ha ricevuto il report di analisi ed è pronto a mostrarlo
    - Il sistema Front-end notifica all'utente la disponibilità di visualizzazione del nuovo report di analisi
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

=== UC34: Notifica completamento dell'analisi della repository al Front-end <UC34>
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
  #useCaseDiagram("34", "UC34 - Notifica completamento dell'analisi della repository al Front-end")
]

==== UC34.1: Nuovo tentativo di invio del messaggio di completamento <UC34.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'Orchestratore non riceve un ack dal Front-end dopo aver inviato la notifica di completamento dell'analisi
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
  trigger: "L'Orchestratore non riceve l'ack di avvenuta ricezione della notifica di completamento dell'analisi dal Front-end",
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
    - L'Orchestratore non riceve un ack dal Front-end dopo aver inviato la notifica di fallimento dell'analisi
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
  trigger: "L'Orchestratore non riceve l'ack di avvenuta ricezione della notifica di fallimento dell'analisi dal Front-end",
)[]

=== UC36: Salvataggio metadati repository <UC36> #TODO("Probabile eliminazione")
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

=== UC37: Verifica esistenza repository analizzati <UC37> 
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore riceve una richiesta di visualizzazione dei repository analizzati
  ],
  post: [
    - L'orchiestratore ha verificato l'esistenza dei repository analizzati e restituite le informazioni relative ad essi
  ],
  scenari: [
    - L'Orchestratore verifica l'esistenza dei repository analizzati
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

==== UC37.1: Nessun repository analizzato <UC37.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore si trova nella verifica di esistenza dei repository analizzati #link(<UC37>)[#underline[\[UC37\]]]
    - Non sono presenti repository analizzati
  ],
  post: [
    - L'orchestratore ha inviato un errore di mancata presenza di repository analizzati
  ],
  scenari: [
    - L'orchestratore non trova nessun repository analizzato e procede con l'invio dell'errore
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Nessun repository analizzato trovato",
)[]

=== UC38 Salvataggio del report dell'analisi <UC38> #TODO("Probabile eliminazione")
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
    - L'orchestratore ha richiesto l'archiviazione del report ma non avviene correttamente il processo di salvataggio 
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

=== UC39 Salvataggio delle metriche aggregate <UC39> #TODO("Probabile eliminazione")
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
    - L'orchestratore ha richiesto il salvataggio delle metriche aggregate ma non avviene correttamente il processo di salvataggio 
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

=== UC40 Invio delle credenziali al sistema Back-end <UC40> #TODO("Probabile eliminazione")
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
    - L'utente ha tentato l'invio delle credenziali ma non avviene correttamente il processo di salvataggio 
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

#TODO(
  "UC42 Validazione delle credenziali dell'utente. Sinceramente eliminerei questo UC perchè la validazione è già presente nelle inclusioni di UC1 e UC2",
)

=== UC43 Visualizzazione ranking dei repository analizzati <UC43>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub #link(<UC3>)[#underline[\[UC3\]]] 
  ],
  post:[
    - L'utente visualizza la lista dei repository analizzati ordinata per punteggio
  ],
  scenari: [
    - Il Sistema recupera la lista dei repository analizzati dall'utente
    - Il Sistema ordina i repository per punteggio di qualità complessiva
    - Il Sistema Front-end mostra la lista ordinata all'utente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC43.1>)[#underline[[UC43.1]]]
  ],
  trigger:"L'utente si sposta nella sezione di ranking dei repository",
)[
  #useCaseDiagram("43", "UC43 - Visualizzazione ranking dei repository analizzati")
]

=== UC43.1 Nessun repository analizzato <UC43.1>
#useCase(
  attore: UAA,
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub #link(<UC3>)[#underline[\[UC3\]]] 
    - Non sono presenti repository analizzati associati all'utente
  ],
  post:[
    - L'utente visualizza il messaggio di lista vuota
  ],
  scenari: [
    - Il Sistema mostra all'utente un messaggio che lo invita ad analizzare delle repository per avere un ranking di queste
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger:"L'utente si sposta nella sezione di ranking dei repository senza aver mai analizzato una repository",
)[]

#pagebreak()

= Requisiti di Sistema
In questa sezione sono elencati i requisiti del sistema CodeGuardian individuati da _Skarab Group_.

Per la nomenclatura utilizzata si consiglia di leggere la sezione _Requisiti_ delle #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/PdP.pdf")[#underline[*Norme di Progetto*]].

#let fr_counter = counter("FR")
#let qr_ob_counter = counter("QROb")
#let vr_ob_counter = counter("VROb")

#let FRObx = context [FROb#fr_counter.step()#fr_counter.display()]
#let FRDex = context [FRDe#fr_counter.step()#fr_counter.display()]
#let FROpx = context [FROp#fr_counter.step()#fr_counter.display()]
#let QRObx = context [QROb#qr_ob_counter.step()#qr_ob_counter.display()]
#let VRObx = context [VROb#vr_ob_counter.step()#vr_ob_counter.display()]

// partono da 1
#fr_counter.step()
#qr_ob_counter.step()
#vr_ob_counter.step()

== Requisiti Funzionali (FR)

#table(
  columns: (1fr, 3fr, 1fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Rif.*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  // UC1
  [#FRObx],
  [Il Sistema deve consentire all'Utente non registrato l'accesso alla sezione di creazione account.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve consentire all'Utente non registrato l'immissione di un nome utente.],
  [#link(<UC1.1>)[#underline[\[UC1.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'uso di username con lunghezza inferiore a 4 caratteri o superiore a 20.],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRObx],
  [Il Sistema deve accettare esclusivamente caratteri alfanumerici per lo username.],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore se lo username non rispetta i vincoli di formato.],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare l'univocità dello username tra gli account già censiti.],
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore se lo username inserito è già in uso.],
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  [#FRObx],
  [Il Sistema deve consentire all'Utente non registrato l'immissione di un indirizzo email.],
  [#link(<UC1.2>)[#underline[\[UC1.2\]]]],

  [#FRObx],
  [Il Sistema deve validare la sintassi dell'email (presenza di '\@' e dominio valido).],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore se l'email non rispetta il formato standard.],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare che l'email non sia già associata a un account esistente.],
  [#link(<UC1.2.2>)[#underline[\[UC1.2.2\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore se l'email inserita è già in uso.],
  [#link(<UC1.2.2>)[#underline[\[UC1.2.2\]]]],

  [#FRObx],
  [Il Sistema deve consentire all'Utente non registrato l'immissione di una password.],
  [#link(<UC1.3>)[#underline[\[UC1.3\]]]],

  [#FRObx],
  [Il Sistema deve imporre criteri di sicurezza per la password (min. 8 caratteri, maiuscole, minuscole, numeri, caratteri speciali).],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore se la password non soddisfa i criteri di sicurezza.],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRObx],
  [Il Sistema deve permettere la finalizzazione della registrazione previa validazione di tutti i campi.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // --- SEZIONE UC2: AUTENTICAZIONE ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente non autenticato l'accesso alla sezione di login.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve garantire l'accesso alle funzionalità riservate a seguito di una corretta autenticazione.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve consentire l'immissione dello username per la procedura di autenticazione.],
  [#link(<UC2.1>)[#underline[\[UC2.1\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore se lo username inserito in fase di login non rispetta il formato previsto.],
  [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare l'esistenza dello username inserito tra gli account censiti.],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore generico se lo username inserito non viene trovato.],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

  [#FRObx],
  [Il Sistema deve consentire l'immissione della password per la procedura di autenticazione.],
  [#link(<UC2.2>)[#underline[\[UC2.2\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore se la password inserita in fase di login non rispetta il formato previsto.],
  [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare la corrispondenza tra la password inserita e quella associata allo username.],
  [#link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

  [#FRObx],
  [L'Utente deve visualizzare un messaggio di errore generico se la password inserita è errata.],
  [#link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

  // UC3
  [#FRObx],
  [L'Utente autenticato deve poter accedere alla sezione di collegamento account GitHub],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [L'Utente deve poter completare l'autorizzazione tramite il reindirizzamento a GitHub e il successivo ritorno automatico all'applicazione per il recupero del codice identificativo],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [L'Utente autenticato deve visualizzare un avviso prima del redirect a GitHub],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la volontà di procedere con il collegamento a GitHub],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRObx], [L'Utente deve poter rifiutare il collegamento a GitHub], [#link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il codice GitHub non viene ricevuto],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il codice non è conforme al formato],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il codice è già associato ad altro utente],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di notifica di fallimento se la condivisione delle informazioni necessarie di GitHub è stato negato],
  [#link(<UC3.2.3>)[#underline[\[UC3.2.3\]]]],

  // UC4
  [#FRObx], [L'Utente deve poter accedere alla sezione di richiesta analisi], [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx],
  [L'Utente deve poter inserire l'URL del repository GitHub nel campo dedicato],
  [#link(<UC4.1>)[#underline[\[UC4.1\]]]],

  [#FRObx], [L'URL deve iniziare con il protocollo 'https://'], [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRObx], [Il dominio dell'URL deve essere 'github.com'], [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se l'URL non è conforme ai vincoli di formato],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il repository non è accessibile o è inesistente],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce alcun URL],
  [#link(<UC4.1.3>)[#underline[\[UC4.1.3\]]]],

  [#FRObx],
  [L'Utente deve poter selezionare le aree di interesse per l'analisi],
  [#link(<UC4.2>)[#underline[\[UC4.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcuna area di interesse],
  [#link(<UC4.2.1>)[#underline[\[UC4.2.1\]]]],

  [#FRObx],
  [L'utente deve poter inviare la richiesta di analisi tramite pulsante di conferma],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se l'ultimo report è già up-to-date],
  [#link(<UC4.3.1>)[#underline[\[UC4.3.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se un'analisi è già in elaborazione],
  [#link(<UC4.3.2>)[#underline[\[UC4.3.2\]]]],

  // UC5
  [#FRObx],
  [L'Utente deve poter accedere alla sezione di visualizzazione dei report di analisi],
  [#link(<UC5>)[#underline[\[UC5\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare l'elenco dei report di analisi disponibili],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#FRObx],
  [L'Utente deve poter selezionare un report dall'elenco per consultarne i dettagli],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono report disponibili per il repository],
  [#link(<UC5.2.1>)[#underline[\[UC5.2.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcun report],
  [#link(<UC5.2.2>)[#underline[\[UC5.2.2\]]]],

  [#FRObx], [L'Utente deve poter selezionare i dati specifici da visualizzare], [#link(<UC5.3>)[#underline[\[UC5.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcun dato specifico],
  [#link(<UC5.3.1>)[#underline[\[UC5.3.1\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare i dettagli completi dell'analisi],
  [#link(<UC5.4>)[#underline[\[UC5.4\]]]],

  // UC6
  [#FRObx],
  [L'Utente deve poter selezionare un intervallo temporale per il confronto],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la selezione dell'intervallo temporale],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx],
  [L'Utente deve poter modificare l'intervallo temporale dopo averlo selezionato],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se tenta di confermare senza aver selezionato un intervallo temporale],
  [#link(<UC6.1>)[#underline[\[UC6.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono report nel periodo selezionato],
  [#link(<UC6.2>)[#underline[\[UC6.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se l'intervallo temporale è incoerente],
  [#link(<UC6.3>)[#underline[\[UC6.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se l'intervallo temporale è troppo ampio],
  [#link(<UC6.4>)[#underline[\[UC6.4\]]]],

  // UC7
  [#FRObx], [L'Utente deve poter visualizzare un grafico comparativo tra report], [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con il grafico per visualizzare dettagli specifici di ciascun punto dati],
  [#link(<UC7>)[#underline[\[UC7\]]]],

  // UC8
  [#FRObx], [L'Utente deve poter visualizzare una tabella comparativa tra report], [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRObx],
  [L'utente, all'interno della tabella, deve poter visualizzare indicatori di variazione rispetto al report precedente],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  //UC9
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione del report di analisi relativa all'analisi del codice],
  [#link(<UC9>)[#underline[\[UC9\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il report di analisi statica del codice],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.1>)[#underline[\[UC9.1\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare l'analisi delle librerie e dipendenze],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.2>)[#underline[\[UC9.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il report di analisi della sicurezza OWASP],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.3>)[#underline[\[UC9.3\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il numero totale di vulnerabilità del codice],
  [#link(<UC9>)[#underline[\[UC9\]]], #link(<UC9.4>)[#underline[\[UC9.4\]]]],

  //UC10
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione del report di analisi relativa all'analisi della documentazione],
  [#link(<UC10>)[#underline[\[UC10\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare gli errori di spelling nella documentazione],
  [#link(<UC10>)[#underline[\[UC10\]]], #link(<UC10.1>)[#underline[\[UC10.1\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la completezza della documentazione rispetto al codice],
  [#link(<UC10>)[#underline[\[UC10\]]], #link(<UC10.2>)[#underline[\[UC10.2\]]]],

  //UC11
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione del report di analisi relativa al numero totale di vulnerabilità del repository],
  [#link(<UC11>)[#underline[\[UC11\]]]],

  //UC12
  [#FRObx],
  [L'Utente deve poter visualizzare l'area metadati di un report di analisi],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la data del report di analisi],
  [#link(<UC12>)[#underline[\[UC12\]]], #link(<UC12.1>)[#underline[\[UC12.1\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare i commit analizzati nel report],
  [#link(<UC12>)[#underline[\[UC12\]]], #link(<UC12.2>)[#underline[\[UC12.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il richiedente del report di analisi],
  [#link(<UC12>)[#underline[\[UC12\]]], #link(<UC12.3>)[#underline[\[UC12.3\]]]],

  //UC13
  [#FRObx], [L'Utente deve poter disconnettere il proprio account GitHub], [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx],
  [L'Utente deve selezionare il tasto "Disconnetti" per avviare la procedura],
  [#link(<UC13>)[#underline[\[UC13\]]], #link(<UC13.1>)[#underline[\[UC13.1\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la disconnessione del proprio account GitHub],
  [#link(<UC13>)[#underline[\[UC13\]]], #link(<UC13.1.1>)[#underline[\[UC13.1.1\]]]],

  // UC14
  [#FRDex], [L'Utente deve poter esportare il report di analisi], [#link(<UC14>)[#underline[\[UC14\]]]],

  [#FRDex],
  [L'Utente deve selezionare il formato di esportazione desiderato],
  [#link(<UC14>)[#underline[\[UC14\]]], #link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#FRDex],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcun formato],
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],

  [#FRDex],
  [L'Utente deve poter confermare l'esportazione del report],
  [#link(<UC14>)[#underline[\[UC14\]]], #link(<UC14.2>)[#underline[\[UC14.2\]]]],

  // UC15
  [#FRObx], [L'Utente deve poter accedere alla sezione di modifica password], [#link(<UC15>)[#underline[\[UC15\]]]],

  [#FRObx],
  [L'utente deve inserire la password corrente all'interno dell'apposito campo del form di modifica],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.1>)[#underline[\[UC15.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce la password corrente],
  [#link(<UC15.1.1>)[#underline[\[UC15.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se la password corrente è errata],
  [#link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]],

  [#FRObx],
  [L'Utente deve inserire la nuova password nell'apposito campo del form di modifica],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.2>)[#underline[\[UC15.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce la nuova password],
  [#link(<UC15.2.1>)[#underline[\[UC15.2.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se la nuova password non è conforme allo standard],
  [#link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se la nuova password è uguale alla precedente],
  [#link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la modifica della password tramite pulsante],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.3>)[#underline[\[UC15.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere conferma dell'avvenuta modifica della password],
  [#link(<UC15>)[#underline[\[UC15\]]], #link(<UC15.4>)[#underline[\[UC15.4\]]]],

  //UC16
  [#FRObx], [L'Utente deve poter visualizzare i suggerimenti di remediation], [#link(<UC16>)[#underline[\[UC16\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la lista delle issue identificate],
  [#link(<UC16>)[#underline[\[UC16\]]], #link(<UC16.1>)[#underline[\[UC16.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono issue identificate],
  [#link(<UC16.1.1>)[#underline[\[UC16.1.1\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il dettaglio di ogni suggerimento di remediation],
  [#link(<UC16>)[#underline[\[UC16\]]], #link(<UC16.2>)[#underline[\[UC16.2\]]]],

  //UC17
  //[#FRObx], [L'Orchestratore deve creare l'ambiente sandbox per l'analisi], [#link//(<UC17>)[#underline[\[UC17\]]]],

  [#FRObx],
  [Gli errori verificatisi durante la creazione dell'ambiente sandbox devono essere intercettati],
  [#link(<UC17.1>)[#underline[\[UC17.1\]]]],

  [#FRObx],
  [L'Orchestratore deve comunicare al front-end gli errori nella creazione del sandbox],
  [#link(<UC17.1.1>)[#underline[\[UC17.1.1\]]]],

  //UC18
  /*
  [#FRObx],
  [L'Orchestratore deve leggere le richieste dell'utente per configurare l'analisi],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  [#FRObx],
  [L'Orchestratore deve eseguire l'analisi completa se richiesta dall'utente],
  [#link(<UC18>)[#underline[\[UC18\]]], #link(<UC18.1>)[#underline[\[UC18.1\]]]],

  [#FRObx],
  [L'Orchestratore deve processare le richieste specifiche dell'utente sulle aree da analizzare],
  [#link(<UC18>)[#underline[\[UC18\]]], #link(<UC18.2>)[#underline[\[UC18.2\]]]],

  [#FRObx],
  [L'Orchestratore deve eseguire l'analisi completa se il repository non è mai stato analizzato],
  [#link(<UC18.2.1>)[#underline[\[UC18.2.1\]]]],
  */
  //UC19
  [#FRObx], [Le vulnerabilità delle dipendenze devono essere analizzate], [#link(<UC19>)[#underline[\[UC19\]]]],

  [#FRDex],
  [L'Utente deve poter accettare le remediation proposte per le vulnerabilità],
  [#link(<UC19>)[#underline[\[UC19\]]], #link(<UC19.1>)[#underline[\[UC19.1\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare le remediation proposte],
  [#link(<UC19>)[#underline[\[UC19\]]], #link(<UC19.2>)[#underline[\[UC19.2\]]]],

  //UC20
  [#FROpx], [Segreti e token esposti devono essere rilevati], [#link(<UC20>)[#underline[\[UC20\]]]],

  [#FROpx],
  [L'Utente deve poter rifiutare le remediation proposte per i segreti rilevati],
  [#link(<UC20>)[#underline[\[UC20\]]], #link(<UC20.1>)[#underline[\[UC20.1\]]]],

  [#FROpx],
  [La revoca automatica di segreti, se integrata con provider, deve poter essere eseguita],
  [#link(<UC20>)[#underline[\[UC20\]]], #link(<UC20.2>)[#underline[\[UC20.2\]]]],

  [#FROpx],
  [L'Utente deve poter visualizzare i risultati del rilevamento segreti],
  [#link(<UC20>)[#underline[\[UC20\]]], #link(<UC20.3>)[#underline[\[UC20.3\]]]],

  //UC21
  //UC22
  //UC23

  //UC24
  [#FRObx], [Deve essere suggerito refactoring del codice], [#link(<UC24>)[#underline[\[UC24\]]]],

  [#FROpx],
  [I refactor devono poter essere applicati automaticamente sotto supervisione],
  [#link(<UC24>)[#underline[\[UC24\]]], #link(<UC24.2>)[#underline[\[UC24.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare i suggerimenti di refactoring],
  [#link(<UC24>)[#underline[\[UC24\]]], #link(<UC24.3>)[#underline[\[UC24.3\]]]],

  //UC25
  [#FROpx], [Devono poter essere generati changelog e release notes], [#link(<UC25>)[#underline[\[UC25\]]]],

  [#FROpx],
  [Le note di breaking change devono essere rilevate e segnalate],
  [#link(<UC25>)[#underline[\[UC25\]]], #link(<UC25.1>)[#underline[\[UC25.1\]]]],

  [#FROpx],
  [La pubblicazione su GitHub Release deve avvenire automaticamente],
  [#link(<UC25>)[#underline[\[UC25\]]], #link(<UC25.2>)[#underline[\[UC25.2\]]]],

  [#FROpx],
  [L'Utente deve poter visualizzare, modificare e approvare il changelog generato],
  [#link(<UC25>)[#underline[\[UC25\]]], #link(<UC25.3>)[#underline[\[UC25.3\]]]],

  //UC26
  [#FRObx], [I test e il coverage del codice devono essere analizzati], [#link(<UC26>)[#underline[\[UC26\]]]],

  [#FROpx],
  [Devono poter essere rieseguiti test intermittenti per conferma],
  [#link(<UC26>)[#underline[\[UC26\]]], #link(<UC26.1>)[#underline[\[UC26.1\]]]],

  [#FRObx],
  [Devono essere suggeriti test addizionali per coprire gap di coverage],
  [#link(<UC26>)[#underline[\[UC26\]]], #link(<UC26.2>)[#underline[\[UC26.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il report di test e coverage],
  [#link(<UC26>)[#underline[\[UC26\]]], #link(<UC26.3>)[#underline[\[UC26.3\]]]],

  //UC27
  [#FROpx], [Devono poter essere applicate policy CI/CD pre-merge], [#link(<UC27>)[#underline[\[UC27\]]]],

  [#FROpx],
  [Devono poter essere gestite eccezioni manuali alle policy],
  [#link(<UC27>)[#underline[\[UC27\]]], #link(<UC27.1>)[#underline[\[UC27.1\]]]],

  [#FROpx],
  [Devono poter essere applicate policy dinamiche per branch differenti],
  [#link(<UC27>)[#underline[\[UC27\]]], #link(<UC27.2>)[#underline[\[UC27.2\]]]],

  [#FROpx],
  [L'Utente deve poter visualizzare i risultati delle policy applicate],
  [#link(<UC27>)[#underline[\[UC27\]]], #link(<UC27.3>)[#underline[\[UC27.3\]]]],

  //UC28
  [#FROpx], [Devono poter essere generati report programmabili e inviati alert], [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FROpx],
  [L'Utente deve poter configurare filtri e template per i report],
  [#link(<UC28>)[#underline[\[UC28\]]], #link(<UC28.1>)[#underline[\[UC28.1\]]]],

  [#FROpx],
  [Devono poter essere eseguite azioni automatiche su alert critici],
  [#link(<UC28>)[#underline[\[UC28\]]], #link(<UC28.2>)[#underline[\[UC28.2\]]]],

  [#FROpx],
  [L'Utente deve poter visualizzare i report programmati generati],
  [#link(<UC28>)[#underline[\[UC28\]]], #link(<UC28.3>)[#underline[\[UC28.3\]]]],

  //UC29

  //UC30

  //UC31

  //UC32

  //UC33

  //UC34

  //UC35

  //UC36

  //UC37

  //UC38
  [#FRObx],
  [Il sistema Back-end deve permettere all'Orchestratore di richiedere il salvataggio del report di analisi],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  [#FRObx],
  [Il sistema Back-end deve archiviare in modo permanente il report finale nel database],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  [#FRObx],
  [L'Orchestratore deve poter notificare al Front-end l'impossibilità di salvare il report in caso di errore interno],
  [#link(<UC38>)[#underline[\[UC38\]]], #link(<UC38.1>)[#underline[\[UC38.1\]]]],

  //UC39
  [#FRObx],
  [L'Orchestratore deve poter elaborare i dati dei singoli agenti per calcolare metriche statistiche globali],
  [#link(<UC39>)[#underline[\[UC39\]]]],

  [#FRObx],
  [Il sistema Back-end deve poter memorizzare le metriche aggregate per consentire la visualizzazione di grafici e tabelle],
  [#link(<UC39>)[#underline[\[UC39\]]]],

  [#FRObx],
  [Il sistema deve poter segnalare al Front-end il mancato aggiornamento delle metriche in caso di errore del Back-end],
  [#link(<UC39>)[#underline[\[UC39\]]], #link(<UC39.1>)[#underline[\[UC39.1\]]]],

  //UC40
  [#FRObx],
  [Il sistema Front-end deve poter trasmettere in modo sicuro le credenziali al sistema Back-end],
  [#link(<UC40>)[#underline[\[UC40\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il trasferimento delle credenziali non avviene],
  [#link(<UC40.1>)[#underline[\[UC40\]]], #link(<UC40.1>)[#underline[\[UC40.1\]]]],

  //UC41
  [#FRObx],
  [Il sistema Front-end deve poter scambiare il codice OAuth GitHub con un token di accesso persistente],
  [#link(<UC41>)[#underline[\[UC41\]]]],

  [#FRObx],
  [Il sistema Back-end deve associare il token di accesso GitHub al profilo dell'utente nel database],
  [#link(<UC41>)[#underline[\[UC41\]]]],

  [#FRObx],
  [L'Utente deve essere notificato se il sistema GitHub non da l'autorizzazione durante lo scambio del codice OAuth],
  [#link(<UC41>)[#underline[\[UC41\]]], #link(<UC41.1>)[#underline[\[UC41.1\]]]],

  //UC43
  [#FROpx],
  [Il sistema Front-end deve essere in grado di rappresentare correttamente la lista di tutti i repository analizzati],
  [#link(<UC43>)[#underline[\[UC43\]]]],

  [#FROpx],
  [Il sistema Back-end deve riuscire a riconoscere correttamente il caso in cui un utente non abbia mai analizzato repository e comunicarlo al Front-end],
  [#link(<UC43>)[#underline[\[UC43\]]], #link(<UC43.1>)[#underline[\[UC43.1\]]]],

  [#FROpx],
  [Il sistema Front-end deve essere in grado di comunicare che la lista è vuota nel caso in cui un utente non abbia mai analizzato repository],
  [#link(<UC43>)[#underline[\[UC43\]]], #link(<UC43.1>)[#underline[\[UC43.1\]]]],
)

#pagebreak()
== Requisiti di Qualità (QR)
I seguenti requisiti garantiscono che il sistema non solo funzioni correttamente, ma sia anche manutenibile, performante e ben documentato.

#table(
  columns: (1fr, 2.5fr, 1.5fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Fonti*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  [#QRObx],
  [È necessario fornire un diagramma
    architetturale completo che illustri la struttura multiagente e le interazioni tra componenti],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Obiettivi"],

  [#QRObx],
  [Deve essere fornita documentazione tecnica esaustiva del sistema, includendo swagger #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#application-programming-interface")[#def("Application Programming Interface")] (API) e documentazione descrittiva del progetto],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#QRObx],
  [Il codice prodotto deve raggiungere una copertura minima del 70% tramite #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#test-di-unita")[#def("Test di Unità")] automatizzati],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#QRObx],
  [L'applicativo deve essere creato seguendo principi di modularità per consentire l'aggiunta di nuovi agenti di analisi],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#QRObx],
  [Deve essere fornito un sistema di Bug Reporting strutturato per tracciare e gestire le anomalie riscontrate],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#QRObx],
  [È necessario utilizzare appositi sistemi di versionamento del codice],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#QRObx],
  [È necessario rispettare tutte le norme
    presenti nelle #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[*Norme di Progetto*]],
  [Interno],
)

#pagebreak()
== Requisiti di Vincolo (VR)

#table(
  columns: (1fr, 2.5fr, 1.5fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Fonti*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  [#VRObx],
  [Il Back-end e l'Orchestratore devono essere sviluppati utilizzando #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#node.js")[#def("Node.js")] o #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#python")[#def("Python")]],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [Il Front-end deve essere sviluppato utilizzando #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#react")[#def("React")]],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [Il Database deve essere implementato utilizzando MongoDB o PostgreSQL],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [L'architettura deve essere ospitata su infrastruttura cloud AWS],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [Devono essere utilizzate GitHub Actions per implementare pipeline CI/CD],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [Il codice sorgente deve essere versionato utilizzando sistemi come #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#git")[#def("Git")] o repository online],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [L'analisi di sicurezza deve essere conforme agli standard OWASP Top 10],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "OWASP"],
)
