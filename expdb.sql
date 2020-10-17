-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2020 at 11:17 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `chattable`
--

CREATE TABLE `chattable` (
  `username` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chattable`
--

INSERT INTO `chattable` (`username`, `message`, `time`) VALUES
('admin', 'hai', '10/03/20 2.35:40<bSat, 03 Oct 2020 02:35:40 +0200>'),
('Ram', 'hello', '10/03/20 2.39:02<bSat, 03 Oct 2020 02:39:02 +0200>'),
('Ram', 'hello', '10/03/20 2.39:03<bSat, 03 Oct 2020 02:39:03 +0200>'),
('admin', 'Gud afternoon all', '10/17/20 22.57:31<bSat, 17 Oct 2020 22:57:31 +0200>'),
('Aishu', 'hello', '10/17/20 23.12:22<bSat, 17 Oct 2020 23:12:22 +0200>');

-- --------------------------------------------------------

--
-- Table structure for table `contacttable`
--

CREATE TABLE `contacttable` (
  `fullname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacttable`
--

INSERT INTO `contacttable` (`fullname`, `email`, `subject`, `message`, `time`) VALUES
('Swetha', 'swetha@gmail.com', 'nice', 'good platform to communiate with tutor', '10/03/20 2.48:11<bSat, 03 Oct 2020 02:48:11 +0200>');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `visit` int(100) NOT NULL,
  `id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`visit`, `id`) VALUES
(659, 0),
(265, 1),
(50, 2),
(79, 3);

-- --------------------------------------------------------

--
-- Table structure for table `exptable`
--

CREATE TABLE `exptable` (
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `faname` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `regas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exptable`
--

INSERT INTO `exptable` (`fname`, `password`, `email`, `faname`, `gender`, `regas`) VALUES
('Diya', 'diya', 'diya@gmail.com', 'Ragu', 'Female', 'Tutor'),
('Dhamu', 'dhamu', 'dhamu@gmail.com', 'deran', 'Male', 'Tutor'),
('Priya', 'priya', 'priya@gmail.com', 'pandian', 'Female', 'Tutor'),
('kripa', 'kripa', 'kripa@gmail.com', 'raj', 'Female', 'Tutor'),
('Aishu', 'aishu', 'aishu@gmail.com', 'vijay', 'Female', 'Tutor'),
('Surya', 'surya', 'surya@gmail.com', 'kumar', 'Male', 'Tutor'),
('Abi', 'abi', 'abi@gmail.com', 'ram', 'Female', 'Student'),
('Swetha', 'swetha', 'swetha@gmail.com', 'Mohan', 'Female', 'Student'),
('Ram', '1234', 'ram@gmail.com', 'Kumar', 'Male', 'Student'),
('Jannu', '1234', 'jannu@gmail.com', 'kumar', 'Female', 'Student'),
('Vijay', '1234', 'vijay@gmail.com', 'krishnam', 'Male', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttable`
--

CREATE TABLE `paymenttable` (
  `fname` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `cred` varchar(30) NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymenttable`
--

INSERT INTO `paymenttable` (`fname`, `password`, `cred`, `coursename`, `time`) VALUES
('Swetha', 'swetha', '32664', 'java', '10/03/20 2.23:31<bSat, 03 Oct 2020 02:23:31 +0200>'),
('Vijay', '1234', '436657', 'bootstrap', '10/03/20 2.24:06<bSat, 03 Oct 2020 02:24:06 +0200>'),
('Ram', '1234', '57687', 'perl', '10/03/20 2.25:05<bSat, 03 Oct 2020 02:25:05 +0200>'),
('Jannu', '1234', '5685879', 'php', '10/03/20 2.26:22<bSat, 03 Oct 2020 02:26:22 +0200>'),
('Abi', 'abi', '687980', 'javascript', '10/03/20 2.33:37<bSat, 03 Oct 2020 02:33:37 +0200>');

-- --------------------------------------------------------

--
-- Table structure for table `ratingtable`
--

CREATE TABLE `ratingtable` (
  `fname` varchar(20) NOT NULL,
  `ui` int(10) NOT NULL,
  `performance` int(10) NOT NULL,
  `design` int(10) NOT NULL,
  `usablity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ratingtable`
--

INSERT INTO `ratingtable` (`fname`, `ui`, `performance`, `design`, `usablity`) VALUES
('Ram', 7, 9, 7, 9),
('Ram', 7, 9, 7, 9),
('Aishu', 8, 9, 9, 10),
('Aishu', 8, 9, 9, 10),
('Aishu', 8, 9, 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `reviewtable`
--

CREATE TABLE `reviewtable` (
  `username` varchar(20) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewtable`
--

INSERT INTO `reviewtable` (`username`, `comment`, `time`) VALUES
('Abi', 'good', '10/03/20 2.36:46<bSat, 03 Oct 2020 02:36:46 +0200>'),
('Abi', 'good', '10/03/20 2.36:46<bSat, 03 Oct 2020 02:36:46 +0200>'),
('Ram', 'nice', '10/03/20 2.43:37<bSat, 03 Oct 2020 02:43:37 +0200>'),
('Aishu', 'Nice website', '10/11/20 0.48:13<bSun, 11 Oct 2020 00:48:13 +0200>');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_title` varchar(100) NOT NULL,
  `V_Url` text NOT NULL,
  `V_Remarks` text NOT NULL,
  `fname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_title`, `V_Url`, `V_Remarks`, `fname`) VALUES
('javascript', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/o1IaduQICO0\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Java Script course\r\n', 'Diya'),
('android', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tomZHVWx-tU\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Android course', 'kripa'),
('reactjs', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/DLX62G4lc44\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'React js lecture', 'Dhamu'),
('java', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/grEKMHGYyns\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Java course', 'Priya'),
('angularjs', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/TRrL5j3MIvo\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Angular js', 'Aishu'),
('c++', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/mUQZ1qmKlLY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'C++ tutorial', 'Surya'),
('jade', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kt3cEjjkCZA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jade course-pug template', 'Priya'),
('bootstrap', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gqOEoUR5RHg\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Bootstrap lecture', 'Dhamu'),
('php', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/OK_JCtrrv-c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'PHP Tutorial', 'Diya'),
('web-ui', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_Hp_dI0DzY4\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'UI design course\r\n', 'Surya'),
('Nodejs', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/RLtyhwFtXQA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Node js tutorial', 'kripa'),
('vue-js', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/4deVCNJq3qc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Vue-js tutorial for beginner', 'Aishu'),
('maven', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/x8sMN4tossY\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Maven tutorial', 'Priya'),
('perl', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/IoLVCEr207w\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'perl course', 'Dhamu'),
('chart-js', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/B4Vmm3yZPgc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Django chart-js tutorial', 'Diya'),
('mongodb', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CaKoJ9rFo8c\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Mongodb tutorial', 'Surya');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
