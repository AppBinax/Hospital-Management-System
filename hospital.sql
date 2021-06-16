-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 16, 2021 at 02:52 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('Sajeeb', 'Sajeeb'),
('admin', 'admin'),
('Shafayat', 'Shafayat'),
('Mansur', 'Mansur');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `dName` varchar(20) NOT NULL,
  `pName` varchar(15) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`dName`, `pName`, `room`) VALUES
('Sajeeb', 'Shafayat Jamil', 987),
('Sifat', 'Sajeeb Shahriar', 806);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`count`, `date`, `id`, `name`, `age`, `gender`, `blood`, `dept`, `phone`, `email`, `status`, `address`, `room`, `username`, `password`) VALUES
(1, '02-04-2018', 'sjb0HMSd1', 'Sifat Islam', 20, 'Male', 'A-', 'Medecine', '+8801757009622', 'sajeeb3g@gmail.com', 'Single', 'Faridpur', 806, 'Sifat', 'Sifat'),
(2, '31-01-2018', 'sjb0HMSd2', 'Mansorol Islam', 32, 'Male', 'A+', 'Dental', '+8801665546776', 'mansu@gmail.com', 'Married', 'Gazipur', 202, 'Mansu', 'Mansu'),
(3, '12-12-2016', 'sjb0HMSd3', 'Nafees Khan', 34, 'Male', 'AB-', 'Neurology', '+8801734253425', 'nafees@gmail.com', 'Divorced', 'Patuakhali', 809, 'Nafees', 'Nafees'),
(4, '21-0802015', 'sjb0HMSd4', 'Shafayat Jamil', 43, 'Male', 'B+', 'Nutrition', '+8801754323454', 'shafayat@gmail.com', 'Single', 'Bogra', 44, 'Shafayat', 'Shafayat'),
(5, '09-08-2017', 'sjb0HMSd4', 'Nusrat Jaman', 23, 'Female', 'O-', 'Gynaecology', '+8801765432187', 'nusrat@gmail.com', 'Single', 'Rajshahi', 909, 'Nusrat', 'Nusrat'),
(6, '06-03-2016', 'sjb0HMSd6', 'Fahad Ali', 37, 'Male', 'B-', 'Cardiology', '+8801754321678', 'fahad@gmail.com', 'Married', 'Kustia', 545, 'Fahad', 'Fahad'),
(7, '05-03-2015', 'sjb0HMSd7', 'Sanjida Sultana', 28, 'Female', 'O+', 'Haematology', '+8801765432134', 'sanjida@gmail.com', 'Married', 'Natore', 23, 'Sanjida', 'Sanjida'),
(8, '21-12-2013', 'sjb0HMSd8', 'Fazle Rabby', 44, 'Male', 'B-', 'Microbiology', '+8801745321376', 'rabby@gmail.com', 'Married', 'Brahmanbaria', 777, 'Rabby', 'Rabby'),
(9, '27-09-2009', 'sjb0HMSd9', 'Marina Naznin', 22, 'Female', 'O+', 'Gynaecology', '+8801756789006', 'marina@gmail.com', 'Single', 'Tangail', 555, 'Marina', 'Marina'),
(12, '12-23-2015', 'sjb0HMSd9', 'Sajeeb Shahriar', 21, 'Male', 'O+', 'Microbiology', '+8801756432156', 'sajeeb@gmail.com', 'Single', 'Rajshahi', 987, 'Sajeeb', 'Sajeeb');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`count`, `date`, `id`, `name`, `age`, `gender`, `address`, `phone`, `status`, `disease`, `room`) VALUES
(2, '08-03-2018', 'sjb0HMS2', 'Sajeeb Shahriar', 20, 'Male', 'Naldanga, Natore', '+8801757009622', 'Single', 'Feaver', 504),
(3, '09-06-2018', 'sjb0HMS3', 'Joy Bhowmik', 21, 'Male', 'Vola', '+8801876543237', 'Single', 'Dengue', 102),
(4, '03-05-2017', 'sjb0HMS4', 'Fahad Mondol', 78, 'Male', 'Kustia', '+8801889765426', 'Married', 'Jondish', 653),
(5, '09-03-2016', 'sjb0HMS5', 'Fazle Rabby', 24, 'Male', 'Brahmanbariya', '+8801765432124', 'Divorced', 'Malaria', 806),
(6, '22-12-2017', 'sjb0HMS6', 'Shafayat Jamil', 27, 'Male', 'Bogra', '+8801722456657', 'Married', 'Tyfoyed', 122),
(8, '22-12-2017', 'sjb0HMS7', 'Nazmus Sakib', 22, 'Male', 'Chadpur', '+8801754678907', 'Single', 'Feaver', 22);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE IF NOT EXISTS `receptionist` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `joining` varchar(15) NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`count`, `joining`, `id`, `name`, `age`, `gender`, `blood`, `email`, `phone`, `address`, `status`, `username`, `password`) VALUES
(3, '23-04-2013', 'sjb0HMSd3', 'Sajeeb Shahriar', 21, 'Male', 'O+', 'sajeeb3g@gmail.com', '+8801757009622', 'Naldanga,Natore', 'Single', 'Sajeeb', 'Sajeeb'),
(4, '23-06-2018', 'sjb0HMSr3', 'Mansorol Islam', 24, 'Male', 'A-', 'mansu@gmail.com', '+8801654321234', 'Gazipur', 'Married', 'Mansu', 'Mansu'),
(6, '12-06-2018', 'sjb0HMSr4', 'Nafees Khan', 24, 'Male', 'AB-', 'nafees@gmail.com', '+8801767575658', 'Patuakhali', 'Single', 'Nafees', 'Nafees'),
(9, '07-12-2018', 'sjb0HMSr7', 'Sifat Khan', 34, 'Male', 'O+', 'sifat@gmail.com', '+8801766565676', 'Faridpur', 'Married', 'Sifat', 'Sifat'),
(10, '23-12-2018', 'sjb0HMSr9', 'Shafayat Jamil', 44, 'Male', 'AB-', 'shafayat@gmail.com', '+88017654323', 'Bogra', 'Single', 'Shafayat', 'Shafayat');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `a` varchar(11) NOT NULL,
  `b` varchar(11) NOT NULL,
  `c` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`a`, `b`, `c`) VALUES
('5', '6', '6'),
('1', '2', '4'),
('gfhf', 'fv', 'hf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
