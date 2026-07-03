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
* extension[valueAttachment].valueAttachment.data = "PHA+UGF0aWVudGVuIGVyIGtlbmR0IGkga2xpbmlra2VuIGdlbm5lbSBtYW5nZSDDpXIgb2cgbcO4ZGVyIGkgZGFnIHRpbCBvcGbDuGxnbmluZy4gT3BseXNlciBnZW5lcmVsdCBhdCBoYXZlIGRldCBnb2R0LCBtZW4gZsO4bGVyIHNpZyBtZXJlIHRyw6Z0IGVuZCB2YW5saWd0IGRlbiBzZW5lc3RlIG3DpW5lZC48L3A+DQo8cD48Yj48ZW0+QWt0dWVsdDwvZW0+PC9iPjxici8+DQogICAgUGF0aWVudGVuIGJlc2tyaXZlciB0aWx0YWdlbmRlIHRyw6Z0aGVkLCBsZXQgbmVkc2F0IGFwcGV0aXQgb2cgcGVyaW9kZXZpcyBzdmltbWVsaGVkIHZlZCBzdGlsbGluZ3Nza2lmdC48YnIvPg0KICAgIERlciBoYXIgaWtrZSB2w6ZyZXQgZmViZXIsIGhvc3RlIGVsbGVyIHbDpmd0dGFiLiA8aT5Tb3ZlciB1cm9saWd0IG9tIG5hdHRlbi48L2k+DQo8L3A+DQo8cD48Yj48ZW0+T2JqZWt0aXZ0PC9lbT48L2I+PGJyLz4NCiAgICBVcMOldmlya2V0IGFsbWVudGlsc3RhbmQuIEJsb2R0cnlrIDEzOC84NCwgcHVscyA3MiBvZyByZWdlbG3DpnNzaWcuPGJyLz4NCiAgICBDb3Igb2cgcHVsbSB1ZGVuIHNpa3JlIHBhdG9sb2dpc2tlIGZ1bmQuIDxiPkluZ2VuIMO4ZGVtZXIgcMOlIHVuZGVyZWtzdHJlbWl0ZXRlcm5lLjwvYj4NCjwvcD4NCjxwPjxiPjxlbT5WdXJkZXJpbmc8L2VtPjwvYj48YnIvPg0KICAgIFN5bXB0b21lcm5lIHZ1cmRlcmVzIHVzcGVjaWZpa2tlIG9nIHVkZW4gc2lrcmUgYWxhcm1zeW1wdG9tZXIgcMOlIG51dsOmcmVuZGUgdGlkc3B1bmt0Ljxici8+DQogICAgPGI+QmxvZHByw7h2ZXIgcGxhbmzDpmdnZXM8L2I+IG1lZCBoZW5ibGlrIHDDpSBuw6ZybWVyZSBhZmtsYXJpbmcuIDxiPjxpPlBhdGllbnRlbiBpbmZvcm1lcmV0IG9tIHBsYW5lbi48L2k+PC9iPg0KPC9wPg0KPHA+PGI+PGVtPlBsYW48L2VtPjwvYj48YnIvPg0KICAgIERlciBiZXN0aWxsZXMgcmVsZXZhbnRlIGJsb2RwcsO4dmVyIG9nIGFmdGFsZXMgb3Bmw7hsZ25pbmcsIG7DpXIgc3ZhciBmb3JlbGlnZ2VyLjxici8+DQogICAgUGF0aWVudGVuIGJlZGVzIGtvbnRha3RlIGtsaW5pa2tlbiB2ZWQgPGI+Zm9ydsOmcnJpbmcgaSBhbG1lbnRpbHN0YW5kPC9iPiwgdGlsdGFnZW5kZSBzdmltbWVsaGVkIGVsbGVyIG55ZSBzeW1wdG9tZXIuIDxiPjxpPkFrdXQga29udGFrdCB2ZWQgYnJ5c3RzbWVydGVyIGVsbGVyIMOlbmRlbsO4ZC48L2k+PC9iPg0KPC9wPg=="

/*Notat: 
<p>Patienten er kendt i klinikken gennem mange år og møder i dag til opfølgning. Oplyser generelt at have det godt, men føler sig mere træt end vanligt den seneste måned.</p>
<p><b><em>Aktuelt</em></b><br/>
    Patienten beskriver tiltagende træthed, let nedsat appetit og periodevis svimmelhed ved stillingsskift.<br/>
    Der har ikke været feber, hoste eller vægttab. <i>Sover uroligt om natten.</i>
</p>
<p><b><em>Objektivt</em></b><br/>
    Upåvirket almentilstand. Blodtryk 138/84, puls 72 og regelmæssig.<br/>
    Cor og pulm uden sikre patologiske fund. <b>Ingen ødemer på underekstremiteterne.</b>
</p>
<p><b><em>Vurdering</em></b><br/>
    Symptomerne vurderes uspecifikke og uden sikre alarmsymptomer på nuværende tidspunkt.<br/>
    <b>Blodprøver planlægges</b> med henblik på nærmere afklaring. <b><i>Patienten informeret om planen.</i></b>
</p>
<p><b><em>Plan</em></b><br/>
    Der bestilles relevante blodprøver og aftales opfølgning, når svar foreligger.<br/>
    Patienten bedes kontakte klinikken ved <b>forværring i almentilstand</b>, tiltagende svimmelhed eller nye symptomer. <b><i>Akut kontakt ved brystsmerter eller åndenød.</i></b>
</p>*/