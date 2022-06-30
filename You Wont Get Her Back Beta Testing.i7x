Version 1/220630 of You Wont Get Her Back Beta Testing by Andrew Schultz begins here.

"This should briefly describe the purpose of You Wont Get Her Back Beta Testing."

volume verbs

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

chapter post-verbsing

report verbsing:
	say "Information for testing verbs that should not pop up in debug mode:[paragraph break]";
	say "UY/UN toggle undo-allow on and off.";
	say "RF (room) = rook-flee to a specific room. The only ones are either on the a-file or fourth rank.";
	say "ORD = put final puzzles in default order e.g. a-guarding, a-allowing, spite-checking, sucker-sacrificing, useless-sacrificing.";

You Wont Get Her Back Beta Testing ends here.

---- DOCUMENTATION ----
