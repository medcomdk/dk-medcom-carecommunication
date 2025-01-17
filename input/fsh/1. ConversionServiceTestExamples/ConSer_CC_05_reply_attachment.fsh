Instance: 7eaf0df6-a625-4fda-b90e-829679495cd5
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_05_reply_attachment - Reply CareCommunication message with attachment"
Description: "ConSer_CC_05_reply_attachment - Example of a reply to a CareCommunication message with attachment"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-03T09:25:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/0b3e8840-f73a-4d79-9a95-d757d4393a0b"
* entry[=].resource = 0b3e8840-f73a-4d79-9a95-d757d4393a0b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/b34b3896-bbcd-4f32-8585-818c530efaa6"
* entry[=].resource = b34b3896-bbcd-4f32-8585-818c530efaa6
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/b7a82b9b-4f0e-46a4-96c7-821c9fe46e88"
* entry[=].resource = b7a82b9b-4f0e-46a4-96c7-821c9fe46e88
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/05ec4a02-370d-4c75-ad52-6a2113b4add7"
* entry[=].resource = 05ec4a02-370d-4c75-ad52-6a2113b4add7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/bcd05031-3ae0-40a3-8b52-ac6b70b28223"
* entry[=].resource = bcd05031-3ae0-40a3-8b52-ac6b70b28223
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/b12b5add-695a-43f5-a298-ee5e71d8ecc1"
* entry[=].resource = b12b5add-695a-43f5-a298-ee5e71d8ecc1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/05c7a26d-2838-4890-8a8b-2df0c3248d11"
* entry[=].resource = 05c7a26d-2838-4890-8a8b-2df0c3248d11
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/5e539a23-594e-4aaa-954b-96dd8291f5ca"
* entry[=].resource = 5e539a23-594e-4aaa-954b-96dd8291f5ca
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/1d0e1feb-7e56-4bda-b4e2-cbd426e449fe"
* entry[=].resource = 1d0e1feb-7e56-4bda-b4e2-cbd426e449fe
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/7e41aa10-49f8-4310-bbec-91854cf6e51a"
* entry[=].resource = 7e41aa10-49f8-4310-bbec-91854cf6e51a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/e84c224a-c070-44b4-8696-e853f83ce383"
* entry[=].resource = e84c224a-c070-44b4-8696-e853f83ce383

// CareCommunication reply example
Instance: 0b3e8840-f73a-4d79-9a95-d757d4393a0b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_05_reply_attachment - Instance of a MessageHeader resource used in a reply message."
Description: "ConSer_CC_05_reply_attachment - Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(5e539a23-594e-4aaa-954b-96dd8291f5ca)
* sender = Reference(1d0e1feb-7e56-4bda-b4e2-cbd426e449fe)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(b7a82b9b-4f0e-46a4-96c7-821c9fe46e88)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"



//New provenance
Instance: e84c224a-c070-44b4-8696-e853f83ce383
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_05_reply_attachment - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "ConSer_CC_05_reply_attachment - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
* target = Reference(0b3e8840-f73a-4d79-9a95-d757d4393a0b)
* occurredDateTime = 2024-05-03T09:25:00+02:00
* recorded = 2024-05-03T09:25:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(1d0e1feb-7e56-4bda-b4e2-cbd426e449fe)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"

//provenance from previous CC
Instance: 7e41aa10-49f8-4310-bbec-91854cf6e51a
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_05_reply_attachment - The Provenance instance from the answered message"
Description: "ConSer_CC_05_reply_attachment - The Provenance instance from the answered message"
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2025-01-03T13:00:00+02:00
* recorded = 2025-01-03T13:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(5e539a23-594e-4aaa-954b-96dd8291f5ca)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:e84c224a-c070-44b4-8696-e853f83ce383"
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:6a0612c1-a8c1-4850-9ab6-73cf7d79c5af"



// CareCommunication reply example
Instance: b7a82b9b-4f0e-46a4-96c7-821c9fe46e88
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_05_reply_attachment - Instance of Communication resource used in a reply message."
Description: "ConSer_CC_05_reply_attachment - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(b34b3896-bbcd-4f32-8585-818c530efaa6)
* payload[2].contentAttachment.contentType = $bcp13#image/tiff
* payload[2].contentAttachment.title = "TIFF-image-testOfTitel" 
* payload[2].extension[date].valueDateTime = 2025-01-06T17:15:00+01:00
* payload[2].extension[identifier].valueIdentifier.value = "urn:uuid:6a0612c1-a8c1-4850-9ab6-73cf7d79c5af"
* payload[2].extension[identifier].valueIdentifier.assigner = Reference(1d0e1feb-7e56-4bda-b4e2-cbd426e449fe)
* payload[2].contentAttachment.data = "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"
* payload[1].contentString = "Hej. Dette er den første besked, jeg har vedhæftet en fil, for yderligere info se mere i den vedhæftede pdf. / Michael, sygeplejerske"
* payload[1].extension[date].valueDateTime = 2024-05-03T09:25:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(1d0e1feb-7e56-4bda-b4e2-cbd426e449fe)
* payload[1].extension[author].valueReference = Reference(b12b5add-695a-43f5-a298-ee5e71d8ecc1)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "38683868"
* payload[0].contentString = "Hej. Dette er den første besked. Mvh. Emma, sygeplejerske"
* payload[0].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(5e539a23-594e-4aaa-954b-96dd8291f5ca)
* payload[0].extension[author].valueReference = Reference(05ec4a02-370d-4c75-ad52-6a2113b4add7) 
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "44527000"

/* 
Instanser anvendt til new message
*/
Instance: b34b3896-bbcd-4f32-8585-818c530efaa6
InstanceOf: MedComCorePatient
Title: "ConSer_CC_05_reply_attachment - Kaja Test Hansen"
Description: "ConSer_CC_05_reply_attachment - Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given = "Kaja"

// Sender instance - new message
Instance: 1d0e1feb-7e56-4bda-b4e2-cbd426e449fe
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_05_reply_attachment - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_05_reply_attachment - Example of an organization with a SOR and an EAN identifier."
Usage: #example
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Reciever instance - new message
Instance: 5e539a23-594e-4aaa-954b-96dd8291f5ca
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_05_reply_attachment - Example of a reciever organization with a SOR and an EAN identifier."
Description: "ConSer_CC_05_reply_attachment - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"

// Practitioners - new message
Instance: 05c7a26d-2838-4890-8a8b-2df0c3248d11
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_05_reply_attachment - Simple practitioner with a name"
Description: "ConSer_CC_05_reply_attachment - Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"  

Instance: b12b5add-695a-43f5-a298-ee5e71d8ecc1
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_05_reply_attachment - PractitionerRole with a role and reference to a practitioner"
Description: "ConSer_CC_05_reply_attachment - PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(05c7a26d-2838-4890-8a8b-2df0c3248d11)
* code = $PractitionerRole#sygeplejerske


//Practitioner - reply message
Instance: bcd05031-3ae0-40a3-8b52-ac6b70b28223
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_05_reply_attachment - Simple practitioner with a name"
Description: "ConSer_CC_05_reply_attachment - Simple practitioner with a name"
* name.given = "Emma"
* name.family = "Waters"

Instance: 05ec4a02-370d-4c75-ad52-6a2113b4add7
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_05_reply_attachment - PractitionerRole with a role and reference to a practitioner"
Description: "ConSer_CC_05_reply_attachment - PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(bcd05031-3ae0-40a3-8b52-ac6b70b28223)
* code = $PractitionerRole#sygeplejerske


