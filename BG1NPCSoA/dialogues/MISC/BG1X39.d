BEGIN ~BG1X39~
IF ~Global("ZOPANToB","GLOBAL",0)~ THEN BEGIN INTRO1
  SAY @0
=
@1
  IF ~~ THEN REPLY @2 GOTO IMP2
  IF ~~ THEN REPLY @3 GOTO IMP2
  IF ~~ THEN REPLY @4 GOTO IMP3
  IF ~~ THEN REPLY @5 GOTO IMP2
END

IF ~~ THEN BEGIN IMP3
SAY @6
  IF ~~ THEN GOTO IMP2
END

IF ~~ THEN BEGIN IMP2
SAY @7
  IF ~~ THEN REPLY @8 GOTO IMP4
  IF ~~ THEN REPLY @9 GOTO IMP4
  IF ~~ THEN REPLY @10 GOTO IMP4
  IF ~~ THEN REPLY @11 GOTO IMP4
END

IF ~~ THEN BEGIN IMP4
SAY @12
=
@13
IF ~~ THEN REPLY @14 GOTO IMP5
IF ~~ THEN REPLY @15 GOTO IMP5
IF ~~ THEN REPLY @16 GOTO IMP5
IF ~~ THEN REPLY @17 GOTO IMP5
END

IF ~~ THEN BEGIN IMP5
SAY @18
=
@19
IF ~~ THEN REPLY @20 GOTO IMP6
IF ~~ THEN REPLY @21 GOTO IMP6
IF ~~ THEN REPLY @22 GOTO IMP6
IF ~~ THEN REPLY @23 GOTO IMP7
END

IF ~~ THEN BEGIN IMP7
SAY @24
IF ~~ THEN DO ~CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(1)
PlaySound("EFF_M38")
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()~ EXIT
END


IF ~~ THEN BEGIN IMP6
SAY @25
=
@26
IF ~~ THEN REPLY @27 GOTO IMP7
IF ~~ THEN REPLY @28 GOTO IMP8
IF ~~ THEN REPLY @29 GOTO IMP8
END

IF ~~ THEN BEGIN IMP8
SAY @30
IF ~~ THEN REPLY @31 GOTO IMP9
IF ~~ THEN REPLY @32 GOTO IMP9
IF ~~ THEN REPLY @23 GOTO IMP7
IF ~~ THEN REPLY @33 GOTO IMP9
END


IF ~~ THEN BEGIN IMP9
SAY @34
=
@35
IF ~~ THEN REPLY @36 GOTO IMP7
IF ~~ THEN REPLY @37 GOTO NewGold
END

IF ~~ THEN BEGIN NewGold
SAY @38
=
@39
IF ~~ THEN REPLY @36 GOTO IMP7
IF ~~ THEN REPLY @40 GOTO NewGold
IF ~~ THEN REPLY @41 GOTO IMP10
END

IF ~~ THEN BEGIN IMP10
SAY @42
IF ~~ THEN DO ~SetGlobal("ZOPANToB","GLOBAL",1)TakePartyGold("50000")DestroyGold("50000")GiveItemCreate("bgsx20",PLAYER1,1,0,0)~ GOTO IMP7
END

