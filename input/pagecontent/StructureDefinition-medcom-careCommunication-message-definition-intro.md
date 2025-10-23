### Scope and usage 

This MessageDefinition profile defines the characteristics of a message that can be shared between systems, including the type of event that initiates the message, the content to be transmitted and what response(s), are permitted.
This profile should not be included in the exchange of a CareCommunication message, but can be used to extract relevant information concerning the message, for usage in the VANSEnvelope. The MedComCareCommunicationMessageHeader profile includes an required url to this profile in the element MessageHeader.definition. 
