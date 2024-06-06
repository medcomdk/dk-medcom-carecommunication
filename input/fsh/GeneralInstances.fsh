/* 
Instanser anvendt til new message
*/
Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "1st message - Bruno Test Elmer"
Description: "1st message - Patient described with minimal information. Valid only if used in a Bundle."
Usage: #inline
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* name[official].given = "Bruno"

// Sender instance - new message
Instance: b581c63c-181f-46f6-990d-b9942c576724
InstanceOf: MedComMessagingOrganization // 
Title: "1st message - Example of a sender organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
Usage: #inline
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: 487ac745-fd11-4879-9b59-c08c7d47260e
InstanceOf: MedComMessagingOrganization // 
Title: "1st message - Example of a reciever organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 58c811a5-4082-44eb-9d66-ccbb112d4973
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: eda90bde-54f9-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)
* code = $PractitionerRole#sygeplejerske


/* 
Instanser anvendt til reply to XDIS message
*/
Instance: 23ebfcd8-e4f2-4ce8-908b-aa7cfb9ffef5
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// MedComCoreEncounter instance
Instance: 2a5b01e4-8c2c-481b-ab12-e383d8e00629
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#finished 
* class = $ActCodes#IMP 
* subject = Reference(23ebfcd8-e4f2-4ce8-908b-aa7cfb9ffef5)
* episodeOfCare.identifier.value = "fc60e762-b13b-5773-865e-67f3907bdcc7" 
* episodeOfCare.identifier.system = "https://sor2.sum.dsdn.dk/#id=265161000016000" // SOR id for afsender/serviceProvider

// Sender instance - new message
Instance: e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: ae899cbd-933b-4581-9a16-bd2da73f06a0
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 8659596f-6ef4-421c-9ecd-94b65e4d5ff8
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 8dc790ba-8d93-4585-b91c-af8225b0796d
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(8659596f-6ef4-421c-9ecd-94b65e4d5ff8)
* code = $PractitionerRole#sygeplejerske


/* 
Instanser anvendt til new message with formatted text
*/
/* Instance: f9bc6de0-588f-4a3d-a6c6-eb370d23a473
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: 9b876149-842d-4b09-8d3d-27468210d343
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: 1680e847-abee-48ad-8704-65eb8225a3cb
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: a9bd6ab5-520d-4fdf-9b5f-55d79daedd73
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 8ebaf0c2-835d-43c8-91ef-c5c1745e0b98
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(a9bd6ab5-520d-4fdf-9b5f-55d79daedd73)
* code = $PractitionerRole#sygeplejerske
 */
/* 
Instanser anvendt til new message journal note
*/
Instance: b8e3000b-3b95-43e2-8e5b-fc347d0a2411
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: c39b114b-a9c1-46bb-ac30-e3ce71f28c3a
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: 33153a8a-97c8-4f55-b7ad-bbedee8bd0e1
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 6397c13d-7cb2-4834-871c-47f528bb79cf
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 3b1f7d8c-540e-474c-b079-89284c2de621
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(6397c13d-7cb2-4834-871c-47f528bb79cf)
* code = $PractitionerRole#sygeplejerske

/* 
Instanser anvendt til new message priority
*/
Instance: e0c57a9f-9b04-43b4-9355-76f3564a1f10
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: fae4c8cf-e5d6-404d-867d-97ffa49a1c58
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: 4e03a9cd-4d75-4e01-9420-7f0b4ecff305
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: e081a7fc-2df6-47e9-b6cd-77d8aaf7e8df
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: ac1dfd45-a135-47b8-acd7-db0405e21dd0
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(e081a7fc-2df6-47e9-b6cd-77d8aaf7e8df)
* code = $PractitionerRole#sygeplejerske

/* 
Instanser anvent til new message - with attachement
*/
Instance: 79fc4a5c-5fca-4389-8740-89607ce07f2d
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message for attachement
Instance: 85669d18-2bb3-4c6e-80d2-e039a63a521c
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message for attachement
Instance: bf24f51c-a99b-47db-a785-8c5ef22ebc27
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"


