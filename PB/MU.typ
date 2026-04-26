#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *

#let versione = "v1.0.0"
#set heading(numbering: "1.1.1")
#show heading: set text(fill: black)
#show image: it => box(radius: 8pt, clip: true, it)

#titlePage("Manuale Utente", versione)
#set page(numbering: "1", header: header("Manuale Utente"), footer: footer())
#let history = (
  (
    "2026/04/25",
    "1.0.0",
    "Revisione per PB",
    "",
    members.andrea
  ),
  (
    "2026/04/23",
    "0.4.0",
    "Rielaborazione documento e pubblicazione sito",
    members.suar,
    members.andrea
  ),
  (
    "2026/04/23",
    "0.3.1",
    "Fix alla sezione di Risoluzione problemi",
    members.antonio,
    members.suar
  ),
  (
    "2026/04/22",
    "0.3.0",
    "Aggiornata introduzione e Guida, aggiunta sezione Risoluzione problemi",
    members.antonio,
    members.suar
  ),
  (
    "2026/04/19",
    "0.2.0",
    "Aggiunta sezione Gestione Repository, Analisi ed Esportazione",
    members.martinello,
    members.antonio
  ),
  (
    "2026/04/16",
    "0.1.0",
    "Prima stesura del documento",
    members.alice,
    members.antonio
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

= Introduzione
Il presente documento descrive il #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#manuale-utente")[#def("Manuale Utente")] relativo al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def("Code Guardian")], commissionato dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def("Var Group")] e realizzato dal gruppo di studenti #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def("Skarab Group")] nell’ambito del corso di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def("Ingegneria del Software")] presso l’Università degli Studi di Padova.

_CodeGuardian_ è un'innovativa piattaforma ad #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] finalizzata all’#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e alla #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] automatizzata delle vulnerabilità presenti nei #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#repository")[#def[repository]] di codice sorgente.

La piattaforma supporta attività di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-statica")[#def("analisi statica")] del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]), integrati nel workflow degli agenti per formulare e validare le correzioni.

== Finalità del Documento
Il presente documento ha lo scopo di guidare l'utilizzatore finale nell'impiego corretto e completo del sistema *Code Guardian*, illustrandone i flussi operativi, descrivendo dettagliatamente le interfacce grafiche e le funzionalità della dashboard utente.

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link: \
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario (v2.0.0)]].

== Versioni del Manuale
Per garantire la massima fruibilità, il presente *Manuale Utente* è consultabile in due formati perfettamente allineati a livello contenutistico:
- *Documento PDF:* Ottimizzato per la stampa, la lettura sequenziale e l'archiviazione documentale formale (la versione corrente).
- *Formato Web (HTML):* Integrato direttamente nel sito ufficiale di progetto, progettato per una rapida consultazione interattiva. \ #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/manuale_utente.html")[Link al Manuale Utente (v1.0.0)]]

== Riferimenti 
=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione della Specifica Tecnica:

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *22/04/2026*)

#pagebreak()
= Requisiti di Browser e di Sistema
Per garantire il corretto funzionamento e l'esperienza utente ottimale, si consiglia di utilizzare la piattaforma *CodeGuardian* su dispositivi che soddisfino i seguenti requisiti minimi di sistema e compatibilità del browser:
- *Sistemi Operativi:* Windows 10/11, macOS 14+, distribuzioni Linux (Ubuntu 22.04+);
- *Browser Web:* Google Chrome 120+, Mozilla Firefox 120+, Apple Safari 17+.

#pagebreak()

= Guida

== Schermata Iniziale
La piattaforma *CodeGuardian* si presenta con un'intuitiva schermata iniziale, dalla quale è possibile l'accesso diretto ai moduli di registrazione e autenticazione per iniziare ad ispezionare i propri repository.

#figure(
  image("../assets/manuale_utente/schermata_iniziale.png", width: 90%),
  caption: [Schermata Iniziale della Piattaforma],
)

== Autenticazione e Gestione Account
Per poter accedere agli strumenti di monitoraggio e ai report di _CodeGuardian_ è necessario possedere un'identità verificata all'interno del sistema; ciò consente di mantenere protette le associazioni con i propri #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#uniform-resource-locator")[#def[URL]] repository e l'eventuale tracciamento privato.

=== Registrazione
La creazione di un nuovo #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#utente")[#def[utente]] avviene tramite l'apposita schermata di registrazione, raggiungibile direttamente dalla pagina iniziale.

Per effettuare la registrazione è necessario:
1. Compilare il campo *Username*: deve essere un identificativo univoco (tra i 4 e i 20 caratteri) contenente esclusivamente lettere e numeri, senza spazi.
2. Inserire un indirizzo *Email* valido nel formato standard.
3. Scegliere una *Password* sicura. A tutela dell'account, la password deve contenere minimo 8 caratteri ed includere obbligatoriamente almeno una lettera maiuscola, una minuscola, un numero e un carattere speciale. Per motivi di sicurezza addizionali, la password *non può* mai contenere al suo interno la stringa dello username.
4. *Confermare* la password re-inserendola nell'ultimo campo e selezionare il pulsante _Crea Account_.

