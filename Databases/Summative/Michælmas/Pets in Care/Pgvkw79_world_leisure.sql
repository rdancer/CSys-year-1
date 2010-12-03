-- phpMyAdmin SQL Dump
-- version 2.10.0.2
-- http://www.phpmyadmin.net
-- 
-- Host: mysql.dur.ac.uk
-- Generation Time: Nov 19, 2008 at 09:30 AM
-- Server version: 5.1.25
-- PHP Version: 4.4.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `Pgvkw79_world_leisure`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `attractions`
-- 

CREATE TABLE `attractions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `park_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `staff_min` int(11) DEFAULT NULL,
  `age_min` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

-- 
-- Dumping data for table `attractions`
-- 

INSERT INTO `attractions` VALUES (26, '10056', 1, 'SpinningTeacups', 2, 4, 62);
INSERT INTO `attractions` VALUES (27, '10067', 1, 'FlightToStars', 2, 11, 24);
INSERT INTO `attractions` VALUES (28, '10078', 1, 'Ant-Trap', 2, 8, 30);
INSERT INTO `attractions` VALUES (29, '10098', 1, 'Carnival', 2, 3, 120);
INSERT INTO `attractions` VALUES (30, '20056', 5, '3D-Lego_Show', 2, 3, 200);
INSERT INTO `attractions` VALUES (31, '30011', 6, 'BlackHole2', 2, 12, 34);
INSERT INTO `attractions` VALUES (32, '30012', 6, 'Pirates', 2, 10, 42);
INSERT INTO `attractions` VALUES (33, '30044', 6, 'UnderSeaWord', 2, 4, 80);
INSERT INTO `attractions` VALUES (34, '98764', 7, 'GoldRush', 2, 5, 80);
INSERT INTO `attractions` VALUES (35, '10034', 1, 'ThunderCoaster', 2, 11, 34);

-- --------------------------------------------------------

-- 
-- Table structure for table `countries`
-- 

