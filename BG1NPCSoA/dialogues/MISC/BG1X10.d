BEGIN ~BG1X85~

IF ~NumTimesTalkedTo(0)~
THEN BEGIN INTRO
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
=
@6
=
@7
IF ~~ THEN REPLY @8 GOTO INTRO2
IF ~~ THEN REPLY @9 GOTO INTRO2
END

IF ~~ THEN BEGIN INTRO2
SAY @10
=
@11
=
@12
IF ~~ THEN DO~SetGlobal("BG1X85","GLOBAL",1)~EXIT
END

IF ~Global("BG1X85","GLOBAL",1)RandomNum(5,1)~ THEN BEGIN Talk1
SAY @13
=
@14
=
@15
=
@16
=
@17 
IF ~~ THEN REPLY @18 GOTO Talk1-1
IF ~~ THEN REPLY @19  GOTO Talk1-2
IF ~~ THEN REPLY @20 GOTO Talk1-3
END

IF ~~ THEN BEGIN Talk1-1
SAY @21
=
@22
IF ~~ THEN REPLY @19  GOTO Talk1-2
IF ~~ THEN REPLY @20 GOTO Talk1-3
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Talk1-2
SAY @24
=
@25
=
@26
IF ~~ THEN REPLY @18 GOTO Talk1-1
IF ~~ THEN REPLY @20 GOTO Talk1-3
IF ~~ THEN REPLY @23 EXIT
END


IF ~~ THEN BEGIN Talk1-3
SAY @27
=
@28
=
@29
=
@30
IF ~~ THEN REPLY @18 GOTO Talk1-1
IF ~~ THEN REPLY @19 GOTO Talk1-2
IF ~~ THEN REPLY @23 EXIT
END

IF ~Global("BG1X85","GLOBAL",1)RandomNum(5,2)~ THEN BEGIN Talk2
SAY @31
=
@32
=
@33 
IF ~GlobalGT("TalkedToSarles","GLOBAL",0)~ THEN REPLY @34 GOTO Talk2Sarles
IF ~~ THEN REPLY @35 GOTO Talk2Sarles4
IF ~~ THEN REPLY @36 GOTO Talk2Sarles2
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Talk2Sarles
SAY @37
=
@38
IF ~Global("SculptorPlot","GLOBAL",1)~ THEN REPLY @39 GOTO Talk2Sarles3
IF ~Global("SculptorPlot","GLOBAL",2)~ THEN REPLY @40 GOTO Talk2Sarles3
IF ~Global("SculptorPlot","GLOBAL",3)~ THEN REPLY @41 GOTO Talk2Sarles3
END

IF ~~ THEN BEGIN Talk2Sarles2
SAY @42
=
@43
=
@44
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN Talk2Sarles3
SAY @45
=
@46
=
@47
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Talk2Sarles4
SAY @48
=
@49
=
@50
IF ~~ THEN EXIT
END


IF ~Global("BG1X85","GLOBAL",1)RandomNum(5,3)~ THEN BEGIN Talk3
SAY @51
=
@52
=
@53
IF ~~ THEN EXIT 
END

IF ~Global("BG1X85","GLOBAL",1)RandomNum(5,4)~ THEN BEGIN Talk4
SAY @54
=
@55
=
@56
=
@57
=
@58
=
@59
IF ~~ THEN EXIT 
END

IF ~Global("BG1X85","GLOBAL",1)RandomNum(5,5)~ THEN BEGIN Talk5
SAY @60
=
@61
=
@62
=
@63
=
@64
IF ~~ THEN REPLY @65 GOTO Talk5-2
IF ~~ THEN REPLY @66 GOTO Talk5-1 
IF ~~ THEN REPLY @67 GOTO Talk5-3
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Talk5-1
SAY @68
=
@69
=
@70
IF ~~ THEN REPLY @65 GOTO Talk5-2
IF ~~ THEN REPLY @67 GOTO Talk5-3
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Talk5-2
SAY @71
=
@72
IF ~~ THEN REPLY @66 GOTO Talk5-1 
IF ~~ THEN REPLY @67 GOTO Talk5-3
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Talk5-3
SAY @73
=
@74
=
@75
IF ~~ THEN REPLY @65 GOTO Talk5-2
IF ~~ THEN REPLY @66 GOTO Talk5-1 
IF ~~ THEN REPLY @23 EXIT
END

BEGIN ~BG1X35~

IF ~NumTimesTalkedTo(0)~
THEN BEGIN INTRO
SAY @76
=
@77
=
@78
IF ~~ THEN REPLY @79 GOTO STOREx35
IF ~~ THEN REPLY @80 GOTO CIAOTUTTI1
END

IF ~~ THEN BEGIN STOREx35
SAY @81 
IF ~~ THEN DO ~StartStore("BG1NPC9",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN CIAOTUTTI1
SAY @82 
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~
THEN BEGIN TALK2
SAY @83
=
@84
IF ~~ THEN REPLY @79 GOTO STOREx35
IF ~~ THEN REPLY @80 GOTO CIAOTUTTI1
END

BEGIN ~BG1X34~

IF ~OR(2)IsGabber("Cernd")InParty("Cernd")
See("Cernd")!StateCheck("Cernd",CD_STATE_NOTVALID)Global("BG1X34","GLOBAL",0)
Global("BG1X34Cernd","GLOBAL",0)
RandomNum(2,1)~ THEN BEGIN HecklerCernd1
SAY @85 
IF ~~ THEN DO ~SetGlobal("BG1X34Cernd","GLOBAL",1)~ EXTERN ~CERNDJ~ 97
END

IF ~OR(2)IsGabber("Edwin")InParty("Edwin")
See("Edwin")!StateCheck("Edwin",CD_STATE_NOTVALID)Global("BG1X34","GLOBAL",0)Global("BG1X34Edwin","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN HecklerEdwin
SAY @86 
IF ~~ THEN DO ~SetGlobal("BG1X34Edwin","GLOBAL",1)~ EXTERN ~EDWINJ~ 91
END

IF ~OR(2)IsGabber("Aerie")InParty("Aerie")
See("Aerie")!StateCheck("Aerie",CD_STATE_NOTVALID)Global("BG1X34","GLOBAL",0)Global("BG1X34Aerie","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN HecklerAerie
SAY @87 
IF ~~ THEN DO ~SetGlobal("BG1X34Aerie","GLOBAL",1)~ EXTERN ~AERIEJ~ 110
END

IF ~OR(2)IsGabber("Nalia")See("Nalia")InParty("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)Global("BG1X34","GLOBAL",0)Global("BG1X34Nalia","GLOBAL",0)RandomNum(2,1)~ THEN BEGIN HecklerNalia
SAY @88 
IF ~~ THEN DO ~SetGlobal("BG1X34Nalia","GLOBAL",1)~ EXTERN ~NALIAJ~ 116
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)OR(2)IsGabber("Valygar")InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)Global("BG1X34Valygar","GLOBAL",0)
See("Valygar")~ THEN BEGIN ValygarHeckler1
SAY @89 
IF ~~ THEN DO ~SetGlobal("BG1X34Valygar","GLOBAL",1)~ EXTERN ~VALYGARJ~ 21
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,2)OR(2)IsGabber("Valygar")InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)Global("BG1X34Valygar2","GLOBAL",0)
See("Valygar")~ THEN BEGIN ValygarHeckler2
SAY @90 
IF ~~ THEN DO ~SetGlobal("BG1X34Valygar2","GLOBAL",1)~ EXTERN ~VALYGARJ~ 47
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)See("Keldorn")OR(2)IsGabber("Keldorn")Global("BG1X34Keldorn","GLOBAL",0)
InParty("Keldorn")!StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN BEGIN HecklerKeldorn
SAY @91 
IF ~~ THEN DO ~SetGlobal("BG1X34Keldorn","GLOBAL",1)~ EXTERN ~KELDORJ~ 72
END


IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)See("HaerDalis")!StateCheck("HaerDalis",CD_STATE_NOTVALID)
OR(2)IsGabber("HaerDalis")Global("BG1X34HaerDalis","GLOBAL",0)
InParty("HaerDalis")~ THEN BEGIN HecklerHaer
SAY @92
=
@93 
IF ~~ THEN DO ~SetGlobal("BG1X34HaerDalis","GLOBAL",1)~ EXTERN ~HAERDAJ~ 32
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)OR(2)IsGabber("Viconia")
InParty("Viconia")Global("BG1X34Viconia","GLOBAL",0)~ THEN BEGIN HecklerViconia
SAY @94 
IF ~~ THEN DO ~SetGlobal("BG1X34Viconia","GLOBAL",1)~ EXTERN ~VICONIJ~ 2
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,2)See("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)OR(2)IsGabber("Viconia")
InParty("Viconia")Global("BG1X34Viconia2","GLOBAL",0)~ THEN BEGIN HecklerViconia2
SAY @95 
IF ~~ THEN DO ~setGlobal("BG1X34Viconia2","GLOBAL",1)~ EXTERN ~VICONIJ~ 82
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)See("Mazzy")!StateCheck("Mazzy",CD_STATE_NOTVALID)OR(2)IsGabber("Mazzy")
InParty("Mazzy")Global("BG1X34Mazzy","GLOBAL",0)~ THEN BEGIN  HecklerMazzy
SAY @96 
IF ~~ THEN DO ~SetGlobal("BG1X34Mazzy","GLOBAL",1)~ EXTERN ~MAZZYJ~ 65
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)See("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)OR(2)IsGabber("Jan")
InParty("Jan")Global("BG1X34Jan","GLOBAL",0)~ THEN BEGIN  HecklerJan
SAY @97 
IF ~~ THEN DO ~setGlobal("BG1X34Jan","GLOBAL",1)~ EXTERN ~JANJ~ 45
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,2)See("Jan")!StateCheck("Jan",CD_STATE_NOTVALID)OR(2)IsGabber("Jan")
InParty("Jan")Global("BG1X34Jan2","GLOBAL",0)~ THEN BEGIN  HecklerJan2
SAY @98 
IF ~~ THEN DO ~SetGlobal("BG1X34Jan2","GLOBAL",1)~ EXTERN ~JANJ~ 106
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,2)See("Mazzy")!StateCheck("Mazzy",CD_STATE_NOTVALID)OR(2)IsGabber("Mazzy")
InParty("Mazzy")Global("BG1X34Mazzy2","GLOBAL",0)~ THEN BEGIN HecklerMazzy2
SAY @99 
IF ~~ THEN DO ~SetGlobal("BG1X34Mazzy2","GLOBAL",1)~ EXTERN ~MAZZYJ~ 68
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)See("Korgan")OR(2)IsGabber("Korgan")
InParty("Korgan")Global("BG1X34Korgan","GLOBAL",0)~ THEN BEGIN HecklerKorgan
SAY @100 
IF ~~ THEN DO ~SetGlobal("BG1X34Korgan","GLOBAL",1)~ EXTERN ~KORGANJ~ 14
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(2,1)See("Minsc")OR(2)IsGabber("Minsc")
InParty("Minsc")!StateCheck("Minsc",CD_STATE_NOTVALID)Global("BG1X34Minsc","GLOBAL",0)~ THEN BEGIN HecklerMinsc
SAY @101 
IF ~~ THEN DO ~SetGlobal("BG1X34Minsc","GLOBAL",1)~ EXTERN ~MINSCJ~ 35
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(4,1)~ THEN BEGIN Talk1
SAY @102
=
@103
IF ~~ THEN REPLY @104 GOTO Talk1-4
IF ~~ THEN REPLY @105 GOTO Talk1-3
IF ~~ THEN REPLY @106 GOTO Talk1-2 
IF ~~ THEN REPLY @107 GOTO Talk1-2
END

