### Introduction

This implementation guide (IG) is provided by MedCom to describe the use of FHIR &reg;&copy; Shared Notes (Da: Deling af Journalnotater) in document based exchange of data in Danish healthcare.

This IG contains profiles supporting the MedCom document Shared Notes. The purpose of sharing notes is to make the notes from a healthcare provider - at first the general practice - available to relevant healthcare actors, thereby supporting continuity of care and providing insight into clinically relevant assessments, observations, and decisions documented by the general practitioner. 

More information about the project [Shared Notes from General Practice](https://medcomdk.github.io/dk-medcom-notes/) can be found here.

The MedCom document Shared Notes will be exchanged via the National Service Platform (NSP) using the Document Sharing Service (DDS), which is already used for national sharing of healthcare documents. Each document must contain only one note and related information, therefore will the system requesting the notes receive multiple document if the patient has been to multiple consultations e.g. at the general practitioner.

The FHIR standard will ensure consistent structuring of metadata and clinically relevant information, enabling Shared Notes to be searched, interpreted, and used correctly by receiving systems, clinicians and patiens.

#### Shared Notes
The structure of the Shared Notes document is depicted in the following diagram:

<figure>
<img alt="Shows the general MedCom Notes document model. Each document must at least contain the following resources: Bundle, Composition, Organization, Patient, Practitioner, PractitionerRole and Observation." src="./DocumentModel.png" style="float:none; display:block; margin-left:auto; margin-right:auto;" />
<figcaption text-align="center"><b>Figure 1: Overview of the references between profiles in the MedCom Shared Notes standard </b></figcaption>
</figure>

The Shared Notes IG follows the [general MedCom FHIR Document model](https://medcomfhir.dk/ig/document/index.html#general-document-model). This includes the resources Bundle, Composition, Organization, Patient and if relevant Practitioner. To hold information about the patient's Notes, the resource Observation is also included.

#### Profiles
The following sections describe the overall purpose of each profile.

##### MedComNotesBundle
[MedComNotesBundle](./StructureDefinition-medcom-notes-bundle.html) is used as the Bundle profile for the standard. This profiles inheritsfrom [MedComDocumentBundle](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-bundle.html). The Bundle profile acts as the container for all included resources and they must all be referenced from the Bundle.entry element, which is illustrated in the [examples](examples.html). 

##### MedComNotesComposition
[MedComNotesComposition](./StructureDefinition-medcom-notes-composition.html) creates the structure of the document. It is specifically designed for structuring patients' Notes, inheriting from [MedComDocumentComposition](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-composition.html). The key differences are: the Composition.type is fixed to "Consult note" to standardize the document type; the Composition.title must be the following in Danish: "Journalnotat for 'CPR-nummer'"; and the Composition.section.entry is restricted to reference [MedComNotesObservation](./StructureDefinition-medcom-notes-observation.html). 

##### MedComNotesObservation
[MedComNotesObservation](./StructureDefinition-medcom-notes-observation.html) is the profile that specifies the note in the document. It inherits from [MedComDocumentObservation](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-observation.html) and further restricts the profile, for example is valueattachment specified to only include the data as xhtml+xml, which is where the note will be included. 

##### MedComDocumentPatient
[MedComDocumentPatient](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-patient.html) describes the basic requirements for information about citizens and patients when exchanging a document. The profile inherits from [MedComCorePatient](https://medcomfhir.dk/ig/core/4.0.0/StructureDefinition-medcom-core-patient.html) and further limit the requirements, e.g. may documents only be exchanged for patients with a CPR-number. It is not allowed to add a replacement-CPR (Danish: erstatningsCPR), as this is not supported in the infrastructure.

##### MedComDocumentOrganization
[MedComDocumentOrganization](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-organization.html) is a profile representing Danish healthcare organizations that acts as the author institution in FHIR Documents. The profile inherits from [MedComCoreOrganization](https://medcomfhir.dk/ig/core/4.0.0/StructureDefinition-medcom-core-organization.html).

##### MedComDocumentPractitionerRole
[MedComDocumentPractitionerRole](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-practitionerrole.html) represents the role of the health care professional that acts as the author person. The profile inherits from [MedComCorePractitionerRole](https://medcomfhir.dk/ig/core/4.0.0/StructureDefinition-medcom-core-practitionerrole.html)

##### MedComDocumentPractitioner
[MedComDocumentPractitioner](https://medcomfhir.dk/ig/document/2.0.0/StructureDefinition-medcom-document-practitioner.html) represents the health care professional that acts as the author person. The profile inherits from [MedComCorePractitioner](https://medcomfhir.dk/ig/core/4.0.0/StructureDefinition-medcom-core-practitioner.html) and further requires a given and family name to be present. 


#### Timestamps
A Shared Notes document includes several timestamps. These timestamps are present in the profiles MedComNotesBundle, MedComNotesComposition and MedComNotesObservation. They have different purposes:
* Bundle.timestamp: Represents the time the bundle was assembled. This timestamp must be included.
* Composition.date: The last update date of the note performed by the patient's general practitioner must be included (Da: dato og tid for seneste opdatering af notatet).
* Observation.effectiveDatetime: Date and time the note was created (Da: Oprettelsestidspunkt for notatet)

If the Composition.date and Observation.effectiveDatetime are similar, this represents that the note has not been updated after it was generated. If the two timestamps are different, this represents that the note has been updated after it was generated.

#### Examples
The [examples page](examples.html) different examples of the Shared Notes standard. Each example is accompanied by a short description of the example.

#### Terminology
On [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced CodeSystem and ValueSets developed by MedCom can be found.