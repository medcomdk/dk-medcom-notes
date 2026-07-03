Instance: 7249c43b-dea3-4a45-9673-df2b9220745d
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cb846919-db0d-4989-9d17-5f6103115ac6"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/0829ab78-b435-4128-b75e-142b9fd66377"
* entry[=].resource = 0829ab78-b435-4128-b75e-142b9fd66377 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/0ac51b49-5b65-4e0e-bcb2-40ef99d4dc40"
* entry[=].resource = 0ac51b49-5b65-4e0e-bcb2-40ef99d4dc40
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/58871a82-7443-44a5-8297-e59da8be320d"
* entry[=].resource = 58871a82-7443-44a5-8297-e59da8be320d
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/de2db32b-d883-4706-873a-eb65445d6677"
* entry[=].resource = de2db32b-d883-4706-873a-eb65445d6677

Instance: 0829ab78-b435-4128-b75e-142b9fd66377
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dfbfd68f-4bbb-4c84-be5c-321ceab92b91"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(58871a82-7443-44a5-8297-e59da8be320d)
* author[institution] = Reference(de2db32b-d883-4706-873a-eb65445d6677)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-04-01T08:09:00+02:00"
* section.entry = Reference(0ac51b49-5b65-4e0e-bcb2-40ef99d4dc40)
* date = "2026-04-01T08:09:00+02:00"
* language = #da "Danish"


Instance: 58871a82-7443-44a5-8297-e59da8be320d
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


Instance: de2db32b-d883-4706-873a-eb65445d6677
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "398321000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Algade 59"


Instance: 0ac51b49-5b65-4e0e-bcb2-40ef99d4dc40
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:1b305a73-0bbd-4a2d-bc7b-f6c13f92b63d" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(58871a82-7443-44a5-8297-e59da8be320d)
* effectiveDateTime = "2026-04-01T08:09:00+02:00"
* performer[organization] = Reference(de2db32b-d883-4706-873a-eb65445d6677)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHA+UGF0aWVudGVuIG3DuGRlciB0aWwgb3Bmw7hsZ25pbmcgb2cgb3BseXNlciBhdCBoYXZlIGRldCByaW1lbGlndCwgbWVuIGZvcnRzYXQgdsOmcmUgbGlkdCB0csOmdCBpIGh2ZXJkYWdlbi48L3A+DQo8cD48Yj48ZW0+QWt0dWVsdDwvZW0+PC9iPjxici8+DQogICAgQmVza3JpdmVyIGxldCB0csOmdGhlZCBvZyBwZXJpb2RldmlzIHN2aW1tZWxoZWQgdmVkIGh1cnRpZ2Ugc3RpbGxpbmdzc2tpZnQuPGJyLz4NCiAgICBJbmdlbiBmZWJlciwgaG9zdGUgZWxsZXIgdsOmZ3R0YWIuIDxpPlNvdmVyIGxpZHQgdXJvbGlndCBvbSBuYXR0ZW4uPC9pPg0KPC9wPg0KPHA+PGI+PGVtPk9iamVrdGl2dDwvZW0+PC9iPjxici8+DQogICAgVXDDpXZpcmtldCBhbG1lbnRpbHN0YW5kLiBCbG9kdHJ5ayAxMzYvODIsIHB1bHMgNzAgb2cgcmVnZWxtw6Zzc2lnLjxici8+DQogICAgQ29yIG9nIHB1bG0gdWRlbiBzaWtyZSBwYXRvbG9naXNrZSBmdW5kLiA8Yj5JbmdlbiDDuGRlbWVyLjwvYj4NCjwvcD4NCjxwPjxiPjxlbT5WdXJkZXJpbmc8L2VtPjwvYj48YnIvPg0KICAgIFVzcGVjaWZpa2tlIHN5bXB0b21lciB1ZGVuIGFrdHVlbGxlIGFsYXJtc3ltcHRvbWVyLjxici8+DQogICAgPGI+QmxvZHByw7h2ZXIgYmVzdGlsbGVzPC9iPiB0aWwgbsOmcm1lcmUgdnVyZGVyaW5nLg0KPC9wPg0KPHA+PGI+PGVtPlBsYW48L2VtPjwvYj48YnIvPg0KICAgIEFmdGFsdCBvcGbDuGxnbmluZyBuw6VyIHByw7h2ZXN2YXIgZm9yZWxpZ2dlci48YnIvPg0KICAgIFBhdGllbnRlbiBpbmZvcm1lcmV0IG9tIGF0IGtvbnRha3RlIGtsaW5pa2tlbiB2ZWQgPGI+PGk+Zm9ydsOmcnJpbmcgZWxsZXIgbnllIHN5bXB0b21lci48L2k+PC9iPg0KPC9wPg=="

/*Notat: 
<p>Patienten møder til opfølgning og oplyser at have det rimeligt, men fortsat være lidt træt i hverdagen.</p>
<p><b><em>Aktuelt</em></b><br/>
    Beskriver let træthed og periodevis svimmelhed ved hurtige stillingsskift.<br/>
    Ingen feber, hoste eller vægttab. <i>Sover lidt uroligt om natten.</i>
</p>
<p><b><em>Objektivt</em></b><br/>
    Upåvirket almentilstand. Blodtryk 136/82, puls 70 og regelmæssig.<br/>
    Cor og pulm uden sikre patologiske fund. <b>Ingen ødemer.</b>
</p>
<p><b><em>Vurdering</em></b><br/>
    Uspecifikke symptomer uden aktuelle alarmsymptomer.<br/>
    <b>Blodprøver bestilles</b> til nærmere vurdering.
</p>
<p><b><em>Plan</em></b><br/>
    Aftalt opfølgning når prøvesvar foreligger.<br/>
    Patienten informeret om at kontakte klinikken ved <b><i>forværring eller nye symptomer.</i></b>
</p>
*/