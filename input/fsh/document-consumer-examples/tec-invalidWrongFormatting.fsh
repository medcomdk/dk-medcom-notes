Instance: 01c6e21a-fcff-4011-83f1-e829ace62328
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae573ae5-ec27-4db9-acac-7d46c3cba5ed"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/d43c51bf-92e9-4b66-b561-0e29a83588be"
* entry[=].resource = d43c51bf-92e9-4b66-b561-0e29a83588be 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/7753c703-e591-40d1-bc63-f34be1137f6a"
* entry[=].resource = 7753c703-e591-40d1-bc63-f34be1137f6a
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/a5766fa2-6dc4-4327-8ced-5849748d20ea"
* entry[=].resource = a5766fa2-6dc4-4327-8ced-5849748d20ea
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/a179f4ec-d872-45a7-bfd9-5a9f9694531e"
* entry[=].resource = a179f4ec-d872-45a7-bfd9-5a9f9694531e

Instance: d43c51bf-92e9-4b66-b561-0e29a83588be
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b2e2c1e4-c031-40d0-976b-196528c7eaaa"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(a5766fa2-6dc4-4327-8ced-5849748d20ea)
* author[institution] = Reference(a179f4ec-d872-45a7-bfd9-5a9f9694531e)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-04-15T08:23:00+02:00"
* section.entry = Reference(7753c703-e591-40d1-bc63-f34be1137f6a)
* date = "2026-04-15T08:23:00+02:00"
* language = #da "Danish"


Instance: a5766fa2-6dc4-4327-8ced-5849748d20ea
InstanceOf: MedComDocumentPatient
Title: "Patient instance - minimal"
Description: "Patient instance - minimal - Niels Test Vendelboe"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "3001749995"
* name[official].use = #official
* name[official].family = "Vendelboe"
* name[official].given[0] = "Niels"
* name[official].given[1] = "Test"
* birthDate = "1974-01-30"
* gender = #male


Instance: a179f4ec-d872-45a7-bfd9-5a9f9694531e
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "398321000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Algade 59"


Instance: 7753c703-e591-40d1-bc63-f34be1137f6a
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:9b535946-1432-45e1-82af-7511faa5c378" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(a5766fa2-6dc4-4327-8ced-5849748d20ea)
* effectiveDateTime = "2026-04-15T08:23:00+02:00"
* performer[organization] = Reference(a179f4ec-d872-45a7-bfd9-5a9f9694531e)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHA+UGF0aWVudGVuIG3DuGRlciBtZWQgdHLDpnRoZWRcdGxldCBzdmltbWVsaGVkXHR1cm8gaSBrcm9wcGVuXHRzb3ZlciBkw6VybGlndDwvcD48cD5JbmdlbiBmZWJlclx0aW5nZW4gaG9zdGVcdGluZ2VuIHbDpmd0dGFiXHRhcHBldGl0IGxldCBuZWRzYXQ8L3A+PHA+QlQgMTM2LzgyXHRwdWxzIDcyXHRjb3IvcHVsbSB1YVx0YWJkb21lbiBibMO4ZCBvZyB1w7htPC9wPjxwPkJsb2RwcsO4dmVyIHBsYW5sw6ZnZ2VzXHRwYXRpZW50IGluZm9ybWVyZXRcdG9wZsO4bGduaW5nIGFmdGFsdFx0a29udGFrdCB2ZWQgZm9ydsOmcnJpbmc8L3A+"

/*<p>Patienten møder med træthed\tlet svimmelhed\turo i kroppen\tsover dårligt</p><p>Ingen feber\tingen hoste\tingen vægttab\tappetit let nedsat</p><p>BT 136/82\tpuls 72\tcor/pulm ua\tabdomen blød og uøm</p><p>Blodprøver planlægges\tpatient informeret\topfølgning aftalt\tkontakt ved forværring</p> */