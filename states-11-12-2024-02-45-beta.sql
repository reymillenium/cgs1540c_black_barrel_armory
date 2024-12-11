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
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states`
(
    `id`         int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the entry.',
    `name`       varchar(255) NOT NULL COMMENT 'Full name of the state (e.g., "Florida").',
    `code`       varchar(2)   NOT NULL COMMENT 'Two-letter postal abbreviation (e.g., "FL").',
    `country_id` int(11) NOT NULL COMMENT 'Foreign key referencing countries.id',
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP() COMMENT 'Timestamp when the record was created.',
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP() COMMENT 'Timestamp for the last update.',
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`),
    KEY          `fk_states_countries_idx` (`country_id`),
    CONSTRAINT `fk_states_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK
TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states`
VALUES (1, 'Ohio', 'OH', 1, '2020-05-31 01:51:06', '1988-05-31 16:27:24'),
       (2, 'New Jersey', 'NJ', 1, '2024-07-03 01:35:02', '1982-01-18 17:13:52'),
       (3, 'Idaho', 'ID', 1, '2020-07-11 08:01:33', '2000-08-28 10:37:20'),
       (4, 'Pennsylvania', 'PA', 1, '2012-05-26 04:31:02', '1982-09-25 21:14:16'),
       (5, 'West Virginia', 'WV', 1, '1980-12-15 09:21:00', '1994-11-24 05:07:58'),
       (6, 'California', 'CA', 1, '1978-03-07 20:25:49', '2007-10-03 21:06:58'),
       (7, 'Delaware', 'DE', 1, '2014-08-17 01:15:57', '1986-02-11 12:54:42'),
       (8, 'Washington', 'WA', 1, '2002-06-23 08:03:29', '2010-08-09 12:23:47'),
       (9, 'Florida', 'FL', 1, '2017-01-07 11:27:11', '1997-03-09 01:45:39'),
       (10, 'Wisconsin', 'WI', 1, '2018-11-20 02:54:13', '2010-04-25 13:42:26'),
       (11, 'Iowa', 'IA', 1, '2012-01-03 11:07:51', '2017-04-28 03:03:39'),
       (12, 'South Carolina', 'SC', 1, '2023-07-31 06:31:08', '2020-02-16 20:44:05'),
       (13, 'Mississippi', 'MS', 1, '2021-11-04 00:17:55', '1984-09-03 15:52:17'),
       (14, 'Alabama', 'AL', 1, '1997-12-30 23:54:57', '1971-01-20 16:35:58'),
       (15, 'Texas', 'TX', 1, '1990-10-11 09:01:56', '2012-12-04 17:10:26'),
       (16, 'Georgia', 'GA', 1, '2015-10-05 16:51:22', '1995-10-03 00:03:52'),
       (17, 'Michigan', 'MI', 1, '1979-11-04 20:10:11', '2010-02-21 18:33:24'),
       (18, 'Minnesota', 'MN', 1, '1998-06-15 16:26:35', '2024-10-05 01:01:30'),
       (19, 'Virginia', 'VA', 1, '1982-06-19 03:23:42', '1999-05-21 21:55:07'),
       (20, 'North Carolina', 'NC', 1, '1975-02-15 00:18:03', '1993-02-18 06:10:59'),
       (21, 'Oregon', 'OR', 1, '1982-06-10 01:36:22', '2014-08-04 08:46:46'),
       (22, 'Rhode Island', 'RI', 1, '1990-06-29 12:13:35', '2004-08-20 07:32:38'),
       (23, 'Kansas', 'KS', 1, '2004-07-10 13:18:35', '2012-08-03 01:13:12'),
       (24, 'Montana', 'MT', 1, '2017-05-17 04:29:23', '2002-05-25 12:40:36'),
       (25, 'Illinois', 'IL', 1, '2019-03-25 07:55:15', '1980-02-02 19:55:13'),
       (26, 'South Dakota', 'SD', 1, '1985-02-10 10:47:42', '2017-02-03 07:56:08'),
       (27, 'Louisiana', 'LA', 1, '1993-07-02 20:29:52', '1999-03-16 10:46:45'),
       (28, 'Missouri', 'MO', 1, '2023-03-18 05:18:37', '2017-07-25 22:32:53'),
       (29, 'Utah', 'UT', 1, '2011-06-10 01:58:06', '2017-06-09 02:08:07'),
       (30, 'Vermont', 'VT', 1, '1973-09-02 05:37:41', '1979-02-25 06:30:18'),
       (31, 'Nevada', 'NV', 1, '1994-01-19 10:54:58', '1990-09-04 11:36:31'),
       (32, 'New Mexico', 'NM', 1, '1972-01-29 16:20:16', '1978-05-18 12:59:22'),
       (33, 'New York', 'NY', 1, '2010-05-06 20:08:26', '2006-07-13 05:10:23'),
       (34, 'Connecticut', 'CT', 1, '1987-04-12 14:28:04', '1982-03-21 17:22:14'),
       (35, 'North Dakota', 'ND', 1, '1972-02-21 20:46:53', '1996-12-06 12:56:41'),
       (36, 'Alaska', 'AK', 1, '2006-03-28 13:37:17', '2009-04-29 18:06:23'),
       (37, 'Tennessee', 'TN', 1, '1972-08-24 11:57:04', '1970-08-14 19:34:12'),
       (38, 'Oklahoma', 'OK', 1, '1977-10-17 21:54:29', '2002-02-15 02:41:57'),
       (39, 'Massachusetts', 'MA', 1, '1999-04-03 17:53:01', '2022-11-22 01:20:20'),
       (40, 'Hawaii', 'HI', 1, '2004-06-10 23:32:35', '2019-10-03 11:55:44'),
       (41, 'Maryland', 'MD', 1, '1973-06-01 04:03:23', '2001-08-02 06:10:15'),
       (42, 'Nebraska', 'NE', 1, '1995-08-26 20:54:54', '1975-12-21 18:41:30'),
       (43, 'Colorado', 'CO', 1, '2012-10-24 15:35:19', '1974-06-01 08:54:27'),
       (44, 'Indiana', 'IN', 1, '2003-03-09 02:09:16', '1989-01-12 12:11:58'),
       (45, 'Arizona', 'AZ', 1, '2003-11-25 22:25:29', '1985-10-21 13:16:45'),
       (46, 'Kentucky', 'KY', 1, '1982-07-26 11:03:55', '1981-05-13 05:43:51'),
       (47, 'Wyoming', 'WY', 1, '2001-08-30 13:29:04', '2012-05-31 03:22:38'),
       (48, 'District of Columbia', 'DC', 1, '2001-01-25 01:54:10', '1992-08-14 01:27:42'),
       (49, 'Arkansas', 'AR', 1, '1987-02-18 23:53:35', '2018-10-11 11:50:58'),
       (50, 'New Hampshire', 'NH', 1, '2004-02-04 14:22:10', '2012-10-18 12:27:45');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
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

-- Dump completed on 2024-12-11  2:45:40
