- Updated constraint medcom-careCommunication-3: as it did not work intentionally.

- Updated constraint medcom-careCommunication-7: Previously, only a practitioner role code was accepted. It now accepts either a practitioner role code or a free-text description of the role.

- Updated constraints medcom-careCommunication-11 and medcom-careCommunication-12 to use resolve(). This ensures that sender and recipient references can be resolved to their full resources, making it possible to compare the organization of a Practitioner or CareTeam with the corresponding sender or receiver organization in the MessageHeader.

- Added rule: When receiving a CareCommunication that includes a specific sender (Communication.extension.sender), this sender must be transferred to the reply as the specific recipient (Communication.recipient). This ensures continuity and clarity in the communication flow.  

- Added constraint medcom-careCommunication-15 to ensure consistency: if an Encounter resource is present in the bundle, it must be referenced in Communication.encounter; if no Encounter resource is present, Communication.encounter must not be populated.

- Added description that all organizations involved in the communication must be visible to the user. Each message segment must indicate the sending organization, and attachments must be linked to the sending organization and corresponding message text to ensure transparency and traceability.

- Removed requirement that resource id's must be UUIDs.

- Fixed broken links and updated wrong references from MessagingProvenance to CareCommunicationProvenance.

- Added textual clarification that the signature is structured elements and not part of the message text element itself in the Communication resource.

- Added clarification to the data element description: the activity code must be set to reply-message when the CareCommunication is a response to an EDIFACT or OIOXML message.

- Clarified the representation of line breaks in message text: Line breaks must be written as `\n` in FHIR JSON and as `&#xA;` in FHIR XML.

- Added clarification to the IG: systems must not automatically include the file type (e.g., “.pdf”, “.xml”) in the attachment title.

- Removed incorrect default text carried over from a previous IG on profiles page: “The following profiles set the minimum expectations to record, search and fetch health data associated with a Patient.”

- Clarified that it is not mandatory to support sending all attachment types, including links. It is recommended to support all formats unless there are specific reasons not to. It is still mandatory to be able to receive all allowed attachment types. Also, if forwarding is supported, the system must be able to forward all allowed attachment types.

- Corrected all examples.

- Introduced the usage of Obligation SHALL:in-narrative as representation of elements that must be included in the narratives. A link to the updated governance on how to create the narrative text correctly has been included in the Home page.

- Added a note stating that the narrative text in the IG examples is not representative. A link to the updated governance on how to create the narrative text correctly has been included in the Examples page.

- Added description clarifying the use of timestamps.

- Corrected link for messageDefinition in MedComCareCommunicationMessageHeader and moved the profile MedComCareCommunicationMessageDefinition to an external MessageDefinition Implementation Guide.

- Corrected dependencies for parent Implementation Guides. Be aware of changes in these IGs as well.

- Dependencies tab in the menu bar is added.

- Excluded TTL format from the examples.

- The following cardinalities, MustSupport, and Obligation (SHALL:in-narrative) have been added:

  - **Profile: MedComCareCommunication**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`  
    - MustSupport: `text`, `text.status`, `text.div`, `event[x].system`  
    - Cardinality 1..1: `text.status`, `text.div`, `category.coding`, `event[x].system`  
    - Obligation (SHALL:in-narrative): `extension:sender`, `status`, `category.coding.code`, `priority`, `subject`, `topic.text`, `encounter`, `recipient`, `payload:string.extension:date`, `payload:string.extension:author`, `payload:string.extension:authorContact`, `payload:string.content[x]`, `payload:attachment.extension:date`, `payload:attachment.extension:author`, `payload:attachment.extension:authorContact`, `payload:attachment.content[x].contentType`, `payload:attachment.content[x].url`, `payload:attachment.content[x].title`, `payload:attachment.content[x].creation`

  - **Profile: MedComCareCommunicationMessageHeader**  
    - MustSupport + Obligation (SHALL:in-narrative): `event[x].code`, `destination:primary.extension:use.value[x].code`  
    - MustSupport: `text.status`, `text.div`, `event[x].system`, `destination`, `destination:primary`, `destination:primary.extension:use.url`, `destination:primary`.`extension:use.value[x]`, `destination:primary.extension:use.value[x].system`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `id`, `destination:primary.endpoint`, `destination:primary.receiver`, `sender`, `source.endpoint`, `focus`

  - **Profile: MedComCareCommunicationProvenance**  
    - MustSupport + Obligation (SHALL:in-narrative): `id`  
    - MustSupport: `text.status`, `text.div`, `occurred[x]`  
    - Cardinality 1..1: `text.status`, `text.div`  
    - Obligation (SHALL:in-narrative): `target`, `occurred[x]:occurredDateTime`, `activity,coding.code`, `agent.who`, `entity.role`, `entity.what.reference`, `entity`,`what.identifier`  
