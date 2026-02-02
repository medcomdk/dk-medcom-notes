# MedCom Notes Composition

This page describes how the **MedCom Notes Composition** profile is intended to be used within the MedCom Notes standard.

The MedComNotesComposition profile defines the structure and narrative content necessary for a document. However, a Composition alone does not constitute a document. Rather, the Composition must be the first entry in a Bundle where Bundle.type is 'document', and any other resources referenced from Composition must be included as subsequent entries in the Bundle.entry element. The Composition resource organizes clinical and administrative content into sections, each of which contains a narrative, and references other resources.

The `Composition.section.entry` element **MUST** reference the MedComNotesObservation that contains the note from the healtcare provider e.g. general practitioner. As there is only supposed to be one note in each document, it is only allowed to reference one MedComNotesObservation. 

The `Composition.title` **MUST** be (in Danish) "Journalnotat for '**CPR-nummer**'", where 'CPR-nummer' is the actual identifier for the patient (Patient.identifier.value).

The `Composition.type` is fixed to the LOINC code "11488-4 Consult note", as it represents the content of the document on a high level.


## Timestamps
The `Composition.date` **MUST**  be the last update date of the note performed by the patient's healthcare provider e.g. general practitioner must be included (Da: dato og tid for seneste opdatering af notatet). 