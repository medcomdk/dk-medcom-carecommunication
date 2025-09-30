Instance: 0e671da8-6dbf-491a-b659-4df547e83ae1
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_15_DoubleCPR - New CareCommunication message"
Description: "ConSer_CC_15_DoubleCPR - New CareCommunication message"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-09-29T09:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/73893146-ff6f-4455-99c3-9126c74d16a2"
* entry[=].resource = 73893146-ff6f-4455-99c3-9126c74d16a2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/e1ada6b9-0782-4e18-b2e1-85ab642018a9"
* entry[=].resource = e1ada6b9-0782-4e18-b2e1-85ab642018a9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/be7239e2-f715-45f6-a427-c07c25ef4bef"
* entry[=].resource = be7239e2-f715-45f6-a427-c07c25ef4bef
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/b362049e-9f98-4192-af53-2409cc817560"
* entry[=].resource = b362049e-9f98-4192-af53-2409cc817560
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/ff5d0fe4-730a-4370-9775-1ff8bb033e26"
* entry[=].resource = ff5d0fe4-730a-4370-9775-1ff8bb033e26
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/c20dccdc-4a01-4e06-b9f2-5246152794ab"
* entry[=].resource = c20dccdc-4a01-4e06-b9f2-5246152794ab
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/2af0aac8-cfe4-4fe9-865f-1542f02f5470"
* entry[=].resource = 2af0aac8-cfe4-4fe9-865f-1542f02f5470
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/792ec529-aa61-44cc-97f9-b9a5b446b4fe"
* entry[=].resource = 792ec529-aa61-44cc-97f9-b9a5b446b4fe

Instance: 73893146-ff6f-4455-99c3-9126c74d16a2
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_15_DoubleCPR - Example of MessageHeader"
Description: "ConSer_CC_15_DoubleCPR - Example of MessageHeader"
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(2af0aac8-cfe4-4fe9-865f-1542f02f5470)
* sender = Reference(c20dccdc-4a01-4e06-b9f2-5246152794ab)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(be7239e2-f715-45f6-a427-c07c25ef4bef)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"


Instance: be7239e2-f715-45f6-a427-c07c25ef4bef
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_15_DoubleCPR - Example of Communication"
Description: "ConSer_CC_15_DoubleCPR - Example of Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(e1ada6b9-0782-4e18-b2e1-85ab642018a9)
* identifier.value = "urn:uuid:eca85df4-e6c9-41d7-88c0-7e6fb79029b9"
* payload[0].contentString = "Dette er en korrespondancemeddelelse med to erstatnings-CPR numre, af hver sin type.\nHilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2025-09-29T09:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:1d881c60-609f-4dac-9b17-cac3959cd01d"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(c20dccdc-4a01-4e06-b9f2-5246152794ab)
* payload[0].extension[author].valueReference = Reference(b362049e-9f98-4192-af53-2409cc817560)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: e1ada6b9-0782-4e18-b2e1-85ab642018a9
InstanceOf: MedComCorePatient
Title: "ConSer_CC_15_DoubleCPR - Example of Patient"
Description: "ConSer_CC_15_DoubleCPR - Example of Patient"
* identifier[x-ecpr].system = "urn:oid:1.2.208.176.1.6.1.1"
* identifier[x-ecpr].value = "0703921VJ5"
* identifier[d-ecpr].system = "urn:oid:1.2.208.176.1.6.1.3"
* identifier[d-ecpr].value = "1206550VK9"
* name[official].use = #official
* name[official].given = "Peter"
* name[official].family = "Hansen"



// Sender instance
Instance: c20dccdc-4a01-4e06-b9f2-5246152794ab
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_15_DoubleCPR - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_15_DoubleCPR - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Reciever instance
Instance: 2af0aac8-cfe4-4fe9-865f-1542f02f5470
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_15_DoubleCPR - Example of a receiver organization with a SOR and an EAN identifier."
Description: "ConSer_CC_15_DoubleCPR - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"


// Practitioners - new message with attachment
Instance: ff5d0fe4-730a-4370-9775-1ff8bb033e26
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_15_DoubleCPR - Example of practitioner"
Description: "ConSer_CC_15_DoubleCPR - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: b362049e-9f98-4192-af53-2409cc817560
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_15_DoubleCPR - Example of practitionerRole"
Description: "ConSer_CC_15_DoubleCPR - practitionerRole"
* practitioner = Reference(ff5d0fe4-730a-4370-9775-1ff8bb033e26)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: 792ec529-aa61-44cc-97f9-b9a5b446b4fe
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_15_DoubleCPR - Example of Provenance"
Description: "ConSer_CC_15_DoubleCPR - Example of Provenance"
Usage: #example
* target = Reference(73893146-ff6f-4455-99c3-9126c74d16a2)
* occurredDateTime = 2025-09-29T09:00:00+02:00
* recorded = 2025-09-29T09:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(c20dccdc-4a01-4e06-b9f2-5246152794ab)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:1d881c60-609f-4dac-9b17-cac3959cd01d"