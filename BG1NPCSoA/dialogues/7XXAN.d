
BEGIN ~7XXAN~

  IF ~NumTimesTalkedTo(0)~  THEN BEGIN 1
     SAY @0
=
@1
IF ~~ THEN REPLY @2 GOTO NewXanIntro1-1
IF ~~ THEN REPLY @3 GOTO 3
IF ~~ THEN REPLY @4 GOTO NEWx1
IF ~~ THEN REPLY @5 GOTO NEWx1
IF ~~ THEN REPLY @6 GOTO 3
IF ~~ THEN REPLY @7 GOTO NewXanIntro1-1
IF ~~ THEN REPLY @8 GOTO NewXanIntro1-1
END


IF ~~ THEN BEGIN NEWx1
     SAY @9
IF ~~ THEN REPLY @10 GOTO NewXanIntro1-1
IF ~~ THEN REPLY @11 GOTO 2
IF ~~ THEN REPLY @12 GOTO 3
  END


IF ~~ THEN BEGIN NewXanIntro1-1
     SAY @13
=
@14
=
@15
IF ~~ THEN REPLY @16 GOTO 5a
IF ~~ THEN REPLY @17 GOTO 5a
IF ~~ THEN REPLY @18 GOTO 5a
END


  IF ~~ THEN BEGIN 2
     SAY @19
IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3
     SAY @20
IF ~~ THEN REPLY @21 GOTO 5
IF ~~ THEN REPLY @22 GOTO 5
END

IF ~~ THEN BEGIN 4
     SAY @23
IF ~~ THEN REPLY @21GOTO 5
END

IF ~~ THEN BEGIN 5a
     SAY @24
IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
     SAY @25
=
@26
=
@27
=
@28
=
@29
IF ~~ THEN REPLY @30 GOTO BLEAK1
IF ~~ THEN REPLY @31 GOTO COUSIN1
END

IF ~~ THEN BEGIN COUSIN1
     SAY @32
=
@33
=
@34
=
@35
IF ~~ THEN REPLY @36 GOTO BLEAK1
IF ~~ THEN REPLY @37 GOTO JOIN1 
IF ~~ THEN REPLY @38 GOTO BLEAK1
END

IF ~~ THEN BEGIN JOIN1
     SAY @39
=
@40
=
@41
IF ~~ THEN DO ~JoinParty()SetGlobal("XANInParty","GLOBAL",0)~ EXIT
END 

IF ~~ THEN BEGIN BLEAK1
     SAY @42
=
@43
IF ~~ THEN DO ~EscapeAreaMove("AR1000",3014,3405,0)~EXIT
END

  IF ~NumTimesTalkedToGT(0)~ THEN BEGIN AGAIN1
     SAY @44
IF ~~ THEN REPLY @37 GOTO JOIN1 
IF ~~ THEN REPLY @45 GOTO BLEAK1
END

BEGIN ~7XXANP~

IF ~Global("XANInParty","GLOBAL",0)~ THEN BEGIN KickOutXAN
SAY @46
IF ~~ THEN REPLY @47 GOTO CITY1
IF ~~ THEN REPLY @48 GOTO OUT1
IF ~~ THEN REPLY @49 DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN CITY1
SAY @50
IF ~~ THEN DO ~EscapeAreaMove("AR1000",3014,3405,0)SetGlobal("XANInParty","GLOBAL",2)~ EXIT
END

 
IF ~~ THEN BEGIN OUT1
SAY @51
=
@52
IF ~~ THEN DO ~SetGlobal("XANInParty","GLOBAL",1)~
EXIT
END

IF ~Global("XANInParty","GLOBAL",1)
!InParty("7XXAN")~ THEN BEGIN RejoinXAN
SAY @44
IF ~~ THEN REPLY @37 DO ~SetGlobal("XanInParty","GLOBAL",0)~ GOTO JOIN2
IF ~~ THEN REPLY @45 GOTO BLEAK2
END

IF ~~ THEN BEGIN BLEAK2
     SAY @53
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JOIN2
     SAY @54
=
@55
IF ~~ THEN DO ~JoinParty()~ EXIT
END 


IF ~Global("XANInParty","GLOBAL",2)
!InParty("7XXAN")~ THEN BEGIN RejoinXAN
SAY @56
IF ~~ THEN REPLY @37 GOTO JOIN2
IF ~~ THEN REPLY @45 GOTO BLEAK2
END



BEGIN ~7XXANB~


IF ~Global("XanGraveYardTalk","LOCALS",0)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
AreaCheck("ar0800")~ THEN BEGIN xanGraveDepresion.
  SAY @57
=
@58
  IF ~~ THEN DO ~SetGlobal("XanGraveYardTalk","LOCALS",1)~ EXIT
END

IF ~AreaType(FOREST)
See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("XanForestTalk","LOCALS",0)~ THEN BEGIN XanForestTalk1
SAY @59
++ @60 DO ~SetGlobal("XanForestTalk","LOCALS",1)~ + XanRestBanter2
++ @61 + XanRestBanter2
++ @62 DO ~SetGlobal("XanForestTalk","LOCALS",1)~ + XanMageTalk2
++ @63 DO ~SetGlobal("XanForestTalk","LOCALS",1)~ + XanMageTalk2
END

IF ~See(Player1)
Class(Player1,MAGE)
!StateCheck(Player1,CD_STATE_NOTVALID)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanPCMageTalk","GLOBAL",0)~ THEN BEGIN XanMageTalk1
SAY @64
=
@65 
++ @66 DO ~SetGlobal("XanPCMageTalk","GLOBAL",1)~ + XanMageTalk2
++ @67 DO ~SetGlobal("XanPCMageTalk","GLOBAL",1)~ + XanMageTalk3
++ @68 DO ~SetGlobal("XanPCMageTalk","GLOBAL",1)~ + XanMageTalk3
++ @69 DO ~SetGlobal("XanPCMageTalk","GLOBAL",1)~ + XanMageTalk2
END

IF ~~ THEN BEGIN XanMageTalk2
SAY @70
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XanMageTalk3
SAY @71
=
@72
IF ~~ THEN EXIT
END

IF ~PartyRested()
See(Player1)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("XanRestBanter","LOCALS",0)~ THEN BEGIN XanRestBanter1
SAY @73
++ @74 DO ~SetGlobal("XanRestBanter","LOCALS",1)~ + XanRestBanter2 
++ @75 DO ~SetGlobal("XanRestBanter","LOCALS",1)~ + XanRestBanter2
++ @76 DO ~SetGlobal("XanRestBanter","LOCALS",1)~ + 
XanRestBanter2
++ @77 DO ~SetGlobal("XanRestBanter","LOCALS",1)~ + 
XanRestBanter2
++ @78 DO ~SetGlobal("XanRestBanter","LOCALS",1)~ + XanRestBanter2
END

IF ~~ THEN BEGIN XanRestBanter2
SAY @41
IF ~~ THEN EXIT
END

IF ~See(Player1)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("XanBantersWithPCTalk","GLOBAL",0)~ THEN BEGIN XanBantersWithPCWell
SAY @79
=
@80
=
@81
 ++ @82 DO ~SetGlobal("XanBantersWithPCTalk","GLOBAL",1)~ GOTO XanBantersWithPC5
 ++ @83 DO ~SetGlobal("XanBantersWithPCTalk","GLOBAL",1)~ GOTO XanBantersWithPC1
 ++ @84 DO ~SetGlobal("XanBantersWithPCTalk","GLOBAL",1)~ GOTO XanBantersWithPC2
 ++ @85 DO ~SetGlobal("XanBantersWithPCTalk","GLOBAL",1)~ GOTO XanBantersWithPC3
 ++ @86 DO ~SetGlobal("XanBantersWithPCTalk","GLOBAL",1)~ GOTO XanBantersWithPC4
 ++ @87 DO ~SetGlobal("XanBantersWithPCTalk","GLOBAL",1)~ GOTO XanBantersWithPC6
