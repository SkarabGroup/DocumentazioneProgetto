#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-04-18",
      "1.0.0",
      "Stesura verbale",
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
    #let punto3 = "Aggiornamento documenti PdQ, PdP, NdP e ST"
    #let punto4 = "Stato di avanzamento Frontend"
    #let punto5 = "Verifica PDCA: Allocazione Oraria e Scadenze (AM02)"
    + #punto1.
    + #punto2.
    + #punto3.
    + #punto4.
    + #punto5.

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
      decisione: "Si è deciso di procedere con l'ultimazione della sezione di architettura in ST e il completamento del PdQ per la parte backend. Contestualmente, si darà priorità alla conclusione del Manuale Utente per le parti già consolidate del sistema.",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Lo sviluppo degli agenti per il microservizio di analisi è a buon punto: due su tre sono completati, mentre l'agente di sicurezza è in fase finale di sviluppo. Gli endpoint sono attualmente in fase di revisione e si stanno aggiungendo gli ultimi necessari. Riguardo la documentazione, nella Specifica Tecnica mancano ancora i design pattern e risulta necessario arricchire le sezioni sull'architettura logica e di deployment. Infine, la sezione del Manuale Utente per questo microservizio deve ancora essere completata in toto.",
      decisione: "Terminare lo sviluppo dell'agente di sicurezza e dei relativi endpoint. È stata inoltre approvata la stesura delle ultime sezioni architetturali in ST e l'allineamento dei pattern di risposta degli agenti con le entità di dominio, procedendo infine con le configurazioni per il deploy su AWS.",
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

    === Punto 5: #punto5
    #puntoOdg(
      punto5,
      "Valutazione conclusiva dell'Azione di Auto-Miglioramento AM02 (Rimodulazione budget orario) avviata in precedenza.\n- Riscontro (Check): L'analisi delle metriche di Cost Variance (CV) e Schedule Variance (SV) riportate nel PdP dimostra che la ridistribuzione delle ore ha garantito il completamento tempestivo dei microservizi core (Account e Agenti), consentendo al team di rientrare nelle soglie di tolleranza attese per la chiusura della PB.",
      decisione: "(Act) La strategia flessibile di allocazione temporale si è rivelata determinante per sventare i rischi di ritardo. Viene ratificata l'adozione di tale strategia come 'Lesson Learned' da mantenere e descrivere nel Piano di Progetto per la fase conclusiva dei prossimi cicli operativi."
    )

#pagebreak()
    = Azioni e responsabilità
    #task_table((
      ("Conclusione manuale utente", "Amministratore", "4:00"),
      ("Integrazione frontend con microservizio analisi", "Programmatore", "4:00"),
      ("Allineamento pattern risposta agenti con entity di dominio", "Progettista", "2:00"),
      ("Stesura delle ultime sezioni in ST", "Progettista", "6:00"),
      ("Sviluppo agente di sicurezza ed endpoint", "Programmatore", "4:00"),
      ("Deploy AWS", "Programmatore", "1:00"),
      ("Verifica testing in PdQ e avanzamento PdP", "Verificatore", "4:00"),
      ("verifica finale ST", "Verificatore", "6:00"),
      ("Rilettura finale NdP", "Verificatore", "2:00"),
    ))

    #chiusuraVerbale(orarioFineRiunione, presidenteRiunione)
  ],
) 