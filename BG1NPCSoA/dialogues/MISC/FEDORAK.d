BEGIN ~FEDORAK~

IF ~Global("FEDORAK","GLOBAL",0)~ THEN BEGIN FEDORAK1
SAY @0
=
@1 
IF ~~ THEN REPLY @2 GOTO FIGHT
IF ~~ THEN REPLY @3 GOTO IKNOW
IF ~~ THEN REPLY @4 GOTO FIGHT 
END



IF ~~ THEN FIGHT 
SAY @5
=
@6
IF ~~ THEN DO ~CreateCreature("ICYUAN02",[1999.646],6)
CreateCreature("ICYUAN02",[1715.144],0)
CreateCreature("ICYUAN02",[1487.657],10)
Enemy()~ EXIT
END


IF ~~ THEN IKNOW
SAY @7 =
@6
IF ~~ THEN DO ~CreateCreature("ICYUAN02",[1999.646],6)
CreateCreature("ICYUAN02",[1715.144],0)
CreateCreature("ICYUAN02",[1487.657],10)
Enemy()~ EXIT
END