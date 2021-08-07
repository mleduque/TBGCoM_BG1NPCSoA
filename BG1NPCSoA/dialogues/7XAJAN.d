BEGIN ~7XAJAN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN ALIVE1
  SAY @0
=
@1
=
@2 
=
@3
++ @4 GOTO ALIVE2
END

IF ~~ BEGIN ALIVE2
SAY @5
++ @6 GOTO ALIVE3
END

IF ~~ BEGIN ALIVE3
SAY @7
=
@8 
++ @9 GOTO ALIVE4
++ @10 GOTO ALIVE5
END

IF ~~ BEGIN ALIVE4
SAY @11
IF ~~ THEN REPLY @12 + SLOW1
++ @13 + SLOW1
END

IF ~~ ALIVE5
SAY @14
=
@15
IF ~~ THEN REPLY @12 + SLOW1
++ @13 + SLOW1
END

IF ~~ SLOW1
SAY @16
=
@17 
IF ~~ THEN REPLY @18 GOTO NEWJ1
IF ~~ THEN REPLY @19 GOTO REJECTED1
IF ~~ THEN REPLY @20 GOTO REJECTED1
END

IF ~~ NEWJ1
SAY @21 
IF ~~ THEN DO ~SetGlobal("AJANTISRejected","LOCALS",1)JoinParty()~ EXIT
END

IF ~~ REJECTED1
SAY @22
IF ~~ THEN DO ~EscapeAreaMove("AR0903",1192,1120,13)~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ HelloAgain
SAY @23
++ @24 GOTO NEWJ1
++ @25 EXIT
END

BEGIN ~7XAJANP~

IF ~Global("AJANTISRejected","LOCALS",1)~ THEN BEGIN KickOutAjantis
SAY @26
IF ~~ THEN REPLY @27  GOTO OUT1
IF ~~ THEN REPLY @28 GOTO NEWJ3
IF ~~ THEN REPLY @29 GOTO NEWJ2
END

IF ~~ NEWJ2
SAY @21 
IF ~~ THEN DO ~SetGlobal("AJANTISRejected","LOCALS",1)JoinParty()~ EXIT
END

IF ~~ THEN BEGIN NEWJ3
SAY @30
=
@31 IF ~~ THEN DO ~EscapeAreaMove("AR0900",4107,3642,6)SetGlobal("AJANTISRejected","LOCALS",0)~ EXIT
END 


IF ~~ THEN BEGIN OUT1
SAY @32 IF ~~ THEN DO ~SetGlobal("AJANTISRejected","LOCALS",1)
EscapeAreaMove("AR0900",4107,3642,6)SetGlobal("AJANTISRejected","LOCALS",0)~
EXIT
END

IF ~Global("AJANTISRejected","LOCALS",0)
!InParty("7XAJAN")~ THEN BEGIN RejoinAJANTIS
SAY @23
++ @24 GOTO NEWJ2
IF ~~ THEN REPLY @33 EXIT
END



