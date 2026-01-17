#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#let versione = "v0.7.1"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#set heading(numbering: "1.1.1")
#let history = (
  (
    "2026/01/16",
    "0.7.1",
    "Retrospettiva degli Sprint 1 e 2",
    members.suar,
  ),
  (
    "2026/01/12",
    "0.7.0",
    "Preventivo dei costi per la RTB e revisione sprint e retrospettiva",
    members.suar,
    members.alice,
  ),
  (
    "2026/01/11",
    "0.6.1",
    "Rielaborazione sezione di pianificazione a breve a lungo termine. Rielaborazione sezione di monitoraggio preventivo/consuntivo",
    members.suar,
    members.alice,
  ),
  (
    "2026/01/10",
    "0.6.0",
    "Sezione di introduzione ai rischi. Rielaborazione rischi RT, RI e RCO e aggiunti rischi RT5, RT6, RT7, RT8, RT9, RI4, RI5.",
    members.suar,
    members.alice,
  ),
  (
    "2026/01/05",
    "0.5.2",
    "Revisione sezione Introduzione del documento e aggiunta nuovi termini in Glossario",
    members.suar,
    members.alice,
  ),
  (
    "2026/01/03",
    "0.5.1",
    "Fix termini glossario e versionamento",
    members.andrea,
    members.antonio,
  ),
  (
    "2026/01/02",
    "0.5.0",
    "Completata analisi e gestione dei rischi con aggiunta dei rischi RT3, RT4, RI3, RCO3 e RCO4",
    members.andrea,
    members.antonio,
  ),
  (
    "2025/12/31",
    "0.4.0",
    "Completata pianificazione a lungo termine e a breve termine per RTB",
    members.antonio,
    members.andrea,
  ),
  (
    "2025/12/27",
    "0.3.0",
    "Iniziata pianificazione a lungo termine e a breve termine per RTB, lievi modifiche all'introduzione",
    members.antonio,
    members.andrea,
  ),
  (
    "2025/12/27",
    "0.2.0",
    "Aggiunta dei rischi RT1, RT2, RI1, RI2, RCO1 e RCO2",
    members.andrea,
    members.antonio,
  ),
  (
    "2025/12/24",
    "0.1.0",
    "Inizio stesura documento, introduzione, scopo, glossario, introduzione analisi rischi",
    members.andrea,
    members.antonio,
  ),
  (
    "2025/12/23",
    "0.0.0",
    "Creazione documento",
    members.andrea,
    members.antonio,
  ),
)

#versionTable(history)

#indice()

#indiceTabelle()

#pagebreak()

= Introduzione

== Contesto del Progetto
Il presente documento descrive il #def[Piano di Progetto] relativo al progetto #def[Code Guardian], commissionato dall’azienda #def[Var Group] e realizzato dal gruppo di studenti #def[Skarab Group] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

