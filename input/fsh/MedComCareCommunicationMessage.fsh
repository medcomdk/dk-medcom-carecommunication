Profile: MedComCareCommunicationMessage
Parent: MedComMessagingMessage
Id: medcom-careCommunication-message
Description: "Message for communication care related information between parties in Danish Health Care using MedCom Standards"
* entry ^short = "Message content (MedComCareCommunicationMessageHeader, MedComMessagingOrganization, MedComMessagingProvenance, MedComCareCommunication, MedComCorePatient, MedComCoreEncounter) - Open"
* obeys medcom-careCommunication-1
* obeys medcom-careCommunication-2
* obeys medcom-careCommunication-3
* obeys medcom-careCommunication-4
* obeys medcom-careCommunication-5
* obeys medcom-careCommunication-6
* obeys medcom-careCommunication-7
* obeys medcom-careCommunication-8

Invariant: medcom-careCommunication-1
Description: "The MessageHeader shall conform to medcom-careCommunication-messageHeader profile"
Severity: #error
Expression: "entry.ofType(MessageHeader).all(resource.conformsTo('http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-messageHeader'))"

Invariant: medcom-careCommunication-2
Description: "Entry shall contain exactly one Patient resource"
Severity: #error
Expression: "entry.where(resource.is(Patient)).count() = 1"

Invariant: medcom-careCommunication-3
Description: "All Provenance resources shall contain activities from medcom-careCommunication-messagingActivities valueset"
Severity: #error
Expression: "entry.ofType(Provenance).all(resource.activity.memberOf('http://medcomfhir.dk/ig/terminology/ValueSet/medcom-careCommunication-messagingActivities'))"

Invariant: medcom-careCommunication-4
Description: "The status in the Communication resource shall always be 'unknown'"
Severity: #error
Expression: "entry.resource.ofType('Communication').all(status = 'unknown')"

Invariant: medcom-careCommunication-5
Description: "Priority is only allowed when Communication.category = 'regarding-referral'"
Severity: #error
Expression: "entry.resource.ofType(Communication).where(category.coding.code != 'regarding-referral').priority.empty()"

Invariant: medcom-careCommunication-6
Description: "There shall exist a Communication.topic when Communication.category = 'other'"
Severity: #error
Expression: "Bundle.entry.resource.ofType(Communication).iif(category.coding.code != 'other', true, category.coding.code = 'other' and topic.exists())"

Invariant: medcom-careCommunication-7
Description: "There shall exist a practitioner job tiltel when using a PractitionerRole."
Severity: #error
Expression: "Bundle.entry.where(resource.ofType(PractitionerRole).id = %resource.entry.resource.ofType(Communication).payload.extension.where(url = 'http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-carecommunication-author-extension').value.reference.replace(PractitionerRole/,'')).resource.ofType(PractitionerRole).code.coding.code.exists()"
Invariant: medcom-careCommunication-8
Description: "There shall exist a practitioner given and family name when using a PractitionerRole."
Severity: #error
Expression: " Bundle.entry.where(resource.ofType(Practitioner).id = %resource.entry.resource.ofType(PractitionerRole).practitioner.reference.replace(Practitioner/,'')).resource.ofType(Practitioner).where(name.family and name.given).exists()"



Instance: 0dd5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message."
Description: "Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2022-10-01T12:00:10Z
* entry[+].fullUrl = "MessageHeader/42cb9200-f421-4d08-8391-7d51a2503cb4"
* entry[=].resource = 42cb9200-f421-4d08-8391-7d51a2503cb4
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Communication/94e65db8-2f0c-4a2c-a7c9-06a160d59a12"
* entry[=].resource = 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
* entry[+].fullUrl = "PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

Instance: 256549f7-ed10-422d-8088-f7222b686e46
InstanceOf: MedComCareCommunicationMessage
Title: "Reply CareCommunication Message"
Description: "Example of a reply to a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2022-10-02T11:30:10Z
* entry[+].fullUrl = "MessageHeader/d5bd2111-2576-48d3-84d4-8be0297a038d"
* entry[=].resource = d5bd2111-2576-48d3-84d4-8be0297a038d
* entry[+].fullUrl = "Patient/448cd4ee-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 448cd4ee-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Communication/4c712bdc-1558-4125-a854-fa8b3a11f6ed"
* entry[=].resource = 4c712bdc-1558-4125-a854-fa8b3a11f6ed
* entry[+].fullUrl = "PractitionerRole/8bf63050-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 8bf63050-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/7ffff970-5504-11ed-bdc3-0242ac120002"
* entry[=].resource = 7ffff970-5504-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/9eb51090-5503-11ed-bdc3-0242ac120002"
* entry[=].resource = 9eb51090-5503-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/b2c584de-5503-11ed-bdc3-0242ac120002"
* entry[=].resource = b2c584de-5503-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Provenance/30c0f779-783f-46b2-b38f-faebd2bedb3f"
* entry[=].resource = 30c0f779-783f-46b2-b38f-faebd2bedb3f
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

