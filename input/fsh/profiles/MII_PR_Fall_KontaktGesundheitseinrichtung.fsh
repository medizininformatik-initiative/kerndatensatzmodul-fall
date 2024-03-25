Profile: MII_PR_Fall_KontaktGesundheitseinrichtung
Parent: Encounter
Id: mii-pr-fall-kontakt-gesundheitseinrichtung
Title: "MII PR Fall Kontakt mit einer Gesundheitseinrichtung"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"
* insert PR_CS_VS_Version
* obeys mii-enc-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* extension contains $ExtensionAufnahmegrund named Aufnahmegrund 0..1 MS
* extension[Aufnahmegrund].extension[ErsteUndZweiteStelle] MS
* extension[Aufnahmegrund].extension[DritteStelle] MS
* extension[Aufnahmegrund].extension[VierteStelle] MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains Aufnahmenummer 0..1 MS
* identifier[Aufnahmenummer] ^patternIdentifier.type = $v2-0203#VN
* identifier[Aufnahmenummer].type 1.. MS
* identifier[Aufnahmenummer].type from mii-vs-fall-identifier-type-codes (extensible)
* identifier[Aufnahmenummer].type = $v2-0203#VN
* identifier[Aufnahmenummer].type.coding ^slicing.discriminator.type = #pattern
* identifier[Aufnahmenummer].type.coding ^slicing.discriminator.path = "$this"
* identifier[Aufnahmenummer].type.coding ^slicing.rules = #open
* identifier[Aufnahmenummer].type.coding contains vn-type 1..1 MS
* identifier[Aufnahmenummer].type.coding[vn-type] = $v2-0203#VN
* identifier[Aufnahmenummer].type.coding[vn-type].system 1.. MS
* identifier[Aufnahmenummer].type.coding[vn-type].code 1.. MS
* identifier[Aufnahmenummer].system 1.. MS
* identifier[Aufnahmenummer].value 1.. MS
* status MS
* status from $EncounterStatusDe (required)
* class MS
* class from $EncounterClassDE (required)
* type MS
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type contains
    Kontaktebene 0..1 MS and
    KontaktArt 0..1 MS
* type[Kontaktebene] from $kontaktebene-de (required)
* type[Kontaktebene] ^patternCodeableConcept.coding.system = "http://fhir.de/CodeSystem/Kontaktebene"
* type[Kontaktebene] ^binding.description = "Kontaktebene"
* type[KontaktArt] from $kontaktart-de (required)
* type[KontaktArt] ^patternCodeableConcept.coding.system = "http://fhir.de/CodeSystem/kontaktart-de"
* serviceType MS
* serviceType.coding MS
* serviceType.coding ^slicing.discriminator.type = #pattern
* serviceType.coding ^slicing.discriminator.path = "$this"
* serviceType.coding ^slicing.rules = #open
* serviceType.coding contains 
    Fachabteilungsschluessel 0..1 MS and 
    ErweiterterFachabteilungsschluessel 0..1 MS
* serviceType.coding[Fachabteilungsschluessel] from $FachabteilungsschluesselVS (required)
* serviceType.coding[Fachabteilungsschluessel] ^patternCoding.system = "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel"
* serviceType.coding[Fachabteilungsschluessel].system 1.. MS
* serviceType.coding[Fachabteilungsschluessel].code 1.. MS
* serviceType.coding[ErweiterterFachabteilungsschluessel] from $FachabteilungsschluesselVS (required)
* serviceType.coding[ErweiterterFachabteilungsschluessel] ^patternCoding.system = "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel-erweitert"
* serviceType.coding[ErweiterterFachabteilungsschluessel].system 1.. MS
* serviceType.coding[ErweiterterFachabteilungsschluessel].code 1.. MS
* subject 1.. MS
* subject only $MII-Reference
* period 1.. MS
* period.start 1.. MS
* period.end MS
* diagnosis MS
* diagnosis.condition 1.. MS
* diagnosis.condition only $MII-Reference
* diagnosis.use 1.. MS
* diagnosis.use ^binding.strength = #extensible
* diagnosis.rank MS
* hospitalization MS
* hospitalization.admitSource 1.. MS
* hospitalization.admitSource from $AufnahmeanlassVS (preferred)
* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition.extension contains $EntlassungsgrundExt named Entlassungsgrund 0..1 MS
* location MS
  * physicalType from mii-vs-fall-location-physical-type (extensible)
* location ^slicing.discriminator.type = #pattern
* location ^slicing.discriminator.path = "physicalType"
* location ^slicing.rules = #open
* location contains  Zimmer 0..1 MS and Bett 0..1 MS and Station 0..1 MS
* location[Station]
  * location 1.. MS
    * identifier 1.. MS
    * display 1.. MS
  * physicalType 1..1 MS
  * physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#wa
* location[Zimmer]
  * location 1.. MS
    * identifier 1.. MS
    * display 1.. MS
  * physicalType 1..1 MS
  * physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#ro
* location[Bett]
  * location 1.. MS
    * identifier 1.. MS
    * display 1.. MS
  * physicalType 1..1 MS
  * physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bd
* serviceProvider MS
* partOf MS