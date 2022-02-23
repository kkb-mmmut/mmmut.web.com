-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 25, 2021 at 01:49 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mmmut_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `answerdiscussion`
--

CREATE TABLE IF NOT EXISTS `answerdiscussion` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `answer` varchar(500) NOT NULL,
  `answeredby` varchar(200) NOT NULL,
  `name` varchar(50) NOT NULL,
  `qid` int(10) NOT NULL,
  `posteddate` varchar(15) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `answerdiscussion`
--


-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `complainid` varchar(20) NOT NULL,
  `mobilenumber` varchar(15) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `complaintext` varchar(500) NOT NULL,
  `complaindate` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `name`, `complainid`, `mobilenumber`, `subject`, `complaintext`, `complaindate`) VALUES
(2, 'KAMLESH KUMAR BIND', 'E1783335500020', '8112740805', 'VIVA & PRACTICAL REGARDING', 'practical file not completed . viva is not ready sorry .......!!', '29/08/2020'),
(4, 'KAMLESH KUMAR BIND', 'E1783335500020', '8112740805', 'RAGGING', 'Tonight there was a massive ragging was held  in the hall of the dinner area . The final year students take the actions very badly and behave too rudely manners....', '29/08/2020');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE IF NOT EXISTS `discussion` (
  `qid` int(10) NOT NULL AUTO_INCREMENT,
  `enrollmentid` varchar(20) NOT NULL,
  `askedby` varchar(50) NOT NULL,
  `questiontext` varchar(200) NOT NULL,
  `posteddate` varchar(15) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`qid`, `enrollmentid`, `askedby`, `questiontext`, `posteddate`) VALUES
(1, 'E1783335500020', 'KAMLESH KUMAR BIND', 'What is the current and derive it?', '30/08/2020'),
(2, 'E1783335500020', 'KAMLESH KUMAR BIND', 'How induction moter works? Define in brief...', '30/08/2020');

-- --------------------------------------------------------

--
-- Table structure for table `elibrary`
--

CREATE TABLE IF NOT EXISTS `elibrary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ebookname` varchar(100) NOT NULL,
  `ebookdescription` varchar(400) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `posteddate` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `elibrary`
--

INSERT INTO `elibrary` (`id`, `ebookname`, `ebookdescription`, `filename`, `posteddate`) VALUES
(25, 'DBMS', 'Database Management System', '3130703_DBMS_GTU_Study_Material_e-Notes_All-Units_17102019083450AM.pdf', '13/08/2021'),
(24, 'OT', 'Optimization Technique', 'BAS-26-01-02.pdf', '13/08/2021'),
(23, 'Automata', 'Theory of Computation', 'Therory of computaion (automata).pdf', '13/08/2021'),
(22, 'Syllabus', 'Syllabus of Computer Science & Engineering', 'sy_160120113238.pdf', '12/08/2021'),
(26, 'EVS', 'organic and inorganic chemistry', 'SQL Questions.pdf', '24/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE IF NOT EXISTS `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enquirytext` varchar(500) NOT NULL,
  `enquirydate` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `contactno`, `emailaddress`, `enquirytext`, `enquirydate`) VALUES
