Profile: MedComNotesObservation
Parent: MedComDocumentObservation
Id: medcom-notes-observation
Title: "MedComNotesObservation"
Description: "Observation profile intended to be used in MedCom's Notes standard."
* status = #final 
* status ^short = "Status MUST be final." 
* effective[x] only dateTime
* effective[x] 1..1 MS
* effective[x] ^short = "The time the note was written"
* effectiveDateTime MS
* effectiveDateTime ^short = "The time the note was written (Da: Oprettelsestidspunkt for notatet)"
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
* extension[valueAttachment].valueAttachment.data ^short = "Base64-encoded content of the EKG recording PDF/A document."
* extension[valueAttachment].valueAttachment.contentType 1..1 MS
* extension[valueAttachment].valueAttachment.contentType = #text/html (exactly)
* extension[valueAttachment].valueAttachment.contentType ^short = "MIME type of the attached EKG recording."
* extension[valueAttachment].valueAttachment.title 1..1 MS
* extension[valueAttachment].valueAttachment.title ^short = "Either the title of the note written by the responsible or 'Journalnotat'."


