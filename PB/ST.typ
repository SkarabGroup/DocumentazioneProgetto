#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/stDiagramUtil.typ": *

#let versione = "v0.5.0"
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
    "2026/04/06",
    "0.6.0",
    "Aggiunta sezione scelta tool per l'analisi della sicureza",
    members.antonio,
  ),
  (
    "2026/03/31",
    "0.5.0",
    "Stesura dei VO dell'Account Microservice",
    members.alice,
    members.suar
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

Il progetto ha come obiettivo la realizzazione di un sistema per l'automazione dei processi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] delle vulnerabilità del software. L'architettura si basa sul paradigma degli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] software intelligenti, operanti su repository di codice sorgente. La conformità del sistema è vincolata ai requisiti definiti nel

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Finalità del Documento
Il presente documento ha lo scopo di definire l'architettura di sistema e le scelte implementative necessarie alla realizzazione di Code Guardian. Partendo dai requisiti definiti nell'Analisi dei Requisiti, il documento ne formalizza la traduzione in componenti software, definendo i vincoli tecnologici e i pattern di progettazione adottati.

Il documento costituisce il riferimento tecnico primario per il gruppo di lavoro (#def[Skarab Group]) e per gli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#stakeholder")[#def[stakeholder]], perseguendo i seguenti obiettivi:
- definire l'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#architettura-logica")[#def[architettura logica]] del sistema, descrivendo l'interazione tra i componenti attraverso una scomposizione in layer basata sul pattern #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#architettura-esagonale")[#def[esagonale]];
- illustrare l'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#architettura-di-deployment")[#def[architettura di deployment]], specificando la topologia di rete, i nodi di calcolo e le strategie di orchestrazione dei container necessari all'erogazione del servizio;
- formalizzare i #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#design-pattern")[#def[design pattern]] applicati, motivandone l'adozione per garantire la modularità e la testabilità del codice;
- garantire la tracciabilità del progetto attraverso la mappatura dei requisiti, verificando che ogni specifica identificata nell'Analisi dei Requisiti trovi riscontro in una componente tecnica o in una logica di business implementata;
- fornire una rappresentazione grafica del sistema mediante diagrammi UML e schemi architetturali, facilitando la comprensione delle dipendenze e del flusso dei dati tra i sottosistemi.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario (v1.0.0)]].

== Riferimenti
=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione della Specifica Tecnica:
- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Analisi dei Requisiti*: insieme dei requisiti e dei casi d'uso coperti nel Minimum Viable Product. <AdR> \
  #underline(link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")) \
  (versione: *v1.0.0*)

- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. <NdP>\
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")] \
  (versione: *v1.0.0*)

=== Riferimenti Informativi
- *Standard IEEE/ISO/IEC 42010-2022*: International Standard for Software, systems and enterprise--Architecture description \
  #underline(link("https://ieeexplore.ieee.org/document/9938446")) \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sulla Progettazione*: \
  #underline(link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")) \
  (ultimo accesso: *31/03/2026*)
- *Dispense del Corso di Ingegneria del Software sulla Dependency Management*: \
  #underline[#link(
    "https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf",
  )] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Diagrammi delle Classi*: <ddC> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dipsense del Corso di Ingegneria del Software sui Diagrammi delle Attività*: <ddA> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")] \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Pattern Architetturali*: \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf")) \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sulla Dependency Injection*:  \
  #underline(
    link(
      "https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf",
    ),
  ) \
  (ultimo accesso: *31/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Model-View Patterns*: \
  #underline(link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")) \
  (ultimo accesso: *31/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Creazionali*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")) \
  (ultimo accesso: *31/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Strutturali*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")) \
  (ultimo accesso: *31/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Comportamentali*:  \
  #underline(link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")) \
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
)

L'insieme di queste scelte tecnologiche mira a minimizzare il Total Cost of Ownership (TCO) del sistema. L'orientamento verso servizi Managed (Atlas, RDS) e Serverless (Lambda, Step Functions, Fargate) riduce drasticamente l'overhead operativo legato alla manutenzione del ferro e del software di base. Questo approccio 'Ops-less' consente di scalare i costi in modo lineare rispetto all'effettivo utilizzo della piattaforma, trasformando i costi fissi di infrastruttura in costi variabili ottimizzati sul volume di analisi processate.

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

