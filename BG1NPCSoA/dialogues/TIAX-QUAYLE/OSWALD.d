BEGIN ~OSWALD~

IF ~IsGabber("Jan")~ THEN BEGIN OswaldJan1
SAY @0
IF ~~ THEN EXTERN ~JANJ~ OswaldJan2
END

IF ~Global("OSWALDF","GLOBAL",2)~ THEN BEGIN OSWALD-airship
   SAY @1
=
@2
=
@3
IF ~~ THEN REPLY @4 DO ~StartStore("7xoswald",LastTalkedToBy())SetGlobal("OSWALDF","GLOBAL",3)~ GOTO oswald3
IF ~~ THEN REPLY @5 DO ~SetGlobal("OSWALDF","GLOBAL",4)~GOTO AIRSHIPGOTO
IF ~~ THEN REPLY @6 DO ~SetGlobal("OSWALDF","GLOBAL",3)~ GOTO oswald4  
END


IF ~Global("OSWALDF","GLOBAL",3)~ THEN BEGIN OSWALDxxAIRSHIP
   SAY @7
=
@8
IF ~~ THEN REPLY @9 GOTO oswald2
IF ~~ THEN REPLY @5 DO ~SetGlobal("OSWALDF","GLOBAL",4)~GOTO AIRSHIPGOTO
IF ~~ THEN REPLY @10 GOTO oswald3
IF ~~ THEN REPLY @11 GOTO oswald4  
END




IF ~~ THEN BEGIN AIRSHIPGOTO
   SAY @12
=
@13
IF ~~ THEN DO ~
ClearAllActions()
StartCutSceneMode()
StartCutScene("ar01tq")~
EXIT
END

IF ~Global("OSWALDF","GLOBAL",4)~ THEN BEGIN OSWALDxxAIRSHIPWhere
   SAY @14
IF ~OR(2) GlobalGT("loganjob1","GLOBAL",0) GlobalGT("loganrefused","GLOBAL",0)~ THEN REPLY @52 DO ~SetGlobal("OSWALDF","GLOBAL",3)~GOTO 7xTrademeet
IF ~GlobalGT("UmarCut","Global",0)~ THEN REPLY @53 DO ~SetGlobal("OSWALDF","GLOBAL",3)~GOTO 7xUmarHills
IF ~~ THEN REPLY @54 GOTO 7xNoShip1
IF ~~ THEN REPLY @55 GOTO 7xNoShip1
IF ~~ THEN REPLY @56 GOTO 7xNoShip1
IF ~~ THEN REPLY @57 GOTO 7xNoShip1
IF ~~ THEN REPLY @58 GOTO 7xNoShip1
IF ~~ THEN REPLY @59 GOTO 7xNoShip1
IF ~~ THEN REPLY @60 GOTO 7xNoShip1
IF ~~ THEN REPLY @61 GOTO 7xNoShip1
IF ~~ THEN REPLY @62 GOTO 7xNoShip1
IF ~~ THEN REPLY @63 GOTO 7xNoShip2
IF ~~ THEN REPLY @15 DO ~SetGlobal("OSWALDF","GLOBAL",3)~GOTO CHaNGEDMind
END

IF ~~ THEN BEGIN 7xNoShip1
SAY @64
IF ~~ THEN GOTO OSWALDxxAIRSHIPWhere
END

IF ~~ THEN BEGIN 7xNoShip2
SAY @65
IF ~~ THEN GOTO OSWALDxxAIRSHIPWhere
END

IF ~~ THEN BEGIN CHaNGEDMind
   SAY @16
=
@17
IF ~~ THEN DO ~
ClearAllActions()
StartCutSceneMode()
StartCutScene("ar01tZ")~
EXIT
END

IF ~~ THEN BEGIN 7xTrademeet
   SAY @16
IF ~~ THEN DO ~
ClearAllActions()
PlaySound("7xaero")
StartCutSceneMode()
Wait(4)
StartCutScene("7xtradmt")~
EXIT
END

IF ~~ THEN BEGIN 7xUmarHills
   SAY @16
IF ~~ THEN DO ~
ClearAllActions()
PlaySound("7xaero")
StartCutSceneMode()
Wait(4)
StartCutScene("7xumarh")~
EXIT
END

IF ~Global("OSWALDF","GLOBAL",0)~ THEN BEGIN oswald1
   SAY @18
