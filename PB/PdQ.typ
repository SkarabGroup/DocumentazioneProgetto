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
#let versione = "v1.3.0"

#titlePage("Piano di Qualifica", versione)
#set heading(numbering: "1.1.1")
#set page(numbering: "1", header: header("Piano di Qualifica"), footer: footer())
#let history = (
  (
    "2026/04/18",
    "1.3.0",
    "Aggiunta e correzione test di unità e sistema per microservizio di gestione account",
    members.berengan,
    "",
  ),
  (
    "2026/04/19",
    "1.2.0",
    "Aggiornamento Cruscotto di Valutazione",
    members.alice,
    members.suar,
  ),
  (
    "2026/03/11",
    "1.1.0",
    "Correzione numerazione test dopo modifiche AdR per errori segnalati per la RTB",
    members.andrea,
    members.alice,
  ),
  (
    "2026/03/02",
    "1.0.0",
    "Ufficializzazione per RTB",
    "",
    members.suar,
  ),
  (
    "2026/02/26",
    "0.11.0",
    "Aggiunta grafici mancanti",
    members.alice,
    members.suar,
  ),
  (
    "2026/02/25",
    "0.10.0",
    "Aggiunta Test di Unità mancanti",
    members.alice,
    members.suar,
  ),
  (
    "2026/02/06",
    "0.9.0",
    "Test di Accettazione e rielaborazione Test di Sistema",
    members.alice,
    members.suar,
  ),
  (
    "2026/01/27",
    "0.8.1",
    "Aggiunta grafico BV-SV, revisione Metodi di Testing e aggiunta test, modifiche minori al documento",
    members.alice,
    members.suar,
  ),
  (
    "2026/01/22",
    "0.7.0",
    "Grafici CPI-SPI, EAC, RSI e SGA",
    members.alice,
    members.suar,
  ),
  (
    "2026/01/21",
    "0.6.0",
    "Cruscotto di valutazione, grafico PV-AC-EV",
    members.alice,
    members.suar,
  ),
  (
    "2026/01/17",
    "0.5.2",
    "Revisione Automiglioramento",
    members.suar,
    members.alice,
  ),
  (
    "2026/01/13",
    "0.5.1",
    "Rielaborazione introduzione documento e qualità di processo",
    members.suar,
    members.alice,
  ),
  (
    "2025/12/02",
    "0.5.0",
    "Modifica tabelle qualità di processo, inserimento tabelle qualità di prodotto",
    members.alice,
    members.suar,
  ),
  (
    "2025/12/30",
    "0.4.0",
    "Iniziati metodi di testing, inserimento tabelle test",
    members.berengan,
    members.suar,
  ),
  (
    "2025/12/28",
    "0.3.0",
    "Processi secondari e processi organizzativi con tabelle soglie metriche, iniziata sezione automiglioramento e qualità di prodotto",
    members.alice,
    members.suar,
  ),
  (
    "2025/12/27",
    "0.2.0",
    "Qualità di processo, processi primari",
    members.alice,
    members.suar,
  ),
  (
    "2025/12/26",
    "0.1.0",
    "Inizio stesura documento, introduzione, scopo e riferimenti",
    members.alice,
    members.suar,
  ),
  (
    "2025/12/23",
    "0.0.0",
    "Creazione documento",
    members.alice,
    members.suar,
  ),
)

#versionTable(history)

#indice()

#indiceTabelle()

#pagebreak()

= Introduzione

== Contesto del Progetto
Il presente documento descrive il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-qualifica")[#def[Piano di Qualifica]] relativo al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]], commissionato dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def[Var Group]] e realizzato dal team di sviluppo #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

Il progetto ha come obiettivo la realizzazione di un sistema per l'automazione dei processi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] delle vulnerabilità del software. L'architettura si basa sul paradigma degli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] software intelligenti, operanti su repository di codice sorgente. La conformità del sistema è vincolata ai requisiti definiti nel #link(<capitolato>)[#underline[Capitolato *C2*]].

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Finalità del Documento
Il Piano di Qualifica definisce l’impostazione metodologica per la gestione della qualità, specificando come il gruppo intenda prevenire, rilevare e correggere i difetti.

Il documento costituisce il riferimento primario per il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#responsabile")[#def[Responsabile]] e per i #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#verificatori")[#def[Verificatori]], strutturando gli obiettivi nelle seguenti macro-aree:

- *Piano della Qualità (Quality Assurance)*: definizione della strategia di gestione della qualità, identificando gli standard di riferimento (in particolare #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#iso-25010")[#def[ISO/IEC 25010]]), le metriche di misurazione e le relative soglie di accettazione/ottimalità.
- *Controllo di Qualità (Quality Control)*: pianificazione operativa delle attività di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#verifica")[#def[Verifica]] (analisi statica, test dinamici) per garantire la correttezza tecnica degli artefatti prodotti.
- *Validazione di Prodotto*: definizione delle procedure necessarie per accertare che il sistema soddisfi i bisogni effettivi degli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#stakeholder")[#def[Stakeholder]] e i requisiti del capitolato.
- *Miglioramento Continuo*: applicazione di meccanismi retroattivi (basati sul ciclo #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#pdca")[#def[Plan-Do-Check-Act]]) che utilizzano i risultati delle misurazioni per ottimizzare i processi e il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#way-of-working")[*#def[Way of Working]*] in corso d'opera.

== Traguardi Qualitativi
L'assicurazione della qualità segue l'approccio incrementale del progetto, fissando obiettivi specifici per le due principali milestone:

=== Revisione dei Requisiti e della Tecnologia (RTB)
Per la milestone RTB (*25/02/2026*), le attività di qualità si concentrano sulla correttezza formale e sulla fattibilità tecnica:
- *Qualità dei Documenti*: Verifica approfondita della documentazione (Analisi dei Requisiti, PdP, NdP) tramite analisi statica e walkthrough, per garantire assenza di ambiguità e coerenza interna (Indice di Gulpease).
- *Qualità del Prototipo (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#proof-of-concept")[#def[PoC]])*: L'attività di verifica è focalizzata esclusivamente sulla *dimostrazione della fattibilità tecnica* (Technology Baseline), con particolare attenzione all'interazione Agenti-LLM. Il testing in questa fase ha valore _sperimentale e propedeutico_: esso funge da caso di studio per calibrare le metriche e validare le strategie di verifica che saranno poi applicate in modo sistematico ed estensivo sul #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#minimum-viable-product")[#def[MVP]].

=== Revisione di Accettazione (Product Baseline – PB)
Per il rilascio finale (*15/04/2026*), il focus si sposta sulla robustezza, sulla copertura e sulla soddisfazione dei requisiti:
- *Qualità del Prodotto (MVP)*: Esecuzione completa dei test di unità, integrazione e sistema. Validazione finale rispetto ai requisiti funzionali e prestazionali del capitolato.
- *Qualità del Codice*: Rispetto dei vincoli di stile, assenza di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-smell")[*#def[code smells]*] e raggiungimento delle soglie di copertura del codice #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-coverage")[#def[Code Coverage]] definite nel presente piano.
- *Validazione Utente*: Verifica dell'usabilità tramite test di accettazione (UAT) basati sui casi d'uso principali.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario (v1.0.0)]].

== Riferimenti

=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la definizione delle strategie di qualità e per le attività di verifica:
- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> #linebreak()
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *18/04/2026*)

- *Norme di Progetto*: Il documento definisce il "Way of Working", stabilendo gli strumenti e le procedure che questo Piano si occupa di misurare. <NdP> #linebreak()
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/NdP.pdf")] \
  (versione: *v2.0.0*)

=== Riferimenti Informativi
- *ISO/IEC 25010:2011*: Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE). <25010> #linebreak()
  #underline[#link("https://iso25000.com/index.php/en/iso-25000-standards/iso-25010")] \
  (ultimo accesso: *18/04/2026*)

- *ISO/IEC 12207:2008*: Systems and software engineering — Software life cycle processes. <12207> #linebreak()
  #underline[#link("https://ieeexplore.ieee.org/document/4475826")] \
  (ultimo accesso: *18/04/2026*)

- *Dispense del corso di Ingegneria del Software – Qualità del software* <dispense_qualità> #linebreak()
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T07.pdf")] \
  (ultimo accesso: *18/04/2026*)

#pagebreak()
= Qualità di Processo

La garanzia della qualità del prodotto finale è intrinsecamente legata alla qualità dei processi produttivi che lo generano. Per il progetto _Code Guardian_, la gestione dei processi mira a rendere il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#way-of-working")[#def("Way of Working")] sostenibile, tracciabile e soggetto a miglioramento continuo attraverso l'applicazione del ciclo PDCA.

== Centralizzazione delle Metriche e Obiettivi

Il presente documento costituisce il riferimento unico e autoritativo per la gestione della qualità del progetto Code Guardian. Il Piano di Qualifica centralizza la 'scienza della misurazione' del gruppo, definendo rigorosamente i criteri analitici, le metriche e le soglie necessarie per garantire la conformità degli artefatti agli standard prefissati.

In particolare, ogni metrica qui esposta è corredata da:
- *Identificativo univoco:* (MPC per il processo, MPD per il prodotto);
- *Formulazione matematica:* Per garantire l'oggettività del calcolo;
- *Soglie di Valutazione:* Distinte in "Accettabilità" (requisito minimo per la validazione) e "Ottimalità" (target di eccellenza desiderato).

Ogni scostamento rilevato tra i valori misurati e le soglie qui definite viene analizzato durante le retrospettive di fine #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sprint")[#def("Sprint")]. Tali evidenze costituiscono la base oggettiva per l'attivazione di azioni correttive o per la ricalibrazione delle soglie stesse, garantendo che il processo di qualità evolva insieme alla maturità del team.

#pagebreak()
=== Processi Primari: Fornitura e Sviluppo
Questi processi definiscono le attività core per la realizzazione del software. Il monitoraggio si focalizza sul rispetto dei vincoli di tempo e budget (tramite la metodologia EVM) e sulla gestione rigorosa dell'ambito di progetto.

#metrics_table(
  [Soglie metriche per il processo di Fornitura (EVM)],
  (
    // Misure Base
    [*MPC01*],
    [Budget at Completion (BAC)],
    [Preventivo],
    [Preventivo],
    [Preventivo],
    [*MPC02*],
    [Planned Value (PV)],
    [$P V$],
    [$>= 0$],
    [Da Piano],
    [*MPC03*],
    [Actual Cost (AC)],
    [$A C$],
    [$<= E A C$],
    [$<= E V$],
    [*MPC04*],
    [Earned Value (EV)],
    [$E V$],
    [$>= 90% P V$],
    [$>= P V$], // Calibrata tolleranza per ritardi fisiologici
    [*MPC05*],
    [Budget Variance (BV)],
    [$B V = B A C - E A C$],
    [$>= 0$],
    [$> 0$],
    [*MPC06*],
    [Schedule Variance (SV)],
    [$S V = E V - P V$],
    [$> -10% "BAC"$],
    [$>= 0$],
    [*MPC07*],
    [Cost Performance Index (CPI)],
    [$C P I = (E V) / (A C)$],
    [$0.90 <= v <= 1.10$],
    [$1.00$],
    [*MPC08*],
    [Schedule Performance Index (SPI)],
    [$S P I = (E V) / (P V)$],
    [$0.90 <= v <= 1.10$],
    [$1.00$],
    [*MPC09*],
    [Estimate at Completion (EAC)],
    [$E A C = (B A C) / (C P I)$],
    [$<= B A C + 5%$],
    [$<= B A C$],
  ),
)

Il monitoraggio della stabilità dei requisiti è cruciale per prevenire lo *scope creep*, specialmente a seguito delle revisioni correttive post-S2.

#metrics_table(
  [Soglie metriche per il processo di Sviluppo],
  (
    [*MPC10*],
    [Requirements Stability Index],
    [$R S I = (R_"tot" - Delta R) / R_"tot" times 100$],
    [$>= 75%$],
    [100%], // Abbassato leggermente per accomodare il refactoring dei requisiti
  ),
)

=== Processi di Supporto
I processi di supporto garantiscono l'integrità e la verificabilità degli artefatti. La leggibilità della documentazione (Indice di Gulpease) e la copertura dei test sono i parametri cardine per assicurare la manutenibilità futura.

#metrics_table(
  [Soglie metriche Documentazione e Verifica],
  (
    [*MPC11*],
    [Gulpease Index],
    [$89 + (300(L_f) - 10(L_p)) / (F_p)$],
    [$>= 40$],
    [$>= 60$],
    [*MPC12*],
    [Correttezza Ortografica],
    [Errori segnalati],
    [0],
    [0],
    [*MPC13*],
    [Code Coverage],
    [$("Linee coperte") / ("Linee totali") times 100$],
    [$>= 70%$],
    [$>= 80%$],
    [*MPC14*],
    [Test Success Rate],
    [$("Passati") / ("Eseguiti") times 100$],
    [100%],
    [100%],
  ),
)

=== Processi Organizzativi
Misurano l'efficienza interna del team Skarab Group nell'auto-organizzarsi e nel rispettare gli impegni presi durante gli Sprint.

#metrics_table(
  [Soglie metriche Organizzative],
  (
    [*MPC15*],
    [Metrics Satisfaction],
    [$("Metriche OK") / ("Metriche Tot") times 100$],
    [$>= 90%$],
    [100%],
    [*MPC16*],
    [Sprint Goal Achievement],
    [$("Completati") / ("Pianificati") times 100$],
    [$>= 80%$],
    [100%],
  ),
)

#pagebreak()

= Qualità di Prodotto

La qualità di prodotto valuta il software consegnato rispetto ai requisiti e alle caratteristiche intrinseche definite dallo standard ISO/IEC 25010.

== Adeguatezza Funzionale e Affidabilità
Si misura la capacità del sistema di svolgere i compiti richiesti e di rimanere operativo senza guasti critici, parametro fondamentale per un tool di audit.

#metrics_table(
  [Metriche Adeguatezza e Affidabilità],
  (
    [*MPD01*],
    [Copertura Req. Obbligatori],
    [$frac("Soddisfatti", "Totale Obbl.") times 100$],
    [100%],
    [100%],
    [*MPD02*],
    [Failure Density],
    [$frac("N. guasti", "KLOC")$],
    [$<= 0.5$],
    [0],
    [*MPD03*],
    [Availability],
    [$frac("Tempo Up", "Tempo Tot") times 100$],
    [$>= 98%$],
    [$>= 99.9%$],
  ),
)

