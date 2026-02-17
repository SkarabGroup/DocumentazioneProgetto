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
#let versione = "v0.46"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2026/02/16",
    "0.46.0",
    "Inserimento UC 47-53 e requisiti",
    members.antonio,
  ),
  (
    "2026/02/15",
    "0.45.1",
    "Fix UC28-30, eliminazione UC31",
    members.andrea,
  ),
  (
    "2026/02/15",
    "0.45.0",
    "Modifica UC 16 e 19, aggiunta UC 41-46 e requisiti",
    members.antonio,
  ),
  (
    "2026/02/13",
    "0.44.7",
    "Fix UC6, UC37-41",
    members.andrea
  ),
  (
    "2026/02/13",
    "0.44.6",
    "Fix UC5, UC9-11",
    members.antonio,
  ),
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
    "Aggiunto UC12, inclusi diagrammi e requisiti associati. Fix alle precondizioni, attori e diagrammi di UC1, UC2, UC4",
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
    "Correzioni minori ai casi d'uso UC 5.1, aggiunto UC5.5, aggiornamento numerazione UC 5.X, Aggiunta UC6",
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

Il progetto ha come obiettivo la realizzazione di un sistema per l'automazione dei processi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] delle vulnerabilità del software. L'architettura si basa sul paradigma degli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] software intelligenti, operanti su repository di codice sorgente. La conformità del sistema è vincolata ai requisiti definiti nel #link(<capitolato>)[#underline[Capitolato *C2*]].

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Finalità del Documento
Il documento di *Analisi dei Requisiti* formalizza le specifiche del prodotto software, descrivendo in modo dettagliato le funzionalità, i vincoli e gli standard di qualità che il sistema Code Guardian deve soddisfare per rispondere alle esigenze del committente.

Il documento costituisce il riferimento primario per il gruppo di lavoro (#def[Skarab Group]) e per gli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#stakeholder")[#def[stakeholder]], perseguendo i seguenti obiettivi:
- modellare le interazioni tra gli utenti e il sistema attraverso la definizione formale dei #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#caso-d-uso")[#def("casi d'uso")];
- individuare e dettagliare i requisiti di sistema, distinguendo tra #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisito-funzionale")[#def[requisiti funzionali]], #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisito-di-qualita")[#def[di qualità]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisito-di-vincolo")[#def[di vincolo]];
- classificare i requisiti in base alla priorità negoziale e strategica (#def[obbligatori], #def[opzionali], #def[desiderabili]), fornendo una guida per la pianificazione dello sviluppo;
- definire i criteri di accettazione del prodotto, stabilendo una base contrattuale oggettiva per le attività di verifica e validazione finale rispetto a quanto concordato con il proponente.

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

- *Disponibilità dei Servizi Terzi:* La piena operatività dipende dalla raggiungibilità delle #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#application-programming-interface")[#def[API]] di GitHub e dei provider LLM.
- *Vincoli di Esecuzione (Quota):* Le analisi semantiche sono soggette ai limiti di throughput e al modello di costo (token-based) dei fornitori LLM.
- *Trattamento Dati e Riservatezza:* Il sistema deve operare in modalità "stateless" per il codice sorgente; la persistenza dei dati analizzati è limitata alla durata della sessione di analisi, in conformità alle normative vigenti sul trattamento dei dati.
- *Perimetro Tecnologico (MVP):* Il supporto è circoscritto ai linguaggi di programmazione e ai framework definiti nel Piano di Progetto; l'estensibilità ad altri ecosistemi è prevista come requisito opzionale o futuro.
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

La specifica dei casi d'uso adotta il formato e le convenzioni di modellazione definite nel documento #link(<NdP>)[Norme di Progetto]. Si rimanda a tale documento per la descrizione dettagliata della struttura dei campi (precondizioni, postcondizioni, scenari) e della sintassi #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#uml")[#def[UML]] utilizzata.

== Attori
Gli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#attore")[#def[attori]] rappresentano le entità che interagiscono con il sistema #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]]. Essi sono classificati in base al ruolo svolto nell'interazione:

- *Attori Primari:* Entità che attivano una funzionalità del sistema per raggiungere uno scopo (User Goal). Possono essere utenti umani o processi di sistema autonomi.
- *Attori Secondari:* Sistemi, servizi o entità esterne con cui il sistema interagisce per completare un caso d'uso, ma che non ne scatenano l'esecuzione.

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
    [Attore di sistema interno che opera come entità autonoma. Agisce da coordinatore dei flussi di lavoro, gestendo in modo proattivo l'interazione con i servizi esterni (AWS, LLM) e la distribuzione dei compiti agli agenti, operando indipendentemente dalle interazioni dirette dell'utente sulla GUI.],

    // SEZIONE 3: SISTEMI ESTERNI
    table.cell(colspan: 2, fill: luma(250), [*Attori Secondari (Sistemi Esterni)*]),

    [*GitHub*],
    [Piattaforma di hosting esterna. Interagisce con il sistema per fornire l'accesso al codice sorgente (via API o clone) e ai metadati dei repository.],

    [*Servizi AWS*],
    [Infrastruttura cloud esterna di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#amazon-web-service")[#def[Amazon Web Service]] utilizzata dal sistema come ambiente di calcolo e storage per l'esecuzione delle analisi intensive.],

    [*Servizio LLM*],
    [Servizio esterno di Intelligenza Artificiale interrogato per l'analisi semantica della documentazione e la generazione dei suggerimenti di remediation.],

    [*Strumenti di Analisi*],
    [Insieme degli strumenti terzi invocati dal sistema per l'esecuzione verticale delle scansioni di sicurezza e qualità del codice.],
  ),
  caption: [Definizione e gerarchia degli Attori],
)

== Lista
=== UC1: Registrazione a CodeGuardian <UC1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente non possiede le credenziali di un account CodeGuardian
    - L'utente ha visualizzato la sezione dedicata alla creazione di un nuovo profilo CodeGuardian
  ],
  post: [
    - L'utente visualizza la conferma dell'avvenuta creazione dell'account CodeGuardian
    - L'utente dispone di credenziali valide di un account CodeGuardian per l'accesso alla piattaforma
  ],
  scenari: [
    - L'utente inserisce un username identificativo #link(<UC1.1>)[#underline[\[UC1.1\]]]
    - L'utente inserisce una email di contatto #link(<UC1.2>)[#underline[\[UC1.2\]]]
    - L'utente inserisce una password sicura #link(<UC1.3>)[#underline[\[UC1.3\]]]
    - L'utente impartisce il comando di conferma finale per completare la procedura
  ],
  inclusioni: [
    - #link(<UC1.1>)[#underline[\[UC1.1\]]]
    - #link(<UC1.2>)[#underline[\[UC1.2\]]]
    - #link(<UC1.3>)[#underline[\[UC1.3\]]]
  ],
  estensioni: [
    - #link(<UC1.0.1>)[#underline[\[UC1.0.1\]]] 
  ],
  trigger: "L'utente seleziona la funzione di registrazione utente",
)[
  #useCaseDiagram("1", "UC1 - Registrazione")
]

==== UC1.0.1: Visualizzazione errore campi non inseriti <UC1.0.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta visualizzando il modulo di registrazione #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa il mancato inserimento dei dati obbligatori
    - L'utente ha la possibilità di completare i campi mancanti nel modulo
  ],
  scenari: [
    - L'utente visualizza un avviso che segnala l'incompletezza delle informazioni fornite
  ],
  trigger: "L'utente impartisce il comando di conferma senza aver inserito tutti i dati richiesti",
)[]

==== UC1.1: Inserimento username <UC1.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta visualizzando il modulo di registrazione #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - Il campo relativo all'username risulta popolato con un valore accettato
  ],
  scenari: [
    - L'utente fornisce l'identificativo scelto per la propria registrazione
  ],
  estensioni: [
    - #link(<UC1.1.1>)[#underline[\[UC1.1.1\]]] // Errore formato
    - #link(<UC1.1.2>)[#underline[\[UC1.1.2\]]] // Errore disponibilità
  ],
  trigger: "L'utente seleziona il campo di input dello username",
)[
  #useCaseDiagram("1_1", "UC1.1 - Inserimento username")
]

===== UC1.1.1: Visualizzazione errore username non conforme <UC1.1.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha popolato il campo username #link(<UC1.1>)[#underline[\[UC1.1\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa la non conformità dell'username inserito
    - L'utente ha la possibilità di fornire un nuovo valore per l'identificativo
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore in corrispondenza del campo username che specifica la non conformità del formato
  ],
  trigger: "L'utente tenta di procedere con l'inserimento di un valore non conforme per l'username",
)[]

===== UC1.1.2: Visualizzazione errore username già in uso <UC1.1.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha inserito lo username nella schermata di registrazione #link(<UC1.1>)[#underline[\[UC1.1\]]]
    - Lo username digitato risulta già associato a un account CodeGuardian esistente
  ],
  post: [
    - L'utente visualizza un messaggio circa la non disponibilità dell'username inserito
    - L'utente ha la possibilità di fornire un nuovo valore per l'identificativo
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'indisponibilità del nome utente scelto
  ],
  trigger: "L'utente inserisce uno username che non risulta univoco",
)[]

==== UC1.2: Inserimento email <UC1.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta visualizzando il modulo di registrazione #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - Il campo relativo all'email risulta popolato con un valore accettato
  ],
  scenari: [
    - L'utente inserisce l'indirizzo email di contatto per il proprio profilo
  ],
  estensioni: [
    - #link(<UC1.2.1>)[#underline[\[UC1.2.1\]]] // Errore formato
    - #link(<UC1.2.2>)[#underline[\[UC1.2.2\]]] // Errore disponibilità
  ],
  trigger: "L'utente seleziona il campo di input dell'email",
)[
  #useCaseDiagram("1_2", "UC1.2 - Inserimento email")
]

===== UC1.2.1: Visualizzazione errore email non valida <UC1.2.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha inserito un valore nel campo email #link(<UC1.2>)[#underline[\[UC1.2\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa la non validità dell'email inserita
    - L'utente ha la possibilità di fornire un nuovo valore per l'email
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore in corrispondenza del campo email che specifica la non conformità del formato
  ],
  trigger: "L'utente tenta di procedere con l'inserimento di un valore non conforme per l'email",
)[]

===== UC1.2.2: Visualizzazione errore email già in uso <UC1.2.2>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha inserito un indirizzo email nel modulo di registrazione #link(<UC1.2>)[#underline[\[UC1.2\]]]
    - L'email inserita risulta già associata a un account esistente
  ],
  post: [
    - L'utente visualizza un messaggio circa l'indisponibilità dell'email inserita
    - L'utente ha la possibilità di fornire un nuovo valore per l'email
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'indisponibilità dell'email scelta
  ],
  trigger: "L'utente inserisce un'email già presente nel sistema",
)[]

==== UC1.3: Inserimento password <UC1.3>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente sta visualizzando il modulo di registrazione #link(<UC1>)[#underline[\[UC1\]]]
  ],
  post: [
    - Il campo relativo alla password risulta popolato con un valore accettato
  ],
  scenari: [
    - L'utente inserisce la chiave d'accesso per il proprio account
  ],
  estensioni: [
    - #link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]
  ],
  trigger: "L'utente seleziona il campo di input della password",
)[
  #useCaseDiagram("1_3", "UC1.3 - Inserimento password")
]

===== UC1.3.1: Visualizzazione errore password non conforme <UC1.3.1>
#useCase(
  attore: "Utente non registrato",
  pre: [
    - L'utente ha inserito una password nel modulo di registrazione #link(<UC1.3>)[#underline[\[UC1.3\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa la non conformità della password inserita
    - L'utente ha la possibilità di fornire un nuovo valore per la password
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che specifica i requisiti di sicurezza non soddisfatti
  ],
  trigger: "L'utente tenta di procedere con l'inserimento di una password non conforme ai criteri di sicurezza",
)[]

=== UC2: Autenticazione a CodeGuardian <UC2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente dispone di credenziali valide registrate nel sistema #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente visualizza la sezione di accesso (Login)
  ],
  post: [
    - L'utente visualizza la conferma di avvenuta autenticazione
    - L'utente ha accesso alle funzionalità riservate della piattaforma
  ],
  scenari: [
    - L'utente fornisce lo username identificativo #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - L'utente fornisce la chiave d'accesso associata #link(<UC2.2>)[#underline[\[UC2.2\]]]
    - L'utente impartisce il comando di conferma per finalizzare l'accesso
  ],
  inclusioni: [
    - #link(<UC2.1>)[#underline[\[UC2.1\]]]
    - #link(<UC2.2>)[#underline[\[UC2.2\]]]
  ],
  estensioni: [
    - #link(<UC2.0.1>)[#underline[\[UC2.0.1\]]] 
  ],
  trigger: "L'utente seleziona la funzione di login",
)[
  #useCaseDiagram("2", "UC2 - Autenticazione")
]

==== UC2.0.1: Visualizzazione errore campi non inseriti <UC2.0.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta visualizzando il modulo di autenticazione #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa il mancato inserimento dei dati obbligatori
    - L'utente ha la possibilità di completare i campi mancanti
  ],
  scenari: [
    - L'utente visualizza un avviso che segnala l'incompletezza delle informazioni fornite per l'accesso
  ],
  trigger: "L'utente impartisce il comando di conferma senza aver inserito tutte le credenziali",
)[]

==== UC2.1: Inserimento username <UC2.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta visualizzando il modulo di autenticazione #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - Il campo relativo all'username risulta popolato con un valore accettato
  ],
  scenari: [
    - L'utente digita lo username nel campo dedicato
  ],
  estensioni: [
    - #link(<UC2.1.1>)[#underline[\[UC2.1.1\]]] // Errore formato
    - #link(<UC2.1.2>)[#underline[\[UC2.1.2\]]] // Username non esistente
  ],
  trigger: "L'utente seleziona il campo di input dello username",
)[
  #useCaseDiagram("2_1", "UC2.1 - Inserimento username")
]

===== UC2.1.1: Visualizzazione errore username non conforme <UC2.1.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente ha inserito un valore nel campo username #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa la non conformità dell'username inserito
    - L'utente ha la possibilità di fornire un nuovo valore per l'identificativo
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore in corrispondenza del campo username che specifica la non conformità del formato
  ],
  trigger: "L'utente tenta di procedere con un valore non conforme ai vincoli di formato",
)[]

===== UC2.1.2: Visualizzazione errore username non esistente <UC2.1.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente ha inserito uno username non presente nel sistema #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa l'invalidità delle credenziali fornite
    - L'utente ha la possibilità di fornire un nuovo valore per l'identificativo
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'inesistenza dell'identificativo inserito
  ],
  trigger: "L'utente tenta di autenticarsi con uno username non censito",
)[]

==== UC2.2: Inserimento password <UC2.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente sta visualizzando il modulo di autenticazione #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - Il campo relativo alla password risulta popolato con un valore accettato
  ],
  scenari: [
    - L'utente digita la chiave d'accesso nel campo dedicato
  ],
  estensioni: [
    - #link(<UC2.2.1>)[#underline[\[UC2.2.1\]]] // Errore formato
    - #link(<UC2.2.2>)[#underline[\[UC2.2.2\]]] // Password errata
  ],
  trigger: "L'utente seleziona il campo di input della password",
)[
  #useCaseDiagram("2_2", "UC2.2 - Inserimento password")
]

===== UC2.2.1: Visualizzazione errore password non conforme <UC2.2.1>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente ha inserito una password nel campo dedicato #link(<UC2.2>)[#underline[\[UC2.2\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa la non conformità della password
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che specifica il mancato rispetto dei criteri di sistema
  ],
  trigger: "L'utente tenta di procedere con una password formalmente non valida",
)[]

===== UC2.2.2: Visualizzazione errore password errata <UC2.2.2>
#useCase(
  attore: "Utente non autenticato",
  pre: [
    - L'utente ha inserito una password non corrispondente a quella registrata #link(<UC2.2>)[#underline[\[UC2.2\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa l'errata combinazione delle credenziali
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'invalidità della chiave d'accesso
  ],
  trigger: "L'utente tenta di procedere con una password errata",
)[]

=== UC3: Collegamento account GitHub <UC3>
#useCase(
  attore: "Utente Autenticato",
  attori_secondari: "GitHub",
  pre: [
    - L'utente dispone di una sessione attiva nel sistema #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente non ha associato un profilo GitHub al proprio account
    - L'utente visualizza la sezione relativa alle integrazioni esterne
  ],
  post: [
    - L'utente visualizza la conferma dell'avvenuta associazione tra i profili
    - L'utente risulta autorizzato dal sistema all'interazione con i propri repository GitHub
  ],
  scenari: [
    - L'utente interagisce con la notifica di reindirizzamento esterno #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - L'utente effettua le operazioni di autorizzazione sulla piattaforma GitHub
    - L'utente visualizza l'esito della procedura di sincronizzazione #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  inclusioni: [
    - #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  trigger: "L'utente richiede l'integrazione del proprio profilo con GitHub",
)[
  #useCaseDiagram("3", "UC3 - Collegamento account GitHub")
]

==== UC3.1: Interazione con avviso di reindirizzamento <UC3.1>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha richiesto il collegamento del proprio profilo GitHub #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - L'utente viene trasferito alla piattaforma esterna GitHub per le operazioni di autorizzazione
  ],
  scenari: [
    - L'utente visualizza l'avviso di trasferimento temporaneo su un dominio esterno
    - L'utente impartisce il comando di conferma per procedere con il reindirizzamento
  ],
  estensioni: [
    - #link(<UC3.1.1>)[#underline[\[UC3.1.1\]]] 
  ],
  trigger: "L'utente seleziona la funzione di integrazione con GitHub",
)[]

===== UC3.1.1: Visualizzazione annullamento reindirizzamento <UC3.1.1>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente visualizza l'avviso di trasferimento a piattaforma esterna #link(<UC3.1>)[#underline[\[UC3.1\]]]
  ],
  post: [
    - L'utente visualizza nuovamente la sezione dedicata alle integrazioni di CodeGuardian
    - La procedura di collegamento risulta annullata
  ],
  scenari: [
    - L'utente annulla l'operazione di collegamento
  ],
  trigger: "L'utente sceglie di non procedere verso la piattaforma esterna",
)[]

