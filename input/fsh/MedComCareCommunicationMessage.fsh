Profile: MedComCareCommunicationMessage
Parent: MedComMessagingMessage
Id: medcom-careCommunication-message
Description: "The CareCommunication is used to ensure secure electronic communication of personally identifiable information and is most often used for ad hoc communication between parties in Danish Healthcare. However, the CareCommunication shall only be used in areas where no other MedCom standard is available, and it must not be used for cases with an acute nature."
* entry ^short = "Message content (MedComCareCommunicationMessageHeader, MedComMessagingOrganization, MedComMessagingProvenance, MedComCareCommunication, MedComCorePatient, MedComCoreEncounter, MedComCorePractitioner, MedComCorePractitionerRole, MedComCoreCareTeam) - Open"
* obeys medcom-careCommunication-1
* obeys medcom-careCommunication-2
* obeys medcom-careCommunication-4
* obeys medcom-careCommunication-3
* obeys medcom-careCommunication-12
* obeys medcom-careCommunication-11
* obeys medcom-careCommunication-13

Invariant: medcom-careCommunication-1
Description: "The MessageHeader shall conform to medcom-careCommunication-messageHeader profile"
Severity: #error
Expression: "entry[0].resource.conformsTo('http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-messageHeader')"

Invariant: medcom-careCommunication-2
Description: "Entry shall contain exactly one Patient resource"
Severity: #error
Expression: "entry.where(resource.is(Patient)).count() = 1"

Invariant: medcom-careCommunication-3
Description: "All Provenance resources shall be of the type medcom-careCommunication-provenance profile"
Severity: #error
Expression: "entry.resource.ofType(Provenance).meta.profile = 'http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-provenance'"

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



/* 



//New message with attachment
Instance: jf7e4c80-551a-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message. Including an attachment"
Description: "Example of a CareCommunication new message with attachment."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/dc04b8c2-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = dc04b8c2-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/79fc4a5c-5fca-4389-8740-89607ce07f2d"
* entry[=].resource = 79fc4a5c-5fca-4389-8740-89607ce07f2d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/487e2238-527b-11ec-bf63-0242ac130002"
* entry[=].resource = 487e2238-527b-11ec-bf63-0242ac130002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/e0aca758-487a-4536-b750-35753cbef090"
* entry[=].resource = e0aca758-487a-4536-b750-35753cbef090
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/5d37f9e1-2beb-4528-81bf-d521d108c738"
* entry[=].resource = 5d37f9e1-2beb-4528-81bf-d521d108c738
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/7f3c3dbb-1b40-41f7-8acc-fb82eb3d4dd3"
* entry[=].resource = 7f3c3dbb-1b40-41f7-8acc-fb82eb3d4dd3
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/b12c1357-62f1-455e-b07a-3ebf454c50bc"
* entry[=].resource = b12c1357-62f1-455e-b07a-3ebf454c50bc
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/bf24f51c-a99b-47db-a785-8c5ef22ebc27"
* entry[=].resource = bf24f51c-a99b-47db-a785-8c5ef22ebc27
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/85669d18-2bb3-4c6e-80d2-e039a63a521c"
* entry[=].resource = 85669d18-2bb3-4c6e-80d2-e039a63a521c
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/ee619a58-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = ee619a58-5519-11ed-bdc3-0242ac120002

//New message sender and recipient
Instance: i5113a08-b1f8-4440-92aa-087d7441178f
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message. Including sender and recipient"
Description: "Example of a CareCommunication new message with sender and recipient."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/bfe2d85f-5551-4a01-94f5-5d4b66000ad0"
* entry[=].resource = bfe2d85f-5551-4a01-94f5-5d4b66000ad0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/833cef33-3726-433b-855d-e566aaa65fe1"
* entry[=].resource = 833cef33-3726-433b-855d-e566aaa65fe1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/e15be831-0454-47fd-a954-c9578a2474cb"
* entry[=].resource = e15be831-0454-47fd-a954-c9578a2474cb 
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/35bb99e4-551a-11ed-bdc3-0242ac120002"
* entry[=].resource = 35bb99e4-551a-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/20eac382-551a-11ed-bdc3-0242ac120002"
* entry[=].resource = 20eac382-551a-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b75abdfa-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = b75abdfa-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/CareTeam/fb1d34fe-6672-11ed-9022-0242ac120002"
* entry[=].resource = fb1d34fe-6672-11ed-9022-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/c5c393ee-5519-11ed-bdc3-0242ac120002"
* entry[=].resource = c5c393ee-5519-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/CareTeam/f693506a-6903-11ed-9022-0242ac120002"
* entry[=].resource = f693506a-6903-11ed-9022-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/5275fdd5-6fa9-44bb-88c3-581795cdb8c6"
* entry[=].resource = 5275fdd5-6fa9-44bb-88c3-581795cdb8c6

//New message with priority
Instance: he3588a5-321e-405c-a5fc-3e2ef672eeeb
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message. Including priority"
Description: "Example of a CareCommunication new message with priority."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/4f3bc2ea-2214-44d7-ba02-e286ddf2b51e"
* entry[=].resource = 4f3bc2ea-2214-44d7-ba02-e286ddf2b51e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/e0c57a9f-9b04-43b4-9355-76f3564a1f10"
* entry[=].resource = e0c57a9f-9b04-43b4-9355-76f3564a1f10
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/4ec35384-527b-11ec-bf63-0242ac130002"
* entry[=].resource = 4ec35384-527b-11ec-bf63-0242ac130002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/ac1dfd45-a135-47b8-acd7-db0405e21dd0"
* entry[=].resource = ac1dfd45-a135-47b8-acd7-db0405e21dd0
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/e081a7fc-2df6-47e9-b6cd-77d8aaf7e8df"
* entry[=].resource = e081a7fc-2df6-47e9-b6cd-77d8aaf7e8df
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/4e03a9cd-4d75-4e01-9420-7f0b4ecff305"
* entry[=].resource = 4e03a9cd-4d75-4e01-9420-7f0b4ecff305
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/fae4c8cf-e5d6-404d-867d-97ffa49a1c58"
* entry[=].resource = fae4c8cf-e5d6-404d-867d-97ffa49a1c58
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/9426fb7b-aa5d-4391-ad22-3d46a581560e"
* entry[=].resource = 9426fb7b-aa5d-4391-ad22-3d46a581560e




//New message with formatted text
Instance: f922f204-4a08-4a7a-a900-63b6e0e92b3e
InstanceOf: MedComCareCommunicationMessage
Title: "New CareCommunication message. Including XHTML-formatted message text"
Description: "Example of a CareCommunication new message with formatted message text."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:00:00+01:00
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/2f0db363-234c-4096-82f7-3fd63057fd94"
* entry[=].resource = 2f0db363-234c-4096-82f7-3fd63057fd94
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/f9bc6de0-588f-4a3d-a6c6-eb370d23a473"
* entry[=].resource = f9bc6de0-588f-4a3d-a6c6-eb370d23a473
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/3131b349-5162-48a9-9135-9ba730601faa"
* entry[=].resource = 3131b349-5162-48a9-9135-9ba730601faa
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/8ebaf0c2-835d-43c8-91ef-c5c1745e0b98"
* entry[=].resource = 8ebaf0c2-835d-43c8-91ef-c5c1745e0b98
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/a9bd6ab5-520d-4fdf-9b5f-55d79daedd73"
* entry[=].resource = a9bd6ab5-520d-4fdf-9b5f-55d79daedd73
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/1680e847-abee-48ad-8704-65eb8225a3cb"
* entry[=].resource = 1680e847-abee-48ad-8704-65eb8225a3cb
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/9b876149-842d-4b09-8d3d-27468210d343"
* entry[=].resource = 9b876149-842d-4b09-8d3d-27468210d343
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/33d460d7-670a-449b-90f1-8f677c809729"
* entry[=].resource = 33d460d7-670a-449b-90f1-8f677c809729

 */


