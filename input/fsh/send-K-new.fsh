Instance: 77c771ca-05d6-4efb-9a74-2fc513787f3a
InstanceOf: MedComCareCommunicationMessage
Title: "Send-K-reply"
Description: "Send-K-reply"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-10-19T13:00:00+01:00
* entry[+].fullUrl = "MessageHeader/3dbffafe-ce3c-45b0-bca7-2c008c478e79"
* entry[=].resource = 3dbffafe-ce3c-45b0-bca7-2c008c478e79
* entry[+].fullUrl = "Patient/db2fd52e-9a7a-418f-90d1-b422e07c895d"
* entry[=].resource = db2fd52e-9a7a-418f-90d1-b422e07c895d
* entry[+].fullUrl = "Communication/e7e596e0-6458-4701-a20f-a9322f85ebe8"
* entry[=].resource = e7e596e0-6458-4701-a20f-a9322f85ebe8
* entry[+].fullUrl = "PractitionerRole/1840f077-7ca1-4141-a46b-1bce43065c76"
* entry[=].resource = 1840f077-7ca1-4141-a46b-1bce43065c76
* entry[+].fullUrl = "Practitioner/9ec69637-d91e-491d-a5b2-ec1661b98bc5"
* entry[=].resource = 9ec69637-d91e-491d-a5b2-ec1661b98bc5
* entry[+].fullUrl = "PractitionerRole/84eb6a09-63cf-433d-8522-41465d78756a"
* entry[=].resource = 84eb6a09-63cf-433d-8522-41465d78756a
* entry[+].fullUrl = "Practitioner/a7e25289-11d8-4125-a08a-9c1d85cbd950"
* entry[=].resource = a7e25289-11d8-4125-a08a-9c1d85cbd950
* entry[+].fullUrl = "Organization/7260b118-d744-4396-bbf2-80245933b1dd"
* entry[=].resource = 7260b118-d744-4396-bbf2-80245933b1dd
* entry[+].fullUrl = "Organization/6ea7c7cb-824b-4619-a13e-bc8828afd7e1"
* entry[=].resource = 6ea7c7cb-824b-4619-a13e-bc8828afd7e1
* entry[+].fullUrl = "Provenance/4e290fa6-0a40-4cc8-abd3-14ac22e0b48b"
* entry[=].resource = 4e290fa6-0a40-4cc8-abd3-14ac22e0b48b
* entry[+].fullUrl = "Provenance/86b93888-0a2d-4530-a1c2-263394932e11"
* entry[=].resource = 86b93888-0a2d-4530-a1c2-263394932e11

Instance: 3dbffafe-ce3c-45b0-bca7-2c008c478e79
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-K-reply - MessageHeader"
Description: "Send-K-reply - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* destination[primary].receiver = Reference(6ea7c7cb-824b-4619-a13e-bc8828afd7e1)
* sender = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(e7e596e0-6458-4701-a20f-a9322f85ebe8)

Instance: e7e596e0-6458-4701-a20f-a9322f85ebe8
InstanceOf: MedComCareCommunication
Title: "Send-K-reply - Communication"
Description: "Send-K-reply - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#deceased
* subject = Reference(db2fd52e-9a7a-418f-90d1-b422e07c895d)
* topic.text = "Afgået ved døden"
* payload[0].contentString = "Til rette vedkommende hos Per Thorsleth. Bruno Elmer er desværre død i nat kl. 4.15. I hans kalender fremgår det, at han vil komme til læge i morgen kl. 11. Det gør han ikke. Mvh. Sygeplejerske K. Jensen"
* payload[0].extension[date].valueDateTime = 2024-10-19T13:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:954183f4-bc89-4d75-8073-9b397bacd6ec"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* payload[0].extension[author].valueReference = Reference(c95dcab1-07af-4127-bb51-c43ed60a37ed)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "85572787"
* payload[1].contentString = "Tak for at rette henvendelse. Vi får slettet hans aftaler og informerer desuden xxx. Mvh. Sygeplejerske K. Jensen"
* payload[1].extension[date].valueDateTime = 2024-10-19T14:25:00+01:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:cfc9886a-5f54-463b-9255-99bfaf778d8c"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(7260b118-d744-4396-bbf2-80245933b1dd)
* payload[1].extension[author].valueReference = Reference(c95dcab1-07af-4127-bb51-c43ed60a37ed)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "87875455"