==== UC3.2: Visualizzazione esito associazione account <UC3.2>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha completato l'interazione con la piattaforma esterna GitHub #link(<UC3.1>)[#underline[\[UC3.1\]]]
    - L'utente è tornato alla piattaforma CodeGuardian
  ],
  post: [
    - L'utente visualizza l'esito della procedura di associazione
  ],
  scenari: [
    - L'utente visualizza la conferma dell'avvenuta sincronizzazione tra l'account CodeGuardian e il profilo GitHub
  ],
  estensioni: [
    - #link(<UC3.2.1>)[#underline[\[UC3.2.1\]]] // Errore tecnico
    - #link(<UC3.2.2>)[#underline[\[UC3.2.2\]]] // Già in uso
    - #link(<UC3.2.3>)[#underline[\[UC3.2.3\]]] // Rifiuto autorizzazione
  ],
  trigger: "L'utente riaccede a CodeGuardian dopo l'interazione con GitHub",
)[]

===== UC3.2.1: Visualizzazione errore sincronizzazione fallita <UC3.2.1>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente è tornato su CodeGuardian a seguito della procedura esterna #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  post: [
    - L'utente visualizza un messaggio di errore circa il fallimento della sincronizzazione
    - L'utente ha la possibilità di ripetere la procedura
  ],
  scenari: [
    - L'utente visualizza un avviso relativo all'impossibilità tecnica di completare l'operazione
  ],
  trigger: "Il sistema rileva un'anomalia nel completamento della procedura di associazione",
)[]

===== UC3.2.2: Visualizzazione errore account già associato <UC3.2.2>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente è tornato su CodeGuardian a seguito della procedura esterna #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa l'indisponibilità dell'account GitHub scelto
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che specifica l'impossibilità di procedere poiché il profilo GitHub risulta già collegato
  ],
  trigger: "L'utente tenta di associare un account GitHub già in uso presso un altro profilo",
)[]

===== UC3.2.3: Visualizzazione rifiuto autorizzazione esterna <UC3.2.3>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente è tornato su CodeGuardian a seguito della procedura esterna #link(<UC3.2>)[#underline[\[UC3.2\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa il mancato rilascio delle autorizzazioni
  ],
  scenari: [
    - L'utente visualizza un avviso che informa del mancato collegamento a causa del rifiuto espresso su GitHub
  ],
  trigger: "L'utente nega il consenso alla condivisione dei dati sulla piattaforma esterna",
)[]

=== UC4: Richiesta analisi repository GitHub <UC4>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente risulta autorizzato all'interazione con i propri repository #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente visualizza la sezione di configurazione dell'analisi
  ],
  post: [
    - L'utente visualizza la conferma di presa in carico della richiesta di analisi
  ],
  scenari: [
    - L'utente fornisce l'URL del repository GitHub da analizzare #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente seleziona le aree di interesse per l'audit #link(<UC4.2>)[#underline[\[UC4.2\]]]
    - L'utente impartisce il comando di conferma per l'invio della richiesta
  ],
  inclusioni: [
    - #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - #link(<UC4.2>)[#underline[\[UC4.2\]]]
  ],
  estensioni: [
    - #link(<UC4.3>)[#underline[\[UC4.3\]]] // Report già aggiornato
    - #link(<UC4.4>)[#underline[\[UC4.4\]]] // Analisi in corso
  ],
  trigger: "L'utente seleziona la funzione di nuova analisi repository",
)[
  #useCaseDiagram("4", "UC4 - Richiesta analisi repository GitHub")
]

==== UC4.1: Inserimento URL repository GitHub <UC4.1>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente sta visualizzando il modulo di richiesta analisi #link(<UC4>)[#underline[\[UC4\]]]
  ],
  post: [
    - Il campo relativo all'URL del repository risulta popolato con un valore accettato
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub oggetto dell'analisi
  ],
  estensioni: [
    - #link(<UC4.1.1>)[#underline[\[UC4.1.1\]]] // URL non conforme
    - #link(<UC4.1.2>)[#underline[\[UC4.1.2\]]] // Repository non accessibile
    - #link(<UC4.1.3>)[#underline[\[UC4.1.3\]]] // URL non inserito
  ],
  trigger: "L'utente seleziona il campo di input dell'URL",
)[
  #useCaseDiagram("4_1", "UC4.1 - Inserimento URL repository GitHub")
]

===== UC4.1.1: Visualizzazione errore URL non conforme <UC4.1.1>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha inserito un valore nel campo URL #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa la non conformità del formato dell'URL
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che specifica l'invalidità sintattica dell'URL
  ],
  trigger: "L'utente tenta di procedere con un URL formalmente non valido",
)[]

===== UC4.1.2: Visualizzazione errore repository non accessibile <UC4.1.2>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha inserito un URL nel modulo #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa l'impossibilità di accedere al repository indicato
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore relativo all'inesistenza o all'inaccessibilità del repository
  ],
  trigger: "Il sistema rileva l'inaccessibilità della risorsa remota specificata",
)[]

===== UC4.1.3: Visualizzazione errore URL non inserito <UC4.1.3>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente sta interagendo con il campo URL #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa il mancato inserimento dell'URL obbligatorio
  ],
  scenari: [
    - L'utente visualizza la segnalazione di errore specifica per il campo vuoto
  ],
  trigger: "L'utente tenta di confermare senza aver popolato il campo URL",
)[]

==== UC4.2: Selezione aree di interesse <UC4.2>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente sta visualizzando il modulo di richiesta analisi #link(<UC4>)[#underline[\[UC4\]]]
  ],
  post: [
    - Le preferenze sulle aree del repository da analizzare risultano impostate
  ],
  scenari: [
    - L'utente seleziona le tipologie di controllo (test, sicurezza o documentazione)
  ],
  estensioni: [
    - #link(<UC4.2.1>)[#underline[\[UC4.2.1\]]] // Nessuna area selezionata
  ],
  trigger: "L'utente interagisce con le opzioni di configurazione dell'audit",
)[
  #useCaseDiagram("4_2", "UC4.2 - Selezione aree di interesse")
]

===== UC4.2.1: Visualizzazione errore nessuna area selezionata <UC4.2.1>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente sta interagendo con la selezione delle aree #link(<UC4.2>)[#underline[\[UC4.2\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa la necessità di selezionare almeno un'area
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala la mancata scelta delle aree di interesse
  ],
  trigger: "L'utente tenta di confermare senza aver selezionato alcuna area di analisi",
)[]

==== UC4.3: Visualizzazione informativa report aggiornato <UC4.3>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha inviato una richiesta di analisi #link(<UC4>)[#underline[\[UC4\]]]
  ],
  post: [
    - L'utente visualizza l'informativa che indica la presenza di un report già aggiornato
  ],
  scenari: [
    - L'utente visualizza un messaggio che segnala l'inutilità di una nuova analisi per coerenza dei dati
  ],
  trigger: "L'utente tenta di avviare un'analisi per un repository il cui stato coincide con l'ultimo report generato",
)[]

==== UC4.4: Visualizzazione informativa analisi in corso <UC4.4>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha inviato una richiesta di analisi #link(<UC4>)[#underline[\[UC4\]]]
  ],
  post: [
    - L'utente visualizza l'avviso di analisi già pendente per il medesimo repository
  ],
  scenari: [
    - L'utente visualizza un messaggio circa l'impossibilità di avviare un nuovo audit simultaneo
  ],
  trigger: "L'utente tenta di avviare un'analisi mentre un'altra elaborazione è già attiva sul medesimo repository",
)[]

=== UC5: Visualizzazione lista repository analizzati <UC5>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente si trova nella sezione dei repository analizzati
  ],
  post: [
    - L'utente visualizza la lista dei repository
  ],
  scenari:[
    - L'utente visualizza la lista di tutti i repository per i quali sono state svolte analisi
    - Ogni elemento della lista presenta le informazioni identificative #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  inclusioni:[
    - #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  estensioni:[
    - #link(<UC5.2>)[#underline[\[UC5.2\]]] // Nessun repository analizzato
  ],
  trigger: "L'utente accede alla sezione dei repository analizzati",
)[
]

==== UC5.1: Informazioni minime repository <UC5.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei repository analizzati #link(<UC5>)[#underline[\[UC5\]]]
  ],
  post: [
    - L'utente visualizza i dettagli minimi per i repository analizzati
  ],
  scenari:[
    - L'utente visualizza le informazioni minime per l'identificazione del repository
  ],
  trigger: "L'utente accede alla sezione dei repository analizzati",
)[
]

==== UC5.2: Nessun repository analizzato <UC5.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei repository analizzati #link(<UC5>)[#underline[\[UC5\]]]
    - Nessun repository è stato trovato
  ],
  post: [
    - L'utente visualizza il messaggio di lista vuota
  ],
  scenari:[
    - L'utente viene avvisato che non sono state eseguite analisi per nessun repository
  ],
  trigger: "L'utente accede alla sezione di repository analizzati",
)[
]

#TODO("Controllare che il riferimento negli altri casi d'uso che rimanda a UC6 sia corretto")
=== UC6: Visualizzazione singolo report analisi repository GitHub <UC6>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha almeno un report di analisi di un repository associato al proprio account
    - L'utente visualizza la lista dei repository analizzati associati al proprio account#link(<UC5>)[#underline[\[UC5\]]]
    - L'utente seleziona un elemento della lista dei repository analizzati
  ],
  post: [
    - L'utente ha visualizza il report di analisi del repository GitHub selezionato
  ],
  scenari: [
    - L'utente seleziona le sezioni specifiche da visualizzare nel report #link(<UC6.1>)[#underline[\[UC6.1\]]]
    - L'utente visualizza i metadati del report selezionato #link(<UC6.2>)[#underline[\[UC6.2\]]]
    - L'utente visualizza le sezioni del report selezionate #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  inclusioni: [
    - #link(<UC6.1>)[#underline[\[UC6.1\]]] // Selezione sezioni specifiche
    - #link(<UC6.2>)[#underline[\[UC6.2\]]] // Visualizzazione dei metadati
    - #link(<UC6.3>)[#underline[\[UC6.3\]]] // Visualizzazione delle sezioni selezionate
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente autorizzato sceglie un repository dalla lista di repository analizzati per visualizzarne i report di analisi",
)[
  #useCaseDiagram("5", "UC5 - Visualizzazione report analisi repository GitHub")
]

==== UC6.1: Selezione sezioni specifiche da visualizzare nel report <UC6.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report #link(<UC6>)[#underline[\[UC6\]]]
  ],
  post: [
    - L'utente ha definito l'insieme di sezioni da visualizzare nel report di analisi
  ],
  scenari: [
    - L'utente seleziona uno o più sezioni di interesse
  ],
  estensioni: [
    - #link(<UC6.1.1>)[#underline[\[UC6.1.1\]]]
  ],
  trigger: "L'utente interagisce con le opzioni di configurazione del report nella sezione di visualizzazione",
)[
  #useCaseDiagram("5_3", "UC5.3: Selezione dati specifici da visualizzare nel report")
]

===== UC6.1.1: Nessun dato specifico selezionato <UC6.1.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei report #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente ha provato a procedere senza selezionare alcuna sezione
  ],
  post: [
    - L'utente non può procedere alla visualizzazione del report
    - L'utente può nuovamente interagire con la selezione delle sezioni di report da visualizzare
  ],
  scenari: [
    - L'utente riceve un messaggio di avviso che lo invita a selezionare almeno una sezione da visualizzare
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente tenta di visualizzare il report senza selezionare alcuna sezione",
)[]

==== UC6.2: Visualizzazione area metadati di un report di analisi repository GitHub <UC6.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato le sezioni specifiche da visualizzare nel report #link(<UC6.1>)[#underline[\[UC6.1\]]] 
  ],
  post: [
    - L'utente ha visualizzato l'area metadati del report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza la data del report di analisi repository GitHub #link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]
    - L'utente visualizza i commit analizzati nel report di analisi repository GitHub #link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]
    - L'utente visualizza il richiedente del report di analisi repository GitHub #link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]
  ],
  inclusioni: [
    - #link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]
    - #link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]
    - #link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]
  ],
  trigger: "L'utente accede alla sezione relativa ai metadati del report di analisi repository GitHub",
)[
  #useCaseDiagram("12", "UC12 - Visualizzazione area metadati di un report di analisi repository GitHub")
]

===== UC6.2.1: Visualizzazione data report analisi repository GitHub <UC6.2.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è all'interno dell'area metadati del report di analisi repository GitHub #link(<UC6.2>)[#underline[\[UC6.2\]]]
  ],
  post: [
    - L'utente ha visualizzato la data del report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza la data del report di analisi repository GitHub
  ],
  trigger: "L'utente accede alla sezione metadati del report di analisi repository GitHub",
)[]

===== UC6.2.2: Visualizzazione commit analizzato nel report di analisi repository GitHub <UC6.2.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è all'interno dell'area metadati del report di analisi repository GitHub #link(<UC6.2>)[#underline[\[UC6.2\]]]
  ],
  post: [
    - L'utente ha visualizzato il commit analizzato nel report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza il commit analizzato nel report di analisi repository GitHub
  ],
  trigger: "L'utente accede alla sezione metadati del report di analisi repository GitHub",
)[]

===== UC6.2.3: Visualizzazione richiedente report di analisi repository GitHub <UC6.2.3>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è all'interno dell'area metadati del report di analisi repository GitHub #link(<UC6.2>)[#underline[\[UC6.2\]]]
  ],
  post: [
    - L'utente ha visualizzato il richiedente del report di analisi repository GitHub
  ],
  scenari: [
    - L'utente visualizza il richiedente del report di analisi repository GitHub
  ],
  trigger: "L'utente accede alla sezione metadati del report di analisi repository GitHub",
)[]

==== UC6.3: Visualizzazione sezione generica scelta del report di analisi <UC6.3> 
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato una generica sezione da visualizzare #link(<UC6.1>)[#underline[\[UC6.1\]]]
  ],
  post: [
    - L'utente visualizza la sezione selezionata
  ],
  scenari: [
    - L'utente visualizza le informazioni specifiche della sezione scelta
    - L'utente visualizza la lista delle remediation proposte per quella sezione #link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]
  ],
  inclusioni: [
    - #link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]
  ],
  generalizzazione: [
    - Questo caso d'uso funge da generalizzazione per i seguenti casi d'uso:
    - Visualizzazione sezione analisi del codice #link(<UC9>)[#underline[\[UC9\]]]
    - Visualizzazione sezione analisi della sicurezza #link(<UC10>)[#underline[\[UC10\]]]
    - Visualizzazione sezione analisi della documentazione #link(<UC11>)[#underline[\[UC11\]]]
  ],
  trigger: "L'utente conferma le sezioni del report da visualizzare dalla sezione dedicata",
)[]

===== UC6.3.1 Visualizzazione lista remediation per sezione generica <UC6.3.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato una sezione da visualizzare #link(<UC6.1>)[#underline[\[UC6.1\]]]
  ],
  post: [
    - L'utente visualizza la lista le remediation per la sezione selezionata
  ],
  scenari: [
    - L'utente visualizza la lista le remediation proposte per la sezione scelta
  ],
  estensioni: [
    - #link(<UC6.3.1.1>)[#underline[\[6.3.1.1\]]]
  ],
  trigger: "L'utente conferma le sezioni del report da visualizzare dalla sezione dedicata",
)[]

====== UC6.3.1.1 Nessuna remediation individuata per sezione generica <UC6.3.1.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - Il report non contiene alcuna remediation per la sezione selezionata
  ],
  post: [
    - L'utente ha visualizzato il messaggio di assenza di remediation per la sezione selezionata
  ],
  scenari: [
    - L'utente viene informato che non sono state trovati possibili miglioramenti per la sezione selezionata
  ],
  trigger: "Non sono presenti remediation per la sezione selezionata",
)[]

=== UC7: Scelta intervallo temporale per visualizzazione confronto con report passati <UC7>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha effettuato l'accesso alla sezione di visualizzazione del report di analisi #link(<UC6>)[#underline[\[UC6\]]]
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
    - #link(<UC7.1>)[#underline[\[UC7.1\]]]
    - #link(<UC7.2>)[#underline[\[UC7.2\]]]
    - #link(<UC7.3>)[#underline[\[UC7.3\]]]
    - #link(<UC7.4>)[#underline[\[UC7.4\]]]
  ],
  trigger: "L'utente interagisce con la sezione di selezione dell'intervallo temporale per il confronto con i report passati durante la procedura di visualizzazione del report di analisi repository GitHub a CodeGuardian",
)[#useCaseDiagram("6", "UC6 - Scelta intervallo temporale per visualizzazione confronto con report passati")]

==== UC7.1: Nessun intervallo temporale selezionato <UC7.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC7>)[#underline[\[UC7\]]]
    - L'utente non ha selezionato alcun intervallo temporale 
  ],
  post: [
    - L'utente non può procedere con la visualizzazione dell'intervallo temporale per il confronto con i report passati
    - L'utente può nuovamente interagire con la selezione dell'intervallo temporale  
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionato un intervallo temporale per poter procedere con il 
     confronto con i report passati
  ],
  trigger: "L'utente non inserisce alcun intervallo temporale e tenta di procedere con il confronto con i report passati",
)[]

==== UC7.2: Nessun report di analisi disponibile nel periodo selezionato <UC7.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC7>)[#underline[\[UC7\]]]
    - Non sono disponibili report di analisi nel periodo selezionato dall'utente
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
    - L'utente può nuovamente interagire con la selezione dell'intervallo temporale  
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che non sono disponibili report di analisi 
     nel periodo selezionato per poter procedere con il confronto con i report passati
  ],
  trigger: "L'utente seleziona un intervallo temporale che non contiene report di analisi",
)[]

