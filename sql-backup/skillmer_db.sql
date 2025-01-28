-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2025 at 12:11 PM
-- Server version: 8.0.40-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skillmer_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_values` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `title`, `description`, `vision`, `mission`, `core_values`, `about_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p>Experts Skill Merge is a leading organization committed to closing the gap between academic learning and industry requirements through our structured internship programs. Located in Ernakulam, Kerala, we are an integral part of the JB Group of Institutions, known for its dedication to academic and professional excellence</p>', '<p>To be the leading provider of industry-integrated internships, known for quality, innovation, and student success. We envision seamless transitions from academia to thriving careers, driving industry and economic growth</p>', '<p>Our mission is to equip students with practical skills and industry insights for career success. We transform academic knowledge into real-world expertise, preparing interns for the dynamic job market</p>', '<ul><li><strong>Excellence:</strong> We strive for the highest standards in our programs, providing exceptional learning experiences.</li><li><strong>Integrity:</strong> We uphold honesty and transparency in all our interactions and operations.</li><li><strong>Innovation:</strong> We constantly seek to enhance and innovate our programs to stay ahead of industry trends.</li><li><strong>Collaboration:</strong> We believe in the power of partnerships with academic institutions and industry leaders</li><li><strong>Empowerment:</strong> We are dedicated to empowering students with the skills and confidence needed for career success.</li></ul>', 'about_images/TfWnqRY51tNOuuiwzRhuJlRnrhNCqm2eC4fQUORk.svg', NULL, '2024-07-21 23:52:03', '2024-07-24 23:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `admission_applications`
--

CREATE TABLE `admission_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `applicants_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selected_course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address_for_communication` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caste` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matriculation_10th_board` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `plus_two_marks_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `keam_entrance_marks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `other_qualifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `guardians_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `local_guardian_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `annual_family_income` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_hostel_facility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirement_travelling_facility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_by` text COLLATE utf8mb4_unicode_ci,
  `declaration_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `aminities`
--

CREATE TABLE `aminities` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aminities`
--

INSERT INTO `aminities` (`id`, `title`, `icon_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Workspace', 'aminities_icon/LHs4TWYMuNFP50p4WAFGTWcCwrb2bfLvlksclGDc.png', NULL, '2024-08-06 04:36:56', '2024-08-06 04:36:56'),
(2, 'Offer letter, SOP and other documents', 'aminities_icon/afONqWxkD0d59uowt9PXrdnF8cuYuKJeJW3UBjnD.png', NULL, '2024-08-06 04:38:52', '2024-08-06 04:38:52'),
(3, 'Welcome kit (Laptop and other essentials)', 'aminities_icon/lK9qH3LBtZWcatF9uAQoa94OCsZXpgR2V09JMBHI.png', NULL, '2024-08-06 04:39:12', '2024-08-06 04:39:12'),
(4, 'Resources (Tool box)', 'aminities_icon/56JXm8M2J5qWgpgmlaGKupvuDwo2OL4TwaGJvVtl.png', NULL, '2024-08-06 04:39:48', '2024-08-06 04:39:48'),
(5, 'Free Wi-Fi/ Internet', 'aminities_icon/8BdEDuBH3D7NQUzdq6P9qEDuDOUasiBzKXogH7OX.png', NULL, '2024-08-06 04:40:40', '2024-08-06 04:40:40'),
(6, 'License for Premium Tools', 'aminities_icon/xdCnSE8ZmbBlV0ayFXZxjjALsSS7BoakdyQYhvq4.png', NULL, '2024-08-06 04:41:08', '2024-08-06 04:41:08'),
(7, 'Wifi Jammer kit', 'aminities_icon/UaVNu4BEKaffBy4ylMqju4ojRxJg7ZEgssjGXd4o.png', NULL, '2024-08-06 04:41:58', '2024-08-06 04:41:58'),
(8, 'Live Lab Access', 'aminities_icon/hkevfbWzgsX0QpVFzNzZeFO81PDQ9ho812wl5XLc.png', NULL, '2024-08-06 04:43:50', '2024-08-06 04:43:50'),
(9, 'Azure Cloud Access', 'aminities_icon/tWq2jJei5eYKdZwHUjwb3gaNuUSqLZodQllAf2gH.png', NULL, '2024-08-06 04:44:09', '2024-08-06 04:44:09'),
(10, 'Hardware Hacking Kits', 'aminities_icon/2mwZ7NqQIUAwUY2s7UfsQXVgyTmFsXWD58icGLSu.png', NULL, '2024-08-06 04:44:44', '2024-08-06 04:44:44'),
(11, 'Access to Webinars, Conference', 'aminities_icon/dEDxX6IERpFqcel80LPvuczqeOyDnz4CDNVLaPb1.png', NULL, '2024-08-06 04:45:14', '2024-08-06 04:45:14'),
(12, 'Expert Guidance', 'aminities_icon/rWF4zwpvL2t3lx32UaGSWCt4wNNGjtE4o62nGGy2.png', NULL, '2024-08-06 04:45:39', '2024-08-06 04:45:39'),
(13, 'Networking opportunities', 'aminities_icon/SEQ7JJta9li4kjjBrDBZiHQa4Vhkd31kFNnhlH0h.png', NULL, '2024-08-06 04:46:02', '2024-08-06 04:46:02'),
(14, 'Career upscaling guidance', 'aminities_icon/r9BYnBf4RT7hctMIMWqO9YOAVzv1uPR8Iilymfad.png', NULL, '2024-08-06 04:46:38', '2024-08-06 04:46:38'),
(15, 'Weekend activities', 'aminities_icon/jKnjYN0arWJGZCkJvSDh8EIqtlxsp6sXoFh0TVlb.png', NULL, '2024-08-06 04:46:56', '2024-08-06 04:46:56'),
(16, 'Team building activities', 'aminities_icon/X0iWZykOAyab6AuXLibayHMbmBANuqrwxBk5m8ok.png', NULL, '2024-08-06 04:47:18', '2024-08-06 04:47:18'),
(17, 'Pantry', 'aminities_icon/5agxCcA4rkUwJy4XvQ9ZyiQqtlrfzCLaYzNXF2Jo.png', NULL, '2024-08-06 04:47:32', '2024-08-06 04:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('05553d1c02f8fadac1b795797f76f9c4', 'i:1;', 1731557332),
('05553d1c02f8fadac1b795797f76f9c4:timer', 'i:1731557332;', 1731557332),
('0b9e7ba7a448fd7b21a1b22d286f1cb2', 'i:1;', 1728882826),
('0b9e7ba7a448fd7b21a1b22d286f1cb2:timer', 'i:1728882825;', 1728882825),
('54be638607679f26647c940541dab790', 'i:1;', 1730196038),
('54be638607679f26647c940541dab790:timer', 'i:1730196038;', 1730196038),
('59c49447c7cb0051a5dfd264e03cb14f', 'i:1;', 1732614439),
('59c49447c7cb0051a5dfd264e03cb14f:timer', 'i:1732614439;', 1732614439),
('61a908c3d7b4e2dd4a1e624455b91f5a', 'i:1;', 1730204054),
('61a908c3d7b4e2dd4a1e624455b91f5a:timer', 'i:1730204054;', 1730204054),
('6b3a13f0c5763f76ae15dc36e07dfa8b', 'i:1;', 1728114041),
('6b3a13f0c5763f76ae15dc36e07dfa8b:timer', 'i:1728114041;', 1728114041),
('7d8241da9c3ee8a9d7c942827844d877', 'i:1;', 1730544830),
('7d8241da9c3ee8a9d7c942827844d877:timer', 'i:1730544830;', 1730544830),
('935610787fb87c6436263200e48094a0', 'i:1;', 1728883475),
('935610787fb87c6436263200e48094a0:timer', 'i:1728883475;', 1728883475),
('ab41952a06f704fb08b85c049c911a2c', 'i:1;', 1732081698),
('ab41952a06f704fb08b85c049c911a2c:timer', 'i:1732081698;', 1732081698),
('ba0b7808764addd7f4b886eacd9a3b17', 'i:1;', 1732608671),
('ba0b7808764addd7f4b886eacd9a3b17:timer', 'i:1732608671;', 1732608671),
('d58bba8bc8976abf8f5722f94d2daa0b', 'i:1;', 1723806793),
('d58bba8bc8976abf8f5722f94d2daa0b:timer', 'i:1723806793;', 1723806793),
('e3544e61f27e7dec8a44ac579a92c9f6', 'i:2;', 1730175641),
('e3544e61f27e7dec8a44ac579a92c9f6:timer', 'i:1730175641;', 1730175641),
('eff220306562140ce84e3354d2d884cd', 'i:1;', 1738046309),
('eff220306562140ce84e3354d2d884cd:timer', 'i:1738046309;', 1738046309),
('skillmerge@gmail.com|120.61.176.61', 'i:1;', 1728882828),
('skillmerge@gmail.com|120.61.176.61:timer', 'i:1728882828;', 1728882828);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone_number`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'fgfdgh', 'dssds@ssad.hkjh', '6235006006', 'tstyrty', NULL, '2024-11-02 04:01:00', '2024-11-02 04:01:00'),
(2, 'fygfy', 'dftrgdrtd@resdre.gyfvy', '64564564564', 'fytrty', NULL, '2024-11-02 04:02:21', '2024-11-02 04:02:21'),
(3, 'gdfghf', 'dfgdf@sdfdf.gds', '345435345', 'fghfghfg', NULL, '2024-11-02 04:23:55', '2024-11-02 04:23:55'),
(4, 'dgdf', 'fdhd@tert.dfg', '4775888798', 'tytuyt', NULL, '2024-11-02 04:25:24', '2024-11-02 04:25:24'),
(5, 'DFFGDG', 'sdg@dfdgf.jljk', '6235006006', 'ertet', NULL, '2024-11-02 04:39:22', '2024-11-02 04:39:22'),
(6, 'Mohammed Rinaz', 'rinazmohammed10@gmail.com', '9656631728', 'Hlo sir', NULL, '2024-12-20 14:05:27', '2024-12-20 14:05:27'),
(7, 'Neethu', 'n4neethurafi@gmail.com', '9747575786', 'Interested to doing  Artificial intelligence...share more details to my WhatsApp', NULL, '2025-01-10 01:09:11', '2025-01-10 01:09:11'),
(8, 'Nidha', 'nf4023346@gmail.com', '7907823260', 'Python full stack django traing details for fresher', NULL, '2025-01-26 08:27:50', '2025-01-26 08:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `intership_program_id` bigint UNSIGNED NOT NULL,
  `course_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `advance_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliverables` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `intership_program_id`, `course_title`, `course_duration`, `advance_amount`, `monthly_amount`, `deliverables`, `deleted_at`, `created_at`, `updated_at`) VALUES
