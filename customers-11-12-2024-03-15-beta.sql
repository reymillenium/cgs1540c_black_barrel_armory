/*M!999999\- enable the sandbox mode */
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_18
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers`
(
    `id`                      int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `email`                   varchar(255) NOT NULL COMMENT 'Customer''s email address.',
    `password`                varchar(255) NOT NULL COMMENT 'Customer''s password',
    `first_name`              varchar(255) NOT NULL COMMENT 'Customer''s first name.',
    `middle_name`             varchar(255) DEFAULT NULL COMMENT 'Customer''s middle name.',
    `last_name`               varchar(255) NOT NULL COMMENT 'Customer''s last name.',
    `phone`                   varchar(16)  NOT NULL COMMENT 'Customer''s phone number.',
    `date_of_birth`           date         NOT NULL COMMENT 'Customer''s date of birth.',
    `preferred_ffl_dealer_id` int(11) DEFAULT NULL COMMENT 'Foreign key referencing ffl_dealers.id',
    `created_at`              timestamp NULL DEFAULT CURRENT_TIMESTAMP() COMMENT 'Timestamp when the record was created.',
    `updated_at`              timestamp NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP() COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    UNIQUE KEY `email_UNIQUE` (`email`),
    KEY                       `fk_customers_ffl_dealers1_idx` (`preferred_ffl_dealer_id`),
    CONSTRAINT `fk_customers_ffl_dealers1` FOREIGN KEY (`preferred_ffl_dealer_id`) REFERENCES `ffl_dealers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK
TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers`
VALUES (1, 'martin.ryan@example.org', '90ca2b192f68a7640f6dd262f0fe3a1d762685d2', 'Dominic', '', 'Schimmel', '1-669-536-4084x3', '1974-03-27', 1, '2000-05-22 01:05:41', '1972-09-24 06:52:38'),
       (2, 'daugherty.orion@example.net', 'abaecd54961c18a8e9b7d77fe58758d462c0511b', 'Madonna', 'Schmitt', 'Dooley', '824.836.7263x726', '2004-03-05', 2, '2023-09-08 13:49:43', '1993-03-11 16:02:38'),
       (3, 'miguel.lesch@example.org', 'da15aa7cbe70b26e6d22d50adc37fb9637c24915', 'Jasen', '', 'Marquardt', '09716446305', '1995-09-27', 3, '2006-04-24 13:22:05', '2017-07-17 17:20:10'),
       (4, 'alda.west@example.net', '082a4ceee6dd46137f85b16785703c223c98328a', 'Helena', 'Jast', 'Cremin', '562.209.5477', '1976-08-17', 4, '2016-10-26 08:32:00', '2010-03-19 22:42:44'),
       (5, 'laila54@example.com', '53b4467f730e350ace1f0f76be0a7f50a5acf18c', 'Dave', 'Toy', 'Okuneva', '933-459-1709x510', '1985-01-04', 5, '1997-11-06 04:47:38', '1970-11-08 17:29:59'),
       (6, 'xabshire@example.net', 'cf52036ae56b6562fcdb0a533c4a8bbced227074', 'Janie', 'O Hara', 'Barrows', '+92(4)9843391792', '1977-09-28', 6, '2015-07-01 15:57:37', '1981-05-18 16:49:00'),
       (7, 'dangelo.lindgren@example.org', '9a2b8923b864a1ccd8fcedf13c9ce093c61407e9', 'Monique', 'Considine', 'Fisher', '(810)521-0936x13', '1990-05-26', 7, '1970-02-15 23:09:36', '2004-09-01 22:56:31'),
       (8, 'matilda.franecki@example.com', 'd4001f8cb1a4ee50f8e7c1db9a2443cd9dad7a72', 'Maxime', '', 'Gleason', '862-837-2912', '1998-06-04', 8, '1973-04-03 02:28:16', '2020-09-07 10:43:08'),
       (9, 'cassin.josiah@example.net', '2762f3dac1e228042c30cbac2bca304314586022', 'Alyce', 'Vandervort', 'Wyman', '629.381.9553x294', '1992-01-24', 9, '2005-07-09 17:25:09', '2019-10-03 08:12:12'),
       (10, 'orval33@example.net', '17713289a696292e103b178e0219ae30609cd731', 'Leon', '', 'Dietrich', '733-628-5061', '1978-01-02', 10, '1972-10-31 18:37:36', '2011-05-02 01:19:45'),
       (11, 'danielle68@example.org', '18e40a04dc6cb7b62b6b3718595556065416c660', 'Lucio', 'Hills', 'Muller', '(061)016-6932', '1999-06-16', 11, '1981-01-11 22:22:24', '2002-03-17 15:43:50'),
       (12, 'claude08@example.com', '220ba194ebc9c63216821d43d0079a04d6cf96c9', 'Nora', '', 'Weber', '1-042-847-0830', '1994-04-09', 12, '2005-01-18 04:38:28', '2012-10-19 02:09:34'),
       (13, 'wtrantow@example.org', 'f8cb9e6ca64a2a8b5bc878ac7ee0361f9646735d', 'Chelsie', '', 'Smith', '(033)215-2898x03', '1989-09-10', 13, '1985-12-01 13:05:59', '1981-12-29 07:38:17'),
       (14, 'nmraz@example.org', '054881083ad52401d282b5015e209f472fc0dc2f', 'Robyn', '', 'Stamm', '(939)849-4240x11', '1973-12-30', 14, '1996-03-14 21:57:38', '1980-07-26 23:23:13'),
       (15, 'francis.murazik@example.org', 'bb096a4c3f3fb1920b0aa4cb0fa34ea5d075e9bb', 'Alejandra', '', 'Ratke', '07680723932', '1970-06-30', 15, '1971-10-31 04:46:36', '1977-05-11 13:03:51'),
       (16, 'jacobson.elouise@example.net', '6b535c65e3a619520aec8fd8309d5d978dbabaaf', 'Nadia', 'Waelchi', 'Goyette', '612-247-7717x774', '1986-11-03', 16, '1977-05-22 07:54:44', '1982-10-15 18:43:51'),
       (17, 'kendall.funk@example.org', '6a41e79e0fb6c496e4a8cc51b5628076710fff6f', 'Trinity', '', 'Boehm', '04269324946', '2001-09-23', 17, '1990-07-28 10:58:05', '1992-12-16 09:07:45'),
       (18, 'olen.bartell@example.com', '0e23ee2eaf121bed28cbcdf0165d355953a6ed12', 'Jessie', '', 'Marks', '664.461.7232x287', '1972-10-20', 18, '1999-06-12 16:45:15', '1986-08-17 00:45:56'),
       (19, 'enrique18@example.org', '3bcb1fcbe0f1a152a9477488c5a3b0b8a3e639fe', 'Malachi', '', 'Blanda', '02876133080', '1971-12-15', 19, '2017-01-25 08:52:53', '1979-09-19 04:48:13'),
       (20, 'osvaldo.okeefe@example.org', '351d21c8438b02b53fee2ac5834e2c8fa13ded97', 'Cesar', 'Williamson', 'Jacobson', '245-915-8701x041', '1975-06-29', 20, '1986-02-13 15:52:01', '1991-09-27 08:43:50'),
       (21, 'neha.prosacco@example.com', 'a670ee1c5f56a803156d74bd944162c9d9393ed6', 'Leone', '', 'Swift', '220-813-4220x213', '1979-01-09', 21, '2021-03-17 12:38:47', '2009-01-29 13:33:04'),
       (22, 'ymoore@example.com', '67e622d3eb0815e163349951e4ec22a9e91cf321', 'Alexane', '', 'Veum', '1-187-449-1527', '1986-09-05', 22, '2021-07-19 00:10:34', '1984-07-01 03:43:02'),
       (23, 'telly42@example.net', '74425c44123288200c7e5e7cf3b03ea28d15f11b', 'Niko', '', 'Mitchell', '1-488-485-4212', '1975-09-07', 23, '2013-03-27 04:00:53', '2005-07-08 02:30:21'),
       (24, 'mmacejkovic@example.com', '46ec0ee008e2e86fb114651803c0cc9d9afd95e8', 'Katrina', 'Sanford', 'Schmeler', '1-047-771-0997', '1991-10-23', 24, '1985-12-11 17:54:32', '2021-12-15 06:46:47'),
       (25, 'nat.hauck@example.net', 'cd098b570b04a1f35cf6e7c34ae6dcfd9516c6a5', 'Jerrold', 'Beier', 'Toy', '986-746-1323', '1979-04-14', 25, '1975-08-30 01:22:19', '2018-03-02 01:20:45'),
       (26, 'verna.koss@example.org', '100a69ed652e72a8a4f24ede22d2a89ccfccc3e0', 'Dereck', 'Schowalter', 'Runolfsdottir', '115-836-8646x500', '2001-11-14', 26, '1981-01-05 12:42:55', '1979-07-11 08:10:18'),
       (27, 'jamison.crist@example.net', '677ee80503fd0346ac8baf64d42bfa57523ad787', 'Lora', '', 'O Hara', '(726)027-5066x86', '1982-03-19', 27, '2014-03-05 21:08:20', '2006-04-20 15:22:06'),
       (28, 'danial.barton@example.org', '297204ac8f6915d0dd0978e78b2f5f30a922d2ce', 'Christy', '', 'Windler', '043-373-0801x255', '1974-10-13', 28, '2018-06-02 06:28:43', '1984-05-15 00:57:44'),
       (29, 'glover.pearlie@example.org', '0e0bc308adf05d8fe7ddb1610b12121647824e5a', 'Garry', '', 'McGlynn', '635.120.4803', '2004-05-16', 29, '1985-03-24 15:06:21', '1995-11-29 11:09:09'),
       (30, 'jaskolski.asha@example.net', '94c30ce80f1aba39c9a5268ce15ffc63028320cc', 'Irwin', 'Trantow', 'Goodwin', '(570)289-7304', '2003-05-04', 30, '1999-11-07 20:13:25', '2023-04-12 08:22:32'),
       (31, 'jonas43@example.net', '452ac8a9b553286878cb0767508d1c91db2373c8', 'Hyman', '', 'Swift', '987-693-2357x795', '1988-07-31', 31, '1998-11-26 21:20:14', '2019-08-31 00:29:58'),
       (32, 'ciara83@example.org', '7cd7b0e1af564ead0cc50671e043fcc53ee777f6', 'Sonny', 'Corkery', 'O Keefe', '1-677-895-0861x8', '1974-06-17', 32, '2003-07-01 23:50:46', '1976-01-11 03:56:21'),
       (33, 'jaskolski.gracie@example.org', 'e59405db876e69e1c08e4034017647ed1425dc5c', 'Liliane', '', 'Graham', '107.478.0710x366', '1986-07-14', 33, '2024-09-29 16:51:35', '1975-11-01 13:20:42'),
       (34, 'friesen.cierra@example.org', '1c048d9b02bad5b546b48d2c462a6745fcfd40f1', 'Angelica', '', 'Walker', '398-291-6768', '1993-06-02', 34, '1988-11-19 13:28:03', '2009-05-07 12:04:32'),
       (35, 'wrosenbaum@example.org', '2f9e10a7a247478ada5bc0a9c0a0536f402b8933', 'Vella', 'Welch', 'Dach', '077-920-5258', '1994-10-23', 35, '2012-09-28 03:12:24', '1974-07-10 21:18:29'),
       (36, 'kayli.dickens@example.net', '19ed0ba43bc931e04b6a0277471a9ba046b7593b', 'Jay', '', 'Fay', '1-138-892-3068x6', '2004-10-07', 36, '1972-05-17 19:46:41', '1977-09-17 02:56:20'),
       (37, 'deon31@example.net', 'abdfc6bd1bbf7db193d6f9148eb3aa6894c5286b', 'Gerard', '', 'Douglas', '263.518.7982x591', '1989-09-12', 37, '2017-05-16 19:08:19', '2009-09-19 23:52:25'),
       (38, 'gbernhard@example.net', '24c534f3c16bd5c4153514e965b81af8bfaf4bdb', 'Timmothy', 'Schamberger', 'Funk', '731.219.8130', '1988-10-23', 38, '1997-11-02 00:13:22', '1970-07-06 10:09:15'),
       (39, 'tom70@example.net', 'a2dadb6f05e177fa77e5263c3ae6f053b69ae4e0', 'Madilyn', '', 'Dietrich', '(836)725-0188', '1998-07-12', 39, '2022-12-22 18:47:08', '2010-02-13 15:09:45'),
       (40, 'elbert97@example.net', 'ce962eb1ef427cbd8940d0d2d4ba1a517979e49a', 'Pietro', 'Will', 'Schoen', '(497)064-8404x24', '1999-02-24', 40, '2010-01-13 18:58:16', '1973-11-02 01:29:40'),
       (41, 'korbin.altenwerth@example.com', '19505bf6b3aa722ab6656f8995b32c44660e3f17', 'Grant', 'Runolfsdottir', 'Stamm', '(418)044-1333', '2001-02-20', 41, '1986-04-22 12:49:04', '1981-04-10 22:45:44'),
       (42, 'langworth.ardella@example.net', '3ebd0727c338aa46a14c5e7aca7a2d526ae6ede8', 'Itzel', '', 'Jacobi', '016-802-7108x002', '1978-05-16', 42, '2017-06-21 11:57:54', '1976-05-03 05:08:09'),
       (43, 'jdoyle@example.org', '098f0a04ec9f71a555cc57fb4f62f47825d6b9f1', 'Marilie', '', 'Ebert', '629.532.0467', '1975-10-21', 43, '1990-07-30 03:46:30', '1974-05-30 22:37:33'),
       (44, 'kip05@example.org', 'a649c3d231b38f2537324cf8a5211c5c32831710', 'Daniella', 'Ernser', 'Hamill', '955.106.0028x560', '1987-05-03', 44, '2003-10-11 00:53:51', '2023-04-09 01:21:00'),
       (45, 'trodriguez@example.org', '4803d1386ad9fc5b76ae50f25ccdae54a20013f6', 'Oral', '', 'Hickle', '01034572288', '1997-05-08', 45, '2010-05-16 17:35:01', '1975-07-27 19:49:31'),
       (46, 'madisen.parisian@example.net', 'f52bce7819c8044d244678eb6a4a1813709e2523', 'Consuelo', 'Wisozk', 'Boyer', '(140)237-7974', '1970-08-18', 46, '1989-05-24 10:10:13', '1992-02-11 09:08:49'),
       (47, 'ihomenick@example.com', 'a62cf3ea5e0b4f9ac408a5aa0f3eb3ca78bdc149', 'Cecilia', 'Trantow', 'Bins', '(502)457-9857x56', '1975-08-13', 47, '1998-05-10 22:06:29', '2001-11-10 16:47:57'),
       (48, 'jamil.russel@example.org', '22f57d5ff2618b965692c7f0ab1130fc603b7e1a', 'Daniela', '', 'Konopelski', '244.479.9370', '1994-09-29', 48, '2016-04-30 23:06:33', '2022-01-02 04:20:29'),
       (49, 'tohara@example.net', '5d11575236fe3a7660a2265a8bd4fc7716831fa0', 'Wayne', '', 'Schulist', '(597)106-0197', '1988-01-28', 49, '2007-11-22 23:15:23', '2006-04-18 12:19:35'),
       (50, 'rosetta.ebert@example.org', '8a567413f26af3ef098c256cd001892e98001147', 'Bradley', 'Heaney', 'Borer', '1-912-207-6495x0', '2005-07-17', 50, '1978-07-01 14:13:51', '1982-10-04 14:39:47'),
       (51, 'qreichert@example.net', '871350bb6d44380984531bdab44a988ed44ca214', 'Abel', 'Hickle', 'Walsh', '+71(5)4617551200', '2003-11-01', 51, '2021-01-08 04:36:34', '1975-08-21 04:31:54'),
       (52, 'donnelly.emanuel@example.com', 'b3e73b7c14a09c63967bfaf9941fe80649e6503f', 'Clementina', 'Jacobson', 'Stoltenberg', '565.899.1567', '1985-05-26', 52, '2001-05-20 18:27:32', '1983-07-03 16:40:38'),
       (53, 'issac.kassulke@example.org', '27ee92bb3b6d16e51de496625ed91bb936dd5281', 'Nicole', 'Hills', 'Volkman', '+43(3)2501669502', '1996-06-10', 53, '2018-07-28 07:26:34', '1987-09-24 20:07:03'),
       (54, 'luigi30@example.org', 'aefee5b074d53429e3f814e1db852147390b7012', 'Foster', '', 'Cartwright', '(771)405-4049', '1973-03-27', 54, '1972-05-07 23:13:28', '2002-08-05 04:43:48'),
       (55, 'gina58@example.org', 'ec2f27f2b08abdcc663c898f59e713396eed6e83', 'Brandi', '', 'Hane', '199.753.0019', '1978-03-21', 55, '2014-03-13 02:04:35', '2001-09-28 08:09:32'),
       (56, 'anabel48@example.com', 'fede238ec11644ef6853d5b7479722798e44d794', 'Sienna', '', 'Kunde', '836.883.6493x888', '1973-04-16', 56, '2023-03-17 00:40:40', '2007-10-19 16:34:09'),
       (57, 'watsica.maddison@example.org', '5c2bee991229e608081a266c5c330f6fac566f88', 'Ludie', '', 'Kris', '(149)743-5184x70', '2003-05-20', 57, '2002-09-20 05:52:16', '2010-11-09 01:26:02'),
       (58, 'mckenzie.junius@example.net', '90c4d748e9a6be55e617b575dc72a9948258e353', 'Hudson', '', 'Trantow', '1-202-163-1720x5', '1998-01-09', 58, '1998-07-20 12:53:28', '2010-01-23 14:00:21'),
       (59, 'jhintz@example.org', '6ffdeafdfdb31f2695b73c0c103ae5e85a9c56ec', 'Nannie', '', 'Schaefer', '997-103-8265x240', '1974-08-11', 59, '2018-05-27 04:30:59', '1988-08-06 07:07:17'),
       (60, 'aleen45@example.net', '162a5730010e11aadba7ae673da0f1c769a60423', 'Vickie', 'Bode', 'Corkery', '1-594-249-5412x0', '2002-07-21', 60, '2009-09-02 03:44:23', '2013-09-28 13:44:29'),
       (61, 'tristian26@example.com', '410fb05ece9fcad0ff5c01e2cc3180c1463383c2', 'Germaine', 'Boehm', 'Abernathy', '1-397-094-2732x3', '1972-11-03', 61, '1990-05-30 10:04:14', '1995-05-19 03:12:49'),
       (62, 'wiza.shayna@example.com', '7d18f600283532fcb3a1bdb258ee5602449e7a27', 'Elsie', 'Donnelly', 'Ledner', '1-285-073-5559', '1972-07-05', 62, '2012-08-01 19:23:17', '1970-10-15 13:44:51'),
       (63, 'uschulist@example.net', '4c60482fd5fce9317bcf0f21cf65ef08e3ffc5c9', 'Destiney', 'Stanton', 'Huels', '695.207.3105x517', '1996-04-03', 63, '2005-05-12 13:48:25', '2005-09-02 03:33:35'),
       (64, 'christina80@example.net', '72202d58bee1f133847e212fa7e743328f80cef1', 'Jamison', '', 'Gerlach', '531-387-5855x307', '1978-09-22', 64, '2013-03-24 12:00:29', '1991-05-22 03:19:30'),
       (65, 'goodwin.maxine@example.org', '647907ab4c10b53585214c5c5ae81160ad93e948', 'Dakota', 'Stokes', 'Schmitt', '1-345-482-4553x6', '1988-06-29', 65, '1993-02-12 00:50:45', '1974-08-17 10:30:00'),
       (66, 'jazmyne.rohan@example.org', '9ef03a9bd85c7d6942edcf4e78abb3531a882d25', 'Sherman', '', 'Sporer', '(644)190-7931', '1971-07-19', 66, '2005-08-19 19:07:59', '2012-07-11 20:45:18'),
       (67, 'uvolkman@example.com', 'aca225a61955fb2eee69f5c0182ba05a0716c235', 'Horace', 'Hills', 'Spinka', '04410983659', '1987-06-18', 67, '2015-06-13 09:22:16', '2019-09-03 18:38:28'),
       (68, 'ekonopelski@example.net', '34ee26b25751845bb262e1642019b2d14b15559f', 'Horacio', '', 'Ziemann', '(484)508-0361x53', '1978-09-23', 68, '1998-10-21 17:00:09', '1991-07-17 02:46:43'),
       (69, 'howe.albina@example.org', '439dbfda7998d0775fff33dacc6fb65437faec87', 'Reina', '', 'Bins', '(940)821-5113x20', '1993-02-26', 69, '1992-10-22 11:54:57', '1993-05-18 09:39:51'),
       (70, 'kiehn.haven@example.org', '0dd154cb5504c8bea9fcd16c5947edf6135d2bee', 'Carolanne', 'Vandervort', 'Cummings', '871.703.7152x310', '1977-05-14', 70, '1989-10-05 11:47:43', '1971-04-04 14:44:22'),
       (71, 'hhomenick@example.com', 'f27e6972c6cbf0323f2e2428ecf606b81c0cdd6d', 'Anna', 'Zboncak', 'Zulauf', '1-341-703-5786x0', '1977-04-20', 71, '2010-10-04 20:54:47', '1983-11-28 00:12:44'),
       (72, 'usauer@example.org', '7d0349ad140f455ecb7e3a497f4dbf961950ddaf', 'Angelo', 'Walter', 'Gleason', '785.501.4593x921', '1977-01-13', 72, '1992-10-11 22:29:13', '1995-12-28 02:53:58'),
       (73, 'kweimann@example.net', '585f4297f22c729ae584b1343a667e45893d11f7', 'Jacquelyn', 'Huels', 'Connelly', '194.176.5418', '1984-04-10', 73, '2023-06-06 22:57:25', '2011-06-08 20:16:45'),
       (74, 'mariah42@example.org', '77e5f8a5dee58dfd7ae910b26e7b8c32c6a37bd6', 'Narciso', '', 'Turcotte', '853-407-2640x179', '2004-09-07', 74, '1993-09-18 20:00:44', '1982-04-28 16:21:33'),
       (75, 'waldo05@example.com', '02a395fe01519fdb2990a6f9c497c6bdf34501cb', 'Joy', 'Volkman', 'Reichert', '1-386-327-4285x5', '1994-11-20', 75, '1975-08-12 15:14:29', '1998-06-09 02:31:16'),
       (76, 'bhartmann@example.net', '6788946dd92800b3c35f2e185216a5575146ae29', 'Ramona', 'McDermott', 'Conroy', '185-640-5471x608', '1989-08-11', 76, '1990-04-14 19:50:24', '1996-02-12 01:38:47'),
       (77, 'willie.zboncak@example.com', '46b4dd2e03f52677dad69c2fabf04af204112977', 'Valerie', '', 'Murphy', '355-030-9953', '1978-09-26', 77, '1997-10-15 15:21:21', '1971-03-18 05:38:57'),
       (78, 'pjohnston@example.org', 'f67c79f182fecec15becc1636122b9c0d57cbf4c', 'Madyson', 'Jones', 'Bins', '(295)157-6405x08', '1971-08-07', 78, '1982-10-17 00:51:15', '2002-01-15 01:17:28'),
       (79, 'lindgren.madelyn@example.com', 'bfcff60c9c8949a84bd5f1db7c634a257fe75112', 'Lilyan', '', 'Sipes', '737-596-8271x742', '1993-08-31', 79, '2023-09-02 10:32:54', '1977-09-27 23:15:07'),
       (80, 'garth27@example.net', 'a37137751162a403d94788da02423876bf93446d', 'Armani', 'Osinski', 'Lynch', '723.297.4991x232', '2005-10-24', 80, '2014-11-07 19:45:57', '2007-05-07 19:11:53'),
       (81, 'elisa.daniel@example.org', '6c4c40609d67a5e35e2793a7710058a04fc4b7db', 'Zaria', 'Welch', 'Dare', '738.724.0696x120', '1973-01-21', 81, '1987-01-23 18:21:48', '1988-11-13 06:04:51'),
       (82, 'kenneth48@example.net', '8d0218068806b737ae3b8b66cc4152a1c0ef8e0d', 'Katlynn', 'Nolan', 'Larson', '(871)508-0483x26', '2005-01-06', 82, '2021-10-10 19:08:50', '1988-07-04 11:43:08'),
       (83, 'klein.katelin@example.org', '90ad300f720925f412389a4fd7aa3394967efee4', 'MAX', 'Morar', 'Ankunding', '08632029974', '1975-08-18', 83, '2007-07-13 13:21:09', '1975-02-26 21:01:31'),
       (84, 'owaelchi@example.org', '377101544190cb3817c72cb31df2af8182c5662a', 'Helen', '', 'Mann', '02090931842', '1991-06-26', 84, '1987-08-16 16:18:18', '2006-11-14 19:13:49'),
       (85, 'herman.carolyn@example.com', 'c6c15c73a4a600f04a4387d56f05501be289ac4d', 'Effie', 'Lesch', 'Kessler', '503-885-9812', '1976-03-07', 85, '1991-11-08 00:50:02', '1997-07-30 11:20:29'),
       (86, 'brycen90@example.com', 'e65d2dd86e5a2a3a5d60f4c6c6b8e0c630b03388', 'Hector', 'Pfannerstill', 'OConner', '984-179-2790x260', '2003-03-11', 86, '2011-08-18 07:05:28', '2001-11-07 21:01:20'),
       (87, 'gottlieb.chadd@example.net', 'fddac31bb018464b06747f7ab55da3c012d26fab', 'Jaylin', 'Carter', 'Hintz', '164.545.7024', '1972-10-21', 87, '2013-05-27 13:39:51', '1998-11-02 07:28:22'),
       (88, 'kathryn74@example.com', 'a5935433759ddcb64286495d1d3826d78df3e563', 'Constantin', '', 'Raynor', '(283)195-1560', '1985-01-29', 88, '1971-01-25 11:35:36', '2012-03-06 20:08:11'),
       (89, 'brooks.schinner@example.com', '13990d6db2f965f014be5e68f93e7b9207aabd87', 'Christ', '', 'Heaney', '1-648-957-7792x3', '1980-11-18', 89, '2004-11-14 21:37:30', '2005-11-08 13:12:01'),
       (90, 'gbayer@example.net', '004a7d49d1baedb13b71f55a38274664fc4d7dc3', 'Alfred', 'Schneider', 'Kshlerin', '1-024-560-7349', '1991-12-30', 90, '2019-04-07 18:18:42', '1972-09-28 02:25:50'),
       (91, 'vhaag@example.com', '79d0c2dcadfc13d78cc9cefec543de8c10b6e036', 'Louvenia', '', 'Mitchell', '299.342.4028', '1977-11-08', 91, '2005-01-04 10:24:13', '2011-11-10 16:36:22'),
       (92, 'franecki.vincenza@example.com', '6e243b0f6e0fa4058944bd429f73406531bf4e35', 'Jessy', '', 'Tillman', '06369442315', '2002-12-14', 92, '1997-09-26 05:37:30', '2005-04-14 00:44:17'),
       (93, 'rossie.mohr@example.net', '8488b45d39b9b26a71506941566a6dd84afd44ff', 'Rhianna', '', 'Kilback', '603.453.9812x372', '1970-04-19', 93, '1982-11-15 09:25:11', '1991-11-22 08:47:12'),
       (94, 'eugene01@example.net', '009837659dd9d25cdfff3104945305465fa972c2', 'Andy', '', 'Keebler', '06259473999', '1980-02-25', 94, '1991-11-25 12:06:16', '1984-07-10 16:30:55'),
       (95, 'viva.rowe@example.net', '16d4f7722d2af83711a7608f2990bef100450ec5', 'Susanna', 'Towne', 'Boyer', '174-824-7416x943', '1995-12-11', 95, '1974-08-30 00:34:45', '1985-03-31 09:03:02'),
       (96, 'kailee62@example.net', 'b1b9fa00501d4f1b3f041ee7c8d31c10ea5f9de8', 'Katrina', '', 'Labadie', '299-144-3715x330', '1980-05-24', 96, '1987-10-03 13:25:44', '2007-09-15 04:49:55'),
       (97, 'alivia.simonis@example.com', '8a4b632d9b4873b0b26517282173be2e23551115', 'Fabian', 'Reilly', 'Homenick', '538.650.4485x931', '1983-05-21', 97, '1982-02-20 03:36:42', '2002-01-12 22:34:31'),
       (98, 'ashley82@example.net', '50b6ab73edfa1492076a7142d624819e7178fae4', 'Estrella', 'Feeney', 'Baumbach', '1-254-864-3071', '1970-11-11', 98, '1995-08-18 13:11:17', '1979-12-12 18:39:41'),
       (99, 'adella.gerlach@example.com', 'a37ee3d0dafa6ee54f4aca3b0a0476f7e5051f70', 'Elmer', 'Bruen', 'Mayert', '498-458-4713x614', '1975-04-02', 99, '1984-02-24 10:30:27', '2018-07-04 02:25:35'),
       (100, 'lizeth.ziemann@example.net', '23f062a362cce401a695294d4e5f473c265bbf67', 'Bettie', 'Walsh', 'Hermiston', '1-549-298-7146x0', '1986-07-25', 100, '2021-08-07 21:23:28', '1999-10-18 18:46:27');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK
TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11  3:15:22
