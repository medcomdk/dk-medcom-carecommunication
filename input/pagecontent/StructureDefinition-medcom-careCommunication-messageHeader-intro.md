### Scope and usage 
This profile is used as the MessageHeader resource for the MedCom CareCommunication message. Constraint and rules from MedComMessagingMessageHeader are inherited to this profile, but MedComCareCommunicatonMessageHeader is further restricted as it shall contain an focus in term of the MedComCareCommunication and the event code which shall be *care-communication-message*. MedComCareCommunicatonMessageHeader shall have a globally unique id. 

<img alt="MedComCareCommunicationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComCareCommunication. From the MedComCareCommunication is a MedComCorePatient, MedComCoreEncounter, Organization, MedComCorePractitioner and MedComCorePractitionerRole referenced." src="./carecommunication/CareCommunicationMessageHeader.svg" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCareCommunicationMessageHeader.
