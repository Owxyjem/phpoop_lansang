-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 09:45 AM
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
-- Database: `loginmethod`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_profile_picture` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Id`, `username`, `password`, `firstname`, `lastname`, `birthday`, `sex`, `user_email`, `user_profile_picture`, `account_type`) VALUES
(3, 'Jemy', 'memes', '', '', NULL, '', '', '', 0),
(14, 'anakniluka', 'mavs', 'dj', 'aquino', '2003-09-27', 'male', '', '', 0),
(22, 'jemjem', 'Jemjem1!', 'jem', 'jem', '1233-03-12', 'Male', 'jeremiahlansang1010@gmail.com', 'uploads/OIP_1716342870.jpg', 0),
(23, 'kim', '$2y$10$k4Tdz9BGp4RoPfKInSq0AeUfMQxeavO.YfoRN13ldibnKFDyyw6N2', 'kim', 'kim', '1994-02-06', 'Male', 'kimkim@gmail.com', 'uploads/kim.jpg', 0),
(25, 'akoto', 'akoto', 'akoto', 'ikawto', '2020-11-30', 'male', '', '', 0),
(26, 'yes', '$2y$10$hTD/UFnvhzyRmUigmRS1eOxhPBY/r9ibxFRdj3FcEgAOntyT79n1y', 'yes', 'yes', '2017-03-05', 'Male', 'yes@gmail.com', 'uploads/3333.jpg', 1),
(27, 'shes', '$2y$10$Y1i7nhS9BuJlHPIM4GUJD.lm3ZPB6HChrB3UZcPnecv8K1VrON/LG', 'shes', 'awts', '2012-12-01', 'Female', 'shes@gmail.com', 'uploads/121312.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_add_id` int(11) NOT NULL,
  `User_Id` int(11) DEFAULT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_add_id`, `User_Id`, `street`, `barangay`, `city`, `province`) VALUES
(8, 22, '132', 'Mangas I', 'Alfonso', 'Region IV-A (CALABARZON)'),
(9, 23, 'death', 'Igsoro', 'Bugasong', 'Region VI (Western Visayas)'),
(11, 26, 'wala12', 'Mangino', 'City Of Gapan', 'Region III (Central Luzon)'),
(12, 27, 'LipaS', 'Malamig', 'Gloria', 'MIMAROPA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_Id`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`user_add_id`),
  ADD KEY `User_Id` (`User_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `user_add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`User_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
