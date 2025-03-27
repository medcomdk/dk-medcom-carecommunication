Instance: 59124ce5-5c1e-4898-b7d5-db943b9323b1
InstanceOf: MedComCareCommunicationMessage
Title: "CareCommunication Flow 1 Bundle"
Description: "CareCommunication Flow 1 Bundle"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-11-02T08:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/60098c38-6fe1-41ba-aa92-d4809022de88"
* entry[=].resource = 60098c38-6fe1-41ba-aa92-d4809022de88
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/3228c610-8f13-453d-8d9c-488372752390"
* entry[=].resource = 3228c610-8f13-453d-8d9c-488372752390
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/cae36d9a-df51-49d9-8851-6ff96f6f0af4"
* entry[=].resource = cae36d9a-df51-49d9-8851-6ff96f6f0af4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/a0f14d16-c75c-4be3-9240-2439ed5372e4"
* entry[=].resource = a0f14d16-c75c-4be3-9240-2439ed5372e4
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/9683ca39-968e-4ec9-a905-b95f48de2848"
* entry[=].resource = 9683ca39-968e-4ec9-a905-b95f48de2848
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/294d415b-8df3-4427-8d38-0a7de7cf6540"
* entry[=].resource = 294d415b-8df3-4427-8d38-0a7de7cf6540
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b80c4e35-4d79-4b89-8781-f44fdf0e0612"
* entry[=].resource = b80c4e35-4d79-4b89-8781-f44fdf0e0612
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/ffad2ed6-9c5c-4eaa-9cb9-039d82dc64ce"
* entry[=].resource = ffad2ed6-9c5c-4eaa-9cb9-039d82dc64ce

Instance: 60098c38-6fe1-41ba-aa92-d4809022de88
InstanceOf: MedComCareCommunicationMessageHeader
Title: "CareCommunication Flow 1 MessageHeader"
Description: "CareCommunication Flow 1 MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=328051000016008"
* destination[primary].receiver = Reference(b80c4e35-4d79-4b89-8781-f44fdf0e0612)
* sender = Reference(294d415b-8df3-4427-8d38-0a7de7cf6540)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=359001000016000"
* focus = Reference(cae36d9a-df51-49d9-8851-6ff96f6f0af4)
* definition = "http://medcomfhir.dk/ig/carecommunication/medcom-careCommunication-message-definition|4.0.0"


