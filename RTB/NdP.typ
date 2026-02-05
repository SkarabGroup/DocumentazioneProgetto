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
#let versione = "v0.6.0"
#set heading(numbering: "1.1.1")

#titlePage("Norme di Progetto", versione)
#set page(numbering: "1", header: header("Norme di Progetto"), footer: footer())

#let history = (
  (
    "2026/02/04",
    "0.6.0",
    "Rielaborazione delle Norme di Progetto relative al Piano di Progetto",
    members.suar,
  ),
  (
    "2026/02/03",
    "0.5.0",
    "Riscrittura delle sezioni relative all'AdR",
    members.andrea,
  ),
  (
    "2026/02/03",
    "0.4.0",
    "Integrazioni a PdQ e Metriche",
    members.alice,
  ),
  (
    "2026/01/15",
    "0.3.0",
    "Aggiunta prima versione sezione documenti",
    members.kevin,
    members.suar,
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
    members.kevin,
  ),
  (
    "2025/12/28",
    "0.1.0",
    "Rilascio iniziale con norme, processi e strumenti aggiornati",
    members.martinello,
    members.suar,
    members.kevin,
  ),
  (
    "2025/12/20",
    "0.0.1",
    "Prima bozza iniziale",
    members.martinello,
    members.suar,
    members.kevin,
  ),
)

#versionTable(history)

#indice()

#indiceTabelle()

#pagebreak()

= Introduzione

== Contesto del Progetto
Il presente documento descrive le #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#norme-di-progetto")[#def[Norme di Progetto]] relative al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]], proposto dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def[Var Group]] e realizzato dal gruppo di studenti #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

Il progetto ha come obiettivo lo sviluppo di una piattaforma software ad #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] finalizzata all’#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e alla #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] automatizzata delle vulnerabilità presenti nei repository di codice sorgente. Il sistema è progettato in conformità ai requisiti e ai vincoli definiti nel #link(<capitolato>)[#underline[capitolato *C2*]].
La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Finalità del Documento
Le Norme di Progetto stabiliscono il quadro di riferimento metodologico, organizzativo e tecnologico adottato per lo sviluppo del sistema software.

Il documento ha valore vincolante per l’intero gruppo di lavoro e persegue i seguenti obiettivi:
- definire un insieme di regole comuni e convenzioni condivise al fine di garantire uniformità e coerenza nello sviluppo del prodotto software;
- individuare e descrivere gli strumenti, le tecnologie e gli ambienti di lavoro adottati;
- formalizzare i processi operativi, organizzativi e di controllo applicati durante l’intero ciclo di vita del progetto;
- assicurare l’allineamento delle attività progettuali agli standard di riferimento e alle buone pratiche dell’ingegneria del software.

Il rispetto delle norme definite nel presente documento è obbligatorio per tutti i membri del gruppo di lavoro e costituisce un requisito fondamentale per garantire qualità, tracciabilità e controllo dell’intero ciclo di sviluppo.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite sottolineatura*, qualora *non sia esplicitamente indicato come collegamento a un documento o a una sezione specifica*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario]].

== Riferimenti

=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione delle Norme di Progetto e per la definizione delle regole da rispettare durante il ciclo di vita del prodotto software:

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *04/02/2026*)

- *IEEE 829 – Standard for Software and System Test Documentation*: definizione della struttura dei piani di test, casi di test, procedure e report. \
  #underline[#link("https://ieeexplore.ieee.org/document/4578383")] \
  (ultimo accesso: *04/02/2026*)

- *IEEE 830 – Standard for Software Requirements Specifications*: guida alla redazione e classificazione dei requisiti funzionali e non funzionali. \
  #underline[#link("https://ieeexplore.ieee.org/document/720574")] \
  (ultimo accesso: *04/02/2026*)

- *IEEE 1016 – Recommended Practice for Software Design Descriptions*: linee guida per la descrizione dell’architettura software e dei principali design pattern. \
  #underline[#link("https://ieeexplore.ieee.org/document/741934")] \
  (ultimo accesso: *04/02/2026*)

- *ISO/IEC/IEEE 12207 – Software Life Cycle Processes*<12207>: framework internazionale per la gestione dei processi di sviluppo, manutenzione e dismissione del software. \
  #underline[#link("https://ieeexplore.ieee.org/document/8100771")] \
  (ultimo accesso: *04/02/2026*)

=== Riferimenti Informativi
- *Dispense del corso di Ingegneria del Software relative ai Processi di Ciclo di Vita del Software* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T02.pdf")] \
  (ultimo accesso: *04/02/2026*)

- *Dispense del corso di Ingegneria del Software relative alla Gestione di Progetto* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf")] \
  (ultimo accesso: *04/02/2026*)

#pagebreak()
= Processi Primari
In conformità allo standard #underline[#link(<12207>)[ISO/IEC/IEEE 12207]], il ciclo di vita di un sistema software è descritto attraverso un insieme strutturato di processi, ciascuno dei quali copre specifici ambiti di responsabilità e attività. Tra questi, i processi primari rappresentano il nucleo operativo del ciclo di vita e descrivono le interazioni fondamentali tra chi richiede il sistema, chi lo realizza e chi ne cura lo sviluppo tecnico.

