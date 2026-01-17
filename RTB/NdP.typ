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
#let versione = "v0.3.0"
#set heading(numbering: "1,1,1")

#titlePage("Norme di Progetto", versione)
#set page(numbering: "1", header: header("Norme di Progetto"), footer: footer())

#let history = (
  (
    "2026/01/15",
    "0.3.0",
    "Aggiunta prima versione sezione documenti",
    members.kevin,
    members.suar
  ),
  (
    "2026/01/09",
    "0.2.1",
    "Correzioni minori e miglioramenti alla documentazione",
    members.kevin,
    members.martinello,
  ),
  (
    "2026/01/02",
    "0.2.0",
    "Arricchimento con standard industriali, norme di codifica dettagliate e integrazioni progetto-specifiche",
    members.martinello,
    members.suar,
    members.kevin
  ),
  (
    "2025/12/28",
    "0.1.0",
    "Rilascio iniziale con norme, processi e strumenti aggiornati",
    members.martinello,
    members.suar,
    members.kevin
  ),
  (
    "2025/12/20",
    "0.0.1",
    "Prima bozza iniziale",
    members.martinello,
    members.suar,
    members.kevin
  ),
)

#versionTable(history)

#indice()

#indiceTabelle()

#pagebreak()

= Introduzione

== Scopo del documento
Il presente documento definisce le norme, le convenzioni, gli strumenti e i processi che i membri del gruppo #def("Skarab Group") sono tenuti a rispettare durante l'intero ciclo di vita del progetto #def("Code Guardian"). L'obiettivo è garantire uniformità, qualità e manutenibilità dei prodotti realizzati, facilitando la collaborazione interna e la comunicazione con l'esterno.

== Scopo del prodotto
#def("Code Guardian") è una piattaforma software progettata per l'analisi automatizzata della qualità del codice e della documentazione di #def("repository") #def("GitHub"). Il sistema mira a supportare sviluppatori e manager fornendo metriche dettagliate e feedback semantico tramite agenti intelligenti.

== Glossario
I termini tecnici o ambigui sono definiti nel glossario di progetto (`RTB/glossario.yml`).
Nel testo, i termini importanti possono essere evidenziati utilizzando la macro `#def`, questo permette di rendere la parola un link al glossario presente nel sito del progetto.

== Standard Industriali e Riferimenti
Il progetto adotta standard industriali riconosciuti per garantire qualità, conformità e best practices nel ciclo di vita del software. Di seguito i principali riferimenti:

- *IEEE 830 - Standard for Software Requirements Specifications*: Guida alla documentazione dei requisiti funzionali e non funzionali, inclusa la classificazione (obbligatori, desiderabili, opzionali) e l'uso di casi d'uso.

 -Ultimo accesso: 2026/01/02.

- *IEEE 1016 - Recommended Practice for Software Design Descriptions*: Fornisce linee guida per descrivere l'architettura software, inclusi diagrammi UML e design pattern (es. MVC, Singleton).

 -Ultimo accesso: 2026/01/02.

- *IEEE 829 - Standard for Software and System Test Documentation*: Definisce la struttura per piani di test, casi di test, procedure e report per unit, integration e system testing.

 -Ultimo accesso: 2026/01/02.
- *ISO/IEC 12207 - Software Life Cycle Processes*: Framework internazionale per processi di acquisizione, fornitura, sviluppo, operazione, manutenzione e disposal del software, supportando approcci iterativi e gestione del rischio.

 -Ultimo accesso: 2026/01/02.

Questi standard sono integrati nei processi di analisi, progettazione, verifica e documentazione per assicurare tracciabilità e qualità.

= Processi Primari

== Processo di Fornitura
La fornitura é il processoadottato dal fornitore del prodotto finale, il quale scop è quello di acquisire i requisiti del cliente e fornire il prodotto conforme a tali requisiti.
Tale processo comprende una fase iniziale di studio dei requisiti che il progetto dovrà soddisfare.
Da questa analisi deriva il materiale necessario per avviare la contrattazione dei requisiti con il #def("proponente") e per comunicare una pianificazione preliminare delle attività, includendo una stima della data di consegna.
Il processo di fornitura si compone di molte attività, tra cui:
- Inizializzazione della fornitura 
  - Momento in cui il fornitore analizza le richieste del proponente e valuta la sua capacità di soddisfarle.
- Preparazione della proposta
  - Redazione della proposta tecnica ed economica in risposta al capitolato.
- Negoziazione e contrattazione
  - Discussione e definizione dei termini contrattuali con il proponente.
- Pianificazione della fornitura
  - Viene stabilita l'organizzazione del lavoro, le risorse necessarie, il modello di ciclo di vita da adottare oltre che la valutazione dei rischi.
- Esecuzione della fornitura
  - Realizzazione del prodotto secondo i requisiti concordati.