IF ~~ THEN BEGIN Talk1-4 
SAY @108
=
@109
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Talk1-3 
SAY @110
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Talk1-2 
SAY @111
=
@112
IF ~~ THEN EXIT
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(4,2)~ THEN BEGIN Talk2
SAY @113
=
@114 
IF ~~ THEN REPLY @115 GOTO Talk2-1
IF ~~ THEN REPLY @116 GOTO Talk1-2
IF ~~ THEN REPLY @117 GOTO Talk2-2
END

IF ~~ THEN BEGIN Talk2-1
SAY @118
=
@119
=
@120
=
@121
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Talk2-2
SAY @122
=
@123
IF ~~ THEN EXIT
END



IF ~Global("BG1X34","GLOBAL",0)RandomNum(4,3)~ THEN BEGIN Talk4
SAY @124
=
@125 
=
@126
=
@127
=
@128 
IF ~~ THEN EXIT
END

IF ~Global("BG1X34","GLOBAL",0)RandomNum(4,4)~ THEN BEGIN Talk5
SAY @129
=
@130
IF ~~ THEN REPLY @131 GOTO Response1
IF ~~ THEN REPLY @132 GOTO Response4
IF ~~ THEN REPLY @133 GOTO Response3
IF ~~ THEN REPLY @134 GOTO Response2
END

IF ~~ THEN BEGIN Response1
SAY @135
=
@136 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Response2
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Response3
SAY @138
=
@139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Response4
SAY @140
=
@141
=
@142
IF ~~ THEN EXIT
END



BEGIN ~BG1X33~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO
SAY @143
=
@144
=
@145
IF ~~ THEN REPLY @146 GOTO talk2
IF ~~ THEN REPLY @147 GOTO talk4
IF ~~ THEN REPLY @148 GOTO talk5
IF ~~ THEN REPLY @149 GOTO talk2
IF ~~ THEN REPLY @150 GOTO talk3
IF ~~ THEN REPLY @151 GOTO talk6
END

IF ~~ THEN BEGIN talk2
SAY @152
=
@153
IF ~~ THEN GOTO EXPLAIN
END

IF ~~ THEN BEGIN talk3
SAY @154
=
@155
IF ~~ THEN GOTO EXPLAIN
END

IF ~~ THEN BEGIN talk4
SAY @156
IF ~~ THEN GOTO EXPLAIN
END

IF ~~ THEN BEGIN talk5
SAY @157
=
@158
IF ~~ THEN GOTO EXPLAIN
END

IF ~~ THEN BEGIN talk6
SAY @159
=
@160
IF ~~ THEN GOTO EXPLAIN
END

IF ~~ THEN BEGIN EXPLAIN
SAY @161
=
@162
=
@163
=
@164
IF ~~ THEN DO ~Polymorph(%yuanti_animation%)Enemy()~ EXIT
END

BEGIN ~BG1X32~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO
SAY @165
IF ~~ THEN DO ~SetGlobal("BG1X32","GLOBAL",1)~ GOTO INTRO2
END


IF ~~ THEN BEGIN INTRO2
SAY @166
=
@167
=
@168
IF ~~ THEN GOTO INTRO3
END

IF ~~ THEN BEGIN INTRO3
SAY @169
IF ~~ THEN GOTO INTRO4
IF ~InParty("Minsc")~ THEN EXTERN ~MINSCJ~ MinscElminsterInterject1
END

IF ~~ THEN BEGIN INTRO4
SAY @170
IF ~~ THEN REPLY @171 GOTO INTRO5
IF ~~ THEN REPLY @172 GOTO INTRO6
IF ~~ THEN REPLY @173 GOTO INTROX
IF ~~ THEN REPLY @174 GOTO INTRO7
END

IF ~~ THEN BEGIN INTRO5
SAY @175
=
@176
IF ~~ THEN GOTO INTRO8
END


IF ~~ THEN BEGIN INTRO6
SAY @177
=
@178
IF ~~ THEN GOTO INTRO8
END

IF ~~ THEN BEGIN INTRO7
SAY @179
=
@178
IF ~~ THEN GOTO INTRO8
END


IF ~~ THEN BEGIN INTRO8
SAY @180
=
@23
IF ~~ THEN DO ~CreateVisualEffectObject("SPFLSRIN",Myself)
Wait(1)PlaySound("EFF_M38")
CreateVisualEffectObject("SPFLESHS",Myself)~EXIT
END

IF ~~ THEN BEGIN INTROX
SAY @181
IF ~~ THEN GOTO INTRO8
END

IF ~Global("BG1X32","GLOBAL",1)~ THEN BEGIN ElminsterQuest
SAY @182
=
@183
=
@184
=
@185
=
@186
=
@187
IF ~~ THEN REPLY @188 GOTO ElminsterQuest2
IF ~~ THEN REPLY @189 GOTO ElminsterQuest3
IF ~~ THEN REPLY @190 GOTO ElminsterQuest2
IF ~~ THEN REPLY @191 GOTO ElminsterQuest3
IF ~~ THEN REPLY @192 GOTO ElminsterQuest3
END


IF ~~ THEN BEGIN ElminsterQuest2
SAY @193
=
@194
IF ~~ THEN DO ~SetGlobal("BG1X32","GLOBAL",2)~ EXIT
END 

IF ~~ THEN BEGIN ElminsterQuest3
SAY @195
=
@196
IF ~~ THEN DO ~AddJournalEntry(@1785,QUEST) SetGlobal("BG1X32","GLOBAL",77)~ EXIT
END

IF ~Global("BG1X32","GLOBAL",77)~ THEN ElminsterQuest4
SAY @197
IF ~~ THEN EXIT END

IF ~Global("BG1X32","GLOBAL",78)~ THEN ElminsterQuest5
SAY @198
IF ~PartyHasItem("bgsx17")~ THEN REPLY @199 DO ~TakePartyItem("bgsx17")~ GOTO ElminsterQuest6
IF ~~ THEN REPLY @200 EXIT
END

IF ~~ THEN ElminsterQuest6
SAY @201
IF ~~ THEN DO ~EraseJournalEntry(@1785)
AddJournalEntry(@1786,QUEST_DONE) SetGlobal("BG1X32","GLOBAL",2)GiveItemCreate("MISC07",PLAYER1,200,0,0)
GiveItemCreate("PLATNUM",PLAYER1,100,0,0)AddexperienceParty(10000)ReputationInc(2)~ EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,1)~ THEN BEGIN Talk2-12-1
SAY @202
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,2)~ THEN BEGIN Talk2-12-2
SAY @203
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,3)~ THEN BEGIN Talk2-12-3
SAY @204
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,4)~ THEN BEGIN Talk2-12-4
SAY @205
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,5)~ THEN BEGIN Talk2-12-5
SAY @206
=
@207
=
@208
=
@209
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,6)~ THEN BEGIN Talk2-12-6
SAY @210
=
@211
=
@212
=
@213
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,7)~ THEN BEGIN Talk2-12-7
SAY @214
=
@215
=
@216
=
@217
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,8)~ THEN BEGIN Talk2-12-8
SAY @218
=
@219
=
@220
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,9)~ THEN BEGIN Talk2-12-9
SAY @221
=
@222
=
@223
=
@224
=
@225
=
@226
=
@227
=
@228
=
@229
=
@230
=
@231
=
@232
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,10)~ THEN BEGIN Talk2-12-10
SAY @233
=
@234
=
@235
=
@236
=
@237
=
@238
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,11)~ THEN BEGIN Talk2-12-11
SAY @239
=
@240
=
@241
=
@242
=
@243
IF ~~ THEN EXIT
END

IF ~Global("BG1X32","GLOBAL",2)RandomNum(12,12)~ THEN BEGIN Talk2-12-12
SAY @244
=
@245
=
@246
IF ~~ THEN EXIT
END

BEGIN ~BG1X31~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO
SAY @247
=
@248
=
@249
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @250 GOTO INTRO3
IF~~ THEN REPLY @251 GOTO INTRO2
IF~~ THEN REPLY @252 GOTO INTRO2
IF~~ THEN REPLY @253 DO ~SetGlobal("BG1X31","GLOBAL",1)~ EXIT
IF~~ THEN REPLY @254 GOTO INTRO2
END 

