CHAIN
IF ~Global("BranXanTalk","GLOBAL",0)InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)!Dead("7XXAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN ~7XXANB~ BranXan01
@275
DO ~SetGlobal("BranXanTalk","GLOBAL",1)~
== 7XBRANB @276
== 7XXANB @277
== 7XBRANB @278
EXIT

CHAIN
IF ~Global("BranXanTalk","GLOBAL",1)InParty("7XXAN")!StateCheck("7XXAN",STATE_SLEEPING)!Dead("7XXAN")
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN ~7XBRANB~ BranXan02
@291 
DO ~SetGlobal("BranXanTalk","GLOBAL",2)~
== 7XXANB @292
== 7XBRANB @293 
== 7XXANB @294
== 7XBRANB @295 
EXIT
