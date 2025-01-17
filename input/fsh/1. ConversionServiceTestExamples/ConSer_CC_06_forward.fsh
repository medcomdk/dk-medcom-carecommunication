Instance: 793d9762-6afb-4b7d-b492-1c7991aa91d8
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_06_forward - Forward CareCommunication message"
Description: "Example of a forward CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-04T10:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/d36dcb8c-4eb9-4ccf-8cdf-0626fd57af73"
* entry[=].resource = d36dcb8c-4eb9-4ccf-8cdf-0626fd57af73
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/41f9d15a-e31a-4fe0-ba75-aa53cd733260"
* entry[=].resource = 41f9d15a-e31a-4fe0-ba75-aa53cd733260
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/c99b474c-451a-4016-bbc0-e17ede2fca57"
* entry[=].resource = c99b474c-451a-4016-bbc0-e17ede2fca57
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/6d70abac-e695-4203-916f-da7ea795e69c"
* entry[=].resource = 6d70abac-e695-4203-916f-da7ea795e69c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a7b5e818-07c2-480f-917b-0af15eebb34a"
* entry[=].resource = a7b5e818-07c2-480f-917b-0af15eebb34a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/03ce50f2-d7ad-472b-b29c-00880a422fd1" 
* entry[=].resource = 03ce50f2-d7ad-472b-b29c-00880a422fd1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/6e94a4ce-c199-4e3f-9f28-15c9be9890e5" 
* entry[=].resource = 6e94a4ce-c199-4e3f-9f28-15c9be9890e5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/80c586fb-f001-4b1f-a5f6-41a38e020806"
* entry[=].resource = 80c586fb-f001-4b1f-a5f6-41a38e020806
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb"
* entry[=].resource = 17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/20c40542-741f-4a86-9a6a-bcdc6409dbec"
* entry[=].resource = 20c40542-741f-4a86-9a6a-bcdc6409dbec
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/b933884c-f6b0-48b7-9dbc-13ccf73cde27"
* entry[=].resource = b933884c-f6b0-48b7-9dbc-13ccf73cde27
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/19f00710-35ba-43f3-b536-0b688f600ac1"
* entry[=].resource = 19f00710-35ba-43f3-b536-0b688f600ac1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/068a38ae-015e-446d-8c40-d96df37d1a7d"
* entry[=].resource = 068a38ae-015e-446d-8c40-d96df37d1a7d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/6235db6c-5762-49da-b799-d4bb98b2ccd9"
* entry[=].resource = 6235db6c-5762-49da-b799-d4bb98b2ccd9

Instance: b933884c-f6b0-48b7-9dbc-13ccf73cde27
InstanceOf: MedComCareCommunicationProvenance
Title: "2nd message - The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Description: "2nd message - The Provenance instance is only valid if used in a bundle (message) - reply to new message"
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2024-05-02T11:30:00+02:00
* recorded = 2024-05-02T11:30:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"

// CareCommunication example - new message
Instance: 19f00710-35ba-43f3-b536-0b688f600ac1
InstanceOf: MedComCareCommunicationProvenance
Title: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(20c40542-741f-4a86-9a6a-bcdc6409dbec)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"

Instance: 068a38ae-015e-446d-8c40-d96df37d1a7d
InstanceOf: MedComCareCommunicationProvenance
Title: "3rd message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "3rd message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
* target = Reference(4dff3695-218d-4878-838a-5f23cbba6f82)
* occurredDateTime = 2024-05-03T09:25:00+02:00
* recorded = 2024-05-03T09:25:00+02:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(20c40542-741f-4a86-9a6a-bcdc6409dbec)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"

// Provenance for forward message
Instance: 6235db6c-5762-49da-b799-d4bb98b2ccd9
InstanceOf: MedComCareCommunicationProvenance
Title: "4th message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "4th message - The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
* target = Reference(d36dcb8c-4eb9-4ccf-8cdf-0626fd57af73)
* occurredDateTime = 2024-05-04T10:00:00+02:00
* recorded = 2024-05-04T10:00:00+02:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(4dff3695-218d-4878-838a-5f23cbba6f82)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:22093247-f2f5-4b25-a5b2-f1dcbbc3998b"

