Instance: 720f68cf-21bf-4c40-a90c-a113e00e88a8
InstanceOf: MedComCareCommunicationMessage
Title: "Send-D-new"
Description: "Send-D-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-09-08T12:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/fdf5a171-5a5b-498f-be75-00d23ffdbd88"
* entry[=].resource = fdf5a171-5a5b-498f-be75-00d23ffdbd88
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/b6a2e10b-f6da-49de-86b3-980755fc07d5"
* entry[=].resource = b6a2e10b-f6da-49de-86b3-980755fc07d5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/94e90632-7081-4a72-82ed-a23778706b09"
* entry[=].resource = 94e90632-7081-4a72-82ed-a23778706b09
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/66e95c8f-4297-435d-a4a9-eed130083cae"
* entry[=].resource = 66e95c8f-4297-435d-a4a9-eed130083cae
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/652d44ea-d5ad-4745-bf09-88789a258117"
* entry[=].resource = 652d44ea-d5ad-4745-bf09-88789a258117
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/23e981cb-c908-4654-ab56-7f23b5126afd"
* entry[=].resource = 23e981cb-c908-4654-ab56-7f23b5126afd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/5b68d9ca-2782-47bf-b095-04573db9363b"
* entry[=].resource = 5b68d9ca-2782-47bf-b095-04573db9363b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/47368ed8-62bf-462e-a345-7671bb85c926"
* entry[=].resource = 47368ed8-62bf-462e-a345-7671bb85c926

Instance: fdf5a171-5a5b-498f-be75-00d23ffdbd88
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-D-new - MessageHeader"
Description: "Send-D-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(23e981cb-c908-4654-ab56-7f23b5126afd)
* sender = Reference(5b68d9ca-2782-47bf-b095-04573db9363b)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(94e90632-7081-4a72-82ed-a23778706b09)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 94e90632-7081-4a72-82ed-a23778706b09
InstanceOf: MedComCareCommunication
Title: "Send-D-new - Communication"
Description: "Send-D-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#medicine
* subject = Reference(b6a2e10b-f6da-49de-86b3-980755fc07d5)
* identifier.value = "urn:uuid:f9e8167e-39fb-4d94-a32b-43655ade1082"
* payload.contentString = "Til rette vedkommende. Vi vil med denne korrespondance gerne &quot;prøve&quot; på &apos; nogle &apos; særlige &lt;tegn&gt; ; til test &amp; certificering @ ^ * /Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-09-08T12:00:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:8521000b-ce04-4c18-b9b1-04dcbdf8e112"
* payload.extension[identifier].valueIdentifier.assigner = Reference(23e981cb-c908-4654-ab56-7f23b5126afd)
* payload.extension[author].valueReference = Reference(66e95c8f-4297-435d-a4a9-eed130083cae)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"


Instance: b6a2e10b-f6da-49de-86b3-980755fc07d5
InstanceOf: MedComCorePatient
Title: "Send-D-new - Patient"
Description: "Send-D-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 23e981cb-c908-4654-ab56-7f23b5126afd
InstanceOf: MedComMessagingOrganization // 
Title: "Send-D-new - Sender"
Description: "Send-D-new - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 

// Reciever instance - new message for attachement
Instance: 5b68d9ca-2782-47bf-b095-04573db9363b
InstanceOf: MedComMessagingOrganization // 
Title: "Send-D-new - Receiver"
Description: "Send-D-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 


// Practitioners - new message with attachment
Instance: 652d44ea-d5ad-4745-bf09-88789a258117
InstanceOf: MedComCorePractitioner
Title: "Send-D-new - practitioner"
Description: "Send-D-new - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 66e95c8f-4297-435d-a4a9-eed130083cae
InstanceOf: MedComCorePractitionerRole
Title: "Send-D-new - practitionerRole"
Description: "Send-D-new - practitionerRole"
* practitioner = Reference(652d44ea-d5ad-4745-bf09-88789a258117)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: 47368ed8-62bf-462e-a345-7671bb85c926
InstanceOf: MedComMessagingProvenance
Title: "Send-D-new - Provenance"
Description: "Send-D-new - Provenance"
Usage: #example
* target = Reference(fdf5a171-5a5b-498f-be75-00d23ffdbd88)
* occurredDateTime = 2024-09-08T12:00:00+01:00
* recorded = 2024-09-08T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(23e981cb-c908-4654-ab56-7f23b5126afd)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:8521000b-ce04-4c18-b9b1-04dcbdf8e112"