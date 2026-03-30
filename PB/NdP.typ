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
#let versione = "v1.1.0"
#set heading(numbering: "1.1.1")

#titlePage("Norme di Progetto", versione)
#set page(numbering: "1", header: header("Norme di Progetto"), footer: footer())

#let history = (
  (
    "2026/03/30",
    "1.1.0",
    "Rielaborazione documento con modifiche proposte dal docente Vardanega",
    members.suar,
  ),
  (
    "2026/03/03",
    "1.0.0",
    "Revisione per RTB",
    "",
    members.suar
  ),
  (
    "2026/02/28",
    "0.14.0",
    "Verifica di tutto lo stato attuale del documento",
    members.andrea,
    members.suar
  ),
  (
    "2026/02/27",
    "0.13.1",
    "Verifica per la sezione Processo di Sviluppo e sezione Processi Organizzativi",
    members.andrea,
    members.suar
  ),
  (
    "2026/02/27",
    "0.13.0",
    "Verifica per la sezione Piano di Qualifica",
    members.berengan,
    members.andrea
  ),
  (
    "2026/02/23",
    "0.12.0",
    "Verifica per la sezione Analisi dei Requisiti per la RTB",
    "",
    members.suar,
    members.kevin
  ),
  (
    "2026/02/21",
    "0.11.0",
    "Rielaborazione Processi di Supporto e Organizzativi",
    members.alice,
    members.suar
  ),
  (
    "2026/02/20",
    "0.10.1",
    "Fix sezione AdR in processo di fornitura",
    members.andrea,
    members.suar
  ),
  (
    "2026/02/14",
    "0.10.0",
    "Riorganizzazione sezione Processo di Sviluppo",
    members.alice,
    members.suar
  ),
  (
    "2026/02/13",
    "0.9.0",
    "Ampliamento sezioni Verifica e Validazione. Criteri di Verifica Processi di Supporto e Sviluppo",
    members.alice,
    members.suar
  ),
  (
    "2026/02/11",
    "0.8.1",
    "Ultimo fix/miglioramento sezione AdR",
    members.andrea,
    members.suar
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
    members.suar
  ),
  (
    "2026/02/03",
    "0.4.0",
    "Integrazioni a PdQ e Metriche",
    members.alice,
    members.suar
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
  (ultimo accesso: *30/03/2026*)

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *30/03/2026*)

=== Riferimenti Informativi

- *Dispense del corso di Ingegneria del Software relative ai Processi di Ciclo di Vita del Software* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T02.pdf")] \
  (ultimo accesso: *30/03/2026*)

- *Dispense del corso di Ingegneria del Software relative alla Gestione di Progetto* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T04.pdf")] \
  (ultimo accesso: *30/03/2026*)

- *IEEE 829 – Standard for Software and System Test Documentation*: definizione della struttura dei piani di test, casi di test, procedure e report. \
  #underline[#link("https://ieeexplore.ieee.org/document/4578383")] \
  (ultimo accesso: *30/03/2026*)

- *IEEE 830 – Standard for Software Requirements Specifications*: guida alla redazione e classificazione dei requisiti funzionali e non funzionali. \
  #underline[#link("https://ieeexplore.ieee.org/document/720574")] \
  (ultimo accesso: *30/03/2026*)

- *IEEE 1016 – Recommended Practice for Software Design Descriptions*: linee guida per la descrizione dell’architettura software e dei principali design pattern. \
  #underline[#link("https://ieeexplore.ieee.org/document/741934")] \
  (ultimo accesso: *30/03/2026*)

- *ISO/IEC/IEEE 12207 – Software Life Cycle Processes*<12207>: framework internazionale per la gestione dei processi di sviluppo, manutenzione e dismissione del software. \
  #underline[#link("https://ieeexplore.ieee.org/document/8100771")] \
  (ultimo accesso: *30/03/2026*)


#pagebreak()
= Processi Primari
In conformità allo standard #underline[#link(<12207>)[ISO/IEC/IEEE 12207]], il ciclo di vita del sistema software è descritto attraverso un insieme strutturato di processi. Ogni processo si articola in *attività operative*, ciascuna delle quali è realizzata attraverso *procedure attuative* con obiettivi e prodotti definiti, supportate da *strumenti* specifici.
Nel contesto del presente progetto sono rilevanti i processi di *Fornitura* e *Sviluppo*.
#pagebreak()

== Processo di Fornitura
=== Descrizione del Processo
Il Processo di Fornitura comprende le attività svolte dal gruppo #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] in qualità di fornitore nei confronti del proponente Var Group. Esso governa la pianificazione, il coordinamento, la produzione e la consegna degli artefatti di progetto in conformità ai requisiti del #underline[#link(<capitolato>)[Capitolato C2]].

=== Attività del Processo
==== Attività FOR-A01 — Pianificazione della Fornitura
Consiste nella definizione della struttura di lavoro, nell'assegnazione delle responsabilità operative e nella stima dell'impegno per ogni Sprint.

===== Procedura PR-FOR-01: Avvio dello Sprint
*Obiettivo:* Garantire la saturazione pianificata delle risorse all'inizio di ogni iterazione.

