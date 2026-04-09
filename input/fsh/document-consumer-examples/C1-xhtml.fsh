Instance: 30304f39-3f6b-42b5-a124-395b47725ead
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-04-08T13:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3e55d89e-2337-416e-83b4-8568c5c3acfa"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/7e31a597-cf5f-49d0-9544-bdd4951f2268"
* entry[=].resource = 7e31a597-cf5f-49d0-9544-bdd4951f2268 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/2fce6d75-633b-4193-a395-c1274a3c8f8e"
* entry[=].resource = 2fce6d75-633b-4193-a395-c1274a3c8f8e
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/fe5d0502-4861-45c3-bf01-d6cce8647529"
* entry[=].resource = fe5d0502-4861-45c3-bf01-d6cce8647529
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/51ce6fd9-0cd7-41ee-b81b-81ac5cb8cd43"
* entry[=].resource = 51ce6fd9-0cd7-41ee-b81b-81ac5cb8cd43
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/a154b7fb-1cca-4311-885c-5792561c127f"
* entry[=].resource = a154b7fb-1cca-4311-885c-5792561c127f

Instance: 7e31a597-cf5f-49d0-9544-bdd4951f2268
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0385afbe-c747-4e11-8801-9acb76122c28"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(fe5d0502-4861-45c3-bf01-d6cce8647529)
* author[institution] = Reference(51ce6fd9-0cd7-41ee-b81b-81ac5cb8cd43)
* title = "Journalnotat for 1502779995"
* confidentiality = #N
* event.period.start = "2026-05-01T12:01:00+02:00"
* section.entry = Reference(2fce6d75-633b-4193-a395-c1274a3c8f8e)
* date = "2026-05-01T12:01:00+02:00"
* language = #da "Danish"


Instance: fe5d0502-4861-45c3-bf01-d6cce8647529
InstanceOf: MedComDocumentPatient
Title: "Patient instance - Ruddi Test Berggren"
Description: "Patient instance - Ruddi Test Berggren"
* meta.profile = $DocumentPatient
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "1502779995"
* name[official].use = #official
* name[official].family = "Berggren"
* name[official].given[0] = "Ruddi"
* name[official].given[1] = "Test"
* birthDate = "1977-02-15"
* gender = #male


Instance: 51ce6fd9-0cd7-41ee-b81b-81ac5cb8cd43
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "69891000016009"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægerne Østergade"

Instance: a154b7fb-1cca-4311-885c-5792561c127f
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:62d4ff95-8d34-4b7b-ab1f-0c64a508f336"
* organization = Reference(51ce6fd9-0cd7-41ee-b81b-81ac5cb8cd43)

