Profile: MII_PR_Fall_KontaktGesundheitseinrichtung
Parent: Encounter
Id: mii-pr-fall-kontakt-gesundheitseinrichtung
Title: "MII PR Fall Kontakt mit einer Gesundheitseinrichtung"
Description: "Kontakt zu einer Einrichtung, Abteilung oder Versorgungsstelle"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"
* insert PR_CS_VS_Version
* obeys mii-enc-1 and mii-enc-2 and mii-enc-3 and mii-enc-4 and mii-enc-5 and mii-enc-6 and mii-enc-7
* ^date = "2024-07-12"
* id MS
* id ^definition = "Angabe OPTIONAL, vom Server automatisch vergebene system-abhängige ID"
* meta MS
* meta ^definition = "Angabe OPTIONAL zur Provenance und zum Profil"
* meta.source MS
* meta.profile MS
* extension contains $ExtensionAufnahmegrund named Aufnahmegrund 0..1 MS and
  http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedStartDate named plannedStartDate 0..1 and 
  http://hl7.org/fhir/5.0/StructureDefinition/extension-Encounter.plannedEndDate named plannedEndDate 0..1
* extension[Aufnahmegrund] ^short = "Aufnahmegrund"
* extension[Aufnahmegrund] ^definition = """
    OPTIONAL, Aufnahmegrund entsprechend Schlüssel 1 der Anlage 2 der Datenübermittlung nach § 301 Abs. 3 SGB V
    """
* extension[Aufnahmegrund].extension[ErsteUndZweiteStelle] MS
* extension[Aufnahmegrund].extension[ErsteUndZweiteStelle] ^definition = """
    OPTIONAL, Aufnahmegrund (1. und 2. Stelle), Datenübermittlung nach § 301 Abs. 3 SGB V.
    """
* extension[Aufnahmegrund].extension[DritteStelle] MS
* extension[Aufnahmegrund].extension[DritteStelle] ^definition = """
    OPTIONAL, Aufnahmegrund (3. Stelle), Datenübermittlung nach § 301 Abs. 3 SGB V.
    """
* extension[Aufnahmegrund].extension[VierteStelle] MS
* extension[Aufnahmegrund].extension[VierteStelle] ^definition = """
    OPTIONAL, Aufnahmegrund (4. Stelle), Datenübermittlung nach § 301 Abs. 3 SGB V.
    """
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains Aufnahmenummer 0..1 MS
* identifier[Aufnahmenummer] ^short = "Aufnahmenummer"
* identifier[Aufnahmenummer] ^definition = """
    OPTIONAL, Aufnahmenummer/Fallnummer, die Patient:innen bei der Planung einer Aufnahme oder bei der Aufnahme selbst bekommt. 
    Generell SOLLTE die Aufnahmenummer in allen Encounter-Ressourcen unabhängig von der Kontaktebene und dem Kontakttyp angegeben werden. 
    Als Gründe würden dagegen sprechen, wenn die Aufnahmenummer nur in einem Encounter der Encounter-Hierarchie angegeben werden kann. 
    In diesem Fall SOLL auf die korrekte Encounter-Verlinkung über .partOf geachtet werden, 
    sowie dass jeder Encounter einen eigenständigen Identifier mit unterschiedlichen Systemen enthält.
    """
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
* status ^definition = """
    VERPFLICHTEND, required Binding auf http://fhir.de/ValueSet/EncounterStatusDe
    """
* status from $EncounterStatusDe (required)
* class MS
* class ^short = "Kontaktklasse"
* class ^definition = """
    VERPFLICHTEND, Kontaktklasse. Required Binding auf http://fhir.de/ValueSet/EncounterClassDE. 
    Klassifizierung des Kontaktes in stationär, ambulant, teilstationär oder andere.
    """
* class from $EncounterClassDE (required)
* type MS
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type contains
    Kontaktebene 0..1 MS and
    KontaktArt 0..1 MS
* type[Kontaktebene] ^short = "Kontaktebene"
* type[Kontaktebene] ^definition = """
    OPTIONAL, Unterscheidung der Kontakt-Hierarchieebenen Einrichtungskontakt, Abteilungskontakt, Versorgungsstellenkontakt. 
    Die Gliederung gilt für stationäre Kontakte. Required Binding auf http://fhir.de/ValueSet/kontaktebene-de"""
* type[Kontaktebene] from $kontaktebene-de (required)
* type[Kontaktebene] ^patternCodeableConcept.coding.system = "http://fhir.de/CodeSystem/Kontaktebene"
* type[Kontaktebene] ^binding.description = "Kontaktebene"
* type[KontaktArt] ^short = "Kontaktart"
* type[KontaktArt] ^definition = """
    OPTIONAL, Differenzierung zwischen verschiedenen Arten von Kontakten (z.B. vorstationär, nachstationär, intensivstationär). 
    Required Binding auf http://fhir.de/ValueSet/kontaktart-de
    """
