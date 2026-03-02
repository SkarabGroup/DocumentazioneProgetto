#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#let versione = "v0.7.1"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#set heading(numbering: "1.1.1")
#let history = (
  (
    "2026/02/01",
    "0.7.2",
    "Rielaborazione sezione introduzione, analisi dei rischi, preventivo e monitoraggio",
    members.suar,
  ),
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
Il presente documento descrive il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-progetto")[#def[Piano di Progetto]] relativo al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]], commissionato dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def[Var Group]] e realizzato dal gruppo di studenti #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

L’obiettivo del progetto è lo sviluppo di una piattaforma ad #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] per l’#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e la #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] automatizzata delle vulnerabilità presenti nei repository di codice sorgente, in conformità a quanto specificato nel #link(<capitolato>)[#underline[capitolato *C2*]].
La piattaforma mira a supportare l’analisi statica del codice e l’individuazione di criticità di sicurezza, fornendo indicazioni di correzione mediante meccanismi automatizzati basati su modelli di linguaggio (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Finalità del Documento
Il Piano di Progetto definisce l’impostazione gestionale e operativa del progetto, specificando le attività previste, la pianificazione temporale, le risorse coinvolte e le modalità di controllo dell’avanzamento.

Il documento costituisce il riferimento primario per il gruppo di lavoro e per gli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#stakeholder")[#def[stakeholder]], perseguendo i seguenti obiettivi:
- identificare, analizzare e gestire i rischi tecnici e organizzativi lungo l’intero #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#ciclo-di-vita-del-software")[#def[ciclo di vita del software]];
- definire la pianificazione temporale delle attività (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#schedulazione")[#def[schedulazione]]) e le principali scadenze progettuali (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#milestone")[#def[milestone]]);
- stimare i costi e allocare in modo coerente le risorse umane;
- monitorare l’avanzamento del progetto mediante il confronto sistematico tra preventivo e consuntivo al termine di ogni #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sprint")[#def[sprint]].

== Prodotti Attesi
I prodotti del progetto vengono rilasciati in modo incrementale in corrispondenza di due principali #def[baseline]: la *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requirements-and-technology-baseline")[#def[Requirements and Technology Baseline]]* (RTB) e la *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#product-baseline")[#def[Product Baseline]]* (PB).

=== Revisione dei Requisiti e della Tecnologia (RTB)
Il gruppo ha fissato come obiettivo per la candidatura alla revisione RTB la data del *09/02/2026*.
Entro tale scadenza, verranno rilasciati e sottoposti a verifica i seguenti artefatti:
- *Documentazione di Baseline*:
  - Analisi dei Requisiti (versione consolidata);
  - Piano di Progetto (pianificazione di dettaglio fino alla RTB e pianificazione di alto livello fino alla PB);
  - Piano di Qualifica e Norme di Progetto (versioni approvate per l’avvio dello sviluppo);
  - Glossario.
- *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#proof-of-concept")[#def[Proof of Concept]] (PoC)*: prototipo software funzionante, focalizzato sulle funzionalità critiche del sistema, in particolare sui meccanismi di comunicazione tra agenti e LLM, finalizzato a dimostrare la fattibilità tecnica della soluzione.
- *Verbali*: documentazione tracciata delle decisioni e delle riunioni interne ed esterne rilevanti ai fini progettuali.

=== Revisione di Accettazione (Product Baseline – PB)
Il rilascio finale del progetto, corrispondente alla Product Baseline, è pianificato per la data ultima del *21/03/2026*.
La pianificazione è coerente con quanto preventivato nella #link("https://skarabgroup.github.io/DocumentazioneProgetto/candidatura/Proposta_di_Candidatura.pdf")[*Proposta di Candidatura*] al capitolato.
Entro tale termine, il gruppo fornirà:
- *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#minimum-viable-product")[#def[Minimum Viable Product]] (MVP)*: versione completa e funzionante del sistema, conforme ai requisiti funzionali e qualitativi approvati;
- *Codice Sorgente*: intero codebase documentato e versionato nel repository ufficiale del progetto;
- *Manualistica*:
  - *Manuale Utente*: guida all’utilizzo della piattaforma;
  - *Manuale Amministratore*: guida all’installazione, configurazione e manutenzione del sistema;
- *Documentazione Finale*: versioni definitive ed approvate di tutti i documenti normativi, gestionali e di supporto;
- *Consuntivo Finale*: analisi conclusiva di costi, tempi e qualità, comprensiva degli scostamenti rispetto al preventivo.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite sottolineatura*, qualora *non sia esplicitamente indicato come collegamento a un documento o a una sezione specifica*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario]].


== Riferimenti

=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione del Piano di Progetto e per lo svolgimento delle attività progettuali:

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> #linebreak()
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *31/01/2026*)

- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. #linebreak()
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")] \
  (versione: *v1.0.0*)

=== Riferimenti Informativi
- *Dispense del corso di Ingegneria del Software relative ai Processi di Ciclo di Vita del Software*. #linebreak()
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T02.pdf")] \
  (ultimo accesso: *31/01/2026*)

- *Dispense del corso di Ingegneria del Software relative alla Gestione di Progetto*.    #linebreak()
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf")] \
  (ultimo accesso: *31/01/2026*)
- *Standard IEEE 1058-1998*: Standard for Software Project Management Plans. #linebreak()
  #underline[#link("https://ieeexplore.ieee.org/document/25325")] \
  (ultimo accesso: *31/01/2026*)

Le motivazioni e le modalità di applicazione dello standard IEEE 1058-1998 sono descritte in dettaglio nel documento *Norme di Progetto*, al quale si rimanda per gli aspetti metodologici e per la descrizione del grado di aderenza adottato.


#pagebreak()
= Analisi dei Rischi
L’attività di gestione dei rischi è un processo iterativo, continuo e proattivo, finalizzato a supportare il conseguimento degli obiettivi del progetto *Code Guardian*.
Essa comprende l’identificazione, l’analisi, la pianificazione delle risposte e il monitoraggio degli eventi avversi che potrebbero compromettere il rispetto dei vincoli di *tempo*, *costo* e *qualità* del prodotto software.

Il processo di gestione dei rischi viene eseguito:
- all’avvio di ogni sprint;
- in corrispondenza delle principali baseline;
- in occasione di variazioni significative di requisiti, architettura o risorse.

Ciò consente al #def[team di progetto] di adattare tempestivamente le strategie di mitigazione in funzione dell’evoluzione del contesto progettuale.

I rischi individuati vengono raggruppati in macro-categorie omogenee (tecnologiche, interpersonali e organizzative) al fine di facilitarne l’analisi e l’assegnazione delle responsabilità.

Le modalità operative e i criteri metodologici adottati per l’analisi e la valutazione dei rischi sono definiti nel documento *Norme di Progetto*, al quale si rimanda per la descrizione dettagliata del processo di di gestione dei rischi.

