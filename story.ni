"You Don't Want Her Back" by Andrew Schultz

volume metadata

the story headline is "The end of a long, brutal war".

the story description is "An implementation of a classic chess puzzle".

the release number is 1.

release along with a website.

include Old School Verb Total Carnage by Andrew Schultz.

include Trivial Niceties by Andrew Schultz.

include You Dont Want Her Back Tests by Andrew Schultz.

include Conditional Undo by Jesse McGrew.

include Undo Output Control by Erik Temple.

volume game state variables and procedural rules

move-log is a list of numbers variable.

rook-spite-check is a truth state that varies.

kb3-next is a truth state that varies.

take-rook-next is a truth state that varies.

check-king-next is a truth state that varies.

repeat-yourmove-whine is a truth state that varies.

repeat-whines is a number that varies.

chapter options

option-persist-warn is a truth state that varies.

chapter rules

procedural rule: ignore the print final score rule.

chapter tester stuff that needs to be listed globally

undo-allow is a truth state that varies.

undo-explain-shown is a truth state that varies.

volume properties

a room has a number called xval. a room has a number called yval.

a room can be flee-at-end, check-at-end or normal. a room is usually normal.

a person can be friendly or enemy. a person is usually friendly.

volume board layout

a1 is a room. xval of a1 is 1. yval of a1 is 1.

a2 is a flee-at-end room. xval of a2 is 1. yval of a2 is 2. a2 is north of a1.

a3 is a check-at-end room. xval of a3 is 1. yval of a3 is 3. a3 is north of a2.

a4 is a room. xval of a4 is 1. yval of a4 is 4. a4 is north of a3.

a5 is a flee-at-end room. xval of a5 is 1. yval of a5 is 5. a5 is north of a4.

a6 is a flee-at-end room. xval of a6 is 1. yval of a6 is 6. a6 is north of a5.

a7 is a flee-at-end room. xval of a7 is 1. yval of a7 is 7. a7 is north of a6.

a8 is a flee-at-end room. xval of a8 is 1. yval of a8 is 8. a8 is north of a7.

b1 is a room. xval of b1 is 2. yval of b1 is 1. b1 is east of a1. b1 is southeast of a2.

b2 is a room. xval of b2 is 2. yval of b2 is 2. b2 is east of a2. b2 is north of b1. b2 is northeast of a1. b2 is southeast of a3.

b3 is a room. xval of b3 is 2. yval of b3 is 3. b3 is east of a3. b3 is north of b2. b3 is northeast of a2. b3 is southeast of a4.

b4 is a check-at-end room. xval of b4 is 2. yval of b4 is 4. b4 is east of a4. b4 is north of b3. b4 is northeast of a3. b4 is southeast of a5.

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

d4 is a flee-at-end room. xval of d4 is 4. yval of d4 is 4. d4 is east of c4. d4 is north of d3. d4 is northeast of c3. d4 is southeast of c5.

d5 is a room. xval of d5 is 4. yval of d5 is 5. d5 is east of c5. d5 is north of d4. d5 is northeast of c4. d5 is southeast of c6.

d6 is a room. xval of d6 is 4. yval of d6 is 6. d6 is east of c6. d6 is north of d5. d6 is northeast of c5. d6 is southeast of c7.

d7 is a room. xval of d7 is 4. yval of d7 is 7. d7 is east of c7. d7 is north of d6. d7 is northeast of c6. d7 is southeast of c8.

d8 is a room. xval of d8 is 4. yval of d8 is 8. d8 is east of c8. d8 is north of d7. d8 is northeast of c7.

e1 is a room. xval of e1 is 5. yval of e1 is 1. e1 is east of d1. e1 is southeast of d2.

e2 is a room. xval of e2 is 5. yval of e2 is 2. e2 is east of d2. e2 is north of e1. e2 is northeast of d1. e2 is southeast of d3.

e3 is a room. xval of e3 is 5. yval of e3 is 3. e3 is east of d3. e3 is north of e2. e3 is northeast of d2. e3 is southeast of d4.

e4 is a flee-at-end room. xval of e4 is 5. yval of e4 is 4. e4 is east of d4. e4 is north of e3. e4 is northeast of d3. e4 is southeast of d5.

