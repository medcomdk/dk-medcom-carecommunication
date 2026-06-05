Profile: MedComCareCommunication
Parent: Communication
Id: medcom-careCommunication-communication
Description: "Care related communication between two or more parties in Danish healthcare"
* id MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* status = #unknown
* status MS
* identifier 1..1 MS 
* identifier.value 1..1 MS 
* identifier obeys medcom-uuidv4
* identifier ^short = "The communication identifier" 
* category 1..1 MS
* category from $CCCategoryCodes
* category.coding 1..1 MS
* category.coding.code 1..1 MS
* category.coding.system 1..1 MS
* priority MS
* priority from $RequestPriority
* priority ^short = "Shall be present if the message priority is known to be ASAP, but is only allowed when the category is 'regarding referral', see medcom-careCommunication-5"
* subject 1.. MS
* subject only Reference(MedComCorePatient)
* subject ^type.aggregation = #bundled
* topic MS
* topic.text 1..1 MS
* topic ^short = "The topic (Danish: emne) may be added as a supplement to the category. Topic must be added in the text-element."
* encounter MS
* encounter only Reference(MedComCoreEncounter)
* encounter ^type.aggregation = #bundled
* encounter ^short = "Shall contain a reference to an Encounter resource with a episodeOfCare-identifier, if the identifier is included in a previous message."
* recipient MS
* recipient ..1
* recipient only Reference(MedComCorePractitionerRole or MedComCoreCareTeam)
* recipient ^short = "Describes a more specific receiver than the MessageHeader.destination.reciever, called a recipient. It may be a careteam a homecare group in the municipality or a named general practitioner."
* recipient ^type.aggregation = #bundled 
* extension contains medcom-core-sender-extension named sender 0..1 MS
* payload 1..
* payload ^short = "Each payload corresponds to a message segment with a message text or an attachment. At least one payload with a message text shall be included."
* payload.extension contains medcom-core-datetime-extension named date 0..1 
* payload.extension contains medcom-core-practitioner-extension named author 0..1 
* payload.extension contains medcom-core-contact-extension named authorContact 0..1 
* payload.extension contains medcom-core-identifier-extension named identifier 0..1 
* payload ^slicing.discriminator.type = #type
* payload ^slicing.discriminator.path = "$this.content"
* payload ^slicing.rules = #open
* payload contains
    string 1.. MS and
    attachment 0.. MS
