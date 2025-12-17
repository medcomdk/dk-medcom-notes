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
* value[x]
* extension contains 
        MedComObservationValueAttachmentExtension named valueAttachment 1..1
* extension[valueAttachment] 1..1 MS
* extension[valueAttachment].valueAttachment 1..1 MS
* extension[valueAttachment].valueAttachment.data 1..1 MS
* extension[valueAttachment].valueAttachment.data ^short = "Base64-encoded content of the note (Da: journalnotatet)"
* extension[valueAttachment].valueAttachment.contentType 1..1 MS
* extension[valueAttachment].valueAttachment.contentType = #application/xhtml+xml (exactly)
* extension[valueAttachment].valueAttachment.contentType ^short = "MIME type of the note (Da: journalnotat)"
* extension[valueAttachment].valueAttachment.title 1..1 MS
* extension[valueAttachment].valueAttachment.title ^short = "Either the title of the note written by the responsible or 'Journalnotat'."
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* performer ..1
* performer only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole) //SKS: Skal det mon kun være person specifikt eller skal det også kunne være en organization? Det kan vel ikke være et careteam?
