CHAIN
IF ~Global("TiaxDeekinTalk","LOCALS",0)
InParty("DEEKIN")!StateCheck("DEEKIN",STATE_SLEEPING)
See("DEEKIN")
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN ~7XTIAXB~ TiaxDeekin01
@593 DO ~SetGlobal("TiaxDeekinTalk","LOCALS",1)~
== BDEEKIN @594
== 7XTIAXB @595
== BDEEKIN @596
EXIT