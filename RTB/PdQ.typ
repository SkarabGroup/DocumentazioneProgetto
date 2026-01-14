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
#let versione = "v0.5.1"

#titlePage("Piano di Qualifica", versione)
#set page(numbering: "1", header: header("Piano di Qualifica"), footer: footer())
#let history = (
  (
    "2026/01/13",
    "0.5.1",
    "Rielaborazione introduzione documento e qualità di processo",
    members.suar
  ),
  (
    "2025/12/02",
    "0.5.0",
    "Modifica tabelle qualità di processo, inserimento tabelle qualità di prodotto",
    members.alice,
    members.suar
  ),
  (
    "2025/12/30",
    "0.4.0",
    "Iniziati metodi di testing, inserimento tabelle test",
    members.berengan,
    members.suar
  ),
  (
    "2025/12/28",
    "0.3.0",
    "Processi secondari e processi organizzativi con tabelle soglie metriche, iniziata sezione automiglioramento e qualità di prodotto",
    members.alice,
    members.suar
  ),
  (
    "2025/12/27",
    "0.2.0",
    "Qualità di processo, processi primari",
    members.alice,
    members.suar
  ),
  (
    "2025/12/26",
    "0.1.0",
    "Inizio stesura documento, introduzione, scopo e riferimenti",
    members.alice,
    members.suar
  ),
  (
    "2025/12/23",
    "0.0.0",
    "Creazione documento",
    members.alice,
    members.suar
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
Il presente documento descrive il #def[Piano di Qualifica] relativo al progetto #def[Code Guardian], commissionato dall’azienda #def[Var Group] e realizzato dal gruppo di studenti #def[Skarab Group] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

L’obiettivo del progetto è lo sviluppo di una piattaforma ad #def[Agenti] per l’#def[audit] e la #def[remediation] automatizzata delle vulnerabilità nei repository GitHub, in conformità con quanto definito dal capitolato *C2*.

== Finalità del Documento
Il Piano di Qualifica definisce l’impostazione metodologica per la gestione della qualità, specificando come il gruppo intenda prevenire, rilevare e correggere i difetti.

Il documento costituisce il riferimento primario per il #def[Responsabile] e per i #def[Verificatori], strutturando gli obiettivi nelle seguenti macro-aree:

- *Piano della Qualità (Quality Assurance)*: definizione della strategia di gestione della qualità, identificando gli standard di riferimento (in particolare #def[ISO/IEC 25010]), le metriche di misurazione e le relative soglie di accettazione/ottimalità.
- *Controllo di Qualità (Quality Control)*: pianificazione operativa delle attività di #def[Verifica] (analisi statica, test dinamici) per garantire la correttezza tecnica degli artefatti prodotti.
- *Validazione di Prodotto*: definizione delle procedure necessarie per accertare la conformità del sistema rispetto alle aspettative degli #def[Stakeholder] e ai requisiti del capitolato.
- *Miglioramento Continuo*: applicazione di meccanismi retroattivi (basati sul ciclo #def[PDCA]) che utilizzano i risultati delle misurazioni per ottimizzare i processi e il *Way of Working* in corso d'opera.
In linea con la metodologia #def[Agile] e il principio del miglioramento continuo, il Piano di Qualifica adotta il ciclo di Deming (#def[PDCA]: Plan-Do-Check-Act). Questo approccio permette di monitorare costantemente l'efficacia del *Way of Working*, attuando azioni correttive e preventive per ottimizzare le performance del gruppo parallelamente all'avanzamento dello sviluppo.

== Traguardi Qualitativi
L'assicurazione della qualità segue l'approccio incrementale del progetto, fissando obiettivi specifici per le due principali milestone:

=== Revisione dei Requisiti e della Tecnologia (RTB)
Per la milestone RTB (*05/02/2026*), le attività di qualità si concentrano sulla correttezza formale e sulla fattibilità tecnica:
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
- *Dispense del corso di Ingegneria del Software – Qualità del software* #linebreak()
  #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")

==== Nota sull'adozione dello Standard ISO/IEC 25010 e PDCA
La redazione del presente documento e la definizione delle metriche si ispirano alla famiglia di standard ISO/IEC 25010 (SQuaRE). Tale scelta garantisce una classificazione rigorosa delle caratteristiche di qualità del prodotto (es. Sicurezza, Affidabilità, Usabilità).
Inoltre, l'adozione strutturale del ciclo #def[PDCA] (Plan-Do-Check-Act) assicura che il processo di controllo qualità non sia statico, ma evolva:
- *Plan:* Definizione delle metriche e delle soglie nel presente documento.
- *Do:* Esecuzione delle misurazioni durante gli Sprint.
- *Check:* Analisi degli scostamenti nei periodi di retrospettiva.
- *Act:* Aggiornamento delle Norme di Progetto e ricalibrazione delle metriche per lo Sprint successivo.
#pagebreak()

// Da inserire nel glossario
/*
/ Budget Variance (BV): Metrica che indica lo scostamento tra il budget totale preventivato (BAC) e la stima del costo finale (EAC). Un valore positivo indica che si prevede di finire il progetto risparmiando budget.

/ Code Coverage: Misura della percentuale di codice sorgente che viene eseguita durante il lancio della suite di test automatizzati. Indica il grado di copertura della verifica dinamica.

/ Cost Performance Index (CPI): Indice di efficienza economica del progetto. Rapporto tra il valore del lavoro svolto (EV) e i costi effettivamente sostenuti (AC). Un valore pari a 1 indica perfetta aderenza al budget.

/ Earned Value Management (EVM): Metodologia standard per il monitoraggio integrato di tempi, costi e scopo del progetto. Permette di rilevare precocemente scostamenti rispetto alla pianificazione (Baseline).

/ Gulpease Index: Indice di leggibilità di un testo tarato sulla lingua italiana. Valuta la complessità linguistica basandosi sulla lunghezza delle parole e delle frasi.

/ Requirements Stability Index (RSI): Metrica che misura la volatilità dei requisiti. Indica la percentuale di requisiti che non hanno subito modifiche, aggiunte o cancellazioni rispetto alla baseline iniziale.

/ Schedule Performance Index (SPI): Indice di efficienza della schedulazione. Rapporto tra il valore del lavoro svolto (EV) e il valore che si era pianificato di svolgere (PV). Un valore pari a 1 indica perfetta aderenza ai tempi.

/ Sprint Goal Achievement: Metrica agile che calcola la percentuale degli obiettivi prefissati nello Sprint Planning che sono stati effettivamente raggiunti e validati al termine dello Sprint.
*/

/*
=== Monitoraggio della Fornitura (EVM)
In qualità di fornitore del prodotto software, il gruppo ha la responsabilità di rispettare i vincoli contrattuali di tempo e budget definiti nel preventivo. A tale scopo, si adotta la metodologia *Earned Value Management (EVM)*.

**Motivazione:**
L'EVM è l'unico standard internazionale che permette di correlare il lavoro tecnico svolto (*Earned Value*) con i costi sostenuti e il tempo trascorso. L'utilizzo di semplici consuntivi (es. "abbiamo speso X ore") non sarebbe sufficiente a capire se il progetto è in ritardo o in anticipo rispetto al valore prodotto.

**Procedura di Attuazione:**
Al termine di ogni Sprint (durante la fase di *Sprint Review*), il Responsabile di Progetto:
1. Calcola la percentuale di completamento delle attività pianificate.
2. Aggiorna i valori di EV (Earned Value), AC (Actual Cost) e PV (Planned Value).
3. Deriva gli indici di performance (CPI, SPI) e le stime a finire (EAC).
I risultati vengono confrontati con le soglie definite nel Piano di Qualifica per determinare lo stato di salute della fornitura.
*/
= Qualità di Processo

La garanzia della qualità del prodotto finale è intrinsecamente legata alla qualità dei processi produttivi che lo generano. Per il progetto #def("Code Guardian"), la gestione dei processi mira a rendere il #def("Way of Working") sostenibile, tracciabile e soggetto a miglioramento continuo.

La strategia adottata si fonda su tre pilastri fondamentali:

- *Modelli di Riferimento:* L'architettura dei processi è strutturata secondo lo standard #def("ISO/IEC 12207"), che definisce le attività fondamentali del ciclo di vita del software. Per la valutazione della maturità e l'ottimizzazione delle performance, il gruppo assume come riferimento i principi del modello #def("CMMI").

- *Metriche di Processo:* Adozione di strumenti di misurazione oggettiva per valutare l'efficienza e l'efficacia delle attività svolte. Tali metriche permettono di quantificare il dispendio di risorse e la stabilità del metodo di lavoro.

- *Revisioni Periodiche:* Esecuzione di verifiche sistematiche con cadenza bisettimanale (in corrispondenza della fine degli Sprint). Tali sessioni hanno lo scopo di analizzare i risultati ottenuti rispetto agli obiettivi prefissati e di attivare tempestivamente le azioni correttive necessarie (ciclo #def("PDCA")).

== Processi Primari
I Processi Primari costituiscono il nucleo operativo del ciclo di vita del software. Essi includono le attività dirette di realizzazione, fornitura e manutenzione del prodotto.

=== Fornitura
_Riferimento: Norme di Progetto, Sezione [Monitoraggio della Fornitura]_ \ \
Il processo di fornitura comprende le attività necessarie a consegnare il prodotto al committente rispettando gli accordi contrattuali presi.
Vengono monitorati sia i valori assoluti (Misure) che gli indici di efficienza (Metriche) derivati dallo standard #def("Earned Value Management") (EVM).

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    // --- MISURE BASE (Valori Assoluti) ---
    [*MPC01*], [Budget At Completion (BAC)],
    [Somma Preventivata],
    [$= "Preventivo"$],
    [$= "Preventivo"$],

    [*MPC02*], [Planned Value (PV)],
    [$% "pianificato" times B A C$],
    [$>= 0$],
    [Da Pianificazione],

    [*MPC03*], [Actual Cost (AC)],
    [Costi Sostenuti],
    [$<= E A C$],
    [$<= E V$],

    [*MPC04*], [Earned Value (EV)],
    [$% "completato" times B A C$],
    [$>= 95% P V$],
    [$>= P V$],

    // --- METRICHE DERIVATE (Indici e Varianze) ---
    [*MPC05*], [Budget Variance (BV)],
    [$B V = B A C - E A C$],
    [$>= 0$],
    [$> 0$],

    [*MPC06*], [Schedule Variance (SV)],
    [$S V = E V - P V$],
    [$> -5% "BAC"$],
    [$>= 0$],

    [*MPC07*], [Cost Performance Index (CPI)],
    [$C P I = (E V) / (A C)$],
    [$0.90 <= v <= 1.10$],
    [$1.00$],

    [*MPC08*], [Schedule Performance Index (SPI)],
    [$S P I = (E V) / (P V)$],
    [$0.90 <= v <= 1.10$],
    [$1.00$],

    [*MPC09*], [Estimate At Completion (EAC)],
    [$E A C = (B A C) / (C P I)$],
    [$<= B A C + 5%$],
    [$<= B A C$],
  ),
  caption: [Soglie metriche per il processo di Fornitura (EVM)],
)
=== Sviluppo
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Il processo di sviluppo trasforma i requisiti in un prodotto software funzionante.
La qualità di questo processo viene valutata monitorando la stabilità dell'ambito di progetto. Una frequente modifica dei requisiti (*Scope Creep*) è indice di un'analisi iniziale lacunosa o di problemi di comunicazione con il proponente, e può compromettere la stabilità del ciclo di sviluppo.

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPC06*], [Requirements Stability Index (RSI)],
    [$R S I = (R_"tot" - Delta R) / R_"tot" times 100$],
    [$>= 80%$],
    [100%],
  ),
  caption: [Soglie metriche per il processo di Sviluppo],
)