e5 is a room. xval of e5 is 5. yval of e5 is 5. e5 is east of d5. e5 is north of e4. e5 is northeast of d4. e5 is southeast of d6.

e6 is a room. xval of e6 is 5. yval of e6 is 6. e6 is east of d6. e6 is north of e5. e6 is northeast of d5. e6 is southeast of d7.

e7 is a room. xval of e7 is 5. yval of e7 is 7. e7 is east of d7. e7 is north of e6. e7 is northeast of d6. e7 is southeast of d8.

e8 is a room. xval of e8 is 5. yval of e8 is 8. e8 is east of d8. e8 is north of e7. e8 is northeast of d7.

f1 is a room. xval of f1 is 6. yval of f1 is 1. f1 is east of e1. f1 is southeast of e2.

f2 is a room. xval of f2 is 6. yval of f2 is 2. f2 is east of e2. f2 is north of f1. f2 is northeast of e1. f2 is southeast of e3.

f3 is a room. xval of f3 is 6. yval of f3 is 3. f3 is east of e3. f3 is north of f2. f3 is northeast of e2. f3 is southeast of e4.

f4 is a flee-at-end room. xval of f4 is 6. yval of f4 is 4. f4 is east of e4. f4 is north of f3. f4 is northeast of e3. f4 is southeast of e5.

f5 is a room. xval of f5 is 6. yval of f5 is 5. f5 is east of e5. f5 is north of f4. f5 is northeast of e4. f5 is southeast of e6.

f6 is a room. xval of f6 is 6. yval of f6 is 6. f6 is east of e6. f6 is north of f5. f6 is northeast of e5. f6 is southeast of e7.

f7 is a room. xval of f7 is 6. yval of f7 is 7. f7 is east of e7. f7 is north of f6. f7 is northeast of e6. f7 is southeast of e8.

f8 is a room. xval of f8 is 6. yval of f8 is 8. f8 is east of e8. f8 is north of f7. f8 is northeast of e7.

g1 is a room. xval of g1 is 7. yval of g1 is 1. g1 is east of f1. g1 is southeast of f2.

g2 is a room. xval of g2 is 7. yval of g2 is 2. g2 is east of f2. g2 is north of g1. g2 is northeast of f1. g2 is southeast of f3.

g3 is a room. xval of g3 is 7. yval of g3 is 3. g3 is east of f3. g3 is north of g2. g3 is northeast of f2. g3 is southeast of f4.

g4 is a flee-at-end room. xval of g4 is 7. yval of g4 is 4. g4 is east of f4. g4 is north of g3. g4 is northeast of f3. g4 is southeast of f5.

g5 is a room. xval of g5 is 7. yval of g5 is 5. g5 is east of f5. g5 is north of g4. g5 is northeast of f4. g5 is southeast of f6.

g6 is a room. xval of g6 is 7. yval of g6 is 6. g6 is east of f6. g6 is north of g5. g6 is northeast of f5. g6 is southeast of f7.

g7 is a room. xval of g7 is 7. yval of g7 is 7. g7 is east of f7. g7 is north of g6. g7 is northeast of f6. g7 is southeast of f8.

g8 is a room. xval of g8 is 7. yval of g8 is 8. g8 is east of f8. g8 is north of g7. g8 is northeast of f7.

h1 is a room. xval of h1 is 8. yval of h1 is 1. h1 is east of g1. h1 is southeast of g2.

h2 is a room. xval of h2 is 8. yval of h2 is 2. h2 is east of g2. h2 is north of h1. h2 is northeast of g1. h2 is southeast of g3.

h3 is a room. xval of h3 is 8. yval of h3 is 3. h3 is east of g3. h3 is north of h2. h3 is northeast of g2. h3 is southeast of g4.

h4 is a flee-at-end room. xval of h4 is 8. yval of h4 is 4. h4 is east of g4. h4 is north of h3. h4 is northeast of g3. h4 is southeast of g5.

h5 is a room. xval of h5 is 8. yval of h5 is 5. h5 is east of g5. h5 is north of h4. h5 is northeast of g4. h5 is southeast of g6.

h6 is a room. xval of h6 is 8. yval of h6 is 6. h6 is east of g6. h6 is north of h5. h6 is northeast of g5. h6 is southeast of g7.