Instance: db2fd52e-9a7a-418f-90d1-b422e07c895d
InstanceOf: MedComCorePatient
Title: "Send-K-reply - Patient"
Description: "Send-K-reply - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* deceasedBoolean = true

// Sender instance - new message for attachement
Instance: 7260b118-d744-4396-bbf2-80245933b1dd
InstanceOf: MedComMessagingOrganization // 
Title: "Send-K-reply - Sender"
Description: "Send-K-reply - Sender"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"

// Reciever instance - new message for attachement
Instance: 6ea7c7cb-824b-4619-a13e-bc8828afd7e1
InstanceOf: MedComMessagingOrganization // 
Title: "Send-K-reply - Receiver"
Description: "Send-K-reply - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790001348250" 
* name = "Per Thorseth"

// Practitioners - new message with attachment
Instance: 9ec69637-d91e-491d-a5b2-ec1661b98bc5
InstanceOf: MedComCorePractitioner
Title: "Send-K-reply - practitioner"
Description: "Send-K-reply - practitioner"
* name.given = "Kim"
* name.family = "Jensen"

Instance: 1840f077-7ca1-4141-a46b-1bce43065c76
InstanceOf: MedComCorePractitionerRole
Title: "Send-K-reply - practitionerRole"
Description: "Send-K-reply - practitionerRole"
* practitioner = Reference(9ec69637-d91e-491d-a5b2-ec1661b98bc5)
* code = $PractitionerRole#sygeplejerske


// Practitioners - reply message with attachment
Instance: a7e25289-11d8-4125-a08a-9c1d85cbd950
InstanceOf: MedComCorePractitioner
Title: "Send-K-reply - practitioner"
Description: "Send-K-reply - practitioner"
* name.given = "Nancy"
* name.family = "Nielsen"

Instance: 84eb6a09-63cf-433d-8522-41465d78756a
InstanceOf: MedComCorePractitionerRole
Title: "Send-K-reply - practitionerRole"
Description: "Send-K-reply - practitionerRole"
* practitioner = Reference(a7e25289-11d8-4125-a08a-9c1d85cbd950)
* code = $PractitionerRole#laegesekretaer

// CareCommunication example - new message
Instance: 4e290fa6-0a40-4cc8-abd3-14ac22e0b48b
InstanceOf: MedComMessagingProvenance
Title: "Send-K-reply - Provenance"
Description: "Send-K-reply - Provenance"
Usage: #example
* target = Reference(42fa2844-5020-45dd-bd5f-77137ba5ca1f)
* occurredDateTime = 2024-10-19T13:00:00+01:00
* recorded = 2024-10-19T13:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(7260b118-d744-4396-bbf2-80245933b1dd)

// CareCommunication example - reply message
Instance: 86b93888-0a2d-4530-a1c2-263394932e11
InstanceOf: MedComMessagingProvenance
Title: "Send-K-reply - Provenance"
Description: "Send-K-reply - Provenance"
Usage: #example
* target = Reference(3dbffafe-ce3c-45b0-bca7-2c008c478e79)
* occurredDateTime = 2024-10-19T14:25:00+01:00
* recorded = 2024-10-19T14:25:00+01:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(6ea7c7cb-824b-4619-a13e-bc8828afd7e1)
* entity.role = #revision
* entity.what = Reference(42fa2844-5020-45dd-bd5f-77137ba5ca1f)
