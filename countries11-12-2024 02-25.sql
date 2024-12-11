#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each country.',
  `name` varchar(255) NOT NULL COMMENT 'Full name of the country (e.g., "United States").',
  `code` varchar(3) NOT NULL COMMENT 'SO 3166-1 alpha-3 code (e.g., "USA").',
  `created_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Timestamp when the record was created.',
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Timestamp for the last update.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES (1, 'Benin', 'MX', '1975-08-30 13:36:01', '1998-11-14 19:16:10');