/* //CareCommunication cancelation
Instance: ed3e05b2-551d-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "Cancel CareCommunication message"
Description: "Example of a cancel (retract) a CareCommunication message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:05:10Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/b0d424f8-33a9-4cc2-a528-a6cc1c58727b"
* entry[=].resource = b0d424f8-33a9-4cc2-a528-a6cc1c58727b
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/1636f3f8-551e-11ed-bdc3-0242ac120002"
* entry[=].resource = 1636f3f8-551e-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/487ac745-fd11-4879-9b59-c08c7d47260e"
* entry[=].resource = 487ac745-fd11-4879-9b59-c08c7d47260e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b581c63c-181f-46f6-990d-b9942c576724"
* entry[=].resource = b581c63c-181f-46f6-990d-b9942c576724
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/94e65db8-2f0c-4a2c-a7c9-06a160d59a12"
* entry[=].resource = 94e65db8-2f0c-4a2c-a7c9-06a160d59a12
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/16fac3d8-551d-11ed-bdc3-0242ac120002"
* entry[=].resource = 16fac3d8-551d-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400 */

/* //CareCommunication Modify
Instance: df9019c6-690d-11ed-9022-0242ac120002
InstanceOf: MedComCareCommunicationMessage
Title: "Modify CareCommunication message"
Description: "Example of a CareCommunication modify message."
Usage: #example
* type = $BundleType#message
* timestamp = 2024-05-01T12:05:10Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/MessageHeader/f8aa0bf0-690d-11ed-9022-0242ac120002"
* entry[=].resource = f8aa0bf0-690d-11ed-9022-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Patient/733cef33-3626-422b-955d-d506aaa65fe1"
* entry[=].resource = 733cef33-3626-422b-955d-d506aaa65fe1
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Communication/d63178cc-690f-11ed-9022-0242ac120002"
* entry[=].resource = d63178cc-690f-11ed-9022-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/PractitionerRole/eda90bde-54f9-11ed-bdc3-0242ac120002"
* entry[=].resource = eda90bde-54f9-11ed-bdc3-0242ac120002
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Practitioner/58c811a5-4082-44eb-9d66-ccbb112d4973"
* entry[=].resource = 58c811a5-4082-44eb-9d66-ccbb112d4973
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/487ac745-fd11-4879-9b59-c08c7d47260e"
* entry[=].resource = 487ac745-fd11-4879-9b59-c08c7d47260e
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Organization/b581c63c-181f-46f6-990d-b9942c576724"
* entry[=].resource = b581c63c-181f-46f6-990d-b9942c576724
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/f18213f8-2e2c-458d-86ff-4e48ac5d7162"
* entry[=].resource = f18213f8-2e2c-458d-86ff-4e48ac5d7162
* entry[+].fullUrl = "https://medcomfhir.dk/ig/carecommunication/Provenance/4c284936-5454-4116-95fc-3c8eeeed2400"
* entry[=].resource = 4c284936-5454-4116-95fc-3c8eeeed2400
 */
