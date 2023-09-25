- In general: 
    - It is made optional to send a cancellation, modifying and forwarding CareCommunication. Therefore, relevant descriptions are updated.
    
- CareCommunication profile
    - When replying to a CareCommunication with attached files, the reply should not include the base64-encoded files or the url, only the identifier and author information.
    - Each message segment with message text must include an identifier. The identifier must not be changed when replying, forwarding, modifying or cancelling a message
    - Made the MedComIdentifierExtension able to support identifier in message segments with text and attachments
    - Updated examples and textual description in accordance to the above mentioned changes

- CareCommunicationMessage profile
    - Corrected invariant medcom-careCommunication-1 and medcom-careCommunication-3. 

- CareCommunicationMessageHeader profile
    - Changed the cardinality of MessageHeader.destination:CC to 0..0. The requirements where mentioned on the index page, but not included in the profile.
