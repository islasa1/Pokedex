-- This script will be used to populate the pokedex schema

-- At the current moment (1 December, 2015) some entries are left as NULL

-- simply because of time constraints on the project, not all entries could be 

-- completed. For the ones that are, they were used in part to fulfill functional

-- testing with the end-user Android application. All tables and views to grab 

-- necessary data are designed to give the user full pokedex functionality as described 

-- in the database requirements

-- Effectiveness Calculator, not part of SQL Schema
DROP FUNCTION IF EXISTS damageCalc;
DELIMITER //
CREATE FUNCTION damageCalc (InAttackType VARCHAR(10), InDefenseType1 VARCHAR(10), InDefenseType2  VARCHAR(10))
	RETURNS FLOAT	
BEGIN
DECLARE mult1 FLOAT;
DECLARE mult2 FLOAT;

SELECT Multiplier INTO mult1 FROM Effectiveness WHERE (AttackType = InAttackType AND DefenseType = InDefenseType1);

IF InDefenseType2 IS NOT NULL
	THEN SELECT Multiplier INTO mult2 FROM Effectiveness WHERE (AttackType = InAttackType AND DefenseType = InDefenseType2);
ELSE
	RETURN mult1;
END IF;

RETURN (mult1 * mult2);	

END //
DELIMITER ;




-- SQL Populate Pokedex (FINAL)
-- Last Edit: 1 December 2015

-- This is the order of insertion to be used if we are to fully populate
-- the database with the respective values, so no dependencies are overlooked
-- INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(PokeNo, Name, Type1, Type2, Description);
-- INSERT INTO PokeStage VALUES(stageNo, pokeNo, evoNo);
-- INSERT INTO MoveList VALUES(MoveNo, Description, Power, Acc, Type);
-- INSERT INTO PokeMoves VALUES(PokeNo, MoveNo);
-- INSERT INTO Effectiveness VALUES(Type1, Type2, Multiplier);


-- Insert all Pokemon into database first
/*inserts for the first 51 Pokemon with description */
/* Credit to Tyler */

insert into Pokemon VALUES(1, "Bulbasaur", "grass", "poison", "It can go for days without eating a single morsel. In the bulb on its back, it stores energy.", NULL, NULL);
insert into Pokemon VALUES(2, "Ivysaur", "grass", "poison", "The bulb on its back grows by drawing energy. It gives off an aroma when it is ready to bloom.", NULL, NULL);
insert into Pokemon VALUES(3, "Venusaur", "grass", "poison", "The flower on its back catches the sun's rays. The sunlight is then absorbed and used for energy.", NULL, NULL);
insert into Pokemon VALUES(4, "Charmander", "fire", NULL, "The flame at the tip of its tail makes a sound as it burns. You can only hear it in quiet places.", NULL, NULL);
insert into Pokemon VALUES(5, "Charmeleon", "fire", NULL, "Tough fights could excite this POKEMON. When excited, it may blow out bluish-white flames.", NULL, NULL);
insert into Pokemon VALUES(6, "Charizard", "fire", "flying", "When expelling a blast of super hot fire, the red flame at the tip of its tail burns more intensely.", NULL, NULL);
insert into Pokemon VALUES(7, "Squirtle", "water", NULL, "Shoots water at prey while in the water. Withdraws into its shell when in danger.", NULL, NULL);
insert into Pokemon VALUES(8, "Wartortle", "water", NULL, "When tapped, this POKEMON will pull in its head, but its tail will still stick out a little bit.", NULL, NULL);
insert into Pokemon VALUES(9, "Blastoise", "water", NULL, "Once it takes aim at its enemy, it blasts out water with even more force than a fire hose.", NULL, NULL);
insert into Pokemon VALUES(10, "Caterpie", "bug", NULL, "If you touch the feeler on top of its head, it will release a horrible stink to protect itself.", NULL, NULL);
insert into Pokemon VALUES(11, "Metapod", "bug", NULL, "Hardens its shell to protect itself. However, a large impact may cause it to pop out of its shell.", NULL, NULL);
insert into Pokemon VALUES(12, "Butterfree", "bug", "flying", "Its wings, covered with poisonous powders, repel water. This allows it to fly in the rain.", NULL, NULL);
insert into Pokemon VALUES(13, "Weedle", "bug", "poison", "Beware of the sharp stinger on its head. It hides in grass and bushes where it eats leaves.", NULL, NULL);
insert into Pokemon VALUES(14, "Kakuna", "bug", "poison", "Able to move only slightly. When endangered, it may stick out its stinger and poison its enemy.", NULL, NULL);
insert into Pokemon VALUES(15, "Beedrill", "bug", "poison", "It has 3 poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.", NULL, NULL);
insert into Pokemon VALUES(16, "Pidgey", "normal", "flying", "Very docile. If attacked, it will often kick up sand to protect itself rather than fight back.", NULL, NULL);
insert into Pokemon VALUES(17, "Pidgeotto", "normal", "flying", "This POKEMON is full of vitality. It constantly flies around its large territory in search of prey.", NULL, NULL);
insert into Pokemon VALUES(18, "Pidgeot", "normal", "flying", "This POKEMON flies at Mach 2 speed, seeking prey. Its large talons are feared as wicked weapons.", NULL, NULL);
insert into Pokemon VALUES(19, "Rattata", "normal", NULL, "Will chew on anything with its fangs. If you see one, it is certain that 40 more live in the area.", NULL, NULL);
insert into Pokemon VALUES(20, "Raticate", "normal", NULL, "Its hind feet are webbed. They act as flippers, so it can swim in rivers and hunt for prey.", NULL, NULL);
insert into Pokemon VALUES(21, "Spearow", "normal", "flying", "Inept at flying high. However, it can fly around very fast to protect its territory.", NULL, NULL);
insert into Pokemon VALUES(22, "Fearow", "normal", "flying", "A POKEMON that dates back many years. If it senses danger, it flies high and away, instantly.", NULL, NULL);
insert into Pokemon VALUES(23, "Ekans", "poison", NULL, "The older it gets, the longer it grows. At night, it wraps its long body around tree branches to rest.", NULL, NULL);
insert into Pokemon VALUES(24, "Arbok", "poison", NULL, "The frightening patterns on its belly have been studied. Six variations have been confirmed.", NULL, NULL);
insert into Pokemon VALUES(25, "Pikachu", "electric", NULL, "It keeps its tail raised to monitor its surroundings. If you yank its tail, it will try to bite you.", NULL, NULL);
insert into Pokemon VALUES(26, "Raichu", "electric", NULL, "When electricity builds up inside its body, it becomes feisty. It also glows in the dark.", NULL, NULL);
insert into Pokemon VALUES(27, "Sandshrew", "ground", NULL, "Its body is dry. When it gets cold at night, its hide is said to become coated with a fine dew.", NULL, NULL);
insert into Pokemon VALUES(28, "Sandslash", "ground", NULL, "It is skilled at slashing enemies with its claws. If broken, they start to grow back in a day.", NULL, NULL);
insert into Pokemon VALUES(29, "Nidoran F", "poison", NULL, "A mild-mannered POKEMON that does not like to fight. Beware, its small horns secrete venom.", NULL, NULL);
insert into Pokemon VALUES(30, "Nidorina", "poison", NULL, "When resting deep in its burrow, its thorns always retract. This is proof that it is relaxed.", NULL, NULL);
insert into Pokemon VALUES(31, "Nidoqueen", "poison", "ground", "Tough scales cover the sturdy body of this POKeMON. It appears that the scales grow in cycles.", NULL, NULL);
insert into Pokemon VALUES(32, "Nidoran M", "poison", NULL, "Its large ears are always kept upright. If it senses danger, it will attack with a poisonous sting.", NULL, NULL);
insert into Pokemon VALUES(33, "Nidorino", "poison", NULL, "Its horns contain venom. If they are stabbed into an enemy, the impact makes the poison leak out.", NULL, NULL);
insert into Pokemon VALUES(34, "Nidoking", "poison", "ground", "Its steel-like hide adds to its powerful tackle. Its horns are so hard, they can pierce a diamond.", NULL, NULL);
insert into Pokemon VALUES(35, "Clefairy", "fairy", NULL, "Adored for their cute looks and playfulness. They are thought to be rare, as they do not appear often.", NULL, NULL);
insert into Pokemon VALUES(36, "Clefable", "fairy", NULL, "They appear to be very protective of their own world. It is a kind of fairy, rarely seen by people.", NULL, NULL);
insert into Pokemon VALUES(37, "Vulpix", "fire", NULL, "Both its fur and its tails are beautiful. As it grows, the tails split and form more tails.", NULL, NULL);
insert into Pokemon VALUES(38, "Ninetales", "fire", NULL, "According to an enduring legend, 9 noble saints were united and reincarnated as this POKEMON.", NULL, NULL);
insert into Pokemon VALUES(39, "Jigglypuff", "normal", "fairy", "Uses its alluring eyes to enrapture its foe. It then sings a pleasing melody that lulls the foe to sleep.", NULL, NULL);
insert into Pokemon VALUES(40, "Wigglytuff", "normal", "fairy", "Its body is full of elasticity. By inhaling deeply, it can continue to inflate itself without limit.", NULL, NULL);
insert into Pokemon VALUES(41, "Zubat", "poison", "flying", "Emits ultrasonic cries while it flies. They act as a sonar used to check for objects in its way.", NULL, NULL);
insert into Pokemon VALUES(42, "Golbat", "poison", "flying", "It attacks in a stealthy manner, without warning. Its sharp fangs are used to bite and suck blood.", NULL, NULL);
insert into Pokemon VALUES(43, "Oddish", "grass", "poison", "It may be mistaken for a clump of weeds. If you try to yank it out of the ground, it shrieks horribly.", NULL, NULL);
insert into Pokemon VALUES(44, "Gloom", "grass", "poison", "Smells incredibly foul! However, around 1 out of 1,000 people enjoy sniffing its nose-bending stink.", NULL, NULL);
insert into Pokemon VALUES(45, "Vileplume", "grass", "poison", "Flaps its broad flower petals to scatter its poisonous pollen. The flapping sound is very loud.", NULL, NULL);
insert into Pokemon VALUES(46, "Paras", "bug", "grass", "Burrows under the ground to gnaw on tree roots. The mushrooms on its back absorb most of the nutrition.", NULL, NULL);
insert into Pokemon VALUES(47, "Parasect", "bug", "grass", "The bug host is drained of energy by the mushrooms on its back. They appear to do all the thinking.", NULL, NULL);
insert into Pokemon VALUES(48, "Venonat", "bug", "poison", "Its large eyes act as radars. In a bright place, you can see that they are clusters of many tiny eyes.", NULL, NULL);
insert into Pokemon VALUES(49, "Venomoth", "bug", "poison", "The powdery scales on its wings are hard to remove. They also contain poison that leaks out on contact.", NULL, NULL);
insert into Pokemon VALUES(50, "Diglett", "ground", NULL, "It prefers dark places. It spends most of its time underground, though it may pop up in caves.", NULL, NULL);
insert into Pokemon VALUES(51, "Dugtrio", "ground", NULL, "A team of triplets that can burrow over 60 MPH. Due to this, some people think it's an earthquake.", NULL, NULL);


