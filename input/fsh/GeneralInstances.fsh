/* 
Instanser anvendt til new message
*/
Instance: 733cef33-3626-422b-955d-d506aaa65fe1
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - new message
Instance: o7056980-a8b2-42aa-8a0e-c1fc85d1f40d
InstanceOf: MedComMessagingOrganization // Hjerteafdelingen på Herlev og Gentofte hospital
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Sender Organization"
// Reciever instance - new message
Instance: o4cdf292-abf3-4f5f-80ea-60a48013ff6d
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Receiver Organization"

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
Instanser anvent til new message - with attachement, encounter and recipient 
*/
Instance: 833cef33-3726-433b-855d-e566aaa65fe1
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// MedComCoreEncounter instance
Instance: 6220b42d-c4fd-4c77-bae7-78e7d890dc8d
InstanceOf: MedComCoreEncounter
Title: "MedCom Core Encounter"
Description: "Example of a simple MedCom Core Encounter"
* status = $StatusCodes#finished 
* class = $ActCodes#IMP 
* subject = Reference(833cef33-3726-433b-855d-e566aaa65fe1)
* episodeOfCare[lpr3identifier].identifier.value = "urn:uuid:fc60e762-b13b-5773-865e-67f3907bdcc7"


// Sender instance - new message for attachement
Instance: c5c393ee-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Hjerteafdelingen på Herlev og Gentofte hospital
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Sender Organization"
// Reciever instance - new message for attachement
Instance: b75abdfa-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Receiver Organization"

// Recipient instance - new message with attachment
Instance: 048b2ab0-550b-11ed-bdc3-0242ac120002
InstanceOf: MedComCoreOrganization // Herlevgaard Center Herlev Kommune
Title: "Example of a recipient organization with a SOR identifier."
Description: "Example of an organization with a SOR identifier."
* identifier[SOR-ID].value = "1042981000016003" 
* name = "Recipient Organization"

// Practitioners - new message with attachment
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

/* 
Instanser anvent til forward message 
*/
Instance: 31c90594-54ff-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// Sender instance - forward message
Instance: a5e260f6-54ff-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Sender Organization"
// Receiver instance - forward message
Instance: f98ed410-54fe-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Herlevgaard Center Herlev Kommune
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "1042981000016003" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Receiver Organization"

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


/* 
Instanser anvent til reply message 
*/
Instance: 448cd4ee-5504-11ed-bdc3-0242ac120002
InstanceOf: MedComCorePatient
Title: "Bruno Test Elmer"
Description: "Patient described with minimal information. Valid only if used in a Bundle."
Usage: #example
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].family = "Elmer"

// receiver instance - reply message
Instance: 9eb51090-5503-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Hjerteafdelingen på Herlev og Gentofte hospital
Title: "Example of a receiver organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"
// sender instance - reply message
Instance: b2c584de-5503-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Sender Organization"

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
Instanser anvent til Entered-in-error message 
*/
Instance: 1f697de4-551c-11ed-bdc3-0242ac120002
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
* name = "Sender Organization"
// Reciever instance - new message
Instance: 282c1fea-551c-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Receiver Organization"

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
* name = "Sender Organization"
// Reciever instance - new message
Instance: 0e0e7f78-5520-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingOrganization // Plejecenter Herlev
Title: "Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009" 
* identifier[EAN-ID].value = "5790001348120" 
* name = "Receiver Organization"

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