(1, 'KAMLESH KUMAR BIND', '8112740805', 'kamleshkumarbind189251@gmail.com', 'This is the enquiry text and go to  for the cheking page...', '26/08/2020'),
(2, 'AMAN KUMARI', '9984741778', 'amankumari@gmail.com', 'This is the enquiry text for cheking the project is working successfully or not !!! \r\n                                                             --Just Chill', '26/08/2020'),
(4, 'RAHUL ', '9565653525', 'rahulkumar@gmail.com', 'This is rahul kumar . hello check!!', '26/08/2020'),
(5, 'AMAN KUMARI', '9984741778', 'amanag765425@gmail.com', 'How to get admission in this college ....?\r\nplease help!!', '26/08/2020'),
(12, 'KAMLESH KUMAR BIND ', '8112740805', 'kamleshkumarbind189251@gmail.com', 'Hostels mess food is junky and not fit for eat .', '14/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `enrollid`
--

CREATE TABLE IF NOT EXISTS `enrollid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enrollmentid` varchar(20) NOT NULL,
  `addingdate` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`enrollmentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `enrollid`
--

INSERT INTO `enrollid` (`id`, `enrollmentid`, `addingdate`) VALUES
(1, '2020022001', '12/08/2021'),
(2, '2020022002', '12/08/2021'),
(3, '2020022003', '12/08/2021'),
(4, '2020022004', '12/08/2021'),
(5, '2020022005', '12/08/2021'),
(6, '2020022006', '12/08/2021'),
(7, '2020022007', '12/08/2021'),
(8, '2020022008', '12/08/2021'),
(9, '2020022009', '12/08/2021'),
(10, '2020022010', '12/08/2021'),
(11, '2020022011', '12/08/2021'),
(12, '2020022013', '12/08/2021'),
(13, '2020022012', '12/08/2021'),
(14, '2020022014', '12/08/2021'),
(15, '2020022015', '12/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(15) NOT NULL,
  `description` varchar(200) NOT NULL,
  `postedby` varchar(50) NOT NULL,
  `posteddate` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `time`, `description`, `postedby`, `posteddate`) VALUES
(1, 'VIVA', '2020-09-03', '14:00', 'Practical & Viva to be held soon, please be ready to give the viva and practical and make ready to submit of the project and their report soon!!', 'KAMLESH BIND', '01/09/2020'),
(2, 'HOSTEL ALLOTMENT', '2020-06-15', '10:00', 'The allotment of the hostel is to be final so please submit the records .....', 'RANJEET PRAJAPATI', '01/09/2020'),
(4, 'Saraswati Pooja', '2020-02-14', '09:45', 'Today is saraswati puja and vandana is going to be held inside the school campus . Those student are able to come they can join us... at given time.', 'RANJEET PRAJAPATI', '08/09/2020');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `coresubject` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `mobilenumber` varchar(15) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `usertype` varchar(15) NOT NULL,
  `addingdate` varchar(15) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`name`, `email`, `coresubject`, `branch`, `mobilenumber`, `degree`, `password`, `address`, `usertype`, `addingdate`) VALUES
('Manmohan Pandey', 'manmohanpandey@mmmut.ac.in', 'Optimization Technique', 'Computer Science & Engineering', '8933876435', 'M-Tech', '@manmohan', 'MMMUT , Gorakhpur \r\nUttarpradesh', 'faculty', '12/08/2021'),
('Satish Chandra', 'satishchandra@mmmut.ac.in', 'Microprocessor & Microcontroller', 'Computer Science & Engineering ', '9532997798', 'M-Tech', '@satishchandra', 'MMMUT, Grorakhpur \r\nUttarpradesh ', 'faculty', '12/08/2021'),
('Javed Alam', 'javedalam@mmmut.ac.in', 'Management Information System', 'Computer Science & Engineering', '9335446460', 'M-Tech', '@javedalam', 'MMMUT, Gorakhpur ,Uttarpradesh', 'faculty', '12/08/2021'),
('Tabbassum ', 'tabbassum@mmmut.ac.in', 'Software Lab 4', 'Computer Science & Engineering', '9451273624', 'M-Tech', '@tabbassum', 'MMMUT, Gorakhpur\r\nUttarpradesh', 'faculty', '12/08/2021'),
('Rohit Tiwari', 'rohittiwari@mmmut.ac.in', 'Computer Organization and Design', 'Computer Science & Engineering', '8765783673', 'M-Tech', '@rohittiwari', 'MMMUT, Gorakhpur\r\nUttarpradesh', 'faculty', '12/08/2021'),
('A.K. Sharma', 'aksharma@mmmut.ac.in', 'Database Management System', 'Computer Science & Engineering', '0000000000', 'Phd', '@aksharma', 'MMMUT, Gorakhpur\r\nUttarpradesh\r\n', 'faculty', '12/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE IF NOT EXISTS `hostel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `roomnumber` varchar(50) NOT NULL,
  `studentone` varchar(50) NOT NULL,
  `studenttwo` varchar(50) NOT NULL,
  `studentthree` varchar(50) NOT NULL,
  `studentfour` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roomnumber` (`roomnumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `roomnumber`, `studentone`, `studenttwo`, `studentthree`, `studentfour`, `date`) VALUES
(1, '1', 'E1783335500020', '  ', ' ', ' ', '06/09/2020'),
(2, '2', 'E1783335500020', 'E1783335500020', 'E1783335500020', 'E1783335500020', '12/08/2021'),
(3, '3', '2020022011', '2020022007', '2020022008', '2020022008', '24/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `password`, `usertype`, `name`) VALUES
('kamlesh189251@gmail.com', '@adminbaba', 'admin', 'KAMLESH BIND'),
('javedalam@mmmut.ac.in', '@javedalam', 'faculty', 'Javed Alam'),
('satishchandra@mmmut.ac.in', '@satishchandra', 'faculty', 'Satish Chandra'),
('manmohanpandey@mmmut.ac.in', '@manmohan', 'faculty', 'Manmohan Pandey'),
('rohittiwari@mmmut.ac.in', '@rohittiwari', 'faculty', 'Rohit Tiwari'),
('tabbassum@mmmut.ac.in', '@tabbassum', 'faculty', 'Tabbassum '),
('2020022007', '@kamlesh', 'student', 'Kamlesh Bind'),
('aksharma@mmmut.ac.in', '@aksharma', 'faculty', 'A.K. Sharma'),
('2020022008', '@mritunjay', 'student', 'Mritunjaya Upadhyay'),
('2020022011', '@sagar', 'student', 'SAGAR  GUPTA');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `postedby` varchar(50) NOT NULL,
  `posteddate` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`id`, `title`, `subject`, `message`, `postedby`, `posteddate`) VALUES
