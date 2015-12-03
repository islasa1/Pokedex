-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Pokedex
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Pokedex
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Pokedex` DEFAULT CHARACTER SET latin1 ;
USE `Pokedex` ;

-- -----------------------------------------------------
-- Table `Pokedex`.`Effectiveness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Effectiveness` (
  `AttackType` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', '') NOT NULL,
  `DefenseType` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', '') NOT NULL,
  `Multiplier` FLOAT NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `Pokedex`.`MoveList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`MoveList` (
  `MoveNo` INT(11) NOT NULL,
  `Description` VARCHAR(100) NULL DEFAULT NULL,
  `Power` INT(11) NULL DEFAULT NULL,
  `Accuracy` INT(11) NULL DEFAULT NULL,
  `Type` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', '') NOT NULL,
  PRIMARY KEY (`MoveNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `Pokedex`.`Pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Pokemon` (
  `PokeNo` INT(11) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Type1` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', '') NOT NULL,
  `Type2` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', '') NULL,
  `Description` VARCHAR(200) NULL,
  PRIMARY KEY (`PokeNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `Pokedex`.`PokeMoves`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`PokeMoves` (
  `PokeNo` INT(11) NOT NULL,
  `MoveNo` INT(11) NOT NULL,
  INDEX `fk_pokeNo_idx` (`PokeNo` ASC),
  INDEX `fk_moveNo_idx` (`MoveNo` ASC),
  CONSTRAINT `fk_pokeNo`
    FOREIGN KEY (`PokeNo`)
    REFERENCES `Pokedex`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_moveNo`
    FOREIGN KEY (`MoveNo`)
    REFERENCES `Pokedex`.`MoveList` (`MoveNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `Pokedex`.`Sprites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Sprites` (
  `Sprite` BLOB NOT NULL,
  `PokeNo` INT(11) NOT NULL,
  PRIMARY KEY (`Sprite`),
  INDEX `fk_PokeNo_idx` (`PokeNo` ASC),
  CONSTRAINT `fk_PokeNo`
    FOREIGN KEY (`PokeNo`)
    REFERENCES `Pokedex`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`Evolutions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`Evolutions` (
  `evoNo` INT NOT NULL,
  `evoStages` INT NOT NULL,
  PRIMARY KEY (`evoNo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Pokedex`.`PokeStage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Pokedex`.`PokeStage` (
  `stageNo` INT NOT NULL,
  `evoNo` INT NOT NULL,
  `pokeNo` INT(11) NOT NULL,
  UNIQUE INDEX `pokeNo_UNIQUE` (`pokeNo` ASC),
  INDEX `fk_evoNo_idx` (`evoNo` ASC),
  CONSTRAINT `fk_pokeNo`
    FOREIGN KEY (`pokeNo`)
    REFERENCES `Pokedex`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_evoNo`
    FOREIGN KEY (`evoNo`)
    REFERENCES `Pokedex`.`Evolutions` (`evoNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
