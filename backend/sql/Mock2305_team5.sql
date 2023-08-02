-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema mock2305_team5_schema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mock2305_team5_schema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mock2305_team5_schema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `mydb`.`user_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user_1` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `mydb`.`timestamps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


-- -----------------------------------------------------
-- Table `mydb`.`timestamps_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`timestamps_1` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);

USE `mock2305_team5_schema` ;

-- -----------------------------------------------------
-- Table `mock2305_team5_schema`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mock2305_team5_schema`.`booking` (
  `booking_id` INT NOT NULL AUTO_INCREMENT,
  `tour_id` INT NULL DEFAULT NULL,
  `full_name` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `phone` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `note` VARCHAR(45) NULL DEFAULT NULL,
  `number_additional_room` INT NULL DEFAULT NULL,
  `create_at` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`booking_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mock2305_team5_schema`.`passenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mock2305_team5_schema`.`passenger` (
  `passenger_id` INT NOT NULL AUTO_INCREMENT,
  `booking_id` INT NULL DEFAULT NULL,
  `full_name` VARCHAR(45) NULL DEFAULT NULL,
  `gender` ENUM('0', '1') NULL DEFAULT NULL,
  `date_of_birth` DATETIME NULL DEFAULT NULL,
  `type` ENUM('0', '1', '2', '3') NULL DEFAULT NULL,
  PRIMARY KEY (`passenger_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
