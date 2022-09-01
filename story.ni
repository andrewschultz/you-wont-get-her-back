"You Won't Get Her Back" by Andrew Schultz

volume metadata

the story headline is "The end of a long, brutal war".

the story description is "An implementation of a classic chess puzzle".

the release number is 2.

release along with the "Parchment" interpreter.

release along with a website.

release along with cover art.

include Old School Verb Total Carnage by Andrew Schultz.

include Trivial Niceties by Andrew Schultz.

include Conditional Undo by Jesse McGrew.

include Undo Output Control by Erik Temple.

include Bold Final Question Rows by Andrew Schultz.

include Intro Restore Skip by Andrew Schultz.

include Regulation Size Chessboard by Andrew Schultz.

section not for release

include You Wont Get Her Back Beta Testing by Andrew Schultz.

section not for release

include You Wont Get Her Back Tests by Andrew Schultz.

volume game state variables and procedural rules

move-log is a list of numbers variable.

repeat-yourmove-whine is a truth state that varies. [ Have you repeated moves this go round? ]

repeat-whines is a number that varies. [ How many repeated positions have you achieved? ]

ever-won is a truth state that varies. [ Did you ever win the main game? I could use "if achieved-yet of plain-old" but that feels less readable ]

alt-b3 is a truth state that varies.

alt-c3 is a truth state that varies. [ These two truth states track whether you saw both possible still-winning moves after Rd4+. ]

piece-to-promote is a thing that varies. piece-to-promote is usually the white queen.

chapter game states

game-state is a kind of value. game-states are the-beginning, need-kb3, rook-forks-kq and rook-doomed.

current-game-state is a game-state that varies.

chapter square states

fleestate is a kind of value. the fleestates are unreachable, a-guarding, a-allowing, skewer-allow, sucker-sacrificing, useless-sacrificing, spite-checking.

available-fleestate-list is a list of fleestates variable.

current-fleestate is a fleestate that varies.

fleestate-index is a number that varies;

rook-flee-room is a room that varies.

when play begins (this is the sort fleestates randomly rule):
	init-fleestate-list;
	sort available-fleestate-list in random order;
	choose-flee-room;
	process the check-skip-intro rule;
	if the rule succeeded, continue the action;
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

when play begins (this is the slightly custom screenread rule):
	now use-custom-screenread is true;
	say "[this-game] renders a chessboard in text maps for room descriptions. This will play very poorly with screen readers. In addition, you may prefer a text description to a chessboard as a matter of taste. Do you wish to activate text/screenreader mode?";
	if debug-state is false, ask-screenread;

