Instance: d0f67b6c-1c7f-4c94-bc6c-36219aaa4298
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c663000-0e99-4133-b45f-0f942bfbbc27"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/83b1fe8f-0ce9-47aa-aad5-34e088e712f6"
* entry[=].resource = 83b1fe8f-0ce9-47aa-aad5-34e088e712f6 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/cc4396c6-427c-4523-a3c6-6b2bfd67434f"
* entry[=].resource = cc4396c6-427c-4523-a3c6-6b2bfd67434f
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/b9f2ff36-e81e-4210-b641-67ee071d4851"
* entry[=].resource = b9f2ff36-e81e-4210-b641-67ee071d4851
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/628a0e36-f459-4d10-8fbd-63e9ee014445"
* entry[=].resource = 628a0e36-f459-4d10-8fbd-63e9ee014445
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/83df6baa-187c-4d01-82b1-0d3cf22b89fe"
* entry[=].resource = 83df6baa-187c-4d01-82b1-0d3cf22b89fe
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/207d4775-3dc8-49e7-adf9-9bcca7d5d568"
* entry[=].resource = 207d4775-3dc8-49e7-adf9-9bcca7d5d568


Instance: 83b1fe8f-0ce9-47aa-aad5-34e088e712f6
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c4a96db8-7bbb-48a3-8f59-1130d43d6a0f"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(b9f2ff36-e81e-4210-b641-67ee071d4851)
* author[institution] = Reference(628a0e36-f459-4d10-8fbd-63e9ee014445)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-06-01T08:56:00+02:00"
* section.entry = Reference(cc4396c6-427c-4523-a3c6-6b2bfd67434f)
* date = "2026-06-01T08:56:00+02:00"
* language = #da "Danish"


Instance: b9f2ff36-e81e-4210-b641-67ee071d4851
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


Instance: 628a0e36-f459-4d10-8fbd-63e9ee014445
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "508481000016001"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Amagerbro"

Instance: 83df6baa-187c-4d01-82b1-0d3cf22b89fe
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(207d4775-3dc8-49e7-adf9-9bcca7d5d568)
* code = $PractitionerRole#laegesekretaer
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dedf73b2-1214-4607-a093-5f6e08b95200"
* organization = Reference(101f0d1a-9186-4a48-8594-8c06db5745f1)

Instance: 207d4775-3dc8-49e7-adf9-9bcca7d5d568
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Allan"
* name.family = "Hess-Larsen"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:62d51f40-ccd9-4fad-b0ed-ab8057ab7529"