(32, 2, 'Internship L1', '3 months', '15 k', '<ul><li>Online: 6k</li><li>Offline: 3k</li></ul>', '<ul><li>Internship certification</li><li>Internship Performance Letter</li><li>License for premium tools*</li><li>Wi-Fi Jammer Kit</li><li>Live Lab Access During Internship</li><li>Azure Cloud During Internship</li></ul>', NULL, '2024-08-06 05:59:26', '2024-08-06 05:59:26'),
(33, 2, 'Internship L2', '6 months', '15 k', '<ul><li>Online: 6k</li><li>Offline: 3k</li></ul>', '<ul><li>Internship Certificates</li><li>Internship Performance Letter</li><li>License for Premium Tools</li><li>5 Hardware Hacking Kits</li><li>Advanced Lab Access</li><li>Azure Cloud During Internship</li><li>Soft skill Training</li><li>Global certification at ATC cost</li><li>Mock Interview</li><li>Placement Training</li><li>MNC Interview Arrangements</li><li>Assured Placement Support</li></ul>', NULL, '2024-08-06 05:59:26', '2024-08-06 05:59:26'),
(34, 2, 'Internship L3', '1 year', '15 k', '<ul><li>Online: 6k</li><li>Offline: 3k</li></ul>', '<ul><li>Internship Certificates</li><li>Internship Performance Letter</li><li>License for Premium Tools</li><li>5 Hardware Hacking Kits</li><li>Advanced Lab Access</li><li>Azure Cloud During Internship</li><li>Soft skill Training</li><li>Global certification at ATC cost</li><li>Mock Interview</li><li>Placement Training</li><li>MNC Interview Arrangements</li><li>Assured Placement Support</li></ul>', NULL, '2024-08-06 05:59:26', '2024-08-06 05:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f_a_q_s`
--

CREATE TABLE `f_a_q_s` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_q_s`
--

INSERT INTO `f_a_q_s` (`id`, `question`, `answer`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'What is hire to Train Program for?', '<p>The Hire to train Program starts with client confirming their requirements. Various candidate pools are tapped. Candidates go through a selection process and provided with an offer letter with a post-bootcamp joining date, subject to successful completion of the bootcamp. Bootcamp ends with an assessment and offer is confirmed by the client for candidates.</p>', NULL, '2024-07-31 01:11:32', '2024-07-31 01:11:32'),
(2, 'What is the cost of the HTT Program?', '<p>The cost of the program is about 50,000/- which can be paid after placement. Other than internship training fee, the candidates need to pay a sum of 15,000/- as security deposit which will be returned to the candidate on completion of internship. The candidate also needs to pay an occupancy fee of 6000/- for offline internship and 3000/- for online internship monthly for the amenities provided to him/her.</p>', NULL, '2024-07-31 01:12:10', '2024-07-31 01:12:10'),
(3, 'How does it work?', '<p>The HTT program is primarily Candidate Driven and Candidate paid. We do not charge the Client. However, there are other model variants available. On a case by case basis, we publish them in our requirements for a particular cohort.</p>', NULL, '2024-07-31 01:12:36', '2024-07-31 01:12:36'),
(4, 'what is the duration ?', '<p>Depending on the client requirements, the duration may vary somewhat, but it\'s normally 6-9 months fresher.</p>', NULL, '2024-07-31 01:15:01', '2024-07-31 01:15:01'),
(5, 'Will I learn the Technologies required during the Bootcamp?', '<p>The Bootcamp follows the principle of application of Technology through projects. Any skills that you may not possess but is required as part of the client needs will have to be learnt by you. Mentors will help you choose the right skills to learn in the easiest and fastest possible way. In some cases, we will run Pre-bootcamp workshops for this purpose.</p>', NULL, '2024-07-31 01:15:33', '2024-07-31 01:15:33'),
(6, 'What is the Selection Process?', '<p>Selection processes depend on the requirements of the client. They will have a combination of aptitude tests, communication skills, programming skills test, etc.</p>', NULL, '2024-07-31 01:15:57', '2024-07-31 01:15:57'),
(7, 'How is the Evaluation after Bootcamp conducted?', '<p>Again, the Bootcamp assessment can be different from client to client. However, it will be a combination of your<br>score on periodic tests, quality of project work , project document quality , etc.</p>', NULL, '2024-07-31 01:16:21', '2024-07-31 01:16:21'),
(8, 'Will I get to select the Technology for my Bootcamp?', '<p>Yes, you will be able to select the technology for your bootcamp after completion of Ai based Job Fitment Analysis. The analysis report gives you exact idea on which technology to be opted.</p>', NULL, '2024-07-31 01:16:44', '2024-07-31 01:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `global_certification_partners`
--

CREATE TABLE `global_certification_partners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_certification_partners`
--

INSERT INTO `global_certification_partners` (`id`, `title`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'CISCO', 'certification_partners_logo/F3UjeDqW98udECoL5jug5IpouaaQRuTyNTRoJnoL.jpg', NULL, '2024-08-06 03:16:06', '2024-08-06 03:16:06'),
(2, 'Microsoft', 'certification_partners_logo/1gjEIYO8eQuVC2FoGxpPdBF53ikrWKd4MhKxw1Yd.jpg', NULL, '2024-08-06 03:45:08', '2024-08-06 03:45:08'),
(3, 'Palo Auto', 'certification_partners_logo/5kShB1UBJBP4rQ6FAQk3WUDJIOR3U10rHj34r1B6.jpg', NULL, '2024-08-06 03:46:05', '2024-08-06 03:46:05'),
(4, 'Fortinet', 'certification_partners_logo/7XKfGmXHkjjsZZqZvLTSeQVctQg6jW6pg8belnCF.jpg', NULL, '2024-08-06 03:46:46', '2024-08-06 03:46:46'),
(5, 'Sophos', 'certification_partners_logo/YXhqu1XGlxTGObRyfmEhYLU7pNy8PAnLEljRLGW6.jpg', NULL, '2024-08-06 03:48:41', '2024-08-06 03:48:41'),
(6, 'EC Council', 'certification_partners_logo/8lo033glRWsGvcYOHl1WQY62mVAPgvMvnY6JVkLv.jpg', NULL, '2024-08-06 03:57:13', '2024-08-06 03:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `hackverse_communities`
--

CREATE TABLE `hackverse_communities` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hackverse_communities`
--

INSERT INTO `hackverse_communities` (`id`, `title`, `description`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Hackverse', '<p>At Expert’s Skill Merge Hub, we have created Hackverse, a vibrant community for our cyber security interns. This exclusive network fosters collaboration, innovation, and professional growth among aspiring cyber security professionals. Hackverse provides a platform for students to share ideas, engage in discussions, and collaborate on projects. It offers access to expert-led webinars, interactive hackathons, and real-time problem-solving sessions to enhance practical skills and deepen understanding of cyber security challenges. Join Hackverse and be part of a community driving the future of cyber security.&nbsp;</p>', 'hackverse-image/lECPUfVS6iXZuF74x7YZwc19UDwwqa2n7gS75Tia.png', NULL, '2024-07-31 00:27:09', '2024-08-03 06:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `description`, `image`, `pdf_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Learn from the Experts, While you work with Them.', 'Innovative Learning Environment:\r\n\r\nWe foster a dynamic and supportive atmosphere with access to cutting-edge technology, enabling interns to thrive and excel in their fields.', 'slider_images/E1I8zI5hZIEhMDnWcCeIXn3fwZIjHwlUsSTdDbSq.jpg', 'esm_pdf/INRuFrpNZViVrpemzPI3SdT4pswFYGdwzff6WgYl.pdf', NULL, '2024-07-22 02:05:06', '2024-08-14 04:08:01'),
(3, 'Learn from the Experts, While you work with Them.', 'Innovative Learning Environment:\r\n\r\nWe foster a dynamic and supportive atmosphere with access to cutting-edge technology, enabling interns to thrive and excel in their fields.', 'slider_images/q6TrveUduLVR3GoQhxCbgA9IKnfyTuy552dzxAsD.jpg', 'esm_pdf/hU4UgfgyBN8rkHjNnEZrtvDfDXNRWQaXjv6CifNy.pdf', NULL, '2024-07-31 01:43:42', '2024-08-01 01:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `internship_programs`
--

CREATE TABLE `internship_programs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_details` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internship_programs`
--

INSERT INTO `internship_programs` (`id`, `title`, `program_details`, `key_details`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'CYBERSECURITY', '<h4>Hire-to-Train (HTT) Model: Unlock Your Career Potential with Our Hackverse Program</h4><p>Our HTT Model is meticulously crafted to produce job-ready engineers equipped with essential skills, ensuring they meet industry standards from day one.</p><p>Hackverse is a vibrant community for cyber security interns at Expert Skill Merge. It fosters collaboration, innovation, and professional growth, providing a platform for sharing ideas, discussions, and cutting-edge projects. Interns benefit from expert-led webinars, hackathons, and real-time problem-solving sessions.<br>In partnership with Ozone Cyber Security Pvt Ltd, interns receive top-notch training and real-world exposure. Join Hackverse and be part of the future of cyber security.</p>', '[{\"title\":\"Our Process\",\"description\":\"<p><strong>1. Identify the Requirement<\\/strong><br>We start by understanding the specific needs of our cyber security industry partners.<br><strong>2. Sourcing<\\/strong><br>We source a pool of candidates through social media and college associations who are interested in a career in cyber security<strong>.<\\/strong><br><strong>3. Job fitment Analysis<\\/strong><br>Conducting job fitment analysis through our online portal to assess candidates\' suitability for current cyber security positions.<br><strong>4. Onboarding<\\/strong><br>Selected candidates receive internship offer letters from our cyber security industry partners and are assigned an IT Recruitment Career Mentor.<br><strong>5. Develop<\\/strong><br>Candidates undergo internships with our associated companies, gaining hands-on experience with real-time scenarios.<br><strong>6. Hiring<\\/strong><br>After completing the course, candidates are ready for hiring by our industry partners.<\\/p>\"},{\"title\":\"Key Features\",\"description\":\"<p><strong>Comprehensive Job fitment Screening<\\/strong><br>Our screening test identifies the right competencies in candidates for effective skill development.<br><strong>Hands-on Bootcamp Program<\\/strong><br>Intensive training to equip candidates with practical skills.<br><strong>Rigorous 1:1 Interview Preparation<\\/strong><br>Personalized coaching to enhance interview performance.<br><strong>High Success Rate<\\/strong><br>Exceptional success in placing candidates in niche roles such as Cyber Security Engineer, Ethical Hacker, Penetration Tester, and more.<br><strong>100% Practical Experience<\\/strong><br>Project-based learning to ensure real-world applicability of skills.<\\/p>\"},{\"title\":\"Deliverables\",\"description\":\"<p>- <strong>Experience Certificate<\\/strong><br>A formal certificate acknowledging the hands-on experience gained during the internship.<br>- <strong>Internship Performance Letter<\\/strong><br>A detailed performance letter from the cyber security company where the internship was completed.<br>- Association with Cyber Security Experts<\\/p><p>Ongoing connections and mentorship from industry-leading cyber security experts.<br>- <strong>Global Certifications<\\/strong><br>Recognition through globally recognized certifications relevant to cyber security.<\\/p><p><strong>Ready to transform your career?<\\/strong> [<a href=\\\"https:\\/\\/skillmerge.hungerfreeworld.in\\/#\\/apply\\\">Apply Now<\\/a>]<\\/p><p>&nbsp;<\\/p><p>As a fresher in cybersecurity, you can work in several entry-level positions that provide a strong foundation for a career in this field. Here are some common roles:<\\/p><p>&nbsp;<\\/p><p>1. <strong>Security Analyst<\\/strong>: Monitors and protects an organization\\u2019s network and systems from cyber threats, analyzing security breaches and implementing protective measures.<br>2. <strong>Network Security Engineer<\\/strong>: Ensures the security of an organization\\u2019s network infrastructure, setting up firewalls, and configuring security settings to safeguard against unauthorized access.<br>3. <strong>Incident Responder<\\/strong>: Responds to and investigates security incidents, analyzing the causes and mitigating the impact to prevent future occurrences.<br>4. <strong>IT Auditor<\\/strong>: Reviews and assesses an organization\\u2019s IT infrastructure, policies, and operations to ensure compliance with security standards and best practices.<br>5. <strong>Compliance Analys<\\/strong>t: Ensures that the organization complies with cybersecurity laws and regulations, maintaining records and preparing reports for audits.<br>6. <strong>Penetration Tester (Junior)<\\/strong>: Conducts tests on systems and networks to identify vulnerabilities that could be exploited by attackers, helping to strengthen security measures.<br>7. <strong>Security Operations Center (SOC) Analyst<\\/strong>: Works in a team to monitor and respond to security events in real time, analyzing data from various sources to detect and mitigate threats.<br>8. <strong>Risk Analyst<\\/strong>: Assesses potential risks to an organization\\u2019s data and systems, recommending measures to minimize the impact of these risks.<br>9. <strong>Cybersecurity Consultant (Junior):<\\/strong> Provides advice and support to organizations on how to improve their cybersecurity posture, working on various projects and assessments.<br>10. <strong>Application Security Specialist (Junior)<\\/strong>: Focuses on ensuring the security of software applications, identifying and fixing security issues during the development process.<\\/p>\"}]', 'course_images/5jgfQwzybl1H4FIuyowrbEpMJ68aCBYMG01pXg4c.jpg', NULL, '2024-07-30 05:24:44', '2024-08-01 00:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `latest_jobs`
--

CREATE TABLE `latest_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `latest_jobs`
--

INSERT INTO `latest_jobs` (`id`, `company`, `position`, `location`, `details`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ozone Cyber Security Pvt Ltd', 'Cyber security Analyst (Fresher )', 'Kochi, Coimbatore', '<ul><li>➢ Monitoring security systems</li><li>➢ Investing security breaches</li><li>➢ Assisting in vulnerability assessments</li></ul>', NULL, '2024-07-30 23:23:28', '2024-07-31 01:25:12'),
(2, 'Ozone Cyber Security Pvt Ltd', 'Cyber security Analyst (Fresher )', 'Kochi, Coimbatore', '<ul><li>➢ Monitoring security systems</li><li>➢ Investing security breaches</li><li>➢ Assisting in vulnerability assessments</li></ul>', NULL, '2024-07-30 23:45:57', '2024-08-03 05:20:24'),
(3, 'Ozone Cyber Security Pvt Ltd', 'Cyber security Analyst (Fresher )', 'Kochi, Coimbatore', '<ul><li>➢ Monitoring security systems</li><li>➢ Investing security breaches</li><li>➢ Assisting in vulnerability assessments</li></ul>', NULL, '2024-07-30 23:48:03', '2024-08-03 05:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_17_112609_create_website_updates_table', 1),
(5, '2024_07_17_112907_create_about_us_table', 1),
(6, '2024_07_19_043216_create_teams_table', 1),
(7, '2024_07_19_063406_create_home_sliders_table', 1),
(8, '2024_07_19_063437_create_what__we__dos_table', 1),
(9, '2024_07_19_065352_create_program_details_table', 1),
(10, '2024_07_19_065404_create_programs_table', 1),
(11, '2024_07_19_070127_create_why_choose_us_table', 1),
(12, '2024_07_19_071213_create_our_approachs_table', 1),
(13, '2024_07_19_071519_create_selection_process_details_table', 1),
(14, '2024_07_19_072740_create_selection_processes_table', 1),
(15, '2024_07_19_081055_add_two_factor_columns_to_users_table', 1),
(16, '2024_07_19_081337_create_personal_access_tokens_table', 1),
(17, '2024_07_23_101035_create_students_table', 2),
(18, '2024_07_23_104529_create_newsand_blogs_table', 3),
(19, '2024_07_30_055343_create_internship_programs_table', 4),
(20, '2024_07_30_085028_create_courses_table', 5),
(21, '2024_07_30_122401_create_latest_jobs_table', 6),
(22, '2024_07_31_052430_create_hackverse_communities_table', 7),
(23, '2024_07_31_060030_create_testimonials_table', 8),
(24, '2024_07_31_062930_create_f_a_q_s_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `newsand_blogs`
--

CREATE TABLE `newsand_blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsand_blogs`
--

INSERT INTO `newsand_blogs` (`id`, `title`, `description`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Industry Insights', '<p>Our industry insights delve into current cybersecurity challenges, emerging technologies, and best practices that highlight the importance of this integrated approach.</p><ul><li>Technological Innovations</li><li>Regulatory Changes</li><li>Cybersecurity Economics</li></ul>', 'news_and_blogs_image/F30IBVkdlXb2vakSxv5C4Ectz68zoA8LnkFJzyCw.jpg', NULL, '2024-07-23 06:01:08', '2024-07-30 00:17:04'),
(3, 'Student Projects', '<p>Student projects in cybersecurity often showcase innovative solutions and practical applications of knowledge gained through academic coursework and hands-on training</p><ul><li>Penetration Testing and Vulnerability Assessment</li><li>Ethical Hacking Challenges</li></ul>', 'news_and_blogs_image/se3g1rRAyN4ADGCcC6KQpfy8hF9ygyft3WxYyvQ9.jpg', NULL, '2024-07-23 06:11:26', '2024-07-30 00:17:34'),
(10, 'Ethical Hacking Course in Kochi: A Complete Guide to Getting Started in Cybersecurity', '<p>In today\'s digital world, cyber threats keep growing. This makes the need for skilled cybersecurity experts higher than ever. Kochi, Kerala\'s tech hub, is a top spot for starting a career in ethical hacking and cybersecurity. The ethical hacking course in Kochi teaches you the skills needed to fight cybercrime effectively.</p><figure class=\"image\"><img src=\"https://skillmerge.in/backend/storage/app/public/ckEditor/uploads/dIFwv6kI9gRDok8GsTlgCo5IkFwCOWJ784mWrMso.jpg\" alt=\"Ethical Hacking Course in Kochi\"></figure><p>This guide will explore why Kochi is great for ethical hacking careers. We\'ll cover what you need to start, the skills required, and the best training centers. Whether you\'re in IT or studying, this article will help you begin your path to becoming a certified ethical hacker.</p><h6><strong>Key Takeaways</strong></h6><ul><li>Kochi is a thriving tech hub with a growing demand for cybersecurity professionals.</li><li>Ethical hacking courses in Kochi provide comprehensive training in the latest cybersecurity techniques and technologies.</li><li>The ethical hacking field offers lucrative career opportunities and the chance to make a significant impact in the fight against cyber threats.</li><li>Aspiring ethical hackers can find top-tier training centers and institutes in Kochi that offer flexible learning options and industry-relevant curricula.&nbsp;</li><li>Hands-on training and real-world project experience are key components of the ethical hacking course in Kochi.</li></ul><h2><strong>Why Pursue an Ethical Hacking Career in Kochi</strong></h2><p>Kochi is a bustling tech hub in Kerala, India. It\'s a top spot for those wanting to work in ethical hacking and cybersecurity. The city offers great salaries and a strong tech scene, making it a great choice for cybersecurity fans.</p><h5><strong>Growing Demand for Cybersecurity Professionals</strong></h5><p>More businesses are using digital tech, so they need strong cybersecurity measures. Kochi, with its growing IT and start-up scene, is leading this digital change. It needs skilled ethical hackers to protect against cyber threats.</p><h5><strong>Lucrative Career Opportunities</strong></h5><p>The ethical hacking salary in Kochi is very competitive. This shows how much employers value these skills. Ethical hackers in Kochi can earn good money, with chances for promotions and bonuses.</p><h5><strong>Tech Hub Advantages</strong></h5><p>Kochi\'s tech scene is booming. It\'s full of IT companies, start-ups, and research places. These all need skilled ethical hackers to keep their digital world safe. Kochi is a great place for those into ethical hacking and cybersecurity. It has a vibrant tech scene, good salaries, and a growing need for cybersecurity skills. It\'s perfect for aspiring ethical hackers to develop their skills and find many career paths.</p><h3><strong>Understanding Ethical Hacking Course in Kochi: Comprehensive Overview</strong></h3><p>Kochi is known as Kerala\'s tech hub. It offers many ethical hacking courses. These courses help students learn the skills needed to protect digital systems from threats.</p><p>The syllabus in Kochi covers a lot of topics. Students learn about network security, how to find vulnerabilities, and how to test systems. They also get to practice with real tools, making their skills more practical.</p><ul><li>Fundamental concepts of ethical hacking and cybersecurity</li><li>Network security principles and protocols</li><li>Vulnerability assessment and penetration testing methodologies</li><li>Incident response and digital forensics</li><li>Hands-on training with ethical hacking tools and software</li></ul><p>Practical application is a big part of these courses. Students practice in simulated hacking scenarios. This way, they learn to solve real-world problems, becoming valuable in the field.</p><p>By taking an ethical hacking course in Kochi, students get a deep understanding of the field. They learn both theory and practical skills. This prepares them to protect organizations from cyber threats and improve network security.</p><h4><strong>Essential Prerequisites and Skill Requirements</strong></h4><p>To become an ethical hacker, you need a strong technical background. You must also be good at certain skills. These things help you deal with the complex world of cybersecurity.</p><h5><strong>Technical Background Requirements</strong></h5><p>You should know a lot about computer science and programming. It\'s important to understand operating systems, network protocols, and basic programming. Knowing Linux, Windows, and other operating systems is a plus.</p><h5><strong>Recommended Programming Languages</strong></h5><p>Knowing Python, Java, and C/C++ is very useful. These languages are used in making hacking tools and testing frameworks. It\'s also good to know scripting languages like Bash and PowerShell for automated tasks.</p><h5><strong>Basic Networking Knowledge</strong></h5><p>Understanding computer networking is key. You need to know about IP addressing, network protocols, and network devices. Knowing how to use network analysis tools is also important.</p><p>Meeting these technical needs and skills will help you succeed in an&nbsp;<i>ethical hacking course in Kerala</i> or&nbsp;<i>hacking workshops in Kochi</i>. It sets you up for a great career in cybersecurity.</p><blockquote><p>Ethical hacking is not just about technical skills, but also a deep understanding of the underlying systems and a commitment to using those skills responsibly.</p></blockquote><h2><strong>Top Training Centers and Institutes in Kochi</strong></h2><p>Kochi, a lively city on the Malabar Coast, is now a top spot for ethical hacking and cybersecurity training. The city\'s tech scene is booming, and there\'s a big need for skilled people. This has led to many good&nbsp;<i>ethical hacking institute Kochi</i> and&nbsp;<i>cybersecurity training institute Kochi</i> programs.</p><p>Expert’s Skill Merge Hub is a standout in Kochi. It offers a top-notch curriculum and practical training. The academy\'s team of experts gives students the latest knowledge and skills needed in the field.</p><p><a href=\"https://www.skillmerge.in/\">Skill Merge</a> platform is famous for its&nbsp;<i>ethical hacking</i> and&nbsp;<i>penetration testing</i> courses. It\'s known for producing ready-to-work professionals. The platform also has strong ties with the industry and helps with job placement.</p><figure class=\"image\"><img src=\"https://skillmerge.in/backend/storage/app/public/ckEditor/uploads/14PrrrX5JM5zVC8Qpg4TaH1rcBkrKIWXhwNppjMP.jpg\" alt=\"Ethical Hacking Course in Kochi\"></figure><p>Skill Merge Hub in Kochi offer a wide range of<a href=\"https://www.skillmerge.in/cybersecurity\">&nbsp;<i>ethical hacking</i> and&nbsp;<i>cybersecurity</i> programs</a>. They cater to people at all levels of their careers. Whether you\'re an IT pro looking to improve or a new cybersecurity enthusiast, these places provide a great learning environment to reach your goals.</p><h3><strong>Course Duration and Flexible Learning Options</strong></h3><p>Aspiring cybersecurity experts in Kochi have many choices for ethical hacking courses. These courses vary in length and offer flexible learning options. This caters to different learning styles and schedules.</p><h5><strong>Standard Course Timeline</strong></h5><p>Most training centers in Kochi offer courses lasting 3-6 months. These programs cover the basics of ethical hacking. Students learn about tools and techniques, preparing them for a career in this field.</p><h5><strong>Internship Integration</strong></h5><p>Many courses in Kochi include internships. These hands-on experiences let students apply what they\'ve learned. Internships can lead to real jobs in cybersecurity.</p><h5><strong>Weekend Batch Options</strong></h5><p>For those with busy lives,&nbsp;<i>ethical hacking training centers in Kochi</i> have weekend classes. These classes are perfect for balancing work and study. They help those looking to start or advance in cybersecurity without giving up their current jobs.</p><p>Whether you\'re a student or a working professional, Kochi\'s ethical hacking courses have something for everyone. They offer the flexibility needed to start a career in cybersecurity.</p><h3><strong>Course Curriculum and Certification Details</strong></h3><p>Starting an ethical hacking certification kochi journey means diving into a detailed curriculum. It\'s designed to give future cybersecurity experts the skills they need. The cybersecurity certification kochi programs in Kochi cover many topics. This ensures students get a well-rounded education for a successful career.</p><p>The core curriculum includes:</p><ul><li>Fundamentals of cybersecurity and ethical hacking principles</li><li>Network security and penetration testing techniques</li><li>Vulnerability assessment and mitigation strategies</li><li>Cryptography and secure coding practices</li><li>Incident response and digital forensics</li><li>Hands-on labs and real-world project simulations</li></ul><p>After finishing the ethical hacking certification kochi program, students get recognized certifications. These include the&nbsp;<a href=\"https://www.eccouncil.org/train-certify/certified-ethical-hacker-ceh/\">Certified Ethical Hacker</a> (CEH) or the&nbsp;<a href=\"https://www.comptia.org/training/by-certification/security\">CompTIA Security+</a>&nbsp;credential. These certifications show they know a lot about ethical hacking and cybersecurity. They make students more attractive to employers.</p><p>The detailed curriculum and recognized certifications from ethical hacking certification Kochi and cybersecurity certification Kochi programs in Kochi prepare students. They learn the skills and get the credentials needed to succeed in the fast-changing world of cybersecurity.</p><figure class=\"image\"><img src=\"https://skillmerge.in/backend/storage/app/public/ckEditor/uploads/Ywk60E3abowNzdlvsj6MXgY3abwVmviMtHBKWLRa.jpg\" alt=\"Ethical Hacking Course in Kochi\"></figure><h4><strong>Real-World Projects and Hands-on Training Approach</strong></h4><p>Aspiring&nbsp;<a href=\"https://www.skillmerge.in/about\">ethical hackers in Kochi</a> can look forward to a detailed, hands-on learning journey. These courses focus on real-world projects and practical training. This prepares students for the cybersecurity field\'s challenges.</p><h5><strong>Industry-Based Projects</strong></h5><p>Quality&nbsp;<a href=\"https://www.skillmerge.in/\">ethical hacking courses in Kochi&nbsp;</a>include industry-based projects. Students tackle real problems faced by companies. This gives them the practical skills and problem-solving abilities needed to succeed.</p><h5><strong>Laboratory Facilities</strong></h5><p>Ethical hacking courses in Kochi have top-notch laboratory facilities. These labs are like real-world networks and systems. They provide a safe space for learners to practice hacking techniques and tools.</p><h5><strong>Practical Assessments</strong></h5><p>These courses focus on practical skills, not just theory. Students are tested on their ability to apply their skills in real scenarios. They show they can find vulnerabilities, develop solutions, and use ethical hacking techniques.</p><p>By combining real-world projects, advanced labs, and practical tests, Kochi\'s ethical hacking courses prepare students well. This approach boosts their technical skills and problem-solving abilities. It makes them highly sought-after in the cybersecurity field.</p><h3><strong>Career Prospects and Salary Expectations</strong></h3><p>Starting a career in&nbsp;<a href=\"https://www.skillmerge.in/\">ethical hacking in Kochi</a> is promising. The need for cybersecurity experts is growing fast. This means skilled hackers are in demand in many fields.</p><p>Companies in Kochi\'s tech hub are looking for people with skills in testing and detecting threats. They want those who can find and fix vulnerabilities.</p><p>Ethical hackers in Kochi can find many job roles. These include&nbsp;<a href=\"https://www.glassdoor.co.in/Salaries/cyber-security-analyst-salary-SRCH_KO0,22.htm\">Cybersecurity Analyst</a>,&nbsp;<a href=\"https://www.glassdoor.co.in/Salaries/penetration-tester-salary-SRCH_KO0,18.htm\">Penetration Tester</a>, and&nbsp;<a href=\"https://www.glassdoor.co.in/Salaries/security-consultant-salary-SRCH_KO0,19.htm\">Security Consultant</a>. Even&nbsp;<a href=\"https://www.glassdoor.co.in/Salaries/chief-information-security-officer-salary-SRCH_KO0,34.htm\">Chief Information Security Officer</a>&nbsp;(CISO) roles are available.</p><h6>These jobs pay well, with salaries ranging from ₹4.5 lakhs to ₹15 lakhs a year. Your salary will depend on your experience, skills, and the job you get. Plus, there\'s room to grow and earn more as you advance in your career.</h6><p>Working in ethical hacking in Kochi also means you\'ll help protect companies from cyber threats. You\'ll keep digital systems safe and contribute to the security of the tech ecosystem. Your work will help shape the future of cybersecurity.</p><h4><strong>FAQ</strong></h4><h6><strong>What is an ethical hacking course, and why should I consider it in Kochi?</strong></h6><p>An ethical hacking course teaches you to find security weaknesses in computer systems. It aims to make systems safer. Kochi is a great place for this because it\'s full of tech opportunities.</p><h6><strong>What are the key benefits of pursuing an ethical hacking career in Kochi?</strong></h6><p>Kochi needs more cybersecurity experts, offering good jobs and a chance to grow. You\'ll learn about new tech and get paid well. It\'s a supportive place for your career.</p><h6><strong>What should I expect from an ethical hacking course in Kochi?</strong></h6><p>Courses in Kochi cover network security and how to test systems. They mix theory with practice. This prepares you for real cybersecurity jobs.</p><h6><strong>What are the prerequisites and essential skills required for an ethical hacking course in Kochi?</strong></h6><p>You need a strong tech background and to know programming. Networking basics are also important. Being curious and solving problems well is key.</p><h6><strong>Where can I find the top ethical hacking training centers and institutes in Kochi?</strong></h6><p>Kochi has many top training places for ethical hacking. They have great teachers, modern tools, and relevant lessons. This helps you get the skills and certifications you need.</p><h6><strong>How long do ethical hacking courses in Kochi typically last, and what flexible learning options are available?</strong></h6><p>Courses last from 3 to 6 months. They offer flexible times, like weekends, for those who work or study. This fits different schedules.</p><h6><strong>What certifications can I expect to receive upon completing an ethical hacking course in Kochi?</strong></h6><p>You\'ll get recognized certifications like CEH and CISSP. These show you\'re skilled and ready for a job in cybersecurity.</p><h6><strong>How do ethical hacking courses in Kochi incorporate real-world projects and hands-on training?</strong></h6><p>Courses focus on real projects and hands-on learning. You\'ll use modern labs and tackle real challenges. This builds your skills and experience.</p><h6><strong>What are the typical career prospects and salary expectations for ethical hackers in Kochi?</strong></h6><p>Ethical hackers in Kochi have many job options. You can earn good money based on your skills and experience. The demand is high.</p><p><br>&nbsp;</p><p><br>&nbsp;</p><p><br>&nbsp;</p>', 'news_and_blogs_image/UZNxwEERApYozebO8YQlmJpxfZSqX3TGZBkGq7mI.jpg', NULL, '2024-11-20 05:36:13', '2024-11-26 04:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `our_approachs`
--

CREATE TABLE `our_approachs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_approachs`
--

INSERT INTO `our_approachs` (`id`, `title`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Customized Learning Paths', 'Each internship program is tailored to align with the academic background and career goals of our interns.', NULL, '2024-07-23 03:50:12', '2024-08-01 01:09:07'),
(2, 'Industry Collaboration', 'We partner with leading companies and industry experts to provide hands-on experience and mentorship.', NULL, '2024-07-23 03:50:45', '2024-08-01 01:09:18'),
(3, 'Real-World Projects', 'Interns work on live projects, gaining practical knowledge and skills applicable in the workplace.', NULL, '2024-07-23 03:51:12', '2024-08-01 01:09:29'),
(4, 'Continuous Evaluation', 'Regular assessments and feedback ensure that interns are progressing and meeting their learning objectives.', NULL, '2024-07-23 03:51:40', '2024-08-01 01:09:41'),
(5, 'Career Support', 'We offer career counseling, resume building, and interview preparation to help interns secure job placements post-internship.', NULL, '2024-07-23 03:52:01', '2024-08-01 01:09:51'),
(7, 'Innovative Learning Environment', 'We foster a dynamic and supportive atmosphere with access to cutting-edge technology, enabling interns to thrive and excel in their fields.', NULL, '2024-08-01 01:08:56', '2024-08-01 01:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placement_drives`
--

CREATE TABLE `placement_drives` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `placement_drives`
--

INSERT INTO `placement_drives` (`id`, `title`, `logo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'CROSSBOW', 'placement_drive_logo/2Pl6sKPNJNmJ495XevyYeVnyn2PoUxWB5rJLwele.jpg', NULL, '2024-08-06 04:03:55', '2024-08-06 04:03:55'),
(2, 'EY', 'placement_drive_logo/VrbQDNeijxzZCg7wJr2yck10oDmO4l3h7WeqBPUY.jpg', NULL, '2024-08-06 04:05:18', '2024-08-06 04:05:18'),
(3, 'INFOSYS', 'placement_drive_logo/qhrcJHHPF98faXRGANQdzS6IThlQIZ2W5cEmNzMc.jpg', NULL, '2024-08-06 04:06:40', '2024-08-06 04:06:40'),
(4, 'LIGHT HOUSE', 'placement_drive_logo/ctpFQ3pDNP4j0iq0WZHDGXj89BZotSsAk8bxnJdz.jpg', NULL, '2024-08-06 04:09:23', '2024-08-06 04:09:23'),
(5, 'VALUE MENTOR', 'placement_drive_logo/uRZGqdrL6bo7Uypr7B7SBgs2thQ2sGtChXSPyANx.jpg', NULL, '2024-08-06 04:09:42', '2024-08-06 04:09:42'),
(6, 'ACCENTURE', 'placement_drive_logo/NNbzNjLvHbaDftZnZ7D2rfpCg8TIADMLeHxobJDi.jpg', NULL, '2024-08-06 04:10:00', '2024-08-06 04:10:00'),
(7, 'COGNIZANT', 'placement_drive_logo/Ce3xKGhFevE7O8zR0JfBwU7v4RRw3rsH6GvlLKec.jpg', NULL, '2024-08-06 04:10:22', '2024-08-06 04:10:22'),
(8, 'MASTEK', 'placement_drive_logo/bzvB9AzNGn7Aq9H6OcpQzMDCARqOrX6LBYZW221V.jpg', NULL, '2024-08-06 04:12:03', '2024-08-06 04:12:03'),
(9, 'FORTNET', 'placement_drive_logo/Kq98PoxrtYGSgzfmiV9uVtIaiQj1y0XM5RjjF6sY.jpg', NULL, '2024-08-06 04:18:04', '2024-08-06 04:18:04'),
(10, 'SOPHO', 'placement_drive_logo/36kKSYx6WxozlD3LPUW1q542HZ1yJZNWkJUFnMRe.jpg', NULL, '2024-08-06 04:18:25', '2024-08-06 04:18:25'),
(11, 'KPMG', 'placement_drive_logo/4pWMF3h1jSMPrFHKN7YOy4tIljm6oK7IHu15Z0Te.jpg', NULL, '2024-08-06 04:19:24', '2024-08-06 04:19:24'),
(12, 'CROWDSTRIKE', 'placement_drive_logo/Qv7oRib2LniGXy0x7xUnzxS6A8qVCXjBAe9wKZh8.jpg', NULL, '2024-08-06 04:19:48', '2024-08-06 04:19:48'),
(13, 'AISHIELD', 'placement_drive_logo/VvEzoSCn1J74GEahxF43bKZII8VQN6PQtJxj5GQN.jpg', NULL, '2024-08-06 04:20:09', '2024-08-06 04:20:09'),
(14, 'DNV', 'placement_drive_logo/GVbTbKUp72DXrk6SXjW3HVtyXurmLlVVLsfayrkC.jpg', NULL, '2024-08-06 04:20:23', '2024-08-06 04:20:23'),
(15, 'CLEARTRUST', 'placement_drive_logo/5ordMmZhUz9A65jEzdkpg8sLjmbaHnYhtSENg6n5.jpg', NULL, '2024-08-06 04:20:46', '2024-08-06 04:20:46'),
(16, 'OZONE', 'placement_drive_logo/oOPvg4WBkJQyzamhXHnoSEINo20Cap8EODlVyGHy.jpg', NULL, '2024-08-06 04:21:04', '2024-08-06 04:21:04'),
(17, 'WIPRO', 'placement_drive_logo/O1u1rsMC5RhpmTqMjN7sjLSWSHq2TYleSeddxtyO.jpg', NULL, '2024-08-06 04:22:24', '2024-08-06 04:22:24'),
(18, 'TCS', 'placement_drive_logo/OUZtm6O3Kw1V3MWX6mNODVmnYPRgEfBTTvfW0G9P.jpg', NULL, '2024-08-06 04:23:21', '2024-08-06 04:23:21'),
(19, 'TECH MAHINDRA', 'placement_drive_logo/yOiDqlTW6XdnBva887WR9qNosJnr15jOl7l7Ue79.jpg', NULL, '2024-08-06 04:24:05', '2024-08-06 04:24:05'),
(20, 'CODESC', 'placement_drive_logo/5jykYrRB6NrBwi7DzH7zle2vT8ZYAns5EqU7mzBP.jpg', NULL, '2024-08-06 04:24:34', '2024-08-06 04:24:34'),
(21, 'QUALYSEC', 'placement_drive_logo/ffYSBCfmOOykD7daUNpei3HGkIfaYCZ70YrRItRW.jpg', NULL, '2024-08-06 04:25:05', '2024-08-06 04:25:05'),
(22, 'IBM', 'placement_drive_logo/CFMlFKhuqzWlMgWlOkRAic1wKcXKBNl0OZNDYfHw.jpg', NULL, '2024-08-06 04:25:32', '2024-08-06 04:25:32'),
(23, 'NETWORK INTELLIGENCE', 'placement_drive_logo/yPeHEYamAhnmRjUlqh0lUol5wWsCHxGCmhG6di7w.jpg', NULL, '2024-08-06 04:25:58', '2024-08-06 04:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `program_details`
--

CREATE TABLE `program_details` (
  `id` bigint UNSIGNED NOT NULL,
  `banner_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_details`
--

INSERT INTO `program_details` (`id`, `banner_title`, `banner_subtitle`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Latest Internship on Expert\'s Skill Merge Hub', 'Programs', NULL, '2024-07-22 05:32:05', '2024-08-03 05:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `selection_processes`
--

CREATE TABLE `selection_processes` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `selection_processes`
--

INSERT INTO `selection_processes` (`id`, `title`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Skill Assessment', 'Evaluating technical and soft skills to match the internship requirements.', NULL, '2024-07-23 04:30:35', '2024-07-23 04:30:35'),
(2, 'Aptitude Tests:', 'Assessing problem-solving abilities and analytical thinking', NULL, '2024-07-23 04:31:33', '2024-07-23 04:31:33'),
(3, 'Background Checks:', 'Conducting behavioral and technical interviews to understand candidates\' aspirations and fitment', NULL, '2024-07-23 04:32:03', '2024-07-23 04:32:03'),
(4, 'Interviews:', 'Verifying academic credentials and previous experiences.', NULL, '2024-07-23 04:32:19', '2024-07-23 04:32:19'),
(5, 'gfdghdfhg', 'hjfgkjhljkhlkjhkl', NULL, '2024-07-25 06:47:44', '2024-07-25 06:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `selection_process_details`
--

CREATE TABLE `selection_process_details` (
  `id` bigint UNSIGNED NOT NULL,
  `banner_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `selection_process_details`
--

INSERT INTO `selection_process_details` (`id`, `banner_title`, `banner_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Selecting the Right Candidates', 'To ensure the best match between our internship opportunities and candidates,\r\n we conduct a comprehensive Job Fitment Analysis. This process includes', NULL, '2024-07-23 04:30:35', '2024-07-23 04:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jeySQSwzyS576x2LPCF5leSERJF7Bw1TnUyZId4f', 1, '111.92.116.176', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidWxqT29kTWIyWXYwbTB1SGRJVVc1aWRLdWNlUEE0SVZxMkNzRWFGeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vd3d3LnNraWxsbWVyZ2UuaW4vdGVzdC9za2lsbC1tZXJnZS1saXZlL25ld3MtYW5kLWJsb2dzLzEwL2VkaXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJGNXWW1RbmNhMjdhbjFZLnIuNnB4TnV5UUZsRDRkOU93anVrQmdyeTlJbzM3bnEzN3d1U1VlIjt9', 1732608652),
('N14rZdiNUTzRrb2JmQqF1btgWuEsXFzONNfLhFQg', 1, '120.61.185.12', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR2VWT1pjZFhsSW1YYnlnWG5OQzczdFQxQjNqeVpIdHBPR25sRWJ4UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vc2tpbGxtZXJnZS5pbi9iYWNrZW5kL3doeS1jaG9vc2UtdXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEyJGNXWW1RbmNhMjdhbjFZLnIuNnB4TnV5UUZsRDRkOU93anVrQmdyeTlJbzM3bnEzN3d1U1VlIjt9', 1738046427),
('RnQGEuCFQgmxwykSMsTxZHAz9EBxPCCRwuzdbRVW', 1, '120.61.37.46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRjhEMUlLdFA1YlNQTm9YNkhVSHJtYmhmZHZJU2hHTE1ENHNzUlNsaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vc2tpbGxtZXJnZS5pbi9iYWNrZW5kL25ld3MtYW5kLWJsb2dzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRjV1ltUW5jYTI3YW4xWS5yLjZweE51eVFGbEQ0ZDlPd2p1a0Jncnk5SW8zN25xMzd3dVNVZSI7fQ==', 1732614664);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone_number`, `course`, `mode`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'gfhdfg', 'dfgfd@fdg.hjk', '6235006006', '', '', 'tguytu', NULL, '2024-07-23 06:02:36', '2024-07-23 06:02:36'),
(2, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi', NULL, '2024-09-12 21:01:34', '2024-09-12 21:01:34'),
(3, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi', NULL, '2024-09-12 21:01:36', '2024-09-12 21:01:36'),
(4, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi', NULL, '2024-09-12 21:01:46', '2024-09-12 21:01:46'),
(5, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi', NULL, '2024-09-12 21:02:06', '2024-09-12 21:02:06'),
(6, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi jajsoe bh surnsjnIdiff', NULL, '2024-09-12 21:02:10', '2024-09-12 21:02:10'),
(7, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi jajsoe bh surnsjnIdiff', NULL, '2024-09-12 21:02:11', '2024-09-12 21:02:11'),
(8, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi jajsoe bh surnsjnIdiff', NULL, '2024-09-12 21:02:11', '2024-09-12 21:02:11'),
(9, 'Febin jojo', 'febinjojo64@gmail.com', '8943839206', '', '', 'Hi jajsoe bh surnsjnIdiff', NULL, '2024-09-12 21:02:12', '2024-09-12 21:02:12'),
(10, 'Ajmal', 'centralisedhub@gmail.com', '8330073919', '', '', 'I wanna join', NULL, '2024-09-13 12:11:51', '2024-09-13 12:11:51'),
(11, 'Ajmal', 'centralisedhub@gmail.com', '8330073919', '', '', 'I wanna join', NULL, '2024-09-13 12:11:54', '2024-09-13 12:11:54'),
(12, 'Ajmal', 'centralisedhub@gmail.com', '8330073919', '', '', 'I wanna join', NULL, '2024-09-13 12:11:56', '2024-09-13 12:11:56'),
(13, 'Ajmal', 'centralisedhub@gmail.com', '8330073919', '', '', 'I wanna join', NULL, '2024-09-13 12:12:01', '2024-09-13 12:12:01'),
(14, 'Ajmal', 'centralisedhub@gmail.com', '8330073919', '', '', 'I wanna join', NULL, '2024-09-13 12:12:12', '2024-09-13 12:12:12'),
(15, 'Ajmal', 'centralisedhub@gmail.com', '8330073919', '', '', 'I wanna join', NULL, '2024-09-13 12:12:13', '2024-09-13 12:12:13'),
(16, 'Ajmal', 'centralisedhub@gmail.com', '8330073919', '', '', 'I wanna join', NULL, '2024-09-13 12:12:47', '2024-09-13 12:12:47'),
(17, 'ADIL A', 'adilalameen007@gmail.com', '8891109348', '', '', 'Cybersecurity internship', NULL, '2024-09-14 01:38:27', '2024-09-14 01:38:27'),
(18, 'ADIL A', 'adilalameen007@gmail.com', '8891109348', '', '', 'Cybersecurity internship', NULL, '2024-09-14 01:38:33', '2024-09-14 01:38:33'),
(19, 'ADIL A', 'adilalameen007@gmail.com', '918891109348', '', '', 'Interest for cybersecurity internship', NULL, '2024-09-14 01:39:57', '2024-09-14 01:39:57'),
(20, 'Sidharth mk', 'sid3380mk@gmail.com', '8086350193', '', '', 'I would like to start my career in cyber security. Have a good knowledge in ethical hacking and tools related to it', NULL, '2024-09-14 05:47:27', '2024-09-14 05:47:27'),
(21, 'Sidharth mk', 'sid3380mk@gmail.com', '8086350193', '', '', 'I would like to start my career in cyber security. Have a good knowledge in ethical hacking and tools related to it', NULL, '2024-09-14 05:47:32', '2024-09-14 05:47:32'),
(22, 'Sidharth mk', 'sid3380mk@gmail.com', '8086350193', '', '', 'I would like to start my career in cyber security. Have a good knowledge in ethical hacking and tools related to it', NULL, '2024-09-14 05:47:40', '2024-09-14 05:47:40'),
(23, 'Sidharth mk', 'sid3380mk@gmail.com', '8086350193', '', '', 'I would like to start my career in cyber security. Have a good knowledge in ethical hacking and tools related to it', NULL, '2024-09-14 05:47:40', '2024-09-14 05:47:40'),
(24, 'Sidharth mk', 'sid3380mk@gmail.com', '8086350193', '', '', 'I would like to start my career in cyber security. Have a good knowledge in ethical hacking and tools related to it', NULL, '2024-09-14 05:47:40', '2024-09-14 05:47:40'),
(25, 'Nadia Ajmal', 'nadiaajmal1990@gmail.com', '9526607763', '', '', 'I am interested in the internship program for SOC Analyst L1 that is advertised in your site.', NULL, '2024-09-14 06:06:05', '2024-09-14 06:06:05'),
(26, 'Nadia Ajmal', 'nadiaajmal1990@gmail.com', '9526607763', '', '', 'I am interested in the internship program for SOC Analyst L1 that is advertised in your site.', NULL, '2024-09-14 06:06:13', '2024-09-14 06:06:13'),
(27, 'Nadia Ajmal', 'nadiaajmal1990@gmail.com', '9526607763', '', '', 'I am interested in the internship program for SOC Analyst L1 that is advertised in your site.', NULL, '2024-09-14 06:06:28', '2024-09-14 06:06:28'),
(28, 'Nadia Ajmal', 'nadiaajmal1990@gmail.com', '9526607763', '', '', 'I am interested in the internship program for SOC Analyst L1 that is advertised in your site.', NULL, '2024-09-14 06:06:35', '2024-09-14 06:06:35'),
(29, 'Nadia Ajmal', 'nadiaajmal1990@gmail.com', '9526607763', '', '', 'I am interested in the internship program for SOC Analyst L1 that is advertised in your site.', NULL, '2024-09-14 06:06:44', '2024-09-14 06:06:44'),
(30, 'Christo Rony', 'ronypb75@gmail.com', '7356323741', '', '', 'I want to improve my skills', NULL, '2024-09-15 05:53:00', '2024-09-15 05:53:00'),
(31, 'Christo Rony', 'ronypb75@gmail.com', '7356323741', '', '', 'I want to improve my skills', NULL, '2024-09-15 05:53:06', '2024-09-15 05:53:06'),
(32, 'jisna', 'jisnamolsaji56@gmail.com', '7012326578', '', '', 'need full details', NULL, '2024-09-15 22:07:06', '2024-09-15 22:07:06'),
(33, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:07:46', '2024-09-19 08:07:46'),
(34, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:07:56', '2024-09-19 08:07:56'),
(35, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:07:59', '2024-09-19 08:07:59'),
(36, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:07', '2024-09-19 08:08:07'),
(37, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:07', '2024-09-19 08:08:07'),
(38, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:07', '2024-09-19 08:08:07'),
(39, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:07', '2024-09-19 08:08:07'),
(40, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:08', '2024-09-19 08:08:08'),
(41, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:08', '2024-09-19 08:08:08'),
(42, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:08', '2024-09-19 08:08:08'),
(43, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:08', '2024-09-19 08:08:08'),
(44, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:09', '2024-09-19 08:08:09'),
(45, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:09', '2024-09-19 08:08:09'),
(46, 'Shibilas', 'shibilasparambil@gmail.com', '9072341879', '', '', 'Im a Btech Graduate and interested in starting my career in cybersecurity.', NULL, '2024-09-19 08:08:09', '2024-09-19 08:08:09'),
(47, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', '.', NULL, '2024-09-19 08:29:36', '2024-09-19 08:29:36'),
(48, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', '.', NULL, '2024-09-19 08:29:42', '2024-09-19 08:29:42'),
(49, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', 'https://www.linkedin.com/in/amal-rajendran-8b0981223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', NULL, '2024-09-19 08:30:08', '2024-09-19 08:30:08'),
(50, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', 'https://www.linkedin.com/in/amal-rajendran-8b0981223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', NULL, '2024-09-19 08:30:10', '2024-09-19 08:30:10'),
(51, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', 'https://www.linkedin.com/in/amal-rajendran-8b0981223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', NULL, '2024-09-19 08:30:20', '2024-09-19 08:30:20'),
(52, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', 'https://www.linkedin.com/in/amal-rajendran-8b0981223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', NULL, '2024-09-19 08:30:25', '2024-09-19 08:30:25'),
(53, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', 'https://www.linkedin.com/in/amal-rajendran-8b0981223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', NULL, '2024-09-19 08:30:30', '2024-09-19 08:30:30'),
(54, 'Amal R', 'amalr2625@gmail.com', '8330817157', '', '', 'https://www.linkedin.com/in/amal-rajendran-8b0981223?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app', NULL, '2024-09-19 08:30:32', '2024-09-19 08:30:32'),
(55, 'Adithya Krishna S', 'adithyakrishnas839@gmail.com', '9188818155', '', '', 'I\'m a third-year STAS student studying cyber forensics. I also hold a diploma from Spectrum Softech Solutions Kochi in cyber security. As a cyber security analyst, I would like to work for your organization.', NULL, '2024-09-19 08:59:30', '2024-09-19 08:59:30'),
(56, 'Adithya Krishna S', 'adithyakrishnas839@gmail.com', '9188818155', '', '', 'I\'m a third-year STAS student studying cyber forensics. I also hold a diploma from Spectrum Softech Solutions Kochi in cyber security. As a cyber security analyst, I would like to work for your organization.', NULL, '2024-09-19 08:59:47', '2024-09-19 08:59:47'),
(57, 'Adithya Krishna S', 'adithyakrishnas839@gmail.com', '9188818155', '', '', 'I\'m a third-year STAS student studying cyber forensics. I also hold a diploma from Spectrum Softech Solutions Kochi in cyber security. As a cyber security analyst, I would like to work for your organization.', NULL, '2024-09-19 08:59:54', '2024-09-19 08:59:54'),
(58, 'Adithya Krishna S', 'adithyakrishnas839@gmail.com', '9188818155', '', '', 'I\'m a third-year STAS student studying cyber forensics. I also hold a diploma from Spectrum Softech Solutions Kochi in cyber security. As a cyber security analyst, I would like to work for your organization.', NULL, '2024-09-19 09:00:07', '2024-09-19 09:00:07'),
(59, 'Shine Shabab', 'shineharis3@gmail.com', '9544680979', '', '', 'BCA Graduate and now pursing cybersecurity related courses through online', NULL, '2024-09-19 13:29:22', '2024-09-19 13:29:22'),
(60, 'Shine Shabab', 'shineharis3@gmail.com', '9544680979', '', '', 'BCA Graduate and now pursing cybersecurity related courses through online', NULL, '2024-09-19 13:29:34', '2024-09-19 13:29:34'),
(61, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:42:59', '2024-09-20 13:42:59'),
(62, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:02', '2024-09-20 13:43:02'),
(63, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:05', '2024-09-20 13:43:05'),
(64, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:05', '2024-09-20 13:43:05'),
(65, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:05', '2024-09-20 13:43:05'),
(66, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:05', '2024-09-20 13:43:05'),
(67, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:05', '2024-09-20 13:43:05'),
(68, 'Amal Mirza P', 'amalmrz2000@gmai.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:05', '2024-09-20 13:43:05'),
(69, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:36', '2024-09-20 13:43:36'),
(70, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:38', '2024-09-20 13:43:38'),
(71, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:38', '2024-09-20 13:43:38'),
(72, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:38', '2024-09-20 13:43:38'),
(73, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:38', '2024-09-20 13:43:38'),
(74, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:39', '2024-09-20 13:43:39'),
(75, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:39', '2024-09-20 13:43:39'),
(76, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:39', '2024-09-20 13:43:39'),
(77, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:39', '2024-09-20 13:43:39'),
(78, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:40', '2024-09-20 13:43:40'),
(79, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:40', '2024-09-20 13:43:40'),
(80, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:41', '2024-09-20 13:43:41'),
(81, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:42', '2024-09-20 13:43:42'),
(82, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:42', '2024-09-20 13:43:42'),
(83, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:42', '2024-09-20 13:43:42'),
(84, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:42', '2024-09-20 13:43:42'),
(85, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:46', '2024-09-20 13:43:46'),
(86, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:46', '2024-09-20 13:43:46'),
(87, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:46', '2024-09-20 13:43:46'),
(88, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:43:46', '2024-09-20 13:43:46'),
(89, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:25', '2024-09-20 13:44:25'),
(90, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:26', '2024-09-20 13:44:26'),
(91, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:26', '2024-09-20 13:44:26'),
(92, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:26', '2024-09-20 13:44:26'),
(93, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:26', '2024-09-20 13:44:26'),
(94, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:26', '2024-09-20 13:44:26'),
(95, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:27', '2024-09-20 13:44:27'),
(96, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:27', '2024-09-20 13:44:27'),
(97, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:27', '2024-09-20 13:44:27'),
(98, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:27', '2024-09-20 13:44:27'),
(99, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:27', '2024-09-20 13:44:27'),
(100, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:28', '2024-09-20 13:44:28'),
(101, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:28', '2024-09-20 13:44:28'),
(102, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:28', '2024-09-20 13:44:28'),
(103, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:29', '2024-09-20 13:44:29'),
(104, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:29', '2024-09-20 13:44:29'),
(105, 'Amal mirza P', 'amalmrz2000@gmail.com', '8138847554', '', '', 'I\'m excited about this opportunity and ready to take the next step. Let\'s make it happen!', NULL, '2024-09-20 13:44:29', '2024-09-20 13:44:29'),
(106, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:12', '2024-09-28 12:24:12'),
(107, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:14', '2024-09-28 12:24:14'),
(108, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:23', '2024-09-28 12:24:23'),
(109, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:24', '2024-09-28 12:24:24'),
(110, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:25', '2024-09-28 12:24:25'),
(111, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:38', '2024-09-28 12:24:38'),
(112, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:38', '2024-09-28 12:24:38'),
(113, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:39', '2024-09-28 12:24:39'),
(114, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '07025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:42', '2024-09-28 12:24:42'),
(115, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:52', '2024-09-28 12:24:52'),
(116, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:53', '2024-09-28 12:24:53'),
(117, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:53', '2024-09-28 12:24:53'),
(118, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:54', '2024-09-28 12:24:54'),
(119, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:54', '2024-09-28 12:24:54'),
(120, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:54', '2024-09-28 12:24:54'),
(121, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for cyber security jobs', NULL, '2024-09-28 12:24:54', '2024-09-28 12:24:54'),
(122, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:42', '2024-09-28 12:25:42'),
(123, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:42', '2024-09-28 12:25:42'),
(124, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:43', '2024-09-28 12:25:43'),
(125, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:43', '2024-09-28 12:25:43'),
(126, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:43', '2024-09-28 12:25:43'),
(127, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:43', '2024-09-28 12:25:43'),
(128, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:43', '2024-09-28 12:25:43'),
(129, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:44', '2024-09-28 12:25:44'),
(130, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:44', '2024-09-28 12:25:44'),
(131, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:25:44', '2024-09-28 12:25:44'),
(132, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:06', '2024-09-28 12:26:06'),
(133, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:07', '2024-09-28 12:26:07'),
(134, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:07', '2024-09-28 12:26:07'),
(135, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:08', '2024-09-28 12:26:08'),
(136, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:08', '2024-09-28 12:26:08'),
(137, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:08', '2024-09-28 12:26:08'),
(138, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:08', '2024-09-28 12:26:08'),
(139, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:09', '2024-09-28 12:26:09'),
(140, 'AJEESH V', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for jobs', NULL, '2024-09-28 12:26:20', '2024-09-28 12:26:20'),
(141, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:40', '2024-09-28 12:30:40'),
(142, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:41', '2024-09-28 12:30:41'),
(143, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:42', '2024-09-28 12:30:42'),
(144, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:42', '2024-09-28 12:30:42'),
(145, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:42', '2024-09-28 12:30:42'),
(146, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:42', '2024-09-28 12:30:42'),
(147, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:43', '2024-09-28 12:30:43'),
(148, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:43', '2024-09-28 12:30:43'),
(149, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:44', '2024-09-28 12:30:44'),
(150, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:45', '2024-09-28 12:30:45'),
(151, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:46', '2024-09-28 12:30:46'),
(152, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:46', '2024-09-28 12:30:46'),
(153, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:47', '2024-09-28 12:30:47'),
(154, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:49', '2024-09-28 12:30:49'),
(155, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:49', '2024-09-28 12:30:49'),
(156, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:50', '2024-09-28 12:30:50'),
(157, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:50', '2024-09-28 12:30:50'),
(158, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:50', '2024-09-28 12:30:50'),
(159, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:51', '2024-09-28 12:30:51'),
(160, 'Ajeesh v', 'ajeeshkarunakaran1819@gmail.com', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:30:51', '2024-09-28 12:30:51'),
(161, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:01', '2024-09-28 12:31:01'),
(162, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:04', '2024-09-28 12:31:04'),
(163, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:08', '2024-09-28 12:31:08'),
(164, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:08', '2024-09-28 12:31:08'),
(165, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:09', '2024-09-28 12:31:09'),
(166, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:09', '2024-09-28 12:31:09'),
(167, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:09', '2024-09-28 12:31:09'),
(168, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:14', '2024-09-28 12:31:14'),
(169, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:14', '2024-09-28 12:31:14'),
(170, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:14', '2024-09-28 12:31:14'),
(171, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:14', '2024-09-28 12:31:14'),
(172, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:19', '2024-09-28 12:31:19'),
(173, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:19', '2024-09-28 12:31:19'),
(174, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:20', '2024-09-28 12:31:20'),
(175, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:20', '2024-09-28 12:31:20'),
(176, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:20', '2024-09-28 12:31:20'),
(177, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:20', '2024-09-28 12:31:20'),
(178, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:21', '2024-09-28 12:31:21'),
(179, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:21', '2024-09-28 12:31:21'),
(180, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:21', '2024-09-28 12:31:21'),
(181, 'AFEEF VK', 'afeeafeef008@gmail.com', '9645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:31:21', '2024-09-28 12:31:21'),
(182, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:37:56', '2024-09-28 12:37:56'),
(183, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:37:58', '2024-09-28 12:37:58'),
(184, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:37:58', '2024-09-28 12:37:58'),
(185, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:37:58', '2024-09-28 12:37:58'),
(186, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:37:59', '2024-09-28 12:37:59'),
(187, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:37:59', '2024-09-28 12:37:59'),
(188, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:37:59', '2024-09-28 12:37:59'),
(189, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:38:00', '2024-09-28 12:38:00'),
(190, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:38:01', '2024-09-28 12:38:01'),
(191, 'AFEEF VK', 'afeeafeef008@gmail.com', '09645250452', '', '', 'i am intrested', NULL, '2024-09-28 12:38:01', '2024-09-28 12:38:01'),
(192, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:17', '2024-09-28 12:43:17'),
(193, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:17', '2024-09-28 12:43:17'),
(194, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:18', '2024-09-28 12:43:18'),
(195, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:18', '2024-09-28 12:43:18'),
(196, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:18', '2024-09-28 12:43:18'),
(197, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:19', '2024-09-28 12:43:19'),
(198, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:19', '2024-09-28 12:43:19'),
(199, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:19', '2024-09-28 12:43:19'),
(200, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:19', '2024-09-28 12:43:19'),
(201, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:20', '2024-09-28 12:43:20'),
(202, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:20', '2024-09-28 12:43:20'),
(203, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '07025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:20', '2024-09-28 12:43:20'),
(204, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:25', '2024-09-28 12:43:25'),
(205, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:26', '2024-09-28 12:43:26'),
(206, 'AJEESH V', 'AJEESHKARUNAKARAN1819@GMAIL.COM', '7025520029', '', '', 'Looking for job', NULL, '2024-09-28 12:43:27', '2024-09-28 12:43:27'),
(207, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for so analyst intership', NULL, '2024-09-29 00:08:35', '2024-09-29 00:08:35'),
(208, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for so analyst intership', NULL, '2024-09-29 00:08:36', '2024-09-29 00:08:36'),
(209, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:42', '2024-09-29 00:08:42'),
(210, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:43', '2024-09-29 00:08:43'),
(211, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:43', '2024-09-29 00:08:43'),
(212, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:44', '2024-09-29 00:08:44'),
(213, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:58', '2024-09-29 00:08:58'),
(214, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:59', '2024-09-29 00:08:59'),
(215, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:59', '2024-09-29 00:08:59'),
(216, 'Jithu Mohan K', 'achujithu154@gmail.com', '7306374025', '', '', 'Iam looking for soc analyst intership', NULL, '2024-09-29 00:08:59', '2024-09-29 00:08:59'),
(217, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Internship', NULL, '2024-09-29 11:57:20', '2024-09-29 11:57:20'),
(218, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Internship', NULL, '2024-09-29 11:57:23', '2024-09-29 11:57:23'),
(219, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Internship', NULL, '2024-09-29 11:57:24', '2024-09-29 11:57:24'),
(220, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Internship', NULL, '2024-09-29 11:57:24', '2024-09-29 11:57:24'),
(221, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:28', '2024-09-29 11:58:28'),
(222, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:30', '2024-09-29 11:58:30'),
(223, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:30', '2024-09-29 11:58:30'),
(224, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:31', '2024-09-29 11:58:31'),
(225, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:31', '2024-09-29 11:58:31'),
(226, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:31', '2024-09-29 11:58:31'),
(227, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:31', '2024-09-29 11:58:31'),
(228, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'Cyber Security Internship', NULL, '2024-09-29 11:58:31', '2024-09-29 11:58:31'),
(229, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'To join Cyber Security Internship offered by skillmerge', NULL, '2024-09-29 11:58:55', '2024-09-29 11:58:55'),
(230, 'Muhammed Ansal T A', 'ansaltuf@gmail.com', '9746865038', '', '', 'To join Cyber Security Internship offered by skillmerge', NULL, '2024-09-29 11:58:57', '2024-09-29 11:58:57'),
(231, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cyber security internship', NULL, '2024-09-30 02:02:09', '2024-09-30 02:02:09'),
(232, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cyber security internship', NULL, '2024-09-30 02:02:13', '2024-09-30 02:02:13'),
(233, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cyber security internship', NULL, '2024-09-30 02:02:14', '2024-09-30 02:02:14'),
(234, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cyber security internship', NULL, '2024-09-30 02:02:15', '2024-09-30 02:02:15'),
(235, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cyber security internship', NULL, '2024-09-30 02:02:30', '2024-09-30 02:02:30'),
(236, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cyber security internship', NULL, '2024-09-30 02:02:42', '2024-09-30 02:02:42'),
(237, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:03:39', '2024-09-30 02:03:39'),
(238, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:03:41', '2024-09-30 02:03:41'),
(239, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:03:42', '2024-09-30 02:03:42'),
(240, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:03:42', '2024-09-30 02:03:42'),
(241, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:00', '2024-09-30 02:04:00'),
(242, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:01', '2024-09-30 02:04:01'),
(243, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:02', '2024-09-30 02:04:02'),
(244, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:02', '2024-09-30 02:04:02'),
(245, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:02', '2024-09-30 02:04:02'),
(246, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:02', '2024-09-30 02:04:02'),
(247, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:02', '2024-09-30 02:04:02'),
(248, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:03', '2024-09-30 02:04:03'),
(249, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:03', '2024-09-30 02:04:03'),
(250, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:03', '2024-09-30 02:04:03'),
(251, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:03', '2024-09-30 02:04:03'),
(252, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:04:03', '2024-09-30 02:04:03'),
(253, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:05:54', '2024-09-30 02:05:54'),
(254, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:05:55', '2024-09-30 02:05:55'),
(255, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:05:56', '2024-09-30 02:05:56'),
(256, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:05:58', '2024-09-30 02:05:58'),
(257, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:05:58', '2024-09-30 02:05:58'),
(258, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:00', '2024-09-30 02:06:00'),
(259, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:05', '2024-09-30 02:06:05'),
(260, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:05', '2024-09-30 02:06:05'),
(261, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:07', '2024-09-30 02:06:07'),
(262, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:09', '2024-09-30 02:06:09'),
(263, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:10', '2024-09-30 02:06:10'),
(264, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:11', '2024-09-30 02:06:11'),
(265, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', 'iam interested in cybersecurity internship', NULL, '2024-09-30 02:06:12', '2024-09-30 02:06:12'),
(266, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity', NULL, '2024-09-30 21:15:56', '2024-09-30 21:15:56'),
(267, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity', NULL, '2024-09-30 21:16:00', '2024-09-30 21:16:00'),
(268, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity', NULL, '2024-09-30 21:16:03', '2024-09-30 21:16:03'),
(269, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity', NULL, '2024-09-30 21:16:03', '2024-09-30 21:16:03'),
(270, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity', NULL, '2024-09-30 21:16:09', '2024-09-30 21:16:09'),
(271, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity', NULL, '2024-09-30 21:16:17', '2024-09-30 21:16:17'),
(272, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity .Iam a working professional who thinking to change the career and join the cybersecurity community.', NULL, '2024-09-30 21:17:58', '2024-09-30 21:17:58'),
(273, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity .Iam a working professional who thinking to change the career and join the cybersecurity community.', NULL, '2024-09-30 21:18:49', '2024-09-30 21:18:49'),
(274, 'Godwin Shaju', 'godwinshaju01@gmail.com', '9809188713', '', '', 'I am interested in cybersecurity .Iam a working professional who thinking to change the career and join the cybersecurity community.', NULL, '2024-09-30 21:18:54', '2024-09-30 21:18:54'),
(275, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program', NULL, '2024-09-30 21:52:43', '2024-09-30 21:52:43'),
(276, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program', NULL, '2024-09-30 21:52:46', '2024-09-30 21:52:46'),
(277, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program', NULL, '2024-09-30 21:52:46', '2024-09-30 21:52:46'),
(278, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program', NULL, '2024-09-30 21:52:50', '2024-09-30 21:52:50'),
(279, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program', NULL, '2024-09-30 21:52:52', '2024-09-30 21:52:52'),
(280, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program.', NULL, '2024-09-30 21:52:57', '2024-09-30 21:52:57'),
(281, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program.', NULL, '2024-09-30 21:52:58', '2024-09-30 21:52:58'),
(282, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for an Internship or training program.', NULL, '2024-09-30 21:52:58', '2024-09-30 21:52:58'),
(283, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:53:58', '2024-09-30 21:53:58'),
(284, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:54:00', '2024-09-30 21:54:00'),
(285, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:54:09', '2024-09-30 21:54:09'),
(286, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:54:10', '2024-09-30 21:54:10'),
(287, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:54:15', '2024-09-30 21:54:15'),
(288, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:54:17', '2024-09-30 21:54:17');
INSERT INTO `students` (`id`, `name`, `email`, `phone_number`, `course`, `mode`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(289, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:54:24', '2024-09-30 21:54:24'),
(290, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 21:54:25', '2024-09-30 21:54:25'),
(291, 'Muhammed Sahil Sha', 'mhdsahilsha@gmail.com', '8281893331', '', '', 'Looking for a Internship or Training Program for Cyber Security, SOC L1', NULL, '2024-09-30 22:02:10', '2024-09-30 22:02:10'),
(292, 'Vraj', 'vrajshah5104@gmail.com', '9427446944', '', '', 'Please contact me further if it is free', NULL, '2024-10-15 17:22:06', '2024-10-15 17:22:06'),
(293, 'Vraj', 'vrajshah5104@gmail.com', '9427446944', '', '', 'Please contact me further if it is free', NULL, '2024-10-15 17:22:13', '2024-10-15 17:22:13'),
(294, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:00', '2024-10-28 03:29:00'),
(295, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:08', '2024-10-28 03:29:08'),
(296, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:08', '2024-10-28 03:29:08'),
(297, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:08', '2024-10-28 03:29:08'),
(298, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:08', '2024-10-28 03:29:08'),
(299, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:08', '2024-10-28 03:29:08'),
(300, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:09', '2024-10-28 03:29:09'),
(301, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:09', '2024-10-28 03:29:09'),
(302, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:10', '2024-10-28 03:29:10'),
(303, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:12', '2024-10-28 03:29:12'),
(304, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:12', '2024-10-28 03:29:12'),
(305, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:13', '2024-10-28 03:29:13'),
(306, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:13', '2024-10-28 03:29:13'),
(307, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', 'hujnk', NULL, '2024-10-28 03:29:13', '2024-10-28 03:29:13'),
(308, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76786', NULL, '2024-10-28 03:29:44', '2024-10-28 03:29:44'),
(309, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76786', NULL, '2024-10-28 03:29:47', '2024-10-28 03:29:47'),
(310, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76786', NULL, '2024-10-28 03:29:48', '2024-10-28 03:29:48'),
(311, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76786', NULL, '2024-10-28 03:29:48', '2024-10-28 03:29:48'),
(312, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76786', NULL, '2024-10-28 03:29:49', '2024-10-28 03:29:49'),
(313, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76786', NULL, '2024-10-28 03:29:49', '2024-10-28 03:29:49'),
(314, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76786', NULL, '2024-10-28 03:29:49', '2024-10-28 03:29:49'),
(315, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '7678687987', NULL, '2024-10-28 03:29:52', '2024-10-28 03:29:52'),
(316, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '7678687987', NULL, '2024-10-28 03:29:53', '2024-10-28 03:29:53'),
(317, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '7678687987', NULL, '2024-10-28 03:29:53', '2024-10-28 03:29:53'),
(318, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '7678687987', NULL, '2024-10-28 03:29:53', '2024-10-28 03:29:53'),
(319, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '7987898798jkhjk', NULL, '2024-10-28 03:30:20', '2024-10-28 03:30:20'),
(320, 'test', 'test@gmail.com', '54365436', '', '', 'tret', NULL, '2024-10-28 03:31:03', '2024-10-28 03:31:03'),
(321, 'test', 'test@gmail.com', '54365436', '', '', 'tret', NULL, '2024-10-28 03:31:05', '2024-10-28 03:31:05'),
(322, 'test', 'test@gmail.com', '54365436', '', '', 'tret', NULL, '2024-10-28 03:31:13', '2024-10-28 03:31:13'),
(323, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', '76768', NULL, '2024-10-28 06:35:25', '2024-10-28 06:35:25'),
(324, 'fgv bfcv bfc', 'lekshmiar06@gmail.com', '9562401595', '', '', 'test', NULL, '2024-10-28 23:02:25', '2024-10-28 23:02:25'),
(325, 'fgv bfcv bfc', 'lekshmiar06@gmail.com', '9562401595', '', '', 'test', NULL, '2024-10-28 23:02:29', '2024-10-28 23:02:29'),
(326, 'fgv bfcv bfc', 'lekshmiar06@gmail.com', '9562401595', '', '', 'test', NULL, '2024-10-28 23:02:46', '2024-10-28 23:02:46'),
(327, 'tuyu', 'yutyu@rdtgdr.ghj', '546546456', '', '', '654767', NULL, '2024-10-28 23:02:53', '2024-10-28 23:02:53'),
(328, 'fvbhvghbfvg', 'lekshmiar06@gmail.com', '9562401595', '', '', 'dxcdxdxc', NULL, '2024-10-28 23:10:57', '2024-10-28 23:10:57'),
(329, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:57:46', '2024-10-29 04:57:46'),
(330, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:21', '2024-10-29 04:58:21'),
(331, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:22', '2024-10-29 04:58:22'),
(332, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:25', '2024-10-29 04:58:25'),
(333, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:26', '2024-10-29 04:58:26'),
(334, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:26', '2024-10-29 04:58:26'),
(335, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:28', '2024-10-29 04:58:28'),
(336, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:28', '2024-10-29 04:58:28'),
(337, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:29', '2024-10-29 04:58:29'),
(338, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:30', '2024-10-29 04:58:30'),
(339, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:30', '2024-10-29 04:58:30'),
(340, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:30', '2024-10-29 04:58:30'),
(341, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:32', '2024-10-29 04:58:32'),
(342, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:32', '2024-10-29 04:58:32'),
(343, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:32', '2024-10-29 04:58:32'),
(344, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:33', '2024-10-29 04:58:33'),
(345, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:33', '2024-10-29 04:58:33'),
(346, 'Charles S', 'pat@aneesho.com', '8102440753', '', '', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc.?\n\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', NULL, '2024-10-29 04:58:34', '2024-10-29 04:58:34'),
(347, 'test', 'test@gmail.com', '6235006006', '', '', 'hi', NULL, '2024-10-29 05:08:48', '2024-10-29 05:08:48'),
(348, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-29 06:46:10', '2024-10-29 06:46:10'),
(349, 'Sherin', 'fathimasherinmk04082003@gmail.com', '7511160405', '', '', 'Course details', NULL, '2024-10-29 12:58:42', '2024-10-29 12:58:42'),
(350, 'Sherin', 'fathimasherinmk04082003@gmail.com', '7511160405', '', '', 'Course details', NULL, '2024-10-29 12:58:49', '2024-10-29 12:58:49'),
(351, 'Sherin', 'fathimasherinmk04082003@gmail.com', '7511160405', '', '', 'Course details', NULL, '2024-10-29 12:58:57', '2024-10-29 12:58:57'),
(352, 'Sherin', 'fathimasherinmk04082003@gmail.com', '7511160405', '', '', 'Course details', NULL, '2024-10-29 12:58:57', '2024-10-29 12:58:57'),
(353, 'Sherin', 'fathimasherinmk04082003@gmail.com', '7511160405', '', '', 'Course details', NULL, '2024-10-29 12:58:57', '2024-10-29 12:58:57'),
(354, 'Sherin', 'fathimasherinmk04082003@gmail.com', '7511160405', '', '', 'Course details', NULL, '2024-10-29 12:58:57', '2024-10-29 12:58:57'),
(355, 'Sherin', 'fathimasherinmk04082003@gmail.com', '7511160405', '', '', 'Course details', NULL, '2024-10-29 12:58:58', '2024-10-29 12:58:58'),
(360, 'Alex Robin', 'alexrobinxoxo@gmail.com', '9778547226', '', '', 'I have ceh certification and I have more than 2 years of experience in this field and I\'m looking for an internship and job opportunities.', NULL, '2024-10-29 23:20:32', '2024-10-29 23:20:32'),
(361, 'Alex Robin', 'alexrobinxoxo@gmail.com', '9778547226', '', '', 'I have ceh certification and I have more than 2 years of experience in this field and I\'m looking for an internship and job opportunities.', NULL, '2024-10-29 23:20:56', '2024-10-29 23:20:56'),
(362, 'Alex Robin', 'alexrobinxoxo@gmail.com', '9778547226', '', '', 'I have ceh certification and I have more than 2 years of experience in this field and I\'m looking for an internship and job opportunities.', NULL, '2024-10-29 23:20:56', '2024-10-29 23:20:56'),
(363, 'Alex Robin', 'alexrobinxoxo@gmail.com', '9778547226', '', '', 'I have ceh certification and I have more than 2 years of experience in this field and I\'m looking for an internship and job opportunities.', NULL, '2024-10-29 23:20:56', '2024-10-29 23:20:56'),
(364, 'Alex Robin', 'alexrobinxoxo@gmail.com', '9778547226', '', '', 'I have ceh certification and I have more than 2 years of experience in this field and I\'m looking for an internship and job opportunities.', NULL, '2024-10-29 23:21:06', '2024-10-29 23:21:06'),
(365, 'Alex Robin', 'alexrobinxoxo@gmail.com', '9778547226', '', '', 'I have ceh certification and I have more than 2 years of experience in this field and I\'m looking for an internship and job opportunities.', NULL, '2024-10-29 23:21:06', '2024-10-29 23:21:06'),
(366, 'Alex Robin', 'alexrobinxoxo@gmail.com', '9778547226', '', '', 'I have ceh certification and I have more than 2 years of experience in this field and I\'m looking for an internship and job opportunities.', NULL, '2024-10-29 23:21:06', '2024-10-29 23:21:06'),
(396, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 04:15:01', '2024-10-30 04:15:01'),
(397, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 04:29:45', '2024-10-30 04:29:45'),
(398, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 04:33:56', '2024-10-30 04:33:56'),
(399, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 04:34:21', '2024-10-30 04:34:21'),
(400, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 04:37:13', '2024-10-30 04:37:13'),
(401, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 04:38:00', '2024-10-30 04:38:00'),
(402, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:07:41', '2024-10-30 05:07:41'),
(403, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:08:36', '2024-10-30 05:08:36'),
(404, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:15:38', '2024-10-30 05:15:38'),
(405, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:22:11', '2024-10-30 05:22:11'),
(406, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:38:39', '2024-10-30 05:38:39'),
(407, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:43:59', '2024-10-30 05:43:59'),
(408, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:45:00', '2024-10-30 05:45:00'),
(409, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:46:17', '2024-10-30 05:46:17'),
(410, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:47:28', '2024-10-30 05:47:28'),
(411, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:54:13', '2024-10-30 05:54:13'),
(412, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:55:46', '2024-10-30 05:55:46'),
(413, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:56:08', '2024-10-30 05:56:08'),
(414, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:57:25', '2024-10-30 05:57:25'),
(415, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:57:51', '2024-10-30 05:57:51'),
(416, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 05:58:56', '2024-10-30 05:58:56'),
(417, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:02:31', '2024-10-30 06:02:31'),
(418, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:03:06', '2024-10-30 06:03:06'),
(419, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:05:04', '2024-10-30 06:05:04'),
(420, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:06:33', '2024-10-30 06:06:33'),
(421, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:10:39', '2024-10-30 06:10:39'),
(422, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:10:52', '2024-10-30 06:10:52'),
(423, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:12:14', '2024-10-30 06:12:14'),
(424, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:13:34', '2024-10-30 06:13:34'),
(425, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:13:49', '2024-10-30 06:13:49'),
(426, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:15:06', '2024-10-30 06:15:06'),
(427, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:16:27', '2024-10-30 06:16:27'),
(428, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:17:14', '2024-10-30 06:17:14'),
(429, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:17:30', '2024-10-30 06:17:30'),
(430, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:17:58', '2024-10-30 06:17:58'),
(431, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:19:11', '2024-10-30 06:19:11'),
(432, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:20:02', '2024-10-30 06:20:02'),
(433, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:26:12', '2024-10-30 06:26:12'),
(434, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:26:21', '2024-10-30 06:26:21'),
(435, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:26:28', '2024-10-30 06:26:28'),
(436, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:27:39', '2024-10-30 06:27:39'),
(437, 'lekshmi', 'lekshmiar06@gmail.com', '9562401595', '', '', NULL, NULL, '2024-10-30 06:35:51', '2024-10-30 06:35:51'),
(438, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', '.', NULL, '2024-10-31 07:06:40', '2024-10-31 07:06:40'),
(439, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', '.', NULL, '2024-10-31 07:06:51', '2024-10-31 07:06:51'),
(440, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1', NULL, '2024-10-31 07:07:12', '2024-10-31 07:07:12'),
(441, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1', NULL, '2024-10-31 07:07:14', '2024-10-31 07:07:14'),
(442, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1', NULL, '2024-10-31 07:07:14', '2024-10-31 07:07:14'),
(443, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1', NULL, '2024-10-31 07:07:14', '2024-10-31 07:07:14'),
(444, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1', NULL, '2024-10-31 07:07:14', '2024-10-31 07:07:14'),
(445, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1.', NULL, '2024-10-31 07:07:24', '2024-10-31 07:07:24'),
(446, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1.', NULL, '2024-10-31 07:07:27', '2024-10-31 07:07:27'),
(447, 'Ahammed irfan m p', 'irfancybersec@gmail.com', '8594002234', '', '', 'Internship for SOC L1.', NULL, '2024-10-31 07:08:54', '2024-10-31 07:08:54'),
(448, 'Samosa Recipe (Classic Punjabi Samosa)', 'prezentyapp@gmail.com', '65657567567', '', '', NULL, NULL, '2024-10-31 22:33:35', '2024-10-31 22:33:35'),
(449, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-10-31 22:33:58', '2024-10-31 22:33:58'),
(450, 'test', 'fgfgf@dsd.fgg', '6235006006', '', '', NULL, NULL, '2024-10-31 22:37:17', '2024-10-31 22:37:17'),
(451, 'sss', 'dddd@dsd.gfg', '6235006006', '', '', NULL, NULL, '2024-10-31 22:37:55', '2024-10-31 22:37:55'),
(452, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-10-31 22:39:21', '2024-10-31 22:39:21'),
(453, 'test', 'test@gmail.com', '6235006006', '', '', NULL, NULL, '2024-10-31 22:44:38', '2024-10-31 22:44:38'),
(454, 'test', 'test@gmail.com', '6235006006', '', '', NULL, NULL, '2024-10-31 22:46:25', '2024-10-31 22:46:25'),
(455, 'test', 'prezentyapp@gmail.com', '65657567567', '', '', NULL, NULL, '2024-10-31 23:08:47', '2024-10-31 23:08:47'),
(456, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 02:37:05', '2024-11-01 02:37:05'),
(457, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 02:38:18', '2024-11-01 02:38:18'),
(458, 'test', 'prezentyapp@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 03:04:43', '2024-11-01 03:04:43'),
(459, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 03:05:52', '2024-11-01 03:05:52'),
(460, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 03:12:40', '2024-11-01 03:12:40'),
(461, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 03:16:49', '2024-11-01 03:16:49'),
(462, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 03:40:28', '2024-11-01 03:40:28'),
(463, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 03:53:29', '2024-11-01 03:53:29'),
(464, 'test', 'prezentyapp@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 04:06:34', '2024-11-01 04:06:34'),
(465, 'test', 'prezentyapp@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 04:09:39', '2024-11-01 04:09:39'),
(466, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 04:10:13', '2024-11-01 04:10:13'),
(467, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 04:13:06', '2024-11-01 04:13:06'),
(468, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 04:17:20', '2024-11-01 04:17:20'),
(469, 'test', 'prezentyapp@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 04:21:42', '2024-11-01 04:21:42'),
(470, 'test', 'prezentyapp@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-01 04:30:28', '2024-11-01 04:30:28'),
(471, 'test', 'test@gmail.com', '6235006006', '', '', NULL, NULL, '2024-11-01 04:35:08', '2024-11-01 04:35:08'),
(472, 'test', 'gfdh@fgghh.jjj', '6235006006', '', '', NULL, NULL, '2024-11-01 04:57:10', '2024-11-01 04:57:10'),
(473, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:38:42', '2024-11-01 13:38:42'),
(474, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:38:47', '2024-11-01 13:38:47'),
(475, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:38:49', '2024-11-01 13:38:49'),
(476, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:38:50', '2024-11-01 13:38:50'),
(477, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:38:56', '2024-11-01 13:38:56'),
(478, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:38:57', '2024-11-01 13:38:57'),
(479, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:39:00', '2024-11-01 13:39:00'),
(480, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:39:32', '2024-11-01 13:39:32'),
(481, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:40:12', '2024-11-01 13:40:12'),
(482, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:40:15', '2024-11-01 13:40:15'),
(483, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:40:21', '2024-11-01 13:40:21'),
(484, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:41:47', '2024-11-01 13:41:47'),
(485, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:41:57', '2024-11-01 13:41:57'),
(486, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:42:06', '2024-11-01 13:42:06'),
(487, 'Sandra k', 'sandrasan065@gmail.com', '9074514891', '', '', 'I have strong interest in Cybersecurity and am eager to gain practical experience in a renowned organization like Expert\'s SkillmMerge hub. I am confident that I could make a valuable contribution to your team while also gaining invaluable experience.', NULL, '2024-11-01 13:42:07', '2024-11-01 13:42:07'),
(488, 'Bijith', 'bijub7668@gmail.com', 'Bijith', '', '', 'Bijith', NULL, '2024-11-02 02:40:04', '2024-11-02 02:40:04'),
(489, 'Bijith', 'bijub7668@gmail.com', 'Bijith', '', '', 'Bijith', NULL, '2024-11-02 02:40:08', '2024-11-02 02:40:08'),
(490, 'test', 'prezentyapp@gmail.com', '6235006006', '', '', NULL, NULL, '2024-11-02 04:38:58', '2024-11-02 04:38:58'),
(491, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', '', '', NULL, NULL, '2024-11-02 04:43:16', '2024-11-02 04:43:16'),
(492, 'Rejina', 'trejinat24@gmail.com', '8086861606', '', '', NULL, NULL, '2024-11-03 10:58:58', '2024-11-03 10:58:58'),
(493, 'muhammed shadul', 'shadhul52@gmail.com', '9497772849', '', '', NULL, NULL, '2024-11-04 03:29:24', '2024-11-04 03:29:24'),
(494, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-04 05:08:17', '2024-11-04 05:08:17'),
(495, 'test', 'test@gmail.com', '65657567567', '', '', NULL, NULL, '2024-11-04 05:26:59', '2024-11-04 05:26:59'),
(496, 'Jkknnnn', 'ikkjjjjk@gmail.com', '7207900631', '', '', NULL, NULL, '2024-11-05 04:36:21', '2024-11-05 04:36:21'),
(497, 'Krishna', 'saikrishna5222@gmail.com', '7207900631', '', '', NULL, NULL, '2024-11-05 04:37:18', '2024-11-05 04:37:18'),
(498, 'Febinsha Sudheer', 'febinshasudheer3014@gmail.com', '7510714740', '', '', NULL, NULL, '2024-11-05 06:00:13', '2024-11-05 06:00:13'),
(499, 'Febinsha Sudheer', 'febinshasudheer3014@gmail.com', '7510714740', '', '', NULL, NULL, '2024-11-05 06:01:07', '2024-11-05 06:01:07'),
(500, 'DEELIPAN M', 'm.deelipan12.08.2006@gmail.com', '9489154087', '', '', NULL, NULL, '2024-11-05 06:59:03', '2024-11-05 06:59:03'),
(501, 'Rishad.c', 'rishad4662@gmail.com', '8943174662', '', '', NULL, NULL, '2024-11-05 09:36:03', '2024-11-05 09:36:03'),
(502, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:17', '2024-11-05 10:18:17'),
(503, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:22', '2024-11-05 10:18:22'),
(504, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:22', '2024-11-05 10:18:22'),
(505, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(506, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(507, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:22', '2024-11-05 10:18:22'),
(508, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(509, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(510, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(511, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(512, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(513, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(514, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(515, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(516, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(517, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(518, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(519, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(520, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:23', '2024-11-05 10:18:23'),
(521, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(522, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(523, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(524, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(525, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(526, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(527, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(528, 'Rahul', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:24', '2024-11-05 10:18:24'),
(529, 'Rahul kapate', 'rahulkapate0000@gmail.com', '7058871282', '', '', NULL, NULL, '2024-11-05 10:18:32', '2024-11-05 10:18:32'),
(530, 'Abimarshid', 'heybrotherareyou@hotmail.com', '7034305179', '', '', NULL, NULL, '2024-11-05 10:28:56', '2024-11-05 10:28:56'),
(531, 'Sanju sajeev', 'sanjusajeev350@gmail.com', '8606293994', '', '', NULL, NULL, '2024-11-05 11:23:08', '2024-11-05 11:23:08'),
(532, 'Sanju Sajeev', 'sanjusajeev350@gmail.com', '8606293994', '', '', NULL, NULL, '2024-11-05 11:23:39', '2024-11-05 11:23:39'),
(533, 'POOJA M', 'poojauma0611@gmail.com', '9087118301', '', '', NULL, NULL, '2024-11-05 12:18:30', '2024-11-05 12:18:30'),
(534, 'Periya Nayaki', 'm.periyanayaki11@gmail.com', '919778324951', '', '', NULL, NULL, '2024-11-07 04:26:38', '2024-11-07 04:26:38'),
(535, 'Amal', 'amalchackochan16@gmail.com', '9048131126', '', '', NULL, NULL, '2024-11-07 21:46:17', '2024-11-07 21:46:17'),
(536, 'Benitto Benson', 'benittobenson123@gmail.com', '8547572963', '', '', NULL, NULL, '2024-11-09 10:28:42', '2024-11-09 10:28:42'),
(537, 'Benitto Benson', 'benittobenson123@gmail.com', '8547572963', '', '', NULL, NULL, '2024-11-09 10:28:42', '2024-11-09 10:28:42'),
(538, 'Soorya Baiju', 'sooryabaiju2000@gmail.com', '9747599261', '', '', NULL, NULL, '2024-11-10 07:50:53', '2024-11-10 07:50:53'),
(539, 'Vismaya K S', 'vismayaksanthoshkumar@gmail.com', '7736550059', '', '', NULL, NULL, '2024-11-10 08:15:00', '2024-11-10 08:15:00'),
(540, 'Vismaya K S', 'vismayaksanthoshkumar@gmail.com', '7736550059', '', '', NULL, NULL, '2024-11-10 08:16:54', '2024-11-10 08:16:54'),
(541, 'Vismaya K S', 'vismayaksanthoshkumar@gmail.com', '7736550069', '', '', NULL, NULL, '2024-11-10 08:17:58', '2024-11-10 08:17:58'),
(542, 'Soorya Baiju', 'sooryabaiju2000@gmail.com', '9747599261', '', '', NULL, NULL, '2024-11-10 08:18:20', '2024-11-10 08:18:20'),
(543, 'Abhirami Chandran', 'abhiramiabhi6860@gmail.com', '7012518716', '', '', NULL, NULL, '2024-11-11 06:27:50', '2024-11-11 06:27:50'),
(544, 'Muhammad Muneer', 'mhdmuneer1233@gmail.com', '9633910890', '', '', NULL, NULL, '2024-11-12 02:24:42', '2024-11-12 02:24:42'),
(545, 'Mohammed Riswan PM', 'rizwanpm7358@gmail.com', '7358209364', '', '', NULL, NULL, '2024-11-12 15:23:06', '2024-11-12 15:23:06'),
(546, 'fathima shan', 'pathushans123@gmail.com', '8891313066', '', '', NULL, NULL, '2024-11-12 22:16:03', '2024-11-12 22:16:03'),
(547, 'fathima shan', 'pathushans123@gmail.com', '8891313066', '', '', NULL, NULL, '2024-11-12 22:17:50', '2024-11-12 22:17:50'),
(548, 'Ashwin R', 'nandurab@gmail.com', '8848976497', '', '', NULL, NULL, '2024-11-13 08:50:09', '2024-11-13 08:50:09'),
(549, 'Ashwin R', 'nandurab@gmail.com', '8848976497', '', '', NULL, NULL, '2024-11-13 08:51:00', '2024-11-13 08:51:00'),
(550, 'Fathima Shahla', 'fathimashahla564@gmail.com', '8714709951', '', '', NULL, NULL, '2024-11-14 08:52:16', '2024-11-14 08:52:16'),
(551, 'Sanchana Sobeendran V T', 'sanchanashobin@gmail.com', '9061243899', '', '', NULL, NULL, '2024-11-14 09:11:37', '2024-11-14 09:11:37'),
(552, 'Sujith George', 'sujithgeorge9854@gmail.com', '9809548866', '', '', NULL, NULL, '2024-11-14 12:31:53', '2024-11-14 12:31:53'),
(553, 'Sujith George', 'sujithgeorge9854@gmail.com', '9809548866', '', '', NULL, NULL, '2024-11-14 12:34:43', '2024-11-14 12:34:43'),
(554, 'Nikhila Mary D', 'nikunikhz9895@gmail.com', '9745506576', '', '', NULL, NULL, '2024-11-14 21:33:37', '2024-11-14 21:33:37'),
(555, 'Leo joseph Shaju', 'leojosephshaju@gmail.com', '7356089962', '', '', NULL, NULL, '2024-11-15 21:42:40', '2024-11-15 21:42:40'),
(556, 'Leo Joseph shaju', 'leojosephshaju@gmail.com', '7356089962', '', '', NULL, NULL, '2024-11-15 21:43:50', '2024-11-15 21:43:50'),
(557, 'Sidharth.P', 'sidharthnickziiii@gmail.com', '8086234137', '', '', NULL, NULL, '2024-11-17 03:32:16', '2024-11-17 03:32:16'),
(558, 'Shinu.c', 'higod3564@gmail.com', '917306395469', '', '', NULL, NULL, '2024-11-17 10:29:37', '2024-11-17 10:29:37'),
(559, 'NIHAL GUPTA', 'guptanihal72@gmail.com', '9559145614', '', '', NULL, NULL, '2024-11-17 13:06:11', '2024-11-17 13:06:11'),
(560, 'Abhinav Sujil', 'abhinavsujil1231@gmail.com', '8921162898', '', '', NULL, NULL, '2024-11-18 01:49:50', '2024-11-18 01:49:50'),
(561, 'Abhinav Sujil', 'abhinavsujil1231@gmail.com', '8921162898', '', '', NULL, NULL, '2024-11-18 01:50:13', '2024-11-18 01:50:13'),
(562, 'Akshay m', 'akshayamal422@gmail.com', '9995291229', '', '', NULL, NULL, '2024-11-18 02:21:58', '2024-11-18 02:21:58'),
(563, 'Vinu P', 'pkvinu223@gmail.com', '7411337756', '', '', NULL, NULL, '2024-11-18 02:43:47', '2024-11-18 02:43:47'),
(564, 'Arjun', 'arjunkty93@gmail.com', '9633380198', '', '', NULL, NULL, '2024-11-18 07:55:45', '2024-11-18 07:55:45'),
(565, 'Sudheepth', 'sudheepth1611@gmail.com', '9746488643', '', '', NULL, NULL, '2024-11-18 08:04:36', '2024-11-18 08:04:36'),
(566, 'varghese rajan', 'varsurajan18@gmail.com', '8848247751', '', '', NULL, NULL, '2024-11-18 12:59:17', '2024-11-18 12:59:17'),
(567, 'Nikhil KB', 'nikhilkb2255@gmail.com', '9745194960', '', '', NULL, NULL, '2024-11-18 13:50:42', '2024-11-18 13:50:42'),
(568, 'Nikhil K.B', 'nikhilkb2255@gmail.com', '9745194960', '', '', NULL, NULL, '2024-11-18 13:53:46', '2024-11-18 13:53:46'),
(569, 'Shihas S', 'kichu2653@gmail.com', '9961040857', '', '', NULL, NULL, '2024-11-18 13:55:19', '2024-11-18 13:55:19'),
(570, 'Divya M', 'divyamanilal003@gmail.com', '7356494858', '', '', NULL, NULL, '2024-11-18 23:33:30', '2024-11-18 23:33:30'),
(571, 'Divya. M', 'divyamanilal003@gmail.com', '+917356494858', '', '', NULL, NULL, '2024-11-18 23:35:03', '2024-11-18 23:35:03'),
(572, 'Lekshmi Ganeshan', 'lekshmi59lechu@gmail.com', '7305114889', '', '', NULL, NULL, '2024-11-19 00:13:37', '2024-11-19 00:13:37'),
(573, 'Dharma Abhilash Kumar', 'iamdak2003@gmail.com', '9605850490', '', '', NULL, NULL, '2024-11-19 00:28:29', '2024-11-19 00:28:29'),
(574, 'Dharma Abhilash Kumar', 'iamdak2003@gmail.com', '9605850490', '', '', NULL, NULL, '2024-11-19 00:28:30', '2024-11-19 00:28:30'),
(575, 'Nandana Lekshmi', 'nandanalekshmi44@gmail.com', '7736878452', '', '', NULL, NULL, '2024-11-19 09:18:55', '2024-11-19 09:18:55'),
(576, 'Nandana Lekshmi', 'nandanalekshmi44@gmail.com', '7736878452', '', '', NULL, NULL, '2024-11-19 09:19:01', '2024-11-19 09:19:01'),
(577, 'Donu Dennis', 'donudennis0754@gmail.com', '9633855041', '', '', NULL, NULL, '2024-11-19 22:52:33', '2024-11-19 22:52:33'),
(578, 'Donu Dennis', 'donudennis0754@gmail.com', '9633855041', '', '', NULL, NULL, '2024-11-19 22:54:31', '2024-11-19 22:54:31'),
(579, 'Shalih Mallamoola', 'ishazcreations@gmail.com', '7510872663', '', '', NULL, NULL, '2024-11-20 05:05:56', '2024-11-20 05:05:56'),
(580, 'Navya', 'navyakrishnan1@gmail.com', '9686621071', '', '', NULL, NULL, '2024-11-20 05:40:02', '2024-11-20 05:40:02'),
(581, 'Navya Krishnan', 'navyakrishnan1@gmail.com', '9686621071', '', '', NULL, NULL, '2024-11-20 05:40:48', '2024-11-20 05:40:48'),
(582, 'ANJANESH', 'anjaneshanja@gmail.com', '7994644423', '', '', NULL, NULL, '2024-11-20 06:47:22', '2024-11-20 06:47:22'),
(583, 'Shan Shanmon', 'shandz2002@gmail.com', '9846738344', '', '', NULL, NULL, '2024-11-20 07:31:00', '2024-11-20 07:31:00'),
(584, 'Amal nk', 'amalnkpilicode@gmail.com', '9847288736', '', '', NULL, NULL, '2024-11-20 08:25:20', '2024-11-20 08:25:20'),
(585, 'AMAL N K', 'amalnkpilicode@gmail.com', '9847288736', '', '', NULL, NULL, '2024-11-20 08:26:54', '2024-11-20 08:26:54'),
(586, 'Ashna Lukman', 'lukku3200@gmail.com', '8281647690', '', '', NULL, NULL, '2024-11-20 20:42:59', '2024-11-20 20:42:59'),
(587, 'Karthik', 'karthi809367@gmail.com', '6238980278', '', '', NULL, NULL, '2024-11-20 23:08:00', '2024-11-20 23:08:00'),
(588, 'Sreerag A S', 'assreerag11@gmail.com', '7994133886', '', '', NULL, NULL, '2024-11-21 04:58:50', '2024-11-21 04:58:50'),
(589, 'Ashfak', 'ashfak583@gmail.com', '6238496445', '', '', NULL, NULL, '2024-11-21 05:36:39', '2024-11-21 05:36:39'),
(590, 'Ashfak B', 'ashfak583@gmail.com', '6238496445', '', '', NULL, NULL, '2024-11-21 05:38:47', '2024-11-21 05:38:47'),
(591, 'Vishnu pradeep', 'vishnupradeep080@gmail.com', '7736877169', '', '', NULL, NULL, '2024-11-21 08:37:10', '2024-11-21 08:37:10'),
(592, 'Vishnu pradeep', 'vishnupradeep080@gmail.com', '7736877169', '', '', NULL, NULL, '2024-11-21 08:37:49', '2024-11-21 08:37:49'),
(593, 'Arjun', 'arjunkty93@gmail.com', '9633380198', '', '', NULL, NULL, '2024-11-21 09:10:16', '2024-11-21 09:10:16'),
(594, 'Amarnath', 'amarnathpersonal1155@gmail.com', '8893298821', '', '', NULL, NULL, '2024-11-21 13:50:16', '2024-11-21 13:50:16'),
(595, 'Athul', 'athullalcheruvalath@gmail.com', '9645799177', '', '', NULL, NULL, '2024-11-22 00:23:31', '2024-11-22 00:23:31'),
(596, 'Athul', 'athullalcheruvalath@gmail.com', '9645799177', '', '', NULL, NULL, '2024-11-22 00:23:32', '2024-11-22 00:23:32'),
(597, 'Athul', 'athullalcheruvalath@gmail.com', '9645799177', '', '', NULL, NULL, '2024-11-22 00:23:33', '2024-11-22 00:23:33'),
(598, 'Hanshid', 'hamshidph762@gmail.com', '8590671665', '', '', NULL, NULL, '2024-11-22 04:09:07', '2024-11-22 04:09:07'),
(599, 'Javad', 'imjavadlm10@gmail.com', '8129795290', '', '', NULL, NULL, '2024-11-22 07:35:09', '2024-11-22 07:35:09'),
(600, 'Rohith.s', 'rohithsree.737@gmail.com', '7994896737', '', '', NULL, NULL, '2024-11-22 09:46:23', '2024-11-22 09:46:23'),
(601, 'Nisar', 'www.nisarp7777@gmail.com', '8129353590', '', '', NULL, NULL, '2024-11-22 12:08:51', '2024-11-22 12:08:51'),
(602, 'Aleena John', 'aleenajohneliza2002@gmail.com', '7994196298', '', '', NULL, NULL, '2024-11-22 12:18:38', '2024-11-22 12:18:38'),
(603, 'Jithin', 'jithinshajan11@gmail.com', '7736175886', '', '', NULL, NULL, '2024-11-22 15:11:17', '2024-11-22 15:11:17'),
(604, 'Shadil', 'shadilshalu952656@gmail.com', '6238892655', '', '', NULL, NULL, '2024-11-24 03:02:51', '2024-11-24 03:02:51'),
(605, 'Fibin mn', 'fibimn5555@gmail.com', '9747325555', '', '', NULL, NULL, '2024-11-24 03:20:46', '2024-11-24 03:20:46'),
(606, 'Amisha varghese', 'amishvarghese02@gmail.com', '9188780148', '', '', NULL, NULL, '2024-11-24 04:44:00', '2024-11-24 04:44:00'),
(607, 'Amisha varghese', 'amishavargheae02@gmail.com', '9188780148', '', '', NULL, NULL, '2024-11-24 04:44:51', '2024-11-24 04:44:51'),
(608, 'Sreejith A', 'sreejithksd797@gmail.com', '7994153439', '', '', NULL, NULL, '2024-11-24 05:44:38', '2024-11-24 05:44:38'),
(609, 'NITHIN C GOPI', 'nitthincgopi@gmail.com', '07736567556', '', '', NULL, NULL, '2024-11-24 08:30:14', '2024-11-24 08:30:14'),
(610, 'Muhammed Irfan', 'irfanmuhammed5267@gmail.com', '8129314969', '', '', NULL, NULL, '2024-11-24 10:12:18', '2024-11-24 10:12:18'),
(611, 'Muhammed Raoof', 'muthuraoof@gmail.com', '6282497364', '', '', NULL, NULL, '2024-11-24 11:22:51', '2024-11-24 11:22:51'),
(612, 'Kasmeera A A', 'kasmeeraanil@gmail.com', '918281942505', '', '', NULL, NULL, '2024-11-24 13:00:08', '2024-11-24 13:00:08'),
(613, 'Kasmeera A A', 'kasmeeraanil@gmail.com', '8281942505', '', '', NULL, NULL, '2024-11-24 13:01:18', '2024-11-24 13:01:18'),
(614, 'Jasim', 'jasim3454@gmail.com', '9207387327', '', '', NULL, NULL, '2024-11-25 00:07:48', '2024-11-25 00:07:48'),
(615, 'Jasim', 'jasim3454@gmail.com', '9207387327', '', '', NULL, NULL, '2024-11-25 00:07:48', '2024-11-25 00:07:48'),
(616, 'Riya Fathima', 'riyafaathima@gmail.com', '9961063555', '', '', NULL, NULL, '2024-11-25 00:36:03', '2024-11-25 00:36:03'),
(617, 'Riya Fathima', 'riyafaathima@gmail.com', '9961063555', '', '', NULL, NULL, '2024-11-25 00:36:07', '2024-11-25 00:36:07'),
(618, 'Riya Fathima', 'riyafaathima@gmail.com', '9961063555', '', '', NULL, NULL, '2024-11-25 00:36:48', '2024-11-25 00:36:48'),
(619, 'Riya Fathima', 'riyafaathima@gmail.com', '9961063555', '', '', NULL, NULL, '2024-11-25 00:36:48', '2024-11-25 00:36:48'),
(620, 'Muhammed Yousaf Sakariya', 'youtakeatea@gmail.com', '7306680158', '', '', NULL, NULL, '2024-11-25 05:42:00', '2024-11-25 05:42:00'),
(621, 'Muhammed Sawad', '916sawad@gmail.com', '7025741311', '', '', NULL, NULL, '2024-11-25 10:07:09', '2024-11-25 10:07:09'),
(622, 'ADITH UR', 'aadhiravii66@gmail.com', '8137073175', '', '', NULL, NULL, '2024-11-25 11:10:27', '2024-11-25 11:10:27'),
(623, 'Arun K', 'ardrakrishna0098@gmail.com', '9061843967', '', '', NULL, NULL, '2024-11-26 09:14:03', '2024-11-26 09:14:03'),
(624, 'Anoop krishnan P', 'anoopkrishnanp2001@gmail.com', '9497437211', '', '', NULL, NULL, '2024-11-26 10:12:30', '2024-11-26 10:12:30'),
(625, 'Anjali M', 'anjalianavankot2000@gmail.com', '09061356781', '', '', NULL, NULL, '2024-11-26 10:12:38', '2024-11-26 10:12:38'),
(626, 'Anjali M', 'anjalianavankot2000@gmail.com', '09061356781', '', '', NULL, NULL, '2024-11-26 10:13:39', '2024-11-26 10:13:39'),
(627, 'Muhammed Ashiq', 'ashiqmadassery@gmail.com', '9744007457', '', '', NULL, NULL, '2024-11-26 10:58:37', '2024-11-26 10:58:37'),
(628, 'Afsal', 'afsaazeez3@gmail.com', '8547758583', '', '', NULL, NULL, '2024-11-27 01:53:32', '2024-11-27 01:53:32'),
(629, 'Anju', 'anjusarajoseph@gmail.com', '8075841653', '', '', NULL, NULL, '2024-11-27 06:33:23', '2024-11-27 06:33:23'),
(630, 'Baburishan', 'baburishan7@gmail.com', '7510810478', '', '', NULL, NULL, '2024-11-27 10:36:50', '2024-11-27 10:36:50'),
(631, 'Shon Biju', 'shonbiju49@gmail.com', '9645937847', '', '', NULL, NULL, '2024-11-27 11:54:56', '2024-11-27 11:54:56'),
(632, 'Shon Biju', 'shonbiju49@gmail.com', '9645937847', '', '', NULL, NULL, '2024-11-27 11:56:08', '2024-11-27 11:56:08'),
(633, 'Sooraj Suryakiran', 'soorajsuryakiran1@gmail.com', '8301893138', '', '', NULL, NULL, '2024-11-27 15:19:35', '2024-11-27 15:19:35'),
(634, 'Aswin S Nair', 'snair.aswin@gmail.com', '09747549692', '', '', NULL, NULL, '2024-11-27 23:51:28', '2024-11-27 23:51:28'),
(635, 'Salman op', 'ottuparasalman@gmail.com', '7356611927', '', '', NULL, NULL, '2024-11-28 02:42:22', '2024-11-28 02:42:22'),
(636, 'Kiran A', 'kiranajayakumar01@gmail.com', '7994551429', '', '', NULL, NULL, '2024-11-28 04:04:07', '2024-11-28 04:04:07'),
(637, 'Kiran A', 'kiranajayakumar01@gmail.com', '7994551429', '', '', NULL, NULL, '2024-11-28 04:05:17', '2024-11-28 04:05:17'),
(638, 'test', 'test@gmail.com', '09874563210', 'Cybersecurity', 'Online', NULL, NULL, '2024-11-28 04:33:49', '2024-11-28 04:33:49'),
(639, 'Shibin K', 'kshibin404@gmail.com', '7403122614', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-11-28 06:54:07', '2024-11-28 06:54:07'),
(640, 'Rishal k', 'rrishal25@gmail.com', '8086668547', 'Cybersecurity', 'Online', NULL, NULL, '2024-11-29 00:04:20', '2024-11-29 00:04:20'),
(641, 'Sruthy Francis', 'sruthy.f.98@gmail.com', '06238504617', 'Cybersecurity', 'Online', NULL, NULL, '2024-11-29 01:38:38', '2024-11-29 01:38:38'),
(642, 'Sooraj Suryakiran', 'soorajsuryakiran1@gmail.com', '8301893138', 'Ethical Hacking', 'Online', NULL, NULL, '2024-11-29 01:44:23', '2024-11-29 01:44:23'),
(643, 'Amal Thulasi', 'amalthulasi819@gmail.com', '07994010940', 'Cybersecurity', 'Online', NULL, NULL, '2024-11-29 02:11:34', '2024-11-29 02:11:34');
INSERT INTO `students` (`id`, `name`, `email`, `phone_number`, `course`, `mode`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(644, 'Rejina t', 'trejinat24@gmail.com', '8086861606', 'Cybersecurity', 'On-site', NULL, NULL, '2024-11-29 03:08:34', '2024-11-29 03:08:34'),
(645, 'Syam Raj E N', 'rajharee99@gmail.com', '9142697752', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-11-29 03:43:54', '2024-11-29 03:43:54'),
(646, 'ADHARSH DS', 'adarshunni785@gmail.com', '9207921969', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-11-29 03:56:00', '2024-11-29 03:56:00'),
(647, 'ADHARSH DS', 'adarshunni785@gmail.com', '9207921969', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-11-29 03:56:01', '2024-11-29 03:56:01'),
(648, 'Libhin rs', 'libhinrs@gmail.com', '7012205113', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-11-30 06:50:30', '2024-11-30 06:50:30'),
(649, 'Aravind Anil', 'aravindanil.mail@gmail.com', '9188037982', 'Cybersecurity', 'Online', NULL, NULL, '2024-11-30 08:09:53', '2024-11-30 08:09:53'),
(650, 'Sarath N', 'sarathambadiyil846@gmail.com', '7736156846', 'Ethical Hacking', 'Online', NULL, NULL, '2024-11-30 11:34:28', '2024-11-30 11:34:28'),
(651, 'Vishnujit', 'vjsw2001@gmail.com', '8300893022', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-11-30 11:57:50', '2024-11-30 11:57:50'),
(652, 'Muhammed fahiz', 'muhammedsinanmsinan0@gmail.com', '6282071982', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-11-30 21:00:23', '2024-11-30 21:00:23'),
(653, 'Muhammed Saeed.m', 'muhammedsaeed695563@gmail.com', '07034203934', 'Ethical Hacking', 'Online', NULL, NULL, '2024-11-30 22:27:31', '2024-11-30 22:27:31'),
(654, 'Abdul raheem', 'abdulraheemrahee@gmail.com', '8075270490', 'Full Stack Development', 'Online', NULL, NULL, '2024-12-01 00:46:53', '2024-12-01 00:46:53'),
(655, 'Nizamudheen P.H', 'n2257973@gmail.com', '9072405297', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-01 05:29:16', '2024-12-01 05:29:16'),
(656, 'PHILIP C GEORGE', 'philipcgeorge300@gmail.com', '6282098711', 'Full Stack Development', 'Online', NULL, NULL, '2024-12-01 09:45:03', '2024-12-01 09:45:03'),
(657, 'Dilshad', 'dilshaddilan013@gmail.com', '7306096043', 'Full Stack Development', 'Online', NULL, NULL, '2024-12-01 11:32:07', '2024-12-01 11:32:07'),
(658, 'Safvan salih', 'kksafvan@live.com', '6235562622', 'Artificial Intelligence', 'On-site', NULL, NULL, '2024-12-01 11:32:08', '2024-12-01 11:32:08'),
(659, 'Safvan salih', 'kksafvan@live.com', '6235562622', 'Artificial Intelligence', 'On-site', NULL, NULL, '2024-12-01 11:32:09', '2024-12-01 11:32:09'),
(660, 'vazeem', 'vazeem340@gmail.com', '8129895987', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-01 12:33:56', '2024-12-01 12:33:56'),
(661, 'Sharon Anil', 'sharonanil555@gmail.com', '8281762218', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-04 00:52:59', '2024-12-04 00:52:59'),
(662, 'Amal Nk', 'amalnkpilicode@gmail.com', '9847288736', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-04 07:46:51', '2024-12-04 07:46:51'),
(663, 'JUAN K VARGHESE', 'juniorgaming0848@gmail.com', '9946060848', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-12-04 10:47:55', '2024-12-04 10:47:55'),
(664, 'Chris Tom', 'chrisdq18@gmail.com', '9539627943', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-04 11:31:07', '2024-12-04 11:31:07'),
(665, 'SANOOP Sajan', 'sanoopsajan2004@gmail.com', '7306657078', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-05 07:54:28', '2024-12-05 07:54:28'),
(666, 'Bibin', 'bibinthomas123123@gamil.com', '9447285154', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-05 09:44:36', '2024-12-05 09:44:36'),
(667, 'Bijobin', 'bijobinchakkara@gmail.com', '917994186290', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-06 02:03:04', '2024-12-06 02:03:04'),
(668, 'Salman Hashir', 'salman.muthan@gmail.com', '9496472391', 'Full Stack Development', 'On-site', NULL, NULL, '2024-12-06 03:30:04', '2024-12-06 03:30:04'),
(669, 'Sachin babu', 'sachuzz9747@gmail.com', '9747643343', 'Artificial Intelligence', 'On-site', NULL, NULL, '2024-12-06 06:08:12', '2024-12-06 06:08:12'),
(670, 'Afsalmubarack', 'afsalmubarack1234@gmail.com', '7907501301', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-06 21:05:34', '2024-12-06 21:05:34'),
(671, 'Muhammed Shibili', 'muhammedshibili193@gmail.com', '8606638435', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-06 21:17:09', '2024-12-06 21:17:09'),
(672, 'ashiq', 'muhamedashiq916@gmail.com', '9562884363', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-12-07 02:23:40', '2024-12-07 02:23:40'),
(673, 'Syam chandran', 'syamtky90@gmail.com', '6282166727', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-07 03:53:21', '2024-12-07 03:53:21'),
(674, 'ABHIJITH kb', 'abhijithkb.aj1@gmail.com', '9539582352', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-07 08:43:19', '2024-12-07 08:43:19'),
(675, 'ABHIJITH KB', 'abhijithkb.aj1@gmail.com', '9539582352', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-08 11:25:02', '2024-12-08 11:25:02'),
(676, 'Fathimathul fida', 'fidafa111@gmail.com', '8129707841', 'Full Stack Development', 'On-site', NULL, NULL, '2024-12-08 11:56:55', '2024-12-08 11:56:55'),
(677, 'Narlapalli Srikanth', 'srikanthnarlapally8@gmail.com', '6301134372', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-08 13:15:03', '2024-12-08 13:15:03'),
(678, 'Ashiq Mohammed', 'ashiqash347@gmail.com', '9809148414', 'Artificial Intelligence', 'Online', NULL, NULL, '2024-12-09 03:52:28', '2024-12-09 03:52:28'),
(679, 'Yashin Majeed', 'majeedyashin03@gmail.com', '8289899569', 'Artificial Intelligence', 'Online', NULL, NULL, '2024-12-09 05:20:14', '2024-12-09 05:20:14'),
(680, 'Sreekesh K', 'sreekesh09@gmail.com', '8075254190', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-09 08:55:01', '2024-12-09 08:55:01'),
(681, 'Rebilraj kR', 'bindurajamani123@gmail.com', '9744752236', 'Full Stack Development', 'On-site', NULL, NULL, '2024-12-09 09:20:47', '2024-12-09 09:20:47'),
(682, 'Muhammed Yousaf Sakariya', 'youtakeatea@gmail.com', '7306680158', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-09 09:51:08', '2024-12-09 09:51:08'),
(683, 'ZAFAR JAVAD', 'zafarmohammedj@gmail.com', '8891084215', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-10 06:09:53', '2024-12-10 06:09:53'),
(684, 'Akhil Johny', 'akhiljohny1@gmail.com', '9495186134', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-10 06:40:56', '2024-12-10 06:40:56'),
(685, 'Mohammed Arshad', '5656ard@gmail.com', '8075845952', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-10 07:03:55', '2024-12-10 07:03:55'),
(686, 'Anjali M Pillai', 'ampillai2001@gmail.com', '6238416584', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-10 09:06:31', '2024-12-10 09:06:31'),
(687, 'Roshan jose', 'roshanjosefeb@gmail.com', '8891051779', 'Artificial Intelligence', 'Online', NULL, NULL, '2024-12-10 11:54:30', '2024-12-10 11:54:30'),
(688, 'Irfan', 'irfanmuhammed5267@gmail.com', '9633013991', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-10 11:59:09', '2024-12-10 11:59:09'),
(689, 'Sreerag', 'sreerag457@gmail.com', '6282759908', 'Artificial Intelligence', 'On-site', NULL, NULL, '2024-12-11 04:44:44', '2024-12-11 04:44:44'),
(690, 'Sreejith', 'jithuvijayan141@gmail.com', '7736356778', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-11 08:48:32', '2024-12-11 08:48:32'),
(691, 'PHILIP C GEORGE', 'philipcgeorge300@gmail.com', '6282098711', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-11 08:50:07', '2024-12-11 08:50:07'),
(692, 'Mohammed yaseen va', 'yaseenmohammedva@gmail.com', '7736480766', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-11 10:35:42', '2024-12-11 10:35:42'),
(693, 'Shaik Moulali', 'shaikmoulali15040@gmail.com', '9392097783', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-11 11:32:30', '2024-12-11 11:32:30'),
(694, 'Akhil Johny', 'akhiljohny1@gmail.com', '9495186134', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-11 21:20:15', '2024-12-11 21:20:15'),
(695, 'Nandana Bose', 'bosenandanabose@gmail.com', '919778226517', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-12 06:46:39', '2024-12-12 06:46:39'),
(696, 'Christin joy', 'joychristin9@gmail.com', '7558957618', 'Full Stack Development', 'On-site', NULL, NULL, '2024-12-12 22:24:39', '2024-12-12 22:24:39'),
(697, 'Aj sreenandh', 'sreenandhajaj@gmail.com', '9633531704', 'Ethical Hacking', 'On-site', NULL, NULL, '2024-12-13 02:53:20', '2024-12-13 02:53:20'),
(698, 'Dalvin Dennis', 'csdalvindennis99@gmail.com', '8921248138', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-13 14:17:30', '2024-12-13 14:17:30'),
(699, 'Abdul varis', 'variz8136@gmail.com', '7736403816', 'Artificial Intelligence', 'Online', NULL, NULL, '2024-12-14 21:59:20', '2024-12-14 21:59:20'),
(700, 'Anoop T Anil', 'adithyaanoop250@gmail.com', '8075453735', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-15 01:32:57', '2024-12-15 01:32:57'),
(701, 'Ilyas', 'ilyas.pp940@gmail.com', '6361575759', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-15 04:12:34', '2024-12-15 04:12:34'),
(702, 'Kamarudheen', 'kamaru.office@gmail.com', '9400711976', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-15 05:47:27', '2024-12-15 05:47:27'),
(703, 'MOHAMMED NIHAL KK', 'modnilkk07@gmail.com', '7994853025', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-15 09:23:22', '2024-12-15 09:23:22'),
(704, 'sreelekshmi s', 'sreelekshmisunimol1996@gmail.com', '917012062359', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-15 13:20:16', '2024-12-15 13:20:16'),
(705, 'sreelekshmi s', 'sreelekshmisunimol1996@gmail.com', '917012062359', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-15 13:21:37', '2024-12-15 13:21:37'),
(706, 'Mohammed naji', 'najimuhammed583@gmail.com', '9567376630', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-16 08:01:27', '2024-12-16 08:01:27'),
(707, 'Yaseen', 'yaseensakkariya@gmail.com', '8606429558', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-16 21:25:58', '2024-12-16 21:25:58'),
(708, 'RIZWIN T', 'rizwinriz05@gmail.com', '7356987879', 'Artificial Intelligence', 'On-site', NULL, NULL, '2024-12-17 01:27:06', '2024-12-17 01:27:06'),
(709, 'Govarnika.G', 'govarnika2004@gmail.com', '9947283004', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-17 08:59:20', '2024-12-17 08:59:20'),
(710, 'Mohammed naji', 'muhammednaji6630@gmail.com', '9567376630', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-17 11:35:00', '2024-12-17 11:35:00'),
(711, 'Jithin Jose', 'josejithin513@gmail.com', '8075323673', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-17 23:34:08', '2024-12-17 23:34:08'),
(712, 'Nithin', 'nandanithin1@gmail.com', '8592964056', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-18 03:16:09', '2024-12-18 03:16:09'),
(713, 'Nithin', 'nandanithin1@gmail.com', '8592964056', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-18 03:16:10', '2024-12-18 03:16:10'),
(714, 'Muhammedfarzeen tp', 'muhammedfarzeen6664@gmail.com', '9074830663', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-18 03:43:10', '2024-12-18 03:43:10'),
(715, 'RIZWIN T', 'rizwinriz05@gmail.com', '7356987879', 'Artificial Intelligence', 'On-site', NULL, NULL, '2024-12-19 00:06:26', '2024-12-19 00:06:26'),
(716, 'Subinjith Subin Jith', 'subinjitg@gmail.com', '9995782945', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-19 02:33:39', '2024-12-19 02:33:39'),
(717, 'Vishnuprasad pp', 'vishnuprasadsurendran@gmail.com', '8089947555', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-19 23:27:17', '2024-12-19 23:27:17'),
(718, 'Shahza', 'shahzaanajeeb24@gmail.com', '971565792360', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-20 09:41:10', '2024-12-20 09:41:10'),
(719, 'Mohammed Rinaz', 'rinazmohammed10@gmail.com', '9656631728', 'Full Stack Development', 'Online', NULL, NULL, '2024-12-20 14:00:17', '2024-12-20 14:00:17'),
(720, 'Mohammed Rinaz', 'rinazmohammed10@gmail.com', '9656631728', 'Full Stack Development', 'Online', NULL, NULL, '2024-12-20 14:00:45', '2024-12-20 14:00:45'),
(721, 'Mohammed Rinaz', 'rinazmohammed10@gmail.com', '9656631728', 'Full Stack Development', 'Online', NULL, NULL, '2024-12-20 14:03:45', '2024-12-20 14:03:45'),
(722, 'Rahul krishna P', 'rahulkrishnap446@gmail.com', '9074568874', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-20 21:33:05', '2024-12-20 21:33:05'),
(723, 'Jemshiya A', 'jemshiyamuthaleef146@gmail.com', '7306618146', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-21 07:02:54', '2024-12-21 07:02:54'),
(724, 'Almas Ali', 'almasali2072000@gmail.com', '9846007768', 'Cybersecurity', 'On-site', NULL, NULL, '2024-12-23 02:44:48', '2024-12-23 02:44:48'),
(725, 'Rishin Nijas', 'rishinbroo@gmail.com', '9778094370', 'Full Stack Development', 'On-site', NULL, NULL, '2024-12-25 03:06:28', '2024-12-25 03:06:28'),
(726, 'Sourav', 'souravmadhavan99@gmail.com', '8129249648', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-25 09:01:15', '2024-12-25 09:01:15'),
(727, 'Vivin Richard K', 'vivianrichardkurisinkal@gmail.com', '8714912994', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-25 10:37:12', '2024-12-25 10:37:12'),
(728, 'Nithin krishnan', 'nithinukc@gmail.com', '9562068110', 'Cybersecurity', 'Online', NULL, NULL, '2024-12-25 23:59:11', '2024-12-25 23:59:11'),
(729, 'SREEPRABHA S KUMAR', 'sreeprabhaharisree@gmail.com', '9947893516', 'Artificial Intelligence', 'Online', NULL, NULL, '2024-12-26 01:32:39', '2024-12-26 01:32:39'),
(730, 'Sabari Suresh', 'sabarisureshs078@gmail.com', '9645733352', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-28 04:33:36', '2024-12-28 04:33:36'),
(731, 'Shaik Moulali', 'shaikmoulali15040@gmail.com', '9392097783', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-31 03:22:27', '2024-12-31 03:22:27'),
(732, 'Shaik Moulali', 'shaikmoulali15040@gmail.com', '9392097783', 'Ethical Hacking', 'Online', NULL, NULL, '2024-12-31 03:22:27', '2024-12-31 03:22:27'),
(733, 'Prasobh p preman', 'prasobpreman003@gmail.com', '9495415120', 'Artificial Intelligence', 'On-site', NULL, NULL, '2025-01-03 08:02:44', '2025-01-03 08:02:44'),
(734, 'Shibily Rahman', 'shibilyrahman96@gmail.com', '9495287530', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-05 03:09:00', '2025-01-05 03:09:00'),
(735, 'Shibili Jasir', 'shibilikkm@gmail.com', '7994697066', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-06 23:06:44', '2025-01-06 23:06:44'),
(736, 'test', 'test@email.com', '1234567890', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-06 23:14:04', '2025-01-06 23:14:04'),
(737, 'Shibili', 'shibilikkm@gmail.com', '7994697706', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-07 00:51:44', '2025-01-07 00:51:44'),
(738, 'test', 'prezentyapp@gmail.com', '09874563210', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-07 01:06:51', '2025-01-07 01:06:51'),
(739, 'Vishnu Ramachandran', 'vishnuramachandranr10@gmail.com', '9526747309', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-07 04:11:02', '2025-01-07 04:11:02'),
(740, 'Basil Thomas', 'basilthomas323@gmail.com', '8304069815', 'Ethical Hacking', 'Online', NULL, NULL, '2025-01-08 02:04:43', '2025-01-08 02:04:43'),
(741, 'Muhammed Shibili Jasir', 'skillmergeindia@gmail.com', '09656496085', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-08 23:36:08', '2025-01-08 23:36:08'),
(742, 'NIMIN RAJ', 'jodnix700@gmail.com', '8113018275', 'Cybersecurity', 'On-site', NULL, NULL, '2025-01-08 23:51:11', '2025-01-08 23:51:11'),
(743, 'Abhiraj A', 'abhirajabhiram@gmail.com', '9633145342', 'Cybersecurity', 'On-site', NULL, NULL, '2025-01-09 01:01:51', '2025-01-09 01:01:51'),
(744, 'shibili', 'ssdf@hmail.com', '07994697706', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-09 01:57:04', '2025-01-09 01:57:04'),
(745, 'shibili', 'shibilikkm@gmail.com', '7836276733', 'Artificial Intelligence', 'Online', NULL, NULL, '2025-01-09 02:15:46', '2025-01-09 02:15:46'),
(746, 'test2', 'test@gmail.com', '6732828333', 'Artificial Intelligence', 'Online', NULL, NULL, '2025-01-09 02:17:09', '2025-01-09 02:17:09'),
(747, 'Ron George', 'ron_macosx@yahoo.in', '8590956061', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-09 03:33:42', '2025-01-09 03:33:42'),
(748, 'shibili', 'shibilikkm@gmail.com', '6765567667', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-09 03:49:12', '2025-01-09 03:49:12'),
(749, 'Anandhu kulangara babu', 'akulangarababu@gmail.com', '9061441143', 'Artificial Intelligence', 'On-site', NULL, NULL, '2025-01-09 09:42:09', '2025-01-09 09:42:09'),
(750, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:11', '2025-01-10 02:25:11'),
(751, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:12', '2025-01-10 02:25:12'),
(752, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:13', '2025-01-10 02:25:13'),
(753, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:13', '2025-01-10 02:25:13'),
(754, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:13', '2025-01-10 02:25:13'),
(755, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:13', '2025-01-10 02:25:13'),
(756, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:14', '2025-01-10 02:25:14'),
(757, 'SUnil', 'sunilsunilsiva1@gmail.com', '10254209545', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-10 02:25:14', '2025-01-10 02:25:14'),
(758, 'Mohamed Favaz', 'mohamedfavaz2002@gmail.com', '8593048536', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-10 03:28:40', '2025-01-10 03:28:40'),
(759, 'Mohamed Favaz', 'mohamedfavaz2002@gmail.com', '8593048536', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-10 03:28:40', '2025-01-10 03:28:40'),
(760, 'Mohamed Favaz', 'mohamedfavaz2002@gmail.com', '8593048536', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-10 03:28:41', '2025-01-10 03:28:41'),
(761, 'Mohamed Favaz', 'mohamedfavaz2002@gmail.com', '8593048536', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-10 03:28:41', '2025-01-10 03:28:41'),
(762, 'Mohamed Favaz', 'mohamedfavaz2002@gmail.com', '8593048536', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-10 03:28:41', '2025-01-10 03:28:41'),
(763, 'Mohamed Favaz', 'mohamedfavaz2002@gmail.com', '8593048536', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-10 03:28:41', '2025-01-10 03:28:41'),
(764, 'Mohamed Favaz', 'mohamedfavaz2002@gmail.com', '8593048536', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-10 03:28:42', '2025-01-10 03:28:42'),
(765, 'Rxthexsh', 'ratheesh@gmail.com', '9778206872', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-10 03:36:34', '2025-01-10 03:36:34'),
(766, 'Joffin Jose', 'joffinjosem@gmail.com', '9645949855', 'Ethical Hacking', 'Online', NULL, NULL, '2025-01-10 20:51:54', '2025-01-10 20:51:54'),
(767, 'Linto', 'justrelax4awhile@gmail.com', '9037778061', 'Ethical Hacking', 'On-site', NULL, NULL, '2025-01-11 02:48:42', '2025-01-11 02:48:42'),
(768, 'Reshma Nair', 'reshmanair260@gmail.com', '9074765711', 'Artificial Intelligence', 'On-site', NULL, NULL, '2025-01-11 05:40:17', '2025-01-11 05:40:17'),
(769, 'Muhammed Ajfan pa', 'ajfanjifu1123@gmail.com', '8590896373', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-13 00:09:14', '2025-01-13 00:09:14'),
(770, 'Muhammed Yasir', 'muhdyasir223@gmail.com', '9188693893', 'Cybersecurity', 'Online', NULL, NULL, '2025-01-16 11:07:52', '2025-01-16 11:07:52'),
(771, 'Sayyid abdulla Fairoose', 'safmedia9@gmail.com', '9526119111', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-18 05:41:00', '2025-01-18 05:41:00'),
(772, 'Aswanth Ramakrishnan', 'aswanthnam@gmail.com', '8086709079', 'Ethical Hacking', 'Online', NULL, NULL, '2025-01-19 08:59:49', '2025-01-19 08:59:49'),
(773, 'Akhil Abraham', 'akhilabrahamthoppil15@gmail.com', '8281003515', 'Artificial Intelligence', 'On-site', NULL, NULL, '2025-01-20 01:01:47', '2025-01-20 01:01:47'),
(774, 'Bincy Mariyam C', 'bincymariyam97@gmail.com', '8943401839', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-20 03:58:22', '2025-01-20 03:58:22'),
(775, 'Ayshath Salbana', 'ayshathsalbana@gmail.com', '9495211706', 'Full Stack Development', 'Online', NULL, NULL, '2025-01-20 05:09:48', '2025-01-20 05:09:48'),
(776, 'Golfy Johnson', 'johnsongolfy@gmail.com', '9539545219', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-21 01:21:22', '2025-01-21 01:21:22'),
(777, 'Jenolin Shelu P', 'jenolinshelu@gmail.com', '9489256176', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-22 04:50:04', '2025-01-22 04:50:04'),
(778, 'Jenolin Shelu P', 'jenolinshelu@gmail.com', '9489256176', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-22 04:50:04', '2025-01-22 04:50:04'),
(779, 'Muhammed Hanan', 'hananrokz999@gmail.com', '9995221017', 'Artificial Intelligence', 'Online', NULL, NULL, '2025-01-22 17:44:15', '2025-01-22 17:44:15'),
(780, 'Muhsina Thasnim', 'muhsinathasnim26@gmail.com', '9778310557', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-24 02:53:00', '2025-01-24 02:53:00'),
(781, 'VishnurajS', 'vishnurajnms@gmail.com', '8156964783', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-24 11:00:06', '2025-01-24 11:00:06'),
(782, 'VishnurajS', 'vishnurajnms@gmail.com', '8156964783', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-24 11:00:06', '2025-01-24 11:00:06'),
(783, 'Ekundayo Emmanuel', 'dayoe0351@gmail.com', '09070721522', 'Ethical Hacking', 'Online', NULL, NULL, '2025-01-24 14:54:22', '2025-01-24 14:54:22'),
(784, 'Ekundayo Emmanuel', 'dayoe0351@gmail.com', '09070721522', 'Ethical Hacking', 'Online', NULL, NULL, '2025-01-24 14:54:22', '2025-01-24 14:54:22'),
(785, 'Abishek', 'abishekvs969@gmail.com', '7306189238', 'Artificial Intelligence', 'On-site', NULL, NULL, '2025-01-26 06:15:51', '2025-01-26 06:15:51'),
(786, 'Nidhin Mohan', 'mvnidhin12@gmail.com', '9061560238', 'Artificial Intelligence', 'Online', NULL, NULL, '2025-01-26 11:17:09', '2025-01-26 11:17:09'),
(787, 'Manish Kumar Maurya', 'manishmourya2003@gmail.com', '6238685902', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-26 21:09:42', '2025-01-26 21:09:42'),
(788, 'Krishna pushpan', 'krishnapushpan2003@gmail.com', '9961194544', 'Full Stack Development', 'On-site', NULL, NULL, '2025-01-27 10:51:28', '2025-01-27 10:51:28'),
(789, 'PHILIP C GEORGE', 'philipcgeorge300@gmail.com', '6282098711', 'Cybersecurity', 'On-site', NULL, NULL, '2025-01-27 12:17:00', '2025-01-27 12:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `achievements` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `parent_companies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `description`, `achievements`, `parent_companies`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<p>Our professionals are young, talented, and having the most advanced hacking skills. Their vibrant ideas make our clients secure and satisfied. Teamwork is our key to success in all onsite and offsite projects and Duties.</p>', '[{\"title\":\"Innovative Projects:\",\"description\":\"<ul><li>GreenTech Initiative (2020): Partnered with leading environmental organizations to develop and implement sustainable technology solutions, resulting in a 30% increase in energy efficiency for participating companies.<\\/li><li>&nbsp;Healthcare AI Project (2021): Collaborated with top healthcare providers to integrate AI-driven diagnostics, reducing diagnostic errors by 25% and improving patient outcomes.<\\/li><\\/ul>\"},{\"title\":\"Client Success:\",\"description\":\"<ul><li>Achieved a 95% client satisfaction rate, reflecting our commitment to exceeding client expectations.&nbsp;<\\/li><li>Grew our client base to include over 100 industry-leading companies, establishing our reputation as a trusted partner.<\\/li><\\/ul>\"}]', '[{\"title\":\"Jai Bharath Group of Institutions.\",\"icon_image\":\"partners_icons\\/oe286pQIhmTRAdfuY9qE3TcbN95VKmbLxa19kqAX.png\"},{\"title\":\"EME\",\"icon_image\":\"partners_icons\\/3rf7uj6rVg50SOHarQuOQVHQce0wddo6Tbco1vwH.png\"},{\"title\":\"Nergy Vidya\",\"icon_image\":\"partners_icons\\/O9lcnQvVEaEiGxQ68vfssyzCGEIGKPxaTUVT0Pb8.png\"}]', NULL, '2024-07-22 00:38:23', '2024-08-16 01:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `description`, `client_data`, `client_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Testimonial 1', '<p>This Internship in Cloud Computing and Cyber Security provides a thorough and structured experience with both basic and advanced topics. It includes practical projects and expert guidance, helping you prepare for key industry certifications. While some may find the pace uneven and the cost higher compared to other options, it’s a strong choice for skill development. Many participants, including myself, have successfully met their career goals through this internship.</p>', 'Pooja', 'testimonials-images/EoHImKsW9U5y3vQ1s3EVsBTDLi1IKpTv2Fq1oav2.jpg', NULL, '2024-07-31 00:49:48', '2024-08-09 01:41:59'),
(2, 'Testimonial 2:', '<p>I recently completed a cyber security internship that provided a thorough and engaging experience. It covered networking basics, protocols, and tools, as well as key cyber security topics like threat detection, risk management, and incident response. Practical projects and interactive simulations were particularly helpful in reinforcing my understanding. The internship deepened my knowledge of both networking and cyber security concepts and has been beneficial for many students, including me. I highly recommend it for anyone seeking a solid grasp of cyber security.</p>', 'Mridhula', 'testimonials-images/IBVdWMnFqmIHiJHd9oug9UI31XUuaCSnt2a8lPmB.jpg', NULL, '2024-07-31 00:51:05', '2024-08-09 01:43:35'),
(3, 'Testimonial 3:', '<p>I must say the cyber security internship was truly enriching. The mentor\'s expertise and passion made even complex concepts accessible and engaging. The hands-on labs and simulations allowed us to apply theory to real-world scenarios. The focus on critical thinking and problem-solving was particularly valuable, helping us approach security challenges like threat actors. The internship materials, including detailed notes and case studies, were excellent resources. I highly recommend this internship for anyone looking to advance their cyber security skills.</p>', 'Denita', 'testimonials-images/z5cmgDOzCfrSlvNKf91yf1UW8QVkz359sdgC54aZ.jpg', NULL, '2024-07-31 00:52:36', '2024-08-09 01:44:34'),
(4, 'Testimonial 4:', '<p>I completed an internship focused on cyber security and found it to be an excellent learning experience. The internship covered fundamental aspects such as network security, threat management, and data protection. I gained a strong understanding of cyber security concepts and feel confident applying them in real-world situations. The mentorship was supportive and engaging, and I’ll always remember the valuable skills and knowledge I acquired.</p>', 'Telbin', 'testimonials-images/OqpvvnAxifx0NAButUrZrGjLGc28zh78Gu2Nzs1O.jpg', NULL, '2024-07-31 00:54:28', '2024-08-09 01:45:18'),
(5, 'Testimonial 5:', '<p>I found the cyber security internship to be extremely beneficial. It deepened my understanding of key areas like network security, threat analysis, and data protection, building on my existing knowledge. The internship provided valuable insights and practical experience, making it a great choice for enhancing cyber security skills. I highly recommend it for anyone looking to advance their expertise in the field.</p>', 'jishnu', 'testimonials-images/GWun6MCkG2A7iXdPHd7hFXWs7H7sotcqmRBFHXh5.jpg', NULL, '2024-07-31 00:56:19', '2024-08-09 01:45:56'),
(6, 'Testimonial 6', '<p>I\'m currently interning in Cybersecurity, and it\'s been an amazing experience so far! The team is fantastic, providing hands-on labs and real-world scenarios that make complex concepts easier to understand. Their dedication and enthusiasm for teaching are evident, and they always make sure no one is left behind. I\'m confident the skills and knowledge I\'m gaining will be invaluable. If you\'re interested in Cybersecurity, I highly recommend seeking out this type of immersive experience. I\'m excited for what\'s next!</p>', 'Basil', 'testimonials-image/m4j3pb4sCU2mUv3PGXBozTpvCadXYic4L6JT0zZq.jpg', NULL, '2024-08-09 01:47:02', '2024-08-09 01:47:02'),
(7, 'Testimonial7', '<p>The Cybersecurity internship at SkillMerge Hub has significantly enhanced my knowledge and skills in networking. The selection of mentors is exceptional, and their teaching methods and student interactions are impressive. SkillMerge Hub actively seeks feedback to ensure we understand the material and address any issues promptly. They also provide valuable study materials and maintain a great balance between theory and practice. Overall, this internship has boosted my problem-solving abilities, self-confidence, and interest in the field.</p>', 'Hiba', 'testimonials-image/gnrDyNvmVNlv5u1ZG3vzLe4CMMhSOKPqW2rQ79Aj.jpg', NULL, '2024-08-09 01:47:41', '2024-08-09 01:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$cWYmQnca27an1Y.r.6pxNuyQFlD4d9OwjukBgry9Io37nq37wuSUe', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-19 05:20:18', '2024-07-19 05:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `website_updates`
--

CREATE TABLE `website_updates` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `what__we__dos`
--

CREATE TABLE `what__we__dos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `what__we__dos`
--

INSERT INTO `what__we__dos` (`id`, `title`, `description`, `icons`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Talent Sourcing', '<p>Talent sourcing involves identifying, researching, generating, and networking with potential job candidates to convert individuals into job applicants.</p>', 'what_we_do_icons/YGgzCPS57dNO2iFhr5a8XlSbQqGkjXMITS9VLiuL.png', NULL, '2024-07-22 04:18:44', '2024-07-31 00:25:02'),
(2, 'Screening', '<p>Screening is the crucial process of filtering through candidates to find the best talent using an AI based tool, Job Fitment Analysis developed by IT Professional’s Welfare &amp; Charitable Society.This process requires resilience and attention to detail to ensure effective</p>', 'what_we_do_icons/j6v99XN7I2ANwfzJnZ5wSTe3kWgeNGcd0VOGPdTZ.png', NULL, '2024-07-22 04:19:54', '2024-08-03 06:01:57'),
(3, 'Learning & Development', '<p>Our comprehensive and integrative learning and development programs provide novices with a thorough understanding of the market and the practical IT world.</p>', 'what_we_do_icons/VWIWzVuVk4t2d3Bhj17yntlTSEe8EuIh5K3v2lYz.png', NULL, '2024-07-22 04:20:48', '2024-07-31 00:25:13'),
(4, 'Hiring', '<p>We ensure successful placements by matching skilled candidates with the right job opportunities, helping them start their careers on the right path.</p>', 'what_we_do_icons/ef881E2Lza2tHUB3FLWzwLIrm0Cl7vKiyRtTHbN6.png', NULL, '2024-07-22 04:21:48', '2024-08-03 06:04:02');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `title`, `description`, `icon_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Experienced Mentors', NULL, 'whyChooseUs_icons/4phcTn6CCIr7LpH39g5aLEY5T6ua7T7MYIDutbL7.png', NULL, '2024-07-22 22:29:00', '2024-08-01 04:13:19'),
(2, 'Job Fitment Analysis (Competency Evaluation Test)', NULL, 'whyChooseUs_icons/DZZOFuBbP6OGv5F10JBdgn4CicyAOWMiq1SibdKr.png', NULL, '2024-07-22 22:30:53', '2024-08-03 05:50:46'),
(3, 'Online / Offline Internships', NULL, 'whyChooseUs_icons/FYFZIGZzRU8dGmBt1zywx4REmVU0gWh9njRyXs5j.png', NULL, '2024-07-22 22:31:49', '2024-08-01 04:13:48'),
(4, 'Real time Projects', NULL, 'whyChooseUs_icons/fhR89urDgaZvt2zPgxyvL915UD3GG7XzUadd3FLc.png', NULL, '2024-07-22 22:32:46', '2024-08-01 04:14:06'),
(5, 'Hackverse Community Membership (Networking Opportunities)', NULL, 'whyChooseUs_icons/4QIT65MJLs9cNEPk6wAEd8r3jAdAYOaKCJF997Tc.png', NULL, '2024-07-22 22:34:21', '2024-08-01 04:14:24'),
(6, 'Frequent Monitoring', NULL, 'whyChooseUs_icons/dGbSrBFMXVmeSgXnWVUYYOX1f3Rh0VUYcm2vQFCh.png', NULL, '2024-07-22 22:36:45', '2024-08-01 04:14:42'),
(10, 'Interview Preparations', NULL, 'whyChooseUs_icons/fAPobrDP15CI8vJ9a10ZIC4iasVmlS8jrKIf33SU.png', NULL, '2024-08-01 04:15:15', '2024-08-01 04:15:15'),
(11, 'Mock Interviews', NULL, 'whyChooseUs_icons/aM0CkHrMhB3gbez6ZaZZAe1cLjuYbOqRMeesXAGA.png', NULL, '2024-08-01 04:15:36', '2024-08-01 04:15:36'),
(12, '100% Job Assistance', NULL, 'whyChooseUs_icons/5B1yMO3WMQ0OjhjuVT4YiL3TKhw0SIffC9cF5Ikf.png', NULL, '2024-08-01 04:16:03', '2024-08-01 04:16:03'),
(13, 'Pay after Placement', NULL, 'whyChooseUs_icons/PmUSEIYaejLOheu84Vv8y9d8p95KmFEqHE0C212I.png', NULL, '2024-08-01 04:16:22', '2024-08-01 04:16:22'),
(15, 'Success Stories', NULL, 'whyChooseUs_icons/KFUQPVGjIuBFQ4oIYDotcYGGBOGTEIJDhRGhGtV6.png', NULL, '2024-08-01 04:20:16', '2024-08-01 04:20:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_applications`
--
ALTER TABLE `admission_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aminities`
--
ALTER TABLE `aminities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_internship_program_id` (`intership_program_id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_certification_partners`
--
ALTER TABLE `global_certification_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hackverse_communities`
--
ALTER TABLE `hackverse_communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internship_programs`
--
ALTER TABLE `internship_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `latest_jobs`
--
ALTER TABLE `latest_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsand_blogs`
--
ALTER TABLE `newsand_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_approachs`
--
ALTER TABLE `our_approachs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `placement_drives`
--
ALTER TABLE `placement_drives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_details`
--
ALTER TABLE `program_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selection_processes`
--
ALTER TABLE `selection_processes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selection_process_details`
--
ALTER TABLE `selection_process_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_updates`
--
ALTER TABLE `website_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `what__we__dos`
--
ALTER TABLE `what__we__dos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admission_applications`
--
ALTER TABLE `admission_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aminities`
--
ALTER TABLE `aminities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_a_q_s`
--
ALTER TABLE `f_a_q_s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `global_certification_partners`
--
ALTER TABLE `global_certification_partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hackverse_communities`
--
ALTER TABLE `hackverse_communities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `internship_programs`
--
ALTER TABLE `internship_programs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `latest_jobs`
--
ALTER TABLE `latest_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `newsand_blogs`
--
ALTER TABLE `newsand_blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `our_approachs`
--
ALTER TABLE `our_approachs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement_drives`
--
ALTER TABLE `placement_drives`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `program_details`
--
ALTER TABLE `program_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selection_processes`
--
ALTER TABLE `selection_processes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selection_process_details`
--
ALTER TABLE `selection_process_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `website_updates`
--
ALTER TABLE `website_updates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `what__we__dos`
--
ALTER TABLE `what__we__dos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
