BEGIN ~7XNOBLE1~
BEGIN ~7XNOBLE2~
BEGIN ~7XNOBLE3~
BEGIN ~7XNOBLE4~
BEGIN ~7XNOBLE5~
BEGIN ~7XNOBLE6~
BEGIN ~7XNOBLE7~
BEGIN ~7XNOBLE8~
BEGIN ~7XNOBLE9~
BEGIN ~7XNOBL10~
BEGIN ~7XNOBL11~
BEGIN ~7XNOBL12~
BEGIN ~7XNOBL13~
BEGIN ~7XTUFUS~
BEGIN ~7XSAREZ~
BEGIN ~7XDILIN~


// Леди Голдсворд
APPEND ~BG1X1~

IF WEIGHT #-99 ~AreaCheck("ARBGX2") Global("BG1X1","GLOBAL",2) Global("LadyExists","ARBGX2",2)~ BEGIN AuctionStartLadyTalk
SAY @400
=@401
=@402
IF ~~ THEN DO ~EscapeArea() SetGlobal("7xAuctionGoldsword","GLOBAL",1) SetGlobal("LadyExists","ARBGX2",3)~ EXIT
END

END

// Распорядитель торгов
BEGIN ~7xAUCTIO~

// Первый разговор
IF ~AreaCheck("ARBGX6") Global("7xAuctionGoldswordManager","ARBGX6",0) Global("7xAuctionGoldsword","GLOBAL",1)~ BEGIN AuctionStartTalk
SAY @404
=@405
=@406
=@407
IF ~~ THEN DO ~SetGlobal("7xAuctionGoldswordManager","ARBGX6",1)~ REPLY @409 GOTO AuctionStartTalk1
IF ~~ THEN DO ~SetGlobal("7xAuctionGoldswordManager","ARBGX6",1)~ REPLY @408 EXIT
END

IF ~~ BEGIN AuctionStartTalk1
SAY @416
=@410
IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("7xAuctionGoldsword","GLOBAL",2)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

// Проводит на торги
IF ~~ BEGIN AuctionStartTalkGO
SAY @418
IF ~~ THEN EXIT
END

// Если игрок отказался в первый раз и пришел повторно
IF ~AreaCheck("ARBGX6") Global("7xAuctionGoldswordManager","ARBGX6",1) Global("7xAuctionGoldsword","GLOBAL",1)~ BEGIN AuctionStartTalkRepeat
SAY @410
IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("7xAuctionGoldsword","GLOBAL",2)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

// После первых торгов
IF ~AreaCheck("ARBGX6") Global("7xAuctionGoldsword","GLOBAL",5)~ BEGIN AuctionMainTalk
SAY @414
IF ~True()~ THEN GOTO AuctionNOnow
IF ~Global("7xAuctionSapfir","GLOBAL",0) PartyGoldGT(34999) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionSapfirStart
IF ~Global("7xAuctionBoots","GLOBAL",0) PartyGoldGT(14999)  GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionBootsStart
IF ~Global("7xAuctionHat","GLOBAL",0) PartyGoldGT(11999)  GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionHatStart
IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) PartyGoldGT(4999) Global("7xAuctionPendant","GLOBAL",0) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionPendantStart
IF ~Global("7xAuctionCloak","GLOBAL",0) PartyGoldGT(15999) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionCloakStart
IF ~Global("7xAuctionAromat","GLOBAL",0) PartyGoldGT(5999) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionAromatStart
IF ~Global("7xAuctionMirror","GLOBAL",0) PartyGoldGT(24999) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionMirrorStart
IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2) PartyGoldGT(29999) Global("7xAuctionDiadema","GLOBAL",0) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionDiademaStart
IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",2) PartyGoldGT(29999) Global("7xAuctionDiadema","GLOBAL",0) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionDiademaStart
IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",2) PartyGoldGT(29999) Global("7xAuctionDiadema","GLOBAL",0) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionDiademaStart
IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) Global("7xAuctionPoems","GLOBAL",0) PartyGoldGT(9999) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionPoemsStart
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) Global("7xAuctionAxeHell","GLOBAL",0) GlobalTimerExpired("7xAuctionNEWStartTimer","GLOBAL")~ THEN GOTO AuctionAxeHellStart
END

