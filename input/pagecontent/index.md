### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; Care Communication in  message based exchange of data in Danish healthcare.

This IG contains profiles for MedCom CareCommunication (Danish: Korrespondancen), which involves exchange of information concerning a patient between health or social organizations. The purpose of this standard is to support the communication between healthcare professionals and strengthen the startup of the digital communication between social care, psychiatric and the somatic sector. In a CareCommunication message it is possible to attach a digital document. Each message shall include a category which enables automatic sorting of the messages, and it is possible to include a topic that elaborates the category.

More information about the [clinical guidelines for applications](https://medcomdk.github.io/dk-medcom-carecommunication/#11-clinical-guidelines-for-application) can be found here.

#### CareCommunication Message
The structure of a CareCommunication message is depicted on the following diagram:

<img alt="Shows the structure of a CareCommunication message. The MedComCareCommunicationMessage includes a MedComCareCommunicationMessageHeader and a MedComMessagingProvenance. MedComCareCommunicationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComCareCommunication. From the MedComCareCommunication is a MedComCorePatient, MedComCoreEncounter, Organization, MedComCorePractitioner and MedComCorePractitionerRole referenced." src="./carecommunication/CareCommunication.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

CareCommunication follows the general MedCom FHIR messaging model, except that the carbon-copy destination is not allowed to use. The following sections describe the overall purpose of each profile.

##### MedComCareCommunicationMessage

The [MedComCareCommunicationMessage](http://medcomfhir.dk/fhir/carecommunication/StructureDefinition/medcom-careCommunication-message) constrains the [MedComMessagingMessage](http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-message) further to use the MedComCareCommunicationMessageHeader and to require exactly one MedComCorePatient resource in the message. Furthermore, it contains rules that constrains the ValueSet of activities in the MedComMessagingProvenance profile to only contain activities from the MedComCareCommunicationMessageActivities ValueSet, which contains activities such as new-message, forward-message, and other activities triggering the message.

All referenced resources within the message shall be contained in the entry list in MedCom CareCommunication message.

##### MedComCareCommunicatonMessageHeader

The [MedComCareCommunicationMessageHeader](http://medcomfhir.dk/fhir/carecommunication/StructureDefinition/medcom-careCommunication-messageHeader) constrains the [MedComMessagingMessageHeader](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-messageHeader.html) further to specify the fixed coding for this message and require a focus reference to a MedComCareCommunication profile.

##### MedComCareCommunication

The MedComCareCommunication profile contains the main content of the message. It based on the Communication resource. MedComCareCommunication profile shall include a category code as defines in the [MedComCareCommunicationCategories ValueSet](http://medcomfhir.dk/ig/terminology/ValueSet/medcom-careCommunication-categories) and it is allowed to add a topic of the message which may be in free text or from a regionally agreed list of topics that support and elaborates the category. The payload of the message shall include a message text and it may include one or more attachments. All payloads shall have a timestamp, an author and relevant telephone. 

##### MedComCorePatient
The [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html) profile is used in a CareCommunication message. It is preferred that a CareCommunication message is being sent for a patient with an official Danish civil person register (CPR)-number. In cases a CPR-number is not known, a replacement CPR-number (Danish: Erstatnings-CPR) shall be included. 

##### MedComCorePractitionerRole and MedComCorePractitioner
The [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) and [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html) profiles are used to describe the author of a payload by name and role (Danish: Stillingsbetegnelse). The MedComCorePractitionerRole is referenced from the MedComCareCommunication profile and MedComCorePractitionerRole includes a reference to the MedComCorePractitioner, why both profiles are shown on the figure above. 

##### Sender or recipient
In the [MedComCareCommunicationMessageHeader](https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html) profile it is required to include information about a sender and receiver in terms of a reference to a [MedComMessagingOrganization](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html). This information are primarily used for transportation matters and will always include an EAN- and SOR-identifier. 

When sending a CareCommunication message it is possible to add a more specific receiver of the message, called a recipient, and a more specific sender. This may be used to include a more specific organisation or person related to the care and wellbeing of the patient or citizen can be referenced. An example could be to address a specific general practitioner by name, a specific hospital department or eventually a specific social unit within the social care sector in a municipality. 

##### MedComMessagingOrganization
The [MedComMessagingOrganization](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html) profile is used in a CareCommunication message to describe the sender and primary receiver of the notification. Please notice, that carbon-copy receiver is not allowed in a CareCommunication message. Both the sender and receiver shall be identified using a SOR- and EAN-identifier.

##### MedComMessagingProvenance

The [MedComMessagingProvenance](http://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html) profile is used to track information about the activity of the communication, e.g. if the message describes a 'new-message' or 'reply-message'. The allowed activity codes for a CareCommunication message can be found in [MedComCareCommunicationMessageActivityCodes ValueSet](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-careCommunication-messagingActivities.html) on the Terminology IG. 

In cases of a previously sent CareCommuncation messages, MedComMessagingProvenance references the latest message which makes it possible to create a historic overview of the admission. 

#### Timestamps
A CareCommunication message includes several timestamps that represent different events before during and after sending a CareCommuncation message. [The meaning and use of these timestamps are describe here.](https://medcomdk.github.io/dk-medcom-carecommunication/assets/documents/Intro-Technical-Spec-ENG.html)

#### IDs

All profiles shall have a global unique id by using an UUID. [Read more about the use of ids here](https://medcomdk.github.io/MedCom-FHIR-Communication/assets/documents/052.2_MessageHeader_Identifiers_Timestamps.html).

#### Simplified examples of the CareCommunication message flow
The simplified examples contain the required content of a CareCommunication message sent between organisations. 

##### New Message 
Below can two simplified examples of a new CareCommunication message be seen, one with the minimum requirements and one with the minimum reqiurements as well as an attachment, episodeOfCare-identifier, sender and recipient. Since both examples represents a new message is the activity in the Provenance instance 'new-message'. The sender and receiver organisations are both referenced from the MessageHeader and are included in the message. All instances have a unique UUID and the Communication.status is *unknown*.

* [1 - Simplified example of a new CareCommunication message](./carecommunication/CCNewMessage.svg)
* [2 - Simplified example of a new CareCommunication message with an attachment, episodeOfCare-identifier, sender and recipient](./carecommunication/CCNewMessageAtt.svg)
_Note:_ The attachment is not an actual pdf-document, as the base64-code would be extremely long.

##### Reply Message 
This simplified example describes how a MedCom FHIR CareCommunication message reply shall be handled.
When sending a reply to a received MedComCareCommunication the reply shall contain the message text and the Provenance resources from the previous message shall be included. 
The Provenance.entity.role shall be *revision* and Provenance.entity.identifier shall be a reference to the MessageHeader.id of the previous message as the reply is the based on a previous entity. Provenance.activity shall be *reply-message*. This is a reply to '1 - Simplified example of a new CareCommunication message'.

* [3 - Simplified example of a reply CareCommunication message](./carecommunication/CCreplyMessage.svg)

##### Forward Message 
This simplified example describes how a MedCom FHIR CareCommunication message forward flow shall be handled.  
When forwarding a received CareCommunication the forward message shall contain both the received message and attachments, as well as other messages in same communication flow, if there is some.
The Provenance.entity.role shall be *revision* and Provenance.entity.what.reference shall be a reference to the MessageHeader.id of the previous message. Provenance.activity shall be *forward-message*. The Communication resource from the previous message including information about the author of the payloads since the forwarded message shall be included. The id of the Communication resource from the previous message is updated since the reference to the Patient resource is updated. This message is forwarding '1 - Simplified example of a new CareCommunication message'.

* [4 - Simplified example of a forwarded CareCommunication message](./carecommunication/CCForwardMessage2.svg)

##### Cancel Message  
This simplified example describes how message entered in error shall be handled.
If a message a is sent by mistake, the message shall be marked as sent as error by creating a new MedCom CareCommunication message using the MedComCareCommunication status *unknown* and letting the Provenance.entity.what.reference element point to the erroneous message.
The Provenance.entity.role shall be *removal* and the Provenance.activity shall be *retract-message*.  

* [5 - Simplified example of a cancelling a CareCommunication message](./carecommunication/CCcancelMessage.svg)


##### Reply to a OIOXML message
When MedCom CareCommunication message is sent based on a received MedCom OIOXML message the EpisodeOfCareIdentifier resource referenced by the Encounter ressource shall contain the episode of care identifier of the OIOXML message if present.
The Provenance.entity.what.identifier shall contain a reference to the received OIOXML. The reference shall contain the locationnumber and letter identifier, divided by #.

* [6 - Simplified example of a CareCommunication message reply to OIOXML](./carecommunication/CCreplyOIOXMLMessage.svg)


#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.

#### Dependencies
This IG has a dependency to the [MedCom Core IG](http://medcomfhir.dk/ig/core/), [MedCom Messaging IG](http://medcomfhir.dk/ig/messaging/) and [DK-core v. 2.0.0](https://hl7.dk/fhir/core/), where the latter is defined by [HL7 Denmark](https://hl7.dk/). These dependencies are currently reflected in MedComCareCommunicationMessage, and MedComCareCommunicationMessageHeader which both inherits from profiles defined MedComMessaging IG. Further, it is reflected in references to MedComCorePatient, MedComCoreEncounter, MedComCoreOrganization and MedComMessagingOrganization.

### Documentation

#### Non-technical guidelines
On the [introduction page for CareCommunication](https://medcomdk.github.io/dk-medcom-carecommunication/) the following documentation can be found: 
* Clinical guidelines
* Use cases
* Overview of codes used a HospitalNotification message
* Mapping document from the previous OIOXML standard (XDIS91) to CareCommunication

### Governance

MedComs FHIR profiles and extension are managed in GitHub under MedCom: [Source code](https://github.com/medcomdk/dk-medcom-carecommunication)

A description of [governance concerning change management and versioning](https://medcomdk.github.io/MedComLandingPage/#4-change-management-and-versioning) of MedComs FHIR artefacts, can be found on the link.

#### Quality Assurance Report

In the Quality Assurance report (QA-report) for this IG, there is an error with the following description: *Reference is remote which isn’t supported by the specified aggregation mode(s) for the reference (bundled)*. The error occurs when creating instances of the profiles and is due to some elements having a Bundled flag {b}, however the referenced profile is not included in a Bundle in an instance, since the instance only represents a part of the entire message. This should not influence the implementation by IT-vendors.

### Contact 

[MedCom](https://www.medcom.dk/) is responsible for this IG.

If you have any questions, please contact <fhir@medcom.dk> or write to MedCom's stream in [Zulip](https://chat.fhir.org/#narrow/stream/315677-denmark.2Fmedcom.2FFHIRimplementationErfaGroup).