==== UC7.3: Intervallo temporale incoerente <UC7.3>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC7>)[#underline[\[UC7\]]]
    - L'utente ha selezionato un intervallo temporale incoerente
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
    - L'utente può nuovamente interagire con la selezione dell'intervallo temporale  
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'intervallo temporale selezionato non è coerente
      per poter procedere con il confronto con i report passati
  ],
  trigger: "L'utente seleziona un intervallo temporale incoerente",
)[]

==== UC7.4: Intervallo temporale troppo ampio <UC7.4>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è nella sezione di modifica dell'intervallo temporale per il confronto con i report passati #link(<UC7>)[#underline[\[UC7\]]]
    - L'utente ha selezionato un intervallo temporale troppo ampio
  ],
  post: [
    - L'utente non può procedere con la selezione dell'intervallo temporale per il confronto con i report passati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'intervallo temporale selezionato è troppo ampio
      per poter procedere con il confronto con i report passati
  ],
  trigger: "L'utente seleziona un intervallo temporale troppo ampio",
)[]

=== UC8: Visualizzazione delle metriche comparative tra report di analisi di un repository <UC8>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato il report di analisi del repository GitHub di interesse #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente ha selezionato l'intervallo temporale per il confronto con i report passati #link(<UC7>)[#underline[\[UC7\]]]
  ],
  post: [
    - L'utente ha visualizzato le metriche comparative (grafico e tabella) tra report di analisi repository GitHub
  ],
  scenari: [
    - L'utente accede alla sezione di visualizzazione delle metriche comparative tra report di analisi repository GitHub
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede la visualizzazione delle metriche comparative tra report di analisi del repository",
)[]

#TODO("Sistemare diagrammi e requisiti per UC9-11")
=== UC9: Visualizzazione sezione analisi del codice del report selezionato <UC9>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato la sezione di codice tra le sezioni disponibili del report di analisi #link(<UC6.3>)[#underline[\[UC6.3\]]]
    - L'utente sta visualizzando la sezione di codice del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione dell'analisi del codice del report
  ],
  scenari: [
    - L'utente visualizza la parte di report dedicata all'analisi statica del codice #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - L'utente visualizza la parte di report dedicata alla copertura dei test di unità #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - L'utente visualizza il numero totale di remediation individuate nella sezione di analisi codice del report #link(<UC9.3>)[#underline[\[UC9.3\]]]
  ],
  inclusioni: [
    - #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - #link(<UC9.3>)[#underline[\[UC9.3\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  trigger: "L'utente seleziona la sezione relativa al codice tra le opzioni selezionabili per la visualizzazione del report",
)[
  #useCaseDiagram("9", "UC9 - Visualizzazione valutazione analisi del codice repository GitHub")
]

==== UC9.1: Visualizzazione sezione analisi statica del codice <UC9.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di codice del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione di analisi statica del codice del report
  ],
  scenari: [
    - L'utente visualizza la sezione relativa all'analisi statica del codice
  ],
  trigger: "L'utente seleziona la sezione relativa al codice tra le opzioni selezionabili per la visualizzazione del report",
)[]

==== UC9.2: Visualizzazione sezione test di unità del codice <UC9.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di codice del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione di copertura dei test di unità del codice del report
  ],
  scenari: [
    - L'utente visualizza la sezione relativa alla copertura dei test di unità del codice
  ],
  trigger: "L'utente seleziona la sezione relativa al codice tra le opzioni selezionabili per la visualizzazione del report",
)[]

==== UC9.3: Visualizzazione remediation individuate nella sezione di analisi del codice <UC9.3>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di codice del report di analisi
  ],
  post: [
    - L'utente ha visualizzato le remediation della sezione di codice del report
  ],
  scenari: [
    - L'utente visualizza l'elenco di remediation trovate durante l'analisi della sezione di codice del report
  ],
  estensioni: [
    - #link(<UC9.3.1>)[#underline[\[UC9.3.1\]]]
  ],
  trigger: "L'utente seleziona la sezione relativa al codice tra le opzioni selezionabili per la visualizzazione del report",
)[]

===== UC9.3.1: Nessuna remediation individuata nella sezione di analisi del codice <UC9.3.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di codice del report di analisi
    - Il report non contiene alcuna remediation per tale sezione#link(<UC6.3.1.1>)[#underline[\[UC6.3.1.1\]]]
  ],
  post: [
    - L'utente ha visualizzato il messaggio di assenza di remediation per la sezione di codice del report di analisi
  ],
  scenari: [
    - L'utente viene informato che non sono state trovati possibili miglioramenti per la sezione di codice del report di analisi
  ],
  trigger: "Non sono presenti remediation per la sezione del codice del report",
)[]

=== UC10: Visualizzazione sezione analisi della sicurezza del report selezionato <UC10>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato la sezione di sicurezza tra le sezioni disponibili del report di analisi #link(<UC6.3>)[#underline[\[UC6.3\]]]
    - L'utente sta visualizzando la sezione di sicurezza del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione dell'analisi della sicurezza del report
  ],
  scenari: [
    - L'utente visualizza la parte di report dedicata all'analisi delle librerie e dipendenze del codice #link(<UC10.1>)[#underline[\[UC10.1\]]]
    - L'utente visualizza la parte di report dedicata alla conformità del repository con gli standard OWASP #link(<UC10.2>)[#underline[\[UC10.2\]]]
    - L'utente visualizza il numero totale di remediation individuate nella sezione di sicurezza del report #link(<UC10.3>)[#underline[\[UC10.3\]]]
  ],
  inclusioni: [
    - #link(<UC10.1>)[#underline[\[UC10.1\]]]
    - #link(<UC10.2>)[#underline[\[UC10.2\]]]
    - #link(<UC10.3>)[#underline[\[UC10.3\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  trigger: "L'utente seleziona la sezione relativa alla sicurezza tra le opzioni selezionabili per la visualizzazione del report",
)[]

==== UC10.1: Visualizzazione sezione analisi delle librerie e dipendenze del codice <UC10.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di sicurezza del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione di analisi delle librerie e dipendenze del codice
  ],
  scenari: [
    - L'utente visualizza la sezione relativa all'analisi delle librerie e dipendenze del codice
  ],
  trigger: "L'utente seleziona la sezione relativa alla sicurezza tra le opzioni selezionabili per la visualizzazione del report",
)[]

==== UC10.2: Visualizzazione sezione analisi della sicurezza OWASP <UC10.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di sicurezza del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione di conformità del repository con gli standard OWASP
  ],
  scenari: [
    - L'utente visualizza la sezione relativa alla conformità del repository con gli standard OWASP
  ],
  trigger: "L'utente seleziona la sezione relativa alla sicurezza tra le opzioni selezionabili per la visualizzazione del report",
)[]

==== UC10.3: Visualizzazione remediation individuate nella sezione di sicurezza <UC10.3>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di codice del report di analisi
  ],
  post: [
    - L'utente ha visualizzato l'elenco di remediation della sezione di sicurezza del report
  ],
  scenari: [
    - L'utente visualizza le remediation trovate durante l'analisi della sezione di sicurezza del report
  ],
  estensioni: [
    - #link(<UC10.3.1>)[#underline[\[UC10.3.1\]]]
  ],
  trigger: "L'utente seleziona la sezione relativa alla sicurezza tra le opzioni selezionabili per la visualizzazione del report",
)[]

===== UC10.3.1: Nessuna remediation individuata nella sezione di sicurezza <UC10.3.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di sicurezza del report di analisi
    - Il report non contiene alcuna remediation per tale sezione
  ],
  post: [
    - L'utente ha visualizzato il messaggio di assenza di remediation per la sezione di sicurezza del report di analisi
  ],
  scenari: [
    - L'utente viene informato che non sono state trovati possibili miglioramenti per la sezione di sicurezza del report di analisi
  ],
  trigger: "Non sono presenti remediation per la sezione del sicurezza del report",
)[]

=== UC11: Visualizzazione sezione analisi della documentazione del report selezionato <UC11>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato la sezione di documentazione tra le sezioni disponibili del report di analisi #link(<UC6.3>)[#underline[\[UC6.3\]]]
    - L'utente sta visualizzando la sezione di documentazione del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione dell'analisi della documentazione del report
  ],
  scenari: [
    - L'utente visualizza la parte di report dedicata agli errori di sintassi #link(<UC11.1>)[#underline[\[UC11.1\]]]
    - L'utente visualizza la parte di report dedicata alla completezza della documentazione nei confronti del codice del repository GitHub #link(<UC11.2>)[#underline[\[UC11.2\]]]
    - L'utente visualizza il numero totale di remediation individuate nella sezione di documentazione del report #link(<UC11.3>)[#underline[\[UC11.3\]]]
  ],
  inclusioni: [
    - #link(<UC11.1>)[#underline[\[UC11.1\]]]
    - #link(<UC11.2>)[#underline[\[UC11.2\]]]
    - #link(<UC11.3>)[#underline[\[UC11.3\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  trigger: "L'utente seleziona la sezione relativa alla documentazione tra le opzioni selezionabili per la visualizzazione del report",
)[#useCaseDiagram("10", "UC10 - Visualizzazione report analisi della documentazione repository GitHub")]

==== UC11.1: Visualizzazione sezione errori di sintassi <UC11.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di documentazione del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione di analisi degli errori di sintassi della documentazione
  ],
  scenari: [
    - L'utente visualizza la sezione relativa agli errori di sintassi della documentazione del repository GitHub
  ],
  trigger: "L'utente seleziona la sezione relativa alla documentazione tra le opzioni selezionabili per la visualizzazione del report",
)[]

==== UC11.2: Visualizzazione completezza della documentazione nei confronti del codice <UC11.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di documentazione del report di analisi
  ],
  post: [
    - L'utente ha visualizzato la sezione di analisi della completezza della documentazione nei confronti del codice del repository GitHub 
  ],
  scenari: [
    - L'utente visualizza la sezione relativa alla completezza della documentazione nei confronti del codice del repository GitHub 
  ],
  trigger: "L'utente seleziona la sezione relativa alla documentazione tra le opzioni selezionabili per la visualizzazione del report",
)[]

==== UC11.3: Visualizzazione remediation individuate nella sezione di documentazione <UC11.3>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di documentazione del report di analisi
  ],
  post: [
    - L'utente ha visualizzato l'elenco di remediation della sezione di documentazione del report
  ],
  scenari: [
    - L'utente visualizza le remediation trovate durante l'analisi della sezione di documentazione del report
  ],
  estensioni: [
    - #link(<UC11.3.1>)[#underline[\[UC11.3.1\]]]
  ],
  trigger: "L'utente seleziona la sezione relativa alla documentazione tra le opzioni selezionabili per la visualizzazione del report",
)[]

===== UC11.3.1: Nessuna remediation individuata nella sezione di documentazione <UC11.3.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione di documentazione del report di analisi
    - Il report non contiene alcuna remediation per tale sezione
  ],
  post: [
    - L'utente ha visualizzato il messaggio di assenza di remediation per la sezione di documentazione del report di analisi
  ],
  scenari: [
    - L'utente viene informato che non sono state trovati possibili miglioramenti per la sezione di documentazione del report di analisi
  ],
  trigger: "Non sono presenti remediation per la sezione del documentazione del report",
)[]

=== UC12 Visualizzazione ranking dei repository analizzati <UC12>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post:[
    - L'utente visualizza la lista dei repository analizzati ordinata per punteggio
  ],
  scenari: [
    - L'utente visualizza la lista dei propri repository analizzati ordinata per punteggio
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC12.1>)[#underline[[UC12.1]]]
  ],
  trigger:"L'utente si sposta nella sezione di ranking dei repository analizzati",
)[
  #useCaseDiagram("43", "UC12 - Visualizzazione ranking dei repository analizzati")
]

==== UC12.1 Nessun repository analizzato <UC12.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente si trova nella sezione di visualizzazione del ranking dei repository  #link(<UC12>)[#underline[\[UC12\]]]
    - Non sono presenti repository analizzati associati all'utente
  ],
  post:[
    - L'utente visualizza il messaggio di lista vuota
  ],
  scenari: [
    - L'utente visualizza un messaggio che lo invita ad analizzare dei repository per avere un ranking disponibile 
  ],
  trigger:"L'utente si sposta nella sezione di ranking dei repository senza aver mai analizzato un repository",
)[]

=== UC13: Disconnessione account GitHub da CodeGuardian<UC13>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente ha collegato con successo il proprio account CodeGuardian a un account GitHub
      #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente è nella sezione di disconnessione dell'account GitHub dal sistema CodeGuardian
  ],
  post: [
    - L'utente ha disconnesso con successo il proprio accont GitHub dalla piattaforma Codeguardian
  ],
  scenari: [
    - L'utente conferma la disconnessione del proprio account GitHub dalla paiattaforma CodeGuardian
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente entra nella sezione di disconnessione dell'account GitHub dal sistema CodeGuardian",
)[#useCaseDiagram("13", "UC13 - Disconnessione account GitHub da CodeGuardian")]

=== UC14: Esportazione report di analisi repository GitHub <UC14>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando il report di analisi del repository GitHub #link(<UC6.3>)[#underline[\[UC6.3\]]]
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
  attore: "Utente autorizzato",
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
  attore: "Utente autorizzato",
  pre: [
    - L'utente tenta di procedere senza selezionare un formato di esportazione nella sezione formati
  ],
  post: [
    - La procedura di esportazione non viene finalizzata
    - L'utente può nuovamente interagire con la sezione di esportazione del report
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica la necessità di selezionare un formato
  ],
  trigger: "L'utente conferma l'esportazione del report di analisi senza aver selezionato alcun formato valido",
)[]

==== UC14.2: Conferma esportazione <UC14.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha selezionato un formato di esportazione valido #link(<UC14.1>)[#underline[\[UC14.1\]]]
  ],
  post: [
    - L'utente ha completato la richiesta di generazione del file di esportazione
  ],
  scenari: [
    - L'utente conferma l'avvio della procedura di generazione del file
  ],
  trigger: "L'utente conferma l'esportazione del report di analisi dopo aver selezionato un formato valido",
)[]

=== UC15: Modifica password profilo <UC15>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente vuole modificare la password del proprio account
  ],
  post: [
    - L'utente ha modificato correttamente la propria password
  ],
  scenari: [
    - L'utente va nella sezione di modifica password
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
  trigger: "L'utente seleziona l'opzione modifica password",
)[#useCaseDiagram("15", "UC15 - Modifica password profilo")]

==== UC15.1 Inserimento della password corrente <UC15.1>
#useCase(
  attore: "Utente autorizzato",
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
  attore: "Utente autorizzato",
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

===== UC15.1.2 Password corrente errata <UC15.1.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha inserito la password corrente sbagliata nell'apposito campo del form "password corrente"
  ],
  post: [
    - All'utente viene impedito di cambiare la propria password
  ],
  scenari: [
    - L'utente inserice una password corrente errata nel form
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
  attore: "Utente autorizzato",
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
  attore: "Utente autorizzato",
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
  attore: "Utente autorizzato",
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
  attore: "Utente autorizzato",
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
  attore: "Utente autorizzato",
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
  attore: "Utente autorizzato",
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

#TODO("Sistema qui in modo che le remediation siano distribuite nelle varie sezioni")
=== UC16: Visualizzazione singola remediation di sezione generica <UC16>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la lista delle remediation di una sezione selezionata #link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]
    - L'utente seleziona una remediation specifica
  ],
  post: [
    - L'utente ha visualizzato i dettagli della remediation
  ],
  scenari: [
    - L'utente visualizza i dettagli della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  generalizzazione: [
    - Questo caso d'uso funge da generalizzazione per i seguenti casi d'uso:
    - Visualizzazione singola remediation per la sezione dell'analisi del codice #link(<UC41>)[#underline[\[UC41\]]]
    - Visualizzazione singola remediation per la sezione dell'analisi della sicurezza #link(<UC42>)[#underline[\[UC42\]]]
    - Visualizzazione singola remediation per la sezione dell'analisi della documentazione #link(<UC43>)[#underline[\[UC43\]]]
  ],
  trigger: "L'utente seleziona una remediation dalla lista proposta",
)[#useCaseDiagram("16", "UC16 - Visualizzazione suggerimenti di remediation")]

//USE CASE DEL BACK-END
=== UC17: Verifica accessibilità repository GitHub <UC17>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'orchestratore ha ricevuto una richiesta di analisi contenente un URL GitHub da parte di un utente autorizzato di CodeGuardian //UC di avvio analisi.
  ],
  post: [
    - L'accessibilità del repository è stata accertata e l'orchestratore dispone dei permessi di lettura per avviare la analisi.
  ],
  scenari: [
    - L'orchestratore stabilisce una connessione con la piattaforma GitHub #link(<UC17.1>)[#underline[\[UC17.1\]]]
    - L'orchestratore esegue la ricerca del repository per determinarne la disponibilità #link(<UC17.2>)[#underline[\[UC17.2\]]]
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
    - L'orchestratore ha avviato la procedura di verifica #link(<UC17>)[#underline[\[UC17\]]].
  ],
  post: [
    - Il canale di comunicazione con la piattaforma esterna è stabilito correttamente.
  ],
  scenari: [
    - L'orchestratore interroga i servizi di GitHub per verificarne l'operatività.
  ],
  estensioni: [
    - #link(<UC17.1.1>)[#underline[\[UC17.1.1\]]] // Mancata risposta
  ],
  trigger: "L'orchestratore tenta di contattare GitHub",
)[
  #useCaseDiagram("17_1", "UC17.1 - Comunicazione con GitHub")
]

===== UC17.1.1: Errore di comunicazione con GitHub <UC17.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha tentato di contattare GitHub #link(<UC17.1>)[#underline[\[UC17.1\]]].
    - Il servizio esterno non risponde o restituisce un errore di rete.
  ],
  post: [
    - La procedura viene interrotta e l'errore di connessione viene tracciato.
  ],
  scenari: [
    - L'orchestratore rileva l'impossibilità di raggiungere i servizi esterni di GitHub.
  ],
  trigger: "Mancata risposta da parte di GitHub",
)[]