=== RCO3: Rischio Collettivo Organizzativo legato a ritardi o incomprensioni nella comunicazione con la proponente
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr),
    inset: 10pt,
    table.header(
      [*Tipologia Dato*],
      [*Valore*],
    ),

    [*Codice*],
    [RCO3],
    [*Nome*], 
    [Ritardi o incomprensioni nella comunicazione con la proponente],
    [*Descrizione*], 
    [Possibili ritardi nelle risposte da parte di #def[Var Group] o interpretazioni errate dei feedback forniti durante le sessioni di mentoring. Questo potrebbe portare a sviluppare funzionalità non in linea con le aspettative della proponente.],
    [*Mitigazione*], 
    [Programmazione di incontri periodici fissi e redazione di verbali (verbali esterni) dopo ogni incontro per formalizzare quanto deciso. Uso di canali di comunicazione diretti (#def[Slack]) per chiarimenti rapidi. In caso di dubbi sull'interpretazione dei feedback, il gruppo si impegnerà a richiedere chiarimenti tempestivi alla proponente per evitare incomprensioni. Nel caso in cui la proponente non risponda entro tempi ragionevoli il gruppo contattera il Prof. Vardanega per consigli su come procedere.],
    [*Probabilità di avvenimento*],
    [Media],
    [*Pericolosità delle ripercussioni*],
    [Media],
  ),
  caption: [Informazioni sul rischio RCO3],
)

=== RCO4: Rischio Collettivo Organizzativo legato alla disomogeneità nella produzione della documentazione
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr),
    inset: 10pt,
    table.header(
      [*Tipologia Dato*],
      [*Valore*],
    ),

    [*Codice*],
    [RCO4],
    [*Nome*], 
    [Disomogeneità nella produzione della documentazione],
    [*Descrizione*], 
    [Dato che i membri del team hanno stili di scrittura diversi, i documenti (#def[Piano di Progetto], #def[Norme di Progetto], ecc.) potrebbero risultare frammentati, poco coerenti o con terminologie discordanti. Questo potrebbe compromettere la chiarezza e la professionalità della documentazione consegnata.],
    [*Mitigazione*], 
    [Definizione rigorosa dei template riguardante l'aspetto visivo, l'impaginazione e la formattazione del testo. Ogni documento deve passare per una fase di verifica incrociata, un membro diverso dal redattore controlla il lavoro, prima di essere considerato definitivo. Inoltre, viene stabilito un glossario condiviso per uniformare la terminologia tecnica utilizzata nei documenti.],
    [*Probabilità di avvenimento*],
    [Media],
    [*Pericolosità delle ripercussioni*],
    [Medio-Bassa],
  ),
  caption: [Informazioni sul rischio RCO4],
)

#pagebreak()

== Rischi Tecnologici (RT)
Questa categoria raggruppa le criticità derivanti dalla natura innovativa dello stack tecnologico. L’adozione di architetture a sistemi multi-agente e l’integrazione con LLM comportano un’intrinseca incertezza, dovuta alla natura non deterministica dei modelli e alla ripida curva di apprendimento.

=== RT1: Inesperienza con Tecnologie IA <RT1>
#schedaRischio(
  "RT1",
  "Inesperienza con lo sviluppo di sistemi basati su IA",
  [Il team non ha esperienza pregressa nello sviluppo di applicazioni che integrano sistemi di IA generativa e orchestrazione multi-agente. Tale gap può tradursi in stime temporali imprecise e in ostacoli tecnici non previsti, con impatto diretto sulle milestone.],
  [Il percorso accademico non copre ancora in modo sistematico tecnologie generative, pattern di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agent-orchestration")[#def[agent orchestration]] e buone pratiche di valutazione dell’output. La distanza tra conoscenze teoriche e competenze operative aumenta la probabilità di iterazioni e rework.],
  [Formazione interna continuativa e condivisione delle conoscenze tra i membri. Sviluppo di prototipi mirati e incrementali per validare singole funzionalità prima dell’integrazione nel sistema.],
  [Riduzione della complessità architetturale e dell’autonomia degli agenti, privilegiando flussi di lavoro più deterministici e controllabili. Riprogettazione delle parti più critiche con obiettivi tecnici ridimensionati.],
  "Alta",
  "Alto",
)

=== RT2: Errata Selezione delle Tecnologie <RT2>
#schedaRischio(
  "RT2",
  "Scelta di strumenti inadeguati o immaturi",
  [Il team potrebbe selezionare librerie, framework o servizi non idonei ai requisiti del progetto o difficili da integrare in modo stabile. Una scelta errata può generare ritardi e vincoli tecnici che limitano la realizzazione dell’MVP.],
  [La rapida evoluzione del panorama IA e l’assenza di standard tecnologici consolidati comportano l’adozione di strumenti ancora instabili, soggetti a modifiche incompatibili nel tempo. In assenza di esperienza pregressa, il team può non intercettare tempestivamente tali discontinuità evolutive, con conseguente difficoltà nel valutare ex ante affidabilità, manutenibilità e compatibilità delle tecnologie selezionate.],
  [Fase di ricerca tecnologica con prototipazione comparativa e criteri di selezione espliciti. Progettazione modulare per isolare le dipendenze e ridurre l’impatto di un eventuale cambio di tecnologia.],
  [Sostituzione del componente individuato come inadeguato e migrazione controllata. Introduzione di soluzioni temporanee o accettazione di debito tecnico limitato e tracciato.],
  "Media",
  "Alto",
)

=== RT3: Complessità nella Modellazione dei Flussi Decisionali <RT3>
#schedaRischio(
  "RT3",
  "Progettazione inefficace dei meccanismi decisionali degli agenti",
  [Una modellazione non corretta dei flussi decisionali può portare il sistema a percorsi di esecuzione non convergenti, a condizioni di stallo o a risultati incoerenti rispetto agli obiettivi funzionali. Ciò riduce l’affidabilità delle funzionalità centrali e compromette la prevedibilità del comportamento del sistema.],
  [La progettazione di sistemi multi-agente introduce una complessità intrinseca legata alla coordinazione tra componenti autonomi, alla gestione dello stato e alla definizione di criteri di terminazione. L’assenza di esperienza specifica in tali modelli aumenta la probabilità di strutture decisionali incomplete o ambigue.],
  [Adozione di modelli di orchestrazione e schemi decisionali consolidati in letteratura. Formalizzazione esplicita dei flussi tramite diagrammi e revisione tecnica condivisa prima dell’implementazione. Definizione preventiva di guardrail, criteri di arresto e condizioni di fallback.],
  [Riduzione del grado di autonomia decisionale degli agenti e riconduzione del sistema a pipeline deterministiche a stati finiti. Riprogettazione dei flussi privilegiando la stabilità e la verificabilità del comportamento rispetto alla complessità funzionale, con focus sull’MVP.],
  "Alta",
  "Medio",
)

