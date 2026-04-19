#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#let versione = "v1.7.0"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#set heading(numbering: "1.1.1")
#let history = (
  (
    "2026/04/18",
    "1.7.0",
    "Fix generali e inizio aggiunta sprint 10",
    members.andrea,
    "",
  ),
  (
    "2026/04/11",
    "1.6.0",
    "Retrospettiva Sprint 9",
    members.andrea,
    "",
  ),
  (
    "2026/04/05",
    "1.5.0",
    "Retrospettiva Sprint 8 e aggiunto Sprint 9",
    members.andrea,
    "",
  ),
  (
    "2026/03/31",
    "1.4.0",
    "Aggiunto Sprint 8",
    members.andrea,
    members.suar
  ),
  (
    "2026/03/29",
    "1.3.0",
    "Completato lo Sprint 6 e Sprint 7",
    members.martinello,
    members.andrea
  ),
  (
    "2026/03/18",
    "1.2.0",
    "Completato lo Sprint 5",
    members.berengan,
    members.andrea
  ),
  (
    "2026/03/08",
    "1.1.0",
    "Aggiunta tabella attvità e modifica alle ore preventivsate di sprint 5",
    members.berengan,
    members.andrea
  ),
  (
    "2026/03/02",
    "1.0.0",
    "Verifica finale e approvazione documento per RTB",
    "",
    members.kevin,
  ),
  (
    "2026/02/26",
    "0.11.0",
    "Aggiunto preventivo a finire",
    members.kevin,
    members.suar,
  ),
  (
    "2026/02/25",
    "0.10.0",
    "Retrospettiva Sprint 4",
    members.antonio,
    members.kevin,
  ),
  (
    "2026/02/12",
    "0.9.0",
    "Aggiunto Sprint 4",
    members.antonio,
    members.kevin,
  ),
  (
    "2026/02/11",
    "0.8.0",
    "Aggiunte tabelle attivitá sprint 1,2,3, piccoli fix e aggiunte spiegazioni delle discrepanze orarie tra consuntivo e preventivo",
    members.kevin,
    members.antonio,
  ),
  (
    "2026/02/01",
    "0.7.2",
    "Rielaborazione sezione introduzione, analisi dei rischi, preventivo e monitoraggio",
    members.suar,
    members.antonio
  ),
  (
    "2026/01/16",
    "0.7.1",
    "Retrospettiva degli Sprint 1 e 2",
    members.suar,
    members.antonio
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
I prodotti del progetto vengono rilasciati in modo incrementale in corrispondenza di due principali #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#baseline")[#def[baseline]]: la *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requirements-and-technology-baseline")[#def[Requirements and Technology Baseline]]* (RTB) e la *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#product-baseline")[#def[Product Baseline]]* (PB).

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
- *Documentazione Finale*: versioni definitive ed approvate di tutti i documenti normativi, gestionali e di supporto.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

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

Ciò consente al team del progetto di adattare tempestivamente le strategie di mitigazione in funzione dell’evoluzione del contesto progettuale.

I rischi individuati vengono raggruppati in macro-categorie (tecnologiche, interpersonali e organizzative) al fine di facilitarne l’analisi e l’assegnazione delle responsabilità.

Le modalità operative e i criteri metodologici adottati per l’analisi e la valutazione dei rischi sono definiti nel documento *Norme di Progetto*, al quale si rimanda per la descrizione dettagliata del processo di di gestione dei rischi.


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
  "Alto",
)

=== RT5: Costi e Limiti di Utilizzo <RT5>
#schedaRischio(
  "RT5",
  "Saturazione del budget o blocco delle API",
  [L’uso di LLM in architettura multi-agente può generare un volume elevato di chiamate, con saturazione dei crediti o blocchi per rate limit. Ciò può rallentare o interrompere sviluppo e test, impattando direttamente la consegna dell’MVP.],
  [La mancata ottimizzazione dei flussi può produrre chiamate ridondanti o ricorsive, con consumo anomalo di risorse in tempi brevi. L’inesperienza nel dimensionamento di prompt e cicli agentivi amplifica il rischio di costi non controllati, inoltre scelte di modelli AI costosi puó aumentare significativamente i costi operativi.],
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
  [Un divario significativo di competenze o di impegno può portare a sovraccarico di alcuni membri. Ciò riduce la produttività complessiva e aumenta il rischio di ritardi e rework.],
  [Background eterogenei e diverse velocità di apprendimento generano una distribuzione non uniforme dei contributi. Se i task complessi restano sempre sugli stessi membri, il rischio di dipendenza e burnout aumenta.],
  [Pair Programming sistematico (esperto + junior) e code review incrociata obbligatoria per favorire trasferimento di competenze. Pianificazione dei task con rotazione controllata delle aree tecniche.],
  [Assegnazione graduata dei task: complessi agli esperti e di supporto/testing ai meno esperti, mantenendo però un percorso di crescita. Riallocazione delle attività in caso di colli di bottiglia persistenti.],
  "Alta", // P=3
  "Alto", // I=3 -> R=9 (Molto Alto)
)

#pagebreak()
== Rischi Costi e Organizzativi (RCO)
Questa categoria raggruppa le criticità legate alla pianificazione temporale, al budget (ore-persona) e alla gestione degli stakeholder.

=== RCO1: Errata stima dei tempi <RCO1>
#schedaRischio(
  "RCO1",
  "Sottostima della complessità dei task",
  [Stime eccessivamente ottimistiche possono produrre ritardi a cascata sul #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#Gantt")[#def[Gantt]] e sulle scadenze di sprint e milestone. Il rischio compromette la capacità di consegnare incrementi completi e verificabili entro i tempi previsti.],
  [L’inesperienza su tecnologie LLM e bias cognitivi come #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#optimism-bias")[#def[Optimism Bias]] portano a sottovalutare incertezze e rework. La scarsa scomposizione delle attività rende più difficile intercettare deviazioni in anticipo.],
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
  [Uso di template #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#typst")[#def[Typst]] vincolanti e glossario centralizzato come riferimento terminologico. Ruolo di Verificatore distinto dal Redattore e checklist di conformità applicata a ogni rilascio.],
  [Armonizzazione finale: revisione globale effettuata da un singolo editor prima del rilascio. Correzione delle incoerenze e riallineamento dei riferimenti incrociati tra documenti.],
  "Media", // P=2
  "Basso", // I=1 -> R=2 (Basso)
)

=== RCO6: Ritardi o incomprensioni nella comunicazione con la proponente
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

=== RCO7: Disomogeneità nella produzione della documentazione
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

= Pianificazione del Ciclo di Vita
In questa sezione viene descritta la schedulazione delle attività di progetto, necessaria per garantire il rispetto delle scadenze e la corretta allocazione delle risorse.

Il ciclo di vita del progetto è scandito da due milestone principali, in corrispondenza delle quali vengono stabilite le seguenti baseline:

1. *Requirements and Technology Baseline (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requirements-and-technology-baseline")[#def[RTB]]):* baseline iniziale, stabilita al termine della milestone di revisione, che sancisce il consolidamento dei requisiti, della documentazione normativa e la validazione tecnologica tramite Proof of Concept.

2. *Product Baseline (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#product-baseline")[#def[PB]]):* baseline finale, stabilita al termine della milestone di accettazione, che certifica il completamento del prodotto MVP, l’esecuzione dei test di sistema e il rilascio finale.

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
    [*Sprint 4*], [31/01/2026], [14/02/2026],
    // Esteso per coprire finitura PoC
  ),
  caption: [Calendario degli Sprint pianificati per la fase RTB],
)


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
      - Metodologia: Fonti e attori.
      - Casi d'Uso: Specifica UML e scenari.
      - Requisiti: Classificazione funzionale, prestazionale e vincoli.
      - Revisione del documento: Verifica ultima del documento.
    ],
    [
      - Metodo: *Sprint 1*
      - UC: *Sprint 1-2-4*
      - Requisiti: *Sprint 2-3-4*
      - Revisione: *Sprint 4* 
    ],
    [Concluso],

    // Piano di Progetto
    [*Piano di Progetto*],
    [Gestione e previsione:
      - Analisi dei Rischi e Strategie.
      - Pianificazione temporale.
      - Preventivo costi e risorse.
      - Inserimento degli Sprint.
      - Revisione e verifica del documento
    ],
    [
      - Rischi: *Sprint 1*
      - Pianif.: *Sprint 1-2*
      - Costi: *Sprint 2*
      - Sprint: *Sprint 3-4*
      - Revisione: *Sprint 4*
    ],
    [Concluso],

    // Piano di Qualifica
    [*Piano di Qualifica*],
    [Strategia di V&V:
      - Obiettivi di qualità e metriche (ISO/IEC).
      - Metodologie di test (Unit, System).
      - Cruscotto di Valutazione (PDCA).
      - Revisione e verifica del documento.
    ],
    [
      - Qualità: *Sprint 1*
      - Test: *Sprint 1-2-4*
      - Cruscotto: *Sprint 3-4*
      - Revisione: *Sprint 4*
    ],
    [Concluso],

    // Norme di Progetto
    [*Norme di Progetto*],
    [Codifica regole e processi:
      - Setup strumenti (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]], #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#slack")[#def[Slack]]).
      - Definizione processi primari e di supporto.
      - Standard di codifica.
      - Revisione e verifica.
    ],
    [
      - Strumenti: *Sprint 1*
      - Processi: *Sprint 1-2*
      - Standard: *Sprint 2*
      - Revisione: *Sprint 3-4*
    ],
    [Concluso],

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
      - Codifica delle singole parti.
      - Integrazione dei sottosistemi.
      - Ultima verifica dell'intero sistema.
    ],
    [
      - Studio: *Sprint 1-2*
      - Progettazione: *Sprint 2*
      - Codifica: *Sprint 3-4*
      - Integrazione: *Sprint 4*
      - Verifica: *Sprint 4*
    ],
    [Concluso],

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
    [
      - Slide: *Sprint 3*
      - Esposizione: *Sprint 4*
    ],
    [In corso],
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
- *Attività:* Modulo di Remediation automatica, Frontend (Dashboard), ottimizzazione costi API (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#catching")[#def[Caching]] - #link(<RT5>)[#underline[RT5]]).

*4. Validazione e Rilascio*

Fase dedicata alla Quality Assurance e alla consegna.
- *Obiettivo:* Conformità totale ai requisiti e stabilità.
- *Attività:* System Test intensivi, User Acceptance Test (UAT) con il proponente, Manualistica finale e chiusura metriche di qualità.

#pagebreak()
= Preventivo e Allocazione delle Risorse

In questa sezione viene presentato il preventivo consolidato dei costi e la pianificazione dell’allocazione delle risorse umane.
Il preventivo è stato elaborato tenendo conto dei vincoli di budget e della scadenza finale di progetto fissata per il *21/03/2026*.

== Evoluzione del Preventivo rispetto alla Candidatura
Durante la candidatura per il capitolato C2, il gruppo ha formalizzato una prima stima economica tramite il documento #underline(link("https://skarabgroup.github.io/DocumentazioneProgetto/candidatura/Dichiarazione_Impegni.pdf")[*Preventivo costi ed impegno orario*]), basata su una valutazione preliminare dei carichi di lavoro.

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

    [Responsabile], [21], [€ 630,00],
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
- *Analisi critica dello stack tecnologico:* Studio approfondito delle tecnologie suggerite dal capitolato C2. I membri hanno redatto documenti di appunti condivisi per analizzare le motivazioni tecniche della loro adozione e valutarne l'idoneità alla costruzione del progetto.
- *Allineamento tecnico:* Gli esiti di tali ricerche sono stati oggetto di discussione collegiale, tracciata nei *verbali interni*, permettendo al gruppo di livellare le conoscenze e validare le scelte preliminari.
- *Setup infrastrutturale:* Configurazione degli strumenti di supporto (es. Typst, GitHub Actions, Jira) e definizione delle norme di collaborazione.

Tali attività, seppur essenziali per la partenza, *non vengono rendicontate* nel monte ore di progetto. La rendicontazione economica ufficiale decorre dalla data di inizio dello Sprint 1.

== Riepilogo degli Sprint

=== Sprint 1
*Periodo:* dal 19/12/2025 al 03/01/2026

==== Attività Principali
Le attività svolte nel periodo di riferimento si sono focalizzate sul consolidamento della base metodologica e sull'analisi dei requisiti:

- *Pianificazione e Standardizzazione:*
  - Stesura delle bozze iniziali dei documenti cardine: #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#norme-di-progetto")[#def[Norme di Progetto]], #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-progetto")[#def[Piano di Progetto]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-qualifica")[#def[Piano di Qualifica]];
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
==== Prospetto Attività

#activity_table(
  (
    ("Stabilire struttura repository e setup strumenti", "Amministratore", "6:00", "6:30", "Completata"),
    ("Stesura introduzione AdR", "Amministratore", "1:00", "0:45","Completata"),
    ("Stesura scopo del documento AdR", "Amministratore", "1:00", "0:30","Completata"),
    ("Stesura prospettiva del prodotto", "Amministratore", "0:30", "0:30","Completata"),
    ("Stesura funzioni del prodotto", "Amministratore", "0:30", "0:45", "Completata"),

    ("Prima stesura NdP", "Amministratore", "4:00", "3:00", "Completata"),

    ("Stesura introduzione PdP", "Amministratore", "1:00", "1:00", "Completata"),
    ("Stesura sezione gestione rischi PdP", "Amministratore", "1:00", "1:00", "Completata"),
    ("Stesura sezione scopo PdP", "Amministratore", "1:30", "1:00", "Completata"),
    ("Stesura introduzione analisi dei rischi", "Amministratore", "1:30", "1:30", "Completata"),
    ("Aggiunta primi rischi PdP", "Amministratore", "1:00", "2:30", "Completata"),
    ("Stesura sezione pianificazione PdP", "Amministratore", "1:00", "1:00", "Completata"),

    ("Stesura introduzione PdQ", "Amministratore", "1:00", "1:00", "Completata"),
    ("Stesura scopo PdQ", "Amministratore", "0:30", "0:30", "Completata"),
    ("Stesura sezione qualità di processo PdQ", "Amministratore", "0:30", "0:30", "Completata"),
    ("Stesura sezione processi primari PdQ", "Amministratore", "1:30", "1:30", "Completata"),
    ("Stesura sezione processi secondari PdQ", "Amministratore", "1:30", "1:30", "Completata"),
    ("Stesura sezione processi organizzativi PdQ", "Amministratore", "1:00", "1:00", "Completata"),
    ("Stesura sezione qualitá di prodotto PdQ", "Amministratore", "1:00", "1:00", "Completata"),
    ("Stesura sezione automiglioramento PdQ", "Amministratore", "1:00", "1:00", "Completata"),

    ("Stesura caratteristiche degli utenti", "Analista", "1:00", "0:30", "Completata"),
    ("Definizione attori dei casi d'uso", "Analista", "1:00", "0:30", "Completata"),
    ("Stesura UC1-12", "Analista", "10:00", "9:00", "Completata"),
    ("Inizio stesura sezione requisiti","Analista", "3:00", "1:00", "Completata"),
    
    ("Stesura verbale riunione prima settimana", "Responsabile","1:30","1:30","Completata"),
    ("Stesura verbale riunione seconda settimana", "Responsabile","1:30","1:30","Completata"),
    ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile","3:00","3:00","Completata"),

    ("Verifica verbale riunione interna prima settimana", "Verificatore","0:15","0:30","Completata"),
    ("Verifica verbale riunione interna seconda settimana", "Verificatore","0:15","0:30","Completata"),
    ("Verifica AdR","Verificatore","6:00","4:00","Completata"),
    ("Verifica PdP","Verificatore","4:00","2:00","Completata"),
    ("Verifica NdP","Verificatore","1:30","1:00","Completata"),
  ),
  [Riassunto delle attivitá svolte durante lo Sprint 1]
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

===== Squilibri orari preventivati e reali
- *Responsabile:* Preventivato 6h, Consuntivo 6h 
- *Amministratore:* Preventivato 28h, Consuntivo 28h
- *Analista:* Preventivato 15h, Consuntivo 11h 
 - Questo poiché i membri che avrebbero dovuto ricoprire questo ruolo hanno dedicato più tempo alla stesura dei documenti di gestione piú che all'analisi dei requisiti, quindi hanno consumato ore da amministratore. Questo, tuttavia, non ha portato i membri coinvolti a sforare le ore preventivate in quanto il preventivo per questi membri era molto ottimistico sulla quantitá di tempo da dedicare al progetto per questo sprint.
- *Progettista:* Preventivato 0h, Consuntivo 0h
- *Programmatore:* Preventivato 0h, Consuntivo 0h
- *Verificatore:* Preventivato 12h, Consuntivo 8h
 - La verifica dei documenti si é dimostrata piú rapida del previsto.
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

===== Aggiornamento preventivo a finire RTB

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore rimanenti per RTB],
      text(fill: white, weight: "bold")[Differenze rispetto a preventivo dello sprint],
      text(fill: white, weight: "bold")[Preventivo a finire costi],
    ),

    [Responsabile], [15], [-],[€ 450],
    [Amministratore], [28], [-], [€ 700,00],
    [Analista], [52], text(fill: green)[-4 -> € -100],[€ 1.300,00],
    [Progettista], [14], [-],[€ 350,00],
    [Programmatore], [21], [-],[€ 315,00],
    [Verificatore], [34], text(fill: green)[-4 -> € -60],[€ 510,00],

    table.cell(fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*164*],
    table.cell(fill: luma(240))[#text(fill: green)[*-8 -> € -160*]],
    table.cell(fill: luma(240))[*€ 3.625,00*],
  ),
  caption: [Aggiornamento preventivo a finire sprint 1],
)

