
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
    "2026/02/18",
    "0.47.0",
    "Refactoring generale di tutti casi d'uso con riscrittura di molti di essi",
    members.kevin,
  ),
  (
    "2026/02/16",
    "0.46.0",
    "Inserimento UC 47-53 e requisiti",
    members.antonio,
  ),
  (
    "2026/02/15",
    "0.45.1",
    "Fix UC20-30, eliminazione UC23",
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
    "Aggiunta dei requisiti funzionali UC36-UC29",
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
    "Inserimento diagrammi per UC36-41",
    members.andrea,
  ),
  (
    "2026/01/24",
    "0.36.0",
    "Modifica dei casi d'uso UC36, UC28 e UC28.1 e aggiunta di UC36.1, UC23, UC23.1, UC29 e UC29.1",
    members.andrea,
  ),
  (
    "2026/01/21",
    "0.35.0",
    "Inserimento diagrammi aggiornati per UC1-5 e UC26-37",
    members.antonio,
  ),
  (
    "2026/01/21",
    "0.34.0",
    "Aggiunta di sottocasi di UC21 e 30 e altri fix",
    members.berengan,
  ),
  (
    "2026/01/19",
    "0.33.1",
    "Aggiunti requisiti funzionali UC12 e UC13, UC16-UC20 e UC20-UC20. Modifica requisiti UC5-UC15",
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
    "Modifica UC18, 20 e da 24 a 29",
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
    "Modifica UC22. Aggiunta UC23, UC24",
    members.berengan,
  ),
  (
    "2026/01/16",
    "0.29.0",
    "Aggiunta UC36, UC28, UC28.1, UC29",
    members.andrea,
  ),
  (
    "2026/01/16",
    "0.28.0",
    "Aggiunta UC26, UC27, UC36 e UC37",
    members.antonio,
  ),
  (
    "2026/01/16",
    "0.27.0",
    "Aggiunta UC21 e UC22",
    members.berengan,
  ),
  (
    "2026/01/15",
    "0.26.0",
    "Aggiunta UC18-UC20 con relativi sotto casi d'uso",
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

    [*Utente non Registrato*],
    [Soggetto sprovvisto di un'identità digitale all'interno della piattaforma. Tale attore è autorizzato esclusivamente alla fruizione dei contenuti pubblici e all'esecuzione della procedura di creazione di un nuovo profilo utente.],

    [*Utente non Autenticato*],
    [Utente generico che accede alle funzionalità pubbliche della piattaforma (es. Home Page, Login, Registrazione) senza possedere o aver attivato una sessione valida.],

    [*Utente Autorizzato*],
    [Utente che ha completato con successo la procedura di autenticazione. Può configurare nuove analisi, consultare lo storico dei report e gestire il proprio profilo.],

    [*Utente Avanzato*],
    [Specializzazione dell'Utente Autorizzato che ha collegato il proprio account al provider #def[GitHub], abilitando l'accesso ai repository privati e funzionalità di integrazione avanzata.],

    // SEZIONE 2: SISTEMI ATTIVI (ORCHESTRATORE)
    table.cell(colspan: 2, fill: luma(250), [*Attori Primari (Sistemi Interni)*]),

    [*Orchestratore*],
    [Componente software autonomo che agisce come attore sistemico. È responsabile dell'avvio e del coordinamento dei flussi di analisi automatizzati, della gestione degli ambienti di esecuzione  e della centralizzazione delle comunicazioni tra gli agenti e il sistema di persistenza, senza richiedere intervento umano diretto durante l'elaborazione.],

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
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  trigger: "L'utente inserisce un username che non risulta univoco",
)[]

==== UC1.2: Inserimento email <UC1.2>
#useCase(
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  attore: "Utente non Registrato",
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
  attore: "Utente non Autenticato",
  pre: [
    - L'utente dispone di credenziali valide registrate nel sistema #link(<UC1>)[#underline[\[UC1\]]]
    - L'utente visualizza la sezione di accesso
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
  attore: "Utente non Autenticato",
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
  attore: "Utente non Autenticato",
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
  attore: "Utente non Autenticato",
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
  attore: "Utente non Autenticato",
  pre: [
    - L'utente ha inserito un username non presente nel sistema #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa l'invalidità delle credenziali fornite
    - L'utente ha la possibilità di fornire un nuovo valore per l'identificativo
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala l'inesistenza dell'identificativo inserito
  ],
  trigger: "L'utente tenta di autenticarsi con un username non censito",
)[]

==== UC2.2: Inserimento password <UC2.2>
#useCase(
  attore: "Utente non Autenticato",
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
  attore: "Utente non Autenticato",
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
  attore: "Utente non Autenticato",
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
  attore: "Utente Autorizzato",
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
  attore: "Utente Autorizzato",
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
)[
  #useCaseDiagram("3_1", "UC3.1 - Collegamento account GitHub")
]

===== UC3.1.1: Visualizzazione annullamento reindirizzamento <UC3.1.1>
#useCase(
  attore: "Utente Autorizzato",
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
  attore: "Utente Autorizzato",
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
)[
  #useCaseDiagram("3_2", "UC3.2 - Collegamento account GitHub")
]

===== UC3.2.1: Visualizzazione errore sincronizzazione fallita <UC3.2.1>
#useCase(
  attore: "Utente Autorizzato",
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
  attore: "Utente Autorizzato",
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
  attore: "Utente Autorizzato",
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
  attore: "Utente Autorizzato",
  pre: [
    - L'utente risulta autorizzato all'interazione con i propri repository #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente accede alla collezione di report di un repository #link(<UC20>)[#underline[\[UC20\]]]
    - L'utente visualizza la sezione di configurazione dell'analisi
  ],
  post: [
    - L'utente visualizza la conferma di presa in carico della richiesta di analisi
  ],
  scenari: [
    - L'utente seleziona le aree di interesse per l'audit #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente impartisce il comando di conferma per l'invio della richiesta
  ],
  inclusioni: [
    - #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  estensioni: [
    - #link(<UC4.0.1>)[#underline[\[UC4.0.1\]]] // Report già aggiornato
    - #link(<UC4.0.2>)[#underline[\[UC4.0.2\]]] // Analisi in corso
  ],
  trigger: "L'utente seleziona la funzione di nuova analisi del repository",
)[
  #useCaseDiagram("4", "UC4 - Richiesta analisi repository GitHub")
]

==== UC4.0.1: Visualizzazione informativa report aggiornato <UC4.0.1>
#useCase(
  attore: "Utente Autorizzato",
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

==== UC4.0.2: Visualizzazione informativa analisi in corso <UC4.0.2>
#useCase(
  attore: "Utente Autorizzato",
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

==== UC4.1: Selezione aree di interesse <UC4.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta visualizzando il modulo di richiesta analisi #link(<UC4>)[#underline[\[UC4\]]]
  ],
  post: [
    - Le preferenze sulle aree del repository da analizzare risultano impostate
  ],
  scenari: [
    - L'utente seleziona le informazioni del repository di suo interesse (test, sicurezza o documentazione)
  ],
  estensioni: [
    - #link(<UC4.1.1>)[#underline[\[UC4.1.1\]]] // Nessuna area selezionata
  ],
  trigger: "L'utente interagisce con le opzioni di configurazione dell'audit",
)[
  #useCaseDiagram("4_1", "UC4.1 - Selezione aree di interesse")
]

===== UC4.1.1: Visualizzazione errore nessuna area selezionata <UC4.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta interagendo con la selezione delle aree #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa la necessità di selezionare almeno un'area
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala la mancata scelta delle aree di interesse
  ],
  trigger: "L'utente tenta di confermare senza aver selezionato alcuna area di analisi",
)[]

=== UC5: Visualizzazione lista repository analizzati <UC5>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente dispone di una sessione attiva nel sistema #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente accede alla sezione dedicata ai repository analizzati
  ],
  post: [
    - L'utente visualizza l'elenco dei repository per i quali è stato generato almeno un report
  ],
  scenari: [
    - L'utente visualizza la lista dei repository sottoposti a scansione
    - Ogni elemento della lista espone i dati identificativi del repository #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  inclusioni: [
    - #link(<UC5.1>)[#underline[\[UC5.1\]]]
  ],
  estensioni: [
    - #link(<UC5.0.1>)[#underline[\[UC5.0.1\]]] // Lista vuota
  ],
  trigger: "L'utente seleziona la funzione di visualizzazione storico analisi",
)[
  #useCaseDiagram("5", "UC5 - Visualizzazione lista repository")
]

==== UC5.0.1: Visualizzazione informativa lista repository vuota <UC5.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha richiesto la visualizzazione della lista dei repository analizzati #link(<UC5>)[#underline[\[UC5\]]]
  ],
  post: [
    - L'utente visualizza un messaggio informativo circa l'assenza di repository nella lista
  ],
  scenari: [
    - L'utente viene avvisato che non è stata ancora richiesta l'analisi di alcun repository
  ],
  trigger: "L'utente accede alla sezione in assenza di repository censiti a sistema",
)[]

==== UC5.1: Visualizzazione informazioni identificative repository <UC5.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta visualizzando la lista dei repository analizzati #link(<UC5>)[#underline[\[UC5\]]]
  ],
  post: [
    - L'utente dispone dei dati necessari per distinguere i diversi repository in elenco
  ],
  scenari: [
    - L'utente visualizza nome del repository, URL di riferimento e data dell'ultima analisi eseguita per ogni repository presente nella lista
  ],
  trigger: "L'utente accede alla schermata di riepilogo dei repository",
)[]

=== UC6: Visualizzazione report di analisi repository <UC6>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente seleziona un repository dalla lista dei repository analizzati #link(<UC5>)[#underline[\[UC5\]]]
  ],
  post: [
    - L'utente visualizza il contenuto dettagliato del report di analisi selezionato
  ],
  scenari: [
    - L'utente seleziona le sezioni specifiche dell'audit da consultare #link(<UC6.1>)[#underline[\[UC6.1\]]]
    - L'utente visualizza i metadati generali del report #link(<UC6.2>)[#underline[\[UC6.2\]]]
    - L'utente visualizza le informazioni analitiche delle sezioni scelte #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  inclusioni: [
    - #link(<UC6.1>)[#underline[\[UC6.1\]]]
    - #link(<UC6.2>)[#underline[\[UC6.2\]]]
    - #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  trigger: "L'utente richiede la consultazione dei dettagli di un repository analizzato",
)[
  #useCaseDiagram("6", "UC6 - Visualizzazione report di analisi")
]

==== UC6.1: Selezione sezioni del report <UC6.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente si trova nella schermata di dettaglio del report #link(<UC6>)[#underline[\[UC6\]]]
  ],
  post: [
    - Le preferenze di visualizzazione per il report corrente risultano impostate
  ],
  scenari: [
    - L'utente seleziona o deseleziona le aree dell'analisi (Codice, Sicurezza, Documentazione) da mostrare a video
  ],
  estensioni: [
    - #link(<UC6.1.1>)[#underline[\[UC6.1.1\]]] // Nessuna sezione selezionata
  ],
  trigger: "L'utente interagisce con i filtri di visualizzazione del report",
)[
  #useCaseDiagram("6_1", "UC6.1 - Selezione sezioni del report")
]

===== UC6.1.1: Visualizzazione informativa nessuna sezione selezionata <UC6.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente interagisce con la selezione delle sezioni #link(<UC6.1>)[#underline[\[UC6.1\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa la necessità di selezionare almeno un'area per popolare il report
  ],
  scenari: [
    - L'utente visualizza un messaggio che inibisce il rendering dei dati analitici fino alla selezione di un'area
  ],
  trigger: "L'utente deseleziona tutte le aree di visualizzazione del report",
)[]

==== UC6.2: Visualizzazione metadati del report <UC6.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio di un report di analisi #link(<UC6>)[#underline[\[UC6\]]]
  ],
  post: [
    - L'utente visualizza le informazioni di contesto dell'analisi
  ],
  scenari: [
    - L'utente visualizza la data di esecuzione del report #link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]
    - L'utente visualizza l'identificativo del commit analizzato #link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]
    - L'utente visualizza il profilo del richiedente dell'analisi #link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]
  ],
  inclusioni: [
    - #link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]
    - #link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]
    - #link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]
  ],
  trigger: "L'utente accede alla testata del report di analisi",
)[
  #useCaseDiagram("6_2", "UC6.2 - Visualizzazione metadati del report")
]

===== UC6.2.1: Visualizzazione data report <UC6.2.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'area metadati del report #link(<UC6.2>)[#underline[\[UC6.2\]]]
  ],
  post: [
    - L'utente ha preso visione della data e dell'ora di generazione del report
  ],
  scenari: [
    - L'utente visualizza espone il timestamp relativo al completamento dell'analisi
  ],
  trigger: "L'utente consulta le informazioni cronologiche del report",
)[]

===== UC6.2.2: Visualizzazione commit analizzato <UC6.2.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'area metadati del report #link(<UC6.2>)[#underline[\[UC6.2\]]]
  ],
  post: [
    - L'utente identifica univocamente la versione del codice sorgente analizzata
  ],
  scenari: [
    - L'utente visualizza l'hash o il riferimento abbreviato del commit GitHub analizzato
  ],
  trigger: "L'utente consulta il riferimento alla versione del repository",
)[]

===== UC6.2.3: Visualizzazione richiedente report <UC6.2.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'area metadati del report #link(<UC6.2>)[#underline[\[UC6.2\]]]
  ],
  post: [
    - L'utente visualizza l'identità del profilo che ha originato la richiesta di analisi
  ],
  scenari: [
    - L'utente visualizza lo username dell'Utente Autorizzato che ha avviato il processo di audit
  ],
  trigger: "L'utente consulta la paternità della richiesta di analisi",
)[]

==== UC6.3: Visualizzazione sezioni analitiche e remediation <UC6.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha selezionato almeno una sezione da visualizzare #link(<UC6.1>)[#underline[\[UC6.1\]]]
  ],
  post: [
    - L'utente visualizza i risultati tecnici dell'analisi per le aree scelte
  ],
  scenari: [
    - L'utente visualizza le metriche e le criticità relative alla sezione consultata
    - L'utente visualizza l'elenco dei suggerimenti di risoluzione (remediation) #link(<UC6.3.1>)[#underline[\[6.3.1\]]]
  ],
  inclusioni: [
    - #link(<UC6.3.1>)[#underline[\[6.3.1\]]]
  ],
  generalizzazione: [
    - #link(<UC9>)[#underline[\[UC9\]]]
    - #link(<UC10>)[#underline[\[UC10\]]]
    - #link(<UC11>)[#underline[\[UC11\]]]
  ],
  trigger: "L'utente scorre i risultati dell'analisi",
)[
  #useCaseDiagram("6_3", "UC6.3 - Visualizzazione sezioni analitiche e remediation")
]

===== UC6.3.1: Visualizzazione lista remediation <UC6.3.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza una sezione analitica del report #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  post: [
    - L'utente visualizza l'elenco delle azioni correttive proposte
  ],
  scenari: [
    - L'utente visualizza la lista delle remediation suggerite
  ],
  estensioni: [
    - #link(<UC6.3.1.1>)[#underline[\[6.3.1.1\]]] // Nessuna remediation
  ],
  trigger: "L'utente consulta l'area dedicata ai miglioramenti per una sezione",
)[
  #useCaseDiagram("6_3_1", "UC6.3.1 - Visualizzazione lista remediation")
]

===== UC6.3.1.1: Visualizzazione messaggio assenza criticità <UC6.3.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta visualizzando la sezione delle remediation #link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]
  ],
  post: [
    - L'utente visualizza un messaggio informativo circa l'assenza di miglioramenti necessari
  ],
  scenari: [
    - L'utente viene informato che la sezione analizzata rispetta tutti gli standard e non richiede interventi
  ],
  trigger: "Il sistema non individua criticità o suggerimenti per la sezione selezionata",
)[]

=== UC7: Selezione intervallo temporale per confronto report <UC7>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio di un report di analisi #link(<UC6>)[#underline[\[UC6\]]]
    - L'utente accede alla funzione di confronto storico
  ],
  post: [
    - L'utente imposta l'intervallo temporale per il recupero dei dati di confronto
    - L'utente visualizza la comparazione tra il report attuale e quelli del periodo scelto
  ],
  scenari: [
    - L'utente definisce i limiti temporali (data inizio e data fine) per la generazione del confronto
  ],
  estensioni: [
    - #link(<UC7.0.1>)[#underline[\[UC7.0.1\]]] // Nessun intervallo selezionato
    - #link(<UC7.0.2>)[#underline[\[UC7.0.2\]]] // Nessun report disponibile
    - #link(<UC7.0.3>)[#underline[\[UC7.0.3\]]] // Intervallo incoerente
    - #link(<UC7.0.4>)[#underline[\[UC7.0.4\]]] // Intervallo troppo ampio
  ],
  trigger: "L'utente richiede la modifica del periodo temporale per l'analisi comparativa",
)[
  #useCaseDiagram("7", "UC7 - Selezione intervallo temporale")
]

