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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses`
(
    `id`            int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `customer_id`   int(11) NOT NULL,
    `address_line1` varchar(255) NOT NULL COMMENT 'First line of the address.',
    `address_line2` varchar(255) DEFAULT NULL COMMENT 'Optional second line of the address.',
    `city`          varchar(255) NOT NULL COMMENT 'City name.',
    `state_id`      int(11) NOT NULL COMMENT 'State or province. Foreign key referencing states.id',
    `postal_code`   varchar(9)   NOT NULL COMMENT 'ZIP or postal code.',
    `is_default`    tinyint(4) DEFAULT 0 COMMENT 'Indicates if this is the default address.',
    `created_at`    timestamp NULL DEFAULT CURRENT_TIMESTAMP() COMMENT 'Timestamp when the record was created.',
    `updated_at`    timestamp NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP() COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    KEY             `fk_addresses_states1_idx` (`state_id`),
    KEY             `fk_addresses_customers1_idx` (`customer_id`),
    CONSTRAINT `fk_addresses_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON UPDATE CASCADE,
    CONSTRAINT `fk_addresses_states1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK
TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses`
VALUES (1, 1, '9207 Schuppe Extensions Apt. 324', 'Suite 115', 'Frederikville', 0, '71580-319', 0, '2009-03-01 09:08:02', '2016-12-05 11:40:44'),
       (2, 2, '46884 Zachary Falls', 'Apt. 230', 'New Mattie', 2, '65361-411', 0, '1975-03-12 14:34:24', '2004-01-08 16:29:24'),
       (3, 3, '2926 Shanahan Loaf', 'Suite 686', 'Beattyburgh', 3, '42548-106', 0, '1982-04-30 16:44:57', '2005-03-29 14:48:22'),
       (4, 4, '37920 Gutkowski Mall', 'Apt. 652', 'Stoltenbergmouth', 4, '95486', 0, '2022-11-06 05:24:45', '2007-02-11 06:44:40'),
       (5, 5, '80922 Cummerata Curve', 'Apt. 634', 'West Tommie', 5, '41827-726', 0, '1986-05-26 23:15:05', '2007-09-17 01:07:43'),
       (6, 6, '957 Dibbert Cliffs Suite 673', 'Apt. 364', 'Christopmouth', 6, '67321-086', 0, '1982-11-13 16:15:21', '1974-12-22 19:59:27'),
       (7, 7, '02706 Feil Land Apt. 985', 'Apt. 496', 'New Perry', 7, '00481', 0, '2015-10-18 14:03:54', '1977-02-21 10:04:51'),
       (8, 8, '824 Cruickshank Cove Suite 309', 'Suite 667', 'Nikolausside', 8, '07068-445', 0, '1991-07-11 00:58:49', '2013-09-23 16:56:22'),
       (9, 9, '44460 Green Courts', 'Apt. 633', 'East Ettieville', 9, '96189-800', 0, '2013-06-27 19:33:56', '1985-09-19 15:20:11'),
       (10, 10, '15582 Cormier Mount', 'Apt. 103', 'Chaddburgh', 10, '00015', 0, '1981-06-08 10:18:38', '2023-12-26 05:10:49'),
       (11, 11, '56847 Dexter Throughway Suite 761', 'Apt. 111', 'West Bethstad', 11, '95521-829', 0, '1978-02-17 19:27:27', '1986-07-25 06:17:51'),
       (12, 12, '53801 Donato Glen Suite 375', 'Suite 153', 'North Giashire', 12, '92302-243', 0, '2018-03-25 02:09:33', '2002-12-03 19:43:01'),
       (13, 13, '568 Luna Square Suite 130', 'Suite 990', 'Port Mittie', 13, '83919-592', 0, '1984-10-07 20:19:45', '1970-12-26 09:32:16'),
       (14, 14, '0552 Elisa Grove', 'Apt. 742', 'Reichelton', 14, '64114-582', 0, '2008-12-25 07:38:03', '1996-05-20 01:47:33'),
       (15, 15, '58594 Nathanial Stravenue Suite 253', 'Suite 927', 'South Myrl', 15, '39544-603', 0, '1972-09-21 08:59:34', '1976-02-19 21:58:55'),
       (16, 16, '36735 Adonis Overpass Suite 895', 'Suite 556', 'East Kittyshire', 16, '34226-204', 0, '1999-11-22 06:40:18', '2020-08-11 03:59:42'),
       (17, 17, '9887 Walter Village Suite 032', 'Suite 769', 'North Kacibury', 17, '04740-383', 0, '2021-03-20 22:38:07', '1978-10-30 21:50:08'),
       (18, 18, '5196 Carleton Gardens Suite 678', 'Suite 629', 'Daughertyville', 18, '94519', 0, '2012-01-04 05:08:30', '2010-06-26 23:21:56'),
       (19, 19, '36515 Tyra Groves Suite 053', 'Suite 061', 'Schimmelfort', 19, '12248-051', 0, '2008-11-19 18:53:18', '2006-10-08 23:25:02'),
       (20, 20, '17727 Webster Street Suite 181', 'Apt. 669', 'Williamsonshire', 20, '81549', 0, '1983-09-30 11:28:39', '1984-12-18 23:06:42'),
       (21, 21, '814 Bradtke Mill Suite 287', 'Apt. 433', 'West Kris', 21, '88107-093', 0, '2002-09-15 10:43:39', '1991-02-24 22:08:30'),
       (22, 22, '81190 Taurean Mews', 'Apt. 359', 'Lake Novellaport', 22, '61318-701', 0, '1974-02-24 16:17:00', '1999-03-02 20:20:32'),
       (23, 23, '8410 Delbert Harbor', 'Apt. 306', 'Auerview', 23, '23319', 0, '1993-07-27 01:57:18', '1985-07-01 11:27:01'),
       (24, 24, '864 Sanford Isle Suite 630', 'Apt. 712', 'Murazikmouth', 24, '05516', 0, '2007-05-13 16:50:25', '1989-10-28 14:21:13'),
       (25, 25, '33493 Janiya Avenue Apt. 009', 'Suite 548', 'Schaeferstad', 25, '25402-608', 0, '2000-05-22 01:17:15', '1988-06-26 17:54:11'),
       (26, 26, '72078 Kihn Stravenue Apt. 239', 'Apt. 330', 'Ziememouth', 26, '46065-505', 0, '2014-08-18 07:09:59', '2022-10-03 16:56:11'),
       (27, 27, '440 Emely Drives', 'Suite 059', 'Anabelmouth', 27, '13198', 0, '1978-07-07 01:40:22', '2017-06-27 04:50:30'),
       (28, 28, '1619 Lorenz Point Suite 777', 'Apt. 193', 'Lake Marleyberg', 28, '49122-341', 0, '2019-10-09 06:05:05', '2017-09-15 21:28:04'),
       (29, 29, '71158 White Light', 'Apt. 123', 'East Kayton', 29, '32300', 0, '1975-04-24 13:15:19', '2014-03-07 16:59:10'),
       (30, 30, '0604 Onie Meadow Apt. 137', 'Suite 483', 'Metzhaven', 30, '54976', 0, '2006-04-10 22:51:07', '1991-04-30 09:33:15'),
       (31, 31, '644 Enos Mission Apt. 202', 'Apt. 952', 'New Garthland', 31, '76928-892', 0, '2008-07-04 00:03:41', '2023-10-19 10:27:12'),
       (32, 32, '80249 Schaefer Junction Apt. 913', 'Suite 060', 'Lake Clintonfurt', 32, '64511', 0, '2016-11-03 01:20:05', '2006-11-26 01:41:23'),
       (33, 33, '23066 Metz Parkways Apt. 752', 'Apt. 544', 'VonRuedenberg', 33, '09704-424', 0, '1998-01-27 09:30:40', '1980-01-10 08:11:19'),
       (34, 34, '51387 Lehner Locks Apt. 998', 'Suite 776', 'Clydetown', 34, '76517', 0, '2018-04-17 14:49:13', '2011-09-18 06:28:34'),
       (35, 35, '100 Shanahan Underpass', 'Suite 367', 'Ferminville', 35, '36852', 0, '2017-11-29 08:06:13', '2011-05-28 02:05:51'),
       (36, 36, '48430 Neha Island', 'Apt. 220', 'Theodoraville', 36, '60322-525', 0, '1973-02-18 14:23:16', '1992-10-16 12:21:54'),
       (37, 37, '11935 Parisian Manors Suite 603', 'Suite 216', 'Kattieview', 37, '21114-640', 0, '1989-08-28 10:16:59', '2014-10-01 11:07:05'),
       (38, 38, '20238 Gustave Row', 'Apt. 762', 'Schadenview', 38, '59462-219', 0, '1989-03-07 23:40:49', '1978-09-17 18:00:47'),
       (39, 39, '77393 Kihn Keys', 'Suite 285', 'Xaviershire', 39, '81798-044', 0, '1972-01-30 14:36:38', '2002-09-06 20:12:58'),
       (40, 40, '638 Jannie Trail', 'Apt. 859', 'North Solon', 40, '51224', 0, '2009-04-26 05:57:30', '1984-10-11 20:59:20'),
       (41, 41, '43019 Daphnee Freeway Apt. 725', 'Apt. 535', 'Hettingerhaven', 41, '00572', 0, '1992-04-07 02:28:03', '1998-03-05 12:06:38'),
       (42, 42, '274 Marisa Brooks Apt. 170', 'Suite 327', 'Madilynchester', 42, '72486', 0, '2022-10-18 05:05:01', '1979-04-13 08:48:47'),
       (43, 43, '34908 Reilly Meadows Suite 744', 'Suite 710', 'Ladariustown', 43, '05471', 0, '2005-10-18 17:19:08', '2014-03-23 19:07:18'),
       (44, 44, '429 Kane Forge', 'Suite 340', 'Lake Demario', 44, '24073-180', 0, '1983-06-05 15:51:06', '2022-06-20 22:58:31'),
       (45, 45, '823 Stroman Lake', 'Apt. 113', 'Linwoodtown', 45, '86546-854', 0, '1998-10-16 06:29:21', '1991-06-09 08:49:33'),
       (46, 46, '6001 Lubowitz Isle', 'Suite 996', 'Lake Albinamouth', 46, '26189', 0, '1971-11-15 16:36:57', '1976-04-03 02:22:26'),
       (47, 47, '03476 Yundt Square Suite 893', 'Apt. 056', 'Gisselleside', 47, '63646-717', 0, '1977-04-21 05:25:06', '1974-01-15 11:06:17'),
       (48, 48, '42454 Macejkovic Mills Apt. 028', 'Suite 888', 'Jadenberg', 48, '10352-738', 0, '2009-12-28 00:26:11', '2012-07-22 20:06:36'),
       (49, 49, '3212 Troy Highway', 'Apt. 226', 'South Kolby', 49, '51779-868', 0, '2007-11-06 15:20:13', '2000-05-20 04:21:36'),
       (50, 50, '749 Frami Mount Apt. 728', 'Apt. 929', 'Jaylonmouth', 50, '38956', 0, '2002-05-18 14:12:49', '1987-09-04 15:37:49'),
       (51, 51, '036 Dock Plains', 'Apt. 230', 'Port Kaylabury', 0, '04921', 0, '1995-08-08 03:15:02', '2009-06-09 23:48:25'),
       (52, 52, '28588 Georgianna Crest Apt. 648', 'Apt. 371', 'Lake Colemanborough', 2, '66857', 0, '2024-10-06 14:40:40', '1973-06-02 11:35:56'),
       (53, 53, '56828 Mary Oval', 'Apt. 027', 'Padbergfort', 3, '62928', 0, '2017-10-07 13:46:46', '2012-10-13 14:24:35'),
       (54, 54, '57548 Maggio Station Suite 859', 'Apt. 135', 'Meggieview', 4, '41844-269', 0, '1974-12-30 08:44:18', '2003-06-16 20:07:59'),
       (55, 55, '05771 Leuschke Fall Apt. 374', 'Apt. 835', 'Elisefort', 5, '80381', 0, '1976-07-21 12:15:20', '2020-09-29 18:22:26'),
       (56, 56, '949 Elmore Mountains Suite 026', 'Apt. 990', 'Rooseveltside', 6, '03844', 0, '1979-08-18 16:09:34', '1976-10-28 18:22:02'),
       (57, 57, '11851 Olson Alley Apt. 370', 'Suite 688', 'Funkside', 7, '99866', 0, '1981-11-18 06:25:24', '2021-01-29 03:04:04'),
       (58, 58, '06584 Stephanie Rapid Apt. 263', 'Suite 854', 'West Kirstinberg', 8, '11280', 0, '1978-12-31 22:11:22', '1971-03-17 21:23:24'),
       (59, 59, '5323 Keebler Hills Suite 950', 'Apt. 372', 'Aylaberg', 9, '22521', 0, '1993-10-03 21:32:53', '2000-10-29 19:25:30'),
       (60, 60, '555 Ansley Skyway Apt. 244', 'Apt. 401', 'New Halside', 10, '72046', 0, '1996-11-29 12:19:53', '2020-03-12 02:37:41'),
       (61, 61, '04515 Simonis Radial', 'Suite 037', 'Ronnyshire', 11, '95550-442', 0, '1984-12-21 20:54:30', '1974-06-25 21:22:21'),
       (62, 62, '465 Taylor Spring Suite 029', 'Suite 130', 'Fredrickberg', 12, '70949', 0, '2009-10-13 01:26:36', '1974-09-11 21:09:06'),
       (63, 63, '03852 Hackett Forks', 'Suite 126', 'Stevieport', 13, '64206-511', 0, '1972-06-24 05:15:52', '2021-01-05 16:02:11'),
       (64, 64, '2072 Kiera Common Suite 940', 'Suite 536', 'Dietrichbury', 14, '79432', 0, '2006-06-18 13:00:10', '2014-08-23 14:49:49'),
       (65, 65, '1440 Rita Ridges', 'Suite 640', 'West Lilianeberg', 15, '03751', 0, '1977-03-23 17:11:35', '2018-02-06 10:27:00'),
       (66, 66, '7050 Werner Center', 'Suite 642', 'North Chestertown', 16, '76977-428', 0, '2004-11-19 12:16:36', '1980-01-09 17:01:11'),
       (67, 67, '04774 Swaniawski Islands', 'Apt. 553', 'Steveburgh', 17, '49717-523', 0, '1996-10-08 15:22:45', '2023-06-16 04:12:57'),
       (68, 68, '670 Kerluke Green Suite 045', 'Suite 541', 'Angelicastad', 18, '76986-920', 0, '2007-06-13 01:46:35', '2013-11-06 02:18:27'),
       (69, 69, '391 Citlalli Ville', 'Suite 182', 'West Geo', 19, '23930-504', 0, '1996-05-18 15:29:10', '1985-07-30 13:11:00'),
       (70, 70, '44443 Demarco Port', 'Suite 880', 'Port Aliceshire', 20, '23579-012', 0, '2001-11-07 23:41:57', '1972-02-04 02:14:26'),
       (71, 71, '604 Kunze Parkways Suite 562', 'Suite 403', 'Farrellville', 21, '98063-652', 0, '2004-07-11 14:50:22', '2022-10-21 17:23:03'),
       (72, 72, '782 Krystal Islands', 'Suite 951', 'Coleborough', 22, '20806', 0, '1978-03-11 16:33:36', '1997-09-07 12:45:20'),
       (73, 73, '34523 Alex Avenue', 'Suite 019', 'Skilesborough', 23, '43278-454', 0, '2023-12-24 07:39:31', '1994-05-19 17:15:45'),
       (74, 74, '7609 Ziemann Glen Suite 278', 'Suite 572', 'Port Bettefort', 24, '71244-943', 0, '1980-05-18 17:20:37', '1998-06-26 04:25:43'),
       (75, 75, '169 Jacobi Junction Apt. 996', 'Suite 292', 'North Freddie', 25, '78789-057', 0, '1984-01-25 00:20:27', '1993-06-14 12:00:08'),
       (76, 76, '8016 Brown Villages', 'Suite 595', 'Leonefurt', 26, '85143-561', 0, '1994-03-20 14:08:21', '1996-10-21 05:17:15'),
       (77, 77, '8027 Yvonne Spurs', 'Apt. 196', 'Jacobiborough', 27, '85520-469', 0, '2021-05-22 05:39:44', '2001-12-18 14:35:20'),
       (78, 78, '3361 Angela Brooks', 'Suite 741', 'Estefaniafurt', 28, '28535', 0, '2022-01-22 08:38:00', '2005-11-11 05:15:46'),
       (79, 79, '8779 Emiliano Lodge', 'Suite 431', 'Josueborough', 29, '73137', 0, '1988-04-20 18:35:10', '1997-06-14 07:15:51'),
       (80, 80, '2965 Rutherford Forges', 'Apt. 859', 'North Maymieberg', 30, '99049', 0, '1987-11-27 05:15:25', '1991-09-05 12:52:36'),
       (81, 81, '92326 Luis Stream', 'Apt. 566', 'East Lennaside', 31, '84577-589', 0, '2000-02-03 07:00:45', '2013-11-11 21:28:41'),
       (82, 82, '178 Crona Path', 'Apt. 404', 'North Adan', 32, '40759', 0, '2010-08-13 02:02:09', '2018-11-23 03:46:05'),
       (83, 83, '6229 Anjali Hill Suite 978', 'Suite 086', 'West Romaineview', 33, '20314', 0, '1982-01-02 01:36:38', '1998-06-05 21:41:46'),
       (84, 84, '00580 Beatty Avenue Apt. 777', 'Suite 591', 'VonRuedenfort', 34, '98831', 0, '1990-04-02 13:18:08', '1979-03-18 14:25:13'),
       (85, 85, '7826 Smitham Roads Suite 382', 'Apt. 301', 'Binsbury', 35, '22529', 0, '2000-11-20 09:45:26', '1993-10-07 02:23:47'),
       (86, 86, '8249 Rosa Alley Apt. 629', 'Suite 172', 'Windlerport', 36, '92044-856', 0, '1997-08-01 11:55:56', '2008-02-25 05:02:22'),
       (87, 87, '54499 Klein Roads', 'Apt. 023', 'Martamouth', 37, '28284', 0, '2010-11-05 00:05:41', '1995-02-10 17:23:37'),
       (88, 88, '27375 Julian Motorway Apt. 384', 'Suite 617', 'Dionton', 38, '38196', 0, '1973-07-20 04:37:22', '1974-08-02 20:35:44'),
       (89, 89, '70595 Rosendo Ports', 'Suite 437', 'Joellechester', 39, '97513', 0, '2010-07-16 23:04:17', '2010-12-11 21:37:14'),
       (90, 90, '3759 White Crest Suite 951', 'Suite 694', 'Altaland', 40, '40382-286', 0, '2003-06-23 10:02:09', '1980-10-17 07:40:05'),
       (91, 91, '441 Kris Ports', 'Apt. 912', 'West Taya', 41, '92117', 0, '1985-08-02 13:29:59', '2006-03-30 10:39:32'),
       (92, 92, '7827 Crystel Brooks', 'Apt. 902', 'Rolfsonland', 42, '54956-875', 0, '1982-06-14 01:02:08', '1983-12-03 02:32:51'),
       (93, 93, '398 Paucek Meadows', 'Suite 053', 'South Vicente', 43, '08686', 0, '1983-10-18 15:50:16', '1995-03-24 00:03:57'),
       (94, 94, '1946 Chandler Knoll', 'Suite 364', 'Caitlynville', 44, '65509-177', 0, '2019-03-24 14:09:46', '2010-06-17 20:58:36'),
       (95, 95, '28137 Candice Pass Apt. 182', 'Apt. 775', 'Port Lowellview', 45, '70230', 0, '1985-09-30 01:04:38', '1987-03-07 17:32:15'),
       (96, 96, '9113 Maynard Spring', 'Apt. 696', 'Denisburgh', 46, '48492-532', 0, '1989-05-07 21:11:06', '1971-08-29 03:54:22'),
       (97, 97, '69130 Bridget Manor Apt. 085', 'Suite 317', 'South Donniefort', 47, '25083-265', 0, '1992-06-03 09:36:26', '1993-03-19 06:07:41'),
       (98, 98, '4283 Bernardo Land Suite 501', 'Apt. 982', 'Emmerichburgh', 48, '52384-001', 0, '2017-08-18 21:52:15', '2023-02-06 17:53:58'),
       (99, 99, '4598 Gulgowski Spring Apt. 270', 'Suite 270', 'Gussiefort', 49, '33745', 0, '2019-05-15 18:41:34', '1980-02-01 17:27:33'),
       (100, 100, '5396 Jada Roads', 'Apt. 187', 'North Juston', 50, '78405', 0, '1980-10-14 22:49:40', '1995-12-27 13:07:13'),
       (101, 1, '49127 Ebert Glens Apt. 690', 'Suite 585', 'East Axel', 0, '62506', 0, '2009-07-15 03:13:31', '1976-09-09 18:51:19'),
       (102, 2, '498 Alta Knoll', 'Suite 910', 'Eloisafurt', 2, '15052', 0, '2012-09-25 15:05:59', '2016-01-12 23:07:59'),
       (103, 3, '640 Jacques Mountain', 'Apt. 842', 'West Justyn', 3, '25314-116', 0, '1982-09-26 18:38:38', '1989-09-12 11:50:48'),
       (104, 4, '716 Annabel Plain', 'Apt. 886', 'North Kay', 4, '26703', 0, '1987-01-25 11:29:29', '2015-12-05 17:54:33'),
       (105, 5, '76085 Clement Point Apt. 918', 'Apt. 065', 'Port Gracieburgh', 5, '98602-191', 0, '1971-07-26 15:40:24', '2015-01-29 23:07:21'),
       (106, 6, '47377 Percy Forest', 'Suite 611', 'Ziemannberg', 6, '07709-233', 0, '2004-03-25 16:23:56', '2016-04-22 13:30:54'),
       (107, 7, '3106 Bradtke Isle Apt. 663', 'Suite 886', 'West Kennedy', 7, '15055-249', 0, '2005-04-19 02:39:01', '2019-11-12 21:40:17'),
       (108, 8, '8690 Gregory Plains', 'Apt. 226', 'OHarachester', 8, '12868-198', 0, '2018-11-11 09:36:45', '2023-11-14 12:01:33'),
       (109, 9, '6764 Farrell Court', 'Suite 464', 'Dickiland', 9, '24384', 0, '1986-01-26 19:30:58', '1995-02-03 00:12:11'),
       (110, 10, '52424 Mae Flat Apt. 571', 'Suite 115', 'East Guillermoburgh', 10, '39884-515', 0, '1983-02-10 14:35:26', '1989-11-16 00:52:49'),
       (111, 11, '6669 Harvey Creek Suite 738', 'Suite 166', 'Leonardoview', 11, '06261', 0, '2008-12-24 13:10:57', '2010-08-30 01:25:33'),
       (112, 12, '71222 Alvina Mill', 'Apt. 683', 'Feeneyville', 12, '18396-043', 0, '2000-01-29 06:56:44', '2011-05-21 16:21:00'),
       (113, 13, '5912 Kuhlman Meadows', 'Suite 428', 'Langchester', 13, '14774', 0, '2022-12-30 01:44:17', '2007-05-11 04:56:38'),
       (114, 14, '53848 Maximillian Rue', 'Apt. 850', 'South Kileyville', 14, '97326-125', 0, '2016-09-20 12:40:09', '2023-03-02 18:51:20'),
       (115, 15, '58534 Alvina Trace', 'Suite 573', 'East Carlo', 15, '43301-976', 0, '1994-07-08 17:49:57', '2015-12-20 20:48:58'),
       (116, 16, '57359 Sylvia Pines Suite 929', 'Suite 382', 'Langworthside', 16, '08201', 0, '2023-07-16 21:27:55', '1975-12-31 09:16:26'),
       (117, 17, '6748 Lind Islands Apt. 592', 'Suite 183', 'Keyshawnville', 17, '57027', 0, '1977-01-23 20:36:27', '2011-10-17 05:28:47'),
       (118, 18, '9244 Julianne River Apt. 808', 'Apt. 697', 'Raynorfurt', 18, '94709-979', 0, '2001-05-20 01:01:46', '2015-10-27 20:31:03'),
       (119, 19, '0919 Lempi Fork Apt. 302', 'Apt. 241', 'Port Alisafort', 19, '35868', 0, '1974-10-02 01:24:54', '1988-01-08 20:35:33'),
       (120, 20, '66982 Giovani Meadows Apt. 205', 'Apt. 541', 'Morissettechester', 20, '05223-489', 0, '2008-10-29 03:54:07', '1999-07-12 14:56:17'),
       (121, 21, '146 Hartmann Overpass', 'Suite 078', 'South Jakayla', 21, '44680-641', 0, '1994-04-21 14:39:24', '1977-07-11 23:16:58'),
       (122, 22, '29334 Delphia Street', 'Suite 794', 'Keeblerside', 22, '28302-358', 0, '2022-08-01 19:59:19', '1974-08-27 07:48:49'),
       (123, 23, '7601 Cory Landing Apt. 395', 'Apt. 585', 'South Birdie', 23, '94016', 0, '1977-09-09 01:32:23', '1970-03-03 04:13:29'),
       (124, 24, '5130 Corkery Overpass Apt. 698', 'Apt. 662', 'Gaylordport', 24, '20264', 0, '2005-05-18 02:27:43', '2009-10-04 09:32:03'),
       (125, 25, '405 Delaney Crescent', 'Suite 043', 'Larsonstad', 25, '60496', 0, '1982-05-26 22:37:13', '1980-01-10 13:28:03'),
       (126, 26, '01058 Casandra Greens', 'Suite 699', 'East Kane', 26, '91923', 0, '2001-04-03 19:12:13', '1981-05-13 07:53:13'),
       (127, 27, '6999 Friesen Motorway Apt. 890', 'Suite 905', 'West Tyreseport', 27, '64050-031', 0, '2013-06-22 08:56:57', '1996-03-01 17:16:27'),
       (128, 28, '979 Stokes Mount', 'Apt. 644', 'Annalisetown', 28, '26285', 0, '1972-09-20 20:43:57', '1981-06-30 14:10:23'),
       (129, 29, '5853 Hyatt Throughway', 'Apt. 231', 'Cleochester', 29, '53437', 0, '1991-06-23 03:07:48', '1979-02-08 05:08:22'),
       (130, 30, '2741 Mervin Island', 'Suite 779', 'Kuhlmanstad', 30, '61348', 0, '2006-09-21 23:44:31', '2019-12-18 20:47:11'),
       (131, 31, '775 Westley Underpass Apt. 913', 'Apt. 776', 'Haleymouth', 31, '25044', 0, '1982-06-21 05:52:29', '1979-04-17 10:19:17'),
       (132, 32, '39756 Goyette Oval Apt. 269', 'Suite 694', 'Milliemouth', 32, '10410-572', 0, '1984-10-21 21:06:24', '1984-12-22 12:19:26'),
       (133, 33, '1694 Shanahan Neck', 'Suite 127', 'West Dovie', 33, '92483', 0, '1975-07-28 10:59:51', '1982-09-02 00:32:35'),
       (134, 34, '1166 Amelie Harbor Apt. 475', 'Suite 551', 'Morarside', 34, '14320', 0, '1983-12-29 16:28:09', '1998-11-13 08:42:46'),
       (135, 35, '8516 Merritt Island', 'Suite 142', 'Lake Genemouth', 35, '12345', 0, '1995-07-06 18:18:22', '1990-08-25 13:01:21'),
       (136, 36, '306 Eudora Stream Suite 629', 'Suite 680', 'NEW Fernando', 36, '22719-309', 0, '1980-05-18 10:34:53', '1996-06-06 10:46:52'),
       (137, 37, '5338 Dicki Mountain Apt. 667', 'Suite 153', 'South Charlieville', 37, '57767', 0, '2023-09-19 16:43:13', '2018-05-24 07:47:47'),
       (138, 38, '269 Mayer Haven', 'Suite 399', 'Gorczanyfurt', 38, '41233-242', 0, '2013-02-18 05:44:02', '2007-09-04 08:12:35'),
       (139, 39, '60165 Shannon Orchard Apt. 844', 'Suite 969', 'Bechtelarshire', 39, '78813-218', 0, '1994-06-15 09:01:12', '2003-06-14 11:55:09'),
       (140, 40, '75080 Hoeger Manors Apt. 360', 'Suite 811', 'Hankville', 40, '72825', 0, '1994-06-20 00:46:39', '1970-03-04 01:34:58'),
       (141, 41, '191 Lauryn Walk', 'Suite 797', 'NEW Ebbafort', 41, '00574-784', 0, '1981-02-07 18:51:34', '2005-02-12 09:43:04'),
       (142, 42, '2485 Pfeffer Valley', 'Suite 012', 'Libbieton', 42, '33471-223', 0, '1998-11-26 10:47:14', '1995-04-23 12:18:24'),
       (143, 43, '8911 Wolf Forks Apt. 906', 'Apt. 304', 'NEW Ian', 43, '29075', 0, '1994-08-30 21:18:05', '2019-08-22 10:14:59'),
       (144, 44, '5926 Laron Vista', 'Suite 593', 'North Efrenstad', 44, '64194', 0, '1973-04-13 09:16:06', '1981-03-16 16:40:05'),
       (145, 45, '424 Earlene PATH', 'Suite 468', 'Richmondstad', 45, '43319', 0, '1975-06-18 07:37:26', '2005-07-26 08:27:55'),
       (146, 46, '932 Stracke Highway Suite 287', 'Apt. 324', 'Port Ciceroland', 46, '63481-722', 0, '2001-05-23 15:27:44', '2013-07-18 15:03:01'),
       (147, 47, '14223 Kaylie Burgs', 'Suite 884', 'Hettingerview', 47, '22313', 0, '1997-02-09 22:58:15', '1999-08-07 20:29:07'),
       (148, 48, '16640 Dana Mountain', 'Suite 572', 'Port Marioland', 48, '56953', 0, '1993-11-20 11:34:10', '1973-06-01 23:41:39'),
       (149, 49, '6859 Lera Drives Apt. 077', 'Apt. 011', 'Shieldsview', 49, '04486', 0, '2002-01-18 02:01:20', '1984-12-01 23:21:36'),
       (150, 50, '64971 Jast Unions', 'Apt. 384', 'Quigleyborough', 50, '70835-919', 0, '2012-11-01 00:54:34', '1974-07-29 15:28:35'),
       (151, 51, '9641 GRANT Place Suite 578', 'Apt. 301', 'Janieview', 0, '08092-761', 0, '2017-12-16 08:12:11', '1979-10-19 14:31:32'),
       (152, 52, '1960 Cesar Loaf Suite 469', 'Suite 807', 'West Porter', 2, '98728-692', 0, '1989-02-07 12:44:11', '1979-05-17 04:12:26'),
       (153, 53, '0413 Keith Wells', 'Suite 695', 'Elzaview', 3, '36874-861', 0, '2018-02-10 20:53:41', '2018-09-28 12:22:48'),
       (154, 54, '7717 Ernser KEY Suite 705', 'Suite 505', 'West Dana', 4, '79557-962', 0, '2011-11-04 23:23:41', '2023-09-07 05:48:32'),
       (155, 55, '592 Robin Fall Apt. 294', 'Apt. 340', 'Maggioborough', 5, '76403', 0, '2017-04-26 12:29:15', '1996-10-30 05:33:29'),
       (156, 56, '411 Mills Green', 'Apt. 079', 'Port Aaliyah', 6, '52271', 0, '2001-04-18 21:30:29', '1997-10-07 13:28:13'),
       (157, 57, '70888 Collier Road Suite 442', 'Apt. 403', 'Lakinfurt', 7, '04398-076', 0, '2013-02-03 04:23:31', '1976-03-28 15:49:18'),
       (158, 58, '53609 Richmond Port Suite 640', 'Apt. 209', 'North Vance', 8, '00006-389', 0, '1986-04-29 05:00:58', '2006-02-07 12:34:55'),
       (159, 59, '70195 Jovan Gardens', 'Apt. 766', 'West Aubrey', 9, '82971-480', 0, '2021-06-04 18:24:34', '1976-01-20 05:58:45'),
       (160, 60, '452 Prince Ford', 'Apt. 643', 'Morarland', 10, '14111', 0, '1983-08-25 19:42:02', '1991-11-27 21:47:29'),
       (161, 61, '2014 Kaitlin Valley Apt. 132', 'Suite 369', 'Thielshire', 11, '18594-336', 0, '2001-04-15 23:36:01', '2014-04-11 07:06:08'),
       (162, 62, '43803 Harvey Trail', 'Apt. 230', 'North Clyde', 12, '81084', 0, '2024-04-30 15:26:46', '2008-10-14 02:14:09'),
       (163, 63, '29575 Harber Tunnel', 'Suite 747', 'West Jeremieberg', 13, '64221-470', 0, '1975-08-22 01:40:35', '1973-01-05 06:17:46'),
       (164, 64, '4603 Herman Harbor Apt. 369', 'Suite 328', 'Howechester', 14, '90186', 0, '1994-08-02 21:15:19', '1970-11-30 12:01:15'),
       (165, 65, '7777 Precious Burg', 'Suite 722', 'Michelborough', 15, '48897-463', 0, '1982-07-17 00:25:29', '2003-08-26 11:38:04'),
       (166, 66, '832 Kariane Centers', 'Apt. 560', 'Adolfland', 16, '10016', 0, '2021-01-28 23:10:10', '2006-04-27 22:48:31'),
       (167, 67, '9294 Arne Land', 'Suite 623', 'Lowetown', 17, '57081', 0, '2024-01-31 21:37:25', '2010-06-03 02:56:21'),
       (168, 68, '92986 Howell Valley', 'Apt. 115', 'Kraighaven', 18, '22534', 0, '2022-08-14 14:43:48', '1994-09-12 20:40:20'),
       (169, 69, '83856 Orlo Lakes', 'Apt. 898', 'Jesseburgh', 19, '63446', 0, '2017-12-18 13:34:34', '2004-04-08 01:14:29'),
       (170, 70, '89039 Hansen Parkway', 'Apt. 140', 'Lake Nellaton', 20, '65656-225', 0, '2002-10-13 18:18:47', '1994-05-11 03:55:37'),
       (171, 71, '62560 Keebler Landing Suite 090', 'Suite 354', 'Port Alessandro', 21, '50964', 0, '1978-07-31 14:12:31', '2002-08-24 05:18:51'),
       (172, 72, '89713 Ondricka Common Suite 618', 'Suite 615', 'West Pedroland', 22, '10663', 0, '1979-01-28 22:56:46', '2007-01-15 20:34:25'),
       (173, 73, '48984 Keebler Junction', 'Suite 762', 'West Carolanne', 23, '22164-694', 0, '1974-07-27 15:50:39', '1998-04-01 23:32:04'),
       (174, 74, '4162 Lemke Mews', 'Apt. 279', 'Jerdeland', 24, '61025-532', 0, '1987-12-30 16:10:54', '2013-01-20 13:44:34'),
       (175, 75, '3946 Schmidt Corners Suite 519', 'Apt. 097', 'Rolfsonmouth', 25, '08060', 0, '1985-11-01 23:39:07', '2024-09-17 10:55:16'),
       (176, 76, '1412 Durgan Locks Suite 703', 'Suite 329', 'Kaylahville', 26, '87817-128', 0, '2016-08-19 10:09:58', '1986-03-17 05:24:54'),
       (177, 77, '408 Hiram Turnpike Suite 349', 'Suite 625', 'North Haleyport', 27, '68571-825', 0, '2024-10-06 07:00:01', '1986-12-14 08:47:27'),
       (178, 78, '4321 Deckow Drive', 'Suite 533', 'Jacobibury', 28, '71977-866', 0, '1975-09-08 01:56:26', '1976-11-22 09:58:21'),
       (179, 79, '6718 Darrel Causeway', 'Suite 387', 'Port Allie', 29, '61221-318', 0, '1994-10-19 23:47:10', '2018-04-13 07:29:50'),
       (180, 80, '3092 Edna Court Apt. 118', 'Apt. 081', 'Port Cathrynfurt', 30, '82707-429', 0, '1997-11-06 06:20:19', '1989-08-10 00:53:29'),
       (181, 81, '335 Kenton Square Suite 657', 'Apt. 226', 'Boriston', 31, '61702-663', 0, '2000-11-05 18:57:40', '1986-08-02 18:07:05'),
       (182, 82, '995 Smitham Island Apt. 105', 'Suite 990', 'Keelymouth', 32, '11847', 0, '2019-08-16 09:09:55', '1998-05-18 10:09:42'),
       (183, 83, '4170 Lauriane Knolls', 'Apt. 603', 'South Jaime', 33, '94260-961', 0, '1984-12-08 17:38:31', '2022-05-19 05:24:54'),
       (184, 84, '968 Bria Center', 'Suite 235', 'Lake Penelopestad', 34, '59495', 0, '2005-10-12 16:08:32', '1972-04-22 10:54:33'),
       (185, 85, '674 Nicolas Highway', 'Apt. 228', 'Jenkinschester', 35, '56346', 0, '1978-05-16 09:54:05', '1998-08-08 06:11:11'),
       (186, 86, '6138 Williamson Island Apt. 055', 'Suite 658', 'Runteshire', 36, '88057', 0, '1980-09-17 19:40:51', '1983-10-03 05:53:46'),
       (187, 87, '95633 Torphy Locks', 'Suite 308', 'North Kileyburgh', 37, '34995', 0, '1984-01-31 01:49:12', '1976-02-10 17:25:04'),
       (188, 88, '9387 Hoeger River', 'Suite 787', 'West Edythe', 38, '53581', 0, '2003-10-29 00:16:31', '2016-10-08 21:18:07'),
       (189, 89, '286 Skyla Port', 'Suite 941', 'Hillsside', 39, '72485-195', 0, '2021-04-22 23:37:22', '1977-01-24 01:40:15'),
       (190, 90, '77103 Bartell Terrace Suite 222', 'Suite 260', 'Lake Bobby', 40, '19683-773', 0, '2000-08-23 05:40:22', '1988-12-08 23:35:19'),
       (191, 91, '891 Runolfsdottir Lock Apt. 128', 'Suite 940', 'Maggioton', 41, '03948-748', 0, '1984-06-11 23:36:39', '2022-11-06 20:16:01'),
       (192, 92, '9268 Suzanne Valley Apt. 827', 'Apt. 354', 'Port Gilesburgh', 42, '79048', 0, '1995-01-16 14:19:11', '1996-01-11 04:05:47'),
       (193, 93, '2836 Vidal Island', 'Apt. 576', 'North Virginia', 43, '03529-918', 0, '2011-06-12 18:56:21', '2014-08-14 08:14:30'),
       (194, 94, '25739 Armstrong Light', 'Apt. 741', 'Emmetburgh', 44, '25111-792', 0, '2016-03-25 11:57:13', '1996-02-06 20:11:09'),
       (195, 95, '1564 Gabriella Canyon', 'Suite 585', 'Alfredborough', 45, '76873-595', 0, '1994-07-09 15:26:14', '2012-03-16 19:58:48'),
       (196, 96, '15182 Lilian PASS Suite 263', 'Apt. 350', 'NEW Berneice', 46, '49904', 0, '2014-10-28 04:38:45', '2008-04-11 14:53:08'),
       (197, 97, '4958 Crystel Knolls', 'Suite 578', 'NEW Prudence', 47, '83857-934', 0, '1990-09-04 22:59:17', '1971-10-19 00:15:56'),
       (198, 98, '63074 Bahringer PASS', 'Suite 940', 'East Wilfrid', 48, '79434', 0, '1982-12-14 12:53:23', '2012-08-02 17:59:40'),
       (199, 99, '42496 Dean Knoll Suite 094', 'Suite 140', 'East Tedshire', 49, '96930', 0, '2017-03-02 00:34:15', '1994-11-12 14:00:48'),
       (200, 100, '883 Ora Centers', 'Suite 977', 'Lake Jalynview', 50, '20467', 0, '1985-05-23 21:33:36', '1999-07-29 06:18:49');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
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

-- Dump completed on 2024-12-11  3:27:56