Instance: cae36d9a-df51-49d9-8851-6ff96f6f0af4
InstanceOf: MedComCareCommunication
Title: "CareCommunication Flow 1 Communication"
Description: "CareCommunication Flow 1 Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#other
* topic.text = "Forundersøgelse"
* subject = Reference(3228c610-8f13-453d-8d9c-488372752390)
* identifier.value = "urn:uuid:c38af9bf-b68c-4ff7-a4d7-d6df2bfb9bdc"
* payload[0].contentString = "Denne besked har høj prioritet.\nAfdeling A har modtaget en henvisning på ovenstående patient.\nForinden der foretages visitation, bedes følgende undersøgelser foretages:\nRøntgen af hofte i to planer.\nBlodtryksresultat\nSænkningsresultat\n\nResultaterne bedes fremsendt som et 'korrespondancebrev'.\n\nVenlig hilsen\noverlæge K. Petersen\n15.01.1999"
* payload[0].extension[date].valueDateTime = 2023-11-20T17:45:00+01:00
* payload[0].extension[identifier].valueIdentifier.value = "urn:uuid:1a7544c5-b95b-4fed-96f9-07036496ae5d"
* payload[0].extension[identifier].valueIdentifier.assigner = Reference(294d415b-8df3-4427-8d38-0a7de7cf6540)
* payload[0].extension[author].valueReference = Reference(a0f14d16-c75c-4be3-9240-2439ed5372e4)
* payload[0].extension[authorContact].valueContactPoint.system = #phone 
* payload[0].extension[authorContact].valueContactPoint.value = "66131372"
* payload[1].contentAttachment.contentType = $bcp13#application/pdf
* payload[1].contentAttachment.title = "billede" 
* payload[1].extension[date].valueDateTime = 2023-11-20T17:45:00+01:00
* payload[1].extension[identifier].valueIdentifier.value = "urn:uuid:c39ea6b2-6052-45e4-a207-415e0205ab6f"
* payload[1].extension[author].valueReference = Reference(a0f14d16-c75c-4be3-9240-2439ed5372e4)
* payload[1].extension[authorContact].valueContactPoint.system = #phone 
* payload[1].extension[authorContact].valueContactPoint.value = "66131372"
* payload[1].extension[identifier].valueIdentifier.assigner = Reference(294d415b-8df3-4427-8d38-0a7de7cf6540)
* payload[1].contentAttachment.data = "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M7OAMbnpZ72BM58YoVk8Aqn+Bkb4wq4uTPYb+LZ80Uy7JW7bCwuZb3VI6eYtsT4W4ejLttvk2HBsfyyShW+DYrTdJvpsyFGLc3ebaHbxrUvo3h0g5c3Dnu8Fx6JUDb5ieW1On8A5vUuWE6O/gpX12ZG79yvYKwNn7Fnkr2C9LKY+9Lmw1OC4yUFEy1NO6m3TxXoF//Y/QgW4pQplbmRzdHJlYW0KZW5kb2JqCjUgMCBvYmoKMjc3NgplbmRvYmoKMiAwIG9iago8PCAvVHlwZSAvUGFnZSAvUGFyZW50IDMgMCBSIC9SZXNvdXJjZXMgNiAwIFIgL0NvbnRlbnRzIDQgMCBSIC9NZWRpYUJveCBbMCAwIDU5NSA4NDJdCj4+CmVuZG9iago2IDAgb2JqCjw8IC9Qcm9jU2V0IFsgL1BERiBdIC9FeHRHU3RhdGUgPDwgL0dzMSA3IDAgUiA+PiA+PgplbmRvYmoKNyAwIG9iago8PCAvVHlwZSAvRXh0R1N0YXRlIC9PUE0gMSA+PgplbmRvYmoKMyAwIG9iago8PCAvVHlwZSAvUGFnZXMgL01lZGlhQm94IFswIDAgNTk1IDg0Ml0gL0NvdW50IDEgL0tpZHMgWyAyIDAgUiBdID4+CmVuZG9iago4IDAgb2JqCjw8IC9UeXBlIC9DYXRhbG9nIC9QYWdlcyAzIDAgUiA+PgplbmRvYmoKOSAwIG9iagoo/v9cMDAwTVwwMDBlXDAwMGRcMDAwY1wwMDBvXDAwMG1cMDAwX1wwMDBsXDAwMG9cMDAwZ1wwMDBvXDAwMF9cMDAwMlwwMDAwXDAwMDFcMDAwNVwwMDBfXDAwMGJcMDAwbFwwMDDlXDAwMCBcMDAwc1wwMDBrXDAwMHJcMDAwaVwwMDBmXDAwMHRcMDAwIFwwMDBtXDAwMGVcMDAwZFwwMDAgXDAwMGhcMDAwdlwwMDBpXDAwMGRcMDAwIFwwMDBiXDAwMGFcMDAwZ1wwMDBnXDAwMHJcMDAwdVwwMDBuXDAwMGRcMDAwX1wwMDBjXDAwMG1cMDAweVwwMDBrXDAwMC5cMDAwcFwwMDBkXDAwMGYpCmVuZG9iagoxMCAwIG9iagooTWFjIE9TIFggMTAuMTIuMyBRdWFydHogUERGQ29udGV4dCkKZW5kb2JqCjExIDAgb2JqCihCaWxsZWRmcmVtdmlzZXIpCmVuZG9iagoxMiAwIG9iagooRDoyMDE3MDMxNDEyMTYyNlowMCcwMCcpCmVuZG9iagoxMyAwIG9iagooKQplbmRvYmoKMTQgMCBvYmoKWyBdCmVuZG9iagoxIDAgb2JqCjw8IC9UaXRsZSA5IDAgUiAvUHJvZHVjZXIgMTAgMCBSIC9DcmVhdG9yIDExIDAgUiAvQ3JlYXRpb25EYXRlIDEyIDAgUiAvTW9kRGF0ZQoxMiAwIFIgL0tleXdvcmRzIDEzIDAgUiAvQUFQTDpLZXl3b3JkcyAxNCAwIFIgPj4KZW5kb2JqCnhyZWYKMCAxNQowMDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAwMDM2OTggMDAwMDAgbiAKMDAwMDAwMjg5MiAwMDAwMCBuIAowMDAwMDAzMTA4IDAwMDAwIG4gCjAwMDAwMDAwMjIgMDAwMDAgbiAKMDAwMDAwMjg3MiAwMDAwMCBuIAowMDAwMDAyOTk2IDAwMDAwIG4gCjAwMDAwMDMwNjMgMDAwMDAgbiAKMDAwMDAwMzE5MSAwMDAwMCBuIAowMDAwMDAzMjQwIDAwMDAwIG4gCjAwMDAwMDM1MzAgMDAwMDAgbiAKMDAwMDAwMzU4MyAwMDAwMCBuIAowMDAwMDAzNjE3IDAwMDAwIG4gCjAwMDAwMDM2NTkgMDAwMDAgbiAKMDAwMDAwMzY3OCAwMDAwMCBuIAp0cmFpbGVyCjw8IC9TaXplIDE1IC9Sb290IDggMCBSIC9JbmZvIDEgMCBSIC9JRCBbIDw5MDU2NWUwNTMyOTQ3YjE2N2MwODEzOGI2ZDZhNzNlYT4KPDkwNTY1ZTA1MzI5NDdiMTY3YzA4MTM4YjZkNmE3M2VhPiBdID4+CnN0YXJ0eHJlZgozODQxCiUlRU9GCg=="

