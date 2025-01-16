Instance: 37f6b4ed-967f-44ea-afd4-30d499e967a6
InstanceOf: MedComCareCommunicationMessage
Title: "1st message - New CareCommunication message."
Description: "1st message - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2025-01-03T14:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/7b4132c5-f862-4a99-b0cc-a226e73b09f3"
* entry[=].resource = 7b4132c5-f862-4a99-b0cc-a226e73b09f3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/4c25ca82-e68f-4867-b3c3-8b762dc145f2"
* entry[=].resource = 4c25ca82-e68f-4867-b3c3-8b762dc145f2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/dde093e4-ab19-46a6-a227-19d3295c2ef0"
* entry[=].resource = dde093e4-ab19-46a6-a227-19d3295c2ef0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/76078e88-2e85-446c-8da7-4cc9833ac150"
* entry[=].resource = 76078e88-2e85-446c-8da7-4cc9833ac150
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/db10caa9-97e0-4c8c-a502-b23fe9a9abf9"
* entry[=].resource = db10caa9-97e0-4c8c-a502-b23fe9a9abf9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/95e3fc54-fec5-4f3b-8eb8-ea1a6a5f3f17"
* entry[=].resource = 95e3fc54-fec5-4f3b-8eb8-ea1a6a5f3f17
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/1bb81859-4c57-42ba-8720-5d71439b100e"
* entry[=].resource = 1bb81859-4c57-42ba-8720-5d71439b100e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/8e7365e7-dfbf-4ad2-84c4-2c6d4035f165"
* entry[=].resource = 8e7365e7-dfbf-4ad2-84c4-2c6d4035f165


Instance: 7b4132c5-f862-4a99-b0cc-a226e73b09f3
InstanceOf: MedComCareCommunicationMessageHeader
Title: "1st message - Instance of a MessageHeader resource used in a new message."
Description: "1st message - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(95e3fc54-fec5-4f3b-8eb8-ea1a6a5f3f17)
* sender = Reference(1bb81859-4c57-42ba-8720-5d71439b100e)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(dde093e4-ab19-46a6-a227-19d3295c2ef0)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

// CareCommunication new example
Instance: dde093e4-ab19-46a6-a227-19d3295c2ef0
InstanceOf: MedComCareCommunication
Title: "1st message - Instance of Communication resource used in a new message."
Description: "1st message - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#discharge
* topic.text = "Tilbagemelding efter indlæggelse"
* subject = Reference(4c25ca82-e68f-4867-b3c3-8b762dc145f2)
* payload.contentString = "Vi skriver for at informere om, at jeres patient Kaja Hansen blev udskrevet fra vores afdeling d. 01.01.2025 efter behandling for lungebetændelse. Hun blev behandlet med intravenøs antibiotika under indlæggelsen og er nu overgået til peroral behandling med Amoxicillin 500 mg x 3 dagligt i 7 dage.
Vi anbefaler en kontrol af infektionstal og lungefunktion om 2 uger, samt opfølgning på eventuelle tilbagevendende symptomer.
Med venlig hilsen, Jørgen Berggren, Overlæge."
* payload.extension[date].valueDateTime = 2025-01-03T13:00:00+02:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload.extension[identifier].valueIdentifier.assigner = Reference(1bb81859-4c57-42ba-8720-5d71439b100e)
* payload.extension[author].valueReference = Reference(76078e88-2e85-446c-8da7-4cc9833ac150)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "02020202"

Instance: 4c25ca82-e68f-4867-b3c3-8b762dc145f2
InstanceOf: MedComCorePatient
Title: "1st message - Kaja Test Hansen"
Description: "1st message - Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given = "Kaja"

Instance: 1bb81859-4c57-42ba-8720-5d71439b100e
InstanceOf: MedComMessagingOrganization  
Title: "1st message - Example of a sender organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

Instance: 95e3fc54-fec5-4f3b-8eb8-ea1a6a5f3f17
InstanceOf: MedComMessagingOrganization  
Title: "1st message - Example of a receiver organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"

// Practitioners - new message
Instance: db10caa9-97e0-4c8c-a502-b23fe9a9abf9
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Jørgen"
* name.family = "Berggren"

Instance: 76078e88-2e85-446c-8da7-4cc9833ac150
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(db10caa9-97e0-4c8c-a502-b23fe9a9abf9)
* code = $PractitionerRole#overlaege


// CareCommunication example - new message
Instance: 8e7365e7-dfbf-4ad2-84c4-2c6d4035f165
InstanceOf: MedComCareCommunicationProvenance
Title: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(7b4132c5-f862-4a99-b0cc-a226e73b09f3)
* occurredDateTime = 2025-01-03T13:00:00+02:00
* recorded = 2025-01-03T13:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(1bb81859-4c57-42ba-8720-5d71439b100e)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
