CHAIN
IF ~Global("MontyTiaxTalk","LOCALS",0)
InParty("7XTIAX")!StateCheck("7XTIAX",CD_STATE_NOTVALID)
See("7XTIAX")
InParty("7XMONT")!StateCheck("7XMONT",CD_STATE_NOTVALID)~ THEN ~7XMONTB~ MontaronTiax1
@663 DO ~SetGlobal("MontyTiaxTalk","LOCALS",1)~
== 7XTIAXB @664
== 7XMONTB @665
== 7XTIAXB @666
== 7XMONTB @667
== 7XTIAXB @668
== 7XMONTB @669
EXIT