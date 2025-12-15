Profile: MedComDocumentObservation
Parent: MedComCoreObservation
Id: medcom-document-observation
Title: "MedComDocumentObservation"
Description: "[TEMPORARY] Observation profile to be used in MedCom FHIR Documents."
* identifier 1..1 MS 
* identifier.value 1..1 MS
* identifier.system 1..1 MS 
* identifier ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data."
* subject only Reference(MedComDocumentPatient)
* performer only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole or MedComDocumentPatient or DkCoreRelatedPerson)

Profile: MedComObservationValueAttachmentExtension
Parent: Extension
Id: medcom-observation-value-attachment-extension
Title: "MedCom Observation ValueAttachment Extension"
Description: "[TEMPORARY] Generic extension for Observation value as Attachment type."

// Canonical URL for extensionen
* ^url = "http://medcomfhir.dk/ig/core/StructureDefinition/medcom-observation-value-attachment-extension"
* ^status = #active

// Hvor extensionen må bruges
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[+].type = #element
* ^context[=].expression = "Observation.extension"
* . ^short = "Observation value as attachment."
* url 1..1
* url = "http://medcomfhir.dk/ig/core/StructureDefinition/medcom-observation-value-attachment-extension" (exactly)
* value[x] only Attachment