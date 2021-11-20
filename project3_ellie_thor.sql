-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2021 at 12:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project3_ellie_thor`
--

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `FollowID` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `vacationID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`FollowID`, `createdAt`, `updatedAt`, `vacationID`, `userID`) VALUES
(72, '2021-06-25 15:54:22', '2021-06-25 15:54:22', 55, 2),
(75, '2021-06-25 15:54:43', '2021-06-25 15:54:43', 106, 3),
(81, '2021-06-25 17:57:02', '2021-06-25 17:57:02', 106, 2),
(92, '2021-06-29 10:27:13', '2021-06-29 10:27:13', 46, 21),
(93, '2021-06-29 10:27:40', '2021-06-29 10:27:40', 1, 21),
(94, '2021-06-29 10:27:44', '2021-06-29 10:27:44', 33, 21),
(96, '2021-06-29 10:28:32', '2021-06-29 10:28:32', 55, 21),
(103, '2021-07-28 07:26:23', '2021-07-28 07:26:23', 1, 3),
(104, '2021-07-29 19:22:04', '2021-07-29 19:22:04', 33, 3),
(110, '2021-08-01 09:10:15', '2021-08-01 09:10:15', 165, 3),
(111, '2021-08-01 12:17:52', '2021-08-01 12:17:52', 184, 2),
(112, '2021-08-01 12:17:53', '2021-08-01 12:17:53', 46, 2),
(113, '2021-08-01 12:17:56', '2021-08-01 12:17:56', 181, 2),
(114, '2021-08-01 12:17:58', '2021-08-01 12:17:58', 33, 2),
(115, '2021-08-01 12:18:01', '2021-08-01 12:18:01', 183, 2),
(116, '2021-08-01 12:18:30', '2021-08-01 12:18:30', 47, 3),
(117, '2021-08-01 12:18:31', '2021-08-01 12:18:31', 55, 3),
(118, '2021-08-01 12:18:33', '2021-08-01 12:18:33', 183, 3),
(119, '2021-08-01 12:18:34', '2021-08-01 12:18:34', 184, 3),
(120, '2021-08-01 12:18:40', '2021-08-01 12:18:40', 186, 3),
(121, '2021-08-01 12:19:02', '2021-08-01 12:19:02', 106, 21),
(122, '2021-08-01 12:19:05', '2021-08-01 12:19:05', 186, 21),
(123, '2021-08-01 12:19:07', '2021-08-01 12:19:07', 181, 21),
(124, '2021-08-01 12:19:11', '2021-08-01 12:19:11', 165, 21);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` int(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `FirstName`, `LastName`, `Email`, `Password`, `Role`, `createdAt`, `updatedAt`) VALUES
(1, 'Sarah', 'Manning', 'sarah@gmail.com', '1111', 1, '2021-05-17 08:53:03', '2021-05-17 08:53:03'),
(2, 'Alison ', 'Hendrix', 'alison@gmail.com', '2222', 0, '2021-05-17 08:54:34', '2021-05-17 08:54:34'),
(3, 'Cosima ', 'Niehaus', 'cosima@gmail.com', '3333', 0, '2021-05-17 08:55:10', '2021-05-17 08:55:10'),
(21, 'Rachel ', 'Duncan ', 'rachel@gmail.com', '4444', 0, '2021-05-19 15:57:11', '2021-05-19 15:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `ID` int(11) NOT NULL,
  `Destination` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `ImageName` varchar(255) DEFAULT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`ID`, `Destination`, `Description`, `Price`, `ImageName`, `StartDate`, `EndDate`, `createdAt`, `updatedAt`) VALUES
(1, 'France', 'A holiday in the City of Lights in Paris, an evening visit on the Champs Elysees, a cruise on the San, a guided tour of the Notre Dame de Paris Cathedral and lots of other museums, restaurants and spectacular cultural events.', 499, 'paris.png', '2021-05-23', '2021-05-23', '2021-05-16 20:12:48', '2021-08-01 12:12:20'),
(33, 'Brazil', 'A trip from coast to coast in a sunny country full of mystery', 998, 'brasil.png', '2021-06-01', '2021-06-03', '2021-05-17 16:38:02', '2021-08-06 19:16:36'),
(46, ' Japan', 'A group trip in western Japan, three weeks of nature and spectacular scenery, A peek into the world and other culture, recommended for seniors! An accessible trip.', 249, 'japan.png', '2021-07-02', '2021-07-07', '2021-05-17 19:41:51', '2021-08-02 17:57:47'),
(47, 'Cyprus', 'A family trip, an unforgettable experience for children with activities and declared beaches and especially quiet for parents in private pools, a glass of wine and magical sunsets.', 449, 'cyprus.png', '2021-06-09', '2021-06-22', '2021-05-18 13:19:13', '2021-08-06 19:11:26'),
(55, 'Denmark', 'Come and be charmed by Copenhagen, Northern Europe’s cosiest capital, packed with cafés, shops, and the best restaurants in Scandinavia.', 1000, 'denmark.png', '2021-07-05', '2021-07-11', '2021-05-22 20:13:51', '2021-08-06 19:15:32'),
(106, 'Switzerland', 'Ski trip at the foot of Mount Mont Blanc', 499, 'montBlanc.png', '2021-07-30', '2021-08-01', '2021-05-23 20:21:46', '2021-08-01 12:09:56'),
(165, 'Kenya', 'Backpacking trip in the savannah of Kenya. A trip among wild animals, spectacular nature and a few days in which you will experience happiness and joy among the elephants and giraffes, a trip recommended in the fall', 650, 'savannah.png', '2021-07-09', '2021-07-18', '2021-07-23 17:55:40', '2021-08-01 11:11:58'),
(181, 'Canada', 'family trip', 999, 'kanada.png', '2021-11-29', '2021-12-02', '2021-08-01 11:59:29', '2021-08-01 11:59:29'),
(182, 'Netherlands', 'Couples trip', 449, 'netherland.png', '2023-11-01', '2023-11-25', '2021-08-01 12:01:11', '2021-08-06 19:15:49'),
(183, 'Vatikan', 'Holy trip', 852, 'vatikan.png', '2022-12-22', '2023-01-01', '2021-08-01 12:02:38', '2021-08-01 12:02:38'),
(184, 'Iceland', 'A walk between the bathhouses and the magical landscapes', 455, 'island.png', '2021-07-05', '2021-07-17', '2021-08-01 12:04:06', '2021-08-01 12:04:06'),
(185, 'Venesia', 'A romantic weekend between magical canals', 249, 'venesia.png', '2021-09-29', '2021-12-14', '2021-08-01 12:09:09', '2021-08-06 19:11:47'),
(186, 'U.S.A', 'Magnificent road trip', 7499, 'usa.png', '2021-07-15', '2021-07-30', '2021-08-01 12:17:22', '2021-08-01 12:17:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`FollowID`),
  ADD KEY `vacationID` (`vacationID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `FollowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_ibfk_1` FOREIGN KEY (`vacationID`) REFERENCES `vacations` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `follows_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
