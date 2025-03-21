Instance: R-Tek-A2-new-linebreak-a3e54e97-c625-4717-a806-1d801ce08449
InstanceOf: MedComCareCommunicationMessage
Title: "receive-Tek-A2-new-linebreak - New CareCommunication message."
Description: "receive-Tek-A2-new-linebreak - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2025-01-03T14:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/2d837932-6d01-4ee5-9782-6ea1450188eb"
* entry[=].resource = 2d837932-6d01-4ee5-9782-6ea1450188eb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/0c970bb6-033d-4c89-a093-3930da7e914b"
* entry[=].resource = 0c970bb6-033d-4c89-a093-3930da7e914b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/a7297138-1542-4402-a460-7247cbfd5c7f"
* entry[=].resource = a7297138-1542-4402-a460-7247cbfd5c7f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/d677ebc2-b481-4269-bcc8-53dac702c37e"
* entry[=].resource = d677ebc2-b481-4269-bcc8-53dac702c37e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/e02220de-3980-47ee-af1b-dc6931cef94b"
* entry[=].resource = e02220de-3980-47ee-af1b-dc6931cef94b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/8878790d-606e-4a2a-97e0-d76ea12eaa40"
* entry[=].resource = 8878790d-606e-4a2a-97e0-d76ea12eaa40
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/00bc5aa6-b0e3-40c5-ab92-8144640e3482"
* entry[=].resource = 00bc5aa6-b0e3-40c5-ab92-8144640e3482
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/167bbdba-7f17-4814-84b3-dd00179f37ed"
* entry[=].resource = 167bbdba-7f17-4814-84b3-dd00179f37ed


Instance: 2d837932-6d01-4ee5-9782-6ea1450188eb
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive-Tek-A2-new-linebreak - Instance of a MessageHeader resource used in a new message."
Description: "receive-Tek-A2-new-linebreak - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=325251000016005"
* destination[primary].receiver = Reference(8878790d-606e-4a2a-97e0-d76ea12eaa40)
* sender = Reference(00bc5aa6-b0e3-40c5-ab92-8144640e3482)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=325371000016006"
* focus = Reference(a7297138-1542-4402-a460-7247cbfd5c7f)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"

// CareCommunication new example
Instance: a7297138-1542-4402-a460-7247cbfd5c7f
InstanceOf: MedComCareCommunication
Title: "receive-Tek-A2-new-linebreak - Instance of Communication resource used in a new message."
Description: "receive-Tek-A2-new-linebreak - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"
* category = $CategoryCodes#discharge
* topic.text = "Tilbagemelding efter indlæggelse"
* subject = Reference(0c970bb6-033d-4c89-a093-3930da7e914b)
* payload.contentString = "Vi skriver for at informere om, at jeres patient Kaja Hansen blev udskrevet.\nHun er udskrevet fra vores afdeling d. 01.01.2025 efter behandling for lungebetændelse. Hun blev behandlet med intravenøs antibiotika under indlæggelsen og er nu overgået til peroral behandling med Amoxicillin 500 mg x 3 dagligt i 7 dage. Vi anbefaler en kontrol af infektionstal og lungefunktion om < 2 uger, samt opfølgning på eventuelle tilbagevendende symptomer.\n\nDette er linje 1\nDette er linje 2\n\nDette er linje 4, med en 'usynlig' linje ovenfor\nMed venlig hilsen, Jørgen Berggren\nOverlæge"
* payload.extension[date].valueDateTime = 2025-01-03T13:00:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"
* payload.extension[identifier].valueIdentifier.assigner = Reference(00bc5aa6-b0e3-40c5-ab92-8144640e3482)
* payload.extension[author].valueReference = Reference(d677ebc2-b481-4269-bcc8-53dac702c37e)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "02020202"

Instance: 0c970bb6-033d-4c89-a093-3930da7e914b
InstanceOf: MedComCorePatient
Title: "receive-Tek-A2-new-linebreak - Kaja Test Hansen"
Description: "receive-Tek-A2-new-linebreak - Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2103009996"
* name[official].use = #official
* name[official].family = "Hansen"
* name[official].given = "Kaja"

Instance: 00bc5aa6-b0e3-40c5-ab92-8144640e3482
InstanceOf: MedComMessagingOrganization  
Title: "receive-Tek-A2-new-linebreak - Example of a sender organization with a SOR and an EAN identifier."
Description: "receive-Tek-A2-new-linebreak - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325371000016006" 
* identifier[EAN-ID].value = "5790000120314" 
* name = "MedCom FDIS91"

Instance: 8878790d-606e-4a2a-97e0-d76ea12eaa40
InstanceOf: MedComMessagingOrganization  
Title: "receive-Tek-A2-new-linebreak - Example of a receiver organization with a SOR and an EAN identifier."
Description: "receive-Tek-A2-new-linebreak - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "325251000016005" 
* identifier[EAN-ID].value = "5790000121526" 
* name = "MedCom XDIS91"

// Practitioners - new message
Instance: e02220de-3980-47ee-af1b-dc6931cef94b
InstanceOf: MedComCorePractitioner
Title: "receive-Tek-A2-new-linebreak - Simple practitioner with a name"
Description: "receive-Tek-A2-new-linebreak - Simple practitioner with a name"
* name.given = "Jørgen"
* name.family = "Berggren"

Instance: d677ebc2-b481-4269-bcc8-53dac702c37e
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(e02220de-3980-47ee-af1b-dc6931cef94b)
* code = $PractitionerRole#overlaege


// CareCommunication example - new message
Instance: 167bbdba-7f17-4814-84b3-dd00179f37ed
InstanceOf: MedComCareCommunicationProvenance
Title: "receive-Tek-A2-new-linebreak - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "receive-Tek-A2-new-linebreak - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(2d837932-6d01-4ee5-9782-6ea1450188eb)
* occurredDateTime = 2025-01-03T13:00:00+01:00
* recorded = 2025-01-03T13:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(00bc5aa6-b0e3-40c5-ab92-8144640e3482)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"