EXTEND_TOP FATESP 6 #4
  IF ~!Dead("7XAJAN")
!InMyArea("7XAJAN")
Global("AjantisSummonedToB","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
Wait(2)
CreateCreature("7XCRE70",[1999.1218],0)
SetGlobal("AjantisSummonedToB","GLOBAL",1)~ GOTO 8
END

BEGIN ~7XAJA25P~

IF ~Global("AjantisKickedOutToB","GLOBAL",0)~ THEN BEGIN AjantisOut 
  SAY  @1 
  IF ~~ THEN REPLY @2 GOTO AjantisOutx
  IF ~AreaCheck("AR4500")~ THEN REPLY @3 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",1)
MoveToPointNoInterrupt([1626.1498])
Face(0)~ GOTO AjantisOut1
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @4 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",1)
CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1626.1498],0)
~ EXIT
  IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @3 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",1)~ GOTO AjantisOut1
END

IF ~~ THEN BEGIN AjantisOutx
  SAY @5
  IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN AjantisOut1 
  SAY @6 
  IF ~~ THEN EXIT
END

IF ~Global("AjantisKickedOutToB","GLOBAL",1)~ THEN BEGIN AjantisOut2 
  SAY @7
  IF ~~ THEN REPLY @8DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0)
JoinParty()~ GOTO AjantisOutx
  IF ~~ THEN REPLY @9 GOTO AjantisOut1
  IF ~~ THEN REPLY @10 DO ~SetGlobal("AjantisKickedOutToB","GLOBAL",0)
JoinParty()~ GOTO AjantisOutx
END


BEGIN ~7XAJAN25~
BEGIN ~7XAJA25D~
BEGIN ~7XAJA25J~

BEGIN ~B7XAJA25~










APPEND 7XAJAN

IF WEIGHT #-10~Global("AjantisSummonedToB","GLOBAL",1)~ THEN BEGIN Intro 
  SAY @11 
IF ~~ THEN REPLY @12 GOTO AjantisToB1
IF ~~ THEN REPLY @13 GOTO AjantisToB1
END
END

APPEND 7XAJAN
IF ~~ THEN BEGIN AjantisToB1 
  SAY @14
=
@15 
  IF ~~ THEN REPLY @16 GOTO AjantisToB3
  IF ~~ THEN REPLY @17 GOTO AjantisToB4
END
END

APPEND 7XAJAN
IF ~~ THEN BEGIN AjantisToB3 
  SAY @18 
  IF ~~ THEN DO ~SetGlobal("AjantisSummonedToB","GLOBAL",2)JoinParty()~ EXIT
END
END

APPEND 7XAJAN
IF ~~ THEN BEGIN AjantisToB4 
  SAY @19 
  IF ~~ THEN REPLY @20 DO ~SetGlobal("AjantisSummonedToB","GLOBAL",2)JoinParty()~ GOTO AjantisToB3 
  IF ~~ THEN REPLY @21 GOTO AjantisToB5
END
END

APPEND 7XAJAN
IF ~~ THEN BEGIN AjantisToB5 
  SAY @22 
  IF ~~ THEN DO ~MoveToPointNoInterrupt([1626.1498])
Face(0)~ EXIT
END
END

APPEND 7XAJAN
IF ~Global("AjantisSummonedToB","GLOBAL",2)~ THEN BEGIN AjantisToB6
  SAY @23 
  IF ~~ THEN REPLY @24 DO ~JoinParty()~ GOTO AjantisToB3
  IF ~~ THEN REPLY @25 GOTO AjantisToB7
END
END

APPEND 7XAJAN
IF ~~ THEN BEGIN AjantisToB7 
  SAY @26 
  IF ~~ THEN EXIT
END
END



