Instance: 33eb5f6e-953a-405c-9f07-227b432a018e
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* type = #document
* timestamp = 2026-12-12T11:30:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f07b54a0-0d1f-4b22-929b-af3eb9edb86b"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/c0c73552-ce49-4c1e-a38d-c02cf04df6a4"
* entry[=].resource = c0c73552-ce49-4c1e-a38d-c02cf04df6a4 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/6f5d830c-fce8-456a-bc30-092dff49bdfa"
* entry[=].resource = 6f5d830c-fce8-456a-bc30-092dff49bdfa
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/8bf4d9fe-0cd3-489e-9a42-d7f47e57d65e"
* entry[=].resource = 8bf4d9fe-0cd3-489e-9a42-d7f47e57d65e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/441dffed-32e3-4183-82f2-51866ce18efb"
* entry[=].resource = 441dffed-32e3-4183-82f2-51866ce18efb
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/86982021-59a5-44e3-8264-195aa7b19091"
* entry[=].resource = 86982021-59a5-44e3-8264-195aa7b19091
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/5940ce9a-425d-43ab-aa9a-b25b9c0c0341"
* entry[=].resource = 5940ce9a-425d-43ab-aa9a-b25b9c0c0341

Instance: c0c73552-ce49-4c1e-a38d-c02cf04df6a4
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:260f6e55-f56c-4d8e-a73c-5e5b083a3297"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008	
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(8bf4d9fe-0cd3-489e-9a42-d7f47e57d65e)
* author[institution] = Reference(441dffed-32e3-4183-82f2-51866ce18efb)
* author[person] = Reference(86982021-59a5-44e3-8264-195aa7b19091)
* title = "Journalnotat for 3103979995"
* confidentiality = #N
* event.period.start = "2026-04-14T09:05:00+02:00"
* section.entry = Reference(6f5d830c-fce8-456a-bc30-092dff49bdfa)
* date = "2026-04-14T09:05:00+02:00"
* language = #da "Danish"


Instance: 8bf4d9fe-0cd3-489e-9a42-d7f47e57d65e
InstanceOf: MedComDocumentPatient
Title: "Patient instance - maximum"
Description: "Patient instance - maximum - Niels Test Vendelboe"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "3103979995"
* name[official].use = #official
* name[official].family = "Jensen"
* name[official].given[0] = "Anders"
* name[official].given[1] = "Test"
* birthDate = "1997-03-31"
* gender = #male


Instance: 5940ce9a-425d-43ab-aa9a-b25b9c0c0341
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(86982021-59a5-44e3-8264-195aa7b19091)
* code.text = "-"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:93f557cd-4f73-4373-bca5-777e74e70d16"
* organization = Reference(441dffed-32e3-4183-82f2-51866ce18efb)

Instance: 86982021-59a5-44e3-8264-195aa7b19091
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "K"
* name.family = "...."
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b18cc287-5ef7-49d8-a7e1-6a872d582f84"

Instance: 441dffed-32e3-4183-82f2-51866ce18efb
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "1001741000016009"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[Ydernummer].value = "069701"
* identifier[Ydernummer].system = "urn:oid:1.2.208.176.1.4"
* name = "   "


Instance: 6f5d830c-fce8-456a-bc30-092dff49bdfa
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7c36ee90-9a35-4c8e-a6fe-56020ac961aa"
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(8bf4d9fe-0cd3-489e-9a42-d7f47e57d65e)
* effectiveDateTime = "2026-04-14T09:05:00+02:00"
* performer[organization] = Reference(441dffed-32e3-4183-82f2-51866ce18efb)
* performer[practitionerRole] = Reference(5940ce9a-425d-43ab-aa9a-b25b9c0c0341)
* performer[practitioner] = Reference(86982021-59a5-44e3-8264-195aa7b19091)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "IA=="


/* 
 */