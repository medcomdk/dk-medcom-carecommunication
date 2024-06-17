# Example



## Flow of CareCommunication 

This section describes five subsequent CareCommunications sent between three healthcare departments concerning the same citizen with test-CPR-nr. 250947-9989. The flow that the examples support is: <br>

A sends a new message to B <br>
B replies to A <br>
A replies to B <br>
B forwards to C <br>
C replies to B <br>

### 1st message - new CareCommunication

[1st message](Bundle-add5e7e2-0c0f-4a4a-bfff-f6f984fa7e3c.html)

The initial message sent from Hjerteafdelingen på Herlev og Gentofte hospital to Plejecenter Herlev.

The message includes one message segment and a new communication identifier. As it is a new message, the activity is in the Provenance instance 'new-message'. The sender and receiver organizations are both referenced from the MessageHeader. 

The CareCommunication contains a topic at Communication.topic.

### 2nd message - reply CareCommunication

[2nd message](Bundle-b56549f7-ed10-422d-8088-f7222b686e46.html) 

A reply to the 1st message. Since it is a reply to the latest CareCommunication, the Communication.identifier remains the same. Two Communication.payload is added which includes the reply to the new message, since a message text and an attachment are included. The activity is in the Provenance instance 'reply-message'. 

The author of the second CareCommunication has included an attachment without structured author information. 


### 3rd message - reply CareCommunication

[3rd message](Bundle-3dcb5618-3055-406a-9034-1b8fc8de0fea.html) 

This is a reply to the 2nd message. Therefore, the Communication.identifier remains the same. One Communication.payload has been added with the reply. The base64-encoded content from the attachment in the 2nd message is not included, only the identifier and author information.
The unique ids of the instances are updated, however the referenced MessageHeader in the Provenance instances from the previous messages remain the same. 

### 4th message - forward CareCommunication

[4th message](Bundle-c0426e3e-978f-46e8-a366-a30f27854b0a.html) 

This is a forwarding of the 3rd message. Therefore is the Communication.identifier updated and the base64-encoded content from the attachment in the 2nd message is included. Additionally, is a Communciation.payload added with a reason for the forwarding. The topic is not forwarded. The activity in the Provenance instance is 'forward-message'. A new receiver organization is included. The sender organization does not include a name in Organization.name.

### 5th message - reply CareCommunication

[5th message](Bundle-d11968f5-4bdf-4b50-b146-a8e1cc890fc3.html)

Is a reply to the 4th message. The Communication.identifier remains the same and the base64-encoded content from the attachment in the 2nd message is not included. The user has included a new attachment, which is a link to a webpage. 
The author role is not from the list of roles, but is included as at PractitionerRole.code.text. 

## Additional examples of CareCommunication

The examples below demonstrates how different information is included in a CareCommunication. 

### CareCommunication with all optional content - To Be Done! 

[CareCommunication with all optional content]()

This includes
* Priority may only be used when the category is 'regarding-referal', as described on the page for the [MedComCareCommunication profile](StructureDefinition-medcom-careCommunication-communication-intro.html).
* Topic that elaborates the 
* The episodeOfCare-identifier is be included in the CareCommunication, as the user of a hospital system in the context of an admission, when creating a CareCommunication. Other usages is described on the page for the [MedComCareCommunication profile](StructureDefinition-medcom-careCommunication-communication-intro.html).
* Specifik sender and recipient, which are describes as CareTeam instance. This is further described on the page for the [MedComCareCommunication profile](StructureDefinition-medcom-careCommunication-communication-intro.html)
* Structured author information for the author of the attachment.


### CareCommunication where patient has a replacement-CPR. (eCPR)

[CareCommunication where the patient has a replacement-CPR.](Bundle-0d5b3c18-fab6-4d93-9d88-c9c8abf1f18c.html)

It is allowed to send a CareCommunication for a patient with a replacement-CPR (Danish: erstatnings-CPR or ecpr). In the example, the replacement-CPR is from the national eCPR service, defined by the Patient.identifier.system = "urn:oid:1.2.208.176.1.6.1.1". Further, an EpisodeOfCare-identifier (Danish: forløbsid) is included in the Encounter instance.

### CareCommunication as a reply to an OIOXML or EDIFACT message

[Reply to an OIOXML message.](./Bundle-k7bfbc0c-553d-11ed-bdc3-0242ac120002.html) 

It is allowed to answer a received MedCom EDIFACT or OIOXML message with a MedCom CareCommunication. The Provenance.entity.what.identifier shall contain a reference to the received OIOXML. The reference shall contain the locationnumber and letter identifier, divided by #. If the message being replied contains an episodOfCareIdentifier, this shall be included in the CareCommunication message.