=== RT4: Affidabilità dell’IA <RT4>
#schedaRischio(
  "RT4",
  "Generazione di contenuti errati o fuorvianti",
  [Il sistema potrebbe produrre suggerimenti formalmente plausibili ma logicamente errati o basati su vulnerabilità inesistenti (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#allucinazione")[#def[Allucinazione]]). Questo riduce l’utilità del prodotto e può indurre l’utente ad applicare modifiche superflue o dannose.],
  [Gli LLM generano output probabilistici senza una reale comprensione semantica del contesto e del codice. La difficoltà nel discriminare output corretti da quelli errati, soprattutto in casi complessi, aumenta il rischio di risultati inaffidabili.],
  [Utilizzo di tecniche di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#prompt-engineering")[#def[Prompt Engineering]] avanzate e contestualizzate. Integrazione di strumenti di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-statica")[#def[Analisi Statica]] come meccanismo deterministico di validazione prima della presentazione all’utente.],
  [Adozione di un modello #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#human-in-the-loop")[#def[Human-in-the-loop]]: il sistema viene utilizzato come supporto decisionale e non come auto-remediation. L’applicazione delle modifiche resta vincolata a supervisione e conferma umana.],
  "Alta",
  "Medio",
)

=== RT5: Costi e Limiti di Utilizzo <RT5>
#schedaRischio(
  "RT5",
  "Saturazione del budget o blocco delle API",
  [L’uso di LLM in architettura multi-agente può generare un volume elevato di chiamate, con saturazione dei crediti o blocchi per rate limit. Ciò può rallentare o interrompere sviluppo e test, impattando direttamente la consegna dell’MVP.],
  [La mancata ottimizzazione dei flussi può produrre chiamate ridondanti o ricorsive, con consumo anomalo di risorse in tempi brevi. L’inesperienza nel dimensionamento di prompt e cicli agentivi amplifica il rischio di costi non controllati.],
  [Caching e deduplicazione delle richieste, oltre a limiti applicativi su numero di chiamate e profondità dei loop. Monitoraggio dei costi con dashboard e preferenza per modelli economici durante lo sviluppo.],
  [Migrazione verso modelli open source eseguiti localmente o riduzione della componente LLM in fase di test. Rimodulazione delle funzionalità LLM per ridurre il numero di chiamate.],
  "Alta",
  "Medio",
)

=== RT6: Riservatezza dei Dati <RT6>
#schedaRischio(
  "RT6",
  "Esposizione involontaria di informazioni riservate",
  [L’invio di porzioni di codice a servizi esterni potrebbe esporre segreti industriali, logiche proprietarie o informazioni sensibili del proponente. Un incidente di riservatezza comprometterebbe la conformità agli accordi e la fiducia verso il prodotto.],
  [Le policy dei provider IA possono prevedere trattamenti dei dati complessi e non immediati da interpretare. Errori di configurazione o scarsa consapevolezza delle clausole possono portare a un trasferimento dati non conforme.],
  [Sanitizzazione preventiva dei contenuti e rimozione di riferimenti sensibili prima dell’invio. Configurazione esplicita delle opzioni di data retention e divieto di riutilizzo per training ove disponibile.],
  [Blocco del trasferimento dati verso l’esterno e utilizzo esclusivo di modelli locali. Revisione del flusso per minimizzare o eliminare del tutto l’invio di codice ai servizi remoti.],
  "Bassa",
  "Alto",
)

=== RT7: Gestione dell’Infrastruttura <RT7>
#schedaRischio(
  "RT7",
  "Incongruenze tra ambiente di sviluppo e produzione",
  [Differenze di configurazione tra i dispositivi dei membri e l’ambiente di esecuzione finale possono causare bug e malfunzionamenti rilevati solo in fase avanzata. Questo aumenta il rischio di instabilità dell’MVP in prossimità del rilascio.],
  [La mancanza di competenze #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#devops")[#def[DevOps]] dedicate rende più probabili errori di configurazione, dipendenze non dichiarate o divergenze tra versioni. L’assenza di un ambiente riproducibile accentua l’effetto “works on my machine”.],
  [Standardizzazione tramite #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#containerizzazione")[#def[containerizzazione]] (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#docker")[#def[Docker]]) e definizione di procedure di setup riproducibili. Automazione dei controlli di build e dei test su #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#continuous-integration")[#def[pipeline CI]].],
  [Esecuzione del sistema in un ambiente locale controllato e replicabile, documentato e condiviso con il proponente. Riduzione delle dipendenze dall’infrastruttura cloud fino alla stabilizzazione.],
  "Media",
  "Medio",
)

=== RT8: Integrazione dei Sottosistemi <RT8>
#schedaRischio(
  "RT8",
  "Disallineamento delle interfacce di comunicazione",
  [Interfacce incoerenti tra frontend, backend e moduli IA possono causare errori di integrazione e perdita di coerenza funzionale. Il sistema rischia di diventare frammentato e inutilizzabile nonostante i singoli componenti funzionino isolatamente.],
  [Lo sviluppo parallelo e la mancanza di un controllo rigoroso sui contratti API favoriscono incompatibilità che emergono tardi. Versionamenti non sincronizzati e modifiche non comunicate amplificano i problemi di integrazione.],
  [Definizione formale delle API e versionamento esplicito dei contratti. Introduzione di test di integrazione automatici eseguiti ad ogni merge sul repository.],
  [Sprint di stabilizzazione dedicato alla risoluzione dei conflitti e all’allineamento delle interfacce. Congelamento temporaneo delle nuove feature fino al ripristino della coerenza end-to-end.],
  "Media",
  "Alto",
)

=== RT9: Sicurezza Ambiente di Analisi <RT9>
#schedaRischio(
  "RT9",
  "Esecuzione di codice arbitrario non sicuro",
  [L’analisi dinamica potrebbe richiedere l’esecuzione di codice fornito dall’utente, potenzialmente malevolo (malware, exploit, script dannosi). Un’esecuzione non isolata può compromettere la macchina ospite e la rete dell’ambiente di sviluppo.],
  [Processi eseguiti con privilegi eccessivi o senza isolamento possono accedere a filesystem, rete o risorse di sistema. La complessità dell’isolamento e la mancanza di hardening aumentano il rischio di vulnerabilità operative.],
  [Esecuzione in sandbox effimere con isolamento di rete e privilegi minimi, distrutte al termine dell’analisi. Policy restrittive su filesystem e limiti di risorse (CPU/RAM/tempo).],
  [Disabilitazione della componente di analisi dinamica, limitando il sistema alla sola analisi statica. Rimodulazione dei requisiti per garantire sicurezza e continuità di consegna dell’MVP.],
  "Bassa",
  "Alto",
)

#pagebreak()
== Rischi Interpersonali (RI)
Questa categoria analizza le criticità legate alle risorse umane. Essendo il team composto da studenti con impegni paralleli, la gestione della disponibilità e della comunicazione rappresenta un fattore critico.

