-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 03:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buspassdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234567891, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-04-14 06:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(13, 'NBSTC', '2023-04-29 13:13:39'),
(14, 'SBSTC', '2023-04-29 13:13:44'),
(15, 'Shyamoli Paribahan', '2023-04-29 13:14:06'),
(16, 'Local Routes', '2023-04-29 13:14:12'),
(17, 'Chartered', '2023-04-29 13:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(1, 'Kiran', 'kran@gmail.com', 'cost of volvo place pritampura to dwarka', '2021-07-05 07:26:24', 1),
(2, 'Anuj', 'AKKK@GMAIL.COM', 'This is for testing.', '2021-07-11 08:55:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\"><b>Doyal Baba Bus Services is the leading bus service in West Bengal. Founded by Doyal Baba in 1256, this bus services has a long history of serving the people since before the British Era. It is reported that famous personalities like Sadhok Ramprasad Sen, Bama Khyapa, Dr. Banuchondro Bhoggo, Dogeshwar Kumar Doggo and Hogo Pogo used to travel. Some of the buses are known to cross light speed when the traffic signal turns red. Safety is not our cup of tea and we don\'t care about it. Come, enjoy your accident with us.</b></span></font><br>', NULL, NULL, '2023-04-29 13:22:01'),
(2, 'contactus', 'Contact Us', '                1/1 Bablagachi Street, Bhoduchandra Lane, South Seroaphuli, Beside Hooghly, West Bengal', 'doyalbababus@gmail.com', 4654789799, '2023-04-29 13:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpass`
--

CREATE TABLE `tblpass` (
  `ID` int(10) NOT NULL,
  `PassNumber` varchar(200) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `ProfileImage` varchar(200) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `IdentityCardno` varchar(200) DEFAULT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Source` varchar(200) DEFAULT NULL,
  `Destination` varchar(200) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `PasscreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpass`
--

INSERT INTO `tblpass` (`ID`, `PassNumber`, `FullName`, `ProfileImage`, `ContactNumber`, `Email`, `IdentityType`, `IdentityCardno`, `Category`, `Source`, `Destination`, `FromDate`, `ToDate`, `Cost`, `PasscreationDate`) VALUES
(1, '286529906', 'Yogesh Kumar', '779b7513263ef185b6d094af290ef5401625471444.png', 4654464646, 'yogi@gmail.com', 'PAN Card', 'AD-122346', 'NBSTC', NULL, NULL, '2020-04-14', '2020-05-14', '900', '2020-04-14 11:47:03'),
(2, '915773340', 'Bhola Kumar', '779b7513263ef185b6d094af290ef5401625471444.png', 9879878978, 'bhola@gmail.com', 'PAN Card', 'KTI-896567', 'Shyamoli Paribahan', NULL, NULL, '2023-02-02', '2024-10-30', '500', '2020-04-13 11:50:15'),
(3, '884595667', 'Anushka Kumari', '779b7513263ef185b6d094af290ef5401625471444.png', 1234567890, 'anushka@gmail.com', 'Voter Card', '5235252', 'Delux Bus', NULL, NULL, '2023-04-16', '2024-04-19', '600', '2020-04-16 02:38:27'),
(4, '210712236', 'Abir Singh', 'e76de47f621d84adbab3266e3239baee1625460898.png', 4654646546, 'abir@gmail.com', 'Voter Card', '5646465', 'Non AC Bus', 'abc', 'dbc', '2021-07-05', '2021-07-16', '900', '2021-07-04 15:01:38'),
(5, '474965545', 'Augustya', '779b7513263ef185b6d094af290ef5401625471444.png', 6546465464, 'aug@gmail.com', 'Student Card', '789456', 'Delux Bus', 'Delhi', 'Meerut', '2021-07-05', '2021-07-31', '1800', '2021-07-05 07:50:44'),
(6, '681924385', 'Anuj kumar', 'ea3dc39ca0b2f6b5f17abddec1f0e9a41625993624.png', 1234569870, 'ak@test.com', 'Driving License', 'GGGGGGHGH2423423432', 'Delux Bus', 'Laxmi Nagar', 'Central Secretariat', '2021-07-15', '2021-07-30', '500', '2021-07-11 08:53:44'),
(7, '667052767', 'Markus', '697ae85c433317cdbb859cc1ea3ebe8b1682774303.png', 7980154056, 'markus@gmail.com', 'Passport', 'IND-102336', 'NBSTC', 'Kolkata', 'Malda', '2023-04-29', '2023-04-29', '1200', '2023-04-29 13:18:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpass`
--
ALTER TABLE `tblpass`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpass`
--
ALTER TABLE `tblpass`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
