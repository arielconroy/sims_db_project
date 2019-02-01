-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2018 at 11:00 AM
-- Server version: 5.6.36-82.1-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arielr19_simsDatabase`
--
CREATE DATABASE IF NOT EXISTS `arielr19_simsDatabase` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `arielr19_simsDatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `Pet`
--

CREATE TABLE `Pet` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `breed` text NOT NULL,
  `lifestage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Sim`
--

CREATE TABLE `Sim` (
  `id` int(3) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `lifestage` text NOT NULL,
  `career` text NOT NULL,
  `neighborhood` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Skill`
--

CREATE TABLE `Skill` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `min_level` int(2) NOT NULL,
  `max_level` int(2) NOT NULL,
  `current_level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `World`
--

CREATE TABLE `World` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `total_lots` int(3) NOT NULL,
  `empty_lots` int(3) NOT NULL,
  `occupied_lots` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `World`
--

INSERT INTO `World` (`id`, `name`, `total_lots`, `empty_lots`, `occupied_lots`) VALUES
(555, 'stet', 555, 666, 777);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Pet`
--
ALTER TABLE `Pet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sim`
--
ALTER TABLE `Sim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Skill`
--
ALTER TABLE `Skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `World`
--
ALTER TABLE `World`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