* type[KontaktArt] from $kontaktart-de (required)
* type[KontaktArt] ^patternCodeableConcept.coding.system = "http://fhir.de/CodeSystem/kontaktart-de"
* serviceType MS
* serviceType ^short = "Fachabteilung"
* serviceType ^definition = """
    Die Fachdisziplin bzw. Fachabteilung wird durch einen vierstelligen Fachabteilungsschlüssel klassifiziert.
    """
* serviceType.coding MS
* serviceType.coding ^slicing.discriminator.type = #pattern
* serviceType.coding ^slicing.discriminator.path = "$this"
* serviceType.coding ^slicing.rules = #open
* serviceType.coding contains 
    Fachabteilungsschluessel 0..1 MS and 
    ErweiterterFachabteilungsschluessel 0..1 MS
* serviceType.coding[Fachabteilungsschluessel] ^short = "Fachabteilungsschlüssel"
* serviceType.coding[Fachabteilungsschluessel] ^definition = """
    OPTIONAL, required Binding auf http://fhir.de/ValueSet/dkgev/Fachabteilungsschluessel
    Fachabteilungen gemäß Anhang 1 der BPflV in der am 31.12.2003 geltenden Fassung
    """
* serviceType.coding[Fachabteilungsschluessel] from $FachabteilungsschluesselVS (required)
* serviceType.coding[Fachabteilungsschluessel] ^patternCoding.system = "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel"
* serviceType.coding[Fachabteilungsschluessel].system 1.. MS
* serviceType.coding[Fachabteilungsschluessel].code 1.. MS
* serviceType.coding[ErweiterterFachabteilungsschluessel] ^short = "Erweiterter Fachabteilungsschlüssel"
* serviceType.coding[ErweiterterFachabteilungsschluessel] ^definition = """
    OPTIONAL, required Binding auf http://fhir.de/ValueSet/dkgev/Fachabteilungsschluessel-erweitert
    Fachabteilungen gemäß Anhang 1 der BPflV in der am 31.12.2003 geltenden Fassung inkl. Spezialisierungen.
    """
* serviceType.coding[ErweiterterFachabteilungsschluessel] from $FachabteilungsschluesselVS (required)
* serviceType.coding[ErweiterterFachabteilungsschluessel] ^patternCoding.system = "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel-erweitert"
* serviceType.coding[ErweiterterFachabteilungsschluessel].system 1.. MS
* serviceType.coding[ErweiterterFachabteilungsschluessel].code 1.. MS
* subject 1.. MS
* subject ^short = "Patientenidentifikator"
* subject ^definition = "VERPFLICHTEND, Referenz auf Patient:in."
//* subject only $MII-Reference
* period 0..1 MS
* period ^short = "Zeitraum des Kontaktes"
* period ^definition = """Beginn- und Endzeitpunkt des Kontaktes. 
    DARF NICHT vorhanden sein, kann OPTIONAL oder VERPFLICHTEND sein, 
    abhängig vom Status des Kontaktes - siehe Invarianten auf Ebene Encounter.
    """
* period.start MS
* period.start ^short = "Beginndatum"
* period.start ^definition = """
    Start des Kontaktzeitraums. DARF NICHT vorhanden sein, kann OPTIONAL oder VERPFLICHTEND sein, 
    abhängig vom Status des Kontaktes - siehe Invarianten auf Ebene Encounter.
    """
* period.end MS
* period.end ^short = "Enddatum"
* period.end ^definition = """
    Ende des Kontaktzeitraums. DARF NICHT vorhanden sein, kann OPTIONAL oder VERPFLICHTEND sein, 
    abhängig vom Status des Kontaktes - siehe Invarianten auf Ebene Encounter.
    """
* diagnosis MS
* diagnosis ^short = "Diagnosen"
* diagnosis ^definition = "OPTIONAL, Angaben zu Diagnosen"
* diagnosis.condition 1.. MS
* diagnosis.condition ^short = "Referenz zu Diagnose-Ressource"
* diagnosis.condition ^definition = """
    VERPFLICHTEND, wenn Diagnosedaten angegeben werden, dann MUSS diese referenziert werden. 
    Es SOLLTE nur die Primärdiagnose referenziert werden.
    """
* diagnosis.use 1.. MS
* diagnosis.use ^short = "Diagnosetyp"
* diagnosis.use ^definition = """
        Attribute wie Aufnahme- oder Entlassdiagnose sind immer im Kontext eines stationären Aufenthaltes zu betrachten
        und werden daher als Eigenschaft des Encounters modelliert. 
        VERPFLICHTEND mindestens die Angabe eines Codings. EMPFOHLEN ist die Angabe mittels Diagnosetyp- und DiagnosesubTyp-Coding. 
        Weitere Codings OPTIONAL. Extensible Binding auf `http://hl7.org/fhir/ValueSet/diagnosis-role`
        """
