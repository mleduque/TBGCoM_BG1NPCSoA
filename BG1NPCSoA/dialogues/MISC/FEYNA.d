BEGIN ~FEYNA~

IF ~Global("FEYNA","GLOBAL",0)~ THEN BEGIN FEYNA1
   SAY @0
=
@1
=
@2
=
@3
=
@4
=
@5
IF ~~ THEN REPLY @6 GOTO Stfu
IF ~~ THEN REPLY @7 GOTO Stfu
IF ~~ THEN REPLY @8 GOTO FEYNA2
IF ~~ THEN REPLY @9 GOTO GOLD
END

IF ~~ THEN BEGIN Stfu
  SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GOLD
SAY @11
IF ~~ THEN REPLY @7 GOTO Stfu
IF ~~ THEN REPLY @8 GOTO FEYNA2
END

IF ~~ THEN BEGIN FEYNA2
  SAY @12
IF ~~ THEN REPLY @13 GOTO Stfu
IF ~~ THEN REPLY @14 DO ~SetGlobal("FeynaQuest","GLOBAL",1)SetGlobal("FEYNA","GLOBAL",1)AddJournalEntry(@1797,QUEST)~ EXIT
END

IF ~Global("FEYNA","GLOBAL",1)~ THEN BEGIN WAITING
SAY @15
IF ~Dead("7XCRE27")~ THEN REPLY @16 GOTO QUESTFINISH
IF ~~ THEN REPLY @17 GOTO HURRY
END

IF ~~ THEN BEGIN HURRY
  SAY @18
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN QUESTFINISH
SAY @19
IF ~~ THEN DO ~TakePartyItem("KGSTO5x")EraseJournalEntry(@1797)SetGlobal("FEYNA","GLOBAL",2)~ GOTO QUESTFINISH2
END 

IF ~~ THEN BEGIN QUESTFINISH2
SAY @20
IF ~~ THEN DO ~AddJournalEntry(@1798,QUEST_DONE)
AddexperienceParty(2000)
GiveItemCreate("PLATNUM",PLAYER1,750,0,0)~ GOTO Taraufein1
END

IF ~~ THEN BEGIN Taraufein1
SAY @21
IF ~~ THEN DO ~CreateCreature("7XCRE84",[1970.1270],12)SetGlobal("FEYNA","GLOBAL",77)~ EXIT
END

IF ~!Dead("7XCRE84")Global("FEYNA","GLOBAL",77)~ THEN BEGIN Taraufein2
SAY @22
IF ~~ THEN EXTERN ~TARAUFEI~ Taraufein3
END


IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,1)~ THEN BEGIN RandomTalks1 
SAY @23
=
@24
=
@25
=
@26
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,2)~ THEN BEGIN RandomTalks2 
SAY @27
=
@28
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,3)~ THEN BEGIN RandomTalks3 
SAY @29
=
@30
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,4)~ THEN BEGIN RandomTalks4 
SAY @31
=
@32
=
@33
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,5)~ THEN BEGIN RandomTalks5 
SAY @34
=
@35
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,6)~ THEN BEGIN RandomTalks6 
SAY @36
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,7)~ THEN BEGIN RandomTalks7 
SAY @37
=
@38 
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,8)~ THEN BEGIN RandomTalks8 
SAY @39 
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,9)~ THEN BEGIN RandomTalks9 
SAY @40 
IF ~~ THEN EXIT
END

IF ~Global("FEYNA","GLOBAL",2)RandomNum(10,10)~ THEN BEGIN RandomTalks10 
SAY @41 
IF ~~ THEN EXIT
END

BEGIN ~TARAUFEI~

APPEND TARAUFEI
IF ~~ THEN BEGIN Taraufein3
SAY @42 
IF ~~ THEN DO ~SetGlobal("FEYNA","GLOBAL",2)~ EXIT
END
END