Instance: 0d5b3c18-fab6-4d93-9d88-c9c8abf1f18c
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message."
Description: "Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-06-01T13:55:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/025bdfdd-397b-43e2-9e8c-272664a6e471"
* entry[=].resource = 025bdfdd-397b-43e2-9e8c-272664a6e471
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/50c51ef0-00b0-429a-b212-35ee0773fd5a"
* entry[=].resource = 50c51ef0-00b0-429a-b212-35ee0773fd5a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/d8434eb5-8286-48f8-a590-4a27175ed82f"
* entry[=].resource = d8434eb5-8286-48f8-a590-4a27175ed82f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/2e8c8e54-388c-4547-954c-1917652986da"
* entry[=].resource = 2e8c8e54-388c-4547-954c-1917652986da
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/97511212-12e6-4182-a42b-cf232c0c117c"
* entry[=].resource = 97511212-12e6-4182-a42b-cf232c0c117c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b2f762be-6994-44da-a214-72c765655b3e"
* entry[=].resource = b2f762be-6994-44da-a214-72c765655b3e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/0ece868c-6a72-4aa3-8a96-2d985ab630c7"
* entry[=].resource = 0ece868c-6a72-4aa3-8a96-2d985ab630c7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/d0cbe580-b47c-4858-ab5e-6c4ba3d2de2a"
* entry[=].resource = d0cbe580-b47c-4858-ab5e-6c4ba3d2de2a

// CareCommunication new example
Instance: 025bdfdd-397b-43e2-9e8c-272664a6e471
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(b2f762be-6994-44da-a214-72c765655b3e)
* sender = Reference(0ece868c-6a72-4aa3-8a96-2d985ab630c7)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(d8434eb5-8286-48f8-a590-4a27175ed82f)
* definition = "http://medcomfhir.dk/ig/carecommunication/StructureDefinition/MedComCareCommunicationMessageDefinition|4.0.0"


// CareCommunication new example
Instance: d8434eb5-8286-48f8-a590-4a27175ed82f
InstanceOf: MedComCareCommunication
Title: "Instance of Communication resource used in a new message."
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* subject = Reference(50c51ef0-00b0-429a-b212-35ee0773fd5a)
* payload.contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-06-01T13:55:00+02:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload.extension[identifier].valueIdentifier.assigner = Reference(0ece868c-6a72-4aa3-8a96-2d985ab630c7)
* payload.extension[author].valueReference = Reference(2e8c8e54-388c-4547-954c-1917652986da)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"

// CareCommunication example - new message
Instance: d0cbe580-b47c-4858-ab5e-6c4ba3d2de2a
InstanceOf: MedComCareCommunicationProvenance
Title: "The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(025bdfdd-397b-43e2-9e8c-272664a6e471)
* occurredDateTime = 2024-06-01T13:55:00+02:00
* recorded = 2024-06-01T13:55:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(0ece868c-6a72-4aa3-8a96-2d985ab630c7)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"

Instance: 50c51ef0-00b0-429a-b212-35ee0773fd5a
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier.system = "urn:oid:1.2.208.176.1.6.1.1"
* identifier.value = "0102882KL5"
* identifier.use = #temp
* name[official].use = #official
* name[official].family = "Berggren"
* name[official].given = "Birgit"

Instance: 0ece868c-6a72-4aa3-8a96-2d985ab630c7
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

Instance: b2f762be-6994-44da-a214-72c765655b3e
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 97511212-12e6-4182-a42b-cf232c0c117c
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 2e8c8e54-388c-4547-954c-1917652986da
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(97511212-12e6-4182-a42b-cf232c0c117c)
* code = $PractitionerRole#sygeplejerske
