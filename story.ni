"You Won't Get Her Back" by Andrew Schultz

volume metadata

the story headline is "The end of a long, brutal war".

the story description is "An implementation of a classic chess puzzle".

the release number is 1.

release along with a website.

include Old School Verb Total Carnage by Andrew Schultz.

include Trivial Niceties by Andrew Schultz.

include You Wont Get Her Back Tests by Andrew Schultz.

include Conditional Undo by Jesse McGrew.

include Undo Output Control by Erik Temple.

include Bold Final Question Rows by Andrew Schultz.

volume game state variables and procedural rules

move-log is a list of numbers variable.

repeat-yourmove-whine is a truth state that varies. [ Have you repeated moves this go round? ]

repeat-whines is a number that varies. [ How many repeated positions have you achieved? ]

ever-won is a truth state that varies. [ Did you ever win the main game? I could use "if achieved-yet of plain-old" but that feels less readable ]

alt-b3 is a truth state that varies.

alt-c3 is a truth state that varies. [ These two truth states track whether you saw both possible still-winning moves after Rd4+. ]

chapter game states

game-state is a kind of value. game-states are the-beginning, need-kb3, rook-forks-kq and rook-doomed.

current-game-state is a game-state that varies.

chapter square states

fleestate is a kind of value. the fleestates are unreachable, a-guarding, a-allowing, spite-checking, skewer-allow, sucker-sacrificing, useless-sacrificing.

available-fleestate-list is a list of fleestates variable.

current-fleestate is a fleestate that varies.

fleestate-index is a number that varies;

rook-flee-room is a room that varies.

when play begins (this is the sort fleestates randomly rule):
	init-fleestate-list;
	sort available-fleestate-list in random order;
	choose-flee-room;
	say "The war was HIS fault, of course. And you would've won it quickly and easily if you hadn't tried so hard to keep your wife, the white queen, alive. Your counterpart, stupid though he is, knew this and kept forcing small advantages here and there, knowing you'd cede them so your wife and his wouldn't be killed. He didn't care about his own wife, of course. You can't blame him.";
	wfak;
	say "You knew you were objectively losing, but at some point, your wife set you straight. It was time to let her go. After you did, your counterpart skulked off to a corner and barked out commands and laughed as you mixed things up in the center of the board, trying to do something, anything, to keep hope alive.";
	wfak;
	say "Now everyone is almost gone. Your 'friend' is still smirking in the corner, not getting his hands dirty. You have but a loyal pawn remaining. He has a rook. But your pawn is far advanced. Still, it's too much to expect ... or is it?";
	wfak;
	say "From far away, your enemy calls out 'You won't get her back!' But you think you can, because you know the magic of what happens when a pawn makes it all the way across the battlefield, and they can and must lay down their lives so someone, anyone on your side, comes back to life. It's usually a queen. Well, in some cases, a monarch tired of his wife asks for someone less, just to show off they could win anyway.";
	wfak;
	say "But you could never show off that way. You are glad to admit your wife saw and understood things you don't. You just wish she could come back to help with the whole rebuilding process and all the other great plans you had.";
	wfak;

to init-fleestate-list:
	now available-fleestate-list is the list of all fleestates;
	remove unreachable from available-fleestate-list;
	remove useless-sacrificing from available-fleestate-list;
	remove spite-checking from available-fleestate-list;
	remove sucker-sacrificing from available-fleestate-list;

to choose-flee-room:
	increment fleestate-index;
	if fleestate-index > number of fleestates, now fleestate-index is 1;
	now current-fleestate is entry fleestate-index of available-fleestate-list;
	now rook-flee-room is a random fleeable room;
	if ever-won is true:
		say "[one of]Since you're playing past the initial win, you will get a hint where the enemy rook will flee to. In this case it is [rook-flee-room]. Some of the bad endings can only be found when a rook to a certain square[or]The enemy rook will flee to [rook-flee-room] this time[stopping].";
	if debug-state is true:
		d "New flee room is [rook-flee-room] with state [current-fleestate].";
		d "Set of states = [available-fleestate-list].";

definition: a room (called rm) is fleeable:
	if rookstate of rm is current-fleestate, yes;
	no;

a room has a fleestate called rookstate. the rookstate of a room is usually unreachable.

chapter options

option-persist-warn is a truth state that varies.

chapter rules

procedural rule: ignore the print final score rule.

chapter tester stuff that needs to be listed globally

undo-allow is a truth state that varies.

undo-explain-shown is a truth state that varies.

volume properties

a room has a number called xval. a room has a number called yval.

a person can be friendly or enemy. a person is usually friendly.

volume board layout

a1 is a room. xval of a1 is 1. yval of a1 is 1.

a2 is a room. xval of a2 is 1. yval of a2 is 2. a2 is north of a1.

a3 is a room. xval of a3 is 1. yval of a3 is 3. a3 is north of a2.

a4 is a room. xval of a4 is 1. yval of a4 is 4. a4 is north of a3.

a5 is a room. xval of a5 is 1. yval of a5 is 5. a5 is north of a4.

a6 is a room. xval of a6 is 1. yval of a6 is 6. a6 is north of a5.

a7 is a room. xval of a7 is 1. yval of a7 is 7. a7 is north of a6.

a8 is a room. xval of a8 is 1. yval of a8 is 8. a8 is north of a7.

b1 is a room. xval of b1 is 2. yval of b1 is 1. b1 is east of a1. b1 is southeast of a2.

b2 is a room. xval of b2 is 2. yval of b2 is 2. b2 is east of a2. b2 is north of b1. b2 is northeast of a1. b2 is southeast of a3.

b3 is a room. xval of b3 is 2. yval of b3 is 3. b3 is east of a3. b3 is north of b2. b3 is northeast of a2. b3 is southeast of a4.

b4 is a room. xval of b4 is 2. yval of b4 is 4. b4 is east of a4. b4 is north of b3. b4 is northeast of a3. b4 is southeast of a5.

b5 is a room. xval of b5 is 2. yval of b5 is 5. b5 is east of a5. b5 is north of b4. b5 is northeast of a4. b5 is southeast of a6.

b6 is a room. xval of b6 is 2. yval of b6 is 6. b6 is east of a6. b6 is north of b5. b6 is northeast of a5. b6 is southeast of a7.

b7 is a room. xval of b7 is 2. yval of b7 is 7. b7 is east of a7. b7 is north of b6. b7 is northeast of a6. b7 is southeast of a8.

b8 is a room. xval of b8 is 2. yval of b8 is 8. b8 is east of a8. b8 is north of b7. b8 is northeast of a7.

c1 is a room. xval of c1 is 3. yval of c1 is 1. c1 is east of b1. c1 is southeast of b2.

c2 is a room. xval of c2 is 3. yval of c2 is 2. c2 is east of b2. c2 is north of c1. c2 is northeast of b1. c2 is southeast of b3.

c3 is a room. xval of c3 is 3. yval of c3 is 3. c3 is east of b3. c3 is north of c2. c3 is northeast of b2. c3 is southeast of b4.

c4 is a room. xval of c4 is 3. yval of c4 is 4. c4 is east of b4. c4 is north of c3. c4 is northeast of b3. c4 is southeast of b5.

c5 is a room. xval of c5 is 3. yval of c5 is 5. c5 is east of b5. c5 is north of c4. c5 is northeast of b4. c5 is southeast of b6.

c6 is a room. xval of c6 is 3. yval of c6 is 6. c6 is east of b6. c6 is north of c5. c6 is northeast of b5. c6 is southeast of b7.

c7 is a room. xval of c7 is 3. yval of c7 is 7. c7 is east of b7. c7 is north of c6. c7 is northeast of b6. c7 is southeast of b8.

c8 is a room. xval of c8 is 3. yval of c8 is 8. c8 is east of b8. c8 is north of c7. c8 is northeast of b7.

d1 is a room. xval of d1 is 4. yval of d1 is 1. d1 is east of c1. d1 is southeast of c2.

