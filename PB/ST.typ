#import "../lib/docsUtil.typ": *
#import "../lib/variables.typ": *
#import "../lib/stDiagramUtil.typ": *

#let versione = "v0.2.0"

/*
=== FUNZIONAMENTO DEL DOCUMENTO ===
1. Scaricare l'estensione PlantUML su VS Code
2. Aprite le impostazioni di VS Code e cercate plantuml.ex, deselezionate tutte le checkbox e inserite in outputDir assets/st_diagrams/svg
3. Sempre dalle impostazioni cercate plantuml.pr e assicuratevi che il primo
checkbox Plantuml: Preview Auto Update sia attivo
4. Installare graphviz (sudo apt install graphviz)
5. Dalla cartella assets/st_diagrams entrate nella subfolder del tipo di diagramma che intendete creare, entrate in plantuml e create il file .plantuml; Per la sintassi guardate https://plantuml.com/
6. Assicuratevi sempre che ci sia 
hide circles
skinparam classAttributeIconSize 0 
dopo aver definito l'inizio del diagramma (almeno pr quelli di classe)
7. per salvare, tasto destro sul file .plantuml, export in svg e si salverá nella cartella svg
*/


#titlePage("Specifica Tecnica", versione)
#set page(numbering: "1", header: header("Specifica Tecnica"), footer: footer())
#let history = (
  (
    "2026/03/07",
    "0.3.0",
    "Aggiunta sezione Tecnologie e Librerie Utilizzate",
    members.martinello
  ),
  (
    "2026/03/07",
    "0.2.0",
    "Prima strutturazione della sezione tecnologie",
    members.berengan,
    members.suar
  ),
  (
    "2026/03/04",
    "0.1.0",
    "Prima stesura del documento",
    members.suar,
    members.berengan
  ),
)

#versionTable(history)

#indice()

#indiceImmagini()

#pagebreak()

#indiceTabelle()

#pagebreak()

= Introduzione 
Il presente documento descrive l'#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#analisi-dei-requisiti")[#def("Analisi dei Requisiti")] #TODO("correggere 'Analisi dei Requisiti' in 'Specifica Tecnica' e aggiungere termine da Glossario") relativo al progetto #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#code-guardian")[#def("Code Guardian")], commissionato dall’azienda #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#var-group")[#def("Var Group")] e realizzato dal gruppo di studenti #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#skarab-group")[#def("Skarab Group")] nell’ambito del corso di Ingegneria del Software presso l’Università degli Studi di Padova.

#TODO("Rispettare la struttura introduttiva adottata anche negli altri documenti")

Il progetto ha come obiettivo la realizzazione di un sistema per l'automazione dei processi di #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#audit")[#def[audit]] e #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#remediation")[#def[remediation]] delle vulnerabilità del software. L'architettura si basa sul paradigma degli #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#agente")[#def[agenti]] software intelligenti, operanti su repository di codice sorgente. La conformità del sistema è vincolata ai requisiti definiti nel

