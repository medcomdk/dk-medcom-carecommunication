Instance: c289e585-7f30-4d58-88e3-0baedd9ffeee
InstanceOf: MedComCareCommunicationMessage
Title: "receive-N-tek-new-dublicate"
Description: "receive-N-tek-new-dublicate"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-26T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/b8040f0c-2921-4da1-a481-023baa352b01"
* entry[=].resource = b8040f0c-2921-4da1-a481-023baa352b01
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/73782c2a-c9be-4ca6-9c70-020c0bd83511"
* entry[=].resource = 73782c2a-c9be-4ca6-9c70-020c0bd83511
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/a31cae55-2d49-41f2-ae74-562dc4547572"
* entry[=].resource = a31cae55-2d49-41f2-ae74-562dc4547572
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/01b4af5e-314a-4992-9683-67cc2876fecf"
* entry[=].resource = 01b4af5e-314a-4992-9683-67cc2876fecf
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/9f50e7b5-8da2-4832-bef8-eed9dc69ec6f"
* entry[=].resource = 9f50e7b5-8da2-4832-bef8-eed9dc69ec6f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/1cc8e567-bf4a-4dc6-b427-f23942cb4661"
* entry[=].resource = 1cc8e567-bf4a-4dc6-b427-f23942cb4661
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/77dcf3fd-9ee6-4e64-9ab4-b1619bae5811"
* entry[=].resource = 77dcf3fd-9ee6-4e64-9ab4-b1619bae5811
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/ddc0fc7b-0ad1-43e1-b9c4-b1a3d9ef1c50"
* entry[=].resource = ddc0fc7b-0ad1-43e1-b9c4-b1a3d9ef1c50

Instance: b8040f0c-2921-4da1-a481-023baa352b01
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive-N-tek-new-dublicate - MessageHeader"
Description: "receive-N-tek-new-dublicate - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(1cc8e567-bf4a-4dc6-b427-f23942cb4661)
* sender = Reference(77dcf3fd-9ee6-4e64-9ab4-b1619bae5811)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(a31cae55-2d49-41f2-ae74-562dc4547572)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: a31cae55-2d49-41f2-ae74-562dc4547572
InstanceOf: MedComCareCommunication
Title: "receive-N-tek-new-dublicate - Communication"
Description: "receive-N-tek-new-dublicate - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#other
* topic.text = "Dublikater"
* subject = Reference(73782c2a-c9be-4ca6-9c70-020c0bd83511)
* identifier.value = "urn:uuid:9b35b179-2436-4422-9873-bbf9dff9765a"
* payload.contentString = "Hej, jeg vil blot sikre mig, at denne meddelelse ikke vises to gange. Alt godt med Bruno. Mvh. Michelle."
* payload.extension[date].valueDateTime = 2024-08-26T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:69badd84-ec6d-475f-bedf-d6671b11865d"
* payload.extension[identifier].valueIdentifier.assigner = Reference(1cc8e567-bf4a-4dc6-b427-f23942cb4661)
* payload.extension[author].valueReference = Reference(01b4af5e-314a-4992-9683-67cc2876fecf)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 73782c2a-c9be-4ca6-9c70-020c0bd83511
InstanceOf: MedComCorePatient
Title: "receive-N-tek-new-dublicate - Patient"
Description: "receive-N-tek-new-dublicate - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"


// Sender instance - new message for attachement
Instance: 1cc8e567-bf4a-4dc6-b427-f23942cb4661
InstanceOf: MedComMessagingOrganization // 
Title: "receive-N-tek-new-dublicate - Sender"
Description: "receive-N-tek-new-dublicate - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 77dcf3fd-9ee6-4e64-9ab4-b1619bae5811
InstanceOf: MedComMessagingOrganization // 
Title: "receive-N-tek-new-dublicate - Receiver"
Description: "receive-N-tek-new-dublicate - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 9f50e7b5-8da2-4832-bef8-eed9dc69ec6f
InstanceOf: MedComCorePractitioner
Title: "receive-N-tek-new-dublicate - practitioner"
Description: "receive-N-tek-new-dublicate - practitioner"
* name.given = "Michelle"
* name.family = "Burns"

Instance: 01b4af5e-314a-4992-9683-67cc2876fecf
InstanceOf: MedComCorePractitionerRole
Title: "receive-N-tek-new-dublicate - practitionerRole"
Description: "receive-N-tek-new-dublicate - practitionerRole"
* practitioner = Reference(9f50e7b5-8da2-4832-bef8-eed9dc69ec6f)
* code = $PractitionerRole#laegesekretaer

// CareCommunication example - new message
Instance: ddc0fc7b-0ad1-43e1-b9c4-b1a3d9ef1c50
InstanceOf: MedComMessagingProvenance
Title: "receive-N-tek-new-dublicate - Provenance"
Description: "receive-N-tek-new-dublicate - Provenance"
Usage: #example
* target = Reference(b8040f0c-2921-4da1-a481-023baa352b01)
* occurredDateTime = 2024-08-26T15:20:00+01:00
* recorded = 2024-08-26T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(1cc8e567-bf4a-4dc6-b427-f23942cb4661)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:69badd84-ec6d-475f-bedf-d6671b11865d"