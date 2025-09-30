Instance: 30703e82-ea2a-49c9-b4da-74db8857336e
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_13_DoubleCPR - New CareCommunication message"
Description: "ConSer_CC_13_DoubleCPR - New CareCommunication message"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-09-29T09:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/ea9d2910-fe51-416f-bd92-3e8a23c22c59"
* entry[=].resource = ea9d2910-fe51-416f-bd92-3e8a23c22c59
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/938544b6-721d-4d14-9e61-016e726ae180"
* entry[=].resource = 938544b6-721d-4d14-9e61-016e726ae180
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/625a7fc6-cf65-4285-bbcc-93ea59755b2e"
* entry[=].resource = 625a7fc6-cf65-4285-bbcc-93ea59755b2e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/aa97d8ad-4fdf-47ac-9a63-c50446c46bdf"
* entry[=].resource = aa97d8ad-4fdf-47ac-9a63-c50446c46bdf
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/3b21aecc-4a82-4e2d-ab6c-6cabb4df1ad9"
* entry[=].resource = 3b21aecc-4a82-4e2d-ab6c-6cabb4df1ad9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/f6494a29-1837-4f64-b903-da0d46e5da69"
* entry[=].resource = f6494a29-1837-4f64-b903-da0d46e5da69
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/cb801931-b871-418d-bdc5-912893096dea"
* entry[=].resource = cb801931-b871-418d-bdc5-912893096dea
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/1845a241-974c-4ad0-a7ba-2646d6416ded"
* entry[=].resource = 1845a241-974c-4ad0-a7ba-2646d6416ded

Instance: ea9d2910-fe51-416f-bd92-3e8a23c22c59
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_13_DoubleCPR - Example of MessageHeader"
Description: "ConSer_CC_13_DoubleCPR - Example of MessageHeader"
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(cb801931-b871-418d-bdc5-912893096dea)
* sender = Reference(f6494a29-1837-4f64-b903-da0d46e5da69)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(625a7fc6-cf65-4285-bbcc-93ea59755b2e)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


Instance: 625a7fc6-cf65-4285-bbcc-93ea59755b2e
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_13_DoubleCPR - Example of Communication"
Description: "ConSer_CC_13_DoubleCPR - Example of Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(938544b6-721d-4d14-9e61-016e726ae180)
* identifier.value = "urn:uuid:eca85df4-e6c9-41d7-88c0-7e6fb79029b9"
* payload[0].contentString = "Dette er en korrespondancemeddelelse med et almindeligt CPR-nummer men også et erstatnings-CPR.\nHilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2025-09-29T09:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:a7c9e37e-0a5f-4607-939b-7abf11e0c85f"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(f6494a29-1837-4f64-b903-da0d46e5da69)
* payload[0].extension[author].valueReference = Reference(aa97d8ad-4fdf-47ac-9a63-c50446c46bdf)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 938544b6-721d-4d14-9e61-016e726ae180
InstanceOf: MedComCorePatient
Title: "ConSer_CC_13_DoubleCPR - Example of Patient"
Description: "ConSer_CC_13_DoubleCPR - Example of Patient"
* identifier[x-ecpr].system = "urn:oid:1.2.208.176.1.6.1.1"
* identifier[x-ecpr].value = "0703921VJ4" // dette CPR Er taget fra CC_12
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989" 
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"


// Sender instance
Instance: f6494a29-1837-4f64-b903-da0d46e5da69
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_13_DoubleCPR - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_13_DoubleCPR - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Reciever instance
Instance: cb801931-b871-418d-bdc5-912893096dea
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_13_DoubleCPR - Example of a receiver organization with a SOR and an EAN identifier."
Description: "ConSer_CC_13_DoubleCPR - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"


// Practitioners - new message with attachment
Instance: 3b21aecc-4a82-4e2d-ab6c-6cabb4df1ad9
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_13_DoubleCPR - Example of practitioner"
Description: "ConSer_CC_13_DoubleCPR - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: aa97d8ad-4fdf-47ac-9a63-c50446c46bdf
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_13_DoubleCPR - Example of practitionerRole"
Description: "ConSer_CC_13_DoubleCPR - practitionerRole"
* practitioner = Reference(3b21aecc-4a82-4e2d-ab6c-6cabb4df1ad9)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: 1845a241-974c-4ad0-a7ba-2646d6416ded
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_13_DoubleCPR - Example of Provenance"
Description: "ConSer_CC_13_DoubleCPR - Example of Provenance"
Usage: #example
* target = Reference(ea9d2910-fe51-416f-bd92-3e8a23c22c59)
* occurredDateTime = 2025-09-29T09:00:00+02:00
* recorded = 2025-09-29T09:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(f6494a29-1837-4f64-b903-da0d46e5da69)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:a7c9e37e-0a5f-4607-939b-7abf11e0c85f"