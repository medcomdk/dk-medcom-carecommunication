- In general: 
    - It is made optional to send a cancellation, modifying and forwarding CareCommunication. Therefore, relevant descriptions are updated.
    - Updated figures.

- CareCommunication profile
    - Added description of when replying to a CareCommunication with attached files, the reply should not include the base64-encoded files or the url, only the identifier and author information.
    - Updated an identifier, as each message segment must include one. The identifier must be included in all message segments and must not be changed when replying, forwarding, modifying or cancelling a message and must always be returned.
    - Made the MedComIdentifierExtension (previous: AttachmentIdentifierExtension) able to support identifier in message segments with text and attachments.
    - Updated examples and textual description in accordance to the above mentioned changes.

- CareCommunicationMessage profile
    - Corrected invariant medcom-careCommunication-1 and medcom-careCommunication-3 to accommodate the QA-report. 

- CareCommunicationMessageHeader profile
    - Changed the cardinality of MessageHeader.destination:CC to 0..0. The requirements where mentioned on the index page, but not included in the profile.
