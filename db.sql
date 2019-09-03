-- MySQL Script generated by MySQL Workbench
-- 2019-09-03 14:49:53 +0530
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ssidb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ssidb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ssidb` DEFAULT CHARACTER SET utf8 ;
USE `ssidb` ;

-- -----------------------------------------------------
-- Table `ssidb`.`govid`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ssidb`.`govid` (
  `idgovid` INT(11) NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NULL DEFAULT NULL,
  `lastname` VARCHAR(45) NULL DEFAULT NULL,
  `streetaddress` VARCHAR(45) NULL DEFAULT NULL,
  `city` VARCHAR(45) NULL DEFAULT NULL,
  `state` VARCHAR(45) NULL DEFAULT NULL,
  `country` VARCHAR(45) NULL DEFAULT NULL,
  `postcode` INT(25) NULL DEFAULT NULL,
  `dob` VARCHAR(45) NULL DEFAULT NULL,
  `did` CHAR(64) NOT NULL,
  PRIMARY KEY (`idgovid`),
  UNIQUE INDEX `did_UNIQUE` (`did` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 41
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ssidb`.`vclist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ssidb`.`vclist` (
  `did` CHAR(64) NOT NULL,
  `id` CHAR(64) NOT NULL,
  `issuer` VARCHAR(255) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `vctext` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;