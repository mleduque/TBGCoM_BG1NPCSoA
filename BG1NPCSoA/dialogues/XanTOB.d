
EXTEND_TOP SARVOLO 9
IF ~InParty("7XXAN")~ THEN REPLY @0 GOTO XAN1Volo
END

CHAIN SARVOLO XAN1Volo
@1
== 7XXAN25J IF ~InParty("7XXAN")~ THEN @2
EXTERN SARVOLO 9




EXTEND_TOP FATESP 6 #9
IF ~!Dead("7XXAN")
    !InMyArea("7XXAN")
    Global("XAN1SummonedTOB","GLOBAL",0)~
THEN
  REPLY @3
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
     Wait(2)
     CreateCreature("7XCRE76",[1999.1218],0)
     SetGlobal("XAN1SummonedTOB","GLOBAL",1)~
EXIT
END

BEGIN ~7XXAN25P~

IF ~Global("XAN1KickedOutToB","GLOBAL",0)~ THEN BEGIN XAN1kickout
  SAY @4
  IF ~~ THEN REPLY @5 GOTO XAN1kickout_2
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @6 DO ~SetGlobal("XAN1KickedOutToB","GLOBAL",1)~ GOTO XAN1kickout_3
  IF ~AreaCheck("AR4500")~ THEN REPLY @6 DO ~SetGlobal("XAN1KickedOutToB","GLOBAL",1)
MoveToPointNoInterrupt([1810.1160])
Face(0)~ GOTO XAN1kickout_3
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @7 DO ~SetGlobal("XAN1KickedOutToB","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1585.1374],0)~ GOTO XAN1kickout_3
END

IF ~~ THEN BEGIN XAN1kickout_2
  SAY @8
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAN1kickout_3
  SAY @9
IF ~~ THEN EXIT
END

IF ~Global("XAN1KickedOutToB","GLOBAL",1)~ THEN BEGIN XAN1kickout_4
  SAY @10
  IF ~~ THEN REPLY @11 GOTO XAN1kickout_5
  IF ~~ THEN REPLY @12 DO ~SetGlobal("XAN1KickedOutToB","GLOBAL",0)
JoinParty()~ GOTO XAN1kickout_6
END

IF ~~ THEN BEGIN XAN1kickout_5
  SAY @13
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XAN1kickout_6
  SAY @14
  IF ~~ THEN EXIT
END

BEGIN ~7XXAN25~
BEGIN ~7XXAN25J~
BEGIN ~7XXAN25D~
BEGIN ~B7XXAN25~

///////////////////////////////////////////////////////////////////////
APPEND 7XXAN
IF WEIGHT #-10~Global("XAN1SummonedTOB","GLOBAL",1)~ THEN BEGIN XAN1TOB1
  SAY @15
  IF ~~ THEN REPLY @16 GOTO XAN1TOB1_2
  IF ~~ THEN REPLY @17 GOTO XAN1TOB1_3
END
END

APPEND 7XXAN
IF ~~ THEN BEGIN XAN1TOB1_2
  SAY @18
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
END


APPEND 7XXAN
IF ~~ THEN BEGIN XAN1TOB1_3
  SAY @19
  IF ~~ THEN DO ~SetGlobal("XAN1SummonedTOB","GLOBAL",2)
MoveToPointNoInterrupt([1450.1405])
Face(0)~ EXIT
END
END

APPEND 7XXAN
IF ~Global("XAN1SummonedTOB","GLOBAL",2)~ THEN BEGIN XAN1TOB1_4
  SAY @20
=
@21
  IF ~~ THEN REPLY @22 GOTO XAN1TOB1_5
  IF ~~ THEN REPLY @23 GOTO XAN1TOB1_6
END
END

APPEND 7XXAN
IF ~~ THEN BEGIN XAN1TOB1_5
  SAY @24
  IF ~~ THEN DO ~JoinParty()~ EXIT
END
END


APPEND 7XXAN
IF ~~ THEN BEGIN XAN1TOB1_6
  SAY @25
  IF ~~ THEN EXIT
END
END