## {{page-title}}

**Version: 2024.0.1**

Datum: 17.04.2024

- Korrektur der Version-Parameter der Conformance-Ressourcen. Im zuvor veröffentlichten Package entsprach `StructureDefinition.version` nicht einheitlich der Package-Version. Siehe: https://github.com/medizininformatik-initiative/kerndatensatzmodul-fall/issues/51

---

**Version: 2024.0.0**

Datum: 28.03.2024

- Die veröffentlichten FHIR-Packages verwenden nun [Calender Versioning (CalVer)](https://calver.org/) nach dem Schema YYYY.MINOR.PATCH. Damit wird ein Releasezyklus im Jahresrhythmus etabliert. Die Jahresversion (YYYY) zeigt das Jahr an, in dem das Kerndatensatzmodul angewendet wird. MINOR-Versionen werden bei Einführung neuer Funktionen, Erweiterungen oder substantieller Änderungen veröffentlicht. PATCH-Versionen umfassen Bugfixes oder textuelle Korrekturen.
- Die Benennung der Conformance-Ressourcen und Beispielinstanzen folgt nun einheitlichen [MII-Namenskonventionen](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Namenskonventionen-f%C3%BCr-FHIR%E2%80%90Ressourcen-in-der-MII).
- Die {{pagelink: FHIRProfile, text: Anforderungsdokumentation, hint: Anforderungsdokumentation}} verwendet nun Schlüsselwörter nach [RFC-2119](https://datatracker.ietf.org/doc/html/rfc2119).
- Änderung der Dependency von [Version 0.9.13](https://simplifier.net/packages/de.basisprofil.r4/0.9.13) auf [Version 1.4.0](https://simplifier.net/packages/de.basisprofil.r4/1.4.0) der FHIR Basisprofile von HL7 Deutschland.
- Beim Wechsel von Modul Fall Version 1.0 auf die Version 2.0 (2024.0.0) dieses Moduls sind folgende substantielle Änderungen im Profil {{pagelink: KontaktGesundheitseinrichtungEncounter, text: Encounter (Kontakt Gesundheitseinrichtung), hint: MII_PR_Fall_KontaktGesundheitseinrichtung}} zu beachten:
    - Der Aufnahmegrund wurde in Version 1.0 unter ~~`Encounter.reasonCode`~~ angegeben. Neu ist die Erfassung des Aufnahmegrundes per [Extension aus den deutschen FHIR Basisprofilen](https://simplifier.net/packages/de.basisprofil.r4/1.4.0/files/656695) im Element `Encounter.extension:Aufnahmegrund`.
    - Das ValueSet-Binding auf dem Element `Encounter.identifier.type` für die Aufnahmenummer um den Code [v2-0203#VN](https://simplifier.net/resolve?scope=hl7.fhir.r4.core@4.0.1&filepath=package/CodeSystem-v2-0203.json) erweitert.
    - Unter `Encounter.location` befindet sich nun eine Vorgabe, wie Angaben zu den Aufenthaltsorten Zimmer, Bett und Station OPTIONAL abgebildet werden können.
    - In Version 1.0 war `Encounter.diagnosis.use` OPTIONAL zu verwenden bei Angabe einer Diagnose. Neu ab dieser Version ist die Aufteilung von `Encounter.diagnosis.use.coding` in Diagnosetyp und DiagnosesubTyp, von denen mindestens einer vorhanden sein MUSS.
    - In Version 1.0 enthielt `Encounter.serviceType` lediglich eine Vorgabe für den Fachabteilungsschlüssel. Dieser wurde in dieser Version um den Erweiterten-Fachabteilungsschlüssel ergänzt.