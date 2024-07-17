Instance: 81b715aa-e993-4e7c-9b8a-4a05c10b540e
InstanceOf: MedComCareCommunicationMessage
Title: "Send-E-new"
Description: "Send-E-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-09-09T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/53aef9cc-0104-408e-8e67-e65fb64f8f74"
* entry[=].resource = 53aef9cc-0104-408e-8e67-e65fb64f8f74
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/badec6f1-1cd7-474d-a445-f3fcf7ccd926"
* entry[=].resource = badec6f1-1cd7-474d-a445-f3fcf7ccd926
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/682519df-2e8c-4890-914c-d6e0f936bb08"
* entry[=].resource = 682519df-2e8c-4890-914c-d6e0f936bb08
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/1be91ae0-ed06-47d3-b42f-4b3bc41fb76e"
* entry[=].resource = 1be91ae0-ed06-47d3-b42f-4b3bc41fb76e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/b004946b-6960-46da-8e88-68de64f0dbe8"
* entry[=].resource = b004946b-6960-46da-8e88-68de64f0dbe8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/01f408d4-b6f1-448a-833e-9a9fd83befef"
* entry[=].resource = 01f408d4-b6f1-448a-833e-9a9fd83befef
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/e6eca63f-1cf5-4cf8-8b08-481907a278d6"
* entry[=].resource = e6eca63f-1cf5-4cf8-8b08-481907a278d6
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/9b06f698-dbca-45ba-be53-9c8b09715c43"
* entry[=].resource = 9b06f698-dbca-45ba-be53-9c8b09715c43

Instance: 53aef9cc-0104-408e-8e67-e65fb64f8f74
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-E-new - MessageHeader"
Description: "Send-E-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(01f408d4-b6f1-448a-833e-9a9fd83befef)
* sender = Reference(e6eca63f-1cf5-4cf8-8b08-481907a278d6)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(682519df-2e8c-4890-914c-d6e0f936bb08)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 682519df-2e8c-4890-914c-d6e0f936bb08
InstanceOf: MedComCareCommunication
Title: "Send-E-new - Communication"
Description: "Send-E-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(badec6f1-1cd7-474d-a445-f3fcf7ccd926)
* identifier.value = "urn:uuid:a1090f8b-499e-46dc-ac78-43468e07ebd8"
* payload.contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, visitator."
* payload.extension[date].valueDateTime = 2024-09-09T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:139e3105-6114-415a-ab86-d78b3599fa0e"
* payload.extension[identifier].valueIdentifier.assigner = Reference(01f408d4-b6f1-448a-833e-9a9fd83befef)
* payload.extension[author].valueReference = Reference(1be91ae0-ed06-47d3-b42f-4b3bc41fb76e)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: badec6f1-1cd7-474d-a445-f3fcf7ccd926
InstanceOf: MedComCorePatient
Title: "Send-E-new - Patient"
Description: "Send-E-new - Patient"
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

// Sender instance - new message for attachement
Instance: 01f408d4-b6f1-448a-833e-9a9fd83befef
InstanceOf: MedComMessagingOrganization // 
Title: "Send-E-new - Sender"
Description: "Send-E-new - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: e6eca63f-1cf5-4cf8-8b08-481907a278d6
InstanceOf: MedComMessagingOrganization // 
Title: "Send-E-new - Receiver"
Description: "Send-E-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: b004946b-6960-46da-8e88-68de64f0dbe8
InstanceOf: MedComCorePractitioner
Title: "Send-E-new - practitioner"
Description: "Send-E-new - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 1be91ae0-ed06-47d3-b42f-4b3bc41fb76e
InstanceOf: MedComCorePractitionerRole
Title: "Send-E-new - practitionerRole"
Description: "Send-E-new - practitionerRole"
* practitioner = Reference(b004946b-6960-46da-8e88-68de64f0dbe8)
* code.text = "Visitator"

// CareCommunication example - new message
Instance: 9b06f698-dbca-45ba-be53-9c8b09715c43
InstanceOf: MedComMessagingProvenance
Title: "Send-E-new - Provenance"
Description: "Send-E-new - Provenance"
Usage: #example
* target = Reference(53aef9cc-0104-408e-8e67-e65fb64f8f74)
* occurredDateTime = 2024-09-09T15:20:00+01:00
* recorded = 2024-09-09T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(01f408d4-b6f1-448a-833e-9a9fd83befef)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:139e3105-6114-415a-ab86-d78b3599fa0e"