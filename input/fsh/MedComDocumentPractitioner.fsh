Profile: MedComDocumentPractitioner
Parent: MedComCorePractitioner
Id: medcom-document-practitioner
Description: "[TEMPORARY] A profile including requirements for a MedCom Document Practitioner"
* identifier 1..1 MS 
* identifier.value 1..1 MS 
* identifier.system 1..1 MS
* identifier ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data." 
* name 1..
* name.given 1.. MS
* name.family 1.. MS