=== RI1: Impegni Accademici Concorrenti <RI1>
#schedaRischio(
  "RI1",
  "Sovrapposizione con esami e lavoro",
  [Nei periodi di sessione d’esame o in presenza di impegni lavorativi, la capacità produttiva del team può ridursi in modo significativo. Questo può generare ritardi nei task critici e compromettere la regolarità della consegna incrementale.],
  [La disponibilità dei membri è variabile e soggetta a picchi prevedibili ma difficili da quantificare con precisione. La sovrapposizione di più indisponibilità nello stesso sprint amplifica il rischio di slittamenti.],
  [Pianificazione con buffer nelle settimane a rischio e calendario condiviso delle indisponibilità aggiornato con cadenza regolare. Prioritizzazione dei task critici in anticipo rispetto ai periodi di carico accademico.],
  [Ridistribuzione dei task ad alta priorità sui membri disponibili e ricorso al #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#pair-programming")[#def[Pair Programming]] per accelerare il completamento. Riduzione temporanea dello scope dello sprint per preservare qualità e milestone.],
  "Alta", // P=3
  "Medio", // I=2 -> R=6 (Alto)
)

=== RI2: Assenza prolungata (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#bus-factor")[#def[Bus Factor]]) <RI2>
#schedaRischio(
  "RI2",
  "Indisponibilità improvvisa di un membro",
  [Un membro potrebbe diventare indisponibile per un periodo prolungato a causa di motivi personali o di salute. L’assenza può rallentare attività chiave se la conoscenza è concentrata o se il ruolo era critico.],
  [Eventi di forza maggiore sono intrinsecamente imprevedibili e non mitigabili in prevenzione assoluta. La concentrazione di competenze su un singolo componente riduce la resilienza organizzativa (bus factor basso).],
  [Condivisione continua della conoscenza per evitare silos e mantenere Bus Factor > 1. Documentazione aggiornata e rotazione delle responsabilità sui componenti critici.],
  [Riassegnazione immediata delle attività e riallineamento del piano di sprint. Definizione di un piano di reinserimento graduale al rientro, supportato dal team.],
  "Bassa", // P=1
  "Alto", // I=3 -> R=3 (Basso/Monitoraggio)
)

=== RI3: Ritiro dal progetto <RI3>
#schedaRischio(
  "RI3",
  "Abbandono definitivo di un membro",
  [Un membro potrebbe ritirarsi definitivamente dal progetto o dal corso, riducendo la capacità produttiva complessiva. La perdita può richiedere la riallocazione dei ruoli e la revisione della pianificazione e dello scope.],
  [Decisioni personali, carichi di studio non sostenibili o imprevisti possono portare all’abbandono. Se l’uscita coinvolge competenze specialistiche, l’impatto sul piano di lavoro aumenta.],
  [Monitoraggio del clima interno e prevenzione del burnout tramite distribuzione equilibrata del carico. Rotazione dei ruoli e documentazione per rendere trasferibili le responsabilità.],
  [Riorganizzazione delle attività e rinegoziazione dello scope con il proponente, privilegiando l’MVP e posticipando funzionalità opzionali. Consolidamento delle aree critiche e riduzione delle iniziative non essenziali.],
  "Bassa", // P=1
  "Alto", // I=3 -> R=3 (Basso/Monitoraggio)
)

