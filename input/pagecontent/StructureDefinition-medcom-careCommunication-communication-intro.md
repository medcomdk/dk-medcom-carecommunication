### Scope and usage 
This profile is used as the Communication resource for the MedCom CareCommunication message. MedComCareCommunication contains the main content of a message, as it always shall include a text element and it may include zero or more attachments. For each text and attachment there shall be included a timestamp and an author. 

The profile requires to include a category (Danish: Katefori) from the defined value set. When sending a messages with the category *regarding referral* it is allowed to add a priority which can be either routine or asap. Additionally, is it allowed to include a topic (Danish: emne) in the message, which is more specific than the category, and all topic shall be associated with a category. 

It is allowed to add a sender and/or recipient that is more precise than the sender and destination organizations given in the MedComCareCommunicatonMessageHeader, this could be a specific healthcare professional or a department. Since a department might not have a SOR- or EAN-identifier as required in MedComCoreOrganization or MedComMessagingOrganization, it may be describe using an Organization resource. 

<img alt="MedComCareCommunication references a MedComCorePatient, MedComCoreEncounter, Organization, MedComCorePractitioner and MedComCorePractitionerRole." src="./carecommunication/CareCommunicationCommunication.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

Please refer to the tab "Snapshot Table(Must support)" below for the definition of the required content of a MedComCareCommunication.