I processi primari definiscono cosa viene fatto, da chi e con quale responsabilità contrattuale e operativa, indipendentemente dalle metodologie o dagli strumenti adottati. Essi costituiscono quindi il riferimento concettuale per l’organizzazione delle attività progettuali e per la distribuzione dei ruoli all’interno del progetto.

I processi primari, come indicato nello standard sopracitato, sono:
- Acquisizione (Acquisition);
- Fornitura (Supply);
- Sviluppo (Development);
- Operazione (Operation);
- Manutenzione (Maintenance).

Nel contesto del presente progetto, sono considerati rilevanti principalmente i processi di Fornitura e Sviluppo, in quanto direttamente pertinenti alla natura didattica e contrattuale dell’iniziativa.
= Processo di Fornitura
== Descrizione del Processo
Il Processo di Fornitura definisce l’insieme delle attività svolte dal gruppo di lavoro in qualità di fornitore al fine di pianificare, coordinare e consegnare il prodotto software e la relativa documentazione in conformità ai requisiti stabiliti dal proponente.

Nel contesto del progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]], il gruppo #def[Skarab Group] assume il ruolo di fornitore, mentre l’azienda #def[Var Group] ricopre il ruolo di proponente. Il #underline[#link(<capitolato>)[capitolato C2]] costituisce il riferimento contrattuale che disciplina requisiti, vincoli e obiettivi della fornitura.

Il processo di fornitura è responsabile della gestione complessiva del progetto dal punto di vista organizzativo e qualitativo e coordina le attività necessarie a garantire la conformità degli artefatti prodotti rispetto a quanto concordato.

== Attività del Processo
Nel presente progetto, il processo di fornitura si articola nelle seguenti attività principali:

- *Analisi e presa in carico dei requisiti* \
  Studio sistematico dei #underline(link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-funzionali")[#def[requisiti funzionali]]) e dei #underline(link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requisiti-non-funzionali")[#def[requisiti non funzionali]]) definiti nel Capitolato C2, finalizzato alla comprensione, classificazione e valutazione di fattibilità tecnica e organizzativa, nonché all’individuazione dei vincoli progettuali rilevanti.

- *Pianificazione delle attività di progetto* \
  Definizione della struttura delle attività necessarie allo sviluppo del progetto, assegnazione delle responsabilità all’interno del gruppo di lavoro, stima delle tempistiche e delle risorse disponibili e individuazione delle principali milestone di progetto.

- *Produzione, gestione e verifica della documentazione* \
  Redazione progressiva della documentazione di progetto secondo strutture e convenzioni condivise, gestione delle versioni dei documenti e verifica della loro completezza, coerenza e conformità alle Norme di Progetto e agli standard di riferimento.

- *Monitoraggio dell’avanzamento e controllo della qualità della fornitura* \
  Controllo periodico dello stato di avanzamento delle attività rispetto alla pianificazione definita, verifica del rispetto delle scadenze e valutazione della qualità degli artefatti prodotti mediante attività di revisione interna.

- *Preparazione e consegna degli artefatti* \
  Consolidamento degli artefatti prodotti, verifica finale della loro conformità ai requisiti stabiliti e predisposizione della documentazione necessaria alla consegna ufficiale prevista dalle scadenze di progetto.

Nel contesto didattico del progetto, e in particolare nel periodo che conduce alla #underline(link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#requirements-and-technology-baseline")[#def[RTB]]), tali attività si concretizzano prevalentemente nella redazione strutturata e nel controllo della documentazione di progetto, che rappresenta una componente essenziale della fornitura.

== Prodotti del Processo
Il processo di fornitura prevede la produzione e la gestione dei seguenti prodotti (artefatti documentali):

- *Norme di Progetto* \
  Documento che definisce le regole metodologiche, organizzative e tecniche adottate dal gruppo di lavoro durante l’intero ciclo di vita del progetto.

- *Piano di Progetto* \
  Documento che descrive l’organizzazione del lavoro, la pianificazione delle attività, l’allocazione delle risorse, la gestione dei rischi e le modalità di monitoraggio dell’avanzamento.

- *Piano di Qualifica* \
  Documento che specifica i criteri di qualità del prodotto e della documentazione, nonché le attività di verifica e validazione previste.

- *Analisi dei Requisiti* \
  Documento che raccoglie e formalizza i requisiti funzionali e non funzionali del sistema, derivati dal Capitolato C2.


- *Verbali di verifica e revisione* \
  Documenti che registrano esiti e decisioni delle attività di controllo e revisione svolte durante il progetto.

== Procedure operative trasversali del Processo
Le procedure operative trasversali disciplinano *quando* e *come* le attività del processo di fornitura vengono eseguite a livello di processo, indipendentemente dallo specifico documento coinvolto. Esse definiscono ruoli, passi operativi, criteri di controllo e output attesi, garantendo uniformità, tracciabilità e controllo dell’esecuzione del processo.

In particolare, il presente processo prevede procedure trasversali per:
- avvio e presa in carico delle attività di progetto;
- gestione di versionamento, approvazione e rilascio degli artefatti;
- revisione interna e controllo qualità;
- consegna degli artefatti e registrazione delle evidenze.

