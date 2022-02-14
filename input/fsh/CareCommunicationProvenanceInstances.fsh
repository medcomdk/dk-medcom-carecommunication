// CareCommunication example

Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// CareCommunication reply example

Instance: f18213f8-2e2c-458d-86ff-4e48ac5d7162
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 30c0f779-783f-46b2-b38f-faebd2bedb3f
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Usage: #example
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// CareCommunication forward example

Instance: fdcf5a48-8264-48d5-8291-15f54b187b3e
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #inline
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2020-09-28T12:34:56Z
* recorded = 2020-09-28T12:34:56Z
* activity = $ActivityCode#new-message
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

Instance: 7466d9f6-d3ae-4be5-8ed7-b333dad30205
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Usage: #example
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// CareCommunication reply to hospital notification example

Instance: a09a5340-f326-4767-916b-d42a7004d909
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to HospitalNotification"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to HospitalNotification"
Usage: #example
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2020-10-16T13:43:16Z
* recorded = 2020-10-16T13:43:16Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what = Reference(51b27813-8aa8-4fa1-846b-aeabf5afb7d4)

Instance: 5c1cd361-9691-4d49-bac8-034313907f16
InstanceOf: MedComMessagingProvenance
Title: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient, target is a CareCommunication"
Description: "HospitalNotification example. The Provenance instance is only valid if used in a bundle (message) - admit inpatient, target is a CareCommunication"
Usage: #inline
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2020-10-15T13:44:14Z
* recorded = 2020-10-15T13:45:15Z
* activity = $ActivityCode#admit-inpatient
* agent.who = Reference(d7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// CareCommunication reply to XDIS message

Instance: 6de0806d-7050-4db8-8003-0c72aee52948
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Usage: #example
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2020-09-30T10:22:11Z
* recorded = 2020-09-30T10:22:11Z
* activity = $ActivityCode#reply-message
* agent.who = Reference(74cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity.role = #derivation
* entity.what.identifier.value = "5790000120420#BrevNr00133"