/* Inserts for 52-101 with description*/
/* Credit to Christian */
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(052, 'Meowth', 'NORMAL', NULL,  'Appears to be more active at night. It loves round and shiny things. It can''t stop from picking them up.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(053, 'Persian', 'NORMAL', NULL,  'The gem in its forehead glows on its own! It walks with all the grace and elegance of a proud queen.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(054, 'Psyduck', 'WATER', NULL,  'Always tormented by headaches. It uses psychic powers, but it is not known if it intends to do so.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(055, 'Golduck', 'WATER', NULL,  'Its slim and long limbs end in broad flippers. They are used for swimming gracefully in lakes.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(056, 'Mankey', 'FIGHTING', NULL,  'An agile POKeMON that lives in trees. It angers easily and will not hesitate to attack anything.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(057, 'Primeape', 'FIGHTING', NULL,  'It stops being angry only when nobody else is around. To view this moment is very difficult.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(058, 'Growlithe', 'FIRE', NULL,  'A POKeMON with a friendly nature. However, it will bark fiercely at anything invading its territory.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(059, 'Arcanine', 'FIRE', NULL,  'A legendary POKeMON in China. Many people are charmed by its grace and beauty while running.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(060, 'Poliwag', 'WATER', NULL,  'The direction of the spiral on the belly differs by area. It is more adept at swimming than walking.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(061, 'Poliwhirl', 'WATER', NULL,  'Under attack, it uses its belly spiral to put the foe to sleep. It then makes its escape.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(062, 'Poliwrath', 'WATER', 'FIGHTING',  'Swims powerfully using all the muscles in its body. It can even overtake champion swimmers.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(063, 'Abra', 'PSYCHIC', NULL,  'Sleeps 18 hours a day. If it senses danger, it will teleport itself to safety even as it sleeps.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(064, 'Kadabra', 'PSYCHIC', NULL,  'Many odd things happen if this POKeMON is close by. For example, it makes clocks run backwards.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(065, 'Alakazam', 'PSYCHIC', NULL,  'A POKeMON that can memorize anything. It never forgets what it learns--that''s why this POKeMON is smart.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(066, 'Machop', 'FIGHTING', NULL,  'Very powerful in spite of its small size. Its mastery of many types of martial arts makes it very tough.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(067, 'Machoke', 'FIGHTING', NULL,  'The belt around its waist holds back its energy. Without it, this POKeMON would be unstoppable.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(068, 'Machamp', 'FIGHTING', NULL,  'One arm alone can move mountains. Using all four arms, this POKeMON fires off awesome punches.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(069, 'Bellsprout', 'GRASS', 'POISON',  'Prefers hot and humid places. It ensnares tiny insects with its vines and devours them.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(070, 'Weepinbell', 'GRASS', 'POISON',  'When hungry, it swallows anything that moves. Its hapless prey is melted inside by strong acids.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(071, 'Victreebel', 'GRASS', 'POISON',  'Lures prey with the sweet aroma of honey. Swallowed whole, the prey is melted in a day, bones and all.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(072, 'Tentacool', 'WATER', 'POISON',  'It can sometimes be found all dry and shriveled up on a beach. Toss it back into the sea to revive it.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(073, 'Tentacruel', 'WATER', 'POISON',  'Its 80 tentacles can stretch and contract freely. They wrap around prey and weaken it with poison.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(074, 'Geodude', 'ROCK', 'GROUND',  'Commonly found near mountain trails, etc. If you step on one by accident, it gets angry.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(075, 'Graveler', 'ROCK', 'GROUND',  'Often seen rolling down mountain trails. Obstacles are just things to roll straight over, not avoid.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(076, 'Golem', 'ROCK', 'GROUND',  'Once it sheds its skin, its body turns tender and whitish. Its hide hardens when it''s exposed to air.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(077, 'Ponyta', 'FIRE', NULL,  'Capable of jumping incredibly high. Its hooves and sturdy legs absorb the impact of a hard landing.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(078, 'Rapidash', 'FIRE', NULL,  'Just loves to run. If it sees something faster than itself, it will give chase at top speed.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(079, 'Slowpoke', 'WATER', 'PSYCHIC',  'Incredibly slow and sluggish. It is quite content to loll about without worrying about the time.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(080, 'Slowbro', 'WATER', 'PSYCHIC',  'Lives lazily by the sea. If the SHELLDER on its tail comes off, it becomes a SLOWPOKE again.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(081, 'Magnemite', 'ELECTRIC', 'STEEL',  'It is born with the ability to defy gravity. It floats in air on powerful electromagnetic waves.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(082, 'Magneton', 'ELECTRIC', 'STEEL',  'Generates strange radio signals. It raises the temperature by 3.6F degrees within 3,300 feet.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(083, 'Farfetch''d', 'NORMAL', 'FLYING',  'Lives where reedy plants grow. They are rarely seen, so it''s thought their numbers are decreasing.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(084, 'Doduo', 'NORMAL', 'FLYING',  'Its short wings make flying difficult. Instead, this POKeMON runs at high speed on developed legs.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(085, 'Dodrio', 'NORMAL', 'FLYING',  'One of DODUO''s 2 heads splits to form a unique species. It runs close to 40 MPH in prairies.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(086, 'Seel', 'WATER', NULL,  'Loves freezing cold conditions. Relishes swimming in a frigid climate of around 14F degrees.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(087, 'Dewgong', 'WATER', 'ICE',  'Its entire body is a snowy-white. Unharmed by even intense cold, it swims powerfully in icy waters.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(088, 'Grimer', 'POISON', NULL,  'Made of hardened sludge. It smells too putrid to touch. Even weeds won''t grow in its path.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(089, 'Muk',  'POISON', NULL,  'Smells so awful, it can cause fainting. Through degeneration, it lost its sense of smell.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(090, 'Shellder', 'WATER', NULL,  'The shell can withstand any attack. However, when it is open, the tender body is exposed.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(091, 'Cloyster', 'WATER', 'ICE',  'For protection, it uses its harder-than-diamonds shell. It also shoots spikes from the shell.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(092, 'Gastly', 'GHOST', 'POISON',  'Said to appear in decrepit, deserted buildings. It has no real shape as it appears to be made of a gas.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(093, 'Haunter', 'GHOST', 'POISON',  'By licking, it saps the victim''s life. It causes shaking that won''t stop until the victim''s demise.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(094, 'Gengar', 'GHOST', 'POISON',  'A GENGAR is close by if you feel a sudden chill. It may be trying to lay a curse on you.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(095, 'Onix', 'ROCK', 'GROUND',  'Burrows at high speed in search of food. The tunnels it leaves are used as homes by DIGLETTs.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(096, 'Drowzee', 'PSYCHIC', NULL,  'If you sleep by it all the time, it will sometimes show you dreams it has eaten in the past.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(097, 'Hypno', 'PSYCHIC', NULL, 'Avoid eye contact if you come across one. It will try to put you to sleep by using its pendulum.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(098, 'Krabby', 'WATER', NULL,  'Its pincers are superb weapons. They sometimes break off during battle, but they grow back fast.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(099, 'Kingler', 'WATER', NULL,  'One claw grew massively and as hard as steel. It has 10,000-HP strength. However, it is too heavy.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(100, 'Voltorb', 'ELECTRIC', NULL,  'It is said to camouflage itself as a POKe BALL. It will self-destruct with very little stimulus.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(101, 'Electrode', 'ELECTRIC', NULL,  'Stores electrical energy inside its body. Even the slightest shock could trigger a huge explosion.');

/* Inserts 102-151 */
/* Credit to Jacob */
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(102, 'Exeggcute', 'GRASS', 'PSYCHIC',  'The heads attract each other and spin around. There must be 6 heads for it to maintain balance');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(103, 'Exeggutor', 'GRASS', 'PSYCHIC',  'Its cries are very noisy. This is because each of the three heads thinks about whatever it likes.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(104, 'Cubone', 'GROUND', NULL,  'Wears the skull of its deceased mother. Its cries echo inside the skull and come out as a sad melody.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(105, 'Marowak', 'GROUND', NULL,  'Small and weak, this Pokemon is adept with its Bone Club. It has grown more vicious over the ages.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(106, 'Hitmonlee', 'FIGHTING', NULL,  'When kicking, the sole of its foot turns as hard as a diamond on impact and destroys its enemy.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(107, 'Hitmonchan', 'FIGHTING', NULL,  'Punches in corkscrew fashion. It can punch its way through a concrete wall in the same way as a drill.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(108, 'Lickitung', 'NORMAL', NULL,  'Its tongue spans almost 7 feet and moves more freely than its forelegs. Its licks can cause paralysis.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(109, 'Koffing', 'POISON', NULL,  'In hot places, its internal gases could expand and explode without any warning. Be very careful!');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(110, 'Weezing', 'POISON', NULL,  'It lives and grows by absorbing dust, germs, and poison gases that are contained in toxic waste and garbage.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(111, 'Rhyhorn', 'GROUND', 'ROCK',  'A Pokemon with a one-track mind. Once it charges, it won''t stop running until it falls asleep.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(112, 'Rhydon', 'GROUND', 'ROCK',  'Walks on its hind legs. Shows signs of intelligence. Its armor-like hide even repels molten lava.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(113, 'Chansey', 'NORMAL', NULL,  'A gentle and kind-hearted Pokemon that shares its nutritious eggs if it sees an injured Pokemon.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(114, 'Tangela', 'GRASS', NULL, 'Its identity is obscured by masses of thick, blue vines. The vines are said to never stop growing.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(115, 'Kangaskhan', 'NORMAL', NULL,  'Raises its young in its belly pouch. Won''t run from any fight to keep its young protected.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(116, 'Horsea', 'WATER', NULL,  'If it senses any danger, it will vigorously spray water or a special type of ink from its mouth.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(117, 'Seadra', 'WATER', NULL,  'Touching the back fin causes numbness. It hooks its tail to coral to stay in place while sleeping.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(118, 'Goldeen', 'WATER', NULL,  'When it is time for them to lay eggs, they can be seen swimming up rivers and falls in large groups.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(119, 'Seaking', 'WATER', NULL,  'It is the male''s job to make a nest by carving out boulders in a stream using the horn on its head.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(120, 'Staryu', 'WATER', NULL, 'As long as the center section is unharmed, It can grow back fully even if it is chopped to bits.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(121, 'Starmie', 'WATER', 'PSYCHIC', 'The center section is named the core. People think it is communicating when it glows in 7 colors.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(122, 'Mr.Mime', 'PSYCHIC', 'FAIRY',  'Always practices its pantomime act. It makes enemies believe something exists that really doesn''t.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(123, 'Scyther', 'BUG', 'FLYING',  'Leaps out of tall grass and slices prey with its scythes. The movement looks like that of a ninja.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(124, 'Jynx', 'ICE', 'PSYCHIC',  'Appears to move to a rhythm of its own, as if it were dancing. It wiggles its hips as it walks.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(125, 'Electabuzz', 'ELECTRIC', NULL,  'If a major power outage occurs, it is certain that this Pokemon has eaten electricity at a power plant.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(126, 'Magmar', 'FIRE', NULL,  'Born in an active volcano. Its body is always cloaked in flames, so it looks like a big ball of fire.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(127, 'Pinsir', 'BUG', NULL,  'Grips its prey in its pincers and squeezes hard! It can''t move if it''s cold, so it lives in warm places.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(128, 'Tauros', 'NORMAL', NULL,  'A rowdy Pokemon with a lot of stamina. Once running, it won''t stop until it hits something.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(129, 'Magikarp', 'WATER', NULL,  'Famous for being very unreliable. It can be found swimming in seas, lakes, rivers and shallow puddles.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(130, 'Gyarados', 'WATER', 'FLYING',  'Brutally vicious and enormously destructive. Known for totally destroying cities in ancient times.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(131, 'Lapras', 'WATER', 'ICE',  'A gentle soul that can read the minds of people. It can ferry people across the sea on its back.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(132, 'Ditto', 'NORMAL', NULL,  'When it spots an enemy, its body transforms into an almost perfect copy of its opponent.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(133, 'Eevee', 'NORMAL', NULL,  'Its genetic code is unstable, so it could evolve in a variety of ways. There are only a few alive.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(134, 'Vaporeon', 'WATER', NULL,  'Its cell structure is similar to water molecules. It will melt away and become invisible in water.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(135, 'Jolteon', 'ELECTRIC', NULL,  'A sensitive Pokemon that easily becomes sad or angry. Every time its mood changes, it charges power.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(136, 'Flareon', 'FIRE', NULL,  'It has a flame chamber inside its body. It inhales, then blows out fire that is over 3,000F degrees.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(137, 'Porygon', 'NORMAL', NULL,  'The only Pokemon people anticipate can fly into space. None has managed the feat yet, however.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(138, 'Omanyte', 'ROCK', 'WATER',  'An ancient Pokemon that was recovered from a fossil. It swims by cleverly twisting its 10 tentacles about.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(139, 'Omastar', 'ROCK', 'WATER',  'Sharp beaks ring its mouth. Its shell was too big for it to move freely, so it became extinct.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(140, 'Kabuto', 'ROCK', 'WATER',  'A Pokemon that was recovered from a fossil. It uses the eyes on its back while hiding on the sea floor.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(141, 'Kabutops', 'ROCK', 'WATER',  'A slim and fast swimmer. It slices its prey with its sharp sickles and drinks the body fluids.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(142, 'Aerodactyl', 'ROCK', 'FLYING',  'A savage Pokemon that died out in ancient times. It was resurrected using DNA taken from amber.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(143, 'Snorlax', 'NORMAL', NULL,  'Will eat anything, even if the food happens to be a little moldy. It never gets an upset stomach.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(144, 'Articuno', 'ICE', 'FLYING',  'A legendary bird Pokemon. It freezes water that is contained in winter air and makes it snow.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(145, 'Zapdos', 'ELECTRIC', 'FLYING',  'This legendary bird Pokemon is said to appear when the sky turns dark and lightning showers down.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(146, 'Moltres', 'FIRE', 'FLYING',  'A legendary bird Pokemon. As it flaps its flaming wings, even the night sky will turn red.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(147, 'Dratini', 'DRAGON', NULL,  'The existence of this mythical Pokemon was only recently confirmed by a fisherman who caught one.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(148, 'Dragonair', 'DRAGON', NULL,  'According to a witness, its body was surrounded by a strange aura that gave it a mystical look.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(149, 'Dragonite', 'DRAGON', 'FLYING',  'It is said that this Pokemon lives somewhere in the sea and that it flies. However, it is only a rumor.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(150, 'Mewtwo', 'PSYCHIC', NULL,  'Its DNA is almost the same as Mew''s. However, its size and disposition are vastly different.');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(151, 'Mew',  'PSYCHIC', NULL,  'When viewed through a microscope, this Pokemon''s short, fine, delicate hair can be seen.');

-- Insert PokeStages
INSERT INTO PokeStage VALUES(1, 1, 001);
INSERT INTO PokeStage VALUES(2, 1, 002);
INSERT INTO PokeStage VALUES(3, 1, 003);
INSERT INTO PokeStage VALUES(1, 4, 004);
INSERT INTO PokeStage VALUES(2, 4, 005);
INSERT INTO PokeStage VALUES(3, 4, 006);
INSERT INTO PokeStage VALUES(1, 7, 007);
INSERT INTO PokeStage VALUES(2, 7, 008);
INSERT INTO PokeStage VALUES(3, 7, 009);

-- Caterpie
INSERT INTO PokeStage VALUES(1, 10, 010);
INSERT INTO PokeStage VALUES(2, 10, 011);
INSERT INTO PokeStage VALUES(3, 10, 012);

-- Weedle
INSERT INTO PokeStage VALUES(1, 13, 013);
INSERT INTO PokeStage VALUES(2, 13, 014);
INSERT INTO PokeStage VALUES(3, 13, 015);

-- Pidgey
INSERT INTO PokeStage VALUES(1, 16, 016);
INSERT INTO PokeStage VALUES(2, 16, 017);
INSERT INTO PokeStage VALUES(3, 16, 018);

-- Rattata
INSERT INTO PokeStage VALUES(1, 19, 019);
INSERT INTO PokeStage VALUES(2, 19, 020);

-- Spearow
INSERT INTO PokeStage VALUES(1, 21, 021);
INSERT INTO PokeStage VALUES(2, 21, 022);

-- Ekans
INSERT INTO PokeStage VALUES(1, 23, 023);
INSERT INTO PokeStage VALUES(2, 23, 024);

-- Pikachu
INSERT INTO PokeStage VALUES(1, 25, 025);
INSERT INTO PokeStage VALUES(2, 25, 026);

-- Sandshrew
INSERT INTO PokeStage VALUES(1, 27, 027);
INSERT INTO PokeStage VALUES(2, 27, 028);

-- Nidoran (F)
INSERT INTO PokeStage VALUES(1, 29, 029);
INSERT INTO PokeStage VALUES(2, 29, 030);
INSERT INTO PokeStage VALUES(3, 29, 031);

-- Nidoran (M)
INSERT INTO PokeStage VALUES(1, 32, 032);
INSERT INTO PokeStage VALUES(2, 32, 033);
INSERT INTO PokeStage VALUES(3, 32, 034);



-- EEVEE TEST, using new evoSet method based on base pokemon number
INSERT INTO PokeStage VALUES(1, 133, 133);
INSERT INTO PokeStage VALUES(2, 133, 134);
INSERT INTO PokeStage VALUES(2, 133, 135);
INSERT INTO PokeStage VALUES(2, 133, 136);



-- MoveList
-- Moves
-- Some with description
INSERT INTO MoveList VALUES(1, 'Absorb', 'A nutrient-draining attack. The user''s HP is restored by half the damage taken by the target.',20, 100, 'GRASS');

INSERT INTO MoveList VALUES(2, 'Acid', 'The opposing Pokemon are attacked with a spray of harsh acid. This may also lower their Sp. Def stats.', 40, 100, 'POISON');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 3 ,'Acid Armor', 'POISON');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 4 ,'Acid Spray', 'POISON');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 5 ,'Acrobatics', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 6 ,'Acupressure', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 7 ,'Aerial Ace', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 8 ,'Aeroblast', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 9 ,'After You', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 10 ,'Agility', 'PSYCHIC');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 11 ,'Air Cutter', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 12 ,'Air Slash', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 13 ,'Ally Switch', 'PSYCHIC');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 14 ,'Amnesia', 'PSYCHIC');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 15 ,'Ancient Power', 'ROCK');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 16 ,'Aqua Jet', 'WATER');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 17 ,'Aqua Ring', 'WATER');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 18 ,'Aqua Tail', 'WATER');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 19 ,'Arm Thrust', 'FIGHTING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 20 ,'Aromatherapy', 'GRASS');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 21 ,'Assist', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 22 ,'Assurance', 'DARK');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 23 ,'Astonish', 'GHOST');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 24 ,'Attack Order', 'BUG');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 25 ,'Attract', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 26 ,'Aura Sphere', 'FIGHTING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 27 ,'Aurora Beam', 'ICE');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 28 ,'Autotomize', 'STEEL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 29 ,'Avalanche', 'ICE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 30 ,'Baby-Doll Eyes', 'FAIRY');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 31 ,'Barrage', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 32 ,'Barrier', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 33 ,'Baton Pass', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 34 ,'Beat Up', 'DARK');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 35 ,'Belly Drum', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 36 ,'Bestow', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 37 ,'Bide', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 38 ,'Bind', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 39 ,'Bite', 'DARK');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 40 ,'Blast Burn', 'FIRE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 41 ,'Blaze Kick', 'FIRE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 42 ,'Blizzard', 'ICE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 43 ,'Block', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 44 ,'Blue Flare', 'FIRE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 45 ,'Body Slam', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 46 ,'Bolt Strike', 'ELECTRIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 47 ,'Bone Club', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 48 ,'Bone Rush', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 49 ,'Bonemerang', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 50 ,'Boomburst', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 51 ,'Bounce', 'FLYING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 52 ,'Brave Bird', 'FLYING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 53 ,'Brick Break', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 54 ,'Brine', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 55 ,'Bubble', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 56 ,'Bubble Beam', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 57 ,'Bug Bite', 'BUG');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 58 ,'Bug Buzz', 'BUG');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 59 ,'Bulk Up', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 60 ,'Bulldoze', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 61 ,'Bullet Punch', 'STEEL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 62 ,'Bullet Seed', 'GRASS');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 63 ,'Calm Mind', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 64 ,'Camouflage', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 65 ,'Captivate', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 66 ,'Celebrate', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 67 ,'Charge', 'ELECTRIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 68 ,'Charge Beam', 'ELECTRIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 69 ,'Charm', 'FAIRY');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 70 ,'Chatter', 'FLYING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 71 ,'Chip Away', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 72 ,'Circle Throw', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 73 ,'Clamp', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 74 ,'Clear Smog', 'POISON');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 75 ,'Close Combat', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 76 ,'Coil', 'POISON');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 77 ,'Comet Punch', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 78 ,'Confide', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 79 ,'Confuse Ray', 'GHOST');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 80 ,'Confusion', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 81 ,'Constrict', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 82 ,'Conversion', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 83 ,'Conversion 2', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 84 ,'Copycat', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 85 ,'Cosmic Power', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 86 ,'Cotton Guard', 'GRASS');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 87 ,'Cotton Spore', 'GRASS');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 88 ,'Counter', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 89 ,'Covet', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 90 ,'Crabhammer', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 91 ,'Crafty Shield', 'FAIRY');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 92 ,'Cross Chop', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 93 ,'Cross Poison', 'POISON');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 94 ,'Crunch', 'DARK');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 95 ,'Crush Claw', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 96 ,'Crush Grip', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 97 ,'Curse', 'GHOST');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 98 ,'Cut', 'NORMAL');

-- PokeMovesINSERT INTO PokeMoves (1, 25);
INSERT INTO PokeMoves VALUES(1, 78);
INSERT INTO PokeMoves VALUES(1, 98);
INSERT INTO PokeMoves VALUES(1, 38);

INSERT INTO PokeMoves VALUES(4, 25);
INSERT INTO PokeMoves VALUES(4, 78);
INSERT INTO PokeMoves VALUES(4, 98);

INSERT INTO PokeMoves VALUES(7, 39);
INSERT INTO PokeMoves VALUES(7, 55);
INSERT INTO PokeMoves VALUES(7, 18);
INSERT INTO PokeMoves VALUES(7, 42);
INSERT INTO PokeMoves VALUES(7, 53);
INSERT INTO PokeMoves VALUES(7, 25);
INSERT INTO PokeMoves VALUES(7, 78);

-- Insert Effectiveness Values
/*NORMAL*/
insert into Effectiveness values("NORMAL", "NORMAL", 1);
insert into Effectiveness values("NORMAL", "FIRE", 1);
insert into Effectiveness values("NORMAL", "WATER", 1);
insert into Effectiveness values("NORMAL", "ELECTRIC", 1);
insert into Effectiveness values("NORMAL", "GRASS", 1);
insert into Effectiveness values("NORMAL", "ICE", 1);
insert into Effectiveness values("NORMAL", "FIGHTING", 1);
insert into Effectiveness values("NORMAL", "POISON", 1);
insert into Effectiveness values("NORMAL", "GROUND", 1);
insert into Effectiveness values("NORMAL", "FLYING", 1);
insert into Effectiveness values("NORMAL", "PSYCHIC", 1);
insert into Effectiveness values("NORMAL", "BUG", 1);
insert into Effectiveness values("NORMAL", "ROCK", 0.5);
insert into Effectiveness values("NORMAL", "GHOST", 0);
insert into Effectiveness values("NORMAL", "DRAGON", 1);
insert into Effectiveness values("NORMAL", "DARK", 1);
insert into Effectiveness values("NORMAL", "STEEL", 0.5);
insert into Effectiveness values("NORMAL", "FAIRY", 1);

/*FIRE*/
insert into Effectiveness values("FIRE", "NORMAL", 1);
insert into Effectiveness values("FIRE", "FIRE", 0.5);
insert into Effectiveness values("FIRE", "WATER", 0.5);
insert into Effectiveness values("FIRE", "ELECTRIC", 1);
insert into Effectiveness values("FIRE", "GRASS", 2);
insert into Effectiveness values("FIRE", "ICE", 2);
insert into Effectiveness values("FIRE", "FIGHTING", 1);
insert into Effectiveness values("FIRE", "POISON", 1);
insert into Effectiveness values("FIRE", "GROUND", 1);
insert into Effectiveness values("FIRE", "FLYING", 1);
insert into Effectiveness values("FIRE", "PSYCHIC", 1);
insert into Effectiveness values("FIRE", "BUG", 2);
insert into Effectiveness values("FIRE", "ROCK", 0.5);
insert into Effectiveness values("FIRE", "GHOST", 1);
insert into Effectiveness values("FIRE", "DRAGON", 0.5);
insert into Effectiveness values("FIRE", "DARK", 1);
insert into Effectiveness values("FIRE", "STEEL", 2);
insert into Effectiveness values("FIRE", "FAIRY", 1);

/*WATER*/
insert into Effectiveness values("WATER", "NORMAL", 1);
insert into Effectiveness values("WATER", "FIRE", 2);
insert into Effectiveness values("WATER", "WATER", 0.5);
insert into Effectiveness values("WATER", "ELECTRIC", 1);
insert into Effectiveness values("WATER", "GRASS", 0.5);
insert into Effectiveness values("WATER", "ICE", 1);
insert into Effectiveness values("WATER", "FIGHTING", 1);
insert into Effectiveness values("WATER", "POISON", 1);
insert into Effectiveness values("WATER", "GROUND", 2);
insert into Effectiveness values("WATER", "FLYING", 1);
insert into Effectiveness values("WATER", "PSYCHIC", 1);
insert into Effectiveness values("WATER", "BUG", 1);
insert into Effectiveness values("WATER", "ROCK", 2);
insert into Effectiveness values("WATER", "GHOST", 1);
insert into Effectiveness values("WATER", "DRAGON", 0.5);
insert into Effectiveness values("WATER", "DARK", 1);
insert into Effectiveness values("WATER", "STEEL", 1);
insert into Effectiveness values("WATER", "FAIRY", 1);

/*ELECTRIC*/
insert into Effectiveness values("ELECTRIC", "NORMAL", 1);
insert into Effectiveness values("ELECTRIC", "FIRE", 1);
insert into Effectiveness values("ELECTRIC", "WATER", 2);
insert into Effectiveness values("ELECTRIC", "ELECTRIC", 0.5);
insert into Effectiveness values("ELECTRIC", "GRASS", 0.5);
insert into Effectiveness values("ELECTRIC", "ICE", 1);
insert into Effectiveness values("ELECTRIC", "FIGHTING", 1);
insert into Effectiveness values("ELECTRIC", "POISON", 1);
insert into Effectiveness values("ELECTRIC", "GROUND", 0);
insert into Effectiveness values("ELECTRIC", "FLYING", 2);
insert into Effectiveness values("ELECTRIC", "PSYCHIC", 1);
insert into Effectiveness values("ELECTRIC", "BUG", 1);
insert into Effectiveness values("ELECTRIC", "ROCK", 1);
insert into Effectiveness values("ELECTRIC", "GHOST", 1);
insert into Effectiveness values("ELECTRIC", "DRAGON", 0.5);
insert into Effectiveness values("ELECTRIC", "DARK", 1);
insert into Effectiveness values("ELECTRIC", "STEEL", 1);
insert into Effectiveness values("ELECTRIC", "FAIRY", 1);

/*GRASS*/
insert into Effectiveness values("GRASS", "NORMAL", 1);
insert into Effectiveness values("GRASS", "FIRE", 0.5);
insert into Effectiveness values("GRASS", "WATER", 2);
insert into Effectiveness values("GRASS", "ELECTRIC", 1);
insert into Effectiveness values("GRASS", "GRASS", 0.5);
insert into Effectiveness values("GRASS", "ICE", 1);
insert into Effectiveness values("GRASS", "FIGHTING", 1);
insert into Effectiveness values("GRASS", "POISON", 0.5);
insert into Effectiveness values("GRASS", "GROUND", 2);
insert into Effectiveness values("GRASS", "FLYING", 0.5);
insert into Effectiveness values("GRASS", "PSYCHIC", 1);
insert into Effectiveness values("GRASS", "BUG", 0.5);
insert into Effectiveness values("GRASS", "ROCK", 2);
insert into Effectiveness values("GRASS", "GHOST", 1);
insert into Effectiveness values("GRASS", "DRAGON", 0.5);
insert into Effectiveness values("GRASS", "DARK", 1);
insert into Effectiveness values("GRASS", "STEEL", 0.5);
insert into Effectiveness values("GRASS", "FAIRY", 1);

/*ICE*/
insert into Effectiveness values("ICE", "NORMAL", 1);
insert into Effectiveness values("ICE", "FIRE", 0.5);
insert into Effectiveness values("ICE", "WATER", 0.5);
insert into Effectiveness values("ICE", "ELECTRIC", 1);
insert into Effectiveness values("ICE", "GRASS", 2);
insert into Effectiveness values("ICE", "ICE", 0.5);
insert into Effectiveness values("ICE", "FIGHTING", 1);
insert into Effectiveness values("ICE", "POISON", 1);
insert into Effectiveness values("ICE", "GROUND", 2);
insert into Effectiveness values("ICE", "FLYING", 2);
insert into Effectiveness values("ICE", "PSYCHIC", 1);
insert into Effectiveness values("ICE", "BUG", 1);
insert into Effectiveness values("ICE", "ROCK", 1);
insert into Effectiveness values("ICE", "GHOST", 1);
insert into Effectiveness values("ICE", "DRAGON", 2);
insert into Effectiveness values("ICE", "DARK", 1);
insert into Effectiveness values("ICE", "STEEL", 0.5);
insert into Effectiveness values("ICE", "FAIRY", 1);

/*FIGHTING*/
insert into Effectiveness values("FIGHTING", "NORMAL", 2);
insert into Effectiveness values("FIGHTING", "FIRE", 1);
insert into Effectiveness values("FIGHTING", "WATER", 1);
insert into Effectiveness values("FIGHTING", "ELECTRIC", 1);
insert into Effectiveness values("FIGHTING", "GRASS", 1);
insert into Effectiveness values("FIGHTING", "ICE", 2);
insert into Effectiveness values("FIGHTING", "FIGHTING", 1);
insert into Effectiveness values("FIGHTING", "POISON", 0.5);
insert into Effectiveness values("FIGHTING", "GROUND", 1);
insert into Effectiveness values("FIGHTING", "FLYING", 0.5);
insert into Effectiveness values("FIGHTING", "PSYCHIC", 0.5);
insert into Effectiveness values("FIGHTING", "BUG", 0.5);
insert into Effectiveness values("FIGHTING", "ROCK", 2);
insert into Effectiveness values("FIGHTING", "GHOST", 0);
insert into Effectiveness values("FIGHTING", "DRAGON", 1);
insert into Effectiveness values("FIGHTING", "DARK", 2);
insert into Effectiveness values("FIGHTING", "STEEL", 2);
insert into Effectiveness values("FIGHTING", "FAIRY", 0.5);

/*POISON*/
insert into Effectiveness values("POISON", "NORMAL", 1);
insert into Effectiveness values("POISON", "FIRE", 1);
insert into Effectiveness values("POISON", "WATER", 1);
insert into Effectiveness values("POISON", "ELECTRIC", 1);
insert into Effectiveness values("POISON", "GRASS", 2);
insert into Effectiveness values("POISON", "ICE", 1);
insert into Effectiveness values("POISON", "FIGHTING", 1);
insert into Effectiveness values("POISON", "POISON", 0.5);
insert into Effectiveness values("POISON", "GROUND", 0.5);
insert into Effectiveness values("POISON", "FLYING", 1);
insert into Effectiveness values("POISON", "PSYCHIC", 1);
insert into Effectiveness values("POISON", "BUG", 1);
insert into Effectiveness values("POISON", "ROCK", 0.5);
insert into Effectiveness values("POISON", "GHOST", 0.5);
insert into Effectiveness values("POISON", "DRAGON", 1);
insert into Effectiveness values("POISON", "DARK", 1);
insert into Effectiveness values("POISON", "STEEL", 0);
insert into Effectiveness values("POISON", "FAIRY", 2);

/*GROUND*/
insert into Effectiveness values("GROUND", "NORMAL", 1);
insert into Effectiveness values("GROUND", "FIRE", 2);
insert into Effectiveness values("GROUND", "WATER", 1);
insert into Effectiveness values("GROUND", "ELECTRIC", 2);
insert into Effectiveness values("GROUND", "GRASS", 0.5);
insert into Effectiveness values("GROUND", "ICE", 1);
insert into Effectiveness values("GROUND", "FIGHTING", 1);
insert into Effectiveness values("GROUND", "POISON", 2);
insert into Effectiveness values("GROUND", "GROUND", 1);
insert into Effectiveness values("GROUND", "FLYING", 0);
insert into Effectiveness values("GROUND", "PSYCHIC", 1);
insert into Effectiveness values("GROUND", "BUG", 0.5);
insert into Effectiveness values("GROUND", "ROCK", 2);
insert into Effectiveness values("GROUND", "GHOST", 1);
insert into Effectiveness values("GROUND", "DRAGON", 1);
insert into Effectiveness values("GROUND", "DARK", 1);
insert into Effectiveness values("GROUND", "STEEL", 2);
insert into Effectiveness values("GROUND", "FAIRY", 1);

/*FLYING*/
insert into Effectiveness values("FLYING", "NORMAL", 1);
insert into Effectiveness values("FLYING", "FIRE", 1);
insert into Effectiveness values("FLYING", "WATER", 1);
insert into Effectiveness values("FLYING", "ELECTRIC", 0.5);
insert into Effectiveness values("FLYING", "GRASS", 2);
insert into Effectiveness values("FLYING", "ICE", 1);
insert into Effectiveness values("FLYING", "FIGHTING", 2);
insert into Effectiveness values("FLYING", "POISON", 1);
insert into Effectiveness values("FLYING", "GROUND", 1);
insert into Effectiveness values("FLYING", "FLYING", 1);
insert into Effectiveness values("FLYING", "PSYCHIC", 1);
insert into Effectiveness values("FLYING", "BUG", 2);
insert into Effectiveness values("FLYING", "ROCK", 0.5);
insert into Effectiveness values("FLYING", "GHOST", 1);
insert into Effectiveness values("FLYING", "DRAGON", 1);
insert into Effectiveness values("FLYING", "DARK", 1);
insert into Effectiveness values("FLYING", "STEEL", 0.5);
insert into Effectiveness values("FLYING", "FAIRY", 1);

/*PSYCHIC*/
insert into Effectiveness values("PSYCHIC", "NORMAL", 1);
insert into Effectiveness values("PSYCHIC", "FIRE", 1);
insert into Effectiveness values("PSYCHIC", "WATER", 1);
insert into Effectiveness values("PSYCHIC", "ELECTRIC", 1);
insert into Effectiveness values("PSYCHIC", "GRASS", 1);
insert into Effectiveness values("PSYCHIC", "ICE", 1);
insert into Effectiveness values("PSYCHIC", "FIGHTING", 2);
insert into Effectiveness values("PSYCHIC", "POISON", 2);
insert into Effectiveness values("PSYCHIC", "GROUND", 1);
insert into Effectiveness values("PSYCHIC", "FLYING", 1);
insert into Effectiveness values("PSYCHIC", "PSYCHIC", 0.5);
insert into Effectiveness values("PSYCHIC", "BUG", 1);
insert into Effectiveness values("PSYCHIC", "ROCK", 1);
insert into Effectiveness values("PSYCHIC", "GHOST", 1);
insert into Effectiveness values("PSYCHIC", "DRAGON", 1);
insert into Effectiveness values("PSYCHIC", "DARK", 0);
insert into Effectiveness values("PSYCHIC", "STEEL", 0.5);
insert into Effectiveness values("PSYCHIC", "FAIRY", 1);

/*BUG*/
insert into Effectiveness values("BUG", "NORMAL", 1);
insert into Effectiveness values("BUG", "FIRE", 0.5);
insert into Effectiveness values("BUG", "WATER", 1);
insert into Effectiveness values("BUG", "ELECTRIC", 1);
insert into Effectiveness values("BUG", "GRASS", 2);
insert into Effectiveness values("BUG", "ICE", 1);
insert into Effectiveness values("BUG", "FIGHTING", 0.5);
insert into Effectiveness values("BUG", "POISON", 0.5);
insert into Effectiveness values("BUG", "GROUND", 1);
insert into Effectiveness values("BUG", "FLYING", 0.5);
insert into Effectiveness values("BUG", "PSYCHIC", 2);
insert into Effectiveness values("BUG", "BUG", 1);
insert into Effectiveness values("BUG", "ROCK", 1);
insert into Effectiveness values("BUG", "GHOST", 0.5);
insert into Effectiveness values("BUG", "DRAGON", 1);
insert into Effectiveness values("BUG", "DARK", 2);
insert into Effectiveness values("BUG", "STEEL", 0.5);
insert into Effectiveness values("BUG", "FAIRY", 0.5);

/*ROCK*/
insert into Effectiveness values("ROCK", "NORMAL", 1);
insert into Effectiveness values("ROCK", "FIRE", 2);
insert into Effectiveness values("ROCK", "WATER", 1);
insert into Effectiveness values("ROCK", "ELECTRIC", 1);
insert into Effectiveness values("ROCK", "GRASS", 1);
insert into Effectiveness values("ROCK", "ICE", 2);
insert into Effectiveness values("ROCK", "FIGHTING", 0.5);
insert into Effectiveness values("ROCK", "POISON", 1);
insert into Effectiveness values("ROCK", "GROUND", 0.5);
insert into Effectiveness values("ROCK", "FLYING", 2);
insert into Effectiveness values("ROCK", "PSYCHIC", 1);
insert into Effectiveness values("ROCK", "BUG", 2);
insert into Effectiveness values("ROCK", "ROCK", 1);
insert into Effectiveness values("ROCK", "GHOST", 1);
insert into Effectiveness values("ROCK", "DRAGON", 1);
insert into Effectiveness values("ROCK", "DARK", 1);
insert into Effectiveness values("ROCK", "STEEL", 0.5);
insert into Effectiveness values("ROCK", "FAIRY", 1);

/*GHOST*/
insert into Effectiveness values("GHOST", "NORMAL", 0);
insert into Effectiveness values("GHOST", "FIRE", 1);
insert into Effectiveness values("GHOST", "WATER", 1);
insert into Effectiveness values("GHOST", "ELECTRIC", 1);
insert into Effectiveness values("GHOST", "GRASS", 1);
insert into Effectiveness values("GHOST", "ICE", 1);
insert into Effectiveness values("GHOST", "FIGHTING", 1);
insert into Effectiveness values("GHOST", "POISON", 1);
insert into Effectiveness values("GHOST", "GROUND", 1);
insert into Effectiveness values("GHOST", "FLYING", 1);
insert into Effectiveness values("GHOST", "PSYCHIC", 2);
insert into Effectiveness values("GHOST", "BUG", 1);
insert into Effectiveness values("GHOST", "ROCK", 1);
insert into Effectiveness values("GHOST", "GHOST", 2);
insert into Effectiveness values("GHOST", "DRAGON", 1);
insert into Effectiveness values("GHOST", "DARK", 0.5);
insert into Effectiveness values("GHOST", "STEEL", 1);
insert into Effectiveness values("GHOST", "FAIRY", 1);

/*DRAGON*/
insert into Effectiveness values("DRAGON", "NORMAL", 1);
insert into Effectiveness values("DRAGON", "FIRE", 1);
insert into Effectiveness values("DRAGON", "WATER", 1);
insert into Effectiveness values("DRAGON", "ELECTRIC", 1);
insert into Effectiveness values("DRAGON", "GRASS", 1);
insert into Effectiveness values("DRAGON", "ICE", 1);
insert into Effectiveness values("DRAGON", "FIGHTING", 1);
insert into Effectiveness values("DRAGON", "POISON", 1);
insert into Effectiveness values("DRAGON", "GROUND", 1);
insert into Effectiveness values("DRAGON", "FLYING", 1);
insert into Effectiveness values("DRAGON", "PSYCHIC", 1);
insert into Effectiveness values("DRAGON", "BUG", 1);
insert into Effectiveness values("DRAGON", "ROCK", 1);
insert into Effectiveness values("DRAGON", "GHOST", 1);
insert into Effectiveness values("DRAGON", "DRAGON", 2);
insert into Effectiveness values("DRAGON", "DARK", 1);
insert into Effectiveness values("DRAGON", "STEEL", 0.5);
insert into Effectiveness values("DRAGON", "FAIRY", 0);

/*DARK*/
insert into Effectiveness values("DARK", "NORMAL", 1);
insert into Effectiveness values("DARK", "FIRE", 1);
insert into Effectiveness values("DARK", "WATER", 1);
insert into Effectiveness values("DARK", "ELECTRIC", 1);
insert into Effectiveness values("DARK", "GRASS", 1);
insert into Effectiveness values("DARK", "ICE", 1);
insert into Effectiveness values("DARK", "FIGHTING", 0.5);
insert into Effectiveness values("DARK", "POISON", 1);
insert into Effectiveness values("DARK", "GROUND", 1);
insert into Effectiveness values("DARK", "FLYING", 1);
insert into Effectiveness values("DARK", "PSYCHIC", 2);
insert into Effectiveness values("DARK", "BUG", 1);
insert into Effectiveness values("DARK", "ROCK", 1);
insert into Effectiveness values("DARK", "GHOST", 2);
insert into Effectiveness values("DARK", "DRAGON", 1);
insert into Effectiveness values("DARK", "DARK", 0.5);
insert into Effectiveness values("DARK", "STEEL", 1);
insert into Effectiveness values("DARK", "FAIRY", 0.5);

/*STEEL*/
insert into Effectiveness values("STEEL", "NORMAL", 1);
insert into Effectiveness values("STEEL", "FIRE", 0.5);
insert into Effectiveness values("STEEL", "WATER", 0.5);
insert into Effectiveness values("STEEL", "ELECTRIC", 0.5);
insert into Effectiveness values("STEEL", "GRASS", 1);
insert into Effectiveness values("STEEL", "ICE", 2);
insert into Effectiveness values("STEEL", "FIGHTING", 1);
insert into Effectiveness values("STEEL", "POISON", 1);
insert into Effectiveness values("STEEL", "GROUND", 1);
insert into Effectiveness values("STEEL", "FLYING", 1);
insert into Effectiveness values("STEEL", "PSYCHIC", 1);
insert into Effectiveness values("STEEL", "BUG", 1);
insert into Effectiveness values("STEEL", "ROCK", 2);
insert into Effectiveness values("STEEL", "GHOST", 1);
insert into Effectiveness values("STEEL", "DRAGON", 1);
insert into Effectiveness values("STEEL", "DARK", 1);
insert into Effectiveness values("STEEL", "STEEL", 0.5);
insert into Effectiveness values("STEEL", "FAIRY", 2);

/*FAIRY*/
insert into Effectiveness values("FAIRY", "NORMAL", 1);
insert into Effectiveness values("FAIRY", "FIRE", 0.5);
insert into Effectiveness values("FAIRY", "WATER", 1);
insert into Effectiveness values("FAIRY", "ELECTRIC", 1);
insert into Effectiveness values("FAIRY", "GRASS", 1);
insert into Effectiveness values("FAIRY", "ICE", 1);
insert into Effectiveness values("FAIRY", "FIGHTING", 2);
insert into Effectiveness values("FAIRY", "POISON", 0.5);
insert into Effectiveness values("FAIRY", "GROUND", 1);
insert into Effectiveness values("FAIRY", "FLYING", 1);
insert into Effectiveness values("FAIRY", "PSYCHIC", 1);
insert into Effectiveness values("FAIRY", "BUG", 1);
insert into Effectiveness values("FAIRY", "ROCK", 1);
insert into Effectiveness values("FAIRY", "GHOST", 1);
insert into Effectiveness values("FAIRY", "DRAGON", 2);
insert into Effectiveness values("FAIRY", "DARK", 2);
insert into Effectiveness values("FAIRY", "STEEL", 0.5);
insert into Effectiveness values("FAIRY", "FAIRY", 1);

-- Works up to here

-- Skipping the rest for now, this is enough to show functionality 