(2, 'PRACTICAL ', 'VIVA & PRACTICAL REGARDING', 'Hello Dear Students,\r\n     We are glad to inform you all that your practical exam is going to be held on between the dates 2-September-2020 and 5-September-2020. So , you are are all requested to come soon as possible as.......', 'KAMLESH BIND', '29/08/2020'),
(3, 'HOSTEL', 'MENU PROBLEMS', 'The hostel was providing the sufficient amount of food to us. The quality of the food is too bad such as the street food . Many of the boys are suffering from the various problems such as the diheriora , vometting and various other disease.........', 'KAMLESH BIND', '30/08/2020'),
(4, 'PRACTICAL ', 'MENU PROBLEMS', 'File not ready ........', 'KAMLESH BIND', '08/09/2020');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `firstname` varchar(50) NOT NULL,
  `secondname` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `aadharcard` varchar(20) NOT NULL,
  `mobilenumber` varchar(15) NOT NULL,
  `altmobilenumber` varchar(15) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `enrollmentid` varchar(20) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `collegename` varchar(100) NOT NULL,
  `tempaddress` varchar(200) NOT NULL,
  `permaaddress` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `profilephoto` varchar(100) NOT NULL,
  `registereddate` varchar(20) NOT NULL,
  PRIMARY KEY (`enrollmentid`),
  UNIQUE KEY `aadharcard` (`aadharcard`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`firstname`, `secondname`, `fathername`, `mothername`, `dob`, `regdate`, `gender`, `aadharcard`, `mobilenumber`, `altmobilenumber`, `emailaddress`, `enrollmentid`, `branch`, `collegename`, `tempaddress`, `permaaddress`, `password`, `usertype`, `profilephoto`, `registereddate`) VALUES
