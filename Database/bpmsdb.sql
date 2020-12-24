-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 07:30 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(11) NOT NULL,
  `visitor_name` varchar(11) NOT NULL,
  `visitor_email` varchar(25) NOT NULL,
  `email_title` varchar(25) NOT NULL,
  `concerned_department` varchar(25) NOT NULL,
  `visitor_message` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `visitor_name`, `visitor_email`, `email_title`, `concerned_department`, `visitor_message`) VALUES
(1, '0', 'sdfg@gmail.com', 'sddasdasdasdasdasdasdsdas', 'Makeup', ''),
(2, 'lubna', 'slubng@gmail.com', 'jfllvbvcb', 'Hair', ''),
(3, 'rupok', 'rupok@gmail.com', 'pass reset', 'Nail', 'reset prblm'),
(4, 'rupo', 'rupo@gmail.com', 'pass reset', 'Nail', 'reset prblm'),
(5, 'lubna', 'rupok@gmail.com', 'jfllvbvcb', 'Nail', 'fvbdgjd');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `remark` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'mahmuda akter lubna', 'admin', 1623522998, 'tester1@gmail.com', '123456', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '261064124', 'Komal', 'komal@gmail.com', 7798797897, '7/27/2019', '4:00pm', '1', '2019-07-26 04:48:25', 'Accepted', '1', '2019-07-26 06:41:16'),
(2, '985645887', 'Kashish', 'Kash@gmail.com', 4654654654, '7/29/2019', '4:30pm', 'Deluxe Pedicure', '2019-07-26 05:04:38', 'Rejected', '2', '2019-07-26 06:47:04'),
(3, '965887988', 'Sanjeeta Jain', 'sna@gmail.com', 5646464646, '8/20/2019', '2:30pm', 'Loreal Hair Color(Full)', '2019-08-19 12:35:30', 'we will wait', '1', '2019-08-19 13:37:39'),
(4, '578797544', 'Anuj Kumar', 'phpgurukulofficial@gmail.com', 123456789, '8/30/2019', '1:30am', 'Test', '2019-08-21 16:13:13', '', '', '0000-00-00 00:00:00'),
(5, '899118550', 'bb', 'bgfdh@fdfdsf.com', 4234235423, '8/27/2019', '1:30am', 'Loreal Hair Color(Full)', '2019-08-21 16:14:14', '', '', '0000-00-00 00:00:00'),
(6, '621107928', 'ABC', 'abc@gmail.com', 1234567890, '8/27/2019', '1:30am', 'Rebonding', '2019-08-21 16:22:25', 'Testing', '2', '2019-08-21 16:24:10'),
(7, '169863061', 'Lubna moni', 'lubnamahmuda3030@gmail.com', 162352299, '12/23/2020', '12:30am', 'Normal Pedicure', '2020-12-03 05:19:43', '', '', '0000-00-00 00:00:00'),
(8, '661055639', 'Lubna moni', 'lubnamahmuda3030@gmail.com', 162352299, '12/22/2020', '12:30am', 'Charcol Facial', '2020-12-10 17:30:23', '', '', '0000-00-00 00:00:00'),
(9, '825736906', 'Lubna moni', 'mahmuda35-551@diu.edu.bd', 162352267, '12/8/2020', '1:00am', 'Rebonding', '2020-12-10 20:09:21', '', '', '0000-00-00 00:00:00'),
(10, '728266212', 'cfhgfvk', 'Lubna.swe@gmail.com', 162352299, '12/22/2020', '12:30am', 'Loreal Hair Color(Full)', '2020-12-21 05:55:25', '', '', '0000-00-00 00:00:00'),
(11, '824642883', 'Lubna moni', 'mahmuda35-551@diu.edu.bd', 162352269, '12/24/2020', '1:30am', 'Test', '2020-12-21 06:29:51', '', '', '0000-00-00 00:00:00'),
(12, '586657627', 'cvbnm,.', 'adfk@GMAIL.com', 162352299, '12/28/2020', '12:00am', 'Charcol Facial', '2020-12-21 16:07:07', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Sunita Verma', 'verma@gmail.com', 5546464646, 'Transgender', 'Taking Hair Spa', '2019-07-26 11:09:10', '2019-07-31 15:15:54'),
(2, 'Rahul Singh', 'singh@gmail.com', 5565565656, 'Male', 'Taken haircut by him', '2019-07-26 11:10:02', NULL),
(3, 'Khusbu', 'saini@gmail.com', 4646445464, 'Transgender', 'khjhhkjkjkuhj', '2019-07-26 11:10:28', NULL),
(4, 'Sanjeeta Jain', 'san@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2019-08-19 13:38:58', NULL),
(5, 'Test user', 'testuser@gmail.com', 1234567890, 'Female', 'Test', '2019-08-21 16:24:53', '2019-08-21 16:25:11'),
(6, 'NA', 'NA@gmail.com', 136098765, 'Female', 'mnfkhfj', '2020-12-21 15:08:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 2, 621839533, '2018-07-30 15:33:22'),
(2, 2, 5, 621839533, '2019-06-04 15:33:22'),
(3, 2, 6, 621839533, '2019-07-30 15:33:22'),
(4, 2, 7, 621839533, '2019-07-30 15:33:22'),
(5, 1, 1, 904156433, '2019-07-30 15:40:42'),
(6, 1, 2, 904156433, '2019-07-30 15:40:42'),
(7, 1, 3, 904156433, '2019-07-30 15:40:42'),
(8, 1, 4, 904156433, '2019-07-30 15:40:42'),
(9, 3, 1, 225057023, '2019-07-30 16:03:32'),
(10, 3, 8, 225057023, '2019-07-30 16:03:32'),
(11, 3, 1, 970548035, '2019-07-31 04:42:45'),
(12, 3, 6, 970548035, '2019-07-31 04:42:45'),
(13, 3, 9, 970548035, '2019-07-31 04:42:45'),
(14, 4, 2, 942476283, '2019-08-19 13:39:13'),
(15, 4, 12, 942476283, '2019-08-19 13:39:13'),
(16, 5, 3, 297018570, '2019-08-21 16:25:27'),
(17, 5, 4, 297018570, '2019-08-21 16:25:27'),
(18, 5, 8, 297018570, '2019-08-21 16:25:27'),
(19, 5, 12, 162828482, '2020-12-21 18:08:49'),
(20, 6, 1, 164130640, '2020-12-21 18:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '                                                companigonj,muradnagar,comilla', 'lubnamahmuda3030@gmail.com', 1623522998, NULL, '24 hours open ');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 1200, '2019-07-25 11:22:38'),
(2, 'Fruit Facial', 500, '2019-07-25 11:22:53'),
(3, 'Charcol Facial', 1000, '2019-07-25 11:23:10'),
(4, 'Deluxe Menicure', 500, '2019-07-25 11:23:34'),
(5, 'Deluxe Pedicure', 600, '2019-07-25 11:23:47'),
(6, 'Normal Menicure', 300, '2019-07-25 11:24:01'),
(7, 'Normal Pedicure', 400, '2019-07-25 11:24:19'),
(8, 'U-Shape Hair Cut', 250, '2019-07-25 11:24:38'),
(9, 'Layer Haircut', 550, '2019-07-25 11:24:53'),
(10, 'Rebonding', 3999, '2019-07-25 11:25:08'),
(11, 'Loreal Hair Color(Full)', 1200, '2019-07-25 11:25:35'),
(12, 'Body Spa', 1500, '2019-08-19 13:36:27'),
(14, 'Test', 100, '2019-08-21 15:45:50'),
(15, 'ABC', 200, '2019-08-21 16:23:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
