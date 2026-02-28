
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
#let versione = "v1.0.0"

#titlePage("Analisi dei Requisiti", versione)
#set page(numbering: "1", header: header("Analisi dei Requisiti"), footer: footer())
#let history = (
  (
    "2026/02/23",
    "1.0.0",
    "Revisione finale per RTB",
    "",
    members.suar,
  ),
  (
    "2026/02/18",
    "0.47.0",
    "Refactoring generale di tutti casi d'uso con riscrittura di molti di essi",
    members.kevin,
    members.suar,
  ),
  (
    "2026/02/16",
    "0.46.0",
    "Inserimento UC 47-53 e requisiti",
    members.antonio,
    members.suar,
  ),
  (
    "2026/02/15",
    "0.45.1",
    "Fix UC20-30, eliminazione UC23",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/15",
    "0.45.0",
    "Modifica UC 16 e 19, aggiunta UC 41-46 e requisiti",
    members.antonio,
    members.suar,
  ),
  (
    "2026/02/13",
    "0.44.7",
    "Fix UC6, UC37-41",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/13",
    "0.44.6",
    "Fix UC5, UC9-11",
    members.antonio,
    members.suar,
  ),
  (
    "2026/02/10",
    "0.44.5",
    "Fix vari degli UC + fix specifici UC13-15",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/10",
    "0.44.4",
    "Fix della posizione del sistema in tutti i diagrammi UC",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/10",
    "0.44.3",
    "Primo fix generale UC",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/09",
    "0.44.2",
    "Sistemato formato dei link al glossario",
    members.antonio,
    members.suar,
  ),
  (
    "2026/02/09",
    "0.44.1",
    "Fix definizione attori",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/08",
    "0.44.0",
    "Aggiunto UC12, inclusi diagrammi e requisiti associati. Fix alle precondizioni, attori e diagrammi di UC1, UC2, UC4",
    members.antonio,
    members.suar,
  ),
  (
    "2026/02/04",
    "0.43.0",
    "Classificazione Requisiti per priorità",
    members.alice,
    members.suar,
  ),
  (
    "2026/02/04",
    "0.42.1",
    "Sistemata la sezione Attori + immagini separate per Front-end e Back-end",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/03",
    "0.42.0",
    "Aggiunta diagrammi UC16-30",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/02",
    "0.41.0",
    "Fix e aggiunta diagrammi mancanti UC6, UC9, UC10, UC12, UC13, UC14, UC15",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/02",
    "0.40.0",
    "Fix e aggiunta diagrammi mancanti UC1-3",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/01",
    "0.39.0",
    "Aggiunta Requisiti di Qualità e di Vincolo",
    members.alice,
    members.suar,
  ),
  (
    "2026/01/27",
    "0.38.0",
    "Aggiunta dei requisiti funzionali UC36-UC29",
    members.andrea,
    members.suar,
  ),
  (
    "2026/01/25",
    "0.37.2",
    "Fix alla struttura delle precondizioni, modifica a UC1-3 e relativi requisiti",
    members.antonio,
    members.suar,
  ),
  (
    "2026/01/24",
    "0.37.1",
    "Fix alla struttura di inclusioni ed estensioni",
    members.antonio,
    members.suar,
  ),
  (
    "2026/01/24",
    "0.37.0",
    "Inserimento diagrammi per UC36-41",
    members.andrea,
    members.suar,
  ),
  (
    "2026/01/24",
    "0.36.0",
    "Modifica dei casi d'uso UC36, UC28 e UC28.1 e aggiunta di UC36.1, UC23, UC23.1, UC29 e UC29.1",
    members.andrea,
    members.suar,
  ),
  (
    "2026/01/21",
    "0.35.0",
    "Inserimento diagrammi aggiornati per UC1-5 e UC26-37",
    members.antonio,
    members.suar,
  ),
  (
    "2026/01/21",
    "0.34.0",
    "Aggiunta di sottocasi di UC21 e 30 e altri fix",
    members.berengan,
    members.suar,
  ),
  (
    "2026/01/19",
    "0.33.1",
    "Aggiunti requisiti funzionali UC12 e UC13, UC16-UC20 e UC20-UC20. Modifica requisiti UC5-UC15",
    members.alice,
    members.suar,
  ),
  (
    "2026/01/18",
    "0.32.1",
    "Riorganizzazione requisiti funzionali relativi ai casi d'uso da UC1 a UC4",
    members.alice,
    members.suar,
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
    members.suar,
  ),
  (
    "2026/01/17",
    "0.30.1",
    "Modifica UC22. Aggiunta UC23, UC24",
    members.berengan,
    members.suar,
  ),
  (
    "2026/01/16",
    "0.29.0",
    "Aggiunta UC36, UC28, UC28.1, UC29",
    members.andrea,
    members.suar,
  ),
  (
    "2026/01/16",
    "0.28.0",
    "Aggiunta UC26, UC27, UC36 e UC37",
    members.antonio,
    members.suar,
  ),
  (
    "2026/01/16",
    "0.27.0",
    "Aggiunta UC21 e UC22",
    members.berengan,
    members.suar,
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
    members.suar,
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
    members.suar,
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
    members.suar,
  ),
  (
    "2026/01/06",
    "0.17.0",
    "Casi d'uso UC14, UC14.1, UC14.1.1 e UC14.2. Requisiti relativi a UC14",
    members.alice,
    members.suar,
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
- individuare e dettagliare i requisiti di sistema, distinguendo tra #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-funzionali")[#def[requisiti funzionali]], #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-di-qualita")[#def[di qualità]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-di-vincolo")[#def[di vincolo]];
- classificare i requisiti in base alla priorità negoziale e strategica (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-obbligatori")[#def[obbligatori]], #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-opzionali")[#def[opzionali]], #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-desiderabili")[#def[desiderabili]]), fornendo una guida per la pianificazione dello sviluppo;
- definire i criteri di accettazione del prodotto, stabilendo una base contrattuale oggettiva per le attività di verifica e validazione finale rispetto a quanto concordato con il proponente.

== Scopo del Prodotto
Il prodotto che #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] sviluppa è un #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sistema-software")[#def[sistema software]] #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sistema-multiagente")[#def[multiagente]] per l'analisi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#repository")[#def[repository]] #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#github")[#def[GitHub]].
Il sistema è progettato per essere modulare, scalabile e per operare in ambienti isolati, garantendo la sicurezza del sistema ospite durante l'esecuzione di codice non fidato.

L'obiettivo corrente è il rilascio di un #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#minimum-viable-product")[#def[MVP]] che dimostri l'efficacia dell'approccio a micro-agenti per la risoluzione automatica del debito tecnico.

== Funzioni del Prodotto
Le funzionalità del sistema sono suddivise in quattro macro-aree operative, accessibili tramite un'interfaccia web (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#graphical-user-interface")[#def[GUI]]):

- *Audit del Codice:* Esecuzione di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-statica")[#def[analisi statica]] per l'identificazione di errori a tempo di compilazione e verifica della presenza/copertura dei test unitari.
- *Audit della Sicurezza:* Analisi delle dipendenze per l'individuazione di librerie obsolete o affette da vulnerabilità note e verifica della conformità agli standard #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#open-web-application-security-project")[#def[OWASP]].
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
  (ultimo accesso: *24/02/2026*)

- *Standard IEEE 29148-2018* ISO/IEC/IEEE International Standard – Systems and software engineering – Life cycle processes – Requirements engineering <29148>\
  #underline[https://ieeexplore.ieee.org/document/8559686] \
  (ultimo accesso: *24/02/2026*)

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *24/02/2026*)

- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. <NdP>\
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")] \
  (versione: *v1.0.0*)
=== Riferimenti Informativi
- *Dispense del Corso di Ingegneria del Software sull'Analisi dei Requisiti* <dispense_AdR>\
  #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T05.pdf] \
  (ultimo accesso: *24/02/2026*)
- *Dispense del Corso di Ingegneria del Software sui Casi d'Uso* <dispense_UC>\
  #underline[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf] \
  (ultimo accesso: *24/02/2026*)


#pagebreak()
= Casi d'Uso
== Introduzione
In questa sezione sono descritti i casi d'uso principali del sistema, che illustrano le interazioni funzionali tra gli utenti (umani e software) e l'applicazione.

La specifica dei casi d'uso adotta il formato e le convenzioni di modellazione definite alla sezione 2.1.6.3.1 del documento #underline[#link(<NdP>)[Norme di Progetto]]. Si rimanda a tale documento per la descrizione dettagliata della struttura dei campi (precondizioni, postcondizioni, scenari) e della sintassi #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#uml")[#def[UML]] utilizzata.

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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente tenta di autenticarsi con un username non censito",
)[]

==== UC2.2: Inserimento password <UC2.2>
#useCase(
  attore: "Utente non Autenticato",
  pre: [
    - L'utente sta visualizzando il modulo di autenticazione #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente ha inserito l'identificativo con il quale si è registrato #link(<UC2.1>)[#underline[\[UC2.1\]]]
  ],
  post: [
    - Il campo relativo alla password risulta popolato con un valore accettato
  ],
  scenari: [
    - L'utente digita la chiave d'accesso nel campo dedicato
  ],
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente nega il consenso alla condivisione dei dati sulla piattaforma esterna",
)[]

=== UC4: Richiesta analisi repository GitHub <UC4>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - L'utente viene accodato ad una lista di attesa del report per il medesimo repository
  ],
  scenari: [
    - L'utente visualizza un messaggio di avvenuta presa a carico della analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente tenta di confermare senza aver selezionato alcuna area di analisi",
)[]

=== UC5: Visualizzazione lista repository analizzati <UC5>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente dispone di una sessione attiva nel sistema #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente accede alla sezione dedicata ai repository analizzati #link(<UC20>)[#underline[\[UC20\]]]
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
    - #link(<UC5.0.2>)[#underline[\[UC5.0.2\]]] // Errore di caricamento
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente accede alla sezione in assenza di repository censiti a sistema",
)[]

==== UC5.0.2: Visualizzazione errore caricamento lista <UC5.0.2>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La visualizzazione della lista dei repository analizzati è stata richiesta #link(<UC5>)[#underline[\[UC5\]]]
  ],
  post: [
    - Un avviso circa l'impossibilità tecnica di recuperare i dati dei repository risulta visibile a video
  ],
  scenari: [
    - L'utente visualizza una segnalazione di errore a seguito di un timeout o di un'anomalia di connessione con la persistenza
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento di un'anomalia tecnica durante la fase di recupero dei dati",
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
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
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
    - L'utente visualizza il timestamp relativo al completamento dell'analisi
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC7.0.1>)[#underline[\[UC7.0.1\]]] // Nessun intervallo selezionato
    - #link(<UC7.0.2>)[#underline[\[UC7.0.2\]]] // Nessun report disponibile
    - #link(<UC7.0.3>)[#underline[\[UC7.0.3\]]] // Intervallo incoerente
    - #link(<UC7.0.4>)[#underline[\[UC7.0.4\]]] // Intervallo troppo ampio
  ],
  trigger: "L'utente richiede la modifica del periodo temporale per l'analisi comparativa",
)[
  #useCaseDiagram("7", "UC7 - Selezione intervallo temporale per confronto report")
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede la versione scaricabile del report di analisi",
)[
  #useCaseDiagram("14", "UC14 - Esportazione report di analisi")
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - L'utente viene notificato dell'avvio del processo di parsing dei dati e creazione del file
  ],
  scenari: [
    - L'utente attiva il comando di finalizzazione dell'esportazione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC15.1.1>)[#underline[\[UC15.1.1\]]]
    - #link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]
  ],
  trigger: "L'utente seleziona il campo relativo alla password attuale",
)[
  #useCaseDiagram("15_1", "UC15.1 - Inserimento password corrente")
]

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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC15.2.1>)[#underline[\[UC15.2.1\]]]
    - #link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]
    - #link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]
  ],
  trigger: "L'utente seleziona il campo relativo alla nuova password",
)[
  #useCaseDiagram("15_2", "UC15.2 - Inserimento nuova password")
]

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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - #link(<UC30>)[#underline[\[UC30\]]]
    - #link(<UC31>)[#underline[\[UC31\]]]
    - #link(<UC32>)[#underline[\[UC32\]]]
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
  #useCaseDiagram("17", "UC17 - Verifica accessibilità repository GitHub")
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC17.2.1.1>)[#underline[\[UC17.2.1.1\]]]
  ],
  trigger: "Esito negativo della ricerca pubblica del repository",
)[
  #useCaseDiagram("17_2_1", "UC17.2.1 - Accesso a repository privato")
]

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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Fallimento di tutti i metodi di autorizzazione disponibili",
)[]

