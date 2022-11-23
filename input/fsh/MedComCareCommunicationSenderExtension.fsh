Extension:  MedComCareCommunicationSenderExtension
Id: medcom-carecommunication-sender-extension
Title: "SenderExtension"
Description: "Reference to a more specfic sender of a CareCommunication message."
* value[x] 0..1
* value[x] only Reference(MedComCorePractitionerRole or MedComCoreCareTeam)
* value[x] ^type.aggregation = #bundled
* value[x] ^short = "This element is used to describe a more specific sender than the MessageHeader.sender. It may be a careteam a homecare group in the municipality or a named general practitioner."
