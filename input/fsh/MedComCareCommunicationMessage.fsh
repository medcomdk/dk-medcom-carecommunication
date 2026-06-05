Profile: MedComCareCommunicationMessage
Parent: MedComMessagingMessage
Id: medcom-careCommunication-message
Description: "The CareCommunication is used to ensure secure electronic communication of personally identifiable information and is most often used for ad hoc communication between parties in Danish Healthcare. However, the CareCommunication shall only be used in areas where no other MedCom standard is available, and it must not be used for cases with an acute nature."
* entry.resource 1..
* entry ^short = "Message content (MedComCareCommunicationMessageHeader, MedComMessagingOrganization, MedComMessagingProvenance, MedComCareCommunication, MedComCorePatient, MedComCoreEncounter, MedComCorePractitioner, MedComCorePractitionerRole, MedComCoreCareTeam) - Open"
* obeys medcom-careCommunication-1
* obeys medcom-careCommunication-2
* obeys medcom-careCommunication-4
* obeys medcom-careCommunication-3
* obeys medcom-careCommunication-12
* obeys medcom-careCommunication-11
* obeys medcom-careCommunication-13
* obeys medcom-careCommunication-15

Invariant: medcom-careCommunication-1
Description: "The MessageHeader shall be the medcom-careCommunication-messageHeader"
Severity: #error
Expression: "entry[0].resource.ofType(MessageHeader).meta.profile.startsWith('http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-messageHeader')"

Invariant: medcom-careCommunication-2
Description: "Entry shall contain exactly one Patient resource"
Severity: #error
Expression: "entry.where(resource.is(Patient)).count() = 1"

Invariant: medcom-careCommunication-3
Description: "All Provenance resources shall be of the type medcom-careCommunication-provenance profile"
Severity: #error
Expression: "entry.resource.ofType(Provenance).all(meta.profile.startsWith('http://medcomfhir.dk/ig/carecommunication/StructureDefinition/medcom-careCommunication-provenance'))"

Invariant: medcom-careCommunication-4
Description: "There shall exist a practitioner given and family name when using a PractitionerRole."
Severity: #error
Expression: "entry.resource.ofType(Practitioner).name.exists()"

Invariant: medcom-careCommunication-11
Description: "If a specific sender is present, at least one of the organisations that the
 referenced CareTeam or Practitioner/PractitionerRole belongs to MUST equal the organisation referenced in MessageHeader.sender.
If no specific sender extension is present, this rule is not evaluated."
Severity: #error
Expression: "Bundle.entry.resource.ofType(Communication).extension.value.reference.resolve().managingOrganization.reference.resolve()
        = %resource.entry.resource.ofType(MessageHeader).sender.reference.resolve()
    or Bundle.entry.resource.ofType(Communication).extension.value.reference.resolve().organization.reference.resolve()
        = %resource.entry.resource.ofType(MessageHeader).sender.reference.resolve()
    or Bundle.entry.resource.ofType(Communication).extension.exists().not()"

Invariant: medcom-careCommunication-12
Description: "If a specific recipient is present, at least one of the organisations that the referenced CareTeam or Practitioner/PractitionerRole belongs to MUST equal the organisation referenced in MessageHeader.receiver.
If no specific recipient is present, this rule is not evaluated."
Severity: #error
Expression: "Bundle.entry.resource.ofType(Communication).recipient.reference.resolve().managingOrganization.reference.resolve() = %resource.entry.resource.ofType(MessageHeader).destination.receiver.reference.resolve() or Bundle.entry.resource.ofType(Communication).recipient.reference.resolve().organization.reference.resolve() = %resource.entry.resource.ofType(MessageHeader).destination.receiver.reference.resolve() or Bundle.entry.resource.ofType(Communication).recipient.exists().not()"

Invariant: medcom-careCommunication-13
Description: "All PractitionerRole resources shall have a reference to an instance of a Practitioner resource."
Severity: #error
Expression: "Bundle.entry.resource.ofType(PractitionerRole).practitioner.reference.exists()"

Invariant: medcom-careCommunication-15
Description: "If an Encounter resource is present in the bundle, there must be a reference to it in Communication.encounter. If no Encounter is present, Communication.encounter must not be populated."
Severity: #error
Expression: "iif(Bundle.entry.resource.ofType(Encounter).exists(),
                Bundle.entry.resource.ofType(Encounter).id = Bundle.entry.resource.ofType(Communication).encounter.reference.resolve().id,
                Bundle.entry.resource.ofType(Communication).encounter.exists().not())"
