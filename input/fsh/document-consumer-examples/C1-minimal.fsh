Instance: bd35ab62-21d3-43a5-80e2-62e98bfe9f25
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b319bd4c-eb1b-40e2-81c0-0e7e44cea52c"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/3af5e5dc-34cd-4293-8351-69d94dc47a80"
* entry[=].resource = 3af5e5dc-34cd-4293-8351-69d94dc47a80 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/dec892a0-6381-4228-a7b2-56cfaac3c460"
* entry[=].resource = dec892a0-6381-4228-a7b2-56cfaac3c460
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/c6a95d3c-e35c-4db8-9955-93708061e172"
* entry[=].resource = c6a95d3c-e35c-4db8-9955-93708061e172
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/53d08e41-f6a6-49bf-a802-117d0c86dcb6"
* entry[=].resource = 53d08e41-f6a6-49bf-a802-117d0c86dcb6

Instance: 3af5e5dc-34cd-4293-8351-69d94dc47a80
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8bb1187f-62e4-4528-abd8-1202bc4c4bf5"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(c6a95d3c-e35c-4db8-9955-93708061e172)
* author[institution] = Reference(53d08e41-f6a6-49bf-a802-117d0c86dcb6)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-04-08T10:52:00+02:00"
* section.entry = Reference(dec892a0-6381-4228-a7b2-56cfaac3c460)
* date = "2026-04-08T10:52:00+02:00"
* language = #da "Danish"


Instance: c6a95d3c-e35c-4db8-9955-93708061e172
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


Instance: 53d08e41-f6a6-49bf-a802-117d0c86dcb6
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "398321000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Algade 59"


Instance: dec892a0-6381-4228-a7b2-56cfaac3c460
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:d034c234-c1fa-4d47-b151-6a7f4f42b73c" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(c6a95d3c-e35c-4db8-9955-93708061e172)
* effectiveDateTime = "2026-04-08T10:52:00+02:00"
* performer[organization] = Reference(53d08e41-f6a6-49bf-a802-117d0c86dcb6)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "S29udGFrdMOlcnNhZzogSG9zdGUgb2cgZmViZXIgZ2VubmVtIDUgZGFnZS4NCkFuYW1uZXNlOiBQYXRpZW50ZW4gb3BseXNlciB0aWx0YWdlbmRlIGhvc3RlLCBsZXQgZ3VsbGlndCBla3NwZWt0b3JhdCBvZyB0ZW1wZXJhdHVyIG9wIHRpbCAzOCw1LiBJbmdlbiDDpW5kZW7DuGQgaSBodmlsZS4gSWtrZSBrZW5kdCBsdW5nZXN5Z2RvbS4NCk9iamVrdGl2dDogVXDDpXZpcmtldCBhbG1lbnRpbHN0YW5kLiBTQVQgOTggJSwgdGVtcC4gMzcsOC4gU3QucC4gY29yIGV0IHB1bG06IG5vcm1hbGUgZm9yaG9sZCwgbGV0IHNwcmVkdGUgcmhvbmNoaSBiYXNhbHQgYmlsYXQuDQpWdXJkZXJpbmc6IEZvcmVuZWxpZ3QgbWVkIMO4dnJlIGx1ZnR2ZWpzaW5mZWt0aW9uL2xldCBicm9ua2l0aXMuIEluZ2VuIGtsaW5pc2sgbWlzdGFua2Ugb20gcG5ldW1vbmku"

/*Notat: 
Kontaktårsag: Hoste og feber gennem 5 dage.
Anamnese: Patienten oplyser tiltagende hoste, let gulligt ekspektorat og temperatur op til 38,5. Ingen åndenød i hvile. Ikke kendt lungesygdom.
Objektivt: Upåvirket almentilstand. SAT 98 %, temp. 37,8. St.p. cor et pulm: normale forhold, let spredte rhonchi basalt bilat.
Vurdering: Foreneligt med øvre luftvejsinfektion/let bronkitis. Ingen klinisk mistanke om pneumoni.*/