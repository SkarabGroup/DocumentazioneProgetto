#import "../../../lib/verbaleUtil.typ": *
#import "../../../lib/docsUtil.typ"

#verbale(
  versioni: (
    (
      "2026-02-07",
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
    #let punto1 = "Rendicontazione delle ore dello sprint 3"
    #let punto2 = "Discussione del lavoro svolto durante la settimana"
    #let punto3 = "Discussione riguardante accesso ai repository tramite token"
    #let punto4 = "Organizzazione della settimana a seguire"
    + #punto1.
    + #punto2.
    + #punto3.
    + #punto4.
    = Svolgimento Riunione
    #let orarioInizioRiunione = "10:10"//...
    #let dataRiunione = "7 Febbraio"
    #let orarioFineRiunione = "11:45" //...
    #let presidenteRiunione = members.antonio //...
    == Apertura
    La riunione, svoltasi in data #dataRiunione, ha avuto inizio alle #orarioInizioRiunione, introdotta da #presidenteRiunione che ha presentato l'ordine del giorno.

    == Discussione punto per punto
    === Punto 1: #punto1
    #puntoOdg(
      punto1,
      "I membri del team hanno verificato che le ore previste dello sprint 3 corrispondessero con quanto fatto effettivamente",
      decisione: "Ogni membro ha dichiarato quanto svolto durante lo sprint e questo è stato segnato nel terzo sprint nel PdP, rispetto allo sprint precedente le ore previste coincidono quasi nella totalità con quelle svolte",
    )

    === Punto 2: #punto2
    #puntoOdg(
      punto2,
      "Ogni membro ha esposto il lavoro svolto durante la settimana, è stata notata una mancanza di ore produttive che devono essere recuperate da parte di alcuni membri. Il PoC procede molto bene, mancano solo alcune parti da completare, l'AdR è stato problematico ma in seguito a chiarimenti ci si aspetta una rapida rifinitura conclusiva del documento, PdP è stato verificato ma dev'essere modificato ulteriormente, NdP e PdQ sono in fase di revisione",
      decisione: "Il team ha deciso di impegnarsi a finire le parti mancanti il prima possibile in modo da poter candidarsi per la RTB",
    )
    
    === Punto 3: #punto3
    #puntoOdg(
      punto3,
      "Il team ha portato alla luce l'importanza di implementare un accesso ai repository tramite token per permettere anche a utenti che non possiedono un account GitHub di usufruire del sistema",
      decisione: "I membri del team si informeranno meglio su come poter implementare questa funzionalità nel progetto",
    )

    === Punto 4: #punto4
    #puntoOdg(
      punto4,
      "Il team ha discusso come organizzarsi per i prossimi giorni",
      decisione: "Si è deciso di organizzare un incontro con l'azienda per validare il PoC dopo il suo completamento e in seguito candidarsi alla RTB con tutti i documenti pronti",
    )

    = Azioni e responsabilità
    #tabellaAzioni((
      (
        "Continuazione sviluppo PoC",
        members.kevin + ", " + members.suar + ", " + members.berengan + ", " + members.martinello,
        "2026/02/10",
        "In avanzamento/prossimo alla conclusione",
      ),
      (
        "Modifiche e revisione NdP, PdP e PdQ",
        members.suar + ", " + members.kevin + ", " + members.alice + ", " + members.antonio,
        "2026/02/12",
        "In avanzamento",
      ),
      (
        "Redazione e verifica AdR",
        members.antonio + ", " + members.andrea + ", " + members.berengan + ", " + members.alice,
        "2026/02/12",
        "In avanzamento",
      )
    ))
    #chiusuraVerbale(orarioFineRiunione,presidenteRiunione)
  ],

)