Instance: d8765fad-768d-404b-9ab0-115571dd2972
InstanceOf: MedComCareCommunicationMessage
Title: "ConSer_CC_06_attachment - New CareCommunication message."
Description: "ConSer_CC_06_attachment - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2025-01-04T14:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/372b0286-ee56-4d51-9ec5-ee4339fdf4ea"
* entry[=].resource = 372b0286-ee56-4d51-9ec5-ee4339fdf4ea
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/d216a3e7-4e24-4674-ab28-ad78cdbef8ce"
* entry[=].resource = d216a3e7-4e24-4674-ab28-ad78cdbef8ce
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/0eb15a16-c9c3-4fb7-86a5-58d8041cb4eb"
* entry[=].resource = 0eb15a16-c9c3-4fb7-86a5-58d8041cb4eb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/59233635-c018-41df-8256-3f152c850d9a"
* entry[=].resource = 59233635-c018-41df-8256-3f152c850d9a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/1d12ab42-902a-4116-83e6-39cc5aff2e30"
* entry[=].resource = 1d12ab42-902a-4116-83e6-39cc5aff2e30
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b4a8fd31-274a-4d09-8ad7-14aa82b7c7d2"
* entry[=].resource = b4a8fd31-274a-4d09-8ad7-14aa82b7c7d2
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/c805677b-642e-4ae7-9aff-9e56521efde9"
* entry[=].resource = c805677b-642e-4ae7-9aff-9e56521efde9
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/ffbeb419-881e-41d5-8c2f-671da4ca9efc"
* entry[=].resource = ffbeb419-881e-41d5-8c2f-671da4ca9efc


Instance: 372b0286-ee56-4d51-9ec5-ee4339fdf4ea
InstanceOf: MedComCareCommunicationMessageHeader
Title: "ConSer_CC_06_attachment - Instance of a MessageHeader resource used in a new message."
Description: "ConSer_CC_06_attachment - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=2551000016006"
* destination[primary].receiver = Reference(b4a8fd31-274a-4d09-8ad7-14aa82b7c7d2)
* sender = Reference(c805677b-642e-4ae7-9aff-9e56521efde9)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(0eb15a16-c9c3-4fb7-86a5-58d8041cb4eb)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"

// CareCommunication new example
Instance: 0eb15a16-c9c3-4fb7-86a5-58d8041cb4eb
InstanceOf: MedComCareCommunication
Title: "ConSer_CC_06_attachment - Instance of Communication resource used in a new message."
Description: "ConSer_CC_06_attachment - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#examination-results
* topic.text = "Anmodning om opfølgning"
* subject = Reference(d216a3e7-4e24-4674-ab28-ad78cdbef8ce)
* payload.contentString = "Vi har modtaget svar på biopsi taget fra jeres patient Kaja Hansen d. 03.01.2025. Resultatet viser ingen tegn på malignitet, men der er tegn på kronisk inflammation.
Vi anbefaler, at I drøfter resultaterne med patienten og vurderer behovet for eventuel medicinsk behandling eller henvisning til specialafdeling, fx reumatologi.
Venlig hilsen Hans Hansen, Specialelæge"
* payload.extension[date].valueDateTime = 2025-01-04T14:00:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload.extension[identifier].valueIdentifier.assigner = Reference(c805677b-642e-4ae7-9aff-9e56521efde9)
* payload.extension[author].valueReference = Reference(59233635-c018-41df-8256-3f152c850d9a)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "03030303"
* payload[1].contentAttachment.contentType = $bcp13#image/gif
* payload[1].contentAttachment.title = "GIF-image-testOfTitle" 
* payload[1].extension[date].valueDateTime = 2024-09-06T17:15:00+01:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:9365919c-2542-4544-8c66-cfa19e6ca0d7"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(c805677b-642e-4ae7-9aff-9e56521efde9)
* payload[1].contentAttachment.data = "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"


Instance: d216a3e7-4e24-4674-ab28-ad78cdbef8ce
InstanceOf: MedComCorePatient
Title: "ConSer_CC_06_attachment - Kaja Test Hansen"
Description: "ConSer_CC_06_attachment - Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given = "Kaja"


//Sender and receiver is the same, as we only have 1 institution receiving and sending CC
Instance: c805677b-642e-4ae7-9aff-9e56521efde9
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_06_attachment - Example of a sender organization with a SOR and an EAN identifier."
Description: "ConSer_CC_06_attachment - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

Instance: b4a8fd31-274a-4d09-8ad7-14aa82b7c7d2
InstanceOf: MedComMessagingOrganization  
Title: "ConSer_CC_06_attachment - Example of a receiver organization whom is not able to receive an XBIN"
Description: "ConSer_CC_06_attachment - Example of an organization whom is not able to receive an XBIN"
* identifier[SOR-ID].value = "2551000016006" 
* identifier[EAN-ID].value = "5790000123766" 
* name = "Center for genoptræning Østerbro"

// Practitioners - new message
Instance: 1d12ab42-902a-4116-83e6-39cc5aff2e30
InstanceOf: MedComCorePractitioner
Title: "ConSer_CC_06_attachment - Simple practitioner with a name"
Description: "ConSer_CC_06_attachment - Simple practitioner with a name"
* name.given = "Hans"
* name.family = "Hansen"

Instance: 59233635-c018-41df-8256-3f152c850d9a
InstanceOf: MedComCorePractitionerRole
Title: "ConSer_CC_06_attachment - PractitionerRole with a role and reference to a practitioner"
Description: "ConSer_CC_06_attachment - PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(1d12ab42-902a-4116-83e6-39cc5aff2e30)
* code = $PractitionerRole#speciallaege


// CareCommunication example - new message
Instance: ffbeb419-881e-41d5-8c2f-671da4ca9efc
InstanceOf: MedComCareCommunicationProvenance
Title: "ConSer_CC_06_attachment - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "ConSer_CC_06_attachment - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(372b0286-ee56-4d51-9ec5-ee4339fdf4ea)
* occurredDateTime = 2025-01-04T14:00:00+01:00
* recorded = 2025-01-04T14:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(c805677b-642e-4ae7-9aff-9e56521efde9)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:9365919c-2542-4544-8c66-cfa19e6ca0d7"