CREATE TABLE `countries` (
  `iso_code` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ISO 3166-1 alpha-2 (two-letter) country code',
  `english_name` varchar(254) COLLATE utf8_unicode_ci NOT NULL COMMENT 'English name of the country',
  PRIMARY KEY (`iso_code`),
  UNIQUE KEY `english_name_unique` (`english_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ISO 3166-1 alpha-2 (two-letter) country codes';

-- 
-- Dumping data for table `countries`
-- 

INSERT INTO `countries` VALUES ('PG', 'Papua New Guinea');
INSERT INTO `countries` VALUES ('PH', 'Philippines');
INSERT INTO `countries` VALUES ('PK', 'Pakistan');
INSERT INTO `countries` VALUES ('PL', 'Poland');
INSERT INTO `countries` VALUES ('PM', 'Saint Pierre and Miquelon');
INSERT INTO `countries` VALUES ('PN', 'Pitcairn');
INSERT INTO `countries` VALUES ('PR', 'Puerto Rico');
INSERT INTO `countries` VALUES ('PS', 'Palestinian Territory, Occupied');
INSERT INTO `countries` VALUES ('PT', 'Portugal');
INSERT INTO `countries` VALUES ('PW', 'Palau');
INSERT INTO `countries` VALUES ('PY', 'Paraguay');
INSERT INTO `countries` VALUES ('QA', 'Qatar');
INSERT INTO `countries` VALUES ('RE', 'Reunion');
INSERT INTO `countries` VALUES ('RO', 'Romania');
INSERT INTO `countries` VALUES ('RU', 'Russian Federation');
INSERT INTO `countries` VALUES ('RW', 'Rwanda');
INSERT INTO `countries` VALUES ('SA', 'Saudi Arabia');
INSERT INTO `countries` VALUES ('SB', 'Solomon Islands');
INSERT INTO `countries` VALUES ('SC', 'Seychelles');
INSERT INTO `countries` VALUES ('SD', 'Sudan');
INSERT INTO `countries` VALUES ('SE', 'Sweden');
INSERT INTO `countries` VALUES ('SG', 'Singapore');
INSERT INTO `countries` VALUES ('SH', 'Saint Helena');
INSERT INTO `countries` VALUES ('SI', 'Slovenia');
INSERT INTO `countries` VALUES ('SJ', 'Svalbard and Jan Mayen');
INSERT INTO `countries` VALUES ('SK', 'Slovakia');
INSERT INTO `countries` VALUES ('SL', 'Sierra Leone');
INSERT INTO `countries` VALUES ('SM', 'San Marino');
INSERT INTO `countries` VALUES ('SN', 'Senegal');
INSERT INTO `countries` VALUES ('SO', 'Somalia');
INSERT INTO `countries` VALUES ('SR', 'Suriname');
INSERT INTO `countries` VALUES ('ST', 'Sao Tome and Principe');
INSERT INTO `countries` VALUES ('SV', 'El Salvador');
INSERT INTO `countries` VALUES ('SY', 'Syrian Arab Republic');
INSERT INTO `countries` VALUES ('SZ', 'Swaziland');
INSERT INTO `countries` VALUES ('TC', 'Turks and Caicos Islands');
INSERT INTO `countries` VALUES ('TD', 'Chad');
INSERT INTO `countries` VALUES ('TF', 'French Southern Territories');
INSERT INTO `countries` VALUES ('TG', 'Togo');
INSERT INTO `countries` VALUES ('TH', 'Thailand');
INSERT INTO `countries` VALUES ('TJ', 'Tajikistan');
INSERT INTO `countries` VALUES ('TK', 'Tokelau');
INSERT INTO `countries` VALUES ('TL', 'Timor-Leste');
INSERT INTO `countries` VALUES ('TM', 'Turkmenistan');
INSERT INTO `countries` VALUES ('TN', 'Tunisia');
INSERT INTO `countries` VALUES ('TO', 'Tonga');
INSERT INTO `countries` VALUES ('TR', 'Turkey');
INSERT INTO `countries` VALUES ('TT', 'Trinidad and Tobago');
INSERT INTO `countries` VALUES ('TV', 'Tuvalu');
INSERT INTO `countries` VALUES ('TW', 'Taiwan');
INSERT INTO `countries` VALUES ('TZ', 'Tanzania, United Republic of');
INSERT INTO `countries` VALUES ('UA', 'Ukraine');
INSERT INTO `countries` VALUES ('UG', 'Uganda');
INSERT INTO `countries` VALUES ('UM', 'United States Minor Outlying Islands');
INSERT INTO `countries` VALUES ('US', 'United States');
INSERT INTO `countries` VALUES ('UY', 'Uruguay');
INSERT INTO `countries` VALUES ('UZ', 'Uzbekistan');
INSERT INTO `countries` VALUES ('VA', 'Holy See (Vatican City State)');
INSERT INTO `countries` VALUES ('VC', 'Saint Vincent and the Grenadines');
INSERT INTO `countries` VALUES ('VE', 'Venezuela');
INSERT INTO `countries` VALUES ('VG', 'Virgin Islands, British');
INSERT INTO `countries` VALUES ('VI', 'Virgin Islands, U.S.');
INSERT INTO `countries` VALUES ('VN', 'Viet Nam');
INSERT INTO `countries` VALUES ('VU', 'Vanuatu');
INSERT INTO `countries` VALUES ('WF', 'Wallis and Futuna');
INSERT INTO `countries` VALUES ('WS', 'Samoa');
INSERT INTO `countries` VALUES ('YE', 'Yemen');
INSERT INTO `countries` VALUES ('YT', 'Mayotte');
INSERT INTO `countries` VALUES ('ZA', 'South Africa');
INSERT INTO `countries` VALUES ('ZM', 'Zambia');
INSERT INTO `countries` VALUES ('ZW', 'Zimbabwe');
INSERT INTO `countries` VALUES ('XX', 'other/not known');
INSERT INTO `countries` VALUES ('CI', 'Côte d''Ivoire');
INSERT INTO `countries` VALUES ('KP', 'Korea, Democratic People''s Republic of');
INSERT INTO `countries` VALUES ('LA', 'Lao People''s Democratic Republic');
INSERT INTO `countries` VALUES ('CK', 'Cook Islands');
INSERT INTO `countries` VALUES ('CL', 'Chile');
INSERT INTO `countries` VALUES ('CM', 'Cameroon');
INSERT INTO `countries` VALUES ('CN', 'China');
INSERT INTO `countries` VALUES ('CO', 'Colombia');
INSERT INTO `countries` VALUES ('CR', 'Costa Rica');
INSERT INTO `countries` VALUES ('CS', 'Serbia and Montenegro');
INSERT INTO `countries` VALUES ('CU', 'Cuba');
INSERT INTO `countries` VALUES ('CV', 'Cape Verde');
INSERT INTO `countries` VALUES ('CX', 'Christmas Island');
INSERT INTO `countries` VALUES ('CY', 'Cyprus');
INSERT INTO `countries` VALUES ('CZ', 'Czech Republic');
INSERT INTO `countries` VALUES ('DE', 'Germany');
INSERT INTO `countries` VALUES ('DJ', 'Djibouti');
INSERT INTO `countries` VALUES ('DK', 'Denmark');
INSERT INTO `countries` VALUES ('DM', 'Dominica');
INSERT INTO `countries` VALUES ('DO', 'Dominican Republic');
INSERT INTO `countries` VALUES ('DZ', 'Algeria');
INSERT INTO `countries` VALUES ('EC', 'Ecuador');
INSERT INTO `countries` VALUES ('EE', 'Estonia');
INSERT INTO `countries` VALUES ('EG', 'Egypt');
INSERT INTO `countries` VALUES ('EH', 'Western Sahara');
INSERT INTO `countries` VALUES ('ER', 'Eritrea');
INSERT INTO `countries` VALUES ('ES', 'Spain');
INSERT INTO `countries` VALUES ('ET', 'Ethiopia');
INSERT INTO `countries` VALUES ('FI', 'Finland');
INSERT INTO `countries` VALUES ('FJ', 'Fiji');
INSERT INTO `countries` VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO `countries` VALUES ('FM', 'Micronesia, Federated States of');
INSERT INTO `countries` VALUES ('FO', 'Faroe Islands');
INSERT INTO `countries` VALUES ('FR', 'France');
INSERT INTO `countries` VALUES ('GA', 'Gabon');
INSERT INTO `countries` VALUES ('GB', 'United Kingdom');
INSERT INTO `countries` VALUES ('GD', 'Grenada');
INSERT INTO `countries` VALUES ('GE', 'Georgia');
INSERT INTO `countries` VALUES ('GF', 'French Guiana');
INSERT INTO `countries` VALUES ('GH', 'Ghana');
INSERT INTO `countries` VALUES ('GI', 'Gibraltar');
INSERT INTO `countries` VALUES ('GL', 'Greenland');
INSERT INTO `countries` VALUES ('GM', 'Gambia');
INSERT INTO `countries` VALUES ('GN', 'Guinea');
INSERT INTO `countries` VALUES ('GP', 'Guadeloupe');
INSERT INTO `countries` VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO `countries` VALUES ('GR', 'Greece');
INSERT INTO `countries` VALUES ('GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO `countries` VALUES ('GT', 'Guatemala');
INSERT INTO `countries` VALUES ('GU', 'Guam');
INSERT INTO `countries` VALUES ('GW', 'Guinea-Bissau');
INSERT INTO `countries` VALUES ('GY', 'Guyana');
INSERT INTO `countries` VALUES ('HK', 'Hong Kong');
INSERT INTO `countries` VALUES ('HM', 'Heard Island and McDonald Islands');
INSERT INTO `countries` VALUES ('HN', 'Honduras');
INSERT INTO `countries` VALUES ('HR', 'Croatia');
INSERT INTO `countries` VALUES ('HT', 'Haiti');
INSERT INTO `countries` VALUES ('HU', 'Hungary');
INSERT INTO `countries` VALUES ('ID', 'Indonesia');
INSERT INTO `countries` VALUES ('IE', 'Ireland');
INSERT INTO `countries` VALUES ('IL', 'Israel');
INSERT INTO `countries` VALUES ('IN', 'India');
INSERT INTO `countries` VALUES ('IO', 'British Indian Ocean Territory');
INSERT INTO `countries` VALUES ('IQ', 'Iraq');
INSERT INTO `countries` VALUES ('IR', 'Iran, Islamic Republic of');
INSERT INTO `countries` VALUES ('IS', 'Iceland');
INSERT INTO `countries` VALUES ('IT', 'Italy');
INSERT INTO `countries` VALUES ('JM', 'Jamaica');
INSERT INTO `countries` VALUES ('JO', 'Jordan');
INSERT INTO `countries` VALUES ('JP', 'Japan');
INSERT INTO `countries` VALUES ('KE', 'Kenya');
INSERT INTO `countries` VALUES ('KG', 'Kyrgyzstan');
INSERT INTO `countries` VALUES ('KH', 'Cambodia');
INSERT INTO `countries` VALUES ('KI', 'Kiribati');
INSERT INTO `countries` VALUES ('KM', 'Comoros');
INSERT INTO `countries` VALUES ('KN', 'Saint Kitts and Nevis');
INSERT INTO `countries` VALUES ('KR', 'Korea, Republic of');
INSERT INTO `countries` VALUES ('KW', 'Kuwait');
INSERT INTO `countries` VALUES ('KY', 'Cayman Islands');
INSERT INTO `countries` VALUES ('KZ', 'Kazakhstan');
INSERT INTO `countries` VALUES ('LB', 'Lebanon');
INSERT INTO `countries` VALUES ('LC', 'Saint Lucia');
INSERT INTO `countries` VALUES ('LI', 'Liechtenstein');
INSERT INTO `countries` VALUES ('LK', 'Sri Lanka');
INSERT INTO `countries` VALUES ('LR', 'Liberia');
INSERT INTO `countries` VALUES ('LS', 'Lesotho');
INSERT INTO `countries` VALUES ('LT', 'Lithuania');
INSERT INTO `countries` VALUES ('LU', 'Luxembourg');
INSERT INTO `countries` VALUES ('LV', 'Latvia');
INSERT INTO `countries` VALUES ('LY', 'Libyan Arab Jamahiriya');
INSERT INTO `countries` VALUES ('MA', 'Morocco');
INSERT INTO `countries` VALUES ('MC', 'Monaco');
INSERT INTO `countries` VALUES ('MD', 'Moldova, Republic of');
INSERT INTO `countries` VALUES ('MG', 'Madagascar');
INSERT INTO `countries` VALUES ('MH', 'Marshall Islands');
INSERT INTO `countries` VALUES ('MK', 'Macedonia, Republic of');
INSERT INTO `countries` VALUES ('ML', 'Mali');
INSERT INTO `countries` VALUES ('MM', 'Myanmar');
INSERT INTO `countries` VALUES ('MN', 'Mongolia');
INSERT INTO `countries` VALUES ('MO', 'Macao');
INSERT INTO `countries` VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO `countries` VALUES ('MQ', 'Martinique');
INSERT INTO `countries` VALUES ('MR', 'Mauritania');
INSERT INTO `countries` VALUES ('MS', 'Montserrat');
INSERT INTO `countries` VALUES ('MT', 'Malta');
INSERT INTO `countries` VALUES ('MU', 'Mauritius');
INSERT INTO `countries` VALUES ('MV', 'Maldives');
INSERT INTO `countries` VALUES ('MW', 'Malawi');
INSERT INTO `countries` VALUES ('MX', 'Mexico');
INSERT INTO `countries` VALUES ('MY', 'Malaysia');
INSERT INTO `countries` VALUES ('MZ', 'Mozambique');
INSERT INTO `countries` VALUES ('NA', 'Namibia');
INSERT INTO `countries` VALUES ('NC', 'New Caledonia');
INSERT INTO `countries` VALUES ('NE', 'Niger');
INSERT INTO `countries` VALUES ('NF', 'Norfolk Island');
INSERT INTO `countries` VALUES ('NG', 'Nigeria');
INSERT INTO `countries` VALUES ('NI', 'Nicaragua');
INSERT INTO `countries` VALUES ('NL', 'Netherlands');
INSERT INTO `countries` VALUES ('NO', 'Norway');
INSERT INTO `countries` VALUES ('NP', 'Nepal');
INSERT INTO `countries` VALUES ('NR', 'Nauru');
INSERT INTO `countries` VALUES ('NU', 'Niue');
INSERT INTO `countries` VALUES ('NZ', 'New Zealand');
INSERT INTO `countries` VALUES ('OM', 'Oman');
INSERT INTO `countries` VALUES ('PA', 'Panama');
INSERT INTO `countries` VALUES ('PE', 'Peru');
INSERT INTO `countries` VALUES ('PF', 'French Polynesia');
INSERT INTO `countries` VALUES ('AD', 'Andorra');
INSERT INTO `countries` VALUES ('AE', 'United Arab Emirates');
INSERT INTO `countries` VALUES ('AF', 'Afghanistan');
INSERT INTO `countries` VALUES ('AG', 'Antigua and Barbuda');
INSERT INTO `countries` VALUES ('AI', 'Anguilla');
INSERT INTO `countries` VALUES ('AL', 'Albania');
INSERT INTO `countries` VALUES ('AM', 'Armenia');
INSERT INTO `countries` VALUES ('AN', 'Netherlands Antilles');
INSERT INTO `countries` VALUES ('AO', 'Angola');
INSERT INTO `countries` VALUES ('AQ', 'Antarctica');
INSERT INTO `countries` VALUES ('AR', 'Argentina');
INSERT INTO `countries` VALUES ('AS', 'American Samoa');
INSERT INTO `countries` VALUES ('AT', 'Austria');
INSERT INTO `countries` VALUES ('AU', 'Australia');
INSERT INTO `countries` VALUES ('AW', 'Aruba');
INSERT INTO `countries` VALUES ('AX', 'Åland Islands');
INSERT INTO `countries` VALUES ('AZ', 'Azerbaijan');
INSERT INTO `countries` VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO `countries` VALUES ('BB', 'Barbados');
INSERT INTO `countries` VALUES ('BD', 'Bangladesh');
INSERT INTO `countries` VALUES ('BE', 'Belgium');
INSERT INTO `countries` VALUES ('BF', 'Burkina Faso');
INSERT INTO `countries` VALUES ('BG', 'Bulgaria');
INSERT INTO `countries` VALUES ('BH', 'Bahrain');
INSERT INTO `countries` VALUES ('BI', 'Burundi');
INSERT INTO `countries` VALUES ('BJ', 'Benin');
INSERT INTO `countries` VALUES ('BM', 'Bermuda');
INSERT INTO `countries` VALUES ('BN', 'Brunei Darussalam');
INSERT INTO `countries` VALUES ('BO', 'Bolivia');
INSERT INTO `countries` VALUES ('BR', 'Brazil');
INSERT INTO `countries` VALUES ('BS', 'Bahamas');
INSERT INTO `countries` VALUES ('BT', 'Bhutan');
INSERT INTO `countries` VALUES ('BV', 'Bouvet Island');
INSERT INTO `countries` VALUES ('BW', 'Botswana');
INSERT INTO `countries` VALUES ('BY', 'Belarus');
INSERT INTO `countries` VALUES ('BZ', 'Belize');
INSERT INTO `countries` VALUES ('CA', 'Canada');
INSERT INTO `countries` VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO `countries` VALUES ('CD', 'Congo, The Democratic Republic of the');
INSERT INTO `countries` VALUES ('CF', 'Central African Republic');
INSERT INTO `countries` VALUES ('CG', 'Congo');
INSERT INTO `countries` VALUES ('CH', 'Switzerland');
INSERT INTO `countries` VALUES ('Wi', 'UK');

-- --------------------------------------------------------

-- 
-- Table structure for table `employees`
-- 

CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purged` tinyint(1) NOT NULL DEFAULT '0',
  `current_hourly_rate` int(11) DEFAULT NULL,
  `physical_address_id` bigint(20) DEFAULT NULL,
  `counts_towards_staff_min` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `physical_address_id` (`physical_address_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `employees`
-- 

INSERT INTO `employees` VALUES (3, 'Ms.', 'Emma', 'Calderdale', '1972-06-15', '1992-03-15', '181-324-9134', 0, NULL, NULL, 1);
INSERT INTO `employees` VALUES (4, 'Ms.', 'Marshel', 'Ricardo', '1978-03-19', '1996-04-25', '181-324-4472', 0, NULL, NULL, 1);
INSERT INTO `employees` VALUES (5, 'Mr.', 'Arif', 'Arshad', '1969-11-14', '1990-12-20', '7253-675-8993', 0, NULL, NULL, 1);
INSERT INTO `employees` VALUES (6, 'Ms.', 'Anne', 'Roberts', '1974-10-16', '1994-08-16', '181-898-3456', 0, NULL, NULL, 1);
INSERT INTO `employees` VALUES (7, 'Mr.', 'Enrica', 'Denver', '1980-11-08', '2001-10-20', '7253-504-4434', 0, NULL, NULL, 1);
INSERT INTO `employees` VALUES (8, 'Ms.', 'Mirrelle', 'Namowa', '1990-03-14', '2006-11-08', '181-890-3243', 0, NULL, NULL, 1);
INSERT INTO `employees` VALUES (9, 'Mrs.', 'Gemma', 'Smith', '1968-02-12', '1989-01-05', '181-324-7845', 0, NULL, NULL, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `parks`
-- 

CREATE TABLE `parks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_address_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`),
  UNIQUE KEY `physical_address_id` (`physical_address_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `parks`
-- 

INSERT INTO `parks` VALUES (1, 'FR1001', 'FairyLand', 1);
INSERT INTO `parks` VALUES (2, 'NL1202', 'Efling', 2);
INSERT INTO `parks` VALUES (3, 'SP4533', 'AdventurePort', 3);
INSERT INTO `parks` VALUES (4, 'SW2323', 'Labyrinthe', 4);
INSERT INTO `parks` VALUES (5, 'UK2622', 'MiniLand', 5);
INSERT INTO `parks` VALUES (6, 'UK3452', 'PleasureLand', 6);
INSERT INTO `parks` VALUES (7, 'ZA1342', 'GoldTown', 7);

-- --------------------------------------------------------

-- 
-- Table structure for table `physical_addresses`
-- 

CREATE TABLE `physical_addresses` (
  `line_1` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_2` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` char(254) COLLATE utf8_unicode_ci NOT NULL,
  `territory` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `physical_addresses`
-- 

INSERT INTO `physical_addresses` VALUES (NULL, NULL, 'Paris', NULL, NULL, 'FR', 1);
INSERT INTO `physical_addresses` VALUES (NULL, NULL, 'Noord', NULL, NULL, 'NL', 2);
INSERT INTO `physical_addresses` VALUES (NULL, NULL, 'Barcelona', NULL, NULL, 'ES', 3);
INSERT INTO `physical_addresses` VALUES (NULL, NULL, 'Lausanne', NULL, NULL, 'CH', 4);
INSERT INTO `physical_addresses` VALUES (NULL, NULL, 'Windsor', NULL, NULL, 'GB', 5);
INSERT INTO `physical_addresses` VALUES (NULL, NULL, 'Stoke', NULL, NULL, 'GB', 6);
INSERT INTO `physical_addresses` VALUES (NULL, NULL, 'Johannesburg', NULL, NULL, 'ZA', 7);

-- --------------------------------------------------------

-- 
-- Table structure for table `rides`
-- 

CREATE TABLE `rides` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attraction_id` bigint(20) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=245 ;

-- 
-- Dumping data for table `rides`
-- 

INSERT INTO `rides` VALUES (243, 32, '2007-05-21 12:03:02');
INSERT INTO `rides` VALUES (242, 27, '2007-05-23 19:13:15');
INSERT INTO `rides` VALUES (240, 32, '2007-05-22 12:51:03');
INSERT INTO `rides` VALUES (239, 26, '2007-05-18 18:37:19');
INSERT INTO `rides` VALUES (238, 28, '2007-05-21 19:13:06');
INSERT INTO `rides` VALUES (237, 35, '2007-05-20 14:30:13');
INSERT INTO `rides` VALUES (235, 30, '2007-05-20 20:53:27');
INSERT INTO `rides` VALUES (234, 29, '2007-05-18 09:14:05');
INSERT INTO `rides` VALUES (233, 35, '2007-05-21 19:50:28');
INSERT INTO `rides` VALUES (231, 31, '2007-05-20 16:30:10');
INSERT INTO `rides` VALUES (228, 28, '2007-05-21 14:13:57');
INSERT INTO `rides` VALUES (226, 27, '2007-05-22 11:23:25');
INSERT INTO `rides` VALUES (225, 31, '2007-05-19 18:01:51');
INSERT INTO `rides` VALUES (224, 32, '2007-05-19 20:47:58');
INSERT INTO `rides` VALUES (222, 29, '2007-05-18 17:42:53');
INSERT INTO `rides` VALUES (221, 33, '2007-05-19 10:31:09');
INSERT INTO `rides` VALUES (220, 33, '2007-05-19 14:54:21');
INSERT INTO `rides` VALUES (219, 31, '2007-05-18 14:17:58');
INSERT INTO `rides` VALUES (218, 32, '2007-05-20 09:51:54');
INSERT INTO `rides` VALUES (214, 31, '2007-05-23 17:35:29');
INSERT INTO `rides` VALUES (212, 32, '2007-05-19 18:25:36');
INSERT INTO `rides` VALUES (210, 30, '2007-05-20 10:50:59');
INSERT INTO `rides` VALUES (208, 32, '2007-05-23 14:54:09');
INSERT INTO `rides` VALUES (206, 29, '2007-05-23 11:25:03');
INSERT INTO `rides` VALUES (205, 27, '2007-05-18 21:18:40');
INSERT INTO `rides` VALUES (203, 26, '2007-05-21 11:07:07');
INSERT INTO `rides` VALUES (202, 28, '2007-05-23 14:45:47');
INSERT INTO `rides` VALUES (200, 33, '2007-05-19 15:55:10');
INSERT INTO `rides` VALUES (199, 28, '2007-05-21 11:54:43');
INSERT INTO `rides` VALUES (198, 34, '2007-05-21 20:42:43');
INSERT INTO `rides` VALUES (197, 27, '2007-05-23 18:24:08');
INSERT INTO `rides` VALUES (196, 31, '2007-05-21 17:52:54');
INSERT INTO `rides` VALUES (195, 28, '2007-05-20 14:22:21');
INSERT INTO `rides` VALUES (193, 34, '2007-05-21 12:38:04');
INSERT INTO `rides` VALUES (192, 29, '2007-05-22 10:29:07');
INSERT INTO `rides` VALUES (190, 27, '2007-05-18 21:33:58');
INSERT INTO `rides` VALUES (189, 28, '2007-05-21 18:55:42');
INSERT INTO `rides` VALUES (188, 29, '2007-05-21 21:33:51');
INSERT INTO `rides` VALUES (187, 35, '2007-05-22 11:25:16');
INSERT INTO `rides` VALUES (184, 30, '2007-05-20 13:12:23');
INSERT INTO `rides` VALUES (183, 31, '2007-05-18 16:22:35');
INSERT INTO `rides` VALUES (182, 32, '2007-05-22 11:46:18');
INSERT INTO `rides` VALUES (181, 26, '2007-05-22 17:41:55');
INSERT INTO `rides` VALUES (180, 29, '2007-05-23 12:03:22');
INSERT INTO `rides` VALUES (179, 33, '2007-05-21 18:09:10');
INSERT INTO `rides` VALUES (178, 33, '2007-05-18 15:38:59');
INSERT INTO `rides` VALUES (176, 29, '2007-05-22 14:51:45');
INSERT INTO `rides` VALUES (173, 35, '2007-05-18 19:33:44');
INSERT INTO `rides` VALUES (172, 31, '2007-05-23 09:12:26');
INSERT INTO `rides` VALUES (171, 32, '2007-05-18 14:35:53');
INSERT INTO `rides` VALUES (168, 28, '2007-05-22 19:07:32');
INSERT INTO `rides` VALUES (164, 31, '2007-05-19 09:11:21');
INSERT INTO `rides` VALUES (159, 33, '2007-05-22 12:20:43');
INSERT INTO `rides` VALUES (158, 26, '2007-05-20 14:43:24');
INSERT INTO `rides` VALUES (157, 26, '2007-05-19 16:22:41');
INSERT INTO `rides` VALUES (156, 27, '2007-05-22 14:16:24');
INSERT INTO `rides` VALUES (162, 28, '2007-05-20 19:51:31');
INSERT INTO `rides` VALUES (154, 30, '2007-05-19 10:11:12');
INSERT INTO `rides` VALUES (153, 34, '2007-05-20 18:21:34');
INSERT INTO `rides` VALUES (152, 30, '2007-05-19 16:17:39');
INSERT INTO `rides` VALUES (151, 29, '2007-05-20 13:41:32');
INSERT INTO `rides` VALUES (150, 34, '2007-05-22 13:45:44');

-- --------------------------------------------------------

-- 
-- Table structure for table `shifts`
-- 

CREATE TABLE `shifts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) DEFAULT NULL,
  `attraction_id` bigint(20) DEFAULT NULL,
  `hourly_rate` int(11) DEFAULT NULL,
  `date_worked` date NOT NULL,
  `time_worked` time DEFAULT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `finish` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `shifts`
-- 

INSERT INTO `shifts` VALUES (5, 3, 35, 650, '2007-05-18', '06:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (6, 3, 35, 650, '2007-05-20', '06:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (7, 4, 35, 650, '2007-05-18', '06:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (8, 5, 32, 599, '2007-05-23', '03:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (9, 5, 33, 599, '2007-05-22', '06:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (10, 5, 33, 599, '2007-05-23', '03:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (11, 7, 31, 720, '2007-05-21', '06:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (12, 7, 32, 720, '2007-05-22', '06:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (13, 8, 28, 850, '2007-05-18', '03:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (14, 8, 29, 850, '2007-05-18', '03:00:00', NULL, NULL);
INSERT INTO `shifts` VALUES (15, 8, 29, 850, '2007-05-19', '06:00:00', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `tickets`
-- 

CREATE TABLE `tickets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ticket_sale_id` bigint(20) NOT NULL,
  `ticket_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=89729 ;

-- 
-- Dumping data for table `tickets`
-- 

INSERT INTO `tickets` VALUES (13001, 1, 2);
INSERT INTO `tickets` VALUES (13002, 2, 1);
INSERT INTO `tickets` VALUES (13003, 3, 1);
INSERT INTO `tickets` VALUES (18721, 4, 2);
INSERT INTO `tickets` VALUES (18722, 5, 2);
INSERT INTO `tickets` VALUES (18723, 6, 3);
INSERT INTO `tickets` VALUES (18724, 7, 1);
INSERT INTO `tickets` VALUES (4668, 8, 1);
INSERT INTO `tickets` VALUES (32450, 9, 1);
INSERT INTO `tickets` VALUES (45767, 10, 1);
INSERT INTO `tickets` VALUES (67832, 11, 2);
INSERT INTO `tickets` VALUES (67833, 12, 1);
INSERT INTO `tickets` VALUES (67855, 13, 2);
INSERT INTO `tickets` VALUES (88567, 14, 2);
INSERT INTO `tickets` VALUES (88568, 15, 1);
INSERT INTO `tickets` VALUES (89720, 16, 2);
INSERT INTO `tickets` VALUES (89723, 17, 2);
INSERT INTO `tickets` VALUES (89725, 18, 2);
INSERT INTO `tickets` VALUES (89728, 19, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `ticket_sales`
-- 

CREATE TABLE `ticket_sales` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `seller_id` bigint(20) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

-- 
-- Dumping data for table `ticket_sales`
-- 

INSERT INTO `ticket_sales` VALUES (1, 1, '2007-05-20 05:55:23');
INSERT INTO `ticket_sales` VALUES (2, 1, '2007-05-22 18:37:14');
INSERT INTO `ticket_sales` VALUES (3, 1, '2007-05-23 03:20:03');
INSERT INTO `ticket_sales` VALUES (4, 1, '2007-05-23 08:48:36');
INSERT INTO `ticket_sales` VALUES (5, 1, '2007-05-23 10:02:49');
INSERT INTO `ticket_sales` VALUES (6, 1, '2007-05-22 23:48:21');
INSERT INTO `ticket_sales` VALUES (7, 1, '2007-05-20 16:53:21');
INSERT INTO `ticket_sales` VALUES (8, 3, '2007-05-22 13:01:40');
INSERT INTO `ticket_sales` VALUES (9, 3, '2007-05-20 14:28:19');
INSERT INTO `ticket_sales` VALUES (10, 3, '2007-05-23 09:16:35');
INSERT INTO `ticket_sales` VALUES (11, 7, '2007-05-19 02:58:01');
INSERT INTO `ticket_sales` VALUES (12, 7, '2007-05-19 11:00:18');
INSERT INTO `ticket_sales` VALUES (13, 7, '2007-05-21 22:07:27');
INSERT INTO `ticket_sales` VALUES (14, 6, '2007-05-21 05:36:26');
INSERT INTO `ticket_sales` VALUES (15, 6, '2007-05-22 09:39:47');
INSERT INTO `ticket_sales` VALUES (16, 6, '2007-05-18 07:29:41');
INSERT INTO `ticket_sales` VALUES (17, 6, '2007-05-18 08:29:01');
INSERT INTO `ticket_sales` VALUES (18, 6, '2007-05-18 19:56:02');
INSERT INTO `ticket_sales` VALUES (19, 6, '2007-05-21 02:13:08');

-- --------------------------------------------------------

-- 
-- Table structure for table `ticket_types`
-- 

CREATE TABLE `ticket_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `price` (`price`,`description`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `ticket_types`
-- 

INSERT INTO `ticket_types` VALUES (1, 2500, 'Adult');
INSERT INTO `ticket_types` VALUES (2, 1500, 'Child');
INSERT INTO `ticket_types` VALUES (3, 2000, 'Senior');