d2 is a room. xval of d2 is 4. yval of d2 is 2. d2 is east of c2. d2 is north of d1. d2 is northeast of c1. d2 is southeast of c3.

d3 is a room. xval of d3 is 4. yval of d3 is 3. d3 is east of c3. d3 is north of d2. d3 is northeast of c2. d3 is southeast of c4.

d4 is a room. xval of d4 is 4. yval of d4 is 4. d4 is east of c4. d4 is north of d3. d4 is northeast of c3. d4 is southeast of c5.

d5 is a room. xval of d5 is 4. yval of d5 is 5. d5 is east of c5. d5 is north of d4. d5 is northeast of c4. d5 is southeast of c6.

d6 is a room. xval of d6 is 4. yval of d6 is 6. d6 is east of c6. d6 is north of d5. d6 is northeast of c5. d6 is southeast of c7.

d7 is a room. xval of d7 is 4. yval of d7 is 7. d7 is east of c7. d7 is north of d6. d7 is northeast of c6. d7 is southeast of c8.

d8 is a room. xval of d8 is 4. yval of d8 is 8. d8 is east of c8. d8 is north of d7. d8 is northeast of c7.

e1 is a room. xval of e1 is 5. yval of e1 is 1. e1 is east of d1. e1 is southeast of d2.

e2 is a room. xval of e2 is 5. yval of e2 is 2. e2 is east of d2. e2 is north of e1. e2 is northeast of d1. e2 is southeast of d3.

e3 is a room. xval of e3 is 5. yval of e3 is 3. e3 is east of d3. e3 is north of e2. e3 is northeast of d2. e3 is southeast of d4.

e4 is a room. xval of e4 is 5. yval of e4 is 4. e4 is east of d4. e4 is north of e3. e4 is northeast of d3. e4 is southeast of d5.

e5 is a room. xval of e5 is 5. yval of e5 is 5. e5 is east of d5. e5 is north of e4. e5 is northeast of d4. e5 is southeast of d6.

e6 is a room. xval of e6 is 5. yval of e6 is 6. e6 is east of d6. e6 is north of e5. e6 is northeast of d5. e6 is southeast of d7.

e7 is a room. xval of e7 is 5. yval of e7 is 7. e7 is east of d7. e7 is north of e6. e7 is northeast of d6. e7 is southeast of d8.

e8 is a room. xval of e8 is 5. yval of e8 is 8. e8 is east of d8. e8 is north of e7. e8 is northeast of d7.

f1 is a room. xval of f1 is 6. yval of f1 is 1. f1 is east of e1. f1 is southeast of e2.

f2 is a room. xval of f2 is 6. yval of f2 is 2. f2 is east of e2. f2 is north of f1. f2 is northeast of e1. f2 is southeast of e3.

f3 is a room. xval of f3 is 6. yval of f3 is 3. f3 is east of e3. f3 is north of f2. f3 is northeast of e2. f3 is southeast of e4.

f4 is a room. xval of f4 is 6. yval of f4 is 4. f4 is east of e4. f4 is north of f3. f4 is northeast of e3. f4 is southeast of e5.

f5 is a room. xval of f5 is 6. yval of f5 is 5. f5 is east of e5. f5 is north of f4. f5 is northeast of e4. f5 is southeast of e6.

f6 is a room. xval of f6 is 6. yval of f6 is 6. f6 is east of e6. f6 is north of f5. f6 is northeast of e5. f6 is southeast of e7.

f7 is a room. xval of f7 is 6. yval of f7 is 7. f7 is east of e7. f7 is north of f6. f7 is northeast of e6. f7 is southeast of e8.

f8 is a room. xval of f8 is 6. yval of f8 is 8. f8 is east of e8. f8 is north of f7. f8 is northeast of e7.

g1 is a room. xval of g1 is 7. yval of g1 is 1. g1 is east of f1. g1 is southeast of f2.

g2 is a room. xval of g2 is 7. yval of g2 is 2. g2 is east of f2. g2 is north of g1. g2 is northeast of f1. g2 is southeast of f3.

g3 is a room. xval of g3 is 7. yval of g3 is 3. g3 is east of f3. g3 is north of g2. g3 is northeast of f2. g3 is southeast of f4.

g4 is a room. xval of g4 is 7. yval of g4 is 4. g4 is east of f4. g4 is north of g3. g4 is northeast of f3. g4 is southeast of f5.

g5 is a room. xval of g5 is 7. yval of g5 is 5. g5 is east of f5. g5 is north of g4. g5 is northeast of f4. g5 is southeast of f6.

g6 is a room. xval of g6 is 7. yval of g6 is 6. g6 is east of f6. g6 is north of g5. g6 is northeast of f5. g6 is southeast of f7.

g7 is a room. xval of g7 is 7. yval of g7 is 7. g7 is east of f7. g7 is north of g6. g7 is northeast of f6. g7 is southeast of f8.

g8 is a room. xval of g8 is 7. yval of g8 is 8. g8 is east of f8. g8 is north of g7. g8 is northeast of f7.

h1 is a room. xval of h1 is 8. yval of h1 is 1. h1 is east of g1. h1 is southeast of g2.

h2 is a room. xval of h2 is 8. yval of h2 is 2. h2 is east of g2. h2 is north of h1. h2 is northeast of g1. h2 is southeast of g3.

h3 is a room. xval of h3 is 8. yval of h3 is 3. h3 is east of g3. h3 is north of h2. h3 is northeast of g2. h3 is southeast of g4.

h4 is a room. xval of h4 is 8. yval of h4 is 4. h4 is east of g4. h4 is north of h3. h4 is northeast of g3. h4 is southeast of g5.

h5 is a room. xval of h5 is 8. yval of h5 is 5. h5 is east of g5. h5 is north of h4. h5 is northeast of g4. h5 is southeast of g6.

h6 is a room. xval of h6 is 8. yval of h6 is 6. h6 is east of g6. h6 is north of h5. h6 is northeast of g5. h6 is southeast of g7.

h7 is a room. xval of h7 is 8. yval of h7 is 7. h7 is east of g7. h7 is north of h6. h7 is northeast of g6. h7 is southeast of g8.

h8 is a room. xval of h8 is 8. yval of h8 is 8. h8 is east of g8. h8 is north of h7. h8 is northeast of g7.

chapter sorting rooms into fleeability

[ there are 13 squares the black rook can move to once it's pretty obvious you've figured what to do. They can cause different bad endings if you mess up. ]

rookstate of a5 is a-guarding. rookstate of a6 is a-guarding. rookstate of a7 is a-guarding.

rookstate of d4 is a-allowing. rookstate of e4 is a-allowing. rookstate of f4 is a-allowing. rookstate of g4 is a-allowing.  rookstate of h4 is a-allowing.

rookstate of b4 is spite-checking. rookstate of a3 is spite-checking.

rookstate of a8 is sucker-sacrificing.

rookstate of c4 is useless-sacrificing.

rookstate of a2 is skewer-allow.

volume room description

screen-reader is a truth state that varies.

the description of a room is usually "[if screen-reader is true][list of not off-stage people].[else][grid-printout][end if]";

to say border: say "+-+-+-+-+-+-+-+-+";

to invert-text: (- style reverse; -)

to say grid-printout:
	say "[fixed letter spacing]";
	repeat with Y running from 1 to 8:
		say "[border][line break]";
		say "|";
		repeat with X running from 1 to 8:
			if the remainder after dividing (X + Y) by 2 is 1:
				invert-text;
			say "[occupant of X and (9 - Y)]";
			say "[roman type]";
			say "|";
		say "[line break]";
	say "[border]";
	say "[variable letter spacing]";

to say occupant of (x - a number) and (y - a number):
	repeat with rm running through rooms:
		if xval of rm is x and yval of rm is y:
			if number of people in rm is 0:
				say " ";
				continue the action;
			say "[shorthand of random person in rm]";
			continue the action;
	say "?"

definition: a person (called p) is active:
	if p is off-stage, no;
	yes;