La piattaforma supporta attività di analisi statica del codice sorgente e di individuazione delle principali criticità di sicurezza, fornendo suggerimenti di correzione attraverso meccanismi automatizzati basati su modelli di linguaggio di grandi dimensioni (#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#large-language-model")[#def[LLM]]).

== Glossario
Al fine di prevenire ambiguità interpretative, è stato redatto un glossario che definisce in modo univoco la terminologia tecnica, gli acronimi e i concetti di dominio utilizzati all’interno della documentazione.

Nel testo, *ogni termine evidenziato tramite una G come apice*, rimanda alla voce corrispondente del Glossario pubblicato sul sito ufficiale del gruppo, consentendo al lettore di accedere direttamente alla definizione associata.

La versione più recente del Glossario è disponibile al seguente link:
#underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html")[Link al Glossario (v1.0.0)]].

== Riferimenti
=== Riferimenti Normativi
I seguenti documenti hanno valore vincolante per la redazione della Specifica Tecnica:
- *Standard IEEE/ISO/IEC 42010-2022*: International Standard for Software, systems and enterprise--Architecture description \
  #underline(link("https://ieeexplore.ieee.org/document/9938446")) \
  (ultimo accesso: *05/03/2026*)

- *Capitolato C2*: Piattaforma ad agenti per l’audit e la remediation dei repository software. <capitolato> \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2025/Progetto/C2.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Analisi dei Requisiti*: insieme dei requisiti e dei casi d'uso coperti nel Minimum Viable Product. <AdR> \
  #underline(link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/AdR.pdf")) \
  (versione: *v1.0.0*)

- *Norme di Progetto*: regole, convenzioni e standard di qualità adottati dal gruppo. <NdP>\
  #underline[#link("https://skarabgroup.github.io/DocumentazioneProgetto/RTB/NdP.pdf")] \
  (versione: *v1.0.0*)

=== Riferimenti Informativi
- *Dispense del Corso di Ingegneria del Software sulla Progettazione*: \
  #underline(link("https://www.math.unipd.it/~tullio/IS-1/2025/Dispense/T06.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sulla Dependency Management*: \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Dependency%20Management%20in%20Object-Oriented%20Programming.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Diagrammi delle Classi*: <ddC> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2023/Diagrammi%20delle%20Classi.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Dipsense del Corso di Ingegneria del Software sui Diagrammi delle Attività*: <ddA> \
  #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20di%20Attivit%C3%A0.pdf")] \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Pattern Architetturali*: \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf")) \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sulla Dependency Injection*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Architetturali%20-%20Dependency%20Injection.pdf")) \
  (ultimo accesso: *05/03/2026*)

- *Dispense del Corso di Ingegneria del Software sui Model-View Patterns*: \ 
  #underline(link("https://www.math.unipd.it/~rcardin/sweb/2022/L02.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Creazionali*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Creazionali.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Strutturali*:  \
  #underline(link("https://www.math.unipd.it/~rcardin/swea/2022/Design%20Pattern%20Strutturali.pdf")) \
  (ultimo accesso: *05/03/2026*)
- *Dispense del Corso di Ingegneria del Software sui Pattern Comportamentali*:  \
  #underline(link("https://drive.google.com/file/d/1cpi6rORMxFtC91nI6_sPrG1Xn-28z8eI/view?usp=sharing")) \
  (ultimo accesso: *05/03/2026*)
#pagebreak()


= Tecnologie
#TODO("questa sezione è solo un placeholder andrà modificata in fututo man mano che vengono acquisite le comptenze e prese le scelte")
Il progetto è basato su un insieme di tecnologie attentamente analizzate e scelte dal team SkarabGroup. Le tecnologie in questione sono state selezionate in base a: 
- Capacità di assolvere al proprio compito individualmente
- Capacità di interazione con le altre tecnologie
- Capacità di modularizzazione del codice sorgente

La scelta tecnologica è stata fatta in base all'analisi dei requisiti del capitolato. Il capitolato richiede lo sviluppo di una Web App che sia in grado di fare un'analisi approfondita di repository GitHub, con una particolare attenzione all'analisi di repository private.
Quest'analisi deve comprendere:
- Analisi statica del codice
- Analisi semantica, sintattica e della coerenza della documentazione rispetto al codice
- Errori e falle di sicurezza rispetto allo standard OWASP
Inoltre l'applicazione deve essere sviluppata in modo da poter essere facilmente convertita in uno strumento integrabile nei processi #link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#continuous-integration")[#def[CI]]/#link("https://skarabgroup.github.io/DocumentazioneProgetto/Glossario/glossario.html#continuous-deployment")[#def[CD]], e non solo essere un'applicazione di tipo standalone.
#TODO("Mettere questa sezione in introduzione")

Queste tecnologie sono state dunque organizzate e descritte per categoria e ruolo svolto nell'architettura dell'applicazione.\ Le categorie sono le seguenti :
- Linguaggi di programmazione per lo sviluppo del codice sorgente
- Framework per la semplificazione e maggior sicurezza durante lo sviluppo
- Tecnologie per il deployment
- Strumenti di analisi esterni (ad es. Semgrep)
- Modelli di intelligenza artificiale per l'analisi ed il sistema agentico
- Tecnologie per il monitoraggio dei microservizi

#pagebreak()
== Linguaggi di programmazione
#figure(  
  table(
      columns: (1fr, 1fr, 3fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header([*Tecnologia*], [*Versione*], [*Descrizione*]),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => (center, left, center).at(col) + horizon,

    [Python],[3.11.15],[Python è un linguaggio di programmazione open source di tipo interpretato. È uno dei leader per lo sviluppo di agenti di intelligenza artificiale. Alcuni dei migliori framework per lo sviluppo degli agenti IA sono infatti scritti in python. Semplifica la scrittura del codice degli agenti e offre innumerevoli risorse per uno sviluppo che si adatta in base alle necessità dello sviluppatore],
    [TypeScript], [5.9.3], [TypeScript è un linguaggio di programmazione sviluppato da Microsoft che estende JavaScript aggiungendo un sistema di tipizzazione statica. Grazie a funzionalità come tipi espliciti, interfacce, generics e strumenti avanzati di refactoring, facilita la collaborazione tra sviluppatori e la gestione di codebase complessi.],
    [JavaScript], [ECMAScript 2025], [JavaScript è un linguaggio di programmazione ad alto livello utilizzato principalmente per lo sviluppo di applicazioni web lato client. Consente di creare interfacce dinamiche e interattive all’interno delle pagine web, gestendo eventi, manipolazione del DOM e comunicazioni asincrone con servizi backend.
    JavaScript può essere utilizzato anche lato server tramite ambienti di esecuzione come Node.js.],
  ),
  caption: "Linguaggi di programmazione"
)
== Frameworks
#figure(
  table(
      columns: (1fr, 1fr, 3fr),
    inset: 10pt,
    stroke: 0.5pt + luma(200),
    table.header([*Tecnologia*], [*Vesione*], [*Descrizione*]),
    fill: (col, row) => if row == 0 { luma(62.75%) } else if calc.odd(row) { luma(220) },
    align: (col, row) => (center, left, center).at(col) + horizon,

    [Strands], [1.26.0], [Strands Agents SDK è un framework per agenti AI autonomi basato su LLM, che fornisce un ciclo di pianificazione, strumenti integrabili e orchestrazione del workflow, permettendo la costruzione di agenti intelligenti estendibili in Python e TypeScript.],
    [Nestjs], [11.1.3], [NestJS è un framework Node.js/TypeScript per costruire applicazioni server‑side strutturate e scalabili. Per maggiori informazioni si consiglia di consultare il #underline(link("https://docs.nestjs.com")[sito ufficiale])]
  ),
  caption: "Frameworks"
)

#pagebreak()

= Librerie Utilizzate

== Librerie Frontend — React

=== React Core

==== react (`^18.3.1`)
Libreria core per la costruzione di interfacce utente tramite componenti funzionali.

*Hooks utilizzati:* `useState`, `useEffect`, `useContext`, `useCallback`, `createContext`.

==== react-dom (`^18.3.1`)
Libreria per il rendering React nel DOM del browser.

*API utilizzata:* `createRoot` per l'entry point dell'applicazione in `main.tsx`.

=== Gestione Stato e Form

==== react-hook-form (`^7.55.0`)
Libreria per la gestione di form con validazione integrata, orientata alle performance.

*API utilizzate:* `Controller`, `FormProvider`, `useFormContext`, `useFormState`. Gestione type-safe dei form tramite integrazione con TypeScript.

==== socket.io-client (`^4.8.3`)
Client WebSocket basato su Socket.io per la ricezione di aggiornamenti in tempo reale sull'avanzamento delle analisi.

*Eventi gestiti:* `analysis:started`, `analysis:completed`, `analysis:failed`. Configurato con auto-reconnection tramite `SocketContext`.

=== Componenti UI — Radix UI

L'interfaccia utente si basa su *26 librerie Radix UI*, tutte unstyled by default, conformi WAI-ARIA e basate sul pattern _compound components_. Supportano stati controllati e non-controllati.

#show figure.where(kind: table): set block(breakable: true)
#figure(
  table(
    columns: (1.8fr, 1fr, 3fr),
    inset: 8pt,
    stroke: 0.5pt + luma(200),
    fill: (col, row) => if row == 0 { luma(200) } else if calc.even(row) { luma(240) } else { none },
    align: (col, row) => (left, center, left).at(col) + horizon,
    table.header([*Libreria*], [*Versione*], [*Scopo*]),
    table.hline(),
    [`@radix-ui/react-accordion`],        [`^1.2.3`],  [Sezioni espandibili e collassabili],
    [`@radix-ui/react-alert-dialog`],     [`^1.1.6`],  [Dialog modali per conferme],
    [`@radix-ui/react-aspect-ratio`],     [`^1.1.2`],  [Mantenimento proporzioni immagini/video],
    [`@radix-ui/react-avatar`],           [`^1.1.3`],  [Avatar utente con fallback],
    [`@radix-ui/react-checkbox`],         [`^1.1.4`],  [Checkbox accessibili],
    [`@radix-ui/react-collapsible`],      [`^1.1.3`],  [Contenuti espandibili],
    [`@radix-ui/react-context-menu`],     [`^2.2.6`],  [Menu contestuali (click destro)],
    [`@radix-ui/react-dialog`],           [`^1.1.6`],  [Dialog modali generici],
    [`@radix-ui/react-dropdown-menu`],    [`^2.1.6`],  [Menu a tendina],
    [`@radix-ui/react-hover-card`],       [`^1.1.6`],  [Card informative on hover],
    [`@radix-ui/react-label`],            [`^2.1.2`],  [Label accessibili per form],
    [`@radix-ui/react-menubar`],          [`^1.1.6`],  [Barra menu principale],
    [`@radix-ui/react-navigation-menu`],  [`^1.2.5`],  [Menu di navigazione complessi],
    [`@radix-ui/react-popover`],          [`^1.1.6`],  [Popover overlay],
    [`@radix-ui/react-progress`],         [`^1.1.2`],  [Barre di progresso],
    [`@radix-ui/react-radio-group`],      [`^1.2.3`],  [Gruppi radio button],
    [`@radix-ui/react-scroll-area`],      [`^1.2.3`],  [Aree scrollabili custom],
    [`@radix-ui/react-select`],           [`^2.1.6`],  [Select dropdown accessibili],
    [`@radix-ui/react-separator`],        [`^1.1.2`],  [Separatori visivi],
    [`@radix-ui/react-slider`],           [`^1.2.3`],  [Slider per input numerici],
    [`@radix-ui/react-slot`],             [`^1.1.2`],  [Pattern _slot_ per composizione flessibile — permette il passaggio di props al figlio invece di wrapparlo],
    [`@radix-ui/react-switch`],           [`^1.1.3`],  [Toggle switch],
    [`@radix-ui/react-tabs`],             [`^1.1.3`],  [Interfacce a tab],
    [`@radix-ui/react-toggle`],           [`^1.1.2`],  [Toggle button],
    [`@radix-ui/react-toggle-group`],     [`^1.1.2`],  [Gruppi toggle button],
    [`@radix-ui/react-tooltip`],          [`^1.1.8`],  [Tooltip accessibili],
  ),
  caption: [Librerie Radix UI utilizzate nel frontend],
  kind: table
)

