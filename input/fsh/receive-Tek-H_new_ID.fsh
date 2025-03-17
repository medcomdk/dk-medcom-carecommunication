Instance: 33ee6434-a9cc-4679-8bb8-4f940bd63e30
InstanceOf: MedComCareCommunicationMessage
Title: "receive_Tek_new_ID"
Description: "receive_Tek_new_ID"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-07T17:20:00+01:00
* entry[+].fullUrl = "https://thisisanabsoluteref/MessageHeader/ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f"
* entry[=].resource = ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f
* entry[+].fullUrl = "https://thisisanabsoluteref/Patient/fdsgjhfrgeu567485-.fdsf"
* entry[=].resource = fdsgjhfrgeu567485-.fdsf
* entry[+].fullUrl = "https://thisisanabsoluteref/Communication/45645.hfjksr7.klklj"
* entry[=].resource = 45645.hfjksr7.klklj
* entry[+].fullUrl = "https://thisisanabsoluteref/PractitionerRole/j.k.k.67843274je"
* entry[=].resource = j.k.k.67843274je
* entry[+].fullUrl = "https://thisisanabsoluteref/Practitioner/hfkjsu574783yhfjdx67-hjk"
* entry[=].resource = hfkjsu574783yhfjdx67-hjk
* entry[+].fullUrl = "https://thisisanabsoluteref/Organization/dfhjkshertu6787bjbsjnmbdf-.hfjdks7."
* entry[=].resource = dfhjkshertu6787bjbsjnmbdf-.hfjdks7.
* entry[+].fullUrl = "https://thisisanabsoluteref/Organization/ghjghgh"
* entry[=].resource = ghjghgh
* entry[+].fullUrl = "https://thisisanabsoluteref/Provenance/hfdjks887.8.89frkdshjf778"
* entry[=].resource = hfdjks887.8.89frkdshjf778

Instance: ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f
InstanceOf: MedComCareCommunicationMessageHeader
Title: "receive_Tek_new_ID - MessageHeader"
Description: "receive_Tek_new_ID - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=502191000016006"
* destination[primary].receiver = Reference(dfhjkshertu6787bjbsjnmbdf-.hfjdks7.)
* sender = Reference(ghjghgh)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1385391000016002"
* focus = Reference(45645.hfjksr7.klklj)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: 45645.hfjksr7.klklj
InstanceOf: MedComCareCommunication
Title: "receive_Tek_new_ID - Communication"
Description: "receive_Tek_new_ID - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#psychiatry-social-disability
* subject = Reference(fdsgjhfrgeu567485-.fdsf)
* identifier.value = "urn:uuid:a3b9e5ce-9c0c-4d00-aea1-65d6bf400c33"
* payload.contentString = "Til rette vedkommende. Mon disse ID'er skaber problemer? Hilsen Anita Thenstrup <br/> Psykolog <br/> +4535363738 <br/> 2024-11-07 17:20"
* payload.extension[date].valueDateTime = 2024-11-07T17:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:30bbad4a-8ec6-4979-b2a1-92b8541624e7"
* payload.extension[identifier].valueIdentifier.assigner = Reference(dfhjkshertu6787bjbsjnmbdf-.hfjdks7.)
* payload.extension[author].valueReference = Reference(j.k.k.67843274je)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "+4535363738"


Instance: fdsgjhfrgeu567485-.fdsf
InstanceOf: MedComCorePatient
Title: "receive_Tek_new_ID - Patient"
Description: "receive_Tek_new_ID - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message
Instance: dfhjkshertu6787bjbsjnmbdf-.hfjdks7.
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek_new_ID - Sender"
Description: "receive_Tek_new_ID - Sender"
* identifier[SOR-ID].value = "502191000016006" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Anita Thenstrup"

// Reciever instance - new message 
Instance: ghjghgh
InstanceOf: MedComMessagingOrganization // 
Title: "receive_Tek_new_ID - Receiver"
Description: "receive_Tek_new_ID - Receiver"
* identifier[SOR-ID].value = "1385391000016002" 
* identifier[EAN-ID].value = "5790002632389" 
* name = "Padagogisk Psykologisk Rådgivning"


// Practitioners - new message 
Instance: hfkjsu574783yhfjdx67-hjk
InstanceOf: MedComCorePractitioner
Title: "receive_Tek_new_ID - practitioner"
Description: "receive_Tek_new_ID - practitioner"
* name.given[0] = "Anita"
* name.family = "Thenstrup"

Instance: j.k.k.67843274je
InstanceOf: MedComCorePractitionerRole
Title: "receive_Tek_new_ID - practitionerRole"
Description: "receive_Tek_new_ID - practitionerRole"
* practitioner = Reference(hfkjsu574783yhfjdx67-hjk)
* code = $PractitionerRole#pyskolog

// CareCommunication example - new message
Instance: hfdjks887.8.89frkdshjf778
InstanceOf: MedComCareCommunicationProvenance
Title: "receive_Tek_new_ID - Provenance"
Description: "receive_Tek_new_ID - Provenance"
Usage: #example
* target = Reference(ejklfdsio8klakfd.hjfkdshfjk-hfjkdshfj89432n7f)
* occurredDateTime = 2024-11-07T17:20:00+01:00
* recorded = 2024-11-07T17:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(dfhjkshertu6787bjbsjnmbdf-.hfjdks7.)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:30bbad4a-8ec6-4979-b2a1-92b8541624e7"