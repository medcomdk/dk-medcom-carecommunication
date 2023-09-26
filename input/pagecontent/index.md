### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; CareCommunication (Danish: Korrespondancemeddelelse) in  message based exchange of data in Danish healthcare.

This IG contains profiles for MedCom CareCommunication. The purpose of a CareCommunication is to support digital communication between parties within healthcare, including amongst others the psychiatric and social area. The CareCommunication is used to ensure secure electronic communication of personally identifiable information and is most often used for ad hoc communication. However, the CareCommunication shall only be used in areas where no other MedCom standard is available, and it must not be used for cases with an acute nature. 
The CareCommunication supports: 
* Exchange of digital files, also called attachments (Danish: Vedhæftede filer)
* Formatting of message text
* Automatic sorting when receiving a CareCommunication based on nationally agreed categories (Danish: Kategori)
* Possibility for adding a topic (Danish: Emne)
* Clarify the sender of the message by requiring a signature, including name and role of the author, and relevant phone number. 
* Enables showing the communication history and activity of the message based on the technical content.

More information about the [clinical guidelines for applications](https://medcomdk.github.io/dk-medcom-carecommunication/#11-clinical-guidelines-for-application) can be found here.


#### CareCommunication
The structure of a CareCommunication is depicted on the following diagram:

<figure>
<img alt="Shows the structure of a CareCommunication. The MedComCareCommunicationMessage includes a MedComCareCommunicationMessageHeader and a MedComMessagingProvenance. MedComCareCommunicationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComCareCommunication. From the MedComCareCommunication is a MedComCorePatient, MedComCoreEncounter, Organization, MedComCorePractitioner and MedComCorePractitionerRole referenced." src="./carecommunication/CareCommunication.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" id="Fig1"/>
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in a MedCom CareCommunication standard </b></figcaption>
</figure>
<br>
<br>

CareCommunication follows the general MedCom FHIR messaging model, except that the carbon-copy destination is not allowed to use. The following sections describe the overall purpose of each profile.

##### MedComCareCommunicationMessage

The [MedComCareCommunicationMessage](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-message.html) is a constraint of [MedComMessagingMessage](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-message.html) further to use the [MedComCareCommunicationMessageHeader](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html) and to require exactly one [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) resource in the message. Furthermore, it contains rules that constrains the ValueSet of activities in the [MedComMessagingProvenance](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) profile to only contain activities from the [MedComCareCommunicationMessageActivities ValueSet](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-careCommunication-messagingActivities.html), which contains activities such as new-message, forward-message, and other activities triggering the message.

All referenced resources within the message shall be contained in the entry list in MedCom CareCommunication.

##### MedComCareCommunicationMessageHeader

The [MedComCareCommunicationMessageHeader](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html) constrains the [MedComMessagingMessageHeader](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-messageHeader.html) further to specify the fixed coding for this message and require a focus reference to a MedComCareCommunication profile.

##### MedComCareCommunication

The [MedComCareCommunication](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-communication.html) profile contains the main content of the message. It based on the Communication resource. MedComCareCommunication profile shall include a category code as defined in the [MedComCareCommunicationCategories ValueSet](http://medcomfhir.dk/ig/terminology/ValueSet-medcom-careCommunication-categories.html) and it is allowed to add a topic of the message which may be in free text or from a regionally agreed list of topics that supports and elaborates the category. 

The profile also includes one or more message segment that consists of a message text and associated signature or an attachment. In MedComCareCommunication profile message segments can be found under the element Communication.payload. A CareCommunication shall always include a message segment with a message text and associated signature. A CareCommunication may include zero or more message segments with an attachment. [Click here for more information about message segments](./StructureDefinition-medcom-careCommunication-communication.html#message-segments)

Further, It is possible to add a more specific receiver, called recipient, and a more specific sender of a message. These can be found in the MedComCareCommunication profile. This may be used to include a more specific group of professionals or practitioner related to the care and wellbeing of the patient or citizen. An example could be to address a specific general practitioner by name, a specific hospital department or eventually a specific social unit within the social care sector in a municipality. [Click here for more information about sender and recipient.](./StructureDefinition-medcom-careCommunication-communication.html#recipient-and-sender)

##### MedComCorePatient
The [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) profile is used in a CareCommunication. It is preferred that a CareCommunication is being sent for a patient with an official Danish civil registration number (CPR)-number. In cases where a CPR-number is not known, a replacement CPR-number (Danish: Erstatnings-CPR) shall be included. 

##### MedComCorePractitionerRole and MedComCorePractitioner
The [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) and [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html) profiles are used to describe the author in the signature of a message text by name and role (Danish: Stillingsbetegnelse).  The MedComCorePractitionerRole is referenced from the MedComCareCommunication profile and MedComCorePractitionerRole includes a reference to the MedComCorePractitioner, why both profiles are shown on <a href="#Fig1">Figure 1</a>. 

##### MedComMessagingOrganization
The [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html) profile is used in a CareCommunication to describe the sender and primary receiver of the notification. Please notice, that carbon-copy receiver is not allowed in a CareCommunication. Both the sender and receiver shall be identified using a SOR- and EAN-identifier.

##### MedComMessagingProvenance

The [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) profile is used to track information about the activity of the communication, e.g. if the message describes a 'new-message' or 'reply-message'. The allowed activity codes for a CareCommunication can be found in [MedComCareCommunicationMessageActivityCodes ValueSet](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-careCommunication-messagingActivities.html) on the Terminology IG. 

In cases of a previously sent CareCommunications, MedComMessagingProvenance references the metadata of the latest message which makes it possible to create a historic overview of the admission. 

#### Timestamps
A CareCommunication includes several timestamps. These timestamps are present in the profiles [MedComCareCommunication](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-communication.html), [MedComCareCommunicationMessage](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-message.html), and [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) and have different purposes:
* Communication.payload.extension:date represents real world event, where the user presses "send" to send the CareCommunication. Each message segment, both string and attachment, will be registered with a date and time for this event.
* Bundle.timestamp represents the time bundle is generated.
* Provenance.occuredDateTime[x] represents the time the CareCommunication is sent, in a human-readable time
* Provenance.recorded represents the time the CareCommunication is sent, in a machine-readable time

It is assumed that in most cases, the above mentioned timestamps will be equal, as the events happpens instantly after eachother. However, there might be systems where the sending is delayed compared to the real world-event and bundle generation, hence will the Provenance timestamps differentiate from the Communication and Bundle timestamp.

It is optional to include the timestamp: Communication.payload:attachment.content[x]:contentAttachment.creation, which represents the date and time the attachment was created. [Click here for more information about this timestamp.](./StructureDefinition-medcom-careCommunication-communication.html#signature-and-relevant-information)


#### IDs

All instances of a profile shall have a global unique id by using an UUID. [Read more about the use of ids here](https://medcomdk.github.io/MedCom-FHIR-Communication/assets/documents/052.2_MessageHeader_Identifiers_Timestamps.html).

#### Simplified examples of the CareCommunication flow
The simplified examples contain the required content of a CareCommunication sent between organisations. 

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
If the sender wants to modify a previously send CareCommunication, the sender shall create a modification message. A modification may be used when correcting a part of the message text, the category and/or topic, or the content of an attachment. The modification message shall contain both the message segment that are being modified from the previous message, as well as a message segment containing the actual modification or describing the modification, e.g. if the category is corrected.  
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

#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies
This IG has a dependency to the [MedCom Core IG](http://medcomfhir.dk/ig/core/), [MedCom Messaging IG](http://medcomfhir.dk/ig/messaging/) and [DK-core v. 2.0.0](https://hl7.dk/fhir/core/), where the latter is defined by [HL7 Denmark](https://hl7.dk/). These dependencies are currently reflected in MedComCareCommunicationMessage, and MedComCareCommunicationMessageHeader which both inherits from profiles defined MedComMessaging IG. Further, it is reflected in references to MedComCorePatient, MedComCoreEncounter, MedComCoreOrganization and MedComMessagingOrganization.

### Download
Content in this IG can be downloaded in npm format under [Download](https://medcomfhir.dk/ig/carecommunication/downloads.html). This can be used to validate locale FHIR profiles against.

### Documentation

#### Non-technical guidelines
On the [introduction page for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/) the following documentation can be found: 
* Clinical guidelines
* Use cases
* Mapping document from the previous OIOXML standard (XDIS91) to CareCommunication

### Governance

MedComs FHIR profiles and extension are managed in GitHub under MedCom: [Source code](https://github.com/medcomdk/dk-medcom-carecommunication)

A description of [governance concerning change management and versioning](https://medcomdk.github.io/MedComLandingPage/#4-change-management-and-versioning) of MedComs FHIR artefacts, can be found on the link.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

### Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
