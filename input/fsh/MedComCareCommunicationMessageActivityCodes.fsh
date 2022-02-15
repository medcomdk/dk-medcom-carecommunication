
ValueSet: MedComCareCommunicationMessageActivities
Id: medcom-careCommunication-messagingActivities
Title: "MedComCareCommunicationMessageActivityCodes"
Description: "ValueSet containg activity codes for care communication messages"
* include #new-message from system $ActivityCode 
* include #reply-message from system $ActivityCode
* include #forward-message from system $ActivityCode 
* include #retract-message from system $ActivityCode
* include #modified-message from system $ActivityCode
