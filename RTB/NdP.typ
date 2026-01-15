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

#titlePage("Norme di Progetto", versione)
#set page(numbering: "1", header: header("Norme di Progetto"), footer: footer())

#let history = (
  (
    "2026/01/15",
    "0.3.0",
    "Aggiunta prima versione sezione documenti",
    members.kevin,
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

== Glossario e Riferimenti
I termini tecnici o ambigui sono definiti nel glossario di progetto (`RTB/glossario.yml`).
Nel testo, i termini importanti possono essere evidenziati utilizzando la macro `#def`, questo permette di rendere la parola un link al glossario presente nel sito del progetto.

I riferimenti normativi includono:
- Regolamento del progetto didattico.
- Standard ISO/IEC 12207 per i processi del ciclo di vita del software.
 -Ultimo accesso: 2026/01/02.

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

== Documentazione del Progetto
In questa sezione si elencano tutti i documenti che #def("Skarab Group") produrrà durante il ciclo di vita del progetto #def("Code Guardian").

=== AdR - Analisi dei Requisiti
Documento che raccoglie e specifica i requisiti funzionali e non funzionali del sistema software da sviluppare, basato sul capitolato fornito dal #def("Proponente"). Questo documento contiene:
- Introduzione al progetto e obiettivi.
- Lista degli attori coinvolti.
- Lista dei casi d'uso.
- Lista dei requisiti derivanti dai casi d'uso, classificati in obbligatori, desiderabili e opzionali.

=== Glossario
Documento che definisce i termini tecnici e specifici utilizzati nel progetto, per garantire una comprensione comune tra tutti i membri del team e gli stakeholder esterni. questo documento serve a fornire definizioni chiare e univoche per evitare ambiguità. Oltre che il documento in sé per s'é, il glossario é consultabile tramite una pagina nel sito web di Skarab Group. Questo permette interattivitá e link esterni all'interno di ogni documento che compone la documentazione di progetto. Per convenzione, un termine sará un link al glossario sul sito solo la prima volta che compare all'interno di un documento, assumento una lettura ordinata del documento stesso da parte del lettore.

=== NdP - Norme di Progetto
Documento che definisce il #def("WoW"),le norme, le convenzioni, gli strumenti e i processi che i membri del gruppo devono seguire durante il ciclo di vita del progetto.

=== PdP - Piano di Progetto
Documento che descrive l'organizzazione del lavoro, le risorse, il modello di ciclo di vita adottato, la pianificazione delle attività divise per #def("sprint") e la valutazione dei rischi associati al progetto. Inoltre, il PdP riporta attivamenre il monitoraggio del lavoro di ogni componente del gruppo, con l'obiettivo di garantire il rispetto delle tempistiche e le ore di lavoro previste per i vari ruoli.

=== PdQ - Piano di Qualifica
Documento che definisce le strategie, le metodologie e le attività di #def("verifica") e #def("validazione") per garantire che i prodotti del progetto soddisfino i requisiti specificati. Include la definizione delle metriche di qualità, i piani di test e le procedure di controllo qualità.

=== Verbali delle Riunioni
Sono documenti che riportano in modo sintetico e chiaro i punti discussi durante le riunioni, con le decisioni prese e i compiti assegnati. Ogni verbale include:
- Data, ora e luogo della riunione.
- Elenco dei partecipanti.
- Ordine del giorno.
- Sintesi delle discussioni.
- Decisioni prese e azioni da intraprendere.

I verbali possono essere di 2 tipi:
- *Verbali Interni*: Riunioni tra i membri del gruppo per coordinare le attività di progetto.
- *Verbali Esterni*: Riunioni con il #def("Proponente") esterni per discutere requisiti, progressi e feedback.


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
    [Proponente],
    [Esterno],

    [AdR – Analisi dei Requisiti],
    [Analisti],
    [Proponente, Committente, Team],
    [Esterno],

    [Glossario],
    [Tutti i membri del gruppo],
    [Stakeholder interni ed esterni],
    [Esterno],

    [NdP – Norme di Progetto],
    [Responsabili di processo],
    [Team di sviluppo],
    [Interno],

    [PdP – Piano di Progetto],
    [Project Manager],
    [Proponente, Team di sviluppo],
    [Esterno],

    [PdQ – Piano di Qualifica],
    [Responsabili Qualità],
    [Team di sviluppo, Proponente],
    [Esterno],

    [Verbali delle Riunioni],
    [Segretario della riunione],
    [Team, Proponente (se esterni)],
    [Interno / Esterno],
  ),
  caption: [Tabella riepilogativa dei documenti di progetto],
)



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

