Version 1/220705 of Regulation Size Chessboard by Andrew Schultz begins here.

"This is code for creating, well, a regulation Size chessboard. It is pulled from You Won't Get Her Back and will be used for (mystery doo-doo-doo-doo noises) a small future project."

volume properties

a room has a number called xval. a room has a number called yval.

a person can be friendly or enemy. a person is usually friendly.

definition: a person (called pe) is allied:
	if pe is enemy, no;
	if pe is the player, no;
	yes;

volume calculation stubs

to decide which number is king-dist of (rm1 - a room) and (rm2 - a room):
	let xdelta be xval of rm1 - xval of rm2;
	let ydelta be yval of rm1 - yval of rm2;
	if xdelta < 0, now xdelta is 0 - xdelta;
	if ydelta < 0, now ydelta is 0 - ydelta;
	if xdelta >= ydelta, decide on xdelta;
	decide on ydelta;

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

volume room/square description(s)

show-coords is a truth state that varies. show-coords is true.

the description of a room is usually "[if screenread is true][text-board-description].[else][grid-printout][run paragraph on][end if]";

definition: a person (called pe) is writeoutable:
	if pe is off-stage, no;
	if pe is allied, yes;
	no;

to say border:
	if show-coords is true, say "   ";
	say "+";
	repeat with Y running from 1 to 8:
		repeat with count running from 1 to column-width:
			say "-";
		say "+";

to invert-text: (- style reverse; -)

to say my-row of (num - a number):
	(- print (char) ({num} + 96); -)

to space-print (n - a number):
	let count be 0;
	while count < n:
		say " ";
		increment count;

to say row-left of (L - a number):
	space-print (L / 2);

to say row-right of (L - a number):
	space-print (L - 1) / 2;

to say grid-printout:
	say "[fixed letter spacing]";
	print-column-numbers;
	if show-coords is true, say "[line break]";
	let base-room be a8;
	repeat with Y running from 1 to 8:
		say "[border][line break]";
		if show-coords is true:
			say " [9 - Y] ";
		say "|";
		let roam-room be base-room;
		repeat with X running from 1 to 8:
			if checkerboard is true and the remainder after dividing (X + Y) by 2 is 1:
				invert-text;
			say "[row-left of column-width]";
			say "[rmocc of roam-room]";
			say "[row-right of column-width]";
			say "[roman type]";
			say "|";
			now roam-room is the room east of roam-room;
		say "[line break]";
		now base-room is the room south of base-room;
	say "[border]";
	if show-coords is true, say "[line break]";
	print-column-numbers;
	say "[variable letter spacing]";

to print-column-numbers:
	say "    ";
	if show-coords is false, continue the action;
	repeat with X running from 1 to 8:
		say "[row-left of column-width]";
		say "[my-row of X]";
		say "[row-right of column-width]";
		say " ";

to say rmocc of (rm - a room):
	if number of people in rm is 0:
		say "[if in-header is true].[no line break][else] [end if]";
		continue the action;
	say "[shorthand of random person in rm]";

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

book header based stuff

board-in-status is a truth state that varies.

in-header is a truth state that varies.

to say column-headers:
	if double-size-board:
		say "a b c d e f g h";
	else:
		say "abcdefgh";

to say plus: say "[if blank-boundaries] [else]+[end if]"

to say minus: say "[if blank-boundaries] [else]-[end if]"

to say pipe: say "[if blank-boundaries] [else]|[end if]"

to say column-boundary:
	if double-size-board:
		if board-boundary:
			say "[plus][minus][plus][minus][plus][minus][plus][minus][plus][minus][plus][minus][plus][minus][plus][minus][plus]";
		else:
			say "[minus][plus][minus][plus][minus][plus][minus][plus][minus][plus][minus][plus][minus][plus][minus]";
	else:
		say "[minus][minus][minus][minus][minus][minus][minus][minus]"

to decide whether blank-boundaries:
	if (board-header-status - 1) bit-and 4 is 4, yes;
	no;

to decide whether double-size-board:
	if (board-header-status - 1) bit-and 2 is 2, yes;
	no;

to decide whether board-boundary:
	if (board-header-status - 1) bit-and 1 is 1, yes;
	no;

row-start-room is a room that varies.

