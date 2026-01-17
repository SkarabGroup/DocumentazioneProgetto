  #import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *

//Note sul versionamento
/*
  x.y.z
  La X si modifica solamente a documento completo
  La Y si modifica solo quando vengono aggiunti nuovi elementi
  La Z si modifica solo quando si modificano elementi già esistenti

  Si raccomanda di modificare sempre questo valore quando si lavora su un qualunque file
*/
#let versione = "v2.0.0"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#let history = (
  (
    "2026/01/02", 
    "2.0.0", 
    "Completata analisi e gestione dei rischi con aggiunta dei rischi RT3, RT4, RI3, RCO3 e RCO4", 
    members.andrea,
  ),
  (
    "2025/12/31", 
    "1.0.0", 
    "Completata pianificazione a lungo termine e a breve termine per RTB", 
    members.antonio,
  ),
  (
    "2025/12/27", 
    "0.3.0", 
    "Iniziata pianificazione a lungo termine e a breve termine per RTB, lievi modifiche all'introduzione", 
    members.antonio
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
//ricorda #def("parola") per glossario 
== Scopo del documento
Il *#def[Piano di Progetto]* è un documento che ha l'obiettivo di definire la strategia di pianificazione e le attività necessarie per lo sviluppo del prodotto software nel corso del progetto di *#def[Ingegneria del Software]*. #linebreak()
Questo documento rappresenta lo strumento fondamentale a supporto del gruppo per: 
- L'analisi e la mitigazione dei rischi che potrebbero insorgere durante il ciclo di vita del software;
- La pianificazione temporale delle attività e la gestione delle scadenze;
- La stima preventiva dei costi e delle risorse necessarie;
- Il monitoraggio continuo tramite il confronto tra preventivo e consuntivo al termine di ogni periodo. #linebreak()
Data la natura dinamica del progetto e la necessità di pianificare le attività volta per volta, la progettazione dettagliata a lungo termine risulta complessa e soprattutto inefficace. #linebreak()
Per questio motivo il documento adotterà un approccio incrementale: verrà costantemente aggiornato con nuove pianificazioni e consuntivi man mano che il lavoro procede.


== Glossario
Al fine di garantire la massima chiarezza espositiva e prevenire ambiguità nell’interpretazione della documentazione di progetto, è stato redatto un documento apposito denominato #strong("Glossario").  #linebreak()
Questo strumento ha lo scopo di definire in modo univoco la terminologia tecnica, gli acronimi e i concetti specifici di dominio adottati dal gruppo durante l'intero ciclo di vita del software. #linebreak()
Il Glossario è da considerarsi un documento in costante aggiornamento, che evolve parallelamente allo sviluppo del progetto. Per la versione attuale consultare questo #underline[inirizzoglossario]. #linebreak()
Per facilitare la lettura, ogni occorrenza di un termine presente nel Glossario viene contrassegnata con una sottolineatura.

== Riferimenti
- #strong("Capitolato C2: Piattaforma ad agenti per l’audit e la remediation dei repository software") #linebreak() 
#underline[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf] #linebreak() 
//Ultimo accesso 2025/12/23
- #strong("Dispense del corso di Ingegneria del Software sulla gestione di progetto") #linebreak() 
#underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf] #linebreak() 
//Ultimo accesso 2025/12/23, toglierei gli ultimi accessi, non mi sembrano utili



#pagebreak()

= Analisi e gestione dei rischi

== Introduzione
La gestione dei rischi è una componente critica per il successo del progetto. Un #def[Rischio] viene definito come un evento incerto che, qualora si verifichi, ha un impatto (positivo o negativo) su uno o più obiettivi del progetto, quali tempi, costi, o qualità del software prodotto. #linebreak()
La redazione del #def[Piano di Progetto] non può prescindere da un'attenta analisi delle incertezze. L'obiettivo di questa sezione è classificare le possibili minacce per valutare se il carico di lavoro inserito nel #def[Backlog] sia sostenibile rispetto alle capacità del gruppo.

Per garantire un approccio strutturato ed efficace, il processo di gestione dei rischi è stato suddiviso in quattro fasi distinte:
- #strong[Identificazione]: consiste nel rilevare e documentare tutte le potenziali fonti di rischio. Questa attività non si limita agli aspetti tecnici o strettamente legati al progetto, ma prende in esame anche la sfera organizzativa e la disponibilità personale dei membri del team;
- #strong[Analisi]: una volta individuati, i rischi vengono esaminati per stimarne la probabilità di accadimento e l'impatto potenziale. Questo passaggio è fondamentale per comprendere le possibili ripercussioni sul completamento del singolo #def[Sprint] e sul successo complessivo del progetto;
- #strong[Pianificazione]: sulla base dell'analisi, vengono definite le strategie di risposta. L'obiettivo è elaborare misure preventive atte a ridurre la probabilità che l'evento si verifichi o, qualora non fosse possibile evitarlo, predisporre azioni di mitigazione per limitarne gli effetti negativi;
- #strong[Controllo]: rappresenta la fase operativa di monitoraggio continuo durante lo svolgimento delle attività. Questo permette di intercettare tempestivamente l'insorgere di un rischio e di attivare prontamente le procedure di mitigazione stabilite in precedenza.

I possibili rischi individuati da #def[Skarab Group] sono stati classificati in tre macro-categorie, in base alla loro natura e alle aree di influenza:
- #strong[RT] = #strong[R]ischio #strong[T]ecnologico
- #strong[RI] = #strong[R]ischio #strong[I]ndividuale
- #strong[RCO] = #strong[R]ischio #strong[C]ollettivo #strong[O]rganizzativo

Consapevoli che l'inesperienza potrebbe ridurre l'efficacia iniziale delle mitigazioni, il gruppo agirà in questo modo: ogni fallimento nella gestione di un rischio verrà registrato durante la fase di controllo e sfruttato per aggiornare le procedure, garantendo così una risposta sempre più solida man mano che il progetto avanza.

== Rischi Tecnologici
//breve descrizione(?)

=== RT1: Rischio Tecnologico legato alla scarsa conoscenza delle tecnologie
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
    [RT1],
    [*Nome*], 
    [Scarsa conoscenza delle tecnologie],
    [*Descrizione*], 
    [Si potrebbe verificare una scarsa conoscenza delle tecnologie scelte per lo sviluppo del progetto, come ad esempio framework, linguaggi di programmazione o strumenti di gestione del codice. Questo potrebbe portare a ritardi nello sviluppo, errori di implementazione o difficoltà nell'integrazione delle componenti software.],
    [*Mitigazione*], 
    [Suddivisione del lavoro tale da permettere ai membri del gruppo di specializzarsi in specifiche tecnologie, per poi condividerle con il resto del team al fine di ottenere una conoscenza comune. Utilizzo di risorse online, documentazione ufficiale e tutorial per accelerare l’apprendimento e favorire lo studio autonomo, così da colmare eventuali lacune. L’azienda #def[Var Group] offre inoltre sessioni di formazione su alcune tecnologie e fornisce spunti rilevanti per il progetto.],
    [*Probabilità di avvenimento*],
    [Alta],
    [*Pericolosità delle ripercussioni*],
    [Medio-Alta],
  ),
  caption: [Informazioni sul rischio RT1],
)

=== RT2: Rischio Tecnologico legato alla scelta errata delle tecnologie
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
    [RT2],
    [*Nome*], 
    [Scelta errata delle tecnologie],
    [*Descrizione*], 
    [Durante la fase di selezione delle tecnologie per il sistema ad agenti #def[Code Guardian], potrebbe essere effettuata una scelta non ottimale che non soddisfa appieno i requisiti del progetto. Questo potrebbe comportare difficoltà nell'implementazione, limitazioni funzionali o problemi di scalabilità in futuro.],
    [*Mitigazione*], 
    [Effettuare una valutazione approfondita delle tecnologie disponibili, considerando fattori quali la compatibilità con i requisiti del progetto, la facilità d’uso, la disponibilità di risorse e il supporto della comunità. Mantenere una certa flessibilità nel #def[Piano di Progetto] per consentire eventuali cambiamenti tecnologici qualora emergano problemi significativi durante lo sviluppo. L’azienda #def[Var Group] offre inoltre supporto attraverso riunioni e strumenti di comunicazione (#def[Slack]) per alcune delle tecnologie descritte nel capitolato.],
    [*Probabilità di avvenimento*],
    [Media],
    [*Pericolosità delle ripercussioni*],
    [Elevata],
  ),
  caption: [Informazioni sul rischio RT2],
)

=== RT3: Rischio Tecnologico legato alla scarsa conoscenza del dominio e dell'IA generativa
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
    [RT3],
    [*Nome*], 
    [Scarsa conoscenza del dominio e dell'IA generativa],
    [*Descrizione*], 
    [Le tematiche relative ai #def[LLM] e alle architetture multi-agente non sono state approfondite nel percorso accademico obbligatorio. La mancanza di basi teoriche solide sulla gestione del contesto, del reasoning degli agenti e della sicurezza del codice (*OWASP*) potrebbe rallentare la fase di progettazione e l'efficacia dell'audit automatico.],
    [*Mitigazione*], 
    [Organizzazione di sessioni di auto-formazione sfruttando le risorse fornite nel capitolato. I membri con maggiore esperienza in ambito IA agiranno da mentore per il gruppo. Sarà inoltre fondamentale sfruttare il supporto tecnico offerto dal proponente #def[Var Group], partecipando attivamente alle sessioni di mentoring previste per validare le scelte architetturali.],
    [*Probabilità di avvenimento*],
    [Alta],
    [*Pericolosità delle ripercussioni*],
    [Media],
  ),
  caption: [Informazioni sul rischio RT3],
)

=== RT4: Rischio Tecnologico legato alla inaccuratezza nell'audit e nella valutazione automatica
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
    [RT4],
    [*Nome*], 
    [Inaccuratezza nell'audit e nella valutazione automatica],
    [*Descrizione*], 
    [Sussiste il rischio che i criteri di valutazione implementati negli agenti producano risultati imprecisi. Ciò potrebbe tradursi in #def[falsi positivi] o, più ravemente, in #def[falsi negativi]. Inoltre, il sistema potrebbe valutare come corretta una remediation che in realtà introduce nuovi bug. Questi errori potrebbero compromettere l'affidabilità del sistema e la fiducia degli utenti nel prodotto finale.],
    [*Mitigazione*], 
    [Usare tool di analisi con una comprovata efficacia e validati dalla comunità. Il software permetterà all'utente di revisionare ogni report per accettare, rifiutare o richiedere una nuova generazione delle remediation. Inoltre, il gruppo si impegnerà a testare approfonditamente il sistema con casi di studio noti per identificare e correggere eventuali errori nei criteri di valutazione.],
    [*Probabilità di avvenimento*],
    [Media],
    [*Pericolosità delle ripercussioni*],
    [Alta],
  ),
  caption: [Informazioni sul rischio RT4],
)

== Rischi Individuali
//breve descrizione(?)

=== RI1: Rischio Individuale legato agli impegni personali
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
    [RI1],
    [*Nome*], 
    [Impegni personali],
    [*Descrizione*], 
    [Un membro del team potrebbe dover affrontare impegni personali, come esami universitari, lavoro part-time o altre responsabilità che limitano il tempo e l'energia disponibili per il progetto. Questo potrebbe influire sulla capacità del gruppo di rispettare le scadenze e completare le attività pianificate.],
    [*Mitigazione*], 
    [Comunicazione tempestiva degli impegni personali da parte dei membri del team, in modo da poter pianificare le attività tenendo conto delle loro disponibilità. Suddivisione del lavoro in modo equo, considerando le capacità e i vincoli di ciascun membro del team. Utilizzo di strumenti di gestione del progetto per monitorare i progressi e identificare eventuali ritardi causati da impegni personali.],
    [*Probabilità di avvenimento*],
    [Medio-Alta],
    [*Pericolosità delle ripercussioni*],
    [Medio-Alta],
  ),
  caption: [Informazioni sul rischio RI1],
)

=== RI2: Rischio Individuale legato ad avvenimenti personali gravi
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
    [RI2],
    [*Nome*], 
    [Avvenimenti personali gravi],
    [*Descrizione*], 
    [Un membro del team potrebbe dover affrontare avvenimenti personali gravi, come problemi di salute o situazioni familiari critiche, che potrebbero diminuire e talvolta impedire il contributo al progetto per un periodo prolungato. Questo potrebbe influire sulla capacità del gruppo di rispettare le scadenze e completare le attività pianificate.],
    [*Mitigazione*], 
    [Promuovere un ambiente di supporto all’interno del team, incoraggiando una comunicazione aperta in merito a eventuali difficoltà personali. Il #def[responsabile] dovrebbe essere informato tempestivamente, così da poter riassegnare le responsabilità e adattare il piano di lavoro, escludendo temporaneamente il membro interessato per il periodo necessario. Al rientro, il membro del team dovrà recuperare il lavoro eventualmente non svolto, con il supporto degli altri componenti del gruppo.],
    [*Probabilità di avvenimento*],
    [Bassa],
    [*Pericolosità delle ripercussioni*],
    [Alta],
  ),
  caption: [Informazioni sul rischio RI2],
)

=== RI3: Rischio Individuale legato al ritiro dal progetto
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
    [RI3],
    [*Nome*], 
    [Ritiro dal progetto],
    [*Descrizione*], 
    [Un membro potrebbe ritirarsi formalmente dal progetto o dal corso di studi, causando una riduzione significativa delle risorse umane disponibili. Questo potrebbe influire sulla capacità del gruppo di rispettare le scadenze e completare le attività pianificate.],
    [*Mitigazione*], 
    [In caso di abbandono di un componente, il team si riorganizzerà per gestire le attività programmate con una forza lavoro ridotta. Si avvierà un confronto con il proponente per scremare le funzionalità secondarie e focalizzarsi sugli obiettivi primari dell'audit e della remediation. Il #def[responsabile] aggiornerà la ripartizione dei compiti per bilanciare l'impegno orario dei membri rimanenti e garantire la continuità dello sviluppo.],
    [*Probabilità di avvenimento*],
    [Bassa],
    [*Pericolosità delle ripercussioni*],
    [Elevata],
  ),
  caption: [Informazioni sul rischio RI3],
)

