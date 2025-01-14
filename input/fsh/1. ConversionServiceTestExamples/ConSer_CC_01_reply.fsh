Instance: c06a7511-be85-4f1c-9af9-a322ca60b6f1
InstanceOf: MedComCareCommunicationMessage
Title: "1st message - New CareCommunication message."
Description: "1st message - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2025-01-02T12:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/d2d3befc-9912-46e8-b4ac-434f022ff50c"
* entry[=].resource = d2d3befc-9912-46e8-b4ac-434f022ff50c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/8963193a-1016-4a8e-98f1-b59435f6d4bd"
* entry[=].resource = 8963193a-1016-4a8e-98f1-b59435f6d4bd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/255a6650-1813-4783-97fd-8dc193063bf2"
* entry[=].resource = 255a6650-1813-4783-97fd-8dc193063bf2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/6dd564dd-aea8-47ab-a26c-0e30285a9642"
* entry[=].resource = 6dd564dd-aea8-47ab-a26c-0e30285a9642
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/f1b2fc1d-c184-45f2-bd1e-4f156ab319ce"
* entry[=].resource = f1b2fc1d-c184-45f2-bd1e-4f156ab319ce
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/794f12bb-d22c-4b90-a108-a10e4c3299d3"
* entry[=].resource = 794f12bb-d22c-4b90-a108-a10e4c3299d3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/27bf44de-bd5c-4d53-9829-1acea7198f06"
* entry[=].resource = 27bf44de-bd5c-4d53-9829-1acea7198f06
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/7a34ea51-3a8b-4d71-841a-aa00961d4439"
* entry[=].resource = 7a34ea51-3a8b-4d71-841a-aa00961d4439
* tilføj practioner som besvarer 
* tilføj tilhørende practionerrole
* tilføj referencen til provenance således at jeg har den provenance fra CC_01 og CC_01_reply

//CC REPLY
Instance: d2d3befc-9912-46e8-b4ac-434f022ff50c
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Reply to 1st message - Instance of a MessageHeader resource used in a new message."
Description: "Reply to 1st message - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f //Find ud af hvad denne referer til
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(794f12bb-d22c-4b90-a108-a10e4c3299d3) //Her skal modtageren af beskeden indsættes 
* sender = Reference(27bf44de-bd5c-4d53-9829-1acea7198f06) // Afsenderen skal indsættes her
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(255a6650-1813-4783-97fd-8dc193063bf2) //Focus referer til den instance som er MedComCommunication som er replyet
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

//Provenance for replyet
Instance: uuid
InstanceOf: MedComCareCommunicationProvenance
Title: "Reply to 1st message - Instance of a MessageHeader resource used in a new message."
Description: "Reply to 1st message - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #inline
* target = Reference() //indsæt en reference til Messageheaderen 
* occurredDateTime = 2024-05-02T11:30:00+02:00 //ret tidspunkter
* recorded = 2024-05-02T11:30:00+02:00 //ret tidspunkter
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference() //Afsender
* entity[preceedingMessage][0].role = #revision // Jeg ved ikke hvad denne gør
* entity[preceedingMessage][0].what = Reference() //indsæt uuid til messageheader i forrige besked, det er denne som skaber referencen til forrige beseked
//* entity[payload][0].role = #source
//* entity[payload][0].what.identifier.value = "urn:uuid:cd422e42-5bad-11ed-9b6a-0242ac120002"      // Denne referer til et bilag, det vil isge hvis jeg ville inkludere et bilag i denne besvarelse så ville dette være referencen

//Carecommunication reply to first message
Instance: uuid 
InstanceOf: MedComCareCommunication
Title: "reply to 1. message - Instance of Communication resource used in a reply message."
Description: "reply to 1. message - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a" 
* category = $CategoryCodes#regarding-referrel
* topic.text = "Svar: Henvisning til videre udredning"
* subject = Reference(8963193a-1016-4a8e-98f1-b59435f6d4bd) //dette skal være UUID'et på patienten
// information fra den gamle besked 
* payload[0].contentString = "Kære praktiserende læge, Vi skriver angående jeres patient, Kaja Hansen, som blev tilset i vores kardiologiske afdeling d. 01.01.2025. På baggrund af undersøgelsen anbefaler vi videre udredning for mulig hjertearytmi. Vi har booket en Holter-monitorering, som Kaja vil få foretaget d. 15.01.2025. Vi beder jer om at sikre, at patientens medicinstatus er opdateret inden monitoreringen. Hvis I har spørgsmål til udredningen, er I velkomne til at kontakte os. Venlig hilsen Katrine, Sygeplejerske"
* payload[0].extension[date].valueDateTime = 2025-01-02T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(27bf44de-bd5c-4d53-9829-1acea7198f06)
* payload[0].extension[author].valueReference = Reference(6dd564dd-aea8-47ab-a26c-0e30285a9642) //dette skal være referecenn til afsenderen
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "01010101"