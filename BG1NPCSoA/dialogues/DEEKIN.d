BEGIN ~DEEKIN~

IF ~Global("DEEKIN","GLOBAL",0)~ THEN BEGIN DEEKIN1
   SAY @0
=
@1 
IF ~~ THEN REPLY @2 GOTO store1
IF ~~ THEN REPLY @3 EXIT  
END

IF ~~ THEN BEGIN store1
   SAY @4
IF ~~ THEN DO ~SetGlobal("DEEKIN","GLOBAL",1)StartStore("DEEKIN",LastTalkedToBy())~ EXIT
END



IF WEIGHT #-2 ~Global("DEEKIN","GLOBAL",1)~ THEN BEGIN DEEKIN2
   SAY @5
=
@6
=
@7
IF ~~ THEN REPLY @8 DO ~SetGlobal("DeekinJoined","GLOBAL",1)~ GOTO JOIN1
IF ~~ THEN REPLY @9 GOTO store1
IF ~~ THEN REPLY @10 EXIT  
END

IF ~~ THEN BEGIN JOIN1
   SAY @11
IF ~~ THEN DO ~JoinParty()~ EXIT
END

/////////////////////////////////////////////////////////////////////////////////////////////////////////

BEGIN ~DEEKINP~

IF ~Global("DeekinJoined","GLOBAL",1)~ THEN BEGIN leave
  SAY @129
IF ~~ THEN REPLY @130 GOTO JOIN2
IF ~~ THEN REPLY @131 + Rejected2
END
  
IF ~~ THEN BEGIN JOIN2
   SAY @11
IF ~~ THEN DO ~JoinParty()~ EXIT
END



IF ~~ THEN BEGIN store2
   SAY @132 
IF ~~ THEN DO ~StartStore("DEEKIN",LastTalkedToBy())~ EXIT
END


IF ~~ Rejected2
SAY @133
=
@134
IF ~~ THEN REPLY @135 DO ~SetGlobal("DeekinJoined","GLOBAL",0)EscapeAreaMove("AR0400",1435,2909,13)~ EXIT
IF ~~ THEN REPLY @136 + WaitHere
END

IF ~~ WaitHere
SAY @137 
IF ~~ THEN DO ~SetGlobal("DeekinJoined","GLOBAL",2)~ EXIT
END



IF ~Global("DeekinJoined","LOCALS",0)~ THEN BEGIN rejoin
  SAY @138
