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
#let versione = "v0.7.0"

#titlePage("Piano di Qualifica", versione)
#set heading(numbering: "1.1.1")
#set page(numbering: "1", header: header("Piano di Qualifica"), footer: footer())
#let history = (
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
  ),
  (
    "2026/01/13",
    "0.5.1",
    "Rielaborazione introduzione documento e qualità di processo",
    members.suar,
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
  #link("https://ieeexplore.ieee.org/document/4475826")
- *Dispense del corso di Ingegneria del Software – Qualità del software* #linebreak()
  #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")

==== Nota sull'adozione dello Standard ISO/IEC 25010 e PDCA
La redazione del presente documento e la definizione delle metriche si ispirano alla famiglia di standard ISO/IEC 25010 (SQuaRE). Tale scelta garantisce una classificazione rigorosa delle caratteristiche di qualità del prodotto (es. Sicurezza, Affidabilità, Usabilità).
Inoltre, l'adozione strutturale del ciclo #def[PDCA] (Plan-Do-Check-Act) assicura che il processo di controllo qualità non sia statico, ma evolva:
- *Plan:* Definizione delle metriche e delle soglie nel presente documento.
- *Do:* Esecuzione delle misurazioni durante gli Sprint.
#TODO("Study, non Check")
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
== Qualità di Processo

La garanzia della qualità del prodotto finale è intrinsecamente legata alla qualità dei processi produttivi che lo generano. Per il progetto #def("Code Guardian"), la gestione dei processi mira a rendere il #def("Way of Working") sostenibile, tracciabile e soggetto a miglioramento continuo attraverso l'applicazione del ciclo #def("PDCA").

=== Strategia di Definizione delle Soglie Metriche

La determinazione delle soglie di accettabilità e ottimalità per le metriche adottate dal gruppo #def("Skarab Group") non è un processo arbitrario, ma segue una strategia ingegneristica basata sui seguenti criteri:

- *Adesione agli Standard Internazionali:* Per i processi di fornitura, il gruppo adotta il framework #def("Earned Value Management") (EVM), utilizzando gli intervalli di confidenza standard del settore ($0.90 - 1.10$) per garantire la stabilità economica e temporale. Per la qualità del prodotto, le soglie sono calibrate sulle caratteristiche del modello #def("ISO/IEC 25010").
- *Analisi del Dominio e Benchmark:* Le metriche di supporto e sviluppo (es. #def("Gulpease Index"), #def("Complessità Ciclomatica")) sono tarate su benchmark di settore per lo sviluppo software moderno, garantendo che i requisiti di manutenibilità e sicurezza siano oggettivamente verificabili.
- *Miglioramento Continuo e Calibrazione (PDCA):* In linea con l'approccio #def("Agile"), le soglie sono soggette a revisione periodica. Al termine di ogni #def("Sprint"), i valori vengono analizzati rispetto alle prestazioni storiche del team; questo permette una ricalibrazione dinamica delle soglie nel #def("Piano di Qualifica"), rendendo gli obiettivi sempre sfidanti ma tecnicamente sostenibili (obiettivi *S.M.A.R.T.*).

=== Centralizzazione delle Metriche e Obiettivi

Il presente documento costituisce il riferimento unico, autoritativo e analitico per la gestione della qualità del progetto #def("Code Guardian"). Mentre le #def("Norme di Progetto") definiscono le procedure operative, gli strumenti e le responsabilità per l'estrazione dei dati, il #def("Piano di Qualifica") ha il compito di centralizzare la "scienza della misurazione" del gruppo.

In particolare, ogni metrica qui esposta è corredata da:
- *Identificativo univoco:* (MPC per il processo, MPD per il prodotto);
- *Formulazione matematica:* Per garantire l'oggettività del calcolo;
- *Soglie di Valutazione:* Distinte in "Accettabilità" (requisito minimo per la validazione) e "Ottimalità" (target di eccellenza desiderato).

Ogni scostamento rilevato tra i valori misurati e le soglie qui definite viene analizzato durante le retrospettive di fine #def("Sprint"). Tali evidenze costituiscono la base oggettiva per l'attivazione di azioni correttive o per la ricalibrazione delle soglie stesse, garantendo che il processo di qualità evolva insieme alla maturità del team.

=== Processi Primari: Fornitura e Sviluppo
Questi processi definiscono le attività core per la realizzazione del software. Il monitoraggio si focalizza sul rispetto dei vincoli di tempo e budget (tramite la metodologia EVM) e sulla gestione rigorosa dell'ambito di progetto.

#metrics_table(
  [Soglie metriche per il processo di Fornitura (EVM)],
  (
    // Misure Base
    [*MPC01*],
    [Budget At Completion (BAC)],
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
    // Indici
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
    [Estimate At Completion (EAC)],
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
    [*MPD04*],
    [Failure Density],
    [$frac("N. guasti", "KLOC")$],
    [$<= 0.5$],
    [0],
    [*MPD05*],
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
    [*MPD08*],
    [Comment Density],
    [$frac("Linee commento", "Linee codice") times 100$],
    [$>= 15%$],
    [$20% - 25%$], // Ottimale ridotto per favorire il Clean Code
    [*MPD09*],
    [Cyclomatic Complexity],
    [$V(G)$],
    [$<= 15$],
    [$<= 10$],
    [*MPD10*],
    [Coupling (Fan-out)],
    [Dipendenze esterne],
    [$<= 6$],
    [$<= 3$],
    [*MPD11*],
    [Vulnerability Detection],
    [N. vulnerabilità critiche],
    [0],
    [0],
  ),
)
#pagebreak()

#TODO(
  "Svolgere una revisione approfondita delle metodologie di testing, facendo ovviamente riferimento alla sezione di descrizione delle NdP",
)
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
Il presente cruscotto costituisce il sistema di monitoraggio attraverso il quale Skarab Group valuta oggettivamente l'andamento del progetto. Le metriche qui raccolte rappresentano l'evidenza empirica necessaria per attivare il ciclo _PDCA_ (Plan-Do-Check-Act), trasformando i dati grezzi in informazioni per il miglioramento continuo.

