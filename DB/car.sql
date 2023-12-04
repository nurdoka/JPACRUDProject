-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cardb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cardb` ;

-- -----------------------------------------------------
-- Schema cardb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cardb` DEFAULT CHARACTER SET utf8 ;
USE `cardb` ;

-- -----------------------------------------------------
-- Table `car`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `car` ;

CREATE TABLE IF NOT EXISTS `car` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` INT NULL,
  `color` VARCHAR(45) NULL,
  `body` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS caruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'caruser'@'localhost' IDENTIFIED BY 'caruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'caruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `car`
-- -----------------------------------------------------
START TRANSACTION;
USE `cardb`;
INSERT INTO `car` (`id`, `make`, `model`, `year`, `color`, `body`) VALUES (1, 'Toyota', 'Camry', 2017, 'white', 'sedan');
INSERT INTO `car` (`id`, `make`, `model`, `year`, `color`, `body`) VALUES (2, 'Toyota', 'Rav4', 2018, 'gray', 'crossover');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Honda', 'Accord', 2019, 'blue', 'sedan');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Ford', 'Escape', 2020, 'silver', 'crossover');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Chevrolet', 'Malibu', 2016, 'red', 'sedan');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Nissan', 'Altima', 2021, 'black', 'sedan');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Tesla', 'Model 3', 2022, 'white', 'electric');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Hyundai', 'Tucson', 2019, 'green', 'crossover');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('BMW', 'X5', 2020, 'blue', 'suv');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Mercedes-Benz', 'C-Class', 2018, 'silver', 'sedan');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Audi', 'Q7', 2021, 'black', 'suv');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Volkswagen', 'Jetta', 2017, 'white', 'sedan');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Subaru', 'Outback', 2022, 'gray', 'wagon');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Mazda', 'CX-5', 2019, 'red', 'crossover');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Kia', 'Sorento', 2020, 'blue', 'suv');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Lexus', 'RX', 2018, 'silver', 'crossover');
INSERT INTO `car` (`make`, `model`, `year`, `color`, `body`) VALUES ('Chrysler', '300', 2016, 'black', 'sedan');

COMMIT;

