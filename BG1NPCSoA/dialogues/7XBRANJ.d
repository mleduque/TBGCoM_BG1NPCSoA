BEGIN ~7XBRANJ~

IF WEIGHT #-101 ~Global("Player1AttackKnights","LOCALS",1)~ THEN BEGIN BranwenPlayer1AttackKnights
SAY @200
IF ~~ THEN DO ~LeaveParty() Enemy() Attack(Player1) SetGlobal("KickedOut","LOCALS",1) SetGlobal("BranInParty","LOCALS",0)~ EXIT
END 

INTERJECT_COPY_TRANS INSPECT 13 BranwenINSPECT13
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @0
END

INTERJECT_COPY_TRANS INSPECT 29 BranwenINSPECT29
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @1
END



INTERJECT_COPY_TRANS VALYGAR 8 BranwenVALYGAR8
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @2
END



INTERJECT_COPY_TRANS TOLGER 84 BranwenTOLGER84
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @3
END


INTERJECT_COPY_TRANS SEWERM1 23 BranwenSEWERM1-23
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @4
END

INTERJECT_COPY_TRANS HAEGAN 0 BranwenHAEGAN0
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @5
END

INTERJECT_COPY_TRANS HAEGAN 4 BranwenHAEGAN4
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @5
END



INTERJECT_COPY_TRANS RUFPAL2 5 BranwenRUFPAL2-5
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @6
END


INTERJECT_COPY_TRANS COPGREET 1 branwenCOPGREET1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @7
END


INTERJECT_COPY_TRANS EDWIN 30 branwenEDWIN30
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @8
=
@9
== EDWIN @10
END


INTERJECT_COPY_TRANS MAEVAR 17 branwenMAEVAR17
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @11
END

INTERJECT_COPY_TRANS MAEVAR 16 branwenMAEVAR16
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @11
END


INTERJECT_COPY_TRANS LYROS 0 branwenLYROS0
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @12
=
@13
END

INTERJECT_COPY_TRANS GARREN 1 branwenGARREN1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @14
END

INTERJECT_COPY_TRANS INSPECT 13 branwenINSPECT13
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @15
END


INTERJECT_COPY_TRANS HENDAK 1 branwenHENDAK1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @16
END

CHAIN
IF ~!InPartySlot(LastTalkedToBy,0)
Name("7XBRAN",LastTalkedToBy)~ THEN SALVANAS branwenTALK
@17
== 7XBRANJ
@18
== SALVANAS @19
=
@20
== 7XBRANJ
 @21
EXIT


INTERJECT_COPY_TRANS KALAH2 7 branwenKALAH2-7
 == 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@22
== KALAH2 @23
END

INTERJECT_COPY_TRANS KALAH2 8 branwenKALAH2-8
 == 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@22
== KALAH2 @23
END


INTERJECT_COPY_TRANS KALAH2 9 branwenKALAH2-9
 == 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@22
== KALAH2 @23
END


INTERJECT_COPY_TRANS ANOMENJ 111 BranAnomenBecomeKnight1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@24
== ANOMENJ
@25
END

INTERJECT_COPY_TRANS ANOMENJ 112 BranAnomenBecomeKnight2
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@24
== ANOMENJ
@25
END


INTERJECT_COPY_TRANS ANOMENJ 113 BranAnomenBecomeKnight3
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@24
== ANOMENJ
@25
END

INTERJECT_COPY_TRANS ANOMENJ 150 BranAnomenDecide
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@26
END

INTERJECT_COPY_TRANS ANOMENJ 84 BranAnomenTest
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@27
== ANOMENJ
@28
END

INTERJECT_COPY_TRANS PWAUK2 0 BranwenPWAUK2
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @29
=
@30 
== PWAUK2 @31
END

INTERJECT_COPY_TRANS PROPHET1 0 BranwenPROPHET1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @32 
== PROPHET1 @33
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @34 
== PROPHET1 @35
=
@36
== 7XBRANJ @37
=
@38
== PROPHET1 @39
END

INTERJECT_COPY_TRANS PROPHET1 10 BranwenPROPHET1-2
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @40
== PROPHET1 @41
=
@42
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @43
=
@44 
== PROPHET1 @45
=
@46
== 7XBRANJ @47
END

I_C_T PROPHET1 2 BranwenPROPHET1-3
  == 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @48 
== PROPHET1 @49
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @50 
== PROPHET1 @51
=
@52
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @53
=
@54
END

I_C_T ACOLYTE1 0 BranAcolyte1
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @55
== ACOLYTE1 @56
=
@57
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @58
== ACOLYTE1 @59
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @60
== ACOLYTE1 @61
== 7XBRANJ @62
END