=== RI4: Conflitti e attriti interni <RI4>
#schedaRischio(
  "RI4",
  "Comunicazione inefficace e stallo decisionale",
  [Divergenze su scelte tecniche o scarsa partecipazione possono generare una fase di conflitto (“#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#storming")[#def[Storming]]”) che rallenta le decisioni e blocca il lavoro. Il rischio si manifesta con aumento di attriti, ritardi e qualità decisionale ridotta.],
  [Il team è composto da pari senza gerarchia imposta, e la comunicazione asincrona può favorire fraintendimenti. L’assenza di un processo decisionale chiaro rende più probabili stalli su scelte architetturali o di priorità.],
  [Meeting regolari di allineamento e regole di comunicazione esplicite. Processo decisionale codificato: in caso di stallo tecnico, la decisione viene presa dal Responsabile sulla base delle alternative discusse.],
  [Intervento del Responsabile come mediatore e, se necessario, riunione straordinaria per chiudere la decisione. Escalation al docente solo se il conflitto compromette in modo concreto il progresso del progetto.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RI5: Skill Gap e Disomogeneità <RI5>
#schedaRischio(
  "RI5",
  "Sbilanciamento produttivo tra membri",
  [Un divario significativo di competenze può portare a sovraccarico dei membri più esperti e a demotivazione dei meno esperti. Ciò riduce la produttività complessiva e aumenta il rischio di ritardi e rework.],
  [Background eterogenei e diverse velocità di apprendimento generano una distribuzione non uniforme dei contributi. Se i task complessi restano sempre sugli stessi membri, il rischio di dipendenza e burnout aumenta.],
  [Pair Programming sistematico (esperto + junior) e code review incrociata obbligatoria per favorire trasferimento di competenze. Pianificazione dei task con rotazione controllata delle aree tecniche.],
  [Assegnazione graduata dei task: complessi agli esperti e di supporto/testing ai meno esperti, mantenendo però un percorso di crescita. Riallocazione delle attività in caso di colli di bottiglia persistenti.],
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
  [Stime eccessivamente ottimistiche possono produrre ritardi a cascata sul #def[Gantt] e sulle scadenze di sprint e milestone. Il rischio compromette la capacità di consegnare incrementi completi e verificabili entro i tempi previsti.],
  [L’inesperienza su tecnologie LLM e bias cognitivi come #def[Optimism Bias] portano a sottovalutare incertezze e rework. La scarsa scomposizione delle attività rende più difficile intercettare deviazioni in anticipo.],
  [Stime a tre punti per i task critici e scomposizione granulare delle attività per ridurre l’incertezza. Riesame delle stime in sprint planning usando dati di consuntivo degli sprint precedenti.],
  [Resource leveling e riallocazione delle risorse dalle attività non critiche. Riduzione dello scope privilegiando l’MVP e posticipando requisiti opzionali.],
  "Alta", // P=3
  "Alto", // I=3 -> R=9 (Critico)
)

=== RCO2: Scope Creep <RCO2>
#schedaRischio(
  "RCO2",
  "Instabilità dei requisiti e "+ link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#gold-plating")[#def[Gold Plating]],
  [La tendenza ad aggiungere funzionalità non richieste o a modificare continuamente i requisiti può compromettere tempi e qualità. Lo scope creep riduce la prevedibilità del piano e mette a rischio la consegna dell’MVP entro la baseline.],
  [Perfezionismo tecnico, entusiasmo progettuale o ambiguità iniziali possono portare a introdurre work non pianificato. In assenza di un processo di change management, le variazioni si accumulano senza valutazione d’impatto.],
  [Congelamento dei requisiti dopo Analisi e gestione delle modifiche tramite Change Request con valutazione d’impatto. Prioritizzazione basata su valore e vincoli di milestone, con tracciamento esplicito delle decisioni.],
  [Rifiuto delle modifiche non bloccanti e negoziazione “swap” per mantenere costante il carico di lavoro. Se necessario, ripianificazione dello sprint con taglio delle feature opzionali.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RCO3: Sforamento Budget Orario <RCO3>
#schedaRischio(
  "RCO3",
  "Esaurimento ore preventivate per ruolo",
  [Il consuntivo delle ore potrebbe superare il preventivo, erodendo il budget residuo per i ruoli e riducendo la capacità di completare le attività pianificate. Lo sforamento aumenta la probabilità di tagli tardivi o compressione delle verifiche.],
  [Inefficienze produttive, rework dovuto a qualità iniziale insufficiente o stime errate possono accumularsi sprint dopo sprint. Se il monitoraggio è sporadico, lo scostamento viene individuato troppo tardi per intervenire in modo efficace.],
  [Monitoraggio settimanale tramite dashboard ore e revisione degli scostamenti in Sprint Review. Analisi delle cause di rework e azioni correttive su processi, criteri di done e qualità.],
  [Riallocazione delle ore risparmiate da altri ruoli e riduzione della complessità tecnica delle soluzioni. Rimodulazione dello scope privilegiando l’MVP e riducendo attività non essenziali.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RCO4: Latenza Stakeholder <RCO4>
#schedaRischio(
  "RCO4",
  "Ritardi nel feedback dal Proponente",
  [Ritardi nelle risposte del proponente su dubbi bloccanti o validazioni possono rallentare decisioni tecniche e avanzamento dei task critici. L’incertezza decisionale può generare rework se il team procede senza allineamento.],
  [Le priorità aziendali possono prevalere sul progetto didattico, riducendo la disponibilità per revisioni tempestive. Canali informali o richieste non strutturate aumentano i tempi di risposta e la probabilità di incomprensioni.],
  [Programmazione di meeting periodici fissi e produzione tempestiva di verbali che consolidano decisioni e azioni. Predisposizione di richieste puntuali con opzioni alternative e impatto stimato.],
  [Sollecito formale e applicazione di una procedura di “Assunzione di Responsabilità”: se non arriva risposta entro 2/3 giorni, il team procede con la soluzione più coerente con requisiti e vincoli. Eventuale riallineamento successivo con gestione controllata del rework.],
  "Media", // P=2
  "Medio", // I=2 -> R=4 (Medio)
)

=== RCO5: Incoerenza Documentale <RCO5>
#schedaRischio(
  "RCO5",
  "Documentazione frammentata o non conforme",
  [Disomogeneità stilistica, terminologica o strutturale tra documenti può ridurre leggibilità e aumentare ambiguità interpretative. Incoerenze tra versioni possono inoltre generare non conformità alle norme interne e alle aspettative di revisione.],
  [La redazione parallela da parte di più autori, senza controlli sistematici, porta facilmente a divergenze di formato e contenuto. Cambiamenti non propagati e uso non uniforme del glossario accentuano la frammentazione.],
  [Uso di template #def[Typst] vincolanti e glossario centralizzato come riferimento terminologico. Ruolo di Verificatore distinto dal Redattore e checklist di conformità applicata a ogni rilascio.],
  [Armonizzazione finale (“One Voice”): revisione globale effettuata da un singolo editor prima del rilascio. Correzione delle incoerenze e riallineamento dei riferimenti incrociati tra documenti.],
  "Media", // P=2
  "Basso", // I=1 -> R=2 (Basso)
)
#pagebreak()

= Pianificazione del Ciclo di Vita
In questa sezione viene descritta la schedulazione delle attività di progetto, necessaria per garantire il rispetto delle scadenze e la corretta allocazione delle risorse.

Il ciclo di vita del progetto è scandito da due milestone principali, in corrispondenza delle quali vengono stabilite le seguenti baseline:

1. *Requirements and Technology Baseline (#def[RTB]):* baseline iniziale, stabilita al termine della milestone di revisione, che sancisce il consolidamento dei requisiti, della documentazione normativa e la validazione tecnologica tramite Proof of Concept.

2. *Product Baseline (#def[PB]):* baseline finale, stabilita al termine della milestone di accettazione, che certifica il completamento del prodotto MVP, l’esecuzione dei test di sistema e il rilascio finale.

== Pianificazione a Breve Termine (Verso la RTB)
Questa fase copre il periodo dall'avvio del progetto fino al colloquio per la RTB.
L'obiettivo è duplice:
1. *Documentale:* Formalizzare requisiti, processi e pianificazione.
2. *Tecnologico:* Mitigare i rischi tecnici critici, a probabilità ed impatto elevati, tramite lo sviluppo del Proof of Concept.

=== Calendario degli Sprint (Fase RTB)
La fase è suddivisa in 4 iterazioni (*Sprint*). Le date sono state definite tenendo conto della pausa natalizia e della sessione d'esami invernale.

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
    [*Sprint 3*], [17/01/2026], [31/01/2026],
    [*Sprint 4*], [31/01/2026], [06/02/2026],
    // Esteso per coprire finitura PoC
  ),
  caption: [Calendario degli Sprint pianificati per la fase RTB],
)

#TODO("Vedi tu Kevin se questo pezzo conviene tenerlo o rimuoverlo dal momento che metti le task atomiche di quello che bisogna fare nelle retrospettive.")
=== Dettaglio delle Attività
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

== Pianificazione a Lungo Termine (Verso la PB)
Superata la RTB, il progetto entrerà nella fase operativa volta al raggiungimento della *Product Baseline*.
La pianificazione di dettaglio (date e sprint) sarà formalizzata nel *Piano di Progetto v2.0.0*. Nonostante ciò, la strategia di sviluppo è già strutturata in 4 macro-fasi:

*1. Consolidamento Architetturale (Post-PoC)*

Transizione dallo sviluppo sperimentale alla progettazione ingegneristica.
- *Obiettivo:* Definire i blueprint definitivi del sistema basandosi sulle lezioni apprese dal PoC.
- *Attività:* Analisi critica del prototipo, Technical Design (UML Classi/Sequenza), progettazione schema dati e setup CI/CD definitivo.

*2. Sviluppo Core (MVP)*

Realizzazione del nucleo funzionale essenziale.
- *Obiettivo:* Rilascio di un ambiente controllato e testabile che soddisfi i requisiti obbligatori.
- *Attività:* Modulo di analisi statica, integrazione Agenti-LLM, implementazione sandboxing per la sicurezza (#link(<RT9>)[#underline[RT9]]).

*3. Estensione e Ottimizzazione*

Sviluppo funzionalità avanzate e UI finale.
- *Obiettivo:* Copertura requisiti desiderabili e UX.
- *Attività:* Modulo di Remediation automatica, Frontend (Dashboard), ottimizzazione costi API (#def[Caching] - #link(<RT5>)[#underline[RT5]]).

*4. Validazione e Rilascio*

Fase dedicata alla Quality Assurance e alla consegna.
- *Obiettivo:* Conformità totale ai requisiti e stabilità.
- *Attività:* System Test intensivi, User Acceptance Test (UAT) con il proponente, Manualistica finale e chiusura metriche di qualità.

#pagebreak()
= Preventivo e Allocazione delle Risorse

In questa sezione viene presentato il preventivo consolidato dei costi e la pianificazione dell’allocazione delle risorse umane.
Il preventivo è stato elaborato tenendo conto dei vincoli di budget e della scadenza finale di progetto fissata per il *21/03/2026*.

== Evoluzione del Preventivo rispetto alla Candidatura
Durante la candidatura per il capitolato C2, il gruppo ha formalizzato una prima stima economica tramite il documento *Preventivo costi ed impegno orario*, basata su una valutazione preliminare dei carichi di lavoro.

L’analisi approfondita dei requisiti normativi e l’avvio delle attività operative hanno tuttavia evidenziato la necessità di un *ribilanciamento strategico delle risorse*.
In particolare, l’impegno richiesto per la gestione dell’infrastruttura documentale, la verifica dei processi e la manutenzione degli artefatti è risultato inizialmente sottostimato. Parallelamente, l’utilizzo di strumenti moderni di supporto allo sviluppo e la realizzazione anticipata del Proof of Concept hanno consentito un’ottimizzazione delle attività puramente tecniche.

Le principali variazioni rispetto alla stima iniziale sono:
- *Incremento Amministratore (+5 ore pro-capite):* da 8h a *13h*, necessario per garantire il rigore nella redazione delle Norme di Progetto, del Piano di Qualifica e nella gestione del flusso documentale.
- *Ottimizzazione Responsabile (-2 ore pro-capite):* da 9h a *7h*, ottenuta grazie a processi decisionali più snelli e a una riduzione degli overhead organizzativi.
- *Rimodulazione dei ruoli tecnici (-3 ore pro-capite):* le ore di Analista sono state assestate a *12h*, quelle di Progettista a *17h* e quelle di Programmatore a *20h*, trasferendo il budget risparmiato verso le attività di controllo e verifica.

Tale riallocazione ha comportato una riduzione del costo complessivo, passato dai € 12.845,00 stimati in candidatura agli attuali *€ 12.670,00*.

== Preventivo Totale Consolidato
Il gruppo di progetto è composto da *7 membri*.  
Ciascun componente si impegna a rendicontare un monte ore produttivo pari a *90 ore*, per un totale complessivo di *630 ore*.

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
    [Analista], [25 €/h], [84], [€ 2.100,00],
    [Progettista], [25 €/h], [119], [€ 2.975,00],
    [Programmatore], [15 €/h], [140], [€ 2.100,00],
    [Verificatore], [15 €/h], [147], [€ 2.205,00],

    table.cell(colspan: 2, fill: luma(240))[*Totale*],
    table.cell(fill: luma(240))[*630*],
    table.cell(fill: luma(240))[*€ 12.670,00*],
  ),
  caption: [Distribuzione complessiva delle ore e dei costi per ruolo],
)

== Preventivo per il Periodo verso la RTB
Il periodo iniziale del progetto, orientato al raggiungimento della RTB, richiede un investimento rilevante nelle attività di analisi, strutturazione dei processi e verifica documentale.

Per questo motivo, oltre il *60%* del monte ore complessivo del ruolo di *Amministratore* viene allocato in questo intervallo, al fine di garantire la solidità delle Norme di Progetto e del Piano di Qualifica, supportate da un intenso lavoro di Analisi.

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore Allocate (RTB)],
      text(fill: white, weight: "bold")[Costo Parziale],
    ),

    [Responsabile], [21], [€ 420,00],
    [Amministratore], [56], [€ 1.120,00],
    [Analista], [63], [€ 1.575,00],
    [Progettista], [14], [€ 350,00],
    [Programmatore], [21], [€ 315,00],
    [Verificatore], [42], [€ 630,00],

    table.cell(fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*210*],
    table.cell(fill: luma(240))[*€ 4.410,00*],
  ),
  caption: [Allocazione delle risorse nel periodo verso la RTB],
)

== Stima per il Periodo verso la Product Baseline (PB)
Il budget residuo è orientato alle attività di sviluppo, integrazione e verifica del prodotto.
In questo intervallo, le ore di *Amministratore* sono ridotte alla manutenzione della documentazione, mentre aumentano significativamente le ore di *Progettazione* e *Programmazione* necessarie alla realizzazione del MVP.

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

    [Responsabile], [28], [€ 1.050,00],
    [Amministratore], [35], [€ 700,00],
    [Analista], [21], [€ 525,00],
    [Progettista], [105], [€ 2.625,00],
    [Programmatore], [119], [€ 1.785,00],
    [Verificatore], [105], [€ 1.575,00],

    table.cell(fill: luma(240))[*Totale PB*],
    table.cell(fill: luma(240))[*420*],
    table.cell(fill: luma(240))[*€ 8.260,00*],
  ),
  caption: [Allocazione delle risorse nel periodo verso la PB],
)

