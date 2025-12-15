Profile: MedComNotesComposition
Parent: MedComDocumentComposition
Id: medcom-notes-composition
Description: "A profile for the MedCom Notes Composition resource."
* type.coding.system = $Loinc (exactly)
* type.coding.code = #11488-4 (exactly)
* type.coding.display = "Consultation Note" (exactly)
* date ^short = "Last update of the note (Da: Sidste opdatering af notatet)"
* title ^short = "Title MUST be 'Journalnotat for **CPR-nummer**'"
* author only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole) //SKS: Det kan vel ikke være et careteam?
* author[institution] only Reference(MedComDocumentOrganization)

* category.coding.system = $ClassCodeCS // SKS: jeg er i tvivl om disse tre til category skal med når den i metadata står som findes ikke i dokument i aktuelle version?
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"

* section.entry 1..1 MS //SKS: der må kun være et journalnotat pr. dokument, er dette så den rette måde at udtrykke det på?
* section.entry only Reference(MedComNotesObservation)
* confidentiality = #N (exactly)
* status = http://hl7.org/fhir/composition-status#final
* language = #da (exactly)