== Norme di redazione e attuazione dei prodotti documentali
Per ciascun prodotto documentale individuato, le Norme di Progetto definiscono:
- le convenzioni di redazione e di struttura;
- le modalità operative con cui vengono attuati gli elementi previsti dal documento (es. monitoraggio e rendicontazione nel Piano di Progetto);
- i criteri minimi di qualità e tracciabilità.

Le sezioni seguenti descrivono tali norme per i principali prodotti documentali del processo di fornitura.

=== Piano di Progetto

==== Nota sull’adozione dello standard IEEE 1058
Il documento *Piano di Progetto* adotta come riferimento metodologico lo standard *IEEE 1058-1998 (Standard for Software Project Management Plans)*. Tale scelta riflette la volontà di applicare un approccio rigoroso e sistematico alla gestione del progetto, adattando i contenuti alle dimensioni, alla complessità e alle tempistiche del caso di studio considerato.

L’adozione dello standard garantisce una copertura completa degli aspetti critici del ciclo di vita del progetto e si traduce concretamente nei seguenti elementi chiave:

- *Struttura e organizzazione sistematica:* \
  l’indice e l’articolazione del documento ricalcano la gerarchia proposta dallo standard IEEE 1058, assicurando una pianificazione completa delle aree gestionali, organizzative e tecniche ed evitando lacune nella definizione delle responsabilità e dei processi.

- *Analisi e gestione del rischio:* \
  in conformità alle linee guida IEEE, è adottato un approccio di risk management basato su valutazioni di probabilità, impatto e strategie di mitigazione/contingenza, consentendo un monitoraggio strutturato delle principali incertezze di progetto.

- *Tracciabilità e controllo:* \
  il documento distingue in modo esplicito la fase di pianificazione (*Preventivo*) da quella di monitoraggio e rendicontazione (*Consuntivo*), permettendo un controllo oggettivo dell’avanzamento e l’analisi degli eventuali scostamenti rispetto alle stime iniziali.

- *Efficacia operativa:* \
  alcuni moduli previsti dallo standard sono stati ottimizzati e accorpati per migliorare la leggibilità e la comunicazione all’interno del team, mantenendo inalterati rigore metodologico e chiarezza dei flussi informativi richiesti dalla normativa.

==== Definizione del documento
Il Piano di Progetto è il documento che definisce l’organizzazione, la pianificazione e il controllo delle attività necessarie alla realizzazione del progetto software. Esso descrive la struttura delle attività, l’allocazione delle risorse, la pianificazione temporale, la gestione dei rischi e le modalità di monitoraggio dell’avanzamento del progetto.

Il Piano di Progetto costituisce il riferimento operativo per la conduzione del progetto e supporta il coordinamento delle attività del gruppo di lavoro, garantendo la coerenza tra obiettivi, tempi e risorse disponibili.

==== Elementi costituenti del documento
Il Piano di Progetto è strutturato in una serie di elementi fondamentali che concorrono alla pianificazione, alla gestione e al controllo dell’intero progetto software. Ciascun elemento svolge un ruolo specifico e contribuisce a fornire una visione completa e coerente dell’organizzazione del lavoro, delle risorse impiegate e dell’andamento del progetto nel tempo.

Gli elementi costituenti del Piano di Progetto sono descritti di seguito.

===== Analisi dei Rischi
L’analisi dei rischi ha lo scopo di individuare e valutare i principali fattori di rischio che possono compromettere il raggiungimento degli obiettivi di progetto. Essa comprende l’identificazione di rischi di natura tecnica, organizzativa e temporale, nonché la valutazione della loro probabilità di occorrenza e del potenziale impatto sul progetto.

====== Metodologia di Analisi
Il team adotta un approccio *semi-quantitativo* per la valutazione dei rischi. Ogni rischio identificato viene descritto e valutato sulla base di due parametri fondamentali:

- *Probabilità di accadimento (P):* verosimiglianza con cui l’evento potrebbe verificarsi;
- *Impatto (I):* gravità delle conseguenze sul progetto qualora l’evento si manifesti.

Il *Livello di Rischio (R)* è calcolato come:
$ R = P times I $

I parametri $P$ e $I$ sono valutati su una scala discreta da 1 a 3.

La scelta di una scala ridotta (1–3) rispetto a scale più estese (es. 1–5 o percentuali) è motivata dalla volontà di:
- *ridurre la soggettività:* in assenza di dati storici pregressi, una scala più ampia introdurrebbe un’eccessiva varianza nelle stime individuali; la tripartizione Basso/Medio/Alto facilita una categorizzazione netta e supporta il decision-making;
- *supportare l’approccio iterativo:* il metodo adottato permette una rivalutazione rapida dei rischi a ogni Sprint, evitando overhead non necessario rispetto alla dimensione del progetto.

