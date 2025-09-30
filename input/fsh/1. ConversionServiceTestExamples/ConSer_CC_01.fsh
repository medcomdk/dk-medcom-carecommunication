Instance: aebfd0b9-c702-430b-a00d-8b5cc8d7c2a5
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_01 - New CareCommunication message."
Description: "ConSer_CC_01 - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2025-01-04T14:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/513156b6-41df-4d18-9b2e-0e076536ba32"
* entry[=].resource = 513156b6-41df-4d18-9b2e-0e076536ba32
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/4ac4ab47-977b-4bcf-9d01-e41234aef4cd"
* entry[=].resource = 4ac4ab47-977b-4bcf-9d01-e41234aef4cd
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/982e49d6-594a-4b03-bd38-2ded4d0f47a7"
* entry[=].resource = 982e49d6-594a-4b03-bd38-2ded4d0f47a7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/ff942e5b-6a22-4e5f-be0e-630a76df77a1"
* entry[=].resource = ff942e5b-6a22-4e5f-be0e-630a76df77a1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/e6d9a4a1-562f-4f4a-9fca-af235fbeb687"
* entry[=].resource = e6d9a4a1-562f-4f4a-9fca-af235fbeb687
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/6b6a1977-394b-4284-96a1-0851cac95457"
* entry[=].resource = 6b6a1977-394b-4284-96a1-0851cac95457
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/34413831-111f-43b0-b4b0-2a065e8a76b7"
* entry[=].resource = 34413831-111f-43b0-b4b0-2a065e8a76b7
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/cc0904a9-8066-4d9a-be1c-1312c9099768"
* entry[=].resource = cc0904a9-8066-4d9a-be1c-1312c9099768


Instance: 513156b6-41df-4d18-9b2e-0e076536ba32
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_01 - Instance of a MessageHeader resource used in a new message."
Description: "ConSer_CC_01 - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* destination[primary].receiver = Reference(6b6a1977-394b-4284-96a1-0851cac95457)
* sender = Reference(34413831-111f-43b0-b4b0-2a065e8a76b7)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(982e49d6-594a-4b03-bd38-2ded4d0f47a7)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"

// CareCommunication new example
Instance: 982e49d6-594a-4b03-bd38-2ded4d0f47a7
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_01 - Instance of Communication resource used in a new message."
Description: "ConSer_CC_01 - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Anmodning om opfølgning"
* subject = Reference(4ac4ab47-977b-4bcf-9d01-e41234aef4cd)
* payload[0].contentString = "Vi har modtaget svar på biopsi taget fra jeres patient Kaja Hansen d. 03.01.2025. Resultatet viser ingen tegn på malignitet, men der er tegn på kronisk inflammation.
Vi anbefaler, at I drøfter resultaterne med patienten og vurderer behovet for eventuel medicinsk behandling eller henvisning til specialafdeling, fx reumatologi.
Venlig hilsen Hans Hansen, Specialelæge"
* payload[0].extension[date].valueDateTime = 2025-01-04T14:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(34413831-111f-43b0-b4b0-2a065e8a76b7)
* payload[0].extension[author].valueReference = Reference(ff942e5b-6a22-4e5f-be0e-630a76df77a1)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "03030303"

Instance: 4ac4ab47-977b-4bcf-9d01-e41234aef4cd
InstanceOf: MedComCorePatient
Title: "ConSer_CC_01 - Kaja Test Hansen"
Description: "ConSer_CC_01 - Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given = "Kaja"


//Sender and receiver is the same, as we only have 1 institution receiving and sending CC
Instance: 34413831-111f-43b0-b4b0-2a065e8a76b7
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_01 - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_01 - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

Instance: 6b6a1977-394b-4284-96a1-0851cac95457
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_01 - Example of a receiver organization with a SOR and an EAN identifier."
Description: "ConSer_CC_01 - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

// Practitioners - new message
Instance: e6d9a4a1-562f-4f4a-9fca-af235fbeb687
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_01 - Simple practitioner with a name"
Description: "ConSer_CC_01 - Simple practitioner with a name"
* name.given = "Hans"
* name.family = "Hansen"

Instance: ff942e5b-6a22-4e5f-be0e-630a76df77a1
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_01 - PractitionerRole with a role and reference to a practitioner"
Description: "ConSer_CC_01 - PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(e6d9a4a1-562f-4f4a-9fca-af235fbeb687)
* code = $PractitionerRole#speciallaege


// CareCommunication example - new message
Instance: cc0904a9-8066-4d9a-be1c-1312c9099768
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_01 - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "ConSer_CC_01 - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(513156b6-41df-4d18-9b2e-0e076536ba32)
* occurredDateTime = 2025-01-04T14:00:00+01:00
* recorded = 2025-01-04T14:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(34413831-111f-43b0-b4b0-2a065e8a76b7)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