IF ~~ THEN REPLY @139 DO
~SetGlobal("DeekinJoined","GLOBAL",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @9 GOTO store2
IF ~~ THEN REPLY @140 EXIT
END 

IF ~Global("DeekinJoined","LOCALS",2)~ THEN BEGIN WaitHere2
  SAY @141
IF ~~ THEN REPLY @142 EXIT
IF ~~ THEN REPLY @143 DO ~SetGlobal("DeekinJoined","GLOBAL",1)~ GOTO JOIN2
END

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

BEGIN ~DEEKINJ~

I_C_T BMERCH1 2 Deekinbmerch1-2
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @12
END

INTERJECT_COPY_TRANS BOY1 2 DeekinBOY1-2
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@13
END

INTERJECT_COPY_TRANS HENDAK 1 DeekinHENDAK1
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@14
END

INTERJECT_COPY_TRANS EDWIN 8 DeekinEDWIN8
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@15
== EDWIN @16 
END

INTERJECT_COPY_TRANS EDWIN 30 DeekinEDWIN30
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@17
== EDWIN @18
END

INTERJECT_COPY_TRANS GAAL 4 DeekinGAAL4
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@19
END

INTERJECT_COPY_TRANS NALIA 109 DeekinNALIA109
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@20
END

INTERJECT_COPY_TRANS KALAH2 7 DeekinKALAH2-7
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@21
== KALAH2 @22
END

INTERJECT_COPY_TRANS KALAH2 8 DeekinKALAH2-8
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@21
== KALAH2 @22
END


INTERJECT_COPY_TRANS KALAH2 9 DeekinKALAH2-9
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@21
== KALAH2 @22
END

INTERJECT_COPY_TRANS GARREN 1 DeekinGARREN1
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @23
END

INTERJECT_COPY_TRANS FIRKRA02 21 DeekinFIRKRA02-21
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@24
END

INTERJECT_COPY_TRANS LYROS 24 DeekinLYROS24
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@25
END

INTERJECT_COPY_TRANS MAEVAR 31 DeekinMAEVAR31
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@26
END

INTERJECT_COPY_TRANS SCSARLES 11 DeekinSCSARLES11
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@27
END

INTERJECT_COPY_TRANS SCJERLIA 12 DeekinSCJERLIA12
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@28
END

INTERJECT_COPY_TRANS UHMAY01 18 DeekinUHMAY01-18
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@29
END

INTERJECT_COPY_TRANS BODHI 6 DeekinBODHI6
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@30
END

INTERJECT_COPY_TRANS PPSAEM 53 DeekinPPSAEM53
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@31
END

INTERJECT_COPY_TRANS SAHPR1 12 DeekinSAHPR1-12
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@32
END

INTERJECT_COPY_TRANS SAHBAR03 1 DeekinSAHBAR03-1
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @33
END

INTERJECT_COPY_TRANS TORGAL 15 DeekinTorgal-15
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @34
END

INTERJECT_COPY_TRANS TORGAL 0 DeekinTorgal-0
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @35
=
@36
END

I_C_T UDkuo01 0 DeekinUDkuo01-0
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@37
=
@38
END


INTERJECT_COPY_TRANS UDDROW22 0 DeekinUDDROW22-0
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @39
END

INTERJECT_COPY_TRANS UDDROW07 1 DeekinUDDROW07-1
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @40
END

INTERJECT_COPY_TRANS UDDROW08 0 DeekinUDDROW08-0
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
 @40
END

INTERJECT_COPY_TRANS FIRKRA02 0 DeekinFIRKRA02-0
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@35
=
@36 
END

I_C_T FIRKRA02 15 DeekinFIRKRA02-15
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN
@41
END

I_C_T PLAYER1 25 DeekinPlayer1-25
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN @232
END

I_C_T HELLJON 7 DeekinHELLJON-7
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~THEN @233
END

INTERJECT PLAYER1 33 Deekin_TreeOfLife
== PLAYER1 IF ~InParty("DEEKIN")!StateCheck("DEEKIN",CD_STATE_NOTVALID)~ THEN @225
END
++ @226 EXTERN DEEKINJ Deekin_TreeOfLife1
++ @228 EXTERN DEEKINJ Deekin_TreeOfLife2
++ @230 EXTERN DEEKINJ Deekin_TreeOfLife3


APPEND DEEKINJ
IF ~~ THEN BEGIN Deekin_TreeOfLife1
SAY @227 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Deekin_TreeOfLife2
SAY @229 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Deekin_TreeOfLife3
SAY @231 COPY_TRANS PLAYER1 33
END
END

I_C_T UDARDUL 3 DeekinUDARDUL-3
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @259
== UDARDUL IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @260
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @261
END

I_C_T PPIRENI2 29 DeekinPPIRENI2-29
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @267
== PPIRENI2 IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @263
END

I_C_T PPIRENI2 31 DeekinPPIRENI2-31
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @267
== PPIRENI2 IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @263
END

I_C_T SUJON 14 DeekinSUJON-14
== DEEKINJ IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @262
== SUJON IF~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")InMyArea("DEEKIN")~THEN @266
END


/////////////////////////////////////////////////////////////////////////////////////////////////////////////

BEGIN ~BDEEKIN~

IF WEIGHT #-5~
See([PC])
!StateCheck([PC],STATE_SLEEPING)
CombatCounter(0)
Global("DeekinAR2500", "GLOBAL",0) 
AreaCheck("AR2500")~ THEN BEGIN DeekinSunshineOutside
SAY @42
=
@43
IF ~~ THEN DO ~SetGlobal("DeekinAR2500", "GLOBAL",1)~ EXIT
END


IF WEIGHT #-5~AreaCheck("AR2100")Global("DeekinUnderDark","GLOBAL",0)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~ THEN BEGIN DEEKIN_Underdark
SAY @44
=
@45
=
@46
IF ~~ THEN DO ~SetGlobal("DeekinUnderDark","GLOBAL",1)~ EXIT
END

IF ~Global("DeekinPCTalk","GLOBAL",0)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~ THEN BEGIN PCDEEKIN_1
  SAY @47
  IF ~~ THEN REPLY @48 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_3
  IF ~~ THEN REPLY @49 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_2
IF ~~ THEN REPLY @50 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_2
IF ~~ THEN REPLY @51 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_3
END

IF ~~ THEN PCDEEKIN_3
  SAY @52
  IF ~~ THEN EXIT
END

IF ~~ THEN PCDEEKIN_2
  SAY @53
=
@54
IF ~~ THEN REPLY @55 GOTO PCDEEKIN_4
IF ~~ THEN REPLY @51 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_3
END

IF ~~ THEN PCDEEKIN_4
  SAY @56
=
@57
IF ~~ THEN REPLY @58 GOTO PCDEEKIN_5
IF ~~ THEN REPLY @59 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_3
IF ~~ THEN REPLY @51 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_3
END

IF ~~ THEN PCDEEKIN_5
  SAY @60
=
@61
IF ~~ THEN REPLY @62 GOTO PCDEEKIN_6
IF ~~ THEN REPLY @63 DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~ GOTO PCDEEKIN_3
END

IF ~~ THEN PCDEEKIN_6
  SAY @64
=
@65
=
@66
=
@67
=
@68
IF ~~ THEN DO ~SetGlobal("DeekinPCTalk","GLOBAL",1)~EXIT
END

IF ~Global("DeekinPCTalk","GLOBAL",1)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~ THEN BEGIN DeekinPCSecondTalk
SAY @69
IF ~~ THEN REPLY @70 GOTO DeekinPCSecondTalk-1
IF ~~ THEN REPLY @51 DO ~SetGlobal("DeekinPCTalk","GLOBAL",2)~ GOTO PCDEEKIN_3
END

IF ~~ THEN BEGIN DeekinPCSecondTalk-1
SAY @71
=
@72
=
@73
=
@74
=
@75
IF ~~ THEN DO ~SetGlobal("DeekinPCTalk","GLOBAL",2)~EXIT
END

IF ~Global("DeekinPCTalk","GLOBAL",2)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")~ THEN BEGIN DeekinPCThirdTalk
SAY @76
=
@77
IF ~~ THEN REPLY @78 DO ~SetGlobal("DeekinPCTalk","GLOBAL",3)~ GOTO DeekinPCThirdTalk-1
IF ~~ THEN REPLY @51 DO ~SetGlobal("DeekinPCTalk","GLOBAL",3)~ GOTO PCDEEKIN_3
END

IF ~~ THEN BEGIN DeekinPCThirdTalk-1
SAY @79
IF ~~ THEN EXIT
END
////////////////////////////////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")
!StateCheck("Minsc",CD_STATE_NOTVALID)
See("DEEKIN")
CombatCounter(0)
Global("DeekinMinsc","LOCALS",0)~ THEN BMINSC DeekinMinsc_1
@80
DO ~SetGlobal("DeekinMinsc","LOCALS",1)~
== BDEEKIN @81
== BMINSC @82
=
@83
== BDEEKIN @84
== BMINSC @85
=
@86
== BDEEKIN @87
EXIT

CHAIN IF ~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")
!StateCheck("Jan",CD_STATE_NOTVALID)CombatCounter(0)
Global("DeekinJan","LOCALS",0)~ THEN BJAN DeekinJan_1
@88
=
@89
=
@90 DO ~SetGlobal("DeekinJan","LOCALS",1)~
== BDEEKIN @91
=
@92
== BJAN @93
== BDEEKIN @94
== BJAN @95
== BDEEKIN @96
== BJAN @97
== BDEEKIN @98
== BJAN @99
EXIT

CHAIN IF ~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")
!StateCheck("Anomen",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinAnomen","LOCALS",0)~ THEN BANOMEN DeekinAnomen_1
@100
DO ~SetGlobal("DeekinAnomen","LOCALS",1)~
== BDEEKIN @101
=
@102
== BANOMEN @103
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")
CombatCounter(0)
Global("DeekinViconia","LOCALS",0)~ THEN BDEEKIN DeekinViconia_1
@104
DO ~SetGlobal("DeekinViconia","LOCALS",1)~
== BVICONI @105
=
@106
== BDEEKIN @107
== BVICONI @108
== BDEEKIN @109
EXIT

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")
CombatCounter(0)
Global("DeekinMazzy","GLOBAL",0)~ THEN BDEEKIN DeekinMazzy_1
@110
DO ~SetGlobal("DeekinMazzy","GLOBAL",1)~
== BMAZZY @111
== BDEEKIN @112
=
@113
== BMAZZY @114
== BDEEKIN @115
== BMAZZY @116
== BDEEKIN @117
== BMAZZY @118
== BDEEKIN @119
EXIT


CHAIN IF ~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")
!StateCheck("Minsc",CD_STATE_NOTVALID)
See("DEEKIN")
CombatCounter(0)Global("DeekinMinsc","LOCALS",1)~ THEN BMINSC DeekinMinsc_2
@120
=
@121
=
@122
DO ~SetGlobal("DeekinMinsc","LOCALS",2)~
== BDEEKIN @123
== BMINSC @124
== BDEEKIN @125 
== BMINSC @126
== BDEEKIN @127
=
@128
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)
See("Edwin")
CombatCounter(0)
Global("DeekinEdwin","LOCALS",0)~ THEN BDEEKIN DeekinEdwin_1
@144 DO ~SetGlobal("DeekinEdwin","LOCALS",1)~
== BEDWIN @145
== BDEEKIN @146 
== BEDWIN @147
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)
See("DEEKIN")
CombatCounter(0)
Global("DeekinKorgan","LOCALS",0)~ THEN BKORGAN DeekinKorgan_1
@148 DO ~SetGlobal("DeekinKorgan","LOCALS",1)~
== BDEEKIN @149
== BKORGAN @150
== BDEEKIN @151 
== BKORGAN @152
== BDEEKIN @153
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)
See("Keldorn")
CombatCounter(0)
Global("DeekinKeldorn","LOCALS",0)~ THEN BDEEKIN DeekinKeldorn_1
@154 DO ~SetGlobal("DeekinKeldorn","LOCALS",1)~
== BKELDOR @155
== BDEEKIN @156 
== BKELDOR @157
== BDEEKIN @158 
== BKELDOR @159
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)
See("Cernd")
CombatCounter(0)
Global("DeekinCernd","LOCALS",0)~ THEN BDEEKIN DeekinCernd_1
@160 DO ~SetGlobal("DeekinCernd","LOCALS",1)~
== BCERND @161
== BDEEKIN @162 
== BCERND @163
EXIT

