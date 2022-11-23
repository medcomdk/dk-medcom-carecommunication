Extension:  MedComCareCommunicationPayloadAuthorContactExtension
Id: medcom-carecommunication-author-contact-extension
Title: "PayloadAuthorContactExtension"
Description: "Extension to contain the contact information tha author of the payload"
* valueContactPoint 1..
* valueContactPoint.value 1.. MS
* valueContactPoint.value obeys medcom-carecommunication-authorcontact
* valueContactPoint.value ^short = "Shall contain the telephone number for the department or area. The telephonenumber should be applied automaticly without user interference and it is recommended to use the same telephonenumber as in the SOR-register for the sender organisation."
* valueContactPoint.system = #phone
* valueContactPoint.system MS


Invariant: medcom-carecommunication-authorcontact
Description: "The telephone number may include + and numbers from 0-9"
Severity: #error
Expression: "matches('[+]?[-0-9]')" 