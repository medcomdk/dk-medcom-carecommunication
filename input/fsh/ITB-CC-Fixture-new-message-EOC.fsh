//New message with journal note
Instance: 5d63c247-f113-4535-a3b8-5343b1f15d84
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message. Including journal note in the message text."
Description: "Example of a CareCommunication new message with journal note in the message text."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/cd2b1640-ffc3-4b59-9d85-02719edf7405"
* entry[=].resource = cd2b1640-ffc3-4b59-9d85-02719edf7405
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/ae019276-a3cc-4468-a6f4-23988b7bc5b4"
* entry[=].resource = ae019276-a3cc-4468-a6f4-23988b7bc5b4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/a7cbeeb7-31dc-41e1-a636-bf0971c3d678"
* entry[=].resource = a7cbeeb7-31dc-41e1-a636-bf0971c3d678
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Encounter/17087120-24db-44ac-a7ee-7fc41b9963ec"
* entry[=].resource = 17087120-24db-44ac-a7ee-7fc41b9963ec
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/48d1a6d4-0b28-40e6-9329-4f254723c54c"
* entry[=].resource = 48d1a6d4-0b28-40e6-9329-4f254723c54c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/6be67ca6-a038-4ba0-86b8-8bdc26c8aa80"
* entry[=].resource = 6be67ca6-a038-4ba0-86b8-8bdc26c8aa80
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/3aceccb8-899a-4dcf-84c3-a8a5296c4d92"
* entry[=].resource = 3aceccb8-899a-4dcf-84c3-a8a5296c4d92
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/17d66bc6-9eff-445c-9c77-a28a70cbeb1e"
* entry[=].resource = 17d66bc6-9eff-445c-9c77-a28a70cbeb1e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/d906b700-fe5c-49cb-a7ce-775c99b53e4a"
* entry[=].resource = d906b700-fe5c-49cb-a7ce-775c99b53e4a




// CareCommunication new example - with journal note
Instance: cd2b1640-ffc3-4b59-9d85-02719edf7405
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message with journal note in message text."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(3aceccb8-899a-4dcf-84c3-a8a5296c4d92)
* sender = Reference(17d66bc6-9eff-445c-9c77-a28a70cbeb1e)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=612681000016007"
* focus = Reference(a7cbeeb7-31dc-41e1-a636-bf0971c3d678)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"

// CareCommunication example - new message w. journalnote
Instance: d906b700-fe5c-49cb-a7ce-775c99b53e4a
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(cd2b1640-ffc3-4b59-9d85-02719edf7405)
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(17d66bc6-9eff-445c-9c77-a28a70cbeb1e)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:97d98d60-43c2-486e-a62d-a329e932e62a" // text


// MedComCoreEncounter instance
Instance: 17087120-24db-44ac-a7ee-7fc41b9963ec
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#in-progress 
* class = $ActCodes#IMP 
* subject = Reference(ae019276-a3cc-4468-a6f4-23988b7bc5b4)
* episodeOfCare.identifier.value = "5fd7f5e1-9896-5d0c-8b60-3bc4d8074142" 
* episodeOfCare.identifier.system = "https://sor2.sum.dsdn.dk/#id=612681000016007" // SOR id for afsender/serviceProvider

Instance: ae019276-a3cc-4468-a6f4-23988b7bc5b4
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
Instance: 17d66bc6-9eff-445c-9c77-a28a70cbeb1e
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "612681000016007" 
* identifier[EAN-ID].value = "5790002270062" 
* name = "Læge Depenau Vej-Hansen"

// Reciever instance - new message
Instance: 3aceccb8-899a-4dcf-84c3-a8a5296c4d92
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 6be67ca6-a038-4ba0-86b8-8bdc26c8aa80
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "May"
* name.family = "Moberg"

Instance: 48d1a6d4-0b28-40e6-9329-4f254723c54c
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(6be67ca6-a038-4ba0-86b8-8bdc26c8aa80)
* code = $PractitionerRole#speciallaegeipraksis
* organization = Reference(17d66bc6-9eff-445c-9c77-a28a70cbeb1e)


// CareCommunication with attachment example - in the messagetext
Instance: a7cbeeb7-31dc-41e1-a636-bf0971c3d678
InstanceOf: MedComCareCommunication
Title: "Instance of Communication resource used in a new message. The message includes a journal note and author information in the messagetext."
Description: "Content of care communication message. Valid only if used in a bundle (message) - new message with attachment"
Usage: #example
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:f9cf2547-7a1c-4639-9fd3-9f717556ad36"
* category = $CategoryCodes#medicine
* encounter = Reference(17087120-24db-44ac-a7ee-7fc41b9963ec)
* subject = Reference(ae019276-a3cc-4468-a6f4-23988b7bc5b4)
* payload[0].extension[date].valueDateTime = 2024-05-01T12:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:97d98d60-43c2-486e-a62d-a329e932e62a"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(17d66bc6-9eff-445c-9c77-a28a70cbeb1e)
* payload[0].extension[author].valueReference = Reference(48d1a6d4-0b28-40e6-9329-4f254723c54c)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "38683868"
* payload[0].contentString = "Hej. Jeg vil gerne sikre mig at du returnerer en korrespondance på rette forløbs-id. Kan du hjælpe med det?"