IF ~~ THEN BEGIN INTRO2
SAY @255
=
@256
IF ~InPartySlot(LastTalkedToBy,0)GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @250 GOTO INTRO3
IF ~~ THEN REPLY @253 DO ~SetGlobal("BG1X31","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN INTRO3
SAY @257
=
@258
=
@259
IF ~~ THEN REPLY @260 GOTO INTRO4
IF ~~ THEN REPLY @261 GOTO INTRO4
END

IF ~~ THEN BEGIN INTRO4
SAY @262
IF ~~ THEN REPLY @263 GOTO INTRO5
IF ~~ THEN REPLY @264 GOTO INTRO5x
IF ~~ THEN REPLY @265 GOTO INTRO5
IF ~~ THEN REPLY @266 GOTO INTRO5
END

IF ~~ THEN BEGIN INTRO5x
SAY @267
=
@268
IF ~~ THEN REPLY @269 GOTO INTRO5xx
IF ~~ THEN REPLY @270 GOTO INTRO5xx
IF ~~ THEN REPLY @271 GOTO INTRO5xx
END

IF ~~ THEN BEGIN INTRO5xx
SAY @272
=
@273
IF ~~ THEN DO ~SetGlobal("BG1X31","GLOBAL",2)~EXIT
END

IF ~~ THEN BEGIN INTRO5
SAY @274
=
@275
=
@276 
IF ~~ THEN DO ~SetGlobal("BG1X31","GLOBAL",2)~EXIT
END

IF ~Global("BG1X31","GLOBAL",1)~ THEN BEGIN talk2
SAY @277
IF~InPartySlot(LastTalkedToBy,0)
GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ THEN REPLY @250 GOTO INTRO3
IF~~ THEN REPLY @253 EXIT
END

IF ~Global("BG1X31","GLOBAL",2)RandomNum(4,1)~ THEN BEGIN 1-12
SAY @278
=
@279
=
@280
IF ~~ THEN REPLY @281 GOTO barg
IF ~~ THEN REPLY @282 GOTO Quint
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN barg
SAY @283
=
@284
=
@285
IF ~~ THEN REPLY @282 GOTO Quint
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Quint
SAY @286
=
@287
=
@288
IF ~~ THEN REPLY @281 GOTO barg
IF ~~ THEN REPLY @23 EXIT
END


IF ~Global("BG1X31","GLOBAL",2)RandomNum(4,2)~ THEN BEGIN 3-12
SAY @289
=
@290
=
@291
=
@292
IF ~~ THEN REPLY @293 GOTO districts
IF ~~ THEN REPLY @294 GOTO Wave
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Wave
SAY @295
=
@296
=
@297
IF ~~ THEN REPLY @293 GOTO districts
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN districts
SAY @298
=
@299 =
@300
=
@301
=
@302
=
@303
=
@304
=
@305
IF ~~ THEN REPLY @294 GOTO Wave
IF ~~ THEN REPLY @23 EXIT
END

IF ~Global("BG1X31","GLOBAL",2)RandomNum(4,3)~ THEN BEGIN 4-12
SAY @306
=
@307
=
@308
=
@309
IF ~~ THEN EXIT
END


IF ~Global("BG1X31","GLOBAL",2)RandomNum(4,4)~ THEN BEGIN 6-12
SAY @310
=
@311
=
@312
IF ~~ THEN REPLY @313 GOTO Veronica
IF ~~ THEN REPLY @314 GOTO Melvin
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN Veronica
SAY @315
=
@316
IF ~~ THEN REPLY @314 GOTO Melvin
IF ~~ THEN REPLY @23 EXIT
END


IF ~~ THEN BEGIN Melvin
SAY @317
=
@318
IF ~~ THEN REPLY @313 GOTO Veronica
IF ~~ THEN REPLY @23 EXIT
END




BEGIN ~BG1X26~


IF ~Global("FULBERT","GLOBAL",1)~ THEN BEGIN INTRO
SAY @319
=
@320
IF ~~ THEN REPLY @321 DO ~SetGlobal("FULBERT","GLOBAL",2)~ GOTO FULBERT1
IF ~~ THEN REPLY @322 DO ~SetGlobal("FULBERT","GLOBAL",2)~ GOTO FULBERT1
IF ~~ THEN REPLY @323 DO ~SetGlobal("FulbertBanter","GLOBAL",86)SetGlobal("FULBERT","GLOBAL",2)~ EXIT
END

IF ~Global("FulbertBanter","GLOBAL",86)~ THEN BEGIN INTRO2
SAY @324
=
@325
IF ~~ THEN REPLY @321 GOTO FULBERT1
IF ~~ THEN REPLY @322 GOTO FULBERT1
IF ~~ THEN REPLY @326 EXIT
END

IF ~~ THEN BEGIN FULBERT1
SAY @327
=
@328
IF ~~ THEN REPLY @329 GOTO FULBERT2
IF ~~ THEN REPLY @330 GOTO FULBERT3
IF ~~ THEN REPLY @331 GOTO FULBERT4
END

IF ~~ THEN BEGIN FULBERT4
SAY @332
IF ~~ THEN GOTO FULBERT2
END 

IF ~~ THEN BEGIN FULBERT2
SAY @333
=
@334
IF ~~ THEN DO ~SetGlobal("FulbertBanter","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN FULBERT3
SAY @335
=
@336
=
@337
IF ~~ THEN DO ~SetGlobal("FulbertBanter","GLOBAL",2)~ EXIT
END

IF ~Global("FulbertBanter","GLOBAL",2)~ THEN BEGIN TheNerve
SAY @338
=
@339
=
@340
IF ~~ THEN DO ~SetGlobal("FulbertBanter","GLOBAL",3)~ EXIT
END

IF ~Global("FulbertBanter","GLOBAL",3)RandomNum(6,1)~ THEN BEGIN NextTalk1
SAY @341
=
@342
=
@343
IF ~~ THEN GOTO NextTalk7
END

IF ~Global("FulbertBanter","GLOBAL",3)RandomNum(6,2)~ THEN BEGIN NextTalk2
SAY @344
=
@345
=
@346
IF ~~ THEN REPLY @347 GOTO NextTalk2c
IF ~~ THEN REPLY @348 GOTO NextTalk2a
IF ~~ THEN REPLY @349 GOTO NextTalk2d
IF ~~ THEN REPLY @350 GOTO NextTalk2b
END

IF ~~ THEN BEGIN NextTalk2a
SAY @351
=
@352
IF ~~ THEN REPLY @353 GOTO NextTalk2f
IF ~~ THEN REPLY @354 GOTO NextTalk2e
END

IF ~~ THEN BEGIN NextTalk2c
SAY @355
=
@356
IF ~~ THEN REPLY @353 GOTO NextTalk2f
IF ~~ THEN REPLY @354 GOTO NextTalk2e
END

IF ~~ THEN BEGIN NextTalk2b
SAY @357
=
@358
IF ~~ THEN REPLY @354 GOTO NextTalk2e
END

IF ~~ THEN BEGIN NextTalk2d
SAY @359
=
@360
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NextTalk2e
SAY @361
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NextTalk2f
SAY @362
=
@363
IF ~~ THEN EXIT
END


IF ~Global("FulbertBanter","GLOBAL",3)RandomNum(6,3)~ THEN BEGIN NextTalk3
SAY @364
=
@365
=
@366
=
@367
IF ~~ THEN EXIT
END

IF ~Global("FulbertBanter","GLOBAL",3)RandomNum(6,4)~ THEN BEGIN NextTalk4
SAY @368
IF ~~ THEN REPLY @369 GOTO RUBE
IF ~~ THEN REPLY @370 GOTO BOTH
IF ~~ THEN REPLY @371 GOTO BaldursGate
IF ~~ THEN REPLY @372 GOTO Athkatla
END

IF ~~ THEN BEGIN RUBE
SAY @373
=
@374
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BOTH
SAY @375
=
@376
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BaldursGate
SAY @377
=
@378
=
@379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Athkatla
SAY @380
=
@381
=
@382
=
@383
=
@384
=
@385
=
@386
IF ~~ THEN EXIT
END

IF ~Global("FulbertBanter","GLOBAL",3)RandomNum(6,5)~ THEN BEGIN NextTalk5
SAY @387
=
@388
=
@389
=
@390
=
@391
=
@392
=
@393
IF ~~ THEN EXIT
END

IF ~Global("FulbertBanter","GLOBAL",3)RandomNum(6,6)~ THEN BEGIN NextTalk6
SAY @394
=
@395
=
@396
=
@397
=
@398
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NextTalk7
SAY @399
=
@400
IF ~~ THEN REPLY @401 GOTO OfCourseNot
IF ~~ THEN REPLY @402 GOTO UAA
IF ~~ THEN REPLY @403 EXIT
END

IF ~~ THEN BEGIN OfCourseNot
SAY @404
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN UAA
SAY @405
=
@406
=
@407
IF ~~ THEN EXIT
END


IF WEIGHT #-10 ~InParty("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BEGIN FulbertxViconiaComment
SAY @408
IF ~~ THEN EXTERN ~VICONIJ~ ViconiaWaterGardenComment
END


BEGIN ~bg1x28~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO
SAY @409
IF ~~ THEN REPLY @265 GOTO NEXT1
IF ~~ THEN REPLY @410 GOTO NEXT2
IF ~~ THEN REPLY @411 GOTO NEXT4
IF ~~ THEN REPLY @412 GOTO NEXT3
END

IF ~~ THEN BEGIN NEXT1
SAY @413
IF ~~ THEN GOTO NEXT4
END

IF ~~ THEN BEGIN NEXT2
SAY @414
IF ~~ THEN GOTO NEXT4
END

IF ~~ THEN BEGIN NEXT3
SAY @415
IF ~~ THEN GOTO NEXT4
END


IF ~~ THEN BEGIN NEXT4
SAY @416
=
@417
IF ~~ THEN DO ~ChangeEnemyAlly(Myself,GOODBUTBLUE) SetGlobal("7xFirebead","AR0700",1)~ EXIT
END

IF WEIGHT #-10~Dead("bg1x6")~ THEN BEGIN Done1
SAY @418
=
@419
IF ~~ THEN DO ~EscapeArea()~ EXIT
END


BEGIN ~BG1X19~

IF WEIGHT #-10 ~IsGabber("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BEGIN BG1X19xViconiaComment
SAY @420
IF ~~ THEN EXTERN ~VICONIJ~ ViconiaWaterGardenComment
END

IF ~True()~ THEN BEGIN INTRO1
SAY @421
=
@422
IF ~~ THEN REPLY @423 GOTO g2p
IF ~~ THEN REPLY @424 GOTO p2g
IF ~~ THEN REPLY @425 EXIT
END

IF ~~ THEN BEGIN WASTETIME1
SAY @426
IF ~~ THEN EXIT END

IF ~~ THEN BEGIN g2p
SAY @427
IF ~~ THEN REPLY @428 GOTO WASTETIME1

IF ~PartyGoldGT("99999")~ THEN REPLY @429 DO ~TakePartyGold("100000")DestroyGold("100000")GiveItemCreate("PLATNUM",PLAYER1,10000,0,0)~ GOTO NICE

IF ~PartyGoldGT("9999")~ THEN REPLY @430 DO ~TakePartyGold("10000")DestroyGold("10000")GiveItemCreate("PLATNUM",PLAYER1,1000,0,0)~ GOTO NICE

IF ~PartyGoldGT("999")~ THEN REPLY @431 DO ~TakePartyGold("1000")DestroyGold("1000")GiveItemCreate("PLATNUM",PLAYER1,100,0,0)~ GOTO NICE

IF ~PartyGoldGT("499")~ THEN REPLY @432 DO ~TakePartyGold("500")DestroyGold("500")GiveItemCreate("PLATNUM",PLAYER1,50,0,0)~ GOTO NICE

IF ~PartyGoldGT("99")~ THEN REPLY @433 DO ~TakePartyGold("100")DestroyGold("100")GiveItemCreate("PLATNUM",PLAYER1,10,0,0)~ GOTO NICE

IF ~PartyGoldGT("49")~ THEN REPLY @434 DO ~TakePartyGold("50")DestroyGold("50")GiveItemCreate("PLATNUM",PLAYER1,5,0,0)~ GOTO NICE

IF ~PartyGoldGT("9")~ THEN REPLY @435 DO ~TakePartyGold("10")DestroyGold("10")GiveItemCreate("PLATNUM",PLAYER1,1,0,0)~ GOTO NICE
IF ~~ THEN REPLY @436 GOTO WASTETIME1
END


IF ~~ THEN BEGIN p2g
SAY @427

IF ~NumItemsPartyGT("Platnum",9999)~ THEN REPLY @437 DO ~GiveItemCreate("MISC07",PLAYER1,100000,0,0)TakePartyItemNum("Platnum",10000)DestroyItem("Platnum")~ GOTO NICE

IF ~NumItemsPartyGT("Platnum",999)~ THEN REPLY @438 DO ~GiveItemCreate("MISC07",PLAYER1,10000,0,0)TakePartyItemNum("Platnum",1000)DestroyItem("Platnum")~ GOTO NICE

IF ~NumItemsPartyGT("Platnum",99)~ THEN REPLY @439 DO ~GiveItemCreate("MISC07",PLAYER1,1000,0,0)TakePartyItemNum("Platnum",100)DestroyItem("Platnum")~ GOTO NICE

IF ~NumItemsPartyGT("Platnum",49)~ THEN REPLY @440 DO ~GiveItemCreate("MISC07",PLAYER1,500,0,0)TakePartyItemNum("Platnum",50)DestroyItem("Platnum")~ GOTO NICE

IF ~NumItemsPartyGT("Platnum",9)~ THEN REPLY @441 DO ~GiveItemCreate("MISC07",PLAYER1,100,0,0)TakePartyItemNum("Platnum",10)DestroyItem("Platnum")~ GOTO NICE

IF ~NumItemsPartyGT("Platnum",4)~ THEN REPLY @442 DO ~GiveItemCreate("MISC07",PLAYER1,50,0,0)TakePartyItemNum("Platnum",5)DestroyItem("Platnum")~ GOTO NICE


IF ~NumItemsPartyGT("Platnum",0)~ THEN REPLY @443 DO ~GiveItemCreate("MISC07",PLAYER1,10,0,0)TakePartyItemNum("Platnum",1)~ GOTO NICE
IF ~~ THEN REPLY @436 GOTO WASTETIME1
IF ~~ THEN REPLY @428 GOTO WASTETIME1
END

IF ~~ THEN BEGIN NICE
SAY @444
IF ~~ THEN EXIT
END

BEGIN ~bg1x10~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Talk1
SAY @445
=
@446
=
@447 
IF ~~ THEN REPLY @448 GOTO NEXT2
IF ~~ THEN REPLY @449 GOTO DONTR
IF ~~ THEN REPLY @450 GOTO DONTR
IF ~~ THEN REPLY @451 GOTO NEXT2
END

IF ~~ THEN BEGIN DONTR
SAY @452
IF ~~ THEN GOTO NEXT2
END

IF ~~ THEN BEGIN NEXT2
SAY @453
=
@454
=
@455
=
@456
IF ~~ THEN DO ~CreateCreature("7XCRE40",[940.377],3)
Enemy()~ EXIT
END

BEGIN ~bg1x11~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Talk1
SAY @457
=
@458
IF ~~ THEN DO ~Enemy()~EXIT
END


BEGIN ~BG1X12~

IF ~Global("BG1X12","GLOBAL",0)RandomNum(5,1)~ THEN BEGIN INTRO
SAY @459
=
@460
=
@461
IF ~~ THEN REPLY @462 GOTO NewTalks2
IF ~~ THEN REPLY @463 GOTO Newtalk1-3
IF ~~ THEN REPLY @464 GOTO Newtalk1-1
IF ~~ THEN REPLY @465 GOTO Newtalk1-2
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END

IF ~~ THEN BEGIN Newtalk1-1
SAY @466
=
@467
IF ~~ THEN REPLY @462 GOTO NewTalks2
IF ~~ THEN REPLY @463 GOTO Newtalk1-3
IF ~~ THEN REPLY @465 GOTO Newtalk1-2
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END

IF ~~ THEN BEGIN Newtalk1-2
SAY @468
=
@469
=
@470 
IF ~~ THEN REPLY @462 GOTO NewTalks2
IF ~~ THEN REPLY @471 GOTO Newtalk1-3
IF ~~ THEN REPLY @464 GOTO Newtalk1-1
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END


IF ~~ THEN BEGIN Newtalk1-3
SAY @472
=
@473
IF ~~ THEN REPLY @462 GOTO NewTalks2
IF ~~ THEN REPLY @463 GOTO Newtalk1-3
IF ~~ THEN REPLY @464 GOTO Newtalk1-1
IF ~~ THEN REPLY @465 GOTO Newtalk1-2
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END

IF ~~ THEN BEGIN Newtalk1-4
SAY @474
=
@475
IF ~~ THEN EXIT
END


IF ~Global("BG1X12","GLOBAL",0)RandomNum(5,2)~ THEN BEGIN INTRO2
SAY @476
=
@477
=
@478 
=
@479
=
@480 
IF ~~ THEN GOTO NewTalks3
END



IF ~Global("BG1X12","GLOBAL",0)RandomNum(5,3)~ THEN BEGIN INTRO4
SAY @481
=
@482
=
@483
=
@484
=
@485
=
@486
=
@487  
IF ~~ THEN GOTO NewTalks4
END

IF ~Global("BG1X12","GLOBAL",0)RandomNum(5,4)~ THEN BEGIN INTRO5
SAY @488
=
@489
=
@490
=
@491
=
@492
=
@493
=
@494 
IF ~~ THEN EXIT
END


IF ~Global("BG1X12","GLOBAL",0)RandomNum(5,5)~ THEN BEGIN INTRO8
SAY @495
=
@496
=
@497
=
@498
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NewTalks2
SAY @499
=
@500
=
@501
IF ~~ THEN REPLY @502 GOTO NewTalks2-2
IF ~~ THEN REPLY @463 GOTO Newtalk1-3
IF ~~ THEN REPLY @464 GOTO Newtalk1-1
IF ~~ THEN REPLY @503 GOTO NewTalks2-3
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END

IF ~~ THEN BEGIN NewTalks2-2
SAY @504
=
@505
IF ~~ THEN REPLY @506 GOTO Newtalk1-4
IF ~~ THEN REPLY @463 GOTO Newtalk1-3
IF ~~ THEN REPLY @464 GOTO Newtalk1-1
IF ~~ THEN REPLY @507 GOTO Newtalk1-4
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END


IF ~~ THEN BEGIN NewTalks2-3
SAY @508
=
@509
IF ~~ THEN REPLY @510 DO ~SetGlobal("BG1X12","GLOBAL",0)~ GOTO Newtalk1-4
IF ~~ THEN REPLY @511 DO ~SetGlobal("BG1X12","GLOBAL",0)~ GOTO Newtalk1-4
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END

IF ~~ THEN BEGIN NewTalks3
SAY @512
=
@513
=
@514
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NewTalks4
SAY @515
=
@516
=
@517
=
@518
=
@519
IF ~~ THEN REPLY @520 GOTO NewTalks4-1
IF ~~ THEN REPLY @521 GOTO NewTalks4-2
IF ~~ THEN REPLY @522 GOTO NewTalks4-3
END

IF ~~ THEN BEGIN NewTalks4-1
SAY @523
=
@524
IF ~~ THEN REPLY @521 GOTO NewTalks4-2
IF ~~ THEN REPLY @522 GOTO NewTalks4-3
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END


IF ~~ THEN BEGIN NewTalks4-2
SAY @525
=
@526
IF ~~ THEN REPLY @520 GOTO NewTalks4-1
IF ~~ THEN REPLY @522 GOTO NewTalks4-3
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END



IF ~~ THEN BEGIN NewTalks4-3
SAY @527
=
@528
IF ~~ THEN REPLY @520 GOTO NewTalks4-1
IF ~~ THEN REPLY @521 GOTO NewTalks4-2
IF ~~ THEN REPLY @23 GOTO Newtalk1-4
END



IF WEIGHT #-10 ~IsGabber("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BEGIN BG1X12xViconiaComment
SAY @529
IF ~~ THEN EXTERN ~VICONIJ~ ViconiaWaterGardenComment
END

BEGIN ~BG1X13~

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,1)~ THEN BEGIN INTRO1
SAY @530
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,2)~ THEN BEGIN INTRO2
SAY @531
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,3)~ THEN BEGIN INTRO3
SAY @532
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,4)~ THEN BEGIN INTRO4
SAY @533
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,5)~ THEN BEGIN INTRO5
SAY @534
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,6)~ THEN BEGIN INTRO6
SAY @535
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,7)~ THEN BEGIN INTRO7
SAY @536
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,8)~ THEN BEGIN INTRO8
SAY @537
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,9)~ THEN BEGIN INTRO9
SAY @538
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,10)~ THEN BEGIN INTRO10
SAY @539
=
@540
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,11)~ THEN BEGIN INTRO11
SAY @541
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,12)~ THEN BEGIN INTRO12
SAY @542
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,13)~ THEN BEGIN INTRO13
SAY @543
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,14)~ THEN BEGIN INTRO14
SAY @544
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,15)~ THEN BEGIN INTRO15
SAY @545
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,16)~ THEN BEGIN INTRO16
SAY @546
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,17)~ THEN BEGIN INTRO17
SAY @547
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,18)~ THEN BEGIN INTRO18
SAY @548
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,19)~ THEN BEGIN INTRO19
SAY @549
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,20)~ THEN BEGIN INTRO20
SAY @550
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,21)~ THEN BEGIN INTRO21
SAY @551
IF ~~ THEN EXIT
END

IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,22)~ THEN BEGIN INTRO22
SAY @552
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,23)~ THEN BEGIN INTRO23
SAY @553
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,24)~ THEN BEGIN INTRO24
SAY @554
IF ~~ THEN EXIT
END


IF ~Global("BG1X13","GLOBAL",0)RandomNum(25,25)~ THEN BEGIN INTRO25
SAY @555
IF ~~ THEN EXIT
END

BEGIN ~BG1X14~


IF ~NumtimesTalkedTo(0)~ THEN BEGIN 7xINTRO1
SAY @556 
=
@557 
IF ~Global("7xBorivykMonkeyQuest","GLOBAL",1)~ THEN REPLY @978 DO ~SetGlobal("BG1X14","ARBGXX",2)~ GOTO 7xMonkey
IF ~~ THEN REPLY @558 DO ~SetGlobal("BG1X14","ARBGXX",2)StartStore("bg1npc4",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @559 DO ~SetGlobal("BG1X14","ARBGXX",2)~EXIT
END

IF WEIGHT #-20~Global("BG1X14","ARBGXX",2)~ THEN BEGIN 7xTalk2
SAY @560 
IF ~Global("7xBorivykMonkeyQuest","GLOBAL",1)~ THEN REPLY @978 DO ~SetGlobal("BG1X14","ARBGXX",2)~ GOTO 7xMonkey
IF ~~ THEN REPLY @561 GOTO 7xmoonbow
IF ~~ THEN REPLY @562 GOTO 7xmyth
IF ~~ THEN REPLY @558 DO ~StartStore("bg1npc4",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @559 EXIT
END

IF ~~ THEN BEGIN 7xmyth
SAY @563
=
@564
IF ~~ THEN REPLY @561 GOTO 7xmoonbow
IF ~~ THEN REPLY @558 DO ~StartStore("bg1npc4",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @559 EXIT
END


IF ~~ THEN BEGIN 7xmoonbow
SAY @565
=
@566
IF ~~ THEN REPLY @562 GOTO 7xmyth
IF ~~ THEN REPLY @558 DO ~StartStore("bg1npc4",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @559 EXIT
END

IF ~~ THEN BEGIN 7xMonkey
SAY @979
IF ~~ THEN DO ~SetGlobal("7xBorivykMonkeyQuest","GLOBAL",2) AddJournalEntry(@1813,QUEST)~ REPLY @980 GOTO 7xMonkey1
END

IF ~~ THEN BEGIN 7xMonkey1
SAY @981
=@982
=@983
IF ~~ THEN EXIT
END

BEGIN ~BG1X15~

IF WEIGHT #-20~Global("BG1X15","GLOBAL",3)~ THEN BEGIN Talk3
SAY @567
=
@568
=
@569

IF ~~ THEN REPLY @570 GOTO WATERGardens1
IF ~NumItemsPartyGT("Platnum",4999)~ THEN REPLY @571 GOTO AMULETX
IF ~~ THEN REPLY @572 GOTO GAMULET
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @574 GOTO SAMULET
IF ~~ THEN REPLY @575 GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @576 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO STARTSTORE1
IF ~~ THEN REPLY @577 GOTO HAMULET
IF ~~ THEN REPLY @578 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO CIAOBABY1
END

IF WEIGHT #-20~Global("BG1X15","GLOBAL",2)~ THEN BEGIN Talk2
SAY @579
=
@580

IF ~~ THEN REPLY @570 GOTO WATERGardens1
IF ~NumItemsPartyGT("Platnum",4999)~ THEN REPLY @571 GOTO AMULETX
IF ~~ THEN REPLY @572 GOTO GAMULET
IF ~~ THEN REPLY @574 GOTO SAMULET
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @575 GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @576 DO ~SetGlobal("BG1X15","GLOBAL",3)StartStore("BG1NPC3",LastTalkedToBy())~ EXIT
IF ~~ THEN REPLY @577 GOTO HAMULET
IF ~~ THEN REPLY @578 DO ~SetGlobal("BG1X15","GLOBAL",3)~ GOTO CIAOBABY1
END

IF ~~ THEN BEGIN STARTSTORE1
SAY @581 
IF ~~ THEN DO ~StartStore("BG1NPC3",LastTalkedToBy())~EXIT
END

IF ~~ THEN BEGIN CIAOBABY1
SAY @582 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GOLDPANTALOONS
SAY @583
IF ~NumItemsPartyGT("Platnum",999)~ THEN REPLY @584 DO ~GiveItemCreate("MISC47",PLAYER1,0,0,0)TakePartyItemNum("Platnum",1000)DestroyItem("Platnum")SetGlobal("BG1X15","GLOBAL",3)~ GOTO GOLDPANTALOONS2
IF ~~ THEN REPLY @585 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO STARTSTORE1
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @574 GOTO SAMULET
IF ~~ THEN REPLY @577 GOTO HAMULET
IF ~~ THEN REPLY @586 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO CIAOBABY1
END

IF ~~ THEN BEGIN GOLDPANTALOONS2
SAY @587
IF ~~ THEN DO ~SetGlobal("BG1X15","GLOBAL",3)~EXIT
END

IF ~NumtimesTalkedTo(0)~ THEN BEGIN INTRO1
SAY @588
=
@589
=
@590
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @570 GOTO WATERGardens1
IF ~NumItemsPartyGT("Platnum",4999)~ THEN REPLY @571 DO ~SetGlobal("BG1X15","GLOBAL",2)~GOTO AMULETX
IF ~~ THEN REPLY @572 DO ~SetGlobal("BG1X15","GLOBAL",2)~GOTO GAMULET
IF ~~ THEN REPLY @574 DO ~SetGlobal("BG1X15","GLOBAL",2)~GOTO SAMULET
IF ~~ THEN REPLY @576 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO STARTSTORE1
IF ~~ THEN REPLY @575 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @577 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO HAMULET
IF ~~ THEN REPLY @578 DO ~SetGlobal("BG1X15","GLOBAL",3)~ GOTO CIAOBABY1
END

IF ~~ THEN BEGIN SAMULET
SAY @591
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @570 GOTO WATERGardens1
IF ~NumItemsPartyGT("Platnum",4999)~ THEN REPLY @571 GOTO AMULETX
IF ~~ THEN REPLY @572 GOTO GAMULET
IF ~~ THEN REPLY @576 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO STARTSTORE1
IF ~~ THEN REPLY @577 GOTO HAMULET
IF ~~ THEN REPLY @575 GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @578 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO CIAOBABY1
END

IF ~~ THEN BEGIN HAMULET
SAY @592
IF ~~ THEN REPLY @570 GOTO WATERGardens1
IF ~NumItemsPartyGT("Platnum",4999)~ THEN REPLY @571 GOTO AMULETX
IF ~~ THEN REPLY @572 GOTO GAMULET
IF ~~ THEN REPLY @574 GOTO SAMULET
IF ~~ THEN REPLY @575 GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @576 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO STARTSTORE1
IF ~~ THEN REPLY @578 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO CIAOBABY1
IF ~~ THEN REPLY @573 GOTO QUILL1
END

IF ~~ THEN BEGIN AMULETX
SAY @587
IF ~~ THEN DO ~SetGlobal("BG1X15","GLOBAL",2)GiveItemCreate("BGSX04",PLAYER1,0,0,0)TakePartyItemNum("Platnum",5000)DestroyItem("Platnum")~ EXIT
END

IF ~~ THEN BEGIN GAMULET
SAY @593
IF ~~ THEN REPLY @570 GOTO WATERGardens1
IF ~NumItemsPartyGT("Platnum",4999)~ THEN REPLY @571 GOTO AMULETX
IF ~~ THEN REPLY @574 GOTO SAMULET
IF ~~ THEN REPLY @576 GOTO STARTSTORE1
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @575 GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @577 GOTO HAMULET
IF ~~ THEN REPLY @578 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO CIAOBABY1
END


IF ~~ THEN BEGIN WATERGardens1
SAY @594
=
@595
=
@596
=
@597
=
@598
=
@599
=
@600
=
@601
IF ~NumItemsPartyGT("Platnum",4999)~ THEN REPLY @571 GOTO AMULETX
IF ~~ THEN REPLY @574 GOTO SAMULET
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @575 GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @576 GOTO STARTSTORE1
IF ~~ THEN REPLY @577 GOTO HAMULET
IF ~~ THEN REPLY @578 DO ~SetGlobal("BG1X15","GLOBAL",2)~GOTO CIAOBABY1
END


IF WEIGHT #-20 ~IsGabber("Viconia")!StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BEGIN BG1X15xViconiaComment
SAY @420
IF ~~ THEN EXTERN ~VICONIJ~ ViconiaWaterGardenComment
END

IF ~~ THEN BEGIN QUILL1
SAY @602
=
@603
=
@604
IF ~NumItemsPartyGT("Platnum",9999)~ THEN REPLY @605 DO ~GiveItemCreate("bgsx29",PLAYER1,0,0,0)TakePartyItemNum("Platnum",10000)DestroyItem("Platnum")SetGlobal("BG1X15","GLOBAL",3)~ GOTO GOLDPANTALOONS2
IF ~~ THEN REPLY @585 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO STARTSTORE1
IF ~~ THEN REPLY @575 GOTO GOLDPANTALOONS
IF ~~ THEN REPLY @573 GOTO QUILL1
IF ~~ THEN REPLY @574 GOTO SAMULET
IF ~~ THEN REPLY @577 GOTO HAMULET
IF ~NumItemsPartyGT("Platnum",24999)~ THEN REPLY @606 DO ~GiveItemCreate("MISC5K",PLAYER1,0,0,0)TakePartyItemNum("Platnum",25000)DestroyItem("Platnum")~ GOTO GOLDPANTALOONS2
IF ~~ THEN REPLY @586 DO ~SetGlobal("BG1X15","GLOBAL",2)~ GOTO CIAOBABY1
END

BEGIN ~BG1X16~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN INTRO1
SAY @607
=
@608
=
@609
=
@610
=
@611
=
@612
IF ~~ THEN REPLY @613 DO ~SetGlobal("BG1X16","GLOBAL",2)AddJournalEntry(@1787,QUEST)~ GOTO YES1
IF ~~ THEN REPLY @614 DO ~SetGlobal("BG1X16","GLOBAL",1)~ GOTO NO1
IF ~~ THEN REPLY @615 GOTO Smart1
END

IF ~~ THEN BEGIN Smart1
SAY @616
=
@617
=
@618
=
@619
IF ~~ THEN REPLY @613 DO ~SetGlobal("BG1X16","GLOBAL",2)AddJournalEntry(@1787,QUEST)~ GOTO YES1
IF ~~ THEN REPLY @614 DO ~SetGlobal("BG1X16","GLOBAL",1)~ GOTO NO1
END

IF ~~ THEN BEGIN YES1
SAY @620
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN NO1
SAY @621
IF ~~ THEN EXIT
END

IF ~Global("BG1X16","GLOBAL",2)~ THEN BEGIN GolinQuest
SAY @622
=
@623
IF ~PartyHasItem("bgsx91")PartyHasItem("bgsx91")PartyHasItem("bgsx91")PartyHasItem("bgsx91")PartyHasItem("bgsx91")PartyHasItem("bgsx92")PartyHasItem("bgsx92")PartyHasItem("bgsx92")PartyHasItem("bgsx92")PartyHasItem("bgsx92")PartyHasItem("bgsx92")PartyHasItem("bgsx92")~ THEN REPLY @624 DO ~SetGlobal("BG1X16","GLOBAL",1)~ GOTO QUESTFINISH
IF ~~ THEN REPLY @625 GOTO HURRY
END

IF ~~ THEN BEGIN HURRY
SAY @626
=
@627
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN QUESTFINISH
SAY @628
IF ~~ THEN DO ~TakePartyItem("bgsx91")
TakePartyItem("bgsx91")
TakePartyItem("bgsx91")
TakePartyItem("bgsx91")
TakePartyItem("bgsx91") 
TakePartyItem("bgsx92")
TakePartyItem("bgsx92")
TakePartyItem("bgsx92")
TakePartyItem("bgsx92")
TakePartyItem("bgsx92")
TakePartyItem("bgsx92")
TakePartyItem("bgsx92")EraseJournalEntry(@1787)~ GOTO QUESTFINISH2
END 

IF ~~ THEN BEGIN QUESTFINISH2
SAY @629
IF ~~ THEN DO ~SetGlobal("BG1X16","GLOBAL",1)AddJournalEntry(@1788,QUEST_DONE)~
EXIT
END



IF ~Global("BG1X16","GLOBAL",1)RandomNum(5,1)~ THEN BEGIN Talk1
SAY @630
IF ~~ THEN EXIT
END

IF ~Global("BG1X16","GLOBAL",1)RandomNum(5,2)~ THEN BEGIN Talk2
SAY @631
=
@632
=
@633
IF ~~ THEN EXIT
END

IF ~Global("BG1X16","GLOBAL",1)RandomNum(5,3)~ THEN BEGIN Talk3
SAY  @634
=
@635
=
@636
=
@637
=
@638
IF ~~ THEN EXIT
END


IF ~Global("BG1X16","GLOBAL",1)RandomNum(5,4)~ THEN BEGIN Talk7
SAY @639
=
@640
=
@641
IF ~~ THEN EXIT
END


IF ~Global("BG1X16","GLOBAL",1)RandomNum(5,5)~ THEN BEGIN Talk9
SAY @642
=
@643
=
@644
=
@645
IF ~~ THEN EXIT
END

BEGIN ~BG1X17~

IF WEIGHT #-10 ~InParty("Viconia")Global("BG1X17Viconia","GLOBAL",0)!StateCheck("Viconia",CD_STATE_NOTVALID)~
THEN BEGIN BG1X17xViconiaComment
SAY @646
=
@647
IF ~~ THEN DO ~setGlobal("BG1X17Viconia","GLOBAL",1)~ EXTERN ~VICONIJ~ ViconiaWaterGardenComment
END


IF ~Global("BG1X17","GLOBAL",0)RandomNum(4,1)~ THEN BEGIN INTRO1
SAY @648
=
@649
=
@650
IF ~~ THEN REPLY @651 GOTO lotus
IF ~~ THEN REPLY @652 GOTO isaea
END


IF ~~ THEN BEGIN lotus
SAY @653
=
@654
=
@655
IF ~~ THEN REPLY @652 GOTO isaea
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN isaea
SAY @656
IF ~~ THEN REPLY @657 GOTO isaea2
IF ~~ THEN REPLY @658 GOTO isaea2
IF ~~ THEN REPLY @659 GOTO isaea2
IF ~~ THEN REPLY @660 GOTO isaea2
END

IF ~~ THEN BEGIN isaea2
SAY @661
=
@662
=
@663
IF ~~ THEN REPLY @651 GOTO lotus
IF ~~ THEN REPLY @23 EXIT
END

IF ~Global("BG1X17","GLOBAL",0)RandomNum(4,2)~ THEN BEGIN INTRO2
SAY @664
=
@665
=
@666
=
@667
=
@668
=
@669
IF ~~ THEN EXIT
END

IF ~Global("BG1X17","GLOBAL",0)RandomNum(4,3)~ THEN BEGIN INTRO4
SAY @670
=
@671
=
@672
=
@673
=
@674
IF ~~ THEN EXIT
END

IF ~Global("BG1X17","GLOBAL",0)RandomNum(4,4)~ THEN BEGIN INTRO6
SAY @675
=
@676
=
@677
=
@678
IF ~GlobalGT("BG1X1Quest","GLOBAL",0)~ THEN REPLY @679 GOTO INTRO6-2
IF ~~ THEN REPLY @680 GOTO INTRO6-3
IF ~~ THEN REPLY @681 GOTO INTRO6-1
IF ~~ THEN REPLY @682 GOTO INTRO6-4
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN INTRO6-1
SAY @683
=
@684
IF ~GlobalGT("BG1X1Quest","GLOBAL",0)~ THEN REPLY @679 GOTO INTRO6-2
IF ~~ THEN REPLY @680 GOTO INTRO6-3
IF ~~ THEN REPLY @682 GOTO INTRO6-4
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN INTRO6-2
SAY @685
=
@686
IF ~~ THEN REPLY @680 GOTO INTRO6-3
IF ~~ THEN REPLY @681 GOTO INTRO6-1
IF ~~ THEN REPLY @682 GOTO INTRO6-4
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN INTRO6-3
SAY @687
=
@688
=
@689
IF ~GlobalGT("BG1X1Quest","GLOBAL",0)~ THEN REPLY @679 GOTO INTRO6-2
IF ~~ THEN REPLY @682 GOTO INTRO6-4
IF ~~ THEN REPLY @23 EXIT
END

IF ~~ THEN BEGIN INTRO6-4
SAY @690
IF ~~ THEN EXIT
END

BEGIN ~BG1X18~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Samantha1
SAY @691
=
@692
=
@693
=
@694
=
@695
IF ~~ THEN EXIT
END

IF WEIGHT #-10 ~InParty("Viconia")Global("BG1X18","GLOBAL",0)!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("BG1X18Viconia","GLOBAL",0)~
THEN BEGIN BG1X18xViconiaComment
SAY @696
=
@697
IF ~~ THEN DO ~SetGlobal("BG1X18Viconia","GLOBAL",1)~ EXTERN ~VICONIJ~ ViconiaWaterGardenComment
END



IF ~Global("BG1X18","GLOBAL",0)RandomNum(6,1)~ THEN BEGIN INTRO1
SAY @698
IF ~~ THEN REPLY @699 GOTO INTRO1-1
IF ~~ THEN REPLY @700 GOTO INTRO1-2
IF ~~ THEN REPLY @701 GOTO INTRO1-3
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO1-1
SAY @702
=
@703
=
@704
=
@705
=
@706
IF ~~ THEN REPLY @700 GOTO INTRO1-2
IF ~~ THEN REPLY @701 GOTO INTRO1-3
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO1-2
SAY @707
=
@708
=
@709
=
@710
=
@711
IF ~~ THEN REPLY @699 GOTO INTRO1-1
IF ~~ THEN REPLY @701 GOTO INTRO1-3
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO1-3
SAY @712
=
@713
IF ~~ THEN REPLY @699 GOTO INTRO1-1
IF ~~ THEN REPLY @700 GOTO INTRO1-2
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO1-4
SAY @714
IF ~~ THEN EXIT
END

IF ~Global("BG1X18","GLOBAL",0)RandomNum(6,2)~ THEN BEGIN INTRO2
SAY @715
=
@716
=
@717
IF ~~ THEN REPLY @718 GOTO INTRO2-2
IF ~~ THEN REPLY @719 GOTO INTRO2-3
IF ~~ THEN REPLY @720 GOTO INTRO2-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO2-1
SAY @721
=
@722
IF ~~ THEN REPLY @718 GOTO INTRO2-2
IF ~~ THEN REPLY @719 GOTO INTRO2-3
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO2-2
SAY @723
=
@724
=
@725
IF ~~ THEN REPLY @719 GOTO INTRO2-3
IF ~~ THEN REPLY @720 GOTO INTRO2-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO2-3
SAY @726
IF ~~ THEN REPLY @718 GOTO INTRO2-2
IF ~~ THEN REPLY @720 GOTO INTRO2-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END


IF ~Global("BG1X18","GLOBAL",0)RandomNum(6,3)~ THEN BEGIN INTRO3
SAY @727
=
@728
IF ~~ THEN REPLY @729 GOTO INTRO3-3
IF ~~ THEN REPLY @730 GOTO INTRO3-2
IF ~~ THEN REPLY @731 GOTO INTRO3-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO3-1
SAY @732
=
@733
=
@734
IF ~~ THEN REPLY @729 GOTO INTRO3-3
IF ~~ THEN REPLY @730 GOTO INTRO3-2
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO3-2
SAY @735
=
@736
IF ~~ THEN REPLY @729 GOTO INTRO3-3
IF ~~ THEN REPLY @731 GOTO INTRO3-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO3-3
SAY @737
=
@738
=
@739
IF ~~ THEN REPLY @730 GOTO INTRO3-2
IF ~~ THEN REPLY @731 GOTO INTRO3-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~Global("BG1X18","GLOBAL",0)RandomNum(6,4)~ THEN BEGIN INTRO4
SAY @740
=
@741
IF ~~ THEN REPLY @742 GOTO INTRO4-1
IF ~!Dead("Kalah")~ THEN REPLY @743 GOTO INTRO4-2
IF ~Dead("Kalah")~ THEN REPLY @744 GOTO INTRO4-3
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END


IF ~~ THEN BEGIN INTRO4-1
SAY @745
=
@746
IF ~!Dead("Kalah")~ THEN REPLY @743 GOTO INTRO4-2
IF ~Dead("Kalah")~ THEN REPLY @744 GOTO INTRO4-3
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO4-2
SAY @747
=
@748 
IF ~~ THEN REPLY @742 GOTO INTRO4-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END

IF ~~ THEN BEGIN INTRO4-3
SAY @749
IF ~~ THEN REPLY @742 GOTO INTRO4-1
IF ~~ THEN REPLY @23 GOTO INTRO1-4
END


IF ~Global("BG1X18","GLOBAL",0)RandomNum(6,5)~ THEN BEGIN INTRO5
SAY @750
=
@751
=
@752
=
@753
=
@754
=
@755
IF ~~ THEN GOTO INTRO4
END

IF ~Global("BG1X18","GLOBAL",0)RandomNum(6,6)~ THEN BEGIN INTRO6
SAY @756
=
@757
=
@758
=
@759
=

@760
=
@761
=
@762
IF ~~ THEN EXIT
END


BEGIN ~BG1X20~


IF ~IsGabber("Keldorn")~THEN BEGIN MatildaFlirtKeldorn
SAY @763
=
@764
IF ~~ THEN EXTERN ~BKELDOR~ MatildaFlirtKeldorn2
END

IF ~IsGabber("Keldorn")~THEN BEGIN MatildaFlirtKeldorn3
SAY @765
=
@766
IF ~~ THEN EXTERN ~BKELDOR~ MatildaFlirtKeldorn4
END


IF ~IsGabber("Yoshimo")~THEN BEGIN MatildaFlirtYoshimo
SAY @767
IF ~~ THEN EXTERN ~BYOSHIM~ MatildaFlirtYoshimo2
END

IF ~IsGabber("Yoshimo")~THEN BEGIN MatildaFlirtYoshimo3
SAY @768
=
@769
IF ~~ THEN EXTERN ~BYOSHIM~ MatildaFlirtYoshimo4
END

IF ~IsGabber("EDWIN")~THEN BEGIN MatildaFlirtEdwin
SAY @770
=
@771
IF ~~ THEN EXTERN ~BEDWIN~ MatildaFlirtEdwin2
END

IF ~IsGabber("EDWIN")~THEN BEGIN MatildaFlirtEdwin3
SAY @772
=
@773
IF ~~ THEN EXTERN ~BEDWIN~ MatildaFlirtEdwin4
END


IF ~IsGabber("JAN")~THEN BEGIN MatildaFlirtJan
SAY @774
=
@775
IF ~~ THEN EXTERN ~BJAN~ MatildaFlirtJan2
END

IF ~IsGabber("JAN")~THEN BEGIN MatildaFlirtJan3
SAY @776
=
@777
IF ~~ THEN EXTERN ~BJAN~ MatildaFlirtJan4
END

IF ~IsGabber("Cernd")~THEN BEGIN CerndMatildaFlirt
SAY @778
=
@779
IF ~~ THEN EXTERN ~BCERND~ CerndMatildaFlirt2
END


IF ~IsGabber("Cernd")~THEN BEGIN CerndMatildaFlirt3
SAY @780
IF ~~ THEN EXTERN ~BCERND~ CerndMatildaFlirt4
END


IF ~IsGabber("HaerDalis")~THEN BEGIN HaerDalisMatildaFlirt
SAY @781
=
@782
IF ~~ THEN EXTERN ~BHAERDA~ HaerDalisMatildaFlirt2
END


IF ~IsGabber("HaerDalis")~THEN BEGIN HaerDalisMatildaFlirt3
SAY @783
=
@784
IF ~~ THEN EXTERN ~BHAERDA~ HaerDalisMatildaFlirt4
END

IF ~IsGabber("Anomen")~THEN BEGIN AnomenMatildaFlirt
SAY @785
=
@786
IF ~~ THEN EXTERN ~BANOMEN~ AnomenMatildaFlirt2
END


IF ~IsGabber("Anomen")~THEN BEGIN AnomenMatildaFlirt3
SAY @787
IF ~~ THEN EXTERN ~BANOMEN~ AnomenMatildaFlirt4
END


IF ~IsGabber("Minsc")~THEN BEGIN MinscMatildaFlirt
SAY @788
IF ~~ THEN EXTERN ~BMINSC~ MinscMatildaFlirt2
END

IF ~IsGabber("Minsc")~THEN BEGIN MinscMatildaFlirt3
SAY @789
IF ~~ THEN EXTERN ~BMINSC~ MinscMatildaFlirt4
END


IF ~IsGabber("Valygar")~THEN BEGIN ValygarMatildaFlirt1
SAY @790
=
@791
IF ~~ THEN EXTERN ~BVALYGA~ ValygarMatildaFlirt2
END


IF ~IsGabber("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)~THEN BEGIN KorganMatildaFlirt1
SAY @797
IF ~~ THEN EXTERN ~BKORGAN~ KorganMatildaFlirt2
END

IF ~~THEN BEGIN KorganMatildaFlirt3
SAY @798
IF ~~ THEN EXTERN ~BKORGAN~ KorganMatildaFlirt4
END

IF ~Gender(LastTalkedToBy,MALE)Global("BG1X19","GLOBAL",0)RandomNum(3,1)~ THEN BEGIN INTRO1
SAY @799
IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,MALE)Global("BG1X19","GLOBAL",0)RandomNum(3,2)~ THEN BEGIN INTRO2
SAY @800
=
@801
IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,MALE)Global("BG1X19","GLOBAL",0)RandomNum(3,3)~ THEN BEGIN INTRO3
SAY @802
IF ~~ THEN EXIT
END

IF ~Gender(LastTalkedToBy,FEMALE)Global("BG1X19","GLOBAL",0)~ THEN BEGIN INTRO4
SAY @803
IF ~~ THEN EXIT
END


APPEND BVALYGA
IF ~~ THEN BEGIN ValygarMatildaFlirt2
SAY @806
IF ~~ THEN EXIT
END
END

APPEND ~BKORGAN~
IF ~~ THEN BEGIN KorganMatildaFlirt2
SAY @809
IF ~~ THEN EXTERN ~BG1X20~KorganMatildaFlirt3
END
END

APPEND ~BKORGAN~
IF ~~ THEN BEGIN KorganMatildaFlirt4
SAY @810
IF ~~ THEN EXIT
END
END


BEGIN ~BG1X21~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN BGS1
SAY @811
=
@812
=
@813
=
@814
=
@815
=
@816
IF ~NumItemsPartyGT("Platnum",25249)~ THEN REPLY @817 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX01",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",25250)~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",21249)~ THEN REPLY @818 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX02",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",21250)~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",5199)~ THEN REPLY @819 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX03",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",5200)~ GOTO GOODC1
IF ~~ THEN REPLY @820 GOTO GOLDNO
IF ~~ THEN REPLY @425 DO ~SetGlobal("BaldrekGS","GLOBAL",0)~EXIT
END

