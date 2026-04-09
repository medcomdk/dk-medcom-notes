Instance: d960faa4-4f1e-4eda-a441-0bb436ebc729
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8e73ef88-1d91-49df-95ec-8cffbe70ae9a"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/60ad7565-e6f7-4202-8c6c-48661dee2e4f"
* entry[=].resource = 60ad7565-e6f7-4202-8c6c-48661dee2e4f 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/23c18aa3-a9de-462b-8c5d-f738c0f3dacf"
* entry[=].resource = 23c18aa3-a9de-462b-8c5d-f738c0f3dacf
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/4f896623-b436-4eb2-9324-573e39d10e4d"
* entry[=].resource = 4f896623-b436-4eb2-9324-573e39d10e4d
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/cfb1e0af-0559-46c6-b01b-7f02e1a54772"
* entry[=].resource = cfb1e0af-0559-46c6-b01b-7f02e1a54772

Instance: 60ad7565-e6f7-4202-8c6c-48661dee2e4f
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:78930e1a-675d-490d-b3b5-c182d66d7a27"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(4f896623-b436-4eb2-9324-573e39d10e4d)
* author[institution] = Reference(cfb1e0af-0559-46c6-b01b-7f02e1a54772)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-05-01T08:08:00+02:00"
* section.entry = Reference(23c18aa3-a9de-462b-8c5d-f738c0f3dacf)
* date = "2026-05-01T08:08:00+02:00"
* language = #da "Danish"


Instance: 4f896623-b436-4eb2-9324-573e39d10e4d
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


Instance: cfb1e0af-0559-46c6-b01b-7f02e1a54772
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "398321000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Algade 59 v. Læge Ane Ejsing"


Instance: 23c18aa3-a9de-462b-8c5d-f738c0f3dacf
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:1ce695ef-be0e-4e84-99c0-b2c97517d1ad" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(4f896623-b436-4eb2-9324-573e39d10e4d)
* effectiveDateTime = "2026-05-01T08:08:00+02:00"
* performer[organization] = Reference(cfb1e0af-0559-46c6-b01b-7f02e1a54772)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "RGV0dGUgZXIgZXQgc2ltcGVsdCBqb3VybmFsbm90YXQsIGkgZGVubmUgdGVzdGNhc2UgdGVzdGVyIHZpIGF0IEkgdmlzZXIgZGV0IG9yZ2FuaXNhdGlvbnNuYXZuIHNvbSBmaW5kZXMgaSBkZXR0ZSBkb2t1bWVudCwgb2cgaWtrZSBzZWx2IHNsw6VyIG9wIGkgU09SIGZvciBhdCBmaW5kZSBkZXQgc29tIHBhc3NlciB0aWwgU09SLWtvZGVu"

/*Notat: 
Dette er et simpelt journalnotat, i denne testcase tester vi at I viser det organisationsnavn som findes i dette dokument, og ikke selv slår op i SOR for at finde det som passer til SOR-koden*/