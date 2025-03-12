// TEK-U skal være en dublet af T med forsellig bundle ID: Derfor skal TEK-T kopiers til U of indsætte nyt bundle-ID. 
Instance: fa97e431-332f-4605-ad37-c259dc2b8637
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek-U-new-dublicate"
Description: "receive_Tek-U-new-dublicate"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-28T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/559e4be0-e1f2-4371-969d-29bbbd5ca9d1"
* entry[=].resource = 559e4be0-e1f2-4371-969d-29bbbd5ca9d1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/283b6471-3134-4b7e-9d48-b6fad32e6384"
* entry[=].resource = 283b6471-3134-4b7e-9d48-b6fad32e6384
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/e49ad4b0-537a-442c-b624-e0ae956410da"
* entry[=].resource = e49ad4b0-537a-442c-b624-e0ae956410da
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/67612d44-215b-4441-a35b-b6ab3ab9c9ce"
* entry[=].resource = 67612d44-215b-4441-a35b-b6ab3ab9c9ce
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/dd46a69e-b2e5-4e0d-9cc4-95259c9722e2"
* entry[=].resource = dd46a69e-b2e5-4e0d-9cc4-95259c9722e2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/2052a3bd-c32d-4e81-b5ec-83f9ad012899"
* entry[=].resource = 2052a3bd-c32d-4e81-b5ec-83f9ad012899
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/996df80d-e9d3-4885-aad1-8609ad459a16"
* entry[=].resource = 996df80d-e9d3-4885-aad1-8609ad459a16
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/1cff1fd0-44a1-4246-a96c-41db3bb25bbe"
* entry[=].resource = 1cff1fd0-44a1-4246-a96c-41db3bb25bbe

Instance: 559e4be0-e1f2-4371-969d-29bbbd5ca9d1
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek-U-new-dublicate - MessageHeader"
Description: "receive_Tek-U-new-dublicate - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(2052a3bd-c32d-4e81-b5ec-83f9ad012899)
* sender = Reference(996df80d-e9d3-4885-aad1-8609ad459a16)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(e49ad4b0-537a-442c-b624-e0ae956410da)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: e49ad4b0-537a-442c-b624-e0ae956410da
InstanceOf: MedComCareCommunication
Title: "receive_Tek-U-new-dublicate - Communication"
Description: "receive_Tek-U-new-dublicate - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#telemedicine
* subject = Reference(283b6471-3134-4b7e-9d48-b6fad32e6384)
* identifier.value = "urn:uuid:69ab69e8-af33-4e93-9171-7906ad43c1ab"
* payload.contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael Burns <br/> Diætistassistent <br/> +4512345789 <br/> 2024-08-28 15:20"
* payload.extension[date].valueDateTime = 2024-08-28T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:07f74c3d-b3e5-4054-850e-a8ef8a550c36"
* payload.extension[identifier].valueIdentifier.assigner = Reference(2052a3bd-c32d-4e81-b5ec-83f9ad012899)
* payload.extension[author].valueReference = Reference(67612d44-215b-4441-a35b-b6ab3ab9c9ce)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: 283b6471-3134-4b7e-9d48-b6fad32e6384
InstanceOf: MedComCorePatient
Title: "receive_Tek-U-new-dublicate - Patient"
Description: "receive_Tek-U-new-dublicate - Patient"
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
Instance: 2052a3bd-c32d-4e81-b5ec-83f9ad012899
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-U-new-dublicate - Sender"
Description: "receive_Tek-U-new-dublicate - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 996df80d-e9d3-4885-aad1-8609ad459a16
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-U-new-dublicate - Receiver"
Description: "receive_Tek-U-new-dublicate - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: dd46a69e-b2e5-4e0d-9cc4-95259c9722e2
InstanceOf: MedComCorePractitioner
Title: "receive_Tek-U-new-dublicate - practitioner"
Description: "receive_Tek-U-new-dublicate - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 67612d44-215b-4441-a35b-b6ab3ab9c9ce
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek-U-new-dublicate - practitionerRole"
Description: "receive_Tek-U-new-dublicate - practitionerRole"
* practitioner = Reference(dd46a69e-b2e5-4e0d-9cc4-95259c9722e2)
* code = $PractitionerRole#diaetistassistent

// CareCommunication example - new message
Instance: 1cff1fd0-44a1-4246-a96c-41db3bb25bbe
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek-U-new-dublicate - Provenance"
Description: "receive_Tek-U-new-dublicate - Provenance"
Usage: #example
* target = Reference(559e4be0-e1f2-4371-969d-29bbbd5ca9d1)
* occurredDateTime = 2024-08-28T15:20:00+01:00
* recorded = 2024-08-28T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(2052a3bd-c32d-4e81-b5ec-83f9ad012899)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:07f74c3d-b3e5-4054-850e-a8ef8a550c36"