=== Visualizzazione e Interazione

==== recharts (`^2.15.2`)
Libreria per la creazione di grafici e la visualizzazione di dati. Utilizzata nella dashboard per la rappresentazione delle metriche di sicurezza.

==== embla-carousel-react (`^8.6.0`)
Carousel/slider ad alte performance con supporto per la navigazione da tastiera. Utilizza internamente una Context API per la condivisione dello stato e viene controllato tramite il custom hook `useCarousel`.

==== react-day-picker (`^8.10.1`)
Calendar picker per la selezione di date. Utilizzato nei filtri della sezione storico analisi.

==== react-resizable-panels (`^2.1.7`)
Pannelli ridimensionabili dall'utente. Permette layout in _split view_ flessibili.

==== lucide-react (`^0.487.0`)
Libreria di icone per React. Utilizzata pervasivamente in tutta l'applicazione.

==== sonner (`^2.0.3`)
Toast notifications moderne. Configurazione: `richColors`, posizione `top-right`. Gestisce notifiche di successo, errore e informazione.

==== next-themes (`^0.4.6`)
Gestione del tema dark/light con persistenza delle preferenze e rilevamento automatico della preferenza di sistema.

=== Librerie di Supporto

==== class-variance-authority (`^0.7.1`)
Sistema di varianti per componenti type-safe. Gestisce le props `variant` e `size`. Utilizzato per button variants e altri componenti stilizzati.

