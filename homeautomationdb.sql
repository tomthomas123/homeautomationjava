-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 12:31 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeautomationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `sensorvalues`
--

CREATE TABLE `sensorvalues` (
  `id` int(11) NOT NULL,
  `temperature` float NOT NULL,
  `humidity` int(11) NOT NULL,
  `moisture` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sensorvalues`
--

INSERT INTO `sensorvalues` (`id`, `temperature`, `humidity`, `moisture`, `date`) VALUES
(1, 36, 55, 12, '2022-11-07 09:51:21'),
(2, 22, 55, 88, '2022-11-07 10:09:42'),
(3, 44, 66, 88, '2022-11-07 10:10:02'),
(4, 88, 66, 44, '2022-11-02 10:17:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sensorvalues`
--
ALTER TABLE `sensorvalues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sensorvalues`
--
ALTER TABLE `sensorvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
