Version 1/220511 of You Dont Want Her Back Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of You Dont Want Her Back Tests."

volume verbs

a room can be backup-normal, backup-flee-at-end, or backup-check-at-end. a room is usually backup-normal.

when play begins:
	repeat with rm running through rooms:
		if rm is flee-at-end, now rm is backup-flee-at-end;
		if rm is check-at-end, now rm is backup-check-at-end;

chapter post-verbsing

report verbsing:
	say "Information for testing verbs that should not pop up in debug mode:[paragraph break]";
	say "UY/UN toggle undo-allow on and off.";
	say "RC (room) = rook check at a room. Alone, it just offers a random room from [list of backup-check-at-end rooms].";
	say "RF (room) = rook flee at a room. Alone, it just offers a random room from [list of backup-flee-at-end rooms].";

chapter rcing

rcing is an action applying to one visible thing.

understand the command "rc" as something new.
understand the command "rc [any room]" as something new.

understand "rc" as rcing.
understand "rc [any room]" as rcing.

rule for supplying a missing noun when rcing:
	say "Rook check once it's trapped is [if rook-spite-check is true]already[else]now[end if] activated.";
	now rook-spite-check is true;
	reject the player's command;

carry out rcing:
	if noun is not backup-check-at-end, say "[noun] is not a room the rook can flee to. Choose from [list of backup-check-at-end rooms]." instead;
	now all backup-check-at-end rooms are normal;
	now noun is check-at-end;
	now rook-spite-check is true;
	the rule succeeds;

chapter rfing

rfing is an action applying to one visible thing.

understand the command "rf" as something new.
understand the command "rf [any room]" as something new.

understand "rf" as rfing.
understand "rf [any room]" as rfing.

rule for supplying a missing noun when rfing:
	say "Rook fleeing once it's trapped is [if rook-spite-check is false]already[else]now[end if] activated.";
	now rook-spite-check is false;
	reject the player's command;

carry out rfing:
	if noun is not backup-flee-at-end, say "[noun] is not a room the rook can flee to. Choose from [list of backup-flee-at-end rooms]." instead;
	now all backup-flee-at-end rooms are normal;
	now noun is flee-at-end;
	now rook-spite-check is false;
	the rule succeeds;

chapter uying

uying is an action out of world.

understand the command "uy" as something new.
understand the command "yu" as something new.

understand "uy" as uying.
understand "yu" as uying.

carry out uying:
	say "Undo-allow is [if undo-allow is true]already[else]now[end if] on.";
	now undo-allow is true;
	the rule succeeds;

chapter uning

uning is an action out of world.

understand the command "un" as something new.
understand the command "nu" as something new.

understand "un" as uning.
understand "nu" as uning.

carry out uning:
	say "Undo-allow is [if undo-allow is false]already[else]now[end if] off.";
	now undo-allow is false;
	the rule succeeds;

volume quick tests

test rep1 with "p/s/n/s/s/s/n/se/s/n/s".
test rep2 with "p/s/n/s/s/s/n/s/se/n/s".

You Dont Want Her Back Tests ends here.

---- DOCUMENTATION ----
