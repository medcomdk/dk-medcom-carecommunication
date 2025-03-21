Instance: S-C-new-683f2782-11e2-490a-9fa5-d5da09cc317a
InstanceOf: MedComCareCommunicationMessage
Title: "Send-C-new"
Description: "Send-C-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-09-07T06:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/fdcda88f-b337-45dc-9b82-9650e982aa46"
* entry[=].resource = fdcda88f-b337-45dc-9b82-9650e982aa46
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/8643e0b2-66a8-4412-b3e6-a2b67045b52b"
* entry[=].resource = 8643e0b2-66a8-4412-b3e6-a2b67045b52b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/ea643637-f201-4203-bf4d-9219e20e7ac5"
* entry[=].resource = ea643637-f201-4203-bf4d-9219e20e7ac5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/2ae490e9-5de9-47b3-8258-b9fc2b578042"
* entry[=].resource = 2ae490e9-5de9-47b3-8258-b9fc2b578042
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/34bf2c09-4341-4326-9e73-7f49dcef3735"
* entry[=].resource = 34bf2c09-4341-4326-9e73-7f49dcef3735
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/9b668ecc-a9e4-4bbb-968a-d27b9894a8c9"
* entry[=].resource = 9b668ecc-a9e4-4bbb-968a-d27b9894a8c9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/5559b731-171a-4f0c-8e61-23c54f1cdf6f"
* entry[=].resource = 5559b731-171a-4f0c-8e61-23c54f1cdf6f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/935df1e8-894c-44ad-ba88-f47faa1aa504"
* entry[=].resource = 935df1e8-894c-44ad-ba88-f47faa1aa504

Instance: fdcda88f-b337-45dc-9b82-9650e982aa46
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-C-new - MessageHeader"
Description: "Send-C-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* destination[primary].receiver = Reference(9b668ecc-a9e4-4bbb-968a-d27b9894a8c9)
* sender = Reference(5559b731-171a-4f0c-8e61-23c54f1cdf6f)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1017421000016003"
* focus = Reference(ea643637-f201-4203-bf4d-9219e20e7ac5)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: ea643637-f201-4203-bf4d-9219e20e7ac5
InstanceOf: MedComCareCommunication
Title: "Send-C-new - Communication"
Description: "Send-C-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#regarding-referral
* priority = $PriorityCode#asap
* subject = Reference(8643e0b2-66a8-4412-b3e6-a2b67045b52b)
* identifier.value = "urn:uuid:cf2f559c-03e7-4f21-a39a-4be61ca15ae5"
* payload.contentString = "Til rette vedkommende hos 2100 Lægehuset Østerbro. Afdeling A har modtaget en henvisning patient. Forinden der foretages visitation, bedes følgende undersøgelser foretaget: Røntgen af hofte i to planer (Vedhæftet er seneste røntgen). Blodtryksresultat Sænkningsresultat  Resultaterne bedes fremsendt som et korrespondancebrev. Hilsen Kim Petersen \n Overlæge"
* payload.extension[date].valueDateTime = 2024-09-07T06:00:00+02:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:2fc22ab5-d84d-4896-80a6-dd6630a7de69"
* payload.extension[identifier].valueIdentifier.assigner = Reference(9b668ecc-a9e4-4bbb-968a-d27b9894a8c9)
* payload.extension[author].valueReference = Reference(2ae490e9-5de9-47b3-8258-b9fc2b578042)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "38683868"
* payload[1].contentAttachment.contentType = $bcp13#image/png
* payload[1].contentAttachment.title = "Røntgen-hofter" 
* payload[1].extension[date].valueDateTime = 2024-09-07T06:00:00+02:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:5a44c168-2652-46c3-9120-dc468eadce7a"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(9b668ecc-a9e4-4bbb-968a-d27b9894a8c9)
* payload[1].contentAttachment.data = "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"

Instance: 8643e0b2-66a8-4412-b3e6-a2b67045b52b
InstanceOf: MedComCorePatient
Title: "Send-C-new - Patient"
Description: "Send-C-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 9b668ecc-a9e4-4bbb-968a-d27b9894a8c9
InstanceOf: MedComMessagingOrganization // 
Title: "Send-C-new - Sender"
Description: "Send-C-new - Sender"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"

// Reciever instance - new message for attachement
Instance: 5559b731-171a-4f0c-8e61-23c54f1cdf6f
InstanceOf: MedComMessagingOrganization // 
Title: "Send-C-new - Receiver"
Description: "Send-C-new - Receiver"
* identifier[SOR-ID].value = "1017421000016003" 
* identifier[EAN-ID].value = "5790002408496" 
* name = "2100 Lægehuset Østerbro"


// Practitioners - new message with attachment
Instance: 34bf2c09-4341-4326-9e73-7f49dcef3735
InstanceOf: MedComCorePractitioner
Title: "Send-C-new - practitioner"
Description: "Send-C-new - practitioner"
* name.given = "Kim"
* name.family = "Petersen"

Instance: 2ae490e9-5de9-47b3-8258-b9fc2b578042
InstanceOf: MedComCorePractitionerRole
Title: "Send-C-new - practitionerRole"
Description: "Send-C-new - practitionerRole"
* practitioner = Reference(34bf2c09-4341-4326-9e73-7f49dcef3735)
* code = $PractitionerRole#overlaege

// CareCommunication example - new message
Instance: 935df1e8-894c-44ad-ba88-f47faa1aa504
InstanceOf: MedComCareCommunicationProvenance
Title: "Send-C-new - Provenance"
Description: "Send-C-new - Provenance"
Usage: #example
* target = Reference(fdcda88f-b337-45dc-9b82-9650e982aa46)
* occurredDateTime = 2024-09-07T06:00:00+02:00
* recorded = 2024-09-07T06:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(9b668ecc-a9e4-4bbb-968a-d27b9894a8c9)
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:2fc22ab5-d84d-4896-80a6-dd6630a7de69"
* entity[1].role = #source
* entity[1].what.identifier.value = "urn:uuid:5a44c168-2652-46c3-9120-dc468eadce7a"