// CareCommunication forward example
Instance: d36dcb8c-4eb9-4ccf-8cdf-0626fd57af73
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_06_forward_attachment - Instance of a MessageHeader resource used in a forward message."
Description: "ConSer_CC_06_forward_attachment - Example of a MessageHeader in a forward CareCommunication message. Valid only if used in a bundle (message)."
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(80c586fb-f001-4b1f-a5f6-41a38e020806)
* sender = Reference(17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(c99b474c-451a-4016-bbc0-e17ede2fca57)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

Instance: 41f9d15a-e31a-4fe0-ba75-aa53cd733260
InstanceOf: MedComCorePatient
Title: "ConSer_CC_06_forward_attachment - Bruno Test Elmer"
Description: "ConSer_CC_06_forward_attachment - Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* name[official].given = "Bruno"

Instance: 6d70abac-e695-4203-916f-da7ea795e69c
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(a7b5e818-07c2-480f-917b-0af15eebb34a)
* code = $PractitionerRole#sygeplejerske

//Practitioner - reply message
Instance: a7b5e818-07c2-480f-917b-0af15eebb34a
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_06_forward_attachment Simple practitioner with a name"
Description: "ConSer_CC_06_forward_attachment Simple practitioner with a name"
* name.given = "Emma"
* name.family = "Waters"

Instance: 03ce50f2-d7ad-472b-b29c-00880a422fd1
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_06_forward_attachment PractitionerRole with a role and reference to a practitioner"
Description: "ConSer_CC_06_forward_attachment PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(6e94a4ce-c199-4e3f-9f28-15c9be9890e5)
* code = $PractitionerRole#sygeplejerske

// Practitioners - new message
Instance: 6e94a4ce-c199-4e3f-9f28-15c9be9890e5
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_06_forward_attachment Simple practitioner with a name"
Description: "ConSer_CC_06_forward_attachment Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

// Receiver of forward message
Instance: 80c586fb-f001-4b1f-a5f6-41a38e020806
InstanceOf: MedComMessagingOrganization 
Title: "ConSer_CC_06_forward_attachment - Example of a reciever organization with a SOR and an EAN identifier."
Description: "ConSer_CC_06_forward_attachment Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91+XBIN01 receiver"

// Sender of forward message
Instance: 17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_06_forward_attachment - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91 receiver"


// Other communicator instance, not current sender or receiver
Instance: 20c40542-741f-4a86-9a6a-bcdc6409dbec
InstanceOf: MedComMessagingOrganization // 
Title: "ConSer_CC_06_forward_attachment - Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
Usage: #example
* identifier[SOR-ID].value = "2551000016006" 
* identifier[EAN-ID].value = "5790000123766" 
* name = "MedCom XDIS91 receiver"


// CareCommunication forward example
Instance: c99b474c-451a-4016-bbc0-e17ede2fca57
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_06_forward_attachment Instance of Communication resource used in a forward message."
Description: "ConSer_CC_06_forward_attachment - Content of care communication message. Valid only if used in a bundle (message) - forward message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:546b19ba-3e50-4da8-b9ec-7caeefad6928"
* category = $CategoryCodes#examination-results
* subject = Reference(41f9d15a-e31a-4fe0-ba75-aa53cd733260)
* payload[3].contentString = "Hej - Jeg håber det er okay, at jeg videresender denne forespørgsel. Kan I hjælpe os med at finde den, af Michael Burns, efterspurgte information. På forhånd tak. /Emma"
* payload[3].extension[date].valueDateTime = 2024-05-04T10:00:00+02:00
* payload[3].extension[identifier].valueIdentifier.value = "urn:uuid:22093247-f2f5-4b25-a5b2-f1dcbbc3998b"
* payload[3].extension[identifier].valueIdentifier.assigner = Reference(17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb)
* payload[3].extension[author].valueReference = Reference(6d70abac-e695-4203-916f-da7ea795e69c)
* payload[3].extension[authorContact].valueContactPoint.system = #phone 
* payload[3].extension[authorContact].valueContactPoint.value = "44527000"
* payload[2].contentString = "Mange tak for fremsendte. Kan I desuden hjælpe mig med at finde information vedr. kommunal udredning for sygdommen? / Michael"
* payload[2].extension[date].valueDateTime = 2024-05-03T09:25:00+02:00
* payload[2].extension[identifier].valueIdentifier.value = "urn:uuid:07685582-3a8f-4bf3-bfa0-2f040133e922"
* payload[2].extension[identifier].valueIdentifier.assigner = Reference(20c40542-741f-4a86-9a6a-bcdc6409dbec)
* payload[2].extension[author].valueReference = Reference(03ce50f2-d7ad-472b-b29c-00880a422fd1)
* payload[2].extension[authorContact].valueContactPoint.system = #phone 
* payload[2].extension[authorContact].valueContactPoint.value = "38683868"
* payload[1].contentString = "Hej Michael, Resultaterne for undersøgelsen kommer her. Blodtryk 130/95 mmHg, vægt: 83 kg og højde: 179 cm. Blodprøven påviste ikke tegn på sukkersyge eller vitaminmangel. Se mere i den vedhæftede pdf. Mvh. Emma"
* payload[1].extension[date].valueDateTime = 2024-05-02T11:30:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(17ef5c91-cb3c-4ae4-8ff0-4dca4b9810cb)
* payload[1].extension[author].valueReference = Reference(6d70abac-e695-4203-916f-da7ea795e69c) 
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "44527000"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-05-01T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(20c40542-741f-4a86-9a6a-bcdc6409dbec)
* payload[0].extension[author].valueReference = Reference(03ce50f2-d7ad-472b-b29c-00880a422fd1)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"