== Ripartizione Oraria per Membro
La seguente matrice dettaglia la distribuzione delle ore per ciascun componente del team, garantendo il rispetto del principio di rotazione dei ruoli e un impegno complessivo uniforme.

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
      text(fill: white, size: 8pt, weight: "bold")[Analista],
      text(fill: white, size: 8pt, weight: "bold")[Progettista],
      text(fill: white, size: 8pt, weight: "bold")[Programmatore],
      text(fill: white, size: 8pt, weight: "bold")[Verificatore],
      text(fill: white, size: 9pt, weight: "bold")[Totale],
    ),

    [#members.kevin], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.berengan], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.martinello], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.antonio], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.andrea], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.suar], [7], [13], [12], [17], [20], [21], [*90*],
    [#members.alice], [7], [13], [12], [17], [20], [21], [*90*],

    table.cell(fill: luma(240), align: left)[*Totale Ore*],
    table.cell(fill: luma(240))[*49*],
    table.cell(fill: luma(240))[*91*],
    table.cell(fill: luma(240))[*84*],
    table.cell(fill: luma(240))[*119*],
    table.cell(fill: luma(240))[*140*],
    table.cell(fill: luma(240))[*147*],
    table.cell(fill: luma(240))[*630*],
  ),
  caption: [Matrice di ripartizione oraria per membro],
)


#pagebreak()
= Monitoraggio e Controllo: Preventivo e Consuntivo
In questa sezione viene rendicontato l'avanzamento effettivo del progetto attraverso il confronto sistematico tra quanto pianificato (*Preventivo*) e quanto realmente realizzato (*Consuntivo*). Tale attività avviene al termine di ogni sprint e permette di valutare la salute economica e temporale del progetto.
== Nota sulle Attività Preliminari (Periodo di Avviamento)
Le attività svolte antecedentemente alla data di avvio ufficiale del primo Sprint (19/12/2025) sono state classificate come *investimento interno* e *auto-formazione*.

