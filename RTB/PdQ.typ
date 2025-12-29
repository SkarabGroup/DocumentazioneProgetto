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
== Test di Accettazione
== Test di Unità

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
