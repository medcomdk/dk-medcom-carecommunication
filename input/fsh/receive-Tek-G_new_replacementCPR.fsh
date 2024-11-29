Instance: abfcb7c7-1381-4dba-b4b7-cc1c3713e515
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek-G_new_replacementCPR"
Description: "receive_Tek-G_new_replacementCPR"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-05T20:30:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/28ef90de-49e5-47b4-87a4-08ffc3d4b45a"
* entry[=].resource = 28ef90de-49e5-47b4-87a4-08ffc3d4b45a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/442804e5-2f1e-4a73-b1b9-a3a0eaff1849"
* entry[=].resource = 442804e5-2f1e-4a73-b1b9-a3a0eaff1849
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/f1947b33-8b35-4cdf-9e0a-0141352f8e42"
* entry[=].resource = f1947b33-8b35-4cdf-9e0a-0141352f8e42
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/d77f2b26-2d83-4e31-b320-9f581c51c5dd"
* entry[=].resource = d77f2b26-2d83-4e31-b320-9f581c51c5dd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/5d923318-8e37-4fe5-97d3-de93682aed6d"
* entry[=].resource = 5d923318-8e37-4fe5-97d3-de93682aed6d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/9cf4942a-b0ed-45ba-b13d-6a655f2c0acf"
* entry[=].resource = 9cf4942a-b0ed-45ba-b13d-6a655f2c0acf
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/f9342201-81bd-4a41-a7e5-0f2ae8823656"
* entry[=].resource = f9342201-81bd-4a41-a7e5-0f2ae8823656
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/8263b00b-99d4-4899-add4-dc5f27515e7c"
* entry[=].resource = 8263b00b-99d4-4899-add4-dc5f27515e7c

Instance: 28ef90de-49e5-47b4-87a4-08ffc3d4b45a
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek-G_new_replacementCPR - MessageHeader"
Description: "receive_Tek-G_new_replacementCPR - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(9cf4942a-b0ed-45ba-b13d-6a655f2c0acf)
* sender = Reference(f9342201-81bd-4a41-a7e5-0f2ae8823656)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(f1947b33-8b35-4cdf-9e0a-0141352f8e42)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: f1947b33-8b35-4cdf-9e0a-0141352f8e42
InstanceOf: MedComCareCommunication
Title: "receive_Tek-G_new_replacementCPR - Communication"
Description: "receive_Tek-G_new_replacementCPR - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#carecommunication
* subject = Reference(442804e5-2f1e-4a73-b1b9-a3a0eaff1849)
* identifier.value = "urn:uuid:bf3d9ae2-8c06-4769-8ea2-6f5295f6440b"
* payload[0].contentString = "Til rette vedkommende. Vi har desværre ikke anden information end et fornavn. Pt. oplyser, at have være i tilknytning til jer. Kan I bekræfte det? På forhånd tak. Hilsen Michael, visitator."
* payload[0].extension[date].valueDateTime = 2024-11-05T20:30:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:12ff8a10-36b0-43d7-8f6d-61449fe3a1ec"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(9cf4942a-b0ed-45ba-b13d-6a655f2c0acf)
* payload[0].extension[author].valueReference = Reference(d77f2b26-2d83-4e31-b320-9f581c51c5dd)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 442804e5-2f1e-4a73-b1b9-a3a0eaff1849
InstanceOf: MedComCorePatient
Title: "receive_Tek-G_new_replacementCPR - Patient"
Description: "receive_Tek-G_new_replacementCPR - Patient"
* identifier.system = #urn:oid:1.2.208.176.1.6.1.3.177
* identifier.value = "1206550VK9"
* name.use = #temp
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension.valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
* name.given = "Peter"
* gender = #male



// Sender instance - new message for attachement
Instance: 9cf4942a-b0ed-45ba-b13d-6a655f2c0acf
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-G_new_replacementCPR - Sender"
Description: "receive_Tek-G_new_replacementCPR - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: f9342201-81bd-4a41-a7e5-0f2ae8823656
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-G_new_replacementCPR - Receiver"
Description: "receive_Tek-G_new_replacementCPR - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 5d923318-8e37-4fe5-97d3-de93682aed6d
InstanceOf: MedComCorePractitioner
Title: "receive_Tek-G_new_replacementCPR - practitioner"
Description: "receive_Tek-G_new_replacementCPR - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: d77f2b26-2d83-4e31-b320-9f581c51c5dd
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek-G_new_replacementCPR - practitionerRole"
Description: "receive_Tek-G_new_replacementCPR - practitionerRole"
* practitioner = Reference(5d923318-8e37-4fe5-97d3-de93682aed6d)
* code.text = "Visitator"

// CareCommunication example - new message
Instance: 8263b00b-99d4-4899-add4-dc5f27515e7c
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek-G_new_replacementCPR - Provenance"
Description: "receive_Tek-G_new_replacementCPR - Provenance"
Usage: #example
* target = Reference(28ef90de-49e5-47b4-87a4-08ffc3d4b45a)
* occurredDateTime = 2024-11-05T20:30:00+01:00
* recorded = 2024-11-05T20:30:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(9cf4942a-b0ed-45ba-b13d-6a655f2c0acf)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:12ff8a10-36b0-43d7-8f6d-61449fe3a1ec"