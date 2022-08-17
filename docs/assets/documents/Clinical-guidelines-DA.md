# Non-Technical Guidelines

**Table of Content**

## 1. Introduktion
Dette er den tekstuelle del af dokumentationen til MedComs FHIR-standard for korrespondancemeddelel-ser, fremover refereret til som FHIR-KM. Den indeholder formål, baggrund, en illustration af FHIR-KM og krav og anbefalinger til FHIR-KM, herunder funktionaliteter, samt information om en overgangsperiode med samtidig drift af korrespondancemeddelelsen <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> og <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a> og FHIR-KM.
Målgruppen for denne tekst er it-systemleverandører, og implementeringsansvarlige, som skal it-understøtte afsendelse og modtagelse af FHIR-KM
Krav og anbefalinger til indhold, herunder funktionaliteter, er udarbejdet i samarbejde med en nedsat <a href="https://www.medcom.dk/opslag/navne-og-adresser?gruppe=Arb.grp.%20FHIR-Korrespondancemeddelelse" target="_blank">national arbejdsgruppe</a>  med repræsentanter fra regioner, kommuner og praktiserende læger. Derudover har materiale med beskrivelse af indhold og funktionalitet i FHIR-KM været sendt i høring ved relevante MedCom-grupper samt været bredt tilgængeligt for kommentering via publicering på MedComs hjemmeside.
De tekniske specifikationer (profilen) for FHIR-KM standarden findes via <a href="https://simplifier.net/medcom-fhir-messaging " target="_blank">Simplifier</a> . I profilen, de tekniske specifikationer, har dansk sprog forrang for engelsk.
FHIR-KM skal på sigt erstatte MedCom-standarden korrespondancemeddelelse <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> og <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>, som bliver udfaset. 

## 2. Formål
MedComs styregruppe godkendte d. 3. marts 2019, at MedCom udarbejder en ny forbedret standard for korrespondancemeddelelser (FHIR-KM). 
Formålet med FHIR-KM er at:
* Understøtte digital kommunikation mellem sundhedsvæsnets parter
* Styrke opstarten af digital kommunikation mellem det sociale-, psykiatriske- og somatiske område  
* Give mulighed for at vedhæfte og udveksle digitale bilag mellem forskellige aktører
* Understøtte automatisk sortering ved modtagelse via brug af fælles nationale kategorier (=overordnede overskrifter)
* Respektere regionale samarbejdsaftaler ved at bevare muligheden for at angive regionalt aftalte emneord (=supplerende overskrifter)

## 3. Baggrund 
Korrespondancemeddelelsen <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a>/<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>  bruges af mange af sundhedsvæsnets parter. Standarden er implementeret i mere end 70 it-systemer, og der udveksles årligt ca. 5 mio. korrespondancemeddelelser. Det er i dag mellem de praktiserende læger og hjemmesygeplejen i kommunerne, at der udveksles flest korrespondancemeddelelser. 
Der er udsigt til øget brug af korrespondancemeddelelsen i takt med implementering af FMK indenfor soci-al- og misbrugsområdet. Samtidig er digital kommunikation mellem socialområdet og sundhedsområdet under opstart, hvor korrespondancemeddelelsen allerede spiller en væsentlig rolle, da den typisk implemen-teres først.
Der er gennem flere år indkommet ønsker til forbedringer og ændringer i korrespondancemeddelelsen <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a>/<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a> fra flere forskellige faggrupper. 

Det er bl.a. blevet efterspurgt:
* at der gennemføres tekniske forbedringer i form af selvstændigt felt til overskrift/kategorisering
* at det bliver muligt at indlejre bilag i kommunikationen mellem bl.a. kommuner, hospitaler og prakti-serende læger
* at der bruges unikke ID’er i meddelelsen, så den teknisk kan kædes sammen med andre meddelel-ser i en tråd, og derved øge læseoverblikket for det kliniske personale
* at brug af ”prioritet” overvejes, herunder fælles anvendelsesregler for brug af prioritet
