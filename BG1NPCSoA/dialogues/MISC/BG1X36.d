BEGIN ~BG1X36~

IF ~AreaCheck("arBGX7")Global("ArthurBG1x36","GLOBAL",0)~ THEN BEGIN INTRO
SAY @0
=
@1
IF ~~ THEN REPLY @2 GOTO INTRO2
IF ~~ THEN REPLY @3 GOTO INTRO2
IF ~~ THEN REPLY @4 GOTO INTRO2b
END 


IF ~~ THEN BEGIN INTRO2
SAY @5
IF ~~ THEN REPLY @6 + INTRO2c
IF ~~ THEN REPLY @7 + INTRO2c
IF ~~ THEN REPLY @8 + INTRO2d
IF ~~ THEN REPLY @9 + INTRO2e
IF ~~ THEN REPLY @10 + INTRO2e
END

IF ~~ THEN BEGIN INTRO2b
SAY @11
IF ~~ THEN GOTO INTRO2e
END


IF ~~ THEN BEGIN INTRO2c
SAY @12
=
@13
IF ~~ THEN GOTO INTRO2e
END

IF ~~ THEN BEGIN INTRO2d
SAY @14
IF ~~ THEN GOTO INTRO2e
END


IF ~~ THEN BEGIN INTRO2e
SAY @15
=
@16
IF ~~ THEN REPLY @17 DO ~SetGlobal("ArthurBG1x36","GLOBAL",1)~ GOTO Talk1-f
IF ~~ THEN REPLY @18 DO ~SetGlobal("ArthurBG1x36","GLOBAL",1)~ GOTO Talk1-f
IF ~~ THEN REPLY @19 DO ~SetGlobal("ArthurBG1x36","GLOBAL",1)~ EXIT
IF ~~ THEN REPLY @20 DO ~SetGlobal("ArthurBG1x36","GLOBAL",1)~ GOTO Talk1-f
IF ~~ THEN REPLY @21 DO ~SetGlobal("ArthurBG1x36","GLOBAL",1)~ GOTO Talk1-f
END


IF ~AreaCheck("arBGX2")Global("ArthurBG1x36","GLOBAL",0)~ THEN BEGIN INTROAlternate
SAY @22
=
@23
IF ~~ THEN REPLY @24 + INTROAlternate2
IF ~~ THEN REPLY @25 + INTROAlternate2
END

IF ~~ THEN BEGIN INTROAlternate2
SAY @26
=
@27
IF ~~ THEN REPLY @17 DO ~SetGlobal("ArthurBG1x36","GLOBAL",1)~ GOTO Talk1-f
IF ~~ THEN REPLY @18 DO ~SetGlobal("ArthurBG1x36","GLOBAL",1)~ GOTO Talk1-f
END


////////////

IF ~Global("ArthurBG1x36","GLOBAL",1)Global("MurdersSolved","GLOBAL",1)Global("ArthurMurder","GLOBAL",0)~ THEN BEGIN ArthurMurdersTalk1
SAY @28
IF ~~ THEN DO ~SetGlobal("ArthurMurder","GLOBAL",1)~ EXIT
END


IF ~Global("ArthurBG1x36","GLOBAL",1)Global("ArthurValygar","GLOBAL",0)InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN BEGIN ValygarTalk1
SAY @29
=
@30
IF ~~ THEN DO ~SetGlobal("ArthurValygar","GLOBAL",1)~ EXTERN ~BVALYGA~ ValygarTalk2
END

IF ~~ THEN BEGIN ValygarTalk3
SAY @31
IF ~~ THEN GOTO Talk1-f
END

IF ~Global("ArthurBG1x36","GLOBAL",1)Global("ArthurNalia","GLOBAL",0)InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BEGIN NaliaTalk1
SAY @32
=
@33
IF ~~ THEN DO ~SetGlobal("ArthurNalia","GLOBAL",1)~ EXTERN ~BNALIA~ NaliaTalk2
END


IF ~~ THEN BEGIN NaliaTalk3
SAY @34
=
@35
IF ~~ EXTERN ~BNALIA~ NaliaTalk4
END

