Instance: 1d6a942e-7e9e-42e4-8dbb-09a608b56c8c
InstanceOf: MedComCareCommunicationMessage
Title: "Flow3CareCommunication_Ex_to_OIOXML - New CareCommunication message."
Description: "Flow3CareCommunication_Ex_to_OIOXML - Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2023-11-22T12:33:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/080d88be-177c-42a4-9124-de4e73ad485a"
* entry[=].resource = 080d88be-177c-42a4-9124-de4e73ad485a
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/722453e1-49ad-4fc9-a337-b4c478539467"
* entry[=].resource = 722453e1-49ad-4fc9-a337-b4c478539467
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/ca55f5ec-21b1-4874-b2ef-0283097f35c4"
* entry[=].resource = ca55f5ec-21b1-4874-b2ef-0283097f35c4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/9437cbf4-809f-4f65-a0fb-11f19268fc21"
* entry[=].resource = 9437cbf4-809f-4f65-a0fb-11f19268fc21
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/20ed8a02-1554-41a8-9869-e6dda97bc6f1"
* entry[=].resource = 20ed8a02-1554-41a8-9869-e6dda97bc6f1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/4eb364ac-95d5-4b59-a05b-c4d5ab8f695f"
* entry[=].resource = 4eb364ac-95d5-4b59-a05b-c4d5ab8f695f
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/fffe78de-0d4c-4073-9d2d-653f9a742142"
* entry[=].resource = fffe78de-0d4c-4073-9d2d-653f9a742142
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/3cb11b6d-0d4c-434b-b82e-cf66839c7338"
* entry[=].resource = 3cb11b6d-0d4c-434b-b82e-cf66839c7338


Instance: 080d88be-177c-42a4-9124-de4e73ad485a
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Flow3CareCommunication_Ex_to_OIOXML - Instance of a MessageHeader resource used in a new message."
Description: "Flow3CareCommunication_Ex_to_OIOXML - Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use].valueCoding = $Use#primary
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=328051000016008"
* destination[primary].receiver = Reference(4eb364ac-95d5-4b59-a05b-c4d5ab8f695f)
* sender = Reference(fffe78de-0d4c-4073-9d2d-653f9a742142)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=359011000016003"
* focus = Reference(ca55f5ec-21b1-4874-b2ef-0283097f35c4)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition|5.0"

