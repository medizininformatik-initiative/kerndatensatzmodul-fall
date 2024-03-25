Instance: mii-exa-fall-kontakt-gesundheitseinrichtung-2
InstanceOf: mii-pr-fall-kontakt-gesundheitseinrichtung
Usage: #example
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