Instance: 7741d6e0-3289-409b-b2eb-449b8d2a5a8c
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f2be23d1-a3cc-4a9a-befd-d98e79464e88"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/06b8384b-38fd-4825-ae4f-46645b0eb9ad"
* entry[=].resource = 06b8384b-38fd-4825-ae4f-46645b0eb9ad 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/556b8d7e-bd57-4e9b-9b91-1c483b0c2cdb"
* entry[=].resource = 556b8d7e-bd57-4e9b-9b91-1c483b0c2cdb
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/f867d18b-aff3-40d3-9d8b-3e18f2b7bc45"
* entry[=].resource = f867d18b-aff3-40d3-9d8b-3e18f2b7bc45
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/65b00a2d-423d-426a-b5cb-0194792208ad"
* entry[=].resource = 65b00a2d-423d-426a-b5cb-0194792208ad

Instance: 06b8384b-38fd-4825-ae4f-46645b0eb9ad
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bf0bb400-8faa-4773-8752-1d017c55c8a0"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008	
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(f867d18b-aff3-40d3-9d8b-3e18f2b7bc45)
* author[institution] = Reference(65b00a2d-423d-426a-b5cb-0194792208ad)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-07-07T10:00:00+01:00"
* section.entry = Reference(556b8d7e-bd57-4e9b-9b91-1c483b0c2cdb)
* date = "2026-07-07T10:00:00+01:00"
* language = #da "Danish"


Instance: f867d18b-aff3-40d3-9d8b-3e18f2b7bc45
InstanceOf: MedComDocumentPatient
Title: "Patient instance"
Description: "Patient instance"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "3001749995"
* name[official].use = #official
* name[official].family = "ADRESSEBESKYTTET"
* name[official].given[0] = "ADRESSEBESKYTTET"
* name[official].given[1] = "ADRESSEBESKYTTET"
* birthDate = "1974-01-30"
* gender = #male


Instance: 65b00a2d-423d-426a-b5cb-0194792208ad
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "448221000016000"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne i Sundhedshuset Vesterbro"


Instance: 556b8d7e-bd57-4e9b-9b91-1c483b0c2cdb
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b140929d-ef51-44c7-934e-acafe9d34f5e" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(f867d18b-aff3-40d3-9d8b-3e18f2b7bc45)
* effectiveDateTime = "2026-07-07T10:00:00+01:00"
* performer[organization] = Reference(65b00a2d-423d-426a-b5cb-0194792208ad)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "cHQuIGFkcmVzc2ViZXNreXR0ZXQgb2cgaGF2ZGUgdmlkc3Qgb25kdCBpIG1hdmVu"

/*Notat: 
pt. adressebeskyttet og havde vidst ondt i maven*/