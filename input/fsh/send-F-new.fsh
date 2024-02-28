Instance: 9c2371ff-09a0-4626-9fb9-f70645546361
InstanceOf: MedComCareCommunicationMessage
Title: "Send-E-new"
Description: "Send-E-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-10-15T15:20:00+01:00
* entry[+].fullUrl = "MessageHeader/3eadd00d-011b-4e2f-8f30-6658a6ee89e0"
* entry[=].resource = 3eadd00d-011b-4e2f-8f30-6658a6ee89e0
* entry[+].fullUrl = "Patient/d1154ba4-8ad2-4932-9441-48962166c925"
* entry[=].resource = d1154ba4-8ad2-4932-9441-48962166c925
* entry[+].fullUrl = "Communication/7e6007ea-dd75-4f6f-bebe-9238957b0774"
* entry[=].resource = 7e6007ea-dd75-4f6f-bebe-9238957b0774
* entry[+].fullUrl = "PractitionerRole/6666a833-8621-475a-9fc5-a34b1a043a03"
* entry[=].resource = 6666a833-8621-475a-9fc5-a34b1a043a03
* entry[+].fullUrl = "Practitioner/06d61404-9502-4579-9475-4e3ddd071bc5"
* entry[=].resource = 06d61404-9502-4579-9475-4e3ddd071bc5
* entry[+].fullUrl = "Organization/eaebebec-728c-45bc-a0b3-87b50c688c31"
* entry[=].resource = eaebebec-728c-45bc-a0b3-87b50c688c31
* entry[+].fullUrl = "Organization/ebe56e09-cd9e-443a-a792-8f398787bca8"
* entry[=].resource = ebe56e09-cd9e-443a-a792-8f398787bca8
* entry[+].fullUrl = "Provenance/93b0a981-986a-43ac-aecb-961d8a618d83"
* entry[=].resource = 93b0a981-986a-43ac-aecb-961d8a618d83

Instance: 3eadd00d-011b-4e2f-8f30-6658a6ee89e0
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-E-new - MessageHeader"
Description: "Send-E-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=328081000016004"
* destination[primary].receiver = Reference(eaebebec-728c-45bc-a0b3-87b50c688c31)
* sender = Reference(ebe56e09-cd9e-443a-a792-8f398787bca8)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1339531000016004"
* focus = Reference(7e6007ea-dd75-4f6f-bebe-9238957b0774)

Instance: 7e6007ea-dd75-4f6f-bebe-9238957b0774
InstanceOf: MedComCareCommunication
Title: "Send-E-new - Communication"
Description: "Send-E-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(d1154ba4-8ad2-4932-9441-48962166c925)
* topic.text = "Resultater fra hjemmesygeplejen"
* payload.contentString = "Til rette vedkommende. Hermed fremsendes undersøgelsesresultater fra seneste besøg af hjemmesygeplejen..... Hilsen Michael, sygeplejerske."
* payload.extension[date].valueDateTime = 2024-10-15T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:b478c855-cf10-4cc6-b773-368c7c9eb60e"
* payload.extension[identifier].valueIdentifier.assigner = Reference(eaebebec-728c-45bc-a0b3-87b50c688c31)
* payload.extension[author].valueReference = Reference(6666a833-8621-475a-9fc5-a34b1a043a03)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "004523232323"


Instance: d1154ba4-8ad2-4932-9441-48962166c925
InstanceOf: MedComCorePatient
Title: "Send-E-new - Patient"
Description: "Send-E-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: eaebebec-728c-45bc-a0b3-87b50c688c31
InstanceOf: MedComMessagingOrganization // 
Title: "Send-E-new - Sender"
Description: "Send-E-new - Sender"
* identifier[SOR-ID].value = "328081000016004" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Hjemmesygeplejen, Aalborg kommune"

// Reciever instance - new message for attachement
Instance: ebe56e09-cd9e-443a-a792-8f398787bca8
InstanceOf: MedComMessagingOrganization // 
Title: "Send-E-new - Receiver"
Description: "Send-E-new - Receiver"
* identifier[SOR-ID].value = "1339531000016004" 
* identifier[EAN-ID].value = "5790002626814" 
* name = "Lægeklinik Ølgod"


// Practitioners - new message with attachment
Instance: 06d61404-9502-4579-9475-4e3ddd071bc5
InstanceOf: MedComCorePractitioner
Title: "Send-E-new - practitioner"
Description: "Send-E-new - practitioner"
* name.given[0] = "Michael"
* name.given[1] = "Magnus"
* name.family = "Burns"

Instance: 6666a833-8621-475a-9fc5-a34b1a043a03
InstanceOf: MedComCorePractitionerRole
Title: "Send-E-new - practitionerRole"
Description: "Send-E-new - practitionerRole"
* practitioner = Reference(06d61404-9502-4579-9475-4e3ddd071bc5)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: 93b0a981-986a-43ac-aecb-961d8a618d83
InstanceOf: MedComMessagingProvenance
Title: "Send-E-new - Provenance"
Description: "Send-E-new - Provenance"
Usage: #example
* target = Reference(3eadd00d-011b-4e2f-8f30-6658a6ee89e0)
* occurredDateTime = 2024-10-15T15:20:00+01:00
* recorded = 2024-10-15T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(eaebebec-728c-45bc-a0b3-87b50c688c31)