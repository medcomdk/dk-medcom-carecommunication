Instance: jklfds89r45jklsduf98w487953jkl.jkliuuh
InstanceOf: MedComCareCommunicationMessage
Title: "Send-K-new"
Description: "Send-K-new"
Usage: #example
* type = $BundleType#message
* timestamp = 2024-10-17T17:20:00+01:00
* entry[+].fullUrl = "MessageHeader/ejklfdsio898kfd"
* entry[=].resource = ejklfdsio898kfd
* entry[+].fullUrl = "Patient/uiodss8902la.z.ikfldsi9439d"
* entry[=].resource = uiodss8902la.z.ikfldsi9439d
* entry[+].fullUrl = "Communication/fhjkewyuir8791kshjekjcxjnmc.klklj"
* entry[=].resource = fhjkewyuir8791kshjekjcxjnmc.klklj
* entry[+].fullUrl = "PractitionerRole/jklfds.jklorewp-hcksa6wjs"
* entry[=].resource = jklfds.jklorewp-hcksa6wjs
* entry[+].fullUrl = "Practitioner/jklsfdiur7uckhxz89"
* entry[=].resource = jklsfdiur7uckhxz89
* entry[+].fullUrl = "Organization/hfjdsyur74893j5hjkfdshj78.jkclzikd"
* entry[=].resource = hfjdsyur74893j5hjkfdshj78.jkclzikd
* entry[+].fullUrl = "Organization/hujkfds678j"
* entry[=].resource = hujkfds678j
* entry[+].fullUrl = "Provenance/jfkdls7f89fdsjkcxz1hnjkzlzal.klasa-klaoi"
* entry[=].resource = jfkdls7f89fdsjkcxz1hnjkzlzal.klasa-klaoi

Instance: ejklfdsio898kfd
InstanceOf: MedComCareCommunicationMessageHeader
Title: "Send-K-new - MessageHeader"
Description: "Send-K-new - MessageHeader"
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#care-communication-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=502191000016006"
* destination[primary].receiver = Reference(hfjdsyur74893j5hjkfdshj78.jkclzikd)
* sender = Reference(hujkfds678j)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1385391000016002"
* focus = Reference(fhjkewyuir8791kshjekjcxjnmc.klklj)

Instance: fhjkewyuir8791kshjekjcxjnmc.klklj
InstanceOf: MedComCareCommunication
Title: "Send-K-new - Communication"
Description: "Send-K-new - Communication"
Usage: #example
* status = $EventStatus#unknown
* category = $CategoryCodes#psychiatry-social-disability
* subject = Reference(uiodss8902la.z.ikfldsi9439d)
* payload.contentString = "Til rette vedkommende. Jeg har netop startet samtaler med Bruno..... Hilsen Anita, psykolog. Example of a disc-list
        <ul>
            <li>Unordered information. </li>
            <li>Ordered information. </li>
            <li>Definitions. </li>
        </ul>
        Example of a arabic-list
        <ol class=\"arabic\">
            <li> arabic 1</li> 
            <li> arabic 2</li> 
        </ol> 
        Example of a unlist
        <ul class=\"unlist\">
            <li> unlist 1</li> 
            <li> unlist 2</li> 
        </ul>
        <b>Example of a BOLD text</b> <br/>
        <i>Example of a ITALIC text</i> <br/>
        <span style=\"text-decoration: underline\">Example of an UNDERLINE text</span> <br/>
        <span style=\"text-decoration: line-through\">Example of a STRIKETHROUGH text</span> <br/>
        <p style=\"text-align: left\">This text is LEFT aligned</p> <br/>
        <p style=\"text-align: right\">This text is RIGHT aligned</p> <br/>
        <p style=\"text-align: center\">This text is CENTER aligned</p> <br/>
        <p style=\"text-align: justify\">This text is JUSTIFIED aligned</p> <br/>
        
        <p> Tables:</p> 
        <table>
            <caption>Example of a TABLE</caption> 
            <tr> 
                <td class=\"border-left\">Border Left</td> 
                <td class=\"border-right\">Border Right</td> 
                <td class=\"border-top\">Border Top</td> 
                <td class=\"border-bottom\">Border Bottom</td> 
            </tr> 
        </table> 
        <table> 
            <caption>Example of a TABLE</caption> 
            <thead> 
                <tr> 
                    <th> Head Cell 1</th> 
                    <th> Head Cell 2</th> 
                    <th> Head Cell 3</th> 
                </tr> 
            </thead> 
            <tbody> 
                <tr> 
                    <td> Body Cell 1</td> 
                    <td> Body Cell 2</td> 
                    <td> Body Cell 3</td> 
                </tr> 
            </tbody> 
        </table>"
* payload.extension[date].valueDateTime = 2024-10-17T17:20:00+01:00
* payload.extension[identifier].valueIdentifier.value = "urn:uuid:ed7e027d-5c18-4e23-986f-0f9586d3d111"
* payload.extension[identifier].valueIdentifier.assigner = Reference(hfjdsyur74893j5hjkfdshj78.jkclzikd)
* payload.extension[author].valueReference = Reference(jklfds.jklorewp-hcksa6wjs)
* payload.extension[authorContact].valueContactPoint.system = #phone 
* payload.extension[authorContact].valueContactPoint.value = "35363738"


Instance: uiodss8902la.z.ikfldsi9439d
InstanceOf: MedComCorePatient
Title: "Send-K-new - Patient"
Description: "Send-K-new - Patient"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official].use = #official
* name[official].given[0] = "Bruno"
* name[official].given[1] = "Test"
* name[official].family = "Elmer"

// Sender instance - new message
Instance: hfjdsyur74893j5hjkfdshj78.jkclzikd
InstanceOf: MedComMessagingOrganization // 
Title: "Send-K-new - Sender"
Description: "Send-K-new - Sender"
* identifier[SOR-ID].value = "502191000016006" 
* identifier[EAN-ID].value = "5790000121786" 
* name = "Anita Thenstrup"

// Reciever instance - new message 
Instance: hujkfds678j
InstanceOf: MedComMessagingOrganization // 
Title: "Send-K-new - Receiver"
Description: "Send-K-new - Receiver"
* identifier[SOR-ID].value = "1385391000016002" 
* identifier[EAN-ID].value = "5790002632389" 
* name = "Padagogisk Psykologisk Rådgivning"


// Practitioners - new message 
Instance: jklsfdiur7uckhxz89
InstanceOf: MedComCorePractitioner
Title: "Send-K-new - practitioner"
Description: "Send-K-new - practitioner"
* name.given[0] = "Anita"
* name.family = "Thenstrup"

Instance: jklfds.jklorewp-hcksa6wjs
InstanceOf: MedComCorePractitionerRole
Title: "Send-K-new - practitionerRole"
Description: "Send-K-new - practitionerRole"
* practitioner = Reference(jklsfdiur7uckhxz89)
* code = $PractitionerRole#pyskolog

// CareCommunication example - new message
Instance: jfkdls7f89fdsjkcxz1hnjkzlzal.klasa-klaoi
InstanceOf: MedComMessagingProvenance
Title: "Send-K-new - Provenance"
Description: "Send-K-new - Provenance"
Usage: #example
* target = Reference(ejklfdsio898kfd)
* occurredDateTime = 2024-10-17T17:20:00+01:00
* recorded = 2024-10-17T17:20:00+01:00
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(hfjdsyur74893j5hjkfdshj78.jkclzikd)