Instance: R-Tek-M-dublicate-inv-260a3cc1-38eb-454a-a57b-9e32eabb54a3
InstanceOf: MedComCareCommunicationMessage
Title: "receive-Tek-M-new-dublicate-inv"
Description: "receive-Tek-M-new-dublicate-inv"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-27T15:20:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/6550cb10-06e1-44fa-a66d-72f3f60c7c55"
* entry[=].resource = 6550cb10-06e1-44fa-a66d-72f3f60c7c55
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/aa6fad12-1876-4c7d-a955-06b78f85eb52"
* entry[=].resource = aa6fad12-1876-4c7d-a955-06b78f85eb52
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/bc0c3901-87d3-4d90-ba32-9b02cc631de8"
* entry[=].resource = bc0c3901-87d3-4d90-ba32-9b02cc631de8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/fb1abc8a-3238-4292-97dc-327291bf8573"
* entry[=].resource = fb1abc8a-3238-4292-97dc-327291bf8573
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/3835f51b-869e-4b52-b76d-ab2f906bdbe9"
* entry[=].resource = 3835f51b-869e-4b52-b76d-ab2f906bdbe9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/fe92c210-7725-4749-8045-37ed53878f26"
* entry[=].resource = fe92c210-7725-4749-8045-37ed53878f26
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/74fb6fce-089e-444d-bca3-7d2673c6901f"
* entry[=].resource = 74fb6fce-089e-444d-bca3-7d2673c6901f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/ac6c0a2a-5586-411b-b54d-d2ae20b101ef"
* entry[=].resource = ac6c0a2a-5586-411b-b54d-d2ae20b101ef

Instance: 6550cb10-06e1-44fa-a66d-72f3f60c7c55
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive-Tek-M-new-dublicate-inv - MessageHeader"
Description: "receive-Tek-M-new-dublicate-inv - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(fe92c210-7725-4749-8045-37ed53878f26)
* sender = Reference(74fb6fce-089e-444d-bca3-7d2673c6901f)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(bc0c3901-87d3-4d90-ba32-9b02cc631de8)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

Instance: bc0c3901-87d3-4d90-ba32-9b02cc631de8
InstanceOf: MedComCareCommunication
Title: "receive-Tek-M-new-dublicate-inv - Communication"
Description: "receive-Tek-M-new-dublicate-inv - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(aa6fad12-1876-4c7d-a955-06b78f85eb52)
* identifier.value = "urn:uuid:f3eb2617-5388-4210-ad77-fc1da77f9108"
* payload.contentString = "Jeg håber denne besked er korrekt, hvis ikke, send da en negativ kvittering, tak. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael Burns \n Lægesekretær"
* payload.extension[date].valueDateTime = 2024-08-27T15:20:00+02:00
//* payload.extension[identifier].valueIdentifier.value = "urn:uuid:84a28362-d870-440e-bdf6-7a0102b8f2f6"
* payload.extension[identifier].valueIdentifier.assigner = Reference(fe92c210-7725-4749-8045-37ed53878f26)
* payload.extension[author].valueReference = Reference(fb1abc8a-3238-4292-97dc-327291bf8573)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "+4512345789"

Instance: aa6fad12-1876-4c7d-a955-06b78f85eb52
InstanceOf: MedComCorePatient
Title: "receive-Tek-M-new-dublicate-inv - Patient"
Description: "receive-Tek-M-new-dublicate-inv - Patient"
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
Instance: fe92c210-7725-4749-8045-37ed53878f26
InstanceOf: MedComMessagingOrganization // 
Title: "receive-Tek-M-new-dublicate-inv - Sender"
Description: "receive-Tek-M-new-dublicate-inv - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 74fb6fce-089e-444d-bca3-7d2673c6901f
InstanceOf: MedComMessagingOrganization // 
Title: "receive-Tek-M-new-dublicate-inv - Receiver"
Description: "receive-Tek-M-new-dublicate-inv - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: 3835f51b-869e-4b52-b76d-ab2f906bdbe9
InstanceOf: MedComCorePractitioner
Title: "receive-Tek-M-new-dublicate-inv - practitioner"
Description: "receive-Tek-M-new-dublicate-inv - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: fb1abc8a-3238-4292-97dc-327291bf8573
InstanceOf: MedComCorePractitionerRole
Title: "receive-Tek-M-new-dublicate-inv - practitionerRole"
Description: "receive-Tek-M-new-dublicate-inv - practitionerRole"
* practitioner = Reference(3835f51b-869e-4b52-b76d-ab2f906bdbe9)
* code = $PractitionerRole#laegesekretaer

// CareCommunication example - new message
Instance: ac6c0a2a-5586-411b-b54d-d2ae20b101ef
InstanceOf: MedComCareCommunicationProvenance
Title: "receive-Tek-M-new-dublicate-inv - Provenance"
Description: "receive-Tek-M-new-dublicate-inv - Provenance"
Usage: #example
* target = Reference(6550cb10-06e1-44fa-a66d-72f3f60c7c55)
* occurredDateTime = 2024-08-27T15:20:00+02:00
* recorded = 2024-08-27T15:20:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(fe92c210-7725-4749-8045-37ed53878f26)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:69badd84-ec6d-475f-bedf-d6671b11865d"