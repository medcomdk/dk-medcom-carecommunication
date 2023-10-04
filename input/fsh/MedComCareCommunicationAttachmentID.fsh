/* Extension: MedComIdentifierExtension
Id: medcom-identifier-extension
Title: "IdentifierExtension"
Description: "An extension holding identifier"
* valueIdentifier 1.. MS
* valueIdentifier only MedComMessageSegmentIdentifier


Profile: MedComMessageSegmentIdentifier
Parent: Identifier
Id: medcom-message-segment-identifier
Title: "An identifier for a message segment."
Description: "An unique identifier for a message segment used in a CareCommunication message"
* value 1..
* value ^short = "The value is a UUID identifier version 4."
* value obeys medcom-uuidv4
* assigner 1..
* assigner ^short = "A reference to the organization that initially added the message segment."
* assigner only Reference(MedComCoreOrganization)
* assigner and value MS

Invariant: medcom-uuidv4
Description: "The value shall correspond to the structure of an UUID version 4"
Severity: #error
Expression: "value.matches('urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')" */