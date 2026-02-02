# MedCom Notes Bundle

The MedComNotesBundle profile describes the Bundle resource that shall be used in all documents exchanged as Shared Notes. MedComNotesBundle inherits from [MedComDocumentBundle](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-bundle.html), and is the container for the content in a document. 

As this profile is the used in a document, the element type shall always be ‘document’. This entails that the first resource in the entry element shall be a MedComNotesComposition, which can be found in the slicing on Bundle.entry.

The `Bundle.timestamp` **MUST** be the time of the assemblement of the Bundle.