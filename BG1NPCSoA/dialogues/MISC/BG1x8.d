
BEGIN ~BG1X8~


IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO
SAY @0
=
@1
=
@2 
=
@3
IF ~~ THEN REPLY @4 DO ~SetGlobal("BG1X8","GLOBAL",1)~ EXIT
END

IF~ GlobalGT("FulbertBanter","GLOBAL",1)Global("BG1X8","GLOBAL",1)Global("AbelardFulbert","GLOBAL",0)~ THEN FULBERTTalk1
SAY @5
IF ~~ THEN REPLY @6 DO ~setGlobal("AbelardFulbert","GLOBAL",1)~ GOTO FULBERTTalk2
IF ~~ THEN REPLY @4 EXIT
END

IF~~ THEN FULBERTTalk2
SAY @7
=
@8
IF ~~ THEN REPLY @9 GOTO FULBERTTalk3
END

IF~~ THEN FULBERTTalk3
SAY @10
=
@11 
IF ~~ THEN REPLY @12 GOTO FULBERTTalk5
IF ~~ THEN REPLY @13 GOTO FULBERTTalk4
END

IF~~ THEN FULBERTTalk4
SAY @14
=
@15
IF ~~ THEN EXIT
END

IF~~ THEN FULBERTTalk5
SAY @16
IF ~~ THEN EXIT
END

IF ~Global("BG1X8","GLOBAL",1)Global("HaerDalisPlotStarted","GLOBAL",1)Global("AbelardRaelis","GLOBAL",0)~ THEN talk1
SAY @17
=
@18
IF ~~ THEN DO ~SetGlobal("AbelardRaelis","GLOBAL",1)~ EXIT
END


IF ~Global("BG1X8","GLOBAL",1)RandomNum(6,1)~ THEN talk1
SAY @19
=
@20
=
@21
IF ~~ THEN REPLY @22 GOTO Keczulla
IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN Keczulla
SAY @23
=
@24
=
@25
IF ~~ THEN EXIT
END

IF ~Global("BG1X8","GLOBAL",1)RandomNum(6,2)~ THEN talk2
SAY @26
IF ~~ THEN REPLY @27 GOTO THANKS
IF ~~ THEN REPLY @28 GOTO PERHAPS
IF ~~ THEN REPLY @29 GOTO STUDY
IF ~~ THEN REPLY @30 GOTO VERYWELL
END


IF ~~ THEN THANKS
SAY @31
IF ~~ THEN EXIT
END

IF ~~ THEN PERHAPS
SAY @32
IF ~~ THEN EXIT
END

IF ~~ THEN VERYWELL
SAY @33
IF ~~ THEN EXIT
END


IF ~~ THEN STUDY
SAY @34
=
@35
IF ~~ THEN EXIT
END


IF ~Global("BG1X8","GLOBAL",1)RandomNum(6,3)~ THEN talk3
SAY @36
=
@37
=
@38
=
@39 
IF ~~ THEN REPLY @40 GOTO QUILL
IF ~~ THEN REPLY @41 EXIT
END

IF ~~ THEN QUILL
SAY @42
=
@43
=
@44
IF ~~ THEN EXIT
END

IF ~Global("BG1X8","GLOBAL",1)RandomNum(6,4)~ THEN talk4
SAY @45
=
@46
=
@47
=
@48
IF ~~ THEN REPLY @49 GOTO GemDistrict1
IF ~~ THEN REPLY @4 EXIT
END

IF ~~ THEN GemDistrict1
SAY @50
=
@51
IF ~~ THEN EXIT
END


IF ~Global("BG1X8","GLOBAL",1)RandomNum(6,5)~ THEN talk7
SAY @52
=
@53
=
@54
IF ~~ THEN EXIT
END

IF ~Global("BG1X8","GLOBAL",1)RandomNum(6,6)~ THEN talk8
SAY @55
=
@56
=
@57
=
@58
IF ~~ THEN REPLY @40 GOTO QUILL
IF ~~ THEN REPLY @41 EXIT
END