I_C_T ACOLYTE2 0 BranAcolyte2
  == 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@63
== ACOLYTE2 @64
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@65
=
@66 
== ACOLYTE2 @67
== 7XBRANJ @68
END

INTERJECT_COPY_TRANS ANOMENJ 1 BranwenAnomenAjantis
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@69 
END


I_C_T ACOLYTE3 0 BranAcolyte3
  == 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@70
=
@71
== ACOLYTE3 @72
END



INTERJECT_COPY_TRANS VICONI 2 BranVic
== 7XBRANJ
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@73
== VICONI @74
== 7XBRANJ @75
END


I_C_T CSGAAL 1 BranwengAAL1
  == 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @76
=
@77 
END

I_C_T CSGAAL 3 BranwengAAL2
  == 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @78 
END

INTERJECT_COPY_TRANS CSGAAL 7 BranwenEyelord
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@79
=
@80
== CSGAAL
@81
=
@82
== 7XBRANJ
@83
== CSGAAL
@84
=
@85
END

I_C_T CSGAAL 11 BranwengAAL3
  == 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @86 
END


INTERJECT_COPY_TRANS GAAL 11 BranwenGaalQuest
== 7XBRANJ
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@87
END

INTERJECT_COPY_TRANS GAAL 14 BranwenGAAL14
== 7XBRANJ
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@88
=
@89
END

INTERJECT_COPY_TRANS GAAL 4 BranwenGaalBeholder
== 7XBRANJ
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@90
=
@91
== GAAL
@92
=
@93
END


INTERJECT_COPY_TRANS GAAL 23 BranwenGaal4
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@94
=
@95 
== GAAL
@96
== 7XBRANJ @97
== GAAL @98
END


INTERJECT_COPY_TRANS RIFTG03 26 BranwenRIFTG03-26
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@99
=
@100
END

INTERJECT_COPY_TRANS RIFTG03 25 BranwenRIFTG03-25
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @101
END


INTERJECT_COPY_TRANS RIFTG03 7 BranwenRIFTG03-7
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @102

END


INTERJECT_COPY_TRANS GAAL 20 BranwenGAAL20
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
 @103
END


INTERJECT_COPY_TRANS PLAYER1 5 BranSlayer1
== 7XBRANJ
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@104
END

INTERJECT_COPY_TRANS PLAYER1 15 BranAsylum
== 7XBRANJ
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@105
END

INTERJECT_COPY_TRANS VICG1 2 FHLVicG1
== 7XBRANJ
IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@106
=
@107
=
@108
END

INTERJECT_COPY_TRANS HAERDA 26 Branwenhaer
== 7XBRANJ  IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@109
==HAERDA
@110
== 7XBRANJ  IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@111
==HAERDA
@112
== 7XBRANJ  IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@113
==HAERDA
@114
END

INTERJECT_COPY_TRANS CEFALDOR 6 Branwenfaldor
== 7XBRANJ  IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@115
==CEFALDOR
@116
=
@117
== 7XBRANJ 
@118
=
@119
==CEFALDOR
@120
END

INTERJECT_COPY_TRANS BARONP 39 branwenbaronp
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@121
END 

INTERJECT_COPY_TRANS BEGGAR1 0 branwenbeggar
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@122
=
@123
END 

INTERJECT_COPY_TRANS BODHI 4 branwenbodhi1
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@124
END 

INTERJECT_COPY_TRANS BODHI 125 branwenbodhi2
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@125
END 

INTERJECT_COPY_TRANS BOY1 3 branwenboy
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@126
END 

INTERJECT_COPY_TRANS YOSHJ 113 branwenyoshimo
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@127
END

INTERJECT_COPY_TRANS BHEYE 0 branwenbeholder
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@128
END

INTERJECT_COPY_TRANS GUARD3 1 branwenguard1
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@129
== GUARD3 @130
END 



INTERJECT_COPY_TRANS HABIB 0 branwenhabib
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@131
END


INTERJECT_COPY_TRANS HELLJON 8 branwenhelljon1
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@132
END 

INTERJECT_COPY_TRANS HELLJON 7 branwenhelljon2
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@132
END 

INTERJECT_COPY_TRANS HELLJON 9 branwenhelljon3
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@132
END 

INTERJECT_COPY_TRANS HELLJON 10 branwenhelljon4
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@132
END 

INTERJECT_COPY_TRANS SHADEL 4 BranwenShadeLord
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@133
=
@134
==SHADEL
@135
== 7XBRANJ
@136
==SHADEL
@137
END

INTERJECT_COPY_TRANS MAZZY 0 branwenmazzy1
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@138
END