==== UC7.0.1: Visualizzazione errore intervallo non inserito <UC7.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente interagisce con i selettori di data #link(<UC7>)[#underline[\[UC7\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa la necessità di popolare i campi data
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala la mancanza dei parametri temporali obbligatori
  ],
  trigger: "L'utente tenta di confermare il confronto senza aver definito l'intervallo",
)[]

==== UC7.0.2: Visualizzazione informativa assenza report nel periodo <UC7.0.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha definito un intervallo temporale #link(<UC7>)[#underline[\[UC7\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa l'assenza di analisi storiche nel periodo indicato
  ],
  scenari: [
    - L'utente viene informato che non esistono report archiviati coerenti con le date selezionate
  ],
  trigger: "L'utente seleziona un periodo in cui non sono state effettuate analisi",
)[]

==== UC7.0.3: Visualizzazione errore intervallo incoerente <UC7.0.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha impostato le date di inizio e fine #link(<UC7>)[#underline[\[UC7\]]]
  ],
  post: [
    - L'utente visualizza un avviso relativo all'ordine cronologico errato delle date
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore che segnala come la data di inizio sia successiva a quella di fine
  ],
  trigger: "L'utente inserisce limiti temporali logicamente invertiti",
)[]

==== UC7.0.4: Visualizzazione errore intervallo troppo ampio <UC7.0.4>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha definito un intervallo temporale #link(<UC7>)[#underline[\[UC7\]]]
  ],
  post: [
    - L'utente visualizza un avviso circa il superamento del limite massimo di interrogazione
  ],
  scenari: [
    - L'utente visualizza un messaggio che segnala l'impossibilità di elaborare confronti su periodi eccessivamente estesi
  ],
  trigger: "L'utente seleziona un intervallo che eccede i vincoli di sistema",
)[]

=== UC8: Visualizzazione metriche comparative tra report <UC8>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha definito l'intervallo temporale per il confronto storico #link(<UC7>)[#underline[\[UC7\]]]
  ],
  post: [
    - L'utente visualizza la comparazione analitica tra i report del periodo selezionato
  ],
  scenari: [
    - L'utente visualizza l'andamento delle metriche tramite rappresentazioni grafiche
    - L'utente consulta i dati comparativi in formato tabellare
  ],
  trigger: "L'utente richiede la generazione della vista comparativa",
)[]

=== UC9: Visualizzazione sezione analisi del codice <UC9>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha incluso l'area "Codice" nei filtri di visualizzazione del report #link(<UC6.1>)[#underline[\[UC6.1\]]]
  ],
  post: [
    - L'utente visualizza i dettagli tecnici relativi all'analisi statica e alla copertura del codice
  ],
  scenari: [
    - L'utente visualizza i risultati dell'analisi statica del codice #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - L'utente visualizza le metriche sulla copertura dei test di unità #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - L'utente visualizza il riepilogo delle remediation per l'area codice #link(<UC9.3>)[#underline[\[UC9.3\]]]
  ],
  inclusioni: [
    - #link(<UC9.1>)[#underline[\[UC9.1\]]]
    - #link(<UC9.2>)[#underline[\[UC9.2\]]]
    - #link(<UC9.3>)[#underline[\[UC9.3\]]]
  ],
  specializzazione: [
    - #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  trigger: "L'utente accede all'area dedicata all'analisi del codice nel report di analisi",
)[
  #useCaseDiagram("9", "UC9 - Visualizzazione sezione analisi del codice")
]

==== UC9.1: Visualizzazione sezione analisi statica del codice <UC9.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi del codice #link(<UC9>)[#underline[\[UC9\]]]
  ],
  post: [
    - L'utente ha preso visione dei bug, vulnerabilità e code smell rilevati tramite analisi statica
  ],
  scenari: [
    - L'utente visualizza il dettaglio tecnico dei rilievi emersi dall'analisi del codice
  ],
  trigger: "L'utente consulta i dati di analisi statica",
)[]

==== UC9.2: Visualizzazione sezione test di unità <UC9.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi del codice #link(<UC9>)[#underline[\[UC9\]]]
  ],
  post: [
    - L'utente ha preso visione delle percentuali di copertura e l'esito dei test di unità
  ],
  scenari: [
    - L'utente visualizza le metriche relative alla qualità e quantità dei test eseguiti sul repository
  ],
  trigger: "L'utente consulta i dati di copertura test",
)[]

==== UC9.3: Visualizzazione remediation sezione codice <UC9.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi del codice #link(<UC9>)[#underline[\[UC9\]]]
  ],
  post: [
    - L'utente ha preso visione delle proposte di miglioramento specifiche per il codice analizzato
  ],
  scenari: [
    - L'utente visualizza l'elenco dei suggerimenti correttivi per i difetti del codice
  ],
  estensioni: [
    - #link(<UC9.3.1>)[#underline[\[UC9.3.1\]]] // Nessuna remediation codice
  ],
  trigger: "L'utente accede alla lista delle azioni correttive per il codice",
)[
  #useCaseDiagram("9_3", "UC9.3 - Visualizzazione remediation sezione codice")
]

===== UC9.3.1: Visualizzazione informativa assenza remediation codice <UC9.3.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta consultando le remediation del codice #link(<UC9.3>)[#underline[\[UC9.3\]]]
  ],
  post: [
    - L'utente visualizza l'esito positivo sulla qualità del codice
  ],
  scenari: [
    - L'utente viene informato del fatto che non sono stati individuati difetti che richiedano remediation nell'area codice
  ],
  trigger: "Il processo di analisi non rileva criticità nell'area del codice sorgente",
)[]

=== UC10: Visualizzazione sezione analisi della sicurezza <UC10>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha incluso l'area "Sicurezza" nei filtri di visualizzazione del report #link(<UC6.1>)[#underline[\[UC6.1\]]]
  ],
  post: [
    - L'utente visualizza i dettagli relativi alla sicurezza delle dipendenze e alla conformità OWASP
  ],
  scenari: [
    - L'utente visualizza l'audit sulle librerie e dipendenze del codice #link(<UC10.1>)[#underline[\[UC10.1\]]]
    - L'utente visualizza i rilievi sulla conformità agli standard OWASP #link(<UC10.2>)[#underline[\[UC10.2\]]]
    - L'utente visualizza il riepilogo delle remediation per l'area sicurezza #link(<UC10.3>)[#underline[\[UC10.3\]]]
  ],
  inclusioni: [
    - #link(<UC10.1>)[#underline[\[UC10.1\]]]
    - #link(<UC10.2>)[#underline[\[UC10.2\]]]
    - #link(<UC10.3>)[#underline[\[UC10.3\]]]
  ],
  specializzazione: [
    - #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  trigger: "L'utente accede all'area dedicata all'analisi della sicurezza nel report di analisi",
)[
  #useCaseDiagram("10", "UC10 - Visualizzazione sezione analisi della sicurezza")
]

==== UC10.1: Visualizzazione sezione analisi librerie e dipendenze <UC10.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi della sicurezza #link(<UC10>)[#underline[\[UC10\]]]
  ],
  post: [
    - L'utente ha visualizzato le vulnerabilità note (CVE) rilevate nelle dipendenze del repository
  ],
  scenari: [
    - L'utente visualizza l'elenco delle librerie obsolete o affette da criticità di sicurezza
  ],
  trigger: "L'utente consulta i dati relativi alle dipendenze del codice",
)[]

==== UC10.2: Visualizzazione sezione analisi sicurezza OWASP <UC10.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi della sicurezza #link(<UC10>)[#underline[\[UC10\]]]
  ],
  post: [
    - L'utente ha visualizzato i rilievi di conformità basati sulla Top 10 OWASP
  ],
  scenari: [
    - L'utente visualizza le potenziali minacce identificate secondo gli standard di sicurezza internazionali
  ],
  trigger: "L'utente consulta i dati di conformità OWASP",
)[]

==== UC10.3: Visualizzazione remediation sezione sicurezza <UC10.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi della sicurezza #link(<UC10>)[#underline[\[UC10\]]]
  ],
  post: [
    - L'utente ha visualizzato le proposte di risoluzione per le vulnerabilità identificate
  ],
  scenari: [
    - L'utente visualizza l'elenco delle azioni correttive per la sicurezza
  ],
  estensioni: [
    - #link(<UC10.3.1>)[#underline[\[UC10.3.1\]]]
  ],
  trigger: "L'utente accede alla lista delle azioni correttive per la sicurezza",
)[
  #useCaseDiagram("10_3", "UC10.3 - Visualizzazione remediation sezione sicurezza")
]

===== UC10.3.1: Visualizzazione informativa assenza remediation sicurezza <UC10.3.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta consultando le remediation della sicurezza #link(<UC10.3>)[#underline[\[UC10.3\]]]
  ],
  post: [
    - L'utente visualizza l'esito positivo sulla robustezza del repository
  ],
  scenari: [
    - L'utente viene informato del fatto che non sono stati individuati difetti che richiedano remediation nell'area sicurezza
  ],
  trigger: "Il processo di analisi non rileva vulnerabilità nell'area sicurezza",
)[]

=== UC11: Visualizzazione sezione analisi della documentazione <UC11>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'area "Documentazione" è stata selezionata per la visualizzazione #link(<UC6.1>)[#underline[\[UC6.1\]]]
  ],
  post: [
    - L'utente visualizza i dettagli analitici relativi alla qualità della documentazione
  ],
  scenari: [
    - L'utente visualizza i rilievi sugli errori sintattici rilevati #link(<UC11.1>)[#underline[\[UC11.1\]]]
    - L'utente visualizza le metriche di completezza documentale #link(<UC11.2>)[#underline[\[UC11.2\]]]
    - L'utente visualizza l'elenco delle remediation per la documentazione #link(<UC11.3>)[#underline[\[UC11.3\]]]
  ],
  inclusioni: [
    - #link(<UC11.1>)[#underline[\[UC11.1\]]]
    - #link(<UC11.2>)[#underline[\[UC11.2\]]]
    - #link(<UC11.3>)[#underline[\[UC11.3\]]]
  ],
  specializzazione: [
    - #link(<UC6.3>)[#underline[\[UC6.3\]]]
  ],
  trigger: "L'utente accede all'area dedicata all'analisi della documentazione nel report di analisi",
)[
  #useCaseDiagram("11", "UC11 - Visualizzazione sezione analisi della documentazione")
]

==== UC11.1: Visualizzazione sezione errori di sintassi <UC11.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi della documentazione #link(<UC11>)[#underline[\[UC11\]]]
  ],
  post: [
    - L'utente ha preso visione delle incongruenze sintattiche
  ],
  scenari: [
    - L'utente visualizza il dettaglio degli errori formali individuati nei file di testo
  ],
  trigger: "L'utente consulta i risultati dell'analisi sintattica dei file",
)[]

==== UC11.2: Visualizzazione completezza della documentazione <UC11.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi della documentazione #link(<UC11>)[#underline[\[UC11\]]]
  ],
  post: [
    - L'utente ha visualizzato il rapporto tra codice sorgente e documentazione esistente
  ],
  scenari: [
    - L'utente visualizza le percentuali di copertura descrittiva degli elementi del repository
  ],
  trigger: "L'utente consulta il grado di esaustività della documentazione",
)[]

==== UC11.3: Visualizzazione remediation sezione documentazione <UC11.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la sezione analisi della documentazione #link(<UC11>)[#underline[\[UC11\]]]
  ],
  post: [
    - L'utente ha visualizzato le proposte correttive per la documentazione
  ],
  scenari: [
    - L'utente visualizza l'elenco dei suggerimenti di miglioramento riguardanti la documentazione
  ],
  estensioni: [
    - #link(<UC11.3.1>)[#underline[\[UC11.3.1\]]]
  ],
  trigger: "L'utente accede ai suggerimenti correttivi per l'area documentale",
)[
  #useCaseDiagram("11_3", "UC11.3 - Visualizzazione remediation sezione documentazione")
]

===== UC11.3.1: Visualizzazione informativa assenza remediation documentazione <UC11.3.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente consulta l'area delle remediation per la documentazione #link(<UC11.3>)[#underline[\[UC11.3\]]]
  ],
  post: [
    - L'utente visualizza un riscontro positivo sull'integrità documentale
  ],
  scenari: [
    - L'utente viene informato del fatto che non sono stati individuati difetti che richiedano remediation nell'area documentazione
  ],
  trigger: "L'analisi non rileva criticità documentali nel repository",
)[]

=== UC12: Visualizzazione ranking dei repository analizzati <UC12>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha eseguito l'autenticazione al sistema #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - L'utente ha visualizzato la graduatoria dei repository ordinata per punteggio di qualità
  ],
  scenari: [
    - L'utente visualizza la lista dei repository analizzati ordinati in base al punteggio globale calcolato
  ],
  estensioni: [
    - #link(<UC12.1>)[#underline[\[UC12.1\]]]
  ],
  trigger: "L'utente richiede la consultazione della classifica globale dei propri repository",
)[
  #useCaseDiagram("12", "UC12 - Visualizzazione ranking dei repository analizzati")
]

==== UC12.1: Visualizzazione informativa assenza dati per ranking <UC12.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente accede alla sezione di ranking #link(<UC12>)[#underline[\[UC12\]]]
    - Non esistono repository analizzati associati all'account
  ],
  post: [
    - L'utente ha ricevuto un messaggio di errore che segnala l'assenza di dati per popolare la classifica
  ],
  scenari: [
    - L'utente visualizza un messaggio che gli suggerisce l'avvio di una prima analisi
  ],
  trigger: "L'utente accede alla sezione ranking senza dati storici disponibili",
)[]

=== UC13: Disconnessione account GitHub da CodeGuardian <UC13>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha precedentemente collegato un account GitHub #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - L'utente visualizza un messaggio di conferma della disconnessione dell'account GitHub
  ],
  scenari: [
    - L'utente conferma la volontà di rimuovere l'integrazione con GitHub tramite comando dedicato
  ],
  trigger: "L'utente richiede la rimozione del collegamento con il provider esterno GitHub",
)[]

=== UC14: Esportazione report di analisi <UC14>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza un report di analisi #link(<UC6>)[#underline[\[UC6\]]]
  ],
  post: [
    - L'utente visualizza il file nel formato richiesto disponibile al download
  ],
  scenari: [
    - L'utente seleziona il formato desiderato per l'esportazione #link(<UC14.1>)[#underline[\[UC14.1\]]]
    - L'utente conferma la richiesta di generazione del file #link(<UC14.2>)[#underline[\[UC14.2\]]]
  ],
  inclusioni: [
    - #link(<UC14.1>)[#underline[\[UC14.1\]]]
    - #link(<UC14.2>)[#underline[\[UC14.2\]]]
  ],
  trigger: "L'utente richiede la versione scaricabile del report di analisi",
)[
  #useCaseDiagram("14", "UC14 - Esportazione report")
]

==== UC14.1: Selezione formato di esportazione <UC14.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha avviato la procedura di esportazione #link(<UC14>)[#underline[\[UC14\]]]
  ],
  post: [
    - Il formato di output risulta correttamente impostato
  ],
  scenari: [
    - L'utente seleziona un formato tra le opzioni disponibili
  ],
  estensioni: [
    - #link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]
  ],
  trigger: "L'utente interagisce con il selettore dei formati di esportazione",
)[
  #useCaseDiagram("14_1", "UC14.1 - Selezione formato di esportazione")
]

===== UC14.1.1: Visualizzazione errore formato mancante <UC14.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente tenta di confermare l'esportazione senza aver selezionato un formato
  ],
  post: [
    - L'utente ha ricevuto il messaggio d'errore di mancato inserimento del formato
    - L'utente ha nuovamente la possibilità di selezionare un formato 
  ],
  scenari: [
    - L'utente visualizza un messaggio di avviso circa l'obbligatorietà della scelta del formato
  ],
  trigger: "Mancata selezione del formato durante la conferma di esportazione",
)[]

