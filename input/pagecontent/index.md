### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; Care Communication in  message based exchange of data in Danish healthcare.

This IG contains profiles for the MedCom standard called CareCommunication, which involves exchange of various information about a patient between health organizations, similar to an email, with or without attachments. The maximum size of a MedCom CareCommunication message must not be above 50 MB, including all text and attachments. 

CareCommunication obeys to the general MedCom messaging model, and the structure of a CareCommunication message is depicted on the following diagram:

<img alt="Shows the structure of a CareCommunication message. The MedComCareCommunicationMessage includes a MedComCareCommunicationMessageHeader and a MedComMessagingProvenance. MedComCareCommunicationMessageHeader references a sender and receiver organization, the MedComMessagingOrganization and a focus which is a reference to a MedComCareCommunication. From the MedComCareCommunication is a MedComCorePatient, MedComCoreEncounter, Organization, MedComCorePractitioner and MedComCorePractitionerRole referenced." src="./carecommunication/CareCommunication.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />

The following sections describe the overall purpose of each profile.

#### MedComCareCommunicationMessage

TheMedComCareCommunicationMessage constrains the MedComMessagingMessage further to use the MedComCareCommunicationMessageHeader and to require exactly one MedComCorePatient, MedComCoreEncounter, and MedComCareCommunication profile in the message. Furthermore, it constrains the value set of activities in the MedComMessagingProvenance profile to only contain activities from the MedComCareCommunicationMessageActivities value set, which contains activities such as new-message, forward-message, and other activities triggering the message.

#### MedComCareCommunicatonMessageHeader

The MedComCareCommunicatonMessageHeader constrains the MedComMessagingMessageHeader further to specify the fixed coding for this message and require a focus reference to a MedComCareCommunication.

#### MedComCareCommunication

The MedComCareCommunication contains the main content of the message. It constrains the Communication resource to the categories given in the MedComCareCommunicationCategories value set and the priority to be either routine or ASAP, however priority is only allowed when the category is *regaring referral*. 
It is allowed to add a topic of the message. MedComCareCommunication must contain an MedComCoreLpr3Encounter if an LPR3-identifier is known. The payload of the message is either text fragments or attachments, each given a timestamp and an author. It is allowed to add a sender and/or recipient that is more precise than the sender and destination organizations given in the MedComCareCommunicatonMessageHeader, this could be a specific healthcare professional or a department.

### Documentation

#### Non-technical guidelines
Information regarding non-technical guidelines and use cases for CareCommunication is found here:

English:
* [CareCommunication Use Cases](./carecommunication/pdf/USE%20CASES_FHIR%20Care%20Communication.pdf)
* [Non-technical guidelines for CareCommunication](./carecommunication/pdf/FHIR%20Care%20Communication%2C%20MedCom%20FHIR%20Standard.pdf)

Danish:
* [CareCommunication Use Cases](./carecommunication/pdf/Use%20Cases_FHIR%20Korrespondancemeddelelse.pdf)
* [Non-technical guidelines for CareCommunication](./carecommunication/pdf/FHIR_Korrespondancemeddelelse.pdf)

#### Mapping betweeen MedCom OIOXML advis standard and the CareCommunication message.
This section describes how to map between MedCom OIOXML XDIS91 standard and the MedCom FHIR CareCommunication message

Please notice, that not all elements from the CareCommunication message are mentioned in the document, as not all information is relevant to map between the two standards. For a full overview of the requirements in the CareCommunication message, view the included profiles, as showns on the figure in the top of the page.

The mapping is only elaborated in English:
* [XDIS91 -> CareCommunication  ](./carecommunication/pdf/Map_Between_OIOXML_and_FHIRCareCommunication-22-01-03.pdf)


#### Content

This document presents MedCom messaging concepts defined via FHIR processable artefacts:

* [Profiles](profiles.html) - contain the constraints to core FHIR resources and datatype for use in MedCom messages
* [Extensions](extensions.html) - are FHIR extensions that are added for local use, covering needed concepts for the messaging
* [Terminologies](https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/) - are defined or referenced code systems and value sets for the messaging context

#### Governance

FHIR profiles are managed under MedCom:

* [Source](https://github.com/medcomdk/dk-medcom)
* [Wiki](https://github.com/medcomdk/dk-medcom)
