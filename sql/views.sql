-- Create views for pokemon database

CREATE VIEW PokeList AS SELECT PokeNo, Name FROM Pokemon;

CREATE VIEW StandardView AS SELECT Type1, Type2, Description, evoNo
	FROM Pokemon, PokeStage WHERE ;
	
CREATE VIEW EvoView AS SELECT StageNo, PokeNo FROM PokeStage WHERE evoNo =