Instance: mii-exa-fall-kontakt-gesundheitseinrichtung-2
InstanceOf: mii-pr-fall-kontakt-gesundheitseinrichtung
Usage: #example
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.0"
* identifier.type = $v2-0203#VN
* identifier.system = "http://medizininformatik-initiative.de/fhir/NamingSystem/Aufnahmenummer/MusterKrankenhaus"
* identifier.value = "F_0000001"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* type[Kontaktebene] = $Kontaktebene#abteilungskontakt "Abteilungskontakt"
* serviceType.coding[Fachabteilungsschluessel] = $Fachabteilungsschluessel#0100 "Innere Medizin"
* subject.reference = "Patient/P_0000000"
* period.start = "2020-11-02T03:00:00+00:00"
* period.end = "2020-11-02T03:59:59+00:00"
* diagnosis.condition.reference = "Condition/D_0000001"
* diagnosis.use.coding[Diagnosetyp] = $KontaktDiagnoseProzedur#treatment-diagnosis "Behandlungsrelevante Diagnosen"
* diagnosis.use.coding[DiagnosesubTyp] = $KontaktDiagnoseProzedur#department-main-diagnosis "Abteilung Hauptdiagnose"
* serviceProvider.identifier.system = "http://medizininformatik-initiative.de/fhir/NamingSystem/Abteilungsidentifikator/MusterKrankenhaus"
* serviceProvider.identifier.value = "1500_ACHI"
* location[Zimmer].location.identifier.system = "https://www.charite.de/fhir/sid/Zimmernummern"
* location[Zimmer].location.identifier.value = "RHC-06-210b"
* location[Zimmer].location.display = "RHC-06-210b"
* location[Zimmer].physicalType = $location-physical-type#ro
* location[Bett].location.identifier.system = "https://www.charite.de/fhir/sid/Bettennummern"
* location[Bett].location.identifier.value = "RHC-06-210b-02"
* location[Bett].location.display = "RHC-06-210b-02"
* location[Bett].physicalType = $location-physical-type#bd
* location[Station].location.identifier.system = "https://www.charite.de/fhir/sid/Stationsnummern"
* location[Station].location.identifier.value = "RHC-06"
* location[Station].location.display = "RHC-06"
* location[Station].physicalType = $location-physical-type#wa