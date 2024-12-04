Instance: 6e5d7a74-a88a-47a3-8362-20396e9db332
InstanceOf: MedComCareCommunicationMessage
Title: "Receive_Tek-C_new_zulutime"
Description: "Receive_Tek-C_new_zulutime"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-17T14:00:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/39806945-e72d-493f-bec3-1c971fe39dca"
* entry[=].resource = 39806945-e72d-493f-bec3-1c971fe39dca
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/44803bc6-6836-4382-8206-b45748dee5fd"
* entry[=].resource = 44803bc6-6836-4382-8206-b45748dee5fd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/acbf1e41-eeba-464c-9e5e-c05f970e407f"
* entry[=].resource = acbf1e41-eeba-464c-9e5e-c05f970e407f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/81b9df87-23b5-4076-ba79-ec1247eab310"
* entry[=].resource = 81b9df87-23b5-4076-ba79-ec1247eab310
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/b13960d9-c806-40d8-8bee-7acdefc3d768"
* entry[=].resource = b13960d9-c806-40d8-8bee-7acdefc3d768
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/74563c71-15be-4f7a-9281-3d057574cd6b"
* entry[=].resource = 74563c71-15be-4f7a-9281-3d057574cd6b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/baa210c3-9d09-4647-8e1c-d177ac9c1805"
* entry[=].resource = baa210c3-9d09-4647-8e1c-d177ac9c1805
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/2ee940d6-b2b8-4489-a0b0-0ae5a477b618"
* entry[=].resource = 2ee940d6-b2b8-4489-a0b0-0ae5a477b618



Instance: 39806945-e72d-493f-bec3-1c971fe39dca
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Receive_Tek-C_new_zulutime - MessageHeader"
Description: "Receive_Tek-C_new_zulutime - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* destination[primary].receiver = Reference(baa210c3-9d09-4647-8e1c-d177ac9c1805)
* sender = Reference(74563c71-15be-4f7a-9281-3d057574cd6b)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* focus = Reference(acbf1e41-eeba-464c-9e5e-c05f970e407f)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 44803bc6-6836-4382-8206-b45748dee5fd
InstanceOf: MedComCorePatient
Title: "Receive_Tek-C_new_zulutime - Patient"
Description: "Receive_Tek-C_new_zulutime - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 74563c71-15be-4f7a-9281-3d057574cd6b
InstanceOf: MedComMessagingOrganization // 
Title: "Receive_Tek-C_new_zulutime - Sender"
Description: "Receive_Tek-C_new_zulutime - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: baa210c3-9d09-4647-8e1c-d177ac9c1805
InstanceOf: MedComMessagingOrganization // 
Title: "Receive_Tek-C_new_zulutime - Receiver"
Description: "Receive_Tek-C_new_zulutime - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: b13960d9-c806-40d8-8bee-7acdefc3d768
InstanceOf: MedComCorePractitioner
Title: "Receive_Tek-C_new_zulutime - practitioner"
Description: "Receive_Tek-C_new_zulutime - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 81b9df87-23b5-4076-ba79-ec1247eab310
InstanceOf: MedComCorePractitionerRole
Title: "Receive_Tek-C_new_zulutime - practitionerRole"
Description: "Receive_Tek-C_new_zulutime - practitionerRole"
* practitioner = Reference(b13960d9-c806-40d8-8bee-7acdefc3d768)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: 2ee940d6-b2b8-4489-a0b0-0ae5a477b618
InstanceOf: MedComCareCommunicationProvenance
Title: "Receive_Tek-C_new_zulutime - Provenance"
Description: "Receive_Tek-C_new_zulutime - Provenance"
Usage: #example
* target = Reference(39806945-e72d-493f-bec3-1c971fe39dca)
* occurredDateTime = 2024-08-17T14:00:00Z
* recorded = 2024-08-17T14:00:00Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(74563c71-15be-4f7a-9281-3d057574cd6b)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:33225941-7b0d-4f83-a2b0-05e4ba1e11f5"

Instance: acbf1e41-eeba-464c-9e5e-c05f970e407f
InstanceOf: MedComCareCommunication
Title: "Receive_Tek-C_new_zulutime - Communication"
Description: "Receive_Tek-C_new_zulutime - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#alcohol-and-drug-treatment	
* priority = $PriorityCode#asap
* topic.text = "Kritisk tilstand"
* identifier.value = "urn:uuid:2ee940d6-b2b8-4489-a0b0-0ae5a477b618"
* subject = Reference(44803bc6-6836-4382-8206-b45748dee5fd)
* payload[0].contentString = "Til rette vedkommende. Mon I har vist det rigtige tidspunkt? /Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-08-17T14:00:00Z
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:33225941-7b0d-4f83-a2b0-05e4ba1e11f5"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(74563c71-15be-4f7a-9281-3d057574cd6b)
* payload[0].extension[author].valueReference = Reference(81b9df87-23b5-4076-ba79-ec1247eab310)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4538683868"
