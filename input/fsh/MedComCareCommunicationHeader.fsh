Profile: MedComCareCommunicationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-careCommunication-messageHeader
Description: "Message header for care communication message"
* eventCoding = $MessageEvents#care-communication-message
* destination[cc] 0..0
* focus 1..2 MS
* focus only Reference(MedComCareCommunication)
* focus ^type.aggregation = #bundled
//* obeys medcom-careCommunication-4

/* Anvendt til en regle omkring status-værdien
Invariant: medcom-careCommunication-4
Description: "There shall always be a Communication resource with the status 'unknown'"
Severity: #error
Expression: "focus.resolve()" */

// (resolve().count() = 1 and (Communication.status = 'unknown').exists()).exists() or (resolve().count() = 2 and (Communication.status = 'unknown').count() = 1 and (Communication.status = 'entered-in-error').count() = 1)).exists()

// iif(count() = 1 and (status = 'unknown').exists(), true, count() = 2 and (status = 'unknown').count() = 1 and (status = 'entered-in-error').count() = 1, true)"

//"resolve().where(count() = 1) and (status = 'unknown').exists() or where(count() = 2) and (status = 'unknown').count() = 1 and (status = 'entered-in-error').count() = 1"
 


Instance: b4e7e16b-9658-4172-acd7-5e7193f2cc5f
InstanceOf: MedComMessagingDestinationUseExtension
Usage: #inline
* valueCoding.code = $Use#primary

// CareCommunication new example
Instance: 42cb9200-f421-4d08-8391-7d51a2503cb4
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(94e65db8-2f0c-4a2c-a7c9-06a160d59a12)

/* // CareCommunication Cancel example
Instance: b0d424f8-33a9-4cc2-a528-a6cc1c58727b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a retract message."
Description: "MessageHeader for CareCommunication cancel message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
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
* destination[primary].receiver = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
//* focus[0] = Reference(273bc02c-9000-11ec-b909-0242ac120002) 
* focus = Reference(d63178cc-690f-11ed-9022-0242ac120002)  */



// CareCommunication reply example
Instance: d5bd2111-2576-48d3-84d4-8be0297a038d
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a reply message."
Description: "Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* sender = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(4c712bdc-1558-4125-a854-fa8b3a11f6ed)

// CareCommunication forward example
Instance: aac67161-d0de-4933-a78c-060beafb4814
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a forward message."
Description: "Example of a MessageHeader in a forward CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=1042981000016003"
* destination[primary].receiver = Reference(f98ed410-54fe-11ed-bdc3-0242ac120002)
* sender = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* focus = Reference(0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb)

// CareCommunication new example - with attachemnt
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

// CareCommunication new example - with sender and recipient
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
* focus = Reference(e15be831-0454-47fd-a954-c9578a2474cb)

// CareCommunication new example - with priority
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

// CareCommunication new example - with journal note
Instance: 375293b8-2f91-4d08-b13a-83ea76b6d001
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a new message with journal note in message text."
Description: "Example of a MessageHeader in a new CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(33153a8a-97c8-4f55-b7ad-bbedee8bd0e1)
* sender = Reference(c39b114b-a9c1-46bb-ac30-e3ce71f28c3a)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(c34e8284-b353-468f-a2ea-f6ef6330292c)

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


// CareCommunication reply to OIOXML example
Instance: 3076d9b0-5521-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a reply to an OIOXML message."
Description: "MessageHeader for CareCommunication reply to an OIOXML message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(ae899cbd-933b-4581-9a16-bd2da73f06a0)
* sender = Reference(e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(f54efd18-5520-11ed-bdc3-0242ac120002)