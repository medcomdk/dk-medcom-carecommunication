Instance: R-Tek-B-82875f08-4b9e-4a23-b81a-e23ec1251334
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek-D_new_timezone"
Description: "receive_Tek-D_new_timezone"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-02T08:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f"
* entry[=].resource = ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/fdsgjhfrgeu567485-.fdsf"
* entry[=].resource = fdsgjhfrgeu567485-.fdsf
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/45645.hfjksr7.klklj"
* entry[=].resource = 45645.hfjksr7.klklj
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/j.k.k.67843274je"
* entry[=].resource = j.k.k.67843274je
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/hfkjsu574783yhfjdx67-hjk"
* entry[=].resource = hfkjsu574783yhfjdx67-hjk
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/dfhjkshertu6787bjbsjnmbdf-.hfjdks7."
* entry[=].resource = dfhjkshertu6787bjbsjnmbdf-.hfjdks7.
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/ghjghgh"
* entry[=].resource = ghjghgh
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/hfdjks887.8.89frkdshjf778"
* entry[=].resource = hfdjks887.8.89frkdshjf778

Instance: ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek-D_new_timezone - MessageHeader"
Description: "receive_Tek-D_new_timezone - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* destination[primary].receiver = Reference(dfhjkshertu6787bjbsjnmbdf-.hfjdks7.)
* sender = Reference(ghjghgh)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* focus = Reference(45645.hfjksr7.klklj)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 45645.hfjksr7.klklj
InstanceOf: MedComCareCommunication
Title: "receive_Tek-D_new_timezone - Communication"
Description: "receive_Tek-D_new_timezone - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#assistive-devices
* subject = Reference(fdsgjhfrgeu567485-.fdsf)
* identifier.value = "urn:uuid:3fab3414-6c8b-45bf-af93-27dd333554c6"
* payload[0].contentString = "Til rette vedkommende. Har I mon vist det rigtige tidspunkt? Hilsen Michael Burns \n Sygeplejerske"
* payload[0].extension[date].valueDateTime = 2024-11-02T08:00:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:729e63f5-a691-441e-84fe-953594b801b2"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(dfhjkshertu6787bjbsjnmbdf-.hfjdks7.)
* payload[0].extension[author].valueReference = Reference(j.k.k.67843274je)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4512345789"


Instance: fdsgjhfrgeu567485-.fdsf
InstanceOf: MedComCorePatient
Title: "receive_Tek-D_new_timezone - Patient"
Description: "receive_Tek-D_new_timezone - Patient"
* identifier.system = #urn:oid:1.2.208.176.1.6.1.3.177
* identifier.value = "1206550VK9"
* name.use = #official
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension.valueCode = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown
* name.given = "Peter"
* gender = #male

// Sender instance - new message for attachement
Instance: dfhjkshertu6787bjbsjnmbdf-.hfjdks7.
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-D_new_timezone - Sender"
Description: "receive_Tek-D_new_timezone - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: ghjghgh
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek-D_new_timezone - Receiver"
Description: "receive_Tek-D_new_timezone - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: hfkjsu574783yhfjdx67-hjk
InstanceOf: MedComCorePractitioner
Title: "receive_Tek-D_new_timezone - practitioner"
Description: "receive_Tek-D_new_timezone - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: j.k.k.67843274je
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek-D_new_timezone - practitionerRole"
Description: "receive_Tek-D_new_timezone - practitionerRole"
* practitioner = Reference(hfkjsu574783yhfjdx67-hjk)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: hfdjks887.8.89frkdshjf778
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek-D_new_timezone - Provenance"
Description: "receive_Tek-D_new_timezone - Provenance"
Usage: #example
* target = Reference(ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f)
* occurredDateTime = 2024-11-02T08:00:00+01:00
* recorded = 2024-11-02T08:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(dfhjkshertu6787bjbsjnmbdf-.hfjdks7.)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:729e63f5-a691-441e-84fe-953594b801b2"