h7 is a room. xval of h7 is 8. yval of h7 is 7. h7 is east of g7. h7 is north of h6. h7 is northeast of g6. h7 is southeast of g8.

h8 is a room. xval of h8 is 8. yval of h8 is 8. h8 is east of g8. h8 is north of h7. h8 is northeast of g7.

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
	say "Triumph! The pawn makes it to the eighth rank. There is a swirl of light before [the piece-to-promote] pops up.";
	move piece-to-promote to c8;
	if location of black rook is d1:
		say "But, alas, the black rook is ready to slide in to c1 and skewer you. Once you move out of check, [the piece-to-promote] will fall. Then the king and rook will defeat you.";
		reset-the-board;
		achieve "skewered to death";
		reset-the-board instead;
		the rule succeeds;
	if piece-to-promote is white queen:
		say "The black rook sneaks to c4! You have nothing better to do than have your queen take the rook, which triggers stalemate.";
		achieve "stalemate, mate";
		reset-the-board instead;
	if piece-to-promote is white bishop or piece-to-promote is white knight:
		say "The black rook snickers as it slides over to c4. Your friend [the piece-to-promote] will be captured next move, and a very unpleasant but inevitably lost rook endgame awaits.";
		reset-the-board;
		the rule succeeds;
	now white pawn is off-stage;
	say "The black rook scoffs as you call for a rook, not your queen. 'Sheesh. If you wanted a draw, you could've repeated moves.' He shuffles over to a4.";
	now kb3-next is true;
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
	if achieve-score is 0, say "You haven't achieved any accomplishments, but don't worry. You'll get one soon. [this-game] tracks both wins and losses." instead;
	say "Here are the accomplishments so far from your various playthroughs. Note that they are listed roughly in the time it takes to find them, which will hopefully be a clue if you want to plow through everything.";
	repeat through table of unachievements:
		if achieved entry is true:
			say "[achievement entry in upper case]: [details entry][line break]";
		else:
			say "--[line break]";
	the rule succeeds;

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

definition: a room (called rm) is rook-guarded:
	if rook-see of north and rm, yes;
	if rook-see of south and rm, yes;
	if rook-see of east and rm, yes;
	if rook-see of west and rm, yes;
	no.

to decide whether rook-check:
	if location of player is rook-guarded, yes;
	no;

to decide whether rook-see of (di - a direction) and (rm - a room):
	let rm2 be the room di of location of rook;
	while rm2 is not nothing:
		if rm is rm2, yes;
		if number of people in rm2 > 0 and player is not in rm2, no;
		now rm2 is the room di of rm2;
	no;

definition: a room (called rm) is king-guarded:
	let ek be location of black king;
	repeat with D running through directions:
		if the room D of location of king is rm, yes;
	no;

volume reset the board

when play begins:
	if a random chance of 1 in 2 succeeds, now rook-spite-check is true;

to reset-the-board:
	say "[line break]Well, let's try again.";
	move black rook to d5;
	move white pawn to c6;
	move black king to a1;
	now kb3-next is false;
	now white queen is off-stage;
	now white rook is off-stage;
	now white bishop is off-stage;
	now white knight is off-stage;
	now repeat-yourmove-whine is false;
	now repeat-whines is 0;
	now take-rook-next is false;
	now check-king-next is false;
	now my-move-log is {};
	if black-move is false:
		move the player to b6;
	else:
		move player to b6, without printing a room description;

volume going

the friendly piece obstruction rule is listed first in the check going rules.
the final step fail rule is listed after the friendly piece obstruction rule in the check going rules.
the rook catches pawn rule is listed after the final step fail rule in the check going rules.

check going (this is the friendly piece obstruction rule):
	if the room gone to is friend-occupied, say "But [the random friendly person in room noun of location of player] is already there." instead;
	if the room gone to is rook-guarded, say "But the enemy rook would [if room gone from is rook-guarded]still [end if]see you there." instead;
	if the room gone to is king-guarded, say "Ugh, no. Don't want to get too close to the enemy king." instead;

