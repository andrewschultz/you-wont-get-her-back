Version 1/220511 of You Dont Want Her Back Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of You Dont Want Her Back Tests."

volume verbs

a room can be backup-normal, backup-skinsaving, or backup-suicidal. a room is usually backup-normal.

when play begins:
	repeat with rm running through rooms:
		if rm is skinsaving, now rm is backup-skinsaving;
		if rm is suicidal, now rm is backup-suicidal;

chapter suing

suing is an action out of world.

understand the command "su" as something new.

understand "su" as suing.

carry out suing:
	now rook-sacs-self is true;
	say "Now the rook tries to get sacrificed and not survive.";
	the rule succeeds;

chapter saing

saing is an action out of world.

understand the command "sa" as something new.

understand "sa" as saing.

carry out saing:
	now rook-sacs-self is false;
	say "Now the rook tries to survive and not get sacrificed.";
	the rule succeeds;

chapter ufing

ufing is an action applying to one visible thing.

understand the command "uf" as something new.

understand "uf [room]" as ufing.

carry out ufing:
	unless noun is backup-suicidal, say "Not a valid square." instead;
	now all backup-suicidal rooms are normal;
	now noun is suicidal;
	the rule succeeds;

chapter afing

afing is an action applying to one visible thing.

understand the command "af" as something new.

understand "af [room]" as afing.

carry out afing:
	unless noun is backup-skinsaving, say "Not a valid square." instead;
	now all backup-skinsaving rooms are normal;
	now noun is skinsaving;
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
