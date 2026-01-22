Instance: 9521a7f0-bad4-4a46-8c51-cd8378b24106
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:8a471893-0cc2-4695-ba67-8638d4fcbe2f"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/43fe2ddc-fd31-443b-bef0-e29c030d6572"
* entry[=].resource = 43fe2ddc-fd31-443b-bef0-e29c030d6572 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/d2c9d517-3abd-450e-a3c2-18f18da6fd88"
* entry[=].resource = d2c9d517-3abd-450e-a3c2-18f18da6fd88
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/b3b07166-24d7-462b-acb3-1a29269c4740"
* entry[=].resource = b3b07166-24d7-462b-acb3-1a29269c4740
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/b3860fb8-4b1d-4be5-8290-e6a026d10555"
* entry[=].resource = b3860fb8-4b1d-4be5-8290-e6a026d10555

Instance: 43fe2ddc-fd31-443b-bef0-e29c030d6572
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:07585abe-9862-489d-8fa6-0a64e2eaccb0"
* status = #final
* type.coding.system = $Loinc
* type.coding.code = #11488-4
* type.coding.display = "Consult note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(b3b07166-24d7-462b-acb3-1a29269c4740)
* author[institution] = Reference(b3860fb8-4b1d-4be5-8290-e6a026d10555)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-12-10T10:00:00+01:00"
* section.entry = Reference(d2c9d517-3abd-450e-a3c2-18f18da6fd88)
* date = "2026-12-10T10:15:00+01:00"
* language = #da "Danish"


Instance: b3b07166-24d7-462b-acb3-1a29269c4740
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


Instance: b3860fb8-4b1d-4be5-8290-e6a026d10555
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "61741000016007"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Hasseris Bymidte"


Instance: d2c9d517-3abd-450e-a3c2-18f18da6fd88
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" //dette system giver en warning i qa rapporten - skal det ændres til urn:ietf:rfc:3986?
* identifier.value = "urn:uuid:3e4907e4-a5f9-4403-b0a0-9b3201a97074" //hvad er forskel på urn:uuid og urn:ietf:rfc:3986?
* status = $ObsStatusCodeSystem#final
* code.coding[LOINC].system = $Loinc
* code.coding[LOINC].code = #11488-4
* code.coding[LOINC].display = "Consult note"
* subject = Reference(b3b07166-24d7-462b-acb3-1a29269c4740)
* effectiveDateTime = "2026-12-10T00:00:00Z"
* performer = Reference(b3860fb8-4b1d-4be5-8290-e6a026d10555)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #application/xhtml+xml
* extension[valueAttachment].valueAttachment.title = "Journalnotat"
* extension[valueAttachment].valueAttachment.data = "w6Vyc2tvbnRyb2w6IEJUIDEzOC84MiBtbUhn"

/*Notat: 
årskontrol: BT 138/82 mmHg  */