=== UC18: Accettazione di una singola remediation <UC18>
#useCase(
  attore: "Utente Avanzato",
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
  generalizzazione: [
    - #link(<UC33>)[#underline[\[UC33\]]]
    - #link(<UC35>)[#underline[\[UC35\]]]
    - #link(<UC37>)[#underline[\[UC37\]]]
  ],
)[
  #useCaseDiagram("18", "UC18 - Accettazione di una singola remediation")
]

=== UC19: Rifiuto di una singola remediation <UC19>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il dettaglio di una singola remediation #link(<UC16>)[#underline[\[UC16\]]]
  ],
  post: [
    - La proposta correttiva viene scartata e rimossa dall'elenco delle azioni pendenti
  ],
  scenari: [
    - L'utente esprime il dissenso rispetto all'applicazione della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente rifiuta esplicitamente la proposta di remediation",
  generalizzazione: [
    - #link(<UC34>)[#underline[\[UC34\]]]
    - #link(<UC36>)[#underline[\[UC36\]]]
    - #link(<UC38>)[#underline[\[UC38\]]]
  ],
)[
  #useCaseDiagram("19", "UC19 - Rifiuto singola remediation generica")
]

=== UC20: Creazione raccolta report di analisi <UC20>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente dispone di una sessione attiva nel sistema #link(<UC2>)[#underline[\[UC2\]]]
  ],
  post: [
    - Una nuova collezione di report risulta creata e disponibile per l'archiviazione delle analisi del repository
    - L'utente visualizza un messaggio di successo della procedura di creazione della raccolta
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
    - L'utente ha ricevuto il messaggio di errore riguardante il mancanto popolamento dei campi obbligatori
    - L'utente ha nuovamente accesso all'inserimento dei campi per la procedura
  ],
  scenari: [
    - L'utente riceve una segnalazione circa l'incompletezza dei dati obbligatori forniti
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC20.1.1>)[#underline[\[UC20.1.1\]]]
  ],
  trigger: "L'utente seleziona il campo dedicato all'identificativo della raccolta",
)[
  #useCaseDiagram("20_1", "UC20.1 - Inserimento nome raccolta")
]

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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC20.2.1>)[#underline[\[UC20.2.1\]]]
    - #link(<UC20.2.2>)[#underline[\[UC20.2.2\]]]
    - #link(<UC20.2.3>)[#underline[\[UC20.2.3\]]]
  ],
  trigger: "L'utente seleziona il campo dedicato all'indirizzo del repository",
)[
  #useCaseDiagram("20_2", "UC20.2 - Inserimento URL repository GitHub")
]

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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Mancato riscontro positivo dai servizi remoti per l'URL indicato",
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente seleziona il campo destinato alla descrizione",
)[]

=== UC21: Avvio analisi <UC21>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Servizio AWS, Strumenti di Analisi",
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
    - L'orchestratore inoltra la richiesta di analisi allo strumento per la sicurezza #link(<UC21.4>)[#underline[\[UC21.4\]]]
  ],
  inclusioni: [
    - #link(<UC21.1>)[#underline[\[UC21.1\]]]
    - #link(<UC21.2>)[#underline[\[UC21.2\]]]
    - #link(<UC21.3>)[#underline[\[UC21.3\]]]
    - #link(<UC21.4>)[#underline[\[UC21.4\]]]
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC21.1.1>)[#underline[\[UC21.1.1\]]]
  ],
  trigger: "Avvio della fase di preparazione del codice sorgente",
)[
  #useCaseDiagram("21_1", "UC21.1 - Richiesta di clonazione del repository")
]

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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - L'orchestratore inoltra i file di documentazione e i sorgenti al servizio incaricato dell'analisi qualitativa
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Disponibilità locale dei sorgenti per l'audit documentale",
)[]

==== UC21.4: Richiesta di analisi della sicurezza <UC21.4>
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  #useCaseDiagram("22", "UC22 - Salvataggio stato analisi nel sistema di persistenza")
]

==== UC22.0.1: Errore durante il salvataggio dello stato dell'analisi <UC22.0.1>
#useCase(
  attore: "Orchestratore",
  pre: [
    - L'orchestratore ha avviato la procedura di registrazione dello stato #link(<UC22>)[#underline[\[UC22\]]]
  ],
  post: [
    - L'orchestratore inoltra una segnalazione relativa all'impossibilità tecnica di tracciare l'avanzamento dell'audit
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
    - Gli strumenti di analisi hanno iniziato a lavorare sul codice #link(<UC21>)[#underline[\[UC21\]]]
  ],
  post: [
    - L'orchestratore ha ottenuto tutte le informazioni prodotte dagli strumenti per comporre il report
  ],
  scenari: [
    - L'orchestratore controlla se gli strumenti hanno finito il lavoro #link(<UC23.1>)[#underline[\[UC23.1\]]]
    - L'orchestratore raccoglie i dati e i risultati dell'analisi #link(<UC23.2>)[#underline[\[UC23.2\]]]
  ],
  inclusioni: [
    - #link(<UC23.1>)[#underline[\[UC23.1\]]]
    - #link(<UC23.2>)[#underline[\[UC23.2\]]]
  ],
  estensioni: [
    - #link(<UC23.0.1>)[#underline[\[UC23.0.1\]]] // Risultati incompleti
  ],
  trigger: "Uno o più strumenti terminano l'elaborazione del codice",
)[
  #useCaseDiagram("23", "UC23 - Recupero dei risultati dagli strumenti di analisi")
]

==== UC23.0.1: Gestione risultati incompleti <UC23.0.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - L'orchestratore sta aspettando i dati dagli strumenti #link(<UC23>)[#underline[\[UC23\]]]
  ],
  post: [
    - L'analisi procede solo con i dati che è stato possibile recuperare
  ],
  scenari: [
    - Uno strumento impiega troppo tempo o segnala un errore interno
    - L'orchestratore decide di proseguire con i soli dati disponibili per non bloccare l'intero processo
  ],
  trigger: "Tempo di attesa massimo superato o errore di uno strumento esterno",
)[]

==== UC23.1: Controllo stato delle attività <UC23.1>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - Le analisi sono in corso presso gli strumenti esterni
  ],
  post: [
    - Si conosce quali strumenti hanno finito e quali sono ancora al lavoro
  ],
  scenari: [
    - L'orchestratore verifica periodicamente se le analisi esterne sono pronte o riceve un segnale di fine lavori
  ],
  trigger: "Intervallo di tempo programmato per il controllo dello stato",
)[]

==== UC23.2: Acquisizione dei dati analitici <UC23.2>
#useCase(
  attore: "Orchestratore",
  attori_secondari: "Strumenti di Analisi",
  pre: [
    - Uno o più strumenti hanno completato l'analisi #link(<UC23.1>)[#underline[\[UC23.1\]]]
  ],
  post: [
    - I dati dell'analisi sono stati trasferiti correttamente all'orchestratore
  ],
  scenari: [
    - L'orchestratore preleva i file dei risultati e le informazioni di riepilogo generate dagli strumenti
  ],
  trigger: "Disponibilità dei dati confermata dagli strumenti",
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
    - #link(<UC25.0.1>)[#underline[\[UC25.0.1\]]]
  ],
  trigger: "Completamento delle operazioni di sintesi e aggregazione del report finale",
)[
  #useCaseDiagram("25", "UC25 - Salvataggio di un report")
]

==== UC25.0.1: Errore durante il salvataggio del report <UC25.0.1>
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
    - #link(<UC26.0.1>)[#underline[\[UC26.0.1\]]]
  ],
  trigger: "Avvenuto aggiornamento dello stato dell'analisi a 'completed' nel sistema di persistenza",
)[
  #useCaseDiagram("26", "UC26 - Invio notifica completamento dell'analisi del repository")
]

==== UC26.0.1: Errore durante l'invio della notifica <UC26.0.1>
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
    - Nessuna
  ],
  estensioni: [
    - #link(<UC27.0.1>)[#underline[\[UC27.0.1\]]]
  ],
  trigger: "Disponibilità del messaggio di notifica sui canali di comunicazione dell'utente",
)[
  #useCaseDiagram("27", "UC27 - Ricezione notifica completamento analisi")
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Mancata consegna o ricezione del messaggio informativo a seguito dell'invio",
)[]

=== UC28: Notifica errore critico durante l'analisi <UC28>
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
    - Nessuna
  ],
  estensioni: [
    - #link(<UC28.0.1>)[#underline[\[UC28.0.1\]]]
  ],
  trigger: "L'orchestratore rileva l'impossibilità di proseguire con l'analisi e invia la notifica di errore",
)[
  #useCaseDiagram("28", "UC28 - Notifica errore critico durante l'analisi")
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
  #useCaseDiagram("29", "UC29 - Gestione del codice OAuth GitHub")
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
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Rilevamento di un errore di validazione del codice da parte del fornitore esterno",
)[]

=== UC30: Visualizzazione singola remediation riguardante l'analisi del codice <UC30>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza l'elenco delle remediation nella sezione di analisi del codice #link(<UC9.3>)[#underline[\[UC9.3\]]]
    - L'utente seleziona una singola remediation dall'elenco
  ],
  post: [
    - L'utente visualizza i dettagli tecnici e la proposta di risoluzione della remediation selezionata
  ],
  scenari: [
    - L'utente seleziona una remediation dalla lista dell'area "Codice"
    - L'utente visualizza le informazioni di dettaglio della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una specifica remediation dalla lista dell'area codice",
)[]

=== UC31: Visualizzazione singola remediation riguardante l'analisi della sicurezza <UC31>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza l'elenco delle remediation nella sezione di analisi della sicurezza #link(<UC10.3>)[#underline[\[UC10.3\]]]
    - L'utente seleziona una singola remediation dall'elenco
  ],
  post: [
    - L'utente visualizza le specifiche della vulnerabilità e le azioni correttive di sicurezza proposte
  ],
  scenari: [
    - L'utente seleziona una remediation dalla lista dell'area "Sicurezza"
    - L'utente visualizza le informazioni di dettaglio della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una specifica remediation dalla lista dell'area sicurezza",
)[]

=== UC32: Visualizzazione singola remediation riguardante l'analisi della documentazione <UC32>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza l'elenco delle remediation nella sezione di analisi della documentazione #link(<UC11.3>)[#underline[\[UC11.3\]]]
    - L'utente seleziona una singola remediation dall'elenco
  ],
  post: [
    - L'utente visualizza i rilievi sintattici e le proposte di integrazione documentale associati alla remediation selezionata
  ],
  scenari: [
    - L'utente seleziona una remediation dalla lista dell'area "Documentazione"
    - L'utente visualizza le informazioni di dettaglio della remediation proposta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - #link(<UC16>)[#underline[\[UC16\]]]
  ],
  trigger: "L'utente seleziona una specifica remediation dalla lista dell'area documentazione",
)[]

=== UC33: Accettazione singola remediation riguardante l'analisi del codice <UC33>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation per il codice #link(<UC30>)[#underline[\[UC30\]]]
  ],
  post: [
    - L'utente riscontra l'applicazione delle modifiche suggerite alla codebase del repository di riferimento
    - L'utente visualizza lo stato della remediation aggiornato come eseguita nella dashboard
  ],
  scenari: [
    - L'utente impartisce il comando di accettazione della remediation del codice
    - Il sistema applica la correzione automatica sul repository e aggiorna lo stato della remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC33.0.1>)[#underline[\[UC33.0.1\]]]
  ],
  specializzazione: [
    - #link(<UC18>)[#underline[\[UC18\]]]
  ],
  trigger: "L'utente impartisce il comando di accettazione della remediation per il codice",
)[
  #useCaseDiagram("33", "UC33 - Accettazione singola remediation riguardante l'analisi del codice")
]

==== UC33.0.1: Errore nell'applicazione della remediation codice <UC33.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha confermato l'accettazione della remediation #link(<UC33>)[#underline[\[UC33\]]]
  ],
  post: [
    - L'utente visualizza un avviso di fallimento dell'operazione e la codebase risulta invariata
  ],
  scenari: [
    - Il sistema rileva un errore durante la fase di commit o di scrittura sul repository remoto
    - L'utente visualizza un messaggio che descrive l'impossibilità di applicare la remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Anomalia tecnica o diniego di scrittura da parte del provider esterno",
)[]

