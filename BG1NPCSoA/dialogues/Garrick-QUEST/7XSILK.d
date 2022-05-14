BEGIN ~7XSILK~

IF ~Global("SILKEQUEST","LOCALS",0)InParty("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID) AreaCheck("AR0511")~ THEN BEGIN SILKE1
SAY @0
IF ~~ THEN EXTERN ~7XGarJ~ GarrickWhat
END

IF ~~ THEN BEGIN GarrickSILKE2
SAY @1
IF ~~ THEN EXTERN ~7XGarJ~ GarrickWhat2
END

IF ~~ THEN BEGIN GarrickSILKE3
SAY @2
IF ~~ THEN REPLY @3 GOTO GarrickSILKE4
IF ~~ THEN REPLY @4 GOTO GarrickSILKE4
END

IF ~~ THEN BEGIN GarrickSILKE4
SAY @5
IF ~~ THEN EXTERN ~7XGarJ~ GarrickWhat3
END

IF ~~ THEN BEGIN GarrickSILKE5
SAY @6 
IF ~~ THEN DO ~GivePartyGold(400)SetGlobal("SILKEQUEST","LOCALS",1)~ GOTO GarrickSILKE6   
END

IF ~~ THEN BEGIN GarrickSILKE6
SAY @7
IF ~~ THEN DO ~CreateCreatureDoor("OGRE01",[1041.821],7) CreateCreatureDoor("ICYUAN02",[652.560],13) CreateCreatureDoor("ICGOB02",[1023.523],0) CreateCreatureDoor("bg1x23",[903.605],0)
CreateCreatureDoor("ICGOB02",[372.999],8) CreateCreatureDoor("ICMIN01",[772.881],7)
CreateCreatureDoor("ICSALCOL",[585.734],9)
CreateCreatureDoor("ICYUAN02",[382.996],10)
CreateCreatureDoor("OGRE01",[339.1020],10)
CreateCreatureDoor("CULTBH1",[482.977],10)
CreateCreatureDoor("7XCRE44",[993.767],3)
CreateCreatureDoor("7XCRE45",[1093.859],6)
CreateCreatureDoor("KPTROL05",[427.931],9)
~ GOTO GarrickSILKE7
END

IF ~AreaCheck("AR0700")~ THEN BEGIN SILKEohoh
SAY @8
=
@9
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GarrickSILKE7
SAY @10
IF ~~ THEN DO ~EscapeAreaMove("AR0700",2429,2852,3)~ EXIT
END


APPEND 7XGarJ
IF ~~ THEN BEGIN GarrickWhat
SAY @11
=
@12
IF ~~ THEN EXTERN ~7XSILK~ GarrickSILKE2
END
END

APPEND 7XGarJ
IF ~~ THEN BEGIN GarrickWhat2
SAY @13
IF ~~ THEN EXTERN ~7XSILK~ GarrickSILKE3
END
END

APPEND 7XGarJ
IF ~~ THEN BEGIN GarrickWhat3
SAY @14
IF ~~ THEN EXTERN ~7XSILK~ GarrickSILKE5
END
END