== Manutenibilità e Sicurezza
Data la natura del progetto Code Guardian, queste metriche rappresentano il valore distintivo del prodotto. Un codice manutenibile e privo di vulnerabilità è condizione necessaria per l'accettazione.

#metrics_table(
  [Metriche Manutenibilità e Sicurezza],
  (
    [*MPD04*],
    [Comment Density],
    [$frac("Linee commento", "Linee codice") times 100$],
    [$>= 15%$],
    [$20% - 25%$], // Ottimale ridotto per favorire il Clean Code
    [*MPD05*],
    [Cyclomatic Complexity],
    [$V(G)$],
    [$<= 15$],
    [$<= 10$],
    [*MPD06*],
    [Coupling (Fan-out)],
    [Dipendenze esterne],
    [$<= 6$],
    [$<= 3$],
    [*MPD07*],
    [Vulnerability Detection],
    [N. vulnerabilità critiche],
    [0],
    [0],
  ),
)
#pagebreak()

= Strategie di Testing
Il processo di testing rappresenta una fase cruciale nello sviluppo del prodotto _CodeGuardian_.

Skarab Group ha adottato un approccio di testing multilivello che copre:

- *Test di Sistema*.
- *Test di Unità*.
- *Test di Accettazione*.
- *Test di Regressione*.
- *Test di Integrazione*.

La definizione dei test e la nomenclatura utilizzata sono presenti all'interno delle #link("https://skarabgroup.github.io/DocumentazioneProgetto/PB/NdP.pdf")[#underline[*Norme di Progetto*]], alla sezione *2.1.9.3.5*. // inserire sezione
I Test di Regressione e i Test di Integrazione, qui non presenti, verranno identificati durante lo svolgimento delle attività per la _Product Baseline_ (PB).

== Test di Sistema
#let passed = table.cell(fill: rgb("#D6F0D4"))[*Superato*]
#let pending = table.cell(fill: rgb("#FFF3CC"))[*In attesa*]
#let not_implemented = table.cell(fill: rgb("#F0D6D6"))[*Non implementato*]

