BEGIN ~KSLAVE02~

IF~NumTimesTalkedTo(0)~ THEN BEGIN INTRO
SAY @0
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN ASkKEYS
SAY @1
IF ~PartyHasItem("TQKEY1")PartyHasItem("TQKEY2") PartyHasItem("TQKEY3")~ THEN REPLY @2 GOTO TQQUESTFINISH
IF ~~ THEN REPLY @3 EXIT
END




IF ~~ THEN BEGIN TQQUESTFINISH
SAY @4
IF ~~ THEN DO ~TakePartyItem("TQKEY1")TakePartyItem("TQKEY2")TakePartyItem("TQKEY3")
ClearAllActions()StartCutSceneMode()StartCutScene("KALAH2")~ EXIT
END