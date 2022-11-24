# MedCom CareCommunication
><b>Please be aware that this page is under review. A stable version of the CareCommunicationstandard is expected to be ready at the end of November 2022 </b>


**Table of contents**
* [1 Standard documentation](#1-standard-documentation)
  * [1.1 Clinical guidelines for application](#11-clinical-guidelines-for-application)
  * [1.2 Use cases](#12-use-cases)
  * [1.3 Technical specification](#13-technical-specification)
  * [1.4 Mapping between OIOXML standard (XDIS91) and FHIR CareCommunication](#mapping-between-oioxml-and-fhir)
* [2 Test and certification](#2-test-and-certification)

> Note: Clinical guidelines for application and use cases are available in both Danish and English. The remaining documentation will solely be in English.

This page presents MedCom's CareCommunication standard (Danish: Korrespondancemeddelelse). In time, this standard will replace the existing standards <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/EDI/Dokumentation/" target="_blank">DIS91</a> and <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>. The purpose of the standard is to support secure digital communication between social care, psychiatric and the somatic sector. CareCommunication standard enable communication of personally identifiable information and is typically used for ad-hoc communication.However, the correspondence message must only be used in those areas where no structured MedCom standards are already available. The correspondence notification must not be used in cases of an urgent nature.
In a CareCommunication it is possible to attach a digital document, to include a category code which enables automatic sorting of the messages, and it is further possible to include a topic that supports the category. 

## 1 Standard documentation 
The standard documentation below provides the necessary content to understand the needs for CareCommunication, the role of the CareCommunication, what to implement and how to get a MedCom Certificate. The standard documentation for CareCommunication includes:
  * Clinical guidelines for application
  * Use cases
  * Technical Specifications in terms of the relevant IG's and clinical introduction to the content of the IG
  * Mapping between OIOXML, XDIS91 and FHIR CareCommunication 
<p>&nbsp;</p>

### 1.1 Clinical guidelines for application 
The clinical guidelines for application are the foundation for the CareCommunication standard. It describes the clinical needs for the CareCommunication, the requirements for the content of the standard and how the standard supports the business requirements. It is the primary textual part of the documentation for CareCommunication. It is important for both implementers and business specialists to understand the clinical guidelines for application to ensure that the implemented standard supports the requirements.

Below, the clinical guidelines for application can be found (the information is in Danish):<br> 
[Danish: Sundhedsfaglige retningslinjer for anvendelse](assets/documents/Clinical-guidelines-DA.md) <br> 
 
 >Note: Clinical guidelines for application in English are in preparation. As soon as they are ready they will be published. 

<!-- [English: Clinical guidelines for application](assets/documents/Clinical-guidelines-ENG.md)  -->

### 1.2 Use cases
Use cases describe the different scenarios in which a standard support. For a certain real-world scenario, it describes the requirements for the content of a message. The purpose of the use cases is to ensure a coherent implementation and use of CareCommunication. The descriptions are targeted IT system vendors and the people responsible for the implementation in regions and municipalities.

<!-- The use cases for CareCommunication are qualified in collaboration with EPR and vendors catering to the municipalities. -->

[Danish: Use cases](assets/CareCommunication_use_cases_v2.0.0.pdf) 
> Please be aware that the use cases are in Danish. 


<!-- Below can the use cases in Danish and English be found:<br> 

[Danish: Use cases](assets/documents/UseCases-DA.md) <br> 
[English: Use cases](assets/documents/UseCases-ENG.md)  -->

### 1.3 Technical specification

The technical specifications for the <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/" target="_blank">MedCom CareCommunication</a> is composed by profiles from two basis IG's and from one terminology IG. Links to the IG’s are listed below:
*	<a href="https://medcomfhir.dk/ig/core/index.html" target="_blank">MedCom Core IG</a>
*	<a href="https://medcomfhir.dk/ig/messaging/" target="_blank">MedCom Messaging IG</a>
*	<a href="https://medcomfhir.dk/ig/terminology/" target="_blank">MedCom Terminology IG</a>
<p>&nbsp;</p>

<!-- The profiles that are part of the technical specification for <a href="https://medcomfhir.dk/ig/carecommunication/" target="_blank">MedCom CareCommunication IG</a> are:  
*	<a href="https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-communication.html" target="_blank">MedComCareCommunication</a>
*	<a href="https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-message.html" target="_blank">MedComCareCommunicationMessage</a>
*	<a href="https://medcomfhir.dk/ig/carecommunication/StructureDefinition-medcom-careCommunication-messageHeader.html" target="_blank">MedComCareCommunicationMessageHeader </a>
<p>&nbsp;</p> -->

The link below gives an overview of the included profiles, what their purpose is, and which elements the system should support.
Furthermore, the structure of the standard is described and supported with examples in different degrees of technical skills.

[Click here to read an introduction to the technical specifications.](assets/documents/Intro-Technical-Spec-ENG.md)

### 1.4 Mapping between OIOXML standard (XDIS91) and FHIR CareCommunication {#mapping-between-oioxml-and-fhir}
Mapping from previous OIOXML standards to the FHIR CareCommunication standard can be found below. The document is intended to help translate the previous standard to the new FHIR standard. Please notice that not all elements from  <a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>are transferred to the CareCommunication, as not all elements are represented in the FHIR standard. 

Furthermore, not all elements from the FHIR elements are represented in the document; thus, it cannot stand alone for implementation.<br>
[Click here to see the mapping from the previous OIOXML standard (XDIS91) to the FHIR CareCommunication standard.](assets/documents/Map_between_OIOXML_FHIR.md)


## 2 Test and certification
Certification of a system implies both an approved test protocol and a run trough of TouchStone test scripts. TouchStone describes an infrastructure that allows automated test and validation against the IG's developed by MedCom.

<a href="https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification" target="_blank">Click here to read the general description of MedCom's test and certification process.</a> 

<b>The test protocols and test scripts are currently in preparation. As soon as they are ready, they will be published below.</b>

**Sending a CareCommunication**
  * Test protocol
  * TouchStone Testscripts

**Receiving a CareCommunication**
  * Test protocol
  * TouchStone Testscripts


<!-- ## 3 Release Notes

[Updates in the latest release.](assets/documents/ReleaseNote-ENG.md) -->
