# Introduction to the technical specification-- Work in progress!!

**Table of contents**


## 1 Profiles in the CareCommunication Standard 


> In case of discrepancies between the [Implementation Guide (IG)](*Insert correct link*) and this page, it is the IG which should be followed. Please contact <fhir@medcom.dk> if you find discrepancies.

<b>Pleas be aware that this site is under development and as soon as the side is ready the information will be presented below! </b>



<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-p3tq{border-color:inherit;color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-i91a{border-color:inherit;color:#333333;text-align:left;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<div style="overflow-x:auto;">
<table class="tg" id="tab1">
<caption style="color:#2c415c; font-weight:bold; text-align:center"> Table 1: Overview of the profiles in CareCommunication standard </caption>
<thead>
  <tr>
    <th class="tg-p3tq"><span style="font-weight:bold">Profile</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Resource</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Description</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">MustSupport elements</span></th>
    <th class="tg-p3tq"><span style="font-weight:bold">Implementation Guide Origin</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-i91a"><a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/"target="_blank" > MedComCareCommunication</a></td>
    <td class="tg-i91a">Communication</td>
    <td class="tg-i91a">Contains the main content of a message</td>
    <td class="tg-i91a">Status <br>Category <br>Priority<br>Subject <br>Topic<br>Encounter <br>Sent (dateTime) <br>Recipient:Organization <br>Recipient:practitionerRole <br>Sender<br>Payload:All Slices.date<br>Payload:All Slices.author <br>Payload:string.date<br>Payload:string.author<br>Payload:string.content[x] <br>Payload:attachment.date <br>Payload:attachment.author<br>Slices for content[x]</td>
    <td class="tg-i91a">CareCommunication</td>
  </tr>
  <tr>
    <td class="tg-i91a">MedComCareCommunicationMessage</td>
    <td class="tg-i91a">Bundle</td>
    <td class="tg-i91a">Acts as a container fir the content of the message <br><br><br>Inherited form the  MedComMessagingMessage</td>
    <td class="tg-i91a">Id<br>Type<br>Timestamp<br>Entry<br></td>
    <td class="tg-i91a">CareCommunication</td>
  </tr>
  <tr>
    <td class="tg-i91a">MedComCareCommunicationMessageHeader</td>
    <td class="tg-i91a">MessageHeader</td>
    <td class="tg-i91a">The header of a MedComCareCommunication message, which shall always be the frist referenced profile, <br>when the type of the Bundle is 'message'. The header shall contain an focus in term of the MedComCareCommunication. <br>The header shall aswell have a globally unique id.  <br><br><br>Inherited form the MedComMessagingMessageHeader</td>
    <td class="tg-i91a">Id<br>Text <br>Event[x]:eventCoding <br>Sender<br>Source<br>Focus</td>
    <td class="tg-i91a">CareCommunication</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCoreEncounter</td>
    <td class="tg-0pky">Encounter</td>
    <td class="tg-0pky">Describes the interaction between a patient and one or more healthcare provideres.</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">Status<br>Class<br>Subject<br>Slices for episodeOfCare<br>ServiceProvider</td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCorePatient</td>
    <td class="tg-0pky">Patient</td>
    <td class="tg-0pky">Describes a citizen or patient, when exchanging a MedCom message.</td>
    <td class="tg-0pky">Id<br>Identifier(CPR-number)<br>Name<br>Address<br>Telecom<br>Deceased[x]</td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCoreOrganizarion</td>
    <td class="tg-0pky">Organisation</td>
    <td class="tg-0pky">Contains information which is useful in order to identify an organization.</td>
    <td class="tg-0pky">Id<br>Identifier(SOR-id)<br>Name</td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">MedComCareCommunicationProvenance</td>
    <td class="tg-0pky">Provenance</td>
    <td class="tg-0pky">Describes the activity of a message, e.g. whether the message concern an inpatient admission or discharge. <br>In cases of a previously send message concerning the same admission,<br> the Provenance resource holds a reference to the previous message. <br>Thereby it is possible to get an overview of the patient's admission</td>
    <td class="tg-0pky">Id<br>Target <br>OccurredDateTime <br>Timestamps<br>Activity<br>Agent<br>Entity(reference to the previous message)</td>
    <td class="tg-0pky">CareCommunication</td>
  </tr>
</tbody>
</table>
</div>