==== UC14.2: Conferma esportazione <UC14.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - Un formato valido è stato selezionato #link(<UC14.1>)[#underline[\[UC14.1\]]]
  ],
  post: [
    - Il sistema avvia il processo di parsing dei dati e creazione del file
  ],
  scenari: [
    - L'utente attiva il comando di finalizzazione dell'esportazione
  ],
  trigger: "L'utente conferma l'operazione di download del report",
)[]

=== UC15: Modifica password profilo <UC15>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente è autenticato e visualizza l'area gestione profilo #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - Le credenziali di accesso risultano aggiornate con il nuovo valore cifrato
  ],
  scenari: [
    - L'utente inserisce la chiave di accesso attuale #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - L'utente definisce la nuova chiave di accesso #link(<UC15.2>)[#underline[\[UC15.2\]]]
    - L'utente impartisce il comando di conferma della modifica #link(<UC15.3>)[#underline[\[UC15.3\]]]
    - L'utente visualizza la notifica di avvenuto aggiornamento #link(<UC15.4>)[#underline[\[UC15.4\]]]
  ],
  inclusioni: [
    - #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - #link(<UC15.2>)[#underline[\[UC15.2\]]]
    - #link(<UC15.3>)[#underline[\[UC15.3\]]]
    - #link(<UC15.4>)[#underline[\[UC15.4\]]]
  ],
  trigger: "L'utente richiede la variazione delle proprie credenziali di accesso",
)[
  #useCaseDiagram("15", "UC15 - Modifica password")
]

==== UC15.1: Inserimento password corrente <UC15.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il modulo di modifica password #link(<UC15>)[#underline[\[UC15\]]]
  ],
  post: [
    - La validità della chiave di accesso attuale risulta verificata
  ],
  scenari: [
    - L'utente digita la password attualmente associata al profilo
  ],
  estensioni: [
    - #link(<UC15.1.1>)[#underline[\[UC15.1.1\]]]
    - #link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]
  ],
  trigger: "L'utente seleziona il campo relativo alla password attuale",
)[]

===== UC15.1.1: Visualizzazione errore password corrente mancante <UC15.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - Il campo relativo alla password attuale non risulta popolato
  ],
  post: [
    - L'utente visualizza un avviso circa l'obbligatorietà del dato
  ],
  scenari: [
    - L'utente riceve una segnalazione di errore per il mancato inserimento della password attuale
  ],
  trigger: "L'utente tenta di confermare la modifica con il campo password attuale vuoto",
)[]

===== UC15.1.2: Visualizzazione errore password corrente errata <UC15.1.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La password attuale inserita non corrisponde a quella memorizzata
  ],
  post: [
    - La procedura di modifica viene interrotta per incongruenza dei dati
  ],
  scenari: [
    - L'utente visualizza un messaggio di errore relativo all'invalidità della password attuale fornita
  ],
  trigger: "L'utente fornisce una chiave di accesso attuale non corretta",
)[]

==== UC15.2: Inserimento nuova password <UC15.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il modulo di modifica password #link(<UC15>)[#underline[\[UC15\]]]
  ],
  post: [
    - La nuova chiave di accesso risulta conforme ai criteri di sicurezza stabiliti
  ],
  scenari: [
    - L'utente definisce il nuovo valore per l'autenticazione
  ],
  estensioni: [
    - #link(<UC15.2.1>)[#underline[\[UC15.2.1\]]]
    - #link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]
    - #link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]
  ],
  trigger: "L'utente seleziona il campo relativo alla nuova password",
)[]

===== UC15.2.1: Visualizzazione errore nuova password mancante <UC15.2.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - Il campo relativo alla nuova password non risulta popolato
  ],
  post: [
    - L'utente visualizza un avviso circa la necessità di definire un nuovo valore
  ],
  scenari: [
    - L'utente riceve una segnalazione di errore per il mancato inserimento della nuova password
  ],
  trigger: "L'utente tenta di confermare la modifica senza aver definito una nuova password",
)[]

===== UC15.2.2: Visualizzazione errore password non conforme <UC15.2.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La nuova password inserita non rispetta i requisiti di complessità previsti
  ],
  post: [
    - L'utente visualizza il dettaglio dei requisiti di sicurezza non soddisfatti
  ],
  scenari: [
    - L'utente riceve una segnalazione circa la scarsa robustezza della nuova chiave scelta
  ],
  trigger: "L'utente inserisce una nuova password formalmente non valida",
)[]

===== UC15.2.3: Visualizzazione errore password identica alla precedente <UC15.2.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La nuova password inserita coincide con quella attualmente in uso
  ],
  post: [
    - La procedura viene inibita per mancata variazione del valore
  ],
  scenari: [
    - L'utente riceve un avviso che segnala l'impossibilità di utilizzare la password attuale come nuova password
  ],
  trigger: "L'utente tenta di utilizzare la medesima chiave di accesso già attiva",
)[]

==== UC15.3: Conferma modifica password <UC15.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - I campi del modulo risultano popolati con dati validi e verificati #link(<UC15.1>)[#underline[\[UC15.1\]]], #link(<UC15.2>)[#underline[\[UC15.2\]]]
  ],
  post: [
    - L'aggiornamento delle credenziali viene trasmesso per la persistenza
  ],
  scenari: [
    - L'utente aziona il comando di conferma definitiva per l'aggiornamento del profilo
  ],
  trigger: "L'utente conferma la volontà di procedere con il cambio password",
)[]

==== UC15.4: Notifica avvenuta modifica password <UC15.4>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La persistenza dei nuovi dati è stata completata con successo #link(<UC15.3>)[#underline[\[UC15.3\]]]
  ],
  post: [
    - L'utente visualizza l'esito positivo dell'operazione di modifica
  ],
  scenari: [
    - L'utente riceve conferma visiva dell'avvenuto aggiornamento delle credenziali
  ],
  trigger: "Il completamento con successo della procedura di aggiornamento",
)[]

=== UC16: Visualizzazione singola remediation di sezione generica <UC16>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta visualizzando la lista delle remediation #link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]
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
    - #link(<UC29>)[#underline[\[UC29\]]]
    - #link(<UC30>)[#underline[\[UC30\]]]
    - #link(<UC31>)[#underline[\[UC31\]]]
  ],
  trigger: "L'utente seleziona una remediation dalla lista proposta",
)[#useCaseDiagram("16", "UC16 - Visualizzazione singola remediation di sezione generica")]

//USE CASE DEL BACK-END
=== UC17: Verifica accessibilità repository GitHub <UC17>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'orchestratore recupera l'URL di riferimento dai metadati della collezione di report di analisi #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - L'accessibilità del repository è stata accertata e l'orchestratore dispone dei permessi di lettura per avviare la analisi
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
    - La procedura di verifica è stata inizializzata #link(<UC17>)[#underline[\[UC17\]]]
  ],
  post: [
    - Il canale di comunicazione con la piattaforma esterna risulta operativo
  ],
  scenari: [
    - L'orchestratore interroga i servizi remoti per verificarne l'operatività
  ],
  estensioni: [
    - #link(<UC17.1.1>)[#underline[\[UC17.1.1\]]]
  ],
  trigger: "Tentativo di contatto con i servizi API di GitHub",
)[
  #useCaseDiagram("17_1", "UC17.1 - Comunicazione con GitHub")
]

===== UC17.1.1: Errore di comunicazione con GitHub <UC17.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il contatto con la piattaforma esterna non produce risposta o restituisce un errore di rete #link(<UC17.1>)[#underline[\[UC17.1\]]]
  ],
  post: [
    - La procedura viene interrotta per impossibilità tecnica di collegamento
  ],
  scenari: [
    - L'orchestratore rileva l'irreperibilità dei servizi esterni necessari
  ],
  trigger: "Mancata risposta o timeout della connessione remota",
)[]

==== UC17.2: Ricerca del repository <UC17.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - La comunicazione con i servizi remoti è stata stabilita con successo #link(<UC17.1>)[#underline[\[UC17.1\]]]
  ],
  post: [
    - L'individuazione del repository e la convalida dell'accesso sono completate
  ],
  scenari: [
    - L'orchestratore ricerca il repository come risorsa pubblica
  ],
  estensioni: [
    - #link(<UC17.2.1>)[#underline[\[UC17.2.1\]]]
  ],
  trigger: "Interrogazione dei metadati della risorsa remota",
)[
  #useCaseDiagram("17_2", "UC17.2 - Ricerca del repository")
]

===== UC17.2.1: Accesso a repository privato <UC17.2.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - La risorsa non risulta accessibile pubblicamente #link(<UC17.2>)[#underline[\[UC17.2\]]]
  ],
  post: [
    - L'autorizzazione all'accesso è ottenuta tramite l'uso di credenziali o token validi
  ],
  scenari: [
    - L'orchestratore recupera le credenziali associate all'utente richiedente
    - L'orchestratore utilizza il token di sessione per convalidare l'accesso privato
  ],
  estensioni: [
    - #link(<UC17.2.1.1>)[#underline[\[UC17.2.1.1\]]]
  ],
  trigger: "Esito negativo della ricerca pubblica del repository",
)[]

===== UC17.2.1.1: Repository inaccessibile <UC17.2.1.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Ogni tentativo di accesso (pubblico e privato via credenziali/token) ha dato esito negativo #link(<UC17.2.1>)[#underline[\[UC17.2.1\]]]
  ],
  post: [
    - L'audit viene annullato per mancanza definitiva dei permessi di lettura
  ],
  scenari: [
    - L'orchestratore rileva il diniego di accesso persistente per la risorsa specificata
  ],
  trigger: "Fallimento di tutti i metodi di autorizzazione disponibili",
)[]

=== UC18: Accettazione di una singola remediation <UC18>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta visualizzando il dettaglio di una singola remediation #link(<UC16>)[#underline[\[UC16\]]]
  ],
  post: [
    - La proposta correttiva viene applicata alla sezione specifica del repository di riferimento
    - Lo stato della remediation risulta aggiornato nella dashboard di CodeGuardian
  ],
  scenari: [
    - L'utente esprime la volontà di applicare la modifica suggerita tramite l'apposito comando di conferma
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accetta la proposta di remediation visualizzata",
)[]

=== UC19: Rifiuto singola remediation generica <UC19>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio di una singola remediation #link(<UC16>)[#underline[\[UC16\]]]
  ],
  post: [
    - La proposta correttiva viene scartata e rimossa dall'elenco delle azioni pendenti
  ],
  scenari: [
    - L'utente esprime il dissenso rispetto all'applicazione della remediation proposta
  ],
  trigger: "L'utente rifiuta esplicitamente la proposta di remediation",
  generalizzazione: [
    - #link(<UC33>)[#underline[\[UC33\]]]
    - #link(<UC35>)[#underline[\[UC35\]]]
    - #link(<UC37>)[#underline[\[UC37\]]]
  ],
)[
  #useCaseDiagram("19", "UC19 - Rifiuto singola remediation generica")
]

#TODO("Il refactoring é una remdiation, va infondo (circa 43-49) in quanto specializzazione di 18 e/o 19")
/*
=== UC20: Suggerimenti di refactor <UC20>
#useCase(
  attore: "Utente Autorizzato",
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
  ],
  inclusioni: [
  ],
  estensioni: [
    - #link(<UC20.1>)[#underline[\[UC20.1\]]] // Applicazione automatica
  ],
  trigger: "L'utente seleziona il comando suggerimenti refactor dal pannello code quality",
)[#useCaseDiagram("20", "UC20 - Suggerimenti di refactor")]

==== UC20.1: Conferma di applicazione dei reafctor <UC20.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta visualizzando i suggerimenti di refactoring #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - Il refactoring vengono appplicati correttamente
  ],
  scenari: [
    - L'utente visualizza il diff delle modifiche applicate
    - L'utente ha accettato definitivamente o eseguito il rollback
    - L'utente conferma definitivamente il refactoring proposto
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente conferma l'applicazione automatica",
)[]

===== UC20.2: Conferma dei refactor proposti <UC20.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta visualizzando i suggerimenti di refactoring #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - Il refactoring proposto non viene applicato
  ],
  scenari: [
    - L'utente rifiuta il refactoring proposto
  ],
  inclusioni:[
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente ha rifiutato il refactoring proposto",
)[]

=== UC20: Report programmabili e alert <UC20>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente è autenticato al sistema CodeGuardian #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente si trova nella sezione report programmabili e alert
  ],
  post: [
    - L'utente ha configurato con successo i report periodici e gli alert
  ],
  scenari: [
    - L'utente configura la periodicità dei report #link(<UC20.1>)[#underline[\[UC20.1\]]]
    - L'utente configura le soglie per gli alert critici #link(<UC20.2>)[#underline[\[UC20.2\]]]
    - L'utente conferma la sua configurazione per i report programmabili e gli alert
  ],
  inclusioni: [
    - #link(<UC20.1>)[#underline[\[UC20.1\]]]
    - #link(<UC20.2>)[#underline[\[UC20.2\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione report programmabili e alert",
)[
  #useCaseDiagram("20", "UC20 - Report programmabili e alert")
]

==== UC20.1: Configurazione periodicità dei report <UC20.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta configurando i report programmabili e gli alert #link(<UC20>)[#underline[\[UC20\]]]
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
    - #link(<UC20.1.1>)[#underline[\[UC20.1.1\]]]
  ],
  trigger: "L'utente accede alla sezione per la configurazione della periodicità dei report",
)[
  #useCaseDiagram("20_1", "UC20.1 - Configurazione periodicità dei report")
]

===== UC20.1.1: Nessuna periodicità selezionata <UC20.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente è nella sezione per la configurazione della periodicità dei report #link(<UC20.1>)[#underline[\[UC20.1\]]]
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

==== UC20.2: Configurazione soglie per gli alert critici <UC20.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta confiugurando i report programmabili e gli alert #link(<UC20>)[#underline[\[UC20\]]]
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
    - #link(<UC20.2.1>)[#underline[\[UC20.2.1\]]]
  ],
  trigger: "L'utente accede alla sezione per la configurazione delle soglie per gli alert critici",
)[
  #useCaseDiagram("20_2", "UC20.2 - Configurazione soglie per gli alert critici")
]

===== UC20.2.1: Nessuna soglia selezionata <UC20.2.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta confiugurando i report programmabili e gli alert #link(<UC20>)[#underline[\[UC20\]]]
    - L'utente si trova nella sezione per la configurazione delle soglie per gli alert critici #link(<UC20.2>)[#underline[\[UC20.2\]]]
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
*/
#TODO("Scenario non completo, trigger mancante")
=== UC20: Creazione raccolta report di analisi <UC20>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente dispone di una sessione attiva nel sistema #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - Una nuova collezione di report risulta creata e disponibile per l'archiviazione delle analisi del repository
  ],
  scenari: [
    - L'utente definisce il nome identificativo della raccolta #link(<UC20.1>)[#underline[\[UC20.1\]]]
    - L'utente specifica l'URL del repository di riferimento #link(<UC20.2>)[#underline[\[UC20.2\]]]
    - L'utente fornisce una descrizione facoltativa della raccolta #link(<UC20.3>)[#underline[\[UC20.3\]]]
    - L'utente impartisce il comando di conferma per la creazione della raccolta
  ],
  inclusioni: [
    - #link(<UC20.1>)[#underline[\[UC20.1\]]]
    - #link(<UC20.2>)[#underline[\[UC20.2\]]]
    - #link(<UC20.3>)[#underline[\[UC20.3\]]]
  ],
  estensioni: [
    - #link(<UC20.0.1>)[#underline[\[UC20.0.1\]]]
  ],
  trigger: "L'utente richiede la creazione di un nuovo contenitore per i report di analisi",
)[
  #useCaseDiagram("20", "UC20 - Creazione raccolta report di analisi")
]

==== UC20.0.1: Visualizzazione errore campi obbligatori mancanti <UC20.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente sta compilando il modulo di creazione nuova raccolta #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - La procedura di creazione viene inibita fino al completamento dei dati necessari
  ],
  scenari: [
    - L'utente riceve una segnalazione circa l'incompletezza dei dati obbligatori forniti
  ],
  trigger: "Tentativo di conferma della creazione con campi obbligatori non popolati",
)[]

==== UC20.1: Inserimento nome raccolta <UC20.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il modulo di creazione raccolta #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - Il nome identificativo risulta acquisito e conforme ai vincoli di formato
  ],
  scenari: [
    - L'utente digita il nome scelto per la nuova raccolta di report
  ],
  estensioni: [
    - #link(<UC20.1.1>)[#underline[\[UC20.1.1\]]]
  ],
  trigger: "L'utente seleziona il campo dedicato all'identificativo della raccolta",
)[]

