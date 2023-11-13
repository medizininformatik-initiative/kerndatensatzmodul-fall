Instance: mii-sp-fall-encounter-servicetype
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/Encounter-servicetype"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fall_Encounter_ServiceType"
* status = #active
* experimental = false
* date = "2023-11-10"
* description = "Suchparameter für Encounter.serviceType"
* code = #service-type
* base = #Encounter 
* type = #token
* expression = "Encounter.serviceType"

Instance: mii-sp-fall-encounter-diagnosis-use
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/Encounter-diagnosis-use"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fall_Encounter_DiagnosisUse"
* status = #active
* experimental = false
* date = "2023-11-10"
* description = "Suchparameter für Encounter.diagnosis.use"
* code = #diagnosis-use
* base = #Encounter 
* type = #token
* expression = "Encounter.diagnosis.use"

Instance: mii-sp-fall-encounter-hospitalization-admitsource
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/Encounter-hospitalization-admitSource"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fall_Encounter_Hospitalization_AdmitSource"
* status = #active
* experimental = false
* date = "2023-11-10"
* description = "Suchparameter für Encounter.hospitalization.admitSource"
* code = #hospitalization-admitsource
* base = #Encounter 
* type = #token
* expression = "Encounter.hospitalization.admitSource"

Instance: mii-sp-fall-encounter-hospitalization-discharge-reason-12
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/Encounter-hospitalization-dischargeReason-12"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fall_Encounter_Hospitalization_DischargeReason12"
* status = #active
* experimental = false
* date = "2023-11-10"
* description = "Suchparameter für erste und zweite Stelle von Encounter.hospitalization.dischargeDisposition.extension:Entlassungsgrund"
* code = #hospitalization-discharge-reason-12
* base = #Encounter 
* type = #token
* expression = "Encounter.hospitalization.dischargeDisposition.extension('http://fhir.de/StructureDefinition/Entlassungsgrund').extension('ErsteUndZweiteStelle').value.ofType(Coding)"

Instance: mii-sp-fall-encounter-hospitalization-discharge-reason-3
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/Encounter-hospitalization-dischargeReason-3"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fall_Encounter_Hospitalization_DischargeReason3"
* status = #active
* experimental = false
* date = "2023-11-10"
* description = "Suchparameter für dritte Stelle von Encounter.hospitalization.dischargeDisposition.extension:Entlassungsgrund"
* code = #hospitalization-discharge-reason-3
* base = #Encounter 
* type = #token
* expression = "Encounter.hospitalization.dischargeDisposition.extension('http://fhir.de/StructureDefinition/Entlassungsgrund').extension('DritteStelle').value.ofType(Coding)"

Instance: mii-sp-fall-encounter-hospitalization-discharge-reason
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/Encounter-hospitalization-dischargeReason"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fall_Encounter_Hospitalization_DischargeReason"
* status = #active
* experimental = false
* date = "2023-11-10"
* description = "Suchparameter für Encounter.hospitalization.dischargeDisposition.extension:Entlassungsgrund"
* code = #hospitalization-discharge-reason
* base = #Encounter
* type = #composite
* expression = "Encounter.hospitalization.dischargeDisposition.extension('http://fhir.de/StructureDefinition/Entlassungsgrund').extension.value"
* component[0].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/encounter-hospitalization-dischargeReason-12"
* component[=].expression = "first-second"
* component[+].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/encounter-hospitalization-dischargeReason-3"
* component[=].expression = "third"

Instance: mii-sp-fall-encounter-location-physical-type
InstanceOf: SearchParameter
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/SearchParameter/Encounter-location-physicalType"
* insert SP_Publisher
* insert Version
* name = "MII_SP_Fall_Encounter_Location_PhysicalType"
* status = #active
* experimental = false
* date = "2023-11-10"
* description = "Suchparameter für Encounter.location.physicalType"
* code = #location-physical-type
* base = #Encounter 
* type = #token
* expression = "Encounter.location.physicalType"
