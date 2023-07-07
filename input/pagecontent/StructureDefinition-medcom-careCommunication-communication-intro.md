### Scope and usage 
This profile is used as the Communication resource for the MedCom CareCommunication message. [MedComCareCommunication](http://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-communication.html) profile contains the main content of a message, which includes at least one message segment with a message text (Danish: Meddelelsestekst) and a signature, and it may include zero or more message segments with an attachment and a signature. All message segments are found under the element Communication.payload. A more detailed description of the content of the MedComCareCommunication profile can be seen below. 

The figure below shows the possible references from MedComCareCommunication profile, and thereby which resources that may be included in a CareCommunication message. A subject, in terms of a [MedComCorePatient](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-patient.html), shall always be included since a CareCommunication message always concerns a patient's matter. A [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) and [MedComCorePractitioner](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitioner.html) shall be included since these reference includes information about the author of the message text. A [MedComCoreEncounter](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html) may be referenced if an episodeOfCare-identifier (Danish: forløbs-id) is relevant to include. Further, the [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html) or [MedComCoreCareTeam](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-careteam.html) may be included if a recipient or sender is added. Both profiles includes a reference to a [MedComCoreOrganization](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-organization.html). 

<img alt="MedComCareCommunication references a MedComCorePatient, MedComCoreEncounter, Danish Core Organization Profile, MedComCoreOrganization, MedComCorePractitioner, or MedComCorePractitionerRole. A subject, in terms of a MedComCorePatient, shall always be included since a CareCommunication message alway shall concern a patient matter, a MedComCorePractitioner shall be included since the reference describes information about the author of the message text, and a MedComCoreEncounter may be referenced if an episodeOfCare-identifier (Danish: forløbs-id) is relevant to include. Further, the MedComCorePractitionerRole or MedComCoreCareTeam may be included if a recipient or sender is added. " src="./carecommunication/CareCommunicationCommunication.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCareCommunication.

#### Categories and Topic

All MedCom CareCommunication messages shall have a category (Danish: Kategori), in the element Communication.category. The category describes the overall content of the communication and shall be selected from a nationally agreed list of categories defined in the [ValueSet of category codes](https://medcomfhir.dk/ig/terminology/ValueSet-medcom-careCommunication-categories.html). In time new category codes may be relevant to include or existing codes may be irrelevant, why it should be expected that the ValueSet will changed. Changes will be made in agreement with the business and will be warned. 

In addition to the category, it is allowed to add a topic (Danish: Emne) in the element Communication.topic, to support and elaborate the category. This can either be inserted as free text or as regionally agreed codes, which is describes further in the [clinical guidelines for application](https://medcomdk.github.io/dk-medcom-carecommunication/#11-clinical-guidelines-for-application). When answering and forwarding a CareCommunication message, the same category and topic from the previous message should be inserted automatically. The user then has the option to change it to a different category and a different topic if desired.

When sending a CareCommunication message with the category *other*, a topic shall be included. To ensure this, the invariant medcom-careCommunication-6 is created.  

#### Priority

Priority, found in the element Communication.priority, is used to support the referral flow. It is only allowed to add a priority of a CareCommunication message when the category of the message is *regarding referral*. In this case priority can either be *routine* or *asap*. To ensure this, the invariant medcom-careCommunication-5 is created, which states that in no other case than when the category is *regarding referral*, may a priority be added. As describes on [clinical guidelines for application](https://medcomdk.github.io/dk-medcom-carecommunication/#11-clinical-guidelines-for-application), the use of priority must follow the development in collective agreements and on basis of national requirements. 

#### Episode of care identifier 

In the element Communication.encounter it is possible to reference a [MedComCoreEncounter](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-encounter.html) profile. An encounter describes the meeting between a patient and one or more healthcare providers or actors involved in the patient care. The Encounter resource contains an episodeOfCare-identifier. When receiving a message, either CareCommunication or EDIFACT/OIOXML message, there will in many cases be an episodeOfCare-identifier, as it described the id of the contact. If this is the case, it shall always be included in the response. 
[Click here to get more information about the episodeOfCare-identifier]( https://medcomdk.github.io/MedCom-FHIR-Communication/) 


#### Recipient and sender

In the [MedComCareCommunicationMessageHeader](https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html) profile it is required to include information about a sender and receiver in terms of a reference to a [MedComMessagingOrganization](https://medcomfhir.dk/ig/messaging/StructureDefinition-medcom-messaging-organization.html). This information is primarily used for transportation matters and will always include an EAN-number and SOR-identifier for each organisation. 

When sending a CareCommunication message it is possible to add a more specific receiver of the message, called a recipient, and a more specific sender, which can be found in the elements Communication.recipient and Communication.extension.sender, respectively. It is allowed to reference a [MedComCoreCareTeam](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-careteam.html), which is people or an organization participating a coordination or delivery of patientcare, or [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/StructureDefinition-medcom-core-practitionerrole.html), which references a MedComCorePractitioner to address a professionals involved in patient care. Common for both MedComCoreCareTeam and MedComCorePractitionerRole/MedComCorePractitioner is that a name of the careteam or practitioner should be included as well as a reference to a MedComCoreOrganization which represents the sender og receiver defined in [MedComCareCommunicationMessageHeader](https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html).


#### Message segments 

A message segment consist of a message text and a signature or an attachment. 
The message text and attachments will both be included in the element Communication.payload, however they shall be included in different slices. At least one payload which includes the message text shall be included when sending a CareCommunication message, but zero or more attachments may be included. 

> Note: Snippets from a patient's journal may be included in the message text or as a pdf-document. In either case it is recommended that the sender clearly describes in the message text or attachment, who the original author of the for the journal is and when it was written. This may both be included as written/copied text or structured text for pdf-document.

##### Message text
The written content of the message is of the datatype [string defined by FHIR](http://hl7.org/fhir/R4/datatypes.html#string), and it should obey a subset of [xhtml](https://medcomdk.github.io/dk-medcom-core/assets/documents/MedComCore-Styling_the_XHTML.html). The signature for the message text consists of the following:<br> 
**Author:** The name of the person responsible for writing the message text. The author shall be described using a MedComCorePractitioner. <br> 
**Author role:** The role (Danish: stillingsbetegnelse) of the person responsible for writing the message text. The author role shall be described using a MedComCorePractitionerRole. <br> 
**Relevant phone number:** A relevant phone number e.g. to the department from which the CareCommunication is sent. The phone number should be applied automatically and it is recommended to use the same phone number as in the SOR-register for the sender organisation. In case it is not possible to apply the phone number automatically, it shall be applied by the author. <br> 
**Timestamp:** Represents the real world event, where the user presses "send" to send the CareCommunication.


##### Attachments 
An attachment shall be of the type pdf, jpeg, png, tiff or gif. In a message segment with an attachment, the following shall be included: <br> 
**Title:** The title of the attached file. This should be applied by the system. <br>
**Identifier:** An UUID with a reference to the sending organisation. The assigner is a reference to the organisation who assigned the UUID, which will be the same as the sender organisation. If the attachment is modified and reattached, it shall be given a new UUID and the assigner shall be updated. <br> 
**Timestamp:** Represents the real world event, where the user presses "send" to send the CareCommunication. 

It is optional to include information about: <br>
**Author:** The person responsible for creating the attachment. As mentioned in the [clinical guidelines for application](https://medcomdk.github.io/dk-medcom-carecommunication/#11-clinical-guidelines-for-application), are both the author of an attachment and the person who attaches the attachment responsible for the content. <br>  
**Author role:** The role of the person responsible for creating the attachment. The author role shall be described using a MedComCorePractitionerRole. <br>
**Relevant phone number:** A relevant phone number e.g. to the department from which the CareCommunication is sent. The phone number should be applied automatically without user interference and it is recommended to use the same phone number as in the SOR-register for the sender organisation. In case it is not possible to apply the phone number automatically, it shall be applied by the author. <br> 
**Creation:** The date and time for when the attachment is created. 

