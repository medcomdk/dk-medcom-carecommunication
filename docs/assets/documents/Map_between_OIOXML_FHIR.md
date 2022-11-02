

# Map between OIOXML standard XDIS91 and FHIR CareCommunication Messages 
This document describes mapping between the OIOXML ClinicalEmail (<a href="https://svn.medcom.dk/svn/releases/Standarder/Den%20gode%20korrespondance/XML/Dokumentation/" target="_blank">XDIS91</a>) and the FHIR CareCommunication message. Not all elements from OIOXML ClinicalEmail are relevant in FHIR CareCommunication message, which is marked with a ‘NA’. The purpose of this document is to help implementers of FHIR CareCommunication message. 
 <a href="https://build.fhir.org/ig/medcomdk/dk-medcom-carecommunication/" target="_blank">Click here to read the actual implementationsguide which includes all requirements for the CareCommunicationMessage</a> 


>Please notice, that the expressions in ‘Actual FHIR path’ are made using the windows app FHIRPath tester. In other applications, will the apostrophe (‘…’) might not be used.


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c4ko{background-color:#2c415c;text-align:left;vertical-align:top}
.tg .tg-7euo{background-color:#ffffff;color:#333333;text-align:left;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg">
<thead>
  <tr>
    <th class="tg-c4ko" rowspan="2">    <br><span style="color:white">Data</span>    </th>
    <th class="tg-c4ko" rowspan="2">    <br><span style="color:white">OIOXML</span>    </th>
    <th class="tg-c4ko">    <br><span style="color:white">Pseudo FHIR path</span>    </th>
    <th class="tg-c4ko" rowspan="2">    <br><span style="color:white">Must</span><br>    <br><span style="color:white">Support</span>    </th>
    <th class="tg-c4ko" rowspan="2">    <br><span style="color:white">Comment</span>    </th>
  </tr>
  <tr>
    <th class="tg-c4ko">    <br><span style="color:white">Actual FHIR path</span>    </th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Date for Message sent   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Envelope.Sent.Date    </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.timestamp   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>All FHIR timestamps contain   both date and time. This element holds information about when a bundle is   created. The timestamp is equivalent to MedComCareCommunicationMessage.MedcomMessagingProvenance.   occurredDateTime   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.timestamp   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Time for Message sent   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Envelope.Sent.Time   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.timestamp   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>All FHIR timestamps contain   both date and time. This element holds information about when a bundle is   created. The timestamp is equivalent to MedComCareCommunicationMessage.MedcomMessagingProvenance.   occurredDateTime   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.timestamp   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Message envelope id    </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Envelope.Identifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.id   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>A   unique identifier for a bundle. The MedComCareCommunicationMessage.id   must be updated with a new value each time a new message is sent, or a   message is resent.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.id   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>AcknowledgementCode   </td>
    <td class="tg-7euo">   <br>Emessage.Envelope.AcknowledgementCode   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>Not relevant, as all FHIR   messages shall be acknowledged.   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Message letter id    </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Letter.Identifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.id   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>A   unique identifier for each message. This identifier should be globally   unique.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('MessageHeader').id   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Version code   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.Letter.VersionCode   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The version of a FHIR message can be found in   the respective Implementation Guide but is not included when exchanging a   message.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Statistical code   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.Letter.StatisticalCode   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>Only VANSEnvelope contains a statistical code.    </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Authorization timestamp date   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Letter.Authorisation.Date   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.timestamp   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This timestamp includes a   date and time. It represents the date and time for when the healthcare   professional press the ‘sent’-button in the screen.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.timestamp   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Authorization timestamp time   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Letter.Authorisation.Time   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage. MedComCareCommunicationMessageHeader.MedComCareCommunication.sent   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This timestamp includes a   date and time. It represents the date and time for when the healthcare   professional press the ‘sent’-button in the screen.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Communication').sent<br>   <br>    </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Message type (DIS91)   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Letter.TypeCode   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.event[x].eventcoding.code   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>The type of message. For CareCommunication the   code shall be "care-communication-message"    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('MessageHeader').event.code   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Message status   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Letter.StatusCode   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComMessagingProvenance.activity.coding.code   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>The element that describes the status of the CareCommunication e.g.   new-message   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Provenance').target.reference.replace('MessageHeader/','')   = %resource.entry.resource.ofType('MessageHeader'   ).id).resource.ofType('Provenance').activity.coding.code   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Episode of care identifier   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Letter.EpisodeOfCareIdentifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.episodeOfCare.identifier.value   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes    </td>
    <td class="tg-7euo" rowspan="2">   <br>A unique identifier for the   episode of care.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Encounter').episodeOfCare.identifier.value   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>EAN id for sender   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.sender.EANIdentifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.sender.MedComMessagingOrganization.identifier.eanIdentifier   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>The EAN identifier for a   sending organization.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system   = 'urn:oid:1.3.88').value   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>EAN id for receiver   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.receiver.EANIdentifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.identifier.eanIdentifier   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>The EAN identifier for a   receiving organization.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier.where(system   = 'urn:oid:1.3.88').value   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Sender id    </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.sender.Identifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.sender.MedComMessagingOrganization.identifier   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>The identifier that describes the sender of the CareCommunication message.   Both a SOR- and EAN-identifier must be sent.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').identifier   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Receiver id   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.receiver.Identifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.identifier   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>The identifier that   describes the receiver of the CareCommunication message. Both a SOR- and   EAN-identifier must be sent.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').identifier   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Sender type   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.sender.IdentifierCode   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The type of the organization   is given in the SOR identifier. See ‘sender id’.     </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Receiver type   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.receiver.IdentifierCode   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The type of the organization   is given in the SOR identifier. See ‘receiver id’.     </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Sender organization   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.sender.OrganizationName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.sender.MedComMessagingOrganization.name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This information is depending on the SOR identifier and shall only be   included, if the OrganizationName is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Receiver organization   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.receiver.OrganizationName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This information is   depending on the SOR identifier and shall only be included, if the   OrganizationName is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Sender department   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.sender.DepartmentName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.sender.MedComMessagingOrganization.name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This information is depending on the SOR identifier and shall only be   included, if the DepartmentName is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') = %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Receiver department   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.receiver.DepartmentName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This information is   depending on the SOR identifier and shall only be included, if the   OrganizationName is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') = %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Sender unit    </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.sender.UnitName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.sender.MedComMessagingOrganization.name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This information is depending on the SOR identifier and shall only be   included, if the UnitName is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').sender.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Receiver unit   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.receiver.UnitName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.destination.primary.receiver.MedComMessagingOrganization.name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This information is   depending on the SOR identifier and shall only be included, if the   OrganizationName is given in the SOR identifier.     </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.where(resource.ofType('Organization').id.replace('string',   'id') =   %resource.entry.resource.ofType('MessageHeader').destination.receiver.reference.replace('Organization/','')).resource.ofType('Organization').name   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Sender streetname   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.sender.StreetName   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The address of the Organization is described by the SOR identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Receiver streetname   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.receiver.StreetName   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The address of the Organization   is described by the SOR identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Sender suburb name   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.sender. SuburbName   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The address of the Organization is described by the SOR identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Receiver suburb name   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.receiver. DistrictName   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The address of the Organization   is described by the SOR identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Sender district name   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.sender. DistrictName   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The address of the Organization is described by the SOR identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Receiver postal code identifier   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.receiver. PostCodeIdentifier   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The address of the Organization   is described by the SOR identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Sender postal code identifier   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.sender. PostCodeIdentifier   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>The address of the Organization is described by the SOR identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Sender telephone   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.sender.TelephoneSubscriberIdentifier   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>Organization   contactinformation is described by the SOR identifier.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Sender speciality code   </td>
    <td class="tg-7euo">   <br>Emessage.ClinicalEmail.sender.MedicalSpecialityCode   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>This element   is not of relevance in the FHIR CareCommunication message.   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Patient id   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Patient.CivilRegistrationNumber   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.MedComCorePatient.identifier.cpr   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>Information about the   patient cpr-identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Patient').identifier.where(system   = 'urn:oid:1.2.208.176.1.2').value   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Patient alternative id   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Patient.AlternativeIdentifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.MedComCorePatient.identifier   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>It   is allowed to add a replacement CPR-identifier to the MedComCorePatient, however   it is preferred to use the cpr-identifier.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Patient').identifier.where(system   = ‘https://sundhedsdatastyrelsen.dk/da/registre-og-services/ecpr’).value   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Patient family name    </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Clinicalemail.Patient.PersonSurName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.MedComCorePatient.name.official.family   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>    <br></td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Patient').name.family   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Patient name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Clinicalemail.Patient.PersonGivenName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.MedComCorePatient.   name.official.given   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes    </td>
    <td class="tg-7euo" rowspan="2">   <br>    <br></td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Patient').name.given   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Patient street name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Clinicalemail.Patient.StreetName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.MedComCorePatient.adress.line   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes    </td>
    <td class="tg-7euo" rowspan="2">   <br>    <br></td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Patient').address.line   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Patient suburb name   </td>
    <td class="tg-7euo">   <br>Emessage.Clinicalemail.Patient.SuburbName   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Patient city name   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Clinicalemail.Patient.DistrictName   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.MedComCorePatient.adress.city   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>    <br></td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Patient').address.city   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Patient post code   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.Clinicalemail.Patient.PostCodeIdentifier   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunicationEncounter.MedComCorePatient.adress.postalCode   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>    <br></td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Patient').address.postalCode   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Patient occupancy   </td>
    <td class="tg-7euo">   <br>Emessage.Clinicalemail.Patient.OccupancyText   </td>
    <td class="tg-7euo">   <br>NA   </td>
    <td class="tg-7euo">   <br>    </td>
    <td class="tg-7euo">   <br>    </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Episode of care status   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Patient.EpisodeOfCareStatusCode   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCoreEncounter.status<br>   <br> <br>   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCoreEncounter.class<br>   <br> <br>   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCoreEncounter.MedComCorePatient.deceased   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes (all)   </td>
    <td class="tg-7euo" rowspan="2">   <br>The   CareCommunication message episodeofcare status is more complexed than the   OIOXML message. Together these three elements constitute the status of the   patient.  <br>   <br>    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType(‘Encounter’).status<br>   <br> <br>   <br>Bundle.entry.resource.ofType(Encounter).class.code<br>   <br> <br>   <br>Bundle.entry.resource.ofType('Patient').deceased   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Priority   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.AdditionalInformation.Priority   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunication.priority<br>   <br>    </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes    </td>
    <td class="tg-7euo" rowspan="2">   <br>It is only allowed to used priority when the   category is ‘Regarding Referral’, in Danish ‘Vedr. Henvisning’.    </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Communication').priority   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Subject   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.AdditionalInformation.Subject   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunication.topic      </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This   element refers to the regionally agreed topics, called ‘emne’ in Danish.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Communication').topic   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Text    </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.ClinicalInformation.Text01   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunication.payload.content   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This element holds the actual text message   included in the CareCommunication.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Communication').payload.content   </td>
  </tr>
  <tr>
    <td class="tg-7euo" rowspan="2">   <br>Reference   </td>
    <td class="tg-7euo" rowspan="2">   <br>Emessage.ClinicalEmail.Reference   </td>
    <td class="tg-7euo">   <br>MedComCareCommunicationMessage.MedComCareCommunicationMessageHeader.MedComCareCommunication.payload.attachement   </td>
    <td class="tg-7euo" rowspan="2">   <br>Yes   </td>
    <td class="tg-7euo" rowspan="2">   <br>This   element holds the attachments in the CareCommunication.   </td>
  </tr>
  <tr>
    <td class="tg-7euo">   <br>Bundle.entry.resource.ofType('Communication').payload.attachment   </td>
  </tr>
</tbody>
</table></div>