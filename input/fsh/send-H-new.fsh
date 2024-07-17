Instance: aca3d03a-febd-4b88-ad53-ac1bc36da615
InstanceOf: MedComCareCommunicationMessage
Title: "Send-H-new"
Description: "Send-H-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-10-15T15:20:00+01:00
* entry[+].fullUrl = "MessageHeader/5a663fe8-c361-411d-876d-4f6b06749e59"
* entry[=].resource = 5a663fe8-c361-411d-876d-4f6b06749e59
* entry[+].fullUrl = "Patient/8d7f4ef8-ac79-4b7d-b9e7-b769471221b2"
* entry[=].resource = 8d7f4ef8-ac79-4b7d-b9e7-b769471221b2
* entry[+].fullUrl = "Communication/38f751db-339c-46a6-a10d-cb88f72b2150"
* entry[=].resource = 38f751db-339c-46a6-a10d-cb88f72b2150
* entry[+].fullUrl = "PractitionerRole/68f7756d-b5f0-47db-924b-8bf0f6864b9e"
* entry[=].resource = 68f7756d-b5f0-47db-924b-8bf0f6864b9e
* entry[+].fullUrl = "Practitioner/264a24ad-ef78-4289-987a-3f6dbc75ec01"
* entry[=].resource = 264a24ad-ef78-4289-987a-3f6dbc75ec01
* entry[+].fullUrl = "Organization/cf3b8736-ffca-48a1-b2e7-550b5c503be8"
* entry[=].resource = cf3b8736-ffca-48a1-b2e7-550b5c503be8
* entry[+].fullUrl = "Organization/e640191b-a64c-4d05-ab28-285b4e91a816"
* entry[=].resource = e640191b-a64c-4d05-ab28-285b4e91a816
* entry[+].fullUrl = "Provenance/a0c5b890-3c4c-4165-871c-e3fdf2608b47"
* entry[=].resource = a0c5b890-3c4c-4165-871c-e3fdf2608b47

Instance: 5a663fe8-c361-411d-876d-4f6b06749e59
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-H-new - MessageHeader"
Description: "Send-H-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=328081000016004"
* destination[primary].receiver = Reference(cf3b8736-ffca-48a1-b2e7-550b5c503be8)
* sender = Reference(e640191b-a64c-4d05-ab28-285b4e91a816)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(38f751db-339c-46a6-a10d-cb88f72b2150)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 38f751db-339c-46a6-a10d-cb88f72b2150
InstanceOf: MedComCareCommunication
Title: "Send-H-new - Communication"
Description: "Send-H-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(8d7f4ef8-ac79-4b7d-b9e7-b769471221b2)
* topic.text = "Resultater fra hjemmesygeplejen"
* identifier.value = "urn:uuid:5fdc8520-7a2f-497c-97ed-fcca13f12f8b"
* payload.contentString = "Til rette vedkommende. Hermed fremsendes undersøgelsesresultater fra seneste besøg af hjemmesygeplejen..... Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-10-15T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:c75a51cf-dab7-4bf9-9b13-b81700c78b05"
* payload.extension[identifier].valueIdentifier.assigner = Reference(cf3b8736-ffca-48a1-b2e7-550b5c503be8)
* payload.extension[author].valueReference = Reference(68f7756d-b5f0-47db-924b-8bf0f6864b9e)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "004523232323"


Instance: 8d7f4ef8-ac79-4b7d-b9e7-b769471221b2
InstanceOf: MedComCorePatient
Title: "Send-H-new - Patient"
Description: "Send-H-new - Patient"
* identifier.system = "urn:oid:1.2.208.176.1.6.1.1"
* identifier.value = "1206550VK9"
* name.use = #temp
* name.given = "Peter"
* name.family = "Unknown"


// Sender instance - new message for attachement
Instance: cf3b8736-ffca-48a1-b2e7-550b5c503be8
InstanceOf: MedComMessagingOrganization // 
Title: "Send-H-new - Sender"
Description: "Send-H-new - Sender"
* identifier[SOR-ID].value = "328081000016004" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Hjemmesygeplejen, Aalborg kommune"

// Reciever instance - new message for attachement
Instance: e640191b-a64c-4d05-ab28-285b4e91a816
InstanceOf: MedComMessagingOrganization // 
Title: "Send-H-new - Receiver"
Description: "Send-H-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 264a24ad-ef78-4289-987a-3f6dbc75ec01
InstanceOf: MedComCorePractitioner
Title: "Send-H-new - practitioner"
Description: "Send-H-new - practitioner"
* name[0].given[0] = "Michael"
* name[0].given[1] = "Magnus"
* name[0].family = "Burns"

Instance: 68f7756d-b5f0-47db-924b-8bf0f6864b9e
InstanceOf: MedComCorePractitionerRole
Title: "Send-H-new - practitionerRole"
Description: "Send-H-new - practitionerRole"
* practitioner = Reference(264a24ad-ef78-4289-987a-3f6dbc75ec01)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: a0c5b890-3c4c-4165-871c-e3fdf2608b47
InstanceOf: MedComMessagingProvenance
Title: "Send-H-new - Provenance"
Description: "Send-H-new - Provenance"
Usage: #example
* target = Reference(5a663fe8-c361-411d-876d-4f6b06749e59)
* occurredDateTime = 2024-10-15T15:20:00+01:00
* recorded = 2024-10-15T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(cf3b8736-ffca-48a1-b2e7-550b5c503be8)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:c75a51cf-dab7-4bf9-9b13-b81700c78b05"