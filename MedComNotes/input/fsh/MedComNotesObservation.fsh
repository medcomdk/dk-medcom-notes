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
* effectiveDateTime obeys medcom-datetime-has-time-offset-zulu // SKS: skal vi have invarianten med som de har i EKG?
* code.coding[LOINC] 1..1 MS
* code.coding[LOINC].code MS
* code.coding[LOINC].code = #11488-4 (exactly)
* code.coding[LOINC].display 1.. MS
* code.coding[LOINC].display = "Consultation Note" (exactly)
* code.coding[LOINC].system MS
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* performer ..1
* performer only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole) //SKS: Skal det mon kun være person specifikt eller skal det også kunne være en organization? Det kan vel ikke være et careteam?
* performer ^Short = "The performer of the note (Da: Ansvarelig for notatet)"
* extension[valueAttachment].url MS
* extension[valueAttachment] 1..1 MS
* extension[valueAttachment].valueAttachment 1..1 MS
* extension[valueAttachment].valueAttachment.data 1..1 MS
* extension[valueAttachment].valueAttachment.data ^short = "The Note as a Base64 encoded string."
* extension[valueAttachment].valueAttachment.contentType 1..1 MS
* extension[valueAttachment].valueAttachment.contentType = #text/plain (exactly) //SKS: jeg er i tvivl om dette er rigtigt
* extension[valueAttachment].valueAttachment.contentType ^short = "MIME type of the note."
* extension[valueAttachment].valueAttachment.title 1..1 MS
* extension[valueAttachment].valueAttachment.title ^short = "Title MUST be 'Journalnotat for **CPR-nummer**', if it is not available from the originatng system."
