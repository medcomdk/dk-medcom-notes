Instance: 06677019-baf1-4357-859b-ce1306b752b1
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:af6c3a12-b73f-4ece-81e1-b6f84353706a"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/618bcd83-8258-4b91-8bd5-40641dadf917"
* entry[=].resource = 618bcd83-8258-4b91-8bd5-40641dadf917 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/74fc9139-2e64-4865-9160-a5e937deaf54"
* entry[=].resource = 74fc9139-2e64-4865-9160-a5e937deaf54
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/5a1a0b48-9633-4eaa-a76c-4507fcf26d7d"
* entry[=].resource = 5a1a0b48-9633-4eaa-a76c-4507fcf26d7d
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/c67aee02-81c7-473b-8b89-e5548f263e9e"
* entry[=].resource = c67aee02-81c7-473b-8b89-e5548f263e9e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/883acbb5-2868-4b14-b53d-db65b2427a3c"
* entry[=].resource = 883acbb5-2868-4b14-b53d-db65b2427a3c
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/aa39387d-ad66-4ae5-9c80-7a6041f10e9a"
* entry[=].resource = aa39387d-ad66-4ae5-9c80-7a6041f10e9a


Instance: 618bcd83-8258-4b91-8bd5-40641dadf917
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:55bc93d2-baab-4b65-881f-07fffb480302"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(5a1a0b48-9633-4eaa-a76c-4507fcf26d7d)
* author[institution] = Reference(c67aee02-81c7-473b-8b89-e5548f263e9e)
* author[person] = Reference(aa39387d-ad66-4ae5-9c80-7a6041f10e9a)
* title = "Journalnotat for 1502799995"
* confidentiality = #N
* event.period.start = "2026-05-10T10:27:00+02:00"
* section.entry = Reference(74fc9139-2e64-4865-9160-a5e937deaf54)
* date = "2026-05-10T10:27:00+02:00"
* language = #da "Danish"


Instance: 5a1a0b48-9633-4eaa-a76c-4507fcf26d7d
InstanceOf: MedComDocumentPatient
Title: "Patient instance - minimal"
Description: "Patient instance - minimal - Niels Test Vendelboe"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1502799995"
* name[official].use = #official
* name[official].family = "Mosebryggersen"
* name[official].given[0] = "Odd"
* name[official].given[1] = "Haugen"
* name[official].given[2] = "Test"
* birthDate = "1979-02-15"
* gender = #male


Instance: c67aee02-81c7-473b-8b89-e5548f263e9e
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "60481000016004"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Juliussensvej"

Instance: 883acbb5-2868-4b14-b53d-db65b2427a3c
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(aa39387d-ad66-4ae5-9c80-7a6041f10e9a)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:14f77f70-7e95-4c95-a102-3727d03b0b01"
* organization = Reference(c67aee02-81c7-473b-8b89-e5548f263e9e)

Instance: aa39387d-ad66-4ae5-9c80-7a6041f10e9a
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Charlotte"
* name.family = "Charlottesen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fa6598d3-0454-447c-a3f8-e462a9cde893"

Instance: 74fc9139-2e64-4865-9160-a5e937deaf54
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:b21ce3ef-9c33-46c9-aeec-059757d80a2d" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(5a1a0b48-9633-4eaa-a76c-4507fcf26d7d)
* effectiveDateTime = "2026-05-10T10:27:00+02:00"
* performer[organization] = Reference(c67aee02-81c7-473b-8b89-e5548f263e9e)
* performer[practitionerRole] = Reference(883acbb5-2868-4b14-b53d-db65b2427a3c)
* performer[practitioner] = Reference(aa39387d-ad66-4ae5-9c80-7a6041f10e9a)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHg6cD5QYXRpZW50ZW4gbcO4ZGVyIHRpbCBibG9kdHJ5a3Nrb250cm9sIG9nIG9wbHlzZXIgYXQgaGF2ZSBkZXQgZ29kdC4gVGFnZXIgc2luIHZhbmxpZ2UgbWVkaWNpbiB1ZGVuIHByb2JsZW1lci48L3g6cD4NCjx4OnA+PHg6Yj48eDplbT5PYmpla3RpdnQ8L3g6ZW0+PC94OmI+PHg6YnIvPg0KICAgIEJsb2R0cnlrIDEzMC83NiwgcHVscyA2OCBvZyByZWdlbG3DpnNzaWcuIDx4OmI+SW5nZW4gYWt0dWVsbGUgZ2VuZXIuPC94OmI+DQo8L3g6cD4NCjx4OnA+PHg6Yj48eDplbT5WdXJkZXJpbmc8L3g6ZW0+PC94OmI+PHg6YnIvPg0KICAgIFZlbHJlZ3VsZXJldCBibG9kdHJ5ayB1bmRlciBiZWhhbmRsaW5nLg0KPC94OnA+DQo8eDpwPjx4OmI+PHg6ZW0+UGxhbjwveDplbT48L3g6Yj48eDpici8+DQogICAgRm9ydHPDpnR0ZXIgdcOmbmRyZXQgYmVoYW5kbGluZy4gTnkga29udHJvbCBhZnRhbGVzIHNlbmVyZS4NCjwveDpwPg=="

/*Notat: 
<x:p>Patienten møder til blodtrykskontrol og oplyser at have det godt. Tager sin vanlige medicin uden problemer.</x:p>
<x:p><x:b><x:em>Objektivt</x:em></x:b><x:br/>
    Blodtryk 130/76, puls 68 og regelmæssig. <x:b>Ingen aktuelle gener.</x:b>
</x:p>
<x:p><x:b><x:em>Vurdering</x:em></x:b><x:br/>
    Velreguleret blodtryk under behandling.
</x:p>
<x:p><x:b><x:em>Plan</x:em></x:b><x:br/>
    Fortsætter uændret behandling. Ny kontrol aftales senere.
</x:p>
*/