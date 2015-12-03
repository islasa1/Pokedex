-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema pokedexx_pokedexAlpha
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pokedexx_pokedexAlpha
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokedexx_pokedexAlpha` DEFAULT CHARACTER SET latin1 ;
USE `pokedexx_pokedexAlpha` ;

-- -----------------------------------------------------
-- Table `pokedexx_pokedexAlpha`.`Effectiveness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_pokedexAlpha`.`Effectiveness` (
  `AttackType` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  `DefenseType` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  `Multiplier` FLOAT NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_pokedexAlpha`.`MoveList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_pokedexAlpha`.`MoveList` (
  `MoveNo` INT(11) NOT NULL,
  `Description` VARCHAR(100) NULL DEFAULT NULL,
  `Power` INT(11) NULL DEFAULT NULL,
  `Accuracy` INT(11) NULL DEFAULT NULL,
  `Type` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  PRIMARY KEY (`MoveNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_pokedexAlpha`.`Pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_pokedexAlpha`.`Pokemon` (
  `PokeNo` INT(11) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Type1` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  `Type2` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NULL,
  `Description` VARCHAR(200) NULL,
  PRIMARY KEY (`PokeNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_pokedexAlpha`.`PokeMoves`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_pokedexAlpha`.`PokeMoves` (
  `PokeNo` INT(11) NOT NULL,
  `MoveNo` INT(11) NOT NULL,
  INDEX `fk_pokeNo_idx` (`PokeNo` ASC),
  INDEX `fk_moveNo_idx` (`MoveNo` ASC),
  CONSTRAINT `fkPokeMoves_pokeNo`
    FOREIGN KEY (`PokeNo`)
    REFERENCES `pokedexx_pokedexAlpha`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkPokeMoves_moveNo`
    FOREIGN KEY (`MoveNo`)
    REFERENCES `pokedexx_pokedexAlpha`.`MoveList` (`MoveNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_pokedexAlpha`.`Sprites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_pokedexAlpha`.`Sprites` (
  `Sprite` VARCHAR(40) NOT NULL,
  `PokeNo` INT(11) NOT NULL,
  INDEX `fk_PokeNo_idx` (`PokeNo` ASC),
  PRIMARY KEY (`Sprite`),
  CONSTRAINT `fkSprite_PokeNo`
    FOREIGN KEY (`PokeNo`)
    REFERENCES `pokedexx_pokedexAlpha`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pokedexx_pokedexAlpha`.`Evolutions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_pokedexAlpha`.`Evolutions` (
  `evoNo` INT NOT NULL,
  `evoStages` INT NOT NULL,
  PRIMARY KEY (`evoNo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pokedexx_pokedexAlpha`.`PokeStage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_pokedexAlpha`.`PokeStage` (
  `stageNo` INT NOT NULL,
  `evoNo` INT NOT NULL,
  `PokeNo` INT(11) NOT NULL,
  UNIQUE INDEX `pokeNo_UNIQUE` (`PokeNo` ASC),
  INDEX `fk_evoNo_idx` (`evoNo` ASC),
  CONSTRAINT `fkPokeStage_pokeNo`
    FOREIGN KEY (`PokeNo`)
    REFERENCES `pokedexx_pokedexAlpha`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fkPokeStage_evoNo`
    FOREIGN KEY (`evoNo`)
    REFERENCES `pokedexx_pokedexAlpha`.`Evolutions` (`evoNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