L’obiettivo del progetto è lo sviluppo di una piattaforma ad #def[Agenti] per l’#def[audit] e la #def[remediation] automatizzata delle vulnerabilità presenti nei repository di codice sorgente, in conformità a quanto specificato nel capitolato *C2*.
La piattaforma mira a supportare l’analisi statica del codice e l’individuazione di criticità di sicurezza, fornendo indicazioni di correzione mediante meccanismi automatizzati basati su modelli di linguaggio (#def[LLM]).

== Finalità del Documento
Il Piano di Progetto definisce l’impostazione gestionale e operativa del progetto, specificando le attività previste, la pianificazione temporale, le risorse coinvolte e le modalità di controllo dell’avanzamento.

Il documento costituisce il riferimento primario per il gruppo di lavoro e per gli #def[Stakeholder], perseguendo i seguenti obiettivi:
- identificare, analizzare e gestire i rischi tecnici e organizzativi lungo l’intero #def[ciclo di vita del software] ;
- definire la pianificazione temporale delle attività (#def[Schedulazione]) e le principali scadenze progettuali (#def[Milestone]);
- stimare i costi e allocare in modo coerente le risorse umane;
- monitorare l’avanzamento del progetto mediante il confronto sistematico tra preventivo e consuntivo al termine di ogni #def[Sprint].

== Prodotti Attesi
I prodotti del progetto vengono rilasciati in modo incrementale in corrispondenza di due principali milestone: la *Revisione dei Requisiti e della Tecnologia* (RTB) e la *Revisione di Accettazione*, associata alla #def[Product Baseline] (PB).

=== Revisione dei Requisiti e della Tecnologia (RTB)
Il gruppo ha fissato come obiettivo per la candidatura alla milestone RTB la data del *05/02/2026*.
Entro tale scadenza, verranno rilasciati e sottoposti a verifica i seguenti artefatti:
- *Documentazione di Baseline*:
  - Analisi dei Requisiti (versione consolidata);
  - Piano di Progetto (pianificazione di dettaglio fino alla RTB e pianificazione di alto livello fino alla PB);
  - Piano di Qualifica e Norme di Progetto (versioni approvate per l’avvio dello sviluppo);
  - Glossario.
- *Proof of Concept (#def[PoC])*: prototipo software funzionante, focalizzato sulle funzionalità critiche del sistema, in particolare sui meccanismi di comunicazione tra Agenti e LLM, finalizzato a dimostrare la fattibilità tecnica della soluzione (Technology Baseline).
- *Verbali*: documentazione delle decisioni e delle riunioni interne ed esterne rilevanti ai fini progettuali.

=== Revisione di Accettazione (Product Baseline – PB)
Il rilascio finale del progetto, corrispondente alla Product Baseline, è pianificato per la data ultima del *21/03/2026*. come preventivato nella *Candidatura al Capitolato*.
Entro tale termine, il gruppo fornirà:
- *Prodotto Software (#def[MVP])*: versione completa e funzionante del sistema, conforme ai requisiti funzionali e qualitativi approvati;
- *Codice Sorgente*: intero codebase documentato e versionato nel repository ufficiale del progetto;
- *Manualistica*:
  - *Manuale Utente*: guida all’utilizzo della piattaforma;
  - *Manuale Amministratore*: guida all’installazione, configurazione e manutenzione del sistema;
- *Documentazione Finale*: versioni definitive di tutti i documenti normativi, gestionali e di supporto;
- *Consuntivo Finale*: analisi conclusiva di costi, tempi e qualità, comprensiva degli scostamenti rispetto al preventivo.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un #def[Glossario] che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.
Le occorrenze dei termini presenti nel Glossario sono evidenziate nel testo mediante apposita formattazione.

Versione aggiornata del Glossario:
#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario].

== Riferimenti

=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione del Piano di Progetto e per lo svolgimento delle attività progettuali:
- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. #linebreak()
  Link: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")
- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. #linebreak()
  Link: #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")[Documento interno]

=== Riferimenti Informativi
- *Dispense del corso di Ingegneria del Software – Gestione di progetto* #linebreak()
  Link: #link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf")
- *Standard IEEE 1058-1998*: Standard for Software Project Management Plans. #linebreak()
  Link: #link("https://ieeexplore.ieee.org/document/25325")

==== Nota sull'adozione dello Standard IEEE 1058
#link("PdQ.pdf")
Il presente Piano di Progetto adotta come riferimento metodologico lo standard IEEE 1058-1998 (Standard for Software Project Management Plans). La scelta di questo riferimento nasce dalla volontà di adottare un approccio rigoroso nella gestione del lavoro, pur adattando i contenuti alle dimensioni e alle tempistiche del nostro caso studio.

L'integrazione di tali linee guida si riflette nei seguenti aspetti chiave:

- *Organizzazione Sistematica*: La struttura del documento ricalca la gerarchia proposta dallo standard, garantendo una copertura completa delle aree critiche (organizzazione, processi tecnici, vincoli gestionali) ed evitando lacune nella pianificazione.

- *Analisi del Rischio*: In linea con le raccomandazioni IEEE, è stata formalizzata una procedura di monitoraggio basata su metriche di probabilità, impatto e piani di contingenza, elevando il controllo sulle incertezze di progetto.

- *Logica di Tracciabilità*: Il documento è stato impostato per garantire una netta separazione tra la fase di pianificazione (Preventivo) e quella di monitoraggio operativo (Consuntivo), permettendo un’analisi oggettiva degli scostamenti in corso d’opera.

- *Efficacia Operativa*: Alcuni moduli dello standard sono stati ottimizzati e accorpati per favorire la snellezza dei processi e la comunicazione diretta all'interno del team, mantenendo però inalterato il rigore dei flussi informativi previsti dalla norma.

#pagebreak()

= Analisi dei Rischi

L’attività di gestione dei rischi è un processo iterativo, continuo e proattivo, finalizzato a supportare il conseguimento degli obiettivi del progetto #def[Code Guardian].
Essa comprende l’identificazione, l’analisi, la pianificazione delle risposte e il monitoraggio degli eventi avversi che potrebbero compromettere il rispetto dei vincoli di *tempo*, *costo* e *qualità* del prodotto software.

Il processo di analisi dei rischi viene eseguito:
- all’avvio di ogni #def[Sprint] ;
- in corrispondenza delle principali #def[Milestone] ;
- in occasione di variazioni significative di requisiti, architettura o risorse.

Ciò consente al #def[team di progetto] di adattare tempestivamente le strategie di mitigazione in funzione dell’evoluzione del contesto progettuale.

== Metodologia di Analisi

Il team adotta un approccio *semi-quantitativo* per la valutazione dei rischi.
Ogni rischio identificato viene descritto e valutato sulla base di due parametri fondamentali:

- *Probabilità di accadimento (P)*: verosimiglianza con cui l’evento potrebbe verificarsi;
- *Impatto (I)*: gravità delle conseguenze sul progetto qualora l’evento si manifesti.

Il *Livello di Rischio (R)* è calcolato come:

$ R = P times I $

I parametri $P$ e $I$ sono valutati su una scala discreta da 1 a 3.

=== Motivazione della scelta metodologica
La scelta di una scala ridotta (1-3) rispetto a scale più estese (es. 1-5 o percentuali) è motivata dalla volontà di:
- *Ridurre la soggettività:* in assenza di dati storici pregressi, una scala più ampia introdurrebbe un'eccessiva varianza nelle stime individuali. La tripartizione Basso/Medio/Alto forza una categorizzazione netta che facilita il decision-making.
- *Supportare l'approccio Agile:* il metodo adottato permette una rivalutazione rapida dei rischi a ogni Sprint, evitando l'overhead burocratico di modelli statistici complessi non necessari per la dimensione del progetto.

#figure(
  table(
    columns: (auto, 1fr, 1fr, 1fr),
    inset: 12pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    // Intestazione
    table.cell(rowspan: 2, colspan: 1, align: horizon)[*Probabilità*],
    table.cell(colspan: 3, fill: luma(240))[*Impatto*],
    [Basso (1)], [Medio (2)], [Alto (3)],

    // Riga 1
    [*Bassa (1)*],
    table.cell(fill: rgb("e6ffe6"))[1 (Basso)],
    table.cell(fill: rgb("e6ffe6"))[2 (Basso)],
    table.cell(fill: rgb("e6ffe6"))[3 (Basso)],

    // Riga 2
    [*Media (2)*],
    table.cell(fill: rgb("e6ffe6"))[2 (Basso)],
    table.cell(fill: rgb("fff5e6"))[*4 (Medio)*],
    table.cell(fill: rgb("ffcccc"))[*6 (Alto)*],

    // Riga 3
    [*Alta (3)*],
    table.cell(fill: rgb("e6ffe6"))[3 (Basso)],
    table.cell(fill: rgb("ffcccc"))[*6 (Alto)*],
    table.cell(fill: rgb("ffcccc"))[*9 (Critico)*],
  ),
  caption: [Matrice di Rischio: Visualizzazione delle soglie di intervento],
)


Sulla base del valore di $R$, i rischi vengono classificati per priorità come segue:

- *Rischio Basso ($1–3$)*: livello di guardia. Il rischio è accettabile e soggetto al solo monitoraggio periodico;
- *Rischio Medio ($4$)*: livello di attenzione. Richiede la definizione preventiva di un piano di mitigazione e un controllo frequente;
- *Rischio Alto ($6–9$)*: livello critico. Richiede azioni preventive immediate per abbassare la probabilità e la predisposizione di piani di contingenza pronti all’uso.

== Categorie di Rischio

Per favorire l’analisi sistematica e l’assegnazione delle responsabilità, i rischi sono classificati nelle seguenti macro-categorie:

- *RT (Rischi Tecnologici)*: criticità legate alle tecnologie adottate (es. #def[LLM], #def[Agenti]), strumenti di sviluppo, integrazioni e infrastruttura;
- *RI (Rischi Interpersonali)*: problematiche relative al #def[team di progetto], quali disponibilità dei membri, comunicazione, coordinamento e gestione dei conflitti;
- *RCO (Rischi di Costo e Organizzativi)*: rischi derivanti da stime non accurate, pianificazione temporale (#def[Schedulazione]), dipendenze esterne e vincoli organizzativi.

== Ruoli e Responsabilità

La gestione dei rischi è una responsabilità condivisa, articolata come segue:

- *Responsabile di Progetto*: supervisiona il processo di gestione dei rischi, valuta la criticità degli eventi e decide l’attivazione delle strategie di mitigazione o dei piani di contingenza;
- *Team di Progetto*: contribuisce all’identificazione dei rischi e segnala tempestivamente l’insorgere di eventi critici o condizioni anomale;
- *Stakeholder di riferimento*: vengono informati in caso di rischi ad alto impatto o di variazioni rilevanti rispetto al piano approvato.

== Gestione e Monitoraggio dei Rischi

La gestione dei rischi non è limitata alla fase di avvio del progetto, ma costituisce un processo ciclico di controllo che accompagna l’intero ciclo di vita del sistema ed è integrato nelle attività di pianificazione e revisione degli Sprint.

=== Procedura operativa

Nel caso in cui un rischio si manifesti o emergano nuovi rischi non precedentemente previsti, il team applica la seguente procedura formale:

+ *Rilevamento (Detection):*
  Ogni membro del team segnala tempestivamente al *Responsabile di Progetto* l’insorgere di problematiche tecniche o organizzative, inclusi superamenti di soglie di allarme (ad esempio ritardi superiori al 20% rispetto alla pianificazione prevista).

+ *Documentazione:*
  L’evento viene descritto nel verbale della prima riunione utile e, qualora necessario, viene aperto o aggiornato un ticket sulla piattaforma di gestione delle attività (#def[GitHub] Projects).

+ *Valutazione e Risposta:*
  Il Responsabile di Progetto valuta la criticità del rischio e attiva la strategia di mitigazione o il piano di contingenza più appropriato, quali la riallocazione delle risorse, la revisione delle priorità o la riduzione dello scopo opzionale.

+ *Rendicontazione (Consuntivo):*
  Al termine dello #def[Sprint] o di una fase significativa del progetto (es. #def[RTB]), l’evento viene analizzato nel *Consuntivo di periodo* dello Sprint di riferimento, valutando:
  - l’impatto effettivo su tempi, costi e qualità;
  - l’efficacia delle contromisure adottate;
  - la necessità di eventuali azioni correttive per gli Sprint successivi.

+ *Aggiornamento delle Strategie:*
  Le strategie di mitigazione vengono aggiornate e integrate nella pianificazione degli Sprint successivi, al fine di ridurre la probabilità o l’impatto di eventi analoghi futuri.

#pagebreak()

== Rischi Tecnologici (RT)
Questa categoria raggruppa le criticità derivanti dalla natura innovativa dello stack tecnologico. L'adozione di architetture a Sistemi Multiagente e l'integrazione con #def[LLM] comportano un'intrinseca incertezza, dovuta alla natura non deterministica dei modelli e alla ripida curva di apprendimento.

=== RT1: Inesperienza con tecnologie IA <RT1>
#schedaRischio(
  "RT1",
  "Inesperienza con lo sviluppo di sistemi basati su IA",
  [Il team non ha esperienza pregressa nella creazione di applicazioni che integrano l'Intelligenza Artificiale. Questa mancanza di familiarità con i nuovi paradigmi di sviluppo può portare a una gestione imprecisa delle tempistiche e a ostacoli tecnici imprevisti che potrebbero rallentare l'intero progetto.],
  [Il percorso accademico tradizionale non copre ancora in dettaglio le tecnologie generative e le logiche di orchestrazione degli agenti, creando un significativo divario tra le conoscenze teoriche del team e le competenze pratiche richieste.],
  [Formazione interna e condivisione continua delle conoscenze tra i membri. Sviluppo di piccoli prototipi mirati: si tratta di configurazioni atomiche di agenti IA con task estremamente basilari e compiti circoscritti, utili a testare singole funzionalità prima della loro integrazione in architetture più complesse.],
  [Semplificazione del sistema: se la complessità tecnologica dovesse rivelarsi eccessiva per le risorse disponibili, si ridurrà l'autonomia decisionale degli agenti in favore di flussi di lavoro più rigidi, deterministici e facilmente controllabili.],
  "Alta",
  "Alto",
)

=== RT2: Errata selezione delle tecnologie <RT2>
#schedaRischio(
  "RT2",
  "Scelta di strumenti inadeguati o immaturi",
  [Data la vastità e la velocità di evoluzione del panorama IA, il team potrebbe compiere scelte tecnologiche errate (librerie, framework, linguaggi, servizi cloud), che si rivelano inadatte agli obiettivi del progetto o eccessivamente complesse da integrare.],
  [La mancanza di standard consolidati e il fatto che queste tecnologie trattino temi mai affrontati nel percorso accademico rendono difficile per il team valutare correttamente la solidità di uno strumento prima di averlo utilizzato intensivamente.],
  [Pianificazione di una fase di ricerca tecnologica approfondita e realizzazione di test comparativi. Progettazione modulare per isolare le dipendenze esterne, limitando l'impatto di un eventuale cambio di rotta.],
  [Sostituzione del componente che si è rivelato una scelta errata. Accettazione di un debito tecnico controllato o creazione di soluzioni temporanee ("wrapper") per compensare le mancanze dello strumento scelto inizialmente.],
  "Media",
  "Alto",
)

=== RT3: Difficoltà nella progettazione degli Agenti <RT3>
#schedaRischio(
  "RT3",
  "Errori di modellazione dei flussi di ragionamento",
  [La progettazione della logica con cui il sistema decide ed esegue le azioni è un compito complesso. Un errore in questa fase può portare il sistema a non completare i compiti o a eseguire operazioni cicliche infinite senza produrre risultati.],
  [Programmare un sistema basato su decisioni autonome richiede un approccio molto diverso dalla programmazione tradizionale insegnata nei corsi universitari, aumentando la probabilità di errori di logica strutturale.],
  [Studio dei modelli di ragionamento già validati dalla comunità scientifica. Revisione condivisa tra i membri del team di ogni schema decisionale prima di passare alla fase di sviluppo.],
  [Semplificazione della logica: passaggio da un sistema in cui l'intelligenza artificiale decide autonomamente i passaggi da seguire a un sistema a tappe fisse e predefinite, dove l'IA si limita a eseguire compiti all'interno di un percorso rigido stabilito dagli sviluppatori.],
  "Alta",
  "Medio",
)

=== RT4: Affidabilità dell'IA <RT4>
#schedaRischio(
  "RT4",
  "Generazione di contenuti errati o fuorvianti",
  [Il sistema potrebbe produrre suggerimenti che appaiono formalmente corretti ma risultano logicamente errati o basati su vulnerabilità inesistenti (#def[Allucinazione]). Tali errori compromettono l'utilità del prodotto e potrebbero indurre l'utente a correzioni superflue o dannose.],
  [La natura probabilistica degli LLM implica che il modello predice sequenze di testo senza una reale comprensione semantica del codice. Questo divario cognitivo, unito alla difficoltà del team nel distinguere output validi da quelli errati in contesti complessi, eleva il rischio di inaffidabilità.],
  [Utilizzo di tecniche di #def[Prompt Engineering] avanzate, per guidare il modello con esempi concreti. Integrazione di strumenti di #def[Analisi Statica] deterministici che agiscono come filtri di validazione prima di mostrare l'output all'utente.],
  [Attivazione di un modello #def[Human-in-the-loop]: il sistema viene declassato da strumento di auto-correzione a sistema di supporto alle decisioni. L'IA si limita a segnalare potenziali criticità, delegando interamente la validazione e l'applicazione delle modifiche alla supervisione umana.],
  "Alta",
  "Medio",
)

=== RT5: Costi e Limiti di Utilizzo <RT5>
#schedaRischio(
  "RT5",
  "Saturazione del budget o blocco delle API",
  [L'architettura multi-agente genera un traffico di dati elevato. Questo può portare all'esaurimento dei crediti disponibili o al blocco delle chiavi API per eccesso di richieste (Rate Limit), fermando lo sviluppo.],
  [L'inesperienza nella gestione di flussi IA può portare a loop di chiamate ricorsive non previste, con conseguente spreco di risorse economiche in tempi brevissimi.],
  [Implementazione di sistemi di caching per evitare chiamate ridondanti. Monitoraggio rigoroso dei costi tramite dashboard e utilizzo di modelli economici (small models) per lo sviluppo quotidiano.],
  [Switch verso modelli Open Source eseguiti localmente (es. via Ollama). Sebbene meno performanti, garantiscono la continuità dello sviluppo senza costi variabili aggiuntivi.],
  "Alta",
  "Medio",
)

=== RT6: Riservatezza dei Dati <RT6>
#schedaRischio(
  "RT6",
  "Esposizione involontaria di informazioni riservate",
  [L'invio di porzioni di codice a servizi esterni per l'analisi potrebbe violare accordi di riservatezza o esporre segreti industriali del cliente. Esiste il pericolo che logiche proprietarie o dati sensibili escano dal controllo diretto del team di sviluppo.],
  [Le condizioni d'uso di molti servizi di intelligenza artificiale sono complesse e spesso permettono ai fornitori di riutilizzare i dati ricevuti per migliorare i propri sistemi, rendendo tali informazioni potenzialmente accessibili a soggetti terzi in futuro.],
  [Rimozione preventiva dal codice di ogni riferimento sensibile, come nomi propri, password o commenti riservati, prima dell'invio ai servizi esterni. Configurazione dei permessi per negare esplicitamente l'autorizzazione al riutilizzo dei dati per scopi di addestramento.],
  [Blocco immediato del trasferimento dati verso l'esterno e passaggio all'utilizzo di modelli installati direttamente sui computer del team. Questa soluzione garantisce che nessun dato lasci mai l'ambiente di lavoro protetto.],
  "Bassa",
  "Alto",
)

=== RT7: Gestione dell'Infrastruttura <RT7>
#schedaRischio(
  "RT7",
  "Incongruenze tra ambiente di sviluppo e produzione",
  [Le differenze di configurazione tra i computer dei singoli membri e l'ambiente cloud finale possono causare malfunzionamenti critici rilevabili solo in fase di rilascio.],
  [La mancanza di figure specializzate nella gestione operativa (#def[DevOps]) nel team rende la configurazione dei server un compito soggetto a errori umani e sviste sistemistiche.],
  [Uso rigoroso della #def[containerizzazione] (#def[Docker]) per garantire che ogni membro lavori in un ambiente identico a quello di produzione. Automazione del deployment.],
  [Fallback su una dimostrazione locale completa: in caso di problemi insormontabili con il cloud, il sistema verrà presentato come applicazione standalone durante la demo.],
  "Media",
  "Medio",
)

=== RT8: Integrazione dei Sottosistemi <RT8>
#schedaRischio(
  "RT8",
  "Disallineamento delle interfacce di comunicazione",
  [Il mancato rispetto dei "contratti" di scambio dati tra Frontend, Backend e moduli IA può rendere il sistema frammentato e inutilizzabile. Se i componenti non comunicano correttamente, l'intera applicazione perde la sua coerenza funzionale.],
  [Lo sviluppo parallelo condotto da diversi membri del team, in assenza di una supervisione rigorosa sulle interfacce (API), facilita l'insorgere di incompatibilità tecniche che spesso emergono solo nelle fasi avanzate del progetto.],
  [Definizione preventiva e formale delle specifiche di comunicazione. Utilizzo di test di integrazione automatizzati per intercettare eventuali discrepanze non appena il codice viene condiviso sul repository.],
  [Sessioni di riallineamento intensivo: sospensione programmata dello sviluppo di nuove funzionalità per dedicare l'intero team alla risoluzione prioritaria dei conflitti di comunicazione e alla stabilizzazione dei collegamenti tra i moduli.],
  "Media",
  "Alto",
)

=== RT9: Sicurezza Ambiente di Analisi <RT9>
#schedaRischio(
  "RT9",
  "Esecuzione di codice arbitrario non sicuro",
  [Per analizzare il comportamento del software, il sistema potrebbe trovarsi a eseguire frammenti di codice caricati dall'utente che potrebbero contenere malware o script dannosi per il sistema ospite.],
  [L'analisi dinamica richiede l'attivazione di processi che, se non correttamente isolati, hanno accesso alle risorse hardware e di rete della macchina.],
  [Creazione di ambienti effimeri e isolati (Sandbox) privi di privilegi di rete o di root. Ogni analisi viene eseguita in un ambiente che viene distrutto subito dopo l'uso.],
  [Degrado funzionale: disabilitazione totale della componente di esecuzione dinamica, limitando il sistema alla sola analisi statica del testo del codice.],
  "Bassa",
  "Alto",
)

#pagebreak()
== Rischi Interpersonali (RI)
Questa categoria analizza le criticità legate alle risorse umane. Essendo il team composto da studenti con impegni paralleli, la gestione della disponibilità e della comunicazione rappresenta un fattore critico.

=== RI1: Impegni accademici concorrenti <RI1>
#schedaRischio(
  "RI1",
  "Sovrapposizione con esami e lavoro",
  [I membri del team affrontano sessioni d'esame o impegni lavorativi che riducono drasticamente la capacità produttiva in finestre temporali specifiche.],
  [La natura studentesca del team comporta cali di disponibilità fisiologici e prevedibili, ma difficili da quantificare con esattezza a priori.],
  [Pianificazione con margini di tolleranza nei periodi d'esame. Calendario condiviso delle indisponibilità aggiornato settimanalmente.],
  [Ridistribuzione dinamica dei task critici sui membri liberi. Ricorso al #def[Pair Programming] per accelerare il completamento dei task in ritardo.],
  "Alta", // P=3
  "Medio", // I=2 -> R=6 (Alto)
)

=== RI2: Assenza prolungata (#def[Bus Factor]) <RI2>
#schedaRischio(
  "RI2",
  "Indisponibilità improvvisa di un membro",
  [Problemi di salute o personali gravi che impediscono il contributo per un periodo prolungato.],
  [Eventi di forza maggiore imprevedibili.],
  [Condivisione continua della conoscenza (no silos di competenza) per evitare che l'assenza di un singolo blocchi il lavoro (#def[Bus Factor] > 1). Documentazione aggiornata.],
  [Riassegnazione immediata delle responsabilità. Al rientro, piano di reinserimento graduale supportato dal team.],
  "Bassa", // P=1
  "Alto", // I=3 -> R=3 (Basso/Monitoraggio)
)

=== RI3: Ritiro dal progetto <RI3>
#schedaRischio(
  "RI3",
  "Abbandono definitivo di un membro",
  [Ritiro formale dal corso o dal progetto, con perdita secca di capacità produttiva.],
  [Valutazioni personali sulla sostenibilità del carico di studio o cause di forza maggiore.],
  [Monitoraggio del clima interno per prevenire burnout. Rotazione dei ruoli per diffondere le competenze.],
  [Riorganizzazione del team. Avvio immediato di un confronto con il proponente per negoziare una riduzione dello scopo (funzionalità opzionali) proporzionale alle risorse residue.],
  "Bassa", // P=1
  "Alto", // I=3 -> R=3 (Basso/Monitoraggio)
)

=== RI4: Conflitti e attriti interni <RI4>
#schedaRischio(
  "RI4",
  "Comunicazione inefficace e stallo decisionale",
  [Divergenze su scelte tecniche o scarsa partecipazione possono generare un clima teso ("Storming"), bloccando il lavoro.],
  [Team di pari senza gerarchia imposta. Comunicazione asincrona (chat) che favorisce fraintendimenti.],
  [Meeting regolari per allineamento. Processo decisionale codificato: in caso di stallo tecnico, decide il Responsabile.],
  [Intervento del Responsabile come mediatore. Escalation al Professore solo se il conflitto pregiudica la prosecuzione del progetto.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RI5: Skill Gap e Disomogeneità <RI5>
#schedaRischio(
  "RI5",
  "Sbilanciamento produttivo tra membri",
  [Divario significativo tra membri esperti e non, portando a sovraccarico dei primi e demotivazione dei secondi.],
  [Background tecnici eterogenei e diverse velocità di apprendimento.],
  [Pair Programming sistematico (Esperto + Junior) per il travaso di conoscenze. Code Review incrociata obbligatoria.],
  [Assegnazione task graduata: compiti complessi agli esperti, task di supporto/testing ai meno esperti, garantendo comunque la rotazione sui ruoli tecnici.],
  "Alta", // P=3
  "Medio", // I=2 -> R=6 (Alto)
)

#pagebreak()

== Rischi Costi e Organizzativi (RCO)
Questa categoria raggruppa le criticità legate alla pianificazione temporale, al budget (ore-persona) e alla gestione degli stakeholder.

=== RCO1: Errata stima dei tempi <RCO1>
#schedaRischio(
  "RCO1",
  "Sottostima della complessità dei task",
  [Le stime ottimistiche portano a ritardi a cascata sul #def[Gantt].],
  [Inesperienza su tecnologie #def[LLM] e #def[Optimism Bias] cognitivo.],
  [Stime a tre punti (ottimistica, probabile, pessimistica) per i task critici. Scomposizione granulare delle attività.],
  [Resource Leveling: spostamento risorse da attività non critiche. Taglio dello scopo: posticipare i requisiti opzionali alla fase successiva.],
  "Alta", // P=3
  "Alto", // I=3 -> R=9 (Critico)
)

=== RCO2: Scope Creep <RCO2>
#schedaRischio(
  "RCO2",
  "Instabilità dei requisiti e Gold Plating",
  [Tendenza ad aggiungere feature non richieste o modifiche continue ai requisiti in corso d'opera.],
  [Perfezionismo tecnico o comprensione ambigua dei bisogni iniziali.],
  [Congelamento dei requisiti post-Analisi. Ogni modifica richiede approvazione formale dell'impatto (Change Request).],
  [Rifiuto delle modifiche non bloccanti. Se la modifica è necessaria, negoziazione "Swap": si aggiunge X ma si rimuove Y di pari costo.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RCO3: Sforamento Budget Orario <RCO3>
#schedaRischio(
  "RCO3",
  "Esaurimento ore preventivate per ruolo",
  [Il consuntivo ore supera il preventivo, erodendo il budget residuo.],
  [Inefficienze produttive o rework dovuto a bassa qualità iniziale.],
  [Monitoraggio settimanale Dashboard Ore. Verifica scostamenti in ogni Sprint Review.],
  [Riallocazione ore risparmiate da altri ruoli. Semplificazione tecnica per rientrare nel monte ore residuo.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RCO4: Latenza Stakeholder <RCO4>
#schedaRischio(
  "RCO4",
  "Ritardi nel feedback dal Proponente",
  [Lentezza nelle risposte di #def[Var Group] su dubbi bloccanti o validazione #def[SAL].],
  [Il proponente ha priorità aziendali che possono prevalere sul progetto didattico.],
  [Meeting periodici fissi. Verbali immediati per formalizzare il silenzio-assenso.],
  [Sollecito formale. Procedura di "Assunzione di Responsabilità": in assenza di risposta entro X giorni, il team procede con la scelta ritenuta migliore.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RCO5: Incoerenza Documentale <RCO5>
#schedaRischio(
  "RCO5",
  "Documentazione frammentata o non conforme",
  [Disomogeneità stilistica e terminologica tra i vari documenti.],
  [Redazione collaborativa parallela senza linee guida rigorose.],
  [Template #def[Typst] vincolanti. Glossario centralizzato. Ruolo di Verificatore distinto dal Redattore.],
  [Armonizzazione finale ("One Voice"): revisione globale di un singolo editor prima del rilascio.],
  "Media", // P=2
  "Basso", // I=1 -> R=2 (Basso)
)

#pagebreak()

= Strategie di pianificazione del ciclo di vita
In questa sezione viene descritta la #def[schedulazione] delle attività di progetto, necessaria per garantire il rispetto delle scadenze e la corretta allocazione delle risorse.

Coerentemente con quanto emerso nell'analisi dei rischi (in particolare #link(<RCO1>)[#underline[RCO1]] e #link(<RT2>)[#underline[RT2]]), la pianificazione adotta un approccio basato sulla strategia del *#def[Rolling Wave Planning]*. Questo metodo prevede una pianificazione di dettaglio per le attività a breve termine (RTB) e una pianificazione strategica ad alto livello per le fasi successive (PB), che verrà raffinata progressivamente.

Il ciclo di vita è scandito da due #def[Milestone] principali che fungono da spartiacque:

1. *Requirements and Technology Baseline (#def[RTB]):* Milestone a breve termine. Focus su consolidamento requisiti, documentazione normativa e validazione tecnologica (#def[PoC]).
2. *Product Baseline (#def[PB]):* Milestone a lungo termine. Focus su sviluppo incrementale del prodotto (#def[MVP]), test di sistema e rilascio.

== Pianificazione a breve termine (Verso la RTB)
Questa fase copre il periodo dall'avvio del progetto fino al colloquio per la RTB.
L'obiettivo è duplice:
1. *Documentale:* Formalizzare requisiti, processi e pianificazione.
2. *Tecnologico:* Mitigare i rischi tecnici critici (#link(<RT1>)[#underline[RT1]], #link(<RT2>)[#underline[RT2]]) tramite lo sviluppo del Proof of Concept.

=== Calendario degli Sprint (Fase RTB)
La fase è suddivisa in 3 iterazioni (*Sprint*). Le date sono state definite tenendo conto della pausa natalizia e della sessione d'esami invernale.

#figure(
  table(
    columns: (auto, 1fr, 1fr),
    inset: 8pt,
    align: (col, row) => if col == 0 { center + horizon } else { left + horizon },
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    stroke: 0.5pt + luma(200),
    table.header(
      text(fill: white, weight: "bold")[Iterazione],
      text(fill: white, weight: "bold")[Data Inizio],
      text(fill: white, weight: "bold")[Data Fine],
    ),
    [*Sprint 1*], [19/12/2025], [03/01/2026],
    [*Sprint 2*], [03/01/2026], [17/01/2026],
    [*Sprint 3*], [17/01/2026], [06/02/2026],
    // Esteso per coprire finitura PoC
  ),
  caption: [Calendario degli Sprint pianificati per la fase RTB],
)

=== Strategia di rispetto delle scadenze
Per mitigare il rischio di ritardi (#link(<RCO1>)[#underline[RCO1]]), il gruppo ha adottato la strategia delle *Internal Review*.
Ogni Sprint termina con una revisione interna fissata con un anticipo di *3 giorni* rispetto alla scadenza ufficiale. Questo margine (*Slack Time*) permette di:
1. Assorbire imprevisti dell'ultimo minuto.
2. Eseguire una revisione incrociata (Peer Review) di documenti e codice prima del rilascio.

=== Dettaglio delle attività
La tabella seguente dettaglia il carico di lavoro pianificato.

#show figure: set block(breakable: true)
#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else if calc.even(row) { luma(96%) } else { white },
    columns: (1.5fr, 3fr, 1.5fr, 1.3fr),
    inset: 10pt,
    align: (col, row) => if col == 3 { center + horizon } else { left + top },
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Attività / Artefatto],
      text(fill: white, weight: "bold")[Descrizione Dettagliata],
      text(fill: white, weight: "bold")[Periodo],
      text(fill: white, weight: "bold")[Stato],
    ),

    // Analisi dei Requisiti
    [*Analisi dei Requisiti*],
    [Formalizzazione secondo ISO/IEC/IEEE 29148 e struttura IEEE 830:
      - *Metodologia:* Fonti e attori.
      - *Casi d'Uso:* Specifica UML e scenari.
      - *Requisiti:* Classificazione funzionale, prestazionale e vincoli.
    ],
    [
      - Metodo: *Sprint 1*
      - UC: *Sprint 1-2*
      - Requisiti: *Sprint 2-3*
    ],
    [In corso],

    // Piano di Progetto
    [*Piano di Progetto*],
    [Gestione e previsione:
      - Analisi dei Rischi e Strategie.
      - Pianificazione temporale.
      - Preventivo costi e risorse.
    ],
    [
      - Rischi: *Sprint 1*
      - Pianif.: *Sprint 2*
      - Costi: *Sprint 2*
    ],
    [In fase di chiusura],

    // Piano di Qualifica
    [*Piano di Qualifica*],
    [Strategia di V&V:
      - Obiettivi di qualità e metriche (ISO/IEC).
      - Metodologie di test (Unit, System).
      - Cruscotto di Valutazione (PDCA).
    ],
    [
      - Qualità: *Sprint 1*
      - Test: *Sprint 1-2*
    ],
    [In revisione],

    // Norme di Progetto
    [*Norme di Progetto*],
    [Codifica regole e processi:
      - Setup strumenti (#def[Jira], #def[Slack]).
      - Definizione processi primari e di supporto.
      - Standard di codifica.
    ],
    [
      - Strumenti: *Sprint 1*
      - Processi: *Sprint 1-2*
    ],
    [In revisione],

    // Glossario
    [*Glossario*],
    [Redazione incrementale dei termini tecnici.
      Responsabilità diffusa tra tutti i membri per garantire un vocabolario controllato (#link(<RCO5>)[#underline[RCO5]]).],
    [Trasversale],
    [In corso],

    // Proof of Concept - ANTICIPATO
    [*Sviluppo PoC*],
    [Realizzazione prototipo per mitigazione rischi #link(<RT1>)[#underline[RT1]]/ #link(<RT2>)[#underline[RT2]]:
      - Studio API LLM e framework.
      - Progettazione architetturale preliminare.
      - Implementazione agente base.
    ],
    [
      - Studio: *Sprint 1-2*
      - Coding: *Sprint 3*
    ],
    [Avviato],

    // Gestione
    [*Gestione e Coordinamento*],
    [Attività continuativa:
      - Riunioni interne/esterne e verbali.
      - Monitoraggio task su Jira.
    ],
    [Trasversale],
    [In corso],

    // Presentazione
    [*Preparazione RTB*],
    [Sintesi finale:
      - Slide di presentazione.
      - Simulazione esposizione (Dry run).
    ],
    [- Slide: *Sprint 3*],
    [Pianificato],
  ),
  caption: [Dettaglio attività pianificate per la fase RTB],
)

== Pianificazione a lungo termine (Verso la PB)
Superata la RTB, il progetto entrerà nella fase operativa volta al raggiungimento della *Product Baseline* (#def[PB]).
La pianificazione di dettaglio (date e sprint) sarà formalizzata nel *Piano di Progetto v2.0.0*. Nonostante ciò, la strategia di sviluppo è già strutturata in 4 macro-fasi:

==== 1. Consolidamento Architetturale (Post-PoC)
Transizione dallo sviluppo sperimentale alla progettazione ingegneristica.
- *Obiettivo:* Definire i blueprint definitivi del sistema basandosi sulle lezioni apprese dal PoC.
- *Attività:* Analisi critica del prototipo, Technical Design (UML Classi/Sequenza), progettazione schema dati e setup CI/CD definitivo.

==== 2. Sviluppo Core (#def[MVP])
Realizzazione del nucleo funzionale essenziale.
- *Obiettivo:* Rilascio di un ambiente controllato e testabile che soddisfi i requisiti obbligatori.
- *Attività:* Modulo di #def[analisi statica], integrazione Agenti-LLM, implementazione Sandboxing per la sicurezza (#link(<RT9>)[#underline[RT9]]).

==== 3. Estensione e Ottimizzazione
Sviluppo funzionalità avanzate e UI finale.
- *Obiettivo:* Copertura requisiti desiderabili e UX.
- *Attività:* Modulo di Remediation automatica, Frontend (Dashboard), ottimizzazione costi API (#def[Caching] - #link(<RT5>)[#underline[RT5]]).

==== 4. Validazione e Rilascio
Fase dedicata alla Quality Assurance e alla consegna.
- *Obiettivo:* Conformità totale ai requisiti e stabilità.
- *Attività:* System Test intensivi, User Acceptance Test (UAT) con il proponente, Manualistica finale e chiusura metriche di qualità.

#pagebreak()
= Preventivo e Risorse

In questa sezione viene presentata la stima definitiva dei costi e la pianificazione dell'allocazione delle risorse umane.
Il preventivo è stato calcolato tenendo conto dei vincoli di budget e della scadenza finale di progetto fissata per il *21/03/2026*.

== Evoluzione del preventivo rispetto alla candidatura
Durante la fase di candidatura per il capitolato C2, il gruppo ha formalizzato la propria proposta economica tramite il documento *Preventivo costi ed impegno orario*. In tale sede, era stata ipotizzata una distribuzione oraria preliminare basata su una stima generica dei carichi di lavoro.

Tuttavia, l'analisi approfondita dei requisiti normativi e l'avvio della fase operativa hanno evidenziato la necessità di un *ribilanciamento strategico delle risorse*.
Il team ha rilevato che l'onere per la gestione dell'infrastruttura, la verifica dei processi e la manutenzione della documentazione era stato inizialmente sottostimato. Parallelamente, l'efficienza garantita dagli strumenti moderni (es. AI coding assistants) e la realizzazione anticipata del PoC hanno permesso di ottimizzare le fasi puramente tecniche.

Le variazioni significative rispetto alla stima iniziale sono:
- *Incremento Amministratore (+5 ore pro-capite):* Da 8h a *13h*. Necessario per garantire il rigore nella stesura delle Norme di Progetto, del Piano di Qualifica e la gestione del CI/CD documentale.
- *Ottimizzazione Responsabile (-2 ore pro-capite):* Da 9h a *7h*. Riduzione ottenuta grazie a processi decisionali più snelli e meno burocratici.
- *Rimodulazione Ruoli Tecnici (-3 ore pro-capite):* Le ore di Progettista sono state assestate a *17h* (da 18h), quelle di Analista a *12h* (da 13h) e quelle di Programmatore a *20h* (da 21h), trasferendo il budget risparmiato sulle attività di controllo e gestione.

Tale rimodulazione ha comportato un'ulteriore riduzione del costo totale, sceso dai € 12.845,00 della candidatura agli attuali *€ 12.670,00*.

== Preventivo Totale Definitivo
Il gruppo è composto da *7 membri*. Ciascun componente si impegna a rendicontare un monte ore produttivo pari a *90 ore*, per un totale complessivo di *630 ore* di progetto.

Di seguito è riportata la ripartizione totale delle ore per ruolo sull'intero ciclo di vita.


#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else if col == 0 { luma(96%) } else { white },
    columns: (1.5fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: (col, row) => if col == 0 { left + horizon } else { center + horizon },
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Costo Orario],
      text(fill: white, weight: "bold")[Ore Totali],
      text(fill: white, weight: "bold")[Costo Totale],
    ),

    [Responsabile], [30 €/h], [49], [€ 1.470,00],
    [Amministratore], [20 €/h], [91], [€ 1.820,00],
    // 13h/p
    [Analista], [25 €/h], [84], [€ 2.100,00],
    // 12h/p
    [Progettista], [25 €/h], [119], [€ 2.975,00],
    // 17h/p
    [Programmatore], [15 €/h], [140], [€ 2.100,00],
    // 20h/p
    [Verificatore], [15 €/h], [147], [€ 2.205,00],
    // 21h/p

    table.cell(colspan: 2, fill: luma(240))[*Totale*],
    table.cell(fill: luma(240))[*630*],
    table.cell(fill: luma(240))[*€ 12.670,00*],
  ),
  caption: [Distribuzione totale delle ore e dei costi per ruolo (Definitiva)],
)

== Preventivo Fase RTB
La prima fase del progetto (#def[RTB]) richiede un forte investimento nella strutturazione dei processi e nell'analisi.
Per questo motivo, oltre il *60%* del monte ore totale di *Amministratore* viene allocato in questa fase per garantire la solidità delle Norme di Progetto e del Piano di Qualifica, supportato da un intenso lavoro di Analisi.

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore Previste (RTB)],
      text(fill: white, weight: "bold")[Costo Parziale],
    ),

    [Responsabile], [21], [€ 420,00],
    // Gestione avvio
    [Amministratore], [56], [€ 1.120,00],
    // Setup e Norme (Forte carico)
    [Analista], [63], [€ 1.575,00],
    // Analisi Requisiti
    [Progettista], [14], [€ 350,00],
    // Architettura PoC
    [Programmatore], [21], [€ 315,00],
    // Coding PoC
    [Verificatore], [42], [€ 630,00],
    // Verifica documenti

    table.cell(colspan: 1, fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*210*],
    table.cell(fill: luma(240))[*€ 4.410,00*],
  ),
  caption: [Preventivo di periodo per la fase RTB],
)

== Stima per la fase Product Baseline (PB)
Il budget residuo è focalizzato sullo sviluppo e verifica del prodotto. Le ore di Amministratore in questa fase sono ridotte alla sola manutenzione della documentazione, mentre aumentano notevolmente le ore di Progettazione e Programmazione per l'MVP.

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore Allocate (PB)],
      text(fill: white, weight: "bold")[Budget Residuo],
    ),

    // Differenza: Totale - RTB
    [Responsabile], [28], [€ 1.050,00],
    [Amministratore], [35], [€ 700,00],
    [Analista], [21], [€ 525,00],
    [Progettista], [105], [€ 2.625,00],
    // Sviluppo architettura finale
    [Programmatore], [119], [€ 1.785,00],
    // Sviluppo MVP
    [Verificatore], [105], [€ 1.575,00],

    table.cell(colspan: 1, fill: luma(240))[*Totale PB*],
    table.cell(fill: luma(240))[*420*],
    table.cell(fill: luma(240))[*€ 8.260,00*],
  ),
  caption: [Budget residuo stimato per la fase PB],
)

== Ripartizione oraria per membro
La seguente matrice dettaglia la distribuzione delle ore per ciascun componente, garantendo il rispetto del principio di rotazione dei ruoli.

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else if col == 0 { luma(96%) } else { white },
    columns: (1.2fr, 1fr, 1fr, 0.8fr, 1fr, 1fr, 1fr, 0.6fr),
    inset: 5pt,
    align: (col, row) => if col == 0 { left + horizon } else { center + horizon },
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, size: 9pt, weight: "bold")[Membro],
      text(fill: white, size: 8pt, weight: "bold")[Responsabile],
      text(fill: white, size: 8pt, weight: "bold")[Amministratore],
      // 13h
      text(fill: white, size: 8pt, weight: "bold")[Analista],
      // 12h
      text(fill: white, size: 8pt, weight: "bold")[Progettista],
      // 17h
      text(fill: white, size: 8pt, weight: "bold")[Programmatore],
      // 20h
      text(fill: white, size: 8pt, weight: "bold")[Verificatore],
      // 21h
      text(fill: white, size: 9pt, weight: "bold")[Totale],
    ),

    // Ripartizione Aggiornata (Somma riga: 90h)
    [#members.kevin], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.berengan], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.martinello], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.antonio], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.andrea], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.suar], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.alice], [7], [13], [12], [17], [20], [21], [*90*],

    table.cell(colspan: 1, fill: luma(240), align: left)[*Totale Ore*],
    table.cell(fill: luma(240))[*49*],
    table.cell(fill: luma(240))[*91*],
    table.cell(fill: luma(240))[*84*],
    // Corretto (7*12)
    table.cell(fill: luma(240))[*119*],
    // Corretto (7*17)
    table.cell(fill: luma(240))[*140*],
    table.cell(fill: luma(240))[*147*],
    table.cell(fill: luma(240))[*630*],
  ),
  caption: [Matrice di ripartizione pianificata per membro],
)

#pagebreak()
= Monitoraggio e controllo: Preventivo e Consuntivo

In questa sezione viene rendicontato l'avanzamento effettivo del progetto attraverso il confronto sistematico tra quanto pianificato (*Preventivo*) e quanto realmente realizzato (*Consuntivo*). Tale attività avviene al termine di ogni #def[Sprint] e permette di valutare la salute economica e temporale del progetto.

== Metodologia di monitoraggio
Per garantire un controllo rigoroso, il gruppo analizza i seguenti indicatori al termine di ogni iterazione:

- *Ore Previste:* Ore pianificate nel preventivo di Sprint.
- *Ore Effettive:* Ore realmente impiegate e tracciate tramite #def[Jira].
- *Differenza (Delta):* Variazione oraria ($"Effettive" - "Previste"$).
- *Costo Effettivo:* Calcolato moltiplicando le ore effettive per la tariffa oraria del ruolo.

L'analisi degli scostamenti (*Variance Analysis*) permette di individuare tempestivamente eventuali inefficienze, consentendo al Responsabile di attuare azioni correttive (es. riallocazione risorse) per rientrare nei vincoli di budget.

=== Nota sulle attività preliminari (Periodo di Avviamento)
Le attività svolte antecedentemente alla data di avvio ufficiale del primo Sprint (19/12/2025) sono state classificate come *investimento interno* e *auto-formazione*.

In questa fase propedeutica ("Palestra"), il team ha dedicato una parte consistente delle risorse a:
- *Analisi critica dello stack tecnologico:* Studio approfondito delle tecnologie suggerite dal capitolato C2. I membri hanno redatto documenti di appunti pubblici e condivisi per analizzare le motivazioni tecniche della loro adozione e valutarne l'idoneità alla costruzione del progetto.
- *Allineamento tecnico:* Gli esiti di tali ricerche sono stati oggetto di discussione collegiale, tracciata nei *verbali interni*, permettendo al gruppo di livellare le conoscenze e validare le scelte preliminari.
- *Setup infrastrutturale:* Configurazione degli strumenti di supporto (es. Typst, GitHub Actions) e definizione delle norme di collaborazione.

Tali attività, seppur essenziali per la partenza, *non vengono rendicontate* nel monte ore di progetto. La rendicontazione economica ufficiale decorre dalla data di inizio dello Sprint 1.

== Riepilogo degli Sprint

=== Sprint 1
*Periodo:* dal 19/12/2025 al 03/01/2026

==== Attività principali
Le attività svolte nel periodo di riferimento si sono focalizzate sul consolidamento della base metodologica e sull'analisi analitica dei requisiti:

- *Pianificazione e Standardizzazione:*
  - Stesura delle bozze iniziali dei documenti cardine: #def[Norme di Progetto], #def[Piano di Progetto] e #def[Piano di Qualifica];
  - Definizione di strutture templatizzate mediante l'uso di #def[Typst], finalizzate a ottimizzare l'efficienza di redazione e garantire la coerenza stilistica e strutturale della documentazione.

- *Analisi dei Requisiti:*
  - Attività intensiva di identificazione degli attori e modellazione sistematica dei casi d'uso primari e secondari.

- *Qualità e Metriche:*
  - Studio e selezione delle metriche di analisi per il #def[Piano di Qualifica];
  - Progettazione preliminare del cruscotto di valutazione per il monitoraggio degli indici di qualità di processo e di prodotto.

- *Gestione Operativa e Task Tracking:*
  - Configurazione dell'ambiente di lavoro e adozione di #def[Jira] come strumento di gestione per la rendicontazione puntuale delle task svolte dai singoli componenti del team, garantendo la tracciabilità dell'impegno profuso.
#TODO("Verificare che i conti siano giusti a livello di monte ore")
==== Prospetto consumo tempo (Preventivo)
#sprint_table(
  (
    ([Basso Kevin], 0, 3, 7, 0, 0, 2),
    ([Berengan Riccardo], 0, 4, 0, 0, 0, 2),
    ([Martinello Riccardo], 0, 4, 0, 0, 0, 0),
    ([Sandu Antonio], 0, 4, 0, 0, 0, 2),
    ([Sgreva Andrea], 0, 4, 0, 0, 0, 2),
    ([Suar Alberto], 6, 5, 8, 0, 0, 2),
    ([Zago Alice], 0, 4, 0, 0, 0, 2),
  ),
  [Prospetto orario preventivato per lo Sprint 1 (Totale: 61 ore)],
)

==== Consumo tempo e costi effettivi (Consuntivo)
Si nota una flessione nel monte ore totale dovuta alla pausa natalizia. Alcune attività di verifica sono slittate allo sprint successivo.

#sprint_table(
  (
    ([Basso Kevin], 0, 4, 5, 0, 0, 2),
    ([Berengan Riccardo], 0, 4, 0, 0, 0, 1),
    ([Martinello Riccardo], 0, 3, 0, 0, 0, 0),
    ([Sandu Antonio], 0, 4, 0, 0, 0, 1),
    ([Sgreva Andrea], 0, 4, 0, 0, 0, 1),
    ([Suar Alberto], 6, 5, 6, 0, 0, 2),
    ([Zago Alice], 0, 4, 0, 0, 0, 1),
  ),
  [Consuntivo orario effettivo per lo Sprint 1 (Totale: 53 ore)],
)

#TODO("Aggiungere sottosezione - Rischi Rilevati")
==== Analisi degli scostamenti
In questo sprint sono state consumate *53 ore* a fronte delle *61 ore* preventivate (Delta: *-8 ore*).
Il ritardo è fisiologico (periodo festivo). Le ore non lavorate sono state ripianificate nello Sprint 2 per il completamento dei documenti.

==== Retrospettiva dello Sprint 1

===== Valutazione del periodo
Il team esprime una generale soddisfazione per l'andamento del primo Sprint. L'organizzazione del lavoro ha beneficiato in modo determinante dell'adozione di #def[Jira] per il tracciamento delle attività: lo strumento si è rivelato fondamentale non solo per la distribuzione dei carichi di lavoro, ma anche per la precisione della rendicontazione oraria, permettendo una visibilità chiara del contributo di ogni singolo componente.

===== Analisi delle attività e dei documenti
- *Analisi dei Requisiti:* Rappresenta l'area di maggior sforzo profuso. Come evidenziato dalla mole oraria riportata nel consuntivo, il documento ha richiesto numerose iterazioni di riscrittura. Tale impegno è stato necessario per convergere verso uno standard qualitativo e formale in linea con le aspettative del docente cardine, garantendo una solida base per le approvazioni future.
- *Stato dei Documenti:* Mentre l'Analisi è in fase avanzata, il *Piano di Progetto*, il *Piano di Qualifica* e le *Norme di Progetto* hanno raggiunto uno stadio embrionale soddisfacente. Tuttavia, si riconosce la necessità di un considerevole lavoro di raffinamento e completamento nei prossimi cicli.
- *Gestione del Glossario:* Si segnala positivamente la partecipazione attiva di tutto il gruppo all'aggiornamento costante del Glossario, integrato fluidamente in ogni sessione lavorativa.

===== Relazioni esterne e dinamiche di team
- *Comunicazione con l'Azienda:* Il rapporto con il referente esterno è proattivo e costruttivo. La fornitura puntuale di materiale di consultazione e i suggerimenti tecnici ricevuti hanno agevolato significativamente le scelte iniziali di progetto.
- *Andamento del Team:* Il clima interno rimane positivo, ma l'analisi del consuntivo evidenzia un *divario significativo nel rendimento individuale*. Alcuni membri si sono distinti per un impegno orario e un contributo tecnico di rilievo, mentre altri hanno mantenuto un profilo più conservativo, limitandosi a interventi marginali. Questo aspetto richiederà una riflessione interna per bilanciare meglio le responsabilità nello Sprint successivo.

#v(10pt)
#block(
  fill: luma(245),
  inset: 10pt,
  radius: 4pt,
  stroke: luma(200),
)[
  *Punto di attenzione:* La disparità oraria registrata deve essere monitorata per evitare colli di bottiglia e garantire che la conoscenza del dominio sia distribuita equamente tra tutti i componenti del gruppo.
]
#pagebreak()

=== Sprint 2
*Periodo:* dal 03/01/2026 al 17/01/2026

==== Informazioni generali
Focus sul consolidamento della documentazione (versione per RTB) e accelerazione sull'Analisi dei Requisiti.
Attività principali:
- *Piano di Progetto:* Arricchimento sezione Rischi e conformità IEEE 1058.
- *Analisi dei Requisiti:* Allocazione massiva risorse (5 membri) per definizione UC e Requisiti.
- *Incontri:* Meeting con Prof. Cardin e VarGroup per validazione direzione.

==== Prospetto consumo tempo (Preventivo)
#TODO("questa frase sinceramente non mi piace molto (anche se l'ho scritta io :D) ~Suar .Anche qui, controllare gli orari")
Pianificazione aggressiva per recuperare il delta dello Sprint 1.

#sprint_table(
  (
    // Formato: ("Nome", Resp, Amm, Anal, Prog, Cod, Ver)
    ([Basso Kevin], 0, 3, 0, 0, 0, 2),
    ([Berengan Riccardo], 0, 1, 5, 0, 0, 2),
    ([Martinello Riccardo], 0, 1, 5, 0, 0, 0),
    ([Sandu Antonio], 0, 1, 6, 0, 0, 2),
    ([Sgreva Andrea], 0, 1, 4, 0, 0, 2),
    ([Suar Alberto], 0, 5, 0, 0, 3, 4),
    ([Zago Alice], 6, 2, 5, 0, 3, 2),
  ),
  [Prospetto orario preventivato per lo Sprint 2 (Totale: 72 ore)],
)

==== Consumo tempo e costi effettivi (Consuntivo)
Le attività di analisi hanno richiesto più tempo del previsto, assorbendo parte delle ore di verifica.

#sprint_table(
  (
    // Formato: ("Nome", Resp, Amm, Anal, Prog, Cod, Ver)
    ([Basso Kevin], 0, 4, 0, 0, 0, 1),
    ([Berengan Riccardo], 0, 1, 4, 0, 0, 1),
    ([Martinello Riccardo], 0, 1, 4, 0, 0, 0),
    ([Sandu Antonio], 0, 1, 3, 0, 0, 1),
    ([Sgreva Andrea], 0, 1, 1, 0, 0, 2),
    ([Suar Alberto], 0, 5, 0, 0, 0, 4),
    ([Zago Alice], 6, 2, 5, 0, 0, 1),
  ),
  [Consuntivo orario effettivo per lo Sprint 2 (Totale: 72 ore)],
)

==== Retrospettiva dello Sprint 2

===== Stato di avanzamento dei deliverable
Al termine del secondo Sprint, il progetto presenta un andamento dicotomico tra la gestione documentale e l'analisi tecnica:

- *Documentazione di Gestione e Qualità:* Il #def[Piano di Progetto] (PdP), il #def[Piano di Qualifica] (PdQ) e le #def[Norme di Progetto] (NdP) sono in una fase ottimale. Ad esclusione dei diagrammi del PdQ e della pianificazione dello Sprint 3, i documenti sono considerati ufficiali e pronti per la revisione #def[RTB].
- *Analisi dei Requisiti (AdR):* Il documento è stato oggetto di modifiche strutturalmente deboli e superficiali. Nonostante l'allocazione della maggioranza delle risorse (5 membri su 7), il risultato è giudicato insufficiente, causando un rallentamento critico che ha comportato il posticipo del #def[PoC] allo Sprint 3.

===== Rapporti esterni e attività di allineamento
- *Allineamento Aziendale:* L'incontro con il proponente ha confermato la validità della direzione intrapresa. Gli interventi di notevole calibro suggeriti dall'azienda sono stati accolti con favore e hanno fornito spunti essenziali per l'evoluzione del prodotto.
- *Consultazione Accademica:* Il ricevimento con il docente #members.cardin ha permesso di chiarire le ambiguità metodologiche relative all'AdR. Tali chiarimenti rendono le successive carenze del team ancora meno giustificabili sotto il profilo professionale.

===== Analisi delle criticità interne e provvedimenti
In corrispondenza del verbale di fine Sprint, si è reso necessario un incontro di confronto interno volto ad analizzare le gravi inefficienze operative emerse:

- *Qualità dell'apporto individuale:* È stata riscontrata una gestione dell'AdR "penosa" e priva di rigore. Le modifiche apportate sono risultate non strutturate, prive di riferimenti alle Norme di Progetto e prive di una reale utilità nel contesto della revisione imminente.
- *Gestione del conflitto e rendimento:* È stato affrontato formalmente il tema del *mancato rispetto professionale* verso i membri del team che hanno sostenuto carichi di lavoro eccedenti per compensare le inerzie altrui. Il divario di rendimento tra chi ha operato proattivamente e chi si è limitato a interventi superficiali è stato messo a verbale come rischio primario per la stabilità del gruppo.
- *Giustificazioni:* Durante la sessione, è stata richiesta una giustificazione esplicita per lo scarso rendimento. Il team ha stabilito che ogni attività futura non conforme agli standard definiti o priva di valore aggiunto non sarà conteggiata nel consuntivo orario.

===== Obiettivi di recupero per lo Sprint 3
L'obiettivo primario del prossimo ciclo sarà il recupero del ritardo accumulato sul #def[PoC] e la stabilizzazione definitiva dell'AdR. Non saranno tollerate ulteriori deviazioni metodologiche o contributi che non rispettino l'equità dello sforzo collettivo.

== Sprint 3
*Periodo:* dal 17/01/2026 al 31/01/2026

==== Informazioni generali e attività da svolgere
In questo secondo sprint, ...
Le attività principali hanno riguardato:
- *Piano di Progetto (PdP):*
- *Norme di Progetto (NdP):*
- *Piano di Qualifica (PdQ):*
- *Analisi dei Requisiti (AdR):*
- *Glossario:*
- *Proof of Concept (PoC):*
#pagebreak()
== Sprint 3
*Periodo:* dal 17/01/2026 al 31/01/2026

==== Informazioni generali e attività da svolgere
In questo secondo sprint, ...
Le attività principali hanno riguardato:
- *Piano di Progetto (PdP):*
- *Norme di Progetto (NdP):*
- *Piano di Qualifica (PdQ):*
- *Analisi dei Requisiti (AdR):*
- *Glossario:*
- *Proof of Concept (PoC):*
#pagebreak()
==== Prospetto consumo tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.

#sprint_table(
  (
    ([Basso Kevin], 7, 0, 0, 0, 4, 0),
    ([Berengan Riccardo], 0, 0, 2, 0, 4, 0),
    ([Martinello Riccardo], 0, 1, 2, 0, 0, 4),
    ([Sandu Antonio], 0, 0, 5, 0, 0, 0),
    ([Sgreva Andrea], 0, 0, 4, 0, 0, 0),
    ([Suar Alberto], 0, 1, 2, 0, 4, 0),
    ([Zago Alice], 0, 1, 3, 0, 0, 4),
  ),
  [Prospetto orario preventivato per lo Sprint 3],
)


==== Consumo tempo e costi effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate.

#sprint_table(
  (
    // Formato: ("Nome", Resp, Amm, Anal, Prog, Cod, Ver)
    ([Basso Kevin], 0, 0, 0, 0, 0, 0),
    ([Berengan Riccardo], 0, 0, 0, 0, 0, 0),
    ([Martinello Riccardo], 0, 0, 0, 0, 0, 0),
    ([Sandu Antonio], 0, 0, 0, 0, 0, 0),
    ([Sgreva Andrea], 0, 0, 0, 0, 0, 0),
    ([Suar Alberto], 0, 0, 0, 0, 0, 0),
    ([Zago Alice], 0, 0, 0, 0, 0, 0),
  ),
  [Consuntivo orario effettivo per lo Sprint 3],
)

==== Analisi degli scostamenti e Risorse Rimanenti
In questo sprint sono state consumate *XX ore* a fronte delle *YY ore* preventivate (Delta: ...).
// NOTA: Aggiorna i totali qui sopra in base alla somma delle tabelle (ora ci sono molti zeri nel consuntivo che mi hai passato)
Il budget economico risparmiato viene reimmesso nel monte ore totale per le fasi successive.

==== Retrospettiva
+ *Cosa ha funzionato:*
+ *Criticità:*
+ *Azioni Correttive:*
#TODO("Aggiungerei anche una retrospettiva di fine baseline")