== Processi di Supporto
I Processi di Supporto sono attività trasversali che assistono i processi primari, garantendo la qualità, la correttezza e la consistenza del prodotto software.

=== Documentazione
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
La documentazione rappresenta l'unica traccia formale delle scelte progettuali e del funzionamento del sistema.
Per assicurarne l'efficacia, viene monitorata la leggibilità (per evitare linguaggio eccessivamente burocratico o oscuro) e la correttezza formale.

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPC07*], [Gulpease Index],
    [$89 + (300(L_f) - 10(L_p)) / (F_p)$],
    [$>= 40$],
    [$>= 60$],

    [*MPC08*], [Correttezza Ortografica],
    [Errori segnalati dal linter],
    [0],
    [0],
  ),
  caption: [Soglie metriche per il processo di Documentazione],
)

=== Verifica
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Il processo di verifica ha lo scopo di accertare che i prodotti di un'attività soddisfino i requisiti imposti.
Si monitora la copertura del codice (per garantire che le logiche critiche siano testate) e il tasso di successo dei test (per impedire regressioni nel ramo principale del repository).

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPC09*], [Code Coverage],
    [$("Linee coperte") / ("Linee totali") times 100$],
    [$>= 70%$],
    [$>= 80%$],

    [*MPC10*], [Test Success Rate],
    [$("Test passati") / ("Test eseguiti") times 100$],
    [100%],
    [100%],
  ),
  caption: [Soglie metriche per il processo di Verifica],
)

