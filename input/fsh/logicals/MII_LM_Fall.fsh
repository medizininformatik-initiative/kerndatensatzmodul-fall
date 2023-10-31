Logical: MII_LM_Fall
Parent: Element
Id: mii-lm-fall
Description: "Logische Repräsentation des Basismoduls Fall"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/LogicalModel/Fall"
* insert PR_CS_VS_Version
* Einrichtungskontakt 0..* BackboneElement "Beschreibt den Kontakt zur Einrichtung, bestimmt durch den Behandlungsvertrag."
* Einrichtungskontakt.KontaktEbene 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Für die Unterscheidung der Kontakt-Hierarchieebenen im Modul FALL werden folgende Ausprägungen unterschieden:\r\n\r\n1. Einrichtungskontakt\r\n\r\n2. Abteilungskontakt\r\n\r\n3. Versorgungsstellenkontakt\r\n\r\nDiese Gliederung gilt zunächst für stationäre Kontakte (siehe Kontakt-Klasse). Die Übertragung auf ambulante und teilstationäre Kontakte muss noch abgestimmt werden."
* Einrichtungskontakt.KontaktKlasse 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Auf Einrichtungsebene, also auf der Kontakt-Ebene Einrichtungskontakt, kann die Kontakt-Klasse stationär, ambulant oder teilstationär sein."
* Einrichtungskontakt.KontaktArt 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Differenzierung zwischen verschiedenen Arten von Kontakten (z.B. vorstationär, nachstationär, intensivstationär)"
* Einrichtungskontakt.PatientenIdentifikator 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Bei der internen Nutzung dient die sogenannte Patientennummer als Identifikator. Diese wird bei der ersten Aufnahme in die Einrichtung parallel zur ersten Fallnummer (Aufnahmenummer) vergeben. Bei jeder Wiederaufnahme (oder korrigierend danach) erfolgt eine Zuordnung zu dieser konstanten Patientennummer und die Vergabe einer neuen wechselnden Fallnummer."
* Einrichtungskontakt.Aufnahmenummer 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Jeder Patient erhält bei der Planung einer Aufnahme oder bei der Aufnahme selbst eine Aufnahmenummer (auch Fallnummer oder Krankenhausinternes Kennzeichen genannt). Im Prinzip gilt diese Aufnahmenummer von der Aufnahme bis zur Entlassung - und auch bei den zugehörigen vorstationären und nachstationären Kontakten. Sie dient bei allen digital unterstüzten Vorgängen der Zuordnung zu dem Aufenthalt des Patienten in der Einrichtung."
* Einrichtungskontakt.Aufnahmeanlass 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Gemäß §21 KHEntgG" "Gemäß §21 KHEntgG"
* Einrichtungskontakt.Aufnahmegrund 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Gemäß §21 KHEntgG" "Es ist der Aufnahmegrund entsprechend Schlüssel 1 der Anlage 2 zur § 301-Vereinbarung anzugeben. Als 3. und 4. Stelle (xx) sind die nach Schlüssel 1 möglichen Werte (01 bis 07, bei tagesbezogenen Ent- gelten auch 21 bis 27) anzugeben. Fälle mit den Werten „41“ bis „47“ in der 3. und 4. Stelle (Behandlun- gen im Rahmen von Verträgen zur integrierten Versorgung) können übermittelt werden.\r\nDer Aufnahmegrund kann bei Begleitpersonen und mitaufgenommenen Pflegekräften (Aufnahmeanlass „B“) entfallen. In allen anderen Fällen ist der Aufnahmegrund eine Muss-Angabe."
* Einrichtungskontakt.Beginndatum 0..* http://hl7.org/fhir/StructureDefinition/dateTime ""
* Einrichtungskontakt.Enddatum 0..* http://hl7.org/fhir/StructureDefinition/dateTime ""
* Einrichtungskontakt.Entlassungsgrund 0..* http://hl7.org/fhir/StructureDefinition/code "Gemäß §21 KHEntgG" "Gemäß §21 KHEntgG"
* Abteilungskontakt 0..* BackboneElement ""
* Abteilungskontakt.KontaktEbene 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Für die Unterscheidung der Kontakt-Hierarchieebenen im Modul FALL werden folgende Ausprägungen unterschieden:\r\n\r\n1. Einrichtungskontakt\r\n\r\n2. Abteilungskontakt\r\n\r\n3. Versorgungsstellenkontakt\r\n\r\nDiese Gliederung gilt zunächst für stationäre Kontakte (siehe Kontakt-Klasse). Die Übertragung auf ambulante und teilstationäre Kontakte muss noch abgestimmt werden."
* Abteilungskontakt.KontaktArt 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept ""
* Abteilungskontakt.PatientenIdentifikator 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Bei der internen Nutzung dient die sogenannte Patientennummer als Identifikator. Diese wird bei der ersten Aufnahme in die Einrichtung parallel zur ersten Fallnummer (Aufnahmenummer) vergeben. Bei jeder Wiederaufnahme (oder korrigierend danach) erfolgt eine Zuordnung zu dieser konstanten Patientennummer und die Vergabe einer neuen wechselnden Fallnummer."
* Abteilungskontakt.Aufnahmenummer 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Jeder Patient erhält bei der Planung einer Aufnahme oder bei der Aufnahme selbst eine Aufnahmenummer (auch Fallnummer oder Krankenhausinternes Kennzeichen genannt). Im Prinzip gilt diese Aufnahmenummer von der Aufnahme bis zur Entlassung - und auch bei den zugehörigen vorstationären und nachstationären Kontakten. Sie dient bei allen digital unterstüzten Vorgängen der Zuordnung zu dem Aufenthalt des Patienten in der Einrichtung. Im MII KDS dient sie als Identifikator bzw. Referenz zum Einrichtungskontakt."
* Abteilungskontakt.Beginndatum 0..* http://hl7.org/fhir/StructureDefinition/dateTime ""
* Abteilungskontakt.Enddatum 0..* http://hl7.org/fhir/StructureDefinition/dateTime ""
* Abteilungskontakt.Fachabteilungsschluessel 0..* http://hl7.org/fhir/StructureDefinition/code "Bis auf Weiteres wird der proprietäre deutsche  Fachabteilungsschlüssel des § 301 SGB V und des Datensatzes gemäß § 21 KHentgG als Fachrichtungsschlüssel genutzt, weil dieser in jedem Krankenhaus als |Fachabteilungsschlüssel im Einsatz ist. Der Einsatz des IHE-Fachabteilungsschlüssel wird geprüft, sobald einschlägige Anforderungen formuliert werden."
* Versorgungsstellenkontakt 0..* BackboneElement ""
* Versorgungsstellenkontakt.KontaktEbene 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept "Für die Unterscheidung der Kontakt-Hierarchieebenen im Modul FALL werden folgende Ausprägungen unterschieden:\r\n\r\n1. Einrichtungskontakt\r\n\r\n2. Abteilungskontakt\r\n\r\n3. Versorgungsstellenkontakt\r\n\r\nDiese Gliederung gilt zunächst für stationäre Kontakte (siehe Kontakt-Klasse). Die Übertragung auf ambulante und teilstationäre Kontakte muss noch abgestimmt werden."
* Versorgungsstellenkontakt.KontaktArt 0..* http://hl7.org/fhir/StructureDefinition/CodeableConcept ""
* Versorgungsstellenkontakt.PatientenIdentifikator 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Bei der internen Nutzung dient die sogenannte Patientennummer als Identifikator. Diese wird bei der ersten Aufnahme in die Einrichtung parallel zur ersten Fallnummer (Aufnahmenummer) vergeben. Bei jeder Wiederaufnahme (oder korrigierend danach) erfolgt eine Zuordnung zu dieser konstanten Patientennummer und die Vergabe einer neuen wechselnden Fallnummer."
* Versorgungsstellenkontakt.Aufnahmenummer 0..* http://hl7.org/fhir/StructureDefinition/Identifier "Jeder Patient erhält bei der Planung einer Aufnahme oder bei der Aufnahme selbst eine Aufnahmenummer (auch Fallnummer oder Krankenhausinternes Kennzeichen genannt). Im Prinzip gilt diese Aufnahmenummer von der Aufnahme bis zur Entlassung - und auch bei den zugehörigen vorstationären und nachstationären Kontakten. Sie dient bei allen digital unterstüzten Vorgängen der Zuordnung zu dem Aufenthalt des Patienten in der Einrichtung. Im MII KDS dient sie als Identifikator bzw. Referenz zum Einrichtungskontakt."
* Versorgungsstellenkontakt.Beginndatum 0..* http://hl7.org/fhir/StructureDefinition/dateTime ""
* Versorgungsstellenkontakt.Enddatum 0..* http://hl7.org/fhir/StructureDefinition/dateTime ""