BEGIN ~7XSkiP~

IF ~Global("SkieInParty","GLOBAL",1)~ THEN BEGIN KickOutSkie
SAY @0
=
@1
IF ~~ THEN REPLY @2 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @3 GOTO OUT1
END

IF ~~ THEN BEGIN OUT1
SAY @4 
IF ~~ THEN REPLY @5 DO ~EscapeAreaMove("AR0513",617,587,0)SetGlobal("SkieInParty","GLOBAL",2)~ EXIT
IF ~~ THEN REPLY @6 GOTO WAITHERE
END

IF ~~ THEN BEGIN WAITHERE
SAY @7
=
@8
IF ~~ THEN DO ~SetGlobal("SkieInParty","GLOBAL",0)~ EXIT
END

IF ~Global("SkieInParty","GLOBAL",0)!InParty("Skie")~ THEN BEGIN RejoinSkie
SAY @9
IF ~~ THEN REPLY @10 EXIT
IF ~~ THEN REPLY @11 DO ~SetGlobal("SkieInParty","GLOBAL",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN JOINUP
SAY @12
IF ~~ THEN DO ~SetGlobal("SkieInParty","GLOBAL",1)
JoinParty()~ EXIT
END

IF ~Global("SkieInParty","GLOBAL",2)~ THEN BEGIN SkieDelosars
SAY @13
=
@14
IF ~~ THEN REPLY @15 DO ~SetGlobal("SkieInParty","GLOBAL",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @16  GOTO OUT2
END

IF ~~ THEN BEGIN OUT2
SAY @17 
=
@18
=
@19
IF ~~ THEN DO ~SetGlobal("SkieInParty","GLOBAL",0)~ EXIT
END

BEGIN ~7XSki~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Skie00x00
SAY @20
IF ~~ THEN REPLY @21 GOTO Skie00x01-1
IF ~~ THEN REPLY @22 GOTO SkieThanks
IF ~~ THEN REPLY @23 GOTO Skie01
IF ~~ THEN REPLY @24 GOTO Skie00x01
END

IF ~~ THEN BEGIN Skie01
SAY @25
IF ~~ THEN REPLY @26 GOTO Skie00x05
END

IF ~~ THEN BEGIN SkieThanks
SAY @27
IF ~~ THEN GOTO Skie00x05
END


IF ~~ THEN BEGIN Skie00x01-1
SAY @28
IF ~~ THEN REPLY @29 GOTO Skie00x05
IF ~~ THEN REPLY @30 GOTO Skie00x05
IF ~~ THEN REPLY @31 GOTO Skie-1
END


IF ~~ THEN BEGIN Skie00x01
SAY @32
IF ~~ THEN REPLY @33 GOTO Skie00x01-1
IF ~~ THEN REPLY @34 GOTO SKIE-RUDE
IF ~~ THEN REPLY @30 GOTO Skie00x05
IF ~~ THEN REPLY @31 GOTO Skie-1
END

IF ~~ THEN BEGIN Skie-1
SAY @35
=
@36
IF ~~ THEN REPLY @37 GOTO Skie00x01
IF ~~ THEN REPLY @38 GOTO Skie00x05
END

IF ~~ THEN BEGIN Skie00x05
SAY @39
=
@40
=
@41
=
@42
=
@43
=
@44
=
@45
IF ~~ THEN REPLY @46 GOTO SKIE2
IF ~~ THEN REPLY @47 GOTO SKIE2
IF ~~ THEN REPLY @48 GOTO SKIE2
END

IF ~~ THEN BEGIN SKIE-RUDE
SAY @49
IF ~~ THEN DO~SetGlobal("SkieNPC","GLOBAL",99)~EXIT
END


IF ~~ THEN BEGIN SKIE2
SAY @50
=
@51
=
@52
=
@53
=
@54
IF ~~ THEN REPLY @55 GOTO SKIE-RUDE
IF ~~ THEN REPLY @56 GOTO SKIE2New-1
IF ~~ THEN REPLY @57 GOTO SKIE-RUDE
IF ~~ THEN REPLY @58 GOTO SKIE-RUDE
IF ~~ THEN REPLY @59 GOTO Adalon
IF ~~ THEN REPLY @60 GOTO SKIE2New-1
END

IF ~~ THEN BEGIN Adalon
SAY @61
=
@62  
IF ~~ THEN REPLY @63 GOTO Skie-6
IF ~~ THEN REPLY @64 GOTO Skie-6
IF ~~ THEN REPLY @65 GOTO Skie-6
IF ~~ THEN REPLY @66 GOTO NICE1
END

IF ~~ THEN BEGIN SKIE2New-1
SAY @67
=
@62 
IF ~~ THEN REPLY @63 GOTO Skie-6
IF ~~ THEN REPLY @64 GOTO Skie-6
IF ~~ THEN REPLY @65 GOTO Skie-6
IF ~~ THEN REPLY @66 GOTO NICE1
END

IF ~~ THEN BEGIN Skie-6
SAY @68
=
@69
=
@70
=
@71
=
@72
=
@73 
=
@74
IF ~~ THEN REPLY @75 GOTO NO-ROOM
IF ~~ THEN REPLY @76 GOTO NICE1
END

IF ~~ THEN BEGIN NO-ROOM
SAY @77
=
@78
IF ~~ THEN DO ~EscapeAreaMove("AR0513",617,587,0)~ EXIT
END

IF ~~ THEN BEGIN NICE1
SAY @79
IF ~~ THEN DO ~SetGlobal("SkieInParty","GLOBAL",1)JoinParty()~ EXIT
END

IF ~Global("SkieNPC","GLOBAL",99)!InParty("Skie")~ THEN BEGIN Skie00x08
SAY @80
IF ~~ THEN GOTO SKIE2
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN SkieDelosars2
SAY @13
=
@81
IF ~~ THEN REPLY @15 DO ~SetGlobal("SkieInParty","GLOBAL",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @16  GOTO OUTx
END


IF ~~ THEN BEGIN OUTx
SAY @82
=
@83
IF ~~ THEN EXIT
END