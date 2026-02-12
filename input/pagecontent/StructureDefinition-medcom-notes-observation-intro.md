# MedCom Notes Observation
This page describes how the MedComNotesObservation profile is intended to be used within the MedCom Notes standard.

This profile specifies how the Observation represents the note from the general practitioner using a dedicated extension. It also specifies how other information must be applied, such as the metadata related to the attachment, as well as coding and references to the patient and performing organization or practitioner. Read more about this in the following paragrafs.

## Consultation Note
This Observation contains a FHIR extension designed to hold the note. The note must be encoded in Base64 and the mimetype must be `xhtml+xml` to describe the content. The `valueAttachment` element is implemented as an extension as the base `value[x]` element does not support the `Attachment` type in FHIR R4. The extension also captures essential metadata for the attachment; the MIME type and the title.

The note is represented in the Observation resource in `extension:valueAttachment`, as described above. This also means that the note content is base64-encoded. The formatting of the content follows the same conventions as defined in the [MedCom FNUX standard](https://svn.medcom.dk/svn/releases/Standarder/FNUX/Dokumentation/SimplifiedHTML-specifikation.pdf). This means that line breaks, bold, italics, underline, and monospaced text are supported, and these may be combined.  

## Title
It is possible for practitioners authoring the notes to include a self-written title for the note. The title is profiled as mandatory and **SHALL** be populated in `extension:valueAttachment.value.title`.

Although it is not mandatory for practitioners to provide a title in their clinical system, a value **MUST** be provided in `extension:valueAttachment.value.title`. If no title is entered in the clinical system, a generic description of the content **MUST** be used instead, e.g. *"Journalnotat"*.

## Notes date and time
The `effectiveDateTime` element is a mandatory element used to represent the date and time the note was created and **SHALL** be provided as a dateTime. 

## Required LOINC coding
The element `code` describes what was observed. This code is for Shared Notes fixed to code.coding:LOINC.code: `11488-4` system: `http://loinc.org` display: `Consult Note`.

## Author
A reference to the author of the note is included in the element `performer`. The authoring organization **MUST** be included. If information about the healthcare professional and his/her role is available this should be included in the profile MedComDocumentPractitionerRole with a reference to MedComDocumentPractitioner, holding the name of the practitioner.

## Resource references
This Observation references the `Patient` resource through the `subject` element and the author `Organization`, `Practitioner`, or `PractitionerRole` through the `performer` element.