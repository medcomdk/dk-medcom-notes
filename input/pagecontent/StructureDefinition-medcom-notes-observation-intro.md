# MedCom Notes Observation
This page describes how the MedComNotesObservation profile is intended to be used within the MedCom Notes standard.

This profile specifies how the Observation represents the note from the general practitioner using a dedicated extension. It also specifies how other information must be applied, such as the metadata related to the attachment, as well as coding and references to the patient and performing organization or practitioner. Read more about this in the following paragrafs.

## Consultation Note
This Observation contains a FHIR extension designed to hold the note. The note must be encoded in Base64 and the mimetype must be `text/html` to describe the content. The `valueAttachment` element is implemented as an extension as the base `value[x]` element does not support the `Attachment` type in FHIR R4. The extension also captures essential metadata for the attachment; the MIME type and the title.

The note is represented in the Observation resource in `extension:valueAttachment`, as described above. This also means that the note content is base64-encoded. The formatting of the content follows the same conventions as defined in the [MedCom FNUX standard](https://svn.medcom.dk/svn/releases/Standarder/FNUX/Dokumentation/SimplifiedHTML-specifikation.pdf). This means that line breaks, bold, italics, underline, and monospaced text are supported, and these may be combined.  

## Notes date and time
The `effectiveDateTime` element is a mandatory element used to represent the date and time the note was created and **SHALL** be provided as a dateTime. 

## Required code
The element `code` describes what was observed. This code is for Shared Notes fixed to code.coding:SNOMEDCT.code: `866144008` system: `http://www.snomed.org/` display: `Encounter note`.

## Author
A reference to the author of the note is included in the element `performer`. The authoring organization **MUST** be included. If information about the healthcare professional and his/her role is available this should be included in the profile MedComDocumentPractitionerRole with a reference to MedComDocumentPractitioner, holding the name of the practitioner.

## Resource references
This Observation references the `Patient` resource through the `subject` element and the author `Organization`, `Practitioner`, or `PractitionerRole` through the `performer` element.