check going when kb3-next is true (this is the final step fail rule):
	if room gone to is not b3:
		say "The black rook and king breathe a sigh of relief as the black king edges up to a2. The black rook can just shuffle on the a-file. It's going to be a draw.";
		reset-the-board instead;
	if rook-spite-check is true:
		let rsr be random check-at-end room;
		now kb3-next is false;
		now take-rook-next is true;
		say "There's a big argument. The black king insists the black rook give himself up for you. 'You will sacrifice yourself for your king and country, and you will sacrifice yourself for your king and country right NOW, do you hear?'[paragraph break]There's a big argument, which you sit back and enjoy, until you worry it might tip off the 50-move rule. Then you realize the 50-move rule doesn't progress without, you know, a legal move. So that's all good. The rook flings itself to [rsr].";
		move black rook to rsr;
	else:
		let rsr be random flee-at-end room;
		say "The black rook flees to [rsr] to save its own skin!";
		now kb3-next is false;
		now check-king-next is true;
		move rook to rsr;

check going when take-rook-next is true:
	if room gone to is not location of black rook:
		say "'Geez. What a coward. Didn't even want to capture me.' The rook proceeds to [if location of black rook is a3]patrol the third rank[else]patrol the first rank, checking you if you try for a sneaky checkmate on b3[end if], and after fifty moves, the war is officially declared a draw.";
		reset-the-board instead;
	say "BAM! Take that, rook! [if location of rook is a3]The rest is straightforward. Your enemy moves to b1, you move to b3, and they move to a1, and your rook delivers the kill on c1[else]The rest is a bit tricky, since your king was decoyed to b4. But you've planned ahead: the enemy king to a2? Rook to c2. Enemy king to b1? King to b3. The rook on the c-file cuts your enemy off[end if]. Victory!";
	check-drag-out;
	now rook-spite-check is whether or not rook-spite-check is false;
	reset-the-board instead;

check going (this is the rook catches pawn rule): [the logic here is: you move to the a-file, it's a draw. You move to the c-file too soon, it's a draw. There are side test cases, of course. ]
	if room gone to is nowhere, continue the action;
	if debug-state is true, say "DEBUG: [room gone from] to [room gone to], with rook at [location of black rook].";
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
			achieve "skewered to death";
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

rule for printing a parser error when the latest parser error is the i beg your pardon error:
	try waiting;
	the rule succeeds;

check waiting: say "Hey, yeah. It's your turn to move, so why not use all the time you want? Keep the opponent nervous." instead;

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
	if number of entries in my-move-log >= 23:
		achieve "dragging it out all the way";
		repeat through table of unachievements:
			if achievement entry is "dragging it out":
				if achieved entry is false:
					ital-say "I gave you the 'dragging it out' achievement, too, which was if you repeated any moves. But you found the maximum first, so nice job!";
					now achieved entry is true;
				break;
	if number of entries in my-move-log > 23:
		ital-say "somehow, you managed to make more moves than I calculated possible. If you're willing to email this log (or a transcript) to me, I'd appreciate it!";
		say "[my-move-log]";
	if repeat-whines > 0 or repeat-yourmove-whine is true:
		achieve "dragging it out";

carry out squaregoing:
	if hinted-person is white rook:
		unless xval of noun is xval of location of white rook or yval of noun is yval of location of white rook:
			say "The white rook can't move there.";
			the rule succeeds;
		if noun is c1:
			say "YOU WIN!";
			now rook-spite-check is whether or not rook-spite-check is false;
			reset-the-board instead;
			the rule succeeds;
		say "Boy! You let them off the hook.";
		reset-the-board instead;
	if hinted-person is black king and the room north of location of white pawn is the noun:
		if noun is adjacent to location of player:
			say "(moving the pawn, as is conventional with chess notation when no piece is given)[line break]";
		try pawning instead;
	if hinted-person is white pawn and the room north of location of white pawn is the noun:
		say "(the p at the command's start is implicit, so you don't need it)[line break]";
		try pawning instead;
	if hinted-person is the player and the noun is adjacent to the location of the player:
		let x be the best route from location of player to noun;
		try going x;
		the rule succeeds;
	d "Couldn't find any way to move [hinted-person] to [noun].";
	say "You don't seem to be able to move anything to [noun].";

volume meta verbs

chapter undo

