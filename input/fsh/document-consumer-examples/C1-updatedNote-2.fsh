Instance: fe0b72bb-ae6d-43c5-9198-6286a9906d53
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-04-08T13:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:def03435-0cb5-4ca8-aac1-34049a486cd7"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/50a6372c-96b6-449f-adf9-3753a73b91a4"
* entry[=].resource = 50a6372c-96b6-449f-adf9-3753a73b91a4 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/6c59a03f-c7b6-4585-a751-85cf3c93d24c"
* entry[=].resource = 6c59a03f-c7b6-4585-a751-85cf3c93d24c
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/3cb8555f-dc68-4d35-b78d-ec2dac0164d7"
* entry[=].resource = 3cb8555f-dc68-4d35-b78d-ec2dac0164d7
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/6f02a235-4dba-4588-8dc2-20d69dd21f05"
* entry[=].resource = 6f02a235-4dba-4588-8dc2-20d69dd21f05
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/30b557c3-0034-4011-96cd-c96cc27c49b9"
* entry[=].resource = 30b557c3-0034-4011-96cd-c96cc27c49b9
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/4303e94d-c212-4de0-9856-c829059e64a5"
* entry[=].resource = 4303e94d-c212-4de0-9856-c829059e64a5

Instance: 50a6372c-96b6-449f-adf9-3753a73b91a4
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b7a14548-60b5-49f8-91af-8305b327ddb0"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(3cb8555f-dc68-4d35-b78d-ec2dac0164d7)
* author[institution] = Reference(6f02a235-4dba-4588-8dc2-20d69dd21f05)
* author[person] = Reference(30b557c3-0034-4011-96cd-c96cc27c49b9)
* title = "Journalnotat for 0211223989"
* confidentiality = #N
* event.period.start = "2026-05-05T10:11:00+02:00"
* section.entry = Reference(6c59a03f-c7b6-4585-a751-85cf3c93d24c)
* date = "2026-05-06T07:32:00+02:00"
* language = #da "Danish"


Instance: 3cb8555f-dc68-4d35-b78d-ec2dac0164d7
InstanceOf: MedComDocumentPatient
Title: "Patient instance - authorName Sille June Test Mosebryggersen"
Description: "Patient instance - authorName Sille June Test Mosebryggersen"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0211223989"
* name[official].use = #official
* name[official].family = "Berggren"
* name[official].given[0] = "Åge"
* name[official].given[1] = "Test"
* birthDate = "1922-11-02"
* gender = #male


Instance: 6f02a235-4dba-4588-8dc2-20d69dd21f05
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "1395371000016000"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Hørsholm ApS"

Instance: 4303e94d-c212-4de0-9856-c829059e64a5
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(30b557c3-0034-4011-96cd-c96cc27c49b9)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fc49efa7-7fd6-47e6-888e-0a29d299d70e"
* organization = Reference(6f02a235-4dba-4588-8dc2-20d69dd21f05)

Instance: 30b557c3-0034-4011-96cd-c96cc27c49b9
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Julius"
* name.family = "Juliusen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fe97fdc5-4e7a-45d8-ac5b-134824005495"

Instance: 6c59a03f-c7b6-4585-a751-85cf3c93d24c
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:efbec33e-b619-4d21-9acf-c14054b42590" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(3cb8555f-dc68-4d35-b78d-ec2dac0164d7)
* effectiveDateTime = "2026-05-05T10:11:00+02:00"
* performer[organization] = Reference(6f02a235-4dba-4588-8dc2-20d69dd21f05)
* performer[practitioner] = Reference(30b557c3-0034-4011-96cd-c96cc27c49b9)
* performer[practitionerRole] = Reference(4303e94d-c212-4de0-9856-c829059e64a5)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHA+UGF0aWVudGVuIG3DuGRlciB0aWwga29uc3VsdGF0aW9uIHDDpSBncnVuZCBhZiBzdmllIHZlZCB2YW5kbGFkbmluZyBnZW5uZW0gMiBkYWdlLiBPcGx5c2VyIGh5cHBpZ2UgdmFuZGxhZG5pbmdlciwgbWVuIGluZ2VuIGZlYmVyIGVsbGVyIGZsYW5rZXNtZXJ0ZXIuPC9wPg0KPHA+PGI+PGVtPkFrdHVlbHQ8L2VtPjwvYj48YnIvPg0KICAgIFN5bXB0b21lcm5lIGVyIHN0YXJ0ZXQgZm9yIDIgZGFnZSBzaWRlbiBvZyBlciBncmFkdmlzdCB0aWx0YWdldC4gUGF0aWVudGVuIGbDuGxlciBzaWcgZWxsZXJzIHZlbHRpbHBhcy4gPGk+SW5nZW4ga3ZhbG1lIGVsbGVyIG9wa2FzdG5pbmcuPC9pPg0KPC9wPg0KPHA+PGI+PGVtPk9iamVrdGl2dDwvZW0+PC9iPjxici8+DQogICAgVXDDpXZpcmtldCBhbG1lbnRpbHN0YW5kLiBBYmRvbWVuIGJsw7hkdCBvZyB1w7htdC4gPGI+SW5nZW4gZHVua8O4bWhlZCBvdmVyIG55cmVyLjwvYj4NCjwvcD4NCjxwPjxiPjxlbT5WdXJkZXJpbmc8L2VtPjwvYj48YnIvPg0KICAgIEtsaW5pc2sgYmlsbGVkZSBmb3JlbmVsaWd0IG1lZCBuZWRyZSB1cmludmVqc2luZmVrdGlvbiB1ZGVuIHRlZ24gdGlsIMO4dnJlIFVWSS4NCjwvcD4NCjxwPjxiPjxlbT5QbGFuPC9lbT48L2I+PGJyLz4NCiAgICBVcmluIHNlbmRlcyB0aWwgdW5kZXJzw7hnZWxzZSwgb2cgcGF0aWVudGVuIGluZm9ybWVyZXMgb20gYXQga29udGFrdGUga2xpbmlra2VuIHZlZCA8Yj48aT5mZWJlciwgZmxhbmtlc21lcnRlciBlbGxlciBmb3J2w6ZycmluZy48L2k+PC9iPg0KPC9wPg=="

/*Notat: 
<p>Patienten møder til konsultation på grund af svie ved vandladning gennem 2 dage. Oplyser hyppige vandladninger, men ingen feber eller flankesmerter.</p>
<p><b><em>Aktuelt</em></b><br/>
    Symptomerne er startet for 2 dage siden og er gradvist tiltaget. Patienten føler sig ellers veltilpas. <i>Ingen kvalme eller opkastning.</i>
</p>
<p><b><em>Objektivt</em></b><br/>
    Upåvirket almentilstand. Abdomen blødt og uømt. <b>Ingen dunkømhed over nyrer.</b>
</p>
<p><b><em>Vurdering</em></b><br/>
    Klinisk billede foreneligt med nedre urinvejsinfektion uden tegn til øvre UVI.
</p>
<p><b><em>Plan</em></b><br/>
    Urin sendes til undersøgelse, og patienten informeres om at kontakte klinikken ved <b><i>feber, flankesmerter eller forværring.</i></b>
</p>
*/