==== clsx (`*`)
Utility per la combinazione condizionale di classi CSS.

==== tailwind-merge (`*`)
Merge intelligente di classi Tailwind CSS con risoluzione automatica dei conflitti. Usato insieme a `clsx` nell'utility `cn()`.

==== cmdk (`^1.1.1`)
Command palette/menu con interfaccia di ricerca e navigazione keyboard-first.

==== input-otp (`^1.4.2`)
Input One-Time Password per supporto a 2FA e codici di verifica.

==== vaul (`^1.1.2`)
Componente Drawer/Sheet mobile-first. Utilizzato per i drawer laterali e i bottom sheet.

==== axios (`^1.13.5`)
HTTP client per le chiamate alle API REST del backend. Configurato con interceptor per la gestione dell'autenticazione. Organizzato in moduli service: `authApi`, `usersApi`, ecc.

=== Dev Dependencies

==== `@vitejs/plugin-react-swc` (`^3.10.2`)
Plugin Vite per React che utilizza il compilatore SWC. Abilita Fast Refresh e HMR con tempi di build ridotti.

==== vite (`6.3.5`)
Build tool di nuova generazione. Dev server ultra-veloce basato su ESM con HMR istantaneo.

=== Pattern React Utilizzati

#figure(
  table(
    columns: (1.5fr, 3fr),
    inset: 9pt,
    stroke: 0.5pt + luma(200),
    fill: (col, row) => if row == 0 { luma(200) } else if calc.even(row) { luma(240) } else { none },
    align: (col, row) => (left, left).at(col) + horizon,
    table.header([*Pattern*], [*Utilizzo nel progetto*]),
    [Context API],
      [_AuthContext_ (autenticazione), _SocketContext_ (WebSocket). Pattern: `createContext` + Provider + custom hook],
    [Custom Hooks],
      [`useAuth`, `useSocket`, `useAnalysisSocket`, `useFormField`, `useCarousel`],
    [`useState`],
      [State locale: `user`, `loading`, `socket`, `connected`],
    [`useEffect`],
      [API call, setup WebSocket, event listener con cleanup, auto-login al mount],
    [`useCallback`],
      [Ottimizzazione degli event handler nel carousel per evitare ricreazioni],
    [`useContext`],
      [Consumo dei context nei custom hook per l'accesso allo stato condiviso],
    [FormProvider / useFormContext],
      [Condivisione dello stato del form tra componenti annidati],
    [Compound Components],
      [Pattern Radix UI per Carousel e Form con state sharing implicito],
    [Slot Pattern],
      [Composizione flessibile via prop `asChild` per riuso stili senza wrapper],
  ),
  caption: [Pattern React utilizzati nel progetto],
  kind: table
)

