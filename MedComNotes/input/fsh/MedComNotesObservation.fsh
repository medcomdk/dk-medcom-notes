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