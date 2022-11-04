Profile: MedComCareCommunicationMessageHeader
Parent: MedComMessagingMessageHeader
Id: medcom-careCommunication-messageHeader
Description: "Message header for care communication message"
* eventCoding = $MessageEvents#care-communication-message
* focus 1..1 MS
* focus only Reference(MedComCareCommunication)
* focus ^type.aggregation = #bundled


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

// CareCommunication Cancel example
Instance: b0d424f8-33a9-4cc2-a528-a6cc1c58727b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a retract message."
Description: "MessageHeader for CareCommunication cancel message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(282c1fea-551c-11ed-bdc3-0242ac120002)
* sender = Reference(2f12cb92-551c-11ed-bdc3-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(1636f3f8-551e-11ed-bdc3-0242ac120002) 

// CareCommunication modify example
Instance: 40678166-551d-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a modify message."
Description: "MessageHeader for CareCommunication modify message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "http://medcom.dk/unknown"
* destination[primary].receiver = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* sender = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(273bc02c-9000-11ec-b909-0242ac120002) 

// CareCommunication reply example
Instance: d5bd2111-2576-48d3-84d4-8be0297a038d
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a reply message."
Description: "Example of a MessageHeader in a reply CareCommunication message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(9eb51090-5503-11ed-bdc3-0242ac120002)
* sender = Reference(b2c584de-5503-11ed-bdc3-0242ac120002)
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
* sender = Reference(a5e260f6-54ff-11ed-bdc3-0242ac120002)
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
* destination[primary].receiver = Reference(b75abdfa-5519-11ed-bdc3-0242ac120002)
* sender = Reference(c5c393ee-5519-11ed-bdc3-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(487e2238-527b-11ec-bf63-0242ac130002)

// CareCommunication reply to OIOXML example
Instance: 3076d9b0-5521-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Instance of a MessageHeader resource used in a reply to an OIOXML message."
Description: "MessageHeader for CareCommunication reply to an OIOXML message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* destination[primary].receiver = Reference(0e0e7f78-5520-11ed-bdc3-0242ac120002)
* sender = Reference(fd0666dc-551f-11ed-bdc3-0242ac120002)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* focus = Reference(f54efd18-5520-11ed-bdc3-0242ac120002)