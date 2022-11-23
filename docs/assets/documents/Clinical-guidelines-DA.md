[Return](../../index.md)

# Sundhedsfaglige retningslinjer for anvendelse 

**Table of contents**
* [1 Introduktion](#1-introduktion)
* [2 Formål](#2-formål)
* [3 Illustration af FHIR korrespondancemeddelelse](#4-illustration-af-fhir-korrespondancemeddelelse)
* [4 Krav og anbefalinger til FHIR Korrespondancemeddelelse](#5-krav-og-anbefalinger-til-fhir-korrespondancemeddelelse)
    * [4.1 Kategori og Emne](#51-kategori-og-emne)
    * [4.2 Meddelelsessegment](#52-formatering-af-meddelelsestekst)
      * [4.2.1 Meddelesestekst](#51-kategori-og-emne)
      * [4.2.2 Signatur](#52-formatering-af-meddelelsestekst)
    * [4.3 Prioritet-krav om afgrænset brug](#53-prioritet-krav-om-afgrænset-brug)
    * [4.4 Bilag](#54-bilag)
    * [4.5 Forsendelsesmuligheder og overblik](#56-forsendelsesmuligheder-og-overblik)
        * [4.5.1 Ved besvarelse](#561-ved-besvarelse)
        * [4.5.2 Ved videresendelse](#562ved-videresendelse)
        * [4.5.3 Annulering og rettelse]()
    * [4.6 Overblik i brugergrænsefladen](#563-overblik-i-brugergrænsefladen)
* [6 Opsummering af krav og anbefalinger til afsender- og modtagersystemer](#6-opsummering-af-krav-og-anbefalinger-til-afsender--og-modtagersystemer)
* [7 Use Cases](#10-use-cases)
* [8 Ibrugtagning](#8-ibrugtagning)

<p>&nbsp;</p>

## 1 Introduktion
Dette er den tekstuelle del af dokumentationen til MedComs FHIR-standard for korrespondancemeddelelser (på engelsk CareCommunication). Den tekstuelle del indeholder information om formål, baggrund, en illustration af indholdet i korrespondancemeddelelsen, krav og anbefalinger samt ibrugtagning.
Målgruppen for denne tekst er it-systemleverandører og implementeringsansvarlige, som skal it-understøtte afsendelse og modtagelse af korrespondancemeddelelsen. 


Krav og anbefalinger til indhold, herunder funktionaliteter, er udarbejdet i samarbejde med en nedsat <a href="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Arb.grp.%20FHIR-Korrespondancemeddelelse" target="_blank">national arbejdsgruppe</a> med repræsentanter fra regioner, kommuner og praktiserende læger. Derudover har indholdet på denne side været sendt i høring ved relevante MedCom-grupper samt været bredt tilgængeligt for kommentering via publicering på MedComs hjemmeside.
De tekniske specifikationer for korrespondancemeddelelse findes via forsiden for korrespondancemeddelelse på GitHub. <a href="https://medcomdk.github.io/dk-medcom-carecommunication/ " target="_blank">Klik her for at læse de tekniske specifikationer for korrespondancemeddelelsen.</a> 
>Note: I tilfælde af uoverensstemmelser i beskrivelsen af de sundhedsfaglige retningslinjer for anvendelse på dansk og engelsk er det den danske beskrivelse af de sundhedsfaglige retningslinjer for anvendelse, der er gældende.

 <!-- samt information om en overgangsperiode med samtidig drift af korrespondancemeddelelsen <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> og <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a> og FHIR-KM. -->


## 2 Formål
Formålet med korrespondancemeddelelsen er at understøtte den digitale kommunikation mellem sundhedsvæsnets parter, herunder bl.a. også psykiatri- og socialområdet, hvor initiativ til ny version af korrespondancemeddelelsen er forankret. Korrespondancemeddelelsen anvendes til sikker elektronisk kommunikation af personhenførbare oplysninger og anvendes typisk til ad hoc kommunikation. Korrespondancemeddelelsen skal dog kun bruges på de områder, hvor der i forvejen ikke findes tilgængelige strukturerede MedCom standarder. Korrespondancemeddelelsen skal ikke anvendes ved sager af akut karakter.
Formålet med korrespondancemeddelelse er bl.a. at:
*	Give mulighed for at vedhæfte og udveksle digitale filer
*	Give mulighed for formatering af meddelelsesteksten
*	Understøtte automatisk fordeling ved modtagelse via brug af fælles nationale kategorier (=overordnede overskrifter)
*	Respektere regionale samarbejdsaftaler med kommuner og praksislæger ved at bevare muligheden for at angive aftalte emneord (=supplerende overskrifter)
*	Tydeliggøre afsender af korrespondancemeddelelsen med påkrævet signatur
*	Give mulighed for at anvende teknisk indhold, således at det i brugergrænsefladen er muligt at tydeliggøre kommunikationshistorik og aktivitet (fx om en meddelelse er besvaret, videresendt, rettet eller annulleret)

<p>&nbsp;</p>


## 3 Illustration af Korrespondancemeddelelsen
<a href="#Fig1">Figur 1</a> er en illustration af indholdet i en korrespondancemeddelelse. Illustrationen er et eksempel og indeholder ikke alle data, som er i standarden og afspejler ikke det enkelte systems brugergrænseflade. 

<figure>
<img src="../images/IllustrationKorrespondance.svg" alt="Eksempel på, en korrespondancemeddelese" style="width:40%" id="Fig1">
<figcaption text-align = "center"><b>Figur 1: Eksempel på indhold i FHIR korrespondencemeddelelse </b></figcaption>
</figure>

<p>&nbsp;</p>

## 4 Krav og anbefalinger til korrespondancemeddelelsen
Korrespondancemeddelelsen <u>skal</u> indeholde information om:
*	Borger/patient som henvendelsen vedrører
*	Afsender
*	Modtager
*	Kategori (fortæller på et overordnet niveau, hvad indholdet i korrespondancemeddelelsen drejer sig om)
  * Kategorien skal altid være synlig for både afsender og modtager
*	Meddelelsessegment (dvs. meddelelsestekst og signatur)
  *	Signatur skal indeholde dato og tidspunkt, forfatters navn, stillingbetegnelse og relevant telefonnummer
*	Tekniske data på meddelelsen (herunder bl.a. ID’er og eventuelle referencer til forudgående meddelelser. <a href="https://medcomdk.github.io/dk-medcom-carecommunication/assets/documents/Intro-Technical-Spec-ENG.html" target="_blank"> Klik her for at se den tekniske dokumentation for yderligere information.</a>)
<p>&nbsp;</p>

Korrespondancemeddelelsen <u>kan</u> (=frivilligt) indeholde:
*	Specifik modtager hvis relevant (fx specifik sagsbehandler eller socialrådgiver i kommunen) 
*	Emne (supplerer den valgte kategori med et emneord, som fortæller i detaljer, hvad indholdet i korrespondancemeddelelsen drejer sig om)
*	Formatering af meddelelsesteksten (herunder bl.a. brug af formatering som <b>fed</b>, <u>understregning</u>, <em>kursiv</em> og tabeller i teksten)
*	Vedhæftede filer (knyttes til meddelelsessegmentet)
*	Prioritet (Obs. Kan kun påsættes ved valg af den nationale kategori ”Vedr. henvisning”) 
<p>&nbsp;</p>

### 4.1 Kategori og Emne
Kategori består af en national fastlagt liste med aftalte kategorier, som afsender vælger kategori ud fra. Kategorilisten muliggør, at modtager automatisk kan fordele indkomne korrespondancemeddelelse, fx til det relevante kommunale område. Det er et krav, at kategorien vises for brugeren, men muligheden for automatisk fordeling ved modtagelse efter de nationale kategorier i korrespondancemeddelelsen er ikke en del af MedComs test og certificering.
<a href="https://medcomfhir.dk/ig/terminology/CodeSystem-medcom-careCommunication-categoryCodes.html" target="_blank"> Klik her for at læse de aftalte nationale kategorier.</a> 

Der er oprettet en kategori ”Andet” i de tilfælde, hvor de øvrige kategorier på listen ikke vurderes tilstrækkeligt dækkende for indholdet i korrespondancemeddelelsen. Ved valg af kategorien ”Andet” er det et krav, at afsender medsender et emne. MedCom anbefaler, at afsender så vidt muligt undlader at anvende kategorien ”Andet”, undtaget i de tilfælde hvor det er absolut nødvendigt.

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

MedCom stiller en terminologiserver til rådighed, som bl.a. udstiller de nationale kategorier og tilladte filtyper, som kan vedhæftes korrespondancemeddelelsen. Governance, herunder bl.a. adgang, opdatering og vedligeholdelse, for såvel terminologiserveren som listen over de nationalt aftalte kategorier, håndteres og fastlægges i MedCom-regi Governance for terminologier og serveren findes via forsiden for Governance for MedCom FHIR Messaging. 
<a href="https://medcomdk.github.io/MedCom-FHIR-Communication/" target="_blank">Klik her for at læse Governance for MedCom FHIR Messaging</a>

### 4.2 Meddelelsessegment
Et meddelelsessegment består af korrespondancemeddelelsens meddelelsestekst og afsenders signatur. I de tilfælde hvor der vedhæftes en fil til korrespondancemeddelelsen, vil vedhæftningen knyttes til meddelelsessegmentet. 

#### 4.2.1	Meddelelsestekst-feltet
Meddelelsestekst-feltet er et fritekstfelt, hvori afsender skriver sin tekst.
Det er muligt at formatere meddelelsesteksten, herunder bl.a. brug af <b>fed</b>, <u>understregning</u>, <em>kursiv</em> og tabeller i teksten. Formateringen af meddelelsesteksten følger XHTML. MedCom definerer et subset af XHTML, som systemerne som minimum skal understøtte. For brugeren skal det derfor være muligt at benytte formatering i meddelelsesteksten i overensstemmelse med det definerede subset.

#### 4.2.2 Signatur
SSignatur skal altid udfyldes, medsendes af afsender og vises af modtager. Formålet med ’signatur’ er at tydeliggøre, hvem forfatteren af den afsendte korrespondancemeddelelse er. Derfor er det et krav, at signatur udfyldes med bl.a. dato og tidspunkt, forfatters navn, stillingsbetegnelse og relevant telefonnummer. MedCom stiller en liste over stillingsbetegnelser til rådighed, som er sammensat af udtræk fra autorisationsregistret og SKS personaleklassifikation. <br>
<a href="https://medcomfhir.dk/ig/terminology/ValueSet/medcom-core-PractitionerRoles.html" target="_blank">Klik her for at læse liste over stillingsbetegnelser.</a> <br> 
MedCom <u>anbefaler</u>, at telefonnummer udfyldes med relevant telefonnummer, såsom telefonnummer på afdelingen, afsnittet, enheden som afsender er tilknyttet eller fx relevant vagttelefonnummer. Signatur bør så vidt muligt autoudfyldes af systemet. I tilfælde af elementer som ikke kan autoudfyldes af systemet, skal disse kunne tilføjes manuelt af brugeren, fx relevant telefonnummer

### 4.3 Prioritet-krav om afgrænset brug
Det bliver muligt at markere en korrespondancemeddelelse med prioritet. Alle systemer testes for, at de kan modtage og vise prioritet. I forhold til anvendelse og afsendelse af prioritet, testes alle systemer for, at prioritet kun er synlig og mulig at bruge ved valg af den nationale kategori ”Vedr. henvisning”. Kravet fremgår af use case og tilhørende testprotokol. Dette er besluttet med baggrund i, at behovet for at anvende prioritet er rejst i regi af projektet vedr. forbedring af henvisninger, herunder revidering af henvisningsflowet. Anvendelsen af prioritet skal tilpasses løbende ift. udvikling i overenskomster og på baggrund af nationale krav fra Sundhedsministeriet, Sundhedsstyrelsen og Sundhedsdatastyrelsen. 


### 4.4 Bilag
Det er muligt at vedhæfte filer, som indlejres i korrespondancemeddelelsen. Når der er vedhæftet en fil til en korrespondancemeddelelse, er det et krav, at det tydeligt vises i brugergrænsefladen. 
De tilladte filtyper, som kan vedhæftes korrespondancemeddelelsen, ses beskrevet i Implementation Guide for terminologi samt udstilles på terminologiserveren. <br>
<a href="https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-attachmentMimeTypes.html" target="_blank">Klik her for at finde de tilladte filtyper, som kan vedhæftes i korrespondancemeddelelsen.</a> <br>
Det er besluttet, at der ikke må medsendes video i en korrespondancemeddelelse grundet størrelsen. Det anbefales, at videoer deles via en forventet kommende national delingsservice. 
Der vil ikke være begrænsning på, hvor mange bilag der kan medsendes i en korrespondancemeddelelse, men i stedet begrænses størrelsen på hele meddelelsen, inklusive bilag. 100 MB er den maksimale størrelse på hele meddelelsen – inklusive bilag, som sendes over VANS. Alle bilag tildeles desuden et unikt ID, et tidspunkt for hvornår bilaget senest er gemt samt signatur på forfatter af bilaget. 
Afsender, som vælger at oprette, afsende, besvare eller videresende en korrespondancemeddelelse, er ansvarlig for meddelelsens indhold, herunder vedhæftede filer. Forfatter på den vedhæftede fil er den fagperson, som oprindeligt har udarbejdet filen, og derfor er ansvarlig for det faglige indhold. Når man, som afsender, vælger at medsende en fil, er man også ansvarlig for, at filens indhold er relevant for det aktuelle behandlingsforløb.
MedCom tjekker, som en del af test og certificering, at bilag modtages og indlæses på teknisk niveau, mens krav til understøttelse af arbejdsgange samt brugervenlighed skal varetages lokalt i et samarbejde mellem kunde og it-leverandør.


### 4.5 Forsendelsesmuligheder 
Det er muligt at besvare, videresende, rette og annullere en modtaget korrespondancemeddelelse. 
Både ved besvarelse og videresendelse af en korrespondancemeddelelse indsættes den samme kategori og det samme emne automatisk af systemet. Brugeren kan vælge at ændre det til en anden kategori og et andet emne.  Referencer til den forudgående, eller videresendte, meddelelse skal indgå, da disse tekniske informationer bl.a. anvendes til at kæde meddelelserne sammen, hvormed de giver mulighed for at skabe kommunikationshistorik i brugergrænsefladen. 


#### 4.5.1 Ved besvarelse

Ved besvarelse indsættes afsender af den modtagne korrespondancemeddelelse automatisk som modtager af besvarelsen (med SOR-kode og EAN-nummer). 
Det er også muligt at besvare en tidligere modtaget MedCom-meddelelse med korrespondancemeddelelsen. 
Teknisk betyder det, at der ved besvarelse indsættes et nyt meddelelsessegment, bestående af et nyt meddelelsestekst-felt og signatur. Afsender udfylder det nye meddelelsestekst-felt med selvskrevet tekst. Derudover påsættes også signatur, i samme meddelelsessegment, på afsender af besvarelsen. En besvarelse består således altid af minimum to meddelelsessegmenter – det tidligere modtaget meddelelsessegment og det nye som afsender udfylder og medsender ved besvarelsen. Hvis der er vedhæftet filer til besvarelsen, knyttes disse til meddelelsessegmentet.De ovenstående hændelserne for besvarelse af en korrespondancemeddelelse er visualiseret i en aktivitetsdiagram  i <a href="#Fig2" target="_blank">Figur 2.</a>


<figure>
<img src="../images/Dk_S2_besvarelse_cc.drawio.svg" alt="Viser aktivitetsdiagram over forløbet for besvarelse af CareCommunication besked." style="width:40%" id="Fig2">
<figcaption text-align="center"><b>Figur 2: Aktivitetsdiagram for besvarelse af en modtaget korrespondancemeddelelse</b> </figcaption>
</figure>
<br><br>

#### 4.5.2.Ved videresendelse
Ved videresendelse er afsender ansvarlig for, hvilke dele af den modtagne meddelelsestråd, der skal medsendes i videresendelsen. Det betyder, at afsender aktivt skal vælge hvilke dele af den forudgående meddelelse, samt hvilke vedhæftede filer, der skal indgå i videresendelse. Det er op til afsender, hvornår det vurderes relevant at videresende en modtaget korrespondancemeddelelse. Afsender er derfor ansvarlige for videresendelsen og relevansen ift. det aktuelle behandlingsforløb.
MedCom anbefaler, at afsender beskriver årsagen til videresendelsen i meddelelsesteksten.
Ved videresendelse vælger afsender, hvem modtageren er. 
Teknisk betyder det, at der ved videresendelse indsættes et nyt meddelelsessegment, bestående af et nyt meddelelsestekst-felt og signatur. Afsender udfylder det nye meddelelsestekst-felt med selvskrevet tekst, hvori det også anbefales at angive årsagen til videresendelsen. Derudover påsættes også signatur, i samme meddelelsessegment, på afsender af videresendelsen. En videresendelse består således altid af minimum to meddelelsessegmenter – det tidligere modtaget meddelelsessegment og det nye som afsender udfylder og medsender ved videresendelsen. Hvis der er vedhæftet filer til videresendelsen, knyttes disse til meddelelsessegmentet.
De ovenstående hændelserne for videresendelse af en korrespondancemeddelelse er visualiseret i en aktivitetsdiagram  i <a href="#Fig3" target="_blank">Figur 3.</a>

<figure>
<img src="../images/DK_S3_VideresendCc.drawio.svg" alt="Viser aktivitetsdiagram over forløbet for videresendelse af CareCommunication besked." style="width:40%" id="Fig3">
<figcaption text-align="center"><b>Figur 3: Aktivitetsdiagram for videresendelse af en modtaget korrespondancemeddelelse</b> </figcaption>
</figure>
<br><br>

#### 4.5.3 Annulering og rettelse 

### 4.6 Historisk overblik i brugergrænsefladen
Gældende for  alle MedComs FHIR-meddelelser, herunder også korrespondancemeddelelsen, er, at det teknisk er muligt at vise kommunikationshistorik for meddelelsen på brugergrænsefladen på baggrund af det tekniske indhold i meddelelsen. Det er både muligt at se meddelelsens aktivitet, eksempelvis om en meddelelse er en besvarelse, en videresendelse, eller om meddelelsen er rettet eller annulleret. Derudover er det muligt at vise meddelelsessegmentet fra de forudgående meddelelser. 
MedCom <u>anbefaler</u>, at systemerne benytter sig af de beskrevne tekniske muligheder for at give brugeren det bedst mulige overblik i brugergrænsefladen over den forudgående historik og aktivitet (om en meddelelse er en besvarelse, en videresendelse, en rettelse eller en annullering.      
  

## 5 Opsummering af krav og anbefalinger til afsender- og modtagersystemer 
I <a href="#Tab1">tabel 1</a> opsummeres krav og anbefalinger til afsender- og modtagersystemer på baggrund af den tekstuelle del af dokumentationen. For tekniske detaljer henvises til de tekniske specifikationer, som findes via forsiden for korrespondancemeddelelse i GitHub. <br><a href="https://medcomdk.github.io/dk-medcom-carecommunication/" target="_blank">Klik her for at læse de tekniske specifikationer på forsiden af korrespondancemeddelelsen i GitHub</a>. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-tysj{color:#333333;text-align:left;vertical-align:top}
.tg .tg-c4ko{background-color:#2c415c;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg" id="Tab1">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Tabel 1: Opsumering af krav og anbefalinger til afsender- og modtagersystemer </caption>
<thead>
  <tr>
    <th class="tg-c4ko">   <br>    </th>
    <th class="tg-c4ko">   <br><span style="color:white">Krav til afsendersystem</span>   </th>
    <th class="tg-c4ko">   <br><span style="color:white">Anbefalinger til afsendersystem</span>   </th>
    <th class="tg-c4ko">   <br><span style="color:white">Krav til modtagersystem</span>   </th>
    <th class="tg-c4ko">   <br><span style="color:white">Anbefalinger til modtager-system</span>   </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-tysj">   <br>National <br>   <br>kategori   </td>
    <td class="tg-tysj">   <br>Det er et krav til systemet, at bruger kan vælge og   påsætte en national kategori til meddelelsen, og den valgte kategori er   synlig for afsender.<br>   <br> <br>   <br>Det er et krav, at kategori skal påsættes,   inden meddelelsen kan afsendes.   </td>
    <td class="tg-tysj">   <br>    </td>
    <td class="tg-tysj">   <br>Det er et krav, at alle systemer skal kunne modtage og vise den valgte kategori på meddelelsen.<br>   <br> <br>   <br>    </td>
    <td class="tg-tysj">   <br>Det anbefales at gøre brug af muligheden for automatisk fordeling, ved   modtagelse, efter de nationale kategorier. Det er ikke en del af MedComs test   og certificering. <br>   <br>. <br>   <br>    </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Emneord   </td>
    <td class="tg-tysj">   <br>Det er et   krav til systemet, at bruger kan vælge (optionelt) at indsætte emneord til en   meddelelse, og at det valgte emneord er synligt for afsender.<br>   <br> <br>   <br>Emnefeltet kan   enten udfyldes med selvskrevet fritekst eller de regionalt aftalte emneord. <br>   <br> <br>   <br>    </td>
    <td class="tg-tysj">   <br>Det anbefales, at<br>   <br>regionalt aftalte emneord mappes op   til de nationalt aftalte kategorier, hvor de pågældende emneord relateres til   de relevante kategorier. Det anbefales, at brugeren præsenteres for de   regionalt aftalte emneord, som de kender, og ved valg af emneord, påsætter   systemet automatisk den pågældende relevante kategori (som er valgt ved   forudgående mapning mellem kategori og emneord).  Således slipper brugeren for at skulle tage   stilling til kategori ved regionalt aftalte emneord. <br>   <br>Det er ikke en del af MedComs test og certificering.    </td>
    <td class="tg-tysj">   <br>Det er et krav, at alle systemer kan modtage og vise det valgte emneord.   </td>
    <td class="tg-tysj">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Prioritet   </td>
    <td class="tg-tysj">   <br>Det er et krav til systemet, at prioritet kun er synlig og mulig at anvende ved valg af den nationale   kategori ”Vedr. henvisning”.   </td>
    <td class="tg-tysj">   <br>    </td>
    <td class="tg-tysj">   <br>Det er et krav, at alle systemer kan modtage og vise prioritet.   </td>
    <td class="tg-tysj">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Formatering   </td>
    <td class="tg-tysj">   <br>Det er et krav til systemet, at afsender kan vælge at formatere   meddelelsesteksten i overensstemmelse med det vedtagne formateringstegnsæt. <br>   <br> <br>   <br>    </td>
    <td class="tg-tysj">   <br>    </td>
    <td class="tg-tysj">   <br>Det er et krav, at alle systemer kan modtage og vise formateret tekst   i meddelelsesfeltet i overensstemmelse med det vedtagne formateringstegnsæt.   </td>
    <td class="tg-tysj">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Vedhæftede filer   </td>
    <td class="tg-tysj">   <br>Det er et krav til systemet, at bruger kan vælge at vedhæfte tilladte filtyper. <br>   <br>Det er et krav til systemet at notificere   brugeren, hvis meddelelsen, inklusiv vedhæftede filer, overstiger den tilladte størrelse.   <br>   <br>    </td>
    <td class="tg-tysj">   <br>    </td>
    <td class="tg-tysj">   <br>Det er et krav, at alle systemer kan modtage og indlæse vedhæftede filer.   </td>
    <td class="tg-tysj">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-tysj">   <br>Signatur   </td>
    <td class="tg-tysj">   <br>Det er et krav til systemet at udfylde og medsende signatur med bl.a.   forfatters navn, stillingsbetegnelse og relevant telefonnummer.<br><br>   <br>I tilfælde af elementer som ikke kan autoudfyldes af systemet, skal   dette kunne tilføjes manuelt af brugeren, fx telefonnummer.    </td>
    <td class="tg-tysj">   <br>Det anbefales, at telefonnummer udfyldes med relevant telefonnummer,   så som telefonnummer på afdelingen, afsnittet, enheden eller fx relevant   vagttelefonnummer.   </td>
    <td class="tg-tysj">   <br>Det er et krav, at alle systemer kan modtage og viseforfatters   signatur med dertilhørende informationer.   </td>
    <td class="tg-tysj">   <br>    </td>
  </tr>
</tbody>
</table></div>

## 6 Use Cases
Til brug for den tekniske implementering af korrespondancemeddelelsen findes use case beskrivelser, som demonstrerer indhold og funktionalitet i korrespondancemeddelelsen, herunder krav og anbefalinger til afsender- og modtagersystemer. <a href="https://medcomdk.github.io/dk-medcom-carecommunication/#12-use-cases" target="_blank">Klik her for at finde use cases. </a> 



## 7 Ibrugtagning
Inden ibrugtagning skal meddelelsestypen for korrespondancemeddelelse ajourføres i Sundhedsvæsnets Organisationsregister (SOR) for den enkelte aktør, så der er valide data om, hvem der har implementeret og anvender korrespondancemeddelelsen, og derved hvem der kan afsende og modtage korrespondancemeddelelsen.


<!-- FHIR-KM skal på sigt erstatte MedCom-standarden korrespondancemeddelelse DIS91/XDIS91, som bliver udfaset. 
<i>Der forventes en gradvis implementering af FHIR-KM, da det vil være komplekst at skifte samtidigt i de ca. 70 it-systemer, som i dag anvender korrespondancemeddelelse <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a>/<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>. Det tilstræbes dog, at overgangsperioden skal være så kort som mulig og for de store aktører og anvendere af korrespondancemeddelelsen, så som regioner, kommuner og lægepraksis, arbejdes der hen mod en fælles dato/periode for overgang til FHIR-KM. Mulige services, så som portalløsning eller central konvertering, for de mindre systemer/faggrupper undersøges.</i> 
(Oplæg skal behandles i MedComs styregruppe)

Det bliver de parter, som har behov for de nye funktioner, som vedhæftning af bilag og struktureret brug af kategori, som driver implementering og udbredelse af FHIR-KM. 
Der skal indgås sundheds- og samarbejdsaftaler om at tage FHIR-KM i brug. Ligeledes skal denne nye meddelelsestype også ajourføres i Sundhedsvæsnets Organisationsregister (SOR) for den enkelte aktør, således der er valide data om, hvem der har implementeret og anvender FHIR-KM – og derved hvem der kan modtage og afsende FHIR-KM. Forudsætningen for at brugen af SOR-data kan fungere i praksis som et hjælperedskab til korrekt adressering, er fælles aftaler for opdatering og anvendelse.  -->