== Rischi Collettivi Organizzativi //chiedi se hanno senso le categotorie
//breve descrizione(?)

=== RCO1: Rischio Collettivo Organizzativo legato alle divergenze interne 
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
    [RCO1],
    [*Nome*], 
    [Divergenze interne al gruppo],
    [*Descrizione*], 
    [Questo rischio riguarda la possibilità che all'interno del team si verifichino divergenze di opinioni o difficoltà nella collaborazione tra i vari membri del gruppo. Tali situazioni potrebbero influire negativamente sulla produttività del gruppo, rallentare il progresso del progetto e compromettere la qualità del lavoro svolto.],
    [*Mitigazione*], 
    [Promuovere un ambiente di supporto all’interno del team, incoraggiando una comunicazione aperta. Qualora i conflitti non si risolvessero autonomamente tra gli interessati, il #def[Responsabile] interverrà per mediare e individuare soluzioni condivise. Nei casi più critici, si potrà ricorrere al supporto del docente],
    [*Probabilità di avvenimento*],
    [Media],
    [*Pericolosità delle ripercussioni*],
    [Medio-Bassa],
  ),
  caption: [Informazioni sul rischio RCO1],
)

=== RCO2: Rischio Collettivo Organizzativo legato alla sottostima delle attività
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
    [RCO2],
    [*Nome*], 
    [Sottostima di attività],
    [*Descrizione*], 
    [Questo rischio riguarda la possibilità che il gruppo sottovaluti l'entità del lavoro richiesto per completare un'attività pianificata e che quindi richieda più tempo del previsto. Questo potrebbe portare a ritardi, sovraccarico di lavoro e conseguenze negative sulla qualità del progetto.],
    [*Mitigazione*], 
    [Il membro o i membri responsabili dell’attività coinvolta dovranno avvisare il prima possibile gli altri componenti del gruppo in merito al possibile ritardo. A seguito di una valutazione condivisa, si procederà, se necessario, ad assegnare un ulteriore membro all’attività per rientrare nei tempi previsti, posticipando eventualmente attività di durata più breve e più facili da gestire.],
    [*Probabilità di avvenimento*],
    [Alta],
    [*Pericolosità delle ripercussioni*],
    [Elevata],
  ),
  caption: [Informazioni sul rischio RCO2],
)

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

