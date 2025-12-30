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

#titlePage("Piano di Qualifica", versione)
#set page(numbering: "1", header: header("Piano di Qualifica"), footer: footer())
#let history = (
  (
    "2025/12/28",
    "0.3.0",
    "Processi secondari e processi organizzativi con tabelle soglie metriche, iniziata sezione automiglioramento e qualità di prodotto",
    members.alice,
  ),
  (
    "2025/12/27",
    "0.2.0",
    "Qualità di processo, processi primari",
    members.alice,
  ),
  (
    "2025/12/26",
    "0.1.0",
    "Inizio stesura documento, introduzione, scopo e riferimenti",
    members.alice,
  ),
  (
    "2025/12/23",
    "0.0.0",
    "Creazione documento",
    members.alice,
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

#indiceTabelle()

#pagebreak()

= Introduzione

== Scopo del documento
Il presente documento ha l'obiettivo di definire e formalizzare le strategie di gestione della #def("qualità") per il progetto _Code Guardian_. Esso descrive come il team intende monitorare l'intero #def("ciclo di vita del software"), assicurando che ogni fase sia misurabile, migliorabile e soddisfi pienamente i requisiti richiesti dall'azienda.

Il #def("Piano di Qualifica") integra meccanismi di misurazione oggettiva, controllo di conformità ai requisiti del capitolato e protocolli di miglioramento continuo per assicurare l'eccellenza.

Esso, quindi, comprende tre elementi fondamentali:
1. *Piano della Qualità:*
  - Definisce gli obiettivi qualitativi per la piattaforma multiagente.
  - Stabilisce gli standard di riferimento.
  - Delinea le strategie per raggiungere l'eccellenza.

2. *Controllo di Qualità:*
  - Implementa meccanismi di misurazione oggettivi.
  - Verifica la conformità ai requisiti del capitolato.
  - Monitora le prestazioni attraverso metriche predefinite.

3. *Miglioramento continuo:*
  - Analizza periodicamente i risultati degli sprint.
  - Identifica opportunità di ottimizzazione.
  - Adatta processi e obiettivi.

L'approccio metodologico adottato configura la qualità come un processo dinamico di apprendimento, miglioramento e ottimizzazione continua, in linea con il _Way of Working_.

== Riferimenti
=== Riferimenti normativi
- *Way of Working v1.2:* \ #underline[https://github.com/SkarabGroup/DocumentazioneProgetto/blob/main/candidatura/WoW_Skarab_Group.pdf] \ *Ultimo Accesso:*

- *Capitolato d'appalto C2: Piattaforma ad agenti per l’audit e la remediation dei repository GitHub:* \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf] \ *Ultimo Accesso:*
=== Riferimenti informativi
- *Glossario.* \ *Ultimo Accesso:*

- *Standard ISO/IEC 9126 - Qualità del prodotto software:* \ #underline[https://it.wikipedia.org/wiki/ISO/IEC_9126] \ *Ultimo Accesso:*
- *Standard ISO/IEC 12207:1995 - Processi del ciclo di vita del software:* \ #underline[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf] \ *Ultimo Accesso:*

#pagebreak()

= Qualità di processo
La qualità di processo è fondamentale per assicurare che il _Way of Working_ sia sostenibile e tracciabile nel tempo. Si tratta di un'esigenza primaria per garantire il successo del progetto _Code Guardian_.

Pertanto, il progetto si avvale di:
- *Modelli di riferimento:* Capability Maturity Model Integration (#def("CMMI")) e ISO/IEC 12207.
- *Metriche di processo:* Strumenti per valutare l'efficienza e le prestazioni dei processi.
- *Revisioni periodiche:* Sessioni di verifica bisettimanali che analizzano i risultati ottenuti rispetto agli obiettivi stabiliti.

== Processi Primari
I Processi Primari sono le attività fondamentali e dirette che guidano il ciclo di vita del software. Essi sono essenziali perché gestiscono l'intero percorso del prodotto software, dalla sua nascita alla sua vita operativa.
=== Fornitura
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1.5fr, 2fr, 1.2fr, 1.7fr),
    inset: 10pt,
    table.header([*Metrica di Processo*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),

    [*MP01*], [Earned Value (EV)],
    // Rappresenta il valore del lavoro effettivamente realizzato in una determinata data. Si calcola moltiplicando la percentuale di completamento delle attività per il budget totale.
    [$>= 0$], [$<= E A C$], [*MP02*], [Planned Value (PV)],
    // È il valore del lavoro che si era pianificato di completare entro una certa data. Indica quanto avremmo dovuto spendere secondo il piano iniziale.
    [$>= 0$], [$<= B A C$], [*MP03*], [Actual Cost (AC)],
    // Indica i costi reali sostenuti per il lavoro svolto fino a quel momento.
    [$>= 0$], [$<= E A C$], [*MP04*], [Cost Performance Index (CPI)],
    // È il rapporto tra valore guadagnato e costi reali ($CPI = EV / AC$).
    [$>= 0$], [1], [*MP05*], [Schedule Performance Index (SPI)],
    // È il rapporto tra valore guadagnato e valore pianificato ($SPI = EV / PV$).
    [$>= 0$], [1], [*MP06*], [Estimate At Completion (EAC)],
    // È la stima del costo totale finale del progetto basata sulle performance attuali.
    [$>= 0$], [$<= B A C$], [*MP07*], [Estimate To Complete (ETC)],
    // Indica quanto denaro aggiuntivo è necessario per terminare il progetto da oggi.
    [$>= 0$], [$<= B A C$], [*MP08*], [Time Estimate At Completion (TEAC)],
    // È la stima del tempo totale che sarà necessario per completare il progetto.
    [$>= 0$], [$<= "Durata pianificata"$],
  ),
  caption: [Soglie metriche per il processo di Fornitura],
)

