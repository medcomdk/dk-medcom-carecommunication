Instance: 638f34e8-c81c-47c6-a6b8-e0e34525b413
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_tec_EpisodeOfCare - New CareCommunication message"
Description: "ConSer_CC_tec_EpisodeOfCare - New CareCommunication message"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-03T09:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/675bd368-bfec-47a1-9f74-3e7db5eb8cfb"
* entry[=].resource = 675bd368-bfec-47a1-9f74-3e7db5eb8cfb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/adf06795-cc9e-4855-a277-780314134b45"
* entry[=].resource = adf06795-cc9e-4855-a277-780314134b45
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/ede71a03-6611-416b-835a-2937622c526b"
* entry[=].resource = ede71a03-6611-416b-835a-2937622c526b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/0a93fdc7-b053-4ed5-9e95-2d6de043326d"
* entry[=].resource = 0a93fdc7-b053-4ed5-9e95-2d6de043326d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/167e1987-c3a5-47f1-959a-385130d7f8b5"
* entry[=].resource = 167e1987-c3a5-47f1-959a-385130d7f8b5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Encounter/d3a76a91-5252-4136-ba00-e35fba0bc479"
* entry[=].resource = d3a76a91-5252-4136-ba00-e35fba0bc479
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/41714d59-64cd-4ff5-aeca-20745e811557"
* entry[=].resource = 41714d59-64cd-4ff5-aeca-20745e811557
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/bc25bf57-e3ec-423c-a828-683e9fda09df"
* entry[=].resource = bc25bf57-e3ec-423c-a828-683e9fda09df
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/d6f29e31-15ee-4b77-98d3-8163a94c6485"
* entry[=].resource = d6f29e31-15ee-4b77-98d3-8163a94c6485

Instance: 675bd368-bfec-47a1-9f74-3e7db5eb8cfb
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_tec_EpisodeOfCare - Example of MessageHeader"
Description: "ConSer_CC_tec_EpisodeOfCare - Example of MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(41714d59-64cd-4ff5-aeca-20745e811557)
* sender = Reference(bc25bf57-e3ec-423c-a828-683e9fda09df)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(ede71a03-6611-416b-835a-2937622c526b)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

Instance: d3a76a91-5252-4136-ba00-e35fba0bc479
InstanceOf: MedComCoreEncounter
Title: "ConSer_CC_tec_EpisodeOfCare - MedCom Core Encounter"
Description: "ConSer_CC_tec_EpisodeOfCare - Example of a simple MedCom Core Encounter"
* status = $StatusCodes#in-progress 
* class = $ActCodes#IMP 
* subject = Reference(adf06795-cc9e-4855-a277-780314134b45)
* episodeOfCare.identifier.value = "fc60e762-b13b-5773-865e-67f3907bdcc7" 
* episodeOfCare.identifier.system = "https://sor2.sum.dsdn.dk/#id=1339531000016004" // SOR id for afsender/serviceProvider
* episodeOfCare.identifier.value = "88c3a921-f984-5751-8c03-69f7cdf47571" 
* episodeOfCare.identifier.system = "https://www.esundhed.dk/Registre/Landspatientregisteret" 


Instance: ede71a03-6611-416b-835a-2937622c526b
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_tec_EpisodeOfCare - Example of Communication"
Description: "ConSer_CC_tec_EpisodeOfCare - Example of Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(adf06795-cc9e-4855-a277-780314134b45)
* identifier.value = "urn:uuid:eca85df4-e6c9-41d7-88c0-7e6fb79029b9"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, visitator."
* payload[0].extension[date].valueDateTime = 2024-11-03T09:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:80ab9ebc-98df-4d4c-ad7c-57c654e9bf21"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(41714d59-64cd-4ff5-aeca-20745e811557)
* payload[0].extension[author].valueReference = Reference(0a93fdc7-b053-4ed5-9e95-2d6de043326d)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: adf06795-cc9e-4855-a277-780314134b45
InstanceOf: MedComCorePatient
Title: "ConSer_CC_tec_EpisodeOfCare - Example of Patient"
Description: "ConSer_CC_tec_EpisodeOfCare - Example of Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"
* address.line = "Testpark Allé 48"
* address.city = "Hillerød"
* address.postalCode = "3400"
* telecom.system = #phone
* telecom.value = "47899878"
* telecom.use = #mobile

// Sender instance
Instance: 41714d59-64cd-4ff5-aeca-20745e811557
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_tec_EpisodeOfCare - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_tec_EpisodeOfCare - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Reciever instance
Instance: bc25bf57-e3ec-423c-a828-683e9fda09df
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_tec_EpisodeOfCare - Example of a receiver organization with a SOR and an EAN identifier."
Description: "ConSer_CC_tec_EpisodeOfCare - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"


// Practitioners - new message with attachment
Instance: 167e1987-c3a5-47f1-959a-385130d7f8b5
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_tec_EpisodeOfCare - Example of practitioner"
Description: "ConSer_CC_tec_EpisodeOfCare - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 0a93fdc7-b053-4ed5-9e95-2d6de043326d
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_tec_EpisodeOfCare - Example of practitionerRole"
Description: "ConSer_CC_tec_EpisodeOfCare - practitionerRole"
* practitioner = Reference(167e1987-c3a5-47f1-959a-385130d7f8b5)
* code.text = "Visitator"

// CareCommunication example - new message
Instance: d6f29e31-15ee-4b77-98d3-8163a94c6485
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_tec_EpisodeOfCare - Example of Provenance"
Description: "ConSer_CC_tec_EpisodeOfCare - Example of Provenance"
Usage: #example
* target = Reference(675bd368-bfec-47a1-9f74-3e7db5eb8cfb)
* occurredDateTime = 2024-11-03T09:00:00+01:00
* recorded = 2024-11-03T09:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(41714d59-64cd-4ff5-aeca-20745e811557)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:80ab9ebc-98df-4d4c-ad7c-57c654e9bf21"