#pagebreak()

=== Sprint 2
*Periodo:* dal 03/01/2026 al 17/01/2026

==== Attività principali
Focus sul consolidamento della documentazione (versione per RTB) e accelerazione sull'Analisi dei Requisiti:
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

==== Prospetto Attività
#activity_table(
  (
    ("Stesura UC13-32","Analista", "20:00", "15:00", "Completata"),
    ("Stesura requisiti UC13-32","Analista", "5:00", "2:00", "Completata"),

    ("Ristesura NdP", "Amministratore", "4:30", "4:00", "Completata"),

    ("Ristesura PdP", "Amministratore", "5:00", "4:00", "Completata"),
    ("Aggiunta nuovi rischi PdP", "Amministratore", "1:30", "3:00", "Completata"),

    ("Aggiunta retrospettiva Sprint 1", "Amministratore", "0:15", "0:30", "Completata"),
    ("Aggiunta retrospettiva Sprint 2", "Amministratore", "0:15", "0:30", "Completata"),
    ("Revisione sezione automiglioramento PdQ", "Amministratore", "0:30", "3:00", "Completata"),

    ("Verifica verbale riunione interna prima settimana", "Verificatore","0:15","0:30","Completata"),
    ("Verifica verbale riunione interna seconda settimana", "Verificatore","0:15","0:30","Completata"),
    ("Verifica AdR","Verificatore","6:00","3:30","Completata"),
    ("Verifica PdP","Verificatore","4:00","2:30","Completata"),
    ("Verifica NdP","Verificatore","1:30","1:00","Completata"),

    ("Programmazione sezione agenti PoC", "Programmatore", "3:00", "0:00", "Rimandata a prossimo sprint"),
    ("Programmazione sezione server PoC", "Programmatore", "3:00", "0:00", "Rimandata a prossimo sprint"),

    ("Stesura verbale riunione prima settimana", "Responsabile","1:00","0:30","Completata"),
    ("Stesura verbale riunione seconda settimana", "Responsabile","1:00","0:30","Completata"),
    ("Stesura verbale riunione esterna", "Responsabile","1:00","0:30","Completata"),
    ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile","2:30","4:00","Completata"),
    ("Stesura diario di bordo", "Responsabile","0:30","0:30","Completata"),
  ),
  [Riassunto delle attivitá svolte durante lo Sprint 2]
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

===== Squilibri orari preventivati e reali
- *Responsabile:* Preventivato 6h, Consuntivo 6h 
- *Amministratore:* Preventivato 12h, Consuntivo 13h
 - L’impegno aggiuntivo è stato necessario per gestire le revisioni documentali e coordinare le attività di recupero.
- *Analista:* Preventivato 25h, Consuntivo 17h 
 - L'impegno dei vari membri é stato ridotto in vista della preparazione alla sessione di esami universitari in arrivo.
- *Progettista:* Preventivato 0h, Consuntivo 0h
- *Programmatore:* Preventivato 6h, Consuntivo 0h
 - Per motivi di studio, le attività di programmazione sono state posticipate allo Sprint 3, con un impatto diretto sulla pianificazione complessiva del progetto.
- *Verificatore:* Preventivato 12h, Consuntivo 8h
 - La verifica dei documenti si é dimostrata piú rapida del previsto.

===== Rischi Rilevati
Nel corso dello Sprint si sono concretizzati i seguenti rischi già censiti:
- #link(<RI1>)[#underline[[RI1]]]: riduzione della disponibilità operativa di alcuni membri, con impatto sulla capacità produttiva complessiva.
- #link(<RI4>)[#underline[[RI4]]]: difficoltà di coordinamento e comunicazione interna, che hanno rallentato il processo decisionale.
- #link(<RI5>)[#underline[[RI5]]]: disomogeneità nella qualità e nell’efficacia dei contributi, con impatto diretto sull’Analisi dei Requisiti.
- #link(<RCO5>)[#underline[[RCO5]]]: rischio di incoerenza documentale, emerso a seguito di modifiche non pienamente allineate agli standard definiti.
- #link(<RT6>)[#underline[[RT6]]]: Esposizioni credenziali AWS nei . env e .env example della directory PoC

In risposta, sono state pianificate azioni correttive coerenti con i piani di contingenza definiti, tra cui una riallocazione più mirata delle responsabilità, il rafforzamento delle attività di revisione incrociata e un controllo più stringente sull’aderenza alle Norme di Progetto.


===== Obiettivi di Recupero per lo Sprint Successivo
Per lo Sprint 3 il team individua come prioritari i seguenti obiettivi:
- completare e stabilizzare definitivamente l’Analisi dei Requisiti;
- avviare e completare lo sviluppo del Proof of Concept;
- migliorare il coordinamento operativo e l’efficacia delle revisioni interne.


===== Aggiornamento preventivo a finire RTB

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore rimanenti per RTB],
      text(fill: white, weight: "bold")[Differenze rispetto a preventivo dello sprint],
      text(fill: white, weight: "bold")[Preventivo a finire costi],
    ),

    [Responsabile], [9], [-],[€ 270,00],
    [Amministratore], [15], text(fill: red)[+1 -> € +20], [€ 300,00],
    [Analista], [35], text(fill: green)[-8 -> € -200],[€ 875,00],
    [Progettista], [14], [-],[€ 350,00],
    [Programmatore], [21], text(fill: green)[-6 -> € -90],[€ 315,00],
    [Verificatore], [26], text(fill: green)[-4 -> € -60],[€ 390,00],

    table.cell(fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*120*],
    table.cell(fill: luma(240))[#text(fill: green)[*-17 -> € -330*]],
    table.cell(fill: luma(240))[*€ 2.500,00*],
  ),
  caption: [Aggiornamento preventivo a finire sprint 2],
)
#pagebreak()


