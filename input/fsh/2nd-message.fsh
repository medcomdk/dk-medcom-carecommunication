/* Instance: b56549f7-ed10-422d-8088-f7222b686e46
InstanceOf: MedComCareCommunicationMessage
Title: "2nd message - Reply CareCommunication message"
Description: "2nd message - Example of a reply to a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-02T11:30:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/d5bd2111-2576-48d3-84d4-8be0297a038d"
* entry[=].resource = d5bd2111-2576-48d3-84d4-8be0297a038d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/0a50a2fc-916e-45eb-bc8e-4c32750fbb02"
* entry[=].resource = 0a50a2fc-916e-45eb-bc8e-4c32750fbb02
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/4c712bdc-1558-4125-a854-fa8b3a11f6ed"
* entry[=].resource = 4c712bdc-1558-4125-a854-fa8b3a11f6ed
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8bf63050-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 8bf63050-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/7ffff970-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 7ffff970-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf"
* entry[=].resource = 1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/2148b58b-0088-4884-bc11-a927af7c682e"
* entry[=].resource = 2148b58b-0088-4884-bc11-a927af7c682e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/30c0f779-783f-46b2-b38f-faebd2bedb3f"
* entry[=].resource = 30c0f779-783f-46b2-b38f-faebd2bedb3f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/504d3190-7128-4939-b8c8-dc564f788eba"
* entry[=].resource = 504d3190-7128-4939-b8c8-dc564f788eba */



// CareCommunication reply example
Instance: d5bd2111-2576-48d3-84d4-8be0297a038d
InstanceOf: MedComCareCommunicationMessageHeader
Title: "2nd message - Instance of a MessageHeader resource used in a reply message."
Description: "2nd message - Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(2148b58b-0088-4884-bc11-a927af7c682e)
* sender = Reference(1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(4c712bdc-1558-4125-a854-fa8b3a11f6ed)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


Instance: 30c0f779-783f-46b2-b38f-faebd2bedb3f
InstanceOf: MedComCareCommunicationProvenance
Title: "2nd message - The Provenance instance for a reply to a new message"
Description: "2nd message - The Provenance instance is only valid if used in a bundle (message)"
Usage: #inline
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2024-05-02T11:30:00+02:00
* recorded = 2024-05-02T11:30:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf)
* entity[preceedingMessage][0].role = #revision
* entity[preceedingMessage][0].what = Reference(83b49043-e3d5-4fc5-86a3-efd9e612e0cf)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:cd422e42-5bad-11ed-9b6a-0242ac120002"
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"


// CareCommunication reply example
Instance: 4c712bdc-1558-4125-a854-fa8b3a11f6ed
InstanceOf: MedComCareCommunication
Title: "2nd message - Instance of Communication resource used in a reply message."
Description: "2nd message - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:f9cf2547-7a1c-4639-9fd3-9f717556ad36"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(0a50a2fc-916e-45eb-bc8e-4c32750fbb02)
* payload[1].contentString = "Hej Michael, Resultaterne for undersøgelsen kommer her. Blodtryk 130/95 mmHg, vægt: 83 kg og højde: 179 cm. Blodprøven påviste ikke tegn på sukkersyge eller vitaminmangel. Se mere i den vedhæftede pdf. Mvh. Emma"
* payload[1].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(1e6d8768-eddf-4b7c-bf50-4d9ea32ab8cf)
* payload[1].extension[author].valueReference = Reference(8bf63050-5504-11ed-bdc3-0242ac120002) 
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-05-01T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(2148b58b-0088-4884-bc11-a927af7c682e)
* payload[0].extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"