// CareCommunication new example
Instance: ca55f5ec-21b1-4874-b2ef-0283097f35c4
InstanceOf: MedComCareCommunication
Title: "Flow3CareCommunication_Ex_to_OIOXML - Instance of Communication resource used in a new message."
Description: "Flow3CareCommunication_Ex_to_OIOXML - Content of care communication message. Valid only if used in a bundle (message) - new message"
* status = $EventStatus#unknown
* identifier.value = "urn:uuid:da1edb7c-6e7c-4af8-bdd1-94f4aa99908a"
* category = $CategoryCodes#regarding-referral
* topic.text = "Undersøgelser forude for visitation"
* subject = Reference(722453e1-49ad-4fc9-a337-b4c478539467)
* payload.contentString = "Afdeling A har modtaget en henvisning på ovenstående patient.<br/>Røntgen af hofte i to planer.<br/>Blodtryksresultat<br/>Sænkningsresultat<br/><br/>Resultaterne bedes fremsendt som et \"korrespondancebrev\".<br/><br/>Venlig hilsen<br/>Michael<br/>"
* payload.extension[date].valueDateTime = 2023-11-22T12:32:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:591d6e21-6237-41af-a443-7f40e15ab6d6"
* payload.extension[identifier].valueIdentifier.assigner = Reference(fffe78de-0d4c-4073-9d2d-653f9a742142)
* payload.extension[author].valueReference = Reference(9437cbf4-809f-4f65-a0fb-11f19268fc21)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "66131372"
* payload[1].contentAttachment.contentType = $bcp13#application/pdf
* payload[1].contentAttachment.title = "billede" 
* payload[1].extension[date].valueDateTime = 2023-11-22T12:32:00+01:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:f954e070-7934-4591-8004-1fe23060f2bb"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(fffe78de-0d4c-4073-9d2d-653f9a742142)
* payload[1].contentAttachment.data = "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M7OAMbnpZ72BM58YoVk8Aqn+Bkb4wq4uTPYb+LZ80Uy7JW7bCwuZb3VI6eYtsT4W4ejLttvk2HBsfyyShW+DYrTdJvpsyFGLc3ebaHbxrUvo3h0g5c3Dnu8Fx6JUDb5ieW1On8A5vUuWE6O/gpX12ZG79yvYKwNn7Fnkr2C9LKY+9Lmw1OC4yUFEy1NO6m3TxXoF//Y/QgW4pQplbmRzdHJlYW0KZW5kb2JqCjUgMCBvYmoKMjc3NgplbmRvYmoKMiAwIG9iago8PCAvVHlwZSAvUGFnZSAvUGFyZW50IDMgMCBSIC9SZXNvdXJjZXMgNiAwIFIgL0NvbnRlbnRzIDQgMCBSIC9NZWRpYUJveCBbMCAwIDU5NSA4NDJdCj4+CmVuZG9iago2IDAgb2JqCjw8IC9Qcm9jU2V0IFsgL1BERiBdIC9FeHRHU3RhdGUgPDwgL0dzMSA3IDAgUiA+PiA+PgplbmRvYmoKNyAwIG9iago8PCAvVHlwZSAvRXh0R1N0YXRlIC9PUE0gMSA+PgplbmRvYmoKMyAwIG9iago8PCAvVHlwZSAvUGFnZXMgL01lZGlhQm94IFswIDAgNTk1IDg0Ml0gL0NvdW50IDEgL0tpZHMgWyAyIDAgUiBdID4+CmVuZG9iago4IDAgb2JqCjw8IC9UeXBlIC9DYXRhbG9nIC9QYWdlcyAzIDAgUiA+PgplbmRvYmoKOSAwIG9iagoo/v9cMDAwTVwwMDBlXDAwMGRcMDAwY1wwMDBvXDAwMG1cMDAwX1wwMDBsXDAwMG9cMDAwZ1wwMDBvXDAwMF9cMDAwMlwwMDAwXDAwMDFcMDAwNVwwMDBfXDAwMGJcMDAwbFwwMDDlXDAwMCBcMDAwc1wwMDBrXDAwMHJcMDAwaVwwMDBmXDAwMHRcMDAwIFwwMDBtXDAwMGVcMDAwZFwwMDAgXDAwMGhcMDAwdlwwMDBpXDAwMGRcMDAwIFwwMDBiXDAwMGFcMDAwZ1wwMDBnXDAwMHJcMDAwdVwwMDBuXDAwMGRcMDAwX1wwMDBjXDAwMG1cMDAweVwwMDBrXDAwMC5cMDAwcFwwMDBkXDAwMGYpCmVuZG9iagoxMCAwIG9iagooTWFjIE9TIFggMTAuMTIuMyBRdWFydHogUERGQ29udGV4dCkKZW5kb2JqCjExIDAgb2JqCihCaWxsZWRmcmVtdmlzZXIpCmVuZG9iagoxMiAwIG9iagooRDoyMDE3MDMxNDEyMTYyNlowMCcwMCcpCmVuZG9iagoxMyAwIG9iagooKQplbmRvYmoKMTQgMCBvYmoKWyBdCmVuZG9iagoxIDAgb2JqCjw8IC9UaXRsZSA5IDAgUiAvUHJvZHVjZXIgMTAgMCBSIC9DcmVhdG9yIDExIDAgUiAvQ3JlYXRpb25EYXRlIDEyIDAgUiAvTW9kRGF0ZQoxMiAwIFIgL0tleXdvcmRzIDEzIDAgUiAvQUFQTDpLZXl3b3JkcyAxNCAwIFIgPj4KZW5kb2JqCnhyZWYKMCAxNQowMDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAwMDM2OTggMDAwMDAgbiAKMDAwMDAwMjg5MiAwMDAwMCBuIAowMDAwMDAzMTA4IDAwMDAwIG4gCjAwMDAwMDAwMjIgMDAwMDAgbiAKMDAwMDAwMjg3MiAwMDAwMCBuIAowMDAwMDAyOTk2IDAwMDAwIG4gCjAwMDAwMDMwNjMgMDAwMDAgbiAKMDAwMDAwMzE5MSAwMDAwMCBuIAowMDAwMDAzMjQwIDAwMDAwIG4gCjAwMDAwMDM1MzAgMDAwMDAgbiAKMDAwMDAwMzU4MyAwMDAwMCBuIAowMDAwMDAzNjE3IDAwMDAwIG4gCjAwMDAwMDM2NTkgMDAwMDAgbiAKMDAwMDAwMzY3OCAwMDAwMCBuIAp0cmFpbGVyCjw8IC9TaXplIDE1IC9Sb290IDggMCBSIC9JbmZvIDEgMCBSIC9JRCBbIDw5MDU2NWUwNTMyOTQ3YjE2N2MwODEzOGI2ZDZhNzNlYT4KPDkwNTY1ZTA1MzI5NDdiMTY3YzA4MTM4YjZkNmE3M2VhPiBdID4+CnN0YXJ0eHJlZgozODQxCiUlRU9GCg=="

