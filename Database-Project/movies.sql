-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2022 at 05:48 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies_tvshow`
--

CREATE TABLE `movies_tvshow` (
  `Mts_id` int(11) NOT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Rel_date` int(11) DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Budget` int(11) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `no_of_ep` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_tvshow`
--

INSERT INTO `movies_tvshow` (`Mts_id`, `Genre`, `Rel_date`, `Title`, `Budget`, `runtime`, `no_of_ep`, `Rating`) VALUES
(1, 'Sci-fi_Adventure_Action', 2017, 'SpiderMan-Homecoming', 175000000, 133, NULL, 7),
(2, 'Action_Adventure_Drama', 2019, 'Avengers:Endgame', 375000000, 180, NULL, 8),
(3, 'Adventure_Action_Comedy', 2017, 'Thor: Ragnarok', 180000000, 130, NULL, 7),
(4, 'Sci-fi_Adventure_Action', 2019, 'Spiderman:Far From Home', 160000000, 135, NULL, 7),
(5, 'Fanatsy-Adventure-Action-Sci-fi', 2016, 'Doctor Strange', 263000000, 115, NULL, 8),
(6, 'Sci-fi_Adventure_Action', 2008, 'Iron Man 1', 140000000, 125, NULL, 8),
(7, 'Adventure_Fantasy_Action', 2011, 'Thor 1', 170000000, 130, NULL, 7),
(8, 'Sci-fi_Adventure_Action', 2008, 'The Incredible Hulk', 135000000, 112, NULL, 7),
(9, 'Sci-fi_Adventure_Action', 2011, 'Captain America 1', 138000000, 120, NULL, 7),
(10, 'Sci-fi_Adventure_Action', 2012, 'Avengers 1', 300000000, 145, NULL, 8),
(11, 'Sci-fi_Adventure_Action', 2016, 'Captain America: Civil War', 190000000, 147, NULL, 8),
(12, 'Sci-fi_Adventure_Action', 2018, 'Avengers: Infinity War', 321000000, 150, NULL, 8),
(13, 'Adventure_Action_Comedy', 2014, 'Guardians Of the Galaxy 1', 256000000, 120, NULL, 8),
(14, 'Action_Adventure_Comedy', 2015, 'Ant Man 1', 165000000, 117, NULL, 7),
(15, 'Action_Comedy_Drama', 2021, 'WandaVision', 25000000, NULL, NULL, 9),
(16, 'Action_Comedy_Drama', 2021, 'Disney: Loki', 150000000, NULL, NULL, 6),
(17, 'Action_Adventure_Drama', 2021, 'Falcon and the Winter Soldier', 150000000, NULL, 6, 7),
(18, 'Action_Adventure_Crime', 2021, 'Hawkeye', 150000000, NULL, 6, 7),
(19, 'Sci-fi_Adventure_Action', 2021, 'SpiderMan: No Way Home', 300000000, 148, NULL, 8),
(20, 'Adventure_Action_Comedy', 2017, 'Guardians Of the Galaxy 2', 216000000, 146, NULL, 7),
(21, 'Sci-fi_Adventure_Action', 2023, 'The Flash', NULL, NULL, NULL, NULL),
(22, 'Sci-fi_Adventure_Action', 2023, 'Guardians of the Galaxy vol:3', NULL, NULL, NULL, NULL),
(23, 'Sci-fi_Adventure_Action', 2023, 'Ant-Man and the Wasp: Quantumania', NULL, NULL, NULL, NULL),
(24, 'Sci-fi_Adventure_Action', 2023, 'Aquaman and the Lost Kingdom', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies_tvshow`
--
ALTER TABLE `movies_tvshow`
  ADD PRIMARY KEY (`Mts_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
