"Central Perk" by Mike P

Include Vorple Multimedia by Juhana Leinonen.
Include Vorple Notifications by Juhana Leinonen.

The block giving rule is not listed in the check giving it to rules. [i.e. "give rachel the knife"]
Persuasion rule for asking people to try doing something: persuasion succeeds. [i.e. player types "Rachel, drop the knife"]

Release along with the "Vorple" interpreter.

Release along with the file "Central_Perk.jpg", and the file "monica-apartment-in-friends.jpg".

Volume 0 - Intro

When play begins:
	display image "Central_Perk.jpg", centered. 

The cafe is a room. "There is a comfortable orange couch in the center of the shop, winged by two armchairs and before a large coffee table. The shop smells like friendship and new-minted money. The sign on the window says 'Central Perk.' Monica's apartment is just East of here."

The cafe is east of the Apartment. The apartment is a room. "Monica's place; just like in the show . . . hopefully.".

After going to the apartment for the first time:
	display image "monica-apartment-in-friends.jpg", centered;
	say "[bold type]    Ah! Just like you remember.".

At 4:30 PM:
	say "[bold type]Chandler:[roman type] Could Gunther be anymore pathetic?";
At 4:31 PM: say "[bold type]Ross:[roman type] I don't know, maybe look in the mirror.";
At 4:32 PM: say "[bold type]*Phoebe and Monica laugh*";
	show notification "The audience hoots and hollers!". 

Asking for help is an action out of world. Understand "help" or "hint" or "hints" as asking for help.

Carry out asking for help:
	say "Special commands include > query <person>   ; > stab <person> ;  > agree with <person>.";
	say " . . . ";
	say "Also the normal commands like > go east  ;  > look  ;  > take <thing> ; > eat <thing>.";
	say ". . . ";
	say "And informational commands, like > RELATIONS   ; > ACTIONS ; SHOWME <thing>.".

At 4:41 PM:
   show notification "You can type HELP or HINTS if you're stuck.".
   
Volume 1 - Physical Setup

Use scoring.
Score is a number which varies. score is 100.

The secret place is a room.

A weapon is a kind of thing. The knife is a weapon .The knife is in the cafe. 

Ross  and Monica are in the cafe. The tall guy from Raymond and Rachel are in the Apartment. You are in the cafe. Phoebe and Joey are in the cafe. The player is in the cafe.


The tall guy from Raymond is a person. Understand "guy" and "tall guy" as the tall guy from Raymond. 


The hammer is a weapon. The Smelly Cat is a weapon. The barista's beretta is a weapon. There are nine weapons in the secret place. 

Every turn when the remainder after dividing the turn count by 3 is 0: decrease score by 5.

Every turn when the remainder after dividing the turn count by 3 is 0:
	If a random chance of 1 in 5 succeeds:
		now opium is in the cafe;
	If a random chance of 1 in 4 succeeds:
		if a weapon (called killtool) is in the secret place:
			now the killtool is in the apartment.
			


Volume 2 - Ross and Rachel 

When play begins:
	now Ross loves Rachel;
	now Rachel loves Ross. 
	

Every turn:
	If the location of Ross is the location of Rachel:
		If Rachel loves Ross and Ross loves Rachel and Ross did not take a break from Rachel:
			now Ross kisses Rachel;
		otherwise if Rachel does not love Ross:
			say "Rachel: I've had enough of you.";
			now Rachel carries the knife.
		
Every turn: If Ross kisses Rachel and Ross had not kissed Rachel, say "*Smooch*. It's disgusting.".
Crime of passion is a scene. Crime of passion begins when Rachel carries the knife. Crime of passion ends when Ross is dead.

When crime of passion begins: say "Rachel: You're so pathetic...."; try Rachel stabbing Ross.

Test me with "wait / wait / wait / wait / wait".

PDA is a scene. PDA begins when Ross kisses Rachel. PDA ends when the location of Ross is not the location of Rachel. When PDA begins, if someone does not love the tall guy, now the tall guy is jealous. When PDA begins, show notification "The audience swoons.". 

At 4:33 PM: now Rachel is in the cafe.

When play begins, Ross farts in five minutes from now. 

At the time when Ross farts: 
	if Ross is not doped:
		say "Ross: *poot*";
	if Ross is doped:
		say "Ross: Well, that was a close one.";
	else:
		say "*poot*.";
	if the location of Ross is the location of Rachel:
		now Rachel does not love Ross;
		say "Rachel: How disgusting!".
			
Volume 3 - Stuff People can do

Book 1 - Violence

Stabbing is an action applying to one visible thing.

Check  an actor trying stabbing:
	unless the actor carries a weapon:
		say "that's not a kinfe!" instead.
		
Carry out an actor stabbing:
	say "Blood is everywhere. Is this what you wanted?";
	say "You've really hurt [the noun], there."; 
	Now the noun is dead. 
	
Understand "[something] gets it good" as stabbing. 
Understand "stab [something]" as stabbing.

Book 2 - Encouragement

Agreeing is an action applying to one visible thing.
Understand "agree with [something]" as agreeing.