volume commands

piece-to-promote is a thing that varies. piece-to-promote is usually the white queen.

chapter pawning

pawning is an action out of world.

understand the command "p" as something new.
understand the command "pawn" as something new.

understand "pawn" as pawning.
understand "p" as pawning.

check pawning when rook-check: say "You have to move. The opposing rook has you in check." instead;

carry out pawning:
	if location of pawn is c6:
		say "You order the pawn forward. The enemy rook checks you on d6.";
		move black rook to d6;
		move pawn to c7;
		try looking;
		add 2645 to my-move-log;
		add 12646 to my-move-log;
		continue the action;
	say "Triumph! The pawn makes it to the eighth rank. ";
	if piece-to-promote is white queen:
		say "It's too good to be true! Your queen is back. Surely she will be able to outmaneuver a mere rook?";
	else:
		say "The black king laughs as [the piece-to-promote], and not your wife the white queen, pops up.";
	move piece-to-promote to c8;
	now white pawn is off-stage;
	if location of black rook is d1:
		say "But, alas, the black rook is ready to slide in to c1 and skewer you. Once you move out of check, [the piece-to-promote] will fall. Then the king and rook will defeat you.";
		reset-the-board;
		achieve "skewered to death (pawn)";
		reset-the-board instead;
		the rule succeeds;
	if piece-to-promote is white queen:
		say "[line break]The black rook seems unconcerned. It sneaks to c4! You and your queen are now both under attack, but she can just take it...right?";
		now current-game-state is rook-forks-kq;
		move black rook to c4;
		try looking;
		the rule succeeds;
	if piece-to-promote is white bishop or piece-to-promote is white knight:
		say "The black rook snickers as it slides over to c4. Your newly returned ally, [the piece-to-promote], will be captured next move, and a very unpleasant but inevitably lost rook endgame awaits.";
		achieve "forked to death";
		reset-the-board;
		the rule succeeds;
	now white pawn is off-stage;
	say "The black rook scoffs as you call for a rook, not your queen. 'Sheesh. If you wanted a draw, you could've repeated moves.' He shuffles over to a4.";
	now current-game-state is need-kb3;
	move black rook to a4;
	try looking;
	the rule succeeds;

to promote-check (pi - a person):
	if pawn is off-stage:
		say "You already decided what to promote the pawn to.";
		continue the action;
	if pawn is on c7 and not rook-check:
		now piece-to-promote is pi;
		try pawning;
		the rule succeeds;
	note-promote-change pi;
	if option-persist-warn is false:
		say "[line break]";
		ital-say "this option will persist if the puzzle is restarted.";
		now option-persist-warn is true;

to note-promote-change (pi - a person):
	say "You [if piece-to-promote is pi]already plan to promote [the pi][else]decide to promote to [the pi], not [the piece-to-promote][end if], if your pawn ever makes it.";
	note-promote-change-q pi;

to note-promote-change-q (pi - a person):
	if pi is piece-to-promote, continue the action;
	now piece-to-promote is pi;

chapter rooking

rooking is an action out of world.

understand the command "rook" as something new.
understand the command "r" as something new.

understand "rook" as rooking.
understand "r" as rooking.

carry out rooking:
	promote-check white rook;
	the rule succeeds;

chapter bishoping

bishoping is an action out of world.

understand the command "bishop" as something new.
understand the command "b" as something new.

understand "bishop" as bishoping.
understand "b" as bishoping.

carry out bishoping:
	promote-check white bishop;
	the rule succeeds;

chapter knighting

knighting is an action out of world.

understand the command "knight" as something new.
understand the command "k" as something new.

understand "knight" as knighting.
understand "k" as knighting.

carry out knighting:
	promote-check white knight;
	the rule succeeds;

chapter requesting the score

check requesting the score:
	if white pawn is not off-stage:
		say "By official rules, you're trailing by five points to one, but boy, that pawn of yours has potential to become a nine-point queen!";
	else if white queen is not off-stage:
		say "By official rules, your queen is nine points and your opponent's rook is five, but you've got a small problem, here.";
	else if white rook is not off-stage:
		say "Materially, you're equal, but you've got the initiative. Go, you!";
	else:
		say "You're down five points to three. You should never see this, but you are.";
	say "[line break]Okay, so there's no scoring here, but there are accomplishments of a sort. To find them, say [b]T[r] or [b]THINK[r].";
	the rule succeeds;

chapter thinking

understand the command "t" as something new.
understand "t" as thinking.

the block thinking rule is not listed in any rulebook.

check thinking:
	if achieve-score is 0, say "You haven't found any achievements, but don't worry. You'll get one soon. [this-game] tracks both wins and losses. You'll find creative losses as you go." instead;
	say "Here are the accomplishments so far from your various playthroughs. Note that they are listed roughly in the time it takes to find them, which will hopefully be a clue if you want to plow through everything.";
	let count be 0;
	repeat through table of unachievements:
		increment count;
		if count > last-got:
			let dif be number of rows in table of unachievements - last-got;
			say "[dif] achievement[if dif > 1]s[end if] below this.";
			break;
		if achieved entry is true:
			say "[b][achievement entry in upper case][r]: [details entry][line break]";
		else:
			say "--[line break]";
	the rule succeeds;

to decide which number is last-got:
	let count be 0;
	let return-val be 0;
	repeat through table of unachievements:
		increment count;
		if achieved entry is true, now return-val is count;
	decide on return-val;

volume dramatis personae

a person has text called shorthand.

a person has a number called pointvalue.

the black rook is an enemy person in d5. shorthand of black rook is "r".

the white pawn is a friendly person in c6. shorthand of white pawn is "p". pointvalue of white pawn is 1.

the black king is an enemy person in a1. shorthand of black king is "k".

the player is in b6. the player is friendly. shorthand of player is "K".

the white queen is a friendly person. shorthand of white queen is "Q". pointvalue of white queen is 9.

the white rook is a friendly person. shorthand of white rook is "R". pointvalue of white rook is 5.

the white bishop is a friendly person. shorthand of white bishop is "B". pointvalue of white bishop is 3.

the white knight is a friendly person. shorthand of white knight is "N". pointvalue of white knight is 3.

to decide which number is your-points:
	let temp be 0;
	repeat with PER running through friendly not off-stage people:
		increase temp by pointvalue of PER;
	decide on temp.

when play begins: now right hand status line is "[your-points] - 5".

volume definition(s)

definition: a room (called rm) is friend-occupied:
	if number of friendly people in rm > 0, yes;
	no;

chapter rook stuff to be conglomerated later once the program is stable

definition: a room (called rm) is black-rook-guarded:
	if black-rook-see of north and rm, yes;
	if black-rook-see of south and rm, yes;
	if black-rook-see of east and rm, yes;
	if black-rook-see of west and rm, yes;
	no.

definition: a room (called rm) is white-rook-reachable:
	if white-rook-reach of north and rm, yes;
	if white-rook-reach of south and rm, yes;
	if white-rook-reach of east and rm, yes;
	if white-rook-reach of west and rm, yes;
	no.

to decide whether rook-check:
	if location of player is black-rook-guarded, yes;
	no;

to decide whether black-rook-see of (di - a direction) and (rm - a room):
	let rm2 be the room di of location of black rook;
	while rm2 is not nothing:
		if rm is rm2, yes;
		if number of people in rm2 > 0 and (player is not in rm2 and white rook is not in rm2), no;
		now rm2 is the room di of rm2;
	no;

to decide whether white-rook-reach of (di - a direction) and (rm - a room):
	let rm2 be the room di of location of white rook;
	while rm2 is not nothing:
		if rm is rm2, yes;
		if number of people in rm2 > 0, no;
		now rm2 is the room di of rm2;
	no;

definition: a room (called rm) is king-guarded:
	let ek be location of black king;
	repeat with D running through directions:
		if the room D of location of king is rm, yes;
	no;

volume reset the board

repeats-this-time is a number that varies.

