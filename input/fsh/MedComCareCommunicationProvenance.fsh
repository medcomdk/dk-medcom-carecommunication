Profile: MedComCareCommunicationProvenance
Parent: MedComMessagingProvenance
Id: medcom-careCommunication-provenance
Description: "Provenance information about the current and preceeding message."
* target only Reference(MedComCareCommunicationMessageHeader)
* activity from $CareCommunicationActivities
* entity 1..* 
* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "what.reference or what.identifier"
* entity ^slicing.rules = #open
* entity contains
    payload 1.. MS and
    previousFHIRMessage 0..1 MS and
    previousNonFHIRMessage 0..1 MS
* entity[payload] ^short = "An identifier for the payload included during this revision. If more payloads are added, each payload must be represented with an individual entity."
* entity[payload].role MS
* entity[payload].role ^short = "The role shall be 'revision' or 'source'."
* entity[payload].what 1..1 MS
* entity[payload].what ^short = "A reference to the payload included in this message."
* entity[payload].what.identifier 1..1 MS
* entity[payload].what.identifier ^short = "The identifier of the newly included Communication.payload.extension.valueIdentifier must be included here."
* entity[previousFHIRMessage] ^short = "Shall be included when the current message is a response to a previous FHIR message."
* entity[previousFHIRMessage].role MS
* entity[previousFHIRMessage].role ^short = "When a message is a response or a forwarding message the role shall be 'revision'."
* entity[previousFHIRMessage].what MS
* entity[previousFHIRMessage].what ^short = "A reference to the previous message. If the previous message is a FHIR message, the reference element must be used and if the previous message is an EDIFACT or OIOXML, the identifier element must be used."
* entity[previousFHIRMessage].what.reference 1..1 MS
* entity[previousFHIRMessage].what.reference ^short = "If the previous message is a FHIR message, this element must contain the MessageHeader.id from previous message."
* entity[previousNonFHIRMessage] ^short = "Shall be included when the current message is a response to a previous non FHIR message."
* entity[previousNonFHIRMessage].role MS
* entity[previousNonFHIRMessage].role ^short = "When a message is a response or a forwarding message the role shall be 'revision'."
* entity[previousNonFHIRMessage].what MS
* entity[previousNonFHIRMessage].what ^short = "A reference to the previous message. If the previous message is a FHIR message, the reference element must be used and if the previous message is an EDIFACT or OIOXML, the identifier element must be used."
* entity[previousNonFHIRMessage].what.identifier 1..1 MS
* entity[previousNonFHIRMessage].what.identifier ^short = "If the previous message is EDIFACT or OIOXML, this element must be expressed as [lokationsnummer]#[brevid] from the EDIFACT or OIOXML message."
