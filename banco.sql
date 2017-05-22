-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema SysFornecedor
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SysFornecedor
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SysFornecedor` DEFAULT CHARACTER SET latin1 ;
USE `SysFornecedor` ;

-- -----------------------------------------------------
-- Table `SysFornecedor`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SysFornecedor`.`categoria` (
  `catid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `catdescricao` VARCHAR(100) NOT NULL COMMENT '',
  PRIMARY KEY (`catid`)  COMMENT '',
  UNIQUE INDEX `catdescricao_UNIQUE` (`catdescricao` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 147
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SysFornecedor`.`fornecedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SysFornecedor`.`fornecedores` (
  `forid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `fornome` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `forcontato` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `forfax` VARCHAR(13) NULL DEFAULT NULL COMMENT '',
  `forcelular` VARCHAR(14) NULL DEFAULT NULL COMMENT '',
  `fornomefantasia` VARCHAR(100) NULL DEFAULT NULL COMMENT '',
  `forcnpj` VARCHAR(18) NULL DEFAULT NULL COMMENT '',
  `forobservacao` VARCHAR(200) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`forid`)  COMMENT '',
  UNIQUE INDEX `fornome_UNIQUE` (`fornome` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 731
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SysFornecedor`.`email`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SysFornecedor`.`email` (
  `emid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `emdescricao` VARCHAR(45) NOT NULL COMMENT '',
  `fornecedores_forid` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`emid`)  COMMENT '',
  INDEX `fk_email_fornecedores1_idx1` (`fornecedores_forid` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1070
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SysFornecedor`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SysFornecedor`.`endereco` (
  `endid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `enddescricao` VARCHAR(200) NULL DEFAULT NULL COMMENT '',
  `fornecedores_forid` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`endid`)  COMMENT '',
  INDEX `fk_endereco_fornecedores1_idx1` (`fornecedores_forid` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1040
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SysFornecedor`.`telefone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SysFornecedor`.`telefone` (
  `telid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `telnumero` VARCHAR(45) NOT NULL COMMENT '',
  `fornecedores_forid` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`telid`)  COMMENT '',
  INDEX `fk_telefone_fornecedores_idx` (`fornecedores_forid` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 1662
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SysFornecedor`.`forcat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SysFornecedor`.`forcat` (
  `forcatforid` INT(11) NOT NULL COMMENT '',
  `forcatcatid` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`forcatforid`, `forcatcatid`)  COMMENT '',
  INDEX `fk_fornecedores_has_categoria_categoria1_idx` (`forcatcatid` ASC)  COMMENT '',
  INDEX `fk_fornecedores_has_categoria_fornecedores1_idx` (`forcatforid` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
