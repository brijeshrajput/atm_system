-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 05:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `transaction_display` ()  NO SQL select * from transaction where transaction_date not BETWEEN 2021-10-31 and 2021-08-30 GROUP by transaction_id,transaction_type,user_id,transaction_status,transaction_date$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Account_number` int(10) NOT NULL,
  `Balance` int(50) NOT NULL,
  `Account_type` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Account_number`, `Balance`, `Account_type`, `user_id`) VALUES
(1000, 54745, 'savings', 100),
(1001, 10900, 'current', 101),
(1002, 19200, 'savings', 102),
(1003, 11200, 'current', 103),
(1004, 103200, 'savings', 104),
(1005, 79200, 'savings', 105),
(1006, 4000, 'savings', 106),
(1007, 47042, 'savings', 107),
(1008, 52200, 'current', 108),
(1009, 58200, 'savings', 109);

--
-- Triggers `account`
--
DELIMITER $$
CREATE TRIGGER `logs` AFTER UPDATE ON `account` FOR EACH ROW insert into logs values(null, new.user_id,new.balance,now())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_pin` int(11) NOT NULL,
  `atm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_pin`, `atm_id`) VALUES
(500, 3333, 120),
(501, 2244, 121),
(502, 5566, 122),
(503, 7890, 123),
(504, 9810, 124),
(505, 1999, 125),
(506, 1887, 126),
(507, 4596, 127),
(508, 8988, 128),
(509, 9999, 129);

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `atm_id` int(11) NOT NULL,
  `atm_location` varchar(255) NOT NULL,
  `available_cash` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`atm_id`, `atm_location`, `available_cash`) VALUES
(120, 'MIET MEERUT', 95000),
(121, 'MODIPURAM', 150000),
(122, 'TEJ VIHAR', 70000),
(123, 'Bellenduru', 20000),
(124, 'UDAYPARK', 80000),
(125, 'Udaycity', 80000),
(126, 'Indra nagar', 70000),
(127, 'Akshardham', 100000),
(128, 'NB Colony', 100500),
(129, 'kankerkhera', 70000);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Bank_name` varchar(255) NOT NULL,
  `Bank_id` int(11) NOT NULL,
  `Branch_Location` varchar(255) NOT NULL,
  `account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Bank_name`, `Bank_id`, `Branch_Location`, `account`) VALUES
('MIET Bank', 1, 'MIET, Bhagpat Bypass, Meerut', 1000),
('Canara Bank', 2, 'Mawana', 1001),
('Syndicate Bank', 3, 'Palhera', 1002),
('State Bank of India', 4, 'Modipuram', 1003),
('Bank of Baroda', 5, 'TP Nagar', 1004),
('Bank of India', 6, 'Kankarkhera', 1005),
('Indian bank', 7, 'Dulhera Chauhan', 1006),
('Punjab National Bnak', 8, 'Aksar Dham', 1007);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_no` int(11) NOT NULL,
  `card_pin` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_no`, `card_pin`, `balance`, `user_id`) VALUES
(123456, 9001, 79200, 105),
(123965, 9002, 54745, 109),
(145672, 3333, 54745, 100),
(312315, 9004, 11200, 103),
(423415, 9005, 19200, 102),
(456789, 9006, 4000, 106),
(512345, 9007, 10900, 101),
(765345, 9008, 52200, 108),
(914321, 9009, 103200, 104),
(987651, 3000, 47042, 107);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `balance`, `created_date`) VALUES
(1, 100, '60400', '2019-11-14 10:26:44'),
(2, 100, '60200', '2019-11-14 10:28:26'),
(3, 100, '60000', '2019-11-14 10:59:18'),
(4, 100, '59000', '2019-11-14 13:40:20'),
(5, 100, '58200', '2019-11-14 13:45:22'),
(6, 101, '700', '2019-11-14 13:47:01'),
(7, 101, '-100', '2019-11-14 13:47:23'),
(8, 101, '10000', '2019-11-14 13:48:02'),
(9, 101, '9900', '2019-11-14 13:50:13'),
(10, 101, '10400', '2019-11-14 13:53:26'),
(11, 100, '57700', '2019-11-14 13:53:26'),
(12, 101, '10500', '2019-11-14 13:56:40'),
(13, 100, '57600', '2019-11-14 13:56:40'),
(14, 100, '57400', '2019-11-14 14:48:47'),
(15, 101, '10600', '2019-11-14 14:49:52'),
(16, 100, '57300', '2019-11-14 14:49:53'),
(17, 101, '10700', '2019-11-14 14:50:22'),
(18, 100, '57200', '2019-11-14 14:50:22'),
(19, 100, '56200', '2019-11-29 11:05:36'),
(20, 101, '10800', '2019-12-03 06:43:14'),
(21, 100, '56100', '2019-12-03 06:43:14'),
(22, 100, '55100', '2019-12-03 11:10:42'),
(23, 101, '10900', '2019-12-03 11:13:19'),
(24, 100, '55000', '2019-12-03 11:13:20'),
(25, 100, '54995', '2022-11-24 17:13:45'),
(26, 100, '54745', '2022-11-24 17:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_date` date NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_date`, `transaction_id`, `transaction_status`, `transaction_type`, `user_id`) VALUES
('2022-11-10', 1, 'Successful', 'savings', 108),
('2022-11-14', 2, 'Successful', 'Savings', 100),
('2022-10-17', 3, 'Successful', 'current', 101),
('2022-10-18', 4, 'Failed', 'savings', 102),
('2022-09-14', 5, 'Successful', 'current', 103),
('2022-10-18', 6, 'Failed', 'Savings', 104),
('2022-11-13', 7, 'Successful', 'savings\r\n', 105),
('2022-10-28', 8, 'Failed', 'current', 106),
('2022-11-10', 9, 'Successful', 'savings', 107);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(13) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `address`, `contact_no`, `DOB`) VALUES
(100, 'Brijesh', 'Chauhan', 'Village Dulhera \n Chauhan,Meerut', '7017442328', '2003-01-26'),
(101, 'Shrestha', 'Johri', 'Kaliashpuri, Meerut', '816345678', '2003-06-07'),
(102, 'Nikhil', 'Yadav', 'Modipuram', '742356819', '2001-02-21'),
(103, 'Nitish', 'Kumar Senger', 'Tej Vihar, Meerut', '923645789', '2004-04-04'),
(104, 'Atul', 'Pratap Singh', 'Modipuram, Meerut', '886115575', '2003-05-18'),
(105, 'Ayush', 'Sharma', 'Modipuram, Meerut', '776255848', '1999-06-29'),
(106, 'Sidharth', 'Aggarwal', 'Haridwar, UK', '996118117', '2002-07-01'),
(107, 'Veer', 'Singh', 'P-7, Modipuram, Meerut', '702260405', '2001-11-13'),
(108, 'Vansh', 'Sharma', 'Mumbai', '809260405', '2004-08-02'),
(109, 'Aryan', 'Patel', 'Chennai', '812345923', '2002-09-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_number`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `Balance` (`Balance`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `atm_id` (`atm_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`atm_id`),
  ADD KEY `atm_id` (`atm_id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Bank_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `balance` (`balance`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Account_number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`atm_id`) REFERENCES `atm` (`atm_id`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`balance`) REFERENCES `account` (`Balance`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `account` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
