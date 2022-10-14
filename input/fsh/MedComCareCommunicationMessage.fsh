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
Expression: "entry.resource.ofType(Communication).status = 'unknown'"

Invariant: medcom-careCommunication-5
Description: "Priority is only allowed when Communication.category = 'regarding-referral'"
Severity: #error
Expression: "entry.resource.ofType(Communication).where(category.coding.code != 'regarding-referral').priority.empty()"

Invariant: medcom-careCommunication-6
Description: "There shall exist a Communication.topic when Communication.category = 'other'"
Severity: #error
Expression: "Bundle.entry.resource.ofType(Communication).iif(category.coding.code != 'other', true, category.coding.code = 'other' and topic.exists())"



Instance: 0dd5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c
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
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Communication/94e65db8-2f0c-4a2c-a7c9-06a160d59a12"
* entry[=].resource = 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

Instance: 256549f7-ed10-422d-8088-f7222b686e46
InstanceOf: MedComCareCommunicationMessage
Title: "Reply CareCommunication Message"
Description: "Example of a reply to a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2020-09-30T10:22:11Z
* entry[+].fullUrl = "MessageHeader/d5bd2111-2576-48d3-84d4-8be0297a038d"
* entry[=].resource = d5bd2111-2576-48d3-84d4-8be0297a038d
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Communication/4c712bdc-1558-4125-a854-fa8b3a11f6ed"
* entry[=].resource = 4c712bdc-1558-4125-a854-fa8b3a11f6ed
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Practitioner/ad055a3d-16b6-41f9-891a-7dd73eecaf03"
* entry[=].resource = ad055a3d-16b6-41f9-891a-7dd73eecaf03
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/30c0f779-783f-46b2-b38f-faebd2bedb3f"
* entry[=].resource = 30c0f779-783f-46b2-b38f-faebd2bedb3f

Instance: 40426e3e-978f-46e8-a366-a30f27854b0a
InstanceOf: MedComCareCommunicationMessage
Title: "Forward CareCommunication Message"
Description: "Example of a forward of a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2020-09-30T10:22:11Z
* entry[+].fullUrl = "MessageHeader/aac67161-d0de-4933-a78c-060beafb4814"
* entry[=].resource = aac67161-d0de-4933-a78c-060beafb4814
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Communication/0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb"
* entry[=].resource = 0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Practitioner/ad055a3d-16b6-41f9-891a-7dd73eecaf03"
* entry[=].resource = ad055a3d-16b6-41f9-891a-7dd73eecaf03
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/7466d9f6-d3ae-4be5-8ed7-b333dad30205"
* entry[=].resource = 7466d9f6-d3ae-4be5-8ed7-b333dad30205


// CareCommunication reply to XDIS message
Instance: bfdeea04-9bfd-4b31-baf8-57aa7546e2b4
InstanceOf: MedComCareCommunicationMessage
Title: "MedCom CareCommunication - Reply to XDIS Message Example"
Description: "Example of a reply to an XDIS message."
Usage: #example
* type = $BundleType#message
* timestamp = 2020-09-30T10:22:11Z
* entry[+].fullUrl = "MessageHeader/42cb9200-f421-4d08-8391-7d51a2503cb4"
* entry[=].resource = 42cb9200-f421-4d08-8391-7d51a2503cb4
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Communication/94e65db8-2f0c-4a2c-a7c9-06a160d59a12"
* entry[=].resource = 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Practitioner/ad055a3d-16b6-41f9-891a-7dd73eecaf03"
* entry[=].resource = ad055a3d-16b6-41f9-891a-7dd73eecaf03
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/6de0806d-7050-4db8-8003-0c72aee52948"
* entry[=].resource = 6de0806d-7050-4db8-8003-0c72aee52948


//CareCommunication cancelation
Instance: 01347b4a-8fff-11ec-b909-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "Modify CareCommunication Message"
Description: "Example of a modified to a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2020-09-30T10:22:11Z
* entry[+].fullUrl = "MessageHeader/b0d424f8-33a9-4cc2-a528-a6cc1c58727b"
* entry[=].resource = b0d424f8-33a9-4cc2-a528-a6cc1c58727b
* entry[+].fullUrl = "Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Communication/273bc02c-9000-11ec-b909-0242ac120002"
* entry[=].resource = 273bc02c-9000-11ec-b909-0242ac120002
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Practitioner/ad055a3d-16b6-41f9-891a-7dd73eecaf03"
* entry[=].resource = ad055a3d-16b6-41f9-891a-7dd73eecaf03
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
* entry[+].fullUrl = "Provenance/f18213f8-2e2c-458d-86ff-4e48ac5d7162"
* entry[=].resource = f18213f8-2e2c-458d-86ff-4e48ac5d7162


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
* entry[+].fullUrl = "Organization/12ee0dde-a672-462f-820d-5efe832d73c9"
* entry[=].resource = 12ee0dde-a672-462f-820d-5efe832d73c9
* entry[+].fullUrl = "Communication/4ec35384-527b-11ec-bf63-0242ac130002"
* entry[=].resource = 4ec35384-527b-11ec-bf63-0242ac130002
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Organization/74cdf292-abf3-4f5f-80ea-60a48013ff6d"
* entry[=].resource = 74cdf292-abf3-4f5f-80ea-60a48013ff6d
* entry[+].fullUrl = "Organization/d7056980-a8b2-42aa-8a0e-c1fc85d1f40d"
* entry[=].resource = d7056980-a8b2-42aa-8a0e-c1fc85d1f40d
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400 */