*Passi operativi:*
+ Il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#responsabile")[#def[Responsabile]] definisce le attività dello Sprint e le scompone in task atomiche;
+ Ogni task viene stimata in ore, assegnata a un membro del team e registrata su #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]];
+ Le dipendenze tra task vengono esplicitate tramite relazioni "blocks/blocked-by" su Jira;
+ Il Responsabile verifica che la distribuzione del carico rispetti il preventivo approvato.

*Prodotti:* Sprint backlog su Jira con task atomiche assegnate e stimate.

*Strumenti:* #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]].

*Criteri di conformità:*
- Tutte le task sono atomiche: eseguibili da un singolo membro, senza dipendenze bloccanti non tracciate;
- Ogni task ha un responsabile identificabile e una stima oraria;
- Il totale stimato è coerente con il preventivo dello Sprint.

===== Procedura PR-FOR-02: Gestione dei Rischi

*Obiettivo:* Identificare, valutare e monitorare i fattori che possono compromettere gli obiettivi di progetto.

*Metodologia:* Il team adotta un approccio *semi-quantitativo*. Ogni rischio è valutato tramite:
- *Probabilità (P):* scala discreta 1–3;
- *Impatto (I):* scala discreta 1–3;
- *Livello di Rischio (R):* $R = P times I$.

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
  caption: [Matrice di Rischio],
)

*Categorie di rischio:*
- *RT* — Rischi Tecnologici (LLM, agenti, integrazioni);
- *RI* — Rischi Interpersonali (disponibilità del team, comunicazione);
- *RCO* — Rischi di Costo e Organizzativi (stime, schedulazione, vincoli esterni).

*Passi operativi:*
+ Ogni membro segnala l'insorgere di una problematica al Responsabile *entro il termine della giornata lavorativa*;
+ L'evento viene tracciato immediatamente nel sistema di issue tracking con categoria, P, I e R;
+ Il Responsabile attiva la strategia di risposta in base al livello R:
  - *R 1–3 (Basso):* monitoraggio periodico;
  - *R 4 (Medio):* definizione obbligatoria di una strategia di mitigazione;
  - *R 6–9 (Alto/Critico):* attivazione di azioni preventive e piano di contingenza;
+ Al termine dello Sprint il Responsabile analizza nel consuntivo l'efficacia delle contromisure adottate.

*Prodotti:* Registro dei rischi aggiornato su Jira; sezione "Analisi dei Rischi" del Piano di Progetto.

*Strumenti:* Jira.

*Criteri di conformità:*
- Ogni rischio è classificato (RT/RI/RCO) con valori P, I, R espliciti;
- Per ogni R ≥ 4 è definita una strategia di mitigazione o contingenza;
- Il registro è aggiornato a ogni Sprint.

==== Attività FOR-A02 — Monitoraggio e Controllo dell'Avanzamento

Consiste nella verifica sistematica dell'andamento del progetto rispetto alla pianificazione tramite iterazioni temporali (Sprint).

===== Procedura PR-FOR-03: Rendicontazione dello Sprint

*Obiettivo:* Misurare lo scostamento tra pianificato ed effettivo e produrre evidenza per le azioni correttive.

*Passi operativi:*
+ Ogni membro aggiorna quotidianamente su Jira lo stato delle proprie task, le ore effettive e l'avanzamento, *entro il termine della giornata lavorativa*;
+ Le attività non pianificate (bugfix, criticità emergenti) sono tracciate creando nuove task su Jira; l'omissione di tali ore è *vietata*;
+ Al termine dello Sprint il Responsabile confronta il Consuntivo (dati Jira) con il Preventivo e ne analizza le cause di scostamento;
+ Il Responsabile valida le azioni correttive per lo Sprint successivo.

*Prodotti:* Consuntivo di Sprint (sezione del Piano di Progetto) con analisi delle deviazioni e azioni correttive.

*Strumenti:* Jira.

*Criteri di conformità:*
- Preventivo e Consuntivo di Sprint sono entrambi presenti e confrontati esplicitamente;
- Tutte le ore lavorate, incluse quelle extra-piano, sono tracciate;
- Le azioni correttive sono validate dal Responsabile e tracciate su Jira.

===== Procedura PR-FOR-04: Gestione delle Comunicazioni Esterne

*Obiettivo:* Garantire professionalità e tracciabilità nelle comunicazioni con il proponente Var Group.

*Passi operativi:*
+ Le comunicazioni formali avvengono *esclusivamente* tramite email istituzionale o incontri verbalizzati;
+ Il Responsabile redige un verbale esterno *entro 48 ore lavorative* da ogni incontro con il proponente;
+ Il verbale viene inviato al proponente con identificatore univoco (es. `VE_2026-03-02`);
+ Il silenzio-assenso del proponente dopo 24 ore dalla pubblicazione costituisce approvazione formale.

*Prodotti:* Verbale esterno in formato PDF, archiviato nel repository.

*Strumenti:* Email istituzionale; #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#typst")[#def[Typst]]; #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#github")[#def[GitHub]].

*Criteri di conformità:*
- Il verbale è redatto entro le 48 ore;
- Include: data, partecipanti, ordine del giorno, decisioni, azioni con assegnatario;
- È archiviato nel repository ufficiale in formato PDF.

==== Attività FOR-A03 — Produzione della Documentazione

Consiste nella redazione, verifica e rilascio di tutti gli artefatti documentali previsti dal processo di fornitura.

