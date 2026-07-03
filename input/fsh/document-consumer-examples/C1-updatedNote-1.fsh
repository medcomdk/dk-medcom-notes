Instance: 668bb22c-9f26-4325-813d-9b881d099e90
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-04-08T13:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3e7b825a-58c6-4c2e-bf0f-511f8da12399"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/5e434e33-84e4-4b6f-a204-cb2a602be50d"
* entry[=].resource = 5e434e33-84e4-4b6f-a204-cb2a602be50d 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/4674b10d-6309-42f2-b23e-e0579ea3a212"
* entry[=].resource = 4674b10d-6309-42f2-b23e-e0579ea3a212
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/dc6f9e3c-66f0-4013-b9fc-5719406370e4"
* entry[=].resource = dc6f9e3c-66f0-4013-b9fc-5719406370e4
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/e8836e08-6f83-42f6-ab86-37b0bdd1e027"
* entry[=].resource = e8836e08-6f83-42f6-ab86-37b0bdd1e027
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/6cdf5623-402e-439c-bbee-baec772b54d8"
* entry[=].resource = 6cdf5623-402e-439c-bbee-baec772b54d8
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/b3e0bd18-8a71-4fe2-8098-5427d307c175"
* entry[=].resource = b3e0bd18-8a71-4fe2-8098-5427d307c175

Instance: 5e434e33-84e4-4b6f-a204-cb2a602be50d
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17fa8720-1500-4eed-ad10-96a0219ad30d"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(dc6f9e3c-66f0-4013-b9fc-5719406370e4)
* author[institution] = Reference(e8836e08-6f83-42f6-ab86-37b0bdd1e027)
* author[person] = Reference(6cdf5623-402e-439c-bbee-baec772b54d8)
* title = "Journalnotat for 0211223989"
* confidentiality = #N
* event.period.start = "2026-05-05T10:11:00+02:00"
* section.entry = Reference(4674b10d-6309-42f2-b23e-e0579ea3a212)
* date = "2026-05-05T10:11:00+02:00"
* language = #da "Danish"


Instance: dc6f9e3c-66f0-4013-b9fc-5719406370e4
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


Instance: e8836e08-6f83-42f6-ab86-37b0bdd1e027
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "1395371000016000"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Hørsholm ApS"

Instance: b3e0bd18-8a71-4fe2-8098-5427d307c175
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(6cdf5623-402e-439c-bbee-baec772b54d8)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6df25ddd-705d-4a70-877b-165cd7199038"
* organization = Reference(e8836e08-6f83-42f6-ab86-37b0bdd1e027)

Instance: 6cdf5623-402e-439c-bbee-baec772b54d8
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Julius"
* name.family = "Juliusen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d11b9a94-300a-42fc-b3eb-fc018ae84cb3"

Instance: 4674b10d-6309-42f2-b23e-e0579ea3a212
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:f2d5fc86-ca91-475e-97a2-d3f6ffac8a41" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(dc6f9e3c-66f0-4013-b9fc-5719406370e4)
* effectiveDateTime = "2026-05-05T10:11:00+02:00"
* performer[organization] = Reference(e8836e08-6f83-42f6-ab86-37b0bdd1e027)
* performer[practitioner] = Reference(6cdf5623-402e-439c-bbee-baec772b54d8)
* performer[practitionerRole] = Reference(b3e0bd18-8a71-4fe2-8098-5427d307c175)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHA+UGF0aWVudGVuIG3DuGRlciB0aWwga29uc3VsdGF0aW9uIHDDpSBncnVuZCBhZiBzdmllIHZlZCB2YW5kbGFkbmluZyBnZW5uZW0gMiBkYWdlLiBPcGx5c2VyIGh5cHBpZ2UgdmFuZGxhZG5pbmdlciwgbWVuIGluZ2VuIGZlYmVyIGVsbGVyIGZsYW5rZXNtZXJ0ZXIuPC9wPg0KPHA+PGI+PGVtPkFrdHVlbHQ8L2VtPjwvYj48YnIvPg0KICAgIFN5bXB0b21lcm5lIGVyIHN0YXJ0ZXQgZm9yIDIgZGFnZSBzaWRlbiBvZyBlciBncmFkdmlzdCB0aWx0YWdldC4gUGF0aWVudGVuIGbDuGxlciBzaWcgZWxsZXJzIHZlbHRpbHBhcy4gPGk+SW5nZW4ga3ZhbG1lIGVsbGVyIG9wa2FzdG5pbmcuPC9pPg0KPC9wPg0KPHA+PGI+PGVtPk9iamVrdGl2dDwvZW0+PC9iPjxici8+DQogICAgVXDDpXZpcmtldCBhbG1lbnRpbHN0YW5kLiBBYmRvbWVuIGJsw7hkdCBvZyB1w7htdC4gPGI+SW5nZW4gZHVua8O4bWhlZCBvdmVyIG55cmVyLjwvYj4NCjwvcD4="

/*Notat: 
<p>Patienten møder til konsultation på grund af svie ved vandladning gennem 2 dage. Oplyser hyppige vandladninger, men ingen feber eller flankesmerter.</p>
<p><b><em>Aktuelt</em></b><br/>
    Symptomerne er startet for 2 dage siden og er gradvist tiltaget. Patienten føler sig ellers veltilpas. <i>Ingen kvalme eller opkastning.</i>
</p>
<p><b><em>Objektivt</em></b><br/>
    Upåvirket almentilstand. Abdomen blødt og uømt. <b>Ingen dunkømhed over nyrer.</b>
</p>
*/