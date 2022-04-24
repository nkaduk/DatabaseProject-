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
-- Database: `sleepy_inn`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking information`
--

CREATE TABLE `booking_information` (
  `Hotel_Room_ID` int(11) NOT NULL,
  `Account_ID` varchar(30) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Date_Booked` date NOT NULL,
  `Checked_In` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `booking_information` (`Hotel_Room_ID`, `Account_ID`, `Hotel_ID`, `Date_Booked`,`Checked_In`) VALUES
('13-001', '88a', '001', '07/10/23', 'N'),
('16-001', '167y', '001', '08/11/20', 'Y');


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Account_ID` varchar(30) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Membership_Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customer` (`Account_ID`, `First_Name`, `Last_Name`, `Membership_Type`) VALUES
('298762', 'Lilly', 'Peterson', 'None'),
('3124', 'Mark', 'Hessner', 'None'),
('8723', 'Bobby', 'Randal', 'Gold'),
('88a', 'Gwen', 'Sau', 'Standard'),
('167y', 'Opera', 'Reinfield', 'Gold'),
('134', 'Johnathan', 'Lovelace', 'Platnium');

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Table structure for table `employee information`
--

CREATE TABLE `employee_information` (
  `SSN` varchar(15) NOT NULL,
  `Hours_Worked` varchar(30) NOT NULL,
  `Days_Worked` varchar(30) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Position_Type` varchar(30) NOT NULL,
  `Salary` varchar(15) NOT NULL,
  `Total_Months_Worked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee information`
--

INSERT INTO `employee_information` (`SSN`, `Hours_Worked`, `Days_Worked`, `Hotel_ID`, `Position_Type`, `Salary`, `Total_Months_Worked`) VALUES
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

CREATE TABLE `employee_name` (
  `SSN` varchar(15) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Middle_Initial(s)` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee name`
--

INSERT INTO `employee_name` (`SSN`, `First_Name`, `Last_Name`, `Middle_Initial(s)`) VALUES
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

CREATE TABLE `game_room` (
  `Hotel_ID` int(11) NOT NULL,
  `Open Time` varchar(10) NOT NULL,
  `Closing Time` varchar(10) NOT NULL,
  `Age Limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotel amenities`
--

CREATE TABLE `hotel_amenities` (
  `Hotel_ID` int(11) NOT NULL,
  `Pool` varchar(3) NOT NULL,
  `Workout_Room` varchar(3) NOT NULL,
  `Game_Room` varchar(3) NOT NULL,
  `Allows_Pets` varchar(3) NOT NULL,
  `WiFi` varchar(3) NOT NULL,
  `AC` varchar(3) NOT NULL,
  `Heating` varchar(3) NOT NULL,
  `Complimentary_Breakfast` varchar(3) NOT NULL,
  `Check_Out_Time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel amenities`
--

INSERT INTO `hotel_amenities` (`Hotel_ID`, `Pool`, `Workout_Room`, `Game_Room`, `Allows_Pets`, `WiFi`, `AC`, `Heating`, `Complimentary_Breakfast`, `Check_Out_Time`) VALUES
(1001, 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', '0000-00-00'),
(1002, 'Y', 'Y', 'N', 'N', 'Y', 'Y', 'Y', 'Y', '8:00 am'),
(1003, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '11:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `hotel information`
--

CREATE TABLE `hotel_information` (
  `Hotel_ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Total_Rooms` int(11) NOT NULL,
  `Vacant_Rooms` int(11) NOT NULL,
  `Number_of_Employees` int(11) NOT NULL,
  `Maintenace_Cost` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel information`
--

INSERT INTO `hotel_information` (`Hotel_ID`, `Name`, `Total_Rooms`, `Vacant_Rooms`, `Number_of_Employees`, `Maintenace_Cost`) VALUES
(1001, 'Sleepy Inn near Highway 89', 17, 14, 7, '$300,000'),
(1002, 'Sleepy Inn of Washington DC', 75, 41, 25, '$1,200,000'),
(1003, 'Sleepy Inn: The Loft', 132, 34, 84, '$4,500,000');

-- --------------------------------------------------------

--
-- Table structure for table `hotel location`
--

CREATE TABLE `hotel_location` (
  `Name` varchar(50) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(15) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `Zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel location`
--

INSERT INTO `hotel_location` (`Name`, `City`, `State`, `Street`, `Zip`) VALUES
('Sleepy Inn near Highway 89', 'Youngstown', 'Michigan', '65 Turnover st.', 14342),
('Sleepy Inn of Washington DC', 'Washington DC', 'Maryland', '154 Gregory Av.', 34781),
('Sleepy Inn: The Loft', 'San Francisco', 'California', '613 Iris Blvd.', 87534);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `SSN` varchar(30) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Middle_Initial(s)` varchar(10) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Days_Worked` varchar(30) NOT NULL,
  `Time_Worked` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`SSN`, `First_Name`, `Last_Name`, `Middle_Initial(s)`, `Hotel_ID`, `Days_Worked`, `Time_Worked`) VALUES
('878-94-3675', 'Donna', 'Everdeen', 'PH', 1001, 'All Days', '6:30 pm - 12:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `pool`
--

CREATE TABLE `pool` (
  `Hotel_ID` int(11) NOT NULL,
  `Open_Time` varchar(10) NOT NULL,
  `Closing_Time` varchar(10) NOT NULL,
  `Age_Limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room availability`
--

CREATE TABLE `room_availability` (
  `Room_Hotel_ID` varchar(30) NOT NULL,
  `Room_Type` varchar(30) NOT NULL,
  `Availability` varchar(30) NOT NULL,
  `Room_Number` int(11) NOT NULL,
  `Num_of_Beds` int(11) NOT NULL,
  `Extra_Amenities` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room availability`
--

INSERT INTO `room_availability` (`Room_Hotel_ID`, `Room_Type`, `Availability`, `Room_Number`, `Num_of_Beds`, `Extra_Amenities`) VALUES
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
  `Room_Hotel_ID` varchar(30) NOT NULL,
  `Room_number` int(11) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Booked` char(1) NOT NULL,
  `Clean` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`Room_Hotel_ID`, `Room_number`, `Hotel_ID`, `Booked`, `Clean`) VALUES
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

CREATE TABLE `workout_room` (
  `Hotel_ID` int(11) NOT NULL,
  `Open_Time` varchar(10) NOT NULL,
  `Closing` varchar(10) NOT NULL,
  `Age_Limit` int(11) NOT NULL
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
--
-- Indexes for table `employee information`
--
ALTER TABLE `employee_information`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `hotel amenities`
--
ALTER TABLE `hotel_amenities`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `hotel location`
--
ALTER TABLE `hotel_location`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `room availability`
--
ALTER TABLE `room_availability`
  ADD PRIMARY KEY (`Room_Hotel_ID`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`Room_Hotel_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
