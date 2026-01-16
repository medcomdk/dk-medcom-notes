Profile: MedComNotesComposition
Parent: MedComDocumentComposition
Id: medcom-notes-composition
Description: "A profile for the MedCom Notes Composition resource."
* type.coding.system = $Loinc (exactly)
* type.coding.code = #11488-4 (exactly)
* type.coding.display = "Consult note" (exactly)
* date ^short = "Last update of the note (Da: Sidste opdatering af notatet)"
* title ^short = "Title MUST be 'Journalnotat for **CPR-nummer**'" 
* meta.profile obeys medcom-canonical-fixed-major
* meta.profile ^short = "[DocumentEntry.formatCode] The profile canonical SHALL include the major and minor version of the standard in the form `|x.y`."
* author only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole)
* author[institution] only Reference(MedComDocumentOrganization)

* category 1.. // SKS: i EKG er de endt med at have denne med, profileret som her. Var det noget med metadata?
* category.coding.system = $ClassCodeCS
* category.coding.code = #001
* category.coding.display = "Klinisk rapport"

* section 1..1 //SKS: der må kun være et journalnotat pr. dokument, er dette så den rette måde at udtrykke det på?
* section.entry 1..1 MS 
* section.entry only Reference(MedComNotesObservation)
* confidentiality = #N (exactly)
* status = http://hl7.org/fhir/composition-status#final
* language = #da (exactly)