#figure(
  table(
    columns: (auto, 1fr, 1fr, 1fr),
    inset: 12pt,
    align: center + horizon,
    stroke: 0.5pt + luma(200),

    table.cell(rowspan: 2, colspan: 1, align: horizon)[*Probabilità*],
    table.cell(colspan: 3, fill: luma(240))[*Impatto*],
    [Basso (1)], [Medio (2)], [Alto (3)],

    [*Bassa (1)*],
    table.cell(fill: rgb("e6ffe6"))[1 (Basso)],
    table.cell(fill: rgb("e6ffe6"))[2 (Basso)],
    table.cell(fill: rgb("e6ffe6"))[3 (Basso)],

    [*Media (2)*],
    table.cell(fill: rgb("e6ffe6"))[2 (Basso)],
    table.cell(fill: rgb("fff5e6"))[*4 (Medio)*],
    table.cell(fill: rgb("ffcccc"))[*6 (Alto)*],

    [*Alta (3)*],
    table.cell(fill: rgb("e6ffe6"))[3 (Basso)],
    table.cell(fill: rgb("ffcccc"))[*6 (Alto)*],
    table.cell(fill: rgb("ffcccc"))[*9 (Critico)*],
  ),
  caption: [Matrice di Rischio: visualizzazione delle soglie di intervento],
)

Sulla base del valore di $R$, i rischi vengono classificati per priorità come segue:
- *Rischio Basso ($1–3$):* livello di guardia; il rischio è accettabile e soggetto al solo monitoraggio periodico;
- *Rischio Medio ($4$):* livello di attenzione; richiede la definizione preventiva di una strategia di mitigazione e un controllo frequente;
- *Rischio Alto ($6–9$):* livello critico; richiede azioni preventive tempestive e la predisposizione di piani di contingenza.

