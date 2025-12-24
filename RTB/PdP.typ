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
#let versione = "v0.0.0"

#titlePage("Piano di Progetto", versione)
#set page(numbering: "1", header: header("Piano di Progetto"), footer: footer())
#let history = (
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
- #strong[RO] = #strong[R]ischio #strong[O]rganizzativo

Consapevoli che l'inesperienza potrebbe ridurre l'efficacia iniziale delle mitigazioni, il gruppo agirà in questo modo: ogni fallimento nella gestione di un rischio verrà registrato durante la fase di controllo e sfruttato per aggiornare le procedure, garantendo così una risposta sempre più solida man mano che il progetto avanza.

== Rischi Tecnologici
//breve descrizione(?)

=== RT1: Rischio Tecnologico...
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
    [],
    [*Descrizione*], 
    [],
    [*Mitigazione*], 
    [],
    [*Probabilità di avvenimento*],
    [],
    [*Pericolosità delle ripercussioni*],
    [],
  ),
  caption: [Informazioni sul rischio RT1],
)

== Rischi Individuali
//breve descrizione(?)

=== RI1: Rischio Individuale...
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
    [],
    [*Descrizione*], 
    [],
    [*Mitigazione*], 
    [],
    [*Probabilità di avvenimento*],
    [],
    [*Pericolosità delle ripercussioni*],
    [],
  ),
  caption: [Informazioni sul rischio RI1],
)

== Rischi Organizzativi
//breve descrizione(?)

=== RG1: Rischio Organizzativo...
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
    [RO1],
    [*Nome*], 
    [],
    [*Descrizione*], 
    [],
    [*Mitigazione*], 
    [],
    [*Probabilità di avvenimento*],
    [],
    [*Pericolosità delle ripercussioni*],
    [],
  ),
  caption: [Informazioni sul rischio RO1],
)

= Pianificazione nel lungo termine

== Attività previste per la Requirements and Technology Baseline (RTB)

== Attività previste per la Product Baseline (PB)

= Pianificazione nel breve termine