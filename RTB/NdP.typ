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
#let versione = "v1.0.1"
#set heading(numbering: "1.1.1")

#titlePage("Norme di Progetto", versione)
#set page(numbering: "1", header: header("Norme di Progetto"), footer: footer())

#let history = (
  (
    "2026/03/09",
    "1.0.1",
    "Modifica Ruolo del Verificatore",
    members.alice,
  ),
  (
    "2026/03/03",
    "1.0.0",
    "Revisione per RTB",
    "",
    members.suar,
  ),
  (
    "2026/02/28",
    "0.14.0",
    "Verifica di tutto lo stato attuale del documento",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/27",
    "0.13.1",
    "Verifica per la sezione Processo di Sviluppo e sezione Processi Organizzativi",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/27",
    "0.13.0",
    "Verifica per la sezione Piano di Qualifica",
    members.berengan,
    members.andrea,
  ),
  (
    "2026/02/23",
    "0.12.0",
    "Verifica per la sezione Analisi dei Requisiti per la RTB",
    "",
    members.suar,
    members.kevin,
  ),
  (
    "2026/02/21",
    "0.11.0",
    "Rielaborazione Processi di Supporto e Organizzativi",
    members.alice,
    members.suar,
  ),
  (
    "2026/02/20",
    "0.10.1",
    "Fix sezione AdR in processo di fornitura",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/14",
    "0.10.0",
    "Riorganizzazione sezione Processo di Sviluppo",
    members.alice,
    members.suar,
  ),
  (
    "2026/02/13",
    "0.9.0",
    "Ampliamento sezioni Verifica e Validazione. Criteri di Verifica Processi di Supporto e Sviluppo",
    members.alice,
    members.suar,
  ),
  (
    "2026/02/11",
    "0.8.1",
    "Ultimo fix/miglioramento sezione AdR",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/11",
    "0.8.0",
    "Sistemazione sezione AdR con nuove sezioni e miglioramenti",
    members.andrea,
    members.kevin,
  ),
  (
    "2026/02/07",
    "0.7.0",
    "Rielaborazione sezioni relative al Piano di Qualifica",
    members.alice,
    members.kevin,
  ),
  (
    "2026/02/04",
    "0.6.0",
    "Rielaborazione delle Norme di Progetto relative al Piano di Progetto",
    members.suar,
    members.kevin,
  ),
  (
    "2026/02/03",
    "0.5.0",
    "Riscrittura delle sezioni relative all'AdR",
    members.andrea,
    members.suar,
  ),
  (
    "2026/02/03",
    "0.4.0",
    "Integrazioni a PdQ e Metriche",
    members.alice,
    members.suar,
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
Il presente documento descrive le #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#norme-di-progetto")[#def[Norme di Progetto]] applicate al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]], proposto dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def[Var Group]] e realizzato dal team di sviluppo #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

Il progetto ha come obiettivo lo sviluppo di una piattaforma software ad #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] finalizzata all’#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e alla #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] automatizzata delle vulnerabilità presenti nei repository di codice sorgente. Il sistema è progettato in conformità ai requisiti e ai vincoli definiti nel #link(<capitolato>)[#underline[Capitolato *C2*]].

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Finalità del Documento
Le Norme di Progetto stabiliscono il quadro di riferimento metodologico, organizzativo e tecnologico adottato per lo sviluppo del sistema software.

Il presente documento costituisce lo standard normativo interno del team; esso è vincolante per l’intero gruppo di lavoro e persegue i seguenti obiettivi:
- definire un insieme di regole comuni e convenzioni condivise al fine di garantire uniformità e coerenza nello sviluppo del prodotto software;
- individuare e descrivere gli strumenti, le tecnologie e gli ambienti di lavoro adottati;
- formalizzare i processi operativi, organizzativi e di controllo applicati durante l’intero #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#ciclo-di-vita-del-software")[#def[ciclo di vita]] del progetto;
- assicurare l’allineamento delle attività progettuali agli standard di riferimento e alle buone pratiche dell’ingegneria del software.

Il rispetto delle norme definite nel presente documento è obbligatorio per tutti i membri del gruppo di lavoro e costituisce un requisito fondamentale per garantire qualità, tracciabilità e controllo dell’intero ciclo di sviluppo.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario (v1.0.0)]].

== Riferimenti

=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione delle Norme di Progetto e per la definizione delle regole da rispettare durante il ciclo di vita del prodotto software:

- *Regolamento del Progetto Didattico*: Regole e vincoli del corso di Ingegneria del Software. \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/PD1.pdf")] \
  (ultimo accesso: *25/02/2026*)

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *25/02/2026*)

- *ISO/IEC/IEEE 12207 – Software Life Cycle Processes*<12207>: framework internazionale per la gestione dei processi di sviluppo, manutenzione e dismissione del software. \
  #underline[#link("https://ieeexplore.ieee.org/document/8100771")] \
  (ultimo accesso: *25/02/2026*)

=== Riferimenti Informativi
- *Dispense del corso di Ingegneria del Software relative ai Processi di Ciclo di Vita del Software* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T02.pdf")] \
  (ultimo accesso: *25/02/2026*)

- *Dispense del corso di Ingegneria del Software relative alla Gestione di Progetto* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf")] \
  (ultimo accesso: *25/02/2026*)

- *IEEE 829 – Standard for Software and System Test Documentation*: definizione della struttura dei piani di test, casi di test, procedure e report. \
  #underline[#link("https://ieeexplore.ieee.org/document/4578383")] \
  (ultimo accesso: *25/02/2026*)

- *IEEE 830 – Standard for Software Requirements Specifications*: guida alla redazione e classificazione dei requisiti funzionali e non funzionali. \
  #underline[#link("https://ieeexplore.ieee.org/document/720574")] \
  (ultimo accesso: *25/02/2026*)

- *IEEE 1016 – Recommended Practice for Software Design Descriptions*: linee guida per la descrizione dell’architettura software e dei principali design pattern. \
  #underline[#link("https://ieeexplore.ieee.org/document/741934")] \
  (ultimo accesso: *25/02/2026*)


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

== Processo di Fornitura

=== Descrizione del Processo
Il Processo di Fornitura definisce l’insieme delle attività svolte dal team di sviluppo in qualità di fornitore al fine di pianificare, coordinare e consegnare il prodotto software e la relativa documentazione in conformità ai requisiti stabiliti dal proponente.

Nel contesto del progetto Code Guardian, il gruppo Skarab Group assume il ruolo di fornitore, mentre l’azienda Var Group ricopre il ruolo di proponente. Il #underline[#link(<capitolato>)[Capitolato C2]] costituisce il riferimento contrattuale che disciplina requisiti, vincoli e obiettivi della fornitura.

Il processo di fornitura è responsabile della gestione complessiva del progetto dal punto di vista organizzativo e qualitativo e coordina le attività necessarie a garantire la conformità degli artefatti prodotti rispetto a quanto concordato.

=== Attività del Processo
Nel presente progetto, il processo di fornitura si articola nelle seguenti attività principali, regolate da specifiche procedure operative:

- *Pianificazione della Fornitura:* Il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#responsabile")[#def[Responsabile]] *ha l'obbligo di* definire la struttura delle attività e assegnare le responsabilità operative all'inizio di ogni #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sprint")[#def[Sprint]], garantendo la saturazione delle risorse;

- *Gestione della Documentazione:* Ogni membro del team *è tenuto a* redigere e verificare gli artefatti seguendo le convenzioni stilistiche e i criteri di qualità normati, assicurando la tracciabilità delle modifiche;

- *Monitoraggio e Controllo:* Il Responsabile *deve* verificare periodicamente l’avanzamento rispetto alla #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#baseline")[#def[baseline]] e attivare tempestivamente azioni correttive qualora si rilevino scostamenti dalle soglie di qualità definite nel #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-qualifica")[#def[PdQ]];

- *Rilascio e Consegna:* Il team *deve* assicurare il consolidamento degli artefatti e la loro consegna formale nel rispetto delle scadenze contrattuali, seguendo il protocollo di rilascio ufficiale.

=== Prodotti del Processo
I prodotti documentali della fornitura non costituiscono il fine ultimo del processo, ma rappresentano gli output formali risultanti dall'applicazione sistematica delle *procedure operative* di gestione e controllo. Essi sono:

- *Norme di Progetto*: definiscono le regole operative e tecniche adottate dal team;
- *Piano di Progetto*: definisce pianificazione, risorse e gestione dei rischi;
- *Piano di Qualifica*: specifica criteri di qualità e attività di verifica;
- *Analisi dei Requisiti*: formalizza le necessità del sistema derivate dal Capitolato;
- *Verbali*: registrano decisioni e attività di revisione.

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
    [Responsabile],
    [Proponente (se esterni), #members.cardin, #members.tullio, Skarab Group],
    [Interno / Esterno],
  ),
  caption: [Tabella riepilogativa dei prodotti del processo di fornitura],
)