=== Gestione della Qualità
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Questo processo assicura che i prodotti e i processi siano conformi al Piano di Qualifica stesso.
La metrica seguente fornisce una visione d'insieme (KPI) su quanto il progetto stia rispettando gli obiettivi qualitativi prefissati.

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPC11*], [Metrics Satisfaction],
    [$("Metriche soddisfatte") / ("Metriche totali") times 100$],
    [$>= 90%$],
    [100%],
  ),
  caption: [Soglie metriche per la Gestione della Qualità],
)

== Processi Organizzativi
I Processi Organizzativi riguardano la gestione delle risorse, dell'infrastruttura e il miglioramento continuo del *Way of Working*.

=== Gestione Organizzativa
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Questo processo si occupa di pianificare e monitorare l'esecuzione delle attività secondo la metodologia #def("Agile").
La metrica seguente misura l'affidabilità del team nel raggiungere gli obiettivi dichiarati all'inizio di ogni iterazione (Sprint Planning).

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPC12*], [Sprint Goal Achievement],
    [$("Obiettivi completati") / ("Obiettivi pianificati") times 100$],
    [$>= 80%$],
    [100%],
  ),
  caption: [Soglie metriche per i Processi Organizzativi],
)

#pagebreak()
/*
/ Average Response Time: Tempo medio che intercorre tra l'invio di una richiesta da parte dell'utente e la ricezione della risposta completa dal sistema.
/ Coupling (Accoppiamento): Misura della dipendenza di un modulo software da altri moduli. Un alto accoppiamento indica un sistema rigido e difficile da manutenere.
/ Cyclomatic Complexity (McCabe): Metrica software che misura la complessità del flusso di controllo di un programma. Corrisponde al numero di percorsi linearmente indipendenti attraverso il codice sorgente.
/ Failure Density: Rapporto tra il numero di guasti rilevati durante un periodo di osservazione e la dimensione del software (misurata in KLOC, migliaia di righe di codice).
/ ISO/IEC 25010: Standard internazionale per la qualità del software che sostituisce la ISO 9126. Definisce un modello di qualità del prodotto basato su otto caratteristiche (es. Sicurezza, Affidabilità, Manutenibilità).
/ Mean Time To Failure (MTTF): Tempo medio previsto prima che si verifichi un guasto in un componente o sistema non riparabile (o tra due guasti in sistemi riparabili). 
*/
= Qualità di Prodotto
La qualità di prodotto è il grado con cui il software soddisfa i requisiti dichiarati e le aspettative implicite degli utenti.
A differenza della qualità di processo (che misura _come_ lavoriamo), questa sezione misura il risultato finale.