=== Sprint 3
*Periodo:* dal 18/01/2026 al 31/01/2026

==== Attività Principali
Le attività svolte nel periodo di riferimento si sono concentrate sulla chiusura e stabilizzazione degli artefatti normativi in vista della revisione RTB, nonché sull’avvio operativo del Proof of Concept.

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

==== Prospetto Attività
#activity_table(
  (
    ("Stesura UC33-38","Analista", "8:00", "6:00", "Completata"),
    ("Stesura requisiti UC33-38","Analista", "3:00", "2:00", "Completata"),
    ("Controllo e correzione UC e requisiti", "Analista", "5:00", "4:00", "Completata"),

    ("Aggiunta sezione a NdP", "Amministratore", "1:00", "1:30", "Completata"),
    ("Revisione AdR", "Amministratore", "2:00", "1:30", "Completata"),

    ("Orchestrator PoC", "Programmatore","2:00","2:30","Completata"),
    ("SpellChecker PoC", "Programmatore","1:30","1:00","Completata"),
    ("Creazione repo mock PoC", "Programmatore","0:30","0:30","Completata"),
    ("Parte Database PoC", "Programmatore","4:00","4:00","Completata"),
    ("Parte Server PoC", "Programmatore","4:00","4:00","Completata"),

    ("Verifica verbale riunione interna prima settimana", "Verificatore","0:15","0:30","Completata"),
    ("Verifica verbale riunione interna seconda settimana", "Verificatore","0:15","0:30","Completata"),
    ("Verifica AdR","Verificatore","1:00","1:30","Completata"),
    ("Verifica PdP","Verificatore","1:00","1:30","Completata"),
    ("Verifica NdP","Verificatore","1:30","1:00","Completata"),
    ("Verifica PoC","Verificatore","4:00","3:30","Completata"),

    ("Stesura verbale riunione prima settimana", "Responsabile","1:00","0:30","Completata"),
    ("Stesura verbale riunione seconda settimana", "Responsabile","1:00","0:30","Completata"),  
    ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile","4:30","4:30","Completata"),
    ("Stesura diario di bordo", "Responsabile","0:30","0:30","Completata"),
    ("Aggiunta task Jira", "Responsabile","0:30","0:30","Completata"),
    ("Sezione sprint 3 PdP", "Responsabile","0:30","1:00","Completata")

  ),
  [Riassunto delle attivitá svolte durante lo Sprint 3]
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

===== Squilibri orari preventivati e reali
- *Responsabile:* Preventivato 7h, Consuntivo 7h 
- *Amministratore:* Preventivato 3h, Consuntivo 3h
- *Analista:* Preventivato 16h, Consuntivo 14h 
 - Essendo questo sprint accavallato con la sessione di esami universitari, alcuni membri hanno dedicato meno tempo alla stesura dei documenti di analisi dei requisiti, nonostante fossero state giá ridotte a preventivo, la riduzione era stata troppo ottimistica.
- *Progettista:* Preventivato 0h, Consuntivo 0h
- *Programmatore:* Preventivato 12h, Consuntivo 12h
- *Verificatore:* Preventivato 8h, Consuntivo 8h
 - Notando che gli sprint precedenti avevano richiesto meno ore da verificatore, per questo sprint ne sono state preventivate meno, trovando, finalmente, una stima più aderente alla realtá.
 
===== Rischi Rilevati
Nel corso dello Sprint si sono manifestati i seguenti rischi già censiti:
- #link(<RI4>)[#underline[[RI4]]]: necessità di ulteriore allineamento su alcune scelte tecniche;
- #link(<RT3>)[#underline[[RT3]]]: complessità nella modellazione iniziale dei flussi decisionali del PoC.
- #link(<RI5>)[#underline[[RI5]]]: disomogeneità nella qualità dei contributi.

Le azioni di mitigazione pianificate sono state applicate tempestivamente, limitando l’impatto sui deliverable.

===== Obiettivi per lo Sprint Successivo
Per lo Sprint successivo il team si pone i seguenti obiettivi prioritari:
- completare il Proof of Concept in vista della revisione RTB;
- rifinire eventuali osservazioni emerse in fase di pre-review;
- preparare il materiale per la presentazione di revisione.


===== Aggiornamento preventivo a finire RTB

#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore rimanenti per RTB],
      text(fill: white, weight: "bold")[Differenze rispetto a preventivo dello sprint],
      text(fill: white, weight: "bold")[Preventivo a finire costi],
    ),

        [Responsabile], [2], [-],[€ 60,00],
    [Amministratore], [12], [-], [€ 240,00],
    [Analista], [21], text(fill: green)[-2 -> € -50],[€ 525,00],
    [Progettista], [14], [-],[€ 350,00],
    [Programmatore], [9],[-],[€ 135,00],
    [Verificatore], [18],[-],[€ 270,00],

    table.cell(fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*76*],
    table.cell(fill: luma(240))[#text(fill: green)[*-2 -> € -50*]],
    table.cell(fill: luma(240))[*€ 1.580,00*],
  ),
  caption: [Aggiornamento preventivo a finire sprint 3],
)
#pagebreak()

=== Sprint 4
*Periodo:* dal 01/02/2026 al 21/02/2026

==== Attività Principali
Le attività svolte nel periodo di riferimento sono state incentrate sulla conclusioni di tutte le attività normative e di sviluppo a scopo di candidarsi alla revisione RTB.

- *Piano di Progetto (PdP):*
  - aggiunta della sezione prospetto attività per tutti gli sprint
  - aggiunta del quarto sprint
  - verifica generale del documento in prospettiva della RTB

- *Norme di Progetto (NdP):*
  - inserimento delle procedure adottate per la stesura della documentazione
  - verifica generale del documento in vista della RTB

- *Piano di Qualifica (PdQ):*
  - inserimento test di accettazione
  - rielaborazione test di sistema
  - inserimento grafici per il quarto Sprint

- *Analisi dei Requisiti (AdR):*
  - modifica alla struttura dei requisiti e inserimento dei requisiti mancanti
  - inserimento dei casi d'uso mancanti e riscrittura di quelli malposti
  - modifica alla struttura dei diagrammi dei casi d'uso e inserimento di quelli mancanti
  - revisione e verifica finale 

- *Glossario:*
  - aggiunta di altri termini e controllo dello standard per tutti i documenti

- *Proof of Concept (PoC):*
  - ultimazione delle varie parti 
  - integrazione delle parti e verifica totale

==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.

#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 0, 6, 0),
    ([Berengan Riccardo], 0, 0, 0, 0, 5, 1),
    ([Martinello Riccardo], 0, 0, 0, 0, 5, 1),
    ([Sandu Antonio], 7, 1, 5, 0, 0, 0),
    ([Sgreva Andrea], 0, 0, 5, 0, 0, 1),
    ([Suar Alberto], 0, 2, 2, 0, 5, 3),
    ([Zago Alice], 0, 3, 3, 0, 0, 2),
  ),
  [Prospetto orario preventivato per lo Sprint 4],
)

==== Prospetto Attività
#activity_table(
  (
    ("Inserimento requisiti di qualità e di vincolo", "Analista", "2:00", "2:30", "Completata"),
    ("Inserimento della colonna della priorità dei requisiti","Analista", "1:30", "2:00", "Completata"),
    ("Aggiunta UC mancanti con relativi diagrammi e requisiti", "Analista", "3:30", "7:30", "Completata"),
    ("Aggiunta dei diagrammi mancanti ai casi d'uso esistenti", "Analista", "3:00", "6:00", "Completata"),
    ("Aggiunta dei requisiti mancanti ai casi d'uso esistenti", "Analista", "2:00", "4:00", "Completata"),
    ("Revisione del documento AdR", "Analista", "3:00", "5:00", "Completata"),

    ("Link al glossario aggiornati in AdR", "Amministratore", "1:00", "1:00", "Completata"),
    ("Aggiunta tabella attività sprint 1,2,3 a PdP", "Amministratore", "1:00", "1:00", "Completata"),
    ("Test di Accettazione e rielaborazione Test di Sistema", "Amministratore", "1:30", "2:00", "Completata"),
    ("Rielaborazione delle sezioni di procedure applicata nella stesura di AdR, PdP, PdQ in NdP", "Amministratore", "2:30", "3:00", "Completata"),

    ("Sviluppo sottosistemi PoC", "Programmatore","16:00","18:00","Completata"),
    ("Integrazione sottosistemi", "Programmatore","5:00","7:00","Completata"),

    ("Verifica verbale riunione interna prima settimana", "Verificatore","0:30","0:30","Completata"),
    ("Verifica verbale riunione interna seconda settimana", "Verificatore","0:30","0:30","Completata"),
    ("Verifica AdR","Verificatore","2:00","6:00","Completata"),
    ("Verifica PdP","Verificatore","2:00","3:30","Completata"),
    ("Verifica NdP","Verificatore","2:00","3:30","Completata"),
    ("Verifica PoC","Verificatore","1:00","2:00","Completata"),

    ("Stesura verbale riunione prima settimana", "Responsabile","1:00","1:00","Completata"),
    ("Stesura verbale riunione seconda settimana", "Responsabile","1:00","1:00","Completata"),  
    ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile","2:30","2:00","Completata"),
    ("Aggiunta task Jira", "Responsabile","0:30","1:00","Completata"),
    ("Aggiunto sprint 4 nel PdP", "Responsabile","2:00","2:00","Completata")
  ),
  [Riassunto delle attivitá svolte durante lo Sprint 4]
)

==== Consumo Tempo e Costi Effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate.

#sprint_table(
  (
    ([Basso Kevin], 0, 0, 3, 0, 6, 2),
    ([Berengan Riccardo], 0, 0, 0, 0, 6, 3),
    ([Martinello Riccardo], 0, 0, 0, 0, 6, 1),
    ([Sandu Antonio], 7, 1, 7, 0, 0, 1),
    ([Sgreva Andrea], 0, 0, 6, 0, 0, 2),
    ([Suar Alberto], 0, 2, 6, 0, 7, 4),
    ([Zago Alice], 0, 4, 5, 0, 0, 3),
  ),
  [Consuntivo orario effettivo per lo Sprint 4],
)

==== Retrospettiva dello Sprint 4

===== Valutazione del Periodo
Questo sprint nasce dal bisogno del team di concludere documentazione e PoC in vista della revisione RTB; essa era stata pianificata per il giorno 09/02/2026 tuttavia, a causa di ritardi accumulati nei precedenti sprint, è stato necessario posticipare la data di revisione al 23/02/2026. Essendo questo sprint non preventivato all'inizio delle attivitá, le ore di lavoro hanno sforato quelle preventivate per la revisione RTB.

Lo Sprint ha mostrato un andamento sporadico. Gli obiettivi sono stati raggiunti ma con un grande ritardo rispetto a quanto preventivato.

===== Stato di Avanzamento dei Deliverable
- *Documentazione Normativa:* PdP, NdP e PdQ sono arrivati a una versione stabile, sono pronti per la revisione RTB.
- *Analisi dei Requisiti:* Pronta per la revisione RTB.
- *Proof of Concept:* Concluso e pronto per la RTB.

