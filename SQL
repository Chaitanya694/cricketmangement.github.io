-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2023 at 01:57 PM
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
-- Database: `cricinfo1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Name` text NOT NULL,
  `Admin_id` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `Admin_id`, `email`, `password`) VALUES
('Shravan', 'SRH123', 'shravan@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `batsman`
--

CREATE TABLE `batsman` (
  `P_ID` int(11) NOT NULL,
  `P_NAME` varchar(20) DEFAULT NULL,
  `MATCHES` int(11) DEFAULT NULL,
  `RUNS` int(11) DEFAULT NULL,
  `AVG` float DEFAULT NULL,
  `ST_RATE` float DEFAULT NULL,
  `FIFTIES` int(11) DEFAULT NULL,
  `HUNDREDS` int(11) DEFAULT NULL,
  `BEST` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `batsman`
--

INSERT INTO `batsman` (`P_ID`, `P_NAME`, `MATCHES`, `RUNS`, `AVG`, `ST_RATE`, `FIFTIES`, `HUNDREDS`, `BEST`) VALUES
(100, 'ROHITH SHARMA', 237, 9554, 40.3122, 89.62, 47, 29, 264),
(101, 'VIRAT KOHLI', 267, 12588, 47.1461, 93.22, 64, 45, 183),
(102, 'MS DHONI', 350, 10773, 30.78, 87.56, 73, 10, 183),
(103, 'SANJU SAMSON', 11, 330, 30, 104.76, 2, 0, 86),
(104, 'SURYAKUMAR YADAV', 16, 384, 24, 100.52, 2, 0, 64),
(110, 'MICHEAL HUSSEY', 185, 5442, 29.4162, 87.16, 39, 3, 109),
(112, 'STEVE SMITH', 139, 4917, 35.3741, 87.65, 29, 12, 164),
(113, 'CAMERON GREEN', 13, 290, 22.3077, 90.34, 1, 0, 89),
(114, 'AARON FINCH', 146, 5406, 37.0274, 87.72, 30, 17, 153),
(115, 'MATHEW HAYDEN', 161, 6133, 38.0932, 78.96, 36, 10, 181),
(121, 'KANE WILLIAMSON', 161, 6555, 40.7143, 80.99, 42, 13, 148),
(122, 'COREY ANDERSON', 49, 1109, 22.6327, 108.73, 4, 1, 131),
(123, 'BRENDON MUCCLUM', 260, 6083, 23.3962, 96.37, 32, 5, 166),
(124, 'DEVON CONWAY', 15, 578, 38.5333, 80.84, 3, 2, 126),
(125, 'MARTIN GUPTILL', 198, 7346, 37.101, 87.81, 39, 18, 237),
(130, 'JOE ROOT', 158, 6207, 39.2848, 86.83, 36, 16, 133),
(131, 'JOHNNY BAIRSTOW', 95, 3634, 38.2526, 104.13, 15, 11, 141),
(132, 'ALEX HALES', 70, 2419, 34.5571, 96.73, 14, 6, 171),
(133, 'JOS BUTTLER', 159, 4275, 26.8868, 119.05, 22, 10, 162),
(134, 'BEN STOKES', 105, 2924, 27.8476, 95.09, 21, 3, 102);

-- --------------------------------------------------------

--
-- Table structure for table `bowler`
--

CREATE TABLE `bowler` (
  `P_ID` int(11) NOT NULL,
  `P_NAME` varchar(20) DEFAULT NULL,
  `MATCHES1` int(11) DEFAULT NULL,
  `WICKETS` int(11) DEFAULT NULL,
  `ECONOMY` float DEFAULT NULL,
  `AVERAGE` float DEFAULT NULL,
  `ST_RATES` float DEFAULT NULL,
  `BEST_FIG` varchar(20) DEFAULT NULL,
  `FIVE_WH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bowler`
--

INSERT INTO `bowler` (`P_ID`, `P_NAME`, `MATCHES1`, `WICKETS`, `ECONOMY`, `AVERAGE`, `ST_RATES`, `BEST_FIG`, `FIVE_WH`) VALUES
(105, 'HARSHAL PATEL', 25, 29, 7.86, 1.16, 56.25, '4-25\n', 0),
(106, 'RAVINDRA JADEJA', 171, 189, 4.92, 1.10526, 52.87, '5-36', 1),
(107, 'YUZUVENDRA CHAHAL', 71, 119, 5.26, 1.67606, 44.76, '6-42', 2),
(108, 'JASPRIT BUMRAH', 72, 121, 4.64, 1.68056, 31.8, '6-19', 2),
(109, 'M SIRAJ', 18, 29, 4.85, 1.61111, 46.34, '3-29', 0),
(111, 'MITCHELL STARC', 107, 211, 5.08, 1.97196, 31.8, '6-28', 8),
(116, 'PAT CUMMINS', 75, 124, 5.22, 1.65333, 49.67, '5-70', 1),
(117, 'MITCHELL JOHNSON', 153, 239, 4.84, 1.56209, 50.46, '6-31', 3),
(118, 'ADAM ZAMPA', 76, 127, 5.44, 1.67105, 48.26, '5-35', 1),
(119, 'JOSH HAZLEWOOD', 69, 108, 4.58, 1.56522, 51.32, '6-52', 3),
(120, 'TRENT BOULT', 99, 187, 4.93, 1.88889, 34.6, '7-34', 5),
(126, 'ISH SODI', 39, 51, 5.43, 1.30769, 52.56, '4-58', 0),
(127, 'TIM SOUTHEE', 154, 210, 5.44, 1.36364, 48.76, '7-33', 3),
(128, 'MITCHELL SANTNER', 90, 88, 4.84, 0.977778, 58.32, '5-50', 1),
(129, 'LOCKIE FERGUSON', 50, 84, 5.65, 1.68, 39.67, '5-45', 1),
(135, 'JOFRA ARCHER', 17, 30, 4.74, 1.76471, 38.6, '3-27', 0),
(136, 'SAM CURRAN', 18, 16, 5.98, 0.888889, 59.94, '5-48', 1),
(137, 'MARK WOOD', 57, 69, 5.46, 1.21053, 49.66, '4-33', 0),
(138, 'ADIL RASHID', 119, 169, 5.64, 1.42017, 40.44, '5-27', 2),
(139, 'JAMES ANDERSON', 194, 269, 4.92, 1.3866, 42.12, '5-23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `C_NO` int(11) DEFAULT NULL,
  `C_NAME` varchar(20) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `COUNTRY` varchar(20) DEFAULT NULL,
  `ACHIEVEMENTS` varchar(20) DEFAULT NULL,
  `N_ID` int(11) DEFAULT NULL,
  `T_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`C_NO`, `C_NAME`, `AGE`, `COUNTRY`, `ACHIEVEMENTS`, `N_ID`, `T_ID`) VALUES
(501, 'RICKY PONTING', 48, 'AUSTRALLIA', 'WORLD CUP', 2, 202),
(502, 'RAHUL DRAVID', 49, 'INDIA', 'ASIA CUP', 1, 203),
(503, 'STEPHEN FLEMING', 49, 'NEWZEALAND', 'IPL', 3, 204),
(504, 'ROBIN SINGH', 59, 'INDIA', 'IPL', 1, 201);

-- --------------------------------------------------------

--
-- Table structure for table `franchise`
--

CREATE TABLE `franchise` (
  `F_ID` int(11) NOT NULL,
  `TEAM_NAME` varchar(35) DEFAULT NULL,
  `TEAM_CAPTAIN` varchar(20) DEFAULT NULL,
  `MATCHESF` int(11) DEFAULT NULL,
  `WINSF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `franchise`
--

INSERT INTO `franchise` (`F_ID`, `TEAM_NAME`, `TEAM_CAPTAIN`, `MATCHESF`, `WINSF`) VALUES
(201, 'MUMBAI INDIANS', 'ROHIT SHARMA', 231, 129),
(202, 'ROYAL CHALLENGERS BANGALORE', 'VIRAT KOHLI', 227, 107),
(203, 'RAJASTHAN ROYALS', 'JOS BUTTLER', 192, 94),
(204, 'CHENNAI SUPER KINGS', 'MS DHONI', 209, 121);

-- --------------------------------------------------------

--
-- Table structure for table `nat_team`
--

CREATE TABLE `nat_team` (
  `N_ID` int(11) NOT NULL,
  `NATION` varchar(20) DEFAULT NULL,
  `NAT_CAPTAIN` varchar(20) DEFAULT NULL,
  `MATCHESN` int(11) DEFAULT NULL,
  `WINS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nat_team`
--

INSERT INTO `nat_team` (`N_ID`, `NATION`, `NAT_CAPTAIN`, `MATCHESN`, `WINS`) VALUES
(1, 'INDIA', 'ROHITH SHARMA', 193, 123),
(2, 'AUSTRALLIA', 'STEVE SMITH', 174, 91),
(3, 'NEWZEALAND', 'KANE WILLIAMSON', 182, 93),
(4, 'ENGLAND', 'JOS BUTTLER', 170, 90);

-- --------------------------------------------------------

--
-- Table structure for table `player12`
--

CREATE TABLE `player12` (
  `P_ID` int(11) NOT NULL,
  `P_NAME` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `COUNTRY` varchar(20) DEFAULT NULL,
  `FRANCHISE` varchar(20) DEFAULT NULL,
  `CATEGORY` varchar(10) DEFAULT NULL,
  `N_ID` int(11) NOT NULL,
  `F_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player12`
--

INSERT INTO `player12` (`P_ID`, `P_NAME`, `DOB`, `COUNTRY`, `FRANCHISE`, `CATEGORY`, `N_ID`, `F_ID`) VALUES
(100, 'ROHITH SHARMA', '1987-04-30', 'INDIA', 'MUMBAI', 'BATSMAN', 1, 201),
(101, 'VIRAT KOHLI', '1988-11-05', 'INDIA', 'BANGALORE', 'BATSMAN', 1, 202),
(102, 'MS DHONI', '1981-07-07', 'INDIA', 'CHENNAI', 'BATSMAN', 1, 204),
(103, 'SANJU SAMSON', '1994-11-11', 'INDIA', 'RAJASTHAN', 'BATSMAN', 1, 203),
(104, 'SURYAKUMAR YADAV', '1990-09-14', 'INDIA', 'MUMBAI', 'BATSMAN', 1, 201),
(105, 'HARSHAL PATEL', '1990-11-23', 'INDIA', 'BANGALORE', 'BOWLER', 1, 202),
(106, 'RAVINDRA JADEJA', '1988-12-06', 'INDIA', 'CHENNAI', 'BOWLER', 1, 204),
(107, 'YUZUVENDRA CHAHAL', '1990-07-23', 'INDIA', 'RAJASTHAN', 'BOWLER', 1, 203),
(108, 'JASPRIT BUMRAH', '1993-12-06', 'INDIA', 'MUMBAI', 'BOWLER', 1, 201),
(109, 'M SIRAJ', '1994-03-13', 'INDIA', 'BANGALORE', 'BOWLER', 1, 202),
(110, 'MICHEAL HUSSEY', '1975-05-27', 'AUSTRALIA', 'CHENNAI', 'BATSMAN', 2, 204),
(111, 'MITCHELL STARC', '1990-01-30', 'AUSTRALIA', 'MUMBAI', 'BOWLER', 2, 201),
(112, 'STEVE SMITH ', '1989-06-02', 'AUSTRALIA', 'RAJASTHAN', 'BATSMAN', 2, 203),
(113, 'CAMERON GREEN', '1999-06-03', 'AUSTRALIA', 'MUMBAI', 'BATSMAN', 2, 201),
(114, 'AARON FINCH', '1986-11-17', 'AUSTRALIA', 'BANGALORE', 'BATSMAN', 2, 202),
(115, 'MATHEW HAYDEN', '1971-10-29', 'AUSTRALIA', 'CHENNAI', 'BATSMAN', 2, 204),
(116, 'PAT CUMMINS', '1993-05-08', 'AUSTRALIA', 'RAJASTHAN', 'BOWLER', 2, 203),
(117, 'MITCHELL JOHNSON', '1981-11-02', 'AUSTRALIA', 'MUMBAI', 'BOWLER', 2, 201),
(118, 'ADAM ZAMPA', '1992-03-31', 'AUSTRALIA', 'BANGALORE', 'BOWLER', 2, 202),
(119, 'JOSH HAZLEWOOD', '1991-06-08', 'AUSTRALIA', 'CHENNAI', 'BOWLER', 2, 204),
(120, 'TRENT BOULT', '1989-07-22', 'NEWZEALAND', 'RAJASTHAN', 'BOWLER', 3, 203),
(121, 'KANE WILLIAMSON', '1990-08-08', 'NEWZEALAND', 'RAJASTHAN', 'BATSMAN', 3, 203),
(122, 'COREY ANDERSON', '1990-12-13', 'NEWZEALAND', 'MUMBAI', 'BATSMAN', 3, 201),
(123, 'BRENDON MUCCLUM', '1981-09-27', 'NEWZEALAND', 'BANGALORE', 'BATSMAN', 3, 202),
(124, 'DEVON CONWAY', '1991-07-08', 'NEWZEALAND', 'CHENNAI', 'BATSMAN', 3, 204),
(125, 'MARTIN GUPTILL', '1986-09-30', 'NEWZEALAND', 'RAJASTHAN', 'BATSMAN', 3, 203),
(126, 'ISH SODI', '1992-10-31', 'NEWZEALAND', 'MUMBAI', 'BOWLER', 3, 201),
(127, 'TIM SOUTHEE', '1988-12-11', 'NEWZEALAND', 'BANGALORE', 'BOWLER', 3, 202),
(128, 'MITCHELL SANTNER', '1992-02-05', 'NEWZEALAND', 'CHENNAI', 'BOWLER', 3, 204),
(129, 'LOCKIE FERGUSON', '1991-06-13', 'NEWZEALAND', 'RAJASTHAN', 'BOWLER', 3, 203),
(130, 'JOE ROOT', '1990-12-30', 'ENGLAND', 'MUMBAI', 'BATSMAN', 4, 201),
(131, 'JOHNNY BAIRSTOW', '1989-09-26', 'ENGLAND', 'BANGALORE', 'BATSMAN', 4, 202),
(132, 'ALEX HALES', '1989-01-03', 'ENGLAND', 'CHENNAI', 'BATSMAN', 4, 204),
(133, 'JOS BUTTLER', '1990-09-08', 'ENGLAND', 'RAJASTHAN', 'BATSMAN', 4, 203),
(134, 'BEN STOKES', '1991-06-04', 'ENGLAND', 'RAJASTHAN', 'BATSMAN', 4, 203),
(135, 'JOFRA ARCHER', '1995-04-11', 'ENGLAND', 'RAJASTHAN', 'BOWLER', 4, 203),
(136, 'SAM CURRAN', '1998-06-03', 'ENGLAND', 'CHENNAI', 'BOWLER', 4, 204),
(137, 'MARK WOOD', '1990-01-11', 'ENGLAND', 'BANGALORE', 'BOWLER', 4, 202),
(138, 'ADIL RASHID', '1988-02-17', 'ENGLAND', 'BANGALORE', 'BOWLER', 4, 202),
(139, 'JAMES ANDERSON', '1982-07-30', 'ENGLAND', 'MUMBAI', 'BOWLER', 4, 201);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_name` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL,
  `Phone_no` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_name`, `email`, `password`, `Phone_no`) VALUES
('Vedanth', 'vedanthvk64@gmail.com', '123456', 9164736464),
('VEDANTH K', '20cs178.vedanth@sjec.ac.i', 'da39a3ee5e', 9164736464);

CREATE TRIGGER `average_update` BEFORE INSERT ON `batsman`
 FOR EACH ROW SET new.AVG=new.RUNS/new.MATCHES
--
-- Indexes for dumped tables
--

--
-- Indexes for table `batsman`
--
ALTER TABLE `batsman`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `bowler`
--
ALTER TABLE `bowler`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD KEY `N_ID` (`N_ID`),
  ADD KEY `T_ID` (`T_ID`);

--
-- Indexes for table `franchise`
--
ALTER TABLE `franchise`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `nat_team`
--
ALTER TABLE `nat_team`
  ADD PRIMARY KEY (`N_ID`);

--
-- Indexes for table `player12`
--
ALTER TABLE `player12`
  ADD PRIMARY KEY (`P_ID`,`N_ID`,`F_ID`),
  ADD KEY `N_ID` (`N_ID`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batsman`
--
ALTER TABLE `batsman`
  ADD CONSTRAINT `batsman_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `player12` (`P_ID`);

--
-- Constraints for table `bowler`
--
ALTER TABLE `bowler`
  ADD CONSTRAINT `bowler_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `player12` (`P_ID`);

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`N_ID`) REFERENCES `nat_team` (`N_ID`),
  ADD CONSTRAINT `coach_ibfk_2` FOREIGN KEY (`T_ID`) REFERENCES `franchise` (`F_ID`);

--
-- Constraints for table `player12`
--
ALTER TABLE `player12`
  ADD CONSTRAINT `player12_ibfk_1` FOREIGN KEY (`N_ID`) REFERENCES `nat_team` (`N_ID`),
  ADD CONSTRAINT `player12_ibfk_2` FOREIGN KEY (`F_ID`) REFERENCES `franchise` (`F_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
