Instance: 6b6bfb44-3142-49fd-936f-08d591c7e440
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-04-08T13:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0badf27b-ad9c-4555-b461-461e14b1b2c1"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/72d9502c-8c5b-434b-ae9c-23061f0f1f27"
* entry[=].resource = 72d9502c-8c5b-434b-ae9c-23061f0f1f27 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/3bd6208c-f0c0-41be-9522-cd32ce024dcc"
* entry[=].resource = 3bd6208c-f0c0-41be-9522-cd32ce024dcc
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/375a278f-10f0-43b1-880e-c59b8156a924"
* entry[=].resource = 375a278f-10f0-43b1-880e-c59b8156a924
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/101f0d1a-9186-4a48-8594-8c06db5745f1"
* entry[=].resource = 101f0d1a-9186-4a48-8594-8c06db5745f1
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/9840d57a-a764-4bf5-bb63-f9f0150293ab"
* entry[=].resource = 9840d57a-a764-4bf5-bb63-f9f0150293ab
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/40a089c1-d015-4580-bacb-fd70611c1b33"
* entry[=].resource = 40a089c1-d015-4580-bacb-fd70611c1b33

Instance: 72d9502c-8c5b-434b-ae9c-23061f0f1f27
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bf105513-8578-44f6-8ee9-36bfb590521b"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(375a278f-10f0-43b1-880e-c59b8156a924)
* author[institution] = Reference(101f0d1a-9186-4a48-8594-8c06db5745f1)
* title = "Journalnotat for 0506889996"
* confidentiality = #N
* event.period.start = "2026-04-08T10:52:00+02:00"
* section.entry = Reference(3bd6208c-f0c0-41be-9522-cd32ce024dcc)
* date = "2026-04-08T10:52:00+02:00"
* language = #da "Danish"


Instance: 375a278f-10f0-43b1-880e-c59b8156a924
InstanceOf: MedComDocumentPatient
Title: "Patient instance - authorName Sille June Test Mosebryggersen"
Description: "Patient instance - authorName Sille June Test Mosebryggersen"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0506889996"
* name[official].use = #official
* name[official].family = "Mosebryggersen"
* name[official].given[0] = "Sille"
* name[official].given[1] = "June"
* name[official].given[2] = "Test"
* birthDate = "1988-06-05"
* gender = #female


Instance: 101f0d1a-9186-4a48-8594-8c06db5745f1
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "61741000016007"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Hasseris Bymidte"

Instance: 40a089c1-d015-4580-bacb-fd70611c1b33
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(9840d57a-a764-4bf5-bb63-f9f0150293ab)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dedf73b2-1214-4607-a093-5f6e08b95200"
* organization = Reference(101f0d1a-9186-4a48-8594-8c06db5745f1)

Instance: 9840d57a-a764-4bf5-bb63-f9f0150293ab
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Josef"
* name.family = "Jørgensen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:62d51f40-ccd9-4fad-b0ed-ab8057ab7529"

Instance: 3bd6208c-f0c0-41be-9522-cd32ce024dcc
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:14210137-66a4-48da-bb6b-757cfd598341" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(375a278f-10f0-43b1-880e-c59b8156a924)
* effectiveDateTime = "2026-04-08T10:52:00+02:00"
* performer[organization] = Reference(101f0d1a-9186-4a48-8594-8c06db5745f1)
* performer[practitioner] = Reference(9840d57a-a764-4bf5-bb63-f9f0150293ab)
* performer[practitionerRole] = Reference(40a089c1-d015-4580-bacb-fd70611c1b33)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "S29udGFrdMOlcnNhZzogUGxhbmxhZ3Qga29udHJvbCBhZiBibG9kdHJ5ay4NCkFuYW1uZXNlOiBQYXRpZW50ZW4gaGFyIHRhZ2V0IG1lZGljaW4gc29tIGFmdGFsdC4gSW5nZW4gYml2aXJrbmluZ2VyLiBJbmdlbiBicnlzdHNtZXJ0ZXIsIHN2aW1tZWxoZWQgZWxsZXIgaG92ZWRwaW5lLg0KT2JqZWt0aXZ0OiBCVCAxMzIvNzgsIHB1bHMgNjggcmVnZWxtw6Zzc2lnLiBWw6ZndCB1w6ZuZHJldCBzaWRlbiBzaWRzdC4NClZ1cmRlcmluZzogVmVscmVndWxlcmV0IGh5cGVydGVuc2lvbi4NClBsYW46IEZvcnRzw6Z0dGVyIHXDpm5kcmV0IGJlaGFuZGxpbmcuIE55IGtvbnRyb2wgb20gNiBtw6VuZWRlci4gQmxvZHByw7h2ZXIgYmVzdGlsbGVzIGZvcnVkIGZvciBuw6ZzdGUga29uc3VsdGF0aW9uLg=="

/*Notat: 
Kontaktårsag: Planlagt kontrol af blodtryk.
Anamnese: Patienten har taget medicin som aftalt. Ingen bivirkninger. Ingen brystsmerter, svimmelhed eller hovedpine.
Objektivt: BT 132/78, puls 68 regelmæssig. Vægt uændret siden sidst.
Vurdering: Velreguleret hypertension.
Plan: Fortsætter uændret behandling. Ny kontrol om 6 måneder. Blodprøver bestilles forud for næste konsultation.*/