Inizierà la fase di approvazione; in caso di successo, un messaggio di notifica riporterà l'avvenuta creazione e l'utente verrà reindirizzato ed automaticamente autenticato alla dashboard principale.

#figure(
  image("../assets/manuale_utente/registrazione.png", width: 80%),
  caption: [Schermata di Registrazione Profilo],
)

=== Accesso (Login)
Gli utenti precedentemente iscritti o coloro a cui è temporaneamente scaduta la sessione di navigazione possono ricollegarsi tramite la schermata di *Accesso*.

Fornendo l'indirizzo _Email_ e la _Password_ associata, la piattaforma autorizza istantaneamente l'accesso sbloccando i privilegi utente. In caso di errore o credenziali errate, il sistema restituirà l'avviso di *"Credenziali non valide"*.

#figure(
  image("../assets/manuale_utente/login.png", width: 80%),
  caption: [Schermata di Accesso],
)

=== Uscita dal sistema (Logout)
Per terminare in totale sicurezza la sessione attiva, l'utente può usufruire del pulsante testuale *Esci*, situato nel menù di navigazione laterale in corrispondenza del riquadro contenente i propri dati di profilo (Username ed Email formattati).

Questa azione comporta la chiusura definitiva della sessione di lavoro, garantendo la protezione del profilo. Per accedere nuovamente alle funzionalità del sistema, sarà necessario effettuare un nuovo _Accesso_ (Login).

#figure(
  image("../assets/manuale_utente/logout.png", width: 60%),
  caption: [Schermata di Disconessione],
)

=== Impostazioni
L'area impostazioni costituisce il pannello di controllo della gestione dell'Account.

+ *Cambio Password*:
Una procedura pratica per aggiornare la password di accesso. Per procedere è necessario compilare nell'ordine i campi previsti dalla schermata: digitare inizialmente _La tua password attuale_, inserire la sequenza desiderata in _La nuova password_ e confermarla un'ultima volta in _Conferma la nuova password_, rispettando sempre i pattern di sicurezza in vigore.

#figure(
  image("../assets/manuale_utente/cambio_password.png", width: 80%),
  caption: [Impostazioni: Cambio Password],
)

+ *Eliminazione Profilo*:
Un'operazione irreversibile concepita per tutelare la privacy. Prima di poter eseguire l'eliminazione, per motivazioni di sicurezza è tassativamente richiesto di compilare il campo vuoto digitando _La tua password_ per confermare la propria identità. Cliccando infine sul pulsante rosso _Elimina account definitivamente_, l'utente provvede a rimuovere in modo definitivo e permanente il profilo dal sistema _CodeGuardian_, venendo immediatamente revocato da qualsiasi diritto d'accesso.

#figure(
  image("../assets/manuale_utente/eliminazione.png", width: 80%),
  caption: [Impostazioni: Eliminazione Definitiva Profilo],
)

#pagebreak()

== Funzionalità della Piattaforma

Una volta effettuato l'accesso, l'utente ha a disposizione un menù di navigazione laterale che suddivide l'applicativo nelle seguenti sezioni principali: *Repository*, *Storico*, *Classifica* e *Impostazioni*.

#figure(
  image("../assets/manuale_utente/sidebar.png", width: 40%),
  caption: [Menù di navigazione laterale (Sidebar)],
) 

=== Repository (Dashboard Principale)
La sezione Repository costituisce la dashboard principale da cui gestire i propri progetti.

#figure(
  image("../assets/manuale_utente/dashboard_principale.png", width: 100%),
  caption: [Dashboard Principale: Lista dei Repository],
)

- *Aggiunta e Rimozione:* È possibile visualizzare la lista dei repository importati. Per aggiungerne uno nuovo da ispezionare, è sufficiente inserirne l'URL GitHub. È possibile anche rimuovere i repository non più necessari tramite l'apposito pulsante.

#figure(
  image("../assets/manuale_utente/aggiunta_o_rimozione.png", width: 70%),
  caption: [Aggiunta di un nuovo Repository],
)

- *Repository già inserito:* Se si tenta di aggiungere un repository già presente, il sistema restituirà un messaggio di errore indicando che il repository è già stato importato.

#figure(
  image("../assets/manuale_utente/repository_gia_inserito.png", width: 60%),
  caption: [Repository già inserito],
)

- *Esecuzione Analisi:* Cliccando su uno specifico repository, si accede alla sua *Pagina di Dettaglio*. Da qui, l'utente può avviare l'ispezione automatica cliccando sul pulsante dedicato. L'interfaccia aggiornerà dinamicamente lo stato dell'analisi (avvio, in corso, completamento) fornendo un chiaro feedback visivo senza complicati caricamenti.

#figure(
  image("../assets/manuale_utente/avvio_analisi.png", width: 70%),
  caption: [Pagina di Dettaglio: Avvio Analisi in corso],
)

