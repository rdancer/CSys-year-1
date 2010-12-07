-- phpMyAdmin SQL Dump
-- version 3.3.2
-- http://www.phpmyadmin.net
--
-- Host: myeusql.dur.ac.uk
-- Generation Time: Dec 07, 2010 at 11:24 PM
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

CREATE TABLE IF NOT EXISTS `clinics` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_address_id` bigint(20) DEFAULT NULL,
  `phone` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`),
  KEY `postal_address_id` (`postal_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `id_public`, `postal_address_id`, `phone`, `fax`) VALUES
(1, 'Manchester', 25, '009809123532', '098102935145'),
(2, 'Newcastle', 22, '0-1010010905', '0192380198098'),
(3, 'Nottingham', 19, '01985029385', '109285012985'),
(4, 'London', 28, '1029851029853', '010918098'),
(5, 'Westminster', 4, '010980981089', '010943805810'),
(6, 'Gateshead', 10, '0918405810', '09180198098');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
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

CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `employee_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Employee #',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `postal_address_id` bigint(20) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_position_id` bigint(20) DEFAULT NULL,
  `clinic_id` bigint(20) DEFAULT NULL,
  `nino` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `annual_salary` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`employee_number`),
  KEY `clinic_id` (`clinic_id`),
  KEY `job_position_id` (`job_position_id`),
  KEY `postal_address_id` (`postal_address_id`),
  KEY `sex` (`sex`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Employees of the company' AUTO_INCREMENT=24 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_number`, `title`, `first_name`, `last_name`, `date_of_birth`, `hire_date`, `postal_address_id`, `phone_number`, `job_position_id`, `clinic_id`, `nino`, `sex`, `annual_salary`) VALUES
(3, '3', 'Ms.', 'Emma', 'Calderdale', '1972-06-15', '1992-03-15', 5, '181-324-9134', 1, 1, 'XX0000003F', 'F', 2200000),
(4, '4', 'Ms.', 'Marshel', 'Ricardo', '1978-03-19', '1996-04-25', 6, '181-324-4472', 2, 1, 'XX0000004M', 'M', 2520000),
(5, '5', 'Mr.', 'Arif', 'Arshad', '1969-11-14', '1990-12-20', 23, '7253-675-8993', 6, NULL, 'XX0000005M', 'M', 3333300),
(6, '6', 'Ms.', 'Anne', 'Roberts', '1974-10-16', '1994-08-16', 7, '181-898-3456', 1, 2, 'XX0000006F', 'F', 2300000),
(7, '7', 'Mr.', 'Enrica', 'Denver', '1980-11-08', '2001-10-20', 8, '7253-504-4434', 2, 2, 'XX0000007M', 'M', 2520000),
(8, '8', 'Ms.', 'Mirrelle', 'Namowa', '1990-03-14', '2006-11-08', 9, '181-890-3243', 3, 2, 'XX0000008F', 'F', 1900000),
(9, '9', 'Mrs.', 'Gemma', 'Smith', '1968-02-12', '1989-01-05', 20, '181-324-7845', 1, 3, 'XX0000009F', 'F', 3333300),
(10, '10', 'Mr', 'Graham', 'Allen', '1945-04-09', '1990-08-20', 14, '01979009977', 2, 3, 'XX0000010M', 'M', NULL),
(12, '12', 'Mr', 'Tony', 'Baldry', '1956-08-03', '1980-03-04', 26, '02024325435', 1, 4, 'XX000000M', 'M', 3333300),
(13, '13', 'Mr', 'Eilidh', 'Whiteford', '1977-07-07', '1999-03-03', 27, '012345454354', 2, 4, 'XX000000M', 'M', 3000000),
(14, '14', 'Ms', 'Margaret', 'Hodge', '1956-06-06', '2010-01-01', 29, '020234545454', 3, 4, 'XX000000F', 'F', 1666666),
(15, '15', 'Mr', 'Eric', 'Ilsley', '1947-07-07', '1999-03-03', 29, '020234545454', 3, 4, 'XX000000M', 'M', 1888888),
(16, '16', 'Mr', 'Michael', 'Dugher', '1949-04-04', '2010-11-01', 30, '020234545444', 1, 5, 'XX000000M', 'M', 4000000),
(17, '17', 'Mr', 'John', 'Woodcock', '1977-07-07', '2001-04-03', 21, '01099809809', 1, 6, 'XX000000M', 'M', 3000000),
(18, '18', 'Mr', 'John', 'Baron', '1947-07-07', '2006-06-06', 11, '012345454356', 2, 6, 'XX000000M', 'M', 1888888),
(19, '19', 'Ms', 'Maria', 'Miller', '1970-04-12', '2008-04-30', 12, '01099809807', 3, 6, 'XX000000F', 'F', 1666666),
(20, '20', 'Mr', 'John', 'Mann', '1947-07-07', '2006-06-06', 13, '012345454366', 4, 6, 'XX000000M', 'M', 1888888),
(21, '21', 'Mr', 'Don', 'Foster', '1956-12-03', '2008-06-30', 13, '01099809809', 5, 6, 'XX000000M', 'M', 1266666),
(22, '22', 'Mr', 'Mike', 'Wood', '1957-12-11', '2003-10-03', 17, '', 4, 3, 'XX000000M', 'M', 1888888),
(23, '23', 'Miss', 'Jane', 'Ellison', '1985-10-01', '2005-12-30', 18, '01099809333', 5, 3, 'XX000000F', 'F', 1333300);

-- --------------------------------------------------------

--
-- Table structure for table `job_positions`
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
-- Table structure for table `matrix_treatment_types_pet_types`
--

CREATE TABLE IF NOT EXISTS `matrix_treatment_types_pet_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `treatment_type_id` bigint(20) NOT NULL,
  `pet_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `treatment_type_id_2` (`treatment_type_id`,`pet_type_id`),
  KEY `pet_type_id` (`pet_type_id`),
  KEY `treatment_type_id` (`treatment_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Match treatment types and pet types' AUTO_INCREMENT=47 ;

--
-- Dumping data for table `matrix_treatment_types_pet_types`
--

INSERT INTO `matrix_treatment_types_pet_types` (`id`, `treatment_type_id`, `pet_type_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 2, 1),
(17, 2, 2),
(19, 3, 1),
(20, 3, 2),
(22, 4, 2),
(23, 5, 1),
(26, 6, 4),
(25, 6, 5),
(28, 7, 3),
(29, 8, 3),
(45, 11, 10),
(46, 12, 11),
(30, 13, 1),
(31, 13, 2),
(32, 13, 3),
(33, 13, 4),
(34, 13, 5),
(35, 13, 6),
(36, 13, 7),
(37, 13, 8),
(38, 13, 9),
(39, 13, 10),
(40, 13, 11),
(41, 13, 12),
(42, 13, 13),
(43, 13, 14),
(44, 13, 15);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE IF NOT EXISTS `owners` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `postal_address_id` bigint(20) DEFAULT NULL,
  `phone` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postal_address_id` (`postal_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Owners of the pets we register and treat' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `id_public`, `first_name`, `last_name`, `postal_address_id`, `phone`) VALUES
(1, '1', 'Diane', 'Abbott', 1, '009809123532'),
(2, '2', 'Gerry', 'Adams', 2, '012351235253'),
(3, '3', 'Nigel', 'Adams', 3, '012512352512'),
(4, '4', 'Adam', 'Afriyie', 4, '01531252135213'),
(5, '5', 'Bob', 'Ainsworth', 5, '013512531235'),
(6, '6', 'Peter', 'Aldous', 6, '0125125123523'),
(7, '7', 'Danny', 'Alexander', 7, '00928908098'),
(8, '8', 'Douglas', 'Alexander', 8, '02345215325'),
(9, '9', 'Heidi', 'Alexander', 9, '0132512535'),
(10, '10', 'Rushanara', 'Ali', 10, '012351235253');

-- --------------------------------------------------------

--
-- Table structure for table `pens`
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
-- Dumping data for table `pens`
--


-- --------------------------------------------------------

--
-- Table structure for table `pen_bookings`
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
-- Dumping data for table `pen_bookings`
--


-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE IF NOT EXISTS `pets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` bigint(20) NOT NULL,
  `pet_type_id` bigint(20) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '''M'' - male; ''F'' - female; NULL - unknown or n/a',
  `owner_id` bigint(20) NOT NULL,
  `registered_since` datetime NOT NULL,
  `date_of_birth` date NOT NULL,
  `is_alive` tinyint(1) NOT NULL DEFAULT '1',
  `neutered` tinyint(1) DEFAULT NULL COMMENT 'Whether the animal has been neutered.',
  `note` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`),
  KEY `sex` (`sex`),
  KEY `pet_type_id` (`pet_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='All pets we have registered' AUTO_INCREMENT=121 ;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `id_public`, `pet_type_id`, `name`, `sex`, `owner_id`, `registered_since`, `date_of_birth`, `is_alive`, `neutered`, `note`) VALUES
(61, 61, 4, 'Max', 'M', 4, '1995-03-02 00:00:00', '1994-10-07', 1, NULL, NULL),
(62, 62, 4, 'Molly', 'M', 3, '1995-04-14 00:00:00', '1994-09-28', 1, NULL, NULL),
(63, 63, 7, 'Buddy', 'M', 7, '1995-05-04 00:00:00', '1994-08-24', 1, NULL, NULL),
(64, 64, 7, 'Maggie', 'F', 7, '1995-05-10 00:00:00', '1993-04-19', 1, NULL, NULL),
(65, 65, 6, 'Lady', 'F', 8, '1995-06-30 00:00:00', '1992-08-25', 1, NULL, NULL),
(66, 66, 3, 'Misty', 'M', 8, '1995-07-20 00:00:00', '1993-04-19', 1, NULL, NULL),
(67, 67, 4, 'Sam', 'M', 8, '1995-08-03 00:00:00', '1994-01-12', 0, NULL, NULL),
(68, 68, 13, 'Brandy', 'F', 3, '1995-08-15 00:00:00', '1994-03-15', 1, NULL, NULL),
(69, 69, 1, 'Lucky', 'F', 6, '1995-09-07 00:00:00', '1994-10-26', 1, 1, NULL),
(70, 70, 11, 'Shadow', 'M', 10, '1995-09-12 00:00:00', '1992-02-23', 0, NULL, NULL),
(71, 71, 1, 'Bear', 'F', 9, '1996-01-04 00:00:00', '1993-07-22', 1, NULL, NULL),
(72, 72, 12, 'Samantha', 'F', 10, '1996-03-18 00:00:00', '1994-09-03', 1, NULL, NULL),
(73, 73, 10, 'Pepper', 'F', 2, '1996-03-19 00:00:00', '1994-05-08', 1, NULL, NULL),
(74, 74, 4, 'Ginger', 'F', 1, '1996-05-09 00:00:00', '1994-06-12', 1, NULL, NULL),
(75, 75, 15, 'Jake', 'M', 10, '1996-06-18 00:00:00', '1993-02-28', 1, NULL, NULL),
(76, 76, 11, 'Missy', 'F', 6, '1996-07-01 00:00:00', '1994-03-13', 1, NULL, NULL),
(77, 77, 14, 'Muffin', 'M', 2, '1996-07-31 00:00:00', '1993-05-22', 1, NULL, NULL),
(78, 78, 1, 'Charlie', 'F', 3, '1996-08-12 00:00:00', '1992-08-06', 1, NULL, NULL),
(79, 79, 4, 'Lucy', 'F', 3, '1996-12-13 00:00:00', '1992-07-04', 1, NULL, NULL),
(80, 80, 5, 'Rusty', 'M', 2, '1997-01-03 00:00:00', '1992-12-02', 1, NULL, NULL),
(81, 81, 10, 'Bandit', 'M', 7, '1997-02-28 00:00:00', '1993-11-17', 1, 1, NULL),
(82, 82, 1, 'Daisy', 'F', 8, '1997-03-04 00:00:00', '1994-09-28', 1, NULL, NULL),
(83, 83, 4, 'Casey', 'M', 9, '1997-03-11 00:00:00', '1993-01-28', 1, NULL, NULL),
(84, 84, 4, 'Rocky', 'F', 7, '1997-03-27 00:00:00', '1994-12-10', 1, NULL, NULL),
(85, 85, 10, 'Sandy', 'M', 7, '1997-04-10 00:00:00', '1994-03-07', 1, NULL, NULL),
(86, 86, 15, 'Princess', 'M', 8, '1997-05-23 00:00:00', '1993-02-28', 1, NULL, NULL),
(87, 87, 7, 'Toby', 'F', 10, '1997-07-03 00:00:00', '1993-09-17', 1, NULL, NULL),
(88, 88, 1, 'Sheba', 'M', 9, '1997-07-21 00:00:00', '1994-02-19', 1, NULL, NULL),
(89, 89, 14, 'Sadie', 'F', 7, '1997-07-31 00:00:00', '1994-09-14', 1, 1, NULL),
(90, 90, 8, 'Smokey', 'F', 6, '1997-08-12 00:00:00', '1992-07-23', 0, NULL, NULL),
(91, 91, 1, 'Heidi', 'F', 2, '1997-08-13 00:00:00', '1993-11-17', 1, NULL, NULL),
(92, 92, 15, 'Mandy', 'M', 8, '1997-11-13 00:00:00', '1992-02-23', 1, NULL, NULL),
(93, 93, 8, 'Tiger', 'F', 2, '1997-11-17 00:00:00', '1994-08-24', 1, NULL, NULL),
(94, 94, 3, 'Baby', 'M', 5, '1997-11-21 00:00:00', '1993-05-22', 1, NULL, NULL),
(95, 95, 12, 'Buster', 'M', 8, '1997-12-24 00:00:00', '1993-04-16', 1, NULL, NULL),
(96, 96, 3, 'Katie', 'F', 3, '1998-01-02 00:00:00', '1994-01-12', 1, NULL, NULL),
(97, 97, 1, 'Murphy', 'F', 6, '1998-02-19 00:00:00', '1994-06-12', 1, NULL, NULL),
(98, 98, 8, 'Patches', 'M', 9, '1998-04-01 00:00:00', '1994-05-23', 1, NULL, NULL),
(99, 99, 3, 'Sasha', 'F', 7, '1998-04-14 00:00:00', '1993-08-27', 1, NULL, NULL),
(100, 100, 10, 'Buffy', 'F', 5, '1998-04-27 00:00:00', '1994-10-07', 1, NULL, NULL),
(101, 101, 15, 'Nikki', 'F', 4, '1998-04-29 00:00:00', '1994-09-14', 1, 1, NULL),
(102, 102, 13, 'Cody', 'M', 9, '1998-10-23 00:00:00', '1994-08-16', 1, 1, NULL),
(103, 103, 11, 'Bailey', 'F', 5, '1998-11-23 00:00:00', '1993-02-26', 1, NULL, NULL),
(104, 104, 9, 'Penny', 'F', 8, '1999-02-05 00:00:00', '1994-09-14', 0, NULL, NULL),
(105, 105, 14, 'Tasha', 'F', 9, '1999-02-24 00:00:00', '1992-07-04', 1, NULL, NULL),
(106, 106, 9, 'Chelsea', 'F', 1, '1999-06-04 00:00:00', '1993-11-17', 1, NULL, NULL),
(107, 107, 12, 'Annie', 'M', 9, '1999-06-09 00:00:00', '1994-09-17', 1, NULL, NULL),
(108, 108, 1, 'Angel', 'F', 7, '1999-08-19 00:00:00', '1993-02-26', 1, NULL, NULL),
(109, 109, 2, 'Kitty', 'F', 7, '1999-09-03 00:00:00', '1992-09-27', 1, NULL, NULL),
(110, 110, 4, 'Alex', 'F', 3, '1999-10-28 00:00:00', '1992-07-23', 1, NULL, NULL),
(111, 111, 7, 'Barney', 'M', 4, '1999-11-05 00:00:00', '1994-08-17', 1, NULL, NULL),
(112, 112, 10, 'Duke', 'M', 1, '2000-01-11 00:00:00', '1994-03-13', 1, NULL, NULL),
(113, 113, 15, 'Sparky', 'M', 1, '2000-02-17 00:00:00', '1992-02-23', 1, NULL, NULL),
(114, 114, 3, 'Abby', 'M', 4, '2000-02-23 00:00:00', '1993-04-16', 1, NULL, NULL),
(115, 115, 11, 'Fluffy', 'F', 1, '2000-04-07 00:00:00', '1993-09-11', 1, NULL, NULL),
(116, 116, 10, 'Holly', 'F', 3, '2000-04-14 00:00:00', '1993-04-16', 1, NULL, NULL),
(117, 117, 7, 'Precious', 'F', 10, '2000-05-05 00:00:00', '1992-02-04', 1, NULL, NULL),
(118, 118, 6, 'Dusty', 'M', 7, '2000-07-07 00:00:00', '1994-03-15', 1, NULL, NULL),
(119, 119, 10, 'Blackie', 'F', 1, '2000-07-17 00:00:00', '1994-04-04', 1, NULL, NULL),
(120, 120, 8, 'Sassy', 'F', 2, '2000-11-14 00:00:00', '1994-03-23', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pet_types`
--

CREATE TABLE IF NOT EXISTS `pet_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL COMMENT 'short description',
  `note` text COLLATE utf8_unicode_ci COMMENT 'long description',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Species and subspecies of pets we may treat.  For billing an' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `pet_types`
--

INSERT INTO `pet_types` (`id`, `name`, `note`) VALUES
(1, 'big dog', NULL),
(2, 'small dog', NULL),
(3, 'zebra', NULL),
(4, 'small elephant', NULL),
(5, 'big elephant', NULL),
(6, 'lion', NULL),
(7, 'rodent', NULL),
(8, 'cat', NULL),
(9, 'puma', NULL),
(10, 'pet bird', 'cockatail, budgerigar, etc'),
(11, 'bird of prey', 'eagle, etc'),
(12, 'cow', NULL),
(13, 'sheep', NULL),
(14, 'horse', NULL),
(15, 'rhino', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `postal_addresses`
--

CREATE TABLE IF NOT EXISTS `postal_addresses` (
  `line_1` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_2` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` char(254) COLLATE utf8_unicode_ci NOT NULL,
  `zip` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `county` char(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Postal address of an entity (be it a person, organization)' AUTO_INCREMENT=32 ;

--
-- Dumping data for table `postal_addresses`
--

INSERT INTO `postal_addresses` (`line_1`, `line_2`, `city`, `zip`, `country`, `id`, `county`) VALUES
('8 rue Chambiges', NULL, 'Paris', '75008', 'FR', 1, NULL),
('18 St Anns Square', NULL, 'Manchester', 'M2 7HQ', 'GB', 2, 'Greater Manchester'),
('36/38 Oxford Street', '', 'Manchester', 'M1 5EJ', 'GB', 3, 'Greater Manchester'),
('45/47 Whitehall', NULL, 'Westminster', 'SW1A 2BX', 'GB', 4, 'London'),
('Unit 4 City Room', NULL, 'Manchester', 'M3 1AR', 'GB', 5, 'Greater Manchester'),
('Arndale Centre', NULL, 'Manchester', 'M2 1NP', 'GB', 6, 'Greater Manchester'),
('64/70 Northumberland Street', NULL, 'Newcastle-upon-Tyne', 'NE1 7DF', 'GB', 7, 'Tyne and Wear'),
('85/93 Grainger St', NULL, 'Newcastle-upon-Tyne', 'NE1 5JF', 'GB', 8, 'Tyne and Wear'),
('Blier House', 'Potts Street', 'Newcastle-upon-Tyne', 'NE6 1ED', 'GB', 9, 'Tyne and Wear'),
('Shearlegs Road', '', 'Gateshead', 'NE8 3EJ', 'GB', 10, 'Tyne and Wear'),
('4 Thinford Road', NULL, 'Thinford', 'DL17 8RU', 'GB', 11, 'Durham'),
('Unit 110 Dalton Pk', NULL, 'Seaham', 'SR7 9HU', 'GB', 12, 'Durham'),
('38 Newgate St', NULL, 'Bishop Auckland', 'DL14 7EG', 'GB', 13, 'Durham'),
('31/35 Clumber Street', NULL, 'Nottingham', 'NG1 3ED', 'GB', 14, 'Nottinghamshire'),
('7 Angel Row', NULL, 'Nottingham', 'NG1 6HL', 'GB', 15, 'Nottinghamshire'),
('13/14 Exchange Walk', NULL, 'Nottingham', 'NG1 2NX', 'GB', 16, 'Nottinghamshire'),
('Castle Marina', 'Castle Bridge Road', 'Nottingham', 'NG7 1GX', 'GB', 17, 'Nottinghamshire'),
('8-10 Upper Parliament Street', NULL, 'Nottingham', 'NG1 2AD', 'GB', 18, 'Nottinghamshire'),
('Junction 25-26', 'M1 Northbound', 'Nottingham', 'NG9 3PL', 'GB', 19, 'Nottinghamshire'),
('Junction 25-26', 'M1 Southbound', 'Nottingham', 'NG9 3PL', 'GB', 20, 'Nottinghamshire'),
('Unit 2, Jackson House', '24-34 Northumberland Street', 'Newcastle-upon-Tyne', 'NE1 7DE', 'GB', 21, 'Tyne and Wear'),
('Charlotte House', '100-102 Clayton Street', 'Newcastle-upon-Tyne', 'NE1 8XX', 'GB', 22, 'Tyne and Wear'),
('2a Mosley Street', 'Piccadilly', 'Manchester', 'M1 2BN', 'GB', 23, 'Greater Manchester'),
('Unit 16', 'Piccadilly Station', 'Manchester', 'M1 2BN', 'GB', 24, 'Greater Manchester'),
('Unit J, Fallowfield Shopping Centre', 'Birchfield Rd', 'Manchester', 'M14 6ES', 'GB', 25, 'Greater Manchester'),
('Charring Cross Station', 'Charring Cross', 'London', 'WC2N 5HS', 'GB', 26, 'London'),
('Waterloo Railway Station', 'Waterloo', 'London', 'SE1 8SE', 'GB', 27, 'London'),
('17-21 Leicester Sq', 'London West End', 'London', 'WC2H 7LE', 'GB', 28, 'London'),
('Barrier Line', 'Victoria Rail Station', 'London', 'SW1V 1JU', 'GB', 29, 'London'),
('County Hall', '', 'Westminster', 'SE1 7PB', 'GB', 30, 'London');

-- --------------------------------------------------------

--
-- Table structure for table `sex`
--

CREATE TABLE IF NOT EXISTS `sex` (
  `sex` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`sex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sex`
--

INSERT INTO `sex` (`sex`) VALUES
('F'),
('M');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE IF NOT EXISTS `treatments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_public` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `treatment_type_id` bigint(20) DEFAULT NULL,
  `start_booked` datetime DEFAULT NULL,
  `start_actual` datetime DEFAULT NULL,
  `end_booked` datetime DEFAULT NULL,
  `end_actual` datetime DEFAULT NULL,
  `clinic_id` bigint(20) NOT NULL,
  `pet_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`,`clinic_id`),
  KEY `employee_id` (`employee_id`),
  KEY `treatment_type_id` (`treatment_type_id`),
  KEY `clinic_id` (`clinic_id`),
  KEY `pet_id` (`pet_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `id_public`, `employee_id`, `treatment_type_id`, `start_booked`, `start_actual`, `end_booked`, `end_actual`, `clinic_id`, `pet_id`) VALUES
(1, 1, 4, 2, '2010-11-15 15:00:00', '2010-11-15 15:15:00', '2010-11-15 15:00:00', '2010-11-15 15:15:00', 1, 91),
(2, 2, 4, 2, '2010-11-16 15:00:00', '2010-11-16 15:15:00', '2010-11-16 15:00:00', '2010-11-16 15:15:00', 1, 97),
(3, 3, 18, 2, '2010-01-16 15:00:00', '2010-01-16 15:15:00', '2010-01-16 15:00:00', '2010-01-16 15:15:00', 6, 108),
(4, 4, 18, 14, '2009-12-23 08:00:00', '2010-12-23 08:00:00', '2009-12-23 08:00:00', '2010-12-23 08:00:00', 6, 108),
(5, 5, 4, 14, '2010-11-10 15:00:00', '2010-11-10 15:15:00', '2010-11-10 15:00:00', '2010-11-10 15:15:00', 1, 91),
(6, 6, 4, 14, '2010-11-10 15:00:00', '2010-11-10 15:15:00', '2010-11-10 15:00:00', '2010-11-10 15:15:00', 1, 97),
(7, 7, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 64),
(8, 8, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 84),
(9, 9, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 89),
(10, 10, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 99),
(11, 11, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 108),
(12, 12, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 104),
(13, 13, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 82),
(14, 14, 18, 14, '2009-01-23 08:00:00', '2010-01-23 08:00:00', '2009-01-23 08:00:00', '2010-01-23 08:00:00', 6, 75);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_types`
--

CREATE TABLE IF NOT EXISTS `treatment_types` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `price` bigint(20) DEFAULT NULL COMMENT 'price in pennies',
  `id_public` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'public, out-of-database unique ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_public` (`id_public`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `treatment_types`
--

INSERT INTO `treatment_types` (`id`, `name`, `note`, `price`, `id_public`) VALUES
(1, 'Penicillin antibiotic course', NULL, 5000, 'T123'),
(2, 'Feline hysterectomy', NULL, 20000, 'T155'),
(3, 'Vaccination course against feline flu', NULL, 7000, 'T112'),
(4, 'Stay in pen per day', 'includes feeding', 2000, 'T56'),
(5, 'Stay in pen per day', 'includes feeding', 4000, 'T57'),
(6, 'Stay in pen per day', 'includes feeding and excrement disposal', 40000, 'T58'),
(7, 'Stripes retouch', 'price per stripe', 256, 'T59'),
(8, 'Whole body repaint', 'repaint all stripes', 25600, 'T60'),
(11, 'Tentacle trim', '', 1000, 'T61'),
(12, 'Tentacle trim', '', 1999, 'T62'),
(13, 'Euthanasia', NULL, 3000, 'KILL'),
(14, 'Examination', NULL, 2000, 'EXAM');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinics`
--
ALTER TABLE `clinics`
  ADD CONSTRAINT `clinics_ibfk_1` FOREIGN KEY (`postal_address_id`) REFERENCES `postal_addresses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_5` FOREIGN KEY (`sex`) REFERENCES `sex` (`sex`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`job_position_id`) REFERENCES `job_positions` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_4` FOREIGN KEY (`postal_address_id`) REFERENCES `postal_addresses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `matrix_treatment_types_pet_types`
--
ALTER TABLE `matrix_treatment_types_pet_types`
  ADD CONSTRAINT `matrix_treatment_types_pet_types_ibfk_1` FOREIGN KEY (`treatment_type_id`) REFERENCES `treatment_types` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `matrix_treatment_types_pet_types_ibfk_2` FOREIGN KEY (`pet_type_id`) REFERENCES `pet_types` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `owners`
--
ALTER TABLE `owners`
  ADD CONSTRAINT `owners_ibfk_1` FOREIGN KEY (`postal_address_id`) REFERENCES `postal_addresses` (`id`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`sex`) REFERENCES `sex` (`sex`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pets_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pets_ibfk_3` FOREIGN KEY (`pet_type_id`) REFERENCES `pet_types` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  ADD CONSTRAINT `postal_addresses_ibfk_1` FOREIGN KEY (`country`) REFERENCES `countries` (`iso_code`) ON UPDATE CASCADE;

--
-- Constraints for table `treatments`
--
ALTER TABLE `treatments`
  ADD CONSTRAINT `treatments_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `treatments_ibfk_4` FOREIGN KEY (`treatment_type_id`) REFERENCES `treatment_types` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `treatments_ibfk_5` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `treatments_ibfk_6` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON UPDATE CASCADE;
COMMIT;
