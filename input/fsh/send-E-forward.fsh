Instance: S-E-forward-77c771ca-05d6-4efb-9a74-2fc513787f3a
InstanceOf: MedComCareCommunicationMessage
Title: "Send-E-forward"
Description: "Send-E-forward"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-09-14T13:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/3dbffafe-ce3c-45b0-bca7-2c008c478e79"
* entry[=].resource = 3dbffafe-ce3c-45b0-bca7-2c008c478e79
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/db2fd52e-9a7a-418f-90d1-b422e07c895d"
* entry[=].resource = db2fd52e-9a7a-418f-90d1-b422e07c895d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/e7e596e0-6458-4701-a20f-a9322f85ebe8"
* entry[=].resource = e7e596e0-6458-4701-a20f-a9322f85ebe8
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/1840f077-7ca1-4141-a46b-1bce43065c76"
* entry[=].resource = 1840f077-7ca1-4141-a46b-1bce43065c76
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/9ec69637-d91e-491d-a5b2-ec1661b98bc5"
* entry[=].resource = 9ec69637-d91e-491d-a5b2-ec1661b98bc5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/84eb6a09-63cf-433d-8522-41465d78756a"
* entry[=].resource = 84eb6a09-63cf-433d-8522-41465d78756a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a7e25289-11d8-4125-a08a-9c1d85cbd950"
* entry[=].resource = a7e25289-11d8-4125-a08a-9c1d85cbd950
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/d2ac69eb-568e-4201-b29d-2af8d3126518"
* entry[=].resource = d2ac69eb-568e-4201-b29d-2af8d3126518
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/7260b118-d744-4396-bbf2-80245933b1dd"
* entry[=].resource = 7260b118-d744-4396-bbf2-80245933b1dd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/6ea7c7cb-824b-4619-a13e-bc8828afd7e1"
* entry[=].resource = 6ea7c7cb-824b-4619-a13e-bc8828afd7e1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/4e290fa6-0a40-4cc8-abd3-14ac22e0b48b"
* entry[=].resource = 4e290fa6-0a40-4cc8-abd3-14ac22e0b48b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/86b93888-0a2d-4530-a1c2-263394932e11"
* entry[=].resource = 86b93888-0a2d-4530-a1c2-263394932e11

Instance: 3dbffafe-ce3c-45b0-bca7-2c008c478e79
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-E-forward - MessageHeader"
Description: "Send-E-forward - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=1017421000016003"
* destination[primary].receiver = Reference(d2ac69eb-568e-4201-b29d-2af8d3126518)
* sender = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(e7e596e0-6458-4701-a20f-a9322f85ebe8)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: e7e596e0-6458-4701-a20f-a9322f85ebe8
InstanceOf: MedComCareCommunication
Title: "Send-E-forward - Communication"
Description: "Send-E-forward - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#decease
* subject = Reference(db2fd52e-9a7a-418f-90d1-b422e07c895d)
* topic.text = "Afgået ved døden"
* identifier.value = "urn:uuid:06a106f9-df1c-4064-9031-b6a4cb841e85"
* payload[0].contentString = "Til rette vedkommende hos Per Thorsleth. Bruno Elmer er desværre død i nat kl. 4.15. I hans kalender fremgår det, at han vil komme til læge i morgen kl. 11. Det gør han ikke.\nHilsen Nancy Jensen\nLægesekretær"
* payload[0].extension[date].valueDateTime = 2024-09-14T13:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:954183f4-bc89-4d75-8073-9b397bacd6ec"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* payload[0].extension[author].valueReference = Reference(84eb6a09-63cf-433d-8522-41465d78756a)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "85572787"
* payload[1].contentString = "Jeg videresender hermed beskeden fra Kim, så I er orienteret.\nHilsen Kim Jensen\nSygeplejerske"
* payload[1].extension[date].valueDateTime = 2024-09-14T14:25:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:cfc9886a-5f54-463b-9255-99bfaf778d8c"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* payload[1].extension[author].valueReference = Reference(1840f077-7ca1-4141-a46b-1bce43065c76)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "87875455"