=== Procedure Operative del Processo
Le seguenti procedure sono vincolanti per l'esecuzione del processo di fornitura e regolano l'interazione con l'esterno.
==== Protocollo di Comunicazione (PR-FOR-01)
Per garantire professionalità e tracciabilità nei confronti del Proponente Var Group:
- *Canale Ufficiale:* Le comunicazioni formali *devono* avvenire esclusivamente tramite email istituzionale o incontri verbalizzati;
- *Verbalizzazione:* È *obbligatorio* produrre un verbale esterno entro 48 ore lavorative da ogni incontro con il proponente;
- *Approvazione Verbali:* Il silenzio-assenso del proponente dopo 24 ore dalla pubblicazione *costituisce l'approvazione formale* del contenuto.

==== Procedura di Consegna (PR-FOR-02)
In occasione delle scadenze ufficiali, il Responsabile di Progetto *deve obbligatoriamente* eseguire la seguente checklist operativa tramite gli strumenti di supporto:
1. *Verifica di Conformità:* Accertarsi che tutti i documenti siano nello stato *Approved* e che ogni artefatto soddisfi i criteri definiti nel PdQ;
2. *Consolidamento:* Generare i PDF definitivi dai sorgenti #link("https://skarabgroup.github.io/SkarabGroup/DocumentazioneProgetto/Glossario/glossario.html#typst")[#def[Typst]] congelati;
3. *Tagging:* Creare una *Release* sul repository #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#github")[#def[GitHub]] con tag semantico (es. `v1.0.0-RTB`);
4. *Notifica:* Inviare comunicazione formale di avvenuta consegna al proponente indicando il link alla release.

=== Piano di Progetto

==== Nota sull’Adozione dello Standard IEEE 1058
Il documento *Piano di Progetto* adotta come riferimento metodologico lo standard #underline[#link("https://ieeexplore.ieee.org/document/741937")[*IEEE 1058-1998*]]. Tale scelta *vincola il team* ad applicare un approccio rigoroso e sistematico alla gestione, adattando i contenuti alle dimensioni e alla complessità del progetto.

L’adozione dello standard garantisce una copertura completa degli aspetti critici del ciclo di vita e si traduce nei seguenti obblighi operativi:
- *Sistematicità:* l’articolazione del documento *deve* ricalcare la gerarchia IEEE 1058 per evitare lacune nella definizione delle responsabilità;
- *Gestione del Rischio:* è *obbligatorio* adottare un approccio basato su probabilità e impatto per il monitoraggio delle incertezze;
- *Controllo Dinamico:* il team *deve* aggiornare il Piano a ogni Sprint, distinguendo esplicitamente tra *Preventivo* e *Consuntivo* per identificare tempestivamente gli scostamenti.

==== Definizione del Documento
Il *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-progetto")[#def[Piano di Progetto]]* costituisce lo *standard operativo vincolante* per la conduzione del progetto. Esso *deve* definire, in modo tracciabile e verificabile:
- l’organizzazione del lavoro e le responsabilità operative;
- la pianificazione temporale (milestone e scadenze);
- l’allocazione delle risorse e le stime di impegno;
- la gestione dei rischi e le modalità di monitoraggio.

==== Elementi Costituenti del Documento
Il Piano di Progetto *deve obbligatoriamente integrare* i seguenti elementi, ciascuno governato dalle procedure operative e dai criteri di verifica descritti nelle sezioni successive:
- Analisi dei Rischi;
- Pianificazione del Ciclo di Vita del Software;
- Preventivo ed Allocazione delle Risorse;
- Monitoraggio e Controllo del Rendimento degli Sprint.

===== PR-FOR-03: Procedura di Analisi e Gestione dei Rischi
L’attività di Analisi dei Rischi *deve* individuare e valutare sistematicamente i fattori che possono compromettere gli obiettivi di progetto. Il team *ha l'obbligo* di applicare tale procedura con approccio ciclico durante l'intero ciclo di vita.

====== Metodologia di Analisi
Il team *adotta obbligatoriamente* un approccio *semi-quantitativo*. Ogni rischio identificato *deve* essere valutato tramite i seguenti parametri:

- *Probabilità di accadimento (P):* verosimiglianza dell'evento;
- *Impatto (I):* gravità delle conseguenze.

Il *Livello di Rischio (R)* *deve* essere calcolato come:
$ R = P times I $

I parametri $P$ e $I$ *devono* essere valutati su una scala discreta da 1 a 3 per ridurre la soggettività e garantire la reattività dell'approccio iterativo.

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
  caption: [Matrice di Rischio: visualizzazione delle soglie di intervento obbligatorio],
)

In base al valore di $R$, il team *è vincolato* all'applicazione delle seguenti strategie:
- *Rischio Basso ($1–3$):* monitoraggio periodico;
- *Rischio Medio ($4$):* *obbligo* di definizione preventiva di una strategia di mitigazione;
- *Rischio Alto ($6–9$):* *obbligo* di azioni preventive e predisposizione di piani di contingenza.

====== Categorie di Rischio
I rischi *devono* essere classificati nelle seguenti macro-categorie per l'assegnazione delle responsabilità:
- *RT (Rischi Tecnologici):* LLM, Agenti, integrazioni;
- *RI (Rischi Interpersonali):* disponibilità del team, comunicazione;
- *RCO (Rischi di Costo e Organizzativi):* stime, schedulazione, vincoli esterni.

====== Ruoli e Responsabilità
- *Responsabile di Progetto:* *deve* supervisionare il processo, valutare le criticità e autorizzare l'attivazione dei piani di contingenza;
- *Team di Sviluppo:* *ha il compito* di identificare e segnalare tempestivamente ogni anomalia;
- *Stakeholder:* *devono* essere informati in caso di rischi con impatto critico sulla baseline.

====== Procedura Operativa di Monitoraggio
Qualora un rischio si manifesti, il team *deve* seguire rigorosamente questa sequenza:
1. *Rilevamento (Detection):* Ogni membro *ha l'obbligo* di segnalare l'insorgere di problematiche al Responsabile *entro il termine della giornata lavorativa*;
2. *Documentazione:* L’evento *deve* essere tracciato immediatamente nel sistema di issue tracking;
3. *Valutazione e Risposta:* Il Responsabile *deve* attivare la strategia di mitigazione o il piano di contingenza;
4. *Rendicontazione:* Al termine dello Sprint, l'evento *deve* essere analizzato nel consuntivo per validare l'efficacia delle contromisure.

====== Criteri di Verifica dell’Analisi dei Rischi
L’elemento *Analisi dei Rischi* è conforme se e solo se:
- ogni rischio è descritto e classificato univocamente (RT, RI, RCO);
- sono indicati esplicitamente i valori di $P$, $I$ e $R$;
- per ogni rischio è definita una strategia di mitigazione e contingenza;
- lo stato dei rischi è aggiornato con cadenza pari alle iterazioni di Sprint;
- l'insorgenza di nuovi rischi è tracciata nei verbali o negli strumenti di gestione.

===== PR-FOR-04: Procedura di Pianificazione del Ciclo di Vita
Questa procedura norma l’organizzazione temporale del progetto e vincola la scomposizione delle attività necessarie alla realizzazione del prodotto. Il team *deve* utilizzare la pianificazione come riferimento formale per il coordinamento e il monitoraggio costante dell’avanzamento.

====== Gestione Operativa della Pianificazione
La pianificazione *deve* adattarsi alla granularità richiesta dalla fase corrente del ciclo di vita:

- *Pianificazione in RTB:* Il Responsabile *ha l'obbligo* di definire nel dettaglio ogni attività. Per ciascuna di esse *devono* essere specificati: descrizione univoca, responsabile assegnato e scadenza.
- *Pianificazione in PB:* È *obbligatorio* adottare un approccio *rolling-wave*. La pianificazione si limita alla definizione delle macro-attività (es. Progettazione Architetturale, MVP) per preservare la flessibilità necessaria alle scelte implementative non ancora consolidate.

====== Requisiti di Atomicità e Tracciabilità
Per garantire l'efficacia del monitoraggio tramite lo strumento ufficiale #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]], il team *deve* attenersi alle seguenti regole:

1. *Corrispondenza 1:1:* Ogni attività definita *deve* corrispondere a una *task* registrata su Jira.
2. *Atomicità delle Task:* Le attività pianificate in RTB *devono* essere atomiche. Una task è definita tale se:
  - è eseguibile da un singolo membro del team;
  - non presenta dipendenze bloccanti non tracciate; qualora esistano, *devono* essere esplicitate tramite relazioni "blocks/blocked-by".
3. *Assegnazione:* Il Responsabile, all’avvio di ogni Sprint, *deve* assegnare ogni task a un componente del team, definendo lo stato di avanzamento atteso.

====== Criteri di Verifica della Pianificazione
L’attività di pianificazione è considerata conforme se e solo se risultano soddisfatte le seguenti condizioni:

+ *Per la fase RTB:*
  - Tutte le attività sono tracciate su Jira come task atomiche;
  - Ogni task possiede un responsabile identificabile;
  - Le dipendenze sono esplicitate graficamente o tramite collegamenti tecnici.
+ *Per la fase PB:*
  - Sono identificate le macro-attività senza forzare decisioni progettuali premature;
  - Le milestone sono coerenti con la cadenza degli Sprint.
+ *Generali:*
  - Ogni variazione significativa alla pianificazione è motivata e tracciata nei verbali di progetto.

Il mancato rispetto di una sola condizione comporta lo stato di "Non Conformità", richiedendo l'immediata correzione del Piano di Progetto.