=== UC34: Rifiuto singola remediation riguardante l'analisi del codice <UC34>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation per il codice #link(<UC30>)[#underline[\[UC30\]]]
  ],
  post: [
    - L'utente visualizza la remediation marcata come rifiutata o rimossa dalla lista delle azioni pendenti
    - La codebase del repository rimane invariata
  ],
  scenari: [
    - L'utente impartisce il comando di rifiuto della remediation del codice
    - Il sistema scarta la proposta correttiva e aggiorna lo stato nella dashboard
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di rifiuto della remediation del codice",
)[]

=== UC35: Accettazione singola remediation riguardante l'analisi della sicurezza <UC35>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation di sicurezza #link(<UC31>)[#underline[\[UC31\]]]
  ],
  post: [
    - L'utente riscontra l'applicazione delle patch/configurazioni suggerite nel repository di riferimento
    - L'utente visualizza lo stato della remediation aggiornato come eseguita nella dashboard
  ],
  scenari: [
    - L'utente impartisce il comando di accettazione della remediation di sicurezza
    - Il sistema applica le azioni correttive e aggiorna lo stato della remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC35.0.1>)[#underline[\[UC35.0.1\]]]
  ],
  specializzazione: [
    - #link(<UC18>)[#underline[\[UC18\]]]
  ],
  trigger: "L'utente impartisce il comando di accettazione della remediation di sicurezza",
)[
  #useCaseDiagram("35", "UC35 - Accettazione singola remediation riguardante l'analisi della sicurezza")
]

==== UC35.0.1: Errore nell'applicazione della remediation sicurezza <UC35.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha confermato l'accettazione della remediation di sicurezza #link(<UC35>)[#underline[\[UC35\]]]
  ],
  post: [
    - L'utente visualizza un avviso di fallimento dell'operazione e la vulnerabilità risulta non mitigata
  ],
  scenari: [
    - Il sistema rileva il fallimento della procedura di aggiornamento dipendenze o hardening
    - L'utente visualizza un messaggio che descrive l'impossibilità di applicare la remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Insuccesso tecnico durante il processo di hardening automatico",
)[]

=== UC36: Rifiuto singola remediation riguardante l'analisi della sicurezza <UC36>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation di sicurezza #link(<UC31>)[#underline[\[UC31\]]]
  ],
  post: [
    - L'utente visualizza la remediation marcata come rifiutata o rimossa dalla lista delle azioni pendenti
    - Il repository rimane invariato rispetto alla vulnerabilità segnalata
  ],
  scenari: [
    - L'utente impartisce il comando di rifiuto della remediation di sicurezza
    - Il sistema scarta la proposta di mitigazione e aggiorna lo stato nella dashboard
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di rifiuto della remediation di sicurezza",
)[]

=== UC37: Accettazione singola remediation riguardante l'analisi della documentazione <UC37>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation documentale #link(<UC32>)[#underline[\[UC32\]]]
  ],
  post: [
    - L'utente riscontra l'aggiornamento dei file di documentazione nel repository secondo la proposta
    - L'utente visualizza lo stato della remediation aggiornato come eseguita nella dashboard
  ],
  scenari: [
    - L'utente impartisce il comando di accettazione della remediation documentale
    - Il sistema applica le correzioni ai file documentali e aggiorna lo stato della remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC37.0.1>)[#underline[\[UC37.0.1\]]]
  ],
  specializzazione: [
    - #link(<UC18>)[#underline[\[UC18\]]]
  ],
  trigger: "L'utente impartisce il comando di accettazione della remediation documentale",
)[
  #useCaseDiagram("37", "UC37 - Accettazione singola remediation riguardante l'analisi della documentazione")
]

==== UC37.0.1: Errore nell'applicazione della remediation documentale <UC37.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha confermato l'accettazione della remediation documentale #link(<UC37>)[#underline[\[UC37\]]]
  ],
  post: [
    - L'utente visualizza un errore di sincronizzazione e la documentazione remota risulta invariata
  ],
  scenari: [
    - Il sistema rileva un errore di I/O o permessi durante l'aggiornamento dei file testuali
    - L'utente visualizza un messaggio che descrive l'impossibilità di applicare la remediation
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Errore di I/O o di permessi durante l'aggiornamento dei file di documentazione",
)[]

=== UC38: Rifiuto singola remediation riguardante l'analisi della documentazione <UC38>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il dettaglio della remediation documentale #link(<UC32>)[#underline[\[UC32\]]]
  ],
  post: [
    - L'utente visualizza la remediation marcata come rifiutata o rimossa dalla lista delle azioni pendenti
    - La documentazione del repository rimane invariata
  ],
  scenari: [
    - L'utente impartisce il comando di rifiuto della remediation documentale
    - Il sistema scarta la proposta di miglioramento e aggiorna lo stato nella dashboard
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  specializzazione: [
    - #link(<UC19>)[#underline[\[UC19\]]]
  ],
  trigger: "L'utente impartisce il comando di rifiuto della remediation documentale",
)[]

=== UC39: Richiesta analisi repository GitHub privato autorizzato <UC39>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha collegato GitHub e dispone dell'integrazione abilitata #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente visualizza la sezione di configurazione dell'analisi
  ],
  post: [
    - L'utente visualizza la conferma di presa in carico della richiesta di analisi del repository privato
  ],
  scenari: [
    - L'utente inserisce l'URL del repository privato da analizzare #link(<UC20.2>)[#underline[\[UC20.2\]]]
    - L'utente seleziona le aree di interesse per l'audit #link(<UC4.1>)[#underline[\[UC4.1\]]]
    - L'utente conferma l'invio della richiesta di analisi
  ],
  inclusioni: [
    - #link(<UC4.1>)[#underline[\[UC4.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede una nuova analisi per un repository privato",
)[
  #useCaseDiagram("39", "UC39 - Richiesta analisi repository GitHub privato autorizzato")
]

=== UC40: Inserimento di un proprio repository privato <UC40>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha collegato il proprio profilo GitHub #link(<UC3>)[#underline[\[UC3\]]]
    - L'utente visualizza l'area di gestione dei propri repository privati
  ],
  post: [
    - L'utente visualizza l'esito di registrazione del repository privato e la risorsa risulta disponibile nel catalogo personale
    - La repository inserita può essere analizzata anche da utenti non proprietari qualora i token dimostrassero l'accessibilità alla repository in quanto collaboratori
  ],
  scenari: [
    - L'utente inserisce l'URL del repository privato di sua proprietà #link(<UC20.2>)[#underline[\[UC20.2\]]]
    - L'utente conferma l'aggiunta del repository al catalogo personale
  ],
  inclusioni: [
    - Nessuna
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
    - L'utente ha inserito un URL già associato al proprio profilo #link(<UC40>)[#underline[\[UC40\]]]
  ],
  post: [
    - L'utente visualizza un avviso di duplicazione e il catalogo rimane invariato
  ],
  scenari: [
    - L'utente visualizza un messaggio che segnala la presenza del repository nel catalogo personale
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - L'utente visualizza l'elenco dei repository privati registrati nel proprio catalogo personale
  ],
  scenari: [
    - L'utente accede alla sezione di gestione repository privati
    - L'utente visualizza la lista dei repository privati registrati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC41.0.1>)[#underline[\[UC41.0.1\]]]
  ],
  trigger: "L'utente accede alla sezione dedicata alla gestione dei propri repository",
)[
  #useCaseDiagram("41", "UC41 - Visualizzazione catalogo repository privati inseriti")
]

==== UC41.0.1: Visualizzazione informativa catalogo vuoto <UC41.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente accede alla sezione e non ha registrato alcun repository privato #link(<UC41>)[#underline[\[UC41\]]]
  ],
  post: [
    - L'utente visualizza un'informativa circa l'assenza di repository nel catalogo personale
  ],
  scenari: [
    - L'utente visualizza un messaggio che suggerisce l'inserimento del primo repository privato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - L'utente visualizza l'esito di rimozione e il repository non risulta più presente nel catalogo personale
  ],
  scenari: [
    - L'utente seleziona la funzione di rimozione per un repository specifico
    - L'utente conferma o annulla l'operazione di rimozione #link(<UC42.1>)[#underline[\[UC42.1\]]]
  ],
  inclusioni: [
    - #link(<UC42.1>)[#underline[\[UC42.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede l'eliminazione di un repository dal catalogo personale",
)[
  #useCaseDiagram("42", "UC42 - Rimozione di un proprio repository privato")
]

==== UC42.1: Conferma rimozione repository <UC42.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha avviato la procedura di rimozione #link(<UC42>)[#underline[\[UC42\]]]
  ],
  post: [
    - L'utente conferma o annulla la rimozione del repository dal catalogo personale
  ],
  scenari: [
    - L'utente conferma la rimozione definitiva del repository
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC42.1.1>)[#underline[\[UC42.1.1\]]]
  ],
  trigger: "Visualizzazione dell'avviso di conferma eliminazione risorsa",
)[
  #useCaseDiagram("42_1", "UC42.1 - Conferma rimozione repository")
]

===== UC42.1.1: Annullamento rimozione repository <UC42.1.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza la richiesta di conferma #link(<UC42.1>)[#underline[\[UC42.1\]]]
  ],
  post: [
    - L'utente annulla l'operazione e il repository rimane presente nel catalogo personale
  ],
  scenari: [
    - L'utente seleziona il comando di annullamento della rimozione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente aziona il comando di annullamento dell'operazione di eliminazione",
)[]

=== UC43: Gestione permessi di accesso al repository privato <UC43>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente seleziona un repository dal proprio catalogo #link(<UC41>)[#underline[\[UC41\]]]
  ],
  post: [
    - L'utente visualizza l'elenco dei profili autorizzati alla consultazione dei report per la risorsa selezionata
  ],
  scenari: [
    - L'utente accede alla sezione di gestione permessi per il repository scelto
    - L'utente visualizza la lista degli utenti autorizzati
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC43.0.1>)[#underline[\[UC43.0.1\]]]
  ],
  trigger: "L'utente richiede il dettaglio delle autorizzazioni per una risorsa specifica",
)[
  #useCaseDiagram("43", "UC43 - Gestione permessi di accesso al repository privato")
]

==== UC43.0.1: Visualizzazione informativa assenza utenti autorizzati <UC43.0.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente consulta la sezione permessi e la lista risulta vuota #link(<UC43>)[#underline[\[UC43\]]]
  ],
  post: [
    - L'utente visualizza un messaggio che indica l'assenza di profili terzi autorizzati
  ],
  scenari: [
    - L'utente visualizza un'informativa che segnala che l'accesso è limitato al proprietario
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - L'utente visualizza il profilo inserito tra gli utenti autorizzati per la risorsa selezionata
  ],
  scenari: [
    - L'utente inserisce lo username o l'email del profilo da autorizzare #link(<UC44.1>)[#underline[\[UC44.1\]]]
    - L'utente conferma l'aggiunta dell'autorizzazione
  ],
  inclusioni: [
    - #link(<UC44.1>)[#underline[\[UC44.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede l'estensione dei permessi di accesso a un altro utente della piattaforma",
)[
  #useCaseDiagram("44", "UC44 - Aggiunta utente autorizzato")
]

==== UC44.1: Inserimento credenziale utente da autorizzare <UC44.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza il campo di input per l'autorizzazione #link(<UC44>)[#underline[\[UC44\]]]
  ],
  post: [
    - L'utente ha inserito un identificativo valido riferibile a un profilo esistente e autorizzabile
  ],
  scenari: [
    - L'utente digita lo username o l'email del destinatario dell'autorizzazione
    - Il sistema valida l'identificativo e mostra l'esito della verifica
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC44.1.1>)[#underline[\[UC44.1.1\]]]
    - #link(<UC44.1.2>)[#underline[\[UC44.1.2\]]]
    - #link(<UC44.1.3>)[#underline[\[UC44.1.3\]]]
    - #link(<UC44.1.4>)[#underline[\[UC44.1.4\]]]
  ],
  trigger: "L'utente interagisce con il campo di ricerca profili per l'assegnazione dei permessi",
)[
  #useCaseDiagram("44_1", "UC44.1 - Inserimento credenziale utente da autorizzare")
]