===== Dinamiche del Team e Coordinamento
Il coordinamento interno di questo Sprint è stato molto compromesso da impegni riguardanti la sessione invernale di esami universitari e altri motivi personali. La distribuzione delle task è risultata tuttavia relativamente equilibrata e il processo di revisione ha portato alla conclusione delle attività previste con un ritardo di una settimana rispetto alla fine dello Sprint prevista.

===== Squilibri orari preventivati e reali
 - Data il ritardo della chiusura dello Sprint è naturale che le ore consuntive siano molte di più rispetto a quelle previste, specialmente tenedo conto del fatto che il team si è impegnato in maniera da concludere le attività per la RTB.
- *Responsabile:* Preventivato 7h, Consuntivo 8h 
- *Amministratore:* Preventivato 15h, Consuntivo 18h
- *Analista:* Preventivato 20h, Consuntivo 25h 
 - Conflitti interni ed errata stima delle attività da svolgere all'interno del documento di analisi dei requisiti hanno portato a un grande investimento di risorse per poterlo concludere.
- *Progettista:* Preventivato 0h, Consuntivo 0h
- *Programmatore:* Preventivato 20h, Consuntivo 26h
 - Problemi incontrati nello sviluppo del PoC hanno portato a un elevato impegno da parte dei membri per poter risolverli entro le scadenze fissate.
- *Verificatore:* Preventivato 8h, Consuntivo 13h
 
===== Rischi Rilevati
Nel corso dello Sprint si sono manifestati i seguenti rischi, molti emersi per via del PoC e impegni didattici esterni al progetto:
- #link(<RT4>)[#underline[[RT4]]]: durante lo sviluppo del PoC ci si è imbattuti in problemi di allucinazione da parte dei LLM utilizzati.
- #link(<RT8>)[#underline[[RT8]]]: nella fase di integrazione il team ha dovuto risolvere i problemi emersi nel provare a collegare le varie parti sviluppate.
- #link(<RI1>)[#underline[[RI1]]]: a causa della sessione di esami molti membri del team hanno dovuto ridurre drasticamente il tempo dedicato al progetto.
- #link(<RI2>)[#underline[[RI2]]]: è successo che alcuni membri non fossero disponibili a causa di problemi di salute, rallentando l'andamento generale. 
- #link(<RI4>)[#underline[[RI4]]]: la mancata comunicazione efficace su come svolgere alcune attività o il conflitto di idee hanno portato a un importante rallentamento e lavoro aggiuntivo.
- #link(<RI5>)[#underline[[RI5]]]: è stata riscontrata una disomogeneità del lavoro svolto da parte dei membri durante lo sprint.
- #link(<RCO1>)[#underline[[RCO1]]]: la fine delle attività è stata troppo ottimistica.
- #link(<RCO3>)[#underline[[RCO3]]]: attività di revisione hanno portato a lavoro aggiuntivo conseguendo in uno sforamento delle ore preventivate. 

===== Obiettivi per lo Sprint Successivo
Per lo Sprint successivo il team si pone i seguenti obiettivi prioritari:
- iniziare le attività di progettazione
- aumentare il ritmo di lavoro data la fine della sessione

#pagebreak()
===== Aggiornamento preventivo a finire RTB
#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore rimanenti per RTB],
      text(fill: white, weight: "bold")[Differenze rispetto a preventivo dello sprint],
      text(fill: white, weight: "bold")[Preventivo a finire costi],
    ),

    [Responsabile], [-5], [-],[€ -150,00],
    [Amministratore], [5], text(fill: red)[+1 ->€ +20], [€ 100,00],
    [Analista], [-6], text(fill: red)[+12 -> € +300],[€ -150,00],
    [Progettista], [14], [-],[€ 350,00],
    [Programmatore], [-16], text(fill: red)[+4 -> € +60],[€ -240,00],
    [Verificatore], [2], text(fill: red)[+8 -> € +120],[€ 30,00],

    table.cell(fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*-6*],
    table.cell(fill: luma(240))[#text(fill: red)[*+25 -> € +500*]],
    table.cell(fill: luma(240))[*€ -60,00*],
  ),
  caption: [Aggiornamento preventivo a finire sprint 4],
)

=== Considerazioni finali per il preventivo della RTB
Con lo Sprint 4 si concludono gli Sprint dedicati alla fase di RTB, e con questo il preventivo per il periodo verso la RTB. Come si nota dalla tabella sopra, data la natura straordinaria di questo sprint, alcuni ruoli hanno avuto un consumo di ore molto superiore a quanto preventivato, portando a un aumento dei costi rispetto a quanto previsto. Tuttavia, è importante sottolineare che questo aumento è stato necessario per garantire la conclusione delle attività in vista della RTB, e che senza questo impegno aggiuntivo non sarebbe stato possibile raggiungere gli obiettivi prefissati. Da notare come il ruolo del progettista non si è rivelato utile al raggiungimento degli obiettivi RTB, quindi nessuno ha mai ricoperto quel ruolo durante questa fase.

Riguardo ai costi, il preventivo di 4690.00€ è stato sforato di poco (60,00€), lo sforamento é molto mitigato dal fatto che un ruolo che era stato preventivato non é stato utilizzando, questo ha portato a un risparmio di 350,00€ che ha mitigato lo sforamento causato dagli altri ruoli.


Dal prossimo Sprint inizieranno le attività in vista della PB.
#pagebreak()
==== Riassunto utilizzo orario RTB
#figure(
  table(
    fill: (col, row) => if row == 0 { luma(64%) } else { white },
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.header(
      text(fill: white, weight: "bold")[Ruolo],
      text(fill: white, weight: "bold")[Ore preventivate],
      text(fill: white, weight: "bold")[Ore consumate],
      text(fill: white, weight: "bold")[Differenze rispetto a preventivo dello sprint],
    ),

    [Responsabile], [21], [26],text(fill: red)[+5],
    [Amministratore], [56], [51], text(fill: green)[-5],
    [Analista], [63], [69],text(fill: red)[+6],
    [Progettista], [14], [0], text(fill: green)[-14],
    [Programmatore], [21], [37], text(fill: red)[+16],
    [Verificatore], [42], [40], text(fill: green)[-2],

    table.cell(fill: luma(240))[*Totale RTB*],
    table.cell(fill: luma(240))[*224*],
    table.cell(fill: luma(240))[*223*],
    table.cell(fill: luma(240))[*-1*],
  ),
  caption: [Tabella riassuntiva utilizzo ore per RTB],
)

=== Consumo orario per membro RTB
#sprint_table(
  (
  ([Kevin],      7,  8,  8,  0,  10,5,  38),
 ([Riccardo B.],0,    5,  6,  0,  10,  5, 26),
 ([Riccardo M.],0,    5,  4,  0,  6,  5,  20),
 ([Antonio],    7,  6,  15,0,  0,     3, 31),
 ([Andrea],     0,    5,  11,0,  0,     5, 21),
 ([Alberto],    6,  13,12,0,  11, 8,  50),
 ([Alice],      6,  9,  13,0,  0,     9, 37,)
 ),
 [Consumo orario per membro RTB],
)
#pagebreak()
=== Ore rimanenti per PB
La seguente tabella riporta le ore rimanenti di ogni componente per ruolo per completare la PB.
#sprint_table(
  (
  ([Kevin],       0,  5,  4,  17, 10, 16, 52),
  ([Riccardo B.], 7,  8,  6,  17, 10, 16, 64),
  ([Riccardo M.], 7,  8,  8,  17, 14, 16, 70),
  ([Antonio],     0,  7,  -3, 17, 20, 18, 59),
  ([Andrea],      7,  8,  1,  17, 20, 16, 69),
  ([Alberto],     1,  0,  0,  17, 9,  13, 40),
  ([Alice],       1,  4,  -1, 17, 20, 12, 53), 

  ),
  [Ore rimanenti per PB per membro],
)   

=== Sprint 5
*Periodo:* dal 22/02/2026 al 07/03/2026

==== Attività Principali
Le attività svolte nel periodo di riferimento sono state incentrate sulla progettazione per il corretto avvio della PB e la rifinitura del documento AdR secondo le correzioni segnalate dal Professor. Cardin dopo il colloquio della revisione RTB.

- *Piano di Progetto(PdP):*
  - Aggiunta del quinto sprint
- *Norme di Progetto (NdP):*
  - Modifica definizione del ruolo di verificatore
- *Piano di Qualifica (PdQ):*
  - aggiunta del cruscotto di valutaizone per il quinto sprint
- *Analisi dei Requisiti (AdR)*:
  - Modifica del documento basate sulle correzioni segnalate dal Professor. Cardin.
- *Specifica Tecnica (ST):*
  - prima stesura del documento comprensiva di introduzione e tecnologie utilizzate
  - Scrittura di alcuni lati dell'architettura a microservizi
#pagebreak()

==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.
#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 8, 0, 0),
    ([Berengan Riccardo], 7, 0, 1, 7, 0, 2),
    ([Martinello Riccardo], 0, 0, 0, 10, 0, 4),
    ([Sandu Antonio], 0, 0, 0, 9, 0, 3),
    ([Sgreva Andrea], 0, 0, 3, 7, 0, 2),
    ([Suar Alberto], 0, 0, 0, 7, 0, 0),
    ([Zago Alice], 0, 0, 1, 6, 0, 0),
  ),
  [Prospetto orario preventivato per lo Sprint 5],
)
#TODO("ore consuntivate e attività svolte")

==== Prospetto attività
#activity_table(
  (
    ("Modifica del documento AdR in conformità alle correzioni proposte", "Analista", "2:00", "2:00", "Completata"),
    ("Verifica delle modifiche al documento AdR", "Verificatore", "1:00","0:45", "Completata"),
    ("Verifica delle modifiche in NdP", "Verificatore", "1:00", "0:45", "Completata"),
    ("Scrittura del diario di bordo del giorno 2026-03-11", "Analista", "1:00", "1:00", "Completata"),
    ("Prima stesura del documento ST", "Analista", "6:00", "1:00", "Completata"),
    ("Scrittura in ST dell'architettura a microsevizi, sezione relativa alla persistenza", "Progettista", "2:00", "0:00", "Rimandata causa ritardo nella palestra"),
    ("Scrittura in ST dell'architettura a microsevizi, sezione relativa al backend", "Progettista", "8:00", "0:00", "Rimandata causa ritardo nella palestra"),    
    ("Scrittura in ST dell'architettura a microsevizi, sezione relativa agli agenti LLM", "Progettista", "14:00", "0:00", "Rimandata causa ritardo nella palestra"),
    ("Progettazione di livello 3 del C4 model per il microservizio di Analisi", "Progettista", "12:00", "0:00", "Rimandata causa ritardo nella palestra"),
    ("Progettazione di livello 3 del C4 model per il microservizio di Gestione degli Account", "Progettista","7:00", "0:00", "Rimandata causa ritardo nella palestra"),
    ("Progettazione di livello 3 del C4 model per il frontend", "Progettista","6:00", "0:00", "Rimandata causa ritardo nella palestra"),
    ("Stesura verbale riunione prima settimana", "Responsabile","1:00","1:00","Completata"),
    ("Stesura verbale riunione seconda settimana", "Responsabile","1:00","1:00","Completata"),  
    ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile","2:30","2:00","Completata"),
    ("Aggiunta task Jira", "Responsabile","0:30","1:00","Completata"),
    ("Aggiunto sprint 5 nel PdP", "Responsabile","2:00","2:00","Completata"),
    ("Verifica verbale riunione interna prima settimana", "Verificatore","0:30","0:15","Completata"),
    ("Verifica verbale riunione interna seconda settimana", "Verificatore","0:30","0:15","Completata"),
    ("Verifica ST","Verificatore","2:00","0:00","Rimandata causa ritardo nella palestra")
  ),
  [Riassunto delle attività svolte durante lo sprint 5]
)

