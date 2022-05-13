Version 1/220511 of You Dont Want Her Back Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of You Dont Want Her Back Tests."

volume verbs

a room can be backup-normal, backup-skinsaving, or backup-suicidal. a room is usually backup-normal.

when play begins:
	repeat with rm running through rooms:
		if rm is skinsaving, now rm is backup-skinsaving;
		if rm is suicidal, now rm is backup-suicidal;

chapter rcing

rcing is an action applying to one visible thing.

understand the command "rc" as something new.
understand the command "rc [any room]" as something new.

understand "rc" as rcing.
understand "rc [any room]" as rcing.

rule for supplying a missing noun when rcing:
	say "Rook check once it's trapped is [if rook-sacs-self is true]already[else]now[end if] activated.";
	now rook-sacs-self is true;
	reject the player's command;

carry out rcing:
	if noun is not backup-suicidal, say "[noun] is not a room the rook can flee to. Choose from [list of backup-suicidal rooms]." instead;
	now all backup-suicidal rooms are normal;
	now noun is suicidal;
	now rook-sacs-self is true;
	the rule succeeds;

chapter rfing

rfing is an action applying to one visible thing.

understand the command "rf" as something new.
understand the command "rf [any room]" as something new.

understand "rf" as rfing.
understand "rf [any room]" as rfing.

rule for supplying a missing noun when rfing:
	say "Rook fleeing once it's trapped is [if rook-sacs-self is false]already[else]now[end if] activated.";
	now rook-sacs-self is false;
	reject the player's command;

carry out rfing:
	if noun is not backup-skinsaving, say "[noun] is not a room the rook can flee to. Choose from [list of backup-skinsaving rooms]." instead;
	now all backup-skinsaving rooms are normal;
	now noun is skinsaving;
	now rook-sacs-self is false;
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