====== AnalysisId <AnalysisId>
#codeDiagram("AnalysisId", 30%)

L'identificativo `AnalysisId` costituisce l'atomo di identità del dominio. Eleva un dato primitivo a concetto di business, garantendo la coerenza semantica all'interno dell'intero esagono attraverso le seguenti potenzialità:

- *Type Safety e Coerenza:* Impedisce l'interscambiabilità accidentale tra identificativi di diversa natura (es. #underline[#link(<UserId>)[`UserId`]] e `AnalysisId`), un errore comune nel caso di utilizzo di tipi primitivi omogenei.
- *Invariante di Dominio:* Funge da "gatekeeper" per il Core; la sua esistenza garantisce che l'identificativo sia formalmente integro, sollevando i casi d'uso e i servizi da validazioni sintattiche ridondanti.
- *Centralizzazione dell'Evoluzione:* Qualsiasi modifica strutturale (es. migrazione a UUID v7 o aggiunta di prefissi) è confinata in questo componente, rendendo il cambiamento trasparente alla logica di business.
- *Confronto Deterministico:* Centralizza la logica di comparazione, assicurando coerenza nei processi di ricerca e persistenza dei dati.

====== UserId <UserId>
#codeDiagram("UserId", 30%)
L'identificativo `UserId` rappresenta l'atomo di identità dell'attore (utente o sistema) all'interno del dominio. La sua funzione principale è garantire la tracciabilità e la titolarità delle azioni e delle risorse.

- *Isolamento dai Sistemi di Identity:* Funge da ponte tra il sistema di autenticazione esterno (es. Identity Provider, JWT) e il Core, garantendo che una volta superato il confine dell'esagono, l'identità sia trattata come un tipo forte e non come una stringa volatile.
- *Invariante di Sicurezza:* La validazione centralizzata assicura che ogni operazione del Core sia riferita a un identificativo che rispetti i criteri di integrità del sistema, prevenendo tentativi di injection o l'elaborazione di ID malformati.
- *Prevenzione del Type Mismatch:* Impedisce l'associazione errata di identificativi in contesti dove coesistono più entità (es. associare per errore un #underline(link(<AnalysisId>)[`AnalysisId`]) a un campo destinato allo `UserId`), riducendo drasticamente i bug logici in fase di compilazione.
- *Astrazione della Persistenza:* Permette di slegare la logica di business dalla specifica implementazione della chiave primaria nel database, facilitando eventuali migrazioni o cambiamenti nella strategia di gestione delle identità.

====== RepoURL - GitHub Domain <RepoURL>
#codeDiagram("RepoURL", 30%)
L'oggetto `RepoURL` incapsula il localizzatore remoto del repository sorgente specifico per il contesto GitHub. A differenza di un identificativo generico, questo Value Object garantisce che l'indirizzo sia conforme ai protocolli di comunicazione e agli standard della piattaforma target.

- *Validazione del Canale:* Assicura che la stringa sia un URL ben formato e compatibile con i protocolli supportati HTTPS, prevenendo fallimenti a runtime durante le operazioni di clonazione degli adattatori di infrastruttura.
- *Invariante di Protocollo:* Permette di centralizzare le politiche di accesso, garantendo che il sistema accetti solo puntatori a risorse autorizzate o che rispettino determinati criteri di sicurezza definiti per il dominio GitHub.
- *Disaccoppiamento Tecnologico:* Il Core manipola il concetto astratto di "sorgente remota", delegando la risoluzione effettiva agli adattatori Driven, che operano così su dati già verificati e normalizzati.
- *Normalizzazione del Dato:* Gestisce internamente la pulizia della stringa (es. rimozione di trailing slashes o suffissi `.git` ridondanti), garantendo un confronto deterministico tra diverse istanze di analisi.

====== BranchName - GitHub Domain <BranchName>
#codeDiagram("BranchName", 30%)

L'oggetto `BranchName` rappresenta il riferimento simbolico a una specifica linea di sviluppo all'interno del repository. La sua funzione è quella di tipizzare la stringa che identifica il ramo di analisi, isolando il Core dalle convenzioni di naming esterne.

