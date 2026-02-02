Profile: MedComNotesObservation
Parent: MedComDocumentObservation
Id: medcom-notes-observation
Title: "MedComNotesObservation"
Description: "Observation profile intended to be used in MedCom's Notes standard."
* status = #final 
* status ^short = "Status MUST be final." 
* effective[x] only dateTime
* effective[x] 1..1 MS
* effective[x] ^short = "Date and time the note was created"
* effectiveDateTime MS
* effectiveDateTime ^short = "Date and time the note was created (Da: Oprettelsestidspunkt for notatet)"
* effectiveDateTime obeys medcom-datetime-has-time-offset-zulu
* code.coding[LOINC] 1..1 MS
* code.coding[LOINC].code MS
* code.coding[LOINC].code = #11488-4 (exactly)
* code.coding[LOINC].display 1.. MS
* code.coding[LOINC].display = "Consult note" (exactly)
* code.coding[LOINC].system MS
* extension[valueAttachment].url MS
* extension[valueAttachment] 1..1 MS
* extension[valueAttachment].valueAttachment 1..1 MS
* extension[valueAttachment].valueAttachment.data 1..1 MS
* extension[valueAttachment].valueAttachment.data ^short = "Base64-encoded content of the note (Da: journalnotatet)"
* extension[valueAttachment].valueAttachment.contentType 1..1 MS
* extension[valueAttachment].valueAttachment.contentType = #application/xhtml+xml (exactly)
* extension[valueAttachment].valueAttachment.contentType ^short = "MIME type of the note"
* extension[valueAttachment].valueAttachment.title 1..1 MS
* extension[valueAttachment].valueAttachment.title ^short = "Either the title of the note written by the responsible or a generic title e.g. 'Journalnotat'."
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* performer ..1
* performer only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole)


* insert ProducerShallPutInNarrative(effectiveDateTime)
* insert ProducerShallPutInNarrative(code.coding[LOINC].code)
* insert ProducerShallPutInNarrative(code.coding[LOINC].display)
* insert ProducerShallPutInNarrative(code.coding[LOINC].system)
* insert ProducerShallPutInNarrative(extension[valueAttachment].valueAttachment.contentType)
* insert ProducerShallPutInNarrative(extension[valueAttachment].valueAttachment.title)