END

IF ~~ THEN BEGIN XanBantersWithPC1
 SAY @88
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XanBantersWithPC2
 SAY @89
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XanBantersWithPC3
 SAY @90
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XanBantersWithPC4
 SAY @91
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XanBantersWithPC5
 SAY @70
 IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN XanBantersWithPC6
 SAY @92
 IF ~~ THEN EXIT
END

CHAIN
IF~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("AerieXan","GLOBAL",0)
~THEN ~7XXANB~ XanAerieBanter1
@93
DO ~SetGlobal("AerieXan","GLOBAL",1)~
==BAERIE
@94
== 7XXANB
@95
==BAERIE
@96
== 7XXANB @97
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanImmyTalk","GLOBAL",0)~ THEN 7XXANB XanImmyBanter1
@98 
DO ~SetGlobal("XanImmyTalk","GLOBAL",1)~
== BIMOEN2
@99
== 7XXANB
@100
== BIMOEN2
@101
== 7XXANB
@102
EXIT


CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanJaheiraTalk","GLOBAL",0)~ THEN 7XXANB XanJaheiraTalk1
@103
DO ~SetGlobal("XanJaheiraTalk","GLOBAL",1)~
== BJAHEIR
@104
== 7XXANB
@105
== BJAHEIR
@106
== 7XXANB @107
EXIT


CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanNaliaTalk","GLOBAL",0)~ THEN 7XXANB XanNaliaBanter1
@108
DO ~SetGlobal("XanNaliaTalk","GLOBAL",1)~
== BNALIA @109
== 7XXANB@110
== BNALIA @111
== 7XXANB @112
== BNALIA @113
== 7XXANB @114
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanYoshimoTalk","GLOBAL",0)~ THEN 7XXANB XanYoshimoBanter1
@115
DO ~SetGlobal("XanYoshimoTalk","GLOBAL",1)~
== BYOSHIM
@116
== 7XXANB
@117
== BYOSHIM
@118
== 7XXANB
@119
== BYOSHIM
@120
== 7XXANB
@121
EXIT

CHAIN
IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanHaerTalk","GLOBAL",0)~ THEN 7XXANB XanHaerdalisBanter1
@122
DO ~SetGlobal("XanHaerTalk","GLOBAL",1)~
== BHAERDA
@123
== 7XXANB
@124
== BHAERDA
@125
== 7XXANB
@126
== BHAERDA
@127
== 7XXANB
@128
EXIT

CHAIN IF 
~InParty("Valygar")
InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
See("Valygar")!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("XanValygar","GLOBAL",0)~ THEN 7XXANB XanValygarBanter1
@129 DO ~SetGlobal("XanValygar","GLOBAL",1)~
==BVALYGA
@130
==7XXANB @131
==BVALYGA @132
==7XXANB @133
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
Global("XanKorgan","GLOBAL",0)~ THEN BKORGAN Stealing
@134
DO ~SetGlobal("XanKorgan","GLOBAL",1)~
==7XXANB @135
==BKORGAN @136
==7XXANB @137
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
Global("MinscXanTalk","GLOBAL",0)~ THEN ~BMINSC~ MinscXan01
@138
DO ~SetGlobal("MinscXanTalk","GLOBAL",1)~
== 7XXANB
@139
== BMINSC @140
== 7XXANB @141
== BMINSC @142
== 7XXANB @143
== BMINSC @144
EXIT

CHAIN
IF ~InParty("Anomen")
See("Anomen")InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("AnomenXanTalk","GLOBAL",0)~ THEN 7XXANB AnomenXan01
@145
DO ~SetGlobal("AnomenXanTalk","GLOBAL",1)~
== BANOMEN @146
== 7XXANB @147
== BANOMEN @148
== 7XXANB @149
== BANOMEN @150
EXIT

