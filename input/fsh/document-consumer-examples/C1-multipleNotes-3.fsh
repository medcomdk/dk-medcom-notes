Instance: 8bde5b08-4e6c-4217-97bc-7ae52411ad47
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:215b8be8-f9c1-47e0-8ed9-f2d2a64757cb"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/a61f1cad-56b5-4ffd-9d6e-f894d23c9b30"
* entry[=].resource = a61f1cad-56b5-4ffd-9d6e-f894d23c9b30 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/3e6e5819-c8f9-496c-b6f3-730fd2a54e37"
* entry[=].resource = 3e6e5819-c8f9-496c-b6f3-730fd2a54e37
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/00fa4fbc-f405-4965-b721-7845af1f91c0"
* entry[=].resource = 00fa4fbc-f405-4965-b721-7845af1f91c0
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/d037fa24-cdda-4359-835f-743c7d3ebeed"
* entry[=].resource = d037fa24-cdda-4359-835f-743c7d3ebeed
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/08dfd135-2713-49c2-910a-c810bc0b8d32"
* entry[=].resource = 08dfd135-2713-49c2-910a-c810bc0b8d32
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/755b7705-6084-46a9-8601-58a5df669b74"
* entry[=].resource = 755b7705-6084-46a9-8601-58a5df669b74


Instance: a61f1cad-56b5-4ffd-9d6e-f894d23c9b30
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ea2a2749-0b25-48e4-9e22-8e0b87a42d6f"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(00fa4fbc-f405-4965-b721-7845af1f91c0)
* author[institution] = Reference(d037fa24-cdda-4359-835f-743c7d3ebeed)
* author[person] = Reference(755b7705-6084-46a9-8601-58a5df669b74)
* title = "Journalnotat for 1502799995"
* confidentiality = #N
* event.period.start = "2026-05-15T10:28:00+02:00"
* section.entry = Reference(3e6e5819-c8f9-496c-b6f3-730fd2a54e37)
* date = "2026-05-15T10:28:00+02:00"
* language = #da "Danish"


Instance: 00fa4fbc-f405-4965-b721-7845af1f91c0
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


Instance: d037fa24-cdda-4359-835f-743c7d3ebeed
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "60481000016004"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Juliussensvej"

Instance: 08dfd135-2713-49c2-910a-c810bc0b8d32
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(755b7705-6084-46a9-8601-58a5df669b74)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:80a4f8d8-eb42-4a52-b5bd-6c498b319420"
* organization = Reference(d037fa24-cdda-4359-835f-743c7d3ebeed)

Instance: 755b7705-6084-46a9-8601-58a5df669b74
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Mette"
* name.family = "Mettesen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bc71a1c7-8fce-41c8-84ca-c696b52c0fdb"

Instance: 3e6e5819-c8f9-496c-b6f3-730fd2a54e37
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:5d523a71-b7f7-4ac4-97b8-a2ed4263f0b7" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(00fa4fbc-f405-4965-b721-7845af1f91c0)
* effectiveDateTime = "2026-05-15T10:28:00+02:00"
* performer[organization] = Reference(d037fa24-cdda-4359-835f-743c7d3ebeed)
* performer[practitionerRole] = Reference(08dfd135-2713-49c2-910a-c810bc0b8d32)
* performer[practitioner] = Reference(755b7705-6084-46a9-8601-58a5df669b74)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHA+UGF0aWVudGVuIGtvbnRha3RlciBrbGluaWtrZW4gcMOlIGdydW5kIGFmIGzDpm5kZXNtZXJ0ZXIgZWZ0ZXIgbMO4ZnQgZm9yIDMgZGFnZSBzaWRlbi4gSW5nZW4gdWRzdHLDpWxpbmcgdGlsIGJlbmVuZS48L3A+DQo8cD48Yj48ZW0+QWt0dWVsdDwvZW0+PC9iPjxici8+DQogICAgU21lcnRlcm5lIGVyIHbDpnJzdCB2ZWQgZm9yb3ZlcmLDuGpuaW5nLCBtZW4gcGF0aWVudGVuIGthbiBmb3J0c2F0IGfDpSBvbWtyaW5nLiA8aT5JbmdlbiBmw7hsZWZvcnN0eXJyZWxzZXIuPC9pPg0KPC9wPg0KPHA+PGI+PGVtPlZ1cmRlcmluZzwvZW0+PC9iPjxici8+DQogICAgRm9yZW5lbGlndCBtZWQgbWVrYW5pc2tlIGzDpm5kZXJ5Z3NtZXJ0ZXIgdWRlbiByw7hkZSBmbGFnLg0KPC9wPg0KPHA+PGI+PGVtPlBsYW48L2VtPjwvYj48YnIvPg0KICAgIEluZm9ybWF0aW9uIG9tIGxldCBha3Rpdml0ZXQgb2cgc21lcnRlc3RpbGxlbmRlIHZlZCBiZWhvdi4gS29udGFrdCB2ZWQgPGI+PGk+Zm9ydsOmcnJpbmcgZWxsZXIgbnllIG5ldXJvbG9naXNrZSBzeW1wdG9tZXIuPC9pPjwvYj4NCjwvcD4="

/*Notat: 
<p>Patienten kontakter klinikken på grund af lændesmerter efter løft for 3 dage siden. Ingen udstråling til benene.</p>
<p><b><em>Aktuelt</em></b><br/>
    Smerterne er værst ved foroverbøjning, men patienten kan fortsat gå omkring. <i>Ingen føleforstyrrelser.</i>
</p>
<p><b><em>Vurdering</em></b><br/>
    Foreneligt med mekaniske lænderygsmerter uden røde flag.
</p>
<p><b><em>Plan</em></b><br/>
    Information om let aktivitet og smertestillende ved behov. Kontakt ved <b><i>forværring eller nye neurologiske symptomer.</i></b>
</p>
*/