==== UC17.2: Ricerca del repository <UC17.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - La comunicazione con GitHub è stata stabilita con successo #link(<UC17.1>)[#underline[\[UC17.1\]]].
  ],
  post: [
    - L'orchestratore ha individuato il repository e ne ha convalidato l'accesso.
  ],
  scenari: [
    - L'orchestratore ricerca il repository come risorsa pubblica.
  ],
  estensioni: [
    (UC17.2.1)
  ],
  trigger: "L'orchestratore interroga GitHub per i metadati del repository",
)[]

==== UC17.2.1: Accesso a repository privata <UC17.2.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il repository non risulta accessibile pubblicamente #link(<UC17.2>)[#underline[\[UC17.2\]]].
  ],
  post: [
    - L'orchestratore ha ottenuto l'accesso alla risorsa tramite credenziali autorizzate.
  ],
  scenari: [
    - L'orchestratore recupera le credenziali GitHub associate all'utente richiedente.
    - L'orchestratore utilizza, in alternativa, il token di accesso fornito per la sessione.
  ],
  estensioni: [
    - #link(<UC17.2.1.1>)[#underline[\[UC17.2.1.1\]]] // Repository inaccessibile
  ],
  trigger: "Il repository cercata richiede autorizzazione per l'accesso",
)[]

===== UC17.2.1.1: Repository inaccessibile <UC17.2.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha tentato l'accesso pubblico e privato (credenziali/token).
    - Nessun metodo di autorizzazione ha fornito l'accesso alla risorsa.
  ],
  post: [
    - La procedura di analisi viene annullata per mancanza di permessi.
  ],
  scenari: [
    - L'orchestratore rileva il diniego definitivo di accesso da parte di GitHub per la risorsa specificata.
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
#TODO("1 buco da coprire")

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

// USE CASE DELLE ANALISI
=== UC19: Accettazione singola remediation generica <UC19>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando una singola remediation generica #link(<UC16>)[#underline[\[UC16\]]]
  ],
  post: [
    - La remediation viene automaticamente eseguita, applicando modifiche alla sezione specifica del repository di riferimento
    - L'utente viene rimandato alla visualizzazione della singola remediation #link(<UC16>)[#underline[\[UC16\]]]
  ],
  scenari: [
    - L'utente accetta la remediation proposta dalla sezione di gestione della remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC19.1>)[#underline[\[UC19.1\]]]
    - #link(<UC19.2>)[#underline[\[UC19.2\]]]
  ],
  generalizzazione: [
    - Questo caso d'uso funge da generalizzazione per i seguenti casi d'uso:
    - Accettazione singola remediation per la sezione dell'analisi del codice #link(<UC44>)[#underline[\[UC44\]]]
    - Accettazione singola remediation per la sezione dell'analisi della sicurezza #link(<UC45>)[#underline[\[UC45\]]]
    - Accettazione singola remediation per la sezione dell'analisi della documentazione #link(<UC46>)[#underline[\[UC46\]]]
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation e accetta la proposta di remediation",
)[#useCaseDiagram("19", "UC19 - Analisi vulnerabilità dipendenze")]

==== UC19.1: Rifiuto di una singola remediation generica <UC19.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation #link(<UC19>)[#underline[\[UC19\]]]
  ],
  post: [
    - La remediation non viene applicata automaticamente
    - L'utente viene rimandato alla visualizzazione della singola remediation #link(<UC16>)[#underline[\[UC16\]]]
  ],
  scenari: [
    - L'utente rifiuta la remediation proposta dalla sezione di gestione della remediation
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation e rifiuta la proposta di remediation",
)[]

==== UC19.2: Annullamento dell'operazione di gestione della remediation <UC19.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation #link(<UC19>)[#underline[\[UC19\]]]
  ],
  post: [
    - L'utente viene rimandato alla visualizzazione della singola remediation #link(<UC16>)[#underline[\[UC16\]]]
  ],
  scenari: [
    - L'utente sceglie di annullare l'operazione, tornando alla sezione precedente
  ],
  trigger: "L'utente annulla l'operazione di accettazione della remediation",
)[]

=== UC20: Rilevamento segreti e token <UC20>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente si trova nella sezione di analisi sicurezza di un report #link(<UC10>)[#underline[\[UC10\]]]
  ],
  post: [
    - L'utente visualizza il report dei segreti rilevati con livelli di confidenza
  ],
  scenari: [
    - L'utente accede al pannello di analisi sicurezza
    - L'utente seleziona la scansione segreti e token
    - L'utente visualizza il report dei risultati #link(<UC20.3>)[#underline[\[UC20.3\]]]
    - L'utente esamina i rilevamenti e marca eventuali falsi positivi #link(<UC20.1>)[#underline[\[UC20.1\]]]
    - L'utente configura la revoca automatica per segreti confermati #link(<UC20.2>)[#underline[\[UC20.2\]]]
  ],
  inclusioni: [
    - #link(<UC20.3>)[#underline[\[UC20.3\]]] // Visualizzazione report segreti rilevati
  ],
  estensioni: [
    - #link(<UC20.1>)[#underline[\[UC20.1\]]] // Marcatura falsi positivi
    - #link(<UC20.2>)[#underline[\[UC20.2\]]] // Configurazione revoca automatica
  ],
  trigger: "L'utente seleziona il comando di scansione segreti e token dal pannello di analisi sicurezza",
)[#useCaseDiagram("20", "UC20 - Rilevamento segreti e token")]

==== UC20.1: Marcatura falsi positivi rilevamento segreti <UC20.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando il report di rilevamento segreti e token #link(<UC20>)[#underline[\[UC20\]]]
    - L'utente ha esaminato i rilevamenti
  ],
  post: [
    - L'utente visualizza la conferma della marcatura
    - L'utente visualizza il report aggiornato senza i falsi positivi confermati
  ],
  scenari: [
    - L'utente esamina l'elenco dei segreti rilevati nel report
    - L'utente seleziona i rilevamenti da marcare come falsi positivi
    - L'utente conferma la marcatura
    - L'utente visualizza il report aggiornato senza i falsi positivi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona i rilevamenti da marcare come falsi positivi e conferma la marcatura",
)[]

==== UC20.2: Configurazione revoca automatica segreti compromessi <UC20.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando il report di rilevamento segreti e token #link(<UC20>)[#underline[\[UC20\]]]
    - L'utente ha esaminato i segreti rilevati
  ],
  post: [
    - L'utente visualizza la conferma dell'attivazione della revoca automatica
    - L'utente visualizza lo stato aggiornato dei segreti revocati nel report
  ],
  scenari: [
    - L'utente esamina i segreti rilevati nel report
    - L'utente seleziona i segreti per cui abilitare la revoca automatica
    - L'utente accede alla sezione di configurazione revoca automatica
    - L'utente conferma l'attivazione della revoca automatica
    - L'utente visualizza la conferma dell'avvenuta revoca
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona i segreti compromessi e conferma l'attivazione della revoca automatica",
)[]

==== UC20.3: Visualizzazione report segreti e token rilevati <UC20.3>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente ha richiesto la scansione segreti e token #link(<UC20>)[#underline[\[UC20\]]]
    - L'utente si trova nella sezione di analisi sicurezza
  ],
  post: [
    - L'utente visualizza il report completo dei segreti rilevati
    - L'utente visualizza i dettagli di ciascun rilevamento
    - L'utente ha accesso alle funzionalità di marcatura falsi positivi e configurazione revoca
  ],
  scenari: [
    - L'utente apre il report segreti dal pannello analisi sicurezza
    - L'utente visualizza l'elenco dei segreti rilevati
    - L'utente esamina i dettagli di ciascun rilevamento
    - L'utente marca eventuali falsi positivi #link(<UC20.1>)[#underline[\[UC20.1\]]]
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona il comando di visualizzazione report segreti dal pannello di analisi sicurezza",
)[]

=== UC21: Verifica conformità licenze <UC21>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente si trova nella sezione di compliance e governance del pannello report
  ],
  post: [
    - L'utente visualizza il report di compatibilità delle licenze con classificazione dei rischi
    - L'utente visualizza le licenze non compatibili evidenziate
    - L'utente può richiedere approvazione legale
  ],
  scenari: [
    - L'utente accede al pannello compliance
    - L'utente seleziona la verifica conformità licenze
    - L'utente visualizza il report delle licenze con classificazione dei rischi
    - L'utente esamina le dipendenze problematiche
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona il comando di verifica conformità licenze dal pannello compliance",
)[#useCaseDiagram("21", "UC21 - Verifica conformità licenze")]

#TODO("1 buco da coprire")

=== UC23: Monitor qualità del codice <UC23>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha selezionato il report #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente si trova nella sezione di monitoraggio qualità del codice del pannello report
  ],
  post: [
    - L'utente visualizza la dashboard con metriche di qualità del codice e trend storici
    - L'utente visualizza le regressioni evidenziate
    - L'utente può pianificare azioni correttive
  ],
  scenari: [
    - L'utente accede al pannello monitoraggio qualità
    - L'utente seleziona il comando di monitoraggio qualità
    - L'utente visualizza la dashboard con metriche e trend
    - L'utente esamina i suggerimenti di obiettivi qualità
    - L'utente pianifica azioni correttive
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona il comando di monitoraggio qualità codice dal pannello report",
)[#useCaseDiagram("23", "UC23 - Monitor qualità del codice")]

=== UC24: Suggerimenti di refactor <UC24>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha selezionato il repository da analizzare #link(<UC4>)[#underline[\[UC4\]]]
    - L'utente si trova nella sezione suggerimenti refactor del pannello report
  ],
  post: [
    - L'utente visualizza i suggerimenti di refactor ordinati per priorità
    - L'utente può applicare refactor manualmente o automaticamente
  ],
  scenari: [
    - L'utente accede alla sezione suggerimenti refactor
    - L'utente seleziona i refactor da applicare
    - L'utente applica i refactor automaticamente #link(<UC24.2>)[#underline[\[UC24.2\]]] o manualmente
  ],
  inclusioni: [
  ],
  estensioni: [
    - #link(<UC24.2>)[#underline[\[UC24.2\]]] // Applicazione automatica
  ],
  trigger: "L'utente seleziona il comando suggerimenti refactor dal pannello code quality",
)[#useCaseDiagram("24", "UC24 - Suggerimenti di refactor")]

==== UC24.2: Applicazione automatica refactor con supervisione <UC24.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando i suggerimenti di refactor #link(<UC24>)[#underline[\[UC24\]]]
    - L'utente ha selezionato refactor da applicare
  ],
  post: [
    - L'utente visualizza il diff delle modifiche applicate
    - L'utente può accettare definitivamente o effettuare rollback
  ],
  scenari: [
    - L'utente seleziona i refactor da applicare automaticamente
    - L'utente visualizza la preview delle modifiche
    - L'utente conferma l'applicazione
    - L'utente esamina il diff delle modifiche applicate
    - L'utente conferma definitivamente o esegue rollback
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona i refactor da applicare e conferma l'applicazione automatica con supervisione",
)[]

#TODO("3 buchi da coprire")

=== UC28: Report programmabili e alert <UC28>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente è nella sezione report programmabili e alert
  ],
  post: [
    - L'utente ha configurato con sucesso i report periodici e gli alert
  ],
  scenari: [
    - L'utente configura la periodicità dei report #link(<UC28.1>)[#underline[\[UC28.1\]]]
    - L'utente configura le soglie per gli alert critici #link(<UC28.2>)[#underline[\[UC28.2\]]]
    - L'utente conferma la sua configurazione per i report programmabili e gli alert
  ],
  inclusioni: [
    - #link(<UC28.1>)[#underline[\[UC28.1\]]]
    - #link(<UC28.2>)[#underline[\[UC28.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione report programmabili e alert",
)[#useCaseDiagram("28", "UC28 - Report programmabili e alert")]

==== UC28.1: Configurazione periodicità dei report <UC28.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta confiugurando i report programmabili e gli alert #link(<UC28>)[#underline[\[UC28\]]]
    - L'utente è nella sezione per la configurazione della periodicità dei report
  ],
  post: [
    - L'utente ha selezionato e confermato la periodicità dei report
  ],
  scenari: [
    - L'utente configura la periodicità dei report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC28.1.1>)[#underline[\[UC28.1.1\]]]
  ],
  trigger: "L'utente accede alla sezione per la configurazione della periodicità dei report",
)[]

===== UC28.1.1: Nessuna periodicità selezionata <UC28.1.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta confiugurando i report programmabili e gli alert #link(<UC28>)[#underline[\[UC28\]]]
    - L'utente è nella sezione per la configurazione della periodicità dei report #link(<UC28.1>)[#underline[\[UC28.1\]]]
    - L'utente non ha selezionato nessuna periodicità
  ],
  post: [
    - L'utente non può procedere con la configurazione della periodicità dei report
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionata almeno una periodicità per i report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente non inserisce alcuna periodicità e tenta di confermare la configurazione dei report",
)[]

==== UC28.2: Configurazione soglie per gli alert critici <UC28.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta confiugurando i report programmabili e gli alert #link(<UC28>)[#underline[\[UC28\]]]
    - L'utente è nella sezione per la configurazione delle soglie per gli alert critici
  ],
  post: [
    - L'utente ha selezionato e confermato le soglie per gli alert critici
  ],
  scenari: [
    - L'utente configura le soglie per gli alert critici
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC28.2.1>)[#underline[\[UC28.2.1\]]]
  ],
  trigger: "L'utente accede alla sezione per la configurazione delle soglie per gli alert critici",
)[]

===== UC28.2.1: Nessuna soglia selezionata <UC28.2.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta confiugurando i report programmabili e gli alert #link(<UC28>)[#underline[\[UC28\]]]
    - L'utente è nella sezione per la configurazione delle soglie per gli alert critici #link(<UC28.2>)[#underline[\[UC28.2\]]]
    - L'utente non ha selezionato nessuna soglia
  ],
  post: [
    - L'utente non può procedere con la configurazione delle soglie per gli alert critici
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionata almeno una soglia per gli alert critici
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente non inserisce alcuna soglia e tenta di confermare la configurazione dei report",
)[]

=== UC29 Recupero e avvio strumenti esterni di analisi <UC29>
#useCase(
  attore: "Orchestratore",
  pre: [
    -  L'orchestratore ha ricevuto una richiesta di analisi di un repository
  ],
  post: [
    - L'orchestratore ha contattato ed avviato corettamente gli strumenti esterni di analisi
  ],
  scenari: [
    - L'orchestratore richiede lo strumento esterno di analisi del codice #link(<UC29.1>)[#underline[\[UC29.1\]]]
    - L'orchestratore richiede lo strumento esterno di analisi della documentazione #link(<UC29.2>)[#underline[\[UC29.2\]]]
    - L'orchestratore richiede lo strumento esterno di analisi degli standard OWASP #link(<UC29.3>)[#underline[\[UC29.3\]]]
    - L'orchestratore inserisce all'interno degli strumenti esterni i dati appropriati da analizzare e gli avvia
  ],
  inclusioni: [
    - #link(<UC29.1>)[#underline[\[UC29.1\]]]
    - #link(<UC29.2>)[#underline[\[UC29.2\]]]
    - #link(<UC29.3>)[#underline[\[UC29.3\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Richiesta di analisi di un repository",
)[#useCaseDiagram("29", "UC29 - Recupero e avvio strumenti esterni di analisi")]

==== UC29.1 Richiesta di analisi del codice <UC29.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - L'orchestratore è nella fase di recupero degli strumenti di analisi #link(<UC29>)[#underline[\[UC29\]]]
    - L'orchestratore contatta lo strumento di analisi del codice
  ],
  post: [
    - L'orchestratore ha avviato lo strumento di analisi del codice
  ],
  scenari: [
    - L'orchestratore invia il codice da anallizzare allo strumento di analisi del codice
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
  attore: "Strumento di Analisi",
  pre: [
    - Lo strumento di analisi del codice ha ricevuto correttamente il codice da analizzare dall'orchestratore  #link(<UC29.1>)[#underline[\[UC29.1\]]]
    - Lo strumento di analisi del codice ha iniziato l'analisi
  ],
  post: [
    - Lo strumento di analisi del codice comunica un messaggio di errore per mancato supporto di uno o piú linguaggio
  ],
  scenari: [
    - Lo strumento di analisi del codice rileva dei linguaggi non supportati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevato uno o piú linguaggi non supportati",
)[]

==== UC29.2 Richiesta di analisi della documentazione <UC29.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Servizio LLM",
  pre: [
    - L' orchestratore è nella fase di recupero degli strumenti di analisi #link(<UC29>)[#underline[\[UC29\]]]
    - L'orchestratore contatta lo strumento di analisi della documentazione, il servizio LLM
  ],
  post: [
    - L'orchestratore ha avviato il servizio LLM come tool di analisi della documentazione
  ],
  scenari: [
    - L'orchestratore invia la documentazione da anallizzare al servizio LLM
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
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - L' orchestratore è nella fase di recupero degli strumenti di analisi #link(<UC29>)[#underline[\[UC29\]]]
    - L'orchestratore contatta lo strumento di analisi del rispetto degli standard OWASP
  ],
  post: [
    - L'orchestratore ha avviato lo strumento di analisi degli standard OWASP
  ],
  scenari: [
    - L'orchestratore invia l'applicazione da analizzare allo strumento di analisi degli standard OWASP
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Viene richiesta l'analisi del rispetto degli standard OWASP",
)[]

=== UC30 Generazione del report finale <UC30>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha recuperato ed avviato tutti gli strumenti di analisi #link(<UC29>)[#underline[\[UC29\]]]
  ],
  post: [
    - L'orchestratore ha generato il report di analisi finale
  ],
  scenari: [
    - L'orchestratore riceve le varie analisi dagli strumenti di analisi e le unisce in un unico report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'orchestratore riceve le analisi dei vari strumenti di analisi",
)[
]

#TODO("1 buco da coprire")

=== UC32 L'utente viene notificato della disponibilità di visualizzare il nuovo report di analisi<UC32>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]].
    - L'utente ha richiesto l'analisi del repository tramite la procedura di richiesta analisi #link(<UC4>)[#underline[\[UC4\]]].
  ],
  post: [
    - L'utente riceve una notifica che segnala la disponibilità del nuovo report di analisi.
  ],
  scenari: [
    - L'utente riceve e prende atto della notifica relativa alla disponibilità del report.
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'analisi richiesta è stata completata",
)[]

