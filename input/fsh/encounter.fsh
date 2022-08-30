Profile: SD_MII_Fall_KontaktGesundheitseinrichtung
Parent: Encounter
Id: sd-mii-fall-kontaktgesundheitseinrichtung
Title: "Medizininformatik-Initative - StructureDefinition - Kontakt mit einer Gesundheitseinrichtung"
// * ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"
// * ^version = "2.0.0"
// * ^status = #active
* obeys mii-enc-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* . ^constraint.source = $MII-Encounter
* id MS
* meta MS
  * source MS
  * profile MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains $Aufnahmegrund named Aufnahmegrund 0..1 MS
* extension[Aufnahmegrund]
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension[ErsteUndZweiteStelle] ^sliceName = "ErsteUndZweiteStelle"
  * extension[ErsteUndZweiteStelle] ^mustSupport = true
  * extension[DritteStelle] ^sliceName = "DritteStelle"
  * extension[DritteStelle] ^mustSupport = true
  * extension[VierteStelle] ^sliceName = "VierteStelle"
  * extension[VierteStelle] ^mustSupport = true
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains Aufnahmenummer 0..1 MS
* identifier[Aufnahmenummer] 
  * ^patternIdentifier.type = $CS-V2-0203#VN
  * type 1.. MS
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains vn-type 1..1 MS
    * coding[vn-type] = $CS-V2-0203#VN
    * coding[vn-type].system 1.. MS
    * coding[vn-type].code 1.. MS
  * system 1.. MS
  * value 1.. MS
* status MS
* status from $VSEncounterStatus (required)
* status ^short = "planned | in-progress | onleave | finished | cancelled +"
* status ^definition = "planned | in-progress | onleave | finished | cancelled +"
* class MS
* class from $VSEncounterClass (required)
* type MS
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type contains
    Kontaktebene 1..1 MS and
    Kontaktart 0..1 MS
* type[Kontaktebene] from $VSKontaktebene (required)
  * ^patternCodeableConcept.coding.system = $CSKontaktebene
  * ^binding.description = "Kontaktebene"
* type[Kontaktart] from $VSKontaktart (required)
  * ^patternCodeableConcept.coding.system = $CSKontaktart
  * ^binding.description = "Kontaktart"
* serviceType MS
  * coding 1..* MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains Fachabteilungsschluessel 0..1 MS
           and ErweiterterFachabteilungsschluessel 0..1 MS
  * coding[Fachabteilungsschluessel] from $VSFachabteilungsschluessel (required)
    * ^patternCoding.system = $CSFachabteilungsschluessel
    * system 1.. MS
    * code 1.. MS
  * coding[ErweiterterFachabteilungsschluessel] from $VSFachabteilungsschluesselErweitert (required)
    * ^patternCoding.system = $CSFachabteilungsschluesselErweitert
    * system 1.. MS
    * code 1.. MS
* subject 1.. MS
* subject only $MII-Reference
* period 1.. MS
  * start 1.. MS
  * end MS
* diagnosis MS
  * condition 1.. MS
  * condition only $MII-Reference
  * use 1.. MS
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding ^slicing.ordered = false
    * coding contains DiagnoseTyp 1..1 MS
             and DiagnoseSubtyp 0..* MS
    * coding[DiagnoseTyp] from $VSDiagnoseTyp (required)
    * coding[DiagnoseSubtyp] from $VSDiagnoseSubtyp (required)
  * rank MS
* account MS
  * reference MS
  * identifier MS
* hospitalization MS
  * admitSource 1.. MS
  * admitSource from $VSAufnahmeanlass (preferred)
  * dischargeDisposition MS
    * extension ^slicing.discriminator.type = #value
    * extension ^slicing.discriminator.path = "url"
    * extension ^slicing.rules = #open
    * extension contains $Entlassungsgrund named Entlassungsgrund 0..1 MS
* location MS
* serviceProvider MS
* partOf MS

Invariant: mii-enc-1
Description: "Falls der Encounter abgeschlossen wurde muss ein Enddatum bekannt sein"
Severity: #error
Expression: "status = 'finished' implies period.end.exists()"

// TODO: Examples
Instance: ex-mii-fall-kontaktgesundheitseinrichtung-abteilungskontakt
InstanceOf: sd-mii-fall-kontaktgesundheitseinrichtung
Usage: #example
Title: "EX MII Fall KontaktGesundheitseinrichtung Abteilungskontakt"
Description: "Beispiel für Abteilungskontakt"
* id = "28436186-b5b3-4881-b000-8a89abf659b7"
* meta.profile[+] = $MII-Encounter
* extension[Aufnahmegrund]
  * extension[ErsteUndZweiteStelle]
    * valueCoding = $CSAufnahmegrundErsteUndZweiteStelle#01 "Krankenhausbehandlung, vollstationär"
  * extension[DritteStelle]
    * valueCoding = $CSAufnamegrundDritteStelle#0 "Anderes"
  * extension[VierteStelle]
    * valueCoding = $CSAufnahmegrundVierteStelle#1 "Normalfall"
* identifier[+]
  * type
    * coding[+] = $CS-V2-0203#VN
  * system = "http://medizininformatik-initiative.de/fhir/NamingSystem/Aufnahmenummer/MusterKrankenhaus"
  * value = "F_0000001"
* status = #finished
* class = $CS-V3-ActCode#IMP
* type[Kontaktebene]
  * coding = $CSKontaktebene#abteilungskontakt
* type[Kontaktart]
  * coding = $CSKontaktart#operation
* serviceType
  * coding[Fachabteilungsschluessel] = $CSFachabteilungsschluessel#0100 "Innere Medizin"
* subject.reference = "Patient/P_0000000"
* period  
  * start = "2020-11-02T03:00:00+00:00"
  * end = "2020-11-02T03:59:59+00:00"
* diagnosis[+]
  * condition.reference = "Condition/D_0000001"
  * use
    * coding[DiagnoseTyp] = $CSKontaktDiagnoseProzedur#treatment-diagnosis "Behandlungsrelevante Diagnosen"
* hospitalization
  * admitSource
    * coding = $CSAufnahmeanlass#E "Einweisung durch einen Arzt"
* serviceProvider
  * identifier
    * system = "http://medizininformatik-initiative.de/fhir/NamingSystem/Abteilungsidentifikator/MusterKrankenhaus"
    * value = "1500_ACHI"


