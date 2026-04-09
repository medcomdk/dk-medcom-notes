Instance: 7bf6fa68-b0fd-421e-a535-42d5492bc6ff
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:748adcc8-0d10-470d-92de-edb0f4ac2150"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/6d77aa10-384f-4d38-8577-5b311a76f763"
* entry[=].resource = 6d77aa10-384f-4d38-8577-5b311a76f763 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/e79ae4bb-6f52-42a5-bd00-c95049e60545"
* entry[=].resource = e79ae4bb-6f52-42a5-bd00-c95049e60545
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/dcd010cd-b841-4272-9d43-1f7acf4618e0"
* entry[=].resource = dcd010cd-b841-4272-9d43-1f7acf4618e0
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/41744c19-cd74-4ed4-a941-ec5661add4c7"
* entry[=].resource = 41744c19-cd74-4ed4-a941-ec5661add4c7

Instance: 6d77aa10-384f-4d38-8577-5b311a76f763
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ccc182e5-60e3-41c8-9624-e3741509e059"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(dcd010cd-b841-4272-9d43-1f7acf4618e0)
* author[institution] = Reference(41744c19-cd74-4ed4-a941-ec5661add4c7)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-05-01T10:00:00+02:00"
* section.entry = Reference(e79ae4bb-6f52-42a5-bd00-c95049e60545)
* date = "2026-05-01T10:00:00+02:00"
* language = #da "Danish"


Instance: dcd010cd-b841-4272-9d43-1f7acf4618e0
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


Instance: 41744c19-cd74-4ed4-a941-ec5661add4c7
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "398321000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Algade 59"


Instance: e79ae4bb-6f52-42a5-bd00-c95049e60545
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:4658cf6d-c8e1-4f9e-bc57-93cc2ec94ea5" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(dcd010cd-b841-4272-9d43-1f7acf4618e0)
* effectiveDateTime = "2026-05-01T10:00:00+02:00"
* performer[organization] = Reference(41744c19-cd74-4ed4-a941-ec5661add4c7)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHg6cD5QYXRpZW50ZW4gaGVudmVuZGVyIHNpZyBtZWQgaG9zdGUgZ2VubmVtIDMgZGFnZS4gSW5nZW4gZmViZXIgb2cgYWxtZW50IHVww6V2aXJrZXQuIFZ1cmRlcmVzIHNvbSBsZXQgw7h2cmUgbHVmdHZlanNpbmZla3Rpb24uIFLDpWQgb20gdsOmc2tlIG9nIGtvbnRha3QgdmVkIGZvcnbDpnJyaW5nLjwveDpwPg=="

/*Notat: 
<x:p>Patienten henvender sig med hoste gennem 3 dage. Ingen feber og alment upåvirket. Vurderes som let øvre luftvejsinfektion. Råd om væske og kontakt ved forværring.</x:p>
*/