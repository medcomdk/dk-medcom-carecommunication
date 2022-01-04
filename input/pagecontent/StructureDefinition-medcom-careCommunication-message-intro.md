### Scope and usage 

This profile is the root profile of MedCom FHIR CareCommunication message. This profile is inherited from the MedComMessagingMessage.
The following figure represent the profiles that should be included in a MedCom FHIR CareCommunication message.

<img alt="Shows the structure of a CareCommunication message. The MedComCareCommunicationMessage includes a MedComCareCommunicationMessageHeader and a MedComMessagingProvenance. MedComCareCommunicationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComCareCommunication. From the MedComCareCommunication is a MedComCorePatient, MedComCoreEncounter, Organization, MedComCorePractitioner and MedComCorePractitionerRole referenced." src="./carecommunication/CareCommunication.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The Bundle containing the CareCommunication message is selfcontained, why it shall contain one instance of the MedComCareCommunicationMessageHeader. By convention the cardinality is shown as 0..*.

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCareCommunicationMessage.  

### Simplified examples of the CareCommunication message flow
Please notice, that in the following examples is the Provenance resources listed as an array. This is just an example of an order, the Provenance resources may be listed in any order. 
Not all information that is required in a CareCommunication message are displayed in the examples. 


#### Message sent with an image as an attachment
When MedCom FHIR CareCommunication message is sent it is possible to include an attachment e.g., an image or a pdf-document. This type of attachment shall be base64-encoded and added to the data element, as illustrated in the example. It is also allowed to include an URL as an attachment and in this case shall the url element be used. In both cases, there must be included a title, a time and date for applying the attachment and an author responsible for the attachment. 
As there is no previous message is there no data in the Provenance.entity element. The Provenance.activity shall be *new-message*. 

* [Simplified example of a CareCommunication message with an image attachment](./carecommunication/CCNewMessageAttachment.png)

#### How to reply a MedCom FHIR CareCommunication message 
This section describes how a MedCom FHIR CareCommunication message reply flow shall be handled.
When sending a reply to a received MedComCareCommunication the reply shall contain both the received message and attachments if any.
The Communication.status may be *unknown*. The Provenance.entity.role shall be *derivation* and Provenance.entity.identifier shall be a reference to the MessageHeader.id of the previous message as the reply is the based on a pre-existing entity. Provenance.activity shall be *reply-message*.

* [Simplified example of a CareCommunication reply message](./carecommunication/CCReplyMessage.png)

#### How to forward a MedCom FHIR CareCommunication message 
This section describes how a MedCom FHIR CareCommunication message forward flow shall be handled.  
When forwarding a received CareCommunication the forward message shall contain both the received message and attachments, as well as other messages in same communication flow, if there is some.
The Communication.status may be *unknown*. The Provenance.entity.role shall be *quotation* and Provenance.entity.what.reference shall be a reference to the MessageHeader.id of the previous message as the reply is a repeat of an already transmitted message. Provenance.activity shall be *forward-message*. There should be a text including when forwarding a message

* [Simplified example of a CareCommunication message forward message ](./carecommunication/CCForwardMessage.png)
* [Simplified example of a CareCommunication message forward a reply message ](./carecommunication/CCForwardReplyMessage.png)

#### Message entered in error  
This section describes how message entered in error shall be handled.
If a message a is sent by mistake, the message shall be marked as sent as error by creating a new MedCom CareCommunication message using the MedComCareCommunication status *entered-in-error* and letting the Provenance.entity.what.reference element point to the erroneous message.
The Provenance.entity.role shall be *removal* and the Provenance.activity shall be *retract-message*.  

* [Simplified example of a CareCommunication message where original message is entered in error  ](./carecommunication/CCNewMessageEnteredInError.png)
* [Simplified example of a CareCommunication message where message reply is entered in error  ](./carecommunication/CCReplyMessageEnteredInError.png)

#### Sent message is corrected
This section describes how message shall be corrected.
If a sent message shall be corrected, the correction message contains the corrected message and the provenance element points the message that shall be corrected. 
The Provenance.entity.role shall be *revision* and the Provenance.activity shall be *modified-message*.  

* [Simplified example of a CareCommunication message correction](./carecommunication/CCCorrectMessage.png)

#### Reply to a received MedCom EDIFACT/OIOXML message
When MedCom CareCommunication message is sent based on a received MedCom EDIFACT/OIOXML message the EpisodeOfCareIdentifier resource referenced by the Encounter ressource 
shall contain the episode of care identifier of the EDIFACT/OIOXML message if present.
The provenance system skal contain a reference to the received EDIFACT/OIOXML. The reference shall contain the locationnumber and letter identifier, divided by #.

* [Simplified example of a CareCommunication message reply to EDIFACT/OIOXML](./carecommunication/CCNewMessageOIOXML.png)
