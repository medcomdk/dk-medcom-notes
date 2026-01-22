# MedCom Notes Observation
This page describes how the **MedCom Notes Observation** profile is intended to be used within the MedCom Notes standard.

## Purpose of the Profile
This profile specifies how the Observation represents the note from the gerneal practitioner using a dedicated extension. It also specifies how the related attachment metadata, and how the required LOINC coding and references to the patient and performing organization or practitioner must be applied. Read more about this in the following paragrafs.

## Use of the valueAttachment Extension
This Observation contains a FHIR extension designed to hold the note as a xhtml+xml file encoded in Base64. The `valueAttachment` element is implemented as an extension as the base `value[x]` element does not support the `Attachment` type in FHIR R4. The extension also captures essential metadata for the attachment - the MIME type and the title.

The note is represented in the Composition resource in valueAttachment, as described above. This also means that the note content is base64-encoded. The formatting of the content follows the same conventions as defined in the [MedCom FNUX standard](https://svn.medcom.dk/svn/releases/Standarder/FNUX/Dokumentation/SimplifiedHTML-specifikation.pdf). This means that line breaks, bold, italics, underline, and monospaced text are supported, and these may be combined.  

## Title
It is possible for practitioners authoring the notes to include a title for the note. The title is profiled as mandatory and **SHALL** be populated in `value[attachment].title`.

Although it is not mandatory for practitioners to provide a title in their clinical system, a value **MUST** be provided in `value[attachment].title`. If no title is entered in the clinical system, the value *"Journalnotat"* **MUST** be used instead.

## Notes date and time
The `effectiveDateTime` element is a mandatory element used to represent the time the note was created and **SHALL** be provided as a dateTime. 

## Required LOINC coding
This Observation contains the fixed code:

- code.coding:LOINC: code: `11488-4` system: `http://loinc.org` display: `Consult Note`.

## Resource references
This Observation references the `Patient` resource through the `subject` element and the author `Organization`, `Practitioner`, or `PractitionerRole` through the `performer` element.