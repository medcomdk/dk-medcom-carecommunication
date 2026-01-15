//New message with journal note
Instance: 9da37013-3868-436d-8c44-f4b0024ef146
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message. Including journal note in the message text."
Description: "Example of a CareCommunication new message with journal note in the message text."
Usage: #example
* type = $BundleType#message
* timestamp = 2026-01-15T12:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/d58e284b-cc61-4b96-bb8f-7cda6cbd5a46"
* entry[=].resource = d58e284b-cc61-4b96-bb8f-7cda6cbd5a46
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/7f365ce5-0b0d-4b3c-be1d-a709c7b6fe2f"
* entry[=].resource = 7f365ce5-0b0d-4b3c-be1d-a709c7b6fe2f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/f03970f9-4b29-4281-8ba3-3b07533d7ff1"
* entry[=].resource = f03970f9-4b29-4281-8ba3-3b07533d7ff1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/b9dbfbc7-32f8-4118-b642-0eb0fc3b104f"
* entry[=].resource = b9dbfbc7-32f8-4118-b642-0eb0fc3b104f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a763a79a-2395-4034-8b6a-8c99e86a260b"
* entry[=].resource = a763a79a-2395-4034-8b6a-8c99e86a260b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/15ecee58-2565-4204-9752-7df560208a32"
* entry[=].resource = 15ecee58-2565-4204-9752-7df560208a32
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/1193af90-0b3e-41fc-95a0-c2272e618180"
* entry[=].resource = 1193af90-0b3e-41fc-95a0-c2272e618180
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/f699e277-b7e0-42f9-8728-17c4774425a0"
* entry[=].resource = f699e277-b7e0-42f9-8728-17c4774425a0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/0677fc79-e0d7-4837-8bff-8a40915ef891"
* entry[=].resource = 0677fc79-e0d7-4837-8bff-8a40915ef891
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/08c4874b-e741-4981-85d1-9ac223dbe1bc"
* entry[=].resource = 08c4874b-e741-4981-85d1-9ac223dbe1bc
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/236c16b8-924b-4964-a5fa-636f82e832d5"
* entry[=].resource = 236c16b8-924b-4964-a5fa-636f82e832d5
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/50fbb03f-7aad-45ce-b4b3-95b3c876901b"
* entry[=].resource = 50fbb03f-7aad-45ce-b4b3-95b3c876901b





// CareCommunication new example - with journal note
Instance: d58e284b-cc61-4b96-bb8f-7cda6cbd5a46
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message with journal note in message text."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(f699e277-b7e0-42f9-8728-17c4774425a0)
* sender = Reference(08c4874b-e741-4981-85d1-9ac223dbe1bc)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1202881000016008"
* focus = Reference(f03970f9-4b29-4281-8ba3-3b07533d7ff1)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"

// CareCommunication example - new message w. journalnote
Instance: 236c16b8-924b-4964-a5fa-636f82e832d5
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(cd2b1640-ffc3-4b59-9d85-02719edf7405)
* occurredDateTime = 2026-01-15T12:00:00+01:00
* recorded = 2026-01-15T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(08c4874b-e741-4981-85d1-9ac223dbe1bc)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:5e9fea6a-cb74-42b5-9618-da3161432777" // text

// CareCommunication example - new message w. journalnote
Instance: 50fbb03f-7aad-45ce-b4b3-95b3c876901b
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(d58e284b-cc61-4b96-bb8f-7cda6cbd5a46)
* occurredDateTime = 2026-01-15T12:00:00+01:00
* recorded = 2026-01-15T12:00:00+01:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(0677fc79-e0d7-4837-8bff-8a40915ef891)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(cd2b1640-ffc3-4b59-9d85-02719edf7405)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:d58e284b-cc61-4b96-bb8f-7cda6cbd5a46" // text forward

Instance: 7f365ce5-0b0d-4b3c-be1d-a709c7b6fe2f
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0506889996"
* name[official].use = #official
* name[official].family = "Mosebrygersen"
* name[official].given[0] = "Sille"
* name[official].given[1] = "June"
* name[official].given[2] = "Test"

// Sender instance - new message
Instance: 0677fc79-e0d7-4837-8bff-8a40915ef891
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "612681000016007" 
* identifier[EAN-ID].value = "5790002270062" 
* name = "Læge Depenau Vej-Hansen"

Instance: 08c4874b-e741-4981-85d1-9ac223dbe1bc
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "1202881000016008" 
* identifier[EAN-ID].value = "5790002516986" 
* name = "Tandplejen - Brønderslev Kommune"


// Reciever instance - new message
Instance: f699e277-b7e0-42f9-8728-17c4774425a0
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: a763a79a-2395-4034-8b6a-8c99e86a260b
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "May"
* name.family = "Moberg"

Instance: b9dbfbc7-32f8-4118-b642-0eb0fc3b104f
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(a763a79a-2395-4034-8b6a-8c99e86a260b)
* code = $PractitionerRole#speciallaegeipraksis
* organization = Reference(0677fc79-e0d7-4837-8bff-8a40915ef891)

// Practitioners - forward message
Instance: 1193af90-0b3e-41fc-95a0-c2272e618180
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Aya"
* name.family = "Bergren"

Instance: 15ecee58-2565-4204-9752-7df560208a32
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(1193af90-0b3e-41fc-95a0-c2272e618180)
* code = $PractitionerRole#plejer
* organization = Reference(0677fc79-e0d7-4837-8bff-8a40915ef891)

// CareCommunication with attachment example - in the messagetext
Instance: f03970f9-4b29-4281-8ba3-3b07533d7ff1
InstanceOf: MedComCareCommunication
Title: "Instance of Communication resource used in a new message. The message includes a journal note and author information in the messagetext."
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message with attachment"
Usage: #example
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:f9cf2547-7a1c-4639-9fd3-9f717556ad36"
* category = $CategoryCodes#nursing
* subject = Reference(7f365ce5-0b0d-4b3c-be1d-a709c7b6fe2f)
* payload[0].extension[date].valueDateTime = 2026-01-15T12:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:5e9fea6a-cb74-42b5-9618-da3161432777"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(0677fc79-e0d7-4837-8bff-8a40915ef891)
* payload[0].extension[author].valueReference = Reference(b9dbfbc7-32f8-4118-b642-0eb0fc3b104f)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"
* payload[0].contentString = "Pt. har behov for sårbehandling. Jeg overdrager ansvaret for denne behandling til den kommunale pleje. Videresend venligst beskeden, hvis der er behov for dette"
* payload[1].extension[date].valueDateTime = 2026-01-15T12:00:00+01:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:d58e284b-cc61-4b96-bb8f-7cda6cbd5a46"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(08c4874b-e741-4981-85d1-9ac223dbe1bc)
* payload[1].extension[author].valueReference = Reference(b9dbfbc7-32f8-4118-b642-0eb0fc3b104f)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "38683868"
* payload[1].contentString = "Hej. Jeg videresender hermed lægens ansvarsoverdragelse af sårbehandling på Sille, da tandplejen ikke varetager dette."

