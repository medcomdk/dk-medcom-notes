Instance: 5ee56cb9-484d-434e-bcd8-332ee75eb96f
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-04-08T13:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1b7931e5-294a-4c62-a3ec-88704de26cf0"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/b5cb3c1a-ccd3-4bae-ba2c-e39f1cf59554"
* entry[=].resource = b5cb3c1a-ccd3-4bae-ba2c-e39f1cf59554 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/f8811ebd-3f1b-4554-b766-6dc0a6148909"
* entry[=].resource = f8811ebd-3f1b-4554-b766-6dc0a6148909
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/ad6dd928-f189-481f-9d2d-bdd59fe66db3"
* entry[=].resource = ad6dd928-f189-481f-9d2d-bdd59fe66db3
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/3bce1388-d009-464a-a3a0-c6a5ec8de93d"
* entry[=].resource = 3bce1388-d009-464a-a3a0-c6a5ec8de93d
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/89ba130a-b08b-4bb4-abad-2b765dc52593"
* entry[=].resource = 89ba130a-b08b-4bb4-abad-2b765dc52593

Instance: b5cb3c1a-ccd3-4bae-ba2c-e39f1cf59554
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9a3db224-409e-4881-9ace-d1c3198a5107"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(ad6dd928-f189-481f-9d2d-bdd59fe66db3)
* author[institution] = Reference(3bce1388-d009-464a-a3a0-c6a5ec8de93d)
* title = "Journalnotat for 0506889996"
* confidentiality = #N
* event.period.start = "2026-04-28T12:13:00+02:00"
* section.entry = Reference(f8811ebd-3f1b-4554-b766-6dc0a6148909)
* date = "2026-04-28T12:13:00+02:00"
* language = #da "Danish"


Instance: ad6dd928-f189-481f-9d2d-bdd59fe66db3
InstanceOf: MedComDocumentPatient
Title: "Patient instance - author Name Sille June Test Mosebryggersen"
Description: "Patient instance - author Name Sille June Test Mosebryggersen"
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


Instance: 3bce1388-d009-464a-a3a0-c6a5ec8de93d
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "61741000016007"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Hasseris Bymidte"

Instance: 89ba130a-b08b-4bb4-abad-2b765dc52593
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:73ffaf86-07a3-4807-ae68-8506dfefb636"
* organization = Reference(3bce1388-d009-464a-a3a0-c6a5ec8de93d)

Instance: f8811ebd-3f1b-4554-b766-6dc0a6148909
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:c20829cd-746d-419e-b7a5-390413e41b57" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(ad6dd928-f189-481f-9d2d-bdd59fe66db3)
* effectiveDateTime = "2026-04-28T12:13:00+02:00"
* performer[organization] = Reference(3bce1388-d009-464a-a3a0-c6a5ec8de93d)
* performer[practitionerRole] = Reference(89ba130a-b08b-4bb4-abad-2b765dc52593)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "U3ZpZSB2ZWQgdmFuZGxhZG5pbmcgb2cgaHlwcGlnZSB2YW5kbGFkbmluZ2VyLlN5bXB0b21lciBnZW5uZW0gMiBkw7hnbi4gSW5nZW4gZmViZXIsIGluZ2VuIGZsYW5rZXNtZXJ0ZXIuIFRpZGxpZ2VyZSBVVkkgZm9yIGNhLiAxIMOlciBzaWRlbi4NClVww6V2aXJrZXQuIEFiZG9tZW4gYmzDuGR0IG9nIHXDuG0uIEluZ2VuIGR1bmvDuG1oZWQgb3ZlciBueXJlci4NClVyaW5zdGl4IHBvc2l0aXYgZm9yIGxldWtvY3l0dGVyIG9nIG5pdHJpdC4gTmVkcmUgdXJpbnZlanNpbmZla3Rpb24uDQpQbGFuOiBVcmluIHNlbmR0IHRpbCBkeXJrbmluZy4gQW50aWJpb3Rpc2sgYmVoYW5kbGluZyBpdsOmcmtzYXQgZWZ0ZXIga2xpbmlzayB2dXJkZXJpbmcuIEluZm9ybWF0aW9uIG9tIGF0IHPDuGdlIGlnZW4gdmVkIGZlYmVyLCBmbGFua2VzbWVydGVyIGVsbGVyIG1hbmdsZW5kZSBiZWRyaW5nLg=="

/*Notat: 
Svie ved vandladning og hyppige vandladninger.Symptomer gennem 2 døgn. Ingen feber, ingen flankesmerter. Tidligere UVI for ca. 1 år siden.
Upåvirket. Abdomen blødt og uøm. Ingen dunkømhed over nyrer.
Urinstix positiv for leukocytter og nitrit. Nedre urinvejsinfektion.
Plan: Urin sendt til dyrkning. Antibiotisk behandling iværksat efter klinisk vurdering. Information om at søge igen ved feber, flankesmerter eller manglende bedring.*/