CHAIN IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)
See("Viconia")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinViconia","LOCALS",1)~ THEN BDEEKIN DeekinViconia_2
@164 DO ~SetGlobal("DeekinViconia","LOCALS",2)~
== BVICONI @165
== BDEEKIN @166
== BVICONI @167
== BDEEKIN @168
== BVICONI @169
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)
See("Jaheira")
CombatCounter(0)
Global("DeekinJaheira","LOCALS",0)~ THEN BDEEKIN DeekinJaheira_1
@170 DO ~SetGlobal("DeekinJaheira","LOCALS",1)~
== BJAHEIR @171
== BDEEKIN @172 
== BJAHEIR @173
== BDEEKIN @174 
== BJAHEIR @175
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)
See("DEEKIN")
CombatCounter(0)
Global("DeekinYoshimo","LOCALS",0)~ THEN BYOSHIM DeekinYoshimo_1
@176 DO ~SetGlobal("DeekinYoshimo","LOCALS",1)~
== BDEEKIN @177 
== BYOSHIM @178
EXIT

CHAIN IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)
See("DEEKIN")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinMazzy","GLOBAL",1)~ THEN BMAZZY DeekinMazzy_2
@179 DO ~SetGlobal("DeekinMazzy","GLOBAL",2)~
== BDEEKIN @180
== BMAZZY @181
== BDEEKIN @182
== BMAZZY @183
== BDEEKIN @184
== BMAZZY @185
== BDEEKIN @186
EXIT

