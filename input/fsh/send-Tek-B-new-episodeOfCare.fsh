Instance: 98eb081e-a66f-41a2-b2f7-c455782563b0
InstanceOf: MedComCareCommunicationMessage
Title: "Send-Tek-B-new"
Description: "Send-Tek-B-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-09-16T08:30:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/7969a2b7-3ff4-4802-9246-8ed74102ed73"
* entry[=].resource = 7969a2b7-3ff4-4802-9246-8ed74102ed73
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/b670ed56-9a4f-4903-ad51-65773a327d93"
* entry[=].resource = b670ed56-9a4f-4903-ad51-65773a327d93
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/e6907e11-f007-4e2c-a98d-a543229a10c2"
* entry[=].resource = e6907e11-f007-4e2c-a98d-a543229a10c2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/edccec4f-0d3e-46be-9f66-97f459f6bafe"
* entry[=].resource = edccec4f-0d3e-46be-9f66-97f459f6bafe
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/1236e5b1-40cf-4d40-b44a-0ae8e8931121"
* entry[=].resource = 1236e5b1-40cf-4d40-b44a-0ae8e8931121
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Encounter/ede7ee60-4541-438c-922d-1898a14fa3b1"
* entry[=].resource = ede7ee60-4541-438c-922d-1898a14fa3b1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/454aafa3-8ecb-4c0b-9696-eee6cce6c498"
* entry[=].resource = 454aafa3-8ecb-4c0b-9696-eee6cce6c498
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/0e804dff-95f7-40fe-bb96-561363715869"
* entry[=].resource = 0e804dff-95f7-40fe-bb96-561363715869
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/d53ad029-99e5-44d5-b240-2ea01930701a"
* entry[=].resource = d53ad029-99e5-44d5-b240-2ea01930701a

Instance: 7969a2b7-3ff4-4802-9246-8ed74102ed73
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-Tek-B-new - MessageHeader"
Description: "Send-Tek-B-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=328081000016004"
* destination[primary].receiver = Reference(454aafa3-8ecb-4c0b-9696-eee6cce6c498)
* sender = Reference(0e804dff-95f7-40fe-bb96-561363715869)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(e6907e11-f007-4e2c-a98d-a543229a10c2)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: e6907e11-f007-4e2c-a98d-a543229a10c2
InstanceOf: MedComCareCommunication
Title: "Send-Tek-B-new - Communication"
Description: "Send-Tek-B-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(b670ed56-9a4f-4903-ad51-65773a327d93)
* topic.text = "Resultater fra hjemmesygeplejen"
* identifier.value = "urn:uuid:a6be8e47-43a0-4a34-8041-083d41eba038"
* payload.contentString = "Til rette vedkommende. Hermed fremsendes undersøgelsesresultater fra seneste besøg af hjemmesygeplejen. Denne meddelelse ligner til Tek-B-new, men er det ikke. Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-09-16T08:30:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:dc9665dd-b9c3-4349-af08-e9dd61d0e211"
* payload.extension[identifier].valueIdentifier.assigner = Reference(454aafa3-8ecb-4c0b-9696-eee6cce6c498)
* payload.extension[author].valueReference = Reference(edccec4f-0d3e-46be-9f66-97f459f6bafe)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "004523232323"

// MedComCoreEncounter instance
Instance: ede7ee60-4541-438c-922d-1898a14fa3b1
InstanceOf: MedComCoreEncounter
Title: "Send-Tek-B-new - Encounter"
Description: "Send-Tek-B-new - Encounter"
* status = $StatusCodes#finished 
* class = $ActCodes#IMP 
* subject = Reference(b670ed56-9a4f-4903-ad51-65773a327d93)
* episodeOfCare.identifier.value = "urn:uuid:39e3e169-9ece-4ba4-bd24-2e0fbeebc333" 
* episodeOfCare.identifier.system = "https://sor2.sum.dsdn.dk/#id=328081000016004" // SOR id for afsender/serviceProvider
* episodeOfCare.identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7" 
* episodeOfCare.identifier.system = "https://www.esundhed.dk/Registre/Landspatientregisteret" 

Instance: b670ed56-9a4f-4903-ad51-65773a327d93
InstanceOf: MedComCorePatient
Title: "Send-Tek-B-new - Patient"
Description: "Send-Tek-B-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 454aafa3-8ecb-4c0b-9696-eee6cce6c498
InstanceOf: MedComMessagingOrganization // 
Title: "Send-Tek-B-new - Sender"
Description: "Send-Tek-B-new - Sender"
* identifier[SOR-ID].value = "328081000016004" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Hjemmesygeplejen, Aalborg kommune"

// Reciever instance - new message for attachement
Instance: 0e804dff-95f7-40fe-bb96-561363715869
InstanceOf: MedComMessagingOrganization // 
Title: "Send-Tek-B-new - Receiver"
Description: "Send-Tek-B-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 1236e5b1-40cf-4d40-b44a-0ae8e8931121
InstanceOf: MedComCorePractitioner
Title: "Send-Tek-B-new - practitioner"
Description: "Send-Tek-B-new - practitioner"
* name.given[0] = "Michael"
* name.given[1] = "Magnus"
* name.family = "Burns"

Instance: edccec4f-0d3e-46be-9f66-97f459f6bafe
InstanceOf: MedComCorePractitionerRole
Title: "Send-Tek-B-new - practitionerRole"
Description: "Send-Tek-B-new - practitionerRole"
* practitioner = Reference(1236e5b1-40cf-4d40-b44a-0ae8e8931121)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: d53ad029-99e5-44d5-b240-2ea01930701a
InstanceOf: MedComCareCommunicationProvenance
Title: "Send-Tek-B-new - Provenance"
Description: "Send-Tek-B-new - Provenance"
Usage: #example
* target = Reference(7969a2b7-3ff4-4802-9246-8ed74102ed73)
* occurredDateTime = 2024-09-16T08:30:00+01:00
* recorded = 2024-09-16T08:30:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(454aafa3-8ecb-4c0b-9696-eee6cce6c498) 
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:dc9665dd-b9c3-4349-af08-e9dd61d0e211"