====== Categorie di rischio
Per favorire l’analisi sistematica e l’assegnazione delle responsabilità, i rischi sono classificati nelle seguenti macro-categorie:
- *RT (Rischi Tecnologici):* criticità legate alle tecnologie adottate (es. #def[LLM], #def[Agenti]), agli strumenti di sviluppo, alle integrazioni e all’infrastruttura;
- *RI (Rischi Interpersonali):* problematiche relative al #def[team di progetto], quali disponibilità dei membri, comunicazione, coordinamento e gestione dei conflitti;
- *RCO (Rischi di Costo e Organizzativi):* rischi derivanti da stime non accurate, pianificazione temporale (#def[Schedulazione]), dipendenze esterne e vincoli organizzativi.

====== Ruoli e responsabilità
La gestione dei rischi è una responsabilità condivisa, articolata come segue:
- *Responsabile di Progetto:* supervisiona il processo di gestione dei rischi, valuta la criticità degli eventi e decide l’attivazione delle strategie di mitigazione o dei piani di contingenza;
- *Team di Progetto:* contribuisce all’identificazione dei rischi e segnala tempestivamente l’insorgere di eventi critici o condizioni anomale;
- *Stakeholder di riferimento:* vengono informati in caso di rischi ad alto impatto o di variazioni rilevanti rispetto al piano approvato.

====== Gestione e monitoraggio dei rischi
La gestione dei rischi non è limitata alla fase di avvio del progetto, ma costituisce un processo ciclico di controllo che accompagna l’intero ciclo di vita del sistema ed è integrato nelle attività di pianificazione e revisione degli Sprint.

Nel caso in cui un rischio si manifesti o emergano nuovi rischi non precedentemente previsti, il team applica la seguente procedura operativa:
+ *Rilevamento (Detection):* ogni membro del team segnala tempestivamente al *Responsabile di Progetto* l’insorgere di problematiche tecniche o organizzative, inclusi superamenti di soglie di allarme (ad esempio ritardi superiori al 20% rispetto alla pianificazione prevista).
+ *Documentazione:* l’evento viene descritto nel verbale della prima riunione utile e, qualora necessario, viene aperto o aggiornato un ticket sulla piattaforma di gestione delle attività adottata dal team.
+ *Valutazione e risposta:* il Responsabile di Progetto valuta la criticità del rischio e attiva la strategia di mitigazione o il piano di contingenza più appropriato, quali la riallocazione delle risorse, la revisione delle priorità o la riduzione dello scopo opzionale.
+ *Rendicontazione (Consuntivo):* al termine dello #def[Sprint] o di una fase significativa del progetto (es. #def[RTB]), l’evento viene analizzato nel consuntivo del periodo di riferimento, valutando impatto effettivo su tempi, costi e qualità, efficacia delle contromisure e necessità di azioni correttive.
+ *Aggiornamento delle strategie:* le strategie di mitigazione vengono aggiornate e integrate nella pianificazione degli Sprint successivi al fine di ridurre probabilità o impatto di eventi analoghi futuri.

===== Pianificazione del ciclo di vita del software
La pianificazione del ciclo di vita del software descrive l’organizzazione temporale del progetto e la suddivisione delle attività nelle diverse fasi previste. Essa definisce milestone, scadenze intermedie e sequenza delle attività necessarie alla realizzazione del prodotto software.

Questo elemento consente di fornire una visione d’insieme dell’evoluzione del progetto e costituisce il riferimento per il monitoraggio dell’avanzamento delle attività.

===== Preventivo ed allocazione delle risorse
Il preventivo e l’allocazione delle risorse definiscono la distribuzione delle risorse disponibili, in particolare del tempo di lavoro, tra le diverse attività di progetto. Questo elemento include la stima dell’impegno richiesto per ciascuna attività e l’assegnazione delle responsabilità ai membri del gruppo di lavoro.

Il preventivo rappresenta una previsione iniziale dell’impegno complessivo e costituisce il riferimento per il confronto con i consuntivi rilevati durante l’esecuzione del progetto.

===== Monitoraggio e controllo
Il monitoraggio e controllo dell’avanzamento ha lo scopo di verificare in modo sistematico l’andamento del progetto rispetto alla pianificazione definita. Tale attività si basa sulla suddivisione del lavoro in iterazioni (Sprint), per ciascuna delle quali sono definite in modo atomico le attività da svolgere.

Per ogni Sprint vengono rilevati il preventivo orario e il consuntivo effettivo delle attività svolte, consentendo il confronto tra quanto pianificato e quanto realizzato. I dati raccolti sono utilizzati per valutare l’andamento generale del progetto, individuare eventuali scostamenti e supportare le decisioni di adattamento della pianificazione.

Il monitoraggio include inoltre un’analisi retrospettiva dell’andamento dei prodotti e del team di lavoro, finalizzata al miglioramento continuo dell’organizzazione e dell’efficacia del processo di sviluppo.

====== Metodologia di monitoraggio
Il progetto adotta un sistema di monitoraggio basato sul confronto sistematico tra valori pianificati (*Preventivo*) e valori effettivamente rendicontati (*Consuntivo*), con cadenza al termine di ogni Sprint.

Gli indicatori utilizzati sono:
- *Ore previste:* ore pianificate nel preventivo di Sprint;
- *Ore effettive:* ore realmente rendicontate dai membri del team;
- *Scostamento (Delta):* differenza tra ore effettive e ore previste;
- *Costo effettivo:* calcolato sulla base delle ore effettive e delle tariffe associate ai ruoli (ove applicabile).

L’analisi degli scostamenti (*Variance Analysis*) costituisce lo strumento principale per l’individuazione tempestiva di inefficienze operative.

====== Strumenti di rendicontazione
La rendicontazione oraria e il tracciamento delle attività avvengono tramite la piattaforma di issue tracking adottata dal team (es. #def[Jira]), che rappresenta la fonte primaria dei dati di consuntivo.

Le modalità di utilizzo dello strumento includono:
- associazione delle ore rendicontate alle singole task;
- classificazione delle attività per ruolo;
- aggiornamento periodico secondo le scadenze definite dal team.

====== Regole di rendicontazione
Sono considerate rendicontabili esclusivamente le attività che:
- rispettano gli standard definiti nelle Norme di Progetto;
- producono artefatti verificabili o avanzamenti misurabili;
- risultano coerenti con gli obiettivi dello Sprint.

Attività non conformi o prive di valore aggiunto possono essere escluse dal consuntivo su decisione del Responsabile di Progetto.

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
L’#def("Analisi dei Requisiti") è il documento che descrive in dettaglio i requisiti funzionali e non funzionali
previsti dal progetto #def("Code Guardian"). Nel dettaglio il documento contiene un’analisi dettagliata delle
funzionalità del sistema, degli attori coinvolti e le informazioni necessarie al tracciamento dei
requisiti rispetto alle loro fonti. La struttura è la seguente:
- Introduzione al progetto e obiettivi.
- Lista degli attori coinvolti.
- Lista dei casi d'uso.
- Lista dei requisiti funzionali e non funzionali, classificati in obbligatori, desiderabili e opzionali.

==== Glossario
Documento che definisce i termini tecnici e specifici utilizzati nel progetto, per garantire una comprensione comune tra tutti i membri del team e gli stakeholder esterni. questo documento serve a fornire definizioni chiare e univoche per evitare ambiguità. Oltre che il documento in sé per s'é, il glossario é consultabile tramite una pagina nel sito web di Skarab Group. Questo permette interattivitá e link esterni all'interno di ogni documento che compone la documentazione di progetto. Per convenzione, un termine sará un link al glossario sul sito solo la prima volta che compare all'interno di un documento, assumento una lettura ordinata del documento stesso da parte del lettore.

==== NdP - Norme di Progetto
Documento che definisce il #def("WoW"),le norme, le convenzioni, gli strumenti e i processi che i membri del gruppo devono seguire durante il ciclo di vita del progetto.

==== PdP - Piano di Progetto
Documento che descrive l'organizzazione del lavoro, le risorse, il modello di ciclo di vita adottato, la pianificazione delle attività divise per #def("sprint") e la valutazione dei rischi associati al progetto. Inoltre, il PdP riporta attivamenre il monitoraggio del lavoro di ogni componente del gruppo, con l'obiettivo di garantire il rispetto delle tempistiche e le ore di lavoro previste per i vari ruoli.

==== PdQ - Piano di Qualifica
Documento che definisce le strategie, le metodologie e le attività di #def("verifica") e #def("validazione") per garantire che i prodotti del progetto soddisfino i requisiti specificati. Include la definizione delle metriche di qualità, i piani di test e le procedure di controllo qualità.

===== Nota sull'adozione dello Standard ISO/IEC 25010 e PDCA
La redazione del Piano di Qualifica e la definizione delle metriche si ispirano alla famiglia di standard ISO/IEC 25010 (SQuaRE). Tale scelta garantisce una classificazione rigorosa delle caratteristiche di qualità del prodotto (es. Sicurezza, Affidabilità, Usabilità).
Inoltre, l'adozione strutturale del ciclo /*#def[PDCA]*/ (Plan-Do-Check-Act) assicura che il processo di controllo qualità non sia statico, ma evolva:
- *Plan:* Definizione delle metriche e delle soglie nel presente documento.
- *Do:* Esecuzione delle misurazioni durante gli Sprint.
- *Check:* Analisi degli scostamenti nei periodi di retrospettiva.
- *Act:* Aggiornamento delle Norme di Progetto e ricalibrazione delle metriche per lo Sprint successivo.


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
    text(white)[*Documento*], text(white)[*Redattori*], text(white)[*Destinatari*], text(white)[*Uso*],

    // Rows
    [Lettera di Presentazione], [Responsabile], [Proponente, #members.cardin, #members.tullio, Skarab Group], [Esterno],

    [AdR – Analisi dei Requisiti], [Analisti], [Proponente, #members.cardin, #members.tullio, Skarab Group], [Esterno],

    [Glossario], [Tutti i membri del gruppo], [Stakeholder interni ed esterni], [Esterno],

    [NdP – Norme di Progetto], [Responsabili di processo], [Skarab Group, #members.cardin, #members.tullio], [Interno],

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
L'Analisi dei Requisiti costituisce una delle fasi più critiche e determinanti dell'intero ciclo di vita del software, assumendo un ruolo centrale durante la #def("Requirements and Technology Baseline") (#strong("RTB")). Questa attività non si limita alla semplice raccolta di informazioni, ma mira all’individuazione, allo studio e alla formalizzazione rigorosa di tutte le necessità che il sistema Code Guardian dovrà soddisfare per rispondere efficacemente alle richieste del proponente. \
Svolgere un'analisi completa e corretta è fondamentale per fornire una base solida per le successive fasi di progettazione e codifica. I risultati di questa analisi sono documentati nel documento #strong("Analisi dei Requisiti vx.y.z"). #TODO("Link al documento")

===== Casi d'Uso
I #def("casi d'uso") rappresentano scenari specifici che descrivono come gli attori interagiscono con il sistema per raggiungere determinati obiettivi. Essi forniscono una visione chiara delle funzionalità richieste e aiutano a identificare i requisiti funzionali del sistema.
Per la descrizione dei casi d'uso viene utilizzata la nomenclatura #strong("UCPrincipale.Secondario") dove:
- *UC*: acronimo di Use Case (caso d'uso).
- *Principale*: numero progressivo del caso d'uso principale, identifica un macro-scenario o una funzionalità atomica.
- *Secondario*: numero progressivo del caso d'uso secondario, identifica varianti o estensioni del caso d'uso principale (sotto-casi).
L’identificatore *Principale* è univoco a livello globale; non è quindi ammessa l’esistenza di due casi d’uso distinti con il medesimo valore principale. Il valore *Secondario* può invece essere ripetuto all'interno del documento, a patto che ciò non avvenga mai sotto lo stesso identificatore principale. Nel caso in cui un scenario secondario presenti a sua volta delle inclusioni o estensioni, la stringa *Principale.Secondario* assumerà il ruolo di radice per la nuova gerarchia, seguendo le medesime regole di progressione e unicità sopra descritte.

Per approfondimenti riguardanti gli attori coinvolti, le precondizioni, le postcondizioni e lo scenario principale degli eventi, si rimanda alla sezione dedicata del documento #strong("Analisi dei Requisiti vx.y.z"). #TODO("Link al documento")

===== Requisiti
I requisiti rappresentano le specifiche funzionali e non funzionali che il sistema deve soddisfare. Ogni requisito è classificato per garantire la tracciabilità rispetto alle fonti e ai casi d'uso associati. \
Per la descrizione dei requisiti viene utilizzata la nomenclatura #strong("TipologiaRPrioritàNumero") dove:
- *Tipologia*: indica il tipo di requisito. I valori possibili sono:
  - *F*: Requisito #strong("F")unzionale.
  - *Q*: Requisito di #strong("Q")ualità.
  - *C*: Requisito di #strong("V")incolo.
- *R*: acronimo di Requisito.
- *Priorità*: indica l'importanza del requisito. I valori possibili sono:
  - *Ob*: Requisito #strong("Ob")bligatorio.
  - *De*: Requisito #strong("De")siderabile.
  - *Op*: Requisito #strong("Op")zionale.
- *Numero*: numero progressivo univoco per ogni requisito all'interno della sua tipologia.

Per approfondimenti riguardanti la descrizione dettagliata, la fonte e i casi d'uso associati a ciascun requisito, si rimanda alla sezione dedicata del documento #strong("Analisi dei Requisiti vx.y.z"). #TODO("Link al documento")

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
    columns: (auto, auto),
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
    [MongoDB], [documentazione ufficiale,],
  ),
  caption: [Tecnologie e fonti di formazione],
)

Inoltre l'azienda proponente Var group ha tenuto delle lezioni specifiche per ognuna delle tecnologie necessarie allo sviluppo del progetto e ha dato disponibilitá per la risoluzione di dubbi e domande.

= Metriche
Il gruppo adotta un sistema di metriche per monitorare processi e prodotti.

== Strategia di Definizione delle Soglie Metriche
La determinazione delle soglie di accettabilità e ottimalità per le metriche adottate dal gruppo /*#def("Skarab Group")*/ non è un processo arbitrario, ma segue una strategia ingegneristica basata sui seguenti criteri:

- *Adesione agli Standard Internazionali:* Per i processi di fornitura, il gruppo adotta il framework /*#def("Earned Value Management")*/ (EVM), utilizzando gli intervalli di confidenza standard del settore ($0.90 - 1.10$) per garantire la stabilità economica e temporale. Per la qualità del prodotto, le soglie sono calibrate sulle caratteristiche del modello /*#def("ISO/IEC 25010")*/.
- *Analisi del Dominio e Benchmark:* Le metriche di supporto e sviluppo (es. /*#def("Gulpease Index"), #def("Complessità Ciclomatica")*/) sono tarate su benchmark di settore per lo sviluppo software moderno, garantendo che i requisiti di manutenibilità e sicurezza siano oggettivamente verificabili.
- *Miglioramento Continuo e Calibrazione (PDCA):* In linea con l'approccio /*#def("Agile")*/, le soglie sono soggette a revisione periodica. Al termine di ogni /*#def("Sprint")*/, i valori vengono analizzati rispetto alle prestazioni storiche del team; questo permette una ricalibrazione dinamica delle soglie nel /*#def("Piano di Qualifica")*/, rendendo gli obiettivi sempre sfidanti ma tecnicamente sostenibili (obiettivi *S.M.A.R.T.*).

== Nomenclatura delle Metriche
La nomenclatura utilizzata per le metriche è la seguente:
#align(center)[
  `M[Tipo][##]`
]

dove:
- `M` sta per Metrica
- `Tipo` può assumere uno tra questi valori:
  - `PC` ovvero Processo
  - `PD` ovvero Prodotto
- `##` è un numero progressivo crescente da 01.

== Metriche di Qualità del Processo

I processi vengono monitorati per garantire efficienza, efficacia e miglioramento continuo del _Way of Working_ adottato dal gruppo.

=== Processi Primari
==== Fornitura e Sviluppo
#show figure: set block(breakable: true)

#figure(
  block(
    breakable: true,
    table(
      columns: (auto, 1.5fr, 3fr),
      inset: 8pt,
      align: horizon,
      fill: (x, y) => if y == 0 { luma(220) },
      [*Codice*], [*Nome*], [*Descrizione*],

      [MPC01], [Budget At Completion], [Budget totale preventivato per il progetto],

      [MPC02], [Planned Value], [Valore del lavoro che si era pianificato di completare entro un determinato momento],

      [MPC03], [Actual Cost], [Costo effettivamente sostenuto per il lavoro svolto fino a un determinato momento],

      [MPC04], [Earned Value], [Valore del lavoro effettivamente completato],

      [MPC05],
      [Budget Variance],
      [Differenza tra il budget totale e la stima del costo finale. Un valore positivo indica che si prevede di risparmiare budget],

      [MPC06],
      [Schedule Variance],
      [Misura lo scostamento temporale: valori negativi indicano ritardi, positivi anticipi],

      [MPC07],
      [Cost Performance Index],
      [Indice di efficienza economica del progetto. CPI = 1 indica perfetta aderenza al budget, < 1 sforamento, > 1 risparmio],

      [MPC08],
      [Schedule Performance Index],
      [Indice di efficienza della schedulazione. SPI = 1 indica perfetta aderenza ai tempi, < 1 ritardo, > 1 anticipo],

      [MPC09],
      [Estimate At Completion],
      [Stima del costo totale finale del progetto basata sulla performance attuale. Utilizza il CPI per proiettare il costo a completamento considerando l'efficienza dimostrata],
    ),
  ),
  caption: [Metriche per il processo di Fornitura],
)

#figure(
  table(
    columns: (auto, 1.8fr, 2.5fr),
    inset: 8pt,
    align: horizon,
    fill: (x, y) => if y == 0 { luma(220) },
    [*Codice*], [*Nome*], [*Descrizione*],

    [MPC10],
    [Requirements Stability Index],
    [Misura la volatilità dei requisiti. Indica la percentuale di requisiti che non hanno subito modifiche, aggiunte o cancellazioni rispetto alla baseline iniziale],
  ),
  caption: [Metriche per il processo di Sviluppo],
)

*Nota:* Valori bassi di RSI possono segnalare un'analisi iniziale insufficiente o cambiamenti significativi nelle esigenze degli _stakeholder_. Il monitoraggio è cruciale specialmente a seguito di revisioni correttive.

=== Processi di Supporto
==== Documentazione e Verifica

#figure(
  table(
    columns: (auto, 1.8fr, 2.5fr),
    inset: 8pt,
    align: horizon,
    fill: (x, y) => if y == 0 { luma(220) },
    [*Codice*], [*Nome*], [*Descrizione*],

    [MPC11],
    [Indice di Gulpease],
    [Indice di leggibilità. Valuta la complessità linguistica basandosi sulla lunghezza delle parole e delle frasi. Valori: ≥80 molto facile; 60-80 media difficoltà; 40-60 abbastanza difficile; < 40 molto difficile],

    [MPC12], [Correttezza Ortografica], [Numero di errori ortografici rilevati nel documento],

    [MPC13],
    [Code Coverage],
    [Percentuale di codice sorgente che viene eseguita durante il lancio della suite di test automatizzati. Indica il grado di copertura della verifica dinamica],

    [MPC14],
    [Test Success Rate],
    [Percentuale di test automatizzati che superano con successo l'esecuzione. Un valore del 100% è necessario per garantire la stabilità del sistema prima di ogni rilascio],
  ),
  caption: [Metriche per il processo di Documentazione e Verifica],
)

*Rilevanza:* Il Test Success Rate deve rimanere costantemente al 100% per evitare regressioni e garantire l'affidabilità del _Software_.

=== Processi Organizzativi

#figure(
  table(
    columns: (auto, 1.8fr, 2.5fr),
    inset: 8pt,
    align: horizon,
    fill: (x, y) => if y == 0 { luma(220) },
    [*Codice*], [*Nome*], [*Descrizione*],

    [MPC15],
    [Metrics Satisfaction],
    [Percentuale di metriche che rispettano le soglie di accettabilità. Fornisce una visione d'insieme sulla qualità complessiva dei processi adottati],

    [MPC16],
    [Sprint Goal Achievement],
    [Percentuale degli obiettivi prefissati durante lo Sprint Planning che sono stati effettivamente raggiunti e validati al termine dello Sprint. Misura l'efficacia della pianificazione e dell'esecuzione],
  ),
  caption: [Metriche per i processi Organizzativi],
)

#pagebreak()

== Metriche di Qualità del Prodotto
La qualità del prodotto finale è intrinsecamente legata alla qualità dei processi che lo generano.

=== Adeguatezza Funzionale e Affidabilità

#figure(
  table(
    columns: (auto, 1.8fr, 2.5fr),
    inset: 8pt,
    align: horizon,
    fill: (x, y) => if y == 0 { luma(220) },
    [*Codice*], [*Nome*], [*Descrizione*],

    [MPD01],
    [Copertura Requisiti Obbligatori],
    [Percentuale di requisiti obbligatori soddisfatti rispetto al totale dei requisiti obbligatori identificati. Questi requisiti sono vincolanti per l'accettazione del prodotto],

    [MPD02],
    [Failure Density],
    [Misura la densità di errori nel software. Valori elevati indicano problemi di qualità del codice],

    [MPD03], [Availability], [Percentuale di tempo in cui il sistema è operativo e disponibile all'uso],
  ),
  caption: [Metriche di Adeguatezza Funzionale e Affidabilità],
)

=== Manutenibilità e Sicurezza

#figure(
  table(
    columns: (auto, 1.8fr, 2.5fr),
    inset: 8pt,
    align: horizon,
    fill: (x, y) => if y == 0 { luma(220) },
    [*Codice*], [*Nome*], [*Descrizione*],

    [MPD04],
    [Comment Density],
    [Percentuale di linee di commento rispetto alle linee di codice. Una documentazione adeguata migliora la comprensibilità e facilita la manutenzione futura del codice],

    [MPD05],
    [Cyclomatic Complexity],
    [Misura la complessità del codice contando i percorsi linearmente indipendenti. Valori elevati indicano codice difficile da testare e mantenere],

    [MPD06],
    [Coupling (Fan-out)],
    [Numero di dipendenze esterne di un modulo. Misura il grado di accoppiamento tra componenti. Valori elevati riducono la modularità],

    [MPD07],
    [Vulnerability Detection],
    [Numero di vulnerabilità di sicurezza critiche rilevate attraverso analisi statica e dinamica del codice],
  ),
  caption: [Metriche di Manutenibilità e Sicurezza],
)

== Struttura delle Misurazioni (Cruscotto di Valutazione)
Per ciascuna metrica viene fornita una rappresentazione grafica dell'andamento temporale accompagnata da un'analisi qualitativa. Tali misurazioni e i relativi obiettivi di qualità sono in linea con quanto redatto all'interno del #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/PdP.pdf")[#underline[*Piano di Progetto*]].

Ogni grafico, quindi, è accompagnato da un commento interpretativo che collega le variazioni delle metriche con le cause organizzative, tecniche o procedurali che le hanno generate, garantendo che i dati non rimangano meri numeri ma si traducano in azioni concrete di miglioramento.

Le misurazioni coprono il periodo che va dall'*aggiudicazione del capitolato* fino alla milestone *RTB* (09/02/2026).

Per la fase di *Product Baseline* (PB) vengono fornite _stime previsionali_.
Rispetto a quanto rilevato nella RTB, ci si attende un _incremento dell'efficienza_ e una maggiore aderenza alle tempistiche prefissate. La fase precedente, infatti, ha risentito dei rallentamenti dovuti alla concomitanza con la sessione d'esame.
Con il superamento di tale periodo, la PB riflette una pianificazione più fluida e una gestione operativa che punta a stabilizzare i ritmi, ottimizzando i risultati.

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
