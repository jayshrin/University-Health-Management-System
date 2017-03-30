-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2014 at 09:16 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uhc`
--
CREATE DATABASE `uhc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uhc`;

-- --------------------------------------------------------

--
-- Table structure for table `appscheduler_bookings`
--

CREATE TABLE IF NOT EXISTS `appscheduler_bookings` (
  `student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `student_phone` varchar(255) DEFAULT NULL,
  `student_city` varchar(255) DEFAULT NULL,
  `student_state` varchar(255) DEFAULT NULL,
  `student_zip` varchar(255) DEFAULT NULL,
  `student_add_1` varchar(255) DEFAULT NULL,
  `student_add_2` varchar(255) DEFAULT NULL,
  `student_notes` text,
  `student_dob` date DEFAULT NULL,
  `student_mis` varchar(255) DEFAULT NULL,
  `appointment_id` int(10) unsigned DEFAULT NULL,
  `appointment_d` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `appscheduler_bookings`
--

INSERT INTO `appscheduler_bookings` (`student_id`, `student_name`, `student_email`, `student_phone`, `student_city`, `student_state`, `student_zip`, `student_add_1`, `student_add_2`, `student_notes`, `student_dob`, `student_mis`, `appointment_id`, `appointment_d`, `appointment_time`) VALUES
(1, 'Harish Vadla', 'vadlahari91@gmail.com', '+919490034904', 'Hyderabad', 'Telangana', '500072', 'Kukatpally', 'Hyderabad', 'Need to visit doctor on a monthly checkup', '1991-11-11', 'Harish Vadla', 201411111, '2014-11-22', '13:00:00'),
(6, 'Kalyan Kanduri', 'kandurikalyan@gmail.com', '+16572255997', 'California', 'United States of America', '109102', 'Mehdipatnam', 'Hyderabad', 'Regular checkup ', '2014-11-12', 'Kalyan Kanduri', 201411271, '2014-11-19', '14:00:00'),
(7, 'Harish Vadla', 'vadlahari91@gmail.com', '9490034904', 'Hyderabad', 'Telangana', '500072', 'Hyd', 'Hyd', 'General Checkup', '1991-11-11', 'NA', 2014111901, '2014-11-10', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mail_categories`
--

CREATE TABLE IF NOT EXISTS `mail_categories` (
  `category_code` varchar(10) NOT NULL,
  `category_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_categories`
--

INSERT INTO `mail_categories` (`category_code`, `category_description`) VALUES
('ADBW', 'Advanced Birthday Wishes'),
('BW', 'Birthday Wishes'),
('FBM', 'FeedBack Mailer'),
('APPR', 'Appointment Reminder'),
('ANN', 'Announcement Mail');

-- --------------------------------------------------------

--
-- Stand-in structure for view `students_appointments`
--
CREATE TABLE IF NOT EXISTS `students_appointments` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`appointment_id` int(10) unsigned
,`appointment_time` time
,`appointment_day` int(2)
,`appointment_month` int(2)
,`appointment_year` int(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_appointments_next14days`
--
CREATE TABLE IF NOT EXISTS `students_appointments_next14days` (
`student_id` int(10) unsigned
,`student_email` varchar(255)
,`appointment_date` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_appointments_next7days`
--
CREATE TABLE IF NOT EXISTS `students_appointments_next7days` (
`student_id` int(10) unsigned
,`student_email` varchar(255)
,`appointment_date` date
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_birthday_mail_history`
--
CREATE TABLE IF NOT EXISTS `students_birthday_mail_history` (
`mail_id` int(10)
,`student_id` int(10)
,`student_name` varchar(255)
,`student_email` varchar(255)
,`mail_date` date
,`mail_category` varchar(255)
,`lastupdateddatetime` timestamp
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_currentday_appointments`
--
CREATE TABLE IF NOT EXISTS `students_currentday_appointments` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`appointment_id` int(10) unsigned
,`appointment_time` time
,`appointment_day` int(2)
,`appointment_month` int(2)
,`appointment_year` int(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_currentmonth_appointments`
--
CREATE TABLE IF NOT EXISTS `students_currentmonth_appointments` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`appointment_id` int(10) unsigned
,`appointment_time` time
,`appointment_day` int(2)
,`appointment_month` int(2)
,`appointment_year` int(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_emailid`
--
CREATE TABLE IF NOT EXISTS `students_emailid` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `students_feedback`
--

CREATE TABLE IF NOT EXISTS `students_feedback` (
  `feedback_id` int(10) NOT NULL AUTO_INCREMENT,
  `service_rating` int(1) NOT NULL DEFAULT '5',
  `facilities_rating` int(1) NOT NULL DEFAULT '5',
  `medication_rating` int(1) NOT NULL DEFAULT '5',
  `feedback_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `students_feedback`
--

INSERT INTO `students_feedback` (`feedback_id`, `service_rating`, `facilities_rating`, `medication_rating`, `feedback_date`) VALUES
(1, 5, 5, 5, '2014-11-13 15:11:14'),
(2, 4, 4, 5, '2014-11-13 15:11:53'),
(3, 5, 3, 4, '2014-11-13 15:12:08'),
(4, 5, 4, 5, '2014-11-13 15:12:37'),
(5, 4, 4, 4, '2014-11-13 15:12:37'),
(6, 4, 3, 5, '2014-11-13 15:13:00'),
(7, 3, 4, 5, '2014-11-13 15:13:00'),
(8, 5, 4, 5, '2014-11-13 18:18:29'),
(9, 5, 4, 4, '2014-11-13 18:27:51'),
(10, 4, 4, 5, '2014-11-13 18:31:25'),
(11, 4, 4, 5, '2014-11-13 18:32:08'),
(12, 5, 4, 5, '2014-11-13 18:33:37');

-- --------------------------------------------------------

--
-- Stand-in structure for view `students_feedback_mail_history`
--
CREATE TABLE IF NOT EXISTS `students_feedback_mail_history` (
`mail_id` int(10)
,`student_id` int(10)
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`mail_date` date
,`mail_category` varchar(255)
,`dayspassed` int(7)
,`lastupdateddatetime` timestamp
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_finishedappointments`
--
CREATE TABLE IF NOT EXISTS `students_finishedappointments` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_d` date
,`appointment_day` int(2)
,`appointment_month` int(2)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_future_appointments`
--
CREATE TABLE IF NOT EXISTS `students_future_appointments` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`appointment_id` int(10) unsigned
,`appointment_time` time
,`appointment_day` int(2)
,`appointment_month` int(2)
,`appointment_year` int(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_future_birthday_list`
--
CREATE TABLE IF NOT EXISTS `students_future_birthday_list` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_dob` date
,`student_dob_month` int(2)
,`student_dob_day` int(2)
);
-- --------------------------------------------------------

--
-- Table structure for table `students_mail_history`
--

CREATE TABLE IF NOT EXISTS `students_mail_history` (
  `mail_id` int(10) NOT NULL AUTO_INCREMENT,
  `student_id` int(10) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `mail_date` date NOT NULL,
  `mail_category` varchar(255) NOT NULL,
  `lastupdateddatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `students_mail_history`
--

INSERT INTO `students_mail_history` (`mail_id`, `student_id`, `student_name`, `student_email`, `mail_date`, `mail_category`, `lastupdateddatetime`) VALUES
(4, 1, 'Harish Vadla', 'vadlahari91@gmail.com', '2014-11-19', 'ADBW', '2014-11-19 15:03:38'),
(5, 6, 'Kalyan Kanduri', 'kandurikalyan@gmail.com', '2014-11-19', 'ADBW', '2014-11-19 15:03:38'),
(7, 1, 'Harish Vadla', 'vadlahari91@gmail.com', '2014-11-12', 'FBM', '2014-11-19 18:32:41'),
(8, 1, 'Harish Vadla', 'vadlahari91@gmail.com', '2014-11-20', 'FBM', '2014-11-19 19:05:44'),
(11, 1, 'Harish Vadla', 'vadlahari91@gmail.com', '2014-11-20', 'APPR', '2014-11-19 22:06:25'),
(12, 1, 'Harish Vadla', 'vadlahari91@gmail.com', '2014-11-21', 'ANN', '2014-11-20 19:55:30'),
(13, 7, 'Harish Vadla', 'vadlahari91@gmail.com', '2014-11-21', 'ANN', '2014-11-20 19:55:30'),
(14, 6, 'Kalyan Kanduri', 'kandurikalyan@gmail.com', '2014-11-21', 'ANN', '2014-11-20 20:03:11');

-- --------------------------------------------------------

--
-- Stand-in structure for view `students_nextday_appointments`
--
CREATE TABLE IF NOT EXISTS `students_nextday_appointments` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`appointment_id` int(10) unsigned
,`appointment_time` time
,`appointment_day` int(2)
,`appointment_month` int(2)
,`appointment_year` int(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_overall_feedback`
--
CREATE TABLE IF NOT EXISTS `students_overall_feedback` (
`service_rating` decimal(36,4)
,`facilities_rating` decimal(36,4)
,`medication_rating` decimal(36,4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_previousmonth_appointments`
--
CREATE TABLE IF NOT EXISTS `students_previousmonth_appointments` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`appointment_id` int(10) unsigned
,`appointment_time` time
,`appointment_day` int(2)
,`appointment_month` int(2)
,`appointment_year` int(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_reminder_mail_history`
--
CREATE TABLE IF NOT EXISTS `students_reminder_mail_history` (
`mail_id` int(10)
,`student_id` int(10)
,`student_name` varchar(255)
,`student_email` varchar(255)
,`appointment_date` date
,`mail_date` date
,`mail_category` varchar(255)
,`dayspassed` int(7)
,`lastupdateddatetime` timestamp
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `students_today_birthday_list`
--
CREATE TABLE IF NOT EXISTS `students_today_birthday_list` (
`student_id` int(10) unsigned
,`student_name` varchar(255)
,`student_email` varchar(255)
,`student_dob` date
);
-- --------------------------------------------------------

--
-- Structure for view `students_appointments`
--
DROP TABLE IF EXISTS `students_appointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_appointments` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_time` AS `appointment_time`,dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_day`,month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_month`,year(`appscheduler_bookings`.`appointment_d`) AS `appointment_year` from `appscheduler_bookings`;

-- --------------------------------------------------------

--
-- Structure for view `students_appointments_next14days`
--
DROP TABLE IF EXISTS `students_appointments_next14days`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_appointments_next14days` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date` from `appscheduler_bookings` where ((dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) <= (dayofmonth(now()) + 14)) and (dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) >= dayofmonth(now())) and (month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = month(now())) and (year(`appscheduler_bookings`.`appointment_d`) = year(now())));

-- --------------------------------------------------------

--
-- Structure for view `students_appointments_next7days`
--
DROP TABLE IF EXISTS `students_appointments_next7days`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_appointments_next7days` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date` from `appscheduler_bookings` where ((dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) <= (dayofmonth(now()) + 7)) and (dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) >= dayofmonth(now())) and (month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = month(now())) and (year(`appscheduler_bookings`.`appointment_d`) = year(now())));

-- --------------------------------------------------------

--
-- Structure for view `students_birthday_mail_history`
--
DROP TABLE IF EXISTS `students_birthday_mail_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_birthday_mail_history` AS select `students_mail_history`.`mail_id` AS `mail_id`,`students_mail_history`.`student_id` AS `student_id`,`students_mail_history`.`student_name` AS `student_name`,`students_mail_history`.`student_email` AS `student_email`,`students_mail_history`.`mail_date` AS `mail_date`,`students_mail_history`.`mail_category` AS `mail_category`,`students_mail_history`.`lastupdateddatetime` AS `lastupdateddatetime` from `students_mail_history` where ((`students_mail_history`.`mail_category` = 'ADBW') or (`students_mail_history`.`mail_category` = 'BW'));

-- --------------------------------------------------------

--
-- Structure for view `students_currentday_appointments`
--
DROP TABLE IF EXISTS `students_currentday_appointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_currentday_appointments` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_time` AS `appointment_time`,dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_day`,month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_month`,year(`appscheduler_bookings`.`appointment_d`) AS `appointment_year` from `appscheduler_bookings` where ((dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = dayofmonth(now())) and (month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = month(now())) and (year(`appscheduler_bookings`.`appointment_d`) = year(now())));

-- --------------------------------------------------------

--
-- Structure for view `students_currentmonth_appointments`
--
DROP TABLE IF EXISTS `students_currentmonth_appointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_currentmonth_appointments` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_time` AS `appointment_time`,dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_day`,month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_month`,year(`appscheduler_bookings`.`appointment_d`) AS `appointment_year` from `appscheduler_bookings` where ((month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = month(now())) and (year(`appscheduler_bookings`.`appointment_d`) = year(now())));

-- --------------------------------------------------------

--
-- Structure for view `students_emailid`
--
DROP TABLE IF EXISTS `students_emailid`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_emailid` AS select distinct `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email` from `appscheduler_bookings`;

-- --------------------------------------------------------

--
-- Structure for view `students_feedback_mail_history`
--
DROP TABLE IF EXISTS `students_feedback_mail_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_feedback_mail_history` AS select `students_mail_history`.`mail_id` AS `mail_id`,`students_mail_history`.`student_id` AS `student_id`,`students_mail_history`.`student_name` AS `student_name`,`students_mail_history`.`student_email` AS `student_email`,`students_finishedappointments`.`appointment_d` AS `appointment_date`,`students_mail_history`.`mail_date` AS `mail_date`,`students_mail_history`.`mail_category` AS `mail_category`,(to_days(`students_finishedappointments`.`appointment_d`) - to_days(`students_mail_history`.`mail_date`)) AS `dayspassed`,`students_mail_history`.`lastupdateddatetime` AS `lastupdateddatetime` from (`students_mail_history` join `students_finishedappointments` on((`students_mail_history`.`student_id` = `students_finishedappointments`.`student_id`))) where (`students_mail_history`.`mail_category` = 'FBM');

-- --------------------------------------------------------

--
-- Structure for view `students_finishedappointments`
--
DROP TABLE IF EXISTS `students_finishedappointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_finishedappointments` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_d`,dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_day`,month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_month` from `appscheduler_bookings` where (`appscheduler_bookings`.`appointment_d` <= date_format(now(),'%Y-%m-%d'));

-- --------------------------------------------------------

--
-- Structure for view `students_future_appointments`
--
DROP TABLE IF EXISTS `students_future_appointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_future_appointments` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_time` AS `appointment_time`,dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_day`,month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_month`,year(`appscheduler_bookings`.`appointment_d`) AS `appointment_year` from `appscheduler_bookings` where (`appscheduler_bookings`.`appointment_d` > date_format(now(),'%Y-%m-%d'));

-- --------------------------------------------------------

--
-- Structure for view `students_future_birthday_list`
--
DROP TABLE IF EXISTS `students_future_birthday_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_future_birthday_list` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_dob` AS `student_dob`,month(date_format(`appscheduler_bookings`.`student_dob`,'%Y-%m-%d 00:00:00')) AS `student_dob_month`,dayofmonth(date_format(`appscheduler_bookings`.`student_dob`,'%Y-%m-%d 00:00:00')) AS `student_dob_day` from `appscheduler_bookings`;

-- --------------------------------------------------------

--
-- Structure for view `students_nextday_appointments`
--
DROP TABLE IF EXISTS `students_nextday_appointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_nextday_appointments` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_time` AS `appointment_time`,dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_day`,month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_month`,year(`appscheduler_bookings`.`appointment_d`) AS `appointment_year` from `appscheduler_bookings` where ((dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = (dayofmonth(now()) + 1)) and (month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = month(now())) and (year(`appscheduler_bookings`.`appointment_d`) = year(now())));

-- --------------------------------------------------------

--
-- Structure for view `students_overall_feedback`
--
DROP TABLE IF EXISTS `students_overall_feedback`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_overall_feedback` AS select (sum(`students_feedback`.`service_rating`) / max(`students_feedback`.`feedback_id`)) AS `service_rating`,(sum(`students_feedback`.`facilities_rating`) / max(`students_feedback`.`feedback_id`)) AS `facilities_rating`,(sum(`students_feedback`.`medication_rating`) / max(`students_feedback`.`feedback_id`)) AS `medication_rating` from `students_feedback`;

-- --------------------------------------------------------

--
-- Structure for view `students_previousmonth_appointments`
--
DROP TABLE IF EXISTS `students_previousmonth_appointments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_previousmonth_appointments` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`appointment_d` AS `appointment_date`,`appscheduler_bookings`.`appointment_id` AS `appointment_id`,`appscheduler_bookings`.`appointment_time` AS `appointment_time`,dayofmonth(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_day`,month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) AS `appointment_month`,year(`appscheduler_bookings`.`appointment_d`) AS `appointment_year` from `appscheduler_bookings` where ((month(date_format(`appscheduler_bookings`.`appointment_d`,'%Y-%m-%d 00:00:00')) = (month(now()) - 1)) and (year(`appscheduler_bookings`.`appointment_d`) = year(now())));

-- --------------------------------------------------------

--
-- Structure for view `students_reminder_mail_history`
--
DROP TABLE IF EXISTS `students_reminder_mail_history`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_reminder_mail_history` AS select `students_mail_history`.`mail_id` AS `mail_id`,`students_mail_history`.`student_id` AS `student_id`,`students_mail_history`.`student_name` AS `student_name`,`students_mail_history`.`student_email` AS `student_email`,`students_future_appointments`.`appointment_date` AS `appointment_date`,`students_mail_history`.`mail_date` AS `mail_date`,`students_mail_history`.`mail_category` AS `mail_category`,(to_days(`students_future_appointments`.`appointment_date`) - to_days(`students_mail_history`.`mail_date`)) AS `dayspassed`,`students_mail_history`.`lastupdateddatetime` AS `lastupdateddatetime` from (`students_mail_history` join `students_future_appointments` on((`students_mail_history`.`student_id` = `students_future_appointments`.`student_id`))) where (`students_mail_history`.`mail_category` = 'APPR');

-- --------------------------------------------------------

--
-- Structure for view `students_today_birthday_list`
--
DROP TABLE IF EXISTS `students_today_birthday_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `students_today_birthday_list` AS select `appscheduler_bookings`.`student_id` AS `student_id`,`appscheduler_bookings`.`student_name` AS `student_name`,`appscheduler_bookings`.`student_email` AS `student_email`,`appscheduler_bookings`.`student_dob` AS `student_dob` from `appscheduler_bookings` where ((month(date_format(`appscheduler_bookings`.`student_dob`,'%Y-%m-%d 00:00:00')) = month(now())) and (dayofmonth(date_format(`appscheduler_bookings`.`student_dob`,'%Y-%m-%d 00:00:00')) = dayofmonth(now())));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
