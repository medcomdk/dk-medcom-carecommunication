Instance: 7c5a0cc0-f0f8-4a2e-9de9-d9293598bf94
InstanceOf: MedComCareCommunicationMessage
Title: "Receive-L-Tek-new - New CareCommunication message."
Description: "Receive-L-Tek-new - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-24T12:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/8f537c84-17f9-4fd1-a3d6-3d4008d6c6ec"
* entry[=].resource = 8f537c84-17f9-4fd1-a3d6-3d4008d6c6ec
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/b7fed758-bfdd-4c21-bfca-bb0b4b7081a0"
* entry[=].resource = b7fed758-bfdd-4c21-bfca-bb0b4b7081a0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/26bc9e59-e225-4330-9a0c-e6f06785846d"
* entry[=].resource = 26bc9e59-e225-4330-9a0c-e6f06785846d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/569a1bff-55a1-4868-a7b4-80fedb2066e3"
* entry[=].resource = 569a1bff-55a1-4868-a7b4-80fedb2066e3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a28e0818-2957-4d60-bc86-41d236bf23db"
* entry[=].resource = a28e0818-2957-4d60-bc86-41d236bf23db
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/966bc46d-f02f-4be3-a44a-d47ebdf4fdad"
* entry[=].resource = 966bc46d-f02f-4be3-a44a-d47ebdf4fdad
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/55b3ef79-9e10-4b52-9d94-6c97ff5a0999"
* entry[=].resource = 55b3ef79-9e10-4b52-9d94-6c97ff5a0999
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/0696ca09-5213-4b6c-98e6-0d7c05c16080"
* entry[=].resource = 0696ca09-5213-4b6c-98e6-0d7c05c16080

Instance: 55b3ef79-9e10-4b52-9d94-6c97ff5a0999
InstanceOf: MedComMessagingOrganization // 
Title: "1st message - Example of a sender organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: 966bc46d-f02f-4be3-a44a-d47ebdf4fdad
InstanceOf: MedComMessagingOrganization // 
Title: "1st message - Example of a reciever organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: a28e0818-2957-4d60-bc86-41d236bf23db
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 569a1bff-55a1-4868-a7b4-80fedb2066e3
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(a28e0818-2957-4d60-bc86-41d236bf23db)
* code = $PractitionerRole#sygeplejerske

Instance: b7fed758-bfdd-4c21-bfca-bb0b4b7081a0
InstanceOf: MedComCorePatient
Title: "1st message - Peter Hansen"
Description: "1st message - Patient described with minimal information. Valid only if used in a Bundle."
* identifier.system = "urn:oid:1.2.208.176.1.6.1.1"
* identifier.value = "0703921VJ5"
* name.use = #official
* name.given = "Peter"
* name.family = "Hansen"

// CareCommunication new example
Instance: 8f537c84-17f9-4fd1-a3d6-3d4008d6c6ec
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Receive-L-Tek-new - Instance of a MessageHeader resource used in a new message."
Description: "Receive-L-Tek-new - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(966bc46d-f02f-4be3-a44a-d47ebdf4fdad)
* sender = Reference(55b3ef79-9e10-4b52-9d94-6c97ff5a0999)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(26bc9e59-e225-4330-9a0c-e6f06785846d)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


// CareCommunication new example
Instance: 26bc9e59-e225-4330-9a0c-e6f06785846d
InstanceOf: MedComCareCommunication
Title: "Receive-L-Tek-new - Instance of Communication resource used in a new message."
Description: "Receive-L-Tek-new - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:d6d721a1-f4ec-4906-8946-ef808525bef1"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(b7fed758-bfdd-4c21-bfca-bb0b4b7081a0)
* payload.contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-08-24T12:00:00+02:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:67ebe566-c20e-4885-8fff-5552875ef74c"
* payload.extension[identifier].valueIdentifier.assigner = Reference(55b3ef79-9e10-4b52-9d94-6c97ff5a0999)
* payload.extension[author].valueReference = Reference(569a1bff-55a1-4868-a7b4-80fedb2066e3)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"

// CareCommunication example - new message
Instance: 0696ca09-5213-4b6c-98e6-0d7c05c16080
InstanceOf: MedComCareCommunicationProvenance
Title: "Receive-L-Tek-new - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "Receive-L-Tek-new - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(8f537c84-17f9-4fd1-a3d6-3d4008d6c6ec)
* occurredDateTime = 2024-08-24T12:00:00+02:00
* recorded = 2024-08-24T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(55b3ef79-9e10-4b52-9d94-6c97ff5a0999)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:67ebe566-c20e-4885-8fff-5552875ef74c"


