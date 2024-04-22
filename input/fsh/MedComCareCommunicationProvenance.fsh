Profile: MedComCareCommunicationProvenance
Parent: MedComMessagingProvenance
Id: medcom-careCommunication-provenance
Description: "Provenance information about the current and preceeding message."
* target only Reference(MedComCareCommunicationMessageHeader)
* activity from $CareCommunicationActivities
* entity 1..* 
* entity ^slicing.discriminator.type = #value
* entity ^slicing.discriminator.path = "what.identifier, what.reference"
* entity ^slicing.rules = #open
* entity contains
    payload 1.. MS and
    previousMessage 0.. MS
* entity[payload] ^short = "An identifier for the payload included during this revision. If more payloads are added, each payload must be represented with an individual entity."
* entity[payload].role MS
* entity[payload].role ^short = "The role shall be 'revision'."
* entity[payload].what 1..1 MS
* entity[payload].what ^short = "A reference to the payload included in this revision."
* entity[payload].what.identifier 1..1 MS
* entity[payload].what.identifier ^short = "The identifier of the newly included Communication.payload.extension.valueIdentifier must be included here."
* entity[previousMessage] ^short = "Shall be included when the current message is a response to a previous message."
* entity[previousMessage].role MS
* entity[previousMessage].role ^short = "When a message is a response or a forwarding message the role shall be 'revision'."
* entity[previousMessage].what MS
* entity[previousMessage].what ^short = "A reference to the previous message. If the previous message is a FHIR message, the reference element must be used and if the previous message is an EDIFACT or OIOXML, the identifier element must be used."
* entity[previousMessage].what.identifier MS
* entity[previousMessage].what.identifier ^short = "If the previous message is EDIFACT or OIOXML, this element must be expressed as [lokationsnummer]#[brevid] from the EDIFACT or OIOXML message."
* entity[previousMessage].what.reference MS
* entity[previousMessage].what.reference ^short = "If the previous message is a FHIR message, this element must contain the MessageHeader.id from previous message."