INTERJECT_COPY_TRANS TRCUT07 4 branwencommenttrcut
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@139 
END


INTERJECT_COPY_TRANS TANNER 8 BranwenTanner
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@140
==TANNER
@141
== 7XBRANJ
@142
== TANNER
@143
END



INTERJECT PLAYER1 33 Branwen_TreeOfLife
== PLAYER1 IF ~InParty("7XBRAN")~ THEN
@144
END
++ @145 EXTERN 7XBRANJ Branwen_TreeOfLife2
++ @146 EXTERN 7XBRANJ Branwen_TreeOfLife2
++ @147 EXTERN 7XBRANJ Branwen_TreeOfLife2

APPEND 7XBRANJ
IF ~~ THEN BEGIN Branwen_TreeOfLife2
SAY @148 COPY_TRANS PLAYER1 33
END
END


INTERJECT_COPY_TRANS BHARVAL 0 branwenHarval
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@149
== BHARVAL @150
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@151
END

INTERJECT_COPY_TRANS BHGUARD 0 branwenBHGUARD
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@152 
END

INTERJECT_COPY_TRANS BHGHOUL1 0 branwenBHGHOUL1
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@153
END

INTERJECT_COPY_TRANS BHGHOUL3 0 branwenBHGHOUL2
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@154 
END

INTERJECT_COPY_TRANS BHOISIG 0 branwenBHOISIG
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@149
== BHOISIG @155
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@151
END

INTERJECT_COPY_TRANS BHOISIG 18 branwenBHOISIG2
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@156
END

INTERJECT_COPY_TRANS BHARVAL 16 branwenHarval2
== 7XBRANJ IF ~InParty("7XBRAN")
!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN
@156
END


I_C_T BRAT1 10 BranwenBrat1
  == 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @157 
END



I_C_T DAWNMAS 0 BranwenDAWNMAS
  == 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @158 
== DAWNMAS @159
 == 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @160
== DAWNMAS @161
== 7XBRANJ   IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @162
== DAWNMAS @163
END


INTERJECT_COPY_TRANS PROPHET2 0 BranwenPROPHET2
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @164
END

INTERJECT_COPY_TRANS PROPHET3 0 BranwenPROPHET3
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @165
END

INTERJECT_COPY_TRANS PROPHET3 1 BranwenPROPHET3-1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @166
END

INTERJECT_COPY_TRANS PROPHET4 0 BranwenPROPHET4
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @167
END


INTERJECT_COPY_TRANS PROPHET4 1 BranwenPROPHET4-1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @168 
END

INTERJECT_COPY_TRANS PROPHET4 2 BranwenPROPHET4-2
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @169
END

INTERJECT_COPY_TRANS PROPHET2 11 BranwenPROPHET2-1
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN @170
=
@171
END


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

INTERJECT_COPY_TRANS JAHEIRAJ 71 BranwenJaheir71
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@172
=
@173
== JAHEIRAJ @174
== 7XBRANJ 
@175
END

INTERJECT_COPY_TRANS SPPAIN 0 branwenpaina
== 7XBRANJ IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@176
==SPPAIN
@177
=
@178
==7XBRANJ 
@179
==SPPAIN
@180
END

INTERJECT_COPY_TRANS MAEVAR 0 branwenmaevar1
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@181
=
@182
==MAEVAR
@183
=
@184
=
@185
== 7XBRANJ 
@186
==MAEVAR
@187
END

INTERJECT_COPY_TRANS ARAN 0 branwenaran1
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@188
=
@189
END

INTERJECT_COPY_TRANS DELON 3 branwendelon
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@190
==DELON
@191
END

INTERJECT_COPY_TRANS BOANASTE 1 branwenvalen1
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@192
END 

INTERJECT_COPY_TRANS BOANASTE 4 branwenvalen2
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@193
END 

INTERJECT_COPY_TRANS BOANASTE 5 branwenvalen3
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@194
END 

INTERJECT_COPY_TRANS C6BODHI 0 branwencommentbodhiend1
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@195
END


INTERJECT_COPY_TRANS C6DRIZZ1 39 branwencommentdrizz
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@196 
END

INTERJECT_COPY_TRANS BPROST2 0 branwencommentho
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@197
=
@198
END 

INTERJECT_COPY_TRANS ISAEA 5 branwencommentisaea1
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
@199
END

I_C_T UDkuo01 0 BranwenKoa0
== 7XBRANJ  IF ~InParty("7XBRAN")!StateCheck("7XBRAN",STATE_SLEEPING)!StateCheck("7XBRAN",CD_STATE_NOTVALID)~ THEN 
              @153
END



