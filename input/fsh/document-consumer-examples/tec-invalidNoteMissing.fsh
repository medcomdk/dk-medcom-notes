Instance: 4156ad9c-0fd0-47e5-8b4a-d050c9b7d55d
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bbcdfa75-071b-4d30-add5-d77c630473e5"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/c84b83db-d817-4846-802b-72e0ad9da6d7"
* entry[=].resource = c84b83db-d817-4846-802b-72e0ad9da6d7 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/4145323b-40d3-4aa5-bb9d-f4fcdcd47aba"
* entry[=].resource = 4145323b-40d3-4aa5-bb9d-f4fcdcd47aba
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/6e86bb01-5c82-4bca-a3fa-34dbc81cdf4e"
* entry[=].resource = 6e86bb01-5c82-4bca-a3fa-34dbc81cdf4e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/be3be9f6-e70c-48d2-989c-80306e77e24f"
* entry[=].resource = be3be9f6-e70c-48d2-989c-80306e77e24f

Instance: c84b83db-d817-4846-802b-72e0ad9da6d7
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6f16db92-607c-4848-b94c-916e4482368f"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(6e86bb01-5c82-4bca-a3fa-34dbc81cdf4e)
* author[institution] = Reference(be3be9f6-e70c-48d2-989c-80306e77e24f)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-04-08T10:52:00+02:00"
* section.entry = Reference(4145323b-40d3-4aa5-bb9d-f4fcdcd47aba)
* date = "2026-04-08T10:52:00+02:00"
* language = #da "Danish"


Instance: 6e86bb01-5c82-4bca-a3fa-34dbc81cdf4e
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


Instance: be3be9f6-e70c-48d2-989c-80306e77e24f
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "398321000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Algade 59"


Instance: 4145323b-40d3-4aa5-bb9d-f4fcdcd47aba
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:01c6e21a-fcff-4011-83f1-e829ace62328" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(6e86bb01-5c82-4bca-a3fa-34dbc81cdf4e)
* effectiveDateTime = "2026-04-08T10:52:00+02:00"
* performer[organization] = Reference(be3be9f6-e70c-48d2-989c-80306e77e24f)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "IA=="

/*Notatet skal slettes når filen er genereret */