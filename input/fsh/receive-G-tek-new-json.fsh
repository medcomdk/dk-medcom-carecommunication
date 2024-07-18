Instance: jklfds89r78jklsduf98w487953jkl.jkliuuh
InstanceOf: MedComCareCommunicationMessage
Title: "receive-G-tek-new"
Description: "receive-G-tek-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-20T17:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/ejklfdsio8klakfd"
* entry[=].resource = ejklfdsio8klakfd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/uiodss8902laikfldsi9439d"
* entry[=].resource = uiodss8902laikfldsi9439d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/fhjkewyuir1234kshjekjcxjnmc.klklj"
* entry[=].resource = fhjkewyuir1234kshjekjcxjnmc.klklj
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/jklfds.jkloreweda7a6wjs"
* entry[=].resource = jklfds.jkloreweda7a6wjs
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/jklsfdiur7ucfgh89"
* entry[=].resource = jklsfdiur7ucfgh89
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/hdfg4893j5hjkfdshj78.jkclzikd"
* entry[=].resource = hdfg4893j5hjkfdshj78.jkclzikd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/hujkfd2348j"
* entry[=].resource = hujkfd2348j
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/jfkdls7jz1hnjkzlzal.klasa-klaoi"
* entry[=].resource = jfkdls7jz1hnjkzlzal.klasa-klaoi

Instance: ejklfdsio8klakfd
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive-G-tek-new - MessageHeader"
Description: "receive-G-tek-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=502191000016006"
* destination[primary].receiver = Reference(hdfg4893j5hjkfdshj78.jkclzikd)
* sender = Reference(hujkfd2348j)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1385391000016002"
* focus = Reference(fhjkewyuir1234kshjekjcxjnmc.klklj)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: fhjkewyuir1234kshjekjcxjnmc.klklj
InstanceOf: MedComCareCommunication
Title: "receive-G-tek-new - Communication"
Description: "receive-G-tek-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#psychiatry-social-disability
* subject = Reference(uiodss8902laikfldsi9439d)
* identifier.value = "urn:uuid:9936312e-593d-428b-8d70-aa025d587be3"
* payload.contentString = "Til rette vedkommende. <br/> Jeg har netop startet samtaler med Bruno..... <br/> Hilsen Anita, psykolog."
* payload.extension[date].valueDateTime = 2024-08-20T17:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:27ca31f6-e41d-4661-bc03-8e32f0a84dcb"
* payload.extension[identifier].valueIdentifier.assigner = Reference(hdfg4893j5hjkfdshj78.jkclzikd)
* payload.extension[author].valueReference = Reference(jklfds.jkloreweda7a6wjs)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "35363738"


Instance: uiodss8902laikfldsi9439d
InstanceOf: MedComCorePatient
Title: "receive-G-tek-new - Patient"
Description: "receive-G-tek-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message
Instance: hdfg4893j5hjkfdshj78.jkclzikd
InstanceOf: MedComMessagingOrganization // 
Title: "receive-G-tek-new - Sender"
Description: "receive-G-tek-new - Sender"
* identifier[SOR-ID].value = "502191000016006" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Anita Thenstrup"

// Reciever instance - new message 
Instance: hujkfd2348j
InstanceOf: MedComMessagingOrganization // 
Title: "receive-G-tek-new - Receiver"
Description: "receive-G-tek-new - Receiver"
* identifier[SOR-ID].value = "1385391000016002" 
* identifier[EAN-ID].value = "5790002632389" 
* name = "Padagogisk Psykologisk Rådgivning"


// Practitioners - new message 
Instance: jklsfdiur7ucfgh89
InstanceOf: MedComCorePractitioner
Title: "receive-G-tek-new - practitioner"
Description: "receive-G-tek-new - practitioner"
* name.given[0] = "Anita"
* name.family = "Thenstrup"

Instance: jklfds.jkloreweda7a6wjs
InstanceOf: MedComCorePractitionerRole
Title: "receive-G-tek-new - practitionerRole"
Description: "receive-G-tek-new - practitionerRole"
* practitioner = Reference(jklsfdiur7ucfgh89)
* code = $PractitionerRole#pyskolog

// CareCommunication example - new message
Instance: jfkdls7jz1hnjkzlzal.klasa-klaoi
InstanceOf: MedComCareCommunicationProvenance
Title: "receive-G-tek-new - Provenance"
Description: "receive-G-tek-new - Provenance"
Usage: #example
* target = Reference(ejklfdsio8klakfd)
* occurredDateTime = 2024-08-20T17:20:00+01:00
* recorded = 2024-08-20T17:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(hdfg4893j5hjkfdshj78.jkclzikd)
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:27ca31f6-e41d-4661-bc03-8e32f0a84dcb"