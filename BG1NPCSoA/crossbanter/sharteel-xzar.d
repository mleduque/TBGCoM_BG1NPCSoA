CHAIN IF
~Global("SharXzar","GLOBAL",0)InParty("7XSHAR")!StateCheck("7XXZAR",STATE_SLEEPING)InParty("7XXZAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~
THEN B7Xshar SHARXZAR_BANTER
@212 DO ~SetGlobal("SharXzar","GLOBAL",1)~
== B7Xshar @213
== 7XXZARB @214
== B7Xshar @215
== 7XXZARB @216
EXIT

CHAIN IF
~Global("SharXzar","GLOBAL",1)InParty("7XSHAR")!StateCheck("7XXZAR",STATE_SLEEPING)InParty("7XXZAR")
!StateCheck("7XSHAR",CD_STATE_NOTVALID)~
THEN ~7XXZARB~ SHARXZAR_BANTER2
@357 DO ~SetGlobal("SharXzar","GLOBAL",2)~
== B7Xshar @358
== 7XXZARB @359
== B7Xshar @360
== 7XXZARB @361
 == B7Xshar @362 DO ~Attack("7XXZAR")~
EXIT