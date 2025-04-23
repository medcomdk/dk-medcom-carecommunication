Instance: R-C-forward-8352b67a-23b2-44c5-b43a-725270a90722
InstanceOf: MedComCareCommunicationMessage
Title: "receive-C-forward-receive_C-forward"
Description: "receive_C-forward"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-16T11:30:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/d2b81c34-ec5d-4c5f-9380-1b5aa507544b"
* entry[=].resource = d2b81c34-ec5d-4c5f-9380-1b5aa507544b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/1c4dbd72-4af3-41f9-a9b5-dacd8d62f994"
* entry[=].resource = 1c4dbd72-4af3-41f9-a9b5-dacd8d62f994
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/e37c9933-1fc6-48e0-9819-66bc026cf3d4"
* entry[=].resource = e37c9933-1fc6-48e0-9819-66bc026cf3d4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/6666a833-8621-475a-9fc5-a34b1a043a03"
* entry[=].resource = 6666a833-8621-475a-9fc5-a34b1a043a03
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/06d61404-9502-4579-9475-4e3ddd071bc5"
* entry[=].resource = 06d61404-9502-4579-9475-4e3ddd071bc5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/da0ffcef-7cdd-43be-a462-47caa7abc8a8"
* entry[=].resource = da0ffcef-7cdd-43be-a462-47caa7abc8a8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/d0d09ee7-ac4c-4beb-839c-85763d50c7a4"
* entry[=].resource = d0d09ee7-ac4c-4beb-839c-85763d50c7a4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/a81d6555-94d9-4704-a6b7-8dea0bcd3dac"
* entry[=].resource = a81d6555-94d9-4704-a6b7-8dea0bcd3dac
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/ca5a7c53-fc3a-4565-b419-a443c3bc6870"
* entry[=].resource = ca5a7c53-fc3a-4565-b419-a443c3bc6870
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/8b67e42d-fc9b-45c4-8313-86b9c7416445"
* entry[=].resource = 8b67e42d-fc9b-45c4-8313-86b9c7416445
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/fdb3c81c-e1b3-4cee-866a-334360c162a0"
* entry[=].resource = fdb3c81c-e1b3-4cee-866a-334360c162a0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/45f68408-94e2-48f9-b740-5c487a3e7e56"
* entry[=].resource = 45f68408-94e2-48f9-b740-5c487a3e7e56

Instance: 1c4dbd72-4af3-41f9-a9b5-dacd8d62f994
InstanceOf: MedComCorePatient
Title: "receive_C-forward - Patient"
Description: "receive_C-forward - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: ca5a7c53-fc3a-4565-b419-a443c3bc6870
InstanceOf: MedComMessagingOrganization // 
Title: "receive_C-forward - Sender"
Description: "receive_C-forward - Sender"
* identifier[SOR-ID].value = "328081000016004" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Hjemmesygeplejen, Aalborg kommune"

// Reciever instance - new message for attachement
Instance: a81d6555-94d9-4704-a6b7-8dea0bcd3dac
InstanceOf: MedComMessagingOrganization // 
Title: "receive_C-forward - Receiver"
Description: "receive_C-forward - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: 06d61404-9502-4579-9475-4e3ddd071bc5
InstanceOf: MedComCorePractitioner
Title: "receive_C-forward - practitioner"
Description: "receive_C-forward - practitioner"
* name.given[0] = "Emma"
* name.family = "Waters"

Instance: 6666a833-8621-475a-9fc5-a34b1a043a03
InstanceOf: MedComCorePractitionerRole
Title: "receive_C-forward - practitionerRole"
Description: "receive_C-forward - practitionerRole"
* practitioner = Reference(06d61404-9502-4579-9475-4e3ddd071bc5)
* code = $PractitionerRole#optiker

