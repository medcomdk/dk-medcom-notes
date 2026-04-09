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
* extension[valueAttachment].valueAttachment.data = "PHg6cD5QYXRpZW50ZW4gbcO4ZGVyIHRpbCBvcGbDuGxnbmluZyBvZyBvcGx5c2VyIGF0IGhhdmUgZGV0IHJpbWVsaWd0LCBtZW4gZm9ydHNhdCB2w6ZyZSBsaWR0IHRyw6Z0IGkgaHZlcmRhZ2VuLjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPkFrdHVlbHQ8L3g6ZW0+PC94OmI+PHg6YnIvPg0KICAgIEJlc2tyaXZlciBsZXQgdHLDpnRoZWQgb2cgcGVyaW9kZXZpcyBzdmltbWVsaGVkIHZlZCBodXJ0aWdlIHN0aWxsaW5nc3NraWZ0Ljx4OmJyLz4NCiAgICBJbmdlbiBmZWJlciwgaG9zdGUgZWxsZXIgdsOmZ3R0YWIuIDx4Omk+U292ZXIgbGlkdCB1cm9saWd0IG9tIG5hdHRlbi48L3g6aT4NCjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPk9iamVrdGl2dDwveDplbT48L3g6Yj48eDpici8+DQogICAgVXDDpXZpcmtldCBhbG1lbnRpbHN0YW5kLiBCbG9kdHJ5ayAxMzYvODIsIHB1bHMgNzAgb2cgcmVnZWxtw6Zzc2lnLjx4OmJyLz4NCiAgICBDb3Igb2cgcHVsbSB1ZGVuIHNpa3JlIHBhdG9sb2dpc2tlIGZ1bmQuIDx4OmI+SW5nZW4gw7hkZW1lci48L3g6Yj4NCjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPlZ1cmRlcmluZzwveDplbT48L3g6Yj48eDpici8+DQogICAgVXNwZWNpZmlra2Ugc3ltcHRvbWVyIHVkZW4gYWt0dWVsbGUgYWxhcm1zeW1wdG9tZXIuPHg6YnIvPg0KICAgIDx4OmI+QmxvZHByw7h2ZXIgYmVzdGlsbGVzPC94OmI+IHRpbCBuw6ZybWVyZSB2dXJkZXJpbmcuDQo8L3g6cD4NCjx4OnA+PHg6Yj48eDplbT5QbGFuPC94OmVtPjwveDpiPjx4OmJyLz4NCiAgICBBZnRhbHQgb3Bmw7hsZ25pbmcgbsOlciBwcsO4dmVzdmFyIGZvcmVsaWdnZXIuPHg6YnIvPg0KICAgIFBhdGllbnRlbiBpbmZvcm1lcmV0IG9tIGF0IGtvbnRha3RlIGtsaW5pa2tlbiB2ZWQgPHg6Yj48eDppPmZvcnbDpnJyaW5nIGVsbGVyIG55ZSBzeW1wdG9tZXIuPC94Omk+PC94OmI+DQo8L3g6cD4="

/*Notat: 
<x:p>Patienten møder til opfølgning og oplyser at have det rimeligt, men fortsat være lidt træt i hverdagen.</x:p>
<x:p><x:b><x:em>Aktuelt</x:em></x:b><x:br/>
    Beskriver let træthed og periodevis svimmelhed ved hurtige stillingsskift.<x:br/>
    Ingen feber, hoste eller vægttab. <x:i>Sover lidt uroligt om natten.</x:i>
</x:p>
<x:p><x:b><x:em>Objektivt</x:em></x:b><x:br/>
    Upåvirket almentilstand. Blodtryk 136/82, puls 70 og regelmæssig.<x:br/>
    Cor og pulm uden sikre patologiske fund. <x:b>Ingen ødemer.</x:b>
</x:p>
<x:p><x:b><x:em>Vurdering</x:em></x:b><x:br/>
    Uspecifikke symptomer uden aktuelle alarmsymptomer.<x:br/>
    <x:b>Blodprøver bestilles</x:b> til nærmere vurdering.
</x:p>
<x:p><x:b><x:em>Plan</x:em></x:b><x:br/>
    Aftalt opfølgning når prøvesvar foreligger.<x:br/>
    Patienten informeret om at kontakte klinikken ved <x:b><x:i>forværring eller nye symptomer.</x:i></x:b>
</x:p>
*/