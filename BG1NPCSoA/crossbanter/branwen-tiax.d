CHAIN
IF ~Global("TiaxBranwen","GLOBAL",0)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 7XTIAXB TiaxBranwen1
@259 
DO ~SetGlobal("TiaxBranwen","GLOBAL",1)~
== 7XBRANB @260
== 7XTIAXB @261 
EXIT

CHAIN
IF ~Global("TiaxBranwen","GLOBAL",1)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 7XTIAXB TiaxBranwen2
@380
DO ~SetGlobal("TiaxBranwen","GLOBAL",2)~
== 7XBRANB @381
== 7XTIAXB @382 
== 7XBRANB @383
== 7XTIAXB @384
EXIT

CHAIN
IF ~Global("TiaxBranwen","GLOBAL",2)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 7XTIAXB TiaxBranwen3
@424
DO ~SetGlobal("TiaxBranwen","GLOBAL",3)~
== 7XBRANB @425
== 7XTIAXB @426
== 7XBRANB @427
== 7XTIAXB @428
EXIT