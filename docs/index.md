# MedCom CareCommunication
<hr/>

**Table of contents**
* [1 Standard documentation](#1-standard-documentation)
  * [1.1 Clinical guidelines](#11-clinical-guidelines)
  * [1.2 Use cases](#12-use-cases)
  * [1.3 Implementation guide](#13-implementation-guide)
* [2 Test and certification](#2-test-and-certification)
<hr/>

> Clinical guidelines and use cases are in both Danish and English. The remaining documentation will be in English.

This page presents MedCom's CareCommunication standard (Dansk: korrespondancemeddelelser). This standard will in time replace the existing standards <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> and <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>. The purpose of the standard is to support digital communication between healthcare professionals by enabling message-based data exchange. The standard can be used to communicate about a patient or a citizen between healthcare parties, such as municipalities, general parctitioners, hospitals, physiotherapists and many more. 

The CareCommunication IG contains the following profiles: 
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/StructureDefinition-medcom-careCommunication-communication.html" target="_blank">MedComCareCommunication</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/StructureDefinition-medcom-careCommunication-message.html" target="_blank">MedComCareCommunicationMessage</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html" target="_blank">MedComCareCommunicationMessageHeader </a>
<p>&nbsp;</p>

## 1 Standard documentation 
The standard documentation below provides the necessary content to understand the needs for modernization, the role of the CareCommunication message, what to implement and how to get a MedCom Certificate. The standard documentation for CareCommunication message includes:
  * Clinical Guidelines
  * Use cases
  * Technical Specifications in terms of the relevant IG's and clinical introduction to the content of the IG.
<p>&nbsp;</p>

### 1.1 Clinical guidelines 
The clinical guidelines are the foundation for the CareCommunication standard. It describes the clinical needs for the modernization, the requirements for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for CareCommunication. It is important for both implementers and business specialists to understand the clinical guidelines to ensure that the implemented standard supports the requirements.

Below, the clinical guidelines in both Danish and English can be found:<br> 
[Danish: Sundhedsfaglige retningslinjer](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines](assets/documents/Clinical-guidelines-ENG.md) 

### 1.2 Use cases
Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of CareCommunication. The descriptions are targeted IT system vendors and the people responsible for the implementation in regions and municipalities.

The use cases for CareCommunication are qualified in collaboration with EPR and vendors catering to the municipalities.

<b>Use Cases in Danish and English are currently in preparation. As soon as the uses cases are ready, they will be presented below.</b> 

<!-- Below can the use cases in Danish and English be found:<br> 

[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md)  -->

### 1.3 Implementation guide

The technical specifications for the CareCommunication standard are defined in IG's. As mentioned previously the CareCommunication standard is composed by profiles from two IG's and terminology from one IG. Links to the IG’s are listed below:
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-core/index.html" target="_blank">MedCom Core IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>
Understanding IG's might be difficult for people with little or no knowledge about FHIR. Therefore, MedCom has developed a page describing the content of the Care Communication standard.The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support.
Further the structure of the standard is described and supported with examples in different degree of technical skills.

[Click here to read an introduction to the technical specifications.](assets/documents/Intro-Technical-Spec-ENG.md)

## 2 Test and certification
Certification of a system implies both an approved test protocol and run-trough of TouchStone test scripts. TouchStone describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom.

<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank">Click here to read the general description of MedCom test and certification proces.</a> 

<b>The test protocols and test scripts are currently in preparation. As soon as they are ready, they will be presented below.</b>

**Sending a HospitalNotification message**
  * Test protocol
  * TouchStone Testscripts

**Receiving a HospitalNotification message**
  * Test protocol
  * TouchStone Testscripts


<!-- ## 3 Release Notes

[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md) -->