=
@19
=
@20
IF ~~ THEN REPLY @9 DO ~SetGlobal("OSWALDF","GLOBAL",1)~ GOTO oswald2
IF ~~ THEN REPLY @21 DO ~StartStore("7xoswald",LastTalkedToBy())SetGlobal("OSWALDF","GLOBAL",1)~ GOTO oswald3
IF ~~ THEN REPLY @22 DO ~SetGlobal("OSWALDF","GLOBAL",1)~ GOTO oswald4  
END

IF ~~ THEN BEGIN oswald4
   SAY @23
       IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN oswald3
SAY @24
IF ~~ THEN DO ~StartStore("7xoswald",LastTalkedToBy())~ EXIT
END


IF ~~ THEN BEGIN oswald2
SAY @25 
=
@26
IF ~~ THEN REPLY @21 DO ~StartStore("7xoswald",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @22 GOTO oswald4  
END

IF ~Global("OSWALDF","GLOBAL",1)~ THEN BEGIN OSWALD2-1
   SAY @7
=
@8
IF ~~ THEN REPLY @9 GOTO oswald2
IF ~~ THEN REPLY @10 GOTO oswald3
IF ~~ THEN REPLY @11 GOTO oswald4  
END



IF ~~ THEN BEGIN OswaldJan3
SAY @27
=
@28IF ~~ THEN EXTERN ~JANJ~ TURNIPNEW
END

IF ~~ THEN BEGIN TURNIPNEW2
SAY @29
=
@30
IF ~~ THEN EXTERN ~JANJ~ OswaldJan4
END

IF ~~ THEN BEGIN OswaldJan5
SAY @31
IF ~~ THEN EXTERN ~JANJ~ OswaldJan6
END



IF ~~ THEN BEGIN OswaldJan7
SAY @32
=
@33
=
@34
IF ~~ THEN EXTERN ~JANJ~ OswaldJan8
END


IF ~~ THEN BEGIN OswaldJan9
SAY @35
=
@36
IF ~~ THEN REPLY @10 DO ~SetGlobal("OSWALDJAN","GLOBAL",1)~ GOTO oswald3
IF ~~ THEN REPLY @11 DO ~SetGlobal("OSWALDJAN","GLOBAL",1)~ GOTO oswald4  
END


IF WEIGHT #-1 ~Global("OSWALDJAN","GLOBAL",1)IsGabber("Jan")~ THEN BEGIN NewJan1
SAY @37
IF ~~ THEN EXTERN ~JANJ~ TURNIPNEWx
END

IF ~~ THEN BEGIN TURNIPNEWx2
SAY @38
=
@39
IF ~~ THEN EXTERN ~JANJ~ TURNIPNEWx3
END

IF ~~ THEN BEGIN TURNIPNEWx4
SAY @40
=
@41
IF ~~ THEN REPLY @10 GOTO oswald3
IF ~~ THEN REPLY @11 GOTO oswald4  
END

/////////////////////////////////////////////////////////////////////////////////////////////////
APPEND JANJ
IF ~~ THEN BEGIN OswaldJan2
SAY @42
=
@43
=
@44
IF ~~ THEN EXTERN ~OSWALD~ OswaldJan3
END
END



APPEND JANJ
IF ~~ THEN BEGIN OswaldJan4
SAY @45
=
@46
IF ~~ THEN EXTERN ~OSWALD~ OswaldJan5
END
END

APPEND JANJ
IF ~~ THEN BEGIN OswaldJan6
SAY @47
IF ~~ THEN EXTERN ~OSWALD~ OswaldJan7
END
END

APPEND JANJ
IF ~~ THEN BEGIN OswaldJan8
SAY @48
IF ~~ THEN EXTERN ~OSWALD~ OswaldJan9
END
END

APPEND JANJ
IF ~~ THEN BEGIN TURNIPNEW
SAY @49
IF ~~ THEN EXTERN ~OSWALD~ TURNIPNEW2
END
END


APPEND JANJ
IF ~~ THEN BEGIN TURNIPNEWx
SAY @50
IF ~~ THEN EXTERN ~OSWALD~ TURNIPNEWx2
END
END

APPEND JANJ
IF ~~ THEN BEGIN TURNIPNEWx3
SAY @51
IF ~~ THEN EXTERN ~OSWALD~ TURNIPNEWx4
END
END