Instance: 7283eae8-0427-4bb0-8486-06b4febd416c
InstanceOf: MedComCareCommunicationMessage
Title: "receive-Tek-R-new-dublicate"
Description: "receive-Tek-R-new-dublicate"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-25T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/7784a5ff-0293-4a54-aaf1-974714807fb3"
* entry[=].resource = 7784a5ff-0293-4a54-aaf1-974714807fb3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/5986ec2e-05a4-4e30-8d2f-f09fb09eb832"
* entry[=].resource = 5986ec2e-05a4-4e30-8d2f-f09fb09eb832
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/5cf35f62-e56a-4eb1-ada4-1abb6ea0dda0"
* entry[=].resource = 5cf35f62-e56a-4eb1-ada4-1abb6ea0dda0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/dfd68df4-1cd1-45a8-a5df-4cc9e78ea0ec"
* entry[=].resource = dfd68df4-1cd1-45a8-a5df-4cc9e78ea0ec
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/881a94fd-8fc5-4d60-be50-8dac03c63fb7"
* entry[=].resource = 881a94fd-8fc5-4d60-be50-8dac03c63fb7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/2aa3877e-d446-4c24-b497-399baaba894c"
* entry[=].resource = 2aa3877e-d446-4c24-b497-399baaba894c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/7add7867-7f93-421b-9b93-41597c3433cb"
* entry[=].resource = 7add7867-7f93-421b-9b93-41597c3433cb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/0ba6b512-88a0-480a-8e79-34faef0ff447"
* entry[=].resource = 0ba6b512-88a0-480a-8e79-34faef0ff447

Instance: 7784a5ff-0293-4a54-aaf1-974714807fb3
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive-Tek-R-new-dublicate - MessageHeader"
Description: "receive-Tek-R-new-dublicate - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(2aa3877e-d446-4c24-b497-399baaba894c)
* sender = Reference(7add7867-7f93-421b-9b93-41597c3433cb)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(5cf35f62-e56a-4eb1-ada4-1abb6ea0dda0)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 5cf35f62-e56a-4eb1-ada4-1abb6ea0dda0
InstanceOf: MedComCareCommunication
Title: "receive-Tek-R-new-dublicate - Communication"
Description: "receive-Tek-R-new-dublicate - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(5986ec2e-05a4-4e30-8d2f-f09fb09eb832)
* identifier.value = "urn:uuid:4098a5ef-3e35-455c-b6cb-01533423593b"
* payload.contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Henrik, læge."
* payload.extension[date].valueDateTime = 2024-08-25T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:da11e1b2-a1c6-40c4-8412-e5b93a52831e"
* payload.extension[identifier].valueIdentifier.assigner = Reference(2aa3877e-d446-4c24-b497-399baaba894c)
* payload.extension[author].valueReference = Reference(dfd68df4-1cd1-45a8-a5df-4cc9e78ea0ec)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 5986ec2e-05a4-4e30-8d2f-f09fb09eb832
InstanceOf: MedComCorePatient
Title: "receive-Tek-R-new-dublicate - Patient"
Description: "receive-Tek-R-new-dublicate - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 2aa3877e-d446-4c24-b497-399baaba894c
InstanceOf: MedComMessagingOrganization // 
Title: "receive-Tek-R-new-dublicate - Sender"
Description: "receive-Tek-R-new-dublicate - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 7add7867-7f93-421b-9b93-41597c3433cb
InstanceOf: MedComMessagingOrganization // 
Title: "receive-Tek-R-new-dublicate - Receiver"
Description: "receive-Tek-R-new-dublicate - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 881a94fd-8fc5-4d60-be50-8dac03c63fb7
InstanceOf: MedComCorePractitioner
Title: "receive-Tek-R-new-dublicate - practitioner"
Description: "receive-Tek-R-new-dublicate - practitioner"
* name.given = "Henrik"
* name.family = "Elderly"

Instance: dfd68df4-1cd1-45a8-a5df-4cc9e78ea0ec
InstanceOf: MedComCorePractitionerRole
Title: "receive-Tek-R-new-dublicate - practitionerRole"
Description: "receive-Tek-R-new-dublicate - practitionerRole"
* practitioner = Reference(881a94fd-8fc5-4d60-be50-8dac03c63fb7)
* code = $PractitionerRole#sygehuslaege

// CareCommunication example - new message
Instance: 0ba6b512-88a0-480a-8e79-34faef0ff447
InstanceOf: MedComCareCommunicationProvenance
Title: "receive-Tek-R-new-dublicate - Provenance"
Description: "receive-Tek-R-new-dublicate - Provenance"
Usage: #example
* target = Reference(7784a5ff-0293-4a54-aaf1-974714807fb3)
* occurredDateTime = 2024-08-25T15:20:00+01:00
* recorded = 2024-08-25T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(2aa3877e-d446-4c24-b497-399baaba894c)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:da11e1b2-a1c6-40c4-8412-e5b93a52831e"