Instance: bed699de-ae44-4fa4-8208-10a35b025476
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek-F_new_deceased"
Description: "receive_Tek-F_new_deceased"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-04T08:30:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/7627e83c-eac9-44d3-9fd1-20b31d3f98d6"
* entry[=].resource = 7627e83c-eac9-44d3-9fd1-20b31d3f98d6
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/14b37923-b02e-42ec-917c-9f3601d741d2"
* entry[=].resource = 14b37923-b02e-42ec-917c-9f3601d741d2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/24d57657-60ba-4871-ad65-6b464b76862e"
* entry[=].resource = 24d57657-60ba-4871-ad65-6b464b76862e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/2f47fad4-539f-4e89-ba73-81f48d3a2996"
* entry[=].resource = 2f47fad4-539f-4e89-ba73-81f48d3a2996
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/93e45bf0-3e84-4a44-a93a-f668b81271b9"
* entry[=].resource = 93e45bf0-3e84-4a44-a93a-f668b81271b9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/35bcac46-d2a0-4fb7-a1a0-2671fbbf2bdd"
* entry[=].resource = 35bcac46-d2a0-4fb7-a1a0-2671fbbf2bdd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/c460e948-e9e9-42c2-8dbc-a0471827b62a"
* entry[=].resource = c460e948-e9e9-42c2-8dbc-a0471827b62a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/331a0b0a-1a7d-4480-88d2-805c478a7fb6"
* entry[=].resource = 331a0b0a-1a7d-4480-88d2-805c478a7fb6

Instance: 7627e83c-eac9-44d3-9fd1-20b31d3f98d6
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek-F_new_deceased - MessageHeader"
Description: "receive_Tek-F_new_deceased - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(35bcac46-d2a0-4fb7-a1a0-2671fbbf2bdd)
* sender = Reference(c460e948-e9e9-42c2-8dbc-a0471827b62a)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(24d57657-60ba-4871-ad65-6b464b76862e)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 24d57657-60ba-4871-ad65-6b464b76862e
InstanceOf: MedComCareCommunication
Title: "receive_Tek-F_new_deceased - Communication"
Description: "receive_Tek-F_new_deceased - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#decease
* subject = Reference(14b37923-b02e-42ec-917c-9f3601d741d2)
* identifier.value = "urn:uuid:086536f8-2621-4b5f-a85c-41e6ed8fc0db"
* payload[0].contentString = "Til rette vedkommende. Vi må desværre meddelele, at Bruno er afgået ved døden tidligere i dag. Hilsen Michael Burns <br/> Social og Sundhedsmedhjælper <br/> +4512345789 <br/> 2024-11-04 08:30"
* payload[0].extension[date].valueDateTime = 2024-11-04T08:30:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:f4793fc4-c720-4edc-948b-b118ae4ab2d2"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(35bcac46-d2a0-4fb7-a1a0-2671fbbf2bdd)
* payload[0].extension[author].valueReference = Reference(2f47fad4-539f-4e89-ba73-81f48d3a2996)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 14b37923-b02e-42ec-917c-9f3601d741d2
InstanceOf: MedComCorePatient
Title: "receive_Tek-F_new_deceased - Patient"
Description: "receive_Tek-F_new_deceased - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true


// Sender instance - new message for attachement
Instance: 35bcac46-d2a0-4fb7-a1a0-2671fbbf2bdd
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-F_new_deceased - Sender"
Description: "receive_Tek-F_new_deceased - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: c460e948-e9e9-42c2-8dbc-a0471827b62a
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-F_new_deceased - Receiver"
Description: "receive_Tek-F_new_deceased - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: 93e45bf0-3e84-4a44-a93a-f668b81271b9
InstanceOf: MedComCorePractitioner
Title: "receive_Tek-F_new_deceased - practitioner"
Description: "receive_Tek-F_new_deceased - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 2f47fad4-539f-4e89-ba73-81f48d3a2996
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek-F_new_deceased - practitionerRole"
Description: "receive_Tek-F_new_deceased - practitionerRole"
* practitioner = Reference(93e45bf0-3e84-4a44-a93a-f668b81271b9)
* code = $PractitionerRole#socialogsundhedsmehjaelper	

// CareCommunication example - new message
Instance: 331a0b0a-1a7d-4480-88d2-805c478a7fb6
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek-F_new_deceased - Provenance"
Description: "receive_Tek-F_new_deceased - Provenance"
Usage: #example
* target = Reference(7627e83c-eac9-44d3-9fd1-20b31d3f98d6)
* occurredDateTime = 2024-11-04T08:30:00+01:00
* recorded = 2024-11-04T08:30:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(35bcac46-d2a0-4fb7-a1a0-2671fbbf2bdd)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:f4793fc4-c720-4edc-948b-b118ae4ab2d2"