===== PR-FOR-05: Procedura di Preventivazione e Allocazione delle Risorse
Questa procedura norma la distribuzione dell’impegno temporale e la gestione economica. Il preventivo approvato costituisce la baseline formale per il confronto con i consuntivi e supporta le attività di controllo.

====== Regole di Definizione del Preventivo e Costi
La determinazione del preventivo *deve* rispettare i seguenti vincoli normativi:
- *Esclusione Auto-apprendimento:* Il periodo antecedente al primo Sprint è classificato come auto-apprendimento; è *fatto divieto* di rendicontare tali ore nel calcolo dei costi di progetto.
- *Gestione Variazioni:* Ogni scostamento rispetto alle stime di candidatura *deve* essere documentato e motivato nei verbali di progetto o negli strumenti di issue tracking.

*Nota di Contesto (Analisi Preliminare):* A seguito del consolidamento delle baseline, la distribuzione pro-capite rimane invariata, pur registrando una riduzione del costo complessivo rispetto alle stime iniziali.

====== Strategia di Allocazione per Milestone
L’allocazione delle risorse *deve* adattarsi alla natura specifica della milestone di progetto:

1. *Milestone RTB (Requirements and Technology Baseline):*
  L’allocazione *deve* prevedere un impiego prevalente delle figure di *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#amministratore")[#def[Amministratore]]* e *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analista")[#def[Analista]]*. Tale scelta è *obbligatoria* per gestire l'alto carico documentale e normativo di questa fase.

2. *Milestone PB (Product Baseline):*
  Il preventivo per questa fase *deve* essere gestito con metodologia *rolling-wave*. Esso *ha l'obbligo* di essere riesaminato alla chiusura di ogni Sprint; ogni revisione *deve* essere approvata dal Responsabile di Progetto.

====== Criteri di Verifica del Preventivo e dell’Allocazione
L'attività è considerata conforme se e solo se risultano soddisfatte le seguenti condizioni:
- è definito un preventivo iniziale coerente con le baseline individuate;
- la distribuzione dell’impegno orario pro-capite è esplicitata e motivata;
- la ripartizione dei ruoli per fase (RTB/PB) è coerente con le attività pianificate;
- eventuali scostamenti dal preventivo iniziale sono motivati e tracciati;
- il preventivo è utilizzato come riferimento esplicito nel confronto con i consuntivi.

===== PR-FOR-06: Procedura di Monitoraggio e Controllo del Rendimento
Questa procedura norma la verifica sistematica dell’andamento del progetto rispetto alla pianificazione. L'attività *deve* basarsi su iterazioni temporali (*Sprint*) composte da task atomiche e tracciabili.

====== Metodologia di Monitoraggio dello Sprint
Al termine di ogni Sprint, il rendimento *deve* essere descritto in modo uniforme includendo:
- *Attività svolte:* Elenco delle task concluse secondo la *Definition of Done*;
- *Analisi delle deviazioni:* Confronto tra pianificato ed effettivo con analisi delle cause;
- *Rischi rilevati:* Aggiornamento dello stato dei rischi emersi (rif. *PR-FOR-03*);
- *Azioni correttive:* Decisioni adottate per migliorare l'efficacia delle iterazioni successive.

====== Regole di Rendicontazione e Strumenti
La rendicontazione *deve* avvenire esclusivamente tramite lo strumento #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]]:
1. *Frequenza:* L’aggiornamento dei dati *deve* avvenire con periodicità giornaliera, *entro il termine della giornata lavorativa*.
2. *Precisione:* Per ogni task *devono* essere indicati obbligatoriamente lo stato di avanzamento, le ore spese e il responsabile.
3. *Attività Non Pianificate:* È *obbligatorio* tracciare anche le attività impreviste (bugfix, criticità) creando nuove task; l'esclusione di tali ore è *vietata*.

====== Criteri di Verifica del Monitoraggio e Controllo
L'attività è considerata conforme se e solo se, per ogni Sprint:
- è definito un Preventivo di Sprint basato sulle attività assegnate;
- è redatto un Consuntivo di Sprint basato esclusivamente sui dati di Jira;
- il confronto tra preventivo e consuntivo è esplicitato e giustificato;
- tutte le ore lavorate (incluse le extra-piano) sono state tracciate correttamente;
- sono riportate le azioni correttive o preventive validate dal Responsabile.

=== Analisi dei Requisiti
==== Standard di Riferimento
Per la redazione del documento Analisi dei Requisiti, il gruppo *adotta obbligatoriamente* i seguenti standard internazionali:
- *IEEE 830-1998*: standard di riferimento per la stesura di specifiche dei requisiti software;
- *ISO/IEC/IEEE 29148:2018*: standard per i processi di Requirements Engineering;
- *UML 2.5*: standard per la modellazione grafica dei casi d’uso e delle interazioni.

==== Definizione del Documento
L’#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-dei-requisiti")[#def("Analisi dei Requisiti")] costituisce il *riferimento tecnico vincolante* per la formalizzazione delle necessità e dei vincoli del sistema *Code Guardian*. Il documento *ha l'obbligo* di tradurre le esigenze del proponente in specifiche formali, non ambigue e verificabili.

==== Elementi Costituenti del Documento
Il documento *deve essere organizzato* includendo i seguenti elementi, normati dalle procedure operative interne:
- *Casi d'Uso*: base per l'identificazione dei requisiti funzionali;
- *Requisiti Funzionali, di Qualità e di Vincolo*: specifiche atomiche e misurabili.

===== PR-FOR-07: Procedura di Ingegneria dei Requisiti
Questa procedura norma la formalizzazione delle necessità del sistema. Il team *deve* attenersi ai seguenti requisiti operativi:

- *Modellazione dei Casi d'Uso*: Ogni scenario *deve* essere identificato dalla nomenclatura *UCx.y.z* dove *x* è l'identificatore principale, *y* il numero di inclusioni e *z* il numero di estensioni. Qualora esistano ulteriori ramificazioni, la stringa *UCx.y.z* fungerà da radice gerarchica.
- *Contenuto del Caso d'Uso*: Ogni scenario *deve includere* Attori, Pre/Post-condizioni, Scenario Principale, Trigger e, se presenti, Inclusioni, Estensioni o Generalizzazioni.
- *Diagrammi UML*: È *obbligatorio* corredare la descrizione testuale con diagrammi conformi allo standard UML 2.5.

- *Classificazione dei Requisiti*: Ogni requisito *deve* essere catalogato secondo la sintassi *TipologiaRPrioritàNumero* dove:
  - *Tipologia*: *F* (Funzionale), *Q* (Qualità), *V* (Vincolo);
  - *Priorità*: *Ob* (Obbligatorio), *De* (Desiderabile), *Op* (Opzionale).

====== Criteri di Verifica dei Casi d'Uso
L'elemento è considerato conforme se e solo se risultano soddisfatte le seguenti condizioni:
- *Univocità*: ogni identificatore UCx.y.z è unico;
- *Correttezza degli Attori*: ogni attore citato è stato precedentemente censito;
- *Coerenza UML*: esiste corrispondenza 1:1 tra descrizione testuale e diagramma;
- *Assenza di Implementazione*: la descrizione *deve* limitarsi al "cosa fa", non al "come".

====== Criteri di Verifica dei Requisiti di Sistema
I requisiti sono conformi se e solo se soddisfano i seguenti vincoli:
- *Atomicità*: ogni requisito esprime una singola necessità non scomponibile;
- *Non Ambiguità*: il linguaggio utilizzato è tecnico, oggettivo e privo di termini soggettivi;
- *Testabilità*: permette la definizione di un test di accettazione binario;
- *Misurabilità (Qualità)*: il requisito *deve* essere espresso attraverso metriche quantitative o soglie numeriche;
- *Tracciabilità*: ogni requisito *deve* indicare chiaramente la propria fonte (Capitolato o UC) e la sua giustificazione (per i vincoli).

=== Glossario
==== Definizione del Documento
Il *Glossario* costituisce il riferimento terminologico unico e *vincolante* per l'intero ciclo di vita del progetto. Esso *ha l'obbligo* di eliminare ambiguità semantiche e garantire uniformità comunicativa.

==== Elementi Costituenti del Documento
Il Glossario *deve essere organizzato* in ordine alfabetico e includere: Termini Tecnici, Acronimi e Concetti di Dominio.

===== PR-FOR-08: Procedura di Gestione Terminologica
Questa procedura norma la manutenzione del vocabolario controllato del team:

- *Redazione della Voce*: La definizione *deve* essere sintetica, non tautologica e contestualizzata. È *vietato* l'uso di sinonimi duplicati senza rimandi.
- *Marcatura nei Documenti*: In ogni documento di progetto, la prima occorrenza di un termine di glossario *deve obbligatoriamente* essere marcata con l'apice #super[G] e linkata alla versione ufficiale.
- *Accessibilità*: Il Glossario *deve* essere disponibile sia in formato PDF statico che come risorsa ipertestuale dinamica.

