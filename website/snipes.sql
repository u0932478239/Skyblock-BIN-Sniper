-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 05:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `price` varchar(90) COLLATE utf8_swedish_ci DEFAULT NULL,
  `name` varchar(90) COLLATE utf8_swedish_ci DEFAULT NULL,
  `profit` varchar(90) COLLATE utf8_swedish_ci DEFAULT NULL,
  `uuid` varchar(20) COLLATE utf8_swedish_ci DEFAULT NULL,
  `time` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`price`, `name`, `profit`, `uuid`, `time`) VALUES
('50,000', 'Plasma', '1,050,000', 'd98dad8b7d264af48aab', '2022-09-21 14:27:13.832735'),
('349,000', 'Empty Thunder Bottle', '3,151,000', 'ca725538343f4faeb273', '2022-09-21 14:30:16.223989'),
('800,000', 'Sturdy Titanium Pickaxe', '2,299,000', '48737a6aa3a24393b0da', '2022-09-21 14:33:13.014635'),
('5,000,000', 'Pesto Goblin Omelette', '19,000,000', '3345df5b34f940ccb3cc', '2022-09-21 14:34:12.945027'),
('950,000', 'Sturdy Titanium Pickaxe', '2,149,000', 'f1891e809ee941669895', '2022-09-21 14:34:12.952164'),
('450,000', 'Fierce Strong Dragon Leggings', '1,150,000', '2873498b8bf843f386fe', '2022-09-21 14:36:13.613779'),
('1,800,000', 'Fierce Shadow Assassin Leggings ✪', '2,000,000', '0e25d7df0f414617a46b', '2022-09-21 14:40:15.623692'),
('3,000,000', 'Waxed Vanquished Glowstone Gauntlet', '4,000,000', 'e4fbfb903a2a446fb2f6', '2022-09-21 14:40:15.633492'),
('1,800,000', 'Fierce Shadow Assassin Leggings ✪', '2,000,000', '0e25d7df0f414617a46b', '2022-09-21 14:40:17.690761'),
('3,000,000', 'Waxed Vanquished Glowstone Gauntlet', '4,000,000', 'e4fbfb903a2a446fb2f6', '2022-09-21 14:40:17.692753');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