Il gruppo fa riferimento al modello di qualità definito dallo standard internazionale #def("ISO/IEC 25010") (evoluzione della ISO 9126), focalizzandosi sulle seguenti caratteristiche ritenute critiche per il progetto Code Guardian:

- *Functional Suitability* (Adeguatezza Funzionale): Completezza e correttezza delle funzioni.
- *Reliability* (Affidabilità): Capacità del sistema di funzionare senza interruzioni.
- *Performance Efficiency* (Efficienza): Comportamento temporale e utilizzo delle risorse.
- *Usability* (Usabilità): Facilità di apprendimento e utilizzo.
- *Maintainability* (Manutenibilità): Facilità di modifica e aggiornamento del codice.
- *Security* (Sicurezza): Protezione dei dati e del codice analizzato.

== Adeguatezza Funzionale
_Riferimento: Norme di Progetto, Sezione [Requisiti]_ \ \
Misura il grado di copertura dei requisiti tracciati nell'Analisi dei Requisiti, distinti per priorità (Obbligatori, Desiderabili, Opzionali).

#figure(
  table(
    fill: (x, y) => if (y == 0) { luma(230) } else { luma(250) },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPD01*], [Copertura Req. Obbligatori], [$frac("Soddisfatti", "Totale Obbl.") times 100$], [100%], [100%],
    [*MPD02*], [Copertura Req. Desiderabili], [$frac("Soddisfatti", "Totale Des.") times 100$], [0%], [100%],
    [*MPD03*], [Copertura Req. Opzionali], [$frac("Soddisfatti", "Totale Opz.") times 100$], [0%], [100%],
  ),
  caption: [Metriche Adeguatezza Funzionale],
)
== Affidabilità (Reliability)
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Capacità del sistema di mantenere un determinato livello di prestazioni in un dato periodo di tempo.
Si monitora la densità dei guasti per identificare moduli fragili e la disponibilità del servizio.

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPD03*], [Failure Density],
    [$frac("N. guasti riscontrati", "KLOC")$],
    [$<= 0.5$],
    [0],

    [*MPD04*], [Availability],
    [$frac("Tempo operativo", "Tempo totale") times 100$],
    [$>= 98%$],
    [$>= 99.9%$],
  ),
  caption: [Soglie metriche Affidabilità],
)

