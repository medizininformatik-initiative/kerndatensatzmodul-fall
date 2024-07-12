Instance: mii-exa-fall-kontakt-gesundheitseinrichtung-3
InstanceOf: mii-pr-fall-kontakt-gesundheitseinrichtung
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung)
* extension[plannedStartDate].valueDateTime = "2024-07-12"
* extension[plannedEndDate].valueDateTime = "2024-07-17"
* status = #planned
* class = $v3-ActCode#IMP "inpatient encounter"
* subject.reference = "Patient/mii-exa-test-data-patient-1"