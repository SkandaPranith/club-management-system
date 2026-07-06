-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2026 at 11:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `active_clubs_view`
-- (See below for the actual view)
--
CREATE TABLE `active_clubs_view` (
`club_id` int(11)
,`club_name` varchar(100)
,`member_count` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `student_id` char(13) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `status` char(1) NOT NULL
) ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `student_id`, `event_id`, `status`) VALUES
(1, 'AP24110011525', 1, 'P'),
(2, 'AP24110011525', 2, 'P'),
(3, 'AP24110011525', 3, 'P'),
(4, 'AP24110011525', 4, 'P'),
(5, 'AP24110011525', 5, 'A'),
(6, 'AP24110010607', 1, 'P'),
(7, 'AP24110010607', 2, 'P'),
(8, 'AP24110010607', 3, 'P'),
(9, 'AP24110010607', 4, 'P'),
(10, 'AP24110010607', 5, 'P'),
(11, 'AP24110010233', 1, 'P'),
(12, 'AP24110010233', 2, 'P'),
(13, 'AP24110010233', 3, 'A'),
(14, 'AP24110010233', 4, 'P'),
(15, 'AP24110010233', 5, 'P'),
(16, 'AP24111260031', 1, 'P'),
(17, 'AP24111260031', 2, 'A'),
(18, 'AP24111260031', 3, 'P'),
(19, 'AP24111260031', 4, 'A'),
(20, 'AP24111260031', 5, 'P'),
(21, 'AP24111260069', 1, 'A'),
(22, 'AP24111260069', 2, 'P'),
(23, 'AP24111260069', 3, 'A'),
(24, 'AP24111260069', 4, 'A'),
(25, 'AP24111260069', 5, 'P'),
(26, 'AP24110011809', 1, 'P'),
(27, 'AP24110011809', 2, 'P'),
(28, 'AP24110011809', 3, 'A'),
(29, 'AP24110011809', 4, 'P'),
(30, 'AP24110011809', 5, 'P'),
(31, 'AP24110011812', 1, 'A'),
(32, 'AP24110011812', 2, 'P'),
(33, 'AP24110011812', 3, 'P'),
(34, 'AP24110011812', 4, 'P'),
(35, 'AP24110011812', 5, 'A'),
(36, 'AP24110013001', 1, 'P'),
(37, 'AP24110013001', 2, 'A'),
(38, 'AP24110013001', 3, 'A'),
(39, 'AP24110013001', 4, 'A'),
(40, 'AP24110013001', 5, 'P'),
(41, 'AP24110013002', 1, 'A'),
(42, 'AP24110013002', 2, 'P'),
(43, 'AP24110013002', 3, 'A'),
(44, 'AP24110013002', 4, 'A'),
(45, 'AP24110013002', 5, 'A'),
(46, 'AP24110013003', 1, 'P'),
(47, 'AP24110013003', 2, 'A'),
(48, 'AP24110013003', 3, 'P'),
(49, 'AP24110013003', 4, 'A'),
(50, 'AP24110013003', 5, 'A');

-- --------------------------------------------------------

