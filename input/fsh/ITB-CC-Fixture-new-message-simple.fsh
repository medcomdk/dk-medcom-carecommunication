Instance: 2dccc592-8647-4633-b852-6bd50ce46f89
InstanceOf: MedComCareCommunicationMessage
Title: "1st message - New CareCommunication message."
Description: "1st message - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/b14124c9-47c2-4f6b-8717-405bbbe1d60b"
* entry[=].resource = b14124c9-47c2-4f6b-8717-405bbbe1d60b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/0a50a2fc-916e-45eb-bc8e-4c32750fbb02"
* entry[=].resource = 0a50a2fc-916e-45eb-bc8e-4c32750fbb02
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/04091bdd-ca8f-4001-9b5b-71261c48f319"
* entry[=].resource = 04091bdd-ca8f-4001-9b5b-71261c48f319
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf"
* entry[=].resource = 1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/2148b58b-0088-4884-bc11-a927af7c682e"
* entry[=].resource = 2148b58b-0088-4884-bc11-a927af7c682e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/9035ec74-6c26-4b0e-bb65-aa33be250785"
* entry[=].resource = 9035ec74-6c26-4b0e-bb65-aa33be250785

// CareCommunication new example
Instance: b14124c9-47c2-4f6b-8717-405bbbe1d60b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "1st message - Instance of a MessageHeader resource used in a new message."
Description: "1st message - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf)
* sender = Reference(2148b58b-0088-4884-bc11-a927af7c682e)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(04091bdd-ca8f-4001-9b5b-71261c48f319)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


// CareCommunication new example
Instance: 04091bdd-ca8f-4001-9b5b-71261c48f319
InstanceOf: MedComCareCommunication
Title: "1st message - Instance of Communication resource used in a new message."
Description: "1st message - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(0a50a2fc-916e-45eb-bc8e-4c32750fbb02)
* payload[0].contentString = "Til rette vedkommende. Dette er en ny korrespondancemeddelelse. Jeg vil interesseret i at høre, om du har indlæst filen korrekt. Send venligst et svar retur eller send denne besked videre til relevant organisation. På forhånd tak. Hilsen Hans, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-05-01T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(2148b58b-0088-4884-bc11-a927af7c682e)
* payload[0].extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"

// CareCommunication example - new message
Instance: 9035ec74-6c26-4b0e-bb65-aa33be250785
InstanceOf: MedComCareCommunicationProvenance
Title: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(b14124c9-47c2-4f6b-8717-405bbbe1d60b)
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(2148b58b-0088-4884-bc11-a927af7c682e)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