- *Validazione dei Riferimenti:* Garantisce che il nome del branch rispetti gli standard sintattici di Git (es. assenza di caratteri di controllo, spazi o sequenze non ammesse come `..`), prevenendo errori di esecuzione nei comandi di checkout o fetch degli adattatori.
- *Invariante di Contesto:* Assicura che il puntatore alla risorsa sia formalmente integro prima di essere passato ai servizi di analisi, permettendo al sistema di gestire in modo univoco branch principali (es. `main`, `master`) o feature branch.
- *Disaccoppiamento Semantico:* Permette al dominio di trattare il "nome del ramo" come un'entità logica, slegando la logica di business dalle specifiche implementazioni dei client Git utilizzati nei Driven Adapters.
- *Normalizzazione e Confronto:* Centralizza la gestione della case-sensitivity e della formattazione (es. rimozione del prefisso `refs/heads/`), assicurando che il confronto tra due rami avvenga in modo deterministico e senza ambiguità.

====== CommitHash - GitHub Domain <CommitHash>
#codeDiagram("CommitHash", 30%)

L'oggetto `CommitHash` rappresenta l'identificativo crittografico univoco di una specifica istantanea (snapshot) del repository. La sua funzione è garantire che l'analisi venga eseguita su una versione del codice deterministica e non ambigua.

- *Garanzia di Riproducibilità:* Tipizzando l'hash, il Core assicura che ogni metrica estratta sia riferibile a un preciso stato del sorgente, rendendo l'analisi verificabile anche a fronte di evoluzioni successive del branch.
- *Validazione Formale:* Centralizza il controllo sintattico sulla stringa (es. verifica del formato esadecimale e della lunghezza standard SHA-1 o SHA-256), intercettando input malformati prima dell'invio ai comandi di basso livello dei Driven Adapters.
- *Integrità del Dato:* Impedisce l'utilizzo di riferimenti parziali o ambigui all'interno della logica di business, elevando il concetto di "revisione" a un tipo forte che non può essere confuso con altri parametri testuali.
- *Determinismo del Confronto:* Permette di stabilire con certezza se due sessioni di analisi insistono sul medesimo stato del codice, facilitando logiche di caching o di skipping delle analisi ridondanti.

===== Entity
A differenza dei Value Object, le Entity sono definite dalla loro *identità* persistente nel tempo e non solo dai loro attributi. Un'Entity mantiene la propria individualità anche se i suoi dati interni subiscono variazioni. Esse incapsulano lo stato e il comportamento del business, garantendo che le transizioni di stato avvengano nel rispetto delle regole del dominio.

- *Identità Univoca:* Ogni Entity è associata a un identificatore immutabile che ne permette la distinzione univoca all'interno del sistema.
- *Ciclo di Vita e Stato:* Le Entity possiedono un ciclo di vita (creazione, modifica, archiviazione) e gestiscono attivamente le proprie mutazioni interne attraverso metodi espliciti.
- *Integrità Comportamentale:* Non si limitano a esporre dati (getter/setter), ma offrono metodi che rappresentano azioni di business, assicurando che l'oggetto passi solo attraverso stati validi e coerenti.

====== Analysis <Analysis>
#codeDiagram("Analysis", 50%)

