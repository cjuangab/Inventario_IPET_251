CREATE DATABASE IF NOT EXISTS `inventario_ipet251`;

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Laboratorio`
-- -----------------------------------------------------
USE `inventario_ipet251`;
CREATE TABLE IF NOT EXISTS `Laboratorio` (
  `idlaboratorio` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `cantidad_alumnos` INT NOT NULL,
  `metros_cuadrados` INT NOT NULL,
  PRIMARY KEY (`idlaboratorio`)
);

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Profesor` (
  `dni` INT(9) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`dni`),
  INDEX `fk_Profesor_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Profesor_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `Laboratorio` (`idlaboratorio`)
);

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Materia` (
  `idmateria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `programa` VARCHAR(45),
  `Profesor_dni` INT(9) NOT NULL,
  PRIMARY KEY (`idmateria`),
  INDEX `fk_Materia_Profesor_idx` (`Profesor_dni` ASC) VISIBLE,
  CONSTRAINT `fk_Materia_Profesor`
    FOREIGN KEY (`Profesor_dni`)
    REFERENCES `Profesor` (`dni`)
);

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Informaticos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Informaticos` (
  `idinformaticos` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45),
  `marca` VARCHAR(15),
  `modelo` VARCHAR(15),
  `n_serie` VARCHAR(25),
  `n_serie_sec` VARCHAR(25),
  `origen` VARCHAR(10),
  `estado` VARCHAR(10),
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idinformaticos`),
  INDEX `fk_Informaticos_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Informaticos_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `Laboratorio` (`idlaboratorio`)
);

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Equipamiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Equipamiento` (
  `idEquipamiento` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45),
  `uso` VARCHAR(10),
  `marca` VARCHAR(10),
  `modelo` VARCHAR(15),
  `num_serie` VARCHAR(25),
  `descripcion` VARCHAR(45),
  `fecha_calibracion` DATETIME,
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idEquipamiento`),
  INDEX `fk_Equipamiento_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Equipamiento_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `Laboratorio` (`idlaboratorio`)
);

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Herramental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Herramental` (
  `idHerramental` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45),
  `marca` VARCHAR(10),
  `modelo` VARCHAR(15),
  `num_serie` VARCHAR(25),
  `uso` VARCHAR(10),
  `estado` VARCHAR(10),
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idHerramental`),
  INDEX `fk_Herramental_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Herramental_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `Laboratorio` (`idlaboratorio`)
);

-- -----------------------------------------------------
-- Table `inventario_ipet251`.`Insumos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Insumos` (
  `idInsumos` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45),
  `marca` VARCHAR(15),
  `modelo` VARCHAR(15),
  `cantidad` INT,
  `unidad` VARCHAR(5),
  `origen` VARCHAR(15),
  `vencimiento` DATETIME,
  `estado` VARCHAR(15),
  `Laboratorio_idlaboratorio` INT NOT NULL,
  PRIMARY KEY (`idInsumos`),
  INDEX `fk_Insumos_Laboratorio1_idx` (`Laboratorio_idlaboratorio` ASC) VISIBLE,
  CONSTRAINT `fk_Insumos_Laboratorio1`
    FOREIGN KEY (`Laboratorio_idlaboratorio`)
    REFERENCES `Laboratorio` (`idlaboratorio`)
);

USE `inventario_ipet251`;

SHOW TABLES;
DESCRIBE Insumos;
DESCRIBE Profesor;