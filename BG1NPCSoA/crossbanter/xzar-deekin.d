CHAIN 
IF ~InParty("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)
See("DEEKIN")
Global("XzarDeekin","LOCALS",0)
InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN ~7XXZARB~ XzarDeekinBANTER1
@597 DO ~SetGlobal("XzarDeekin","LOCALS",1)~
== BDEEKIN @598
== 7XXZARB @599
== BDEEKIN @600
== 7XXZARB @601
EXIT

CHAIN 
IF ~InParty("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)
See("DEEKIN")
Global("XzarDeekin","LOCALS",1)
InParty("7XXZAR") !StateCheck("7XXZAR",CD_STATE_NOTVALID)~ THEN ~7XXZARB~ XzarDeekinBANTER2
@656 DO ~SetGlobal("XzarDeekin","LOCALS",2)~
== BDEEKIN @657
== 7XXZARB @658
== BDEEKIN @659
== 7XXZARB @660
== BDEEKIN @661
== 7XXZARB @662
EXIT