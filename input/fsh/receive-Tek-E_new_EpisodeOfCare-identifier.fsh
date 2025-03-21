Instance: R-Tek-E-new-EOC-identifier-d000e12e-4b0c-477e-9cb7-80b2a3b3adc0
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek-E_new_episodeOfCare-identifier"
Description: "receive_Tek-E_new_episodeOfCare-identifier"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-03T09:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/90c99cb5-c3fa-47c5-b625-b823e0203a09"
* entry[=].resource = 90c99cb5-c3fa-47c5-b625-b823e0203a09
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/9d6ff5cd-ea6f-4cd7-9a81-dfb41c6ec420"
* entry[=].resource = 9d6ff5cd-ea6f-4cd7-9a81-dfb41c6ec420
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/500b6aa5-407b-489c-8439-b658f4858ff4"
* entry[=].resource = 500b6aa5-407b-489c-8439-b658f4858ff4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/0f6c4002-d43c-41aa-97bd-23c55df16e95"
* entry[=].resource = 0f6c4002-d43c-41aa-97bd-23c55df16e95
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/261e3ea6-1556-4312-bd06-d05deb8a7e58"
* entry[=].resource = 261e3ea6-1556-4312-bd06-d05deb8a7e58
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Encounter/ca0f5d0c-cb2a-4ad5-a08a-e7dbd2092b13"
* entry[=].resource = ca0f5d0c-cb2a-4ad5-a08a-e7dbd2092b13
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/01965998-608c-43a9-bc4d-4b671a9168c7"
* entry[=].resource = 01965998-608c-43a9-bc4d-4b671a9168c7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/826bb133-fca8-4c23-87cd-8039102f0dded"
* entry[=].resource = 826bb133-fca8-4c23-87cd-8039102f0dded
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/3c7dd36e-9b50-4fc4-8b8c-2efa4d436f60"
* entry[=].resource = 3c7dd36e-9b50-4fc4-8b8c-2efa4d436f60

Instance: ca0f5d0c-cb2a-4ad5-a08a-e7dbd2092b13
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#in-progress 
* class = $ActCodes#IMP 
* subject = Reference(9d6ff5cd-ea6f-4cd7-9a81-dfb41c6ec420)
* episodeOfCare.identifier.value = "urn:uuid:39e3e169-9ece-4ba4-bd24-2e0fbeebc333" 
* episodeOfCare.identifier.system = "https://sor2.sum.dsdn.dk/#id=330461000016004" // SOR id for afsender/serviceProvider
* episodeOfCare.identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* episodeOfCare.identifier.system = "https://www.esundhed.dk/Registre/Landspatientregisteret" 

Instance: 90c99cb5-c3fa-47c5-b625-b823e0203a09
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek-E_new_episodeOfCare-identifier - MessageHeader"
Description: "receive_Tek-E_new_episodeOfCare-identifier - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(01965998-608c-43a9-bc4d-4b671a9168c7)
* sender = Reference(826bb133-fca8-4c23-87cd-8039102f0dded)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(500b6aa5-407b-489c-8439-b658f4858ff4)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 500b6aa5-407b-489c-8439-b658f4858ff4
InstanceOf: MedComCareCommunication
Title: "receive_Tek-E_new_episodeOfCare-identifier - Communication"
Description: "receive_Tek-E_new_episodeOfCare-identifier - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* encounter = Reference(ca0f5d0c-cb2a-4ad5-a08a-e7dbd2092b13)
* subject = Reference(9d6ff5cd-ea6f-4cd7-9a81-dfb41c6ec420)
* identifier.value = "urn:uuid:eca85df4-e6c9-41d7-88c0-7e6fb79029b9"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael Burns \n Osteopat"
* payload[0].extension[date].valueDateTime = 2024-11-03T09:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:80ab9ebc-98df-4d4c-ad7c-57c654e9bf21"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(01965998-608c-43a9-bc4d-4b671a9168c7)
* payload[0].extension[author].valueReference = Reference(0f6c4002-d43c-41aa-97bd-23c55df16e95)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 9d6ff5cd-ea6f-4cd7-9a81-dfb41c6ec420
InstanceOf: MedComCorePatient
Title: "receive_Tek-E_new_episodeOfCare-identifier - Patient"
Description: "receive_Tek-E_new_episodeOfCare-identifier - Patient"
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

// Sender instance - new message for attachement
Instance: 01965998-608c-43a9-bc4d-4b671a9168c7
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-E_new_episodeOfCare-identifier - Sender"
Description: "receive_Tek-E_new_episodeOfCare-identifier - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 826bb133-fca8-4c23-87cd-8039102f0dded
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-E_new_episodeOfCare-identifier - Receiver"
Description: "receive_Tek-E_new_episodeOfCare-identifier - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: 261e3ea6-1556-4312-bd06-d05deb8a7e58
InstanceOf: MedComCorePractitioner
Title: "receive_Tek-E_new_episodeOfCare-identifier - practitioner"
Description: "receive_Tek-E_new_episodeOfCare-identifier - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 0f6c4002-d43c-41aa-97bd-23c55df16e95
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek-E_new_episodeOfCare-identifier - practitionerRole"
Description: "receive_Tek-E_new_episodeOfCare-identifier - practitionerRole"
* practitioner = Reference(261e3ea6-1556-4312-bd06-d05deb8a7e58)
* code = http://medcomfhir.dk/ig/terminology/CodeSystem/medcom-core-PractitionerRolesAutorisationsregistret#osteopat

// CareCommunication example - new message
Instance: 3c7dd36e-9b50-4fc4-8b8c-2efa4d436f60
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek-E_new_episodeOfCare-identifier - Provenance"
Description: "receive_Tek-E_new_episodeOfCare-identifier - Provenance"
Usage: #example
* target = Reference(90c99cb5-c3fa-47c5-b625-b823e0203a09)
* occurredDateTime = 2024-11-03T09:00:00+01:00
* recorded = 2024-11-03T09:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(01965998-608c-43a9-bc4d-4b671a9168c7)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:80ab9ebc-98df-4d4c-ad7c-57c654e9bf21"