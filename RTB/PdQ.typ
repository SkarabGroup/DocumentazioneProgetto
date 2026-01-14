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
- *Modelli di Riferimento:* ISO/IEC 12207 e CMMI.
- *Metriche di Processo:* Misurazione oggettiva dell'efficienza.
- *Revisioni Periodiche:* Ciclo PDCA applicato agli Sprint.

== Processi Primari
I Processi Primari costituiscono il nucleo operativo del ciclo di vita del software.

=== Fornitura
_Riferimento: Norme di Progetto, Sezione [Monitoraggio della Fornitura]_ \ \
Il processo di fornitura comprende le attività necessarie a consegnare il prodotto al committente rispettando gli accordi contrattuali presi.
Vengono monitorati sia i valori assoluti (Misure) che gli indici di efficienza (Metriche) derivati dallo standard #def("Earned Value Management") (EVM).

#metrics_table(
  [Soglie metriche per il processo di Fornitura (EVM)],
  (
    // Misure Base
    [*MPC01*], [Budget At Completion (BAC)], [Preventivo], [Preventivo], [Preventivo],
    [*MPC02*], [Planned Value (PV)], [$P V$], [$>= 0$], [Da Piano],
    [*MPC03*], [Actual Cost (AC)], [$A C$], [$<= E A C$], [$<= E V$],
    [*MPC04*], [Earned Value (EV)], [$E V$], [$>= 95% P V$], [$>= P V$],
    // Indici
    [*MPC05*], [Cost Variance (CV)], [$B V = E V - A C$], [$>= 0$], [$> 0$],
    [*MPC06*], [Schedule Variance (SV)], [$S V = E V - P V$], [$> -5% "BAC"$], [$>= 0$],
    [*MPC07*], [Cost Performance Index (CPI)], [$C P I = (E V) / (A C)$], [$0.90 <= v <= 1.10$], [$1.00$],
    [*MPC08*], [Schedule Performance Index (SPI)], [$S P I = (E V) / (P V)$], [$0.90 <= v <= 1.10$], [$1.00$],
    [*MPC09*], [Estimate At Completion (EAC)], [$E A C = (B A C) / (C P I)$], [$<= B A C + 5%$], [$<= B A C$],
  )
)

=== Sviluppo
_Riferimento: Norme di Progetto, Sezione [Stabilità dei Requisiti]_ \ \
Si monitora la stabilità dell'ambito di progetto per evitare modifiche incontrollate (*Scope Creep*).

#metrics_table(
  [Soglie metriche per il processo di Sviluppo],
  (
    [*MPC10*], [Requirements Stability Index], [$R S I = (R_"tot" - Delta R) / R_"tot" times 100$], [$>= 80%$], [100%],
  )
)

== Processi di Supporto

=== Documentazione
_Riferimento: Norme di Progetto, Sezione [Documentazione]_ \ \
Si monitora la leggibilità per garantire l'accessibilità delle informazioni.

#metrics_table(
  [Soglie metriche Documentazione],
  (
    [*MPC11*], [Gulpease Index], [$89 + (300(L_f) - 10(L_p)) / (F_p)$], [$>= 40$], [$>= 60$],
    [*MPC12*], [Correttezza Ortografica], [Errori segnalati], [0], [0],
  )
)

=== Verifica
_Riferimento: Norme di Progetto, Sezione [Verifica]_ \ \
Si monitora la copertura dei test per garantire la robustezza del codice.

#metrics_table(
  [Soglie metriche Verifica],
  (
    [*MPC13*], [Code Coverage], [$("Linee coperte") / ("Linee totali") times 100$], [$>= 70%$], [$>= 80%$],
    [*MPC14*], [Test Success Rate], [$("Passati") / ("Eseguiti") times 100$], [100%], [100%],
  )
)

=== Gestione della Qualità
_Riferimento: Norme di Progetto, Sezione [Gestione Qualità]_

#metrics_table(
  [Soglie metriche Gestione Qualità],
  (
    [*MPC15*], [Metrics Satisfaction], [$("Metriche OK") / ("Metriche Tot") times 100$], [$>= 90%$], [100%],
  )
)

== Processi Organizzativi

=== Gestione Organizzativa
_Riferimento: Norme di Progetto, Sezione [Gestione Agile]_ \ \
Si misura l'affidabilità del team nel raggiungere gli obiettivi di Sprint.

#metrics_table(
  [Soglie metriche Organizzative],
  (
    [*MPC16*], [Sprint Goal Achievement], [$("Completati") / ("Pianificati") times 100$], [$>= 80%$], [100%],
  )
)