== Usabilità (Usability)
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Grado con cui un prodotto può essere usato da specifici utenti per raggiungere specifici obiettivi con efficacia, efficienza e soddisfazione.

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPD07*],
    [Comprehensibility],
    [$frac("Funzioni comprese", "Totale funzioni") times 100$],
    [$>= 80%$],
    [100%],

    [*MPD08*],
    [Error Prevention (Undo Rate)],
    [$frac("Azioni annullate", "Totale azioni") times 100$],
    [$<= 5%$],
    [$<= 2%$],
  ),
  caption: [Soglie metriche Usabilità],
)

== Manutenibilità (Maintainability)
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Grado di efficacia ed efficienza con cui il prodotto può essere modificato. Alta manutenibilità riduce il debito tecnico.

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPD09*],
    [Comment Density],
    [$frac("Linee commento", "Linee codice") times 100$],
    [$>= 10%$],
    [$20% - 30%$],

    [*MPD10*], [Cyclomatic Complexity],
    [$V(G) = E - N + 2P$],
    [$<= 15$],
    [$<= 10$],

    [*MPD11*], [Coupling (Fan-out)],
    [Dipendenze esterne per classe],
    [$<= 6$],
    [$<= 3$],
  ),
  caption: [Soglie metriche Manutenibilità],
)

== Sicurezza (Security)
_Riferimento: Norme di Progetto, Sezione [Inserire Riferimento]_ \ \
Grado con cui il prodotto protegge le informazioni e i dati. Essendo Code Guardian un tool di audit, la sicurezza del tool stesso è un requisito non funzionale primario.

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(230)
    } else {
      luma(250)
    },
    columns: (1.5fr, 2.5fr, 2.5fr, 1.3fr, 1.3fr),
    inset: 10pt,
    table.header([*ID*], [*Nome*], [*Formula*], [*V. Accettabile*], [*V. Ottimo*]),

    [*MPD12*], [Vulnerability Detection],
    [Vulnerabilità trovate nel codice sorgente del prodotto (non nei repo analizzati)],
    [0 Critical],
    [0],
  ),
  caption: [Soglie metriche Sicurezza],
)

#pagebreak()

= Metodi di Testing
Questa sezione definisce la strategia di testing per il progetto _CodeGuardian_.
Skarab Group ha adottato un approccio di testing multilivello che copre:

- *Test di Sistema (TS)*.
- *Test di Unità (TU)*.
- *Test di Accettazione (TA)*.

== Convenzioni di Nomenclatura
I test sono identificati secondo il seguente schema:

*Formato*: `[Tipologia]-[Gruppo].[Sottogruppo]`

Ogni test è esplicitamente collegato ai *Casi d'Uso (UC)*  relativi per garantire copertura funzionale completa.

