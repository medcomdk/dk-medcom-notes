Instance: b2988663-eeee-474d-81bb-672e2fbd0ce5
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1596830d-2766-49cf-8bf9-cbe762b0b1b4"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/14efa86b-768e-4ed8-ba25-ee6f1c4b17ba"
* entry[=].resource = 14efa86b-768e-4ed8-ba25-ee6f1c4b17ba 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/e1aa9edc-fda7-475f-ab89-c996d6360ee3"
* entry[=].resource = e1aa9edc-fda7-475f-ab89-c996d6360ee3
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/2a52640b-e2cb-4dc6-aa8c-e53be7bf02e3"
* entry[=].resource = 2a52640b-e2cb-4dc6-aa8c-e53be7bf02e3
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/71db11a1-aa50-41f7-bec4-1fb19cc567f7"
* entry[=].resource = 71db11a1-aa50-41f7-bec4-1fb19cc567f7

Instance: 14efa86b-768e-4ed8-ba25-ee6f1c4b17ba
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d6869999-a53c-4436-9c78-657d0c350268"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(2a52640b-e2cb-4dc6-aa8c-e53be7bf02e3)
* author[institution] = Reference(71db11a1-aa50-41f7-bec4-1fb19cc567f7)
* title = "Journalnotat for 0108629996"
* confidentiality = #N
* event.period.start = "2026-04-08T10:52:00+02:00"
* section.entry = Reference(e1aa9edc-fda7-475f-ab89-c996d6360ee3)
* date = "2026-04-08T10:52:00+02:00"
* language = #da "Danish"


Instance: 2a52640b-e2cb-4dc6-aa8c-e53be7bf02e3
InstanceOf: MedComDocumentPatient 
Title: "Patient instance"
Description: "Patient instance"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0108629996"
* name[official].use = #official
* name[official].family = "Moberg"
* name[official].given[0] = "May"
* name[official].given[1] = "June"
* name[official].given[2] = "Test"
* birthDate = "1962-08-01"
* gender = #male


Instance: 71db11a1-aa50-41f7-bec4-1fb19cc567f7
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "54711000016000"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægegården Lillebælt"


Instance: e1aa9edc-fda7-475f-ab89-c996d6360ee3
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:fb102476-83fe-4403-9159-bc6abb44e435" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(2a52640b-e2cb-4dc6-aa8c-e53be7bf02e3)
* effectiveDateTime = "2026-04-14T08:30:00+02:00"
* performer[organization] = Reference(71db11a1-aa50-41f7-bec4-1fb19cc567f7)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "S29udGFrdMOlcnNhZzogSG9zdGUgb2cgZmViZXIgZ2VubmVtIDUgZGFnZS4NCkFuYW1uZXNlOiBQYXRpZW50ZW4gb3BseXNlciB0aWx0YWdlbmRlIGhvc3RlLCBsZXQgZ3VsbGlndCBla3NwZWt0b3JhdCBvZyB0ZW1wZXJhdHVyIG9wIHRpbCAzOCw1LiBJbmdlbiDDpW5kZW7DuGQgaSBodmlsZS4gSWtrZSBrZW5kdCBsdW5nZXN5Z2RvbS4NCk9iamVrdGl2dDogVXDDpXZpcmtldCBhbG1lbnRpbHN0YW5kLiBTQVQgOTggJSwgdGVtcC4gMzcsOC4gU3QucC4gY29yIGV0IHB1bG06IG5vcm1hbGUgZm9yaG9sZCwgbGV0IHNwcmVkdGUgcmhvbmNoaSBiYXNhbHQgYmlsYXQuDQpWdXJkZXJpbmc6IEZvcmVuZWxpZ3QgbWVkIMO4dnJlIGx1ZnR2ZWpzaW5mZWt0aW9uL2xldCBicm9ua2l0aXMuIEluZ2VuIGtsaW5pc2sgbWlzdGFua2Ugb20gcG5ldW1vbmku"

/*Notat: 
Torre har fuldmagt over sin mor May. Så I burde kunne se dette journalnotat hvis i kigger igennem Torre. Lad os se om det virker.*/