CHAIN
IF ~InParty("Cernd")
See("Cernd")InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
!StateCheck("Cernd",CD_STATE_NOTVALID)
Global("CerndXanTalk","GLOBAL",0)~ THEN 7XXANB CerndV01
@151
DO ~SetGlobal("CerndXanTalk","GLOBAL",1)~
== BCERND @152
== 7XXANB @153
== BCERND @154
== 7XXANB @155
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)
!StateCheck("Edwin",CD_STATE_NOTVALID)
Global("EdwinXanTalk","GLOBAL",0)~ THEN 7XXANB EdwinXan01
@156
DO ~SetGlobal("EdwinXanTalk","GLOBAL",0)~
== BEDWIN @157
== 7XXANB @158
== BEDWIN @159
== 7XXANB @160
== BEDWIN @161
== 7XXANB @162
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
Global("VicXanTalk","GLOBAL",0)~ THEN 7XXANB ViconiaXan1
@163
DO ~SetGlobal("VicXanTalk","GLOBAL",1)~
== BVICONI @164
== 7XXANB @165
== BVICONI @166
== 7XXANB @167
EXIT



BEGIN ~7XXANJ~

IF ~IsGabber(Player1)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)RandomNum(3,1)
CombatCounter(0)~ THEN BEGIN XanPCClickClick1
SAY @168
++ @169 + XanPCClickClick1-3
++ @170 + XanPCClickClick1-2
++ @171 + XanPCClickClick1-2
++ @172 + XanPCClickClick1-2
++ @63 + XanPCClickClick1-2
END

IF ~~ THEN BEGIN XanPCClickClick1-2
 SAY @173
 IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN XanPCClickClick1-3
 SAY @162
 IF ~~ THEN EXIT
END

IF ~IsGabber(Player1)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)RandomNum(3,2)
CombatCounter(0)~ THEN BEGIN XanPCClickClick2
SAY @174
++ @175 + XanPCClickClick1-3
++ @176 + XanPCClickClick2-1
++ @177 + XanPCClickClick2-1
++ @178 + XanPCClickClick2-1
END


IF ~~ THEN BEGIN XanPCClickClick2-1
 SAY @70
 IF ~~ THEN EXIT
END

IF ~IsGabber(Player1)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)RandomNum(3,3)
CombatCounter(0)~ THEN BEGIN XanPCClickClick3
SAY @179 
++ @180 + XanPCClickClick3-1
++ @181 + XanPCClickClick2-1
++ @182 + XanPCClickClick1-3
++ @183 + XanPCClickClick2-1
END


IF ~~ THEN BEGIN XanPCClickClick3-1
 SAY @184
++ @185 + XanPCClickClick2-1
++ @186 + XanPCClickClick3-2
++ @187 + XanPCClickClick3-2
++ @188 + XanPCClickClick2-1
END

IF ~~ THEN BEGIN XanPCClickClick3-2
 SAY @189 
 IF ~~ THEN EXIT
END



APPEND UDDROW02
IF ~Global("XANDROW02","GLOBAL",0)InParty("7XXAN")!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN")~ THEN BEGIN XanUDDROW02
SAY @190
IF ~~ THEN EXTERN 7XXANJ XanUDDROW02-1
END
END

APPEND 7XXANJ
IF ~~ XanUDDROW02-1
SAY @191
IF ~~ THEN DO ~SetGlobal("XANDROW02","GLOBAL",1)~
EXIT
END
END

I_C_T UDDROW04 2 XANDROW04-1
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN @192
== UDDROw04 @193
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN @194
END



I_C_T UDILSLA1 0 XanUDILSlave1
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @195
END

INTERJECT_COPY_TRANS2 DADROW03 22 XanDadrow03-1
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@196
END




I_C_T UDkuo01 0 XanKoa
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@197
END


I_C_T UDIMRAE 13 XanImrae
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
  @198
END


I_C_T UDPHAE01 31 XanPhaere2
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@199
== UDPHAE01 @200
== 7XXANJ  @201
== UDPHAE01 @202
END


