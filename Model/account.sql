-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2016 at 05:01 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `account`
--

-- --------------------------------------------------------

--
-- Table structure for table `computationalresource`
--

CREATE TABLE IF NOT EXISTS `computationalresource` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(190) NOT NULL,
  `title` varchar(100) NOT NULL,
  `department` varchar(80) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `computationalsciencepost`
--

CREATE TABLE IF NOT EXISTS `computationalsciencepost` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `department` varchar(40) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

-- --------------------------------------------------------

--
-- Table structure for table `computationalsiencepostanswer`
--

CREATE TABLE IF NOT EXISTS `computationalsiencepostanswer` (
  `answer_id` int(10) NOT NULL AUTO_INCREMENT,
  `postId` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `engineringpost`
--

CREATE TABLE IF NOT EXISTS `engineringpost` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `department` varchar(40) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `engineringpost`
--

INSERT INTO `engineringpost` (`post_id`, `content`, `email`, `department`) VALUES
(170, 'WHat is The Best Book of Python For developing ROBOTics?', 'amante@gmail.com', 'SoftWare'),
(169, 'What is The Best Book For Strength I for Beginner?', 'beki@gmail.com', 'Civil'),
(167, 'Hey Men My android studio is not working properly this week\r\nwhy its', 'kidus@gmail.com', 'SoftWare'),
(171, 'WHat is The Best Book of Python For developing ROBOTics?', 'amante@gmail.com', 'SoftWare'),
(168, 'What is The diffrence Between Dynamics and Statics?', 'amanuel@gmail.com', 'Civil');

-- --------------------------------------------------------

--
-- Table structure for table `engineringpostanswer`
--

CREATE TABLE IF NOT EXISTS `engineringpostanswer` (
  `answer_id` int(10) NOT NULL AUTO_INCREMENT,
  `postId` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `engineringpostanswer`
--

INSERT INTO `engineringpostanswer` (`answer_id`, `postId`, `email`, `answer`) VALUES
(1, 168, 'beki@gmail.com', 'This is a trick Question\r\nThe diffrence between Dynamics And Statics is \r\nStatics Studies About The Object that is not moved\r\nbut Dynamics Studies About The Object that is Moved'),
(2, 168, 'amanuel@gmail.com', 'Thank You For sharing your Idea @Bareket'),
(3, 170, 'amante@gmail.com', 'What');

-- --------------------------------------------------------

--
-- Table structure for table `engineringresource`
--

CREATE TABLE IF NOT EXISTS `engineringresource` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(190) NOT NULL,
  `title` varchar(100) NOT NULL,
  `department` varchar(80) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `engineringresource`
--

INSERT INTO `engineringresource` (`id`, `name`, `title`, `department`, `reg_date`, `user`) VALUES
(15, 'PHP and MySQL Web Development, 4th Edition.pdf', 'Php best book by steven', 'SoftWare', '2016-06-21 21:51:44', ''),
(16, 'codingbat-python-soru-cevap-1_2.pdf', 'python exersise', 'SoftWare', '2016-06-21 22:28:06', ''),
(19, 'derivative1f44.pdf', 'silo', 'SoftWare', '2016-06-21 23:00:01', 'silas'),
(20, 'derivative1f44.pdf', 'silo', 'SoftWare', '2016-06-21 23:00:58', 'silas'),
(21, 'best of best.pdf', 'Java materail', 'SoftWare', '2016-06-21 23:01:31', 'silas'),
(22, 'Introduction to Programming Using Python - Y. Liang - Pearson, 2013.pdf', 'java exersise', 'SoftWare', '2016-06-21 23:05:53', 'Kidus Mamuye'),
(23, 'Introduction to Programming Using Python - Y. Liang - Pearson, 2013.pdf', 'java exersise', 'SoftWare', '2016-06-22 02:39:44', 'Kidus Mamuye'),
(24, 'facebook1.jpeg', 'Java Images', 'SoftWare', '2016-06-22 13:40:06', 'silas'),
(25, 'Sadiku.pdf', 'Hydorlicis', 'Civil', '2016-06-22 13:45:21', 'Robera Dibesa'),
(26, 'codingbat-python-soru-cevap-1_2.pdf', 'Mechanics', 'Civil', '2016-06-22 13:45:49', 'Robera Dibesa'),
(27, 'Chapter Two.pdf', 'Chapter Two', 'Civil', '2016-06-23 02:00:54', 'Amanuel Belete');

-- --------------------------------------------------------

--
-- Table structure for table `healthrelatedpost`
--

CREATE TABLE IF NOT EXISTS `healthrelatedpost` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `department` varchar(40) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

-- --------------------------------------------------------

--
-- Table structure for table `healthrelatedpostanswer`
--

CREATE TABLE IF NOT EXISTS `healthrelatedpostanswer` (
  `answer_id` int(10) NOT NULL AUTO_INCREMENT,
  `postId` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `healthresource`
--

CREATE TABLE IF NOT EXISTS `healthresource` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(190) NOT NULL,
  `title` varchar(100) NOT NULL,
  `department` varchar(80) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `email` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`email`, `name`, `password`) VALUES
('abdi@gmail.com', 'abdi', '9e8a6110afe75f3a2458b0d99a62626f'),
('getacho@gmail.com', 'Getacho Meredasa', '2b9771d31b4e0e0cf019c9660925c1ba'),
('yared@gmail.com', 'yared', 'a06814cf4f3f87c1c13b2e987f19c020');

-- --------------------------------------------------------

--
-- Table structure for table `socialresource`
--

CREATE TABLE IF NOT EXISTS `socialresource` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(190) NOT NULL,
  `title` varchar(100) NOT NULL,
  `department` varchar(80) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `socialresource`
--

INSERT INTO `socialresource` (`id`, `name`, `title`, `department`, `reg_date`, `user`) VALUES
(1, 'Tkinter_lab_manual.pdf', 'law ', 'Choose your Departem', '2016-06-22 14:04:02', 'social@gmail.com'),
(2, 'GUI Programming using Tkinter.pdf', 'Langues Practice bes book', 'Choose your Departem', '2016-06-22 14:04:46', 'social@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `socialsciencepostanswer`
--

CREATE TABLE IF NOT EXISTS `socialsciencepostanswer` (
  `answer_id` int(10) NOT NULL AUTO_INCREMENT,
  `postId` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `socialsiencepost`
--

CREATE TABLE IF NOT EXISTS `socialsiencepost` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `department` varchar(40) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `university` varchar(20) NOT NULL,
  `field` varchar(40) NOT NULL,
  `department` varchar(20) NOT NULL,
  `yearLevel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`emailid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `emailid`, `password`, `university`, `field`, `department`, `yearLevel`) VALUES
(61, 'Hiaskias', 'Hiski@gmail.com', '6cf68911661820f163437464eb779d67', 'Addis Ababa', 'Enginering', 'SoftWare', '3rd year'),
(64, 'Amanuel Belete', 'amanuel@gmail.com', 'ccda1683d8c97f8f2dff2ea7d649b42c', 'Bahardar', 'Enginering', 'Civil', '2nd year'),
(65, 'Michael Mandefro', 'mich@gmail.com', '2ec490229423f4a6879d555a81bd6e4a', 'Addis Ababa', 'Enginering', 'SoftWare', '3rd year'),
(69, 'Kidus Mamuye', 'kidus@gmail.com', '436691ec58816e4e119ac5a18176723c', 'Addis Ababa', 'Enginering', 'SoftWare', '3rd year'),
(70, 'bareket', 'beki@gmail.com', '3aa00f6bf44ef9dedba2bdaaefd02941', 'Jimma', 'Enginering', 'Civil', '2nd year'),
(71, 'Abera', 'Abera@gmail.com', '96264f6f50293e261cda609a390d32e3', 'Addis Ababa', 'Enginering', 'Civil', '3rd year'),
(72, 'Sanyi', 'sanyi@gmail.com', '1001b2df663826cea4ecdde546f34a41', 'Addis Ababa', 'Enginering', 'Electrical', '1st year'),
(73, 'Amante Diriba', 'amante@gmail.com', 'd83fe7853feacbafc7e35869252eeb84', 'Addis Ababa', 'Enginering', 'SoftWare', '3rd year'),
(74, 'Buli Diriba', 'bulidiriba@gmail.com', 'b69030b48d65d9f4afc61c7c39325a21', 'Adama', 'Enginering', 'SoftWare', '3rd year'),
(75, 'Silas Getacho', 'silas@gmail.com', '2c08646ff29ea586bcd47a736a60ba05', 'Addis Ababa', 'Enginering', 'SoftWare', '3rd year'),
(76, 'silas Getacho', 'silogetcho@gmail.com', 'a6bb2751e948f62d55062b277423b25a', 'Addis Ababa', 'Enginering', 'SoftWare', '3rd year'),
(77, 'Michael madefro', 'michmandefro@gmail.c', '98bdd2a686956411533717a431a1393b', 'Addis Ababa', 'Enginering', 'SoftWare', '3rd year'),
(78, 'mich', 'mich12@gmail.com', '98bdd2a686956411533717a431a1393b', 'Choose your unversit', 'Choose your of Study', 'Choose your Departem', 'Choose your Year Lev');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
