### Scope and usage 

This profile is the root profile of MedCom FHIR CareCommunication message. This profile is inherited from the MedComMessagingMessage.
The following figure represent the profiles that should be included in a MedCom FHIR CareCommunication message.

The Bundle containing the CareCommunication message is selfcontained, why it shall contain one instance of the MedComCareCommunicationMessageHeader. By convention the cardinality is shown as 0..*.

<img alt="Shows the structure of a CareCommunication message. The MedComCareCommunicationMessage includes a MedComCareCommunicationMessageHeader and a MedComCareCommunicationProvenance. MedComCareCommunicationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComCareCommunication. From the MedComCareCommunication is a MedComCorePatient, MedComCoreEncounter, Organization, MedComCorePractitioner and MedComCorePractitionerRole referenced." src="./carecommunication/CareCommunication.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCareCommunicationMessage.  


