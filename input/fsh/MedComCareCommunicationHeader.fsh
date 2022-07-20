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
Title: "MessageHeader for CareCommunication new message. Valid only if used in a bundle (message)."
Description: "MessageHeader for CareCommunication new message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "http://medcomfhir.dk/unknown"
* destination[primary].receiver = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* sender = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* source.endpoint = "http://medcomfhir.dk/unknown"
* focus = Reference(94e65db8-2f0c-4a2c-a7c9-06a160d59a12)

// CareCommunication Cancel example
Instance: b0d424f8-33a9-4cc2-a528-a6cc1c58727b
InstanceOf: MedComCareCommunicationMessageHeader
Title: "MessageHeader for CareCommunication cancel message. Valid only if used in a bundle (message)."
Description: "MessageHeader for CareCommunication cancel message. Valid only if used in a bundle (message)."
Usage: #inline
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "http://medcom.dk/unknown"
* destination[primary].receiver = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* sender = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(273bc02c-9000-11ec-b909-0242ac120002) 

// CareCommunication forward example
Instance: d5bd2111-2576-48d3-84d4-8be0297a038d
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Message header for care communication reply message. Valid only if used in a bundle (message)."
Description: "Message header for care communication reply message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "http://medcom.dk/unknown"
* destination[primary].receiver = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* sender = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(4c712bdc-1558-4125-a854-fa8b3a11f6ed)

// CareCommunication reply to hospital notification example
Instance: aac67161-d0de-4933-a78c-060beafb4814
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Message header for care communication forward message. Valid only if used in a bundle (message)."
Description: "Message header for care communication forward message. Valid only if used in a bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "http://medcom.dk/unknown"
* destination[primary].receiver = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* sender = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* source.endpoint = "http://medcom.dk/unknown"
* focus = Reference(0f8cde6a-d369-4d94-a2ce-c2cc45fd75fb)


