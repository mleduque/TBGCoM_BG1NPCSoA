CHAIN IF ~Global("SharTiax","GLOBAL",0)
InParty("7XTIAX")!StateCheck("7XTIAX",STATE_SLEEPING)InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~
THEN ~7XTIAXB~ TiaxShar1
@30 DO ~SetGlobal("SharTiax","GLOBAL",1)~
== B7Xshar @31
== 7XTIAXB @32
== B7Xshar @33
== 7XTIAXB @34
EXIT


CHAIN IF ~Global("SharTiax","GLOBAL",1)
InParty("7XTIAX")!StateCheck("7XTIAX",STATE_SLEEPING)InParty("7XSHAR")
See("7XSHAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~
THEN ~7XTIAXB~ TiaxShar2
@385 DO ~SetGlobal("SharTiax","GLOBAL",2)~
== B7Xshar @386
== 7XTIAXB @387
== B7Xshar @388
== 7XTIAXB @389
EXIT


I_C_T 7XSHAR 0 SharTeelTiaxInterject_1
== 7XTIAXJ IF ~!StateCheck("7XTIAX",CD_STATE_NOTVALID)InParty("7XTIAX")~ THEN
@451
== 7XSHAR @452
== 7XTIAXJ @453
END


I_C_T 7XSHAR 43 SharTeelTiaxInterject_2
== 7XTIAXJ IF ~!StateCheck("7XTIAX",CD_STATE_NOTVALID)InParty("7XTIAX")~ THEN
@458
== 7XSHAR @459
== 7XTIAXJ @460
== 7XSHAR @461
END


I_C_T 7XSHAR 39 SharTeelTiaxInterject_3
== 7XTIAXJ IF ~!StateCheck("7XTIAX",CD_STATE_NOTVALID)InParty("7XTIAX")~ THEN
@468
== 7XSHAR @459
== 7XTIAXJ @460
== 7XSHAR @461
END