===== UC20.1.1: Visualizzazione errore nome non conforme <UC20.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha inserito un valore nel campo nome #link(<UC20.1>)[#underline[\[UC20.1\]]]
  ],
  post: [
    - L'utente visualizza il dettaglio dei criteri di nomenclatura non rispettati
  ],
  scenari: [
    - L'utente riceve un avviso circa la non validità formale del nome inserito
  ],
  trigger: "Inserimento di un nome che non rispetta i vincoli alfanumerici o di lunghezza",
)[]

==== UC20.2: Inserimento URL repository GitHub <UC20.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il modulo di creazione raccolta #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - L'indirizzo remoto del repository risulta acquisito e verificato
  ],
  scenari: [
    - L'utente digita l'URL del repository GitHub associato alla raccolta
  ],
  estensioni: [
    - #link(<UC20.2.1>)[#underline[\[UC20.2.1\]]]
    - #link(<UC20.2.2>)[#underline[\[UC20.2.2\]]]
    - #link(<UC20.2.3>)[#underline[\[UC20.2.3\]]]
  ],
  trigger: "L'utente seleziona il campo dedicato all'indirizzo del repository",
)[]

===== UC20.2.1: Visualizzazione errore URL non conforme <UC20.2.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha inserito un valore nel campo URL #link(<UC20.2>)[#underline[\[UC20.2\]]]
  ],
  post: [
    - L'utente visualizza una segnalazione circa l'invalidità sintattica dell'indirizzo
  ],
  scenari: [
    - L'utente riceve un messaggio di errore relativo al mancato rispetto del protocollo o del dominio richiesto
  ],
  trigger: "Inserimento di un URL formalmente non valido",
)[]

===== UC20.2.2: Visualizzazione errore repository non accessibile <UC20.2.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha fornito un URL sintatticamente corretto #link(<UC20.2>)[#underline[\[UC20.2\]]]
  ],
  post: [
    - La procedura viene interrotta a causa dell'irreperibilità della risorsa remota
  ],
  scenari: [
    - L'utente visualizza un avviso circa l'inesistenza o l'inaccessibilità del repository specificato
  ],
  trigger: "Mancato riscontro dai servizi remoti per l'URL indicato",
)[]

===== UC20.2.3: Visualizzazione errore URL non inserito <UC20.2.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - Il campo relativo all'URL del repository risulta vuoto durante la fase di convalida
  ],
  post: [
    - L'utente visualizza l'avviso di obbligatorietà per il campo URL
  ],
  scenari: [
    - L'utente riceve una segnalazione circa la necessità di fornire l'indirizzo del repository
  ],
  trigger: "Tentativo di procedere senza aver popolato il campo URL",
)[]

==== UC20.3: Inserimento descrizione raccolta <UC20.3>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il modulo di creazione raccolta #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - La nota descrittiva risulta acquisita
  ],
  scenari: [
    - L'utente fornisce informazioni testuali aggiuntive per contestualizzare la raccolta
  ],
  trigger: "L'utente seleziona il campo destinato alla descrizione",
)[]

=== UC21: Avvio analisi <UC21>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Servizio AWS",
  pre: [
    - L'accessibilità del repository è stata verificata con successo #link(<UC17>)[#underline[\[UC17\]]]
  ],
  post: [
    - Le procedure di analisi automatica risultano inizializzate presso i rispettivi strumenti esterni
  ],
  scenari: [
    - L'orchestratore richiede la clonazione del repository da analizzare #link(<UC21.1>)[#underline[\[UC21.1\]]]
    - L'orchestratore inoltra la richiesta di analisi allo strumento per il codice #link(<UC21.2>)[#underline[\[UC21.2\]]]
    - L'orchestratore inoltra la richiesta di analisi allo strumento per la documentazione #link(<UC21.3>)[#underline[\[UC21.3\]]]
    - L'orchestratore inoltra la richiesta di analisi allo strumento per gli standard OWASP #link(<UC21.4>)[#underline[\[UC21.4\]]]
  ],
  inclusioni: [
    - #link(<UC21.1>)[#underline[\[UC21.1\]]]
    - #link(<UC21.2>)[#underline[\[UC21.2\]]]
    - #link(<UC21.3>)[#underline[\[UC21.3\]]]
    - #link(<UC21.4>)[#underline[\[UC21.4\]]]
  ],
  trigger: "Convalida positiva delle autorizzazioni di accesso al repository remoto",
)[
  #useCaseDiagram("21", "UC21 - Avvio analisi")
]

==== UC21.1: Richiesta di clonazione del repository <UC21.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Servizio AWS",
  pre: [
    - L'orchestratore dispone dell'URL e delle credenziali/token di accesso verificati #link(<UC17>)[#underline[\[UC17\]]]
  ],
  post: [
    - La codebase del repository risulta disponibile in un ambiente di esecuzione locale per l'elaborazione
  ],
  scenari: [
    - L'orchestratore trasmette le coordinate della risorsa e i parametri di autenticazione al servizio di clonazione
  ],
  estensioni: [
    - #link(<UC21.1.1>)[#underline[\[UC21.1.1\]]]
  ],
  trigger: "Avvio della fase di preparazione del codice sorgente",
)[]

===== UC21.1.1: Errore durante la clonazione del repository <UC21.1.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Servizio AWS",
  pre: [
    - La procedura di clonazione del repository è stata avviata #link(<UC21.1>)[#underline[\[UC21.1\]]]
  ],
  post: [
    - La procedura di analisi viene interrotta e lo stato di errore viene registrato
  ],
  scenari: [
    - L'orchestratore riceve una notifica di fallimento o timeout dal servizio di clonazione remota
  ],
  trigger: "Incapacità tecnica di replicare la codebase nell'ambiente locale",
)[]

==== UC21.2: Richiesta di analisi del codice <UC21.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - La codebase del repository è stata clonata con successo #link(<UC21.1>)[#underline[\[UC21.1\]]]
  ],
  post: [
    - Lo strumento di analisi statica del codice ha preso in carico i file sorgente per l'elaborazione
  ],
  scenari: [
    - L'orchestratore inoltra i file della codebase allo strumento specializzato nella rilevazione di bug e code smell
  ],
  trigger: "Disponibilità locale dei sorgenti per l'audit del codice",
)[]

==== UC21.3: Richiesta di analisi della documentazione <UC21.3>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Servizio AWS",
  pre: [
    - La codebase del repository è stata clonata con successo #link(<UC21.1>)[#underline[\[UC21.1\]]]
  ],
  post: [
    - Lo strumento di analisi documentale ha preso in carico la codebase per la verifica della sintassi e completezza
  ],
  scenari: [
    - L'orchestratore inoltra i file di documentazione e i sorgenti all'agente incaricato dell'analisi qualitativa
  ],
  trigger: "Disponibilità locale dei sorgenti per l'audit documentale",
)[]

==== UC21.4: Richiesta di analisi degli standard OWASP <UC21.4>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - La codebase del repository è stata clonata con successo #link(<UC21.1>)[#underline[\[UC21.1\]]]
  ],
  post: [
    - Lo strumento di scansione di sicurezza ha iniziato la verifica delle vulnerabilità secondo gli standard OWASP
  ],
  scenari: [
    - L'orchestratore inoltra la codebase allo strumento incaricato del controllo dei rischi di sicurezza
  ],
  trigger: "Disponibilità locale dei sorgenti per l'audit di sicurezza",
)[]

=== UC22: Salvataggio stato analisi nel sistema di persistenza <UC22>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Gli strumenti esterni di analisi risultano correttamente inizializzati #link(<UC21>)[#underline[\[UC21\]]]
  ],
  post: [
    - Lo stato dell'analisi risulta registrato come "pending" e associato univocamente al repository e all'utente richiedente
  ],
  scenari: [
    - L'orchestratore effettua la persistenza dei dati di tracciamento dell'analisi, impostando il flag di avanzamento allo stato di attesa
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC22.0.1>)[#underline[\[UC22.0.1\]]]
  ],
  trigger: "Conferma di avvenuto avvio degli strumenti di analisi esterni",
)[
  #useCaseDiagram("22", "UC22 - Salvataggio stato analisi")
]

==== UC22.0.1: Errore durante il salvataggio dello stato dell'analisi <UC22.0.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha avviato la procedura di registrazione dello stato #link(<UC22>)[#underline[\[UC22\]]]
  ],
  post: [
    - L'utente visualizza una segnalazione relativa all'impossibilità tecnica di tracciare l'avanzamento dell'audit
  ],
  scenari: [
    - L'orchestratore rileva un'anomalia nel collegamento con il servizio di persistenza
    - L'orchestratore genera una notifica di errore per informare l'utente del problema riscontrato nel tracciamento
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento di un errore critico durante la scrittura dei dati di stato nel database",
)[]

=== UC23: Recupero dei risultati dagli strumenti di analisi <UC23>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - Gli strumenti esterni di analisi risultano in fase di esecuzione #link(<UC21>)[#underline[\[UC21\]]]
    - Lo stato dell'analisi risulta registrato come "pending" #link(<UC22>)[#underline[\[UC22\]]]
  ],
  post: [
    - L'orchestratore dispone della totalità dei dati grezzi prodotti dagli strumenti di analisi consultati
  ], 
  scenari: [
    - L'orchestratore monitora il completamento delle attività presso gli strumenti esterni
    - L'orchestratore acquisisce i file di output e i metadati generati da ciascuno strumento di analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC23.1>)[#underline[\[UC23.1\]]]
  ],
  trigger: "Gli strumenti esterni di analisi notificano la disponibilità dei risultati o concludono l'elaborazione",
)[
  #useCaseDiagram("23", "UC23 - Recupero dei risultati dagli strumenti di analisi")
]

==== UC23.1: Fallimento parziale nel recupero dei risultati <UC23.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - L'orchestratore è in attesa dei dati dagli strumenti esterni #link(<UC23>)[#underline[\[UC23\]]]
  ],
  post: [
    - La procedura di analisi prosegue utilizzando esclusivamente i risultati parziali ottenuti correttamente
    - L'utente viene informato circa l'incompletezza del report finale
  ],
  scenari: [
    - L'orchestratore rileva il superamento del tempo massimo di attesa (timeout) o riceve un messaggio di errore da uno o più strumenti
    - L'orchestratore registra l'anomalia specifica per lo strumento non rispondente
    - L'orchestratore genera una segnalazione per l'utente riguardante la parzialità dei dati acquisiti
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Mancata risposta o restituzione di un codice di errore da parte di uno strumento esterno entro i termini previsti",
)[]

=== UC24: Generazione del report finale <UC24>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Gli output grezzi sono stati acquisiti correttamente dagli strumenti di analisi #link(<UC23>)[#underline[\[UC23\]]]
  ],
  post: [
    - Il report di analisi finale risulta aggregato, validato e pronto per la persistenza
  ],
  scenari: [
    - L'orchestratore esegue la sintesi dei dati provenienti dai diversi moduli analitici (codice, sicurezza, documentazione)
    - L'orchestratore normalizza le metriche e le remediation in un formato strutturato coerente
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna 
  ],
  trigger: "Disponibilità della totalità (o della quota parziale valida) dei risultati degli strumenti di analisi",
)[
]

=== UC25: Salvataggio di un report <UC25>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il report di analisi finale risulta generato e validato #link(<UC24>)[#underline[\[UC24\]]]
  ],
  post: [
    - Il report di analisi risulta archiviato in modo permanente e lo stato dell'attività risulta aggiornato a "completed"
  ],
  scenari: [
    - L'orchestratore provvede alla scrittura del report nel sistema di persistenza, associandolo al repository e al profilo dell'utente richiedente
    - L'orchestratore aggiorna i metadati dell'analisi per riflettere il completamento della procedura
  ], 
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC25.1>)[#underline[\[UC25.1\]]]
  ],
  trigger: "Completamento delle operazioni di sintesi e aggregazione del report finale",
)[
  #useCaseDiagram("25", "UC25 - Salvataggio di un report")
]

==== UC25.1: Errore durante il salvataggio del report <UC25.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha avviato la procedura di persistenza del report #link(<UC25>)[#underline[\[UC25\]]]
    - L'orchestratore rileva un errore di connessione o un'anomalia interna durante la fase di scrittura dei dati
  ],
  post: [
    - L'utente visualizza una segnalazione circa il mancato salvataggio dei risultati dell'analisi
  ],
  scenari: [
    - L'orchestratore genera una notifica di errore per informare l'utente circa l'irreperibilità del report generato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento di un'eccezione critica durante la fase di archiviazione dei dati",
)[]

=== UC26: Invio notifica completamento dell'analisi del repository <UC26>
#useCase(
  attore: "Orchestratore",
  pre: [
    - Il report di analisi risulta correttamente archiviato e lo stato è aggiornato a "completed" #link(<UC25>)[#underline[\[UC25\]]]
  ],
  post: [
    - Il messaggio informativo relativo alla disponibilità del nuovo report risulta inoltrato ai canali di comunicazione dell'utente
  ],
  scenari: [
    - L'orchestratore provvede all'inoltro di una notifica (push o email) contenente il riferimento al report appena generato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC26.1>)[#underline[\[UC26.1\]]] 
  ],
  trigger: "Avvenuto aggiornamento dello stato dell'analisi a 'completed' nel sistema di persistenza",
)[
  #useCaseDiagram("26", "UC26 - Invio notifica completamento analisi")
]

==== UC26.1: Errore durante l'invio della notifica <UC26.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - La procedura di invio notifica è stata inizializzata #link(<UC26>)[#underline[\[UC26\]]]
  ],
  post: [
    - La mancata consegna del messaggio viene registrata nei log di errore per finalità di audit interno
  ],
  scenari: [
    - L'orchestratore rileva un'anomalia tecnica o un'interruzione di servizio nel canale di comunicazione esterno
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento di un errore di connessione o rifiuto da parte del fornitore del servizio di messaggistica",
)[]

=== UC27: Ricezione notifica completamento analisi <UC27>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La procedura di inoltro della notifica è stata eseguita dall'orchestratore #link(<UC26>)[#underline[\[UC26\]]]
  ],
  post: [
    - L'utente dispone dell'informazione relativa alla conclusione dell'audit tramite i propri canali di comunicazione
  ],
  scenari: [
    - L'utente riceve il messaggio informativo di completamento
  ],
  inclusioni: [
    Nessuna
  ],
  estensioni: [
    - #link(<UC27.0.1>)[#underline[\[UC27.0.1\]]]
  ],
  trigger: "Disponibilità del messaggio di notifica sui canali di comunicazione dell'utente",
)[
  //#useCaseDiagram("27", "UC27 - Ricezione notifica")
]

==== UC27.0.1: Notifica completamento analisi non ricevuta <UC27.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La procedura di inoltro della notifica è stata eseguita #link(<UC26>)[#underline[\[UC26\]]]
  ],
  post: [
    - L'utente non riceve l'avviso proattivo a causa di impedimenti tecnici esterni o di connettività
  ],
  scenari: [
    - L'utente non riceve il messaggio a causa di anomalie nei servizi di terze parti o problemi di rete locale
  ],
  trigger: "Mancata consegna o ricezione del messaggio informativo a seguito dell'invio",
)[]

=== UC28: Gestione errore critico durante l'analisi <UC28>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha una procedura di analisi pendente nel sistema #link(<UC22>)[#underline[\[UC22\]]]
    - L'orchestratore ha rilevato un'anomalia bloccante in una delle fasi di audit
  ],
  post: [
    - L'utente dispone dell'informazione relativa al fallimento dell'analisi e alle cause riscontrate
  ],
  scenari: [
    - L'utente riceve il messaggio informativo di errore critico
  ],
  inclusioni: [
  ],
  estensioni: [
    - #link(<UC28.0.1>)[#underline[\[UC28.0.1\]]]
  ],
  trigger: "L'orchestratore rileva l'impossibilità di proseguire con l'analisi e invia la notifica di errore",
)[
  //#useCaseDiagram("28", "UC28 - Notifica errore critico")
]

==== UC28.0.1: Notifica errore critico non ricevuta <UC28.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'orchestratore ha tentato l'invio della notifica di fallimento
  ],
  post: [
    - L'utente non riceve l'avviso di errore ma lo stato di fallimento risulta consultabile nella dashboard
  ],
  scenari: [
    - Il messaggio di errore non viene recapitato per problemi di rete o dei servizi di messaggistica esterni
  ],
  trigger: "Mancata ricezione della comunicazione di errore",
)[]