In questa fase propedeutica ("Palestra"), il team ha dedicato una parte consistente delle risorse a:
- *Analisi critica dello stack tecnologico:* Studio approfondito delle tecnologie suggerite dal capitolato C2. I membri hanno redatto documenti di appunti pubblici e condivisi per analizzare le motivazioni tecniche della loro adozione e valutarne l'idoneità alla costruzione del progetto.
- *Allineamento tecnico:* Gli esiti di tali ricerche sono stati oggetto di discussione collegiale, tracciata nei *verbali interni*, permettendo al gruppo di livellare le conoscenze e validare le scelte preliminari.
- *Setup infrastrutturale:* Configurazione degli strumenti di supporto (es. Typst, GitHub Actions, Jira) e definizione delle norme di collaborazione.

Tali attività, seppur essenziali per la partenza, *non vengono rendicontate* nel monte ore di progetto. La rendicontazione economica ufficiale decorre dalla data di inizio dello Sprint 1.

== Riepilogo degli Sprint

=== Sprint 1
*Periodo:* dal 19/12/2025 al 03/01/2026

==== Attività Principali
Le attività svolte nel periodo di riferimento si sono focalizzate sul consolidamento della base metodologica e sull'analisi dei requisiti:

- *Pianificazione e Standardizzazione:*
  - Stesura delle bozze iniziali dei documenti cardine: #def[Norme di Progetto], #def[Piano di Progetto] e #def[Piano di Qualifica];
  - Definizione di strutture templatizzate mediante l'uso di Typst, finalizzate a ottimizzare l'efficienza di redazione e garantire la coerenza stilistica e strutturale della documentazione.

- *Analisi dei Requisiti:*
  - Attività intensiva di identificazione degli attori e modellazione sistematica dei casi d'uso primari e secondari.

- *Qualità e Metriche:*
  - Studio e selezione delle metriche di analisi per il Piano di Qualifica;
  - Progettazione preliminare del cruscotto di valutazione per il monitoraggio degli indici di qualità di processo e di prodotto.

- *Gestione Operativa e Task Tracking:*
  - Configurazione dell'ambiente di lavoro e adozione di Jira come strumento di gestione per la rendicontazione puntuale delle task svolte dai singoli componenti del team, garantendo la tracciabilità dell'impegno profuso.
==== Prospetto Consumo Tempo (Preventivo)
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

==== Consumo Tempo e Costi Effettivi (Consuntivo)
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

==== Retrospettiva dello Sprint 1
===== Valutazione del Periodo
Il primo Sprint ha registrato un andamento complessivamente positivo. Gli obiettivi principali di avvio del progetto sono stati raggiunti, nonostante una riduzione fisiologica dell’impegno orario dovuta al periodo festivo.
===== Stato di Avanzamento dei Deliverable
- *Documentazione di Gestione:* Le bozze iniziali del Piano di Progetto, delle Norme di Progetto e del Piano di Qualifica sono state redatte e strutturate secondo i template definiti.
- *Analisi dei Requisiti:* L’attività ha richiesto un impegno significativo e iterativo, portando a una versione preliminare solida ma ancora suscettibile di affinamenti.
- *Glossario:* Avviato correttamente e aggiornato in modo collaborativo dal team.
===== Relazioni Esterne con l’Azienda e Dinamiche del Team
- *Rapporti con l’Azienda:* La comunicazione con il proponente è risultata proattiva e costruttiva, con un supporto tecnico utile alle scelte iniziali.
- *Dinamiche del Team:* Il clima interno è stato positivo. Tuttavia, l’analisi del consuntivo ha evidenziato una distribuzione non uniforme dell’impegno orario, che richiede attenzione per evitare squilibri futuri.
===== Rischi Rilevati
Nel corso dello Sprint si sono manifestati i seguenti rischi già censiti:

- #link(<RI5>)[#underline[[RI5]]]: disomogeneità nel contributo individuale, evidenziata da una distribuzione non uniforme dell’impegno orario.
- #link(<RCO5>)[#underline[[RCO5]]]: rischio di incoerenza documentale nelle prime bozze, dovuto all’avvio parallelo della redazione dei documenti normativi.

Come azioni di mitigazione iniziali, il team ha avviato un monitoraggio più attento della distribuzione dei task e delle ore rendicontate e ha adottato template condivisi per garantire uniformità stilistica e strutturale della documentazione.

===== Obiettivi di Recupero per lo Sprint Successivo
Per lo Sprint 2 il team si pone i seguenti obiettivi:
- completare il consolidamento della documentazione avviata;
- rafforzare il coordinamento sulle attività di Analisi dei Requisiti;
- riequilibrare la distribuzione dei carichi di lavoro tra i membri.

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

==== Informazioni Generali
Focus sul consolidamento della documentazione (versione per RTB) e accelerazione sull'Analisi dei Requisiti.
Attività principali:
- *Piano di Progetto:* Arricchimento sezione Rischi e conformità IEEE 1058.
- *Analisi dei Requisiti:* Allocazione massiva risorse (5 membri) per definizione UC e Requisiti.
- *Incontri:* Meeting con Prof. Cardin e VarGroup per validazione direzione.

==== Prospetto Consumo Tempo (Preventivo)
#sprint_table(
  (
    // Formato: ("Nome", Resp, Amm, Anal, Prog, Cod, Ver)
    ([Basso Kevin], 0, 3, 0, 0, 3, 2),
    ([Berengan Riccardo], 0, 1, 5, 0, 0, 2),
    ([Martinello Riccardo], 0, 1, 5, 0, 0, 0),
    ([Sandu Antonio], 0, 1, 6, 0, 0, 2),
    ([Sgreva Andrea], 0, 1, 4, 0, 0, 2),
    ([Suar Alberto], 0, 5, 0, 0, 3, 2),
    ([Zago Alice], 6, 0, 5, 0, 0, 2),
  ),
  [Prospetto orario preventivato per lo Sprint 2 (Totale: 61 ore)],
)

==== Consumo Tempo e Costi Effettivi (Consuntivo)
#sprint_table(
  (
    // Formato: ("Nome", Resp, Amm, Anal, Prog, Cod, Ver)
    ([Basso Kevin], 0, 4, 0, 0, 0, 1),
    ([Berengan Riccardo], 0, 1, 4, 0, 0, 1),
    ([Martinello Riccardo], 0, 1, 4, 0, 0, 0),
    ([Sandu Antonio], 0, 1, 3, 0, 0, 1),
    ([Sgreva Andrea], 0, 1, 1, 0, 0, 2),
    ([Suar Alberto], 0, 5, 0, 0, 0, 2),
    ([Zago Alice], 6, 0, 5, 0, 0, 1),
  ),
  [Consuntivo orario effettivo per lo Sprint 2 (Totale: 44 ore)],
)

==== Retrospettiva dello Sprint 2

===== Valutazione del Periodo
Il secondo Sprint ha evidenziato un andamento complessivamente critico. Sebbene la documentazione di gestione abbia raggiunto un buon livello di maturità, le attività di Analisi dei Requisiti non hanno prodotto i risultati attesi rispetto all’impegno allocato.