#pagebreak()

= Qualità di Prodotto
La qualità di prodotto è il grado con cui il software soddisfa i requisiti dichiarati e le aspettative implicite degli utenti.
A differenza della qualità di processo (che misura _come_ lavoriamo), questa sezione misura il risultato finale.

Il gruppo fa riferimento al modello di qualità definito dallo standard internazionale #def("ISO/IEC 25010").

== Adeguatezza Funzionale
_Riferimento: Norme di Progetto, Sezione [Requisiti]_ \ \
Misura il grado di copertura dei requisiti tracciati nell'Analisi dei Requisiti.

#metrics_table(
  [Metriche Adeguatezza Funzionale],
  (
    [*MPD01*], [Copertura Req. Obbligatori], [$frac("Soddisfatti", "Totale Obbl.") times 100$], [100%], [100%],
    [*MPD02*], [Copertura Req. Desiderabili], [$frac("Soddisfatti", "Totale Des.") times 100$], [0%], [100%],
    [*MPD03*], [Copertura Req. Opzionali], [$frac("Soddisfatti", "Totale Opz.") times 100$], [0%], [100%],
  )
)

== Affidabilità (Reliability)
_Riferimento: Norme di Progetto, Sezione [Affidabilità]_ \ \
Capacità del sistema di mantenere un determinato livello di prestazioni in un dato periodo di tempo.

#metrics_table(
  [Metriche Affidabilità],
  (
    [*MPD04*], [Failure Density], [$frac("N. guasti", "KLOC")$], [$<= 0.5$], [0],
    [*MPD05*], [Availability], [$frac("Tempo Up", "Tempo Tot") times 100$], [$>= 98%$], [$>= 99.9%$],
  )
)

== Usabilità (Usability)
_Riferimento: Norme di Progetto, Sezione [Usabilità]_ \ \
Grado con cui un prodotto può essere usato da specifici utenti per raggiungere specifici obiettivi con efficacia, efficienza e soddisfazione.

#metrics_table(
  [Metriche Usabilità],
  (
    [*MPD06*], [Comprehensibility], [$frac("Comprese", "Totale funzioni") times 100$], [$>= 80%$], [100%],
    [*MPD07*], [Error Prevention], [$frac("Undo", "Azioni Totali") times 100$], [$<= 5%$], [$<= 2%$],
  )
)

== Manutenibilità (Maintainability)
_Riferimento: Norme di Progetto, Sezione [Manutenibilità]_ \ \
Grado di efficacia ed efficienza con cui il prodotto può essere modificato.

#metrics_table(
  [Metriche Manutenibilità],
  (
    [*MPD08*], [Comment Density], [$frac("Linee commento", "Linee codice") times 100$], [$>= 10%$], [$20% - 30%$],
    [*MPD09*], [Cyclomatic Complexity], [$V(G) = E - N + 2P$], [$<= 15$], [$<= 10$],
    [*MPD10*], [Coupling (Fan-out)], [Dipendenze esterne], [$<= 6$], [$<= 3$],
  )
)

== Sicurezza (Security)
_Riferimento: Norme di Progetto, Sezione [Sicurezza]_ \ \
Grado con cui il prodotto protegge le informazioni e i dati.

#metrics_table(
  [Metriche Sicurezza],
  (
    [*MPD11*], [Vulnerability Detection], [N. vulnerabilità critiche], [0], [0],
  )
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
  )
)

= Conclusioni

L'attività di miglioramento continuo per il progetto #def("Code Guardian") si è rivelata non solo una pratica formale, ma una necessità operativa. L'analisi delle metriche e le retrospettive hanno evidenziato come l'avvio del progetto abbia scontato l'inevitabile "prezzo d'ingresso" dovuto alla curva di apprendimento dei nuovi strumenti (come Jira e Typst) e al necessario assestamento delle dinamiche comunicative interne.

Le azioni correttive intraprese, in particolare la ristrutturazione dei canali informativi (*AM01*) e la standardizzazione documentale (*AM03*), hanno permesso di superare l'iniziale frammentazione operativa. Sebbene la ridistribuzione del budget orario (*AM02*) abbia garantito il raggiungimento degli obiettivi RTB, ha reso evidente l'importanza di una pianificazione più granulare per il futuro.

Consapevoli che l'assetto attuale non è un traguardo definitivo ma uno stato da preservare, il team si impegna a mantenere alta la vigilanza. L'obiettivo per le prossime fasi non è l'assenza di problemi, ma la capacità di identificarli tempestivamente tramite il monitoraggio dei dati e risolverli con la stessa reattività dimostrata in questo primo periodo.
