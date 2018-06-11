-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2018 at 11:50 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id4729693_smartepolicetraining`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnailurl` varchar(8000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `thumbnailurl`) VALUES
(1, 'Police Law', 'https://img.etimg.com/thumb/msid-48039061,width-300,imgsize-267272,resizemode-4/more-than-900-posts-lying-vacant-in-indian-police-service.jpg'),
(2, 'Softskills', 'https://www.americannursetoday.com/wp-content/uploads/2015/01/AMNT-Article-Feb15-soft-skills-750x300.jpg'),
(3, 'Cyber surveillance', 'https://static1.squarespace.com/static/51b1e191e4b03362c85d6d98/t/51eee3b4e4b06fd80f3e00cc/1374610356957/Cyber-Security-Threats.jpg'),
(4, 'Behaviour', 'http://movetheelephant.org/wp-content/uploads/2015/07/behaviour.png');

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `categoryId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `name`, `categoryId`) VALUES
(1, 'Introduction', 1),
(2, 'Basic Terminology CDR', 1),
(3, 'Understanding CDR (Call Data Record)', 1),
(4, 'SOP for scene of crime', 1),
(5, 'CDR pro tool tutorial', 1),
(6, 'CDR Analysis', 1),
(7, 'BTS Introduction', 1),
(8, 'BTS Analysis', 1),
(9, 'Cyber Crime', 1),
(10, 'Getting Data', 1),
(11, 'Summary', 2),
(12, 'CDR pro tools', 2);

-- --------------------------------------------------------

--
-- Table structure for table `quizcompleted`
--

CREATE TABLE `quizcompleted` (
  `id` int(255) NOT NULL,
  `quizid` int(255) NOT NULL,
  `userid` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizcompleted`
--