rule for constructing the status line when board-in-status is true:
	deepen the status line to (head-lines-needed of board-header-status) rows;
	now in-header is true;
	let current-row be 1;
	center "[column-headers]" at row current-row;
	if board-boundary:
		increment current-row;
		center "[column-boundary]" at row current-row;
	now row-start-room is a8;
	while row-start-room is not nothing:
		increment current-row;
		center "[occ-row of row-start-room]" at row current-row;
		if double-size-board and yval of row-start-room > 1:
			increment current-row;
			center "[column-boundary]" at row current-row;
		now row-start-room is the room south of row-start-room;
	increment current-row;
	if board-boundary:
		center "[column-boundary]" at row current-row;
		increment current-row;
	center "[column-headers]" at row current-row;
	now in-header is false;

to say occ-row of (westroom - a room):
	say "[yval of westroom]";
	if board-boundary, say "[pipe]";
	let temproom be westroom;
	while temproom is not nothing:
		say "[rmocc of temproom]";
		now temproom is the room east of temproom;
		if temproom is not nothing and double-size-board, say "[pipe]";
	if board-boundary, say "[pipe]";
	say "[yval of westroom]";

chapter setting the header

To decide what number is screenh:
	(- VM_ScreenHeight() -);

hdrblanking is an action out of world.

hdring is an action out of world applying to one number.

understand the command "hdr" as something new.

understand "hdr [number]" as hdring.

board-header-status is a number that varies. board-header-status is 0.

to say hdr-status-summary of (n - a number):
	if n < 0 or n > 8:
		say "undefined";
		continue the action;
	if n is 0:
		say "off";
		continue the action;
	let x be n - 1;
	if x bit-and 2 is 0, say "no ";
	say "external boundaries and ";
	if x bit-and 1 is 0, say "no ";
	say "internal boundaries and ";
	if x bit-and 4 is 0, say "no ";
	say "boundary whitespace"

to decide which number is head-lines-needed of (x - a number):
	let temp be 10;
	if board-boundary, increase temp by 2;
	if double-size-board, increase temp by 7;
	decide on temp;

to decide whether irrelevant-blank-boundaries:
	unless board-header-status bit-and 4 is 4, no;
	unless board-header-status bit-and 3 is 0, no;
	yes;

carry out hdring:
	if number understood < 0 or number understood > 8:
		say "[b]HDR[r] commands must be between 0 and 7. 0 is off, 1 is a board without boundaries between squares, 2 is a board without outside boundaries, and 3 has all boundaries. Add 4 to make boundaries blank.";
		the rule succeeds;
	if number understood is board-header-status:
		say "The header map is already set to [hdr-status-summary of board-header-status].";
		the rule succeeds;
	if screenh < 7 + head-lines-needed of number understood:
		say "Unfortunately, for a header with [hdr-status-summary of number understood], I'm going to require [7 + head-lines-needed of number understood] total lines in your interpreter, so you have space for [head-lines-needed of number understood] lines in the header and sufficient room for game text. So you may want to resize your interpreter and try again[if number understood > 1] and/or choose a smaller header[end if].";
		the rule succeeds;
	now board-header-status is number understood;
	say "Changing the header to [hdr-status-summary of number understood].";
	if irrelevant-blank-boundaries, say "Trivial note: you set blank boundaries on a small board, which will cause no visual difference.";
	if debug-state is true, say "[head-lines-needed of number understood] rows needed.";
	if screenread is false:
		say "Also, setting inline room descriptions to text, since text-graphics are now in the header.";
		now board-in-status is true;
		now screenread is true;
	the rule succeeds;

understand "hdr" as hdrblanking.

carry out hdrblanking:
	say "If you'd prefer to see the board in a header, you have options for how it displays. There are three binary options for a total of eight different views.";
	say "0 turns the board in the header off. You may need some binary arithmetic or trial-and-error to find which setting you prefer.";
	say "1 is the base view, with no inner or outer borders. Add 1 to get outer borders. Add 2 to get inner borders. Add 4 to make all borders into whitespace.";
	the rule succeeds;

volume dramatis personae

a person has text called shorthand.

a person has text called memory-text.

a person has a number called pointvalue.

the white king is a friendly person. the player is the white king. shorthand of white king is "K". understand "wk" and "w k" and "k" as the white king.

chapter allies

the white pawn is a friendly person in c6. shorthand of white pawn is "P". pointvalue of white pawn is 1. understand "wp" and "p" and "w p" as white pawn.

the white queen is a friendly female person. shorthand of white queen is "Q". pointvalue of white queen is 9. understand "wq" and "w q" and "q" as white queen.

the white rook is a friendly person. shorthand of white rook is "R". pointvalue of white rook is 5. understand "wr" and "w r" and "r" as white rook.

