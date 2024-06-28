Instance: 3dcb5618-3055-406a-9034-1b8fc8de0fea
InstanceOf: MedComCareCommunicationMessage
Title: "3rd message - Reply CareCommunication message"
Description: "3rd message - Example of a reply to a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-03T09:25:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/4dff3695-218d-4878-838a-5f23cbba6f82"
* entry[=].resource = 4dff3695-218d-4878-838a-5f23cbba6f82
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/22d65545-f98a-4b4d-ba36-51b48b3eb3de"
* entry[=].resource = 22d65545-f98a-4b4d-ba36-51b48b3eb3de
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/d2b79da8-acda-4985-a8ad-5ed7ec9a2800"
* entry[=].resource = d2b79da8-acda-4985-a8ad-5ed7ec9a2800
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/2d734f53-c71b-443a-a2d0-41327653b57c"
* entry[=].resource = 2d734f53-c71b-443a-a2d0-41327653b57c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/2a57c93e-de08-423b-b4ee-fcab85cc29bd"
* entry[=].resource = 2a57c93e-de08-423b-b4ee-fcab85cc29bd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/b0b3f1f5-3818-4d1c-aa25-cf08b01697a1"
* entry[=].resource = b0b3f1f5-3818-4d1c-aa25-cf08b01697a1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/9a274f97-57e9-4847-8022-4dc6152351c3"
* entry[=].resource = 9a274f97-57e9-4847-8022-4dc6152351c3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/f20f31cd-5dd2-4a80-ab00-97f7109864a7"
* entry[=].resource = f20f31cd-5dd2-4a80-ab00-97f7109864a7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/82210440-6826-44fc-9fc8-2a29bab6a5c2"
* entry[=].resource = 82210440-6826-44fc-9fc8-2a29bab6a5c2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/5c748aa5-64ab-47a9-a74b-033b04a19dae"
* entry[=].resource = 5c748aa5-64ab-47a9-a74b-033b04a19dae
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/af9b0255-1bdd-49c7-9d39-d652a587e4b2"
* entry[=].resource = af9b0255-1bdd-49c7-9d39-d652a587e4b2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/73232102-649c-4c63-88f5-94ce189b94a7"
* entry[=].resource = 73232102-649c-4c63-88f5-94ce189b94a7

// CareCommunication reply example
Instance: 4dff3695-218d-4878-838a-5f23cbba6f82
InstanceOf: MedComCareCommunicationMessageHeader
Title: "3rd message - Instance of a MessageHeader resource used in a reply message."
Description: "3rd message - Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(f20f31cd-5dd2-4a80-ab00-97f7109864a7)
* sender = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(d2b79da8-acda-4985-a8ad-5ed7ec9a2800)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"




Instance: 73232102-649c-4c63-88f5-94ce189b94a7
InstanceOf: MedComCareCommunicationProvenance
Title: "3rd message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "3rd message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
* target = Reference(4dff3695-218d-4878-838a-5f23cbba6f82)
* occurredDateTime = 2024-05-03T09:25:00+02:00
* recorded = 2024-05-03T09:25:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"


Instance: 5c748aa5-64ab-47a9-a74b-033b04a19dae
InstanceOf: MedComCareCommunicationProvenance
Title: "2nd message - The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Description: "2nd message - The Provenance instance is only valid if used in a bundle (message) - reply to new message"
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2024-05-02T11:30:00+02:00
* recorded = 2024-05-02T11:30:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(f20f31cd-5dd2-4a80-ab00-97f7109864a7)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:cd422e42-5bad-11ed-9b6a-0242ac120002"
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"

// CareCommunication example - new message
Instance: af9b0255-1bdd-49c7-9d39-d652a587e4b2
InstanceOf: MedComCareCommunicationProvenance
Title: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"


