BEGIN ~7XKIVAJ~




I_C_T TAZOK 0 TAZOK-KIVAN
== 7XKIVAJ IF ~!Dead("7XKIVA") InParty("7XKIVA")!StateCheck("7XKIVA",CD_STATE_NOTVALID)~ THEN 
@0
== TAZOK @1
=
@2
== 7XKIVAJ @3
== TAZOK @4
== 7XKIVAJ @5
END


BEGIN ~7XKIVAB~

BEGIN ~7XKIVA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN MeetKivan
SAY @6
++ @7 GOTO KIVAN_NEW1
++ @8 GOTO KIVAN_NEW2
END



IF ~~ THEN BEGIN KIVAN_NEW1
SAY @9
IF ~~ THEN GOTO KIVAN_FirstMeeting2
END


IF ~~ THEN BEGIN KIVAN_NEW2
SAY @10
IF ~~ THEN GOTO KIVAN_FirstMeeting2
END

IF ~~ THEN BEGIN KIVAN_FirstMeeting2
SAY @11
=
@12
=
@13
=
@14
=
@15
IF ~~ THEN REPLY @16 GOTO ComeAlong
IF ~~ THEN REPLY @17 GOTO PoliteRefuse
IF ~~ THEN REPLY @18 GOTO GetLost
END

IF ~~ THEN BEGIN ComeAlong
SAY @19
IF~~ THEN DO ~SetGlobal("7XKIVAJoined","GLOBAL",1)
JoinParty()~ EXIT
END



IF ~~ THEN BEGIN PoliteRefuse
SAY @20
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN PoliteRefuse2
SAY @21 
IF ~~ THEN DO ~SetGlobal("7XKIVAJoined","LOCALS",0)EscapeAreaMove("AR1200",2444,577,9)~
EXIT
END


IF ~~ THEN BEGIN GetLost
SAY @22
IF ~~ THEN DO ~EscapeArea()~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ReturnDialogue
SAY @23
IF ~~ THEN REPLY @24 GOTO ComeAlong
IF ~~ THEN REPLY @25 GOTO PoliteRefuse2
END


BEGIN 7XKIVAP


IF ~Global("7XKIVAJoined","GLOBAL",1)~ THEN BEGIN KickOut
SAY @26
IF ~~ THEN REPLY @25 GOTO OUTSIE 
IF ~~ THEN REPLY @27 GOTO OUTSIE 
IF ~~ THEN REPLY @28 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN OUTSIE
SAY @29 
IF ~~ THEN DO ~SetGlobal("7XKIVAJoined","LOCALS",0)EscapeAreaMove("AR1200",2444,577,9)~
EXIT
END



IF ~Global("7XKIVAJoined","GLOBAL",0)~ THEN BEGIN BackIN
SAY @30
IF ~~ THEN REPLY @25 EXIT
IF ~~ THEN REPLY @24 GOTO ComeAlong2
END


IF ~~ THEN BEGIN ComeAlong2
SAY @19
IF ~~ THEN DO ~SetGlobal("7XKIVAJoined","GLOBAL",1)
JoinParty()~ EXIT
END
