Instance: add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c
InstanceOf: MedComCareCommunicationMessage
Title: "1st message - New CareCommunication message."
Description: "1st message - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/42cb9200-f421-4d08-8391-7d51a2503cb4"
* entry[=].resource = 42cb9200-f421-4d08-8391-7d51a2503cb4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/94e65db8-2f0c-4a2c-a7c9-06a160d59a12"
* entry[=].resource = 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/487ac745-fd11-4879-9b59-c08c7d47260e"
* entry[=].resource = 487ac745-fd11-4879-9b59-c08c7d47260e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b581c63c-181f-46f6-990d-b9942c576724"
* entry[=].resource = b581c63c-181f-46f6-990d-b9942c576724
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

// CareCommunication new example
Instance: 42cb9200-f421-4d08-8391-7d51a2503cb4
InstanceOf: MedComCareCommunicationMessageHeader
Title: "1st message - Instance of a MessageHeader resource used in a new message."
Description: "1st message - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* sender = Reference(b581c63c-181f-46f6-990d-b9942c576724)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(94e65db8-2f0c-4a2c-a7c9-06a160d59a12)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


// CareCommunication new example
Instance: 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
InstanceOf: MedComCareCommunication
Title: "1st message - Instance of Communication resource used in a new message."
Description: "1st message - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(733cef33-3626-422b-955d-d506aaa65fe1)
* payload.contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-05-01T12:00:00+02:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload.extension[identifier].valueIdentifier.assigner = Reference(b581c63c-181f-46f6-990d-b9942c576724)
* payload.extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"

// CareCommunication example - new message
Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComCareCommunicationProvenance
Title: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(b581c63c-181f-46f6-990d-b9942c576724)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
