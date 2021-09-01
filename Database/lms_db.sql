-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 01, 2021 at 08:36 AM
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
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(1) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(10) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(2) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_lecturer` varchar(100) COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL,
  `course_price` int(4) NOT NULL,
  `course_original_price` int(4) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_lecturer`, `course_img`, `course_price`, `course_original_price`) VALUES
(1, 'Combined mathematics', 'A/L Combined mathematics Lessons', 'Ruwan Darshana (B.Sc Engineering (Hon\'s) (University of sri Jayavardanapura)', '../image/courseimg/maths.jpg', 4000, 5000),
(2, 'Biology', 'A/L Biology Lessons', 'WAJIRA GAMAGE(B.Sc (University of Colombo))', '../image/courseimg/Bio.jpg', 4000, 5000),
(3, 'Physics', 'A/L Physics Lessons', 'JANITHA BASNAYAKE ((B.Sc Engineering (Hon\'s (University of Morathuwa)', '../image/courseimg/physics.jpg', 4000, 5000),
(4, 'Chemistry', 'A/L Chemistry Lessons', 'KASUN LIYANAGE(B.Sc (University of Colombo))', '../image/courseimg/chemistry.jpg', 4000, 5000),
(5, 'English', 'A/L English Lessons', 'Kasun Siripath', '../image/courseimg/english.jpg', 2500, 3000),
(6, 'Information Technology', 'A/L Information Technology Lessons ', 'SANOJ PEIRIS(B.IT (University of Colombo))', '../image/courseimg/ict.jpg', 3500, 4000),
(7, 'Economics', 'A/L Economics Lessons ', 'MAHESH RANGAJEEWA(B.Sc(Mgt.)sp. (University of Sri jayawardanapura)', '../image/courseimg/econ.jpg', 3500, 4000),
(8, 'Business Studies', 'A/L Business Studies Lessons', 'MAHESH RANGAJEEWA(B.Sc(Mgt.)sp. (University of Srijayawardanapura)', '../image/courseimg/bs.jpg', 3500, 4000),
(9, ' Accounting', 'A/L Accounting Lessons', 'NISHAN CHAMARA (B.B.A.(Accounting)Sp. (University of sri jayawardanapura)', '../image/courseimg/accounting.jpg', 3500, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `f_id` int(2) NOT NULL AUTO_INCREMENT,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(5) NOT NULL,
  PRIMARY KEY (`f_id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(1, 'This Is Very Helpful Website to learn A/L subjects and it\'s really helpful for my studies. but if you can add more lesson videos it\'s better.', 2),
(2, 'Thnks To All Lecturers. Very Good Explaning...', 1),
(3, 'User Friendly Interface. Great Work....', 3);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `lesson_id` int(3) NOT NULL AUTO_INCREMENT,
  `lesson_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(2) NOT NULL,
  `course_name` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`lesson_id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, 'Review of Basic Algebra', 'Review of Basic Algebra', '../lessonvid/max1.mp4', 1, 'Combined mathematics'),
(2, 'Geometry Analyses plane geometry', 'Geometry Analyses plane geometry', '../lessonvid/max2.mp4', 1, 'Combined mathematics'),
(3, 'Rectangular cartesian system, Straight line', 'Rectangular cartesian system, Straight line', '	\r\n../lessonvid/max5 .mp4', 1, 'Combined mathematics'),
(4, 'Quadratic functions and quadratic equations', 'Quadratic functions and quadratic equations', '	\r\n../lessonvid/max3.mp4', 1, 'Combined mathematics'),
(5, 'Living Cells and Life Processes', 'Living Cells and Life Processes', ' ../lessonvid/Bio.mp4', 2, 'Biology'),
(6, 'The Cardiac Conduction System', 'The Cardiac Conduction System', ' ../lessonvid/4bio4.mp4', 2, 'Biology'),
(7, 'The Living body', 'The Living body', ' ../lessonvid/Hum.mp4', 2, 'Biology'),
(8, 'The Digestive System', 'The Digestive System', ' ../lessonvid/Digesti.mp4', 2, 'Biology'),
(9, 'Electricity', 'Electricity', '	\r\n../lessonvid/vdo3.mp4', 3, 'Physics'),
(10, 'Waves', 'Waves', '../lessonvid/phy3.mp4', 3, 'Physics'),
(11, 'Forces and Motion', 'Forces and Motion', ' ../lessonvid/phy2.mp4', 3, 'Physics'),
(12, 'Energy', 'Energy', '../lessonvid/phy4.mp4 ', 3, 'Physics'),
(13, 'Alkenes & Alkenes Homologous Series', 'Alkenes & Alkenes Homologous Series', '../lessonvid/chy.mp4', 4, 'Chemistry'),
(14, 'The Periodic Table & Chemical Patterns', 'The Periodic Table & Chemical Patterns', '../lessonvid/chy2.mp4', 4, 'Chemistry'),
(15, 'What is Crude Oil?', 'What is Crude Oil?', '../lessonvid/chy4.mp4', 4, 'Chemistry'),
(16, 'what is Economic?', 'what is Economic?', '../lessonvid/ECO.mp4', 7, 'Economic'),
(17, 'What is Business Studies?', 'Business Studies', '../lessonvid/vdo6.mp4', 8, 'Business Studies'),
(18, 'Economic  Notes', 'Economic', '../lessonvid/vdo7.mp4', 7, 'Economic'),
(19, 'spoken  English', ' English', '../lessonvid/english.mp4', 5, 'English'),
(21, 'What is Accounting?', 'Accounting', ' ../lessonvid/accing.mp4', 9, 'Accounting'),
(20, 'Grammar Notes', 'English', '../lessonvid/ENGLUSH.mp4', 5, 'English'),
(22, 'Daily convercation ', 'Daily convercation', '../lessonvid/Eng.mp4', 5, 'English'),
(23, 'The Brain', 'The Brain', '../lessonvid/5Brain.mp4 ', 2, 'Biology'),
(24, 'Electroplating', 'What is Electroplating?', '../lessonvid/chyE.mp4', 4, 'Chemistry'),
(25, 'What is Information Technology?', 'What is Information Technology?', '	\r\n../lessonvid/ICT.mp4 ', 6, 'Information Technology'),
(26, ' Information Technology', 'Information Technology', '../lessonvid/ICT1.mp4 ', 6, 'Information Technology'),
(27, 'Oraganic Chemistry', 'Oraganic Chemistry', '../lessonvid/chy3.mp4\r\n', 4, 'Chemistry'),
(28, 'What is  Accounting ?', ' Accounting', '../lessonvid/accing.mp4', 9, ' Accounting');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `marks_id` int(2) NOT NULL AUTO_INCREMENT,
  `teach_id` int(2) DEFAULT NULL,
  `marks_subject` varchar(30) COLLATE utf8_bin NOT NULL,
  `marks_link` text COLLATE utf8_bin NOT NULL,
  `marks_desc` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`marks_id`),
  KEY `Teacher_id` (`teach_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`marks_id`, `teach_id`, `marks_subject`, `marks_link`, `marks_desc`) VALUES
(1, 1, 'Combined Maths', '../marks/Diploma in Software Engineering 19.2.pdf', '2020 Morning Class');

-- --------------------------------------------------------

--
-- Table structure for table `modelpapers`
--

DROP TABLE IF EXISTS `modelpapers`;
CREATE TABLE IF NOT EXISTS `modelpapers` (
  `p_no` int(2) NOT NULL AUTO_INCREMENT,
  `teach_id` int(5) DEFAULT NULL,
  `p_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `p_desc` varchar(20) COLLATE utf8_bin NOT NULL,
  `p_link` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`p_no`),
  KEY `Teacher_id` (`teach_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `modelpapers`
--

INSERT INTO `modelpapers` (`p_no`, `teach_id`, `p_name`, `p_desc`, `p_link`) VALUES
(1, 1, 'Physics', '2021 Theory', '../papers/PF-19.2-PE-DSE_CW1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `payment_no` int(5) NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(20) COLLATE utf8_bin NOT NULL,
  `stu_id` int(5) DEFAULT NULL,
  `stu_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `course_id` int(2) NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `amount` int(4) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`payment_no`),
  KEY `course_id` (`course_id`),
  KEY `stu_id` (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_no`, `payment_id`, `stu_id`, `stu_email`, `course_id`, `status`, `amount`, `payment_date`) VALUES
(1, 'ORDS16341288', 1, 'uhasith@gmail.com', 5, 'Success', 2500, '2021-07-19'),
(2, 'ORDS36071185', 2, 'ishini@gmail.com', 2, 'Success', 4000, '2021-07-19'),
(3, 'ORDS48991917', 3, 'dinushi@gmail.com', 1, 'Success', 4000, '2021-07-20'),
(4, 'ORDS71030838', 3, 'dinushi@gmail.com', 9, 'Success', 3500, '2021-07-20'),
(5, 'ORDS67504971', 3, 'dinushi@gmail.com', 8, 'Success', 3500, '2021-07-20'),
(6, 'ORDS4268593', 3, 'dinushi@gmail.com', 2, 'Success', 4000, '2021-07-20'),
(7, 'ORDS75549755', 3, 'dinushi@gmail.com', 7, 'Success', 3500, '2021-07-20'),
(8, 'ORDS74696359', 3, 'dinushi@gmail.com', 6, 'Success', 3500, '2021-07-20'),
(9, 'ORDS3129487', 1, 'uhasith@gmail.com', 7, 'Success', 3500, '2021-07-20'),
(10, 'ORDS55491436', 1, 'uhasith@gmail.com', 2, 'Success', 4000, '2021-07-20'),
(11, 'ORDS92371079', 1, 'uhasith@gmail.com', 6, 'Success', 3500, '2021-07-20'),
(12, 'ORDS26073270', 2, 'ishini@gmail.com', 3, 'Success', 4000, '2021-07-20'),
(13, 'ORDS62436288', 2, 'ishini@gmail.com', 4, 'Success', 4000, '2021-07-20'),
(14, 'ORDS91561021', 2, 'ishini@gmail.com', 5, 'Success', 2500, '2021-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `stu_id` int(5) NOT NULL AUTO_INCREMENT,
  `stu_fname` varchar(20) COLLATE utf8_bin NOT NULL,
  `stu_lname` varchar(20) COLLATE utf8_bin NOT NULL,
  `stu_phone` int(10) DEFAULT NULL,
  `stu_address` text COLLATE utf8_bin,
  `stu_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(15) COLLATE utf8_bin NOT NULL,
  `verification_code` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `stu_detail` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `stu_img` text COLLATE utf8_bin,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_fname`, `stu_lname`, `stu_phone`, `stu_address`, `stu_email`, `stu_pass`, `verification_code`, `is_active`, `stu_detail`, `stu_img`) VALUES
(1, ' Hasith', 'Udayanga', 712345678, ' Gampaha', 'uhasith@gmail.com', '123', NULL, 1, ' 2016 A/L Student', ''),
(2, '  ishini', ' nadeesha', 712345679, '  Moratuwa', 'ishini@gmail.com', '123', NULL, 1, '  ICT Student', ''),
(3, ' Dinushi', 'Madushika', 712345670, ' Panadaura', 'dinushi@gmail.com', '123', NULL, 1, ' 2020 A/l', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `teach_id` int(2) NOT NULL AUTO_INCREMENT,
  `course_id` int(2) NOT NULL,
  `teach_fname` varchar(20) COLLATE utf8_bin NOT NULL,
  `teach_lname` varchar(20) COLLATE utf8_bin NOT NULL,
  `teach_sub` varchar(25) COLLATE utf8_bin NOT NULL,
  `teach_email` varchar(50) COLLATE utf8_bin NOT NULL,
  `teach_pass` varchar(15) COLLATE utf8_bin NOT NULL,
  `teach_phone` int(10) DEFAULT NULL,
  `teach_img` text COLLATE utf8_bin,
  PRIMARY KEY (`teach_id`),
  KEY `course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teach_id`, `course_id`, `teach_fname`, `teach_lname`, `teach_sub`, `teach_email`, `teach_pass`, `teach_phone`, `teach_img`) VALUES
(1, 1, '    Ruwan ', '    Darshana', '    Combined mathes', 'ruwansamathvee@gmail.com', '1234', 715566987, '../image/teachimages.jpg'),
(2, 2, 'WAJIRA ', ' GAMAGE', 'Biology', 'wajirasamathvee@gmail.com', '123', NULL, NULL),
(3, 3, 'JANITHA ', ' BASNAYAKE', 'Physics', 'janithasamathvee@gmail.com', '123', NULL, NULL),
(4, 4, 'KASUN ', ' LIYANAGE', 'Chemistry', 'kasunsamathvee@gmail.com', '123', NULL, NULL),
(5, 5, 'Kasun ', 'Siripath', 'English', 'siripathsamathvee@gmail.com', '123', NULL, NULL),
(6, 6, 'SANOJ ', ' PEIRIS', 'Information Technology', 'sanojsamathvee@gmail.com', '123', NULL, NULL),
(7, 7, 'KALUM ', 'RANGAJEEWA', 'Economics', 'kalumsamathvee@gmail.com', '123', NULL, NULL),
(8, 8, 'MAHESH', 'RANGAJEEWA', 'Business Studies', 'maheshsamathvee@gmail.com', '123', NULL, NULL),
(9, 9, 'NISHAN ', ' CHAMARA', 'Accounting', 'nishansamathvee@gmail.com', '123', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