IF ~~ THEN BEGIN GOLDNO
SAY @821
=
@822
IF ~NumItemsPartyGT("Platnum",25249)~ THEN REPLY @817 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX01",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",25250)~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",21249)~ THEN REPLY @818 DO ~GiveItemCreate("BGSX02",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",21250)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",5199)~ THEN REPLY @819 DO ~GiveItemCreate("BGSX03",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",5200)DestroyItem("Platnum")~ GOTO GOODC1
IF ~~ THEN REPLY @425 DO ~SetGlobal("BaldrekGS","GLOBAL",0)~EXIT
END

IF ~~ THEN BEGIN GOODC1
SAY @823
=
@824
IF ~~ THEN EXIT
END

IF ~Global("BaldrekGS","GLOBAL",0)~ THEN BEGIN BGS2
SAY @825
=
@813
=
@814
=
@815
=
@816
IF ~NumItemsPartyGT("Platnum",25249)~ THEN REPLY @817 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX01",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",25250)~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",21249)~ THEN REPLY @818 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX02",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",21250)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",5199)~ THEN REPLY @819 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX03",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",5200)DestroyItem("Platnum")~ GOTO GOODC1
IF ~~ THEN REPLY @820 GOTO GOLDNO
IF ~~ THEN REPLY @425 EXIT
END

