#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/stDiagramUtil.typ": *

#let versione = "v0.15.0"
#set heading(numbering: "1.1.1")
/*
=== FUNZIONAMENTO DEL DOCUMENTO ===
1. Scaricare l'estensione PlantUML su VS Code
2. Aprite le impostazioni di VS Code e cercate plantuml.ex, deselezionate tutte le checkbox e inserite in outputDir assets/st_diagrams/svg
3. Sempre dalle impostazioni cercate plantuml.pr e assicuratevi che il primo
checkbox Plantuml: Preview Auto Update sia attivo
4. Installare graphviz (sudo apt install graphviz)
5. Dalla cartella assets/st_diagrams entrate nella subfolder del tipo di diagramma che intendete creare, entrate in plantuml e create il file .plantuml; Per la sintassi guardate https://plantuml.com/
6. Assicuratevi sempre che ci sia
hide circles
skinparam classAttributeIconSize 0
dopo aver definito l'inizio del diagramma (almeno pr quelli di classe)
7. i file .svg sono inseriti come non versionabili all'interno
*/


#titlePage("Specifica Tecnica", versione)
#set page(numbering: "1", header: header("Specifica Tecnica"), footer: footer())
#let history = (
  (
    "2026/04/20",
    "0.15.0",
    "Completati i componenti della sezione infrastructure per Analysis Microservice",
    members.andrea,
    members.antonio
  ),
  (
    "2026/04/20",
    "0.14.0",
    "Completati i componenti delle sezioni domain e application per Analysis Microservice",
    members.andrea,
    members.antonio
  ),
  (
    "2026/04/19",
    "0.13.0",
    "Miglioramento parte frontend in seguito alle integrazioni con i microservizi di analisi e di autentificazione",
    members.martinello,
    members.suar,
  ),
  (
    "2026/04/16",
    "0.12.0",
    "Aggiunta sezione Design Patterns per Account Microservice",
    members.alice,
    members.suar
  ),
  (
    "2026/04/13",
    "0.11.0",
    "Aggiunta architettura del Frontend e aggiornamento frameworks in sezione Tecnologie",
    members.martinello,
    members.suar,
  ),
  (
    "2026/04/12",
    "0.10.0",
    "Aggiunti tutti i componenti mancanti per l'entità DocumentationReport di Analysis Microservice",
    members.andrea,
    members.suar,
  ),
  (
    "2026/04/12",
    "0.9.0",
    "Aggiunta introduzione Account Microservice e aggiornamento di alcuni componenti",
    members.alice,
    members.andrea,
  ),
  (
    "2026/04/09",
    "0.8.0",
    "Aggiunti tutti i componenti di Account Microservice",
    members.alice,
    members.suar,
  ),
  (
    "2026/04/08",
    "0.7.0",
    "Aggiunti tutti i componenti di Analysis Microservice",
    members.suar,
    members.alice,
  ),
  (
    "2026/04/06",
    "0.6.0",
    "Aggiunta sezione scelta tool per l'analisi della sicurezza",
    members.antonio,
    members.suar,
  ),
  (
    "2026/03/31",
    "0.5.0",
    "Stesura dei VO dell'Account Microservice",
    members.alice,
    members.suar,
  ),
  (
    "2026/03/31",
    "0.4.0",
    "Completata Introduzione e aggiunti primi Command",
    members.suar,
    members.alice,
  ),
  (
    "2026/03/30",
    "0.3.0",
    "Stesura delle tecnologie, dei VO e delle Entity dell'Analysis Microservice",
    members.suar,
    members.kevin,
  ),
  (
    "2026/03/07",
    "0.2.0",
    "Prima strutturazione della sezione tecnologie",
    members.berengan,
    members.suar,
  ),
  (
    "2026/03/04",
    "0.1.0",
    "Prima stesura del documento",
    members.suar,
    members.berengan,
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

#indiceTabelle()

#pagebreak()

= Introduzione
Il presente documento descrive la #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#specifica-tecnica")[#def("Specifica Tecnica")] relativa al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def("Code Guardian")], commissionato dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def("Var Group")] e realizzato dal gruppo di studenti #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def("Skarab Group")] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

Il progetto ha come obiettivo la realizzazione di un sistema per l'automazione dei processi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] delle vulnerabilità del software. L'architettura si basa sul paradigma degli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] software intelligenti, operanti su repository di codice sorgente. La conformità del sistema è vincolata ai requisiti definiti nel documento Analisi dei Requisiti.

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]), integrati nel workflow degli agenti per formulare e validare le correzioni.

== Finalità del Documento
Il presente documento ha lo scopo di definire l'architettura di sistema e le scelte implementative necessarie alla realizzazione di Code Guardian. Partendo dai requisiti definiti nell'Analisi dei Requisiti, il documento ne formalizza la traduzione in componenti software, definendo i vincoli tecnologici e i pattern di progettazione adottati.

Il documento costituisce il riferimento tecnico primario per il gruppo di lavoro (#def[Skarab Group]) e per gli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#stakeholder")[#def[stakeholder]], perseguendo i seguenti obiettivi:
- definire l'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#architettura-logica")[#def[architettura logica]] del sistema, descrivendo l'interazione tra i componenti attraverso una scomposizione in layer basata sul pattern #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#architettura-esagonale")[#def[esagonale]];
- illustrare l'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#architettura-di-deployment")[#def[architettura di deployment]], specificando la topologia di rete, i nodi di calcolo e le strategie di orchestrazione dei container necessari all'erogazione del servizio;
- formalizzare i #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#design-pattern")[#def[design pattern]] applicati, motivandone l'adozione per garantire la modularità e la testabilità del codice;
- garantire la tracciabilità del progetto attraverso la mappatura dei requisiti, verificando che ogni specifica identificata nell'Analisi dei Requisiti trovi riscontro in una componente tecnica o in una logica di business implementata;
- definire le interfacce di comunicazione per garantire l'estensibilità del sistema a nuovi linguaggi di programmazione o nuovi modelli di intelligenza artificiale;
- fornire una rappresentazione grafica del sistema mediante diagrammi UML e schemi architetturali, facilitando la comprensione delle dipendenze e del flusso dei dati tra i sottosistemi.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link: \
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario (v1.0.0)]].

== Riferimenti
=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione della Specifica Tecnica:
- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Analisi dei Requisiti*: insieme dei requisiti e dei casi d'uso coperti nel Minimum Viable Product. <AdR> \
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")] \
  (versione: *v2.0.0*)

- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. <NdP> \
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")] \
  (versione: *v2.0.0*)

=== Riferimenti Informativi
- *Standard IEEE/ISO/IEC 42010-2022*: International Standard for Software, systems and enterprise--Architecture description \
  #underline[#link("https://ieeexplore.ieee.org/document/9938446")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sulla Progettazione*: \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sulla Dependency Management*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Diagrammi delle Classi*: <ddC> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Diagrammi delle Attività*: <ddA> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Pattern Architetturali*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sulla Dependency Injection*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Model-View Patterns*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Pattern Creazionali*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Pattern Strutturali*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Pattern Comportamentali*: \
  #underline[#link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")] \
  (ultimo accesso: *31/03/2026*)

#pagebreak()