=== UC29: Gestione del codice OAuth GitHub <UC29>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - L'orchestratore ha acquisito un codice di autorizzazione temporaneo (OAuth Code)
  ],
  post: [
    - Il token di accesso risulta ottenuto, crittografato e associato all'account utente
  ],
  scenari: [
    - L'orchestratore richiede a GitHub lo scambio del codice temporaneo con un token di accesso
    - L'orchestratore provvede alla crittografia e alla persistenza del token nel database
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC29.0.1>)[#underline[\[UC29.0.1\]]]
  ],
  trigger: "Ricezione di un codice di autorizzazione valido dal fornitore esterno",
)[
  #useCaseDiagram("29", "UC29 - Gestione OAuth")
]

==== UC29.0.1: Fallimento della procedura di scambio OAuth <UC29.0.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "GitHub",
  pre: [
    - Il codice temporaneo risulta scaduto o non valido ai fini dello scambio
  ],
  post: [
    - L'integrazione viene annullata e l'utente viene informato della necessità di ripetere l'autenticazione
  ],
  scenari: [
    - GitHub restituisce un errore di protocollo durante la richiesta di scambio del token
  ],
  trigger: "Rilevamento di un errore di validazione del codice da parte del fornitore esterno",
)[]

=== UC30: Visualizzazione singola remediation riguardante l'analisi del codice <UC30>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'elenco delle remediation nella sezione di analisi del codice #link(<UC9.3>)[#underline[\[UC9.3\]]]
  ],
  post: [
    - I dettagli tecnici e la proposta di risoluzione della remediation risultano visibili a video
  ],
  scenari: [
    - L'utente consulta le informazioni di dettaglio della remediation proposta per il codice sorgente
  ],
  specializzazione: [
    - #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una specifica remediation dalla lista dell'area codice",
)[]

=== UC31: Visualizzazione singola remediation riguardante l'analisi della sicurezza <UC31>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'elenco delle remediation nella sezione di analisi della sicurezza #link(<UC10.3>)[#underline[\[UC10.3\]]]
  ],
  post: [
    - Le specifiche della vulnerabilità e le azioni correttive di sicurezza risultano visibili a video
  ],
  scenari: [
    - L'utente consulta le informazioni di dettaglio della remediation proposta per la sicurezza
  ],
  specializzazione: [
    - #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una specifica remediation dalla lista dell'area sicurezza",
)[]

=== UC32: Visualizzazione singola remediation riguardante l'analisi della documentazione <UC32>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'elenco delle remediation nella sezione di analisi della documentazione #link(<UC11.3>)[#underline[\[UC11.3\]]]
  ],
  post: [
    - I rilievi sintattici e le proposte di integrazione documentale risultano visibili a video
  ],
  scenari: [
    - L'utente consulta le informazioni di dettaglio della remediation proposta per la documentazione
  ],
  specializzazione: [
    - #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una specifica remediation dalla lista dell'area documentazione",
)[]

=== UC33: Accettazione singola remediation riguardante l'analisi del codice <UC33>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation per il codice #link(<UC30>)[#underline[\[UC30\]]]
  ],
  post: [
    - Le modifiche suggerite risultano applicate alla codebase nel repository di riferimento
    - La dashboard mostra lo stato aggiornato della remediation come eseguita
  ],
  scenari: [
    - L'utente conferma l'applicazione della correzione automatica per il codice sorgente
  ],
  estensioni: [
    - #link(<UC33.0.1>)[#underline[\[UC33.0.1\]]] // Fallimento applicazione
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC18\]]]
  ],
  trigger: "L'utente impartisce il comando di accettazione della remediation per il codice",
)[]

==== UC33.0.1: Errore nell'applicazione della remediation codice <UC33.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha accettato la remediation #link(<UC33>)[#underline[\[UC33\]]]
  ],
  post: [
    - La codebase rimane invariata e l'utente visualizza un avviso di fallimento dell'operazione
  ],
  scenari: [
    - Rilevamento di un errore durante la fase di commit o di scrittura dei file sul repository remoto
  ],
  trigger: "Anomalia tecnica o diniego di scrittura da parte del provider esterno",
)[]

=== UC34: Rifiuto singola remediation riguardante l'analisi del codice <UC34>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation per il codice #link(<UC30>)[#underline[\[UC30\]]]
  ],
  post: [
    - La proposta correttiva viene scartata senza modificare la codebase
    - La dashboard visualizza la remediation come rifiutata o rimossa
  ],
  scenari: [
    - L'utente esprime il dissenso verso l'applicazione della remediation del codice
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di rifiuto della remediation del codice",
)[]

=== UC35: Accettazione singola remediation riguardante l'analisi della sicurezza <UC35>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation di sicurezza #link(<UC31>)[#underline[\[UC31\]]]
  ],
  post: [
    - Le patch di sicurezza o le configurazioni suggerite risultano persistite nel repository
    - La dashboard mostra l'avvenuta risoluzione della criticità
  ],
  scenari: [
    - L'utente conferma l'applicazione delle azioni correttive di sicurezza
  ],
  estensioni: [
    - #link(<UC35.0.1>)[#underline[\[UC35.0.1\]]]
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di accettazione della remediation di sicurezza",
)[]

==== UC35.0.1: Errore nell'applicazione della remediation sicurezza <UC35.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha accettato la remediation di sicurezza #link(<UC35>)[#underline[\[UC35\]]]
  ],
  post: [
    - Le vulnerabilità rimangono attive e l'utente riceve notifica del fallimento dell'operazione
  ],
  scenari: [
    - Fallimento della procedura di aggiornamento delle dipendenze o delle chiavi di sicurezza
  ],
  trigger: "Insuccesso tecnico durante il processo di hardening automatico",
)[]

=== UC36: Rifiuto singola remediation riguardante l'analisi della sicurezza <UC36>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation di sicurezza #link(<UC31>)[#underline[\[UC31\]]]
  ],
  post: [
    - La segnalazione di sicurezza viene ignorata senza apportare modifiche al repository
    - L'utente visualizza l'esito del rifiuto nella dashboard
  ],
  scenari: [
    - L'utente rifiuta esplicitamente la proposta di mitigazione della vulnerabilità
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di rifiuto della remediation di sicurezza",
)[]

=== UC37: Accettazione singola remediation riguardante l'analisi della documentazione <UC37>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation documentale #link(<UC32>)[#underline[\[UC32\]]]
  ],
  post: [
    - I file di documentazione nel repository risultano aggiornati e corretti secondo la proposta
    - La dashboard conferma l'avvenuta integrazione documentale
  ],
  scenari: [
    - L'utente conferma l'applicazione delle correzioni ai file documentali
  ],
  estensioni: [
    - #link(<UC37.0.1>)[#underline[\[UC37.0.1\]]]
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di accettazione della remediation documentale",
)[]

==== UC37.0.1: Errore nell'applicazione della remediation documentale <UC37.0.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha accettato la remediation documentale #link(<UC37>)[#underline[\[UC37\]]]
  ],
  post: [
    - La documentazione remota non subisce variazioni e viene visualizzato un errore di sincronizzazione
  ],
  scenari: [
    - Impossibilità di sovrascrivere o integrare i file Markdown/testuali sul repository
  ],
  trigger: "Errore di I/O o di permessi durante l'aggiornamento dei file di documentazione",
)[]

=== UC38: Rifiuto singola remediation riguardante l'analisi della documentazione <UC38>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation documentale #link(<UC32>)[#underline[\[UC32\]]]
  ],
  post: [
    - La documentazione del repository rimane invariata
    - L'utente visualizza l'esito del rifiuto nella dashboard
  ],
  scenari: [
    - L'utente rifiuta esplicitamente la proposta di miglioramento della documentazione
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di rifiuto della remediation documentale",
)[]

// --- GESTIONE REPOSITORY PRIVATI E AUTORIZZAZIONI (UC39 - UC45) ---

=== UC39: Richiesta analisi repository GitHub privato autorizzato <UC39>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente risulta autorizzato all'interazione con repository privati tramite integrazione GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente visualizza la sezione di configurazione dell'analisi
  ],
  post: [
    - La richiesta di analisi per il repository privato risulta presa in carico
  ],
  scenari: [
    - L'utente specifica l'URL del repository privato #link(<UC20.2>)[#underline[\[UC20.2\]]]
    - L'utente imposta le aree di interesse per l'audit #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente conferma l'invio della richiesta
  ],
  specializzazione: [
    - #link(<UC4>)[#underline[\[UC4\]]]
  ],
  trigger: "L'utente richiede una nuova analisi per un repository privato di cui non è proprietario",
)[]

=== UC40: Inserimento di un proprio repository privato <UC40>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha collegato il proprio profilo GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente visualizza l'area di gestione dei propri repository privati
  ],
  post: [
    - Il repository privato risulta registrato e disponibile per la gestione degli accessi
  ],
  scenari: [
    - L'utente fornisce l'URL del repository di sua proprietà #link(<UC20.2>)[#underline[\[UC20.2\]]]
    - L'utente conferma l'aggiunta della risorsa al catalogo personale
  ],
  estensioni: [
    - #link(<UC40.0.1>)[#underline[\[UC40.0.1\]]]
  ],
  trigger: "L'utente richiede l'inserimento di un repository privato personale nel sistema",
)[
  #useCaseDiagram("40", "UC40 - Inserimento repository privato")
]

==== UC40.0.1: Visualizzazione errore repository già presente <UC40.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'URL inserito corrisponde a una risorsa già censita per l'utente #link(<UC40>)[#underline[\[UC40\]]]
  ],
  post: [
    - L'operazione viene inibita per evitare duplicazioni dei dati
  ],
  scenari: [
    - L'utente visualizza un avviso che segnala la presenza del repository nel catalogo personale
  ],
  trigger: "Convalida di un URL già associato al profilo dell'utente",
)[]

=== UC41: Visualizzazione catalogo repository privati inseriti <UC41>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente dispone di una sessione attiva e ha collegato GitHub #link(<UC3>)[#underline[\[UC3\]]]
  ],
  post: [
    - L'utente visualizza l'elenco dei repository privati di sua proprietà registrati
  ],
  scenari: [
    - L'utente consulta la lista dei propri repository privati per identificarne uno specifico
  ],
  estensioni: [
    - #link(<UC41.0.1>)[#underline[\[UC41.0.1\]]]
  ],
  trigger: "L'utente accede alla sezione dedicata alla gestione dei propri repository",
)[]

==== UC41.0.1: Visualizzazione informativa catalogo vuoto <UC41.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente accede alla sezione ma non ha registrato alcuna risorsa #link(<UC41>)[#underline[\[UC41\]]]
  ],
  post: [
    - L'utente visualizza un'informativa circa l'assenza di repository inseriti
  ],
  scenari: [
    - L'utente riceve un suggerimento circa l'inserimento del primo repository privato personale
  ],
  trigger: "Recupero di una lista priva di elementi per il profilo avanzato",
)[]

=== UC42: Rimozione di un proprio repository privato <UC42>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il catalogo dei propri repository privati #link(<UC41>)[#underline[\[UC41\]]]
  ],
  post: [
    - La risorsa risulta rimossa e i relativi permessi di accesso risultano revocati per gli altri utenti
  ],
  scenari: [
    - L'utente seleziona la funzione di rimozione per un repository specifico
    - L'utente interagisce con la richiesta di conferma #link(<UC42.1>)[#underline[\[UC42.1\]]]
  ],
  inclusioni: [
    - #link(<UC42.1>)[#underline[\[UC42.1\]]]
  ],
  trigger: "L'utente richiede l'eliminazione di un repository dal catalogo personale",
)[]

==== UC42.1: Conferma rimozione repository <UC42.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - La procedura di rimozione è stata inizializzata #link(<UC42>)[#underline[\[UC42\]]]
  ],
  post: [
    - L'operazione di cancellazione viene confermata o annullata dall'utente
  ],
  scenari: [
    - L'utente esprime la volontà definitiva di procedere o desistere dalla rimozione
  ],
  estensioni: [
    - #link(<UC42.1.1>)[#underline[\[UC42.1.1\]]]
  ],
  trigger: "Visualizzazione dell'avviso di conferma eliminazione risorsa",
)[]

===== UC42.1.1: Annullamento rimozione repository <UC42.1.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza la richiesta di conferma #link(<UC42.1>)[#underline[\[UC42.1\]]]
  ],
  post: [
    - La risorsa rimane invariata nel catalogo dell'utente
  ],
  scenari: [
    - L'utente sceglie di non procedere con la rimozione definitiva
  ],
  trigger: "L'utente aziona il comando di annullamento dell'operazione di eliminazione",
)[]

=== UC43: Gestione permessi di accesso al repository privato <UC43>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha selezionato un repository dal proprio catalogo #link(<UC41>)[#underline[\[UC41\]]]
  ],
  post: [
    - L'utente visualizza l'elenco dei profili autorizzati alla consultazione dei report per la risorsa scelta
  ],
  scenari: [
    - L'utente visualizza la lista degli utenti autorizzati per il repository selezionato
  ],
  estensioni: [
    - #link(<UC43.0.1>)[#underline[\[UC43.0.1\]]]
  ],
  trigger: "L'utente richiede il dettaglio delle autorizzazioni per una risorsa specifica",
)[]

==== UC43.0.1: Visualizzazione informativa assenza utenti autorizzati <UC43.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'elenco delle autorizzazioni per il repository selezionato risulta vuoto #link(<UC43>)[#underline[\[UC43\]]]
  ],
  post: [
    - L'utente visualizza un messaggio circa l'assenza di profili terzi con accesso alla risorsa
  ],
  scenari: [
    - L'utente riceve l'informazione che l'accesso alla risorsa è limitato esclusivamente al proprietario
  ],
  trigger: "Recupero di una lista di autorizzazioni priva di profili esterni",
)[]

=== UC44: Aggiunta utente autorizzato <UC44>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza la gestione permessi di un repository #link(<UC43>)[#underline[\[UC43\]]]
  ],
  post: [
    - Il nuovo profilo risulta inserito nella lista degli utenti autorizzati per la risorsa specifica
  ],
  scenari: [
    - L'utente fornisce l'identificativo del profilo da autorizzare #link(<UC44.1>)[#underline[\[UC44.1\]]]
    - L'utente conferma l'abilitazione dell'accesso per l'utente inserito
  ],
  inclusioni: [
    - #link(<UC44.1>)[#underline[\[UC44.1\]]]
  ],
  trigger: "L'utente richiede l'estensione dei permessi di accesso a un altro utente della piattaforma",
)[]

==== UC44.1: Inserimento credenziale utente da autorizzare <UC44.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il campo di input per l'autorizzazione #link(<UC44>)[#underline[\[UC44\]]]
  ],
  post: [
    - L'identificativo inserito risulta acquisito e verificato come profilo esistente
  ],
  scenari: [
    - L'utente digita lo username o l'email del destinatario dell'autorizzazione
  ],
  estensioni: [
    #TODO("Estensioni da aggiungere")
    /*
    - #link(<UC44.1.1>)[#underline[\[UC44.1.1\]]] // Formato errato
    - #link(<UC44.1.2>)[#underline[\[UC44.1.2\]]] // Utente inesistente
    - #link(<UC44.1.3>)[#underline[\[UC44.1.3\]]] // Già autorizzato
    - #link(<UC44.1.4>)[#underline[\[UC44.1.4\]]] // Campo vuoto
    */
  ],
  trigger: "L'utente interagisce con il campo di ricerca profili per l'assegnazione dei permessi",
)[]

=== UC45: Rimozione utente autorizzato <UC45>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza la lista dei profili autorizzati per un repository #link(<UC43>)[#underline[\[UC43\]]]
  ],
  post: [
    - Il profilo selezionato perde i permessi di visualizzazione per i report del repository scelto
  ],
  scenari: [
    - L'utente richiede la revoca dell'accesso per un profilo specifico della lista
    - L'utente interagisce con la richiesta di conferma della revoca #link(<UC45.1>)[#underline[\[UC45.1\]]]
  ],
  inclusioni: [
    - #link(<UC45.1>)[#underline[\[UC45.1\]]]
  ],
  trigger: "L'utente richiede l'eliminazione di un profilo dalla lista degli autorizzati",
)[]

