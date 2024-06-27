[Return](../../index.md)

# Sundhedsfaglige retningslinjer for anvendelse 


**Indholdsfortegnelse**
* [1 Introduktion](#1introduktion)
* [2 Formål](#formaal)
* [3 Illustration af Korrespondancemeddelelsen](#3-illustration-af-Korrespondancemeddelelsen)
* [4 Krav og anbefalinger til Korrespondancemeddelelsen](#4-krav-og-anbefalinger-til-Korrespondancemeddelelsen)
    * [4.1 Kategori og Emne](#41-kategori-og-emne)
    * [4.2 Meddelelsessegment](#42-meddelelsessegment)
      * [4.2.1 Meddelelsestekst](#421-meddelelsestekst-feltet)
        * [4.2.1.1 Kopierede eller vedhæftede journalnotater](#journalnotater)
      * [4.2.2 Signatur](#422-signatur)
    * [4.3 Prioritet, krav om afgrænset brug](#43-prioritet,-krav-om-afgrænset-brug)
    * [4.4 Vedhæftede filer](#bilag)
    * [4.5 Historisk overblik i brugergrænsefladen](#46-overblik-i-brugergrænsefladen)
    * [4.6 Forsendelsesmuligheder](#45-forsendelsesmuligheder-og-overblik)
        * [4.6.1 Besvarelse](#451-besvarelse)
        * [4.6.2 Videresendelse](#452-videresendelse)
* [5 Opsummering af krav og anbefalinger til afsender- og modtagersystemer](#6-opsummering-af-krav-og-anbefalinger-til-afsender--og-modtagersystemer)
* [6 Use Cases](#6-use-cases)
* [7 Ibrugtagning i SOR/SOR-EDI](#ibrugtagning)

<p>&nbsp;</p>

## 1 Introduktion {#1introduktion}
Dette er den tekstuelle del af dokumentationen til MedComs FHIR-standard for Korrespondancemeddelelser (på engelsk CareCommunication). Den tekstuelle del indeholder information om formål, baggrund, en illustration af indholdet i Korrespondancemeddelelsen, krav og anbefalinger samt ibrugtagning ift. SOR-EDI.
Målgruppen for denne tekst er it-systemleverandører og implementeringsansvarlige, som skal it-understøtte afsendelse og modtagelse af Korrespondancemeddelelsen. 

Krav og anbefalinger til indhold, herunder funktionaliteter, er udarbejdet i samarbejde med en <a href="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Arb.grp.%20FHIR-Korrespondancemeddelelse" target="_blank">national arbejdsgruppe</a> med repræsentanter fra regioner, kommuner og praktiserende læger. Derudover har indholdet på denne side været sendt i høring ved relevante MedCom-grupper samt været bredt tilgængeligt for kommentering via publicering på MedComs hjemmeside.
De tekniske specifikationer for Korrespondancemeddelelse findes via forsiden for MedComs samlede dokumentation for Korrespondancemeddelelse, MedCom anvender onlineværktøjet GitHub til visning. <a href="https://medcomdk.github.io/dk-medcom-carecommunication/ " target="_blank">Klik her for at læse de tekniske specifikationer for Korrespondancemeddelelsen.</a> 
>Note: I tilfælde af uoverensstemmelser i beskrivelsen af de sundhedsfaglige retningslinjer for anvendelse på dansk og engelsk er det den danske beskrivelse af de sundhedsfaglige retningslinjer for anvendelse, der er gældende.

## 2 Formål {#formaal}
Formålet med Korrespondancemeddelelsen er at understøtte den digitale kommunikation mellem sundhedsvæsnets parter, herunder bl.a. også psykiatri- og socialområdet, hvor initiativ til ny version af Korrespondancemeddelelsen er forankret. Korrespondancemeddelelsen anvendes til sikker digital kommunikation af personhenførbare oplysninger og anvendes typisk til ad hoc kommunikation. Korrespondancemeddelelsen skal dog kun bruges på de områder, hvor der i forvejen ikke findes tilgængelige strukturerede MedCom standarder. Korrespondancemeddelelsen skal ikke anvendes ved sager af akut karakter.
Formålet med Korrespondancemeddelelsen er bl.a. at:
*	Give mulighed for at vedhæfte og udveksle digitale filer
*	Understøtte automatisk fordeling ved modtagelse via brug af fælles nationale kategorier (=overordnede overskrifter)
*	Respektere regionale samarbejdsaftaler med kommuner og praksislæger ved at bevare muligheden for at angive aftalte emneord (=supplerende overskrifter)
*	Tydeliggøre afsender af Korrespondancemeddelelsen med påkrævet signatur
*	Anvende teknisk indhold, således at der i brugergrænsefladen arbejdes med en tydelig kommunikationshistorik og aktivitet (fx om en meddelelse er ny, besvaret eller videresendt)

<p>&nbsp;</p>

## 3 Illustration af Korrespondancemeddelelsen {#3-illustration-af-Korrespondancemeddelelsen}
<a href="#Fig1">Figur 1</a> er en illustration af indholdet i en Korrespondancemeddelelse. Illustrationen er et eksempel og indeholder ikke alle datafelter, som er i standarden og afspejler ikke det enkelte systems brugergrænseflade.

<figure>
<img src="../images/IllustrationKorrespondance.png" alt="Eksempel på, en Korrespondancemeddelelse" style="width:30%" id="Fig1">
<figcaption text-align = "center"><b>Figur 1: Eksempel på indhold i Korrespondancemeddelelsen </b></figcaption>
</figure>

<p>&nbsp;</p>

## 4 Krav og anbefalinger til Korrespondancemeddelelsen {#4-krav-og-anbefalinger-til-Korrespondancemeddelelsen}
Korrespondancemeddelelsen <u>skal</u> indeholde information om:
*	Borger/patient som henvendelsen vedrører
*	Afsender
*	Modtager
*	Kategori (fortæller på et overordnet niveau, hvad indholdet i Korrespondancemeddelelsen drejer sig om)
*	•	Meddelelsessegment (indeholdende meddelelsestekst og signatur)
*	Signatur skal indeholde dato og tidspunkt, forfatters navn, stillingbetegnelse og relevant telefonnummer
*	Tekniske data på meddelelsen (herunder bl.a. ID’er og referencer til forudgående meddelelser. <a href="https://medcomdk.github.io/dk-medcom-carecommunication/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank">Klik her for at se den tekniske dokumentation for yderligere information.</a>)
<p>&nbsp;</p>

Korrespondancemeddelelsen <u>kan</u> (=frivilligt) indeholde:
* Specifik afsender hvis relevant (fx specifik udskrivningskoordinator eller læge på sygehuse) 
*	Specifik modtager hvis relevant (fx specifik sagsbehandler eller socialrådgiver i kommunen) 
*	Emne (supplerer den valgte kategori med et emneord, som fortæller i detaljer, hvad indholdet i Korrespondancemeddelelsen drejer sig om. Liste med emner er ofte defineret via regionale sundhedsaftaler)
*	Vedhæftede filer (knyttes til et meddelelsessegment)
*	Prioritet (Obs. Kan kun påsættes ved valg af den nationale kategori ”Vedr. henvisning”) 
<p>&nbsp;</p>

### 4.1 Kategori og Emne {#41-kategori-og-emne}
Kategori består af en national fastlagt liste med aftalte kategorier, som afsender vælger kategori ud fra. Kategorilisten muliggør, at modtager automatisk kan fordele indkomne Korrespondancemeddelelser, fx til det relevante kommunale område. Det er et krav, at kategorien vises for brugeren, men muligheden for automatisk fordeling ved modtagelse efter de nationale kategorier i Korrespondancemeddelelsen er ikke en del af MedComs test og certificering.
<a href="https://medcomfhir.dk/ig/terminology/CodeSystem-medcom-careCommunication-categoryCodes.html" target="_blank"> Klik her for at læse de aftalte nationale kategorier.</a> 

Der er oprettet en kategori ”Andet” i de tilfælde, hvor de øvrige kategorier på listen ikke vurderes tilstrækkeligt dækkende for indholdet i Korrespondancemeddelelsen. Ved valg af kategorien ”Andet” er det et krav, at afsender medsender et emne. MedCom anbefaler, at afsender så vidt muligt undlader at anvende kategorien ”Andet”, undtaget i de tilfælde hvor det er absolut nødvendigt.

I emnefeltet har brugeren mulighed for at supplere den valgte kategori med et emne. Emnefeltet udfyldes enten med de regionalt aftalte emneord, defineret i de regionale samarbejdsaftaler, eller som selvskrevet fritekst. Det er valgt at bibeholde emnefeltet netop for at kunne understøtte de eksisterende samarbejdsaftaler med de regionalt aftalte emneord. Der er ikke krav til, eller forventning om, at systemerne automatisk kan fordele efter emneord. 

For at understøtte brugeren mest muligt <u>anbefales følgende</u>:
*	Regionalt aftalte emneord mappes til de nationalt aftalte kategorier, hvor de pågældende emneord relateres til de relevante kategorier
*	I de brugssituationer, hvor der er regionalt aftalte emneord:
    *	Brugeren præsenteres for de regionalt aftalte emneord, som de kender, og ved valg af emneord, påsætter systemet automatisk den pågældende relevante kategori (som er valgt ved forudgående mapning mellem kategori og emneord). Brugeren slipper derved for at skulle tage stilling til kategori.
    *	Kategorien skal altid være synlig, både for afsender og modtager – også ved regionalt aftalte emneord. Kategorien kan dog, for at understøtte brugeren, gøres mindre synlig i brugergrænsefladen, fx ved at ’fade ud’, hvis der er regionalt aftalte emneord. 
<p>&nbsp;</p>

*	I de brugssituationer, hvor der ikke er regionalt aftalte emneord:
    *	Brugeren vælger kategori og har herefter mulighed for at supplere med selvskrevet emneord som fritekst i emnefeltet. 

<p>&nbsp;</p>

MedCom stiller en terminologiserver til rådighed, som bl.a. udstiller de nationale kategorier og tilladte filtyper, som kan vedhæftes Korrespondancemeddelelsen. Governance, omfattende regler og retningslinjer, herunder bl.a. adgang, opdatering og vedligeholdelse, for såvel terminologiserveren som listen over de nationalt aftalte kategorier, håndteres og fastlægges i MedCom-regi. Governance for terminologier og serveren findes via forsiden for Governance for MedCom FHIR Messaging. 
<a href="https://medcomdk.github.io/MedCom-FHIR-Communication/" target="_blank">Klik her for at læse Governance for MedCom FHIR Messaging.</a>

### 4.2 Meddelelsessegment {#42-meddelelsessegment}
Et meddelelsessegment består af Korrespondancemeddelelsens meddelelsestekst og afsenders signatur. I de tilfælde hvor der vedhæftes en fil til Korrespondancemeddelelsen, vil vedhæftningen knyttes til et nyt meddelelsessegment. Der er ID på hvert meddelelsessegment, som også skal medsendes og modtages af systemerne. I den forbindelse er der krav om, at meddelelsessegmenter indeholdt meddelelsestekst, altid skal medsendes i kommunikationen, fx ved besvarelse.

#### 4.2.1	Meddelelsestekst {#421-meddelelsestekst-feltet}
Meddelelsestekst-feltet er et fritekstfelt, hvori afsender skriver sin tekst. Det er obligatorisk for afsender at skrive fritekst i meddelelsens tekstfelt.

##### 4.2.1.1 Kopierede eller vedhæftede journalnotater {#journalnotater}
Hvis afsender kopierer og indsætter kortere journalnotater i meddelelsesteksten, anbefaler MedCom, at navn på forfatter, samt tidspunkt for oprettelse, af journalnotatet påskrives og medsendes i meddelelsens tekstfelt. Hvis afsender ønsker at medsende længere journalnotater, f.eks. mere end 1000 tegn (svarende til en halv side), anbefaler MedCom, at disse medsendes som vedhæftede filer. [Se afsnit 4.4 Vedhæftede filer](#bilag). 

#### 4.2.2 Signatur {#422-signatur}
Signatur skal altid udfyldes, medsendes af afsender og vises af modtager. Formålet med ’signatur’ er at tydeliggøre, hvem forfatteren af den afsendte Korrespondancemeddelelse er. Derfor er det et krav, at signatur udfyldes med bl.a. dato og tidspunkt, forfatters navn, stillingsbetegnelse og relevant telefonnummer. Det anbefales at anvende de stillingsbetegnelser, som slutbrugeren er vant til at anvende i fagsystemet. Hvis systemet ikke har indlagt stillingsbetegnelser, stiller MedCom en liste over stillingsbetegnelser til rådighed, som er sammensat af udtræk fra autorisationsregistret og SKS personaleklassifikation. <br>
<a href="https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-PractitionerRoles.html" target="_blank">Klik her for at læse liste over stillingsbetegnelser.</a> <br> 
MedCom <u>anbefaler</u>, at telefonnummer udfyldes med relevant telefonnummer, såsom telefonnummer på afdelingen, afsnittet, enheden som afsender er tilknyttet eller fx relevant vagttelefonnummer. Signatur bør så vidt muligt autoudfyldes af systemet. I tilfælde af elementer som ikke kan autoudfyldes af systemet, skal disse kunne tilføjes manuelt af brugeren, fx relevant telefonnummer.

### 4.3 Prioritet, krav om afgrænset brug {#43-prioritet,-krav-om-afgrænset-brug}
Det bliver muligt at markere en Korrespondancemeddelelse med prioritet men med afgrænset brug i praksis. Alle systemer testes for, at de kan modtage og vise prioritet. I forhold til anvendelse og afsendelse af prioritet, testes alle systemer for, at prioritet kun er synlig og mulig at bruge ved valg af den nationale kategori ”Vedr. henvisning”. Kravet fremgår af use case og tilhørende testprotokol. Dette er besluttet med baggrund i, at behovet for at anvende prioritet er rejst i regi af et nationalt projekt vedr. forbedring af henvisninger, herunder revidering af henvisningsflow. Anvendelsen af prioritet skal tilpasses løbende ift. udvikling i overenskomster og på baggrund af nationale krav fra Sundhedsministeriet, Sundhedsstyrelsen og Sundhedsdatastyrelsen. 

### 4.4 Vedhæftede filer {#bilag}
Det er muligt at vedhæfte filer, som indlejres i Korrespondancemeddelelsen. Når der er vedhæftet en fil til en Korrespondancemeddelelse, er det et krav, at det tydeligt vises i brugergrænsefladen. En vedhæftet fil kan både være en fil med en filtype, fx pdf, eller et link. De tilladte filtyper, som kan vedhæftes Korrespondancemeddelelsen, ses beskrevet i Implementation Guide for terminologi samt udstilles på terminologiserveren. <br>
<a href="https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-attachmentMimeTypes.html" target="_blank">Klik her for at finde de tilladte filtyper, som kan vedhæftes i Korrespondancemeddelelsen.</a> <br>
Det er besluttet, at der ikke må medsendes video i en Korrespondancemeddelelse grundet størrelsen. Det anbefales, at videoer deles via en forventet kommende national delingsservice. 
Der vil ikke være begrænsning på, hvor mange vedhæftede filer der kan medsendes i en Korrespondancemeddelelse, men i stedet begrænses størrelsen på hele meddelelsen, inklusiv vedhæftede filer. 100 MB er den maksimale størrelse på hele meddelelsen – inklusiv vedhæftede filer, som sendes over VANS. Alle vedhæftede filer tildeles et unikt ID.
<br> 
Afsender, som vælger at afsende, besvare eller videresende en Korrespondancemeddelelse, er ansvarlig for meddelelsens indhold, herunder vedhæftede filer. Forfatter på den vedhæftede fil er den fagperson, som oprindeligt har udarbejdet filen, og derfor er ansvarlig for det faglige indhold. MedCom anbefaler, at navn, samt tidspunkt for oprettelse, af den vedhæftede fil påskrives og medsendes. Systemfunktionalitet, der understøtter automatisk påsat navn på forfatter, samt tidspunkt for oprettelse, er optionel, og hvis denne funktionalitet ikke findes, anbefales afsender manuelt at påskrive disse informationer enten i den vedhæftede fil, eller som struktureret information i meddelelsessegmentet med den vedhæftede fil.  Når man, som afsender, vælger at medsende en fil, er man også ansvarlig for, at filens indhold er relevant for det aktuelle behandlingsforløb.
Som en del af test og certificering tjekker MedCom, at ID på vedhæftede filer indlæses og gemmes. Dette med henblik på at systemet ved modtagelse af en besvarelse kan genfinde og vise tidligere vedhæftede filer for brugeren. Krav til understøttelse af arbejdsgange samt brugervenlighed skal varetages lokalt i et samarbejde mellem kunde og it-leverandør.

### 4.5 Historisk overblik i brugergrænsefladen {#46-overblik-i-brugergrænsefladen}
Systemerne skal benytte sig af muligheden for at give det bedst mulige overblik over en meddelelses aktivitet (fx om meddelelsen er en ny modtaget meddelelse, en besvarelse eller en videresendelse) samt synliggøre kommunikationshistorikken i brugergrænsefladen.

Som en del af Korrespondancemeddelelsen medsendes en kommunikations identifier og referencer mellem meddelelsessegmenter og de tekniske elementer i provenance. Disse tekniske referencer medsendes med henblik på at kunne håndtere og koble meddelelser i en meddelelsestråd på samme måde på tværs af afsender og modtager, og således understøtte at Korrespondancemeddelelser dels placeres i rette tråd (via kommunikations identifier) og dels placeres i korrekt rækkefølge (via referencer mellem provenance og meddelelsessegment). 
Kommunikations identifieren oprettes af afsender, og der er en kommunikations identifier per meddelelsestråd. Formålet med kommunikations identifieren er at koble de sammenhørende Korrespondancemeddelelser i én meddelelsestråd, således at meddelelserne vises i samme tråd, både ved afsender og modtager. 
Reference mellem provenance og meddelelsessegment skal både indgå i forhold til den aktuelle meddelelse, som sendes, men også i forhold til eventuelle forudgående meddelelser. Formålet med referencerne er at koble rækkefølgen af Korrespondancemeddelelser, og at systemerne således ved, hvilke meddelelsessegmenter der er blevet tilføjet i en meddelelse.
MedCom har udarbejdet regler for håndtering og kobling af meddelelsestråde via kommunikations identifier samt referencer mellem provenance og meddelelsessegmenter. Reglerne beskriver håndtering og kobling af de mulige kommunikationsflows, herunder besvarelser og videresendelser samt håndtering af parallelle meddelelser (grundet samtidighed). <a href="https://medcomdk.github.io/MedCom-FHIR-Communication/assets/documents/governance-for-careCommunication.html" target="_blank">Klik her for at læse reglerne for håndtering af de mulige kommunikationsflows.</a> Reglerne indgår også i testprotokollerne med henblik på at sikre ensartet implementering og anvendelse.

### 4.6 Forsendelsesmuligheder {#45-forsendelsesmuligheder-og-overblik}
Afsender skal kunne sende en ny Korrespondancemeddelelse samt besvare en Korrespondancemeddelelse. Afsender bør (funktionaliteten er ikke påkrævet) kunne videresende en modtaget Korrespondancemeddelelse. MedCom anbefaler, at systemet understøtter funktionaliteten videresendelse.  Det er et krav, at alle modtagersystemer skal kunne modtage og vise, om meddelelsen er en ny, besvaret eller videresendt Korrespondancemeddelelse.
Både ved besvarelse og videresendelse af en Korrespondancemeddelelse indsættes den samme kategori og det samme emne automatisk af systemet. Brugeren skal kunne vælge at ændre det til en anden kategori og et andet emne. Referencer til det/de forudgående, eller videresendte, meddelelsessegment(er) skal indgå.

#### 4.6.1 Besvarelse {#451-besvarelse}
Det er et krav at kunne <b>afsende</b> en besvarelse til;

* en ny modtaget Korrespondancemeddelelse
* den senest modtaget besvarelse i en kommunikationstråd
* en videresendt Korrespondancemeddelelse

Afsender bør (funktionaliteten er ikke påkrævet) kunne besvare egen senest afsendte Korrespondancemeddelelse i en meddelelsestråd. Denne option vil støtte slutbrugeren i at kunne fortsætte kommunikationen i samme tråd, uden at skulle vente på svar fra modtager, da det ikke er tilladt at besvare en tidligere modtaget Korrespondancemeddelelse i en meddelelsestråd. Således vil funktionaliteten med besvarelse af egen senest afsendte Korrespondancemeddelelse gøre det muligt for afsender at fortsætte meddelelsestråden. Det er ikke tilladt, og må ikke være muligt, at besvare en tidligere modtaget Korrespondancemeddelelse.  

Det er et krav at kunne <b>modtage</b> og vise førnævnte besvarelsesscenarier inklusiv forudgående meddelelser, herunder meddelelsessegmenter og nye vedhæftede filer. 
Ved besvarelse indsættes afsender af den modtagne Korrespondancemeddelelse automatisk som modtager af besvarelsen (med SOR-kode og EAN-nummer). Afsender udfylder det nye meddelelsestekst-felt med selvskrevet tekst. Derudover påsættes også signatur, i samme meddelelsessegment, på afsender af besvarelsen. En besvarelse af en Korrespondancemeddelelse består således altid af minimum to meddelelsessegmenter, dvs. det tidligere modtaget meddelelsessegment og det nye, som afsender udfylder og medsender i besvarelsen. Hvis der er vedhæftet nye filer til besvarelsen, knyttes disse til meddelelsessegmentet. Hvis afsender har vedhæftet filer i den oprindelige Korrespondancemeddelelse, skal de vedhæftede filer fra afsender ikke medsendes igen ved besvarelse. I stedet tjekker MedCom, som en del af test og certificering, at systemerne indlæser og gemmer ID på de vedhæftede filer. Dette med henblik på at systemet ved modtagelse af en besvarelse kan genfinde og vise tidligere vedhæftede filer for brugeren. De ovenstående hændelserne for besvarelse af en Korrespondancemeddelelse er visualiseret i et aktivitetsdiagram i <a href="#Fig2">Figur 2</a>. 
Det er også muligt at besvare en tidligere modtaget EDIFACT, OIOXML eller FHIR MedCom-meddelelse med Korrespondancemeddelelsen. Ved besvarelse af en tidligere modtaget EDIFACT, OIOXML eller FHIR MedCom-meddelelse anvendes det medsendte ID fra den modtagne meddelelse og medsendes i Korrespondancemeddelelsen. Således er det muligt, via ID, at koble en relevant tråd af meddelelser sammen. Det kan eksempelvis ske ved, at man besvarer en modtaget henvisning med en Korrespondancemeddelelse, hvor forløbs-ID’et anvendes og medsendes i besvarelsen. Teknisk betyder det, at der ved besvarelse indsættes et nyt meddelelsessegment, bestående af et nyt meddelelsestekst-felt og signatur.

<figure>
<img src="../images/Dk_S2_besvarelse_cc.drawio.svg" alt="Viser aktivitetsdiagram over forløbet for besvarelse af CareCommunication besked." style="width:30%" id="Fig2">
<figcaption text-align="center"><b>Figur 2: Aktivitetsdiagram for besvarelse af en modtaget Korrespondancemeddelelse</b> </figcaption>
</figure>
<br><br>

<b>Parallelle besvarelser</b>
I de få tilfælde hvor samme Korrespondancemeddelelse besvares på samme tid af afsender og modtager, vil både afsender- og modtagersystemet modtage såkaldte parallelle Korrespondancemeddelelser. Det er et krav, at begge systemer indlæser meddelelserne i den tilhørende meddelelsestråd, selvom det ikke er den seneste meddelelse i tråden. Begge parallelt afsendte meddelelser skal således placeres i samme meddelelsestråd med samme kommunikations identifier. 
Det er et krav, at bruger skal kunne fortsætte kommunikationen i meddelelsestråden enten ved besvarelse eller modtagelse af en ny meddelelse, selvom der optræder parallelle Korrespondancemeddelelser.
Det er vigtigt at synliggøre, hvilke oplysninger slutbrugeren har været bekendt med på afsendelsestidspunktet, når parallelle meddelelser placeres i samme tråd. Derfor er det et krav, at systemerne inkluderer en synlig reference mellem Korrespondancemeddelelserne i tråden, således at brugerne tydeligt kan se, hvad de pågældende Korrespondancemeddelelser er et svar på samt synliggøre sammenhængen mellem de øvrige Korrespondancemeddelelser i meddelelsestråden. Det er op til leverandøren at sikre en visning, der understøtter brugeren bedst muligt. 
Det er et krav, at brugeraktør skal kunne fortsætte kommunikationen i meddelelsestråden, selvom der optræder parallelle Korrespondancemeddelelser.
Regler for håndtering af parallelle meddelelser, og visning i brugergrænsefladen, er beskrevet i governance for den nye Korrespondancemeddelelse.
<a href="https://medcomdk.github.io/MedCom-FHIR-Communication/assets/documents/governance-for-careCommunication.html" target="_blank">Klik her for at læse reglerne for håndtering af de mulige kommunikationsflows.</a>

#### 4.6.2. Videresendelse {#452-videresendelse}
Afsender bør kunne videresende en Korrespondancemeddelelse (funktionaliteten er ikke påkrævet). Det er op til afsender, hvornår det vurderes relevant at <b>videresende</b> en modtaget Korrespondancemeddelelse, såfremt systemet stiller denne mulighed til rådighed, som anbefalet af MedCom. 
Alle systemer skal kunne <b>modtage</b> en videresendelse. Modtager skal kun kunne besvare den videresendte meddelelse, dvs. at modtageren ikke kan besvare en eller flere af de forudgående meddelelsessegmenter inkluderet i den modtaget videresendelse. 
Afsender er ansvarlig for videresendelsen og relevansen ift. det aktuelle behandlingsforløb. Hvis systemet har funktionalitet, som kan videresende Korrespondancemeddelelse, skal afsender kunne videresende hele meddelelsestråden, som kan bestå af en eller flere meddelelser og vedhæftede filer. Funktionaliteten til at kunne udvælge hvilke dele af meddelelsestråden, man som afsender ønsker at videresende, er ikke påkrævet i systemerne men optionel. Hvis systemet ikke understøtter, at afsender ved videresendelse kan udvælge hvilke dele af meddelelsestråden og vedhæftede filer, der skal medsendes - og afsender ved, at der er dele i meddelelsestråden, som modtager ikke må modtage/se - skal afsender sende en ny Korrespondancemeddelelse i stedet for at videresende hele meddelelsestråden. Det anbefales, at afsender påskriver navn på den oprindelige forfatter af meddelelsen, som videresendes, i den nyoprettede Korrespondancemeddelelse.

MedCom anbefaler, at afsender beskriver årsagen til videresendelsen i meddelelsesteksten. Ved videresendelse vælger afsender, hvem modtageren er. Teknisk betyder det, at der ved videresendelse indsættes et nyt meddelelsessegment, bestående af et nyt meddelelsestekst-felt og signatur. Afsender udfylder det nye meddelelsestekst-felt med selvskrevet tekst, hvori det også anbefales at angive årsagen til videresendelsen. Derudover påsættes også signatur, i samme meddelelsessegment, på afsender af videresendelsen. En videresendelse består således altid af minimum to meddelelsessegmenter – det tidligere modtaget meddelelsessegment og det nye, som afsender udfylder og medsender ved videresendelsen. Hvis der er vedhæftet filer til videresendelsen, knyttes disse til et nyt meddelelsessegment. De ovenstående hændelser for videresendelse af en Korrespondancemeddelelse er visualiseret i et aktivitetsdiagram i <a href="#Fig3">Figur 3</a> og er beskrevet i <a href="https://medcomdk.github.io/MedCom-FHIR-Communication/assets/documents/governance-for-careCommunication.html" target="_blank">governance for den nye Korrespondancemeddelelse</a>. Hvis en bruger har videresendt en meddelelse, skal brugeren kunne fortsætte kommunikationen i den originale meddelelsestråd.

<figure>
<img src="../images/DK_S3_VideresendCc.drawio.svg" alt="Viser aktivitetsdiagram over forløbet for videresendelse af CareCommunication besked." style="width:30%" id="Fig3">
<figcaption text-align="center"><b>Figur 3: Aktivitetsdiagram for videresendelse af en modtaget Korrespondancemeddelelse</b> </figcaption>
</figure>
<br><br>

## 5 Opsummering af krav og anbefalinger til afsender- og modtagersystemer {#6-opsummering-af-krav-og-anbefalinger-til-afsender--og-modtagersystemer}
I <a href="#Tab1">tabel 1</a> opsummeres krav og anbefalinger til afsender- og modtagersystemer på baggrund af den tekstuelle del af dokumentationen. For tekniske detaljer henvises til de tekniske specifikationer, som findes via forsiden for Korrespondancemeddelelse i GitHub. <br><a href="https://medcomdk.github.io/dk-medcom-carecommunication/" target="_blank">Klik her for at læse de tekniske specifikationer for Korrespondancemeddelelsen på GitHub</a>. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-7bnw{background-color:#2c415c;border-color:inherit;color:#efefef;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Tabel 1: Opsummering af krav og anbefalinger til afsender- og modtagersystemer </caption>
<thead>
  <tr>
    <th class="tg-7bnw">   <br>    </th>
    <th class="tg-7bnw">   <br>Krav til afsendersystem   </th>
    <th class="tg-7bnw">   <br>Anbefalinger til afsendersystem   </th>
    <th class="tg-7bnw">   <br>Krav til modtagersystem   </th>
    <th class="tg-7bnw">   <br>Anbefalinger til modtager-system   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">National<br><br>kategori</td>
    <td class="tg-0pky">Det er et krav til systemet, at bruger kan vælge og påsætte en national kategori til meddelelsen, og den valgte kategori er synlig for afsender.<br><br>Det er et krav, at kategori skal påsættes, inden meddelelsen kan afsendes.   <br></td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>Det er et krav, at alle systemer skal kunne modtage og vise den valgte kategori på meddelelsen.<br>&nbsp;&nbsp;&nbsp;<br> <br>&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0pky">   <br>Det anbefales at gøre brug af muligheden for automatisk fordeling, ved modtagelse, efter de nationale kategorier. Det er ikke en del af MedComs test og certificering. <br>    </td>
  </tr>
  <tr>
    <td class="tg-0pky">Emneord   </td>
    <td class="tg-0pky">Det er et  krav til systemet, at bruger kan vælge (optionelt) at indsætte emneord til en meddelelse, og at det valgte emneord er synligt for afsender.<br><br>Emnefeltet kan  enten udfyldes med selvskrevet fritekst eller de regionalt aftalte emneord.</td>
    <td class="tg-0pky">Det anbefales, at regionalt aftalte emneord mappes op til de nationalt aftalte kategorier, hvor de pågældende emneord relateres til de relevante kategorier. <br>Det anbefales, at brugeren præsenteres for de regionalt aftalte emneord, som de kender, og ved valg af emneord, påsætter systemet automatisk den pågældende relevante kategori (som er valgt ved forudgående mapning mellem kategori og emneord).<br>Således slipper brugeren for at skulle tage  stilling til kategori ved regionalt aftalte emneord. <br><span style="color:#333">   </span><br><span style="color:#333">Det er ikke en del af MedComs test og certificering.    </span></td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>Det er et krav, at alle systemer kan modtage og vise det valgte emneord.&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0pky">Prioritet   </td>
    <td class="tg-0pky">Det er et krav til systemet, at prioritet kun er synlig og mulig at anvende ved valg af den nationale kategori ”Vedr. henvisning”.   </td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>Det er et krav, at alle systemer kan modtage og vise prioritet.&nbsp;&nbsp;&nbsp;</td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0pky">Meddelelsestekst</td>
    <td class="tg-0pky">Det er et krav til systemet, at afsender skal skrive meddelelsestekst før meddelelsen kan afsendes.</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"> Det er et krav, at alle systemer kan modtage og vise tekst i meddelelsens tekstfelt.    </td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">Vedhæftede filer</td>
    <td class="tg-0pky">Det er et krav til systemet, at bruger kan vælge at vedhæfte tilladte filtyper.<br>Det er et krav til systemet at alle vedhæftede filer tilføjes et ID.</td>
    <td class="tg-0pky"> Det anbefales, at afsender påskriver navn på forfatter, samt tidspunkt for oprettelse, af den vedhæftede fil, hvis systemet ikke automatisk påsætter forfatter på den vedhæftede fil.</td>
    <td class="tg-0pky">Det er et krav, at alle systemer kan modtage og vise vedhæftede filer. Som en del af test og certificering tjekker MedCom, at ID på vedhæftede filer indlæses og gemmes. Dette med henblik på at systemet ved modtagelse af en besvarelse kan genfinde og vise tidligere vedhæftede filer for brugeren.<br>Det er et krav, at det tydeligt vises i brugergrænsefladen, når der er vedhæftet en fil i Korrespondancemeddelelsen.</td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0pky">Signatur</td>
    <td class="tg-0pky">Det er et krav til systemet at udfylde og medsende signatur med bl.a. forfatters navn, stillingsbetegnelse og relevant telefonnummer.<br>I tilfælde af elementer, som ikke kan autoudfyldes af systemet, skal  dette kunne tilføjes manuelt af afsenderen, fx telefonnummer.</td>
    <td class="tg-0pky">Det anbefales, at telefonnummer udfyldes med relevant telefonnummer, så som telefonnummer på afdelingen, afsnittet, enheden eller fx relevant vagttelefonnummer.   </td>
    <td class="tg-0pky">Det er et krav, at alle systemer kan modtage og vise forfatters signatur med dertilhørende informationer.</td>
    <td class="tg-0pky">&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td class="tg-0pky">Kommunikations identifier</td>
    <td class="tg-0pky"><b>Ny</b><br>Det er et krav til afsendersystemet automatisk at påsætte en kommunikations identifier ved oprettelse af en ny Korrespondancemeddelelse.<br><b>Besvarelse</b><br>Det er et krav til afsendersystemet automatisk at bruge samme kommunikations identifier i besvarelsen som i den modtaget meddelelse.<br><b>Videresendelse</b><br>Det er et krav til afsendersystemet automatisk at påsætte en ny kommunikations identifier ved oprettelse af en videresendelse.</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Det er et krav til modtagersystemet automatisk at placere modtagne sammenhørende Korrespondancemeddelelser i samme meddelelsestråd pba. meddelelsernes kommunikations identifier.</td>
    <td class="tg-0pky"></td>
  </tr>
    <tr>
    <td class="tg-0pky">Referencer mellem provenance og meddelelsessegmenter</td>
    <td class="tg-0pky"><b>Ny</b><br>Det er et krav til afsendersystemet automatisk at medsende referencer mellem meddelelsessegmenter og provenance.<br><b>Besvarelse/videresendelse</b><br>Det er et krav til afsendersystemet automatisk at medsende referencer mellem meddelelsessegmenter og provenance i den aktuelle meddelelse samt historik (indeholdende forudgående provenances) til besvarelsen/videresendelsen.</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Det er et krav til modtagersystemet automatisk at håndtere og koble de tekniske referencer med henblik på at placere modtagne meddelelser i korrekt rækkefølge i en meddelelsestråd.</td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0lax">Besvarelse</td>
    <td class="tg-0lax">Det er et krav til systemet, at afsender kan besvare en ny modtaget Korrespondancemeddelelse, en videresendt Korrespondancemeddelelse og den senest modtaget besvarelse af en Korrespondancemeddelelse i en meddelelsestråd.<br><br>Det er et krav til systemet automatisk at indsætte referencer til de forudgående meddelelser fra samme meddelelsestråd, herundermeddelelsessegmenter dvs. meddelelsestekst og signatur og eventuelle nye vedhæftede filer, til besvarelsen.</td>
    <td class="tg-0lax">Afsender bør kunne besvare egen senest afsendte Korrespondancemeddelelse i en meddelelsestråd.</td>
    <td class="tg-0lax">Det er et krav, at modtagersystemet skal kunne modtage og vise, at meddelelsen er en besvarelse.<br><br>Det er et krav, at alle systemer kan modtage og vise en besvarelse inklusiv forudgående meddelelser, herunder meddelelsessegmenter og vedhæftede filer.<br><br>Det er et krav, at det tydeligt vises i brugergrænsefladen, når der er vedhæftet en fil i den besvarede Korrespondancemeddelelse.</td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax">Videresendelse</td>
    <td class="tg-0lax">Hvis systemet understøtter funktionaliteten for videresendelse af en Korrespondancemeddelelse, er det et krav til systemet automatisk at indsætte referencer til de forudgående meddelelser fra samme meddelelsestråd samt meddelelsessegmenter, dvs. meddelelsestekst, signatur og eventuelle vedhæftede filer, til videresendelsen.</td>
    <td class="tg-0lax">Det anbefales, at systemet understøtter, at afsender kan videresende en modtaget Korrespondancemeddelelse.</td>
    <td class="tg-0lax">Det er et krav, at modtagersystemet skal kunne modtage og vise, at meddelelsen er en videresendt Korrespondancemeddelelse.<br><br>Der er et krav, at alle systemer kan modtage og vise en modtaget videresendelse inklusiv referencer til de forudgående meddelelser samt meddelelsessegmenter.<br><br>Det er et krav, at det tydeligt vises i brugergrænsefladen, når der er vedhæftet en fil i den videresendte Korrespondancemeddelelse.<br><br>Det er et krav, at modtager ikke kan besvare forudgående meddelelsessegmenter inkluderet i videresendelsen men kun kan besvare den seneste meddelelse, som er videresendelsen.</td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax">Årsagen til videresendelse</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax">Det anbefales, at afsender beskriver årsagen til vidersendelsen i meddelelsens tekstfelt. </td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax">Størrelse på meddelelsen inklusiv<br>vedhæftede filer</td>
    <td class="tg-0lax">Det er et krav til systemet at notificere afsender, hvis meddelelsen, inklusiv vedhæftede filer, overstiger den tilladte størrelse på 100 MB.</td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"></td>
    <td class="tg-0lax"></td>
  </tr>
</tbody>
</table></div>

## 6 Use Cases {#6-use-cases}
Til brug for den tekniske implementering af Korrespondancemeddelelsen findes use case beskrivelser, som demonstrerer indhold og funktionalitet i Korrespondancemeddelelsen, herunder krav og anbefalinger til afsender- og modtagersystemer. <a href="https://medcomdk.github.io/dk-medcom-carecommunication/#12-use-cases" target="_blank">Klik her for at finde use cases. </a> 

## 7 Ibrugtagning i SOR/SOR-EDI {#ibrugtagning} {#ibrugtagning}
Inden ibrugtagning skal meddelelsestypen for Korrespondancemeddelelse ajourføres i SOR-EDI for den enkelte aktør, så der er valide data om, hvem der har implementeret og anvender Korrespondancemeddelelsen, og derved hvem der kan afsende og modtage Korrespondancemeddelelsen.