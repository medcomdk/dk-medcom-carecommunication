Instance: 20fcbedb-ced8-4949-9edf-a145e0bb9b09
InstanceOf: MedComCareCommunicationMessage
Title: "Receive-J-Tek-new"
Description: "Receive-J-Tek-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-23T16:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/f7f519bd-a104-43fb-ab8a-058eeaec68c7"
* entry[=].resource = f7f519bd-a104-43fb-ab8a-058eeaec68c7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/e85e8d47-46a9-4b6a-b86d-9dcf96d24543"
* entry[=].resource = e85e8d47-46a9-4b6a-b86d-9dcf96d24543
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/930876e5-8cf8-40f0-bd6c-3e38520d61de"
* entry[=].resource = 930876e5-8cf8-40f0-bd6c-3e38520d61de
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8a11159b-2b92-4232-9990-09bbae6ec6cb"
* entry[=].resource = 8a11159b-2b92-4232-9990-09bbae6ec6cb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/5edc1273-b409-4fcc-a39c-15d8beb3ae71"
* entry[=].resource = 5edc1273-b409-4fcc-a39c-15d8beb3ae71
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/aea5f134-5cc9-44b1-b5db-7155e45717ee"
* entry[=].resource = aea5f134-5cc9-44b1-b5db-7155e45717ee
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/d8ca8b48-565a-46c8-a1c8-e781c498626a"
* entry[=].resource = d8ca8b48-565a-46c8-a1c8-e781c498626a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/520281e1-e735-4e5c-8980-fb8a36e820cb"
* entry[=].resource = 520281e1-e735-4e5c-8980-fb8a36e820cb

Instance: f7f519bd-a104-43fb-ab8a-058eeaec68c7
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Receive-J-Tek-new - MessageHeader"
Description: "Receive-J-Tek-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* destination[primary].receiver = Reference(aea5f134-5cc9-44b1-b5db-7155e45717ee)
* sender = Reference(d8ca8b48-565a-46c8-a1c8-e781c498626a)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(930876e5-8cf8-40f0-bd6c-3e38520d61de)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 930876e5-8cf8-40f0-bd6c-3e38520d61de
InstanceOf: MedComCareCommunication
Title: "Receive-J-Tek-new - Communication"
Description: "Receive-J-Tek-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#decease
* subject = Reference(e85e8d47-46a9-4b6a-b86d-9dcf96d24543)
* identifier.value = "urn:uuid:b84738c1-a67f-4de9-a883-fab6d0ba0c44"
* topic.text = "Afgået ved døden"
* payload.contentString = "Til rette vedkommende hos Per Thorsleth. Bruno Elmer er desværre død i nat kl. 4.15. I hans kalender fremgår det, at han vil komme til læge i morgen kl. 11. Det gør han ikke. Mvh. Sygeplejerske K. Jensen."
* payload.extension[date].valueDateTime = 2024-08-23T16:00:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:1df44fde-c8e1-4d0c-99cd-fc521cb728e5"
* payload.extension[identifier].valueIdentifier.assigner = Reference(aea5f134-5cc9-44b1-b5db-7155e45717ee)
* payload.extension[author].valueReference = Reference(8a11159b-2b92-4232-9990-09bbae6ec6cb)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "85572787"


Instance: e85e8d47-46a9-4b6a-b86d-9dcf96d24543
InstanceOf: MedComCorePatient
Title: "Receive-J-Tek-new - Patient"
Description: "Receive-J-Tek-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true

// Sender instance - new message for attachement
Instance: aea5f134-5cc9-44b1-b5db-7155e45717ee
InstanceOf: MedComMessagingOrganization // 
Title: "Receive-J-Tek-new - Sender"
Description: "Receive-J-Tek-new - Sender"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"

// Reciever instance - new message for attachement
Instance: d8ca8b48-565a-46c8-a1c8-e781c498626a
InstanceOf: MedComMessagingOrganization // 
Title: "Receive-J-Tek-new - Receiver"
Description: "Receive-J-Tek-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790001348250" 
* name = "Per Thorseth"


// Practitioners - new message with attachment
Instance: 5edc1273-b409-4fcc-a39c-15d8beb3ae71
InstanceOf: MedComCorePractitioner
Title: "Receive-J-Tek-new - practitioner"
Description: "Receive-J-Tek-new - practitioner"
* name.given = "Kim"
* name.family = "Jensen"

Instance: 8a11159b-2b92-4232-9990-09bbae6ec6cb
InstanceOf: MedComCorePractitionerRole
Title: "Receive-J-Tek-new - practitionerRole"
Description: "Receive-J-Tek-new - practitionerRole"
* practitioner = Reference(5edc1273-b409-4fcc-a39c-15d8beb3ae71)
* code = $PractitionerRole#overlaege

// CareCommunication example - new message
Instance: 520281e1-e735-4e5c-8980-fb8a36e820cb
InstanceOf: MedComMessagingProvenance
Title: "Receive-J-Tek-new - Provenance"
Description: "Receive-J-Tek-new - Provenance"
Usage: #example
* target = Reference(42fa2844-5020-45dd-bd5f-77137ba5ca1f)
* occurredDateTime = 2024-08-23T16:00:00+01:00
* recorded = 2024-08-23T16:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(aea5f134-5cc9-44b1-b5db-7155e45717ee)
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:1df44fde-c8e1-4d0c-99cd-fc521cb728e5"
