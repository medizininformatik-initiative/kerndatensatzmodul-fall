CodeSystem: MII_CS_Fall_SupplementActEncounterCode
Id: mii-cs-fall-supplement-act-encounter-code
Description: "CodeSystem Supplement für ActEncounterCode"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/CodeSystem/SupplementActEncounterCode"
* insert PR_CS_VS_Version
* ^experimental = false
* insert Publisher
* ^caseSensitive = true
* ^supplements = "http://terminology.hl7.org/ValueSet/v3-ActEncounterCode"
* ^content = #supplement
* #AMB "ambulatory" "Umfasst ambulante Operationen nach § 115b SGB V und eine ambulante spezialfachärztliche Versorgung nach § 116b SGB V"
* #AMB ^designation.language = #de-DE
* #AMB ^designation.value = "teilstationäre Behandlung"
* #EMER "emergency"
* #EMER ^designation.language = #de-DE
* #EMER ^designation.value = "Notfall"
* #IMB "inpatient encounter"
* #IMB ^designation.language = #de-DE
* #IMB ^designation.value = "stationär"