= Pianificazione nel lungo termine
== Obiettivi di pianificazione
La pianificazione a lungo termine ha l'obiettivo di delineare le attività principali e le milestone fondamentali per il completamento del progetto #def[Code Guardian].
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

In seguito a un'analisi dell'andamento delle attività, il gruppo stima una candidatura per la *#def[Requirements and Technology Baseline] (RTB)* entro il 20 gennaio 2026. #pagebreak()


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
    - Introduzione e definizione degli attori, 
    - Casi d'uso e relativi sottocasi,
    - Requisiti funzionali e non.], 
    [- Introduzione e attori: sprint 1,
    - Casi d'uso: sprint 1 e 2,
    - Requisiti funzionali e non: sprint 2],
    [In corso],
    
    [*Stesura del Piano di Progetto*],
    [Redazione delle seguenti sezioni del documento di Piano di Progetto: 
    - Introduzione, 
    - Analisi e gestione dei rischi, 
    - Pianificazione a lungo termine, 
    - Pianificazione a breve termine.],
    [- Introduzione: sprint 1,
    - Analisi e gestione dei rischi: sprint 1,
    - Pianificazione a lungo termine: sprint 1,
    - Pianificazione a breve termine: sprint 2], 
    [In corso],

    [*Stesura del Piano di Qualifica*],
    [Redazione delle seguenti sezioni del documento di Piano di Qualifica: 
    - Introduzione, 
    - Qualità di processo, 
    - Qualità di prodotto, 
    - Metodi di testing, 
    - Cruscotto di valutazione,
    - Automiglioramento.],
    [- Introduzione: sprint 1,
    - Qualità di processo: sprint 1,
    - Qualità di prodotto: sprint 1,
    - Metodi di testing: sprint 1 e 2,
    - Cruscotto di valutazione: sprint 2,
    - Automiglioramento: sprint 2],
    [In corso],

    [*Stesura del documento di Norme di Progetto*],
    [Redazione delle seguenti sezioni del documento di Norme di Progetto: 
    - Introduzione, 
    - Processi primari, 
    - Processi di supporto, 
    - Processi organizzativi, 
    - Norme di sviluppo.],
    [- Introduzione: sprint 1,
    - Processi primari: sprint 1,
    - Processi di supporto: sprint 1,
    - Processi organizzativi: sprint 2,
    - Norme di sviluppo: sprint 1 e 2],
    [In corso],

    [*Implementazione del Glossario*],
    [La redazione del Glossario sarà un documento in costante aggiornamento, che evolverà parallelamente allo sviluppo di altri documenti. Ogni membro del gruppo avrà la responsabilità di 
    - aggiungere nuove voci 
    qualora lo ritenesse necessario durante la stesura di altri documenti o durante lo sviluppo del progetto.],
    [- Ogni sprint vengono aggiunte nuove voci al glossario], 
    [In corso],

    [*Sviluppo del Proof of Concept (PoC)*],
    [Svolgimento delle seguenti attività:
    - Progettazione architetturale,
    - Implementazione iniziale,],
    [- Progettazione architetturale: sprint 2
    - Implementazione iniziale: sprint 2 e 3],
    [Da iniziare],
  ),
  caption: [Attività previste per la Requirements and Technology Baseline (RTB)],
)
#pagebreak()

