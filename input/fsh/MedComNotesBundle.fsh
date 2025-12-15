Profile: MedComNotesBundle
Parent: MedComDocumentBundle
Id: medcom-notes-bundle
Description: "A profile for a MedCom Notes Document Bundle."
* entry 1..* MS
* entry.resource 1..1 MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this.resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the resource type"
* entry contains 
    medcom-notes-composition 1..1 MS
* entry[medcom-notes-composition] ^short = "The first entry is the MedCom Notes Composition resource"
* entry[medcom-notes-composition].resource only MedComNotesComposition