// CareCommunication example - new message
Instance: ffad2ed6-9c5c-4eaa-9cb9-039d82dc64ce
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication Flow 1 Provenance"
Description: "CareCommunication Flow 1 Provenance"
Usage: #example
* target = Reference(60098c38-6fe1-41ba-aa92-d4809022de88)
* occurredDateTime = 2023-11-20T17:45:00+01:00
* recorded = 2023-11-20T17:45:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(294d415b-8df3-4427-8d38-0a7de7cf6540)
* entity[0].role = #source
* entity[0].what.identifier.value = "urn:uuid:1a7544c5-b95b-4fed-96f9-07036496ae5d"
* entity[1].role = #source
* entity[1].what.identifier.value = "urn:uuid:c39ea6b2-6052-45e4-a207-415e0205ab6f"


// Reciever instance - new message for attachement
Instance: b80c4e35-4d79-4b89-8781-f44fdf0e0612
InstanceOf: MedComMessagingOrganization // 
Title: "CareCommunication Flow 1 Receiver Organization"
Description: "CareCommunication Flow 1 Receiver Organization"
* identifier[SOR-ID].value = "328051000016008" 
* identifier[EAN-ID].value = "5790000121441" 
* identifier[Kommunekode].value = "0461"
* name = "Hjemmeplejen, Odense Kommune"

// Sender instance - new message for attachement
Instance: 294d415b-8df3-4427-8d38-0a7de7cf6540
InstanceOf: MedComMessagingOrganization // 
Title: "CareCommunication Flow 1 Sender Organization"
Description: "CareCommunication Flow 1 Sender Organization"
* identifier[SOR-ID].value = "359001000016000" 
* identifier[EAN-ID].value = "5790001382445" 
* name = "MedCom testcenter, Certificering, MedCom Testcenter"

Instance: 3228c610-8f13-453d-8d9c-488372752390
InstanceOf: MedComCorePatient
Title: "CareCommunication Flow 1 Patient"
Description: "CareCommunication Flow 1 Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2512489996"
* name[official].use = #official
* name[official].given[0] = "Nancy"
* name[official].given[1] = "Ann"
* name[official].family = "Berggren"
* address.line = "Hindbærvej 23"
* address.city = "Odense S"
* address.postalCode = "5260"

// Practitioners - new message with attachment
Instance: 9683ca39-968e-4ec9-a905-b95f48de2848
InstanceOf: MedComCorePractitioner
Title: "CareCommunication Flow 1 Practitioner"
Description: "CareCommunication Flow 1 Practitioner"
* name.given = "K"
* name.family = "Petersen"

Instance: a0f14d16-c75c-4be3-9240-2439ed5372e4
InstanceOf: MedComCorePractitionerRole
Title: "CareCommunication Flow 1 PractitionerRole author"
Description: "CareCommunication Flow 1 PractitionerRole author"
* practitioner = Reference(9683ca39-968e-4ec9-a905-b95f48de2848)
* code = $PractitionerRole#sygeplejerske