INTERJECT_COPY_TRANS UDSOLA01 0 XanSolaufein1
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@203
==UDSOLA01
@204
END

INTERJECT_COPY_TRANS FIRKRA02 21 XanFIRKRA02-21
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @205
END

INTERJECT_COPY_TRANS RENFELD 8 XanRENFELD8
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @51
END


INTERJECT_COPY_TRANS RYLOCK 24 XanRYLOCK24
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @206
END

INTERJECT_COPY_TRANS LYROS 19 XanLYROS19
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @207
END

INTERJECT_COPY_TRANS LUSETTE 11 XanLUSETTE11
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @208
END

INTERJECT_COPY_TRANS EDWIN 8 XanEDWIN8
 == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@209
== EDWIN @210
END

INTERJECT_COPY_TRANS EDWIN 30 XanEDWIN30
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@211
END

INTERJECT_COPY_TRANS SCSARLES 11 XanSCSARLES11
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @212
END

INTERJECT_COPY_TRANS DELON 15 XanDELON15
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @213
END

INTERJECT_COPY_TRANS DELON 16 XanDELON16
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @213
END

INTERJECT_COPY_TRANS UHMAY01 18 XanUHMAY01-18
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@214
END

INTERJECT_COPY_TRANS DALESON 13 XanDALESON13
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @215
END

INTERJECT_COPY_TRANS CEFALDOR 2 XanCEFALDOR2
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @216
END

INTERJECT_COPY_TRANS BODHI 21 XanBODHI21
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @217
END

INTERJECT_COPY_TRANS BODHI 34 XanBODHI34
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @218
END

INTERJECT_COPY_TRANS PPSAEM 53 XanPPSAEM53
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @219
END

INTERJECT_COPY_TRANS YOSHJ 113 XanYOSHJ13
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @220
END

INTERJECT_COPY_TRANS SAHPR1 1 XanSAHPR1-1
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
 @221
END

INTERJECT_COPY_TRANS SAHKNG01 1 XanSAHKNG01-1
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@222
END

INTERJECT_COPY_TRANS SAHPR2 13 XanSAHPR2-13
  == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@223
END

INTERJECT_COPY_TRANS GAAL 11 XanGaalQuest-11
 == 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)!Dead("7XXAN") InParty("7XXAN")~ THEN
@224
END

INTERJECT_COPY_TRANS GAAL 23 XanGaalEnemy23
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@225
== GAAL IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN @226
END


INTERJECT_COPY_TRANS ANOMENJ 111 XanAnomenBecomeKnight1
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@227
== ANOMENJ
@228
END

INTERJECT_COPY_TRANS ANOMENJ 112 XanAnomenBecomeKnight2
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@227
== ANOMENJ
@228
END

INTERJECT_COPY_TRANS ANOMENJ 113 XanAnomenBecomeKnight3
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@227
== ANOMENJ
@228
END

INTERJECT_COPY_TRANS SHADRA01 0 XanShadowDragon-0
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@229
== SHADRA01
@230
END

INTERJECT_COPY_TRANS TORGAL 0 XanTorGal-0
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@231
==TORGAL
@232
END

INTERJECT_COPY_TRANS VALYGAR 0 xanJvalygar-0
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@233
== VALYGAR @234
== 7XXANJ @235
== VALYGAR @236
END

I_C_T SAFE DELCIA 16 Xan_delcia16
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
 @237
  == DELCIA @238
END

I_C_T PIRCOR02 13 Xan_PIRCOR02-13
== 7XXANJ IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
  @239
END

INTERJECT PLAYER1 33 XanTreeofLife
== PLAYER1 IF ~!StateCheck("7XXAN",CD_STATE_NOTVALID)InParty("7XXAN")~ THEN
@240
END
++ @241 EXTERN 7XXANJ XanTreeofLife2

APPEND 7XXANJ
IF ~~ THEN BEGIN XanTreeofLife2
SAY @242 COPY_TRANS PLAYER1 33
END
END