== Finalità del Cruscotto
Il cruscotto di valutazione assolve a due funzioni fondamentali:
- *Monitoraggio Proattivo:* Consente di rilevare scostamenti rispetto alle soglie definite all'interno del _Piano di Qualifica_ stesso, evitando che criticità latenti si trasformino in blocchi operativi.
- *Tracciabilità Storica:* Documenta l'evoluzione delle prestazioni del gruppo nel tempo, permettendo di identificare pattern ricorrenti e validare l'efficacia delle azioni correttive implementate.

== Struttura delle Misurazioni
Per ciascuna metrica viene fornita una rappresentazione grafica dell'andamento temporale accompagnata da un'analisi qualitativa. Tali misurazioni e i relativi obiettivi di qualità sono in linea con quanto redatto all'interno del #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/PdP.pdf")[#underline[*Piano di Progetto*]].

Ogni grafico, quindi, è accompagnato da un commento interpretativo che collega le variazioni delle metriche con le cause organizzative, tecniche o procedurali che le hanno generate, garantendo che i dati non rimangano meri numeri ma si traducano in azioni concrete di miglioramento.

Le misurazioni coprono il periodo che va dall'*aggiudicazione del capitolato* fino alla milestone *RTB* (06/02/2026).

Per la fase di *Product Baseline* (PB) vengono fornite _stime previsionali_.
Rispetto a quanto rilevato nella RTB, ci si attende un _incremento dell'efficienza_ e una maggiore aderenza alle tempistiche prefissate. La fase precedente, infatti, ha risentito dei rallentamenti dovuti alla concomitanza con la sessione d'esame.
Con il superamento di tale periodo, la PB riflette una pianificazione più fluida e una gestione operativa che punta a stabilizzare i ritmi, ottimizzando i risultati.

È importante evidenziare che il periodo iniziale, dall'aggiudicazione fino all'avvio formale delle attività di progetto, ha rappresentato una fase di "palestra" durante la quale il gruppo si è dedicato allo studio approfondito delle tecnologie necessarie, partecipando anche a sessioni di formazione organizzate dall'azienda proponente Var Group.

== Processi Primari: Fornitura e Sviluppo
=== Planned Value - Actual Cost - Earned Value (MPC02, MPC03 e MPC04)
#image("../assets/graficiPdQ/grafico_pv_ac_ev.png", height: 50%)
Dopo la fase iniziale, in cui le attività di formazione e setup sono state gestite come investimento interno senza gravare sul budget, il progetto è entrato nella fase operativa con l'avvio dello _Sprint 1_. In questa prima iterazione Skarab Group ha mostrato un buon equilibrio economico, completando il lavoro con un dispendio di risorse coerente con il valore prodotto, pur registrando un lieve ritardo rispetto alla pianificazione ideale.

Tuttavia, la situazione ha subito una variazione significativa durante lo _Sprint 2_: a fronte di un incremento del _Planned Value_ (PV) e dell'_Actual Cost_ (AC), l'_Earned Value_ (EV) ha subito una flessione. Questo testimonia l'insorgere di inefficienze produttive e debito tecnico, legati alla necessità di ricalibrare task qualitativamente insufficienti che hanno rallentato la produzione.

#pagebreak()
=== Budget Variance - Schedule Variance (MPC05 e MPCO6)

#pagebreak()
=== Cost Performance Index - Schedule Performance Index (MPC07 e MPC08)
#image("../assets/graficiPdQ/grafico_cpi_spi.png", height: 50%)
Dal grafico è possibile notare come, inizialmente, lo _Schedule Performance Index_ (SPI) sia inferiore a 1, indicando un leggero ritardo fisiologico. La buona gestione dei costi è invece documentata dal _Cost Performance Index_ (CPI) che, essendo pari a 1, indica un ottimo utilizzo del budget.

La situazione è peggiorata nel corso dello _Sprint 2_, durante il quale si è verificato un crollo dello _Schedule Performance Index_ (SPI) che segnala un ritardo critico rispetto alla pianificazione. La cattiva gestione temporale è in contrasto con il _Cost Performance Index_ (CPI) che si mantiene abbastanza stabile, confermando che il problema non è di natura economica ma organizzativa.

#pagebreak()
=== Estimate At Completion (MPC09)
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

== Automiglioramento

#TODO("Definire ulteriori problemi emersi durante lo sviluppo del progetto")
=== Introduzione
Il miglioramento continuo risulta fondamentale per garantire la qualità del progetto #def("Code Guardian"). Seguendo il #def("Way of Working"), il team effettua retrospettive periodiche per identificare i colli di bottiglia operativi e implementare soluzioni correttive secondo il ciclo #def("PDCA"). Le valutazioni sono state suddivise in tre ambiti critici identificati durante lo sviluppo iniziale.

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