IF ~~ BEGIN AuctionHatStart
SAY @322
IF ~~ THEN DO ~SetGlobal("7xAuctionHat","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionBootsStart
SAY @321
IF ~~ THEN DO ~SetGlobal("7xAuctionBoots","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionSapfirStart
SAY @320
IF ~~ THEN DO ~SetGlobal("7xAuctionSapfir","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionPendantStart
SAY @410
IF ~~ THEN DO ~SetGlobal("7xAuctionPendant","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionCloakStart
SAY @312
IF ~~ THEN DO ~SetGlobal("7xAuctionCloak","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionAromatStart
SAY @413
IF ~~ THEN DO ~SetGlobal("7xAuctionAromat","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionDiademaStart
SAY @412
IF ~~ THEN DO ~SetGlobal("7xAuctionDiadema","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionMirrorStart
SAY @411
IF ~~ THEN DO ~SetGlobal("7xAuctionMirror","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionAxeHellStart
SAY @417
IF ~~ THEN DO ~SetGlobal("7xAuctionAxeHell","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionPoemsStart
SAY @411
IF ~~ THEN DO ~SetGlobal("7xAuctionPoems","GLOBAL",1)~ REPLY @550 GOTO AuctionStartTalkGO
IF ~~ THEN REPLY @408 EXIT
END

IF ~~ BEGIN AuctionNOnow
SAY @415
IF ~~ THEN EXIT
END

// Панталоны
// Если Минск в группе
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionGoldsword","GLOBAL",3) InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN 7xAUCTIO AuctionScene1Minsc
@115 
=@116
=@117
=@118
== MINSCJ @119
== 7xAUCTIO @120 DO ~SetGlobal("7xAuctionGoldsword","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
== 7XNOBLE2 @121
== 7XNOBLE1 @122
== 7XNOBLE2 @123
== 7xAUCTIO @124
== 7XCRE97 @125
== BG1X23 @126
== BG1X20 @126
== 7XNOBLE2 @127
== 7XNOBLE1 @128
== BG1X1 @129
== BG1X20 @130
== BG1X23 @131
== 7XCRE97 @132
== BG1X20 @133
== MINSCJ @134
== 7XNOBLE2 @135
== 7XCRE97 @136
=@137
== 7xAUCTIO @138 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
== BG1X20 @139
== 7XCRE97 @140
== NOBLEM3 @141
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @171
== 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @172
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @173
== NOBLEM3 IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @174
== PLAYER1 @142
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @143
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @144
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @145
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @395
== MINSCJ @146
== BG1X23 @147
== NOBLEM3 @148
== 7XCRE97 @149
== MINSCJ @150
== 7XNOBLE2 @151
== BG1X20 @152
== NOBLEM3 @153
== NOBLEM3 @154
== MINSCJ @155
== BG1X20 @156
== 7XNOBLE2 @157
== 7XCRE97 @158
== BG1X23 @159
== MINSCJ @160
== 7XNOBLE1 @161
== NOBLEM3 @162
== 7XCRE97 @163
== BG1X20 @164
== 7XNOBLE2 @165 
END
IF ~~ THEN REPLY @166 EXTERN 7xAUCTIO AuctionScene1MinscYES
IF ~~ THEN REPLY @93 EXTERN 7xAUCTIO AuctionScene1MinscNO

APPEND 7xAUCTIO
IF ~~ BEGIN AuctionScene1MinscYES
SAY @167
IF ~~ THEN REPLY @168 EXTERN 7xAUCTIO AuctionScene1MinscYES_1
IF ~~ THEN REPLY @313 EXTERN 7xAUCTIO AuctionScene1MinscNO
END
END

CHAIN 7xAUCTIO AuctionScene1MinscYES_1
@169 DO ~GiveItemCreate("PLATPANT",Player1,1,0,0) TakePartyGold(5000)~
== 7XNOBLE1 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170
== NOBLEM3 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170 
== 7XCRE97 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170 
== BG1X20 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170 
== 7XNOBLE2 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170
== 7xAUCTIO @208
EXIT

CHAIN 7xAUCTIO AuctionScene1MinscNO
@314 
== 7XNOBLE1 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170
== NOBLEM3 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170 
== 7XCRE97 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170 
== BG1X20 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170 
== 7XNOBLE2 IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @170
== 7xAUCTIO @208
EXIT


// Если Минска нет в группе
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionGoldsword","GLOBAL",3) OR(2) !InParty("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN 7xAUCTIO AuctionScene1NoMinsc
@115 
=@116
=@117
=@118
== 7xAUCTIO @120 DO ~SetGlobal("7xAuctionGoldsword","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
== 7XNOBLE2 @121
== 7XNOBLE1 @122
== 7XNOBLE2 @123
== 7xAUCTIO @124
== 7XCRE97 @125
== BG1X23 @126
== BG1X20 @126
== 7XNOBLE2 @127
== 7XNOBLE1 @128
== BG1X1 @129
== BG1X20 @130
== BG1X23 @131
== 7XCRE97 @132
== BG1X20 @133
== 7XNOBLE2 @135
== 7XCRE97 @136
=@137
== 7xAUCTIO @138 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
== BG1X20 @139
== 7XCRE97 @140
== NOBLEM3 @141
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @171
== 7XFALDJ IF ~InParty("7XFALD") !StateCheck("7XFALD",CD_STATE_NOTVALID)~ THEN @172
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @173
== NOBLEM3 IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @174
== PLAYER1 @142
== ANOMENJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @143
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @144
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @145
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @395
== BG1X23 @147
== NOBLEM3 @148
== 7XCRE97 @149
== 7xAUCTIO @176
=@177
== NOBLEM3 @178
== 7XNOBLE1 @179
== 7xAUCTIO @208
EXIT

// Реплики дворян про панталоны
CHAIN IF WEIGHT #-20 ~PartyHasItem("PLATPANT") Global("AbelardPantaloonsComment","ARBGX2",1)~ THEN BG1X8 BG1X8pantaloons
@296 DO ~SetGlobal("AbelardPantaloonsComment","ARBGX2",2)~
=@297
== GNOBLEM2 @298
== BG1X8 @299
== BG1X18 @300
== BG1X8 @301
== GNOBLEM2 @302
== RUMORA @303
== BG1X18 @304
== BG1X8 @305
== GNOBLEM2 @306
== BG1X8 @307
== GNOBLEM2 @308
== BG1X8 @309
=@310
EXIT

CHAIN IF WEIGHT #-20 ~PartyHasItem("PLATPANT") Global("PellusPantaloonsComment","AR1000",1)~ THEN PEHLLUS PEHLLUSpantaloons
@382 DO ~SetGlobal("PellusPantaloonsComment","AR1000",2)~
== TOADY @383
EXIT

CHAIN IF WEIGHT #-20 ~PartyHasItem("PLATPANT") Global("HenryPantaloonsComment","ARBGX2",1)~ THEN 7XCREHH 7XCREHHpantaloons
@384 DO ~SetGlobal("HenryPantaloonsComment","ARBGX2",2)~
== GNOBLEF1 @385
= @386
EXIT

CHAIN IF WEIGHT #-20 ~PartyHasItem("PLATPANT") Global("FeveronPantaloonsComment","AR0500",1)~ THEN BNOBLE1 FEVERONpantaloons
@378 DO ~SetGlobal("FeveronPantaloonsComment","AR0500",2)~
== BNOBLE2 @379
== BNOBLE1 @380
== BNOBLE2 @381
EXIT

// Лорд Друзерс
BEGIN 7xDruzer

IF ~Global("DruzersSpawn","GLOBAL",1)~ BEGIN 7xDruzerTalk
SAY @350
IF ~~ THEN DO ~SetGlobal("DruzersSpawn","GLOBAL",2)~ REPLY @352 GOTO 7xDruzerTalk1
IF ~~ THEN DO ~SetGlobal("DruzersSpawn","GLOBAL",2)~ REPLY @351 GOTO 7xDruzerTalk2
END

IF ~~ BEGIN 7xDruzerTalk1
SAY @354
=@355
IF ~OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @358 GOTO 7xDruzerTalk3
IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN JANJ 7xDruzerTalkJan
IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ 7xDruzerTalkKorgan
END

IF ~~ BEGIN 7xDruzerTalk2
SAY @353
=@355
IF ~OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @358 GOTO 7xDruzerTalk3
IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN JANJ 7xDruzerTalkJan
IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ 7xDruzerTalkKorgan
END

IF ~~ BEGIN 7xDruzerTalk3
SAY @359
IF ~OR(3) !InParty("7XTIAX") !InMyArea("7XTIAX") StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN REPLY @360 GOTO 7xDruzerTalk4
IF ~OR(3) !InParty("7XTIAX") !InMyArea("7XTIAX") StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN REPLY @361 GOTO 7xDruzerTalk5
IF ~InParty("7XTIAX") InMyArea("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN EXTERN 7XTIAXJ 7xDruzerTalk4Tiax
END

IF ~~ BEGIN 7xDruzerTalk4
SAY @362
IF ~OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @364 GOTO 7xDruzerTalk6
IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ 7xDruzerTalkKorgan1
END

IF ~~ BEGIN 7xDruzerTalk5
SAY @363
IF ~OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @364 GOTO 7xDruzerTalk6
IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ 7xDruzerTalkKorgan1
END

IF ~~ BEGIN 7xDruzerTalk6
SAY @365
=@366
=@367
=@368
=@369
IF ~~ THEN DO ~TakePartyItem("PLATPANT") GiveGoldForce(120000) EscapeArea()~ REPLY @370 GOTO 7xDruzerTalk8
IF ~~ THEN DO ~TakePartyItem("PLATPANT") GiveGoldForce(135000) EscapeArea()~ REPLY @371 GOTO 7xDruzerTalk9
IF ~~ THEN DO ~EscapeArea()~ REPLY @372 GOTO 7xDruzerTalk10
END

IF ~~ BEGIN 7xDruzerTalk8
SAY @373
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xDruzerTalk9
SAY @374
IF ~~ THEN EXIT
END

IF ~~ BEGIN 7xDruzerTalk10
SAY @374
IF ~OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXIT
IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN JANJ 7xDruzerTalkJan1
END

APPEND 7XTIAXJ 
IF ~~ BEGIN 7xDruzerTalk4Tiax
SAY @377
IF ~~ THEN REPLY @360 EXTERN 7xDruzer 7xDruzerTalk4
IF ~~ THEN REPLY @361 EXTERN 7xDruzer 7xDruzerTalk5
END
END

APPEND JANJ
IF ~~ BEGIN 7xDruzerTalkJan
SAY @357
IF ~~ THEN REPLY @358 EXTERN 7xDruzer 7xDruzerTalk3
END

IF ~~ BEGIN 7xDruzerTalkJan1
SAY @376
IF ~~ THEN EXIT
END
END

APPEND KORGANJ
IF ~~ BEGIN 7xDruzerTalkKorgan
SAY @356
IF ~OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN REPLY @358 EXTERN 7xDruzer 7xDruzerTalk3
IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN JANJ 7xDruzerTalkJan
END

IF ~~ BEGIN 7xDruzerTalkKorgan1
SAY @375
IF ~~ THEN REPLY @364 EXTERN 7xDruzer 7xDruzerTalk6
END
END

// Топор
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionAxeHell","GLOBAL",3)~ THEN 7xAUCTIO AuctionSceneAxe
@211 
=@212
=@213
=@214
== 7XNOBLE4 @215 // Кориус 
== 7XNOBLE5 @216 // Канвор
== 7XNOBLE4 @217 // Кориус 
== KORGANJ @218
=@219
== 7XNOBLE5 @220 // Канвор
== KORGANJ @221
END
IF ~~ THEN REPLY @222 EXTERN KORGANJ AuctionSceneAxe1
IF ~~ THEN REPLY @223 EXTERN KORGANJ AuctionSceneAxe1

CHAIN KORGANJ AuctionSceneAxe1
@224 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~
== 7XNOBLE4 @225 // Кориус 
== 7XNOBLE5 @226 // Канвор
=@227
== 7XTUFUS @228
== KORGANJ @229
== 7xAUCTIO @230
== BG1X20 @231 // Матильда
== 7XNOBLE5 @232 // Канвор
== KORGANJ @233
== BG1X24 @234 // Алиелла
== 7XNOBLE5 @235 // Канвор
=@236
== 7xAUCTIO @237 DO ~SetGlobal("7xAuctionAxeHell","GLOBAL",4)~
== 7XNOBLE6 @238 // Сирус
== 7XNOBLE5 @239 // Канвор
== 7XNOBLE4 @240 // Кориус 
== NOBLEM3 @241 // Офал
== PLAYER1 @242 
== 7xAUCTIO @243
EXIT

CHAIN IF ~Global("7xAuctionAxeHell","GLOBAL",6)~ THEN 7XNOBLE4 AuctionSceneAxe2
@245 DO ~ActionOverride(Player1,SetDialog("PLAYER1")) SetGlobal("7xAuctionAxeHell","GLOBAL",7)~
== KORGANJ @246
=@247
== PLAYER1 @248
== 7XNOBLE6 @249 // Сирус
== KORGANJ @250
== 7xAUCTIO @251 DO ~GiveItemCreate("TOPGAD","Korgan",1,0,0)~
== KORGANJ @252
== 7xAUCTIO @253 DO ~GiveGoldForce(1000)~
== KORGANJ @254
== 7xAUCTIO @208
EXIT

// Томик поэм
// В группе есть Хаердалис
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionPoems","GLOBAL",3) InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN 7XSAREZ AuctionScenePoems1
@255 
=@256
=@257
== 7xAUCTIO @258 DO ~SetGlobal("7xAuctionPoems","GLOBAL",4)~
== 7XSAREZ @259
=@260
=@261
== 7XNOBLE2 @262 // Sir Berwin
== BG1X23 @263 // Lady Ravhana
== 7XSAREZ @264
=@265
== 7XCRE97 @266 // Charles
== 7XSAREZ @267
=@268
=@269
=@270
=@271
== 7xAUCTIO @272
== 7XSAREZ @273
== BG1X24 @274 // Lady Aliella
== 7XSAREZ @275
=@276
=@277
== 7XNOBLE2 @278 // Sir Berwin
== BG1X23 @278 // Lady Ravhana
== BG1X24 @278 // Lady Aliella
== 7XCRE97 @278 // Charles
== 7XSAREZ @279
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @295
== HAERDAJ @280
== 7XSAREZ @281
== 7XCRE97 @282 // Charles
== HAERDAJ @283
== 7XSAREZ @284
== HAERDAJ @285
END
IF ~~ THEN REPLY @286 EXTERN 7XSAREZ AuctionScenePoemsYES
IF ~~ THEN REPLY @287 EXTERN HAERDAJ AuctionScenePoemsNO

// В группе нет Хаердалиса
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionPoems","GLOBAL",3) OR(2) !InParty("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN 7XSAREZ AuctionScenePoems2
@255 
=@256
=@257
== 7xAUCTIO @258 DO ~SetGlobal("7xAuctionPoems","GLOBAL",4)~
== 7XSAREZ @259
=@260
=@261
== 7XNOBLE2 @262 // Sir Berwin
== BG1X23 @263 // Lady Ravhana
== 7XSAREZ @264
=@265
== 7XCRE97 @266 // Charles
== 7XSAREZ @267
=@268
=@269
=@270
=@271
== 7xAUCTIO @272
== 7XSAREZ @273
== BG1X24 @274 // Lady Aliella
== 7XSAREZ @275
=@276
=@277
== 7XNOBLE2 @278 // Sir Berwin
== BG1X23 @278 // Lady Ravhana
== BG1X24 @278 // Lady Aliella
== 7XCRE97 @278 // Charles
== 7XSAREZ @279
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @295
== 7xAUCTIO @293
== 7XSAREZ @294
== 7xAUCTIO @208
EXIT

CHAIN 7XSAREZ AuctionScenePoemsYES
@288 DO ~GiveItemCreate("TOMGENIA","HaerDalis",1,0,0) TakePartyGold(10000)~
== HAERDAJ @289
== 7XSAREZ @290
== 7xAUCTIO @208
EXIT


CHAIN HAERDAJ AuctionScenePoemsNO
@291
== 7XSAREZ @292
== 7xAUCTIO @293
== 7XSAREZ @294
== 7xAUCTIO @208
EXIT

// Волшебное зеркало
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionMirror","GLOBAL",3)~ THEN 7xAUCTIO AuctionSceneMirror1
@0 DO ~SetGlobal("7xAuctionMirror","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@1
=@2
== noblem3 @3 // Ofal
== BG1X20 @4 // Matilda
== 7xAUCTIO @5
=@6
=@7
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @392
== BNOBLE2 @8 // Lady Diana
== BNOBLE1 @9 // Lord Feveron
== BNOBLE2 @10 // Lady Diana
== 7XNOBLE3 @11 // Lady Tandolane
== 7xAUCTIO @12
== 7XNOBLE3 @13 // Lady Tandolane
== 7XNOBLE6 @14 // Lord Sirus
== 7XNOBLE3 @15 // Lady Tandolane
== 7XNOBLE6 @16 // Lord Sirus
== 7XNOBLE3 @17 // Lady Tandolane
== 7XNOBLE6 @18 // Lord Sirus
== 7XNOBLE3 @19 // Lady Tandolane
== 7xAUCTIO @20
== 7XNOBLE6 @21 // Lord Sirus
== 7XNOBLE3 @22 // Lady Tandolane
== 7XNOBLE6 @23 // Lord Sirus
== 7XNOBLE3 @24 // Lady Tandolane
== BG1X20 @25
== 7XNOBLE6 @26 // Lord Sirus
== 7XNOBLE3 @27 // Lady Tandolane
== 7xAUCTIO @28
== 7XCRE97 @31 // Lord Charles
== 7XNOBLE3 @32 // Lady Tandolane
== 7XCRE97 @33 // Lord Charles
=@34
== 7XNOBLE3 @35 // Lady Tandolane
== 7xAUCTIO @36
== 7XNOBLE3 @37 // Lady Tandolane
== 7XNOBLE6 @38 // Lord Sirus
END
IF ~~ THEN REPLY @39 EXTERN 7xAUCTIO AuctionSceneMirror1YES
IF ~~ THEN REPLY @40 EXTERN BG1X24 AuctionSceneMirror1NO

CHAIN 7xAUCTIO AuctionSceneMirror1YES
@41 DO ~GiveItemCreate("ZEROCHAR",Player1,1,0,0) SetGlobal("7xAuctionMirrorYES","7xARAU",1) TakePartyGold(25000)~
== 7XNOBLE3 @42 // Lady Tandolane
== 7XNOBLE6 @43 // Lord Sirus
== 7XNOBLE3 @44 // Lady Tandolane
== 7XNOBLE6 @45 // Lord Sirus
EXIT

CHAIN BG1X24 AuctionSceneMirror1NO
@46
== 7xAUCTIO @47
== 7XNOBLE3 @42 // Lady Tandolane
== 7XNOBLE6 @43 // Lord Sirus
== 7XNOBLE3 @44 // Lady Tandolane
== 7XNOBLE6 @45 // Lord Sirus
EXIT

CHAIN IF WEIGHT #-30 ~AreaCheck("7XARAU") Global("7xAuctionMirror","GLOBAL",5)~ THEN BG1X85 AuctionSceneMirror2
@48 DO ~SetGlobal("7xAuctionMirror","GLOBAL",6)~
== noblew3 @49  // Lady Sharin Ofal
== noblem3 @50 // Lord Ofal
== BG1X20 @51 // Matilda
== BG1X85 @52 // Lord Paris
=@53
== 7xAUCTIO @54
== BG1X85 @55 // Lord Paris
== noblew3 @56  // Lady Sharin Ofal
== 7XNOBLE6 @57 // Lord Sirus
== 7xAUCTIO @58
== PLAYER1 IF ~Global("7xAuctionMirrorYES","7xARAU",1)~ THEN @59
== BG1X24 IF ~Global("7xAuctionMirrorYES","7xARAU",0)~ THEN @60
== 7xAUCTIO @208
EXIT

// Диадема "Невянущая роза"
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionDiadema","GLOBAL",3)~ THEN 7xDILIN AuctionSceneDiadema1
@62 DO ~SetGlobal("7xAuctionDiadema","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@63
== noblew3 @64  // Lady Sharin Ofal
== noblem3 @64 // Lord Ofal
== 7XNOBLE2 @64 // Sir Berwin
== 7xDILIN @65
=@66
== BG1X23 @67 // Lady Ravhana
== 7xDILIN @68
=@69
=@70
=@71
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @393
== 7xDILIN @72
== BNOBLE1 @73 // Lord Feveron
== BNOBLE2 @74 // Lady Diana
== 7XNOBLE5 @75 // Canvor
== noblew3 @76  // Lady Sharin Ofal
== noblem3 @77 // Lord Ofal
== BG1X23 @78// Lady Ravhana
== 7XNOBLE2 @79 // Sir Berwin
== 7XNOBLE5 @80 // Canvor
=@81
== BNOBLE2 @82 // Lady Diana
== 7XNOBLE5 @83 // Canvor
== BNOBLE2 @84 // Lady Diana
== 7XNOBLE5 @85 // Canvor
== PEHLLUS @86 // Pellus
== 7XNOBLE7 @87 // Lady Elgie
== PEHLLUS @88 // Pellus
=@89
== 7XNOBLE7 @90 // Lady Elgie
== PEHLLUS @91 // Pellus
== BNOBLE1 @92 // Lord Feveron
END
IF ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",2)~ THEN REPLY @94 EXTERN AERIEJ AuctionSceneDiademaAerie
IF ~InParty("Jaheira") Global("JaheiraRomanceActive","GLOBAL",2)~ THEN REPLY @101 EXTERN JAHEIRAJ AuctionSceneDiademaJaheira
IF ~InParty("Viconia") Global("ViconiaRomanceActive","GLOBAL",2)~ THEN REPLY @96 EXTERN VICONIJ AuctionSceneDiademaViconia
IF ~~ THEN REPLY @93 EXTERN 7xDILIN AuctionSceneDiademaNO

CHAIN 7xDILIN AuctionSceneDiademaNO
@110 
== BG1X23 @111// Lady Ravhana
== 7XNOBLE2 @112 // Sir Berwin
== 7XNOBLE5 @113 // Canvor
== PLAYER1 @114
EXIT

CHAIN AERIEJ AuctionSceneDiademaAerie
@95
== 7xDILIN @103
== noblew3 @104  // Lady Sharin Ofal
== noblem3 @104 // Lord Ofal
== 7XNOBLE2 @104 // Sir Berwin
== 7xDILIN @105
== 7XNOBLE5 @106 // Canvor
== PEHLLUS @107 // Pellus
== 7xDILIN @108 DO ~GiveItemCreate("NEVROSA",Player1,1,0,0) TakePartyGold(30000)~
== PLAYER1 @109
EXIT

CHAIN JAHEIRAJ AuctionSceneDiademaJaheira
@102
== 7xDILIN @103
== noblew3 @104  // Lady Sharin Ofal
== noblem3 @104 // Lord Ofal
== 7XNOBLE2 @104 // Sir Berwin
== 7xDILIN @105
== 7XNOBLE5 @106 // Canvor
== PEHLLUS @107 // Pellus
== 7xDILIN @108 DO ~GiveItemCreate("NEVROSA",Player1,1,0,0) TakePartyGold(30000)~
== PLAYER1 @109
EXIT

CHAIN VICONIJ AuctionSceneDiademaViconia
@97
=@98
== PLAYER1 @99
== VICONIJ @100
== 7xDILIN @103
== noblew3 @104  // Lady Sharin Ofal
== noblem3 @104 // Lord Ofal
== 7XNOBLE2 @104 // Sir Berwin
== 7xDILIN @105
== 7XNOBLE5 @106 // Canvor
== PEHLLUS @107 // Pellus
== 7xDILIN @108 DO ~GiveItemCreate("NEVROSA",Player1,1,0,0) TakePartyGold(30000)~
== PLAYER1 @109
EXIT

// Пузырёк священных духов
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionAromat","GLOBAL",3)~ THEN 7xAUCTIO AuctionSceneAromat1
@180 DO ~SetGlobal("7xAuctionAromat","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@181
=@182
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @387
== 7xAUCTIO IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @388
== 7XNOBLE1 IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @389
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @390
== 7xAUCTIO IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @391
== 7xAUCTIO @183
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @184
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @185
== 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @186
== 7XCoranJ IF ~InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID) InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @187
== 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @188
== BG1X1 IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @189
== 7XCRE97 IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @190
== 7XNOBLE2 IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID) InParty("7XCORAN")!StateCheck("7XCORAN",CD_STATE_NOTVALID)~ THEN @191
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @192
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @193
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @194
== 7XNOBLE1 IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @195
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @196
== 7XNOBLE2 IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @197
== noblem3 IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @198
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @199
== 7xAUCTIO @311
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @394
END
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @200 EXTERN KORGANJ AuctionSceneAromat2KorganSoft
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @202 EXTERN 7xAUCTIO AuctionSceneAromat2Buy
IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @201 EXTERN 7xAUCTIO AuctionSceneAromat2NO
IF ~OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @210 EXTERN 7xAUCTIO AuctionSceneAromat2Buy
IF ~OR(2) !InParty("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneAromat2NO

CHAIN KORGANJ AuctionSceneAromat2KorganSoft
@203
== 7xAUCTIO @204
END
IF ~~ THEN REPLY @210 EXTERN 7xAUCTIO AuctionSceneAromat2Buy
IF ~~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneAromat2NO
IF ~~ THEN REPLY @209 EXTERN 7xAUCTIO AuctionSceneAromat2NO

APPEND 7xAUCTIO
IF ~~ BEGIN AuctionSceneAromat2Buy
SAY @205
=@206
=@208
IF ~~ THEN DO ~GiveItemCreate("FLAODUH",Player1,1,0,0) TakePartyGold(6000)~ EXIT
END

IF ~~ BEGIN AuctionSceneAromat2NO
SAY @207
=@208
IF ~~ THEN EXIT
END
END


// Расписной плащ великого барда
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionCloak","GLOBAL",3)~ THEN 7XNOBLE7 AuctionSceneCloak1 //Lady Elgie
@419 DO ~SetGlobal("7xAuctionCloak","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
== 7XNOBL10 @420 // Lady Barvicia
== 7XNOBLE8 @421 // Samnus
=@422
== PEHLLUS @423 // Pellus
== 7XNOBL10 @424 // Lady Barvicia
== 7XNOBLE8 @425 // Samnus
== PEHLLUS @426 // Pellus
== 7XNOBLE8 @427 // Samnus
=@428
=@429
== 7XTIAXJ IF ~InParty("7XTIAX") !StateCheck("7XTIAX",CD_STATE_NOTVALID)~ THEN @396
== BG1X23 @430 // Lady Ravhana
== 7XNOBLE8 @431 // Samnus
=@432
== 7XNOBLE7 @433 // Lady Elgie
== 7XNOBL10 @434 // Lady Barvicia
== 7XNOBLE8 @435 // Samnus
== 7XNOBL10 @436 // Lady Barvicia
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @437
== 7XNOBLE8 IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @438 // Samnus
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @439
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @440
== 7XNOBLE8 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @441 // Samnus
=@442
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @443
== 7XNOBL10 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @444 // Lady Barvicia
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @445
== 7XNOBL10 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @446 // Lady Barvicia
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @447
== 7XNOBL10 IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @448 // Lady Barvicia
=@449
== 7XNOBLE9 @450 // Sir Robin
== 7XNOBL10 @451 // Lady Barvicia
== 7XNOBLE9 @452 // Sir Robin
== 7XNOBL10 @453 // Lady Barvicia
== 7XNOBLE9 @454 // Sir Robin
== 7XNOBLE7 @455 // Lady Elgie
== 7XNOBL10 @456 // Lady Barvicia 
== 7XNOBLE9 @457 // Sir Robin
== 7XNOBL10 @458 // Lady Barvicia
== 7XNOBLE8 @459 // Samnus
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @460
== HAERDAJ IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @461
== BNOBLE1 IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @462 // Lord Feveron
== 7XNOBLE9 IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @463 // Sir Robin
== 7XNOBL10 @464 // Lady Barvicia
== 7XNOBLE9 @465 // Sir Robin
END
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN REPLY @466 EXTERN 7XGarJ AuctionSceneCloakGarrick
IF ~InParty("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN REPLY @467 EXTERN HAERDAJ AuctionSceneCloakHaerDalis
IF ~~ THEN REPLY @471 EXTERN 7XNOBLE8 AuctionSceneCloakMyself
IF ~~ THEN REPLY @472 EXTERN 7XNOBLE9 AuctionSceneCloakRobin

CHAIN 7XGarJ AuctionSceneCloakGarrick
@468
== PLAYER1 @470
== 7XNOBLE8 @474 // Samnus
== 7xAUCTIO @208
EXIT

CHAIN HAERDAJ AuctionSceneCloakHaerDalis
@469
== PLAYER1 @470
== 7XNOBLE8 @474 // Samnus
== 7xAUCTIO @208
EXIT

CHAIN 7XNOBLE8 AuctionSceneCloakMyself
@474 DO ~GiveItemCreate("RASBARD",Player1,1,0,0) TakePartyGold(16000)~ 
== 7xAUCTIO @208
EXIT

CHAIN 7XNOBLE9 AuctionSceneCloakRobin
@473
== 7XNOBLE8 @474 // Samnus
== 7xAUCTIO @208
EXIT

CHAIN IF WEIGHT #-2 ~AreaCheck("ARBGX6") Global("7xAuctionCloak","GLOBAL",6)~ THEN 7XNOBL10 AuctionSceneCloakAfter1
@475
== 7XNOBLE9 @476 DO ~SetGlobal("7xAuctionCloak","GLOBAL",7)~ // Sir Robin
== 7XNOBL10 @477 // Lady Barvicia
== 7XNOBLE9 @478 // Sir Robin
== 7XNOBL10 @479 // Lady Barvicia
== 7XNOBLE9 @480 // Sir Robin
== 7XNOBL10 @481 DO ~EscapeArea()~ // Lady Barvicia
=@482 
EXIT

APPEND 7XNOBLE9

IF WEIGHT #-2 ~AreaCheck("ARBGX6") Global("7xAuctionCloak","GLOBAL",8) !PartyHasItem("RASBARD")~ BEGIN AuctionSceneCloakAfter2_1
SAY @483
=@484
IF ~~ THEN REPLY @486 GOTO AuctionSceneCloakAfter3_1_1
IF ~~ THEN REPLY @487 GOTO AuctionSceneCloakAfter3_2
IF ~~ THEN REPLY @488 GOTO AuctionSceneCloakAfter3_2
END

IF WEIGHT #-2 ~AreaCheck("ARBGX6") Global("7xAuctionCloak","GLOBAL",8) PartyHasItem("RASBARD")~ BEGIN AuctionSceneCloakAfter2_2
SAY @483
=@485
IF ~~ THEN REPLY @486 GOTO AuctionSceneCloakAfter3_1_2
IF ~~ THEN REPLY @487 GOTO AuctionSceneCloakAfter3_2
IF ~~ THEN REPLY @488 GOTO AuctionSceneCloakAfter3_2
END

IF ~~ BEGIN AuctionSceneCloakAfter3_2
SAY @490
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ BEGIN AuctionSceneCloakAfter3_1_1
SAY @489
=@491
=@492
IF ~OR (3) !InParty("7XGAR") !InMyArea("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN GOTO AuctionSceneCloakAfter3_3
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN EXTERN 7XGarJ AuctionSceneCloakAfter3_Garrick
END

IF ~~ BEGIN AuctionSceneCloakAfter3_1_2
SAY @489
=@492
IF ~OR (3) !InParty("7XGAR") !InMyArea("7XGAR") StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN GOTO AuctionSceneCloakAfter3_3
IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN EXTERN 7XGarJ AuctionSceneCloakAfter3_Garrick
END

IF ~~ BEGIN AuctionSceneCloakAfter3_3
SAY @494
IF ~~ THEN DO ~EscapeArea()~ REPLY @496 GOTO AuctionSceneCloakAfter4
IF ~~ THEN REPLY @495 GOTO AuctionSceneCloakAfter3_2
END

IF ~~ BEGIN AuctionSceneCloakAfter4
SAY @497
=@498
IF ~!PartyHasItem("RASBARD")~ THEN DO ~GiveItemCreate("PURECOUR",Player1,1,0,0) SmallWait(5)~ EXIT
IF ~PartyHasItem("RASBARD")~ THEN DO ~TakePartyItem("RASBARD") GiveItemCreate("PURECOUR",Player1,1,0,0) SmallWait(5)~ EXIT
END

END

APPEND 7XGarJ 
IF ~~ BEGIN AuctionSceneCloakAfter3_Garrick
SAY @493
IF ~~ THEN EXTERN 7XNOBLE9 AuctionSceneCloakAfter3_3
END
END

// Кулон прилежного ученика
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionPendant","GLOBAL",3)~ THEN 7xAUCTIO AuctionScenePendant1
@500 DO ~SetGlobal("7xAuctionPendant","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@501
=@502
== 7XNOBLE1 @503
== 7XCRE97 @504
== 7xAUCTIO @505
== 7XNOBLE1 @506
=@507
=@508
=@509
== NALIAJ @510
== 7xAUCTIO @511
== 7XNOBL11 @512
== NALIAJ @513
== 7xAUCTIO @514
== 7XNOBL11 @515
== NALIAJ @516
== 7XNOBL11 @517
== 7xAUCTIO @518
== 7XNOBL11 @519
== NALIAJ @520
== 7xAUCTIO @521
== 7XNOBL11 @522
== NALIAJ @523
== 7XNOBL11 @524
== NALIAJ @525
== 7xAUCTIO @526
== NALIAJ @527
== 7XNOBL11 @528
== NALIAJ @529
== 7xAUCTIO @530
== IF_FILE_EXISTS 7XsharJ IF ~InParty("7XSHAR") !StateCheck("7XSHAR",CD_STATE_NOTVALID)~ THEN @315
== VICONIJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @317
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) OR(2) !InParty("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @317
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @318
== IF_FILE_EXISTS 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @319
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @316
END
IF ~~ THEN REPLY @531 EXTERN 7xAUCTIO AuctionScenePendant2
IF ~~ THEN REPLY @532 EXTERN 7xAUCTIO AuctionScenePendant2

CHAIN 7xAUCTIO AuctionScenePendant2
@533
== 7XNOBL11 @534
END
IF ~~ THEN REPLY @535 EXTERN NALIAJ AuctionScenePendant3
IF ~~ THEN REPLY @536 EXTERN NALIAJ AuctionScenePendant3
IF ~~ THEN REPLY @537 EXTERN NALIAJ AuctionScenePendant3

CHAIN NALIAJ AuctionScenePendant3
@538
=@539
== 7xAUCTIO @540
== NALIAJ @541
== 7XNOBL11 @542
== PLAYER1 @543 DO ~GiveItemCreate("AMULNALI",Player1,1,0,0) TakePartyGold(5000)~ 
== 7xAUCTIO @544
=@545
== NALIAJ @546
== 7XNOBL11 @547
== 7xAUCTIO @548
== 7XNOBL11 @549
== 7xAUCTIO @208
EXIT

// Антимагический сапфир
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionSapfir","GLOBAL",3)~ THEN 7xAUCTIO AuctionSceneSapfir1
@551 DO ~SetGlobal("7xAuctionSapfir","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@552
=@553
=@554
=@555
=@556
== 7XNOBLE1 @557
== 7xAUCTIO @558
=@559
=@560
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @561
== 7xAUCTIO @562
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @563
== 7xAUCTIO @564
== VALYGARJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @565
== 7xAUCTIO @566
== 7XNOBLE2 @567
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @568
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @569
== 7XNOBL12 @570
== 7xAUCTIO @571
== 7XNOBL12 @572
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @573
=@574
== 7xAUCTIO IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @575
== 7XCRE97 IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @576
== 7xAUCTIO @577
== noblem3 @578
== 7XNOBL12 @579
== 7XNOBLE2 @580
== 7XNOBL12 @581
END
IF ~~ THEN REPLY @582 EXTERN 7XNOBL12 AuctionSceneSapfir3
IF ~~ THEN REPLY @583 EXTERN 7XNOBL12 AuctionSceneSapfir3
IF ~~ THEN REPLY @40 EXTERN 7XNOBLE2 AuctionSceneSapfir2

CHAIN 7XNOBLE2 AuctionSceneSapfir2
@583 
== 7XNOBL12 @588
== 7XNOBLE2 @592 
== 7XNOBL12 @593
== 7xAUCTIO @499
EXIT

CHAIN 7XNOBLE2 AuctionSceneSapfir2_1
@587 
== 7XNOBL12 @588
== 7XNOBLE2 @592 
== 7XNOBL12 @593
== 7xAUCTIO @499
EXIT

CHAIN 7XNOBLE2 AuctionSceneSapfir2_2
@592 
== 7XNOBL12 @593
== 7xAUCTIO @499
=@208
EXIT

APPEND 7xAUCTIO 
IF ~~ BEGIN AuctionSceneSapfir2_3
SAY @499
IF ~~ THEN EXIT
END
END

CHAIN 7XNOBL12 AuctionSceneSapfir3
@584 
END
IF ~~ THEN REPLY @585 EXTERN 7XNOBL12 AuctionSceneSapfir4
IF ~~ THEN REPLY @586 EXTERN 7XNOBL12 AuctionSceneSapfir4
IF ~~ THEN REPLY @40 EXTERN 7XNOBLE2 AuctionSceneSapfir2_1

CHAIN 7XNOBL12 AuctionSceneSapfir4
@588
END
IF ~~ THEN REPLY @589 EXTERN 7XNOBL12 AuctionSceneSapfir5
IF ~~ THEN REPLY @590 EXTERN 7XNOBL12 AuctionSceneSapfir5
IF ~~ THEN REPLY @40 EXTERN 7XNOBLE2 AuctionSceneSapfir2_2

CHAIN 7XNOBL12 AuctionSceneSapfir5
@591 
== 7XNOBLE2 @592 
== 7XNOBL12 @593
END
IF ~~ THEN REPLY @594 EXTERN 7XNOBL12 AuctionSceneSapfir6
IF ~~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneSapfir2_3

CHAIN 7XNOBL12 AuctionSceneSapfir6
@595 
== 7XCRE97 @596
== 7XNOBL12 @597 
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @598
== 7xAUCTIO @599 DO ~GiveItemCreate("ANTIMSAP",Player1,1,0,0) TakePartyGold(35000)~ 
=@600
=@208
EXIT

// Сапоги "Безупречная поступь"

// Если Маззи в группе
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionBoots","GLOBAL",3) InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 7xAUCTIO AuctionSceneBoots1
@601 DO ~SetGlobal("7xAuctionBoots","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@602
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @603
== 7xAUCTIO @604
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @605
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @606
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @607
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @607
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @608
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @609
== 7xAUCTIO @610
=@611
== 7XNOBL13 @612
== 7xAUCTIO @613
== MAZZYJ @614
== 7xAUCTIO @615
== 7XNOBL13 @616
== MAZZYJ @622
== 7xAUCTIO @617
== 7XNOBL13 @618
END
IF ~~ THEN REPLY @619 EXTERN 7XNOBL13 AuctionSceneBoots2
IF ~~ THEN REPLY @620 EXTERN 7XNOBL13 AuctionSceneBoots2
IF ~~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneBoots3

// Если Маззи не в группе
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionBoots","GLOBAL",3) OR(2) !InParty("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN 7xAUCTIO AuctionSceneBoots1NoMazzy
@601 DO ~SetGlobal("7xAuctionBoots","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@602
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @603
== 7xAUCTIO @604
== IF_FILE_EXISTS 7XSafaJ IF ~InParty("7XSAFA") !StateCheck("7XSAFA",CD_STATE_NOTVALID)~ THEN @605
== AERIEJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @606
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @607
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @607
== NALIAJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @608
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @609
== 7xAUCTIO @610
=@611
== 7XNOBL13 @612
== 7xAUCTIO @613
== 7xAUCTIO @617
== 7XNOBL13 @618
END
IF ~~ THEN REPLY @620 EXTERN 7XNOBL13 AuctionSceneBoots6
IF ~~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneBoots3

CHAIN 7XNOBL13 AuctionSceneBoots2
@623 
== MAZZYJ @624
== 7XNOBL13 @625
END
IF ~~ THEN REPLY @626 EXTERN 7XNOBL13 AuctionSceneBoots4
IF ~~ THEN REPLY @627 EXTERN 7XNOBL13 AuctionSceneBoots4
IF ~~ THEN REPLY @629 EXTERN 7XNOBL13 AuctionSceneBoots4
IF ~~ THEN REPLY @628 EXTERN 7xAUCTIO AuctionSceneBoots3
IF ~~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneBoots3

CHAIN 7XNOBL13 AuctionSceneBoots4
@630 
END
IF ~~ THEN REPLY @631 EXTERN 7XNOBL13 AuctionSceneBoots5
IF ~~ THEN REPLY @628 EXTERN 7xAUCTIO AuctionSceneBoots3
IF ~~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneBoots3

CHAIN 7XNOBL13 AuctionSceneBoots5
@632
=@634 
== 7xAUCTIO @635
== 7XNOBL13 @636
=@637
== 7xAUCTIO @638
=@639 DO ~GiveItemCreate("BEZPOST",Player1,1,0,0) TakePartyGold(15000)~ 
=@640
=@208
EXIT

CHAIN 7XNOBL13 AuctionSceneBoots6
@630 
END
IF ~~ THEN REPLY @633 EXTERN 7XNOBL13 AuctionSceneBoots7
IF ~~ THEN REPLY @40 EXTERN 7xAUCTIO AuctionSceneBoots3

CHAIN 7XNOBL13 AuctionSceneBoots7
@634 
== 7xAUCTIO @635
== 7XNOBL13 @636
== 7xAUCTIO @638
=@639 DO ~GiveItemCreate("BEZPOST",Player1,1,0,0) TakePartyGold(15000)~ 
=@640
=@208
EXIT

APPEND 7xAUCTIO 
IF ~~ BEGIN AuctionSceneBoots3
SAY @641
=@208
IF ~~ THEN EXIT
END
END

// Шляпа Эльминстера

// Если Эдвин в группе
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionHat","GLOBAL",3) InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN 7xAUCTIO AuctionSceneHatEdwin1
@650 DO ~SetGlobal("7xAuctionHat","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@651
== NOBLEM3 @652
== 7xAUCTIO @653
== NOBLEM3 @654
== 7XCRE97 @655
== 7xAUCTIO @656
=@657
=@658
=@659
=@660
=@661
=@662
== 7XNOBLE1 @663
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @664
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @664
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @665
== 7XkagaJ IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @666
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @666
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @667
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @668
== 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @669
== 7XQUAYJ IF ~InParty("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @669
== BG1X23 @670 // Lady Ravhana
== 7xAUCTIO @671
=@672
== EDWINJ @673
END
IF ~~ THEN REPLY @674 EXTERN EDWINJ AuctionSceneHatEdwin2
IF ~~ THEN REPLY @675 EXTERN EDWINJ AuctionSceneHatEdwin3

CHAIN EDWINJ AuctionSceneHatEdwin2
@676 
== 7xAUCTIO @678
== EDWINJ @679
== 7xAUCTIO @680
== EDWINJ @681
== 7XNOBLE1 @683
== 7XCRE97 @684
== BG1X20 @685 // Matilda
== BG1X23 @686 // Lady Ravhana
== 7XCRE97 @687
END
IF ~~ THEN REPLY @688 EXTERN 7XCRE97 AuctionSceneHat4
IF ~~ THEN REPLY @689 EXTERN 7XCRE97 AuctionSceneHat4
IF ~~ THEN REPLY @690 EXTERN 7XNOBLE1 AuctionSceneHatNO
IF ~~ THEN REPLY @40 EXTERN 7XNOBLE1 AuctionSceneHatNO

CHAIN EDWINJ AuctionSceneHatEdwin3
@677 
== 7xAUCTIO @678
== EDWINJ @679
== 7xAUCTIO @680
== EDWINJ @681
== 7XNOBLE1 @683
== 7XCRE97 @684
== BG1X20 @685 // Matilda
== BG1X23 @686 // Lady Ravhana
== 7XCRE97 @687
END
IF ~~ THEN REPLY @688 EXTERN 7XCRE97 AuctionSceneHat4
IF ~~ THEN REPLY @689 EXTERN 7XCRE97 AuctionSceneHat4
IF ~~ THEN REPLY @690 EXTERN 7XNOBLE1 AuctionSceneHatNO
IF ~~ THEN REPLY @40 EXTERN 7XNOBLE1 AuctionSceneHatNO

CHAIN 7XCRE97 AuctionSceneHat4
@691
== 7XNOBLE1 @692
== BG1X23 @693 // Lady Ravhana
== NOBLEM3 IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @696
== EDWINJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @697
== 7xAUCTIO @694
=@695 DO ~GiveItemCreate("SHLAPAEL",Player1,1,0,0) TakePartyGold(12000)~ 
=@208
EXIT

CHAIN 7XNOBLE1 AuctionSceneHatNO
@176
== 7XNOBLE1 @698
== BG1X23 @699 // Lady Ravhana
== 7xAUCTIO @700
=@208
EXIT

// Если Эдвин не в группе
CHAIN IF ~AreaCheck("7XARAU") Global("7xAuctionHat","GLOBAL",3) OR(2) !InParty("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN 7xAUCTIO AuctionSceneHat1
@650 DO ~SetGlobal("7xAuctionHat","GLOBAL",4) ActionOverride(Player1,SetDialog("PLAYER1"))~
=@651
== NOBLEM3 @652
== 7xAUCTIO @653
== NOBLEM3 @654
== 7XCRE97 @655
== 7xAUCTIO @656
=@657
=@658
=@659
=@660
=@661
=@662
== 7XNOBLE1 @663
== IF_FILE_EXISTS NEERAJ IF ~InParty("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @664
== IMOEN2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) OR(2) !InParty("Neera") StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @664
== JAHEIRAJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @665
== 7XkagaJ IF ~InParty("7Xkaga") !StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @666
== KORGANJ IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) OR(2) !InParty("7Xkaga") StateCheck("7Xkaga",CD_STATE_NOTVALID)~ THEN @666
== JANJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @667
== 7XGarJ IF ~InParty("7XGAR") !StateCheck("7XGAR",CD_STATE_NOTVALID)~ THEN @668
== 7XMONTJ IF ~InParty("7XMONT") !StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @669
== 7XQUAYJ IF ~InParty("7XQUAY") !StateCheck("7XQUAY",CD_STATE_NOTVALID) OR(2) !InParty("7XMONT") StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN @669
== BG1X23 @670 // Lady Ravhana
== 7xAUCTIO @671
=@672
=@682
== 7XNOBLE1 @683
== 7XCRE97 @684
== 7XNOBLE1 @685
== BG1X23 @686 // Lady Ravhana
== 7XCRE97 @687
END
IF ~~ THEN REPLY @688 EXTERN 7XCRE97 AuctionSceneHat4
IF ~~ THEN REPLY @690 EXTERN 7XNOBLE1 AuctionSceneHatNO
IF ~~ THEN REPLY @40 EXTERN 7XNOBLE1 AuctionSceneHatNO