====== Criteri di Verifica del Glossario
Il Glossario è considerato conforme se e solo se soddisfa le seguenti condizioni:
- *Completezza*: ogni termine marcato nella documentazione possiede una definizione corrispondente;
- *Integrità Web*: ogni collegamento (anchor link) punta a una sezione esistente della pagina web;
- *Ordine*: le voci sono presentate in rigoroso ordine alfabetico (A–Z);
- *Qualità*: le definizioni non sono tautologiche e i rimandi sono circolari solo verso termini definiti.

=== NdP – Norme di Progetto
==== Definizione del Documento
Le *#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#norme-di-progetto")[#def[Norme di Progetto]] (NdP)* costituiscono lo standard normativo di riferimento che disciplina le modalità operative dell’intero ciclo di vita del progetto. Esse definiscono in modo *vincolante*:
- i *principi organizzativi* e il *Way of Working*;
- le *norme* per la redazione della documentazione e lo sviluppo del software;
- gli *strumenti* e gli *ambienti di lavoro*;
- i *processi* e le *procedure operative* di pianificazione, esecuzione e controllo.

Il rispetto delle NdP è *obbligatorio* per tutti i membri del gruppo e costituisce requisito necessario per la qualità e la tracciabilità degli artefatti.

==== Elementi Costituenti del Documento
Le Norme di Progetto *devono* essere strutturate secondo la descrizione normativa dei macro-processi primari (*ISO/IEC/IEEE 12207*), disciplinando obbligatoriamente il *Processo di Fornitura* e il *Processo di Sviluppo*. Per ciascun processo, le NdP *devono* esplicitare obiettivi, ruoli, documenti prodotti, procedure operative e criteri di verifica.

===== Processo di Fornitura
Il Processo di Fornitura disciplina la produzione e la consegna degli artefatti formali (PdP, PdQ, AdR, NdP, Glossario). Ogni documento di fornitura *deve* rispettare la seguente struttura minima obbligatoria:
- *Definizione del Documento*;
- *Elementi Costituenti del Documento*;
- *Descrizione degli Elementi* (sezioni e contenuti);
- *Criteri di Verifica* specifici.

====== Criteri di Verifica dei Documenti di Fornitura
Un documento è considerato conforme se e solo se soddisfa le seguenti condizioni:
- È presente tra gli artefatti previsti e rispetta la struttura minima obbligatoria;
- Adotta le convenzioni tipografiche e stilistiche stabilite nelle NdP;
- Risulta tracciabile tramite riferimenti incrociati coerenti;
- È nello stato *Approved* al momento della consegna, a seguito di verifica formale.

===== Processo di Sviluppo
Il Processo di Sviluppo disciplina la realizzazione tecnica (Codice e Test).

====== Criteri di Verifica del Processo di Sviluppo
Il processo è conforme se e solo se soddisfa le seguenti condizioni:
- Il codice rispetta le convenzioni di nomenclatura e il *Single Responsibility Principle*;
- Ogni funzione è documentata con commenti standard (scopo, parametri, ritorno);
- Il codice include commenti di tracciabilità verso i requisiti dell'AdR;
- I test seguono la nomenclatura definita e sono stati validati secondo le procedure di *Qualifica*.

===== Processi di Supporto
I Processi di Supporto garantiscono la qualità trasversale tramite le seguenti procedure operative:

- *PR-SUPP-01: Procedura di Documentazione:* Ogni documento *deve* essere redatto in *Typst*, versionato con schema `x.y.z` e associato a task su *Jira*. È *vietata* l'integrazione in `main` senza Pull Request approvata da un verificatore diverso dal redattore.
- *PR-SUPP-02: Procedura di Qualifica:* Ogni artefatto *deve* essere sottoposto a verifica prima dell'integrazione. Gli esiti *devono* essere tracciati nel *Piano di Qualifica*.

===== Processi Organizzativi
I Processi Organizzativi garantiscono la coerenza del team tramite le seguenti procedure operative:

- *PR-ORG-01: Gestione dei Processi:* Ogni Sprint *deve* essere avviato con task stimate su Jira e concluso con una retrospettiva documentata. Le riunioni *devono* produrre un verbale entro 48 ore.
- *PR-ORG-02: Infrastruttura:* Il repository *deve* rispettare la struttura definita. Le *branch protection rules* su `develop` e `main` *devono* essere attive.
- *PR-ORG-03: Miglioramento e Formazione:* Le azioni correttive *devono* essere tracciate su Jira. Le ore di formazione *devono* essere tenute distinte da quelle rendicontabili.

====== Criteri di Verifica dei Processi Organizzativi
I processi sono conformi se e solo se soddisfano le seguenti condizioni:
- Tutti i ruoli sono definiti; Jira è configurato con workflow attivi;
- I verbali interni ed esterni sono pubblicati entro le scadenze;
- Le metriche di Sprint sono analizzate e le modifiche alle NdP sono approvate dal Responsabile.

=== Piano di Qualifica

==== Nota sull'adozione dello Standard ISO/IEC 25010 e PDCA
La redazione del #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-qualifica")[#def[Piano di Qualifica]] e la definizione delle metriche si ispirano alla famiglia di standard *ISO/IEC 25010 (SQuaRE)*. Tale scelta garantisce una classificazione rigorosa delle caratteristiche di qualità del prodotto.

Inoltre, l'adozione strutturale del ciclo *Plan-Do-Check-Act (PDCA)* assicura che il processo di controllo qualità non sia statico, ma evolva:
- *Plan:* definizione delle metriche e delle soglie nel presente documento;
- *Do:* esecuzione delle misurazioni durante gli Sprint;
- *Check:* analisi degli scostamenti nei periodi di retrospettiva;
- *Act:* aggiornamento delle *Norme di Progetto* e ricalibrazione delle metriche per lo Sprint successivo.

==== Definizione del Documento
Il *Piano di Qualifica* costituisce il riferimento *vincolante* per la gestione della qualità nel progetto e *deve* definire, in modo tracciabile e verificabile:
- le strategie di assicurazione qualità (_Quality Assurance_);
- le attività di controllo qualità (_Quality Control_);
- le metriche di processo e prodotto con relative soglie di accettabilità e ottimalità;
- le procedure di verifica e validazione degli artefatti;
- i meccanismi di miglioramento continuo.

==== Elementi Costituenti del Documento
Il Piano di Qualifica *deve* includere obbligatoriamente i seguenti elementi: Qualità di Processo, Qualità di Prodotto, Metodi di Testing, Cruscotto di Valutazione e Automiglioramento.

===== Qualità di Processo
La sezione #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#qualita")[#def[Qualità]] di Processo definisce l'insieme delle metriche utilizzate per monitorare e controllare i processi produttivi adottati dal gruppo. Il monitoraggio *è essenziale* per garantire efficienza, efficacia e miglioramento continuo del *Way of Working*.

===== PR-FOR-09: Procedura di Definizione e Gestione delle Metriche
La determinazione delle soglie di accettabilità e ottimalità per le metriche adottate dal gruppo *Skarab Group* segue una strategia ingegneristica basata sui seguenti criteri vincolanti:

- *Adesione agli Standard Internazionali:* Per i processi di fornitura, il gruppo *deve* adottare il framework *Earned Value Management (EVM)* con intervalli di confidenza standard ($0.90 - 1.10$). Per la qualità del prodotto, le soglie *devono* essere calibrate sul modello *ISO/IEC 25010*;
- *Analisi del Dominio e Benchmark:* Le metriche di supporto e sviluppo (es. *Gulpease*, *Complessità Ciclomatica*) *devono* essere tarate su benchmark di settore per garantire la verificabilità oggettiva;
- *Miglioramento Continuo (PDCA):* Al termine di ogni *Sprint*, i valori *devono* essere analizzati rispetto alle prestazioni storiche del team per una ricalibrazione dinamica delle soglie (obiettivi *S.M.A.R.T.*).

====== Nomenclatura delle Metriche
La nomenclatura utilizzata per le metriche di processo *deve* essere la seguente:
#align(center)[`MPC##`]
dove:
- `M` sta per Metrica;
- `PC` indica Processo;
- `##` è un numero progressivo crescente da 01.

====== Processi Primari
======= Fornitura e Sviluppo
#show figure: set block(breakable: true)

