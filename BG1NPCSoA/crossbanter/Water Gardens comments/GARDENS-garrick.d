APPEND ~BG1X20~
IF ~IsGabber("7XGAR")!StateCheck("7XGAR",CD_STATE_NOTVALID)~THEN BEGIN GarrickMatildaFlirt1
SAY @792
IF ~~ THEN EXTERN ~B7XGar~ GarrickMatildaFlirt2
END

IF ~~THEN BEGIN GarrickMatildaFlirt3
SAY @793
IF ~~ THEN EXTERN ~B7XGar~ GarrickMatildaFlirt4
END
END

APPEND B7XGar
IF ~~ THEN BEGIN GarrickMatildaFlirt2
SAY @807
IF ~~ THEN EXTERN ~BG1X20~ GarrickMatildaFlirt3
END

IF ~~ THEN BEGIN GarrickMatildaFlirt4
SAY @808
IF ~~ THEN EXIT
END
END