* diagnosis.use ^binding.strength = #extensible
* diagnosis.use.coding 1.. MS
* diagnosis.use.coding ^slicing.discriminator.type = #pattern
* diagnosis.use.coding ^slicing.discriminator.path = "$this"
* diagnosis.use.coding ^slicing.rules = #open
* diagnosis.use.coding contains 
      Diagnosetyp 0..1 MS and 
      DiagnosesubTyp 0..1 MS
* diagnosis.use.coding[Diagnosetyp] from $DiagnoseTyp (required)
* diagnosis.use.coding[Diagnosetyp] ^short = "Diagnosetyp"
* diagnosis.use.coding[Diagnosetyp] ^definition = "Einweisungs-/Überweisungsdiagnose | Behandlungsrelevante Diagnosen"
* diagnosis.use.coding[DiagnosesubTyp] from $Diagnosesubtyp (required)
* diagnosis.use.coding[DiagnosesubTyp] ^short = "Diagnosesubtyp"
* diagnosis.use.coding[DiagnosesubTyp] ^definition = "Operationsdiagnose | Abteilung Hauptdiagnose | Todesursache | Infektionsschutzdiagnose +"
* diagnosis.rank MS
* diagnosis.rank ^short = "Rangfolge"
* diagnosis.rank ^definition = "OPTIONAL, Rangfolge der Diagnose"
* hospitalization MS
* hospitalization ^short = "Klinikaufenthalt"
* hospitalization ^definition = "OPTIONAL, Details zur Aufnahme und Entlassung"
* hospitalization.admitSource 1.. MS
* hospitalization.admitSource ^short = "Aufnahmeanlass"
* hospitalization.admitSource ^definition = """
        VERPFLICHTEND, Aufnahmeanlass. Preferred Binding auf http://fhir.de/ValueSet/dgkev/Aufnahmeanlass
        """
* hospitalization.admitSource from $AufnahmeanlassVS (preferred)
* hospitalization.dischargeDisposition MS
* hospitalization.dischargeDisposition ^short = "Entlassung"
* hospitalization.dischargeDisposition ^definition = "OPTIONAL Daten zur Entlassung"
* hospitalization.dischargeDisposition.extension contains $EntlassungsgrundExt named Entlassungsgrund 0..1 MS
* hospitalization.dischargeDisposition.extension[Entlassungsgrund] ^short = "Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund] ^definition = """
        OPTIONAL, Entlassungs-/Verlegungsgrund nach § 301 Abs. 3 SGB V
        """
* location MS
* location ^short = "Kontaktort"
* location ^definition = "OPTIONAL, Details zum Kontaktort wie Zimmer, Bett, Station"
  * physicalType from mii-vs-fall-location-physical-type (extensible)
  * physicalType ^short = "Kontaktorttyp"
  * physicalType ^definition = """
        SOLL, extensible Binding auf https://www.medizininformatik-initiative.de/fhir/core/modul-fall/ValueSet/location-physical-type
        """
* location ^slicing.discriminator.type = #pattern
* location ^slicing.discriminator.path = "physicalType"
* location ^slicing.rules = #open
* location contains  Zimmer 0..1 MS and Bett 0..1 MS and Station 0..1 MS
* location[Station]
* location[Station] ^short = "Station"
* location[Station] ^definition = "Die Station, auf welcher der Patient oder die Patientin während des Kontaktes behandelt wurde."
  * location 1.. MS
    * identifier 1.. MS
    * display 1.. MS
  * physicalType 1..1 MS
  * physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#wa
* location[Zimmer]
* location[Zimmer] ^short = "Zimmer"
* location[Zimmer] ^definition = "Von Patient oder Patientin während des Kontaktes belegtes Zimmer auf einer Station."
  * location 1.. MS
    * identifier 1.. MS
    * display 1.. MS
  * physicalType 1..1 MS
  * physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#ro
* location[Bett]
* location[Bett] ^short = "Bett"
* location[Bett] ^definition = "Von Patient oder Patientin während des Kontaktes belegter Bettenstellplatz."
  * location 1.. MS
    * identifier 1.. MS
    * display 1.. MS
  * physicalType 1..1 MS
  * physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bd
* serviceProvider MS
* serviceProvider ^short = "Leistungserbringer"
* serviceProvider ^definition = """
        OPTIONAL. Leistungserbringer, der für den Kontakt verantwortlich ist. 
        Referenz auf eine Organisation
        """
* partOf MS
* partOf ^short = "Teil von Kontakt"
* partOf ^definition = """
        OPTIONAL. Abbildung der Hierarchie zwischen Kontaktebenen durch Referenz auf weitere Kontakte, 
        wenn bspw. ein Versorgungsstellenkontakt Teil eines Abteilungskontaktes 
        oder ein Abteilungskontakt Teil eines Einrichtungskontaktes ist.
        """