#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-02-28",
      "0.1.0",
      "Prima stesura del documento",
      members.berengan,
    ),
  ),

  presenti: (
    [#members.suar,
     #members.alice,
     #members.antonio,
     #members.andrea,
     #members.martinello,
     #members.kevin,
     #members.berengan #v(0.3cm)]
  ),

  assenze: [],

  [
    = Ordine del giorno
    == Argomenti proposti
        = Ordine del giorno
    == Argomenti proposti
    #let punto1 = "Discussione sul lavoro svolto e sul lavoro rimanente"
    #let punto2 = "Discussione sulla preparazione alla revisione del documento analisi dei requisiti"
    #let punto3 = "Discussione in merito all'rganizzazione del team in vista della product baseline"
    + #punto1.
    + #punto2.
    + #punto3.
    = Svolgimento Riunione
    #let orarioInizioRiunione = "9:45"//...
    #let dataRiunione = "28 Febbraio"
    #let orarioFineRiunione = "10:50" //...
    #let presidenteRiunione = members.berengan //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1 : #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno discusso insieme il lavoro svolto durante l'ultima settimana del quarto sprint. Inoltre è stato discusso il lavoro rimanente. Da questa discussione sono emersi i seguenti compiti da svolgere: verifica completa della sezione test del documento PdQ, verifica finale del documento NdP, preparazione della presentzione relativa al documento AdR con in professor Vardanega. Inoltre è stato compilata in collettività la sezione relativa allo sprint 4 del documento PdP",
      decisione:"Ad ogni membro sono stati assegnati i compiti da svolgere per prepararsi alla presentazione e discussione della documentazione prodotta"
    )

    === Punto 2 : #punto2
    #puntoOdg(
      punto2,
      "In riferimento alla presentazione e discussione della documentazione finora prodotta che verrà svolta con il Professor Vardanega. I membri del team hanno discusso sulle modalità di preparazione e presentazione che più hanno ritenuto opportune per il corretto svoglimento della stessa",
      decisione:"Ad ogni memro è stato assegnato il compito di rilettura e compresione individuale della documentazione prodotta"
    )

    === Punto 3 : #punto3
    #puntoOdg(
      punto3,
      "In vista della product baseline il team si è informato ed ha discusso i compiti necessari al suo corretto svoglimento. In particolare sono stata presa in considerazione la mansione di progettazione",
      decisione: "Il team ha deciso i membri incaricati di informarsi nel dettaglio sulle future mansioni da svolgere per la product baseline."
    )

     = Azioni e responsabilità
    #task_table((
      ("Revisione e verifica del documento NdP", "Analista", "2:00"),
      ("Raccolta informazioni relative al documento specifica tecnica", "Progettista", "16:00"),
      ("Strutturare il documento specifica tecinca", "Progettista", "16:00"),
      ("Inizio fase di progettazione", "Progettista", "16:00"),
      ("Gestione ordine del giorno e coordinamento riunioni", "Responsabile", "7:00"),
      ("Verifica del documento PdQ", "Analista", "2:00"),
      ("Preparazione delle slide per la presentazione con il Professor Vardanega", "Responsabile", "3:00")
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],

)