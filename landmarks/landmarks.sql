-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "category" ---------------------------------
-- CREATE TABLE "category" -------------------------------------
CREATE TABLE `category` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`eng_name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "category_type" ----------------------------
-- CREATE TABLE "category_type" --------------------------------
CREATE TABLE `category_type` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`eng_name` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`category_id` Int( 11 ) NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 36;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "items" ------------------------------------
-- CREATE TABLE "items" ----------------------------------------
CREATE TABLE `items` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`img` JSON NOT NULL,
	`availability` Int( 11 ) NOT NULL,
	`entertainment` Int( 255 ) NOT NULL,
	`long` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`lat` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`description` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`city` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`place` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`cat` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "category" ---------------------------------
INSERT INTO `category`(`id`,`name`,`eng_name`) VALUES ( '1', 'исторические', 'historical' );
INSERT INTO `category`(`id`,`name`,`eng_name`) VALUES ( '2', 'природные', 'natural' );
INSERT INTO `category`(`id`,`name`,`eng_name`) VALUES ( '3', 'техногенные', 'technogenic' );
INSERT INTO `category`(`id`,`name`,`eng_name`) VALUES ( '4', 'культурные', 'cultural' );
-- ---------------------------------------------------------


-- Dump data of "category_type" ----------------------------
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '1', 'археологические', 'archeology', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '2', 'исторические', 'history', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '3', 'архитектурные', 'architecture', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '4', 'дворцы и замки', 'palaces', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '5', 'раскопки', 'excavations', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '6', 'крепости', 'fortresses', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '7', 'религия', 'religion', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '8', 'древние города', 'ancient_cities', '1' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '9', 'скалы', 'cliffs', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '10', 'горы', 'mountains', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '11', 'видовые места', 'species', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '12', 'водопады', 'waterfalls', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '13', 'пещеры', 'caves', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '14', 'моря', 'seas', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '15', 'озера', 'lakes', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '16', 'пляжы', 'beaches', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '17', 'заповедники', 'reserves', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '18', 'реки', 'rivers', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '19', 'родники', 'springs', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '20', 'турстоянки', 'campings', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '21', 'мысы', 'capes', '2' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '22', 'заброшеные', 'neglected', '3' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '23', 'транспорт', 'transport', '3' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '24', 'кемпинг', 'camping', '3' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '25', 'канатные дороги', 'cable_cars', '3' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '26', 'обсервотория', 'observatory', '3' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '27', 'природные', 'underwater', '3' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '28', 'музеи', 'museums', '4' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '29', 'парки', 'parks', '4' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '30', 'театры', 'theaters', '4' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '31', 'зоопарки', 'zoos', '4' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '32', 'аквопарки', 'water_parks', '4' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '33', 'дельфинарии', 'dolphinariums', '4' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '34', 'аквариум', 'aquarium', '4' );
INSERT INTO `category_type`(`id`,`name`,`eng_name`,`category_id`) VALUES ( '35', 'ботанические сады', 'botanical_gardens', '4' );
-- ---------------------------------------------------------


-- Dump data of "items" ------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


