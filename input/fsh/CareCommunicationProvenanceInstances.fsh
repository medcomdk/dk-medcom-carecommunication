// CareCommunication example - new message
Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComCareCommunicationProvenance
Title: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "1st message - The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-05-01T12:00:00+01:00
* recorded = 2024-05-01T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:b2eb3d0e-5de5-4de9-b2a3-0ff321ad1c3a"

// CareCommunication example - new message w. attachment
Instance: ee619a58-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(dc04b8c2-5519-11ed-bdc3-0242ac120002)
* occurredDateTime = 2024-05-01T12:00:00+01:00
* recorded = 2024-05-01T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(85669d18-2bb3-4c6e-80d2-e039a63a521c)
* entity[payload][0].role = #source
* entity[payload][0].what.identifier.value = "hej"
* entity[payload][1].role = #source
* entity[payload][1].what.identifier.value = "hdskjfhjk"

// CareCommunication example - new message w. sender and recipient
Instance: 5275fdd5-6fa9-44bb-88c3-581795cdb8c6
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(bfe2d85f-5551-4a01-94f5-5d4b66000ad0)
* occurredDateTime = 2024-05-01T12:00:00+01:00
* recorded = 2024-05-01T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(c5c393ee-5519-11ed-bdc3-0242ac120002)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hej"

// CareCommunication example - new message w. priority
Instance: 9426fb7b-aa5d-4391-ad22-3d46a581560e
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(4f3bc2ea-2214-44d7-ba02-e286ddf2b51e)
* occurredDateTime = 2024-05-01T12:00:00+01:00
* recorded = 2024-05-01T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(fae4c8cf-e5d6-404d-867d-97ffa49a1c58)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hej"

// CareCommunication example - new message w. journalnote
Instance: 790daa1e-bf50-4ee0-af8c-31c493e272bb
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(375293b8-2f91-4d08-b13a-83ea76b6d001)
* occurredDateTime = 2024-05-01T12:00:00+01:00
* recorded = 2024-05-01T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(c39b114b-a9c1-46bb-ac30-e3ce71f28c3a)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hej"

// CareCommunication example - new message w. formatted message text
Instance: 33d460d7-670a-449b-90f1-8f677c809729
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(2f0db363-234c-4096-82f7-3fd63057fd94)
* occurredDateTime = 2024-05-01T12:00:00+01:00
* recorded = 2024-05-01T12:00:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(9b876149-842d-4b09-8d3d-27468210d343)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hej"

// CareCommunication modify example
Instance: f18213f8-2e2c-458d-86ff-4e48ac5d7162
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - modified message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - modified message"
Usage: #inline
* target = Reference(f8aa0bf0-690d-11ed-9022-0242ac120002)
* occurredDateTime = 2024-05-01T12:30:00+01:00
* recorded = 2024-05-01T12:30:00+01:00
* activity.coding = $ActivityCode#modified-message
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d) 
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hej"

/* // CareCommunication entered-in-error example
Instance: 16fac3d8-551d-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - entered in error message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - entered in error message"
Usage: #inline
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2024-05-01T12:05:10Z
* recorded = 2024-05-01T12:05:11Z
* activity.coding = $ActivityCode#retract-message
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d) 
* entity.role = #removal
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4) */

Instance: 30c0f779-783f-46b2-b38f-faebd2bedb3f
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Usage: #example
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2024-05-02T11:30:00+01:00
* recorded = 2024-05-02T11:30:00+01:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "urn:uuid:24d01288-ad36-4af2-96a8-fd1432dadee1"

Instance: 7466d9f6-d3ae-4be5-8ed7-b333dad30205
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Usage: #example
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2024-05-02T09:00:00+01:00
* recorded = 2024-05-02T09:00:00+01:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(o4cdf292-abf3-4f5f-80ea-60a48013ff6d)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hjk"



// CareCommunication reply to XDIS message
Instance: 6de0806d-7050-4db8-8003-0c72aee52948
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Usage: #example
* target = Reference(3076d9b0-5521-11ed-bdc3-0242ac120002)
* occurredDateTime = 2024-05-03T12:00:00+01:00
* recorded = 2024-05-03T12:00:00+01:00
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(e17d03b8-e7fd-4654-bc9c-cb2eb5dda71f)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what.identifier.value = "B300720181623#5790000121526"
* entity[payload].role = #source
* entity[payload].what.identifier.value = "jkl"