('Kamlesh', 'Bind', 'Vijay Kumar', 'Vandana Devi', '2001-02-02', '2001-02-02', 'Male', '825388539151', '8112740805', '9984741778', '2020022007@mmmut.ac.in', '2020022007', 'Computer Science & Engineering', 'Madan Mohan Malviya University Of Technology,  Gorakhpur', 'MMMUT, Gorakhpur\r\nAmbedkar Bhawan \r\nUttarpradesh', 'Vill&Post- Saheri ,\r\nPincode- 233302,\r\nDistrict - Ghazipur , Uttarpradesh', '@kamlesh', 'student', 'TWO--op.jpg', '13/08/2021'),
('Mritunjaya', 'Upadhyay', 'Kamlesh', 'Not Know', '2000-05-09', '2000-05-09', 'Male', '859588592323', '9369343438', '9532395748', '2020022008@mmmut.ac.in', '2020022008', 'Computer Science & Engineering', 'Madan Mohan Malviya University Of Technology,  Gorakhpur', 'Ghazipur, Uttarpradesh', 'Ghazipur, Uttarpradesh', '@mritunjay', 'student', 'mritunjay.jpg', '13/08/2021'),
('SAGAR ', 'GUPTA', 'ASHOK', 'MADHURI', '2002-08-02', '2021-08-16', 'Male', '988987785445 ', '9865458475', '8745478512', '2020022011@mmmut.ac.in', '2020022011', 'Computer Science & Engineering', 'Madan Mohan Malviya University of Technology', 'VILL&POST   SAHERI ', 'DISTRICT   GHAZIPUR ', '@sagar', 'student', '2021-04-29-20-31-15.jpg', '16/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enrollmentid` varchar(50) NOT NULL,
  `subjectcode` varchar(50) NOT NULL,
  `subjectname` varchar(50) NOT NULL,
  `maximummarks` int(50) NOT NULL,
  `minimummarks` int(50) NOT NULL,
  `obtainedmarks` int(50) NOT NULL,
  `givenby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `enrollmentid`, `subjectcode`, `subjectname`, `maximummarks`, `minimummarks`, `obtainedmarks`, `givenby`, `date`) VALUES
(15, '2020022007', 'BCS 18', 'SOFTWARE LAB 4', 50, 17, 50, 'Tabbassum ', '13/08/2021'),
(14, '2020022007', 'BCS 17', 'COMPUTER ORGANIZATION AND DESIGN', 50, 17, 42, 'Rohit Tiwari', '13/08/2021'),
(13, '2020022007', 'BMS 09', 'OPTIMIZATION TECHNIQUE', 50, 17, 49, 'Manmohan Pandey', '13/08/2021'),
(12, '2020022007', 'MBA 113', 'MANAGEMENT INFORMATION SYSTEM', 50, 17, 45, 'Javed Alam', '13/08/2021'),
(11, '2020022007', 'BEC-32', 'MICROPROCESSOR AND APPLICATION', 50, 17, 48, 'Satish Chandra', '13/08/2021'),
(16, '2020022007', 'BCS 15', 'DATABASE MANAGEMENT SYSTEM', 50, 17, 49, 'A.K. Sharma', '13/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `subcription`
--

CREATE TABLE IF NOT EXISTS `subcription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emailaddress` varchar(50) NOT NULL,
  `subcription_date` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `subcription`
--

INSERT INTO `subcription` (`id`, `emailaddress`, `subcription_date`) VALUES
(1, 'amankumari@gmail.com', '26/08/2020'),
(8, 'amanag765425@gmail.com', '26/08/2020'),
(2, 'kamleshkumarbind189251@gmail.com', '26/08/2020'),
(10, 'rahulkumar@gmail.com', '26/08/2020'),
(16, 'amankumari@gmail.com', '27/08/2020');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE IF NOT EXISTS `timetable` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `branch` varchar(100) NOT NULL,
  `mondayone` varchar(50) NOT NULL,
  `mondaytwo` varchar(50) NOT NULL,
  `mondaythree` varchar(50) NOT NULL,
  `mondayfour` varchar(50) NOT NULL,
  `tuesdayone` varchar(50) NOT NULL,
  `tuesdaytwo` varchar(50) NOT NULL,
  `tuesdaythree` varchar(50) NOT NULL,
  `tuesdayfour` varchar(50) NOT NULL,
  `wednesdayone` varchar(50) NOT NULL,
  `wednesdaytwo` varchar(50) NOT NULL,
  `wednesdaythree` varchar(50) NOT NULL,
  `wednesdayfour` varchar(50) NOT NULL,
  `thrusdayone` varchar(50) NOT NULL,
  `thrusdaytwo` varchar(50) NOT NULL,
  `thrusdaythree` varchar(50) NOT NULL,
  `thrusdayfour` varchar(50) NOT NULL,
  `fridayone` varchar(50) NOT NULL,
  `fridaytwo` varchar(50) NOT NULL,
  `fridaythree` varchar(50) NOT NULL,
  `fridayfour` varchar(50) NOT NULL,
  `saturdayone` varchar(50) NOT NULL,
  `saturdaytwo` varchar(50) NOT NULL,
  `saturdaythree` varchar(50) NOT NULL,
  `saturdayfour` varchar(50) NOT NULL,
  `updatedby` varchar(50) NOT NULL,
  `date` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `branch` (`branch`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `branch`, `mondayone`, `mondaytwo`, `mondaythree`, `mondayfour`, `tuesdayone`, `tuesdaytwo`, `tuesdaythree`, `tuesdayfour`, `wednesdayone`, `wednesdaytwo`, `wednesdaythree`, `wednesdayfour`, `thrusdayone`, `thrusdaytwo`, `thrusdaythree`, `thrusdayfour`, `fridayone`, `fridaytwo`, `fridaythree`, `fridayfour`, `saturdayone`, `saturdaytwo`, `saturdaythree`, `saturdayfour`, `updatedby`, `date`) VALUES
(2, 'Computer Science & Engineering (First Year)', 'qaerdtfghtg', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qee', 'qwe', 'qwe', 'qwe', 'qwe', 'qee', 'qwe', 'qee', 'qwe', 'qwe', 'null', 'qwe', 'KAMLESH BIND', '06/09/2020'),
(3, 'Computer Science & Engineering (Second Year)', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qee', 'qwe', 'qwe', 'qwe', 'qwe', 'qee', 'qwe', 'qee', 'qwe', 'qwe', 'null', 'qwe', 'KAMLESH BIND', '06/09/2020'),
(4, 'Instrumentation & Control Engineering (First Year)', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qee', 'qwe', 'qwe', 'qwe', 'qwe', 'qee', 'qwe', 'qee', 'qwe', 'qwe', 'null', 'qwe', 'KAMLESH BIND', '06/09/2020');
