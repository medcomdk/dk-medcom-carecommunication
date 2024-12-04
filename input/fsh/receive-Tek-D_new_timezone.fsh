Instance: 82875f08-4b9e-4a23-b81a-e23ec1251334
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek-D_new_timezone"
Description: "receive_Tek-D_new_timezone"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-02T08:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/56d771fd-f8d2-4c46-a56e-af4a46565b5e"
* entry[=].resource = 56d771fd-f8d2-4c46-a56e-af4a46565b5e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/000e3045-8f08-4f17-9ee8-bcf98d564135"
* entry[=].resource = 000e3045-8f08-4f17-9ee8-bcf98d564135
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/cae36d9a-df51-49d9-8851-6ff96f6f0af4"
* entry[=].resource = cae36d9a-df51-49d9-8851-6ff96f6f0af4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/d355f156-a291-4a5f-b5a0-044f9ff1d283"
* entry[=].resource = d355f156-a291-4a5f-b5a0-044f9ff1d283
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/43b59123-9588-4091-ac7c-ef45c90083b5"
* entry[=].resource = 43b59123-9588-4091-ac7c-ef45c90083b5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b93b1d79-4cd4-4737-98d0-4748a0378b09"
* entry[=].resource = b93b1d79-4cd4-4737-98d0-4748a0378b09
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/3d06d6a9-2845-450f-837f-effa4732264d"
* entry[=].resource = 3d06d6a9-2845-450f-837f-effa4732264d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/b1bfb2f7-200b-41e6-b4a0-35bafd1d4770"
* entry[=].resource = b1bfb2f7-200b-41e6-b4a0-35bafd1d4770

Instance: 56d771fd-f8d2-4c46-a56e-af4a46565b5e
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek-D_new_timezone - MessageHeader"
Description: "receive_Tek-D_new_timezone - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(b93b1d79-4cd4-4737-98d0-4748a0378b09)
* sender = Reference(3d06d6a9-2845-450f-837f-effa4732264d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(cae36d9a-df51-49d9-8851-6ff96f6f0af4)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: cae36d9a-df51-49d9-8851-6ff96f6f0af4
InstanceOf: MedComCareCommunication
Title: "receive_Tek-D_new_timezone - Communication"
Description: "receive_Tek-D_new_timezone - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#assistive-devices
* subject = Reference(000e3045-8f08-4f17-9ee8-bcf98d564135)
* identifier.value = "urn:uuid:3fab3414-6c8b-45bf-af93-27dd333554c6"
* payload[0].contentString = "Til rette vedkommende. Har I mon vist det rigtige tidspunkt? Hilsen Michael"
* payload[0].extension[date].valueDateTime = 2024-11-02T08:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:729e63f5-a691-441e-84fe-953594b801b2"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(b93b1d79-4cd4-4737-98d0-4748a0378b09)
* payload[0].extension[author].valueReference = Reference(d355f156-a291-4a5f-b5a0-044f9ff1d283)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 000e3045-8f08-4f17-9ee8-bcf98d564135
InstanceOf: MedComCorePatient
Title: "receive_Tek-D_new_timezone - Patient"
Description: "receive_Tek-D_new_timezone - Patient"
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
Instance: b93b1d79-4cd4-4737-98d0-4748a0378b09
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-D_new_timezone - Sender"
Description: "receive_Tek-D_new_timezone - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 3d06d6a9-2845-450f-837f-effa4732264d
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-D_new_timezone - Receiver"
Description: "receive_Tek-D_new_timezone - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 43b59123-9588-4091-ac7c-ef45c90083b5
InstanceOf: MedComCorePractitioner
Title: "receive_Tek-D_new_timezone - practitioner"
Description: "receive_Tek-D_new_timezone - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: d355f156-a291-4a5f-b5a0-044f9ff1d283
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek-D_new_timezone - practitionerRole"
Description: "receive_Tek-D_new_timezone - practitionerRole"
* practitioner = Reference(43b59123-9588-4091-ac7c-ef45c90083b5)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: b1bfb2f7-200b-41e6-b4a0-35bafd1d4770
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek-D_new_timezone - Provenance"
Description: "receive_Tek-D_new_timezone - Provenance"
Usage: #example
* target = Reference(56d771fd-f8d2-4c46-a56e-af4a46565b5e)
* occurredDateTime = 2024-11-02T08:00:00+01:00
* recorded = 2024-11-02T08:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(b93b1d79-4cd4-4737-98d0-4748a0378b09)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:729e63f5-a691-441e-84fe-953594b801b2"