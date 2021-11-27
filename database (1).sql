-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 05:23 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--
CREATE DATABASE IF NOT EXISTS `medical` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `medical`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `appoint_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` int(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `appoint_date` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `doctor` varchar(20) NOT NULL,
  `appoint_by` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`appoint_id`, `name`, `number`, `gender`, `dob`, `appoint_date`, `city`, `doctor`, `appoint_by`) VALUES
(1, 'pa1', 45344354, 'Male', '2021-02-24', '2021-04-02', 'Faislabad', 'yas@gmail.com', 'ali@gmail.com'),
(2, '', 0, 'Male', '', '2021-04-10', 'Faislabad', 'yas@gmail.com', 'ali@gmail.com'),
(3, '', 0, 'Male', '', '', 'Faislabad', 'yas@gmail.com', 'ali@gmail.com'),
(4, 'SAIFULLAH YASIR', 2147483647, 'Male', '2021-04-08', '2021-04-24', 'Faislabad', 'yas@gmail.com', 'yas@gmail.com'),
(7, 'ya', 2147483647, 'Male', '2021-04-15', '2021-05-01', 'karachi', 'abc@gmail.com', 'user@gmail.com'),
(8, 'root', 2147483647, 'Male', '2021-04-05', '2021-05-01', 'Faislabad', 'yas@gmail.com', 'user@gmail.com'),
(10, 'p1', 2147483647, 'Male', '2021-04-07', '2021-04-26', 'karachi', 'abc@gmail.com', 'sys@gmail.com'),
(11, 'p2', 2147483647, 'Male', '2021-04-09', '2021-04-22', 'karachi', 'abc@gmail.com', 'sys@gmail.com'),
(12, 'p2', 43875683, 'Male', '2021-04-02', '2021-04-22', 'karachi', 'abc@gmail.com', 'sys@gmail.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointview`
-- (See below for the actual view)
--
CREATE TABLE `appointview` (
`name` varchar(20)
,`number` int(15)
,`gender` varchar(10)
,`dob` varchar(20)
,`appoint_date` varchar(20)
,`city` varchar(20)
,`appoint_doctor` varchar(20)
,`appoint_by` varchar(20)
,`clinic` varchar(50)
,`address` varchar(100)
,`Mon` varchar(20)
,`Tue` varchar(20)
,`Wed` varchar(20)
,`Thu` varchar(20)
,`Fri` varchar(20)
,`Sat` varchar(20)
,`Sun` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointview1`
-- (See below for the actual view)
--
CREATE TABLE `appointview1` (
`appoint_id` int(11)
,`name` varchar(20)
,`number` int(15)
,`gender` varchar(10)
,`dob` varchar(20)
,`appoint_date` varchar(20)
,`city` varchar(20)
,`appoint_by` varchar(20)
,`clinic` varchar(50)
,`address` varchar(100)
,`image` varchar(50)
,`description` varchar(100)
,`Mon` varchar(20)
,`Tue` varchar(20)
,`Wed` varchar(20)
,`Thu` varchar(20)
,`Fri` varchar(20)
,`Sat` varchar(20)
,`Sun` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `appointview2`
-- (See below for the actual view)
--
CREATE TABLE `appointview2` (
`appoint_id` int(11)
,`name` varchar(20)
,`number` int(15)
,`gender` varchar(10)
,`dob` varchar(20)
,`appoint_date` varchar(20)
,`city` varchar(20)
,`appoint_by` varchar(20)
,`doctor` varchar(20)
,`clinic` varchar(50)
,`address` varchar(100)
,`image` varchar(50)
,`description` varchar(100)
,`Mon` varchar(20)
,`Tue` varchar(20)
,`Wed` varchar(20)
,`Thu` varchar(20)
,`Fri` varchar(20)
,`Sat` varchar(20)
,`Sun` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(4) NOT NULL,
  `city_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(5, 'karachi'),
(6, 'Lahore'),
(7, 'Islamabad'),
(8, 'Faislabad'),
(10, 'Peshawer'),
(11, 'Hyderabad'),
(19, 'Quetta'),
(20, 'Multan');

-- --------------------------------------------------------

--
-- Table structure for table `deataildoctor`
--

CREATE TABLE `deataildoctor` (
  `DeatailDoctor_id` int(4) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `clinic` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `Mon` varchar(20) NOT NULL,
  `Tue` varchar(20) NOT NULL,
  `Wed` varchar(20) NOT NULL,
  `Thu` varchar(20) NOT NULL,
  `Fri` varchar(20) NOT NULL,
  `Sat` varchar(20) NOT NULL,
  `Sun` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deataildoctor`
--

INSERT INTO `deataildoctor` (`DeatailDoctor_id`, `doctor`, `clinic`, `address`, `image`, `description`, `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, `Sun`) VALUES
(1, '1', 'Shifa', 'Gulshan', '', '', '5-10', '6-11', '2-9', '5-8', 'off', '8-12', 'off'),
(2, '0', 'Al-Shifa', 'Malir', '', '', '5-10', '6-11', '2-9', '5-8', 'off', '8-12', 'off'),
(3, '0', 'Agha', 'Gulshan', '', '', '5-10', '6-11', '2-9', '5-8', 'off', '8-12', 'off'),
(4, '3', 'Al-Shifa', 'Karsaz', '', '', '5-10', '6-11', '2-9', '5-8', 'off', '8-12', 'off'),
(5, '6', 'Homeo', 'Gulshan', '', '', '5-10', '5-10', '6-12', '5-8', '4-12', '8-12', 'off'),
(7, 'ali@gmail.com', 'Al-Medical', 'Gulshan', 'images/16171635671.jpg', 'Speciliztion  in Medicine', '5-10', '6-11', '2-9', '5-8', 'off', '8-12', 'off'),
(13, 'abc@gmail.com', 'Al-Medical', 'Malir', 'images/1618240956.jpg', 'Speciliztion  in Medicine', '5-10', '5-10', '2-9', '5-8', 'off', '8-12', 'off'),
(14, 'kashan@gmail.com', 'Kashi_Clinic', 'Malir', 'images/1618247572.jpg', 'Speciliztion  in Dental', '5-10', '6-11', '2-9', '5-8', '4-12', 'off', 'off'),
(15, 'yas@gmail.com', 'Yasir-Shifa', 'Karsaz', 'images/1618247884.jpg', 'Speciliztion  in Dental', '5-10', '5-10', '2-9', '5-8', 'off', '8-12', 'off'),
(16, 'adeel@gmail.com', 'AADi', 'Karsaz', 'images/1618812964.jpg', 'Speciliztion  in Eye', '5-12', '6-11', '2-9', '5-8', 'off', '8-12', 'off'),
(17, 'd@gmail.com', 'Doctors', 'Gulshan', 'images/1618891275.jpg', 'Speciliztion  in Medicine', '5-10', '6-11', '2-9', '5-8', 'off', '8-12', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `depart`
--

CREATE TABLE `depart` (
  `depart_id` int(11) NOT NULL,
  `depart_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `depart`
--

INSERT INTO `depart` (`depart_id`, `depart_name`) VALUES
(3, 'Cardiology'),
(4, 'Neurology'),
(5, 'Hepatology'),
(7, 'PEDIATRICIANS'),
(8, 'ANESTHESIOLOGISTS'),
(9, 'OBSTETRICIANS AND GYNECOLOGISTS'),
(10, 'UROLOGISTS'),
(11, 'NUCLEAR MEDICINE PHYSICIANS'),
(12, 'Pediatrics'),
(13, 'Surgery');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `depart` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `name`, `email`, `pass`, `gender`, `depart`, `city`) VALUES
(4, 'Yasir up', 'up@gmail.com', '123', 'Male', 'Cardiology', 'karachi'),
(5, 'SAIFULLAH YASIR', 'sys@gmail.com', '123', 'Male', 'Neurology', 'Quetta'),
(8, 'Yasir', 'yas@gmail.com', '123', 'Male', 'Cardiology', 'Faislabad'),
(9, 'SAIFULLAH YASIR', 'saifullahyasir17@gmail.com', '123', 'Male', 'Neurology', 'Quetta'),
(10, 'ali', 'ali@gmail.com', '123', 'Male', 'Hepatology', 'karachi'),
(12, 'Hamza', 'ham@gmail.com', '123', 'Male', 'Neurology', 'karachi'),
(13, 'Ahsan', 'ahsan@gmail.com', '123', 'Male', 'Pediatrics', 'karachi'),
(14, 'Adil', 'adil@gmail.com', '123', 'Male', 'OBSTETRICIANS AND GY', 'karachi'),
(15, 'Khizar', 'khizar@gmail.com', '123', 'Male', 'ANESTHESIOLOGISTS', 'Lahore'),
(16, 'Kashan', 'kashan@gmail.com', '123', 'Male', 'UROLOGISTS', 'Lahore'),
(17, 'Shari', 'shari@gmail.com', '123', 'Male', 'NUCLEAR MEDICINE PHY', 'Lahore'),
(18, 'Adeel', 'adeel@gmail.com', '123', 'Male', 'ANESTHESIOLOGISTS', 'Lahore'),
(19, 'abc', 'abc@gmail.com', '123', 'Male', 'Cardiology', 'karachi'),
(20, 'd1', 'd@gmail.com', '123', 'Male', 'ANESTHESIOLOGISTS', 'Faislabad'),
(21, 'd2', 'd2@gmail.com', '123', 'Male', 'Cardiology', 'karachi');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(4) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `role` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `email`, `pass`, `role`) VALUES
(1, 'admin', '123', 1),
(2, 'up@gmail.com', '123', 2),
(3, 'up@gmail.com', '123', 2),
(4, 'up@gmail.com', '123', 2),
(5, 'up@gmail.com', '123', 2),
(6, 'yas@gmail.com', '123', 2),
(8, 'saifullahyasir17@gmail.com', '123', 3),
(9, 'ali@gmail.com', '123', 2),
(10, 'sys@gmail.com', '123', 3),
(11, 'yas@gmail.com', '123', 2),
(12, 'ham@gmail.com', '123', 2),
(13, 'ahsan@gmail.com', '123', 2),
(14, 'adil@gmail.com', '123', 2),
(15, 'khizar@gmail.com', '123', 2),
(16, 'kashan@gmail.com', '123', 2),
(17, 'shari@gmail.com', '123', 2),
(18, 'adeel@gmail.com', '123', 2),
(19, 'abc@gmail.com', '123', 2),
(21, 'user@gmail.com', '123', 3),
(22, 'd@gmail.com', '123', 2),
(23, 'd2@gmail.com', '123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(4) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL,
  `dob` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `phone`, `pass`, `gender`, `address`, `dob`) VALUES
(2, 'SAIFULLAH YASIR', 'sys@gmail.com', 453465464, '123', 'Male', 'PNS MEHRAN ,Shahr-e-faisal,kar', '2021-03-04'),
(3, '', '', 0, '', 'Male', '', ''),
(4, 'user_update', 'user@gmail.com', 343953458, '123', 'Male', 'Malir', '2021-04-01');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewdoctor2`
-- (See below for the actual view)
--
CREATE TABLE `viewdoctor2` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewdoctor3`
-- (See below for the actual view)
--
CREATE TABLE `viewdoctor3` (
`name` varchar(20)
,`email` varchar(30)
,`gender` varchar(10)
,`depart` varchar(20)
,`city` varchar(20)
,`clinic` varchar(50)
,`address` varchar(100)
,`image` varchar(50)
,`description` varchar(100)
,`Mon` varchar(20)
,`Tue` varchar(20)
,`Wed` varchar(20)
,`Thu` varchar(20)
,`Fri` varchar(20)
,`Sat` varchar(20)
,`Sun` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `appointview`
--
DROP TABLE IF EXISTS `appointview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointview`  AS SELECT `appoint`.`name` AS `name`, `appoint`.`number` AS `number`, `appoint`.`gender` AS `gender`, `appoint`.`dob` AS `dob`, `appoint`.`appoint_date` AS `appoint_date`, `appoint`.`city` AS `city`, `appoint`.`doctor` AS `appoint_doctor`, `appoint`.`appoint_by` AS `appoint_by`, `deataildoctor`.`clinic` AS `clinic`, `deataildoctor`.`address` AS `address`, `deataildoctor`.`Mon` AS `Mon`, `deataildoctor`.`Tue` AS `Tue`, `deataildoctor`.`Wed` AS `Wed`, `deataildoctor`.`Thu` AS `Thu`, `deataildoctor`.`Fri` AS `Fri`, `deataildoctor`.`Sat` AS `Sat`, `deataildoctor`.`Sun` AS `Sun` FROM (`appoint` join `deataildoctor`) WHERE `appoint`.`doctor` = `deataildoctor`.`doctor` ;

-- --------------------------------------------------------

--
-- Structure for view `appointview1`
--
DROP TABLE IF EXISTS `appointview1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointview1`  AS SELECT `appoint`.`appoint_id` AS `appoint_id`, `appoint`.`name` AS `name`, `appoint`.`number` AS `number`, `appoint`.`gender` AS `gender`, `appoint`.`dob` AS `dob`, `appoint`.`appoint_date` AS `appoint_date`, `appoint`.`city` AS `city`, `appoint`.`appoint_by` AS `appoint_by`, `deataildoctor`.`clinic` AS `clinic`, `deataildoctor`.`address` AS `address`, `deataildoctor`.`image` AS `image`, `deataildoctor`.`description` AS `description`, `deataildoctor`.`Mon` AS `Mon`, `deataildoctor`.`Tue` AS `Tue`, `deataildoctor`.`Wed` AS `Wed`, `deataildoctor`.`Thu` AS `Thu`, `deataildoctor`.`Fri` AS `Fri`, `deataildoctor`.`Sat` AS `Sat`, `deataildoctor`.`Sun` AS `Sun` FROM (`appoint` join `deataildoctor`) WHERE `appoint`.`doctor` = `deataildoctor`.`doctor` ;

-- --------------------------------------------------------

--
-- Structure for view `appointview2`
--
DROP TABLE IF EXISTS `appointview2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `appointview2`  AS SELECT `appoint`.`appoint_id` AS `appoint_id`, `appoint`.`name` AS `name`, `appoint`.`number` AS `number`, `appoint`.`gender` AS `gender`, `appoint`.`dob` AS `dob`, `appoint`.`appoint_date` AS `appoint_date`, `appoint`.`city` AS `city`, `appoint`.`appoint_by` AS `appoint_by`, `appoint`.`doctor` AS `doctor`, `deataildoctor`.`clinic` AS `clinic`, `deataildoctor`.`address` AS `address`, `deataildoctor`.`image` AS `image`, `deataildoctor`.`description` AS `description`, `deataildoctor`.`Mon` AS `Mon`, `deataildoctor`.`Tue` AS `Tue`, `deataildoctor`.`Wed` AS `Wed`, `deataildoctor`.`Thu` AS `Thu`, `deataildoctor`.`Fri` AS `Fri`, `deataildoctor`.`Sat` AS `Sat`, `deataildoctor`.`Sun` AS `Sun` FROM (`appoint` join `deataildoctor`) WHERE `appoint`.`doctor` = `deataildoctor`.`doctor` ;

-- --------------------------------------------------------

--
-- Structure for view `viewdoctor2`
--
DROP TABLE IF EXISTS `viewdoctor2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewdoctor2`  AS SELECT `doctor`.`name` AS `name`, `doctor`.`email` AS `email`, `doctor`.`gender` AS `gender`, `doctor`.`depart` AS `depart`, `doctor`.`city` AS `city`, `deataildoctor`.`clinic` AS `clinic`, `deataildoctor`.`address` AS `address`, `deataildoctor`.`image` AS `image`, `deataildoctor`.`description` AS `description`, `deataildoctor`.`Mon` AS `mon`, `deataildoctor`.`tues` AS `tues`, `deataildoctor`.`wed` AS `wed`, `deataildoctor`.`thur` AS `thur`, `deataildoctor`.`fri` AS `fri`, `deataildoctor`.`sat` AS `sat`, `deataildoctor`.`sun` AS `sun` FROM (`doctor` join `deataildoctor`) WHERE `doctor`.`email` = `deataildoctor`.`doctor` ;

-- --------------------------------------------------------

--
-- Structure for view `viewdoctor3`
--
DROP TABLE IF EXISTS `viewdoctor3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewdoctor3`  AS SELECT `doctor`.`name` AS `name`, `doctor`.`email` AS `email`, `doctor`.`gender` AS `gender`, `doctor`.`depart` AS `depart`, `doctor`.`city` AS `city`, `deataildoctor`.`clinic` AS `clinic`, `deataildoctor`.`address` AS `address`, `deataildoctor`.`image` AS `image`, `deataildoctor`.`description` AS `description`, `deataildoctor`.`Mon` AS `Mon`, `deataildoctor`.`Tue` AS `Tue`, `deataildoctor`.`Wed` AS `Wed`, `deataildoctor`.`Thu` AS `Thu`, `deataildoctor`.`Fri` AS `Fri`, `deataildoctor`.`Sat` AS `Sat`, `deataildoctor`.`Sun` AS `Sun` FROM (`doctor` join `deataildoctor`) WHERE `doctor`.`email` = `deataildoctor`.`doctor` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`appoint_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD UNIQUE KEY `city_id` (`city_id`);

--
-- Indexes for table `deataildoctor`
--
ALTER TABLE `deataildoctor`
  ADD UNIQUE KEY `DeatailDoctor_id` (`DeatailDoctor_id`);

--
-- Indexes for table `depart`
--
ALTER TABLE `depart`
  ADD UNIQUE KEY `depart_id` (`depart_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD UNIQUE KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `appoint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `deataildoctor`
--
ALTER TABLE `deataildoctor`
  MODIFY `DeatailDoctor_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `depart`
--
ALTER TABLE `depart`
  MODIFY `depart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"medical\",\"table\":\"city\"},{\"db\":\"medical\",\"table\":\"appoint\"},{\"db\":\"medical\",\"table\":\"doctor\"},{\"db\":\"medical\",\"table\":\"deataildoctor\"},{\"db\":\"medical\",\"table\":\"login\"},{\"db\":\"medical\",\"table\":\"appointview2\"},{\"db\":\"medical\",\"table\":\"appointview1\"},{\"db\":\"medical\",\"table\":\"appointview\"},{\"db\":\"medical\",\"table\":\"viewdoctor3\"},{\"db\":\"medical\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'medical', 'appointview', '{\"sorted_col\":\"`appointview`.`clinic` ASC\"}', '2021-04-19 04:18:27'),
('root', 'medical', 'deataildoctor', '{\"CREATE_TIME\":\"2021-03-28 09:16:52\"}', '2021-03-28 15:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-11-23 04:22:34', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