Instance: 722453e1-49ad-4fc9-a337-b4c478539467
InstanceOf: MedComCorePatient
Title: "Flow3CareCommunication_Ex_to_OIOXML - Nancy Ann Berggren"
Description: "Flow3CareCommunication_Ex_to_OIOXML - Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2512489996"
* name[official].use = #official
* name[official].family = "Ann Berggren"
* name[official].given = "Nancy"

Instance: fffe78de-0d4c-4073-9d2d-653f9a742142
InstanceOf: MedComMessagingOrganization  
Title: "Flow3CareCommunication_Ex_to_OIOXML - Example of a sender organization with a SOR and an EAN identifier."
Description: "Flow3CareCommunication_Ex_to_OIOXML - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "359011000016000" 
* identifier[EAN-ID].value = "5790001382445" 
* name = "MedCom testcenter"
* telecom.system = #phone
* telecom.value = "66131372"
* telecom.use = #work

Instance: 4eb364ac-95d5-4b59-a05b-c4d5ab8f695f
InstanceOf: MedComMessagingOrganization  
Title: "Flow3CareCommunication_Ex_to_OIOXML - Example of a receiver organization with a SOR and an EAN identifier."
Description: "Flow3CareCommunication_Ex_to_OIOXML - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "328051000016008" 
* identifier[EAN-ID].value = "5790000121441" 


// Practitioners - new message
Instance: 20ed8a02-1554-41a8-9869-e6dda97bc6f1
InstanceOf: MedComCorePractitioner
Title: "Flow3CareCommunication_Ex_to_OIOXML - Simple practitioner with a name"
Description: "Flow3CareCommunication_Ex_to_OIOXML - Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 9437cbf4-809f-4f65-a0fb-11f19268fc21
InstanceOf: MedComCorePractitionerRole
Title: "Flow3CareCommunication_Ex_to_OIOXML - PractitionerRole with a role and reference to a practitioner"
Description: "Flow3CareCommunication_Ex_to_OIOXML - PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(20ed8a02-1554-41a8-9869-e6dda97bc6f1)
* code = $PractitionerRole#sygeplejerske


// CareCommunication example - new message
Instance: 3cb11b6d-0d4c-434b-b82e-cf66839c7338
InstanceOf: MedComCareCommunicationProvenance
Title: "Flow3CareCommunication_Ex_to_OIOXML - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "Flow3CareCommunication_Ex_to_OIOXML - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(080d88be-177c-42a4-9124-de4e73ad485a)
* occurredDateTime = 2023-11-22T12:32:00+01:00
* recorded = 2023-11-22T12:32:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(fffe78de-0d4c-4073-9d2d-653f9a742142)
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:591d6e21-6237-41af-a443-7f40e15ab6d6"
* entity[payload][+].role = #source
* entity[payload][=].what.identifier.value = "urn:uuid:f954e070-7934-4591-8004-1fe23060f2bb"