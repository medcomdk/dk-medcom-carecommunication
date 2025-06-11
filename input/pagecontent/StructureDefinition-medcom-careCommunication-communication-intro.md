### Scope and usage 
This profile is used as the Communication resource for the MedCom CareCommunication message. The [MedComCareCommunication](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-communication.html) profile contains the main content of a message, which includes a communication identifier, at least one message segment with a message text (Danish: Meddelelsestekst) and a signature. The message may include zero or more message segments with an attachment and a signature. All message segments are found under the element Communication.payload. A more detailed description of the content of the MedComCareCommunication profile can be seen below. 

The figure below shows the possible references from MedComCareCommunication profile, and thereby which resources that may be included in a CareCommunication message. A subject, in terms of a [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html), shall always be included since a CareCommunication message always concerns a patient or citizen's matter. A [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) and [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html) shall be included since these reference includes information about the author of the message text. A [MedComCoreEncounter](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html) may be referenced if an episodeOfCare-identifier (Danish: forløbs-id) is relevant to include. Further, the [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) or [MedComCoreCareTeam](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-careteam.html) may be included if a recipient or sender is added. Both profiles includes a reference to the [MedComCoreOrganization](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html) the CareTeam or Practitioner is a part of. 

<img alt="MedComCareCommunication references a MedComCorePatient, MedComCoreEncounter, Danish Core Organization Profile, MedComCoreOrganization, MedComCorePractitioner, or MedComCorePractitionerRole. A subject, in terms of a MedComCorePatient, shall always be included since a CareCommunication message alway shall concern a patient matter, a MedComCorePractitioner shall be included since the reference describes information about the author of the message text, and a MedComCoreEncounter may be referenced if an episodeOfCare-identifier (Danish: forløbs-id) is relevant to include. Further, the MedComCorePractitionerRole or MedComCoreCareTeam may be included if a recipient or sender is added. " src="./carecommunication/CareCommunicationCommunication.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedCom CareCommunication.

