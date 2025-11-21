#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "New Computer Modern", size: 12pt, lang: "it")
#set par(leading: 0.65em, justify: true)


#let titoloDocumento = "Analisi AWS"
#let dataDocumento = "2025-11-20"
#let emailGruppo = "skarabswegroup@gmail.com"
#let redattoreDocumento = "Basso Kevin"

// Title page
#page(header: none, numbering: none)[
  #align(center)[
    #v(1fr)
    #image("skarablogo_.jpg", width: 40%)
    #v(1cm)
    #text(size: 28pt, weight: "bold")[Skarab Group]
    #v(0.5cm)
    #line(length: 80%, stroke: 0.5pt)
    #v(0.5cm)
    #text(size: 18pt, weight: "bold")[#titoloDocumento]
    #v(0.5cm)
    #line(length: 80%, stroke: 0.5pt)
    #v(1fr)
    #emailGruppo
    #v(1fr)
  ]
  
]

#set page(
  header: [
    #grid(
      columns: (1fr,2fr),
      align: (left, right),
      [#titoloDocumento],[*Skarab Group - Anno accademico 2025/2026*]
    )
    #line(length: 100%, stroke: 0.5pt)
  ],
  footer: [
    #line(length: 100%, stroke: 0.5pt)
    #v(0.3em)
    #align(center)[#context {counter(page).display()}]
  ]
)


// Sezione Versionamento
#align(center)[
  #text(size: 16pt, weight: "bold")[Versionamento e changelog]
]

#v(1em)

#align(center)[
  #table(
    columns: (3cm, 3cm, 3.0cm, 3cm, 3cm),
    align: center + horizon,
    stroke: 0.5pt,
    fill: (_, y) => if y == 0 { rgb("#d0d0d0") },
    [*Data \ Modifica*], [*Versione*], [*Descrizione Modifica*], [*Redattore*], [*Verificatore*],
    [2025-11-21],[1.0.1],[Fix formato data],[Basso Kevin],[/],   [#dataDocumento], [1.0.0], [Creazione \ documento], [#redattoreDocumento], [/]
  )
]

#pagebreak()

// Indice
#outline(
  title: [Indice],
  depth: 3,
  indent: auto
)
#pagebreak()
= Cos'è AWS
Amazon Web Services (#strong[AWS]) è una piattaforma di servizi di cloud computing offerta da Amazon, che fornisce una vasta gamma di risorse scalabili e on-demand, tra cui elaborazione, archiviazione, database, reti, analisi dei dati e intelligenza artificiale. AWS permette alle organizzazioni di distribuire applicazioni e servizi senza dover gestire infrastrutture fisiche, riducendo i costi operativi e aumentando la flessibilità. Grazie al modello pay-as-you-go, le aziende possono adattare dinamicamente le risorse alle proprie esigenze, garantendo alta disponibilità, sicurezza e scalabilità a livello globale.

= Profili IAM
In AWS, #strong[IAM] (Identity and Access Management) è il servizio che permette di gestire utenti, gruppi e permessi per controllare l’accesso alle risorse. Un profilo #strong[IAM] è un’entità associata a un ruolo o a un utente che definisce quali azioni possono essere eseguite su quali risorse. I profili #strong[IAM] consentono di applicare il principio del least privilege, garantendo che ogni utente o servizio abbia solo i permessi strettamente necessari per svolgere le proprie funzioni, aumentando la sicurezza e il controllo dell’ambiente cloud. Un profilo #strong[IAM] collega un ruolo AWS alle varie rissorse, dove un ruolo è un'entità di AWS che definisce insieme di permessi da applicare a utenti, servizi o applicazioni.

== Gestione di un profilo
I vari profili #strong[IAM] vengono creati tramite la console AWS. Una volta creato il profilo, le credenziali vanno inserite in file di configurazione locali come ~/.aws/credentials (AWS #strong[CLI] (Command Line Interface)) o veriabili d'ambiente. Ovviamente, essendo credenziali, i file di configurazione vanno inseriti nel .gitignore nel caso di un progetto GitHub come Code Guardian.
L'utilizzo delle credenziali può essere monitorato tramite #strong[AWS CloudTrail].
#pagebreak()

= Servizi offerti utili al progetto Code Guardian
== Storage
=== Amazon S3
Utile per conservare i repository già scaricati, log dell valutazioni e report dei risultati, inoltre permette una scalabilità e durata praticamente illimitata.
=== Amazon DynamoDB
Database NoSQL ottimo per salvare i risultati di valutazioni, metriche e metadati
=== Amazon RDS
Database SQL, utile per queri complesse sui risultati
== Execution
=== AWS Lambda
Servizio di serverless computing, utile per evitare di gestire server fissi come con EC2, scalabilità automatica
=== AWS Fargate / ECS
Gestore di containers docker serverless, utile per fornire ai vari agenti ambieenti isolati complessi
=== Amazon SQS (Simple Queue Service)
Servizio che permette la gestione FIFO di messaggi e task tra servizi o istanze diverse
== Monitoraggio e audit
=== CloudWatch
Servizio per il monitoraggio delle risorse come memoria CPU, log etc.. e applicazioni di un account AWS, utile per comprendere le performances e ottimizzare le risorse
=== CluodTrial
Servizio di audit e logging di un account AWS
== Bedrock
Servizio indispensabile per l'utilizzo di AI generativa tramite AWS, offre un grande numero di modelli, come default usa Claude (ultima versione). Utilizzabile tramite AWS Strand, una libreria open source create da Amazon per la creazione di agenti AI.


=== BedRock AgentCore
Ambiente di serverless computing studiato appositamente per agenti AI, funziona a virtual machines con sessioni isolate fino a 8 ore; gestisce sia la short-time memory dell'agente durante la sessione che una long-time-memory come le preferenze utente, inoltre permette di gestire le funzioni tramite server MCP

#pagebreak()

== Bedrock AgentCore VS AWS Lambda

#align(center)[
  #table(
    columns: (4cm, 6cm, 6cm,),
    align: center + horizon,
    stroke: 0.5pt,
    fill: (_, y) => if y == 0 { rgb("#d0d0d0") },
    [*Funzione*],[*AgentCore*],[*Lambda*],
    [*Scopo*],[Gestire agenti AI, stati, \ memoria e workflow],[Eseguire codice in risposta ad eventi come S3 e DynamoDB in modo scalabile],
    [*Durata  \ esecuzione*],[Fino ad 8 ore],[Fino a 15 minuti],
    [*Stato*],[mantiente il contesto per tutta la sessione],[Stateless, ogni invocazione è indipendente]
  )
]
= Recap
- Pipeline serverless automaticamente scalabile traminte Lambda, BedRock AgentCore S3, DynamoDB e SQS
- Distinzioni tra ambienti diversi con Fargate e ECS
- Monitoraggio e audit tramite CloudTrail

= Fonti

#link("https://docs.aws.amazon.com/it_it/", "Documentazione ufficiale AWS") 
#linebreak()
#link("https://www.youtube.com/watch?v=usFIb9aEd1U")[Amazon Bedrock AgentCore] #linebreak()
#link("https://youtu.be/XrX7rb6M3jw")[AWS SQS] #linebreak()
#link("https://www.youtube.com/watch?v=JIbIYCM48to")[Lista di servizi AWS] #linebreak()
#link("https://www.youtube.com/watch?v=N7FGbBq1mI4")[AgentCore]






