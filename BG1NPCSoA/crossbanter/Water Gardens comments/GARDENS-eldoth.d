APPEND ~BG1X20~
IF ~IsGabber("7XELDOT")!StateCheck("7XELDOT",CD_STATE_NOTVALID)~THEN BEGIN EldothMatildaFlirt1
SAY @795
=
@796
IF ~~ THEN EXTERN ~B7XEldo~ EldothMatildaFlirt2
END
END

APPEND ~B7XEldo~
IF ~~ THEN BEGIN EldothMatildaFlirt2
SAY @804
IF ~~ THEN EXIT
END
END