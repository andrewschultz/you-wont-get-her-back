Version 1/220511 of You Wont Get Her Back Tests by Andrew Schultz begins here.

"Tests for You Won't Get Her Back, a text-adventurization of the Saaverda position. It lets the programmer (me!) test all the game states and thus all the odd responses the player may make."

volume when play begins

when play begins:
	say "Setting undo-allowed to [b]TRUE[r] for testing purposes.";
	now undo-allow is true;

volume ording

chapter ording

ording is an action out of world.

understand the command "ord" as something new.

understand "ord" as ording.

carry out ording:
	if achieve-score > 0, say "Re-sorting the flee states after an achievement may cause problems, so I am disabling it." instead;
	if ordered is true, say "The flee-state list is already ordered." instead;
	init-fleestate-list;
	say "The puzzle types are in order now: [available-fleestate-list]. I will reset the board.";
	reset-board-quietly;
	say "[fleestate-index]. [available-fleestate-list].";
	now current-fleestate is entry fleestate-index of available-fleestate-list;
	now rook-flee-room is a random currently-fleeable room;
	say "Current flee room: [rook-flee-room].";
	now ordered is true;
	the rule succeeds;

chapter rfing

rfing is an action applying to one visible thing.

understand the command "rf" as something new.
understand the command "rf [any room]" as something new.

understand "rf" as rfing.
understand "rf [any room]" as rfing.

rule for supplying a missing noun when rfing or rfaing:
	say "You need to supply a square to [b]RF[r] or [b]RFA[r] properly.";
	say "[line break]However, [b]RF[r] or [b]RFA[r] alone, as you typed here, shows debug information.";
	say "[line break]Current room is [rook-flee-room].";
	say "[line break]Current order is [fleestate-index].";
	say "[line break]Current state is [current-fleestate].";
	say "[line break]The list of states in order is [available-fleestate-list].";
	say "[line break]Note the difference between [b]RFA[r] and [b]RF[r] is that [b]RF[r] can change to any reachable square, but [b]RFA[r] is more absolute. It pushes the rook to a square with similar properties to the current one. It is used to give good assurance the player can pass through the game.";
	reject the player's command;

carry out rfing:
	let this-fleestate be rookstate of noun;
	if this-fleestate is unreachable:
		say "The black rook can't reach [noun] for its last move." instead;
	now rook-flee-room is noun;
	say "New rook flee square is [rook-flee-room].";
	the rule succeeds;

chapter rfaing

rfaing is an action applying to one visible thing.

understand the command "rfa" as something new.
understand the command "rfa [any room]" as something new.

understand "rfa" as rfing.
understand "rfa [any room]" as rfing.

this is the dont-rf-unreachable rule: if rookstate of noun is unreachable, say "The black rook can't reach [noun] for its last move." instead;

carry out rfaing:
	abide by the dont-rf-unreachable rule;
	let this-fleestate be rookstate of noun;
	if this-fleestate is not rookstate of rook-flee-room:
		say "RFA requires the new square to have the same rook flee state as the old one.";
		say "[line break]The squares that satisfy this are [list of currently-fleeable rooms]." instead;
	now rook-flee-room is noun;
	say "New rook flee square is [rook-flee-room].";
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

chapter nfsing

nfsing is an action out of world.

understand the command "nfs" as something new.

understand "nfs" as nfsing.

carry out nfsing:
	say "Changing current flee-state from [current-fleestate] to ";
	choose-flee-room;
	say "[current-fleestate].";
	reset-board-quietly;
	the rule succeeds;

volume quick tests

test p1 with "rf a3/p/s/s/se/s/c8r/nw/w".
test p2 with "rf a3/p/s/s/s/se/c8r/nw/w".
test q with "p/s/s/s/se/c8r/nw"

You Wont Get Her Back Tests ends here.

---- DOCUMENTATION ----
