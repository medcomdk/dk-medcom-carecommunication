Instance: b43146a2-99ec-4b05-bb8f-5b44af4fe424
InstanceOf: MedComCareCommunicationMessage
Title: "Send-Tek-A-new"
Description: "Send-Tek-A-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-10-15T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/a07d8566-961a-47e1-80b9-cc9b2d2e16cb"
* entry[=].resource = a07d8566-961a-47e1-80b9-cc9b2d2e16cb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/2f6d23d0-239c-44bb-9033-acab45416029"
* entry[=].resource = 2f6d23d0-239c-44bb-9033-acab45416029
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/2678d1b2-0a76-4663-a216-b1a14e72aafa"
* entry[=].resource = 2678d1b2-0a76-4663-a216-b1a14e72aafa
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/ab46bc08-6adb-4e35-8640-e2b9fed48fe7"
* entry[=].resource = ab46bc08-6adb-4e35-8640-e2b9fed48fe7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/663501c4-0e82-4883-8b08-6fb6a20719ea"
* entry[=].resource = 663501c4-0e82-4883-8b08-6fb6a20719ea
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Encounter/c3efbaa3-4b9e-4da1-bb4a-496d33953abd"
* entry[=].resource = c3efbaa3-4b9e-4da1-bb4a-496d33953abd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/674cb75e-4a5c-4609-b740-8b09e06b0e42"
* entry[=].resource = 674cb75e-4a5c-4609-b740-8b09e06b0e42
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/c0347f2c-f11e-440f-99f6-a1ebf3b53e74"
* entry[=].resource = c0347f2c-f11e-440f-99f6-a1ebf3b53e74
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/1f80bcba-9156-4d5b-8ded-8ecff623ffce"
* entry[=].resource = 1f80bcba-9156-4d5b-8ded-8ecff623ffce

Instance: a07d8566-961a-47e1-80b9-cc9b2d2e16cb
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-Tek-A-new - MessageHeader"
Description: "Send-Tek-A-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=328081000016004"
* destination[primary].receiver = Reference(674cb75e-4a5c-4609-b740-8b09e06b0e42)
* sender = Reference(c0347f2c-f11e-440f-99f6-a1ebf3b53e74)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(2678d1b2-0a76-4663-a216-b1a14e72aafa)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 2678d1b2-0a76-4663-a216-b1a14e72aafa
InstanceOf: MedComCareCommunication
Title: "Send-Tek-A-new - Communication"
Description: "Send-Tek-A-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(2f6d23d0-239c-44bb-9033-acab45416029)
* topic.text = "Resultater fra hjemmesygeplejen"
* identifier.value = "urn:uuid:c29f6032-28bf-4a11-af98-6f451fa77fee"
* payload.contentString = "Til rette vedkommende. Hermed fremsendes undersøgelsesresultater fra seneste besøg af hjemmesygeplejen..... Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-10-15T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:ee96d66f-f95a-4f23-855c-44befb31c52b"
* payload.extension[identifier].valueIdentifier.assigner = Reference(674cb75e-4a5c-4609-b740-8b09e06b0e42)
* payload.extension[author].valueReference = Reference(ab46bc08-6adb-4e35-8640-e2b9fed48fe7)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "004523232323"

// MedComCoreEncounter instance
Instance: c3efbaa3-4b9e-4da1-bb4a-496d33953abd
InstanceOf: MedComCoreEncounter
Title: "Send-Tek-A-new - Encounter"
Description: "Send-Tek-A-new - Encounter"
* status = $StatusCodes#finished 
* class = $ActCodes#IMP 
* subject = Reference(2f6d23d0-239c-44bb-9033-acab45416029)
* episodeOfCare.identifier.value = "d3779c52-1fc9-4d96-93dc-693a4faab338" 
* episodeOfCare.identifier.system = "https://sor2.sum.dsdn.dk/#id=328081000016004" // SOR id for afsender/serviceProvider

Instance: 2f6d23d0-239c-44bb-9033-acab45416029
InstanceOf: MedComCorePatient
Title: "Send-Tek-A-new - Patient"
Description: "Send-Tek-A-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 674cb75e-4a5c-4609-b740-8b09e06b0e42
InstanceOf: MedComMessagingOrganization // 
Title: "Send-Tek-A-new - Sender"
Description: "Send-Tek-A-new - Sender"
* identifier[SOR-ID].value = "328081000016004" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Hjemmesygeplejen, Aalborg kommune"

// Reciever instance - new message for attachement
Instance: c0347f2c-f11e-440f-99f6-a1ebf3b53e74
InstanceOf: MedComMessagingOrganization // 
Title: "Send-Tek-A-new - Receiver"
Description: "Send-Tek-A-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 663501c4-0e82-4883-8b08-6fb6a20719ea
InstanceOf: MedComCorePractitioner
Title: "Send-Tek-A-new - practitioner"
Description: "Send-Tek-A-new - practitioner"
* name.given[0] = "Michael"
* name.given[1] = "Magnus"
* name.family = "Burns"

Instance: ab46bc08-6adb-4e35-8640-e2b9fed48fe7
InstanceOf: MedComCorePractitionerRole
Title: "Send-Tek-A-new - practitionerRole"
Description: "Send-Tek-A-new - practitionerRole"
* practitioner = Reference(663501c4-0e82-4883-8b08-6fb6a20719ea)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: 1f80bcba-9156-4d5b-8ded-8ecff623ffce
InstanceOf: MedComMessagingProvenance
Title: "Send-Tek-A-new - Provenance"
Description: "Send-Tek-A-new - Provenance"
Usage: #example
* target = Reference(a07d8566-961a-47e1-80b9-cc9b2d2e16cb)
* occurredDateTime = 2024-10-15T15:20:00+01:00
* recorded = 2024-10-15T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(674cb75e-4a5c-4609-b740-8b09e06b0e42)
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:ee96d66f-f95a-4f23-855c-44befb31c52b"