- *Configurazione del PAT:* Per l'analisi di repository privati, è richiesto l'inserimento di un Personal Access Token (PAT). Il token va configurato nella sezione dedicata delle impostazioni, dove viene associato al repository e protetto da una password. Quest'ultima dovrà essere inserita dall'utente ad ogni avvio dell'analisi al posto del token: questo doppio livello di autenticazione garantisce la massima sicurezza nell'accesso ai dati sensibili.

#figure(
  image("../assets/manuale_utente/inserimento_pat.png", width: 80%),
  caption: [Inserimento PAT per repository privati],
)

- *Risultato ed Esportazione:* Al termine, il report viene presentato a schermo suddiviso per metriche di qualità, scorecard generali e lista accurata delle vulnerabilità. Per ogni scansione sono previste funzionalità di esportazione dirette scaricando il referto formattato in *PDF* oppure sotto forma di *JSON* strutturato.

#figure(
  image("../assets/manuale_utente/risultato_analisi.png", width: 90%),
  caption: [Pagina di Dettaglio: Risultato Analisi e metriche],
)

#figure(
  image("../assets/manuale_utente/esportazione.png", width: 40%),
  caption: [Esportazione: dettaglio],
)

=== Storico Analisi
La schermata *Storico* raccoglie la traccia di tutte le scansioni ed ispezioni del codice precedentemente eseguite sulla piattaforma, relative all'utente attivo.
- L'interfaccia fornisce una visuale strutturata che mostra la data, il repository analizzato e l'esito per ciascuna richiesta pregressa.
- Attraverso i controlli messi a disposizione dall'interfaccia (es. intervalli di date d'interesse), l'utente può filtrare l'elenco e cercare rapidamente report di analisi storiche o valutare l'andamento del codice nel tempo.

#figure(
  image("../assets/manuale_utente/storico_analisi.png", width: 100%),
  caption: [Schermata Storico delle Analisi],
)

=== Classifica (Ranking)
Questa prospettiva gestionale fornisce una panoramica focalizzata sugli scenari architetturali dei progetti caricati in CodeGuardian. #linebreak()
L'applicativo genera in tempo reale una *Classifica* di tutti i repository associati all'utente: vengono elencati gerarchicamente tenendo conto dello "Score di Qualità" generale derivante dai più recenti audit, permettendo in modo istantaneo di confrontare i progetti più robusti e quelli che richiedono maggiore attenzione.

#figure(
  image("../assets/manuale_utente/classifica_analisi.png", width: 100%),
  caption: [Schermata Classifica Repository (Ranking)],
)

#pagebreak()

= Risoluzione problemi
Questa breve sezione descrive il giusto comportamento da seguire per affrontare alcuni problemi che potrebbero verificarsi durante l'utilizzo della piattaforma CodeGuardian.

== Analisi bloccata o annullata 
=== Il repository che sta venendo analizzato ha dimensione superiore a 1GB
- *Soluzione:* Verificare che la dimensione del codice sorgente non sia superiore a tale soglia limite.

=== All'invio dell'analisi non è stata inserita la password per repository privati
- *Soluzione:* Controllare l'accessibilità del repository; nel caso fosse privato, configurare il token di accesso al repository e inserire la password associata all'avvio di una nuova analisi.

== Impossibile aggiungere un nuovo repository
=== L'URL inserito non è formattato correttamente o non è raggiungibile
- *Soluzione:* Assicurarsi di copiare l'URL completo e corretto direttamente dalla piattaforma GitHub (es. `https://github.com/utente/nome-repo`). Verificare inoltre che non vi siano spazi vuoti accidentali all'inizio o alla fine del testo inserito.

=== Il repository è già stato inserito precedentemente
- *Soluzione:* Verificare nella lista della Dashboard Principale che il progetto non sia già presente tra quelli monitorati, in quanto il sistema non ammette duplicati.

== Errore durante la registrazione del profilo
=== L'indirizzo email inserito non è valido o risulta già in uso
- *Soluzione:* Controllare che l'email rispetti il formato standard (es. `nome@dominio.com`). Se il sistema segnala che l'email è già associata a un account, tornare alla pagina iniziale e procedere tramite la schermata di Accesso (Login).

== Password dell'account dimenticata
=== L'utente ha smarrito le credenziali di accesso
- *Soluzione:* Nel caso si fosse dimenticata la password non è possibile recuperarla in alcun modo per via delle stringenti policy di sicurezza, quindi è necessario creare un nuovo account.

== Esportazione del report non disponibile
=== I pulsanti di download (PDF/JSON) non rispondono
- *Soluzione:* L'esportazione è disponibile solo ad ispezione conclusa. Assicurarsi di attendere che il feedback visivo dell'analisi passi allo stato di "Completato" prima di tentare il download dei referti.

== Disconnessione improvvisa
=== La sessione attiva è scaduta
- *Soluzione:* Per tutelare i dati e i token, la piattaforma disconnette automaticamente l'utente dopo un periodo prolungato di inattività. È sufficiente effettuare nuovamente il Login per ripristinare i privilegi di accesso.