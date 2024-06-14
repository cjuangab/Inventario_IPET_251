-- MySQL Script generated by MySQL Workbench
-- Sun Jun  9 19:12:25 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema inventario_ipet251
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema inventario_ipet251
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inventario_ipet251` ;
-- -----------------------------------------------------
-- Schema inventario_ipet251
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema inventario_ipet251
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inventario_ipet251` ;
USE `inventario_ipet251` ;

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Laboratorio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_ipet251`.`Laboratorio` (
  `idlaboratorio` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `cantidad_alumnos` INT NOT NULL,
  `mentros_cuadrados` INT NOT NULL,
  PRIMARY KEY (`idlaboratorio`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_ipet251`.`Profesor` (
  `dni` VARCHAR(8) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`dni`),
  INDEX `fk_Profesor_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Profesor_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `inventario_ipet251`.`Laboratorio` (`idlaboratorio`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_ipet251`.`Materia` (
  `idmateria` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `programa` VARCHAR(45) NULL,
  `Profesor_dni` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idmateria`),
  INDEX `fk_Materia_Profesor_idx` (`Profesor_dni` ASC) VISIBLE,
  CONSTRAINT `fk_Materia_Profesor`
    FOREIGN KEY (`Profesor_dni`)
    REFERENCES `inventario_ipet251`.`Profesor` (`dni`)
  );


-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Informaticos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_ipet251`.`Informaticos` (
  `idinformaticos` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(15) NOT NULL,
  `n_serie` VARCHAR(25) NOT NULL,
  `n_serie_sec` VARCHAR(25) NULL,
  `origen` VARCHAR(10) NOT NULL,
  `estado` VARCHAR(10) NOT NULL,
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idinformaticos`),
  INDEX `fk_Informaticos_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Informaticos_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `inventario_ipet251`.`Laboratorio` (`idlaboratorio`)
  );


-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Equipamiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_ipet251`.`Equipamiento` (
  `idEquipamiento` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `uso` VARCHAR(10) NULL,
  `marca` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(15) NOT NULL,
  `num_serie` VARCHAR(25) NOT NULL,
  `descripcion` VARCHAR(45) NOT NULL,

  `fecha_calibracion` DATETIME NOT NULL,

  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idEquipamiento`),
  INDEX `fk_Equipamiento_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Equipamiento_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `inventario_ipet251`.`Laboratorio` (`idlaboratorio`)
);



-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Herramental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_ipet251`.`Herramental` (
  `idHerramental` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(15) NOT NULL,
  `num_serie` VARCHAR(25) NOT NULL,
  `uso` VARCHAR(10) NOT NULL,

  `estado` VARCHAR(10) NOT NULL,


  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idHerramental`),
  INDEX `fk_Herramental_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Herramental_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `inventario_ipet251`.`Laboratorio` (`idlaboratorio`)
  );



-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Insumos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_ipet251`.`Insumos` (
  `idInsumos` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(15) NOT NULL,
  `cantidad` INT NOT NULL,
  `unidad` VARCHAR(5) NULL,
  `origen` VARCHAR(15) NOT NULL,
  `vencimiento` DATETIME NULL,
  'estado' VARCHAR(15),
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idInsumos`),
  INDEX `fk_Insumos_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Insumos_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `inventario_ipet251`.`Laboratorio` (`idlaboratorio`)
  );

USE `inventario_ipet251` ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;