==== UC45.1: Conferma revoca autorizzazione <UC45.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - La procedura di revoca permessi è stata inizializzata #link(<UC45>)[#underline[\[UC45\]]]
  ],
  post: [
    - L'operazione di revoca viene confermata o annullata dall'utente proprietario
  ],
  scenari: [
    - L'utente esprime la volontà definitiva di procedere o desistere dalla revoca dei permessi
  ],
  estensioni: [
    Nessuna
  ],
  trigger: "Visualizzazione dell'avviso di conferma per la revoca dei permessi",
)[]

=== UC46: Rimozione di una raccolta di report <UC46>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'elenco delle proprie raccolte di report #link(<UC20>)[#underline[\[UC20\]]]
  ],
  post: [
    - La raccolta risulta rimossa dal profilo dell'utente
    - I report di analisi precedentemente contenuti nella raccolta rimangono persistiti nel sistema
  ],
  scenari: [
    - L'utente seleziona la funzione di rimozione per una specifica raccolta
    - L'utente interagisce con la richiesta di conferma dell'operazione #link(<UC46.1>)[#underline[\[UC46.1\]]]
  ],
  inclusioni: [
    - #link(<UC46.1>)[#underline[\[UC46.1\]]]
  ],
  trigger: "L'utente richiede l'eliminazione di una collezione di report dal proprio profilo",
)[]

==== UC46.1: Conferma rimozione raccolta <UC46.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La procedura di rimozione della raccolta è stata inizializzata #link(<UC46>)[#underline[\[UC46\]]]
  ],
  post: [
    - L'operazione di rimozione viene confermata o annullata dall'utente
  ],
  scenari: [
    - L'utente esprime la volontà definitiva di procedere o desistere dalla rimozione della raccolta
  ],
  estensioni: [
    - #link(<UC46.1.1>)[#underline[\[UC46.1.1\]]]
  ],
  trigger: "Visualizzazione dell'avviso di conferma rimozione collezione",
)[]

===== UC46.1.1: Annullamento rimozione raccolta <UC46.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la richiesta di conferma #link(<UC46.1>)[#underline[\[UC46.1\]]]
  ],
  post: [
    - La raccolta rimane invariata e visibile nel profilo dell'utente
  ],
  scenari: [
    - L'utente sceglie di non procedere con la rimozione della collezione
  ],
  trigger: "L'utente aziona il comando di annullamento dell'operazione",
)[]

=== UC47: Cancellazione profilo CodeGuardian <UC47>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha effettuato l'accesso alla piattaforma #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente visualizza la sezione di gestione avanzata del profilo
  ],
  post: [
    - Il profilo utente risulta eliminato in modo permanente
    - Tutte le associazioni OAuth e i dati personali risultano rimossi dai registri di persistenza
  ],
  scenari: [
    - L'utente richiede la cancellazione definitiva del proprio account
    - L'utente fornisce la password attuale per conferma identità #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - L'utente interagisce con l'avviso di conferma definitiva #link(<UC47.1>)[#underline[\[UC47.1\]]]
  ],
  inclusioni: [
    - #link(<UC15.1>)[#underline[\[UC15.1\]]]
    - #link(<UC47.1>)[#underline[\[UC47.1\]]]
  ],
  trigger: "L'utente richiede la chiusura permanente del proprio account CodeGuardian",
)[]

