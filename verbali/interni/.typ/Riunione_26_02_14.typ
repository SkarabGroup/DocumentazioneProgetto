#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-02-14",
      "1.0.0",
      "Prima stesura del documento",
      members.antonio
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
    #let punto1 = "Discussione sul lavoro svolto e sul lavoro rimanente"
    #let punto2 = "Discussione sulla data di candidatura per la milestone RTB e sulla chiusura del quarto sprint"
    + #punto1.
    + #punto2.
    = Svolgimento Riunione
    #let orarioInizioRiunione = "9:55"//...
    #let dataRiunione = "14 Febbraio"
    #let orarioFineRiunione = "10:30" //...
    #let presidenteRiunione = members.antonio //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno discusso insieme il lavoro svolto durante la settimana e sono emersi i compiti rimanenti: i documenti di PdP e PdQ sono prossimi a una versione stabile per la RTB, è stata individuata una sezione da rifinire nel documento di NdP, l'AdR ha fatto importanti avanzamenti ma richiede ancora modifiche; il PoC è quasi pronto, resta solamente unire le singole parti e verificare che tutto funzioni correttamente",
      decisione: "A ogni membro sono stati assegnati specifici compiti da svolgere tempestivamente per rispettare la data di candidatura",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "I membri del gruppo hanno ritenuto utile incrementare la durata dello sprint corrente di qualche giorno in modo da concludere le attività riguardanti la RTB in tale sprint. Si è poi dicussa la data ultima per candidarsi alla milestone RTB",
      decisione:"È stato deciso che una data ragionevole per la candidatura sia il 16 febbraio 2026, posticipando così la chiusura dello sprint 4 di qualche giorno",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Unione delle parti del PoC, stesura del documento di presentazione",
        members.kevin + ", " + members.suar + ", " + members.berengan + ", " + members.martinello,
        "2026/02/16",
        "Da iniziare",
      ),
      (
        "Modifiche alla sezione dei processi in NdP",
        members.suar + ", " + members.kevin + ", " + members.alice,
        "2026/02/16",
        "Da iniziare",
      ),
      (
        "Redazione e verifica AdR",
        members.antonio + ", " + members.andrea + ", " + members.berengan + ", " + members.martinello,
        "2026/02/16",
        "In avanzamento/prossimo alla conclusione",
      ),
      (
        "Chiusura Sprint4 nel PdP",
        members.antonio,
        "2026/02/16",
        "Da iniziare",
      ),
      (
        "Test finali e gradici del quarto sprint in PdQ",
        members.alice,
        "2026/02/16",
        "Da iniziare"
      ),
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],

)