Instance: fb6692f6-929c-4d54-aa93-37a053cbe14f
InstanceOf: MedComNotesBundle
Usage: #example
Title: "Bundle instance"
Description: "Bundle instance"
* meta.profile = $NotesBundle
* type = #document
* timestamp = 2026-12-10T09:18:00Z
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:01e9f9c3-748f-40e6-a22c-d65e29f09c20"
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Composition/1dd6975f-326f-42ce-b3d9-62e06ba3e3e7"
* entry[=].resource = 1dd6975f-326f-42ce-b3d9-62e06ba3e3e7 
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Observation/99961ccb-df8c-4f43-970a-7b5ef8ff6a11"
* entry[=].resource = 99961ccb-df8c-4f43-970a-7b5ef8ff6a11
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Patient/2075515c-57bf-457c-a8b4-bbe13fb34715"
* entry[=].resource = 2075515c-57bf-457c-a8b4-bbe13fb34715
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Organization/a53d4d96-c8af-4302-9640-7b38bc9f30e6"
* entry[=].resource = a53d4d96-c8af-4302-9640-7b38bc9f30e6
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/PractitionerRole/a2be903a-d346-4d0e-abd4-efb088471fd3"
* entry[=].resource = a2be903a-d346-4d0e-abd4-efb088471fd3
* entry[+].fullUrl = "http://medcomfhir.dk/ig/dk-medcom-notes/Practitioner/d9d5d579-b838-47cc-b5e9-64445fb3a1be"
* entry[=].resource = d9d5d579-b838-47cc-b5e9-64445fb3a1be

Instance: 1dd6975f-326f-42ce-b3d9-62e06ba3e3e7
InstanceOf: MedComNotesComposition
Description: "Composition example for consultation note"
Usage: #example
* meta.profile = $NotesComposition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7de4aae0-39b0-49cb-b979-9873ccb9d2f4"
* status = #final
* type.coding.system = $sct
* type.coding.code = #866144008
* type.coding.display = "Encounter note"
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"
* subject = Reference(2075515c-57bf-457c-a8b4-bbe13fb34715)
* author[institution] = Reference(a53d4d96-c8af-4302-9640-7b38bc9f30e6)
* author[person] = Reference(d9d5d579-b838-47cc-b5e9-64445fb3a1be)
* title = "Journalnotat for 3001749995"
* confidentiality = #N
* event.period.start = "2026-06-01T08:56:00+02:00"
* section.entry = Reference(99961ccb-df8c-4f43-970a-7b5ef8ff6a11)
* date = "2026-06-01T08:56:00+02:00"
* language = #da "Danish"


Instance: 2075515c-57bf-457c-a8b4-bbe13fb34715
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


Instance: a53d4d96-c8af-4302-9640-7b38bc9f30e6
InstanceOf: MedComDocumentOrganization
Title: "Organization"
Description: "Instance of an author organization"
Usage: #example
* meta.profile = $DocumentOrganization
* identifier[SOR-ID].value = "60121000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* name = "Lægeklinikken Kolding"

Instance: a2be903a-d346-4d0e-abd4-efb088471fd3
InstanceOf: MedComDocumentPractitionerRole
Title: "PractitionerRole"
Description: "PractitionerRole with a role and reference to a practitioner and an organization"
* meta.profile = $CorePractitionerRole
* practitioner = Reference(d9d5d579-b838-47cc-b5e9-64445fb3a1be)
* code = $PractitionerRole#speciallaegeipraksis
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:643bc39c-53ce-436a-b5b2-2211fba8f901"
* organization = Reference(101f0d1a-9186-4a48-8594-8c06db5745f1)

Instance: d9d5d579-b838-47cc-b5e9-64445fb3a1be
InstanceOf: MedComDocumentPractitioner
Title: "Practitioner"
Description: "Instance of a practitioner"
Usage: #example
* meta.profile = $CorePractitioner
* name.given = "Kamilla"
* name.family = "Rost"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a7f3ebc8-70ec-4fb6-91a1-e2ae7c6e1c53"