to reset-the-board:
	say "[line break]Okay, let's set things back where they were and try again.";
	move black rook to d5;
	move white pawn to c6;
	move black king to a1;
	now current-game-state is the-beginning;
	now white queen is off-stage;
	now white rook is off-stage;
	now white bishop is off-stage;
	now white knight is off-stage;
	now repeat-yourmove-whine is false;
	now repeat-whines is 0;
	now my-move-log is {};
	now repeats-this-time is 0;
	if black-move is false:
		move the player to b6;
	else:
		move player to b6, without printing a room description;

volume going

the friendly piece obstruction rule is listed first in the check going rules.
the final semi-random rook move rule is listed after the friendly piece obstruction rule in the check going rules.
the king shouldn't move at end rule is listed before the final semi-random rook move rule in the check going rules.
the rook catches pawn rule is listed after the final semi-random rook move rule in the check going rules.

check going (this is the friendly piece obstruction rule):
	if the room gone to is friend-occupied, say "But [the random friendly person in room noun of location of player] is already there." instead;
	if the room gone to is king-guarded, say "Unfortunately, if you got that near the enemy king, he would sock you. He's a sneaky coward." instead;
	if the room gone to is black-rook-guarded, say "But the enemy rook would [if room gone from is black-rook-guarded]still [end if]see you there." instead;

this is the black-rook-takes-rook rule:
	if noun is adjacent to location of player:
		say "Your rook looks dismayed. The black rook seems surprised. 'Take him and get it over with! I'm tired of this stupid war!' the king booms from the corner. The black rook and your rook protest. They'd like a good, long, boring draw, but your opposite number doesn't have time for that. The black rook sighs and does its duty.[paragraph break]All that work, and nothing to show for it all around. At least you are able to take the enemy rook back to force a draw.";
		achieve "castle carnage";
	else:
		say "Your rook looks dismayed as the black rook laughs and jumps at them! All that work, and nothing to show for it. You can't even take the enemy rook back! What a sad way to lose.";
		achieve "all for naught";
	reset-the-board;
	the rule succeeds;

this is the bungled-it-late rule:
	if noun is black-rook-guarded, abide by the black-rook-takes-rook rule;
	if location of white rook is a8:
		say "There are spite checks and then there are spite checks! Your rook slides all the way to the side. The black king moves, but you have no follow-up. The black rook zips to the side of the board, and you will be pushed away from the enemy king.";
		achieve "spite check (drawing)";
		reset-the-board;
		the rule succeeds;
	say "The black rook and king breathe a collective sigh of relief as ";
	if location of black rook is b4:
		if location of player is a3:
			say "the black rook moves back to b1";
		else if location of player is c3:
			say "the black rook moves back to b7, where it can check you for a good while";
		else if location of player is c2:
			say "the black rook sneaks in to b2, pushing you away from the enemy king, or into perpetual checks";
		else:
			say "BUG";
	else if yval of location of player is 4 or location of player is c3:
		say "you allow the enemy king much more freedom";
	else if yval of location of white rook is 3:
		say "the black rook moves to the first rank, so his king can never be safely checked";
	else if location of player is c2:
		if location of black rook is a2:
			say "the black rook pesters you from below with a check at b2";
		else:
			say "the black king slides up to a2, relieved he's out of the corner and his rook defends the a-file";
	else if xval of location of white rook is not 2:
		say "the black rook begins checking you vertically. You'll never be able to stay on a3 and b3 to keep the enemy king boxed in";
	else:
		say "the black king slides to b1. You have a discovered check, but it won't come to much, and if you move from the b-file, the black rook will annoy you";
	say ". It's going to be a draw. A long, fifty-move one, unless you agree to trade rooks. But even getting into position for that may be tiresome.";
	achieve "staler than stalemate, mate";
	reset-the-board;
	the rule succeeds;

check going when current-game-state is rook-forks-kq:
	say "You recognize it will be stalemate if your wife captures the enemy rook. 'Thus, I perish,' you cry, adding how life isn't worth living without her, but ... it's not exactly what she'd have chosen as her final memory. She never asked for that melodramatic nonsense.[paragraph break]And of course, you realize this, too, as the enemy king and rook move in on you slowly.[paragraph break]In the afterlife, a low-ranking angel informs you that you'd have gotten to see her even if you hadn't died together, but she hasn't quite forgiven you yet, and what's more, she'll be allowed to move up from Limbo even without forgiving you. Ouch!";
	achieve "pointless bathos and loss";
	reset-the-board;
	the rule succeeds;

check going when current-game-state is need-kb3 (this is the final semi-random rook move rule):
	if room gone to is not b3, abide by the bungled-it-late rule;
	if rookstate of rook-flee-room is spite-checking:
		say "There's a big argument. The black king insists the black rook give himself up for you. 'You will sacrifice yourself for your king and country, and you will sacrifice yourself for your king and country right NOW, do you hear?'[paragraph break]There's a big argument, which you sit back and enjoy, until you worry it might tip off the 50-move rule. Then you realize the 50-move rule doesn't progress without, you know, a legal move. So that's all good. The rook flings itself to [rook-flee-room].";
		move black rook to rook-flee-room;
	else:
		say "The black rook flees to [rook-flee-room] to save its own skin!";
		move rook to rook-flee-room;
	if current-game-state is need-kb3, now current-game-state is rook-doomed;