--
-- Stand-in structure for view `budget_efficiency_view`
-- (See below for the actual view)
--
CREATE TABLE `budget_efficiency_view` (
`club_name` varchar(100)
,`spent_budget` decimal(32,2)
,`budget_allocated` decimal(10,2)
,`usage_percent` decimal(38,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `club_id` int(11) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `advisor` varchar(100) DEFAULT NULL,
  `advisor_email` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `budget_allocated` decimal(10,2) DEFAULT NULL CHECK (`budget_allocated` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`club_id`, `club_name`, `advisor`, `advisor_email`, `location`, `budget_allocated`) VALUES
(1, 'Cinemates', 'Dr. Rao', 'dr.rao@srmap.edu.in', 'Cinemates Studio, 7th Floor, V Block', 50000.00),
(2, 'SEDS', 'Dr. Sharma', 'dr.sharma@srmap.edu.in', 'C209', 60000.00),
(3, 'History', 'Dr. Mehta', 'dr.mehta@srmap.edu.in', 'C802', 30000.00),
(4, 'Dance', 'Ms. Priya', 'ms.priya@srmap.edu.in', 'Dance Studio, 7th Floor, V Block', 40000.00),
(5, 'Music', 'Mr. Arjun', 'mr.arjun@srmap.edu.in', 'Music Studio, 7th Floor, V Block', 45000.00);

-- --------------------------------------------------------

--
-- Stand-in structure for view `club_leaders_view`
-- (See below for the actual view)
--
CREATE TABLE `club_leaders_view` (
`club_id` int(11)
,`club_name` varchar(100)
,`student_id` char(13)
,`student_name` varchar(100)
,`student_email` varchar(50)
,`club_role` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `club_membership`
--

CREATE TABLE `club_membership` (
  `membership_id` int(11) NOT NULL,
  `student_id` char(13) NOT NULL,
  `club_id` int(11) NOT NULL,
  `club_role` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL
) ;

--
-- Dumping data for table `club_membership`
--

INSERT INTO `club_membership` (`membership_id`, `student_id`, `club_id`, `club_role`, `start_date`, `end_date`) VALUES
(1, 'AP24110011809', 1, 'General', '2024-08-01', '2025-01-01'),
(2, 'AP24110011809', 2, 'Outreach', '2025-01-02', NULL),
(3, 'AP24110011812', 3, 'General', '2024-08-01', '2025-01-01'),
(4, 'AP24110011812', 4, 'Events', '2025-01-02', NULL),
(5, 'AP24110011525', 1, 'Convenor', '2024-08-01', NULL),
(6, 'AP24110010607', 2, 'Convenor', '2024-08-01', NULL),
(7, 'AP24110010233', 3, 'Convenor', '2024-08-01', NULL),
(8, 'AP24110010245', 4, 'Convenor', '2024-08-01', NULL),
(9, 'AP24110010952', 5, 'Convenor', '2024-08-01', NULL),
(10, 'AP24111260031', 1, 'Co-Convenor', '2024-08-01', NULL),
(11, 'AP24111260069', 2, 'Co-Convenor', '2024-08-01', NULL),
(12, 'AP23110010670', 3, 'Co-Convenor', '2024-08-01', NULL),
(13, 'AP23110050012', 4, 'Co-Convenor', '2024-08-01', NULL),
(14, 'AP23211220005', 5, 'Co-Convenor', '2024-08-01', NULL),
(15, 'AP24110010349', 1, 'Content Writer', '2024-08-01', NULL),
(16, 'AP24110010367', 2, 'Content Writer', '2024-08-01', NULL),
(17, 'AP24110010741', 3, 'Content Writer', '2024-08-01', NULL),
(18, 'AP24110011657', 4, 'Content Writer', '2024-08-01', NULL),
(19, 'AP24110011705', 5, 'Content Writer', '2024-08-01', NULL),
(20, 'AP24111260002', 1, 'Outreach', '2024-08-01', NULL),
(21, 'AP24111260010', 2, 'Outreach', '2024-08-01', NULL),
(22, 'AP24111260013', 3, 'Outreach', '2024-08-01', NULL),
(23, 'AP24111260016', 4, 'Outreach', '2024-08-01', NULL),
(24, 'AP24111260061', 5, 'Outreach', '2024-08-01', NULL),
(25, 'AP24311010105', 1, 'Events', '2024-08-01', NULL),
(26, 'AP24110040002', 2, 'Events', '2024-08-01', NULL),
(27, 'AP24110011485', 3, 'Events', '2024-08-01', NULL),
(28, 'AP24110020131', 4, 'Events', '2024-08-01', NULL),
(29, 'AP24110012032', 5, 'Events', '2024-08-01', NULL),
(30, 'AP24111260021', 1, 'Design', '2024-08-01', NULL),
(31, 'AP24110010088', 2, 'Design', '2024-08-01', NULL),
(32, 'AP24110011174', 3, 'Design', '2024-08-01', NULL),
(33, 'AP24110010052', 4, 'Design', '2024-08-01', NULL),
(34, 'AP24111260053', 5, 'Design', '2024-08-01', NULL),
(35, 'AP24110013001', 1, 'General', '2024-08-01', NULL),
(36, 'AP24110013002', 2, 'General', '2024-08-01', NULL),
(37, 'AP24110013003', 3, 'General', '2024-08-01', NULL),
(38, 'AP24110013004', 4, 'General', '2024-08-01', NULL),
(39, 'AP24110013005', 5, 'General', '2024-08-01', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `club_switcher_details_view`
-- (See below for the actual view)
--
CREATE TABLE `club_switcher_details_view` (
`membership_id` int(11)
,`student_id` char(13)
,`club_id` int(11)
,`club_role` varchar(20)
,`start_date` date
,`end_date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `club_switcher_view`
-- (See below for the actual view)
--
CREATE TABLE `club_switcher_view` (
`student_id` char(13)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `club_switch_timeline_view`
-- (See below for the actual view)
--
CREATE TABLE `club_switch_timeline_view` (
`student_id` char(13)
,`club_id` int(11)
,`start_date` date
,`end_date` date
);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_date` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `event_location` varchar(100) DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL CHECK (`budget` >= 0)
) ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `club_id`, `event_name`, `event_date`, `duration`, `event_location`, `budget`) VALUES
(1, 1, 'Short Film Fest', '2025-02-01', 3, 'Auditorium', 10000.00),
(2, 2, 'Rocket Workshop', '2025-02-05', 2, 'C209', 12000.00),
(3, 3, 'History Debate', '2025-02-10', 2, 'C802', 8000.00),
(4, 4, 'Dance Battle', '2025-02-12', 3, 'Dance Studio', 9000.00),
(5, 5, 'Music Night', '2025-02-15', 4, 'Music Studio', 11000.00);

-- --------------------------------------------------------

--
-- Table structure for table `event_attendance`
--

CREATE TABLE `event_attendance` (
  `event_id` int(11) NOT NULL,
  `student_id` char(13) NOT NULL,
  `event_role` varchar(20) NOT NULL,
  `participated_at` datetime DEFAULT current_timestamp()
) ;

--
-- Dumping data for table `event_attendance`
--

INSERT INTO `event_attendance` (`event_id`, `student_id`, `event_role`, `participated_at`) VALUES
(1, 'AP24110010349', 'Volunteer', '2025-02-01 00:00:00'),
(1, 'AP24110011525', 'Lead', '2025-02-01 00:00:00'),
(1, 'AP24110011809', 'Volunteer', '2024-12-01 00:00:00'),
(1, 'AP24110013001', 'Participant', '2025-02-01 00:00:00'),
(1, 'AP24111260031', 'Core', '2025-02-01 00:00:00'),
(2, 'AP24110010367', 'Volunteer', '2025-02-05 00:00:00'),
(2, 'AP24110010607', 'Lead', '2025-02-05 00:00:00'),
(2, 'AP24110011809', 'Core', '2025-02-05 00:00:00'),
(2, 'AP24110013002', 'Participant', '2025-02-05 00:00:00'),
(3, 'AP24110010233', 'Lead', '2025-02-10 00:00:00'),
(3, 'AP24110011812', 'Volunteer', '2024-12-01 00:00:00'),
(4, 'AP24110010245', 'Lead', '2025-02-12 00:00:00'),
(4, 'AP24110011812', 'Participant', '2025-02-12 00:00:00'),
(5, 'AP24110010952', 'Lead', '2025-02-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` char(13) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_email`) VALUES
('AP23110010670', 'Ritvik Sharma', 'ritvik_sharma@srmap.edu.in'),
('AP23110050012', 'Neha Iyer', 'neha_iyer@srmap.edu.in'),
('AP23211220005', 'Tanvi Kulkarni', 'tanvi_kulkarni@srmap.edu.in'),
('AP24110010052', 'Saurav Mishra', 'saurav_mishra@srmap.edu.in'),
('AP24110010088', 'Nikhil Jain', 'nikhil_jain@srmap.edu.in'),
('AP24110010233', 'Bhagat Singh', 'bhagat_singh@srmap.edu.in'),
('AP24110010245', 'Rakesh', 'rakesh@srmap.edu.in'),
('AP24110010349', 'Rohan Gupta', 'rohan_gupta@srmap.edu.in'),
('AP24110010367', 'Meera Joshi', 'meera_joshi@srmap.edu.in'),
('AP24110010607', 'Skanda', 'skanda@srmap.edu.in'),
('AP24110010741', 'Aditya Rao', 'aditya_rao@srmap.edu.in'),
('AP24110010952', 'Arjit Singh', 'arjit_singh@srmap.edu.in'),
('AP24110011174', 'Kriti Sharma', 'kriti_sharma@srmap.edu.in'),
('AP24110011485', 'Riya Kapoor', 'riya_kapoor@srmap.edu.in'),
('AP24110011525', 'Prabhar Parker', 'prabhar_parker@srmap.edu.in'),
('AP24110011657', 'Ishaan Kapoor', 'ishaan_kapoor@srmap.edu.in'),
('AP24110011705', 'Nisha Reddy', 'nisha_reddy@srmap.edu.in'),
('AP24110011809', 'Varun Malhotra', 'varun_malhotra@srmap.edu.in'),
('AP24110011812', 'Ananya Sen', 'ananya_sen@srmap.edu.in'),
('AP24110011819', 'Karan Batra', 'karan_batra@srmap.edu.in'),
('AP24110012032', 'Simran Kaur', 'simran_kaur@srmap.edu.in'),
('AP24110013001', 'Tyler Durden', 'tyler_durden@srmap.edu.in'),
('AP24110013002', 'Amelie Poulain', 'amelie_poulain@srmap.edu.in'),
('AP24110013003', 'Donnie Darko', 'donnie_darko@srmap.edu.in'),
('AP24110013004', 'Travis Bickle', 'travis_bickle@srmap.edu.in'),
('AP24110013005', 'Jordan Belfort', 'jordan_belfort@srmap.edu.in'),
('AP24110013006', 'Naina Talwar', 'naina_talwar@srmap.edu.in'),
('AP24110013007', 'Barfi', 'barfi@srmap.edu.in'),
('AP24110013008', 'Ved Vardhan', 'ved_vardhan@srmap.edu.in'),
('AP24110013009', 'Kabir Singh', 'kabir_singh@srmap.edu.in'),
('AP24110013010', 'Faizal Khan', 'faizal_khan@srmap.edu.in'),
('AP24110020131', 'Aryan Khanna', 'aryan_khanna@srmap.edu.in'),
('AP24110040002', 'Vikram Sethi', 'vikram_sethi@srmap.edu.in'),
('AP24111260002', 'Dev Mehta', 'dev_mehta@srmap.edu.in'),
('AP24111260010', 'Sanya Arora', 'sanya_arora@srmap.edu.in'),
('AP24111260013', 'Harsh Vardhan', 'harsh_vardhan@srmap.edu.in'),
('AP24111260016', 'Pooja Singh', 'pooja_singh@srmap.edu.in'),
('AP24111260021', 'Deepak Yadav', 'deepak_yadav@srmap.edu.in'),
('AP24111260031', 'Ayaan Verma', 'ayaan_verma@srmap.edu.in'),
('AP24111260053', 'Aditi Rao', 'aditi_rao@srmap.edu.in'),
('AP24111260061', 'Rahul Desai', 'rahul_desai@srmap.edu.in'),
('AP24111260069', 'Kabir Nair', 'kabir_nair@srmap.edu.in'),
('AP24311010105', 'Sneha Pillai', 'sneha_pillai@srmap.edu.in');

-- --------------------------------------------------------

--
-- Structure for view `active_clubs_view`
--
DROP TABLE IF EXISTS `active_clubs_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `active_clubs_view`  AS SELECT `c`.`club_id` AS `club_id`, `c`.`club_name` AS `club_name`, count(`cm`.`student_id`) AS `member_count` FROM (`club` `c` join `club_membership` `cm` on(`c`.`club_id` = `cm`.`club_id`)) GROUP BY `c`.`club_id`, `c`.`club_name` ORDER BY count(`cm`.`student_id`) DESC ;

-- --------------------------------------------------------

--
-- Structure for view `budget_efficiency_view`
--
DROP TABLE IF EXISTS `budget_efficiency_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `budget_efficiency_view`  AS SELECT `c`.`club_name` AS `club_name`, sum(`e`.`budget`) AS `spent_budget`, `c`.`budget_allocated` AS `budget_allocated`, round(sum(`e`.`budget`) / `c`.`budget_allocated` * 100,2) AS `usage_percent` FROM (`club` `c` left join `events` `e` on(`c`.`club_id` = `e`.`club_id`)) GROUP BY `c`.`club_name`, `c`.`budget_allocated` ;

-- --------------------------------------------------------

--
-- Structure for view `club_leaders_view`
--
DROP TABLE IF EXISTS `club_leaders_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `club_leaders_view`  AS SELECT `c`.`club_id` AS `club_id`, `c`.`club_name` AS `club_name`, `s`.`student_id` AS `student_id`, `s`.`student_name` AS `student_name`, `s`.`student_email` AS `student_email`, `cm`.`club_role` AS `club_role` FROM ((`club` `c` join `club_membership` `cm` on(`c`.`club_id` = `cm`.`club_id`)) join `students` `s` on(`cm`.`student_id` = `s`.`student_id`)) WHERE `cm`.`club_role` in ('Convenor','Co-Convenor') ;

-- --------------------------------------------------------

--
-- Structure for view `club_switcher_details_view`
--
DROP TABLE IF EXISTS `club_switcher_details_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `club_switcher_details_view`  AS SELECT `cm`.`membership_id` AS `membership_id`, `cm`.`student_id` AS `student_id`, `cm`.`club_id` AS `club_id`, `cm`.`club_role` AS `club_role`, `cm`.`start_date` AS `start_date`, `cm`.`end_date` AS `end_date` FROM `club_membership` AS `cm` WHERE exists(select 1 from `club_membership` `cm2` where `cm`.`student_id` = `cm2`.`student_id` AND `cm`.`club_id` <> `cm2`.`club_id` limit 1) ;

-- --------------------------------------------------------

--
-- Structure for view `club_switcher_view`
--
DROP TABLE IF EXISTS `club_switcher_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `club_switcher_view`  AS SELECT DISTINCT `cm`.`student_id` AS `student_id` FROM `club_membership` AS `cm` WHERE exists(select 1 from `club_membership` `cm2` where `cm`.`student_id` = `cm2`.`student_id` AND `cm`.`club_id` <> `cm2`.`club_id` limit 1) ;

-- --------------------------------------------------------

--
-- Structure for view `club_switch_timeline_view`
--
DROP TABLE IF EXISTS `club_switch_timeline_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `club_switch_timeline_view`  AS SELECT `club_membership`.`student_id` AS `student_id`, `club_membership`.`club_id` AS `club_id`, `club_membership`.`start_date` AS `start_date`, `club_membership`.`end_date` AS `end_date` FROM `club_membership` ORDER BY `club_membership`.`student_id` ASC, `club_membership`.`start_date` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`),
  ADD UNIQUE KEY `club_name` (`club_name`);

--
-- Indexes for table `club_membership`
--
ALTER TABLE `club_membership`
  ADD PRIMARY KEY (`membership_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `event_attendance`
--
ALTER TABLE `event_attendance`
  ADD PRIMARY KEY (`event_id`,`student_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_email` (`student_email`),
  ADD UNIQUE KEY `student_email_2` (`student_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `club_membership`
--
ALTER TABLE `club_membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);

--
-- Constraints for table `club_membership`
--
ALTER TABLE `club_membership`
  ADD CONSTRAINT `club_membership_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `club_membership_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`);

--
-- Constraints for table `event_attendance`
--
ALTER TABLE `event_attendance`
  ADD CONSTRAINT `event_attendance_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