Instance: 2fce6d75-633b-4193-a395-c1274a3c8f8e
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:a4c6b6b1-458e-47f4-a8c5-2260b7596ea5" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(fe5d0502-4861-45c3-bf01-d6cce8647529)
* effectiveDateTime = "2026-05-01T12:01:00+02:00"
* performer[organization] = Reference(51ce6fd9-0cd7-41ee-b81b-81ac5cb8cd43)
* performer[practitionerRole] = Reference(a154b7fb-1cca-4311-885c-5792561c127f)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHg6cD5QYXRpZW50ZW4gZXIga2VuZHQgaSBrbGluaWtrZW4gZ2VubmVtIG1hbmdlIMOlciBvZyBtw7hkZXIgaSBkYWcgdGlsIG9wZsO4bGduaW5nLiBPcGx5c2VyIGdlbmVyZWx0IGF0IGhhdmUgZGV0IGdvZHQsIG1lbiBmw7hsZXIgc2lnIG1lcmUgdHLDpnQgZW5kIHZhbmxpZ3QgZGVuIHNlbmVzdGUgbcOlbmVkLjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPkFrdHVlbHQ8L3g6ZW0+PC94OmI+PHg6YnIvPg0KICAgIFBhdGllbnRlbiBiZXNrcml2ZXIgdGlsdGFnZW5kZSB0csOmdGhlZCwgbGV0IG5lZHNhdCBhcHBldGl0IG9nIHBlcmlvZGV2aXMgc3ZpbW1lbGhlZCB2ZWQgc3RpbGxpbmdzc2tpZnQuPHg6YnIvPg0KICAgIERlciBoYXIgaWtrZSB2w6ZyZXQgZmViZXIsIGhvc3RlIGVsbGVyIHbDpmd0dGFiLiA8eDppPlNvdmVyIHVyb2xpZ3Qgb20gbmF0dGVuLjwveDppPg0KPC94OnA+DQo8eDpwPjx4OmI+PHg6ZW0+T2JqZWt0aXZ0PC94OmVtPjwveDpiPjx4OmJyLz4NCiAgICBVcMOldmlya2V0IGFsbWVudGlsc3RhbmQuIEJsb2R0cnlrIDEzOC84NCwgcHVscyA3MiBvZyByZWdlbG3DpnNzaWcuPHg6YnIvPg0KICAgIENvciBvZyBwdWxtIHVkZW4gc2lrcmUgcGF0b2xvZ2lza2UgZnVuZC4gPHg6Yj5JbmdlbiDDuGRlbWVyIHDDpSB1bmRlcmVrc3RyZW1pdGV0ZXJuZS48L3g6Yj4NCjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPlZ1cmRlcmluZzwveDplbT48L3g6Yj48eDpici8+DQogICAgU3ltcHRvbWVybmUgdnVyZGVyZXMgdXNwZWNpZmlra2Ugb2cgdWRlbiBzaWtyZSBhbGFybXN5bXB0b21lciBww6UgbnV2w6ZyZW5kZSB0aWRzcHVua3QuPHg6YnIvPg0KICAgIDx4OmI+QmxvZHByw7h2ZXIgcGxhbmzDpmdnZXM8L3g6Yj4gbWVkIGhlbmJsaWsgcMOlIG7DpnJtZXJlIGFma2xhcmluZy4gPHg6Yj48eDppPlBhdGllbnRlbiBpbmZvcm1lcmV0IG9tIHBsYW5lbi48L3g6aT48L3g6Yj4NCjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPlBsYW48L3g6ZW0+PC94OmI+PHg6YnIvPg0KICAgIERlciBiZXN0aWxsZXMgcmVsZXZhbnRlIGJsb2RwcsO4dmVyIG9nIGFmdGFsZXMgb3Bmw7hsZ25pbmcsIG7DpXIgc3ZhciBmb3JlbGlnZ2VyLjx4OmJyLz4NCiAgICBQYXRpZW50ZW4gYmVkZXMga29udGFrdGUga2xpbmlra2VuIHZlZCA8eDpiPmZvcnbDpnJyaW5nIGkgYWxtZW50aWxzdGFuZDwveDpiPiwgdGlsdGFnZW5kZSBzdmltbWVsaGVkIGVsbGVyIG55ZSBzeW1wdG9tZXIuIDx4OmI+PHg6aT5Ba3V0IGtvbnRha3QgdmVkIGJyeXN0c21lcnRlciBlbGxlciDDpW5kZW7DuGQuPC94Omk+PC94OmI+DQo8L3g6cD4="

/*Notat: 
<x:p>Patienten er kendt i klinikken gennem mange år og møder i dag til opfølgning. Oplyser generelt at have det godt, men føler sig mere træt end vanligt den seneste måned.</x:p>
<x:p><x:b><x:em>Aktuelt</x:em></x:b><x:br/>
    Patienten beskriver tiltagende træthed, let nedsat appetit og periodevis svimmelhed ved stillingsskift.<x:br/>
    Der har ikke været feber, hoste eller vægttab. <x:i>Sover uroligt om natten.</x:i>
</x:p>
<x:p><x:b><x:em>Objektivt</x:em></x:b><x:br/>
    Upåvirket almentilstand. Blodtryk 138/84, puls 72 og regelmæssig.<x:br/>
    Cor og pulm uden sikre patologiske fund. <x:b>Ingen ødemer på underekstremiteterne.</x:b>
</x:p>
<x:p><x:b><x:em>Vurdering</x:em></x:b><x:br/>
    Symptomerne vurderes uspecifikke og uden sikre alarmsymptomer på nuværende tidspunkt.<x:br/>
    <x:b>Blodprøver planlægges</x:b> med henblik på nærmere afklaring. <x:b><x:i>Patienten informeret om planen.</x:i></x:b>
</x:p>
<x:p><x:b><x:em>Plan</x:em></x:b><x:br/>
    Der bestilles relevante blodprøver og aftales opfølgning, når svar foreligger.<x:br/>
    Patienten bedes kontakte klinikken ved <x:b>forværring i almentilstand</x:b>, tiltagende svimmelhed eller nye symptomer. <x:b><x:i>Akut kontakt ved brystsmerter eller åndenød.</x:i></x:b>
</x:p>*/