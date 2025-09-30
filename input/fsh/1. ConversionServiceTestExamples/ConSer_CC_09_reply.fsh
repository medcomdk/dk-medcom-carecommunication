// Denne besked er et reply til ConSer_CC_03_attachment
Instance: e33518d5-1cc7-468a-817f-239f9688490f
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_09_reply - Reply CareCommunication message with attachment"
Description: "ConSer_CC_09_reply - Example of a reply to a CareCommunication message with attachment"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-03T09:25:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/e0765936-0ff2-4058-aee3-41d37a794131"
* entry[=].resource = e0765936-0ff2-4058-aee3-41d37a794131
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/d2017f6b-c831-4eba-a186-59e1e4f19165"
* entry[=].resource = d2017f6b-c831-4eba-a186-59e1e4f19165
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/289d5578-1224-4c7b-b0bd-da6cc08bd7c0"
* entry[=].resource = 289d5578-1224-4c7b-b0bd-da6cc08bd7c0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8ae1c0b7-eb7d-4bc4-be5e-6782983117ff"
* entry[=].resource = 8ae1c0b7-eb7d-4bc4-be5e-6782983117ff
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a5662f8a-70de-4adc-871c-b22257ae6276"
* entry[=].resource = a5662f8a-70de-4adc-871c-b22257ae6276
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/4a430005-f38b-4900-9fe3-baed1f95fa34"
* entry[=].resource = 4a430005-f38b-4900-9fe3-baed1f95fa34
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/8d51ef0e-e438-4cc3-a2c2-70a1d24fd85b"
* entry[=].resource = 8d51ef0e-e438-4cc3-a2c2-70a1d24fd85b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/cd573069-3281-4f2b-b216-b7be7fd82762"
* entry[=].resource = cd573069-3281-4f2b-b216-b7be7fd82762
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/2c178026-e176-4995-9b63-1eef54898f1f"
* entry[=].resource = 2c178026-e176-4995-9b63-1eef54898f1f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/b19a25a0-f56e-4164-bb16-2ce72dd789e6"
* entry[=].resource = b19a25a0-f56e-4164-bb16-2ce72dd789e6
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/94266293-87ab-47bf-864d-55bfec5e3135"
* entry[=].resource = 94266293-87ab-47bf-864d-55bfec5e3135

// CareCommunication reply example
Instance: e0765936-0ff2-4058-aee3-41d37a794131
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_09_reply - Instance of a MessageHeader resource used in a reply message."
Description: "ConSer_CC_09_reply - Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(cd573069-3281-4f2b-b216-b7be7fd82762)
* sender = Reference(2c178026-e176-4995-9b63-1eef54898f1f)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(289d5578-1224-4c7b-b0bd-da6cc08bd7c0)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"




Instance: 94266293-87ab-47bf-864d-55bfec5e3135
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_09_reply - The Provenance instance is only valid if used in a bundle (message)"
Description: "ConSer_CC_09_reply - The Provenance instance is only valid if used in a bundle (message)"
* target = Reference(e0765936-0ff2-4058-aee3-41d37a794131)
* occurredDateTime = 2024-05-03T09:25:00+02:00
* recorded = 2024-05-03T09:25:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(2c178026-e176-4995-9b63-1eef54898f1f)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"


Instance: b19a25a0-f56e-4164-bb16-2ce72dd789e6
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_09_reply - The Provenance instance from the answered message"
Description: "ConSer_CC_09_reply - The Provenance instance from the answered message"
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2025-01-03T13:00:00+02:00
* recorded = 2025-01-03T13:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(cd573069-3281-4f2b-b216-b7be7fd82762)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"



// CareCommunication reply example
Instance: 289d5578-1224-4c7b-b0bd-da6cc08bd7c0
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_09_reply - Instance of Communication resource used in a reply message."
Description: "ConSer_CC_09_reply - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(d2017f6b-c831-4eba-a186-59e1e4f19165)
* payload[2].contentString = "Mange tak for fremsendte. Kan I desuden hjælpe mig med at finde information vedr. kommunal udredning for sygdommen? / Michael"
* payload[2].extension[date].valueDateTime = 2024-05-03T09:25:00+02:00
* payload[2].extension[identifier].valueIdentifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"
* payload[2].extension[identifier].valueIdentifier.assigner = Reference(2c178026-e176-4995-9b63-1eef54898f1f)
* payload[2].extension[author].valueReference = Reference(4a430005-f38b-4900-9fe3-baed1f95fa34)
* payload[2].extension[authorContact].valueContactPoint.system = #phone 
* payload[2].extension[authorContact].valueContactPoint.value = "38683868"
* payload[1].contentAttachment.contentType = $bcp13#application/pdf
* payload[1].contentAttachment.creation = 2024-04-30T08:00:00+02:00
* payload[1].contentAttachment.title = "Blodprøveresultater" 
* payload[1].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[1].extension[author].valueReference = Reference(8ae1c0b7-eb7d-4bc4-be5e-6782983117ff)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:cd422e42-5bad-11ed-9b6a-0242ac120002"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(cd573069-3281-4f2b-b216-b7be7fd82762)
* payload[0].contentString = "Hej. Dette er den første besked, jeg har vedhæftet en fil, for yderligere info se mere i den vedhæftede pdf. Mvh. Emma, sygeplejerske"
* payload[0].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(cd573069-3281-4f2b-b216-b7be7fd82762)
* payload[0].extension[author].valueReference = Reference(8ae1c0b7-eb7d-4bc4-be5e-6782983117ff) 
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "44527000"

/* 
Instanser anvendt til new message
*/
Instance: d2017f6b-c831-4eba-a186-59e1e4f19165
InstanceOf: MedComCorePatient
Title: "ConSer_CC_09_reply - Kaja Test Hansen"
Description: "ConSer_CC_09_reply - Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given = "Kaja"

// Sender instance - new message
Instance: 2c178026-e176-4995-9b63-1eef54898f1f
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_09_reply - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_09_reply - Example of an organization with a SOR and an EAN identifier."
Usage: #example
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Reciever instance - new message
Instance: cd573069-3281-4f2b-b216-b7be7fd82762
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_09_reply - Example of a reciever organization with a SOR and an EAN identifier."
Description: "ConSer_CC_09_reply - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"

// Practitioners - new message
Instance: 8d51ef0e-e438-4cc3-a2c2-70a1d24fd85b
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_09_reply - Simple practitioner with a name"
Description: "ConSer_CC_09_reply - Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"  

Instance: 4a430005-f38b-4900-9fe3-baed1f95fa34
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_09_reply - PractitionerRole with a role and reference to a practitioner"
Description: "ConSer_CC_09_reply - PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(8d51ef0e-e438-4cc3-a2c2-70a1d24fd85b)
* code = $PractitionerRole#sygeplejerske


//Practitioner - reply message
Instance: a5662f8a-70de-4adc-871c-b22257ae6276
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_09_reply - Simple practitioner with a name"
Description: "ConSer_CC_09_reply - Simple practitioner with a name"
* name.given = "Emma"
* name.family = "Waters"

Instance: 8ae1c0b7-eb7d-4bc4-be5e-6782983117ff
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_09_reply - PractitionerRole with a role and reference to a practitioner"
Description: "ConSer_CC_09_reply - PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(a5662f8a-70de-4adc-871c-b22257ae6276)
* code = $PractitionerRole#sygeplejerske


