# Example



## Flow of CareCommunication 

This section describes five subsequent CareCommunications sent between three healthcare departments concerning the same citizen with test-CPR-nr. 250947-9989. The flow is the examples support is: <br>

A sends a new message to B <br>
B replies to A <br>
A replies to B <br>
B forwards to C <br>
C replies to B <br>

### 1st message - new CareCommunication

[1st message.](/Bundle-add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c.html)

The initial message sent from xx to yy.

The message includes one message segment and a new communication identifier. Since it is a new message the activity is in the Provenance instance 'new-message'. The sender and receiver organizations are both referenced from the MessageHeader. 

The CareCommunication contains a topic at Communication.topic.

### 2nd message - reply CareCommunication

2nd message 

A reply to the 1st message. Since it is a reply to the latest CareCommunication, the Communication.identifier remains the same. Two Communication.payload is added which includes the reply to the new message, since an attachment and message text are included. The activity is in the Provenance instance 'reply-message'. 

The author of the second CareCommunication has included an attachment without structured author information. 

### 3rd message - reply CareCommunication

3rd message 

This is a reply to the 2nd message. Therefore, the Communication.identifier remains the same. One Communication.payload has been added with the reply. The base64-encoded content from the attachment in the 2nd message is not included, only the idenfitier and author information if available.

### 4th message - forward CareCommunication

4th message

This is a forwarding of the 3rd message. Therefore is the Communication.identifier now updated and the base64-encoded content from the attachment in the 2nd message is included. Additional a Communciation.payload is added. The activity is in the Provenance instance 'forward-message'. 

### 5th message - reply CareCommunication

5th message

Is a reply to the 4th message. The Communication.identifier remains the same and the base64-encoded content from the attachment in the 2nd message is not included. 
The author role at PractitionerRole.text is not from the list of roles. Further the sender has included a specific sender of the message. 

## Additional examples of CareCommunication

The examples below demonstrates how different information is included in a CareCommunication. 

### CareCommunication incl. priority

[CareCommunication incl. priority]()

Priority may only be used when the category is 'regarding-referal', as described on the page for the [MedComCareCommunication profile](StructureDefinition-medcom-careCommunication-communication-intro.html).

### CareCommunication incl. episodeOfCare-identifier

[CareCommunication incl. episodeOfCare-identifier]()

The episodeOfCare-identifier is be included in the CareCommunication, as the user of a hospital system in the context of an admission, when creating a CareCommunication. Other usages is described on the page for the [MedComCareCommunication profile](StructureDefinition-medcom-careCommunication-communication-intro.html).

### CareCommunication incl. patient with replacement-CPR-nr. (eCPR)





### CareCommunication as a reply to an OIOXML or EDIFACT message

It is allowed to answer a received MedCom EDIFACT or OIOXML message with a MedCom CareCommunication. The Provenance.entity.what.identifier shall contain a reference to the received OIOXML. The reference shall contain the locationnumber and letter identifier, divided by #. If the message being replied contains an episodOfCareIdentifier, this shall be included in the CareCommunication message.

[Click here to see the generated example of a reply to an OIOXML message.](./Bundle-k7bfbc0c-553d-11ed-bdc3-0242ac120002.html) 