===== UC44.1.1: Visualizzazione errore formato identificativo non valido <UC44.1.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente ha inserito uno username/email in formato non valido #link(<UC44.1>)[#underline[\[UC44.1\]]]
  ],
  post: [
    - L'utente visualizza un errore di formato e può correggere l'identificativo
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica il formato richiesto
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Validazione formale negativa dell'identificativo inserito",
)[]

===== UC44.1.2: Visualizzazione errore utente inesistente <UC44.1.2>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'identificativo inserito non corrisponde a nessun profilo esistente #link(<UC44.1>)[#underline[\[UC44.1\]]]
  ],
  post: [
    - L'utente visualizza un avviso che segnala l'inesistenza del profilo
  ],
  scenari: [
    - L'utente visualizza un messaggio che indica che il destinatario non è registrato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Ricerca profilo senza risultati",
)[]

===== UC44.1.3: Visualizzazione errore utente già autorizzato <UC44.1.3>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - Il profilo inserito è già presente tra gli autorizzati #link(<UC43>)[#underline[\[UC43\]]]
  ],
  post: [
    - L'utente visualizza un avviso di duplicazione e la lista permessi rimane invariata
  ],
  scenari: [
    - L'utente visualizza un messaggio che segnala che l'utente è già autorizzato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Tentativo di aggiungere un profilo già autorizzato",
)[]

===== UC44.1.4: Visualizzazione errore campo identificativo vuoto <UC44.1.4>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - Il campo identificativo risulta vuoto durante la conferma #link(<UC44.1>)[#underline[\[UC44.1\]]]
  ],
  post: [
    - L'utente visualizza un avviso di obbligatorietà del campo identificativo
  ],
  scenari: [
    - L'utente visualizza un messaggio che richiede l'inserimento dello username o dell'email
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Conferma con campo identificativo non popolato",
)[]

=== UC45: Rimozione utente autorizzato <UC45>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - L'utente visualizza la lista dei profili autorizzati per un repository #link(<UC43>)[#underline[\[UC43\]]]
  ],
  post: [
    - L'utente visualizza l'esito della revoca e il profilo selezionato non risulta più autorizzato
  ],
  scenari: [
    - L'utente seleziona un profilo dalla lista degli autorizzati
    - L'utente conferma o annulla la revoca dell'autorizzazione #link(<UC45.1>)[#underline[\[UC45.1\]]]
  ],
  inclusioni: [
    - #link(<UC45.1>)[#underline[\[UC45.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede l'eliminazione di un profilo dalla lista degli autorizzati",
)[
  #useCaseDiagram("45", "UC45 - Rimozione utente autorizzato")
]

==== UC45.1: Conferma revoca autorizzazione <UC45.1>
#useCase(
  attore: "Utente Avanzato",
  pre: [
    - La procedura di revoca è stata inizializzata #link(<UC45>)[#underline[\[UC45\]]]
  ],
  post: [
    - L'utente conferma o annulla la revoca dei permessi di accesso
  ],
  scenari: [
    - L'utente conferma la revoca dell'autorizzazione per il profilo selezionato
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
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
    - L'utente visualizza l'esito della rimozione della raccolta dal proprio profilo
    - I report precedentemente contenuti nella raccolta rimangono consultabili tramite altri percorsi previsti dal sistema
  ],
  scenari: [
    - L'utente seleziona una raccolta e avvia la funzione di rimozione
    - L'utente conferma o annulla la rimozione #link(<UC46.1>)[#underline[\[UC46.1\]]]
  ],
  inclusioni: [
    - #link(<UC46.1>)[#underline[\[UC46.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede l'eliminazione di una collezione di report dal proprio profilo",
)[
  #useCaseDiagram("46", "UC46 - Rimozione di una raccolta di report")
]

==== UC46.1: Conferma rimozione raccolta <UC46.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - La procedura di rimozione della raccolta è stata inizializzata #link(<UC46>)[#underline[\[UC46\]]]
  ],
  post: [
    - L'utente conferma o annulla la rimozione della raccolta
  ],
  scenari: [
    - L'utente conferma la rimozione definitiva della raccolta
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - #link(<UC46.1.1>)[#underline[\[UC46.1.1\]]]
  ],
  trigger: "Visualizzazione dell'avviso di conferma rimozione collezione",
)[
  #useCaseDiagram("46_1", "UC46 - Conferma rimozione raccolta")
]

===== UC46.1.1: Annullamento rimozione raccolta <UC46.1.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente visualizza la richiesta di conferma #link(<UC46.1>)[#underline[\[UC46.1\]]]
  ],
  post: [
    - L'utente annulla l'operazione e la raccolta rimane visibile nel proprio profilo
  ],
  scenari: [
    - L'utente seleziona il comando di annullamento della rimozione
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente aziona il comando di annullamento dell'operazione",
)[]

=== UC47: Cancellazione profilo CodeGuardian <UC47>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha effettuato l'accesso alla piattaforma #link(<UC2>)[#underline[\[UC2\]]]
    - L'utente visualizza la sezione di gestione avanzata del profilo
  ],
  post: [
    - L'utente visualizza l'esito della cancellazione del profilo e non può più accedere al sistema con le credenziali precedenti
    - Le associazioni OAuth e i dati personali risultano rimossi dai registri di persistenza
  ],
  scenari: [
    - L'utente avvia la richiesta di cancellazione del profilo
    - L'utente inserisce la password attuale per conferma identità
    - L'utente conferma la cancellazione definitiva #link(<UC47.1>)[#underline[\[UC47.1\]]]
  ],
  inclusioni: [
    - #link(<UC47.1>)[#underline[\[UC47.1\]]]
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "L'utente richiede la chiusura permanente del proprio account CodeGuardian",
)[
  #useCaseDiagram("47", "UC47 - Cancellazione profilo CodeGuardian")
]

==== UC47.1: Conferma definitiva cancellazione profilo <UC47.1>
#useCase(
  attore: "Utente Autorizzato",
  pre: [
    - L'utente ha completato la verifica dell'identità tramite password #link(<UC47>)[#underline[\[UC47\]]]
  ],
  post: [
    - L'utente conferma la comprensione dell'irreversibilità dell'operazione e procede con la cancellazione oppure annulla l'operazione
  ],
  scenari: [
    - L'utente conferma la cancellazione definitiva del profilo dopo la visualizzazione dell'avviso di irreversibilità
  ],
  inclusioni: [
    - Nessuna
  ],
  estensioni: [
    - Nessuna
  ],
  trigger: "Visualizzazione dell'avviso di avvertimento circa l'irreversibilità della cancellazione",
)[]

#pagebreak()

= Requisiti di Sistema
In questa sezione sono elencati i requisiti del sistema CodeGuardian individuati da _Skarab Group_.