#TODO("1 buco da coprire")

=== UC34: Notifica completamento dell'analisi del repository <UC34>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha completato l'elaborazione del report di analisi.
  ],
  post: [
    - La notifica di completamento è stata inoltrata.
  ],
  scenari: [
    - L'orchestratore invia la notifica tramite il canale previsto.
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Completamento dell'elaborazione del report",
)[
  #useCaseDiagram("34", "UC34 - Notifica completamento dell'analisi del repository")
]

=== UC35: Gestione errore critico durante l'analisi <UC35>
#TODO("La gestione dell'errore va bene come uc a parte o estensione magari di UC29?")
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]].
    - L'utente ha richiesto l'analisi del repository tramite la procedura di richiesta analisi #link(<UC4>)[#underline[\[UC4\]]].
  ],
  post: [
    - L'utente viene informato che l'analisi non è stata completata a causa di un errore critico.
  ],
  scenari: [
    - L'utente riceve una notifica che segnala il fallimento dell'analisi.
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente riceve la notifica di un errore critico a seguito dell'analisi",
)[
  #useCaseDiagram("35", "UC35 - Notifica errore critico durante l'analisi")
]

=== UC36: Salvataggio metadati repository <UC36>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]].
    - L'utente ha richiesto l'analisi del repository tramite la procedura di richiesta analisi #link(<UC4>)[#underline[\[UC4\]]].
  ],
  post: [
    - I metadati del repository sono stati salvati correttamente nel database.
  ],
  scenari: [
    - L'utente avvia (o conferma) la procedura di salvataggio metadati come parte della richiesta di analisi.
    - Il sistema registra i metadati e conferma l'avvenuto salvataggio.
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Completamento della raccolta metadati durante l'analisi (UC29)",
)[]

=== UC37: Verifica esistenza repository analizzati <UC37> 
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha ricevuto una richiesta di visualizzazione dei repository analizzati
  ],
  post: [
    - L'orchestratore ha verificato l'esistenza dei repository analizzati e restituisce le informazioni relative ad essi
  ],
  scenari: [
    - L'orchestratore verifica l'esistenza dei repository analizzati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC37.1>)[#underline[\[UC37.1\]]]
  ],
  trigger: "Richiesta di visualizzazione dei repository analizzati",
)[
  #useCaseDiagram("37", "UC37 - Verifica esistenza repository analizzati")
]

==== UC37.1: Nessun repository analizzato <UC37.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore si trova nella verifica di esistenza dei repository analizzati #link(<UC37>)[#underline[\[UC37\]]]
    - Non sono presenti repository analizzati
  ],
  post: [
    - L'orchestratore ha inviato un messaggio errore di mancata presenza di repository analizzati
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

=== UC38 Salvataggio del report dell'analisi <UC38> 
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il report dell'analisi è stato completato e è stato preso in carico dall'orchestratore #link(<UC30>)[#underline[[UC30]]]
  ],
  post: [
    - L'orchestratore ha archiviato correttamente il report dell'analisi
  ],
  scenari: [
    - L'orchestratore ha avviato la procedura di salvataggio del report dell'analisi
    #TODO("Servono altri passaggi/inclusioni o va bene così? (direi che non bisgona concentrarsi sul 'come')")
    //- L'orchestratore invia una richiesta di persistenza al sistema Back-end
    //- Il sistema Back-end riceve i dati del report
    //- Il sistema Back-end memorizza il report nel database
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC38.1>)[#underline[[UC38.1]]]
  ],
  trigger: "Il report di analisi finale è preso in carico dall'orchestratore",
)[
  #useCaseDiagram("38", "UC38 - Salvataggio del report dell'analisi")
]

==== UC38.1 Errore durante il salvataggio del report <UC38.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha avviato l'archiviazione del report #link(<UC38>)[#underline[[UC38]]]
    - Non avviene correttamente il processo di salvataggio e si genera un errore
  ],
  post: [
    - L'orchestratore comunica l'errore di mancato salvataggio del report
  ],
  scenari: [
    - L'orchestratore riscontra un errore interno o di connessione al database durante la procedura di salvataggio del report
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "La procedura di salvataggio del report di analisi finale fallisce",
)[]

=== UC39 Salvataggio delle metriche aggregate <UC39>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il report dell'analisi è stato completato e è stato preso in carico dall'orchestratore #link(<UC30>)[#underline[[UC30]]]
  ],
  post: [
    - L'orchestratore ha archiviato correttamente le metriche aggregate per la visualizzazione di grafici e tabelle
  ],
  scenari: [
    - L'orchestratore elabora i dati dei singoli report degli agenti per calcolare le metriche globali e avvia la procedura di salvataggio
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC39.1>)[#underline[[UC39.1]]]
  ],
  trigger: "Il report di analisi finale è preso in carico dall'orchestratore",
)[
  #useCaseDiagram("39", "UC39 - Salvataggio delle metriche aggregate")
]

==== UC39.1 Errore durante il salvataggio delle metriche aggregate <UC39.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha avviato la procedura di salvataggio delle metriche aggregate #link(<UC39>)[#underline[[UC39]]]
    - Non avviene correttamente il processo di salvataggio e si genera un errore
  ],
  post: [
    - L'orchestratore comunica l'errore di mancato salvataggio delle metriche aggregate
  ],
  scenari: [
    - L'orchestratore riscontra un errore interno o di connessione al database durante la procedura di salvataggio delle metriche aggregate
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Il sistema Back-end fallisce la procedura di archiviazione delle metriche",
)[]

=== UC40 Gestione del codice OAuth GitHub <UC40>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'orchestratore dispone di un codice di autorizzazione temporaneo (OAuth Code).
  ],
  post: [
    - L'orchestratore ha ottenuto il token di accesso e i relativi permessi necessari all'integrazione del profilo GitHub.
    - Le credenziali/token sono state memorizzate in modo sicuro associandole ad un account.
  ],
  scenari: [
    - L'orchestratore invia a GitHub la richiesta di scambio del codice temporaneo per ottenere il token.
    - GitHub risponde con un token di accesso valido e l'Orchestratore associa il token all'account utente.
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'orchestratore riceve un codice temporaneo di autorizzazione (OAuth Code)",
)[
  #useCaseDiagram("40", "UC40 - Gestione del codice OAuth GitHub")
]

=== UC41: Visualizzazione singola remediation di analisi del codice <UC41>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la lista delle remediation della sezione di analisi del codice #link(<UC9.3>)[#underline[\[UC9.3\]]]
    - L'utente seleziona una remediation specifica dall'elenco
  ],
  post: [
    - L'utente ha visualizzato i dettagli della remediation
  ],
  scenari: [
    - L'utente visualizza i dettagli della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso Visualizzazione singola remediation di sezione generica #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una remediation dalla lista proposta nella sezione di analisi del codice",
)[]

=== UC42: Visualizzazione singola remediation di analisi della sicurezza <UC42>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la lista delle remediation della sezione di analisi della sicurezza #link(<UC10.3>)[#underline[\[UC10.3\]]]
    - L'utente seleziona una remediation specifica dall'elenco
  ],
  post: [
    - L'utente ha visualizzato i dettagli della remediation
  ],
  scenari: [
    - L'utente visualizza i dettagli della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso Visualizzazione singola remediation di sezione generica #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una remediation dalla lista proposta nella sezione di analisi della sicurezza",
)[]

=== UC43: Visualizzazione singola remediation di analisi della documentazione <UC43>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando la lista delle remediation della sezione di analisi della documentazione #link(<UC11.3>)[#underline[\[UC11.3\]]]
    - L'utente seleziona una remediation specifica dall'elenco
  ],
  post: [
    - L'utente ha visualizzato i dettagli della remediation
  ],
  scenari: [
    - L'utente visualizza i dettagli della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso Visualizzazione singola remediation di sezione generica #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una remediation dalla lista proposta nella sezione di analisi della documentazione",
)[]

=== UC44: Accettazione singola remediation di analisi del codice <UC44>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando una singola remediation di analisi del codice #link(<UC41>)[#underline[\[UC41\]]]
  ],
  post: [
    - La remediation viene automaticamente eseguita, applicando modifiche alla sezione interessata dall'analisi del codice del repository di riferimento 
    - L'utente viene rimandato alla sezione di visualizzazione della singola remediation di analisi del codice #link(<UC41>)[#underline[\[UC41\]]]
  ],
  scenari: [
    - L'utente accetta la remediation proposta dalla sezione di gestione della remediation di analisi del codice
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC44.1>)[#underline[\[UC44.1\]]]
    - #link(<UC44.2>)[#underline[\[UC44.2\]]]
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso Accettazione singola remediation #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation di analisi del codice e accetta la proposta di remediation",
)[]

==== UC44.1: Rifiuto di una singola remediation di analisi del codice <UC44.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation di analisi del codice #link(<UC44>)[#underline[\[UC44\]]]
  ],
  post: [
    - La remediation non viene applicata automaticamente
    - L'utente viene rimandato alla visualizzazione della singola remediation di analisi del codice #link(<UC41>)[#underline[\[UC41\]]]
  ],
  scenari: [
    - L'utente rifiuta la remediation proposta dalla sezione di gestione della remediation di analisi del codice
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation e rifiuta la proposta di remediation di analisi del codice",
)[]

==== UC44.2: Annullamento dell'operazione di gestione della remediation di analisi del codice <UC44.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation di analisi del codice #link(<UC44>)[#underline[\[UC44\]]]
  ],
  post: [
    - L'utente viene rimandato alla visualizzazione della singola remediation di analisi del codice #link(<UC41>)[#underline[\[UC41\]]]
  ],
  scenari: [
    - L'utente sceglie di annullare l'operazione, tornando alla sezione precedente
  ],
  trigger: "L'utente annulla l'operazione di accettazione della remediation di analisi del codice",
)[]

=== UC45: Accettazione singola remediation di analisi della sicurezza <UC45>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando una singola remediation di analisi della sicurezza #link(<UC42>)[#underline[\[UC42\]]]
  ],
  post: [
    - La remediation viene automaticamente eseguita, applicando modifiche alla sezione interessata dall'analisi della sicurezza del repository di riferimento 
    - L'utente viene rimandato alla sezione di visualizzazione della singola remediation di analisi della sicurezza #link(<UC42>)[#underline[\[UC42\]]]
  ],
  scenari: [
    - L'utente accetta la remediation proposta dalla sezione di gestione della remediation di analisi della sicurezza
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC45.1>)[#underline[\[UC45.1\]]]
    - #link(<UC45.2>)[#underline[\[UC45.2\]]]
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso Accettazione singola remediation #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation di analisi della sicurezza e accetta la proposta di remediation",
)[]

==== UC45.1: Rifiuto di una singola remediation di analisi della sicurezza <UC45.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation di analisi della sicurezza #link(<UC45>)[#underline[\[UC45\]]]
  ],
  post: [
    - La remediation non viene applicata automaticamente
    - L'utente viene rimandato alla visualizzazione della singola remediation di analisi della sicurezza #link(<UC42>)[#underline[\[UC42\]]]
  ],
  scenari: [
    - L'utente rifiuta la remediation proposta dalla sezione di gestione della remediation di analisi della sicurezza
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation e rifiuta la proposta di remediation di analisi della sicurezza",
)[]

==== UC45.2: Annullamento dell'operazione di gestione della remediation di analisi della sicurezza <UC45.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation di analisi della sicurezza #link(<UC45>)[#underline[\[UC45\]]]
  ],
  post: [
    - L'utente viene rimandato alla visualizzazione della singola remediation di analisi della sicurezza #link(<UC42>)[#underline[\[UC42\]]]
  ],
  scenari: [
    - L'utente sceglie di annullare l'operazione, tornando alla sezione precedente
  ],
  trigger: "L'utente annulla l'operazione di accettazione della remediation di analisi della sicurezza",
)[]

=== UC46: Accettazione singola remediation di analisi della documentazione <UC46>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta visualizzando una singola remediation di analisi della documentazione #link(<UC43>)[#underline[\[UC43\]]]
  ],
  post: [
    - La remediation viene automaticamente eseguita, applicando modifiche alla sezione interessata dall'analisi della documentazione del repository di riferimento 
    - L'utente viene rimandato alla sezione di visualizzazione della singola remediation di analisi della documentazione #link(<UC43>)[#underline[\[UC43\]]]
  ],
  scenari: [
    - L'utente accetta la remediation proposta dalla sezione di gestione della remediation di analisi della documentazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC46.1>)[#underline[\[UC46.1\]]]
    - #link(<UC46.2>)[#underline[\[UC46.2\]]]
  ],
  specializzazione: [
    - Questo caso d'uso è una specializzazione del caso d'uso Accettazione singola remediation #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation di analisi della documentazione e accetta la proposta di remediation",
)[]

==== UC46.1: Rifiuto di una singola remediation di analisi della documentazione <UC46.1>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation di analisi della documentazione #link(<UC46>)[#underline[\[UC46\]]]
  ],
  post: [
    - La remediation non viene applicata automaticamente
    - L'utente viene rimandato alla visualizzazione della singola remediation di analisi della documentazione #link(<UC43>)[#underline[\[UC43\]]]
  ],
  scenari: [
    - L'utente rifiuta la remediation proposta dalla sezione di gestione della remediation di analisi della documentazione
  ],
  trigger: "L'utente interagisce con la sezione di gestione della remediation e rifiuta la proposta di remediation di analisi della documentazione",
)[]

==== UC46.2: Annullamento dell'operazione di gestione della remediation di analisi della documentazione <UC46.2>
#useCase(
  attore: "Utente autorizzato",
  pre: [
    - L'utente sta interagendo con la sezione di gestione della remediation di analisi della documentazione #link(<UC46>)[#underline[\[UC46\]]]
  ],
  post: [
    - L'utente viene rimandato alla visualizzazione della singola remediation di analisi della documentazione #link(<UC43>)[#underline[\[UC43\]]]
  ],
  scenari: [
    - L'utente sceglie di annullare l'operazione, tornando alla sezione precedente
  ],
  trigger: "L'utente annulla l'operazione di accettazione della remediation di analisi della documentazione",
)[]

=== UC47: Richiesta analisi repository GitHub privato a cui si ha accesso <UC47>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha accesso a repository privati su GitHub
    - L'utente si trova nella sezione di richiesta di analisi di un repository GitHub
  ],
  post: [
    - La richiesta di analisi del repository GitHub privato a cui si ha accesso è stata completata con successo
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub privato da analizzare #link(<UC47.1>)[#underline[\[UC47.1\]]]
    - L'utente seleziona le aree di interesse per l'analisi #link(<UC47.2>)[#underline[\[UC47.2\]]]
    - L'utente conferma l'invio della richiesta di analisi
  ],
  inclusioni: [
    - #link(<UC47.1>)[#underline[\[UC47.1\]]]
    - #link(<UC47.2>)[#underline[\[UC47.2\]]]
  ],
  estensioni: [
    - #link(<UC47.3>)[#underline[\[UC47.3\]]] // Ultimo report up-to-date
    - #link(<UC47.4>)[#underline[\[UC47.4\]]] // Ultimo report in elaborazione
  ],
  trigger: "L'utente accede alla sezione dedicata per la richiesta di analisi di repository GitHub in CodeGuardian",
)[]

==== UC47.1: Inserimento URL repository GitHub privato per l'analisi <UC47.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
  ],
  post: [
    - L'URL del repository GitHub privato inserito dall'utente è idoneo alla procedura di analisi
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub privato da analizzare
  ],
  estensioni: [
    - #link(<UC47.1.1>)[#underline[\[UC47.1.1\]]] // URL repository GitHub privato non conforme
    - #link(<UC47.1.2>)[#underline[\[UC47.1.2\]]] // Repository GitHub privato non accessibile
    - #link(<UC47.1.3>)[#underline[\[UC47.1.3\]]] // URL repository GitHub privato non inserito
  ],
  trigger: "L'utente interagisce con la sezione dell'inserimento dell'URL del repository GitHub durante la procedura di richiesta analisi repository GitHub privato",
)[]

===== UC47.1.1: URL repository GitHub non conforme ai vincoli di formato <UC47.1.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
    - L'URL inserito non è conforme ai vincoli di formato previsti per l'inserimento dell'URL del repository GitHub
  ],
  post: [
    - La procedura di richiesta analisi di un repository privato non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'URL inserito non è valido per la procedura di analisi
  ],
  trigger: "L'utente ha inserito un URL del repository GitHub non conforme ai vincoli di formato",
)[]

===== UC47.1.2: Repository GitHub non accessibile <UC47.1.2>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
    - Il repository GitHub associato all'URL inserito non è accessibile
  ],
  post: [
    - La procedura di richiesta analisi di un repository privato non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il repository GitHub specificato non è accessibile per la procedura di richiesta analisi
  ],
  trigger: "L'utente conferma l'inserimento dell'URL del repository GitHub non accessibile durante la procedura di richiesta analisi",
)[]

===== UC47.1.3: URL repository GitHub non inserito <UC47.1.3>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
    - L'utente non ha inserito alcun URL del repository GitHub
  ],
  post: [
    - La procedura di richiesta analisi di un repository privatp non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere inserito un URL del repository GitHub per procedere con la richiesta di analisi
  ],
  trigger: "L'utente termina senza inserire alcun URL durante la procedura di richiesta analisi repository GitHub",
)[]

==== UC47.2: Selezione aree di interesse <UC47.2>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
  ],
  post: [
    - L'utente ha selezionato le aree di interesse del repository GitHub da analizzare
  ],
  scenari: [
    - L'utente seleziona le aree del repository GitHub da analizzare, specificando cosa includere tra test, sicurezza o documentazione
  ],
  estensioni: [
    - #link(<UC47.2.1>)[#underline[\[UC47.2.1\]]] // Nessuna area di interesse selezionata
  ],
  trigger: "L'utente interagisce con la sezione della selezione delle aree del repository GitHub da analizzare durante la procedura di richiesta analisi repository GitHub privato",
)[]