IF ~~ THEN BEGIN NaliaTalk5
SAY @36
=
@37
IF ~~ THEN GOTO Talk1-f
END

IF ~Global("ArthurBG1x36","GLOBAL",1)Global("ArthurAnomen","GLOBAL",0)InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BEGIN ANOMENTalk1
SAY @38
IF ~~ THEN DO ~SetGlobal("ArthurAnomen","GLOBAL",1)~ EXTERN ~BANOMEN~ ANOMENTalk2
END

IF ~~ THEN BEGIN ANOMENTalk3
SAY @39
=
@40
IF ~~ THEN DO ~~ EXTERN ~BANOMEN~ ANOMENTalk4
END

IF ~~ THEN BEGIN ANOMENTalk5
SAY @41
IF ~~ THEN EXIT
END


IF ~Global("ArthurBG1x36","GLOBAL",1)RandomNum(2,1)~ THEN BEGIN Talk1
SAY @42
=
@43
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END


IF ~~ THEN BEGIN Talk1-a
SAY @53
=
@54
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END



IF ~~ THEN BEGIN Talk1-b
SAY @55
=
@56
=
@57
=
@58
=
@59
=
@60
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END

IF ~~ THEN BEGIN Talk1-c
SAY @61
=
@62
=
@63
=
@64
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END


IF ~~ THEN BEGIN Talk1-d
SAY @65
=
@66
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END

IF ~~ THEN BEGIN Talk1-e
SAY @67
=
@68
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @52 + Talk1-f
END

IF ~~ THEN BEGIN Talk1-f
SAY @69
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GOLDSWORDQUEST
SAY @70
=
@71
=
@72
=
@73
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END

IF ~~ THEN BEGIN HARLEQUINQUEST
SAY @74
=
@75
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("BG1X5","GLOBAL",3)~ THEN REPLY @46 GOTO RICSTERQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END

IF ~~ THEN BEGIN RICSTERQUEST
SAY @76
=
@77
=
@78
IF ~Global("BG1X1Quest","GLOBAL",1)~ THEN REPLY @44 GOTO GOLDSWORDQUEST
IF ~Global("DFalconQuest","GLOBAL",1)~ THEN REPLY @45 GOTO HARLEQUINQUEST
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @48 + Talk1-b
IF ~~ THEN REPLY @49 + Talk1-c
IF ~~ THEN REPLY @50 + Talk1-d
IF ~~ THEN REPLY @51 + Talk1-e
IF ~~ THEN REPLY @52 + Talk1-f
END

IF ~Global("ArthurBG1x36","GLOBAL",1)RandomNum(2,2)~ THEN BEGIN NewTalk2
SAY @79
IF ~Global("TalkedToJaheira","LOCALS",1)~ THEN REPLY @80 GOTO NewTalkBaronP
IF ~Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @81 GOTO NewTalkBMurder
IF ~!Dead("KalahIllusion")~ THEN REPLY @82 GOTO NewTalkCircus
IF ~Global("GaalJob","GLOBAL",0)~ THEN REPLY @83 GOTO NewTalkUEye
IF ~~ THEN REPLY @84 GOTO NewTalkSphere
IF ~~ THEN REPLY @85 GOTO NewTalkSuldanessellar 
IF ~~ THEN REPLY @86 GOTO NewTalkExit
IF ~~ THEN REPLY @87 GOTO NewTalkExit
END

IF ~~ THEN BEGIN NewTalkExit 
SAY @88
IF ~~ THEN GOTO Talk1-f
END

IF ~~ THEN BEGIN NewTalkBaronP
SAY @89
=
@90
=
@91
=
@92
IF ~Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @81 GOTO NewTalkBMurder
IF ~!Dead("KalahIllusion")~ THEN REPLY @82 GOTO NewTalkCircus
IF ~Global("GaalJob","GLOBAL",0)~ THEN REPLY @83 GOTO NewTalkUEye
IF ~~ THEN REPLY @84 GOTO NewTalkSphere
IF ~~ THEN REPLY @85 GOTO NewTalkSuldanessellar 
IF ~~ THEN REPLY @86 GOTO NewTalkExit
IF ~~ THEN REPLY @87 GOTO NewTalkExit
END

