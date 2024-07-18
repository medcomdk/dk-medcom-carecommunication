Instance: 68f5c0f8-e33e-4302-89b0-cdea52801ec9
InstanceOf: MedComCareCommunicationMessage
Title: "Receive-E-new"
Description: "Receive-E-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-18T12:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/221b6439-c282-4bf9-9ddc-8c2b8975e809"
* entry[=].resource = 221b6439-c282-4bf9-9ddc-8c2b8975e809
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/506544db-a78e-4f74-bdcb-95e9951c9fd1"
* entry[=].resource = 506544db-a78e-4f74-bdcb-95e9951c9fd1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/bde891c9-d099-4af4-9dc2-6b4e60940dfc"
* entry[=].resource = bde891c9-d099-4af4-9dc2-6b4e60940dfc
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/147b1985-76d3-428f-bb91-e397017c5607"
* entry[=].resource = 147b1985-76d3-428f-bb91-e397017c5607
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/48dc7a52-19f5-42c6-ba7c-48ebed7c6cc9"
* entry[=].resource = 48dc7a52-19f5-42c6-ba7c-48ebed7c6cc9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/558786fe-d4c0-474d-ac12-5b290619bdbf"
* entry[=].resource = 558786fe-d4c0-474d-ac12-5b290619bdbf
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/5efd9dfc-9fc6-4289-942a-e56c24cb4e05"
* entry[=].resource = 5efd9dfc-9fc6-4289-942a-e56c24cb4e05
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/0fc624e5-3455-4272-bf97-e018817156b5"
* entry[=].resource = 0fc624e5-3455-4272-bf97-e018817156b5

Instance: 221b6439-c282-4bf9-9ddc-8c2b8975e809
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Receive-E-new - MessageHeader"
Description: "Receive-E-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(558786fe-d4c0-474d-ac12-5b290619bdbf)
* sender = Reference(5efd9dfc-9fc6-4289-942a-e56c24cb4e05)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(bde891c9-d099-4af4-9dc2-6b4e60940dfc)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: bde891c9-d099-4af4-9dc2-6b4e60940dfc
InstanceOf: MedComCareCommunication
Title: "Receive-E-new - Communication"
Description: "Receive-E-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#training
* subject = Reference(506544db-a78e-4f74-bdcb-95e9951c9fd1)
* identifier.value = "urn:uuid:afe59274-01a4-42b1-8bf4-a7cf907aac53"
* payload.contentString = "Til rette vedkommende. Som aftalt pr.tlf. dd. vedrørende ovenstående patient: Vi vurderer at funktionsevnen for Spise og for Drikke skal ændres til Moderat. /Venlig hilsen Hjemmesygeplejerske K. Hansen"
* payload.extension[date].valueDateTime = 2024-08-18T12:00:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:09479fd9-8694-48cf-88b5-c957ee6d561a"
* payload.extension[identifier].valueIdentifier.assigner = Reference(558786fe-d4c0-474d-ac12-5b290619bdbf)
* payload.extension[author].valueReference = Reference(147b1985-76d3-428f-bb91-e397017c5607)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"


Instance: 506544db-a78e-4f74-bdcb-95e9951c9fd1
InstanceOf: MedComCorePatient
Title: "Receive-E-new - Patient"
Description: "Receive-E-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 558786fe-d4c0-474d-ac12-5b290619bdbf
InstanceOf: MedComMessagingOrganization // 
Title: "Receive-E-new - Sender"
Description: "Receive-E-new - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 

// Reciever instance - new message for attachement
Instance: 5efd9dfc-9fc6-4289-942a-e56c24cb4e05
InstanceOf: MedComMessagingOrganization // 
Title: "Receive-E-new - Receiver"
Description: "Receive-E-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 


// Practitioners - new message with attachment
Instance: 48dc7a52-19f5-42c6-ba7c-48ebed7c6cc9
InstanceOf: MedComCorePractitioner
Title: "Receive-E-new - practitioner"
Description: "Receive-E-new - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: 147b1985-76d3-428f-bb91-e397017c5607
InstanceOf: MedComCorePractitionerRole
Title: "Receive-E-new - practitionerRole"
Description: "Receive-E-new - practitionerRole"
* practitioner = Reference(48dc7a52-19f5-42c6-ba7c-48ebed7c6cc9)
* code = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NAVU

// CareCommunication example - new message
Instance: 0fc624e5-3455-4272-bf97-e018817156b5
InstanceOf: MedComCareCommunicationProvenance
Title: "Receive-E-new - Provenance"
Description: "Receive-E-new - Provenance"
Usage: #example
* target = Reference(221b6439-c282-4bf9-9ddc-8c2b8975e809)
* occurredDateTime = 2024-08-18T12:00:00+01:00
* recorded = 2024-08-18T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(558786fe-d4c0-474d-ac12-5b290619bdbf)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:09479fd9-8694-48cf-88b5-c957ee6d561a"