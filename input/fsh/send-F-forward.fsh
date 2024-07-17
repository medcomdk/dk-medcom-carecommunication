/* Instance: 9c2371ff-09a0-4626-9fb9-f70645546361
InstanceOf: MedComCareCommunicationMessage
Title: "Send-F-new"
Description: "Send-F-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-10-15T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/3eadd00d-011b-4e2f-8f30-6658a6ee89e0"
* entry[=].resource = 3eadd00d-011b-4e2f-8f30-6658a6ee89e0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/d4ac37e3-864b-4286-84c6-5ecdf4b550c1"
* entry[=].resource = d4ac37e3-864b-4286-84c6-5ecdf4b550c1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/7e6007ea-dd75-4f6f-bebe-9238957b0774"
* entry[=].resource = 7e6007ea-dd75-4f6f-bebe-9238957b0774
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/6666a833-8621-475a-9fc5-a34b1a043a03"
* entry[=].resource = 6666a833-8621-475a-9fc5-a34b1a043a03
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/06d61404-9502-4579-9475-4e3ddd071bc5"
* entry[=].resource = 06d61404-9502-4579-9475-4e3ddd071bc5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/eaebebec-728c-45bc-a0b3-87b50c688c31"
* entry[=].resource = eaebebec-728c-45bc-a0b3-87b50c688c31
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/ebe56e09-cd9e-443a-a792-8f398787bca8"
* entry[=].resource = ebe56e09-cd9e-443a-a792-8f398787bca8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/93b0a981-986a-43ac-aecb-961d8a618d83"
* entry[=].resource = 93b0a981-986a-43ac-aecb-961d8a618d83 */

/* Instance: 3eadd00d-011b-4e2f-8f30-6658a6ee89e0
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-F-new - MessageHeader"
Description: "Send-F-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=328081000016004"
* destination[primary].receiver = Reference(eaebebec-728c-45bc-a0b3-87b50c688c31)
* sender = Reference(ebe56e09-cd9e-443a-a792-8f398787bca8)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(7e6007ea-dd75-4f6f-bebe-9238957b0774)

Instance: 7e6007ea-dd75-4f6f-bebe-9238957b0774
InstanceOf: MedComCareCommunication
Title: "Send-F-new - Communication"
Description: "Send-F-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(d4ac37e3-864b-4286-84c6-5ecdf4b550c1)
* topic.text = "Resultater fra hjemmesygeplejen"
* payload.contentString = "Til rette vedkommende. Hermed fremsendes undersøgelsesresultater fra seneste besøg af hjemmesygeplejen..... Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-10-15T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:b478c855-cf10-4cc6-b773-368c7c9eb60e"
* payload.extension[identifier].valueIdentifier.assigner = Reference(eaebebec-728c-45bc-a0b3-87b50c688c31)
* payload.extension[author].valueReference = Reference(6666a833-8621-475a-9fc5-a34b1a043a03)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "004523232323" */


Instance: d4ac37e3-864b-4286-84c6-5ecdf4b550c1
InstanceOf: MedComCorePatient
Title: "Send-F-new - Patient"
Description: "Send-F-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: eaebebec-728c-45bc-a0b3-87b50c688c31
InstanceOf: MedComMessagingOrganization // 
Title: "Send-F-new - Sender"
Description: "Send-F-new - Sender"
* identifier[SOR-ID].value = "328081000016004" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Hjemmesygeplejen, Aalborg kommune"

// Reciever instance - new message for attachement
Instance: ebe56e09-cd9e-443a-a792-8f398787bca8
InstanceOf: MedComMessagingOrganization // 
Title: "Send-F-new - Receiver"
Description: "Send-F-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 06d61404-9502-4579-9475-4e3ddd071bc5
InstanceOf: MedComCorePractitioner
Title: "Send-F-new - practitioner"
Description: "Send-F-new - practitioner"
* name.given[0] = "Emma"
* name.family = "Waters"

Instance: 6666a833-8621-475a-9fc5-a34b1a043a03
InstanceOf: MedComCorePractitionerRole
Title: "Send-F-new - practitionerRole"
Description: "Send-F-new - practitionerRole"
* practitioner = Reference(06d61404-9502-4579-9475-4e3ddd071bc5)
* code = $PractitionerRole#laege

// CareCommunication example - new message
Instance: 93b0a981-986a-43ac-aecb-961d8a618d83
InstanceOf: MedComMessagingProvenance
Title: "Send-F-new - Provenance"
Description: "Send-F-new - Provenance"
Usage: #example
* target = Reference(3eadd00d-011b-4e2f-8f30-6658a6ee89e0)
* occurredDateTime = 2024-10-15T15:20:00+01:00
* recorded = 2024-10-15T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(eaebebec-728c-45bc-a0b3-87b50c688c31)

