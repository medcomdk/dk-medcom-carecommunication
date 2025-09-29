Instance: 52b43f0b-2b5c-49d9-b62d-3f76eb8d6821
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_14_DoubleCPR - New CareCommunication message"
Description: "ConSer_CC_14_DoubleCPR - New CareCommunication message"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-09-29T09:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/855bee22-ca86-4ac4-99f9-7981aeced68b"
* entry[=].resource = 855bee22-ca86-4ac4-99f9-7981aeced68b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/06c62382-cd69-438f-acc7-971a3c47ecea"
* entry[=].resource = 06c62382-cd69-438f-acc7-971a3c47ecea
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/48702680-7589-43bb-a350-53df7d85e996"
* entry[=].resource = 48702680-7589-43bb-a350-53df7d85e996
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/b48a8137-95da-4344-9491-0133ddbf6559"
* entry[=].resource = b48a8137-95da-4344-9491-0133ddbf6559
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/91381294-6a76-41b3-be9b-024e2a4593f1"
* entry[=].resource = 91381294-6a76-41b3-be9b-024e2a4593f1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b7402e44-e37b-4a9e-8d1c-daf509fd6cb8"
* entry[=].resource = b7402e44-e37b-4a9e-8d1c-daf509fd6cb8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/293c5fc4-dd72-4136-b83e-c88b317c4c00"
* entry[=].resource = 293c5fc4-dd72-4136-b83e-c88b317c4c00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/7736f642-4e57-419d-ad94-2a944f901375"
* entry[=].resource = 7736f642-4e57-419d-ad94-2a944f901375

Instance: 855bee22-ca86-4ac4-99f9-7981aeced68b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_14_DoubleCPR - Example of MessageHeader"
Description: "ConSer_CC_14_DoubleCPR - Example of MessageHeader"
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* destination[primary].receiver = Reference(293c5fc4-dd72-4136-b83e-c88b317c4c00)
* sender = Reference(b7402e44-e37b-4a9e-8d1c-daf509fd6cb8)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* focus = Reference(48702680-7589-43bb-a350-53df7d85e996)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


Instance: 48702680-7589-43bb-a350-53df7d85e996
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_14_DoubleCPR - Example of Communication"
Description: "ConSer_CC_14_DoubleCPR - Example of Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#telemedicine
* subject = Reference(06c62382-cd69-438f-acc7-971a3c47ecea)
* identifier.value = "urn:uuid:eca85df4-e6c9-41d7-88c0-7e6fb79029b9"
* payload[0].contentString = "Dette er en korrespondancemeddelelse med to almidelige-CPR numre, for at tjekke om det ene sættes ned i tekststrengen og det andet i det relevant tag.\nHilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2025-09-29T09:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:19bb04e9-a3af-4384-9fc5-877f253e2283"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(b7402e44-e37b-4a9e-8d1c-daf509fd6cb8)
* payload[0].extension[author].valueReference = Reference(b48a8137-95da-4344-9491-0133ddbf6559)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 06c62382-cd69-438f-acc7-971a3c47ecea
InstanceOf: MedComCorePatient
Title: "ConSer_CC_14_DoubleCPR - Example of Patient"
Description: "ConSer_CC_14_DoubleCPR - Example of Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996" //det her cpr-nummer er katjas
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989" 
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"


// Sender instance
Instance: b7402e44-e37b-4a9e-8d1c-daf509fd6cb8
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_14_DoubleCPR - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_14_DoubleCPR - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Reciever instance
Instance: 293c5fc4-dd72-4136-b83e-c88b317c4c00
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_14_DoubleCPR - Example of a receiver organization with a SOR and an EAN identifier."
Description: "ConSer_CC_14_DoubleCPR - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"


// Practitioners - new message with attachment
Instance: 91381294-6a76-41b3-be9b-024e2a4593f1
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_14_DoubleCPR - Example of practitioner"
Description: "ConSer_CC_14_DoubleCPR - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: b48a8137-95da-4344-9491-0133ddbf6559
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_14_DoubleCPR - Example of practitionerRole"
Description: "ConSer_CC_14_DoubleCPR - practitionerRole"
* practitioner = Reference(91381294-6a76-41b3-be9b-024e2a4593f1)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: 7736f642-4e57-419d-ad94-2a944f901375
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_14_DoubleCPR - Example of Provenance"
Description: "ConSer_CC_14_DoubleCPR - Example of Provenance"
Usage: #example
* target = Reference(855bee22-ca86-4ac4-99f9-7981aeced68b)
* occurredDateTime = 2025-09-29T09:00:00+02:00
* recorded = 2025-09-29T09:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(b7402e44-e37b-4a9e-8d1c-daf509fd6cb8)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:19bb04e9-a3af-4384-9fc5-877f253e2283"