IF ~~ THEN BEGIN NewTalkBMurder
SAY @93
=
@94
=
@95
=
@96 
IF ~Global("TalkedToJaheira","LOCALS",1)~ THEN REPLY @80 GOTO NewTalkBaronP
IF ~!Dead("KalahIllusion")~ THEN REPLY @82 GOTO NewTalkCircus
IF ~Global("GaalJob","GLOBAL",0)~ THEN REPLY @83 GOTO NewTalkUEye
IF ~~ THEN REPLY @84 GOTO NewTalkSphere
IF ~~ THEN REPLY @85 GOTO NewTalkSuldanessellar 
IF ~~ THEN REPLY @86 GOTO NewTalkExit
IF ~~ THEN REPLY @87 GOTO NewTalkExit
END

IF ~~ THEN BEGIN NewTalkCircus
SAY @97
=
@98
=
@99
IF ~Global("TalkedToJaheira","LOCALS",1)~ THEN REPLY @80 GOTO NewTalkBaronP
IF ~Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @81 GOTO NewTalkBMurder
IF ~Global("GaalJob","GLOBAL",0)~ THEN REPLY @83 GOTO NewTalkUEye
IF ~~ THEN REPLY @84 GOTO NewTalkSphere
IF ~~ THEN REPLY @85 GOTO NewTalkSuldanessellar 
IF ~~ THEN REPLY @86 GOTO NewTalkExit
IF ~~ THEN REPLY @87 GOTO NewTalkExit
END

IF ~~ THEN BEGIN NewTalkUEye
SAY @100
=
@101
=
@102
IF ~Global("TalkedToJaheira","LOCALS",1)~ THEN REPLY @80 GOTO NewTalkBaronP
IF ~Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @81 GOTO NewTalkBMurder
IF ~!Dead("KalahIllusion")~ THEN REPLY @82 GOTO NewTalkCircus
IF ~~ THEN REPLY @84 GOTO NewTalkSphere
IF ~~ THEN REPLY @85 GOTO NewTalkSuldanessellar 
IF ~~ THEN REPLY @86 GOTO NewTalkExit
IF ~~ THEN REPLY @87 GOTO NewTalkExit
END

IF ~~ THEN BEGIN NewTalkSphere
SAY @103
=
@104
=
@105
IF ~Global("TalkedToJaheira","LOCALS",1)~ THEN REPLY @80 GOTO NewTalkBaronP
IF ~Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @81 GOTO NewTalkBMurder
IF ~!Dead("KalahIllusion")~ THEN REPLY @82 GOTO NewTalkCircus
IF ~Global("GaalJob","GLOBAL",0)~ THEN REPLY @83 GOTO NewTalkUEye
IF ~~ THEN REPLY @85 GOTO NewTalkSuldanessellar 
IF ~~ THEN REPLY @86 GOTO NewTalkExit
IF ~~ THEN REPLY @87 GOTO NewTalkExit
END

IF ~~ THEN BEGIN NewTalkSuldanessellar 
SAY @106
=
@107
=
@108
IF ~Global("TalkedToJaheira","LOCALS",1)~ THEN REPLY @80 GOTO NewTalkBaronP
IF ~Global("MurdersSolved","GLOBAL",0)~ THEN REPLY @81 GOTO NewTalkBMurder
IF ~!Dead("KalahIllusion")~ THEN REPLY @82 GOTO NewTalkCircus
IF ~Global("GaalJob","GLOBAL",0)~ THEN REPLY @83 GOTO NewTalkUEye
IF ~~ THEN REPLY @84 GOTO NewTalkSphere
IF ~~ THEN REPLY @86 GOTO NewTalkExit
IF ~~ THEN REPLY @87 GOTO NewTalkExit
END

APPEND BVALYGA
  IF ~~ THEN BEGIN ValygarTalk2
SAY @109 
=
@110
      IF ~~ THEN EXTERN ~BG1X36~ ValygarTalk3
  END
  END


APPEND BNALIA
  IF ~~ THEN BEGIN NaliaTalk2
