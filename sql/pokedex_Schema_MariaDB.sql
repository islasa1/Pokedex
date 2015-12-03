-- MySQL Script generated by MySQL Workbench
-- 12/02/15 23:58:38
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema pokedexx_Pokedex
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pokedexx_Pokedex` ;

-- -----------------------------------------------------
-- Schema pokedexx_Pokedex
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokedexx_Pokedex` DEFAULT CHARACTER SET latin1 ;
USE `pokedexx_Pokedex` ;

-- -----------------------------------------------------
-- Table `pokedexx_Pokedex`.`Effectiveness`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`Effectiveness` (
  `AttackType` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  `DefenseType` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  `Multiplier` FLOAT NOT NULL,
  PRIMARY KEY (`DefenseType`, `AttackType`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_Pokedex`.`MoveList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`MoveList` (
  `MoveNo` INT(11) NOT NULL,
  `Name` VARCHAR(20) NOT NULL,
  `Description` VARCHAR(100) NULL DEFAULT NULL,
  `Power` INT(11) NULL DEFAULT NULL,
  `Accuracy` INT(11) NULL DEFAULT NULL,
  `Type` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  PRIMARY KEY (`MoveNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_Pokedex`.`Pokemon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`Pokemon` (
  `PokeNo` INT(11) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Type1` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NOT NULL,
  `Type2` ENUM('NORMAL', 'FIRE', 'WATER', 'ELECTRIC', 'GRASS', 'ICE', 'FIGHTING', 'POISON', 'GROUND', 'FLYING', 'PSYCHIC', 'BUG', 'GHOST', 'DRAGON', 'STEEL', 'FAIRY', 'ROCK', 'DARK') NULL,
  `Description` VARCHAR(200) NULL,
  `Size` FLOAT NULL,
  `Weight` FLOAT NULL,
  PRIMARY KEY (`PokeNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_Pokedex`.`PokeMoves`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`PokeMoves` (
  `PokeNo` INT(11) NOT NULL,
  `MoveNo` INT(11) NOT NULL,
  INDEX `fk_pokeNo_idx` (`PokeNo` ASC),
  INDEX `fk_moveNo_idx` (`MoveNo` ASC),
  PRIMARY KEY (`PokeNo`, `MoveNo`),
  CONSTRAINT `fk_pokeNo`
    FOREIGN KEY (`PokeNo`)
    REFERENCES `pokedexx_Pokedex`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_moveNo`
    FOREIGN KEY (`MoveNo`)
    REFERENCES `pokedexx_Pokedex`.`MoveList` (`MoveNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pokedexx_Pokedex`.`PokeStage`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`PokeStage` (
  `stageNo` INT NOT NULL,
  `evoNo` INT NOT NULL,
  `PokeNo` INT(11) NOT NULL,
  UNIQUE INDEX `pokeNo_UNIQUE` (`PokeNo` ASC),
  PRIMARY KEY (`PokeNo`),
  CONSTRAINT `fk_PokeStage_PokeNo`
    FOREIGN KEY (`PokeNo`)
    REFERENCES `pokedexx_Pokedex`.`Pokemon` (`PokeNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `pokedexx_Pokedex` ;

-- -----------------------------------------------------
-- Placeholder table for view `pokedexx_Pokedex`.`PokeList`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`PokeList` (`PokeNo` INT, `Name` INT);

-- -----------------------------------------------------
-- Placeholder table for view `pokedexx_Pokedex`.`StandardView`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`StandardView` (`PokeNo` INT, `Type1` INT, `Type2` INT, `Description` INT, `evoNo` INT);

-- -----------------------------------------------------
-- Placeholder table for view `pokedexx_Pokedex`.`AdvancedView`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pokedexx_Pokedex`.`AdvancedView` (`PokeNo` INT, `Type1` INT, `Type2` INT, `Description` INT, `evoNo` INT, `Size` INT, `Weight` INT);

-- -----------------------------------------------------
-- View `pokedexx_Pokedex`.`PokeList`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokedexx_Pokedex`.`PokeList`;
USE `pokedexx_Pokedex`;
CREATE  OR REPLACE VIEW `PokeList` AS SELECT PokeNo, Name FROM Pokemon;

-- -----------------------------------------------------
-- View `pokedexx_Pokedex`.`StandardView`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokedexx_Pokedex`.`StandardView`;
USE `pokedexx_Pokedex`;
CREATE  OR REPLACE VIEW `StandardView` AS SELECT Pokemon.PokeNo, Type1, Type2, Description, evoNo
	FROM Pokemon LEFT JOIN PokeStage ON(Pokemon.PokeNo = PokeStage.PokeNo);

-- -----------------------------------------------------
-- View `pokedexx_Pokedex`.`AdvancedView`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokedexx_Pokedex`.`AdvancedView`;
USE `pokedexx_Pokedex`;
CREATE  OR REPLACE VIEW `AdvancedView` AS SELECT Pokemon.PokeNo, Type1, Type2, Description, evoNo, Size, Weight 
	FROM Pokemon LEFT JOIN PokeStage ON(Pokemon.PokeNo = PokeStage.PokeNo);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
