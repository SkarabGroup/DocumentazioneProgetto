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
#let versione = "v0.3.0"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#let history = (
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
Il *#def[Piano di Progetto]* è un documento che ha l'obiettivo di definire la strategia di pianificazione e le attività necessarie per lo sviluppo del prodotto software durante il corso del progetto di *#def[Ingegneria del Software]*. #linebreak()
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
Il Glossario è da considerarsi un documento in costante aggiornamento, che evolve parallelamente allo sviluppo del progetto. Per la versione attuale consultare questo #underline[indirizzo]. #linebreak()
Per facilitare la lettura, ogni occorrenza di un termine presente nel Glossario viene contrassegnata con una sottolineatura.

== Riferimenti
- #strong("Capitolato C2: Piattaforma ad agenti per l’audit e la remediation dei repository software") #linebreak() 
#underline[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf] #linebreak() 
//Ultimo accesso 2025/12/23
- #strong("Dispense del corso di Ingegneria del Software sulla gestione di progetto") #linebreak() 
#underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf] #linebreak 
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
    [Promuovere un ambiente di supporto all’interno del team, incoraggiando una comunicazione aperta in merito a eventuali difficoltà personali. Il #def[Responsabile] dovrebbe essere informato tempestivamente, così da poter riassegnare le responsabilità e adattare il piano di lavoro, escludendo temporaneamente il membro interessato per il periodo necessario. Al rientro, il membro del team dovrà recuperare il lavoro eventualmente non svolto, con il supporto degli altri componenti del gruppo.],
    [*Probabilità di avvenimento*],
    [Bassa],
    [*Pericolosità delle ripercussioni*],
    [Alta],
  ),
  caption: [Informazioni sul rischio RI2],
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

#pagebreak()

= Pianificazione nel lungo termine
== Obiettivi di pianificazione
La pianificazione a lungo termine ha l'obiettivo di delineare le attività principali e le milestone fondamentali per il completamento del progetto #def[Code Guardian].
Le due milestone necessarie sono la *#def[Requirements and Technology Baseline] (RTB)* e la *#def[Product Baseline] (PB)*, che rappresentano rispettivamente la fase di raccolta dei requisiti e definizione delle tecnologie, e la fase di definizione delle specifiche del prodotto finale. #linebreak()  
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
    [1345€],
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
    columns: (1fr, 3fr, 1fr, 1fr),
    inset: 10pt,
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
    [17/12/2025 - /*da inserire gli sprint corretti*/],
    [In corso],
    
    [*Stesura del Piano di Progetto*],
    [Redazione delle seguenti sezioni del documento di Piano di Progetto: 
    - Introduzione, 
    - Analisi e gestione dei rischi, 
    - Pianificazione a lungo termine, 
    - Pianificazione a breve termine.],
    [23/12/2025 /*da inserire gli sprint corretti*/], 
    [In corso],

    [*Stesura del Piano di Qualifica*],
    [Redazione delle seguenti sezioni del documento di Piano di Qualifica: 
    - Introduzione, 
    - Qualità di processo, 
    - Qualità di prodotto, 
    - Metodi di testing, 
    - Cruscotto di valutazione,
    - Automiglioramento.],
    [23/12/2025 - /*da inserire gli sprint corretti*/],
    [In corso],

    [*Stesura del documento di Norme di Progetto*],
    [Redazione delle seguenti sezioni del documento di Norme di Progetto: 
    - Introduzione, 
    - Processi primari, 
    - Processi di supporto, 
    - Processi organizzativi, 
    - Norme di sviluppo.],
    [20/12/2025 - /*da inserire gli sprint corretti*/],
    [In corso],
    
    [*Implemen- tazione del Glossario*],
    [La redazione del Glossario sarà un documento in costante aggiornamento, che evolverà parallelamente allo sviluppo di altri documenti. Ogni membro del gruppo avrà la responsabilità di 
    - aggiungere nuove voci 
    qualora lo ritenesse necessario durante la stesura di altri documenti o durante lo sviluppo del progetto.],
    [18/11/2025 - /*da inserire gli sprint corretti*/], 
    [In corso],

    [*Sviluppo del Proof of Concept (PoC)*],
    [La realizzazione di un Proof of Concept (PoC) serve a mostrare la fattibilità tecnica di alcune funzionalità chiave che il prodotto #def[Code Guardian] dovrebbe presentare alla #def[Product Baseline] (PB). Questo si traduce nella creazione di un prototipo che usa le tecnologie scelte per dimostrare la fattibilità.],
    [Analisi delle tecnologie: sprint 2 (forse) /*da inserire gli sprint corretti*/],
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
La pianificazione a breve termine si concentra sulla suddivisione del lavoro degli #def[Sprint] settimanali o bisettimanale. 
Il team ha scelto di seguire un #def[Approccio Agile], che prevede l'adozione di strumenti di gestione del progetto come #strong[Jira] per organizzare e monitorare le attività durante ogni sprint. #linebreak()
Questa sezione descrive come il team intende organizzare le attività, assegnare le responsabilità e monitorare i progressi durante ciascun sprint. 
L'obiettivo principale della pianificazione a breve termine è garantire che ogni sprint sia ben definito, con obiettivi chiari e misurabili, che determini i ruoli per ciascun membro del gruppo, in modo da facilitare la gestione del progetto.

Seguiranno ora le descrizioni dei vari #def[Sprint], in cui verranno esposte:
- Informazioni generali e attività da svolgere
- Prospetto consumo tempo e costi
- Rischi attesi
- Consumo tempo e costi effettivi
- Aggiornamento delle risorse rimanenti 
- Retrospettiva, comprendente anche i rischi effettivamente riscontrati 
#pagebreak()

== Requirements and Technology Baseline (RTB)
=== Sprint 1
Inizio: 7/11/2025 
Fine prevista: 14/11/2025
Fine reale: 14/11/2025
==== Informazioni generali e attività da svolgere
Placeholder testo
==== Prospetto consumo tempo e costi
Placeholder testo
==== Rischi attesi
Placeholder testo
==== Consumo tempo e costi effettivi
Placeholder testo
==== Aggiornamento delle risorse rimanenti
Placeholder testo
==== Retrospettiva
Placeholder testo
#pagebreak()

=== Sprint 2 
Inizio 

Circa 4 sprint definiamo insieme cosa fare