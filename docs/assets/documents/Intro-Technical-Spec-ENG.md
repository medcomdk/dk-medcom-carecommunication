# Introduction to the technical specification

**Table of contents**
* [1 Profiles in the CareCommunication Standard](#1-profiles-in-the-carecommunication-standard)
  * [1.1 Sender and recipient](#11-sender-and-recipient)
  * [1.2 Categories and the use of priority](#12-categories-and-the-use-of-priority)
  * [1.3 Encounter and EpisodeOfCare-identifier](#13-encounter-and-episodeofcare-identifier)
* [2 Internal references in a CareCommunication](#2-internal-references-in-a-carecommunication)
* [3 Examples of a CareCommunication](#3-examples-of-a-carecommunication)
<!-- * [4 Timestamps in the CareCommunication standard](#4-timestamps-in-the-carecommunication)
  * [4.1 Scenario 1-CareCommunication only text](#41-scenario-1---carecommunication-only-text)
  * [4.2 Scenario 1-CareCommunication text and attachment](#42-scenario-2---carecommunication-text-and-attachment) -->

## 1 Profiles in the CareCommunication Standard 
> In case of any discrepancies between the <a href="https://medcomfhir.dk/ig/carecommunication/" target="_blank">MedCom CareCommunication IG</a> and this page, the IG page should be followed. Please contact <fhir@medcom.dk> if you find any discrepancies.

> There is a difference between the required elements and MustSupport elements, as the required element always shall be included in a message. MustSupport elements must be included if they are present in the sender's system, and the receiver must be able to handle the information if it is included in a message.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-lc33{background-color:#2c415c;border-color:inherit;color:#ffffff;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Table 1: Overview of the profiles in the CareCommunication standard</caption>
<thead>
  <tr>
    <th class="tg-lc33"><span style="font-weight:bold">Profile</span></th>
    <th class="tg-lc33"><span style="font-weight:bold">Resource</span></th>
    <th class="tg-lc33"><span style="font-weight:bold">Description</span></th>
    <th class="tg-lc33"><span style="font-weight:bold">MustSupport elements</span></th>
    <th class="tg-lc33"><span style="font-weight:bold">Implementation Guide Origin</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-message.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCareCommunicationMessage</span></a></td>
    <td class="tg-0pky"><span style="color:#333">Bundle</span></td>
    <td class="tg-0pky"><span style="color:#333">Acts as a container for the content of the message</span><br><span style="color:#333">Inherited from the MedComMessagingMessage</span></td>
    <td class="tg-0pky"><span style="color:#333">Id</span><br><span style="color:#333">Type</span><br><span style="color:#333">Timestamp</span><br><span style="color:#333">Entry</span><br></td>
    <td class="tg-0pky"><span style="color:#333">CareCommunication</span></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCareCommunicationMessageHeader</span></a></td>
    <td class="tg-0pky"><span style="color:#333">MessageHeader</span></td>
    <td class="tg-0pky"><span style="color:#333">The header of a MedComCareCommunication message, which must always be the first referenced profile, when the type of the bundle is 'message'.This profile holds references to the fundamental information in a message, such as sender, receiver, and the content of the message in terms of the CareCommunication profile.</span><br><span style="color:#333">Inherited from MedComMessagingMessageHeader</span></td>
    <td class="tg-0pky"><span style="color:#333">Id</span><br><span style="color:#333">Text</span><br><span style="color:#333">Event[x]:eventCoding</span><br><span style="color:#333">Destination:primary</span><br> <span style="color:#333">Destination:primary.use</span><br> <span style="color:#333">Destination:primary.endpoint</span><br> <span style="color:#333">Destination:primary.receiver</span><br>  <span style="color:#333">Sender</span><br><span style="color:#333">Source</span><br><span style="color:#333">Source.endpoint</span><br><span style="color:#333">Focus</span></td>
    <td class="tg-0pky"><span style="color:#333">CareCommunication</span></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-communication.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCareCommunication</span></a></td>
    <td class="tg-0pky"><span style="color:#333">Communication</span></td>
    <td class="tg-0pky"><span style="color:#333">The MedComCareCommunication profile contains the main content of the message in form of a message segment. A message segment consists of the textual part (payload:string.content[x]) and a signature which includes an author (payload:string.extension.author), a timestamp (payload:string.extension:date) and a relevant telephone number (payload:string.extension.authorContact), or an attachment (payload:attachment.content[x]). The message must include a category code (category) and it may include a topic (topic) that supports and elaborates the category. <br> Further, it is possible to include an episodeOfCare-identifier, by referencing an Encounter resource (encounter). <br>A more specific sender and recipient of the message may be referenced from the elements recipient and extension.sender.</span></td>
    <td class="tg-0pky"><span style="color:#333">Status</span><br><span style="color:#333">Category</span><br><span style="color:#333">Priority</span><br><span style="color:#333">Subject</span><br><span style="color:#333">Topic</span><br><span style="color:#333">Encounter</span><br><span style="color:#333">Sent (dateTime)</span><br><span style="color:#333">Recipient</span><br><span style="color:#333">Extension.sender</span><br><span style="color:#333">Slices for payload</span><br> <span style="color:#333">payload:string.content[x]</span><br> <span style="color:#333">payload:string.extension:author</span><br> <span style="color:#333">payload:string.extension:authorContact</span> <span style="color:#333">payload:string.extension:date</span> <span style="color:#333">payload:string.identifier</span><br> <span style="color:#333">payload:attachment.content[x]</span><br> <span style="color:#333">payload:attachment.identifier</span><br></td>
    <td class="tg-0pky"><span style="color:#333">CareCommunication</span></td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCorePatient</span></a></td>
    <td class="tg-0pky">Patient</td>
    <td class="tg-0pky">Describes a citizen or patient in which the communication concerns when exchanging a CareCommunication.</td>
    <td class="tg-0pky">Id<br>Identifier(CPR-number)<br>Name<br>Address<br>Telecom<br>Deceased[x]</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCorePractitioner</span></a></td>
    <td class="tg-0pky">Practitioner</td>
    <td class="tg-0pky">Describes a healthcare professional or another actor involved in citizen or patient care. This profile is used to describe the author and sender or recipient.<br><br>MedComCorePractitioner is inherited from the DkCorePractitioner, and must include a name of the practitioner if available. <br></td>
    <td class="tg-0pky">Name </td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCorePractitionerRole</span></a></td>
    <td class="tg-0pky">PractitionerRole</td>
    <td class="tg-0pky">Describes the role of a healthcare professional or another actor involved in citizen or patient care. This profile is used to describe the author role and sender or recipient.</td>
    <td class="tg-0pky">Practitioner <br>Organization</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCoreEncounter</span></a></td>
    <td class="tg-0pky">Encounter</td>
    <td class="tg-0pky">Describes the interaction between a patient and one or more healthcare providers. The Encounter holds the episodeOfCare-identifier.</td>
    <td class="tg-0pky">Status<br>Class<br>Subject<br>episodeOfCare-identifier</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCoreCareTeam</span></a></td>
    <td class="tg-0pky">CareTeam</td>
    <td class="tg-0pky">Describes one or more professionals who plan to participate in the coordination and delivery of care for a patient or citizen. It may be used as the sender or recipient from the MedComCareCommunication profile</td>
    <td class="tg-0pky">Name<br>ManagingOrganization</td>
    <td class="tg-0pky">Core</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComMessagingOrganization</span></a></td>
    <td class="tg-0pky">Organisation</td>
    <td class="tg-0pky">Contains information which is useful to identify a sender or receiver organisation. It is primarily used for transportation matters, why it must contain a SOR and EAN identifier. This profile inherits from MedComCoreOrganization.</td>
    <td class="tg-0pky">Id<br>Identifier(SOR-id)<br>Identifier(EAN-id)<br>Name</td>
    <td class="tg-0pky">Messaging</td>
  </tr>
  <tr>
    <td class="tg-0pky"><a href="https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-provenance.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComMessagingProvenance</span></a></td>
    <td class="tg-0pky">Provenance</td>
    <td class="tg-0pky">Describes the activity of a message, e.g. if the message is a new message or a modified message.<br>In case of a previously sent message, the Provenance resource holds a reference to this message.<br>Therefore, it is possible to get an overview of the communication about a patient.</td>
    <td class="tg-0pky">Id<br>Target<br>OccurredDateTime<br>Timestamps<br>Activity<br>Agent<br>Entity (reference to the previous message)</td>
    <td class="tg-0pky">Messaging</td>
  </tr>
   <tr>
    <td class="tg-0pky"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/StructureDefinition-medcom-core-organization.html" target="_blank"><span style="text-decoration:none;color:#5093D6">MedComCoreOrganization</span></a></td>
    <td class="tg-0pky">Organization</td>
    <td class="tg-0pky">Contains information about an organization. The Organization is referenced from Practitioner or CareTeam.</td>
    <td class="tg-0pky">Id<br>Identifier(SOR-id)<br>Name</td>
    <td class="tg-0pky">Core</td>
  </tr>
</tbody>
</table></div>


### 1.1 Sender and recipient
In a CareCommunication, it is required to include information about a sender and receiver in terms of a reference to a MedComMessagingOrganization. This information is primarily used for transportation matters and will always include an EAN and SOR identifier.

When sending a CareCommunication, it is possible to add a more specific receiver of the message, called a recipient, and a more specific sender. This may be used to include a more specific group of people or a person related to the care, and wellbeing of the patient or citizen can be referenced. An example could be to address a specific general practitioner by name, a specific care team in a municpality or eventually a specific social unit within the social care sector in a municipality.

### 1.2 Categories and the use of priority
There is a nationally agreed list of categories that must be used when sending a CareCommunication.<br> <a href="https://medcomfhir.dk/ig/terminology/CodeSystem-medcom-careCommunication-categoryCodes.html" target="_blank">The list of categories can be seen here</a>. <br>
When a category is of the type 'regarding-referral' it is allowed to add a priority, which can be 'asap' or 'routine'. When the category 'other' is chosen, a topic must be included, as this is used to specify the topic of the CareCommunication.

### 1.3 Encounter and episodeOfCare-identifier
When receiving a message, either CareCommunication or EDIFACT/OIOXML message, there will in many cases be an episodeOfCare-identifier, as it describes the id of the contact. If this is the case, it shall always be included in the response. An Encounter profile contains the possibility to include an episodeOfCare-identifier, that contains this id.


## 2 Internal references in a CareCommunication 
The CareCommunication follows [MedCom’s generic messaging model](https://medcomdk.github.io/dk-medcom-messaging/assets/documents/Intro-Technical-Spec-ENG.html).<br>
The references between the profiles are shown in  <a href="#Fig1"> Figure 1</a> below. The MedComCareCommunicationMessage profile acts as the container which includes the other profiles. From the MedComCareCommunicationMessageHeader the sender and receiver organisations are referenced as the MedComMessagingOrganization together with the focus of the message, which is the MedComCareCommunication profile. This profile must always reference a subject of the type MedComCorePatient.<br> 
MedComMessagingProvenance is used to keep track of the messaging history and define the activity of the communication. The Provenance references the MedComMessagingMessageHeader as the target and the actor in terms of a MedComMessagingOrganization. 

 <!-- Additionally, contain the message text and attachment if they are included -->
<figure>
<img src="../images/CareCommunication.svg" alt="Show references between the profiles in an CareCommunication message." style="width:60%" id="Fig1">
<figcaption text-align="center"><b>Figure 1: Structure of the CareCommunication.</b> </figcaption>
</figure>
<br><br>

## 3 Examples of a CareCommunication 
In this section, simplified examples of CareCommunication are presented, which includes: 
* <a href="#Fig2">new message</a>
* <a href="#Fig4">reply message</a>
* <a href="#Fig5">forward message</a>

All types of simplified examples are created as XML or JSON examples in the CareCommunication IG. <a href="https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-message-examples.html" target="_blank">Click here to see the full examples of a CareCommunication.</a> All systems must be able to receive and display a forwarded message, but it is optional to support sending a forward message.
 
  > Note: IT vendors cannot assume any specific order of the resources in a message. 

<a href="#Fig2">Figure 2 </a>is a simplified example of a new message. The MessageHeader references the sender and receiver organisations, both can be found at the bottom of the message. From the last element in the MessageHeader is the focus of the message referenced. This is a reference to the Communication instance, which holds information about the message segment. Information about the author of the message segment is represented in the PractitionerRole and Practitioner instances, which includes the author role and name, respectively. The type of message can be seen in the bottom, where the Provenance.activity.code is 'new-message'. 
<figure>
<img src="../images/CCNewMessage.svg" alt="Simplified example: New message" style="width: 55%" id="Fig2">
<figcaption text-align = "center"><b>Figure 2: Simplified example: New message </b></figcaption>
</figure>

<a href="#Fig4">Figure 4</a> is a simplified example of a reply message. This message represents a reply to the message on <a href="#Fig2">Figure 2</a>. When replying to a message, a new message segment shall be added to the Communication instance. The reply can be seen in the payload[1], where the new message can be seen in the payload[0]. The author information for both message segments shall also be included in the message. The sender and receiver information has switched place. The message contains two Provenance instance, one from the previous message and one from the reply message, which holds a reference to the previous message.  
<figure>
<img src="../images/CCreplyMessage.svg" alt="Simplified example: Reply message" style="width: 55%" id="Fig4">
<figcaption text-align = "center"><b>Figure 4: Simplified example: Reply message </b></figcaption>
</figure>
<br><br>

<a href="#Fig5">Figure 5</a> is a simplified example of a forward message. This message represents a forwarding of the message on <a href="#Fig2">Figure 2</a>. When forwarding shall the user decide which message segment or segments that shall be forwarded, in this case is only one segment selected. The forward message can be seen in the payload[1], where the new message can be seen in the payload[0]. For this reason, does the Communication instance contain two message segment and associated authors. Further shall the message contain two Provenance instance, one from the previous message and one from the forward message, which holds a reference to the previous message.  
<figure>
<img src="../images/CCForwardMessage2.svg" alt="Simplified example: Forward message" style="width: 55%" id="Fig5">
<figcaption text-align = "center"><b>Figure 5: Simplified example: Forward message </b></figcaption>
</figure>
<br><br>

<!-- ## 4 Timestamps in the CareCommunication 

The CareCommunication contains six important timestamps:
* Bundle.timestamp
* Provenance.recorded
* Provenance.occuredDateTime[x]
* Communication.payload:attachment.extension:date
* Communication.payload:attachment.creation
* Communication.payload:string.extension:date
 
The six timestamps are registered at different times when the CareCommunication is generated. 
 

### 4.1 Scenario 1 - CareCommunication only text 

If the CareCommunication only contains a message text, the timestamps must be registered as follows: 
* The healthcare professional writes the message text and presses the "send" button.  This is when the first timestamp, Communication.payload:string.extension:date, is being registered. 
* Immediately after,the CareCommunication message is generated, and Bundle.timestamp is registered.
* When the CareCommunication message has been sent, the Provenance.occuredDateTime[x] and Provenance.recorded timestamp are registered. 
>Note: that the Provenance.occuredDateTime[x] is human readable, where Provenance.recorded is system readable.


<figure>
<img src="../images/cc_ONLY_TEXT.svg" alt="Simplified example: CareCommunication text only." style="width: 55%" id="Fig8">
<figcaption text-align = "center"><b>Figure 8: Simplified example: CareCommunication text only </b></figcaption>
</figure>


### 4.2 Scenario 2 - CareCommunication text and attachment 

If the CareCommunication contains a message text and one or more attachments, the timestamps must be registered as follows: 
* The healthcare professional creates the attachement and the first timestamp Communication.payload:attachment.creation is registered. 
* The healthcare professional then writes the message and presses the "send" button.Communication.payload:string.extension:date and Communication.payload:attachment.extension:date is then registered. 
* Immediately after,the CareCommunication message has been generated, the Bundle.timestamp is registered. 
* When the CareCommunication message has been sent, the Provenance.occuredDateTime[x] and Provenance.recorded timestamp are registered. 
>Note that the Provenance.occuredDateTime[x] is human readable, where Provenance.recorded is system readable.

<figure>
<img src="../images/cc_attachement.svg" alt="Simplified example: CareCommunication text and attachment." style="width: 55%" id="Fig9">
<figcaption text-align = "center"><b>Figure 9: Simplified example: CareCommunication text and attachment </b></figcaption>
</figure> -->
