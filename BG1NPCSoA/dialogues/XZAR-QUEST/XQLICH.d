BEGIN XQLICH

IF WEIGHT #-10 ~!StateCheck("7XXZAR",CD_STATE_NOTVALID)!Dead("7XXZAR")InParty("7XXZAR")~ THEN BEGIN UNDEADMASTER
SAY @0
IF ~~ THEN EXTERN ~7XXZARJ~ UDMASTER-1
END

IF ~~ THEN UDMASTER-2
SAY @1
=
@2
IF ~~ THEN EXTERN ~7XXZARJ~ UDMASTERNEW1
END


IF ~~ THEN UDMASTERNEW2
SAY @3
=
@4
=
@5
IF ~~ THEN EXTERN ~7XXZARJ~ UDMASTER-3
END


IF ~~ THEN UDMASTER-4
SAY @6
IF ~~ THEN REPLY @7 GOTO LASTWORDS
IF ~~ THEN REPLY @8 GOTO LASTWORDS
END

IF ~~ THEN BEGIN LASTWORDS
SAY @9
IF ~~ THEN DO ~Enemy()~ EXIT
END

APPEND 7XXZARJ
IF ~~ THEN BEGIN UDMASTER-1
SAY @10
IF ~~ THEN EXTERN ~XQLICH~ UDMASTER-2
END
END

APPEND 7XXZARJ
IF ~~ THEN BEGIN UDMASTER-3
SAY @11
IF ~~ THEN EXTERN ~XQLICH~ UDMASTER-4
END
END

APPEND 7XXZARJ
IF ~~ THEN BEGIN UDMASTERNEW1
SAY @12
=
@13
IF ~~ THEN EXTERN ~XQLICH~ UDMASTERNEW2
END
END