#show figure: set block(breakable: true)
#figure(
  block(
    breakable: true,
    table(
      fill: (x, y) => if (y == 0) { luma(63.75%) } else if (calc.gcd(y, 2) == 2) { luma(220) },
      columns: (1.2fr, 3.5fr, 1fr, 1.2fr),
      inset: 10pt,
      align: horizon,
      table.header([*ID PdQ*], [*Descrizione*], [*UC*], [*Stato*]),

      // --- REGISTRAZIONE (UC1) ---
      [TS-1],
      [Verificare la corretta creazione di un account CodeGuardian a seguito dell'inserimento di dati validi.],
      [UC1],
      passed,

      [TS-1.1],
      [Verificare la validazione dello username rispetto ai vincoli di formato (alfanumerico, 4-20 caratteri).],
      [UC1.1.1],
      passed,

      [TS-1.2],
      [Verificare l'inibizione della registrazione in caso di username già associato a un account esistente.],
      [UC1.1.2],
      passed,

      [TS-1.3],
      [Verificare la validazione sintattica dell'indirizzo email secondo gli standard previsti.],
      [UC1.2.1],
      passed,

      [TS-1.4],
      [Verificare l'inibizione della registrazione in caso di email già associata a un account esistente.],
      [UC1.2.2],
      passed,

      [TS-1.5],
      [Verificare la validazione della password rispetto ai criteri di complessità (sicurezza).],
      [UC1.3.1],
      passed,

      [TS-1.6],
      [Verificare la segnalazione di errore in caso di invio del modulo con campi obbligatori vuoti.],
      [UC1.0.1],
      passed,

      // --- AUTENTICAZIONE (UC2) ---
      [TS-2],
      [Verificare l'accesso alle funzionalità riservate tramite inserimento di credenziali corrette.],
      [UC2],
      passed,

      [TS-2.1], [Verificare la validazione del formato delle credenziali in fase di login.], [UC2], passed,
      [TS-2.2], [Verificare la segnalazione di errore per identificativo non presente a sistema.], [UC2.0.2], passed,

      [TS-2.3],
      [Verificare la segnalazione di errore in caso di password non corrispondente all'identificativo fornito.],
      [UC2.0.2],
      passed,

      [TS-2.4], [Verificare l'inibizione dell'accesso in caso di modulo di login incompleto.], [UC2.0.1], passed,

      // --- RICHIESTE DI ANALISI (UC4) ---
      [TS-4],
      [Verificare la corretta presa in carico di una richiesta di analisi per un repository GitHub.],
      [UC4],
      passed,

      [TS-4.1],
      [Verificare la segnalazione dell'informativa se l'analisi risulta già aggiornata rispetto ai dati remoti.],
      [UC4.0.1],
      passed,

      [TS-4.3],
      [Verificare l'inibizione della richiesta se non viene selezionata almeno un'area di interesse.],
      [UC4.1.1],
      passed,

      // --- VISUALIZZAZIONE LISTA (UC5) ---
      [TS-5],
      [Verificare la navigazione e la corretta visualizzazione dell'elenco dei repository analizzati.],
      [UC5],
      passed,

      [TS-5.2],
      [Verificare l'inibizione del rendering e la notifica di errore qualora i servizi di persistenza non siano raggiungibili.],
      [UC5.0.2],
      passed,

      // --- VISUALIZZAZIONE REPORT (UC6) ---
      [TS-6],
      [Verificare il caricamento della dashboard di dettaglio a seguito della selezione di un report.],
      [UC6],
      passed,

      [TS-6.1],
      [Verificare l'aggiornamento dinamico delle sezioni visibili tramite i filtri (Codice, Sicurezza, Doc.).],
      [UC6.1],
      passed,

      [TS-6.2],
      [Verificare l'inibizione del rendering e la notifica se non viene selezionata alcuna area.],
      [UC6.1.1],
      passed,

      [TS-6.3],
      [Verificare l'esposizione corretta dei metadati di audit (timestamp, hash commit, richiedente).],
      [UC6.2.1, UC6.2.2],
      passed,

      [TS-6.4],
      [Verificare la visualizzazione del messaggio di assenza di criticità se non vi sono remediation.],
      [UC6.3.1.1],
      passed,

      // --- CONFRONTO STORICO (UC7) ---
      [TS-7],
      [Verificare la generazione della vista comparativa previo inserimento di un intervallo valido.],
      [UC7],
      passed,

      [TS-7.1],
      [Verificare la segnalazione di errore in caso di invio con campi temporali incompleti.],
      [UC7.0.1],
      passed,

      [TS-7.2],
      [Verificare la segnalazione di assenza dati se non vi sono report nel periodo scelto.],
      [UC7.0.2],
      passed,

      [TS-7.3],
      [Verificare la segnalazione di errore in caso di data inizio successiva alla data fine.],
      [UC7.0.3],
      passed,

      [TS-7.4],
      [Verificare l'inibizione della richiesta se l'intervallo supera l'ampiezza massima (12 mesi).],
      [UC7.0.4],
      passed,

      // --- METRICHE COMPARATIVE (UC8) ---
      [TS-8],
      [Verificare la corretta generazione dei grafici di andamento e della tabella comparativa.],
      [UC8],
      passed,

      [TS-8.1],
      [Verificare l'esposizione dei dati puntuali all'interazione (click/hover) con il grafico.],
      [UC8],
      passed,

      [TS-8.2], [Verificare il calcolo e la visualizzazione degli indicatori di trend in tabella.], [UC8], passed,

      // --- ANALISI DEL CODICE (UC9) ---
      [TS-9.1],
      [Verificare l'esposizione dei rilievi di analisi statica (bug, smell, vulnerabilità).],
      [UC9.1],
      passed,

      [TS-9.2], [Verificare la visualizzazione delle metriche di copertura dei test di unità.], [UC9.2], passed,
      [TS-9.3],
      [Verificare la visualizzazione dell'informativa di esito positivo per l'area codice.],
      [UC9.3.1],
      passed,

      // --- ANALISI SICUREZZA (UC10) ---
      [TS-10.1],
      [Verificare l'esposizione delle vulnerabilità delle librerie e conformità OWASP.],
      [UC10.1, UC10.2],
      passed,

      [TS-10.2],
      [Verificare la visualizzazione dell'informativa di assenza criticità di sicurezza.],
      [UC10.3.1],
      passed,

      // --- ANALISI DOCUMENTAZIONE (UC11) ---
      [TS-11.1],
      [Verificare la visualizzazione degli errori sintattici e della completezza documentale.],
      [UC11.1, UC11.2],
      passed,

      [TS-11.2],
      [Verificare la visualizzazione dell'informativa di assenza criticità documentali.],
      [UC11.3.1],
      passed,

      // --- RANKING (UC12) ---
      [TS-12],
      [Verificare la generazione della graduatoria ordinata per punteggio di qualità globale.],
      [UC12],
      passed,

      [TS-12.1],
      [Verificare la segnalazione di assenza dati se l'utente non ha mai effettuato analisi.],
      [UC12.1],
      passed,

      // --- ESPORTAZIONE (UC14) ---
      [TS-14],
      [Verificare il corretto download del report nel formato selezionato (PDF/JSON).],
      [UC14, UC14.2],
      passed,

      [TS-14.1],
      [Verificare la segnalazione di errore se l'utente non seleziona alcun formato.],
      [UC14.1.1],
      passed,

      // --- MODIFICA PASSWORD (UC15) ---
      [TS-15.1], [Verificare la segnalazione di errore in caso di password corrente omessa.], [UC15.1.1], passed,

      [TS-15.2], [Verificare la segnalazione di errore in caso di password corrente errata.], [UC15.1.2], passed,

      [TS-15.3],
      [Verificare la segnalazione di errore se la nuova password è assente o non conforme.],
      [UC15.2.1, UC15.2.2],
      passed,

      [TS-15.4],
      [Verificare la segnalazione di errore se la nuova password coincide con la precedente.],
      [UC15.2.3],
      passed,

      [TS-15.5], [Verificare la corretta persistenza e la notifica di successo post-modifica.], [UC15.3], passed,

      // --- VISUALIZZAZIONE SINGOLA REMEDIATION GENERICA (UC16) ---
      [TS-16], [Verificare la corretta visualizzazione dei dettagli di una remediation selezionata.], [UC16], not_implemented,

      // --- VERIFICA ACCESSIBILITÀ REPOSITORY (UC17) ---
      [TS-17],
      [Verificare che l'Orchestratore verifichi con successo l'accessibilità di un repository pubblico tramite le API GitHub.],
      [UC17],
      passed,

      [TS-17.1], [Verificare la gestione dell'errore di comunicazione con GitHub.], [UC17.0.1], passed,
      [TS-17.2],
      [Verificare che l'Orchestratore tenti l'accesso tramite credenziali in caso di repository privato.],
      [UC17.1],
      passed,

      [TS-17.3],
      [Verificare che l'Orchestratore annulli l'audit se tutti i metodi di accesso falliscono.],
      [UC17.1.1],
      passed,

      // --- ACCETTAZIONE/RIFIUTO REMEDIATION GENERICA (UC18/UC19) ---
      [TS-18], [Verificare che l'Utente Avanzato possa accettare una singola remediation.], [UC18], not_implemented,
      [TS-19], [Verificare che l'Utente Avanzato possa rifiutare una singola remediation.], [UC19], not_implemented,

      // --- CREAZIONE RACCOLTA REPORT (UC20) ---
      [TS-20],
      [Verificare la corretta creazione di una raccolta di report a seguito dell'inserimento di nome e URL validi.],
      [UC20],
      passed,

      [TS-20.1],
      [Verificare la segnalazione di errore in caso di tentativo di conferma con campi obbligatori non popolati.],
      [UC20.0.1],
      passed,

      [TS-20.2],
      [Verificare la corretta acquisizione del nome identificativo della raccolta nel campo dedicato.],
      [UC20.1],
      passed,

      [TS-20.3],
      [Verificare la segnalazione di errore in caso di nome raccolta non conforme ai vincoli alfanumerici.],
      [UC20.1.1],
      passed,

      [TS-20.4],
      [Verificare la corretta acquisizione dell'URL del repository GitHub nel campo dedicato.],
      [UC20.2],
      passed,

      [TS-20.5],
      [Verificare la segnalazione di errore in caso di URL sintatticamente non valido.],
      [UC20.2.1],
      passed,

      [TS-20.6],
      [Verificare la segnalazione di errore in caso di repository non accessibile.],
      [UC20.2.2],
      passed,

      [TS-20.7],
      [Verificare la segnalazione di errore in caso di campo URL non popolato al momento della conferma.],
      [UC20.2.3],
      passed,

      [TS-20.8], [Verificare la corretta acquisizione della descrizione della raccolta.], [UC20.3], passed,

      // --- AVVIO ANALISI (UC21) ---
      [TS-21],
      [Verificare che l'Orchestratore avvii le richieste verso tutti gli strumenti esterni.],
      [UC21],
      passed,

      [TS-21.1], [Verificare la corretta clonazione del repository nell'ambiente AWS.], [UC21.1], passed,
      [TS-21.2],
      [Verificare che l'Orchestratore interrompa il processo in caso di errore durante la clonazione.],
      [UC21.1.1],
      passed,

      [TS-21.3],
      [Verificare che l'Orchestratore inoltri i file allo strumento di analisi del codice.],
      [UC21.2],
      passed,

      [TS-21.4],
      [Verificare che l'Orchestratore inoltri i file allo strumento di analisi documentale.],
      [UC21.3],
      passed,

      [TS-21.5],
      [Verificare che l'Orchestratore inoltri la codebase allo strumento di analisi della sicurezza.],
      [UC21.4],
      passed,

      // --- PERSISTENZA STATO ANALISI E RECUPERO (UC22 - UC26) ---
      [TS-22],
      [Verificare che lo stato dell'analisi venga registrato correttamente come “pending” nella persistenza.],
      [UC22],
      passed,

      [TS-22.1],
      [Verificare che, in caso di errore critico nella scrittura dello stato, l'Orchestratore notifichi l'utente.],
      [UC22.0.1],
      passed,

      [TS-23],
      [Verificare che l'Orchestratore recuperi correttamente i risultati al completamento delle analisi.],
      [UC23],
      passed,

      [TS-23.1],
      [Verificare che il sistema proceda con i soli dati disponibili in caso di risultati parziali.],
      [UC23.0.1],
      passed,

      [TS-23.2],
      [Verificare il corretto controllo periodico dello stato delle attività degli strumenti.],
      [UC23.1],
      passed,

      [TS-23.3], [Verificare che i file dei risultati vengano acquisiti e validati.], [UC23.2], passed,
      [TS-24],
      [Verificare la corretta aggregazione dei dati provenienti dai diversi strumenti in un unico report.],
      [UC24],
      passed,

      [TS-24.1], [Verificare che il report venga validato prima del salvataggio.], [UC24], passed,
      [TS-25], [Verificare che il report finale venga archiviato permanentemente.], [UC25], passed,
      [TS-25.1],
      [Verificare la notifica di errore all'utente in caso di fallimento del salvataggio del report.],
      [UC25.0.1],
      passed,

      [TS-26], [Verificare l'invio della notifica di completamento dell'analisi del repository.], [UC26], passed,
      [TS-26.1],
      [Verificare che il fallimento della notifica venga registrato nei log interni.],
      [UC26.0.1],
      passed,

      // --- VISUALIZZAZIONE INFORMAZIONI REPOSITORY (UC27) ---
      [TS-27],
      [Verificare l'esposizione delle informazioni identificative del repository selezionato.],
      [UC27],
      passed,

      // --- CANCELLAZIONE PROFILO (UC28) ---
      [TS-28],
      [Verificare la corretta cancellazione del profilo a seguito della verifica dell'identità tramite password.],
      [UC28, UC28.1],
      passed,

      [TS-28.1],
      [Verificare che a seguito della cancellazione vengano rimossi i dati personali e credenziali invalide.],
      [UC28.1],
      passed,

      // --- VISUALIZZAZIONE REMEDIATION SPECIFICHE (UC30, UC31, UC32) ---
      [TS-30],
      [Verificare la corretta visualizzazione del dettaglio di una singola remediation dell'area codice.],
      [UC30],
      not_implemented,

      [TS-31],
      [Verificare la corretta visualizzazione del dettaglio di una singola remediation dell'area sicurezza.],
      [UC31],
      not_implemented,

      [TS-32],
      [Verificare la corretta visualizzazione del dettaglio di una singola remediation dell'area documentazione.],
      [UC32],
      not_implemented,

      // --- ACCETTAZIONE/RIFIUTO REMEDIATION SPECIFICHE (UC33 - UC38) ---
      [TS-33],
      [Verificare l'applicazione della remediation del codice e l'aggiornamento dello stato a “eseguita”.],
      [UC33],
      not_implemented,

      [TS-33.1],
      [Verificare la notifica di fallimento all'utente in caso di errore durante l'applicazione.],
      [UC33.0.1],
      not_implemented,

      [TS-34],
      [Verificare che il rifiuto di una remediation del codice aggiorni lo stato a “rifiutata”.],
      [UC34],
      not_implemented,

      [TS-35],
      [Verificare l'applicazione delle patch di sicurezza e l'aggiornamento dello stato a “eseguita”.],
      [UC35],
      not_implemented,

      [TS-35.1],
      [Verificare la notifica di fallimento all'utente in caso di errore durante l'applicazione (sicurezza).],
      [UC35.0.1],
      not_implemented,

      [TS-36],
      [Verificare che il rifiuto di una remediation di sicurezza aggiorni lo stato a “rifiutata”.],
      [UC36],
      not_implemented,

      [TS-37],
      [Verificare l'applicazione delle modifiche documentali e l'aggiornamento dello stato a “eseguita”.],
      [UC37],
      not_implemented,

      [TS-37.1],
      [Verificare la notifica di fallimento all'utente in caso di errore durante l'applicazione (doc).],
      [UC37.0.1],
      not_implemented,

      [TS-38],
      [Verificare che il rifiuto di una remediation documentale aggiorni lo stato a “rifiutata”.],
      [UC38],
      not_implemented,

      // --- GESTIONE REPOSITORY PRIVATI E RACCOLTE (UC39 - UC46) ---
      [TS-39],
      [Verificare la corretta presa in carico di una richiesta di analisi per un repository privato.],
      [UC39],
      passed,

      [TS-40],
      [Verificare il corretto inserimento di un repository privato nel catalogo personale.],
      [UC40],
      passed,

      [TS-40.1],
      [Verificare la segnalazione di duplicazione in caso di inserimento di un URL già presente.],
      [UC40.0.1],
      passed,

      [TS-41],
      [Verificare la corretta visualizzazione del catalogo dei repository privati inseriti.],
      [UC41],
      passed,

      [TS-41.1],
      [Verificare la visualizzazione dell'informativa specifica quando il catalogo privato risulta vuoto.],
      [UC41.0.1],
      passed,

      [TS-42],
      [Verificare la corretta rimozione di un repository dal catalogo privato previa conferma esplicita.],
      [UC42, UC42.1],
      passed,

      [TS-42.1],
      [Verificare che l'annullamento della rimozione mantenga intatto il catalogo privato.],
      [UC42.1.1],
      passed,

      [TS-43],
      [Verificare la corretta visualizzazione dell'elenco dei profili autorizzati per un repository privato.],
      [UC43],
      not_implemented,

      [TS-43.1],
      [Verificare la visualizzazione dell'informativa di assenza utenti autorizzati quando la lista è vuota.],
      [UC43.0.1],
      not_implemented,

      [TS-44],
      [Verificare la corretta aggiunta di un utente autorizzato tramite username o email.],
      [UC44, UC44.1],
      not_implemented,

      [TS-44.1],
      [Verificare la segnalazione di errore per formato non valido, utente inesistente o campo vuoto.],
      [UC44.1.1, UC44.1.2],
      passed,

      [TS-45],
      [Verificare la corretta revoca dei permessi di consultazione per un utente precedentemente autorizzato.],
      [UC45, UC45.1],
      not_implemented,

      [TS-46],
      [Verificare la corretta rimozione di una raccolta di report senza che i singoli report vengano eliminati.],
      [UC46, UC46.1],
      passed,

      [TS-46.1],
      [Verificare che l'annullamento dell'operazione mantenga intatta la raccolta nel profilo utente.],
      [UC46.1.1],
      passed,
    ),
  ),
  caption: [Tabella dei Test di Sistema],
  kind: table,
  supplement: [Table],
)

#pagebreak()

== Test di Unità
#figure(
  block(
    breakable: true,
    table(
      fill: (x, y) => if (y == 0) { luma(63.75%) } else if (calc.gcd(y, 2) == 2) { luma(220) },
      columns: (1fr, 1fr, 3fr, 2.5fr, 1fr),
      inset: 10pt,
      align: horizon,
      table.header([*ID PdQ*], [*Req.*], [*Descrizione Test*], [*Risultato Atteso*], [*Stato*]),

      // --- REGISTRAZIONE (UC1) ---
      [TU-1.1],
      [FROb1],
      [Verifica rendering del componente di creazione account.],
      [Caricamento corretto del modulo di registrazione.],
      passed,

      [TU-1.2],
      [FROb2],
      [Verifica predisposizione comando di conferma nel modulo.],
      [Pulsante di conferma presente e funzionante.],
      passed,

      [TU-1.3],
      [FROb3],
      [Verifica esecuzione della validazione completa di tutti i campi obbligatori all'invio.],
      [Tutti i controlli vengono eseguiti prima di procedere.],
      passed,

      [TU-1.4],
      [FROb4],
      [Verifica che la finalizzazione sia consentita solo dopo validazione positiva.],
      [Blocco della procedura in caso di parametri non validi.],
      passed,

      [TU-1.5],
      [FROb5],
      [Verifica logica di persistenza dei dati utente nel DB.],
      [Le credenziali vengono scritte correttamente nel database.],
      passed,

      [TU-1.6],
      [FROb6],
      [Verifica della funzione di hashing: algoritmo sicuro + salt univoco.],
      [La password non è leggibile; l'hash prodotto è coerente.],
      passed,

      [TU-1.7],
      [FROb7],
      [Verifica atomicità della registrazione.],
      [Nessun record parziale viene mantenuto nel database.],
      passed,

      [TU-1.8],
      [FROb8],
      [Verifica visualizzazione messaggio di conferma avvenuta creazione account.],
      [Messaggio di conferma mostrato.],
      passed,

      [TU-1.9],
      [FROb9],
      [Controllo rilevamento campi obbligatori vuoti (null check).],
      [Rilevamento campi vuoti nel modulo di registrazione.],
      passed,

      [TU-1.10],
      [FROb10],
      [Verifica logica di inibizione e notifica per campi mancanti.],
      [Impossibilità di procedere; messaggio specifico per campo.],
      passed,

      [TU-1.11],
      [FROb11],
      [Verifica input username: vincoli alfanumerici e lunghezza (4-20).],
      [Rifiuto di stringhe < 4 o > 20 caratteri.],
      passed,

      [TU-1.12],
      [FROb12],
      [Query di verifica unicità dello username nel database.],
      [Identificazione di collisioni con account già esistenti.],
      pending,

      [TU-1.13],
      [FROb13],
      [Verifica vincolo di unicità lato persistenza su username.],
      [Il sistema rileva la duplicazione e annulla la registrazione.],
      pending,

      [TU-1.14],
      [FROb14],
      [Verifica notifica username già in uso a seguito di violazione unicità.],
      [Feedback visivo immediato per username non disponibile.],
      pending,

      [TU-1.15],
      [FROb15],
      [Verifica inibizione e trigger notifica errore formato username non conforme.],
      [Comparsa del messaggio di errore; procedura inibita.],
      passed,

      [TU-1.16],
      [FROb16],
      [Verifica input email e validazione sintattica secondo standard RFC.],
      [Accettazione di formati standard (user\@domain.ext).],
      passed,

      [TU-1.17],
      [FROb17],
      [Verifica rifiuto di email con spazi o prive del carattere “\@”.],
      [Email malformate rifiutate con messaggio di errore.],
      passed,

      [TU-1.18],
      [FROb18],
      [Query di verifica unicità email nel database.],
      [Identificazione di email già associate ad altri profili.],
      passed,

      [TU-1.19],
      [FROb19],
      [Verifica vincolo di unicità lato persistenza su email.],
      [Il sistema impedisce registrazioni duplicate.],
      passed,

      [TU-1.20],
      [FROb20],
      [Verifica trigger notifica errore email non valida o già registrata.],
      [Messaggio di errore per email duplicata o malformata.],
      passed,

      [TU-1.21],
      [FROb21],
      [Verifica requisito lunghezza password (minimo 8 caratteri).],
      [Password con meno di 8 caratteri rifiutate.],
      passed,

      [TU-1.22],
      [FROb22],
      [Verifica requisiti complessità password.],
      [Validazione positiva solo se tutti i criteri sono soddisfatti.],
      passed,

      [TU-1.23],
      [FROb23],
      [Verifica rifiuto password coincidente o contenente lo username.],
      [Password che contengono lo username come sottostringa rifiutate.],
      passed,

      [TU-1.24],
      [FROb24],
      [Verifica trigger notifica errore password non conforme ai requisiti.],
      [Elenco puntuale dei criteri non rispettati.],
      passed,

      // --- AUTENTICAZIONE (UC2) ---
      [TU-2.1],
      [FROb25],
      [Verifica rendering pagina di Login.],
      [Visualizzazione corretto del form di autenticazione.],
      passed,

      [TU-2.2],
      [FROb26],
      [Verifica predisposizione comando di conferma per il login.],
      [Pulsante di conferma presente e funzionante.],
      passed,

      [TU-2.3],
      [FROb27],
      [Verifica validazione completa credenziali all'invio.],
      [Procedura inibita se uno dei controlli fallisce.],
      passed,

      [TU-2.4],
      [FROb28],
      [Verifica autorizzazione post-validazione credenziali.],
      [Rilascio della sessione solo con dati corretti.],
      passed,

      [TU-2.5],
      [FROb29],
      [Verifica reindirizzamento verso dashboard a seguito di autenticazione.],
      [L'utente viene reindirizzato correttamente.],
      passed,

      [TU-2.6],
      [FROb30],
      [Verifica protocollo di trasmissione credenziali (HTTPS).],
      [Dati cifrati durante il transito verso il server.],
      pending,

      [TU-2.7],
      [FROb31],
      [Verifica utilizzo username per fetch del record account dalla persistenza.],
      [Lo username viene utilizzato per recuperare il record DB.],
      passed,

      [TU-2.8],
      [FROb32],
      [Verifica confronto hash password fornita con hash memorizzato.],
      [Accesso concesso solo se coincidono.],
      passed,

      [TU-2.9],
      [FROb33],
      [Test del meccanismo di rate limiting / lockout temporaneo.],
      [Blocco dell'account dopo N tentativi falliti.],
      pending,

      [TU-2.10],
      [FROb34],
      [Verifica visualizzazione spinner durante validazione credenziali.],
      [Indicatore mostrato; bottone disabilitato.],
      passed,

      [TU-2.11],
      [FROb35],
      [Verifica rilevamento campi mancanti e inibizione del login.],
      [Trigger errore per campi vuoti; accesso negato.],
      passed,

      [TU-2.12],
      [FROb36],
      [Verifica notifica formato email non conforme in fase di login.],
      [Messaggio di errore su formato email errato.],
      pending,

      [TU-2.13],
      [FROb36],
      [Verifica notifica email non esistente nel sistema.],
      [Feedback specifico per email non censito.],
      passed,

      [TU-2.14],
      [FROb36],
      [Verifica notifica formato password errato in login.],
      [Feedback su errore sintattico password.],
      pending,

      [TU-2.15],
      [FROb36],
      [Verifica notifica password errata (hash non corrisponde).],
      [Feedback specifico per credenziali non corrispondenti.],
      passed,

      // --- RICHIEDA ANALISI (UC4) ---
      [TU-4.1],
      [FROb47],
      [Verifica predisposizione campo URL nel modulo di richiesta analisi.],
      [Campo URL presente e funzionante nel modulo.],
      passed,

      [TU-4.2],
      [FROb48],
      [Verifica vincoli sintattici URL: protocollo HTTPS e dominio GitHub.],
      [Validazione positiva solo per URL conformi.],
      passed,

      [TU-4.5],
      [FROb50],
      [Verifica disabilitazione comando di conferma dopo prima pressione.],
      [Bottone disabilitato dopo il click per prevenire duplicati.],
      passed,

      [TU-4.7],
      [FROb56],
      [Verifica inibizione richiesta in assenza di selezione aree.],
      [Messaggio di errore se nessuna area è selezionata.],
      passed,

      [TU-4.8],
      [FROb51],
      [Verifica consegna notifica di fine analisi tramite canali scelti.],
      [Notifica recapitata sul canale configurato.],
      passed,

      [TU-4.9],
      [FROb52],
      [Verifica inclusione dettagli analisi (nome, ora) nell'avviso ricevuto.],
      [Messaggio contiene nome progetto e timestamp.],
      passed,

      [TU-4.10],
      [FROb53],
      [Verifica invio avviso immediato con causa errore in caso interruzione.],
      [Notifica di errore con breve spiegazione tempestiva.],
      passed,

      // --- LISTA REPOSITORY (UC5) ---
      [TU-5.1],
      [FROb57],
      [Verifica ordinamento lista repository per data (decrescente).],
      [Repository visualizzati in ordine dall'analisi più recente.],
      pending,

      [TU-5.2],
      [FROb61],
      [Validazione logica per visualizzazione informativa lista vuota.],
      [Messaggio informativo mostrato.],
      passed,

      [TU-5.3],
      [FROb62],
      [Verifica inibizione rendering lista in caso di errore persistenza.],
      [Messaggio di errore tecnico mostrato.],
      passed,

      [TU-5.4],
      [FROb63],
      [Verifica presenza e funzionamento comando di aggiornamento (Refresh).],
      [Nuovo tentativo di caricamento avviato al click.],
      passed,

      [TU-5.5],
      [FROb58],
      [Verifica consultabilità risultati],
      [Il report è accessibile dalla dashboard in ogni caso.],
      passed,

      [TU-5.6],
      [FROb59],
      [Verifica contrassegno analisi come “Fallita” nella lista progetti.],
      [Stato “Fallita” visibile nella dashboard.],
      passed,
      // --- VISUALIZZAZIONE REPORT (UC6) ---
      [TU-6.1],
      [FROb64],
      [Verifica selezione e caricamento report da lista.],
      [Caricamento riuscito dei dati del report selezionato.],
      passed,

      [TU-6.2],
      [FROb65],
      [Verifica validazione server: report appartiene al repository utente.],
      [Rendering inibito con errore per report non associati.],
      passed,

      [TU-6.3],
      [FROb66],
      [Verifica inibizione rendering per report non autorizzati.],
      [Errore di autorizzazione mostrato.],
      passed,

      [TU-6.4],
      [FROb67],
      [Verifica gestione timeout nel recupero dati analitici con notifica.],
      [Notifica di indisponibilità temporanea mostrata.],
      passed,

      [TU-6.5],
      [FROb68],
      [Verifica stato dei filtri aree (toggle on/off).],
      [Le aree analitiche sono correttamente filtrate.],
      passed,

      [TU-6.6],
      [FROb69],
      [Verifica aggiornamento dinamico contenuto in base ai filtri.],
      [Il report si aggiorna alla variazione dei filtri.],
      passed,

      [TU-6.7],
      [FROb70],
      [Controllo validazione: almeno un'area attiva nei filtri.],
      [Almeno un'area rimane sempre selezionata.],
      pending,

      [TU-6.8],
      [FROb71],
      [Verifica esposizione metadati identificativi del report.],
      [Metadati caricati correttamente.],
      passed,

      [TU-6.9],
      [FROb72],
      [Verifica correttezza timestamp generazione audit (formato ISO 8601).],
      [Data e ora corrispondono al record del database.],
      pending,

      [TU-6.11],
      [FROb74],
      [Controllo visualizzazione username richiedente report.],
      [Lo username corrisponde all'autore della richiesta.],
      passed,

      [TU-6.12],
      [FROb75],
      [Verifica integrità metriche tecniche aggregate per aree attive.],
      [Dati numerici visualizzati correttamente.],
      passed,

      [TU-6.13],
      [FROb76],
      [Verifica caricamento e visualizzazione lista azioni correttive.],
      [Lista remediation caricata e associata alle criticità.],
      passed,

      [TU-6.14],
      [FROb77],
      [Verifica espansione dettaglio singola remediation.],
      [Dettaglio tecnico della proposta di risoluzione visibile.],
      passed,

      [TU-6.15],
      [FROb78],
      [Controllo messaggio esito positivo in assenza di criticità.],
      [Badge di conformità mostrato per aree sicure.],
      passed,

      // --- CONFRONTO STORICO (UC7) ---
      [TU-7.1],
      [FROb79],
      [Verifica selezione intervallo temporale tramite input di data.],
      [Intervallo acquisito correttamente.],
      passed,

      [TU-7.2],
      [FROb80],
      [Verifica predisposizione e invio comando aggiornamento confronto.],
      [Trigger di ricalcolo attivato correttamente.],
      passed,

      [TU-7.3],
      [FROb81],
      [Controllo campi obbligatori temporali: inibizione se non popolati.],
      [Avviso mostrato e confronto inibito.],
      pending,

      [TU-7.4],
      [FROb82],
      [Validazione coerenza: data inizio precedente alla data fine.],
      [Blocco e segnalazione errore.],
      passed,

      [TU-7.5],
      [FROb83],
      [Controllo ampiezza massima intervallo.],
      [Errore restituito e richiesta inibita.],
      passed,

      [TU-7.6],
      [FROb84],
      [Verifica query di ricerca report in intervallo.],
      [Messaggio “Nessun report trovato” se range vuoto.],
      passed,

      // --- METRICHE COMPARATIVE (UC8) ---
      [TU-8.1],
      [FRDe85],
      [Verifica logica di generazione dataset per grafici dinamici.],
      [Dati trasformati in serie storiche.],
      passed,

      [TU-8.2],
      [FRDe86],
      [Verifica tooltip informativi all'hover sui punti dati del grafico.],
      [Valore esatto mostrato.],
      pending,

      [TU-8.3],
      [FROb87],
      [Verifica allineamento dati tra vista grafica e tabellare.],
      [Dati coerenti tra grafico e tabella.],
      passed,

      [TU-8.4],
      [FROb88],
      [Verifica popolamento righe tabella comparativa in ordine cronologico.],
      [Ordinamento cronologico corretto.],
      passed,

      [TU-8.5],
      [FROb89],
      [Validazione algoritmo calcolo indicatori di variazione.],
      [Calcolo variazione score eseguito correttamente.],
      pending,

      [TU-8.6],
      [FROb90],
      [Verifica fallback visualizzazione dati grezzi in tabella in caso di errore.],
      [Dati mostrati in formato tabellare.],
      passed,

      // --- ANALISI DEL CODICE (UC9) ---
      [TU-9.1],
      [FROb91],
      [Verifica caricamento sezione “Codice” solo se area attiva.],
      [Modulo renderizzato correttamente.],
      passed,

      [TU-9.2],
      [FROb92],
      [Verifica esposizione risultati analisi statica con gravità e posizione.],
      [Bug, code smell e vulnerabilità mostrati.],
      passed,

      [TU-9.3],
      [FROb93],
      [Controllo calcolo percentuale copertura test (Code Coverage).],
      [Valore normalizzato e conteggio calcolati correttamente.],
      passed,

      [TU-9.5],
      [FROb95],
      [Controllo informativa “Codice Conforme” in assenza di bug.],
      [Esito positivo mostrato.],
      passed,

      // --- ANALISI SICUREZZA (UC10) ---
      [TU-10.1],
      [FROb96],
      [Verifica caricamento asincrono sezione sicurezza.],
      [I dati di sicurezza vengono caricati in modo indipendente.],
      passed,

      [TU-10.2],
      [FROb97],
      [Verifica esposizione dipendenze vulnerabili con CVE e CVSS.],
      [Librerie elencate con campi informativi.],
      passed,

      [TU-10.3],
      [FROb98],
      [Verifica del mappatore di conformità OWASP Top 10.],
      [Associazione corretta vulnerabilità-categoria.],
      passed,

      [TU-10.4],
      [FROb99],
      [Verifica presentazione remediation di sicurezza ordinate per criticità.],
      [Remediation esposte in ordine decrescente.],
      pending,

      [TU-10.5],
      [FROb100],
      [Validazione logica “Repository Sicuro” in assenza di vulnerabilità.],
      [Restituisce stato “Safe” se contatore zero.],
      passed,

      [TU-10.6],
      [FROb97],
      [Verifica parser dipendenze vulnerabili da scanner esterni (Trivy/Grype) in `analysis/security`.],
      [Le finding critiche vengono normalizzate e rese disponibili al report.],
      passed,

      [TU-10.7],
      [FROb98],
      [Verifica parser OWASP (Semgrep) con filtro risultati non conformi e gestione errori tool.],
      [Le categorie OWASP vengono mappate correttamente e gli errori non bloccano il flusso.],
      passed,

      // --- ANALISI DOCUMENTAZIONE (UC11) ---
      [TU-11.1],
      [FROb101],
      [Verifica caricamento e visualizzazione sezione documentazione.],
      [Sezione renderizzata correttamente.],
      passed,

      [TU-11.2],
      [FROb102],
      [Verifica rilevamento errori sintattici e link interrotti.],
      [Identifica URL malformati o errori testuali.],
      passed,

      [TU-11.3],
      [FROb103],
      [Calcolo indice di completezza documentale su interfacce pubbliche.],
      [Rapporto coerente interfacce-blocchi documentazione.],
      passed,

      [TU-11.4],
      [FROb104],
      [Verifica esposizione suggerimenti per integrazione documentazione.],
      [Suggerimenti visualizzati per lacune rilevate.],
      passed,

      [TU-11.5],
      [FROb105],
      [Controllo informativa “Documentazione Completa” se nessuna criticità.],
      [Esito positivo mostrato.],
      passed,

      // --- RANKING (UC12) ---
      [TU-12.1],
      [FROb106],
      [Verifica del calcolo del punteggio di qualità globale pesato.],
      [Media pesata dei punteggi delle tre aree.],
      passed,

      [TU-12.2],
      [FROb107],
      [Algoritmo di generazione graduatoria con ordinamento decrescente.],
      [Lista ordinata dal punteggio più alto al basso.],
      passed,

      [TU-12.3],
      [FROb108],
      [Verifica esposizione dati per riga: posizione, nome, punteggio, trend.],
      [Tutti i campi popolati correttamente.],
      passed,

      [TU-12.4],
      [FROb109],
      [Verifica inibizione rendering ranking in assenza di analisi completate.],
      [Messaggio suggerimento prima analisi mostrato.],
      passed,

      // --- ESPORTAZIONE (UC14) ---
      [TU-14.1],
      [FROb114],
      [Verifica disponibilità link di download del file generato.],
      [Link di download presente e funzionante.],
      passed,

      [TU-14.2],
      [FROb115],
      [Verifica supporto formati di esportazione PDF e JSON.],
      [Accetta esclusivamente PDF o JSON.],
      passed,

      [TU-14.3],
      [FROb116],
      [Verifica inibizione invio richiesta in assenza di formato selezionato.],
      [Impossibilità di non selezionare il formato.],
      passed,

      [TU-14.4],
      [FROb117],
      [Verifica modulo generazione file: mapping dati e metadati.],
      [I dati vengono mappati senza perdite.],
      pending,

      [TU-14.5],
      [FROb118],
      [Verifica processo di generazione file asincrono senza blocco interfaccia.],
      [L'UI rimane responsiva durante il parsing.],
      passed,

      // --- MODIFICA PASSWORD (UC15) ---
      [TU-15.1],
      [FROb119],
      [Verifica accesso alla sezione dedicata alla modifica password.],
      [Rendering corretto del modulo nel profilo.],
      passed,

      [TU-15.2],
      [FROb119],
      [Confronto hash tra password corrente inserita e hash memorizzato.],
      [Restituisce true solo se gli hash corrispondono.],
      passed,

      [TU-15.3],
      [FROb120],
      [Verifica inibizione e notifica errore per password corrente errata.],
      [Messaggio specifico mostrato.],
      passed,

      [TU-15.4],
      [FROb121],
      [Validatore criteri complessità nuova password.],
      [Rigetto password non conformi a requisiti.],
      passed,

      [TU-15.5],
      [FROb122],
      [Controllo eterogeneità: nuova password diversa da quella attuale.],
      [Errore se l'hash coincide con quello attuale.],
      passed,

      [TU-15.6],
      [FROb123],
      [Verifica aggiornamento password nella persistenza tramite nuovo hashing.],
      [Nuova password salvata cifrata con salt rigenerato.],
      passed,

      [TU-15.7],
      [FROb124],
      [Verifica invio notifica email automatica a seguito di modifica.],
      [Email di notifica inviata post-cambio.],
      passed,

      [TU-15.8],
      [FROb125],
      [Verifica invalidazione di tutte le sessioni attive post-cambio password.],
      [Sessioni parallele invalidate; corrente attiva.],
      pending,

      // --- VISUALIZZAZIONE REMEDIATION GENERICA (UC16) ---
      [TU-16.1],
      [FROb126],
      [Verifica visualizzazione dettaglio tecnico singola remediation.],
      [Dettaglio correttamente caricato.],
      passed,

      [TU-16.2],
      [FROb127],
      [Verifica esposizione campi obbligatori remediation (descrizione, snippet).],
      [Tutti i campi previsti presenti.],
      passed,

      [TU-16.3],
      [FROb128],
      [Verifica inclusione riferimenti esterni per vulnerabilità note.],
      [Link a documentazione esterna mostrati.],
      passed,

      // --- VERIFICA ACCESSIBILITA' REPOSITORY (UC17) ---
      [TU-17.1],
      [FROb129],
      [Verifica gestione ciclo verifica accessibilità tramite API GitHub.],
      [Chiamate asincrone eseguite e tracciate.],
      passed,

      [TU-17.2],
      [FROb130],
      [Verifica meccanismo “Exponential Backoff” per errori di rete.],
      [Ritardi crescenti; interruzione su max tentativi.],
      passed,

      [TU-17.3],
      [FROb131],
      [Verifica validazione raggiungibilità endpoint tramite “Heartbeat”.],
      [Verifica operatività servizio remoto.],
      passed,

      [TU-17.4],
      [FROb132],
      [Verifica tentativo accesso pubblico prima dell'uso di credenziali.],
      [Richiesta senza intestazioni di autorizzazione.],
      passed,

      [TU-17.5],
      [FROb133],
      [Verifica accesso privato via token su errore 403/404 della risorsa.],
      [Seconda richiesta con token iniettato.],
      passed,

      [TU-17.6],
      [FROb134],
      [Verifica controllo “scopes” del token: permessi minimi di lettura.],
      [Token insufficiente viene rifiutato.],
      passed,

      [TU-17.7],
      [FROb135],
      [Verifica aggiornamento stato analisi a “FAILED_ACCESS”.],
      [Stato impostato a “FAILED_ACCESS”.],
      passed,

      // --- CREAZIONE RACCOLTA REPORT (UC20) ---
      [TU-20.1], [FROb140], [Verifica definizione nome univoco raccolta.], [Nomi non conformi rifiutati.], passed,
      [TU-20.2],
      [FROb141],
      [Verifica validazione sintattica URL GitHub.],
      [https://www.wordreference.com/iten/non-conforme],
      passed,

      [TU-20.3],
      [FROb142],
      [Verifica interrogazione API GitHub per conferma esistenza repository.],
      [Repository inesistenti bloccano la raccolta.],
      passed,

      [TU-20.4],
      [FROb143],
      [Verifica gestione repository inaccessibile con notifica utente.],
      [Avviso specifico mostrato.],
      passed,

      [TU-20.5],
      [FROb144],
      [Verifica impedimento creazione raccolta duplicata per stesso utente.],
      [Errore di duplicazione gestito.],
      passed,

      [TU-20.6],
      [FROb145],
      [Verifica memorizzazione descrizione facoltativa con supporto UTF-8.],
      [Caratteri speciali memorizzati correttamente.],
      passed,

      // --- AVVIO ANALISI (UC21) ---
      [TU-21.1],
      [FROb146],
      [Verifica parallelizzazione richieste verso gli strumenti esterni.],
      [Richieste inviate in parallelo.],
      passed,

      [TU-21.2],
      [FROb147],
      [Verifica inclusione parametri di configurazione utente nelle richieste.],
      [Parametri trasmessi correttamente.],
      passed,

      [TU-21.3],
      [FROb148],
      [Verifica trasmissione sicura credenziali al servizio AWS per clonazione.],
      [Credenziali non esposte in chiaro.],
      passed,

      [TU-21.4],
      [FROb149],
      [Verifica monitoraggio completamento clonazione e gestione timeout.],
      [Procedura interrotta con segnalazione su errori.],
      passed,

      [TU-21.5],
      [FROb150],
      [Verifica inibizione inoltro strumenti su errore clonazione.],
      [Nessuna richiesta inoltrata agli strumenti.],
      passed,

      [TU-21.6],
      [FROb151],
      [Verifica inoltro codebase agli strumenti di analisi via protocolli sicuri.],
      [File trasmessi tramite canali cifrati.],
      passed,

      [TU-21.7],
      [FROb146],
      [Verifica orchestrazione processi agenti locali (code/docs/security) e corretta raccolta stream output.],
      [I processi vengono avviati, monitorati e chiusi senza deadlock.],
      passed,

      // --- PERSISTENZA STATO ANALISI E RECUPERO (UC22 - UC26) ---
      [TU-22.1],
      [FROb152],
      [Verifica registrazione stato analisi come “PENDING”.],
      [Stato scritto correttamente nel DB.],
      passed,

      [TU-22.2],
      [FROb153],
      [Verifica associazione univoca ID analisi a repository e utente.],
      [ID associato; impossibile creare duplicati.],
      passed,

      [TU-22.3],
      [FROb154],
      [Verifica persistenza metadati di avvio (hash commit, timestamp).],
      [Dati registrati all'avvio.],
      passed,

      [TU-22.4],
      [FROb155],
      [Verifica Rollback e segnalazione su errore scrittura stato.],
      [Analisi annullata su fallimento persistenza.],
      passed,

      [TU-22.5],
      [FROb156],
      [Verifica registrazione log di audit su fallimento persistenza.],
      [Log di errore completi scritti.],
      passed,

      [TU-23.1],
      [FROb157],
      [Verifica polling o ricezione segnale completamento strumenti.],
      [Rilevata disponibilità risultati.],
      passed,

      [TU-23.2],
      [FROb158],
      [Verifica download risultati non appena disponibili.],
      [File scaricati correttamente.],
      passed,

      [TU-23.3],
      [FROb159],
      [Verifica controllo integrità file ricevuti.],
      [File corrotti rilevati e segnalati.],
      passed,

      [TU-23.4],
      [FROb160],
      [Verifica prosecuzione report con dati parziali su fallimento strumento.],
      [Report generato con i dati disponibili.],
      passed,

      [TU-23.5],
      [FROb161],
      [Verifica impostazione timeout massimo per strumento ritardatario.],
      [Attesa interrotta post timeout.],
      passed,

      [TU-23.6],
      [FROb162],
      [Verifica segnalazione nel DB di report con dati parziali.],
      [Flag “parziale” impostato.],
      passed,

      [TU-24.1],
      [FROb163],
      [Verifica unificazione dati in documento di sintesi unico.],
      [Output aggregati correttamente.],
      passed,

      [TU-24.2],
      [FROb164],
      [Verifica conversione formati eterogenei in modello standard.],
      [Formati normalizzati senza perdite.],
      passed,

      [TU-24.3],
      [FROb165],
      [Verifica validazione completezza report prima del salvataggio.],
      [Report incompleto non inoltrato al DB.],
      passed,

      [TU-24.4],
      [FROb166],
      [Verifica calcolo punteggi di riepilogo per aree.],
      [Punteggi calcolati coerentemente.],
      passed,

      [TU-24.5],
      [FROb163],
      [Verifica costruzione entità report (code/documentation/security) e validazione dei value object di supporto.],
      [Le entità risultano consistenti e serializzabili nel modello di dominio.],
      passed,

      [TU-25.1],
      [FROb167],
      [Verifica archiviazione permanente report con collegamento repository.],
      [Report salvato e associato a profilo e repo.],
      passed,

      [TU-25.2],
      [FROb168],
      [Verifica aggiornamento stato analisi a “Completato”.],
      [Stato impostato a seguito di conferma scrittura.],
      passed,

      [TU-25.3],
      [FROb169],
      [Verifica notifica utente in caso impossibilità salvataggio.],
      [Messaggio di errore generato per notifica.],
      passed,

      [TU-25.4],
      [FROb170],
      [Verifica tracciamento fallimento salvataggio per audit.],
      [Log errore scritto dettagliatamente.],
      passed,

      [TU-25.5],
      [FROb171],
      [Verifica copia temporanea report su errore salvataggio definitivo.],
      [Copia disponibile per recupero.],
      passed,

      [TU-25.6],
      [FROb167],
      [Verifica persistenza Mongo dei report e collegamento corretto tra analisi, report e utente.],
      [Le associazioni sono mantenute correttamente nel database.],
      passed,

      [TU-26.1],
      [FROb172],
      [Verifica generazione automatica notifica utente a report salvato.],
      [Notifica generata dopo archiviazione.],
      passed,

      [TU-26.2],
      [FROb173],
      [Verifica inclusione link accesso diretto nella notifica.],
      [Notifica contiene riferimento report.],
      passed,

      [TU-26.3],
      [FROb174],
      [Verifica inclusione informazioni identificative nella notifica.],
      [Nome repo e data presenti nel messaggio.],
      passed,

      [TU-26.4],
      [FROb175],
      [Verifica indipendenza stato report dall'esito invio notifica.],
      [Report disponibile anche se notifica fallisce.],
      passed,

      [TU-26.5],
      [FROb176],
      [Verifica registrazione anomalia su errore invio notifica.],
      [Log aggiornato con causa fallimento.],
      passed,

      [TU-26.6],
      [FROb177],
      [Verifica meccanismo di retry invio notifica per problemi di rete.],
      [Tentativi ripetuti prima di rinunciare.],
      passed,

      // --- VISUALIZZAZIONE INFORMAZIONI REPOSITORY (UC27) ---
      [TU-27.1],
      [FROb179],
      [Controllo mapping metadati: Nome, URL, Data ultima analisi.],
      [Oggetti popolati correttamente.],
      passed,

      // --- CANCELLAZIONE PROFILO (UC28) ---
      [TU-28.1],
      [FROb180],
      [Verifica richiesta password come verifica identità pre-cancellazione.],
      [Procedura bloccata senza verifica corretta.],
      passed,

      [TU-28.2],
      [FROb181],
      [Verifica visualizzazione avviso irreversibilità con annullamento.],
      [Dialog avviso mostrato.],
      passed,

      [TU-28.3],
      [FROb182],
      [Verifica rimozione dati personali e invalidazione credenziali.],
      [Accesso con credenziali precedenti impossibile.],
      passed,

      // --- GESTIONE ACCESSO GITHUB (UC29) ---
      [TU-29.1],
      [FROb183],
      [Verifica scambio codice OAuth GitHub in token persistente e gestione risposte non valide.],
      [Il token viene ottenuto solo con codice valido.],
      passed,

      [TU-29.2],
      [FROb184],
      [Verifica cifratura del token GitHub prima del salvataggio su persistenza.],
      [Il token non viene mai salvato in chiaro.],
      passed,

      [TU-29.3],
      [FROb185],
      [Verifica associazione univoca token OAuth al profilo utente autorizzante.],
      [Ogni token resta vincolato all'utente proprietario.],
      passed,

      [TU-29.4],
      [FROb186],
      [Verifica annullamento collegamento su codice OAuth scaduto/non valido con richiesta nuova procedura.],
      [Il sistema invalida la procedura corrente e richiede nuova autorizzazione.],
      passed,

      // --- VISUALIZZAZIONE E ACCETTAZIONE REMEDIATION (UC30 - UC38) ---
      [TU-30.1],
      [FROb187],
      [Verifica caricamento dettaglio singola remediation codice.],
      [Dettaglio caricato correttamente.],
      passed,

      [TU-30.2],
      [FROb188],
      [Verifica presenza campi obbligatori nella remediation codice.],
      [Campi previsti presenti.],
      passed,

      [TU-31.1],
      [FROb189],
      [Verifica caricamento dettaglio singola remediation sicurezza.],
      [Dettaglio caricato correttamente.],
      passed,

      [TU-31.2],
      [FROb190],
      [Verifica presenza campi obbligatori nella remediation sicurezza.],
      [Campi previsti presenti.],
      passed,

      [TU-32.1],
      [FROb191],
      [Verifica caricamento dettaglio singola remediation documentazione.],
      [Dettaglio caricato correttamente.],
      passed,

      [TU-32.2],
      [FROb192],
      [Verifica presenza campi obbligatori nella remediation documentale.],
      [Campi previsti presenti.],
      passed,

      [TU-38.1],
      [FROb209],
      [Verifica accesso al dettaglio per procedura di rifiuto documentale.],
      [Dettaglio visualizzato prima del rifiuto.],
      passed,

      [TU-38.2],
      [FROb210],
      [Verifica abilitazione comando di rifiuto remediation documentale.],
      [Comando disponibile nell'area.],
      passed,

      [TU-38.3],
      [FROb211],
      [Verifica aggiornamento stato remediation documentale a “rifiutata”.],
      [Stato aggiornato a seguito del rifiuto.],
      passed,

      [TU-38.4],
      [FROb212],
      [Verifica che il rifiuto non comporti modifiche ai file.],
      [Nessuna modifica al repository.],
      passed,

      [TU-38.5],
      [FROb213],
      [Verifica rimozione/marcatura visiva remediation rifiutata.],
      [Remediation non più pendente.],
      passed,

      [TU-38.6],
      [FROb214],
      [Verifica visualizzazione conferma visiva avvenuto rifiuto.],
      [Messaggio di conferma rifiuto mostrato.],
      passed,

      // --- REPOSITORY PRIVATI, CATALOGO E PERMESSI (UC39 - UC46) ---
      [TU-39.2],
      [FROb216],
      [Verifica validazione integrazione GitHub attiva per risorse private.],
      [Richiesta bloccata senza token valido.],
      passed,

      [TU-39.3],
      [FROb217],
      [Verifica inibizione richiesta analisi in assenza selezione aree.],
      [Errore mostrato se nessuna area attiva.],
      passed,

      [TU-40.1],
      [FROb218],
      [Verifica inserimento URL repository privato nel catalogo.],
      [Repository aggiunto correttamente.],
      passed,

      [TU-40.2],
      [FROb219],
      [Verifica impedimento inserimento URL duplicato con notifica.],
      [Catalogo invariato su duplicati.],
      passed,

      [TU-41.1],
      [FROb220],
      [Verifica ordinamento elenco repository privati in ordine decrescente.],
      [Lista ordinata per data inserimento.],
      passed,

      [TU-41.2],
      [FROb221],
      [Verifica visualizzazione informativa catalogo vuoto.],
      [Messaggio suggerimento mostrato.],
      passed,

      [TU-41.3],
      [FROb222],
      [Verifica esposizione lista repository privati con nome e URL.],
      [Lista popolata correttamente.],
      passed,

      [TU-42.1],
      [FROb223],
      [Verifica rimozione repository previa conferma esplicita utente.],
      [Repository rimosso dopo conferma.],
      passed,

      [TU-42.2],
      [FROb224],
      [Verifica integrità catalogo in caso di annullamento rimozione.],
      [Repository mantenuto nel catalogo.],
      passed,

      [TU-42.3],
      [FROb225],
      [Verifica avvio procedura di rimozione di un repository.],
      [Caricamento corretto del dialog.],
      passed,

      [TU-46.1],
      [FROb237],
      [Verifica rimozione raccolta senza eliminazione singoli report.],
      [Raccolta rimossa; report consultabili.],
      passed,

      [TU-46.2],
      [FROb238],
      [Verifica presenza dialog di conferma esplicita eliminazione raccolta.],
      [Richiesta conferma mostrata.],
      passed,

      [TU-46.3],
      [FROb239],
      [Verifica ripristino stato su annullamento rimozione raccolta.],
      [Raccolta mantenuta inalterata.],
      passed,

      // --- DOMINIO E VALUE OBJECTS (UC24) ---
      [TU-47.1],
      [FROb163],
      [Verifica 'DocumentationReport Entity' (Creation, Equality, Real JSON report).],
      [Report istanziati correttamente e regole di uguaglianza per ID rispettate.],
      passed,

      [TU-47.2],
      [FROb163],
      [Verifica 'GitHubAnalysis Entity' (Creation, StateMachine transitions, Equality).],
      [Stati evolvono correttamente da PENDING a COMPLETED/FAILED.],
      passed,

      [TU-47.3],
      [FROb163],
      [Verifica 'AnalysisId', 'ReportId', 'CommitHash', 'UserId' e 'RepoURL' (Success e Failure casi).],
      [Impedita l'istanziazione per formati UUID o URL non validi; conformità formale garantita.],
      passed,

      [TU-47.4],
      [FROb93],
      [Verifica costrutti di Coverage (CoveragePercentage, FileCoverage, CoverageFinding, CoverageEvaluation).],
      [Controllo del range (0-100) per percentuali; fail-fast per dati fuori limite.],
      passed,

      [TU-47.5],
      [FROb97],
      [Verifica costrutti Vulnerabilità (OWASPFinding, SecretFinding, DependencyFinding, SeverityFinding).],
      [Controllo logica di equivalenza tra finding e validazione del mapping della Severity.],
      passed,

      [TU-47.6],
      [FROb102],
      [Verifica Value Object Documentazione (DocsDiscrepancy, MissingFile, APIViolation, ReadmeDependency).],
      [Regole sintattiche dei VO rispettate in costruzione e controllo formale del JSON.],
      passed,

      // --- SERVIZI DI AUTORIZZAZIONE, CREDENZIALI E VALIDAZIONE (UC17, UC29) ---
      [TU-48.1],
      [FROb183],
      [Verifica 'NewPatService' (instantiation, success path, failure path - port/thorws).],
      [Invio credenziali a token salvati; gestione dell'exit status o failure del db.],
      passed,

      [TU-48.2],
      [FROb186],
      [Verifica 'DeletePatService' (execute con success e port/thorws paths).],
      [Risoluzione della cancellazione ed eventuali eccezioni gestite.],
      passed,

      [TU-48.3],
      [FROb184],
      [Verifica 'UpdatePatService' e 'PATPasswordProvider' (Validation Errors, Constructor e Integrity).],
      [Logica hashing applicata correttamente per update e integrità del token verificata.],
      passed,

      [TU-48.4],
      [FROb129],
      [Verifica 'GitValidatorService' (Commit / Branch / Default Validation Strategy, Edge Cases).],
      [Cambiamento dinamico strategia risolutiva in base agli argomenti immessi (Branch vs Hash).],
      passed,

      [TU-48.5],
      [FROb132],
      [Verifica 'GitAuthorizerService' (Private Strategy, Public Strategy, Strategy Switching).],
      [La chiamata scala al token privato solo su rifiuto dal path non autenticato.],
      passed,

      // --- SERVIZI ADATTATORI E ORCHESTRAZIONE LOCALE (UC21, UC22, UC24, UC25, UC26) ---
      [TU-49.1],
      [FROb146],
      [Verifica 'AnalysisOrchestratorService'],
      [Flussi agenti microservizi chiamati assieme, ed errori recuperabili loggati bypassando fault.],
      passed,

      [TU-49.2],
      [FROb64],
      [Verifica 'GetAnalysisService' (execute, getAllAnalysesForUser).],
      [Restituzione DTO esatti degli storage e filtri corretti a livello DB.],
      passed,

      [TU-49.3],
      [FROb57],
      [Verifica servizi Collections ('GitHubCollectionChecker', 'GitHubCollectionDeleter', 'GitHubCollectionGetter').],
      [Check dei duplicati (executeAll), prelievi e delezione controllati a livello Use Case.],
      passed,

      [TU-49.4],
      [FROb164],
      [Verifica 'ReportEntitiesProvider' (mappe DocsAgentResponse, CodeAgentResponse e SecurityAgentResponse).],
      [La serializzazione dei payload remoti dai container viene idratata nel Dominio TS in sicurezza.],
      passed,

      [TU-49.5],
      [FROb149],
      [Verifica 'GitHubAdapter' (check Commit/Branch, URL building, Auth header) e 'GitHubAdapter.clone'.],
      [Protocolli endpoint, fallback rami e costruzione command line di clonazione.],
      passed,

      [TU-49.6],
      [FROb151],
      [Verifica runAnalysis Streams di 'LocalCodeAnalysisAdapter', 'LocalSecurityAnalysisAdapter' e 'DocumentationAnalysisAdapter'.],
      [Container lifecycle catturato nei buffer stdio per success_path, invalid_output e container_error handling.],
      passed,

      [TU-49.7],
      [FROb167],
      [Verifica 'MongoDBAdapter' (save, authorize, update/deletePAT, checkDuplicate, addCollection, save*Report).],
      [Test integrità repository di persistenza Mongoose e delle collezioni custom via adapter di storage.],
      passed,

      // --- MICRO-AGENTI DI SICUREZZA PYTHON (UC21.4) ---
      [TU-50.1],
      [FROb97],
      [Verifica parser di vulnerabilita grype (parse_not_found, invalid_json, missing_locations, filters_critical, fix_all).],
      [Estrazione vulnerabilità critical senza false positive da file strutturati difettosi.],
      passed,

      [TU-50.2],
      [FROb97],
      [Verifica CLI wrapper syft/grype (success, timeout, db_outdated, generic/catalog/unsupported_sbom failure).],
      [Sottoprocessi chiamati gestendo retry o interruzioni causate da sbom bloccanti.],
      passed,


      [TU-50.3],
      [FROb98],
      [Verifica tool SAST semgrep (parser_valid, skips_non_error, invalid_json, tool_success/timeout).],
      [OWASP categorizzati; i warning non di sicurezza o low tier scartati in mapping (no_owasp).],
      passed,

      [TU-50.4],
      [FROb97],
      [Verifica finding di segreti in trivy (parser_valid, no_secrets, low_severity_filtered, tool_error).],
      [Risultati limitati a leakage di credenziali/segreti in source_code con scarto anomalie trivial.],
      passed,

      
    ),
  ),
  caption: [Tabella dei Test di Unità (Completa)],
  kind: table,
  supplement: [Table],
)
#pagebreak()

== Test di Accettazione

#show figure: set block(breakable: true)
#let ni = table.cell(fill: rgb("#E0E0E0"))[*NI*]

#figure(
  block(
    breakable: true,
    table(
      fill: (x, y) => if (y == 0) {
        luma(63.75%)
      } else if (calc.gcd(y, 2) == 2) {
        luma(220)
      },
      columns: (1.3fr, 4fr, 0.8fr),
      inset: 10pt,
      table.header([*ID Test*], [*Descrizione*], [*Stato*]),

      [TA-1],
      [Verificare che l'utente possa completare con successo la procedura di registrazione e la successiva autenticazione al sistema.],
      passed,

      [TA-2],
      [Verificare che le chiavi di accesso non siano mai salvate o trasmesse in chiaro, garantendo l'integrità del sistema di hashing.],
      passed,

      [TA-3],
      [Verificare che il sistema gestisca correttamente il reindirizzamento e il ritorno dalla piattaforma esterna GitHub, associando correttamente l'identificativo OAuth e cifrando il token ottenuto.],
      ni,

      [TA-4],
      [Verificare che l'utente possa configurare e avviare una richiesta di analisi fornendo un URL valido e selezionando le aree di interesse.],
      passed,

      [TA-5],
      [Verificare che il sistema inibisca l'avvio di analisi ridondanti qualora il repository non abbia subito modifiche dall'ultimo report.],
      ni,

      [TA-6],
      [Verificare che il sistema impedisca l'avvio di analisi concorrenti sul medesimo repository, notificando correttamente lo stato di "Analisi in corso".],
      ni,

      [TA-7],
      [Verificare che l'accesso all'analisi di repository privati sia interdetto agli utenti che non hanno completato l'integrazione con GitHub, e che la richiesta di analisi (pubblica o privata) sia inibita in assenza di selezione di almeno un'area di interesse.],
      ni,

      [TA-8],
      [Verificare che il sistema protegga i dati di sessione e i token GitHub tramite cifratura e protocolli di comunicazione sicuri (HTTPS).],
      passed,

      [TA-9],
      [Verificare che l'utente possa visualizzare correttamente lo storico globale dei repository analizzati, identificando chiaramente i progetti tramite i metadati esposti.],
      passed,

      [TA-10],
      [Verificare che l'utente possa navigare nel dettaglio di un singolo report, filtrando le sezioni di interesse (Codice, Sicurezza, Documentazione) e visualizzando i relativi metadati di audit.],
      passed,

      [TA-11],
      [Verificare che il sistema presenti chiaramente le criticità rilevate e le relative remediation suggerite, distinguendo i casi di conformità (esito positivo).],
      passed,

      [TA-12],
      [Verificare che l'utente possa impostare un intervallo temporale valido per generare un confronto storico tra le metriche di diversi report.],
      ni,

      [TA-13],
      [Verificare che il sistema generi visualizzazioni grafiche o tabelle comparative coerenti, evidenziando i trend di miglioramento o peggioramento delle metriche del codice.],
      passed,

      [TA-14],
      [Verificare che l'analisi della qualità del codice esponga correttamente i dati di analisi statica (bug/smell) e le percentuali di copertura dei test di unità.],
      passed,

      [TA-15],
      [Verificare che l'analisi della sicurezza esponga correttamente le vulnerabilità delle librerie (CVE) e i rilievi di conformità agli standard OWASP.],
      passed,

      [TA-16],
      [Verificare che l'analisi della documentazione identifichi correttamente gli errori di sintassi e il grado di completezza rispetto al codice sorgente.],
      passed,

      [TA-17],
      [Verificare che l'utente possa consultare il ranking dei repository ordinati per punteggio di qualità globale, ricevendo un'informativa corretta in assenza di dati.],
      passed,

      [TA-18],
      [Verificare che l'utente possa disconnettere l'account GitHub dal profilo CodeGuardian, con conseguente revoca delle autorizzazioni e dei token.],
      ni,

      [TA-19],
      [Verificare che l'utente possa esportare i report di analisi in formati standard (PDF/JSON), garantendo la selezione obbligatoria del formato.],
      passed,

      [TA-20],
      [Verificare che l'utente possa modificare la propria password di accesso previa validazione della credenziale attuale e rispetto dei criteri di sicurezza.],
      passed,

      [TA-21],
      [Verificare che l'utente possa creare una raccolta di report associata a un repository GitHub, fornendo nome e URL validi, con eventuale descrizione facoltativa.],
      passed,

      [TA-22],
      [Verificare che il Servizio di Analisi verifichi correttamente l'accessibilità del repository prima di avviare l'effettiva analisi, distinguendo tra risorse pubbliche e private e gestendo i fallimenti di accesso.],
      passed,

      [TA-23],
      [Verificare che l'Orchestratore avvii correttamente il processo di analisi, clonando il repository e distribuendo la codebase agli strumenti di analisi per le aree selezionate.],
      passed,

      [TA-24],
      [Verificare che il sistema aggreghi i risultati degli strumenti di analisi in un report strutturato, lo archivi correttamente nel sistema di persistenza e aggiorni lo stato dell'analisi a "completato".],
      passed,

      [TA-25],
      [Verificare che l'utente riceva una notifica al completamento dell'analisi e che il report risulti consultabile nella propria area personale anche in assenza di ricezione della notifica.],
      passed,

      [TA-26],
      [Verificare che l'utente venga notificato in caso di errore critico durante l'analisi e che lo stato di fallimento sia visibile nella dashboard indipendentemente dalla ricezione della notifica.],
      ni,

      [TA-27],
      [Verificare che l'Utente Avanzato possa accettare una remediation proposta, con conseguente applicazione delle modifiche al repository e aggiornamento dello stato nella dashboard.],
      ni,

      [TA-28],
      [Verificare che l'Utente Avanzato possa rifiutare una remediation proposta, con conseguente scarto della proposta e invarianza del repository.],
      ni,

      [TA-29],
      [Verificare che l'Utente Avanzato possa avviare con successo l'analisi di un repository GitHub privato presente nel proprio catalogo, selezionando le aree di interesse.],
      passed,

      [TA-30],
      [Verificare che l'Utente Avanzato possa gestire il proprio catalogo di repository privati, inserendo, visualizzando e rimuovendo risorse, con corretta gestione dei duplicati.],
      ni,

      [TA-31],
      [Verificare che il proprietario di un repository privato possa gestire i permessi di accesso ai report, aggiungendo e revocando le autorizzazioni per altri utenti della piattaforma.],
      ni,

      [TA-32],
      [Verificare che l'utente possa rimuovere una raccolta di report dal proprio profilo senza che i singoli report in essa contenuti vengano eliminati.],
      passed,

      [TA-33],
      [Verificare che l'utente possa cancellare definitivamente il proprio profilo CodeGuardian, con conseguente rimozione dei dati personali e invalidazione delle credenziali precedenti.],
      passed,
    ),
  ),
  caption: [Tabella dei Test di Accettazione],
  kind: table,
  supplement: [Table],
)

#pagebreak()

= Cruscotto di Valutazione
Il presente cruscotto costituisce il sistema di monitoraggio attraverso il quale Skarab Group valuta oggettivamente l'andamento del progetto. Le metriche qui raccolte rappresentano l'evidenza empirica necessaria per attivare il ciclo _PDCA_ (Plan-Do-Check-Act), trasformando i dati grezzi in informazioni per il miglioramento continuo.

In questa sezione vengono presentati i risultati delle misurazioni effettuate nel periodo di riferimento. L'analisi dei dati non è fine a se stessa, ma è orientata a fornire una visione oggettiva ("Data-Driven") dello stato di salute del progetto e della qualità del software rilasciato.
I dati sono organizzati per area di processo e per qualità di prodotto, permettendo una rapida identificazione delle aree critiche e il confronto con le soglie di accettabilità definite nel Piano di Qualifica.

== Processi Primari: Fornitura (EVM)
Questa sezione monitora l'andamento economico e temporale del progetto utilizzando lo standard *Earned Value Management*. L'obiettivo è evidenziare scostamenti tra quanto pianificato (Baseline) e quanto effettivamente realizzato.

=== Trend di Progetto (PV, AC, EV)
_Metriche: MPC02, MPC03, MPC04_ \
Viene visualizzato l'andamento cumulativo del valore pianificato (*Planned Value*), del costo reale sostenuto (*Actual Cost*) e del valore guadagnato (*Earned Value*). La sovrapposizione delle curve indica un progetto in linea con le aspettative; divergenze significative segnalano la necessità di interventi correttivi su budget o scadenze.

=== Indici di Efficienza (CPI, SPI)
_Metriche: MPC07, MPC08_ \
Vengono riportati gli indici di performance puntuali per ogni Sprint. Questi valori normalizzati permettono di capire immediatamente l'efficienza di costo (*CPI*) e di schedulazione (*SPI*), dove un valore pari o superiore a 1.00 rappresenta lo stato ottimale.

=== Varianze e Previsioni (CV, SV, EAC)
_Metriche: MPC05, MPC06, MPC09_ \
Questa sezione quantifica in termini monetari l'eventuale risparmio o perdita (*Cost Variance*) e l'anticipo o ritardo (*Schedule Variance*). Viene inoltre proiettata la stima del costo finale a finire (*Estimate At Completion*) confrontandola con il budget iniziale.

== Processi Primari: Sviluppo
Questa sezione analizza la stabilità dell'ambito tecnico del progetto.

=== Requirements Stability Index (RSI)
_Metrica: MPC10_ \
Grafico che traccia la volatilità dei requisiti nel tempo. Un indice stabile e alto garantisce che il team stia lavorando su obiettivi consolidati, mentre fluttuazioni frequenti possono indicare incertezze nell'analisi o richieste di modifica eccessive (*Scope Creep*).

== Processi di Supporto: Documentazione
Monitoraggio della qualità formale e della fruibilità della documentazione prodotta.

=== Indice di Gulpease e Correttezza
_Metriche: MPC11, MPC12_ \
Viene riportato il livello di leggibilità linguistica (*Gulpease Index*) calcolato sui documenti principali, unitamente al numero di errori ortografici rilevati, per garantire che la documentazione sia accessibile e professionale.

== Processi di Supporto: Verifica
Monitoraggio dell'efficacia delle attività di testing dinamico.

=== Code Coverage e Test Success
_Metriche: MPC13, MPC14_ \
Cruscotto tecnico che visualizza la copertura del codice raggiunta dai test automatizzati e il tasso di successo dei test eseguiti. Questi indicatori sono fondamentali per valutare la robustezza del codice prima del rilascio.

== Processi di Supporto: Gestione della Qualità
Visione d'insieme sull'efficacia del Piano di Qualifica stesso.

=== Soddisfazione delle Metriche
_Metrica: MPC15_ \
Indicatore sintetico (KPI) che mostra la percentuale totale delle metriche di progetto che rispettano le soglie di accettabilità definite. Fornisce un'indicazione immediata sulla conformità complessiva dei processi.

== Processi Organizzativi: Gestione dei Processi
Analisi dell'efficienza del metodo di lavoro Agile adottato dal team.

=== Sprint Goal Achievement
_Metrica: MPC16_ \
Viene illustrata la capacità del team di completare gli obiettivi pianificati all'inizio di ogni iterazione (Sprint Planning). Questo dato è essenziale per calibrare la *Velocity* del team e migliorare la precisione delle pianificazioni future.

== Qualità di Prodotto
In questa sezione si verifica la conformità del software rilasciato rispetto ai requisiti e agli standard di qualità ISO/IEC 25010.

=== Copertura Funzionale
_Metriche: MPD01, MPD02, MPD03_ \
Visualizzazione dello stato di implementazione dei requisiti, suddivisi per priorità (Obbligatori, Desiderabili, Opzionali), per confermare l'adeguatezza funzionale del rilascio corrente.

=== Affidabilità e Manutenibilità
_Metriche: MPD04, MPD05, MPD08, MPD09, MPD10_ \
Analisi tecnica che combina indicatori di affidabilità (densità guasti, disponibilità) e metriche statiche del codice (complessità ciclomatica, densità commenti) per valutare la salute tecnica del prodotto.

=== Usabilità e Sicurezza
_Metriche: MPD06, MPD07, MPD11_ \
Report sugli esiti delle verifiche di usabilità (comprensibilità, prevenzione errori) e scansione delle vulnerabilità di sicurezza, garantendo che il prodotto sia sicuro e utilizzabile dall'utente finale.

È importante evidenziare che il periodo iniziale, dall'aggiudicazione fino all'avvio formale delle attività di progetto (_Sprint 1_), ha rappresentato una fase di "palestra" durante la quale il gruppo si è dedicato allo studio approfondito delle tecnologie necessarie, partecipando anche a sessioni di formazione organizzate dall'azienda proponente Var Group.

#pagebreak()
== Processi Primari: Fornitura e Sviluppo
=== Planned Value - Actual Cost - Earned Value (MPC02, MPC03 e MPC04)
#image("../assets/graficiPdQ/grafico_pv_ac_ev.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Dopo la fase iniziale, in cui le attività di formazione e setup sono state gestite come investimento interno senza gravare sul budget, il progetto è entrato nella fase operativa con l'avvio dello _Sprint 1_. In questa prima iterazione Skarab Group ha mostrato un buon equilibrio economico, completando il lavoro con un dispendio di risorse coerente con il valore prodotto, pur registrando un lieve ritardo rispetto alla pianificazione ideale.

Tuttavia, la situazione ha subito una variazione significativa durante lo _Sprint 2_: a fronte di un incremento del _Planned Value_ (PV) e dell'_Actual Cost_ (AC), l'_Earned Value_ (EV) ha subito una flessione. Questo testimonia l'insorgere di inefficienze produttive e debito tecnico, legati alla necessità di ricalibrare task qualitativamente insufficienti che hanno rallentato la produzione.

Nello _Sprint 3_, nonostante una parziale ripresa, l'_Earned Value_ rimane ancora al di sotto del _Planned Value_, segnalando che il ritardo accumulato non è ancora stato recuperato. Nello _Sprint 4_ EV e PV iniziano ad allinearsi, a fronte però di un aumento dell'AC.

==== Product Baseline (PB)
All'inizio della Product Baseline si è registrata una temporanea divergenza tra le curve: nello _Sprint 5_, l'_Actual Cost_ è risultato superiore all'_Earned Value_, con quest'ultimo che è rimasto al di sotto del valore pianificato. Tale scostamento è indicativo di un rallentamento produttivo. Tuttavia, nel corso dello _Sprint 6_, il team è riuscito a riallineare le metriche, mantenendo un equilibrio ottimale tra lavoro prodotto, costi e pianificazione fino alla conclusione del progetto, con un Actual Cost finale inferiore al budget preventivato.

#pagebreak()
=== Budget Variance - Schedule Variance (MPC05 e MPC06)
#image("../assets/graficiPdQ/grafico_bv_sv.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Il grafico monitora la salute economica e temporale del progetto a partire dallo _Sprint 1_ durante il quale la _Schedule Variance_ (SV) mostra una leggera flessione. Quest'ultima si è accentuata nello _Sprint 2_, riflettendosi anche sulla _Budget Variance_ (BV).

Successivamente, il ritardo accumulato negli sprint precedenti ha continuato a pesare sulla metrica. Nel corso dello _Sprint 4_, però, la _Schedule Variance_ torna quasi a zero.

==== Product Baseline (PB)
Questa baseline è stata caratterizzata da una marcata criticità nello _Sprint 5_, dove sia la _Budget Variance_ che la _Schedule Variance_ hanno subito una brusca flessione negativa. Questo scostamento è stato prontamente analizzato e corretto dal team: a partire dallo _Sprint 7_, entrambe le metriche sono tornate stabilmente sopra lo zero, confermando una gestione economica sana (con una Budget Variance finale di 540€) e una puntualità ottimale.

#pagebreak()
=== Cost Performance Index - Schedule Performance Index (MPC07 e MPC08)
#image("../assets/graficiPdQ/grafico_cpi_spi.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Dal grafico è possibile notare come, inizialmente, lo _Schedule Performance Index_ (SPI) sia inferiore a 1, indicando un leggero ritardo fisiologico. La buona gestione dei costi è invece documentata dal _Cost Performance Index_ (CPI).

La situazione è peggiorata nel corso dello _Sprint 2_, durante il quale si è verificato un crollo dello _Schedule Performance Index_ (SPI) che segnala un ritardo critico rispetto alla pianificazione.

A partire dallo _Sprint 3_ lo SPI inizia a recuperare progressivamente. Nello Sprint 4 lo SPI raggiunge il valore ottimale, mentre il CPI scende a causa dello sforamento orario.

==== Product Baseline (PB)
Il _CPI_ ha oscillato inizialmente tra 0.91 e 1.01, stabilizzandosi sul valore ottimale a partire dallo _Sprint 7_ e raggiungendo un indice finale di 1.04. Lo _SPI_ ha mostrato un calo significativo nello _Sprint 5_, per poi risalire e mantenersi costantemente a 1.00 per il resto della baseline. Questa progressione testimonia la capacità del team di assorbire i ritardi e ottimizzare l'efficienza di costo dopo le difficoltà incontrate.

#pagebreak()
=== Estimate at Completion (MPC09)
#image("../assets/graficiPdQ/grafico_eac.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Dopo una fase iniziale di stabilità coincidente con il budget originale, è possibile notare come una gestione inefficiente delle risorse abbia spinto la previsione di spesa verso il limite massimo.

Nello _Sprint 3_ la situazione è migliorata, con l'EAC che è rientrato entro i limiti accettabili. Tuttavia, nello _Sprint 4_, lo sforamento orario dovuto alle
revisioni dell'Analisi dei Requisiti ha
spinto nuovamente l'EAC a 13.100€, superando il BAC ma rimanendo al di sotto del limite
superiore. Il team si impegna ad adottare azioni correttive nella fase successiva per
ricondurre la previsione di spesa entro i parametri ottimali.

==== Product Baseline (PB)
L'_EAC_ ha subito una fluttuazione marcata nello _Sprint 5_, raggiungendo un picco di spesa prevista di 13.908€. Tale incremento è stato causato dal dispendio di ore superiore al previsto per la progettazione. Grazie alle azioni correttive intraprese, a partire dallo _Sprint 7_ le stime a finire sono rientrate stabilmente sotto il budget preventivato, attestandosi definitivamente a 12.130€.

#pagebreak()
=== Requirements Stability Index (MPC10)
#image("../assets/graficiPdQ/grafico_rsi.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Il _Requirements Stability Index_ (RSI) registra un peggioramento nel corso dello _Sprint 2_. Tale flessione è riconducibile a una sottostima iniziale dei requisiti impliciti e all'emersione di ulteriori requisiti in seguito al colloquio con il Prof. Cardin: il team ha dovuto apportare modifiche significative per aggiungere i requisiti non tracciati in precedenza dagli Analisti.

Nello _Sprint 4_, la riscrittura di
casi d'uso malposti e l'inserimento di requisiti mancanti hanno causato un ulteriore calo dell'indice, mantenendosi comunque al di sopra della soglia minima
accettabile.

==== Product Baseline (PB)
Il _Requirements Stability Index_ ha raggiunto il valore ottimale del 100% per quasi tutta la durata del periodo, con un'unica flessione fisiologica nello _Sprint 8_ (95%). Il team ha garantito una gestione rigorosa dell'ambito tecnico, consolidando i requisiti in vista del rilascio finale e limitando al minimo le variazioni tardive.

#pagebreak()
== Processi di Supporto
=== Gulpease Index (MPC11)
#image("../assets/graficiPdQ/grafico_gulpease.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Il grafico mostra un andamento complessivamente positivo dei documenti monitorati: a partire dallo _Sprint 1_, i valori si attestano al di sopra della soglia minima accettabile. L'_Analisi dei Requisiti_ presenta una lieve flessione nello _Sprint 2_, riconducibile alla necessità di introdurre terminologia tecnica più densa e alla fase di revisione intensiva dei requisiti.
In generale, Skarab Group si impegna a mantenere nel tempo una buona leggibilità dei documenti.

==== Product Baseline (PB)
Durante la PB, l'_Indice di Gulpease_ per tutti i documenti monitorati si è attestato stabilmente sopra la soglia ottimale di 60. L'introduzione del _Manuale Utente_ e della _Specifica Tecnica_ a partire dallo _Sprint 8_ ha mostrato indici inizialmente vicini alla soglia accettabile, che sono poi progressivamente cresciuti.

#pagebreak()
=== Correttezza Ortografica (MPC12)
#image("../assets/graficiPdQ/errori_ortografici.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Durante i primi sprint, il grafico evidenzia la presenza di alcuni errori ortografici nella documentazione, con un picco registrato nello _Sprint 2_. Il team ha prontamente identificato la criticità e adottato misure correttive, portando il conteggio degli errori a zero entro lo _Sprint 3_ per la maggior parte dei documenti.

==== Product Baseline (PB)
La correttezza ortografica è stata mantenuta a zero errori per quasi tutti i documenti consolidati nella RTB, eccezion fatta per il _Piano di Progetto_ che ha registrato alcune imperfezioni tra lo _Sprint 7_ e lo _Sprint 8_ a causa di revisioni interne.
L'introduzione del _Manuale Utente_ e della _Specifica Tecnica_ ha comportato la fisiologica comparsa di alcuni errori ortografici durante gli _Sprint 9_ e _10_, legati alla stesura di questa nuova documentazione. Il team ha prontamente intensificato le procedure di revisione incrociata, correggendo le criticità e riportando il conteggio a zero errori per l'intero corredo documentale.

#pagebreak()
=== Code Coverage (MPC13)
#image("../assets/graficiPdQ/grafico_coverage.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
La metrica _Code Coverage_ non è stata rilevata durante la baseline RTB.

==== Product Baseline (PB)
La metrica non è stata rilevata durante i primi sprint della PB, in quanto il team era focalizzato sulla progettazione. Il valore iniziale rilevato nello _Sprint 7_ si è attestato al 94%, superando la soglia minima del 70%. Negli Sprint successivi la copertura ha mostrato un trend di crescita costante fino a raggiungere il 98%, superando ampiamente la soglia di qualità del 90% imposta nelle configurazioni di test del progetto.

Per cogliere tempestivamente le necessità di miglioramento, il team ha reso questa metrica "attiva" e direttamente vincolante: qualora la _Code Coverage_ scenda sotto la soglia ottimale durante una nuova Pull Request, l'indicatore innesca il blocco automatico del merge tramite le pipeline di GitHub Actions, forzando il programmatore a un'azione correttiva tempestiva prima dell'integrazione del codice.

#pagebreak()
=== Test Success Rate (MPC14)
#image("../assets/graficiPdQ/grafico_test_success.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
La metrica _Test Success Rate_ non è stata rilevata durante la baseline RTB.

==== Product Baseline (PB)
A partire dallo _Sprint 7_, il _Test Success Rate_ ha mostrato un trend di crescita costante, passando dal 96% fino a raggiungere il valore ottimale del 100% nello _Sprint 9_. Il team è riuscito a mantenere stabilmente il valore obiettivo per tutta la fase conclusiva della PB.

#pagebreak()
== Processi Organizzativi
=== Metrics Satisfaction (MPC15)
#image("../assets/graficiPdQ/grafico_ms.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Durante lo _Sprint 1_ il valore si è attestato al di sopra della soglia minima accettabile, indicando una buona ma non ancora ottimale conformità ai criteri di qualità definiti. Nello _Sprint 2_ si è registrata una flessione al di sotto della soglia minima accettabile.

Nello _Sprint 4_, lo sforamento orario e le difficoltà incontrate hanno causato un nuovo calo. Il team prende atto della criticità e si impegna ad adottare misure correttive nella fase successiva per garantire un maggiore rispetto delle metriche definite.

==== Product Baseline (PB)
Nello _Sprint 5_ si è registrata una lieve flessione al di sotto della soglia minima a causa del mancato raggiungimento di alcuni obiettivi. A partire dallo _Sprint 6_, tuttavia, il valore ha intrapreso un trend di crescita costante (dal 95% al 98%), raggiungendo e mantenendo il valore ottimale del 100% a partire dallo _Sprint 9_. Questo andamento progressivo testimonia il consolidamento dei processi qualitativi nel corso della fase conclusiva del progetto.

#pagebreak()
=== Sprint Goal Achievement (MPC16)
#image("../assets/graficiPdQ/grafico_sga.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
Dal grafico è possibile osservare la buona efficacia operativa dimostrata durante lo _Sprint 1_ dal team, che è riuscito a completare gli obiettivi prefissati quasi nella loro interezza. Durante lo _Sprint 2_, invece, la metrica ha subito una flessione poiché gli obiettivi prefissati non sono stati pienamente raggiunti.

==== Product Baseline (PB)
La PB è iniziata con una criticità nello _Sprint 5_, dove lo _Sprint Goal Achievement_ è sceso al 68%, al di sotto della soglia minima accettabile dell'80%. Il team ha reagito tempestivamente rivedendo, in particolare, la granularità dei task: tale intervento ha innescato un recupero progressivo e costante dell'efficacia negli Sprint successivi (con valori dal 93% al 97%), fino al pieno raggiungimento degli obiettivi (100%).

#pagebreak()
=== Copertura Requisiti Obbligatori (MPD01)
#image("../assets/graficiPdQ/grafico_req_obbligatori.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
La metrica _Copertura dei Requisiti Obbligatori_ non è stata rilevata durante la baseline RTB.

==== Product Baseline (PB)
Il mancato raggiungimento del 100% a partire dallo _Sprint 7_ è ascrivibile alla scelta strategica di declassare alcuni requisiti inizialmente obbligatori a opzionali, concentrando le risorse sugli obiettivi core del prodotto.

#pagebreak()
=== Failure Density - Availability (MPD02 e MPD03)

==== Requirements and Technology Baseline (RTB)
Le metriche _Failure Density_ e _Availability_ non sono state rilevate durante la baseline RTB.

==== Product Baseline (PB)
La _Failure Density_ e l'_Availability_ sono metriche che richiedono un periodo di esercizio prolungato del sistema in produzione per poter essere misurate in modo affidabile. Il prodotto _Code Guardian_, non essendo ancora in esercizio continuo, non dispone di un campione temporale sufficiente per determinare valori statisticamente significativi.

#pagebreak()
=== Comment Density (MPD04)
#image("../assets/graficiPdQ/grafico_comment_density.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
La metrica _Comment Density_ non è stata rilevata durante la baseline RTB.

==== Product Baseline (PB)
A partire dallo _Sprint 7_, la _Comment Density_ si è attestata tra il 21% e il 23%, rientrando stabilmente nel range ottimale definito (15% - 25%).

#pagebreak()
=== Cyclomatic Complexity (MPD05)
#image("../assets/graficiPdQ/grafico_cyclomatic_complexity.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
La metrica _Cyclomatic Complexity_ non è stata rilevata durante la baseline RTB.

==== Product Baseline (PB)
A partire dallo _Sprint 7_, la _Cyclomatic Complexity_ media si è attestata su valori compresi tra 9 e 6, rimanendo ampiamente entro la soglia ottimale di V(G) ≤ 10. Il progressivo abbassamento del valore testimonia l'efficacia delle attività di refactoring e la scomposizione del codice in metodi granulari e focalizzati.

#pagebreak()
=== Coupling (MPD06)
#image("../assets/graficiPdQ/grafico_accoppiamento.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
La metrica _Coupling_ non è stata rilevata durante la baseline RTB.

==== Product Baseline (PB)
Dallo _Sprint 7_, il valore di _Coupling_ si è attestato tra 3 e 2, in pieno rispetto della soglia ottimale (≤ 3). Il rigoroso utilizzo dell'_Architettura Esagonale_ e l'Inversione delle Dipendenze tramite _Porte_ hanno permesso di mantenere un basso grado di accoppiamento tra i moduli.

#pagebreak()
=== Vulnerability Detection (MPD07)
#image("../assets/graficiPdQ/grafico_vulnerabilita.png", height: 50%)

==== Requirements and Technology Baseline (RTB)
La metrica _Vulnerability Detection_ non è stata rilevata durante la baseline RTB.

==== Product Baseline (PB)
La scansione delle vulnerabilità ha registrato costantemente zero vulnerabilità critiche rilevate, rispettando la soglia ottimale definita nel piano. Il risultato è attribuibile all'adozione di pratiche di secure coding e all'utilizzo di librerie aggiornate.

#pagebreak()

= Miglioramento Continuo

Il processo di miglioramento continuo rappresenta il motore evolutivo del *Way of Working* del gruppo Skarab Group. Non ci si limita a correggere gli errori nel codice, ma si punta a ottimizzare sistematicamente i processi organizzativi e di supporto per prevenire la ricorrenza delle anomalie.

La strategia adottata implementa rigorosamente il ciclo di Deming (PDCA), integrandosi con le iterazioni previste dalla metodologia #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agile")[#def("Agile")]:

- *Plan (Pianificazione):* Definizione degli obiettivi di qualità e delle metriche e pianificazione delle attività.
- *Do (Esecuzione):* Svolgimento delle attività di sviluppo e gestione durante lo Sprint.
- *Check (Controllo):* Al termine di ogni iterazione si misurano i valori delle metriche e si confrontano con le soglie attese.
- *Act (Azione):* Qualora si rilevino scostamenti negativi, vengono definite *Azioni Correttive* che modificano le Norme di Progetto, diventando operative dallo Sprint successivo.

== Azioni di Miglioramento Intraprese
Di seguito sono riportate le criticità emerse e le relative azioni correttive, suddivise per ambito di intervento.

#improvement_table(
  [Storico delle azioni di miglioramento (Periodo RTB)],
  (
    // --- CATEGORIA: COMUNICAZIONE ---
    table.cell(colspan: 3, fill: luma(200), align: center)[*Area: Comunicazione*],
    [*AM01*],
    [*Inefficienza nella Comunicazione Interna* \
      Si sono verificati rallentamenti operativi causati da una comunicazione asincrona poco reattiva. Il team ha preso piena consapevolezza della scarsa efficacia delle modalità iniziali, che generavano colli di bottiglia.],
    [*Ristrutturazione dei Flussi Informativi* \
      I membri coinvolti hanno analizzato le cause (Root Cause Analysis) e compreso la lezione. Sono stati istituiti canali dedicati alle urgenze e aumentata la frequenza dei micro-allineamenti per sbloccare i task pendenti.],
    // --- CATEGORIA: RUOLI E PIANIFICAZIONE ---
    table.cell(colspan: 3, fill: luma(200), align: center)[*Area: Ruoli e Pianificazione*],
    [*AM02*],
    [*Pressione sulle Scadenze (Time-to-Result)* \
      La necessità di produrre risultati tangibili (PoC) in tempi brevi per la revisione RTB rischiava di non essere soddisfatta con la pianificazione lineare iniziale.],
    [*Ridistribuzione del Budget Orario* \
      È stata effettuata una rimodulazione delle ore pianificate, allocando maggiori risorse sulle attività critiche di sviluppo e riducendo temporaneamente quelle a basso valore aggiunto, per garantire il rilascio puntuale.],
    // --- CATEGORIA: STRUMENTI E TECNOLOGIE ---
    table.cell(colspan: 3, fill: luma(200), align: center)[*Area: Strumenti e Tecnologie*],
    [*AM03*],
    [*Disomogeneità nella Documentazione* \
      La stesura parallela dei documenti da parte di più persone ha inizialmente generato incoerenze stilistiche e ripetizioni ridondanti o formattate diversamente.],
    [*Adozione di Template e Funzioni Comuni* \
      Per garantire coerenza, sono state ingegnerizzate le funzioni di typesetting (in Typst) e creati template condivisi. Questo forza l'uniformità visiva e strutturale indipendentemente dall'autore della sezione.],
    [*AM04*],
    [*Overhead Nuovi Strumenti* \
      L'adozione contemporanea di nuovi strumenti (Jira, GitHub, Typst) ha comportato un rallentamento iniziale dovuto alla curva di apprendimento.],
    [*Consolidamento della Toolchain* \
      Dopo la fase di rodaggio, l'uso degli strumenti è stato standardizzato nelle Norme di Progetto. La corretta rendicontazione è ora integrata nel flusso di lavoro quotidiano, trasformando l'overhead iniziale in un guadagno di efficienza.],
  ),
)

#improvement_table(
  [Storico delle azioni di miglioramento (Periodo PB)],
  (
    // --- CATEGORIA: TECNOLOGIE E ARCHITETTURA ---
    table.cell(colspan: 3, fill: luma(200), align: center)[*Area: Tecnologie e Architettura*],
    [*AM05*],
    [*Complessità Architettura Serverless* \
      Durante la prima fase di progettazione, l'adozione di AWS Step Functions e Lambda per l'orchestrazione degli agenti si è rivelata eccessivamente complessa.],
    [*Cambio di Architettura* \
      Il team ha deciso tempestivamente di scartare la soluzione Serverless, internalizzando la logica di orchestrazione direttamente nell'esagono del microservizio di analisi.],
    [*AM06*],
    [*Inconsistenze d'Integrazione del Codice* \
      Con l'avvio della codifica distribuita, sono emersi rischi legati a disomogeneità implementative e build fallite al momento del merge sul repository condiviso.],
    [*Adozione di Pipeline CI/CD* \
      Sono state introdotte e rese vincolanti pipeline di Continuous Integration tramite GitHub Actions, automatizzando linting, formattazione e test.],
    [*AM07*],
    [*Difficoltà nel Deployment* \
      L'inesperienza pregressa del team con i servizi AWS ha reso le configurazioni di deployment più dispendiose in termini di tempo rispetto a quanto stimato inizialmente.],
    [*Studio Mirato e Containerizzazione* \
      Per superare questo ostacolo logistico, il team ha dedicato sessioni di studio alla documentazione AWS e ha standardizzato gli ambienti tramite l'uso di container (Docker).],
    // --- CATEGORIA: ORGANIZZAZIONE DEL TEAM ---
    table.cell(colspan: 3, fill: luma(200), align: center)[*Area: Organizzazione del Team*],
    [*AM08*],
    [*Colli di Bottiglia nel Coordinamento Globale* \
      La gestione contemporanea dell'intera codebase da parte di tutto il team generava confusione sui task, sovrapposizioni e rallentamenti nelle decisioni di basso livello.],
    [*Divisione in Sottogruppi Specializzati* \
      Il team si è diviso in tre sottogruppi (Frontend, Microservizio Account, Microservizio Analisi). Questo ha snellito le decisioni interne, aumentando il parallelismo e la responsabilità individuale.],
  ),
)

= Conclusioni

L'attività di miglioramento continuo per il progetto _Code Guardian_ si è rivelata non solo una pratica formale, ma il vero motore per garantire la qualità finale del prodotto. Durante la RTB, l'analisi delle metriche ha evidenziato come l'avvio del progetto abbia scontato il "prezzo d'ingresso" della curva di apprendimento dei nuovi strumenti e del necessario assestamento delle dinamiche comunicative. Le azioni correttive iniziali (*AM01*, *AM03*) hanno permesso di superare quella prima frammentazione operativa.

Con l'ingresso nella PB, la complessità tecnica ed organizzativa è aumentata. Le nuove criticità non riguardavano più l'assestamento iniziale, ma l'implementazione pratica. In questo contesto, il ciclo di _Plan-Do-Check-Act_ ha dimostrato la sua reale efficacia: la decisione di cambiare tempestivamente l'architettura scartando il Serverless (*AM05*) ha salvaguardato le scadenze, l'imposizione di rigorose pipeline CI/CD (*AM06*) ha arginato il debito tecnico e la standardizzazione del deployment (*AM07*) ha mitigato le complessità del cloud.

Dal punto di vista organizzativo, la transizione verso sottogruppi specializzati (*AM08*) ha trasformato il gruppo in un team di sviluppo maturo ed efficiente.
