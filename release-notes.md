- In general: 
    - The possibility to send cancellations, corrections, and formatted text is removed. This is done in agreement with the working group. Text is updated accordingly.
    - Included an example-page to illustrate the flow of messages. 
    
- MedComCareCommunication profile
    - Added requirement to include the element Communication.identifier. The identifier must be an uuid-v4. 
    - Clarified the use of practitioner roles for each payload.

- MedComCareCommunicationMessageDefinition profile
    - Added profile which describes the characteristics of a CareCommunication message. 

- MedComCareCommunicationProvenance profile
    - Added profile, which inherits from MedComMessagingProvenance, to include a reference to the included payload in the MedComCareCommunication. 

- MedComCareCommunicationMessageHeader profile
    - Added requirement to include a link to the MedComCareCommunicationMessageDefinition.