- Valutazione della fornitura
  - Verifica della conformità del prodotto ai requisiti e alla qualità attesa, questo viene fatto mantenendosi in costante contatto con la proponente.
- Consegna del prodotto
  - Rilascio formale del prodotto al proponente, accompagnato dalla documentazione necessaria.

=== Strumenti di supporto
- *#def("GitHub")*: Per il versionamento del codice e la gestione del repository.
- *#def("Telegram")*, *#def("Discord")*: Per la comunicazione interna del team.
- *#def("Draw.io")*: Per la creazione di diagrammi UML e altri schemi visivi.
- *#def("Jira")*: Per la gestione delle attività e il monitoraggio del progresso.
- *#def("VS Code")*: Per la scrittura del codice e la redazione dei documenti in #def("Typst").
- *gmail*: Per la comunicazione con il proponente.
- *#def("Google calendar")*: Perta dei requisiti funzionali e non funzionali, classificati in obbliga la pianificazione delle riunioni e delle scadenze.
- *#def("Microsoft Teams")*: Per le riunioni virtuali e la collaborazione in tempo reale.
=== Documentazione del Progetto
In questa sezione si elencano tutti i documenti che #def("Skarab Group") produrrà durante il ciclo di vita del progetto #def("Code Guardian"). I documenti sono tutti scritti utilizzando il linguaggio #def("typst") per garantire una formattazione uniforme e professionale.

==== AdR - Analisi dei Requisiti
Documento che raccoglie e specifica i requisiti funzionali e non funzionali del sistema software da sviluppare, basato sul capitolato fornito dal #def("Proponente"). Questo documento contiene:
- Introduzione al progetto e obiettivi.
- Lista degli attori coinvolti.
- Lista dei casi d'uso.
 - Essi sono descitti in UCx.y.z. ...
  - UC é un acronimo che sta per usecase, x indica il numero del caso d'uso, y,z e i numeri successivi sono i sotto casi d'uso, ovvvero inclusioni, composizioni o estensioni del caso d'uso principale.
- Lista dei requisiti funzionali e non funzionali, classificati in obbligatori, desiderabili e opzionali.
  #TODO("come sono acronimizzati i requisiti?")

==== Glossario
Documento che definisce i termini tecnici e specifici utilizzati nel progetto, per garantire una comprensione comune tra tutti i membri del team e gli stakeholder esterni. questo documento serve a fornire definizioni chiare e univoche per evitare ambiguità. Oltre che il documento in sé per s'é, il glossario é consultabile tramite una pagina nel sito web di Skarab Group. Questo permette interattivitá e link esterni all'interno di ogni documento che compone la documentazione di progetto. Per convenzione, un termine sará un link al glossario sul sito solo la prima volta che compare all'interno di un documento, assumento una lettura ordinata del documento stesso da parte del lettore.

==== NdP - Norme di Progetto
Documento che definisce il #def("WoW"),le norme, le convenzioni, gli strumenti e i processi che i membri del gruppo devono seguire durante il ciclo di vita del progetto.

==== PdP - Piano di Progetto
Documento che descrive l'organizzazione del lavoro, le risorse, il modello di ciclo di vita adottato, la pianificazione delle attività divise per #def("sprint") e la valutazione dei rischi associati al progetto. Inoltre, il PdP riporta attivamenre il monitoraggio del lavoro di ogni componente del gruppo, con l'obiettivo di garantire il rispetto delle tempistiche e le ore di lavoro previste per i vari ruoli.

==== PdQ - Piano di Qualifica
Documento che definisce le strategie, le metodologie e le attività di #def("verifica") e #def("validazione") per garantire che i prodotti del progetto soddisfino i requisiti specificati. Include la definizione delle metriche di qualità, i piani di test e le procedure di controllo qualità.


==== Verbali delle Riunioni
Sono documenti che riportano in modo sintetico e chiaro i punti discussi durante le riunioni, con le decisioni prese e i compiti assegnati. Ogni verbale include:
- Data, ora e luogo della riunione.
- Elenco dei partecipanti.
- Ordine del giorno.
- Sintesi delle discussioni.
- Decisioni prese e azioni da intraprendere.

I verbali possono essere di 2 tipi:
- *Verbali Interni*: Riunioni tra i membri del gruppo per coordinare le attività di progetto.
- *Verbali Esterni*: Riunioni con il #def("Proponente") esterni per discutere requisiti, progressi e feedback.

==== Diario di bordo
Documento che permette un allineamento settimanale con il professor #members.tullio, in cui il redattiore riporta riporta:
- Attività svolte durante la settimana.
- Problemi incontrati e soluzioni adottate.
- Pianificazione delle attività per la settimana successiva.


Tutti i documenti devono avere un formato uniforme e professionale stutturato in questo modo:
- Prima pagina con logo e nome del team e versione attuale del documento.
- Intestazioni e piè di pagina con titolo del documento e numero di pagina.
- Indice automatico.
- Indice delle tabelle (se presenti).
- Contenuto.


