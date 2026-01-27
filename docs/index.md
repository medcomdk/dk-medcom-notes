<!-- HomePage -->
# MedCom Shared Notes
<!-- below is the table of content. Ensure to update it. -->
**Table of Content**
* [1 Standard Documentation](#standard)
  * [1.1 Clinical Guidelines for application](#11-clinical-guidelines-for-application)
  * [1.2 Use Cases](#12-use-cases)
  * [1.3 Technical specification](#13-technical-specification)
* [2 Test and Certification](#2-test-and-certification)


This page presents MedCom’s Shared Notes standard (Danish: Deling af journalnotater).
The purpose of the standard is to enable the secure and structured sharing of notes (Da: journalnotater) from general practitioners’ systems (LPS). The Shared Notes standard supports the exchange of personally identifiable health information and ensures that notes can be accessed consistently and safely across sectors. The standard contributes to better care coordination and continuity by giving authorized healthcare professionals access to up-to-date documentation from general practice.

The Notes standard is implemented as a FHIR Document and shared over the National Service Platform (NSP) in Denmark. A simple illustration of the flow of data is depicted in <a href="#Fig1">Figure 1</a>. A short description of the flow follows: 
1. The general practitioner documents the consultation by authoring a note, which may include relevant assessments, observations, and decisions.
2. The note is made available for sharing through the national healthcare infrastructure in accordance with applicable authorization and access rules.  
3. Another healthcare professional with the appropriate authorization requests access to the shared note.  
4. A document containing the journal note is retrieved and made available, allowing the healthcare professional to review the clinical documentation from the consultation.

<figure>
<img src="assets/Images/SharedNotes-pixi.png" alt="Illustrates the flow of data when a Note is created and requested." style="width:40%" id="Fig1">
<figcaption text-align = "center"><b>Figure 1 illustrates the flow of data when a Note is created and requested.</b></figcaption>
</figure>



## 1 Standard Documentation {#standard}
On the project page for <a href="INDSÆT LINK" target="_blank">Shared notes on NSPOP</a>, the following documentation can be found: 
  * Overall purpose of the standard
  * Logical information and data models
  * Business rules
  * Technical guide for implementation of the Shared Notes standard.

On this page, provided by MedCom, additional information on how to implement the standard Shared Notes:
  * User stories
  * Use cases
  * Technical Specifications in terms of the relevant Implementation Guide (IG).
  * Mapping from logical data model to Shared Notes
  * Test and certification
<p>&nbsp;</p>

### 1.1 User Stories
A user story is an informal, general description of a systems functionality as perceived from the user's perspective. User stories have the end user at the centre of the dialogue about system functionality. User stories describe which needs the end user wants fulfilled, so that the developer understands the context of the development task: why they are developing the function and what value it must provide the end user. Not all user stories will be supported with this current implementation, which is noted for the specific user story.

[User stories (pdf)](assets/documents/UserStories_SharedNotes.pdf) <br>  

### 1.2 Use Cases

Use cases describe the different scenarios a standard support. For a certain real-world scenario, it describes the requirements for the content of a document. The purpose of the use cases is to ensure a coherent implementation and use of the Shared Notes standard. The descriptions are targeted IT-system vendors and the people responsible for the implementation in regions and municipalities.

[Use cases (pdf)](assets/documents/UseCases_SharedNotes.pdf) <br>

### 1.3 Technical specification
The technical specification for the Shared Notes standard is composed by profiles from two IGs.
* <a href="http://medcomfhir.dk/ig/document|2.0.0" target="_blank">MedCom Document</a>, which provides the overall document structure and base requirements
* <a href="http://medcomfhir.dk/ig/notes|1.0.0" target="_blank">MedCom Shared Notes</a>, which provides the requirements specific for the use of the Shared Notes standard.

[Click here to read an introduction to the technical specifications can be found here.](assets/documents/Intro-Technical-Spec-ENG.md)

### 1.4 Mapping from OIOXML to FHIR
Short description concerning the previous OIOXML standard that is replaced by STANDARDNAME. 
The document is intended to help translate the previous standard to the new FHIR standard.Furthermore, not all elements from the FHIR elements are represented in the document; thus, it cannot stand alone for implementation. 

## 2 Test and Certification
Certification of a system implies both an approved testprotocol and run-through of test scripts in ITB (Interoperability Test Bed). ITB describes an infrastructure that allows for automated test and validation against the IG's developed by MedCom. 

 [Click here to find the description of test and certification of FHIR standards in MedCom.](https://medcom.github.io/GitHubPagesTest/#test-and-certification). 

**Sending a STANDARDNAME message**
  * Testprotocol
  * ITB Testscripts
<p>&nbsp;</p>
 
**Receiving a STANDARDNAME message**
  * Testprotocol
<p>&nbsp;</p>
