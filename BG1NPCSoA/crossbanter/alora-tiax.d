CHAIN IF~InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)Global("AloraTiax","GLOBAL",0)~ THEN 7XTIAXB Tiax_aLORA1
@0
=
@1 DO ~SetGlobal("AloraTiax","GLOBAL",1)~
== 7XAloraB @2
=
@3
== 7XTIAXB @4
== 7XAloraB @5
=
@6
== 7XTIAXB @7
EXIT


CHAIN IF ~Global("AloraTiax","GLOBAL",1)InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)
InParty("7XTIAX")!StateCheck("7XTIAX",STATE_SLEEPING)~
THEN ~7XTIAXB~ TiaxALORA2
@370
=
@371 DO ~SetGlobal("AloraTiax","GLOBAL",2)~
== 7XTIAXB @372
== 7XAloraB @373
== 7XTIAXB @374 
== 7XAloraB @375
=
@376
== 7XTIAXB @377
=
@378
== 7XAloraB @379
EXIT


I_C_T 7XALORA 5 TIAXALORA5
== 7XTIAXJ IF ~!StateCheck("7XTIAX",CD_STATE_NOTVALID)InParty("7XTIAX")InMyArea("7XTIAX")~ THEN
@446
=
@447
== 7XALORA @448
END


I_C_T 7XTIAX 0 aloraTIAX0
== 7XALORAJ
IF ~InParty("7XALORA")!StateCheck("7XALORA",CD_STATE_NOTVALID)~ THEN
 @449
=
@450
END