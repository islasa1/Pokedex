-- SQL Populate Pokedex (ALPHA)
-- Last Edit: 13 November 2015

-- This is the order of insertion to be used if we are to fully populate
-- the database with the respective values, so no dependencies are overlooked
-- INSERT INTO Pokemon VALUES(PokeNo, Name, Type1, Type2, Description);
-- INSERT INTO Evolutions VALUES(evoNo, evoStages);
-- INSERT INTO PokeStage VALUES(stageNo, pokeNo, evoNo);
-- INSERT INTO Sprites VALUES(Sprite, PokeNo);
-- INSERT INTO MoveList VALUES(MoveNo, Description, Power, Acc, Type);
-- INSERT INTO PokeMoves VALUES(PokeNo, MoveNo);
-- INSERT INTO Effectiveness VALUES(Type1, Type2, Multiplier);


-- Insert all pokemon into database first, we will use the first 9 to test
INSERT INTO Pokemon VALUES(001, 'Bulbasaur', 'GRASS', 'POISON',  'Lettuce');
INSERT INTO Pokemon VALUES(002, 'Ivysaur', 'GRASS', 'POISON',  'Cabbage patch');
INSERT INTO Pokemon VALUES(003, 'Venusaur', 'GRASS', 'POISON',  'Salad');
INSERT INTO Pokemon VALUES(004, 'Charmander', 'FIRE', NULL,  'Lizard');
INSERT INTO Pokemon VALUES(005, 'Charmeleon', 'FIRE', NULL,  'Cham-e-leon');
INSERT INTO Pokemon VALUES(006, 'Charizard', 'FIRE', 'FLYING',  'Flying T-Rex');
INSERT INTO Pokemon VALUES(007, 'Squirtle', 'WATER', NULL,  'Squirt gun');
INSERT INTO Pokemon VALUES(008, 'Wartortle', 'WATER', NULL,  'Leave gang');
INSERT INTO Pokemon VALUES(009, 'Blastoise', 'WATER', NULL,  'Fire hose');
INSERT INTO Pokemon VALUES(010, 'Caterpie', 'BUG', NULL,  'Poor Misty');
INSERT INTO Pokemon VALUES(011, 'Metapod', 'BUG', NULL,  'Useless');
INSERT INTO Pokemon VALUES(012, 'Butterfree', 'BUG', 'FLYING',  'Bug MVP');
INSERT INTO Pokemon VALUES(013, 'Weedle', 'BUG', 'POISON',  'Larvae');
INSERT INTO Pokemon VALUES(014, 'Kakuna', 'BUG', 'POISON',  'Even more useless');
INSERT INTO Pokemon VALUES(015, 'Beedrill', 'BUG', 'POISON',  'Wasp!');
INSERT INTO Pokemon VALUES(016, 'Pidgey', 'NORMAL', 'FLYING',  'Pigeon');
INSERT INTO Pokemon VALUES(017, 'Pidgeotto', 'NORMAL', 'FLYING',  'Hawk');
INSERT INTO Pokemon VALUES(018, 'Pidgeot', 'NORMAL', 'FLYING',  'Harpy''s Eagle');
INSERT INTO Pokemon VALUES(019, 'Rattata', 'NORMAL', NULL,  'Ratatatatatata');
INSERT INTO Pokemon VALUES(020, 'Raticate', 'NORMAL', NULL,  'Ratatoulie');
INSERT INTO Pokemon VALUES(021, 'Spearow', 'NORMAL', 'FLYING',  'Ugly bird');
INSERT INTO Pokemon VALUES(022, 'Fearow', 'NORMAL', 'FLYING',  'Vulture');
INSERT INTO Pokemon VALUES(023, 'Ekans', 'POISON', NULL,  'Snekk');
INSERT INTO Pokemon VALUES(024, 'Arbok', 'POISON', NULL,  'King');
INSERT INTO Pokemon VALUES(025, 'Pikachu', 'ELECTRIC', NULL,  'Piiiiiiiika!');
INSERT INTO Pokemon VALUES(026, 'Raichu', 'ELECTRIC', NULL,  'Never');
INSERT INTO Pokemon VALUES(027, 'Sandshrew', 'GROUND', NULL,  'Never hit');
INSERT INTO Pokemon VALUES(028, 'Sandslash', 'GROUND', NULL,  'Sand in the face!');
INSERT INTO Pokemon VALUES(029, 'Nidoran♀', 'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(030, 'Nidorina', 'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(031, 'Nidoqueen', 'POISON', 'GROUND',  NULL);
INSERT INTO Pokemon VALUES(032, 'Nidoran♂', 'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(033, 'Nidorino', 'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(034, 'Nidoking', 'POISON', 'GROUND',  NULL);
INSERT INTO Pokemon VALUES(035, 'Clefairy', 'FAIRY', NULL,  NULL);
INSERT INTO Pokemon VALUES(036, 'Clefable', 'FAIRY', NULL,  NULL);
INSERT INTO Pokemon VALUES(037, 'Vulpix', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(038, 'Ninetales', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(039, 'Jigglypuff', 'NORMAL', 'FAIRY',  NULL);
INSERT INTO Pokemon VALUES(040, 'Wigglytuff', 'NORMAL', 'FAIRY',  NULL);
INSERT INTO Pokemon VALUES(041, 'Zubat', 'POISON', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(042, 'Golbat', 'POISON', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(043, 'Oddish', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(044, 'Gloom', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(045, 'Vileplume', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(046, 'Paras', 'BUG', 'GRASS',  NULL);
INSERT INTO Pokemon VALUES(047, 'Parasect', 'BUG', 'GRASS',  NULL);
INSERT INTO Pokemon VALUES(048, 'Venonat', 'BUG', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(049, 'Venomoth', 'BUG', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(050, 'Diglett', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon VALUES(051, 'Dugtrio', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon VALUES(052, 'Meowth', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(053, 'Persian', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(054, 'Psyduck', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(055, 'Golduck', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(056, 'Mankey', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon VALUES(057, 'Primeape', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon VALUES(058, 'Growlithe', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(059, 'Arcanine', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(060, 'Poliwag', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(061, 'Poliwhirl', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(062, 'Poliwrath', 'WATER', 'FIGHTING',  NULL);
INSERT INTO Pokemon VALUES(063, 'Abra', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(064, 'Kadabra', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(065, 'Alakazam', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(066, 'Machop', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon VALUES(067, 'Machoke', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon VALUES(068, 'Machamp', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon VALUES(069, 'Bellsprout', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(070, 'Weepinbell', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(071, 'Victreebel', 'GRASS', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(072, 'Tentacool', 'WATER', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(073, 'Tentacruel', 'WATER', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(074, 'Geodude', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon VALUES(075, 'Graveler', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon VALUES(076, 'Golem', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon VALUES(077, 'Ponyta', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(078, 'Rapidash', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(079, 'Slowpoke', 'WATER', 'PSYCHIC',  NULL);
INSERT INTO Pokemon VALUES(080, 'Slowbro', 'WATER', 'PSYCHIC',  NULL);
INSERT INTO Pokemon VALUES(081, 'Magnemite', 'ELECTRIC', 'STEEL',  NULL);
INSERT INTO Pokemon VALUES(082, 'Magneton', 'ELECTRIC', 'STEEL',  NULL);
INSERT INTO Pokemon VALUES(083, 'Farfetch''d', 'NORMAL', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(084, 'Doduo', 'NORMAL', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(085, 'Dodrio', 'NORMAL', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(086, 'Seel', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(087, 'Dewgong', 'WATER', 'ICE',  NULL);
INSERT INTO Pokemon VALUES(088, 'Grimer', 'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(089, 'Muk',  'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(090, 'Shellder', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(091, 'Cloyster', 'WATER', 'ICE',  NULL);
INSERT INTO Pokemon VALUES(092, 'Gastly', 'GHOST', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(093, 'Haunter', 'GHOST', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(094, 'Gengar', 'GHOST', 'POISON',  NULL);
INSERT INTO Pokemon VALUES(095, 'Onix', 'ROCK', 'GROUND',  NULL);
INSERT INTO Pokemon VALUES(096, 'Drowzee', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(097, 'Hypno', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(098, 'Krabby', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(099, 'Kingler', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(100, 'Voltorb', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(101, 'Electrode', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(102, 'Exeggcute', 'GRASS', 'PSYCHIC',  NULL);
INSERT INTO Pokemon VALUES(103, 'Exeggutor', 'GRASS', 'PSYCHIC',  NULL);
INSERT INTO Pokemon VALUES(104, 'Cubone', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon VALUES(105, 'Marowak', 'GROUND', NULL,  NULL);
INSERT INTO Pokemon VALUES(106, 'Hitmonlee', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon VALUES(107, 'Hitmonchan', 'FIGHTING', NULL,  NULL);
INSERT INTO Pokemon VALUES(108, 'Lickitung', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(109, 'Koffing', 'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(110, 'Weezing', 'POISON', NULL,  NULL);
INSERT INTO Pokemon VALUES(111, 'Rhyhorn', 'GROUND', 'ROCK',  NULL);
INSERT INTO Pokemon VALUES(112, 'Rhydon', 'GROUND', 'ROCK',  NULL);
INSERT INTO Pokemon VALUES(113, 'Chansey', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(114, 'Tangela', 'GRASS', NULL,  NULL);
INSERT INTO Pokemon VALUES(115, 'Kangaskhan', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(116, 'Horsea', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(117, 'Seadra', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(118, 'Goldeen', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(119, 'Seaking', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(120, 'Staryu', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(121, 'Starmie', 'WATER', 'PSYCHIC',  NULL);
INSERT INTO Pokemon VALUES(122, 'Mr. Mime', 'PSYCHIC', 'FAIRY',  NULL);
INSERT INTO Pokemon VALUES(123, 'Scyther', 'BUG', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(124, 'Jynx', 'ICE', 'PSYCHIC',  NULL);
INSERT INTO Pokemon VALUES(125, 'Electabuzz', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(126, 'Magmar', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(127, 'Pinsir', 'BUG', NULL,  NULL);
INSERT INTO Pokemon VALUES(128, 'Tauros', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(129, 'Magikarp', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(130, 'Gyarados', 'WATER', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(131, 'Lapras', 'WATER', 'ICE',  NULL);
INSERT INTO Pokemon VALUES(132, 'Ditto', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(133, 'Eevee', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(134, 'Vaporeon', 'WATER', NULL,  NULL);
INSERT INTO Pokemon VALUES(135, 'Jolteon', 'ELECTRIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(136, 'Flareon', 'FIRE', NULL,  NULL);
INSERT INTO Pokemon VALUES(137, 'Porygon', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(138, 'Omanyte', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon VALUES(139, 'Omastar', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon VALUES(140, 'Kabuto', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon VALUES(141, 'Kabutops', 'ROCK', 'WATER',  NULL);
INSERT INTO Pokemon VALUES(142, 'Aerodactyl', 'ROCK', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(143, 'Snorlax', 'NORMAL', NULL,  NULL);
INSERT INTO Pokemon VALUES(144, 'Articuno', 'ICE', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(145, 'Zapdos', 'ELECTRIC', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(146, 'Moltres', 'FIRE', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(147, 'Dratini', 'DRAGON', NULL,  NULL);
INSERT INTO Pokemon VALUES(148, 'Dragonair', 'DRAGON', NULL,  NULL);
INSERT INTO Pokemon VALUES(149, 'Dragonite', 'DRAGON', 'FLYING',  NULL);
INSERT INTO Pokemon VALUES(150, 'Mewtwo', 'PSYCHIC', NULL,  NULL);
INSERT INTO Pokemon VALUES(151, 'Mew',  'PSYCHIC', NULL,  NULL);

INSERT INTO Evolutions VALUES(1, 3);
INSERT INTO Evolutions VALUES(2, 3);
INSERT INTO Evolutions VALUES(3, 3);

INSERT INTO PokeStage VALUES(1, 1, 001);
INSERT INTO PokeStage VALUES(2, 1, 002);
INSERT INTO PokeStage VALUES(3, 1, 003);
INSERT INTO PokeStage VALUES(1, 2, 004);
INSERT INTO PokeStage VALUES(2, 2, 005);
INSERT INTO PokeStage VALUES(3, 2, 006);
INSERT INTO PokeStage VALUES(1, 3, 007);
INSERT INTO PokeStage VALUES(2, 3, 008);
INSERT INTO PokeStage VALUES(3, 3, 009);



-- Works up to here

-- Skipping the rest for now, this is enough to show functionality 