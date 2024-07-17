Instance: 4f6ee254-6953-4a57-a68e-a5907a5761dc
InstanceOf: MedComCareCommunicationMessage
Title: "receive-F-tek-new"
Description: "receive-F-tek-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-10-15T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/d3339011-1a71-4c5c-a743-bf7d782ac7ae"
* entry[=].resource = d3339011-1a71-4c5c-a743-bf7d782ac7ae
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/de0c79b9-635f-4991-961c-b72390210bf7"
* entry[=].resource = de0c79b9-635f-4991-961c-b72390210bf7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/8434cabb-6066-485c-9bf1-6a4e2e09547b"
* entry[=].resource = 8434cabb-6066-485c-9bf1-6a4e2e09547b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/f552619f-6adf-4f68-9b2d-8636e94e58ed"
* entry[=].resource = f552619f-6adf-4f68-9b2d-8636e94e58ed
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a4b405c0-ea2a-4daf-bbd3-8f8ce99ce1eb"
* entry[=].resource = a4b405c0-ea2a-4daf-bbd3-8f8ce99ce1eb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/d3b21860-e8a9-44ba-8db4-10521975ef34"
* entry[=].resource = d3b21860-e8a9-44ba-8db4-10521975ef34
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/ba9a61b8-62ec-496c-85ff-6a3dd2d213c3"
* entry[=].resource = ba9a61b8-62ec-496c-85ff-6a3dd2d213c3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/c0499c96-d85b-4807-85d2-0f0f1a9d2df0"
* entry[=].resource = c0499c96-d85b-4807-85d2-0f0f1a9d2df0

Instance: d3339011-1a71-4c5c-a743-bf7d782ac7ae
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive-F-tek-new - MessageHeader"
Description: "receive-F-tek-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(d3b21860-e8a9-44ba-8db4-10521975ef34)
* sender = Reference(ba9a61b8-62ec-496c-85ff-6a3dd2d213c3)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(8434cabb-6066-485c-9bf1-6a4e2e09547b)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 8434cabb-6066-485c-9bf1-6a4e2e09547b
InstanceOf: MedComCareCommunication
Title: "receive-F-tek-new - Communication"
Description: "receive-F-tek-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(de0c79b9-635f-4991-961c-b72390210bf7)
* identifier.value = "urn:uuid:3cbe7f6c-6815-4bd9-ac4e-a95bf326daa5"
* payload.contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, visitator."
* payload.extension[date].valueDateTime = 2024-10-15T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:8d9415a0-1b0d-4410-8a97-6097b31e12ff"
* payload.extension[identifier].valueIdentifier.assigner = Reference(d3b21860-e8a9-44ba-8db4-10521975ef34)
* payload.extension[author].valueReference = Reference(f552619f-6adf-4f68-9b2d-8636e94e58ed)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: de0c79b9-635f-4991-961c-b72390210bf7
InstanceOf: MedComCorePatient
Title: "receive-F-tek-new - Patient"
Description: "receive-F-tek-new - Patient"
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
Instance: d3b21860-e8a9-44ba-8db4-10521975ef34
InstanceOf: MedComMessagingOrganization // 
Title: "receive-F-tek-new - Sender"
Description: "receive-F-tek-new - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: ba9a61b8-62ec-496c-85ff-6a3dd2d213c3
InstanceOf: MedComMessagingOrganization // 
Title: "receive-F-tek-new - Receiver"
Description: "receive-F-tek-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: a4b405c0-ea2a-4daf-bbd3-8f8ce99ce1eb
InstanceOf: MedComCorePractitioner
Title: "receive-F-tek-new - practitioner"
Description: "receive-F-tek-new - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: f552619f-6adf-4f68-9b2d-8636e94e58ed
InstanceOf: MedComCorePractitionerRole
Title: "receive-F-tek-new - practitionerRole"
Description: "receive-F-tek-new - practitionerRole"
* practitioner = Reference(a4b405c0-ea2a-4daf-bbd3-8f8ce99ce1eb)
* code.text = "Visitator"

// CareCommunication example - new message
Instance: c0499c96-d85b-4807-85d2-0f0f1a9d2df0
InstanceOf: MedComMessagingProvenance
Title: "receive-F-tek-new - Provenance"
Description: "receive-F-tek-new - Provenance"
Usage: #example
* target = Reference(d3339011-1a71-4c5c-a743-bf7d782ac7ae)
* occurredDateTime = 2024-10-15T15:20:00+01:00
* recorded = 2024-10-15T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(d3b21860-e8a9-44ba-8db4-10521975ef34)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:8d9415a0-1b0d-4410-8a97-6097b31e12ff"