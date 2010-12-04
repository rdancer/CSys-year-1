-- phpMyAdmin SQL Dump
-- version 3.3.2
-- http://www.phpmyadmin.net
--
-- Host: myeusql.dur.ac.uk
-- Generation Time: Dec 04, 2010 at 05:57 PM
-- Server version: 5.1.39
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Pgvkw79_Pets`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--
-- Creation: Dec 04, 2010 at 01:35 PM
--

CREATE TABLE IF NOT EXISTS `clinics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_address_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`),
  KEY `physical_address_id` (`physical_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- RELATIONS FOR TABLE `clinics`:
--   `physical_address_id`
--       `physical_addresses` -> `id`
--

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `id_public`, `physical_address_id`) VALUES
(1, 'Manchester', 25),
(2, 'Newcastle', 22),
(3, 'Nottingham', 19),
(4, 'London', 28),
(5, 'Westminster', 4),
(6, 'Gateshead', 10);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--
-- Creation: Dec 03, 2010 at 11:21 PM
--

CREATE TABLE IF NOT EXISTS `countries` (
  `iso_code` char(2) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ISO 3166-1 alpha-2 (two-letter) country code',
  `english_name` varchar(254) COLLATE utf8_unicode_ci NOT NULL COMMENT 'English name of the country',
  PRIMARY KEY (`iso_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ISO 3166-1 alpha-2 (two-letter) country codes';

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`iso_code`, `english_name`) VALUES
('AD', 'Andorra'),
('AE', 'United Arab Emirates'),
('AF', 'Afghanistan'),
('AG', 'Antigua and Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AQ', 'Antarctica'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Åland Islands'),
('AZ', 'Azerbaijan'),
('BA', 'Bosnia and Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BE', 'Belgium'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BR', 'Brazil'),
('BS', 'Bahamas'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Islands'),
('CD', 'Congo, The Democratic Republic of the'),
('CF', 'Central African Republic'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Côte d''Ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CS', 'Serbia and Montenegro'),
('CU', 'Cuba'),
('CV', 'Cape Verde'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('DE', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('EC', 'Ecuador'),
('EE', 'Estonia'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands (Malvinas)'),
('FM', 'Micronesia, Federated States of'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'United Kingdom'),
('GD', 'Grenada'),
('GE', 'Georgia'),
('GF', 'French Guiana'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'South Georgia and the South Sandwich Islands'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island and McDonald Islands'),
('HN', 'Honduras'),
('HR', 'Croatia'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('ID', 'Indonesia'),
('IE', 'Ireland'),
('IL', 'Israel'),
('IN', 'India'),
('IO', 'British Indian Ocean Territory'),
('IQ', 'Iraq'),
('IR', 'Iran, Islamic Republic of'),
('IS', 'Iceland'),
('IT', 'Italy'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('KE', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts and Nevis'),
('KP', 'Korea, Democratic People''s Republic of'),
('KR', 'Korea, Republic of'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Lao People''s Democratic Republic'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libyan Arab Jamahiriya'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova, Republic of'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia, Republic of'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NE', 'Niger'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'New Zealand'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Peru'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre and Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territory, Occupied'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Reunion'),
('RO', 'Romania'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SD', 'Sudan'),
('SE', 'Sweden'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard and Jan Mayen'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('ST', 'Sao Tome and Principe'),
('SV', 'El Salvador'),
('SY', 'Syrian Arab Republic'),
('SZ', 'Swaziland'),
('TC', 'Turks and Caicos Islands'),
('TD', 'Chad'),
('TF', 'French Southern Territories'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TR', 'Turkey'),
('TT', 'Trinidad and Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan'),
('TZ', 'Tanzania, United Republic of'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UM', 'United States Minor Outlying Islands'),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('VA', 'Holy See (Vatican City State)'),
('VC', 'Saint Vincent and the Grenadines'),
('VE', 'Venezuela'),
('VG', 'Virgin Islands, British'),
('VI', 'Virgin Islands, U.S.'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis and Futuna'),
('Wi', 'UK'),
('WS', 'Samoa'),
('XX', 'other/not known'),
('YE', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--
-- Creation: Dec 04, 2010 at 03:58 PM
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Employee #',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `physical_address_id` bigint(20) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `clinic_id` bigint(20) DEFAULT NULL,
  `nino` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `annual_salary` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`employee_number`),
  KEY `physical_address_id` (`physical_address_id`),
  KEY `clinic_id` (`clinic_id`),
  KEY `job_position_id` (`job_position_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Employees of the company' AUTO_INCREMENT=12 ;

--
-- RELATIONS FOR TABLE `employees`:
--   `clinic_id`
--       `clinics` -> `id`
--   `physical_address_id`
--       `physical_addresses` -> `id`
--   `job_position_id`
--       `job_positions` -> `id`
--

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_number`, `title`, `first_name`, `last_name`, `date_of_birth`, `hire_date`, `physical_address_id`, `phone_number`, `job_position_id`, `clinic_id`, `nino`, `annual_salary`) VALUES
(3, '3', 'Ms.', 'Emma', 'Calderdale', '1972-06-15', '1992-03-15', 5, '181-324-9134', 1, 1, 'XX0000003F', 2200000),
(4, '4', 'Ms.', 'Marshel', 'Ricardo', '1978-03-19', '1996-04-25', 6, '181-324-4472', 2, 1, 'XX0000004M', 2520000),
(5, '5', 'Mr.', 'Arif', 'Arshad', '1969-11-14', '1990-12-20', 23, '7253-675-8993', 6, NULL, 'XX0000005M', 3333300),
(6, '6', 'Ms.', 'Anne', 'Roberts', '1974-10-16', '1994-08-16', 7, '181-898-3456', 1, 2, 'XX0000006F', 2300000),
(7, '7', 'Mr.', 'Enrica', 'Denver', '1980-11-08', '2001-10-20', 8, '7253-504-4434', 2, 2, 'XX0000007M', 2520000),
(8, '8', 'Ms.', 'Mirrelle', 'Namowa', '1990-03-14', '2006-11-08', 9, '181-890-3243', 3, 2, 'XX0000008F', 1900000),
(9, '9', 'Mrs.', 'Gemma', 'Smith', '1968-02-12', '1989-01-05', 20, '181-324-7845', 1, 3, 'XX0000009F', 3333300),
(10, NULL, 'Mr', 'Graham', 'Allen', '0000-00-00', '1990-08-20', 14, '01979009977', 2, 3, 'XX0000010M', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_positions`
--
-- Creation: Dec 04, 2010 at 12:49 AM
--

CREATE TABLE IF NOT EXISTS `job_positions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='All the employment positions an employee can undertake in ou' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `job_positions`
--

INSERT INTO `job_positions` (`id`, `name`, `note`) VALUES
(1, 'Manager', NULL),
(2, 'Vet', NULL),
(3, 'Nurse', NULL),
(4, 'Secretary', NULL),
(5, 'Cleaner', NULL),
(6, 'Director', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--
-- Creation: Dec 04, 2010 at 03:48 PM
--

CREATE TABLE IF NOT EXISTS `owners` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `physical_address_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `physical_address_id` (`physical_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Owners of the pets we register and treat' AUTO_INCREMENT=11 ;

--
-- RELATIONS FOR TABLE `owners`:
--   `physical_address_id`
--       `physical_addresses` -> `id`
--

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `id_public`, `first_name`, `last_name`, `physical_address_id`) VALUES
(1, '1', 'Diane', 'Abbott', 1),
(2, '2', 'Gerry', 'Adams', 2),
(3, '3', 'Nigel', 'Adams', 3),
(4, '4', 'Adam', 'Afriyie', 4),
(5, '5', 'Bob', 'Ainsworth', 5),
(6, '6', 'Peter', 'Aldous', 6),
(7, '7', 'Danny', 'Alexander', 7),
(8, '8', 'Douglas', 'Alexander', 8),
(9, '9', 'Heidi', 'Alexander', 9),
(10, '10', 'Rushanara', 'Ali', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pens`
--
-- Creation: Dec 04, 2010 at 03:49 PM
--

CREATE TABLE IF NOT EXISTS `pens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clinic_id` bigint(20) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`,`clinic_id`),
  KEY `clinic_id` (`clinic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Lists all the pens we have at all the clinics' AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `pens`:
--   `clinic_id`
--       `clinics` -> `id`
--

--
-- Dumping data for table `pens`
--


-- --------------------------------------------------------

--
-- Table structure for table `pen_bookings`
--
-- Creation: Dec 04, 2010 at 03:50 PM
--

CREATE TABLE IF NOT EXISTS `pen_bookings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` bigint(20) NOT NULL,
  `start_booked` datetime NOT NULL,
  `end_booked` datetime NOT NULL,
  `start_actual` datetime DEFAULT NULL,
  `end_actual` datetime DEFAULT NULL,
  `pen_id` bigint(20) NOT NULL,
  `pet_id` bigint(20) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pen_id` (`pen_id`),
  KEY `pet_id` (`pet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Bookings (start, end) of pets into pens' AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `pen_bookings`:
--   `pet_id`
--       `pets` -> `id`
--   `pen_id`
--       `pens` -> `id`
--

--
-- Dumping data for table `pen_bookings`
--


-- --------------------------------------------------------

--
-- Table structure for table `pets`
--
-- Creation: Dec 04, 2010 at 03:51 PM
--

CREATE TABLE IF NOT EXISTS `pets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  `registered_since` datetime NOT NULL,
  `is_alive` tinyint(1) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='All pets we have registered' AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `pets`:
--   `owner_id`
--       `owners` -> `id`
--

--
-- Dumping data for table `pets`
--


-- --------------------------------------------------------

--
-- Table structure for table `physical_addresses`
--
-- Creation: Dec 03, 2010 at 11:21 PM
--

CREATE TABLE IF NOT EXISTS `physical_addresses` (
  `line_1` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_2` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` char(254) COLLATE utf8_unicode_ci NOT NULL,
  `territory` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `county` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Postal address of an entity (be it a person, organization)' AUTO_INCREMENT=32 ;

--
-- RELATIONS FOR TABLE `physical_addresses`:
--   `country`
--       `countries` -> `iso_code`
--

--
-- Dumping data for table `physical_addresses`
--

INSERT INTO `physical_addresses` (`line_1`, `line_2`, `city`, `territory`, `zip`, `country`, `id`, `county`) VALUES
('8 rue Chambiges', NULL, 'Paris', NULL, '75008', 'FR', 1, NULL),
('18 St Anns Square', NULL, 'Manchester', NULL, 'M2 7HQ', 'GB', 2, 'Greater Manchester'),
('36/38 Oxford Street', '', 'Manchester', NULL, 'M1 5EJ', 'GB', 3, 'Greater Manchester'),
('45/47 Whitehall', NULL, 'Westminster', NULL, 'SW1A 2BX', 'GB', 4, 'London'),
('Unit 4 City Room', NULL, 'Manchester', NULL, 'M3 1AR', 'GB', 5, 'Greater Manchester'),
('Arndale Centre', NULL, 'Manchester', NULL, 'M2 1NP', 'GB', 6, 'Greater Manchester'),
('64/70 Northumberland Street', NULL, 'Newcastle-upon-Tyne', NULL, 'NE1 7DF', 'GB', 7, 'Tyne and Wear'),
('85/93 Grainger St', NULL, 'Newcastle-upon-Tyne', NULL, 'NE1 5JF', 'GB', 8, 'Tyne and Wear'),
('Blier House', 'Potts Street', 'Newcastle-upon-Tyne', NULL, 'NE6 1ED', 'GB', 9, 'Tyne and Wear'),
('Shearlegs Road', '', 'Gateshead', NULL, 'NE8 3EJ', 'GB', 10, 'Tyne and Wear'),
('4 Thinford Road', NULL, 'Thinford', NULL, 'DL17 8RU', 'GB', 11, 'Durham'),
('Unit 110 Dalton Pk', NULL, 'Seaham', NULL, 'SR7 9HU', 'GB', 12, 'Durham'),
('38 Newgate St', NULL, 'Bishop Auckland', NULL, 'DL14 7EG', 'GB', 13, 'Durham'),
('31/35 Clumber Street', NULL, 'Nottingham', NULL, 'NG1 3ED', 'GB', 14, 'Nottinghamshire'),
('7 Angel Row', NULL, 'Nottingham', NULL, 'NG1 6HL', 'GB', 15, 'Nottinghamshire'),
('13/14 Exchange Walk', NULL, 'Nottingham', NULL, 'NG1 2NX', 'GB', 16, 'Nottinghamshire'),
('Castle Marina', 'Castle Bridge Road', 'Nottingham', NULL, 'NG7 1GX', 'GB', 17, 'Nottinghamshire'),
('8-10 Upper Parliament Street', NULL, 'Nottingham', NULL, 'NG1 2AD', 'GB', 18, 'Nottinghamshire'),
('Junction 25-26', 'M1 Northbound', 'Nottingham', NULL, 'NG9 3PL', 'GB', 19, 'Nottinghamshire'),
('Junction 25-26', 'M1 Southbound', 'Nottingham', NULL, 'NG9 3PL', 'GB', 20, 'Nottinghamshire'),
('Unit 2, Jackson House', '24-34 Northumberland Street', 'Newcastle-upon-Tyne', NULL, 'NE1 7DE', 'GB', 21, 'Tyne and Wear'),
('Charlotte House', '100-102 Clayton Street', 'Newcastle-upon-Tyne', NULL, 'NE1 8XX', 'GB', 22, 'Tyne and Wear'),
('2a Mosley Street', 'Piccadilly', 'Manchester', NULL, 'M1 2BN', 'GB', 23, 'Greater Manchester'),
('Unit 16', 'Piccadilly Station', 'Manchester', NULL, 'M1 2BN', 'GB', 24, 'Greater Manchester'),
('Unit J, Fallowfield Shopping Centre', 'Birchfield Rd', 'Manchester', NULL, 'M14 6ES', 'GB', 25, 'Greater Manchester'),
('Charring Cross Station', 'Charring Cross', 'London', NULL, 'WC2N 5HS', 'GB', 26, 'London'),
('Waterloo Railway Station', 'Waterloo', 'London', NULL, 'SE1 8SE', 'GB', 27, 'London'),
('17-21 Leicester Sq', 'London West End', 'London', '', 'WC2H 7LE', 'GB', 28, 'London'),
('Barrier Line', 'Victoria Rail Station', 'London', NULL, 'SW1V 1JU', 'GB', 29, 'London'),
('County Hall', '', 'Westminster', NULL, 'SE1 7PB', 'GB', 30, 'London');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--
-- Creation: Dec 04, 2010 at 03:52 PM
--

CREATE TABLE IF NOT EXISTS `treatments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) DEFAULT NULL,
  `treatment_type_id` bigint(20) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `start_booked` datetime DEFAULT NULL,
  `start_actual` datetime DEFAULT NULL,
  `clinic_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `treatment_type_id` (`treatment_type_id`),
  KEY `clinic_id` (`clinic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- RELATIONS FOR TABLE `treatments`:
--   `clinic_id`
--       `clinics` -> `id`
--   `employee_id`
--       `employees` -> `id`
--   `treatment_type_id`
--       `treatment_types` -> `id`
--

--
-- Dumping data for table `treatments`
--


-- --------------------------------------------------------

--
-- Table structure for table `treatment_types`
--
-- Creation: Dec 04, 2010 at 12:51 AM
--

CREATE TABLE IF NOT EXISTS `treatment_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_public` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `treatment_types`
--

INSERT INTO `treatment_types` (`id`, `price`, `name`, `id_public`, `note`) VALUES
(1, 5000, 'Penicillin antibiotic course', 'T123', NULL),
(2, 20000, 'Feline hysterectomy', 'T155', NULL),
(3, 7000, 'Vaccination course against feline flu', 'T112', NULL),
(4, 2000, 'Small dog - stay in pen per day', 'T56', 'includes feeding'),
(5, 4000, 'Big dog - stay in pen per per day', 'T57', 'includes feeding'),
(6, 102400, 'Elephant - stay in pen per day', 'T5600', 'includes feeding and excrement disposal'),
(7, 19999, 'Zebra - stripes retouch', 'T33', 'price per stripe'),
(8, 7099, 'Zebra - whole body repaint', 'T66', 'repaint all stripes'),
(11, 999, 'Small animals - tentacle trim', 'T58', ''),
(12, 2099, 'Big animals - tentacle trim', 'T59', ''),
(13, 4099, 'Euthanasia', 'T-1', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinics`
--
ALTER TABLE `clinics`
  ADD CONSTRAINT `clinics_ibfk_1` FOREIGN KEY (`physical_address_id`) REFERENCES `physical_addresses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`physical_address_id`) REFERENCES `physical_addresses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`job_position_id`) REFERENCES `job_positions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `owners`
--
ALTER TABLE `owners`
  ADD CONSTRAINT `owners_ibfk_1` FOREIGN KEY (`physical_address_id`) REFERENCES `physical_addresses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pens`
--
ALTER TABLE `pens`
  ADD CONSTRAINT `pens_ibfk_1` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pen_bookings`
--
ALTER TABLE `pen_bookings`
  ADD CONSTRAINT `pen_bookings_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pen_bookings_ibfk_1` FOREIGN KEY (`pen_id`) REFERENCES `pens` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `treatments`
--
ALTER TABLE `treatments`
  ADD CONSTRAINT `treatments_ibfk_5` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `treatments_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `treatments_ibfk_4` FOREIGN KEY (`treatment_type_id`) REFERENCES `treatment_types` (`id`) ON UPDATE CASCADE;
COMMIT;