to init-fleestate-list:
	now available-fleestate-list is { a-guarding }; [ all other flee states give a special odd ending. This stub used to be bigger, but I'm keeping it in the unlikely case I need to change anything, and for general clarity. ]

to choose-flee-room:
	if fleestate-index > number of entries in available-fleestate-list or fleestate-index is 0:
		now fleestate-index is 1;
		now current-fleestate is entry 1 of available-fleestate-list;
		now rook-flee-room is a random currently-fleeable room;
		continue the action;
	let old-fleestate be current-fleestate;
	now current-fleestate is entry fleestate-index in available-fleestate-list;
	if current-fleestate is old-fleestate and number of entries in available-fleestate-list > 1:
		increment fleestate-index;
		if fleestate-index > number of entries in available-fleestate-list:
			now fleestate-index is 1;
		now current-fleestate is entry fleestate-index of available-fleestate-list;
	now rook-flee-room is a random currently-fleeable room;
	if ever-won is true:
		say "[one of]Since you're playing past the initial win, you will get a hint where the enemy rook will flee to. In this case it is [rook-flee-room]. Some of the bad endings can only be found when a rook to a certain square[or]The enemy rook will flee to [rook-flee-room] this time[stopping].";
	if debug-state is true:
		d "New flee room is [rook-flee-room] with state [current-fleestate].";
		d "Set of states = [available-fleestate-list]. Current index = [fleestate-index].";

definition: a room (called rm) is currently-fleeable:
	if rookstate of rm is current-fleestate, yes;
	no;

a room has a fleestate called rookstate. the rookstate of a room is usually unreachable.

after looking for the first time:
	say "[i][bracket][b]NOTE[r][i]: if you want a refresher of chess rules, [b]CH[r][i] or [b]CHESS[r][i] will show you all possible moves. Alternatively, [b]MOVES ON/OFF[r][i] will toggle whether you see all legal moves along with the board. [verb-say][i] gives an overview of verbs, and [b]ABOUT[r][i] and [b]CREDITS[r][i] both give general information about [b][this-game][i].[close bracket][r][line break]";
	continue the action;

chapter options

option-persist-warn is a truth state that varies.

chapter rules

procedural rule: ignore the print final score rule.

chapter tester stuff that needs to be listed globally

undo-allow is a truth state that varies.

undo-explain-shown is a truth state that varies.

chapter you

description of player is "Dusty and sweaty. It's been a long war, and it has to be over soon. You just wish you could've saved more of your troops."

chapter sorting rooms into fleeability

[ there are 13 squares the black rook can move to once it's pretty obvious you've figured what to do. They can cause different bad endings if you mess up. ]

rookstate of a5 is a-guarding. rookstate of a6 is a-guarding. rookstate of a7 is a-guarding.

rookstate of d4 is a-allowing. rookstate of e4 is a-allowing. rookstate of f4 is a-allowing. rookstate of g4 is a-allowing.  rookstate of h4 is a-allowing.

rookstate of b4 is spite-checking. rookstate of a3 is spite-checking.

rookstate of a8 is sucker-sacrificing.

rookstate of c4 is useless-sacrificing.

rookstate of a2 is skewer-allow.

volume room description

to say text-board-description: [this varies from game to game]
	let my-piece be a random writeoutable person;
	say "You're currently at [location of player]. Your ally, [the my-piece], is at [location of my-piece].";
	say "[line break]The enemy king is still skulking at a1, watching the carnage from afar. The enemy rook is at [location of black rook]";

volume commands

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
	now black-move is false;
	add board-state to my-move-log;
	move black rook to a4;
	now black-move is true;
	add board-state to my-move-log;
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
		ital-say "this default will persist if the puzzle is restarted, though you can always change it whenever you please.";
		now option-persist-warn is true;

to note-promote-change (pi - a person):
	say "You [if piece-to-promote is pi]already plan to promote [the pi][else]decide to promote to [the pi], not [the piece-to-promote][end if], if your pawn ever makes it.";
	note-promote-change-q pi;

to note-promote-change-q (pi - a person):
	if pi is piece-to-promote, continue the action;
	now piece-to-promote is pi;

chapter queening

queening is an action out of world.

understand the command "queen" as something new.
understand the command "q" as something new.

understand "queen" as queening.
understand "q" as queening.

q-warn is a truth state that varies.

carry out queening:
	if q-warn is false and word number 1 in the player's command is "q":
		say "(changing promotion piece to Queen, instead of quitting, as is usual with [b]Q[r] in Z-code games--[b]QUIT[r] is needed instead)[paragraph break]";
		now q-warn is true;
	promote-check white queen;
	the rule succeeds;

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
understand the command "t" as something new.
understand "t" as thinking.
understand "a" as thinking.

understand the command "ach" as something new.
understand "ach" as thinking.
understand the command "achieve" as something new.
understand "achieve" as thinking.
understand the command "achievement" as something new.
understand "achievement" as thinking.

the block thinking rule is not listed in any rulebook.

check thinking:
	if achieve-score is 0, say "You haven't found any achievements, but don't worry. You'll get one soon. [this-game] tracks both wins and losses. You'll find creative losses as you go." instead;
	say "Here are the accomplishments so far from your various playthroughs. Note that they are listed roughly in the time it takes to find them, which will hopefully be a clue if you want to plow through everything.";
	let achievement-count be 0;
	let generic-achievement-got be 0;
	let generic-achievement-missed be 0;
	let special-achievement-got be 0;
	let special-achievement-missed be 0;
	let this-achievement-got be 0;
	let this-achievement-missed be 0;
	repeat through table of unachievements:
		if there is a required-state entry:
			if required-state entry is current-fleestate:
				if achieved entry is true:
					increment this-achievement-got;
				else:
					increment this-achievement-missed;
			if achieved entry is true:
				increment special-achievement-got;
			else:
				increment special-achievement-missed;
		else:
			if achieved entry is true:
				increment generic-achievement-got;
			else:
				increment generic-achievement-missed;
	repeat through table of unachievements:
		increment achievement-count;
		if achievement-count > last-got:
			let dif be number of rows in table of unachievements - last-got;
			say "Instead of writing lots of lines with dashes, I'll mention there are [dif] achievements below the trickiest you've found.";
			break;
		if achieved entry is true:
			say "[b][achievement entry in upper case][r]: [details entry][line break]";
		else:
			say "[if screenread is true][b]UNDISCOVERED[r][else]--[end if][line break]";
	the rule succeeds;

to decide which number is last-got:
	let count be 0;
	let return-val be 0;
	repeat through table of unachievements:
		increment count;
		if achieved entry is true, now return-val is count;
	decide on return-val;

chapter allies' details

the player is in b6.

description of white pawn is "The white pawn looks back at you frantically, not believing they can make it. Their friends never got close. Apparently, pawns are the soul of war, but after much instruction, you still have no real clue how and when to move them.". memory-text of white pawn is "A brave soul. They knew what they had to do to succeed, and they did it, knowing they'd be disappeared after. It's called 'promotion' but mystics believe it may be worse than a standard battlefield death.".

description of white queen is "Your wife looks upset. Not with you, but with how things turned out.". memory-text of white queen is "[one of]You tried too hard to keep your wife on the board, but your opponent kept trying to get rid of them both, and each time you declined, your army's position got worse. Sleazy cunning. Eventually you gave in[one of]. You have a lot more thoughts about her, of course[or][stopping][or]People said of course you were the divine ruler and all, but you tried to explain she moved around a lot better than you did, and so forth. Some took it as a sign of weakness[or]Some of your shadier counselors mentioned you should dump her for someone younger or with more land promised as a dowry. But you couldn't and can't[or]Said shady counselors also suggested that if she got killed in the war, that'd be a good thing in its own way, for the kingdom. You fired them[cycling]."

description of white rook is "Your ally avoids eye contact but seems to be repressing a smile.". memory-text of white rook is "It must be frustrating to be a rook. All that sitting around, and too often when you're called into action, it's just for a pileup on the open file. Your one rook understood when you had to sacrifice them for a mere bishop. Or was it a knight? It was so long ago."

description of white bishop is "Unhappy. He knows he's in hot water.". memory-text of white bishop is "Your two bishops -- ugh. They squabbled on petty theological trivia, but they were so similar. They never got the chance to control the battlefield together. One got to kill his opposing number, and the other had the satisfaction of knowing the enemy who killed him would die shortly after."

description of white knight is "Unhappy. He knows he's in hot water.". memory-text of white knight is "Your one knight understood when they had to move to capture their counterpart who had invaded. They only got to move twice. The other was pleased to give himself up for a couple pawns so you could get here. Their sacrifices can't be in vain. They just can't."

chapter enemies' details

the black king is in a1. description of black king is "Physically and mentally repulsive. To you, anyway. He seems to shake his head and shrug his shoulders as if to ask, why are you bothering?". memory-text is "You shouldn't see this. The black king should always be on the board."

the black rook is in d5. description of black rook is "The black rook seems to be staring you down." [ memory-text is not needed since a run ends once the black rook is captured ]

section enemies that are completely off-stage

memory-text of black queen is "You never liked her. During diplomatic meetings, she and her husband tried to show they liked each other more than you did. But you remember the yelling from the royal visitors['] suite at night."

memory-text of black bishop is "Your bishops squabbled about theological arcana, but the other bishops--man, they sat around planning how to guilt-trip the peasants into doing more than just tithing. You're not sorry they died early, though them dying along with your own bishops was only an 'even trade' in the warfare sense."

memory-text of black knight is "The two black knights ... well, they were bold. They deserved better than to serve in your enemy's army, you think."

memory-text of black pawn is "You felt almost as bad taking down enemy pawns as you did letting your own pawns die. Then you felt bad about not valuing all human lives equally."

chapter status line

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
	reset-board-quietly;

to reset-board-quietly:
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
	now repeats-this-time is 0;
	if black-move is false and number of entries in my-move-log > 0: [for 2 achievements in one turn]
		move the player to b6;
	else:
		move player to b6, without printing a room description;
	now black-move is false;
	now my-move-log is {};

volume going

the friendly piece obstruction rule is listed first in the check going rules.
the final semi-random rook move rule is listed after the friendly piece obstruction rule in the check going rules.
the king shouldn't move at end rule is listed before the final semi-random rook move rule in the check going rules.
the rook catches pawn rule is listed after the final semi-random rook move rule in the check going rules.

check going (this is the friendly piece obstruction rule):
	if the room gone to is friend-occupied:
		let obstructor be random friendly person in room gone to;
		say "But [the obstructor] is already there[if obstructor is pawn]. If you meant to move the pawn, you should type [the room north of room gone to][end if]." instead;
	if the room gone to is adjacent to location of black king, say "Unfortunately, going to [room gone to] would let the enemy king sock you from [location of black king]. He's a sneaky coward." instead;
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
	now black-move is false;
	add board-state to my-move-log;
	now black-move is true;
	if rookstate of rook-flee-room is spite-checking:
		say "There's a big argument. The black king insists the black rook give himself up for you. 'You will sacrifice yourself for your king and country, and you will sacrifice yourself for your king and country right NOW, do you hear?'[paragraph break]You sit back and enjoy the animosity, until you worry it might tip off the 50-move rule. Then you realize the 50-move rule doesn't progress without, you know, your making a move. So that's all good. The rook flings itself to [rook-flee-room].";
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
	say "BAM! Take that, rook! [if location of black rook is a3]The rest is straightforward. Your enemy moves to b1, you move to b3, and they move to a1, and your rook delivers the kill on c1[else]The rest is a bit tricky, since your king was decoyed to b4. But you've planned ahead: the enemy king to a2? Rook to c2. Enemy king to b1? King to b3. The rook on the c-file cuts your enemy off[end if]. Victory!";
	check-initial-win;
	the rule succeeds;

got-alt-paths is a truth state that varies.

to decide whether seen-alts:
	say "[got-alt-paths] [alt-c3] [alt-b3] [the room noun of location of player].";
	if got-alt-paths is true, no;
	if alt-c3 is false, no;
	if alt-b3 is false, no;
	if the room noun of location of player is c2, yes;
	yes;

to check-for-alts:
	unless location of black rook is d4 and location of player is b4, continue the action;
	if noun is southeast, now alt-c3 is true;
	if noun is south, now alt-b3 is true;
	if seen-alts:
		say "Why, yes ... it seems like there are two different ways to c2. This may not be terribly useful, but it's good to know.";
		achieve "alternate paths";
		now got-alt-paths is true;

check going (this is the rook catches pawn rule): [the logic here is: you move to the a-file, it's a draw. You move to the c-file too soon, it's a draw. There are side test cases, of course. ]
	if room gone to is nowhere, continue the action;
	if debug-state is true, say "DEBUG: [room gone from] to [room gone to], with rook at [location of black rook].";
	if got-alt-paths is false, check-for-alts;
	if location of white pawn is c6:
		say "The black rook slides over to c5, keeping an eye on the pawn, which can easily be taken before it is promoted. Fortuntaely, the enemy king can't help the rook corral the pawn for free[if xval of room gone to is 1], even though you'll need to make a move to guard your pawn[else if xval of room gone to is 3], even though you'll need to get back out of your pawn's way[end if].[paragraph break]Of course, that doesn't stop him taunting you.[paragraph break]'Should I let that silly pawn promote, then kill your wife just as she comes back?'";
		achieve "traded pawn";
		reset-the-board instead;
	if xval of room gone to is 2 and location of player is c3 and location of black rook is d1:
		say "The enemy king begins laughing. 'Of course! Bring your queen back for one final moment together! Except, of course, you aren't. Not even close.' As he orders his rook to d1, you see what he means. You're too far away to guard your Queen, if you bring her back, as the rook will check on c1.";
		achieve "captured pawn";
		reset-the-board instead;
	if room gone to is c1:
		if location of black rook is not d4:
			say "Oh no! There's a bug here. The black rook should be at d4. Sorry--I'm resetting.";
			reset-the-board instead;
		say "You freeze up. It's almost too good to be true, getting your wife back. And then, something too awful to be true: the black rook slides over to c4, forking you and your pawn on [location of white pawn]. The rook and king endgame ahead will be painful.";
		achieve "forked to death";
		reset-the-board instead;
	let y-to be yval of room gone to;
	let x-to be xval of room gone to;
	if y-to is 7:
		say "The rook chuckles as it backpedals to d7.[paragraph break]From a distance, the opposing king laughs. 'What made you think you could win? The only bummer for me is, my rook will have to kill that worthless pawn next move. I won't get to make you watch your wife die twice in the same war.'";
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
					if debug-state is true, say "[n] is found in [my-move-log].";
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
	increase temp by 10 * xval of location of black rook;
	increase temp by 1 * yval of location of black rook;
	if white rook is not off-stage, now temp is -1 * temp; [ this is for the rare but possible case when the rook goes to d4 fleeing after promotion ]
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
	if current action is pawning, decide on location of player;
	decide on the room noun of location of player;

book parser errors

the empty command to waiting rule is listed first in the for printing a parser error rulebook.

the general info error rule is listed after the empty command to waiting rule in the for printing a parser error rulebook.

descriptive-warn is a truth state that varies.

rule for printing a parser error (this is the general info error rule):
	say "Sorry, I couldn't parse that. Commands never need to be more than three words long, and there are only limited squares per move. In this case, you can ";
	process the print-legal-moves rule;
	say "Note most of the time you can drop a piece's first letter if only one piece can move to a square, and commands are case-insensitive.[paragraph break]Also, a more comprehensive list of commands is at [verb-say].";
	if descriptive-warn is false:
		say "[line break]Finally, the parser does not recognize descriptive notation. If you don't know what this means, don't worry. You're probably better off not knowing. But for chess players who wish to do so, sorry. I couldn't find any way to distinguish King to Bishop Seven from King to B7. Which was a convenient excuse to avoid an interesting coding puzzle.";
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

definition: a room (called rm) is king-available:
	if rm is location of white pawn, no;
	if rm is black-rook-guarded, no;
	if rm is king-guarded, no;
	if rm is adjacent to location of player, yes;
	no;

book miscellaneous descriptive notation

chapter rxring

rxring is an action out of world.

understand the command "rxr" as something new.

understand "rxr" as rxring.

carry out rxring:
	if white rook is off-stage, say "You don't have a rook on the board!" instead;
	now hinted-person is white rook;
	try squaregoing location of black rook;
	the rule succeeds;

chapter rxring

kxring is an action out of world.

understand the command "kxr" as something new.

understand "kxr" as kxring.

carry out kxring:
	if location of black rook is not adjacent to location of player, say "The black rook isn't close enough to take!" instead;
	if location of black rook is adjacent to location of black king, say "But the black king is guarding that square!" instead;
	go-to-square location of black rook instead;

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
	if debug-state is true and repeats-this-time > 0:
		say "DEBUG: [repeats-this-time] repeats: [my-move-log].";
	if repeats-this-time >= 5:
		say "You were feeling a bit sadstic, there. The enemy king meant to cause maximum pain, and now you're causing it back, dragging things out all the way. Serves him right.";
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

pawn-is-assumed is a truth state that varies.

pawn-was-typed is a truth state that varies.

this is the implicit pawn movement rule:
	if hinted-person is black king and the room north of location of white pawn is the noun:
		if pawn-is-assumed is false and noun is adjacent to location of player:
			say "(moving the pawn, as is conventional with chess notation when no piece is given)[line break]";
			now pawn-is-assumed is true;
		try pawning;
		the rule succeeds;
	if hinted-person is white pawn and the room north of location of white pawn is the noun:
		if pawn-was-typed is false:
			say "(the p at the command's start is implicit, so you don't need it)[line break]";
			now pawn-was-typed is true;
		try pawning;
		the rule succeeds;

this is the implicit king movement rule:
	if hinted-person is black king and noun is adjacent to location of the player, now hinted-person is the player;
	if hinted-person is the player:
		if the noun is adjacent to the location of the player:
			go-to-square noun;
		else:
			say "You can't travel from [location of player] to [noun] in one move! It would take [king-dist of location of player and noun] moves.";
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
			say "But what is the right way, then? You did everything the best you could, you think. Maybe you're missing a hidden detail.";
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
			check-initial-win;
			the rule succeeds;
		abide by the white-rook-coward rule;
		abide by the bungled-it-late rule;
		the rule succeeds;
	if hinted-person is white rook:
		abide by the bungled-it-late rule;
	if location of player is noun, say "You're already on [noun]." instead;
	d "Couldn't find any way to move [hinted-person] to [noun].";
	say "You don't seem to be able to move anything to [noun].";

to check-initial-win:
	if achieved-yet of "plain old checkmate":
		say "A painful trip through memory lane. No, there was nothing you could have done. You had that clever idea, and it just wasn't enough.";
	else:
		say "And so it comes to pass: the enemy king, safe from the main action for so long, is trapped. He thought he was safe or, if you got close, he could get out of the corner quickly enough. Even being one square away from the corner would've been good enough! Well, he deserved his fate. You can't remember how or why he got there. You have your revenge, which is something, even if you will have to do without your queen.[paragraph break]It's been a long fight. You don't even remember why it started. But with your rook beside you, you will restore the kingdom, slowly but surely.";
	achieve "plain old checkmate";
	check-drag-out;
	if ever-won is false:
		now ever-won is true;
		say "You figured the main solution, but if you want, you can [b]TRY[r] to find other ways to lose. I hope they are amusing. There are a few more squares the enemy rook may flee to now, making for more endings.";
		flee-add sucker-sacrificing;
		flee-add useless-sacrificing;
		flee-add spite-checking;
		flee-add a-allowing;
		flee-add spite-checking;
		remove a-guarding from available-fleestate-list;
		end the story finally saying "Personal Loss, Victory in Battle";
		the rule succeeds;
	else:
		choose-flee-room;
		reset-the-board;

ordered is a truth state that varies.

to flee-add (fl - a fleestate):
	if ordered is false:
		let RN be a random number between 1 and number of entries in available-fleestate-list;
		add fl at entry RN in available-fleestate-list;
	else:
		add fl to available-fleestate-list;

to go-to-square (rm - a room):
	let x be the best route from location of player to rm;
	try going x;

volume meta verbs

the block saying yes rule is not listed in any rulebook.
the block saying no rule is not listed in any rulebook.

check saying yes: say "Yes! You believe you will find a way to win the war." instead;

check saying no: say "No. No. No. You can't let your enemy king win or even force you into a stalemate!" instead;

chapter abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "[this-game] is my third text adventure based on chess. The first is [i]Fivebyfivia Delenda Est[r], for ParserComp 2021, and the second is [i]Fourbyfourian Quarryin['][r], for IFComp 2021. That seemed about all I could do, where you placed pieces instead of making moves.";
	say "[line break]But then after some discussion on the intfiction boards about chess and text adventures, I was alerted to Magnus Olsson's [i]Zugzwang[r]. It was part of a text-adventure April Fools['] joke, but it was well-constructed and explored different possible moves.";
	say "[line break]I'd already done the canonical three pawns vs. three pawns puzzle a long time ago as a sort of experiment, but I remembered one puzzle that would fit well. I didn't want too many pieces. And, well, I remembered one. I hope it's fun for chessplayers and nonplayers alike.";
	the rule succeeds;

chapter chessing

chessing is an action out of world.

understand the command "chess" as something new.
understand the command "ch" as something new.

understand "ch" as chessing.
understand "chess" as chessing.

carry out chessing:
	say "The pawn, rook and king are the main pieces you'll be concerned with here. The board is an 8x8 grid, with a1 in the bottom left and h8 in the upper right.";
	say "[line break]A pawn moves forward and captures diagonally. For white, that means moving c3 to c4. For black, it would mean c5 to c4. Capturing would be c3 to b4 or d4 for white, c5 to b4 or d4 for black. In addition, when a pawn gets to c8, it must become one of the pieces below, though usually it becomes a queen, the most powerful one.";
	say "[line break]A knight moves in an L-shape but not off the board. So, from b2, it could go to a4, c4, d3 and d1. Unlike other pieces, it can jump over other pieces.";
	say "[line break]A bishop moves diagonally but not off the board. So, from b2, it could go to a3, c1, a1, c3, d4, e5, f6, g7, and h8.";
	say "[line break]A rook moves moves vertically or horizontally. So, from b2, it could go to a2, c2, d2, e2, f2, g2, h2, b1, b3, b4, b5, b6, b7, or b8.";
	say "[line break]A queen can move either diagonally, vertically or horizontally.";
	say "[line break]A king can move one square vertically, diagonally or horizontally, but it cannot move where it would be attacked.";
	the rule succeeds;

chapter creditsing

creditsing is an action out of world.

understand the command "credits" as something new.

understand "credits" as creditsing.

carry out creditsing:
	say "Thanks to Adam Sommerfield for bringing ParserComp back in 2021. Thanks to Christopher Merriner and fos for administrating it in 2022. It's been great to have a low-stress comp where I was even able to update cover art midway through.";
	say "[line break]As for help with the specific game? Enough people helped, I feel bad bumping some people to the next paragraph. But ParserComp 2022 brought a first for me in any comp: two people found useful in-comp bugs and reported them to GitHub. Eddieriofer came through early with a raft of interesting ones. Then near the end, Ben Kirwin found some while testing his Folly handwriting-to-text interpreter: https://github.com/bkirwi/folly. While it's always humbling to see what I missed, both technically and with big-picture planning, the work and help and support is greatly appreciated. I like the model of being able to report and receive typos and provide a quick turnaround.";
	say "[line break]Thanks to Jade, Mike Russo, and John Zeigler for testing. They inspired me to write some needed features, and if I'd been a bit less lazy, I'd have gotten more in thanks to their observations. Or I'd have gotten more test cycles, but then I maybe wouldn't be able to say ...";
	say "[line break]Thanks to Wade Clarke and Olaf Nowacki for super-quick bug reports (within 24 hours of ParserComp 2022 starting!) of things that should've been obvious in programmer testing, especially if I'd implemented some features at the start of the cycle.";
	say "[line break]More generally, thanks to everyone who showed me cool puzzles over the years (logic or chess or math but, of course, this one! The person who showed me it has passed on.) Thanks also to those who listened to me as I showed a neat game or puzzle to them, whether or not chess was Their Thing, as well as all the people who helped renew interest in chess during the pandemic.";
	say "[line break]Thanks to you for playing, and to the community for an unexpected number of helpful reviews and comments.";
	the rule succeeds;

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

chapter metaing

metaing is an action out of world.

understand the command "meta" as something new.

understand "meta" as metaing.

carry out metaing:
	say "[b]ABOUT[r] gives general information about [this-game].";
	say "[b]CREDITS[r] shows the credits.";
	say "[b]META[r] is, well, this, and [b]OPTS[r] shows possible options. [b]VERBS[r] shows verbs.";
	say "[b]THINK[r]/[b]ACHIEVEMENTS[r]/ACH[r]/[b]A[r] shows achievements.";
	say "[line break]You should be able to use abbreviations for most or all of these meta-commands, but the full list is too numerous.";
	the rule succeeds;

chapter opting

opting is an action out of world.

understand the command "options" as something new.
understand the command "option" as something new.
understand the command "opts" as something new.
understand the command "opt" as something new.

understand "options" as opting.
understand "option" as opting.
understand "opts" as opting.
understand "opt" as opting.

carry out opting:
	say "You can toggle screen reader mode with [b]SCR[r]. In screen reader mode, [this-game] describes which pieces are where.";
	if screenread is true, say "[line break]There are no other options in screenreading mode. The ones that exist are for adjusting text maps." instead;
	say "[line break]You can toggle coordinates with [b]COO[r]/[b]COOR[r]/[b]COORD[r]/[b]COORDS[r] or set them specifically with [b]COO ON[r] or [b]COO OFF[r], etc.";
	say "[line break]You can also change the board square width with, say, [b]W 3[r] or [b]WIDTH 4[r]. Valid values are 1-5.";
	say "[line break]You can also toggle the inverse 'checkerboard' effect with [b]WB[r] or [b]WB ON[r] or [b]WB OFF[r].";
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
	say "[line break]You can also say [b]N[r] to set (or re-set) the default piece to promote to, say, the knight. In this case, although [b]K[r] is usually the king in algebraic notation, [b]K[r] is referred to as the knight, since you can't have two kings on the board.";
	say "[line break][b]X[r] or [b]EXAMINE[r] gives your feelings about a certain piece in addition to a physical description. It can be used on pieces not on the board yet.";
	say "[line break]After typing meta-commands ([b]META[r] lists these)[if screenread is false] or toggling options (you can list them with [b]OPT[r],)[else],[end if] typing [b]L[r] or [b]LOOK[r] lets you see the board again.";
	say "[line break][if screenread is false]You can see options for board display with [b]OPT[r][else]With screen reader mode on, many text-map options are disabled[end if].";
	say "[line break]All command parsing is case-insensitive, though standard chess notation capitalizes the piece name. This is just so you have one less thing to worry about.";
	say "[line break]Finally, there is no [b]UNDO[r] or takebacks, because we want to mirror an actual chess scenario here. But don't worry. A successful run shouldn't take too long, so you should be able to retrace your steps easily enough.";
	the rule succeeds;

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say " You think back to how you totally skunked the enemy king when one of your pawns ninja'ed another with that new-fangled [i]en passant[r] move you'd drilled your troops on. Oh, the gloating that ensued when you assured him it was really only fair and sensible, all things considered![paragraph break]Of course, later in the battle, he had a chance to do so, too. But, sneak that you were, you made sure it was unfavorable. The art of war isn't just about having superior forces!";
	the rule succeeds;

volume unachievements

[we could make state-list-delete a specific-state and then go through the table, looking to see if any of the other specific state was still there, but this feels like it might be too-cute code. Plus there's a chance that two game-states might allow an ending, and that would get tricky. I hope this is straightforward: we eliminate a game-state from available-fleestate-list if it no longer can allow a unique ending, because we don't want to waste the player's time if possible.]

table of unachievements
achievement	achieved	required-state	state-list-delete	details
"threefold"	false	--	--	"repeating a position three times"
"pinned pawn"	false	--	--	"letting the rook pin your pawn"
"captured pawn"	false	--	--	"letting the rook take your pawn for free"
"traded pawn"	false	--	--	"letting the rook sacrifice itself for your pawn"
"alternate paths"	false	--	--	"realizing two moves from b4 are okay"
"skewered to a draw"	false	--	--	"letting the rook check you on c1 to sacrifice itself for the pawn"
"skewered to death (pawn)"	false	--	--	"letting the rook check you on a1 and take the pawn without being captured"
"pointless bathos and loss"	false	--	--	"letting the black rook take the white Queen"
"stalemate, mate"	false	--	--	"allowing stalemate when the white Queen takes the black rook"
"forked to death"	false	--	--	"managing to get forked, along with your pawn, by the enemy rook"
"plain old checkmate"	false	--	--	"finding the main line solution"
"castle carnage"	false	--	--	"managing to trade off rooks"
"all for naught"	false	--	--	"managing to give your rook away"
"staler than stalemate, mate"	false	--	--	"drawn ending with equal material"
"a spite check before dying"	false	spite-checking	disable-spite-checking rule	"taking the enemy rook if it spite checks"
"skewered to death (rook)"	false	skewer-allow	disable-skewer-allow rule	"letting the black rook go to b2 and skewer your b8-rook"
"running up the score"	false	sucker-sacrificing	disable-sucker-sacrificing rule	"taking the opposing rook when mate was available"
"spite check (winning)"	false	useless-sacrificing	disable-useless-sacrificing rule	"checking the enemy king with their rook prone"
"spite check (drawing)"	false	a-allowing	disable-a-allowing rule	"checking the enemy king instead of checkmating"
"rook on rook violence"	false	useless-sacrificing	disable-useless-sacrificing rule	"taking the opposing rook with the rook when they blocked immediate checkmate"
"giving futile hope"	false	useless-sacrificing	disable-useless-sacrificing rule	"taking the opposing rook with the king when they blocked immediate checkmate"
"dragging it out"	false	--	--	"taking extra turns to win, considering repetition"
"dragging it out all the way"	false	--	--	"taking the maximum turns to win, considering repetition"

this is the disable-a-allowing rule:
	remove a-allowing from available-fleestate-list;
	choose-flee-room;

this is the disable-spite-checking rule:
	remove spite-checking from available-fleestate-list;
	choose-flee-room;

this is the disable-skewer-allow rule:
	remove skewer-allow from available-fleestate-list;
	choose-flee-room;

this is the disable-sucker-sacrificing rule:
	remove sucker-sacrificing from available-fleestate-list;
	choose-flee-room;

this is the disable-useless-sacrificing rule:
	if achieved-yet of "giving futile hope" and achieved-yet of "rook on rook violence" and achieved-yet of "spite check (winning)":
		remove useless-sacrificing from available-fleestate-list;
		choose-flee-room;

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
	say "The position at the start is known as the Saavedra position. Saavedra himself didn't create it. He just found a hole in the 'black to draw' puzzle from the original position, by G. E. Barbier, who saw Rc4+! after the promotion to a queen but missed the underpromotion that would have rendered it harmless. The Wikipedia entry has more detail on the history, but I found it to be the simplest example of a legitimate surprise to be found in a chess game, where once you see it, it's obvious. And while one may wonder what the heck the black king is doing off in the corner, a lot of the themes come up elsewhere, and anyone who says this ruins the puzzle probably nitpicks cartoons for realism, too.[paragraph break]My own experience with this was back in my junior year of high school. I beat a gentleman named Slavko Milovanovic who was rated 2000 and may or may not have been sandbagging. But he was very nice about a loss to a considerably lower-rated player, and afterwards he showed me a bunch of neat stuff. This was the neatest and most memorable. It's one of the very top puzzles I try and pass on to people who may be interested in chess but don't want to devote an insane amount of time to opening theory, and I hope you enjoyed it, too."

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
