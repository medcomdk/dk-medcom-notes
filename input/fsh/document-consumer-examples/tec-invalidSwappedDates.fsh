Instance: 8f9ecc84-4b10-4850-b089-aaac0f3c306e
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5ac20226-7992-4e2d-b797-9ee6f10f858c"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/38d8461b-abce-46e9-83d4-c54320240db0"
* entry[=].resource = 38d8461b-abce-46e9-83d4-c54320240db0 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/79ee582c-914e-434c-a632-67d489599e66"
* entry[=].resource = 79ee582c-914e-434c-a632-67d489599e66
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/761ffd0d-4051-496d-acd7-ab093842a7c5"
* entry[=].resource = 761ffd0d-4051-496d-acd7-ab093842a7c5
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/7fff7acd-c2a4-4174-afc0-bba6bd9704d8"
* entry[=].resource = 7fff7acd-c2a4-4174-afc0-bba6bd9704d8

Instance: 38d8461b-abce-46e9-83d4-c54320240db0
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:308ef966-26c4-46f8-a90d-0c7ede8f3ed4"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(761ffd0d-4051-496d-acd7-ab093842a7c5)
* author[institution] = Reference(7fff7acd-c2a4-4174-afc0-bba6bd9704d8)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-04-15T08:33:00+02:00"
* section.entry = Reference(79ee582c-914e-434c-a632-67d489599e66)
* date = "2026-04-12T18:10:00+02:00"
* language = #da "Danish"


Instance: 761ffd0d-4051-496d-acd7-ab093842a7c5
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


Instance: 7fff7acd-c2a4-4174-afc0-bba6bd9704d8
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "398321000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Algade 59"


Instance: 79ee582c-914e-434c-a632-67d489599e66
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:7c188ef8-57e8-4c2d-8191-6a50d2015ede" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(761ffd0d-4051-496d-acd7-ab093842a7c5)
* effectiveDateTime = "2026-04-15T08:33:00+02:00"
* performer[organization] = Reference(7fff7acd-c2a4-4174-afc0-bba6bd9704d8)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "UGF0aWVudGVuIGhlbnZlbmRlciBzaWcgbWVkIHRyw6Z0aGVkIGdlbm5lbSAyIHVnZXIuIEluZ2VuIGZlYmVyLCBob3N0ZSBlbGxlciB2w6ZndHRhYi4gVmVkIHVuZGVyc8O4Z2Vsc2UgZmluZGVzIHBhdGllbnRlbiB1cMOldmlya2V0IG1lZCBub3JtYWxlIGhqZXJ0ZS0gb2cgbHVuZ2VzdGV0b3Nrb3BpZnVuZC4gRGVyIHBsYW5sw6ZnZ2VzIGJsb2RwcsO4dmVyIG9nIG9wZsO4bGduaW5nLCBuw6VyIHN2YXIgZm9yZWxpZ2dlci4="

/*Patienten henvender sig med træthed gennem 2 uger. Ingen feber, hoste eller vægttab. Ved undersøgelse findes patienten upåvirket med normale hjerte- og lungestetoskopifund. Der planlægges blodprøver og opfølgning, når svar foreligger.*/