== Test di Sistema
Di seguito, viene riportata la tabella che definisce i #def("Test di Sistema") (TS) necessari per validare il comportamento descritto nei Casi d'Uso.

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
      columns: (1.5fr, 3fr, 1.2fr, 1.7fr),
      inset: 10pt,
      table.header([*ID Test*], [*Descrizione*], [*Tipo*], [*UC Riferimento*]),

      //GRUPPO UC1: REGISTRAZIONE
      [TS-1.0], [Verifica procedura di registrazione completa con dati validi.], [Funzionale], [UC1],
      [TS-1.1],
      [Verifica validazione formato Nome: rifiuto di numeri e caratteri speciali non ammessi.],
      [Validazione],
      [UC1.1.1],

      [TS-1.2],
      [Verifica validazione formato Cognome: rifiuto di numeri e caratteri speciali non ammessi.],
      [Validazione],
      [UC1.2.1],

      [TS-1.3],
      [Verifica unicità Username: tentativo di registrazione con username già esistente nel DB.],
      [Sicurezza],
      [UC1.3.2],

      [TS-1.4], [Verifica validazione formato Username: lunghezza e caratteri non ammessi.], [Validazione], [UC1.3.1],
      [TS-1.5],
      [Verifica unicità Email: tentativo di registrazione con email già presente nel DB.],
      [Sicurezza],
      [UC1.4.2],

      [TS-1.6], [Verifica validazione formato Email: sintassi non valida.], [Validazione], [UC1.4.1],
      [TS-1.7], [Verifica complessità Password: mancato rispetto dei criteri di sicurezza.], [Sicurezza], [UC1.5.1],

      //GRUPPO UC2: AUTENTICAZIONE
      [TS-2.0], [Verifica login con credenziali corrette.], [Funzionale], [UC2],
      [TS-2.1], [Verifica gestione errore per Username non esistente.], [Sicurezza], [UC2.1.2],
      [TS-2.2], [Verifica gestione errore per Password errata.], [Sicurezza], [UC2.2.2],
      [TS-2.3],
      [Verifica validazione formato input in fase di login (Username/Password malformati).],
      [Validazione],
      [UC2.1.1, UC2.2.1],

      //GRUPPO UC3: COLLEGAMENTO GITHUB
      [TS-3.0], [Verifica flusso completo OAuth con GitHub.], [Integrazione], [UC3, UC3.2],

      [TS-3.1], [Verifica rifiuto collegamento da parte dell'utente.], [Funzionale], [UC3.1.1],
      [TS-3.2], [Verifica gestione errore ricezione codice mancante da GitHub.], [Integrazione], [UC3.2.1],
      [TS-3.3], [Verifica gestione errore codice GitHub già associato ad altro utente.], [Sicurezza], [UC3.2.2],

      //GRUPPO UC4: RICHIESTA ANALISI
      [TS-4.0], [Verifica invio richiesta analisi con URL valido e opzioni selezionate.], [Funzionale], [UC4],

      [TS-4.1], [Verifica validazione URL Repository: formato non valido.], [Validazione], [UC4.1.1],
      [TS-4.2], [Verifica accessibilità Repository: URL privato o inesistente.], [Integrazione], [UC4.1.2],

      [TS-4.3],
      [Verifica obbligatorietà selezione aree di interesse (Codice/Documentazione).],
      [Validazione],
      [UC4.2.1],

      [TS-4.4],
      [Verifica blocco analisi per report già "Up-to-date" (Hash commit invariato).],
      [Ottimizzazione],
      [UC4.3.1],

      [TS-4.5], [Verifica blocco analisi concorrente (Analisi già in corso sulla stessa repo).], [Stato], [UC4.3.2],

      //GRUPPO UC5 - UC12: VISUALIZZAZIONE REPORT
      [TS-5.0], [Verifica visualizzazione lista report e apertura dashboard di dettaglio.], [Funzionale], [UC5],
      [TS-5.1], [Verifica gestione caso "Nessun report disponibile" per una repo.], [Funzionale], [UC5.2.1],
      [TS-6.0], [Verifica filtro temporale sui report passati (Intervallo valido).], [Funzionale], [UC6],
      [TS-6.1],
      [Verifica errore filtro temporale: intervallo incoerente (Start > End) o troppo ampio.],
      [Validazione],
      [UC6.2.2, UC6.2.3],

      [TS-6.2], [Verifica messaggio "Nessun report nel periodo selezionato".], [Funzionale], [UC6.2.1],
      [TS-7.0], [Verifica rendering grafico comparativo.], [UI/UX], [UC7],
      [TS-8.0], [Verifica rendering tabella comparativa (Corrispondenza dati con il grafico).], [UI/UX], [UC8],

      //DETTAGLI ANALISI (AGENTI)
      [TS-9.0],
      [Verifica presenza e contenuto sezioni Analisi Codice (Statica, Dipendenze, OWASP).],
      [Contenuto],
      [UC9],

      [TS-9.1],
      [Verifica conteggio vulnerabilità totali (Deve corrispondere alla somma delle vulnerabilità rilevate).],
      [Logica],
      [UC9.4],

      [TS-10.0], [Verifica presenza e contenuto sezioni Analisi Documentazione.], [Contenuto], [UC10],

      [TS-12.0], [Verifica coerenza Metadati Report.], [Integrazione], [UC12],
    ),
  ),
  caption: [Tabella dei Test di Sistema],
  kind: table,
  supplement: [Table],
)

#pagebreak()

