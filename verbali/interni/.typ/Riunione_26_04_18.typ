#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-04-18",
      "0.1.0",
      "Prima stesura del documento",
      members.martinello,
      members.suar
    ),
  ),

  presenti: (
    [#members.suar,
      #members.alice,
      #members.antonio,
      #members.andrea,
      #members.martinello #v(0.3cm)]
  ),

  assenze: [#members.kevin,
  #members.berengan
  ],

  [
    = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Stato di avanzamento microservizio Account (Backend)"
    #let punto2 = "Stato di avanzamento microservizio Analisi"
    #let punto3 = "Aggiornamento documenti PdQ, PdP e NdP"
    #let punto4 = "Stato di avanzamento Frontend"
    + #punto1.
    + #punto2.
    + #punto3.
    + #punto4.

    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:00"
    #let dataRiunione = "18 Aprile"
    #let orarioFineRiunione = "11:30"
    #let presidenteRiunione = members.martinello

    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "Per quanto riguarda il microservizio dell'account, la parte di codifica è stata completata interamente. Relativamente alla Specifica Tecnica, è stata ultimata la descrizione dei pattern, delle classi e dell'introduzione, mentre deve essere aggiunta l'architettura. Per il Manuale Utente, sono state definite le prime funzionalità, testate tramite procedure con relative immagini a supporto, mentre per il PdQ restano alcune cose da ultimare e andrà rivista la documentazione prodotta fino ad ora.",
      decisione: "Ultimazione della sezione di architettura in ST, completamento del PdQ per la parte backend e verifica complessiva di quanto redatto.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Lo sviluppo degli agenti per il microservizio di analisi è a buon punto: due su tre sono completati, mentre l'agente di sicurezza è in fase finale di sviluppo. Gli endpoint sono attualmente in fase di revisione e si stanno aggiungendo gli ultimi necessari. Riguardo la documentazione, nella Specifica Tecnica mancano ancora i design pattern e risulta necessario arricchire le sezioni sull'architettura logica e di deployment. Infine, la sezione del Manuale Utente per questo microservizio deve ancora essere completata in toto.",
      decisione: "Terminare lo sviluppo dell'agente di sicurezza, completare la sezione architettura, design pattern in ST e sviluppare interamente le sezioni del Manuale Utente mancanti.",
    )

    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Riguardo i documenti di progetto: nel PdQ manca la descrizione del testing del microservizio di analisi, mentre nel PdP la situazione di avanzamento non è stata ancora descritta. Il documento di NdP necessita solo di una rilettura finale ma è considerato pronto.",
      decisione: "Procedere alla rilettura del NdP, stesura e aggiornamento del PdP per riflettere lo stato attuale e completare il testing d'analisi all'interno del PdQ.",
    )

    === Punto 4: #punto4
    #puntoOdg(
      punto4,
      "Si è discusso dello stato di avanzamento del frontend. Esso è stato integrato con successo con il servizio di autenticazione del microservizio account, ma manca ancora da fare l'integrazione con il microservizio di analisi.",
      decisione: "Continuare lo sviluppo e procedere all'integrazione del frontend con il microservizio di analisi.",
    )

    = Azioni e responsabilità
    #task_table((
      ("Sviluppo agente di sicurezza ed endpoint", "Programmatore", "4:00"),
      ("Stesura sezione architettura e pattern in ST", "Progettista", "6:00"),
      ("Stesura Manuale Utente (microservizio analisi)", "Progettista", "5:00"),
      ("Integrazione frontend con microservizio analisi", "Programmatore", "4:00"),
      ("Verifica testing in PdQ e avanzamento PdP", "Responsabile", "4:00"),
      ("Rilettura finale NdP", "Verificatore", "2:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
)