Instance: db2fd52e-9a7a-418f-90d1-b422e07c895d
InstanceOf: MedComCorePatient
Title: "Send-E-forward - Patient"
Description: "Send-E-forward - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true

// Sender instance - new message for attachement
Instance: 7260b118-d744-4396-bbf2-80245933b1dd
InstanceOf: MedComMessagingOrganization // 
Title: "Send-E-forward - Sender"
Description: "Send-E-forward - Sender"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"

Instance: d2ac69eb-568e-4201-b29d-2af8d3126518
InstanceOf: MedComMessagingOrganization 
Title: "Send-F-new"
Description: "Send-F-new"
* identifier[SOR-ID].value = "953751000016007" 
* identifier[EAN-ID].value = "5790001348120" 

// Reciever instance - new message for attachement
Instance: 6ea7c7cb-824b-4619-a13e-bc8828afd7e1
InstanceOf: MedComMessagingOrganization // 
Title: "Send-E-forward - Receiver"
Description: "Send-E-forward - Receiver"
* identifier[SOR-ID].value = "1017421000016003" 
* identifier[EAN-ID].value = "5790002408496" 
* name = "2100 Lægehuset Østerbro"

// Practitioners - new message with attachment
Instance: 9ec69637-d91e-491d-a5b2-ec1661b98bc5
InstanceOf: MedComCorePractitioner
Title: "Send-E-forward - practitioner"
Description: "Send-E-forward - practitioner"
* name.given = "Kim"
* name.family = "Jensen"

Instance: 1840f077-7ca1-4141-a46b-1bce43065c76
InstanceOf: MedComCorePractitionerRole
Title: "Send-E-forward - practitionerRole"
Description: "Send-E-forward - practitionerRole"
* practitioner = Reference(9ec69637-d91e-491d-a5b2-ec1661b98bc5)
* code = $PractitionerRole#sygeplejerske


// Practitioners - reply message with attachment
Instance: a7e25289-11d8-4125-a08a-9c1d85cbd950
InstanceOf: MedComCorePractitioner
Title: "Send-E-forward - practitioner"
Description: "Send-E-forward - practitioner"
* name.given = "Nancy"
* name.family = "Nielsen"

Instance: 84eb6a09-63cf-433d-8522-41465d78756a
InstanceOf: MedComCorePractitionerRole
Title: "Send-E-forward - practitionerRole"
Description: "Send-E-forward - practitionerRole"
* practitioner = Reference(a7e25289-11d8-4125-a08a-9c1d85cbd950)
* code = $PractitionerRole#laegesekretaer

// CareCommunication example - new message
Instance: 4e290fa6-0a40-4cc8-abd3-14ac22e0b48b
InstanceOf: MedComCareCommunicationProvenance
Title: "Send-E-forward - Provenance"
Description: "Send-E-forward - Provenance"
Usage: #example
* target = Reference(42fa2844-5020-45dd-bd5f-77137ba5ca1f)
* occurredDateTime = 2024-09-14T13:00:00+02:00
* recorded = 2024-09-14T13:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:954183f4-bc89-4d75-8073-9b397bacd6ec"

// CareCommunication example - reply message
Instance: 86b93888-0a2d-4530-a1c2-263394932e11
InstanceOf: MedComCareCommunicationProvenance
Title: "Send-E-forward - Provenance"
Description: "Send-E-forward - Provenance"
Usage: #example
* target = Reference(3dbffafe-ce3c-45b0-bca7-2c008c478e79)
* occurredDateTime = 2024-09-14T14:25:00+02:00
* recorded = 2024-09-14T14:25:00+02:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(6ea7c7cb-824b-4619-a13e-bc8828afd7e1)
* entity[1].role = #revision
* entity[1].what = Reference(42fa2844-5020-45dd-bd5f-77137ba5ca1f)
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:cfc9886a-5f54-463b-9255-99bfaf778d8c"

Instance: 42fa2844-5020-45dd-bd5f-77137ba5ca1f
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-E-forward - MessageHeader"
Description: "Send-E-forward - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=1017421000016003"
* destination[primary].receiver = Reference(d2ac69eb-568e-4201-b29d-2af8d3126518)
* sender = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(e7e596e0-6458-4701-a20f-a9322f85ebe8)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"
