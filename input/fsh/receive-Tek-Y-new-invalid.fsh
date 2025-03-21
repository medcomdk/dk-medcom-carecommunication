// OBS!! * payload.contentString = "To be removed"
Instance: -R-Tek-Y-new-invalid-3d1149cd-d3e3-421a-ae31-4860decb4272
InstanceOf: MedComCareCommunicationMessage
Title: "receive-Tek-Y-new-invalid"
Description: "receive-Tek-Y-new-invalid"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-10T15:20:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/5c2cdf2c-bcbd-4c15-adce-6b862a84249c"
* entry[=].resource = 5c2cdf2c-bcbd-4c15-adce-6b862a84249c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/64610edb-bb86-4248-87ae-28c1385c3c23"
* entry[=].resource = 64610edb-bb86-4248-87ae-28c1385c3c23
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/4a003dce-060c-4d9d-b5d6-7513323049d1"
* entry[=].resource = 4a003dce-060c-4d9d-b5d6-7513323049d1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/bb760c55-95b0-4f74-9b16-794e7780d5f2"
* entry[=].resource = bb760c55-95b0-4f74-9b16-794e7780d5f2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/1d301fb6-9d72-4f72-9182-1f60656df133"
* entry[=].resource = 1d301fb6-9d72-4f72-9182-1f60656df133
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/409b87d3-398e-44cb-9246-35b47ff75cc4"
* entry[=].resource = 409b87d3-398e-44cb-9246-35b47ff75cc4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/6e7761cb-2dc9-48c7-8fd4-b49d46dd9c05"
* entry[=].resource = 6e7761cb-2dc9-48c7-8fd4-b49d46dd9c05
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/69620f44-c01b-4c8f-9bfe-97b00639a770"
* entry[=].resource = 69620f44-c01b-4c8f-9bfe-97b00639a770

Instance: 5c2cdf2c-bcbd-4c15-adce-6b862a84249c
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive-Tek-Y-new-invalid - MessageHeader"
Description: "receive-Tek-Y-new-invalid - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(409b87d3-398e-44cb-9246-35b47ff75cc4)
* sender = Reference(6e7761cb-2dc9-48c7-8fd4-b49d46dd9c05)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(4a003dce-060c-4d9d-b5d6-7513323049d1)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 4a003dce-060c-4d9d-b5d6-7513323049d1
InstanceOf: MedComCareCommunication
Title: "receive-Tek-Y-new-invalid - Communication"
Description: "receive-Tek-Y-new-invalid - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#examination-results
* subject = Reference(64610edb-bb86-4248-87ae-28c1385c3c23)
* identifier.value = "urn:uuid:c4a7575c-c3d7-4f34-a120-6f1ea28f9c12"
* payload.contentString = "To be removed"
* payload.extension[date].valueDateTime = 2024-11-10T15:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:6abbaeaf-0c35-4212-9fc2-48d7b520ac69"
* payload.extension[identifier].valueIdentifier.assigner = Reference(409b87d3-398e-44cb-9246-35b47ff75cc4)
* payload.extension[author].valueReference = Reference(bb760c55-95b0-4f74-9b16-794e7780d5f2)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "004512345789"


Instance: 64610edb-bb86-4248-87ae-28c1385c3c23
InstanceOf: MedComCorePatient
Title: "receive-Tek-Y-new-invalid - Patient"
Description: "receive-Tek-Y-new-invalid - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 409b87d3-398e-44cb-9246-35b47ff75cc4
InstanceOf: MedComMessagingOrganization // 
Title: "receive-Tek-Y-new-invalid - Sender"
Description: "receive-Tek-Y-new-invalid - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 6e7761cb-2dc9-48c7-8fd4-b49d46dd9c05
InstanceOf: MedComMessagingOrganization // 
Title: "receive-Tek-Y-new-invalid - Receiver"
Description: "receive-Tek-Y-new-invalid - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: 1d301fb6-9d72-4f72-9182-1f60656df133
InstanceOf: MedComCorePractitioner
Title: "receive-Tek-Y-new-invalid - practitioner"
Description: "receive-Tek-Y-new-invalid - practitioner"
* name.given = "Henrik"
* name.family = "Elderly"

Instance: bb760c55-95b0-4f74-9b16-794e7780d5f2
InstanceOf: MedComCorePractitionerRole
Title: "receive-Tek-Y-new-invalid - practitionerRole"
Description: "receive-Tek-Y-new-invalid - practitionerRole"
* practitioner = Reference(1d301fb6-9d72-4f72-9182-1f60656df133)
* code = $PractitionerRole#sygehuslaege

// CareCommunication example - new message
Instance: 69620f44-c01b-4c8f-9bfe-97b00639a770
InstanceOf: MedComCareCommunicationProvenance
Title: "receive-Tek-Y-new-invalid - Provenance"
Description: "receive-Tek-Y-new-invalid - Provenance"
Usage: #example
* target = Reference(5c2cdf2c-bcbd-4c15-adce-6b862a84249c)
* occurredDateTime = 2024-11-10T15:20:00+01:00
* recorded = 2024-11-10T15:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(409b87d3-398e-44cb-9246-35b47ff75cc4)
* entity.role = #source
* entity.what.identifier.value = "urn:uuid:6abbaeaf-0c35-4212-9fc2-48d7b520ac69"