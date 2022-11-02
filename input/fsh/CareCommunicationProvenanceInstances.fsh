// CareCommunication example - new message
Instance: 4c284936-5454-4116-95fc-3c8eeeed2400
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2022-10-01T12:00:10Z
* recorded = 2022-10-01T12:00:10Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d)

// CareCommunication example - new message w. attachment
Instance: ee619a58-5519-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Usage: #example
* target = Reference(dc04b8c2-5519-11ed-bdc3-0242ac120002)
* occurredDateTime = 2022-10-01T12:00:11Z
* recorded = 2022-10-01T12:00:11Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(c5c393ee-5519-11ed-bdc3-0242ac120002)

// CareCommunication modify example
Instance: f18213f8-2e2c-458d-86ff-4e48ac5d7162
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - modified message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - modified message"
Usage: #inline
* target = Reference(40678166-551d-11ed-bdc3-0242ac120002)
* occurredDateTime = 2020-09-28T16:34:56Z
* recorded = 2020-09-28T16:34:56Z
* activity.coding = $ActivityCode#modified-message
* agent.who = Reference(o7056980-a8b2-42aa-8a0e-c1fc85d1f40d) 
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

// CareCommunication entered-in-error example
Instance: 16fac3d8-551d-11ed-bdc3-0242ac120002
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - entered in error message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - entered in error message"
Usage: #inline
* target = Reference(b0d424f8-33a9-4cc2-a528-a6cc1c58727b)
* occurredDateTime = 2022-10-01T12:05:10Z
* recorded = 2022-10-01T12:05:11Z
* activity.coding = $ActivityCode#retract-message
* agent.who = Reference(2f12cb92-551c-11ed-bdc3-0242ac120002) 
* entity.role = #removal
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

Instance: 30c0f779-783f-46b2-b38f-faebd2bedb3f
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to new message"
Usage: #example
* target = Reference(d5bd2111-2576-48d3-84d4-8be0297a038d)
* occurredDateTime = 2022-10-02T11:30:11Z
* recorded = 2022-10-02T11:30:11Z
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(b2c584de-5503-11ed-bdc3-0242ac120002)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)

Instance: 7466d9f6-d3ae-4be5-8ed7-b333dad30205
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message being forwarded"
Usage: #example
* target = Reference(aac67161-d0de-4933-a78c-060beafb4814)
* occurredDateTime = 2022-10-02T11:30:11Z
* recorded = 2022-10-02T11:30:11Z
* activity.coding = $ActivityCode#forward-message
* agent.who = Reference(a5e260f6-54ff-11ed-bdc3-0242ac120002)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)



// CareCommunication reply to XDIS message
Instance: 6de0806d-7050-4db8-8003-0c72aee52948
InstanceOf: MedComMessagingProvenance
Title: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - reply to OIOXML-message"
Usage: #example
* target = Reference(3076d9b0-5521-11ed-bdc3-0242ac120002)
* occurredDateTime = 2022-10-01T12:00:11Z
* recorded = 2022-10-01T12:00:11Z
* activity.coding = $ActivityCode#reply-message
* agent.who = Reference(fd0666dc-551f-11ed-bdc3-0242ac120002)
* entity.role = #revision
* entity.what.identifier.value = "B300720181623#5790000121526"