==== UC47.1: Conferma definitiva cancellazione profilo <UC47.1>
#useCase(
  attore: "Utente Autenticato",
  pre: [
    - L'utente ha superato la verifica dell'identità tramite password #link(<UC47>)[#underline[\[UC47\]]]
  ],
  post: [
    - L'operazione di eliminazione viene finalizzata con successo o annullata
  ],
  scenari: [
    - L'utente conferma la comprensione dell'irreversibilità dell'operazione e procede
  ],
  trigger: "Visualizzazione dell'avviso di avvertimento circa l'irreversibilità della cancellazione",
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
  [Il Sistema deve predisporre un comando di conferma per l'invio del modulo di registrazione.], 
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx], 
  [Il Sistema deve permettere la finalizzazione della registrazione solo a seguito della validazione positiva di tutti i campi obbligatori.], 
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx], 
  [Il Sistema deve persistere le credenziali dell'utente a seguito del completamento della procedura.], 
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx], 
  [Il Sistema deve memorizzare le chiavi di accesso esclusivamente in forma cifrata tramite algoritmi di hashing sicuri e l'utilizzo di salt.], 
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // --- CAMPI MANCANTI (UC1.0.1) ---
  [#FRObx], 
  [Il Sistema deve rilevare il tentativo di invio del modulo di registrazione in presenza di campi obbligatori vuoti.], 
  [#link(<UC1.0.1>)[#underline[\[UC1.0.1\]]]],

  [#FRObx], 
  [Il Sistema deve inibire la registrazione e notificare l'utente indicando specificamente quali dati obbligatori non sono stati inseriti.], 
  [#link(<UC1.0.1>)[#underline[\[UC1.0.1\]]]],

  // --- DETTAGLI INPUT (UC1.1 - UC1.3) ---
  [#FRObx], 
  [Il Sistema deve consentire l'immissione di un username alfanumerico con lunghezza compresa tra 4 e 20 caratteri.], 
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  [#FRObx], 
  [Il Sistema deve verificare l'univocità dello username rispetto agli account esistenti nel database.], 
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  [#FRObx], 
  [Il Sistema deve consentire l'immissione di un indirizzo email conforme agli standard sintattici RFC.], 
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRObx], 
  [Il Sistema deve verificare l'univocità dell'indirizzo email all'interno della piattaforma.], 
  [#link(<UC1.2.2>)[#underline[\[UC1.2.2\]]]],

  [#FRObx], 
  [Il Sistema deve consentire l'immissione di una password conforme ai criteri di complessità e sicurezza stabiliti.], 
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  // --- AUTENTICAZIONE (UC2) ---
  [#FRObx], 
  [Il Sistema deve consentire all'Utente non autenticato l'accesso alla sezione di autenticazione (Login).], 
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx], 
  [Il Sistema deve predisporre un comando di conferma per finalizzare la procedura di accesso.], 
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx], 
  [Il Sistema deve garantire l'accesso alle funzionalità riservate esclusivamente a seguito di una corretta validazione delle credenziali.], 
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx], 
  [Il Sistema deve utilizzare protocolli di comunicazione sicuri (HTTPS) per il trasferimento delle credenziali durante il login.], 
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx], 
  [Il Sistema deve implementare meccanismi di rate limiting o lockout temporaneo a seguito di ripetuti tentativi di autenticazione falliti.], 
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx], 
  [Il Sistema deve rilevare campi incompleti nel login e inibire l'accesso notificando l'utente tramite avviso specifico.], 
  [#link(<UC2.0.1>)[#underline[\[UC2.0.1\]]]],

  [#FRObx], 
  [Il Sistema deve notificare l'utente qualora l'identificativo (username) inserito non risulti censito nel sistema.], 
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

  [#FRObx], 
  [Il Sistema deve notificare l'utente qualora la password inserita non corrisponda a quella registrata.], 
  [#link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

  // --- INTEGRAZIONE GITHUB (UC3) ---
  [#FRObx], 
  [Il Sistema deve consentire all'Utente Autorizzato l'accesso alla sezione dedicata al collegamento del profilo GitHub.], 
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx], 
  [Il Sistema deve mostrare un avviso informativo obbligatorio prima di procedere al reindirizzamento verso il dominio esterno.], 
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRObx], 
  [Il Sistema deve consentire all'utente di confermare la volontà di procedere con il collegamento esterno.], 
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRObx], 
  [Il Sistema deve consentire all'utente di annullare il reindirizzamento tornando alla sezione integrazioni.], 
  [#link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],

  [#FRObx], 
  [Il Sistema deve autorizzare l'interazione con i repository dell'utente dopo il completamento con successo dell'associazione.], 
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx], 
  [Il Sistema deve memorizzare i token di accesso ottenuti da GitHub esclusivamente in forma cifrata all'interno del database.], 
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx], 
  [Il Sistema deve notificare l'utente qualora la procedura di sincronizzazione fallisca per anomalie tecniche nella ricezione dei dati.], 
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  [#FRObx], 
  [Il Sistema deve inibire il collegamento qualora il profilo GitHub risulti già associato a un altro account CodeGuardian.], 
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRObx], 
  [Il Sistema deve mostrare un messaggio di errore specifico qualora l'utente neghi il consenso alla condivisione dei dati su GitHub.], 
  [#link(<UC3.2.3>)[#underline[\[UC3.2.3\]]]],

  // --- RICHIESTA ANALISI (UC4) ---
  [#FRObx], 
  [Il Sistema deve consentire l'accesso alla sezione di configurazione dell'analisi e l'immissione dell'URL del repository.], 
  [#link(<UC4>)[#underline[\[UC4\]]]],
/*
  [#FRObx], 
  [Il Sistema deve validare che l'URL del repository GitHub inserito utilizzi il protocollo 'https://' e il dominio 'github.com'.], 
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRObx], 
  [Il Sistema deve inibire l'invio della richiesta e notificare l'utente qualora il repository risulti inesistente o non accessibile.], 
  [#link(<UC4.1.2>)[#underline[\[UC4.1.2\]]]],

  [#FRObx], 
  [Il Sistema deve inibire la procedura di analisi e notificare l'utente qualora il campo URL non venga compilato.], 
  [#link(<UC4.1.3>)[#underline[\[UC4.1.3\]]]],
*/
  [#FRObx], 
  [Il Sistema deve permettere la selezione multipla delle aree di interesse tra test, sicurezza e documentazione.], 
  [#link(<UC4.1>)[#underline[\[UC4.1\]]]],

  [#FRObx], 
  [Il Sistema deve inibire la richiesta di analisi qualora non venga selezionata almeno un'area di interesse.], 
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  [#FRObx], 
  [Il Sistema deve validare lato server la titolarità dell'utente sul repository GitHub prima di avviare l'analisi.], 
  [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx], 
  [Il Sistema deve impedire l'avvio di una nuova analisi e informare l'utente se il report esistente risulta già aggiornato.], 
  [#link(<UC4.0.1>)[#underline[\[UC4.0.1\]]]],

  [#FRObx], 
  [Il Sistema deve impedire l'invio di una nuova richiesta se un'analisi per il medesimo repository è già in fase di elaborazione.], 
  [#link(<UC4.0.2>)[#underline[\[UC4.0.2\]]]],

  // --- VISUALIZZAZIONE LISTA (UC5) ---
  [#FRObx], 
  [Il Sistema deve consentire la navigazione verso la sezione riepilogativa dei repository analizzati.], 
  [#link(<UC5>)[#underline[\[UC5\]]]],

  [#FRObx], 
  [Il Sistema deve esporre per ogni elemento della lista: nome del repository, URL di riferimento e data dell'ultima analisi.], 
  [#link(<UC5.1>)[#underline[\[UC5.1\]]]],

  [#FRObx], 
  [Il Sistema deve inibire la visualizzazione della tabella e mostrare un'informativa specifica qualora non risultino repository analizzati.], 
  [#link(<UC5.0.1>)[#underline[\[UC5.0.1\]]]],

  // --- VISUALIZZAZIONE REPORT (UC6) ---
  [#FRObx], 
  [Il Sistema deve consentire la selezione di un repository dalla lista per aprirne il report di dettaglio.], 
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx], 
  [Il Sistema deve permettere di filtrare la visualizzazione delle aree analitiche (Codice, Sicurezza, Documentazione).], 
  [#link(<UC6.1>)[#underline[\[UC6.1\]]]],

  [#FRObx], 
  [Il Sistema deve inibire il rendering dei risultati e mostrare un avviso informativo se nessuna area è selezionata.], 
  [#link(<UC6.1.1>)[#underline[\[UC6.1.1\]]]],

  [#FRObx], 
  [Il Sistema deve esporre il timestamp (data e ora) relativo al completamento dell'attività di audit.], 
  [#link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]],

  [#FRObx], 
  [Il Sistema deve visualizzare l'identificativo univoco (hash) del commit GitHub oggetto dell'analisi.], 
  [#link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]],

  [#FRObx], 
  [Il Sistema deve indicare lo username dell'Utente Autorizzato che ha sottomesso la richiesta di analisi.], 
  [#link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]],

  [#FRObx], 
  [Il Sistema deve esporre metriche tecniche e criticità rilevate per le sezioni selezionate dall'utente.], 
  [#link(<UC6.3>)[#underline[\[UC6.3\]]]],

  [#FRObx], 
  [Il Sistema deve presentare la lista delle azioni correttive (remediation) suggerite per i difetti individuati.], 
  [#link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]],

  [#FRObx], 
  [Il Sistema deve mostrare un messaggio di esito positivo (assenza di criticità) qualora non risultino remediation necessarie.], 
  [#link(<UC6.3.1.1>)[#underline[\[UC6.3.1.1\]]]],

  // --- CONFRONTO STORICO (UC7) ---
  [#FRObx], 
  [Il Sistema deve consentire la selezione di un intervallo temporale (data inizio e data fine) per l'analisi comparativa.], 
  [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx], 
  [Il Sistema deve predisporre un comando di conferma per aggiornare la vista di confronto tra i report selezionati.], 
  [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx], 
  [Il Sistema deve notificare l'utente tramite avviso qualora i campi relativi all'intervallo temporale non siano popolati.], 
  [#link(<UC7.0.1>)[#underline[\[UC7.0.1\]]]],

  [#FRObx], 
  [Il Sistema deve mostrare un'informativa specifica qualora non risultino report archiviati all'interno del periodo selezionato.], 
  [#link(<UC7.0.2>)[#underline[\[UC7.0.2\]]]],

  [#FRObx], 
  [Il Sistema deve validare la coerenza cronologica dell'intervallo, segnalando come errore una data di inizio successiva a quella di fine.], 
  [#link(<UC7.0.3>)[#underline[\[UC7.0.3\]]]],

  [#FRObx], 
  [Il Sistema deve inibire la richiesta se l'intervallo temporale selezionato eccede l'ampiezza massima prevista.], 
  [#link(<UC7.0.4>)[#underline[\[UC7.0.4\]]]],

  // --- METRICHE COMPARATIVE (UC8) ---
  [#FRDex], 
  [Il Sistema deve generare rappresentazioni grafiche per monitorare l'andamento delle metriche tra i report inclusi nell'intervallo temporale.], 
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRDex], 
  [Il Sistema deve permettere l'interazione con gli elementi del grafico per l'esposizione dei dati puntuali relativi a ogni singola analisi.], 
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRDex], 
  [Il Sistema deve predisporre una tabella comparativa per il confronto testuale dei dati estratti dai report selezionati.], 
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRDex], 
  [Il Sistema deve calcolare e visualizzare, all'interno della tabella, gli indicatori di variazione (trend) rispetto all'analisi cronologicamente precedente.], 
  [#link(<UC8>)[#underline[\[UC8\]]]],

  // --- ANALISI DEL CODICE (UC9) ---
  [#FRObx], 
  [Il Sistema deve consentire la visualizzazione della sezione del report dedicata alla qualità del codice sorgente.], 
  [#link(<UC9>)[#underline[\[UC9\]]]],

  [#FRObx], 
  [Il Sistema deve esporre i risultati dell'analisi statica, specificando bug, vulnerabilità sintattiche e code smell rilevati.], 
  [#link(<UC9.1>)[#underline[\[UC9.1\]]]],

  [#FRObx], 
  [Il Sistema deve esporre le metriche di copertura dei test di unità e l'esito complessivo delle suite di test eseguite.], 
  [#link(<UC9.2>)[#underline[\[UC9.2\]]]],

  [#FRObx], 
  [Il Sistema deve presentare l'elenco delle azioni correttive (remediation) specifiche per i difetti del codice individuati.], 
  [#link(<UC9.3>)[#underline[\[UC9.3\]]]],

  [#FRObx], 
  [Il Sistema deve mostrare un'informativa di esito positivo qualora non risultino remediation necessarie per l'area del codice sorgente.], 
  [#link(<UC9.3.1>)[#underline[\[UC9.3.1\]]]],

  // --- ANALISI DELLA SICUREZZA (UC10) ---
  [#FRObx],
  [Il Sistema deve consentire la visualizzazione della sezione del report dedicata alla sicurezza del repository.],
  [#link(<UC10>)[#underline[\[UC10\]]]],

  [#FRObx],
  [Il Sistema deve esporre i risultati dell'analisi delle librerie, indicando dipendenze obsolete o affette da vulnerabilità note (CVE).],
  [#link(<UC10.1>)[#underline[\[UC10.1\]]]],

  [#FRObx],
  [Il Sistema deve mostrare i rilievi di conformità rispetto agli standard di sicurezza OWASP.],
  [#link(<UC10.2>)[#underline[\[UC10.2\]]]],

  [#FRObx],
  [Il Sistema deve presentare l'elenco delle azioni correttive (remediation) specifiche per le vulnerabilità rilevate.],
  [#link(<UC10.3>)[#underline[\[UC10.3\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un'informativa di esito positivo qualora non risultino minacce alla sicurezza che richiedano remediation.],
  [#link(<UC10.3.1>)[#underline[\[UC10.3.1\]]]],

// --- ANALISI DELLA DOCUMENTAZIONE (UC11) ---
  [#FRObx],
  [Il Sistema deve consentire la visualizzazione della sezione del report dedicata alla qualità della documentazione.],
  [#link(<UC11>)[#underline[\[UC11\]]]],

  [#FRObx],
  [Il Sistema deve esporre gli errori sintattici rilevati nei file di documentazione (es. Markdown malformato o link interrotti).],
  [#link(<UC11.1>)[#underline[\[UC11.1\]]]],

  [#FRObx],
  [Il Sistema deve mostrare le metriche di completezza della documentazione in relazione alle interfacce e alle componenti del codice.],
  [#link(<UC11.2>)[#underline[\[UC11.2\]]]],

  [#FRObx],
  [Il Sistema deve presentare l'elenco delle azioni correttive (remediation) per il miglioramento della documentazione.],
  [#link(<UC11.3>)[#underline[\[UC11.3\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un'informativa di esito positivo qualora la documentazione risulti completa e priva di errori.],
  [#link(<UC11.3.1>)[#underline[\[UC11.3.1\]]]],

  // --- RANKING REPOSITORY (UC12) ---
  [#FRObx],
  [Il Sistema deve generare una graduatoria dei repository analizzati associati all'Utente Autorizzato.],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRObx],
  [Il Sistema deve ordinare i repository in modo decrescente in base al punteggio di qualità globale ottenuto.],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRObx],
  [Il Sistema deve esporre, per ogni elemento del ranking, il punteggio calcolato e le relative metriche di sintesi.],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRObx],
  [Il Sistema deve inibire la visualizzazione della classifica e mostrare un avviso specifico qualora l'utente non abbia analisi concluse.],
  [#link(<UC12.1>)[#underline[\[UC12.1\]]]],

  // --- DISCONNESSIONE GITHUB (UC13) ---
  [#FRObx], 
  [Il Sistema deve consentire all'Utente Avanzato l'accesso alla sezione per la rimozione del collegamento con l'account GitHub.], 
  [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx], 
  [Il Sistema deve predisporre un comando di conferma per la finalizzazione della disconnessione dell'account GitHub.], 
  [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx], 
  [Il Sistema deve revocare i token di accesso e rimuovere l'associazione tra il profilo utente e l'identità GitHub a seguito della conferma.], 
  [#link(<UC13>)[#underline[\[UC13\]]]],

  // --- ESPORTAZIONE REPORT (UC14) ---
  [#FRDex], 
  [Il Sistema deve consentire l'avvio della procedura di esportazione dei dati del report di analisi tramite comando dedicato.], 
  [#link(<UC14>)[#underline[\[UC14\]]]],

  [#FRDex], 
  [Il Sistema deve permettere la selezione di un formato di output valido (es. PDF, JSON) per il file di esportazione.], 
  [#link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#FRDex], 
  [Il Sistema deve mostrare un'informativa di errore e inibire la generazione del file qualora l'utente non selezioni alcun formato.], 
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],

  [#FRDex], 
  [Il Sistema deve predisporre un comando di conferma finale per l'attivazione del processo di generazione e download del report.], 
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  [#FRDex], 
  [Il Sistema deve eseguire il parsing dei dati analitici e produrre un documento coerente con il formato selezionato dall'utente.], 
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  // --- MODIFICA PASSWORD (UC15) ---
  [#FRObx], 
  [Il Sistema deve consentire all'Utente Autorizzato l'accesso alla sezione dedicata alla modifica della chiave di accesso.], 
  [#link(<UC15>)[#underline[\[UC15\]]]],

  [#FRObx], 
  [Il Sistema deve permettere l'immissione della password attualmente in uso per finalità di verifica della titolarità.], 
  [#link(<UC15.1>)[#underline[\[UC15.1\]]]],

  [#FRObx], 
  [Il Sistema deve segnalare l'obbligatorietà del campo e impedire la modifica qualora la password corrente non venga inserita.], 
  [#link(<UC15.1.1>)[#underline[\[UC15.1.1\]]]],

  [#FRObx], 
  [Il Sistema deve inibire la procedura di aggiornamento e notificare l'utente qualora la password attuale inserita sia errata.], 
  [#link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]],

  [#FRObx], 
  [Il Sistema deve consentire l'immissione di una nuova chiave di accesso.], 
  [#link(<UC15.2>)[#underline[\[UC15.2\]]]],

  [#FRObx], 
  [Il Sistema deve rilevare e segnalare il mancato inserimento della nuova password durante la fase di conferma.], 
  [#link(<UC15.2.1>)[#underline[\[UC15.2.1\]]]],

  [#FRObx], 
  [Il Sistema deve validare che la nuova password rispetti i criteri di complessità (lunghezza, caratteri speciali, numeri) stabiliti.], 
  [#link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]],

  [#FRObx], 
  [Il Sistema deve verificare che la nuova password sia differente da quella attualmente attiva e segnalare l'eventuale identità.], 
  [#link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]],

  [#FRObx], 
  [Il Sistema deve predisporre un comando di conferma per l'invio della richiesta di aggiornamento delle credenziali.], 
  [#link(<UC15.3>)[#underline[\[UC15.3\]]]],

  [#FRObx], 
  [Il Sistema deve mostrare un messaggio di feedback esplicito a seguito della corretta persistenza della nuova password.], 
  [#link(<UC15.4>)[#underline[\[UC15.4\]]]],
  
  //UC16
  [#FRObx], 
  [L'Utente deve poter visualizzare i dettagli di una singola remediation], 
  [#link(<UC16>)[#underline[\[UC16\]]]],

  //UC17
  [#FRObx],
  [Il sistema deve essere in grado di prendere in carico la richiesta di verifica dell'accessibilità del repository],
  [#link(<UC17>)[#underline[\[UC17\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di stabilire la connessione con GitHub],
  [#link(<UC17>)[#underline[\[UC17\]]])],

  [#FRObx],
  [Il sistema deve poter avviare la procedura di verifica dell'accessibilitá di un repository da parte di un account GitHub specifico],
  [#link(<UC17.1>)[#underline[\[UC17.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di rilevare l'eventuale errore di comunicazione con GitHub],
  [#link(<UC17.1.1>)[#underline[\[UC17.1.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di cercare il repository],
  [#link(<UC17.2>)[#underline[\[UC17.2\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di trovare il repository tramite token in caso esso sia privato],
  [#link(<UC17.2.1>)[#underline[\[UC17.2.1\]]]],

  [#FRObx],
  [Il sistema deve rilevare e comunicare un errore in caso non ci sia stato modo di accedere al repository],
  [#link(<UC17.2.1.1>)[#underline[\[UC17.2.1.1\]]]],

  [#TODO("Requisiti commentati")],[],[],
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

  //UC18
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di visualizzazione delle remediation],
  [#link(<UC18>)[#underline[\[UC18\]]] #link(<UC19>)[#underline[\[UC19\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation proposta],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare la remediation proposta],
  [#link(<UC19>)[#underline[\[UC19\]]]],

  
  //UC21
  /*[#FROpx],
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

  //UC20
  [#FRObx], 
  [Deve essere suggerito refactoring del codice], 
  [#link(<UC20>)[#underline[\[UC20\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare i suggerimenti di refactoring],
  [#link(<UC20>)[#underline[\[UC20\]]]], 

  [#FROpx],
  [I refactor devono poter essere applicati automaticamente sotto supervisione],
  [#link(<UC20.1>)[#underline[\[UC20.1\]]]],
*/
  //UC20
  [#FROpx], 
  [Devono poter essere programmati dei report periodici di uno specifico repository], 
  [#link(<UC20>)[#underline[\[UC20\]]]],

  [#FROpx],
  [L'Utente deve poter configurare la periodicitá dei report periodici],
  [#link(<UC20.1>)[#underline[\[UC20.1\]]]],

  [#FROpx],
  [All'utente deve essere impedito di non inserire un valore di periodicità per i report periodici],
  [#link(<UC20.1.1>)[#underline[\[UC20.1.1\]]]],

  [#FROpx],
  [L'utente deve poter configurare delle soglie per gli alert critici],
  [#link(<UC20.2>)[#underline[\[UC20.2\]]]],
  
  [#FROpx],
  [All'utente deve essere impedito di non inserire un valore di soglia per gli alert critici],
  [#link(<UC20.2.1>)[#underline[\[UC20.2.1\]]]],

  //UC21
  [#FRObx],
  [Il sistema deve poter avviare il processo di analisi contattando i servizi per la clonazione del repository],
  [#link(<UC21>)[#underline[\[UC21\]]]],

  [#FRObx],
  [Il sistema deve poter avviare il processo di analisi contattando i servizi per l'analisi della documentazione],
  [#link(<UC21>)[#underline[\[UC21\]]]],

  [#FRObx],
  [Il sistema deve poter avviare il processo di analisi contattando i servizi per l'analisi degli standard OWASP],
  [#link(<UC21>)[#underline[\[UC21\]]]],

  //UC21
  [#FRObx],
  [Il sistema deve poter richiedere la clonazione del repository ad un servizio AWS ceh gestirá la clonazione],
  [#link(<UC21.1>)[#underline[\[UC21.1\]]]],

  [#FRObx],
  [Il sistema deve gestire gli errori durante la richiesta di clonazione di un repository],
  [#link(<UC21.1.1>)[#underline[\[UC21.1.1\]]]],

  [#FRObx],
  [Il sistema deve poter richiedere l'analisi del codice ad uno strumento di analisi esterno],
  [#link(<UC21.2>)[#underline[\[UC21.2\]]]],

  [#FRObx],
  [Il sistema deve poter trasmettere dei file ad uno strumento di analisi del codice esterno],
  [#link(<UC21.2>)[#underline[\[UC21.2\]]]],

  [#FRObx],
  [Il sistema deve poter richiedere l'analisi della documentazione ad uno strumento di analisi esterno],
  [#link(<UC21.3>)[#underline[\[UC21.3\]]]],

  [#FRObx],
  [Il sistema deve trasmettere dei file o l'intera codebase ad uno strumento di analisi della documentazione esterno],
  [#link(<UC21.3>)[#underline[\[UC21.3\]]]],

  [#FRObx],
  [Il sistema deve poter richiedere l'analisi degli standard OWASP ad uno strumento di analisi esterno],
  [#link(<UC21.4>)[#underline[\[UC21.4\]]]],

  [#FRObx],
  [Il sistema deve trasmettere dei file o l'intera codebase ad uno strumento di analisi degli standard OWASP esterno],
  [#link(<UC21.4>)[#underline[\[UC21.4\]]]],

  //UC22
  [#FRObx],
  [Il sistema deve salvare lo stato dell'analisi come "pending" nel sistema di persistenza],
  [#link(<UC22>)[#underline[\[UC22\]]]],

  [#FRObx],
  [Il sistema deve associare lo stato dell'analisi al repository e all'utente richiedente],
  [#link(<UC22>)[#underline[\[UC22\]]]],

/*
  [#FRObx],
  [Il sistema deve notificare l'utente qualora si verifichi un errore durante il salvataggio dello stato nel sistema di persistenza],
  [#link(<UC22.1>)[#underline[\[UC22.1\]]]],
*/
  //UC23
  [#FRObx],
  [Il sistema deve attendere il completamento dell'elaborazione da parte di tutti gli strumenti di analisi],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  [#FRObx],
  [Il sistema deve poter recuperare i risultati da ciascuno strumento di analisi],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  [#FRObx],
  [Il sistema deve gestire il fallimento di uno o più strumenti di analisi notificando l'utente],
  [#link(<UC23.1>)[#underline[\[UC23.1\]]]],

  [#FRObx],
  [Il sistema deve continuare con i risultati disponibili anche se uno strumento fallisce],
  [#link(<UC23.1>)[#underline[\[UC23.1\]]]],

  //UC24
  [#FRObx],
  [Il sistema deve generare un report complessivo aggregando i risultati di tutti gli strumenti],
  [#link(<UC24>)[#underline[\[UC24\]]]],

  [#FRObx],
  [Il report deve contenere tutte le metriche e le criticità rilevate dalle diverse analisi],
  [#link(<UC24>)[#underline[\[UC24\]]]],

  //UC25
  [#FRObx],
  [Il sistema deve persistere il report finale nel sistema di persistenza con lo stato "completed"],
  [#link(<UC25>)[#underline[\[UC25\]]]],

  [#FRObx],
  [Il report deve essere associato correttamente al repository e all'utente richiedente],
  [#link(<UC25>)[#underline[\[UC25\]]]],

  [#FRObx],
  [Il sistema deve notificare l'utente qualora si verifichi un errore durante il salvataggio del report],
  [#link(<UC25.1>)[#underline[\[UC25.1\]]]],

  //UC26
  [#FRObx],
  [Il sistema deve inviare una notifica all'utente al completamento dell'analisi],
  [#link(<UC26>)[#underline[\[UC26\]]]],

  [#FRObx],
  [La notifica deve contenere l'indicazione della disponibilità del nuovo report],
  [#link(<UC26>)[#underline[\[UC26\]]]],

  [#FRObx],
  [Il sistema deve gestire l'eventuale fallimento dell'invio della notifica],
  [#link(<UC26.1>)[#underline[\[UC26.1\]]]],

  //UC27
  [#FRObx],
  [L'Utente deve ricevere la notifica di completamento dell'analisi],
  [#link(<UC27>)[#underline[\[UC27\]]]],

  [#FRObx],
  [L'Utente deve poter accedere al report tramite la sezione dedicata dopo la ricezione della notifica],
  [#link(<UC27>)[#underline[\[UC27\]]]],
/*
  [#FRObx],
  [Il sistema deve permettere all'utente di visualizzare il report anche nel caso in cui la notifica non venga ricevuta],
  [#link(<UC27.1>)[#underline[\[UC27.1\]]]],
*/
  //UC28
  [#FRObx],
  [Il sistema deve scambiare il codice OAuth temporaneo con un token di accesso persistente],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [Il token di accesso deve essere memorizzato in modo cifrato nel sistema di persistenza],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [Il token deve essere associato correttamente all'account utente],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare titolo della remediation del codice],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la descrizione della remediation del codice],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il tipo di criticità affrontata dalla remediation del codice],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la severity della criticità affrontata dalla remediation del codice],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare titolo della remediation della sicurezza],
  [#link(<UC30>)[#underline[\[UC30\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la descrizione della remediation della sicurezza],
  [#link(<UC30>)[#underline[\[UC30\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il tipo di criticità affrontata dalla remediation della sicurezza],
  [#link(<UC30>)[#underline[\[UC30\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la severity della criticità affrontata dalla remediation della sicurezza],
  [#link(<UC30>)[#underline[\[UC30\]]]],


  //UC30
  [#FRObx],
  [L'Utente deve poter visualizzare titolo della remediation della documentazione],
  [#link(<UC31>)[#underline[\[UC31\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la descrizione della remediation della documentazione],
  [#link(<UC31>)[#underline[\[UC31\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il tipo di criticità affrontata dalla remediation della documentazione],
  [#link(<UC31>)[#underline[\[UC31\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare la severity della criticità affrontata dalla remediation della documentazione],
  [#link(<UC31>)[#underline[\[UC31\]]]],

  //UC32
  [#FRObx],
  [L'Utente deve poter visualizzare il codice correttivo proposto per la remediation del codice],
  [#link(<UC32>)[#underline[\[UC32\]]] #link(<UC33>)[#underline[\[UC33\]]]],

  [#FRObx],
  [Il sistema deve visualizzare un'anteprima delle modifiche che verranno apportate al repository],
  [#link(<UC32>)[#underline[\[UC32\]]] #link(<UC33>)[#underline[\[UC33\]]]],

  [#FRObx],
  [Il sistema deve permettere all'utente di confermare le modifiche che verranno apportate al repository],
  [#link(<UC32>)[#underline[\[UC32\]]] #link(<UC34>)[#underline[\[UC34\]]] #link(<UC36>)[#underline[\[UC36\]]]],

  [#FRObx],
  [L'Utente deve ricevere una conferma dell'applicazione della remediation del codice],
  [#link(<UC32>)[#underline[\[UC32\]]]],

  [#FRObx],
  [L'Utente deve ricevere una conferma della non applicazione della remediation del codice],
  [#link(<UC33>)[#underline[\[UC33\]]]],

  //UC34
  [#FRObx],
  [L'Utente deve poter visualizzare il codice correttivo proposto per la remediation della sicurezza],
  [#link(<UC34>)[#underline[\[UC34\]]]],

  [#FRObx],
  [Il sistema deve visualizzare un'anteprima delle modifiche che verranno apportate al repository per la remediation della sicurezza],
  [#link(<UC34>)[#underline[\[UC34\]]]],

  [#FRObx],
  [Il sistema deve permettere all'utente di rifiutare le modifiche che verranno apportate al repository],
  [#link(<UC34>)[#underline[\[UC34\]]] #link(<UC35>)[#underline[\[UC35\]]] #link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [L'Utente deve ricevere una conferma dell'applicazione della remediation della sicurezza],
  [#link(<UC34>)[#underline[\[UC34\]]]],

  //UC34 - UC35
  [#FRObx],
  [L'Utente deve poter rifiutare le remediation della sicurezza proposte],
  [#link(<UC35>)[#underline[\[UC35\]]]],

  //UC36 - UC37
  [#FRObx],
  [L'Utente deve poter visualizzare il testo correttivo proposto per la remediation della documentazione],
  [#link(<UC36>)[#underline[\[UC36\]]]],

  [#FRObx],
  [Il sistema deve visualizzare un'anteprima delle modifiche che verranno apportate al repository per la remediation della documentazione],
  [#link(<UC36>)[#underline[\[UC36\]]]],

  [#FRObx],
  [L'Utente deve ricevere una conferma della non applicazione della remediation della documentazione],
  [#link(<UC37>)[#underline[\[UC37\]]]],


  //UC37
  

  //UC29

  //UC25

  //UC23

  //UC24

  //UC25

  //UC26

  //UC27

  //UC36

  //UC37

  //UC36
  // 
  /*
  [#FRObx],
  [Il sistema Back-end deve permettere alIl sistema di richiedere il salvataggio del report di analisi],
  [#link(<UC36>)[#underline[\[UC36\]]]],

  [#FRObx],
  [Il sistema Back-end deve archiviare in modo permanente il report finale nel sistema di persistenza],
  [#link(<UC36>)[#underline[\[UC36\]]]],

  [#FRObx],
  [Il sistema deve poter notificare al Front-end l'impossibilità di salvare il report in caso di errore interno],
  [#link(<UC36.1>)[#underline[\[UC36.1\]]]],
  */
  //UC23
  [#FRObx],
  [Il sistema deve poter elaborare i dati dei singoli agenti per calcolare metriche statistiche globali],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  [#FRObx],
  [Il sistema Back-end deve poter memorizzare le metriche aggregate per consentire la visualizzazione di grafici e tabelle],
  [#link(<UC23>)[#underline[\[UC23\]]]],

  [#FRObx],
  [Il sistema deve poter segnalare al Front-end il mancato aggiornamento delle metriche in caso di errore del Back-end],
  [],//#link(<UC23.2>)[#underline[\[UC23.2\]]]],

  //UC28
  [#FRObx],
  [Il sistema Front-end deve poter scambiare il codice OAuth GitHub con un token di accesso persistente],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [Il sistema Back-end deve associare il token di accesso GitHub al profilo dell'utente nel sistema di persistenza],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [L'Utente deve essere notificato se il sistema GitHub non da l'autorizzazione durante lo scambio del codice OAuth],
  [#link(<UC28>)[#underline[\[UC28\]]]],

    //UC28ex
/*[#FRObx],
  [Il sistema Front-end deve poter trasmettere in modo sicuro le credenziali al sistema Back-end],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il trasferimento delle credenziali non avviene],
  [#link(<UC28.1>)[#underline[\[UC28.1\]]]], */

  //UC29
  [#FRObx],
  [L'Utente deve poter visualizzare i dettagli di una singola remediation nella sezione di analisi del codice],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  //UC30
  [#FRObx],
  [L'Utente deve poter visualizzare i dettagli di una singola remediation nella sezione di analisi della sicurezza],
  [#link(<UC30>)[#underline[\[UC30\]]]],
  
  //UC31
  [#FRObx],
  [L'Utente deve poter visualizzare i dettagli di una singola remediation nella sezione di analisi della documentazione],
  [#link(<UC31>)[#underline[\[UC31\]]]],

  //UC32
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di gestione di remediation riguardante l'analisi del codice],
  [#link(<UC32>)[#underline[\[UC32\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation riguardante l'analisi del codice proposta],
  [#link(<UC32>)[#underline[\[UC32\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation riguardante l'analisi del codice],
  [#link(<UC32>)[#underline[\[UC32\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare la remediation riguardante l'analisi del codice proposta],
  //[#link(<UC32.1>)[#underline[\[UC32.1\]]]],

  [#FRDex],
  [L'Utente deve poter annullare l'operazione di accettazione di remediation riguardante l'analisi del codice],
  //[#link(<UC32.2>)[#underline[\[UC32.2\]]]],

  //UC33
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di gestione di remediation riguardante l'analisi della sicurezza],
  [#link(<UC33>)[#underline[\[UC33\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation riguardante l'analisi della sicurezza proposta],
  [#link(<UC33>)[#underline[\[UC33\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation riguardante l'analisi della sicurezza],
  [#link(<UC33>)[#underline[\[UC33\]]]],

  [#FRDex],
  [L'Utente deve poter rifiutare la remediation riguardante l'analisi della sicurezza proposta],
  //[#link(<UC33.1>)[#underline[\[UC33.1\]]]],

  [#FRDex],
  [L'Utente deve poter annullare l'operazione di accettazione di remediation riguardante l'analisi della sicurezza],
  //[#link(<UC33.2>)[#underline[\[UC33.2\]]]],

  //UC34
  [#FRDex],
  [L'Utente deve poter interagire con la sezione di gestione di remediation riguardante l'analisi della documentazione],
  //[#link(<UC34>)[#underline[\[UC34\]]]],
  
  [#FRDex],
  [L'Utente deve poter accettare la remediation riguardante l'analisi della documentazione proposta],
  //[#link(<UC34>)[#underline[\[UC34\]]]],

  [#FRDex],
  [Il sistema deve modificare il repository coerentemente con quanto scritto nella remediation riguardante l'analisi della documentazione],
  //[#link(<UC34>)[#underline[\[UC34\]]]],
)/*
  [#FRDex],
  [L'Utente deve poter rifiutare la remediation riguardante l'analisi della documentazione proposta],
  [#link(<UC34.1>)[#underline[\[UC34.1\]]]],

  [#FRDex],
  [L'Utente deve poter annullare l'operazione di accettazione di remediation riguardante l'analisi della documentazione],
  [#link(<UC34.2>)[#underline[\[UC34.2\]]]],

  //UC37
  [#FRObx], 
  [L'Utente deve poter accedere alla sezione di richiesta analisi], 
  //[#link(<UC37>)[#underline[\[UC37\]]]],
  
  [#FRObx],
  [L'utente deve poter visualizzare correttamente il campo di inserimento dell'URL],
  //[#link(<UC37>)[#underline[\[UC37\]]]],
  
  [#FRObx],
  [L'utente deve poter visualizzare correttamente il campo di selezione delle sezioni di interesse],
  //[#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [L'utente deve poter visualizzare correttamente il pulsante di conferma],
  //[#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [L'utente deve poter inviare la richiesta di analisi tramite il pulsante di conferma],
  //[#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [L'Utente deve poter inserire l'URL del repository GitHub nel campo dedicato],
  [#link(<UC37.1>)[#underline[\[UC37.1\]]]],

  [#FRObx], 
  [L'URL deve iniziare con il protocollo 'https://'], 
  [#link(<UC37.1.1>)[#underline[\[UC37.1.1\]]]],

  [#FRObx], 
  [Il dominio dell'URL deve essere 'github.com'], 
  [#link(<UC37.1.1>)[#underline[\[UC37.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se l'URL non è conforme ai vincoli di formato],
  [#link(<UC37.1.1>)[#underline[\[UC37.1.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se il repository non è accessibile o è inesistente],
  [#link(<UC37.1.2>)[#underline[\[UC37.1.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se non inserisce alcun URL],
  [#link(<UC37.1.3>)[#underline[\[UC37.1.3\]]]],

  [#FRObx],
  [L'Utente deve poter selezionare le sezioni di interesse per l'analisi],
  [#link(<UC37.2>)[#underline[\[UC37.2\]]]],

  [#FRObx],
  [L'Utente deve ricevere un messaggio di errore se nessuna area di interesse è selezionata],
  [#link(<UC37.2.1>)[#underline[\[UC37.2.1\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se l'ultimo report è già up-to-date],
  [#link(<UC37.3>)[#underline[\[UC37.3\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se un'analisi è già in elaborazione],
  [#link(<UC37.4>)[#underline[\[UC37.4\]]]],

  // UC60 
  [#FRObx],
  [L'Utente deve poter accedere alla sezione di visualizzazione dei propri repository privati],
  [#link(<UC60>)[#underline[\[UC60\]]]],

  [#FRObx],
  [Il sistema deve mostrare correttamente tutti i repository privati che l'utente ha inserito],
  [#link(<UC60>)[#underline[\[UC60\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare nome e URL dei repository],
  [#link(<UC60.1>)[#underline[\[UC60.1\]]]],
  
  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono repository inseriti da mostrare],
  [#link(<UC60.2>)[#underline[\[UC60.2\]]]],

  [#FRObx],
  [Il sistema deve riconoscere il caso in cui non ci siano repository inseriti da mostrare],
  [#link(<UC60.2>)[#underline[\[UC60.2\]]]],

  // UC37
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di inserimento di repository privati],
  [#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il campo di inserimento dell'URL],
  [#link(<UC37>)[#underline[\[UC37\]]]],
  
  [#FRObx],
  [L'Utente deve poter confermare l'inserimento],
  [#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con il campo di inserimento dell'URL],
  [#link(<UC37.1>)[#underline[\[UC37.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un URL non conforme ai vincoli di formato],
  [#link(<UC37.1.1>)[#underline[\[UC37.1.1\]]]],

  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca un URL non conforme],
  [#link(<UC37.1.1>)[#underline[\[UC37.1.1\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un URL associato a un repository non accessibile],
  [#link(<UC37.1.2>)[#underline[\[UC37.1.2\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca un URL associato a un repository non accessibile],
  [#link(<UC37.1.2>)[#underline[\[UC37.1.2\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere la mancanza dell'inserimento dell'URL],
  [#link(<UC37.1.3>)[#underline[\[UC37.1.3\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso non inserisca un URL],
  [#link(<UC37.1.3>)[#underline[\[UC37.1.3\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un URL associato a un repository già presente nella lista],
  [#link(<UC37.1.4>)[#underline[\[UC37.1.4\]]]],

  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca un URL associato a un repository già presente nella lista],
  [#link(<UC37.1.4>)[#underline[\[UC37.1.4\]]]],
  
  // UC52
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di rimozione di un repository privato dalla lista],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con l'opzione di rimozione di un repository privato dalla lista],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il messaggio di successo di rimozione di un repository privato dalla lista],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [Il repository deve essere eliminato correttamente dalla lista, in modo che l'utente non lo visualizzi più],
  [#link(<UC52>)[#underline[\[UC52\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la rimozione di un repository],
  [#link(<UC52.1>)[#underline[\[UC52.1\]]]],

  [#FRObx],
  [L'Utente deve poter rifiutare la rimozione di un repository],
  [#link(<UC52.1.1>)[#underline[\[UC52.1.1\]]]],
  
  // UC53
  [#FRObx],
  [L'Utente deve poter accedere alla sezione di visualizzazione degli utenti CodeGuardian inseriti per repository privato],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [Il sistema deve mostrare correttamente tutti gli utenti CodeGuardian che l'utente ha inserito],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare lo username di ogni utente inserito],
  [#link(<UC53>)[#underline[\[UC53\]]]],
  
  [#FRDex],
  [L'Utente deve poter visualizzare l'email di ogni utente inserito],
  [#link(<UC53>)[#underline[\[UC53\]]]],

  [#FRObx],
  [L'Utente deve ricevere un avviso se non ci sono utenti CodeGuardian inseriti da mostrare],
  [#link(<UC53.1>)[#underline[\[UC53.1\]]]],

  [#FRObx],
  [Il sistema deve riconoscere il caso in cui non ci siano utenti CodeGuardian inseriti da mostrare],
  [#link(<UC53.1>)[#underline[\[UC53.1\]]]],
  
  // UC54
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di inserimento di utenti CodeGuardian alla lista degli utenti che hanno accesso a un suo repository privato],
  [#link(<UC54>)[#underline[\[UC54\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il campo di inserimento della credenziale],
  [#link(<UC54>)[#underline[\[UC54\]]]],
  
  [#FRObx],
  [L'Utente deve poter confermare l'inserimento dell'utente CodeGuardian],
  [#link(<UC54>)[#underline[\[UC54\]]]],

  [#FRObx],
  [L'utente CodeGuardian inserito deve ottenere i permessi per visualizzare i report riguardanti il repository nel quale è stato inserito],
  [#link(<UC54>)[#underline[\[UC54\]]]],

  [#FRObx],
  [L'utente CodeGuardian inserito deve ottenere i permessi per richiedere analisi riguardanti il repository nel quale è stato inserito],
  [#link(<UC54>)[#underline[\[UC54\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con il campo di inserimento della credenziale],
  [#link(<UC54.1>)[#underline[\[UC54.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un username non conforme ai vincoli di formato],
  [#link(<UC54.1.1>)[#underline[\[UC54.1.1\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere un'email non conforme ai vincoli di formato],
  [#link(<UC54.1.1>)[#underline[\[UC54.1.1\]]]],

  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca una credenziale non conforme],
  [#link(<UC54.1.1>)[#underline[\[UC54.1.1\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere una credenziale non esistente],
  [#link(<UC54.1.2>)[#underline[\[UC54.1.2\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca una credenziale non esistente],
  [#link(<UC54.1.2>)[#underline[\[UC54.1.2\]]]],
  
  [#FRObx],
  [Il sistema deve essere in grado di riconoscere una credenziale riferita a un utente già inserito],
  [#link(<UC54.1.3>)[#underline[\[UC54.1.3\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso inserisca una credenziale associata a un'utente già inserito],
  [#link(<UC54.1.3>)[#underline[\[UC54.1.3\]]]],

  [#FRObx],
  [Il sistema deve essere in grado di riconoscere la mancanza dell'inserimento della credenziale],
  [#link(<UC54.1.4>)[#underline[\[UC54.1.4\]]]],
  
  [#FRObx],
  [L'utente deve ricevere un messaggio d'errore nel caso non inserisca la credenziale],
  [#link(<UC54.1.4>)[#underline[\[UC54.1.4\]]]],
  
  // UC55
  [#FRObx],
  [L'Utente deve poter visualizzare la sezione di rimozione di un utente CodeGuardian dalla lista],
  [#link(<UC55>)[#underline[\[UC55\]]]],

  [#FRObx],
  [L'Utente deve poter interagire con l'opzione di rimozione di un utente CodeGuardian dalla lista],
  [#link(<UC55>)[#underline[\[UC55\]]]],

  [#FRObx],
  [L'Utente deve poter visualizzare il messaggio di successo di rimozione di un utente CodeGuardian dalla lista],
  [#link(<UC55>)[#underline[\[UC55\]]]],

  [#FRObx],
  [L'utente CodeGuardian deve essere eliminato correttamente dalla lista, in modo che l'utente non lo visualizzi più],
  [#link(<UC55>)[#underline[\[UC55\]]]],

  [#FRObx],
  [L'utente CodeGuardian eliminato deve essere revocato di tutti i permessi riguardanti il repository dal quale è stato rimosso],
  [#link(<UC55>)[#underline[\[UC55\]]]],

  [#FRObx],
  [L'Utente deve poter confermare la rimozione di un utente CodeGuardian],
  [#link(<UC55.1>)[#underline[\[UC55.1\]]]],

  [#FRObx],
  [L'Utente deve poter rifiutare la rimozione di un utente CodeGuardian],
  [#link(<UC55.1.1>)[#underline[\[UC55.1.1\]]]],
  
)
*/
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
  [Il sistema di persistenza deve essere implementato utilizzando MongoDB o PostgreSQL],
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