Instance: 3e047a9d-c86a-4828-b686-6a80403df5eb
InstanceOf: MedComCareCommunicationMessage
Title: "Receive-K-Tek-reply - Reply CareCommunication message"
Description: "Receive-K-Tek-reply - Example of a reply to a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-02T11:30:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/2414b445-665f-41af-9ecd-b97c0b58c081"
* entry[=].resource = 2414b445-665f-41af-9ecd-b97c0b58c081
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/b7fed758-bfdd-4c21-bfca-bb0b4b7081a0"
* entry[=].resource = b7fed758-bfdd-4c21-bfca-bb0b4b7081a0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/9e829a72-32b2-4810-a56e-1e8f3a81e888"
* entry[=].resource = 9e829a72-32b2-4810-a56e-1e8f3a81e888
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8bf63050-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 8bf63050-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/7ffff970-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 7ffff970-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/569a1bff-55a1-4868-a7b4-80fedb2066e3"
* entry[=].resource = 569a1bff-55a1-4868-a7b4-80fedb2066e3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a28e0818-2957-4d60-bc86-41d236bf23db"
* entry[=].resource = a28e0818-2957-4d60-bc86-41d236bf23db
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/966bc46d-f02f-4be3-a44a-d47ebdf4fdad"
* entry[=].resource = 966bc46d-f02f-4be3-a44a-d47ebdf4fdad
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/55b3ef79-9e10-4b52-9d94-6c97ff5a0999"
* entry[=].resource = 55b3ef79-9e10-4b52-9d94-6c97ff5a0999
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/61f5b1c7-c342-48c7-b7ee-81fcf6f01f0e"
* entry[=].resource = 61f5b1c7-c342-48c7-b7ee-81fcf6f01f0e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/0696ca09-5213-4b6c-98e6-0d7c05c16080"
* entry[=].resource = 0696ca09-5213-4b6c-98e6-0d7c05c16080



// CareCommunication reply example
Instance: 2414b445-665f-41af-9ecd-b97c0b58c081
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Receive-K-Tek-reply - Instance of a MessageHeader resource used in a reply message."
Description: "Receive-K-Tek-reply - Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(55b3ef79-9e10-4b52-9d94-6c97ff5a0999)
* sender = Reference(966bc46d-f02f-4be3-a44a-d47ebdf4fdad)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(9e829a72-32b2-4810-a56e-1e8f3a81e888)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 61f5b1c7-c342-48c7-b7ee-81fcf6f01f0e
InstanceOf: MedComCareCommunicationProvenance
Title: "Receive-K-Tek-reply - The Provenance instance for a reply to a new message"
Description: "Receive-K-Tek-reply - The Provenance instance is only valid if used in a bundle (message)"
Usage: #inline
* target = Reference(2414b445-665f-41af-9ecd-b97c0b58c081)
* occurredDateTime = 2024-05-02T11:30:00+02:00
* recorded = 2024-05-02T11:30:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(966bc46d-f02f-4be3-a44a-d47ebdf4fdad)
* entity[preceedingMessage][0].role = #revision
* entity[preceedingMessage][0].what = Reference(8f537c84-17f9-4fd1-a3d6-3d4008d6c6ec)
* entity[payload][0].role = #source
* entity[payload][0].what.identifier.value = "urn:uuid:ac353781-0e43-447d-80f4-d090028abcc1"


// CareCommunication reply example
Instance: 9e829a72-32b2-4810-a56e-1e8f3a81e888
InstanceOf: MedComCareCommunication
Title: "Receive-K-Tek-reply - Instance of Communication resource used in a reply message."
Description: "Receive-K-Tek-reply - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:d6d721a1-f4ec-4906-8946-ef808525bef1"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(b7fed758-bfdd-4c21-bfca-bb0b4b7081a0)
* payload[1].contentString = "Hej Michael, Resultaterne for undersøgelsen kommer her. Blodtryk 130/95 mmHg, vægt: 83 kg og højde: 179 cm. Blodprøven påviste ikke tegn på sukkersyge eller vitaminmangel. Se mere i den vedhæftede pdf. Mvh. Emma"
* payload[1].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:ac353781-0e43-447d-80f4-d090028abcc1"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(966bc46d-f02f-4be3-a44a-d47ebdf4fdad)
* payload[1].extension[author].valueReference = Reference(8bf63050-5504-11ed-bdc3-0242ac120002) 
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-08-24T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:67ebe566-c20e-4885-8fff-5552875ef74c"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(55b3ef79-9e10-4b52-9d94-6c97ff5a0999)
* payload[0].extension[author].valueReference = Reference(569a1bff-55a1-4868-a7b4-80fedb2066e3)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"
