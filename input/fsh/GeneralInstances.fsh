/* 
Instanser anvendt til new message
*/
Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "1st message - Bruno Test Elmer"
Description: "1st message - Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"
* name[official].given = "Bruno"

Instance: b581c63c-181f-46f6-990d-b9942c576724
InstanceOf: MedComMessagingOrganization // 
Title: "1st message - Example of a sender organization with a SOR and an EAN identifier."
Description: "1st message - Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Hjerteafdelingen på Herlev og Gentofte hospital"

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
* identifier.value = "urn:uuid:520a2af7-4cac-479b-8219-fcefd060ce6a"
* name.given = "Michael"
* name.family = "Burns"

Instance: eda90bde-54f9-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:07f9df46-05d1-41e7-a51c-e5d7b5e9c72a"
* practitioner = Reference(58c811a5-4082-44eb-9d66-ccbb112d4973)
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
* identifier.value = "urn:uuid:1a9b5f4f-7652-4de0-9595-b5779f30cbae"
* name.given = "Michael"
* name.family = "Burns"

Instance: ac1dfd45-a135-47b8-acd7-db0405e21dd0
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:562db31d-caed-4bfe-8312-0331fb6a837d"
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
* identifier.value = "urn:uuid:99bad89f-f60b-4dbe-97a6-00b4c0187d7a"
* name.given = "Michael"
* name.family = "Burns"

Instance: e0aca758-487a-4536-b750-35753cbef090
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:64a7722c-7c4e-4e66-9488-4f6bab977cd3"
* practitioner = Reference(5d37f9e1-2beb-4528-81bf-d521d108c738)
* code = $PractitionerRole#sygeplejerske

// Practitioners - new message with attachment
Instance: b12c1357-62f1-455e-b07a-3ebf454c50bc
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* identifier.value = "urn:uuid:d9f6317e-77ed-4663-9596-76ae9a2db3cb"
* name.given = "Hans"
* name.family = "Hansen"

Instance: 7f3c3dbb-1b40-41f7-8acc-fb82eb3d4dd3
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:0cfd262f-9332-427a-9e63-e501b79f5031"
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
* identifier.value = "urn:uuid:209133f8-7800-4981-8366-f2ce1d5fb1ed"
* name.given = "Michael"
* name.family = "Burns"

Instance: 35bb99e4-551a-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:63298543-1615-4aad-a795-27227ac695d6"
* practitioner = Reference(20eac382-551a-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske





//Practitioner - forward message
Instance: ad055a3d-16b6-41f9-891a-7dd73eecaf03
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* identifier.value = "urn:uuid:71207b1d-a1cd-4334-bebe-4486acac7ad3"
* name.given = "Emma"
* name.family = "Waters"

Instance: 7cae09e0-5501-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:6c7536f7-a2ce-4c2e-9d16-ad66e5cfa80c"
* practitioner = Reference(ad055a3d-16b6-41f9-891a-7dd73eecaf03)
* code = $PractitionerRole#sygeplejerske




//Practitioner - reply message
Instance: 7ffff970-5504-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitioner
Title: "Simple practitioner with a name"
Description: "Simple practitioner with a name"
* identifier.value = "urn:uuid:a28ae55f-7c8b-435a-9f4d-c86e281832e3"
* name.given = "Emma"
* name.family = "Waters"

Instance: 8bf63050-5504-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:3e6efe42-b4f1-4e63-ab0f-91a4eb9363a7"
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
* identifier.value = "urn:uuid:308bbd33-7903-4f6e-843c-806ed2f4f1e1"
* name.given = "Michael"
* name.family = "Burns"

Instance: 2b80d2b8-5520-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePractitionerRole
Title: "PractitionerRole with a role and reference to a practitioner"
Description: "PractitionerRole with a role and reference to a practitioner"
* identifier.value = "urn:uuid:88b4f532-91bf-41a9-8176-3a410d06849b"
* practitioner = Reference(1e2d6388-5520-11ed-bdc3-0242ac120002)
* code = $PractitionerRole#sygeplejerske