Instance: 99961ccb-df8c-4f43-970a-7b5ef8ff6a11
InstanceOf: MedComNotesObservation
Title: "Observation"
Description: "Observation Journalnote"
Usage: #example
* meta.profile = $NotesObservation
* identifier.system = "urn:ietf:rfc:3986" 
* identifier.value = "urn:uuid:c3f3d8aa-e15c-49c8-b61f-e1d0386f2f2b" 
* status = $ObsStatusCodeSystem#final
* code.coding[SNOMEDCT].system = $sct
* code.coding[SNOMEDCT].code = #866144008
* code.coding[SNOMEDCT].display = "Encounter note"
* subject = Reference(2075515c-57bf-457c-a8b4-bbe13fb34715)
* effectiveDateTime = "2026-06-01T08:56:00+02:00"
* performer[organization] = Reference(a53d4d96-c8af-4302-9640-7b38bc9f30e6)
* performer[practitionerRole] = Reference(a2be903a-d346-4d0e-abd4-efb088471fd3)
* performer[practitioner] = Reference(d9d5d579-b838-47cc-b5e9-64445fb3a1be)
* extension[valueAttachment].url = $MedComObsExtValueAttachment
* extension[valueAttachment].valueAttachment.contentType = #text/html
* extension[valueAttachment].valueAttachment.data = "PHg6cD5QYXRpZW50ZW4gbcO4ZGVyIGkga2xpbmlra2VuIHRpbCBvcGbDuGxnbmluZyBlZnRlciBub2dsZSB1Z2VycyB0aWx0YWdlbmRlIHRyw6Z0aGVkIG9nIG5lZHNhdCBvdmVyc2t1ZCBpIGh2ZXJkYWdlbi4gUGF0aWVudGVuIG9wbHlzZXIsIGF0IGVuZXJnaW5pdmVhdWV0IGVyIGxhdmVyZSBlbmQgdmFubGlndCwgb2cgYXQgZGVyIGlzw6ZyIHNpZHN0IHDDpSBkYWdlbiBvcGxldmVzIGJlaG92IGZvciBodmlsZS4gRGVydWRvdmVyIGJlc2tyaXZlcyBsZXQgc3ZpbW1lbGhlZCB2ZWQgaHVydGlnZSBzdGlsbGluZ3Nza2lmdCwgbWVuIGluZ2VuIGVnZW50bGlnZSBiZXN2aW1lbHNlci48L3g6cD4NCjx4OnA+PHg6Yj48eDplbT5Ba3R1ZWx0PC94OmVtPjwveDpiPjx4OmJyLz4NCiAgICBQYXRpZW50ZW4gZm9ydMOmbGxlciBvbSBsZXR0ZXJlIG5lZHNhdCBhcHBldGl0LCBtZW4gaW5nZW4ga3ZhbG1lIGVsbGVyIG9wa2FzdG5pbmcuIERlciBoYXIgaWtrZSB2w6ZyZXQgZmViZXIsIGhvc3RlIGVsbGVyIHbDpmd0dGFiLiBTw7h2bmVuIGVyIHBlcmlvZGV2aXMgdXJvbGlnLCBvZyBwYXRpZW50ZW4gZsO4bGVyIHNpZyBpa2tlIGZ1bGR0IHVkaHZpbGV0IG9tIG1vcmdlbmVuLiA8eDppPkRlciBlciBpbmdlbiBicnlzdHNtZXJ0ZXIgZWxsZXIgw6VuZGVuw7hkLjwveDppPjx4OmJyLz4NCiAgICBQYXRpZW50ZW4gb3BsZXZlciBmb3J0c2F0IGF0IGt1bm5lIGtsYXJlIGRhZ2xpZ2UgZ8O4cmVtw6VsLCBtZW4gaSBldCBsYXZlcmUgdGVtcG8gZW5kIHZhbmxpZ3QuDQo8L3g6cD4NCjx4OnA+PHg6Yj48eDplbT5PYmpla3RpdnQ8L3g6ZW0+PC94OmI+PHg6YnIvPg0KICAgIFbDpWdlbiwga2xhciBvZyB1cMOldmlya2V0IGkgYWxtZW50aWxzdGFuZGVuLiBCbG9kdHJ5ayAxMzIvNzggb2cgcHVscyA3MiwgcmVnZWxtw6Zzc2lnLjx4OmJyLz4NCiAgICBDb3Igb2cgcHVsbSB1ZGVuIHNpa3JlIHBhdG9sb2dpc2tlIGZ1bmQuIEFiZG9tZW4gYmzDuGR0IG9nIHXDuG10LiA8eDpiPkluZ2VuIMO4ZGVtZXIgcMOlIHVuZGVyZWtzdHJlbWl0ZXRlcm5lLjwveDpiPjx4OmJyLz4NCiAgICBJbmdlbiBrbGluaXNrZSB0ZWduIHDDpSBha3V0IHN5Z2RvbSB2ZWQgZGFnZW5zIGtvbnN1bHRhdGlvbi4NCjwveDpwPg0KPHg6cD48eDpiPjx4OmVtPlZ1cmRlcmluZzwveDplbT48L3g6Yj48eDpici8+DQogICAgU3ltcHRvbWVybmUgdnVyZGVyZXMgc2FtbGV0IHNvbSA8eDppPnVzcGVjaWZpa2tlPC94Omk+IG9nIHVkZW4gYWt0dWVsbGUgYWxhcm1zeW1wdG9tZXIuIERlciBmaW5kZXMgZG9nIGJlaG92IGZvciBuw6ZybWVyZSBhZmtsYXJpbmcgYWYgw6Vyc2FnZW4gdGlsIHRyw6Z0aGVkIG9nIHN2aW1tZWxoZWQuPHg6YnIvPg0KICAgIDx4OmI+QmxvZHByw7h2ZXIgcGxhbmzDpmdnZXM8L3g6Yj4gbWVkIGhlbmJsaWsgcMOlIHZ1cmRlcmluZyBhZiBibGFuZHQgYW5kZXQgaMOmbW9nbG9iaW4sIGluZmVrdGlvbnN0YWwgb2cgc3RvZnNraWZ0ZS4gPHg6Yj48eDppPlBhdGllbnRlbiBpbmZvcm1lcmV0IG9tIHZ1cmRlcmluZyBvZyBwbGFuLjwveDppPjwveDpiPg0KPC94OnA+DQo8eDpwPjx4OmI+PHg6ZW0+UGxhbjwveDplbT48L3g6Yj48eDpici8+DQogICAgRGVyIGJlc3RpbGxlcyByZWxldmFudGUgYmxvZHByw7h2ZXIsIG9nIGRlciBhZnRhbGVzIG9wZsO4bGduaW5nLCBuw6VyIHN2YXIgZm9yZWxpZ2dlci4gUGF0aWVudGVuIHLDpWRlcyB0aWwgYXQgc2lrcmUgdsOmc2tlaW5kdGFnIG9nIHJlanNlIHNpZyByb2xpZ3QgZnJhIHNpZGRlbmRlIG9nIGxpZ2dlbmRlIHN0aWxsaW5nLjx4OmJyLz4NCiAgICBQYXRpZW50ZW4gYmVkZXMga29udGFrdGUga2xpbmlra2VuIHZlZCA8eDpiPmZvcnbDpnJyaW5nIGkgc3ltcHRvbWVyPC94OmI+LCB0aWx0YWdlbmRlIHN2aW1tZWxoZWQgZWxsZXIgbnlvcHN0w6VlZGUgZ2VuZXIuIDx4OmI+PHg6aT5Ba3V0IGzDpmdlbGlnIHZ1cmRlcmluZyBhbmJlZmFsZXMgdmVkIGJyeXN0c21lcnRlciwgw6VuZGVuw7hkIGVsbGVyIHDDpXZpcmtldCBhbG1lbnRpbHN0YW5kLjwveDppPjwveDpiPg0KPC94OnA+"

