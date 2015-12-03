-- This script will be used to populate the pokedex schema

-- At the current moment (1 December, 2015) some entries are left as NULL

-- simply because of time constraints on the project, not all entries could be 

-- completed. For the ones that are, they were used in part to fulfill functional

-- testing with the end-user Android application. All tables and views to grab 

-- necessary data are designed to give the user full pokedex functionality as described 

-- in the database requirements

-- SQL Populate Pokedex (FINAL)
-- Last Edit: 1 December 2015

-- This is the order of insertion to be used if we are to fully populate
-- the database with the respective values, so no dependencies are overlooked
-- INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(PokeNo, Name, Type1, Type2, Description);
-- INSERT INTO PokeStage VALUES(stageNo, pokeNo, evoNo);
-- INSERT INTO MoveList VALUES(MoveNo, Description, Power, Acc, Type);
-- INSERT INTO PokeMoves VALUES(PokeNo, MoveNo);
-- INSERT INTO Effectiveness VALUES(Type1, Type2, Multiplier);


-- Insert all Pokemon (PokeNo, Name, Type1, Type2, Description) into database first
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(001, 'Bulbasaur', 'GRASS', 'POISON',  'Lettuce');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(002, 'Ivysaur', 'GRASS', 'POISON',  'Cabbage patch');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(003, 'Venusaur', 'GRASS', 'POISON',  'Salad');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(004, 'Charmander', 'FIRE', NULL,  'Lizard');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(005, 'Charmeleon', 'FIRE', NULL,  'Cham-e-leon');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(006, 'Charizard', 'FIRE', 'FLYING',  'Flying T-Rex');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(007, 'Squirtle', 'WATER', NULL,  'Squirt gun');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(008, 'Wartortle', 'WATER', NULL,  'Leave gang');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(009, 'Blastoise', 'WATER', NULL,  'Fire hose');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(010, 'Caterpie', 'BUG', NULL,  'Poor Misty');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(011, 'Metapod', 'BUG', NULL,  'Useless');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(012, 'Butterfree', 'BUG', 'FLYING',  'Bug MVP');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(013, 'Weedle', 'BUG', 'POISON',  'Larvae');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(014, 'Kakuna', 'BUG', 'POISON',  'Even more useless');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(015, 'Beedrill', 'BUG', 'POISON',  'Wasp!');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(016, 'Pidgey', 'NORMAL', 'FLYING',  'Pigeon');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(017, 'Pidgeotto', 'NORMAL', 'FLYING',  'Hawk');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(018, 'Pidgeot', 'NORMAL', 'FLYING',  'Harpy''s Eagle');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(019, 'Rattata', 'NORMAL', NULL,  'Ratatatatatata');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(020, 'Raticate', 'NORMAL', NULL,  'Ratatoulie');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(021, 'Spearow', 'NORMAL', 'FLYING',  'Ugly bird');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(022, 'Fearow', 'NORMAL', 'FLYING',  'Vulture');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(023, 'Ekans', 'POISON', NULL,  'Snekk');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(024, 'Arbok', 'POISON', NULL,  'King');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(025, 'Pikachu', 'ELECTRIC', NULL,  'Piiiiiiiika!');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(026, 'Raichu', 'ELECTRIC', NULL,  'Never');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(027, 'Sandshrew', 'GROUND', NULL,  'Never hit');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(028, 'Sandslash', 'GROUND', NULL,  'Sand in the face!');
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(029, 'Nidoran♀', 'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(030, 'Nidorina', 'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(031, 'Nidoqueen', 'POISON', 'GROUND',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(032, 'Nidoran♂', 'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(033, 'Nidorino', 'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(034, 'Nidoking', 'POISON', 'GROUND',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(035, 'Clefairy', 'FAIRY', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(036, 'Clefable', 'FAIRY', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(037, 'Vulpix', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(038, 'Ninetales', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(039, 'Jigglypuff', 'NORMAL', 'FAIRY',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(040, 'Wigglytuff', 'NORMAL', 'FAIRY',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(041, 'Zubat', 'POISON', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(042, 'Golbat', 'POISON', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(043, 'Oddish', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(044, 'Gloom', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(045, 'Vileplume', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(046, 'Paras', 'BUG', 'GRASS',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(047, 'Parasect', 'BUG', 'GRASS',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(048, 'Venonat', 'BUG', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(049, 'Venomoth', 'BUG', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(050, 'Diglett', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(051, 'Dugtrio', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(052, 'Meowth', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(053, 'Persian', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(054, 'Psyduck', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(055, 'Golduck', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(056, 'Mankey', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(057, 'Primeape', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(058, 'Growlithe', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(059, 'Arcanine', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(060, 'Poliwag', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(061, 'Poliwhirl', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(062, 'Poliwrath', 'WATER', 'FIGHTING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(063, 'Abra', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(064, 'Kadabra', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(065, 'Alakazam', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(066, 'Machop', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(067, 'Machoke', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(068, 'Machamp', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(069, 'Bellsprout', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(070, 'Weepinbell', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(071, 'Victreebel', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(072, 'Tentacool', 'WATER', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(073, 'Tentacruel', 'WATER', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(074, 'Geodude', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(075, 'Graveler', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(076, 'Golem', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(077, 'Ponyta', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(078, 'Rapidash', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(079, 'Slowpoke', 'WATER', 'PSYCHIC',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(080, 'Slowbro', 'WATER', 'PSYCHIC',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(081, 'Magnemite', 'ELECTRIC', 'STEEL',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(082, 'Magneton', 'ELECTRIC', 'STEEL',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(083, 'Farfetch''d', 'NORMAL', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(084, 'Doduo', 'NORMAL', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(085, 'Dodrio', 'NORMAL', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(086, 'Seel', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(087, 'Dewgong', 'WATER', 'ICE',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(088, 'Grimer', 'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(089, 'Muk',  'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(090, 'Shellder', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(091, 'Cloyster', 'WATER', 'ICE',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(092, 'Gastly', 'GHOST', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(093, 'Haunter', 'GHOST', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(094, 'Gengar', 'GHOST', 'POISON',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(095, 'Onix', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(096, 'Drowzee', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(097, 'Hypno', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(098, 'Krabby', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(099, 'Kingler', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(100, 'Voltorb', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(101, 'Electrode', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(102, 'Exeggcute', 'GRASS', 'PSYCHIC',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(103, 'Exeggutor', 'GRASS', 'PSYCHIC',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(104, 'Cubone', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(105, 'Marowak', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(106, 'Hitmonlee', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(107, 'Hitmonchan', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(108, 'Lickitung', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(109, 'Koffing', 'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(110, 'Weezing', 'POISON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(111, 'Rhyhorn', 'GROUND', 'ROCK',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(112, 'Rhydon', 'GROUND', 'ROCK',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(113, 'Chansey', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(114, 'Tangela', 'GRASS', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(115, 'Kangaskhan', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(116, 'Horsea', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(117, 'Seadra', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(118, 'Goldeen', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(119, 'Seaking', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(120, 'Staryu', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(121, 'Starmie', 'WATER', 'PSYCHIC',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(122, 'Mr.Mime', 'PSYCHIC', 'FAIRY',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(123, 'Scyther', 'BUG', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(124, 'Jynx', 'ICE', 'PSYCHIC',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(125, 'Electabuzz', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(126, 'Magmar', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(127, 'Pinsir', 'BUG', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(128, 'Tauros', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(129, 'Magikarp', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(130, 'Gyarados', 'WATER', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(131, 'Lapras', 'WATER', 'ICE',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(132, 'Ditto', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(133, 'Eevee', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(134, 'Vaporeon', 'WATER', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(135, 'Jolteon', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(136, 'Flareon', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(137, 'Porygon', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(138, 'Omanyte', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(139, 'Omastar', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(140, 'Kabuto', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(141, 'Kabutops', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(142, 'Aerodactyl', 'ROCK', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(143, 'Snorlax', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(144, 'Articuno', 'ICE', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(145, 'Zapdos', 'ELECTRIC', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(146, 'Moltres', 'FIRE', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(147, 'Dratini', 'DRAGON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(148, 'Dragonair', 'DRAGON', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(149, 'Dragonite', 'DRAGON', 'FLYING',  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(150, 'Mewtwo', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon (PokeNo, Name, Type1, Type2, Description) VALUES(151, 'Mew',  'PSYCHIC', NULL,  NULL);

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
INSERT INTO PokeStage VALUES(3, 7, 034);



-- EEVEE TEST, using new evoSet method based on base pokemon number
INSERT INTO PokeStage VALUES(1, 133, 133);
INSERT INTO PokeStage VALUES(2, 133, 134);
INSERT INTO PokeStage VALUES(2, 133, 135);
INSERT INTO PokeStage VALUES(2, 133, 136);



-- MoveList
-- Moves
-- Some with description
INSERT INTO MoveList VALUES(1, 'Absorb', 'A nutrient-draining attack. The user''s HP is restored by half the damage taken by the target.',
								20, 100, 'GRASS');

INSERT INTO MoveList VALUES(2, 'Acid', 'The opposing Pokemon are attacked with a spray of harsh acid. This may also lower their Sp. Def stats.',
								40, 100, 'POISON');

-- Some without
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 2,'Acid Armor', 'POISON');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 3,'Acid Spray', 'POISON');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 4,'Acrobatics', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 5,'Acupressure', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 6,'Aerial Ace', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 7,'Aeroblast', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 8,'After You', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 9,'Agility', 'PSYCHIC');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 10,'Air Cutter', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 11,'Air Slash', 'FLYING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 12,'Ally Switch', 'PSYCHIC');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 13,'Amnesia', 'PSYCHIC');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 14,'Ancient Power', 'ROCK');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 15,'Aqua Jet', 'WATER');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 16,'Aqua Ring', 'WATER');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 17,'Aqua Tail', 'WATER');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 18,'Arm Thrust', 'FIGHTING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 19,'Aromatherapy', 'GRASS');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 20,'Assist', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 21,'Assurance', 'DARK');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 22,'Astonish', 'GHOST');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 23,'Attack Order', 'BUG');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 24,'Attract', 'NORMAL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 25,'Aura Sphere', 'FIGHTING');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 26,'Aurora Beam', 'ICE');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 27,'Autotomize', 'STEEL');	
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 28,'Avalanche', 'ICE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 29,'Baby-Doll Eyes', 'FAIRY');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 30,'Barrage', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 31,'Barrier', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 32,'Baton Pass', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 33,'Beat Up', 'DARK');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 34,'Belly Drum', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 35,'Bestow', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 36,'Bide', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 37,'Bind', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 38,'Bite', 'DARK');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 39,'Blast Burn', 'FIRE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 40,'Blaze Kick', 'FIRE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 41,'Blizzard', 'ICE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 42,'Block', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 43,'Blue Flare', 'FIRE');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 44,'Body Slam', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 45,'Bolt Strike', 'ELECTRIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 46,'Bone Club', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 47,'Bone Rush', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 48,'Bonemerang', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 49,'Boomburst', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 50,'Bounce', 'FLYING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 51,'Brave Bird', 'FLYING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 52,'Brick Break', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 53,'Brine', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 54,'Bubble', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 55,'Bubble Beam', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 56,'Bug Bite', 'BUG');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 57,'Bug Buzz', 'BUG');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 58,'Bulk Up', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 59,'Bulldoze', 'GROUND');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 60,'Bullet Punch', 'STEEL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 61,'Bullet Seed', 'GRASS');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 62,'Calm Mind', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 63,'Camouflage', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 64,'Captivate', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 65,'Celebrate', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 66,'Charge', 'ELECTRIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 67,'Charge Beam', 'ELECTRIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 68,'Charm', 'FAIRY');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 69,'Chatter', 'FLYING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 70,'Chip Away', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 71,'Circle Throw', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 72,'Clamp', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 73,'Clear Smog', 'POISON');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 74,'Close Combat', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 75,'Coil', 'POISON');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 76,'Comet Punch', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 77,'Confide', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 78,'Confuse Ray', 'GHOST');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 79,'Confusion', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 80,'Constrict', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 81,'Conversion', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 82,'Conversion 2', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 83,'Copycat', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 84,'Cosmic Power', 'PSYCHIC');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 85,'Cotton Guard', 'GRASS');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 86,'Cotton Spore', 'GRASS');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 87,'Counter', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 88,'Covet', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 89,'Crabhammer', 'WATER');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 90,'Crafty Shield', 'FAIRY');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 91,'Cross Chop', 'FIGHTING');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 92,'Cross POISON');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 93,'Crunch', 'DARK');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 94,'Crush Claw', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 95,'Crush Grip', 'NORMAL');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 96,'Curse', 'GHOST');
INSERT INTO MoveList (MoveNo, Name, Type)  VALUES( 97,'Cut', 'NORMAL');



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