BEGIN ~7XAJANB~

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("imoen2")
See("imoen2")!StateCheck("imoen2",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
!StateCheck("imoen2",CD_STATE_NOTVALID)!Dead("imoen2")Global("Ajantis_ImoenBanter1","GLOBAL",0)~ THEN BIMOEN2 ajantisimoen1
@34
=
@35
== 7XAJANB @36
=
@37 DO ~SetGlobal("Ajantis_ImoenBanter1","GLOBAL",1)~
== BIMOEN2 @38
== 7XAJANB @39
== BIMOEN2 @40
== 7XAJANB @41
=
@42
=
@43
== BIMOEN2 @44
EXIT

CHAIN
IF ~CombatCounter(0)
!See([ENEMY])
InParty("jaheira")
See("jaheira")
!Dead("jaheira")!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("7XAJANJaheira","GLOBAL",0)~ THEN 7XAJANB 7XAJANJaheira1
@45
DO ~SetGlobal("7XAJANJaheira","GLOBAL",1)~
== BJAHEIR @46
== 7XAJANB @47
== BJAHEIR @48
EXIT

CHAIN
IF ~CombatCounter(0) !See([ENEMY]) InParty("viconia")
See("viconia") 
!Dead("viconia")
!StateCheck("viconia",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("AjantisViconiaBanter","GLOBAL",0)~ THEN 7XAJANB ajantisviconia1
@49 
DO ~SetGlobal("AjantisViconiaBanter","GLOBAL",1)~ 
== BVICONI @50
== 7XAJANB @51
== BVICONI @52
EXIT

CHAIN
IF WEIGHT #-1 ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("KeldornAjantisTalk","LOCALS",0)~ THEN 7XAJANB AjantisKeldorn01
@53
DO ~SetGlobal("KeldornAjantisTalk","LOCALS",1)~
== BKELDOR @54
=
@55 
== 7XAJANB @56
== BKELDOR @57
EXIT

CHAIN IF
~InParty("Korgan")
IsValidForPartyDialog("Korgan")!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("7XAJAN")
Global("AjanKorg","GLOBAL",0)~
THEN 7XAJANB AJantisKorganBanter1
@58
=
@59 DO ~SetGlobal("AjanKorg","GLOBAL",1)~
== BKORGAN @60
== 7XAJANB @61
== BKORGAN @62
=
@63
== 7XAJANB @64
== BKORGAN @65
== 7XAJANB @66
== BKORGAN @67
== 7XAJANB @68
== BKORGAN @69 
== 7XAJANB @70
EXIT

CHAIN IF WEIGHT #-1
~Global("AjantisAnomen","GLOBAL",0)InParty("7XAJAN")
See("7XAJAN")
!StateCheck("7XAJAN",CD_STATE_NOTVALID)InParty("Anomen")!StateCheck("Anomen",CD_STATE_NOTVALID)~
THEN BANOMEN Anomen7XAJANBanter
@71 DO ~SetGlobal("AjantisAnomen","GLOBAL",1)~
== 7XAJANB @72
== BANOMEN @73
== 7XAJANB @74
== BANOMEN @75
EXIT

////////////////////////////////////////////////////////////////////////////
BEGIN ~7XAJANJ~

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisACOLYTE","GLOBAL",0)~ THEN ACOLYTE3 Ajantis-ACOLYTE
  @76
  == 7XAJANJ @77
  == ACOLYTE3 @78
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisDEMSON","GLOBAL",0)~ THEN DEMSON Ajantis-DEMSON
  @79 DO ~SetGlobal("AjantisDEMSON","GLOBAL",1)~
  == 7XAJANJ @80
  == DEMSON @81
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")See("7XAJAN")Global("AjantisHEARTG1","GLOBAL",0)~ THEN HEARTG1 Ajantis-HEARTG1
  @82
  == 7XAJANJ @83
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")See("7XAJAN")Global("AjantisHEARTG2","GLOBAL",0)~ THEN HEARTG2 Ajantis-HEARTG2
  @84 DO ~SetGlobal("AjantisHEARTG2","GLOBAL",1)~
== 7XAJANJ @85
EXIT


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")See("7XAJAN")Global("AjantisHEARTG2","GLOBAL",1)~ THEN HEARTG2 Ajantis-HEARTG2-2
  @86 DO ~ SetGlobal("AjantisHEARTG2","GLOBAL",0)~
== 7XAJANJ @83
EXIT



CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisMelvin","GLOBAL",0)~ THEN HMELVIN AjantisMelvin
  @87 DO ~SetGlobal("AjantisMelvin","GLOBAL",1)~
== 7XAJANJ @88
== HMELVIN @89
== 7XAJANJ @90
== HMELVIN @91
== 7XAJANJ @92
== HMELVIN @93
== 7XAJANJ @94
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisMelvin","GLOBAL",1)~ THEN HMELVIN AjantisMelvin2
  @95 
== 7XAJANJ @96
== HMELVIN @97
== 7XAJANJ @98
== HMELVIN @99
EXIT


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisHEARTG3","GLOBAL",0)~ THEN HEARTG3 Ajantis-HEARTG3
  @100 DO ~SetGlobal("AjantisHEARTG3","GLOBAL",1)~
== 7XAJANJ @101
== HEARTG3 @102
EXIT

INTERJECT_COPY_TRANS ANOMENJ 113 AnomenAjantisKnighthood
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@103
== ANOMENJ
@104
END

INTERJECT_COPY_TRANS ANOMENJ 112 AnomenAjantisKnighthood-2
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@103
== ANOMENJ
@104
END

INTERJECT_COPY_TRANS ANOMENJ 111 AnomenAjantisKnighthood-3
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@103
== ANOMENJ
@104
END


INTERJECT_COPY_TRANS ANOMENJ 84 AjantisAnomenTest
== 7XAJANJ IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@105
== ANOMENJ
@106
END

INTERJECT PLAYER1 33 AjantisTreeofLife
== PLAYER1 IF ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")~ THEN
@107
END
++ @108 EXTERN 7XAJANJ AjantisTreeofLife2

APPEND 7XAJANJ
IF ~~ THEN BEGIN AjantisTreeofLife2
SAY @109 COPY_TRANS PLAYER1 33
END
END


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisHEARTG4","GLOBAL",0)~ THEN HEARTG4 Ajantis-HEARTG4
  @110 DO ~SetGlobal("AjantisHEARTG4","GLOBAL",1)~
== 7XAJANJ @111
== HEARTG4 @112
EXIT

CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")IsGabber("7XAJAN")Global("AjantisHEARTG4","GLOBAL",1)~ THEN HEARTG4 Ajantis-HEARTG4
  @113
== 7XAJANJ @114
== HEARTG4 @115
EXIT


CHAIN IF WEIGHT #-1 ~InParty("7XAJAN")IsValidForPartyDialog("7XAJAN")Global("AjantisKAYL2","GLOBAL",0)~ THEN KAYL2 AjantisKAYL2
  @116 DO ~SetGlobal("AjantisKAYL2","GLOBAL",1)~
== 7XAJANJ @117
== KAYL2 @118
== 7XAJANJ @119
== KAYL2 @120
EXIT