/*Notat: 
<x:p>Patienten møder i klinikken til opfølgning efter nogle ugers tiltagende træthed og nedsat overskud i hverdagen. Patienten oplyser, at energiniveauet er lavere end vanligt, og at der især sidst på dagen opleves behov for hvile. Derudover beskrives let svimmelhed ved hurtige stillingsskift, men ingen egentlige besvimelser.</x:p>
<x:p><x:b><x:em>Aktuelt</x:em></x:b><x:br/>
    Patienten fortæller om lettere nedsat appetit, men ingen kvalme eller opkastning. Der har ikke været feber, hoste eller vægttab. Søvnen er periodevis urolig, og patienten føler sig ikke fuldt udhvilet om morgenen. <x:i>Der er ingen brystsmerter eller åndenød.</x:i><x:br/>
    Patienten oplever fortsat at kunne klare daglige gøremål, men i et lavere tempo end vanligt.
</x:p>
<x:p><x:b><x:em>Objektivt</x:em></x:b><x:br/>
    Vågen, klar og upåvirket i almentilstanden. Blodtryk 132/78 og puls 72, regelmæssig.<x:br/>
    Cor og pulm uden sikre patologiske fund. Abdomen blødt og uømt. <x:b>Ingen ødemer på underekstremiteterne.</x:b><x:br/>
    Ingen kliniske tegn på akut sygdom ved dagens konsultation.
</x:p>
<x:p><x:b><x:em>Vurdering</x:em></x:b><x:br/>
    Symptomerne vurderes samlet som <x:i>uspecifikke</x:i> og uden aktuelle alarmsymptomer. Der findes dog behov for nærmere afklaring af årsagen til træthed og svimmelhed.<x:br/>
    <x:b>Blodprøver planlægges</x:b> med henblik på vurdering af blandt andet hæmoglobin, infektionstal og stofskifte. <x:b><x:i>Patienten informeret om vurdering og plan.</x:i></x:b>
</x:p>
<x:p><x:b><x:em>Plan</x:em></x:b><x:br/>
    Der bestilles relevante blodprøver, og der aftales opfølgning, når svar foreligger. Patienten rådes til at sikre væskeindtag og rejse sig roligt fra siddende og liggende stilling.<x:br/>
    Patienten bedes kontakte klinikken ved <x:b>forværring i symptomer</x:b>, tiltagende svimmelhed eller nyopståede gener. <x:b><x:i>Akut lægelig vurdering anbefales ved brystsmerter, åndenød eller påvirket almentilstand.</x:i></x:b>
</x:p>
*/