== Test di Unità
In questa sezione vengono definiti i #def("Test di Unità") volti a verificare il corretto funzionamento delle singole componenti software.

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
      table.header([*ID Test*], [*UC\ Riferimento*], [*Descrizione*], [*Risultato Atteso*]),

      // UC1: REGISTRAZIONE
      [TU-1.1],
      [UC1.1],
      [Verifica funzione di normalizzazione nome: input con spazi iniziali e finali.],
      [La stringa restituita non presenta spazi esterni.],

      [TU-1.2],
      [UC1.1.1],
      [Verifica validatore Nome: input contenente caratteri numerici.],
      [La funzione restituisce `false` e l'errore specifico.],

      [TU-1.3],
      [UC1.1.1],
      [Verifica validatore Nome: input contenente simboli speciali non ammessi.],
      [La funzione restituisce `false`.],

      [TU-1.4],
      [UC1.3.1],
      [Verifica validatore Username: lunghezza inferiore al minimo consentito.],
      [La funzione restituisce `false`.],

      [TU-1.5], [UC1.4.1], [Verifica validatore Email: formato sintattico errato.], [La funzione restituisce `false`.],

      [TU-1.6],
      [UC1.5.1],
      [Verifica validatore Password: assenza di carattere maiuscolo o numero.],
      [La funzione restituisce `false` indicando il criterio mancante.],

      // UC2: AUTENTICAZIONE
      [TU-2.1],
      [UC2.1.1],
      [Verifica sanitizzazione input Username in fase di login.],
      [Eventuali caratteri di escape pericolosi vengono rimossi.],

      [TU-2.2],
      [UC2.2.1],
      [Verifica gestione input vuoti su campi obbligatori.],
      [La validazione blocca la richiesta prima dell'invio al server.],

      // UC3: GITHUB
      [TU-3.1],
      [UC3.2.3],
      [Verifica parser codice OAuth: gestione stringa vuota o null.],
      [Il metodo solleva un'eccezione gestita senza effettuare chiamate esterne.],

      // UC4: ANALISI
      [TU-4.1],
      [UC4.1.1],
      [Verifica validatore URL: input non appartenente al dominio github.com.],
      [La funzione restituisce errore "Dominio non supportato".],

      [TU-4.2],
      [UC4.1.1],
      [Verifica validatore URL: formato malformato o incompleto.],
      [La funzione segnala l'URL come non valido.],

      [TU-4.3],
      [UC4.3.1],
      [Verifica logica "Up-to-date": confronto hash commit identici.],
      [La funzione restituisce `true`.],

      [TU-4.4],
      [UC4.3.1],
      [Verifica logica "Up-to-date": confronto hash commit differenti.],
      [La funzione restituisce `false` (necessaria nuova analisi).],

      // UC5-12: REPORTING
      [TU-6.1],
      [UC6.2.2],
      [Verifica validatore intervallo date: Data Inizio successiva a Data Fine.],
      [La funzione restituisce errore di incoerenza temporale.],

      [TU-9.1],
      [UC9.4],
      [Verifica calcolo totale vulnerabilità: somma corretta dei parziali per categoria.],
      [Il valore restituito corrisponde alla somma aritmetica delle issue.],

      [TU-10.1],
      [UC10.2],
      [Verifica calcolo percentuale coverage documentazione.],
      [Il calcolo restituisce il valore corretto arrotondato a due decimali.],

      [TU-12.1],
      [UC12.1],
      [Verifica formattazione data report: conversione timestamp in formato locale.],
      [La data viene renderizzata nel formato "YYYY/MM/DD HH:mm".],
    ),
  ),
  caption: [Tabella dei Test di Unità],
  kind: table,
  supplement: [Table],
)

#pagebreak()

== Test di Accettazione
In questa sezione vengono definiti i #def("Test di Accettazione"), volti a validare il sistema rispetto ai requisiti utente e agli scenari d'uso reali, inclusa la verifica della qualità dell'analisi AI.

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
      table.header([*ID Test*], [*UC\ Riferimento*], [*Descrizione*], [*Risultato Atteso*]),

      // REGISTRAZIONE & LOGIN
      [TA-1.0],
      [UC1],
      [Utente completa la registrazione con dati validi.],
      [L'account viene creato, l'email di conferma inviata e l'utente reindirizzato al login.],

      [TA-1.1],
      [UC1.1.1],
      [Utente tenta la registrazione con caratteri non ammessi nel nome.],
      [Il sistema mostra un errore visuale e disabilita il tasto di conferma.],

      [TA-2.0],
      [UC2],
      [Utente effettua il login con credenziali corrette.],
      [L'utente accede alla dashboard e il token di sessione viene generato.],

      [TA-2.1],
      [UC2.2.2],
      [Utente tenta il login con password errata.],
      [Il sistema nega l'accesso mostrando un messaggio di errore generico.],

      // GITHUB LINKING
      [TA-3.0],
      [UC3],
      [Utente collega con successo l'account GitHub.],
      [La dashboard mostra lo stato "Collegato" e l'avatar dell'utente GitHub.],

      [TA-3.1],
      [UC3.1.1],
      [Utente rifiuta il collegamento durante il redirect.],
      [L'operazione viene annullata e il sistema mostra un messaggio informativo.],

      // ANALISI (CORE)
      [TA-4.0],
      [UC4],
      [Utente richiede analisi di una repository pubblica valida.],
      [L'analisi si avvia, mostrando lo stato di avanzamento/spinner.],

      [TA-4.1],
      [UC4.1.2],
      [Utente inserisce URL di una repository privata non accessibile.],
      [Il sistema termina immediatamente segnalando l'errore di accesso.],

      [TA-4.2],
      [UC4.3.1],
      [Utente richiede analisi su repo già analizzata senza modifiche.],
      [Il sistema notifica che il report è già aggiornato senza avviare l'analisi.],

      // REPORT & AI QUALITY
      [TA-5.0], [UC5], [Utente visualizza il report finale.], [Tutte le sezioni sono popolate e leggibili.],

      [TA-9.0],
      [UC9],
      [Verifica qualità AI: Rilevamento vulnerabilità nota (es. SQL Injection).],
      [Il report OWASP segnala correttamente la vulnerabilità presente nel codice di test.],

      [TA-10.0],
      [UC10],
      [Verifica qualità AI: Rilevamento assenza documentazione.],
      [L'agente segnala correttamente la bassa coverage su file privi di commenti.],

      [TA-10.1],
      [UC10.1],
      [Verifica correzione spelling documentazione.],
      [Gli errori di battitura presenti nei commenti vengono identificati e listati.],

      // STORICO & CONFRONTO
      [TA-6.0],
      [UC6],
      [Utente filtra i report per un intervallo temporale specifico.],
      [La lista e i grafici mostrano solo i dati compresi nell'intervallo selezionato.],

      [TA-7.0],
      [UC7],
      [Visualizzazione grafico comparativo tra analisi diverse.],
      [Il grafico mostra l'evoluzione temporale delle metriche di qualità.],

      [TA-12.0],
      [UC12],
      [Verifica correttezza metadati.],
      [I dati visualizzati corrispondono esattamente all'ultimo commit su GitHub.],
    ),
  ),
  caption: [Tabella dei Test di Accettazione],
  kind: table,
  supplement: [Table],
)

#pagebreak()

= Cruscotto di Valutazione

== Processi Primari: Fornitura
=== Earned Value - Planned Value (MP01 e MP02)
=== Actual Cost - Estimate To Complete (MP03 e MP07)
=== Cost Performance Index - Schedule Performance Index (MP04 e MP05)
=== Estimate At Completion (MP06)

== Processi Primari: Sviluppo
=== Requirements Stability Index (MP08)

== Processi di Supporto: Documentazione
=== Gulpease Index (MP09)
=== Correttezza Ortografica (MP10)

== Processi di Supporto: Gestione della Qualità
=== Quality metrics satisfied (MP13)

== Processi Organizzativi: Gestione dei Processi
=== Time Efficiency (MP14)
=== Sprint Goal Achievement (MP15)

#pagebreak()

= Automiglioramento
== Introduzione
Il miglioramento continuo risulta fondamentale per garantire la qualità del progetto _Code Guardian_. Seguendo il _Way of Working_, il team effettua retrospettive bisettimanali per identificare i probemi principali e implementare delle soluzioni.
Di seguito, vengono elencate le difficoltà individuate e le decisioni prese per risolverle.

== Valutazione organizzazione del team
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 3fr),
    inset: 10pt,
    table.header([*Problema*], [*Decisione presa*]),

    [Difficoltà nel mantenere la coerenza stilistica dei documenti.], [Utilizzo di template condivisi in Typst.],
    [Difficoltà nel monitorare l'avanzamento dei task.],
    [Integrazione della piattaforma Jira per la gestione del progetto.],
  ),
  caption: [Decisioni prese per migliorare l'organizzazione del team],
)

== Valutazione strumenti utilizzati
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr, 4fr),
    inset: 10pt,
    table.header([*Strumento*], [*Problema*], [*Decisione presa*]),

    [Typst],
    [Non tutti i membri del team hanno familiarità con questa tecnologia.],
    [Ogni membro del gruppo ha effettuato uno studio autonomo per garantire uniformità nella stesura dei documenti.],
  ),
  caption: [Decisioni prese per l'ottimizzazione degli strumenti di lavoro],
)

= Conclusioni
Consideriamo il miglioramento continuo come un'attività strutturale per la garanzia di qualità del progetto _Code Guardian_. Le soluzioni applicate alle difficoltà riscontrate hanno permesso di affinare i flussi di lavoro, elevando il livello di efficienza del gruppo. Mantenendo una visione orientata al problem-solving, il team si dedica a un monitoraggio costante per prevenire criticità e ottimizzare le risorse impiegate nel ciclo di vita del software.