SAY @111 
      IF ~~ THEN EXTERN ~BG1X36~ NaliaTalk3
  END
  
  IF ~~ THEN BEGIN NaliaTalk4
    SAY @112 
      IF ~~ THEN EXTERN ~BG1X36~ NaliaTalk5
  END
END

APPEND BANOMEN
  IF ~~ THEN BEGIN ANOMENTalk2
SAY @113 
      IF ~~ THEN EXTERN ~BG1X36~ ANOMENTalk3
  END
  
  IF ~~ THEN BEGIN ANOMENTalk4
    SAY @114 
      IF ~~ THEN EXTERN ~BG1X36~ ANOMENTalk5
  END
END



BEGIN ~BG1X37~


IF ~AreaCheck("arBGX7")Global("MaggieBG1x37","GLOBAL",0)~ THEN BEGIN INTRO
SAY @115
=
@116
IF ~~ THEN DO ~SetGlobal("MaggieBG1x37","GLOBAL",1)~ EXIT
END


IF ~AreaCheck("arBGX2")Global("MaggieBG1x37","GLOBAL",0)~ THEN BEGIN INTROAlternate
SAY @117
IF ~~ THEN DO ~SetGlobal("MaggieBG1x37","GLOBAL",1)~ EXIT
END

IF ~Global("MaggieBG1x37","GLOBAL",1)Global("MaggieKeldorn","GLOBAL",0)InParty("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN BEGIN kELDORNTalk1
SAY @118 
IF ~~ THEN DO ~SetGlobal("MaggieKeldorn","GLOBAL",1)~ EXTERN ~BKELDOR~ kELDORNTalk2
END


IF ~~ THEN BEGIN kELDORNTalk3
SAY @119 
IF ~~ THEN EXTERN ~BKELDOR~ kELDORNTalk4
END

IF ~~ THEN BEGIN kELDORNTalk5
SAY @120 
IF ~~ THEN EXIT
END

IF ~Global("MaggieBG1x37","GLOBAL",1)Global("MurdersSolved","GLOBAL",1)Global("MaggieMurder","GLOBAL",0)~ THEN BEGIN Talk2
SAY @121
IF ~~ THEN DO ~SetGlobal("MaggieMurder","GLOBAL",1)~ EXIT
END

IF ~Global("MaggieBG1x37","GLOBAL",1)RandomNum(2,1)~ THEN BEGIN Talk1
SAY @122
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @123 + Talk1-b
IF ~~ THEN REPLY @124 + Talk1-c
IF ~~ THEN REPLY @125 + Talk1-d
IF ~~ THEN REPLY @126 EXIT 
END


IF ~~ THEN BEGIN Talk1-a
SAY @127
=
@128
IF ~~ THEN REPLY @123 + Talk1-b
IF ~~ THEN REPLY @124 + Talk1-c
IF ~~ THEN REPLY @125 + Talk1-d
IF ~~ THEN REPLY @126 EXIT
END

IF ~~ THEN BEGIN Talk1-b
SAY @129
=
@130
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @124 + Talk1-c
IF ~~ THEN REPLY @125 + Talk1-d
IF ~~ THEN REPLY @126 EXIT
END

IF ~~ THEN BEGIN Talk1-c
SAY @131
=
@132
=
@133
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @123 + Talk1-b
IF ~~ THEN REPLY @125 + Talk1-d
IF ~~ THEN REPLY @126 EXIT
END


IF ~~ THEN BEGIN Talk1-d
SAY @134
=
@135
IF ~~ THEN REPLY @47 + Talk1-a
IF ~~ THEN REPLY @124 + Talk1-c
IF ~~ THEN REPLY @123 + Talk1-b
IF ~~ THEN REPLY @126 EXIT
END



IF ~Global("MaggieBG1x37","GLOBAL",1)RandomNum(2,2)~ THEN BEGIN Talk2
SAY @136
=
@137
IF ~~ THEN REPLY @138 GOTO Talk2-5
IF ~~ THEN REPLY @139 GOTO Talk2-1
IF ~~ THEN REPLY @140 GOTO Talk2-2
IF ~~ THEN REPLY @141 GOTO Talk2-3
IF ~~ THEN REPLY @142 GOTO Talk2-4
IF ~~ THEN REPLY @143 GOTO SUPER
END

IF ~~ THEN BEGIN SUPER
SAY @144
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN Talk2-5
SAY @145
=
@146
IF ~Gender(Player1,MALE)~ THEN REPLY @147 GOTO WOMEN
IF ~Gender(Player1,FEMALE)~ THEN REPLY @147 GOTO WOMEN2
IF ~~ THEN REPLY @148 GOTO BOTH
IF ~Gender(Player1,MALE)~ THEN REPLY @149 GOTO MEN
IF ~Gender(Player1,FEMALE)~ THEN REPLY @149 GOTO MEN2
IF ~~ THEN REPLY @150 GOTO Talk2-5x
END

IF ~~ THEN BEGIN WOMEN
SAY @151
=
@152
=
@153
=
@154
IF ~~ THEN GOTO Talk2-5x
END

IF ~~ THEN BEGIN WOMEN2
SAY @155
=
@156
=
@157
IF ~~ THEN GOTO Talk2-5x
END

IF ~~ THEN BEGIN MEN
SAY @158
=
@159
=
@160
=
@161
IF ~~ THEN GOTO Talk2-5x
END

IF ~~ THEN BEGIN MEN2
SAY @162
=
@163
=
@164
IF ~~ THEN GOTO Talk2-5x
END

IF ~~ THEN BEGIN BOTH
SAY @165
=
@166
=
@167
IF ~~ THEN GOTO Talk2-5x
END


IF ~~ THEN BEGIN Talk2-5x
SAY @168
IF ~~ THEN REPLY @139 GOTO Talk2-1
IF ~~ THEN REPLY @140 GOTO Talk2-2
IF ~~ THEN REPLY @141 GOTO Talk2-3
IF ~~ THEN REPLY @142 GOTO Talk2-4
IF ~~ THEN REPLY @143 GOTO SUPER
END

IF ~~ THEN BEGIN Talk2-1
SAY @169
=
@170
IF ~~ THEN REPLY @138 GOTO Talk2-5
IF ~~ THEN REPLY @140 GOTO Talk2-2
IF ~~ THEN REPLY @141 GOTO Talk2-3
IF ~~ THEN REPLY @142 GOTO Talk2-4
IF ~~ THEN REPLY @143 GOTO SUPER
END

IF ~~ THEN BEGIN Talk2-2
SAY @171
=
@172
=
@173
IF ~~ THEN REPLY @138 GOTO Talk2-5
IF ~~ THEN REPLY @139 GOTO Talk2-1
IF ~~ THEN REPLY @141 GOTO Talk2-3
IF ~~ THEN REPLY @142 GOTO Talk2-4
IF ~~ THEN REPLY @143 GOTO SUPER
END

IF ~~ THEN BEGIN Talk2-3
SAY @174
=
@175
=
@176
IF ~~ THEN REPLY @138 GOTO Talk2-5
IF ~~ THEN REPLY @139 GOTO Talk2-1
IF ~~ THEN REPLY @140 GOTO Talk2-2
IF ~~ THEN REPLY @142 GOTO Talk2-4
IF ~~ THEN REPLY @143 GOTO SUPER
END

IF ~~ THEN BEGIN Talk2-4
SAY @177
=
@178
=
@179
IF ~~ THEN REPLY @138 GOTO Talk2-5
IF ~~ THEN REPLY @139 GOTO Talk2-1
IF ~~ THEN REPLY @140 GOTO Talk2-2
IF ~~ THEN REPLY @141 GOTO Talk2-3
IF ~~ THEN REPLY @143 GOTO SUPER
END


APPEND BKELDOR
  IF ~~ THEN BEGIN kELDORNTalk2
SAY @180 
      IF ~~ THEN EXTERN ~BG1X37~ kELDORNTalk3
  END
  
  IF ~~ THEN BEGIN kELDORNTalk4
    SAY @181 
      IF ~~ THEN EXTERN ~BG1X37~ kELDORNTalk5
  END
END