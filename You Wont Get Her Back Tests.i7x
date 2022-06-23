Version 1/220511 of You Wont Get Her Back Tests by Andrew Schultz begins here.

"Tests for You Won't Get Her Back, a text-adventurization of the Saaverda position. It lets the programmer (me!) test all the game states and thus all the odd responses the player may make."

volume when play begins

when play begins:
	say "Setting undo-allowed to [b]TRUE[r] for testing purposes.";
	now undo-allow is true;

volume verbs

chapter post-verbsing

report verbsing:
	say "Information for testing verbs that should not pop up in debug mode:[paragraph break]";
	say "UY/UN toggle undo-allow on and off.";
	say "RF (room) = rook-flee to a specific room. The only ones are either on the a-file or fourth rank.";
	say "ORD = put final puzzles in default order e.g. a-guarding, a-allowing, spite-checking, sucker-sacrificing, useless-sacrificing.";

chapter ording

ording is an action out of world.

understand the command "ord" as something new.

understand "ord" as ording.

carry out ording:
	init-fleestate-list;
	say "The puzzle types are in order now.";
	the rule succeeds;

chapter rfing

rfing is an action applying to one visible thing.

understand the command "rf" as something new.
understand the command "rf [any room]" as something new.

understand "rf" as rfing.
understand "rf [any room]" as rfing.

rule for supplying a missing noun when rfing:
	say "You need to supply a square to [b]RF[r] properly.";
	say "[line break]However, [b]RF[r] alone shows debug information.";
	say "[line break]Current room is [rook-flee-room].";
	say "[line break]Current order is [fleestate-index].";
	say "[line break]Current state is [current-fleestate].";
	say "[line break]The list of states in order is [available-fleestate-list].";
	reject the player's command;

carry out rfing:
	let this-fleestate be rookstate of noun;
	if this-fleestate is unreachable:
		say "The black rook can't reach [noun] for its last move." instead;
	now rook-flee-room is noun;
	say "New rook flee square is [rook-flee-room].";
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

chapter 0ing

0ing is an action applying to one visible thing.

understand the command "0" as something new.
understand the command "0 [any room]" as something new.

understand "0" as 0ing.
understand "0 [any room]" as 0ing.

rule for supplying a missing noun when 0ing:
	say "Choosing a1 (automatic failure) as the room, so we don't change [rook-flee-room].";
	now the noun is a1;

carry out 0ing:
	try rfing the noun;
	if the rule failed, say "No valid room, so just charging ahead.";
	try squaregoing c7;
	try going south;
	try going south;
	try going south;
	try going southeast;
	try rooking;
	try squaregoing c8;
	try going northwest;
	the rule succeeds;

volume quick tests

test p1 with "rf a3/p/s/s/se/s/c8r/nw/w".
test p2 with "rf a3/p/s/s/s/se/c8r/nw/w".
test q with "p/s/s/s/se/c8r/nw"

You Wont Get Her Back Tests ends here.

---- DOCUMENTATION ----
