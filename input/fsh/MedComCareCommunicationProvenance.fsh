Profile: MedComCareCommunicationProvenance
Parent: MedComMessagingProvenance
Id: medcom-careCommunication-provenance
Description: "Provenance information about the current and preceeding message."
* meta 1..1 MS
* meta.profile 1..1 MS SU
* occurredDateTime MS
* target only Reference(MedComCareCommunicationMessageHeader)
* activity from $CareCommunicationActivities
* entity 1..* 
* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "role"
* entity ^slicing.ordered = false
* entity ^slicing.rules = #closed
* entity contains
    preceedingMessage 0..1 MS and 
    payload 1..* MS
* entity[preceedingMessage] ^short = "Shall be included when the current message is a response to a previous FHIR message."
* entity[preceedingMessage].role MS
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].role ^short = "When a message is a response or a forwarding message the role shall be 'revision'."
* entity[preceedingMessage].what MS
//* entity[preceedingMessage].what obeys medcom-careCommunication-14
* entity[preceedingMessage].what ^short = "A reference to the previous message. If the previous message is a FHIR message , the reference element must be used and if the previous message is an EDIFACT or OIOXML, the identifier element must be used."
* entity[preceedingMessage].what.reference 0..1 MS
* entity[preceedingMessage].what.reference ^short = "If the previous message is a FHIR message, this element must contain the MessageHeader.id from previous message."
* entity[preceedingMessage].what.identifier 0..1 MS
* entity[preceedingMessage].what.identifier ^short = "If the previous message is EDIFACT or OIOXML, this element must be expressed as [lokationsnummer]#[brevid] from the EDIFACT or OIOXML message."
* entity[payload] ^short = "An identifier for the payload included during this revision. If more payloads are added, each payload must be represented with an individual entity."
* entity[payload].role MS
* entity[payload].role = #source
* entity[payload].role ^short = "The role shall be 'source' or 'revision'."
* entity[payload].what MS
* entity[payload].what ^short = "A reference to the payload included in this message."
* entity[payload].what.identifier 1..1 MS
* entity[payload].what.identifier ^short = "The identifier of the newly included Communication.payload.extension.valueIdentifier must be included here."

Invariant: medcom-careCommunication-14
Description: "A reference or an identifier to a previous message must exists"
Severity: #error
Expression: "reference.exists() or identifier.exists()"