* payload[string].content[x] only string
* payload[string].content[x] MS 
* payload[string].content[x] ^short = "Line breaks must be represented as '\n' in FHIR JSON and as '&#xA;' in FHIR XML."
* payload[string].extension[date] 1..1 MS
* payload[string].extension[identifier] 1..1 MS
* payload[string].extension[author] 1..1 MS
* payload[string].extension[authorContact] 1..1 MS
* payload[attachment].content[x] only Attachment
* payload[attachment] 0.. MS
* payload[attachment] ^short = "The payload with an attachment shall contain a link or content attached to the message."
* payload[attachment].content[x] MS
* payload[attachment].extension[date] 1..1 MS
* payload[attachment].extension[identifier] 1..1 MS
* payload[attachment].extension[author] 0..1 MS
* payload[attachment].extension[authorContact] 0..1 MS
* payload[attachment].contentAttachment 1.. MS
* payload[attachment].contentAttachment.contentType MS
* payload[attachment].contentAttachment.contentType ^short = "The content type shall be present when the content is an attachment included in the data element."
* payload[attachment].contentAttachment.contentType from $Mimetypes
* payload[attachment].contentAttachment.data MS
* payload[attachment].contentAttachment.data ^short = "Shall be present and contain the base64 encoded content of the attachment."
* payload[attachment].contentAttachment.url MS
* payload[attachment].contentAttachment.url ^short = "Shall be present if the attachment is a link to a web page."
* payload[attachment].contentAttachment.title 1.. MS
* payload[attachment].contentAttachment.title ^short = "Note: it is not allowed for the system to automatically include '.filetype' in the title."
* payload[attachment].contentAttachment.creation MS
* payload[attachment].contentAttachment.creation ^short = "The time the attachment was created"
* category ^short = "The category (Danish: kategori) describes the overall content of the message."
* obeys medcom-careCommunication-5
* obeys medcom-careCommunication-6
* obeys medcom-careCommunication-7
* obeys medcom-careCommunication-8
* obeys medcom-careCommunication-9
//* obeys medcom-careCommunication-10
* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(extension[sender])
* insert ProducerShallPutInNarrative(status)
* insert ProducerShallPutInNarrative(category.coding.code)
* insert ProducerShallPutInNarrative(priority)
* insert ProducerShallPutInNarrative(subject)
* insert ProducerShallPutInNarrative(topic.text)
* insert ProducerShallPutInNarrative(encounter)
* insert ProducerShallPutInNarrative(recipient)
* insert ProducerShallPutInNarrative(payload[string].extension[date])
* insert ProducerShallPutInNarrative(payload[string].extension[author])
* insert ProducerShallPutInNarrative(payload[string].extension[authorContact])
* insert ProducerShallPutInNarrative(payload[string].content[x])
* insert ProducerShallPutInNarrative(payload[attachment].extension[date])
* insert ProducerShallPutInNarrative(payload[attachment].extension[author])
* insert ProducerShallPutInNarrative(payload[attachment].extension[authorContact])
* insert ProducerShallPutInNarrative(payload[attachment].content[x].contentType)
* insert ProducerShallPutInNarrative(payload[attachment].content[x].url)
* insert ProducerShallPutInNarrative(payload[attachment].content[x].title)
* insert ProducerShallPutInNarrative(payload[attachment].content[x].creation)

Invariant: medcom-careCommunication-5
Description: "Priority must not be present when Communication.category is other than 'regarding-referral'"
Severity: #error
Expression: "where(category.coding.code != 'regarding-referral').priority.empty()"

Invariant: medcom-careCommunication-6
Description: "There shall exist a Communication.topic when Communication.category = 'other'"
Severity: #error
Expression: "iif(category.coding.code != 'other', true, category.coding.code = 'other' and topic.exists())"

Invariant: medcom-careCommunication-7
Description: "There shall exist a practitioner role when using a PractitionerRole as author in a message segment."
Severity: #error
Expression: "payload.extension('http://medcomfhir.dk/ig/core/StructureDefinition/medcom-core-practitioner-extension').value.resolve().all(code.coding.code.exists() xor code.text.exists())"

Invariant: medcom-careCommunication-8
Description: "There shall exist a practitioner name when using a Practitioner as author in a message segment."
Severity: #error
Expression: "payload.where(extension('http://medcomfhir.dk/ig/core/StructureDefinition/medcom-core-practitioner-extension').exists()).extension.value.reference.resolve().practitioner.resolve().name.exists()"

/* Invariant: medcom-uuidv4
Description: "The value shall correspond to the structure of an UUID version 4"
Severity: #error
Expression: "value.matches('urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"
 */

Invariant: medcom-careCommunication-9
Description: "An episodeOfCare-identifier must be included when an Encounter instance is included."
Severity: #error
Expression: "iif(encounter.exists().not(), true, encounter.reference.resolve().episodeOfCare.identifier.exists())"


/* Invariant: medcom-careCommunication-9
Description: "When an attachment is included, it shall have an identifier"
Severity: #error
Expression: "payload.where(content.data.exists()).extension('http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-carecommunication-attachment-identifier-extension').exists() or payload.content.data.exists().not()" */

/* Invariant: medcom-careCommunication-10
Description: "The status shall be 'unknown' or 'entered-in-error'."
Severity: #error
Expression: "status='unknown' or status='entered-in-error'" */