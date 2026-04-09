Instance: 7c1b751f-0b1b-4acd-a298-6b5bc0e3636b
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c40823dd-8db5-4347-af4f-9d5460850245"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/3f1e5539-02b3-4fb6-8c40-5f992a80b638"
* entry[=].resource = 3f1e5539-02b3-4fb6-8c40-5f992a80b638 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/e3bf4a76-477e-49f1-9a56-67d3bea828d1"
* entry[=].resource = e3bf4a76-477e-49f1-9a56-67d3bea828d1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/3ab42ae8-e2aa-42ad-8051-fb31da007b1e"
* entry[=].resource = 3ab42ae8-e2aa-42ad-8051-fb31da007b1e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/500c3b9b-e125-47ca-88b6-1ec0d8b0503f"
* entry[=].resource = 500c3b9b-e125-47ca-88b6-1ec0d8b0503f
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/cc212a2f-89fc-45d2-8b5b-631f0ec5647e"
* entry[=].resource = cc212a2f-89fc-45d2-8b5b-631f0ec5647e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/b6f32609-95d6-4281-a52b-96b6e09f6cbc"
* entry[=].resource = b6f32609-95d6-4281-a52b-96b6e09f6cbc


Instance: 3f1e5539-02b3-4fb6-8c40-5f992a80b638
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cb9bb94b-b101-45e6-9df6-a69a5d31be68"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(3ab42ae8-e2aa-42ad-8051-fb31da007b1e)
* author[institution] = Reference(500c3b9b-e125-47ca-88b6-1ec0d8b0503f)
* title = "Journalnotat for 1502799995"
* confidentiality = #N
* event.period.start = "2026-05-05T10:26:00+02:00"
* section.entry = Reference(e3bf4a76-477e-49f1-9a56-67d3bea828d1)
* date = "2026-05-05T10:26:00+02:00"
* language = #da "Danish"


Instance: 3ab42ae8-e2aa-42ad-8051-fb31da007b1e
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


Instance: 500c3b9b-e125-47ca-88b6-1ec0d8b0503f
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "60481000016004"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Juliussensvej"

Instance: cc212a2f-89fc-45d2-8b5b-631f0ec5647e
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(b6f32609-95d6-4281-a52b-96b6e09f6cbc)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:14f77f70-7e95-4c95-a102-3727d03b0b01"
* organization = Reference(101f0d1a-9186-4a48-8594-8c06db5745f1)

Instance: b6f32609-95d6-4281-a52b-96b6e09f6cbc
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Charlotte"
* name.family = "Charlottesen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fa6598d3-0454-447c-a3f8-e462a9cde893"

Instance: e3bf4a76-477e-49f1-9a56-67d3bea828d1
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:806ab636-9dd9-4e11-9c37-1f511be5257b" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(3ab42ae8-e2aa-42ad-8051-fb31da007b1e)
* effectiveDateTime = "2026-05-05T10:26:00+02:00"
* performer[organization] = Reference(500c3b9b-e125-47ca-88b6-1ec0d8b0503f)
* performer[practitionerRole] = Reference(cc212a2f-89fc-45d2-8b5b-631f0ec5647e)
* performer[practitioner] = Reference(b6f32609-95d6-4281-a52b-96b6e09f6cbc)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHg6cD5QYXRpZW50ZW4gaGVudmVuZGVyIHNpZyBtZWQgaG9zdGUgb2cgbGV0IG9uZHQgaSBoYWxzZW4gZ2VubmVtIDQgZGFnZS4gSW5nZW4gZmViZXIgb2cgYWxtZW50IHVww6V2aXJrZXQuPC94OnA+DQo8eDpwPjx4OmI+PHg6ZW0+QWt0dWVsdDwveDplbT48L3g6Yj48eDpici8+DQogICAgT3BsZXZlciB0w7hyIGhvc3RlLCBtZXN0IHVkdGFsdCBvbSBhZnRlbmVuLiA8eDppPkluZ2VuIMOlbmRlbsO4ZC48L3g6aT4NCjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPlZ1cmRlcmluZzwveDplbT48L3g6Yj48eDpici8+DQogICAgRm9yZW5lbGlndCBtZWQgbGV0IMO4dnJlIGx1ZnR2ZWpzaW5mZWt0aW9uLg0KPC94OnA+DQo8eDpwPjx4OmI+PHg6ZW0+UGxhbjwveDplbT48L3g6Yj48eDpici8+DQogICAgUsOlZCBvbSB2w6Zza2Ugb2cga29udGFrdCB2ZWQgPHg6Yj5mb3J2w6ZycmluZzwveDpiPi4NCjwveDpwPg=="

/*Notat: 
<x:p>Patienten henvender sig med hoste og let ondt i halsen gennem 4 dage. Ingen feber og alment upåvirket.</x:p>
<x:p><x:b><x:em>Aktuelt</x:em></x:b><x:br/>
    Oplever tør hoste, mest udtalt om aftenen. <x:i>Ingen åndenød.</x:i>
</x:p>
<x:p><x:b><x:em>Vurdering</x:em></x:b><x:br/>
    Foreneligt med let øvre luftvejsinfektion.
</x:p>
<x:p><x:b><x:em>Plan</x:em></x:b><x:br/>
    Råd om væske og kontakt ved <x:b>forværring</x:b>.
</x:p>
*/