#figure(
  block(
    breakable: true,
    table(
      columns: (auto, 1.8fr, 2.5fr),
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

*Nota:* Valori bassi di RSI possono segnalare un'analisi iniziale insufficiente o cambiamenti significativi nelle esigenze degli _#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#stakeholder")[#def[stakeholder]]_. Il monitoraggio è cruciale specialmente a seguito di revisioni correttive.

====== Processi di Supporto
======= Documentazione e Verifica

#figure(
  table(
    columns: (auto, 1.8fr, 2.5fr),
    inset: 8pt,
    align: horizon,
    fill: (x, y) => if y == 0 { luma(220) },
    [*Codice*], [*Nome*], [*Descrizione*],

    [MPC11],
    [Gulpease Index],
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
#pagebreak()
====== Processi Organizzativi

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

====== Criteri di Verifica della Qualità di Processo

L'elemento *Qualità di Processo* del Piano di Qualifica è considerato conforme se risultano soddisfatte tutte le seguenti condizioni:

- ogni metrica è identificata in modo univoco tramite codice (`MPC##`);
- per ciascuna metrica sono definiti:
  - formulazione matematica o descrizione operativa del calcolo;
  - soglia di accettabilità;
  - soglia di ottimalità.
- le metriche sono classificate secondo i processi di riferimento (Primari, Supporto, Organizzativi);
- le soglie adottate sono motivate in base a standard di settore, benchmark o analisi storiche;
- i valori misurati sono confrontati con le soglie durante le retrospettive di Sprint;
- gli scostamenti rilevati sono documentati e danno luogo ad azioni correttive tracciate.

Il mancato rispetto di una o più delle condizioni sopra elencate comporta la non conformità dell'elemento e richiede un'azione correttiva prima della validazione del documento.

===== Qualità del Prodotto
La sezione Qualità di Prodotto definisce l'insieme delle metriche utilizzate per valutare il prodotto software rispetto ai requisiti e alle caratteristiche intrinseche dello standard *ISO/IEC 25010*.

===== PR-FOR-10: Procedura di Controllo Qualità del Prodotto
Questa procedura norma le attività di misurazione e valutazione del software *Code Guardian*. Il team *ha l'obbligo* di monitorare le metriche di prodotto per garantire il rispetto dei requisiti di qualità:

- *Estrazione Dati:* Le metriche relative al codice (MPD04-07) *devono* essere estratte tramite strumenti di analisi statica automatizzati ad ogni chiusura di Sprint;
- *Validazione:* Le metriche funzionali (MPD01-03) *devono* essere validate attraverso l'esecuzione dei test di sistema e di accettazione;
- *Gestione Scostamenti:* Il superamento delle soglie di accettabilità *deve* comportare l'immediata apertura di una segnalazione su *Jira* per la risoluzione del debito tecnico.

====== Nomenclatura delle Metriche
La nomenclatura utilizzata per le metriche di prodotto è la seguente:

#align(center)[
  `MPD##`
]

dove:
- `M` sta per Metrica;
- `PD` indica Prodotto;
- `##` è un numero progressivo crescente da 01.

====== Adeguatezza Funzionale e Affidabilità

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

====== Manutenibilità e Sicurezza

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

====== Criteri di Verifica della Qualità di Prodotto
L'elemento *Qualità di Prodotto* del Piano di Qualifica è considerato conforme se risultano soddisfatte tutte le seguenti condizioni:
- ogni metrica è identificata in modo univoco tramite codice (`MPD##`);
- per ciascuna metrica sono definiti: formulazione matematica, soglia di accettabilità e soglia di ottimalità;
- le metriche sono riconducibili a caratteristiche del modello *ISO/IEC 25010*;
- le soglie adottate sono motivate in base a standard di settore o analisi di benchmark;
- i valori misurati sono tracciati nel Cruscotto di Valutazione;
- gli scostamenti rispetto alle soglie sono analizzati e danno luogo ad azioni correttive.

Il mancato rispetto di una o più delle condizioni sopra elencate comporta la non conformità dell'elemento.

===== Strategie di Testing
Questa sezione elenca le metodologie di testing adottate per garantire la qualità del prodotto. I dettagli operativi riguardanti le procedure, le tipologie di test e le relative nomenclature sono approfonditi normativamente nella sezione #link(<verifica>)[*3.2.1 Verifica*] delle presenti Norme di Progetto.

===== Cruscotto di Valutazione
Nella sezione Cruscotto di Valutazione, per ciascuna metrica viene fornita una rappresentazione grafica dell'andamento temporale accompagnata da un'analisi qualitativa.

Le misurazioni coprono il periodo dall'*aggiudicazione del capitolato* fino alla milestone *RTB*. Per la milestone *PB* vengono fornite _stime previsionali_ che riflettono un incremento dell'efficienza previsto dopo il superamento della sessione d'esame.

===== PR-FOR-11: Procedura di Gestione del Cruscotto
Il monitoraggio dei risultati *deve* avvenire tramite il Cruscotto di Valutazione. Il team *ha l'obbligo* di aggiornare tale strumento secondo la seguente procedura:
- *Raccolta:* I dati vengono estratti al termine di ogni *Sprint*;
- *Analisi:* L'analisi qualitativa *deve* essere condotta collegialmente durante la retrospettiva di Sprint;
- *Formalizzazione:* Il Piano di Qualifica *deve* essere aggiornato per riflettere i nuovi valori entro l'inizio dello Sprint successivo.

====== Criteri di Verifica del Cruscotto di Valutazione
L'elemento *Cruscotto di Valutazione* è considerato conforme se e solo se:
- è presente una rappresentazione grafica dell'andamento temporale per ogni metrica;
- ogni grafico è accompagnato da un'analisi qualitativa interpretativa;
- le soglie di accettabilità e ottimalità sono evidenziate graficamente;
- l'aggiornamento è coerente con la chiusura di ogni Sprint;
- gli scostamenti significativi sono documentati e motivati.

===== Automiglioramento
====== Finalità e Ambito di Applicazione
L'automiglioramento si applica a tutti i processi adottati dal gruppo e costituisce un'attività trasversale che accompagna l'intero ciclo di vita del progetto. Esso ha lo scopo di:
- identificare criticità operative, organizzative o tecniche;
- analizzare le cause profonde delle inefficienze rilevate (*Root Cause Analysis*);
- definire e implementare azioni correttive o preventive;
- valutare l'efficacia delle soluzioni adottate attraverso metriche oggettive.

=== Verbali delle Riunioni
==== Definizione del Documento
I *Verbali delle Riunioni* sono documenti ufficiali che registrano in modo sintetico e tracciabile lo svolgimento degli incontri. Essi *hanno l'obbligo* di documentare decisioni, informazioni e azioni concordate, costituendo evidenza formale delle attività di coordinamento.

==== Elementi Costituenti del Documento
Ogni verbale *deve* includere obbligatoriamente:
- Data, ora e modalità/luogo;
- Elenco dei partecipanti;
- Ordine del giorno;
- Sintesi delle discussioni e decisioni prese;
- Azioni da intraprendere (assegnatario e impegno orario previsto).

===== PR-FOR-12: Procedura di Verbalizzazione
Questa procedura norma la gestione delle comunicazioni formali:
- *Tempistiche:* I verbali interni *devono* essere redatti entro 24 ore. I verbali esterni *devono* essere inviati al proponente entro 48 ore lavorative (rif. *PR-FOR-01*).
- *Identificazione:* Ogni verbale *deve* essere identificato in modo univoco (es. `VI_2026-03-02` per interni, `VE_2026-03-02` per esterni).
- *Approvazione:* Per i verbali esterni, si applica la regola del silenzio-assenso dopo 24 ore dalla notifica.

====== Criteri di Verifica dei Verbali
Un verbale è considerato conforme se e solo se soddisfa le seguenti condizioni:
- include tutti gli elementi obbligatori sopra citati;
- descrive decisioni e azioni in modo non ambiguo;
- è archiviato nel repository ufficiale in formato PDF generato da *Typst*;
- ogni azione tracciata ha un responsabile identificabile.

=== Diario di Bordo

==== Definizione del Documento
Il *Diario di Bordo* è un documento di monitoraggio a cadenza settimanale. Esso *deve* fornire una visione sintetica e continuativa delle attività svolte, delle criticità emerse e della pianificazione a breve termine.

==== Elementi Costituenti del Documento
Ogni voce del diario *deve* includere obbligatoriamente:
- Periodo di riferimento (Settimana n);
- Sintesi delle attività svolte;
- Problemi riscontrati e soluzioni adottate;
- Pianificazione per la settimana successiva.

===== PR-FOR-13: Procedura di Aggiornamento del Diario
Questa procedura norma l'allineamento continuativo:
- *Redazione:* Il *Responsabile* di turno *ha l'obbligo* di aggiornare il diario entro la fine di ogni settimana lavorativa.
- *Tracciabilità:* Le attività riportate *devono* trovare riscontro nelle task gestite su *Jira*.

====== Criteri di Verifica del Diario di Bordo
Il Diario è considerato conforme se e solo se soddisfa le seguenti condizioni:
- copre il periodo temporale in modo continuo senza lacune settimanali;
- riporta in modo coerente le attività effettivamente svolte;
- evidenzia esplicitamente le soluzioni adottate per le criticità riscontrate;
- include una pianificazione realistica approvata dal Responsabile.

#pagebreak()

== Processo di Sviluppo
Il Processo di Sviluppo adottato da #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] definisce le attività necessarie all'analisi dei requisiti, alla progettazione, alla codifica, al testing e all'accettazione del prodotto Software _#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]]_. In conformità allo standard #underline[#link(<12207>)[ISO/IEC/IEEE 12207]], il team *garantisce* un approccio strutturato, orientato alla qualità e alla tracciabilità in ogni fase del ciclo di vita.

=== Attività del Processo di Sviluppo
Il processo si articola nelle seguenti macro-attività, ciascuna delle quali contribuisce alla realizzazione del prodotto finale.

==== Implementazione del processo
Questa attività consiste nella selezione e definizione del *ciclo di vita* del Software. Per _Code Guardian_, il team adotta un approccio che permette di sviluppare il prodotto in modo graduale, rispondere rapidamente ai feedback della Proponente, mantenere alta la qualità tramite continue attività di verifica e allineare lo sviluppo alle milestone RTB e PB.

==== Analisi e Progettazione
Questa attività norma la definizione logica e strutturale del prodotto.
- *Analisi dei Requisiti:* Studio del capitolato, identificazione di attori e casi d'uso (UML 2.5) e classificazione (funzionali, qualità, vincolo).
- *Progettazione Architetturale:* Identificazione delle componenti hardware e software per garantire scalabilità e separazione delle responsabilità.
- *Progettazione di Dettaglio:* Specifica dettagliata di classi, interfacce, strutture dati e algoritmi.

===== PR-SVIL-01: Procedura di Specifica Tecnica
- *Obbligo:* Definire interfacce, classi e algoritmi prima della fase di codifica.
- *Strumenti:* StarUML, Draw.io, Typst.

====== Criteri di Verifica di Analisi e Progettazione
L'attività è conforme se e solo se:
- ogni requisito dell'AdR è tracciato verso almeno una componente progettuale;
- la progettazione specifica la strategia di gestione delle eccezioni;
- i diagrammi UML sono aggiornati e coerenti con la documentazione tecnica.

==== Implementazione e Integrazione
Questa attività norma la trasformazione dei requisiti in codice sorgente eseguibile e la combinazione delle singole unità. L'integrazione può seguire strategie *bottom-up*, *top-down* o *incrementale*.

===== PR-SVIL-02: Procedura di Sviluppo e Build
- *Codifica:* Implementazione fedele delle specifiche seguendo gli standard stilistici.
- *Integrazione:* Combinazione progressiva delle unità con test ad ogni iterazione.
- *Strumenti:* VS Code, Docker.

====== Criteri di Verifica di Codifica e Integrazione
L'attività è conforme se e solo se:
- il codice supera l'analisi statica (ESLint/Prettier);
- non sono presenti regressioni a seguito dell'integrazione di nuove unità;
- ogni unità è corredata dai relativi test di unità (Unit Test).

==== Testing, Installazione e Qualifica
Il team *ha l'obbligo* di verificare che il Software soddisfi gli obiettivi del *Piano di Qualifica*. Il sistema completo viene sottoposto a test su scenari d'uso reali, seguito dall'installazione nell'ambiente di destinazione e dal supporto all'accettazione.

===== PR-SVIL-03: Procedura di Validazione
- *Test di Sistema:* Simulazione di scenari reali per verificare interazione e robustezza.
- *Supporto all'Accettazione:* Fornire evidenza del soddisfacimento dei requisiti alla Proponente e risolvere eventuali problematiche.
- *Strumenti:* Postman, Playwright, Selenium.

=== Relazione con le Baseline di progetto
Le attività del Processo di Sviluppo sono distribuite tra le due baseline principali per garantire un avanzamento controllato:
- *Requirements and Technology Baseline (RTB)*: Si concentra su Analisi dei Requisiti, Proof of Concept (PoC) e definizione degli standard normativi.
- *Product Baseline (PB)*: Si concentra su Progettazione dell'Architettura, Codifica e consolidamento del prodotto.

=== Codifica e Standard Tecnici
Lo stack tecnologico è multi-linguaggio e basato su:
- *TypeScript*: Frontend (React) e Backend (NestJS).
- *Python*: Agenti AI, Orchestratore e script di analisi dati.
- *MongoDB e Node.js*: Database con Mongoose e ambiente di esecuzione per servizi server-side.

==== PR-SVIL-04: Standard di Codifica (Coding Standards)
Ogni membro del team *è vincolato* al rispetto delle seguenti norme tecniche:

#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Tipo*], [*Standard Obbligatorio*],
    [`camelCase`], [Variabili e funzioni],
    [`PascalCase`], [Classi, componenti React, interfacce (prefisso `I`)],
    [`kebab-case`], [Nomi dei file di logica e Collezioni MongoDB (al plurale)],
    [`SCREAMING_SNAKE_CASE`], [Costanti e variabili d'ambiente (.env)],
  ),
  caption: [Standard di nomenclatura tecnica],
)

*Regole di Qualità, Stile e Robustezza:*
- *Modularità:* La logica di business *deve* essere separata dall'interfaccia utente; ogni funzionalità *deve* essere isolata in componenti atomici.
- *Single Responsibility:* Ogni funzione *ha l'obbligo* di svolgere un'unica attività.
- *Documentazione:* Uso *obbligatorio* di JSDoc/Docstring (descrizione, parametri e ritorno) per ogni metodo.
- *Automazione:* L'uso di Prettier (2 spazi, apici singoli) ed ESLint è *mandatorio* in pipeline CI.
- *Gestione Errori:* Ogni chiamata asincrona *deve* essere protetta da blocchi `try-catch` con logging specifico per prevenire crash.
- *Funzioni Lambda:* Incoraggiate per callback brevi; la logica complessa *deve* essere estratta in metodi nominati.

====== Criteri di Verifica della Codifica
Il codice è conforme se e solo se:
- supera i controlli di linting senza errori;
- la densità di commenti rispetta la metrica *MPD04*;
- la complessità ciclomatica (*MPD05*) non supera la soglia definita nel PdQ.

==== PR-SVIL-05: Procedura di Gestione della Configurazione
Norma l'archiviazione e il versionamento tramite *Git* e *GitHub*.
- *Strategia Branching:* `main` (stabile), `develop` (integrazione), `feature/` (task atomiche).
- *Commits:* Standard *Conventional Commits* (es. `feat(parser): add python support`).
- *Pull Request:* Integrazione *vietata* senza Peer Review di un componente terzo.

==== PR-SVIL-06: Procedura di Verifica (Testing)
Il team *adotta* una strategia di test a livelli per assicurare la correttezza del software.

#figure(
  table(
    columns: (1fr, 2fr),
    inset: 8pt,
    [*Livello*], [*Metodologia Obbligatoria*],
    [Unit Test], [Verifica delle singole unità tramite Mocking.],
    [Integration Test], [Verifica interazione tra moduli (es. Python e NestJS).],
    [Analisi Statica], [Controllo automatico della qualità prima di ogni merge.],
  ),
  caption: [Livelli di test e strumenti (Vitest, Pytest, SonarQube)],
)