== Attività previste per la Product Baseline (PB)
Questo paragrafo non è stato ancora redatto in quanto la pianificazione a lungo termine per la #def[Product Baseline] (PB) risulterebbe poco realistica in questo momento. Al superamento della fase di RTB, quando si avranno maggiori informazioni sulle tecnologie, tempistiche e risorse necessarie per completare il progetto, verrà redatta una pianificazione dettagliata per la fase di PB.
#pagebreak()

= Pianificazione nel breve termine
== Introduzione
La pianificazione a breve termine si concentra sulla suddivisione del lavoro degli #def[Sprint] (di circa 2 settimane). 
Il team ha scelto di seguire un #def[Approccio Agile], che prevede l'adozione di strumenti di gestione del progetto come #strong[Jira] per organizzare e monitorare le attività durante ogni sprint. #linebreak()
Questa sezione descrive come il team intende organizzare le attività, assegnare le responsabilità e monitorare i progressi durante ciascuno sprint. 
L'obiettivo principale della pianificazione a breve termine è garantire che ogni sprint sia ben definito, con obiettivi chiari e misurabili, che determini i ruoli per ciascun membro del gruppo, in modo da facilitare la gestione del progetto.

Seguiranno ora le descrizioni dei vari #def[Sprint], in cui verranno esposte:
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
Fine prevista: 29/12/2025 #linebreak()
Fine reale: 29/12/2025 #linebreak()
==== Informazioni generali e attività da svolgere
In questo primo sprint, il team ha intenzione di concentrarsi sulla stesura iniziale dei documenti fondamentali per la #def[Requirements and Technology Baseline] (RTB). Le attività principali includono:
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
In retrospettiva, questo sprint è stato molto produttivo, in quanto sono stati completati tutti gli obiettivi prefissati. La suddivisione del lavoro è risultata efficace. Tuttavia, essendo questo sprint situato nel periodo natalizio, il team si è imbattuto nel RI1, che ha rallentato l'andamento del progetto. Nonostante ciò, il team è riuscito comunque a completare la maggior parte degli obiettivi proposti.
#pagebreak()

=== Sprint 2 
Inizio: 29/12/2025 #linebreak()
Fine prevista: 08/01/2026 #linebreak()
Fine reale: /*da inserire*/
==== Informazioni generali e attività da svolgere
In questo secondo sprint, il team intende concentrarsi sul completamento della stesura dei documenti fondamentali per la #def[Requirements and Technology Baseline] (RTB) e iniziare lo sviluppo del Proof of Concept (PoC). Le attività principali includono:
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
 