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


[Click here to see complete examples of CareCommunication messages including; attachments, sender and recipient, priority and more.](./StructureDefinition-medcom-careCommunication-message-examples.html)


CareCommunication with
* patient with replacement-cpr
* priority
* episodeOfCare-identifier
* reply to an OIOXML or EDIFACT message.

It is allowed to answer a received MedCom EDIFACT or OIOXML message with a MedCom CareCommunication. The Provenance.entity.what.identifier shall contain a reference to the received OIOXML. The reference shall contain the locationnumber and letter identifier, divided by #. If the message being replied contains an episodOfCareIdentifier, this shall be included in the CareCommunication message.

[Click here to see the generated example of a reply to an OIOXML message.](./Bundle-k7bfbc0c-553d-11ed-bdc3-0242ac120002.html) 












##### New Message 
Below can a simplified example of a new CareCommunication be seen with the minimum requirements. Since the example is a new message is the activity in the Provenance instance 'new-message'. The sender and receiver organisations are both referenced from the MessageHeader and are included in the message, and the Communication.status is *unknown*.

* [1 - Simplified example of a new CareCommunication](./carecommunication/CCNewMessage.svg)

[Click here to see the generated example of simplified example number 1.](./Bundle-add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c.html) 

##### Reply Message 
This simplified example describes how a reply to a CareCommunication shall be handled.
When sending a reply to a received CareCommunication the reply shall contain the message segment(s) including message text, and the Provenance instance(s) from the previous message shall be included.
The Provenance.entity.role shall be *revision* and Provenance.entity.what.reference shall contain a reference to the MessageHeader.id of the previous message as the reply is the based on a previous entity. Provenance.activity shall be *reply-message*, and the Communication.status is *unknown*. This is a reply to '1 - Simplified example of a new CareCommunication'. 

* [2 - Simplified example of a reply CareCommunication](./carecommunication/CCreplyMessage.svg)

[Click here to see the generated example of simplified example number 2.](./Bundle-b56549f7-ed10-422d-8088-f7222b686e46.html) 



##### Forward Message 
This simplified example describes how to forward a CareCommunication.  
When forwarding a received CareCommunication the forward message shall contain both the message segment(s) that are being forwarded, as well as a message segment describing the reason for the forwarding. Further the message contains the instance(s) of the Provenance resource from the previous message.
The Provenance.entity.role shall be *revision* and Provenance.entity.what.reference shall be a reference to the MessageHeader.id of the previous message. Provenance.activity shall be *forward-message*. This message is forwarding '1 - Simplified example of a new CareCommunication'.

* [3 - Simplified example of a forwarded CareCommunication](./carecommunication/CCForwardMessage2.svg)

[Click here to see the generated example of simplified example number 3.](./Bundle-c0426e3e-978f-46e8-a366-a30f27854b0a.html) 

> Note: All systems must be able to receive and display forwarded messages, but it is optional to support forwarding of a message.