=== Documentazione fornita

== Processo di Sviluppo

=== Analisi dei Requisiti
Attività volta a comprendere e documentare le necessità degli stakeholder.
- *#def("Casi d'uso")*: Descrizione funzionale delle interazioni attore-sistema (formato tabellare con pre/post condizioni).
- *Classificazione Requisiti*: #def("Requisiti funzionali"), #def("Requisiti non funzionali"), Obbligatori, Desiderabili, Opzionali.

=== Progettazione
Definizione dell'architettura logica e tecnica del sistema.
- *#def("UML")*: Utilizzo di diagrammi di classi, sequenza e attività per modellare il sistema.
- *#def("Design Pattern")*: Adozione di pattern noti (es. MVC, Singleton, Factory) dove applicabile per risolvere problemi ricorrenti.

=== Codifica
Implementazione del software seguendo le norme di codifica definite (vedi Sezione "Norme di Sviluppo").

= Processi di Supporto

== Documentazione
Il ciclo di vita dei documenti prevede:
1. *Creazione/Modifica*: Redazione o aggiornamento del contenuto in formato source (#def("Typst")).
2. *Verifica*: Controllo di conformità (ortografia, stile, contenuti) da parte di un membro diverso dal redattore.
3. *Approvazione*: Validazione finale per il rilascio.

La documentazione è redatta in #def("Typst") per garantire consistenza tipografica e facilità di versione.

== Gestione della Configurazione
Utilizzo di *#def("Git")* come sistema di controllo versione.

=== Branching Strategy
- `main`: Ramo stabile, contenente le versioni rilasciate o pronte al rilascio.
- `develop`: Ramo di integrazione principale.
- `feature/nome-feature`: Rami per lo sviluppo di nuove funzionalità.
- `fix/nome-fix`: Rami per la correzione di bug.

Inoltre si utilizzano branch diversi per la redazione dei diversi documenti, in modo che un gruppo assegnato ad un documento possa lavorarci senza interferire con il lavoro degli altri.

=== Conventional Commits
I messaggi di commit devono seguire il formato:
`tipo(ambito): descrizione breve`
Tipi ammessi: `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore`.

== Verifica e Qualità
La verifica ha l'obiettivo di accertare che i prodotti soddisfino i requisiti.

=== Metriche
Il gruppo adotta un sistema di metriche per monitorare processi e prodotti.

#figure(
  table(
    columns: (3cm, 8cm, 4cm),
    align: left + horizon,
    stroke: 0.5pt,
    fill: (_, y) => if y == 0 { rgb("#f0f0f0") },
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

=== Strategie di Verifica
- *Analisi Statica*: Review manuale del codice e uso di #def("linter") (#def("ESLint") per JS/TS, Pylint/Black per #def("Python")).
- *Analisi Dinamica*: Esecuzione della suite di test.
- *Test*:
  - *Unit Test*: Verifica di singole unità di codice.
  - *Integration Test*: Verifica delle interazioni tra moduli.
  - *System Test*: Verifica del sistema completo rispetto ai requisiti.

=== Software Quality Assurance #def("SQA")
La #def("SQA") monitora tutti i processi per garantire conformità agli standard (es. #def("ISO 9001"), #def("ISO 25010")). Include:
- *Politiche*: Definizione di procedure per ogni fase (requisiti, design, testing).
- *Audit*: Revisioni periodiche per identificare non conformità.
- *Attività*: Review di documenti, controllo qualità codice, #def("Gestione Rischi").

=== Validazione
La validazione conferma che il prodotto soddisfi le esigenze degli utenti.
- *#def("Test di Accettazione")*: Verifica finale con stakeholder per requisiti non funzionali (es. usabilità, prestazioni).
- *Feedback Utente*: Raccolta di input durante demo o beta testing.
- *Allineamento Obiettivi*: Verifica rispetto agli obiettivi di progetto (es. automazione analisi qualità repository).

= Processi Organizzativi

== Gestione dei Processi
Il #def("Responsabile di Progetto") monitora l'avanzamento dei lavori e assegna i task.
Strumenti di coordinamento: #def("Jira"), #def("Slack"), #def("Telegram"), #def("Discord").

=== Ruoli di Progetto
- *#def("Responsabile di Progetto")*: Coordinamento generale e gestione stakeholder.
- *#def("Amministratore")*: Gestione configurazione, documentazione e repository.
- *#def("Analista")*: Analisi requisiti e modellazione sistema (casi d'uso, UML).
- *#def("Progettista")*: Architettura e design tecnico.
- *#def("Programmatore")*: Implementazione e sviluppo codice.
- *#def("Verificatore")*: Controllo qualità, testing e verifica conformità.

=== Approcci di Gestione Progetto (#def("PMI"))
- *#def("Predictive")*: Pianificazione dettagliata per requisiti stabili (sequenziale, con milestone fisse).
- *#def("Adaptive")*: Iterativo per requisiti incerti (es. Agile/Scrum, adatto a sviluppo incrementale).
- *#def("Hybrid")*: Combinazione di entrambi, bilanciando flessibilità e struttura.

=== #def("Gestione Rischi")
Identificazione, valutazione e mitigazione rischi (es. tecnologici, di schedule). Aggiornamenti periodici durante riunioni.

== Gestione delle Riunioni
Per ogni riunione (interna o con esterni) viene redatto un *Verbale* che riporta:
- Data, ora, luogo e partecipanti.
- Ordine del giorno.
- Riassunto delle discussioni.
- Decisioni prese e task assegnati.

= Norme di Sviluppo

== Convenzioni Generali
- Utilizzare l'inglese per commenti, nomi di variabili e funzioni nel codice sorgente.
- Utilizzare l'italiano per la documentazione destinata agli utenti o capitolato (se richiesto).

== #def("TypeScript") / JavaScript (Frontend & Script)
- Stile: `camelCase` per variabili/funzioni, `PascalCase` per Classi/Componenti.
- Indentazione: 2 spazi.
- Utilizzare `const` e `let`, evitare `var`.
- Componenti #def("React"): Funzionali con Hooks.

== #def("Python") (Backend/AI Agents)
- Stile: Standard PEP 8.
- `snake_case` per variabili e funzioni.
- `PascalCase` per le Classi.
- Docstrings per documentare moduli, classi e funzioni.

== #def("Typst") (Documentazione)
- Utilizzare la sintassi standard per headings e liste.
- Mantenere i file sorgente organizzati per capitoli o sezioni se il documento è esteso.


== #def("Node.js") / JavaScript (Scripting/Backend)
- *Naming*: `camelCase` per variabili e funzioni, `PascalCase` per classi e componenti.
- *Indentazione*: 2 spazi.
- *Variabili*: Utilizzare `const` e `let`, evitare `var`.
- *Linting*: #def("ESLint") per controllo qualità codice; seguire regole standard (es. no-unused-vars, eqeqeq).
- *Documentazione*: #def("JSDoc") per moduli e funzioni (`@param`, `@returns`).
- *Esempio*:
  ```javascript
  /**
   * Analizza un repository GitHub.
   * @param {string} repoUrl - URL del repository.
   * @returns {Promise<Object>} Risultati dell'analisi.
   */
  async function analyzeRepository(repoUrl) {
      // Implementazione
  }
  ```

= Strumenti Utilizzati
- *Redazione*: #def("Visual Studio Code"), #def("Typst").
- *Gestione Versioni*: #def("Git"), #def("GitHub").
- *Comunicazione*: #def("Slack"), #def("Telegram"), #def("Discord").
- *Diagrammi*: Draw.io.
- *Project Management*: #def("Jira").