===== UC47.2.1: Nessuna area di interesse selezionata <UC47.2.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
    - L'utente non ha selezionato alcuna area di interesse durante la selezione delle aree di interesse
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere selezionata almeno un'area di interesse per procedere con la richiesta di analisi del repository GitHub privato
  ],
  trigger: "L'utente conferma la selezione delle aree del repository GitHub da analizzare durante la procedura di richiesta analisi repository GitHub privato",
)[]

==== UC47.3: Ultimo repost up-to-date <UC47.3>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
    - L'utente ha inserito un URL del repository GitHub #link(<UC47.1>)[#underline[\[UC47.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC47.2>)[#underline[\[UC47.2\]]]
    - L'utente ha inviato la richiesta di analisi
    - L'ultimo report di analisi del repository GitHub specificato è già aggiornato rispetto all'ultima modifica del repository stesso
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub non viene finalizzata in quanto l'analisi risulta già aggiornata
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che l'analisi del repository GitHub specificato è già aggiornata e non è necessario avviare una nuova analisi
  ],
  trigger: "L'ultimo report di analisi del repository GitHub specificato è già aggiornato rispetto all'ultima modifica del repository stesso",
)[]

==== UC47.4: Ultimo report in elaborazione <UC47.4>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di richiesta analisi di un repository GitHub privato #link(<UC47>)[#underline[\[UC47\]]]
    - L'utente ha inserito un URL del repository GitHub corretto #link(<UC47.1>)[#underline[\[UC47.1\]]]
    - L'utente ha selezionato almeno un'area di interesse durante la selezione delle aree di interesse #link(<UC47.2>)[#underline[\[UC47.2\]]]
    - L'utente invia la richiesta di analisi
    - L'ultimo report di analisi del repository GitHub specificato è ancora in elaborazione
  ],
  post: [
    - La procedura di richiesta analisi repository GitHub privato non viene finalizzata in quanto l'analisi precedente è ancora in corso
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che l'analisi del repository GitHub specificato è ancora in corso e non è possibile avviare una nuova analisi fino al completamento di quella in corso
  ],
  trigger: "L'ultimo report di analisi del repository GitHub specificato è ancora in elaborazione",
)[]

=== UC48: Visualizzazione dei propri repository privati inseriti <UC48>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente si trova nella sezione dei propri repository privati inseriti
  ],
  post: [
    - L'utente visualizza la lista dei propri repository privati inseriti
  ],
  scenari: [
    - L'utente visualizza la lista di tutti i repository privati di cui è proprietario che ha inserito nella piattaforma
    - Per ogni repository sono presenti le informazioni minime #link(<UC48.1>)[#underline[\[UC48.1\]]]
  ],
  inclusioni: [
    - #link(<UC48.1>)[#underline[\[UC48.1\]]]
  ],
  estensioni: [
    - #link(<UC48.2>)[#underline[\[UC48.2\]]] // Nessun repository inserito
  ],
  trigger: "L'utente accede alla sezione dei propri repository privati inseriti",
)[]

==== UC48.1: Informazioni minime repository privati inseriti <UC48.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei propri repository privati inseriti #link(<UC48>)[#underline[\[UC48\]]]
  ],
  post: [
    - L'utente visualizza i dettagli minimi per i repository privati inseriti
  ],
  scenari:[
    - L'utente visualizza le informazioni minime per l'identificazione do ogni repository inserito
  ],
  trigger: "L'utente accede alla sezione dei propri repository privati inseriti",
)[]

==== UC48.2: Nessun repository inserito <UC48.2>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente si trova nella sezione di visualizzazione dei propri repository privati inseriti #link(<UC48>)[#underline[\[UC48\]]]
    - Nessun repository è stato trovato
  ],
  post: [
    - L'utente visualizza il messaggio di errore di lista vuota
  ],
  scenari:[
    - L'utente viene avvisato che nessun repository è mai stato inserito
  ],
  trigger: "Non viene trovato nessun repository privato di cui l'utente è proprietario",
)[]

=== UC49: Inserimento di un proprio repository privato nel sistema CodeGuardian <UC49>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente accede alla sezione di inserimento dei propri repository privati
    - L'utente è proprietario di almeno un repository privato su GitHub
  ],
  post: [
    - Il repository privato è stato aggiunto al sistema CodeGuardian
  ],
  scenari: [
    - L'utente inserisce un URL di un repository privato di sua proprietà #link(<UC49.1>)[#underline[\[UC49.1\]]]
    - L'utente conferma l'inserimento
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di inserimento dei propri repository privati",
)[]

==== UC49.1: Inserimento URL repository GitHub privato di cui si è proprietario <UC49.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di inserimento di un repository privato di cui si è proprietario nel sistema CodeGuardian #link(<UC49>)[#underline[\[UC49\]]]
  ],
  post: [
    - L'URL del repository GitHub privato inserito dall'utente è idoneo alla procedura di analisi
  ],
  scenari: [
    - L'utente inserisce l'URL del repository GitHub privato da analizzare
  ],
  estensioni: [
    - #link(<UC49.1.1>)[#underline[\[UC49.1.1\]]] // URL repository GitHub privato non conforme
    - #link(<UC49.1.2>)[#underline[\[UC49.1.2\]]] // Repository GitHub privato non accessibile
    - #link(<UC49.1.3>)[#underline[\[UC49.1.3\]]] // URL repository GitHub privato non inserito
    - #link(<UC49.1.4>)[#underline[\[UC49.1.4\]]] // Repository GitHub già presente nel sistema
  ],
  trigger: "L'utente interagisce con la sezione dell'inserimento dell'URL del repository GitHub durante la procedura di inserimento di un proprio repository privato",
)[]

===== UC49.1.1: URL repository GitHub non conforme ai vincoli di formato <UC49.1.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di inserimento di un repository privato di cui si è proprietario nel sistema CodeGuardian #link(<UC49>)[#underline[\[UC49\]]]
    - L'URL inserito non è conforme ai vincoli di formato previsti per l'inserimento dell'URL del repository GitHub
  ],
  post: [
    - La procedura di inserimento di un repository privato di cui si è proprietario non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che l'URL inserito non è valido per la procedura di inserimento
  ],
  trigger: "L'utente ha inserito un URL del repository GitHub non conforme ai vincoli di formato",
)[]

===== UC49.1.2: Repository GitHub non accessibile <UC49.1.2>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di inserimento di un repository privato di cui si è proprietario nel sistema CodeGuardian #link(<UC49>)[#underline[\[UC49\]]]
    - Il repository GitHub associato all'URL inserito non è accessibile
  ],
  post: [
    - La procedura di inserimento di un repository privato di cui si è proprietario non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il repository GitHub specificato non è accessibile per la procedura di inserimento
  ],
  trigger: "L'utente conferma l'inserimento dell'URL del repository GitHub non accessibile durante la procedura di inserimento di un proprio repository privato",
)[]

===== UC49.1.3: URL repository GitHub non inserito <UC49.1.3>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di inserimento di un repository privato di cui si è proprietario nel sistema CodeGuardian #link(<UC49>)[#underline[\[UC49\]]]
    - L'utente non ha inserito alcun URL del repository GitHub
  ],
  post: [
    - La procedura di inserimento di un repository privato di cui si è proprietario non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che deve essere inserito un URL del repository GitHub per procedere con l'inserimento del repository privato
  ],
  trigger: "L'utente termina senza inserire alcun URL durante la procedura di inserimento di un proprio repository privato",
)[]

===== UC49.1.4: Repository GitHub già presente nel sistema <UC49.1.4>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di inserimento di un repository privato di cui si è proprietario nel sistema CodeGuardian #link(<UC49>)[#underline[\[UC49\]]]
    - L'utente ha inserito un URL corrispondente a un repository GitHub già presente nel sistema
  ],
  post: [
    - La procedura di inserimento di un repository privato di cui si è proprietario non viene finalizzata e il Sistema rimane nello stato di inserimento dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che indica che il repository GitHub specificato dall'URL è già presente nel sistema
  ],
  trigger: "L'utente conferma l'inserimento dell'URL di un repository GitHub già presente nel sistema durante la procedura di inserimento di un proprio repository privato",
)[]

=== UC50: Rimozione di un proprio repository privato dalla lista dei propri repository privati <UC50>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente visualizza la lista dei propri repository privati inseriti #link(<UC48>)[#underline[\[UC48\]]]
    - L'utente ha inserito almeno un repository privato nella lista dei propri repository privati
    - L'utente ha selezionato un repository dalla lista
    - L'utente si trova nella sezione di eliminazione del repository
  ],
  post: [
    - L'utente visualizza un messaggio che indica che il repository è stato rimosso con successo
    - L'utente non visualizza più il repository rimosso nella lista
  ],
  scenari: [
    - L'utente seleziona l'opzione di rimozione del repository dalla lista
    - L'utente visualizza l'avviso di conferma della rimozione #link(<UC50.1>)[#underline[\[UC50.1\]]]
  ],
  inclusioni: [
    - #link(<UC50.1>)[#underline[\[UC50.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente sceglie un repository dalla lista dei propri repository privati e accede alla sezione di eliminazione",
)[]

==== UC50.1: Conferma della rimozione di un proprio repository privato dalla lista dei propri repository privati <UC50.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di rimozione di un proprio repository privato #link(<UC50>)[#underline[\[UC50\]]]
  ],
  post: [
    - L'utente ha confermato la rimozione del repository
  ],
  scenari: [
    - L'utente conferma la rimozione del repository dalla lista
  ],
  estensioni: [
    - #link(<UC50.1.1>)[#underline[\[UC50.1.1\]]]
  ],
  trigger: "L'utente seleziona l'opzione di rimozione del repository dalla lista dei propri repository privati",
)[]

===== UC50.1.1: Rifiuto della rimozione di un proprio repository privato dalla lista dei propri repository privati <UC50.1.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di rimozione di un proprio repository privato #link(<UC50>)[#underline[\[UC50\]]]
  ],
  post: [
    - L'utente ha rifiutato la rimozione del repository
    - L'utente viene rimandato alla lista dei propri repository privati
  ],
  scenari: [
    - L'utente rifiuta la rimozione del repository dalla lista
  ],
  trigger: "L'utente rifiuta la rimozione del repository dall'avviso di conferma della rimozione",
)[]

=== UC51: Visualizzazione della lista di utenti CodeGuardian che hanno accesso a un repository privato di cui si è proprietari <UC51>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito almeno un repository privato nella lista dei propri repository privati
    - L'utente ha selezionato un repository dalla lista dei propri repository privati #link(<UC48>)[#underline[\[UC48\]]]
  ],
  post: [
    - L'utente visualizza la lista degli utenti che hanno accesso a un repository privato di cui egli è proprietario
  ],
  scenari: [
    - L'utente visualizza la lista degli utenti che hanno permesso di fare analisi e visualizzare report di un repository privato di cui egli è proprietario
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC51.1>)[#underline[\[UC51.1\]]]
  ],
  trigger: "L'utente accede a un specifico repository privato dalla lista dei propri repository privati",
)[]

==== UC51.1: Nessun utente presente <UC51.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente ha inserito almeno un repository privato nella lista dei propri repository privati
    - L'utente ha selezionato un repository dalla lista dei propri repository privati #link(<UC48>)[#underline[\[UC48\]]]
    - Nessun altro utente CodeGuardian ha accesso a quel repository
  ],
  post: [
    - L'utente visualizza il messaggio di lista vuota 
  ],
  scenari: [
    - L'utente visualizza un messaggio che gli comunica che la lista degli utenti che hanno accesso al repository è vuota
  ],
  trigger: "L'utente accede a uno specifico repository privato dalla lista dei propri repository privati e nessun altro utente ha accesso a quel repository",
)[]

=== UC52: Aggiunta di un utente alla lista di utenti CodeGuardian che hanno accesso a un repository privato di cui si è proprietari <UC52>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta visualizzando la lista di utenti CodeGuardian che hanno accesso a un repository privato di cui egli è proprietario #link(<UC51>)[#underline[\[UC51\]]]
    - L'utente si trova nella sezione per aggiungere un nuovo utente
  ],
  post: [
    - L'utente riceve un messaggio di successo dell'operazione
    - L'utente visualizza l'utente inserito nella lista
  ],
  scenari: [
    - L'utente inserisce lo username o l'email di un utente CodeGuardian #link(<UC52.1>)[#underline[\[UC52.1\]]]
    - L'utente conferma l'inserimento
  ],
  inclusioni: [
    - #link(<UC52.1>)[#underline[\[UC52.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione di aggiunta di un utente alla lista coloro che hanno accesso a un suo repository privato",
)[]

==== UC52.1: Inserimento della credenziale per l'aggiunta di un utente alla lista di utenti che hanno accesso a un repository privato <UC52.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di aggiunta di un utente alla lista di utenti CodeGuardian che hanno accesso a un repository privato di cui egli è proprietario #link(<UC52>)[#underline[\[UC51\]]]
    - L'utente visualizza il campo di inserimento per lo username o l'email
  ],
  post: [
    - L'utente ha inserito uno username o un'email conforme ai vincoli di formato
    - Lo username o l'email inserita è associata a un account CodeGuardian esistente
  ],
  scenari: [
    - L'utente digita uno username o un'email nel campo dedicato.
  ],
  estensioni: [
    - #link(<UC52.1.1>)[#underline[\[UC52.1.1\]]] // Errore formato
    - #link(<UC52.1.2>)[#underline[\[UC52.1.2\]]] // Credenziale non esistente
    - #link(<UC52.1.3>)[#underline[\[UC52.1.3\]]] // Utente già inserito
    - #link(<UC52.1.4>)[#underline[\[UC52.1.4\]]] // Credenziale non inserita
  ],
  trigger: "L'utente interagisce con il campo di inserimento dell'aggiunta di un utente alla lista",
)[]

===== UC52.1.1: Visualizzazione errore credenziale non conforme <UC52.1.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta inserendo la credenziale richiesta per il recupero della password #link(<UC52.1>)[#underline[\[UC52.1\]]]
    - La credenziale digitata non rispetta i vincoli di formato richiesti
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'errore di formato
    - L'utente ha nuovamente accesso al campo per correggere la credenziale
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore in corrispondenza del campo della credenziale che specifica la non conformità del valore inserito
  ],
  trigger: "L'utente inserisce una credenziale non conforme ai vincoli di formato",
)[]

===== UC52.1.2: Visualizzazione errore credenziale non associata a nessun utente <UC52.1.2>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta inserendo la credenziale richiesta per il recupero della password #link(<UC52.1>)[#underline[\[UC52.1\]]]
    - La credenziale digitata non è associata ad alcun utente CodeGuardian censito
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante l'invalidità della credenziale
    - L'utente ha nuovamente accesso al campo per correggere la credenziale
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'invalidità della credenziale inserita
  ],
  trigger: "L'utente inserisce una credenziale non associata ad alcun utente CodeGuardian",
)[]

===== UC52.1.3: Visualizzazione errore utente già inserito <UC52.1.3>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta inserendo la credenziale richiesta per il recupero della password #link(<UC52.1>)[#underline[\[UC52.1\]]]
    - La credenziale digitata è associata a un utente CodeGuardian già presente nella lista
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante la presenza dell'utente nella lista
    - L'utente ha nuovamente accesso al campo per correggere la credenziale
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala la presenza dell'utente associato alla credenziale inserita nella lista
  ],
  trigger: "L'utente inserisce una credenziale associata a un utente già presente nella lista",
)[] 

===== UC52.1.4: Visualizzazione errore credenziale non inserita <UC52.1.4>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta inserendo la credenziale richiesta per il recupero della password #link(<UC52.1>)[#underline[\[UC52.1\]]]
    - L'utente non ha inserito alcuna credenziale
  ],
  post: [
    - L'utente visualizza un avviso testuale indicante la mancanza della credenziale
    - L'utente ha nuovamente accesso al campo per correggere la credenziale
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala il mancato inserimento della credenziale richiesta
  ],
  trigger: "L'utente tenta di procedere senza inserire alcuna credenziale",
)[] 

=== UC53: Rimozione di un utente alla lista di utenti CodeGuardian che hanno accesso a un repository privato di cui si è proprietari <UC53>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente è autenticato a CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha collegato il proprio account GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente sta visualizzando la lista di utenti CodeGuardian che hanno accesso a un repository privato di cui egli è proprietario #link(<UC51>)[#underline[\[UC51\]]]
    - L'utente ha inserito almeno un altro utente che ha accesso a un repository privato di cui egli è proprietario
    - L'utente ha selezionato un utente dalla lista
    - L'utente si trova nella sezione di rimozione di un utente 
  ],
  post: [
    - L'utente visualizza un messaggio che indica che l'utente selezionato è stato rimosso con successo
    - L'utente non visualizza più l'utente rimosso nella lista
  ],
  scenari: [
    - L'utente seleziona l'opzione di rimozione dell'utente dalla lista
    - L'utente visualizza l'avviso di conferma della rimozione #link(<UC53.1>)[#underline[\[UC53.1\]]]
  ],
  inclusioni: [
    - #link(<UC53.1>)[#underline[\[UC53.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente sceglie un utente dalla lista degli utenti che hanno accesso a un suo repository privato e accede alla sezione di rimozione",
)[]

==== UC53.1: Conferma della rimozione di un utente dalla lista di utenti CodeGuardian che hanno accesso a un repository privato di cui si è proprietari <UC53.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di rimozione di un utente dalla lista di utenti CodeGuardian che hanno accesso a un suo repository privato #link(<UC53>)[#underline[\[UC53\]]]
  ],
  post: [
    - L'utente ha confermato la rimozione dell'utente selezionato
  ],
  scenari: [
    - L'utente conferma la rimozione dell'utente CodeGuardian selezionato dalla lista
  ],
  estensioni: [ 
    - #link(<UC53.1.1>)[#underline[\[UC53.1.1\]]]
  ],
  trigger: "L'utente seleziona l'opzione di rimozione di un utente dalla lista degli utenti CodeGuardian che hanno accesso a un suo repository privato",
)[]