#pagebreak()

== Librerie Backend — NestJS

=== NestJS Core

==== `@nestjs/common` (`^11.0.1`)
Libreria core di NestJS. Contiene i decoratori e le utilities fondamentali per la costruzione dell'applicazione.

*Decoratori utilizzati:* `@Controller`, `@Injectable`, `@Module`, `@Get`, `@Post`, `@Put`, `@Delete`, `@Patch`, `@UseGuards`, `@Body`, `@Param`, `@Query`.

*Utilities utilizzate:* `Logger`, `NotFoundException`, `UnauthorizedException`, `BadRequestException`, `ValidationPipe`, `createParamDecorator`, `ExecutionContext`.

==== `@nestjs/core` (`^11.0.1`)
Engine principale del framework NestJS. Gestisce l'intero ciclo di vita dell'applicazione e il container di Dependency Injection.

*API utilizzata:* `NestFactory.create()` nel file `main.ts` per il bootstrap dell'applicazione.

==== `@nestjs/platform-express` (`^11.0.1`)
Adapter Express.js per NestJS. Funge da piattaforma HTTP di default. Abilita CORS tramite `app.enableCors()`.

=== Configurazione e Variabili d'Ambiente

==== `@nestjs/config` (`^4.0.2`)
Modulo per la gestione centralizzata delle variabili d'ambiente tramite file `.env`.

*API utilizzata:* `ConfigModule.forRoot()` per il caricamento globale; `ConfigService` per l'injection della configurazione nei service.

*Utilizzato in:* `AppModule`, `AuthModule`, `AuthService`, `JwtStrategy`, `AnalysisService`.

*Variabili gestite:* `JWT_SECRET`, `JWT_EXPIRATION`, `JWT_REFRESH_SECRET`, `JWT_REFRESH_EXPIRATION`, `MONGO_URI`.

=== Autenticazione e Sicurezza

==== `@nestjs/jwt` (`^11.0.2`)
Modulo JWT per NestJS.

*API utilizzata:* `JwtModule.registerAsync()` per la configurazione asincrona con `ConfigService`; `JwtService.sign()` e `JwtService.verify()` per la generazione e la validazione dei token. Supporta access token (scadenza 7 giorni) e refresh token separati.

==== `@nestjs/passport` (`^11.0.5`)
Integrazione del middleware Passport.js in NestJS.