the white bishop is a friendly person. shorthand of white bishop is "B". pointvalue of white bishop is 3. understand "wb" and "w b" and "b" as white bishop.

the white knight is a friendly person. shorthand of white knight is "N". pointvalue of white knight is 3. understand "wn" and "w n" and "n" as white knight.

chapter enemies

the black king is an enemy person. shorthand of black king is "k". understand "bk" and "b k" and "k" as black king.

the black rook is an enemy person. shorthand of black rook is "r". pointvalue of black rook is 5. understand "br" and "b r" and "r" as black rook.

the black queen is an enemy female person. shorthand of black queen is "q". pointvalue of black queen is 9. understand "bq" and "b q" and "q" as black queen.

the black bishop is an enemy person. shorthand of black bishop is "b". pointvalue of black bishop is 3. understand "bb" and "b b" and "b" as black bishop.

the black knight is an enemy person. shorthand of black knight is "n". pointvalue of black knight is 3. understand "bn" and "b n" and "n" as black knight.

the black pawn is an enemy person. shorthand of black pawn is "p". pointvalue of black pawn is 1. understand "bp" and "b p" and "p" as black pawn.

volume display options

this is the screen-mode-hidden-note rule: if screenread is true, say "[i][bracket][b]NOTE:[r][i] this option should be hidden in screen-reader mode, but there is no penalty for toggling it.[close bracket][r][paragraph break];"

chapter widthing

column-width is a number that varies. column-width is 1.

widthing is an action applying to one number.

understand the command "width" as something new.

understand "width [number]" as widthing.
understand "wi [number]" as widthing.
understand "w [number]" as widthing.

carry out widthing:
	abide by the screen-mode-hidden-note rule;
	if the number understood < 1 or the number understood > 5, say "The width can only be between 1 and 5." instead;
	say "The column width is [if column-width is number understood]already[else]now[end if] [number understood][even-width-warning].";
	now column-width is the number understood;
	the rule succeeds;

to say even-width-warning:
	if the remainder after dividing the number understood by 2 is 0, say ". Note that an even width will make asymmetrical squares";

section westgoing

westgoing is an action applying to nothing.

understand "w" as westgoing.

carry out westgoing: try going west instead.

chapter bwing

checkerboard is a truth state that varies. checkerboard is true.

bwing is an action out of world.

understand the command "bw" as something new.
understand the command "wb" as something new.

understand "bw" as bwing.
understand "wb" as bwing.

carry out bwing:
	if checkerboard is true:
		try bwoffing;
	else:
		try bwoning;
	the rule succeeds;

chapter bwoffing

bwoffing is an action out of world.

understand the command "bwoff" as something new.

understand "bwoff" as bwoffing.
understand "bw off" as bwoffing.
understand "wboff" as bwoffing.
understand "wb off" as bwoffing.

carry out bwoffing:
	abide by the screen-mode-hidden-note rule;
	say "Checkerboard effects for the board are [if checkerboard is false]already[else]now[end if] off.";
	now checkerboard is false;
	the rule succeeds;

chapter bwoning

bwoning is an action out of world.

understand the command "bwon" as something new.

understand "bwon" as bwoning.
understand "bw on" as bwoning.
understand "wbon" as bwoning.
understand "wb on" as bwoning.

carry out bwoning:
	abide by the screen-mode-hidden-note rule;
	say "Checkerboard effects for the board are [if checkerboard is true]already[else]now[end if] on.";
	now checkerboard is true;
	the rule succeeds;

chapter coordsing

coordsing is an action out of world.

understand the command "coords" as something new.
understand the command "coord" as something new.
understand the command "coor" as something new.
understand the command "coo" as something new.

understand "coords" as coordsing.
understand "coord" as coordsing.
understand "coor" as coordsing.
understand "coo" as coordsing.

carry out coordsing:
	if show-coords is true:
		try coordsoffing;
	else:
		try coordsoning;
	the rule succeeds;

chapter coordsoffing

coordsoffing is an action out of world.

understand the command "coordsoff" as something new.

understand "coordsoff" as coordsoffing.
understand "coords off" as coordsoffing.
understand "coord off" as coordsoffing.
understand "coor off" as coordsoffing.
understand "coo off" as coordsoffing.

carry out coordsoffing:
	abide by the screen-mode-hidden-note rule;
	say "Board coordinates are [if show-coords is true]already[else]now[end if] off.";
	now show-coords is false;
	the rule succeeds;

