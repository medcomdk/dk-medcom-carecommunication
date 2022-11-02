Extension:  MedComCareCommunicationPayloadAuthorExtension
Id: medcom-carecommunication-author-extension
Title: "PayloadAuthorExtension"
Description: "Reference to author of this payload"
* value[x] 1..1
* value[x] only Reference(MedComCorePractitionerRole)
* value[x] ^type.aggregation = #bundled
