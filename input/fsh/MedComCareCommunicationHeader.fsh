Profile: MedComCareCommunicationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-careCommunication-messageHeader
Description: "Message header for CareCommunication message"
* eventCoding.code = #care-communication-message
* eventCoding.system = $MessageEvents
* destination[cc] ..0
* destination[primary].extension[use].valueCoding.system 1..
* destination[primary].extension[use].valueCoding.code 1..
* focus 1..1 MS
* focus only Reference(MedComCareCommunication)
* focus ^type.aggregation = #bundled
* definition 1..1
* definition obeys medcom-carecommunication-definition-url
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(eventCoding.code)
* insert ProducerShallPutInNarrative(destination[primary].extension[use].valueCoding.code)
* insert ProducerShallPutInNarrative(destination[primary].endpoint)
* insert ProducerShallPutInNarrative(destination[primary].receiver)
* insert ProducerShallPutInNarrative(destination[cc].extension[use].valueCoding.code)
* insert ProducerShallPutInNarrative(destination[cc].endpoint)
* insert ProducerShallPutInNarrative(destination[cc].receiver)
* insert ProducerShallPutInNarrative(sender)
* insert ProducerShallPutInNarrative(source.endpoint)
* insert ProducerShallPutInNarrative(focus)

Invariant: medcom-carecommunication-definition-url
Description: "SHALL reference a MedCom CareCommunication MessageDefinition whose canonical URL starts with
http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition5. — that is, any version 5.x of the message definition. The current minor version the sender uses must be added in the end of the definition."
Expression: "matches('^http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComCareCommunicationMessageDefinition5[.][0-9]{1,2}$')"
Severity: #error


Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding.code = $Use#primary


/* // CareCommunication Cancel example
Instance: b0d424f8-33a9-4cc2-a528-a6cc1c58727b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a retract message."
Description: "MessageHeader for CareCommunication cancel message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* sender = Reference(b581c63c-181f-46f6-990d-b9942c576724)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus[0] = Reference(1636f3f8-551e-11ed-bdc3-0242ac120002) 
* focus[1] = Reference(94e65db8-2f0c-4a2c-a7c9-06a160d59a12)  */

/* // CareCommunication modify example
Instance: f8aa0bf0-690d-11ed-9022-0242ac120002
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a modify message."
Description: "MessageHeader for CareCommunication modify message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* sender = Reference(b581c63c-181f-46f6-990d-b9942c576724)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
//* focus[0] = Reference(273bc02c-9000-11ec-b909-0242ac120002) 
* focus = Reference(d63178cc-690f-11ed-9022-0242ac120002)  */






/* // CareCommunication new example - with attachemnt
Instance: dc04b8c2-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message with attachment."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(bf24f51c-a99b-47db-a785-8c5ef22ebc27)
* sender = Reference(85669d18-2bb3-4c6e-80d2-e039a63a521c)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(487e2238-527b-11ec-bf63-0242ac130002)
 */
/* // CareCommunication new example - with sender and recipient
Instance: bfe2d85f-5551-4a01-94f5-5d4b66000ad0
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message with sender and recipient."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(b75abdfa-5519-11ed-bdc3-0242ac120002)
* sender = Reference(c5c393ee-5519-11ed-bdc3-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(e15be831-0454-47fd-a954-c9578a2474cb) */

/* // CareCommunication new example - with priority
Instance: 4f3bc2ea-2214-44d7-ba02-e286ddf2b51e
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message with priority."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(4e03a9cd-4d75-4e01-9420-7f0b4ecff305)
* sender = Reference(fae4c8cf-e5d6-404d-867d-97ffa49a1c58)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(4ec35384-527b-11ec-bf63-0242ac130002)
 */


/* // CareCommunication new example - with formatted messagetext
Instance: 2f0db363-234c-4096-82f7-3fd63057fd94
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message with formatted message text."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(1680e847-abee-48ad-8704-65eb8225a3cb)
* sender = Reference(9b876149-842d-4b09-8d3d-27468210d343)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(3131b349-5162-48a9-9135-9ba730601faa) */


