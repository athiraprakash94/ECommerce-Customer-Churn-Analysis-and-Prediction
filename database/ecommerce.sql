-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2023 at 08:24 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `email`, `password`) VALUES
('athiranprakash49', 'athiranprakash49@gmail.com', 'Athi@123');

-- --------------------------------------------------------

--
-- Table structure for table `prediction`
--

DROP TABLE IF EXISTS `prediction`;
CREATE TABLE IF NOT EXISTS `prediction` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Tenure` int NOT NULL,
  `PreferredLoginDevice` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `CityTier` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `WarehouseToHome` int NOT NULL,
  `Gender` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `NumberOfDeviceRegistered` int NOT NULL,
  `SatisfactionScore` int NOT NULL,
  `MaritalStatus` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `NumberOfAddress` int NOT NULL,
  `Complain` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `DaySinceLastOrder` int NOT NULL,
  `CashbackAmount` int NOT NULL,
  `avg_cashbk_per_order` float NOT NULL,
  `PaymentMode` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `OrderCat` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Churn` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=50003 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prediction`
--

INSERT INTO `prediction` (`Id`, `Tenure`, `PreferredLoginDevice`, `CityTier`, `WarehouseToHome`, `Gender`, `NumberOfDeviceRegistered`, `SatisfactionScore`, `MaritalStatus`, `NumberOfAddress`, `Complain`, `DaySinceLastOrder`, `CashbackAmount`, `avg_cashbk_per_order`, `PaymentMode`, `OrderCat`, `Churn`) VALUES
(50001, 4, 'Mobile', 'Tier 3', 6, 'Female', 2, 2, 'Married', 9, 'Yes', 5, 160, 160, 'DC', 'Laptop', 'Will Churn'),
(50002, 4, 'Mobile', 'Tier2', 10, 'Male', 3, 5, 'Divorced', 5, 'NO', 2, 160, 160, 'Credit Card', 'Fashion', 'Will Not Churn');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
