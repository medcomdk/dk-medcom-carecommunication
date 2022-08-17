# MedCom CareCommunication - WORK IN PROGRESS!
<!-- HomePage -->
**Table of Content**
* [1 Standard Documentation](#1-standard-documentation)
  * [1.1 Clinical Guidelines](#11-clinical-guidelines)
  * [1.2 Use Cases](#12-use-cases)
  * [1.3 Implementation Guide](#13-implementation-guide)
* [2 Test and Certification](#2-test-and-certification)
* [3 Release Notes](#3-release-notes)
<p>&nbsp;</p>

> Clinical guidelines and use cases are in both Danish and English. The remaining documentation will be in English.

This page presents MedCom's CareCommunication standard (Dansk: korrespondancemeddelelser). This standard will in time replace the existing standards <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> and <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>. The purpose of the standard is to support digital communication between healthcare professionals by enabling  messagebased exchange of data. The standard can be used to communicate about a patient or a citizen between healthcare parties, such as municipalities, general partiticioners, hospitals, physiotherapist and many more. 

The Care Communication IG contains the following profiles: 
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/StructureDefinition-medcom-careCommunication-communication.html" target="_blank">MedComCareCommunication</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/StructureDefinition-medcom-careCommunication-message.html" target="_blank">MedComCareCommunicationMessage</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html" target="_blank">MedComCareCommunicationMessageHeader </a>
<p>&nbsp;</p>

## 1 Standard Documentation 
The standard documentation below provides the necessary content to understand the needs for modernization, the role of the CareCommunication message, what to implement and how to get a MedCom certificate. The standard documentation for CareCommunication message includes:
  * Clinical Guidelines
  * Use cases
  * Technical Specifications in terms of the relevant IGs and clinical introduction to the content of the IG.
<p>&nbsp;</p>

### 1.1 Clinical Guidelines 

The clinical guidelines is the foundation for the CareCommunication standard. It describes the clinical needs for the modernization, the requirement for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for CareCommunication. It is important for both implementers and business specialists to understand the clinical guidelines to ensure that the implemented standard supports the requirements.

Below can the clinical guidelines in Danish and English be found:
[Danish: Sundhedsfaglige retningslinjer](assets/documents/Clinical-guidelines-DA.md) <br> 
[English: Clinical guidelines](assets/documents/Clinical-guidelines-ENG.md) 

### 1.2 Use Cases

Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of the CareCommunication. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.

The use cases for CareCommunication are qualified in collaboration with EPR- and vendors catering to the municipalities.

Below can the use cases in Danish and English be found:

[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md) 

### 1.3 Implementation Guide

The technical specifications for the CareCommunication standard are defined in IGs. As mentioned previously is the CareCommunication standard composed by profiles from *NUMBER* IGs and terminology from one IG. Links to the IG’s are listed below:
*	<a href="https://medcomdk.github.io/dk-medcom-core/" target="_blank">MedCom Core IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-messaging/" target="_blank">MedCom Messaging IG</a>
*	<a href="https://build.fhir.org/ig/medcomdk/dk-medcom-terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>

IGs might be difficult for people with little or no knowledge about FHIR and how to understand an IG. Therefore has MedCom developed a webpage describing the content of the Care Communication standard. The link below gives an overview of which profiles are included, what their purpose are, and which elements that shall be supported in a system. Further the structure of the standard is described and supported with examples in different degree of technical skills.

[An introduction to the technical specificationscan be found here.]((assets/documents/Intro-Technical-Spec-ENG.md))

## 2 Test and Certification
Certification of a system implies both an approved testprotocol and runtrough of TouchStone testscripts. TouchStone describes an infrastructure that allows for automated test and validation against the IGs developes by MedCom.

[Find a general description of MedCom test and certification here](https://tmsmedcom.github.io/GitHubPagesTest/#test-and-certification). 

The testprotocols and testscripts are currently in preparation. As soon as the tesprotocols and testscripts are ready, they will be presented below.

**Sending a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p>
 
**Receiving a HospitalNotification message**
  * Testprotocol
  * TouchStone Testscripts
<p>&nbsp;</p>

## 3 Release Notes

[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md)
