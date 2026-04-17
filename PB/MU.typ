#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *

#let versione = "v0.1.0"
#set heading(numbering: "1.1.1")

/*
=== FUNZIONAMENTO DEL DOCUMENTO ===
1. Inserire le immagini nella cartella assets/manuale_utente
*/

#titlePage("Manuale Utente", versione)
#set page(numbering: "1", header: header("Manuale Utente"), footer: footer())
#let history = (
  (
    "2026/04/16",
    "0.1.0",
    "Prima stesura del documento",
    members.alice,
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

= Introduzione

== Scopo del Documento
Il presente documento ha lo scopo di guidare l'utilizzatore finale nell'impiego corretto e completo del sistema *CodeGuardian*, realizzato da _Skarab Group_ e proposto dall'azienda *Var Group*, illustrandone i flussi operativi, le interfacce grafiche e le modalità di configurazione del proprio profilo.

== Scopo del Prodotto
_CodeGuardian_ è un'innovativa piattaforma ad agenti finalizzata all’#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e alla #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] automatizzata delle vulnerabilità presenti nei repository di codice sorgente.

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

#pagebreak()

= Guida

== Schermata Iniziale
La piattaforma *CodeGuardian* si presenta con un'intuitiva schermata iniziale, dalla quale è possibile l'accesso diretto ai moduli di registrazione e autenticazione per iniziare ad ispezionare i propri repository.

#figure(
  image("../assets/manuale_utente/schermata_iniziale.png", width: 90%),
  caption: [Schermata Iniziale della Piattaforma],
)


== Autenticazione e Gestione Account

Per poter accedere agli strumenti di monitoraggio e ai report di _CodeGuardian_ è necessario possedere un'identità verificata all'interno del sistema; ciò consente di mantenere protette le associazioni con i propri URL repository e l'eventuale tracciamento privato.

=== Registrazione

#figure(
  image("../assets/manuale_utente/registrazione.png", width: 90%),
  caption: [Schermata di Registrazione Profilo],
)

La creazione di un nuovo utente avviene tramite l'apposita schermata di registrazione, raggiungibile direttamente dalla pagina iniziale.

Per effettuare la registrazione è necessario:
1. Compilare il campo *Username*: deve essere un identificativo univoco (tra i 4 e i 20 caratteri) contenente esclusivamente lettere e numeri, senza spazi.

2. Inserire un indirizzo *Email* valido nel formato standard.

3. Scegliere una *Password* sicura. A tutela dell'account, la password deve contenere minimo 8 caratteri ed includere obbligatoriamente almeno una lettera maiuscola, una minuscola, un numero e un carattere speciale. Per motivi di sicurezza addizionali, la password *non può* mai contenere al suo interno la stringa dello username.

4. *Confermare* la password re-inserendola nell'ultimo campo e selezionare il pulsante _Crea Account_.

Inizierà la fase di approvazione; in caso di successo, un messaggio di notifica riporterà l'avvenuta creazione e l'utente verrà reindirizzato ed automaticamente autenticato alla dashboard principale.

=== Accesso (Login)

#figure(
  image("../assets/manuale_utente/login.png", width: 90%),
  caption: [Schermata di Accesso],
)

Gli utenti precedentemente iscritti o coloro a cui è temporaneamente scaduta la sessione di navigazione possono ricollegarsi tramite la schermata di *Accesso*.
Fornendo l'indirizzo _Email_ e la _Password_ associata, la piattaforma autorizza istantaneamente l'accesso sbloccando i privilegi utente. In caso di errore o credenziali errate, il sistema restituirà l'avviso di *"Credenziali non valide"*.

=== Uscita dal sistema (Logout)
Per terminare in totale sicurezza la sessione attiva, l'utente può usufruire del pulsante testuale *Esci*, situato nel menù di navigazione laterale in corrispondenza del riquadro contenente i propri dati di profilo (Username ed Email formattati).
Questa azione comporta la chiusura definitiva della sessione di lavoro, garantendo la protezione del profilo. Per accedere nuovamente alle funzionalità del sistema, sarà necessario effettuare un nuovo _Accesso_ (Login).

=== Impostazioni
L'area impostazioni costituisce il pannello di controllo della gestione dell'Account.

+ *Cambio Password*:

#figure(
  image("../assets/manuale_utente/cambio_password.png", width: 80%),
  caption: [Impostazioni: Cambio Password],
)

Una procedura pratica per aggiornare la password di accesso. Per procedere è necessario compilare nell'ordine i campi previsti dalla schermata: digitare inizialmente _La tua password attuale_, inserire la sequenza desiderata in _La nuova password_ e confermarla un'ultima volta in _Conferma la nuova password_, rispettando sempre i pattern di sicurezza in vigore.

+ *Eliminazione Profilo*:

#figure(
  image("../assets/manuale_utente/eliminazione.png", width: 80%),
  caption: [Impostazioni: Eliminazione Definitiva Profilo],
)

Un'operazione irreversibile concepita per tutelare la privacy. Prima di poter eseguire l'eliminazione, per motivazioni di sicurezza è tassativamente richiesto di compilare il campo vuoto digitando _La tua password_ per confermare la propria identità. Cliccando infine sul pulsante rosso _Elimina account definitivamente_, l'utente provvede a rimuovere in modo definitivo e permanente il profilo dal sistema _CodeGuardian_, venendo immediatamente revocato da qualsiasi diritto d'accesso.