*API utilizzata:* `PassportModule` per la registrazione delle strategie; `PassportStrategy` come classe base per strategie custom; `AuthGuard('jwt')` per la protezione delle route.

==== `passport-jwt` (`^4.0.1`)
Strategia Passport per l'autenticazione tramite JWT.

*API utilizzata:* `ExtractJwt.fromAuthHeaderAsBearerToken()` per l'estrazione del token dall'header `Authorization`; `Strategy` come classe base, implementata in `auth/strategies/jwt.strategy.ts`.

==== `bcrypt` (`^6.0.0`)
Libreria per l'hashing sicuro delle password.

*API utilizzata:* `bcrypt.hash()` con 10 salt rounds; `bcrypt.compare()` per la verifica della password. Utilizzato in `AuthService` per login e registrazione.

==== `bcryptjs` (`^3.0.3`)
Versione JavaScript pura di `bcrypt`, priva di dipendenze native. Espone la stessa API di `bcrypt`. Utilizzato in `AnalysisService` come alternativa portabile.

=== Database — Mongoose / MongoDB

==== `mongoose` (`^9.2.1`)
ODM (Object Document Mapper) per MongoDB.

*API utilizzate:* `Model`, `Types`, `HydratedDocument` per la tipizzazione dei documenti; `Schema`, `SchemaFactory`, `@Prop()` per la definizione dei modelli dati.

*Schema definiti:* `User`, `Analysis`, `Repository`, `Project`.

==== `@nestjs/mongoose` (`^11.0.4`)
Integrazione di Mongoose nel sistema di moduli NestJS.

*API utilizzate:* `MongooseModule.forRootAsync()` per la connessione asincrona; `MongooseModule.forFeature()` per la registrazione degli schema nei moduli; `@InjectModel()` per l'injection dei modelli nei service.

*Utilizzato in:* `UsersModule`, `RepositoriesModule`, `AnalysisModule`, `AnalysisResultHandlerModule`.

=== Validazione e Trasformazione DTO

==== `class-validator` (`^0.14.3`)
Validazione dei DTO tramite decoratori applicati alle proprietà delle classi.

*Decoratori utilizzati nel progetto:*
- `@IsString()`, `@IsEmail()`, `@IsNotEmpty()`
- `@MinLength()`, `@Matches()`
- `@IsUrl()`, `@IsOptional()`, `@IsBoolean()`
- `@IsMongoId()`

Funziona in sinergia con `ValidationPipe` di NestJS applicata globalmente in `main.ts`.

==== `class-transformer` (`^0.5.1`)
Trasformazione di oggetti plain JavaScript in istanze di classe e viceversa. Abilitato tramite il flag `transform: true` nella `ValidationPipe`, permette il casting automatico dei tipi nei DTO.

=== HTTP Client

==== `@nestjs/axios` (`^4.0.1`)
Integrazione di Axios in NestJS come modulo iniettabile.

*API utilizzata:* `HttpModule` importato nei moduli che necessitano di chiamate HTTP; `HttpService` (che wrappa Axios con Observables RxJS) iniettato nei service.

*Utilizzato in:* `GithubCommunicatorModule` per le chiamate alle API REST di GitHub.

==== `axios` (`^1.13.5`)
HTTP client per chiamate REST. Utilizzato direttamente o tramite `@nestjs/axios`.

=== WebSocket e Real-Time

==== `@nestjs/websockets` (`^11.1.13`)
Modulo NestJS con i decoratori per la creazione di gateway WebSocket, agnostici rispetto alla piattaforma sottostante.

*Decoratori principali:* `@WebSocketGateway`, `@WebSocketServer`, `@SubscribeMessage`.

==== `@nestjs/platform-socket.io` (`^11.1.13`)
Adapter Socket.io per i WebSocket NestJS. Gestisce la comunicazione real-time con il frontend React ed è compatibile con `socket.io-client`.

==== `@nestjs/platform-ws` (`^11.1.13`)
Adapter WebSocket nativo (`ws`) per NestJS, alternativa leggera a Socket.io.

==== `ws` (`^8.19.0`)
Libreria WebSocket client/server per Node.js. Utilizzata per la comunicazione diretta con gli agenti AI Python e per l'invio di notifiche sullo stato delle analisi.

==== `wscat` (`^6.1.0`)
Tool CLI per il testing manuale di connessioni WebSocket. Utilizzato in fase di sviluppo per il debug.

=== Utilità

