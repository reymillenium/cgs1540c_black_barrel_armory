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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK
TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses`
VALUES (1, 1, '11942 Weber Run Suite 000', 'Suite 267', 'Brodychester', 1, '95529-265', 1, '2022-11-28 15:59:48', '2013-06-15 17:12:36'),
       (2, 2, '79738 Sophia Cove Apt. 024', 'Apt. 889', 'Kemmermouth', 2, '22395-356', 1, '2014-07-13 03:32:12', '2020-10-25 04:15:19'),
       (3, 3, '12476 Theresa Wall Suite 654', 'Apt. 934', 'Port Nanniefort', 3, '38897', 1, '2002-04-13 02:51:14', '1978-05-06 18:57:45'),
       (4, 4, '138 Brekke Extension', 'Suite 061', 'East Zanderview', 4, '78672', 1, '2019-05-16 11:45:17', '1980-11-11 06:39:23'),
       (5, 5, '05462 Waters Drives', 'Suite 289', 'Lake Deltabury', 5, '47527', 1, '1999-07-17 10:56:19', '1974-07-04 17:19:46'),
       (6, 6, '390 Ericka Route Apt. 529', 'Apt. 579', 'Sammiemouth', 6, '89291-465', 1, '2012-12-22 00:38:19', '2016-12-05 06:34:34'),
       (7, 7, '36540 Jayden Courts', 'Apt. 824', 'Anibalshire', 7, '97489', 1, '2013-09-16 06:55:38', '2011-10-19 17:23:05'),
       (8, 8, '6260 Kavon Brook Suite 929', 'Apt. 235', 'West Antoniettamouth', 8, '24380', 1, '2022-07-21 15:28:09', '2002-07-12 09:42:04'),
       (9, 9, '5939 Stamm Turnpike', 'Apt. 057', 'Gloverhaven', 9, '88772', 1, '1986-06-21 11:48:04', '1977-08-23 04:30:05'),
       (10, 10, '8231 Austen Village Apt. 767', 'Suite 361', 'North Wyman', 10, '01363', 1, '1987-02-06 20:37:00', '2013-08-21 07:43:36'),
       (11, 11, '336 Arnoldo Wall Apt. 796', 'Suite 026', 'West Jay', 11, '14619-181', 1, '1983-04-16 21:13:13', '2015-11-15 21:18:54'),
       (12, 12, '8802 Randy Springs', 'Apt. 773', 'Sauerborough', 12, '72142', 1, '2019-09-02 08:52:50', '1997-10-24 00:42:17'),
       (13, 13, '73648 Pierce Lakes Suite 387', 'Apt. 986', 'Lake Maeview', 13, '57569', 1, '2017-05-12 04:08:35', '2005-11-09 07:45:44'),
       (14, 14, '61703 Wunsch Prairie Apt. 927', 'Apt. 252', 'Biankamouth', 14, '55567', 1, '1997-03-10 00:02:32', '1988-07-17 10:37:52'),
       (15, 15, '8900 Hane Ranch Apt. 525', 'Apt. 333', 'Reichelview', 15, '13616-871', 1, '2013-08-07 08:59:50', '1987-09-03 14:07:13'),
       (16, 16, '284 Christelle Dale Suite 560', 'Suite 875', 'Quitzonmouth', 16, '29444-654', 1, '2013-08-29 00:19:27', '1997-07-13 13:41:45'),
       (17, 17, '4578 Kali Rapids Apt. 996', 'Apt. 049', 'Dasiaside', 17, '15191-841', 1, '1993-07-02 13:20:36', '2016-07-11 04:38:06'),
       (18, 18, '058 Kilback Well', 'Apt. 854', 'New Reyna', 18, '44711', 1, '1993-04-04 02:26:38', '2019-03-27 08:58:07'),
       (19, 19, '30057 Alexane Light Apt. 478', 'Suite 301', 'New Mariettaborough', 19, '82402-237', 1, '2020-09-23 12:14:56', '1975-11-30 16:04:25'),
       (20, 20, '0297 Cummings Spur Suite 955', 'Suite 856', 'Hettingermouth', 20, '22803-627', 1, '1981-04-05 13:03:53', '2017-12-15 04:20:23'),
       (21, 21, '3399 Morissette Burg', 'Suite 584', 'Friedastad', 21, '64797-004', 1, '1972-06-01 07:53:19', '1985-02-28 15:10:57'),
       (22, 22, '5301 Patricia Fork Suite 927', 'Apt. 026', 'Krystalview', 22, '03893', 1, '2006-03-02 21:50:24', '2007-09-25 13:44:07'),
       (23, 23, '6124 Ava Springs', 'Suite 035', 'Maudeport', 23, '72523', 1, '1971-09-04 07:54:51', '2015-04-13 00:43:42'),
       (24, 24, '478 Haley Manor Suite 634', 'Apt. 914', 'North Jackie', 24, '94595', 1, '1986-08-04 17:43:20', '1983-06-04 17:33:34'),
       (25, 25, '566 Mozell Street Suite 701', 'Apt. 705', 'East Caesar', 25, '22833-367', 1, '2004-01-29 11:36:31', '2012-06-30 03:04:04'),
       (26, 26, '92680 Mallie Roads Suite 924', 'Suite 594', 'Lake Mauricio', 26, '87232', 1, '1999-03-01 10:49:56', '1991-01-25 12:04:02'),
       (27, 27, '77265 Zora Overpass Apt. 900', 'Suite 464', 'North Christophefurt', 27, '96059', 1, '2013-06-28 21:22:04', '2024-10-05 19:13:20'),
       (28, 28, '265 Sarah Plaza', 'Apt. 061', 'Lake Valentina', 28, '74469', 1, '2023-08-02 20:01:13', '2015-09-05 01:12:43'),
       (29, 29, '3679 Elroy Ville Apt. 615', 'Apt. 898', 'Lake Pamela', 29, '26900', 1, '1978-08-08 06:14:35', '2018-11-28 10:01:55'),
       (30, 30, '6214 Joanne Passage Apt. 755', 'Suite 290', 'South Maeganburgh', 30, '29091-014', 1, '1982-12-25 04:40:01', '1974-01-23 20:07:07'),
       (31, 31, '414 Jakubowski Plaza', 'Suite 350', 'East Marjory', 31, '49280-337', 1, '2024-07-17 20:42:57', '1993-04-17 14:16:48'),
       (32, 32, '3833 Elmer Trafficway', 'Apt. 312', 'Crystelhaven', 32, '38395', 1, '2019-08-22 03:17:37', '1994-01-26 06:53:17'),
       (33, 33, '84706 Caleb Corner', 'Suite 698', 'South Berneiceville', 33, '12702-641', 1, '1990-05-31 20:22:44', '2011-12-24 05:28:46'),
       (34, 34, '157 Maynard Union', 'Suite 839', 'South Alejandra', 34, '59818', 1, '2001-08-21 05:52:48', '2011-04-15 13:23:34'),
       (35, 35, '832 McDermott Valley Suite 993', 'Suite 807', 'Bellhaven', 35, '68030-929', 1, '1991-04-08 18:56:05', '1987-07-11 08:32:29'),
       (36, 36, '63543 Dakota Brook', 'Apt. 932', 'Riceborough', 36, '92719-437', 1, '1977-07-28 02:15:10', '1974-09-22 01:53:07'),
       (37, 37, '11199 Collier Oval', 'Suite 245', 'Mullerfort', 37, '39540', 1, '1997-05-07 11:10:55', '2004-10-11 12:29:22'),
       (38, 38, '250 Skiles Spring', 'Suite 256', 'Mrazfurt', 38, '15066-335', 1, '2022-10-03 23:44:51', '1978-10-30 11:33:47'),
       (39, 39, '6258 Connelly Trace Apt. 285', 'Apt. 161', 'Howellport', 39, '87200-640', 1, '2015-12-12 08:35:30', '1981-02-16 19:26:26'),
       (40, 40, '47452 Orn Tunnel', 'Suite 840', 'South Laurymouth', 40, '80606-523', 1, '2014-10-01 10:14:45', '2024-11-16 14:17:20'),
       (41, 41, '8216 Watson Knolls Apt. 896', 'Suite 483', 'Port Lacy', 41, '55861-001', 1, '2009-05-11 13:16:07', '1985-09-21 07:52:48'),
       (42, 42, '2686 Kertzmann Dam', 'Apt. 130', 'Port Lyla', 42, '13482-795', 1, '1983-10-05 09:42:01', '2015-07-11 15:28:09'),
       (43, 43, '8303 Aliza Green Suite 796', 'Apt. 271', 'West Daniellaberg', 43, '83543', 1, '1980-02-19 01:22:38', '2005-01-14 21:48:12'),
       (44, 44, '152 Collins Vista', 'Suite 652', 'East Rhea', 44, '46999', 1, '1970-08-10 08:36:15', '2022-01-22 16:52:13'),
       (45, 45, '7227 Ellsworth Mountains', 'Apt. 824', 'Port Nigel', 45, '99569', 1, '2019-11-01 22:16:52', '1977-10-18 17:18:58'),
       (46, 46, '964 Veum River Suite 394', 'Apt. 633', 'Lake Dillon', 46, '93774', 1, '1977-06-04 09:54:46', '2013-07-04 02:36:35'),
       (47, 47, '4372 Hammes Circle', 'Apt. 687', 'North Benbury', 47, '61458', 1, '1995-01-08 02:42:15', '1990-08-16 02:11:11'),
       (48, 48, '1951 Labadie Prairie Apt. 051', 'Apt. 055', 'East Litzyton', 48, '50647-578', 1, '1984-05-27 05:30:30', '2021-08-08 11:53:27'),
       (49, 49, '327 Sabina Cliff Suite 586', 'Suite 256', 'East Ramon', 49, '40393', 1, '2008-06-04 02:04:36', '2018-01-11 12:32:31'),
       (50, 50, '5781 Kozey Glen', 'Apt. 164', 'North Ardenborough', 50, '96599', 1, '2022-11-11 09:57:33', '2003-04-26 14:01:43'),
       (51, 51, '1852 Kuphal Canyon', 'Suite 296', 'West Leabury', 1, '45701', 1, '1978-09-10 13:10:41', '2016-10-14 09:01:29'),
       (52, 52, '91702 Pfannerstill Harbors', 'Suite 095', 'South Sydney', 2, '69310-045', 1, '1995-08-04 20:09:57', '1970-12-31 11:00:15'),
       (53, 53, '75566 Cloyd Islands Suite 732', 'Suite 557', 'Paucekfort', 3, '92150-411', 1, '2001-09-04 07:52:59', '2019-07-05 09:28:56'),
       (54, 54, '36073 Yolanda Mountains Apt. 571', 'Suite 677', 'Okunevachester', 4, '96338-010', 1, '1976-03-23 00:59:22', '1970-05-25 23:22:29'),
       (55, 55, '644 Myrtis Fort Apt. 753', 'Suite 497', 'East Demetrisfort', 5, '07279-758', 1, '1980-11-23 00:31:11', '2010-10-26 06:58:35'),
       (56, 56, '729 Eric Overpass', 'Suite 413', 'Adolfberg', 6, '28315-121', 1, '1985-03-11 08:29:32', '1981-11-26 23:23:31'),
       (57, 57, '489 Wisozk Drive Suite 060', 'Apt. 897', 'Sipesport', 7, '06364', 1, '1972-05-05 09:36:53', '2013-05-24 04:20:27'),
       (58, 58, '7131 Bryce Gardens', 'Suite 905', 'Chelsealand', 8, '83541', 1, '2002-10-12 06:44:21', '1987-12-30 17:17:15'),
       (59, 59, '60815 Casper Manor', 'Apt. 971', 'Port Kasandra', 9, '08019-973', 1, '1994-08-02 12:41:30', '2017-02-10 20:38:54'),
       (60, 60, '45065 Schroeder Spur Suite 158', 'Suite 935', 'North Katherynshire', 10, '49811-210', 1, '1998-04-01 13:28:50', '2019-07-04 16:07:27'),
       (61, 61, '51524 Geovanni Prairie', 'Apt. 455', 'North Anabellehaven', 11, '90000', 1, '1980-06-08 03:09:21', '2016-12-01 19:06:54'),
       (62, 62, '7086 Koelpin Route', 'Suite 485', 'East Savannahport', 12, '00129-784', 1, '2016-08-26 17:18:51', '1978-04-08 01:20:55'),
       (63, 63, '992 Hessel Junction Apt. 656', 'Apt. 961', 'Cartwrightside', 13, '22727-350', 1, '2011-04-15 19:26:46', '2021-09-22 14:42:41'),
       (64, 64, '278 Jared Inlet', 'Apt. 210', 'Dickinsonburgh', 14, '19738', 1, '1976-10-25 03:40:03', '2024-06-02 22:15:15'),
       (65, 65, '8502 Cristopher Neck', 'Apt. 018', 'Runtebury', 15, '50055', 1, '1978-04-26 06:57:27', '1992-06-11 15:02:02'),
       (66, 66, '192 Von Squares', 'Suite 277', 'New Alexandreview', 16, '85593-067', 1, '2020-04-06 15:43:43', '1996-05-21 06:16:53'),
       (67, 67, '2430 Lavinia Valleys Suite 282', 'Apt. 344', 'North Marjory', 17, '97273', 1, '1972-07-27 07:51:39', '1998-07-27 17:26:07'),
       (68, 68, '714 Bauch Mountains', 'Suite 787', 'Reillyfort', 18, '45369-077', 1, '2016-07-13 12:47:34', '1975-07-15 00:14:24'),
       (69, 69, '662 Gulgowski Cove', 'Suite 833', 'West Jakob', 19, '09362-033', 1, '2008-09-01 14:56:12', '2018-12-09 08:06:10'),
       (70, 70, '89206 Pat Roads', 'Apt. 990', 'Rafaelton', 20, '87832-793', 1, '2001-05-10 15:42:22', '1991-12-29 23:03:13'),
       (71, 71, '767 Ryder Loop', 'Suite 852', 'West Terrystad', 21, '04473-149', 1, '2019-11-15 01:13:34', '1975-05-12 12:37:12'),
       (72, 72, '12588 Annabel Overpass Suite 611', 'Apt. 672', 'South Arlene', 22, '48471', 1, '1978-04-02 10:25:59', '2020-03-20 19:47:18'),
       (73, 73, '6188 Jillian Garden Apt. 778', 'Suite 731', 'New Lennastad', 23, '05406', 1, '2015-02-15 13:17:14', '1980-02-05 06:55:48'),
       (74, 74, '8884 Omari Oval', 'Apt. 381', 'North Loymouth', 24, '49032-478', 1, '2015-04-18 04:01:33', '1994-11-24 18:06:19'),
       (75, 75, '713 Caden Path', 'Suite 445', 'North Winston', 25, '82606-858', 1, '1988-04-03 16:51:23', '2009-11-05 04:30:35'),
       (76, 76, '073 Thompson Shore Apt. 517', 'Suite 188', 'Haleyshire', 26, '12526-125', 1, '1980-07-25 06:53:02', '1982-05-13 06:03:10'),
       (77, 77, '216 Cole Crescent', 'Suite 701', 'North Clark', 27, '43986', 1, '1986-05-18 02:23:13', '2000-07-19 19:03:59'),
       (78, 78, '38035 Kemmer Creek', 'Apt. 587', 'Heathcotechester', 28, '48580-850', 1, '2013-07-01 13:04:23', '2013-12-05 13:15:42'),
       (79, 79, '19530 Watsica Crossroad Suite 195', 'Apt. 676', 'North Valentin', 29, '15001', 1, '1993-05-14 03:28:46', '1987-05-15 13:39:47'),
       (80, 80, '38913 Bridgette Rapid Apt. 424', 'Apt. 038', 'Lake Hazleshire', 30, '92264-690', 1, '1972-04-23 01:11:34', '2018-10-12 14:28:29'),
       (81, 81, '595 Zulauf Valley Suite 661', 'Suite 956', 'Nicklausshire', 31, '73972', 1, '1999-10-01 00:58:52', '1987-06-21 23:43:39'),
       (82, 82, '6079 Jalen Junctions', 'Suite 345', 'Enidshire', 32, '71930-430', 1, '2024-08-26 13:23:17', '1982-01-06 22:25:18'),
       (83, 83, '1824 Olson Tunnel', 'Apt. 047', 'Port Valentinburgh', 33, '06812', 1, '1980-02-16 06:59:12', '1979-03-12 14:09:31'),
       (84, 84, '507 Simonis Lock Suite 996', 'Suite 317', 'West Robbie', 34, '94032', 1, '2017-08-22 15:18:08', '1989-07-23 21:27:40'),
       (85, 85, '51797 Vandervort Junction Suite 900', 'Apt. 929', 'Grantshire', 35, '36416-641', 1, '1974-08-07 21:15:18', '1987-04-24 12:54:22'),
       (86, 86, '371 Emilio Locks', 'Apt. 458', 'Eloytown', 36, '51148-961', 1, '1994-12-12 13:13:25', '2012-07-04 04:50:20'),
       (87, 87, '577 Maryjane Turnpike Apt. 840', 'Suite 600', 'Murraytown', 37, '46804-142', 1, '1970-12-15 21:46:52', '2006-12-14 00:03:47'),
       (88, 88, '72775 Harry Lock', 'Suite 916', 'North Lynnview', 38, '18455-522', 1, '2002-07-04 06:14:25', '2001-04-16 15:43:44'),
       (89, 89, '702 Hills Tunnel Apt. 959', 'Suite 523', 'Delphaburgh', 39, '09940-317', 1, '1989-05-03 13:43:13', '1971-05-18 23:58:32'),
       (90, 90, '6868 Beatrice Corner', 'Apt. 476', 'Yundtfort', 40, '18150', 1, '2019-08-01 08:21:47', '2002-01-05 06:00:29'),
       (91, 91, '819 Gia Ramp', 'Apt. 392', 'Rutherfordshire', 41, '13221', 1, '2013-07-09 11:45:19', '2020-06-07 22:52:01'),
       (92, 92, '040 Blanda Row Apt. 616', 'Apt. 267', 'East Wilbertown', 42, '52269-764', 1, '2016-09-15 04:56:15', '2021-02-23 16:05:29'),
       (93, 93, '909 Wilkinson Manors Apt. 618', 'Apt. 931', 'Lake Roderickbury', 43, '86642', 1, '2016-08-11 11:10:23', '1990-03-22 01:24:15'),
       (94, 94, '236 Jonathon Island Suite 465', 'Suite 653', 'Antwanfort', 44, '65612', 1, '1980-11-14 04:11:45', '1983-02-10 12:44:26'),
       (95, 95, '99674 Ledner Well', 'Apt. 725', 'Lake Vance', 45, '76482-030', 1, '1989-09-03 06:18:30', '2017-01-06 11:04:46'),
       (96, 96, '145 Dietrich Court', 'Apt. 201', 'Kelliebury', 46, '22927-174', 1, '1986-02-24 01:39:47', '2022-05-24 23:42:36'),
       (97, 97, '6894 Elfrieda Valley', 'Apt. 923', 'East Laurinemouth', 47, '74083', 1, '1984-08-04 20:22:45', '2012-03-14 09:43:58'),
       (98, 98, '9613 Waelchi Park', 'Suite 101', 'Konopelskiborough', 48, '03108', 1, '2003-08-08 13:43:28', '2004-05-26 18:29:57'),
       (99, 99, '802 Blanda Forest Suite 665', 'Suite 688', 'Stantonville', 49, '70250', 1, '2002-12-19 09:17:01', '2000-09-21 02:56:49'),
       (100, 100, '52189 Payton Square Suite 757', 'Apt. 736', 'Geovannibury', 50, '57989', 1, '2009-09-17 03:34:46', '2012-10-03 11:41:06');
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

-- Dump completed on 2024-12-11  3:37:25