=== Sviluppo
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1.5fr, 2.5fr, 1.2fr, 1.7fr),
    inset: 10pt,
    table.header([*Metrica di Processo*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),

    [*MP09*], [Requirements Stability Index], [$>= 70%$], [100%],
  ),
  caption: [Soglie metriche per il processo di Sviluppo],
)

== Processi di Supporto
I Processi di Supporto sono attività che assistono altri processi per garantire la qualità e l'integrità del prodotto software.
=== Documentazione
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1.5fr, 2.5fr, 1.2fr, 1.7fr),
    inset: 10pt,
    table.header([*Metrica di Processo*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),

    [*MP10*], [Gulpease Index], [$>= 60%$], [$>= 80%$],
    // Utilizzato per garantire che i documenti prodotti dal gruppo siano chiari e comprensibili per chiunque debba leggerli.
    [*MP11*], [Correttezza Ortografica], [0 errori], [0 errori],
  ),
  caption: [Soglie metriche per il processo di Documentazione],
)

=== Verifica
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1.5fr, 2.5fr, 1.2fr, 1.7fr),
    inset: 10pt,
    table.header([*Metrica di Processo*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),

    [*MP12*], [Code Coverage], [$>= 70%$], [$>= 90%$],
    [*MP13*], [Test Success Rate], [100%], [100%],
  ),
  caption: [Soglie metriche per il processo di Verifica],
)

=== Gestione della Qualità
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1.5fr, 2.5fr, 1.2fr, 1.7fr),
    inset: 10pt,
    table.header([*Metrica di Processo*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),

    [*MP14*], [Quality metrics satisfied], [$>= 80%$], [100%],
    // Serve a misurare l'efficacia complessiva del sistema di gestione della qualità del progetto.
  ),
  caption: [Soglie metriche per la Gestione della Qualità],
)

== Processi Organizzativi
I Processi organizzativi sono quell'insieme di attività che servono a creare, gestire e migliorare l'infrastruttura e le risorse umane necessarie affinché i processi primari e di supporto possano funzionare correttamente.