// Practitioners - new message with attachment
Instance: 5d37f9e1-2beb-4528-81bf-d521d108c738
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: e0aca758-487a-4536-b750-35753cbef090
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(5d37f9e1-2beb-4528-81bf-d521d108c738)
* code = $PractitionerRole#sygeplejerske

// Practitioners - new message with attachment
Instance: b12c1357-62f1-455e-b07a-3ebf454c50bc
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Hans"
* name.family = "Hansen"

Instance: 7f3c3dbb-1b40-41f7-8acc-fb82eb3d4dd3
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(b12c1357-62f1-455e-b07a-3ebf454c50bc)
* code = $PractitionerRole#speciallaege

/* 
Instanser anvent til new message -  recipient and sender
*/
Instance: 833cef33-3726-433b-855d-e566aaa65fe1
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"


// Sender instance - new message   recipient and sender
Instance: c5c393ee-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message   recipient and sender
Instance: b75abdfa-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // 
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"


// Practitioners - new message   recipient and sender
Instance: 20eac382-551a-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 35bb99e4-551a-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(20eac382-551a-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske


// Recipient CareTeam 
Instance: fb1d34fe-6672-11ed-9022-0242ac120002
InstanceOf: MedComCoreCareTeam // 
Title: "Example of a recipient in terms of a careteam."
Description: "Example of a recipient in terms of a careteam."
* managingOrganization = Reference(b75abdfa-5519-11ed-bdc3-0242ac120002)
* name = "Plejecenter Herlev Team 1"

// Sender - careteam
Instance: f693506a-6903-11ed-9022-0242ac120002
InstanceOf: MedComCoreCareTeam // 
Title: "Example of a sender in terms of a careteam."
Description: "Example of a sender in terms of a careteam."
* managingOrganization = Reference(c5c393ee-5519-11ed-bdc3-0242ac120002)
* name = "Hjerteafdelingens team C"



//Practitioner - forward message
Instance: ad055a3d-16b6-41f9-891a-7dd73eecaf03
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Emma"
* name.family = "Waters"

Instance: 7cae09e0-5501-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(ad055a3d-16b6-41f9-891a-7dd73eecaf03)
* code = $PractitionerRole#sygeplejerske




//Practitioner - reply message
Instance: 7ffff970-5504-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Emma"
* name.family = "Waters"

Instance: 8bf63050-5504-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(7ffff970-5504-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske


/* 
Instanser anvent til Cancel message 
*/
/* Instance: 1f697de4-551c-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: 2f12cb92-551c-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Hjerteafdelingen på Herlev og Gentofte hospital
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: 282c1fea-551c-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

//Practitioner - reply message
Instance: 356947dc-551c-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 39d3af60-551c-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(356947dc-551c-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske
 */
/*
Instanser anvent til modify message 
*/
/* Instance: 550b46e4-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: 9e183b44-690d-11ed-9022-0242ac120002
InstanceOf: MedComMessagingOrganization // Hjerteafdelingen på Herlev og Gentofte hospital
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: 87b881a6-690d-11ed-9022-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

//Practitioner - reply message
Instance: 7c7f31d6-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 6ff69f1c-690d-11ed-9022-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(356947dc-551c-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske
 */
/* 
Instanser anvendt til new message
*/
Instance: e8dd504e-551f-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: fd0666dc-551f-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Hjerteafdelingen på Herlev og Gentofte hospital
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"
// Reciever instance - new message
Instance: 0e0e7f78-5520-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Plejecenter Herlev"

// Practitioners - new message
Instance: 1e2d6388-5520-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* name.given = "Michael"
* name.family = "Burns"

Instance: 2b80d2b8-5520-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* practitioner = Reference(1e2d6388-5520-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske
