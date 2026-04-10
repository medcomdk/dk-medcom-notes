Instance: 17ef1824-77b5-400c-8796-0c971c0cdef5
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* type = #document
* timestamp = 2026-12-12T11:30:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2c84faed-8aab-421f-b13f-306c151d3478"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/fe8961dc-a2de-4d77-932e-ee6ad3fb2881"
* entry[=].resource = fe8961dc-a2de-4d77-932e-ee6ad3fb2881 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/4c04a260-cb0e-455e-a15e-889991b8db0a"
* entry[=].resource = 4c04a260-cb0e-455e-a15e-889991b8db0a
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/d5252882-2f9d-41aa-b5a4-f5ecadb648ee"
* entry[=].resource = d5252882-2f9d-41aa-b5a4-f5ecadb648ee
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/2d60efa1-e0e1-4861-af9a-8f923a4ce573"
* entry[=].resource = 2d60efa1-e0e1-4861-af9a-8f923a4ce573
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/6686758a-9d8f-4213-abe9-f2bd3a5bd776"
* entry[=].resource = 6686758a-9d8f-4213-abe9-f2bd3a5bd776
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/f8dac95d-8426-496f-a7b4-63cd7f6b882f"
* entry[=].resource = f8dac95d-8426-496f-a7b4-63cd7f6b882f

Instance: fe8961dc-a2de-4d77-932e-ee6ad3fb2881
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:49b50783-6477-4eec-9d4b-56832a7a8d9d"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008	
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(d5252882-2f9d-41aa-b5a4-f5ecadb648ee)
* author[institution] = Reference(2d60efa1-e0e1-4861-af9a-8f923a4ce573)
* author[person] = Reference(6686758a-9d8f-4213-abe9-f2bd3a5bd776)
* title = "Journalnotat for 3103979995"
* confidentiality = #N
* event.period.start = "2026-12-10T09:05:00+01:00"
* section.entry = Reference(4c04a260-cb0e-455e-a15e-889991b8db0a)
* date = "2026-12-12T14:50:00+01:00"
* language = #da "Danish"


Instance: d5252882-2f9d-41aa-b5a4-f5ecadb648ee
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


Instance: f8dac95d-8426-496f-a7b4-63cd7f6b882f
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(6686758a-9d8f-4213-abe9-f2bd3a5bd776)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a09780f3-5fde-4449-9196-9fe84dfdaa1f"
* organization = Reference(2d60efa1-e0e1-4861-af9a-8f923a4ce573)

Instance: 6686758a-9d8f-4213-abe9-f2bd3a5bd776
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Kristian"
* name.family = "Skytte"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b22ddd68-0e0c-415a-8f10-396ce6aa5ad8"

Instance: 2d60efa1-e0e1-4861-af9a-8f923a4ce573
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "1001741000016009"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[Ydernummer].value = "069701"
* identifier[Ydernummer].system = "urn:oid:1.2.208.176.1.4"
* name = "Ans Lægehus v. Kristian Skytte"


Instance: 4c04a260-cb0e-455e-a15e-889991b8db0a
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:aa334792-8074-4be8-abf1-146e11aa35af"
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(d5252882-2f9d-41aa-b5a4-f5ecadb648ee)
* effectiveDateTime = "2026-12-10T09:05:00+01:00"
* performer[organization] = Reference(2d60efa1-e0e1-4861-af9a-8f923a4ce573)
* performer[practitionerRole] = Reference(f8dac95d-8426-496f-a7b4-63cd7f6b882f)
* performer[practitioner] = Reference(6686758a-9d8f-4213-abe9-f2bd3a5bd776)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHA+UGF0aWVudGVuIG3DuGRlciB0aWwga29uc3VsdGF0aW9uIHDDpSBncnVuZCBhZiB0aWx0YWdlbmRlIHRyw6Z0aGVkLCBsZXQgc3ZpbW1lbGhlZCBvZyBuZWRzYXQgb3ZlcnNrdWQgZ2VubmVtIGRlIHNlbmVzdGUgNi04IHVnZXIuIE9wbHlzZXIgYXQgaGF2ZSBzdsOmcnQgdmVkIGF0IGtsYXJlIGRlIHPDpmR2YW5saWdlIGRhZ2xpZ2UgYWt0aXZpdGV0ZXIgaSBzYW1tZSB0ZW1wbyBzb20gdGlkbGlnZXJlLCBzw6ZybGlndCBzaWRzdCBww6UgZGFnZW4uIFBhdGllbnRlbiBiZXNrcml2ZXIgZGVzdWRlbiBwZXJpb2RldmlzIGhqZXJ0ZWJhbmtlbiB2ZWQgZnlzaXNrIGFrdGl2aXRldCwgbWVuIGluZ2VuIGVnZW50bGlnZSBicnlzdHNtZXJ0ZXIuIERlciBoYXIgaWtrZSB2w6ZyZXQgYmVzdmltZWxzZXIuIFPDuHZuZW4gZXIgdXJvbGlnLCBvZyBwYXRpZW50ZW4gZsO4bGVyIHNpZyBvZnRlIGlra2UgdWRodmlsZXQgb20gbW9yZ2VuZW4uIEFwcGV0aXR0ZW4gZXIgbGV0IG5lZHNhdCwgbWVuIGRlciBlciBpa2tlIGt2YWxtZSBlbGxlciBvcGthc3RuaW5nLjwvcD4NCg0KPHA+QW5hbW5lc2U6PGJyLz4NCkluZ2VuIGZlYmVyLCBpbmdlbiBuYXRsaWdlIHN2ZWRldHVyZSBvZyBpbnRldCBzaWtrZXJ0IHbDpmd0dGFiLiBQYXRpZW50ZW4gYW5naXZlciwgYXQgZGVyIGRlbiBzZW5lc3RlIG3DpW5lZCBoYXIgdsOmcmV0IMO4Z2V0IHBzeWtpc2sgYmVsYXN0bmluZyBpIGZvcmJpbmRlbHNlIG1lZCBhcmJlamRlIG9nIHPDuHZucHJvYmxlbWVyLiBLZW5kdCBtZWQgPGI+aHlwZXJ0ZW5zaW9uPC9iPiBvZyA8Yj50eXBlIDItZGlhYmV0ZXM8L2I+LCBlbGxlcnMgaW5nZW4ga2VuZHQgaGplcnRlc3lnZG9tLiBUYWdlciB2YW5saWdlIGzDpmdlbWlkbGVyIHNvbSBvcmRpbmVyZXQgb2cgYW5naXZlciBnb2QgY29tcGxpYW5jZS4gSW5nZW4gYWt0dWVsbGUgaW5mZWt0aW9uc3RlZ24uIDxpPkluZ2VuIGhvc3RlLCBla3NwZWt0b3JhdGlvbiBlbGxlciDDpW5kZW7DuGQgaSBodmlsZS48L2k+IEFmZsO4cmluZyBvZyB2YW5kbGFkbmluZyB1ZGVuIHbDpnNlbnRsaWdlIMOmbmRyaW5nZXIuPC9wPg0KDQo8cD5PYmpla3RpdnQ6PGJyLz4NClbDpWdlbiwga2xhciBvZyByZWxldmFudCB1bmRlciBrb25zdWx0YXRpb25lbi4gQWxtZW50IGxldCB0csOmdCBmcmVtdHLDpmRlbiwgbWVuIHVww6V2aXJrZXQgaSBodmlsZS4gQlQgMTQ2Lzg2IG1tSGcuIFB1bHMgNzgsIHJlZ2VsbcOmc3NpZy4gU2F0dXJhdGlvbiA5OCAlIHDDpSBhdG1vc2bDpnJpc2sgbHVmdC4gVGVtcGVyYXR1ciAzNiw4LiBIamVydGUgYXVza3VsdGVyZXMgbWVkIHJlZ2VsbcOmc3NpZyByeXRtZSB1ZGVuIG1pc2x5ZGUuIEx1bmdlciBzdC5wLiB1ZGVuIGtyZXBpdGF0aW9uIGVsbGVyIHJob25jaGkuIEFiZG9tZW4gYmzDuGR0IG9nIHXDuG10IHVkZW4gcGFscGFibGUgdWRmeWxkbmluZ2VyLiBJbmdlbiBow6Z2ZWxzZSBhZiB1bmRlcmVrc3RyZW1pdGV0ZXIuIE5ldXJvbG9naXNrIGdyb2Z0IHVww6VmYWxkZW5kZS4gPGI+SW5nZW4gZm9rYWxlIHVkZmFsZC48L2I+PC9wPg0KDQo8cD5QYXJha2xpbmlrOjxici8+DQpCbG9kc3Vra2VyIG3DpWx0IGkga2xpbmlra2VuIGxldCBmb3Jow7hqZXQuIFVyaW5zdGl4IHVkZW4gbml0cml0IGVsbGVyIGxldWtvY3l0dGVyLiBIw6Ztb2dsb2JpbiwgaW5mZWt0aW9uc3RhbCwgZWxla3Ryb2x5dHRlciwgbnlyZXRhbCwgbGV2ZXJ0YWwsIGZlcnJpdGluLCB2aXRhbWluIEIxMiwgZm9sYXQgb2cgVFNIIGJlc3RpbGxlcyBtZWQgaGVuYmxpayBww6UgdmlkZXJlIGFma2xhcmluZy4gRUtHIG9wdGFnZXMgaSBrbGluaWtrZW4gb2cgdmlzZXIgc2ludXNyeXRtZSB1ZGVuIGFrdXR0ZSBpc2vDpm1pc2tlIGZvcmFuZHJpbmdlci4gSGJBMWMgZnJhIHNlbmVzdGUga29udHJvbCB2YXIgPGVtPjYwIG1tb2wvbW9sPC9lbT4sIGh2aWxrZXQgZm9ydHNhdCBlciBvdmVyIGJlaGFuZGxpbmdzbcOlbGV0LjwvcD4NCg0KPHA+VnVyZGVyaW5nOjxici8+DQpTYW1sZXQgdnVyZGVyZXMgc3ltcHRvbWVybmUgc29tIDxiPnVzcGVjaWZpa2tlPC9iPiwgbWVuIG1lZCBiZWhvdiBmb3IgeWRlcmxpZ2VyZSB1ZHJlZG5pbmcuIERlciBlciBww6UgbnV2w6ZyZW5kZSB0aWRzcHVua3QgaW5nZW4gc2lrcmUgdGVnbiBww6UgYWt1dCBrYXJkaW9wdWxtb25hbCB0aWxzdGFuZCBlbGxlciBhbHZvcmxpZyBpbmZla3Rpb24uIFRyw6Z0aGVkIG9nIG5lZHNhdCBvdmVyc2t1ZCBrYW4gdsOmcmUgbXVsdGlmYWt0b3JpZWx0IGJldGluZ2V0LCBoZXJ1bmRlciBww6V2aXJrZXQgYWYgc8O4dm5mb3JzdHlycmVsc2UsIHN0cmVzc2JlbGFzdG5pbmcsIHV0aWxzdHLDpmtrZWxpZyBkaWFiZXRlc3JlZ3VsZXJpbmcgZWxsZXIgYW5kZW4gbWVkaWNpbnNrIMOlcnNhZywgc29tIHPDuGdlcyBhZmTDpmtrZXQgdmVkIGJsb2RwcsO4dmVyLiBQYXRpZW50ZW4gaW5mb3JtZXJlcyBvbSBmdW5kIG9nIHBsYW4uPC9wPg0KDQo8cD5QbGFuOjxici8+DQpEZXIgYWZ0YWxlcyBvcGbDuGxnbmluZywgbsOlciBwcsO4dmVzdmFyIGZvcmVsaWdnZXIsIG1lZCBoZW5ibGlrIHDDpSBnZW5uZW1nYW5nIG9nIGV2ZW50dWVsIGp1c3RlcmluZyBhZiBiZWhhbmRsaW5nLiBQYXRpZW50ZW4gcsOlZGVzIHRpbCByZWdlbG3DpnNzaWcgdsOmc2tlaW5kdGFnZWxzZSwgcm9saWcgbW9iaWxpc2VyaW5nIHZlZCBzdGlsbGluZ3Nza2lmdCBzYW10IGZvcnRzYXQgZm9rdXMgcMOlIGtvc3QsIG1vdGlvbiBvZyBzw7h2bmh5Z2llam5lLiBWZWQgdGlsdGFnZW5kZSBzdmltbWVsaGVkLCBicnlzdHNtZXJ0ZXIsIMOlbmRlbsO4ZCwgYmVzdmltZWxzZSBlbGxlciBhbmRlbiBmb3J2w6ZycmluZyBza2FsIHBhdGllbnRlbiBrb250YWt0ZSBsw6ZnZSBha3V0LiBLb250cm9sdGlkIGJvb2tlcyBmb3JlbMO4YmlndCBvbSAxLTIgdWdlci4gPGI+PGk+UGF0aWVudGVuIGVyIGluZm9ybWVyZXQgb2cgYWNjZXB0ZXJlciBwbGFuZW4uPC9pPjwvYj48L3A+DQoNCjxwPlVuZGVyc2tyaWZ0OiBEci4gPHR0PlNreXR0ZTwvdHQ+PC9wPg=="


/* <p>Patienten møder til konsultation på grund af tiltagende træthed, let svimmelhed og nedsat overskud gennem de seneste 6-8 uger. Oplyser at have svært ved at klare de sædvanlige daglige aktiviteter i samme tempo som tidligere, særligt sidst på dagen. Patienten beskriver desuden periodevis hjertebanken ved fysisk aktivitet, men ingen egentlige brystsmerter. Der har ikke været besvimelser. Søvnen er urolig, og patienten føler sig ofte ikke udhvilet om morgenen. Appetitten er let nedsat, men der er ikke kvalme eller opkastning.</p>

<p>Anamnese:<br/>
Ingen feber, ingen natlige svedeture og intet sikkert vægttab. Patienten angiver, at der den seneste måned har været øget psykisk belastning i forbindelse med arbejde og søvnproblemer. Kendt med <b>hypertension</b> og <b>type 2-diabetes</b>, ellers ingen kendt hjertesygdom. Tager vanlige lægemidler som ordineret og angiver god compliance. Ingen aktuelle infektionstegn. <i>Ingen hoste, ekspektoration eller åndenød i hvile.</i> Afføring og vandladning uden væsentlige ændringer.</p>

<p>Objektivt:<br/>
Vågen, klar og relevant under konsultationen. Alment let træt fremtræden, men upåvirket i hvile. BT 146/86 mmHg. Puls 78, regelmæssig. Saturation 98 % på atmosfærisk luft. Temperatur 36,8. Hjerte auskulteres med regelmæssig rytme uden mislyde. Lunger st.p. uden krepitation eller rhonchi. Abdomen blødt og uømt uden palpable udfyldninger. Ingen hævelse af underekstremiteter. Neurologisk groft upåfaldende. <b>Ingen fokale udfald.</b></p>

<p>Paraklinik:<br/>
Blodsukker målt i klinikken let forhøjet. Urinstix uden nitrit eller leukocytter. Hæmoglobin, infektionstal, elektrolytter, nyretal, levertal, ferritin, vitamin B12, folat og TSH bestilles med henblik på videre afklaring. EKG optages i klinikken og viser sinusrytme uden akutte iskæmiske forandringer. HbA1c fra seneste kontrol var <em>60 mmol/mol</em>, hvilket fortsat er over behandlingsmålet.</p>

<p>Vurdering:<br/>
Samlet vurderes symptomerne som <b>uspecifikke</b>, men med behov for yderligere udredning. Der er på nuværende tidspunkt ingen sikre tegn på akut kardiopulmonal tilstand eller alvorlig infektion. Træthed og nedsat overskud kan være multifaktorielt betinget, herunder påvirket af søvnforstyrrelse, stressbelastning, utilstrækkelig diabetesregulering eller anden medicinsk årsag, som søges afdækket ved blodprøver. Patienten informeres om fund og plan.</p>

<p>Plan:<br/>
Der aftales opfølgning, når prøvesvar foreligger, med henblik på gennemgang og eventuel justering af behandling. Patienten rådes til regelmæssig væskeindtagelse, rolig mobilisering ved stillingsskift samt fortsat fokus på kost, motion og søvnhygiejne. Ved tiltagende svimmelhed, brystsmerter, åndenød, besvimelse eller anden forværring skal patienten kontakte læge akut. Kontroltid bookes foreløbigt om 1-2 uger. <b><i>Patienten er informeret og accepterer planen.</i></b></p>

<p>Underskrift: Dr. <tt>Skytte</tt></p>
 */