===== Procedura PR-FOR-05: Redazione degli Artefatti

*Obiettivo:* Garantire la conformità stilistica, la tracciabilità delle modifiche e la qualità dei documenti prodotti.

*Passi operativi:*
+ Il redattore crea o aggiorna il documento in Typst, nel rispetto delle convenzioni stabilite nelle presenti NdP;
+ Il documento viene versionato secondo lo schema `x.y.z` e associato a una task su Jira;
+ L'integrazione in `main` e in `develop` richiede una Pull Request approvata da un verificatore *diverso* dal redattore;
+ Il verificatore controlla la conformità ai criteri definiti nel #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#piano-di-qualifica")[#def[PdQ]] e, se conforme, porta il documento allo stato *Approved*.

*Prodotti:* Artefatto documentale nello stato *Approved*, versione PDF, storico delle modifiche su GitHub.

*Strumenti:* Typst; GitHub (Pull Request, branch protection).

*Documenti prodotti da questa attività:*

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
    text(white)[*Documento*], text(white)[*Redattori*], text(white)[*Destinatari*], text(white)[*Uso*],
    [Lettera di Presentazione], [Responsabile], [Proponente, #members.cardin, #members.tullio, Skarab Group], [Esterno],
    [AdR – Analisi dei Requisiti], [Analisti], [Proponente, #members.cardin, #members.tullio, Skarab Group], [Esterno],
    [Glossario], [Tutti i membri], [Stakeholder interni ed esterni], [Esterno],
    [NdP – Norme di Progetto], [Responsabili di processo], [Skarab Group, #members.cardin, #members.tullio], [Interno],
    [PdP – Piano di Progetto], [Project Manager], [Proponente, #members.cardin, #members.tullio, Skarab Group], [Esterno],
    [PdQ – Piano di Qualifica], [Responsabili Qualità], [Skarab Group, #members.cardin, #members.tullio, Proponente], [Esterno],
    [Verbali delle Riunioni], [Responsabile], [Proponente (se esterni), #members.cardin, #members.tullio, Skarab Group], [Interno / Esterno],
  ),
  caption: [Artefatti documentali del processo di fornitura],
)

*Criteri di conformità:*
- Il documento è presente tra gli artefatti previsti e rispetta la struttura minima obbligatoria;
- Adotta le convenzioni tipografiche delle NdP;
- È nello stato *Approved* al momento della consegna.

===== Procedura PR-FOR-06: Gestione Terminologica (Glossario)

*Obiettivo:* Eliminare le ambiguità semantiche e garantire uniformità comunicativa nell'intera documentazione.

*Passi operativi:*
+ Il redattore aggiunge la voce al Glossario in ordine alfabetico, con definizione sintetica, non tautologica e contestualizzata;
+ In ogni documento, la prima occorrenza di un termine del Glossario viene marcata con l'apice #super[G] e linkata alla versione web ufficiale;
+ L'uso di sinonimi duplicati senza rimandi è *vietato*;
+ Il Glossario viene pubblicato sia in formato PDF statico sia come risorsa ipertestuale.

*Prodotti:* Glossario aggiornato (PDF + web); documentazione con marcatura #super[G] coerente.

*Strumenti:* Typst; sito web del progetto (anchor link).

*Criteri di conformità:*
- Ogni termine marcato #super[G] nella documentazione ha una voce corrispondente nel Glossario;
- Le voci sono in rigoroso ordine alfabetico;
- Ogni anchor link punta a una sezione esistente della pagina web;
- Le definizioni non sono tautologiche.

==== Attività FOR-A04 — Ingegneria dei Requisiti

Consiste nell'elicitazione, analisi, formalizzazione e verifica dei requisiti del sistema a partire dal Capitolato e dai feedback del proponente.

*Standard di riferimento:* IEEE 830-1998; ISO/IEC/IEEE 29148:2018; UML 2.5.

===== Procedura PR-FOR-07: Modellazione dei Casi d'Uso

*Obiettivo:* Descrivere in modo non ambiguo i comportamenti attesi del sistema dal punto di vista degli attori.

*Passi operativi:*
+ Gli Analisti identificano gli attori del sistema e li censiscono;
+ Per ogni scenario viene prodotta una descrizione testuale con nomenclatura *UCx.y.z*, dove *x* è l'identificatore principale, *y* il numero di inclusioni e *z* il numero di estensioni;
+ Ogni caso d'uso include obbligatoriamente: Attori, Pre/Post-condizioni, Scenario Principale, Trigger e, se presenti, Inclusioni, Estensioni o Generalizzazioni;
+ La descrizione testuale viene corredata da un diagramma UML 2.5 con corrispondenza 1:1.

*Prodotti:* Sezione "Casi d'Uso" dell'Analisi dei Requisiti; diagrammi UML.

*Strumenti:* StarUML; Draw.io; Typst.

*Criteri di conformità:*
- Ogni identificatore UCx.y.z è univoco;
- Ogni attore citato è stato precedentemente censito;
- Esiste corrispondenza 1:1 tra descrizione testuale e diagramma UML;
- La descrizione è limitata al "cosa fa il sistema", non al "come lo fa".

===== Procedura PR-FOR-08: Classificazione e Formalizzazione dei Requisiti

*Obiettivo:* Produrre specifiche atomiche, non ambigue, verificabili e tracciate verso la loro fonte.

*Passi operativi:*
+ Gli Analisti derivano i requisiti dai casi d'uso e dal Capitolato;
+ Ogni requisito viene catalogato con la sintassi *TipologiaPrioritàNumero*:
  - *Tipologia:* F (Funzionale), Q (Qualità), V (Vincolo);
  - *Priorità:* Ob (Obbligatorio), De (Desiderabile), Op (Opzionale);
+ Per ogni requisito viene indicata la fonte (UC o sezione del Capitolato);
+ I requisiti vengono verificati rispetto ai criteri di atomicità, non ambiguità e testabilità.

*Prodotti:* Tabella dei requisiti nell'Analisi dei Requisiti.

*Strumenti:* Typst; Jira (tracciabilità requisiti-task).

*Criteri di conformità:*
- Ogni requisito esprime una singola necessità non ulteriormente scomponibile;
- Il linguaggio è tecnico, oggettivo e privo di termini soggettivi;
- Ogni requisito permette la definizione di un test di accettazione binario;
- I requisiti di qualità sono espressi tramite metriche quantitative o soglie numeriche.

==== Attività FOR-A05 — Pianificazione Economica e Allocazione delle Risorse

Consiste nella stima dell'impegno, nella distribuzione dei ruoli e nella definizione del preventivo di progetto.

===== Procedura PR-FOR-09: Definizione del Preventivo

*Obiettivo:* Produrre una baseline economica verificabile e aggiornabile a ogni Sprint.

*Passi operativi:*
+ Il Responsabile definisce il preventivo iniziale rispettando i seguenti vincoli:
  - Le ore di auto-apprendimento precedenti al primo Sprint *non sono rendicontabili*;
  - La distribuzione dell'impegno orario pro-capite è esplicitata e motivata;
+ Per la milestone *RTB* l'allocazione prevede un impiego prevalente delle figure di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#amministratore")[#def[Amministratore]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analista")[#def[Analista]], in ragione dell'alto carico documentale;
+ Per la milestone *PB* il preventivo è gestito con metodologia *rolling-wave*: il Responsabile lo riesamina alla chiusura di ogni Sprint e ogni revisione deve essere approvata;
+ Ogni scostamento rispetto alle stime è documentato e motivato nei verbali o su Jira.

*Prodotti:* Sezione "Preventivo e Allocazione delle Risorse" del Piano di Progetto.

*Strumenti:* Jira; Typst.

*Criteri di conformità:*
- Il preventivo iniziale è coerente con le baseline individuate;
- La ripartizione dei ruoli per fase (RTB/PB) è coerente con le attività pianificate;
- Gli scostamenti dal preventivo sono motivati e tracciati.

==== Attività FOR-A06 — Consegna Formale degli Artefatti

Consiste nel consolidamento, nel tagging e nella notifica ufficiale della consegna al proponente in occasione delle scadenze di milestone.

===== Procedura PR-FOR-10: Checklist di Consegna

*Obiettivo:* Assicurare che ogni consegna sia completa, verificata e formalmente notificata.

*Passi operativi:*
+ Il Responsabile accerta che tutti i documenti siano nello stato *Approved* e soddisfino i criteri del PdQ;
+ Vengono generati i PDF definitivi dai sorgenti Typst congelati;
+ Viene creata una Release sul repository GitHub con tag semantico (es. `v1.0.0-RTB`);
+ Il Responsabile invia comunicazione formale di avvenuta consegna al proponente indicando il link alla release.

*Prodotti:* Release GitHub con tag semantico; email di notifica al proponente.

*Strumenti:* Typst; GitHub (Releases); email istituzionale.

*Criteri di conformità:*
- Tutti i documenti sono in stato *Approved*;
- Il tag segue la convenzione semantica (`vX.Y.Z-MILESTONE`);
- La notifica formale è inviata entro la scadenza contrattuale.

#pagebreak()

== Processo di Sviluppo

Il Processo di Sviluppo adottato da #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def[Skarab Group]] definisce le attività necessarie alla realizzazione tecnica del prodotto _#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def[Code Guardian]]_, in conformità allo standard #underline[#link(<12207>)[ISO/IEC/IEEE 12207]].

Lo stack tecnologico adottato è:
- *TypeScript:* Frontend (React) e Backend (NestJS);
- *Python:* Agenti AI, Orchestratore e script di analisi dati;
- *MongoDB e Node.js:* Database con Mongoose e ambiente di esecuzione server-side.

Le attività del processo sono distribuite tra le due baseline principali:
- *RTB (Requirements and Technology Baseline):* Analisi dei Requisiti, Proof of Concept, definizione degli standard normativi;
- *PB (Product Baseline):* Progettazione Architetturale, Codifica, consolidamento del prodotto.

=== Attività del Processo

==== Attività SVIL-A01 — Definizione del Ciclo di Vita

Consiste nella selezione e nella formalizzazione del modello di ciclo di vita adottato per lo sviluppo di _Code Guardian_.

===== Procedura PR-SVIL-01: Adozione del Modello Incrementale

*Obiettivo:* Garantire un approccio di sviluppo graduato, verificabile e allineato alle milestone RTB e PB.

*Passi operativi:*
+ Il team adotta un modello iterativo-incrementale articolato in Sprint di durata fissa;
+ Ogni Sprint produce un incremento verificabile del prodotto o della documentazione tecnica;
+ Al termine di ogni Sprint viene svolta una retrospettiva per identificare azioni di miglioramento.

*Prodotti:* Definizione del ciclo di vita nel Piano di Progetto; retrospettive documentate.

*Strumenti:* Jira; Typst.

*Criteri di conformità:*
- Ogni Sprint è avviato con task stimate su Jira e concluso con una retrospettiva documentata;
- Le milestone RTB e PB sono allineate con gli incrementi previsti.

==== Attività SVIL-A02 — Analisi e Progettazione

Consiste nella definizione logica e strutturale del sistema, dall'analisi dei requisiti alla specifica architetturale e di dettaglio.

===== Procedura PR-SVIL-02: Progettazione Architetturale

*Obiettivo:* Definire la struttura di alto livello del sistema garantendo scalabilità e separazione delle responsabilità.

*Passi operativi:*
+ Gli Analisti e i Progettisti identificano le componenti hardware e software del sistema;
+ Viene prodotto un diagramma architetturale UML 2.5 delle componenti principali;
+ Per ogni componente sono specificate le responsabilità, le interfacce esposte e le dipendenze;
+ La progettazione garantisce la separazione tra logica di business e interfaccia utente.

*Prodotti:* Documento di Specifica Tecnica (diagrammi architetturali, descrizione delle componenti).

*Strumenti:* StarUML; Draw.io; Typst.

*Criteri di conformità:*
- Ogni requisito dell'AdR è tracciato verso almeno una componente progettuale;
- La strategia di gestione delle eccezioni è specificata;
- I diagrammi UML sono aggiornati e coerenti con la documentazione tecnica.

===== Procedura PR-SVIL-03: Progettazione di Dettaglio

*Obiettivo:* Specificare classi, interfacce, strutture dati e algoritmi prima della codifica.

*Passi operativi:*
+ I Progettisti definiscono le classi e le interfacce di ogni componente secondo gli standard di nomenclatura (vedi PR-SVIL-05);
+ Per ogni interfaccia sono specificati i metodi esposti, i parametri e i valori di ritorno;
+ La specifica viene prodotta in Typst prima dell'avvio della codifica del componente.

*Prodotti:* Specifica di dettaglio (diagrammi di classe UML, descrizione delle interfacce).

*Strumenti:* StarUML; Draw.io; Typst.

*Criteri di conformità:*
- Interfacce, classi e algoritmi sono specificati prima della fase di codifica;
- I diagrammi di classe sono coerenti con il codice prodotto.

==== Attività SVIL-A03 — Implementazione

Consiste nella trasformazione delle specifiche progettuali in codice sorgente eseguibile, nel rispetto degli standard tecnici adottati.

===== Procedura PR-SVIL-04: Codifica

*Obiettivo:* Produrre codice corretto, leggibile, modulare e conforme agli standard tecnici del progetto.

*Passi operativi:*
+ Il Programmatore implementa le specifiche rispettando gli standard di nomenclatura obbligatori:

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

+ Ogni file deve *obbligatoriamente* essere nominativo della classe che descrive, indicando come estensione il tipo di componente che ci si aspetta all'interno del file (es: analysisIdt.vo.ts per indicare che è un Value Object). Per nomi come Value Object, Use Case, Domain Service è sufficiente l'acronimo;
+ La logica di business è separata dall'interfaccia utente; ogni funzionalità è isolata in componenti atomici (*Single Responsibility Principle*);
+ Ogni chiamata asincrona è protetta da blocchi `try-catch` con logging specifico;
+ Prettier (2 spazi, apici singoli) ed ESLint sono eseguiti obbligatoriamente in pipeline CI.
+ Prima dell'avvio di ogni sessione di codifica, è *obbligatorio* leggere e rispettare le direttive di lavoro indicate in `CONTRIBUTING.md`.

*Prodotti:* Codice sorgente versionato su GitHub; report di analisi statica.

*Strumenti:* VS Code; ESLint; Prettier; Docker.

*Criteri di conformità:*
- Il codice supera i controlli di linting (ESLint/Prettier) senza errori;
- La densità di commenti rispetta la metrica MPD04 del PdQ;
- La complessità ciclomatica (MPD05) non supera la soglia definita nel PdQ.

==== Attività SVIL-A04 — Integrazione

Consiste nella combinazione progressiva delle unità software e nella verifica del loro funzionamento congiunto.

===== Procedura PR-SVIL-05: Integrazione e Gestione della Configurazione

*Obiettivo:* Garantire la coerenza e la stabilità del codebase a ogni integrazione di nuove unità.

*Passi operativi:*
+ Il team adotta la strategia di branching: `main` (stabile), `develop` (integrazione), `feature/` (task atomiche);
+ I commit seguono lo standard *Conventional Commits* (es. `feat(parser): add python support`) e devono essere redatti *tassativamente* in lingua inglese;
+ L'integrazione in `develop` e `main` è *vietata* senza Pull Request approvata da un componente terzo (Peer Review);
+ Il Verificatore esegue l'analisi statica prima di approvare la PR;
+ Le unità integrate vengono sottoposte ai test di integrazione prima del merge in `develop`.

*Prodotti:* Codebase aggiornato su GitHub; report della CI.

*Strumenti:* GitHub (Pull Request, branch protection rules); pipeline CI; SonarQube.

*Criteri di conformità:*
- Non sono presenti commit diretti sui rami protetti (`develop`, `main`);
- Ogni PR supera i controlli automatizzati di CI;
- Non sono presenti regressioni a seguito dell'integrazione di nuove unità.

==== Attività SVIL-A05 — Verifica e Validazione

Consiste nell'esecuzione sistematica dei test per accertare la correttezza, la robustezza e la conformità del sistema rispetto ai requisiti.

===== Procedura PR-SVIL-06: Testing a Livelli

*Obiettivo:* Verificare il comportamento del sistema a ogni livello di granularità, dalla singola unità all'intero sistema.

*Livelli di test adottati:*

#figure(
  table(
    columns: (1fr, 2fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Livello*], [*Metodologia Obbligatoria*],
    [Unit Test], [Verifica delle singole unità tramite Mocking. Nomenclatura: `UT-XXX`.],
    [Integration Test], [Verifica interazione tra moduli (es. Python e NestJS). Nomenclatura: `IT-XXX`.],
    [System Test], [Simulazione di scenari reali per verificare interazione e robustezza. Nomenclatura: `ST-XXX`.],
    [Analisi Statica], [Controllo automatico della qualità prima di ogni merge.],
  ),
  caption: [Livelli di test e strumenti (Vitest, Pytest, SonarQube)],
)

*Passi operativi:*
+ Il Verificatore implementa i test di unità contestualmente alla codifica di ogni componente;
+ I test di integrazione vengono eseguiti a ogni merge in `develop`;
+ I test di sistema vengono eseguiti su scenari reali prima di ogni rilascio;
+ I risultati vengono tracciati nel Piano di Qualifica (Cruscotto di Valutazione);
+ Il superamento delle soglie di non conformità comporta l'apertura immediata di una segnalazione su Jira.

*Prodotti:* Suite di test versionata; report di esecuzione; aggiornamento del Cruscotto di Valutazione nel PdQ.

*Strumenti:* Vitest; Pytest; Postman; Playwright; Selenium; SonarQube.

*Criteri di conformità:*
- La Code Coverage (MPC13) non scende sotto la soglia definita nel PdQ;
- Il Test Success Rate (MPC14) è al 100% prima di ogni rilascio;
- Ogni unità è corredata dai relativi Unit Test.

===== Procedura PR-SVIL-07: Supporto all'Accettazione

*Obiettivo:* Fornire al proponente evidenza del soddisfacimento dei requisiti obbligatori e risolvere eventuali non conformità.

*Passi operativi:*
+ Il team prepara la documentazione di evidenza per i requisiti obbligatori (MPD01 = 100%);
+ Vengono eseguiti i test di accettazione in presenza del proponente o tramite evidenza documentata;
+ Le non conformità rilevate dal proponente vengono tracciate su Jira e risolte prima della consegna finale.

*Prodotti:* Report di accettazione; verbale della sessione di collaudo (se presente).

*Strumenti:* Jira; Postman; Playwright.

*Criteri di conformità:*
- Tutti i requisiti obbligatori sono coperti da evidenza di test;
- Le non conformità sono tracciate e risolte prima della consegna.

=== Evoluzione delle Norme verso l'MVP

Le norme qui definite costituiscono la baseline tecnica per la fase *RTB*.

*Nota Operativa:* Con l'avvio della fase *PB*, Skarab Group *ha l'obbligo* di integrare le presenti norme con: configurazioni di deployment, standard di sicurezza API/LLM e soglie di accoppiamento per librerie terze.

#pagebreak()

= Processi di Supporto
In conformità allo standard #underline[#link(<12207>)[ISO/IEC/IEEE 12207]], i Processi di Supporto comprendono le attività trasversali che accompagnano l'intero ciclo di vita del progetto, garantendo la qualità, la tracciabilità e la verificabilità degli artefatti prodotti.

#pagebreak()
== Processo di Documentazione

=== Attività SUPP-A01 — Gestione del Ciclo di Vita Documentale
==== Procedura PR-SUPP-01: Redazione e Approvazione
*Obiettivo:* Disciplinare le fasi di scrittura, controllo e rilascio ufficiale di ogni documento di progetto.

*Passi operativi:*
+ *Creare* o *modificare* il contenuto in formato sorgente (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#typst")[#def[Typst]]);
+ *Tracciare* obbligatoriamente l'attività di redazione tramite una #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#task")[#def[task]] assegnata su #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]];
+ *Sottoporre* il documento a verifica di conformità (ortografia, stile, contenuti, rispetto delle NdP) assegnando la task a un membro del team diverso dal redattore;
+ *Approvare* e validare il documento (da parte del #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#responsabile-di-progetto")[#def[Responsabile di Progetto]]) per procedere al rilascio ufficiale.

*Prodotti:* Documentazione ufficiale di progetto (copertina, registro modifiche, indice, header/footer con numerazione).

*Strumenti:*
#figure(
  table(
    columns: (auto, 1fr),
    inset: 8pt,
    fill: (x, y) => if y == 0 { luma(230) },
    [*Strumento*], [*Descrizione e Utilizzo Obbligatorio*],
    [#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#visual-studio-code")[#def[VS Code]]], [Editor principale per la scrittura dei documenti.],
    [#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#typst")[#def[Typst]]], [Linguaggio di markup per la formattazione. I template comuni sono centralizzati nella cartella `lib/`.],
    [#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#tinymist")[#def[Tinymist]]], [Estensione per VS Code per l'anteprima in tempo reale.],
  ),
  caption: [Strumenti di redazione documentale],
)

*Criteri di conformità:*
- Il documento possiede la struttura minima obbligatoria;
- Il Registro delle modifiche riporta i campi compilati e il corretto incremento di versione;
- La task di verifica su Jira risulta completata da un membro indipendente.

=== Attività SUPP-A02 — Controllo di Versione e Configurazione
==== Procedura PR-SUPP-02: Gestione Archivi e Versionamento
*Obiettivo:* Standardizzare le nomenclature, tracciare le modifiche in modo univoco e mantenere integra la repository.

*Passi operativi:*
+ *Applicare* il versionamento semantico (`x.y.z`) a ogni iterazione documentale (`x` per approvazione formale, `y` per modifiche sostanziali, `z` per modifiche minori);
+ *Aggiornare* il changelog all'interno del documento in concomitanza con ogni incremento di versione;
+ *Denominare* i file sorgente seguendo lo schema `SIGLA.typ` (es. `NdP.typ`) e *utilizzare* il formato data `AAAA/MM/GG`;
+ *Integrare* i file completati e verificati nel branch `develop` esclusivamente tramite Pull Request al termine di ogni Sprint.

*Prodotti:* Repository `DocumentazioneProgetto` strutturata e manutenuta; storico dei commit.

*Strumenti:* Git, GitHub.

*Criteri di conformità:*
- Versionamento semantico applicato senza salti incongruenti;
- Repository aderente alla struttura gerarchica definita (es. `lib/`, `RTB/`, `verbali/`).

#pagebreak()
== Processo di Qualifica

=== Attività SUPP-A03 — Verifica degli Artefatti
==== Procedura PR-SUPP-03: Esecuzione delle Verifiche <verifica>
*Obiettivo:* Intercettare e risolvere i difetti nel software e nella documentazione prima dell'integrazione nel branch principale.

*Passi operativi:*
+ *Aprire* una Pull Request su GitHub per ogni nuovo incremento di codice o aggiornamento documentale;
+ *Assegnare* la revisione obbligatoria della Pull Request a un Verificatore diverso dall'autore;
+ *Calcolare* l'indice di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#gulpease")[#def[Gulpease]] per i documenti utilizzando il tool preposto e *confrontarlo* con le metriche del PdQ;
+ *Eseguire* l'analisi statica sul codice applicando review manuali (Ispezione/Walkthrough) e strumenti di linting automatico;
+ *Eseguire* le suite di analisi dinamica (Test di Unità, Integrazione, Sistema e Regressione);
+ *Effettuare* il merge nel branch `main` solo a fronte del superamento di tutti i controlli qualitativi.

*Prodotti:* Codice sorgente e documenti verificati; Esiti di verifica documentati nel #link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/PdQ.pdf")[#underline[Piano di Qualifica]].

*Strumenti:* #link("https://farfalla-project.org/readability_static/")[#underline[farfalla-project.org]]; Linter (ESLint, Pylint/Black); Framework di testing.

*Criteri di conformità:*
- Test Success Rate pari al 100% prima del merge in `main`;
- Pull Request approvata esplicitamente da un verificatore indipendente su GitHub;
- Indici di leggibilità conformi alle soglie del PdQ.

=== Attività SUPP-A04 — Validazione del Sistema
==== Procedura PR-SUPP-04: Validazione e Accettazione
*Obiettivo:* Accertare la conformità del prodotto finale ai requisiti concordati con il proponente.

*Passi operativi:*
+ *Tracciare* ogni requisito derivato dall'#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")[*Analisi dei Requisiti*] fino alla sua implementazione nel sistema;
+ *Sviluppare* i Test di Accettazione (TA) basandoli su scenari d'uso reali;
+ *Eseguire* i Test di Accettazione e *verificare* il soddisfacimento dei criteri di successo oggettivi per ciascun requisito obbligatorio.

*Prodotti:* Matrice di tracciamento requisiti aggiornata; verbali di validazione e accettazione.

*Strumenti:* Sistema di issue tracking (Jira); Framework di automazione test.

*Criteri di conformità:*
- Copertura completa (100%) dei requisiti obbligatori implementati e tracciati;
- Superamento con successo di tutti i Test di Accettazione definiti.

#pagebreak()
= Processi Organizzativi
In conformità allo standard #underline[#link(<12207>)[ISO/IEC/IEEE 12207]], i Processi Organizzativi costituiscono l'insieme delle attività trasversali che garantiscono il corretto andamento del progetto dal punto di vista gestionale, infrastrutturale e della crescita professionale del team.

== Processo di Gestione dei Processi

=== Attività ORG-A01 — Pianificazione e Assegnazione
==== Procedura PR-ORG-01: Pianificazione Sprint e Gestione Task
*Obiettivo:* Allocare le risorse in modo efficiente ed equo, strutturando il lavoro in unità misurabili.

*Passi operativi:*
+ *Assegnare* i ruoli di progetto ai membri del team all'inizio di ogni Sprint, rispettando la rotazione ciclica e la matrice di responsabilità;
+ *Scomporre* le attività di progetto in task atomiche, prive di dipendenze bloccanti non esplicitate;
+ *Registrare* ogni task su Jira definendo obbligatoriamente: descrizione univoca, assegnatario, stima in ore, scadenza e Sprint di riferimento;
+ *Rendicontare* quotidianamente l'avanzamento su Jira aggiornando lo stato delle task e le ore effettivamente consumate.

*Prodotti:* Backlog di Sprint; Board Jira aggiornata.

*Strumenti:* #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#jira")[#def[Jira]].

*Criteri di conformità:*
- Assenza di task prive di stima oraria o assegnatario;
- Ore consuntivate aggiornate quotidianamente a sistema.

=== Attività ORG-A02 — Coordinamento Informativo
==== Procedura PR-ORG-02: Esecuzione delle Comunicazioni
*Obiettivo:* Garantire il corretto allineamento informativo tra i membri del team e verso gli stakeholder esterni.

*Passi operativi:*
+ *Condurre* riunioni periodiche sincrone su Discord per condividere l'avanzamento e intercettare eventuali criticità;
+ *Redigere* e archiviare un verbale interno a seguito di ogni riunione sincrona del team;
+ *Utilizzare* sistemi di messaggistica istantanea (WhatsApp/Telegram) esclusivamente per coordinamenti operativi rapidi e asincroni;
+ *Comunicare* con il proponente (Var Group) o i docenti unicamente tramite Email istituzionale;
+ *Redigere* un verbale esterno ufficiale a seguito di ogni incontro con gli stakeholder.

*Prodotti:* Verbali interni ed esterni archiviati nella repository.

*Strumenti:* Discord, WhatsApp/Telegram, Email.

*Criteri di conformità:*
- Presenza a repository di un verbale per ogni SAL (Stato Avanzamento Lavori) o riunione esterna effettuata.

== Processo di Infrastruttura

=== Attività ORG-A03 — Gestione Ambienti e Strumenti
==== Procedura PR-ORG-03: Configurazione e Manutenzione Repository
*Obiettivo:* Assicurare la continuità operativa fornendo ambienti di lavoro protetti e automatizzati.

*Passi operativi:*
+ *Configurare* e manutenere il toolkit tecnologico (Git, GitHub, Google Calendar, GitHub Actions);
+ *Applicare* le regole di protezione dei branch su GitHub, impedendo l'esecuzione di commit diretti sui branch `main` e `develop`;
+ *Applicare* la nomenclatura standardizzata per la creazione di nuovi branch (`feature/nome`, `fix/nome`, `[ACRONIMO-DOC]`);
+ *Mantenere* funzionanti gli script di automazione CI/CD per la generazione documentale e l'aggiornamento del sito web.

*Prodotti:* Infrastruttura IT di progetto operativa; repository protetta.

*Strumenti:* Git, GitHub, GitHub Actions.

*Criteri di conformità:*
- Nessun commit effettuato direttamente nei branch protetti;
- Pipeline di automazione passanti (green) sui branch principali.

== Processo di Miglioramento

=== Attività ORG-A04 — Monitoraggio e Retrospettiva
==== Procedura PR-ORG-04: Esecuzione Retrospettiva di Sprint
*Obiettivo:* Applicare il ciclo PDCA (Plan-Do-Check-Act) per individuare le inefficienze metodologiche e incrementare la qualità del lavoro.

*Passi operativi (Da eseguire al termine di ogni Sprint):*
+ *Raccogliere* i valori delle metriche misurate e *confrontarli* con le soglie accettabili definite nel PdQ;
+ *Analizzare* collettivamente le inefficienze operative riscontrate durante lo Sprint appena concluso;
+ *Definire* specifiche azioni correttive e *registrarle* su Jira con assegnatario e scadenza precise;
+ *Aggiornare* la documentazione di governo (NdP o PdQ) nel caso in cui le azioni correttive richiedano una modifica permanente dei processi.

*Prodotti:* Issue di azioni correttive su Jira; Documenti di governo aggiornati.

*Strumenti:* Jira, cruscotto delle metriche di progetto.

*Criteri di conformità:*
- Presenza su Jira delle issue relative alle azioni di miglioramento concordate;
- Metric report elaborato per lo Sprint in esame.

== Processo di Formazione

=== Attività ORG-A05 — Sviluppo Competenze
==== Procedura PR-ORG-05: Pianificazione Formativa
*Obiettivo:* Garantire l'acquisizione delle competenze tecnologiche (TypeScript, React, NestJS, AI, MongoDB, AWS) senza generare costi per il committente.

*Passi operativi:*
+ *Pianificare* sessioni di studio e approfondimento tecnologico nelle fasi di progetto a minor carico operativo;
+ *Escludere* tassativamente le ore dedicate all'auto-formazione individuale dal rendiconto delle ore produttive di progetto;
+ *Partecipare* alle sessioni formative e di supporto fornite dall'azienda proponente (*Var Group*).

*Prodotti:* Dimostrazioni pratiche (PoC) funzionanti; team operativo sul tech-stack.

*Strumenti:* Documentazione ufficiale dei framework, materiale Var Group.

*Criteri di conformità:*
- Nessuna ora rendicontata a sistema risulta imputabile a studio autonomo o formazione.