=== Gestione dei Processi
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (1.5fr, 2.5fr, 1.2fr, 1.7fr),
    inset: 10pt,
    table.header([*Metrica di Processo*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),

    [*MP15*], [Time Efficiency], [$>= 60%$], [100%],
    [*MP16*], [Sprint Goal Achievement], [$>= 80%$], [100%],
  ),
  caption: [Soglie metriche per la Gestione dei Processi],
)

#pagebreak()

= Qualità di prodotto
La qualità di prodotto è la misura in cui un software soddisfa i requisiti dichiarati e impliciti degli utenti e dei committenti.

Un prodotto software di alta qualità è caratterizzato da alcuni aspetti fondamentali (stabiliti nella prima parte dello standard _ISO/IEC 9126_):
- *Funzionalità*, ovvero la capacità di un prodotto software di fornire funzioni che soddisfano esigenze stabilite. In particolare, rispetta i requisiti funzionali e non funzionali definiti nel documento di *Analisi dei Requisiti*.
- *Affidabilità*, ovvero mantiene uno specifico livello di prestazioni ed evitando che si verifichino errori.
- *Efficienza*, in quanto capace di fornire adeguati tempi di risposta ed elaborazione.
- *Usabilità*, dato che può essere capito, appreso e usato dall'utente finale.
- *Manutenibilità*, ossia la capacità del software di essere modificato, includendo correzioni, miglioramenti o adattamenti senza che ne venga compromessa la stabilità.

#pagebreak()

= Metodi di Testing
== Test di Sistema
Di seguito viene riportata la tabella che definisce i test di sistema (TS) necessari per validare il comportamento descritto nei casi d'uso.