Instance: cc4396c6-427c-4523-a3c6-6b2bfd67434f
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:4774c546-b120-4c7d-ae76-e6fe506f0352" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(b9f2ff36-e81e-4210-b641-67ee071d4851)
* effectiveDateTime = "2026-06-01T08:56:00+02:00"
* performer[organization] = Reference(628a0e36-f459-4d10-8fbd-63e9ee014445)
* performer[practitionerRole] = Reference(83df6baa-187c-4d01-82b1-0d3cf22b89fe)
* performer[practitioner] = Reference(207d4775-3dc8-49e7-adf9-9bcca7d5d568)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHg6cD5QYXRpZW50ZW4gbcO4ZGVyIGkga2xpbmlra2VuIHRpbCBrb25zdWx0YXRpb24gcMOlIGdydW5kIGFmIHRpbHRhZ2VuZGUgdHLDpnRoZWQgZ2VubmVtIGRlIHNlbmVzdGUgNC02IHVnZXIuIE9wbHlzZXIgYXQgaGF2ZSB2w6ZyZXQgbWVyZSB1ZG1hdHRldCBlbmQgdmFubGlndCwgc8OmcmxpZ3Qgc2lkc3QgcMOlIGRhZ2VuLCBvZyBoYXIgaGFmdCBiZWhvdiBmb3IgZmxlcmUgcGF1c2VyIGkgaHZlcmRhZ2VuLiBQYXRpZW50ZW4gYmVza3JpdmVyIHNhbXRpZGlnIGxldHRlcmUgc3ZpbW1lbGhlZCB2ZWQgaHVydGlnZSBzdGlsbGluZ3Nza2lmdCwgbWVuIGluZ2VuIGVnZW50bGlnZSBiZXN2aW1lbHNlci4gQXBwZXRpdHRlbiBlciBsZXQgbmVkc2F0LCBtZW4gZGVyIGhhciBpa2tlIHbDpnJldCBrdmFsbWUgZWxsZXIgb3BrYXN0bmluZy4gSW5nZW4gZmViZXIsIGluZ2VuIG5hdGxpZ2Ugc3ZlZGV0dXJlIG9nIGludGV0IHV0aWxzaWd0ZXQgdsOmZ3R0YWIuIFBhdGllbnRlbiBzb3ZlciB1cm9saWd0IG9tIG5hdHRlbiBvZyBmw7hsZXIgc2lnIGlra2UgaGVsdCB1ZGh2aWxldCBvbSBtb3JnZW5lbi4gRGVyIGVyIGlra2UgaG9zdGUsIMOlbmRlbsO4ZCBlbGxlciBicnlzdHNtZXJ0ZXIuIFZhbmRsYWRuaW5nIG9nIGFmZsO4cmluZyBiZXNrcml2ZXMgc29tIHZhbmxpZ2UuIFZlZCBkZW4gb2JqZWt0aXZlIHVuZGVyc8O4Z2Vsc2UgZmluZGVzIHBhdGllbnRlbiB2w6VnZW4sIGtsYXIgb2cgdXDDpXZpcmtldCBpIGFsbWVudGlsc3RhbmRlbi4gQmxvZHRyeWsgbcOlbGVzIHRpbCAxMzQvODAgb2cgcHVscyB0aWwgNzQsIHJlZ2VsbcOmc3NpZy4gSGplcnRlIG9nIGx1bmdlciBhdXNrdWx0ZXJlcyB1ZGVuIHNpa3JlIHBhdG9sb2dpc2tlIGZ1bmQuIEFiZG9tZW4gZXIgYmzDuGR0IG9nIHXDuG10LCBvZyBkZXIgc2VzIGluZ2VuIMO4ZGVtZXIgcMOlIHVuZGVyZWtzdHJlbWl0ZXRlcm5lLiBTYW1sZXQgdnVyZGVyZXMgc3ltcHRvbWVybmUgc29tIHVzcGVjaWZpa2tlIG9nIHVkZW4gYWt0dWVsbGUgYWxhcm1zeW1wdG9tZXIsIG1lbiBkZXIgZmluZGVzIGluZGlrYXRpb24gZm9yIHZpZGVyZSB1ZHJlZG5pbmcgbWVkIGJsb2RwcsO4dmVyLCBoZXJ1bmRlciBow6Ztb2dsb2JpbiwgaW5mZWt0aW9uc3RhbCwgc3RvZnNraWZ0ZSBvZyByZWxldmFudGUgYmlva2VtaXNrZSBwcsO4dmVyLiBQYXRpZW50ZW4gaW5mb3JtZXJlcyBvbSBwbGFuZW4gb2cgb20gYXQga29udGFrdGUga2xpbmlra2VuIHRpZGxpZ2VyZSB2ZWQgZm9ydsOmcnJpbmcsIHRpbHRhZ2VuZGUgc3ZpbW1lbGhlZCwgbnlvcHN0w6VldCDDpW5kZW7DuGQgZWxsZXIgYW5kcmUgbnllIHN5bXB0b21lci4gRGVyIGFmdGFsZXMgb3Bmw7hsZ25pbmcsIG7DpXIgcHLDuHZlc3ZhciBmb3JlbGlnZ2VyLjwveDpwPg=="

/*Notat: 
<x:p>Patienten møder i klinikken til konsultation på grund af tiltagende træthed gennem de seneste 4-6 uger. Oplyser at have været mere udmattet end vanligt, særligt sidst på dagen, og har haft behov for flere pauser i hverdagen. Patienten beskriver samtidig lettere svimmelhed ved hurtige stillingsskift, men ingen egentlige besvimelser. Appetitten er let nedsat, men der har ikke været kvalme eller opkastning. Ingen feber, ingen natlige svedeture og intet utilsigtet vægttab. Patienten sover uroligt om natten og føler sig ikke helt udhvilet om morgenen. Der er ikke hoste, åndenød eller brystsmerter. Vandladning og afføring beskrives som vanlige. Ved den objektive undersøgelse findes patienten vågen, klar og upåvirket i almentilstanden. Blodtryk måles til 134/80 og puls til 74, regelmæssig. Hjerte og lunger auskulteres uden sikre patologiske fund. Abdomen er blødt og uømt, og der ses ingen ødemer på underekstremiteterne. Samlet vurderes symptomerne som uspecifikke og uden aktuelle alarmsymptomer, men der findes indikation for videre udredning med blodprøver, herunder hæmoglobin, infektionstal, stofskifte og relevante biokemiske prøver. Patienten informeres om planen og om at kontakte klinikken tidligere ved forværring, tiltagende svimmelhed, nyopstået åndenød eller andre nye symptomer. Der aftales opfølgning, når prøvesvar foreligger.</x:p>
*/