Instance: 40426e3e-978f-46e8-a366-a30f27854b0a
InstanceOf: MedComCareCommunicationMessage
Title: "Forward CareCommunication Message"
Description: "Example of a forward CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2022-10-02T11:30:10Z
* entry[+].fullUrl = "MessageHeader/aac67161-d0de-4933-a78c-060beafb4814"
* entry[=].resource = aac67161-d0de-4933-a78c-060beafb4814
* entry[+].fullUrl = "Patient/31c90594-54ff-11ed-bdc3-0242ac120002"
* entry[=].resource = 31c90594-54ff-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Communication/0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb"
* entry[=].resource = 0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb
* entry[+].fullUrl = "PractitionerRole/7cae09e0-5501-11ed-bdc3-0242ac120002"
* entry[=].resource = 7cae09e0-5501-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/ad055a3d-16b6-41f9-891a-7dd73eecaf03"
* entry[=].resource = ad055a3d-16b6-41f9-891a-7dd73eecaf03
* entry[+].fullUrl = "Organization/f98ed410-54fe-11ed-bdc3-0242ac120002"
* entry[=].resource = f98ed410-54fe-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/a5e260f6-54ff-11ed-bdc3-0242ac120002"
* entry[=].resource = a5e260f6-54ff-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Communication/1f7c71c2-5929-11ed-9b6a-0242ac120002"
* entry[=].resource = 1f7c71c2-5929-11ed-9b6a-0242ac120002
* entry[+].fullUrl = "PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Provenance/7466d9f6-d3ae-4be5-8ed7-b333dad30205"
* entry[=].resource = 7466d9f6-d3ae-4be5-8ed7-b333dad30205
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

//New message with attachment, encounter and recipient.
Instance: 6f7e4c80-551a-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message with attachment, episodeOfCare-identifier and recipient"
Description: "Example of a CareCommunication new message, with attachment, episodeOfCare-identifier and recipient."
Usage: #example
* type = $BundleType#message
* timestamp = 2022-10-01T12:00:10Z
* entry[+].fullUrl = "MessageHeader/dc04b8c2-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = dc04b8c2-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Patient/833cef33-3726-433b-855d-e566aaa65fe1"
* entry[=].resource = 833cef33-3726-433b-855d-e566aaa65fe1
* entry[+].fullUrl = "Communication/487e2238-527b-11ec-bf63-0242ac130002"
* entry[=].resource = 487e2238-527b-11ec-bf63-0242ac130002
* entry[+].fullUrl = "PractitionerRole/35bb99e4-551a-11ed-bdc3-0242ac120002"
* entry[=].resource = 35bb99e4-551a-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/20eac382-551a-11ed-bdc3-0242ac120002"
* entry[=].resource = 20eac382-551a-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/048b2ab0-550b-11ed-bdc3-0242ac120002"
* entry[=].resource = 048b2ab0-550b-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Organization/b75abdfa-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = b75abdfa-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/c5c393ee-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = c5c393ee-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Provenance/ee619a58-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = ee619a58-5519-11ed-bdc3-0242ac120002


// CareCommunication reply to XDIS message
Instance: 37bfbc0c-553d-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom CareCommunication - Reply to XDIS Message Example"
Description: "Example of a reply to an XDIS message."
Usage: #example
* type = $BundleType#message
* timestamp = 2022-10-01T12:00:10Z
* entry[+].fullUrl = "MessageHeader/3076d9b0-5521-11ed-bdc3-0242ac120002"
* entry[=].resource = 3076d9b0-5521-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Patient/e8dd504e-551f-11ed-bdc3-0242ac120002"
* entry[=].resource = e8dd504e-551f-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Communication/f54efd18-5520-11ed-bdc3-0242ac120002"
* entry[=].resource = f54efd18-5520-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "PractitionerRole/2b80d2b8-5520-11ed-bdc3-0242ac120002"
* entry[=].resource = 2b80d2b8-5520-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/1e2d6388-5520-11ed-bdc3-0242ac120002"
* entry[=].resource = 1e2d6388-5520-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/0e0e7f78-5520-11ed-bdc3-0242ac120002"
* entry[=].resource = 0e0e7f78-5520-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/fd0666dc-551f-11ed-bdc3-0242ac120002"
* entry[=].resource = fd0666dc-551f-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Provenance/6de0806d-7050-4db8-8003-0c72aee52948"
* entry[=].resource = 6de0806d-7050-4db8-8003-0c72aee52948


//CareCommunication cancelation
Instance: ad3e05b2-551d-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "Cancel CareCommunication Message"
Description: "Example of a cancel/retract a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2022-10-01T12:05:10Z
* entry[+].fullUrl = "MessageHeader/b0d424f8-33a9-4cc2-a528-a6cc1c58727b"
* entry[=].resource = b0d424f8-33a9-4cc2-a528-a6cc1c58727b
* entry[+].fullUrl = "Patient/1f697de4-551c-11ed-bdc3-0242ac120002"
* entry[=].resource = 1f697de4-551c-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Communication/1636f3f8-551e-11ed-bdc3-0242ac120002"
* entry[=].resource = 1636f3f8-551e-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "PractitionerRole/39d3af60-551c-11ed-bdc3-0242ac120002"
* entry[=].resource = 39d3af60-551c-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/356947dc-551c-11ed-bdc3-0242ac120002"
* entry[=].resource = 356947dc-551c-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/282c1fea-551c-11ed-bdc3-0242ac120002"
* entry[=].resource = 282c1fea-551c-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/2f12cb92-551c-11ed-bdc3-0242ac120002"
* entry[=].resource = 2f12cb92-551c-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Provenance/16fac3d8-551d-11ed-bdc3-0242ac120002"
* entry[=].resource = 16fac3d8-551d-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400


/* Instance: TestPrioritydd5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication Message"
Description: "Example of a CareCommunication new message."
Usage: #example
* type = $BundleType#message
* timestamp = 2020-09-28T12:34:56Z
* entry[+].fullUrl = "MessageHeader/42cb9200-f421-4d08-8391-7d51a2503cb4"
* entry[=].resource = 42cb9200-f421-4d08-8391-7d51a2503cb4
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Communication/4ec35384-527b-11ec-bf63-0242ac130002"
* entry[=].resource = 4ec35384-527b-11ec-bf63-0242ac130002
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Organization/o4cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = o4cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/o7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400 */