#figure(
  table(
    columns: (auto, 3fr, 1fr, 1fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    align: (col, row) => (center, left, center, center).at(col) + horizon,
    
    table.header(
      [*ID Test*], [*Descrizione*], [*Tipo*], [*UC Riferimento*]
    ),

    fill: (col, row) => if row == 0 {
      luma(230)
    } else if calc.odd(row) {
      luma(250)
    } else {
      white
    },

    //GRUPPO UC1: REGISTRAZIONE
    [TS-1.0], [Verifica procedura di registrazione completa con dati validi (Happy Path).], [Funzionale], [#link(<UC1>)[UC1]],
    
    [TS-1.1], [Verifica validazione formato Nome: rifiuto di numeri e caratteri speciali non ammessi.], [Validazione], [#link(<UC1.1.1>)[UC1.1.1]],
    
    [TS-1.2], [Verifica validazione formato Cognome: rifiuto di numeri e caratteri speciali non ammessi.], [Validazione], [#link(<UC1.2.1>)[UC1.2.1]],
    
    [TS-1.3], [Verifica unicità Username: tentativo di registrazione con username già esistente nel DB.], [Sicurezza], [#link(<UC1.3.2>)[UC1.3.2]],
    
    [TS-1.4], [Verifica validazione formato Username: lunghezza e caratteri non ammessi.], [Validazione], [#link(<UC1.3.1>)[UC1.3.1]],
    
    [TS-1.5], [Verifica unicità Email: tentativo di registrazione con email già presente nel DB.], [Sicurezza], [#link(<UC1.4.2>)[UC1.4.2]],
    
    [TS-1.6], [Verifica validazione formato Email: sintassi non valida (es. no @).], [Validazione], [#link(<UC1.4.1>)[UC1.4.1]],
    
    [TS-1.7], [Verifica complessità Password: mancato rispetto dei criteri di sicurezza (lunghezza, maiuscole, simboli).], [Sicurezza], [#link(<UC1.5.1>)[UC1.5.1]],

    //GRUPPO UC2: AUTENTICAZIONE 
    [TS-2.0], [Verifica login con credenziali corrette (Happy Path).], [Funzionale], [#link(<UC2>)[UC2]],
    
    [TS-2.1], [Verifica gestione errore per Username non esistente (Messaggio generico).], [Sicurezza], [#link(<UC2.1.2>)[UC2.1.2]],
    
    [TS-2.2], [Verifica gestione errore per Password errata (Messaggio generico).], [Sicurezza], [#link(<UC2.2.2>)[UC2.2.2]],
    
    [TS-2.3], [Verifica validazione formato input in fase di login (Username/Password malformati).], [Validazione], [#link(<UC2.1.1>)[UC2.1.1], #link(<UC2.2.1>)[UC2.2.1]],

    //GRUPPO UC3: COLLEGAMENTO GITHUB
    [TS-3.0], [Verifica flusso completo OAuth con GitHub (Redirect e ritorno con codice valido).], [Integrazione], [#link(<UC3>)[UC3], #link(<UC3.2>)[UC3.2]],
    
    [TS-3.1], [Verifica rifiuto collegamento da parte dell'utente (Annullamento su GitHub).], [Funzionale], [#link(<UC3.1.1>)[UC3.1.1]],
    
    [TS-3.2], [Verifica gestione errore ricezione codice mancante da GitHub.], [Integrazione], [#link(<UC3.2.1>)[UC3.2.1]],
    
    [TS-3.3], [Verifica gestione errore codice GitHub già associato ad altro utente.], [Sicurezza], [#link(<UC3.2.2>)[UC3.2.2]],

    //GRUPPO UC4: RICHIESTA ANALISI
    [TS-4.0], [Verifica invio richiesta analisi con URL valido e opzioni selezionate (Happy Path).], [Funzionale], [#link(<UC4>)[UC4]],
    
    [TS-4.1], [Verifica validazione URL Repository: formato non valido.], [Validazione], [#link(<UC4.1.1>)[UC4.1.1]],
    
    [TS-4.2], [Verifica accessibilità Repository: URL privato o inesistente (Simulazione risposta GitHub API).], [Integrazione], [#link(<UC4.1.2>)[UC4.1.2]],
    
    [TS-4.3], [Verifica obbligatorietà selezione aree di interesse (Codice/Documentazione).], [Validazione], [#link(<UC4.2.1>)[UC4.2.1]],
    
    [TS-4.4], [Verifica blocco analisi per report già "Up-to-date" (Hash commit invariato).], [Ottimizzazione], [#link(<UC4.3.1>)[UC4.3.1]],
    
    [TS-4.5], [Verifica blocco analisi concorrente (Analisi già in corso sulla stessa repo).], [Stato], [#link(<UC4.3.2>)[UC4.3.2]],

    //GRUPPO UC5 - UC12: VISUALIZZAZIONE REPORT
    [TS-5.0], [Verifica visualizzazione lista report e apertura dashboard di dettaglio.], [Funzionale], [#link(<UC5>)[UC5]],
    
    [TS-5.1], [Verifica gestione caso "Nessun report disponibile" per una repo.], [Funzionale], [#link(<UC5.2.1>)[UC5.2.1]],
    
    [TS-6.0], [Verifica filtro temporale sui report passati (Intervallo valido).], [Funzionale], [#link(<UC6>)[UC6]],
    
    [TS-6.1], [Verifica errore filtro temporale: intervallo incoerente (Start > End) o troppo ampio.], [Validazione], [#link(<UC6.2.2>)[UC6.2.2], #link(<UC6.2.3>)[UC6.2.3]],
    
    [TS-6.2], [Verifica messaggio "Nessun report nel periodo selezionato".], [Funzionale], [#link(<UC6.2.1>)[UC6.2.1]],
    
    [TS-7.0], [Verifica rendering grafico comparativo (Presenza dati e coerenza visiva).], [UI/UX], [#link(<UC7>)[UC7]],
    
    [TS-8.0], [Verifica rendering tabella comparativa (Corrispondenza dati con il grafico).], [UI/UX], [#link(<UC8>)[UC8]],

    //DETTAGLI ANALISI (AGENTI)
    [TS-9.0], [Verifica presenza e contenuto sezioni Analisi Codice (Statica, Dipendenze, OWASP).], [Contenuto], [#link(<UC9>)[UC9]],
    
    [TS-9.1], [Verifica conteggio vulnerabilità totali (Deve corrispondere alla somma delle vulnerabilità rilevate).], [Logica], [#link(<UC9.4>)[UC9.4]],
    
    [TS-10.0], [Verifica presenza e contenuto sezioni Analisi Documentazione (Spelling, Completezza vs Codice).], [Contenuto], [#link(<UC10>)[UC10]],
    
    [TS-12.0], [Verifica coerenza Metadati Report (Data, Commit ID, Richiedente).], [Integrazione], [#link(<UC12>)[UC12]],
  ),
  caption: [Tabella dei Test di Sistema],
)
#pagebreak()
== Test di Unità
In questa sezione sono definiti i test di unità volti a verificare il corretto funzionamento delle singole componenti software (funzioni di validazione, calcoli, parser) in isolamento.

#figure(
  table(
    columns: (auto, auto, 3fr, 2fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    align: (col, row) => (center, center, left, left).at(col) + horizon,
    
    table.header([*ID*], [*Rif. UC*], [*Descrizione del Test*], [*Risultato Atteso*]),

    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.gcd(row, 2) == 1 {
      luma(230) 
    } else {
      white  
    },

    // UC1: REGISTRAZIONE 
    [TU-1.1], [#link(<UC1.1>)], [Verifica funzione di normalizzazione nome: input con spazi iniziali e finali.], [La stringa restituita non presenta spazi esterni (trim).],
    [TU-1.2], [#link(<UC1.1.1>)], [Verifica validatore Nome: input contenente caratteri numerici.], [La funzione restituisce `false` e l'errore specifico.],
    [TU-1.3], [#link(<UC1.1.1>)], [Verifica validatore Nome: input contenente simboli speciali non ammessi.], [La funzione restituisce `false`.],
    [TU-1.4], [#link(<UC1.3.1>)], [Verifica validatore Username: lunghezza inferiore al minimo consentito (4 caratteri).], [La funzione restituisce `false`.],
    [TU-1.5], [#link(<UC1.4.1>)], [Verifica validatore Email: formato sintattico errato (assenza di '@' o dominio).], [La funzione restituisce `false`.],
    [TU-1.6], [#link(<UC1.5.1>)], [Verifica validatore Password: assenza di carattere maiuscolo o numero.], [La funzione restituisce `false` indicando il criterio mancante.],

    // UC2: AUTENTICAZIONE
    [TU-2.1], [#link(<UC2.1.1>)], [Verifica sanitizzazione input Username in fase di login (protezione Injection).], [Eventuali caratteri di escape pericolosi vengono rimossi.],
    [TU-2.2], [#link(<UC2.2.1>)], [Verifica gestione input vuoti su campi obbligatori.], [La validazione blocca la richiesta prima dell'invio al server.],

    // UC3: GITHUB 
    [TU-3.1], [#link(<UC3.2.3>)], [Verifica parser codice OAuth: gestione stringa vuota o null.], [Il metodo solleva un'eccezione gestita senza effettuare chiamate esterne.],

    // UC4: ANALISI 
    [TU-4.1], [#link(<UC4.1.1>)], [Verifica validatore URL: input non appartenente al dominio github.com.], [La funzione restituisce errore "Dominio non supportato".],
    [TU-4.2], [#link(<UC4.1.1>)], [Verifica validatore URL: formato malformato o incompleto.], [La funzione segnala l'URL come non valido.],
    [TU-4.3], [#link(<UC4.3.1>)], [Verifica logica "Up-to-date": confronto hash commit identici.], [La funzione restituisce `true` (report aggiornato).],
    [TU-4.4], [#link(<UC4.3.1>)], [Verifica logica "Up-to-date": confronto hash commit differenti.], [La funzione restituisce `false` (necessaria nuova analisi).],

    // UC5-12: REPORTING 
    [TU-6.1], [#link(<UC6.2.2>)], [Verifica validatore intervallo date: Data Inizio successiva a Data Fine.], [La funzione restituisce errore di incoerenza temporale.],
    [TU-9.1], [#link(<UC9.4>)], [Verifica calcolo totale vulnerabilità: somma corretta dei parziali per categoria.], [Il valore restituito corrisponde alla somma aritmetica delle issue.],
    [TU-10.1], [#link(<UC10.2>)], [Verifica calcolo percentuale coverage documentazione.], [Il calcolo restituisce il valore corretto arrotondato a due decimali.],
    [TU-12.1], [#link(<UC12.1>)], [Verifica formattazione data report: conversione timestamp in formato locale.], [La data viene renderizzata nel formato "DD/MM/YYYY HH:mm".],
  ),
  caption: [Tabella dei Test di Unità],
)

#pagebreak()
== Test di Accettazione
In questa sezione sono definiti i test di accettazione, volti a validare il sistema rispetto ai requisiti utente e agli scenari d'uso reali, inclusa la verifica della qualità dell'analisi AI.

#figure(
  table(
    columns: (auto, auto, 3fr, 2fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    align: (col, row) => (center, center, left, left).at(col) + horizon,
    
    table.header([*ID*], [*Rif. UC*], [*Scenario di Verifica*], [*Criterio di Accettazione*]),

    fill: (col, row) => if row == 0 {
      luma(62.75%)
    } else if calc.gcd(row, 2) == 1 {
      luma(230)
    } else {
      white
    },

    // REGISTRAZIONE & LOGIN 
    [TA-1.0], [#link(<UC1>)], [Utente completa la registrazione con dati validi.], [L'account viene creato, l'email di conferma inviata e l'utente reindirizzato al login.],
    [TA-1.1], [#link(<UC1.1.1>)], [Utente tenta la registrazione con caratteri non ammessi nel nome.], [Il sistema mostra un errore visuale e disabilita il tasto di conferma.],
    [TA-2.0], [#link(<UC2>)], [Utente effettua il login con credenziali corrette.], [L'utente accede alla dashboard e il token di sessione viene generato.],
    [TA-2.1], [#link(<UC2.2.2>)], [Utente tenta il login con password errata.], [Il sistema nega l'accesso mostrando un messaggio di errore generico.],

    // GITHUB LINKING 
    [TA-3.0], [#link(<UC3>)], [Utente collega con successo l'account GitHub.], [La dashboard mostra lo stato "Collegato" e l'avatar dell'utente GitHub.],
    [TA-3.1], [#link(<UC3.1.1>)], [Utente rifiuta il collegamento durante il redirect.], [L'operazione viene annullata e il sistema mostra un messaggio informativo.],

    // ANALISI (CORE) 
    [TA-4.0], [#link(<UC4>)], [Utente richiede analisi di una repository pubblica valida.], [L'analisi si avvia, mostrando lo stato di avanzamento/spinner.],
    [TA-4.1], [#link(<UC4.1.2>)], [Utente inserisce URL di una repository privata non accessibile.], [Il sistema termina immediatamente segnalando l'errore di accesso.],
    [TA-4.2], [#link(<UC4.3.1>)], [Utente richiede analisi su repo già analizzata senza modifiche.], [Il sistema notifica che il report è già aggiornato senza avviare l'analisi.],

    // REPORT & AI QUALITY 
    [TA-5.0], [#link(<UC5>)], [Utente visualizza il report finale.], [Tutte le sezioni (grafici, tabelle) sono popolate e leggibili.],
    [TA-9.0], [#link(<UC9>)], [Verifica qualità AI: Rilevamento vulnerabilità nota (es. SQL Injection).], [Il report OWASP segnala correttamente la vulnerabilità presente nel codice di test.],
    [TA-10.0], [#link(<UC10>)], [Verifica qualità AI: Rilevamento assenza documentazione.], [L'agente segnala correttamente la bassa coverage su file privi di commenti.],
    [TA-10.1], [#link(<UC10.1>)], [Verifica correzione spelling documentazione.], [Gli errori di battitura presenti nei commenti vengono identificati e listati.],

    // STORICO & CONFRONTO 
    [TA-6.0], [#link(<UC6>)], [Utente filtra i report per un intervallo temporale specifico.], [La lista e i grafici mostrano solo i dati compresi nell'intervallo selezionato.],
    [TA-7.0], [#link(<UC7>)], [Visualizzazione grafico comparativo tra analisi diverse.], [Il grafico mostra l'evoluzione temporale delle metriche di qualità.],
    [TA-12.0], [#link(<UC12>)], [Verifica correttezza metadati (Data, Commit, Autore).], [I dati visualizzati corrispondono esattamente all'ultimo commit su GitHub.],
  ),
  caption: [Tabella dei Test di Accettazione],
)

#pagebreak()

= Cruscotto di Valutazione

#pagebreak()

= Automiglioramento
== Introduzione
Il miglioramento continuo risulta fondamentale per garantire la qualità del progetto _Code Guardian_. Seguendo il _Way of Working_, il team effettua retrospettive bisettimanali per identificare i probemi principali e implementare delle soluzioni.
Di seguito, vengono elencate le difficoltà individuate e le decisioni prese per risolverle.

== Valutazione organizzazione del team
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 3fr),
    inset: 10pt,
    table.header([*Problema*], [*Decisione presa*]),

    [Difficoltà nel mantenere la coerenza stilistica dei documenti.], [Utilizzo di template condivisi in Typst.],
    [Difficoltà nel monitorare l'avanzamento dei task.],
    [Integrazione della piattaforma Jira per la gestione del progetto.],
  ),
  caption: [Decisioni prese per migliorare l'organizzazione del team],
)

== Valutazione ruoli
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr, 4fr),
    inset: 10pt,
    table.header([*Ruolo*], [*Problema*], [*Decisione presa*]),

    [Verificatore],
    [La modifica dei documenti senza una preventiva fase di verifica non è conforme agli standard progettuali stabiliti dal team.],
    [Viene attuato il principio della doppia verifica. Il verificatore è tenuto ad aggiornare la tabella presente nel documento ad ogni modifica.],
  ),
  caption: [Decisioni prese per migliorare la gestione dei ruoli],
)

== Valutazione strumenti utilizzati
#figure(
  table(
    fill: (x, y) => if (y == 0) {
      luma(63.75%)
    } else if (calc.gcd(y, 2) == 2) {
      luma(220)
    },
    columns: (3fr, 4fr, 4fr),
    inset: 10pt,
    table.header([*Strumento*], [*Problema*], [*Decisione presa*]),

    [Typst],
    [Non tutti i membri del team hanno familiarità con questa tecnologia.],
    [Ogni membro del gruppo ha effettuato uno studio autonomo per garantire uniformità nella stesura dei documenti.],
  ),
  caption: [Decisioni prese per l'ottimizzazione degli strumenti di lavoro],
)

= Conclusioni
Consideriamo il miglioramento continuo come un'attività strutturale per la garanzia di qualità del progetto _Code Guardian_. Le soluzioni applicate alle difficoltà riscontrate hanno permesso di affinare i flussi di lavoro, elevando il livello di efficienza del gruppo. Mantenendo una visione orientata al problem-solving, il team si dedica a un monitoraggio costante per prevenire criticità e ottimizzare le risorse impiegate nel ciclo di vita del software.
