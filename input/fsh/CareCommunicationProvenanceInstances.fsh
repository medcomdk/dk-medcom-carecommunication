/*
// CareCommunication example - new message w. attachment
Instance: ee619a58-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(dc04b8c2-5519-11ed-bdc3-0242ac120002)
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
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
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
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
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(fae4c8cf-e5d6-404d-867d-97ffa49a1c58)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hej"



// CareCommunication example - new message w. formatted message text
Instance: 33d460d7-670a-449b-90f1-8f677c809729
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(2f0db363-234c-4096-82f7-3fd63057fd94)
* occurredDateTime = 2024-05-01T12:00:00+02:00
* recorded = 2024-05-01T12:00:00+02:00
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
* occurredDateTime = 2024-05-01T12:30:00+02:00
* recorded = 2024-05-01T12:30:00+02:00
* activity.coding = $ActivityCode#modified-message
* agent.who = Reference(b581c63c-181f-46f6-990d-b9942c576724) 
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
* agent.who = Reference(b581c63c-181f-46f6-990d-b9942c576724) 
* entity.role = #removal
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4) 


Instance: 7466d9f6-d3ae-4be5-8ed7-b333dad30205
InstanceOf: MedComCareCommunicationProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Usage: #example
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2024-05-02T09:00:00+02:00
* recorded = 2024-05-02T09:00:00+02:00
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(487ac745-fd11-4879-9b59-c08c7d47260e)
* entity[preceedingMessage].role = #revision
* entity[preceedingMessage].what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* entity[payload].role = #source
* entity[payload].what.identifier.value = "hjk"

*/


