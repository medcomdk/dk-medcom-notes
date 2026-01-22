Invariant: medcom-datetime-has-time-offset-zulu //SKS: taget direkte fra EKG IG
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]([.][0-9]+)?(Z|[+-][0-9]{2}:[0-9]{2})$')"

Invariant: medcom-canonical-fixed-major
Description: "If a version is present in the canonical, MAJOR SHALL be a fixed value."
Severity: #error
Expression: "matches('^.*[|]0[.].*$')" //SKS: ret denne tilbage til 1 inden udgivelse