Carry out agreeing:
	If the noun is Ross:
		say "Ross: Exactly! We were ON A BREAK!";
		now Ross takes a break from Rachel;
	If the noun is Gunther:
		now Ross loves Phoebe;
	If the noun is the tall guy from Raymond:
		say "[italic type]Conspiring with this freak is degrading. Now he keeps looking at me . . .";
		now the tall guy loves the player;
	If the noun is Joey:
		now Joey gets on with Rachel. 


Book 3 - Love Confessions

Propositioning is an action applying to one visible thing. Understand "query [something]" as propositioning.

Carry out an actor propositioning a thing (called other):
	say "[actor]: Do you love me, [other]?";
	If the other gets on with the actor and the other does not love the actor:
		now the other loves the actor;
		say "[other]: I do!";
		now the other is not jealous;
		now the actor kisses the other;
		say "<[actor]> *smooch* <[other]>";
	otherwise:
		if someone (called spurned) is jealous and spurned loves the other:
			try the other stabbing the actor. 

Book 4 - Misc action stuff

After taking something:
	if something is a weapon (called wep):
		say "Be careful with that.".
		


Volume 4 - States and stuff

Book 1 - Addiction

A person is either doped or sober. 

Every turn: [can't get this to accept "a user is carrying..."]
	If Ross is carrying  the opium:
		try Ross eating the opium.
		
Instead of someone (called druggie) eating opium:
	say "[druggie]: Launching now.";
	continue the action;
	now druggie is doped.
	

Every turn: If someone (called D) is doped, now D loves everyone. 
Every turn: 
	If someone (called X) loves a person (called Y) and Y loves  a person (called Z) and Z is not X:
		now X is jealous;
		say "[X]: I'm fuming.".
		
A user is a kind of person. Ross and the tall guy from Raymond are users. 
A drug is a kind of thing. A drug is edible.
Opium is a drug. The player carries opium. 		

Book 3 - Life and Death 

A person is either dead or alive. A person is usually alive.
A person is either bleeding or beautiful. A person is usually beautiful.  

Every turn: 
	If a person (called corpse) is dead:
		say "groupies and stage managers carry off another corpse";
		now the corpse is in the secret place. 
		
Volume 5 - Relationships


Loving relates various people to various people. The verb to love means the Loving relation.
Kissing relates various people to various people. The verb to kiss means the Kissing relation. 
[kissing seems like an event or action but here I made it a (permanent, until revoked) relation)]

Every turn:
	If someone (called X) loves a person (called Y) and Y loves X and the location of X is the location of Y and X kisses Y and Y kisses X :
		now X is in the apartment;
		now Y is in the apartment;
		increase the score by 10. 
		
A person is either a waiter or a customer. Gunther is a waiter. The player is a waiter. 

Breaking relates people to each other. The verb to take a break from means the breaking relation.
Compatibility relates people to each other. The verb to get on with means the compatibility relation. 
	Ross gets on with  Rachel.
	Joey gets on with Chandler.
	The tall guy gets on with Gunther.

Every turn: 
	If the number of steps via the loving relation from the tall guy to Gunther is 2:
		now the tall guy loves gunther.

Every turn:
	If a person (called X) loves someone (called Y) and the location of X is the location of Y:
		try X propositioning Y.


Treasuring relates various people to various people. The verb to be beloved by means the reversed loving relation. 
Rachel and Joey and Phoebe and Chandler and Monica are people. Ross is a person. 


A person can be jealous. A person is usually not jealous. 

Volume 6 - Central Perk

Book 1 - Setup 

 A business is a kind of thing.  A business has a person called the manager. Central Perk is a business. Central Perk is in the Cafe. The manager of Central Perk is Gunther. 


When play begins: now the time of day is 4:29 PM.

Book 2 - Closing Shop

A business is either available or unavailable. A business is usually available. A business has a time called closing time. The closing time of a business is usually five pm.

Shuttering is an action applying to one thing. Understand "shutter [something]" as shuttering. 

Carry out an actor shuttering something (called biz) :
	if the time of day is before the closing time of the biz:
		say "it's not [closing time of biz] yet...";
	else if the location of the biz contains people:
		unless each person in the location of the biz is a waiter:
			now the biz is unavailable;
		say "Can't close: customers are still here!".
		
Every turn:
	If a business (called biz) is available and the time of day is after the closing time of biz and the location of Gunther is the location of the biz:
		["the manager of the biz"; not working as actor here]
		try Gunther shuttering biz.
		
Volume 7 - Winning and Losing 

At 4:29 PM:
	say "[bold type]Gunther: [roman type]We're closing at [the closing time of central perk]. It's about [the time of day to the nearest five minutes] now.".

Every turn when the remainder after dividing the minutes part of the time of day by ten is zero:
		show notification "The time is [time of day]. <br> Your score is [score]".

Every turn:
	If the Central Perk is unavailable:
		say "Congratulations! You won!";
		if Gunther is in the cafe:
			say "Gunther sobs.";
		else:
			say "Achievement unlocked! Gunther is dead or in love.";
			increase score by 400;
			increase score by 20;
		say "Your score is [score]";
		end the story. 

Every turn:
	if score is less than -100:
		say "Score dropped below -100!";
		say "try the 'relations' command for info.";
		say "Game Over.";
		end the story.
		