IF ~Global("BaldrekGS","GLOBAL",1)~ THEN BEGIN BGS3
SAY @826
=
@827
=
@828
=
@829
=
@830
=
@831
=
@832
=
@833
=
@815
=
@816
IF ~NumItemsPartyGT("Platnum",30000)~ THEN REPLY @834 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX08",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",30000)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",12999)~ THEN REPLY @835 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX05",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",13000)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",26999)~ THEN REPLY @836 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX07",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",27000)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",20999)~ THEN REPLY @837 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX06",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",21000)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",25249)~ THEN REPLY @817 DO ~SetGlobal("BaldrekGS","GLOBAL",1)GiveItemCreate("BGSX01",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",25250)~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",21249)~ THEN REPLY @818 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX02",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",21250)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",5199)~ THEN REPLY @819 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX03",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",5200)DestroyItem("Platnum")~ GOTO GOODC1
IF ~~ THEN REPLY @820 GOTO GOLDNO
IF ~~ THEN REPLY @425 EXIT
END

IF ~Global("BaldrekGS","GLOBAL",2)~ THEN BEGIN BGS4
SAY @825
=
@827
=
@828
=
@829
=
@838
=
@831
=
@839
=
@833
=
@815
=
@816
IF ~NumItemsPartyGT("Platnum",106249)~ THEN REPLY @834 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX08",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",106250)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",12999)~ THEN REPLY @835 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX05",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",13000)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",26999)~ THEN REPLY @836 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX07",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",27000)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",20999)~ THEN REPLY @837 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX06",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",21000)DestroyItem("Platnum")~ GOTO GOODC1


