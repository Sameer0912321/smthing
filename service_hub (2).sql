-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 03:17 PM
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
-- Database: `service_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(12) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedback`) VALUES
(1, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', 'Good start, but remember to handle file uploads using $_FILES to prevent errors.'),
(2, 'Sameer Feroz', 'ferozsameer07@gmail.com', 'Consider using prepared statements to protect against SQL injection vulnerabilities.'),
(3, 'Zain', 'zain@gmail.com', 'File upload handling needs to be corrected. $_POST should not be used for file data.'),
(4, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', ';asdasidhhasofidfsodifjsdofisjdfsdfjaspdfoijeedpsdj');

-- --------------------------------------------------------

--
-- Table structure for table `hiring`
--

CREATE TABLE `hiring` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `coverletter` varchar(255) NOT NULL,
  `edu` varchar(255) NOT NULL,
  `experience` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `reference` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hiring`
--

INSERT INTO `hiring` (`id`, `fullname`, `email`, `phone`, `address`, `position`, `price`, `resume`, `coverletter`, `edu`, `experience`, `startdate`, `reference`) VALUES
(5, 'Fatima Khan', 'fatima.khan@example.com', 934567890, '789 Maple St, Anytown, USA', 'Maid', 12000, 'fatima_resume.pdf', 'I am Fatima, experienced in cleaning and household management.', '', 2, '2024-09-15', 'Nazia Ahmed'),
(6, 'John Smith', 'john.smith@example.com', 912345678, '123 Oak St, Anytown, USA', 'Electrician', 20000, 'john_resume.docx', 'John Smith, skilled electrician with over 5 years of experience.', '', 5, '2024-11-01', 'Peter Lee'),
(7, 'Aisha Rani', 'aisha.rani@example.com', 923456789, '321 Pine St, Anytown, USA', 'Mopper', 14000, 'aisha_resume.pdf', 'Experienced mopper with attention to detail and reliability.', '', 4, '2024-10-10', 'Sara Ali'),
(8, 'Michael Brown', 'michael.brown@example.com', 901234567, '654 Cedar St, Anytown, USA', 'Plumber', 22000, 'michael_resume.doc', 'Michael Brown, expert plumber with extensive field experience.', '', 6, '2024-10-20', 'James Wilson'),
(9, 'Sarah Lee', 'sarah.lee@example.com', 945678901, '987 Birch St, Anytown, USA', 'Housekeeper', 16000, 'sarah_resume.pdf', 'Detail-oriented housekeeper with a track record of maintaining cleanliness.', '', 3, '2024-11-05', 'Laura Scott'),
(10, 'Ali Ahmed', 'ali.ahmed@example.com', 965432109, '852 Willow St, Anytown, USA', 'Gardener', 13000, 'ali_resume.docx', 'Ali Ahmed, skilled gardener with knowledge of plants and maintenance.', '', 2, '2024-12-01', 'Mohammad Tariq'),
(11, 'Emma Davis', 'emma.davis@example.com', 976543210, '741 Elm St, Anytown, USA', 'Electrician', 21000, 'emma_resume.pdf', 'Emma Davis, reliable electrician with years of experience.', '', 4, '2024-10-15', 'Robert King'),
(12, 'Omar Faruk', 'omar.faruk@example.com', 956789012, '963 Maple St, Anytown, USA', 'Maid', 11000, 'omar_resume.doc', 'Omar Faruk, experienced maid with excellent cleaning skills.', '', 3, '2024-09-25', 'Ahmed Khan'),
(13, 'Linda Patel', 'linda.patel@example.com', 987654321, '147 Oak St, Anytown, USA', 'Cleaner', 12500, 'linda_resume.pdf', 'Linda Patel, dedicated cleaner with strong work ethic.', '', 2, '2024-11-10', 'Sonia Gupta'),
(14, 'Zainab Bibi', 'zainab.bibi@example.com', 912345678, '258 Pine St, Anytown, USA', 'Electrician', 19500, 'zainab_resume.docx', 'Zainab Bibi, skilled electrician with a passion for the trade.', '', 4, '2024-10-25', 'Javed Iqbal'),
(15, 'Usman Ahmad', 'usman.ahmad@example.com', 934567891, '852 Cedar St, Anytown, USA', 'Mopper', 13500, 'usman_resume.pdf', 'Usman Ahmad, dedicated mopper with strong attention to detail.', '', 3, '2024-11-20', 'Hassan Raza'),
(16, 'Rashid Khan', 'rashid.khan@example.com', 923456780, '963 Birch St, Anytown, USA', 'Gardener', 14000, 'rashid_resume.docx', 'Rashid Khan, experienced gardener with knowledge of horticulture.', '', 5, '2024-10-30', 'Mina Bibi'),
(17, 'Ayesha Noor', 'ayesha.noor@example.com', 954321098, '741 Maple St, Anytown, USA', 'Maid', 13000, 'ayesha_resume.pdf', 'Ayesha Noor, professional maid with reliable references.', '', 3, '2024-12-01', 'Shahnaz Iqbal'),
(18, 'Junaid Akhtar', 'junaid.akhtar@example.com', 978901234, '321 Cedar St, Anytown, USA', 'Cleaner', 11500, 'junaid_resume.docx', 'Junaid Akhtar, experienced cleaner with excellent references.', '', 4, '2024-10-05', 'Nadia Ali'),
(19, 'Khadija Ameen', 'khadija.ameen@example.com', 945678902, '654 Willow St, Anytown, USA', 'Electrician', 22500, 'khadija_resume.pdf', 'Khadija Ameen, certified electrician with 6 years of experience.', '', 6, '2024-11-15', 'Farhan Qureshi'),
(20, 'Zara Khan', 'zara.khan@example.com', 981234567, '852 Maple St, Anytown, USA', 'Mopper', 14500, 'zara_resume.doc', 'Zara Khan, reliable mopper with a strong work ethic.', '', 3, '2024-12-10', 'Arif Ali'),
(21, 'Ahmed Nadeem', 'ahmed.nadeem@example.com', 965432108, '963 Elm St, Anytown, USA', 'Plumber', 23000, 'ahmed_resume.pdf', 'Ahmed Nadeem, professional plumber with extensive experience.', '', 7, '2024-10-20', 'Sana Bibi'),
(22, 'Rehana Javed', 'rehana.javed@example.com', 934567892, '741 Birch St, Anytown, USA', 'Housekeeper', 15500, 'rehana_resume.docx', 'Rehana Javed, experienced housekeeper with a strong attention to detail.', '', 4, '2024-11-25', 'Ali Rehman'),
(23, 'Saira Zafar', 'saira.zafar@example.com', 923456781, '852 Cedar St, Anytown, USA', 'Maid', 12500, 'saira_resume.pdf', 'Saira Zafar, diligent maid with years of experience.', '', 2, '2024-10-05', 'Wasiq Ali'),
(24, 'Asad Qureshi', 'asad.qureshi@example.com', 956789013, '963 Willow St, Anytown, USA', 'Electrician', 20500, 'asad_resume.pdf', 'Asad Qureshi, skilled electrician with over 5 years of experience.', '', 5, '2024-10-30', 'Rehana Bibi'),
(25, 'Mariam Noor', 'mariam.noor@example.com', 987654322, '741 Elm St, Anytown, USA', 'Mopper', 13000, 'mariam_resume.doc', 'Mariam Noor, experienced mopper with excellent references.', '', 3, '2024-11-05', 'Javed Malik'),
(26, 'Jamal Raza', 'jamal.raza@example.com', 934567893, '852 Pine St, Anytown, USA', 'Gardener', 15000, 'jamal_resume.pdf', 'Jamal Raza, professional gardener with extensive horticultural knowledge.', '', 5, '2024-12-01', 'Shazia Iqbal'),
(27, 'Nadia Malik', 'nadia.malik@example.com', 976543211, '321 Maple St, Anytown, USA', 'Maid', 12000, 'nadia_resume.docx', 'Nadia Malik, experienced maid with excellent cleaning skills.', '', 3, '2024-10-10', 'Faraz Khan'),
(28, 'Bilal Ahmed', 'bilal.ahmed@example.com', 954321097, '654 Birch St, Anytown, USA', 'Cleaner', 13000, 'bilal_resume.doc', 'Bilal Ahmed, reliable cleaner with a strong work ethic.', '', 4, '2024-11-20', 'Sophie Ali'),
(29, 'Hina Aslam', 'hina.aslam@example.com', 934567894, '963 Willow St, Anytown, USA', 'Electrician', 20000, 'hina_resume.docx', 'Hina Aslam, experienced electrician with strong technical skills.', '', 5, '2024-11-25', 'Imran Rafiq'),
(30, 'Sara Sheikh', 'sara.sheikh@example.com', 965432100, '741 Pine St, Anytown, USA', 'Mopper', 14000, 'sara_resume.pdf', 'Sara Sheikh, diligent mopper with great attention to detail.', '', 4, '2024-12-15', 'Tariq Ali'),
(31, 'Fatima Khan', 'fatima.khan@example.com', 934567890, '789 Maple St, Anytown, USA', 'Maid', 12000, 'fatima_resume.pdf', 'I am Fatima, experienced in cleaning and household management.', '', 2, '2024-09-15', 'Nazia Ahmed'),
(32, 'John Smith', 'john.smith@example.com', 912345678, '123 Oak St, Anytown, USA', 'Electrician', 20000, 'john_resume.docx', 'John Smith, skilled electrician with over 5 years of experience.', '', 5, '2024-11-01', 'Peter Lee'),
(33, 'Aisha Rani', 'aisha.rani@example.com', 923456789, '321 Pine St, Anytown, USA', 'Mopper', 14000, 'aisha_resume.pdf', 'Experienced mopper with attention to detail and reliability.', '', 4, '2024-10-10', 'Sara Ali'),
(34, 'Michael Brown', 'michael.brown@example.com', 901234567, '654 Cedar St, Anytown, USA', 'Plumber', 22000, 'michael_resume.doc', 'Michael Brown, expert plumber with extensive field experience.', '', 6, '2024-10-20', 'James Wilson'),
(35, 'Sarah Lee', 'sarah.lee@example.com', 945678901, '987 Birch St, Anytown, USA', 'Housekeeper', 16000, 'sarah_resume.pdf', 'Detail-oriented housekeeper with a track record of maintaining cleanliness.', '', 3, '2024-11-05', 'Laura Scott'),
(36, 'Ali Ahmed', 'ali.ahmed@example.com', 965432109, '852 Willow St, Anytown, USA', 'Gardener', 13000, 'ali_resume.docx', 'Ali Ahmed, skilled gardener with knowledge of plants and maintenance.', '', 2, '2024-12-01', 'Mohammad Tariq'),
(37, 'Emma Davis', 'emma.davis@example.com', 976543210, '741 Elm St, Anytown, USA', 'Electrician', 21000, 'emma_resume.pdf', 'Emma Davis, reliable electrician with years of experience.', '', 4, '2024-10-15', 'Robert King'),
(38, 'Omar Faruk', 'omar.faruk@example.com', 956789012, '963 Maple St, Anytown, USA', 'Maid', 11000, 'omar_resume.doc', 'Omar Faruk, experienced maid with excellent cleaning skills.', '', 3, '2024-09-25', 'Ahmed Khan'),
(39, 'Linda Patel', 'linda.patel@example.com', 987654321, '147 Oak St, Anytown, USA', 'Cleaner', 12500, 'linda_resume.pdf', 'Linda Patel, dedicated cleaner with strong work ethic.', '', 2, '2024-11-10', 'Sonia Gupta'),
(40, 'Zainab Bibi', 'zainab.bibi@example.com', 912345678, '258 Pine St, Anytown, USA', 'Electrician', 19500, 'zainab_resume.docx', 'Zainab Bibi, skilled electrician with a passion for the trade.', '', 4, '2024-10-25', 'Javed Iqbal'),
(41, 'Usman Ahmad', 'usman.ahmad@example.com', 934567891, '852 Cedar St, Anytown, USA', 'Mopper', 13500, 'usman_resume.pdf', 'Usman Ahmad, dedicated mopper with strong attention to detail.', '', 3, '2024-11-20', 'Hassan Raza'),
(42, 'Rashid Khan', 'rashid.khan@example.com', 923456780, '963 Birch St, Anytown, USA', 'Gardener', 14000, 'rashid_resume.docx', 'Rashid Khan, experienced gardener with knowledge of horticulture.', '', 5, '2024-10-30', 'Mina Bibi'),
(43, 'Ayesha Noor', 'ayesha.noor@example.com', 954321098, '741 Maple St, Anytown, USA', 'Maid', 13000, 'ayesha_resume.pdf', 'Ayesha Noor, professional maid with reliable references.', '', 3, '2024-12-01', 'Shahnaz Iqbal'),
(44, 'Junaid Akhtar', 'junaid.akhtar@example.com', 978901234, '321 Cedar St, Anytown, USA', 'Cleaner', 11500, 'junaid_resume.docx', 'Junaid Akhtar, experienced cleaner with excellent references.', '', 4, '2024-10-05', 'Nadia Ali'),
(45, 'Khadija Ameen', 'khadija.ameen@example.com', 945678902, '654 Willow St, Anytown, USA', 'Electrician', 22500, 'khadija_resume.pdf', 'Khadija Ameen, certified electrician with 6 years of experience.', '', 6, '2024-11-15', 'Farhan Qureshi'),
(46, 'Zara Khan', 'zara.khan@example.com', 981234567, '852 Maple St, Anytown, USA', 'Mopper', 14500, 'zara_resume.doc', 'Zara Khan, reliable mopper with a strong work ethic.', '', 3, '2024-12-10', 'Arif Ali'),
(47, 'Ahmed Nadeem', 'ahmed.nadeem@example.com', 965432108, '963 Elm St, Anytown, USA', 'Plumber', 23000, 'ahmed_resume.pdf', 'Ahmed Nadeem, professional plumber with extensive experience.', '', 7, '2024-10-20', 'Sana Bibi'),
(48, 'Rehana Javed', 'rehana.javed@example.com', 934567892, '741 Birch St, Anytown, USA', 'Housekeeper', 15500, 'rehana_resume.docx', 'Rehana Javed, experienced housekeeper with a strong attention to detail.', '', 4, '2024-11-25', 'Ali Rehman'),
(49, 'Saira Zafar', 'saira.zafar@example.com', 923456781, '852 Cedar St, Anytown, USA', 'Maid', 12500, 'saira_resume.pdf', 'Saira Zafar, diligent maid with years of experience.', '', 2, '2024-10-05', 'Wasiq Ali'),
(50, 'Asad Qureshi', 'asad.qureshi@example.com', 956789013, '963 Willow St, Anytown, USA', 'Electrician', 20500, 'asad_resume.pdf', 'Asad Qureshi, skilled electrician with over 5 years of experience.', '', 5, '2024-10-30', 'Rehana Bibi'),
(51, 'Mariam Noor', 'mariam.noor@example.com', 987654322, '741 Elm St, Anytown, USA', 'Mopper', 13000, 'mariam_resume.doc', 'Mariam Noor, experienced mopper with excellent references.', '', 3, '2024-11-05', 'Javed Malik'),
(52, 'Jamal Raza', 'jamal.raza@example.com', 934567893, '852 Pine St, Anytown, USA', 'Gardener', 15000, 'jamal_resume.pdf', 'Jamal Raza, professional gardener with extensive horticultural knowledge.', '', 5, '2024-12-01', 'Shazia Iqbal'),
(53, 'Nadia Malik', 'nadia.malik@example.com', 976543211, '321 Maple St, Anytown, USA', 'Maid', 12000, 'nadia_resume.docx', 'Nadia Malik, experienced maid with excellent cleaning skills.', '', 3, '2024-10-10', 'Faraz Khan'),
(54, 'Bilal Ahmed', 'bilal.ahmed@example.com', 954321097, '654 Birch St, Anytown, USA', 'Cleaner', 13000, 'bilal_resume.doc', 'Bilal Ahmed, reliable cleaner with a strong work ethic.', '', 4, '2024-11-20', 'Sophie Ali'),
(55, 'Hina Aslam', 'hina.aslam@example.com', 934567894, '963 Willow St, Anytown, USA', 'Electrician', 20000, 'hina_resume.docx', 'Hina Aslam, experienced electrician with strong technical skills.', '', 5, '2024-11-25', 'Imran Rafiq'),
(56, 'Sara Sheikh', 'sara.sheikh@example.com', 965432100, '741 Pine St, Anytown, USA', 'Mopper', 14000, 'sara_resume.pdf', 'Sara Sheikh, diligent mopper with great attention to detail.', '', 4, '2024-12-15', 'Tariq Ali'),
(57, 'Fatima Khan', 'fatima.khan@example.com', 934567890, '789 Maple St, Anytown, USA', 'Maid', 12000, 'fatima_resume.pdf', 'I am Fatima, experienced in cleaning and household management.', '', 2, '2024-09-15', 'Nazia Ahmed'),
(58, 'John Smith', 'john.smith@example.com', 912345678, '123 Oak St, Anytown, USA', 'Electrician', 20000, 'john_resume.docx', 'John Smith, skilled electrician with over 5 years of experience.', '', 5, '2024-11-01', 'Peter Lee'),
(59, 'Aisha Rani', 'aisha.rani@example.com', 923456789, '321 Pine St, Anytown, USA', 'Mopper', 14000, 'aisha_resume.pdf', 'Experienced mopper with attention to detail and reliability.', '', 4, '2024-10-10', 'Sara Ali'),
(60, 'Michael Brown', 'michael.brown@example.com', 901234567, '654 Cedar St, Anytown, USA', 'Plumber', 22000, 'michael_resume.doc', 'Michael Brown, expert plumber with extensive field experience.', '', 6, '2024-10-20', 'James Wilson'),
(61, 'Sarah Lee', 'sarah.lee@example.com', 945678901, '987 Birch St, Anytown, USA', 'Housekeeper', 16000, 'sarah_resume.pdf', 'Detail-oriented housekeeper with a track record of maintaining cleanliness.', '', 3, '2024-11-05', 'Laura Scott'),
(62, 'Ali Ahmed', 'ali.ahmed@example.com', 965432109, '852 Willow St, Anytown, USA', 'Gardener', 13000, 'ali_resume.docx', 'Ali Ahmed, skilled gardener with knowledge of plants and maintenance.', '', 2, '2024-12-01', 'Mohammad Tariq'),
(63, 'Emma Davis', 'emma.davis@example.com', 976543210, '741 Elm St, Anytown, USA', 'Electrician', 21000, 'emma_resume.pdf', 'Emma Davis, reliable electrician with years of experience.', '', 4, '2024-10-15', 'Robert King'),
(64, 'Omar Faruk', 'omar.faruk@example.com', 956789012, '963 Maple St, Anytown, USA', 'Maid', 11000, 'omar_resume.doc', 'Omar Faruk, experienced maid with excellent cleaning skills.', '', 3, '2024-09-25', 'Ahmed Khan'),
(65, 'Linda Patel', 'linda.patel@example.com', 987654321, '147 Oak St, Anytown, USA', 'Cleaner', 12500, 'linda_resume.pdf', 'Linda Patel, dedicated cleaner with strong work ethic.', '', 2, '2024-11-10', 'Sonia Gupta'),
(66, 'Zainab Bibi', 'zainab.bibi@example.com', 912345678, '258 Pine St, Anytown, USA', 'Electrician', 19500, 'zainab_resume.docx', 'Zainab Bibi, skilled electrician with a passion for the trade.', '', 4, '2024-10-25', 'Javed Iqbal'),
(67, 'Usman Ahmad', 'usman.ahmad@example.com', 934567891, '852 Cedar St, Anytown, USA', 'Mopper', 13500, 'usman_resume.pdf', 'Usman Ahmad, dedicated mopper with strong attention to detail.', '', 3, '2024-11-20', 'Hassan Raza'),
(68, 'Rashid Khan', 'rashid.khan@example.com', 923456780, '963 Birch St, Anytown, USA', 'Gardener', 14000, 'rashid_resume.docx', 'Rashid Khan, experienced gardener with knowledge of horticulture.', '', 5, '2024-10-30', 'Mina Bibi'),
(69, 'Ayesha Noor', 'ayesha.noor@example.com', 954321098, '741 Maple St, Anytown, USA', 'Maid', 13000, 'ayesha_resume.pdf', 'Ayesha Noor, professional maid with reliable references.', '', 3, '2024-12-01', 'Shahnaz Iqbal'),
(70, 'Junaid Akhtar', 'junaid.akhtar@example.com', 978901234, '321 Cedar St, Anytown, USA', 'Cleaner', 11500, 'junaid_resume.docx', 'Junaid Akhtar, experienced cleaner with excellent references.', '', 4, '2024-10-05', 'Nadia Ali'),
(71, 'Khadija Ameen', 'khadija.ameen@example.com', 945678902, '654 Willow St, Anytown, USA', 'Electrician', 22500, 'khadija_resume.pdf', 'Khadija Ameen, certified electrician with 6 years of experience.', '', 6, '2024-11-15', 'Farhan Qureshi'),
(72, 'Zara Khan', 'zara.khan@example.com', 981234567, '852 Maple St, Anytown, USA', 'Mopper', 14500, 'zara_resume.doc', 'Zara Khan, reliable mopper with a strong work ethic.', '', 3, '2024-12-10', 'Arif Ali'),
(73, 'Ahmed Nadeem', 'ahmed.nadeem@example.com', 965432108, '963 Elm St, Anytown, USA', 'Plumber', 23000, 'ahmed_resume.pdf', 'Ahmed Nadeem, professional plumber with extensive experience.', '', 7, '2024-10-20', 'Sana Bibi'),
(74, 'Rehana Javed', 'rehana.javed@example.com', 934567892, '741 Birch St, Anytown, USA', 'Housekeeper', 15500, 'rehana_resume.docx', 'Rehana Javed, experienced housekeeper with a strong attention to detail.', '', 4, '2024-11-25', 'Ali Rehman'),
(75, 'Saira Zafar', 'saira.zafar@example.com', 923456781, '852 Cedar St, Anytown, USA', 'Maid', 12500, 'saira_resume.pdf', 'Saira Zafar, diligent maid with years of experience.', '', 2, '2024-10-05', 'Wasiq Ali'),
(76, 'Asad Qureshi', 'asad.qureshi@example.com', 956789013, '963 Willow St, Anytown, USA', 'Electrician', 20500, 'asad_resume.pdf', 'Asad Qureshi, skilled electrician with over 5 years of experience.', '', 5, '2024-10-30', 'Rehana Bibi'),
(77, 'Mariam Noor', 'mariam.noor@example.com', 987654322, '741 Elm St, Anytown, USA', 'Mopper', 13000, 'mariam_resume.doc', 'Mariam Noor, experienced mopper with excellent references.', '', 3, '2024-11-05', 'Javed Malik'),
(78, 'Jamal Raza', 'jamal.raza@example.com', 934567893, '852 Pine St, Anytown, USA', 'Gardener', 15000, 'jamal_resume.pdf', 'Jamal Raza, professional gardener with extensive horticultural knowledge.', '', 5, '2024-12-01', 'Shazia Iqbal'),
(79, 'Nadia Malik', 'nadia.malik@example.com', 976543211, '321 Maple St, Anytown, USA', 'Maid', 12000, 'nadia_resume.docx', 'Nadia Malik, experienced maid with excellent cleaning skills.', '', 3, '2024-10-10', 'Faraz Khan'),
(80, 'Bilal Ahmed', 'bilal.ahmed@example.com', 954321097, '654 Birch St, Anytown, USA', 'Cleaner', 13000, 'bilal_resume.doc', 'Bilal Ahmed, reliable cleaner with a strong work ethic.', '', 4, '2024-11-20', 'Sophie Ali'),
(81, 'Hina Aslam', 'hina.aslam@example.com', 934567894, '963 Willow St, Anytown, USA', 'Electrician', 20000, 'hina_resume.docx', 'Hina Aslam, experienced electrician with strong technical skills.', '', 5, '2024-11-25', 'Imran Rafiq'),
(82, 'Sara Sheikh', 'sara.sheikh@example.com', 965432100, '741 Pine St, Anytown, USA', 'Mopper', 14000, 'sara_resume.pdf', 'Sara Sheikh, diligent mopper with great attention to detail.', '', 4, '2024-12-15', 'Tariq Ali'),
(83, 'Hassan Tariq', 'hassan.tariq@example.com', 978901235, '852 Oak St, Anytown, USA', 'Plumber', 24000, 'hassan_resume.pdf', 'Hassan Tariq, certified plumber with extensive experience in the field.', '', 8, '2024-09-15', 'Nazia Ahmed'),
(87, 'Sameer', 'ferozsameer07@gmail.com', 2147483647, 'Karachi', 'Electrician', 20000, '', 'My name is sameer and im an electrician', 'high-school', 0, '2024-08-10', ''),
(88, 'Sameer', 'ferozsameer07@gmail.com', 2147483647, 'Karachi', 'Maid', 20000, '', 'my name is sameer and i can be your maid for 24 hours', 'high-school', 0, '2024-08-13', ''),
(89, 'Abdullah', 'a@gmail.com', 2147483647, 'Karachi', 'Maid', 1000, 'upload/', 'My name is abd and ican do plumbing chore you will provide', 'high-school', 2, '2024-08-03', 'irtiza'),
(90, 'Abdullah', 'a@gmail.com', 2147483647, 'Karachi', 'Cleaner', 25000, 'upload/', 'My name is abd and i can do cleaning chore you will provide', 'high-school', 1, '2024-08-15', 'irtiza'),
(91, 'Abdullah', 'a@gmail.com', 2147483647, 'Karachi', 'Maid', 25000, 'upload/', 'i Am Cleaner', 'high-school', 3, '2024-08-10', 'irtiza'),
(92, 'Abdullah', 'a@gmail.com', 2147483647, 'Karachi', 'Cleaner', 25000, 'upload/Chapter 6. Reproductive System (Female)  Lecture2.pptx', 'My name is abdullah and i can clean anything', 'high-school', 3, '2024-08-23', 'irtiza'),
(93, 'Abdullah', 'a@gmail.com', 2147483647, 'Karachi', 'Electrician', 25000, 'upload/Chapter 3  Connective Tissue Lecture 2 (6).pptx', 'My name is abdullah and im an electrician', 'high-school', 25, '2024-08-29', 'Sameer'),
(94, 'Sameer', 'ferozsameer07@gmail.com', 2147483647, 'Karachi', 'Cleaner', 10000, 'upload/HYBRIDIZATION.pptx', 'My name is sameer and i can do cleaning chores', 'high-school', 5, '2024-08-15', 'irtiza'),
(95, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', 2147483647, '5.A.4/17 nazimabad no.5 karachi.', 'Barber', 40000, 'upload/Barber.jpg', 'My name is feroz and iam a barber', 'bachelor-degree', 9, '2024-08-16', 'Sameer Feroz'),
(96, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', 2147483647, '5.A.4/17 nazimabad no.5 karachi.', 'Barber', 40000, 'upload/Barber.jpg', 'My name is feroz and iam a barber', 'bachelor-degree', 9, '2024-08-16', 'Sameer Feroz'),
(97, 'FEROZ IMTIAZ', 'feroz22may@gmail.com', 2147483647, '5.A.4/17 nazimabad no.5 karachi.', 'Barber', 1200000, 'upload/cleaner.jpg', 'lorem ipsum dolor', 'associate-degree', 20, '2024-08-29', 'sameer');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `cpass` varchar(255) NOT NULL,
  `nic` varchar(255) DEFAULT NULL,
  `pho` int(11) DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `pass`, `cpass`, `nic`, `pho`, `dates`, `age`, `gender`, `role`) VALUES
(6, 'Sameer  ', 'ferozsameer07@gmail.com', '$2y$10$R/GYA47mOvtoQBwDx0Ti9OzgACcxYdib2yDuh/DblraD2KwRtkWau', '$2y$10$G29N3LfpopdDmIVuCJ04f.LFbMSE81C3LPtfu3p7N1JqkRN8rn2Zm', '12345678888', 2147483647, '2024-08-12', 22, 'Male', 'Job Seeking'),
(7, 'Abdullah ', 'a@gmail.com', '$2y$10$QPwUkVTpLRORD4KC9M.g5e.jOY4.TfiGVPVEKZDn/dnns6X5tz0tS', '$2y$10$ANwXJMCfTglEHkXey1G07u5fwX2g/t8FvtrHbhnTUYhz5gdjLd1Bi', '12345678888', 2147483647, '2024-08-20', 90, 'Male', 'Hiring');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiring`
--
ALTER TABLE `hiring`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hiring`
--
ALTER TABLE `hiring`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
