create database turnos_Medicos;
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema BASEMEDICA
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BASEMEDICA
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `turnos_Medicos` DEFAULT CHARACTER SET utf8 ;
create database `turnos_Medicos`;
USE `turnos_Medicos` ;

-- -----------------------------------------------------
-- Table `BASEMEDICA`.`Genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS`turnos_Medicos`.`Genero` (
  `idGenero` INT NOT NULL,
  `NOMBRE` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`Provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`Provincia` (
  `idProvincia` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `id_pais` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProvincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`Pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`Pais` (
  `idPais` INT(8) NOT NULL,
  `nombre` CHAR(35) NOT NULL,
  `Provincia_idProvincia` INT NOT NULL,
  PRIMARY KEY (`idPais`),
  INDEX `fk_Pais_Provincia1_idx` (`Provincia_idProvincia` ASC),
  CONSTRAINT `fk_Pais_Provincia1`
    FOREIGN KEY (`Provincia_idProvincia`)
    REFERENCES `turnos_Medicos`.`Provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`PERSONA` (
  `DNI` INT(8) NOT NULL AUTO_INCREMENT,
  `nombre` CHAR(35) NOT NULL,
  `apellido` CHAR(35) NOT NULL,
  `tel` INT(10) NOT NULL,
  `Email` CHAR(10) NULL,
  `genero` INT(2) NOT NULL,
  `clave` CHAR(8) NOT NULL,
  `localidad` CHAR(10) NOT NULL,
  `nacionalidad` CHAR(10) NOT NULL,
  `calle` CHAR(10) NOT NULL,
  `altura` INT(6) NOT NULL,
  `piso dto` CHAR(4) NOT NULL,
  `especialidad` CHAR(10) NOT NULL,
  `Genero_idGenero` INT NOT NULL,
  `Pais_idPais` INT(8) NOT NULL,
  PRIMARY KEY (`DNI`),
  INDEX `fk_PERSONA_Genero1_idx` (`Genero_idGenero` ASC),
  INDEX `fk_PERSONA_Pais1_idx` (`Pais_idPais` ASC),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC),
  CONSTRAINT `fk_PERSONA_Genero1`
    FOREIGN KEY (`Genero_idGenero`)
    REFERENCES `turnos_Medicos`.`Genero` (`idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PERSONA_Pais1`
    FOREIGN KEY (`Pais_idPais`)
    REFERENCES `turnos_Medicos`.`Pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `BASEMEDICA`.`Persona_Matricula`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`Persona_Matricula` (
  `idPersona` INT NOT NULL,
  `Matricula` INT(10) NULL,
  `id_partido` CHAR(10) NULL,
  `PERSONA_DNI` INT(8) NOT NULL,
  `Pais_idPais` INT(8) NOT NULL,
  `Genero_idGenero` INT NOT NULL,
  PRIMARY KEY (`idPersona`),
  INDEX `fk_Persona_Matricula_PERSONA1_idx` (`PERSONA_DNI` ASC),
  INDEX `fk_Persona_Matricula_Pais1_idx` (`Pais_idPais` ASC),
  INDEX `fk_Persona_Matricula_Genero1_idx` (`Genero_idGenero` ASC),
  CONSTRAINT `fk_Persona_Matricula_PERSONA1`
    FOREIGN KEY (`PERSONA_DNI`)
    REFERENCES `turnos_Medicos`.`PERSONA` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_Matricula_Pais1`
    FOREIGN KEY (`Pais_idPais`)
    REFERENCES `turnos_Medicos`.`Pais` (`idPais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Persona_Matricula_Genero1`
    FOREIGN KEY (`Genero_idGenero`)
    REFERENCES `turnos_Medicos`.`Genero` (`idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`Localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`Localidad` (
  `idLocalidad` INT NOT NULL,
  `nombre` VARCHAR(35) NOT NULL,
  `partido` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`idLocalidad`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`Partido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`Partido` (
  `idPartido` INT NOT NULL,
  `nombre` VARCHAR(35) NOT NULL,
  `provincia` VARCHAR(45) NOT NULL,
  `Provincia_idProvincia` INT NOT NULL,
  `Localidad_idLocalidad` INT NOT NULL,
  PRIMARY KEY (`idPartido`),
  INDEX `fk_Partido_Provincia1_idx` (`Provincia_idProvincia` ASC),
  INDEX `fk_Partido_Localidad1_idx` (`Localidad_idLocalidad` ASC),
  CONSTRAINT `fk_Partido_Provincia1`
    FOREIGN KEY (`Provincia_idProvincia`)
    REFERENCES `turnos_Medicos`.`Provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Partido_Localidad1`
    FOREIGN KEY (`Localidad_idLocalidad`)
    REFERENCES `turnos_Medicos`.`Localidad` (`idLocalidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`tipo_email`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`tipo_email` (
  `idtipo_email` INT(2) NOT NULL,
  `nombre` CHAR(35) NOT NULL,
  PRIMARY KEY (`idtipo_email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`Email`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`Email` (
  `idEmail` INT NOT NULL,
  `id_persona` CHAR(15) NOT NULL,
  `id_tipo_email` CHAR(15) NOT NULL,
  `PERSONA_DNI` INT(8) NOT NULL,
  `tipo_email_idtipo_email` INT(2) NOT NULL,
  PRIMARY KEY (`idEmail`),
  INDEX `fk_Email_PERSONA1_idx` (`PERSONA_DNI` ASC),
  INDEX `fk_Email_tipo_email1_idx` (`tipo_email_idtipo_email` ASC),
  CONSTRAINT `fk_Email_PERSONA1`
    FOREIGN KEY (`PERSONA_DNI`)
    REFERENCES `turnos_Medicos`.`PERSONA` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Email_tipo_email1`
    FOREIGN KEY (`tipo_email_idtipo_email`)
    REFERENCES `turnos_Medicos`.`tipo_email` (`idtipo_email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`obra_social`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`obra_social` (
  `idobra_social` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idobra_social`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`paciente` (
  `idpaciente` INT NOT NULL,
  `obra_social` VARCHAR(45) NOT NULL,
  `PERSONA_DNI` INT(8) NOT NULL,
  `obra_social_idobra_social` INT NOT NULL,
  PRIMARY KEY (`idpaciente`),
  INDEX `fk_paciente_PERSONA1_idx` (`PERSONA_DNI` ASC),
  INDEX `fk_paciente_obra_social1_idx` (`obra_social_idobra_social` ASC),
  CONSTRAINT `fk_paciente_PERSONA1`
    FOREIGN KEY (`PERSONA_DNI`)
    REFERENCES `turnos_Medicos`.`PERSONA` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_paciente_obra_social1`
    FOREIGN KEY (`obra_social_idobra_social`)
    REFERENCES `turnos_Medicos`.`obra_social` (`idobra_social`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`tipo_tel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`tipo_tel` (
  `idtipo_tel` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipo_tel`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`persona_tel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`persona_tel` (
  `idpersona_tel` INT NOT NULL,
  `persona` VARCHAR(45) NOT NULL,
  `tel` INT(8) NOT NULL,
  `id_tipo_tel` VARCHAR(45) NOT NULL,
  `PERSONA_DNI` INT(8) NOT NULL,
  `tipo_tel_idtipo_tel` INT NOT NULL,
  PRIMARY KEY (`idpersona_tel`, `PERSONA_DNI`, `tipo_tel_idtipo_tel`),
  INDEX `fk_persona_tel_PERSONA1_idx` (`PERSONA_DNI` ASC),
  INDEX `fk_persona_tel_tipo_tel1_idx` (`tipo_tel_idtipo_tel` ASC),
  CONSTRAINT `fk_persona_tel_PERSONA1`
    FOREIGN KEY (`PERSONA_DNI`)
    REFERENCES `turnos_Medicos`.`PERSONA` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_tel_tipo_tel1`
    FOREIGN KEY (`tipo_tel_idtipo_tel`)
    REFERENCES `turnos_Medicos`.`tipo_tel` (`idtipo_tel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BASEMEDICA`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `turnos_Medicos`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
