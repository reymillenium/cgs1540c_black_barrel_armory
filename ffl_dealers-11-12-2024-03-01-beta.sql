/*M!999999\- enable the sandbox mode */
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_18
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `ffl_dealers`
--

DROP TABLE IF EXISTS `ffl_dealers`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ffl_dealers`
(
    `id`            int(11)      NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the FFL dealer.',
    `name`          varchar(255) NOT NULL COMMENT 'Name of the FFL dealer.',
    `phone`         varchar(16)  NOT NULL COMMENT 'Contact number of the FFL dealer.',
    `address_line1` varchar(255) NOT NULL COMMENT 'First line of the FFL dealer’s address.',
    `address_line2` varchar(255)      DEFAULT NULL COMMENT 'Optional second line of the FFL address.',
    `city`          varchar(255) NOT NULL COMMENT 'City name.',
    `state_id`      int(11)      NOT NULL COMMENT 'The State''s ID of the FFL Dealer. Foreign key referencing states.id',
    `postal_code`   varchar(9)   NOT NULL COMMENT 'ZIP or postal code.',
    `created_at`    timestamp    NULL DEFAULT CURRENT_TIMESTAMP() COMMENT 'Timestamp when the record was created.',
    `updated_at`    timestamp    NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP() COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    KEY `fk_ffl_dealers_states1_idx` (`state_id`),
    CONSTRAINT `fk_ffl_dealers_states1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 101
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ffl_dealers`
--

LOCK TABLES `ffl_dealers` WRITE;
/*!40000 ALTER TABLE `ffl_dealers`
    DISABLE KEYS */;
INSERT INTO `ffl_dealers`
VALUES (1, 'Kessler-Tromp', '(139)888-3740x06', '77876 Pamela Mission Apt. 653\nNew Zaria, DE 02696-8395', '', 'Lake Odieside', 1, '66511', '1982-10-19 18:32:10', '2022-06-30 11:42:55'),
       (2, 'Borer, Willms and Ward', '06696138682', '9140 Becker Valley\nPort Darbyborough, CA 28121', 'Apt. 422', 'Lake Kayliberg', 2, '04200', '1992-10-14 14:39:22', '2023-04-16 10:41:43'),
       (3, 'Dibbert-Graham', '(841)469-9231x08', '75059 Daphney Radial Suite 423\nLake Harmonview, NJ 45830', 'Suite 366', 'Lake Carolanneland', 3, '45310', '1994-12-01 20:32:11', '1981-12-07 02:31:38'),
       (4, 'Cole-Brown', '1-426-383-9103x6', '5756 Hansen Pines\nClaireton, NC 68592', 'Apt. 011', 'Port Johnathon', 4, '73913', '1980-05-18 13:58:24', '1970-09-14 04:13:30'),
       (5, 'Labadie, Yost and Morar', '+75(3)8656447518', '17094 Gorczany Trail Apt. 279\nErdmanstad, GA 62399', 'Apt. 208', 'Zulaufport', 5, '32332', '2004-11-06 02:48:00', '1994-06-11 18:15:21'),
       (6, 'Lueilwitz-Ankunding', '440.368.1990x560', '692 Scotty Lake Apt. 583\nRaphaelville, MT 51282', 'Suite 771', 'Schroederland', 6, '25697', '2012-07-09 11:06:13', '1997-12-31 01:40:33'),
       (7, 'Kling, Terry and Hayes', '1-266-983-9225x6', '144 Kreiger Green Suite 782\nBlocktown, OR 76023', 'Suite 890', 'East Easterberg', 7, '65521-230', '2010-06-12 15:06:53', '1998-01-20 04:21:52'),
       (8, 'Smitham, Kuhlman and Quitzon', '(135)547-4096', '3218 Rickey Causeway\nLake Nicklaus, MN 22032', '', 'East Garettport', 8, '63967-015', '1972-03-21 02:54:03', '1971-05-25 14:12:28'),
       (9, 'Rowe-Rempel', '1-687-882-3264', '043 Kelton Port\nNorth Justinefurt, ME 42546-0113', '', 'Bednarmouth', 9, '09655', '1991-08-07 10:20:02', '2004-07-01 01:08:43'),
       (10, 'D\'Amore Inc', '1-802-491-4477', '86708 Vivien Unions Apt. 487\nKuphalside, OR 54825', 'Apt. 148', 'North Minahaven', 10, '97203-390', '2022-12-22 10:41:37', '2023-09-09 21:55:46'),
       (11, 'Sipes LLC', '1-946-700-7966', '08811 Hills Center\nLake Rosalind, WY 38759-1577', '', 'South Benjaminfurt', 11, '91966-585', '2006-10-10 16:09:29', '1976-06-26 02:43:33'),
       (12, 'Dickens, Goyette and Corkery', '07176321177', '4599 Shields Mall\nWest Sammie, WI 96694', 'Suite 613', 'Erdmanmouth', 12, '68376', '1983-07-04 04:54:31', '2000-02-14 08:17:34'),
       (13, 'Kunde PLC', '+45(0)3059797646', '28727 Monahan Drive Suite 719\nNorth Harmony, OK 61082-8577', 'Suite 682', 'Nitzscheview', 13, '22144', '1981-03-24 16:44:35', '2003-02-12 11:49:35'),
       (14, 'Kuhic, Carroll and Cummings', '790-681-4829', '0592 Jabari Summit Suite 270\nEast Ross, NV 17235-4376', '', 'Port Pierce', 14, '61426-839', '1991-02-06 07:50:57', '2020-05-07 16:18:47'),
       (15, 'Altenwerth-Little', '(323)688-3065', '5610 Okuneva Roads Apt. 556\nNorth Judson, TX 61419', '', 'Ezekielchester', 15, '65375', '1972-11-09 20:37:12', '1974-07-11 02:05:29'),
       (16, 'Block-Kunze', '1-488-279-4414', '070 Kling Prairie Suite 844\nSouth Edwinashire, UT 51169', 'Suite 155', 'Smithamtown', 16, '96906', '2017-05-21 02:25:18', '1991-06-29 06:22:28'),
       (17, 'Kuphal-Pouros', '+46(5)3577260433', '71067 Ullrich Villages Suite 243\nTrishaview, PA 15966-2601', '', 'Ondrickashire', 17, '68299', '1977-08-02 01:10:54', '2018-06-07 06:54:33'),
       (18, 'Raynor PLC', '1-080-962-7338x4', '770 Jaskolski Mission\nNew Gudruntown, CO 15444-4603', '', 'South Nigelmouth', 18, '14396-880', '2007-03-14 22:15:14', '1976-10-05 07:33:05'),
       (19, 'Cronin, Johnston and Barrows', '351.615.6411x385', '697 Dameon Mews\nEast Norma, KY 09228-6977', '', 'Lake Brenda', 19, '52368-383', '1981-10-06 03:28:41', '1971-10-01 09:25:46'),
       (20, 'Reichert Ltd', '+30(1)0920023458', '3681 Roger Gateway Apt. 719\nEast Madisynshire, NJ 27691', '', 'Lake Brooklynbury', 20, '80006', '2005-06-27 14:17:17', '2018-12-02 00:47:54'),
       (21, 'Borer-Ondricka', '573.183.1588', '365 Nitzsche Crescent\nEast Emmieton, HI 85419-9957', '', 'Lake Maya', 21, '39459-324', '1995-06-04 15:54:29', '2011-09-20 15:34:55'),
       (22, 'Marks-Walsh', '832-781-8124x564', '71885 Micah Passage Apt. 532\nDibbertside, UT 03424-3546', 'Apt. 525', 'Bernierfurt', 22, '53260-246', '1974-06-07 09:12:41', '2000-03-28 01:27:17'),
       (23, 'Conn-Huels', '875.436.2710', '6650 Bins Highway Apt. 854\nYundtchester, SC 42650', '', 'Paucekchester', 23, '28349-682', '1991-08-31 06:27:11', '2002-07-13 13:37:15'),
       (24, 'Homenick, Dach and Homenick', '+32(4)1758843690', '509 Ratke Fields Suite 010\nSouth Ilenestad, AK 73682-3352', '', 'Hillsside', 24, '00398-856', '1994-01-13 14:18:46', '2018-05-16 02:20:36'),
       (25, 'Schiller, Gaylord and Gutkowski', '742.107.6557x201', '60948 Jordi Walks\nWilmaview, WY 99626-6674', 'Suite 489', 'West Allie', 25, '64895', '2002-07-17 01:28:07', '1986-11-14 08:09:47'),
       (26, 'O\'Keefe PLC', '(050)792-4853', '623 Missouri Drive\nWest Rosalynfurt, MD 39935', '', 'Demetriustown', 26, '47031-760', '2000-09-15 18:57:44', '1993-07-11 13:58:13'),
       (27, 'Braun, Gottlieb and Kihn', '197-465-0835x304', '5161 Schmitt Prairie\nLake Ceceliaview, NV 60613', 'Apt. 268', 'West Ima', 27, '58629-799', '2022-03-23 11:35:03', '1980-05-02 04:23:36'),
       (28, 'Kreiger, Langosh and Brekke', '1-726-239-5091', '9988 Everardo Hills\nEmmaleeshire, WA 43937', 'Apt. 435', 'Lake Bettieside', 28, '72511-455', '1995-06-21 00:32:36', '1989-05-08 06:42:09'),
       (29, 'Ferry-Fay', '(581)734-5411', '4804 Zita Loop\nCasandrabury, NY 07152', 'Apt. 247', 'West Joyceville', 29, '33487-620', '1976-10-23 20:14:04', '1990-07-14 18:52:32'),
       (30, 'Considine Inc', '+97(8)3367293352', '173 Denesik Burgs\nMillsburgh, NV 35474-9358', 'Suite 336', 'Yundttown', 30, '02901-249', '2008-07-22 14:56:44', '1997-09-20 04:27:38'),
       (31, 'Upton, Schinner and Kunze', '(993)156-7387', '3112 Deckow Courts Apt. 526\nWest Ceceliaside, MO 71221', '', 'North Flobury', 31, '09904-556', '2014-12-06 04:26:12', '2006-02-16 04:32:48'),
       (32, 'O\'Conner, McClure and Bauch', '1-284-196-2979x4', '476 Nader Forks\nOnieton, AL 14017-2043', 'Suite 718', 'Jaskolskifurt', 32, '34784', '2004-03-16 21:04:48', '1982-07-12 21:20:27'),
       (33, 'Boyle-Walter', '(636)673-4655', '6153 Waelchi Lake Suite 764\nKozeyland, ID 75544', '', 'Lake Nova', 33, '35020-589', '1978-03-09 16:36:04', '1985-06-01 17:04:08'),
       (34, 'Ullrich, Hermiston and Crooks', '(593)944-4761', '8016 Graham Hills\nEast Jannie, TX 72588', '', 'North Johnpaul', 34, '62718-791', '1978-10-29 19:49:17', '1972-08-25 16:55:08'),
       (35, 'Rowe Inc', '269.472.8237', '1527 Gleason Gardens Apt. 597\nDestineyberg, MS 15251', '', 'Vivienfort', 35, '75540-691', '1992-06-10 17:07:12', '1977-04-16 13:58:26'),
       (36, 'Hills-Buckridge', '(080)445-8617x05', '0354 Dare Hollow\nHeidenreichville, AK 88436-2020', '', 'North Otiliafurt', 36, '65316', '1976-09-18 06:59:45', '1993-07-20 09:43:35'),
       (37, 'Bosco Inc', '(279)704-9994x37', '7765 Aufderhar Way Suite 295\nPort Christineshire, LA 49887', '', 'East Aprilview', 37, '47336-299', '1999-01-29 04:24:57', '1990-07-04 16:29:37'),
       (38, 'Smith, Beer and Price', '1-568-955-9511x5', '542 Orn Parkways\nSouth Reedhaven, CO 31555', 'Suite 168', 'Beerfort', 38, '48000', '2023-12-14 19:24:08', '1977-11-26 19:32:11'),
       (39, 'Dach, Cole and Marquardt', '598.906.2790x577', '639 Keyshawn Island\nGarfieldburgh, AL 77939', '', 'Lake Bretstad', 39, '19230-409', '1986-02-26 04:33:57', '1989-06-01 17:55:55'),
       (40, 'O\'Conner PLC', '640-038-2584x720', '9916 Eleonore Freeway Suite 468\nPort Pamelafort, AR 22591', 'Apt. 782', 'Blandashire', 40, '02126', '1973-03-04 14:28:58', '1980-11-25 05:57:40'),
       (41, 'Marquardt Inc', '431.850.8106x129', '956 Emerald Mall Suite 144\nKatlynland, OK 93944-4567', 'Apt. 325', 'Wadebury', 41, '07258', '2006-02-09 18:50:34', '2000-09-07 05:02:59'),
       (42, 'Bradtke PLC', '+14(1)8029342711', '75758 Lowell Grove\nSouth Websterfurt, AR 45850', '', 'Lake Nova', 42, '74538-473', '1974-02-11 08:04:27', '1976-06-07 10:16:19'),
       (43, 'Kuhic Inc', '1-611-335-8402x7', '4721 Eudora Haven\nSouth Bonita, OK 37689-0559', '', 'New Rachael', 43, '97213-001', '2008-05-17 12:10:46', '1977-08-14 12:25:47'),
       (44, 'Kshlerin and Sons', '898.692.1265', '9434 Lynn Burgs Suite 083\nVedaside, NC 91146', '', 'South Maritza', 44, '94201-106', '1995-06-21 02:57:47', '1985-03-31 07:28:49'),
       (45, 'Gaylord PLC', '07235106713', '694 Crist Unions Apt. 775\nNorth Annie, NY 08851', 'Suite 137', 'Lake Leathafort', 45, '30750', '2024-04-05 11:23:55', '1996-05-26 21:56:25'),
       (46, 'Osinski-Barrows', '1-320-881-9710', '882 Alba Brook\nOlaffurt, MS 68372', '', 'Zettaton', 46, '20395', '2022-02-05 00:55:55', '1992-08-07 00:35:17'),
       (47, 'Ondricka, Donnelly and Mraz', '424-662-0433x535', '5501 Lennie Ports\nGerholdhaven, ND 24341-7584', 'Apt. 625', 'East Bell', 47, '14086', '1993-07-07 20:10:01', '2021-12-15 07:08:21'),
       (48, 'Cruickshank and Sons', '1-034-972-3204', '6407 Hintz Hill Apt. 554\nWest Blancheberg, NC 55493-2552', '', 'Dorianton', 48, '65031-052', '2013-03-16 17:35:54', '1989-06-16 14:15:57'),
       (49, 'Heathcote Group', '1-539-270-0332', '594 Spinka Mountains Apt. 045\nMurphyside, IA 28668-3963', 'Apt. 508', 'North Vadafort', 49, '44730-677', '1980-05-26 03:35:44', '1998-03-10 16:28:21'),
       (50, 'Rodriguez LLC', '238-800-3611', '994 Elijah Knoll Apt. 110\nLake Brendentown, NV 93271', 'Suite 365', 'Koelpintown', 50, '29589', '1996-09-25 03:05:22', '1987-05-06 17:07:23'),
       (51, 'Larkin and Sons', '+36(3)3752550264', '408 Marietta Ports Suite 321\nQuincymouth, TX 53893-3283', 'Suite 003', 'Juanitaview', 1, '52273-130', '1999-11-22 08:51:23', '1992-01-05 02:52:34'),
       (52, 'Metz, Deckow and Carroll', '+45(2)0828945402', '6919 Syble Junctions\nEulaburgh, RI 34879-2859', 'Apt. 280', 'Olsonborough', 2, '79612-900', '2002-02-07 12:01:15', '2011-01-12 13:00:12'),
       (53, 'Graham, Runolfsdottir and Welch', '(072)917-6293', '226 Zieme Spurs\nWest Otis, OR 62911-6617', '', 'East Declan', 3, '85101-085', '2024-05-28 03:51:25', '2015-02-23 13:44:03'),
       (54, 'Jacobi LLC', '085.606.0122x390', '1033 Kuhn Harbor\nPaucekfurt, WV 32644-0860', '', 'Myriamchester', 4, '26941-861', '1979-10-08 06:10:46', '1978-07-17 12:44:13'),
       (55, 'Hauck-Mertz', '107-083-7157', '3055 Deron Orchard Apt. 162\nPort Lesleyville, TN 72533-9884', '', 'Port Gloria', 5, '17887-169', '1984-11-25 09:46:46', '1997-05-07 23:21:13'),
       (56, 'Simonis, Schroeder and King', '04709228149', '566 Enrique Lakes Suite 726\nOthahaven, NY 10494', 'Apt. 779', 'Athenaside', 6, '80404', '2016-05-11 07:35:48', '1981-07-12 08:00:49'),
       (57, 'Leannon PLC', '773.301.7533', '1862 Emmerich Squares Suite 476\nNew Pete, WY 79147', 'Suite 908', 'Boganport', 7, '85981', '2001-06-05 13:16:16', '2008-10-25 16:30:10'),
       (58, 'Ferry-Steuber', '07425716820', '174 Karelle Lodge Apt. 951\nRosendoborough, MD 31132-5181', 'Suite 928', 'South Carolyn', 8, '54415', '2009-06-08 17:07:14', '1988-12-07 10:02:02'),
       (59, 'Ankunding-Windler', '387.724.0700', '07603 Witting Terrace\nKihnville, TX 26430-4954', 'Suite 270', 'Constantinton', 9, '45152-424', '1972-07-29 09:04:56', '1982-07-24 18:37:18'),
       (60, 'Mayert, Kuhlman and Gulgowski', '(586)368-7413x37', '38191 Jeremie Roads\nFerrytown, NV 39748', '', 'Abernathychester', 10, '69531', '1981-02-25 22:41:58', '1993-08-25 15:11:31'),
       (61, 'Rowe-Waelchi', '1-735-369-3937', '168 Kub Roads\nPort Brigitteshire, OH 58611-8174', 'Apt. 281', 'West Simeon', 11, '44974', '1981-01-10 19:10:30', '2003-06-12 01:15:45'),
       (62, 'Brakus Group', '120.408.2787', '5418 Danielle Cape Suite 117\nVolkmanland, WI 07250-9304', 'Suite 123', 'Rollinside', 12, '58691-727', '1983-05-07 14:49:56', '1978-09-05 06:18:06'),
       (63, 'Runolfsson, Torp and Rutherford', '1-995-740-7220', '7080 Margarette Corners\nKozeyburgh, KY 32467-2756', '', 'Spencerside', 13, '44217-505', '2016-11-07 01:01:05', '2023-11-04 12:18:27'),
       (64, 'Wolff and Sons', '+54(6)3676080674', '4698 Bruen Island\nEast Yazmin, KS 89829', 'Apt. 270', 'Arjunbury', 14, '73276-551', '2005-11-29 15:39:18', '1987-02-17 21:55:10'),
       (65, 'Lockman, Hammes and Gutmann', '1-025-222-0506x9', '06968 Thompson Parks\nNatashamouth, NJ 35150', '', 'Rohanchester', 15, '40653-901', '2012-05-10 22:07:36', '2018-03-15 07:45:05'),
       (66, 'Tillman-Leannon', '156.122.2057', '222 Johnston Creek Apt. 669\nEast Adan, MO 12391-5224', 'Apt. 944', 'New Ansley', 16, '53314', '1998-06-17 23:11:32', '2012-01-07 19:54:31'),
       (67, 'Auer Group', '964-129-6158x984', '9295 Amparo Corner\nWest Aprilmouth, OH 86107-1421', '', 'Priceshire', 17, '84050', '1982-11-28 15:36:48', '2008-10-15 01:14:43'),
       (68, 'Wintheiser-Fahey', '+35(1)4077922192', '3392 Hartmann Key\nNew Joanieport, OR 38347-9779', '', 'Buckridgehaven', 18, '02539', '2014-11-10 23:26:26', '2010-10-10 10:22:55'),
       (69, 'Bauch-Waelchi', '1-271-458-9160x2', '368 Bednar Islands\nLake Alejandra, IL 83241', 'Apt. 302', 'Schoenburgh', 19, '55323', '1976-05-14 19:36:28', '1998-01-03 15:44:50'),
       (70, 'Oberbrunner, Reichert and Purdy', '770-356-1809x633', '60169 Reva Walk Suite 728\nEast Billie, GA 97739', '', 'New Fae', 20, '72066', '2017-12-29 18:52:32', '2012-09-01 03:19:20'),
       (71, 'Pfeffer-Boyle', '289.033.8574x824', '95765 Hazel Burg\nBartolettiside, WY 59004', '', 'South Delaney', 21, '23915-795', '1996-07-05 05:13:01', '1974-06-25 19:17:47'),
       (72, 'Thiel Inc', '387.510.5523', '4836 Terrill Tunnel Suite 548\nTrevorport, KY 24023', 'Apt. 872', 'Port Alberto', 22, '57219-289', '2003-03-08 09:43:32', '1973-09-28 12:43:31'),
       (73, 'Casper-Fisher', '866.883.6202x194', '65301 Boehm Islands Apt. 225\nLake Aronstad, IA 12504', '', 'Lake Theodoraberg', 23, '27189-421', '2013-07-12 09:29:16', '1997-06-22 19:08:05'),
       (74, 'Haley-Bernhard', '873.251.9176x875', '49008 Desiree Stream\nMelynaburgh, RI 22443-1428', '', 'Murrayview', 24, '52256-043', '2010-01-09 13:47:13', '2001-01-15 15:45:15'),
       (75, 'Ward, Mosciski and Kuhic', '123.453.4199', '90057 Norval Via Apt. 611\nPurdytown, KY 19679-9441', 'Suite 104', 'Lake Chloemouth', 25, '65278', '1994-02-15 17:51:10', '2010-06-13 05:24:33'),
       (76, 'Schinner-Fahey', '(595)415-6913', '786 Skiles Lock\nLavonshire, IL 97183', '', 'Deronport', 26, '91949-157', '2004-04-26 22:25:36', '2013-01-14 02:39:25'),
       (77, 'Wunsch Ltd', '+78(2)7653081005', '39207 Natasha Stream\nHeathtown, WI 06420', 'Suite 665', 'Mosciskiburgh', 27, '61244', '1996-05-26 12:03:52', '2007-04-07 17:55:33'),
       (78, 'Watsica-Effertz', '1-006-875-0860x3', '17024 Abbott Spring Suite 774\nAlisonborough, OK 61160-4069', 'Apt. 877', 'Hopeberg', 28, '39042-689', '2020-09-14 10:42:45', '1976-09-10 06:33:28'),
       (79, 'Daniel Ltd', '1-582-359-1486', '632 Alta Club Apt. 093\nNew Gunnarhaven, GA 87166-6585', 'Suite 553', 'New Serena', 29, '56979-858', '1989-03-28 05:12:05', '2024-09-10 05:14:48'),
       (80, 'Reichert, Bins and Kreiger', '(388)503-8546x58', '065 Lemke Trace\nLake Pearlinetown, MT 39190', '', 'North Valerieburgh', 30, '59214', '1981-12-26 06:55:58', '2017-07-01 05:09:41'),
       (81, 'Lind-Sanford', '1-792-696-9743x4', '31663 Lilliana Plain\nWest Colbyshire, IA 66255-4632', 'Apt. 675', 'Deckowville', 31, '95056', '1974-07-10 10:37:36', '2017-07-21 07:10:31'),
       (82, 'Considine, Sanford and Howe', '437-940-7057', '7216 Heaney Course\nShieldsbury, NH 92534', '', 'Jamesonshire', 32, '11919-614', '1997-05-30 20:04:44', '1976-01-23 14:07:20'),
       (83, 'Bahringer, Simonis and Pagac', '996.742.2016x420', '188 Madisen Park Suite 999\nWest Andreanneborough, SD 44838', 'Apt. 090', 'South Sandrine', 33, '42264', '1997-06-19 08:21:41', '1970-01-29 20:09:58'),
       (84, 'Kutch, Schimmel and Cruickshank', '07000454173', '793 Sanford Common\nAnselton, UT 78900-5710', 'Apt. 493', 'West Foster', 34, '31028-270', '1978-06-13 22:40:13', '2008-06-15 21:33:17'),
       (85, 'Hodkiewicz-Green', '(308)123-5680x91', '517 Syble Road Apt. 528\nLake Aurelie, NV 74506-1668', '', 'South Nannieton', 35, '71805', '2005-08-19 11:30:47', '1974-08-14 20:31:02'),
       (86, 'Pacocha-Kirlin', '016-285-1126', '776 Zemlak Locks\nIrwinbury, MD 90833', 'Apt. 891', 'Giovanimouth', 36, '46845', '1983-10-27 10:20:54', '2010-09-02 09:16:41'),
       (87, 'Renner, Oberbrunner and Volkman', '05961917662', '309 King Fork\nO\'Keefeshire, OH 01067', '', 'West Jess', 37, '07060', '1991-04-23 17:16:11', '1970-09-21 20:21:49'),
       (88, 'Rowe-Leffler', '370.348.3433x698', '929 Grover Oval\nNorth Adrianland, SD 85782', '', 'Alishaside', 38, '55008-397', '2019-03-10 05:50:48', '2021-08-11 07:52:31'),
       (89, 'Lockman LLC', '(918)901-9150x17', '6317 Jayne Meadow Apt. 312\nEast Ervinhaven, VA 37621-6566', 'Apt. 901', 'West Desiree', 39, '86156', '1979-09-11 03:53:37', '1994-02-19 08:45:59'),
       (90, 'Bergnaum, Wilkinson and Hamill', '1-139-266-8380x3', '8033 Anissa Corners\nTerryhaven, SC 10650-8245', 'Suite 941', 'Carterberg', 40, '17731-991', '1975-03-19 17:12:33', '2017-06-29 10:35:19'),
       (91, 'Haley Ltd', '278.624.3795x752', '15697 Noble Extensions\nBrennonville, KY 55599', 'Suite 014', 'Martachester', 41, '09981-221', '2001-06-20 17:11:06', '2003-02-08 11:37:01'),
       (92, 'Heidenreich-Ledner', '(567)406-5602x80', '881 Gutmann Common\nVonstad, MD 25102', '', 'West Eulaliabury', 42, '06346-699', '1996-07-30 08:16:25', '2006-04-20 11:45:35'),
       (93, 'Langworth and Sons', '02351817017', '92950 Schulist Road\nLenorastad, KY 21213', '', 'New Friedrichbury', 43, '69381', '2012-11-02 02:46:12', '2006-07-14 07:36:30'),
       (94, 'Boyer Group', '318.731.5545x346', '47255 Johnson Trafficway Apt. 158\nVonRuedenport, AZ 68082', 'Suite 634', 'Gibsonland', 44, '70589', '2011-02-01 07:28:59', '2007-02-28 11:27:14'),
       (95, 'Kihn, Baumbach and Blanda', '05391598568', '4829 Veum Drive\nSouth Adelleland, AZ 71707-2020', '', 'East Ocieside', 45, '03039', '1974-12-25 05:23:07', '1987-02-26 06:20:12'),
       (96, 'Marquardt Ltd', '+52(4)3889830055', '93100 Ericka Throughway Apt. 025\nSouth Lorine, ND 24742-5454', '', 'Curtbury', 46, '74016', '1988-05-14 09:45:18', '1989-06-06 09:17:00'),
       (97, 'Lueilwitz-Champlin', '959.347.3982x648', '25790 Cornell Hills Apt. 809\nMariannefurt, MI 19794-1665', 'Suite 294', 'Edmondborough', 47, '97789', '1982-11-19 22:16:56', '1972-03-29 20:42:52'),
       (98, 'Windler Ltd', '(708)277-6644x83', '39620 Marcelino Lodge Apt. 263\nSouth Susana, MD 70286', '', 'Jadynshire', 48, '35536', '2018-05-09 00:21:50', '2005-12-05 00:37:20'),
       (99, 'Howe-Feil', '1-437-041-7216x8', '019 Justine Streets\nDelilahhaven, DC 73353-2138', '', 'Terrencebury', 49, '98215-956', '1983-09-08 11:27:00', '1974-03-10 01:34:45'),
       (100, 'Rosenbaum-Yundt', '357-071-6970', '8119 Joyce Plaza\nNikolauschester, CT 65504-9365', '', 'Jayneshire', 50, '87983', '1999-02-03 00:01:26', '1999-12-06 03:29:42');
/*!40000 ALTER TABLE `ffl_dealers`
    ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2024-12-11  3:01:57