===== UC53.1.1: Rifiuto della rimozione di un utente dalla lista di utenti CodeGuardian che hanno accesso a un repository privato di cui si è proprietari <UC53.1.1>
#useCase(
  attore: "Utente autorizzato con GitHub",
  pre: [
    - L'utente sta eseguendo la procedura di rimozione di un utente dalla lista di utenti CodeGuardian che hanno accesso a un suo repository privato #link(<UC53>)[#underline[\[UC53\]]]
  ],
  post: [
    - L'utente ha rifiutato la rimozione dell'utente selezionato
    - L'utente viene rimandato alla lista di utenti CodeGuardian che hanno accesso a un suo repository privato
  ],
  scenari: [
    - L'utente rifiuta la rimozione dell'utente CodeGuardian dalla lista
  ],
  trigger: "L'utente rifiuta la rimozione dell'utente selezionato dall'avviso di conferma della rimozione",
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

  // --- REGISTRAZIONE (UC1) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente non registrato l'accesso alla sezione di creazione account.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve permettere la finalizzazione della registrazione solo a seguito della validazione positiva di tutti i campi obbligatori.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve persistere le credenziali dell'utente a seguito del completamento della procedura di registrazione.],
  [#link(<UC1>)[#underline[\[UC1\]]]],
  
  // --- CAMPI MANCANTI (UC1.0.1) ---
  [#FRObx],
  [Il Sistema deve rilevare il tentativo di invio del modulo di registrazione in presenza di campi obbligatori vuoti.],
  [#link(<UC1.0.1>)[#underline[\[UC1.0.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire la registrazione in caso di dati obbligatori mancanti.],
  [#link(<UC1.0.1>)[#underline[\[UC1.0.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente indicando specificamente quali dati obbligatori non sono stati inseriti.],
  [#link(<UC1.0.1>)[#underline[\[UC1.0.1\]]]],
  
  // --- USERNAME (UC1.1) ---
  [#FRObx],
  [Il Sistema deve consentire l'immissione di un nome utente.],
  [#link(<UC1.1>)[#underline[\[UC1.1\]]]],

  [#FRObx],
  [Il Sistema deve validare che lo username abbia una lunghezza compresa tra 4 e 20 caratteri.],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRObx],
  [Il Sistema deve validare che lo username contenga esclusivamente caratteri alfanumerici.],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora lo username non rispetti i vincoli di formato definiti.],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare l'univocità dello username rispetto agli account esistenti nel database.],
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora lo username inserito risulti già associato a un account esistente.],
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  // --- EMAIL (UC1.2) ---
  [#FRObx],
  [Il Sistema deve consentire l'immissione di un indirizzo email.],
  [#link(<UC1.2>)[#underline[\[UC1.2\]]]],

  [#FRObx],
  [Il Sistema deve validare la conformità sintattica dell'indirizzo email secondo gli standard RFC.],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora l'email fornita non sia sintatticamente valida.],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare l'univocità dell'indirizzo email all'interno della piattaforma.],
  [#link(<UC1.2.2>)[#underline[\[UC1.2.2\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora l'email inserita risulti già registrata.],
  [#link(<UC1.2.2>)[#underline[\[UC1.2.2\]]]],

  // --- PASSWORD (UC1.3) ---
  [#FRObx],
  [Il Sistema deve consentire l'immissione di una chiave di accesso.],
  [#link(<UC1.3>)[#underline[\[UC1.3\]]]],

  [#FRObx],
  [Il Sistema deve imporre criteri di complessità per la password: minimo 8 caratteri, inclusione di lettere maiuscole, minuscole, numeri e caratteri speciali.],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora la password inserita non soddisfi i requisiti minimi di sicurezza.],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  // --- AUTENTICAZIONE (UC2) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente non autenticato l'accesso alla sezione di autenticazione (Login).],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve garantire l'accesso alle funzionalità riservate esclusivamente a seguito di una corretta validazione delle credenziali.],
  [#link(<UC2>)[#underline[\[UC2\]]]],
  
  // --- GESTIONE CAMPI MANCANTI (UC2.0.1) ---
  [#FRObx],
  [Il Sistema deve rilevare il tentativo di autenticazione in presenza di campi obbligatori non compilati.],
  [#link(<UC2.0.1>)[#underline[\[UC2.0.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'accesso alla piattaforma qualora le credenziali nel modulo di autenticazione siano incomplete.],
  [#link(<UC2.0.1>)[#underline[\[UC2.0.1\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un avviso indicante il mancato inserimento di uno o più dati obbligatori.],
  [#link(<UC2.0.1>)[#underline[\[UC2.0.1\]]]],
  
  [#FRObx],
  [Il Sistema deve consentire l'immissione dell'identificativo (username) per la procedura di autenticazione.],
  [#link(<UC2.1>)[#underline[\[UC2.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora l'identificativo inserito non rispetti il formato previsto.],
  [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare la presenza dell'identificativo tra gli account registrati.],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un messaggio di errore a seguito dell'inserimento di un identificativo non presente a sistema.],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

  [#FRObx],
  [Il Sistema deve consentire l'immissione della chiave di accesso (password) per la procedura di autenticazione.],
  [#link(<UC2.2>)[#underline[\[UC2.2\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora la password inserita non rispetti il formato previsto.],
  [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare la corrispondenza tra la password fornita e quella associata all'identificativo inserito.],
  [#link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un messaggio di errore qualora la password inserita risulti errata.],
  [#link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

// --- INTEGRAZIONE GITHUB (UC3) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autenticato l'accesso alla sezione dedicata al collegamento del profilo GitHub.],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve gestire il flusso di autorizzazione tramite reindirizzamento alla piattaforma GitHub e il successivo ritorno all'applicazione.],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve autorizzare l'utente all'interazione con i propri repository a seguito del completamento con successo della procedura.],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un avviso informativo prima di procedere al reindirizzamento verso il dominio esterno.],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRObx],
  [Il Sistema deve consentire all'utente di confermare o annullare la volontà di procedere con il collegamento esterno.],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]], #link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora la procedura di sincronizzazione fallisca per anomalie tecniche nella ricezione dei dati.],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire il collegamento qualora il profilo GitHub risulti già associato a un altro account CodeGuardian.],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un messaggio di errore specifico qualora l'utente neghi il consenso alla condivisione dei dati su GitHub.],
  [#link(<UC3.2.3>)[#underline[\[UC3.2.3\]]]],

// --- RICHIESTA ANALISI REPOSITORY (UC4) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autenticato l'accesso alla sezione di configurazione dell'analisi.],
  [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx],
  [Il Sistema deve predisporre un modulo per l'immissione dell'URL del repository, la selezione delle aree di interesse e l'invio della richiesta.],
  [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx],
  [Il Sistema deve permettere l'inoltro della richiesta di analisi solo a seguito della validazione positiva di tutti i parametri obbligatori.],
  [#link(<UC4>)[#underline[\[UC4\]]]],

  // --- VALIDAZIONE URL (UC4.1) ---
  [#FRObx],
  [Il Sistema deve consentire l'immissione dell'URL del repository GitHub da analizzare.],
  [#link(<UC4.1>)[#underline[\[UC4.1\]]]],

  [#FRObx],
  [Il Sistema deve validare che l'URL inserito utilizzi il protocollo 'https://' e appartenga al dominio 'github.com'.],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora l'URL inserito non rispetti i vincoli di formato previsti.],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare l'accessibilità pubblica o tramite autorizzazione del repository indicato dall'URL.],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora il repository risulti inesistente o non accessibile.],
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRObx],
  [Il Sistema deve inibire la procedura di analisi e notificare l'utente qualora il campo URL non venga compilato.],
  [#link(<UC4.1.3>)[#underline[\[UC4.1.3\]]]],

  // --- SELEZIONE AREE (UC4.2) ---
  [#FRObx],
  [Il Sistema deve consentire la selezione di una o più aree di interesse tra test, sicurezza e documentazione.],
  [#link(<UC4.2>)[#underline[\[UC4.2\]]]],

  [#FRObx],
  [Il Sistema deve inibire la procedura di analisi e notificare l'utente qualora non venga selezionata almeno un'area di interesse.],
  [#link(<UC4.2.1>)[#underline[\[UC4.2.1\]]]],

  // --- CONTROLLI DI STATO (UC4.3 - UC4.4) ---
  [#FRObx],
  [Il Sistema deve verificare se l'ultimo report generato per il repository sia coerente con l'ultimo commit effettuato su GitHub.],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'avvio di una nuova analisi e informare l'utente se il report esistente risulta già aggiornato.],
  [#link(<UC4.3>)[#underline[\[UC4.3\]]]],

  [#FRObx],
  [Il Sistema deve verificare la presenza di processi di analisi già attivi per il repository specificato.],
  [#link(<UC4.4>)[#underline[\[UC4.4\]]]],

  [#FRObx],
  [Il Sistema deve impedire l'invio di una nuova richiesta e notificare l'utente se un'analisi è già in fase di elaborazione.],
  [#link(<UC4.4>)[#underline[\[UC4.4\]]]],

  // UC5
  [#FRObx],
  [L'Utente deve poter accedere alla sezione di visualizzazione dei repository analizzati],
  [#link(<UC5>)[#underline[\[UC5\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare l'elenco dei repository analizzati],
  [#link(<UC5>)[#underline[\[UC5\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare le informazioni identificative per ogni elemento nella lista],
  [#link(<UC5.1>)[#underline[\[UC5.1\]]]],
  

  [#FRObx],
  [L'Utente deve poter visuallizzare un avviso se non ci sono repository analizzati da mostrare],
  [#link(<UC5.2>)[#underline[\[UC5.2\]]]],

  // UC6
  [#FRObx],
  [L'Utente deve poter selezionare un repository dalla lista dei repository analizzati per visualizzare i report di analisi di tale repository],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx], 
  [L'Utente deve poter selezionare le sezioni specifiche da visualizzare], 
  [#link(<UC6.1>)[#underline[\[UC6.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcuna sezione da visualizzare],
  [#link(<UC6.1.1>)[#underline[\[UC6.1.1\]]]],
  
  [#FRObx],
  [L'Utente deve poter visualizzare l'area metadati di un report di analisi],
  [#link(<UC6.2>)[#underline[\[UC6.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la data del report di analisi],
  [#link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]],

  [#FRDex],
  [L'Utente deve poter visualizzare il commit analizzato nel report],
  [#link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]],

  [#FRDex],
  [L'Utente deve poter visualizzare il richiedente del report di analisi],
  [#link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare le sezioni selezionate dell'analisi],
  [#link(<UC6.3>)[#underline[\[UC6.3\]]]],

  [#FRObx],
  [L'utente deve poter visualizzare la lista delle remediation proposte per una generica sezione del report],
  [#link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]],

  [#FRObx],
  [L'utente deve poter visualizzare un messaggio di assenza di remediation proposte per la sezione],
  [#link(<UC6.3.1.1>)[#underline[\[UC6.3.1.1\]]]],

  // UC7
  [#FRObx],
  [L'Utente deve poter selezionare un intervallo temporale per il confronto],
  [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la selezione dell'intervallo temporale],
  [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx],
  [L'Utente deve poter modificare l'intervallo temporale dopo averlo selezionato],
  [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se tenta di confermare senza aver selezionato un intervallo temporale],
  [#link(<UC7.1>)[#underline[\[UC7.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono report nel periodo selezionato],
  [#link(<UC7.2>)[#underline[\[UC7.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se l'intervallo temporale è incoerente],
  [#link(<UC7.3>)[#underline[\[UC7.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se l'intervallo temporale è troppo ampio],
  [#link(<UC7.4>)[#underline[\[UC7.4\]]]],

  // UC8
  [#FRDex], 
  [L'utente deve poter visualizzare un grafico comparativo per monitorare l'andamento delle metriche tra i diversi report selezionati.], 
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRDex],
  [Il sistema deve permettere l'interazione con il grafico per visualizzare i dettagli puntuali di ogni analisi.],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRDex], 
  [L'utente deve poter visualizzare una tabella comparativa che riassuma i dati dei report selezionati per un confronto testuale.], 
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRDex],
  [L'utente, all'interno della tabella, deve poter visualizzare indicatori di variazione rispetto al report precedente],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  //UC9
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione del report relativa all'analisi del codice],
  [#link(<UC9>)[#underline[\[UC9\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di analisi statica del codice],
  [#link(<UC9.1>)[#underline[\[UC9.1\]]]],
  
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di copertura dei test di unità],
  [#link(<UC9.2>)[#underline[\[UC9.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di lista di remediation per la sezione del codice],
  [#link(<UC9.3>)[#underline[\[UC9.3\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il messaggio di lista vuota nel caso non siano state individuate remediation per la sezione del codice],
  [#link(<UC9.3.1>)[#underline[\[UC9.3.1\]]]],

  //UC10
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione del report relativa all'analisi della sicurezza],
  [#link(<UC10>)[#underline[\[UC10\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di analisi delle librerie e dipendenze del codice],
  [#link(<UC10.1>)[#underline[\[UC10.1\]]]],
  
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di conformità del repository con gli standard OWASP],
  [#link(<UC10.2>)[#underline[\[UC10.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di lista di remediation per la sezione della sicurezza],
  [#link(<UC10.3>)[#underline[\[UC10.3\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il messaggio di lista vuota nel caso non siano state individuate remediation per la sezione della sicurezza],
  [#link(<UC10.3.1>)[#underline[\[UC10.3.1\]]]],

  //UC11
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione del report relativa all'analisi della documentazione],
  [#link(<UC11>)[#underline[\[UC11\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di errori di sintassi],
  [#link(<UC11.1>)[#underline[\[UC11.1\]]]],
  
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di completezza della documentazione nei confronti del codice del repository GitHub],
  [#link(<UC11.2>)[#underline[\[UC11.2\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di lista di remediation per la sezione della documentazione],
  [#link(<UC11.3>)[#underline[\[UC11.3\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il messaggio di lista vuota nel caso non siano state individuate remediation per la sezione della documentazione],
  [#link(<UC11.3.1>)[#underline[\[UC11.3.1\]]]],
  
  //UC12
  [#FROpx],
  [Il sistema Front-end deve essere in grado di rappresentare correttamente la lista di tutti i repository analizzati],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FROpx],
  [Il sistema Back-end deve essere in grado di passare solo e tutti i repository analizzati con relative metriche di comparazione al Front-end],
  [#link(<UC12.1>)[#underline[\[UC12.1\]]]],

  [#FROpx],
  [L'ordine in cui appaiono i repository deve essere coerente con il punteggio assegnato],
  [#link(<UC12.1>)[#underline[\[UC12.1\]]]],

  [#FROpx],
  [Il sistema Back-end deve riuscire a riconoscere correttamente il caso in cui un utente non abbia mai analizzato repository e comunicarlo al Front-end],
  [#link(<UC12.1>)[#underline[\[UC12.1\]]]],

  [#FROpx],
  [Il sistema Front-end deve essere in grado di comunicare che la lista è vuota nel caso in cui un utente non abbia mai analizzato repository],
  [#link(<UC12.1>)[#underline[\[UC12.1\]]]],

  //UC13
  [#FRObx], 
  [L'Utente deve poter disconnettere il proprio account GitHub], 
  [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx],
  [L'Utente deve selezionare il tasto "Disconnetti" per avviare la procedura],
  [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la disconnessione del proprio account GitHub],
  [#link(<UC13>)[#underline[\[UC13\]]]],

  // UC14
  [#FRDex],
  [L'Utente deve poter esportare il report di analisi], 
  [#link(<UC14>)[#underline[\[UC14\]]]],

  [#FRDex],
  [L'Utente deve poter selezionare il formato di esportazione desiderato],
  [#link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#FRDex],
  [L'Utente deve ricevere un messaggio di errore se non seleziona alcun formato],
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],

  [#FRDex],
  [L'Utente deve poter confermare l'esportazione del report],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  // UC15
  [#FRObx], 
  [L'Utente deve poter accedere alla sezione di modifica password], 
  [#link(<UC15>)[#underline[\[UC15\]]]],

  [#FRObx],
  [L'utente deve inserire la password corrente all'interno dell'apposito campo del form di modifica],
  [#link(<UC15.1>)[#underline[\[UC15.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce la password corrente],
  [#link(<UC15.1.1>)[#underline[\[UC15.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se la password corrente è errata],
  [#link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]],

  [#FRObx],
  [L'Utente deve inserire la nuova password nell'apposito campo del form di modifica],
  [#link(<UC15.2>)[#underline[\[UC15.2\]]]],

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
  [#link(<UC15.3>)[#underline[\[UC15.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere conferma dell'avvenuta modifica della password],
  [#link(<UC15.4>)[#underline[\[UC15.4\]]]],

  //UC16
  [#FRObx], 
  [L'Utente deve poter visualizzare i dettagli di una singola remediation], 
  [#link(<UC16>)[#underline[\[UC16\]]]],

  //UC17
  [#FRObx],
  [Il sistema deve essere in grado di prendere in carico la richiesta di verifica dell'accessibilità della repository],
  [#link(<UC17>)[#underline[\[UC17\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di stabilire la connessione con GitHub],
  [#link(<UC17>)[#underline[\[UC17\]]])],

  [#FRObx],
  [Il sistema deve poter avviare la procedura di verifica],
  [#link(<UC17.1>)[#underline[\[UC17.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di rilevare l'eventuale errore di comunicazione con GitHub],
  [#link(<UC17.1.1>)[#underline[\[UC17.1.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di cercare il repository],
  [#link(<UC17.2>)[#underline[\[UC17.2\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di trovare il repository],
  [#link(<UC17.2>)[#underline[\[UC17.2\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di trovare il repository tramite token in caso esso sia privato],
  [#link(<UC17.2.1>)[#underline[\[UC17.2.1\]]]],

  [#FRObx],
  [Il sistema deve rilevare e comunicare un errore in caso non ci sia stato modo di accedere al repository],
  [#link(<UC17.2.1.1>)[#underline[\[UC17.2.1.1\]]]],

  //UC18
  /*
  [#FRObx],
  [L'Orchestratore deve leggere le richieste dell'utente per configurare l'analisi],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  [#FRObx],
  [L'Orchestratore deve eseguire l'analisi completa se richiesta dall'utente],
  [#link(<UC18.1>)[#underline[\[UC18.1\]]]],

  [#FRObx],
  [L'Orchestratore deve processare le richieste specifiche dell'utente sulle aree da analizzare],
  [#link(<UC18.2>)[#underline[\[UC18.2\]]]],

  [#FRObx],
  [L'Orchestratore deve eseguire l'analisi completa se il repository non è mai stato analizzato],
  [#link(<UC18.2.1>)[#underline[\[UC18.2.1\]]]],
  */

  //UC19
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di gestione di remediation],
  [#link(<UC19>)[#underline[\[UC19\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation proposta],
  [#link(<UC19>)[#underline[\[UC19\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation],
  [#link(<UC19>)[#underline[\[UC19\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare la remediation proposta],
  [#link(<UC19.1>)[#underline[\[UC19.1\]]]],

  [#FRDex],
  [L'Utente deve poter annullare l'operazione di accettazione di remediation],
  [#link(<UC19.2>)[#underline[\[UC19.2\]]]],

  //UC20
  [#FROpx], 
  [Segreti e token esposti devono essere rilevati], 
  [#link(<UC20>)[#underline[\[UC20\]]]],

  [#FROpx],
  [L'Utente deve poter rifiutare le remediation proposte per i segreti rilevati],
  [#link(<UC20.1>)[#underline[\[UC20.1\]]]],

  [#FROpx],
  [La revoca automatica di segreti, se integrata con provider, deve poter essere eseguita],
  [#link(<UC20.2>)[#underline[\[UC20.2\]]]],

  [#FROpx],
  [L'Utente deve poter visualizzare i risultati del rilevamento segreti],
  [#link(<UC20.3>)[#underline[\[UC20.3\]]]],
  
  //UC21
  [#FROpx],
  [L'utente deve poter accedere alla sezione di compilance e geovernance del pannello report],
  [#link(<UC21>)[#underline[\[UC21\]]]],

  [#FROpx],
  [L'utente deve poter selezionare la verifica alla conformità delle licenze],
  [#link(<UC21>)[#underline[\[UC21\]]]],  

  [#FROpx],
  [L'utente deve poter visualizzare il report di compatibilità delle licenze],
  [#link(<UC21>)[#underline[\[UC21\]]]],

  //UC22
  //UC23
  [#FROpx],
  [L'utente deve poter accedere al pannello di monitoraggio di qualità del codice],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  [#FROpx],
  [L'utente deve poter selezionare il comando di monitoraggio di qualità],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  [#FROpx],
  [L'utente deve poter visuallizare la _dashboard_ con metriche e _trend_],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  [#FROpx],
  [L'utente deve poter visualizzare le regressioni evidenziate],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  //UC24
  [#FRObx], 
  [Deve essere suggerito refactoring del codice], 
  [#link(<UC24>)[#underline[\[UC24\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare i suggerimenti di refactoring],
  [#link(<UC24>)[#underline[\[UC24\]]]], 

  [#FROpx],
  [I refactor devono poter essere applicati automaticamente sotto supervisione],
  [#link(<UC24.2>)[#underline[\[UC24.2\]]]],

  //UC28
  [#FROpx], 
  [Devono poter essere generati report programmabili e inviati alert], 
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FROpx],
  [L'Utente deve poter configurare filtri e template per i report],
  [#link(<UC28.1>)[#underline[\[UC28.1\]]]],

  [#FROpx],
  [Devono poter essere eseguite azioni automatiche su alert critici],
  [#link(<UC28.2>)[#underline[\[UC28.2\]]]],

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
  [#link(<UC38.1>)[#underline[\[UC38.1\]]]],

  //UC39
  [#FRObx],
  [L'Orchestratore deve poter elaborare i dati dei singoli agenti per calcolare metriche statistiche globali],
  [#link(<UC39>)[#underline[\[UC39\]]]],

  [#FRObx],
  [Il sistema Back-end deve poter memorizzare le metriche aggregate per consentire la visualizzazione di grafici e tabelle],
  [#link(<UC39>)[#underline[\[UC39\]]]],

  [#FRObx],
  [Il sistema deve poter segnalare al Front-end il mancato aggiornamento delle metriche in caso di errore del Back-end],
  [#link(<UC39.1>)[#underline[\[UC39.1\]]]],

  //UC40
  [#FRObx],
  [Il sistema Front-end deve poter scambiare il codice OAuth GitHub con un token di accesso persistente],
  [#link(<UC40>)[#underline[\[UC40\]]]],

  [#FRObx],
  [Il sistema Back-end deve associare il token di accesso GitHub al profilo dell'utente nel database],
  [#link(<UC40>)[#underline[\[UC40\]]]],

  [#FRObx],
  [L'Utente deve essere notificato se il sistema GitHub non da l'autorizzazione durante lo scambio del codice OAuth],
  [#link(<UC40>)[#underline[\[UC40\]]]],

    //UC40ex
/*[#FRObx],
  [Il sistema Front-end deve poter trasmettere in modo sicuro le credenziali al sistema Back-end],
  [#link(<UC40>)[#underline[\[UC40\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il trasferimento delle credenziali non avviene],
  [#link(<UC40.1>)[#underline[\[UC40.1\]]]], */

  //UC41
  [#FRObx],
  [L'Utente deve poter visualizzare i dettagli di una singola remediation nella sezione di analisi del codice],
  [#link(<UC41>)[#underline[\[UC41\]]]],

  //UC42
  [#FRObx],
  [L'Utente deve poter visualizzare i dettagli di una singola remediation nella sezione di analisi della sicurezza],
  [#link(<UC42>)[#underline[\[UC42\]]]],
  
  //UC43
  [#FRObx],
  [L'Utente deve poter visualizzare i dettagli di una singola remediation nella sezione di analisi della documentazione],
  [#link(<UC43>)[#underline[\[UC43\]]]],

  //UC44
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di gestione di remediation di analisi del codice],
  [#link(<UC44>)[#underline[\[UC44\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation di analisi del codice proposta],
  [#link(<UC44>)[#underline[\[UC44\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation di analisi del codice],
  [#link(<UC44>)[#underline[\[UC44\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare la remediation di analisi del codice proposta],
  [#link(<UC44.1>)[#underline[\[UC44.1\]]]],

  [#FRDex],
  [L'Utente deve poter annullare l'operazione di accettazione di remediation di analisi del codice],
  [#link(<UC44.2>)[#underline[\[UC44.2\]]]],

  //UC45
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di gestione di remediation di analisi della sicurezza],
  [#link(<UC45>)[#underline[\[UC45\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation di analisi della sicurezza proposta],
  [#link(<UC45>)[#underline[\[UC45\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation di analisi della sicurezza],
  [#link(<UC45>)[#underline[\[UC45\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare la remediation di analisi della sicurezza proposta],
  [#link(<UC45.1>)[#underline[\[UC45.1\]]]],

  [#FRDex],
  [L'Utente deve poter annullare l'operazione di accettazione di remediation di analisi della sicurezza],
  [#link(<UC45.2>)[#underline[\[UC45.2\]]]],

  //UC46
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di gestione di remediation di analisi della documentazione],
  [#link(<UC46>)[#underline[\[UC46\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation di analisi della documentazione proposta],
  [#link(<UC46>)[#underline[\[UC46\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation di analisi della documentazione],
  [#link(<UC46>)[#underline[\[UC46\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare la remediation di analisi della documentazione proposta],
  [#link(<UC46.1>)[#underline[\[UC46.1\]]]],

  [#FRDex],
  [L'Utente deve poter annullare l'operazione di accettazione di remediation di analisi della documentazione],
  [#link(<UC46.2>)[#underline[\[UC46.2\]]]],

  //UC47
  [#FRObx], 
  [L'Utente deve poter accedere alla sezione di richiesta analisi], 
  [#link(<UC47>)[#underline[\[UC47\]]]],
  
  [#FRObx],
  [L'utente deve poter visualizzare correttamente il campo di inserimento dell'URL],
  [#link(<UC47>)[#underline[\[UC47\]]]],
  
  [#FRObx],
  [L'utente deve poter visualizzare correttamente il campo di selezione delle sezioni di interesse],
  [#link(<UC47>)[#underline[\[UC47\]]]],

  [#FRObx],
  [L'utente deve poter visualizzare correttamente il pulsante di conferma],
  [#link(<UC47>)[#underline[\[UC47\]]]],

  [#FRObx],
  [L'utente deve poter inviare la richiesta di analisi tramite il pulsante di conferma],
  [#link(<UC47>)[#underline[\[UC47\]]]],

  [#FRObx],
  [L'Utente deve poter inserire l'URL del repository GitHub nel campo dedicato],
  [#link(<UC47.1>)[#underline[\[UC47.1\]]]],

  [#FRObx], 
  [L'URL deve iniziare con il protocollo 'https://'], 
  [#link(<UC47.1.1>)[#underline[\[UC47.1.1\]]]],

  [#FRObx], 
  [Il dominio dell'URL deve essere 'github.com'], 
  [#link(<UC47.1.1>)[#underline[\[UC47.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se l'URL non è conforme ai vincoli di formato],
  [#link(<UC47.1.1>)[#underline[\[UC47.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il repository non è accessibile o è inesistente],
  [#link(<UC47.1.2>)[#underline[\[UC47.1.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce alcun URL],
  [#link(<UC47.1.3>)[#underline[\[UC47.1.3\]]]],

  [#FRObx],
  [L'Utente deve poter selezionare le sezioni di interesse per l'analisi],
  [#link(<UC47.2>)[#underline[\[UC47.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se nessuna area di interesse è selezionata],
  [#link(<UC47.2.1>)[#underline[\[UC47.2.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se l'ultimo report è già up-to-date],
  [#link(<UC47.3>)[#underline[\[UC47.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se un'analisi è già in elaborazione],
  [#link(<UC47.4>)[#underline[\[UC47.4\]]]],

  // UC48 
  [#FRObx],
  [L'Utente deve poter accedere alla sezione di visualizzazione dei propri repository privati],
  [#link(<UC48>)[#underline[\[UC48\]]]],

  [#FRObx],
  [Il sistema deve mostrare correttamente tutti i repository privati che l'utente ha inserito],
  [#link(<UC48>)[#underline[\[UC48\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare nome e URL dei repository],
  [#link(<UC48.1>)[#underline[\[UC48.1\]]]],
  
  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono repository inseriti da mostrare],
  [#link(<UC48.2>)[#underline[\[UC48.2\]]]],

  [#FRObx],
  [Il sistema deve riconoscere il caso in cui non ci siano repository inseriti da mostrare],
  [#link(<UC48.2>)[#underline[\[UC48.2\]]]],

  // UC49
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di inserimento di repository privati],
  [#link(<UC49>)[#underline[\[UC49\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il campo di inserimento dell'URL],
  [#link(<UC49>)[#underline[\[UC49\]]]],
  
  [#FRObx],
  [L'Utente deve poter confermare l'inserimento],
  [#link(<UC49>)[#underline[\[UC49\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con il campo di inserimento dell'URL],
  [#link(<UC49.1>)[#underline[\[UC49.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un URL non conforme ai vincoli di formato],
  [#link(<UC49.1.1>)[#underline[\[UC49.1.1\]]]],

  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca un URL non conforme],
  [#link(<UC49.1.1>)[#underline[\[UC49.1.1\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un URL associato a un repository non accessibile],
  [#link(<UC49.1.2>)[#underline[\[UC49.1.2\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca un URL associato a un repository non accessibile],
  [#link(<UC49.1.2>)[#underline[\[UC49.1.2\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere la mancanza dell'inserimento dell'URL],
  [#link(<UC49.1.3>)[#underline[\[UC49.1.3\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso non inserisca un URL],
  [#link(<UC49.1.3>)[#underline[\[UC49.1.3\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un URL associato a un repository già presente nella lista],
  [#link(<UC49.1.4>)[#underline[\[UC49.1.4\]]]],

  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca un URL associato a un repository già presente nella lista],
  [#link(<UC49.1.4>)[#underline[\[UC49.1.4\]]]],
  
  // UC50
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di rimozione di un repository privato dalla lista],
  [#link(<UC50>)[#underline[\[UC50\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con l'opzione di rimozione di un repository privato dalla lista],
  [#link(<UC50>)[#underline[\[UC50\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il messaggio di successo di rimozione di un repository privato dalla lista],
  [#link(<UC50>)[#underline[\[UC50\]]]],

  [#FRObx],
  [Il repository deve essere eliminato correttamente dalla lista, in modo che l'utente non lo visualizzi più],
  [#link(<UC50>)[#underline[\[UC50\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la rimozione di un repository],
  [#link(<UC50.1>)[#underline[\[UC50.1\]]]],

  [#FRObx],
  [L'Utente deve poter rifiutare la rimozione di un repository],
  [#link(<UC50.1.1>)[#underline[\[UC50.1.1\]]]],
  
  // UC51
  [#FRObx],
  [L'Utente deve poter accedere alla sezione di visualizzazione degli utenti CodeGuardian inseriti per repository privato],
  [#link(<UC51>)[#underline[\[UC51\]]]],

  [#FRObx],
  [Il sistema deve mostrare correttamente tutti gli utenti CodeGuardian che l'utente ha inserito],
  [#link(<UC51>)[#underline[\[UC51\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare lo username di ogni utente inserito],
  [#link(<UC51>)[#underline[\[UC51\]]]],
  
  [#FRDex],
  [L'Utente deve poter visualizzare l'email di ogni utente inserito],
  [#link(<UC51>)[#underline[\[UC51\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono utenti CodeGuardian inseriti da mostrare],
  [#link(<UC51.1>)[#underline[\[UC51.1\]]]],

  [#FRObx],
  [Il sistema deve riconoscere il caso in cui non ci siano utenti CodeGuardian inseriti da mostrare],
  [#link(<UC51.1>)[#underline[\[UC51.1\]]]],
  
  // UC52
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di inserimento di utenti CodeGuardian alla lista degli utenti che hanno accesso a un suo repository privato],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il campo di inserimento della credenziale],
  [#link(<UC52>)[#underline[\[UC52\]]]],
  
  [#FRObx],
  [L'Utente deve poter confermare l'inserimento dell'utente CodeGuardian],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [L'utente CodeGuardian inserito deve ottenere i permessi per visualizzare i report riguardanti il repository nel quale è stato inserito],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [L'utente CodeGuardian inserito deve ottenere i permessi per richiedere analisi riguardanti il repository nel quale è stato inserito],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con il campo di inserimento della credenziale],
  [#link(<UC52.1>)[#underline[\[UC52.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere uno username non conforme ai vincoli di formato],
  [#link(<UC52.1.1>)[#underline[\[UC52.1.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un'email non conforme ai vincoli di formato],
  [#link(<UC52.1.1>)[#underline[\[UC52.1.1\]]]],

  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca una credenziale non conforme],
  [#link(<UC52.1.1>)[#underline[\[UC52.1.1\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere una credenziale non esistente],
  [#link(<UC52.1.2>)[#underline[\[UC52.1.2\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca una credenziale non esistente],
  [#link(<UC52.1.2>)[#underline[\[UC52.1.2\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere una credenziale riferita a un utente già inserito],
  [#link(<UC52.1.3>)[#underline[\[UC52.1.3\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca una credenziale associata a un'utente già inserito],
  [#link(<UC52.1.3>)[#underline[\[UC52.1.3\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere la mancanza dell'inserimento della credenziale],
  [#link(<UC52.1.4>)[#underline[\[UC52.1.4\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso non inserisca la credenziale],
  [#link(<UC52.1.4>)[#underline[\[UC52.1.4\]]]],
  
  // UC53
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di rimozione di un utente CodeGuardian dalla lista],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con l'opzione di rimozione di un utente CodeGuardian dalla lista],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il messaggio di successo di rimozione di un utente CodeGuardian dalla lista],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [L'utente CodeGuardian deve essere eliminato correttamente dalla lista, in modo che l'utente non lo visualizzi più],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [L'utente CodeGuardian eliminato deve essere revocato di tutti i permessi riguardanti il repository dal quale è stato rimosso],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la rimozione di un utente CodeGuardian],
  [#link(<UC53.1>)[#underline[\[UC53.1\]]]],

  [#FRObx],
  [L'Utente deve poter rifiutare la rimozione di un utente CodeGuardian],
  [#link(<UC53.1.1>)[#underline[\[UC53.1.1\]]]],
  
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

= Tracciamento

== Fonte - Requisiti
#table(
  columns: (1.5fr, 2.5fr),
    inset: 10pt,
    align: (col, row) => (if col == 0 { center } else { center }),
    fill: (col, row) => if row == 0 { luma(240) } else { white },
    stroke: 0.5pt + luma(200),
    table.header([*Fonte*], [*Requisiti*]),

  [Capitolato],
  [],

  [Incontro con il proponente],
  [],

  [Decisione interna],
  [],

  [UC1],
  [],

  [UC2],
  [],

  [UC3],
  [],

  [UC4],
  [],

  [UC5],
  [],

  [UC6],
  [],

  [UC7],
  [],

  [UC8],
  [],

  [UC9],
  [],

  [UC10],
  [],

  [UC11],
  [],

  [UC12],
  [],

  [UC13],
  [],

  [UC14],
  [],

  [UC15],
  [],

  [UC16],
  [],

  [UC17],
  [],

  [UC18],
  [],

  [UC19],
  [],

  [UC20],
  [],

  [UC21],
  [],

  [UC22],
  [],

  [UC23],
  [],

  [UC24],
  [],

  [UC25],
  [],

  [UC26],
  [],

  [UC27],
  [],

  [UC28],
  [],

  [UC29],
  [],

  [UC30],
  [],

  [UC31],
  [],

  [UC32],
  [],

  [UC33],
  [],

  [UC34],
  [],

  [UC35],
  [],

  [UC36],
  [],

  [UC37],
  [],

  [UC38],
  [],

  [UC39],
  [],
  
  [UC40],
  [],

)