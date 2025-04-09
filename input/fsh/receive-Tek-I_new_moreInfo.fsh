Instance: R-Tek-I-new-moreInfo-5d29cc7d-dcf7-4b50-81b1-a8d971973ff6
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek-I_new_moreInfo"
Description: "receive_Tek-I_new_moreInfo"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-08T08:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/53f20992-c926-466a-b5f5-ac6f80fc88d6"
* entry[=].resource = 53f20992-c926-466a-b5f5-ac6f80fc88d6
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/83949bef-2b75-429c-ada7-ca3998fb046a"
* entry[=].resource = 83949bef-2b75-429c-ada7-ca3998fb046a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/435427fb-84c4-496e-ba55-4234091e83cc"
* entry[=].resource = 435427fb-84c4-496e-ba55-4234091e83cc
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/e2eb406c-3a28-4509-baba-2d0a0f6db759"
* entry[=].resource = e2eb406c-3a28-4509-baba-2d0a0f6db759
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/940b514b-938d-4186-85f6-96477ec5b5dd"
* entry[=].resource = 940b514b-938d-4186-85f6-96477ec5b5dd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/89a4dee7-145b-4d09-abaf-24529cb12f15"
* entry[=].resource = 89a4dee7-145b-4d09-abaf-24529cb12f15
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/efb6250c-1ba5-4856-b7e7-d9e830d58c09"
* entry[=].resource = efb6250c-1ba5-4856-b7e7-d9e830d58c09
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/f30ecf6a-7128-4020-b0d8-e1afa4d30655"
* entry[=].resource = f30ecf6a-7128-4020-b0d8-e1afa4d30655

Instance: 53f20992-c926-466a-b5f5-ac6f80fc88d6
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek-I_new_moreInfo - MessageHeader"
Description: "receive_Tek-I_new_moreInfo - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=1053231000016001"
* destination[primary].receiver = Reference(89a4dee7-145b-4d09-abaf-24529cb12f15)
* sender = Reference(efb6250c-1ba5-4856-b7e7-d9e830d58c09)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(435427fb-84c4-496e-ba55-4234091e83cc)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

Instance: 435427fb-84c4-496e-ba55-4234091e83cc
InstanceOf: MedComCareCommunication
Title: "receive_Tek-I_new_moreInfo - Communication"
Description: "receive_Tek-I_new_moreInfo - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#training
* subject = Reference(83949bef-2b75-429c-ada7-ca3998fb046a)
* identifier.value = "urn:uuid:ea0e95d0-f72c-4e7f-9250-a2037be75545"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael Burns \n Ledende Lægesekretær"
* payload[0].extension[date].valueDateTime = 2024-11-08T08:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:8f4863a0-bb37-41f5-bcd9-944f3b04fe11"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(89a4dee7-145b-4d09-abaf-24529cb12f15)
* payload[0].extension[author].valueReference = Reference(e2eb406c-3a28-4509-baba-2d0a0f6db759)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"

Instance: 83949bef-2b75-429c-ada7-ca3998fb046a
InstanceOf: MedComCorePatient
Title: "receive_Tek-I_new_moreInfo - Patient"
Description: "receive_Tek-I_new_moreInfo - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"
* address.line = "Testpark Allé 48"
* address.city = "Hillerød"
* address.postalCode = "3400"
* telecom[0].system = #phone
* telecom[=].value = "47899878"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "hej@med.dig"
* telecom[=].use = #work
* gender = #male 
* managingOrganization = Reference(89a4dee7-145b-4d09-abaf-24529cb12f15)
* maritalStatus = http://hl7.dk/fhir/core/CodeSystem/dk-marital-status#P

// Sender instance - new message for attachement
Instance: 89a4dee7-145b-4d09-abaf-24529cb12f15
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-I_new_moreInfo - Sender"
Description: "receive_Tek-I_new_moreInfo - Sender"
* identifier[0].use = #official
* identifier[=].type.text = "SOR"
* identifier[=].value = "1053231000016001"
* identifier[=].system = "urn:oid:1.2.208.176.1.1"
* identifier[+].use = #official
* identifier[=].type.text = "EAN"
* identifier[=].value = "5790002508240"
* identifier[=].system = "https://www.gs1.org/gln"
* identifier[+].use = #usual
* identifier[=].type.text = "MASTER_EAF"
* identifier[=].value = "11469610"
* identifier[=].system = "urn:oid:1.2.840.114350.1.13.416.3.7.5.737384.158"
* identifier[+].use = #usual
* identifier[=].type.text = "DENMARK"
* identifier[=].value = "219"
* identifier[=].system = "urn:oid:1.2.840.114350.1.13.416.3.7.5.737384.168"
* name = "Sygehusadviser, Hillerød"
* telecom[0].system = #phone
* telecom[=].value = "72 32 00 00"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "72 32 32 13"
* telecom[=].use = #work
* active = true
* address.line = "Trollesmindealle 27"
* address.postalCode = "3400"




// Reciever instance - new message for attachement
Instance: efb6250c-1ba5-4856-b7e7-d9e830d58c09
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-I_new_moreInfo - Receiver"
Description: "receive_Tek-I_new_moreInfo - Receiver"
* identifier[0].use = #official
* identifier[=].type.text = "SOR"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[=].system = "urn:oid:1.2.208.176.1.1"
* identifier[+].use = #official
* identifier[=].type.text = "EAN"
* identifier[EAN-ID].value = "5790001353308" 
* identifier[=].system = "https://www.gs1.org/gln"
* name = "Sundhedsplejen, Aabenraa kommune"
* telecom[0].system = #phone
* telecom[=].value = "01 02 03 04"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "04 03 02 01"
* telecom[=].use = #work
* active = true
* address.line = "Bjerggade 4 E"
* address.postalCode = "6200"

// Practitioners - new message with attachment
Instance: 940b514b-938d-4186-85f6-96477ec5b5dd
InstanceOf: MedComCorePractitioner
Title: "receive_Tek-I_new_moreInfo - practitioner"
Description: "receive_Tek-I_new_moreInfo - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: e2eb406c-3a28-4509-baba-2d0a0f6db759
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek-I_new_moreInfo - practitionerRole"
Description: "receive_Tek-I_new_moreInfo - practitionerRole"
* practitioner = Reference(940b514b-938d-4186-85f6-96477ec5b5dd)
* code = $PractitionerRole#ledendelaegesekretaer

// CareCommunication example - new message
Instance: f30ecf6a-7128-4020-b0d8-e1afa4d30655
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek-I_new_moreInfo - Provenance"
Description: "receive_Tek-I_new_moreInfo - Provenance"
Usage: #example
* target = Reference(53f20992-c926-466a-b5f5-ac6f80fc88d6)
* occurredDateTime = 2024-11-08T08:00:00+01:00
* recorded = 2024-11-08T08:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(89a4dee7-145b-4d09-abaf-24529cb12f15)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:8f4863a0-bb37-41f5-bcd9-944f3b04fe11"