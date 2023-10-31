Invariant: mii-enc-1
Description: "Falls der Encounter abgeschlossen wurde muss ein Enddatum bekannt sein"
Severity: #error
Expression: "status = 'finished' implies period.end.exists()"