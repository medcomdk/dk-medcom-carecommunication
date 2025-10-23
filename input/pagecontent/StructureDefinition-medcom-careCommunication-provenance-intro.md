### Scope and usage 
This profile is used as the Provenance in a CareCommunication message. This profile inherits from [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) and must be used as Provenance instance in the CareCommuncation message. The Provenance resource tracks information about the activity what was created, while referencing the current message and previous messages if such exist. Further, does the profile include the identifier of the message segment (also referred to as payload).

#### Entities

The element Provenance.entity is sliced. One slice is called payload, and contains the identifier for the payloads added in the current CareCommunication. The second slice is called previousMessage is used when the message is a reply or forwarding. In these cases, the Provenance.entity must refer to the previous message.

Please refer to the tab "Snapshot Table" below for the definition of the required content of a MedComCareCommunicationMessageHeader.
