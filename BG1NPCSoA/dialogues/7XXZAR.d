BEGIN 7XXZAR
IF ~NumTimesTalkedTo(0)~ THEN BEGIN XZAR00x00
SAY @0
IF ~OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @1 GOTO XZAR00x01
IF ~OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @2 GOTO XZAR00x01
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXTERN JAHEIRAJ 7xXzarJaheira
END

IF ~~ THEN BEGIN XZAR00x01
SAY @3
=
@4 
=
@5
=
@6
=
@7
=
@8
=
@9
IF ~~ THEN REPLY @10 GOTO XZAR00x05
IF ~~ THEN REPLY @11 GOTO XZAR00x05
END

IF ~~ THEN BEGIN XZAR-NO
SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XZAR00x05
SAY @13
=
@14
=
@15
IF ~~ THEN REPLY @16 GOTO JOIN1
IF ~~ THEN REPLY @17 GOTO JOIN1
IF ~~ THEN REPLY @18 GOTO XZAR-NO
IF ~~ THEN REPLY @19 GOTO HARPER
END

IF ~~ THEN BEGIN HARPER
SAY @20
=
@21
=
@22
=
@23
IF ~~ THEN REPLY @24 GOTO JOIN1
IF ~~ THEN REPLY @25 GOTO JOIN1
IF ~~ THEN REPLY @26 GOTO JOIN1
IF ~~ THEN REPLY @18 GOTO XZAR-NO
END

IF ~~ THEN BEGIN JOIN1
SAY @27
=
@28
IF ~~ THEN DO ~SetGlobal("XZARInParty","LOCALS",1)
JoinParty()~ EXIT
END

IF ~NumTimesTalkedToGT(0)
!InParty("7XXZAR")~ THEN BEGIN XZAR00x08
SAY @29
IF ~~ THEN REPLY @24 GOTO JOIN1
IF ~~ THEN REPLY @25 GOTO JOIN1
IF ~~ THEN REPLY @26 GOTO JOIN1
IF ~~ THEN REPLY @18 GOTO XZAR-NO
IF ~~ THEN REPLY @30 GOTO XZAR-NO
IF ~~ THEN REPLY @31 GOTO JOIN1
END


BEGIN ~7XXZARP~

IF ~Global("XZARInParty","LOCALS",1)~ THEN BEGIN KickOutXZAR
SAY @32
IF ~~ THEN REPLY @33 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @34  GOTO OUT1
END

 
IF ~~ THEN BEGIN OUT1
SAY @35
IF ~~ THEN DO ~SetGlobal("XZARInParty","LOCALS",0)~ GOTO OUT2
END

IF ~~ THEN BEGIN OUT2
SAY @36
IF ~~ THEN REPLY @37 GOTO OUT3
IF ~~ THEN REPLY @38 DO ~SetGlobal("XZARInParty","LOCALS",0)EscapeAreaMove("AR0407",181,388,7)~ EXIT
IF ~~ THEN REPLY @39 DO ~SetGlobal("XZARInParty","LOCALS",0)EscapeAreaMove("AR0407",181,388,7)~ EXIT
END

IF ~~ THEN BEGIN OUT3
SAY @40
IF ~~ THEN DO ~SetGlobal("XZARInParty","LOCALS",0)~ EXIT
END



IF ~Global("XZARInParty","LOCALS",0)
!InParty("7XXZAR")~ THEN BEGIN RejoinXZAR
SAY @41
IF ~~ THEN REPLY @42 EXIT
IF ~~ THEN REPLY @31 GOTO JOIN2
END

IF ~~ THEN BEGIN JOIN2
SAY @27
=
@28
IF ~~ THEN DO ~SetGlobal("XZARInParty","LOCALS",1)
JoinParty()~ EXIT
END


CHAIN JAHEIRAJ 7xXzarJaheira
@43
== 7XXZAR @44
== 7XMONT IF ~InMyArea("7XMONT")~ THEN @45
== JAHEIRAJ IF ~InMyArea("7XMONT")~ THEN @46
== 7XMONT IF ~InMyArea("7XMONT")~ THEN @47
== JAHEIRAJ IF ~InMyArea("7XMONT")~ THEN @48
== 7XMONT IF ~InMyArea("7XMONT")~ THEN @49
== 7XXZAR @50
END
IF ~~ THEN REPLY @1 EXTERN 7XXZAR XZAR00x01
IF ~~ THEN REPLY @2 EXTERN 7XXZAR XZAR00x01