CHAIN IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)
See("DEEKIN")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinNeera","LOCALS",0)~ THEN IF_FILE_EXISTS BNEERA DeekinNeera_1
@187 DO ~SetGlobal("DeekinNeera","LOCALS",1)~
== BDEEKIN @188
=@189
== IF_FILE_EXISTS BNEERA @190
EXIT

CHAIN IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
See("DEEKIN")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinNalia","LOCALS",0)~ THEN BNALIA DeekinNalia_1
@191 DO ~SetGlobal("DeekinNalia","LOCALS",1)~
== BDEEKIN @192
== BNALIA @193
== BDEEKIN @194
== BNALIA @195
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)
CombatCounter(0)
See("DEEKIN")
Global("DeekinJan","LOCALS",1)~ THEN BJAN DeekinJan_2
@196 DO ~SetGlobal("DeekinJan","LOCALS",2)~
== BDEEKIN @197
== BJAN @198
== BDEEKIN @199
== BJAN @200
== BDEEKIN @201
EXIT

CHAIN IF ~InParty("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)
See("Dorn")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinDorn","LOCALS",0)~ THEN BDEEKIN DeekinDorn_1
@202 DO ~SetGlobal("DeekinDorn","LOCALS",1)~
== IF_FILE_EXISTS BDORN @203
== BDEEKIN @204
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)
See("DEEKIN")
CombatCounter(0)
Global("DeekinAnomen","LOCALS",1)~ THEN BANOMEN DeekinAnomen_2
@205 DO ~SetGlobal("DeekinAnomen","LOCALS",2)~
== BDEEKIN @206
== BANOMEN @207
== BDEEKIN @208
EXIT