INSERT INTO `quizcompleted` (`id`, `quizid`, `userid`) VALUES
(1, 1, '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `quizquestion`
--

CREATE TABLE `quizquestion` (
  `id` int(255) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `option1` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `option2` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `option3` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `option4` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `correctoption` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `quizid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizquestion`
--

INSERT INTO `quizquestion` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correctoption`, `quizid`) VALUES
(1, 'This is question 1? This is a very big question which contains a lot of text.This is a very big question which contains a lot of text.This is a very big question which contains a lot of text.This is a very big question which contains a lot of text.This is a very big question which contains a lot of text.', 'option 01', 'option 02', 'option 03', 'option 04', 'option 01', 1),
(2, 'This is question 2', 'option 01', 'option 02', 'option 03', 'option 04', 'option 02', 1),
(3, 'This is question 3?', 'option 01', 'option 02', 'option 03', 'option 04', 'option 03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(255) NOT NULL,
  `quizname` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `quizname`, `categoryid`) VALUES
(1, 'quiz 1', 1),
(2, 'quiz 2', 1),
(3, 'quiz 3', 4),
(4, 'quiz 4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `registeredusers`
--

CREATE TABLE `registeredusers` (
  `id` int(255) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registeredusers`
--

INSERT INTO `registeredusers` (`id`, `name`, `mobile`, `password`) VALUES
(123456789, 'shreyansh singh', 1212121212, 'shreyansh333');

-- --------------------------------------------------------

--
-- Table structure for table `seen`
--

CREATE TABLE `seen` (
  `id` int(255) NOT NULL,
  `videoid` text COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `userid` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seen`
--

INSERT INTO `seen` (`id`, `videoid`, `time`, `userid`) VALUES
(1, '849', '', '8248848'),
(2, '849', 'time', '8248848'),
(3, '123', 'time', '0'),
(4, '123', 'time', 'sgerverv56'),
(5, 'sgerverv56', 'time', '123'),
(6, 'GmFfQMTO1og', 'time', '123456789'),
(7, 'OKTlG2C9NaA', 'time', '123456789'),
(8, '2', 'time', '123456789'),
(9, '3', 'time', '123456789'),
(10, '4', 'time', '123456789'),
(11, '5', 'time', '123456789'),
(13, '19', 'time', '123456789'),
(15, 'sgerverv56', 'time', '1234'),
(16, '6', 'time', '123456789'),
(17, '37', 'time', '123456789'),
(18, '46', 'time', '123456789'),
(19, '1', 'time', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(255) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `videourl` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `chapterid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`, `videourl`, `chapterid`) VALUES
(1, 'Introduction', 'CkBTlKTioNo', 1),
(2, 'Basics of personal cdr', 'uqbSK52q30Y', 1),
(3, 'mobile companies in india', 'UFXmjyoU7-Y', 1),
(4, 'Types of cdr', 'EBVez6dA52A', 1),
(5, 'How bts works', 'uP6BAMzniXg', 1),
(6, 'Terminology of surveillance', 'Ib4NqYquiHE', 2),
(7, 'Terminology of surveillance', 'ulm86sao7xo', 2),
(8, 'kacchi se pakki cdr', 'zAU78L9BRbA', 3),
(9, 'columns in cdr', 'wxBzxt2na6E', 3),
(10, 'scene of crime par jakar kya karna h', 'YLUOyvmPg1w', 4),
(11, 'tools cdr pro', 'Yi4kCmXvZNQ', 5),
(12, 'Making a case in cdr', 'mFD6OkL-QUY', 5),
(13, 'google map tool presentation', 'xjzNfEOD05I', 5),
(14, 'question 1', '0ipLqs-tAMg', 5),
(15, 'question 2', 'XOlRUZ9lCL0', 5),
(16, 'question 3 google map tool demo', '-KIrRx_AwTw', 5),
(17, 'Personal cdr relationship demo and presentation', 'z5Cldf4Ldjo', 5),
(18, 'question 8 google tool reiki live', 'qegOpgtsqoE', 5),
(19, 'cdr analysis standard', 'm4-5j2R6cw8', 6),
(20, 'bts intro', 'IV0wB_hk2DU', 7),
(21, 'How to make filtered case', 'Ng6MXkR1Zpg', 7),
(22, 'bts analysis logic', 'D9hwWCeNFls', 7),
(23, 'surveillance monitoring by sp prabhari', 'KckenTCVIyM', 7),
(24, 'Surveillance murder nakab checklist', 'PXYZfeZjLh0', 7),
(25, 'CYBER CRIME FUNDA', '5HFRgjQUlIs', 9),
(26, 'assignment bts case load', 'GmFfQMTO1og', 8),
(27, 'presentation split and common number normal cdr', 'Eugqo438dHQ', 8),
(28, 'question bts bank group common number', 'RySgqFN5KNA', 8),
(29, 'bank assignment undergroup call', 'xraCBKhDgxM', 8),
(30, 'bank BTS Ques Time Slicing', 'j8p9d1MdosQ', 8),
(31, 'Tower Battery undergroup', 'Nf3-2nVE3Os', 8),
(32, 'Tower Battery 2', 'D1zt9jV-1GI', 8),
(33, 'Ques subgroup common number case tool tower battery 2', '1HWClwjQ2hg', 8),
(34, 'Tower Battery group common number and mini cdr', '633VtScYvE8', 8),
(35, 'Sending Email', 'gKWn3Cz5kXY', 10),
(36, 'bts data excel to email', 'ZcqRIvQjmW0', 10),
(37, 'excel merge tools', 'mOCUzcQEKE4', 11),
(38, 'searching multiple mobile number on social media', 'e00I-ES1HSQ', 11),
(39, 'surveillance video summary all tools', 'OKTlG2C9NaA', 12),
(40, 'surveillance video summary all tools part 2', 'qx7_G4OavVg', 12),
(41, 'tutorial case tools', 't-Uov8iNXMk', 12),
(42, 'tutorial relationship tool', 'JpB2cUDwzoU', 12),
(43, 'tutorial cdr renamer', '6FQPXlB6_38', 12),
(44, 'tutorial google map', 'WxHoWQyvas4', 12),
(45, 'Menu Tutor How to install and use cell ID Kit Device english', 'NDVcYfcZVwk', 12),
(46, 'lat long tool for cell tower', 'BouBMLEkHOM', 12),
(47, 'spam db and split and merge tut', 'GloefI315Kk', 12),
(48, 'suspect db tutorial', '0jixWkmji8s', 12),
(49, 'cdr pro tutorial', 'IsNVwZx6wqg', 12),
(50, 'Making a case in cdr pro', 'mFD6OkL-QUY', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizcompleted`
--
ALTER TABLE `quizcompleted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizquestion`
--
ALTER TABLE `quizquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seen`
--
ALTER TABLE `seen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quizcompleted`
--
ALTER TABLE `quizcompleted`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quizquestion`
--
ALTER TABLE `quizquestion`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seen`
--
ALTER TABLE `seen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