Instance: adf87886-7d96-4c9b-bd76-5abb83682819
InstanceOf: MedComCareCommunicationMessage
Title: "Send-F-new"
Description: "Send-F-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-02T11:30:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/MessageHeader/01e6ede5-7fc5-4bd3-ae04-b8247bc4219a"
* entry[=].resource = 01e6ede5-7fc5-4bd3-ae04-b8247bc4219a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Patient/d4ac37e3-864b-4286-84c6-5ecdf4b550c1"
* entry[=].resource = d4ac37e3-864b-4286-84c6-5ecdf4b550c1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Communication/c6612943-7520-4050-b692-dbb2ca320fdb"
* entry[=].resource = c6612943-7520-4050-b692-dbb2ca320fdb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8bf63050-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 8bf63050-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Practitioner/7ffff970-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 7ffff970-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Organization/487ac745-fd11-4879-9b59-c08c7d47260e"
* entry[=].resource = 487ac745-fd11-4879-9b59-c08c7d47260e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Organization/b581c63c-181f-46f6-990d-b9942c576724"
* entry[=].resource = b581c63c-181f-46f6-990d-b9942c576724
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Organization/92d3a7e9-00df-49c0-b9bd-a512e2837b64"
* entry[=].resource = 92d3a7e9-00df-49c0-b9bd-a512e2837b64
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Provenance/647746ac-5339-4beb-8411-3f3eaefd0e86"
* entry[=].resource = 647746ac-5339-4beb-8411-3f3eaefd0e86
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/https://medcomfhir.dk/ig/carecommunication/Provenance/93b0a981-986a-43ac-aecb-961d8a618d83"
* entry[=].resource = 93b0a981-986a-43ac-aecb-961d8a618d83


Instance: 92d3a7e9-00df-49c0-b9bd-a512e2837b64
InstanceOf: MedComMessagingOrganization 
Title: "Send-F-new"
Description: "Send-F-new"
* identifier[SOR-ID].value = "1042981000016003" 
* identifier[EAN-ID].value = "5790001348120" 
//* name = "Herlevgaard Center Herlev Kommune"

// CareCommunication reply example
Instance: 01e6ede5-7fc5-4bd3-ae04-b8247bc4219a
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-F-new"
Description: "Send-F-new"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(92d3a7e9-00df-49c0-b9bd-a512e2837b64)
* sender = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(c6612943-7520-4050-b692-dbb2ca320fdb)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 647746ac-5339-4beb-8411-3f3eaefd0e86
InstanceOf: MedComCareCommunicationProvenance
Title: "Send-F-new"
Description: "Send-F-new"
Usage: #inline
* target = Reference(01e6ede5-7fc5-4bd3-ae04-b8247bc4219a)
* occurredDateTime = 2024-05-02T11:30:00+02:00
* recorded = 2024-05-02T11:30:00+02:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* entity[preceedingMessage][0].role = #revision
* entity[preceedingMessage][0].what = Reference(3eadd00d-011b-4e2f-8f30-6658a6ee89e0)
* entity[payload][0].role = #source
* entity[payload][0].what.identifier.value = "urn:uuid:cd422e42-5bad-11ed-9b6a-0242ac120002"
* entity[payload][1].role = #source
* entity[payload][1].what.identifier.value = "urn:uuid:a9becf76-fc4c-49aa-8a68-6a0584871fcd"


// CareCommunication reply example
Instance: c6612943-7520-4050-b692-dbb2ca320fdb
InstanceOf: MedComCareCommunication
Title: "Send-F-new"
Description: "Send-F-new"
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(d4ac37e3-864b-4286-84c6-5ecdf4b550c1)
* topic.text = "Resultater fra hjemmesygeplejen"
* payload[1].contentString = "Hej, jeg videresender nedenstående besked til jer, da I har udført undersøgelserne på Bruno. Svar venligst direkte til Michael fra Hjerteafdelingen på Herlev og Gentofte hospital. Mvh. "
* payload[1].extension[date].valueDateTime = 2024-10-15T15:20:00+01:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:a478c855-cf10-4cc6-b773-368c7c9eb60e"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(eaebebec-728c-45bc-a0b3-87b50c688c31)
* payload[1].extension[author].valueReference = Reference(6666a833-8621-475a-9fc5-a34b1a043a03)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "004523232323"
* payload[0].contentString = "Til rette vedkommende. Vi ønsker information om de seneste undersøgelser udført på Bruno. På forhånd tak. Hilsen Michael, sygeplejerske."
* payload[0].extension[date].valueDateTime = 2024-10-13T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(b581c63c-181f-46f6-990d-b9942c576724)
* payload[0].extension[author].valueReference = Reference(eda90bde-54f9-11ed-bdc3-0242ac120002)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"