[Return](../../index.md)

# Non-Technical Guidelines

**Table of Content**
* [1 Introduktion](#1-introduktion)
* [2 Formål](#2-formål)
* [3 Baggrund](#3-baggrund)
* [4 Illustration af FHIR korrespondancemeddelelse](#4-illustration-af-fhir-korrespondancemeddelelse)
* [5 Krav og anbefalinger til FHIR Korrespondancemeddelelse](#5-krav-og-anbefalinger-til-fhir-korrespondancemeddelelse)
* [6 Kategori og Emne](#6-kategori-og-emne)
* [7 Prioritet- krav om afgrænset brug](#7-prioritet-krav-om-afgrænset-brug)
* [8 Bilag](#8-bilag)
* [9 Forsendelsesmuligheder](#9-forsendelsesmuligheder)
* [10 Use Cases](#10-use-cases)
* [11 Overgangsperiode med samtidig drift af korrespondancemeddelelse DIS91/XDIS91 og FHIR-Korrespondancemeddelelse](#11-overgangsperiode-med-samtidig-drift-af-korrespondancemeddelelse-dis91xdis91-og-fhir-korrespondancemeddelelse)
<hr/>
<p>&nbsp;</p>

## 1 Introduktion
Dette er den tekstuelle del af dokumentationen til MedComs FHIR-standard for korrespondancemeddelelser, fremover refereret til som FHIR-KM. Den indeholder formål, baggrund, en illustration af FHIR-KM og krav og anbefalinger til FHIR-KM, herunder funktionaliteter, samt information om en overgangsperiode med samtidig drift af korrespondancemeddelelsen <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> og <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a> og FHIR-KM.
Målgruppen for denne tekst er it-systemleverandører, og implementeringsansvarlige, som skal it-understøtte afsendelse og modtagelse af FHIR-KM
Krav og anbefalinger til indhold, herunder funktionaliteter, er udarbejdet i samarbejde med en nedsat <a href="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Arb.grp.%20FHIR-Korrespondancemeddelelse" target="_blank">national arbejdsgruppe</a>  med repræsentanter fra regioner, kommuner og praktiserende læger. Derudover har materiale med beskrivelse af indhold og funktionalitet i FHIR-KM været sendt i høring ved relevante MedCom-grupper samt været bredt tilgængeligt for kommentering via publicering på MedComs hjemmeside.
De tekniske specifikationer (profilen) for FHIR-KM standarden findes via <a href="https://simplifier.net/medcom-fhir-messaging " target="_blank">Simplifier</a> . I profilen, de tekniske specifikationer, har dansk sprog forrang for engelsk.
FHIR-KM skal på sigt erstatte MedCom-standarden korrespondancemeddelelse <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> og <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>, som bliver udfaset. 

## 2 Formål
MedComs styregruppe godkendte d. 3. marts 2019, at MedCom udarbejder en ny forbedret standard for korrespondancemeddelelser (FHIR-KM). 
Formålet med FHIR-KM er at:
* Understøtte digital kommunikation mellem sundhedsvæsnets parter
* Styrke opstarten af digital kommunikation mellem det sociale-, psykiatriske- og somatiske område  
* Give mulighed for at vedhæfte og udveksle digitale bilag mellem forskellige aktører
* Understøtte automatisk sortering ved modtagelse via brug af fælles nationale kategorier (=overordnede overskrifter)
* Respektere regionale samarbejdsaftaler ved at bevare muligheden for at angive regionalt aftalte emneord (=supplerende overskrifter)
<p>&nbsp;</p>

## 3 Baggrund 
Korrespondancemeddelelsen <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a>/<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>  bruges af mange af sundhedsvæsnets parter. Standarden er implementeret i mere end 70 it-systemer, og der udveksles årligt ca. 5 mio. korrespondancemeddelelser. Det er i dag mellem de praktiserende læger og hjemmesygeplejen i kommunerne, at der udveksles flest korrespondancemeddelelser. 
Der er udsigt til øget brug af korrespondancemeddelelsen i takt med implementering af FMK indenfor social- og misbrugsområdet. Samtidig er digital kommunikation mellem socialområdet og sundhedsområdet under opstart, hvor korrespondancemeddelelsen allerede spiller en væsentlig rolle, da den typisk implementeres først.
Der er gennem flere år indkommet ønsker til forbedringer og ændringer i korrespondancemeddelelsen <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a>/<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a> fra flere forskellige faggrupper. 

Det er bl.a. blevet efterspurgt:
* at der gennemføres tekniske forbedringer i form af selvstændigt felt til overskrift/kategorisering
* at det bliver muligt at indlejre bilag i kommunikationen mellem bl.a. kommuner, hospitaler og praktiserende læger
* at der bruges unikke ID’er i meddelelsen, så den teknisk kan kædes sammen med andre meddelelser i en tråd, og derved øge læseoverblikket for det kliniske personale
* at brug af ”prioritet” overvejes, herunder fælles anvendelsesregler for brug af prioritet
<p>&nbsp;</p>

I 2018 nedsatte MedCom <a href="https://www.medcom.dk/projekter/psykiatri-og-socialomraadet/operationel-styregruppe-for-social-og-sundhedsomraadet" target="_blank">en operationel styregruppe for social- og sundhedsområdet</a> med henblik på at følge, og understøtte, udviklingen på social- og sundhedsområdet. Den operationelle styregruppe efterspørger mulighed for at kunne udveksle bilag digitalt, herunder bl.a.: koordinationsplaner/indsatsplaner, behandlingsplaner samt kliniske dokumenter, eller skemaer til teammøder.
På baggrund af ovenstående behov, bliver FHIR-KM udarbejdet

## 4 Illustration af FHIR-Korrespondancemeddelelse
<a href="#Fig1">Figur 1</a> er en illustration af indhold i FHIR-KM. Illustrationen er et eksempel og indeholder ikke alle data, som er i standarden, og afspejler ikke det enkelte systems brugergrænseflade.

<figure>
<img src="../images/IllustrationAfKorrespondanceMed.png" alt="Eksempel på, en korrespondancemeddelese" style="width:40%" id="Fig1">
<figcaption text-align = "center"><b>Figur 1: Eksempel på, indhold i FHIR korresponcencemeddelese </b></figcaption>
</figure>

<p>&nbsp;</p>

## 5 Krav og anbefalinger til FHIR-Korrespondancemeddelelse
FHIR-KM <b>skal</b> indeholde information om:
* Borger/patient som henvendelsen vedrører
* Afsender
* Modtager
* Kategori (fortæller på et overordnet niveau, hvad indholdet i FHIR-KM drejer sig om)
    * Kategorien skal altid være synlig, både for afsender og modtager
* Meddelelsestekst
* Forfatter (herunder bl.a. dato og tidspunkt, afsenders navn, stillingbetegnelse og overordnet tele-fonnummer)
* Tekniske data på meddelelsen (herunder bl.a. ID)
<p>&nbsp;</p>
FHIR-KM <b>kan </b> (=frivilligt) indeholde:
* Emne (supplerer den valgte kategori med yderligere emneord, som fortæller i yderligere detaljer, hvad indholdet i FHIR-KM drejer sig om)
Bilag/Vedhæftet filer
<p>&nbsp;</p>

## 6 Kategori og Emne
Kategori består af en national fastlagt liste med aftalte kategorier, som modtager vælger kategori ud fra. Kategorilisten muliggør, at modtager kan fordele (automatisk) indkomne FHIR-KM, fx til det relevante kommunale område. Det er et krav, at kategorien vises for brugeren men muligheden for fordeling efter de nationale kategorier i FHIR-KM er ikke en del af MedCom test og certificering.
Følgende nationale kategorier er aftalt: 
* Ambulant
* Andet
* Dødsfald
* Forløbskoordinering
* Hjælpemidler
* Medicin
* Psykiatri, social, handicap
* Rusmiddelbehandling
* Sundhedspleje
* Sygepleje
* Telemedicin
* Træning
* Udskrivelse
* Vedr. henvisning
* Visitation
* Undersøgelsessvar

I emnefeltet har man mulighed for at supplere den valgte kategori med yderligere emneord. Emnefeltet udfyldes enten med de regionalt aftalte emneord eller selvskrevet fritekst. Det er valgt at bibeholde emnefeltet netop for at kunne understøtte de eksisterende samarbejdsaftaler med de regionalt aftalte emneord. Der er ikke krav til, eller forventning om, at systemerne kan fordele efter emneord. 

For at understøtte brugeren mest muligt <b> anbefales følgende</b>:
* Regionalt aftalte emneord mappes op til de nationalt aftalte kategorier, hvor de pågældende emneord relateres til de relevante kategorier
* I de brugssituationer, hvor der er regionalt aftalte emneord:
    * Brugeren præsenteres for de regionalt aftalte emneord, som de kender, og ved valg af emneord, påsætter systemet automatisk den pågældende relevante kategori (som er valgt ved forudgående mapning mellem kategori og emneord).  Brugeren slipper derved for at skulle tage stilling til kategori.
    * Kategorien skal altid være synlig, både for afsender og modtager – også selvom man har regionalt aftalte emneord. Kategorien kan dog, for at understøtte brugeren, gøres mindre synlig i brugergrænsefladen, fx ved at ’fade den ud’, hvis der er regionalt aftalte emneord. 
* I de brugssituationer, hvor der ikke er regionalt aftalte emneord:
    * Brugeren vælger kategori og har herefter mulighed for at supplere med selvskrevet emneord som fritekst i emnefeltet. 
<p>&nbsp;</p>
MedCom stiller en klassifikationsserver til rådighed, som udstiller de nationale kategorier og tilladte bilagstyper/filtyper. Governance, herunder adgang og opdatering, af klassifikationsserveren samt vedligeholdelse af listen over de nationalt aftalte kategorier fastlægges i MedCom-regi i løbet af 2021. 

## 7 Prioritet-krav om afgrænset brug
Det bliver desuden muligt at markere en FHIR-KM med prioritet. Alle systemer testes for, at de kan modtage og vise prioritet. I forhold til anvendelse og afsendelse af prioritet, testes alle systemer for, at prioritet kun er synlig og mulig at bruge ved valg af den nationale kategori ”Vedr. henvisning”. Kravet fremgår af use case og tilhørende testprotokol. Dette med baggrund i at behovet for at anvende prioritet er rejst i regi af projektet vedr. forbedring af henvisninger, herunder revidering af henvisningsflowet. Anvendelsen af prioritet skal tilpasses løbende ift. udvikling i overenskomster og på baggrund af nationale krav fra Sundhedsministeriet, Sundhedsstyrelsen og Sundhedsdatastyrelsen.


## 8 Bilag
Det er muligt at vedhæfte bilag/filer, som indlejres i FHIR-KM. Der findes en bilagsliste over tilladte bilagstyper på klassifikationsserveren. Følgende filtyper er tilladte og kan medsendes FHIR-KM: PDF, PNG, JPEG, GIF. 
Det er besluttet, at der ikke må medsendes video i FHIR-KM grundet størrelsen. Det anbefales, at videoer deles via en national delingsservice. 
Der vil ikke være begrænsning på, hvor mange bilag der kan medsendes i FHIR-KM men i stedet begrænsning på størrelsen på hele FHIR-KM, inklusive bilag. 50 MB er den maksimale størrelse på hele FHIR-KM, som sendes over VANS. Der kommer ID på bilag.

MedCom tjekker som en del af test og certificering, at bilag sikkert modtages og gemmes på teknisk niveau, mens krav til understøttelse af arbejdsgange samt brugervenlighed skal varetages lokalt i et samarbejde mellem kunde og it-leverandør.

Afsender, som vælger at oprette, afsende, besvare eller videresende en korrespondancemeddelelse, er ansvarlig for meddelelsens indhold, herunder vedhæftede bilag/filer. Forfatter på bilag er den fagperson, som oprindeligt har udarbejdet bilaget, og derfor er ansvarlig for det faglige indhold. Når man som afsender vælger at medsende et bilag, er man dog også ansvarlig for, at bilagets indhold er relevant for det aktuelle behandlingsforløb.

## 9 Forsendelsesmuligheder
I FHIR-KM anvendes Unikke ID’er, således at den teknisk kan kædes sammen med og referere til andre meddelelser.
Det er muligt både at besvare og videresende en modtaget FHIR-KM. Både ved besvarelse og videresendelse er brugeren ansvarlig for, hvilke dele af den modtaget korrespondancetråd der skal medtages. Det betyder, at brugeren aktivt skal vælge hvilke dele af tekstmeddelelsen, samt hvilke bilag, som skal indgå i besvarelsen/videresendelse. 
Både ved besvarelse og videresendelse af en FHIR-KM indsættes den samme kategori og det samme emne automatisk. Brugeren har dog herefter mulighed for at ændre det til en anden kategori og et andet emne.

<b>Ved besvarelse</b>
Ved besvarelsen skal adressen fra den modtaget FHIR-KM indgå som modtager af beskeden. 
Det er muligt at besvare en tidligere modtaget MedCom-meddelelse med en FHIR-KM. Også her skal adressen fra den modtaget MedCom-meddelelse indgå som modtager af beskeden. Forløbs-ID samt reference til den modtaget MedCom-standard (lokations- samt EAN-nummer) kan anvendes til at kæde meddelelserne sammen. 

<b>Ved videresendelse</b>
Det er op til brugerne, hvornår de vurderer det relevant at videresende en modtaget FHIR-KM. Brugerne er derfor ansvarlige for videresendelsen og relevansen ift. det aktuelle behandlingsforløb.
Det er muligt at tilføje en årsag til videresendelsen. Årsagen kan (optionelt) angives i et særskilt felt, når man vælger at videresende en FHIR-KM.
Hvis man vælger at besvare en videresendt FHIR-KM, vælger man selv, hvem man vil besvare tilbage til, fx den oprindelige afsender eller anden forudgående part i korrespondancetråden.

## 10 Use Cases
Til brug for den tekniske implementering af FHIR-KM findes use case beskrivelser på udvalgte use cases, som fokuserer på den digitale kommunikation mellem kommune, region og praktiserende læge, samt på tværs af regioner. Use cases findes via <a href="https://simplifier.net/medcom-fhir-messaging " target="_blank">Simplifier</a> 

Korrespondancemeddelelsen bruges af mange forskellige parter, og faggrupper i sundhedsvæsenet, og med forskellige formål som ad hoc kommunikation. Derfor er det ikke muligt at lave use cases, som bely-ser samtlige scenarier. De udvalgte use cases er valgt med henblik på at demonstrere indhold og funktio-nalitet i den FHIR-KM.

## 11	Overgangsperiode med samtidig drift af korrespondancemeddelelse DIS91/XDIS91 og FHIR-Korrespondancemeddelelse

FHIR-KM skal på sigt erstatte MedCom-standarden korrespondancemeddelelse DIS91/XDIS91, som bliver udfaset. 
<i>Der forventes en gradvis implementering af FHIR-KM, da det vil være komplekst at skifte samtidigt i de ca. 70 it-systemer, som i dag anvender korrespondancemeddelelse <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a>/<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>. Det tilstræbes dog, at over-gangsperioden skal være så kort som mulig og for de store aktører og anvendere af korrespondancemedde-lelsen, så som regioner, kommuner og lægepraksis, arbejdes der hen mod en fælles dato/periode for over-gang til FHIR-KM. Mulige services, så som portalløsning eller central konvertering, for de mindre systemer/faggrupper undersøges.</i> 
(Oplæg skal behandles i MedComs styregruppe)

Det bliver de parter, som har behov for de nye funktioner, som vedhæftning af bilag og struktureret brug af kategori, som driver implementering og udbredelse af FHIR-KM. 
Der skal indgås sundheds- og samarbejdsaftaler om at tage FHIR-KM i brug. Ligeledes skal denne nye meddelelsestype også ajourføres i Sundhedsvæsnets Organisationsregister (SOR) for den enkelte aktør, således at der er valide data om, hvem der har implementeret og anvender FHIR-KM – og derved hvem der kan modtage og afsende FHIR-KM. Forudsætningen for at brugen af SOR-data kan fungere i praksis som et hjælperedskab til korrekt adressering, er fælles aftaler for opdatering og anvendelse. 