==== Consumo Tempo e Costi Effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate.

#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 0, 0, 0),
    ([Berengan Riccardo], 7, 0, 1, 0, 0, 0),
    ([Martinello Riccardo], 0, 0, 0, 0, 0, 2),
    ([Sandu Antonio], 0, 0, 0, 0, 0, 0),
    ([Sgreva Andrea], 0, 0, 2, 0, 0, 0),
    ([Suar Alberto], 0, 0, 0, 0, 0, 0),
    ([Zago Alice], 0, 0, 1, 0, 0, 0),
  ),
  [Consuntivo orario effettivo per lo Sprint 5],
)

==== Retrospettiva dello sprint 5
===== Valutazione del Periodo
Questo sprint è stato caratterizzato dall'inizio ufficiale della PB e dalla conseguente fase di progettazione. É stato necessario un cambio di passo, derivante dal ritardo accumulato durante la RTB. Lo sprint è stato caratterizzato da una quantità maggiore di incontri di allineamento e progettazione collettiva, in modo da rendere più costate il lavoro dei membri del gruppo, che ha comunque presentato alcune lacune e scadenze non rispettate.

===== Stato di Avanzamento dei Derivable 
- *Ndp :* è stato modificata la descrizione del ruolo di verificatore.
- *Specifica Tecnica :* prima stesura del documento.
- *AdR* : il documento è stato modificato seconod le correzioni proposte, ora in versione stabile.

===== Dinamiche del Team e Coordinamento
Il coordinamento interno di questo sprint è migliorato rispetto ai precedenti. Ciò è stato raggiunto tramite la divisione in sottogruppi, invece di singoli, per lo svolgimento del lavoro assegnato. Inoltre il lavoro svolto è stato monitorato in maniera costante dal responsabile, assegnando il nuovo lavoro da svolgere non appena venisse finito il precedente. Nonostante ciò è mancato il rispetto di alcune scadenze.

===== Squilibri orari 
- Dato il grande quantitativo di ore dedicate allo studio individuale (palestra) necessarie per la progettazione, le ore preventivate erano molto maggiori delle ore produttive consuntivate. La distribuzione delle task è risultata comunque equilibrata e per il momento sono stati raggiunti gli obiettivi previsti.
- *Responsabile:* Preventivato 7h, Consuntivo 7h
- *Amministratore:* Preventivato 0h, Consuntivo 0h
- *Analista:* Analista 4h, Consuntivo 4h
- *Progettista:* Preventivato 49h, Consuntivo 0h
- *Programmatore:* Preventivato 0h, Consuntivo 0h
- *Verificatore:* Preventivato 2h, Consuntivo 2h

===== Rischi rilevati

===== Obiettivi per lo Sprint Successivo
Per lo sprint successivo il team si pone i seguenti obiettvi prioritari:
- Terminare le attività di progettazione
- Iniziare le attvità di codifica

===== Aggiornamento preventivo a finire PB
#preventivo_a_finire(
  (
    //               Resp  Amm  Anal  Prog  Cod  Ver
    ([Kevin],           0,   5,   4,   17,  10,  16),
    ([Riccardo B.],     0,   8,   5,   17,  10,  16),
    ([Riccardo M.],     7,   8,   8,   17,  14,  14),
    ([Antonio],         0,   7,  -3,   17,  20,  18),
    ([Andrea],          7,   8,  -1,   17,  20,  16),
    ([Alberto],         1,   0,   0,   17,   9,  13),
    ([Alice],           1,   4,  -2,   17,  20,  12),
  ),
  [Consuntivo Sprint],
  (7,0,4,49,0,2),  // preventivo
  (7,0,3,20,0,2),  // consuntivo ← nuovo argomento
)
#pagebreak()

=== Sprint 6
*Periodo:* dal 14/03/2026 al 21/03/2026

==== Attività Principali
Le attività svolte nel periodo di riferimento si sono concentrate sulla progettazione di dettaglio (struttura a microservizi, diagrammi C3, scelte architetturali) in previsione dell'inizio imminente della codifica.

- *Specifica Tecnica (ST):*
  - Completamento dell'analisi dei tool mancanti e redazione della loro documentazione.
  - Definizione dell'architettura esagonale (porte e gateway) e componenti C3.

==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.
#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 7, 0, 0),
    ([Berengan Riccardo], 0, 0, 0, 5, 0, 0),
    ([Martinello Riccardo], 2, 0, 0, 5, 0, 0),
    ([Sandu Antonio], 0, 0, 0, 4, 0, 0),
    ([Sgreva Andrea], 0, 0, 0, 4, 0, 0),
    ([Suar Alberto], 0, 0, 0, 7, 0, 0),
    ([Zago Alice], 0, 0, 0, 6, 0, 0),
  ),
  [Prospetto orario preventivato per lo Sprint 6],
)

==== Prospetto attività
#activity_table(
  (
    ("Completare l'analisi dei tool mancanti e redigerne la documentazione", "Progettista", "8:00", "10:00", "Completata"),
    ("Progettazione dell'implementazione e configurazione OAuth", "Progettista", "5:00", "7:00", "Completata"),
    ("Completamento del componente C3 e relative integrazioni interne", "Progettista", "7:00", "9:00", "Completata"),
    ("Progettazione dell'impacchettamento del repository e definizione persistenza", "Progettista", "6:00", "8:00", "Completata"),
    ("Progettazione dei gateway e delle porte di ingresso per l'architettura esagonale", "Progettista", "5:00", "7:00", "Completata"),
    ("Progettazione del meccanismo di zipping e del flusso dati", "Progettista", "4:00", "6:00", "Completata"),
    ("Rifinitura diagrammi C3/C4 e allineamento decisioni architetturali", "Progettista", "3:00", "7:00", "Completata"),
    ("Gestione riunioni e allineamento Sprint 6", "Responsabile", "2:00", "2:00", "Completata"),
    ("Verifica documentazione ST e coerenza requisiti architetturali", "Verificatore", "0:00", "4:00", "Completata"),
    ("Verifica diagrammi C3/C4 e consistenza delle interfacce", "Verificatore", "0:00", "5:00", "Completata"),
    ("Review PR e controllo conformità alle convenzioni", "Verificatore", "0:00", "5:00", "Completata"),
  ),
  [Riassunto delle attività svolte durante lo sprint 6]
)

==== Consumo Tempo e Costi Effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate.

#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 8, 0, 0),
    ([Berengan Riccardo], 0, 0, 0, 8, 0, 2),
    ([Martinello Riccardo], 2, 0, 0, 10, 0, 6),
    ([Sandu Antonio], 0, 0, 0, 8, 0, 3),
    ([Sgreva Andrea], 0, 0, 0, 8, 0, 3),
    ([Suar Alberto], 0, 0, 0, 6, 0, 0),
    ([Zago Alice], 0, 0, 0, 6, 0, 0),
  ),
  [Consuntivo orario effettivo per lo Sprint 6],
)

==== Retrospettiva dello sprint 6
===== Valutazione del Periodo
Le attività di questo sprint si sono concentrate sulla progettazione di dettaglio, chiarendo tutti i principali pattern (Port/Adapter, microservizi) prima di avviare la codifica. Il team è riuscito a definire in maniera chiara gli strati dell'applicazione.

===== Dinamiche del Team e Coordinamento
Si sono presentati dei problemi di coordinamento, e di ritardo nello svolgimento di alcune attività. Nonostante ciò, sono stati raggiunti gli obiettivi prefissati.

===== Squilibri orari preventivati e reali
- Nonostante i ritardi logistici e i problemi di coordinamento emersi, grazie al tempestivo re-allineamento del gruppo, le ore rendicontate hanno potuto coincidere col monte ore preventivato.
- *Responsabile:* Preventivato 2h, Consuntivo 2h
- *Progettista:* Preventivato 38h, Consuntivo 38h

===== Rischi Rilevati
Nel corso dello Sprint si sono manifestati i seguenti rischi già censiti:
- #link(<RI4>)[#underline[[RI4]]]: Difficoltà di coordinamento e parziali attriti comunicativi per l'allineamento sulle scelte architetturali dei pattern impostati.

===== Obiettivi per lo Sprint Successivo
Per lo Sprint successivo il team si pone i seguenti obiettivi prioritari:
- Chiudere le decisioni progettuali sui pattern in Specifica Tecnica.
- Iniziare lo sviluppo dei microservizi.

#preventivo_a_finire(
  (
    //               Resp  Amm  Anal  Prog  Cod  Ver
    ([Kevin],           0,   5,   4,   9,  10,  16),
    ([Riccardo B.],     0,   8,   5,   9,  10,  14),
    ([Riccardo M.],     5,   8,   8,   7,  14,  8),
    ([Antonio],         0,   7,  -3,   9,  20,  15),
    ([Andrea],          7,   8,  -1,   9,  20,  13),
    ([Alberto],         1,   0,   0,   11,   9,  13),
    ([Alice],           1,   4,  -2,   11,  20,  12),
  ),
  [Consuntivo Sprint],
  (7,0,4,49,0,2),  // preventivo
  (2,0,3,54,0,14),  // consuntivo ← nuovo argomento
)
#pagebreak()

=== Sprint 7
*Periodo:* dal 21/03/2026 al 28/03/2026

==== Attività Principali
Focus volto alla validazione dei pattern architetturali per i diagrammi C3/C4 e l'inizio effettivo della codifica del prodotto finale.

- *Implementazione e Struttura:*
  - Completamento dei diagrammi C3 e C4 definitivi sui vari layer.
  - Avvio sviluppo e allineamento sulla gestione del codice.

==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo.

#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 4, 4, 2),
    ([Berengan Riccardo], 0, 0, 0, 3, 2, 1),
    ([Martinello Riccardo], 2, 0, 0, 5, 0, 2),
    ([Sandu Antonio], 0, 0, 0, 5, 0, 1),
    ([Sgreva Andrea], 0, 0, 0, 4, 0, 1),
    ([Suar Alberto], 0, 0, 0, 3, 3, 1),
    ([Zago Alice], 0, 0, 0, 4, 2, 0),
  ),
  [Prospetto orario preventivato per lo Sprint 7 (Totale: 49 ore)],
)

==== Prospetto attività
#activity_table(
  (
    ("Allineamento architetturale domain/entity/factory del microservizio analisi", "Progettista", "6:00", "6:30", "Completata"),
    ("Definizione model Analysis e flussi del provider", "Progettista", "5:00", "5:00", "Completata"),
    ("Revisione struttura repository (src-only) e convenzioni build", "Progettista", "3:00", "2:30", "Completata"),
    ("Aggiornamento diagrammi C3/C4 su Value Object ed Entity", "Progettista", "8:00", "8:00", "Completata"),
    ("Consolidamento capitoli ST su dominio analisi e tool", "Progettista", "6:00", "6:00", "Completata"),

    ("Implementazione userId/repoURL/personalAccessToken VO con test", "Programmatore", "2:30", "2:30", "Completata"),
    ("Implementazione commitHash/branchName/analysisId VO con test", "Programmatore", "2:00", "2:00", "Completata"),
    ("Implementazione encrypted-pat/github-id VO con test", "Programmatore", "1:30", "1:30", "Completata"),
    ("Implementazione Analysis, GitHubAnalysis, FactoryCommand e Factory", "Programmatore", "2:30", "2:30", "Completata"),
    ("Implementazione AnalysisProvider e analysis model", "Programmatore", "1:30", "1:30", "Completata"),
    ("Fix tooling build/test (ESM→CJS uuid, rootDir, path check-test-symmetry)", "Programmatore", "1:00", "1:00", "Completata"),

    ("Coordinamento branch, merge PR e avanzamento sprint", "Responsabile", "2:00", "2:00", "Completata"),

    ("Code review PR principali (#2, #4, #5, #6, #7, #8, #9, #10, #12, #13, #15, #16)", "Verificatore", "4:00", "4:30", "Completata"),
    ("Verifica pipeline CI/CD (GitHub Actions, lint, format, coverage, Docker)", "Verificatore", "2:00", "2:30", "Completata"),
    ("Verifica verbale interno del 18 marzo e controlli CONTRIBUTING", "Verificatore", "2:00", "2:00", "Completata")
  ),
  [Riassunto delle attività svolte durante lo sprint 7 (Preventivo: 49h, Consuntivo: 50h)]
)

