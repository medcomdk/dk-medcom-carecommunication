// CareCommunication reply to XDIS message
Instance: k7bfbc0c-553d-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "Reply CareCommunication message. Reply to OIOXML Message"
Description: "Example of a reply to an OIOXML message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-07T18:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/3076d9b0-5521-11ed-bdc3-0242ac120002"
* entry[=].resource = 3076d9b0-5521-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/23ebfcd8-e4f2-4ce8-908b-aa7cfb9ffef5"
* entry[=].resource = 23ebfcd8-e4f2-4ce8-908b-aa7cfb9ffef5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/f54efd18-5520-11ed-bdc3-0242ac120002"
* entry[=].resource = f54efd18-5520-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8dc790ba-8d93-4585-b91c-af8225b0796d"
* entry[=].resource = 8dc790ba-8d93-4585-b91c-af8225b0796d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/8659596f-6ef4-421c-9ecd-94b65e4d5ff8"
* entry[=].resource = 8659596f-6ef4-421c-9ecd-94b65e4d5ff8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Encounter/2a5b01e4-8c2c-481b-ab12-e383d8e00629"
* entry[=].resource = 2a5b01e4-8c2c-481b-ab12-e383d8e00629
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/ae899cbd-933b-4581-9a16-bd2da73f06a0"
* entry[=].resource = ae899cbd-933b-4581-9a16-bd2da73f06a0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f"
* entry[=].resource = e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/6de0806d-7050-4db8-8003-0c72aee52948"
* entry[=].resource = 6de0806d-7050-4db8-8003-0c72aee52948

// CareCommunication reply to OIOXML example
Instance: 3076d9b0-5521-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a reply to an OIOXML message."
Description: "MessageHeader for CareCommunication reply to an OIOXML message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(ae899cbd-933b-4581-9a16-bd2da73f06a0)
* sender = Reference(e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(f54efd18-5520-11ed-bdc3-0242ac120002)

Instance: 6de0806d-7050-4db8-8003-0c72aee52948
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Usage: #example
* target = Reference(3076d9b0-5521-11ed-bdc3-0242ac120002)
* occurredDateTime = 2024-05-07T18:00:00+02:00
* recorded = 2024-05-07T18:00:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what.identifier.value = "B300720181623#5790000121526"
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:8521000b-ce04-4c18-b9b1-04dcbdf8e112"

/* 
Instanser anvendt til reply to XDIS message
*/
Instance: 23ebfcd8-e4f2-4ce8-908b-aa7cfb9ffef5
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// MedComCoreEncounter instance
Instance: 2a5b01e4-8c2c-481b-ab12-e383d8e00629
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#finished 
* class = $ActCodes#IMP 
* subject = Reference(23ebfcd8-e4f2-4ce8-908b-aa7cfb9ffef5)
* episodeOfCare.identifier.value = "fc60e762-b13b-5773-865e-67f3907bdcc7" 
* episodeOfCare.identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000" // SOR id for afsender/serviceProvider

// Sender instance - new message
Instance: e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: ae899cbd-933b-4581-9a16-bd2da73f06a0
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 8659596f-6ef4-421c-9ecd-94b65e4d5ff8
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 8dc790ba-8d93-4585-b91c-af8225b0796d
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(8659596f-6ef4-421c-9ecd-94b65e4d5ff8)
* code = $PractitionerRole#sygeplejerske

// CareCommunication reply to OIOXML notification example
Instance: f54efd18-5520-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunication
Title: "Instance of Communication resource used in a reply message. A reply to an OIOXML message"
Description: "Content of care communication message. Valid only if used in a bundle (message)."
Usage: #example
* status = $EventStatus#unknown
* identifier.value = "59aac95e-ca57-4b04-b075-9880b7e6441c"
* category = $CategoryCodes#carecoordination
* subject = Reference(23ebfcd8-e4f2-4ce8-908b-aa7cfb9ffef5)
* encounter = Reference(2a5b01e4-8c2c-481b-ab12-e383d8e00629)
* payload.contentString = "We have a question regarding the referal..."
* payload.extension[date].valueDateTime = 2024-05-07T18:00:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:8521000b-ce04-4c18-b9b1-04dcbdf8e112"
* payload.extension[identifier].valueIdentifier.assigner = Reference(e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f)
* payload.extension[author].valueReference = Reference(8dc790ba-8d93-4585-b91c-af8225b0796d)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"