===== Stato di Avanzamento dei Deliverable
- *Documentazione di Gestione e Qualità:* Il Piano di Progetto, il Piano di Qualifica e le Norme di Progetto sono in uno stato avanzato e pronti per la revisione RTB, ad eccezione di alcuni elementi di dettaglio.
- *Analisi dei Requisiti:* Il documento ha subito modifiche non pienamente efficaci, causando un rallentamento significativo e il posticipo dello sviluppo del Proof of Concept allo Sprint successivo.

===== Relazioni Esterne con l’Azienda e Dinamiche del Team
- *Rapporti con l’Azienda:* Il confronto con il proponente ha confermato la validità dell’impostazione progettuale e fornito indicazioni di valore per l’evoluzione del prodotto.
- *Consultazione Accademica:* L’incontro con il docente #members.cardin ha chiarito aspetti metodologici rilevanti per l’Analisi dei Requisiti, fornendo indicazioni utili per il recupero delle criticità emerse.
- *Dinamiche del Team:* Sono emerse difficoltà di coordinamento e una disomogeneità nella qualità dei contributi, che hanno inciso sull’efficacia complessiva dello Sprint.

===== Rischi Rilevati
Nel corso dello Sprint si sono concretizzati i seguenti rischi già censiti:
- #link(<RI1>)[#underline[[RI1]]]: riduzione della disponibilità operativa di alcuni membri, con impatto sulla capacità produttiva complessiva.
- #link(<RI4>)[#underline[[RI4]]]: difficoltà di coordinamento e comunicazione interna, che hanno rallentato il processo decisionale.
- #link(<RI5>)[#underline[[RI5]]]: disomogeneità nella qualità e nell’efficacia dei contributi, con impatto diretto sull’Analisi dei Requisiti.
- #link(<RCO5>)[#underline[[RCO5]]]: rischio di incoerenza documentale, emerso a seguito di modifiche non pienamente allineate agli standard definiti.

In risposta, sono state pianificate azioni correttive coerenti con i piani di contingenza definiti, tra cui una riallocazione più mirata delle responsabilità, il rafforzamento delle attività di revisione incrociata e un controllo più stringente sull’aderenza alle Norme di Progetto.


===== Obiettivi di Recupero per lo Sprint Successivo
Per lo Sprint 3 il team individua come prioritari i seguenti obiettivi:
- completare e stabilizzare definitivamente l’Analisi dei Requisiti;
- avviare e completare lo sviluppo del Proof of Concept;
- migliorare il coordinamento operativo e l’efficacia delle revisioni interne.


=== Sprint 3
*Periodo:* dal 17/01/2026 al 31/01/2026

==== Attività Principali
Le attività svolte nel periodo di riferimento si sono concentrate sulla chiusura e stabilizzazione degli artefatti normativi in vista della revisione RTB, nonché sull’avvio operativo del Proof of Concept.

In particolare, lo Sprint ha riguardato:

- *Piano di Progetto (PdP):*
  - completamento delle sezioni di Pianificazione, Analisi dei Rischi e Monitoraggio;
  - allineamento del documento agli standard IEEE 1058 e alle Norme di Progetto.

- *Norme di Progetto (NdP):*
  - consolidamento dei processi di gestione, verifica e versionamento;
  - definizione finale delle regole di collaborazione e controllo qualità.

- *Piano di Qualifica (PdQ):*
  - definizione completa delle metriche di processo e di prodotto;
  - formalizzazione delle strategie di verifica e validazione.

- *Analisi dei Requisiti (AdR):*
  - stabilizzazione del documento a seguito delle revisioni critiche emerse nello Sprint precedente;
  - rimozione di ambiguità e riallineamento ai vincoli del capitolato.

- *Glossario:*
  - completamento e normalizzazione delle voci;
  - verifica della coerenza terminologica trasversale ai documenti.

- *Proof of Concept (PoC):*
  - avvio dello sviluppo del prototipo;
  - implementazione delle componenti minime per validare la fattibilità tecnica delle interazioni Agente–LLM.


==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.

#sprint_table(
  (
    ([Basso Kevin], 7, 0, 0, 0, 4, 0),
    ([Berengan Riccardo], 0, 0, 2, 0, 4, 0),
    ([Martinello Riccardo], 0, 1, 0, 0, 0, 4),
    ([Sandu Antonio], 0, 0, 5, 0, 0, 0),
    ([Sgreva Andrea], 0, 0, 4, 0, 0, 0),
    ([Suar Alberto], 0, 1, 2, 0, 4, 0),
    ([Zago Alice], 0, 1, 3, 0, 0, 4),
  ),
  [Prospetto orario preventivato per lo Sprint 3],
)


==== Consumo Tempo e Costi Effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate.

#sprint_table(
  (
    // Formato: ("Nome", Resp, Amm, Anal, Prog, Cod, Ver)
    ([Basso Kevin], 7, 0, 0, 0, 4, 0),
    ([Berengan Riccardo], 0, 0, 2, 0, 4, 0),
    ([Martinello Riccardo], 0, 1, 0, 0, 0, 4),
    ([Sandu Antonio], 0, 0, 5, 0, 0, 0),
    ([Sgreva Andrea], 0, 0, 4, 0, 0, 0),
    ([Suar Alberto], 0, 1, 0, 0, 4, 0),
    ([Zago Alice], 0, 1, 3, 0, 0, 4),
  ),
  [Consuntivo orario effettivo per lo Sprint 3],
)

==== Retrospettiva dello Sprint 3

===== Valutazione del Periodo
Lo Sprint ha mostrato un andamento complessivamente controllato. Gli obiettivi di consolidamento documentale sono stati raggiunti e l’avvio del Proof of Concept è avvenuto in modo coerente con la pianificazione.

===== Stato di Avanzamento dei Deliverable
- *Documentazione Normativa:* PdP, NdP e PdQ risultano completi e allineati agli standard previsti per la revisione RTB.
- *Analisi dei Requisiti:* stabilizzata e pronta per la valutazione formale.
- *Proof of Concept:* avviato correttamente, con risultati preliminari utili alla validazione tecnologica.

===== Dinamiche del Team e Coordinamento
Il coordinamento interno è migliorato rispetto allo Sprint precedente. La distribuzione dei task è risultata più equilibrata e il processo di revisione ha beneficiato delle azioni correttive già introdotte.

===== Rischi Rilevati
Nel corso dello Sprint si sono manifestati i seguenti rischi già censiti:
- #link(<RI4>)[#underline[[RI4]]]: necessità di ulteriore allineamento su alcune scelte tecniche;
- #link(<RT3>)[#underline[[RT3]]]: complessità nella modellazione iniziale dei flussi decisionali del PoC.

Le azioni di mitigazione pianificate sono state applicate tempestivamente, limitando l’impatto sui deliverable.

===== Obiettivi per lo Sprint Successivo
Per lo Sprint successivo il team si pone i seguenti obiettivi prioritari:
- completare il Proof of Concept in vista della revisione RTB;
- rifinire eventuali osservazioni emerse in fase di pre-review;
- preparare il materiale per la presentazione di revisione.