L'entità `Analysis` costituisce l'astrazione fondamentale del dominio. Essa aggrega l'identità dell'analisi (#underline[#link(<AnalysisId>)[`AnalysisId`]]), il riferimento al titolare (#underline[#link(<UserId>)[`UserId`]]) e la macchina a stati (#underline[#link(<AnalysisStatus>)[`AnalysisStatus`]]) che ne governa l'esecuzione. Essendo definita come classe astratta, stabilisce il protocollo comune per ogni specializzazione (es. #underline[#link(<GitHubAnalysis>)[`GitHub Analysis`]]), garantendo coerenza comportamentale nell'intero sistema.

- *Gestione del Ciclo di Vita:* Incapsula la logica di transizione tra i diversi stati (`INITIALIZING` -> `RUNNING` -> `COMPLETED/FAILED`). Questo approccio garantisce che il cambio di stato non sia una semplice modifica di un campo, ma un evento di dominio controllato.
- *Integrità del Possesso:* Attraverso l'associazione forte con #underline[#link(<UserId>)[`UserId`]], l'entità garantisce che ogni processo di analisi sia intrinsecamente legato a un attore, facilitando le logiche di autorizzazione e segregazione dei dati nel Core.
- *Identità Immutabile:* Una volta generata tramite #underline[#link(<AnalysisId>)[`AnalysisId`]], l'identità dell'analisi rimane costante per tutto il suo ciclo di vita, indipendentemente dalle mutazioni del suo stato interno o dei dati prodotti.
- *Astrazione dei Comportamenti:* I metodi `start()`, `complete()` e `fail()` definiscono l'interfaccia di controllo dell'entità, permettendo agli Application Services di pilotare il processo senza dover conoscere i dettagli implementativi delle sottoclassi.

====== AnalysisStatus <AnalysisStatus>
#codeDiagram("AnalysisStatus", 15%)

L'enumerativo `AnalysisStatus` definisce l'insieme finito e ordinato degli stati in cui può trovarsi un'analisi.

- *INITIALIZING / PENDING:* Fasi di preparazione e accodamento della richiesta.
- *RUNNING:* Fase attiva di elaborazione (es. clonazione, scansione).
- *COMPLETED / FAILED:* Stati terminali che decretano il successo o l'interruzione del processo per anomalie.

===== AnalysisType <AnalysisType>
#codeDiagram("AnalysisType", 15%)

L'enumerativo `AnalysisType` definisce l'insieme finito ed ordinato dei possibili provider per cui è possibile svolgere una analisi.
====== GitHubAnalysis <GitHubAnalysis>
#codeDiagram("GitHubAnalysis", 100%)

L'entità `GitHubAnalysis` è la specializzazione del dominio dedicata all'audit di sorgenti ospitati su GitHub. Estende la classe astratta #link(<Analysis>)[`Analysis`], ereditandone la macchina a stati e l'identità, e vi aggrega i metadati necessari per la localizzazione e il versionamento del codice.

- *Specializzazione del Contesto:* Integra i Value Object #underline[#link(<RepoURL>)[`RepoURL`]], #underline[#link(<BranchName>)[`BranchName`]] e #underline[#link(<CommitHash>)[`CommitHash`]], trasformando un'analisi generica in un processo contestualizzato e riproducibile su uno specifico stato del repository.
- *Incapsulamento della Creazione:* Attraverso il metodo statico `create()`, l'entità valida la coerenza del comando di input #underline[#link(<AnalysisFactoryCommand>)[(`AnalysisFactoryCommand`)]], garantendo che nessuna istanza di `GitHubAnalysis` possa esistere in uno stato parziale o inconsistente.
- *Contratto di Esecuzione:* Fornisce agli adattatori di infrastruttura (Driven Adapters) tutti i parametri necessari per le operazioni di clonazione e analisi, agendo come unica "fonte di verità" per i dati di accesso al codice sorgente.
- *Relazione di Ereditarietà:* Sfruttando il polimorfismo, permette ai servizi applicativi di gestire il ciclo di vita (start, complete, fail) in modo uniforme, indipendentemente dal fatto che l'analisi sia di tipo GitHub o di altra natura futura.

==== Application Core
===== Command
Un Command è un oggetto di puro trasporto dati (Data Transfer Object) che incapsula tutte le informazioni necessarie per eseguire una specifica operazione di scrittura o una logica di business all'interno dello strato Application. In un'architettura esagonale, i Command rappresentano l'espressione formale di un intento dell'utente volto a modificare lo stato del sistema.

====== AnalysisFactoryCommand <AnalysisFactoryCommand>
#codeDiagram("AnalysisFactoryCommand", 60%)

La classe astratta `AnalysisFactoryCommand` definisce la struttura base e il contratto minimo per tutti i comandi destinati alla creazione di nuove entità di audit. Essa agisce come una radice gerarchica che normalizza i dati comuni, permettendo all'#link(<AnalysisProvider>)[`AnalysisProvider` (Factory)] di operare su un'interfaccia uniforme durante le prime fasi di istanziazione.

- *Generalizzazione del Dominio:* Centralizza gli attributi condivisi, quali l'identificativo dell'utente proprietario (#underline[#link(<UserId>)[`UserId`]]) e il discriminatore di categoria (#underline[#link(<AnalysisType>)[`AnalysisType`]]), riducendo la ridondanza nelle definizioni dei comandi specialistici.
- *Integrità dei Dati Comuni:* Attraverso un costruttore `protected`, impedisce l'istanziazione diretta di comandi generici, obbligando il sistema a utilizzare esclusivamente specializzazioni concrete e complete (come #underline[#link(<GitHubAnalysisCommand>)[`GitHubAnalysisCommand`]]).
- *Discriminazione del Polimorfismo:* L'inclusione esplicita dell'attributo `type` fornisce alla Factory il metadato necessario per determinare quale specifica sottoclasse di `Analysis` debba essere generata, facilitando l'estendibilità verso nuovi motori di analisi.
- *Isolamento della Proprietà:* Garantisce che ogni processo di creazione sia intrinsecamente legato a un #link(<UserId>)[`UserId`], forzando il rispetto dei vincoli di sicurezza e appartenenza dei dati fin dalla fase di trasporto nel layer applicativo.

====== GitHubAnalysisFactoryCommand <GitHubAnalysisCommand>
#codeDiagram("GitHubAnalysisFactoryCommand", 70%)

Il componente `GitHubAnalysisCommand` rappresenta la specializzazione concreta del comando di creazione per il provider GitHub. Estendendo la classe astratta #underline[#link(<AnalysisFactoryCommand>)[`AnalysisFactoryCommand`]], esso aggrega i metadati specifici necessari per inizializzare un'istanza di #link(<GitHubAnalysis>)[`GitHubAnalysis`] attraverso la factory di dominio.

- *Specializzazione del Comando:* Integra i parametri tecnici indispensabili per l'interazione con le API di GitHub, trasformando una richiesta generica in un set di istruzioni contestualizzate (URL del repository, branch e riferimento al commit).
- *Iniezione Automatica del Tipo:* Attraverso la chiamata al costruttore della classe base (`super`), vincola l'operazione al valore #underline[#link(<AnalysisType>)[`AnalysisType.GITHUB`]], garantendo la coerenza del discriminatore durante il processo di dispatching nella factory.
- *Flessibilità di Versione:* Gestisce il parametro `branch` con un valore predefinito (`main`), consentendo al contempo l'override tramite il parametro opzionale `commit` per analisi puntuali su snapshot specifici del codice sorgente.
- *Contratto per la Factory:* Fornisce all'#underline[#link(<AnalysisProvider>)[`AnalysisProvider`]] un oggetto tipizzato e validato sintatticamente, facilitando la creazione dei Value Object di dominio (come #link(<RepoURL>)[`RepoURL` or `BranchName`]) senza ambiguità sui dati di origine.
- *Tracciabilità dell'Identità:* Eredita la gestione del `userId` dalla classe base, assicurando che ogni specifica di analisi GitHub sia nativamente ancorata a un proprietario verificato nel sistema.

==== Service
===== AnalysisProvider <AnalysisProvider>

==== Use Case
===== StartAnalysisUseCase <StartAnalysisUseCase>


== Design Patterns
=== Dependency Injection

=== Factory Pattern
#pagebreak()

=== Account Microservice
#TODO("Inserire introduzione")
==== Domain
Il Dominio rappresenta il nucleo centrale dell'architettura esagonale, dove risiedono esclusivamente la logica di business e le regole vitali del progetto. Questa sezione è progettata per essere totalmente agnostica rispetto alla tecnologia: non possiede alcuna conoscenza di database, protocolli di comunicazione (HTTP/REST) o framework esterni.

L'obiettivo del Domain Core è modellare la realtà del problema attraverso un linguaggio comune (_Ubiquitous Language_), garantendo che ogni operazione sia coerente con le aspettative del business.

- *Isolamento Tecnologico:* Il dominio non importa librerie esterne di infrastruttura. Questo garantisce che la logica rimanga testabile in isolamento e protetta dall'obsolescenza dei framework.
- *Integrità e Validazione:* È responsabilità del dominio impedire la creazione di oggetti inconsistenti. Ogni componente (Value Object o Entity) è un "garante" della propria validità.
- *Espressione delle Regole:* Non è un semplice deposito di dati, ma un insieme di componenti attivi che governano i processi (es. il ciclo di vita di un'analisi).
===== Value Object
I Value Object rappresentano concetti del dominio definiti esclusivamente dai loro attributi. Sono progettati per essere *immutabili*: una volta istanziati, il loro stato non può subire variazioni, garantendo la thread-safety e la stabilità dei riferimenti durante l'intero ciclo di vita della richiesta. L'uguaglianza tra due Value Object è determinata dal valore delle proprietà incapsulate e non dall'identità dell'istanza in memoria.

====== UserIdAccount <UserIdAccount>
#codeDiagram("UserIdAccount", 30%)

L'identificativo `UserIdAccount` costituisce l'atomo di identità dell'utente all'interno del dominio. Esso rappresenta univocamente un registrante nei sistemi di persistenza.

- *Invariante di Formato:* La sua validazione garantisce che l'identificativo sia un UUID formattato correttamente, prevenendo l'introduzione di chiavi primarie invalide o attacchi tramite stringhe malformate.
- *Astrazione della Persistenza:* Disaccoppia la logica di business dall'implementazione fisica della chiave primaria, assicurando che lo strato di dominio comunichi tramite un tipo forte e non attraverso primitive volatili come le stringhe.
- *Prevenzione del Type Mismatch:* Impedisce l'interscambiabilità accidentale con altri identificativi testuali (come ad esempio il #underline[#link(<GithubId>)[`GithubId`]]), prevenendo bug che la normale tipizzazione a stringa non riuscirebbe a intercettare.
- *Comparazione Deterministica:* Semplifica e rende sicura l'uguaglianza tra identificatori tramite un metodo centralizzato, garantendo una risoluzione coerente quando gli utenti vengono ricercati o confrontati.

====== Email <Email>
#codeDiagram("Email", 30%)

L'oggetto `Email` incapsula l'indirizzo di posta elettronica dell'utente, fungendo da identificativo principale per le procedure di autenticazione e recupero credenziali.

- *Validazione Formale Sicura:* Assicura che ogni stringa in ingresso sia conforme allo standard degli indirizzi email tramite pattern matching, prevenendo errori o comportamenti inattesi durante l'invio di notifiche o il login.
- *Normalizzazione del Dato:* Gestisce internamente la pulizia della stringa (conversione in minuscolo e rimozione delle spaziature esterne), garantendo un processo di autenticazione indifferente al maiuscolo/minuscolo e riducendo duplicazioni anomale a database.
- *Invariante di Dominio:* Assicurando che non esistano oggetti `Email` nulli o formattati erroneamente, solleva i servizi applicativi e gli adattatori di persistenza dal dover validare ripetutamente il dato, centralizzando la logica di consistenza.

====== Password <Password>
#codeDiagram("Password", 30%)

L'oggetto `Password` rappresenta una password in chiaro nel momento del suo inserimento. Il dominio garantisce che questa istanza sia temporanea e serva esclusivamente per le fasi di controllo qualitativo e crittografico.

- *Enforcement della Complessità:* Verifica rigorosamente le regole di sicurezza e gli standard industriali (minimo 8 caratteri, presenza di maiuscole, minuscole, numeri e caratteri speciali), rigettando password deboli ancor prima che raggiungano gli strati inferiori.
- *Garanzia di Sicurezza Proattiva:* Centralizza la business rule relativa alla robustezza della password. Un cambiamento alle politiche di sicurezza avverrà unicamente in questo contesto, propagandosi automaticamente in ogni punto del sistema.
- *Limitazione dell'Esposizione:* Essendo un oggetto effimero, il suo scopo principale è transitare in modo controllato verso i servizi di crittografia (per la generazione dell'hash) o di comparazione, impedendone l'accidentale salvataggio in chiaro.

====== PasswordHash <PasswordHash>
#codeDiagram("PasswordHash", 40%)

L'oggetto `PasswordHash` rappresenta la credenziale cifrata salvata in isolamento e persistita nel sistema. L'infrastruttura di dominio non possiede le chiavi in formati leggibili ma esclusivamente la loro traduzione crittografica sicura.

- *Invariante Crittografica:* Assicura attraverso la validazione che la stringa instanziata sia effettivamente un hash compatibile con lo standard `bcrypt` (identificato dal prefisso `$2a$` o `$2b$`), precludendo il salvataggio o l'utilizzo di testi in chiaro nel posto di un hash.
- *Scudo per la Persistenza:* Costituisce l'unica rappresentazione della password ammessa nel modello persistente, certificando allo strato di database che il dato fornito è già stato processato e validato da un servizio crittografico.
- *Confronto Cifrato Sicuro:* Identifica esplicitamente il dominio di competenza per le collisioni e agevola la comunicazione con i servizi di hashing durante le procedure di login per il ricalcolo e confronto dell'hash reale.

====== GithubId <GithubId>
#codeDiagram("GithubId", 30%)

L'oggetto `GithubId` è l'identificativo numerico remoto restituito da GitHub. Rappresenta in modo affidabile e duraturo l'utente nel contesto esplicito di un identity provider esterno.

- *Identificazione Stabile:* Poiché gli username su GitHub possono essere cambiati dagli utenti, questo Value Object incapsula l'Id numerico immutabile, conferendo una stabilità architetturale al legame tra l'account di _Code Guardian_ e il profilo GitHub.
- *Prevenzione del Type Mismatch:* Distingue in modo forte questo identificativo remoto da un ID account generato internamente (es. #underline[#link(<UserIdAccount>)[`UserIdAccount`]]), ostacolando qualsiasi confusione a livello di codice durante l'associazione delle piattaforme.
- *Validazione del Formato Remoto:* Garantisce con espressioni regolari che il valore consista esclusivamente in cifre numeriche (fino a 50) e non sia vuoto, bloccando manipolazioni del dato o corruzioni dall'API remota ancor prima che arrivino al database.

====== PersonalAccessToken <PersonalAccessToken>
#codeDiagram("PersonalAccessToken", 40%)

L'oggetto `PersonalAccessToken` incapsula il token di accesso in chiaro necessario per interagire con le API di GitHub. Nel dominio, questo rappresenta un "segreto di accesso" provvisorio che richiede rigorose ispezioni alla creazione.

- *Validazione Formale Stringente:* Previene la manipolazione o la creazione errata accertandosi che il token rispetti fedelmente gli standard e i pattern crittografici dettati da GitHub (es. presenza del prefisso `ghp_` o `github_pat_`).
- *Confinamento del Token:* Essendo un dato ad altissima sensibilità, la sua natura di tipo forte riduce radicalmente le chance che il token sfugga per errore nei file di log, consentendo nel caso un offuscamento semplificato a livello logging.
- *Filtraggio alla Fonte:* La validazione centralizzata intercetta tempestivamente PAT scaduti (per formato) o fittizi.

====== EncryptedPat <EncryptedPat>
#codeDiagram("EncryptedPat", 40%)

L'oggetto `EncryptedPat` è la rappresentazione sicura del #underline[#link(<PersonalAccessToken>)[`Personal Access Token`]], l'unica formalmente autorizzata a essere salvata nella persistenza del database.

- *Isolamento a Riposo Sicuro:* Garantisce che la persistenza gestisca soltanto testi oscurati serializzati in `Base64`, rendendo inoffensiva l'esposizione o esfiltrazione del DB da parte di attori malevoli.
- *Invariante di Lunghezza e Formato:* Certifica l'output del servizio di crittografia validando che la stringa prodotta rientri nello standard, difendendo il dominio da malfunzionamenti dell'algoritmo matematico.
- *Disaccoppiamento Teorico:* Traccia in maniera esplicita la linea di confine tra un "segreto utilizzabile" (`PersonalAccessToken`) e un "segreto archiviabile" (`EncryptedPat`), innalzando la sicurezza per tipizzazione del dominio.

===== Entity
A differenza dei Value Object, le Entity sono definite dalla loro *identità* persistente nel tempo e non solo dai loro attributi. Un'Entity mantiene la propria individualità anche se i suoi dati interni subiscono variazioni. Esse incapsulano lo stato e il comportamento del business, garantendo che le transizioni di stato avvengano nel rispetto delle regole del dominio.

- *Identità Univoca:* Ogni Entity è associata a un identificatore immutabile che ne permette la distinzione univoca all'interno del sistema.
- *Ciclo di Vita e Stato:* Le Entity possiedono un ciclo di vita (creazione, modifica, archiviazione) e gestiscono attivamente le proprie mutazioni interne attraverso metodi espliciti.
- *Integrità Comportamentale:* Non si limitano a esporre dati (getter/setter), ma offrono metodi che rappresentano azioni di business, assicurando che l'oggetto passi solo attraverso stati validi e coerenti.