IF ~NumItemsPartyGT("Platnum",31249)~ THEN REPLY @817 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX01",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",31250)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",21249)~ THEN REPLY @818 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX02",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",21250)DestroyItem("Platnum")~ GOTO GOODC1

IF ~NumItemsPartyGT("Platnum",5199)~ THEN REPLY @819 DO ~SetGlobal("BaldrekGS","GLOBAL",2)GiveItemCreate("BGSX03",PLAYER1,4000,0,0)TakePartyItemNum("Platnum",5200)DestroyItem("Platnum")~ GOTO GOODC1
IF ~~ THEN REPLY @820 GOTO GOLDNO
IF ~~ THEN REPLY @425 EXIT
END

APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")OR(2)IsGabber("Viconia")InParty("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)RandomNum(2,1)~
THEN BEGIN FARTHINxViconiaComment
SAY @840
IF ~~ THEN EXTERN ~VICONIJ~ ViconiaWaterGardenComment
END
END

APPEND VICONIJ
IF WEIGHT #-10 ~~THEN BEGIN ViconiaWaterGardenComment
SAY @841
IF ~~ THEN EXIT
END
END

APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")OR(2)InParty("Nalia")IsGabber("Nalia")IsValidForPartyDialog("Nalia")Global("NaliaFarthin","GLOBAL",0)~ THEN BEGIN NaliaFARTHIN1
SAY @842
=
@843
IF ~~ THEN DO ~SetGlobal("NaliaFarthin","GLOBAL",1)~ EXTERN ~BNALIA~ NaliaFARTHIN2
END
END


APPEND FARTHIN
IF ~~ THEN BEGIN NaliaFARTHIN3
SAY @844
=
@845
IF ~~ THEN EXTERN ~BNALIA~ NaliaFARTHIN4
END
END



APPEND FARTHIN
IF WEIGHT #-10 ~OR(2)InParty("Nalia")IsGabber("Nalia")Global("NaliaFarthin","GLOBAL",1)RandomNum(2,1)~ THEN BEGIN NaliaFARTHINx1
SAY @846
=
@847
IF ~~ THEN EXTERN ~BNALIA~ NaliaFARTHINx2
END
END


APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")OR(2)!InParty("Nalia")InParty("Nalia")OR(2)Global("NaliaFarthin","GLOBAL",0)
Global("NaliaFarthin","GLOBAL",1)OR(2)IsGabber("Valygar")InParty("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)RandomNum(2,1)~ THEN BEGIN FARTHINx1-ValyGar1
SAY @848
=
@849
IF ~~ THEN EXTERN ~BVALYGA~ FARTHINx1-ValyGar2
END
END

APPEND BVALYGA
IF WEIGHT #-10 ~~ THEN BEGIN FARTHINx1-ValyGar2
SAY @850
IF ~~ THEN EXIT
END
END

APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")OR(2)Global("NaliaFarthin","GLOBAL",0)
Global("NaliaFarthin","GLOBAL",1)RandomNum(6,1)~ THEN BEGIN FARTHINx2
SAY @851
=
@852
IF ~~ THEN REPLY @853 GOTO FARTHINx2B
IF ~~ THEN REPLY @854 GOTO FARTHINx2B
IF ~~ THEN REPLY @855 GOTO FARTHINx2B
IF ~~ THEN REPLY @856 GOTO FARTHINx2B
IF ~~ THEN REPLY @23 GOTO FARTHINx2B
END
END

APPEND FARTHIN
IF ~~ THEN BEGIN FARTHINx2B
SAY @857
IF ~~ THEN EXIT
END
END


APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(6,2)OR(2)Global("NaliaFarthin","GLOBAL",0)
Global("NaliaFarthin","GLOBAL",1)~ THEN BEGIN FARTHINx2-5-2
SAY @858
=
@859
=
@860
=
@861
=
@862
=
@863
=
@864
IF ~~ THEN EXIT
END
END

APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(6,3)OR(2)Global("NaliaFarthin","GLOBAL",0)
Global("NaliaFarthin","GLOBAL",1)~ THEN BEGIN FARTHINx2-5-4
SAY @865
=
@866
=
@867
=
@868
IF ~~ THEN EXIT
END
END

APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(6,4)OR(2)Global("NaliaFarthin","GLOBAL",0)
Global("NaliaFarthin","GLOBAL",1)~ THEN BEGIN FARTHINx2-5-7
SAY @869
IF ~~ THEN REPLY @870 GOTO FARTHINx2-5-7a
IF ~~ THEN REPLY @871 GOTO FARTHINx2-5-7a
IF ~~ THEN REPLY @872 GOTO FARTHINx2-5-7a
IF ~~ THEN REPLY @873 GOTO FARTHINx2-5-7a
END
END

APPEND FARTHIN
IF ~~ THEN BEGIN FARTHINx2-5-7a
SAY @874
=
@875
IF ~~ THEN EXIT
END
END



APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(6,5)OR(2)Global("NaliaFarthin","GLOBAL",0)
Global("NaliaFarthin","GLOBAL",1)~ THEN BEGIN FARTHINx2-5-8
SAY @876
=
@877
=
@878
=
@879
=
@880
IF ~~ THEN EXIT
END
END

APPEND FARTHIN
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(6,6)OR(2)Global("NaliaFarthin","GLOBAL",0)
Global("NaliaFarthin","GLOBAL",1)~ THEN BEGIN FARTHINx2-5-9
SAY @881
=
@882
=
@883
IF ~~ THEN EXIT
END
END


APPEND BNALIA
IF  ~~ THEN BEGIN NaliaFARTHINx2
SAY @884
=
@885
IF ~~ THEN EXIT
END
END


APPEND BNALIA
IF ~~ THEN BEGIN NaliaFARTHIN2
SAY @886
IF ~~ THEN EXTERN ~FARTHIN~ NaliaFARTHIN3
END
END


APPEND BNALIA
IF ~~ THEN BEGIN NaliaFARTHIN4
SAY @887
IF ~~ THEN EXIT
END
END

APPEND KPSERV01
IF WEIGHT #-10 ~AreaCheck("ARBGX2")~ THEN BEGIN KPSERV0x1
SAY @888
=
@889
=
@890
=
@891
IF ~~ THEN DO ~SetGlobal("WGDirections","GLOBAL",1)~EXIT
END
END

APPEND KPSERV01
IF WEIGHT #-20 ~Global("WGDirections","GLOBAL",1)AreaCheck("ARBGX2")~ THEN BEGIN KPSERV0x2
SAY @892
IF ~~ THEN REPLY @893 GOTO KPSERV0x3
IF ~~ THEN REPLY @894 GOTO KPSERV0x10
IF ~~ THEN REPLY @895 GOTO KPSERV0x6 
IF ~~ THEN REPLY @896 GOTO KPSERV0x4
IF ~~ THEN REPLY @897 GOTO KPSERV0x4
IF ~~ THEN REPLY @898 GOTO KPSERV0x5
IF ~~ THEN REPLY @23 GOTO KPSERV0x9
END
END

APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x10
SAY @899
=
@900
IF ~~ THEN EXIT
END
END


APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x3
SAY @890
=
@891
IF ~~ THEN EXIT
END
END

APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x4
SAY @901
IF ~~ THEN EXIT
END
END

APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x5
SAY @902
IF ~~ THEN REPLY @903 GOTO KPSERV0x7
IF ~~ THEN REPLY @904 GOTO KPSERV0x8
END
END


APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x6
SAY @905
=
@906
IF ~~ THEN EXIT
END
END

APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x7
SAY @907
=
@908
IF ~~ THEN EXIT
END
END


APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x8
SAY @909
=
@910
=
@911
IF ~~ THEN EXIT
END
END


APPEND KPSERV01
IF ~~ THEN BEGIN KPSERV0x9
SAY @912
=
@913
IF ~~ THEN EXIT
END
END

APPEND AMCUST01
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(4,1)~ THEN BEGIN AMCUST01x1
SAY @914
IF ~~ THEN REPLY @915 GOTO MATILDA
IF ~~ THEN REPLY @916 GOTO SLUMS
IF ~~ THEN REPLY @23 EXIT
END
END

APPEND AMCUST01
IF ~~ THEN BEGIN MATILDA
SAY @917
=
@918
=
@919
IF ~~ THEN REPLY @920 GOTO SLUMS
IF ~~ THEN REPLY @23 EXIT
END
END

APPEND AMCUST01
IF ~~ THEN BEGIN SLUMS
SAY @921
=
@922
=
@923
=
@924
IF ~~ THEN REPLY @915 GOTO MATILDA
IF ~~ THEN REPLY @23 EXIT
END
END


APPEND AMCUST01
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(4,2)~ THEN BEGIN AMCUST01x2
SAY @925
=
@926
IF ~~ THEN EXIT
END
END

APPEND AMCUST01
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(4,3)~ THEN BEGIN AMCUST01x3
SAY @927
=
@928
=
@929
IF ~~ THEN EXIT
END
END

APPEND AMCUST01
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(4,4)~ THEN BEGIN AMCUST01x4
SAY @930
IF ~~ THEN EXIT
END
END


APPEND BMINSC
IF ~~ THEN BEGIN MinscMatildaFlirt2
SAY @931
IF ~~ THEN EXTERN ~BG1X20~ MinscMatildaFlirt3
END
END

APPEND BMINSC
IF ~~ THEN BEGIN MinscMatildaFlirt4
SAY @932
IF ~~ THEN EXIT
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenMatildaFlirt2
SAY @933 
IF ~~ THEN EXTERN ~BG1X20~ AnomenMatildaFlirt3
END
END

APPEND BANOMEN
IF ~~ THEN BEGIN AnomenMatildaFlirt4
SAY @934 
IF ~~ THEN EXIT
END
END

APPEND BHAERDA
IF ~~ THEN BEGIN HaerDalisMatildaFlirt2
SAY @935
IF ~~ EXTERN ~BG1X20~ HaerDalisMatildaFlirt3
END
END



APPEND BHAERDA
IF ~~ THEN BEGIN HaerDalisMatildaFlirt4
SAY @936
IF ~~ THEN EXIT
END
END




APPEND BCERND
IF ~~ THEN BEGIN CerndMatildaFlirt2
SAY @937
IF ~~ EXTERN ~BG1X20~ CerndMatildaFlirt3
END
END


APPEND BCERND
IF ~~ THEN BEGIN CerndMatildaFlirt4
SAY @938
IF ~~ THEN EXIT
END
END




APPEND BJAN
IF ~~ THEN BEGIN MatildaFlirtJan2
SAY @939
IF ~~ THEN EXTERN ~BG1X20~ MatildaFlirtJan3
END
END


APPEND BJAN
IF ~~ THEN BEGIN MatildaFlirtJan4
SAY @940
=
@941
IF ~~ THEN EXIT
END
END



APPEND BEDWIN
IF ~~ THEN BEGIN MatildaFlirtEdwin2
SAY @942 
=
@943
IF ~~ THEN EXTERN ~BG1X20~ MatildaFlirtEdwin3
END
END



APPEND BEDWIN
IF ~~ THEN BEGIN MatildaFlirtEdwin4
SAY @944
IF ~~ THEN EXIT
END
END


APPEND BYOSHIM
IF ~~ THEN BEGIN MatildaFlirtYoshimo2
SAY @945
IF ~~ THEN EXTERN ~BG1X20~ MatildaFlirtYoshimo3
END
END

APPEND BYOSHIM
IF ~~ THEN BEGIN MatildaFlirtYoshimo4
SAY @946
IF ~~ THEN EXIT
END
END

APPEND BKELDOR
IF ~~ THEN BEGIN MatildaFlirtKeldorn2
SAY @947
IF ~~ THEN EXTERN ~BG1X20~ MatildaFlirtKeldorn3
END
END



APPEND BKELDOR
IF ~~ THEN BEGIN MatildaFlirtKeldorn4
SAY @948
IF ~~ THEN EXIT
END
END


APPEND BANOMEN
IF WEIGHT #-10 ~~ THEN BEGIN LadyTandolanAnomenBashing2
SAY @949
IF ~~ THEN EXIT
END
END


APPEND SEWERF
IF WEIGHT #-10 ~IsGabber("Anomen")AreaCheck("ARBGX2")~ THEN BEGIN LadyTandolanAnomenBashing
SAY @950
IF ~~ THEN EXTERN ~BANOMEN~ LadyTandolanAnomenBashing2
END
END


APPEND SEWERF
IF WEIGHT #-10 ~IsGabber("Player1")Gender(LastTalkedToBy,MALE)AreaCheck("ARBGX2")RandomNum(5,1)~ THEN BEGIN LadyTandolanMaleBashing
SAY @951
=
@952
IF ~~ THEN EXIT
END
END


APPEND SEWERF
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(5,2)~ THEN BEGIN LadyTandolan1-12-3
SAY @953
=
@954
IF ~~ THEN EXIT
END
END

 

APPEND SEWERF
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(5,3)~ THEN BEGIN LadyTandolan1-12-6
SAY @955
=
@956
IF ~~ THEN EXIT
END
END



APPEND SEWERF
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(5,4)~ THEN BEGIN LadyTandolan1-12-7B
SAY @957
=
@958
IF ~~ THEN REPLY @959 GOTO feud
IF ~~ THEN REPLY @960 GOTO fortune
IF ~~ THEN REPLY @961 GOTO fakes
IF ~~ THEN REPLY @23 EXIT
END
END


APPEND SEWERF
IF WEIGHT #-10 ~~ THEN BEGIN feud
SAY @962
=
@963
=
@964
IF ~~ THEN REPLY @960 GOTO fortune
IF ~~ THEN REPLY @961 GOTO fakes
IF ~~ THEN REPLY @23 EXIT
END
END

APPEND SEWERF
IF WEIGHT #-10 ~~ THEN BEGIN fakes
SAY @965
=
@966
IF ~~ THEN REPLY @959 GOTO feud
IF ~~ THEN REPLY @961 GOTO fakes
IF ~~ THEN REPLY @23 EXIT
END
END

APPEND SEWERF
IF WEIGHT #-10 ~~ THEN BEGIN fortune
SAY @967
=
@968
=
@969
IF ~~ THEN REPLY @959 GOTO feud
IF ~~ THEN REPLY @961 GOTO fakes
IF ~~ THEN REPLY @23 EXIT
END
END

APPEND SEWERF
IF WEIGHT #-10 ~AreaCheck("ARBGX2")RandomNum(5,5)~ THEN BEGIN LadyTandolan1-11-11
SAY @970
=
@971
=
@972
=
@973
=
@974
=
@975
=
@976
IF ~~ THEN EXIT
END
END



APPEND MINSCJ
IF ~~ THEN BEGIN MinscElminsterInterject1
SAY @977
IF ~~ THEN EXTERN ~BG1X32~ INTRO4
END
END