chapter coordsoning

coordsoning is an action out of world.

understand the command "coordson" as something new.
understand the command "coords on" as something new.
understand the command "coord on" as something new.
understand the command "coor on" as something new.
understand the command "coo on" as something new.

understand "coordson" as coordsoning.

carry out coordsoning:
	abide by the screen-mode-hidden-note rule;
	say "Board coordinates are [if show-coords is true]already[else]now[end if] on.";
	now show-coords is true;
	the rule succeeds;

chapter moves-oning

show-all-moves is a truth state that varies.

movesoning is an action out of world.

understand the command "moves" as something new.

understand "moves on" as movesoning.
understand "moveson" as movesoning.

carry out movesoning:
	say "Showing legal moves under the position is [if show-all-moves is true]already[else]now[end if] on.";
	now show-all-moves is true;
	the rule succeeds;

chapter moves-offing

movesoffing is an action out of world.

understand "moves off" as movesoffing.
understand "movesoff" as movesoffing.

carry out movesoffing:
	say "Showing legal moves under the position is [if show-all-moves is false]already[else]now[end if] off.";
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

volume going nowhere

[ a lot of this is not really applicable to both games, but it's useful enough to here for general reference e.g. you can never reach a1 ]

to decide which number is vert-val of (p - a person):
	if p is off-stage, decide on -1;
	decide on (yval of location of P) - 1;

to decide which number is horiz-val of (p - a person):
	if p is off-stage, decide on -1;
	decide on (xval of location of P) - 1;

definition: a direction (called d) is northerly:
	if d is north or d is northeast or d is northwest, yes;
	no;

definition: a direction (called d) is easterly:
	if d is east or d is northeast or d is southeast, yes;
	no;

definition: a direction (called d) is southerly:
	if d is south or d is southwest or d is southeast, yes;
	no;

definition: a direction (called d) is westerly:
	if d is west or d is northwest or d is southwest, yes;
	no;

to say youd-fall of (d - a direction): say "You'd fall off the east side of the [one of]board[or]battlefield[or]battlefield, umm, board[or]board, umm, battlefield[at random]"

check going nowhere:
	if (noun is northeast and player is in h8) or (noun is southwest and player is in a1), say "This isn't Clue. There's no secret passage to the other side of the board. And it'd only make your situation worse." instead;
	if noun is easterly and horiz-val of player is 7, say "There's no I/9 file. [youd-fall of east]." instead;
	if noun is northerly and vert-val of player is 7, say "There's no ninth column. [youd-fall of north]." instead;
	if noun is westerly and horiz-val of player is 0, say "There's no A/0 file. [youd-fall of west]." instead;
	if noun is southerly and vert-val of player is 0, say "There's no zeroth column. [youd-fall of south]." instead;
	say "You're a monarch and all, and you're pretty powerful, but you just aren't able to move [noun]." instead;

volume examining

chapter xing

xing is an action applying to one visible thing.

understand the command "x" as something new.
understand the command "examine" as something new.

understand "x" as xing.
understand "examine" as xing.
understand "x [any person]" as xing.
understand "examine [any person]" as xing.

rule for supplying a missing noun when xing:
	now the noun is the black king;

does the player mean xing a not off-stage person: it is likely.
does the player mean xing an enemy person: it is unlikely.
does the player mean xing an enemy off-stage person: it is very unlikely.

check xing:
	if noun is off-stage:
		 say "You search your memory...";
		 say "[memory-text of noun][line break]";
		the rule succeeds;

carry out xing:
	let kd be king-dist of location of noun and location of player;
	if kd is 1:
		say "A brief glance over to [the noun]...";
	else if kd > 1:
		say "You gaze across the battlefield to [the noun]...";
	say "[description of the noun][line break]";
	the rule succeeds;

section nagging X once

x-vs-examine-note is a truth state that varies.

check xing:
	if x-vs-examine-note is false and word number 1 in the player's command is "examine":
		now x-vs-examine-note is true;
		say "[bracket][b][i]ONE-TIME NOTE: X[r][i] is shorter![close bracket][r][line break]";

volume trivial parser stuff

rule for printing a parser error when the latest parser error is the i beg your pardon error (this is the empty command to waiting rule):
	try waiting;
	the rule succeeds;

check waiting: say "Hey, yeah. It's your turn to move, so why not use all the time you want? Keep the opponent nervous." instead;

Regulation Size Chessboard ends here.

---- DOCUMENTATION ----
