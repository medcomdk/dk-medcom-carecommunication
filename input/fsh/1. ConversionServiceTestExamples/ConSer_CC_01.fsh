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


Instance: d2d3befc-9912-46e8-b4ac-434f022ff50c
InstanceOf: MedComCareCommunicationMessageHeader
Title: "1st message - Instance of a MessageHeader resource used in a new message."
Description: "1st message - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009" // RCH: Vi skal finde ud af om det er SOR id for modtageren, og den dermed skal rettes i alle eksemplerne.
* destination[primary].receiver = Reference(794f12bb-d22c-4b90-a108-a10e4c3299d3)
* sender = Reference(27bf44de-bd5c-4d53-9829-1acea7198f06)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000" // RCH: Vi skal finde ud af om det er SOR id for afsenderen, og den dermed skal rettes i alle eksemplerne.
* focus = Reference(255a6650-1813-4783-97fd-8dc193063bf2) 
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

// CareCommunication new example
Instance: 255a6650-1813-4783-97fd-8dc193063bf2
InstanceOf: MedComCareCommunication
Title: "1st message - Instance of Communication resource used in a new message."
Description: "1st message - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#regarding-referrel
* topic.text = "Henvisning til videre udredning"
* subject = Reference(8963193a-1016-4a8e-98f1-b59435f6d4bd)
* payload.contentString = "Kære praktiserende læge, Vi skriver angående jeres patient, Kaja Hansen, som blev tilset i vores kardiologiske afdeling d. 01.01.2025. På baggrund af undersøgelsen anbefaler vi videre udredning for mulig hjertearytmi. Vi har booket en Holter-monitorering, som Kaja vil få foretaget d. 15.01.2025. Vi beder jer om at sikre, at patientens medicinstatus er opdateret inden monitoreringen. Hvis I har spørgsmål til udredningen, er I velkomne til at kontakte os. Venlig hilsen Katrine, Sygeplejerske"
* payload.extension[date].valueDateTime = 2025-01-02T12:00:00+02:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload.extension[identifier].valueIdentifier.assigner = Reference(27bf44de-bd5c-4d53-9829-1acea7198f06)
* payload.extension[author].valueReference = Reference(6dd564dd-aea8-47ab-a26c-0e30285a9642)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "01010101"

Instance: 8963193a-1016-4a8e-98f1-b59435f6d4bd
InstanceOf: MedComCorePatient
Title: "1st message - Kaja Test Hansen"
Description: "1st message - Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given = "Kaja"

Instance: 27bf44de-bd5c-4d53-9829-1acea7198f06
InstanceOf: MedComMessagingOrganization  
Title: "1st message - Example of a sender organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

Instance: 794f12bb-d22c-4b90-a108-a10e4c3299d3
InstanceOf: MedComMessagingOrganization  
Title: "1st message - Example of a receiver organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"

// Practitioners - new message
Instance: f1b2fc1d-c184-45f2-bd1e-4f156ab319ce
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Katrine"
* name.family = "Andersen"

Instance: 6dd564dd-aea8-47ab-a26c-0e30285a9642
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(f1b2fc1d-c184-45f2-bd1e-4f156ab319ce)
* code = $PractitionerRole#sygeplejerske


// CareCommunication example - new message
Instance: 7a34ea51-3a8b-4d71-841a-aa00961d4439
InstanceOf: MedComCareCommunicationProvenance
Title: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(d2d3befc-9912-46e8-b4ac-434f022ff50c)
* occurredDateTime = 2025-01-02T12:00:00+02:00
* recorded = 2025-01-02T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(27bf44de-bd5c-4d53-9829-1acea7198f06)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1" //RCH Hvad refererer denne til? Og hvad skal den referere til? Den samme uuid bruges endnu et sted i denne fil.