#figure(
  table(
    columns: (2fr, 2fr, 3fr, 1.5fr),
    align: horizon,
    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.even(row) {
      luma(220)
    } else {
      none
    },
    stroke: none,

    // Header
    text(white)[*Documento*],
    text(white)[*Redattori*],
    text(white)[*Destinatari*],
    text(white)[*Uso*],

    // Rows
    [Lettera di Presentazione],
    [Responsabile],
    [Proponente, #members.cardin, #members.tullio, Skarab Group],
    [Esterno],

    [AdR – Analisi dei Requisiti],
    [Analisti],
    [Proponente, #members.cardin, #members.tullio, Skarab Group],
    [Esterno],

    [Glossario],
    [Tutti i membri del gruppo],
    [Stakeholder interni ed esterni],
    [Esterno],

    [NdP – Norme di Progetto],
    [Responsabili di processo],
    [Skarab Group, #members.cardin, #members.tullio],
    [Interno],

    [PdP – Piano di Progetto],
    [Project Manager],
    [Proponente, #members.cardin, #members.tullio, Skarab Group],
    [Esterno],

    [PdQ – Piano di Qualifica],
    [Responsabili Qualità],
    [Skarab Group, #members.cardin, #members.tullio, Proponente],
    [Esterno],

    [Verbali delle Riunioni],
    [Segretario della riunione],
    [Proponente (se esterni), #members.cardin, #members.tullio, Skarab Group],
    [Interno / Esterno],
  ),
  caption: [Tabella riepilogativa dei documenti di progetto],
)

== Processo di Sviluppo

Il Processo di Sviluppo adottato da Skarab Group definisce l’insieme delle attività necessarie alla realizzazione del prodotto software, dalla definizione dei requisiti fino alla consegna e accettazione del sistema finale.
Tale processo è conforme allo standard ISO/IEC 12207:1995 e garantisce un approccio strutturato, tracciabile e orientato alla qualità.

=== Attività del Processo di Sviluppo

Il processo comprende le seguenti macro-attività:
==== Definizione del processo: 
Selezione del ciclo di vita del software più idoneo in base alla complessità, agli obiettivi e ai vincoli del progetto.

==== Analisi dei Requisiti: 
Individuazione e formalizzazione delle esigenze dell’utente finale e dei vincoli imposti dal proponente, includendo funzionalità, requisiti di qualità e limitazioni progettuali.

==== Progettazione dell’architettura di sistema: 
identificazione delle componenti hardware e software necessarie a soddisfare i requisiti, garantendo la tracciabilità degli stessi.

==== Analisi dei Requisiti Software: 
studio di come il software risponde ai requisiti utente, includendo aspetti funzionali, prestazionali, di sicurezza e di interfaccia.

==== Progettazione dell’architettura software: 
definizione della struttura complessiva del sistema software e delle relazioni tra le sue componenti, senza entrare nel dettaglio implementativo.

==== Progettazione di dettaglio: 
specifica delle singole unità software che compongono il sistema.

==== Codifica e test delle unità: 
implementazione del codice sorgente e verifica del corretto funzionamento delle singole unità.

==== Integrazione software: 
combinazione progressiva delle componenti software, supportata da test di integrazione.

==== Test di qualifica del software: 
verifica della conformità del prodotto agli obiettivi di qualità definiti.

==== Integrazione e test di sistema: 
assemblaggio del sistema completo e validazione del suo comportamento complessivo.
Installazione: rilascio del software nell’ambiente concordato con il cliente.

==== Supporto all’accettazione: 
assistenza al proponente durante la fase di verifica finale del prodotto.

=== Relazione con le Baseline di progetto

In relazione alle baseline previste dal progetto, (#def("RTB") e #def("PB")), le attività di sviluppo si piú significative sono:

==== Analisi dei Requisiti

L’Analisi dei Requisiti rappresenta una fase centrale del progetto e ha lo scopo di identificare in modo completo e non ambiguo tutti i requisiti che il sistema deve soddisfare.
Essa è documentata nell’apposito documento di Analisi dei Requisiti e costituisce il riferimento principale per le successive attività di progettazione, sviluppo e verifica.

I Casi d’Uso sono identificati tramite una nomenclatura univoca che ne garantisce la tracciabilità, la nomenclatura é la seguente: UCx.y.z, dove:
- UC indica che si tratta di un Caso d’Uso.
- x è un numero intero che identifica il Caso d’Uso principale.
- y, z e i numeri successivi sono numeri interi che identificano sotto-casi d’Uso, ovvero inclusioni, composizioni o estensioni del Caso d’Uso principale.

I requisiti, invece< #TODO("come sono acronimizzati i requisiti?")> 
==== Codifica

La codifica ha come obiettivo l’implementazione fedele delle soluzioni progettate, nel rispetto degli standard di qualità definiti dal gruppo.

I linguaggi di programmazione utilizzati per il progetto sono #def("TypeScript") per il frontend e gli script di automazione, #def("Python") e #def("Node.js") per il backend e gli agenti intelligenti e #def("MongoDB") per la gestione del database.

Mentre per la documentazione viene utilizzato il linguaggio #def("Typst").

===== Convenzioni
Per garantire uniformità e manutenibilità del codice, sono adottate delle convenzioni di codifica comuni a tutti i membri del gruppo. Queste convenzioni riguardano:
- Nomenclatura di variabili, funzioni, classi e componenti, in particolare, si utilizza il `camelCase` per variabili e funzioni, e il `PascalCase` per classi e componenti.
- Struttura e organizzazione del codice sorgente, con l’utilizzo di moduli e cartelle per separare le diverse funzionalità.
- Commenti e documentazione del codice, ogni funzione deve possedere un commento che la descriva, i parametri in ingresso e il valore di ritorno.
- Evitare funzioni lambda complesse e mantenere le funzioni con una singola responsabilità.

#pagebreak()
= Processi di Supporto

== Documentazione
Il ciclo di vita dei documenti prevede:
1. *Creazione/Modifica*: Redazione o aggiornamento del contenuto in formato source (#def("Typst")).
2. *Verifica*: Controllo di conformità (ortografia, stile, contenuti) da parte di un membro diverso dal redattore.
3. *Approvazione*: Validazione finale per il rilascio.

=== Strumenti di Redazione
- *#def("Visual Studio Code")*: Editor principale per la scrittura dei documenti.
- *#def("Typst")*: Linguaggio di markup utilizzato per la formattazione dei documenti. Questo linguaggio permette di creare documenti con una struttura chiara e professionale, facilitando la gestione di elementi come intestazioni, tabelle, figure e riferimenti incrociati. Inoltre, si possono creare funzioni personalizzate per automatizzare parti della formattazione.
- *#def("Tinymist")*: Estensione per #def("VS Code") che fornisce supporto e preview per Typst

=== Gestione della Configurazione
Utilizzo di *#def("Git")* come sistema di controllo versione.

=== Branching Strategy
- `main`: Ramo stabile, contenente le versioni rilasciate o pronte al rilascio.
- `develop`: Ramo di integrazione principale.
- `feature/nome-feature`: Rami per lo sviluppo di nuove funzionalità.
- `fix/nome-fix`: Rami per la correzione di bug.
- 'acronimo-documento': Rami dedicati alla redazione dei documenti (es. `NdP`, `PdP`, `PdQ`, `AdR`).

Il ramo `develop` é protetto, questo vuol dire che ogni modifica deve essere effettuata tramite *pull request* e sottoposta a revisione da parte di almeno un membro del gruppo diverso dal redattore prima di essere unita.
Questo assicura che ogni documento sia verificato prima di entrare nel branch.

=== Datazione e versionamento documenti
Ogni documento deve includere una sezione di cronologia delle versioni che riporta:
- Data della modifica.

- Numero di versione
 - Il numero della versione deve seguire lo scema `x.y.z`, dove:
   - `x`: Major version, incrementata per cambiamenti significativi o incompatibili.
   - `y`: Minor version, incrementata per l'aggiunta di funzionalità mantenendo la compatibilità.
   - `z`: Patch version, incrementata per correzioni di bug o modifiche minori.
- Descrizione delle modifiche apportate.
- Nomi dei redattori coinvolti.
- Nomi dei verificatori coinvolti.

=== Configurazione dei Documenti
Tutti i documenti devono essere archiviati nel repository GitHub del progetto, organizzati in cartelle in base a Quale sezione del progetto appartengono, se appartengono al sito, ad una baseline specifica o ad altro.
Ogni documento deve essere salvato in formato source (#def("Typst")) per permettere modifiche future e versionamento.

Dal momento che SkarabGroup utilizza Jira per la gestione delle attività di progetto, ogni documento deve essere associato all'attività corrispondente in Jira . Questo facilita il tracciamento delle modifiche e la gestione delle responsabilità durante i vari sprint.

Alla fine di ogni sprint, i documenti completati e verificati devono essere uniti nel ramo `develop` tramite pull request, seguendo la procedura di revisione stabilita. questo permette di iniziare lo sprint successivo con una base documentale aggiornata e approvata in quanto, la p[rima attivitá di ogni sprint é quella di fare un pull del develop sul branch del documento a cui si sta lavorando.

== Qualifica

=== Verifica
La verifica ha l'obiettivo di accertare che i prodotti soddisfino i requisiti, ovvero di rispondere alla domanda: "Did I build the sistem right?".

Tutti i prodotti del progetto sono soggetti a verifiche periodiche per garantire la conformità agli standard di qualità definiti nel Piano di Qualifica (#def("PdQ")).

==== Implementazione
Dal momento in cui per poter portare un documento, o parte di esso nel branch principlale `develop`, esso deve essere stato verificato e approvato, la verifica viene implementata tramite il sistema di *pull request* di GitHub. Questo assicura che tutto il codice e la documentazione presenti nel ramo principale abbiano superato un processo di verifica e che, quindi, siano conformi agli standard di qualità stabiliti.

===== Verifica

La Verifica rappresenta un processo fondamentale per Skarab Group e accompagna l’intero ciclo di vita del progetto (a.a. 2025/2026), con l’obiettivo di garantire la correttezza, la qualità e la conformità dei prodotti realizzati rispetto ai requisiti definiti.
Tutte le informazioni relative agli esiti delle attività di verifica, incluse misurazioni e risultati dei test, sono documentate nel Piano di Qualifica.
====== Verifica della Documentazione

Nelle fasi iniziali del progetto, particolare attenzione è stata dedicata alla verifica della documentazione.
Ogni documento, una volta redatto, viene sottoposto a verifica prima dell’integrazione nel ramo principale del repository.
L’attività comprende:
- controllo grammaticale e sintattico;
- verifica della correttezza e coerenza dei contenuti.
- Le modalità operative di redazione e verifica dei documenti sono descritte nelle regole di gestione dei branch e delle issue.

====== Verifica del Codice

Le attività di verifica del codice saranno approfondite in modo più dettagliato una volta raggiunta la Requirements and Technology Baseline (RTB).
In generale, la verifica del software si articola in due approcci complementari: Analisi Statica e Analisi Dinamica.

====== Analisi Statica

L’Analisi Statica comprende tutte le attività di verifica che non richiedono l’esecuzione dell’oggetto analizzato.
Essa si concentra sull’individuazione di errori sintattici, strutturali o concettuali, permettendo di prevenire problemi prima della fase di esecuzione.

Può essere svolta tramite:
- metodi formali, basati su dimostrazioni matematiche;
- metodi di lettura, più flessibili e applicabili alla documentazione e al codice.

Tra i metodi di lettura:

il Walkthrough, che prevede un’analisi completa e approfondita dell’oggetto, ma risulta costoso e poco automatizzabile;l’Ispezione, basata su checklist di controllo, meno esaustiva ma più efficiente e facilmente automatizzabile.
Considerata l’elevata quantità di artefatti da verificare, Skarab Group privilegia l’ispezione.

====== Analisi Dinamica

L’Analisi Dinamica prevede l’esecuzione dell’oggetto da verificare e si basa sull’identificazione delle failure, ossia comportamenti non conformi alle aspettative, al fine di individuare e correggere i relativi fault.
Questa analisi è realizzata tramite Test, che devono essere:
- ripetibili;

- indipendenti dall’ambiente di esecuzione;

- automatizzabili.

L’automazione dei test è supportata dall’uso di driver, stub e logger per simulare e monitorare l’esecuzione del software.

====== Tipologie di Test

I test adottati nel progetto si suddividono nelle seguenti categorie:

Test di Unità

Test di Integrazione

Test di Sistema

Test di Regressione

Ogni test è identificato da una nomenclatura standard e possiede uno stato che ne indica il livello di implementazione o superamento.

======= Test di Unità

I Test di Unità verificano il corretto funzionamento delle singole unità software.
Si distinguono in:

- test funzionali (black-box), che analizzano input e output;

- test strutturali, che verificano i percorsi logici e le istruzioni eseguite.

======= Test di Integrazione
I Test di Integrazione verificano la corretta interazione tra le unità.
L’integrazione può avvenire secondo due strategie:

Top-Down, partendo dalle componenti di livello più alto;

Bottom-Up, partendo dalle componenti di base.

======= Test di Sistema
I Test di Sistema valutano il comportamento del sistema nel suo complesso, verificandone la conformità ai requisiti e l’efficacia globale.

======= Test di Regressione

I Test di Regressione garantiscono che le modifiche apportate al sistema non reintroducano errori precedentemente risolti.
In caso di correzione di un fault, l’intera suite di test viene rieseguita per assicurare la stabilità del sistema.


=== Validazione
La Validazione ha l’obiettivo di accertare che il prodotto soddisfi le esigenze della proponente e le aspettative degli utenti finali, rispondendo alla domanda: "Did I build the right system?".

==== Implementazione

La validazione viene implementata attraverso test di accettazione e raccolta di feedback dagli utenti finali. Queste attività assicurano che il prodotto finale risponda alle esigenze e ai requisiti definiti all'inizio del progetto.

= Processi Organizzativi
I porcessi organizzativi sono tutti quei processi di supporto che permettono al gruppo di lavorare in modo efficiente e coordinato.
La gestione dei processi organizzativi include la definizione di ruoli, responsabilità, comunicazione e gestione delle riunioni.

== Ruoli
La seguente tebella riporterá tutti i ruoli presenti all'interno del progetto con le relative responsabilitá.

#figure(
  table(
    columns: (auto,auto),
    stroke: 0.5pt + luma(200),
    
    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.even(row) {
      luma(220)
    } else {
      none
    },
    [*Ruolo*], [*Responsabilità*],
    
    [Responsabile],
    [Coordina e supervisiona l'intero progetto, garantendo il rispetto delle scadule e del budget. Rappresenta il team nei rapporti con il committente e gli stakeholder esterni. Pianifica le attività, assegna le risorse, monitora l'avanzamento attraverso metriche e indicatori, gestisce i rischi e le criticità. Approva i documenti ufficiali e autorizza le spese. Convoca e presiede le riunioni, facilita la comunicazione interna ed esterna, risolve conflitti e prende decisioni strategiche per il successo del progetto.],
    
    [Amministratore],
    [Gestisce l'infrastruttura tecnica e organizzativa del progetto. Configura e mantiene gli strumenti di versionamento, continuous integration, issue tracking e documentazione. Amministra i repository, definisce workflow e convenzioni, monitora l'ambiente di sviluppo. Gestisce la documentazione di processo, redige le norme di progetto, mantiene aggiornato il piano di qualifica. Supporta il team nella risoluzione di problemi tecnici relativi all'ambiente di lavoro, garantisce backup e sicurezza dei dati, ottimizza i processi di automazione.],
    
    [Verificatore],
    [Assicura la qualità dei prodotti attraverso attività di verifica sistematica. Controlla la conformità dei documenti alle norme redazionali e tipografiche, verifica la correttezza tecnica e la coerenza dei contenuti. Esegue review del codice secondo checklist predefinite, controlla il rispetto degli standard di programmazione. Verifica la tracciabilità tra requisiti, design e implementazione. Redige verbali di verifica, segnala anomalie e non conformità, propone azioni correttive. Monitora le metriche di qualità e valida i test eseguiti dai programmatori.],
    
    [Analista],
    [Raccoglie, analizza e formalizza i requisiti del sistema attraverso l'interazione con committente e stakeholder. Studia il dominio applicativo, comprende le esigenze degli utenti, identifica vincoli e opportunità. Redige l'Analisi dei Requisiti classificando requisiti funzionali, di qualità, di vincolo e prestazionali. Definisce casi d'uso, scenari operativi e modelli del dominio. Mantiene la tracciabilità tra requisiti e fonti, gestisce l'evoluzione dei requisiti durante il progetto. Collabora con i progettisti per garantire la fattibilità tecnica delle soluzioni proposte.],
    
    [Progettista],
    [Definisce l'architettura del sistema e il design dettagliato dei componenti software. Individua pattern architetturali appropriati, decompone il sistema in moduli, definisce interfacce e dipendenze. Specifica la struttura delle classi, i diagrammi di sequenza e collaborazione, le strutture dati e gli algoritmi principali. Redige la Specifica Tecnica e il Piano di Qualifica nella parte relativa ai test di integrazione e sistema. Effettua scelte tecnologiche motivate, considera aspetti di manutenibilità, estensibilità e performance. Fornisce ai programmatori le specifiche di dettaglio necessarie all'implementazione.],

    [Programmatore],
    [Implementa il codice seguendo le specifiche fornite dai progettisti e rispettando gli standard di codifica definiti. Scrive codice pulito, manutenibile e ben documentato. Sviluppa unit test per verificare la correttezza delle singole unità software, garantendo un'adeguata code coverage. Gestisce le dipendenze, utilizza strumenti di build automation, integra librerie esterne. Documenta il codice con commenti significativi e mantiene aggiornata la documentazione tecnica. Esegue debugging e risolve difetti segnalati, ottimizza le performance quando necessario. Collabora con verificatori e progettisti per migliorare continuamente la qualità del software.],
  ),
  caption: [Ruoli di progetto e relative responsabilità],
)

=== Gestione dei task e allineamento
La gestione dei task avviene tramite *#def("Jira")*, dove ogni membro del gruppo ha accesso alle proprie attività assegnate.
Ogni task include una descrizione dettagliata, una stima del tempo necessario per il completamento e una scadenza.
I membri del gruppo sono responsabili di aggiornare lo stato dei propri task in #def("Jira"), segnalando eventuali impedimenti o ritardi.
Per garantire un allineamento costante, si tengono riunioni settimanali di team in cui si discutono i progressi, si risolvono problemi e si pianificano le attività future.

==== Riunioni di allineamento
===== Interne
Le riunioni di allineamento si tengono settimanalmente e hanno lo scopo di:
- Condividere lo stato di avanzamento delle attività.
- Identificare e risolvere eventuali ostacoli o problemi.
- Pianificare le attività per la settimana successiva.
Le riunioni vengono svolte du Discord e permettono al Responsabile di Progetto di monitorare l'andamento del lavoro e di garantire che tutti i membri del team siano allineati sugli obiettivi comuni.

===== esterne
Le riunioni esterne si tengono con il #def("Proponente") e altri stakeholder per:
- Presentare lo stato di avanzamento del progetto.
- Discutere requisiti, feedback e modifiche.
- Allineare le aspettative e pianificare le prossime fasi.
é compito del Responsabile di Progetto organizzare e condurre queste riunioni, assicurando una comunicazione efficace tra il team di sviluppo e gli stakeholder esterni.

===== Verbale
Per ogni riunione, interna o esterna, viene redatto un verbale che riporta:
- Data, ora, luogo e partecipanti.
- Ordine del giorno.
- Riassunto delle discussioni.
- Decisioni prese e task assegnati.

==== Comunicazione diretta
La comunicazione interna del team avviene tramite varie piattaforme:
- #def("Whatsapp"): Per comunicazioni rapide e urgenti, tramite un gruppo dedicato, utilizzato per aggiornamenti veloci e coordinamento immediato giornalmente.
- #def("Telegram"): Per discussioni più strutturate e condivisione di file, utilizzato per comunicazioni di gruppo e condivisione di documenti importanti.
- #def("Discord"): Per riunioni virtuali e collaborazione in tempo reale, utilizzato per meeting settimanali e sessioni di lavoro condivise.
- Email: Per comunicazioni formali e invio di documenti ufficiali, utilizzato per comunicazioni con il proponente e con i professori ed é gestito principalmente dal Responsabile di Progetto.
- #def("Jira"): Per la gestione delle attività e il monitoraggio del progresso, utilizzato per assegnare task, tracciare lo stato di avanzamento e gestire le scadenze.

==== Strumenti di supporto all'organizzazione
Come giá riportato in precedenza, il gruppo utilizza diversi strumenti per supportare l'organizzazione del lavoro anche in modo totalmente asincrono:
- Google calendar: Per la pianificazione delle riunioni esterne.
- Scripts di automazione: Per automatizzare attività ripetitive e migliorare l'efficienza del lavoro.
 - queste comprendono, al momento del PoC: generazione glossario, sia in formato documento che in pagina web
- Repository GitHub: Per il versionamento del codice e la gestione della documentazione di progetto.

==== Creazione e gestione degli strumenti organizzativi
La creazione e gestione degli strumenti organizzativi è responsabilità dell'Amministratore di Progetto, che si occupa di:
- Configurare e mantenere gli strumenti di comunicazione e gestione delle attività.
- Assicurare che tutti i membri del team abbiano accesso agli strumenti necessari.
- Monitorare l'utilizzo degli strumenti e proporre miglioramenti o cambiamenti se necessario.

===== Repository GitHub
L'Amministratore di Progetto è responsabile della gestione del repository GitHub, che include:
- Creazione e organizzazione delle cartelle per i documenti di progetto.
- Definizione delle regole di branching e delle convenzioni di commit.
- Monitoraggio delle pull request e delle revisioni del codice.
- Assicurare che la documentazione sia aggiornata e accessibile a tutti i membri del team.

La repository DocumentazioneProgetto é organizzata in questo modo:
- .github/: Cartella contenente le configurazioni specifiche di GitHub, come azioni automatizzate e modelli di issue.
- .github/workflows/: Contiene i file di configurazione per le GitHub Actions utilizzate nel progetto.
- assets/: Cartella per le risorse multimediali utilizzate nei documenti (immagini, grafici, ecc.).
- diarioDiBordo/: Contiene il diario di bordo del progetto.
- Glossario/: Contiene l'infrastruttura necessaria per l'html del glossario dei termini tecnici utilizzati nel progetto.
- lib/: Cartella che contiene tutti i file che copntengono le funzioni utilizzate nbei vari documenti typst.
- RTB/: Cartella dedicata alla Requirements and Technology Baseline, contenente tutti i documenti relativi a questa fase del progetto.
- verbali: Cartella che contiene tutti i verbali delle riunioni interne ed esterne.
- website/: Cartella contenente i file sorgente del sito web di Skarab Group.

====== Librerie .typ
La cartella `lib/` contiene librerie di funzioni Typst che sono utilizzate in vari documenti del progetto per garantire coerenza e riusabilità del codice. Questa cartella é creata e gestita dall'amministratore del progetto, questo permette di avere un punto centrale dove vengono definite tutte le funzioni comuni, facilitando la manutenzione e l'aggiornamento delle stesse.

== Processo di miglioramento
Il processo di miglioramento continuo è fondamentale per garantire che i prodotti del progetto soddisfino gli standard di qualità definiti e le aspettative degli stakeholder. QWuesto processo si articola in 3 fasi principali:
- Inizializzazione: Fase in cui vengono definiti i processi organizzativi che guideranno il lavoro del team.
- Valutazione: Fase in cui vengono monitorati i processi e i prodotti attraverso metriche specifiche.
- Miglioramento: Fase in cui vengono implementate azioni correttive basate sui risultati della valutazione.

== Processo di formazione
Il processo di formazione è progettato per garantire che tutti i membri del team abbiano le competenze necessarie per svolgere efficacemente i propri ruoli all'interno del progetto. Questo processo include:
- Identificazione delle competenze chiave richieste per ogni ruolo.
- Pianificazione di sessioni di formazione e workshop.
- Monitoraggio del progresso formativo e valutazione delle competenze acquisite.
Le ore svolte per formazione non sono rendicontate in quanto non fanno parte del lavoro di progetto vero e proprio ma della parte di 'palestra' che il corso universitario vuole fornire agli studenti.
La seguente tabella riporta le fonti utilizzate per la formazione dei membri del gruppo in base alla tecnologia studiata.


#figure(
  table(
    columns: (auto, auto),
    stroke: 0.5pt + luma(200),
    
    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.even(row) {
      luma(220)
    } else {
      none
    },
    [*Tecnologia*], [*Fonte di formazione*],
    
    [Python], [Documentazione ufficiale Python, youtube tutorial],
    [Agenti AI], [Documentazione framework specifici, paper accademici, documentazione AWS],
    [AWS], [documentazione ufficiale AWS],
    [Git], [Documentazione ufficiale Git, guide interattive, corso di Metodi e tecnologie per lo sviluppo software],
    [Node.js], [Documentazione ufficiale Node.js, tutorial youtube],
    [MongoDB], [documentazione ufficiale,]
  ),
  caption: [Tecnologie e fonti di formazione],
)

Inoltre l'azienda proponente Var group ha tenuto delle lezioni specifiche per ognuna delle tecnologie necessarie allo sviluppo del progetto e ha dato disponibilitá per la risoluzione di dubbi e domande.

= Metriche
Il gruppo adotta un sistema di metriche per monitorare processi e prodotti.

#figure(
  table(
    columns: (3cm, 8cm, 4cm),
    align: left + horizon,
    stroke: 0.5pt,
    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.even(row) {
      luma(220)
    } else {
      none
    },
    [*ID*], [*Descrizione*], [*Soglia / Obiettivo*],
    // Processo
    [#def("MPC")1 (SV)], [Schedule Variance: differenza tra lavoro pianificato ed eseguito], [>= 0],
    [#def("MPC")2 (BV)], [Budget Variance: differenza tra costo pianificato ed effettivo], [>= 0],
    // Prodotto documentale
    [#def("MPD")1 (Gulpease)],
    [Indice di #def("Gulpease") per documenti in italiano],
    [> 40 (accettabile)\ > 60 (buono)],

    [#def("MPD")2 (Ortografia)], [Numero di errori ortografici rilevati], [0],
    // Software
    [#def("MPS")1 (Coverage)], [#def("Code Coverage") (Unit Test)], [>= 80%],
    [#def("MPS")2 (Req. Obb.)], [Percentuale soddisfacimento requisiti obbligatori], [100% al rilascio],
    [#def("MPS")3 (Comprens.)], [#def("Complessità Ciclomatica") media delle funzioni], [<= 15],
  ),
  caption: [Tabella delle metriche di progetto],
)

== Strategie di Verifica
- *Analisi Statica*: Review manuale del codice e uso di #def("linter") (#def("ESLint") per JS/TS, Pylint/Black per #def("Python")).
- *Analisi Dinamica*: Esecuzione della suite di test.
- *Test*:
  - *Unit Test*: Verifica di singole unità di codice.
  - *Integration Test*: Verifica delle interazioni tra moduli.
  - *System Test*: Verifica del sistema completo rispetto ai requisiti.

== Software Quality Assurance #def("SQA")
La #def("SQA") monitora tutti i processi per garantire conformità agli standard (es. #def("ISO 9001"), #def("ISO 25010")). Include:
- *Politiche*: Definizione di procedure per ogni fase (requisiti, design, testing).
- *Audit*: Revisioni periodiche per identificare non conformità.
- *Attività*: Review di documenti, controllo qualità codice, #def("Gestione Rischi").

== Validazione
La validazione conferma che il prodotto soddisfi le esigenze degli utenti.
- *#def("Test di Accettazione")*: Verifica finale con stakeholder per requisiti non funzionali (es. usabilità, prestazioni).
- *Feedback Utente*: Raccolta di input durante demo o beta testing.
- *Allineamento Obiettivi*: Verifica rispetto agli obiettivi di progetto (es. automazione analisi qualità repository).
