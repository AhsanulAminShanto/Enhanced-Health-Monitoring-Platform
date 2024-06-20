-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 06:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health_monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, '', '', '', '2024-04-13 21:36:29'),
(2, '', '', '', '2024-04-13 21:36:35'),
(3, '', '', '', '2024-04-13 21:38:41'),
(4, '', '', '', '2024-04-13 21:39:24'),
(5, 'Ahsanul Amin Shanto', 'ahsanulaminshanto@gmail.com', 'adsfc', '2024-04-13 21:39:38'),
(6, '', '', '', '2024-04-13 21:40:34'),
(7, '', '', '', '2024-04-13 21:41:20'),
(8, '', '', '', '2024-04-13 21:41:21'),
(9, '', '', '', '2024-04-13 21:42:12'),
(10, '', '', '', '2024-04-13 21:42:13'),
(11, '', '', '', '2024-04-13 21:42:13'),
(12, '', '', '', '2024-04-13 21:42:14'),
(13, '', '', '', '2024-04-13 21:42:18'),
(14, 'as', 'as@gmail', 'adsasa', '2024-04-13 21:43:28'),
(15, 'as', 'as@gmail', 'adsasa', '2024-04-13 21:43:47'),
(16, 'as', 'as@gmail', 'adsasa', '2024-04-13 21:44:10'),
(17, 'as', 'as@gmail', 'adsasa', '2024-04-13 21:44:33'),
(18, 'as', 'as@gmail', 'adsasa', '2024-04-13 21:44:47'),
(19, 'x', 'x@gmail.com', 'adsd', '2024-04-13 21:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `demographics`
--

CREATE TABLE `demographics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `demographics`
--

INSERT INTO `demographics` (`id`, `name`, `age`, `gender`, `address`) VALUES
(1, 'Ahsanul Amin Shanto', 25, 'male', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`id`, `patient_id`, `diagnosis`, `date`) VALUES
(1, 2011, 'DAWFEASFSE', '2024-12-12'),
(2, 2011, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa', '1212-12-12'),
(3, 0, 'czvszc vzsf', '0012-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `facility_name` varchar(255) NOT NULL,
  `facility_type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_info` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `notification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `patient_id`, `notification`) VALUES
(1, 2011, 'adF');

-- --------------------------------------------------------

--
-- Table structure for table `risk_analysis`
--

CREATE TABLE `risk_analysis` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `risk_factor` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `risk_analysis`
--

INSERT INTO `risk_analysis` (`id`, `patient_id`, `risk_factor`, `description`) VALUES
(1, 2011, 'asdddddd', 'adsass');

-- --------------------------------------------------------

--
-- Table structure for table `specialists`
--

CREATE TABLE `specialists` (
  `id` int(11) NOT NULL,
  `specialist_name` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  `contact_info` varchar(255) NOT NULL,
  `associated_risks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialists`
--

INSERT INTO `specialists` (`id`, `specialist_name`, `specialty`, `contact_info`, `associated_risks`) VALUES
(1, 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `remember_me` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `address`, `email`, `remember_me`, `created_at`) VALUES
(14, 'a', '$2y$10$YxREa416j/IZh33Rqdz.meK0fgCId3PJbSY2mKNf.41XEVkx2fe5G', 'a', 'a@gmail.com', 1, '2024-06-13 21:31:54'),
(15, 's', '$2y$10$pJBrei7/i5V1fnlNIFajJ.6Shphmyjx5JQlZTZ/phVDI5Wdf6bJJG', 'tangail', 's@gmail.com', 1, '2024-06-13 21:33:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demographics`
--
ALTER TABLE `demographics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_analysis`
--
ALTER TABLE `risk_analysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialists`
--
ALTER TABLE `specialists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `demographics`
--
ALTER TABLE `demographics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `risk_analysis`
--
ALTER TABLE `risk_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `specialists`
--
ALTER TABLE `specialists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
