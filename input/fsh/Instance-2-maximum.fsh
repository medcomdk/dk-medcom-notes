Instance: ba7d908a-0134-4f28-b5f5-0fcaf088e60b
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* type = #document
* timestamp = 2026-12-12T12:30:00+01:00
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cf5a0508-063d-4200-9c53-7317ee1a69e4"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/cff723a9-fae7-4fc6-8db2-6e49cbbc928a"
* entry[=].resource = cff723a9-fae7-4fc6-8db2-6e49cbbc928a 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/if810168-ee7c-4f34-8012-9aff6c1d86e7"
* entry[=].resource = if810168-ee7c-4f34-8012-9aff6c1d86e7
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/d65cd8db-4520-4264-87be-a5fd01fb9762"
* entry[=].resource = d65cd8db-4520-4264-87be-a5fd01fb9762
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/f8d0eb07-5336-4005-9081-b065f9a82663"
* entry[=].resource = f8d0eb07-5336-4005-9081-b065f9a82663
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/48ed6310-3095-44da-9e34-d1cd6bd830c9"
* entry[=].resource = 48ed6310-3095-44da-9e34-d1cd6bd830c9
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/bb6fa4e1-f8b1-4bf4-b77e-bb03b2cc9820"
* entry[=].resource = bb6fa4e1-f8b1-4bf4-b77e-bb03b2cc9820

Instance: cff723a9-fae7-4fc6-8db2-6e49cbbc928a
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
//* meta.profile = "1.0" //Indsæt formatcode?
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Consultation note example</div>"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:47ef2e1b-5f14-42ca-bd8f-feafb4154240"
* status = #final
* type.coding.system = "http://loinc.org"
* type.coding.code = #11488-4
* type.coding.display = "Consult note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(d65cd8db-4520-4264-87be-a5fd01fb9762)
* author[institution] = Reference(f8d0eb07-5336-4005-9081-b065f9a82663)
* author[+] = Reference(48ed6310-3095-44da-9e34-d1cd6bd830c9)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-12-12T12:30:00+01:00"
* section[0].entry[0] = Reference(if810168-ee7c-4f34-8012-9aff6c1d86e7)
* date = "2026-12-12T10:05:00+01:00"
* language = #da "Danish"


Instance: d65cd8db-4520-4264-87be-a5fd01fb9762
InstanceOf: MedComDocumentPatient
Title: "Patient instance - 2nd ConditionList"
Description: "Patient instance - 2nd ConditionList - Niels Test Vendelboe"
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "3001749995"
* name[official].use = #official
* name[official].family = "Vendelboe"
* name[official].given[0] = "Niels"
* name[official].given[1] = "Test"
* birthDate = "1974-01-30"
* gender = #male


Instance: bb6fa4e1-f8b1-4bf4-b77e-bb03b2cc9820
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Consultation note PractitionerRole example</div>"
* practitioner = Reference(48ed6310-3095-44da-9e34-d1cd6bd830c9)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:uuid"
* identifier.value = "9a6fb982-ba4a-41d0-ac09-f04cc51c8f38"
* organization = Reference(f8d0eb07-5336-4005-9081-b065f9a82663)

Instance: 48ed6310-3095-44da-9e34-d1cd6bd830c9
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Consultation note Practitioner example</div>"
* name.given = "Sidsel"
* name.family = "Andersen"
* identifier.system = "urn:uuid"
* identifier.value = "0ee2db70-d972-4497-a156-0a8109aaa771"

Instance: f8d0eb07-5336-4005-9081-b065f9a82663
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Consultation note Organization example</div>"
* identifier[SOR-ID].value = "61741000016007"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[Ydernummer].value = "77410"
* identifier[Ydernummer].system = "urn:oid:1.2.208.176.1.4"
* name = "Lægerne Hasseris Bymidte"


Instance: if810168-ee7c-4f34-8012-9aff6c1d86e7
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example of consultation note</div>"
* identifier.system = "urn:uuid"
* identifier.value = "3e4907e4-a5f9-4403-b0a0-9b3201a97074"
* status = $ObsStatusCodeSystem#final
* code.coding[LOINC].system = "http://loinc.org"
* code.coding[LOINC].code = #11488-4
* code.coding[LOINC].display = "Consult note"
* subject = Reference(d65cd8db-4520-4264-87be-a5fd01fb9762)
* effectiveDateTime = "2026-12-12T10:05:00+01:00"
* performer = Reference(48ed6310-3095-44da-9e34-d1cd6bd830c9)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #application/xhtml+xml
* extension[valueAttachment].valueAttachment.title = "Årskontrol af diabetes"
* extension[valueAttachment].valueAttachment.data = "IDxwPlBhdGllbnRlbiBzZXMgdGlsIDxiPsOlcnNrb250cm9sIGFmIGRpYWJldGVzPC9iPi4gQmVoYW5kbGluZyBmw7hsZ2VzLCBvZyBwdC4gYW5naXZlciBpbmdlbiBoeXBvZ2x5a8OmbWlza2UgZXBpc29kZXIuPC9wPgoKPHA+T2JqZWt0aXZ0Ojxici8+CkJUIDEzOC84MiBtbUhnLiBCTUkgPGk+MjcsMzwvaT4uIEZvZHN0YXR1cyB1LmEuPC9wPgoKPHA+UGFyYWtsaW5pazo8YnIvPgpIYkExYyA1OCBtbW9sL21vbCAoPGVtPm92ZXIgbcOlbDwvZW0+KS48L3A+Cgo8cD5WdXJkZXJpbmcvcGxhbjogPGI+VHlwZSAyIGRpYWJldGVzPC9iPiBtZWQgZGVsdmlzIHJlZ3VsZXJpbmcuIEp1c3RlcmluZyBhZiBtZXRmb3JtaW4gb2cgcsOlZGdpdm5pbmcgb20gbGl2c3N0aWwuIEtvbnRyb2wgb20gNiBtZHIuPC9wPgoKPHA+VW5kZXJza3JpZnQ6IERyLiA8dHQ+QW5kZXJzZW48L3R0PjwvcD4="


/* <p>Patienten ses til <b>årskontrol af diabetes</b>. Behandling følges, og pt. angiver ingen hypoglykæmiske episoder.</p>

<p>Objektivt:<br/>
BT 138/82 mmHg. BMI <i>27,3</i>. Fodstatus u.a.</p>

<p>Paraklinik:<br/>
HbA1c 58 mmol/mol (<em>over mål</em>).</p>

<p>Vurdering/plan: <b>Type 2 diabetes</b> med delvis regulering. Justering af metformin og rådgivning om livsstil. Kontrol om 6 mdr.</p>

<p>Underskrift: Dr. <tt>Andersen</tt></p>
 */