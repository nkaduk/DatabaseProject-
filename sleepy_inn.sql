-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 11:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sleepy inn`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking information`
--

CREATE TABLE `booking information` (
  `Hotel-Room ID` int(11) NOT NULL,
  `Account_ID` varchar(30) NOT NULL,
  `Hotel ID` int(11) NOT NULL,
  `Date Booked` date NOT NULL,
  `Checked-In` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Account_ID` varchar(30) NOT NULL,
  `First Name` varchar(30) NOT NULL,
  `Last Name` varchar(30) NOT NULL,
  `Middle Initial(s)` varchar(10) NOT NULL,
  `Membership Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer contact and billing`
--

CREATE TABLE `customer contact and billing` (
  `Account_ID` varchar(30) NOT NULL,
  `Last Name` varchar(30) NOT NULL,
  `Phone Number 1` int(11) NOT NULL,
  `Phone Number 2` int(11) NOT NULL,
  `Phone Number 3` int(11) NOT NULL,
  `Email 1` varchar(30) NOT NULL,
  `Email 2` varchar(30) NOT NULL,
  `Email 3` varchar(30) NOT NULL,
  `Card Number 1` int(11) NOT NULL,
  `Card Number 2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee information`
--

CREATE TABLE `employee information` (
  `SSN` varchar(15) NOT NULL,
  `Hours Worked` varchar(30) NOT NULL,
  `Days Worked` varchar(30) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Position Type` varchar(30) NOT NULL,
  `Salary` varchar(15) NOT NULL,
  `Total Months Worked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee information`
--

INSERT INTO `employee information` (`SSN`, `Hours Worked`, `Days Worked`, `Hotel_ID`, `Position Type`, `Salary`, `Total Months Worked`) VALUES
('453-90-4532', '5:00 am - 6:00 pm', 'MON WED FRI SUN', 1001, 'Front Desk', '$40,000', 3),
('697-90-5766', '10:00 am - 2:pm', 'All Days', 1001, 'Cleaner', '$30,000', 5),
('775-98-7715', '6:00 pm - 2:00 am', 'All Days', 1001, 'Front Desk', '$40,000', 16),
('878-94-3675', '6:30 pm - 12:00 am', 'All Days', 1001, 'Manager', '$50,000', 34),
('879-00-5428', '5:00 am - 6:00 pm', 'TUE THU SAT', 1001, 'Front Desk', '$45,000', 34),
('945-67-3401', '2:00 - 5:00 am', 'All Days', 1001, 'Front Desk', '$35,000', 6);

-- --------------------------------------------------------

--
-- Table structure for table `employee name`
--

CREATE TABLE `employee name` (
  `SSN` varchar(15) NOT NULL,
  `First Name` varchar(30) NOT NULL,
  `Last Name` varchar(30) NOT NULL,
  `Middle Initial(s)` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee name`
--

INSERT INTO `employee name` (`SSN`, `First Name`, `Last Name`, `Middle Initial(s)`) VALUES
('453-90-4532', 'Janis', 'Ian', ''),
('879-00-5428', 'Leslie', 'Gore', ''),
('945-67-3401', 'Vadal', 'Sasoon', ''),
('697-90-5766', 'Owen', 'Rodgers', ''),
('775-98-7715', 'Curtis', 'Mayfield', 'Y'),
('878-94-3675', 'Donna', 'Everdeen', 'PH');

-- --------------------------------------------------------

--
-- Table structure for table `game room`
--

CREATE TABLE `game room` (
  `Hotel_ID` int(11) NOT NULL,
  `Open Time` varchar(10) NOT NULL,
  `Closing Time` varchar(10) NOT NULL,
  `Age Limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel amenities`
--

CREATE TABLE `hotel amenities` (
  `Hotel_ID` int(11) NOT NULL,
  `Pool` varchar(3) NOT NULL,
  `Workout Room` varchar(3) NOT NULL,
  `Game Room` varchar(3) NOT NULL,
  `Allows Pets` varchar(3) NOT NULL,
  `WiFi` varchar(3) NOT NULL,
  `AC` varchar(3) NOT NULL,
  `Heating` varchar(3) NOT NULL,
  `Complimentary Breakfast` varchar(3) NOT NULL,
  `Check Out Time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel amenities`
--

INSERT INTO `hotel amenities` (`Hotel_ID`, `Pool`, `Workout Room`, `Game Room`, `Allows Pets`, `WiFi`, `AC`, `Heating`, `Complimentary Breakfast`, `Check Out Time`) VALUES
(1001, 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', '0000-00-00'),
(1002, 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', '8:00 am'),
(1003, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '11:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `hotel information`
--

CREATE TABLE `hotel information` (
  `Hotel ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Total Rooms` int(11) NOT NULL,
  `Vacant  Rooms` int(11) NOT NULL,
  `Number of Employees` int(11) NOT NULL,
  `Maintenace Cost` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel information`
--

INSERT INTO `hotel information` (`Hotel ID`, `Name`, `Total Rooms`, `Vacant  Rooms`, `Number of Employees`, `Maintenace Cost`) VALUES
(1001, 'Sleepy Inn near Highway 89', 17, 14, 7, '$300,000'),
(1002, 'Sleepy Inn of Washington DC', 75, 41, 25, '$1,200,000'),
(1003, 'Sleepy Inn: The Loft', 132, 34, 84, '$4,500,000');

-- --------------------------------------------------------

--
-- Table structure for table `hotel location`
--

CREATE TABLE `hotel location` (
  `Name` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `Zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel location`
--

INSERT INTO `hotel location` (`Name`, `City`, `State`, `Street`, `Zip`) VALUES
('Sleepy Inn near Highway 89', 'Youngstown', 'Michigan', '65 Turnover st.', 14342),
('Sleepy Inn of Washington DC', 'Washington DC', 'Maryland', '154 Gregory Av.', 34781),
('Sleepy Inn: The Loft', 'San Francisco', 'California', '613 Iris Blvd.', 87534);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `SSN` varchar(30) NOT NULL,
  `First Name` varchar(30) NOT NULL,
  `Last Name` varchar(30) NOT NULL,
  `Middle Initial(s)` varchar(10) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Days Worked` varchar(30) NOT NULL,
  `Time Worked` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`SSN`, `First Name`, `Last Name`, `Middle Initial(s)`, `Hotel_ID`, `Days Worked`, `Time Worked`) VALUES
('878-94-3675', 'Donna', 'Everdeen', 'PH', 1001, 'All Days', '6:30 pm - 12:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `pool`
--

CREATE TABLE `pool` (
  `Hotel_ID` int(11) NOT NULL,
  `Open Time` varchar(10) NOT NULL,
  `Closing Time` varchar(10) NOT NULL,
  `Age Limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room availability`
--

CREATE TABLE `room availability` (
  `Room-Hotel ID` varchar(30) NOT NULL,
  `Room Type` varchar(30) NOT NULL,
  `Availability` varchar(30) NOT NULL,
  `Room Number` int(11) NOT NULL,
  `# of Beds` int(11) NOT NULL,
  `Extra Amenities` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room availability`
--

INSERT INTO `room availability` (`Room-Hotel ID`, `Room Type`, `Availability`, `Room Number`, `# of Beds`, `Extra Amenities`) VALUES
('1-1001', 'Single', 'Available ', 1, 1, ''),
('1-1002', 'Single', 'Available ', 1, 1, ''),
('10-1001', 'Deluxe Single', 'Available ', 10, 1, ''),
('11-1001', 'Double', 'Available ', 11, 2, ''),
('12-1001', 'Double', 'Available ', 12, 2, ''),
('13-1001', 'Double', 'Occupied', 13, 2, ''),
('14-1001', 'Double', 'Available ', 14, 2, ''),
('15-1001', 'Double', 'Available ', 15, 2, ''),
('16-1001', 'Deluxe Double', 'Occupied', 16, 2, ''),
('17-1001', 'Deluxe Double', 'Available ', 17, 2, ''),
('2-1001', 'Single', 'Available ', 2, 1, ''),
('3-1001', 'Single', 'Occupied', 3, 1, ''),
('4-1001', 'Single', 'Available ', 4, 1, ''),
('5-1001', 'Single', 'Available ', 5, 1, ''),
('6-1001', 'Single', 'Available ', 6, 1, ''),
('7-1001', 'Single', 'Available ', 7, 1, ''),
('8-1001', 'Single', 'Available ', 8, 1, ''),
('9-1001', 'Deluxe Single', 'Available ', 9, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `Room-Hotel ID` varchar(30) NOT NULL,
  `Room number` int(11) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Booked` char(1) NOT NULL,
  `Clean` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Room-Hotel ID`, `Room number`, `Hotel_ID`, `Booked`, `Clean`) VALUES
('1-1001', 1, 1001, 'N', 'Y'),
('1-1002', 1, 1002, 'N', 'Y'),
('10-1001', 10, 1001, 'N', 'Y'),
('11-1001', 11, 1001, 'N', 'Y'),
('12-1001', 12, 1001, 'N', 'Y'),
('13-1001', 13, 1001, 'Y', 'Y'),
('14-1001', 14, 1001, 'N', 'Y'),
('15-1001', 15, 1001, 'N', 'Y'),
('16-1001', 16, 1001, 'Y', 'Y'),
('17-1001', 17, 1001, 'N', 'Y'),
('2-1001', 2, 1001, 'Y', 'Y'),
('3-1001', 3, 1001, 'Y', 'Y'),
('4-1001', 4, 1001, 'N', 'N'),
('5-1001', 5, 1001, 'N', 'Y'),
('6-1001', 6, 1001, 'N', 'Y'),
('7-1001', 7, 1001, 'N', 'Y'),
('8-1001', 8, 1001, 'N', 'Y'),
('9-1001', 9, 1001, 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `workout room`
--

CREATE TABLE `workout room` (
  `Hotel_ID` int(11) NOT NULL,
  `Open Time` varchar(10) NOT NULL,
  `Closing` varchar(10) NOT NULL,
  `Age Limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `customer contact and billing`
--
ALTER TABLE `customer contact and billing`
  ADD PRIMARY KEY (`Account_ID`);

--
-- Indexes for table `employee information`
--
ALTER TABLE `employee information`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `hotel amenities`
--
ALTER TABLE `hotel amenities`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `hotel location`
--
ALTER TABLE `hotel location`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `room availability`
--
ALTER TABLE `room availability`
  ADD PRIMARY KEY (`Room-Hotel ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room-Hotel ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
