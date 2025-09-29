Instance: 2ca92c02-b3d1-4107-98bf-daab005378a2
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_07_reply - Reply CareCommunication message"
Description: "ConSer_CC_07_reply - Example of a reply to a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-02T11:30:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/d1536429-8fca-4f93-a433-30c2ccca3ed7"
* entry[=].resource = d1536429-8fca-4f93-a433-30c2ccca3ed7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/aab29fb1-7b56-450c-aee8-0d50f40b800e"
* entry[=].resource = aab29fb1-7b56-450c-aee8-0d50f40b800e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/c44ac9c1-16a4-4f00-87e2-e508c9216625"
* entry[=].resource = c44ac9c1-16a4-4f00-87e2-e508c9216625
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8bf63050-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 8bf63050-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/7ffff970-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 7ffff970-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/950e52a4-4ab5-4436-becf-206a8cb6154a"
* entry[=].resource = 950e52a4-4ab5-4436-becf-206a8cb6154a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/67637a07-b789-4d3f-b452-d9aed28d8247"
* entry[=].resource = 67637a07-b789-4d3f-b452-d9aed28d8247
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/c8c5f360-e818-4d2f-85d6-5442035d703e"
* entry[=].resource = c8c5f360-e818-4d2f-85d6-5442035d703e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400



// CareCommunication reply example
Instance: d1536429-8fca-4f93-a433-30c2ccca3ed7
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_07_reply - Instance of a MessageHeader resource used in a reply message."
Description: "ConSer_CC_07_reply - Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(67637a07-b789-4d3f-b452-d9aed28d8247)
* sender = Reference(950e52a4-4ab5-4436-becf-206a8cb6154a)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(c44ac9c1-16a4-4f00-87e2-e508c9216625)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


Instance: c8c5f360-e818-4d2f-85d6-5442035d703e
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_07_reply - The Provenance instance for a reply to a new message"
Description: "ConSer_CC_07_reply - The Provenance instance is only valid if used in a bundle (message)"
Usage: #inline
* target = Reference(d1536429-8fca-4f93-a433-30c2ccca3ed7)
* occurredDateTime = 2024-05-02T11:30:00+02:00
* recorded = 2024-05-02T11:30:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(950e52a4-4ab5-4436-becf-206a8cb6154a)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"

Instance: aab29fb1-7b56-450c-aee8-0d50f40b800e
InstanceOf: MedComCorePatient
Title: "ConSer_CC_07_reply - Example of Patient"
Description: "ConSer_CC_07_reply - Example of Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"
* address.line = "Testpark Allé 48"
* address.city = "Hillerød"
* address.postalCode = "3400"
* telecom.system = #phone
* telecom.value = "47899878"
* telecom.use = #mobile

// Sender instance
Instance: 950e52a4-4ab5-4436-becf-206a8cb6154a
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_07_reply - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_07_reply - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Reciever instance
Instance: 67637a07-b789-4d3f-b452-d9aed28d8247
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_07_reply - Example of a receiver organization with a SOR and an EAN identifier."
Description: "ConSer_CC_07_reply - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"


// CareCommunication reply example
Instance: c44ac9c1-16a4-4f00-87e2-e508c9216625
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_07_reply - Instance of Communication resource used in a reply message."
Description: "ConSer_CC_07_reply - Content of care communication message. Valid only if used in a bundle (message) - reply message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Forspørgsel på seneste resultater"
* subject = Reference(aab29fb1-7b56-450c-aee8-0d50f40b800e)
* payload[1].contentString = "Hej Michael, Resultaterne for undersøgelsen kommer her. Blodtryk 130/95 mmHg, vægt: 83 kg og højde: 179 cm. Blodprøven påviste ikke tegn på sukkersyge eller vitaminmangel. Se mere i den vedhæftede pdf. Mvh. Emma"
* payload[1].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(950e52a4-4ab5-4436-becf-206a8cb6154a)
* payload[1].extension[author].valueReference = Reference(8bf63050-5504-11ed-bdc3-0242ac120002) 
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-05-01T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(67637a07-b789-4d3f-b452-d9aed28d8247)
* payload[0].extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"
