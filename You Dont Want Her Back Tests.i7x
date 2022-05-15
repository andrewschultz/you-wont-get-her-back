Version 1/220511 of You Dont Want Her Back Tests by Andrew Schultz begins here.

"This should briefly describe the purpose of You Dont Want Her Back Tests."

volume verbs

chapter post-verbsing

report verbsing:
	say "Information for testing verbs that should not pop up in debug mode:[paragraph break]";
	say "UY/UN toggle undo-allow on and off.";
	say "RF (room) = rook-flee to a specific room. The only ones are either on the a-file or fourth rank.";

chapter rfing

rfing is an action applying to one visible thing.

understand the command "rf" as something new.
understand the command "rf [any room]" as something new.

understand "rf" as rfing.
understand "rf [any room]" as rfing.

rule for supplying a missing noun when rfing:
	say "You need to supply a square to [b]RF[r] properly.";
	reject the player's command;

carry out rfing:
	let this-fleestate be rookstate of noun;
	if this-fleestate is unreachable, say "The black rook can't reach [noun] for its last move." instead;
	now rook-flee-room is noun;
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
