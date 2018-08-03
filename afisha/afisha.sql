-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "codes" ------------------------------------
-- CREATE TABLE "codes" ----------------------------------------
CREATE TABLE `codes` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`val` VarChar( 50 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
ENGINE = InnoDB
AUTO_INCREMENT = 538;
-- -------------------------------------------------------------
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
AUTO_INCREMENT = 24;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "events" -----------------------------------
-- CREATE TABLE "events" ---------------------------------------
CREATE TABLE `events` ( 
	`id` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`title` VarChar( 128 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`text` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`start_time` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT '0000-00-00 00:00:00',
	`stop_time` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT '0000-00-00 00:00:00',
	`event_type` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 85;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "poster" -----------------------------------
-- CREATE TABLE "poster" ---------------------------------------
CREATE TABLE `poster` ( 
	`id` Int( 255 ) AUTO_INCREMENT NOT NULL,
	`title` VarChar( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`html` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`images` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
	`start` Timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	`stop` Timestamp NOT NULL,
	`typeSentence` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`typeDate` VarChar( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
	`visit` Int( 255 ) NULL DEFAULT '0',
	`click` Int( 255 ) NULL DEFAULT '0',
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 37;
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


-- Dump data of "codes" ------------------------------------
INSERT INTO `codes`(`id`,`val`) VALUES ( '1', '0' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '189', '268777' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '190', '228116' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '191', '257297' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '192', '202596' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '193', '229566' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '194', '273901' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '195', '222970' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '196', '245367' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '197', '212332' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '198', '279652' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '199', '225142' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '200', '220969' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '201', '236465' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '202', '206783' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '203', '252976' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '204', '264883' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '205', '242545' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '206', '205886' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '207', '263173' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '208', '286127' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '209', '272444' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '210', '218127' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '211', '257208' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '212', '213492' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '213', '279027' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '214', '260383' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '215', '241891' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '216', '256885' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '217', '201996' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '218', '288729' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '219', '217213' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '220', '230208' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '221', '256970' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '222', '227878' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '223', '245536' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '224', '284056' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '225', '287964' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '226', '253705' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '227', '202762' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '228', '227358' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '229', '239479' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '230', '213523' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '231', '298650' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '232', '201118' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '233', '261743' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '234', '296930' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '235', '224899' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '236', '236785' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '237', '256400' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '238', '239719' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '239', '272938' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '240', '273509' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '241', '263022' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '242', '242596' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '243', '274916' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '244', '208171' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '245', '204025' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '246', '219086' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '247', '286483' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '248', '268445' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '249', '259747' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '250', '201021' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '251', '278697' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '252', '217673' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '253', '282563' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '254', '296235' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '255', '284549' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '256', '290056' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '257', '210921' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '258', '285152' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '259', '273976' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '260', '284434' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '261', '219020' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '262', '260289' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '263', '242627' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '264', '239339' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '265', '212677' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '266', '250895' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '267', '222210' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '268', '290899' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '269', '219976' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '270', '213179' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '271', '219843' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '272', '272722' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '273', '214195' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '274', '224569' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '275', '201497' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '276', '207947' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '277', '262327' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '278', '220775' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '279', '288143' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '280', '258219' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '281', '276230' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '282', '228152' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '283', '234043' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '284', '283574' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '285', '236686' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '286', '253913' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '287', '268177' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '288', '236266' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '289', '282808' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '290', '230607' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '291', '258017' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '292', '257750' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '293', '257171' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '294', '222781' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '295', '201877' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '296', '200528' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '297', '256493' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '298', '240371' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '299', '229631' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '300', '242231' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '301', '241538' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '302', '216247' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '303', '212349' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '304', '222411' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '305', '213038' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '306', '277665' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '307', '293757' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '308', '270051' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '309', '239307' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '310', '254718' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '311', '215464' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '312', '284704' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '313', '214008' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '314', '205263' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '315', '243333' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '316', '238297' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '317', '253432' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '318', '222370' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '319', '219977' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '320', '282372' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '321', '295590' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '322', '250806' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '323', '203867' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '324', '243438' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '325', '206768' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '326', '217780' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '327', '248006' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '328', '240745' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '329', '269753' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '330', '237735' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '331', '277362' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '332', '273796' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '333', '264194' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '334', '207515' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '335', '274402' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '336', '279406' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '337', '212196' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '338', '205715' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '339', '213185' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '340', '250325' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '341', '229844' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '342', '203330' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '343', '285221' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '344', '256517' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '345', '236019' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '346', '201678' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '347', '235709' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '348', '263290' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '349', '253933' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '350', '287780' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '351', '290742' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '352', '246164' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '353', '273331' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '354', '229222' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '355', '272607' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '356', '279653' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '357', '231673' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '358', '277783' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '359', '223850' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '360', '272245' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '361', '251632' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '362', '241035' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '363', '265239' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '364', '283797' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '365', '231316' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '366', '228146' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '367', '229478' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '368', '243658' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '369', '286205' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '370', '284677' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '371', '204599' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '372', '278136' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '373', '233234' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '374', '214646' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '375', '230344' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '376', '222522' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '377', '283072' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '378', '277462' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '379', '262386' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '380', '274734' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '381', '258715' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '382', '207777' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '383', '226803' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '384', '200333' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '385', '288474' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '386', '290965' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '387', '259944' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '388', '269902' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '389', '213662' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '390', '241071' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '391', '255334' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '392', '230227' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '393', '242980' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '394', '226407' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '395', '226067' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '396', '213608' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '397', '219493' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '398', '276763' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '399', '243041' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '400', '253175' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '401', '241992' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '402', '213950' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '403', '279602' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '404', '219873' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '405', '215550' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '406', '216329' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '407', '213048' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '408', '238298' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '409', '272471' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '410', '274690' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '411', '262390' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '412', '200320' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '413', '283037' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '414', '215356' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '415', '277320' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '416', '260655' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '417', '255327' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '418', '255167' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '419', '287558' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '420', '263699' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '421', '233870' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '422', '200303' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '423', '241560' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '424', '218692' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '425', '295672' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '426', '230131' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '427', '282612' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '428', '200721' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '429', '219425' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '430', '229813' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '431', '299611' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '432', '273506' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '433', '288816' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '434', '241268' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '435', '293679' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '436', '236001' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '437', '299133' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '438', '243983' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '439', '256946' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '440', '204290' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '441', '272658' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '442', '270542' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '443', '244587' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '444', '272349' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '445', '228015' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '446', '235797' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '447', '225217' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '448', '260730' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '449', '226599' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '450', '270925' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '451', '228173' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '452', '266625' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '453', '205182' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '454', '262028' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '455', '209728' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '456', '281710' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '457', '201419' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '458', '282080' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '459', '225229' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '460', '257765' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '461', '233693' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '462', '257698' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '463', '205005' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '464', '238325' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '465', '232836' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '466', '245793' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '467', '203774' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '468', '238970' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '469', '287465' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '470', '205031' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '471', '259375' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '472', '252719' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '473', '276226' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '474', '254540' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '475', '232943' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '476', '234799' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '477', '295286' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '478', '242705' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '479', '263660' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '480', '205318' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '481', '228393' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '482', '250255' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '483', '281231' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '484', '280500' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '485', '266648' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '486', '264075' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '487', '220383' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '488', '298435' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '489', '236529' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '490', '235855' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '491', '296227' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '492', '212755' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '493', '239506' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '494', '273232' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '495', '229511' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '496', '245572' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '497', '223133' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '498', '214302' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '499', '214463' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '500', '275770' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '501', '225314' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '502', '214392' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '503', '215172' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '504', '221605' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '505', '245592' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '506', '226847' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '507', '292975' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '508', '237572' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '509', '205303' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '510', '201333' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '511', '215010' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '512', '280310' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '513', '274584' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '514', '266563' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '515', '241369' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '516', '243151' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '517', '223594' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '518', '287563' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '519', '273330' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '520', '293940' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '521', '253255' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '522', '288016' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '523', '295449' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '524', '232356' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '525', '297475' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '526', '210434' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '527', '230410' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '528', '217051' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '529', '249010' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '530', '233518' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '531', '201834' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '532', '295137' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '533', '230396' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '534', '213292' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '535', '294974' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '536', '270991' );
INSERT INTO `codes`(`id`,`val`) VALUES ( '537', '285165' );
-- ---------------------------------------------------------


-- Dump data of "event_type" -------------------------------
INSERT INTO `event_type`(`id`,`name`) VALUES ( '12', '{"en": "Concert", "ru": "Концерт"}' );
INSERT INTO `event_type`(`id`,`name`) VALUES ( '18', '{"en": "Tale", "ru": "Сказка"}' );
INSERT INTO `event_type`(`id`,`name`) VALUES ( '19', '{"en": "Show", "ru": "Шоу"}' );
INSERT INTO `event_type`(`id`,`name`) VALUES ( '20', '{"en": "Event", "ru": "Мероприятие"}' );
INSERT INTO `event_type`(`id`,`name`) VALUES ( '22', '{"en": "Party", "ru": "Вечеринка"}' );
INSERT INTO `event_type`(`id`,`name`) VALUES ( '23', '{"en": "Holiday", "ru": "Праздник"}' );
-- ---------------------------------------------------------


-- Dump data of "events" -----------------------------------
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '29', 'Фестиваль КВН', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/kvn.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Фестиваль КВН</h1>
<p align="center">Проведение фестиваля КВН стало традиционным для Mriya Resort &amp; SPA. Неделя юмора вместе с лучшими КВН-щиками - идеальное начало лета!</p>
<p>Успейте забронировать билеты, в лучшем курортном комплексе мира!</p>
<p><span style="font-weight: bold;">8 июня 21:30 - 23:00</span></p>
<p><a href="http://unisol-apps.com/apps/mriya/css/mr-brona.html?hotel=7493&amp;special-offer=69629&amp;date=2018-06-08&amp;nights=1">Концерт команды КВН «Плохая компания». Красноярск.</a></p>
<p><span style="font-weight: bold;">9 июня 21:30 - 23:00</span></p>
<p><a href="http://unisol-apps.com/apps/mriya/css/mr-brona.html?hotel=7493&amp;special-offer=69637&amp;date=2018-06-09&amp;nights=1">Концерт команды КВН «Раисы». Иркутск.</a></p>
<p><span style="font-weight: bold;">11 июня 21:30 - 23:00</span></p>
<p><a href="http://unisol-apps.com/apps/mriya/css/mr-brona.html?hotel=7493&amp;special-offer=69643&amp;date=2018-06-11&amp;nights=1">Юмористическое импровизационное шоу «Добрый вечер». От участников проектов "COMEDY БАТТЛ" И "НЕ СПАТЬ" (ТНТ).</a></p>
<p><span style="font-weight: bold;">13 июня 21:30 - 23:00</span></p>
<p><a href="http://unisol-apps.com/apps/mriya/css/mr-brona.html?hotel=7493&amp;special-offer=69648&amp;date=2018-06-13&amp;nights=1">Большой совместный концерт «Раисы», Иркутск и «Плохая компания» Красноярск.</a></p>', '2018-06-09 04:30:00', '2018-06-14 06:00:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '31', '«Добрый вечер»', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://mrdata.mriyaresort.com:5343/mp/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/27-dobriy-vecher.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Шоу&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;&laquo;Добрый вечер&raquo;&lt;span class=&quot;h1span&quot;&gt;Юмористическое&lt;br&gt;импровизационное шоу&lt;/span&gt;&lt;/h1&gt;', '2018-06-12 04:15:00', '2018-06-12 06:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '32', 'Открытие парка «Дримвуд»', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/dreamwood.jpg" alt="">
<p style="display:none">Мероприятие</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Дримвуд<span class="h1span">Торжественное открытие семейного тематического парка</span></h1>
<p>45000 квадратных метров приключений: летающее бревно, водные пушки, башня падения, воздушная дорога, робототехника и многое другое.</p>
<ul class="us-ul">
<li><b>10:30</b> – Начало работы Парка</li>
<li><b>11:30</b> – Торжественная часть</li>
<li><b>20:00</b> – Праздничный концерт</li>
</ul>', '2018-06-12 18:30:00', '2018-06-12 20:30:00', '20' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '33', 'Открытие ЧМ по Футболу', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://mrdata.mriyaresort.com:5343/mp/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/footbol.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Мероприятие&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Открытие&lt;span class=&quot;h1span&quot;&gt;чемпионата мира по футболу С Русланом Нигматуллиным&lt;/span&gt;&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Окунитесь в атмосферу футбола вместе с Mriya Resort &amp; SPA и Русланом Нигмаматуллиным, участником чемпионата мира по футболу в 2002 году в составе сборной России!&lt;/p&gt;
&lt;p&gt;&lt;b&gt;СПОРТИВНЫЙ ЗАЛ, 15:00-16:30&lt;/b&gt;&lt;br&gt;
матч по мини-футболу среди гостей Mriya Resort &amp; Spa&lt;/p&gt;
&lt;p&gt;&lt;b&gt;НОЧНОЙ КЛУБ FOSTER, 17:00-18:00&lt;/b&gt;&lt;br&gt;
торжественное награждение победителей матча по мини-футболу&lt;br&gt;
автограф-сессия Руслана Нигматулина&lt;/p&gt;
&lt;p&gt;&lt;b&gt;НОЧНОЙ КЛУБ FOSTER, 18:00&lt;/b&gt;&lt;br&gt;
трансляция футбольного матча &laquo;Россия &ndash; Саудовская Аравия&raquo;&lt;/p&gt;
&lt;p&gt;&lt;b&gt;НОЧНОЙ КЛУБ FOSTER, 21:00&lt;/b&gt;&lt;br&gt;
специальный гость Dj Ruslan Nigmatullin&lt;/p&gt;
&lt;a class=&quot;us-button-bron&quot; href=&quot;https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&amp;room-type=71168&amp;date=2018-6-14&amp;nights=1&quot;&gt;Купить&lt;/a&gt;', '2018-06-14 22:00:00', '2018-06-15 00:00:00', '20' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '34', 'Однажды в России', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://mrdata.mriyaresort.com:5343/mp/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/odnazhdi-v-rossii.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Шоу&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Однажды в России&lt;span class=&quot;h1span&quot;&gt;Неделя юмора&lt;/span&gt;&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;&lt;b&gt;Устали от повседневной суеты? Значит пора ехать в MRIYA RESORT &amp; SPA!&lt;/b&gt;&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Целую неделю резиденты телеканала ТНТ, участники проекта &laquo;Однажды в России&raquo; будут радовать Вас своими шутками и позитивным настроением!&lt;/p&gt;
&lt;p&gt;Зарядитесь по полной:&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;07 ИЮЛЯ &amp;laquo;ОДНАЖДЫ В КРЫМУ&amp;raquo;&lt;/strong&gt;&lt;/p&gt;

&lt;ul class=&quot;us-ul&quot;&gt;
	&lt;li&gt;21.00  Концерт &amp;laquo;ОДНАЖДЫ В РОССИИ&amp;raquo;, открытие недели.&lt;/li&gt;
	&lt;li&gt;22.30 &amp;laquo;Однажды в Крыму&amp;raquo; PRE PARTY&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;strong&gt;08 ИЮЛЯ &amp;laquo;ОДНАЖДЫ НА МОРЕ&amp;raquo;&lt;/strong&gt;&lt;/p&gt;

&lt;ul class=&quot;us-ul&quot;&gt;
	&lt;li&gt;11:00 &amp;laquo;Водное Поло&amp;raquo; - Среди Гостей&lt;/li&gt;
	&lt;li&gt;16:00   Регата &amp;quot;Гонки на каяках&amp;quot;&lt;/li&gt;
	&lt;li&gt;21:00   Подведение итогов дня&lt;/li&gt;
	&lt;li&gt;21:15   Специальный гость недели Иван Абрамов вечер Stand Up&lt;/li&gt;
	&lt;li&gt;22:30  &amp;laquo;Морская вечеринка&amp;raquo;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;strong&gt;09 ИЮЛЯ. &amp;laquo;ОДНАЖДЫ НА TV&amp;raquo;&lt;/strong&gt;&lt;/p&gt;

&lt;ul class=&quot;us-ul&quot;&gt;
	&lt;li&gt;12:00   &amp;laquo;Водное Поло&amp;raquo;  Гости Vs Артисты  &lt;/li&gt;
	&lt;li&gt;17:00   &amp;laquo;Олимпийские Водные Игры&amp;raquo;          &lt;/li&gt;
	&lt;li&gt;21:15      Подведение итогов дня       &lt;/li&gt;
	&lt;li&gt;22:15    &amp;laquo;Вечер ТV Игр&amp;raquo; *                 &lt;/li&gt;
	&lt;li&gt;22:30    &amp;laquo;TV Вечеринка&amp;raquo;  &lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;strong&gt;10 ИЮЛЯ. &amp;laquo;ОДНАЖДЫ НА ОТДЫХЕ&amp;raquo;&lt;/strong&gt;&lt;/p&gt;

&lt;ul class=&quot;us-ul&quot;&gt;
	&lt;li&gt;11:00   &amp;quot;Минифутбол&amp;quot;  Гости Vs Артисты&lt;/li&gt;
	&lt;li&gt;16.00    Конкурс &amp;quot;Мисс бикини и мистер плавки&amp;quot;&lt;/li&gt;
	&lt;li&gt;21:00    Подведение итогов дня&lt;/li&gt;
	&lt;li&gt;21.00    Концерт &amp;laquo;ОДНАЖДЫ В РОССИИ&amp;raquo;&lt;/li&gt;
	&lt;li&gt;22.30   &amp;quot;Relax  party&amp;quot;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;strong&gt;11 ИЮЛЯ. &amp;laquo;ОДНАЖДЫ В ОТЕЛЕ&amp;raquo;&lt;/strong&gt;&lt;/p&gt;

&lt;ul class=&quot;us-ul&quot;&gt;
	&lt;li&gt;11:00  &amp;laquo;Волейбол&amp;raquo; Гости Vs Артисты               &lt;/li&gt;
	&lt;li&gt;16:00  &amp;laquo;Морские Звезды&amp;raquo; - Развлечения на Воде            &lt;/li&gt;
	&lt;li&gt;21:00    Подведение итогов Дня           &lt;/li&gt;
	&lt;li&gt;21:15    Игра &amp;laquo;Где логика?&amp;raquo;&lt;/li&gt;
	&lt;li&gt;22:30    Вечер караоке &amp;laquo;&amp;laquo;Однажды&amp;raquo; В Караоке&amp;raquo;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;strong&gt;12 ИЮЛЯ  &amp;laquo;ОДНАЖДЫ В 90-Х&amp;raquo;&lt;/strong&gt;&lt;/p&gt;

&lt;ul class=&quot;us-ul&quot;&gt;
	&lt;li&gt;11:00   &amp;quot;Водное поло в Cтиле 90-х&amp;quot; Гости&lt;/li&gt;
	&lt;li&gt;16:00   &amp;quot;Утиные истории&amp;quot;&lt;/li&gt;
	&lt;li&gt;21:00    Подведение итогов дня&lt;/li&gt;
	&lt;li&gt;21:15  &amp;laquo;Квиз, плиз!&amp;raquo; &amp;ndash; интеллектуально-развлекательная игра&lt;/li&gt;
	&lt;li&gt;22:30    Вечеринка &amp;laquo;Однажды в 90-х&amp;raquo;&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;strong&gt;13 ИЮЛЯ &amp;laquo;ОДНАЖДЫ В РОССИИ&amp;raquo;&lt;/strong&gt;&lt;/p&gt;

&lt;ul class=&quot;us-ul&quot;&gt;
	&lt;li&gt;11:00     &amp;laquo;Водное Поло&amp;raquo; Артисты Vs Гости&lt;/li&gt;
	&lt;li&gt;16:00      Флешмоб&lt;/li&gt;
	&lt;li&gt;21:00      Лучшие Моменты Недели &amp;laquo;ОДНАЖДЫ В РОССИИ&amp;raquo;&lt;/li&gt;
	&lt;li&gt;21:15      Концерт &amp;laquo;ОДНАЖДЫ В РОССИИ&amp;raquo;               &lt;/li&gt;
	&lt;li&gt;22:15      Закрытие Фестиваля, фото сессия     &lt;/li&gt;
	&lt;li&gt;22.30     &amp;laquo;Однажды в России After Party&amp;raquo;       &lt;/li&gt;
&lt;/ul&gt;', '2018-07-07 18:00:00', '2018-07-13 20:00:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '35', 'SEREBRO', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/serebro.jpg" alt="">
<p style="display:none">Концерт</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">SEREBRO<span class="h1span">сольный концерт</span></h1>
<p align="center"><b>Насладитесь вечером в компании группы SEREBRO на пляже отеля Mriya Resort & SPA!</b></p>
<p align="center">ДЕСЯТКИ СУПЕРХИТОВ</p>
<p align="center">МИЛЛИОНЫ ПОКЛОННИКОВ</p>
<p align="center">ЭНЕРГИЯ, КОТОРУЮ НЕ УДЕРЖАТЬ</p>
<p align="center">ГРУППА SEREBRO В MRIYA RESORT & SPA!</p>
<a class="us-button-bron" href="https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=71490&date=2018-8-5&nights=1">Купить</a>', '2018-08-05 21:00:00', '2018-08-05 23:00:00', '12' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '37', 'Световое шоу', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/28-svetovoe-show.jpg" alt="">
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Световое шоу</h1>', '2018-08-06 21:15:00', '2018-08-06 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '38', 'ДЖАЗ', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/29-jazz.jpg" alt="">
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">ДЖАЗ</h1>', '2018-08-10 21:15:00', '2018-08-10 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '39', 'Просто шоу', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/23-prosto-show.jpg" alt="">
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Просто шоу</h1>', '2018-08-18 21:00:00', '2018-08-18 23:00:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '40', 'Вечер юмора', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://mrdata.mriyaresort.com:5343/mp/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/14-vecher-yumora.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Шоу&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Вечер юмора&lt;span class=&quot;h1span&quot;&gt;от команды анимации&lt;/span&gt;&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Анимационное шоу с яркими юмористическими номерами, конкурсами, розыгрышами и, конечно же, вашим непосредственным участием.&lt;/p&gt;
&lt;p&gt;Место проведения: &lt;b&gt;Амфитеатр&lt;/b&gt;.&lt;/p&gt;', '2018-06-18 04:15:00', '2018-06-18 06:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '41', 'Феерия огня', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/20-feeria.jpg" alt="">
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Феерия огня</h1>
<p>Место проведения: <b>Амфитеатр </b></p>', '2018-08-09 21:15:00', '2018-08-09 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '43', 'Обратно в СССР', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/21-cccp.jpg" alt="">
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Обратно в СССР</h1>
<p>Место проведения: <b>Амфитеатр </b></p>', '2018-08-10 21:15:00', '2018-08-10 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '45', 'Другая реальность', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/22-drugaya-realnost.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Другая реальность</h1>
<p>Место проведения: <span style="font-weight: bold;">Амфитеатр </span></p>', '2018-08-02 21:15:00', '2018-08-02 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '46', 'Бриллиантовая рука', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/31-bril-ruka.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Бриллиантовая рука</h1>
<p align="center"><span style="font-weight: bold;">Шоу балет Эм Юс</span></p>', '2018-07-31 21:15:00', '2018-07-31 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '47', 'Кальянный пикник', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/kaljan.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Мероприятие&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Кальянный&lt;br /&gt;
	пикник на пляже&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Безлимитные дымные коктейли, пенный танцпол, лучшие диджеи на побережье Чёрного моря.&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Все это ждет Вас на самом ярком Hookah Party этого лета.&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Подробности по телефону:&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;&lt;a href=&quot;tel:+79787003581&quot;&gt;+7 978 700 35 81&lt;/a&gt;&lt;/p&gt;
&lt;button class=&quot;us-button-bron&quot; onclick=&quot;location.href=\'http://www.unisol-apps.com/MYSTYLE/statistic/mriya/form/restoran-php.php?formname=Бронирование%20стола%20Кальянный%20пикник&amp;amp;cat=F%26B\'&quot;&gt;Забронировать стол&lt;/button&gt;', '2018-07-07 16:00:00', '2018-07-07 17:00:00', '20' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '48', 'Мужчины против женщин', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/10-muzchini-protiv.jpg" alt="" />
<p style="display:none">Вечернее шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Мужчины<br />
	против женщин</h1>
<p align="center">Анимационная программа кавер версия тв шоу «Кто сверху?»</p>
<p>Только зрители и смекалка конкурсантов развеют миф о разности полов и наполнят вечер юмором, положительными эмоциями и азартом.</p>
<p>Место проведения: <span style="font-weight: bold;">Амфитеатр</span></p>', '2018-08-01 21:15:00', '2018-08-01 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '49', 'День любви семьи и верности', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/semja.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Мероприятие&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День любви&lt;br /&gt;
	семьи и верности&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Семья &ndash; самая важная часть нашей жизни. Это слово всегда ассоциируется у нас с вечной любовью к родным и близким. И этот день непременно стоит провести в кругу родных. А наша команда анимации поможет вам наполнить его невероятной атмосферой веселья, любви и тепла!&lt;/p&gt;', '2018-07-08 10:30:00', '2018-07-08 11:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '50', 'Караокеstar', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/16-karaokestar.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Караокеstar</h1>
<p align="center">Всех гостей приглашаем на шоу от команды анимации Караоке Star.</p>
<p>Место проведения: <span style="font-weight: bold;">Амфитеатр</span></p>', '2018-08-19 21:00:00', '2018-08-19 23:00:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '51', 'Назад в СССР', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/40-nazad-v-cccp.png&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Шоу&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Назад в СССР&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Наверное, каждый скучает по классикам и футболу с ребятами во дворе, по косичкам и школьному белому фартучку, по пионерским песням и красному галстуку. Всё это наше детство, всё это эпоха СССР. В этот день мы поможем вам снова погрузиться в атмосферу того времени и вновь почувствовать себя детьми.&lt;/p&gt;', '2018-07-18 12:00:00', '2018-07-18 13:00:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '52', 'День сказки', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-skazki.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День сказки&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Сказки являются неотъемлемой частью жизни каждого из нас. Все мы выросли на сказках, они воспитывали нас, учили нас отличать добро и зло, помогали понять что хорошо, а что плохо, дарили нам веру в чудо и волшебство. В этот день мы предлагаем вам окунуться в атмосферу сказки и провести время с известными героями книжек и мультфильмов.&lt;/p&gt;', '2018-07-25 12:00:00', '2018-07-25 13:00:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '53', 'День друзей', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-druzej.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День друзей&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Друг, это особый человек в жизни каждого. Это тот, в ком мы уверены на 100%. Тот, кто не обманет, не предаст и всегда будет рядом! Каждый наш друг это целый мир для нас, мир, который мог бы и не родиться и который родился только благодаря нашей встречи с человеком. Мы приглашаем вас на праздник, который посвящен настоящей дружбе! Приходите провести этот день с нами и не забудьте привести своих друзей!&lt;/p&gt;', '2018-07-25 12:00:00', '2018-07-25 13:00:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '54', 'Кто крайний?', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/30-kto-krainj.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Кто крайний?</h1>', '2018-08-04 21:15:00', '2018-08-04 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '55', 'День Морского Флота', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-vmf.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Морского Флота&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;В день Военно-морского флота мы поздравляем всех тех, кто отдаёт долг Родине на воде, и приглашаем всех гостей нашего отеля отпраздновать этот день вместе с нами. Моряки всегда считались самыми мужественными и стойкими людьми, которым по плечу любая проблема. Мы предлагаем вам попробовать себя в этой роли и проверить, смогли бы вы стать настоящим моряком.&lt;/p&gt;', '2018-07-29 10:30:00', '2018-07-29 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '56', 'Остров сокровищ', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/43-ostrov-sokrovish.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Остров сокровищ</h1>
<p>Место проведения: <span style="font-weight: bold;">Амфитеатр</span>.</p>', '2018-08-03 21:10:00', '2018-08-03 23:10:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '57', 'День ВДВ', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-vdv.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День ВДВ&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;2 августа &ndash; памятная дата. В этот день свой день рождения отмечают Военно-десантные войска! И мы предлагаем вам провести этот великий день вместе с нами и отпраздновать его по всем принятым традициям. Каждый желающий сможет пройти посвящение в десантники, пройти полную военную подготовку, и искупаться с нами в фонтане с возгласом: &laquo;За ВДВ!&raquo;&lt;/p&gt;', '2018-08-02 12:00:00', '2018-08-02 14:00:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '58', 'День Комиксов', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-komiksov.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Комиксов&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Если вы знакомы с такими персонажами, как Бэтмен, Супермен и Человек-Паук, то вы просто обязаны провести этот день с нами. Сегодня мы погрузим вас в мир борьбы со злом &ndash; мир Комиксов.&lt;/p&gt;', '2018-08-05 10:30:00', '2018-08-05 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '59', 'День Рок-н-Ролла', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-rnr.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Рок-н-Ролла&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Рок-н-ролл жив! Если вы тоже так считаете, то мы ждем вас отрываться и зажигать вместе с нами под звуки гитары и саксофона. Сегодня вас ждёт много веселья, танцев и хорошей музыки!&lt;/p&gt;', '2018-08-08 10:30:00', '2018-08-08 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '60', 'Иванушки International', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/ivanushki.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Концерт&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Иванушки international&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;в Mriya Resort &amp;amp; SPA!&lt;/span&gt;&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Они - это легенда,&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Их музыка - живет в душе,&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Они &ndash; герои целого поколения,&lt;/p&gt;&lt;a class=&quot;us-button-bron&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/mr-brona.html?hotel=7493&amp;amp;room-type=71521&amp;amp;date=2018-8-17&amp;amp;nights=1&quot;&gt;Купить&lt;/a&gt;', '2018-08-17 21:00:00', '2018-08-17 23:00:00', '12' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '61', 'День Мультиков', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/den-mult.jpg" alt="" />
<p style="display:none">Праздник</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">День Мультиков</h1>
<p align="center">Все мы выросли на мультфильмах. Нет того человека, который не знал бы Чебурашку и Крокодила Гену, Винни-Пуха и Пяточка, Микки-Мауса и Дональда Дака. Мультики - это яркие картинки, это веселые истории, это когда добро побеждает зло! В этот день мы предлагаем вам окунуться в эту сказочную атмосферу и провести время с известными героями мультфильмов.</p>', '2018-08-19 10:30:00', '2018-08-19 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '62', 'День Российского Кино', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-kino.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День&lt;br /&gt;
	Российского Кино&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Сегодня в нашем отеле мы отмечаем День российского кино! Это не только профессиональный праздник для создателей фильмов и актеров, но и, конечно же, праздник любителей отечественных кинолент! Мы ждём каждого, кто любит и уважает российское кино, провести этот день вместе с нами!&lt;/p&gt;', '2018-08-26 10:30:00', '2018-08-26 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '63', 'Виктория Дайнеко', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/vika-daineko.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Концерт&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Виктория Дайнеко&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Концерт несравненной&lt;br /&gt;
		Виктории Дайнеко!&lt;/span&gt;&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Тёплое солнце, целебный воздух и невероятная роскошь Mriya Resort &amp;amp; SPA!&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Бронируйте номера и&lt;br /&gt;
	приезжайте к нам в гости!&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Подробности по телефону:&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;&lt;a href=&quot;tel:88005006847&quot;&gt;8 800 500 68 47&lt;/a&gt;&lt;/p&gt;&lt;a class=&quot;us-button-bron&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/mr-brona.html?hotel=7493&amp;amp;room-type=71514&amp;amp;date=2018-8-27&amp;amp;nights=1&quot;&gt;Купить&lt;/a&gt;', '2018-08-27 21:00:00', '2018-08-27 23:00:00', '12' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '64', 'День Знаний', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-znanij.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Знаний&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;День знаний &mdash; это первые звонки и волнения, море цветов и белых бантов, и, конечно, традиционные уроки мира. Это самый долгожданный день для тех, кто впервые переступит школьный порог. Мы  предлагаем вам посетить нашу праздничную линейку и конечно первый урок в новом школьном году.&lt;/p&gt;', '2018-09-01 10:30:00', '2018-09-01 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '65', 'Юлия Савичева', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/savicheva.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Концерт&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Юлия Савичева&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Концерт несравненной&lt;br /&gt;
		Юлии Савичевой!&lt;/span&gt;&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Тёплое солнце, целебный воздух и невероятная роскошь Mriya Resort &amp;amp; SPA!&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Бронируйте номера и&lt;br /&gt;
	приезжайте к нам в гости!&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;Подробности по телефону:&lt;/p&gt;
&lt;p align=&quot;center&quot;&gt;&lt;a href=&quot;tel:88005006847&quot;&gt;8 800 500 68 47&lt;/a&gt;&lt;/p&gt;&lt;a class=&quot;us-button-bron&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/mr-brona.html?hotel=7493&amp;amp;room-type=72163&amp;amp;date=2018-9-3&amp;amp;nights=1&quot;&gt;Купить&lt;/a&gt;', '2018-09-03 21:00:00', '2018-09-03 23:00:00', '12' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '66', 'Пиратский День', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/den-piratov.jpg" alt="" />
<p style="display:none">Праздник</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Пиратский День</h1>
<p align="center">Карамба! На абордаж!</p>
<p align="center">Наверника вы слышали эти фразы. В этот день мы предлагаем вам окунутся в мир пиратов. Вы сможете отыскать сундук с сокровищами, а так же затопить несколько кораблей своего противника.</p>
<p align="center">Свистать всех наверх!</p>', '2018-09-09 10:30:00', '2018-09-09 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '67', 'День Вечеринок', '<link rel="stylesheet" type="text/css" href="https://mrdata.mriyaresort.com:5343/mp/css/afisha.css" /><img class="us-main-img" src="https://mrdata.mriyaresort.com:5343/mp/foto/afisha/den-vecherinok.jpg" alt="" />
<p style="display:none">Вечеринка</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">День Вечеринок</h1>
<p align="center">Вечеринка - слово в котором скрывается буря эмоций и хорошее настроение. Лето закончилось, наступила осень и ни в коем случае не стоит огорчаться по этому поводу. Потому что в нашем отеле лето длится круглый год. Так и атмосфера вечеринок не утихает. Мы приглашаем вас принять участие в этом празднике.</p>', '2018-09-05 10:30:00', '2018-09-05 12:30:00', '22' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '68', 'Битва фамилий', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/32-bitva-familij.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Битва фамилий</h1>
<p><span style="font-weight: bold;">Место проведения:</span> Амфитеатр</p>', '2018-08-08 21:15:00', '2018-08-08 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '69', 'Вечер юмора', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css" /><img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/42-vecher-yumora.jpg" alt="" />
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Вечер юмора</h1>
<p>Место проведения: <span style="font-weight: bold;">Амфитеатр</span>.</p>', '2018-08-12 21:00:00', '2018-08-12 23:00:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '70', 'Олимпийские Водные Игры', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/olimpic.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Олимпийские&lt;br /&gt;
	Водные Игры&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Этот день мы решили полностью посвятить спорту! Сегодня мы ждём вас, чтобы устроить настоящие олимпийские соревнования на воде. Придите и докажите, что вы достойны звания чемпиона Водных Олимпийских игр отеля Mriya Resort &amp;amp; SPA.&lt;/p&gt;', '2018-08-12 10:30:00', '2018-08-12 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '71', 'День Танцев', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-tancev.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Танцев&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Как говорилось в одном известном фильме: &quot;В этом мире на тебя наваливается столько разных проблем, а когда ты танцуешь, ты свободен&quot;. И ведь это действительно так! Так дайте же себе расслабиться и окунуться в мир танцев. Танцы - это сила! Танцы - это энергия! Танцы - это жизнь! Именно под этими лозунгами пройдет этот день.  Мы ждём всех любителей танцев провести этот день с нами.&lt;/p&gt;', '2018-08-15 10:30:00', '2018-08-15 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '72', 'День Цирка', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-cirka.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Цирка&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Цирк &mdash; это целый мир, знакомый всем нам с детства. Именно в цирке можно встретить веселых клоунов, смелых гимнастов и отважных акробатов, фокусников, дрессировщиков, и экзотических зверей, выполняющих сложные трюки. Каждое цирковое выступление - это что-то невероятное и захватывающее дух! Если тебе знакомо это чувство, то мы ждём тебя сегодня, чтобы провести день, посвященный Цирку, весте с нами.&lt;/p&gt;', '2018-08-22 10:30:00', '2018-08-22 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '73', 'День Нептуна', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-neptuna.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Нептуна&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Нет того места на морском побережье, где не отмечали бы День Нептуна! Мы не могли обойти этот праздник стороной! В этот день вас ждет встреча с царем всех морей и океанов - Нептуном и с другими обитателями морских глубин, а также главными покорителями морей - пиратами! Вас ждут веселые водные забавы и невероятная атмосфера веселья и радости!&lt;/p&gt;', '2018-08-29 10:30:00', '2018-08-29 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '74', 'День Туризма', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-turizma.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Туризма&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Всемирный день туризма &mdash; это день &laquo;открытых дверей&raquo; в любой точке мира. Путешествовать, как же это прекрасно! Нет ни одного человека на земле, который бы не любил странствовать по свету, быть первооткрывателем новых неизведанных уголков земли. Праздник каждого, кто ощущает себя туристом.&lt;/p&gt;', '2018-09-12 10:30:00', '2018-09-12 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '75', 'День Интернета', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-interneta.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Интернета&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Сегодня мы не видим ни дня без интернета. Интернет - это место для общения, большая энциклопедия и мир развлечений для каждого современного человека. Так давайте же посвятим этот день этой всемирной паутине.&lt;/p&gt;', '2018-09-16 10:30:00', '2018-09-16 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '76', 'День Спорта', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-sporta.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Спорта&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Спорт. Как много значит это слово! Спорт окружает нас практически с самого рождения, в детском саду, школе, институте. Многие готовы посвятить спорту всю свою жизнь. Популярность спорта и здорового образа жизни растет с каждым днем! И мы решили не отставать и посвятить этот день спорту!&lt;/p&gt;', '2018-09-19 10:30:00', '2018-09-19 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '77', 'День Фото', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-foto.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Фото&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Фото - это небольшой фрагмент нашей жизни. Каждый день мы стараемся запечатлить как можно больше моментов, чтобы составить полную картинку наших воспоминания из маленьких кусочков, которые мы сохраняем благодаря фотографиям. Так зарядим же наши фотоаппараты и гаджеты, и запомним этот день полностью, делая как можно больше фотографий вашего отдыха! А мы поможем наполнить этот день массой крутых кадров!&lt;/p&gt;', '2018-09-23 10:30:00', '2018-09-23 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '78', 'День Мира', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-mira.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Мира&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Мир во всем мире - что может быть важнее? Как прекрасно жить одной большой и дружной семьей, радоваться каждому новому дню, дышать чистым воздухом и встречать своих детей со школы с улыбкой на лице. Мир всегда был и будет необходимостью всего человечества. Мы ждём вас сегодня провести этот день с нами и наполнить его добротой, любовью и нашими улыбками.&lt;/p&gt;', '2018-09-30 10:30:00', '2018-09-30 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '79', 'Где логика?', '<link rel="stylesheet" type="text/css" href="https://www.unisol-apps.com/apps/mriya/css/afisha.css">
<img class="us-main-img" src="http://unisol-apps.com/apps/mriya/foto/afisha/45-gde-logika.jpg" alt="">
<p style="display:none">Шоу</p>
<h1 style="font-family:\'PFDinTextCondPro-Thin\';">Где логика?</h1>
<p>Игра является аналогом нашумевшей на телевидении одноименной передачи, где звезды пытаются быть остроумными и одновременно логичными.</p>
<p><b>Место проведения:</b> Амфитеатр</p>', '2018-08-13 21:00:00', '2018-08-13 23:00:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '80', 'Сinema', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/37-cinema.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Шоу&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Сinema&lt;/h1&gt;
&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Место проведения:&lt;/span&gt; Амфитеатр&lt;/p&gt;', '2018-08-07 21:15:00', '2018-08-07 23:15:00', '19' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '81', 'День Науки', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-nauki.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Науки&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Мы хотим посвятить этот день науке, ведь в современно обществе Наука - это не просто слово, это весь наш мир! Нет ни одной сферы деятельности, которая не представляла бы собой какую-либо науку. Каждый ученый вносит невероятный вклад в историю нашего существования. Мы попробуем проникнуть в этот мир и почувствовать себя настоящим профессором всех наук.&lt;/p&gt;', '2018-10-03 10:30:00', '2018-10-03 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '82', 'День Учителя', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-uchitelya.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День Учителя&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Международный день учителя, отмечаемый сегодня более, чем в ста странах мира, это еще один замечательный повод поздравить учителей, профессоров и всех остальных специалистов, задействованных в сфере образования. Сегодня мы еще раз говорим им искреннее спасибо за тот неоценимый вклад, который они делают каждый день, выходя на работу.&lt;/p&gt;', '2018-10-07 10:30:00', '2018-10-07 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '83', 'День TV', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot;&gt;
&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/den-tv.jpg&quot; alt=&quot;&quot;&gt;
&lt;p style=&quot;display:none&quot;&gt;Праздник&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;День TV&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Нынешнее столетие можно смело назвать веком Интернета и компьютерных технологий. Это раньше члены семьи не могли пульт от телевизора поделить, а сегодня в таком поведении нет нужды, ведь можно в любой момент выйти в Сеть и насладиться просмотром каких угодно передач, сериалов, клипов и фильмов в удобное именно для вас время онлайн. И все же телевидение до сих пор играет важную роль в жизни человечества.&lt;/p&gt;', '2018-10-10 10:30:00', '2018-10-10 12:30:00', '23' );
INSERT INTO `events`(`id`,`title`,`text`,`start_time`,`stop_time`,`event_type`) VALUES ( '84', 'Русалочка', '&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;https://www.unisol-apps.com/apps/mriya/css/afisha.css&quot; /&gt;&lt;img class=&quot;us-main-img&quot; src=&quot;http://unisol-apps.com/apps/mriya/foto/afisha/19-rusalka.jpg&quot; alt=&quot;&quot; /&gt;
&lt;p style=&quot;display:none&quot;&gt;Сказка&lt;/p&gt;
&lt;h1 style=&quot;font-family:\'PFDinTextCondPro-Thin\';&quot;&gt;Русалочка&lt;span class=&quot;h1span&quot;&gt;Сказочная постановка&lt;/span&gt;&lt;/h1&gt;
&lt;p align=&quot;center&quot;&gt;Балет ЭМ ЮС. г. Ялта&lt;/p&gt;
&lt;p&gt;Всеми любимый сюжет знакомой с детства сказки о маленькой принцессе морского царства Русалочке. Любовь, море, борьба добра и зла, танец и вокал. Аплодисменты и изумление, вот всё что надо брать с собой.&lt;/p&gt;
&lt;p&gt;Место проведения: &lt;span style=&quot;font-weight: bold;&quot;&gt;Амфитеатр&lt;/span&gt;&lt;/p&gt;', '2018-08-17 21:00:00', '2018-08-17 23:00:00', '18' );
-- ---------------------------------------------------------


-- Dump data of "poster" -----------------------------------
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '16', 'DENTAL CHECK UP', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="css/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2018-dental-check-up.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Dental Check up</h1>
<p>Специально для Вас мы разработали комплексную программу<br><b>Dental check-up</b><br>позволяющую обеспечить эффективную профилактику кариеса и его осложнений на ранних стадиях.</p>
</div>

<div class="us-main" style="margin-top:-30px">

<p>Основными причинами образования, которого является неправильная или недостаточная гигиена полости рта.  Неправильный подбор зубной щетки, зубной пасты или зубного порошка могут привести к образованию налета, который постепенно трансформируется в зубной камень. Обрастающая зубным камнем эмаль со временем темнеет, но это не единственный минус: твердый налет становится источником инфекции и неприятного запаха изо рта, а так же способствует появлению заболеваний, которые могут привести к выпадению зубов.</p>

<p><b>Наша программа Dental check-up в стоматологии для тех, кто старается сохранить здоровье зубов на долгие годы:</b></p>

<ul>
<li>Комплексный осмотр и консультацию врача-стоматолога с составлением плана и схемы лечения;</li>
<li>Ортопантомограмма- 2D( с расшифровкой);</li>
<li>Проф. гигиена полости рта (удаление зубных отложений с поверхности зубов и из-под десны) с помощью: профессионального ультразвукового аппарата и аппарата Air-Flow;</li>
<li>Шлифовка и полировка зубов специальными пастами;</li>
<li>Покрытие зубов десенситайзером для снятия чувствительности, при необходимости.</li>
</ul>

<button class="us-button-bron" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/php/form/uslugi-php.php?formtitle=Запись%20на%20прием&formmail=2&formname=Акция:%20Dental%20Check-up&cat=medicine\'">Запись на прием</button>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', 'mr-menu-akcii-dental-check-up.jpg', '2018-08-03 12:43:24', '2019-01-01 09:00:00', 'Специальное предложение', '0', '13', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '17', 'ПОДАРОЧНЫЕ СЕРТИФИКАТЫ', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="css/mriya.js"></script>
<script src="js/jquery.min.js"></script>
<script>
	function spoiler (aName,objName) {
		if ( $(objName).css(\'display\') == \'none\' ) {
			$(objName).animate({height: \'show\'}, 400);
			$(aName).removeClass(\'dpbox\');
			$(aName).addClass(\'dmbox\');
		} else {
			$(objName).animate({height: \'hide\'}, 200);
			$(aName).removeClass(\'dmbox\');
			$(aName).addClass(\'dpbox\');
		}
	};
</script>
<style>
.accordion button.abox { padding-top:20px; padding-bottom:20px; }
.us-bzap { position:relative; margin:10px 8px 20px 0; }
.us-mimg { width:100%; }
</style>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2018-podaroch-sertif-00.jpg\') right center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">ПОДАРОЧНЫЕ СЕРТИФИКАТЫ<br>MRIYA RESORT & SPA</h1>
<p><b>Выберите роскошные подарки для близких и родных.</b></p>
<p>Подарите незабываемый день в «Ведущем мировом курорте для отдыха» и «Лучшем в Мире оздоровительном курорте».</p>
<p>*По версии всемирных премий World Travel Awards и World Spa Awards.</p>
</div>

<div class="us-main" style="margin-top:-30px">

<h2>СЕРТИФИКАТЫ ДЛЯ ДВОИХ</h2>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox001\'); return false" class="abox dpbox" id="abox001">ПРОГРАММЫ SPA DELANGE</button>
<div id="sbox001">
<img class="us-mimg" src="images/2018-podaroch-sertif-01.jpg" alt="">
<p>Проведите волшебные часы релаксации в новом SPA-центре.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63815&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox002\'); return false" class="abox dpbox" id="abox002">РАЗВЛЕКАТЕЛЬНЫЙ ЦЕНТР METROPOLIS</button>
<div id="sbox002">
<img class="us-mimg" src="images/2018-podaroch-sertif-02.jpg" alt="">
<p>Получите незабываемые эмоции в городе развлечений.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63817&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox003\'); return false" class="abox dpbox" id="abox003">ЧАЙНАЯ ЦЕРЕМОНИЯ</button>
<div id="sbox003">
<img class="us-mimg" src="images/2018-podaroch-sertif-03.jpg" alt="">
<p>Посетите традиционную церемонию в японском саду.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63829&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<h2>СЕРТИФИКАТЫ ДЛЯ НЕГО</h2>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox004\'); return false" class="abox dpbox" id="abox004">ПРОГРАММЫ SPA DELANGE</button>
<div id="sbox004">
<img class="us-mimg" src="images/2018-podaroch-sertif-04.jpg" alt="">
<p>Подарите минуты релаксации и восстановления жизненной силы в новом SPA-центре.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63809&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox005\'); return false" class="abox dpbox" id="abox005">РАЗВЛЕКАТЕЛЬНЫЙ ЦЕНТР METROPOLIS</button>
<div id="sbox005">
<img class="us-mimg" src="images/2018-podaroch-sertif-05.jpg" alt="">
<p>Подарите яркие эмоции от посещения города развлечений.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63817&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox006\'); return false" class="abox dpbox" id="abox006">ЧАЙНАЯ ЦЕРЕМОНИЯ</button>
<div id="sbox006">
<img class="us-mimg" src="images/2018-podaroch-sertif-03.jpg" alt="">
<p>Посетите традиционную церемонию в японском саду.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63829&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<h2>СЕРТИФИКАТЫ ДЛЯ НЕЁ</h2>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox007\'); return false" class="abox dpbox" id="abox007">ПРОГРАММЫ SPA DELANGE</button>
<div id="sbox007">
<img class="us-mimg" src="images/2018-podaroch-sertif-06.jpg" alt="">
<p>Подарите минуты релаксации и восстановления жизненной силы в новом SPA-центре.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63779&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox008\'); return false" class="abox dpbox" id="abox008">КОСМЕТОЛОГИЯ И ОЗДОРОВЛЕНИЕ</button>
<div id="sbox008">
<img class="us-mimg" src="images/2018-podaroch-sertif-07.jpg" alt="">
<p>Позаботьтесь о здоровье близких и подарите услуги медицины и косметологии.</p>
<button class="us-bzap" onclick="location.href=https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63816&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox009\'); return false" class="abox dpbox" id="abox009">ЧАЙНАЯ ЦЕРЕМОНИЯ</button>
<div id="sbox009">
<img class="us-mimg" src="images/2018-podaroch-sertif-03.jpg" alt="">
<p>Посетите традиционную церемонию в японском саду.</p>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?hotel=7493&room-type=63829&nights=0&arrival-date-offset=0\'">Подробнее</button>
</div>
</div>

<p>Обращаем Ваше внимание на то, что сертификаты «Для неё» и «Для него» рассчитаны на одного гостя. Если Вы хотите посетить Mriya Resort & SPA вместе, Вы можете оплатить «Дневное пребывание» с питанием (полный пансион) или без питания. Для этого выберите подарочный сертификат и нажмите снизу «Показать другие доступные номера».</p>

<p>Если Вы приобретаете сертификаты «Для двоих» или «Для него: РЦ Metropolis», то посещение рассчитано на 2-х человек по 1 сертификату.</p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', 'e5365bdeb6da2f7232d047dca98a58ff.jpeg', '2018-07-29 20:18:55', '2019-01-01 08:00:00', 'Специальное предложение', '0', '10', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '18', 'АКЦИИ В РЕСТОРАНАХ', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2017-PA-restoran.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Постоянные акции<br>в ресторанах</h1>
<p>Воспользуйтесь предложениями наших ресторанов и баров и Ваш отдых станет ещё более приятным!</p>
</div>

<div class="us-main" style="margin-top:-30px">

<p><b>1</b>. При покупке любого десерта в Лобби баре, кофе (без алкоголя) подается бесплатно с 11:00 до 12:00</p>
<!--<p><b>2</b>. Скидка 50% на апельсиновый фреш в ресторане AZURR ежедневно с 7:00 до 10:30</p>-->
<p><b>2</b>. 2 коктейля по цене 1 L’Olivo, MANDARIN, Lobby bar, Инфинити, Плаза Кафе, Органик бар, Villa cafe. Скидка действует на все коктейли с 17:00 до 18:00</p>
<p><b>3</b>. В ресторане AZURR с 19:00 до 20:00 - 2 коктейля по цене одного.</p>
<p><b>4</b>. Чай в подарок! при заказе кальяна в период с 18:00 до 21:00</p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', '1d5e3414343dfdcdfc769aa01baf9bdb.jpeg', '2018-07-31 07:32:26', '2019-01-01 07:00:00', 'Специальное предложение', '0', '33', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '19', 'ДНЕВНОЕ ПОСЕЩЕНИЕ', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2017-odnodn-pos.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Дневное посещение</h1>
<p>Проведите незабываемый день в Ведущем мировом курорте для отдыха по версии World Travel Awards 2017!</p>
</div>

<div class="us-main">

<p style="margin-top:-10px">Посещение территории отеля, а также возможность воспользоваться инфраструктурой и услугами комплекса включает<span>*</span>:</p>

<ul>
<li>spa-центр: финская и кедровая сауны, хаммам</li>
<li>закрытый бассейн</li>
<li>открытый бассейн и пляжная зона в летний период</li>
<li>развлекательный центр METROPOLIS (кинотеатр, программа анимации для взрослых и детей)</li>
<li>детский клуб и игровая комната (от 4 лет разрешено пребывание без родителей)</li>
<li>открытый каток IceMirage с 10:00 до 22:00 (прокат коньков бесплатно)</li>
<li>тренажерный зал и групповые тренировки</li>
<li>развлекательная программа отеля и концерты приглашённых звёзд в день визита.</li>
</ul>

<p>С программой мероприятий Вы можете ознакомиться в разделе Афиша.</p>

<p>Также Вы можете прогуляться по саду вдохновения, аллее Нормана Фостера и увидеть свето-музыкальное шоу поющего фонтана!</p>

<p><b>Стоимость посещения без питания</b></p>

<ul>
<li>взрослые — <b>3000</b> рублей</li>
<li>дети — <b>1500</b> рублей</li>
</ul>

<p><b>Стоимость посещения с трехразовым питанием по системе "шведский стол":</b></p>

<ul>
<li>взрослые — <b>6000</b> рублей</li>
<li>дети — <b>3000</b> рублей</li>
</ul>

<p>Дети до 3х лет включительно бесплатно, с 4 до 13 лет включительно согласно тарифу.</p>

<p><b>Питание в ресторане AZURR отдельно:</b></p>

<p>(стоимость за 1 человека)</p>

<ul>
<li>завтрак - 900 рублей</li>
<li>обед - 1300 рублей</li>
<li>ужин - 1400 рублей</li>
</ul>

<p>Дети до 3х лет включительно бесплатно, с 4 до 13 лет включительно - скидка 50%.</p>

<p><b>Время посещения:</b> с 8:00 до 22:00.</p>

<button class="us-button-bron" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-brona.html?nights=1\'">Купить</button>

<p class="us-comment"><span>*</span> Количество гостей ограничено - 250 посетителей в день старше 14 лет.</p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', '816e86d407d94dc7a5c9837084b19b5d.jpeg', '2018-07-27 13:16:18', '2019-01-01 07:00:00', 'Специальная цена', '0', '17', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '20', 'ОТЕЛЬ ДЛЯ ДЕТЕЙ БЕСПЛАТНО!', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2017-otel-dla-detei.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Отель для детей бесплатно!</h1>
<p>Подарите ребёнку отдых на море!</p>
<p>Увлекательные занятия, мастер-классы, прогулки но свежем воздухе и новые друзья - всё это в Mriya Resort & Spa!</p>
</div>

<div class="us-main" style="margin-top:-30px">

<p>Если вашему ребенку еще нет 14 лет, его проживание в курортном комплексе будет бесплатным!<span>*</span></p>

<p><b>Акция действительна для номеров:</b></p>

<ul>
<li>Делюкс</li>
<li>Семейный люкс</li>
<li>Королевский люкс</li>
<li>Семейная вилла</li>
</ul>



<p>Акция действует для типа питания "полный пансион" (трёхразовое питание по системе "шведский стол"). При условии 1 взрослый = 1 ребенок.</p>

<button class="us-button-bron" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-bron.html?hotel=5707&special-offer=64930%2C65093%2C56933\'">Забронировать</button>

<p class="us-comment"><span>*</span> Акция действует с 14 ноября 2017 года по 29 декабря 2018 года при бронировании номеров на периоды: 31 января - 22 февраля 2018 г. 26 февраля - 07 марта 2018 г. 12 марта - 30 марта 2018 г. 13 октября - 29 декабря 2018 г. При отмене бронирования отель оставляет сбор за услуги бронирования в размере стоимости одних суток. Данное предложение не суммируется с другими акциями отеля и скидками. Количество номеров ограничено!</p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', '36062ed12d45743367d0ae7f88dadde8.jpeg', '2018-07-31 15:37:49', '2018-12-29 08:00:00', 'Специальное предложение', '0', '17', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '21', 'CHECK UP', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
<script src="js/jquery.min.js"></script>
<script>
	function spoiler (aName,objName) {
		if ( $(objName).css(\'display\') == \'none\' ) {
			$(objName).animate({height: \'show\'}, 400);
			$(aName).removeClass(\'dpbox\');
			$(aName).addClass(\'dmbox\');
		} else {
			$(objName).animate({height: \'hide\'}, 200);
			$(aName).removeClass(\'dmbox\');
			$(aName).addClass(\'dpbox\');
		}
	};
</script>
<style>
h2 { text-transform: uppercase; }
div[id^="sbox"] { padding:0 5px 10px; }
.accordion { margin-bottom:2px; }
.accordion button.abox { padding-top:15px; padding-bottom:15px; }
</style>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'https://mrdata.mriyaresort.com:5343/mp/foto/akcii/2018-check-up.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Check up</h1>
</div>

<div class="us-main">

<div class="accordion">
<button onclick="spoiler(this,\'#sbox001\'); return false" class="abox dpbox" id="abox001">DETOX</button>
<div id="sbox001">
<br>
<ul class="us-ul">
<li>Продолжительность лечения: 7 дней (без учета стоимости проживания)</li>
<li>Категория: ВЗРОСЛЫЕ И ДЕТИ</li>
<li>Стоимость – 70000 руб. (включая диагностику и курс лечения) *Без учета стоимости проживания</li>
</ul>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/form/uslugi-php.php?formtitle=Запись%20на%20прием&formmail=2&formname=Акция%20Check-up:%20DETOX&cat=medicine\'">Запись на прием</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox002\'); return false" class="abox dpbox" id="abox002">БЫСТРЫЙ ЧЕК-АП ДЛЯ ЖЕНЩИН</button>
<div id="sbox002">
<p>Комплексное исследование организма в медицинском центре Mriya Resort & SPA.</p>
<ul class="us-ul">
<li>Продолжительность лечения: Амбулаторно</li>
<li>Категория: ВЗРОСЛЫЕ</li>
<li>Стоимость – 7000 руб.</li>
</ul>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/form/uslugi-php.php?formtitle=Запись%20на%20прием&formmail=2&formname=Акция%20Check-up:%20БЫСТРЫЙ%20ЧЕК-АП%20ДЛЯ%20ЖЕНЩИН&cat=medicine\'">Запись на прием</button>
</div>
</div>

<div class="accordion">
<button onclick="spoiler(this,\'#sbox003\'); return false" class="abox dpbox" id="abox003">БЫСТРЫЙ ЧЕК-АП ДЛЯ МУЖЧИН</button>
<div id="sbox003">
<p>Комплексное исследование организма в медицинском центре Mriya Resort & SPA.</p>
<ul class="us-ul">
<li>Продолжительность лечения: Амбулаторно</li>
<li>Категория: ВЗРОСЛЫЕ</li>
<li>Стоимость – 7000 руб.</li>
</ul>
<button class="us-bzap" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/form/uslugi-php.php?formtitle=Запись%20на%20прием&formmail=2&formname=Акция%20Check-up:%20БЫСТРЫЙ%20ЧЕК-АП%20ДЛЯ%20МУЖЧИН&cat=medicine\'">Запись на прием</button>
</div>
</div>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', 'b669f7139cc7bb61aebafe1d78ffe81f.jpeg', '2018-08-03 12:43:52', '2019-01-01 07:00:00', 'Специальное предложение', '0', '23', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '22', 'РАННЕЕ БРОНИРОВАНИЕ', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2016-rannee-bron.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Раннее бронирование - скидка 10%!</h1>
<p>Получите скидку 10% при раннем бронировании в Mriya Resort & Spa!<span>**</span></p>
</div>

<div class="us-line" style="margin:-15px 0px 5px;"> </div>

<div class="us-main">

<p>Скидка действует при бронировании и оплате в течение 3 банковских дней:<span>*</span></p>

<ul>
<li>В низкий сезон - за 30 дней</li>
<li>В средний сезон - за 45 дней</li>
<li>В высокий и праздничный сезон - за 60 дней</li>
<li>В пиковый сезон - за 90 дней</li>
</ul>

<p>В акции участвуют следующие номера комплекса:</p>

<ul>
<li>Делюкс</li>
<li>Семейный люкс</li>
<li>Королевский люкс</li>
<li>Семейная вилла</li>
</ul>

<button class="us-button-bron" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-bron.html?hotel=5707&special-offer=71606%2C71620\'">Забронировать</button>

<p class="us-comment"><span>*</span> <em>Невозможны внесения корректировок в бронирование.</em></p>

<p class="us-comment"><span>**</span> <em>При отмене бронирования или изменении дат удерживается сбор за бронирование в размере полной стоимости проживания. Акция действует c 31 января 2018 г. по 8 января 2019 года. Акции не суммируются. Для получения более подробной информации обращайтесь по телефону указанному ниже.</em></p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', 'd676fd784ce3d10ed2ab4608a5bc3eaf.jpeg', '2018-08-03 12:44:09', '2019-01-09 07:00:00', 'Специальное предложение', '0', '16', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '23', 'КАЖДАЯ 7 НОЧЬ - В ПОДАРОК!', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2018-7noch2.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Каждая 7 ночь -<br>в подарок!</h1>
<p>При бронировании 7 ночей в любой категории номера Mriya Resort & Spa - вы платите за 6 ночей, а седьмую ночь вы получаете в подарок!<span>*</span></p>
</div>

<div class="us-main" style="margin-top:-30px">

<p>При бронировании 14 ночей любой категории номера - оплата за 12 ночей.</p>

<p><b>Акция распространяется на номера категории:</b></p>

<ul>
<li>Делюкс</li>
<li>Семейный люкс</li>
<li>Королевский люкс</li>
<li>Семейная вилла</li>
</ul>

<p>Акция действует для типа питания "полный пансион" (трёхразовое питание по системе "шведский стол").</p>

<button class="us-button-bron" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-bron.html?hotel=5707&special-offer=56912\'">Забронировать</button>

<p class="us-comment"><span>*</span> Срок действия с 26.02 по 07.03.18 г. включительно, с 12.03 по 27.04.18 г. включительно, с 13.10 по 29.12.18 г. включительно.</p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', '1497bab8572c1252ee09f02b31b0b43f.jpeg', '2018-08-01 11:35:18', '2018-12-30 07:00:00', 'Специальное предложение', '0', '29', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '24', 'НОВОГОДНИЕ КАНИКУЛЫ', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/2018-ny-zaranee.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Новогодние каникулы</h1>
<p>Для тех, кто заботится заранее о встрече Нового года и Рождества, мы подготовили новогоднее предложение<br>«<b>Готовь сани летом</b>»<br>по специальным ценам!</p>
</div>

<div class="us-main" style="margin-top:-30px">

<p>Отдых премиум-класса, выступления звезд, шоу программа от артистов разных жанров - в Mriya Resort & SPA есть всё для идеальной встречи Нового 2019 года!</p>
<p>Подарите близким новогоднее волшебство в Лучшем мировом курорте для отдыха и оздоровления по версии World Travel Awards!</p>
<p>При бронировании проживания с 30 или 31 декабря 2018 г. от 9 ночей стоимость на 15% ниже стандартной.</p>

<p><b>Акция распространяется на номера:</b></p>

<ul>
<li>Делюкс</li>
<li>Семейный люкс</li>
<li>Королевский люкс</li>
<li>Семейная вилла</li>
</ul>

<p><b>Период бронирования:</b> с 26.04.2018 г. по 31.08.2018 г.</p>
<p><b>Условия оплаты:</b> 100% оплата в течение пяти банковских дней.</p>
<p><b>Условия отмены:</b> тариф невозвратный.</p>

<button class="us-button-bron" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-bron.html?hotel=5707&special-offer=99030,97760\'">Забронировать</button>

<p align="center">ЗАБРОНИРУЙТЕ НОМЕР ПО АКЦИИ!</p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', '51dd4cde1a20e9869477af5b449d1e0e.jpeg', '2018-08-03 12:44:42', '2018-09-01 06:00:00', 'Специальное предложение', '0', '19', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '25', 'МАССАЖНЫЙ УХОД ПО ЛИЦУ SUNDARI', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/akc-1.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Массажный уход<br>по лицу Sundari</h1>
</div>

<div class="us-main" style="margin-top:-30px">
<p>Ритуал приветствия: выбор эссенциального масла, стимуляция точки бинди, омовение и скрабирование ног. Массаж Абхьянга спины. Уход по лицу со специальной массажной техникой Sundari. Маска. Массаж головы со стимулирующим маслом.</p>
<b>Действие:</b><br>
<p>Уход коллекции SUNDARI не только бережно ухаживает за Вашей кожей, но и помогает абстрагироваться от тягот дня, привести в баланс чувства, получить результаты в достижении красоты и гармонии. Натуральные ингредиенты повышают тонус и упругость кожи, натуральные масла успокаивают, мягкая эксфолиация выравнивает и обновляет, специальный массаж лица Sundari гармонизирует, маска восстанавливает.</p>
<p>Время: <b>60</b> минут<br>
Цена: <b>5000</b> руб.<br>
Бренд: <b>Sundari</b></p>

<button class="us-button-bron" id="btn">Получить бонус</button>

<div>
<p><span id ="code" style="display:none; text-align: center"></span></p>
<p id="txt" style="display:none; text-align: center">Покажите данный код сотруднику отеля для получения бонуса.<br><br><b>Ваш подарок:</b><br><br>Скидка: <b>20</b>%<br>Новая стоимость: <b>4000</b> руб.</p>
</div>

</div>

<div class="buffer"> </div>

</div>

<script>
	document.getElementById(\'btn\').onclick = function(){
		var xhr = new XMLHttpRequest();
		var params = \'method=click&id=\'+idIn;
		xhr.open("POST", \'get.php\', true);
                xhr.setRequestHeader(\'Content-Type\', \'application/x-www-form-urlencoded\');
		xhr.send(params);
		this.setAttribute(\'disabled\',true);
		this.setAttribute(\'style\',\'color:#ccc\');
		document.getElementById(\'code\').setAttribute(\'style\',\'display:block;text-align: center\');
		document.getElementById(\'code\').innerText = codeIn;
		document.getElementById(\'txt\').setAttribute(\'style\',\'display:block;text-align: center\');
	}

</script>

<script>footer();</script>

</body>
</html>', '50555a37ae95feac6f90260eb4f00531.jpeg', '2018-07-29 12:39:46', '2018-08-01 18:00:00', 'Специальное предложение', '0', '17', '3' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '28', 'Экоуход FIOLET', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/akc-2.jpg\') center no-repeat, #000; background-size:cover;">&nbsp;</div>

<div class="us-header">
<h1 class="hcolor0g">Экоуход FIOLET</h1>
</div>

<div class="us-main" style="margin-top:-30px">
<p>Включает в себя: Ароматерапевтическая ванночка для ног. Маска-эксфолиант для тела. Экоуход для лица. Ароматерапевтический массаж лица и тела с лимфодренажным эффектом.</p>
<b>Действие:</b><br>
<p>Программа разработана на базе 100% натуральных высококачественных ингредиентов, содержащих травы, цветы и плоды крымских растений, эфирные и ратительные масла, природные материалы и продукты Черного моря. Предназначена для очищения организма от токсинов, регуляции обмена веществ, улучшения общего самочувствия и состояния кожи. Натуральные средства программы стимулируют процессы обмена веществ, кровообращение и лимфоток, укрепляют сосуды,обладают антиоксидантными свойствами.</p>
<p>Время: <b>100</b> минут<br>
Цена: <b>7000</b> руб.<br>
Бренд: <b>Fiolet</b></p>

<button class="us-button-bron" id="btn">Получить бонус</button>

<div>
<p><span id ="code" style="display:none; text-align: center"></span></p>
<p id="txt" style="display:none; text-align: center">Покажите данный код сотруднику отеля для получения бонуса.<br><br><b>Ваш подарок:</b><br><br>Скидка: <b>20</b>%<br>Новая стоимость: <b>5600</b> руб.</p>
</div>

</div>

<div class="buffer">&nbsp;</div>

</div>

<script>

	document.getElementById(\'btn\').onclick = function(){
		var xhr = new XMLHttpRequest();
		var params = \'method=click&id=\'+idIn;
		xhr.open("POST", \'get.php\', true);
                xhr.setRequestHeader(\'Content-Type\', \'application/x-www-form-urlencoded\');
		xhr.send(params);
		this.setAttribute(\'disabled\',true);
		this.setAttribute(\'style\',\'color:#ccc\');
		document.getElementById(\'code\').setAttribute(\'style\',\'display:block;text-align: center\');
		document.getElementById(\'code\').innerText = codeIn;
		document.getElementById(\'txt\').setAttribute(\'style\',\'display:block;text-align: center\');
	}

</script>

<script>footer();</script>

</body>
</html>', 'c8c196223a600adb2b3e3805e767d0af.jpeg', '2018-07-29 12:39:35', '2018-08-01 07:00:00', 'Специальное предложение', '0', '15', '3' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '29', 'Моделирование двойного действия', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'images/akc-3.jpg\') center no-repeat, #000; background-size:cover;">&nbsp;</div>

<div class="us-header">
<h1 class="hcolor0g">Моделирование двойного действия</h1>
</div>

<div class="us-main" style="margin-top:-30px">
<p>Включает в себя: Ритуал знакомства Comfort Zone. Обновляющий пилинг. Маска для тела. Увлажнение тела. Дренажный гель для ног.</p>
<b>Действие:</b><br>
<p>Мощная процедура для похудения с эффектом « тепло/холод» обеспечивает мощный эффект липолиза и устранения фиброза , уменьшение объемов,   сокращение «апельсиновой корки», уменьшение  жировых отложений.</p>
<p>Время: <b>90</b> минут<br>
Цена: <b>6500</b> руб.<br>
Бренд: <b>Comfort Zone</b></p>

<button class="us-button-bron" id="btn">Получить бонус</button>

<div>
<p><span id ="code" style="display:none; text-align: center"></span></p>
<p id="txt" style="display:none; text-align: center">Покажите данный код сотруднику отеля для получения бонуса.<br><br><b>Ваш подарок:</b><br><br>Скидка: <b>20</b>%<br>Новая стоимость: <b>5200</b> руб.</p>
</div>

</div>

<div class="buffer">&nbsp;</div>

</div>

<script>

	document.getElementById(\'btn\').onclick = function(){
		var xhr = new XMLHttpRequest();
		var params = \'method=click&id=\'+idIn;
		xhr.open("POST", \'get.php\', true);
                xhr.setRequestHeader(\'Content-Type\', \'application/x-www-form-urlencoded\');
		xhr.send(params);
		this.setAttribute(\'disabled\',true);
		this.setAttribute(\'style\',\'color:#ccc\');
		document.getElementById(\'code\').setAttribute(\'style\',\'display:block;text-align: center\');
		document.getElementById(\'code\').innerText = codeIn;
		document.getElementById(\'txt\').setAttribute(\'style\',\'display:block;text-align: center\');
	}

</script>

<script>footer();</script>

</body>
</html>', 'df0d965d51990c793981701cfd99a2e0.jpeg', '2018-08-02 16:16:03', '2018-08-01 07:00:00', 'Специальное предложение', '0', '29', '8' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '30', 'Дренаж и моделирование с бандажом', '
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta charset=&quot;UTF-8&quot;&gt;
&lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge,chrome=1&quot;&gt; 
&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no&quot;&gt;
&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;css/mriya.css&quot;&gt;
&lt;script src=&quot;js/mriya.js&quot;&gt;&lt;/script&gt;
&lt;/head&gt;

&lt;body&gt;
&lt;div class=&quot;wrapper&quot;&gt;

&lt;div class=&quot;us-top-img&quot; style=&quot;background:url(\'images/akc-4.jpg\') center no-repeat, #000; background-size:cover;&quot;&gt;&amp;nbsp;&lt;/div&gt;

&lt;div class=&quot;us-header&quot;&gt;
&lt;h1 class=&quot;hcolor0g&quot;&gt;Дренаж и моделирование с бандажом&lt;/h1&gt;
&lt;/div&gt;

&lt;div class=&quot;us-main&quot; style=&quot;margin-top:-30px&quot;&gt;
&lt;p&gt;Включает в себя: Ритуал знакомства Comfort Zone. Обновляющий пилинг. Бандажное пеленание. Увлажнение тела. Дренажный гель для ног.&lt;/p&gt;
&lt;b&gt;Действие:&lt;/b&gt;&lt;br&gt;
&lt;p&gt;Интенсивный уход, в основе которого комплекс эфирных масел для стимулирования микроциркуляции и оттока тканевой жидкости, дарит чувство легкости и эффективно уменьшает объемы. Эффективно для всех типов целлюлита. Процедура подходит для курса похудения. Проводится бандажными техниками.&lt;/p&gt;
&lt;p&gt;Время: &lt;b&gt;90&lt;/b&gt; минут&lt;br&gt;
Цена: &lt;b&gt;6500&lt;/b&gt; руб.&lt;br&gt;
Бренд: &lt;b&gt;Comfort Zone&lt;/b&gt;&lt;/p&gt;

&lt;button class=&quot;us-button-bron&quot; id=&quot;btn&quot;&gt;Получить бонус&lt;/button&gt;

&lt;div&gt;
&lt;p&gt;&lt;span id =&quot;code&quot; style=&quot;display:none; text-align: center&quot;&gt;&lt;/span&gt;&lt;/p&gt;
&lt;p id=&quot;txt&quot; style=&quot;display:none; text-align: center&quot;&gt;Покажите данный код сотруднику отеля для получения бонуса.&lt;br&gt;&lt;br&gt;&lt;b&gt;Ваш подарок:&lt;/b&gt;&lt;br&gt;&lt;br&gt;Скидка: &lt;b&gt;20&lt;/b&gt;%&lt;br&gt;Новая стоимость: &lt;b&gt;5200&lt;/b&gt; руб.&lt;/p&gt;
&lt;/div&gt;

&lt;/div&gt;

&lt;div class=&quot;buffer&quot;&gt;&amp;nbsp;&lt;/div&gt;

&lt;/div&gt;

&lt;script&gt;

	document.getElementById(\'btn\').onclick = function(){
		var xhr = new XMLHttpRequest();
		var params = \'method=click&amp;id=\'+idIn;
		xhr.open(&quot;POST&quot;, \'get.php\', true);
                xhr.setRequestHeader(\'Content-Type\', \'application/x-www-form-urlencoded\');
		xhr.send(params);
		this.setAttribute(\'disabled\',true);
		this.setAttribute(\'style\',\'color:#ccc\');
		document.getElementById(\'code\').setAttribute(\'style\',\'display:block;text-align: center\');
		document.getElementById(\'code\').innerText = codeIn;
		document.getElementById(\'txt\').setAttribute(\'style\',\'display:block;text-align: center\');
	}

&lt;/script&gt;

&lt;script&gt;footer();&lt;/script&gt;

&lt;/body&gt;
&lt;/html&gt;', '533592e547acd4353f85f47d8f5f41ad.jpeg', '2018-07-29 12:36:05', '2018-08-01 07:00:00', 'Специальное предложение', '0', '19', '4' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '32', 'Kangoo Jumps', '<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="css/mriya.css">
    <script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

    <div class="us-top-img"
         style="background:url(\'./images/kangooJumps.jpg\') center no-repeat, #000; background-size:cover;">
         
    </div>

    <div class="us-header">
        <h1 class="hcolor0g">Kangoo Jumps</h1>
    </div>

    <div class="us-main" style="margin-top:-30px">
        <p>Аэробика высокой интенсивности, направленная на укрепление ягодиц, пресса, мышц ног. В этой тренировке
            используется специальная обувь — ботинки для пружинящих прыжков.</p>
        <b>ПРЕИМУЩЕСТВА KANGOO JUMPS</b>
        <p>
            Kangoo Jumps может помочь вам сжечь до 1000 килокалорий за час тренировок. Она предназначается не только для
            снижения веса, но и для укрепления ягодиц, пресса, стенок сердечных и кровяных сосудов, развития всех мышц
            ног.<br><br>
            Во время kangoo jump тренировки работают как самые крупные мускулы, так и мелкие мышцы, которые отвечают за
            формирование окружности бедер и талии. Расход калорий происходит такой, как если бы вы занимались боксом или
            другим силовым видом спорта.<br><br>
            Занятия Kangoo Jump не требуют какой-либо особенной подготовки.
        </p>

        <p>Мы предоставляем весь необходимый для групповых тренировок инвентарь: коврики, ботинки Kangoo Jump, ролики
            для миофасциального релиза.</p>
        <b>Индивидуальные тренировки</b> «Kangoo Jumps»
        <br>
        <table>
            <tr>
                <td>1 занятие</td>
                <td><b>1000</b></td>
            </tr>
            <tr>
                <td>4 занятия</td>
                <td><b>3800</b></td>
            </tr>
            <tr>
                <td>8 занятий</td>
                <td><b>7000</b></td>
            </tr>
            <tr>
                <td>12 занятий</td>
                <td><b>10000</b></td>
            </tr>
        </table>
        <br>

        <button class="us-button-bron" id="btn">Получить бонус</button>

        <div>
            <p><span id="code" style="display:none; text-align: center"></span></p>
            <p id="txt" style="display:none; text-align: center">Покажите данный код сотруднику отеля для получения
                бонуса.<br><br><b>Ваш подарок:</b><br><br>Скидка: <b>20</b>%<br><br><br><b>Новая цена:</b></p>
                <div id="table" style="display: none;margin: 0px auto;">
                    <table style="margin: 0px auto;">
                        <tr>
                            <td>1 занятие</td>
                            <td><b>800</b></td>
                        </tr>
                        <tr>
                            <td>4 занятия</td>
                            <td><b>3040</b></td>
                        </tr>
                        <tr>
                            <td>8 занятий</td>
                            <td><b>5600</b></td>
                        </tr>
                        <tr>
                            <td>12 занятий</td>
                            <td><b>8000</b></td>
                        </tr>
                    </table>
                </div>
        </div>

    </div>

    <div class="buffer"> </div>

</div>

<script>
        document.getElementById(\'btn\').onclick = function(){
            var xhr = new XMLHttpRequest();
            var params = \'method=click&id=\'+idIn;
            xhr.open("POST", \'get.php\', true);
            xhr.setRequestHeader(\'Content-Type\', \'application/x-www-form-urlencoded\');
            xhr.send(params);
            this.setAttribute(\'disabled\',true);
            this.setAttribute(\'style\',\'color:#ccc\');
            document.getElementById(\'code\').setAttribute(\'style\',\'display:block;text-align: center\');
            document.getElementById(\'code\').innerText = codeIn;
            document.getElementById(\'txt\').setAttribute(\'style\',\'display:block;text-align: center\');
            document.getElementById(\'table\').setAttribute(\'style\', \'display:block;text-align: center\');
        }
  
</script>

<script>footer();</script>

</body>
</html>', 'cc6087a94b4a1e666ddb4d7b6f2f2cb2.jpeg', '2018-07-29 20:19:20', '2018-01-01 10:00:00', 'Специальное предложение', '0', '20', '3' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '35', 'САМАЯ МАЛИНА', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'https://mrdata.mriyaresort.com:5343/mp/foto/akcii/2018-samaya-malina.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">Самая малина</h1>
<p><b>Самая малина в Mriya Resort & Spa - собери все самое вкусное!</b></p>
<p>Только до 31 августа 2018 г. забронируй номер в Mriya Resort & Spa и получи скидку 20% на проживание с 15 по 29 декабря 2018 года.<span style="color:red">*</span></p>
</div>

<div class="us-main" style="margin-top:-30px">

<p>В акцию «<b>Самая малина</b>» включено<span style="color:red">*</span>:</p>

<ul class="us-ul">
<li>20% скидка на проживание в номерах;</li>
<li>минимальный срок бронировании от 3 ночей;</li>
<li>питание по системе «шведский стол» на базе полного пансиона;</li>
<li>посещение спа-центра (крытый бассейн, сауна, хамам, тренажерный зал);</li>
<li>пользование инфраструктурой Комплекса;</li>
<li>одна из 15 медицинских программ при проживании от 6 ночей.</li>
</ul>

<button class="us-button-bron" onclick="location.href=\'https://mrdata.mriyaresort.com:5343/mp/css/mr-bron.html\'">Забронировать</button>

<p class="us-comment"><span style="color:red">*</span> Акция действует по 31 августа 2018 года при бронировании номеров на период с 15 по 29 декабря 2018 года. При отмене бронирования отель оставляет сбор за услуги в 100% размере от стоимости бронирования. Данное предложение не суммируется с другими акциями отеля и скидками. Количество номеров ограничено!</p>

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', 'd47db168404d3634dbdad053e6ca7f97.jpeg', '2018-08-02 15:12:54', '2018-08-31 00:00:00', 'Специальное предложение', '0', '26', '0' );
INSERT INTO `poster`(`id`,`title`,`html`,`images`,`start`,`stop`,`typeSentence`,`typeDate`,`visit`,`click`) VALUES ( '36', 'TANITA - ЗДОРОВОЕ ТЕЛО', '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/mriya.css">
<script src="js/mriya.js"></script>
</head>

<body>
<div class="wrapper">

<div class="us-top-img" style="background:url(\'https://mrdata.mriyaresort.com:5343/mp/foto/akcii/2018-tanita.jpg\') center no-repeat, #000; background-size:cover;"> </div>

<div class="us-header">
<h1 class="hcolor0g">TANITA<span>Здоровое тело</span></h1>
<p>Биоимпедансметрия TANITA – аппаратный метод, позволяющий оценить долю и массу жировой ткани, активную клеточную массу, количество общей воды организма.</p>
</div>

<div class="us-main" style="margin-top:-30px">

<p>Используется, в частности, как профессиональная программа для диетологии, вошедшая в Государственную программу оснащения кабинетов здорового питания.</p>

<ul class="us-ul">
<li>При покупке процедуры в МЦ на сумму от 1500 руб. - диагностика на аппарате "Танита" в подарок.</li>
<li>При покупке Инъекций красоты\\косметологических уходов на сумму от 3000 руб. - душ VISHI в подарок.</li>
</ul>

<!--<a href="block://Menu26" class="us-button-bron" style="text-decoration:none">Медицинский центр</a>-->

</div>

<div class="buffer"> </div>

</div>

<script>footer();</script>

</body>
</html>', '573a052f42a77fce9030ece70babf140.jpeg', '2018-07-29 20:23:23', '2019-01-01 00:00:00', 'Специальное предложение', '0', '32', '0' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`login`,`pwd`) VALUES ( '1', 'unisol', '690d7d9da2878c0a830d924c4c444512' );
-- ---------------------------------------------------------


-- CREATE INDEX "id" ---------------------------------------
-- CREATE INDEX "id" -------------------------------------------
CREATE INDEX `id` USING BTREE ON `codes`( `id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