==== Consumo Tempo e Costi Effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate.

#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 4, 4, 2),
    ([Berengan Riccardo], 0, 0, 0, 3, 2, 2),
    ([Martinello Riccardo], 2, 0, 0, 6, 0, 3),
    ([Sandu Antonio], 0, 0, 0, 6, 0, 1),
    ([Sgreva Andrea], 0, 0, 0, 5, 0, 1),
    ([Suar Alberto], 0, 0, 0, 1, 3, 0),
    ([Zago Alice], 0, 0, 0, 3, 2, 0),
  ),
  [Consuntivo orario effettivo per lo Sprint 7],
)

==== Retrospettiva dello sprint 7
===== Valutazione del Periodo
Le decisioni finali sull'architettura, la stesura in ST dei modelli C3/C4 e la rivisitazione dei tool hanno chiuso l'ultima fase legata prettamente alla progettazione ad alto e medio livello. Ha preso avvio effettivo la parte di programmazione.

===== Dinamiche del Team e Coordinamento
È stata posta una grande attenzione sulla condivisione delle informazioni sui pattern implementativi e sull'utilizzo coerente degli strumenti di versionamento.

===== Squilibri orari preventivati e reali
- Le ore preventivate e le ore consuntivate coincidono, in quanto l'esatta definizione e ripartizione dei compiti per l'avvio della programmazione era stata ben pianificata in precedenza.
- *Responsabile:* Preventivato 2h, Consuntivo 2h
- *Progettista:* Preventivato 23h, Consuntivo 23h
- *Programmatore:* Preventivato 11h, Consuntivo 11h
- *Verificatore:* Preventivato 2h, Consuntivo 2h

===== Rischi Rilevati
Nel corso dello Sprint si è prestata particolare attenzione a evitare i seguenti rischi già censiti:
- #link(<RT8>)[#underline[[RT8]]]: per evitare disomogeneità o conflitti tra i membri durante i merge del codice si è ribadito il corretto standard procedurale di push e pull per Git.

===== Obiettivi per lo Sprint Successivo
Per lo Sprint successivo il team si pone i seguenti obiettivi prioritari:
- Sviluppo del microservizio analisi.
- Sviluppo del frontend.
- Sviluppo del microservizio agenti.
- Sviluppo del microservizio autenticazione.


#preventivo_a_finire(
  (
    //               Resp  Amm  Anal  Prog  Cod  Ver
    ([Kevin],           0,   5,   4,   5,  6,  14),
    ([Riccardo B.],     0,   8,   5,   6,  8,  12),
    ([Riccardo M.],     3,   8,   8,   7,  8,  5),
    ([Antonio],         0,   7,  -3,   3,  20,  14),
    ([Andrea],          7,   8,  -1,   4,  20,  12),
    ([Alberto],         1,   0,   0,   10,   6,  13),
    ([Alice],           1,   4,  -2,   8,  18,  12),
  ),
  [Consuntivo Sprint],
  (7,0,4,49,0,2),  // preventivo
  (2,0,0,28,11,9),  // consuntivo ← nuovo argomento
)
#pagebreak()

=== Sprint 8
*Periodo:* dal 28/03/2026 al 04/04/2026

==== Attività Principali
Le attività pianificate per questo sprint si concentrano sull'avanzamento della codifica e sul consolidamento delle scelte architetturali.

- *Specifica Tecnica (ST) e norme di codifica*:
  - Stesura delle linee guida di sviluppo (file contributing, regole sui branch e test coverage).
  - Documentazione delle scelte architetturali in ST, motivando le scelte implementative e i pattern utilizzati.
- *Sviluppo Backend:*
  - Continuazione sviluppo del codice dei microservizi (Value Object, Entity, Domain Services) con configurazione delle GitHub Actions per il testing.
- *Sviluppo Frontend:*
  - Avvio e implementazione delle prime bozze dell'interfaccia Frontend.
- *Progettazione AWS e Agenti:*
  - Definizione del flusso delle Step Functions.
  - Integrazione degli agenti LLM.
  - Implementazione delle Lambda.

==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.
#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 2, 3, 2),
    ([Berengan Riccardo], 0, 0, 0, 2, 5, 1),
    ([Martinello Riccardo], 0, 0, 0, 3, 8, 2),
    ([Sandu Antonio], 0, 0, 0, 4, 5, 3),
    ([Sgreva Andrea], 3.5, 0, 0, 4, 3, 4),
    ([Suar Alberto], 0, 4, 0, 5, 5, 2),
    ([Zago Alice], 0, 0, 0, 2, 4, 2),
  ),
  [Prospetto orario preventivato per lo Sprint 8 (Totale: 78h 30m)],
)

==== Prospetto attività
#activity_table(
  (
    ("Coordinamento merge PR backend/documentazione", "Responsabile", "1:30", "1:30", "Completata"),
    ("Pianificazione sprint e riallocazione ore di verifica", "Responsabile", "1:00", "1:00", "Completata"),
    ("Allineamento branch develop e chiusura milestone", "Responsabile", "1:00", "1:00", "Completata"),

    ("NdP v1.1.0: recepimento direttive di codifica", "Amministratore", "1:00", "1:00", "Completata"),
    ("PdP v1.4.0: aggiunta sprint e prospetti", "Amministratore", "1:00", "1:00", "Completata"),
    ("PdQ v1.1.0: correzione testing e consolidamento", "Amministratore", "0:45", "0:45", "Completata"),
    ("AdR v1.1.0: modifiche richieste da Cardin", "Amministratore", "0:45", "0:45", "Completata"),
    ("Glossario v1.1.0 + aggiornamento sito PB", "Amministratore", "0:30", "0:30", "Completata"),

    ("ST v0.3.0: revisione errori e link ai componenti", "Progettista", "3:00", "3:00", "Completata"),
    ("ST v0.4.0: introduzione e command applicativi", "Progettista", "4:00", "4:00", "Completata"),
    ("ST v0.4.0: avvio architettura di deployment", "Progettista", "3:00", "3:00", "Completata"),
    ("ST v0.5.0: value object per Account Microservice", "Progettista", "3:00", "3:00", "Completata"),
    ("Refactor in Sub-Application Services", "Progettista", "3:00", "3:00", "Completata"),
    ("Helper service per mapper e confini StartAnalysis", "Progettista", "3:00", "3:00", "Completata"),
    ("Pulizia artefatti architetturali e allineamento Ubiquitous Language", "Progettista", "3:00", "3:00", "Completata"),

    ("Feature entities: user.entity e github-token.entity + test", "Programmatore", "3:00", "3:00", "Completata"),
    ("Aggiunta password-hash.vo + test", "Programmatore", "2:00", "2:00", "Completata"),
    ("GitHub DTO/ports e github-token-factory + test", "Programmatore", "2:30", "2:30", "Completata"),
    ("Use-case servizi GitHub con test", "Programmatore", "2:30", "2:30", "Completata"),
    ("DTO/services JWT e BCrypt + fix linting", "Programmatore", "2:30", "2:30", "Completata"),
    ("Register services e fix postgres adapter/dependency", "Programmatore", "3:30", "3:30", "Completata"),
    ("Login/registration services + docker", "Programmatore", "3:00", "3:00", "Completata"),
    ("Delete service + delete controller + test", "Programmatore", "3:00", "3:00", "Completata"),
    ("Git request result/mapper/enum/port + start-analysis-command + test", "Programmatore", "3:30", "3:30", "Completata"),
    ("Credential model + mock PAT password + PAT Password VO", "Programmatore", "2:30", "2:30", "Completata"),
    ("MongoDBAdapter + IGitCredentialWritePort + GitHub interaction + final fix test/package", "Programmatore", "5:00", "5:00", "Completata"),

    ("Verifica PR #32 (AdR) e coerenza requisiti", "Verificatore", "2:00", "2:00", "Completata"),
    ("Verifica PR #33 (PdQ) e consistenza dei test", "Verificatore", "1:30", "1:30", "Completata"),
    ("Verifica PR #34 e #37 (PdP), inclusa revisione ore verificatore", "Verificatore", "2:00", "2:30", "Completata"),
    ("Verifica PR #35, #38, #39 (ST) e assegnazione verifier", "Verificatore", "3:00", "3:30", "Completata"),
    ("Verifica PR #36 (NdP) e aggiornamento membri", "Verificatore", "2:00", "2:00", "Completata"),
    ("Verifica PR backend #17-#33 su test e coerenza dominio", "Verificatore", "3:00", "3:00", "Completata"),
    ("Verifica fix CI/lint/check-test-symmetry", "Verificatore", "2:30", "2:30", "Completata")
  ),
  [Riassunto delle attività svolte durante lo sprint 8 (Preventivo: 78h 30m, Consuntivo: 79h 30m)]
)

==== Consumo Tempo e Costi Effettivi (Consuntivo)
La tabella sottostante illustra le ore produttive effettivamente rendicontate.

#sprint_table(
  (
    ([Basso Kevin], 0, 0, 0, 2, 3, 2),
    ([Berengan Riccardo], 0, 0, 0, 2, 5, 2),
    ([Martinello Riccardo], 0, 0, 0, 3, 8, 2),
    ([Sandu Antonio], 0, 0, 0, 4, 5, 3),
    ([Sgreva Andrea], 3.5, 0, 0, 4, 3, 4),
    ([Suar Alberto], 0, 4, 0, 6, 5, 2),
    ([Zago Alice], 0, 0, 0, 1, 4, 2),
  ),
  [Consuntivo orario effettivo per lo Sprint 8],
)

==== Retrospettiva dello sprint 8
===== Valutazione del Periodo
Questo sprint è stato caratterizzato da un cruciale cambio di rotta architetturale che ha ridefinito la struttura del microservizio di analisi per quanto riguarda la parte di agenti. Il team aveva inizialmente esplorato l'adozione di un'architettura Serverless basata su AWS Step Functions e Lambda. Tuttavia, valutata l'eccessiva complessità infrastrutturale e i tempi di sviluppo incompatibili con le scadenze della Product Baseline, il gruppo ha deciso di scartare la soluzione Serverless. Si è optato per mantenere l'orchestrazione all'interno dell'esagono del microservizio di analisi. Per quanto riguarda gli altri aspetti del microservizio di analisi e il microservizio credenziali/account, lo sviluppo del codice sta proseguendo secondo le tempistiche previste.

