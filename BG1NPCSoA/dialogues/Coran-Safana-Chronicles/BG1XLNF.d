BEGIN ~BG1XLNF~

IF ~Global("BG1XLNF","GLOBAL",0)InParty("7XCORAN")
!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN BEGIN INTRO
SAY @0
=
@1
IF ~~ THEN REPLY @2 DO ~SetGlobal("BG1XLNF","GLOBAL",1)~ GOTO INTRO2
IF ~~ THEN REPLY @3 DO ~SetGlobal("BG1XLNF","GLOBAL",1)~ GOTO INTRO2
END 

IF ~~ THEN BEGIN INTRO2
SAY @4
IF ~~ THEN EXTERN ~7XCoranJ~ LanfearTalk1
END

IF ~~ THEN BEGIN INTRO3
SAY @5
=
@6
IF ~!StateCheck("7XCORAN",CD_STATE_NOTVALID)InParty("7XCORAN")~ THEN EXTERN ~7XCoranJ~ LanfearTalk2
END

IF ~~ THEN BEGIN INTRO3b
SAY @7
=
@8
IF ~!StateCheck("7XCORAN",CD_STATE_NOTVALID)InParty("7XCORAN")~ THEN EXTERN ~7XCoranJ~ LanfearTalk2
END

IF ~~ THEN BEGIN INTRO4
SAY @9
=
@10
=
@11
=
@12
=
@13
IF ~~ THEN REPLY @14 GOTO INTRO5
IF ~~ THEN REPLY @15 GOTO INTRO6
IF ~~ THEN REPLY @16 GOTO INTRO6
END

IF ~~ THEN BEGIN INTRO5
SAY @17
=
@18
IF~~ THEN DO ~AddJournalEntry(@1774,QUEST)EscapeArea()~ EXTERN ~7XCoranJ~ LanfearTalk3
END

IF ~~ THEN BEGIN INTRO6
SAY @19
=
@20
IF~~ THEN DO ~AddJournalEntry(@1774,QUEST)EscapeArea()~ EXTERN ~7XCoranJ~ LanfearTalk4
END

IF ~Global("BG1XLNF","GLOBAL",1)~ THEN BEGIN QuestSTART
SAY @21
IF ~~ THEN REPLY @22 DO ~SetGlobal("BG1XLNF","GLOBAL",2)~GOTO QuestSTARTb
IF ~~ THEN REPLY @23 DO ~SetGlobal("BG1XLNF","GLOBAL",2)~GOTO QuestSTARTc
END

IF ~~ THEN BEGIN QuestSTARTb
SAY @24
IF ~~ THEN GOTO QuestSTARTc
END

IF ~~ THEN BEGIN QuestSTARTc
SAY @25
=
@26
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,GOODBUTBLUE) CreateCreature("7XCRE67",[1774.1268],0)
CreateCreature("7XCRE68",[4272.2787],0)
CreateCreatureOffScreen("7XCRE44",0) 
CreateCreatureOffScreen("7XCRE44",0)
CreateCreatureOffScreen("7XCRE44",0)
CreateCreatureOffScreen("7XCRE44",0)
CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(1)
PlaySound("EFF_M38")
CreateVisualEffectObject("SPFLESHS",Myself)Polymorph(werewolf_greater)
~EXIT
END

IF WEIGHT #-10~Global("BG1XLNF","GLOBAL",2)Dead("bg1x21")Dead("bg1x22")~ THEN BEGIN QuestDONE1
SAY @27
=
@28
=
@29
=
@30
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,NEUTRAL)  EraseJournalEntry(@1774)
AddJournalEntry(@1775,QUEST_DONE)
SetGlobal("BG1XLNF","GLOBAL",3)
AddexperienceParty("25000")
CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(1)
PlaySound("EFF_M38")
CreateVisualEffectObject("SPFLESHS",Myself)
Polymorph(harlot_woman)~
EXIT
END

IF WEIGHT #-10~Global("BG1XLNF","GLOBAL",3)~ THEN BEGIN QuestDONE2
SAY @31
IF ~~ THEN DO ~GiveItemCreate("BG1NPC3",PLAYER1,0,0,0)SetGlobal("BG1XLNF","GLOBAL",4)~ EXIT
END

IF WEIGHT #-20~RandomNum(3,1)Global("BG1XLNF","GLOBAL",4)~ THEN BEGIN Randomtalk1
SAY @32
IF ~~ THEN EXIT
END

IF WEIGHT #-20~RandomNum(3,2)Global("BG1XLNF","GLOBAL",4)~ THEN BEGIN Randomtalk2
SAY @33
IF ~~ THEN EXIT
END

IF WEIGHT #-20~RandomNum(3,3)Global("BG1XLNF","GLOBAL",4)~ THEN BEGIN Randomtalk3
SAY @34
IF ~~ THEN EXIT
END

APPEND 7XCoranJ
IF ~~ THEN BEGIN LanfearTalk1
SAY @35
=
@36
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN EXTERN ~7XSafaJ~ LanfearComment2
IF ~!InParty("7XSAFA")~ THEN EXTERN ~BG1XLNF~ INTRO3
END
END

APPEND 7XCoranJ
IF ~~ THEN BEGIN LanfearTalk2
SAY @37
IF ~~ THEN EXTERN ~BG1XLNF~ INTRO4
END
END

APPEND 7XCoranJ
IF ~~ THEN BEGIN LanfearTalk3
SAY @38
=
@39
IF ~~ THEN EXIT
END
END


APPEND 7XCoranJ
IF ~~ THEN BEGIN LanfearTalk4
SAY @40
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN EXTERN ~7XSafaJ~ LanfearComment
IF ~~ THEN EXIT
END
END

APPEND 7XSafaJ
IF ~~ THEN BEGIN LanfearComment
SAY @41
IF ~InParty("7XSAFA")!StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN EXIT
END
END

APPEND 7XSafaJ
IF ~~ THEN BEGIN LanfearComment2
SAY @42
IF ~~ THEN EXTERN ~BG1XLNF~ INTRO3b
END
END
