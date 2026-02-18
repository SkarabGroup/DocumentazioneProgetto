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
#let versione = "v0.9.0"

#titlePage("Piano di Qualifica", versione)
#set heading(numbering: "1.1.1")
#set page(numbering: "1", header: header("Piano di Qualifica"), footer: footer())
#let history = (
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
      [TS-1], [Verificare la corretta creazione di un account CodeGuardian a seguito dell'inserimento di dati validi.], [UC1],

      [TS-1.1], [Verificare la validazione dello username rispetto ai vincoli di formato (alfanumerico, 4-20 caratteri).], [UC1.1.1],

      [TS-1.2], [Verificare l'inibizione della registrazione in caso di username già associato a un account esistente.], [UC1.1.2],

      [TS-1.3], [Verificare la validazione sintattica dell'indirizzo email secondo gli standard previsti.], [UC1.2.1],

      [TS-1.4], [Verificare l'inibizione della registrazione in caso di email già associata a un account esistente.], [UC1.2.2],

      [TS-1.5], [Verificare la validazione della password rispetto ai criteri di complessità (sicurezza).], [UC1.3.1],

      [TS-1.6], [Verificare la segnalazione di errore in caso di invio del modulo con campi obbligatori vuoti.], [UC1.0.1],

      // --- AUTENTICAZIONE (UC2) ---
      [TS-2], [Verificare l'accesso alle funzionalità riservate tramite inserimento di credenziali corrette.], [UC2],

      [TS-2.1], [Verificare la validazione del formato delle credenziali in fase di login.], [UC2.1.1, UC2.2.1],

      [TS-2.2], [Verificare la segnalazione di errore per identificativo (username) non presente a sistema.], [UC2.1.2],

      [TS-2.3], [Verificare la segnalazione di errore in caso di password non corrispondente all'identificativo fornito.], [UC2.2.2],

      [TS-2.4], [Verificare l'inibizione dell'accesso in caso di modulo di login incompleto.], [UC2.0.1],

      // --- COLLEGAMENTO GITHUB (UC3) ---
      [TS-3], [Verificare il corretto completamento del flusso di autorizzazione OAuth con GitHub.], [UC3],

      [TS-3.1], [Verificare l'annullamento della procedura a seguito del rifiuto del reindirizzamento esterno.], [UC3.1.1],

      [TS-3.2], [Verificare la gestione degli errori tecnici durante lo scambio dei parametri di autorizzazione.], [UC3.2.1],

      [TS-3.3], [Verificare l'inibizione del collegamento se il profilo GitHub risulta già associato a un altro utente.], [UC3.2.2],

      [TS-3.4], [Verificare la gestione del mancato consenso dell'utente sulla piattaforma GitHub.], [UC3.2.3],

      // --- RICHIESTA ANALISI (UC4) ---
      [TS-4], [Verificare la corretta presa in carico di una richiesta di analisi per un repository GitHub.], [UC4],

      [TS-4.1], [Verificare la validazione sintattica dell'URL del repository (protocollo e dominio).], [UC4.1.1],

      [TS-4.2], [Verificare la segnalazione di errore in caso di repository inesistente o non accessibile.], [UC4.1.2],

      [TS-4.3], [Verificare l'inibizione della richiesta se il campo URL risulta vuoto.], [UC4.1.3],

      [TS-4.4], [Verificare l'inibizione della richiesta se non viene selezionata almeno un'area di interesse.], [UC4.2.1],

      [TS-4.5], [Verificare la visualizzazione dell'informativa se l'analisi risulta già aggiornata rispetto ai dati remoti.], [UC4.0.1],

      [TS-4.6], [Verificare la visualizzazione dell'informativa se esiste un'analisi già pendente per lo stesso repository.], [UC4.0.2],
     
      // --- VISUALIZZAZIONE LISTA (UC5) ---
      [TS-5], [UC5], 
      [Verifica navigazione e visualizzazione dell'elenco repository analizzati.], 
      [Il sistema espone la lista corretta dei repository con metadati (Nome, URL, Data).],

      [TS-5.0.1], [UC5.0.1], 
      [Verifica comportamento in assenza di repository analizzati a sistema.], 
      [La tabella è inibita e viene mostrata l'informativa di "lista vuota".],

      // --- VISUALIZZAZIONE REPORT (UC6) ---
      [TS-6], [UC6], 
      [Verifica apertura del dettaglio report a seguito di selezione dalla lista.], 
      [Il sistema carica correttamente la dashboard di dettaglio del report specifico.],

      [TS-6.1], [UC6.1], 
      [Verifica funzionamento dei filtri di visualizzazione aree (Codice, Sicurezza, Doc).], 
      [Il sistema aggiorna dinamicamente le sezioni visibili in base alla selezione.],

      [TS-6.0.1], [UC6.0.1], 
      [Verifica inibizione rendering se non viene selezionata alcuna area.], 
      [Viene mostrato l'avviso informativo che invita a selezionare almeno un'area.],

      [TS-6.2.1], [UC6.2.1], 
      [Verifica esposizione corretta del timestamp di audit.], 
      [Il campo data/ora del report è popolato e formattato correttamente.],

      [TS-6.2.2], [UC6.2.2], 
      [Verifica visualizzazione hash commit GitHub analizzato.], 
      [Il sistema espone l'identificativo univoco corretto della versione analizzata.],

      [TS-6.2.3], [UC6.2.3], 
      [Verifica visualizzazione username del richiedente analisi.], 
      [Viene mostrato correttamente l'identificativo dell'utente che ha avviato l'audit.],

      [TS-6.3.1.1], [UC6.3.1.1], 
      [Verifica visualizzazione esito positivo in assenza di criticità.], 
      [Viene mostrato il messaggio di assenza di remediation necessarie.],

      // --- CONFRONTO STORICO (UC7) ---
      [TS-7], [UC7], 
      [Verifica selezione e conferma di un intervallo temporale per il confronto.], 
      [Il sistema accetta i limiti temporali e aggiorna la vista comparativa.],

      [TS-7.0.1], [UC7.0.1], 
      [Verifica invio confronto con campi temporali non popolati.], 
      [Il sistema inibisce l'azione e notifica la mancanza di parametri.],

      [TS-7.0.2], [UC7.0.2], 
      [Verifica risposta del sistema se non esistono report nel periodo scelto.], 
      [Viene mostrata l'informativa specifica di assenza dati storici.],

      [TS-7.0.3], [UC7.0.3], 
      [Verifica inserimento intervallo con Data Inizio > Data Fine.], 
      [Il sistema segnala l'errore di coerenza cronologica.],

      [TS-7.0.4], [UC7.0.4], 
      [Verifica inserimento intervallo eccedente i 12 mesi.], 
      [La richiesta è inibita e viene segnalato il superamento dell'ampiezza massima.],

      // --- METRICHE COMPARATIVE (UC8) ---
      [TS-8], [UC8], 
      [Verifica generazione grafici di andamento e tabelle comparative.], 
      [I grafici e le tabelle vengono renderizzati con i dati coerenti del periodo.],

      [TS-8.1], [UC8], 
      [Verifica interazione con punti dati del grafico comparativo.], 
      [Al click/hover vengono esposti i dettagli puntuali della specifica analisi.],

      [TS-8.2], [UC8], 
      [Verifica calcolo e visualizzazione trend di variazione in tabella.], 
      [La tabella mostra correttamente gli indicatori di trend rispetto al report precedente.],

      // --- ANALISI DEL CODICE (UC9) ---
      [TS-9.1], [UC9.1], 
      [Verifica visualizzazione risultati analisi statica (bug, smell, vuln).], 
      [Tutti i rilievi tecnici dell'analisi statica sono esposti correttamente.],

      [TS-9.2], [UC9.2], 
      [Verifica esposizione metriche copertura test di unità.], 
      [Le percentuali di copertura e l'esito dei test sono visualizzati correttamente.],

      [TS-9.3.1], [UC9.3.1], 
      [Verifica informativa assenza remediation nell'area codice.], 
      [Viene visualizzato l'esito positivo specifico per la qualità del codice.],
    ),
  ),
  caption: [Tabella dei Test di Sistema],
  kind: table,
  supplement: [Table],
)



/*
      [TS-5],
      [Verificare che un Utente autenticato avanzato possa visualizzare la lista dei report di analisi e aprire la dashboard di dettaglio],
      [UC5],

      [TS-5.1],
      [Verificare che venga mostrato messaggio appropriato se nessun report è disponibile per il repository selezionato],
      [UC5.2.1],

      [TS-5.2],
      [Verificare che venga restituito errore se l'utente tenta di procedere senza selezionare alcun report],
      [UC5.2.2],

      [TS-5.3],
      [Verificare che venga restituito errore se l'utente non seleziona alcun dato specifico da visualizzare],
      [UC5.3.1],

      [TS-5.4],
      [Verificare che il report completo con tutti i dati selezionati dall'utente venga renderizzato correttamente],
      [UC5.4],

      [TS-6],
      [Verificare che un Utente possa filtrare i report passati selezionando un intervallo temporale valido],
      [UC6],

      [TS-6.1], [Verificare che venga restituito errore se l'utente non seleziona alcun intervallo temporale], [UC6.1],

      [TS-6.2],
      [Verificare che venga mostrato messaggio appropriato se nessun report è presente nel periodo selezionato],
      [UC6.2.1],

      [TS-6.3], [Verificare che venga restituito errore se l'intervallo temporale è incoerente], [UC6.2.2],

      [TS-6.4],
      [Verificare che venga restituito errore se l'intervallo temporale supera l'ampiezza massima consentita],
      [UC6.2.3],

      [TS-7], [Verificare che il grafico comparativo tra report di analisi venga generato correttamente], [UC7],

      [TS-7.1],
      [Verificare che l'Utente possa interagire con i punti dati del grafico per visualizzare dettagli specifici],
      [UC7],

      [TS-8],
      [Verificare che la tabella comparativa con indicatori di variazione rispetto al report precedente venga generata correttamente],
      [UC8],

      [TS-9], [Verificare che tutte le sezioni di analisi del codice vengano presentate correttamente], [UC9],

      [TS-9.1], [Verificare che il report di analisi statica del codice venga visualizzato correttamente], [UC9.1],

      [TS-9.2], [Verificare che l'analisi delle librerie e dipendenze venga visualizzata correttamente], [UC9.2],

      [TS-9.3], [Verificare che il report di analisi sicurezza OWASP venga visualizzato correttamente], [UC9.3],

      [TS-9.4],
      [Verificare che il numero totale di vulnerabilità rilevate nel codice venga calcolato correttamente],
      [UC9.4],

      [TS-10],
      [Verificare che tutte le sezioni di analisi della documentazione vengano presentate correttamente],
      [UC10],

      [TS-10.1],
      [Verificare che gli errori di spelling nella documentazione vengano rilevati e visualizzati correttamente],
      [UC10.1],

      [TS-10.2],
      [Verificare che la percentuale di completezza della documentazione rispetto al codice venga calcolata correttamente],
      [UC10.2],

      [TS-11],
      [Verificare che il numero totale di vulnerabilità rilevate nell'intero repository venga visualizzato correttamente],
      [UC11],

      [TS-12], [Verificare che l'area metadati del report venga visualizzata correttamente], [UC12],

      [TS-12.1], [Verificare che la data di generazione del report venga visualizzata correttamente], [UC12.1],

      [TS-12.2], [Verificare che l'elenco dei commit analizzati nel report venga visualizzato correttamente], [UC12.2],

      [TS-12.3], [Verificare che il nome utente richiedente del report venga visualizzato correttamente], [UC12.3],

      [TS-13],
      [Verificare che un Utente autenticato avanzato possa disconnettere il proprio account GitHub con richiesta di conferma],
      [UC13],

      [TS-13.1],
      [Verificare che venga richiesta conferma esplicita prima di procedere con la disconnessione dell'account GitHub],
      [UC13.1.1],

      [TS-14],
      [Verificare che un Utente possa esportare un report di analisi selezionando il formato desiderato],
      [UC14],

      [TS-14.1],
      [Verificare che venga restituito errore se l'utente non seleziona alcun formato di esportazione],
      [UC14.1.1],

      [TS-14.2],
      [Verificare che il file di esportazione venga generato correttamente dopo la conferma dell'utente],
      [UC14.2],

      [TS-15],
      [Verificare che un Utente autenticato possa modificare la propria password rispettando i vincoli di validazione],
      [UC15],

      [TS-15.1],
      [Verificare che venga restituito errore se la password corrente non viene inserita o è errata],
      [UC15.1.1, UC15.1.2],

      [TS-15.2], [Verificare che venga restituito errore se la nuova password non viene inserita], [UC15.2.1],

      [TS-15.3],
      [Verificare che venga restituito errore se la nuova password non rispetta i criteri di sicurezza],
      [UC15.2.2],

      [TS-15.4],
      [Verificare che venga restituito errore se la nuova password è identica alla password corrente],
      [UC15.2.3],

      [TS-15.5], [Verificare che l'Utente riceva conferma dell'avvenuta modifica della password], [UC15.4],

      [TS-16],
      [Verificare che i suggerimenti di remediation per le issue identificate vengano visualizzati correttamente],
      [UC16],

      [TS-16.1],
      [Verificare che venga mostrato messaggio appropriato se nessuna issue è stata identificata nel repository],
      [UC16.1.1],

      [TS-16.2],
      [Verificare che il dettaglio di ogni singolo suggerimento di remediation venga visualizzato correttamente],
      [UC16.2],

      [TS-17],
      [Verificare che l'Orchestratore crei correttamente l'ambiente sandbox per l'analisi tramite Docker],
      [UC17],

      [TS-17.1],
      [Verificare che l'Orchestratore intercetti gli errori durante la creazione dell'ambiente sandbox],
      [UC17.1],

      [TS-17.2],
      [Verificare che l'Orchestratore comunichi correttamente gli errori di creazione sandbox al frontend],
      [UC17.1.1],

      [TS-18],
      [Verificare che l'Orchestratore legga correttamente le richieste dell'utente per configurare l'analisi],
      [UC18],

      [TS-18.1], [Verificare che l'Orchestratore esegua l'analisi completa quando richiesta dall'utente], [UC18.1],

      [TS-18.2],
      [Verificare che l'Orchestratore processi correttamente le richieste specifiche dell'utente sulle aree da analizzare],
      [UC18.2],

      [TS-18.3],
      [Verificare che l'Orchestratore esegua automaticamente l'analisi completa se il repository non è mai stato analizzato],
      [UC18.2.1],

      [TS-19],
      [Verificare che le vulnerabilità delle dipendenze vengano analizzate correttamente e venga proposta remediation],
      [UC19],

      [TS-19.1],
      [Verificare che l'Utente possa accettare le remediation proposte per le vulnerabilità delle dipendenze],
      [UC19.1],

      [TS-19.2], [Verificare che l'Utente possa rifiutare le remediation proposte], [UC19.2],

      [TS-20], [Verificare che segreti e token esposti nel codice vengano rilevati correttamente], [UC20],

      [TS-20.1], [Verificare che l'Utente possa rifiutare le remediation proposte per i segreti rilevati], [UC20.1],

      [TS-20.2],
      [Verificare che la revoca automatica dei segreti venga eseguita se integrato con provider esterni],
      [UC20.2],

      [TS-20.3],
      [Verificare che l'Utente possa visualizzare i risultati del rilevamento segreti con file e linee interessate],
      [UC20.3],

      [TS-21],
      [Verificare che la conformità delle licenze delle dipendenze con le policy aziendali venga verificata correttamente],
      [UC21],

      [TS-21.1],
      [Verificare che l'integrazione con il processo di approvazione legale per licenze non conformi funzioni correttamente],
      [UC21.1],

      [TS-22], [Verificare che la revisione automatizzata delle Pull Request venga eseguita correttamente], [UC22],

      [TS-22.1], [Verificare che i test vengano eseguiti automaticamente durante la revisione PR], [UC22.1],

      [TS-22.2],
      [Verificare che suggerimenti di modifica automatici tramite codemods vengano generati correttamente],
      [UC22.2],

      [TS-23], [Verificare che la qualità del codice venga monitorata calcolando metriche e KPI], [UC23],

      [TS-23.1], [Verificare che l'integrazione con tool di metriche esterni funzioni correttamente], [UC23.1],

      [TS-23.2],
      [Verificare che suggerimenti di KPI e obiettivi di qualità basati sulle metriche raccolte vengano generati correttamente],
      [UC23.2],

      [TS-24],
      [Verificare che suggerimenti di refactoring per codice complesso vengano generati identificando code smell],
      [UC24],

      [TS-24.1],
      [Verificare che l'impatto dei refactoring proposti venga verificato tramite test automatizzati],
      [UC24.1],

      [TS-24.2],
      [Verificare che i refactoring vengano applicati automaticamente sotto supervisione dell'utente],
      [UC24.2],

      [TS-24.3],
      [Verificare che l'Utente possa visualizzare i suggerimenti di refactoring con dettagli e impatto],
      [UC24.3],

      [TS-25], [Verificare che changelog e release notes vengano generati automaticamente analizzando i commit], [UC25],

      [TS-25.1],
      [Verificare che i breaking changes vengano rilevati e segnalati correttamente nel changelog generato],
      [UC25.1],

      [TS-25.2], [Verificare che il changelog venga pubblicato automaticamente su GitHub Release], [UC25.2],

      [TS-25.3],
      [Verificare che l'Utente possa visualizzare, modificare e approvare il changelog prima della pubblicazione],
      [UC25.3],

      [TS-26],
      [Verificare che i test vengano analizzati correttamente e le metriche di code coverage vengano calcolate],
      [UC26],

      [TS-26.1],
      [Verificare che i test intermittenti vengano rieseguiti automaticamente per conferma dei risultati],
      [UC26.1],

      [TS-26.2],
      [Verificare che suggerimenti di test addizionali per coprire gap di coverage identificati vengano generati correttamente],
      [UC26.2],

      [TS-26.3],
      [Verificare che l'Utente possa visualizzare il report completo di test e coverage con aree scoperte],
      [UC26.3],

      [TS-27], [Verificare che le policy CI/CD configurate vengano applicate correttamente prima del merge], [UC27],

      [TS-27.1],
      [Verificare che le eccezioni alle policy approvate manualmente vengano gestite correttamente],
      [UC27.1],

      [TS-27.2],
      [Verificare che policy dinamiche differenziate per branch diversi vengano applicate correttamente],
      [UC27.2],

      [TS-27.3],
      [Verificare che l'Utente possa visualizzare i risultati delle policy applicate con dettagli su fallimenti],
      [UC27.3],

      [TS-28],
      [Verificare che report programmabili vengano generati automaticamente e alert configurati vengano inviati],
      [UC28],

      [TS-28.1],
      [Verificare che l'Utente possa configurare filtri e template personalizzati per i report programmabili],
      [UC28.1],

      [TS-28.2],
      [Verificare che azioni automatiche configurate su alert critici vengano eseguite correttamente],
      [UC28.2],

      [TS-28.3], [Verificare che l'Utente possa visualizzare lo storico dei report programmabili generati], [UC28.3],

      [TS-29], [Verificare che l'Orchestratore recuperi e avvii correttamente i tool esterni di analisi], [UC29],

      [TS-29.1], [Verificare che l'Orchestratore richieda correttamente l'analisi del codice al tool esterno], [UC29.1],

      [TS-29.2],
      [Verificare che l'errore venga gestito correttamente quando uno o più linguaggi non sono supportati dal tool di analisi],
      [UC29.1.1],

      [TS-29.3],
      [Verificare che l'Orchestratore richieda correttamente l'analisi della documentazione al tool esterno],
      [UC29.2],

      [TS-29.4], [Verificare che l'Orchestratore richieda correttamente l'analisi OWASP al tool esterno], [UC29.3],

      [TS-29.5],
      [Verificare che l'Orchestratore gestisca correttamente l'indisponibilità di un tool esterno utilizzando alternative],
      [UC29.4],

      [TS-30],
      [Verificare che l'Orchestratore generi correttamente il report finale completo aggregando tutte le analisi],
      [UC30],

      [TS-30.1],
      [Verificare che l'Orchestratore integri correttamente le analisi singole dei vari agenti nel report finale],
      [UC30.1],

      [TS-31], [Verificare che l'Orchestratore trasferisca correttamente il report finale al frontend], [UC31],

      [TS-32],
      [Verificare che l'utente venga notificato correttamente della disponibilità del nuovo report di analisi],
      [UC32],

      [TS-34],
      [Verificare che l'Orchestratore notifichi correttamente il frontend al completamento dell'analisi],
      [UC34],

      [TS-34.1],
      [Verificare che l'Orchestratore ritenti automaticamente l'invio del messaggio di completamento se non riceve acknowledgment],
      [UC34.1],

      [TS-35],
      [Verificare che l'Orchestratore gestisca correttamente errori critici durante l'analisi notificando il frontend],
      [UC35],

      [TS-35.1],
      [Verificare che l'Orchestratore ritenti automaticamente l'invio del messaggio di fallimento se non riceve acknowledgment],
      [UC35.1],

      [TS-36], [Verificare che l'Orchestratore salvi correttamente i metadati del repository nel database], [UC36],

      [TS-37],
      [Verificare che l'Orchestratore verifichi correttamente l'esistenza di repository analizzate in precedenza],
      [UC37],

      [TS-37.1],
      [Verificare che venga gestito correttamente il caso in cui nessuna repository sia stata analizzata],
      [UC37.1],

      [TS-38], [Verificare che il Back-end salvi correttamente il report di analisi nel database], [UC38],

      [TS-38.1],
      [Verificare che l'Orchestratore gestisca correttamente gli errori durante il salvataggio del report],
      [UC38.1],

      [TS-39], [Verificare che il Back-end salvi correttamente le metriche aggregate nel database], [UC39],

      [TS-39.1],
      [Verificare che l'Orchestratore gestisca correttamente gli errori durante il salvataggio delle metriche aggregate],
      [UC39.1],

      [TS-40], [Verificare che il Front-end invii correttamente le credenziali dell'utente al Back-end], [UC40],

      [TS-40.1],
      [Verificare che gli errori durante il trasferimento delle credenziali vengano gestiti correttamente],
      [UC40.1],

      [TS-41],
      [Verificare che il codice OAuth GitHub venga gestito correttamente scambiandolo con un token di accesso persistente],
      [UC41],

      [TS-41.1],
      [Verificare che gli errori durante lo scambio del codice OAuth con GitHub vengano gestiti correttamente],
      [UC41.1],
    ),
  ),
  caption: [Tabella dei Test di Sistema],
  kind: table,
  supplement: [Table],
)
*/
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
      [TU-1.1], [FROb1], [Verifica rendering del componente di creazione account.], [Caricamento corretto del modulo di registrazione.],
      [TU-1.2], [FROb2], [Verifica del metodo di validazione globale pre-invio.], [Blocco della procedura in caso di parametri non validi.],
      [TU-1.3], [FROb3], [Verifica della logica di persistenza dei dati utente nel DB.], [Le credenziali vengono scritte correttamente nel database.],
      [TU-1.4], [FROb4], [Verifica della funzione di hashing: algoritmo sicuro + salt.], [La password non è leggibile; l'hash prodotto è coerente con gli standard.],
      [TU-1.5], [FROb5], [Controllo presenza campi obbligatori (null check).], [Rilevamento campi vuoti nel modulo di registrazione.],
      [TU-1.6], [FROb6], [Verifica logica di inibizione della registrazione.], [Impossibilità di procedere con dati obbligatori mancanti.],
      [TU-1.7], [FROb7], [Verifica attivazione notifiche di errore per campi vuoti.], [Visualizzazione degli avvisi specifici per ogni campo mancante.],
      [TU-1.8], [FROb8], [Verifica input username nel modulo.], [Il valore digitato viene acquisito correttamente.],
      [TU-1.9], [FROb9], [Test di validazione lunghezza username (limiti 4-20).], [Restituisce errore per stringhe < 4 o > 20 caratteri.],
      [TU-1.10], [FROb10], [Verifica regex per caratteri esclusivamente alfanumerici.], [Esclusione di caratteri speciali e spazi.],
      [TU-1.11], [FROb11], [Verifica trigger notifica errore formato username.], [Comparsa del messaggio di errore in caso di violazione regex.],
      [TU-1.12], [FROb12], [Query di verifica unicità dello username nel database.], [Identificazione di collisioni con account già esistenti.],
      [TU-1.13], [FROb13], [Verifica trigger notifica username già occupato.], [Feedback visivo immediato per username non disponibile.],
      [TU-1.14], [FROb14], [Verifica input email nel modulo.], [Acquisizione corretta della stringa email.],
      [TU-1.15], [FROb15], [Validazione sintattica email secondo standard RFC.], [Accettazione di formati standard (user\@domain.ext).],
      [TU-1.16], [FROb16], [Verifica trigger notifica errore sintassi email.], [Feedback visivo in caso di email malformata.],
      [TU-1.17], [FROb17], [Query di verifica unicità email nel database.], [Identificazione di email già associate ad altri profili.],
      [TU-1.18], [FROb18], [Verifica trigger notifica email già registrata.], [Messaggio di errore per email duplicata.],
      [TU-1.19], [FROb19], [Verifica input chiave di accesso.], [Acquisizione sicura della stringa password.],
      [TU-1.20], [FROb20], [Verifica requisiti complessità password (min 8, A, a, 1, !).], [Validazione positiva solo se tutti i criteri sono soddisfatti.],
      [TU-1.21], [FROb21], [Verifica trigger notifica password non sicura.], [Elenco puntuale dei criteri di sicurezza non rispettati.],

      // --- AUTENTICAZIONE (UC2) ---
      [TU-2.1], [FROb22], [Verifica rendering pagina di Login.], [Visualizzazione corretta del form di autenticazione.],
      [TU-2.2], [FROb23], [Verifica autorizzazione post-validazione credenziali.], [Rilascio della sessione solo con dati corretti.],
      [TU-2.3], [FROb24], [Verifica protocollo di trasmissione credenziali (HTTPS).], [Dati criptati durante il transito verso il server.],
      [TU-2.4], [FROb25], [Test del meccanismo di rate limiting / lockout.], [Blocco dell'IP o account dopo N tentativi falliti.],
      [TU-2.5], [FROb26], [Verifica rilevamento campi mancanti nel login.], [Trigger errore per username o password non inseriti.],
      [TU-2.6], [FROb27], [Verifica blocco autenticazione per form incompleto.], [Negazione accesso in assenza di credenziali.],
      [TU-2.7], [FROb28], [Verifica visualizzazione avviso campi obbligatori login.], [Presenza di messaggio d'errore a schermo.],
      [TU-2.8], [FROb29], [Verifica immissione username per autenticazione.], [Stringa username correttamente catturata.],
      [TU-2.9], [FROb30], [Verifica notifica formato username errato in login.], [Messaggio informativo su errore sintattico.],
      [TU-2.10], [FROb31], [Verifica query esistenza account per username.], [Controllo presenza utente prima del check password.],
      [TU-2.11], [FROb32], [Verifica messaggio errore "Identificativo non trovato".], [Feedback specifico per username inesistente.],
      [TU-2.12], [FROb33], [Verifica immissione password per autenticazione.], [Stringa password correttamente catturata.],
      [TU-2.13], [FROb34], [Verifica notifica formato password errato in login.], [Feedback su errore sintattico password.],
      [TU-2.14], [FROb35], [Verifica corrispondenza hash password fornita vs DB.], [Confronto sicuro tra input e dato persistito.],
      [TU-2.15], [FROb36], [Verifica messaggio errore "Password errata".], [Feedback specifico per credenziali non corrispondenti.],

      // --- GITHUB (UC3) ---
      [TU-3.1], [FROb37], [Verifica accesso area integrazioni GitHub.], [Rendering sezione collegamento account.],
      [TU-3.2], [FROb38], [Verifica gestione reindirizzamento OAuth GitHub.], [Generazione URL corretto verso dominio esterno.],
      [TU-3.3], [FROb39], [Verifica autorizzazione post-integrazione riuscita.], [Abilitazione interazioni repository per l'utente.],
      [TU-3.4], [FROb40], [Verifica cifratura Access Token nel database.], [I token GitHub non sono salvati in chiaro.],
      [TU-3.5], [FROb41], [Verifica associazione univoca Token-Sessione.], [Il token non è accessibile da altre sessioni utente.],
      [TU-3.6], [FROb42], [Verifica rendering avviso pre-reindirizzamento.], [Visualizzazione informativa di sicurezza.],
      [TU-3.7], [FROb43], [Verifica gestione comando conferma/annulla redirect.], [Esecuzione o blocco del redirect in base all'input.],
      [TU-3.8], [FROb44], [Verifica gestione errore sincronizzazione (timeout/dati).], [Feedback su fallimento tecnico della procedura.],
      [TU-3.9], [FROb45], [Verifica blocco associazione per profilo GitHub già in uso.], [Inibizione collegamento se account già censito.],
      [TU-3.10], [FROb46], [Verifica gestione errore "Negato Consenso" GitHub.], [Feedback su interruzione volontaria dell'utente.],

      // --- RICHIESTA ANALISI (UC4) ---
      [TU-4.1], [FROb47], [Verifica accesso sezione configurazione analisi.], [Rendering modulo di richiesta audit.],
      [TU-4.2], [FROb48], [Verifica predisposizione campi URL e Aree Interesse.], [Presenza degli input richiesti nel modulo.],
      [TU-4.3], [FROb49], [Verifica validazione globale parametri pre-audit.], [Inoltro consentito solo con tutti i dati validi.],
      [TU-4.4], [FROb50], [Verifica titolarità repository (lato server).], [Il sistema convalida il possesso del repo prima dell'invio.],
      [TU-4.5], [FROb51], [Verifica generazione ID univoco per la richiesta.], [Tracciabilità garantita tramite identificativo univoco.],
      [TU-4.6], [FROb52], [Verifica immissione URL nel campo dedicato.], [Cattura corretta dell'indirizzo repository.],
      [TU-4.7], [FROb53], [Verifica vincoli sintattici URL (https + github.com).], [Validazione positiva solo per domini GitHub sicuri.],
      [TU-4.8], [FROb54], [Verifica notifica errore formato URL.], [Comparsa messaggio "URL non conforme".],
      [TU-4.9], [FROb55], [Verifica controllo accessibilità repository remoto.], [Test di raggiungibilità della risorsa GitHub.],
      [TU-4.10], [FROb56], [Verifica notifica inaccessibilità repository.], [Feedback su repo privato o non esistente.],
      [TU-4.11], [FROb57], [Verifica inibizione invio per URL mancante.], [Messaggio di errore se il campo URL è vuoto.],
      [TU-4.12], [FROb58], [Verifica selezione multipla aree di interesse.], [Memorizzazione corretta del set di aree selezionate.],
      [TU-4.13], [FROb59], [Verifica inibizione invio per nessuna area scelta.], [Messaggio di errore se il set di aree è vuoto.],
      [TU-4.14], [FROb60], [Verifica coerenza hash report vs commit GitHub.], [Confronto tra versioni del codice per skip analisi.],
      [TU-4.15], [FROb61], [Verifica blocco invio per report up-to-date.], [Informativa su analisi già aggiornata.],
      [TU-4.16], [FROb62], [Verifica rilevamento processi analisi attivi.], [Controllo lock sul repository nel database.],
      [TU-4.17], [FROb63], [Verifica impedimento invio se analisi in corso.], [Feedback su audit già pendente.],

      // --- LISTA REPOSITORY (UC5) ---
      [TU-5.1], [FROb64], [Verifica navigazione verso sezione riepilogativa.], [Accesso riuscito alla dashboard repository.],
      [TU-5.2], [FROb65], [Controllo mapping metadati: Nome, URL, Data.], [Oggetti lista popolati correttamente.],
      [TU-5.3], [FROb66], [Validazione logica per visualizzazione informativa lista vuota.], [Messaggio mostrato se l'array repository è vuoto.],

      // --- VISUALIZZAZIONE REPORT (UC6) ---
      [TU-6.1], [FROb67], [Verifica selezione e caricamento report da lista.], [Caricamento riuscito dei dati del report selezionato.],
      [TU-6.2], [FROb68], [Verifica stato dei filtri aree (toggle on/off).], [Le aree analitiche sono correttamente filtrate.],
      [TU-6.3], [FROb69], [Controllo validazione: almeno un'area attiva.], [Blocco visualizzazione se nessuna sezione è filtrata.],
      [TU-6.4], [FROb70], [Verifica correttezza timestamp generazione audit.], [Data e ora corrispondono al record del database.],
      [TU-6.5], [FROb71], [Verifica corrispondenza hash commit GitHub.], [L'identificativo mostrato è identico all'hash originale.],
      [TU-6.6], [FROb72], [Controllo visualizzazione username richiedente.], [Lo username corrisponde all'autore della richiesta.],
      [TU-6.7], [FROb73], [Verifica integrità metriche tecniche per aree scelte.], [Dati numerici visualizzati correttamente.],
      [TU-6.8], [FROb74], [Verifica associazione remediation-criticità.], [Suggerimenti estratti correttamente per ogni difetto.],
      [TU-6.9], [FROb75], [Controllo messaggio esito positivo in assenza di criticità.], [Informativa mostrata per aree conformi agli standard.],

      // --- CONFRONTO STORICO (UC7) ---
      [TU-7.1], [FROb76], [Verifica selezione limiti Start/End nel componente calendario.], [Intervallo acquisito correttamente.],
      [TU-7.2], [FROb77], [Verifica invio comando aggiornamento confronto.], [Trigger di ricalcolo comparativo attivato.],
      [TU-7.3], [FROb78], [Controllo campi obbligatori temporali.], [Errore restituito per input nulli.],
      [TU-7.4], [FROb79], [Verifica query di ricerca report in intervallo.], [Messaggio "No Data" restituito se il range è vuoto.],
      [TU-7.5], [FROb80], [Validazione coerenza: Start Date < End Date.], [Blocco se la data d'inizio è successiva alla fine.],
      [TU-7.6], [FROb81], [Controllo ampiezza massima intervallo (12 mesi).], [Errore restituito se l'intervallo è troppo vasto.],

      // --- METRICHE COMPARATIVE (UC8) ---
      [TU-8.1], [FRDe1], [Verifica logica di generazione dataset per grafici.], [Dati trasformati correttamente in serie storiche.],
      [TU-8.2], [FRDe2], [Verifica estrazione dati puntuali all'interazione con grafico.], [Valore esatto restituito al click sull'elemento.],
      [TU-8.3], [FRDe3], [Verifica popolamento righe tabella comparativa.], [Corrispondenza 1:1 tra report e righe tabella.],
      [TU-8.4], [FRDe4], [Validazione algoritmo trend di variazione percentuale.], [Calcolo (Delta/Valore)\*100 eseguito correttamente.],

      // --- ANALISI DEL CODICE (UC9) ---
      [TU-9.1], [FROb82], [Verifica caricamento sottomodulo qualità codice.], [Modulo renderizzato con parametri corretti.],
      [TU-9.2], [FROb83], [Verifica parser risultati analisi statica.], [Bug, vulnerabilità e code smell identificati.],
      [TU-9.3], [FROb84], [Controllo calcolo percentuale copertura test.], [Valore normalizzato 0-100% calcolato correttamente.],
      [TU-9.4], [FROb85], [Verifica mappatura remediation per area codice.], [Soluzioni visualizzate coerentemente con i bug.],
      [TU-9.5], [FROb86], [Controllo informativa "Code Clean".], [Esito positivo mostrato se non ci sono remediation.],    ),
  ),
  caption: [Tabella dei Test di Unità],
  kind: table,
  supplement: [Table],
)
/*
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
      columns: (1.3fr, 1.5fr, 3fr, 3fr),
      inset: 10pt,
      table.header([*ID Test*], [*Requisito\ Riferimento*], [*Descrizione*], [*Risultato Atteso*]),

      [TU-1.1],
      [FR1],
      [Verifica rendering pagina di registrazione.],
      [La pagina viene visualizzata correttamente con tutti i campi.],

      [TU-1.2],
      [FR3],
      [Verifica inserimento username nel campo dedicato.],
      [Il valore inserito viene accettato e memorizzato.],

      [TU-1.3],
      [FR6, FR7],
      [Verifica validatore Username: lunghezza minima 4 e massima 20 caratteri.],
      [La funzione restituisce `false` per valori fuori range.],

      [TU-1.4],
      [FR8],
      [Verifica validatore Username: solo caratteri alfanumerici.],
      [La funzione restituisce `false` per caratteri speciali.],

      [TU-1.5],
      [FR9],
      [Verifica messaggio errore per username non valido.],
      [Il messaggio di errore viene visualizzato correttamente.],

      [TU-1.6],
      [FR10],
      [Verifica controllo unicità username nel database.],
      [La funzione restituisce `false` se username già esistente.],

      [TU-1.7],
      [FR4],
      [Verifica inserimento email nel campo dedicato.],
      [Il valore inserito viene accettato e memorizzato.],

      [TU-1.8],
      [FR11, FR12],
      [Verifica validatore Email: presenza '@' e dominio valido.],
      [La funzione restituisce `false` per email malformate.],

      [TU-1.9],
      [FR13],
      [Verifica messaggio errore per email non valida.],
      [Il messaggio di errore viene visualizzato correttamente.],

      [TU-1.10],
      [FR14],
      [Verifica controllo unicità email nel database.],
      [La funzione restituisce `false` se email già esistente.],

      [TU-1.11],
      [FR5],
      [Verifica inserimento password nel campo dedicato.],
      [Il valore inserito viene accettato e memorizzato.],

      [TU-1.12],
      [FR15],
      [Verifica validatore Password: lunghezza minima 8 caratteri.],
      [La funzione restituisce `false` per password troppo corte.],

      [TU-1.13],
      [FR16, FR17],
      [Verifica validatore Password: presenza maiuscola e minuscola.],
      [La funzione restituisce `false` se mancano lettere maiuscole o minuscole.],

      [TU-1.14],
      [FR18, FR19],
      [Verifica validatore Password: presenza numero e carattere speciale.],
      [La funzione restituisce `false` se mancano numeri o caratteri speciali.],

      [TU-1.15],
      [FR20],
      [Verifica messaggio errore per password non conforme.],
      [Il messaggio indica specificamente i criteri mancanti.],

      [TU-1.16],
      [FR2],
      [Verifica invio richiesta registrazione tramite pulsante.],
      [La richiesta viene inviata al backend con i dati corretti.],

      [TU-2.1],
      [FR21],
      [Verifica rendering pagina di autenticazione.],
      [La pagina viene visualizzata con campi username e password.],

      [TU-2.2], [FR22], [Verifica inserimento username per autenticazione.], [Il valore inserito viene accettato.],
      [TU-2.3], [FR23], [Verifica inserimento password per autenticazione.], [Il valore inserito viene accettato.],

      [TU-2.4],
      [FR24],
      [Verifica validazione lunghezza username (4-20 caratteri).],
      [La funzione restituisce `false` per valori fuori range.],

      [TU-2.5],
      [FR25],
      [Verifica messaggio errore username non conforme.],
      [Il messaggio di errore viene visualizzato.],

      [TU-2.6],
      [FR26],
      [Verifica controllo esistenza username nel database.],
      [La funzione restituisce `false` se username non esiste.],

      [TU-2.7],
      [FR27],
      [Verifica messaggio errore password non conforme.],
      [Il messaggio di errore viene visualizzato.],

      [TU-2.8],
      [FR28],
      [Verifica controllo correttezza password.],
      [La funzione verifica l'hash e restituisce il risultato corretto.],

      [TU-3.1], [FR29], [Verifica accesso sezione collegamento GitHub.], [La sezione viene visualizzata correttamente.],
      [TU-3.2],
      [FR30],
      [Verifica visualizzazione avviso redirect a GitHub.],
      [L'avviso viene mostrato prima del redirect.],

      [TU-3.3],
      [FR31, FR32],
      [Verifica gestione conferma/rifiuto collegamento.],
      [Il sistema procede o annulla in base alla scelta.],

      [TU-3.4],
      [FR33],
      [Verifica processo OAuth completo con GitHub.],
      [Il codice viene ricevuto e processato correttamente.],

      [TU-3.5],
      [FR34],
      [Verifica gestione errore codice GitHub non ricevuto.],
      [Il messaggio di errore viene visualizzato.],

      [TU-3.6],
      [FR35],
      [Verifica controllo codice già associato ad altro utente.],
      [La funzione restituisce `false` se codice duplicato.],

      [TU-3.7],
      [FR36],
      [Verifica validazione formato codice GitHub.],
      [La funzione restituisce `false` per formato non valido.],

      [TU-4.1], [FR37], [Verifica accesso sezione richiesta analisi.], [La sezione viene visualizzata correttamente.],
      [TU-4.2], [FR38], [Verifica inserimento URL repository nel campo.], [Il valore inserito viene accettato.],
      [TU-4.3],
      [FR39, FR40],
      [Verifica validatore URL: protocollo https e dominio github.com.],
      [La funzione restituisce `false` per URL non validi.],

      [TU-4.4], [FR41], [Verifica messaggio errore URL non conforme.], [Il messaggio di errore viene visualizzato.],
      [TU-4.5],
      [FR42],
      [Verifica controllo accessibilità repository.],
      [La funzione verifica l'esistenza e l'accesso al repository.],

      [TU-4.6], [FR43], [Verifica messaggio errore URL mancante.], [Il messaggio viene mostrato se campo vuoto.],
      [TU-4.7], [FR44], [Verifica selezione aree di interesse.], [Le aree selezionate vengono memorizzate.],
      [TU-4.8], [FR45], [Verifica messaggio errore nessuna area selezionata.], [Il messaggio viene visualizzato.],
      [TU-4.9], [FR46], [Verifica invio richiesta analisi tramite pulsante.], [La richiesta viene inviata al backend.],
      [TU-4.10],
      [FR47],
      [Verifica controllo report up-to-date.],
      [La funzione confronta hash commit e restituisce il risultato.],

      [TU-4.11],
      [FR48],
      [Verifica controllo analisi in corso.],
      [La funzione verifica lo stato e restituisce il risultato.],

      [TU-5.1],
      [FR49],
      [Verifica accesso sezione visualizzazione report.],
      [La sezione viene visualizzata correttamente.],

      [TU-5.2],
      [FR50],
      [Verifica rendering elenco report disponibili.],
      [L'elenco viene popolato con i report esistenti.],

      [TU-5.3], [FR51], [Verifica selezione report dall'elenco.], [Il report selezionato viene caricato.],
      [TU-5.4],
      [FR52],
      [Verifica messaggio nessun report disponibile.],
      [Il messaggio viene visualizzato se lista vuota.],

      [TU-5.5], [FR53], [Verifica messaggio errore nessun report selezionato.], [Il messaggio viene mostrato.],
      [TU-5.6],
      [FR54],
      [Verifica selezione dati specifici da visualizzare.],
      [Le opzioni selezionate vengono memorizzate.],

      [TU-5.7], [FR55], [Verifica messaggio errore nessun dato selezionato.], [Il messaggio viene visualizzato.],
      [TU-5.8],
      [FR56],
      [Verifica rendering completo dettagli analisi.],
      [Tutti i dati selezionati vengono visualizzati correttamente.],

      [TU-6.1], [FR57], [Verifica selezione intervallo temporale.], [L'intervallo viene memorizzato correttamente.],
      [TU-6.2], [FR58], [Verifica conferma selezione intervallo.], [L'azione di conferma viene registrata.],
      [TU-6.3],
      [FR59],
      [Verifica modifica intervallo dopo selezione.],
      [Il nuovo intervallo sovrascrive il precedente.],

      [TU-6.4], [FR60], [Verifica messaggio errore intervallo non selezionato.], [Il messaggio viene visualizzato.],
      [TU-6.5], [FR61], [Verifica validazione intervallo temporale.], [La funzione verifica coerenza e ampiezza.],
      [TU-6.6],
      [FR62],
      [Verifica messaggio nessun report nel periodo.],
      [Il messaggio viene visualizzato se nessun risultato.],

      [TU-6.7],
      [FR63],
      [Verifica controllo incoerenza intervallo (Start > End).],
      [La funzione restituisce `false` per intervalli incoerenti.],

      [TU-6.8],
      [FR64],
      [Verifica controllo ampiezza massima intervallo.],
      [La funzione restituisce `false` se intervallo troppo ampio.],

      [TU-7.1], [FR65], [Verifica rendering grafico comparativo.], [Il grafico viene visualizzato con i dati corretti.],
      [TU-7.2], [FR66], [Verifica interazione con punti dati grafico.], [I dettagli vengono mostrati al click/hover.],
      [TU-7.3], [FR67], [Verifica rendering tabella comparativa.], [La tabella viene popolata correttamente.],
      [TU-7.4],
      [FR68],
      [Verifica calcolo indicatori variazione.],
      [Gli indicatori mostrano diff corretto rispetto report precedente.],

      [TU-9.1],
      [FR69],
      [Verifica visualizzazione sezione analisi codice.],
      [La sezione viene renderizzata correttamente.],

      [TU-9.2], [FR70], [Verifica rendering report analisi statica.], [I dati dell'analisi statica vengono mostrati.],
      [TU-9.3], [FR71], [Verifica rendering analisi librerie/dipendenze.], [L'elenco dipendenze viene visualizzato.],
      [TU-9.4], [FR72], [Verifica rendering report sicurezza OWASP.], [I risultati OWASP vengono mostrati.],
      [TU-9.5],
      [FR73],
      [Verifica calcolo totale vulnerabilità codice.],
      [Il conteggio corrisponde alla somma delle vulnerabilità.],

      [TU-10.1],
      [FR74],
      [Verifica visualizzazione sezione analisi documentazione.],
      [La sezione viene renderizzata correttamente.],

      [TU-10.2], [FR75], [Verifica visualizzazione errori spelling.], [Gli errori rilevati vengono elencati.],
      [TU-10.3],
      [FR76],
      [Verifica calcolo completezza documentazione.],
      [La percentuale viene calcolata correttamente.],

      [TU-11.1],
      [FR77],
      [Verifica visualizzazione vulnerabilità totali repository.],
      [Il numero totale viene calcolato e mostrato.],

      [TU-12.1], [FR78], [Verifica visualizzazione area metadati.], [La sezione metadati viene renderizzata.],
      [TU-12.2], [FR79], [Verifica formattazione data report.], [La data viene visualizzata nel formato corretto.],
      [TU-12.3], [FR80], [Verifica visualizzazione commit analizzati.], [L'elenco commit viene mostrato.],
      [TU-12.4], [FR81], [Verifica visualizzazione richiedente.], [Il nome utente richiedente viene mostrato.],

      [TU-13.1],
      [FR82],
      [Verifica processo disconnessione account GitHub.],
      [Il collegamento viene rimosso correttamente.],

      [TU-13.2], [FR83], [Verifica azione pulsante Disconnetti.], [Il pulsante avvia il processo di disconnessione.],
      [TU-13.3], [FR84], [Verifica conferma disconnessione.], [La conferma viene richiesta e processata.],

      [TU-14.1], [FR85], [Verifica processo esportazione report.], [Il report viene esportato correttamente.],
      [TU-14.2], [FR86], [Verifica selezione formato esportazione.], [Il formato selezionato viene applicato.],
      [TU-14.3], [FR87], [Verifica messaggio errore formato non selezionato.], [Il messaggio viene visualizzato.],
      [TU-14.4], [FR88], [Verifica conferma esportazione.], [Il file viene generato dopo conferma.],

      [TU-15.1], [FR89], [Verifica accesso sezione modifica password.], [La sezione viene visualizzata.],
      [TU-15.2], [FR90], [Verifica inserimento password corrente.], [Il valore inserito viene accettato.],
      [TU-15.3], [FR91], [Verifica messaggio errore password corrente mancante.], [Il messaggio viene visualizzato.],
      [TU-15.4],
      [FR92],
      [Verifica controllo correttezza password corrente.],
      [La funzione verifica l'hash correttamente.],

      [TU-15.5], [FR93], [Verifica inserimento nuova password.], [Il valore inserito viene accettato.],
      [TU-15.6], [FR94], [Verifica messaggio errore nuova password mancante.], [Il messaggio viene visualizzato.],
      [TU-15.7],
      [FR95],
      [Verifica validazione conformità nuova password.],
      [La funzione applica tutti i criteri di sicurezza.],

      [TU-15.8],
      [FR96],
      [Verifica controllo uguaglianza password nuova/precedente.],
      [La funzione restituisce `false` se identiche.],

      [TU-15.9], [FR97], [Verifica conferma modifica password.], [La password viene aggiornata nel database.],
      [TU-15.10],
      [FR98],
      [Verifica messaggio conferma modifica avvenuta.],
      [Il messaggio di successo viene visualizzato.],

      [TU-16.1],
      [FR99],
      [Verifica visualizzazione suggerimenti remediation.],
      [La sezione viene renderizzata correttamente.],

      [TU-16.2], [FR100], [Verifica rendering lista issue identificate.], [L'elenco issue viene popolato.],
      [TU-16.3],
      [FR101],
      [Verifica messaggio nessuna issue identificata.],
      [Il messaggio viene visualizzato se lista vuota.],

      [TU-16.4],
      [FR102],
      [Verifica visualizzazione dettaglio remediation.],
      [I dettagli vengono mostrati correttamente.],

      [TU-17.1], [FR103], [Verifica creazione ambiente sandbox.], [L'ambiente viene creato correttamente via Docker.],
      [TU-17.2],
      [FR104],
      [Verifica intercettazione errori creazione sandbox.],
      [Gli errori vengono catturati e gestiti.],

      [TU-17.3], [FR105], [Verifica comunicazione errori al frontend.], [Il messaggio di errore viene trasmesso.],
      [TU-18.1], [FR106], [Verifica lettura richieste utente.], [Le richieste vengono parsate correttamente.],
      [TU-18.2], [FR107], [Verifica esecuzione analisi completa.], [Tutti i moduli di analisi vengono attivati.],
      [TU-18.3], [FR108], [Verifica processamento richieste specifiche.], [Solo i moduli richiesti vengono attivati.],
      [TU-18.4], [FR109], [Verifica analisi completa per repository nuova.], [L'analisi completa viene forzata.],

      [TU-19.1],
      [FR110],
      [Verifica analisi vulnerabilità dipendenze.],
      [Le vulnerabilità vengono rilevate correttamente.],

      [TU-19.2], [FR111], [Verifica accettazione remediation vulnerabilità.], [Le remediation vengono applicate.],
      [TU-19.3], [FR112], [Verifica rifiuto remediation.], [Le remediation vengono scartate.],
      [TU-20.1], [FR113], [Verifica rilevamento segreti e token.], [I segreti esposti vengono identificati.],
      [TU-20.2], [FR114], [Verifica rifiuto remediation segreti.], [Le remediation vengono scartate.],
      [TU-20.3], [FR115], [Verifica revoca automatica segreti.], [La revoca viene eseguita se integrazione attiva.],
      [TU-20.4],
      [FR116],
      [Verifica visualizzazione risultati rilevamento.],
      [I risultati vengono mostrati correttamente.],

      [TU-24.1], [FR117], [Verifica suggerimenti refactoring.], [I suggerimenti vengono generati correttamente.],
      [TU-24.2],
      [FR118],
      [Verifica applicazione automatica refactor.],
      [Il refactor viene applicato sotto supervisione.],

      [TU-24.3], [FR119], [Verifica visualizzazione suggerimenti refactoring.], [I suggerimenti vengono mostrati.],
      [TU-25.1], [FR120], [Verifica generazione changelog.], [Il changelog viene creato correttamente.],
      [TU-25.2], [FR121], [Verifica rilevamento breaking changes.], [Le breaking changes vengono segnalate.],
      [TU-25.3], [FR122], [Verifica pubblicazione automatica GitHub Release.], [La release viene pubblicata.],
      [TU-25.4],
      [FR123],
      [Verifica visualizzazione e approvazione changelog.],
      [Il changelog può essere revisionato e approvato.],

      [TU-26.1], [FR124], [Verifica analisi test e coverage.], [I dati di coverage vengono calcolati.],
      [TU-26.2], [FR125], [Verifica riesecuzione test intermittenti.], [I test flaky vengono rieseguiti.],
      [TU-26.3], [FR126], [Verifica suggerimenti test addizionali.], [I gap di coverage vengono identificati.],
      [TU-26.4], [FR127], [Verifica visualizzazione report test/coverage.], [Il report viene mostrato correttamente.],
      [TU-27.1], [FR128], [Verifica applicazione policy CI/CD.], [Le policy vengono verificate.],
      [TU-27.2], [FR129], [Verifica gestione eccezioni manuali.], [Le eccezioni vengono processate.],
      [TU-27.3], [FR130], [Verifica policy dinamiche per branch.], [Policy diverse vengono applicate per branch.],
      [TU-27.4], [FR131], [Verifica visualizzazione risultati policy.], [I risultati vengono mostrati.],
      [TU-28.1], [FR132], [Verifica generazione report programmabili.], [I report vengono generati automaticamente.],
      [TU-28.2], [FR133], [Verifica configurazione filtri e template.], [Filtri e template vengono applicati.],
      [TU-28.3], [FR134], [Verifica azioni automatiche su alert.], [Le azioni vengono eseguite.],
      [TU-28.4], [FR135], [Verifica visualizzazione report programmati.], [I report vengono mostrati.],
    ),
  ),
  caption: [Tabella dei Test di Unità],
  kind: table,
  supplement: [Table],
)

#pagebreak()
*/

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
      [TA-1], [Verificare che l'utente possa completare con successo la procedura di registrazione e la successiva autenticazione al sistema.],

      [TA-2], [Verificare che le chiavi di accesso non siano mai salvate o trasmesse in chiaro, garantendo l'integrità del sistema di hashing.],

      [TA-3], [Verificare che il sistema gestisca correttamente il reindirizzamento e il ritorno dalla piattaforma esterna GitHub, associando correttamente l'identificativo OAuth.],

      [TA-4], [Verificare che l'utente possa configurare e avviare una richiesta di analisi fornendo un URL valido e selezionando le aree di interesse.],

      [TA-5], [Verificare che il sistema inibisca l'avvio di analisi ridondanti qualora il repository non abbia subito modifiche dall'ultimo report.],

      [TA-6], [Verificare che il sistema impedisca l'avvio di analisi concorrenti sul medesimo repository, notificando correttamente lo stato di "Analisi in corso".],

      [TA-7], [Verificare che l'accesso alle funzionalità di audit sia interdetto agli utenti che non hanno completato con successo l'integrazione con GitHub.],

      [TA-8], [Verificare che il sistema protegga i dati di sessione e i token GitHub tramite cifratura e protocolli di comunicazione sicuri (HTTPS).],
    )
  )
)

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

      [TA-1], [Verificare che il prodotto dia la possibilità all'Utente di registrarsi e autenticarsi a CodeGuardian],

      [TA-2],
      [Verificare che il prodotto dia la possibilità all'Utente di collegare il proprio account GitHub tramite OAuth],

      [TA-3], [Verificare che il prodotto dia la possibilità di richiedere l'analisi di un repository GitHub],

      [TA-4],
      [Verificare che il prodotto dia la possibilità di visualizzare i report di analisi completi con tutte le sezioni],

      [TA-5], [Verificare che il prodotto dia la possibilità di filtrare i report passati per intervallo temporale],

      [TA-6], [Verificare che il prodotto gestisca correttamente il caso di utente senza report disponibili],

      [TA-7],
      [Verificare che il prodotto dia la possibilità di confrontare report tramite grafici comparativi interattivi],

      [TA-8],
      [Verificare che il prodotto dia la possibilità di confrontare report tramite tabelle con indicatori di variazione],

      [TA-9],
      [Verificare che il prodotto dia la possibilità di visualizzare dettagli delle vulnerabilità di sicurezza (analisi statica, dipendenze, OWASP)],

      [TA-10],
      [Verificare che il prodotto dia la possibilità di visualizzare la qualità della documentazione (errori spelling, completezza)],

      [TA-11],
      [Verificare che il prodotto dia la possibilità di disconnettere l'account GitHub con richiesta di conferma],

      [TA-12], [Verificare che il prodotto dia la possibilità di esportare report in formati configurabili],

      [TA-13],
      [Verificare che il prodotto dia la possibilità di modificare la password con validazione dei criteri di sicurezza],

      [TA-14],
      [Verificare che il prodotto dia la possibilità di visualizzare e gestire suggerimenti di remediation per vulnerabilità dipendenze],

      [TA-15],
      [Verificare che il prodotto dia la possibilità di rilevare e gestire segreti/token esposti con revoca automatica opzionale],

      [TA-16],
      [Verificare che il prodotto dia la possibilità di verificare conformità licenze con integrazione al processo di approvazione legale],

      [TA-17],
      [Verificare che il prodotto dia la possibilità di ricevere revisione automatizzata delle Pull Request con test e codemods],

      [TA-18],
      [Verificare che il prodotto dia la possibilità di monitorare la qualità del codice con integrazione a tool esterni e KPI],

      [TA-19],
      [Verificare che il prodotto dia la possibilità di ricevere suggerimenti di refactoring con verifica impatto tramite test],

      [TA-20],
      [Verificare che il prodotto dia la possibilità di generare changelog automatici con rilevamento breaking changes],

      [TA-21],
      [Verificare che il prodotto dia la possibilità di applicare policy CI/CD dinamiche per branch differenti],

      [TA-22], [Verificare che il prodotto dia la possibilità di configurare report programmabili con alert automatici],

      [TA-23], [Verificare che il prodotto crei correttamente ambienti sandbox e gestisca errori di creazione],

      [TA-24], [Verificare che il prodotto integri correttamente tool esterni di analisi con gestione fallback],

      [TA-25], [Verificare che il prodotto generi e trasferisca correttamente i report finali al frontend],

      [TA-26], [Verificare che il prodotto notifichi correttamente l'utente al completamento dell'analisi],

      [TA-27], [Verificare che il prodotto gestisca correttamente retry di comunicazione in caso di errori di rete],

      [TA-28],
      [Verificare che il prodotto gestisca correttamente errori critici durante l'analisi con notifiche appropriate],

      [TA-29], [Verificare che il prodotto salvi correttamente metadati, report e metriche aggregate nel database],

      [TA-30], [Verificare che il prodotto gestisca correttamente il workflow completo OAuth per collegamento GitHub],

      [TA-31], [Verificare che il prodotto completi correttamente il workflow end-to-end],

      [TA-34],
      [Verificare che il prodotto mantenga la sincronizzazione corretta dei dati tra frontend e backend durante tutte le operazioni],

      [TA-35], [Verificare che il prodotto sia scalabile e gestisca correttamente richieste multiple concorrenti],
    ),
  ),
  caption: [Tabella dei Test di Accettazione],
  kind: table,
  supplement: [Table],
)

#pagebreak()
= Cruscotto di Valutazione
Il presente cruscotto costituisce il sistema di monitoraggio attraverso il quale Skarab Group valuta oggettivamente l'andamento del progetto. Le metriche qui raccolte rappresentano l'evidenza empirica necessaria per attivare il ciclo _PDCA_ (Plan-Do-Check-Act), trasformando i dati grezzi in informazioni per il miglioramento continuo.

<<<<<<< HEAD
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
=======
== Finalità del Cruscotto
Il cruscotto di valutazione assolve a due funzioni fondamentali:
- *Monitoraggio Proattivo:* Consente di rilevare scostamenti rispetto alle soglie definite all'interno del _Piano di Qualifica_ stesso, evitando che criticità latenti si trasformino in blocchi operativi.
- *Tracciabilità Storica:* Documenta l'evoluzione delle prestazioni del gruppo nel tempo, permettendo di identificare pattern ricorrenti e validare l'efficacia delle azioni correttive implementate.

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
>>>>>>> 50019de0eb6debfce9f7cbf985aae7591629f735

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
#pagebreak()

<<<<<<< HEAD
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
  )
)

= Conclusioni

L'attività di miglioramento continuo per il progetto #def("Code Guardian") si è rivelata non solo una pratica formale, ma una necessità operativa. L'analisi delle metriche e le retrospettive hanno evidenziato come l'avvio del progetto abbia scontato l'inevitabile "prezzo d'ingresso" dovuto alla curva di apprendimento dei nuovi strumenti (come Jira e Typst) e al necessario assestamento delle dinamiche comunicative interne.

Le azioni correttive intraprese, in particolare la ristrutturazione dei canali informativi (*AM01*) e la standardizzazione documentale (*AM03*), hanno permesso di superare l'iniziale frammentazione operativa. Sebbene la ridistribuzione del budget orario (*AM02*) abbia garantito il raggiungimento degli obiettivi RTB, ha reso evidente l'importanza di una pianificazione più granulare per il futuro.

Consapevoli che l'assetto attuale non è un traguardo definitivo ma uno stato da preservare, il team si impegna a mantenere alta la vigilanza. L'obiettivo per le prossime fasi non è l'assenza di problemi, ma la capacità di identificarli tempestivamente tramite il monitoraggio dei dati e risolverli con la stessa reattività dimostrata in questo primo periodo.
=======
== Automiglioramento

=== Introduzione
Il miglioramento continuo risulta fondamentale per garantire la qualità del progetto #def("Code Guardian"). Seguendo il #def("Way of Working") definito nelle #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[*Norme di Progetto*], il team effettua retrospettive periodiche per identificare i colli di bottiglia operativi e implementare soluzioni correttive secondo il ciclo #def("PDCA"). Le valutazioni sono state suddivise in tre ambiti critici identificati durante lo sviluppo iniziale.

==== Valutazione Tecnologica
L'adozione di nuovi strumenti ha richiesto una fase di adattamento per garantire che l'infrastruttura tecnologica supportasse, e non ostacolasse, la produttività.

#figure(
  table(
    fill: (x, y) => if (y == 0) { luma(63.75%) } else if (calc.odd(y)) { luma(245) },
    columns: (1fr, 2fr, 2fr),
    inset: 10pt,
    table.header([*Strumento*], [*Problema*], [*Decisione presa*]),

    [#def("Typst")],
    [Curva di apprendimento ripida e rischio di disomogeneità stilistica nei documenti.],
    [Studio autonomo obbligatorio e creazione di template condivisi per centralizzare la logica di formattazione.],

    [#def("Issue Tracking System")],
    [Frammentazione delle informazioni tecniche e incomprensioni sui requisiti.],
    [Centralizzazione della comunicazione asincrona su #def("Jira"), con obbligo di risoluzione dei dubbi tramite commenti tracciabili sulle singole task.],
  ),
  caption: [Ottimizzazione tecnologica],
)

==== Valutazione Organizzativa
Il coordinamento di un gruppo numeroso ha richiesto un passaggio da una comunicazione informale a una struttura più gerarchica e definita.

#figure(
  table(
    fill: (x, y) => if (y == 0) { luma(63.75%) } else if (calc.odd(y)) { luma(245) },
    columns: (1fr, 1fr),
    inset: 10pt,
    table.header([*Criticità*], [*Soluzione Organizzativa*]),

    [Difficoltà di allineamento immediato su decisioni logistiche e urgenze.],
    [Definizione di canali gerarchici: #def("Telegram") per le urgenze, #def("Discord") per il lavoro sincrono e i meeting di allineamento.],

    [Sovrapposizione di sforzi o "buchi" operativi dovuti alla dimensione del gruppo (7 persone).],
    [Suddivisione in sotto-gruppi di lavoro tematici per ridurre il rumore comunicativo e aumentare la focalizzazione.],
  ),
  caption: [Miglioramento dell'efficienza organizzativa],
)

===== Valutazione delle Responsabilità
Per evitare lo stallo decisionale e risolvere ambiguità metodologiche, è stato necessario definire chiaramente i confini d'azione dei ruoli e attivare canali di supporto esterni.

#figure(
  table(
    fill: (x, y) => if (y == 0) { luma(63.75%) } else if (calc.odd(y)) { luma(245) },
    columns: (1fr, 1fr),
    inset: 10pt,
    table.header([*Problema di Ruolo / Criticità*], [*Azioni di Risposta*]),

    [Mancanza di una visione d'insieme su documenti complessi come l'Analisi dei Requisiti.],
    [Nomina di un referente responsabile per ogni macro-documento, incaricato di supervisionare la coerenza finale e il rispetto delle scadenze.],

    [Forte difficoltà degli #def("Analisti") nel tracciare correttamente attori e sistemi in conformità con gli standard richiesti.],
    [
      Attivazione di una strategia di chiarimento a più livelli:
      - Consultazione diretta con il *Prof. Cardin* per risolvere dubbi metodologici;
      - Confronto costruttivo con altri gruppi di progetto per allineamento sugli standard;
      - Richiesta di intervento dell'azienda proponente (#def("Var Group")) per chiarire il perimetro operativo del sistema.
    ],

    [Incertezza sulla validazione degli incrementi prodotti e rischio di errori latenti.],
    [Rafforzamento del ruolo dei #def("Verificatori"), con l'introduzione di una revisione obbligatoria "a quattro occhi" prima di ogni merge sul repository principale.],
  ),
  caption: [Definizione e gestione delle responsabilità e risoluzione blocchi metodologici],
)

==== Conclusioni
Il processo di automiglioramento ha permesso di trasformare le criticità iniziali — tipiche di un gruppo numeroso che opera su tecnologie nuove — in punti di forza procedurali. L'integrazione tra responsabilità chiare, strumenti di tracking e canali di comunicazione dedicati garantisce la sostenibilità del progetto verso la milestone #def("PB").
>>>>>>> 50019de0eb6debfce9f7cbf985aae7591629f735
