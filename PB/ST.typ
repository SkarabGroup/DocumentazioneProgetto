#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/stDiagramUtil.typ": *

#let versione = "v0.2.0"

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
7. per salvare, tasto destro sul file .plantuml, export in svg e si salverá nella cartella svg
*/


#titlePage("Specifica Tecnica", versione)
#set page(numbering: "1", header: header("Specifica Tecnica"), footer: footer())
#let history = (
  (
    "2026/03/07",
    "0.2.0",
    "Prima strutturazione della sezione tecnologie",
    members.berengan,
    members.suar
  ),
  (
    "2026/03/04",
    "0.1.0",
    "Prima stesura del documento",
    members.suar,
    members.berengan
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

#indiceTabelle()

#pagebreak()

= Introduzione 
Il presente documento descrive l'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-dei-requisiti")[#def("Analisi dei Requisiti")] #TODO("correggere 'Analisi dei Requisiti' in 'Specifica Tecnica' e aggiungere termine da Glossario") relativo al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def("Code Guardian")], commissionato dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def("Var Group")] e realizzato dal gruppo di studenti #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def("Skarab Group")] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

#TODO("Rispettare la struttura introduttiva adottata anche negli altri documenti")

Il progetto ha come obiettivo la realizzazione di un sistema per l'automazione dei processi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] delle vulnerabilità del software. L'architettura si basa sul paradigma degli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] software intelligenti, operanti su repository di codice sorgente. La conformità del sistema è vincolata ai requisiti definiti nel

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario (v1.0.0)]].

== Riferimenti
=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione della Specifica Tecnica:
- *Standard IEEE/ISO/IEC 42010-2022*: International Standard for Software, systems and enterprise--Architecture description \
  #underline(link("https://ieeexplore.ieee.org/document/9938446")) \
  (ultimo accesso: *05/03/2026*)

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Analisi dei Requisiti*: insieme dei requisiti e dei casi d'uso coperti nel Minimum Viable Product. <AdR> \
  #underline(link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")) \
  (versione: *v1.0.0*)

- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. <NdP>\
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")] \
  (versione: *v1.0.0*)

=== Riferimenti Informativi
- *Dispense del Corso di Ingegneria del Software sulla Progettazione*: \
  #underline(link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sulla Dependency Management*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Diagrammi delle Classi*: <ddC> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Dipsense del Corso di Ingegneria del Software sui Diagrammi delle Attività*: <ddA> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Pattern Architetturali*: \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf")) \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sulla Dependency Injection*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf")) \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Model-View Patterns*: \ 
  #underline(link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Creazionali*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Strutturali*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Comportamentali*:  \
  #underline(link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")) \
  (ultimo accesso: *05/03/2026*)
#pagebreak()


= Tecnologie
Il progetto è basato su un insieme di tecnologie attentamente analizzate e scelte dal team SkarabGroup. Le tecnologie in questione sono state selezionate in base a: 
- Capacità di assolvere al proprio compito individualmente
- Semplicità di utilizzo da parte dei membri del team
- Capacità di interazione con le altre tecnologie
- Capacità di modularizzazione del codice sorgente
- Necessità architetturali del progetto
- Necessità #TODO("necessità di cosa?")

La scelta tecnologica è stata fatta in base all'analisi dei requisiti del capitolato. Il capitolato richiede lo sviluppo di una Web App che sia in grado di fare un'analisi approfondita di repository GitHub e non #TODO("Cosa intendi con 'e non'?"), con una particolare attenzione all'analisi di repository private.
Quest'analisi deve comprendere:
- Analisi statica del codice
- Analisi semantica, sintattica e della coerenza della documentazione rispetto al codice
- Errori e falle di sicurezza rispetto allo standard OWASP
Inoltre l'applicazione deve essere sviluppata in modo da poter essere facilmente convertita in uno strumento integrabile nei processi #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#continuous-integration")[#def[CI]]/#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#continuous-deployment")[#def[CD]], e non solo essere un'applicazione di tipo standalone.

Queste tecnologie sono state dunque organizzate e descritte per categoria e ruolo svolto nell'architettura dell'applicazione.\ Le categorie sono le seguenti :
- Linguaggi di programmazione per lo sviluppo del codice sorgente
- Framework per la semplificazione e maggior sicurezza durante lo sviluppo
- Tecnologie per il deployment
- Strumenti di analisi esterni (ad es. Semgrep)
- Modelli di intelligenza artificiale per l'analisi ed il sistema agentico
- Tecnologie per il monitoraggio dei microservizi
#pagebreak()
== Linguaggi di programmazione
#figure(  
  table(
      columns: (1fr, 1fr, 3fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header([*Tecnologia*], [*Versione*], [*Descrizione*]),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => (center, left, center).at(col) + horizon,

    [Python],[3.11.15],[Python è un linguaggio di programmazione open source di tipo interpretato. È uno dei leader per lo sviluppo di agenti di intelligenza artificiale. Alcuni dei migliori framework per lo sviluppo degli agenti IA sono infatti scritti in python. Semplifica la scrittura del codice degli agenti e offre innumerevoli risorse per uno sviluppo che si adatta in base alle necessità dello sviluppatore],
    [TypeScript], [5.9.3], [TypeScript è un linguaggio di programmazione sviluppato da Microsoft che estende JavaScript aggiungendo un sistema di tipizzazione statica. Grazie a funzionalità come tipi espliciti, interfacce, generics e strumenti avanzati di refactoring, facilita la collaborazione tra sviluppatori e la gestione di codebase complessi.],
    [JavaScript], [ECMAScript 2025], [JavaScript è un linguaggio di programmazione ad alto livello utilizzato principalmente per lo sviluppo di applicazioni web lato client. Consente di creare interfacce dinamiche e interattive all’interno delle pagine web, gestendo eventi, manipolazione del DOM e comunicazioni asincrone con servizi backend.
    JavaScript può essere utilizzato anche lato server tramite ambienti di esecuzione come Node.js.],
  ),
  caption: "Linguaggi di programmazione"
)
== Frameworks
#figure(
  table(
      columns: (1fr, 1fr, 3fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header([*Tecnologia*], [*Vesione*], [*Descrizione*]),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => (center, left, center).at(col) + horizon,

    [Strands], [1.26.0], [Strands Agents SDK è un framework per agenti AI autonomi basato su LLM, che fornisce un ciclo di pianificazione, strumenti integrabili e orchestrazione del workflow, permettendo la costruzione di agenti intelligenti estendibili in Python e TypeScript.],
    [Nestjs], [11.1.3], [NestJS è un framework Node.js/TypeScript per costruire applicazioni server‑side strutturate e scalabili. Per maggiori informazioni si consiglia di consultare il #underline(link("https://docs.nestjs.com")[sito ufficiale])]
  ),
  caption: "Frameworks"
)