-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 01, 2017 at 02:19 PM
-- Server version: 10.0.27-MariaDB-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `team5x12_treasurehunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE IF NOT EXISTS `Location` (
  `Treasure_Hunt_Title` varchar(100) NOT NULL DEFAULT '',
  `Index` int(5) NOT NULL DEFAULT '0',
  `Name` varchar(100) DEFAULT NULL,
  `Longitude` varchar(50) DEFAULT NULL,
  `Latitude` varchar(50) DEFAULT NULL,
  `QR_Code` varchar(500) DEFAULT NULL,
  `Clue` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Treasure_Hunt_Title`,`Index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`Treasure_Hunt_Title`, `Index`, `Name`, `Longitude`, `Latitude`, `QR_Code`, `Clue`) VALUES
('dank memes', 1, 'location number 2', '-1.6127462312579157', '54.98275887025949', 'dank memes|1', '2'),
('dank memes', 2, 'Claremont', '-1.6144159063696863', '54.980428585594446', 'dank memes|2', 'CS Building'),
('dank memes', 3, 'three', '-1.6154381632804873', '54.978497802272855', 'dank memes|3', 'three'),
('dank memes', 4, 'ending', '-1.6210412979125977', '54.97942886124802', 'dank memes|4', 'cool'),
('donkey bones', 1, 'further away', '-1.6082055866718292', '54.989098937813274', 'donkey bones|1', 'hopefully 40m'),
('donkey bones', 2, 'loc 1 replacement', '-1.6267181932926178', '54.98308669998332', 'donkey bones|2', 'new 1'),
('donkey bones', 3, 'please work edition 100', '-1.6056688874959946', '54.98296357176249', 'donkey bones|3', 'over here'),
('donkey bones', 4, 'my house', '-1.607184000313282', '54.98839509102741', 'donkey bones|4', 'I live here h'),
('donkey bones', 5, 'loc 1', '-1.6186008229851723', '54.98136575646197', 'donkey bones|5', '1'),
('donkey bones', 6, 'test point', '-1.6203982383012772', '54.98670053743686', 'donkey bones|6', 'please work'),
('donkey bones', 7, 'loc 2', '-1.6146593168377876', '54.982231528214925', 'donkey bones|7', '2'),
('donkey bones', 8, 'loc 5', '-1.6135173663496971', '54.97695580259932', 'donkey bones|8', 'dgnsg'),
('donkey bones', 9, 'loc 3', '-1.6114192083477976', '54.98083089258223', 'donkey bones|9', '3'),
('donkey bones', 10, 'Claremont Tower', '-1.6194494068622587', '54.97674683726878', 'donkey bones|10', 'Go to the Computer Science Building'),
('donkey bones', 11, 'loc 6', '-1.6207408905029297', '54.97860574388044', 'donkey bones|11', '6'),
('donkey bones', 12, 'loc 9 replacement', '-1.6118832305073738', '54.984194452212165', 'donkey bones|12', 'new 9'),
('donkey bones', 13, 'loc 10 replacement', '-1.60931333899498', '54.98203740457241', 'donkey bones|13', 'new 10'),
('donkey bones', 14, 'loc 12', '-1.6193407773971558', '54.98042300598569', 'donkey bones|14', '7'),
('donkey bones', 15, 'last point', '-1.6068393364548683', '54.979865810805926', 'donkey bones|15', 'dunno lol'),
('moo', 1, 'suss', '-1.6103597357869146', '54.98026735382882', 'moo|1', 'wwa'),
('moo', 2, 'moo2', '-1.614719331264496', '54.97900941598367', 'moo|2', 'wywhw'),
('moo', 3, '3', '-1.614333763718605', '54.979125822104116', 'moo|3', '3'),
('sunny sunday', 1, '', '-1.6322153806686401', '54.97655807483366', 'sunny sunday|1', ''),
('today test', 1, 'shenanegans', '-1.6074133291840553', '54.98746250868787', 'today test|1', 'bozo'),
('today test', 2, 'what', '-1.6098001599311829', '54.98550186063205', 'today test|2', 'jabroni');

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE IF NOT EXISTS `Team` (
  `Team_Name` varchar(100) NOT NULL DEFAULT '',
  `Code` varchar(50) DEFAULT NULL,
  `Progress` int(3) DEFAULT NULL,
  `Longitude` varchar(100) DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Student` varchar(50) DEFAULT NULL,
  `Start_Location` int(5) NOT NULL,
  PRIMARY KEY (`Team_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Team`
--

INSERT INTO `Team` (`Team_Name`, `Code`, `Progress`, `Longitude`, `Latitude`, `Student`, `Start_Location`) VALUES
('Admin', 'admin_code', 0, '-1.6117829', '54.9810794', 'None', 1),
('Team 1', 'team1_code', 15, '0', '0', 'tommopriceo', 1),
('Team 2', 'team2_code', 2, '0', '0', 'None', 1),
('Team 3', 'team3_code', 0, '0', '0', 'None', 1),
('Team 4', 'team4_code', 0, '0', '0', 'None', 7),
('Team 6', 'team6_code', 0, '-1.6176773', '54.9761783', 'None', 2),
('Team 7', 'team7_code', 0, '0', '0', 'None', 1),
('Team Admin', 'code', 4, '0', '0', 'None', 7),
('team kiddo', 'kiddo', 1, '-1.6089885', '54.9858424', 'kiddo', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Treasure Hunt`
--

CREATE TABLE IF NOT EXISTS `Treasure Hunt` (
  `Treasure_Hunt_Title` varchar(100) NOT NULL DEFAULT '',
  `Location_Count` int(5) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`Treasure_Hunt_Title`),
  UNIQUE KEY `Treasure_Hunt_Title` (`Treasure_Hunt_Title`),
  UNIQUE KEY `Date` (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Treasure Hunt`
--

INSERT INTO `Treasure Hunt` (`Treasure_Hunt_Title`, `Location_Count`, `Date`) VALUES
('dank memes', 4, '2017-05-17'),
('donkey bones', 15, '2017-05-01'),
('moo', 3, '2017-04-30'),
('sunny sunday', 2, '2017-05-24'),
('test null', 1, '2017-05-26'),
('today test', 2, '2017-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `Username` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) DEFAULT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Longitude` varchar(100) DEFAULT NULL,
  `Latitude` varchar(100) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Team_Name` varchar(100) NOT NULL DEFAULT '',
  `Phone_Number` varchar(20) NOT NULL,
  `Email_Address` varchar(100) NOT NULL,
  `Phone_Alert` varchar(10) NOT NULL,
  `Email_Alert` varchar(10) NOT NULL,
  PRIMARY KEY (`Username`,`Team_Name`),
  KEY `Team_Name` (`Team_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Username`, `Password`, `First_Name`, `Last_Name`, `Longitude`, `Latitude`, `Status`, `Team_Name`, `Phone_Number`, `Email_Address`, `Phone_Alert`, `Email_Alert`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '0', '0', 'Inactive', 'Admin', '04629462843', 'randomperson@nothing.com', 'No', 'No'),
('boi69', '9c2f924fb2f7004e7979ab2027ca1d65', 'George', 'Boulton', '0', '0', 'Inactive', 'Team 2', '07501156045', 'georgeboulton10@gmail.com', 'Yes', 'Yes'),
('hello', '5d41402abc4b2a76b9719d911017c592', 'hello', 'hello', '0', '0', 'Inactive', 'Team 4', '12234', 'jah@gmail.com', 'No', 'No'),
('james', 'b4cc344d25a2efe540adbf2678e2304c', 'james', 'james', '0', '0', 'Inactive', 'Team Admin', '04758365826', 'fjcifbr@fivir.com', 'No', 'Yes'),
('kiddo', 'f59c9b4f62149b43e533da96137ba262', 'kid ', 'do', '-1.6089885', '54.9858424', 'Active', 'team kiddo', '07283828282', 'meme@meme.meme', 'No', 'No'),
('test', '098f6bcd4621d373cade4e832627b4f6', 'test', 'test', '0', '0', 'Inactive', 'Team 3', '0246784467', 'test@test.test', 'No', 'Yes'),
('test1', '5a105e8b9d40e1329780d62ea2265d8a', 'test1', 'test1', '0', '0', 'Inactive', 'team 4', '010180180', 'test@test.com', 'No', 'No'),
('tommopriceo', '50c475b94763ae66ff8a7563f03e75cf', 'Tom', 'Price', '0', '0', 'Active', 'Team 1', '07503187344', 'tomprice1000@me.com', 'No', 'No');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Location`
--
ALTER TABLE `Location`
  ADD CONSTRAINT `Location_ibfk_1` FOREIGN KEY (`Treasure_Hunt_Title`) REFERENCES `Treasure Hunt` (`Treasure_Hunt_Title`);

--
-- Constraints for table `User`
--
ALTER TABLE `User`
  ADD CONSTRAINT `User_ibfk_1` FOREIGN KEY (`Team_Name`) REFERENCES `Team` (`Team_Name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