===== Squilibri orari preventivati e reali
L'imprevista necessità di studiare l'ambiente Serverless e la successiva riprogettazione dell'architettura interna hanno generato un maggiore consumo di ore da "Progettista" e un minore consumo di ore da "Programmatore". Per quanto riguarda il ruolo di "Verificatore" e "Amministratore" c'è stato un minore consumo di ore rispetto al preventivo, in quanto questi ruoli sono stati utilizzati meno di quanto previsto.
- *Responsabile:* Preventivato 3.5h, Consuntivo 3.5h
- *Amministratore:* Preventivato 4h, Consuntivo 1.5h
- *Progettista:* Preventivato 17h, Consuntivo 23h
- *Programmatore:* Preventivato 26h, Consuntivo 22h
- *Verificatore:* Preventivato 14h, Consuntivo 10h

===== Rischi Rilevati
Nel corso dello Sprint si sono manifestati o sono stati sfiorati i seguenti rischi già censiti:
- #link(<RT1>)[#underline[[RT1]]] e #link(<RT3>)[#underline[[RT3]]]: L'inesperienza con architetture cloud complesse (Serverless) stava per far deragliare la progettazione. Il rischio è stato mitigato riconducendo il sistema a pattern noti (NestJS interno).
- #link(<RCO1>)[#underline[[RCO1]]]: La stima dei tempi per l'integrazione di Step Functions era stata sottovalutata. Il team ha cambiato rotta in tempo, evitando ritardi significativi.
- #link(<RCO4>)[#underline[[RCO4]]]: La Propronente non si è presentata al colloquio di revisione, impedendo un feedback diretto. Il team ha comunque proseguito con le attività, ma resta il rischio di non essere allineati sulle aspettative dell'azienda.
- #link(<RI4>)[#underline[[RI4]]]: Fisiologici conflitti comunicativi durante la progettazione, risolti con successo tramite mediazione e confronto tecnico.

===== Obiettivi per lo Sprint Successivo
Per lo Sprint successivo, il team si pone i seguenti obiettivi prioritari:
- Iniziare lo sviluppo pratico (codifica) del microservizio di analisi lato agenti e l'integrazione effettiva degli Adapter per i tool.
- Completare la stesura della Specifica Tecnica con le nuove decisioni architetturali.
- Affrontare la riunione di allineamento con l'azienda Proponente mostrando un'architettura consolidata.
- Proseguire lo sviluppo del Frontend collegandolo in modo basilare ai Backend.

===== Aggiornamento preventivo a finire PB
#preventivo_a_finire(
  (
    //               Resp  Amm  Anal  Prog  Cod  Ver
    ([Kevin],           0,   5,   4,   3,  3,  12),
    ([Riccardo B.],     0,   8,   5,   4,  3,  10),
    ([Riccardo M.],     3,   8,   8,   4,  0,  3),
    ([Antonio],         0,   7,  -3,   -1,  15,  11),
    ([Andrea],          3,5,   8,  -1,   0,  17,  8),
    ([Alberto],         1,   -4,   0,   4,   1,  11),
    ([Alice],           1,   4,  -2,   7,  14,  10),
  ),
  [Consuntivo Sprint],
  (3.5,4,0,17,26,14),  // preventivo
  (3.5,1.5,0,23,22,10),  // consuntivo ← nuovo argomento
)
#pagebreak()

=== Sprint 9
*Periodo:* dal 04/04/2026 al 11/04/2026
==== Attività Principali
Le attività pianificate per questo sprint si concentrano sull'avanzamento della codifica e sul consolidamento delle nuove scelte architetturali.

- *Sviluppo Microservizio Analisi:*
  - Completamento degli use case per il recupero dei report, finalizzazione della logica di clonazione della repository e sviluppo dei test di integrazione con MongoDB.
  - Fine sviluppo e implementazione dei Value Object per i report delle analisi.
  - Sviluppo focalizzato sull'implementazione pratica degli Agenti LLM (Agente Codice, Agente Documentazione e base dell'Agente Sicurezza).
  - Sviluppo della logica di conversione (mapping) all'interno degli Adapter dei tool per standardizzare in un formato comprensibile per l'Application Service.
- *Sviluppo Microservizio Credenziali/Account:*
  - Sviluppo dei controller mancanti per le fasi di Login e Registrazione e sistemazione finale del Adapter per il collegamento al database.
- *Sviluppo Front-end*
- *Progettazione e Specifica Tecnica (ST):*
  - Progettazione dei diagrammi delle classi (livello codice) per i vari componenti mancanti.
  - Stesura della Specifica Tecnica sulle classi e i componenti implementati.

==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.


#sprint_table(
  (
    ([Basso Kevin], 0, 5, 0, 0, 6, 8),
    ([Berengan Riccardo], 0, 0, 0, 4, 9, 1), 
    ([Martinello Riccardo], 0, 0, 0, 4, 4, 4),
    ([Sandu Antonio], 0, 2, 0, 2, 7, 4),
    ([Sgreva Andrea], 3.5, 0, 0, 5, 7, 3),
    ([Suar Alberto], 0, 3, 0, 2, 6, 3),
    ([Zago Alice], 0, 0, 0, 0, 10, 7),
  ),
  [Prospetto orario preventivato per lo Sprint 9 (Totale: 109h 30m)],
)

==== Prospetto attività
#activity_table(
  (
    ("Coordinamento merge train PR backend e documentazione", "Responsabile", "1:30", "1:30", "Completata"),
    ("Pianificazione sprint, assegnazioni e chiusura milestone", "Responsabile", "2:00", "2:00", "Completata"),

    ("PdP v1.5.0: retrospettiva Sprint 8 e apertura Sprint 9", "Amministratore", "2:00", "2:00", "Completata"),
    ("Aggiornamento prospetti ore/consuntivi in PdP", "Amministratore", "2:00", "2:00", "Completata"),
    ("Stesura verbale interno del 04/04 e pubblicazione", "Amministratore", "2:00", "2:00", "Completata"),
    ("Normalizzazione sezioni testuali e fix refusi documentali", "Amministratore", "2:00", "2:00", "Completata"),
    ("Gestione verifier nei PR documentali (alice/suar/antonio)", "Amministratore", "2:00", "2:00", "Completata"),

    ("ST v0.6.0: scelta tool analisi sicurezza", "Progettista", "3:00", "3:00", "Completata"),
    ("ST v0.7.0: definizione componenti Microservizio Analisi", "Progettista", "3:00", "3:00", "Completata"),
    ("Aggiornamento diagrammi PlantUML code analysis VO", "Progettista", "3:00", "3:00", "Completata"),
    ("Definizione Strategy/Authorization pattern per analisi", "Progettista", "3:00", "3:00", "Completata"),
    ("Progettazione flusso clone repository + integrazione MongoDB", "Progettista", "2:30", "2:30", "Completata"),
    ("Progettazione contratti sessione ed eccezioni (fix_port/exceptions)", "Progettista", "2:30", "2:30", "Completata"),

    ("Implementazione VO findings base (coverage-percentage, path, description, severity) + UT", "Programmatore", "4:30", "4:30", "Completata"),
    ("Implementazione VO findings estesi (error, file-coverage, dependency, coverage) + UT", "Programmatore", "4:30", "4:30", "Completata"),
    ("Implementazione VO findings sicurezza (static-analysis, owasp, documentation, secret) + UT", "Programmatore", "5:00", "5:00", "Completata"),
    ("Implementazione Analysis report entities (documentation/code report) + unit test", "Programmatore", "5:00", "5:00", "Completata"),
    ("Implementazione save port (GitHubAnalysis, code-report) + unit test", "Programmatore", "4:00", "4:00", "Completata"),
    ("Implementazione CodeAgentAdapter e Agent Port", "Programmatore", "4:00", "4:00", "Completata"),
    ("Implementazione OrchestratorService e bootstrap cartella agents", "Programmatore", "4:30", "4:30", "Completata"),
    ("Prima implementazione Documentation Agent e tuning adapter", "Programmatore", "5:00", "5:00", "Completata"),
    ("Flusso PAT completo: save/update/delete, validator e controllers", "Programmatore", "4:30", "4:30", "Completata"),
    ("Git clone application service + AnalysisController + integrazione MongoDB", "Programmatore", "4:00", "4:00", "Completata"),
    ("Auth hardening: JWT guard, secret-jwt-string, ISessionSave/ISessionDelete", "Programmatore", "4:00", "4:00", "Completata"),

    ("Verifica PR VO findings (#36-#40, #42, #48, #49, #52, #54, #57, #58)", "Verificatore", "6:00", "6:00", "Completata"),
    ("Verifica PR report entities e save port (#62, #63, #65)", "Verificatore", "4:30", "4:30", "Completata"),
    ("Verifica PR orchestrator/agents/code-agent (#61, #64) e fix correlati", "Verificatore", "4:30", "4:30", "Completata"),
    ("Verifica PR PAT flow/controllers (#34, #41, #43, #50, #56)", "Verificatore", "5:00", "5:00", "Completata"),
    ("Verifica PR auth/session/exceptions (#17, #18, #19, #59)", "Verificatore", "4:00", "4:00", "Completata"),
    ("Verifica PR account controllers/logout/e2e/delete (#12, #13, #14, #15, #16)", "Verificatore", "3:00", "3:00", "Completata"),
    ("Verifica PR documentazione ST/PdP/verbali (#40, #41, #42, #43, #44)", "Verificatore", "3:00", "3:00", "Completata"),
  ),
  [Riassunto delle attività svolte durante lo sprint 9 (Preventivo: 109h 30m, Consuntivo: 109h 30m)]
)
==== Attività Principali
Le attività pianificate per questo sprint si concentrano sull'avanzamento della codifica e sul consolidamento delle nuove scelte architetturali.

- *Sviluppo Microservizio Analisi:*
  - Completamento degli use case per il recupero dei report, finalizzazione della logica di clonazione della repository e sviluppo dei test di integrazione con MongoDB.
  - Fine svilippo e implementazione dei Value Object per i report delle analisi.
  - Sviluppo focalizzato sull'implementazione pratica degli Agenti LLM (Agente Codice, Agente Documentazione e base dell'Agente Sicurezza).
  - Sviluppo della logica di conversione (mapping) all'interno degli Adapter dei tool per standardizzare in un formato comprensibile per l'Application Service.
- *Sviluppo Microservizio Credenziali/Account:*
  - Sviluppo dei controller mancanti per le fasi di Login e Registrazione e sistemazione finale del Adapter per il collegamento al database.
- *Sviluppo Front-end*
- *Progettazione e Specifica Tecnica (ST):*
  - Progettazione dei diagrammi delle classi (livello codice) per i vari componenti mancanti.
  - Stesura della Specifica Tecnica sulle classi e i componenti implementati.


#sprint_table(
  (
    ([Basso Kevin], 0, 5, 0, 0, 6, 9),
    ([Berengan Riccardo], 0, 0, 0, 3, 10, 1), 
    ([Martinello Riccardo], 0, 0, 0, 5, 3, 4),
    ([Sandu Antonio], 0, 2, 0, 2, 7, 3),
    ([Sgreva Andrea], 3.5, 0, 0, 4, 8, 3),
    ([Suar Alberto], 0, 3, 0, 2, 5, 4),
    ([Zago Alice], 0, 0, 0, 1, 10, 6),
  ),
  [Consuntivo orario effettivo per lo Sprint 9],
)

==== Retrospettiva dello sprint 9
===== Valutazione del Periodo
Questo sprint si è concluso con un forte avanzamento per quanto riguarda la codifica e l'integrazione. Il focus principale del team è stato lo sviluppo pratico dei microservizi ed in particolare dello sviluppo degli agenti, il testing degli endpoint e l'inizio delle complesse procedure di deployment in ambiente AWS.