====== Criteri di Verifica della Qualità Tecnica
L'attività è conforme se e solo se:
- non sono presenti commit diretti sui rami protetti;
- ogni PR supera i controlli automatizzati di CI;
- la #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-coverage")[#def[Code Coverage]] non scende sotto la soglia definita nel PdQ.

=== Evoluzione delle Norme verso l'MVP
Le norme qui definite costituiscono la baseline tecnica per la fase *RTB*.

*Nota Operativa:* Con l'avvio della fase *PB*, Skarab Group *ha l'obbligo* di includere configurazioni di deployment, standard di sicurezza API/LLM e soglie di accoppiamento per librerie terze.
#pagebreak()


= Processi di Supporto
In conformità allo standard #link(<12207>)[ISO/IEC/IEEE 12207], i Processi di Supporto comprendono le attività trasversali che accompagnano l'intero ciclo di vita del progetto, garantendo la qualità, la tracciabilità e la verificabilità degli artefatti prodotti.

Nel contesto del progetto _Code Guardian_, Skarab Group ha identificato i seguenti Processi di Supporto rilevanti:
- Documentazione;
- Qualifica (Verifica e Validazione).

== Documentazione
Il processo di documentazione è trasversale a tutti i processi primari e di supporto: i suoi artefatti costituiscono la memoria del progetto e il mezzo principale per garantire tracciabilità, verificabilità e comunicazione uniforme tra i membri del gruppo e gli stakeholder esterni.

Nel contesto di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]], il processo di documentazione disciplina la pianificazione, lo sviluppo, la produzione, la revisione e la manutenzione di tutti i documenti ufficiali del progetto _#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]]_.

=== PR-SUPP-01: Procedura di Gestione Documentale (Ciclo di Vita)
Ogni documento *ha l'obbligo* di seguire il seguente ciclo di vita:

1. *Creazione / Modifica*: redazione o aggiornamento del contenuto in formato sorgente (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#typst")[#def[Typst]]). L'attività *deve* essere tracciata da una #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#task")[#def[task]] su #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]];
2. *Verifica*: controllo di conformità (ortografia, stile, contenuti, rispetto delle NdP) da parte di un membro del team *diverso* dal redattore;
3. *Approvazione*: validazione finale da parte del #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#responsabile-di-progetto")[#def[Responsabile di Progetto]] per il rilascio ufficiale.

==== Strumenti di Redazione
Il team *è vincolato* all'utilizzo del seguente toolkit tecnologico:

#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Strumento*], [*Descrizione e Utilizzo Obbligatorio*],
    [#link(
      "https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#visual-studio-code",
    )[#def[VS Code]]],
    [Editor principale per la scrittura dei documenti.],

    [#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#typst")[#def[Typst]]],
    [Linguaggio di markup per la formattazione. Consente la creazione di documenti strutturati, tabelle, figure e riferimenti. I template comuni sono centralizzati nella cartella `lib/`.],

    [#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#tinymist")[#def[Tinymist]]],
    [Estensione per VS Code che fornisce anteprima in tempo reale e supporto per la scrittura.],
  ),
  caption: [Strumenti di redazione documentale],
)

==== Struttura dei Documenti
Tutti i documenti ufficiali *devono obbligatoriamente* rispettare la struttura minima seguente:
- *Pagina di copertina*, contenente: nome del documento e versione;
- *Registro delle modifiche*, con data, versione, descrizione della modifica e nomi di redattori e verificatori;
- *Indice dei contenuti*, generato automaticamente;
- *Corpo del documento*, organizzato in sezioni e sottosezioni numerate;
- Ogni pagina (eccetto la copertina) *deve* riportare un header con nome del gruppo e titolo del documento, e un footer con numero di pagina.

====== Criteri di Verifica della Documentazione
L'attività è conforme se e solo se il documento rispetta la struttura minima, il Registro delle modifiche riporta il corretto incremento di versione e la verifica è stata effettuata da un membro indipendente tramite task tracciata su Jira.

=== PR-SUPP-02: Gestione della Configurazione e Versionamento

==== Sistema di Versioning
Ogni documento *deve* adottare il seguente schema di versionamento semantico:
#align(center)[`x.y.z`]
- `x` (*Major*): incrementato solo all'approvazione formale del documento da parte del #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#responsabile")[#def[Responsabile]];
- `y` (*Minor*): incrementato al completamento di una modifica sostanziale;
- `z` (*Patch*): incrementato per modifiche minori (correzioni ortografiche, aggiustamenti di forma).
Il changelog *deve* essere aggiornato ad ogni incremento di versione.

==== Denominazione dei File e Tracciabilità
La denominazione dei file sorgente Typst segue lo schema `SIGLA.typ` (es. `NdP`, `PdP`, `PdQ`, `AdR`). Le date all'interno dei documenti sono scritte nel formato `AAAA/MM/GG`.

Ogni attività documentale (redazione, verifica, aggiornamento) *deve* essere associata a una task su #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]] con descrizione, assegnatario e scadenza. Al termine di ogni Sprint, i documenti completati e verificati vengono integrati nel branch `develop` tramite *Pull Request*.

==== Repository GitHub - Struttura e Branching
La gestione avviene nel repository `DocumentazioneProgetto` seguendo la struttura di branching ufficiale (fatta eccezione per `nome-componente`, riservata al repository `PoC`).

La repository *deve* rispettare la seguente organizzazione:
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    [*Cartella / File*], [*Contenuto*],
    [`.github/`], [Configurazioni specifiche di GitHub.],
    [`Glossario/`], [Sorgenti e infrastruttura per la versione web del glossario.],
    [`RTB/` e `candidatura/`], [Documenti ufficiali delle relative milestone.],
    [`assets/`], [Risorse multimediali utilizzate nei documenti.],
    [`diarioDiBordo/`], [Diari di bordo settimanali.],
    [`lib/`],
    [Librerie di funzioni Typst riutilizzabili (gestite dall'Amministratore). I documenti le importano tramite `#import "../lib/..."`.],

    [`verbali/`], [Verbali di riunioni interne ed esterne.],
    [`website/`], [Sorgenti del sito web di Skarab Group.],
    [`README.md` & `index.html`], [Presentazione del progetto e homepage del sito web nella root.],
  ),
  caption: [Struttura gerarchica del repository di documentazione],
)

== Qualifica
Il processo di *Qualifica* garantisce che il prodotto software e la documentazione soddisfino gli standard di qualità definiti e i requisiti specificati. Si articola in due attività fondamentali:
- *Verifica*: _"Did I build the system right?"_ (Ho costruito correttamente il sistema?);
- *Validazione*: _"Did I build the right system?"_ (Ho costruito il sistema giusto?).

=== PR-SUPP-03: Procedura di Verifica <verifica>
La Verifica ha come scopo accertare che quanto prodotto sia stato realizzato correttamente. È un'attività continua applicata sia alla documentazione che al codice. Gli esiti *devono* essere documentati nel #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/PdQ.pdf")[#underline[Piano di Qualifica]] per supportare il miglioramento continuo (ciclo PDCA) e garantire la conformità alle NdP.

==== Strumenti a supporto
Per il calcolo dell'indice di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#gulpease")[#def[Gulpease]] *deve* essere utilizzato il servizio #link("https://farfalla-project.org/readability_static/")[#underline[farfalla-project.org/readability_static/]]. Ulteriori strumenti verranno ampliati durante la PB.

==== Attività previste (ISO/IEC/IEEE 12207)
Il processo si articola nell'implementazione (definizione criticità, metodologie e strumenti) e nelle attività di controllo vero e proprio su:
- *Processi*: verifica dell'efficacia dei processi adottati;
- *Requisiti*: verifica di esaustività, consistenza e tracciabilità;
- *Progettazione*: verifica di efficacia rispetto ai requisiti;
- *Codice*: verifica del soddisfacimento dei requisiti implementativi;
- *Integrazione*: verifica della corretta interazione tra componenti;
- *Documentazione*: verifica di completezza, correttezza e conformità.

==== Implementazione: Regola del Main e Pull Request
Nessun documento o componente software può essere integrato senza aver superato il processo di verifica.
- *Regola fondamentale*: Il branch `main` contiene esclusivamente artefatti verificati e di qualità accertata.
- Le verifiche *devono* essere condotte tramite _Pull Request_ su #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#github")[#def[GitHub]], garantendo: tracciabilità, revisione da parte di un #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#verificatori")[#def[Verificatore]] diverso dal redattore e approvazione formale. Problematiche complesse sono discusse in riunione e verbalizzate.

==== Verifica della Documentazione
Ogni documento *deve* seguire un approccio di revisione formale sistematica articolato in:
- *Analisi Linguistica*: Verifica di grammatica, sintassi, ortografia e indice di leggibilità.
- *Ispezione dei Contenuti*: Verifica di esaustività, consistenza interna e coerenza.
- *Conformità Normativa*: Rispetto dei template e convenzioni grafiche interne.
- *Gestione del Flusso*: Rispetto rigoroso del systema di versioning e policy dei branch.

*Nota Operativa:* Il Verificatore ha facoltà di correggere direttamente solo
errori minori (grammatica, ortografia, formattazione). Qualsiasi altra problematica rilevata (es. contenuti insufficienti, incoerenze logiche, mancata conformità
normativa) deve essere segnalata tramite commento TODO nel
sorgente Typst, con indicazione esplicita della modifica richiesta. La correzione rimane responsabilità del redattore originale.

==== Verifica del Codice: Analisi Statica e Dinamica
La strategia di verifica del software adotta due approcci complementari, formalizzati dalla RTB ed estesi in PB.

===== Analisi Statica
Non richiede l'esecuzione dell'oggetto e individua errori sintattici, strutturali o concettuali. Si realizza tramite:
- *Metodi Formali:* Dimostrazioni matematiche, riservate solo a componenti critiche.
- *Walkthrough*: Analisi completa e approfondita. È costoso e applicato solo a componenti critiche o quando la natura del problema è ignota.
- *Ispezione*: Utilizzo di checklist predefinite. *Skarab Group privilegia l'ispezione* in quanto garantisce uniformità e riduce i tempi. (Nota: Il walkthrough preliminare è necessario per stabilire i criteri della checklist).

Il team *ha l'obbligo* di applicare l'analisi statica mediante Review manuale del codice e strumenti di linting: #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#eslint")[#def[ESLint]] per JavaScript/TypeScript; Pylint/Black per Python.

===== Analisi Dinamica e Testing
Prevede l'esecuzione dell'oggetto per rilevare *failure* (comportamenti non conformi) e *fault* (difetti nel codice). I test *devono* essere: Ripetibili, Indipendenti e Automatizzabili. L'automazione è supportata da:
- *Driver*: invocano il codice da testare se non direttamente eseguibile;
- *Stub*: simulano dipendenze non ancora implementate;
- *Logger*: registrano gli esiti in formato strutturato.

I Test seguono lo schema gerarchico: #align(center)[`[Prefisso]-[Numero].[Sottonumero]`]

#figure(
  table(
    columns: (auto, 1fr, 2.5fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Prefisso*], [*Tipologia*], [*Obiettivi e Dettagli Metodologici*],
    [TU],
    [Test di Unità],
    [Verificano il funzionamento atomico in isolamento. Si suddividono in *Funzionali (black-box)* (verificano input/output tramite valori: non ammissibili inf., limite inf., centrali, limite sup., non ammissibili sup.) e *Strutturali (white-box)* (verificano percorsi logici e copertura).],

    [TI],
    [Integrazione],
    [Verificano la corretta interazione tra unità. Strategie adottate: *Top-Down* (dalle componenti con maggiori dipendenze esterne) o *Bottom-Up* (dalle componenti di base con minori dipendenze).],

    [TS], [Sistema], [Valutano il comportamento del sistema nel suo complesso conformemente all'AdR.],
    [TR],
    [Regressione],
    [Garantiscono l'assenza di nuovi difetti. Procedura obbligatoria: 1. Correzione difetto; 2. Esecuzione del test che aveva rilevato il difetto; 3. Esecuzione intera suite di regressione; 4. Verifica che nessun test superato in precedenza sia fallito.],

    [TA], [Accettazione], [Verifica finale per la validazione del prodotto rispetto alle aspettative.],
  ),
  caption: [Nomenclatura e Classificazione delle Analisi Dinamiche (Test)],
)

====== Criteri di Verifica della Qualifica
L'attività è conforme se e solo se: ogni Pull Request è approvata da un verificatore indipendente, il Test Success Rate è pari al 100% prima del merge in `main`, gli indici di leggibilità rispettano il PdQ e ogni anomalia è tracciata su Jira.

=== PR-SUPP-04: Procedura di Validazione
Il processo di Validazione ha come scopo verificare che *Code Guardian* soddisfi le esigenze di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def[Var Group]] e degli utenti finali, focalizzandosi sulla conformità alle aspettative reali.

==== Obiettivi e Strategie di Validazione
Il team *ha l'obbligo* di: confermare l'implementazione delle funzionalità richieste, verificare l'utilizzabilità del sistema, assicurare la risoluzione dei problemi di audit/remediation e ottenere l'accettazione formale.

L'attività si realizza tramite un approccio strutturato basato su:
1. *Tracciamento sistematico dei requisiti*: Ogni requisito raccolto nell'#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")[*Analisi dei Requisiti*] *deve* essere tracciato fino alla sua implementazione e validazione, garantendo la copertura completa.
2. *Test di Accettazione (TA)*: Simulano scenari d'uso reali per verificare criteri di successo oggettivi per ogni requisito, confermando che il sistema realizzato sia effettivamente quello richiesto.
#pagebreak()

= Processi Organizzativi
In conformità allo standard #link(<12207>)[ISO/IEC/IEEE 12207], i Processi Organizzativi costituiscono l'insieme delle attività trasversali che garantiscono il corretto andamento del progetto dal punto di vista gestionale, infrastrutturale e della crescita professionale del team.

Nel contesto del progetto _#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]]_, #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] ha identificato i seguenti Processi Organizzativi rilevanti:
- Gestione dei Processi;
- Infrastruttura;
- Processo di Miglioramento;
- Processo di Formazione.

== Gestione dei Processi
Il processo ha l'obiettivo di definire e coordinare le attività, assegnare responsabilità, pianificare le risorse e garantire una comunicazione interna ed esterna efficace.

=== Ruoli di Progetto e Rotazione
Ogni membro di Skarab Group ricopre ruoli differenti nel corso del progetto, garantendo la rotazione ciclica prevista. La distribuzione dei ruoli per ciascuno #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#sprint")[#def[Sprint]] è pianificata dal #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#responsabile")[#def[Responsabile di Progetto]] all'inizio dello Sprint e tracciata nel #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-progetto")[#def[Piano di Progetto]].

#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Ruolo*], [*Responsabilità Vincolante*],
    [Responsabile],
    [Coordina il progetto, garantisce scadenze e budget. Rappresenta il team con Var Group e i docenti. Monitora l'avanzamento (EVM), gestisce rischi e approva documenti. Convoca riunioni e gestisce email formali.],

    [Amministratore],
    [Gestisce l'infrastruttura (Git/GitHub, Jira) e gli ambienti di sviluppo. Definisce workflow di branching e convenzioni di commit. Mantiene le NdP e i template di documento. Garantisce backup e sicurezza.],

    [Verificatore],
    [Assicura la qualità degli artefatti e la conformità alle NdP. Corregge direttamente solo errori minori (grammatica, ortografia, formattazione). Per ogni altra anomalia inserisce un commento TODO esplicito nel documento, specificando cosa deve essere modificato e perché. Esegue review del codice sorgente e verifica il rispetto degli standard di codifica. Redige esiti di verifica nelle Pull Request e monitora le metriche.],

    [Analista],
    [Formalizza i requisiti (funzionali, qualità, vincolo) tramite interazione con gli stakeholder. Redige l'AdR e garantisce la tracciabilità tra requisiti e fonti.],

    [Progettista],
    [Definisce l'architettura del sistema e i design pattern. Specifica la struttura delle classi, algoritmi e interfacce. Redige la Specifica Tecnica ed effettua scelte tecnologiche motivate.],

    [Programmatore],
    [Implementa il codice rispettando gli standard NdP. Sviluppa unit test e garantisce code coverage. Gestisce dipendenze e build automation. Documenta il codice e collabora alla risoluzione dei difetti.],
  ),
  caption: [Matrice di responsabilità per i ruoli di progetto],
)

=== PR-ORG-01: Procedura di Gestione Task e Pianificazione
La gestione operativa delle #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#task")[#def[task]] avviene esclusivamente tramite #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]], fonte ufficiale per monitoraggio e rendicontazione.
- *Requisiti Task:* Ogni task *deve* includere: descrizione univoca, assegnatario, stima ore, scadenza e Sprint di riferimento.
- *Atomicità:* Le task *devono* essere eseguibili da un singolo membro senza dipendenze bloccanti non esplicitate.
- *Rendicontazione:* È responsabilità individuale aggiornare quotidianamente lo stato e le ore, segnalando tempestivamente impedimenti.

=== PR-ORG-02: Procedura di Coordinamento e Comunicazione
Il coordinamento avviene tramite canali specifici per garantire efficienza e formalità.

#figure(
  table(
    columns: (auto, 1fr, auto),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Canale*], [*Utilizzo e Obblighi*], [*Tipo*],
    [Discord],
    [Riunioni settimanali per condividere avanzamento e risolvere impedimenti. Ogni riunione *deve* produrre un verbale interno.],
    [Sincrono],

    [WhatsApp / Telegram], [Comunicazioni rapide, urgenze e coordinamento di gruppo breve.], [Asincrono],
    [Email],
    [Convocazioni e comunicazioni formali con Var Group e Docenti. Ogni riunione esterna *deve* produrre un verbale esterno.],
    [Formale],

    [Jira], [Assegnazione task e monitoraggio avanzamento Sprint.], [Gestionale],
  ),
  caption: [Piano di comunicazione del team],
)

== Infrastruttura
L'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#amministratore")[#def[Amministratore]] è responsabile della creazione, configurazione e manutenzione del toolkit tecnologico.

#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Strumento*], [*Utilizzo nel progetto*],
    [#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#git")[#def[Git]] / #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#github")[#def[GitHub]]],
    [Controllo versione, hosting repository, gestione Pull Request e code review. L'Amministratore definisce le regole di protezione branch.],

    [#link(
      "https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#google-calendar",
    )[#def[Google Calendar]]],
    [Pianificazione riunioni esterne e scadenze gestite dal Responsabile.],

    [Automazione],
    [Script interni per generazione Glossario (HTML/PDF), compilazione Typst e aggiornamento sito web (GitHub Actions).],
  ),
  caption: [Strumenti dell'infrastruttura di progetto],
)

=== PR-ORG-03: Procedura di Gestione della Configurazione (GitHub)
La struttura dei branch *deve* seguire rigorosamente lo schema seguente:
- `main`: Branch stabile con artefatti verificati e approvati. Commit diretti *vietati*.
- `develop`: Branch di integrazione protetto. Richiede Pull Request con revisione obbligatoria.
- `feature/nome-feature`: Sviluppo funzionalità (fase PB).
- `fix/nome-fix`: Correzione bug.
- `[ACRONIMO-DOC]`: Branch per redazione documenti (es. `NdP`, `AdR`). Verbali raggruppati in `verbali`.
- `nome-componente`: Branch per componenti PoC (deprecato in PB).

==== Organizzazione del Repository `DocumentazioneProgetto`
Le cartelle *devono* essere così strutturate: `.github/` (configurazioni), `Glossario/` (sito web glossario), `RTB/` (documenti milestone), `assets/` (multimedia), `candidatura/`, `diarioDiBordo/`, `lib/` (librerie Typst condivise), `verbali/`, `website/`.

== Processo di Miglioramento
Il processo garantisce il soddisfacimento degli standard di qualità tramite il monitoraggio continuo.

=== PR-ORG-04: Procedura di Miglioramento (Retrospettiva)
Il processo si articola in: Inizializzazione (NdP), Valutazione (PdQ) e Miglioramento. Al termine di ogni Sprint, il team *ha l'obbligo* di:
1. Analizzare i valori delle metriche rispetto alle soglie del PdQ.
2. Identificare inefficienze operative.
3. Definire azioni correttive concrete su Jira con responsabile e scadenza.
4. Aggiornare le NdP o il PdQ previo approvazione del Responsabile.

== Processo di Formazione
Garantisce che il team acquisisca le competenze necessarie per gli obiettivi del Capitolato C2.

=== PR-ORG-05: Procedura di Formazione Continua
- *Competenze Chiave:* TypeScript/React, NestJS, Python (Agenti AI), MongoDB, Node.js, Git/GitHub, Typst, AWS.
- *Auto-formazione:* Le ore di studio individuale *non sono rendicontabili* nel monte ore di progetto.
- *Spazi per la Formazione:* Il Responsabile può pianificare periodi di approfondimento tecnologico nelle fasi a peso minore, senza compromettere gli obiettivi di Sprint.
- *Supporto Proponente:* Il team *ha l'obbligo* di partecipare alle sessioni dedicate fornite da *Var Group*.

====== Criteri di Verifica della Formazione
Il processo è conforme se lo studio autonomo è escluso dal consuntivo e se il team dimostra operatività sulle tecnologie richieste senza blocchi critici.