// CareCommunication example - new message
Instance: 45f68408-94e2-48f9-b740-5c487a3e7e56
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_C-forward - Provenance"
Description: "receive_C-forward - Provenance"
Usage: #example
* target = Reference(42fa2844-5020-45dd-bd5f-77137ba5ca1f)
* occurredDateTime = 2024-08-15T15:20:00+02:00
* recorded = 2024-08-15T15:20:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(ca5a7c53-fc3a-4565-b419-a443c3bc6870) 
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:d189f0c2-8397-4cae-b62c-0d0958b4899a"

Instance: 8b67e42d-fc9b-45c4-8313-86b9c7416445
InstanceOf: MedComMessagingOrganization 
Title: "receive_C-forward"
Description: "receive_C-forward"
* identifier[SOR-ID].value = "953751000016007"
* identifier[EAN-ID].value = "5790001348120" 
//* name = "Sundhed og Ældre, Herlev"

// CareCommunication reply example
Instance: d2b81c34-ec5d-4c5f-9380-1b5aa507544b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_C-forward"
Description: "receive_C-forward"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953751000016007"
* destination[primary].receiver = Reference(8b67e42d-fc9b-45c4-8313-86b9c7416445)
* sender = Reference(a81d6555-94d9-4704-a6b7-8dea0bcd3dac)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(e37c9933-1fc6-48e0-9819-66bc026cf3d4)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: fdb3c81c-e1b3-4cee-866a-334360c162a0
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_C-forward"
Description: "receive_C-forward"
Usage: #inline
* target = Reference(d2b81c34-ec5d-4c5f-9380-1b5aa507544b)
* occurredDateTime = 2024-08-16T11:30:00+02:00
* recorded = 2024-08-16T11:30:00+02:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(a81d6555-94d9-4704-a6b7-8dea0bcd3dac)
* entity[preceedingMessage][0].role = #revision
* entity[preceedingMessage][0].what = Reference(42fa2844-5020-45dd-bd5f-77137ba5ca1f)
* entity[payload][0].role = #source
* entity[payload][0].what.identifier.value = "urn:uuid:4fa05d8d-66e7-46dd-8029-428d44d33f53"

//Practitioner - reply message
Instance: d0d09ee7-ac4c-4beb-839c-85763d50c7a4
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: da0ffcef-7cdd-43be-a462-47caa7abc8a8
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(d0d09ee7-ac4c-4beb-839c-85763d50c7a4)
* code = $PractitionerRole#sygeplejerske

// CareCommunication reply example
Instance: e37c9933-1fc6-48e0-9819-66bc026cf3d4
InstanceOf: MedComCareCommunication
Title: "receive_C-forward"
Description: "receive_C-forward"
* identifier.value = "urn:uuid:bb5aba27-2112-434a-ac3f-d317ba7a70cd"
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(1c4dbd72-4af3-41f9-a9b5-dacd8d62f994)
* topic.text = "Resultater fra hjemmesygeplejen"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak.\n Hilsen Michael Burns \n Sygeplejerske"
* payload[0].extension[date].valueDateTime = 2024-08-15T15:20:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:d189f0c2-8397-4cae-b62c-0d0958b4899a"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(8b67e42d-fc9b-45c4-8313-86b9c7416445)
* payload[0].extension[author].valueReference = Reference(da0ffcef-7cdd-43be-a462-47caa7abc8a8)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"
* payload[1].contentString = "Hej, jeg videresender nedenstående besked til jer, da I har udført undersøgelserne på Bruno. Svar venligst direkte til Michael fra Hjerteafdelingen på Herlev og Gentofte hospital.\nMed venlig hilsen Emma Waters\nOptiker"
* payload[1].extension[date].valueDateTime = 2024-08-16T11:30:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:4fa05d8d-66e7-46dd-8029-428d44d33f53"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(ca5a7c53-fc3a-4565-b419-a443c3bc6870)
* payload[1].extension[author].valueReference = Reference(6666a833-8621-475a-9fc5-a34b1a043a03)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "004523232323"