Per la nomenclatura utilizzata si consiglia di leggere la sezione 2.1.6.3.2 delle #link(<NdP>)[#underline[*Norme di Progetto*]].

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
  [Il Sistema deve eseguire la validazione completa dei campi obbligatori (presenza, formato, conformità ai vincoli e univocità) al momento dell'invio del modulo di registrazione.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve permettere la finalizzazione della registrazione solo a seguito della validazione positiva di tutti i campi obbligatori.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve creare e memorizzare un record account che includa almeno username, email, hash della password e salt associato a seguito di registrazione completata con esito positivo.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve memorizzare le chiavi di accesso esclusivamente in forma cifrata tramite un algoritmo di hashing sicuro e generare un salt univoco per ciascun account.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve garantire l'atomicità della procedura di registrazione: in caso di fallimento della persistenza, nessun record parziale deve essere mantenuto nel database.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare un messaggio di conferma esplicito a seguito della creazione corretta dell'account CodeGuardian.],
  [#link(<UC1>)[#underline[\[UC1\]]]],

  // --- CAMPI OBBLIGATORI MANCANTI (UC1.0.1) ---
  [#FRObx],
  [Il Sistema deve rilevare il tentativo di invio del modulo di registrazione in presenza di campi obbligatori vuoti.],
  [#link(<UC1.0.1>)[#underline[\[UC1.0.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire la registrazione e notificare l'utente indicando specificamente quali dati obbligatori non sono stati inseriti.],
  [#link(<UC1.0.1>)[#underline[\[UC1.0.1\]]]],

  // --- USERNAME (UC1.1 + ESTENSIONI) ---
  [#FRObx],
  [Il Sistema deve consentire l'immissione di un username alfanumerico con lunghezza compresa tra 4 e 20 caratteri.],
  [#link(<UC1.1>)[#underline[\[UC1.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare l'univocità dello username rispetto agli account esistenti nel database.],
  [#link(<UC1.1>)[#underline[\[UC1.1\]]]],

  [#FRObx],
  [Il Sistema deve imporre vincoli di unicità lato persistenza su username per prevenire registrazioni duplicate anche in presenza di richieste concorrenti.],
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  [#FRObx],
  [In caso di violazione del vincolo di unicità in fase di persistenza, il Sistema deve annullare la registrazione e notificare l'utente con il messaggio previsto per username già in uso.],
  [#link(<UC1.1.2>)[#underline[\[UC1.1.2\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'avanzamento della procedura e mostrare un messaggio di errore qualora lo username inserito non rispetti i vincoli sintattici previsti.],
  [#link(<UC1.1.1>)[#underline[\[UC1.1.1\]]]],

  // --- EMAIL (UC1.2 + ESTENSIONI) ---
  [#FRObx],
  [Il Sistema deve consentire l'immissione di un indirizzo email conforme allo standard RFC 5322.],
  [#link(<UC1.2>)[#underline[\[UC1.2\]]]],

  [#FRObx],
  [Il Sistema deve rifiutare indirizzi email contenenti spazi o privi del carattere "@".],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  [#FRObx],
  [Il Sistema deve verificare l'univocità dell'indirizzo email rispetto agli account esistenti nel database.],
  [#link(<UC1.2>)[#underline[\[UC1.2\]]]],

  [#FRObx],
  [Il Sistema deve imporre vincoli di unicità lato persistenza su indirizzo email per prevenire registrazioni duplicate.],
  [#link(<UC1.2.2>)[#underline[\[UC1.2.2\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'avanzamento della procedura e mostrare un messaggio di errore qualora l'indirizzo email inserito non sia conforme ai requisiti sintattici.],
  [#link(<UC1.2.1>)[#underline[\[UC1.2.1\]]]],

  // --- PASSWORD (UC1.3 + ESTENSIONE) ---
  [#FRObx],
  [Il Sistema deve accettare una password solo se di lunghezza pari o superiore ad 8 caratteri.],
  [#link(<UC1.3>)[#underline[\[UC1.3\]]]],

  [#FRObx],
  [Il Sistema deve accettare una password solo se include almeno una lettera maiuscola, una lettera minuscola, una cifra e un carattere speciale.],
  [#link(<UC1.3>)[#underline[\[UC1.3\]]]],

  [#FRObx],
  [Il Sistema deve rifiutare password che coincidono con lo username o che contengono lo username come sottostringa.],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'avanzamento della procedura e mostrare un messaggio che specifichi i requisiti di sicurezza non soddisfatti.],
  [#link(<UC1.3.1>)[#underline[\[UC1.3.1\]]]],

  // --- AUTENTICAZIONE (UC2) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente non autenticato l'accesso alla sezione di autenticazione (Login).],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve predisporre un comando di conferma per finalizzare la procedura di accesso.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve eseguire la validazione completa delle credenziali (presenza, formato e corrispondenza) al momento dell'invio del modulo.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve garantire l'accesso alle funzionalità riservate esclusivamente a seguito di una corretta validazione delle credenziali.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve reindirizzare l'Utente verso la dashboard principale a seguito di autenticazione avvenuta con successo.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve utilizzare protocolli di comunicazione sicuri (HTTPS) per il trasferimento delle credenziali durante il login.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve utilizzare lo username fornito per recuperare dalla persistenza il record account associato.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve verificare la password inserita confrontando l'hash calcolato con l'hash memorizzato tramite la medesima funzione di hashing e salt.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve implementare meccanismi di rate limiting o lockout temporaneo a seguito di ripetuti tentativi di autenticazione falliti.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare un indicatore di caricamento (spinner) durante la validazione delle credenziali per prevenire invii multipli.],
  [#link(<UC2>)[#underline[\[UC2\]]]],

  [#FRObx],
  [Il Sistema deve rilevare campi incompleti nel login e inibire l'accesso notificando l'utente tramite avviso specifico.],
  [#link(<UC2.0.1>)[#underline[\[UC2.0.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'avanzamento della procedura e mostrare un messaggio di errore qualora lo username inserito non rispetti i vincoli sintattici.],
  [#link(<UC2.1.1>)[#underline[\[UC2.1.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora l'identificativo (username) inserito non risulti censito nel sistema.],
  [#link(<UC2.1.2>)[#underline[\[UC2.1.2\]]]],

  [#FRObx],
  [Il Sistema deve inibire l'avanzamento della procedura e mostrare un messaggio di errore qualora la password inserita non sia formalmente conforme.],
  [#link(<UC2.2.1>)[#underline[\[UC2.2.1\]]]],

  [#FRObx],
  [Il Sistema deve notificare l'utente qualora la password inserita non corrisponda a quella registrata.],
  [#link(<UC2.2.2>)[#underline[\[UC2.2.2\]]]],

  // --- INTEGRAZIONE GITHUB (UC3) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato l'accesso alla sezione dedicata al collegamento del profilo GitHub.],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve impedire l'avvio della procedura di collegamento qualora un profilo GitHub risulti già associato all'account CodeGuardian dell'utente.],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve utilizzare un parametro di stato (state) per prevenire attacchi di tipo Cross-Site Request Forgery (CSRF) durante il flusso OAuth2.],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve memorizzare i token di accesso ottenuti da GitHub esclusivamente in forma cifrata tramite algoritmi di crittografia forte (es. AES-256).],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve evitare la persistenza di token o associazioni qualora la procedura di collegamento non termini con esito positivo.],
  [#link(<UC3>)[#underline[\[UC3\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un avviso informativo obbligatorio prima di procedere al reindirizzamento verso il dominio esterno GitHub.],
  [#link(<UC3.1>)[#underline[\[UC3.1\]]]],

  [#FRObx],
  [Il Sistema deve consentire all'utente di annullare il reindirizzamento, ripristinando lo stato della sezione integrazioni senza alcuna modifica.],
  [#link(<UC3.1.1>)[#underline[\[UC3.1.1\]]]],

  [#FRObx],
  [Il Sistema deve elaborare l'esito della procedura di collegamento al ritorno dell'utente su CodeGuardian e visualizzare un messaggio di esito.],
  [#link(<UC3.2>)[#underline[\[UC3.2\]]]],

  [#FRObx],
  [Il Sistema deve gestire i timeout nelle chiamate verso le API di GitHub durante lo scambio del token, notificando l'utente del fallimento temporaneo.],
  [#link(<UC3.2.1>)[#underline[\[UC3.2.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire il collegamento qualora il profilo GitHub risulti già associato a un altro account CodeGuardian.],
  [#link(<UC3.2.2>)[#underline[\[UC3.2.2\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un messaggio di errore specifico qualora l'utente neghi il consenso alla condivisione dei dati su GitHub.],
  [#link(<UC3.2.3>)[#underline[\[UC3.2.3\]]]],

  // --- RICHIESTA ANALISI (UC4) ---
  [#FRObx],
  [Il Sistema deve consentire l'immissione dell'URL del repository GitHub nel modulo di richiesta analisi.],
  [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx],
  [Il Sistema deve validare che l'URL del repository GitHub inserito utilizzi il protocollo "https://" e punti al dominio "github.com".],
  [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx],
  [Il Sistema deve verificare la dimensione del repository tramite API GitHub e inibire l'analisi qualora questa superi i limiti tecnici prestabiliti.],
  [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx],
  [Il Sistema deve impedire l'avvio di una nuova analisi e informare l'utente se il report esistente risulta già aggiornato.],
  [#link(<UC4.0.1>)[#underline[\[UC4.0.1\]]]],

  [#FRObx],
  [Il Sistema deve disabilitare il comando di conferma dell'invio a seguito della pressione dell'utente per prevenire richieste duplicate.],
  [#link(<UC4>)[#underline[\[UC4\]]]],

  [#FRObx],
  [Il Sistema deve impedire l'invio di una nuova richiesta se un'analisi per il medesimo repository è già in fase di elaborazione.],
  [#link(<UC4.0.2>)[#underline[\[UC4.0.2\]]]],

  [#FRObx],
  [Il Sistema deve inibire la richiesta di analisi qualora non venga selezionata almeno un'area di interesse.],
  [#link(<UC4.1.1>)[#underline[\[UC4.1.1\]]]],

  // --- VISUALIZZAZIONE LISTA (UC5) ---
  [#FRObx],
  [Il Sistema deve ordinare l'elenco dei repository analizzati in ordine decrescente rispetto alla data dell'ultima analisi disponibile.],
  [#link(<UC5>)[#underline[\[UC5\]]]],

  [#FRObx],
  [Il Sistema deve esporre per ogni elemento della lista: nome del repository, URL di riferimento e data dell'ultima analisi.],
  [#link(<UC5.1>)[#underline[\[UC5.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire la visualizzazione della lista e mostrare un'informativa specifica qualora non risultino repository analizzati.],
  [#link(<UC5.0.1>)[#underline[\[UC5.0.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire il rendering della lista e mostrare una notifica di errore qualora i servizi di persistenza non siano raggiungibili.],
  [#link(<UC5.0.2>)[#underline[\[UC5.0.2\]]]],

  [#FRObx],
  [Il Sistema deve fornire un comando di aggiornamento (Refresh) per consentire un nuovo tentativo di caricamento in caso di errore tecnico.],
  [#link(<UC5.0.2>)[#underline[\[UC5.0.2\]]]],

  // --- VISUALIZZAZIONE REPORT (UC6) ---
  [#FRObx],
  [Il Sistema deve consentire la selezione di un repository dalla lista per il recupero del report di dettaglio associato.],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx],
  [Il Sistema deve validare lato server che il report richiesto appartenga al repository associato all'account dell'Utente Autorizzato prima del rendering.],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx],
  [Il Sistema deve inibire il rendering e mostrare un errore di autorizzazione qualora l'utente tenti di accedere a un report di un repository non associato al proprio profilo.],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx],
  [Il Sistema deve gestire i timeout nel recupero dei dati analitici dalla persistenza, notificando l'utente in caso di indisponibilità temporanea del report.],
  [#link(<UC6>)[#underline[\[UC6\]]]],

  [#FRObx],
  [Il Sistema deve permettere la selezione o deselezione dinamica delle aree analitiche (Codice, Sicurezza, Documentazione) tramite interfaccia utente.],
  [#link(<UC6.1>)[#underline[\[UC6.1\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare dinamicamente il contenuto a video in base ai filtri applicati senza richiedere il ricaricamento dell'intera pagina.],
  [#link(<UC6.1>)[#underline[\[UC6.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire la visualizzazione delle aree analitiche e mostrare un avviso informativo qualora non risulti selezionata alcuna area nei filtri.],
  [#link(<UC6.1.1>)[#underline[\[UC6.1.1\]]]],

  // --- METADATI (UC6.2) ---
  [#FRObx],
  [Il Sistema deve esporre i metadati identificativi del report recuperati in fase di caricamento.],
  [#link(<UC6.2>)[#underline[\[UC6.2\]]]],

  [#FRObx],
  [Il Sistema deve esporre il timestamp (data e ora ISO 8601) relativo alla generazione del report.],
  [#link(<UC6.2.1>)[#underline[\[UC6.2.1\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare l'identificativo SHA del commit GitHub analizzato, fornendo un link diretto al commit sulla piattaforma esterna.],
  [#link(<UC6.2.2>)[#underline[\[UC6.2.2\]]]],

  [#FRObx],
  [Il Sistema deve esporre lo username o l'identificativo dell'account che ha originato la scansione.],
  [#link(<UC6.2.3>)[#underline[\[UC6.2.3\]]]],

  // --- RISULTATI E REMEDIATION (UC6.3) ---
  [#FRObx],
  [Il Sistema deve presentare le metriche tecniche aggregate (es. punteggi di qualità, numero bug, vulnerabilità) per ogni sezione attiva.],
  [#link(<UC6.3>)[#underline[\[UC6.3\]]]],

  [#FRObx],
  [Il Sistema deve caricare e visualizzare la lista delle azioni correttive (remediation) associate univocamente alle criticità rilevate nel report.],
  [#link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]],

  [#FRObx],
  [Il Sistema deve consentire l'espansione dei dettagli di ogni singola remediation per la visualizzazione della proposta di risoluzione tecnica.],
  [#link(<UC6.3.1>)[#underline[\[UC6.3.1\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare un messaggio di conferma esito positivo (badge "Clean" o simile) qualora il motore di analisi non rilevi criticità nella sezione.],
  [#link(<UC6.3.1.1>)[#underline[\[UC6.3.1.1\]]]],

  // --- SELEZIONE INTERVALLO TEMPORALE (UC7) ---
  [#FRObx],
  [Il Sistema deve consentire la selezione di un intervallo temporale tramite input di data (inizio e fine) per l'estrazione dei report storici dal database.],
  [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx],
  [Il Sistema deve predisporre un comando di conferma per l'invio della richiesta di confronto dei dati.],
  [#link(<UC7>)[#underline[\[UC7\]]]],

  [#FRObx],
  [Il Sistema deve inibire il caricamento dei dati e visualizzare un avviso specifico qualora i campi relativi alle date non risultino popolati.],
  [#link(<UC7.0.1>)[#underline[\[UC7.0.1\]]]],

  [#FRObx],
  [Il Sistema deve impedire l'invio della richiesta qualora la data di inizio sia cronologicamente successiva alla data di fine, segnalando l'errore di coerenza.],
  [#link(<UC7.0.3>)[#underline[\[UC7.0.3\]]]],

  [#FRObx],
  [Il Sistema deve limitare l'ampiezza dell'intervallo temporale a un massimo di 12 mesi solari, inibendo la richiesta e notificando l'utente in caso di superamento.],
  [#link(<UC7.0.4>)[#underline[\[UC7.0.4\]]]],

  [#FRObx],
  [Il Sistema deve gestire l'assenza di dati nel periodo selezionato visualizzando un'informativa di "Nessun report trovato" senza interrompere la sessione utente.],
  [#link(<UC7.0.2>)[#underline[\[UC7.0.2\]]]],

  // --- VISUALIZZAZIONE METRICHE COMPARATIVE (UC8) ---
  [#FRDex],
  [Il Sistema deve generare rappresentazioni grafiche dinamiche (es. grafici a linee o istogrammi) per illustrare l'evoluzione temporale delle metriche analitiche.],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRDex],
  [Il Sistema deve abilitare tooltips informativi al passaggio del cursore (hover) sui punti dati dei grafici per mostrare i valori esatti e l'hash del commit associato.],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRObx],
  [Il Sistema deve presentare una tabella comparativa che elenchi i report selezionati in ordine cronologico crescente.],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRObx],
  [Il Sistema deve calcolare e visualizzare gli indicatori di variazione (trend incrementali o decrementali) tra ogni analisi e quella immediatamente precedente.],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRObx],
  [Il Sistema deve garantire l'allineamento dei dati tra la vista grafica e la vista tabellare, effettuando una singola operazione di fetch atomica per l'intero intervallo.],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  [#FRObx],
  [Il Sistema deve gestire eventuali errori di rendering dei grafici (es. mancanza di librerie client-side) mostrando in alternativa i dati grezzi in formato tabellare.],
  [#link(<UC8>)[#underline[\[UC8\]]]],

  // --- ANALISI DEL CODICE (UC9) ---
  [#FRObx],
  [Il Sistema deve caricare e visualizzare i dati relativi alla sezione "Codice" esclusivamente se l'area risulta attiva nei filtri di visualizzazione del report.],
  [#link(<UC9>)[#underline[\[UC9\]]]],

  [#FRObx],
  [Il Sistema deve esporre i risultati dell'analisi statica (bug, code smell) indicando per ogni rilievo la gravità e la posizione nel file sorgente.],
  [#link(<UC9.1>)[#underline[\[UC9.1\]]]],

  [#FRObx],
  [Il Sistema deve esporre la percentuale di copertura dei test (Code Coverage) e il rapporto tra test superati e falliti rispetto al totale eseguito.],
  [#link(<UC9.2>)[#underline[\[UC9.2\]]]],

  [#FRObx],
  [Il Sistema deve presentare la lista delle remediation specifiche per il codice, permettendo la navigazione verso il dettaglio della singola azione.],
  [#link(<UC9.3>)[#underline[\[UC9.3\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare un'informativa di "Codice Conforme" qualora non siano rilevati bug o violazioni degli standard qualitativi.],
  [#link(<UC9.3.1>)[#underline[\[UC9.3.1\]]]],

  // --- ANALISI DELLA SICUREZZA (UC10) ---
  [#FRObx],
  [Il Sistema deve caricare i dati della sezione "Sicurezza" in modo asincrono rispetto alle altre sezioni per ottimizzare i tempi di risposta.],
  [#link(<UC10>)[#underline[\[UC10\]]]],

  [#FRObx],
  [Il Sistema deve esporre l'elenco delle dipendenze vulnerabili indicando il codice CVE, il grado di severità (CVSS) e la versione sicura consigliata.],
  [#link(<UC10.1>)[#underline[\[UC10.1\]]]],

  [#FRObx],
  [Il Sistema deve mappare i rilievi di sicurezza rispetto alle categorie della Top 10 OWASP per facilitare la valutazione della conformità.],
  [#link(<UC10.2>)[#underline[\[UC10.2\]]]],

  [#FRObx],
  [Il Sistema deve presentare le remediation di sicurezza, ordinandole prioritariamente in base alla criticità della vulnerabilità associata.],
  [#link(<UC10.3>)[#underline[\[UC10.3\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare un'informativa di "Repository Sicuro" qualora non siano rilevate vulnerabilità note nelle dipendenze o nel codice.],
  [#link(<UC10.3.1>)[#underline[\[UC10.3.1\]]]],

  // --- ANALISI DELLA DOCUMENTAZIONE (UC11) ---
  [#FRObx],
  [Il Sistema deve caricare e visualizzare i dati della sezione "Documentazione" analizzando la presenza e la sintassi dei file Markdown e testuali.],
  [#link(<UC11>)[#underline[\[UC11\]]]],

  [#FRObx],
  [Il Sistema deve segnalare gli errori sintattici e i link interrotti individuati all'interno della documentazione del repository.],
  [#link(<UC11.1>)[#underline[\[UC11.1\]]]],

  [#FRObx],
  [Il Sistema deve calcolare e mostrare un indice di completezza documentale basato sulla copertura delle interfacce pubbliche descritte.],
  [#link(<UC11.2>)[#underline[\[UC11.2\]]]],

  [#FRObx],
  [Il Sistema deve esporre suggerimenti testuali per l'integrazione delle parti di documentazione mancanti o incomplete.],
  [#link(<UC11.3>)[#underline[\[UC11.3\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare un'informativa di "Documentazione Completa" qualora non siano rilevati errori o mancanze informative.],
  [#link(<UC11.3.1>)[#underline[\[UC11.3.1\]]]],

  // --- RANKING REPOSITORY (UC12) ---
  [#FRObx],
  [Il Sistema deve calcolare un punteggio di qualità globale (0-100) per ogni repository analizzato, basandosi sulle metriche pesate di codice, sicurezza e documentazione.],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRObx],
  [Il Sistema deve generare una graduatoria dinamica dei repository associati all'account dell'Utente Autorizzato, ordinata per punteggio di qualità decrescente.],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRObx],
  [Il Sistema deve esporre, per ogni riga del ranking: posizione in classifica, nome del repository, punteggio globale e un indicatore di trend rispetto al mese precedente.],
  [#link(<UC12>)[#underline[\[UC12\]]]],

  [#FRObx],
  [Il Sistema deve inibire il rendering del ranking e visualizzare un'informativa specifica qualora non risultino analisi completate per l'account utente.],
  [#link(<UC12.1>)[#underline[\[UC12.1\]]]],

  // --- DISCONNESSIONE GITHUB (UC13) ---
  [#FRObx],
  [Il Sistema deve consentire la rimozione dell'integrazione GitHub esclusivamente previa conferma esplicita dell'Utente Avanzato.],
  [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx],
  [Il Sistema deve inviare una richiesta di revoca del token OAuth alle API di GitHub al momento della conferma della disconnessione.],
  [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx],
  [Il Sistema deve eliminare definitivamente dal database i token (access e refresh) e l'ID utente GitHub associato all'account CodeGuardian.],
  [#link(<UC13>)[#underline[\[UC13\]]]],

  [#FRObx],
  [Il Sistema deve gestire eventuali errori di comunicazione con GitHub durante la revoca, procedendo comunque alla cancellazione locale dei dati sensibili.],
  [#link(<UC13>)[#underline[\[UC13\]]]],

  // --- ESPORTAZIONE REPORT (UC14) ---
  [#FRDex],
  [Il Sistema deve rendere disponibile il file generato tramite un link di download],
  [#link(<UC14>)[#underline[\[UC14\]]]],

  [#FRDex],
  [Il Sistema deve consentire l'esportazione dei report nei formati PDF (per consultazione) e JSON (per interoperabilità dati).],
  [#link(<UC14.1>)[#underline[\[UC14.1\]]]],

  [#FRDex],
  [Il Sistema deve inibire l'invio della richiesta di generazione file qualora l'utente non selezioni formalmente uno dei formati previsti.],
  [#link(<UC14.1.1>)[#underline[\[UC14.1.1\]]]],

  [#FRDex],
  [Il Sistema deve generare il documento includendo i metadati del report (timestamp, commit hash) e i risultati delle sezioni effettivamente analizzate.],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  [#FRDex],
  [Il Sistema deve gestire il processo di generazione del file asincronamente per evitare il blocco dell'interfaccia utente durante il parsing di report voluminosi.],
  [#link(<UC14.2>)[#underline[\[UC14.2\]]]],

  // --- MODIFICA PASSWORD (UC15) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato l'accesso alla sezione dedicata alla modifica della chiave di accesso.],
  [#link(<UC15>)[#underline[\[UC15\]]]],

  [#FRObx],
  [Il Sistema deve richiedere l'immissione della password attualmente in uso e validarne la corrispondenza con l'hash memorizzato prima di procedere alla variazione.],
  [#link(<UC15.1>)[#underline[\[UC15.1\]]]],

  [#FRObx],
  [Il Sistema deve inibire la procedura e mostrare un errore specifico qualora la password corrente non venga inserita o risulti errata.],
  [#link(<UC15.1.1>)[#underline[\[UC15.1.1\]]], #link(<UC15.1.2>)[#underline[\[UC15.1.2\]]]],

  [#FRObx],
  [Il Sistema deve validare che la nuova password rispetti i vincoli di complessità stabiliti per la registrazione iniziale.],
  [#link(<UC15.2.2>)[#underline[\[UC15.2.2\]]]],

  [#FRObx],
  [Il Sistema deve confrontare l'hash della nuova password con quello attuale e impedire la modifica qualora i valori coincidano.],
  [#link(<UC15.2.3>)[#underline[\[UC15.2.3\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare la password nella persistenza esclusivamente tramite un nuovo processo di hashing sicuro e generazione di un nuovo salt univoco.],
  [#link(<UC15>)[#underline[\[UC15\]]]],

  [#FRObx],
  [Il Sistema deve inviare una notifica email automatica all'indirizzo associato al profilo a seguito dell'avvenuta modifica delle credenziali.],
  [#link(<UC15.4>)[#underline[\[UC15.4\]]]],

  [#FRObx],
  [Il Sistema deve invalidare tutte le sessioni attive dell'utente (ad eccezione di quella corrente) a seguito del cambio password avvenuto con successo.],
  [#link(<UC15.4>)[#underline[\[UC15.4\]]]],

  // --- VISUALIZZAZIONE REMEDIATION (UC16) ---
  [#FRObx],
  [Il Sistema deve consentire la visualizzazione dei dettagli tecnici di una specifica remediation selezionata dall'utente.],
  [#link(<UC16>)[#underline[\[UC16\]]]],

  [#FRObx],
  [Il Sistema deve esporre per ogni remediation: descrizione del difetto, snippet di codice interessato (se applicabile), grado di severità e proposta di risoluzione.],
  [#link(<UC16>)[#underline[\[UC16\]]]],

  [#FRObx],
  [Il Sistema deve includere riferimenti o link a documentazione esterna (es. CWE, OWASP) qualora la remediation riguardi una vulnerabilità di sicurezza nota.],
  [#link(<UC16>)[#underline[\[UC16\]]]],

  // --- VERIFICA ACCESSIBILITÀ REPOSITORY (UC17) ---
  [#FRObx],
  [L'Orchestratore deve gestire il ciclo di vita della verifica accessibilità tramite chiamate asincrone verso le API REST di GitHub.],
  [#link(<UC17>)[#underline[\[UC17\]]]],

  [#FRObx],
  [L'Orchestratore deve implementare un meccanismo di "Exponential Backoff" per gestire i tentativi di riconnessione in caso di errori di rete temporanei verso GitHub.],
  [#link(<UC17.1.1>)[#underline[\[UC17.1.1\]]]],

  [#FRObx],
  [L'Orchestratore deve validare la raggiungibilità dell'endpoint API di GitHub inviando una richiesta di "Heartbeat" prima di tentare il fetch del repository.],
  [#link(<UC17.1>)[#underline[\[UC17.1\]]]],

  [#FRObx],
  [L'Orchestratore deve prima tentare l'accesso al repository senza intestazioni di autorizzazione per verificare se la risorsa è di dominio pubblico.],
  [#link(<UC17.2>)[#underline[\[UC17.2\]]]],

  [#FRObx],
  [In caso di errore HTTP 404 o 403 sulla risorsa pubblica, l'Orchestratore deve tentare una seconda richiesta iniettando nel modulo di autorizzazione il "Personal Access Token" (PAT) o il token OAuth dell'utente.],
  [#link(<UC17.2.1>)[#underline[\[UC17.2.1\]]]],

  [#FRObx],
  [L'Orchestratore deve verificare che il token fornito disponga degli "scopes" (permessi) minimi di lettura (repo o public_repo) necessari per il clonaggio.],
  [#link(<UC17.2.1>)[#underline[\[UC17.2.1\]]]],

  [#FRObx],
  [In caso di fallimento definitivo (es. token scaduto o repository eliminato), l'Orchestratore deve inviare un segnale di interruzione al modulo di notifica e aggiornare lo stato dell'audit in "FAILED_ACCESS".],
  [#link(<UC17.2.1.1>)[#underline[\[UC17.2.1.1\]]]],

  // --- GESTIONE REMEDIATION (UC18 - UC19) ---
  [#FRDex],
  [Il Sistema deve consentire l'applicazione automatica delle modifiche al repository tramite l'integrazione GitHub a seguito dell'accettazione della remediation.],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  [#FRDex],
  [Il Sistema deve eseguire una validazione di integrità sulla proposta correttiva prima dell'invio del commit verso il repository esterno.],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  [#FRDex],
  [Il Sistema deve aggiornare lo stato della remediation in "Applied" o "Dismissed" nel database di persistenza a seguito dell'azione dell'utente.],
  [#link(<UC18>)[#underline[\[UC18\]]] #link(<UC19>)[#underline[\[UC19\]]]],

  [#FRDex],
  [Il Sistema deve notificare l'utente in caso di fallimento del processo di scrittura (commit) sul repository remoto durante l'accettazione.],
  [#link(<UC18>)[#underline[\[UC18\]]]],

  // --- CREAZIONE RACCOLTA REPORT (UC20) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato la definizione di un nome univoco per la raccolta di report all'interno del proprio account.],
  [#link(<UC20.1>)[#underline[\[UC20.1\]]]],

  [#FRObx],
  [Il Sistema deve validare la sintassi dell'URL GitHub fornito, assicurando l'uso del protocollo HTTPS e la corretta struttura del path user/repo.],
  [#link(<UC20.2.1>)[#underline[\[UC20.2.1\]]]],

  [#FRObx],
  [Il Sistema deve interrogare le API di GitHub per confermare l'esistenza e la raggiungibilità del repository indicato prima di finalizzare la raccolta.],
  [#link(<UC20.2.2>)[#underline[\[UC20.2.2\]]]],

  [#FRObx],
  [Il Sistema deve gestire i casi di inaccessibilità del repository (es. repository privato senza permessi) notificando l'utente tramite avviso specifico.],
  [#link(<UC20.2.2>)[#underline[\[UC20.2.2\]]]],

  [#FRObx],
  [Il Sistema deve impedire la creazione di raccolte duplicate che puntano al medesimo repository per lo stesso utente.],
  [#link(<UC20>)[#underline[\[UC20\]]]],

  [#FRObx],
  [Il Sistema deve memorizzare la descrizione facoltativa della raccolta supportando la codifica UTF-8 per caratteri speciali e simboli.],
  [#link(<UC20.3>)[#underline[\[UC20.3\]]]],

  // --- AVVIO ANALISI E CLONAZIONE (UC21 - UC21.1) ---
  [#FRObx],
  [L'Orchestratore deve parallelizzare le richieste di analisi verso i diversi strumenti per ottimizzare il tempo complessivo di esecuzione dell'audit.],
  [#link(<UC21>)[#underline[\[UC21\]]]],

  [#FRObx],
  [L'Orchestratore deve includere nella richiesta verso gli strumenti esterni i parametri di configurazione definiti dall'utente durante la fase di richiesta.],
  [#link(<UC21>)[#underline[\[UC21\]]]],

  [#FRObx],
  [L'Orchestratore deve trasmettere in modo sicuro (tramite secret manager) le credenziali o i token di accesso al servizio AWS incaricato della clonazione.],
  [#link(<UC21.1>)[#underline[\[UC21.1\]]]],

  [#FRObx],
  [L'Orchestratore deve monitorare il completamento della clonazione e gestire eventuali timeout o errori di spazio disco insufficiente sul volume di destinazione.],
  [#link(<UC21.1.1>)[#underline[\[UC21.1.1\]]]],

  [#FRObx],
  [In caso di errore durante la clonazione, l'Orchestratore deve inibire l'invio delle richieste agli strumenti di analisi e liberare immediatamente le risorse allocate.],
  [#link(<UC21.1.1>)[#underline[\[UC21.1.1\]]]],

  // --- DISPATCHING ANALISI (UC21.2 - UC21.4) ---
  [#FRObx],
  [L'Orchestratore deve inoltrare la codebase o i file specifici agli strumenti di analisi esterna (Codice, Sicurezza, Documentazione) tramite protocolli di trasferimento sicuri.],
  [#link(<UC21.2>)[#underline[\[UC21.2\]]] #link(<UC21.3>)[#underline[\[UC21.3\]]] #link(
      <UC21.4>,
    )[#underline[\[UC21.4\]]]],

  // --- PERSISTENZA STATO (UC22) ---
  [#FRObx],
  [Il Sistema deve registrare lo stato dell'analisi nel sistema di persistenza impostandolo a "PENDING" a seguito dell'inizializzazione corretta di tutti i servizi esterni.],
  [#link(<UC22>)[#underline[\[UC22\]]]],

  [#FRObx],
  [Il Sistema deve associare univocamente l'ID dell'analisi al repository oggetto dell'audit e all'identificativo dell'utente richiedente.],
  [#link(<UC22>)[#underline[\[UC22\]]]],

  [#FRObx],
  [Il Sistema deve persistere i metadati di avvio, inclusi l'hash del commit analizzato e il timestamp di sistema.],
  [#link(<UC22>)[#underline[\[UC22\]]]],

  [#FRObx],
  [In caso di errore critico durante la scrittura dello stato (UC22.0.1), l'Orchestratore deve tentare una procedura di "Rollback" informando gli strumenti esterni di annullare l'analisi.],
  [#link(<UC22.0.1>)[#underline[\[UC22.0.1\]]]],

  [#FRObx],
  [Il Sistema deve registrare nei log di audit ogni fallimento di persistenza dello stato, includendo lo stack trace dell'errore per finalità diagnostiche.],
  [#link(<UC22.0.1>)[#underline[\[UC22.0.1\]]]],

  // --- RECUPERO RISULTATI (UC23) ---
  [#FRObx],
  [L'Orchestratore deve verificare regolarmente se gli strumenti esterni hanno terminato l'analisi del repository.],
  [#link(<UC23.1>)[#underline[\[UC23.1\]]]],

  [#FRObx],
  [L'Orchestratore deve scaricare i risultati delle analisi non appena questi vengono messi a disposizione dagli strumenti esterni.],
  [#link(<UC23.2>)[#underline[\[UC23.2\]]]],

  [#FRObx],
  [L'Orchestratore deve controllare che i file ricevuti siano completi e leggibili prima di utilizzarli.],
  [#link(<UC23.2>)[#underline[\[UC23.2\]]]],

  [#FRObx],
  [Il Sistema deve poter proseguire con la creazione del report anche se uno degli strumenti fallisce, utilizzando solo i dati recuperati con successo.],
  [#link(<UC23.0.1>)[#underline[\[UC23.0.1\]]]],

  [#FRObx],
  [L'Orchestratore deve impostare un tempo massimo di attesa per le analisi, oltre il quale smette di aspettare lo strumento ritardatario.],
  [#link(<UC23.0.1>)[#underline[\[UC23.0.1\]]]],

  [#FRObx],
  [Il Sistema deve segnalare all'interno del database se il report finale contiene solo dati parziali a causa di un problema tecnico.],
  [#link(<UC23.0.1>)[#underline[\[UC23.0.1\]]]],

  //UC24
  // --- GENERAZIONE DEL REPORT (UC24) ---
  [#FRObx],
  [Il Sistema deve unificare i dati provenienti dai diversi strumenti (codice, sicurezza, documentazione) in un unico documento di sintesi.],
  [#link(<UC24>)[#underline[\[UC24\]]]],

  [#FRObx],
  [Il Sistema deve convertire i diversi formati dei dati ricevuti dagli strumenti esterni in un modello standard comune.],
  [#link(<UC24>)[#underline[\[UC24\]]]],

  [#FRObx],
  [Il Sistema deve verificare che il report finale contenga tutte le informazioni essenziali (risultati, data, versione del codice) prima di procedere al salvataggio.],
  [#link(<UC24>)[#underline[\[UC24\]]]],

  [#FRObx],
  [Il Sistema deve calcolare i punteggi di riepilogo generali basandosi sui singoli risultati ottenuti nelle varie aree analizzate.],
  [#link(<UC24>)[#underline[\[UC24\]]]],

  // --- SALVATAGGIO E CONCLUSIONE (UC25) ---
  [#FRObx],
  [Il Sistema deve archiviare il report in modo permanente, collegandolo correttamente al repository dell'utente.],
  [#link(<UC25>)[#underline[\[UC25\]]]],

  [#FRObx],
  [Il Sistema deve modificare lo stato dell'analisi in "Completato" solo dopo aver confermato che il salvataggio dei dati è andato a buon fine.],
  [#link(<UC25>)[#underline[\[UC25\]]]],

  [#FRObx],
  [Il Sistema deve informare l'utente con un messaggio di errore se un problema tecnico impedisce il salvataggio definitivo del report.],
  [#link(<UC25.0.1>)[#underline[\[UC25.0.1\]]]],

  [#FRObx],
  [Il Sistema deve tenere traccia internamente dei motivi del fallimento del salvataggio per permettere controlli tecnici successivi.],
  [#link(<UC25.0.1>)[#underline[\[UC25.0.1\]]]],

  [#FRObx],
  [In caso di errore nel salvataggio, il Sistema deve tentare di mantenere una copia temporanea del report per evitare la perdita totale dei dati elaborati.],
  [#link(<UC25.0.1>)[#underline[\[UC25.0.1\]]]],

  // --- NOTIFICA COMPLETAMENTO (UC26) ---
  [#FRObx],
  [Il Sistema deve generare automaticamente un avviso per l'utente non appena il report di analisi è pronto e salvato correttamente.],
  [#link(<UC26>)[#underline[\[UC26\]]]],

  [#FRObx],
  [La notifica inviata deve contenere un link o un pulsante che permetta all'utente di accedere direttamente alla visualizzazione del report.],
  [#link(<UC26>)[#underline[\[UC26\]]]],

  [#FRObx],
  [Il Sistema deve includere nella notifica informazioni di base per identificare l'analisi, come il nome del repository e la data di esecuzione.],
  [#link(<UC26>)[#underline[\[UC26\]]]],

  [#FRObx],
  [Il Sistema deve garantire che l'invio della notifica non interferisca con lo stato dell'analisi: se la notifica fallisce, il report deve comunque rimanere disponibile.],
  [#link(<UC26.0.1>)[#underline[\[UC26.0.1\]]]],

  [#FRObx],
  [In caso di errore nell'invio del messaggio (es. email non raggiungibile), il Sistema deve segnare l'anomalia nei registri interni per permettere verifiche tecniche.],
  [#link(<UC26.0.1>)[#underline[\[UC26.0.1\]]]],

  [#FRObx],
  [Il Sistema deve tentare nuovamente l'invio della notifica per un numero limitato di volte in caso di problemi temporanei di rete.],
  [#link(<UC26.0.1>)[#underline[\[UC26.0.1\]]]],

  // --- RICEZIONE NOTIFICHE (UC27 - UC28) ---
  [#FRObx],
  [Il Sistema deve consegnare la notifica di fine analisi attraverso i canali scelti dall'utente (es. email o notifiche app).],
  [#link(<UC27>)[#underline[\[UC27\]]]],

  [#FRObx],
  [Il Sistema deve mostrare i dettagli dell'analisi (nome progetto e ora) direttamente nell'avviso ricevuto dall'utente.],
  [#link(<UC27>)[#underline[\[UC27\]]]],

  [#FRObx],
  [Il Sistema deve garantire che l'utente possa consultare i risultati nella propria area personale anche se la notifica via email non viene recapitata.],
  [#link(<UC27.0.1>)[#underline[\[UC27.0.1\]]]],

  [#FRObx],
  [Il Sistema deve inviare un avviso immediato se un'analisi si interrompe per un errore imprevisto, spiegandone brevemente il motivo.],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [Il Sistema deve contrassegnare l'analisi come "Fallita" nella lista dei progetti dell'utente se il processo non può essere completato.],
  [#link(<UC28>)[#underline[\[UC28\]]]],

  [#FRObx],
  [Il Sistema deve rendere visibili le cause del fallimento all'interno della dashboard, indipendentemente dall'invio o dalla ricezione dell'avviso di errore.],
  [#link(<UC28.0.1>)[#underline[\[UC28.0.1\]]]],

  // --- GESTIONE ACCESSO GITHUB (UC29) ---
  [#FRObx],
  [Il Sistema deve trasformare il codice provvisorio fornito da GitHub in una chiave di accesso permanente per poter leggere i repository.],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  [#FRObx],
  [Il Sistema deve proteggere la chiave di accesso di GitHub nascondendola tramite cifratura prima di salvarla nei propri archivi.],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  [#FRObx],
  [Il Sistema deve collegare la chiave di GitHub in modo esclusivo al profilo dell'utente che ha autorizzato l'operazione.],
  [#link(<UC29>)[#underline[\[UC29\]]]],

  [#FRObx],
  [Il Sistema deve annullare il collegamento e chiedere all'utente di rifare la procedura se la chiave provvisoria risulta scaduta o non valida.],
  [#link(<UC29.0.1>)[#underline[\[UC29.0.1\]]]],

  // --- VISUALIZZAZIONE REMEDIATION CODICE (UC30) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato la visualizzazione del dettaglio di una singola remediation relativa all'analisi del codice.],
  [#link(<UC30>)[#underline[\[UC30\]]]],

  [#FRObx],
  [Il Sistema deve includere nel dettaglio della remediation del codice il titolo, la descrizione, la tipologia di criticità e il livello di severità.],
  [#link(<UC30>)[#underline[\[UC30\]]]],

  // --- VISUALIZZAZIONE REMEDIATION SICUREZZA (UC31) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato la visualizzazione del dettaglio di una singola remediation relativa all'analisi della sicurezza.],
  [#link(<UC31>)[#underline[\[UC31\]]]],

  [#FRObx],
  [Il Sistema deve includere nel dettaglio della remediation di sicurezza il titolo, la descrizione, la tipologia di vulnerabilità e il livello di severità.],
  [#link(<UC31>)[#underline[\[UC31\]]]],

  // --- VISUALIZZAZIONE REMEDIATION DOCUMENTAZIONE (UC32) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato la visualizzazione del dettaglio di una singola remediation relativa all'analisi della documentazione.],
  [#link(<UC32>)[#underline[\[UC32\]]]],

  [#FRObx],
  [Il Sistema deve includere nel dettaglio della remediation documentale il titolo, la descrizione e la tipologia di rilievo documentale.],
  [#link(<UC32>)[#underline[\[UC32\]]]],

  // --- ACCETTAZIONE REMEDIATION CODICE (UC33 + ESTENSIONE) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato di accettare una remediation relativa all'analisi del codice.],
  [#link(<UC33>)[#underline[\[UC33\]]]],

  [#FRObx],
  [Il Sistema deve applicare automaticamente alla codebase le modifiche previste dalla remediation del codice accettata.],
  [#link(<UC33>)[#underline[\[UC33\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare lo stato della remediation del codice come "eseguita" nella dashboard a seguito dell'applicazione riuscita.],
  [#link(<UC33>)[#underline[\[UC33\]]]],

  [#FRObx],
  [Il Sistema deve gestire errori durante l'applicazione della remediation del codice notificando il fallimento all'utente e mantenendo invariata la codebase.],
  [#link(<UC33.0.1>)[#underline[\[UC33.0.1\]]]],

  // --- RIFIUTO REMEDIATION CODICE (UC34) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato di rifiutare una remediation relativa all'analisi del codice.],
  [#link(<UC34>)[#underline[\[UC34\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare lo stato della remediation del codice come "rifiutata" nella dashboard senza apportare modifiche al repository.],
  [#link(<UC34>)[#underline[\[UC34\]]]],

  // --- ACCETTAZIONE REMEDIATION SICUREZZA (UC35 + ESTENSIONE) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato di accettare una remediation relativa all'analisi della sicurezza.],
  [#link(<UC35>)[#underline[\[UC35\]]]],

  [#FRObx],
  [Il Sistema deve applicare le patch o le configurazioni di sicurezza previste dalla remediation di sicurezza accettata.],
  [#link(<UC35>)[#underline[\[UC35\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare lo stato della remediation di sicurezza come "eseguita" nella dashboard a seguito dell'applicazione riuscita.],
  [#link(<UC35>)[#underline[\[UC35\]]]],

  [#FRObx],
  [Il Sistema deve gestire errori durante l'applicazione della remediation di sicurezza notificando il fallimento all'utente.],
  [#link(<UC35.0.1>)[#underline[\[UC35.0.1\]]]],

  // --- RIFIUTO REMEDIATION SICUREZZA (UC36) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato di rifiutare una remediation relativa all'analisi della sicurezza.],
  [#link(<UC36>)[#underline[\[UC36\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare lo stato della remediation di sicurezza come "rifiutata" nella dashboard senza modificare il repository.],
  [#link(<UC36>)[#underline[\[UC36\]]]],

  // --- ACCETTAZIONE REMEDIATION DOCUMENTAZIONE (UC37 + ESTENSIONE) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato di accettare una remediation relativa all'analisi della documentazione.],
  [#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [Il Sistema deve applicare automaticamente ai file documentali le modifiche previste dalla remediation documentale accettata.],
  [#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare lo stato della remediation documentale come "eseguita" nella dashboard a seguito dell'applicazione riuscita.],
  [#link(<UC37>)[#underline[\[UC37\]]]],

  [#FRObx],
  [Il Sistema deve gestire errori durante l'applicazione della remediation documentale notificando il fallimento all'utente.],
  [#link(<UC37.0.1>)[#underline[\[UC37.0.1\]]]],

  // --- RIFIUTO REMEDIATION DOCUMENTAZIONE (UC38) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato la visualizzazione del dettaglio di una singola remediation relativa all'analisi della documentazione.],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  [#FRObx],
  [Il Sistema deve consentire all'Utente Autorizzato di rifiutare una remediation relativa all'analisi della documentazione.],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  [#FRObx],
  [Il Sistema deve aggiornare lo stato della remediation documentale come "rifiutata" nella dashboard a seguito del rifiuto confermato dall'utente.],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  [#FRObx],
  [Il Sistema deve garantire che il rifiuto di una remediation documentale non comporti alcuna modifica ai file sorgente o di documentazione del repository.],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  [#FRObx],
  [Il Sistema deve rimuovere la remediation rifiutata dalla lista delle azioni pendenti dell'area "Documentazione" o marcarla visivamente come scartata.],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  [#FRObx],
  [Il Sistema deve mostrare all'Utente Autorizzato una conferma visiva dell'avvenuto rifiuto della proposta correttiva.],
  [#link(<UC38>)[#underline[\[UC38\]]]],

  // --- ANALISI REPOSITORY PRIVATI (UC39) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Avanzato di richiedere un'analisi per un repository GitHub privato a condizione che l'integrazione GitHub sia attiva.],
  [#link(<UC39>)[#underline[\[UC39\]]]],

  [#FRObx],
  [Il Sistema deve validare la presenza di un'integrazione GitHub valida prima di accettare la richiesta di analisi per una risorsa privata.],
  [#link(<UC39>)[#underline[\[UC39\]]]],

  [#FRObx],
  [Il Sistema deve inibire la richiesta di analisi privata se l'utente non seleziona almeno un'area di interesse (Codice, Sicurezza, Documentazione).],
  [#link(<UC39>)[#underline[\[UC39\]]]],

  // --- CATALOGO REPOSITORY PRIVATI (UC40, UC41, UC42) ---
  [#FRObx],
  [Il Sistema deve consentire all'Utente Avanzato di inserire l'URL di un repository privato di sua proprietà nel proprio catalogo personale.],
  [#link(<UC40>)[#underline[\[UC40\]]]],

  [#FRObx],
  [Il Sistema deve impedire l'inserimento di un URL repository già presente nel catalogo personale dell'Utente Avanzato, notificando la duplicazione.],
  [#link(<UC40.0.1>)[#underline[\[UC40.0.1\]]]],

  [#FRObx],
  [Il Sistema deve esporre all'Utente Avanzato la lista dei repository privati registrati, includendo per ciascuno il nome e l'URL della risorsa.],
  [#link(<UC41>)[#underline[\[UC41\]]]],

  [#FRObx],
  [Il Sistema deve visualizzare un'informativa specifica che suggerisce l'inserimento della prima risorsa qualora il catalogo privato risulti vuoto.],
  [#link(<UC41.0.1>)[#underline[\[UC41.0.1\]]]],

  [#FRObx],
  [Il Sistema deve consentire la rimozione di un repository dal catalogo privato previa conferma esplicita dell'utente.],
  [#link(<UC42.1>)[#underline[\[UC42.1\]]]],

  [#FRObx],
  [In caso di annullamento della procedura di rimozione, il Sistema deve garantire l'integrità del catalogo mantenendo la risorsa selezionata.],
  [#link(<UC42.1.1>)[#underline[\[UC42.1.1\]]]],

  // --- GESTIONE PERMESSI TERZI (UC43, UC44, UC45) ---
  [#FRObx],
  [Il Sistema deve mostrare all'Utente Avanzato l'elenco dei profili autorizzati alla consultazione dei report per un repository privato selezionato.],
  [#link(<UC43>)[#underline[\[UC43\]]]],

  [#FRObx],
  [Il Sistema deve informare l'utente proprietario qualora l'accesso ai report di un repository privato sia limitato esclusivamente al suo profilo.],
  [#link(<UC43.0.1>)[#underline[\[UC43.0.1\]]]],

  [#FRObx],
  [Il Sistema deve consentire l'aggiunta di un utente autorizzato tramite l'inserimento dello username o dell'indirizzo email del profilo destinatario.],
  [#link(<UC44.1>)[#underline[\[UC44.1\]]]],

  [#FRObx],
  [Il Sistema deve validare che l'identificativo inserito corrisponda a un profilo effettivamente registrato nella piattaforma.],
  [#link(<UC44.1.2>)[#underline[\[UC44.1.2\]]]],

  [#FRObx],
  [Il Sistema deve impedire l'autorizzazione multipla del medesimo profilo per lo stesso repository privato.],
  [#link(<UC44.1.3>)[#underline[\[UC44.1.3\]]]],

  [#FRObx],
  [Il Sistema deve consentire la revoca dei permessi di consultazione per un utente precedentemente autorizzato a seguito di conferma del proprietario.],
  [#link(<UC45.1>)[#underline[\[UC45.1\]]]],

  // --- GESTIONE RACCOLTE E PROFILO (UC46, UC47) ---
  [#FRObx],
  [Il Sistema deve consentire la rimozione di una raccolta di report senza che questo comporti l'eliminazione dei singoli report di analisi in essa contenuti.],
  [#link(<UC46>)[#underline[\[UC46\]]]],

  [#FRObx],
  [Il Sistema deve richiedere l'inserimento della password attuale come verifica di identità obbligatoria prima di avviare la cancellazione dell'account.],
  [#link(<UC47>)[#underline[\[UC47\]]]],

  [#FRObx],
  [Il Sistema deve mostrare un avviso di irreversibilità prima della cancellazione definitiva del profilo, consentendo l'annullamento dell'operazione.],
  [#link(<UC47.1>)[#underline[\[UC47.1\]]]],

  [#FRObx],
  [A seguito della cancellazione del profilo, il Sistema deve rimuovere i dati personali e le associazioni OAuth, invalidando ogni credenziale di accesso precedente.],
  [#link(<UC47>)[#underline[\[UC47\]]]],
)

#pagebreak()
== Requisiti di Qualità (QR)
I seguenti requisiti garantiscono che il sistema sia manutenibile, performante e strutturato secondo gli standard di eccellenza ingegneristica definiti dal team.

#table(
  columns: (1fr, 2.5fr, 1.5fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Fonti*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  [#QRObx],
  [L'architettura deve garantire un'alta coesione e un basso accoppiamento tra l'orchestratore NestJS e gli agenti Python, verificabile tramite revisione dei diagrammi UML2.5.],
  [Interno (Obiettivi di Qualità)],

  [#QRObx],
  [Il sistema deve garantire tempi di risposta della dashboard web ottimizzati, minimizzando il carico computazionale lato client durante il rendering dei report di audit.],
  [Interno (Efficienza)],

  [#QRObx],
  [Ogni componente software deve essere testabile isolatamente; la logica di business deve essere separata dalle interfacce di comunicazione (API/Database).],
  [Interno (Manutenibilità)],

  [#QRObx],
  [È necessario rispettare rigorosamente le metriche di qualità del codice (complessità ciclomatica, duplicazione) definite nelle #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[*Norme di Progetto*].],
  [Interno],
)

#pagebreak()
== Requisiti di Vincolo (VR)
Requisiti imposti dal committente riguardanti tecnologie, standard di sicurezza e documentazione obbligatoria.

#table(
  columns: (1fr, 2.5fr, 1.5fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*ID*], [*Descrizione*], [*Fonti*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, left, center).at(col) + horizon,

  [#VRObx],
  [Il team deve svolgere un’attività di analisi preliminare includendo Design Thinking, User Story Mapping, Business Requirements e Diagrammi UML degli Use Case],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [Deve essere fornita documentazione tecnica tramite standard OpenAPI 3.0 (Swagger) per le API e documentazione del codice sorgente tramite TypeDoc],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [Deve essere fornito un Manuale Utente e un Manuale Manutentore (installazione e integrazione agenti) come parte integrante della fornitura finale],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [Al termine del progetto deve essere consegnato un MVP funzionante accompagnato da una Demo Live e dallo Schema Design relativo alla base dati],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [Il codice prodotto deve raggiungere una copertura minima del 70% tramite test di unità automatizzati misurati con Jest],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [L'applicativo deve essere creato seguendo principi di modularità per consentire l'estensione delle funzioni e l'aggiunta di nuovi agenti di analisi],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [Deve essere fornito un sistema di Bug Reporting strutturato su GitHub Issues per tracciare e gestire le anomalie tramite apposite label],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [Il Back-end e l'Orchestratore devono essere sviluppati utilizzando NestJS v10+, il Front-end in React v18.3+ e gli agenti in Python v3.12+],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [L'architettura deve essere ospitata su infrastruttura cloud AWS, utilizzando esclusivamente gli account IAM forniti dall'azienda proponente],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [Devono essere utilizzate GitHub Actions per implementare pipeline di Continuous Integration e Continuous Deployment (CI/CD)],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Tecnologie"],

  [#VRObx],
  [Il codice sorgente deve essere versionato utilizzando Git (v2.40+) seguendo la branching strategy definita nelle NdP],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "Vincoli Generali"],

  [#VRObx],
  [L'analisi di sicurezza deve essere conforme agli standard OWASP Top 10 (v2021 o successivi)],
  [#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")[Capitolato di Progetto], Sez. "OWASP"],

  [#VRObx],
  [L'interfaccia web deve essere compatibile con Windows 10/11, macOS 14+ e distribuzioni Linux (Ubuntu 22.04+) su browser Chrome 120+, Firefox 120+ e Safari 17+],
  [Decisione Interna],
)
