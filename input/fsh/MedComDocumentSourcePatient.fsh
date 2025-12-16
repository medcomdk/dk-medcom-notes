/* Profile: MedComDocumentPatient
Parent: MedComCorePatient
Id: medcom-document-patient
Description: "[TEMPORARY] A profile including requirements for a MedCom Document Patient."
* id MS
* text MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* text MS
* identifier 1..1 MS
* identifier[cpr] ^short = "Unique identification number for all citizens in Denmark, called civil person register (CPR-number)."
* identifier[cpr] 1..1 MS
* identifier[cpr].value 1..1 MS SU
* identifier[cpr].system 1..1 MS
* name 1..1 MS
* name[official] 1..1 MS
* name[official].given 1.. MS SU
* name[official].family 1.. MS SU
* birthDate 1.. MS
* gender 1.. MS
 */