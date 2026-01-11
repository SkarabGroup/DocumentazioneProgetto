#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#let versione = "v0.6.1"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#let history = (
  (
    "2026/01/11",
    "0.6.1",
    "Rielaborazione sezione di pianificazione a breve a lungo termine. Rielaborazione sezione di monitoraggio preventivo/consuntivo",
    members.suar
  ),
  (
    "2026/01/10",
    "0.6.0",
    "Sezione di introduzione ai rischi. Rielaborazione rischi RT, RI e RCO e aggiunti rischi RT5, RT6, RT7, RT8, RT9, RI4, RI5.",
    members.suar
  ),
  (
    "2026/01/05",
    "0.5.2",
    "Revisione sezione Introduzione del documento e aggiunta nuovi termini in Glossario",
    members.suar
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
    members.antonio
  ),
  (
    "2025/12/31", 
    "0.4.0", 
    "Completata pianificazione a lungo termine e a breve termine per RTB", 
    members.antonio,
    members.andrea
  ),
  (
    "2025/12/27", 
    "0.3.0", 
    "Iniziata pianificazione a lungo termine e a breve termine per RTB, lievi modifiche all'introduzione", 
    members.antonio,
    members.andrea
  ),  
  (
    "2025/12/27", 
    "0.2.0", 
    "Aggiunta dei rischi RT1, RT2, RI1, RI2, RCO1 e RCO2", 
    members.andrea,
    members.antonio
  ),
  (
    "2025/12/24", 
    "0.1.0", 
    "Inizio stesura documento, introduzione, scopo, glossario, introduzione analisi rischi", 
    members.andrea,
    members.antonio
  ),
  (
    "2025/12/23", 
    "0.0.0", 
    "Creazione documento", 
    members.andrea,
    members.antonio
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
Il presente documento fa riferimento al progetto #def[Code Guardian], commissionato dall'azienda #def[Var Group] e realizzato dal gruppo di studenti #def[Skarab Group] presso l'Università degli Studi di Padova.
L'obiettivo del progetto è lo sviluppo di una piattaforma ad agenti per l'#def[audit] e la #def[remediation] automatizzata delle vulnerabilità nei #def[repository] software, come dettagliato nel capitolato C2.

== Finalità del documento
Il #def[Piano di Progetto] è il documento che definisce la strategia di #def[pianificazione] e le attività operative necessarie per lo sviluppo del #def[Sistema software] nel contesto del progetto di #def[Ingegneria del Software]. 
Questo documento rappresenta lo strumento di riferimento per il #def[gruppo di lavoro] e per gli #def[Stakeholder], finalizzato a:
- L'identificazione e la #def[Gestione Rischi] (tecnici e organizzativi) che potrebbero manifestarsi durante il #def[Ciclo di vita del software];
- La #def[schedulazione] delle attività e il rispetto delle scadenze (#def[Milestone]);
- La #def[stima] dei costi e l'allocazione delle #def[Risorse umane];
- Il #def[monitoraggio] e controllo tramite il confronto tra #def[preventivo] e #def[consuntivo] al termine di ogni #def[Sprint].
Data la natura dinamica del progetto e l'adozione di un modello di sviluppo #def[Agile], una pianificazione dettagliata a lungo termine (#def[Big Design Up Front]) risulterebbe inefficace. 
Il documento adotterà pertanto un approccio #def[incrementale] e adattivo: i contenuti verranno aggiornati periodicamente (pianificazione *rolling wave*) in risposta all'evoluzione dei requisiti e ai feedback ricevuti.

== Prodotti attesi
I prodotti del progetto vengono rilasciati in modo incrementale in corrispondenza delle due principali scadenze di revisione (#def[Milestone]) previste dal ciclo di vita.

=== Revisione dei Requisiti e della Tecnologia (RTB)
Entro questa milestone, il gruppo fornirà:
- *Documentazione preliminare*:
  - Analisi dei Requisiti (comprendente studio di fattibilità e scelte tecnologiche);
  - Piano di Progetto (pianificazione di dettaglio RTB e macro-pianificazione PB);
  - Piano di Qualifica e Norme di Progetto (prime stesure);
  - Glossario.
- *Proof of Concept (#def[PoC])*: Un prototipo software funzionante, limitato alle funzionalità critiche, volto a dimostrare la fattibilità tecnica della soluzione (in particolare l'uso degli #def[Agenti] e delle API #def[LLM]).
- *Verbali*: Registro delle riunioni interne ed esterne svolte fino a tale data.

=== Revisione di Accettazione (Product Baseline - PB)
Entro il termine del progetto, il gruppo fornirà il rilascio finale comprendente:
- *Prodotto Software (#def[MVP])*: La versione del sistema completa e funzionante, conforme ai requisiti funzionali e qualitativi concordati nel capitolato e raffinati nell'Analisi dei Requisiti.
- *Codice Sorgente*: L'intero codebase documentato e versionato sul #def[repository] ufficiale.
- *Manuali*:
  - *Manuale Utente*: Guida all'utilizzo della piattaforma;
  - *Manuale Amministratore*: Guida all'installazione, configurazione e manutenzione del sistema.
- *Documentazione Consolidata*: Versioni finali e approvate di tutti i documenti normativi e di gestione (Analisi, PdP, PdQ, NdP).
- *Consuntivo Finale*: Analisi post-mortem dei costi, dei tempi e della qualità del prodotto rispetto agli obiettivi iniziali.

== Glossario
Al fine di garantire la massima chiarezza espositiva e prevenire ambiguità, è stato redatto un documento esterno denominato #def[Glossario]. 
Tale strumento definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio adottati. Per facilitare la lettura, ogni occorrenza di un termine presente nel Glossario è contrassegnata nel testo con una sottolineatura o formattazione specifica.
La versione più recente del Glossario è disponibile al seguente indirizzo: #underline[https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html]

== Riferimenti
=== Riferimenti Normativi
- *#def[Norme di Progetto]*: Documento interno che definisce le regole, le convenzioni e gli standard di qualità e di processo adottati dal gruppo; #linebreak()
  #underline[link_norme_di_progetto] //modificare quando il documento viene caricato in repo ed è accessibile dal sito web
- *Standard IEEE 1058-1998*: Standard for Software Project Management Plans. #linebreak()
  #underline[https://ieeexplore.ieee.org/document/25325]
=== Riferimenti Informativi
- *Capitolato C2*: Piattaforma ad agenti per l’#def[audit] e la #def[remediation] dei #def[repository] software #linebreak()
  #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf]
- *Dispense del corso di Ingegneria del Software - Gestione di progetto* #linebreak()
  #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf]

#pagebreak()
= Analisi dei Rischi
L'attività di gestione dei rischi è un processo iterativo e continuo, indispensabile per garantire il successo del progetto #def[Code Guardian]. Essa consiste nell'identificazione, analisi e pianificazione delle risposte agli eventi avversi che potrebbero impattare negativamente su tempi, costi o qualità del prodotto software.
Il processo di analisi viene ripetuto all'inizio di ogni #def[Sprint] e in corrispondenza delle principali #def[Milestone], permettendo al #def[gruppo di lavoro] di aggiornare le strategie di mitigazione in base all'evoluzione del progetto.

== Metodologia di Analisi
Il gruppo adotta un approccio quantitativo per la valutazione dei rischi. Ogni rischio identificato viene classificato in base a due parametri fondamentali:
- *Probabilità di accadimento (P)*: La frequenza verosimile con cui l'evento potrebbe verificarsi.
- *Impatto (I)*: La gravità delle conseguenze sul progetto qualora l'evento si verificasse.
Il *Livello di Rischio (R)* è calcolato come il prodotto tra questi due fattori:
$ R = P times I $
I parametri $P$ e $I$ sono valutati su una scala intera da 1 a 3, secondo la seguente legenda:

#figure(
  table(
    columns: (auto, auto, 1fr),
    inset: 10pt,
    align: horizon,
    fill: (_, row) => if row == 0 { luma(230) } else { white },
    stroke: 0.5pt + luma(200),
    table.header([*Valore*], [*Livello*], [*Descrizione*]),
    
    [1], [Basso], [Evento improbabile o danno trascurabile, gestibile con le risorse ordinarie.],
    [2], [Medio], [Evento possibile o danno che richiede una ri-pianificazione parziale delle attività.],
    [3], [Alto], [Evento molto probabile o danno critico che potrebbe causare il fallimento di una milestone.],
  ),
  caption: [Scala di valutazione della Probabilità e dell'Impatto]
)

Sulla base del risultato $R$, i rischi vengono classificati per priorità di intervento:
- *Rischio Basso ($1-3$)*: Monitoraggio periodico, nessuna azione immediata richiesta.
- *Rischio Medio ($4-5$)*: Richiede un piano di mitigazione e un monitoraggio attento.
- *Rischio Alto ($6-9$)*: Priorità critica, richiede azioni preventive immediate e piani di contingenza pronti all'uso.

== Categorie di Rischio
Per facilitare l'analisi e l'assegnazione delle responsabilità, i rischi sono raggruppati in tre macro-categorie identificative:
- *RT (Rischi Tecnologici)*: Criticità legate alle tecnologie scelte (es. #def[LLM], #def[Agenti]), agli strumenti di sviluppo e all'infrastruttura hardware/software.
- *RI (Rischi Interpersonali)*: Problematiche interne al #def[team di progetto], quali disponibilità dei membri, comunicazione e conflitti.
- *RCO (Rischi Costi e Organizzativi)*: Rischi derivanti da stime errate, pianificazione temporale (#def[schedulazione]) e vincoli esterni.

== Gestione e Monitoraggio dei Rischi

L'analisi dei rischi non rappresenta un'attività statica limitata alla fase di avvio, bensì un processo ciclico di controllo che accompagnerà l'intero ciclo di vita del progetto.

=== Procedura operativa
Il gruppo adotterà la seguente procedura formale nel caso in cui un rischio identificato dovesse manifestarsi o dovessero emergerne di nuovi non previsti:

+ *Rilevamento (Detection):*
  Ogni membro del team è tenuto a segnalare tempestivamente al *Responsabile di Progetto* l'insorgere di una problematica tecnica o organizzativa, oppure il superamento di una soglia di allarme (es. ritardo su un task superiore al 20%).

+ *Registrazione:*
  L'evento viene tracciato formalmente nel *Verbale Interno* della riunione più vicina. Se il rischio comporta modifiche operative immediate, viene aperto o aggiornato il relativo ticket sulla piattaforma di gestione (#def[GitHub] Project).

+ *Attivazione della Contingenza:*
  Il Responsabile, valutata la criticità, attiva la strategia di mitigazione o il piano di contingenza definito nelle schede di rischio (es. riallocazione delle risorse, riduzione dello scopo opzionale).

+ *Rendicontazione (Consuntivo):*
  Al termine dello #def[Sprint] o della fase di progetto (es. #def[RTB]), l'accaduto viene documentato nella sezione *Consuntivi* del Piano di Progetto, analizzando:
  - L'impatto effettivo in termini di ore e costi (scostamento dal preventivo).
  - L'efficacia della contromisura adottata.
  - La necessità di aggiornare la probabilità di ricorrenza per il futuro.

+ *Aggiornamento del Piano:*
  Sulla base dell'esperienza maturata ("Lesson Learned"), il Registro dei Rischi viene revisionato: i rischi non più attuali vengono chiusi, le probabilità ricalibrate e i nuovi rischi emersi vengono catalogati.

#pagebreak()

== Rischi Tecnologici (RT)
Questa categoria raggruppa le criticità derivanti dalla natura tecnica e innovativa del progetto.
L'adozione di architetture basate su Sistemi Multiagente e l'integrazione con #def[LLM] (Large Language Models) comportano un elevato grado di incertezza, dovuto sia alla complessità intrinseca di questi strumenti sia alla curva di apprendimento necessaria per padroneggiarli.
In questa sezione vengono analizzati i rischi legati allo stack tecnologico, all'integrazione di componenti di terze parti (API) e all'infrastruttura di sviluppo.

=== RT1: Scarsa conoscenza delle tecnologie <RT1>
#schedaRischio(
  "RT1",
  "Scarsa conoscenza delle tecnologie",
  [Si potrebbe verificare una scarsa conoscenza delle tecnologie scelte (es. framework per #def[Agenti], librerie Python). Questo potrebbe portare a ritardi nello sviluppo, errori di implementazione o difficoltà nell'integrazione.],
  [Il progetto richiede l'uso di stack tecnologici (LangChain, LLM APIs, servizi AWS) mai affrontati nel percorso di studi universitario. La curva di apprendimento è ripida e richiede un cambio di paradigma rispetto alla programmazione classica.],
  [Suddivisione del lavoro per specializzazione (#def[T-shaped skills]). Studio individuale anticipato tramite documentazione ufficiale. Sfruttamento delle sessioni di formazione offerte da #def[Var Group].],
  [Riassegnazione delle risorse più esperte a supporto dei membri in difficoltà (#def[Pair Programming] intensivo). In casi critici, semplificazione dei requisiti tecnici non funzionali concordando una deroga con il proponente.],
  "Alta",
  "Medio-Alto"
)

=== RT2: Scelta errata delle tecnologie <RT2>
#schedaRischio(
  "RT2",
  "Scelta errata delle tecnologie",
  [Durante la fase di selezione delle tecnologie per il sistema ad agenti #def[Code Guardian], potrebbe essere effettuata una scelta non ottimale che non soddisfa appieno i requisiti del progetto. Questo potrebbe comportare difficoltà nell'implementazione, limitazioni funzionali o problemi di scalabilità in futuro.],
  [Il panorama delle tecnologie per #def[LLM] e Agenti è in rapidissima evoluzione e spesso carente di standard consolidati. L'inesperienza del team su questi strumenti specifici aumenta la difficoltà nel valutare i limiti reali delle soluzioni candidate.],
  [Effettuare una valutazione approfondita delle tecnologie disponibili tramite #def[PoC], considerando compatibilità e supporto della comunità. Mantenere flessibilità nel Piano di Progetto per consentire cambiamenti. Utilizzo del supporto di #def[Var Group] tramite i canali dedicati.],
  [Sostituzione tempestiva della tecnologia inadeguata con un'alternativa più matura o semplice, accettando un eventuale incremento dei tempi di sviluppo. Consultazione immediata con il proponente per individuare soluzioni di ripiego.],
  "Media",
  "Alto"
)

=== RT3: Scarsa conoscenza del dominio IA
#schedaRischio(
  "RT3",
  "Scarsa conoscenza del dominio e dell'IA generativa",
  [Le tematiche relative ai #def[LLM] e alle architetture multi-agente non sono state approfondite nel percorso accademico obbligatorio. La mancanza di basi teoriche solide sul reasoning degli agenti e sulla sicurezza del codice (#def[OWASP]) potrebbe rallentare la progettazione.],
  [Il curriculum accademico standard si concentra su ingegneria del software classica; le tecnologie di Generative AI sono troppo recenti per essere state assimilate nei corsi fondamentali, creando un gap di competenze "out-of-the-box".],
  [Organizzazione di sessioni di auto-formazione e knowledge sharing. I membri con maggiore esperienza in ambito IA agiranno da mentori. Partecipazione attiva alle sessioni di mentoring con #def[Var Group] per validare le scelte architetturali.],
  [Semplificazione dell'architettura: riduzione dell'autonomia degli agenti in favore di catene di esecuzione più lineari e prevedibili. Richiesta di supporto esterno mirato su specifici blocchi bloccanti.],
  "Alta",
  "Media"
)

=== RT4: Inaccuratezza Audit e Valutazione <RT4>
#schedaRischio(
  "RT4",
  "Inaccuratezza nell'audit e nella valutazione automatica",
  [Rischio che gli agenti producano #def[falsi positivi] o #def[falsi negativi], oppure che valutino come corretta una #def[remediation] che introduce nuovi bug, compromettendo la fiducia dell'utente.],
  [Natura probabilistica dei modelli di linguaggio, che possono "allucinare" o perdere il contesto su file di codice molto grandi o complessi, non avendo una comprensione semantica reale del flusso di esecuzione.],
  [Utilizzo di tool di analisi validati dalla comunità. Implementazione di un flusso che obbliga l'utente a revisionare ogni report (Human-in-the-loop). Test approfonditi con dataset di vulnerabilità note (es. benchmark di sicurezza).],
  [Integrazione di tool di analisi statica tradizionali (es. SonarQube, ESLint) come "secondo parere" deterministico per filtrare le allucinazioni dell'IA prima di mostrare i risultati all'utente.],
  "Media",
  "Alta"
)

=== RT5: Limitazioni infrastrutturali e Costi API <RT5>
#schedaRischio(
  "RT5",
  "Saturazione quote API e costi operativi",
  [L'uso intensivo di #def[LLM] durante lo sviluppo e il testing potrebbe portare al rapido esaurimento del budget messo a disposizione o al raggiungimento dei limiti di richieste per minuto (Rate Limiting) imposti dai provider.],
  [I modelli performanti (es. GPT-4) hanno costi per token elevati. Un'architettura multi-agente tende a generare un alto volume di traffico "chat" tra agenti, consumando risorse molto più velocemente di una chat singola.],
  [Implementazione rigorosa di sistemi di #def[caching] delle risposte per evitare chiamate ripetute. Monitoraggio costante dei consumi tramite dashboard. Utilizzo di modelli più economici o "locali" per le fasi di test massive.],
  [Passaggio temporaneo a modelli Open Source locali (es. tramite Ollama) per lo sviluppo, accettando un degrado delle performance intelligenti ma garantendo la continuità operativa a costo zero.],
  "Alta",
  "Media"
)

=== RT6: Privacy e Sicurezza dei dati <RT6>
#schedaRischio(
  "RT6",
  "Rischi di Privacy e Data Leakage",
  [L'invio di snippet di codice analizzato a servizi #def[LLM] esterni (es. OpenAI) potrebbe violare vincoli di riservatezza, specialmente se il repository analizzato contiene segreti o proprietà intellettuale sensibile.],
  [Le API pubbliche di servizi cloud, se non configurate in modalità "Enterprise", potrebbero utilizzare i dati inviati per il training dei modelli, esponendo potenzialmente il codice del cliente.],
  [Anonimizzazione dei dati prima dell'invio (rimozione di commenti sensibili, chiavi API hardcodate). Configurazione delle API con flag di "opt-out" per il training dei dati, ove disponibile.],
  [Implementazione di un avviso bloccante per l'utente che richiede consenso esplicito prima dell'invio. In caso di vincoli stringenti, supporto per l'esecuzione esclusiva su LLM locali on-premise.],
  "Bassa", // Ipoteticamente media
  "Alta"
)

=== RT7: Gestione infrastruttura Cloud <RT7>
#schedaRischio(
  "RT7",
  "Complessità e vincoli dell'infrastruttura Cloud",
  [Il deployment su ambiente Cloud (es. AWS) introduce complessità legate alla configurazione di rete, permessi e gestione delle risorse. Discrepanze tra l'ambiente locale e quello remoto o l'esaurimento delle quote di utilizzo (Free Tier) potrebbero bloccare le attività di rilascio.],
  [La gestione di infrastrutture distribuite richiede competenze DevOps specifiche spesso non consolidate nel team. L'ambiente di sviluppo locale tende a divergere da quello di produzione se non rigorosamente standardizzato.],
  [Adozione di standard di *virtualizzazione o containerizzazione* per garantire la parità tra gli ambienti. Implementazione di un monitoraggio attivo delle risorse consumate per prevenire il superamento dei budget.],
  [Predisposizione di una configurazione di "fallback" che permetta di eseguire una dimostrazione completa del sistema in locale, disaccoppiando il funzionamento dalla disponibilità dei servizi cloud.],
  "Media",
  "Alto"
)

=== RT8: Problemi di integrazione interna <RT8>
#schedaRischio(
  "RT8",
  "Disallineamento nell'integrazione dei sottosistemi",
  [L'unione delle diverse componenti (Frontend, Backend, Agenti) potrebbe rivelare incongruenze nello scambio dati, causando errori bloccanti nelle fasi avanzate del progetto.],
  [Lo sviluppo parallelo senza una governance rigorosa dei flussi dati porta a interpretazioni divergenti delle specifiche tra i membri del team, rendendo i moduli incompatibili tra loro.],
  [Definizione formale e condivisa dei *contratti di interfaccia* (API Contract) prima dell'inizio dello sviluppo. Adozione di pratiche di Integrazione Continua (CI) per verificare la compatibilità delle componenti ad ogni modifica.],
  [Pianificazione di sessioni di integrazione incrementale (evitando l'approccio "Big Bang" finale). Uso di simulatori (mock) per permettere lo sviluppo parallelo anche in assenza di componenti stabili.],
  "Alta",
  "Alto"
)

=== RT9: Sicurezza nell'analisi del codice <RT9>
#schedaRischio(
  "RT9",
  "Isolamento dei processi di analisi",
  [L'analisi automatizzata di repository terzi comporta il rischio di eseguire codice non verificato o malevolo all'interno dell'infrastruttura di progetto, compromettendo la sicurezza del sistema ospitante.],
  [Trattare codice sorgente sconosciuto ("untrusted input") richiede cautele superiori rispetto ai dati standard. L'esecuzione diretta sulla macchina host espone a vulnerabilità critiche.],
  [Implementazione di *ambienti di esecuzione effimeri e isolati* (Sandboxing) per ogni processo di analisi, garantendo che nessuna operazione possa persistere o intaccare il sistema operativo sottostante.],
  [Limitazione rigorosa delle capacità di esecuzione (es. blocco dell'accesso alla rete o al file system esterno) durante la fase di audit. Procedura di bonifica immediata dell'ambiente in caso di anomalia.],
  "Media",
  "Alto"
)

#pagebreak()
== Rischi Interpersonali (RI)
Questa categoria analizza le criticità legate alle risorse umane, alle dinamiche di gruppo e alla gestione dei carichi di lavoro. Essendo il team composto da studenti con impegni paralleli, la gestione della disponibilità e della comunicazione rappresenta un fattore critico per il successo del progetto.

=== RI1: Impegni personali <RI1>
#schedaRischio(
  "RI1",
  "Impegni personali e accademici",
  [Un membro del team potrebbe dover affrontare impegni personali (esami universitari, lavoro part-time) che limitano il tempo e l'energia disponibili. Questo potrebbe influire sulla capacità del gruppo di rispettare le scadenze pianificate.],
  [La natura studentesca del team comporta la sovrapposizione delle attività di progetto con sessioni d'esame e scadenze di altri corsi, riducendo la disponibilità lavorativa in periodi specifici.],
  [Comunicazione tempestiva delle indisponibilità tramite calendario condiviso. Pianificazione delle attività con margini di tolleranza ("Slack") per assorbire i cali di produttività fisiologici.],
  [Ridistribuzione dinamica dei task critici sui membri più liberi. Ricorso al #def[Pair Programming] per accelerare il completamento delle funzionalità in ritardo senza sacrificare la qualità.],
  "Media",
  "Alto"
)

=== RI2: Avvenimenti personali gravi <RI2>
#schedaRischio(
  "RI2",
  "Avvenimenti personali gravi",
  [Un membro del team potrebbe dover affrontare problemi di salute o situazioni familiari critiche che impediscono il contributo al progetto per un periodo prolungato o indefinito.],
  [Eventi di forza maggiore imprevedibili che colpiscono la sfera privata dei membri del team.],
  [Promozione di un ambiente di supporto e trasparenza che incoraggi la comunicazione tempestiva delle difficoltà. Adozione di pratiche di condivisione della conoscenza (es. documentazione continua) per evitare che l'assenza di un singolo blocchi il lavoro altrui.],
  [Riassegnazione immediata delle responsabilità del membro assente. Al suo rientro, pianificazione di un reinserimento graduale supportato dagli altri componenti, senza accumulare debito di lavoro eccessivo.],
  "Bassa",
  "Alto"
)

=== RI3: Ritiro dal progetto <RI3>
#schedaRischio(
  "RI3",
  "Ritiro di un membro dal progetto",
  [Un membro potrebbe ritirarsi formalmente dal progetto o dal corso di studi. Questo causerebbe una perdita secca di risorse umane (capacità produttiva) e di conoscenza tacita acquisita.],
  [Valutazioni personali sulla sostenibilità del carico di studio, perdita di interesse o cause di forza maggiore che portano all'abbandono definitivo.],
  [Monitoraggio costante del clima interno e del carico di lavoro per prevenire situazioni di burnout. Rotazione dei ruoli per garantire che nessun modulo software sia compreso da una sola persona (#def[Bus Factor]).],
  [Riorganizzazione immediata del team. Avvio di un confronto formale con il proponente per concordare una riduzione dello scopo del progetto (rimozione funzionalità opzionali) proporzionale alla forza lavoro residua.],
  "Bassa",
  "Alto"
)

=== RI4: Conflitti interni e comunicazione inefficace <RI4>

#schedaRischio(
  "RI4",
  "Attriti decisionali e incomprensioni comunicative",
  [Divergenze di opinioni su scelte architetturali, ambiguità nell'assegnazione dei task o scarsa partecipazione alle riunioni possono generare un clima teso ("Storming phase"), bloccando il processo decisionale e riducendo la produttività.],
  [Il team è composto da pari (senza una gerarchia aziendale imposta) con background diversi. L'uso predominante di comunicazione asincrona (chat) favorisce i fraintendimenti rispetto al confronto in presenza.],
  [Istituzione di regole chiare di "Netiquette" e processi decisionali definiti (es. in caso di stallo decide il Responsabile o si vota). Stand-up meeting regolari per allineare tutti sugli obiettivi giornalieri.],
  [Intervento del Responsabile di Progetto come mediatore super partes. Se il conflitto è tecnico e irrisolvibile internamente, escalation verso il Proponente o il Professore per un parere autorevole esterno.],
  "Media",
  "Medio"
)

=== RI5: Disomogeneità produttiva e Skill Gap <RI5>

#schedaRischio(
  "RI5",
  "Sbilanciamento del carico di lavoro",
  [Potrebbe crearsi un divario significativo tra membri più produttivi e membri in difficoltà tecnica. Questo porta al sovraccarico dei primi (rischio burnout) e alla demotivazione dei secondi, che non riescono a contribuire efficacemente.],
  [Differenze pregresse nelle competenze tecniche (es. chi conosce già Python vs chi no) e diverse velocità di apprendimento individuali.],
  [Monitoraggio costante delle ore produttive tramite Dashboard di progetto. Adozione sistematica del #def[Pair Programming] affiancando un membro esperto a uno meno esperto per favorire il travaso di conoscenze.],
  [Ribilanciamento dei task: assegnazione di compiti più complessi ai membri esperti e task di documentazione/testing o moduli più semplici ai membri in difficoltà, garantendo comunque che tutti partecipino al codice (requisito didattico).],
  "Alta",
  "Medio"
)

#pagebreak()
== Rischi dei Costi ed Organizzativi (RCO)
Questa categoria raggruppa le criticità legate alla pianificazione temporale, alla gestione delle risorse (ore-persona), al rapporto con gli stakeholder esterni e alla produzione della documentazione. Sono rischi che impattano direttamente sull'efficienza del processo produttivo e sul rispetto delle scadenze.

=== RCO1: Sottostima e pianificazione <RCO1>
#schedaRischio(
  "RCO1",
  "Sottostima delle attività e dei tempi",
  [Le stime temporali per il completamento delle attività potrebbero rivelarsi ottimistiche, portando a ritardi a cascata sul cronoprogramma (Gantt). Spesso si tende a sottostimare la complessità di task apparentemente semplici.],
  [Mancanza di metriche storiche sulla produttività del team e inesperienza nella valutazione di task complessi legati alle tecnologie #def[LLM]. Bias cognitivo di ottimismo (#def[Optimism Bias]).],
  [Scomposizione dei task complessi in attività granulari per stime più precise. Adozione della pianificazione "Rolling Wave" (dettaglio alto solo per il breve periodo). Obbligo di segnalazione tempestiva ("Early Warning") di potenziali ritardi.],
  [Riassegnazione delle risorse (Resource leveling): spostamento di membri da attività con margine di scorrimento a supporto del task critico. Se il ritardo impatta una Milestone, riduzione dello scopo dell'attività posticipando i requisiti opzionali.],
  "Alta",
  "Alto"
)

=== RCO2: Instabilità dei requisiti (Scope Creep) <RCO2>
#schedaRischio(
  "RCO2",
  "Cambiamento dei requisiti e Scope Creep",
  [Durante lo sviluppo, potrebbero emergere modifiche sostanziali ai requisiti o la tendenza ad aggiungere funzionalità non richieste per perfezionismo (#def[Gold Plating]), dilatando i tempi di consegna.],
  [Comprensione imperfetta delle esigenze iniziali o desiderio del team di sperimentare tecnologie oltre il necessario, perdendo il focus sull'obiettivo minimo (#def[MVP]).],
  [Congelamento dei requisiti al termine dell'Analisi. Ogni modifica successiva richiede una procedura formale di valutazione dell'impatto. Focalizzazione rigorosa sui requisiti obbligatori prima di quelli opzionali.],
  [Valutazione critica della modifica: se non essenziale, viene scartata o posticipata. Se necessaria, si negozia la rimozione di un'altra funzionalità di pari onerosità per mantenere inalterato il carico di lavoro complessivo.],
  "Media",
  "Medio"
)

=== RCO3: Gestione delle risorse (Budget) <RCO3>
#schedaRischio(
  "RCO3",
  "Divergenza dal preventivo orario",
  [Il consuntivo delle ore lavorate potrebbe superare il preventivo stimato per ciascun ruolo, esaurendo il budget virtuale del progetto prima del completamento delle attività.],
  [Inefficienze nello svolgimento dei task, necessità di rifacimento del lavoro (*rework*) per bassa qualità iniziale o blocchi tecnici imprevisti.],
  [Monitoraggio settimanale delle ore rendicontate tramite Dashboard. I Responsabili verificano lo scostamento rispetto alla Baseline e intervengono se una specifica attività sta drenando troppe risorse.],
  [Analisi delle cause di inefficienza. Riallocazione delle ore risparmiate da altri ruoli. In casi critici, semplificazione delle scelte tecniche per rientrare nel monte ore residuo.],
  "Media",
  "Medio"
)

=== RCO4: Comunicazione esterna <RCO4>
#schedaRischio(
  "RCO4",
  "Disallineamento o ritardi nella comunicazione col proponente",
  [Possibili ritardi nelle risposte da parte di #def[Var Group] o interpretazioni errate dei feedback forniti durante i SAL (#def[Stato Avanzamento Lavori]), portando allo sviluppo di funzionalità non allineate con le aspettative.],
  [Il proponente è una realtà aziendale con impegni prioritari che potrebbero causare latenza. La comunicazione remota aumenta il rischio di ambiguità interpretativa.],
  [Pianificazione di incontri periodici fissi. Redazione sistematica di verbali esterni dopo ogni meeting per formalizzare le decisioni. Uso di canali rapidi (#def[Slack]) per dubbi bloccanti.],
  [Sollecito formale in caso di mancata risposta. In caso di blocco prolungato, escalation verso il Professore per definire una strategia di procedibilità o congelare i requisiti in attesa di feedback.],
  "Media",
  "Medio"
)

=== RCO5: Qualità della documentazione <RCO5>
#schedaRischio(
  "RCO5",
  "Disomogeneità nella documentazione",
  [La documentazione prodotta (Piano di Progetto, Norme di Progetto, ecc.) potrebbe risultare stilisticamente frammentata, poco coerente o con terminologie discordanti, compromettendo la professionalità degli elaborati.],
  [La stesura collaborativa parallela da parte di più autori introduce differenze di stile e formattazione. Mancata aderenza rigorosa alle #def[Norme di Progetto].],
  [Definizione di template #def[Typst] vincolanti. Adozione di un Glossario centralizzato. Ruolo di *Verificatore* distinto dal *Redattore* per ogni documento.],
  [Fase di armonizzazione finale: assegnazione di un unico responsabile editoriale che revisiona l'intero documento prima del rilascio per uniformare lo stile ("One Voice Policy").],
  "Media",
  "Basso"
)


#pagebreak()

= Strategie di pianificazione del ciclo di vita
In questa sezione viene descritta la #def[schedulazione] delle attività di progetto, necessaria per garantire il rispetto delle scadenze e la corretta allocazione delle risorse.

Coerentemente con quanto emerso nell'analisi dei rischi (in particolare #link(<RCO1>)[#underline[\[RCO1\]]] e #link(<RT2>)[#underline[\[RT2\]]]), la pianificazione adotta un approccio basato sulla strategia del *Rolling Wave Planning* (pianificazione a ondata). Questo metodo prevede una pianificazione estremamente dettagliata per le attività a breve termine e una pianificazione ad alto livello per le fasi successive, che verrà raffinata progressivamente man mano che il progetto avanza.

Il ciclo di vita del progetto è scandito da due #def[Milestone] principali, imposte dal regolamento didattico, che fungono da spartiacque per la strategia di pianificazione:

1.  *Requirements and Technology Baseline (#def[RTB]):* Milestone a breve termine. Il focus è sul consolidamento dei requisiti, la produzione della documentazione normativa e la validazione tecnologica tramite #def[PoC].
2.  *Product Baseline (#def[PB]):* Milestone a lungo termine. Il focus si sposterà sullo sviluppo incrementale del prodotto software (#def[MVP]), sui test di sistema e sul rilascio finale.

Di seguito viene dettagliata la pianificazione per la prima fase (RTB) e delineate le linee guida strategiche per la seconda (PB).
== Pianificazione a breve termine (Verso la RTB)
Questa fase copre il periodo temporale che va dall'avvio del progetto fino al colloquio per la *Requirements and Technology Baseline* (#def[RTB]).
L'obiettivo primario è duplice:
1.  *Documentale:* Formalizzare i requisiti, i processi e la pianificazione per stabilire un perimetro di lavoro chiaro e condiviso.
2.  *Tecnologico:* Mitigare i rischi tecnici critici (#link(<RT1>)[#underline[RT1]], #link(<RT2>)[#underline[RT2]]) attraverso lo sviluppo di un *Proof of Concept* (#def[PoC]).

Le attività sono organizzate in *Sprint* (iterazioni) di durata variabile. Di seguito viene riportato il calendario temporale e il dettaglio operativo.

=== Calendario degli Sprint (Fase RTB)
// IMPORTANTE: Sostituisci le date segnaposto con quelle reali
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
    [*Sprint 1*], [[19/12/2025]], [[03/01/2026]],
    [*Sprint 2*], [[03/01/2026]], [[17/01/2026]],
    [*Sprint 3*], [[GG/MM/AAAA]], [[GG/MM/AAAA]],
  ),
  caption: [Calendario degli Sprint pianificati per la fase RTB],
)

=== Strategia di rispetto delle scadenze
Per garantire il rispetto delle milestone ufficiali (#def[RTB] e #def[PB]) e mitigare il rischio di ritardi (#link(<RCO1>)[#underline[RCO1]]), il gruppo ha adottato una strategia basata su *scadenze interne*.
Ogni Sprint termina con una *Internal Review* fissata con un anticipo di almeno 2-3 giorni rispetto alla scadenza reale o alla riunione con il proponente. Questo margine temporale (*Slack Time*) ha la duplice funzione di:
1.  Permettere l'assorbimento di eventuali imprevisti senza impattare sulla consegna ufficiale.
2.  Garantire il tempo necessario per una revisione incrociata dei documenti e del codice, assicurando che il rilascio rispetti gli standard di qualità prefissati.
La fattibilità di tale piano è strettamente correlata alla disponibilità e alla gestione efficiente delle risorse umane. Nella sezione successiva, verrà quindi dettagliato il preventivo dei costi e la ripartizione dei ruoli necessaria per sostenere le attività pianificate nel rispetto del budget prefissato.

=== Dettaglio delle attività
La seguente tabella dettaglia la ripartizione del carico di lavoro. Per ogni artefatto prodotto, vengono specificate le sezioni oggetto di stesura e l'allocazione temporale sugli sprint definiti.

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
      text(fill: white, weight: "bold")[Stato]
    ),

    // Analisi dei Requisiti (AGGIORNATO CON STANDARDS)
    [*Analisi dei Requisiti*],
    [Formalizzazione secondo i processi ISO/IEC/IEEE 29148 e struttura IEEE 830:
    - *Metodologia:* Fonti e individuazione attori/UC.
    - *Casi d'Uso:* Specifica UML con scenari (principali/alternativi).
    - *Requisiti:* Classificazione dettagliata in: Funzionali, Prestazionali, Usabilità, Interfaccia, Logici del DB, Limitazioni di Design e Attributi del Software di Sistema.], 
    [- Metodo/Attori: *Sprint 1*
    - Casi d'Uso: *Sprint 1-2-3*
    - Requisiti: *Sprint 2-3*],
    [In corso],
    
    // Piano di Progetto
    [*Piano di Progetto*],
    [Attività di gestione e previsione:
    - Introduzione e riferimenti.
    - Analisi approfondita e strategie di gestione dei rischi.
    - Pianificazione temporale a breve (dettaglio) e lungo termine (strategica).
    - Stima dei costi e preventivo.],
    [- Intro/Rischi: *Sprint 1*
    - Lungo termine: *Sprint 2*
    - Breve termine: *Sprint 2*],
    [In fase di completamento],

    // Piano di Qualifica
    [*Piano di Qualifica*],
    [Definizione della strategia di verifica e validazione:
    - Obiettivi di qualità di processo e prodotto.
    - Definizione delle metriche (standard ISO/IEC).
    - Metodologie di testing (*Unit*, *Integration*, *System*).
    - Impostazione del Cruscotto di Valutazione e procedure di automiglioramento (*PDCA*).],
    [- Qualità: *Sprint 1*
    - Testing: *Sprint 1-2*
    - Cruscotto: *Sprint 2*],
    [In attesa di revisione],

    // Norme di Progetto (AGGIORNATO CON SLACK/JIRA)
    [*Norme di Progetto*],
    [Codifica regole e setup infrastruttura:
    - *Strumenti:* Adozione di #def[Slack] per la comunicazione esterna e setup di #def[Jira] per la rendicontazione dei task.
    - *Processi:* Definizione processi primari, di supporto e organizzativi.
    - *Sviluppo:* Standard di codifica e convenzioni per il repository.],
    [- Strumenti/Proc.: *Sprint 1*
    - Organizzativi: *Sprint 2*
    - Sviluppo: *Sprint 1-2*],
    [In attesa di revisione],

    // Glossario
    [*Glossario*],
    [Redazione incrementale delle definizioni.
    Ogni membro è responsabile dell'aggiunta immediata di termini tecnici, acronimi o ambigui incontrati durante la stesura degli altri documenti per garantire un vocabolario controllato (#link(<RCO5>)[#underline[RCO5]]).],
    [Attività trasversale in *tutti gli Sprint*.],
    [In corso],

    // Proof of Concept
    [*Sviluppo PoC*],
    [Realizzazione del prototipo tecnologico per mitigare i rischi #link(<RT1>)[#underline[RT1]] e #link(<RT2>)[#underline[RT2]]:
    - Studio delle API #def[LLM] e framework per Agenti.
    - Progettazione architetturale preliminare.
    - Implementazione di un agente base (Test di fattibilità).],
    [- Progettazione: *Sprint 2-3*
    - Implementazione: *Sprint 3*],
    [Da iniziare],

    // Gestione Processi
    [*Gestione e Coordinamento*],
    [Attività continuativa di monitoraggio del progetto:
    - Svolgimento riunioni interne ed esterne.
    - Stesura e approvazione dei verbali di riunione.
    - Verifica avanzamento task su Jira rispetto al pianificato.],
    [Attività trasversale in *tutti gli Sprint*.],
    [In corso],

    // Presentazione
    [*Preparazione RTB*],
    [Attività finale di sintesi per il colloquio:
    - Realizzazione delle slide di presentazione (supporto visivo).
    - Simulazione dell'esposizione (*Dry run*) e verifica dei tempi.],
    [- Realizzazione/Prove: *Sprint 3*],
    [Da iniziare],
  ),
  caption: [Dettaglio attività pianificate per la fase RTB],
)
== Pianificazione a lungo termine (Verso la PB)
Superata la milestone della RTB, il progetto entrerà nella sua fase operativa più intensa, volta al raggiungimento della *Product Baseline* (#def[PB]).

In accordo con la strategia di *Rolling Wave Planning*, la pianificazione di dettaglio (suddivisione in sprint e date) per questo periodo verrà consolidata e formalizzata nel *Piano di Progetto v2.0*, che sarà rilasciato a valle del colloquio RTB per recepire eventuali feedback correttivi del committente.

Tuttavia, le linee guida strategiche per lo sviluppo del prodotto sono già definite e strutturate nelle seguenti 4 macro-fasi operative:

==== 1. Fase di Analisi Post-PoC e Progettazione Architetturale
A valle della RTB, il team effettuerà una transizione critica dallo sviluppo sperimentale del prototipo alla progettazione ingegneristica del prodotto finale.
- *Obiettivo:* Consolidare la conoscenza tecnologica acquisita e definire i blueprint del sistema.
- *Attività chiave:*
  - *Analisi critica del PoC:* Valutazione delle soluzioni tecniche adottate nel prototipo per confermarne la fattibilità o identificare approcci alternativi necessari per la versione finale.
  - *Technical Design:* Definizione dell'architettura logica e dei componenti tramite diagrammi UML (Classi, Sequenza, Attività).
  - *Progettazione Dati:* Definizione degli schemi per la gestione della persistenza e dei flussi di informazione tra l'agente e i modelli #def[LLM].
  - *Infrastruttura:* Setup dell'ambiente di sviluppo definitivo e della pipeline di Continuous Integration e Continuous Deployment.

==== 2. Fase di Sviluppo MVP e Codifica Core
In questa fase verrà realizzato il *Minimum Viable Product* (#def[MVP]), ovvero la versione del software contenente le sole funzionalità essenziali per soddisfare i requisiti obbligatori.
- *Obiettivo:* Implementazione del nucleo funzionale in un ambiente controllato, sicuro e testabile.
- *Attività chiave:*
  - Scrittura del codice per il modulo di analisi statica, clonazione repository e integrazione agenti.
  - Implementazione dei meccanismi di sicurezza e isolamento dei processi (sandboxing) analizzati nella fase RTB (#link(<RT9>)[#underline[RT9]]).
  - Esecuzione sistematica di *Unit Test* e *Integration Test* contestualmente allo sviluppo per garantire la solidità del codice.

==== 3. Fase di Estensione e Perfezionamento
Una volta stabilizzato il nucleo, verranno sviluppate le funzionalità avanzate e l'interfaccia utente finale.
- *Obiettivo:* Completare la copertura dei requisiti desiderabili e ottimizzare l'esperienza utente.
- *Attività chiave:*
  - Sviluppo del modulo di *Remediation* (correzione automatica del codice) e della Dashboard (Frontend).
  - Ottimizzazione delle performance e gestione dei costi delle API tramite caching delle risposte (#link(<RT5>)[#underline[RT5]]).
  - Revisione e allineamento dei diagrammi di design per riflettere l'implementazione effettiva del software.

==== 4. Fase di Validazione e Rilascio
L'ultimo periodo è dedicato esclusivamente alla qualità del prodotto e alla produzione della documentazione finale per la consegna.
- *Obiettivo:* Garantire la conformità totale ai requisiti e la stabilità del sistema per l'accettazione.
- *Attività chiave:*
  - Esecuzione intensiva di *System Test* e *Acceptance Test* con il proponente.
  - Stesura della documentazione tecnica finale: Manuale Utente e Manuale Sviluppatore.
  - Chiusura del Cruscotto di Valutazione della qualità e preparazione della presentazione finale.

#pagebreak()
= Preventivo e Risorse

In questa sezione viene presentata la stima dei costi e la pianificazione dell'allocazione delle risorse umane.
Il preventivo è stato calcolato tenendo conto dei vincoli di budget e della scadenza finale di progetto fissata per il *21/03/2026*.

== Preventivo Totale
Il gruppo è composto da *7 membri*. Ciascun componente si impegna a rendicontare un monte ore produttivo pari a *90 ore*, per un totale complessivo di *630 ore* di progetto.

Il costo totale stimato ammonta a *€ 12.845,00*.
Tale preventivo rispetta il vincolo di costo imposto dal capitolato e garantisce una distribuzione equa del carico di lavoro e la rotazione dei ruoli tra tutti i componenti.

Di seguito è riportata la ripartizione totale delle ore per ruolo sull'intero ciclo di vita (da avvio a #def[PB]).

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
      text(fill: white, weight: "bold")[Costo Totale]
    ),

    [Responsabile], [30 €/h], [63], [€ 1.890,00],
    [Amministratore], [20 €/h], [56], [€ 1.120,00],
    [Analista], [25 €/h], [91], [€ 2.275,00],
    [Progettista], [25 €/h], [126], [€ 3.150,00],
    [Programmatore], [15 €/h], [147], [€ 2.205,00],
    [Verificatore], [15 €/h], [147], [€ 2.205,00],
    
    table.cell(colspan: 2, fill: luma(240))[*Totale*],
    table.cell(fill: luma(240))[*630*],
    table.cell(fill: luma(240))[*€ 12.845,00*],
  ),
  caption: [Distribuzione totale delle ore e dei costi per ruolo],
)

== Preventivo Fase RTB
La prima fase del progetto, che si conclude con la milestone *Requirements and Technology Baseline* (#def[RTB]), prevede un impegno focalizzato prevalentemente sull'Analisi dei Requisiti, sulla predisposizione della documentazione normativa e sulla realizzazione del Proof of Concept.

Il periodo rendicontato per questa fase va dal *19/12/2025* al *06/02/2026*.
La seguente tabella illustra i costi preventivati specificamente per il raggiungimento della RTB. Le ore sono state stimate assegnando un peso maggiore ai ruoli documentali e di analisi, tipici di questa fase iniziale.

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

    // CALCOLI EFFETTUATI PER TE (Circa 32% del totale, focus su Analisi)
    [Responsabile], [21], [€ 630,00],   // Gestione avvio e riunioni
    [Amministratore], [25], [€ 500,00], // Setup strumenti, Norme, Verbali
    [Analista], [65], [€ 1.625,00],     // Analisi Requisiti (MOLTO ALTA ORA)
    [Progettista], [20], [€ 500,00],    // Solo architettura PoC
    [Programmatore], [30], [€ 450,00],  // Codice del PoC
    [Verificatore], [44], [€ 660,00],   // Verifica di tanti documenti
    
    table.cell(colspan: 1, fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*205*],
    table.cell(fill: luma(240))[*€ 4.365,00*],
  ),
  caption: [Preventivo di periodo per la fase RTB],
)

== Stima per la fase Product Baseline (PB)
La pianificazione di dettaglio per la fase di *Product Baseline* sarà consolidata al termine della RTB (#def[Rolling Wave Planning]).
Tuttavia, il budget residuo è stato interamente allocato per garantire la copertura delle attività di sviluppo del prodotto (#def[MVP]), test di sistema e rilascio finale.

Le risorse a finire sono calcolate per differenza rispetto al preventivo RTB:
$ "Risorse PB" = "Totale Progetto" - "Preventivo RTB" $

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

    // CALCOLI DIFFERENZIALI (Totale - RTB)
    [Responsabile], [42], [€ 1.260,00],
    [Amministratore], [31], [€ 620,00],
    [Analista], [26], [€ 650,00],
    [Progettista], [106], [€ 2.650,00], // Qui si progetta forte
    [Programmatore], [117], [€ 1.755,00], // Qui si codifica tutto
    [Verificatore], [103], [€ 1.545,00], // Qui si testa il codice
    
    table.cell(colspan: 1, fill: luma(240))[*Totale PB*],
    table.cell(fill: luma(240))[*425*],
    table.cell(fill: luma(240))[*€ 8.480,00*],
  ),
  caption: [Budget residuo stimato per la fase PB],
)

== Ripartizione oraria per membro
Per garantire il rispetto del vincolo di *90 ore pro-capite* e assicurare la rotazione delle responsabilità come definito nelle Norme di Progetto, le ore sono state distribuite tra i 7 membri secondo la seguente matrice.

I valori riportati rappresentano una *pianificazione media* volta a dimostrare la fattibilità della rotazione; l'assegnazione effettiva dei ruoli avverrà in modo dinamico sprint per sprint, bilanciando le necessità tecniche con l'equità organizzativa.

#pagebreak()
#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else if col == 0 { luma(96%) } else { white },
    // Colonne proporzionate per far stare i nomi lunghi
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
      text(fill: white, size: 9pt, weight: "bold")[Totale]
    ),

    // Ripartizione Equilibrata (Totale per riga: 90h - Totale per ruolo rispettato)
    // Elemento che mi preme modificare è diminuire le ore di Responsabile e aumentare quelle di Amministratore per la stesura dei documenti
    // Ipoteticamente si parla di 7 e 10, per conformità con le 90 ore previste
    [#members.kevin], [9], [8], [13], [18], [21], [21], [*90*],
    [#members.berengan], [9], [8], [13], [18], [21], [21], [*90*],
    [#members.martinello], [9], [8], [13], [18], [21], [21], [*90*],
    [#members.antonio], [9], [8], [13], [18], [21], [21], [*90*],
    [#members.andrea], [9], [8], [13], [18], [21], [21], [*90*],
    [#members.suar], [9], [8], [13], [18], [21], [21], [*90*],
    [#members.alice], [9], [8], [13], [18], [21], [21], [*90*],

    // Totali di colonna (Verifica: coincidenza perfetta con preventivo)
    table.cell(colspan: 1, fill: luma(240), align: left)[*Totale Ore*],
    table.cell(fill: luma(240))[*63*], 
    table.cell(fill: luma(240))[*56*], 
    table.cell(fill: luma(240))[*91*], 
    table.cell(fill: luma(240))[*126*], 
    table.cell(fill: luma(240))[*147*], 
    table.cell(fill: luma(240))[*147*], 
    table.cell(fill: luma(240))[*630*], 
  ),
  caption: [Matrice di ripartizione pianificata per membro],
)

#pagebreak()
= Monitoraggio e controllo: Preventivo e Consuntivo

In questa sezione viene rendicontato l'avanzamento effettivo del progetto attraverso il confronto sistematico tra quanto pianificato (*Preventivo*) e quanto realmente realizzato (*Consuntivo*). Tale attività avviene al termine di ogni #def[Sprint] e permette di valutare la salute economica e temporale del progetto.

== Metodologia di monitoraggio
Per garantire un controllo rigoroso, il gruppo, al termine di ogni iterazione, analizza i seguenti indicatori per ogni ruolo:

- *Ore Previste:* Ore pianificate nel preventivo di fase.
- *Ore Effettive:* Ore realmente impiegate e tracciate tramite il sistema di gestione dei task #def[Jira].
- *Differenza (Delta):* Variazione oraria tra preventivo e consuntivo.
- *Costo Effettivo:* Calcolato moltiplicando le ore effettive per la tariffa oraria del ruolo.

L'analisi degli scostamenti (*Variance Analysis*) permette di individuare tempestivamente eventuali inefficienze o rischi manifesti, consentendo al Responsabile di attuare azioni correttive (es. riallocazione delle risorse o semplificazione dei requisiti opzionali) per rientrare nei vincoli di budget e tempo prefissati.

=== Nota sulle attività preliminari (Periodo di Avviamento)
Le attività svolte e le riunioni tenute antecedentemente alla data di avvio ufficiale del primo Sprint sono state classificate come *investimento interno* e *auto-formazione*.

In questa fase preliminare ("Palestra"), il gruppo si è focalizzato su:
- Studio delle tecnologie e degli strumenti di supporto (es. Typst, GitHub, Jira).
- Definizione delle norme di collaborazione interna.
- Acquisizione del dominio applicativo.

Tali attività, pur essendo state tracciate nei verbali interni per fini di trasparenza e tracciabilità delle decisioni, *non vengono rendicontate* nel monte ore di progetto, in quanto propedeutiche all'avvio operativo e non direttamente imputabili alla produzione degli artefatti finali.
La rendicontazione economica ufficiale decorre pertanto dalla data di inizio dello Sprint 1.
== Riepilogo degli Sprint
Di seguito vengono riportati i consuntivi dettagliati per ogni periodo di attività.

=== Sprint 1
*Periodo:* dal 19/12/2025 al 03/01/2026
==== Informazioni generali e attività da svolgere
In questo primo sprint di avvio, il team si è concentrato sulla definizione del perimetro normativo e sull'analisi preliminare del problema.
Le attività principali hanno riguardato:
- *Analisi dei Requisiti:* Identificazione degli attori primari e secondari e stesura dei primi casi d'uso (Use Case).
- *Piano di Progetto:* Definizione della strategia di gestione dei rischi e pianificazione a lungo termine.
- *Norme di Progetto:* Codifica dei processi primari e setup dell'infrastruttura di lavoro (GitHub, Typst).
- *Piano di Qualifica:* Impostazione delle metriche di qualità e strategia di testing.
- *Glossario:* Popolamento iniziale dei termini di dominio.

==== Prospetto consumo tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1.5fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr),
    inset: 8pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),
    
    table.header(
      text(fill: white, weight: "bold")[Membro],
      text(fill: white, size: 8pt, weight: "bold")[Resp],
      text(fill: white, size: 8pt, weight: "bold")[Amm],
      text(fill: white, size: 8pt, weight: "bold")[Anal],
      text(fill: white, size: 8pt, weight: "bold")[Prog],
      text(fill: white, size: 8pt, weight: "bold")[Cod],
      text(fill: white, size: 8pt, weight: "bold")[Ver],
    ),

    // PREVENTIVO (Dati forniti)
    [Basso Kevin], [-], [-], [8], [-], [-], [-],
    [Berengan Riccardo], [-], [-], [8], [-], [-], [-],
    [Martinello Riccardo], [-], [-], [8], [-], [-], [-],
    [Sandu Antonio], [-], [-], [8], [-], [-], [-],
    [Sgreva Andrea], [-], [-], [8], [-], [-], [-],
    [Suar Alberto], [2], [-], [6], [-], [-], [-],
    [Zago Alice], [-], [-], [8], [-], [-], [-],

    table.cell(colspan: 1, fill: luma(240), align: left)[*Totale Ore*],
    table.cell(fill: luma(240))[*2*], 
    table.cell(fill: luma(240))[*0*], 
    table.cell(fill: luma(240))[*54*], 
    table.cell(fill: luma(240))[*0*], 
    table.cell(fill: luma(240))[*0*], 
    table.cell(fill: luma(240))[*0*], 
  ),
  caption: [Prospetto orario preventivato per lo Sprint 1],
)

==== Consumo tempo e costi effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate. 
Si nota una leggera flessione nel monte ore totale dovuta alla concomitanza con le festività natalizie.

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1.5fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr, 0.6fr),
    inset: 8pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),
    
    table.header(
      text(fill: white, weight: "bold")[Membro],
      text(fill: white, size: 8pt, weight: "bold")[Resp],
      text(fill: white, size: 8pt, weight: "bold")[Amm],
      text(fill: white, size: 8pt, weight: "bold")[Anal],
      text(fill: white, size: 8pt, weight: "bold")[Prog],
      text(fill: white, size: 8pt, weight: "bold")[Cod],
      text(fill: white, size: 8pt, weight: "bold")[Ver],
    ),

    // CONSUNTIVO (Dati forniti + Correzione logica suggerita: vedi nota sotto)
    // NOTA: Ho lasciato i tuoi dati, ma considera di spostare ore su Amministratore!
    [Basso Kevin], [1], [-], [6], [-], [-], [-],
    [Berengan Riccardo], [-], [-], [6], [-], [-], [-],
    [Martinello Riccardo], [-], [-], [6], [-], [-], [-],
    [Sandu Antonio], [-], [-], [6], [-], [-], [-],
    [Sgreva Andrea], [-], [-], [6], [-], [-], [-],
    [Suar Alberto], [2], [-], [6], [-], [-], [-],
    [Zago Alice], [-], [-], [6], [-], [-], [-],

    table.cell(colspan: 1, fill: luma(240), align: left)[*Totale Ore*],
    table.cell(fill: luma(240))[*3*], 
    table.cell(fill: luma(240))[*0*], 
    table.cell(fill: luma(240))[*42*], 
    table.cell(fill: luma(240))[*0*], 
    table.cell(fill: luma(240))[*0*], 
    table.cell(fill: luma(240))[*0*], 
  ),
  caption: [Consuntivo orario effettivo dello Sprint 1],
)

==== Analisi degli scostamenti e Risorse Rimanenti
In questo sprint sono state consumate *45 ore* a fronte delle *56 ore* preventivate (Delta: -11 ore). 
Il budget economico risparmiato viene reimmesso nel monte ore totale per le fasi successive.

// TABELLA DELTA (Importante per il controllo)
#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 8pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),
    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore Prev.],
      text(fill: white, weight: "bold")[Ore Eff.],
      text(fill: white, weight: "bold")[Delta],
      text(fill: white, weight: "bold")[Costo],
    ),
    [Responsabile], [2], [3], [+1], [€ 90,00],
    [Amministratore], [0], [0], [0], [€ 0,00],
    [Analista], [54], [42], [-12], [€ 1.050,00],
    // Gli altri ruoli sono a 0 quindi li omettiamo per brevità o li raggruppiamo
    
    table.cell(colspan: 1, fill: luma(240), align: left)[*Totale*],
    table.cell(fill: luma(240))[*56*],
    table.cell(fill: luma(240))[*45*],
    table.cell(fill: luma(240))[-11],
    table.cell(fill: luma(240))[*€ 1.140,00*],
  ),
  caption: [Riepilogo economico dello Sprint 1],
)

==== Retrospettiva
+ *Cosa ha funzionato:* L'avvio dei lavori sui documenti è stato rapido grazie alle attività preliminari di auto-formazione.
+ *Criticità:* Si è verificato un rallentamento produttivo dovuto alla pausa natalizia e agli impegni personali dei membri (#link(<RI1>)[#underline[RI1]]).
+ *Azioni Correttive:* Le 11 ore non lavorate verranno recuperate nello Sprint 2, aumentando leggermente il carico di lavoro per chiudere i documenti in vista della RTB.

== Sprint 2




















= IGNORA

#pagebreak()
#pagebreak()
= Pianificazione nel lungo termine
== Obiettivi di pianificazione
La pianificazione a lungo termine ha l'obiettivo di delineare le attività principali e le milestone fondamentali per il completamento del progetto Code Guardian.
Le due milestone necessarie sono la *#def[Requirements and Technology Baseline] (RTB)* e la *#def[Product Baseline] (PB)*, che rappresentano rispettivamente la fase di raccolta dei requisiti e definizione delle tecnologie, e la fase di definizione e implementazione delle specifiche del prodotto finale. #linebreak()  
Questa sezione fornisce una panoramica delle tappe chiave, delle scadenze e delle risorse necessarie per garantire il successo del progetto nel suo complesso. 
Nella Dichiarazione degli impegni, la data ultima prevista di consegna del progetto è stata definita il 21/03/2026; con costi pari a €12.845,00.

Nella seguente tabella è riportata la distribuzione delle ore per ruolo presente nella candidatura iniziale: 

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(66.67%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    table.header(
      [*Ruolo*],
      [*Costo Orario*],
      [*Ore*],
      [*Costo*]
    ),

    [*Responsabile*],
    [30€/h],
    [63h],
    [1890€],

    [*Amministratore*],
    [20€/h],
    [56h],
    [1120€],

    [*Analista*],
    [25€/h],
    [91h],
    [2275€],

    [*Progettista*],
    [25€/h],
    [126h],
    [3150€],

    [*Programmatore*],
    [15€/h],
    [147h],
    [2205€],

    [*Verificatore*],
    [15€/h],
    [147h],
    [2205€],

    [*Totale*],
    [-],
    [630h],
    [12845€],
  ),
  caption: [Distribuzione delle ore per ruolo nella candidatura],
)

Questa suddivisione al momento sembra ragionevole, ma verranno monitorate le attività allo scopo di assicurare una distribuzione corretta rispetto a quanto riscontrato.

In seguito a un'analisi dell'andamento delle attività, il gruppo stima una candidatura per la #strong[Requirements and Technology Baseline] (#strong[RTB]) entro il 20 gennaio 2026. #pagebreak()


== Attività previste per la Requirements and Technology Baseline (RTB)
#show figure: set block(breakable: true)
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(57.25%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1fr, 2fr, 2fr, 1fr),
    inset: 6pt,
    table.header(
      [*Attività*],
      [*Descrizione*],
      [*Periodo di svolgimento*],
      [*Stato*]
    ),

    [*Stesura del documento di Analisi dei Requisiti*],
    [Redazione delle seguenti sezioni del documento di Analisi dei Requisiti:
    - Introduzione e definizione degli attori; 
    - Casi d'uso e relativi sottocasi;
    - Requisiti funzionali e non.], 
    [- Introduzione e attori: sprint 1;
    - Casi d'uso: sprint 1 e 2;
    - Requisiti funzionali e non: sprint 2.],
    [In corso],
    
    [*Stesura del Piano di Progetto*],
    [Redazione delle seguenti sezioni del documento di Piano di Progetto: 
    - Introduzione; 
    - Analisi e gestione dei rischi; 
    - Pianificazione a lungo termine; 
    - Pianificazione a breve termine.],
    [- Introduzione: sprint 1;
    - Analisi e gestione dei rischi: sprint 1;
    - Pianificazione a lungo termine: sprint 1;
    - Pianificazione a breve termine: sprint 2.], 
    [In corso],

    [*Stesura del Piano di Qualifica*],
    [Redazione delle seguenti sezioni del documento di Piano di Qualifica: 
    - Introduzione; 
    - Qualità di processo; 
    - Qualità di prodotto; 
    - Metodi di testing; 
    - Cruscotto di valutazione;
    - Automiglioramento.],
    [- Introduzione: sprint 1;
    - Qualità di processo: sprint 1;
    - Qualità di prodotto: sprint 1;
    - Metodi di testing: sprint 1 e 2;
    - Cruscotto di valutazione: sprint 2;
    - Automiglioramento: sprint 2],
    [In corso],

    [*Stesura del documento di Norme di Progetto*],
    [Redazione delle seguenti sezioni del documento di Norme di Progetto: 
    - Introduzione; 
    - Processi primari; 
    - Processi di supporto; 
    - Processi organizzativi; 
    - Norme di sviluppo.],
    [- Introduzione: sprint 1,
    - Processi primari: sprint 1,
    - Processi di supporto: sprint 1,
    - Processi organizzativi: sprint 2,
    - Norme di sviluppo: sprint 1 e 2.],
    [In corso],

    [*Implementazione del Glossario*],
    [La redazione del Glossario sarà un documento in costante aggiornamento, che evolverà parallelamente allo sviluppo di altri documenti. #linebreak()
    Ogni membro del gruppo avrà la responsabilità di aggiungere nuove voci qualora lo ritenesse necessario durante la stesura di altri documenti o durante lo sviluppo del progetto.],
    [- Ogni sprint vengono aggiunte nuove voci al glossario.], 
    [In corso],

    [*Sviluppo del Proof of Concept (PoC)*],
    [Svolgimento delle seguenti attività:
    - Progettazione architetturale;
    - Implementazione iniziale.],
    [- Progettazione architetturale: sprint 2;
    - Implementazione iniziale: sprint 2 e 3.],
    [Da iniziare],
  ),
  caption: [Attività previste per la Requirements and Technology Baseline (RTB)],
)
#pagebreak()

== Attività previste per la Product Baseline (PB)
Questo paragrafo non è stato ancora redatto in quanto la pianificazione a lungo termine per la Product Baseline (PB) risulterebbe poco realistica in questo momento. Al superamento della fase di RTB, quando si avranno maggiori informazioni sulle tecnologie, tempistiche e risorse necessarie per completare il progetto, verrà redatta una pianificazione dettagliata per la fase di PB.
#pagebreak()

= Pianificazione nel breve termine
== Introduzione
La pianificazione a breve termine si concentra sulla suddivisione del lavoro degli sprint (di circa 2 settimane). 
Il team ha scelto di seguire un #def[Approccio Agile], che prevede l'adozione di strumenti di gestione del progetto come *#def[Jira]* per organizzare e monitorare le attività durante ogni sprint. #linebreak()
Questa sezione descrive come il team intende organizzare le attività, assegnare le responsabilità e monitorare i progressi durante ciascuno sprint. 
L'obiettivo principale della pianificazione a breve termine è garantire che ogni sprint sia ben definito, con obiettivi chiari e misurabili, che determini i ruoli per ciascun membro del gruppo, in modo da facilitare la gestione del progetto.

Seguiranno ora le descrizioni dei vari sprint, in cui verranno esposte:
- Informazioni generali e attività da svolgere
- Prospetto del consumo temporale
- Consumo del tempo effettivo 
- Aggiornamento delle risorse rimanenti 
- Retrospettiva, comprendente anche i rischi effettivamente riscontrati 
#pagebreak()

/*=== Nota: Attività preliminari allo sprint 1
Prima dell'inizio del primo #def[Sprint], il gruppo ha svolto alcune attività preliminari per prepararsi al meglio alla fase di sviluppo. Queste attività includono:
- Organizzazione di incontri con la proponente, sia allo scopo di stabilire delle linee guida generali e chiarire eventuali dubbi, sia per introdurci alle tecnologie che verranno utilizzate durante il progetto;
- Creazione dei vari documenti iniziali, in particolare i verbali delle riunioni interne ed esterne;
- Configurazione degli strumenti di gestione del progetto (#def[Jira]) e di comunicazione (#def[Slack]);

Queste e altre attività non rendicontate di "Palestra" sono parte integrante del progetto che però sono fuori dagli sprint veri e propri, in quanto servono a preparare il gruppo per affrontare al meglio la fase di sviluppo. L'unica eccezione sono la stesura dei verbali che verranno rendicontati a parte. */

== Requirements and Technology Baseline (RTB)
=== Sprint 1
Inizio: 19/12/2025 #linebreak()
Fine prevista: 03/01/2026 #linebreak()
Fine reale: 03/01/2026 #linebreak()
==== Informazioni generali e attività da svolgere
In questo primo sprint, il team ha intenzione di concentrarsi sulla stesura iniziale dei documenti fondamentali per la Requirements and Technology Baseline (RTB). Le attività principali includono:
- Prima redazione del documento di Analisi dei Requisiti, con particolare attenzione alla definizione degli attori e dei casi d'uso principali;
- Prima redazione del Piano di Progetto, compresi Rischi e pianificazione a lungo termine;
- Prima redazione del Piano di Qualifica, focalizzandosi su qualità di processo/prodotto e testing;
- Prima redazione delle Norme di Progetto, con particolare attenzione ai processi primari e di supporto;
- Aggiornamento continuo del Glossario con nuovi termini rilevanti emersi durante la stesura dei documenti;
==== Prospetto consumo tempo
La seguente tabella mostra il preventivo di ore per ciascun membro del gruppo durante questo sprint:

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(66.67%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    table.header(
      [*Membro*],
      [*Responsabile*],
      [*Amministratore*],
      [*Analista*],
      [*Progettista*],
      [*Programmatore*],
      [*Verificatore*],
    ),

    [*Basso Kevin*],
    [-],
    [-],
    [8h],
    [-],
    [-],
    [-],

    [*Berengan Riccardo*],
    [-],
    [-],
    [8h],
    [-],
    [-],
    [-],

    [*Martinello Riccardo*],
    [-],
    [-],
    [8h],
    [-],
    [-],
    [-],

    [*Sandu Antonio*],
    [-],
    [-],
    [8h],
    [-],
    [-],
    [-],

    [*Sgreva Andrea*],
    [-],
    [-],
    [8h],
    [-],
    [-],
    [-],

    [*Suar Alberto*],
    [2h],
    [-],
    [6h],
    [-],
    [-],
    [-],

    [*Zago Alice*],
    [-],
    [-],
    [8h],
    [-],
    [-],
    [-],

  ),
  caption: [Prospetto consumo tempo preventivato per Sprint 1],
)

==== Consumo tempo e costi effettivi
La seguente tabella mostra il numero di ore produttive effettivamente impiegate da ciascun membro del gruppo durante questo sprint:

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(66.67%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    table.header(
      [*Membro*],
      [*Responsabile*],
      [*Amministratore*],
      [*Analista*],
      [*Progettista*],
      [*Programmatore*],
      [*Verificatore*],
    ),

    [*Basso Kevin*],
    [1h],
    [-],
    [6h],
    [-],
    [-],
    [-],

    [*Berengan Riccardo*],
    [-],
    [-],
    [6h],
    [-],
    [-],
    [-],

    [*Martinello Riccardo*],
    [-],
    [-],
    [6h],
    [-],
    [-],
    [-],

    [*Sandu Antonio*],
    [-],
    [-],
    [6h],
    [-],
    [-],
    [-],

    [*Sgreva Andrea*],
    [-],
    [-],
    [6h],
    [-],
    [-],
    [-],

    [*Suar Alberto*],
    [2h],
    [-],
    [6h],
    [-],
    [-],
    [-],

    [*Zago Alice*],
    [-],
    [-],
    [6h],
    [-],
    [-],
    [-],

  ),
  caption: [Consumo effettivo del tempo per Sprint 1],
)

==== Aggiornamento delle risorse rimanenti
Dopo il completamento dello Sprint 1, le risorse rimanenti per ciascun ruolo sono le seguenti:

#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(66.67%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    table.header(
      [*Ruolo*],
      [*Costo orario*],
      [*Ore consumate*],
      [*Ore rimanenti*],
      [*Costo totale*],
      [*Budget rimanente*],
    ),

    [*Responsabile*],
    [30€/h],
    [3h],
    [60h],
    [90€],
    [1800€],

    [*Amministratore*],
    [20€/h],
    [0h],
    [56h],
    [0€],
    [1120€],

    [*Analista*],
    [25€/h],
    [42h],
    [85h],
    [1050€],
    [1225€],

    [*Progettista*],
    [25€/h],
    [0h],
    [126h],
    [0€],
    [3150€],

    [*Programmatore*],
    [15€/h],
    [0h],
    [147h],
    [0€],
    [2205€],

    [*Verificatore*],
    [15€/h],
    [0h],
    [147h],
    [0€],
    [2205€],

    [*Totale*],
    [-],
    [45h],
    [621h],
    [1140€],
    [11705€],
  ),
  caption: [Risorse rimanenti dopo Sprint 1],
)
==== Retrospettiva
Questo sprint è stato molto produttivo, in quanto sono stati completati tutti gli obiettivi prefissati e la suddivisione del lavoro è risultata efficace. Tuttavia, essendo questo sprint situato nel periodo natalizio, il team si è imbattuto nel RI1, che ha rallentato l'andamento del progetto. Nonostante ciò, il team è riuscito comunque a completare la maggior parte degli obiettivi proposti.
#pagebreak()

=== Sprint 2 
Inizio: 03/01/2026 #linebreak()
Fine prevista: 08/01/2026 #linebreak()
Fine reale: /*da inserire*/
==== Informazioni generali e attività da svolgere
In questo secondo sprint, il team intende concentrarsi sul completamento della stesura dei documenti fondamentali per la Requirements and Technology Baseline (RTB) e iniziare lo sviluppo del Proof of Concept (PoC). Le attività principali includono:
- Completamento del documento di Analisi dei Requisiti, inserendo gli ultimi casi d'uso e includendo i requisiti funzionali e non funzionali;
- Incremento del Piano di Progetto, con particolare attenzione alla pianificazione a breve termine;
- Completamento del Piano di Qualifica, includendo metodi di testing e cruscotto di valutazione;
- Completamento delle Norme di Progetto, con particolare attenzione ai processi organizzativi e alle norme di sviluppo;
- Continuo aggiornamento del Glossario con nuovi termini rilevanti emersi durante la stesura dei documenti;
- Inizio dello sviluppo del Proof of Concept (PoC), concentrandosi sull'analisi delle tecnologie da utilizzare.
==== Prospetto consumo tempo
La seguente tabella mostra il preventivo di ore per ciascun membro del gruppo durante questo sprint:

#table(
  fill: (x, y) => if (y == 0) {
    luma(66.67%)
  } else if (calc.gcd(y, 2) == 2) {
    luma(220)
  },
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 10pt,
  table.header(
    [*Membro*],
    [*Responsabile*],
    [*Amministratore*],
    [*Analista*],
    [*Progettista*],
    [*Programmatore*],
    [*Verificatore*],
  ),

  [*Basso Kevin*],
  [-],
  [-],
  [4h],
  [2h],
  [-],
  [-],

  [*Berengan Riccardo*],
  [-],
  [-],
  [4h],
  [2h],
  [-],
  [-],

  [*Martinello Riccardo*],
  [-],
  [-],
  [4h],
  [2h],
  [-],
  [-],

  [*Sandu Antonio*],
  [-],
  [-],
  [4h],
  [2h],
  [-],
  [-],

  [*Sgreva Andrea*],
  [-],
  [-],
  [4h],
  [2h],
  [-],
  [-],

  [*Suar Alberto*],
  [-],
  [-],
  [4h],
  [2h],
  [-],
  [-],

  [*Zago Alice*],
  [-],
  [-],
  [4h],
  [2h],
  [-],
  [-],
)
==== Consumo tempo e costi effettivi
Questa sezione verrà completata al termine dello sprint.
==== Aggiornamento delle risorse rimanenti
Questa sezione verrà completata al termine dello sprint.
==== Retrospettiva
Questa sezione verrà completata al termine dello sprint.
 
