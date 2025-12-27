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
#let versione = "v0.0.0"

#titlePage("Piano di Qualifica", versione)
#set page(numbering: "1", header: header("Piano di Qualifica"), footer: footer())
#let history = (
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
Il presente documento ha l'obiettivo di definire e formalizzare le strategie di gestione della qualità per il progetto _Code Guardian_. Esso descrive come il team intende monitorare l'intero ciclo di vita del software, assicurando che ogni fase sia misurabile, migliorabile e soddisfi pienamente i requisiti richiesti dall'azienda.
Il Piano di Qualifica integra meccanismi di misurazione oggettiva, controllo di conformità ai requisiti del capitolato e protocolli di miglioramento continuo per assicurare l'eccellenza.

L'approccio metodologico adottato configura la qualità come un processo dinamico di apprendimento, miglioramento e ottimizzazione continua, in linea con il _Way of Working_.

== Riferimenti
=== Riferimenti normativi
- *Way of Working v1.2:* \ #underline[https://github.com/SkarabGroup/DocumentazioneProgetto/blob/main/candidatura/WoW_Skarab_Group.pdf]
- *Capitolato d'appalto C2: Piattaforma ad agenti per l’audit e la remediation dei repository GitHub:* \ #underline[https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf]

=== Riferimenti informativi
- *Glossario.*
- *Standard ISO/IEC 9126 - Qualità del prodotto software:* \ #underline[https://it.wikipedia.org/wiki/ISO/IEC_9126]
- *Standard ISO/IEC 12207:1995 - Processi del ciclo di vita del software:* \ #underline[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf]
- *OWASP.*

#pagebreak()

= Qualità di processo
La qualità del processo è fondamentale per assicurare che il _Way of Working_ sia sostenibile e tracciabile nel tempo. Si tratta di un'esigenza primaria per garantire il successo del progetto _Code Guardian_. Pertanto, il progetto si avvale di:


== Processi primari
== Processi di supporto
== Processi organizzativi

#pagebreak()

= Qualità di prodotto

#pagebreak()

= Metodi di Testing
== Test di Sistema
== Test di Accettazione
== Test di Unità

#pagebreak()

= Cruscotto di Valutazione

#pagebreak()

= Automiglioramento