= Tecnologie
== Linguaggi e Runtime
#table(
  columns: (1.5fr, 1.3fr, 8fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*Tecnologia*], [*Versione*], [*Motivazioni*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, center, center).at(col) + horizon,

  [TypeScript],
  [5.9.3],
  [TypeScript è il linguaggio principale adottato per lo sviluppo di entrambi i microservizi. La tipizzazione statica forte consente di rilevare errori a tempo di compilazione anziché a runtime, riducendo il rischio di regressioni e rendendo i contratti tra componenti espliciti e verificabili staticamente. Questa caratteristica è particolarmente rilevante in un'architettura a microservizi dove le interfacce tra moduli devono essere chiare e stabili nel tempo. La compatibilità con l'intero ecosistema Node.js garantisce inoltre accesso a un vasto insieme di librerie mature e mantenute attivamente.],

  [Python],
  [TBD],
  [Python è il linguaggio adottato per la componente agentica del sistema, ospitata all'interno del microservizio di analisi. La scelta è motivata dalla maturità e dall'ampiezza del suo ecosistema nel dominio dell'intelligenza artificiale: Python dispone delle librerie più aggiornate per l'integrazione con modelli di linguaggio di grandi dimensioni e per la costruzione di sistemi agentici. In particolare, AWS Strands — il framework agentico adottato — è disponibile nativamente in Python, rendendo questo linguaggio la scelta obbligata per la componente che esegue all'interno delle funzioni Lambda.],

  [NestJS],
  [11.0.16],
  [NestJS è il framework adottato per entrambi i microservizi TypeScript. La scelta è motivata da molteplici fattori rispetto ad alternative più minimali come Express.
    A differenza di Express, che è una libreria priva di convenzioni architetturali, NestJS è un framework completo che impone una struttura modulare ben definita. Ogni modulo incapsula un dominio funzionale coeso, favorendo la separazione delle responsabilità e rendendo il codice più comprensibile e manutenibile nel tempo.
    Il supporto nativo alla Dependency Injection, basato su decoratori e metadata reflection, consente di dichiarare le dipendenze tra componenti in modo esplicito e di delegarne la risoluzione al framework. Questo meccanismo è particolarmente compatibile con l'architettura Ports & Adapters adottata: le porte vengono definite come interfacce TypeScript e gli adapter come implementazioni concrete, iniettate dal container di NestJS senza che il dominio ne sia a conoscenza.
    L'integrazione nativa con Jest e il supporto al mocking delle dipendenze tramite il sistema di DI rendono il testing unitario e di integrazione agevole e strutturato, consentendo di sostituire le implementazioni reali con mock durante i test senza modificare il codice di produzione.],

  [AWS Strands],
  [TBD],
  [AWS Strands è il framework adottato per la definizione e l'orchestrazione  degli agenti software nella componente Python. Fornisce le primitive necessarie per integrare modelli LLM all'interno di flussi agentici strutturati, gestendo il ciclo di vita degli agenti, la comunicazione con i modelli e la composizione dei tool disponibili. La scelta è motivata dalla sua integrazione nativa con l'ecosistema AWS, in particolare con i servizi Lambda e Step Functions utilizzati per l'orchestrazione del flusso agentico.],

  [MongoDB Atlas],
  [TBD],
  [MongoDB Atlas è il sistema di persistenza adottato per il microservizio di analisi. La motivazione principale risiede nella natura eterogenea dei documenti prodotti: i risultati di audit su repository differenti variano per struttura e contenuto a seconda del tipo di analisi eseguita, rendendo inadeguato uno schema relazionale rigido come quello di PostgreSQL o MySQL. Un documento store come MongoDB permette di persistere risultati con struttura variabile senza migrazioni di schema, adattandosi naturalmente all'evoluzione del dominio. La scelta della versione gestita Atlas elimina l'onere di amministrazione dell'infrastruttura database — provisioning, backup, patching e monitoring sono delegati alla piattaforma — consentendo al team di concentrarsi sul dominio applicativo. MongoDB Atlas offre inoltre scalabilità orizzontale nativa tramite sharding, garantendo che le performance rimangano adeguate all'aumentare del volume di analisi e della dimensione dei documenti persistiti.],

  [Amazon RDS],
  [TBD],
  [Amazon RDS è il sistema di persistenza adottato per il microservizio di gestione delle credenziali. A differenza dei risultati di analisi, le credenziali utente hanno una struttura relazionale ben definita, stabile nel tempo e con vincoli di integrità forti tra entità. Un database relazionale è quindi la scelta più appropriata, garantendo consistenza transazionale e integrità referenziale che un document store non offre nativamente. La versione gestita RDS delega l'amministrazione dell'infrastruttura ad AWS, analogamente a quanto avviene con MongoDB Atlas per il microservizio di analisi.],

  [Amazon Fargate],
  [TBD],
  [AWS Fargate è utilizzato per l'hosting containerizzato del microservizio di analisi. Rispetto a una gestione diretta di istanze EC2, Fargate elimina la necessità di amministrare il sistema operativo e l'infrastruttura sottostante, delegando ad AWS il provisioning e la gestione dei nodi. La scalabilità automatica in base al carico garantisce che il microservizio possa gestire picchi di richieste senza intervento manuale, mantenendo al contempo costi proporzionali all'utilizzo effettivo.],

  [Amazon S3],
  [TBD],
  [Amazon S3 è utilizzato per la memorizzazione del contenuto delle repository da analizzare. Prima di avviare il flusso agentico, il microservizio di analisi carica il codice sorgente su S3, rendendolo accessibile in modo condiviso e affidabile alle funzioni Lambda durante l'esecuzione. S3 garantisce durabilità e disponibilità elevata degli artefatti, disaccoppiando la fase di acquisizione del codice dalla fase di analisi vera e propria e consentendo alle Lambda di operare in modo stateless. In questo contesto, Amazon S3 non funge solo da storage statico, ma opera come un Data Staging Layer fondamentale per l'architettura stateless delle Lambda. Caricando preventivamente i sorgenti su S3, il microservizio di analisi supera i limiti fisici di trasferimento dati tra container e funzioni serverless, garantendo che l'agente Python operi su un set di dati immutabile e prontamente disponibile. Tale disaccoppiamento protegge il sistema da perdite di dati in caso di interruzioni del flusso e facilita eventuali operazioni di re-try o debugging post-mortem.],

  [Amazon Step Function & Amazon Lambda],
  [TBD],
  [AWS Step Functions e AWS Lambda costituiscono il motore del flusso agentico. Step Functions definisce il workflow come macchina a stati esplicita, coordinando l'esecuzione sequenziale e condizionale dei singoli passi agentici implementati come funzioni Lambda in Python. Questo approccio offre diversi vantaggi architetturali e operativi.La gestione degli errori e i meccanismi di retry sono configurabili direttamente nella definizione della macchina a stati, senza dover implementare logica di resilienza all'interno del codice applicativo. In caso di fallimento di un passo, Step Functions può ritentare automaticamente o instradare il flusso verso uno stato di compensazione, rendendo il workflow intrinsecamente robusto.Le funzioni Lambda scalano automaticamente in risposta al numero di esecuzioni concorrenti, con un modello di costo pay-per-use che rende l'approccio economicamente efficiente per carichi di lavoro discontinui come le analisi di repository.Dal punto di vista architetturale, il microservizio NestJS avvia il flusso attraverso una porta dedicata, la cui implementazione è delegata a un adapter che comunica con Step Functions. Questo disaccoppiamento, coerente con l'architettura Ports & Adapters adottata, garantisce che il dominio applicativo non abbia dipendenze dirette verso l'infrastruttura AWS: sostituire Step Functions con un altro orchestratore richiederebbe unicamente la riscrittura dell'adapter, senza alcun impatto sul dominio.],

  [Amazon App Runner],
  [TBD],
  [AWS App Runner è utilizzato per l'hosting del microservizio di gestione delle credenziali. Rispetto a Fargate, App Runner offre un livello di astrazione superiore: il deployment avviene direttamente da un'immagine container senza necessità di configurare cluster, task definition o load balancer. Questa semplicità è adeguata per un microservizio con requisiti di scalabilità e controllo infrastrutturale meno stringenti rispetto al microservizio di analisi.],

  [React],
  [19],
  [Libreria JavaScript per la costruzione di interfacce utente basata su componenti dichiarativi e aggiornamenti reattivi tramite Virtual DOM. Costituisce la base di tutte le pagine e i componenti del frontend.],

  [Vite],
  [6],
  [Build tool e dev server ad alte prestazioni per progetti TypeScript e React. Offre Hot Module Replacement (HMR) e un sistema di proxy per il forwarding delle richieste HTTP verso i microservizi durante lo sviluppo locale.],

  [React Router],
  [7],
  [Libreria per il routing client-side nelle SPA React. Gestisce la navigazione tra pagine pubbliche e protette tramite il pattern #emph[nested routes] con un layout condiviso per le route autenticate.],
)

L'insieme di queste scelte tecnologiche mira a minimizzare il Total Cost of Ownership (TCO) del sistema. L'orientamento verso servizi Managed (Atlas, RDS) e Serverless (Lambda, Step Functions, Fargate) riduce drasticamente l'overhead operativo legato alla manutenzione del ferro e del software di base. Questo approccio 'Ops-less' consente di scalare i costi in modo lineare rispetto all'effettivo utilizzo della piattaforma, trasformando i costi fissi di infrastruttura in costi variabili ottimizzati sul volume di analisi processate.

== Librerie e Strumenti Frontend

#figure(
  table(
    columns: (1fr, 1fr, 3fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header([*Tecnologia*], [*Versione*], [*Descrizione*]),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => (center, left, center).at(col) + horizon,

    [Tailwind CSS],
    [4],
    [Framework CSS utility-first. Permette di definire stili direttamente come classi HTML, eliminando la necessità di fogli CSS custom e garantendo consistenza visiva su tutti i componenti.],

    [shadcn/ui + Radix UI],
    [—],
    [Set di componenti UI accessibili costruiti su primitive Radix UI. Fornisce Button, Dialog, Tabs, Badge, Input, Progress e Skeleton già integrati nel design system del progetto.],

    [Axios],
    [1.x],
    [Client HTTP per le chiamate REST verso i microservizi Account e Analysis. Integrato nel modulo Gateway con interceptor per autenticazione Bearer e refresh automatico dei token su risposta 401.],

    [Zod],
    [3.x],
    [Libreria di validazione e parsing di schemi TypeScript. Utilizzata nelle pagine di login e registrazione per validare i dati dei form lato client prima dell'invio al backend.],

    [Recharts],
    [2.x],
    [Libreria per la visualizzazione di dati tramite grafici SVG basati su React. Utilizzata nella pagina di dettaglio repository per la cronologia degli score di qualità nel tempo.],

    [Sonner],
    [—],
    [Sistema di notifiche toast non invasive. Fornisce feedback visivo per le operazioni asincrone: avvio analisi, errori di rete, conferme di salvataggio.],
  ),
  caption: "Librerie e strumenti del frontend",
)


== Tool per l'analisi
=== Tool per l'agente di sicurezza
#table(
  columns: (1.5fr, 1.3fr, 8fr),
  inset: 10pt,
  stroke: 0.5pt + luma(200),
  table.header([*Tecnologia*], [*Versione*], [*Motivazioni*]),
  fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
  align: (col, row) => (center, center, center).at(col) + horizon,

  [Semgrep CE],
  [1.155.0],
  [Semgrep CE (Community Edition) è uno strumento di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#static-application-security-testing")[#def[Static Application Security Testing]] (SAST) open source che trova vulnerabilità e pattern pericolosi. È integrabile come #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#command-line-interface")[#def[CLI]] tool e con la giusta configurazione è in grado di rilevare in dettaglio il livello di aderenza di un dato repository alla #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#open-web-application-security-project")[#def[OWASP]] Top 10 tramite finding mappati sulle dieci categorie. Tra i tool testati è stato quello più preciso (restituisce anche seggerimenti di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]]). Rispetto ad altri tool di SAST rimane abbastanza leggero e veloce. Anche se scritto su Python e non Typescript, non è un problema integrarlo nell'ecosistema, più rilevante è il formato dei risultati, che possono venir restituiti sotto forma di JSON, facilmente leggibile e modellabile. Supporta molti linguaggi, tra cui Python, Js/Ts, Java, Go, C/C++, Ruby, PHP, HTML e CSS. Si possono anche aggiungere regole personalizzate per un'analisi più precisa.],

  [Trivy],
  [0.69.3],
  [Trivy è uno strumento CLI leggero e open source in grado di rilevare #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#segreti-hardcoded")[#def[segreti hardcoded]] che consente di scansionare un repository velocemente e trovare dati esposti come Chiavi API, Token, credenziali di Database, certificati e chiavi private, che potrebbero portare a violazioni della sicurezza. Lo fa tramite regole preconfigurate basate su espressioni regolari (regole che stanno in un piccolo database aggiornato automaticamente all'avvio del tool). Tra i formati disponibili per generare il report finale, si può selezionare il formato JSON che come detto per il tool precedente, è ottimo per gli scopi del sistema. Come semgrep inoltre supporta l'aggiunta di regole personalizzate. Supporta linguaggi come Js, Node, Ruby, Pyhton, Java, Go, PHP, Rust.],

  [Syft],
  [1.42.2],
  [Syft è un tool CLI, open source e standalone che genera una #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#software-bill-of-materials")[#def[Software Bill of Materials]] (SBOM) dettagliata basandosi sui dati forniti dai file di configurazione dei repository. Grype utilizza tale SBOM direttamente per eseguire la propria scansione. Per il progetto viene preferito un approccio SBOM-based perché riduce la dipendenza dalla presenza di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#lockfile")[#def[lockfile]], da quindi la possibilità di essere più flessibili con le richieste dell'utente. Supporta linguaggi come Js, Node, Python, Java, Ruby, Go, PHP, Rust.],

  [Grype],
  [0.109.1],
  [Grype è uno strumento di scansione delle dipendenze, open source, leggero e veloce che legge un file SBOM e identifica le vulnerabilità note (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#common-vulnerabilities-and-exposures")[#def[CVE]]) presenti nei pacchetti del repository. Il formato finale del report può essere generato in JSON rendendolo facilmente modellabile come detto nei punti precedenti. Come Syft supporta numerosi linguaggi come Js, Node, Python, Java, Ruby, Go, PHP, Rust.],
)

#pagebreak()
= Architettura
== Architettura di Deployment
Il servizio di Analisi è progettato come un microservizio autonomo, responsabile della gestione completa del ciclo di vita delle analisi delle repository. Esso opera in un Bounded Context segregato, isolando la logica di business relativa ai parametri di qualità e alla scansione dei repository dalle altre funzionalità della piattaforma.

Seguendo il pattern Database per Service, il microservizio dispone di uno schema di persistenza dedicato. Questo garantisce l'indipendenza del deployment e impedisce l'accoppiamento a livello di dati con altri servizi, permettendo evoluzioni dello schema senza impatti collaterali sul resto del sistema.

L'interazione con l'ecosistema avviene esclusivamente tramite interfacce ben definite (API Contract). Il servizio espone porte d'ingresso (Primary Adapters) per la ricezione dei comandi e utilizza porte d'uscita (Secondary Adapters) per comunicare in modo asincrono o sincrono con i servizi esterni (es. GitHub API, Servizi di Notifica), mantenendo l'integrità del core logico.

La natura di microservizio permette una scalabilità orizzontale selettiva: essendo l'analisi del codice un'operazione ad alto consumo di risorse (CPU/RAM), il servizio può essere replicato indipendentemente dagli altri moduli del sistema per gestire picchi di carico durante le scansioni massive.
== Architettura Logica
#TODO("Inserire introduzione")
#pagebreak()
=== Analysis Microservice
#TODO("Inserire introduzione")
==== Domain
Il Dominio rappresenta il nucleo centrale dell'architettura esagonale, dove risiedono esclusivamente la logica di business e le regole vitali del progetto. Questa sezione è progettata per essere totalmente agnostica rispetto alla tecnologia: non possiede alcuna conoscenza di database, protocolli di comunicazione (HTTP/REST) o framework esterni.

L'obiettivo del Domain Core è modellare la realtà del problema attraverso un linguaggio comune (_#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#ubiquitous-language")[#def[Ubiquitous Language]]_), garantendo che ogni operazione sia coerente con le aspettative del business.

- *Isolamento Tecnologico:* Il dominio non importa librerie esterne di infrastruttura. Questo garantisce che la logica rimanga testabile in isolamento e protetta dall'obsolescenza dei framework.
- *Integrità e Validazione:* È responsabilità del dominio impedire la creazione di oggetti inconsistenti. Ogni componente (Value Object o Entity) è un "garante" della propria validità.
- *Espressione delle Regole:* Non è un semplice deposito di dati, ma un insieme di componenti attivi che governano i processi (es. il ciclo di vita di un'analisi).
===== Value Object
I Value Object rappresentano concetti del dominio definiti esclusivamente dai loro attributi. Sono progettati per essere *immutabili*: una volta istanziati, il loro stato non può subire variazioni, garantendo la thread-safety e la stabilità dei riferimenti durante l'intero ciclo di vita della richiesta. L'uguaglianza tra due Value Object è determinata dal valore delle proprietà incapsulate e non dall'identità dell'istanza in memoria.

====== AIInterpretation <AIInterpretation>
#codeDiagram("AIInterpretation", 100%)

`AIInterpretation` è il Value Object che rappresenta la valutazione complessiva prodotta dall'agente AI a partire dai risultati dell'analisi statica e della copertura. Aggrega il verdetto finale, il sommario esecutivo e le due valutazioni di dettaglio.

- *Verdetto Vincolato:* Il campo `_verdict` è tipizzato sull'enumerazione #link(<VerdictStatus>)[`VerdictStatus`], garantendo che il giudizio dell'agente sia sempre espresso con un valore riconosciuto dal dominio.
- *Composizione Duale:* Aggrega #link(<StaticAnalysisEvaluation>)[`StaticAnalysisEvaluation`] e #link(<CoverageEvaluation>)[`CoverageEvaluation`], offrendo una visione unificata dei due assi di qualità analizzati.

====== AnalysisId <AnalysisId>
#codeDiagram("AnalysisId", 40%)

L'entità `AnalysisId` è il Value Object che rappresenta l'identità univoca di un'analisi nel sistema. Incapsula un UUID v7 validato, garantendo che ogni analisi possa essere identificata in modo non ambiguo e cronologicamente ordinabile.

- *Immutabilità e Validazione:* Il costruttore privato e il metodo statico `create()` impediscono la creazione di istanze con identificatori malformati, garantendo che solo UUID v7 validi possano essere usati come chiave identitaria.
- *Uguaglianza Strutturale:* Il metodo `equals()` implementa la semantica dei Value Object: due `AnalysisId` sono uguali se e solo se il loro valore stringa è identico.
- *Contratto verso il Dominio:* Viene utilizzato da #link(<GitHubAnalysis>)[`GitHubAnalysis`] come identificatore primario e da #link(<IRepositoryCloner>)[`IRepositoryCloner`] per contestualizzare le operazioni di clonazione.

====== APIViolation <APIViolation>
#codeDiagram("APIViolation", 90%)

`APIViolation` è il Value Object che rappresenta una violazione rilevata nel contratto API del repository analizzato. Aggrega la localizzazione del problema, la regola violata, la severità e una descrizione testuale.

- *Regola Esplicita:* Il campo `_rule` identifica la specifica norma del contratto API non rispettata, consentendo classificazioni aggregate per tipologia di violazione.
- *Composizione:* Aggrega #link(<PathFinding>)[`PathFinding`], #link(<SeverityFinding>)[`SeverityFinding`] e #link(<DescriptionFinding>)[`DescriptionFinding`], contestualizzando ogni violazione con la sua localizzazione, criticità e dettaglio testuale.

====== BranchName <BranchName>
#codeDiagram("BranchName", 40%)

Il Value Object `BranchName` incapsula e valida un nome di branch Git, applicando le regole sintattiche del protocollo Git a livello di dominio. Rappresenta un concetto esplicito del dominio, evitando l'uso di stringhe primitive non validate.

- *Validazione di Dominio:* Tramite una regex derivata dalle specifiche Git (`git-check-ref-format`), impedisce la creazione di branch name che iniziano o terminano con `/`, contengono `..` o caratteri speciali proibiti (`~`, `^`, `:`, `?`, `*`, `[`).
- *Uso come Parametro Contestuale:* Viene aggregato da #link(<GitHubAnalysis>)[`GitHubAnalysis`] per fissare la versione della sorgente analizzata.

====== CodeAgentMetadata <CodeAgentMetadata>
#codeDiagram("CodeAgentMetadata", 60%)

`CodeAgentMetadata` è il Value Object che rappresenta i metadati contestuali prodotti dall'agente di analisi del codice, descrivendo il linguaggio analizzato e lo stato dell'esecuzione.

- *Contesto dell'Esecuzione:* Il campo `_status` garantisce che ogni report sia accompagnato da un'indicazione esplicita sull'esito dell'esecuzione dell'agente, distinguendo analisi completate da quelle parziali o fallite.
- *Linguaggio Dichiarato:* Il campo `_language` associa il report al linguaggio di programmazione analizzato, contestualizzando i risultati per i layer superiori che ne fanno uso.

====== CommitHash <CommitHash>
#codeDiagram("CommitHash", 40%)

`CommitHash` è il Value Object che rappresenta un hash SHA-1 di un commit Git (40 caratteri esadecimali). Garantisce che ogni riferimento a un commit nel sistema sia sintatticamente corretto e immutabile.

- *Validazione Strutturale:* La regex `/^[0-9a-fA-F]{40}$/` assicura che solo hash commit validi possano essere istanziati, rendendo impossibile la propagazione di hash corrotti nel dominio.
- *Riproducibilità:* In combinazione con #link(<BranchName>)[`BranchName`] e #link(<RepoURL>)[`RepoURL`], fissa lo stato esatto del repository, rendendo ogni analisi un'operazione deterministica.

====== ConfigDependency <ConfigDependency>
#codeDiagram("ConfigDependency", 85%)

`ConfigDependency` è il Value Object che rappresenta una dipendenza rilevata in un file di configurazione del progetto (es. `package.json`, `requirements.txt`).

- *Localizzazione della Fonte:* Il campo `_pathFinding` di tipo #link(<PathFinding>)[`PathFinding`] identifica il file di configurazione specifico in cui la dipendenza è stata rilevata, permettendo di risalire alla fonte senza ambiguità.
- *Versione Pinned Opzionale:* Il campo `_versionPinned` è nullable, gestendo i casi in cui una dipendenza sia dichiarata senza vincolo di versione nel file di configurazione.

====== CoverageEvaluation <CoverageEvaluation>
#codeDiagram("CoverageEvaluation", 85%)

`CoverageEvaluation` è il Value Object che aggrega i risultati della valutazione dell'analisi di code coverage, combinando un giudizio sintetico sulla salute complessiva con il dettaglio ragionato per i file critici. 

- *Salute Aggregata:* Il campo `_overallHealth` fornisce una valutazione sintetica dell'intera copertura, permettendo ai layer superiori di ottenere un giudizio immediato senza dover ispezionare i singoli file.
- *Dettaglio per File:* La collezione di #link(<CriticalFileReasoning>)[`CriticalFileReasoning`] raccoglie il ragionamento dettagliato per ciascun file critico, fornendo localizzazione delle lacune e spiegazione contestuale in un'unica struttura coesa.

====== CoveragePercentage <CoveragePercentage>
#codeDiagram("CoveragePercentage", 50%)

`CoveragePercentage` è il Value Object che rappresenta una percentuale di copertura del codice come numero decimale nell'intervallo `[0, 1]`.

- *Invariante Numerica:* La validazione garantisce che il valore sia un numero finito compreso tra 0 e 1 inclusivi, prevenendo valori impossibili come percentuali superiori al 100%.
- *Primitivo di Copertura:* Viene riutilizzato come building block da #link(<CriticalFileReasoning>)[`CriticalFileReasoning`] per rappresentare la percentuale di copertura per linee dei file critici.

====== CriticalFileReasoning <CriticalFileReasoning>
#codeDiagram("CriticalFileReasoning", 85%)

`CriticalFileReasoning` è il Value Object che rappresenta il ragionamento dettagliato su un singolo file critico per la copertura, associando i dati quantitativi delle lacune alla spiegazione contestuale del problema.

- *Dati Quantitativi:* I campi `_missingLines` e `_missingBranches` localizzano con precisione le lacune di copertura, permettendo di intervenire direttamente sulle righe e i branch non coperti.
- *Spiegazione Contestuale:* Il campo `_aiReasoning` di tipo #link(<DescriptionFinding>)[`DescriptionFinding`] arricchisce i dati numerici con una descrizione del problema, trasformando il dato grezzo in un'indicazione azionabile.

====== DependencyAudit <DependencyAudit>
#codeDiagram("DependencyAudit", 100%)

`DependencyAudit` è il Value Object che aggrega l'intero risultato dell'analisi delle dipendenze, confrontando quanto dichiarato nel README con quanto configurato nei file di progetto.

- *Visione Completa:* Raccoglie in un unico oggetto le dipendenze documentate (#link(<ReadmeDependency>)[`ReadmeDependency`]), quelle configurate (#link(<ConfigDependency>)[`ConfigDependency`]), quelle mancanti (#link(<MissingInConfigDependency>)[`MissingInConfigDependency`]), quelle non documentate (#link(<UndocumentedDependency>)[`UndocumentedDependency`]) e i disallineamenti di versione (#link(<VersionMismatchDependency>)[`VersionMismatchDependency`]).
- *Uguaglianza Ordinata:* Il confronto tra collezioni è indipendente dall'ordine di inserimento, garantendo che due audit con le stesse dipendenze siano sempre considerati equivalenti.

====== DependencyFinding <DependencyFinding>
#codeDiagram("DependencyFinding", 70%)

`DependencyFinding` è il Value Object che rappresenta una vulnerabilità nota rilevata in una dipendenza del progetto (es. CVE in un pacchetto npm o pip).

- *Tracciabilità CVE:* Il campo `vulnerabilityId` permette di correlare il finding con i database pubblici di vulnerabilità (es. CVE-2021-44228).
- *Contesto Completo:* Aggrega nome e versione del pacchetto, la severità (#link(<SeverityFinding>)[`SeverityFinding`]) e una descrizione (#link(<DescriptionFinding>)[`DescriptionFinding`]).


====== DescriptionFinding <DescriptionFinding>
#codeDiagram("DescriptionFinding", 45%)

`DescriptionFinding` è il Value Object primitivo che rappresenta la descrizione testuale di un finding di analisi. Garantisce che la descrizione non sia mai vuota o composta da soli spazi.

- *Riuso Composizionale:* Viene riutilizzato come componente da Value Object più complessi quali #link(<ErrorFinding>)[`ErrorFinding`] e #link(<DependencyFinding>)[`DependencyFinding`].

====== DocsDiscrepancy <DocsDiscrepancy>
#codeDiagram("DocsDiscrepancy", 85%)

`DocsDiscrepancy` è il Value Object che rappresenta una discrepanza tra quanto dichiarato nella documentazione e quanto effettivamente rilevato nel codice sorgente.

- *Confronto Duale:* I campi `_docsClaim` e `_actualFinding` catturano esplicitamente entrambi i lati della divergenza, rendendo il problema autoesplicativo senza necessità di ricorrere al codice sorgente.
- *Categorizzazione:* Il campo `_discrepancyCategory` raggruppa le discrepanze per tipologia, abilitando analisi aggregate e prioritizzazione degli interventi correttivi.

====== ErrorFinding <ErrorFinding>
#codeDiagram("ErrorFinding", 90%)

`ErrorFinding` è il Value Object composito che rappresenta un singolo errore rilevato durante l'analisi, aggregando la riga di codice incriminata, una descrizione e un livello di severità.

- *Composizione di Primitivi:* Aggrega #link(<DescriptionFinding>)[`DescriptionFinding`] e #link(<SeverityFinding>)[`SeverityFinding`], arricchendoli con il numero di riga (intero positivo).
- *Blocco Costruttivo:* Viene utilizzato come componente da #link(<OWASPFinding>)[`OWASPFinding`] e #link(<SecretFinding>)[`SecretFinding`].

====== IssueLocation <IssueLocation>
#codeDiagram("IssueLocation", 75%)

`IssueLocation` è il Value Object che rappresenta la posizione precisa di un problema all'interno di un file sorgente, identificando l'intervallo di righe e la colonna coinvolti.

- *Posizione Intervallare:* I campi `_lineStart` e `_lineEnd` modellano problemi che si estendono su più righe, garantendo tramite validazione che `lineStart` non superi mai `lineEnd` e che entrambi siano positivi.
- *Localizzazione Completa:* Combinato con #link(<PathFinding>)[`PathFinding`] in #link(<KeyIssueReasoning>)[`KeyIssueReasoning`], consente di identificare un problema con la precisione necessaria per navigarvi direttamente in un editor.

====== KeyIssueReasoning <KeyIssueReasoning>
#codeDiagram("KeyIssueReasoning", 100%)

`KeyIssueReasoning` è il Value Object che rappresenta il ragionamento dettagliato su un singolo problema rilevato dall'analisi statica, arricchendo il dato grezzo con interpretazione e risoluzione suggerita.

- *Triplice Descrizione:* I campi `_originalDescription`, `_aiReasoning` e `_suggestedResolution`, tutti di tipo #link(<DescriptionFinding>)[`DescriptionFinding`], separano esplicitamente il problema rilevato dallo strumento, la sua interpretazione e la strategia di risoluzione proposta.
- *Localizzazione Precisa:* Aggrega #link(<PathFinding>)[`PathFinding`] e #link(<IssueLocation>)[`IssueLocation`], permettendo di navigare direttamente al punto esatto del codice senza ambiguità.

====== MissingFile <MissingFile>
#codeDiagram("MissingFile", 100%)

`MissingFile` è il Value Object che rappresenta un file referenziato nella documentazione ma assente nel repository analizzato.

- *Doppia Localizzazione:* I campi `_referencedPath` e `_referencedIn` permettono di risalire non solo al file mancante, ma anche al documento che ne dichiara l'esistenza, rendendo il finding immediatamente azionabile.
- *Stato Classificato:* Il campo `_statusMissing` di tipo #link(<StatusMissing>)[`StatusMissing`] distingue semanticamente le diverse cause di assenza, abilitando politiche di gestione differenziate.

====== MissingInConfigDependency <MissingInConfigDependency>
#codeDiagram("MissingInConfigDependency", 90%)

`MissingInConfigDependency` è il Value Object che rappresenta una dipendenza documentata nel README ma assente nei file di configurazione del progetto.

- *Severità Associata:* Il campo `_severity` di tipo #link(<SeverityFinding>)[`SeverityFinding`] permette di graduare il rischio della mancanza, distinguendo dipendenze critiche da quelle accessorie.
- *Riferimento al Contesto:* Il campo `_pathFinding` di tipo #link(<PathFinding>)[`PathFinding`] indica il file di configurazione in cui la dipendenza avrebbe dovuto essere presente, contestualizzando il problema per chi deve risolverlo.

====== OWASPFinding <OWASPFinding>
#codeDiagram("OWASPFinding", 70%)

`OWASPFinding` è il Value Object che rappresenta una vulnerabilità di sicurezza classificata secondo la tassonomia OWASP. Aggrega localizzazione, dettaglio dell'errore e categoria OWASP.

- *Classificazione Standard:* Il campo `owaspCategory` permette di associare ogni vulnerabilità a una categoria riconosciuta (es. `A01:2021-Broken Access Control`).


====== PATPassword <PATPassword>
#codeDiagram("PATPassword", 40%)

`PATPassword` è il Value Object che rappresenta l'hash SHA-256 di una password usata per proteggere un Personal Access Token. Non contiene mai la password in chiaro.

- *Sicurezza per Design:* Accetta esclusivamente stringhe nel formato SHA-256 (64 caratteri esadecimali), impedendo la circolazione di password in chiaro nel dominio.


====== PathFinding <PathFinding>
#codeDiagram("PathFinding", 40%)

`PathFinding` è il Value Object che rappresenta un percorso relativo a un file nel repository analizzato. Applica regole di sicurezza per impedire path traversal e percorsi assoluti.

- *Sicurezza Strutturale:* Vieta percorsi assoluti, separatori Windows (`\`) e sequenze `..`, garantendo che i finding riferiscano sempre a file interni al repository clonato.


====== PersonalAccessToken <PersonalAccessToken>
#codeDiagram("PersonalAccessToken", 50%)

`PersonalAccessToken` è il Value Object che incapsula un GitHub PAT, validandone il formato secondo i pattern ufficiali GitHub (`ghp_*` o `github_pat_*`).

- *Validazione del Formato:* La regex garantisce che solo token con formato ufficiale possano essere usati, prevenendo la registrazione di token malformati.

====== ReadmeDependency <ReadmeDependency>
#codeDiagram("ReadmeDependency", 65%)

`ReadmeDependency` è il Value Object che rappresenta una dipendenza dichiarata nel file README del repository.

- *Versione Opzionale:* Il campo `_versionClaimed` è nullable, riflettendo la realtà documentale in cui un README può citare una dipendenza senza specificarne la versione esatta.
- *Fonte Documentale:* Viene aggregato da #link(<DependencyAudit>)[`DependencyAudit`] come rappresentazione della dipendenza dal punto di vista della documentazione, da confrontare con quanto dichiarato nei file di configurazione.

====== ReportId <ReportId>
#codeDiagram("ReportId", 40%)

`ReportId` è il Value Object che rappresenta l'identità univoca di un report nel sistema. Incapsula un UUID v7 validato, garantendo che ogni report possa essere identificato in modo non ambiguo e cronologicamente ordinabile.

- *Uguaglianza Strutturale:* Il metodo `equals()` implementa la semantica dei Value Object: due `ReportId` sono uguali se e solo se il loro valore stringa è identico.
//- *Contratto verso il Dominio:* Viene utilizzato come identificatore primario dalle entity di report quali #link(<CodeReport>)[`CodeReport`] e #link(<DocumentationReport>)[`DocumentationReport`].

====== RepoURL <RepoURL>
#codeDiagram("RepoURL", 40%)

`RepoURL` è il Value Object che rappresenta l'URL di un repository GitHub. La validazione garantisce la conformità al formato `https://github.com/<owner>/<repo>`.

- *Contesto Esplicito:* Vincola il sistema a operare esclusivamente su repository GitHub, rendendo esplicito il bounded context del modulo.
- *Sicurezza:* Il requisito HTTPS previene l'iniezione di URL arbitrari.


====== SecretFinding <SecretFinding>
#codeDiagram("SecretFinding", 65%)

`SecretFinding` rappresenta la rilevazione di un segreto esposto (API key, token, password) all'interno del codice sorgente analizzato.

- *Categorizzazione:* Il campo `secretCategory` (es. `AWS_ACCESS_KEY`) permette al sistema di classificare il tipo di segreto trovato.
- *Criticità:* Indica un rischio immediato di compromissione delle risorse accedute dal segreto rilevato.


====== SeverityFinding <SeverityFinding>
#codeDiagram("SeverityFinding", 45%)

`SeverityFinding` è il Value Object che rappresenta il livello di severità di un finding, vincolato all'enumerazione #link(<SeverityLevel>)[`SeverityLevel`] (`LOW`, `MEDIUM`, `HIGH`, `CRITICAL`).

- *Coerenza del Dominio:* Normalizza la stringa in input e la valida, garantendo che nessun livello arbitrario possa essere introdotto.

====== StaticAnalysisEvaluation <StaticAnalysisEvaluation>
#codeDiagram("StaticAnalysisEvaluation", 100%)

`StaticAnalysisEvaluation` è il Value Object che aggrega i risultati della valutazione dell'analisi statica, combinando il conteggio totale dei problemi rilevati con la collezione dei ragionamenti dettagliati per ciascun problema.

- *Conteggio Totale:* Il campo `_totalIssuesAnalyzed` preserva il numero complessivo di problemi analizzati, permettendo di avere una visione quantitativa immediata dell'entità dei problemi rilevati.
- *Ragionamenti Aggregati:* La collezione di #link(<KeyIssueReasoning>)[`KeyIssueReasoning`] raccoglie il dettaglio analitico per ciascun problema, fornendo localizzazione, severità e risoluzione suggerita in un'unica struttura coesa.

====== ToolError <ToolError>
#codeDiagram("ToolError", 60%)

`ToolError` è il Value Object che rappresenta un errore verificatosi durante l'esecuzione di uno strumento di analisi, associando il nome dello strumento alla descrizione del problema riscontrato.

- *Identificazione della Fonte:* Il campo `_toolName` permette di risalire immediatamente allo strumento che ha generato l'errore.
- *Uguaglianza per Contenuto:* Il metodo `equals()` confronta sia il nome dello strumento che la descrizione, garantendo che due errori identici prodotti dallo stesso tool siano riconosciuti come equivalenti.

====== UndocumentedDependency <UndocumentedDependency>
#codeDiagram("UndocumentedDependency", 70%)

`UndocumentedDependency` è il Value Object che rappresenta una dipendenza presente nei file di configurazione del progetto ma non menzionata nel README.

- *Gap di Documentazione:* La sua presenza segnala una libreria introdotta senza aggiornamento del README, riducendo la comprensibilità del progetto per i nuovi contributori.
- *Localizzazione Precisa:* Il campo `_pathFinding` di tipo #link(<PathFinding>)[`PathFinding`] indica il file di configurazione in cui la dipendenza è stata rilevata, facilitando l'intervento correttivo sulla documentazione.

====== UserId <UserId>
#codeDiagram("UserId", 35%)

`UserId` è il Value Object che rappresenta l'identità dell'utente che ha richiesto l'analisi. Incapsula un UUID standard validato.

- *Tracciabilità:* Viene aggregato da #link(<GitHubAnalysis>)[`GitHubAnalysis`] per associare ogni analisi al richiedente, abilitando audit trail e politiche di accesso.
- *Separazione:* Permette di evolvere il modello identitario senza impattare la logica di analisi del dominio.

====== VersionMismatchDependency <VersionMismatchDependency>
#codeDiagram("VersionMismatchDependency", 100%)

`VersionMismatchDependency` è il Value Object che rappresenta una dipendenza la cui versione dichiarata nel README differisce da quella specificata nel file di configurazione.

- *Confronto Esplicito:* I campi `_readmeVersion` e `_configVersion` preservano entrambe le versioni rilevate, permettendo al report di mostrare la discrepanza in modo diretto senza perdita di informazione.
- *Tracciabilità della Fonte:* Il campo `_pathFinding` di tipo #link(<PathFinding>)[`PathFinding`] indica il file di configurazione in cui la versione discordante è stata rilevata, guidando l'intervento correttivo verso il file specifico da aggiornare.

===== Enums
====== AnalysisStatus <AnalysisStatus>
#codeDiagram("AnalysisStatus", 20%)

`AnalysisStatus` è l'enumerazione che definisce gli stati del ciclo di vita di un'analisi: `PENDING`, `IN_PROGRESS`, `COMPLETED`, `FAILED`.

- *Macchina a Stati:* Definisce le transizioni valide gestite da #link(<GitHubAnalysis>)[`GitHubAnalysis`]: `PENDING → IN_PROGRESS` (via `inProgress()`), `IN_PROGRESS → COMPLETED` (via `complete()`), `IN_PROGRESS → FAILED` (via `failed()`). Ogni transizione non valida genera un errore esplicito.
- *Osservabilità:* Permette ai servizi applicativi e all'infrastruttura di monitorare e persistere lo stato di avanzamento dell'analisi in modo type-safe.

====== SeverityLevel <SeverityLevel>
#codeDiagram("SeverityLevel", 20%)

`SeverityLevel` è l'enumerazione che definisce i livelli di criticità dei finding: `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.

- *Vocabolario Condiviso:* Definisce il vocabolario ufficiale del dominio per la classificazione della severità, usato da #link(<SeverityFinding>)[`SeverityFinding`] come insieme di valori validi.
- *Standardizzazione:* Evita l'uso di stringhe libere, garantendo che tutti i componenti del sistema parlino lo stesso linguaggio per la prioritizzazione dei problemi rilevati.

====== StatusMissing <StatusMissing>
#codeDiagram("StatusMissing", 30%)

`StatusMissing` è l'enumerazione che classifica la causa di assenza di un file referenziato nella documentazione: `NOT_FOUND`, `POSSIBLY_RENAMED`, `WRONG_PATH`.

- *Vocabolario Diagnostico:* Definisce il vocabolario ufficiale del dominio per distinguere le diverse cause di assenza, usato da #link(<MissingFile>)[`MissingFile`] per caratterizzare semanticamente ogni file mancante.
- *Azionabilità:* I tre valori guidano interventi distinti: `NOT_FOUND` suggerisce un file mai creato, `POSSIBLY_RENAMED` un refactoring non riflesso nella documentazione, `WRONG_PATH` un errore di percorso nel riferimento.

====== VerdictStatus <VerdictStatus>
#codeDiagram("VerdictStatus", 20%)

`VerdictStatus` è l'enumerazione che definisce i livelli di qualità complessiva restituiti dall'analisi del codice: `CRITICAL`, `POOR`, `FAIR`, `GOOD`, `EXCELLENT`.

- *Scala Ordinata:* I cinque valori formano una scala progressiva dalla qualità peggiore alla migliore, usata da #link(<AIInterpretation>)[`AIInterpretation`] per esprimere il giudizio sintetico sull'intero repository analizzato.
- *Standardizzazione:* Traduce il verdetto testuale presente nel JSON dell'agente in un valore type-safe del dominio, impedendo la propagazione di verdetti arbitrari nei layer applicativi.


===== Entity
A differenza dei Value Object, le Entity sono definite dalla loro *identità* persistente nel tempo e non solo dai loro attributi. Un'Entity mantiene la propria individualità anche se i suoi dati interni subiscono variazioni. Esse incapsulano lo stato e il comportamento del business, garantendo che le transizioni di stato avvengano nel rispetto delle regole del dominio.

- *Identità Univoca:* Ogni Entity è associata a un identificatore immutabile che ne permette la distinzione univoca all'interno del sistema.
- *Ciclo di Vita e Stato:* Le Entity possiedono un ciclo di vita (creazione, modifica, archiviazione) e gestiscono attivamente le proprie mutazioni interne attraverso metodi espliciti.
- *Integrità Comportamentale:* Non si limitano a esporre dati (getter/setter), ma offrono metodi che rappresentano azioni di business, assicurando che l'oggetto passi solo attraverso stati validi e coerenti.

====== GitHubAnalysis <GitHubAnalysis>
#codeDiagram("GitHubAnalysis", 100%)

`GitHubAnalysis` è l'entità radice dell'aggregato che rappresenta un'analisi di un repository GitHub. Incapsula l'identità, l'utente richiedente, il contesto del repository, i riferimenti ai report prodotti dalle analisi e la macchina a stati del ciclo di vita.

- *Identità Basata sull'Analisi:* Il metodo `equals()` confronta due istanze esclusivamente tramite #link(<AnalysisId>)[`AnalysisId`], esprimendo la semantica fondamentale delle entity: due `GitHubAnalysis` sono la stessa analisi se condividono l'identità, indipendentemente dai dati aggregati.
- *Radice dell'Aggregato:* Coordina e protegge la consistenza dei Value Object #link(<AnalysisId>)[`AnalysisId`], #link(<UserId>)[`UserId`], #link(<RepoURL>)[`RepoURL`], #link(<BranchName>)[`BranchName`], #link(<CommitHash>)[`CommitHash`] e #link(<ReportId>)[`ReportId`].
- *Riferimenti ai Report Opzionali:* I campi `codeReportId`, `docsReportId` e `securityReportId` sono nullable, modellando il fatto che un'analisi può coinvolgere solo un sottoinsieme dei tre tipi di report disponibili in base a quanto richiesto.
- *Macchina a Stati Protetta:* I metodi `inProgress()`, `complete()` e `failed()` implementano le transizioni valide dell'#link(<AnalysisStatus>)[`AnalysisStatus`], rifiutando transizioni non consentite con errori espliciti.


====== CodeAgentReport <CodeAgentReport>
#codeDiagram("CodeAgentReport", 100%)

`CodeAgentReport` è l'entità che rappresenta il report prodotto dall'analisi del codice per una specifica analisi. Aggrega i metadati dell'esecuzione e l'interpretazione complessiva dei risultati, collegandosi all'analisi di appartenenza tramite identificatori.

- *Identità Basata sul Report:* Il metodo `equals()` confronta due istanze esclusivamente tramite #link(<ReportId>)[`ReportId`], esprimendo la semantica fondamentale delle entity: due `CodeAgentReport` sono lo stesso report se condividono l'identità, indipendentemente dai dati aggregati.
- *Contenuto del Report:* Aggrega #link(<CodeAgentMetadata>)[`CodeAgentMetadata`] per i metadati contestuali dell'esecuzione e #link(<AIInterpretation>)[`AIInterpretation`] per il verdetto complessivo e le valutazioni di dettaglio sull'analisi statica e sulla copertura.

====== DocumentationReport <DocumentationReport>
#codeDiagram("DocumentationReport", 100%)

`DocumentationReport` è l'entità che rappresenta il report prodotto dall'analisi della documentazione per una specifica analisi. Aggrega le violazioni API, le discrepanze documentali, i file mancanti e l'audit delle dipendenze, collegandosi all'analisi di appartenenza tramite identificatori.

- *Identità Basata sul Report:* Il metodo `equals()` confronta due istanze esclusivamente tramite #link(<ReportId>)[`ReportId`], esprimendo la semantica fondamentale delle entity: due `DocumentationReport` sono lo stesso report se condividono l'identità, indipendentemente dai dati aggregati.
- *Risultati Opzionali:* Le collezioni `apiViolations` (#link(<APIViolation>)[`APIViolation`]), `docsDiscrepancies` (#link(<DocsDiscrepancy>)[`DocsDiscrepancy`]) e `missingFiles` (#link(<MissingFile>)[`MissingFile`]) vengono inizializzate a array vuoto se non fornite, mentre `dependencyAudit` (#link(<DependencyAudit>)[`DependencyAudit`]) è nullable, modellando il fatto che ciascuna categoria di risultati può essere assente in base all'esito dell'analisi.

====== SecurityReport <SecurityReport>
#codeDiagram("SecurityReport", 100%)

`SecurityReport` è l'entità che rappresenta il report prodotto dall'analisi di sicurezza per una specifica analisi. Aggrega i finding sulle dipendenze vulnerabili, le violazioni OWASP, i segreti esposti e gli eventuali errori degli strumenti di analisi, collegandosi all'analisi di appartenenza tramite identificatori.

- *Identità Basata sul Report:* Il metodo `equals()` confronta due istanze esclusivamente tramite #link(<ReportId>)[`ReportId`], esprimendo la semantica fondamentale delle entity: due `SecurityReport` sono lo stesso report se condividono l'identità, indipendentemente dai dati aggregati.
- *Tre Assi di Sicurezza:* Le collezioni `dependencyFindings` (#link(<DependencyFinding>)[`DependencyFinding`]), `owaspFindings` (#link(<OWASPFinding>)[`OWASPFinding`]) e `secretFindings` (#link(<SecretFinding>)[`SecretFinding`]) modellano tre categorie distinte di problemi di sicurezza (standard OWASP, dipendenze vulnerabili e segreti), ciascuna con la propria semantica e struttura dati.
- *Tracciabilità degli Errori:* La collezione `toolErrors` di tipo #link(<ToolError>)[`ToolError`] preserva i fallimenti degli strumenti di analisi all'interno del report stesso, rendendo visibile anche un'esecuzione parziale senza perdere i risultati già raccolti.

===== Service
====== IPasswordProvider <IPasswordProvider>
#codeDiagram("IPasswordProvider", 60%)

`IPasswordProvider` è l'interfaccia del Domain Service responsabile della trasformazione di una password in chiaro in un #link(<PATPassword>)[`PATPassword`] (hash SHA-256 validato).

- *Separazione della Responsabilità:* Isola la logica di hashing dall'applicazione, permettendo di sostituire l'algoritmo di hashing senza modificare i servizi applicativi che dipendono da questo contratto.
- *Porta del Dominio:* Definisce un contratto che viene implementato dal Domain Service concreto #link(<PATPasswordProvider>)[`PATPasswordProvider`], seguendo il pattern Ports & Adapters anche all'interno del dominio.

====== ICodeReportEntityProvider <ICodeReportEntityProvider>
#codeDiagram("ICodeReportEntityProvider", 100%)

`ICodeReportEntityProvider` è l'interfaccia del Domain Service responsabile della costruzione di un'entità #link(<CodeAgentReport>)[`CodeAgentReport`] a partire dalla risposta grezza dell'agente di analisi del codice.

- *Porta del Dominio:* Definisce il contratto che separa il dominio dal layer applicativo, impedendo che la logica di mapping del JSON dell'agente penetri nelle entità di dominio.
- *Contestualizzazione:* Il metodo riceve #link(<ReportId>)[`ReportId`] e #link(<AnalysisId>)[`AnalysisId`] come parametri espliciti, garantendo che ogni entità prodotta sia immediatamente contestualizzata nel sistema senza ambiguità.

====== IDocsReportEntityProvider <IDocsReportEntityProvider>
#codeDiagram("IDocsReportEntityProvider", 100%)

`IDocsReportEntityProvider` è l'interfaccia del Domain Service responsabile della costruzione di un'entità #link(<DocumentationReport>)[`DocumentationReport`] a partire dalla risposta grezza dell'agente di analisi della documentazione.

- *Porta del Dominio:* Definisce il contratto che separa il dominio dal layer applicativo, impedendo che la logica di mapping del JSON dell'agente penetri nelle entità di dominio.
- *Contestualizzazione:* Il metodo riceve #link(<ReportId>)[`ReportId`] e #link(<AnalysisId>)[`AnalysisId`] come parametri espliciti, garantendo che ogni entità prodotta sia immediatamente contestualizzata nel sistema senza ambiguità.

====== PATPasswordProvider <PATPasswordProvider>
#codeDiagram("PATPasswordProvider", 58%)

`PATPasswordProvider` è l'implementazione concreta del Domain Service #link(<IPasswordProvider>)[`IPasswordProvider`]. Valida i requisiti di complessità della password (maiuscola, numero, carattere speciale, lunghezza minima) e produce un #link(<PATPassword>)[`PATPassword`] tramite hash SHA-256.

- *Politica di Sicurezza:* Applica una politica di complessità esplicita prima dell'hashing, garantendo che solo password sufficientemente robuste possano essere usate per proteggere i PAT.
- *Immutabilità del Risultato:* Il risultato è sempre un `PATPassword` immutabile, che può circolare nel dominio senza rischio di esposizione della password originale.

====== ISecurityReportEntityProvider <ISecurityReportEntityProvider>
#codeDiagram("ISecurityReportEntityProvider", 100%)

`ISecurityReportEntityProvider` è l'interfaccia del Domain Service responsabile della costruzione di un'entità #link(<SecurityReport>)[`SecurityReport`] a partire dalla risposta grezza dell'agente di analisi di sicurezza.

- *Porta del Dominio:* Definisce il contratto che separa il dominio dal layer applicativo, impedendo che la logica di mapping del JSON dell'agente penetri nelle entità di dominio.
- *Contestualizzazione:* Il metodo riceve #link(<ReportId>)[`ReportId`] e #link(<AnalysisId>)[`AnalysisId`] come parametri espliciti, garantendo che ogni entità prodotta sia immediatamente contestualizzata nel sistema senza ambiguità.

====== ReportEntitiesProvider <ReportEntitiesProvider>
#codeDiagram("ReportEntitiesProvider", 100%)

`ReportEntitiesProvider` è il Domain Service concreto che implementa le tre interfacce #link(<ICodeReportEntityProvider>)[`ICodeReportEntityProvider`], #link(<IDocsReportEntityProvider>)[`IDocsReportEntityProvider`] e #link(<ISecurityReportEntityProvider>)[`ISecurityReportEntityProvider`], centralizzando in un'unica classe tutta la logica di mapping dalle risposte grezze degli agenti alle entità di dominio.

- *Normalizzazione degli Alias:* Gestisce internamente le tabelle di alias (`STATUS_MISSING_ALIASES`, `SEVERITY_ALIASES`, `VERDICT_ALIASES`) che traducono i valori testuali non standardizzati prodotti dagli agenti nei valori type-safe delle enumerazioni di dominio, proteggendo le entità da input arbitrari.
- *Mapping Strutturato:* Per ciascun tipo di report, decompone la risposta JSON in Value Object atomici — costruendo ad esempio #link(<KeyIssueReasoning>)[`KeyIssueReasoning`], #link(<CriticalFileReasoning>)[`CriticalFileReasoning`] e #link(<AIInterpretation>)[`AIInterpretation`] per il report del codice — prima di assemblarli nell'entità finale.
- *Implementazione Tripla:* L'implementazione simultanea delle tre interfacce permette di registrare un unico bean nel container di NestJS, riducendo la complessità infrastrutturale senza violare la separazione dei contratti.

==== Application

===== Command

====== AddRepositoryCollectionCommand <AddRepositoryCollectionCommand>
#codeDiagram("AddRepositoryCollectionCommand", 40%)

`AddRepositoryCollectionCommand` è il Command Object per la creazione di una nuova collezione di repository, trasportando l'identità dell'utente, l'URL del repository, il nome della collezione e una descrizione opzionale.

- *Oggetto di Trasferimento Validato:* I decorator `class-validator` garantiscono che i campi obbligatori siano presenti e non vuoti prima che il comando raggiunga il servizio applicativo.
- *Neutralità verso il Dominio:* Lavora con tipi primitivi (`string`), delegando la costruzione dei Value Object al servizio applicativo, rispettando la separazione tra layer applicativo e dominio.


====== DeletePatCommand <DeletePatCommand>
#codeDiagram("DeletePatCommand", 30%)

`DeletePatCommand` è il Command Object per l'eliminazione di un PAT esistente, richiedendo URL del repository e password di protezione come meccanismo di autorizzazione all'eliminazione.

- *Autorizzazione Implicita:* La richiesta della `patPassword` garantisce che solo chi conosce la password possa eliminare le credenziali, implementando un controllo di accesso a livello applicativo.


====== DeleteRepositoryCollectionCommand <DeleteRepositoryCollectionCommand>
#codeDiagram("DeleteRepositoryCollectionCommand", 70%)

`DeleteRepositoryCollectionCommand` è il Command Object per l'eliminazione di una collezione di repository, identificando la collezione tramite URL e l'utente richiedente.

- *Costruzione Anticipata dei Value Object:* A differenza degli altri Command, il costruttore istanzia direttamente #link(<RepoURL>)[`RepoURL`] e #link(<UserId>)[`UserId`] a partire dalle stringhe ricevute, spostando la validazione strutturale nel punto di ingresso del comando anziché delegarla al servizio applicativo.

====== GetAllAnalysesForUserCommand <GetAllAnalysesForUserCommand>
#codeDiagram("GetAllAnalysesForUserCommand", 55%)

`GetAllAnalysesForUserCommand` è il Command Object per il recupero di tutte le analisi associate a un utente, trasportando esclusivamente l'identificatore dell'utente richiedente.

- *Oggetto di Trasferimento Validato:* Il decorator `@IsNotEmpty()` garantisce che l'identificatore utente sia sempre presente prima che il comando raggiunga il servizio applicativo.

====== GetAllRepositoryCollectionsCommand <GetAllRepositoryCollectionsCommand>
#codeDiagram("GetAllRepositoryCollectionsCommand", 58%)

`GetAllRepositoryCollectionsCommand` è il Command Object per il recupero di tutte le collezioni di repository associate a un utente, trasportando esclusivamente l'identificatore dell'utente richiedente.

- *Oggetto di Trasferimento Validato:* Il decorator `@IsNotEmpty()` garantisce che l'identificatore utente sia sempre presente prima che il comando raggiunga il servizio applicativo.

====== GetAnalysisFromIdCommand <GetAnalysisFromIdCommand>
#codeDiagram("GetAnalysisFromIdCommand", 55%)

`GetAnalysisFromIdCommand` è il Command Object per il recupero di una singola analisi tramite il suo identificatore, trasportando esclusivamente l'`analysisId` come stringa primitiva.

- *Oggetto di Trasferimento Validato:* Il decorator `@IsNotEmpty()` garantisce che l'identificatore sia sempre presente prima che il comando raggiunga il servizio applicativo.

====== GetRepositoryCollectionCommand <GetRepositoryCollectionCommand>
#codeDiagram("GetRepositoryCollectionCommand", 45%)

`GetRepositoryCollectionCommand` è il Command Object per il recupero di una specifica collezione di repository, identificandola tramite URL e utente richiedente.

- *Oggetto di Trasferimento Validato:* I decorator `class-validator` garantiscono che entrambi i campi siano presenti e non vuoti prima che il comando raggiunga il servizio applicativo.
- *Neutralità verso il Dominio:* Lavora con tipi primitivi (`string`), delegando la costruzione dei Value Object al servizio applicativo, rispettando la separazione tra layer applicativo e dominio.

====== NewPatCommand <NewPatCommand>
#codeDiagram("NewPatCommand", 35%)

`NewPatCommand` è il Command Object per la registrazione di un nuovo Personal Access Token, trasportando l'URL del repository, la password di protezione e il token PAT in chiaro.

- *Dati Sensibili in Transito:* Il PAT è presente in chiaro solo nel Command, che viene processato e dismesso immediatamente dopo l'esecuzione del use case, minimizzando il tempo di esposizione del segreto.


====== StartAnalysisCommand <StartAnalysisCommand>
#codeDiagram("StartAnalysisCommand", 35%)

`StartAnalysisCommand` è il Command Object che trasporta i dati di input per avviare una nuova analisi: l'identità dell'utente, l'URL del repository, la password opzionale per repository privati, e i flag per i tre tipi di analisi (codice, documentazione, sicurezza).

- *Oggetto di Trasferimento Validato:* I decorator `class-validator` garantiscono che i campi obbligatori siano presenti e correttamente formattati prima che il comando raggiunga il servizio applicativo.
- *Neutralità verso il Dominio:* Lavora con tipi primitivi (`string`, `boolean`), delegando la costruzione dei Value Object al servizio #link(<StartAnalysisService>)[`StartAnalysisService`], rispettando la separazione tra layer applicativo e dominio.


====== UpdatePatCommand <UpdatePatCommand>
#codeDiagram("UpdatePatCommand", 32%)

`UpdatePatCommand` è il Command Object per l'aggiornamento di un PAT esistente, richiedendo URL, password corrente e il nuovo PAT da sostituire.

- *Sostituzione Sicura:* La verifica della password corrente (`patPassword`) prima della sostituzione impedisce aggiornamenti non autorizzati, garantendo che solo il proprietario delle credenziali possa modificarle.



===== Use Cases
// descrizione? Il controller dipende solo da questa interfaccia (una per ogni controller), permettendo di sostituire l'implementazione senza modificare il layer di presentazione.

====== AddRepositoryCollectionUseCase <AddRepositoryCollectionUseCase>
#codeDiagram("AddRepositoryCollectionUseCase", 90%)

`AddRepositoryCollectionUseCase` è l'interfaccia del use case per la creazione di una nuova collezione di repository, implementata dal servizio applicativo corrispondente.

====== DeletePatUseCase <DeletePatUseCase>
#codeDiagram("DeletePatUseCase", 70%)

`DeletePatUseCase` è l'interfaccia del use case per l'eliminazione di un PAT, implementata da #link(<DeletePatService>)[`DeletePatService`].

====== DeleteRepositoryCollectionUseCase <DeleteRepositoryCollectionUseCase>
#codeDiagram("DeleteRepositoryCollectionUseCase", 100%)

`DeleteRepositoryCollectionUseCase` è l'interfaccia del use case per l'eliminazione di una collezione di repository, implementata dal servizio applicativo corrispondente.

====== GetAllAnalysesForUserUseCase <GetAllAnalysesForUserUseCase>
#codeDiagram("GetAllAnalysesForUserUseCase", 100%)

`GetAllAnalysesForUserUseCase` è l'interfaccia del use case per il recupero di tutte le analisi associate a un utente, implementata dal servizio applicativo corrispondente.

//- *Metodo Non Convenzionale:* Espone `getAllAnalysesForUser()` invece del canonico `execute()`, rendendo esplicita la semantica dell'operazione direttamente nella firma del contratto.

====== GetAllRepositoryCollectionsUseCase <GetAllRepositoryCollectionsUseCase>
#codeDiagram("GetAllRepositoryCollectionsUseCase", 100%)

`GetAllRepositoryCollectionsUseCase` è l'interfaccia del use case per il recupero di tutte le collezioni di repository di un utente, implementata dal servizio applicativo corrispondente.

//- *Metodo Non Convenzionale:* Espone `executeAll()` invece del canonico `execute()`, rendendo esplicita nella firma del contratto la natura collettiva dell'operazione.

====== GetAnalysisUseCase <GetAnalysisUseCase>
#codeDiagram("GetAnalysisUseCase", 80%)

`GetAnalysisUseCase` è l'interfaccia del use case per il recupero di una singola analisi tramite il suo identificatore, implementata dal servizio applicativo corrispondente.

====== GetRepositoryCollectionUseCase <GetRepositoryCollectionUseCase>
#codeDiagram("GetRepositoryCollectionUseCase", 100%)

`GetRepositoryCollectionUseCase` è l'interfaccia del use case per il recupero di una specifica collezione di repository tramite URL e utente, implementata dal servizio applicativo corrispondente.


====== NewPatUseCase <NewPatUseCase>
#codeDiagram("NewPatUseCase", 70%)

`NewPatUseCase` è l'interfaccia del use case per la registrazione di un nuovo PAT, implementata da #link(<NewPatService>)[`NewPatService`].

- *Disaccoppiamento Controller-Servizio:* Il controller #link(<PatController>)[`PatController`] dipende solo da questa interfaccia, permettendo di sostituire l'implementazione senza modificare il layer di presentazione.

====== StartAnalysisUseCase <StartAnalysisUseCase>
#codeDiagram("StartAnalysisUseCase", 80%)

`StartAnalysisUseCase` è l'interfaccia del use case principale del sistema: accetta uno #link(<StartAnalysisCommand>)[`StartAnalysisCommand`] e restituisce un #link(<StartAnalysisResult>)[`StartAnalysisResult`].

- *Contratto Applicativo:* Definisce il punto di ingresso primario del bounded context, disaccoppiando la presentazione dall'implementazione concreta #link(<StartAnalysisService>)[`StartAnalysisService`].


====== UpdatePatUseCase <UpdatePatUseCase>
#codeDiagram("UpdatePatUseCase", 80%)

`UpdatePatUseCase` è l'interfaccia del use case per l'aggiornamento di un PAT, implementata da #link(<UpdatePatService>)[`UpdatePatService`].

===== Results

====== AddRepositoryCollectionResult <AddRepositoryCollectionResult>
#codeDiagram("AddRepositoryCollectionResult", 50%)

`AddRepositoryCollectionResult` è il Result Object per l'esito della creazione di una nuova collezione di repository, con factory method `success()` e `failure(err)`.

====== DeletePatResult <DeletePatResult>
#codeDiagram("DeletePatResult", 50%)

`DeletePatResult` è il Result Object per l'esito dell'eliminazione di un PAT.

====== DeleteRepositoryCollectionResult <DeleteRepositoryCollectionResult>
#codeDiagram("DeleteRepositoryCollectionResult", 60%)

`DeleteRepositoryCollectionResult` è il Result Object per l'esito dell'eliminazione di una collezione di repository, con factory method `success()` e `failure(err)`.

====== GetAllAnalysesForUserResult <GetAllAnalysesForUserResult>
#codeDiagram("GetAllAnalysesForUserResult", 80%)

`GetAllAnalysesForUserResult` è il Result Object per l'esito del recupero di tutte le analisi associate a un utente, trasportando in caso di successo la collezione di `GitHubAnalysisGeneralDataDTO`.

- *Payload Opzionale:* La collezione `analyses` è presente solo in caso di successo, evitando che il layer di presentazione riceva dati parziali o inconsistenti in caso di errore.

====== GetAllRepositoryCollectionsResult <GetAllRepositoryCollectionsResult>
#codeDiagram("GetAllRepositoryCollectionsResult", 80%)

`GetAllRepositoryCollectionsResult` è il Result Object per l'esito del recupero di tutte le collezioni di repository di un utente, trasportando in caso di successo la collezione di `RepositoryCollectionData`.

- *Fallimento con Array Vuoto:* Il factory method `failure()` inizializza `collections` a array vuoto, garantendo che il layer di presentazione non riceva mai `undefined` al posto di una collezione iterabile.

====== GetAnalysisResult <GetAnalysisResult>
#codeDiagram("GetAnalysisResult", 87%)

`GetAnalysisResult` è il Result Object per l'esito del recupero di una singola analisi, aggregando i metadati identificativi dell'analisi e i tre report opzionali (codice, documentazione, sicurezza).

- *Report Opzionali:* I campi `docsReport`, `codeReport` e `secReport` sono nullable, riflettendo il fatto che un'analisi può coinvolgere solo un sottoinsieme dei tre tipi di report in base a quanto richiesto.

====== GetRepositoryCollectionResult <GetRepositoryCollectionResult>
#codeDiagram("GetRepositoryCollectionResult", 85%)

`GetRepositoryCollectionResult` è il Result Object per l'esito del recupero di una specifica collezione di repository, trasportando URL, nome, descrizione opzionale e lista degli identificatori delle analisi associate.

- *Fallimento Strutturato:* Il factory method `failure()` inizializza i campi obbligatori con valori vuoti, garantendo che il result sia sempre deserializzabile dal layer di presentazione indipendentemente dall'esito.

====== NewPatResult <NewPatResult>
#codeDiagram("NewPatResult", 47%)

`NewPatResult` è il Result Object per l'esito della registrazione di un PAT, con factory method `success()` e `failure(errorMessage)`.

- *Semplicità Intenzionale:* Il risultato è binario (successo/fallimento), riflettendo la natura atomica dell'operazione di salvataggio delle credenziali.

====== StartAnalysisResult <StartAnalysisResult>
#codeDiagram("StartAnalysisResult", 77%)

`StartAnalysisResult` è il Result Object che trasporta l'esito dell'avvio di un'analisi verso il layer di presentazione, includendo in caso di successo tutti i metadati identificativi dell'analisi creata.

- *Pattern Result:* I factory method `success()` e `failure()` rendono esplicito l'esito dell'operazione, evitando eccezioni non gestite come meccanismo di controllo del flusso.
- *Risposta Completa:* Il successo restituisce `user`, `id`, `url`, `branch` e `commit`, fornendo al client tutte le informazioni necessarie per tracciare e monitorare l'analisi avviata.


====== UpdatePatResult <UpdatePatResult>
#codeDiagram("UpdatePatResult", 50%)

`UpdatePatResult` è il Result Object per l'esito dell'aggiornamento di un PAT.

===== Service
====== IAnalysisOrchestrator <IAnalysisOrchestrator>
#codeDiagram("IAnalysisOrchestrator", 100%)

`IAnalysisOrchestrator` è l'interfaccia del servizio applicativo che coordina l'esecuzione degli agenti di analisi (codice, documentazione, sicurezza) su un repository clonato.

- *Orchestrazione Asincrona:* Il metodo `analyze()` è `void` (fire-and-forget), permettendo al use case di avviare l'analisi e rispondere immediatamente al client senza attendere il completamento dei processi AI.
- *Punto di Estensione:* L'interfaccia permette di sostituire la strategia di orchestrazione (es. sequenziale vs. parallela, locale vs. distribuita) senza modificare il use case #link(<StartAnalysisService>)[`StartAnalysisService`].

====== ICollectionExistenceChecker <ICollectionExistenceChecker>
#codeDiagram("ICollectionExistenceChecker", 50%)

`ICollectionExistenceChecker` è l'interfaccia del servizio che verifica l'esistenza di una collezione di repository per un dato utente, restituendo un booleano che indica la presenza di un duplicato.

- *Punto di Estensione:* Disaccoppia la logica di verifica duplicati dall'implementazione concreta #link(<GitHubCollectionChecker>)[`GitHubCollectionChecker`], permettendo di sostituire la strategia di controllo senza modificare i servizi applicativi che la utilizzano.

====== IRepositoryAuthorizer <IRepositoryAuthorizer>
#codeDiagram("IRepositoryAuthorizer", 70%)

`IRepositoryAuthorizer` è l'interfaccia del servizio che recupera un #link(<PersonalAccessToken>)[`PersonalAccessToken`] valido per un dato repository, gestendo la distinzione tra repository pubblici e privati.

- *Strategia di Autorizzazione:* Nasconde la logica di selezione tra `PublicAuthorizationStrategy` (token di sistema da variabile d'ambiente) e `PrivateAuthorizationStrategy` (token utente da database), esponendo un'unica API uniforme al use case.



====== IRepositoryValidator <IRepositoryValidator>
#codeDiagram("IRepositoryValidator", 80%)

`IRepositoryValidator` è l'interfaccia del servizio che verifica la raggiungibilità e la validità di un repository GitHub, risolvendo branch e commit a valori concreti.

- *Risoluzione dei Parametri:* Il metodo `check()` restituisce sempre `{ branch: BranchName; commit: CommitHash }` valori risolti, garantendo che l'analisi parta sempre da riferimenti esatti e non ambigui.



====== IRepositoryCloner <IRepositoryCloner>
#codeDiagram("IRepositoryCloner", 80%)

`IRepositoryCloner` è l'interfaccia del servizio che esegue la clonazione fisica del repository su filesystem locale, restituendo il percorso della cartella clonata.

- *Isolamento dell'Infrastruttura:* Nasconde i dettagli operativi della clonazione Git (comandi git, gestione autenticazione, path di destinazione) al use case, che opera solo sul percorso risultante.



// ============================================================
// APPLICATION - SERVICES (IMPLEMENTATIONS)
// ============================================================


====== AddRepositoryCollectionService <AddRepositoryCollectionService>
#codeDiagram("AddRepositoryCollectionService", 100%)

`AddRepositoryCollectionService` implementa #link(<AddRepositoryCollectionUseCase>)[`AddRepositoryCollectionUseCase`], orchestrando il controllo dei duplicati e la persistenza della nuova collezione.

- *Guardia Anti-Duplicato:* Prima di procedere alla creazione, interroga #link(<ICollectionExistenceChecker>)[`ICollectionExistenceChecker`] per verificare che non esista già una collezione per l'URL fornito, restituendo un fallimento esplicito in caso positivo.

====== AnalysisOrchestratorService <AnalysisOrchestratorService>
#codeDiagram("AnalysisOrchestratorService", 100%)

`AnalysisOrchestratorService` implementa #link(<IAnalysisOrchestrator>)[`IAnalysisOrchestrator`], avviando in modo asincrono (fire-and-forget) l'orchestrazione degli agenti AI sul repository clonato.

- *Disaccoppiamento Temporale:* Il metodo `analyze()` avvia l'orchestrazione in background tramite una Promise non attesa, permettendo al use case di rispondere immediatamente al client con l'ID dell'analisi avviata.


====== DeletePatService <DeletePatService>
#codeDiagram("DeletePatService", 100%)

`DeletePatService` implementa #link(<DeletePatUseCase>)[`DeletePatUseCase`], costruendo la richiesta di eliminazione con URL e hash della password, e delegando a #link(<IGitCredentialDeletePort>)[`IGitCredentialDeletePort`].

====== GetAnalysisService <GetAnalysisService>
#codeDiagram("GetAnalysisService", 100%)

`GetAnalysisService` implementa simultaneamente #link(<GetAnalysisUseCase>)[`GetAnalysisUseCase`] e #link(<GetAllAnalysesForUserUseCase>)[`GetAllAnalysesForUserUseCase`], centralizzando in un'unica classe i due use case di lettura delle analisi.

- *Implementazione Doppia:* Riunisce il recupero di una singola analisi per ID e il recupero di tutte le analisi per utente, evitando la proliferazione di classi per operazioni di lettura strettamente correlate.


====== GitAuthorizerService <GitAuthorizerService>
#codeDiagram("GitAuthorizerService", 100%)

`GitAuthorizerService` implementa #link(<IRepositoryAuthorizer>)[`IRepositoryAuthorizer`] selezionando dinamicamente la strategia di autorizzazione appropriata (pubblica o privata) in base alla presenza di una password nel comando.

- *Pattern Strategy:* `PrivateAuthorizationStrategy` recupera il PAT da MongoDB tramite #link(<IGitCredentialReadPort>)[`IGitCredentialReadPort`]; `PublicAuthorizationStrategy` legge il token di sistema dalla configurazione. La scelta è trasparente per il chiamante.


====== GitClonerService <GitClonerService>
#codeDiagram("GitClonerService", 100%)

`GitClonerService` implementa #link(<IRepositoryCloner>)[`IRepositoryCloner`] delegando l'operazione di clonazione al port #link(<IGitClonePort>)[`IGitClonePort`], costruendo il #link(<CloneRepoRequest>)[`CloneRepoRequest`] e gestendo l'esito.

- *Adattamento del Contratto:* Traduce i parametri del servizio applicativo (Value Objects) nel DTO di richiesta per l'infrastruttura, e solleva un'eccezione esplicita in caso di fallimento della clonazione.

====== GitHubCollectionChecker <GitHubCollectionChecker>
#codeDiagram("GitHubCollectionChecker", 80%)

`GitHubCollectionChecker` implementa #link(<ICollectionExistenceChecker>)[`ICollectionExistenceChecker`], delegando la verifica di duplicati al port `ICollectionDuplicateCheckerPort` e restituendo il booleano estratto dalla risposta.

- *Adattamento del Contratto:* Traduce i Value Object #link(<UserId>)[`UserId`] e #link(<RepoURL>)[`RepoURL`] nel DTO di richiesta per l'infrastruttura, isolando il layer applicativo dai dettagli della persistenza.

====== GitHubCollectionDeleter <GitHubCollectionDeleter>
#codeDiagram("GitHubCollectionDeleter", 100%)

`GitHubCollectionDeleter` implementa #link(<DeleteRepositoryCollectionUseCase>)[`DeleteRepositoryCollectionUseCase`], delegando l'eliminazione della collezione al port `IDeleteRepositoryCollectionPort` e traducendo la risposta nel result applicativo.

====== GitHubCollectionGetter <GitHubCollectionGetter>
#codeDiagram("GitHubCollectionGetter", 100%)

`GitHubCollectionGetter` implementa simultaneamente #link(<GetRepositoryCollectionUseCase>)[`GetRepositoryCollectionUseCase`] e #link(<GetAllRepositoryCollectionsUseCase>)[`GetAllRepositoryCollectionsUseCase`], centralizzando in un'unica classe i due use case di lettura delle collezioni.

- *Implementazione Doppia:* Riunisce il recupero di una singola collezione per URL e utente e il recupero di tutte le collezioni di un utente, evitando la proliferazione di classi per operazioni di lettura strettamente correlate.

====== GitValidatorService <GitValidatorService>
#codeDiagram("GitValidatorService", 100%)

`GitValidatorService` implementa #link(<IRepositoryValidator>)[`IRepositoryValidator`] selezionando la strategia di validazione appropriata (`CommitValidationStrategy` o `BranchValidationStrategy`) in base ai parametri presenti nel comando.

- *Validazione Contestuale:* Se è fornito un commit specifico, verifica l'esistenza di quel commit; altrimenti risolve il commit HEAD del branch specificato (o del branch default). In entrambi i casi, il risultato è un `{ branch, commit }` risolto e verificato.


====== NewPatService <NewPatService>
#codeDiagram("NewPatService", 100%)

`NewPatService` implementa #link(<NewPatUseCase>)[`NewPatUseCase`], orchestrando la validazione del PAT, l'hashing della password e il salvataggio tramite #link(<IGitCredentialSavePort>)[`IGitCredentialSavePort`].


====== StartAnalysisService <StartAnalysisService>
#codeDiagram("StartAnalysisService", 100%)

`StartAnalysisService` è l'Application Service principale: implementa #link(<StartAnalysisUseCase>)[`StartAnalysisUseCase`] orchestrando l'intero flusso di avvio analisi — validazione, autorizzazione, clonazione, persistenza e dispatching agli agenti.

- *Coordinamento del Flusso:* Sequenzia le chiamate a #link(<IRepositoryValidator>)[`IRepositoryValidator`] → #link(<IRepositoryAuthorizer>)[`IRepositoryAuthorizer`] → crea #link(<GitHubAnalysis>)[`GitHubAnalysis`] → #link(<IRepositoryCloner>)[`IRepositoryCloner`] → persiste tramite `IGitHubAnalysisSavePort` → #link(<IAnalysisOrchestrator>)[`IAnalysisOrchestrator`].
- *Costruzione dell'Aggregato:* È responsabile della creazione dell'entità `GitHubAnalysis` con un UUID v7 fresco e i parametri risolti dalla validazione, garantendo la consistenza dell'aggregato fin dalla sua nascita.


====== UpdatePatService <UpdatePatService>
#codeDiagram("UpdatePatService", 100%)

`UpdatePatService` implementa #link(<UpdatePatUseCase>)[`UpdatePatUseCase`], validando il nuovo PAT e la password corrente, e delegando l'aggiornamento a #link(<IGitCredentialUpdatePort>)[`IGitCredentialUpdatePort`].

===== Port

====== ICodeAgentPort <ICodeAgentPort>
#codeDiagram("ICodeAgentPort", 70%)

`ICodeAgentPort` è il Driving Port che definisce il contratto per l'invocazione dell'agente di analisi del codice, accettando un #link(<AgentRequest>)[`AgentRequest`] e restituendo una `CodeAgentResponse`.

====== ICollectionAdderPort <ICollectionAdderPort>
#codeDiagram("ICollectionAdderPort", 80%)

`ICollectionAdderPort` è il Driven Port per la persistenza di una nuova collezione di repository.

====== ICodeReportSavePort <ICodeReportSavePort>
#codeDiagram("ICodeReportSavePort", 80%)

`ICodeReportSavePort` è il Driven Port per la persistenza di un #link(<CodeAgentReport>)[`CodeAgentReport`] prodotto dall'analisi del codice.

====== IDocumentationAgentPort <IDocumentationAgentPort>
#codeDiagram("IDocumentationAgentPort", 70%)

`IDocumentationAgentPort` è il Driving Port che definisce il contratto per l'invocazione dell'agente di analisi della documentazione, accettando un #link(<AgentRequest>)[`AgentRequest`] e restituendo una `DocsAgentResponse`.

====== ICollectionDuplicateCheckerPort <ICollectionDuplicateCheckerPort>
#codeDiagram("ICollectionDuplicateCheckerPort", 90%)

`ICollectionDuplicateCheckerPort` è il Driven Port per la verifica dell'esistenza di una collezione di repository nella persistenza, utilizzato da #link(<GitHubCollectionChecker>)[`GitHubCollectionChecker`] per implementare il controllo duplicati.

====== IDeleteRepositoryCollectionPort <IDeleteRepositoryCollectionPort>
#codeDiagram("IDeleteRepositoryCollectionPort", 90%)

`IDeleteRepositoryCollectionPort` è il Driven Port per l'eliminazione di una collezione di repository dalla persistenza.

====== IDocsReportSavePort <IDocsReportSavePort>
#codeDiagram("IDocsReportSavePort", 80%)

`IDocsReportSavePort` è il Driven Port per la persistenza di un #link(<DocumentationReport>)[`DocumentationReport`] prodotto dall'analisi della documentazione.

====== IGetAllAnalysesForUserPort <IGetAllAnalysesForUserPort>
#codeDiagram("IGetAllAnalysesForUserPort", 70%)

`IGetAllAnalysesForUserPort` è il Driven Port per il recupero di tutte le analisi associate a un utente dalla persistenza.

====== IGetAllRepositoryCollectionsPort <IGetAllRepositoryCollectionsPort>
#codeDiagram("IGetAllRepositoryCollectionsPort", 80%)

`IGetAllRepositoryCollectionsPort` è il Driven Port per il recupero di tutte le collezioni di repository di un utente dalla persistenza.

====== IGetAnalysisFromIdPort <IGetAnalysisFromIdPort>
#codeDiagram("IGetAnalysisFromIdPort", 70%)

`IGetAnalysisFromIdPort` è il Driven Port per il recupero di una singola analisi per identificatore dalla persistenza, restituendo `null` se non trovata.

====== IGetRepositoryCollectionPort <IGetRepositoryCollectionPort>
#codeDiagram("IGetRepositoryCollectionPort", 80%)

`IGetRepositoryCollectionPort` è il Driven Port per il recupero di una specifica collezione di repository dalla persistenza tramite URL e utente.

====== IGitHubAnalysisSavePort <IGitHubAnalysisSavePort>
#codeDiagram("IGitHubAnalysisSavePort", 70%)

`IGitHubAnalysisSavePort` è il Driven Port per la persistenza di una nuova entità #link(<GitHubAnalysis>)[`GitHubAnalysis`] al momento dell'avvio dell'analisi.

====== IGitClonePort <IGitClonePort>
#codeDiagram("IGitClonePort", 70%)

`IGitClonePort` è il Driving Port per l'operazione di clonazione Git, accettando un #link(<CloneRepoRequest>)[`CloneRepoRequest`] e restituendo un #link(<CloneRepoResponse>)[`CloneRepoResponse`].


====== IGitCredentialDeletePort <IGitCredentialDeletePort>
#codeDiagram("IGitCredentialDeletePort", 80%)

`IGitCredentialDeletePort` è il Driven Port per l'eliminazione di credenziali Git.

====== IGitCredentialReadPort <IGitCredentialReadPort>
#codeDiagram("IGitCredentialReadPort", 70%)

`IGitCredentialReadPort` è il Driven Port per la lettura/autorizzazione delle credenziali Git dal repository di persistenza.

====== IGitCredentialSavePort <IGitCredentialSavePort>
#codeDiagram("IGitCredentialSavePort", 70%)

`IGitCredentialSavePort` è il Driven Port per il salvataggio di nuove credenziali Git.

====== IGitCredentialUpdatePort <IGitCredentialUpdatePort>
#codeDiagram("IGitCredentialUpdatePort", 80%)

`IGitCredentialUpdatePort` è il Driven Port per l'aggiornamento del PAT di credenziali esistenti.

====== IGitHubAvailabilityPort <IGitHubAvailabilityPort>
#codeDiagram("IGitHubAvailabilityPort", 70%)

`IGitHubAvailabilityPort` è il Driving Port che definisce il contratto per verificare la raggiungibilità e i metadati di un repository GitHub, accettando un #link(<CheckAvailabilityRequest>)[`CheckAvailabilityRequest`] e restituendo un #link(<CheckAvailabilityResponse>)[`CheckAvailabilityResponse`].

- *Inversione delle Dipendenze:* L'applicazione dipende da questa astrazione, non dall'implementazione concreta #link(<GitHubAdapter>)[`GitHubAdapter`], rispettando il principio DIP e facilitando il testing con mock.

====== ISecurityAgentPort <ISecurityAgentPort>
#codeDiagram("ISecurityAgentPort", 70%)

`ISecurityAgentPort` è il Driving Port che definisce il contratto per l'invocazione dell'agente di analisi di sicurezza, accettando un #link(<AgentRequest>)[`AgentRequest`] e restituendo una `SecAgentResponse`.

====== ISecurityReportSavePort <ISecurityReportSavePort>
#codeDiagram("ISecurityReportSavePort", 80%)

`ISecurityReportSavePort` è il Driven Port per la persistenza di un #link(<SecurityReport>)[`SecurityReport`] prodotto dall'analisi di sicurezza.

====== IUpdateAnalysisPort <IUpdateAnalysisPort>
#codeDiagram("IUpdateAnalysisPort", 80%)

`IUpdateAnalysisPort` è il Driven Port per l'aggiornamento di un'analisi esistente con i riferimenti ai report prodotti al termine dell'orchestrazione degli agenti.


===== Request
====== CheckAvailabilityRequest <CheckAvailabilityRequest>
#codeDiagram("CheckAvailabilityRequest", 100%)

`CheckAvailabilityRequest` è il DTO di richiesta per la verifica della raggiungibilità di un repository, aggregando URL, token PAT opzionale, branch e commit opzionali.

- *Contratto del Port:* Definisce l'insieme minimo di informazioni che l'applicazione deve fornire all'infrastruttura per eseguire la verifica, disaccoppiando il dominio dai dettagli dell'API GitHub.


====== CloneRepoRequest <CloneRepoRequest>
#codeDiagram("CloneRepoRequest", 100%)

`CloneRepoRequest` è il DTO di richiesta per la clonazione di un repository, trasportando tutti i parametri necessari all'operazione Git: URL, ID analisi (per nominare la cartella), PAT, branch e commit.


====== GetGitCredentialRequest <GetGitCredentialRequest>
#codeDiagram("GetGitCredentialRequest", 80%)

`GetGitCredentialRequest` trasporta URL e hash della password per la lettura delle credenziali dal database.


====== PostGitCredentialRequest <PostGitCredentialRequest>
#codeDiagram("PostGitCredentialRequest", 82%)

`PostGitCredentialRequest` trasporta URL, hash della password e PAT per il salvataggio di nuove credenziali.


====== DeleteGitCredentialRequest <DeleteGitCredentialRequest>
#codeDiagram("DeleteGitCredentialRequest", 80%)

`DeleteGitCredentialRequest` trasporta URL e hash della password per l'eliminazione delle credenziali.


====== UpdateGitCredentialPatRequest <UpdateGitCredentialPatRequest>
#codeDiagram("UpdateGitCredentialPatRequest", 90%)

`UpdateGitCredentialPatRequest` trasporta URL, hash della password e nuovo PAT per l'aggiornamento delle credenziali.

====== AddReportsToAnalysisRequest <AddReportsToAnalysisRequest>
#codeDiagram("AddReportsToAnalysisRequest", 100%)

`AddReportsToAnalysisRequest` trasporta l'identificatore dell'analisi e i tre riferimenti opzionali ai report da associare, utilizzato da #link(<IUpdateAnalysisPort>)[`IUpdateAnalysisPort`] al termine dell'orchestrazione.

====== AddRepositoryCollectionRequest <AddRepositoryCollectionRequest>
#codeDiagram("AddRepositoryCollectionRequest", 90%)

`AddRepositoryCollectionRequest` trasporta i dati necessari alla creazione di una nuova collezione: utente, URL del repository, nome e descrizione opzionale, utilizzato da #link(<ICollectionAdderPort>)[`ICollectionAdderPort`].

====== AgentRequest <AgentRequest>
#codeDiagram("AgentRequest", 45%)

`AgentRequest` è il DTO di richiesta condiviso dai tre port degli agenti, trasportando esclusivamente l'#link(<AnalysisId>)[`AnalysisId`] che identifica l'analisi da eseguire.

- *Contratto Uniforme:* La struttura minimale e condivisa tra #link(<ICodeAgentPort>)[`ICodeAgentPort`], #link(<IDocumentationAgentPort>)[`IDocumentationAgentPort`] e #link(<ISecurityAgentPort>)[`ISecurityAgentPort`] permette di invocare qualsiasi agente con la stessa interfaccia.

====== CheckCollectionDuplicateRequest <CheckCollectionDuplicateRequest>
#codeDiagram("CheckCollectionDuplicateRequest", 65%)

`CheckCollectionDuplicateRequest` trasporta utente e URL del repository per la verifica di duplicati, utilizzato da #link(<ICollectionDuplicateCheckerPort>)[`ICollectionDuplicateCheckerPort`].

====== DeleteRepositoryCollectionRequest <DeleteRepositoryCollectionRequest>
#codeDiagram("DeleteRepositoryCollectionRequest", 70%)

`DeleteRepositoryCollectionRequest` trasporta utente e URL del repository per identificare la collezione da eliminare, utilizzato da #link(<IDeleteRepositoryCollectionPort>)[`IDeleteRepositoryCollectionPort`].

====== GetAllRepositoryCollectionsRequest <GetAllRepositoryCollectionsRequest>
#codeDiagram("GetAllRepositoryCollectionsRequest", 68%)

`GetAllRepositoryCollectionsRequest` trasporta esclusivamente l'identificatore utente per il recupero di tutte le sue collezioni, utilizzato da #link(<IGetAllRepositoryCollectionsPort>)[`IGetAllRepositoryCollectionsPort`].

====== GetRepositoryCollectionRequest <GetRepositoryCollectionRequest>
#codeDiagram("GetRepositoryCollectionRequest", 70%)

`GetRepositoryCollectionRequest` trasporta utente e URL del repository per il recupero di una specifica collezione, utilizzato da #link(<IGetRepositoryCollectionPort>)[`IGetRepositoryCollectionPort`].

====== SaveCodeReportRequest <SaveCodeReportRequest>
#codeDiagram("SaveCodeReportRequest", 100%)

`SaveCodeReportRequest` trasporta i dati dell'entità #link(<CodeAgentReport>)[`CodeAgentReport`] verso la persistenza, aggregando identificatori e i Value Object #link(<CodeAgentMetadata>)[`CodeAgentMetadata`] e #link(<AIInterpretation>)[`AIInterpretation`].

====== SaveDocsReportRequest <SaveDocsReportRequest>
#codeDiagram("SaveDocsReportRequest", 100%)

`SaveDocsReportRequest` trasporta i dati dell'entità #link(<DocumentationReport>)[`DocumentationReport`] verso la persistenza, aggregando identificatori e le collezioni di Value Object prodotti dall'analisi della documentazione.

====== SaveGitHubAnalysisRequest <SaveGitHubAnalysisRequest>
#codeDiagram("SaveGitHubAnalysisRequest", 100%)

`SaveGitHubAnalysisRequest` trasporta i dati dell'entità #link(<GitHubAnalysis>)[`GitHubAnalysis`] verso la persistenza al momento della sua creazione, includendo tutti i Value Object identificativi e i riferimenti opzionali ai tre report.

====== SaveSecurityReportRequest <SaveSecurityReportRequest>
#codeDiagram("SaveSecurityReportRequest", 100%)

`SaveSecurityReportRequest` trasporta i dati dell'entità #link(<SecurityReport>)[`SecurityReport`] verso la persistenza, aggregando identificatori e le collezioni di finding suddivisi per categoria di sicurezza.

===== Response
====== CheckAvailabilityResponse <CheckAvailabilityResponse>
#codeDiagram("CheckAvailabilityResponse", 80%)

`CheckAvailabilityResponse` trasporta il risultato della verifica di raggiungibilità: flag di accessibilità, branch e commit risolti, eventuale messaggio di errore.


====== CloneRepoResponse <CloneRepoResponse>
#codeDiagram("CloneRepoResponse", 70%)

`CloneRepoResponse` trasporta l'esito della clonazione: flag di successo, percorso locale della cartella clonata, eventuale messaggio di errore.


====== GetGitCredentialResponse <GetGitCredentialResponse>
#codeDiagram("GetGitCredentialResponse", 80%)

`GetGitCredentialResponse` trasporta il PAT recuperato (o null in caso di errore) e il flag di autorizzazione.


====== PostGitCredentialResponse <PostGitCredentialResponse>
#codeDiagram("PostGitCredentialResponse", 65%)

`PostGitCredentialResponse` indica l'esito del salvataggio delle credenziali.


====== DeleteGitCredentialResponse <DeleteGitCredentialResponse>
#codeDiagram("DeleteGitCredentialResponse", 70%)

`DeleteGitCredentialResponse` indica l'esito dell'eliminazione delle credenziali.


====== UpdateGitCredentialPatResponse <UpdateGitCredentialPatResponse>
#codeDiagram("UpdateGitCredentialPatResponse", 70%)

`UpdateGitCredentialPatResponse` indica l'esito dell'aggiornamento del PAT.

====== AddReportsToAnalysisResult <AddReportsToAnalysisResult>
#codeDiagram("AddReportsToAnalysisResult", 67%)

`AddReportsToAnalysisResult` indica l'esito dell'aggiornamento dell'analisi con i riferimenti ai report prodotti dall'orchestrazione.

====== AddRepositoryCollectionResponse <AddRepositoryCollectionResponse>
#codeDiagram("AddRepositoryCollectionResponse", 65%)

`AddRepositoryCollectionResponse` indica l'esito della persistenza di una nuova collezione di repository.

====== CheckCollectionDuplicateResponse <CheckCollectionDuplicateResponse>
#codeDiagram("CheckCollectionDuplicateResponse", 67%)

`CheckCollectionDuplicateResponse` trasporta esclusivamente il flag `duplicate`, indicando se esiste già una collezione per l'URL e l'utente forniti.

====== DeleteRepositoryCollectionResponse <DeleteRepositoryCollectionResponse>
#codeDiagram("DeleteRepositoryCollectionResponse", 67%)

`DeleteRepositoryCollectionResponse` indica l'esito dell'eliminazione di una collezione di repository dalla persistenza.

====== GetAllAnalysesForUserResponse <GetAllAnalysesForUserResponse>
#codeDiagram("GetAllAnalysesForUserResponse", 79%)

`GetAllAnalysesForUserResponse` trasporta la collezione di `GitHubAnalysisGeneralDataDTO` restituita dalla persistenza per un dato utente.

====== GetAllRepositoryCollectionsResponse <GetAllRepositoryCollectionsResponse>
#codeDiagram("GetAllRepositoryCollectionsResponse", 85%)

`GetAllRepositoryCollectionsResponse` trasporta la collezione di `CollectionDataResponse` restituita dalla persistenza per un dato utente, con factory method `success()` e `failure()`.

====== GetRepositoryCollectionResponse <GetRepositoryCollectionResponse>
#codeDiagram("GetRepositoryCollectionResponse", 93%)

`GetRepositoryCollectionResponse` trasporta i dati di una specifica collezione di repository — URL, nome, descrizione e lista degli identificatori delle analisi associate — con factory method `success()` e `failure()`.

====== SaveCodeReportResponse <SaveCodeReportResponse>
#codeDiagram("SaveCodeReportResponse", 67%)

`SaveCodeReportResponse` indica l'esito della persistenza di un report di analisi del codice.

====== SaveDocsReportResponse <SaveDocsReportResponse>
#codeDiagram("SaveDocsReportResponse", 65%)

`SaveDocsReportResponse` indica l'esito della persistenza di un report di analisi della documentazione.

====== SaveGitHubAnalysisResponse <SaveGitHubAnalysisResponse>
#codeDiagram("SaveGitHubAnalysisResponse", 70%)

`SaveGitHubAnalysisResponse` indica l'esito della persistenza di una nuova analisi GitHub.

====== SaveSecurityReportResponse <SaveSecurityReportResponse>
#codeDiagram("SaveSecurityReportResponse", 67%)

`SaveSecurityReportResponse` indica l'esito della persistenza di un report di analisi di sicurezza.

====== GitHubAnalysisDetailedResult <GitHubAnalysisDetailedResult>
#codeDiagram("GitHubAnalysisDetailedResult", 87%)

`GitHubAnalysisDetailedResult` aggrega i dati generali di un'analisi con i tre report opzionali, utilizzato da #link(<IGetAnalysisFromIdPort>)[`IGetAnalysisFromIdPort`] per restituire al layer applicativo una visione completa dell'analisi recuperata.

- *Report Opzionali:* I campi `docsReport`, `codeReport` e `secReport` sono nullable, riflettendo il fatto che un'analisi può coinvolgere solo un sottoinsieme dei tre tipi di report in base a quanto richiesto.

==== Infrastructure
===== Adapter

Questa sezione descrive i Driven Adapter, i componenti concreti del livello infrastrutturale incaricati di implementare i contratti (Port) definiti nel livello Application. Nel rigoroso rispetto dell'Architettura Esagonale, gli adapter agiscono come strato di confine e di traduzione (Anti-Corruption Layer) tra il nucleo applicativo e il mondo esterno. Essi incapsulano tutta la complessità tecnologica necessaria per interagire con il database (MongoDB), le API esterne (GitHub), i processi di sistema (esecuzioni Docker locali) e l'infrastruttura Cloud (AWS ECS e S3). Grazie a questo isolamento, la logica di business e l'orchestrazione dei flussi rimangono puramente agnostiche e protette dai dettagli di I/O, garantendo un'altissima testabilità e flessibilità architetturale.

====== GitHubAdapter <GitHubAdapter>
#codeDiagram("GitHubAdapter", 100%)

`GitHubAdapter` è il Driven Adapter responsabile dell'interazione con l'ecosistema GitHub. Implementando i port #link(<IGitHubAvailabilityPort>)[`IGitHubAvailabilityPort`] e #link(<IGitClonePort>)[`IGitClonePort`], funge da ponte traduttore: prende le richieste del dominio applicativo e le trasforma nei comandi tecnici necessari per comunicare con l'esterno, come chiamate di rete (`curl`) e comandi shell nativi (`git`).

- *Integrazione Lightweight tramite Shell:* Invece di dipendere da SDK esterni pesanti, l'adapter utilizza direttamente comandi shell di sistema. Il costruttore accetta una funzione `execAsync` iniettabile (di default basata su `child_process.exec`), permettendo un mocking completo durante i test unitari senza dover effettuare reali chiamate di rete.
- *Risoluzione Dinamica e Validazione (`check`):* Il metodo `check` non si limita a verificare i permessi. Interrogando l'API REST di GitHub tramite `curl`, estrae e analizza lo status code HTTP. Se il repository è accessibile, processa il payload JSON per risolvere dinamicamente l'esatto hash SHA del commit (sia che l'utente abbia richiesto un branch specifico, un commit esatto, o si sia affidato al branch di default). Questo garantisce che le fasi successive dell'analisi siano assolutamente deterministiche.
- *Clonazione Ottimizzata (`clone`):* La logica di clonazione applica strategie diverse per minimizzare l'uso di banda e disco. Se viene richiesto un branch specifico o il branch di default, esegue una clonazione "shallow" (`--depth 1`), scaricando solo l'ultima versione dei file ignorando lo storico dei commit passati; se è richiesto un commit storico specifico, esegue una clonazione standard seguita da un `checkout` mirato.
- *Gestione Sicura dell'Autenticazione:* L'adapter inietta in modo sicuro i #link(<PersonalAccessToken>)[`PersonalAccessToken`] passandoli come header `Bearer` per le API o incorporandoli dinamicamente nell'URL HTTPS durante la clonazione. Inoltre, implementa un meccanismo di fallback a livello di sistema qualora l'utente non fornisca credenziali proprie.
- *Resilienza e Cleanup:* Per prevenire il rapido esaurimento dello spazio su disco del server (disk leak), l'adapter isola ogni clonazione in una cartella temporanea univoca in `/tmp/` basata sull'ID dell'analisi. Garantisce inoltre, tramite un blocco `catch`, che le directory temporanee vengano rimosse forzatamente in caso di fallimento del clone.

====== LocalCodeAnalysisAdapter <LocalCodeAnalysisAdapter>
#codeDiagram("LocalCodeAnalysisAdapter", 60%)

`LocalCodeAnalysisAdapter` è il Driven Adapter che implementa il port #link(<ICodeAgentPort>)[`ICodeAgentPort`]. È responsabile dell'orchestrazione locale dell'agente di analisi del codice, incapsulando l'esecuzione del container Docker e il recupero sicuro dei risultati.

- *Orchestrazione Docker Nativa:* Il metodo `runContainer()` utilizza il modulo `child_process.spawn` di Node.js per avviare il container `strands-code-analyzer`. Si occupa di montare dinamicamente i volumi condivisi (`analysis_tmp_data`) e di iniettare in modo sicuro le variabili d'ambiente necessarie (verificando la presenza del file `.env` tramite `fs.existsSync`) senza esporle nel codice.
- *Parsing Resiliente a Tolleranza d'Errore:* Lo `stdout` di un container Docker include spesso log di boot o warning estranei al risultato. Per questo, il metodo `extractJson()` esegue due passaggi: prima scansiona l'output alla ricerca di un token esplicito di errore (`{"status": "error"`); se non lo trova, applica un sofisticato algoritmo iterativo di bilanciamento delle parentesi per isolare il blocco JSON valido contenente il nodo root `analysis_report`.
- *Arricchimento del Payload:* Prima di restituire il risultato tramite il metodo `runAnalysis()`, l'adapter funge da strato di traduzione. Intercetta il JSON grezzo emesso dall'agente e vi inietta dinamicamente i metadati operativi cruciali (come l'identificativo del `repository` e lo `status` dell'operazione), garantendo che il DTO finale rispetti rigorosamente le aspettative del livello Application.
- *Risoluzione dei fallimenti (Fallback):* In caso di crash improvviso del container, fallimento del Docker o corruzione dell'output testuale, l'eccezione non viene propagata. Il blocco `catch` invoca `createFallbackResponse()`, che istanzia e restituisce una risposta strutturata, type-safe e con verdetto `Critical`, incapsulando il motivo del fallimento. Questo isolamento garantisce che l'orchestratore globale non si blocchi per colpa di un singolo agente.

====== DocumentationAnalysisAdapter <DocumentationAnalysisAdapter>
#codeDiagram("DocumentationAnalysisAdapter", 60%)

`DocumentationAnalysisAdapter` è il Driven Adapter che implementa il port #link(<IDocumentationAgentPort>)[`IDocumentationAgentPort`]. Gestisce l'orchestrazione locale dell'agente incaricato di valutare la qualità, le discrepanze e i file mancanti della documentazione del repository.

- *Esecuzione Isolata via Docker:* Il metodo `runContainer()` utilizza il modulo `child_process.spawn` per avviare il container `strands-documentation-analyzer`. Si occupa di montare dinamicamente il volume condiviso (`analysis_tmp_data`) per l'accesso al codice e di iniettare il file di configurazione ambientale `.env`.
- *Overriding Dinamico dell'Entrypoint:* A differenza degli altri adapter, sovrascrive dinamicamente l'entrypoint di default del container (`--entrypoint sh`) per lanciare esplicitamente lo script Python dell'agente. In questa fase, applica un quoting rigoroso al path del repository (`"${repoPathInContainer}"`) per prevenire bug legati al word-splitting della shell (ad esempio se il nome della repo contiene spazi).
- *Parsing Resiliente a Tolleranza d'Errore:* Consapevole che lo `stdout` Docker non è mai un JSON "puro", l'adapter impiega il metodo custom `extractJson()`. Dapprima verifica l'eventuale presenza di un token esplicito di errore; in sua assenza, utilizza un algoritmo iterativo basato sul conteggio delle parentesi per scansionare l'output, scartare il rumore di boot e isolare il blocco JSON valido contenente l'oggetto `analysis_report`.
- *Arricchimento del Payload:* Prima di restituire l'esito tramite `runAnalysis()`, l'adapter inietta nel JSON grezzo i metadati operativi mancanti (come l'ID del `repository` e lo `status` di successo), allineando strutturalmente l'output alle aspettative del livello Application.
- *Risoluzione dei fallimenti (Fallback):* Se l'agente Python va in crash o genera un output incomprensibile, il blocco `catch` invoca `createFallbackResponse()`. Questo metodo inietta uno stato di errore controllato (`status: 'error'`) e restituisce una risposta strutturata contenente array vuoti per tutte le categorie (violazioni, audit, file mancanti). Ciò permette alla pipeline generale di concludersi senza corrompere o bloccare l'esecuzione degli altri agenti di analisi paralleli.

====== LocalSecurityAnalysisAdapter <LocalSecurityAnalysisAdapter>
#codeDiagram("LocalSecurityAnalysisAdapter", 70%)

`LocalSecurityAnalysisAdapter` è il Driven Adapter che implementa il port #link(<ISecurityAgentPort>)[`ISecurityAgentPort`]. Gestisce l'orchestrazione locale dell'agente dedicato alla scansione delle vulnerabilità, incapsulando l'esecuzione dell'immagine Docker e la complessa gestione dei risultati aggregati dei vari tool.

- *Orchestrazione Docker Sicura:* Il metodo `runContainer()` utilizza `child_process.spawn` per avviare in isolamento il container `strands-security-analyzer`. Inietta dinamicamente il file `.env` di configurazione (verificandone preventivamente l'esistenza tramite `fs.existsSync`) e mappa il volume condiviso (`analysis_tmp_data`) in cui risiede il codice clonato, garantendo che l'agente abbia accesso esclusivo al contesto necessario.
- *Parsing Resiliente a Tolleranza d'Errore:* Poiché lo `stdout` del container viene spesso inquinato dai log di avvio dei tool sottostanti, il metodo `extractJson()` adotta una strategia a due fasi: dapprima scansiona l'output alla ricerca di un token esplicito di errore (`{"status": "error"`); in sua assenza, utilizza un algoritmo custom di bilanciamento delle parentesi per scansionare il flusso testuale, scartare il rumore e isolare esclusivamente il payload JSON valido associato alla chiave `analysis_report`.
- *Arricchimento del Contesto:* Prima di istanziare la risposta finale, l'adapter agisce da strato di traduzione arricchendo il JSON grezzo: inietta l'identificativo del `repository` e impone lo stato `success` nei `metadata`, allineando l'output grezzo dell'agente alle aspettative strutturali del livello Application.
- *Risoluzione dei fallimenti (Fallback):* In caso di fallimento infrastrutturale (es. crash del container o errore di Docker), l'adapter applica un pattern di graceful degradation tramite `createFallbackResponse()`. Invece di far fallire l'orchestratore, restituisce un DTO strutturato con stato `FAILED` e incapsula esplicitamente il motivo del crash all'interno dell'array `errors` associandolo al tool fittizio `'agent'`, garantendo la tracciabilità del problema direttamente nel report di sicurezza finale.

====== MongoDBAdapter <MongoDBAdapter>
#codeDiagram("MongoDBAdapter", 100%)

`MongoDBAdapter` è il Driven Adapter centralizzato che implementa l'intero livello di persistenza del sistema su MongoDB. Funge da ponte tra i contratti definiti nel livello Application e il database fisico, incapsulando la logica di accesso, traduzione e aggregazione attraverso la libreria Mongoose. Inietta nel costruttore i sei modelli definiti nel dominio e implementa sedici port distinti, suddividendo il suo operato su diverse aree funzionali:

- *Gestione Sicura delle Credenziali:* Tramite i metodi `authorize()`, `save()`, `updatePAT()` e `deletePAT()`, gestisce il ciclo di vita dei token di accesso mappandoli sullo schema #link(<GitCredential>)[`GitCredential`]. Oltre alle operazioni CRUD, isola gli errori infrastrutturali intercettando il codice `11000` di MongoDB per tradurlo in un fallimento di "credenziali duplicate" gestibile dal dominio.
- *Tracciamento del Ciclo di Vita dell'Analisi:* Il metodo `saveAnalysis()` inizializza il documento #link(<GitHubAnalysisRecord>)[`GitHubAnalysisRecord`] all'avvio del processo. Successivamente, `addReportsToAnalysis()` agisce da aggregatore: riceve gli identificativi dei report generati dagli agenti e aggiorna atomicamente il record principale, associando le chiavi esterne e spostandone lo status a `COMPLETED`.
- *Archiviazione Multi-Report:* Espone tre metodi dedicati (`saveCodeReport()`, `saveDocsReport()` e `saveSecurityReport()`) per riversare le complesse alberature dei Value Object di dominio all'interno dei documenti di database. Più nello specifico:
  - Traduce le metriche di copertura, le issue strutturali e i verdetti dell'AI nello schema #link(<CodeReportModel>)[`CodeReportModel`].
  - Mappa l'intero albero delle discrepanze testuali, i file mancanti e l'audit delle dipendenze all'interno dello schema #link(<DocumentationReportModel>)[`DocumentationReportModel`].
  - Scompone logicamente le vulnerabilità rilevate, separandole per tool di origine (Trivy, Semgrep, Grype) e per categoria, strutturandole all'interno del #link(<SecurityReportModel>)[`SecurityReportModel`].
- *Aggregazione Dinamica in Lettura:* Il metodo `getAnalysisFromId()` orchestra query complesse al posto di una semplice `find`. Recupera il record base e, tramite interrogazioni condizionali sui modelli Mongoose, "pesca" i tre report separati (se presenti), assemblandoli al volo nel DTO `GitHubAnalysisDetailedResult` richiesto dal frontend. Il metodo `getAllAnalysesForUser()` fornisce invece viste generalizzate leggere.
- *Gestione Dinamica delle Collezioni:* Attraverso metodi come `addCollection()`, `deleteCollection()` e `getRepositoryCollection()`, l'adapter gestisce le viste aggregate per utente basate sullo schema #link(<GitHubCollection>)[`GitHubCollection`]. Nell'orchestrare le letture, non duplica i dati storici ma interroga dinamicamente la collezione `github_analyses` filtrando per `url` e `userId` (ordinando per `createdAt`), garantendo che la collezione restituisca uno storico sempre aggiornato.

/* ====== S3Adapter <S3Adapter>
#codeDiagram("S3Adapter", 60%)

`S3Adapter` è il Driven Adapter cloud-native che implementa #link(<IGitClonePort>)[`IGitClonePort`]. Sostituisce la clonazione locale preparando il codice per un'architettura distribuita.

- *Clonazione Dinamica:* Clona il repository localmente adattando la strategia alla richiesta (utilizzando `--depth 1` per branch/default o checkout mirati per commit specifici), minimizzando i tempi di download.
- *Compressione e Upload S3:* Una volta clonato il codice, comprime l'intera cartella in un archivio `.tar.gz` e lo carica su un bucket AWS S3 tramite `PutObjectCommand`. Questo archivio diventa il volume di partenza "congelato" per i successivi container di analisi.
- *Gestione Sicura del Ciclo di Vita:* Utilizza un blocco `try/catch` per garantire la pulizia assoluta del file system locale. Rimuove forzatamente sia le cartelle clonate che gli archivi compressi indipendentemente dall'esito dell'operazione, prevenendo leak di spazio sul disco dell'orchestratore.

====== ECSCodeAnalysisAdapter <ECSCodeAnalysisAdapter>
#codeDiagram("ECSCodeAnalysisAdapter", 67%)

`ECSCodeAnalysisAdapter` è il Driven Adapter che implementa #link(<ICodeAgentPort>)[`ICodeAgentPort`], delegando l'esecuzione dell'agente di analisi all'infrastruttura serverless AWS ECS (Fargate).

- *Orchestrazione Serverless:* Il metodo `runEcsTask()` avvia un task isolato tramite `RunTaskCommand`, iniettando le configurazioni di rete necessarie (subnet, security group) e passando l'ID dell'analisi come variabile d'ambiente.
- *Sincronizzazione via Polling:* Dato che ECS è asincrono, l'adapter implementa un loop di attesa (`waitForTaskCompletion`) che utilizza `DescribeTasksCommand` per interrogare AWS a intervalli regolari, bloccando l'esecuzione finché il task non raggiunge lo stato `STOPPED`.
- *Recupero Cloud-Native e Fallback:* Diversamente dagli adapter locali, usa `GetObjectCommand` per scaricare il report pulito (`code_report.json`) direttamente da S3. Integra inoltre un meccanismo di fallback che restituisce un verdetto `Critical` strutturato in caso di crash dell'infrastruttura AWS.

====== ECSDocumentationAnalysisAdapter <ECSDocumentationAnalysisAdapter>
#codeDiagram("ECSDocumentationAnalysisAdapter", 70%)

`ECSDocumentationAnalysisAdapter` è il Driven Adapter che implementa #link(<IDocumentationAgentPort>)[`IDocumentationAgentPort`] eseguendo l'agente di documentazione su AWS ECS (Fargate).

- *Esecuzione Distribuita:* Avvia l'agente Docker su AWS tramite il client ECS, isolando completamente il carico computazionale dal server applicativo principale.
- *Gestione dell'Attesa:* Mantiene sincronizzato il flusso dell'orchestratore mettendo in polling lo stato del container Fargate, gestendo autonomamente la verifica degli exit code del processo remoto.
- *Integrazione e Resilienza:* Recupera il payload scaricando il file `docs_report.json` da S3. Se il task fallisce o restituisce un codice anomalo, l'eccezione viene trasformata in una risposta di fallback controllata (con array vuoti e `status: 'error'`), evitando di far fallire l'intera pipeline di analisi.

====== ECSSecurityAnalysisAdapter <ECSSecurityAnalysisAdapter>
#codeDiagram("ECSSecurityAnalysisAdapter", 74%)

`ECSSecurityAnalysisAdapter` è il Driven Adapter che implementa #link(<ISecurityAgentPort>)[`ISecurityAgentPort`] eseguendo la suite di sicurezza su AWS ECS (Fargate).

- *Scalabilità e Isolamento:* Lancia il task Fargate configurando esplicitamente le regole di rete VPC per garantire l'isolamento della scansione di sicurezza.
- *Monitoraggio dell'Esecuzione:* Implementa la logica di polling per attendere la fine dell'analisi sui worker distribuiti, prelevando infine il risultato `security_report.json` depositato sul bucket S3.
- *Tracciabilità degli Errori:* Il pattern di fallback è particolarmente curato. Se l'esecuzione su ECS fallisce prematuramente, `createFallbackResponse()` non solo imposta lo stato a `FAILED`, ma inserisce l'eccezione infrastrutturale nell'array `errors` simulando un finding di un tool fittizio (`tool: 'agent'`), garantendo trasparenza sul motivo del fallimento. */

====== S3Adapter <S3Adapter>
#codeDiagram("S3Adapter", 60%)

`S3Adapter` è il Driven Adapter cloud-native che implementa #link(<IGitClonePort>)[`IGitClonePort`]. Sostituisce la clonazione locale preparando il codice per un'architettura distribuita.

- *Clonazione Dinamica e Autenticazione:* Clona il repository localmente adattando la strategia alla richiesta (`--depth 1` per branch/default, o checkout mirati per commit storici). Gestisce l'autenticazione iniettando il PAT dell'utente o applicando dinamicamente il token di sistema di fallback (`CODE_GUARDIAN_TOKEN`).
- *Compressione e Upload S3:* Una volta clonato il codice, utilizza la libreria `tar` per comprimere l'intera cartella in un archivio `.tar.gz`. Successivamente, lo carica su un bucket AWS S3 tramite `PutObjectCommand`. Questo file diventa il volume di partenza "congelato" per i container di analisi.
- *Gestione Sicura del Ciclo di Vita:* Utilizza un blocco `try/catch` per garantire la pulizia assoluta del file system locale dell'orchestratore. Sia in caso di successo che di eccezione, rimuove forzatamente sia la directory clonata (`rm -rf`) che l'archivio generato (`fs.unlinkSync`), prevenendo ogni leak di spazio su disco.

====== ECSCodeAnalysisAdapter <ECSCodeAnalysisAdapter>
#codeDiagram("ECSCodeAnalysisAdapter", 67%)

`ECSCodeAnalysisAdapter` è il Driven Adapter che implementa #link(<ICodeAgentPort>)[`ICodeAgentPort`], delegando l'esecuzione dell'agente di analisi all'infrastruttura serverless AWS ECS (Fargate).

- *Orchestrazione Serverless:* Il metodo `runEcsTask()` avvia un task isolato tramite `RunTaskCommand`, configurando esplicitamente la rete VPC (subnet, security group). Inietta nel container le variabili d'ambiente fondamentali (`ANALYSIS_ID` e `S3_BUCKET_NAME`) necessarie all'agente per scaricare il codice e caricare il risultato.
- *Monitoraggio Attivo (Polling):* Dato che ECS è asincrono, l'adapter implementa `waitForTaskCompletion()`. Questo loop utilizza `DescribeTasksCommand` interrogando AWS ogni 10 secondi fino al raggiungimento dello stato `STOPPED`. Verifica rigorosamente l'exit code del container: un'uscita diversa da zero solleva immediatamente un'eccezione infrastrutturale.
- *Recupero e Arricchimento:* Tramite `GetObjectCommand` scarica da S3 il file di reportistica prodotto (`code_report.json`). Agendo da strato di traduzione, l'adapter inietta nel JSON i metadati applicativi (`repository` ID e `status: 'success'`) prima di passare il controllo al Domain Layer.
- *Fallback Strutturato:* In caso di timeout, fallimento di AWS o exit code anomalo, il blocco `catch` invoca `createFallbackResponse()`. Invece di far crollare l'applicazione, restituisce un DTO type-safe con verdetto `Critical`, incapsulando il motivo esatto del fallimento infrastrutturale.

====== ECSDocumentationAnalysisAdapter <ECSDocumentationAnalysisAdapter>
#codeDiagram("ECSDocumentationAnalysisAdapter", 70%)

`ECSDocumentationAnalysisAdapter` è il Driven Adapter che implementa #link(<IDocumentationAgentPort>)[`IDocumentationAgentPort`] eseguendo l'agente di documentazione su AWS ECS (Fargate).

- *Esecuzione Distribuita:* Utilizza il client ECS per avviare il task basato sulla definizione specifica della documentazione (`ecsTaskDefinitionDocs`), passando il contesto operativo via variabili d'ambiente e isolando il carico computazionale dal server applicativo principale.
- *Gestione dell'Attesa e Validazione:* Mantiene sincronizzato il flusso dell'orchestratore mettendo in polling lo stato del container Fargate ogni 10 secondi. Controlla proattivamente la proprietà `exitCode` del container per validare l'integrità dell'esecuzione dell'agente Python remoto.
- *Integrazione S3 e Payload:* Recupera i risultati scaricando il file `docs_report.json` dal bucket S3. Valida la presenza della radice strutturale `analysis_report` e inietta i metadati necessari all'Application Layer prima di generare l'oggetto di risposta definitivo.
- *Graceful Degradation:* Se l'infrastruttura cloud fallisce o l'agente va in crash, l'eccezione viene trasformata in una risposta di fallback controllata. Restituisce array vuoti per discrepanze e file mancanti e imposta lo `status` a `'error'`, evitando di bloccare la pipeline globale.

====== ECSSecurityAnalysisAdapter <ECSSecurityAnalysisAdapter>
#codeDiagram("ECSSecurityAnalysisAdapter", 74%)

`ECSSecurityAnalysisAdapter` è il Driven Adapter che implementa #link(<ISecurityAgentPort>)[`ISecurityAgentPort`] eseguendo la suite di sicurezza su AWS ECS (Fargate).

- *Scalabilità e Isolamento:* Lancia il task Fargate (`ecsTaskDefinitionSecurity`) applicando le regole di rete VPC (subnet e security group) per garantire l'isolamento della scansione di sicurezza in ambiente cloud.
- *Sincronizzazione di Rete:* Implementa la logica di polling decennale per attendere la fine del task distribuito, assicurandosi di intercettare eventuali terminazioni anomale tramite il controllo esplicito dell'`exitCode` restituito dall'API di AWS.
- *Estrazione Dati Cloud-Native:* Al termine dell'esecuzione, preleva il risultato `security_report.json` depositato sul bucket S3, lo parsa, ne valida l'integrità e lo arricchisce dinamicamente con il `repository` ID per soddisfare il contratto del livello Application.
- *Tracciabilità degli Errori:* Il pattern di fallback è particolarmente curato. Se l'esecuzione su ECS fallisce prematuramente, `createFallbackResponse()` non solo imposta lo stato a `FAILED`, ma inserisce l'eccezione infrastrutturale nell'array `errors` simulando un finding di un tool fittizio (`tool: 'agent'`), garantendo totale trasparenza sul motivo del fallimento al front-end.

===== Schema
Questa sezione descrive gli Schema Mongoose, ovvero i modelli di dati fisici utilizzati dal livello di persistenza per interfacciarsi con il database MongoDB. Nel rispetto dell'Architettura Esagonale, gli Schema fungono da proiezione persistente delle Entità e dei Value Object definiti nel Domain Layer. Essi incapsulano esclusivamente dettagli infrastrutturali — come i vincoli di unicità, l'indicizzazione per l'ottimizzazione delle query e la gestione dei tipi nativi del database (es. `ObjectId` e `timestamps`) — mantenendo il dominio puro e completamente agnostico rispetto alla tecnologia di memorizzazione.

====== GitCredential <GitCredential>
#codeDiagram("GitCredential", 20%)

`GitCredential` è lo schema Mongoose che definisce la struttura del documento MongoDB per le credenziali Git: URL del repository (chiave univoca), hash della password e PAT.

- *Persistenza delle Credenziali:* Rappresenta la proiezione di persistenza dei dati gestiti dai Value Object #link(<RepoURL>)[`RepoURL`], #link(<PATPassword>)[`PATPassword`] e #link(<PersonalAccessToken>)[`PersonalAccessToken`], adattandoli al formato MongoDB.
- *Ricerca Ottimizzata:* Il campo `repoUrl` è marcato come `unique` e indicizzato (`index: true`), garantendo l'unicità delle credenziali per repository e ricerche fulminee durante l'autorizzazione.

====== GitHubAnalysisRecord <GitHubAnalysisRecord>
#codeDiagram("GitHubAnalysisRecord", 30%)

`GitHubAnalysisRecord` è lo schema Mongoose che definisce la persistenza dell'entità #link(<GitHubAnalysis>)[`GitHubAnalysis`], memorizzando i metadati dell'analisi e i riferimenti ai vari report generati.

- *Proiezione dell'Entità:* Mappa gli attributi gestiti dai Value Object #link(<AnalysisId>)[`AnalysisId`], #link(<UserId>)[`UserId`], #link(<RepoURL>)[`RepoURL`], #link(<BranchName>)[`BranchName`], #link(<CommitHash>)[`CommitHash`] e l'enumerazione #link(<AnalysisStatus>)[`AnalysisStatus`] in tipi primitivi persistibili nel database.
- *Tracciamento dei Report:* Mantiene i riferimenti opzionali (di tipo stringa, derivati dal Value Object #link(<ReportId>)[`ReportId`]) ai documenti separati che contengono i payload massivi generati dagli agenti.
- *Gestione Temporale:* Utilizza l'opzione `timestamps: true` di Mongoose per gestire automaticamente i campi `createdAt` e `updatedAt`.

====== GitHubCollection <GitHubCollection>
#codeDiagram("GitHubCollection", 25%)

`GitHubCollection` è lo schema Mongoose che raggruppa le analisi ripetute su uno stesso repository per un dato utente, creando una vista "storica" o di progetto.

- *Relazioni MongoDB:* Il campo `analyses` utilizza `ObjectId` per referenziare multipli documenti della collezione `github_analyses` (ossia analisi derivanti dall'entità #link(<GitHubAnalysis>)[`GitHubAnalysis`]), modellando una relazione uno-a-molti.
- *Indice Composto:* Definisce un indice composto e univoco su `{ url: 1, userId: 1 }` per garantire che un utente non possa creare più collezioni per lo stesso repository, ottimizzando contemporaneamente le query di lookup basate in origine su #link(<RepoURL>)[`RepoURL`] e #link(<UserId>)[`UserId`].

====== CodeReportModel <CodeReportModel>
#codeDiagram("CodeReportModel", 35%)

`CodeReportModel` è lo schema Mongoose che archivia i risultati dettagliati prodotti dall'agente di analisi del codice, fungendo da proiezione persistente per l'entità #link(<CodeAgentReport>)[`CodeAgentReport`].

- *Integrità Strutturale:* Utilizza regex per validare che `reportId` e `analysisId` (rappresentazioni testuali di #link(<ReportId>)[`ReportId`] e #link(<AnalysisId>)[`AnalysisId`]) siano formattati correttamente come UUID v7.
- *Sub-documenti Strutturati:* Fa un uso estensivo di classi Schema interne per mappare fedelmente l'alberatura complessa prodotta dai Value Object #link(<CodeAgentMetadata>)[`CodeAgentMetadata`] e #link(<AIInterpretation>)[`AIInterpretation`].
- *Indicizzazione Strategica:* Crea indici specifici su `interpretation.verdict` (direttamente correlato all'enumerazione #link(<VerdictStatus>)[`VerdictStatus`]) e `metadata.language` per permettere aggregazioni e filtri rapidi a livello di database.

====== DocumentationReportModel <DocumentationReportModel>
#codeDiagram("DocumentationReportModel", 42%)

`DocumentationReportModel` è lo schema Mongoose dedicato al salvataggio massivo dei risultati emessi dall'agente di analisi della documentazione, fungendo da proiezione persistente per l'entità #link(<DocumentationReport>)[`DocumentationReport`].

- *Mappatura delle Discrepanze:* Salva direttamente gli array di oggetti complessi derivati dai Value Object #link(<APIViolation>)[`APIViolation`], #link(<DocsDiscrepancy>)[`DocsDiscrepancy`], #link(<MissingFile>)[`MissingFile`] e #link(<DependencyAudit>)[`DependencyAudit`].
- *Integrità Relazionale:* Come gli altri report, vincola i campi legati a #link(<ReportId>)[`ReportId`] e #link(<AnalysisId>)[`AnalysisId`] ad essere univoci.
- *Ottimizzazione delle Ricerche:* Implementa indici manuali sui campi di severità annidati (correlati all'enumerazione #link(<SeverityLevel>)[`SeverityLevel`]), fondamentali per estrarre rapidamente le metriche senza caricare interi documenti in memoria.

====== SecurityReportModel <SecurityReportModel>
#codeDiagram("SecurityReportModel", 45%)

`SecurityReportModel` è lo schema Mongoose progettato per immagazzinare in modo strutturato le vulnerabilità riscontrate, fungendo da proiezione persistente per l'entità #link(<SecurityReport>)[`SecurityReport`].

- *Categorizzazione Multi-Tool:* Separa logicamente i risultati in array di sub-documenti tipizzati che riflettono esattamente le collezioni di Value Object dell'entità: #link(<DependencyFinding>)[`DependencyFinding`], #link(<OWASPFinding>)[`OWASPFinding`], #link(<SecretFinding>)[`SecretFinding`] e gli errori #link(<ToolError>)[`ToolError`].
- *Indicizzazione Profonda:* Include indici composti e specifici sulle proprietà annidate (come i livelli di severità legati a #link(<SeverityFinding>)[`SeverityFinding`] o le categorie OWASP) per supportare query ad alte prestazioni necessarie per i cruscotti di sicurezza.

==== Presentation
===== Controller
====== AnalysisController <AnalysisController>
#codeDiagram("AnalysisController", 100%)

`AnalysisController` è il controller NestJS che espone l'endpoint `POST /analysis/start`, protetto da `JwtAuthGuard`. Riceve la richiesta HTTP, costruisce lo #link(<StartAnalysisCommand>)[`StartAnalysisCommand`] e delega al use case #link(<StartAnalysisUseCase>)[`StartAnalysisUseCase`].

- *Layer di Presentazione:* Traduce il protocollo HTTP (DTO di richiesta/risposta, HTTP status codes) in chiamate al layer applicativo, separando le preoccupazioni di trasporto dalla logica di business.
- *Autenticazione JWT:* Implementa l'estrazione dello `userId` dal JWT payload tramite il decorator `@UserId`, garantendo che ogni analisi sia tracciata all'utente autenticato.

---

====== PatController <PatController>
#codeDiagram("PatController", 100%)

`PatController` è il controller NestJS che espone gli endpoint per la gestione dei Personal Access Token: `POST /analysis/pat` (aggiunta), `DELETE /analysis/pat` (eliminazione), `PUT /analysis/pat` (aggiornamento).

- *Delega ai Use Case:* Per ogni endpoint, costruisce il Command appropriato e delega al rispettivo use case (#link(<NewPatUseCase>)[`NewPatUseCase`], #link(<DeletePatUseCase>)[`DeletePatUseCase`], #link(<UpdatePatUseCase>)[`UpdatePatUseCase`]), mantenendo la logica di controllo nel layer applicativo.

===== Request
====== StartAnalysisRequestDTO <StartAnalysisRequestDTO>
#codeDiagram("StartAnalysisRequestDTO", 100%)

`StartAnalysisRequestDTO` è il DTO di presentazione per la richiesta di avvio analisi, raccogliendo URL, password opzionale, branch/commit opzionali e i flag per i tre tipi di analisi.

====== PostPatRequestDTO <PostPatRequestDTO>
#codeDiagram("PostPatRequestDTO", 100%)

`PostPatRequestDTO` è il DTO di presentazione per la registrazione di un nuovo PAT.

---

====== DeletePatRequestDTO <DeletePatRequestDTO>
#codeDiagram("DeletePatRequestDTO", 100%)

`DeletePatRequestDTO` è il DTO di presentazione per l'eliminazione di un PAT.

---

====== UpdatePatRequestDTO <UpdatePatRequestDTO>
#codeDiagram("UpdatePatRequestDTO", 100%)

`UpdatePatRequestDTO` è il DTO di presentazione per l'aggiornamento di un PAT.

===== Response
====== StartAnalysisResponseDTO <StartAnalysisResponseDTO>
#codeDiagram("StartAnalysisResponseDTO", 100%)

`StartAnalysisResponseDTO` è il DTO di risposta per l'avvio analisi, con factory method `success()` (restituisce i metadati dell'analisi) e `failure()` (restituisce il messaggio di errore).

====== PostPatResponseDTO <PostPatResponseDTO>
#codeDiagram("PostPatResponseDTO", 100%)

`PostPatResponseDTO` è il DTO di risposta per la registrazione di un PAT.

---

====== DeletePatResponseDTO <DeletePatResponseDTO>
#codeDiagram("DeletePatResponseDTO", 100%)

`DeletePatResponseDTO` è il DTO di risposta per l'eliminazione di un PAT.

---

====== UpdatePatResponseDTO <UpdatePatResponseDTO>
#codeDiagram("UpdatePatResponseDTO", 100%)

`UpdatePatResponseDTO` è il DTO di risposta per l'aggiornamento di un PAT.

#pagebreak()

=== Account Microservice
L'Account Microservice rappresenta il modulo centrale per la gestione del ciclo di vita delle identità all'interno di _CodeGuardian_. Progettato seguendo i principi dell'*Architettura Esagonale*, il servizio isola rigorosamente i processi core — quali la gestione delle utenze, l'autenticazione basata su JWT e la sicurezza delle credenziali — dalle tecnologie di persistenza (PostgreSQL) e di cifratura (Bcrypt). Grazie a una netta separazione tra porte e adattatori, il microservizio garantisce l'integrità del dominio utente e la flessibilità nell'evoluzione dei criteri di sicurezza, fungendo da garante per l'accesso protetto a tutte le funzionalità della piattaforma.

==== Design Patterns

All'interno dell'Account Microservice sono stati adottati molteplici design pattern per garantire disaccoppiamento, testabilità e manutenibilità del codice. Di seguito vengono descritti i principali pattern utilizzati e le motivazioni alla base della loro scelta:

===== Architettura Esagonale (Ports and Adapters)
L'intera struttura del microservizio si basa saldamente sui principi di Ports and Adapters.
- *Problema risolto:* Evita il forte accoppiamento logico tra il nucleo applicativo (Domain e Application) e i layer esterni come database, interfacce utente e servizi di terze parti, isolando la logica di business e rendendola indipendente dalle tecnologie di contorno.
- *Implementazione:* Il livello applicativo definisce interfacce specifiche dette "Porte" (come `IUserSavePort` o `IHashPasswordPort`), mentre il livello infrastrutturale e di presentazione ospita i componenti concreti detti "Adapters" (come `PostgresAdapter`) che si curano di implementare o utilizzare tali interfacce.

===== Command Pattern
Il pattern *Command* è stato utilizzato diffusamente nel layer applicativo per incapsulare i dati di una specifica operazione richiesta dall'utente (es. `LoginCommand`, `DeleteCommand`, `RegistrationUserCommand`).
- *Problema risolto:* Semplifica le firme dei metodi nei casi d'uso, evitando il passaggio di liste di argomenti lunghe e fragili alle modifiche.
- *Implementazione:* Invece di passare molteplici parametri sparsi ai metodi dei servizi, ogni Use Case accetta come unico parametro un oggetto istanza di un Command specifico, che raggruppa logicamente e tipizza tutti i parametri necessari per svolgere l'operazione.

===== Data Transfer Object (DTO)
Il pattern *DTO* viene impiegato sistematicamente sia a livello applicativo (`AuthResultDto`, `UserDTO`) che a livello di presentazione e comunicazione HTTP (`LoginRequestDto`, `AuthResponseDto`).
- *Problema risolto:* Consente di trasferire dati tra i diversi layer del microservizio e verso i client esterni senza esporre direttamente le entità di dominio interno. Quest'ultime, infatti, potrebbero nascondere metadati o riferimenti sensibili come `PasswordHash` che non devono in nessun caso fuoriuscire dal sistema inavvertitamente.
- *Implementazione:* Tramite i DTO, i dati in transito assumono una forma asettica e consona per le sole esigenze di comunicazione, abilitando inoltre l'inserimento di una logica di convalida lato framework sfruttando i decoratori di NestJS (es. `class-validator`) direttamente sulle classi di richiesta in arrivo.

===== Adapter Pattern
Nel livello infrastrutturale è evidente l'adozione dell'*Adapter Pattern*, guidato dall'architettura esagonale.
- *Problema risolto:* Astrae completamente la logica di business in merito ai dettagli sulle operazioni di memorizzazione dei dati e alle query sql, mantenendo nascosta la specifica tecnologia di database relazionale utilizzata (PostgreSQL).
- *Implementazione:* `PostgresAdapter` agisce da adattatore verso il livello di persistenza, centralizzando fisicamente le esecuzioni delle transazioni nel DB e traducendo i contratti del dominio. Al contempo soddisfa molteplici porte del core applicativo (es. `IUserFindPort`, `IUserSavePort`). Ciò garantisce un disaccoppiamento così netto da permettere, qualora si rivelasse necessario, di sostituire agilmente il database con una tecnologia differente.

===== Dependency Injection
Sfruttando nativamente le capacità del framework NestJS, l'*Iniezione delle Dipendenze (DI)* rappresenta uno dei pattern tecnici principali alla base del progetto software.
- *Problema risolto:* Evita la creazione "hard-coded" ed esplicita delle dipendenze direttamente cablate in ogni classe chiamante, migliorando notevolmente le probabilità di riutilizzo del codice, la modularità e abbattendo gli ostacoli che impediscono altrimenti l'agevole testing unitario.
- *Implementazione:* Attraverso i costruttori di classe, i vari Controllers e i Services ricevono all'avvio del sistema le loro rispettive dipendenze sotto forma ridotta di interfacce/componenti di istanziazione validati. Un container `Inversion of Control` (IoC) di supporto si prende in totale carico l'apposita istanziazione ed assegnazione dei componenti.

==== Domain
Il Dominio rappresenta il nucleo centrale dell'architettura esagonale, dove risiedono esclusivamente la logica di business e le regole vitali del progetto. Questa sezione è progettata per essere totalmente agnostica rispetto alla tecnologia: non possiede alcuna conoscenza di database, protocolli di comunicazione (HTTP/REST) o framework esterni.

L'obiettivo del Domain Core è modellare la realtà del problema attraverso un linguaggio comune (_Ubiquitous Language_), garantendo che ogni operazione sia coerente con le aspettative del business.

- *Isolamento Tecnologico:* Il dominio non importa librerie esterne di infrastruttura. Questo garantisce che la logica rimanga testabile in isolamento e protetta dall'obsolescenza dei framework.
- *Integrità e Validazione:* È responsabilità del dominio impedire la creazione di oggetti inconsistenti. Ogni componente (Value Object o Entity) è un "garante" della propria validità.
- *Espressione delle Regole:* Non è un semplice deposito di dati, ma un insieme di componenti attivi che governano i processi (es. il ciclo di vita di un'analisi).
===== Value Object
I Value Object rappresentano concetti del dominio definiti esclusivamente dai loro attributi. Sono progettati per essere *immutabili*: una volta istanziati, il loro stato non può subire variazioni, garantendo la thread-safety e la stabilità dei riferimenti durante l'intero ciclo di vita della richiesta. L'uguaglianza tra due Value Object è determinata dal valore delle proprietà incapsulate e non dall'identità dell'istanza in memoria.

====== UserId <UserIdAccount>
#codeDiagram("UserIdAccount", 35%)

L'identificativo `UserId` costituisce l'atomo di identità dell'utente all'interno del dominio. Esso rappresenta univocamente un registrante nei sistemi di persistenza.

- *Invariante di Formato:* La sua validazione garantisce che l'identificativo sia un UUID versione 7 (v7) formattato correttamente, prevenendo l'introduzione di chiavi primarie invalide o attacchi tramite stringhe malformate.
- *Astrazione della Persistenza:* Disaccoppia la logica di business dall'implementazione fisica della chiave primaria, assicurando che lo strato di dominio comunichi tramite un tipo forte e non attraverso primitive volatili come le stringhe.
- *Prevenzione del Type Mismatch:* Impedisce l'interscambiabilità accidentale con altri identificativi testuali, prevenendo bug che la normale tipizzazione a stringa non riuscirebbe a intercettare.
- *Comparazione Deterministica:* Semplifica e rende sicura l'uguaglianza tra identificatori tramite un metodo centralizzato, garantendo una risoluzione coerente quando gli utenti vengono ricercati o confrontati.

====== Email <Email>
#codeDiagram("Email", 35%)

L'oggetto `Email` incapsula l'indirizzo di posta elettronica dell'utente, fungendo da identificativo principale per le procedure di autenticazione e recupero credenziali.

- *Validazione Formale Sicura:* Assicura che ogni stringa in ingresso sia conforme allo standard degli indirizzi email tramite pattern matching, prevenendo errori o comportamenti inattesi durante l'invio di notifiche o il login.
- *Normalizzazione del Dato:* Gestisce internamente la pulizia della stringa (conversione in minuscolo e rimozione delle spaziature esterne), garantendo un processo di autenticazione indifferente al maiuscolo/minuscolo e riducendo duplicazioni anomale a database.
- *Invariante di Dominio:* Assicurando che non esistano oggetti `Email` nulli o formattati erroneamente, solleva i servizi applicativi e gli adattatori di persistenza dal dover validare ripetutamente il dato, centralizzando la logica di consistenza.

====== Password <Password>
#codeDiagram("Password", 40%)

L'oggetto `Password` rappresenta una password in chiaro nel momento del suo inserimento. Il dominio garantisce che questa istanza sia temporanea e serva esclusivamente per le fasi di controllo qualitativo e crittografico.

- *Enforcement della Complessità:* Verifica rigorosamente le regole di sicurezza e gli standard industriali (minimo 8 caratteri, presenza di maiuscole, minuscole, numeri e caratteri speciali), rigettando password deboli ancor prima che raggiungano gli strati inferiori.
- *Garanzia di Sicurezza Proattiva:* Centralizza la business rule relativa alla robustezza della password. Un cambiamento alle politiche di sicurezza avverrà unicamente in questo contesto, propagandosi automaticamente in ogni punto del sistema.
- *Limitazione dell'Esposizione:* Essendo un oggetto effimero, il suo scopo principale è transitare in modo controllato verso i servizi di crittografia (per la generazione dell'hash) o di comparazione, impedendone l'accidentale salvataggio in chiaro.

====== PasswordHash <PasswordHash>
#codeDiagram("PasswordHash", 45%)

L'oggetto `PasswordHash` rappresenta la credenziale cifrata salvata in isolamento e persistita nel sistema. L'infrastruttura di dominio non possiede le chiavi in formati leggibili ma esclusivamente la loro traduzione crittografica sicura.

- *Invariante Crittografica:* Assicura attraverso la validazione che la stringa instanziata sia effettivamente un hash compatibile con lo standard `bcrypt` (identificato dal prefisso `$2a$` o `$2b$`), precludendo il salvataggio o l'utilizzo di testi in chiaro nel posto di un hash.
- *Scudo per la Persistenza:* Costituisce l'unica rappresentazione della password ammessa nel modello persistente, certificando allo strato di database che il dato fornito è già stato processato e validato da un servizio crittografico.
- *Confronto Cifrato Sicuro:* Identifica esplicitamente il dominio di competenza per le collisioni e agevola la comunicazione con i servizi di hashing durante le procedure di login per il ricalcolo e confronto dell'hash reale.

===== Entity
A differenza dei Value Object, le Entity sono definite dalla loro *identità* persistente nel tempo e non solo dai loro attributi. Un'Entity mantiene la propria individualità anche se i suoi dati interni subiscono variazioni. Esse incapsulano lo stato e il comportamento del business, garantendo che le transizioni di stato avvengano nel rispetto delle regole del dominio.

- *Identità Univoca:* Ogni Entity è associata a un identificatore immutabile che ne permette la distinzione univoca all'interno del sistema.
- *Ciclo di Vita e Stato:* Le Entity possiedono un ciclo di vita (creazione, modifica, archiviazione) e gestiscono attivamente le proprie mutazioni interne attraverso metodi espliciti.
- *Integrità Comportamentale:* Non si limitano a esporre dati (getter/setter), ma offrono metodi che rappresentano azioni di business, assicurando che l'oggetto passi solo attraverso stati validi e coerenti.

====== User <User>
#codeDiagram("User", 90%)

L'entità `User` costituisce l'entità radice del dominio di autenticazione. Essa incapsula l'identità dell'utente (`UserId`), le credenziali di accesso nella loro forma protetta (`Email`, `PasswordHash`) e i metadati temporali di ciclo di vita (`createdAt`, `updatedAt`).

- *Incapsulamento del Ciclo di Vita:* I metodi `create` e `reconstitute` impongono percorsi di costruzione distinti e semanticamente precisi, facilitando la tracciabilità delle operazioni di dominio.
- *Mutazione Controllata:* Il metodo `updatePassword` è l'unico punto di modifica dello stato interno dell'entità, garantendo che ogni cambio di credenziali passi attraverso la logica di dominio e non avvenga mediante accesso diretto ai campi.
- *Proiezione verso il Layer Applicativo:* Il metodo `toDTO` genera una rappresentazione dell'entità esente da dettagli implementativi, permettendo il trasferimento sicuro dei dati verso i layer superiori senza esporre i segreti del dominio.


==== Application
===== Commands

====== DeleteCommand <DeleteCommand>
#codeDiagram("DeleteCommand", 30%)

`DeleteCommand` incapsula il parametro necessario all'eliminazione di un account utente. Trasporta l'identificativo dell'utente da cancellare (`userToDelete`) come stringa non nulla, garantendo che il caso d'uso di cancellazione riceva un riferimento esplicito e non ambiguo al soggetto dell'operazione.

====== LoginCommand <LoginCommand>
#codeDiagram("LoginCommand", 50%)

`LoginCommand` trasporta le credenziali di autenticazione dell'utente.

- *Accoppiamento Esplicito delle Credenziali:* Il costruttore impone la co-presenza di `email` e `password`, impedendo l'invio di un comando di autenticazione parziale che potrebbe generare comportamenti indefiniti nel servizio sottostante.

====== LogoutCommand <LogoutCommand>
#codeDiagram("LogoutCommand", 30%)

`LogoutCommand` incapsula il parametro necessario all'invalidazione di una sessione attiva. Il `refreshToken` rappresenta il token di sessione da revocare, identificando univocamente la sessione dell'utente da terminare senza richiederne l'identità diretta.

====== RegistrationUserCommand <RegistrationUserCommand>
#codeDiagram("RegistrationUserCommand", 60%)

`RegistrationUserCommand` trasporta i dati necessari alla creazione di un nuovo account. Il costruttore esplicito garantisce che email e password siano sempre fornite contestualmente, rendendo impossibile avviare il flusso di registrazione in assenza di uno dei due parametri fondamentali.

====== UpdateUserCommand <UpdateUserCommand>
#codeDiagram("UpdateUserCommand", 60%)

`UpdateUserCommand` incapsula i parametri per l'aggiornamento delle credenziali di un utente esistente. Trasporta l'email come identificativo del soggetto e la `newPassword`, separando semanticamente l'aggiornamento dalla creazione.

- *Identificazione Implicita del Soggetto:* L'email funge sia da identificativo per recuperare l'utente dal repository, sia da dato invariante dell'account, riflettendo la decisione di design per cui l'email non è modificabile in questa versione del sistema.

===== Application DTOs
====== AuthResultDto <AuthResultDto>
#codeDiagram("AuthResultDto", 60%)

`AuthResultDto` rappresenta il risultato di un'operazione di autenticazione riuscita. Aggrega i token di sessione (`accessToken` e `refreshToken`) con la proiezione dell'utente autenticato (`UserDTO`).

- *Completezza del Contratto di Autenticazione:* La co-presenza di token e dati utente evita una doppia richiesta al backend (una per i token e una per il profilo), ottimizzando il flusso di autenticazione.

====== JwtPayload <JwtPayload>
#codeDiagram("JwtPayload", 25%)

`JwtPayload` definisce la struttura del payload del token JWT. Incapsula il `sub` (subject, ovvero l'`userId`), l'`email`, e i campi temporali standard `iat` (issued at) e `exp` (expiration).

- *Contratto Condiviso tra Porte:* Sia `ITokenProviderPort` che `IVerifyTokenPort` dipendono da questo tipo, garantendo che la struttura del payload sia coerente tra il momento della firma e quello della verifica, senza duplicazioni di definizione.
- *Campi Temporali Opzionali:* `iat` ed `exp` sono marcati come opzionali (`?`) poiché possono essere aggiunti dalla libreria JWT durante la firma e non devono essere necessariamente presenti nel payload in input alla generazione.

====== UserDTO <UserDTO>
#codeDiagram("UserDTO", 25%)

`UserDTO` è la proiezione del dominio utente destinata alla comunicazione interna tra i livelli applicativo e di presentazione. Espone i soli campi necessari alle operazioni di lettura (`id`, `email`, `createdAt`, `updatedAt`), occultando i dettagli sensibili come `PasswordHash`.

===== Exceptions

====== InvalidCredentialsException <InvalidCredentialsException>
#codeDiagram("InvalidCredentialsException", 40%)

`InvalidCredentialsException` è l'eccezione sollevata dal `LoginService` quando la combinazione email/password fornita non corrisponde a nessun account valido nel sistema. Il costruttore senza parametri formalizza un errore di business che non richiede dettagli aggiuntivi: l'unica informazione rilevante è che le credenziali sono invalide.

===== Ports

====== IHashComparePort <IHashComparePort>
#codeDiagram("IHashComparePort", 65%)

`IHashComparePort` definisce il contratto per la verifica di una password in chiaro rispetto a un hash crittografico. Il metodo `compare(plaintext, hash)` restituisce una `Promise<boolean>`, astraendo l'algoritmo di hashing effettivamente utilizzato dall'interno del Core applicativo.

- *Inversione della Dipendenza:* Il `LoginService` dipende da questa interfaccia e non da una specifica implementazione, rendendo possibile la sostituzione dell'algoritmo di hashing senza modificare la logica di business.
- *Testabilità:* In fase di test unitario, questa porta può essere sostituita da un'implementazione mock che restituisce `true` o `false` in modo deterministico, isolando il `LoginService` dall'overhead computazionale del vero algoritmo crittografico.

====== IHashPasswordPort <IHashPasswordPort>
#codeDiagram("IHashPasswordPort", 50%)

`IHashPasswordPort` definisce il contratto per la trasformazione di una password in chiaro nel suo hash crittografico. Il metodo `hash(plaintext)` restituisce una `Promise<string>`, rendendo il Core indipendente dall'algoritmo di hashing e dalla sua configurazione.

- *Separazione delle Responsabilità:* La porta di hashing è distinta da quella di confronto (`IHashComparePort`), poiché si tratta di operazioni semanticamente diverse usate in contesti diversi (registrazione vs login), con diversi use case come dipendenti.
- *Sicurezza by Design:* Incapsulare l'hashing in una porta formalizza la regola che nessuna password deve mai essere salvata in chiaro nel sistema, rendendo questo vincolo di sicurezza esplicito nell'architettura.

====== ISessionDeletePort <ISessionDeletePort>
#codeDiagram("ISessionDeletePort", 60%)

`ISessionDeletePort` definisce il contratto per la revoca di una sessione attiva. Il metodo `deleteSession(refreshToken)` richiede il token di sessione come identificativo, delegando all'adattatore la ricerca e l'eliminazione del record corrispondente nel layer di persistenza.

- *Semantica del Logout:* L'uso del `refreshToken` come parametro riflette la decisione architetturale di trattare la sessione come un'entità identificata dal token e non dall'utente, permettendo il logout selettivo in scenari multi-sessione.
- *Isolamento dalla Persistenza:* Il Core non ha conoscenza del meccanismo di archiviazione delle sessioni; tale dettaglio è completamente nascosto dall'adattatore che implementa questa porta.

====== ISessionSavePort <ISessionSavePort>
#codeDiagram("ISessionSavePort", 80%)

`ISessionSavePort` definisce il contratto per la creazione e il salvataggio di una nuova sessione. Il metodo `saveSession(userId, refreshToken, expiresAt)` riceve i tre parametri essenziali che caratterizzano una sessione: il soggetto, il token di accesso rinnovabile e la scadenza.

- *Completezza del Contratto di Sessione:* I tre parametri riflettono i requisiti minimi per una gestione sicura delle sessioni: l'`expiresAt` permette la scadenza automatica e il `refreshToken` identifica univocamente la sessione per operazioni future.
- *Disaccoppiamento dallo Storage:* Il Core delega completamente all'adattatore la scelta di dove e come persistere la sessione.

====== ITokenProviderPort <ITokenProviderPort>
#codeDiagram("ITokenProviderPort", 60%)

`ITokenProviderPort` definisce il contratto per la generazione di token di autenticazione. Il metodo `generateToken` produce il token di accesso a breve scadenza, mentre `generateRefreshToken` produce il token di rinnovo a lunga scadenza, entrambi a partire da un `JwtPayload`.

- *Separazione dei Tipi di Token:* L'esistenza di due metodi distinti riflette la differente semantica e configurazione dei due tipi di token, rendendo esplicita nell'architettura la distinzione tra access token e refresh token.
- *Indipendenza dalla Libreria JWT:* Il Core non importa direttamente librerie come `jsonwebtoken`; la generazione è delegata all'adattatore `JwtAdapter`, che può essere sostituito con qualsiasi altra implementazione compatibile con il contratto.

====== IUserDeletePort <IUserDeletePort>
#codeDiagram("IUserDeletePort", 50%)

`IUserDeletePort` definisce il contratto per la rimozione permanente di un utente dal sistema. Il metodo `deleteUser(userId)` utilizza l'identificativo come unico parametro, separando semanticamente l'eliminazione dell'utente dalla cancellazione delle sue sessioni (gestita da `ISessionDeletePort`).

- *Granularità delle Operazioni:* La separazione tra la porta di cancellazione dell'utente e quella della sessione consente al `DeleteService` di orchestrare la rimozione in più fasi, o di implementare soft delete senza modificare i contratti.
- *Atomicità Delegata:* La gestione dell'atomicità dell'operazione è responsabilità dell'adattatore o dello strato di infrastruttura, non del Core.

====== IUserFindPort <IUserFindPort>
#codeDiagram("IUserFindPort", 50%)

`IUserFindPort` definisce il contratto per il recupero di un'entità `User` dalla persistenza tramite email. La firma `find(email): Promise<User | null>` comunica esplicitamente che l'utente potrebbe non esistere, obbligando i chiamanti a gestire il caso di assenza senza ricorrere a eccezioni per il controllo di flusso ordinario.

- *Return Type Esplicito del "Not Found":* Il tipo di ritorno `User | null` è preferito alla propagazione di un'eccezione per l'assenza dell'utente, distinguendo a livello di tipo tra un errore operativo e un esito atteso ma negativo della ricerca.

====== IUserSavePort <IUserSavePort>
#codeDiagram("IUserSavePort", 45%)

`IUserSavePort` definisce il contratto per la persistenza di una nuova entità `User`. Il metodo `save(user)` riceve l'intera entità di dominio, delegando all'adattatore la traduzione nel formato specifico del database (es. record SQL).

- *Accoppiamento all'Entità di Dominio:* A differenza delle porte che accettano primitive, questa porta riceve un oggetto `User` completo, garantendo che solo entità coerenti e già validate dalla logica di dominio possano essere persistite.
- *Separazione da Update:* L'esistenza di porte distinte per `save` e `update` (tramite `IUserUpdatePort`) permette all'adattatore di distinguere tra un'operazione `INSERT` e un `UPDATE` a livello di database, ottimizzando le query sottostanti.

====== IUserUpdatePort <IUserUpdatePort>
#codeDiagram("IUserUpdatePort", 50%)

`IUserUpdatePort` definisce il contratto per la modifica di un'entità `User` già esistente nel sistema. Il metodo `update(user)` riceve l'entità aggiornata, lasciando all'adattatore la responsabilità di determinare quali campi modificare e come gestire la transazione.

- *Gestione dell'`updatedAt` Delegata:* Sebbene l'entità `User` gestisca il campo `updatedAt`, la porta permette all'adattatore di aggiornarlo a livello di database, garantendo la coerenza temporale della persistenza.

====== IVerifyTokenPort <IVerifyTokenPort>
#codeDiagram("IVerifyTokenPort", 55%)

`IVerifyTokenPort` definisce il contratto per la verifica e il parsing di un token JWT. Il metodo `verifyToken(token)` restituisce il `JwtPayload` estratto se il token è valido, o `null` se la verifica fallisce (token scaduto, firma non valida, ecc.), evitando l'uso di eccezioni per scenari di token non validi.

- *Return Type Null-Safe:* Il tipo di ritorno `JwtPayload | null` comunica esplicitamente che un token non valido è un esito atteso, semplificando la gestione nel controller che usa questa porta.
- *Co-Localizzazione con `ITokenProviderPort`:* Il fatto che `JwtAdapter` implementi sia la generazione che la verifica dei token, ma che le due capacità siano esposte come porte distinte, permette di iniettare solo la capacità necessaria nei diversi use case, rispettando il principio di minimo privilegio.

===== Services

====== DeleteService <DeleteService>
#codeDiagram("DeleteService", 65%)

`DeleteService` implementa il caso d'uso di eliminazione dell'account. Inietta `IUserDeletePort` tramite costruttore e coordina la cancellazione dell'utente. Implementa `IDeleteUseCase` e restituisce un `DeleteResponseDto` per confermare l'esito dell'operazione.

- *Orchestrazione Minima:* La logica del servizio è deliberatamente semplice: recupera il comando, delega la cancellazione alla porta e costruisce la risposta. La complessità transazionale (es. eliminare prima le sessioni) può essere gestita a livello di adattatore o aggiungendo dipendenze da `ISessionDeletePort` in evoluzioni future.
- *Implementazione del Contratto:* Implementando `IDeleteUseCase`, il servizio garantisce che il controller dipenda dall'interfaccia e non dalla classe concreta, mantenendo l'invertibilità della dipendenza.

====== LoginService <LoginService>
#codeDiagram("LoginService", 100%)

`LoginService` implementa il caso d'uso di autenticazione. Coordina quattro porte: recupera l'utente tramite `IUserFindPort`, verifica la password con `IHashComparePort`, genera i token con `ITokenProviderPort` e persiste la sessione con `ISessionSavePort`. In caso di credenziali invalide solleva `InvalidCredentialsException`.

- *Orchestrazione Multi-Porta:* L'elevato numero di dipendenze riflette la complessità intrinseca del flusso di autenticazione, che richiede la cooperazione di più capacità infrastrutturali.
- *Short-Circuit in Caso di Errore:* Il servizio interrompe il flusso non appena le credenziali risultano invalide, sollevando `InvalidCredentialsException` prima di procedere alla generazione dei token, minimizzando le operazioni eseguite a fronte di un tentativo fallito.

====== LogoutService <LogoutService>
#codeDiagram("LogoutService", 55%)

`LogoutService` implementa il caso d'uso di chiusura della sessione. Inietta `ISessionDeletePort` e invoca `deleteSession` con il `refreshToken` estratto dal `LogoutCommand`. L'operazione non restituisce dati applicativi rilevanti (ritorno `void`).

- *Semplicità Intenzionale:* La singola dipendenza del servizio riflette la natura atomica dell'operazione di logout, che si riduce alla revoca di un token senza effetti collaterali sul profilo utente.
- *Idempotenza Implicita:* L'eliminazione di un token già revocato o inesistente è gestita a livello di adattatore.

====== RegistrationService <RegistrationService>
#codeDiagram("RegistrationService", 100%)

`RegistrationService` implementa il caso d'uso di creazione di un nuovo account. Coordina `IUserFindPort` (verifica unicità dell'email), `IHashPasswordPort` (hashing della password), `IUserSavePort` (persistenza dell'utente) e `ITokenProviderPort` (generazione dei token post-registrazione), restituendo un `AuthResultDto` completo.

- *Verifica di Unicità Pre-Creazione:* Il servizio verifica che l'email non sia già registrata prima di procedere con hashing e salvataggio, proteggendo l'invariante di unicità dell'account a livello applicativo prima ancora che il database possa sollevare un constraint error.
- *Registrazione e Login Unificati:* La restituzione di un `AuthResultDto` completo (con token) al termine della registrazione riflette la scelta di UX di autenticare automaticamente l'utente al termine del processo di registrazione, eliminando un secondo round-trip di login.

====== UpdateService <UpdateService>
#codeDiagram("UpdateService", 100%)

`UpdateService` implementa il caso d'uso di aggiornamento delle credenziali. Coordina `IUserFindPort` (recupero dell'utente esistente), `IHashPasswordPort` (hashing della nuova password), `IUserUpdatePort` (persistenza della modifica) e `ITokenProviderPort` (generazione di nuovi token post-aggiornamento), restituendo un `AuthResultDto` aggiornato.

- *Rinnovo dei Token Post-Update:* La restituzione di nuovi token dopo l'aggiornamento della password riflette la pratica di sicurezza di invalidare le sessioni precedenti dopo un cambio di credenziali, forzando la ri-autenticazione su tutti i dispositivi.
- *Recupero dell'Entità Prima della Modifica:* Il servizio recupera l'utente tramite email prima di applicare la modifica, garantendo che l'aggiornamento avvenga su un'entità già esistente e coerente con lo stato attuale del dominio.

===== Use Cases

====== IDeleteUseCase <IDeleteUseCase>
#codeDiagram("IDeleteUseCase", 65%)

`IDeleteUseCase` definisce il contratto del caso d'uso di cancellazione account. Il metodo `execute(command: DeleteCommand): Promise<DeleteResponseDto>` standardizza la firma del flusso di eliminazione, permettendo al `DeleteUserController` di invocare l'operazione senza conoscere l'implementazione concreta del servizio.

====== IloginUseCase <IloginUseCase>
#codeDiagram("IloginUseCase", 65%)

`IloginUseCase` definisce il contratto del caso d'uso di autenticazione. Il metodo `execute(command: LoginCommand): Promise<AuthResultDto>` standardizza la firma del flusso di login, disaccoppiando il `LoginController` dall'implementazione concreta del `LoginService`.

====== ILogoutUseCase <ILogoutUseCase>
#codeDiagram("ILogoutUseCase", 60%)

`ILogoutUseCase` definisce il contratto del caso d'uso di logout. Il metodo `execute(command: LogoutCommand): Promise<void>` standardizza la firma del flusso di chiusura sessione, rendendo il `LogoutController` indipendente dalla concreta implementazione del `LogoutService`.

====== IregistrationUseCase <IregistrationUseCase>
#codeDiagram("IregistrationUseCase", 70%)

`IregistrationUseCase` definisce il contratto del caso d'uso di registrazione. Il metodo `execute(command: RegistrationUserCommand): Promise<AuthResultDto>` standardizza la firma del flusso di creazione account, disaccoppiando il `RegistrationController` dall'implementazione concreta del `RegistrationService`.

====== IupdateUseCase <IupdateUseCase>
#codeDiagram("IupdateUseCase", 70%)

`IupdateUseCase` definisce il contratto del caso d'uso di aggiornamento credenziali. Il metodo `execute(command: UpdateUserCommand): Promise<AuthResultDto>` standardizza la firma del flusso di modifica password, rendendo l'`UpdateController` indipendente dall'implementazione concreta dell'`UpdateService`.


==== Infrastructure

===== Adapters

====== BcryptAdapter <BcryptAdapter>
#codeDiagram("BcryptAdapter", 60%)

`BcryptAdapter` è l'adattatore Driven che implementa sia `IHashPasswordPort` sia `IHashComparePort`, fornendo le operazioni crittografiche di hashing e verifica delle password tramite l'algoritmo bcrypt. Il campo `rounds` configura il fattore di costo dell'algoritmo, bilanciando sicurezza e performance.

- *Implementazione Doppia Porta:* Il fatto che un singolo adattatore implementi due porte distinte è una scelta pragmatica: bcrypt è l'algoritmo comune a entrambe le operazioni, e separare le implementazioni non apporterebbe vantaggi architetturali. Le porte rimangono comunque distinte, consentendo di iniettarne solo una nei servizi che ne necessitano.
- *Configurabilità del Fattore di Costo:* Il campo `rounds` permette di calibrare il fattore di costo di bcrypt in base all'ambiente (es. più basso nei test per ridurre la latenza, più alto in produzione per aumentare la resistenza agli attacchi brute-force).
- *Operazioni Asincrone:* I metodi `hash` e `compare` restituiscono `Promise`, riflettendo la natura computazionalmente intensa di bcrypt e la necessità di non bloccare il thread dell'event loop di Node.js durante l'esecuzione.

====== JwtAdapter <JwtAdapter>
#codeDiagram("JwtAdapter", 60%)

`JwtAdapter` è l'adattatore Driven che implementa sia `ITokenProviderPort` sia `IVerifyTokenPort`, gestendo la generazione e la verifica dei token JWT tramite la configurazione di `secret` ed `expiresIn`. Dipende dal tipo `JwtPayload` per garantire la coerenza strutturale del payload.

- *Implementazione Doppia Porta:* Analogamente a `BcryptAdapter`, l'implementazione di due porte in un singolo adattatore è motivata dalla coerenza: la stessa chiave segreta e la stessa configurazione sono necessarie sia per firmare che per verificare i token.
- *Configurabilità Centralizzata:* I campi `secret` ed `expiresIn` centralizzano la configurazione dei token, rendendo semplice la sostituzione dei valori tramite variabili d'ambiente senza modificare la logica del servizio.
- *Gestione del Fallimento di Verifica:* Il metodo `verifyToken` restituisce `null` in caso di token non valido (anziché propagare un'eccezione), trasferendo la responsabilità di gestire l'assenza di un payload valido al chiamante in modo esplicito e sicuro.

====== PostgresAdapter <PostgresAdapter>
#codeDiagram("PostgresAdapter", 100%)

`PostgresAdapter` è l'adattatore Driven principale del microservizio Account. Implementa sei porte: `IUserFindPort`, `IUserSavePort`, `IUserUpdatePort`, `IUserDeletePort`, `ISessionSavePort` e `ISessionDeletePort`, centralizzando tutta la comunicazione con il database PostgreSQL tramite un `Pool` di connessioni. L'interfaccia interna `UserDbRecord` definisce la forma del record nel database.

- *Aggregazione delle Porte di Persistenza:* La scelta di implementare tutte le porte di accesso ai dati in un unico adattatore riflette la coerenza della sorgente dati sottostante: operazioni su utenti e sessioni condividono la stessa connessione al database, semplificando la gestione delle transazioni e della coerenza.
- *Gestione del Pool di Connessioni:* L'uso di un `Pool` anziché di connessioni singole garantisce performance e resilienza in scenari concorrenti, delegando al pool la gestione del ciclo di vita delle connessioni.
- *`onModuleDestroy` per la Pulizia:* L'implementazione del lifecycle hook `onModuleDestroy` garantisce che il pool di connessioni venga chiuso correttamente allo spegnimento del modulo, prevenendo resource leak in ambienti di deployment containerizzati.
- *`UserDbRecord` come Contratto di Mapping:* L'interfaccia interna `UserDbRecord` definisce la forma esatta del record nel database, separando la struttura di persistenza dall'entità di dominio `User` e centralizzando la logica di mapping in un unico punto.

==== Presentation

===== Controllers

====== DeleteUserController <DeleteUserController>
#codeDiagram("DeleteUserController", 75%)

`DeleteUserController` espone l'endpoint HTTP per la cancellazione dell'account. Inietta `IDeleteUseCase` per l'esecuzione del flusso di business e `JwtAdapter` per l'estrazione dell'identità dell'utente dal token JWT presente nella richiesta, restituendo un `DeleteResponseDto`.

- *Estrazione dell'Identità dal Token:* La dipendenza da `JwtAdapter` nel controller riflette la necessità di identificare il soggetto della cancellazione dal token di autenticazione incluso nella richiesta, senza richiedere all'utente di fornire esplicitamente il proprio ID nel body.
- *Delegazione al Use Case:* Il controller non contiene logica di business; si limita a costruire il `DeleteCommand` con le informazioni estratte dalla richiesta e a passarlo al caso d'uso, rispettando il principio di singola responsabilità.

====== LoginController <LoginController>
#codeDiagram("LoginController", 70%)

`LoginController` espone l'endpoint HTTP di autenticazione. Inietta `IloginUseCase`, costruisce un `LoginCommand` dal `LoginRequestDto` ricevuto nel body della richiesta e restituisce un `AuthResponseDto` in caso di successo.

- *Dipendenza dall'Interfaccia:* La dipendenza da `IloginUseCase` anziché da `LoginService` garantisce che il controller possa essere testato con un mock dell'interfaccia senza dover istanziare l'intera catena di dipendenze del servizio.

====== LogoutController <LogoutController>
#codeDiagram("LogoutController", 75%)

`LogoutController` espone l'endpoint HTTP di chiusura sessione. Inietta `ILogoutUseCase`, costruisce un `LogoutCommand` dal `LogoutRequestDto` e invoca il caso d'uso, restituendo un `LogoutResponseDto`.

- *Dipendenza dall'Interfaccia:* La dipendenza da `ILogoutUseCase` anziché da `LogoutService` garantisce che il controller possa essere testato con un mock dell'interfaccia senza dover istanziare l'intera catena di dipendenze del servizio.

====== RegistrationController <RegistrationController>
#codeDiagram("RegistrationController", 75%)

`RegistrationController` espone l'endpoint HTTP di creazione account. Inietta `IregistrationUseCase`, costruisce un `RegistrationUserCommand` dal `RegistrationDto` ricevuto nel body e restituisce un `AuthResponseDto` completo di token e profilo utente.

- *Registrazione e Autenticazione Contestuale:* La restituzione di un `AuthResponseDto` (contenente i token) al termine della registrazione riflette la scelta UX di autenticare l'utente immediatamente dopo la creazione dell'account.

====== UpdateController <UpdateController>
#codeDiagram("UpdateController", 80%)

`UpdateController` espone l'endpoint HTTP di aggiornamento credenziali. Inietta sia `IupdateUseCase` per l'esecuzione del caso d'uso, sia `JwtAdapter` per estrarre l'email dell'utente autenticato dal token JWT nella richiesta, costruendo l'`UpdateUserCommand` con i dati combinati di richiesta e identità.

- *Identità dall'Autenticazione:* La dipendenza da `JwtAdapter` permette di estrarre l'email dell'utente dal token di sessione, evitando che il client debba includere la propria identità nel body della richiesta e proteggendo da attacchi di impersonation.
- *Costruzione del Comando Arricchito:* Il controller combina le informazioni del `UpdateRequestDto` (nuova password) con quelle estratte dal token (email), producendo un `UpdateUserCommand` completo prima di delegare al use case.

===== Presentation DTOs

====== LoginRequestDto <LoginRequestDto>
#codeDiagram("LoginRequestDto", 30%)

`LoginRequestDto` definisce il contratto del body della richiesta HTTP di login. I campi `email` e `password` sono entrambi obbligatori, garantendo che il framework di validazione (es. `class-validator`) rifiuti le richieste incomplete prima che raggiungano il controller.

====== LogoutRequestDto <LogoutRequestDto>
#codeDiagram("LogoutRequestDto", 30%)

`LogoutRequestDto` definisce il contratto del body della richiesta HTTP di logout. Il campo `refreshToken` trasporta il token di sessione da revocare, che il controller utilizzerà per costruire il `LogoutCommand`.

====== RegistrationDto <RegistrationDto>
#codeDiagram("RegistrationDto", 30%)

`RegistrationDto` definisce il contratto del body della richiesta HTTP di registrazione. I campi `email` e `password` sono obbligatori, rispecchiando i requisiti minimi necessari alla creazione di un nuovo account nel sistema.

====== UpdateRequestDto <UpdateRequestDto>
#codeDiagram("UpdateRequestDto", 35%)

`UpdateRequestDto` definisce il contratto del body della richiesta HTTP di aggiornamento credenziali. Il solo campo obbligatorio `newPassword` riflette la scelta di non richiedere al client di includere la propria identità nel body.

====== AuthResponseDto e UserResponseDto <AuthResponseDto>
#codeDiagram("AuthResponseDto", 35%)

`AuthResponseDto` definisce il contratto della risposta HTTP per le operazioni di autenticazione. Aggrega i token di sessione (`accessToken`, `refreshToken`) con la proiezione ridotta dell'utente tramite `UserResponseDto`, che espone solo `id` ed `email`.

- *Proiezione Minima dell'Utente:* `UserResponseDto` espone meno campi di `UserDTO` (omette `createdAt` e `updatedAt`), riflettendo la necessità del client di disporre dell'identità dell'utente autenticato senza sovraccaricare la risposta con metadati non essenziali al flusso di autenticazione.
- *Contratto Stabile verso il Client:* La forma di `AuthResponseDto` costituisce il contratto pubblico del microservizio per le operazioni di autenticazione.

====== DeleteResponseDto <DeleteResponseDto>
#codeDiagram("DeleteResponseDto", 30%)

`DeleteResponseDto` definisce la risposta HTTP per l'operazione di cancellazione account. Il campo booleano `deleted` fornisce una conferma esplicita e tipizzata dell'esito dell'operazione, permettendo al client di distinguere tra un'eliminazione avvenuta con successo e un esito negativo senza dover interpretare esclusivamente il codice HTTP.

====== LogoutResponseDto <LogoutResponseDto>
#codeDiagram("LogoutResponseDto", 30%)

`LogoutResponseDto` definisce la risposta HTTP per l'operazione di logout. Il campo `message` trasporta un messaggio testuale di conferma, fornendo al client un feedback descrittivo dell'esito dell'operazione di chiusura sessione.

===== Filters

====== AllExceptionsFilter <AllExceptionsFilter>
#codeDiagram("AllExceptionsFilter", 60%)

`AllExceptionsFilter` è il filtro globale delle eccezioni del microservizio Account. Implementa l'interfaccia `ExceptionFilter` di NestJS e intercetta tutte le eccezioni non gestite che emergono dalla catena di elaborazione delle richieste, traducendole in risposte HTTP strutturate e coerenti.

- *Centralizzazione della Gestione degli Errori:* Concentrare la traduzione delle eccezioni in un unico filtro garantisce uniformità nel formato delle risposte di errore verso i client, evitando che dettagli tecnici interni vengano esposti accidentalmente.
- *Mapping Eccezioni - HTTP:* Il filtro implementa la logica di mapping tra le eccezioni di dominio (es. `InvalidCredentialsException`) e i codici di stato HTTP appropriati (es. `401 Unauthorized`), centralizzando questa trasformazione e rimuovendo la necessità di gestirla nei singoli controller.
=== Frontend Application

Il frontend di Code Guardian è una *Single-Page Application* (SPA) sviluppata in TypeScript con React, strutturata seguendo il pattern architetturale *Model-View-ViewModel* (MVVM). Le responsabilità sono distribuite in quattro strati orizzontali con dipendenze che fluiscono sempre dalla View verso il Model, senza mai invertirsi.

==== Pattern architetturale: MVVM

Il pattern MVVM (Model-View-ViewModel) separa le responsabilità in tre aree principali:

====== Model <Model>
Rappresenta i dati di dominio e la logica di accesso remoto. Comprende i moduli API (`AuthApi`, `UsersApi`, `RepositoriesApi`, `AnalysisApi`) e i tipi TypeScript condivisi.

====== ViewModel <ViewModel>
Media tra Model e View, espone stato osservabile e comandi ai componenti. Implementato tramite React Context (`AuthContext`) e custom hook (`useAuth`, `useAnalysisPolling`).

====== View <View>
L'interfaccia utente, composta da pagine e componenti React. Legge lo stato dal ViewModel e delega le azioni ai hook; non contiene logica di business.


La dipendenza è unidirezionale: View → ViewModel → Model. Nessuno strato dipende dallo strato superiore.

==== Strati dell'architettura

===== Model — API Layer

Lo strato Model è composto da cinque moduli, tutti costruiti attorno a un'istanza Axios centralizzata denominata `Gateway`:

====== Gateway <Gateway>
Istanza Axios centralizzata che gestisce dinamicamente il `baseURL`. L'interceptor in entrata analizza il path della richiesta (es. `/account`) per indirizzarla al microservizio corretto utilizzando le variabili d'ambiente (`VITE_ACCOUNT_URL` o `VITE_ANALYSIS_URL`) e aggiunge il token Bearer. L'interceptor in uscita si occupa di due compiti principali: (1) l'adattamento delle risposte (es. converte la copertura test da proporzione $[0,1]$ a percentuale, e normalizza gli stati dell'analisi come `PENDING` in `"pending"`); (2) nel caso di risposta 401, blocca le richieste pendenti provando un refresh del token, e le ri-esegue con il nuovo token in caso di successo. Se il refresh fallisce o la richiesta originale era proprio il refresh, elimina lo stato persistente e reindirizza al login.

====== AuthApi <AuthApi>
Chiamate di login, registrazione, refresh e logout verso il microservizio Account. I metodi `login` e `register` restituiscono sia i token (`accessToken`, `refreshToken`) sia l'oggetto `user`.

====== UsersApi <UsersApi>
Operazioni per il cambio password e la cancellazione dell'account.

====== PatApi <PatApi>
Operazioni di aggiunta, aggiornamento e rimozione dei Personal Access Token (PAT) associati agli URL dei repository.

====== RepositoriesApi <RepositoriesApi>
CRUD dei repository, avvio analisi, recupero report, storico per repository e classifica globale per score. Il metodo `startAnalysis` invia le opzioni di esecuzione invocando un endpoint backend unificato per l'avvio.

====== AnalysisApi <AnalysisApi>
Recupero e parsing di un report di analisi, esportazione in formato PDF o JSON.


#codeDiagram("api_layer", 90%)

===== Model — Tipi di dominio

I tipi TypeScript condivisi tra tutti gli strati sono definiti nel modulo `@/types`. Le strutture principali sono:

====== Entità <Entità>
`User`, `Repository`, `Analysis`, `AnalysisReport`, `Issue`, `RankedRepository`, `CodeAgentStaticIssue` e `AIInterpretation`.

====== Enum <Enum>
`AnalysisStatus` (`not-analyzed` | `pending` | `in-progress` | `completed` | `failed`), `IssueSeverity` (`critical` | `high` | `medium` | `low` | `info`), `AnalysisArea` (`code` | `security` | `documentation`).


#codeDiagram("types", 80%)

===== ViewModel — Context Layer

Lo strato ViewModel è implementato tramite un React Context provider, montato alla radice dell'applicazione in `App.tsx`:

====== AuthProvider <AuthProvider>
Gestisce lo stato dell'utente autenticato (`user`, `isAuthenticated`, `isLoading`). Al mount, tenta il ripristino della sessione decodificando localmente il payload del JWT di accesso per estrarre i dati dell'utente e verificandone la scadenza, evitando così chiamate di rete aggiuntive. Espone le azioni `login`, `register`, `logout` e `refreshUser`.


#codeDiagram("contexts", 80%)

===== ViewModel — Hooks Layer

I custom hook isolano la logica stateful riutilizzabile e la rendono disponibile a più componenti:

====== useAuth <useAuth>
Legge `AuthContext` e garantisce, tramite type narrowing, che `user` non sia mai `null` nelle pagine protette.

====== useAnalysisPolling <useAnalysisPolling>
Effettua il polling periodico verso il microservizio Analysis relativo a uno specifico `repositoryId`, invocando i callback `onStarted`, `onProgress`, `onCompleted` e `onFailed` al variare dello stato dell'analisi recuperata.


#codeDiagram("hooks_logic", 80%)

===== View — Componenti

I componenti sono organizzati in due categorie:

*Componenti di dominio*:
====== AppLayout <AppLayout>
Wrapper delle route protette che compone `Sidebar` e `<Outlet />`. Verifica `isAuthenticated` e reindirizza al login se necessario.

====== Sidebar <Sidebar>
Navigazione principale con link alle sezioni protette e pulsante di logout.

====== ScoreCard <ScoreCard>
Gauge SVG semicircolare e barra lineare per la visualizzazione degli score. Il colore si adatta dinamicamente al valore: verde (score ≥ 75), giallo (≥ 50), rosso (< 50).

====== AnalysisStatusBadge <AnalysisStatusBadge>
Badge visivo che rappresenta i cinque stati del ciclo di vita di un'analisi.

====== AddRepositoryModal <AddRepositoryModal>
Dialog con form per l'aggiunta di un repository, con validazione dell'URL GitHub.

====== AnalysisOptionsModal <AnalysisOptionsModal>
Dialog per la configurazione di un'analisi (selezione delle aree, branch, commit hash). Seleziona automaticamente il path dell'endpoint in base alla disponibilità di `repositoryUrl`.


*Primitive UI* (basate su Radix UI tramite shadcn/ui): `Button` in sette varianti (default, destructive, outline, secondary, ghost, link, accent) e quattro taglie; `Card`, `Dialog`, `Badge`, `Tabs`, `Input`, `Progress`, `Skeleton`, `Separator`.

#codeDiagram("components_view", 90%)

===== View — Pagine

Le pagine si dividono in pubbliche e protette:

*Pagine pubbliche* (accessibili senza autenticazione):
====== LandingPage <LandingPage>
Presentazione del prodotto con chiamata all'azione verso login e registrazione.

====== LoginPage <LoginPage>
Form con validazione Zod; delegano le operazioni di autenticazione ad `AuthContext`.

====== NotFoundPage <NotFoundPage>
Pagina di fallback per route non mappate.


*Pagine protette* (accessibili solo con utente autenticato):
====== RepositoriesPage <RepositoriesPage>
Lista dei repository con ricerca full-text e paginazione. Permette di aggiungere nuovi repository tramite `AddRepositoryModal` e di avviare analisi tramite `AnalysisOptionsModal`.

====== RepositoryDetailPage <RepositoryDetailPage>
Dettaglio di un repository con tab per Code Quality, Security, Documentation e History. Mostra il report dell'ultima analisi, la progressione in tempo reale via `useAnalysisPolling`, e permette di esportare il report nei formati PDF e JSON.

====== HistoryPage <HistoryPage>
Storico globale delle analisi con paginazione.

====== RankingPage <RankingPage>
Classifica ordinata per score aggregato. Per ogni repository mostra il delta dello score rispetto all'analisi precedente (`scoreDelta`) con icone di tendenza (`TrendingUp` / `TrendingDown`).

====== SettingsPage <SettingsPage>
Gestione e salvataggio dei Personal Access Token (PAT) per repository specifici, cambio password utente e cancellazione definitiva dell'account.


#codeDiagram("app", 80%)

==== Flusso di autenticazione

Il routing è gestito da React Router v7. `App.tsx` definisce due gruppi di route:
====== Route pubbliche <Routepubbliche>
`LandingPage`, `LoginPage`, `RegisterPage`, `NotFoundPage`.

====== Route protette <Routeprotette>
Avvolte da `AppLayout`, che verifica `isAuthenticated` e reindirizza al login se necessario.


All'avvio dell'applicazione, `AuthProvider` tenta il ripristino della sessione estraendo e validando localmente il payload dal token JWT salvato. Tre scenari possibili:
+ Il token è presente e non scaduto → il payload viene interpretato e la sessione viene ripristinata a partire dai dati in esso contenuti, senza alcuna chiamata di rete aggiuntiva.
+ Il token è scaduto o non valido → il ripristino fallisce in locale, invalidando lo stato e richiedendo un nuovo login.
+ Il token non è più valido durante le richieste di navigazione (risposta 401) → l'interceptor `Gateway` tenta il refresh; se fallisce, i token vengono invalidati e l'utente è reindirizzato al login.

Il token di accesso viene allegato automaticamente a ogni richiesta dall'interceptor di `Gateway`, senza che i componenti debbano gestirlo esplicitamente.

==== Aggiornamenti in tempo reale

Le analisi dei repository sono operazioni a lunga durata (ordine dei minuti). Per mantenere l'utente informato dello stato di avanzamento, il frontend utilizza un meccanismo di *polling HTTP* implementato tramite l'hook custom `useAnalysisPolling`.

Quando l'utente avvia un'analisi o visualizza la pagina di un repository in fase di elaborazione, il hook effettua richieste periodiche verso il microservizio Analysis per ottenere lo stato aggiornato dell'analisi in corso. Ai fini di ottimizzazione, il polling viene sospeso automaticamente non appena l'analisi giunge a uno stato terminale (completato o fallito).

Questo approccio garantisce che la `RepositoryDetailPage` aggiorni dinamicamente lo stato dell'analisi (con i relativi callback `onStarted`, `onCompleted`, `onFailed`) e presenti infine il report completo, fornendo il necessario feedback visivo senza complessità architetturali legate a WebSockets persistenti.
