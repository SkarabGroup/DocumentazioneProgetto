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
#let versione = "v0.1.0"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#let history = (
  (
    "2025/12/27", 
    "0.2.0", 
    "Aggiunta dei rischi RT1, RT2, RI1, RI2, RCO1 e RCO2", 
    members.andrea
  ),
  (
    "2025/12/24", 
    "0.1.0", 
    "Inizio stesura documento, introduzione, scopo, glossario, introduzione analisi rischi", 
    members.andrea
  ),
  (
    "2025/12/23", 
    "0.0.0", 
    "Creazione documento", 
    members.andrea
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
Il *#underline[Piano di Progetto#sub[G]]* è un documento che ha l'obiettivo di definire la strategia di pianificazione e le attività necessarie per lo sviluppo del prodotto software durante il corso del progetto di *#underline[Ingegneria del Software#sub[G]]*. \
Questo documento rappresenta lo strumento fondamentale a supporto del gruppo per: 
- L'analisi e la mitigazione dei rischi che potrebbero insorgere durante il ciclo di vita del software;
- La pianificazione temporale delle attività e la gestione delle scadenze;
- La stima preventiva dei costi e delle risorse necessarie;
- Il monitoraggio continuo tramite il confronto tra preventivo e consuntivo al termine di ogni periodo. \
Data la natura dinamica del progetto e la necessità di pianificare le attività volta per volta, la progettazione dettagliata a lungo termine risulta complessa e soprattutto inefficace. \ 
\Per questio motivo il documento adotterà un approccio incrementale: verrà costantemente aggiornato con nuove pianificazioni e consuntivi man mano che il lavoro procede.


== Glossario
Al fine di garantire la massima chiarezza espositiva e prevenire ambiguità nell’interpretazione della documentazione di progetto, è stato redatto un documento apposito denominato #strong("Glossario").  \
Questo strumento ha lo scopo di definire in modo univoco la terminologia tecnica, gli acronimi e i concetti specifici di dominio adottati dal gruppo durante l'intero ciclo di vita del software. \
Il Glossario è da considerarsi un documento in costante aggiornamento, che evolve parallelamente allo sviluppo del progetto. Per la versione attuale consultare questo #underline[indirizzo]. \
Per facilitare la lettura, ogni occorrenza di un termine presente nel Glossario viene contrassegnata con una sottolineatura e con una 'G' a pedice, come nel seguente esempio: #underline[parola#sub[G]].

== Riferimenti
- #strong("Capitolato C2: Piattaforma ad agenti per l’audit e la remediation dei repository software") \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf] \ Ultimo accesso 2025/12/23
- #strong("Dispense del corso di Ingegneria del Software sulla gestione di progetto") \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf] \ Ultimo accesso 2025/12/23



#pagebreak()

= Analisi e gestione dei rischi

== Introduzione
La gestione dei rischi è una componente critica per il successo del progetto. Un #underline[rischio#sub[G]] viene definito come un evento incerto che, qualora si verifichi, ha un impatto (positivo o negativo) su uno o più obiettivi del progetto, quali tempi, costi, o qualità del software prodotto. \
La redazione del #underline[Piano di Progetto#sub[G]] non può prescindere da un'attenta analisi delle incertezze. L'obiettivo di questa sezione è classificare le possibili minacce per valutare se il carico di lavoro inserito nel #underline[backlog#sub[G]] sia sostenibile rispetto alle capacità del gruppo.

Per garantire un approccio strutturato ed efficace, il processo di gestione dei rischi è stato suddiviso in quattro fasi distinte:
- #strong[Identificazione]: consiste nel rilevare e documentare tutte le potenziali fonti di rischio. Questa attività non si limita agli aspetti tecnici o strettamente legati al progetto, ma prende in esame anche la sfera organizzativa e la disponibilità personale dei membri del team;
- #strong[Analisi]: una volta individuati, i rischi vengono esaminati per stimarne la probabilità di accadimento e l'impatto potenziale. Questo passaggio è fondamentale per comprendere le possibili ripercussioni sul completamento del singolo #underline[sprint#sub[G]] e sul successo complessivo del progetto;
- #strong[Pianificazione]: sulla base dell'analisi, vengono definite le strategie di risposta. L'obiettivo è elaborare misure preventive atte a ridurre la probabilità che l'evento si verifichi o, qualora non fosse possibile evitarlo, predisporre azioni di mitigazione per limitarne gli effetti negativi;
- #strong[Controllo]: rappresenta la fase operativa di monitoraggio continuo durante lo svolgimento delle attività. Questo permette di intercettare tempestivamente l'insorgere di un rischio e di attivare prontamente le procedure di mitigazione stabilite in precedenza.

I possibili rischi individuati da #underline[Skarab Group#sub[G]] sono stati classificati in tre macro-categorie, in base alla loro natura e alle aree di influenza:
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
    [Suddivisione del lavoro tale da permettere ai membri del gruppo di specializzarsi in specifiche tecnologie, per poi condividerle con il resto del team al fine di ottenere una conoscenza comune. Utilizzo di risorse online, documentazione ufficiale e tutorial per accelerare l’apprendimento e favorire lo studio autonomo, così da colmare eventuali lacune. L’azienda #underline[Var Group#sub[G]] offre inoltre sessioni di formazione su alcune tecnologie e fornisce spunti rilevanti per il progetto.],
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
    [Durante la fase di selezione delle tecnologie per il sistema ad agenti #underline[Code Guardian#sub[G]], potrebbe essere effettuata una scelta non ottimale che non soddisfa appieno i requisiti del progetto. Questo potrebbe comportare difficoltà nell'implementazione, limitazioni funzionali o problemi di scalabilità in futuro.],
    [*Mitigazione*], 
    [Effettuare una valutazione approfondita delle tecnologie disponibili, considerando fattori quali la compatibilità con i requisiti del progetto, la facilità d’uso, la disponibilità di risorse e il supporto della comunità. Mantenere una certa flessibilità nel #underline[Piano di Progetto#sub[G]] per consentire eventuali cambiamenti tecnologici qualora emergano problemi significativi durante lo sviluppo. L’azienda #underline[Var Group#sub[G]] offre inoltre supporto attraverso riunioni e strumenti di comunicazione (#underline[Slack#sub[G]]) per alcune delle tecnologie descritte nel capitolato.],
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
    [Promuovere un ambiente di supporto all’interno del team, incoraggiando una comunicazione aperta in merito a eventuali difficoltà personali. Il #underline[responsabile#sub[G]] dovrebbe essere informato tempestivamente, così da poter riassegnare le responsabilità e adattare il piano di lavoro, escludendo temporaneamente il membro interessato per il periodo necessario. Al rientro, il membro del team dovrà recuperare il lavoro eventualmente non svolto, con il supporto degli altri componenti del gruppo.],
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
    [Promuovere un ambiente di supporto all’interno del team, incoraggiando una comunicazione aperta. Qualora i conflitti non si risolvessero autonomamente tra gli interessati, il #underline[responsabile#sub[G]] interverrà per mediare e individuare soluzioni condivise. Nei casi più critici, si potrà ricorrere al supporto del docente],
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

== Attività previste per la Requirements and Technology Baseline (RTB)

== Attività previste per la Product Baseline (PB)

#pagebreak()

= Pianificazione nel breve termine