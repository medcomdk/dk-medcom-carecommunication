Extension:  MedComCareCommunicationAttachmentExtension
Id: medcom-carecommunication-attachment-identifier-extension
Title: "AttachmentIdentifierExtension"
Description: "An extension holding an attachment identifier"
* valueIdentifier 1.. MS
* valueIdentifier only MedComCareCommunicationAttachmentIdentifier


Profile: MedComCareCommunicationAttachmentIdentifier
Parent: Identifier
Id: medcom-carecommunication-attachment-identifier
Title: "An identifier for an attachment."
Description: "An unique identifier for an attachment used in a CareCommunication message"
* value 1..
* value ^short = "The value is a UUID identifier, which shall be applied when an attachment is included. If the attachment is edited and reattached, a new UUID shall be applied."
* value obeys medcom-uuidv4
* assigner 1..
* assigner ^short = "A reference to the organization that initially attached the attachment."
* assigner only Reference(MedComCoreOrganization)
* assigner and value MS

Invariant: medcom-uuidv4
Description: "The value shall correspond to the structure of an UUID version 4"
Severity: #error
Expression: "value.matches('urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"