#### Communication identifier
The purpose of the communication identifier, in the element Communication.identifier.value, is to ensure a common identifier for a communication. This will help systems to connect incoming and outgoing CareCommuncations. This identifier must be a UUID v4 and it must remain the same when replying to a CareCommunication. The identifier must be updated when a CareCommunication is forwarded. This is elaborated in the [Governance for CareCommunication](https://medcomdk.github.io/MedCom-FHIR-Communication/assets/documents/governance-for-careCommunication.html).

#### Categories and topic

A CareCommunication shall have a category (Danish: Kategori), in the element Communication.category. The category describes the overall content of the communication and shall be selected from a nationally agreed list of categories defined in the [ValueSet of category codes](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-careCommunication-categories.html). Exactly one category code must be included in a CareCommunication. In time, new category codes may be relevant to include or existing codes may be irrelevant, why it should be expected that the ValueSet will change. Changes will be made in agreement with the business and will be warned. 

In addition to the category, it is allowed to add a topic (Danish: Emne) in the element Communication.topic, to support and elaborate the category. This can either be inserted as free text or as regionally agreed codes, which is describes further in the [clinical guidelines for application](https://medcomdk.github.io/dk-medcom-carecommunication/#11-clinical-guidelines-for-application). 

When sending a CareCommunication message with the category *other*, a topic shall be included. To ensure this, the invariant medcom-careCommunication-6 is created.  

#### Priority

Priority, found in the element Communication.priority, is used to support the referral flow. It is only allowed to add a priority to a CareCommunication when the category of the message is *regarding referral*. In this case, priority can either be *routine* or *asap*. To ensure this, the invariant medcom-careCommunication-5 is created, which states that in no other case than when the category is *regarding referral*, a priority must be added. As described on [clinical guidelines for application](https://medcomdk.github.io/dk-medcom-carecommunication/#11-clinical-guidelines-for-application), the use of priority must follow the development in collective agreements and on basis of national requirements. 

#### Message segments 

A message segment consists of a message text including a signature or an attachment. 
The message text and attachment will both be included in the element Communication.payload. There are different requirements for the two types of message segments, which is documented in the following. At least one payload which includes the message text shall be included when sending a new CareCommunication message, but zero or more attachments may be included. 

> Note: Snippets from a patient's journal may be included in the message text or as an attachment, for instance, as a pdf-document. In both cases, it is recommended that the sender clearly describes in the message text or attachment, who the original author of the journal is and when it was written in the message test or attachment. If the snippet is included as an attachment, the author information may both be included as written/copied text or structured information.

##### Signature and relevant information
**Message text:** The written content of the message is of the datatype [string](http://hl7.org/fhir/R4/datatypes.html#string) defined by HL7. The signature for the message text consists of author name, author role, relevant phone number, and sent timestamp. The identifier is included for technical purposes. See the table below for an overview of the requirements.<br> 
**Attachment:** The allowed types of attachments can be found in the [ValueSet of allowed mimetypes](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-core-attachmentMimeTypes.html). Further, it is allowed to include a link to a website. In a message segment with an attachment, the title, identifier and timestamp must be included, whereas it is optional to include information about the author, relevant phone number and creation date as structured data. See the table below for an overview of the requirements.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky"></th>
    <th class="tg-0pky">Author name</th>
    <th class="tg-0pky">Author role</th>
    <th class="tg-0pky">Relevant phone number</th>
    <th class="tg-0pky">Sent timestamp</th>
    <th class="tg-0pky">Identifier</th>
    <th class="tg-0pky">Title</th>
    <th class="tg-0pky">Creation date</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">Message text</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">-</td>
    <td class="tg-c3ow">-</td>
  </tr>
  <tr>
    <td class="tg-0pky">Attachment</td>
    <td class="tg-c3ow">O</td>
    <td class="tg-c3ow">O</td>
    <td class="tg-c3ow">O</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">R</td>
    <td class="tg-c3ow">O</td>
  </tr>
</tbody>
</table>

R = required and O = optional.

A description of the above mentioned information can be found here: <br>
**Author name:** The name of the person responsible for writing the message text. The author shall be described using a [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html) profile. <br> 
**Author role:** The role (Danish: stillingsbetegnelse) of the person responsible for writing the message text. The author role shall be described using a [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) profile. It is recommended to use a role from the defined list of roles in the element PractitionerRole.code.coding.code. Alternatively, a it is allowed to add a role in the element PractitionerRole.code.coding.text.<br> 
**Relevant phone number:** A relevant phone number e.g. to the department from which the CareCommunication is sent. The phone number should be applied automatically. In case it is not possible to apply the phone number automatically, it shall be applied by the author. <br> 
**Timestamp:** Represents the real world event, where the user presses "send" to send the CareCommunication.<br> 
**Identifier:** An UUID version 4 with a reference to the organisation who assigned the identifier, which will be the same as the sender organisation of the message segment. <br> 
**Title:** The title of the attached file. This should be applied by the system. <br>
**Creation:** The date and time for when the attachment is created. 

##### Content of the message segments
Message text must always be included in a CareCommunication, which applies to creating a new message, replying, and forwarding. All previous message segments with message text must be included in a message when replying and all relevant message segments must be included in a message when forwarding a message.

Attachments must always be included the first time they are sent. When replying to a CareCommunication, the base64-encoded content in the element Communication.payload:attachment.content.data or the link in the element Communication.payload:attachment.content.url must not be included, to avoid sending the same content back and forth. Instead the identifier must always be included in a reply and it should be used to identify which attachment(s) or link(s) that must be displayed to the receiver. When forwarding a message, the base64-encoded content of the attachments must be included.

#### Episode of care identifier 

In the element Communication.encounter it is possible to reference a [MedComCoreEncounter](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html). An encounter describes the meeting between a patient and one or more healthcare providers or actors involved in the patient care. The Encounter resource contains an episodeOfCare-identifier. When receiving a message, either CareCommunication or EDIFACT/OIOXML message, there will in many cases be an episodeOfCare-identifier, as it described the id of the contact. If this is the case, the episodeOfCare-identifier shall always be included in the response. Altenatively, when a user at a hospital is in the context of e.g. an admission, the episodeOfCare-identifier should be coupled to a CareCommunication.
[Click here to get more information about the episodeOfCare-identifier]( https://medcomdk.github.io/MedCom-FHIR-Communication/) 


#### Recipient and sender

In the [MedComCareCommunicationMessageHeader](https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html) profile it is required to include information about a sender and receiver in terms of a reference to a [MedComMessagingOrganization](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html). This information is primarily used for transportation matters and will always include an EAN-number and SOR-identifier for each organisation. 

When sending a CareCommunication message it is possible to add a more specific receiver of the message, called a recipient, and a more specific sender, which can be found in the elements Communication.recipient and Communication.extension.sender, respectively. It is allowed to reference a [MedComCoreCareTeam](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-careteam.html), which is people or an organization participating a coordination or delivery of patientcare, or [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html), which references a MedComCorePractitioner to address a healthcare professional involved in patient care. Common for both MedComCoreCareTeam and MedComCorePractitionerRole/MedComCorePractitioner is that a name of the careteam or practitioner should be included as well as a reference to a MedComCoreOrganization which represents the sender or receiver defined in [MedComCareCommunicationMessageHeader](https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html). 

When receiving a CareCommunication that includes a specific sender (Communication.extension.sender), it is required that this specific sender is transferred to the reply as the specific recipient (Communication.recipient). This ensures continuity and clarity in the communication flow between involved parties.
