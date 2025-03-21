//Instance: R-Tek-A-new-priority-ac8dddf2-c882-4b00-8870-5035279e7d01
Instance: ac8dddf2-c882-4b00-8870-5035279e7d01
InstanceOf: MedComCareCommunicationMessage
Title: "Receive_Tek-A_new_priority"
Description: "Receive_Tek-A_new_priority"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-08-17T14:00:00+02:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/4e60a233-2980-4d0f-9d7b-e38853be77ab"
* entry[=].resource = 4e60a233-2980-4d0f-9d7b-e38853be77ab
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/ae4abfb5-b0f6-443c-a420-0c0649cbe0c0"
* entry[=].resource = ae4abfb5-b0f6-443c-a420-0c0649cbe0c0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/2595f801-1211-4578-86f5-c7ad3a860e27"
* entry[=].resource = 2595f801-1211-4578-86f5-c7ad3a860e27
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/bbe737f3-f1a9-435d-ab7f-d96798952a75"
* entry[=].resource = bbe737f3-f1a9-435d-ab7f-d96798952a75
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/7d252548-bf05-4151-bf1f-86ad706f1c1b"
* entry[=].resource = 7d252548-bf05-4151-bf1f-86ad706f1c1b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/9a74ae38-1f8f-43de-ac8d-01647bb4c5b4"
* entry[=].resource = 9a74ae38-1f8f-43de-ac8d-01647bb4c5b4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/99c5abc9-6956-4fb2-b888-90138ff951e0"
* entry[=].resource = 99c5abc9-6956-4fb2-b888-90138ff951e0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/efb3d609-f267-44dd-b488-2b2128aa2e2c"
* entry[=].resource = efb3d609-f267-44dd-b488-2b2128aa2e2c



Instance: 4e60a233-2980-4d0f-9d7b-e38853be77ab
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Receive_Tek-A_new_priority - MessageHeader"
Description: "Receive_Tek-A_new_priority - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=330461000016004"
* destination[primary].receiver = Reference(99c5abc9-6956-4fb2-b888-90138ff951e0)
* sender = Reference(9a74ae38-1f8f-43de-ac8d-01647bb4c5b4)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=441211000016000"
* focus = Reference(2595f801-1211-4578-86f5-c7ad3a860e27)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: ae4abfb5-b0f6-443c-a420-0c0649cbe0c0
InstanceOf: MedComCorePatient
Title: "Receive_Tek-A_new_priority - Patient"
Description: "Receive_Tek-A_new_priority - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 9a74ae38-1f8f-43de-ac8d-01647bb4c5b4
InstanceOf: MedComMessagingOrganization // 
Title: "Receive_Tek-A_new_priority - Sender"
Description: "Receive_Tek-A_new_priority - Sender"
* identifier[SOR-ID].value = "441211000016000" 
* identifier[EAN-ID].value = "5790001987244" 
* name = "Klinik for Ældresygdomme, AUH, Skejby"

// Reciever instance - new message for attachement
Instance: 99c5abc9-6956-4fb2-b888-90138ff951e0
InstanceOf: MedComMessagingOrganization // 
Title: "Receive_Tek-A_new_priority - Receiver"
Description: "Receive_Tek-A_new_priority - Receiver"
* identifier[SOR-ID].value = "330461000016004" 
* identifier[EAN-ID].value = "5790001353308" 
* name = "Sundhedsplejen, Aabenraa kommune"


// Practitioners - new message with attachment
Instance: 7d252548-bf05-4151-bf1f-86ad706f1c1b
InstanceOf: MedComCorePractitioner
Title: "Receive_Tek-A_new_priority - practitioner"
Description: "Receive_Tek-A_new_priority - practitioner"
* name.given = "Michael"
* name.family = "Burns"

Instance: bbe737f3-f1a9-435d-ab7f-d96798952a75
InstanceOf: MedComCorePractitionerRole
Title: "Receive_Tek-A_new_priority - practitionerRole"
Description: "Receive_Tek-A_new_priority - practitionerRole"
* practitioner = Reference(7d252548-bf05-4151-bf1f-86ad706f1c1b)
* code = $PractitionerRole#sygeplejerske

// CareCommunication example - new message
Instance: efb3d609-f267-44dd-b488-2b2128aa2e2c
InstanceOf: MedComCareCommunicationProvenance
Title: "Receive_Tek-A_new_priority - Provenance"
Description: "Receive_Tek-A_new_priority - Provenance"
Usage: #example
* target = Reference(4e60a233-2980-4d0f-9d7b-e38853be77ab)
* occurredDateTime = 2024-08-17T14:00:00+02:00
* recorded = 2024-08-17T14:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(9a74ae38-1f8f-43de-ac8d-01647bb4c5b4)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:21ee7617-5e47-406e-83bd-347ba6a7a872"

Instance: 2595f801-1211-4578-86f5-c7ad3a860e27
InstanceOf: MedComCareCommunication
Title: "Receive_Tek-A_new_priority - Communication"
Description: "Receive_Tek-A_new_priority - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#regarding-referral
* priority = $PriorityCode#asap
* topic.text = "Kritisk tilstand"
* identifier.value = "urn:uuid:161d8b55-bf2e-416a-ad92-2e022bbcd486"
* subject = Reference(ae4abfb5-b0f6-443c-a420-0c0649cbe0c0)
//* payload[0].contentString = "Til rette vedkommende. \n Vi vil med denne korrespondance gerne \"prøve\" på 'nogle' særlige <tegn>; til test & certificering @ ^ * \n Hilsen Michael Burns \n Sygeplejerske"
* payload[0].contentString = "Til rette vedkommende. <br/> Vi vil med denne korrespondance gerne &quot;prøve&quot; på &apos; nogle &apos; særlige &lt;tegn&gt; ; til test &amp; certificering @ ^ * <br/> Hilsen Michael Burns <br/> Sygeplejerske <br/> +45 38683868 <br/> 2024-08-17 14:00"
* payload[0].extension[date].valueDateTime = 2024-08-17T14:00:00+02:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:21ee7617-5e47-406e-83bd-347ba6a7a872"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(9a74ae38-1f8f-43de-ac8d-01647bb4c5b4)
* payload[0].extension[author].valueReference = Reference(bbe737f3-f1a9-435d-ab7f-d96798952a75)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "+4538683868"
