# Example



## Flow of CareCommunication 

This section describes five subsequent CareCommunications sent between three healthcare departments concerning the same citizen. The flow is decribes as 

A sends a new message to B
B replies to A 
A replies to B
B forwards to C
C replies to B

### 1st message - new CareCommunication

[1st message.](/Bundle-add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c.html)

The initial message sent from xx to yy concerning test-CPR-nr. 250947-9989.

The message includes one message segment and a new communication identifier. Since it is a new message the activity is in the Provenance instance 'new-message'. The sender and receiver organizations are both referenced from the MessageHeader. All content is contained the Bundle.

### 2nd message - reply CareCommunication

2nd message 

A reply the the 1st message. Since it is a reply to the latest CareCommunication, the communication identifier remains the same. A Communication.payload is added which includes the reply to the new message. The activity is in the Provenance instance 'reply-message'. 


### 3rd message - reply CareCommunication

The initial message sent from 

### 4th message - forward CareCommunication

The initial message sent from 

### 5th message - reply CareCommunication

The initial message sent from 


## Additional examples of CareCommunication


[Click here to see complete examples of CareCommunication messages including; attachments, sender and recipient, priority and more.](./StructureDefinition-medcom-careCommunication-message-examples.html)


















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

It is allowed to answer a received MedCom EDIFACT or OIOXML message with a MedCom CareCommunication. The Provenance.entity.what.identifier shall contain a reference to the received OIOXML. The reference shall contain the locationnumber and letter identifier, divided by #. If the message being replied contains an episodOfCareIdentifier, this shall be included in the CareCommunication message.

[Click here to see the generated example of a reply to an OIOXML message.](./Bundle-k7bfbc0c-553d-11ed-bdc3-0242ac120002.html) 

##### Forward Message 
This simplified example describes how to forward a CareCommunication.  
When forwarding a received CareCommunication the forward message shall contain both the message segment(s) that are being forwarded, as well as a message segment describing the reason for the forwarding. Further the message contains the instance(s) of the Provenance resource from the previous message.
The Provenance.entity.role shall be *revision* and Provenance.entity.what.reference shall be a reference to the MessageHeader.id of the previous message. Provenance.activity shall be *forward-message*. This message is forwarding '1 - Simplified example of a new CareCommunication'.

* [3 - Simplified example of a forwarded CareCommunication](./carecommunication/CCForwardMessage2.svg)

[Click here to see the generated example of simplified example number 3.](./Bundle-c0426e3e-978f-46e8-a366-a30f27854b0a.html) 

> Note: All systems must be able to receive and display forwarded messages, but it is optional to support forwarding of a message.

##### Modify Message
If the sender wants to modify a previously send CareCommunication, the sender shall create a modification message. A modification may be used when correcting a part of the message text, the category and/or topic, the content of an attachment, author information or episodeOfCare-identifier. The modification message shall contain both the message segment that are being modified from the previous message, as well as a message segment containing the actual modification or describing the modification, e.g. if the category is corrected.  
There shall be a Provenance instance referencing the message being modified, and a Provenance instance referencing the modification message, where Provenance.entity.what.reference element points to the MessageHeader.id of the previous message. In the latter instance of the Provenance resource, Provenance.entity.role shall be *revision* and the Provenance.activity shall be *modify-message*. 

* [4 - Simplified example of a modifying a CareCommunication](./carecommunication/CCmodifyMessage.svg)

[Click here to see the generated example of simplified example number 4.](./Bundle-df9019c6-690d-11ed-9022-0242ac120002.html) 

> Note: All systems must be able to receive and display modified messages, but it is optional to support sending modify message.

##### Cancel Message  
If the sender wants to cancel a previously send CareCommunication, the sender shall create a cancellation message. A message shall be cancelled if the CareCommunication has been sent 1) about an incorrect patient CPR-number, 2) to incorrect receiver, and 3) with an attachment included with information about an incorrect patient.
This message shall include two instances of the Communication resource, one with the status *entered-in-error* and a message segment stating the reason for the cancellation and one with the status *unknown* representing the message being cancelled, hence including the message segments from the previous sent message. There shall be a Provenance instance referencing to the message being cancelled, and a Provenance instance referencing the cancellation message, where Provenance.entity.what.reference element points to the message being cancelled.
In the latter instance of the Provenance resource, the Provenance.entity.role shall be *removal* and the Provenance.activity shall be *retract-message*.  

* [5 - Simplified example of a cancelling a CareCommunication](./carecommunication/CCcancelMessage.svg)

[Click here to see the generated example of simplified example number 5.](./Bundle-ed3e05b2-551d-11ed-bdc3-0242ac120002.html) 

In a cancellation message a reason for the cancellation must be included. It is recommended that display texts from the CodeSystem [MedComMessagingCancellationReason](http://medcomfhir.dk/ig/terminology/CodeSystem-medcom-messaging-cancellation-reason.html) are included in the message segment of the Communication resource with the status *entered-in-error*.

> Note: All systems must be able to receive and display cancellation messages, but it is optional to support sending cancel message.