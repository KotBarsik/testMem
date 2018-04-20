-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "event_type" -------------------------------
-- CREATE TABLE "event_type" -----------------------------------
CREATE TABLE `event_type` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`name` JSON NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 15;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "events" -----------------------------------
-- CREATE TABLE "events" ---------------------------------------
CREATE TABLE `events` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`title` VarChar( 128 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`text` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`start_time` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
	`stop_time` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
	`event_type` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 12;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`login` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`pwd` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "event_type" -------------------------------
INSERT INTO `event_type`(`id`,`name`) VALUES ( '12', '{"en": "Game", "ru": "Игра11"}' );
INSERT INTO `event_type`(`id`,`name`) VALUES ( '13', '{"en": "Game222", "ru": "Игра11"}' );
INSERT INTO `event_type`(`id`,`name`) VALUES ( '14', '{"en": "test", "ru": "test"}' );
-- ---------------------------------------------------------


-- Dump data of "events" -----------------------------------
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '1', 'О, Счастливчик!11199', '<img src="https://imgholder.ru/323x300/9dbf16/fff&text=image"><div>text text text text</div><h1>asd11asd</h1>', '2018-04-23 07:59:55', '2018-04-18 15:30:08', '12' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '5', '43524', 'asdsd', '2018-01-01 00:00:00', '2018-12-31 00:00:00', '1' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '10', '333333', 'zczcx', '2018-01-02 23:00:00', '2018-01-31 00:00:00', '12' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '11', 'test', 'test', '2018-01-01 00:00:00', '2018-12-01 01:00:00', '14' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`login`,`pwd`) VALUES ( '1', 'stik229@yandex.ru', '202cb962ac59075b964b07152d234b70' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