==== `uuid` (`^13.0.0`)
Generazione di identificatori univoci universali.

*API utilizzata:* `v4 as uuidv4` per la generazione di UUID v4 casuali. Utilizzato in `AnalysisService` per generare l'`analysisId` passato agli agenti AI esterni.

==== `rxjs` (`^7.8.1`)
Reactive Extensions per JavaScript. Fornisce la programmazione reattiva basata su Observables.

*API utilizzate:* `firstValueFrom()` per la conversione di un Observable in Promise; pipe e operatori per la gestione dei flussi asincroni. Utilizzato in `GithubCommunicatorService` con `HttpService`.

==== `reflect-metadata` (`^0.2.2`)
Polyfill per la Metadata Reflection API. Prerequisito obbligatorio per il funzionamento dei decoratori di NestJS e del container di Dependency Injection. Importato all'avvio dell'applicazione.

=== Dev Dependencies — Testing

==== `@nestjs/testing` (`^11.0.1`)
Utilities per gli unit test in NestJS.

*API utilizzata:* `Test.createTestingModule()` per la creazione di un modulo di test isolato; `TestingModule` per la risoluzione dei provider in ambiente di test.

==== `jest` (`^30.0.0`)
Framework di testing principale. Configurato per TypeScript tramite `ts-jest`. Pattern file di test: `*.spec.ts`. Ambiente di esecuzione: Node.

==== `ts-jest` (`^29.2.5`)
Preprocessore TypeScript per Jest. Trasforma i file `.ts` prima dell'esecuzione. Configurato nella sezione `"jest"` di `package.json`.

==== `supertest` (`^7.0.0`)
Libreria per il testing HTTP end-to-end. Utilizzata nei test e2e dei controller. Integrata con Jest tramite il file `test/jest-e2e.json`.

=== Dev Dependencies — Build e Tooling

==== `@nestjs/cli` (`^11.0.0`)
CLI ufficiale di NestJS per scaffolding, build e avvio del server. Comandi principali: `nest build` (produzione), `nest start --watch` (sviluppo con auto-reload).

==== `@nestjs/schematics` (`^11.0.0`)
Generatori di codice per la CLI di NestJS. Permette la generazione automatica di module, controller e service tramite `nest generate`.

==== `typescript` (`^5.7.3`)
Compilatore TypeScript con strict mode abilitato. Supporta path aliases (`src/*`) risolti a runtime tramite `tsconfig-paths`.

==== `ts-node` (`^10.9.2`)
Esecuzione diretta di TypeScript in Node.js senza compilazione preventiva. Utilizzato in sviluppo e come entry point per i test.

==== `ts-loader` (`^9.5.2`)
Loader TypeScript per webpack. Utilizzato nel processo di build interno di NestJS.

==== `tsconfig-paths` (`^4.2.0`)
Risoluzione degli alias di path TypeScript a runtime. Permette import nella forma `src/database/...` invece di percorsi relativi.

==== `source-map-support` (`^0.5.21`)
Supporto alle source map per stack trace leggibili in produzione. Migliora la diagnostica degli errori.

=== Dev Dependencies — Linting e Formatting

==== `eslint` (`^9.18.0`)
Linting del codice TypeScript. Configurato con il nuovo formato flat config (`eslint.config.mjs`).

==== `@eslint/eslintrc` (`^3.2.0`)
Compatibilità con il nuovo formato flat config di ESLint 9.

==== `@eslint/js` (`^9.18.0`)
Regole ESLint base per JavaScript.

==== `typescript-eslint` (`^8.20.0`)
Regole ESLint specifiche per TypeScript con integrazione del parser TypeScript.

==== `eslint-config-prettier` (`^10.0.1`)
Disabilita le regole ESLint in conflitto con Prettier.

==== `eslint-plugin-prettier` (`^5.2.2`)
Esegue Prettier come regola ESLint, segnalando le violazioni di formattazione come errori di lint.

==== `prettier` (`^3.4.2`)
Formatter automatico del codice. Garantisce la consistenza dello stile in tutto il progetto.

==== `globals` (`^16.0.0`)
Definizioni delle variabili globali per ESLint nei contesti Node.js e browser.

=== Pattern NestJS Utilizzati

