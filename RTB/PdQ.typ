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
#let versione = "v0.10.0"

#titlePage("Piano di Qualifica", versione)
#set heading(numbering: "1.1.1")
#set page(numbering: "1", header: header("Piano di Qualifica"), footer: footer())
#let history = (
  (
    "2026/02/25",
    "0.10.0",
    "Aggiunta Test di Unità mancanti",
    members.alice,
  ),
  (
    "2026/02/06",
    "0.9.0",
    "Test di Accettazione e rielaborazione Test di Sistema",
    members.alice,
  ),
  (
    "2026/01/27",
    "0.8.1",
    "Aggiunta grafico BV-SV, revisione Metodi di Testing e aggiunta test, modifiche minori al documento",
    members.alice,
  ),
  (
    "2026/01/22",
    "0.7.0",
    "Grafici CPI-SPI, EAC, RSI e SGA",
    members.alice,
  ),
  (
    "2026/01/21",
    "0.6.0",
    "Cruscotto di valutazione, grafico PV-AC-EV",
    members.alice,
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
Il presente documento descrive il #def[Piano di Qualifica] relativo al progetto #def[Code Guardian], commissionato dall’azienda #def[Var Group] e realizzato dal gruppo di studenti #def[Skarab Group] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

L’obiettivo del progetto è lo sviluppo di una piattaforma ad #def[Agenti] per l’#def[audit] e la #def[remediation] automatizzata delle vulnerabilità nei repository GitHub, in conformità con quanto definito dal capitolato *C2*.

== Finalità del Documento
Il Piano di Qualifica definisce l’impostazione metodologica per la gestione della qualità, specificando come il gruppo intenda prevenire, rilevare e correggere i difetti.

Il documento costituisce il riferimento primario per il #def[Responsabile] e per i #def[Verificatori], strutturando gli obiettivi nelle seguenti macro-aree:

- *Piano della Qualità (Quality Assurance)*: definizione della strategia di gestione della qualità, identificando gli standard di riferimento (in particolare #def[ISO/IEC 25010]), le metriche di misurazione e le relative soglie di accettazione/ottimalità.
- *Controllo di Qualità (Quality Control)*: pianificazione operativa delle attività di #def[Verifica] (analisi statica, test dinamici) per garantire la correttezza tecnica degli artefatti prodotti.
- *Validazione di Prodotto*: definizione delle procedure necessarie per accertare la conformità del sistema rispetto alle aspettative degli #def[Stakeholder] e ai requisiti del capitolato.
- *Miglioramento Continuo*: applicazione di meccanismi retroattivi (basati sul ciclo #def[Plan-Do-Check-Act]) che utilizzano i risultati delle misurazioni per ottimizzare i processi e il *Way of Working* in corso d'opera.

== Traguardi Qualitativi
L'assicurazione della qualità segue l'approccio incrementale del progetto, fissando obiettivi specifici per le due principali milestones:

=== Revisione dei Requisiti e della Tecnologia (RTB)
Per la milestone RTB (*06/02/2026*), le attività di qualità si concentrano sulla correttezza formale e sulla fattibilità tecnica:
- *Qualità dei Documenti*: Verifica approfondita della documentazione (Analisi dei Requisiti, PdP, NdP) tramite analisi statica e walkthrough, per garantire assenza di ambiguità e coerenza interna (Indice di Gulpease).
- *Qualità del Prototipo (#def[PoC])*: L'attività di verifica è focalizzata esclusivamente sulla *dimostrazione della fattibilità tecnica* (Technology Baseline), con particolare attenzione all'interazione Agenti-LLM. Il testing in questa fase ha valore _sperimentale e propedeutico_: esso funge da caso di studio per calibrare le metriche e validare le strategie di verifica che saranno poi applicate in modo sistematico ed estensivo sul #def[MVP].

=== Revisione di Accettazione (Product Baseline – PB)
Per il rilascio finale (*21/03/2026*), il focus si sposta sulla robustezza, sulla copertura e sulla soddisfazione dei requisiti:
- *Qualità del Prodotto (#def[MVP])*: Esecuzione completa dei test di unità, integrazione e sistema. Validazione finale rispetto ai requisiti funzionali e prestazionali del capitolato.
- *Qualità del Codice*: Rispetto dei vincoli di stile, assenza di *code smells* e raggiungimento delle soglie di copertura del codice (Code Coverage) definite nel presente piano.
- *Validazione Utente*: Verifica dell'usabilità tramite test di accettazione (UAT) basati sui casi d'uso principali.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un #def[Glossario] che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.
Le occorrenze dei termini presenti nel Glossario sono evidenziate nel testo mediante apposita formattazione.

Versione aggiornata del Glossario:
#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario]

== Riferimenti

=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la definizione delle strategie di qualità e per le attività di verifica:
- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. #linebreak()
  #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")

- *Norme di Progetto*: Il documento definisce il "Way of Working", stabilendo gli strumenti e le procedure che questo Piano si occupa di misurare. #linebreak()
  #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[Documento interno]

=== Riferimenti Informativi
- *ISO/IEC 25010:2011*: Systems and software engineering — Systems and software Quality Requirements and Evaluation (SQuaRE). #linebreak()
  #link("https://iso25000.com/index.php/en/iso-25000-standards/iso-25010")

- *ISO/IEC 12207:2008*: Systems and software engineering — Software life cycle processes. #linebreak()
  #link("https://ieeexplore.ieee.org/document/4475826")

- *Dispense del corso di Ingegneria del Software – Qualità del software* #linebreak()
  #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")

#pagebreak()
== Qualità di Processo

La garanzia della qualità del prodotto finale è intrinsecamente legata alla qualità dei processi produttivi che lo generano. Per il progetto #def("Code Guardian"), la gestione dei processi mira a rendere il #def("Way of Working") sostenibile, tracciabile e soggetto a miglioramento continuo attraverso l'applicazione del ciclo #def("PDCA").

=== Centralizzazione delle Metriche e Obiettivi

Il presente documento costituisce il riferimento unico, autoritativo e analitico per la gestione della qualità del progetto #def("Code Guardian"). Mentre le #def("Norme di Progetto") definiscono le procedure operative, gli strumenti e le responsabilità per l'estrazione dei dati, il #def("Piano di Qualifica") ha il compito di centralizzare la "scienza della misurazione" del gruppo.

In particolare, ogni metrica qui esposta è corredata da:
- *Identificativo univoco:* (MPC per il processo, MPD per il prodotto);
- *Formulazione matematica:* Per garantire l'oggettività del calcolo;
- *Soglie di Valutazione:* Distinte in "Accettabilità" (requisito minimo per la validazione) e "Ottimalità" (target di eccellenza desiderato).

Ogni scostamento rilevato tra i valori misurati e le soglie qui definite viene analizzato durante le retrospettive di fine #def("Sprint"). Tali evidenze costituiscono la base oggettiva per l'attivazione di azioni correttive o per la ricalibrazione delle soglie stesse, garantendo che il processo di qualità evolva insieme alla maturità del team.

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

_Riferimento: Norme di Progetto, Sezione [Stabilità dei Requisiti]_
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

== Qualità di Prodotto

La qualità di prodotto valuta il software consegnato rispetto ai requisiti e alle caratteristiche intrinseche definite dallo standard #def("ISO/IEC 25010").

=== Adeguatezza Funzionale e Affidabilità
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

=== Manutenibilità e Sicurezza
Data la natura del progetto #def("Code Guardian"), queste metriche rappresentano il valore distintivo del prodotto. Un codice manutenibile e privo di vulnerabilità è condizione necessaria per l'accettazione.

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

= Metodi di Testing
Il processo di testing rappresenta una fase cruciale nello sviluppo del prodotto _CodeGuardian_.

Skarab Group ha adottato un approccio di testing multilivello che copre:

- *Test di Sistema*.
- *Test di Unità*.
- *Test di Accettazione*.
- *Test di Regressione*.
- *Test di Integrazione*.

La definizione dei test e la nomenclatura utilizzata sono presenti all'interno delle #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[#underline[*Norme di Progetto*]]. // inserire sezione
I Test di Regressione e i Test di Integrazione, qui non presenti, verranno identificati durante lo svolgimento delle attività per la _Product Baseline_ (PB).

== Test di Sistema

#show figure: set block(breakable: true)

#figure(
  block(
    breakable: true,
    table(
      fill: (x, y) => if (y == 0) {
        luma(63.75%)
      } else if (calc.gcd(y, 2) == 2) {
        luma(220)
      },
      columns: (1.5fr, 4fr, 1.7fr),
      inset: 10pt,
      table.header([*ID Test*], [*Descrizione*], [*UC Riferimento*]),

      // --- REGISTRAZIONE (UC1) ---
      [TS-1],
      [Verificare la corretta creazione di un account CodeGuardian a seguito dell'inserimento di dati validi.],
      [UC1],

      [TS-1.1],
      [Verificare la validazione dello username rispetto ai vincoli di formato (alfanumerico, 4-20 caratteri).],
      [UC1.1.1],

      [TS-1.2],
      [Verificare l'inibizione della registrazione in caso di username già associato a un account esistente.],
      [UC1.1.2],

      [TS-1.3], [Verificare la validazione sintattica dell'indirizzo email secondo gli standard previsti.], [UC1.2.1],
      [TS-1.4],
      [Verificare l'inibizione della registrazione in caso di email già associata a un account esistente.],
      [UC1.2.2],

      [TS-1.5], [Verificare la validazione della password rispetto ai criteri di complessità (sicurezza).], [UC1.3.1],
      [TS-1.6],
      [Verificare la segnalazione di errore in caso di invio del modulo con campi obbligatori vuoti.],
      [UC1.0.1],

      // --- AUTENTICAZIONE (UC2) ---
      [TS-2], [Verificare l'accesso alle funzionalità riservate tramite inserimento di credenziali corrette.], [UC2],
      [TS-2.1], [Verificare la validazione del formato delle credenziali in fase di login.], [UC2.1.1, UC2.2.1],
      [TS-2.2], [Verificare la segnalazione di errore per identificativo (username) non presente a sistema.], [UC2.1.2],
      [TS-2.3],
      [Verificare la segnalazione di errore in caso di password non corrispondente all'identificativo fornito.],
      [UC2.2.2],

      [TS-2.4], [Verificare l'inibizione dell'accesso in caso di modulo di login incompleto.], [UC2.0.1],

      // --- COLLEGAMENTO GITHUB (UC3) ---
      [TS-3], [Verificare il corretto completamento del flusso di autorizzazione OAuth con GitHub.], [UC3],
      [TS-3.1],
      [Verificare l'annullamento della procedura a seguito del rifiuto del reindirizzamento esterno.],
      [UC3.1.1],

      [TS-3.2],
      [Verificare la gestione degli errori tecnici durante lo scambio dei parametri di autorizzazione.],
      [UC3.2.1],

      [TS-3.3],
      [Verificare l'inibizione del collegamento se il profilo GitHub risulta già associato a un altro utente.],
      [UC3.2.2],

      [TS-3.4], [Verificare la gestione del mancato consenso dell'utente sulla piattaforma GitHub.], [UC3.2.3],

      // --- RICHIESTA ANALISI (UC4) ---
      [TS-4], [Verificare la corretta presa in carico di una richiesta di analisi per un repository GitHub.], [UC4],
      [TS-4.1],
      [Verificare la segnalazione dell'informativa se l'analisi risulta già aggiornata rispetto ai dati remoti.],
      [UC4.0.1],

      [TS-4.2],
      [Verificare la segnalazione dell'informativa se esiste un'analisi già pendente per lo stesso repository.],
      [UC4.0.2],

      [TS-4.3],
      [Verificare l'inibizione della richiesta se non viene selezionata almeno un'area di interesse.],
      [UC4.1.1],

      // --- VISUALIZZAZIONE LISTA (UC5) ---
      [TS-5],
      [Verificare la navigazione e la corretta visualizzazione dell'elenco dei repository analizzati.],
      [UC5, UC5.1],

      [TS-5.1],
      [Verificare la visualizzazione dell'informativa "lista vuota" in assenza di repository analizzati.],
      [UC5.0.1],

      // --- VISUALIZZAZIONE REPORT (UC6) ---
      [TS-6], [Verificare il caricamento della dashboard di dettaglio a seguito della selezione di un report.], [UC6],
      [TS-6.1],
      [Verificare l'aggiornamento dinamico delle sezioni visibili tramite i filtri (Codice, Sicurezza, Doc.).],
      [UC6.1],

      [TS-6.2], [Verificare l'inibizione del rendering e la notifica se non viene selezionata alcuna area.], [UC6.1.1],
      [TS-6.3],
      [Verificare l'esposizione corretta dei metadati di audit (timestamp, hash commit, richiedente).],
      [UC6.2.1, UC6.2.2, UC6.2.3],

      [TS-6.4],
      [Verificare la visualizzazione del messaggio di assenza di criticità se non vi sono remediation.],
      [UC6.3.1.1],

      // --- CONFRONTO STORICO (UC7) ---
      [TS-7], [Verificare la generazione della vista comparativa previo inserimento di un intervallo valido.], [UC7],
      [TS-7.1], [Verificare la segnalazione di errore in caso di invio con campi temporali incompleti.], [UC7.0.1],
      [TS-7.2], [Verificare la segnalazione di assenza dati se non vi sono report nel periodo scelto.], [UC7.0.2],
      [TS-7.3], [Verificare la segnalazione di errore in caso di data inizio successiva alla data fine.], [UC7.0.3],
      [TS-7.4],
      [Verificare l'inibizione della richiesta se l'intervallo supera l'ampiezza massima (12 mesi).],
      [UC7.0.4],

      // --- METRICHE COMPARATIVE (UC8) ---
      [TS-8], [Verificare la corretta generazione dei grafici di andamento e della tabella comparativa.], [UC8],
      [TS-8.1], [Verificare l'esposizione dei dati puntuali all'interazione (click/hover) con il grafico.], [UC8],
      [TS-8.2], [Verificare il calcolo e la visualizzazione degli indicatori di trend in tabella.], [UC8],

      // --- ANALISI DEL CODICE (UC9) ---
      [TS-9.1], [Verificare l'esposizione dei rilievi di analisi statica (bug, smell, vulnerabilità).], [UC9.1],
      [TS-9.2], [Verificare la visualizzazione delle metriche di copertura dei test di unità.], [UC9.2],
      [TS-9.3], [Verificare la visualizzazione dell'informativa di esito positivo per l'area codice.], [UC9.3.1],

      // --- ANALISI SICUREZZA (UC10) ---
      [TS-10.1], [Verificare l'esposizione delle vulnerabilità delle librerie e conformità OWASP.], [UC10.1, UC10.2],
      [TS-10.2], [Verificare la visualizzazione dell'informativa di assenza criticità di sicurezza.], [UC10.3.1],

      // --- ANALISI DOCUMENTAZIONE (UC11) ---
      [TS-11.1],
      [Verificare la visualizzazione degli errori sintattici e della completezza documentale.],
      [UC11.1, UC11.2],

      [TS-11.2], [Verificare la visualizzazione dell'informativa di assenza criticità documentali.], [UC11.3.1],

      // --- RANKING (UC12) ---
      [TS-12], [Verificare la generazione della graduatoria ordinata per punteggio di qualità globale.], [UC12],
      [TS-12.1], [Verificare la segnalazione di assenza dati se l'utente non ha mai effettuato analisi.], [UC12.1],

      // --- DISCONNESSIONE GITHUB (UC13) ---
      [TS-13], [Verificare l'effettiva revoca dell'associazione e dei token dell'account GitHub.], [UC13],

      // --- ESPORTAZIONE (UC14) ---
      [TS-14], [Verificare il corretto download del report nel formato selezionato (PDF/JSON).], [UC14, UC14.2],
      [TS-14.1], [Verificare la segnalazione di errore se l'utente non seleziona alcun formato.], [UC14.1.1],

      // --- MODIFICA PASSWORD (UC15) ---
      [TS-15.1], [Verificare la segnalazione di errore in caso di password corrente omessa.], [UC15.1.1],
      [TS-15.2], [Verificare la segnalazione di errore in caso di password corrente errata.], [UC15.1.2],
      [TS-15.3],
      [Verificare la segnalazione di errore se la nuova password è assente o non conforme.],
      [UC15.2.1, UC15.2.2],

      [TS-15.4], [Verificare la segnalazione di errore se la nuova password coincide con la precedente.], [UC15.2.3],
      [TS-15.5], [Verificare la corretta persistenza e la notifica di successo post-modifica.], [UC15.3, UC15.4],

      // --- VISUALIZZAZIONE SINGOLA REMEDIATION GENERICA (UC16) ---
      [TS-16], [Verificare la corretta visualizzazione dei dettagli di una remediation selezionata.], [UC16],

      // --- VERIFICA ACCESSIBILITÀ REPOSITORY (UC17) ---
      [TS-17],
      [Verificare che l'Orchestratore verifichi con successo l'accessibilità di un repository pubblico tramite le API GitHub.],
      [UC17],

      [TS-17.1], [Verificare la gestione dell'errore di comunicazione con GitHub.], [UC17.1.1],
      [TS-17.2],
      [Verificare che l'Orchestratore tenti l'accesso tramite credenziali o token OAuth in caso di repository privato non raggiungibile pubblicamente.],
      [UC17.2.1],

      [TS-17.3],
      [Verificare che l'Orchestratore annulli l'audit se tutti i metodi di accesso falliscono.],
      [UC17.2.1.1],

      // --- ACCETTAZIONE/RIFIUTO REMEDIATION GENERICA (UC18, UC19) ---
      [TS-18], [Verificare che l'Utente Avanzato possa accettare una singola remediation.], [UC18],

      [TS-19], [Verificare che l'Utente Avanzato possa rifiutare una singola remediation.], [UC19],

      // --- CREAZIONE RACCOLTA REPORT (UC20) ---
      [TS-20],
      [Verificare la corretta creazione di una raccolta di report a seguito dell'inserimento di nome e URL repository validi.],
      [UC20],

      [TS-20.1],
      [Verificare la segnalazione di errore in caso di tentativo di conferma con campi obbligatori non popolati.],
      [UC20.0.1],

      [TS-20.2],
      [Verificare la corretta acquisizione del nome identificativo della raccolta nel campo dedicato.],
      [UC20.1],

      [TS-20.3],
      [Verificare la segnalazione di errore in caso di nome raccolta non conforme ai vincoli alfanumerici o di lunghezza.],
      [UC20.1.1],

      [TS-20.4], [Verificare la corretta acquisizione dell'URL del repository GitHub nel campo dedicato.], [UC20.2],
      [TS-20.5],
      [Verificare la segnalazione di errore in caso di URL sintatticamente non valido (protocollo o dominio errati).],
      [UC20.2.1],

      [TS-20.6],
      [Verificare la segnalazione di errore in caso di repository non esistente o non accessibile tramite le API GitHub.],
      [UC20.2.2],

      [TS-20.7],
      [Verificare la segnalazione di errore in caso di campo URL non popolato al momento della conferma.],
      [UC20.2.3],

      [TS-20.8], [Verificare la corretta acquisizione della descrizione della raccolta.], [UC20.3],

      // --- AVVIO ANALISI (UC21) ---
      [TS-21],
      [Verificare che l'Orchestratore avvii le richieste di analisi verso tutti gli strumenti esterni (Codice, Sicurezza, Doc.).],
      [UC21],

      [TS-21.1],
      [Verificare la corretta clonazione del repository nell'ambiente AWS e la disponibilità del codice sorgente per l'elaborazione.],
      [UC21.1],

      [TS-21.2],
      [Verificare che l'Orchestratore interrompa il processo e liberi le risorse allocate in caso di errore durante la clonazione.],
      [UC21.1.1],

      [TS-21.3],
      [Verificare che l'Orchestratore inoltri i file sorgente allo strumento di analisi del codice al completamento della clonazione.],
      [UC21.2],

      [TS-21.4],
      [Verificare che l'Orchestratore inoltri i file di documentazione allo strumento di analisi documentale.],
      [UC21.3],

      [TS-21.5],
      [Verificare che l'Orchestratore inoltri la codebase allo strumento di analisi della sicurezza.],
      [UC21.4],

      // --- PERSISTENZA STATO ANALISI (UC22) ---
      [TS-22],
      [Verificare che lo stato dell'analisi venga registrato correttamente come "pending" nella persistenza a seguito dell'inizializzazione degli strumenti.],
      [UC22],

      [TS-22.1],
      [Verificare che, in caso di errore critico nella scrittura dello stato, l'Orchestratore notifichi l'utente.],
      [UC22.0.1],

      // --- RECUPERO RISULTATI (UC23) ---
      [TS-23],
      [Verificare che l'Orchestratore recuperi correttamente i risultati al completamento delle analisi degli strumenti esterni.],
      [UC23],

      [TS-23.1],
      [Verificare che il sistema proceda con i soli dati disponibili e aggiorni il database in caso di risultati parziali per timeout o errore di uno strumento.],
      [UC23.0.1],

      [TS-23.2],
      [Verificare il corretto controllo periodico dello stato delle attività degli strumenti e il rilevamento del completamento.],
      [UC23.1],

      [TS-23.3], [Verificare che i file dei risultati vengano acquisiti e validati prima dell'utilizzo.], [UC23.2],

      // --- GENERAZIONE REPORT (UC24) ---
      [TS-24],
      [Verificare la corretta aggregazione dei dati provenienti dai diversi strumenti (Codice, Sicurezza, Doc.) in un unico report strutturato.],
      [UC24],

      [TS-24.2], [Verificare che il report venga validato prima del salvataggio.], [UC24],

      // --- SALVATAGGIO REPORT (UC25) ---
      [TS-25],
      [Verificare che il report finale venga archiviato permanentemente e lo stato dell'analisi venga aggiornato a "completed".],
      [UC25],

      [TS-25.1],
      [Verificare la notifica di errore all'utente in caso di fallimento del salvataggio del report.],
      [UC25.0.1],

      // --- NOTIFICA COMPLETAMENTO (UC26, UC27) ---
      [TS-26], [Verificare l'invio della notifica di completamento dell'analisi del repository.], [UC26],

      [TS-26.1],
      [Verificare che il fallimento della notifica venga registrato nei log interni anche in caso di errore di invio.],
      [UC26.0.1],

      [TS-27],
      [Verificare la corretta ricezione della notifica di fine analisi attraverso i canali configurati dall'utente.],
      [UC27],

      [TS-27.1],
      [Verificare che i risultati dell'analisi siano consultabili nella dashboard anche in assenza di ricezione della notifica.],
      [UC27.0.1],

      // --- NOTIFICA ERRORE CRITICO (UC28) ---
      [TS-28],
      [Verificare l'invio dell'avviso di errore critico all'utente in caso di interruzione imprevista del processo.],
      [UC28],

      [TS-28.1],
      [Verificare che lo stato di fallimento sia visibile nella dashboard indipendentemente dalla ricezione dell'avviso di errore.],
      [UC28.0.1],

      // --- GESTIONE OAUTH GITHUB (UC29) ---
      [TS-29],
      [Verificare lo scambio corretto del codice OAuth temporaneo con un token di accesso persistente e cifrato associato al profilo utente.],
      [UC29],

      [TS-29.1],
      [Verificare l'annullamento del collegamento e la notifica all'utente in caso di codice OAuth scaduto o non valido.],
      [UC29.0.1],

      // --- VISUALIZZAZIONE REMEDIATION SPECIFICHE (UC30, UC31, UC32) ---
      [TS-30],
      [Verificare la corretta visualizzazione del dettaglio di una singola remediation dell'area codice.],
      [UC30],

      [TS-31],
      [Verificare la corretta visualizzazione del dettaglio di una singola remediation dell'area sicurezza.],
      [UC31],

      [TS-32],
      [Verificare la corretta visualizzazione del dettaglio di una singola remediation dell'area documentazione.],
      [UC32],

      // --- ACCETTAZIONE REMEDIATION CODICE (UC33) ---
      [TS-33],
      [Verificare l'applicazione della remediation del codice alla codebase e l'aggiornamento dello stato a "eseguita" nella dashboard.],
      [UC33],

      [TS-33.1],
      [Verificare la notifica di fallimento all'utente e l'invarianza della codebase in caso di errore durante l'applicazione.],
      [UC33.0.1],

      // --- RIFIUTO REMEDIATION CODICE (UC34) ---
      [TS-34],
      [Verificare che il rifiuto di una remediation del codice aggiorni lo stato a "rifiutata" senza apportare modifiche al repository.],
      [UC34],

      // --- ACCETTAZIONE REMEDIATION SICUREZZA (UC35) ---
      [TS-35],
      [Verificare l'applicazione delle patch di sicurezza previste dalla remediation accettata e l'aggiornamento dello stato a "eseguita" nella dashboard.],
      [UC35],

      [TS-35.1],
      [Verificare la notifica di fallimento all'utente in caso di errore durante l'applicazione della remediation di sicurezza.],
      [UC35.0.1],

      // --- RIFIUTO REMEDIATION SICUREZZA (UC36) ---
      [TS-36],
      [Verificare che il rifiuto di una remediation di sicurezza aggiorni lo stato a "rifiutata" senza modificare il repository.],
      [UC36],

      // --- ACCETTAZIONE REMEDIATION DOCUMENTAZIONE (UC37) ---
      [TS-37],
      [Verificare l'applicazione delle modifiche documentali previste dalla remediation accettata e l'aggiornamento dello stato a "eseguita" nella dashboard.],
      [UC37],

      [TS-37.1],
      [Verificare la notifica di fallimento all'utente e l'invarianza della documentazione in caso di errore durante l'applicazione.],
      [UC37.0.1],

      // --- RIFIUTO REMEDIATION DOCUMENTAZIONE (UC38) ---
      [TS-38],
      [Verificare che il rifiuto di una remediation documentale aggiorni lo stato a "rifiutata" e non apporti modifiche ai file del repository.],
      [UC38],

      // --- ANALISI REPOSITORY PRIVATI (UC39) ---
      [TS-39],
      [Verificare la corretta presa in carico di una richiesta di analisi per un repository privato da parte di un Utente Avanzato.],
      [UC39],

      // --- CATALOGO REPOSITORY PRIVATI (UC40, UC41, UC42) ---
      [TS-40],
      [Verificare il corretto inserimento di un repository privato nel catalogo personale dell'Utente Avanzato.],
      [UC40],

      [TS-40.1],
      [Verificare la segnalazione di duplicazione in caso di inserimento di un URL già presente nel catalogo personale.],
      [UC40.0.1],

      [TS-41],
      [Verificare la corretta visualizzazione del catalogo dei repository privati inseriti dall'Utente Avanzato.],
      [UC41],

      [TS-41.1],
      [Verificare la visualizzazione dell'informativa specifica quando il catalogo privato risulta vuoto.],
      [UC41.0.1],

      [TS-42],
      [Verificare la corretta rimozione di un repository dal catalogo privato previa conferma esplicita dell'utente.],
      [UC42, UC42.1],

      [TS-42.1], [Verificare che l'annullamento della rimozione mantenga intatto il catalogo privato.], [UC42.1.1],

      // --- GESTIONE PERMESSI (UC43, UC44, UC45) ---
      [TS-43],
      [Verificare la corretta visualizzazione dell'elenco dei profili autorizzati alla consultazione dei report per un repository privato selezionato.],
      [UC43],

      [TS-43.1],
      [Verificare la visualizzazione dell'informativa di assenza utenti autorizzati quando la lista è vuota.],
      [UC43.0.1],

      [TS-44],
      [Verificare la corretta aggiunta di un utente autorizzato tramite username o email con validazione del profilo nel sistema.],
      [UC44, UC44.1],

      [TS-44.1],
      [Verificare la segnalazione di errore per formato identificativo non valido, utente inesistente, utente già autorizzato e campo vuoto.],
      [UC44.1.1, UC44.1.2, UC44.1.3, UC44.1.4],

      [TS-45],
      [Verificare la corretta revoca dei permessi di consultazione per un utente precedentemente autorizzato, previa conferma del proprietario.],
      [UC45, UC45.1],

      // --- RIMOZIONE RACCOLTA (UC46) ---
      [TS-46],
      [Verificare la corretta rimozione di una raccolta di report senza che i singoli report in essa contenuti vengano eliminati.],
      [UC46, UC46.1],

      [TS-46.1],
      [Verificare che l'annullamento dell'operazione mantenga intatta la raccolta nel profilo utente.],
      [UC46.1.1],

      // --- CANCELLAZIONE PROFILO (UC47) ---
      [TS-47],
      [Verificare la corretta cancellazione del profilo CodeGuardian a seguito della verifica dell'identità tramite password e della conferma definitiva dell'utente.],
      [UC47, UC47.1],

      [TS-47.1],
      [Verificare che a seguito della cancellazione vengano rimossi i dati personali e le associazioni OAuth e che le credenziali precedenti risultino invalide.],
      [UC47],
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
      fill: (x, y) => if (y == 0) {
        luma(63.75%)
      } else if (calc.gcd(y, 2) == 2) {
        luma(220)
      },
      columns: (1.2fr, 1.2fr, 3.5fr, 3.1fr),
      inset: 10pt,
      align: horizon,
      table.header([*ID Test*], [*Requisito*], [*Descrizione Test*], [*Risultato Atteso*]),

      // --- REGISTRAZIONE (UC1) ---
      [TU-1.1],
      [FROb1],
      [Verifica rendering del componente di creazione account.],
      [Caricamento corretto del modulo di registrazione.],

      [TU-1.2],
      [FROb2],
      [Verifica predisposizione comando di conferma nel modulo di registrazione.],
      [Pulsante di conferma presente e funzionante.],

      [TU-1.3],
      [FROb3],
      [Verifica esecuzione della validazione completa di tutti i campi obbligatori all'invio.],
      [Tutti i controlli vengono eseguiti prima di procedere.],

      [TU-1.4],
      [FROb4],
      [Verifica che la finalizzazione sia consentita solo dopo validazione positiva di tutti i campi.],
      [Blocco della procedura in caso di parametri non validi.],

      [TU-1.5],
      [FROb5],
      [Verifica logica di persistenza dei dati utente nel DB.],
      [Le credenziali vengono scritte correttamente nel database.],

      [TU-1.6],
      [FROb6],
      [Verifica della funzione di hashing: algoritmo sicuro + salt univoco.],
      [La password non è leggibile; l'hash prodotto è coerente con gli standard.],

      [TU-1.7],
      [FROb7],
      [Verifica atomicità della registrazione.],
      [In caso di errore nessun record parziale viene mantenuto nel database.],

      [TU-1.8],
      [FROb8],
      [Verifica visualizzazione messaggio di conferma avvenuta creazione account.],
      [Messaggio di conferma mostrato a seguito di registrazione completata.],

      [TU-1.9],
      [FROb9],
      [Controllo rilevamento campi obbligatori vuoti (null check).],
      [Rilevamento campi vuoti nel modulo di registrazione.],

      [TU-1.10],
      [FROb10],
      [Verifica logica di inibizione e notifica per campi mancanti.],
      [Impossibilità di procedere; messaggio specifico per ogni campo assente.],

      [TU-1.11],
      [FROb11],
      [Verifica input username: vincoli alfanumerici e lunghezza (4-20 caratteri).],
      [Rifiuto di stringhe < 4 o > 20 caratteri o con caratteri non alfanumerici.],

      [TU-1.12],
      [FROb12],
      [Query di verifica unicità dello username nel database.],
      [Identificazione di collisioni con account già esistenti.],

      [TU-1.13],
      [FROb13],
      [Verifica vincolo di unicità lato persistenza su username.],
      [Il sistema rileva la duplicazione e annulla la registrazione.],

      [TU-1.14],
      [FROb14],
      [Verifica notifica username già in uso a seguito di violazione unicità.],
      [Feedback visivo immediato per username non disponibile.],

      [TU-1.15],
      [FROb15],
      [Verifica inibizione e trigger notifica errore formato username non conforme.],
      [Comparsa del messaggio di errore; procedura inibita.],

      [TU-1.16],
      [FROb16],
      [Verifica input email e validazione sintattica secondo standard RFC.],
      [Accettazione di formati standard (user\@domain.ext).],

      [TU-1.17],
      [FROb17],
      [Verifica rifiuto di email con spazi o prive del carattere "\@".],
      [Email malformate rifiutate con messaggio di errore.],

      [TU-1.18],
      [FROb18],
      [Query di verifica unicità email nel database.],
      [Identificazione di email già associate ad altri profili.],

      [TU-1.19],
      [FROb19],
      [Verifica vincolo di unicità lato persistenza su email.],
      [Il sistema impedisce registrazioni duplicate anche con richieste concorrenti.],

      [TU-1.20],
      [FROb20],
      [Verifica trigger notifica errore email non valida o già registrata.],
      [Messaggio di errore per email duplicata o malformata; procedura inibita.],

      [TU-1.21],
      [FROb21],
      [Verifica requisito lunghezza password (minimo 8 caratteri).],
      [Password con meno di 8 caratteri rifiutate.],

      [TU-1.22],
      [FROb22],
      [Verifica requisiti complessità password.],
      [Validazione positiva solo se tutti i criteri di complessità sono soddisfatti.],

      [TU-1.23],
      [FROb23],
      [Verifica rifiuto password coincidente o contenente lo username.],
      [Password che contengono lo username come sottostringa rifiutate.],

      [TU-1.24],
      [FROb24],
      [Verifica trigger notifica errore password non conforme ai requisiti di sicurezza.],
      [Elenco puntuale dei criteri non rispettati.],

      // --- AUTENTICAZIONE (UC2) ---
      [TU-2.1], [FROb25], [Verifica rendering pagina di Login.], [Visualizzazione corretta del form di autenticazione.],
      [TU-2.2],
      [FROb26],
      [Verifica predisposizione comando di conferma per il login.],
      [Pulsante di conferma presente e funzionante.],

      [TU-2.3],
      [FROb27],
      [Verifica validazione completa credenziali all'invio.],
      [Procedura inibita se uno dei controlli fallisce.],

      [TU-2.4],
      [FROb28],
      [Verifica autorizzazione post-validazione credenziali.],
      [Rilascio della sessione solo con dati corretti; accesso alle funzionalità riservate.],

      [TU-2.5],
      [FROb29],
      [Verifica reindirizzamento verso dashboard a seguito di autenticazione avvenuta.],
      [L'utente viene reindirizzato correttamente dopo il login con successo.],

      [TU-2.6],
      [FROb30],
      [Verifica protocollo di trasmissione credenziali (HTTPS).],
      [Dati cifrati durante il transito verso il server.],

      [TU-2.7],
      [FROb31],
      [Verifica utilizzo username per fetch del record account dalla persistenza.],
      [Lo username viene utilizzato per recuperare il record account nel DB.],

      [TU-2.8],
      [FROb32],
      [Verifica confronto hash password fornita con hash memorizzato (stessa funzione e salt).],
      [Accesso concesso solo se coincidono.],

      [TU-2.9],
      [FROb33],
      [Test del meccanismo di rate limiting / lockout temporaneo.],
      [Blocco dell'account dopo N tentativi falliti consecutivi.],

      [TU-2.10],
      [FROb34],
      [Verifica visualizzazione spinner durante validazione credenziali.],
      [Indicatore di caricamento mostrato; bottone disabilitato per prevenire invii multipli.],

      [TU-2.11],
      [FROb35],
      [Verifica rilevamento campi mancanti e inibizione del login.],
      [Trigger errore per username o password non inseriti; accesso negato.],

      [TU-2.12],
      [FROb36],
      [Verifica notifica formato username non conforme in fase di login.],
      [Messaggio di errore su formato username errato; procedura inibita.],

      [TU-2.13],
      [FROb37],
      [Verifica notifica username non esistente nel sistema.],
      [Feedback specifico per username non censito.],

      [TU-2.14],
      [FROb38],
      [Verifica notifica formato password errato in login.],
      [Feedback su errore sintattico password; procedura inibita.],

      [TU-2.15],
      [FROb39],
      [Verifica notifica password errata (hash non corrisponde).],
      [Feedback specifico per credenziali non corrispondenti.],

      // --- INTEGRAZIONE GITHUB (UC3) ---
      [TU-3.1], [FROb40], [Verifica accesso sezione collegamento del profilo GitHub.], [Sezione raggiungibile.],
      [TU-3.2],
      [FROb41],
      [Verifica impedimento accesso se GitHub già associato.],
      [Procedura bloccata se account GitHub già collegato.],

      [TU-3.3],
      [FROb42],
      [Verifica utilizzo parametro "state" per prevenzione attacchi CSRF nel flusso OAuth2.],
      [Stato CSRF generato e verificato; richieste prive di state valido rifiutate.],

      [TU-3.4],
      [FROb43],
      [Verifica cifratura Access Token GitHub nel database (AES-256 o equivalente).],
      [I token GitHub non sono salvati in chiaro; algoritmo di cifratura forte applicato.],

      [TU-3.5],
      [FROb44],
      [Verifica assenza di persistenza token in caso di procedura fallita.],
      [Nessun token o associazione parziale mantenuta in caso di errore.],

      [TU-3.6],
      [FROb45],
      [Verifica rendering avviso informativo obbligatorio pre-reindirizzamento su dominio esterno.],
      [Visualizzazione informativa di sicurezza prima del redirect verso GitHub.],

      [TU-3.7],
      [FROb46],
      [Verifica gestione comando annulla redirect con ripristino stato.],
      [Esecuzione o blocco del redirect; in caso di annullamento la sezione integrazioni viene ripristinata.],

      [TU-3.8],
      [FROb47],
      [Verifica elaborazione esito e visualizzazione messaggio al ritorno da GitHub.],
      [Esito della procedura di associazione mostrato all'utente al rientro su CodeGuardian.],

      [TU-3.9],
      [FROb48],
      [Verifica gestione errore sincronizzazione.],
      [Feedback su fallimento tecnico della procedura; possibilità di ripetere.],

      [TU-3.10],
      [FROb49],
      [Verifica blocco associazione per profilo GitHub già in uso su altro account.],
      [Inibizione collegamento se account GitHub già censito su diverso profilo.],

      [TU-3.11],
      [FROb50],
      [Verifica gestione errore "Consenso Negato" su GitHub.],
      [Feedback specifico per interruzione volontaria dell'utente su piattaforma esterna.],

      // --- RICHIESTA ANALISI (UC4) ---
      [TU-4.1],
      [FROb51],
      [Verifica predisposizione campo URL nel modulo di richiesta analisi.],
      [Campo URL presente e funzionante nel modulo.],

      [TU-4.2],
      [FROb52],
      [Verifica vincoli sintattici URL: protocollo "https://" e dominio "github.com".],
      [Validazione positiva solo per URL conformi.],

      [TU-4.3],
      [FROb53],
      [Verifica controllo dimensione repository tramite API GitHub.],
      [Analisi inibita se il repository supera i limiti tecnici prestabiliti.],

      [TU-4.4],
      [FROb54],
      [Verifica blocco invio se report già aggiornato.],
      [Informativa su analisi già aggiornata; nuova analisi impedita.],

      [TU-4.5],
      [FROb55],
      [Verifica disabilitazione comando di conferma dopo prima pressione.],
      [Bottone disabilitato dopo il click per prevenire richieste duplicate.],

      [TU-4.6],
      [FROb56],
      [Verifica rilevamento processi analisi attivi e impedimento invio duplicato.],
      [Feedback su audit già pendente per il medesimo repository.],

      [TU-4.7],
      [FROb57],
      [Verifica inibizione richiesta analisi in assenza di selezione aree di interesse.],
      [Messaggio di errore se nessuna area è selezionata.],

      // --- LISTA REPOSITORY (UC5) ---
      [TU-5.1],
      [FROb58],
      [Verifica ordinamento lista repository per data ultima analisi (decrescente).],
      [Repository visualizzati in ordine dall'analisi più recente.],

      [TU-5.2],
      [FROb59],
      [Controllo mapping metadati: Nome, URL, Data ultima analisi per ogni elemento.],
      [Oggetti lista popolati correttamente con tutti i campi richiesti.],

      [TU-5.3],
      [FROb60],
      [Validazione logica per visualizzazione informativa lista vuota.],
      [Messaggio informativo mostrato.],

      [TU-5.4],
      [FROb61],
      [Verifica inibizione rendering lista e notifica errore in caso di persistenza irraggiungibile.],
      [Messaggio di errore tecnico mostrato; lista non renderizzata.],

      [TU-5.5],
      [FROb62],
      [Verifica presenza e funzionamento comando di aggiornamento (Refresh) in caso di errore.],
      [Nuovo tentativo di caricamento avviato al click.],

      // --- VISUALIZZAZIONE REPORT (UC6) ---
      [TU-6.1],
      [FROb63],
      [Verifica selezione e caricamento report da lista.],
      [Caricamento riuscito dei dati del report selezionato.],

      [TU-6.2],
      [FROb64],
      [Verifica validazione lato server: report appartiene al repository dell'utente.],
      [Rendering inibito con errore di autorizzazione per report non associati al profilo.],

      [TU-6.3],
      [FROb65],
      [Verifica inibizione rendering per report non autorizzati.],
      [Errore di autorizzazione per report non associati al profilo.],

      [TU-6.4],
      [FROb66],
      [Verifica gestione timeout nel recupero dati analitici con notifica utente.],
      [Notifica di indisponibilità temporanea mostrata in caso di timeout.],

      [TU-6.5],
      [FROb67],
      [Verifica stato dei filtri aree (toggle on/off).],
      [Le aree analitiche (Codice, Sicurezza, Doc.) sono correttamente filtrate.],

      [TU-6.6],
      [FROb68],
      [Verifica aggiornamento dinamico contenuto in base ai filtri senza ricaricamento pagina.],
      [Il report si aggiorna alla variazione dei filtri.],

      [TU-6.7],
      [FROb69],
      [Controllo validazione: almeno un'area attiva nei filtri.],
      [Blocco visualizzazione con avviso informativo se nessuna sezione selezionata.],

      [TU-6.8],
      [FROb70],
      [Verifica esposizione metadati identificativi del report.],
      [Metadati caricati correttamente.],

      [TU-6.9],
      [FROb71],
      [Verifica correttezza timestamp generazione audit (formato ISO 8601).],
      [Data e ora corrispondono al record del database.],

      [TU-6.10],
      [FROb72],
      [Verifica corrispondenza SHA commit GitHub con link diretto al commit.],
      [Link verso GitHub funzionante.],

      [TU-6.11],
      [FROb73],
      [Controllo visualizzazione username richiedente report.],
      [Lo username corrisponde all'autore della richiesta di analisi.],

      [TU-6.12],
      [FROb74],
      [Verifica integrità metriche tecniche aggregate per aree attive.],
      [Dati numerici (punteggi, numero bug, vulnerabilità) visualizzati correttamente.],

      [TU-6.13],
      [FROb75],
      [Verifica caricamento e visualizzazione lista azioni correttive (remediation).],
      [Lista remediation caricata correttamente e associata alle criticità rilevate.],

      [TU-6.14],
      [FROb77],
      [Verifica espansione dettaglio singola remediation.],
      [Dettaglio tecnico della proposta di risoluzione visibile.],

      [TU-6.15],
      [FROb78],
      [Controllo messaggio esito positivo in assenza di criticità.],
      [Badge di conformità mostrato per aree senza criticità rilevate.],

      // --- CONFRONTO STORICO (UC7) ---
      [TU-7.1],
      [FROb79],
      [Verifica selezione intervallo temporale (data inizio e fine) tramite input di data.],
      [Intervallo acquisito correttamente dai campi di input.],

      [TU-7.2],
      [FROb80],
      [Verifica predisposizione e invio comando aggiornamento confronto.],
      [Trigger di ricalcolo comparativo attivato correttamente.],

      [TU-7.3],
      [FROb81],
      [Controllo campi obbligatori temporali: inibizione se non popolati.],
      [Avviso mostrato e confronto inibito per input di data nulli.],

      [TU-7.4],
      [FROb82],
      [Validazione coerenza: data inizio cronologicamente precedente alla data fine.],
      [Blocco e segnalazione errore se la data d'inizio è successiva alla fine.],

      [TU-7.5], [FROb83], [Controllo ampiezza massima intervallo.], [Errore restituito e richiesta inibita.],
      [TU-7.6],
      [FROb84],
      [Verifica query di ricerca report in intervallo: informativa assenza dati.],
      [Messaggio "Nessun report trovato" restituito se il range è privo di analisi.],

      // --- METRICHE COMPARATIVE (UC8) ---
      [TU-8.1],
      [FRDe1],
      [Verifica logica di generazione dataset per grafici dinamici (linee/istogrammi).],
      [Dati trasformati correttamente in serie storiche visualizzabili.],

      [TU-8.2],
      [FRDe2],
      [Verifica tooltip informativi all'hover sui punti dati del grafico.],
      [Valore esatto e hash commit mostrati al passaggio del cursore.],

      [TU-8.3],
      [FROb85],
      [Verifica allineamento dati tra vista grafica e tabellare.],
      [Dati coerenti tra grafico e tabella.],

      [TU-8.4],
      [FROb86],
      [Verifica popolamento righe tabella comparativa in ordine cronologico crescente.],
      [Ordinamento cronologico corretto.],

      [TU-8.5],
      [FROb87],
      [Validazione algoritmo calcolo indicatori di variazione (trend incrementali/decrementali).],
      [Calcolo variazione percentuale tra analisi consecutive eseguito correttamente.],

      [TU-8.6],
      [FROb88],
      [Verifica fallback visualizzazione dati grezzi in tabella in caso di errore rendering grafico.],
      [In assenza di librerie grafiche i dati vengono mostrati in formato tabellare.],

      // --- ANALISI DEL CODICE (UC9) ---
      [TU-9.1],
      [FROb89],
      [Verifica caricamento sezione "Codice" solo se area attiva nei filtri.],
      [Modulo renderizzato con parametri corretti; non caricato se area non attiva.],

      [TU-9.2],
      [FROb90],
      [Verifica esposizione risultati analisi statica con gravità e posizione nel file sorgente.],
      [Bug, code smell e vulnerabilità mostrati con livello di gravità e riferimento al file e riga.],

      [TU-9.3],
      [FROb92],
      [Controllo calcolo percentuale copertura test (Code Coverage) e rapporto test superati/falliti.],
      [Valore normalizzato 0-100% e conteggio test calcolati correttamente.],

      [TU-9.4],
      [FROb93],
      [Verifica presentazione lista remediation codice con navigazione al dettaglio.],
      [Soluzioni visualizzate con link al dettaglio della singola azione correttiva.],

      [TU-9.5],
      [FROb94],
      [Controllo informativa "Codice Conforme" in assenza di bug o violazioni qualitative.],
      [Esito positivo mostrato.],

      // --- ANALISI SICUREZZA (UC10) ---
      [TU-10.1],
      [FROb95],
      [Verifica caricamento asincrono sezione sicurezza rispetto alle altre sezioni.],
      [I dati di sicurezza vengono caricati in modo indipendente senza bloccare le altre aree.],

      [TU-10.2],
      [FROb96],
      [Verifica esposizione dipendenze vulnerabili con codice CVE, severità CVSS e versione sicura.],
      [Librerie obsolete o vulnerabili elencate con tutti i campi informativi richiesti.],

      [TU-10.3],
      [FROb98],
      [Verifica del mappatore di conformità OWASP Top 10.],
      [Associazione corretta tra vulnerabilità e categoria OWASP.],

      [TU-10.4],
      [FROb99],
      [Verifica presentazione remediation di sicurezza ordinate per criticità.],
      [Remediation esposte in ordine decrescente di severità della vulnerabilità associata.],

      [TU-10.5],
      [FROb100],
      [Validazione logica "Repository Sicuro" in assenza di vulnerabilità note.],
      [Restituisce stato "Safe" se il contatore CVE e vulnerabilità è pari a zero.],

      // --- ANALISI DOCUMENTAZIONE (UC11) ---
      [TU-11.1],
      [FROb101],
      [Verifica caricamento e visualizzazione sezione documentazione.],
      [Sezione renderizzata correttamente con i dati dei file documentali analizzati.],

      [TU-11.2],
      [FROb102],
      [Verifica rilevamento errori sintattici e link interrotti nella documentazione.],
      [Identifica URL malformati o non raggiungibili e errori formali nei file di testo.],

      [TU-11.3],
      [FROb104],
      [Calcolo dell'indice di completezza documentale basato sulla copertura delle interfacce pubbliche.],
      [Rapporto coerente tra interfacce pubbliche del codice e blocchi di documentazione presenti.],

      [TU-11.4],
      [FROb105],
      [Verifica esposizione suggerimenti testuali per integrazione documentazione mancante.],
      [Suggerimenti di miglioramento visualizzati correttamente per ogni lacuna rilevata.],

      [TU-11.5],
      [FROb106],
      [Controllo informativa "Documentazione Completa" in assenza di criticità documentali.],
      [Esito positivo mostrato se non ci sono errori o mancanze documentali rilevate.],

      // --- RANKING (UC12) ---
      [TU-12.1],
      [FROb107],
      [Verifica del calcolo del punteggio di qualità globale (0-100) basato su metriche pesate.],
      [Il punteggio finale è la media pesata dei punteggi di codice, sicurezza e documentazione.],

      [TU-12.2],
      [FROb108],
      [Algoritmo di generazione graduatoria con ordinamento decrescente per punteggio.],
      [La lista viene ordinata correttamente dal punteggio più alto al più basso.],

      [TU-12.3],
      [FROb109],
      [Verifica esposizione dati per ogni riga: posizione, nome repository, punteggio, trend mensile.],
      [Tutti i campi previsti per ogni riga del ranking vengono popolati correttamente.],

      [TU-12.4],
      [FROb110],
      [Verifica inibizione rendering ranking e informativa in assenza di analisi completate.],
      [Messaggio che suggerisce la prima analisi mostrato se il ranking è vuoto.],

      // --- DISCONNESSIONE GITHUB (UC13) ---
      [TU-13.1],
      [FROb111],
      [Verifica richiesta conferma esplicita prima della rimozione integrazione GitHub.],
      [Operazione bloccata in assenza di conferma; dialog di conferma presente.],

      [TU-13.2],
      [FROb112],
      [Verifica della funzione di revoca token OAuth verso le API di GitHub.],
      [Richiesta di revoca inviata correttamente alle API GitHub al momento della conferma.],

      [TU-13.3],
      [FROb113],
      [Verifica eliminazione definitiva di token (access/refresh) e ID GitHub dal database.],
      [Token e ID utente GitHub rimossi dal DB dopo la disconnessione.],

      [TU-13.4],
      [FROb114],
      [Verifica gestione errore comunicazione con GitHub durante revoca: pulizia locale garantita.],
      [Anche in caso di errore API GitHub i dati locali sensibili vengono eliminati.],

      // --- ESPORTAZIONE (UC14) ---
      [TU-14.1],
      [FRDe3],
      [Verifica disponibilità link di download del file generato.],
      [Link di download presente e funzionante dopo la generazione del file.],

      [TU-14.2],
      [FRDe4],
      [Verifica supporto formati di esportazione PDF e JSON.],
      [Accetta esclusivamente PDF o JSON come formati validi.],

      [TU-14.3],
      [FRDe5],
      [Verifica inibizione invio richiesta in assenza di formato selezionato.],
      [Messaggio di errore e blocco se l'utente tenta di esportare senza scegliere il formato.],

      [TU-14.4],
      [FRDe6],
      [Verifica del modulo di generazione file: mapping dati e inclusione metadati.],
      [I dati del report, inclusi metadati e sezioni analizzate, vengono mappati senza perdite.],

      [TU-14.5],
      [FRDe7],
      [Verifica processo di generazione file asincrono senza blocco dell'interfaccia.],
      [L'UI rimane responsiva durante il parsing di report voluminosi.],

      // --- MODIFICA PASSWORD (UC15) ---
      [TU-15.1],
      [FROb115],
      [Verifica accesso alla sezione dedicata alla modifica password.],
      [Rendering corretto del modulo di modifica password nell'area profilo.],

      [TU-15.2],
      [FROb116],
      [Confronto hash tra password corrente inserita e hash memorizzato nel database.],
      [Restituisce true solo se i due hash corrispondono.],

      [TU-15.3],
      [FROb117],
      [Verifica inibizione procedura e notifica errore per password corrente mancante o errata.],
      [Messaggio specifico mostrato sia per campo vuoto sia per password non corrispondente.],

      [TU-15.4],
      [FROb118],
      [Validatore criteri complessità nuova password.],
      [Rigetto di password che non rispettano i requisiti di lunghezza e complessità.],

      [TU-15.5],
      [FROb119],
      [Controllo eterogeneità: nuova password diversa da quella attuale.],
      [Restituisce errore se l'hash della nuova password coincide con quello attuale.],

      [TU-15.6],
      [FROb120],
      [Verifica aggiornamento password nella persistenza tramite nuovo hashing sicuro e salt univoco.],
      [La nuova password viene salvata cifrata con algoritmo sicuro e salt rigenerato.],

      [TU-15.7],
      [FROb121],
      [Verifica invio notifica email automatica a seguito di modifica password avvenuta.],
      [Email di notifica inviata all'indirizzo associato al profilo dopo il cambio.],

      [TU-15.8],
      [FROb122],
      [Verifica invalidazione di tutte le sessioni attive post-cambio password.],
      [Le sessioni parallele risultano invalidate; sessione corrente mantenuta attiva.],

      // --- VISUALIZZAZIONE REMEDIATION GENERICA (UC16) ---
      [TU-16.1],
      [FROb123],
      [Verifica visualizzazione dettaglio tecnico singola remediation selezionata.],
      [Dettaglio correttamente caricato e visualizzato per la remediation selezionata.],

      [TU-16.2],
      [FROb124],
      [Verifica esposizione campi obbligatori remediation: descrizione difetto, snippet, severità, proposta.],
      [Tutti i campi previsti presenti.],

      [TU-16.3],
      [FROb125],
      [Verifica inclusione riferimenti esterni per vulnerabilità di sicurezza note.],
      [Link a documentazione esterna mostrati correttamente per remediation di tipo sicurezza.],

      // --- VERIFICA ACCESSIBILITÀ REPOSITORY (UC17) ---
      [TU-17.1],
      [FROb126],
      [Verifica gestione ciclo di vita verifica accessibilità tramite chiamate asincrone API GitHub.],
      [Chiamate asincrone eseguite correttamente; stato della verifica tracciato.],

      [TU-17.2],
      [FROb127],
      [Verifica meccanismo "Exponential Backoff" per tentativi di riconnessione su errori di rete.],
      [Ritardi crescenti tra tentativi; interruzione dopo il numero massimo configurato.],

      [TU-17.3],
      [FROb128],
      [Verifica validazione raggiungibilità endpoint GitHub tramite richiesta "Heartbeat".],
      [Heartbeat inviato prima del fetch; verifica operatività del servizio remoto.],

      [TU-17.4],
      [FROb129],
      [Verifica tentativo accesso pubblico al repository prima dell'uso di credenziali.],
      [Prima richiesta senza intestazioni di autorizzazione.],

      [TU-17.5],
      [FROb130],
      [Verifica accesso privato via token OAuth/PAT su errore HTTP 403/404 della risorsa pubblica.],
      [Seconda richiesta con token utente iniettato a seguito di errore 403/404.],

      [TU-17.6],
      [FROb131],
      [Verifica controllo "scopes" del token: permessi minimi di lettura (repo / public_repo).],
      [Token con scopes insufficienti viene rifiutato con errore specifico.],

      [TU-17.7],
      [FROb132],
      [Verifica aggiornamento stato analisi a "FAILED_ACCESS" e segnale interruzione in caso di fallimento definitivo.],
      [Stato impostato a "FAILED_ACCESS"; modulo notifica informato del fallimento.],

      // --- ACCETTAZIONE / RIFIUTO REMEDIATION GENERICA (UC18-UC19) ---
      [TU-18.1],
      [FRDe8],
      [Verifica applicazione automatica modifiche al repository tramite integrazione GitHub.],
      [Commit con le modifiche inviato correttamente al repository remoto.],

      [TU-18.2],
      [FRDe9],
      [Verifica validazione di integrità della proposta correttiva prima del commit.],
      [Proposta validata prima dell'invio; commit non eseguito se la validazione fallisce.],

      [TU-18.3],
      [FRDe10],
      [Verifica aggiornamento stato remediation in "Applied" o "Dismissed" nel database.],
      [Stato correttamente aggiornato a seguito dell'azione dell'utente.],

      [TU-18.4],
      [FRDe11],
      [Verifica notifica all'utente in caso di fallimento del commit sul repository remoto.],
      [Messaggio di errore mostrato; codebase rimane invariata.],

      // --- CREAZIONE RACCOLTA REPORT (UC20) ---
      [TU-20.1],
      [FROb133],
      [Verifica definizione nome univoco raccolta.],
      [Nomi non conformi ai vincoli rifiutati con messaggio specifico.],

      [TU-20.2],
      [FROb134],
      [Verifica validazione sintattica URL GitHub: HTTPS + struttura path user/repo.],
      [URL non conformi rifiutati con avviso circa il protocollo o il formato richiesto.],

      [TU-20.3],
      [FROb135],
      [Verifica interrogazione API GitHub per conferma esistenza e raggiungibilità repository.],
      [Repository inesistenti o irraggiungibili bloccano la creazione della raccolta.],

      [TU-20.4],
      [FROb136],
      [Verifica gestione repository inaccessibile (privato senza permessi) con notifica utente.],
      [Avviso specifico per repository privato non accessibile dall'utente.],

      [TU-20.5],
      [FROb137],
      [Verifica impedimento creazione raccolta duplicata per stesso repository e stesso utente.],
      [Errore di duplicazione se l'URL è già associato a una raccolta dell'utente.],

      [TU-20.6],
      [FROb138],
      [Verifica memorizzazione descrizione facoltativa con supporto codifica UTF-8.],
      [Caratteri speciali e simboli memorizzati correttamente.],

      // --- AVVIO ANALISI (UC21) ---
      [TU-21.1],
      [FROb139],
      [Verifica parallelizzazione richieste di analisi verso i diversi strumenti esterni.],
      [Le richieste agli strumenti vengono inviate in parallelo.],

      [TU-21.2],
      [FROb140],
      [Verifica inclusione parametri di configurazione utente nelle richieste agli strumenti.],
      [Parametri definiti in fase di richiesta correttamente trasmessi agli strumenti esterni.],

      [TU-21.3],
      [FROb141],
      [Verifica trasmissione sicura delle credenziali al servizio AWS per la clonazione.],
      [Credenziali non esposte in chiaro; passate tramite secret manager.],

      [TU-21.4],
      [FROb142],
      [Verifica monitoraggio completamento clonazione e gestione timeout / disco insufficiente.],
      [Timeout e errori di spazio rilevati; procedura interrotta con segnalazione.],

      [TU-21.5],
      [FROb143],
      [Verifica inibizione invio richieste agli strumenti e liberazione risorse in caso di errore clonazione.],
      [Nessuna richiesta inoltrata agli strumenti.],

      [TU-21.6],
      [FROb144],
      [Verifica inoltro codebase agli strumenti di analisi via protocolli sicuri.],
      [File trasmessi agli strumenti tramite canali cifrati.],

      // --- PERSISTENZA STATO ANALISI (UC22) ---
      [TU-22.1],
      [FROb145],
      [Verifica registrazione stato analisi come "PENDING" a seguito di inizializzazione strumenti.],
      [Stato "PENDING" correttamente scritto nel database dopo l'avvio degli strumenti.],

      [TU-22.2],
      [FROb146],
      [Verifica associazione univoca ID analisi a repository e utente richiedente.],
      [ID analisi associato correttamente; impossibile creare duplicati per stessa coppia repository-utente.],

      [TU-22.3],
      [FROb147],
      [Verifica persistenza metadati di avvio: hash commit analizzato e timestamp di sistema.],
      [Hash commit e timestamp registrati correttamente al momento dell'avvio.],

      [TU-22.4],
      [FROb148],
      [Verifica procedura di Rollback e segnalazione agli strumenti in caso di errore scrittura stato.],
      [In caso di fallimento persistenza gli strumenti vengono informati di annullare l'analisi.],

      [TU-22.5],
      [FROb149],
      [Verifica registrazione nei log di audit di ogni fallimento di persistenza con stack trace.],
      [Log di errore scritti con dettaglio diagnostico completo.],

      // --- RECUPERO RISULTATI (UC23) ---
      [TU-23.1],
      [FROb150],
      [Verifica polling periodico o ricezione segnale di completamento dagli strumenti esterni.],
      [L'orchestratore rileva correttamente la disponibilità dei risultati.],

      [TU-23.2],
      [FROb151],
      [Verifica download dei risultati non appena disponibili dagli strumenti.],
      [File dei risultati scaricati correttamente all'atto della disponibilità.],

      [TU-23.3],
      [FROb152],
      [Verifica controllo integrità e leggibilità dei file ricevuti.],
      [File corrotti o incompleti rilevati; segnalazione prima dell'utilizzo.],

      [TU-23.4],
      [FROb153],
      [Verifica prosecuzione creazione report con dati parziali in caso di fallimento di uno strumento.],
      [Report generato con i dati disponibili; sezione mancante segnalata come assente.],

      [TU-23.5],
      [FROb154],
      [Verifica impostazione timeout massimo di attesa per strumento ritardatario.],
      [Attesa interrotta dopo il timeout configurato; prosecuzione con dati disponibili.],

      [TU-23.6],
      [FROb155],
      [Verifica segnalazione nel database di report contenente dati parziali.],
      [Flag "parziale" impostato correttamente nel record del report nel DB.],

      // --- GENERAZIONE REPORT FINALE (UC24) ---
      [TU-24.1],
      [FROb156],
      [Verifica unificazione dati provenienti dai diversi strumenti in documento di sintesi unico.],
      [Output di codice, sicurezza e documentazione aggregati correttamente in un unico report.],

      [TU-24.2],
      [FROb157],
      [Verifica conversione formati eterogenei degli strumenti in modello standard comune.],
      [Tutti i formati raw vengono normalizzati correttamente senza perdita di informazioni.],

      [TU-24.3],
      [FROb158],
      [Verifica validazione completezza report prima del salvataggio (risultati, data, versione codice).],
      [Report privo di informazioni essenziali non viene inoltrato alla fase di salvataggio.],

      [TU-24.4],
      [FROb159],
      [Verifica calcolo punteggi di riepilogo basati sui risultati delle singole aree analizzate.],
      [Punteggi aggregati calcolati correttamente e coerenti con i risultati delle singole sezioni.],

      // --- SALVATAGGIO REPORT (UC25) ---
      [TU-25.1],
      [FROb160],
      [Verifica archiviazione permanente report con collegamento a repository e utente.],
      [Report salvato correttamente e associato al repository e al profilo richiedente.],

      [TU-25.2],
      [FROb161],
      [Verifica aggiornamento stato analisi a "Completato" solo dopo conferma salvataggio riuscito.],
      [Stato impostato a "Completato" esclusivamente se la scrittura nel DB ha avuto esito positivo.],

      [TU-25.3],
      [FROb162],
      [Verifica notifica utente con messaggio di errore in caso di impossibilità di salvataggio.],
      [Messaggio di errore generato e reso disponibile per la notifica all'utente.],

      [TU-25.4],
      [FROb163],
      [Verifica tracciamento interno dei motivi di fallimento del salvataggio per audit tecnico.],
      [Log di errore dettagliato scritto con causa del fallimento.],

      [TU-25.5],
      [FROb164],
      [Verifica mantenimento copia temporanea del report in caso di errore salvataggio definitivo.],
      [Copia temporanea disponibile per recupero manuale o retry automatico.],

      // --- NOTIFICA COMPLETAMENTO (UC26) ---
      [TU-26.1],
      [FROb165],
      [Verifica generazione automatica notifica utente a report pronto e salvato.],
      [Notifica generata automaticamente non appena il report risulta archiviato.],

      [TU-26.2],
      [FROb166],
      [Verifica inclusione link/pulsante accesso diretto al report nella notifica.],
      [Notifica contiene riferimento diretto al report consultabile.],

      [TU-26.3],
      [FROb167],
      [Verifica inclusione informazioni identificative nella notifica (nome repository, data).],
      [Nome repository e data di esecuzione presenti nel corpo della notifica.],

      [TU-26.4],
      [FROb168],
      [Verifica indipendenza stato report dall'esito dell'invio notifica.],
      [Report rimane disponibile anche se la notifica fallisce.],

      [TU-26.5],
      [FROb169],
      [Verifica registrazione anomalia nei log interni in caso di errore invio notifica.],
      [Log di errore scritto con dettaglio del canale e del tipo di anomalia.],

      [TU-26.6],
      [FROb170],
      [Verifica meccanismo di retry invio notifica per problemi temporanei di rete.],
      [Numero configurato di tentativi effettuati prima di rinunciare; log aggiornato.],

      // --- RICEZIONE NOTIFICHE (UC27-UC28) ---
      [TU-27.1],
      [FROb171],
      [Verifica consegna notifica di fine analisi tramite canali scelti dall'utente.],
      [Notifica recapitata sul canale configurato dall'utente.],

      [TU-27.2],
      [FROb172],
      [Verifica inclusione dettagli analisi (nome progetto, ora) nell'avviso ricevuto.],
      [Messaggio contiene nome progetto e timestamp correttamente formattati.],

      [TU-27.3],
      [FROb173],
      [Verifica consultabilità risultati nell'area personale anche in assenza di notifica email.],
      [Il report è accessibile dalla dashboard indipendentemente dalla ricezione della notifica.],

      [TU-28.1],
      [FROb174],
      [Verifica invio avviso immediato con causa errore in caso di interruzione analisi.],
      [Notifica di errore con breve spiegazione generata tempestivamente.],

      [TU-28.2],
      [FROb175],
      [Verifica contrassegno analisi come "Fallita" nella lista progetti utente.],
      [Stato "Fallita" visibile nella dashboard dell'utente.],

      [TU-28.3],
      [FROb176],
      [Verifica visibilità cause del fallimento nella dashboard indipendentemente dalla notifica.],
      [Dettaglio errore consultabile nella dashboard a prescindere dall'invio dell'avviso.],

      // --- GESTIONE OAUTH GITHUB (UC29) ---
      [TU-29.1],
      [FROb177],
      [Verifica scambio codice temporaneo OAuth con token di accesso permanente.],
      [Richiesta di scambio correttamente inoltrata a GitHub; token ricevuto e disponibile.],

      [TU-29.2],
      [FROb178],
      [Verifica cifratura token GitHub prima del salvataggio nel database.],
      [Token cifrato con algoritmo forte; non leggibile in chiaro nel DB.],

      [TU-29.3],
      [FROb179],
      [Verifica collegamento esclusivo token GitHub al profilo dell'utente autorizzante.],
      [Token associato univocamente all'account CodeGuardian corretto.],

      [TU-29.4],
      [FROb180],
      [Verifica annullamento collegamento e richiesta ripetizione procedura per codice scaduto/invalido.],
      [Errore di protocollo gestito; utente informato della necessità di riautenticarsi.],

      // --- VISUALIZZAZIONE REMEDIATION CODICE (UC30) ---
      [TU-30.1],
      [FROb181],
      [Verifica caricamento e visualizzazione dettaglio singola remediation area codice.],
      [Dettaglio correttamente caricato per remediation selezionata dall'area codice.],

      [TU-30.2],
      [FROb182],
      [Verifica presenza campi obbligatori nella remediation codice.],
      [Tutti i campi previsti presenti nel pannello di dettaglio.],

      // --- VISUALIZZAZIONE REMEDIATION SICUREZZA (UC31) ---
      [TU-31.1],
      [FROb183],
      [Verifica caricamento e visualizzazione dettaglio singola remediation area sicurezza.],
      [Dettaglio correttamente caricato per remediation selezionata dall'area sicurezza.],

      [TU-31.2],
      [FROb184],
      [Verifica presenza campi obbligatori nella remediation sicurezza.],
      [Tutti i campi previsti presenti nel pannello di dettaglio.],

      // --- VISUALIZZAZIONE REMEDIATION DOCUMENTAZIONE (UC32) ---
      [TU-32.1],
      [FROb185],
      [Verifica caricamento e visualizzazione dettaglio singola remediation area documentazione.],
      [Dettaglio correttamente caricato per remediation selezionata dall'area documentazione.],

      [TU-32.2],
      [FROb186],
      [Verifica presenza campi obbligatori nella remediation documentale.],
      [Tutti i campi previsti presenti nel pannello di dettaglio.],

      // --- ACCETTAZIONE REMEDIATION CODICE (UC33) ---
      [TU-33.1],
      [FROb187],
      [Verifica abilitazione comando di accettazione remediation codice per Utente Avanzato.],
      [Controllo accesso: solo Utente Avanzato vede il comando di accettazione.],

      [TU-33.2],
      [FROb188],
      [Verifica applicazione automatica modifiche alla codebase a seguito di accettazione.],
      [Commit con le modifiche suggerite inviato correttamente al repository.],

      [TU-33.3],
      [FROb189],
      [Verifica aggiornamento stato remediation codice a "eseguita" nel database.],
      [Stato aggiornato correttamente nella dashboard dopo applicazione riuscita.],

      [TU-33.4],
      [FROb190],
      [Verifica notifica fallimento e invarianza codebase in caso di errore applicazione remediation codice.],
      [Messaggio di errore mostrato; nessuna modifica al repository in caso di fallimento.],

      // --- RIFIUTO REMEDIATION CODICE (UC34) ---
      [TU-34.1],
      [FROb191],
      [Verifica abilitazione comando di rifiuto remediation codice.],
      [Comando di rifiuto disponibile nell'interfaccia di dettaglio della remediation.],

      [TU-34.2],
      [FROb192],
      [Verifica aggiornamento stato remediation codice a "rifiutata" senza modifiche al repository.],
      [Stato "rifiutata" aggiornato; codebase rimane invariata.],

      // --- ACCETTAZIONE REMEDIATION SICUREZZA (UC35) ---
      [TU-35.1],
      [FROb193],
      [Verifica abilitazione comando di accettazione remediation sicurezza.],
      [Comando disponibile per Utente Avanzato nell'area sicurezza.],

      [TU-35.2],
      [FROb194],
      [Verifica applicazione patch/configurazioni di sicurezza a seguito di accettazione.],
      [Modifiche di sicurezza applicate correttamente al repository.],

      [TU-35.3],
      [FROb195],
      [Verifica aggiornamento stato remediation sicurezza a "eseguita".],
      [Stato aggiornato nella dashboard dopo applicazione riuscita.],

      [TU-35.4],
      [FROb196],
      [Verifica notifica fallimento applicazione remediation sicurezza.],
      [Messaggio di errore e vulnerabilità non mitigata in caso di insuccesso.],

      // --- RIFIUTO REMEDIATION SICUREZZA (UC36) ---
      [TU-36.1],
      [FROb197],
      [Verifica abilitazione comando di rifiuto remediation sicurezza.],
      [Comando di rifiuto disponibile nell'area sicurezza.],

      [TU-36.2],
      [FROb198],
      [Verifica aggiornamento stato remediation sicurezza a "rifiutata" senza modifiche al repository.],
      [Stato aggiornato; repository invariato rispetto alla vulnerabilità segnalata.],

      // --- ACCETTAZIONE REMEDIATION DOCUMENTAZIONE (UC37) ---
      [TU-37.1],
      [FROb199],
      [Verifica abilitazione comando di accettazione remediation documentale.],
      [Comando disponibile per Utente Avanzato nell'area documentazione.],

      [TU-37.2],
      [FROb200],
      [Verifica applicazione automatica modifiche ai file documentali a seguito di accettazione.],
      [File di documentazione aggiornati correttamente nel repository.],

      [TU-37.3],
      [FROb201],
      [Verifica aggiornamento stato remediation documentale a "eseguita".],
      [Stato aggiornato nella dashboard dopo applicazione riuscita.],

      [TU-37.4],
      [FROb202],
      [Verifica notifica errore e invarianza documentazione in caso di fallimento I/O o permessi.],
      [Messaggio di errore mostrato; file di documentazione rimangono invariati.],

      // --- RIFIUTO REMEDIATION DOCUMENTAZIONE (UC38) ---
      [TU-38.1],
      [FROb203],
      [Verifica accesso al dettaglio singola remediation documentale per la procedura di rifiuto.],
      [Dettaglio remediation visualizzato correttamente prima del rifiuto.],

      [TU-38.2],
      [FROb204],
      [Verifica abilitazione comando di rifiuto remediation documentale.],
      [Comando di rifiuto disponibile nell'area documentazione.],

      [TU-38.3],
      [FROb205],
      [Verifica aggiornamento stato remediation documentale a "rifiutata" nel database.],
      [Stato aggiornato correttamente a seguito del rifiuto confermato.],

      [TU-38.4],
      [FROb206],
      [Verifica che il rifiuto non comporti modifiche ai file sorgente o documentali.],
      [Nessuna modifica al repository dopo il rifiuto.],

      [TU-38.5],
      [FROb207],
      [Verifica rimozione o marcatura visiva remediation rifiutata dalla lista azioni pendenti.],
      [Remediation non più presente come pendente o visivamente segnata come scartata.],

      [TU-38.6],
      [FROb208],
      [Verifica visualizzazione conferma visiva avvenuto rifiuto della proposta correttiva.],
      [Messaggio o badge di conferma rifiuto mostrato all'utente.],

      // --- ANALISI REPOSITORY PRIVATI (UC39) ---
      [TU-39.1],
      [FROb209],
      [Verifica abilitazione richiesta analisi repository privato solo per Utente Avanzato con integrazione GitHub attiva.],
      [Funzionalità disponibile solo se GitHub è collegato; inibita per utenti senza integrazione.],

      [TU-39.2],
      [FROb210],
      [Verifica validazione presenza integrazione GitHub valida prima di accettare richiesta per risorsa privata.],
      [Richiesta bloccata se il token GitHub risulta assente o scaduto.],

      [TU-39.3],
      [FROb211],
      [Verifica inibizione richiesta analisi privata in assenza di selezione aree di interesse.],
      [Errore mostrato se nessuna area selezionata.],

      // --- CATALOGO REPOSITORY PRIVATI (UC40-UC42) ---
      [TU-40.1],
      [FROb212],
      [Verifica inserimento URL repository privato di proprietà nel catalogo personale.],
      [Repository aggiunto correttamente al catalogo; disponibile per analisi future.],

      [TU-40.2],
      [FROb213],
      [Verifica impedimento inserimento URL duplicato nel catalogo personale con notifica.],
      [Avviso di duplicazione mostrato; catalogo rimane invariato.],

      [TU-41.1],
      [FROb214],
      [Verifica esposizione lista repository privati registrati con nome e URL.],
      [Lista popolata correttamente con tutti i repository del catalogo personale.],

      [TU-41.2],
      [FROb215],
      [Verifica visualizzazione informativa catalogo vuoto con suggerimento inserimento.],
      [Messaggio che suggerisce l'inserimento del primo repository mostrato se catalogo vuoto.],

      [TU-42.1],
      [FROb216],
      [Verifica rimozione repository dal catalogo privato previa conferma esplicita utente.],
      [Repository rimosso solo dopo conferma; dialog di conferma presente.],

      [TU-42.2],
      [FROb217],
      [Verifica integrità catalogo in caso di annullamento procedura di rimozione.],
      [Repository mantenuto nel catalogo se l'utente annulla l'operazione.],

      // --- GESTIONE PERMESSI REPOSITORY PRIVATI (UC43-UC45) ---
      [TU-43.1],
      [FROb218],
      [Verifica visualizzazione elenco profili autorizzati per repository privato selezionato.],
      [Lista degli utenti autorizzati caricata correttamente.],

      [TU-43.2],
      [FROb219],
      [Verifica informativa per accesso limitato esclusivamente al proprietario.],
      [Messaggio mostrato se lista utenti autorizzati è vuota.],

      [TU-44.1],
      [FROb220],
      [Verifica aggiunta utente autorizzato tramite username o email con validazione del profilo.],
      [Profilo esistente aggiunto; identificativo non valido o inesistente rifiutato con errore specifico.],

      [TU-44.2],
      [FROb221],
      [Verifica validazione corrispondenza identificativo a profilo registrato in piattaforma.],
      [Identificativo non trovato genera avviso di inesistenza.],

      [TU-44.3],
      [FROb222],
      [Verifica impedimento autorizzazione multipla del medesimo profilo per stesso repository.],
      [Avviso di duplicazione mostrato; lista permessi invariata.],

      [TU-45.1],
      [FROb223],
      [Verifica revoca permessi utente autorizzato previa conferma proprietario.],
      [Profilo rimosso dalla lista autorizzati dopo conferma; accesso al report revocato.],

      // --- GESTIONE RACCOLTE E PROFILO (UC46-UC47) ---
      [TU-46.1],
      [FROb224],
      [Verifica rimozione raccolta report senza eliminazione dei singoli report contenuti.],
      [Raccolta rimossa; report precedentemente contenuti ancora consultabili tramite altri percorsi.],

      [TU-47.1],
      [FROb225],
      [Verifica richiesta inserimento password attuale come verifica identità obbligatoria pre-cancellazione.],
      [Procedura di cancellazione bloccata senza verifica password corretta.],

      [TU-47.2],
      [FROb226],
      [Verifica visualizzazione avviso di irreversibilità con possibilità di annullamento.],
      [Dialog di avviso irreversibilità mostrato; annullamento disponibile.],

      [TU-47.3],
      [FROb227],
      [Verifica rimozione dati personali, associazioni OAuth e invalidazione credenziali post-cancellazione.],
      [Accesso con credenziali precedenti impossibile.],
    ),
  ),
  caption: [Tabella dei Test di Unità],
  kind: table,
  supplement: [Table],
)

#pagebreak()

== Test di Accettazione

#show figure: set block(breakable: true)

#figure(
  block(
    breakable: true,
    table(
      fill: (x, y) => if (y == 0) {
        luma(63.75%)
      } else if (calc.gcd(y, 2) == 2) {
        luma(220)
      },
      columns: (1.3fr, 4fr),
      inset: 10pt,
      table.header([*ID Test*], [*Descrizione*]),
      [TA-1],
      [Verificare che l'utente possa completare con successo la procedura di registrazione e la successiva autenticazione al sistema.],

      [TA-2],
      [Verificare che le chiavi di accesso non siano mai salvate o trasmesse in chiaro, garantendo l'integrità del sistema di hashing.],

      [TA-3],
      [Verificare che il sistema gestisca correttamente il reindirizzamento e il ritorno dalla piattaforma esterna GitHub, associando correttamente l'identificativo OAuth e cifrando il token ottenuto.],

      [TA-4],
      [Verificare che l'utente possa configurare e avviare una richiesta di analisi fornendo un URL valido e selezionando le aree di interesse.],

      [TA-5],
      [Verificare che il sistema inibisca l'avvio di analisi ridondanti qualora il repository non abbia subito modifiche dall'ultimo report.],

      [TA-6],
      [Verificare che il sistema impedisca l'avvio di analisi concorrenti sul medesimo repository, notificando correttamente lo stato di "Analisi in corso".],

      [TA-7],
      [Verificare che l'accesso all'analisi di repository privati sia interdetto agli utenti che non hanno completato l'integrazione con GitHub, e che la richiesta di analisi (pubblica o privata) sia inibita in assenza di selezione di almeno un'area di interesse.],

      [TA-8],
      [Verificare che il sistema protegga i dati di sessione e i token GitHub tramite cifratura e protocolli di comunicazione sicuri (HTTPS).],

      [TA-9],
      [Verificare che l'utente possa visualizzare correttamente lo storico globale dei repository analizzati, identificando chiaramente i progetti tramite i metadati esposti.],

      [TA-10],
      [Verificare che l'utente possa navigare nel dettaglio di un singolo report, filtrando le sezioni di interesse (Codice, Sicurezza, Documentazione) e visualizzando i relativi metadati di audit.],

      [TA-11],
      [Verificare che il sistema presenti chiaramente le criticità rilevate e le relative remediation suggerite, distinguendo i casi di conformità (esito positivo).],

      [TA-12],
      [Verificare che l'utente possa impostare un intervallo temporale valido per generare un confronto storico tra le metriche di diversi report.],

      [TA-13],
      [Verificare che il sistema generi visualizzazioni grafiche e tabelle comparative coerenti, evidenziando i trend di miglioramento o peggioramento delle metriche del codice.],

      [TA-14],
      [Verificare che l'analisi della qualità del codice esponga correttamente i dati di analisi statica (bug/smell) e le percentuali di copertura dei test di unità.],

      [TA-15],
      [Verificare che l'analisi della sicurezza esponga correttamente le vulnerabilità delle librerie (CVE) e i rilievi di conformità agli standard OWASP.],

      [TA-16],
      [Verificare che l'analisi della documentazione identifichi correttamente gli errori di sintassi e il grado di completezza rispetto al codice sorgente.],

      [TA-17],
      [Verificare che l'utente possa consultare il ranking dei repository ordinati per punteggio di qualità globale, ricevendo un'informativa corretta in assenza di dati.],

      [TA-18],
      [Verificare che l'utente possa disconnettere l'account GitHub dal profilo CodeGuardian, con conseguente revoca delle autorizzazioni e dei token.],

      [TA-19],
      [Verificare che l'utente possa esportare i report di analisi in formati standard (PDF/JSON), garantendo la selezione obbligatoria del formato.],

      [TA-20],
      [Verificare che l'utente possa modificare la propria password di accesso previa validazione della credenziale attuale e rispetto dei criteri di sicurezza.],

      [TA-21],
      [Verificare che l'utente possa creare una raccolta di report associata a un repository GitHub, fornendo nome e URL validi, con eventuale descrizione facoltativa.],

      [TA-22],
      [Verificare che l'Orchestratore verifichi correttamente l'accessibilità del repository prima di avviare l'analisi, distinguendo tra risorse pubbliche e private e gestendo i fallimenti di accesso.],

      [TA-23],
      [Verificare che l'Orchestratore avvii correttamente il processo di analisi, clonando il repository e distribuendo la codebase agli strumenti di analisi per le aree selezionate.],

      [TA-24],
      [Verificare che il sistema aggreghi i risultati degli strumenti di analisi in un report strutturato, lo archivi correttamente nel sistema di persistenza e aggiorni lo stato dell'analisi a "completato".],

      [TA-25],
      [Verificare che l'utente riceva una notifica al completamento dell'analisi e che il report risulti consultabile nella propria area personale anche in assenza di ricezione della notifica.],

      [TA-26],
      [Verificare che l'utente venga notificato in caso di errore critico durante l'analisi e che lo stato di fallimento sia visibile nella dashboard indipendentemente dalla ricezione della notifica.],

      [TA-27],
      [Verificare che l'Utente Avanzato possa accettare una remediation proposta, con conseguente applicazione delle modifiche al repository e aggiornamento dello stato nella dashboard.],

      [TA-28],
      [Verificare che l'Utente Avanzato possa rifiutare una remediation proposta, con conseguente scarto della proposta e invarianza del repository.],

      [TA-29],
      [Verificare che l'Utente Avanzato con integrazione GitHub attiva possa avviare con successo l'analisi di un repository GitHub privato presente nel proprio catalogo, selezionando le aree di interesse.],

      [TA-30],
      [Verificare che l'Utente Avanzato possa gestire il proprio catalogo di repository privati, inserendo, visualizzando e rimuovendo risorse, con corretta gestione dei duplicati.],

      [TA-31],
      [Verificare che il proprietario di un repository privato possa gestire i permessi di accesso ai report, aggiungendo e revocando le autorizzazioni per altri utenti della piattaforma.],

      [TA-32],
      [Verificare che l'utente possa rimuovere una raccolta di report dal proprio profilo senza che i singoli report in essa contenuti vengano eliminati.],

      [TA-33],
      [Verificare che l'utente possa cancellare definitivamente il proprio profilo CodeGuardian, con conseguente rimozione dei dati personali, delle associazioni OAuth e invalidazione delle credenziali precedenti.],
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
Dopo la fase iniziale, in cui le attività di formazione e setup sono state gestite come investimento interno senza gravare sul budget, il progetto è entrato nella fase operativa con l'avvio dello _Sprint 1_. In questa prima iterazione Skarab Group ha mostrato un buon equilibrio economico, completando il lavoro con un dispendio di risorse coerente con il valore prodotto, pur registrando un lieve ritardo rispetto alla pianificazione ideale.

Tuttavia, la situazione ha subito una variazione significativa durante lo _Sprint 2_: a fronte di un incremento del _Planned Value_ (PV) e dell'_Actual Cost_ (AC), l'_Earned Value_ (EV) ha subito una flessione. Questo testimonia l'insorgere di inefficienze produttive e debito tecnico, legati alla necessità di ricalibrare task qualitativamente insufficienti che hanno rallentato la produzione.

#pagebreak()
=== Budget Variance - Schedule Variance (MPC05 e MPC06)
#image("../assets/graficiPdQ/grafico_bv_sv.png", height: 50%)
Il grafico monitora la salute economica e temporale del progetto a partire dallo _Sprint 1_ durante il quale la _Schedule Variance_ (SV) mostra una leggera flessione. Quest'ultima si è accentuata nello _Sprint 2_, riflettendosi anche sulla _Budget Variance_ (BV).

#pagebreak()
=== Cost Performance Index - Schedule Performance Index (MPC07 e MPC08)
#image("../assets/graficiPdQ/grafico_cpi_spi.png", height: 50%)
Dal grafico è possibile notare come, inizialmente, lo _Schedule Performance Index_ (SPI) sia inferiore a 1, indicando un leggero ritardo fisiologico. La buona gestione dei costi è invece documentata dal _Cost Performance Index_ (CPI) che, essendo pari a 1, indica un ottimo utilizzo del budget.

La situazione è peggiorata nel corso dello _Sprint 2_, durante il quale si è verificato un crollo dello _Schedule Performance Index_ (SPI) che segnala un ritardo critico rispetto alla pianificazione. La cattiva gestione temporale è in contrasto con il _Cost Performance Index_ (CPI) che si mantiene abbastanza stabile, confermando che il problema non è di natura economica ma organizzativa.

#pagebreak()
=== Estimate at Completion (MPC09)
#image("../assets/graficiPdQ/grafico_eac.png", height: 50%)
Dopo una fase iniziale di stabilità coincidente con il budget originale, è possibile notare come una gestione inefficiente delle risorse abbia spinto la previsione di spesa verso il limite massimo.

#pagebreak()
=== Requirements Stability Index (MPC10)
#image("../assets/graficiPdQ/grafico_rsi.png", height: 50%)
Il _Requirements Stability Index_ (RSI) registra un peggioramento nel corso dello _Sprint 2_. Tale flessione è riconducibile a una sottostima iniziale dei requisiti impliciti e all'emersione di ulteriori requisiti in seguito al colloquio con il Prof. Cardin: il team ha dovuto apportare modifiche significative per aggiungere i requisiti non tracciati in precedenza dagli Analisti.

#pagebreak()
== Processi di Supporto
=== Gulpease Index (MPC11)
=== Correttezza Ortografica (MPC12)

#pagebreak()
== Processi Organizzativi
=== Metrics Satisfaction (MPC15)
=== Sprint Goal Achievement (MPC16)
#image("../assets/graficiPdQ/grafico_sga.png", height: 50%)
Dal grafico è possibile osservare la buona efficacia operativa dimostrata durante lo _Sprint 1_ dal team, che è riuscito a completare gli obiettivi prefissati quasi nella loro interezza. Durante lo _Sprint 2_, invece, la metrica ha subito una flessione poiché gli obiettivi prefissati non sono stati pienamente raggiunti.

#pagebreak()

= Miglioramento Continuo

Il processo di miglioramento continuo rappresenta il motore evolutivo del *Way of Working* del gruppo #def("Skarab Group"). Non ci si limita a correggere gli errori nel codice, ma si punta a ottimizzare sistematicamente i processi organizzativi e di supporto per prevenire la ricorrenza delle anomalie.

La strategia adottata implementa rigorosamente il ciclo di Deming (#def("PDCA")), integrandosi con le iterazioni previste dalla metodologia #def("Agile"):

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

= Conclusioni

L'attività di miglioramento continuo per il progetto #def("Code Guardian") si è rivelata non solo una pratica formale, ma una necessità operativa. L'analisi delle metriche e le retrospettive hanno evidenziato come l'avvio del progetto abbia scontato l'inevitabile "prezzo d'ingresso" dovuto alla curva di apprendimento dei nuovi strumenti (come Jira e Typst) e al necessario assestamento delle dinamiche comunicative interne.

Le azioni correttive intraprese, in particolare la ristrutturazione dei canali informativi (*AM01*) e la standardizzazione documentale (*AM03*), hanno permesso di superare l'iniziale frammentazione operativa. Sebbene la ridistribuzione del budget orario (*AM02*) abbia garantito il raggiungimento degli obiettivi RTB, ha reso evidente l'importanza di una pianificazione più granulare per il futuro.

Consapevoli che l'assetto attuale non è un traguardo definitivo ma uno stato da preservare, il team si impegna a mantenere alta la vigilanza. L'obiettivo per le prossime fasi non è l'assenza di problemi, ma la capacità di identificarli tempestivamente tramite il monitoraggio dei dati e risolverli con la stessa reattività dimostrata in questo primo periodo.