// CareCommunication reply example
Instance: d2b79da8-acda-4985-a8ad-5ed7ec9a2800
InstanceOf: MedComCareCommunication
Title: "3rd message - Instance of Communication resource used in a reply message."
Description: "3rd message - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(22d65545-f98a-4b4d-ba36-51b48b3eb3de)
* payload[3].contentString = "Mange tak for fremsendte. Kan I desuden hjælpe mig med at finde information vedr. kommunal udredning for sygdommen? / Michael"
* payload[3].extension[date].valueDateTime = 2024-05-03T09:25:00+02:00
* payload[3].extension[identifier].valueIdentifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"
* payload[3].extension[identifier].valueIdentifier.assigner = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* payload[3].extension[author].valueReference = Reference(b0b3f1f5-3818-4d1c-aa25-cf08b01697a1)
* payload[3].extension[authorContact].valueContactPoint.system = #phone 
* payload[3].extension[authorContact].valueContactPoint.value = "38683868"
* payload[2].contentAttachment.contentType = $bcp13#application/pdf
* payload[2].contentAttachment.creation = 2024-04-30T08:00:00+02:00
* payload[2].contentAttachment.title = "Blodprøveresultater" 
* payload[2].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[2].extension[author].valueReference = Reference(2d734f53-c71b-443a-a2d0-41327653b57c)
* payload[2].extension[authorContact].valueContactPoint.system = #phone 
* payload[2].extension[authorContact].valueContactPoint.value = "44527000"
* payload[2].extension[identifier].valueIdentifier.value = "urn:uuid:cd422e42-5bad-11ed-9b6a-0242ac120002"
* payload[2].extension[identifier].valueIdentifier.assigner = Reference(f20f31cd-5dd2-4a80-ab00-97f7109864a7)
* payload[1].contentString = "Hej Michael, Resultaterne for undersøgelsen kommer her. Blodtryk 130/95 mmHg, vægt: 83 kg og højde: 179 cm. Blodprøven påviste ikke tegn på sukkersyge eller vitaminmangel. Se mere i den vedhæftede pdf. Mvh. Emma"
* payload[1].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(f20f31cd-5dd2-4a80-ab00-97f7109864a7)
* payload[1].extension[author].valueReference = Reference(2d734f53-c71b-443a-a2d0-41327653b57c) 
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-05-01T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* payload[0].extension[author].valueReference = Reference(b0b3f1f5-3818-4d1c-aa25-cf08b01697a1)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"

/* 
Instanser anvendt til new message
*/
Instance: 22d65545-f98a-4b4d-ba36-51b48b3eb3de
InstanceOf: MedComCorePatient
Title: "3rd message - Bruno Test Elmer"
Description: "3rd message - Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* name[official].given = "Bruno"

// Sender instance - new message
Instance: 82210440-6826-44fc-9fc8-2a29bab6a5c2
InstanceOf: MedComMessagingOrganization // 
Title: "3rd message - Example of a sender organization with a SOR and an EAN identifier."
Description: "3rd message - Example of an organization with a SOR and an EAN identifier."
Usage: #example
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

// Reciever instance - new message
Instance: f20f31cd-5dd2-4a80-ab00-97f7109864a7
InstanceOf: MedComMessagingOrganization // 
Title: "3rd message - Example of a reciever organization with a SOR and an EAN identifier."
Description: "3rd message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 9a274f97-57e9-4847-8022-4dc6152351c3
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: b0b3f1f5-3818-4d1c-aa25-cf08b01697a1
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(9a274f97-57e9-4847-8022-4dc6152351c3)
* code = $PractitionerRole#sygeplejerske


//Practitioner - reply message
Instance: 2a57c93e-de08-423b-b4ee-fcab85cc29bd
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Emma"
* name.family = "Waters"

Instance: 2d734f53-c71b-443a-a2d0-41327653b57c
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(2a57c93e-de08-423b-b4ee-fcab85cc29bd)
* code = $PractitionerRole#sygeplejerske