check going when current-game-state is rook-doomed (this is the king shouldn't move at end rule):
	if location of player is b3 and noun is northeast and location of black rook is c4:
		say "Of course, you could have had your rook do the taking. But you had a bit of unfinished business. You needed someone to beat up after being forced to get your rook and not your wife back. Your own rook understands, of course. The enemy king is forced out of the corner momentarily until you stuff him back in. It's a nice bit of petty revenge, especially since it doesn't get in the way of winning the war.";
		achieve "giving futile hope";
		reset-the-board;
		the rule succeeds;
	if location of white rook is black-rook-guarded, abide by the black-rook-takes-rook rule;
	if room gone to is not location of black rook:
		say "'Geez. What a coward. Didn't even want to capture me.' The rook proceeds to [if location of player is c2]patrol the a-file[else if location of black rook is a3]patrol the third rank[else]patrol the a-file, checking you if you try for a sneaky checkmate on b3[end if], and after fifty moves, the war is officially declared a draw.";
		achieve "staler than stalemate, mate";
		reset-the-board;
		the rule succeeds;
	say "BAM! Take that, rook! [if location of rook is a3]The rest is straightforward. Your enemy moves to b1, you move to b3, and they move to a1, and your rook delivers the kill on c1[else]The rest is a bit tricky, since your king was decoyed to b4. But you've planned ahead: the enemy king to a2? Rook to c2. Enemy king to b1? King to b3. The rook on the c-file cuts your enemy off[end if]. Victory!";
	check-drag-out;
	choose-flee-room;
	reset-the-board;
	the rule succeeds;

to decide whether seen-alts:
	if alt-c3 is false, no;
	if alt-b3 is false, no;
	if the room noun of location of player is c2, yes;
	if b3 is unvisited, no;
	yes;

to check-for-alts:
	unless location of black rook is d4 and location of player is b4, continue the action;
	if noun is southeast, now alt-c3 is true;
	if noun is south, now alt-b3 is true;
	if seen-alts:
		say "Why, yes ... it seems like there are two different ways to c2. This may not be terribly useful, but it's good to know.";
		achieve "alternate paths";

check going (this is the rook catches pawn rule): [the logic here is: you move to the a-file, it's a draw. You move to the c-file too soon, it's a draw. There are side test cases, of course. ]
	if room gone to is nowhere, continue the action;
	if debug-state is true, say "DEBUG: [room gone from] to [room gone to], with rook at [location of black rook].";
	if not seen-alts, check-for-alts;
	if location of white pawn is c6:
		say "The black rook slides over to c5, keeping an eye on the pawn, which can easily be taken before it is promoted. Of course, the enemy king has no shot of corralling the pawn so the rook doesn't die in the process[if xval of room gone to is 1], even though you'll need to make a move to guard your pawn[else if xval of room gone to is 3], even though you'll need to get back out of your pawn's way[end if]. Your hopes of winning are dashed!";
		achieve "traded pawn";
		reset-the-board instead;
	if xval of room gone to is 2 and location of player is c3 and location of black rook is d1:
		say "Oh no! That prevents the rook skewering your advanced pawn, but after it slides to c1, the pawn is undefendable.";
		achieve "captured pawn";
		reset-the-board instead;
	if room gone to is c1:
		if location of black rook is not d4:
			say "Oh no! There's a bug here. The black rook should be at d4. Sorry--I'm resetting.";
			reset-the-board instead;
		say "The black rook slides over to c4, forking you and your pawn on [location of white pawn]. The rook and king endgame ahead will be painful.";
		achieve "forked to death";
		reset-the-board instead;
	let y-to be yval of room gone to;
	let x-to be xval of room gone to;
	if y-to is 7:
		say "The rook chuckles as it backpedals to d7. Your pawn is pinned against you. Even if you go to the eighth rank, the rook will take it the next move.";
		achieve "pinned pawn";
		reset-the-board instead;
	if x-to is 1:
		if debug-state is true, say "DEBUG: you to [room gone to], rook from [location of black rook].";
		say "The rook chuckles as it swoops behind the pawn to [the room west of location of rook]. [if pawn-guardable of room gone to]At least you'll be able to guard the pawn and smack the rook down! Or, if the rook checks you on the b-file, you can move to the a-file and move back to the b-file, for a repetition of moves[else]And you're too far away to even guard it! You will lose the war now[end if].";
		if pawn-guardable of room gone to:
			achieve "traded pawn";
		else:
			achieve "captured pawn";
		reset-the-board instead;
	if x-to is 3 or x-to is 1:
		if location of black rook is d1 and (room gone to is c3 or room gone to is c4):
			say "Ouch! You're running back to guard your pawn, but the black rook checks you at c1, and there's just no way you can defend it.";
			achieve "skewered to death (pawn)";
			reset-the-board instead;
		if y-to > 3:
			say "The rook zips down to d1. So unfair! You have feet and legs and everything, and you're nowhere near that fast! But you see what's up. [if y-to is 4]That rook's going to c1, and you can barely stumble back to guard the pawn behind/ahead of you[else]You'll be able to guard your pawn easily[end if]. Thankfully, the enemy king's too far away to gang up on your pawn, but it's a stalemate all the same.";
			achieve "skewered to a draw";
			reset-the-board instead;
	if threefold-repetition of board-state, the rule fails;

to decide whether pawn-guardable of (rm - a room):
	let yp be yval of rm;
	if yp > 5, yes;
	if yp < 5, no;
	if yval of location of black rook is 6, no;
	yes;

after going when pawn is not off-stage (this is the transcribe moves rule):
	if room gone to is c3 and room gone from is b4:
		move-and-log d1;
	else if room gone to is b3 and room gone from is c2:
		if location of rook is d4:
			move-and-log d3;
		else:
			move-and-log d4;
	else:
		move-and-log d-file-room;
	continue the action;

black-move is a truth state that varies.

my-move-log is a list of numbers variable.

to decide which direction is pref-dir of (fromrm - a room) and (torm - a room):
	if yval of torm is yval of fromrm:
		if xval of torm > xval of fromrm, decide on east;
		decide on west;
	if xval of torm is xval of fromrm:
		if yval of torm > yval of fromrm, decide on north;
		decide on south;
	decide on up;

to say note-rook-check of (rm - a room):
	let look-dir be pref-dir of rm and location of player;
	if look-dir is up, continue the action;
	let rm2 be the room look-dir of rm;
	while rm2 is not nowhere:
		if location of player is rm2:
			say ", putting you in check";
			continue the action;
		if number of people in rm2 > 0, continue the action;
		now rm2 is the room look-dir of rm2;

to move-and-log (rm - a room):
	say "The black rook slides [pref-dir of location of black rook and rm] to [rm][note-rook-check of rm].";
	now black-move is true;
	move black rook to rm;
	if threefold-repetition of board-state, continue the action;
	now black-move is false;

to decide whether threefold-repetition of (N - a number):
	let temp be 0;
	repeat with EN running through my-move-log:
		if EN is N:
			increment temp;
			if temp is 2:
				if location of black rook is d4 and white rook is not off-stage:
					say "'REPETITION OF MOVES' booms the enemy rook, but no ... you've been on b3 and they've been on d4 a lot recently, true, but your pawn becoming a rook changes everything. They look embarrassed and give a 'well, I had to try SOMETHING' look.";
					no;
				say "'REPETITION OF MOVES!' the enemy rook calls out. They're right. It's odd--the whole affair seemed a draw, anyway, so why were they so eager to claim one? I guess they are eager to get back to oppressing pawns, or something.";
				achieve "threefold";
				reset-the-board;
				yes;
			else if temp is 1:
				if black-move is false and repeat-yourmove-whine is false:
					now repeat-yourmove-whine is true;
					choose row repeat-whines in table of repeat whines;
					say "'Back and forth, eh? One more time here and we can call this dumb war off. No winners, no losers. Them's the rules.'";
					now repeat-yourmove-whine is true;
				if black-move is true:
					increment repeat-whines;
					choose row repeat-whines in table of repeat whines;
					say "[line break][rook-whine entry][line break]";
					increment repeats-this-time;
	add N to my-move-log;
	no;

table of repeat whines
rook-whine
"[if repeat-yourmove-whine is false]'We've been here before, haven't we? Just approached things from a different angle. Once more, and we can call this long, useless, worn-out war a draw. But we'll all make it out alive.'[else]'Well, if you repeat, I can repeat, too. Not much else to do, right?'[end if]"
"'Out of ideas, eh? That's okay. I would be, too, in your position. It's tough to admit you're not going to win.'"
"'What are you trying to prove? Honestly. Okay, okay. I suppose keeping your subjects in a constant state of worry from war has its perks. But we know how it ends.'"
"'We're just putting on a show for our subjects, right? Right. Well, this game's been long enough, why not make it a bit longer?'"
"'This little dance was actually fun. Not gonna lie! But I think we both know what's inevitable here.'"

to decide which number is board-state:
	let temp be 0;
	if black-move is true:
		now temp is 10000;
		increase temp by 1000 * xval of location of player;
		increase temp by 100 * yval of location of player;
	else:
		increase temp by 1000 * xval of go-room;
		increase temp by 100 * yval of go-room;
	increase temp by 10 * xval of location of rook;
	increase temp by 1 * yval of location of rook;
	decide on temp;

to decide which room is d-file-room:
	if location of player is c2, decide on d4;
	if location of player is c3, decide on d1;
	let r1 be the room east of location of player;
	if xval of r1 is 4, decide on r1;
	decide on the room east of r1;

check going inside: say "You can only move in the eight basic directions." instead;
check exiting (this is the force exit to outside rule): say "You can only move in the eight basic directions." instead;
check going outside: say "You can only move in the eight basic directions." instead;

the force exit to outside rule is listed instead of the convert exit into go out rule in the check exiting rulebook.

to decide which room is go-room:
	decide on the room noun of location of player;

check going nowhere:
	if noun is north, say "There's no ninth rank, so you'd fall off the north edge of the board! What a sad end that would be." instead;
	if noun is south, say "There's no zeroth rank, so you'd fall off the south edge of the board! What a sad end that would be." instead;
	if noun is east, say "There's no ninth column, so you'd fall off the east edge of the board! What a sad end that would be." instead;
	if noun is west, say "There's no zeroth column, so you'd fall off the east edge of the board! What a sad end that would be." instead;
	say "You just aren't able to move that way." instead;

volume verbs

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "[this-game] is my third text adventure based on chess. The first is [i]Fivebyfivia Delenda Est[r], for ParserComp 2021, and the second is [i]Fourbyfourian Quarryin['][r], for IFComp 2021. That seemed about all I could do, where you placed pieces instead of making moves.";
	say "[line break]But then after some discussion on the intfiction boards about chess and text adventures, I was alerted to Magnus Olsson's [i]Zugzwang[r]. It was part of a text-adventure April Fools['] joke, but it was well-constructed and explored different possible moves.";
	say "[line break]I'd already done the canonical three pawns vs. three pawns puzzle a long time ago as a sort of experiment, but I remembered one puzzle that would fit well. I didn't want too many pieces. And, well, I remembered one. I hope it's fun for chessplayers and nonplayers alike.";
	the rule succeeds;

chapter creditsing

creditsing is an action out of world.

understand the command "credits" as something new.

understand "credits" as creditsing.

carry out creditsing:
	say "Thanks to Adam Sommerf(i?)eld for bringing ParserComp back in 2021. Thanks to Christopher Merriner and fos for administrating it in 2022.";
	say "[line break]Thanks to (testers) for testing.";
	say "[line break]Thanks to you for playing.";
	the rule succeeds;

chapter moves-oning

show-all-moves is a truth state that varies.

movesoning is an action out of world.

understand the command "moves" as something new.

understand "moves on" as movesoning.

carry out movesoning:
	say "Showing moves with the board is [if show-all-moves is true]already[else]now[end if] on.";
	now show-all-moves is true;
	the rule succeeds;

chapter moves-offing

movesoffing is an action out of world.

understand "moves off" as movesoffing.

carry out movesoffing:
	say "Showing moves with the board is [if show-all-moves is false]already[else]now[end if] off.";
	now show-all-moves is false;
	the rule succeeds;

chapter movesing

movesing is an action out of world.

understand "moves" as movesing.

carry out movesing:
	if show-all-moves is true:
		try movesoffing;
	else:
		try movesoning;
	the rule succeeds;

after printing the locale description when show-all-moves is true:
	say "In this position, you can ";
	process the print-legal-moves rule;
	continue the action;

book parser errors

the empty command to waiting rule is listed first in the for printing a parser error rulebook.

the general info error rule is listed after the empty command to waiting rule in the for printing a parser error rulebook.

descriptive-warn is a truth state that varies.

rule for printing a parser error (this is the general info error rule):
	say "Sorry, I couldn't parse that. Commands never need to be more than three words long, and there are only limited squares per move. In this case, you can ";
	process the print-legal-moves rule;
	say "Note most of the time you can drop a piece's first letter if only one piece can move to a square, and commands are case-insensitive.[paragraph break]Also, a more comprehensive list of commands is at [verb-say].";
	if descriptive-warn is false:
		say "[line break]Also, descriptive notation is not available. If you don't know what this means, don't worry, you're probably better off not knowing. But for chess players who wish to do so, sorry. I couldn't find any way to distinguish King to Bishop Seven from King to B7. Which was a convenient excuse to avoid an interesting coding puzzle.";
		now descriptive-warn is true;
	the rule succeeds;

this is the print-legal-moves rule:
	if  white queen is not off-stage:
		say "move qc4 or ";
	else if white pawn is not off-stage:
		if location of player is not black-rook-guarded:
			say "move your pawn with [b][the room north of location of pawn][r] or ";
	else if white rook is not off-stage:
		now rook-go is true;
		if location of player is not black-rook-guarded:
			say "move your rook with [list of white-rook-reachable rooms] or ";
		else if location of white rook is black-rook-guarded:
			say "take the black rook with [location of black rook] or ";
		now rook-go is false;
	now king-go is true;
	say "move your king with [list of king-available rooms].";
	now king-go is false;

rook-go is a truth state that varies.
king-go is a truth state that varies.

before printing the name of a room (called rm) when king-go is true: say "[b]K";
after printing the name of a room (called rm) when king-go is true: say "[r]";

before printing the name of a room (called rm) when rook-go is true: say "[b]R";
after printing the name of a room (called rm) when rook-go is true: say "[r]";

to say verb-say: say "[b]V[r]/[b]VERB[r]/[b]VERBS[r]"

rule for printing a parser error when the latest parser error is the i beg your pardon error (this is the empty command to waiting rule):
	try waiting;
	the rule succeeds;

definition: a room (called rm) is king-available:
	if rm is location of white pawn, no;
	if rm is black-rook-guarded, no;
	if rm is king-guarded, no;
	if rm is adjacent to location of player, yes;
	no;

check waiting: say "Hey, yeah. It's your turn to move, so why not use all the time you want? Keep the opponent nervous." instead;

book miscellaneous descriptive notation

chapter rxring

rxring is an action out of world.

understand the command "rxr" as something new.

understand "rxr" as rxring.

carry out rxring:
	if white rook is off-stage, say "You don't have a rook on the  board!" instead;
	now hinted-person is white rook;
	try squaregoing location of black rook;
	the rule succeeds;

chapter rxring

kxring is an action out of world.

understand the command "kxr" as something new.

understand "kxr" as rxring.

carry out kxring:
	if location of black rook is not adjacent to location of player, say "The black rook isn't close enough to take!" instead;
	if location of black rook is adjacent to location of black king, say "But the black king is guarding that square!" instead;
	go-to-square noun instead;

volume parsing

hinted-person is a person that varies.

equals-warn is a truth state that varies.

after reading a command:
	now hinted-person is black king;
	let X be the player's command in lower case;
	change the text of the player's command to "[X]";
	if the player's command matches the regular expression "8=?<a-z>$":
		if the player's command matches the text "=":
			if equals-warn is false:
				now equals-warn is true;
				ital-say "when promoting and specifying a piece, you don't need to put in an equals sign.";
			let X be the player's command;
			replace the text "=" in X with "";
			change the text of the player's command to "[X]";
			say "(eq) [the player's command].";
		let nc be the number of characters in the player's command;
		if character number nc in the player's command is "q":
			note-promote-change-q white queen;
		else if character number nc in the player's command is "r":
			note-promote-change-q white rook;
		else if character number nc in the player's command is "b":
			note-promote-change-q white bishop;
		else if character number nc in the player's command is "n" or character number nc in the player's command is "k":
			note-promote-change-q white knight;
		else:
			say "You can only promote to Q, B, R, or N (K is used here since N can be confused with north).";
			reject the player's command;
		let X be the player's command;
		replace the regular expression ".$" in X with "";
		change the text of the player's command to "[X]";
		say "eq new: [the player's command].";
	if the player's command matches the regular expression "^<a-z><a-z><1-8>$":
		if character number 1 in the player's command is "k":
			now hinted-person is the player;
			change the text of the player's command to "[character number 2 in the player's command][character number 3 in the player's command]";
		else if character number 1 in the player's command is "q":
			now hinted-person is the white queen;
			change the text of the player's command to "[character number 2 in the player's command][character number 3 in the player's command]";
		else if character number 1 in the player's command is "p":
			now hinted-person is the white pawn;
			change the text of the player's command to "[character number 2 in the player's command][character number 3 in the player's command]";
		else if character number 1 in the player's command is "n":
			now hinted-person is the white knight;
			change the text of the player's command to "[character number 2 in the player's command][character number 3 in the player's command]";
		else if character number 1 in the player's command is "r":
			now hinted-person is the white rook;
			change the text of the player's command to "[character number 2 in the player's command][character number 3 in the player's command]";
		else if character number 1 in the player's command is "b":
			now hinted-person is the white bishop;
			change the text of the player's command to "[character number 2 in the player's command][character number 3 in the player's command]";
		else:
			say "Invalid piece specified.";
			reject the player's command;
		if hinted-person is off-stage:
			say "You can't get [the hinted-person] to move. They're not on the board.";
			reject the player's command;

squaregoing is an action applying to one visible thing.

understand "[any room]" as squaregoing.

to check-drag-out:
	if repeats-this-time > 0:
		say "[repeats-this-time] repeats: [my-move-log].";
	if repeats-this-time >= 5:
		say "Wow! You really left your enemies hanging before finishing them off. Impossible to imagine doing better, really.";
		achieve "dragging it out all the way";
		repeat through table of unachievements:
			if achievement entry is "dragging it out":
				if achieved entry is false:
					ital-say "I gave you the 'dragging it out' achievement, too, for if you repeated any position at all and still won. But you found the maximum amount to repeat without a draw, so great job there!";
					now achieved entry is true;
				break;
	else if repeats-this-time > 0:
		say "You felt a small wicked twinge for teasing the enemy rook and king a bit before going in for the kill.";
		achieve "dragging it out";
	if repeats-this-time > 5:
		ital-say "somehow, you managed to make more moves than I calculated possible. If you're willing to email this log (or a transcript) to me, I'd appreciate it!";
		say "[my-move-log]";
	if repeat-whines > 0 or repeat-yourmove-whine is true:
		achieve "dragging it out";

this is the implicit pawn movement rule:
	if hinted-person is black king and the room north of location of white pawn is the noun:
		if noun is adjacent to location of player:
			say "(moving the pawn, as is conventional with chess notation when no piece is given)[line break]";
		try pawning;
		the rule succeeds;
	if hinted-person is white pawn and the room north of location of white pawn is the noun:
		say "(the p at the command's start is implicit, so you don't need it)[line break]";
		try pawning;
		the rule succeeds;

this is the implicit king movement rule:
	if hinted-person is black king and noun is adjacent to location of the player, now hinted-person is the player;
	if hinted-person is the player:
		if the noun is adjacent to the location of the player:
			go-to-square noun;
		else:
			say "You can't travel that far!";
		the rule succeeds;

this is the white-rook-coward rule:
	if location of white rook is black-rook-guarded and noun is not black-rook-guarded and noun is location of black rook:
		say "'Geez. What a coward. Didn't even want to capture me.' The rook proceeds to [if location of player is c2]patrol the a-file[else if location of black rook is a3]patrol the third rank[else]patrol the a-file, checking you if you try for a sneaky checkmate on b3[end if], and after fifty moves, the war is officially declared a draw.";
		reset-the-board;
		the rule succeeds;

definition: a room (called rm) is queen-seeable:
	let lq be location of queen;
	if rm is lq, no;
	if xval of rm is xval of lq, yes;
	if yval of rm is yval of lq:
		if yval of rm < 4, no;
		yes;
	if (xval of rm + yval of rm) is (xval of lq + yval of lq), yes;
	if (xval of rm - yval of rm) is (xval of lq - yval of lq), yes;
	no;

carry out squaregoing:
	if noun is location of hinted-person, say "You can't pass. In fact, it won't ever do you any good. There's no zugzwang anywhere around." instead;
	if white pawn is not off-stage, abide by the implicit pawn movement rule;
	abide by the implicit king movement rule;
	if hinted-person is white rook:
		unless xval of noun is xval of location of white rook or yval of noun is yval of location of white rook:
			say "The white rook can't move there.";
			the rule succeeds;
		if location of player is black-rook-guarded and noun is not location of black rook, say "You need to get out of check, somehow." instead;
		if noun is location of the player, say "Your rook is great and all, but you can't share a square with them!" instead;
		if noun is not white-rook-reachable, say "Your rook would have to jump over something to get to [noun]." instead;
	if current-game-state is rook-forks-kq and hinted-person is queen:
		if noun is not c4:
			say "All your wife can do is capture the enemy rook";
			if noun is not queen-seeable:
				say ". She can't access [noun], anyway";
			say "." instead;
		say "Your wife swoops in and gives the enemy rook a good what-for. But there's a problem! The enemy king can't move anywhere! By some really awful ancient rules of war, this is not on. Stalemate, it's called. All the fighting is for naught. You're forced to resign your royal title because, apparently, you didn't do things right.[paragraph break]They claim you could've avoided it. ";
		if achieved-yet of "plain old checkmate":
			say "And you could've. ";
			if achieved-yet of "stalemate, mate":
				say "This must not be the way to figure everything out.";
				say "But you-the-player are glad to have checked off one more accomplishment.";
		else:
			say "But what is the right way, then?";
		achieve "stalemate, mate";
		reset-the-board;
		the rule succeeds;
	if current-game-state is rook-doomed:
		if location of black rook is a2 and noun is b8:
			say "A loud shout from behind: 'what the heck are you doing? Are you TRYING to find ways to lose?'[paragraph break]You turn your head, and when you face forward, the black rook is staring at you, about to break down in laughter.";
			achieve "skewered to death (rook)";
			reset-the-board;
			the rule succeeds;
		if noun is a8:
			if location of black rook is c4:
				say "Yes! Why not give the black rook a bit of false hope? Throw a check their way. The enemy king can't move too far. Sure, it would've been quicker to take the other rook, but sometimes, it's fun to play with your prey.";
				achieve "spite check (winning)";
				check-drag-out;
				reset-the-board;
				the rule succeeds;
			else if yval of location of black rook is 4:
				say "There are spite checks and then there are spite checks! Your rook slides all the way to the side. The black king moves, but you have no follow-up. The black rook zips to the side of the board, and you will be pushed away from the enemy king.";
				achieve "spite check (drawing)";
				reset-the-board;
				the rule succeeds;
		if noun is location of black rook:
			if noun is a8:
				say "The black king, trapped on the edge of the board, will die off soon enough. It's time to pillage a bit! You order your rook to smack up their opposing number, and they do so with relish.";
				check-drag-out;
				achieve "running up the score";
			else if noun is c4:
				say "Well, since the black rook forced you to, why not? That doesn't stop the inevitable. In fact, it barely delays things. But it was fun, seeing your opponents grovel for a bit, in a way.";
				check-drag-out;
				achieve "rook on rook violence";
				choose-flee-room;
			reset-the-board;
			the rule succeeds;
		if noun is c1:
			if achieved-yet of "plain old checkmate":
				say "A painful trip through memory lane. No, there was nothing you could have done. You had that clever idea, and it just wasn't enough.";
			else:
				say "And so it comes to pass: the enemy king, safe from the main action for so long, is trapped. He thought he was safe or, if you got close, he could get out of the corner quickly enough. Even being one square away from the corner would've been good enough! Well, he deserved his fate. You can't remember how or why he got there. You have your revenge, which is something, even if you will have to do without your queen.[paragraph break]It's been a long fight. You don't even remember why it started. But with your rook beside you, you will restore the kingdom, slowly but surely.";
			achieve "plain old checkmate";
			check-drag-out;
			if ever-won is false:
				now ever-won is true;
				say "You figured the main solution, but if you want, you can [b]TRY[r] to find other ways to lose. I hope they are amusing. There are a few more squares the enemy rook may flee to now, making for more endings.";
				add useless-sacrificing to available-fleestate-list;
				add spite-checking to available-fleestate-list;
				end the story finally saying "Personal Loss, Victory in Battle";
				the rule succeeds;
			else:
				choose-flee-room;
				reset-the-board;
			the rule succeeds;
		abide by the white-rook-coward rule;
		abide by the bungled-it-late rule;
		the rule succeeds;
	if hinted-person is white rook:
		abide by the bungled-it-late rule;
	d "Couldn't find any way to move [hinted-person] to [noun].";
	say "You don't seem to be able to move anything to [noun].";

to go-to-square (rm - a room):
	let x be the best route from location of player to noun;
	try going x;

volume meta verbs

chapter undo

rule for deciding whether to allow undo:
	if game-over:
		say "You decide to relive your final moment of victory. Or find new stuff to do. Whichever.";
		allow undo;
	if undo-allow is true:
		say "Undo allowed for testing.";
		allow undo;
	say "You have a vision of some young children screaming 'No takebacks!' and 'You touched it, you moved it!' It ends in tears. Wow! What was that about?";
	if undo-explain-shown is false:
		say "[line break]";
		ital-say "undoing is disabled, but since the whole game shouldn't take more than fourteen moves, you should be able to recreaete what you did. I hope this balances forcing you to a bit of challenging calculation with not getting too frustrated.";
		now undo-explain-shown is true;
	deny undo;

report undoing an action when debug-state is true:
	try looking;
	the rule succeeds;

chapter verbsing

verbsing is an action out of world.

understand the command "verbs" as something new.
understand the command "verb" as something new.
understand the command "v" as something new.

understand "verbs" as verbsing.
understand "verb" as verbsing.
understand "v" as verbsing.

carry out verbsing:
	say "[this-game] accepts commands in standard chess algebraic notation, which seems intimidating, but don't worry, you don't have to know the details. Also, you can use upper or lower case for your commands.";
	say "[line break]You are a king, which moves you can move to any squares vertically, horizontally, or diagonally adjacent. That means if you are on f6, the commands [b]SE[r], [b]e5[r] and [b]Ke5[r] would give the same result, assuming no other piece can move to e5.";
	say "[line break]Of course, you will have to do more than move your king. If you wish to move a pawn, you can say pc7 or even just c7. (Pawns take priority over other pieces if both can move to the same square.) To promote the pawn, c8. To underpromote it, c8=b or c8b will do so.";
	say "[line break]To move a promoted piece, [b]qa8[r] will do so for the queen. Note that [b]N[r] is used to refer to a knight, as [b]K[r] is taken by the king.";
	say "[line break]You can also say [b]B[r] to set the default piece to promote to, say, a bishop. In this case, although [b]K[r] is usually the king in algebraic notation, [b]K[r] is referred to as the knight, since you can't have two kings on the board.";
	say "[line break]All command parsing is case-insensitive, though standard chess notation capitalizes the piece name. This is just so you have one less thing to worry about.";
	say "[line break]Finally, there is no [b]UNDO[r] or takebacks, because we want to mirror an actual chess scenario here. But don't worry. A successful run shouldn't take too long, so you should be able to retrace your steps easily enough.";
	the rule succeeds;

volume unachievements

[we could make state-list-delete a specific-state and then go through the table, looking to see if any of the other specific state was still there, but this feels like it might be too-cute code. Plus there's a chance that two game-states might allow an ending, and that would get tricky. I hope this is straightforward: we eliminate a game-state from available-fleestate-list if it no longer can allow a unique ending, because we don't want to waste the player's time if possible.]

table of unachievements
achievement	achieved	state-list-delete	details
"threefold"	false	--	"repeating a position three times"
"pinned pawn"	false	--	"letting the rook pin your pawn"
"captured pawn"	false	--	"letting the rook take your pawn for free"
"traded pawn"	false	--	"letting the rook sacrifice itself for your pawn"
"alternate paths"	false	--	"realizing two moves from b4 are okay"
"skewered to a draw"	false	--	"letting the rook check you on c1 to sacrifice itself for the pawn"
"skewered to death (pawn)"	false	--	"letting the rook check you on a1 and take the pawn without being captured"
"pointless bathos and loss"	false	--	"letting the black rook take the white Queen"
"stalemate, mate"	false	--	"allowing stalemate when the white Queen takes the black rook"
"forked to death"	false	--	"managing to get forked, along with your pawn, by the enemy rook"
"plain old checkmate"	false	--	"finding the main line solution"
"castle carnage"	false	--	"managing to trade off rooks"
"all for naught"	false	--	"managing to give your rook away"
"staler than stalemate, mate"	false	--	"drawn ending with equal material"
"skewered to death (rook)"	false	disable-skewer-allow rule	"letting the black rook go to b2 and skewer your b8-rook"
"spite check (winning)"	false	disable-useless-sacrificing rule	"checking the enemy king with their rook prone"
"spite check (drawing)"	false	--	"checking the enemy king instead of checkmating"
"running up the score"	false	disable-sucker-sacrificing rule	"taking the opposing rook when mate was available"
"rook on rook violence"	false	disable-useless-sacrificing rule	"taking the opposing rook with the rook when they blocked immediate checkmate"
"giving futile hope"	false	disable-useless-sacrificing rule	"taking the opposing rook with the king when they blocked immediate checkmate"
"dragging it out"	false	--	"taking extra turns to win, considering repetition"
"dragging it out all the way"	false	--	"taking the maximum turns to win, considering repetition"

this is the disable-useless-sacrificing rule:
	if achieved-yet of "giving futile hope" and achieved-yet of "rook on rook violence" and achieved-yet of "spite check (winning)", remove useless-sacrificing from available-fleestate-list;

this is the disable-sucker-sacrificing rule:
	remove sucker-sacrificing from available-fleestate-list;

this is the disable-skewer-allow rule:
	remove skewer-allow from available-fleestate-list;

to decide which number is achieve-score:
	let temp be 0;
	repeat through table of unachievements:
		if achieved entry is true, increment temp;
	decide on temp;

to decide whether anything-unachieved:
	repeat through table of unachievements:
		if achieved entry is false, yes;
	no;

to achieve (t - text):
	if debug-state is true:
		say "DEBUG: checking for [t] achievement.";
		if black rook is not off-stage, say "DEBUG: black rook on [location of black rook].";
		if white rook is not off-stage, say "DEBUG: white rook on [if hinted-person is white rook][noun][else][location of white rook][end if].";
	repeat through table of unachievements:
		if achievement entry is not t, next;
		if achieved entry is true, continue the action;
		let X be indexed text;
		now X is "[b][achievement entry in upper case][r]";
		say "Congratulations! You just got the [b][X][r] achievement!";
		now achieved entry is true;
		if there is a state-list-delete entry:
			process the state-list-delete entry;
		unless anything-unachieved:
			end the story finally saying "You found everything!";
		continue the action;
	say "Uh oh. You were supposed to get the [t] achievement, but it wasn't in the table. This is a bug.";

to decide whether achieved-yet of (t - text):
	repeat through table of unachievements:
		if achievement entry is not t, next;
		if achieved entry is true, decide yes;
		decide no;
	say "BUG in code: [t] was not an achievement.";
	decide no;

volume post game stuff

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see [b]NOTES[r] on the initial position"	true	"notes/position"	puzzle notes rule	--
"[b]TRY[r] new ways to lose"	true	"try/lose"	try new ways to lose rule	--

this is the puzzle notes rule:
	say "The position at the start is known as the Saaverda position. Saaverda himself didn't create it. He just found a hole in the 'black to draw' puzzle from the original position, by G. E. Barbier, who saw Rc4+! after the promotion to a queen but missed the underpromotion. The Wikipedia entry has more detail on the history, but I found it to be the simplest example of a legitimate surprise to be found in a chess game, where once you see it, it's obvious. And while one may wonder what the heck the black king is doing off in the corner, a lot of the themes come up elsewhere, and anyone who says this ruins the puzzle probably nitpicks cartoons for realism, too.[paragraph break]My own experience with this was back in my junior year of high school. I beat a gentleman named Slavko Milovanovic who was rated 2000 and may or may not have been sandbagging. But he was very nice about a loss to a considerably lower-rated player, and afterwards he showed me a bunch of neat stuff. This was the neatest and most memorable. It's one of the very top puzzles I try and pass on to people who may be interested in chess but don't want to devote an insane amount of time to opening theory, and I hope you enjoyed it, too."

this is the try new ways to lose rule:
	eliminate-retry;
	fully resume the story;
	choose-flee-room;
	reset-the-board;

to eliminate-retry:
	choose row with final response rule of try new ways to lose rule in table of final question options;
	blank out the whole row;

Include (-

[ ASK_FINAL_QUESTION_R;
	print "^";
	(+ escape mode +) = false;
	while ((+ escape mode +) == false) {
		CarryOutActivity(DEALING_WITH_FINAL_QUESTION_ACT);
		DivideParagraphPoint();
	}
];

-) instead of "Ask The Final Question Rule" in "OrderOfPlay.i6t".

The escape mode is a truth state that varies.

To fully resume the story:
	resume the story;
	now escape mode is true;
	clear the screen;
	say paragraph break.