===== Stato di Avanzamento dei Deliverable
- *Microservizio Account/Credenziali*: Lo sviluppo può considerarsi concluso ed è stata terminata anche la relativa parte di Specifica Tecnica.

- *Microservizio Analisi (Agenti)*:
  - *Agente Documentazione*: Lo sviluppo è concluso, manca solo il salvataggio dell'entity nel database
  - *Agente Codice*: Il codice è a un ottimo punto, ma sono emersi problemi bloccanti legati all'esaurimento dei token durante l'analisi dei report di coverage
  - *Agente Sicurezza*: Lo sviluppo ha accumulato un leggero ritardo ma è in fase di conclusione

- *Deployment*: È in corso la configurazione su AWS (AppRunner, ECS, RDS), un'attività che si è rivelata più complessa del previsto, specialmente per la gestione dei servizi esterni nella stessa rete

- *Frontend*: Il codice è stato caricato su un branch dedicato ed è in corso l'attività di collegamento con gli endpoint e la stesura dei grafici per la Specifica Tecnica

===== Squilibri orari preventivati e reali
Poiché non era stato redatto un preventivo formale a inizio settimana, le stime del preventivo sono state adattate basandosi sul lavoro effettivamente svolto (consuntivo) per mantenere la coerenza dei documenti.  

- *Responsabile:* Preventivato 3.5h, Consuntivo 3.5h
- *Amministratore:* Preventivato 7h, Consuntivo 1.5h
- *Progettista:* Preventivato 10h, Consuntivo 10h
- *Programmatore:* Preventivato 48h, Consuntivo 48h
- *Verificatore:* Preventivato 16h, Consuntivo 16h

===== Rischi Rilevati
Nel corso dello Sprint si sono manifestati o sono stati sfiorati i seguenti rischi già censiti:
- #link(<RT5>)[#underline[[RT5]]] Costi e Limiti di Utilizzo: Il limite di token in output è stato ripetutamente superato dall'Agente Codice a causa della dimensione dei report generati, rendendo difficile il testing nonostante il passaggio a modelli superiori. 
- #link(<RI4>)[#underline[[RI4]]] e #link(<RI5>)[#underline[[RI5]]] Conflitti interni e disomogeneità: Si sono verificate importanti frizioni comunicative e incomprensioni dovute a uno sbilanciamento produttivo e a divergenze su cosa debba essere considerato "lavoro rendicontabile".
- #link(<RCO1>)[#underline[[RCO1]]] Errata stima dei tempi: Si è evidenziata un'incongruenza tra il tempo speso per la progettazione di componenti semplici e la necessità di completare task critici come gli agenti, portando a ritardi sulle milestone pattuite.

===== Obiettivi per lo Sprint Successivo
Per lo Sprint successivo, il team si pone i seguenti obiettivi prioritari:
- Finire lo sviluppo dell'Agente Codice, dell'Agente Sicurezza e dell'Agente Documentazione, oltre all'implementazione dell'orchestrazione e degli adapter per i tool.
- Concludere il deployment dell'architettura in AWS (AppRunner, ECS, RDS).
- Concludere il collegamento delle interfacce frontend con gli endpoint dei microservizi e completare la generazione dei grafici/diagrammi da inserire nella Specifica Tecnica.
- Revisionare e terminare la Specifica Tecnica in tutte le sue parti, gettare le basi per la stesura del Manuale Utente e sistemare definitivamente tabelle e consuntivi nel Piano di Progetto (PdP).

===== Aggiornamento preventivo a finire PB
#preventivo_a_finire(
  (
    //               Resp  Amm  Anal  Prog  Cod  Ver
    ([Kevin],           0,   0,   4,   3,  -3,  3),
    ([Riccardo B.],     0,   8,   5,   1,  -7,  9),
    ([Riccardo M.],     3,   8,   8,   -1,  -3,  -1),
    ([Antonio],         0,   5,  -3,   -3,  8,  8),
    ([Andrea],          0,   8,  -1,   -4,  9,  5),
    ([Alberto],         1,   -7,   0,   2,   -4,  7),
    ([Alice],           1,   4,  -2,   6,  4,  4),
  ),
  [Consuntivo Sprint],
  (3.5,4,0,17,26,14),  // preventivo
  (3.5,1.5,0,23,22,10),  // consuntivo ← nuovo argomento
)
#pagebreak()

//KEVIN

=== Sprint 10
*Periodo:* dal 11/04/2026 al 18/04/2026
==== Attività Principali
Le attività pianificate per questo sprint si concentrano sul completamento del codice e dei test per l'MVP, completamento documenti e preparazione alla presentazione finale.

- *Sviluppo Microservizio Analisi:*
  - Completamento sviluppo agenti ed entitá annesse, completamento test di integrazione e unitari, completamento logica di mapping degli adapter.
  - Completamento integrazioen database, salvataggio dei report e query per il recupero delle analisi.
- *Sviluppo Microservizio Credenziali/Account:*
  - Ultimi ritocchi e test.
- *Sviluppo Front-end*
  - Integrazione con i controller dei microservizi.
- *Progettazione e Specifica Tecnica (ST):*
  - Ultimazione di tutti i diagrammi mancanti e completamento della stesura della Specifica Tecnica.


==== Prospetto Consumo Tempo (Preventivo)
La seguente tabella riporta la pianificazione oraria per ruolo definita all'inizio dell'iterazione.

#sprint_table(
  (
    ([Basso Kevin], 4, 0, 0, 2, 1, 5),
    ([Berengan Riccardo], 0, 4, 0, 1, 0, 5), 
    ([Martinello Riccardo], 0, 5, 0, 1, 1, 0),
    ([Sandu Antonio], 0, 0, 0, 0, 6, 0),
    ([Sgreva Andrea], 0, 0, 0, 1, 6, 0),
    ([Suar Alberto], 0, 0, 0, 0, 0, 4),
    ([Zago Alice], 0, 4, 0, 2, 2, 6),
  ),
  [Prospetto orario preventivato per lo Sprint 10 (Totale: 60 ore)],
)

==== Prospetto attività
#activity_table(
  (
    ("Coordinamento backlog e merge train di sprint", "Responsabile", "1:00", "1:30", "Completata"),
    ("Pianificazione sprint e assegnazione task puntuali", "Responsabile", "1:30", "1:00", "Completata"),
    ("Allineamento milestone e chiusura avanzamento", "Responsabile", "1:30", "1:30", "Completata"),

    ("Inizio stesura Sprint 10 nel PdP", "Amministratore", "2:00", "2:30", "Completata"),
    ("Refinement task più puntuali nel prospetto attività", "Amministratore", "2:30", "3:00", "Completata"),
    ("Rese coerenti tabelle con preventivi e consuntivi", "Amministratore", "2:30", "2:30", "Completata"),
    ("Pulizia sezioni e contenuti obsoleti di documentazione", "Amministratore", "2:00", "2:00", "Completata"),
    ("Aggiornamento didascalie e riepiloghi sprint", "Amministratore", "4:00", "3:00", "Completata"),

    ("Definizione contratti getAnalysis/getAll e struttura response DTO", "Progettista", "1:30", "2:00", "Completata"),
    ("Revisione code-report schema e mapping entity/model", "Progettista", "2:00", "1:30", "Completata"),
    ("Rifinitura orchestrator per integrazione code-save port", "Progettista", "1:30", "1:30", "Completata"),
    ("Allineamento pattern risposta agenti con entity di dominio", "Progettista", "2:00", "2:00", "Completata"),

    ("Avvio implementazione getAnalysis", "Programmatore", "2:00", "2:30", "Completata"),
    ("Aggiunta GET su analysisId", "Programmatore", "2:30", "2:00", "Completata"),
    ("Implementazione feature getAll", "Programmatore", "2:30", "2:30", "Completata"),
    ("Aggiunta code-save port in OrchestratorService", "Programmatore", "2:00", "2:00", "Completata"),
    ("Aggiunta save-code-report model e fix code-agent-report entity", "Programmatore", "2:30", "2:00", "Completata"),
    ("Aggiunta saveCodeReport su mongo-adapter e test dedicati", "Programmatore", "2:00", "2:30", "Completata"),
    ("Fix analysis module, cleanup file/json, remove import inutili", "Programmatore", "2:30", "2:30", "Completata"),

    ("Merge/rebase da develop e risoluzione conflitti", "Verificatore", "3:00", "3:30", "Completata"),
    ("Verifica PR #67 code-agent e conflitti tra branch agenti", "Verificatore", "3:30", "3:00", "Completata"),
    ("Verifica PR #68/#69 docs-agent-response e saveDocReport", "Verificatore", "3:00", "3:00", "Completata"),
    ("Verifica PR #72/#73 code-agent-report e docs-agent-integration", "Verificatore", "3:00", "3:30", "Completata"),
    ("Verifica PR #74/#75 schema+analysis_update (dto/tests/mocks)", "Verificatore", "3:30", "3:00", "Completata"),
    ("Verifica PR #76 code-report-save-port e regressione finale", "Verificatore", "4:00", "4:00", "Completata"),
  ),
  [Riassunto delle attività svolte durante lo Sprint 10 (Preventivo: 60h, Consuntivo: 60h)]
)

#sprint_table(
  (
    ([Basso Kevin], 4, 0, 0, 3, 0, 5),
    ([Berengan Riccardo], 0, 4, 0, 0, 0, 6), 
    ([Martinello Riccardo], 0, 5, 0, 2, 0, 0),
    ([Sandu Antonio], 0, 0, 0, 0, 6, 0),
    ([Sgreva Andrea], 0, 0, 0, 0, 7, 0),
    ([Suar Alberto], 0, 0, 0, 0, 0, 4),
    ([Zago Alice], 0, 4, 0, 2, 3, 5),
  ),
  [Prospetto orario consuntivato per lo Sprint 10 (Totale: 60 ore)],
)

#pagebreak()

==== Preventivo a finire PB
#preventivo_a_finire(
  (
    //               Resp  Amm  Anal  Prog  Cod  Ver
    ([Kevin],           -4,   0,   4,   0,  -3,  -2),
    ([Riccardo B.],     0,   4,   5,   1,  -7,  3),
    ([Riccardo M.],     3,   3,   8,   -3,  -3,  -1),
    ([Antonio],         0,   5,  -3,   -3,  2,  8),
    ([Andrea],          0,   8,  -1,   -4,  2,  5),

    ([Alberto],         1,   -7,   0,   2,   -4,  3),
    ([Alice],           1,   0,  -2,   4,  1,  -1),
  ),
  [Preventivo a finire post sprint 10],
  (3.5,4,0,17,26,14),  // preventivo
  (3.5,1.5,0,23,22,10),  // consuntivo ← nuovo argomento
)

=== Conclusioni Finali
#TODO("parole")
#pagebreak()
#sprint_table_con_preventivo(
  (  //              Resp  Amm  Anal  Prog  Cod  Ver
      //              7     13    12   17   20    21
    ([Basso Kevin], 11, 13, 8, 17, 23, 23),
    ([Berengan Riccardo], 7, 9, 7, 16, 27, 18), 
    ([Martinello Riccardo], 4, 10, 4, 20, 23, 22),
    ([Sandu Antonio], 7, 7, 15, 20, 18, 14),
    ([Sgreva Andrea], 7, 5, 13, 21, 18, 16),
    ([Suar Alberto], 6, 20, 12, 15, 24, 18),
    ([Zago Alice], 6, 13, 14, 13, 19, 22),
  ),["Totale spesa per progetto"]
)