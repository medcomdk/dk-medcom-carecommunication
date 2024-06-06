Instance: d11968f5-4bdf-4b50-b146-a8e1cc890fc3
InstanceOf: MedComCareCommunicationMessage
Title: "5th message - Reply CareCommunication message"
Description: "5th message - Example of a reply CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-05T11:35:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/2654e182-cfee-4537-b744-e36231ebe2f3"
* entry[=].resource = 2654e182-cfee-4537-b744-e36231ebe2f3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/22d65545-f98a-4b4d-ba36-51b48b3eb3de"
* entry[=].resource = 22d65545-f98a-4b4d-ba36-51b48b3eb3de
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/d148fa55-3201-4a18-a7b0-bce67bf597a6"
* entry[=].resource = d148fa55-3201-4a18-a7b0-bce67bf597a6
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/2d734f53-c71b-443a-a2d0-41327653b57c"
* entry[=].resource = 2d734f53-c71b-443a-a2d0-41327653b57c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/2a57c93e-de08-423b-b4ee-fcab85cc29bd"
* entry[=].resource = 2a57c93e-de08-423b-b4ee-fcab85cc29bd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/b0b3f1f5-3818-4d1c-aa25-cf08b01697a1"
* entry[=].resource = b0b3f1f5-3818-4d1c-aa25-cf08b01697a1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/9a274f97-57e9-4847-8022-4dc6152351c3"
* entry[=].resource = 9a274f97-57e9-4847-8022-4dc6152351c3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/f98ed410-54fe-11ed-bdc3-0242ac120002"
* entry[=].resource = f98ed410-54fe-11ed-bdc3-0242ac120002
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
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/5c689ef2-c6d7-4c74-adb8-303b772532e2"
* entry[=].resource = 5c689ef2-c6d7-4c74-adb8-303b772532e2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/dbf9c64e-5f36-4b19-a681-58aba32926c2"
* entry[=].resource = dbf9c64e-5f36-4b19-a681-58aba32926c2

Instance: dbf9c64e-5f36-4b19-a681-58aba32926c2
InstanceOf: MedComCareCommunicationProvenance
Title: "5th message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "5th message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Usage: #inline
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2024-05-04T10:00:00+01:00
* recorded = 2024-05-04T10:00:00+01:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(4dff3695-218d-4878-838a-5f23cbba6f82)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:22093247-f2f5-4b25-a5b2-f1dcbbc3998b"

// CareCommunication reply example
Instance: 2654e182-cfee-4537-b744-e36231ebe2f3
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a reply message."
Description: "Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=1042981000016003"
* destination[primary].receiver = Reference(f98ed410-54fe-11ed-bdc3-0242ac120002)
* sender = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb)

// CareCommunication reply example
Instance: d148fa55-3201-4a18-a7b0-bce67bf597a6
InstanceOf: MedComCareCommunication
Title: "5th message - Instance of Communication resource used in a reply message."
Description: "5th message - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:89bd68bd-2c55-4e2d-98a8-e60dafed5e80"
* category = $CategoryCodes#examination-results
* subject = Reference(22d65545-f98a-4b4d-ba36-51b48b3eb3de)
* payload[4].contentString = "Hej - Jeg håber det er okay, at jeg videresender denne forespørgsel. Kan I hjælpe os med at finde den, af Michael Burns, efterspurgte information. På forhånd tak. /Emma"
* payload[4].extension[date].valueDateTime = 2024-05-04T10:00:00+01:00
* payload[4].extension[identifier].valueIdentifier.value = "urn:uuid:bc9382ba-30f7-4020-a7c4-cbd18f9b4115"
* payload[4].extension[identifier].valueIdentifier.assigner = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* payload[4].extension[author].valueReference = Reference(b0b3f1f5-3818-4d1c-aa25-cf08b01697a1)
* payload[4].extension[authorContact].valueContactPoint.system = #phone 
* payload[4].extension[authorContact].valueContactPoint.value = "44527000"
* payload[3].contentString = "Mange tak for fremsendte. Kan I desuden hjælpe mig med at finde information vedr. kommunal udredning for sygdommen? / Michael"
* payload[3].extension[date].valueDateTime = 2024-05-03T09:25:00+01:00
* payload[3].extension[identifier].valueIdentifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"
* payload[3].extension[identifier].valueIdentifier.assigner = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* payload[3].extension[author].valueReference = Reference(b0b3f1f5-3818-4d1c-aa25-cf08b01697a1)
* payload[3].extension[authorContact].valueContactPoint.system = #phone 
* payload[3].extension[authorContact].valueContactPoint.value = "38683868"
* payload[2].contentAttachment.contentType = $bcp13#application/pdf
* payload[2].contentAttachment.creation = 2024-04-30T08:00:00+01:00
* payload[2].contentAttachment.title = "Bloprøveresultater" 
* payload[2].extension[date].valueDateTime = 2024-05-02T11:30:00+01:00
* payload[2].extension[author].valueReference = Reference(2d734f53-c71b-443a-a2d0-41327653b57c)
* payload[2].extension[authorContact].valueContactPoint.system = #phone 
* payload[2].extension[authorContact].valueContactPoint.value = "44527000"
* payload[2].extension[identifier].valueIdentifier.value = "urn:uuid:cd422e42-5bad-11ed-9b6a-0242ac120002"
* payload[2].extension[identifier].valueIdentifier.assigner = Reference(f20f31cd-5dd2-4a80-ab00-97f7109864a7)
* payload[1].contentString = "Hej Michael, Resultaterne for undersøgelsen kommer her. Blodtryk 130/95 mmHg, vægt: 83 kg og højde: 179 cm. Blodprøven påviste ikke tegn på sukkersyge eller vitaminmangel. Se mere i den vedhæftede pdf. Mvh. Emma"
* payload[1].extension[date].valueDateTime = 2024-05-02T11:30:00+01:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(f20f31cd-5dd2-4a80-ab00-97f7109864a7)
* payload[1].extension[author].valueReference = Reference(2d734f53-c71b-443a-a2d0-41327653b57c) 
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-05-01T12:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(82210440-6826-44fc-9fc8-2a29bab6a5c2)
* payload[0].extension[author].valueReference = Reference(b0b3f1f5-3818-4d1c-aa25-cf08b01697a1)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"
 