CHAIN IF ~InParty("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)
See("Hexxat")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinHexxat","LOCALS",0)~ THEN BDEEKIN DeekinHexxat_1
@209 DO ~SetGlobal("DeekinHexxat","LOCALS",1)~
== IF_FILE_EXISTS BHEXXAT @210
== BDEEKIN @211
== IF_FILE_EXISTS BHEXXAT @212
== BDEEKIN @213
== IF_FILE_EXISTS BHEXXAT @214
EXIT

CHAIN IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)
See("Valygar")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinValygar","LOCALS",0)~ THEN BDEEKIN DeekinValygar_1
@215 DO ~SetGlobal("DeekinValygar","LOCALS",1)~
== BVALYGA @216
== BDEEKIN @217
== BVALYGA @218
== BDEEKIN @219
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)
See("DEEKIN")
CombatCounter(0)
Global("DeekinImoen","LOCALS",0)~ THEN BIMOEN2 DeekinImoen_1
@220 DO ~SetGlobal("DeekinImoen","LOCALS",1)~
== BDEEKIN @221
== BIMOEN2 @222
== BDEEKIN @223
== BIMOEN2 @224
EXIT

CHAIN IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)
See("HaerDalis")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinHaerDalis","LOCALS",0)~ THEN BDEEKIN DeekinHaerDalis_1
@234 DO ~SetGlobal("DeekinHaerDalis","LOCALS",1)~
== BHAERDA @235
== BDEEKIN @236
EXIT

CHAIN IF ~InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)
See("DEEKIN")
CombatCounter(0)
Global("DeekinAerie","LOCALS",0)~ THEN BAERIE DeekinAerie_1
@237 DO ~SetGlobal("DeekinAerie","LOCALS",1)~
== BDEEKIN @238
== BAERIE @239
== BDEEKIN @240
== BAERIE @241
EXIT

CHAIN IF ~InParty("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)
See("DEEKIN")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
Global("DeekinRasaad","LOCALS",0)~ THEN IF_FILE_EXISTS BRASAAD DeekinRasaad_1
@242 DO ~SetGlobal("DeekinRasaad","LOCALS",1)~
== BDEEKIN @243
== IF_FILE_EXISTS BRASAAD @244
EXIT

CHAIN IF WEIGHT #-80 ~InParty("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)
See("Wilson")
InParty("DEEKIN") !StateCheck("DEEKIN",CD_STATE_NOTVALID)
CombatCounter(0)
OR(4) AreaCheck("AR1600") AreaCheck("AR1602") AreaCheck("AR1603") AreaCheck("AR1604")
Global("DeekinWilson","LOCALS",0)~ THEN BDEEKIN DeekinWilson_1
@245 DO ~SetGlobal("DeekinWilson","LOCALS",1)~
== IF_FILE_EXISTS BWILSON @246
== BDEEKIN @247
== IF_FILE_EXISTS BWILSON @248
== BDEEKIN @249
EXIT

CHAIN IF WEIGHT #-5 ~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")See("DEEKIN")CombatCounter(0)
Global("DeekinBYLANNA","AR1002",0)~ THEN BYLANNA DeekinBYLANNA_1
@250
DO ~SetGlobal("DeekinBYLANNA","AR1002",1)~
== BDEEKIN @251
== BYLANNA @252
== BDEEKIN @253
== BYLANNA @254
COPY_TRANS BYLANNA 5

CHAIN IF WEIGHT #-5 ~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")See("DEEKIN")AreaCheck("AR1000")Global("DeekinPEHLLUS","AR1000",0)~ THEN PEHLLUS DeekinPEHLLUS_1
@255 DO ~SetGlobal("DeekinPEHLLUS","AR1000",1)~
== BDEEKIN @256
== PEHLLUS @264
EXIT

CHAIN IF WEIGHT #-5 ~!StateCheck("DEEKIN",CD_STATE_NOTVALID)InParty("DEEKIN")See("DEEKIN")AreaCheck("AR0500")Global("DeekinBNOBLE1","AR0500",0)~ THEN BNOBLE1 DeekinBNOBLE1_1
@257 DO ~SetGlobal("DeekinBNOBLE1","AR0500",1)~
== BDEEKIN @258
== BNOBLE1 @265
EXIT