#figure(
  table(
    columns: (1.5fr, 3.5fr),
    inset: 9pt,
    stroke: 0.5pt + luma(200),
    fill: (col, row) => if row == 0 { luma(200) } else if calc.even(row) { luma(240) } else { none },
    align: (col, row) => (left, left).at(col) + horizon,
    table.header([*Pattern*], [*Utilizzo nel progetto*]),
    [Dependency Injection],
      [`@Injectable()` su tutti i service; constructor injection per i provider; `@InjectModel()` per i modelli Mongoose],
    [Feature Modules],
      [`AuthModule`, `UsersModule`, `RepositoriesModule`, `AnalysisModule`. Moduli condivisi: `GithubCommunicatorModule`, `ValidationModule`, `AnalysisExecutorModule`, `AnalysisResultHandlerModule`],
    [Guards],
      [`JwtAuthGuard` estende `AuthGuard('jwt')`. Applicato via `@UseGuards(JwtAuthGuard)` su tutti i controller autenticati],
    [Custom Decorators],
      [`@CurrentUser()`: param decorator che estrae l'utente dalla request tramite `createParamDecorator` + `ExecutionContext`],
    [Pipe Globale],
      [`ValidationPipe` con `whitelist: true` (rimuove proprietà extra), `forbidNonWhitelisted: true` (genera errore), `transform: true` (casting tipi)],
    [Schema Mongoose],
      [`@Schema()`, `@Prop()`, `SchemaFactory.createForClass()`. `HydratedDocument<T>` per tipizzazione documenti. Enum per gli stati (es. `AnalysisStatus`)],
    [Logger NestJS],
      [Istanza di `Logger` per classe. Utilizzato in `RepositoriesService`, `AnalysisService`, `AnalysisResultHandlerModule`],
  ),
  caption: [Pattern NestJS utilizzati nel progetto],
  kind: table
)

#pagebreak()

== Riepilogo Librerie

=== Librerie Frontend

#figure(
  table(
    columns: (2.5fr, 1fr),
    inset: 9pt,
    stroke: 0.5pt + luma(200),
    fill: (col, row) => if row == 0 { luma(200) } else if calc.even(row) { luma(240) } else { none },
    align: (col, row) => (left, center).at(col) + horizon,
    table.header([*Categoria*], [*Quantità*]),
    [React Core],          [2],
    [Form & Stato],        [2],
    [Radix UI],            [26],
    [Visualizzazione],     [7],
    [Supporto],            [7],
    [Dev Dependencies],    [2],
    [*Totale*],            [*46*],
  ),
  caption: [Riepilogo librerie React],
  kind: table
)

*Componenti UI:* 46 file nella directory `src/components/ui/`, suddivisi in: Form (8), Layout (7), Feedback (6), Navigation (5), Overlay (5), Interactive (6), Data display (4), Charts (1), Utility (4).

=== Librerie Backend

#figure(
  table(
    columns: (2.5fr, 1fr),
    inset: 9pt,
    stroke: 0.5pt + luma(200),
    fill: (col, row) => if row == 0 { luma(200) } else if calc.even(row) { luma(240) } else { none },
    align: (col, row) => (left, center).at(col) + horizon,
    table.header([*Categoria*], [*Quantità*]),
    [NestJS Core],               [3],
    [Configurazione],            [1],
    [Autenticazione/Sicurezza],  [5],
    [Database],                  [2],
    [Validazione/Trasformazione],[2],
    [HTTP Client],               [2],
    [WebSocket/Real-Time],       [5],
    [Utilità],                   [3],
    [Dev — Testing],             [4],
    [Dev — Build/Tooling],       [7],
    [Dev — Linting/Formatting],  [8],
    [*Totale*],                  [*42*],
  ),
  caption: [Riepilogo librerie NestJS],
  kind: table
)

*Moduli NestJS (9):* `AppModule`, `AuthModule`, `UsersModule`, `RepositoriesModule`, `AnalysisModule`, `GithubCommunicatorModule`, `ValidationModule`, `AnalysisExecutorModule`, `AnalysisResultHandlerModule`.

*Controller (5):* `AppController`, `AuthController`, `UsersController`, `RepositoriesController`, `AnalysisController`.

*Service (10):* `AppService`, `AuthService`, `UsersService`, `RepositoriesService`, `AnalysisService`, `GithubCommunicatorService`, `ValidationService`, `AnalysisExecutorService`, `AnalysisResultHandlerService`, `AnalysisTransformerService`.

*Schema Mongoose (4):* `User`, `Repository`, `Analysis`, `Project`.

*Strategie Passport (1):* `JwtStrategy`.