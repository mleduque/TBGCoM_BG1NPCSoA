APPEND ~BG1X20~
IF ~IsGabber("7XYES")!StateCheck("7XYES",CD_STATE_NOTVALID)~ THEN BEGIN YeslickMatildaFlirt1
SAY @794
IF ~~ THEN EXTERN ~B7XYES~ YeslickMatildaFlirt2
END
END

APPEND ~B7XYES~
IF ~~ THEN BEGIN YeslickMatildaFlirt2
SAY @805
IF ~~ THEN EXIT
END
END