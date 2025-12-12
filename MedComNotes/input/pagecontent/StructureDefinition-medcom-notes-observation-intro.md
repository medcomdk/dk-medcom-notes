# MedCom Notes Observation
This page describes how the **MedCom Notes Observation** profile is intended to be used within the MedCom Notes standard.

## Purpose of the Profile
This profile specifies how the Observation represents the....

## Use of the valueAttachment Extension
This Observation contains a FHIR extension designed to hold the Note encoded in Base64. The `valueAttachment` element is implemented as an extension because the base `value[x]` element does not support the `Attachment` type. The extension also captures essential metadata for the attachment - the MIME type and the title.


## Notes date and time


## Required LOINC coding
This Observation contains the fixed code:

- code.coding:LOINC: code: `11488-4` system: `http://loinc.org` display: `Consultation Note`.

## Resource references
This Observation references the `Patient` resource through the `subject` element and the author `Organization` through the `performer` element.




