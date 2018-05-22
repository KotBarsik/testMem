-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "messages" ---------------------------------
-- CREATE TABLE "messages" -------------------------------------
CREATE TABLE `messages` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`messages` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users` ( 
	`id` Int( 12 ) AUTO_INCREMENT NOT NULL,
	`data` JSON NOT NULL,
	`status` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 126919741;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "messages" ---------------------------------
INSERT INTO `messages`(`id`,`messages`) VALUES ( '1', 'asd' );
INSERT INTO `messages`(`id`,`messages`) VALUES ( '2', '123' );
INSERT INTO `messages`(`id`,`messages`) VALUES ( '3', '123' );
INSERT INTO `messages`(`id`,`messages`) VALUES ( '4', '123' );
INSERT INTO `messages`(`id`,`messages`) VALUES ( '5', '123' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`data`,`status`,`name`) VALUES ( '126919740', '{"lang": "ru"}', 'on', '___ ___' );
INSERT INTO `users`(`id`,`data`,`status`,`name`) VALUES ( '535058976', '{"lang": "en"}', 'on', '. .' );
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