rule for deciding whether to allow undo:
	if undo-allow is true:
		say "Undo allowed for testing.";
		allow undo;
	say "You have a vision of some young children screaming 'No takebacks!' and 'You touched it, you moved it!' It ends in tears. Wow! What was that about?";
	if undo-explain-shown is false:
		say "[line break]";
		ital-say "undoing is disabled, but since the whole game shouldn't take more than fourteen moves, you should be able to recreaete what you did. I hope this balances forcing you to a bit of challenging calculation with not getting too frustrated.";
		now undo-explain-shown is true;
	if game-over:
		say "You decide to relive your final moment of victory. Or find new stuff to do. Whichever.";
		allow undo;
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
	say "You can move your king with the eight compass directions. You can also specify the square you want the king to move to.";
	say "[line break]Of course, you will have to do more than move your king. If you wish to move a pawn, you can say c7. (Pawns take priority over kings.) To promote the pawn, c8. To underpromote it, c8=b or c8b will do so.";
	say "[line break]To move a promoted piece, qa8 will do so for the queen. Note that N is used to refer to a knight, as K is taken by the king.";
	say "[line break]You can also say [b]B[r] to set the default piece to promote to, say, a bishop. In this case, K is referred to as the knight, since you can't have two kings on the board.";
	say "[line break]All command parsing is case-insensitive, though standard chess notation capitalizes the piece name. This is just so you have one less thing to worry about.";
	say "[line break]Finally, there is no [b]UNDO[r] or takebacks, because we want to mirror an actual chess scenario here. But don't worry. A successful run shouldn't take too long, so you should be able to retrace your steps easily enough.";
	the rule succeeds;

volume unachievements

table of unachievements
achievement	achieved	details
"threefold"	false	"repeating a position three times"
"pinned pawn"	false	"letting the rook pin your pawn"
"captured pawn"	false	"letting the rook take your pawn for free"
"traded pawn"	false	"letting the rook sacrifice itself for your pawn"
"skewered to a draw"	false	"letting the rook check you on c1 to sacrifice itself for the pawn"
"skewered to death"	false	"letting the rook check you on a1 and take the pawn without being captured"
"stalemate, mate"	false	"getting the Queen back but walking into stalemate"
"forked to death"	false	"managing to get forked, along with your pawn, by the enemy rook"
"cowardly rook"	false	"winning with the enemy rook fleeing"
"sacrificial rook"	false	"winning with the enemy rook sacrificing itself hopelessly"
"dragging it out"	false	"taking a few turns to win, considering repetition"
"dragging it out all the way"	false	"taking the maximum turns to win, considering repetition"

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
	if debug-state is true, say "DEBUG: checking for [t] achievement.";
	repeat through table of unachievements:
		if achievement entry is not t, next;
		if achieved entry is true, continue the action;
		let X be indexed text;
		now X is "[b][achievement entry in upper case][r]";
		say "Congratulations! You just got the [X] achievement!";
		now achieved entry is true;
		unless anything-unachieved:
			end the story finally saying "You found everything!";
		continue the action;
	say "Uh oh. You were supposed to get the [t] achievement, but it wasn't in the table. This is a bug.";

volume post game stuff

table of final question options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see [b]NOTES[r] on the initial position"	true	"notes/position"	puzzle notes rule	--

this is the puzzle notes rule:
	say "The position at the start is known as the Saaverda position. Saaverda himself didn't create it. He just found a hole in the 'black to draw' puzzle from the original position, by G. E. Barbier, who saw Rc4+! after the promotion to a queen but missed the underpromotion. The Wikipedia entry has more detail on the history, but I found it to be the simplest example of a legitimate surprise to be found in a chess game, where once you see it, it's obvious. And while one may wonder what the heck the black king is doing off in the corner, a lot of the themes come up elsewhere, and anyone who says this ruins the puzzle probably nitpicks cartoons for realism, too.[paragraph break]My own experience with this was back in my junior year of high school. I beat a gentleman named Slavko Milovanovic who was rated 2000 and may or may not have been sandbagging. But he was very nice about a loss to a considerably lower-rated player, and afterwards he showed me a bunch of neat stuff. This was the neatest and most memorable. But it's one of the very top puzzles I try and pass on to people who may be interested in chess but don't want to devote an insane amount of time to opening theory."
