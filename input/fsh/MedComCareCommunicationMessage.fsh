Profile: MedComCareCommunicationMessage
Parent: MedComMessagingMessage
Id: medcom-careCommunication-message
Description: "The CareCommunication is used to ensure secure electronic communication of personally identifiable information and is most often used for ad hoc communication between parties in Danish Healthcare. However, the CareCommunication shall only be used in areas where no other MedCom standard is available, and it must not be used for cases with an acute nature."
* entry ^short = "Message content (MedComCareCommunicationMessageHeader, MedComMessagingOrganization, MedComMessagingProvenance, MedComCareCommunication, MedComCorePatient, MedComCoreEncounter, MedComCorePractitioner, MedComCorePractitionerRole, MedComCoreCareTeam) - Open"
* obeys medcom-careCommunication-1
* obeys medcom-careCommunication-2
* obeys medcom-careCommunication-3
* obeys medcom-careCommunication-4
* obeys medcom-careCommunication-12
* obeys medcom-careCommunication-11
* obeys medcom-careCommunication-13

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
Description: "There shall exist a practitioner given and family name when using a PractitionerRole."
Severity: #error
Expression: "entry.resource.ofType(Practitioner).name.exists()"

Invariant: medcom-careCommunication-11
Description: "If a specific sender exists, the organisation which the CareTeam or Practitioner is a part of shall be the same as the sender organisation in the MessageHeader resource."
Severity: #error
Expression: "Bundle.entry.resource.ofType(Communication).extension.value.reference.resolve().managingOrganization.reference = %resource.entry.resource.ofType(MessageHeader).sender.reference or Bundle.entry.resource.ofType(Communication).extension.value.reference.resolve().organization.reference = %resource.entry.resource.ofType(MessageHeader).sender.reference or Bundle.entry.resource.ofType(Communication).extension.exists().not()"

Invariant: medcom-careCommunication-12
Description: "If a specific recipient exists, the organisation which the CareTeam or Practitioner is a part of shall be the same as the receiver organisation in the MessageHeader resource."
Severity: #error
Expression: "Bundle.entry.resource.ofType(Communication).recipient.reference.resolve().managingOrganization.reference = %resource.entry.resource.ofType(MessageHeader).destination.receiver.reference or Bundle.entry.resource.ofType(Communication).recipient.reference.resolve().organization.reference = %resource.entry.resource.ofType(MessageHeader).destination.receiver.reference or Bundle.entry.resource.ofType(Communication).recipient.exists().not()"

Invariant: medcom-careCommunication-13
Description: "All PractitionerRole resources shall have a reference to an instance of a Practitioner resource."
Severity: #error
Expression: "Bundle.entry.resource.ofType(PractitionerRole).practitioner.reference.exists()"


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
* entry[+].fullUrl = "PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
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
* entry[+].fullUrl = "PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "Organization/f98ed410-54fe-11ed-bdc3-0242ac120002"
* entry[=].resource = f98ed410-54fe-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Organization/a5e260f6-54ff-11ed-bdc3-0242ac120002"
* entry[=].resource = a5e260f6-54ff-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Provenance/7466d9f6-d3ae-4be5-8ed7-b333dad30205"
* entry[=].resource = 7466d9f6-d3ae-4be5-8ed7-b333dad30205
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

//New message with attachment, encounter and recipient.
Instance: 6f7e4c80-551a-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message with attachment, episodeOfCare-identifier, and sender and recipient"
Description: "Example of a CareCommunication new message, with attachment, episodeOfCare-identifier, and sender and recipient."
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
* entry[+].fullUrl = "Encounter/6220b42d-c4fd-4c77-bae7-78e7d890dc8d"
* entry[=].resource = 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
* entry[+].fullUrl = "Organization/b75abdfa-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = b75abdfa-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "CareTeam/fb1d34fe-6672-11ed-9022-0242ac120002"
* entry[=].resource = fb1d34fe-6672-11ed-9022-0242ac120002
* entry[+].fullUrl = "Organization/c5c393ee-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = c5c393ee-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "CareTeam/f693506a-6903-11ed-9022-0242ac120002"
* entry[=].resource = f693506a-6903-11ed-9022-0242ac120002
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
Description: "Example of a cancel (retract) a CareCommunication message."
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
* entry[+].fullUrl = "Communication/fe2eb07e-690f-11ed-9022-0242ac120002"
* entry[=].resource = fe2eb07e-690f-11ed-9022-0242ac120002
* entry[+].fullUrl = "Provenance/16fac3d8-551d-11ed-bdc3-0242ac120002"
* entry[=].resource = 16fac3d8-551d-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400

//CareCommunication Modify
Instance: cf9019c6-690d-11ed-9022-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "Modify CareCommunication Message"
Description: "Example of a modify a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2022-10-01T12:05:10Z
* entry[+].fullUrl = "MessageHeader/f8aa0bf0-690d-11ed-9022-0242ac120002"
* entry[=].resource = f8aa0bf0-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Patient/550b46e4-690d-11ed-9022-0242ac120002"
* entry[=].resource = 550b46e4-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Communication/273bc02c-9000-11ec-b909-0242ac120002" 
* entry[=].resource = 273bc02c-9000-11ec-b909-0242ac120002
* entry[+].fullUrl = "PractitionerRole/6ff69f1c-690d-11ed-9022-0242ac120002"
* entry[=].resource = 6ff69f1c-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Practitioner/7c7f31d6-690d-11ed-9022-0242ac120002"
* entry[=].resource = 7c7f31d6-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Organization/87b881a6-690d-11ed-9022-0242ac120002" // receiver
* entry[=].resource = 87b881a6-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Organization/9e183b44-690d-11ed-9022-0242ac120002"
* entry[=].resource = 9e183b44-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "Communication/d63178cc-690f-11ed-9022-0242ac120002"
* entry[=].resource = d63178cc-690f-11ed-9022-0242ac120002
* entry[+].fullUrl = "Provenance/f18213f8-2e2c-458d-86ff-4e48ac5d7162"
* entry[=].resource = f18213f8-2e2c-458d-86ff-4e48ac5d7162
* entry[+].fullUrl = "Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
