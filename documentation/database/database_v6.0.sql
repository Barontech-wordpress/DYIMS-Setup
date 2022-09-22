SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `codetro1_gssms`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(11) NOT NULL,
  `session_year` varchar(50) CHARACTER SET utf8 NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_year` int(11) NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_running` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `session_year`, `start_year`, `end_year`, `note`, `is_running`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'January 2020 - December 2020', 2020, 2020, 'Lorem Ipsum is simply dummy text', 0, 1, '2018-02-08 05:41:10', '2021-12-07 08:23:23', 1, 1),
(2, 'January 2021 - December 2021', 2021, 2021, 'Lorem Ipsum is simply dummy text', 1, 1, '2018-02-08 05:41:45', '2021-11-23 22:24:05', 1, 1),
(3, 'January 2022 - December 2022', 2022, 2022, 'Lorem Ipsum has been', 0, 1, '2018-02-08 05:42:55', '2021-11-23 22:25:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `ip_address` varchar(20) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `activity` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `caste` varchar(100) DEFAULT NULL,
  `health_condition` varchar(255) DEFAULT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `photo` varchar(120) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `is_guardian` varchar(50) DEFAULT NULL,
  `guardian_id` int(11) DEFAULT NULL,
  `gud_relation` varchar(100) DEFAULT NULL,
  `gud_name` varchar(100) DEFAULT NULL,
  `gud_phone` varchar(50) DEFAULT NULL,
  `gud_email` varchar(50) DEFAULT NULL,
  `gud_national_id` varchar(50) DEFAULT NULL,
  `gud_present_address` varchar(255) DEFAULT NULL,
  `gud_permanent_address` varchar(255) DEFAULT NULL,
  `gud_profession` varchar(100) DEFAULT NULL,
  `gud_religion` varchar(100) DEFAULT NULL,
  `gud_other_info` text,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(50) DEFAULT NULL,
  `father_education` varchar(100) DEFAULT NULL,
  `father_profession` varchar(100) DEFAULT NULL,
  `father_designation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(50) DEFAULT NULL,
  `mother_education` varchar(100) DEFAULT NULL,
  `mother_profession` varchar(100) DEFAULT NULL,
  `mother_designation` varchar(100) DEFAULT NULL,
  `previous_school` varchar(255) DEFAULT NULL,
  `previous_class` varchar(100) DEFAULT NULL,
  `second_language` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = New, 1 = Waiting, 2 = Decline, 3 = Approved',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `admit_card_settings`
--

CREATE TABLE `admit_card_settings` (
  `id` int(11) NOT NULL,
  `border_color` varchar(20) DEFAULT NULL,
  `top_bg` varchar(20) DEFAULT NULL,
  `bottom_bg` varchar(20) DEFAULT NULL,
  `school_logo` varchar(120) DEFAULT NULL,
  `school_name` varchar(120) DEFAULT NULL,
  `school_name_font_size` varchar(20) DEFAULT NULL,
  `school_name_color` varchar(20) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `school_address_color` varchar(20) DEFAULT NULL,
  `admit_font_size` varchar(20) DEFAULT NULL,
  `admit_color` varchar(20) DEFAULT NULL,
  `admit_bg` varchar(20) DEFAULT NULL,
  `title_font_size` varchar(20) DEFAULT NULL,
  `title_color` varchar(20) DEFAULT NULL,
  `value_font_size` varchar(20) DEFAULT NULL,
  `value_color` varchar(20) DEFAULT NULL,
  `exam_font_size` varchar(20) DEFAULT NULL,
  `exam_color` varchar(20) DEFAULT NULL,
  `subject_font_size` varchar(20) DEFAULT NULL,
  `subject_color` varchar(20) DEFAULT NULL,
  `bottom_text` varchar(100) DEFAULT NULL,
  `bottom_text_color` varchar(20) DEFAULT NULL,
  `bottom_text_align` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admit_card_settings`
--

INSERT INTO `admit_card_settings` (`id`, `border_color`, `top_bg`, `bottom_bg`, `school_logo`, `school_name`, `school_name_font_size`, `school_name_color`, `school_address`, `school_address_color`, `admit_font_size`, `admit_color`, `admit_bg`, `title_font_size`, `title_color`, `value_font_size`, `value_color`, `exam_font_size`, `exam_color`, `subject_font_size`, `subject_color`, `bottom_text`, `bottom_text_color`, `bottom_text_align`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '#152f50', '#5ca6f5', '#00c6ec', NULL, '', '28', '#e7e4e7', '', '#353034', '20', '#e0dade', '#ff0000', '12', '#0f252d', '12', '#2b2b2b', '15', '#323232', '13', '#1b1219', 'Principal', '#000000', 'right', 1, '2019-10-07 23:45:34', '2021-12-13 04:43:41', 1, 1);

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `asset_issues`
--

CREATE TABLE `asset_issues` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_date` date DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `asset_items`
--

CREATE TABLE `asset_items` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `type` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `asset_purchases`
--

CREATE TABLE `asset_purchases` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `employee_id` varchar(120) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  `unit_price` double(10,2) NOT NULL,
  `total_price` double(10,2) NOT NULL,
  `purchase_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `asset_stocks`
--

CREATE TABLE `asset_stocks` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `total_qty` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `asset_stores`
--

CREATE TABLE `asset_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `keeper` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


--
-- Table structure for table `asset_vendors`
--

CREATE TABLE `asset_vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `contact` varchar(120) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `assigment_date` datetime DEFAULT NULL,
  `submission_date` datetime DEFAULT NULL,
  `sms_notification` tinyint(1) DEFAULT '0',
  `email_notification` tinyint(1) DEFAULT '0',
  `note` text CHARACTER SET utf8,
  `assignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `assignment_submissions`
--

CREATE TABLE `assignment_submissions` (
  `id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `submission` varchar(150) NOT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `evaluation_date` datetime DEFAULT NULL,
  `evaluation_status` varchar(20) NOT NULL DEFAULT 'submitted',
  `remark` varchar(255) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `gift` varchar(150) NOT NULL,
  `price` varchar(50) NOT NULL,
  `note` text,
  `date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `custom_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isbn_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `edition` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `language` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `cover` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `rack_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `library_member_id` int(11) NOT NULL COMMENT 'Library member id',
  `book_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date NOT NULL,
  `is_returned` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `top_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sub_title_left` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sub_title_middle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sub_title_right` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `main_text` text CHARACTER SET utf8,
  `footer_left` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footer_middle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footer_right` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `background` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `numeric_name` int(11) NOT NULL,
  `monthly_tution_fee` double(10,2) NOT NULL,
  `admission_fee` double(10,2) NOT NULL,
  `exam_fee` double(10,2) NOT NULL,
  `certificate_fee` double(10,2) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `complains`
--

CREATE TABLE `complains` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `action_note` text,
  `complain_date` datetime DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `complain_types`
--

CREATE TABLE `complain_types` (
  `id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(8, 'Department of History', 'Arts Bhaban', 1, '2021-02-18 13:02:00', '2021-12-13 00:02:12', 1, 44),
(6, 'Department of Science', 'Department Details', 1, '2021-02-18 12:43:09', '2021-03-02 23:29:34', 1, 1),
(7, 'Department of Bangla', 'Department Details', 1, '2021-02-18 12:58:50', '2021-03-02 23:29:05', 1, 1),
(9, 'Department of English', 'Department Details', 0, '2021-03-17 06:30:23', '2021-12-13 02:16:16', 1, 1);

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(120) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Office Assistant', 'Lorem Ipsum there are many variations of passages of available', 1, '2017-08-18 12:59:25', '2018-07-14 13:07:28', 0, 1),
(3, 'Marketing', 'Lorem Ipsum comes from sections 1.10.32', 1, '2017-09-21 10:09:15', '2021-12-13 01:51:05', 1, 1),
(4, 'Clark', 'Lorem Ipsum has been the standard dummy text ever since the 1500s,', 0, '2017-09-21 10:09:37', '2021-10-22 04:34:21', 1, 1),
(5, 'Pion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 1, '2017-09-21 10:09:52', '2018-02-08 05:53:00', 1, 1),
(11, 'Accounting', 'Lorem Ipsum there are many variations of passages', 1, '2018-07-14 13:08:06', '2019-02-04 01:07:28', 1, 1),
(7, 'Servent', 'Lorem Ipsum comes from sections', 1, '2017-09-21 10:11:02', '2018-02-08 05:54:51', 1, 1),
(8, 'Librarian', 'Lorem Ipsum is not simply random text.', 0, '2017-09-21 10:11:53', '2021-12-07 09:30:11', 1, 1),
(10, 'Office Management', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, '2018-07-14 13:03:37', '0000-00-00 00:00:00', 1, 0),
(12, 'Assistant Manager Test', 'Lorem Ipsum there are many variations of passages of available test 55', 1, '2021-07-08 04:23:32', '2021-07-12 12:30:01', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `ebooks`
--

CREATE TABLE `ebooks` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `cover_image` varchar(120) DEFAULT NULL,
  `file_name` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `receivers` text CHARACTER SET utf8,
  `academic_year_id` int(11) NOT NULL,
  `email_type` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '1. general, 2. Attendance, 3. Due Fee, 4. Result ',
  `absent_date` date NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `attachment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(11) NOT NULL,
  `mail_protocol` varchar(50) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_port` varchar(20) NOT NULL,
  `smtp_timeout` tinyint(1) NOT NULL,
  `smtp_user` varchar(100) NOT NULL,
  `smtp_pass` varchar(100) NOT NULL,
  `smtp_crypto` varchar(50) NOT NULL,
  `mail_type` varchar(50) NOT NULL,
  `char_set` varchar(50) NOT NULL,
  `priority` tinyint(1) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_address` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `email_settings` (`id`, `mail_protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `smtp_crypto`, `mail_type`, `char_set`, `priority`, `from_name`, `from_address`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(2, 'sendmail', '', '', 0, '', '', '', 'html', 'utf-8', 1, 'Single School', 'info@gsms.com', 1, '2019-09-30 08:52:36', '2021-11-26 16:38:54', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `national_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `designation_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `salary_grade_id` int(11) DEFAULT NULL,
  `salary_type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `blood_group` varchar(10) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dob` date NOT NULL,
  `joining_date` date NOT NULL,
  `resign_date` date DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `resume` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pinterest_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `national_id`, `designation_id`, `department_id`, `salary_grade_id`, `salary_type`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `other_info`, `is_view_on_web`, `display_order`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, '198087654', 10, 0, 1, 'monthly', 'Super Admin', '1234856975', 'London', 'London', 'female', 'a_negative', 'Islam', '1969-12-01', '1969-12-31', '0000-00-00', '', NULL, 'https://www.facebook.com/', 'https://www.linkedin.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 'https://www.youtube.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 0, 1, 1, '2021-10-01 14:40:24', '2021-12-13 07:46:30', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `month` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `day_1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `emp_departments`
--

CREATE TABLE `emp_departments` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_departments`
--

INSERT INTO `emp_departments` (`id`, `title`, `note`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Accounts', 'This is accounts department', 1, '2021-10-22 05:05:28', '2021-12-13 02:14:50', 1, 1),
(2, 'Library', 'This is library Department', 0, '2021-10-22 05:05:54', '2021-12-13 02:13:24', 1, 1),
(3, 'Marketing', 'This is marketing Department', 1, '2021-10-22 05:06:33', '2021-12-13 08:01:42', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `student_type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `event_place` varchar(255) CHARACTER SET utf8 NOT NULL,
  `event_from` date NOT NULL,
  `event_to` date NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `start_date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `answer` varchar(555) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_attendances`
--

CREATE TABLE `exam_attendances` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `is_attend` varchar(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `exam_instructions`
--

CREATE TABLE `exam_instructions` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `instruction` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_online_exams`
--

CREATE TABLE `exam_online_exams` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `instruction_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `mark_type` varchar(50) NOT NULL,
  `pass_mark` double(10,2) NOT NULL,
  `exam_limit` int(11) NOT NULL,
  `note` text,
  `is_publish` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_questions`
--

CREATE TABLE `exam_questions` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `question_type` varchar(50) NOT NULL,
  `question_level` varchar(50) NOT NULL,
  `question` varchar(255) NOT NULL,
  `image` varchar(150) DEFAULT NULL,
  `mark` double(10,2) NOT NULL,
  `total_option` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `total_subject` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `total_obtain_mark` int(11) NOT NULL,
  `avg_grade_point` float(5,2) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `result_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `start_time` varchar(20) CHARACTER SET utf8 NOT NULL,
  `end_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `room_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `exam_taken_exams`
--

CREATE TABLE `exam_taken_exams` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `total_question` int(11) DEFAULT NULL,
  `total_answer` int(11) DEFAULT NULL,
  `total_mark` int(11) DEFAULT NULL,
  `total_correct_answer` int(11) DEFAULT NULL,
  `total_incorrect_answer` int(11) NOT NULL,
  `total_obtain_mark` int(11) DEFAULT NULL,
  `obtain_mark_percent` double(10,2) NOT NULL DEFAULT '0.00',
  `result_status` varchar(50) NOT NULL COMMENT 'passed, failed',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `exam_to_questions`
--

CREATE TABLE `exam_to_questions` (
  `id` int(11) NOT NULL,
  `online_exam_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Table structure for table `expenditures`
--

CREATE TABLE `expenditures` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `expenditure_head_id` int(11) NOT NULL,
  `expenditure_type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expenditure_via` varchar(20) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `expenditure_heads`
--

CREATE TABLE `expenditure_heads` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `fees_amount`
--

CREATE TABLE `fees_amount` (
  `id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fee_amount` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `final_results`
--

CREATE TABLE `final_results` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `total_subject` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `total_obtain_mark` int(11) NOT NULL,
  `avg_grade_point` float(5,2) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `result_status` varchar(50) CHARACTER SET utf8 NOT NULL,
  `merit_rank_in_class` varchar(20) CHARACTER SET utf8 NOT NULL,
  `merit_rank_in_section` varchar(20) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8,
  `is_view_on_web` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `point` decimal(10,2) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_to` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `gsms_sessions`
--

CREATE TABLE `gsms_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `national_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `profession` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `guardian_feedbacks`
--

CREATE TABLE `guardian_feedbacks` (
  `id` int(11) NOT NULL,
  `guardian_id` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `hostel_members`
--

CREATE TABLE `hostel_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_member_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `id_card_settings`
--

CREATE TABLE `id_card_settings` (
  `id` int(11) NOT NULL,
  `border_color` varchar(20) DEFAULT NULL,
  `top_bg` varchar(20) DEFAULT NULL,
  `bottom_bg` varchar(20) DEFAULT NULL,
  `school_logo` varchar(120) DEFAULT NULL,
  `school_name` varchar(120) DEFAULT NULL,
  `school_name_font_size` varchar(20) DEFAULT NULL,
  `school_name_color` varchar(20) DEFAULT NULL,
  `school_address` varchar(255) DEFAULT NULL,
  `school_address_color` varchar(20) DEFAULT NULL,
  `id_no_font_size` varchar(20) DEFAULT NULL,
  `id_no_color` varchar(20) DEFAULT NULL,
  `id_no_bg` varchar(20) DEFAULT NULL,
  `title_font_size` varchar(20) DEFAULT NULL,
  `title_color` varchar(20) DEFAULT NULL,
  `value_font_size` varchar(20) DEFAULT NULL,
  `value_color` varchar(20) DEFAULT NULL,
  `bottom_text` varchar(100) DEFAULT NULL,
  `bottom_text_color` varchar(20) DEFAULT NULL,
  `bottom_text_align` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `id_card_settings` (`id`, `border_color`, `top_bg`, `bottom_bg`, `school_logo`, `school_name`, `school_name_font_size`, `school_name_color`, `school_address`, `school_address_color`, `id_no_font_size`, `id_no_color`, `id_no_bg`, `title_font_size`, `title_color`, `value_font_size`, `value_color`, `bottom_text`, `bottom_text_color`, `bottom_text_align`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '#083991', '#2e87d3', '#3ab9be', NULL, '', '', '#efefef', '', '#353535', '', '#e5e5e5', '#ff0000', '12', '#413d41', '', '#0d122b', 'Principal', '#505050', 'right', 1, '2019-10-07 23:30:05', '2021-11-06 01:38:36', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `income_heads`
--

CREATE TABLE `income_heads` (
  `id` int(11) NOT NULL,
  `head_type` varchar(20) CHARACTER SET utf8 DEFAULT '0' COMMENT 'fee, sale, income, hostel, transport',
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `custom_invoice_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `invoice_type` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'income,invoice, sale',
  `is_applicable_discount` tinyint(1) DEFAULT '0',
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'Invoice:profile id, Sale:user_id',
  `month` varchar(20) DEFAULT NULL,
  `gross_amount` double(10,2) NOT NULL,
  `net_amount` double(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `paid_status` varchar(20) NOT NULL DEFAULT 'Unpaid',
  `temp_amount` double(10,2) NOT NULL,
  `date` date NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `invoice_type` varchar(20) DEFAULT NULL COMMENT 'income, fee, hostel, transport',
  `gross_amount` float NOT NULL,
  `discount` float NOT NULL,
  `net_amount` float NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_issues`
--

CREATE TABLE `item_issues` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_products`
--

CREATE TABLE `item_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_purchases`
--

CREATE TABLE `item_purchases` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `employee_id` varchar(120) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_type` varchar(20) NOT NULL,
  `unit_price` double(10,2) NOT NULL,
  `total_price` double(10,2) NOT NULL,
  `purchase_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_sales`
--

CREATE TABLE `item_sales` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `invoice_type` varchar(120) DEFAULT NULL COMMENT 'sale',
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `unit_price` double(10,2) NOT NULL,
  `total_price` double(10,2) NOT NULL,
  `net_amount` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_stocks`
--

CREATE TABLE `item_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_suppliers`
--

CREATE TABLE `item_suppliers` (
  `id` int(11) NOT NULL,
  `company` varchar(120) NOT NULL,
  `contact` varchar(120) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `item_warehouses`
--

CREATE TABLE `item_warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `keeper` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `english` longtext COLLATE utf8_unicode_ci,
  `bengali` longtext COLLATE utf8_unicode_ci,
  `spanish` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci,
  `hindi` longtext COLLATE utf8_unicode_ci,
  `urdu` longtext COLLATE utf8_unicode_ci,
  `chinese` longtext COLLATE utf8_unicode_ci,
  `japanese` longtext COLLATE utf8_unicode_ci,
  `portuguese` longtext COLLATE utf8_unicode_ci,
  `russian` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `korean` longtext COLLATE utf8_unicode_ci,
  `german` longtext COLLATE utf8_unicode_ci,
  `italian` longtext COLLATE utf8_unicode_ci,
  `thai` longtext COLLATE utf8_unicode_ci,
  `hungarian` longtext COLLATE utf8_unicode_ci,
  `dutch` longtext COLLATE utf8_unicode_ci,
  `latin` longtext COLLATE utf8_unicode_ci,
  `indonesian` longtext COLLATE utf8_unicode_ci,
  `turkish` longtext COLLATE utf8_unicode_ci,
  `greek` longtext COLLATE utf8_unicode_ci,
  `persian` longtext COLLATE utf8_unicode_ci,
  `malay` longtext COLLATE utf8_unicode_ci,
  `gujarati` longtext COLLATE utf8_unicode_ci,
  `polish` longtext COLLATE utf8_unicode_ci,
  `ukrainian` longtext COLLATE utf8_unicode_ci,
  `panjabi` longtext COLLATE utf8_unicode_ci,
  `romanian` longtext COLLATE utf8_unicode_ci,
  `yoruba` longtext COLLATE utf8_unicode_ci,
  `hausa` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(1, 'add', 'Add', 'যোগ করুন', 'Añadir', 'إضافة', 'जोड़ना', 'شامل کریں', '加', '追加', 'Adicionar', 'Добавить', 'Ajouter', '더하다', 'Hinzufügen', 'Inserisci', 'เพิ่ม', 'hozzáad', 'Toevoegen', 'addere', 'Menambahkan', 'Eklemek', 'Προσθέτω', 'اضافه کردن', 'Tambah', 'ઉમેરો', 'Dodaj', 'Додати', 'ਜੋੜੋ', 'Adăuga', 'Fi kun', 'Ƙara'),
(2, 'edit', 'Edit', 'সম্পাদনা করুন', 'Editar', 'تصحيح', 'संपादित करें', 'ترمیم', '编辑', '編集', 'Editar', 'редактировать', 'modifier', '편집하다', 'Bearbeiten', 'modificare', 'แก้ไข', 'szerkesztése', 'Bewerk', 'recensere', 'Edit', 'Düzenle', 'Επεξεργασία', 'ویرایش', 'Edit', 'સંપાદિત કરો', 'Edytować', 'Редагувати', 'ਸੰਪਾਦਿਤ ਕਰੋ', 'Editați | ×', 'Ṣatunkọ', 'Shirya'),
(3, 'delete', 'Delete', 'মুছুন', 'Borrar', 'حذف', 'हटाना', 'حذف کریں', '删除', '削除', 'Excluir', 'Удалить', 'effacer', '지우다', 'Löschen', 'Elimina', 'ลบ', 'Töröl', 'Verwijder', 'delere', 'Menghapus', 'silmek', 'Διαγράφω', 'حذف', 'Padam', 'કાઢી નાંખો', 'Kasować', 'Видалити', 'ਮਿਟਾਓ', 'Șterge', 'Paarẹ', 'Share'),
(4, 'view', 'View', 'দেখুন', 'Ver', 'رأي', 'राय', 'دیکھیں', '视图', 'ビュー', 'Visão', 'Посмотреть', 'vue', '전망', 'Aussicht', 'vista', 'ดู', 'Kilátás', 'Uitzicht', 'View', 'Melihat', 'Görünüm', 'Θέα', 'چشم انداز', 'Lihat', 'જુઓ', 'Widok', 'Вид', 'ਵੇਖੋ', 'Vedere', 'Wo', 'Duba'),
(5, 'action', 'Action', 'ক্রিয়া', 'Acción', 'عمل', 'कार्य', 'عمل', '行动', 'アクション', 'Açao', 'действие', 'action', '동작', 'Aktion', 'Azione', 'การกระทำ', 'Akció', 'Actie', 'actum', 'Tindakan', 'Aksiyon', 'Δράση', 'عمل', 'Tindakan', 'ક્રિયા', 'Akcja', 'Дія', 'ਐਕਸ਼ਨ', 'Acțiune', 'Ise', 'Action'),
(6, 'status', 'Status', 'অবস্থা', 'Estado', 'الحالة', 'स्थिति', 'حالت', '状态', '状態', 'Status', 'Положение дел', 'statut', '지위', 'Status', 'Stato', 'สถานะ', 'Állapot', 'staat', 'Status', 'Status', 'durum', 'Κατάσταση', 'وضعیت', 'Status', 'સ્થિતિ', 'Status', 'Статус', 'ਸਥਿਤੀ', 'stare', 'Ipo', 'Matsayi'),
(7, 'select', 'Select', 'নির্বাচন করুন', 'Seleccionar', 'تحديد', 'चुनते हैं', 'منتخب کریں', '选择', '選択', 'Selecione', 'Выбрать', 'sélectionner', '고르다', 'Wählen', 'Selezionare', 'เลือก', 'választ', 'kiezen', 'select', 'Memilih', 'seçmek', 'Επιλέγω', 'انتخاب کنید', 'Pilih', 'પસંદ કરો', 'Wybierz', 'Виберіть', 'ਚੁਣੋ', 'Selectați', 'Yan', 'Zaɓi'),
(8, 'photo', 'Photo', 'ছবি', 'Foto', 'صورة فوتوغرافية', 'तस्वीर', 'تصویر', '照片', '写真', 'foto', 'Фото', 'photo', '사진', 'Foto', 'Foto', 'ภาพถ่าย', 'Fénykép', 'Foto', 'photo', 'Foto', 'Fotoğraf', 'φωτογραφία', 'عکس', 'Foto', 'ફોટો', 'Zdjęcie', 'Фотографія', 'ਫੋਟੋ', 'Fotografie', 'aworan', 'Hotuna'),
(9, 'upload', 'Upload', 'আপলোড', 'Subir', 'تحميل', 'अपलोड', 'اپ لوڈ کریں', '上传', 'アップロード', 'Envio', 'Загрузить', 'télécharger', '업로드', 'Hochladen', 'Caricare', 'อัปโหลด', 'Feltöltés', 'Uploaden', 'Index', 'Upload', 'Yükleme', 'Μεταφόρτωση', 'بارگذاری', 'Muat naik', 'અપલોડ કરો', 'Przekazać plik', 'Завантажити', 'ਅਪਲੋਡ ਕਰੋ', 'Încărcați', 'Po si', 'Upload'),
(10, 'created', 'Created', 'তৈরীর তারিখ', 'Creado', 'خلقت', 'बनाया था', 'تخلیق', '创建', '作成した', 'Criada', 'созданный', 'créé', '만들어진', 'Erstellt', 'Creato', 'ที่สร้างไว้', 'Alkotó', 'gemaakt', 'creatum', 'Dibuat', 'düzenlendi', 'Δημιουργήθηκε', 'ایجاد شده', 'Dicipta', 'બનાવ્યું', 'Stworzony', 'Створено', 'ਬਣਾਇਆ ਗਿਆ', 'Creată', 'Ti ṣẹda', 'An yi'),
(11, 'modified', 'Modified', 'পরিবর্তিত তারিখ', 'Modificado', 'تم التعديل', 'संशोधित', 'ترمیم', '改性', '変更された', 'Modificado', 'модифицированный', 'modifié', '수정 됨', 'Geändert', 'Modificata', 'ดัดแปลง', 'Módosított', 'gewijzigde', 'Modified', 'Diubah', 'Değiştirilmiş', 'Τροποποιήθηκε', 'اصلاح شده', 'Diubah suai', 'સંશોધિત', 'Zmodyfikowany', 'Змінено', 'ਸੰਸ਼ੋਧਿਤ', 'Modificat', 'Ti yipada', 'An gyara'),
(12, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', 'إلغاء', 'रद्द करना', 'منسوخ کریں', '取消', 'キャンセル', 'Cancelar', 'Отмена', 'Annuler', '취소', 'Stornieren', 'Annulla', 'ยกเลิก', 'Megszünteti', 'Annuleer', 'Cancel', 'Membatalkan', 'İptal etmek', 'Ματαίωση', 'لغو', 'Batalkan', 'રદ કરો', 'Anuluj', 'Скасувати', 'ਰੱਦ ਕਰੋ', 'Anulare', 'Fagilee', 'Cancel'),
(13, 'submit', 'Submit', 'জমা দিন', 'Enviar', 'خضع', 'जमा करें', 'جمع', '提交', '提出する', 'Enviar', 'Отправить', 'soumettre', '제출', 'einreichen', 'Sottoscrivi', 'เสนอ', 'beküldése', 'voorleggen', 'submit', 'Menyerahkan', 'Gönder', 'υποβάλλουν', 'ارسال', 'Hantar', 'સબમિટ કરો', 'Zatwierdź', 'Відправити', 'ਜਮ੍ਹਾਂ ਕਰੋ', 'A depune', 'Firanṣẹ', 'Sanya'),
(14, 'update', 'Update', 'আপডেট', 'Actualizar', 'تحديث', 'अद्यतन करें', 'اپ ڈیٹ', '更新', '更新', 'Atualizar', 'Обновить', 'mettre à jour', '최신 정보', 'Aktualisieren', 'Aggiornare', 'ปรับปรุง', 'frissítés', 'Bijwerken', 'Update', 'Memperbarui', 'Güncelleştirme', 'Εκσυγχρονίζω', 'به روز رسانی', 'Kemas kini', 'અપડેટ કરો', 'Aktualizacja', 'Оновити', 'ਅੱਪਡੇਟ ਕਰੋ', 'Actualizați', 'Imudojuiwọn', 'Sabuntawa'),
(15, 'no_data_found', 'No available data found ', 'কোন তথ্য পাওয়া যায় নি', 'No hay datos disponibles encontrados', 'لم يتم العثور على بيانات متوفرة', 'कोई उपलब्ध डेटा नहीं मिला', 'دستیاب ڈیٹا نہیں ملا', '没有找到可用的数据', '利用可能なデータが見つかりません', 'Não foram encontrados dados disponíveis', 'Нет доступных данных', 'mettre à jour...', '사용할 수있는 데이터가 없습니다.', 'Keine verfügbaren Daten gefunden', 'Nessun dato disponibile trovato', 'ไม่พบข้อมูลที่มีอยู่', 'Nincs elérhető adat', 'Geen beschikbare gegevens gevonden', 'Notitia available non inveni', 'Tidak ditemukan data yang tersedia', 'Mevcut veri bulunamadı', 'Δεν βρέθηκαν διαθέσιμα δεδομένα', 'داده های موجود یافت نشد', 'Tiada data yang terdapat', 'કોઈ ઉપલબ્ધ માહિતી મળી નથી', 'Nie znaleziono żadnych dostępnych danych', 'Не знайдено доступних даних', 'ਕੋਈ ਉਪਲਬਧ ਡੇਟਾ ਨਹੀਂ ਮਿਲਿਆ', 'Nu s-au găsit date disponibile', 'Ko si data to wa ti o wa', 'Babu samin bayanai da aka samo'),
(16, 'confirm_alert', 'Are you sure you want to delete this', 'আপনি কি ডেটা মুছে ফেলার ব্যাপারে নিশ্চিত?', 'Estás seguro que quieres eliminar esto', 'هل أنت متأكد أنك تريد حذف هذا', 'क्या आप वाकई इसे हटाना चाहते हैं', 'کیا آپ واقعی یہ حذف کرنا چاہتے ہیں', '你确定要删除这个吗', 'これを削除してもよろしいですか？', 'Tem certeza de que deseja excluir isso', 'Вы действительно хотите удалить это', 'vous êtes sûr de vouloir supprimer ce', '이 사진을 삭제 하시겠습니까?', 'Möchtest du das wirklich löschen?', 'Sei sicuro di voler cancellare questo', 'คุณแน่ใจหรือไม่ว่าต้องการลบข้อมูลนี้', 'Biztosan törölni szeretné', 'Weet je zeker dat je dit wilt verwijderen?', 'Esne certus vos volo ut delete is', 'Apa kamu yakin ingin menghapus ini', 'Bunu silmek istediğinizden emin misiniz', 'Είστε βέβαιοι ότι θέλετε να το διαγράψετε', 'آیا مطمئن هستید که می خواهید این را حذف کنید', 'Adakah anda pasti mahu memadam ini', 'શું તમે ખરેખર આને કાઢી નાખવા માંગો છો?', 'Czy na pewno chcesz to usunąć?', 'Ви впевнені, що хочете видалити це', 'ਕੀ ਤੁਸੀਂ ਨਿਸ਼ਚਤ ਰੂਪ ਤੋਂ ਇਸ ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?', 'Sigur doriți să ștergeți acest lucru', 'Ṣe o da ọ loju pe o fẹ paarẹ yii', 'Kuna tabbatar kana so ka share wannan'),
(17, 'insert_success', 'Data inserted successfully', 'ডেটা সফলভাবে ঢোকানো হয়েছে', 'Datos insertados con éxito', 'تم إدراج البيانات بنجاح', 'डेटा सफलतापूर्वक डाला गया', 'ڈیٹا کامیابی سے داخل ہوگئی ہے', '数据插入成功', 'データが正常に挿入された', 'Dados inseridos com sucesso', 'Данные успешно вставлены', 'Données insérées avec succès', '데이터가 성공적으로 삽입되었습니다.', 'Daten wurden erfolgreich eingefügt', 'Dati inseriti correttamente', 'แทรกข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen be vannak illesztve', 'Gegevens succesvol ingevoegd', 'Data bene insertas', 'Data berhasil dimasukkan', 'Veriler başarıyla eklendi', 'Τα δεδομένα έχουν εισαχθεί με επιτυχία', 'داده ها با موفقیت وارد شدند', 'Data dimasukkan dengan jayanya', 'ડેટા સફળતાપૂર્વક શામેલ કર્યો', 'Dane wstawione pomyślnie', 'Дані введені успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਪਾਇਆ ਗਿਆ', 'Datele introduse cu succes', 'Data ti a fi sii ni ifijišẹ', 'Bayanin da aka sanya nasara'),
(18, 'insert_failed', 'Data insert failed. Please try again ', 'ডেটা সন্নিবেশ ব্যর্থ। অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La inserción de datos falló. Inténtalo de nuevo', 'أخفقت عملية إدراج البيانات. حاول مرة اخرى', 'डेटा डालना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا داخل ناکام ہوگیا. دوبارہ کوشش کریں', '数据插入失败。 请再试一次', 'データの挿入に失敗しました。 もう一度お試しください', 'A inserção de dados falhou. Por favor, tente novamente', 'Ошибка ввода данных. Пожалуйста, попробуйте еще раз', 'Linsertion de données a échoué. Sil vous plaît essayez', '데이터 삽입에 실패했습니다. 다시 시도적으로 업데이트되었습니다.하십시오.', 'Daten einfügen fehlgeschlagen. Bitte versuche es erneut', 'Inserimento dati non riuscito. Per favore riprova', 'แทรกข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatbetöltés meghiúsult. Kérlek próbáld újra', 'Gegevensinvoer mislukt. Probeer het opnieuw', 'Data inserta defecit. Quaero, iterum conare', 'Penyisipan data gagal Silahkan coba lagi', 'Veri girişi başarısız oldu. Lütfen tekrar deneyin', 'Η εισαγωγή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'درج اطلاعات وارد نشد لطفا دوباره تلاش کنید', 'Masukkan data gagal. Sila cuba lagi', 'ડેટા શામેલ નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wstawić danych. Proszę spróbuj ponownie', 'Вставка даних не вдалося. Будь ласка спробуйте ще раз', 'ਡੇਟਾ ਡ੍ਰਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Introducerea datelor a eșuat. Vă rugăm să încercați din nou', 'Asun faili ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Saka bayanai ya kasa. Da fatan a sake gwadawa'),
(19, 'update_success', 'Data updated successfully', 'ডেটা সফলভাবে আপডেট করা হয়েছে', 'Datos actualizados con éxito', 'تم تحديث البيانات بنجاح', 'डेटा सफलतापूर्वक अपडेट किया गया', 'ڈیٹا کامیابی سے اپ ڈیٹ کیا', '数据已成功更新', 'データが正常に更新された', 'Dados atualizados com sucesso', 'Обновлены данные', 'Data updated successfully', '데이터가 성공적으로 업데이트되었습니다..', 'Daten wurden erfolgreich aktualisiert', 'Dati aggiornati con successo', 'อัปเดตข้อมูลเรียบร้อยแล้ว', 'Az adatok sikeresen frissültek', 'Gegevens zijn succesvol bijgewerkt', 'Updated notitia feliciter', 'Data berhasil diperbarui', 'Veri başarıyla güncellendiVeri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Τα δεδομένα ενημερώθηκαν με επιτυχία', 'داده ها با موفقیت به روز شد', 'Data dikemas kini berjaya', 'ડેટા સફળતાપૂર્વક અપડેટ થયો છે', 'Data zaktualizowana pomyślnie', 'Дані оновлено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਅਪਡੇਟ ਕੀਤਾ ਗਿਆ', 'Datele au fost actualizate cu succes', 'Ti ṣe imudojuiwọn imudojuiwọn ni ifijišẹ', 'An sabunta bayanan da aka sabunta'),
(20, 'update_failed', 'Data update failed. Please try again', 'তথ্য আপডেট ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La actualización de datos falló. Inténtalo de nuevo', 'فشل تحديث البيانات. حاول مرة اخرى', 'डेटा अपडेट विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا اپ ڈیٹ ناکام ہوگیا. دوبارہ کوشش کریں', '数据更新失败。 请再试一次', 'データの更新に失敗しました。 もう一度お試しください', 'A atualização de dados falhou. Por favor, tente novamente', 'Ошибка обновления данных. Пожалуйста, попробуйте еще раз', 'La mise à jour des données a Veuillez réessayer', '데이터 업데이트에 실패했습니다. 다시 시도하십시오.', 'Datenaktualisierung fehlgeschlagen. Bitte versuche es erneut', 'Aggiornamento dati fallito. Per favore riprova', 'การอัปเดตข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adatfrissítés nem sikerült. Kérlek próbáld újra', 'Gegevensupdate mislukt. Probeer het opnieuw', 'Data update defecit. Quaero, iterum conare', 'Pembaruan data gagal Silahkan coba lagi', 'Veri güncellemesi başarısız oldu. Lütfen tekrar deneyin', 'Η ενημέρωση δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'به روز رسانی داده خراب شد لطفا دوباره تلاش کنید', 'Kemas kini data gagal. Sila cuba lagi', 'ડેટા અપડેટ નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Aktualizacja danych nie powiodła się. Proszę spróbuj ponownie', 'Не вдалося оновити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਅਪਡੇਟ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Actualizarea datelor a eșuat. Vă rugăm să încercați din nou', 'Imudara data ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Rashin bayanin bayanai ya kasa. Da fatan a sake gwadawa'),
(21, 'delete_success', 'Data deleted successully', 'ডেটা সফলভাবে মোছা হয়েছে', 'Datos borrados con éxito', 'تم حذف البيانات بنجاح', 'डाटा सफलतापूर्वक हटा दिया गया', 'ڈیٹا کامیابی سے خارج ہوگئی ہے', '数据删除成功', 'データが正常に削除された', 'Dados eliminados com sucesso', 'Удалены данные', 'DonnéDonnées supprimées avec succès', '데이터가 성공적으로 삭제되었습니다.', 'Daten wurden erfolgreich gelöscht', 'Dati cancellati con successo', 'ลบข้อมูลสำเร็จแล้ว', 'Az adatok sikeresen törölve', 'Gegevens zijn met succes verwijderd', 'Data delevit feliciter', 'Data berhasil dihapus', 'Veri başarıyla silindi', 'Τα δεδομένα διαγράφηκαν με επιτυχία', 'داده ها با موفقیت حذف شدند', 'Data berjaya dipadam', 'ડેટા સફળતાપૂર્વક કાઢી નાખ્યો', 'Dane zostały pomyślnie usunięte', 'Дані видалено успішно', 'ਡਾਟਾ ਸਫਲਤਾਪੂਰਵਕ ਮਿਟਾ ਦਿੱਤਾ ਗਿਆ', 'Datele au fost șterse cu succes', 'Paarẹ ti paarẹ ni ifijišẹ', 'Bayanan da aka share nasarar'),
(22, 'delete_failed', 'Data delete failed. Please try again', 'ডেটা মুছে ফেলতে ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'La eliminación de datos falló. Inténtalo de nuevo', 'أخفق حذف البيانات. حاول مرة اخرى', 'डेटा को विफल करना विफल हुआ कृपया पुन: प्रयास करें', 'ڈیٹا ناکام ہوگیا. دوبارہ کوشش کریں', '数据删除失败。 请再试一次', 'データの削除に失敗しました。 もう一度お試しください', 'A exclusão de dados falhou. Por favor, tente novamente', 'Ошибка удаления данных. Пожалуйста, попробуйте еще раз', 'La suppression des données a échoué. Veuillez réessayer', '데이터를 삭제하지 못했습니다. 다시 시도하십시오.', 'Daten löschen fehlgeschlagen. Bitte versuche es erneut', 'Cancellazione dei dati fallita. Per favore riprova', 'การลบข้อมูลล้มเหลว กรุณาลองอีกครั้ง', 'Az adat törlése nem sikerült. Kérlek próbáld újra', 'Gegevens verwijderen mislukt. Probeer het opnieuw', 'Delete notitia defuit. Quaero, iterum conare', 'Penghapusan data gagal Silahkan coba lagi', 'Veri silinemedi. Lütfen tekrar deneyin', 'Η διαγραφή δεδομένων απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'داده حذف شد لطفا دوباره تلاش کنید', 'Pemadaman data gagal. Sila cuba lagi', 'ડેટા કાઢી નાખવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Usuwanie danych nie powiodło się. Proszę spróbuj ponownie', 'Не вдалося видалити дані. Будь ласка спробуйте ще раз', 'ਡਾਟਾ ਮਿਟਾਉਣਾ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Ștergerea datelor a eșuat. Vă rugăm să încercați din nou', 'Pipadanu data pa. Jọwọ gbiyanju lẹẹkansi', 'Kuskuren bayanai ya kasa. Da fatan a sake gwadawa'),
(23, 'sl_no', '#SL', 'ক্রমিক', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '# એસએલ', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL'),
(24, 'find', 'Find', 'খোঁজ করুন', 'Encontrar', 'تجد', 'खोज', 'مل', '找', '検索', 'Encontrar', 'найти', 'Trouver', '발견', 'Finden', 'Trova', 'หา', 'megtalálja', 'Vind', 'Find', 'Menemukan', 'bulmak', 'Εύρημα', 'پیدا کردن', 'Cari', 'શોધવા', 'Odnaleźć', 'Знайдіть', 'ਲੱਭੋ', 'Găsi', 'Wa', 'Nemo'),
(25, 'quick_link', 'Quick Link', 'সরাসরি লিঙ্ক', 'Enlace rápido', 'رابط سريع', 'त्वरित लिंक', 'فوری لنک', '快速链接', 'クイックリンク', 'Link rápido', 'Прямая ссылка', 'Lien rapide', '빠른 링크', 'Schneller Link', 'Collegamento veloce', 'ลิงก์ด่วน', 'Gyors link', 'Snelle link', 'Velox Link', 'Tautan Cepat', 'Hızlı link', 'Γρήγορη σύνδεση', 'اتصال سریع', 'Pautan Cepat', 'ક્વિક લિંક', 'Szybki link', 'Швидка посилання', 'ਤੁਰੰਤ ਲਿੰਕ', 'Legătură rapidă', 'Ọna asopọ kiakia', 'Quick Link'),
(26, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', 'لوحة القيادة', 'डैशबोर्ड', 'ڈیش بورڈ', '仪表板', 'ダッシュボード', 'painel de controle', 'Панель приборов', 'tableau de bord', '데이터를 삭제하지 못했계기반', 'Instrumententafel', 'Cruscotto', 'แผงควบคุม', 'Irányítópult', 'Dashboard', 'ashboardday', 'Dasbor', 'gösterge paneli', 'Ταμπλό', 'داشبورد', 'Papan Pemuka', 'ડેશબોર્ડ', 'Deska rozdzielcza', 'Панель приладів', 'ਡੈਸ਼ਬੋਰਡ', 'Bord', 'Dasibodu', 'Dashboard'),
(27, 'list', 'List', 'তালিকা', 'Lista', 'قائمة', 'सूची', 'فہرست', '名单', 'リスト', 'Lista', 'Список', 'liste', '명부', 'Liste', 'Elenco', 'รายการ', 'Lista', 'Lijst', 'album', 'Daftar', 'Liste', 'Λίστα', 'فهرست', 'Senarai', 'યાદી', 'Lista', 'Перелік', 'ਸੂਚੀ', 'Listă', 'Akojọ', 'Jerin'),
(28, 'setting', 'Setting', 'সেটিংস', 'Ajuste', 'ضبط', 'सेटिंग', 'سیٹنگ', '设置', '設定', 'Configuração', 'настройка', 'Sélection', '환경', 'Rahmen', 'Ambientazione', 'การตั้งค่า', 'Beállítás', 'omgeving', 'Occasum', 'pengaturan', 'Ayar', 'Σύνθεση', 'تنظیمات', 'Menetapkan', 'સેટિંગ', 'Oprawa', 'Налаштування', 'ਸੈਟਿੰਗ', 'reglaj', 'Eto', 'Saitin'),
(29, 'payment', 'Payment', 'পেমেন্ট', 'Pago', 'دفع', 'भुगतान', 'ادائیگی', '付款', '支払い', 'Forma de pagamento', 'Оплата', 'Paiement', '지불', 'Zahlung', 'Pagamento', 'การชำระเงิน', 'Fizetés', 'Betaling', 'Payment', 'Pembayaran', 'Ödeme', 'Πληρωμή', 'پرداخت', 'Pembayaran', 'ચુકવણી', 'Zapłata', 'Оплата', 'ਭੁਗਤਾਨ', 'Plată', 'Isanwo', 'Biyan kuɗi'),
(30, 'theme', 'Theme', 'থিম', 'Tema', 'موضوع', 'विषय', 'خیالیہ', '主题', 'テーマ', 'Tema', 'тема', 'thème', '테마', 'Thema', 'Tema', 'กระทู้', 'Téma', 'Thema', 'theme', 'Tema', 'Tema', 'Θέμα', 'موضوع', 'Tema', 'થીમ', 'Motyw', 'Тема', 'ਥੀਮ', 'Temă', 'Akori', 'Jigo'),
(31, 'language', 'Language', 'ভাষা', 'Idioma', 'لغة', 'भाषा', 'زبان', '语言', '言語', 'Língua', 'язык', 'La langue', '언어', 'Sprache', 'linguaggio', 'ภาษา', 'Nyelv', 'Taal', 'Lingua', 'Bahasa', 'Dil', 'Γλώσσα', 'زبان', 'Bahasa', 'ભાષા', 'Język', 'Мова', 'ਭਾਸ਼ਾ', 'Limba', 'Ede', 'Harshe'),
(32, 'administrator', 'Administrator', 'প্রশাসক', 'Administrador', 'مدير', 'प्रशासक', 'منتظم', '管理员', '管理者', 'Administrador', 'администратор', 'administrateur', '관리자', 'Administrator', 'Amministratore', 'ผู้บริหาร', 'Adminisztrátor', 'Beheerder', 'administrator', 'Administrator', 'yönetici', 'Διαχειριστής', 'مدیر', 'Pentadbir', 'સંચાલક', 'Administrator', 'Адміністратор', 'ਪ੍ਰਬੰਧਕ', 'Administrator', 'IT', 'Mai gudanarwa'),
(33, 'academic_year', 'Academic Year', 'শিক্ষাবর্ষ', 'Año académico', 'السنة الأكاديمية', 'शैक्षणिक वर्ष', 'تعلیمی سال', '学年', '学年', 'Ano acadêmico', 'Академический год', 'Année académique', '학년', 'Akademisches Jahr', 'Anno accademico', 'ปีการศึกษา', 'Tanév', 'Academiejaar', 'anno academic', 'Tahun akademik', 'Akademik yıl', 'Ακαδημαϊκό έτος', 'سال تحصیلی', 'Tahun akademik', 'શૈક્ષણીક વર્ષ', 'Rok akademicki', 'Навчальний рік', 'ਅਕਾਦਮਿਕ ਸਾਲ', 'An academic', 'Akẹkọ Ọdún', 'Makarantar Kwalejin'),
(34, 'user', 'User', 'ব্যবহারকারী', 'Usuario', 'المستعمل', 'उपयोगकर्ता', 'صارف', '用户', 'ユーザー', 'Do utilizador', 'пользователь', 'Utilisateur', '사용자', 'Benutzer', 'Utente', 'ผู้ใช้งาน', 'használó', 'Gebruiker', 'User', 'Pengguna', 'kullanıcı', 'Χρήστης', 'کاربر', 'Pengguna', 'વપરાશકર્તા', 'Użytkownik', 'Користувач', 'ਯੂਜ਼ਰ', 'Utilizator', 'Olumulo', 'Mai amfani'),
(35, 'role', 'Role', 'ভূমিকা', 'Papel', 'وظيفة', 'भूमिका', 'کردار', '角色', '役割', 'Função', 'Роль', 'Rôle', '역할', 'Rolle', 'Ruolo', 'บทบาท', 'Szerep', 'Rol', 'partes', 'Peran', 'rol', 'Ρόλος', 'نقش', 'Peranan', 'ભૂમિકા', 'Rola', 'Роль', 'ਭੂਮਿਕਾ', 'Rol', 'Ipa', 'Matsayi'),
(36, 'user_role', 'User Role', 'ব্যবহারকারীর ভূমিকা', 'Rol del usuario', 'دور المستخدم', 'उपयोगकर्ता भूमिका', 'صارف کردار', '用户角色', 'ユーザーロール', 'Papel do usuário', 'Роль пользователя', 'Rôle dutilisateur', '사용자 역할', 'Benutzer-Rolle', 'Ruolo utente', 'บทบาทผู้ใช้', 'Felhasználói szerepkör', 'Gebruikersrol', 'User Partes', 'Peran pengguna', 'Kullanıcı rolü', 'Ρόλος χρήστη', 'نقش کاربر', 'Peranan Pengguna', 'વપરાશકર્તા ભૂમિકા', 'Rola użytkownika', 'Роль користувача', 'ਯੂਜ਼ਰ ਭੂਮਿਕਾ', 'Rolul utilizatorului', 'Išẹ Olumulo', 'Mai amfani'),
(37, 'role_permission', 'Role Permission', 'ভূমিকা অনুমতি', 'Permiso de función', 'إذن الدور', 'भूमिका अनुमति', 'کردار کی اجازت', '角色权限', '役割の許可', 'Permissão de papel', 'Ролевое разрешение', 'Permission de rôle', '역할 권한', 'Rollenberechtigungen', 'Permesso di ruolo', 'การอนุญาตบทบาท', 'Szerepengedély', 'Roltoestemming', 'Licet munus', 'Perizinan Peran', 'Rol İzni', 'Άδεια ρόλου', 'نقش مجاز', 'Kebenaran Peranan', 'ભૂમિકા પરવાનગી', 'Zezwolenie na role', 'Ролевий дозвіл', 'ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ', 'Permisiune pentru roluri', 'Igbese ipa', 'Yarjejeniyar aiki'),
(38, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট', 'Restablecer la contraseña', 'إعادة تعيين كلمة المرور', 'पासवर्ड रीसेट', 'پاس ورڈ ری سیٹ', '重设密码', 'パスワードを再設定する', 'Redefinir Senha', 'Сброс пароля', 'réinitialiser le mot de passe', '암호를 재설정', 'Passwort zurücksetzen', 'Resetta la password', 'รีเซ็ตรหัสผ่าน', 'Jelszó visszaállítása', 'Reset wachtwoord', 'Reset password', 'Reset Password', 'Şifreyi yenile', 'Επαναφέρετε τον κωδικό πρόσβασης', 'بازنشانی گذرواژه', 'Menetapkan semula kata laluan', 'પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło', 'Скинути пароль', 'ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Reseteaza parola', 'Atunwo Ọrọigbaniwọle', 'Sake saita kalmar sirri'),
(39, 'reset_user_password', 'Reset User Password', 'ব্যবহারকারী পাসওয়ার্ড রিসেট', 'Restablecer contraseña de usuario', 'إعادة تعيين كلمة مرور المستخدم', 'उपयोगकर्ता पासवर्ड रीसेट करें', 'صارف کا پاس ورڈ ری سیٹ کریں', '重置用户密码', 'ユーザパスワードをリセットする', 'Redefinir Senha do Usuário', 'Сбросить пароль пользователя', 'Réinitialiser mot de passe', '사용자 암호 재설정', 'Benutzerpasswort zurücksetzen', 'Reimposta password utente', 'รีเซ็ตรหัสผ่านผู้ใช้', 'Felhasználói jelszó visszaállítása', 'Reset gebruikerswachtwoord', 'User Password Reset', 'Reset Password Pengguna', 'Kullanıcı Parolasını Sıfırla', 'Επαναφορά κωδικού χρήστη', 'تنظیم مجدد رمز عبور کاربر', 'Tetapkan semula Kata Laluan Pengguna', 'વપરાશકર્તા પાસવર્ડ ફરીથી સેટ કરો', 'Zresetuj hasło użytkownika', 'Скинути пароль користувача', 'ਯੂਜ਼ਰ ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰੋ', 'Resetați parola de utilizator', 'Atunto Ọrọ Olumulo Titun', 'Sake saitin Kalmar Mai amfani'),
(40, 'backup', 'Backup', 'ব্যাকআপ', 'Apoyo', 'دعم', 'बैकअप', 'بیک اپ', '备用', 'バックアップ', 'Cópia de segurança', 'Резервное копирование', 'Sauvegarde', '지원', 'Backup', 'di riserva', 'การสำรองข้อมูล', 'biztonsági mentés', 'backup', 'tergum', 'Backup', 'yedek', 'Αντιγράφων ασφαλείας', 'پشتیبان گیری', 'Sandaran', 'બેકઅપ', 'Utworzyć kopię zapasową', 'Резервне копіювання', 'ਬੈਕਅਪ', 'Backup', 'Afẹyinti', 'Ajiyayyen'),
(41, 'human_resource', 'Human Resource', 'মানব সম্পদ', 'Recursos humanos', 'الموارد البشرية', 'मानव संसाधन', 'انسانی وسائل', '人力资源', '人的資源', 'Recursos humanos', 'Человеческие ресурсы', 'Ressource humaine', '인적 자원', 'Personal', 'Risorse umane', 'ทรัพยากรบุคคล', 'Emberi erőforrás', 'Human Resource', 'Humanum Resource', 'Sumber daya manusia', 'İnsan kaynakları', 'Ανθρώπινο δυναμικό', 'منابع انسانی', 'Sumber Manusia', 'માનવ સંસાધન', 'Zasoby ludzkie', 'Людський ресурс', 'ਮਾਨਵ ਸੰਸਾਧਨ', 'Resurse umane', 'Eda eniyan', 'Human Resource'),
(42, 'designation', 'Designation', 'পদবি', 'Designacion', 'تعيين', 'पद', 'عہدہ', '指定', '指定', 'Designação', 'обозначение', 'La désignation', '지정', 'Bezeichnung', 'Designazione', 'การแต่งตั้ง', 'Kijelölés', 'Aanwijzing', 'designatio', 'Penunjukan', 'tayin', 'Ονομασία', 'تعیین', 'Jawatan', 'હોદ્દો', 'Przeznaczenie', 'Позначення', 'ਅਹੁਦਾ', 'Desemnare', 'Ipilẹṣẹ', 'Dama'),
(43, 'employee', 'Employee', 'কর্মচারী', 'Empleado', 'موظف', 'कर्मचारी', 'ملازم', '雇员', '従業員', 'Empregado', 'Наемный рабочий', 'Employé', '종업원', 'Mitarbeiter', 'Dipendente', 'ลูกจ้าง', 'Munkavállaló', 'Werknemer', 'Aliquam', 'Karyawan', 'işçi', 'Υπάλληλος', 'کارمند', 'Pekerja', 'કર્મચારી', 'Pracownik', 'Працівник', 'ਕਰਮਚਾਰੀ', 'Angajat', 'Abáni', 'Maaikaci'),
(44, 'teacher', 'Teacher', 'শিক্ষক', 'Profesor', 'مدرس', 'अध्यापक', 'استاد', '老师', '先生', 'Professor', 'учитель', 'Prof', '선생', 'Lehrer', 'Insegnante', 'ครู', 'Tanár', 'Leraar', 'magister', 'Guru', 'Öğretmen', 'Δάσκαλος', 'معلم', 'Guru', 'શિક્ષક', 'Nauczyciel', 'Вчитель', 'ਟੀਚਰ', 'Profesor', 'Olùkọ', 'Malam'),
(45, 'class', 'Class', 'শ্রেণী', 'Clase', 'صف دراسي', 'कक्षा', 'کلاس', '类', 'クラス', 'Classe', 'Класс', 'Classe', '수업', 'Klasse', 'Classe', 'ชั้น', 'Osztály', 'Klasse', 'genus', 'Kelas', 'Sınıf', 'Τάξη', 'کلاس', 'Kelas', 'વર્ગ', 'Klasa', 'Клас', 'ਕਲਾਸ', 'Clasă', 'Kilasi', 'Class'),
(46, 'section', 'Section', 'শাখা', 'Sección', 'الجزء', 'अनुभाग', 'سیکشن', '部分', 'セクション', 'Seção', 'Раздел', 'Section', '섹션', 'Sektion', 'Sezione', 'มาตรา', 'Szakasz', 'Sectie', 'sectioni', 'Bagian', 'Bölüm', 'Ενότητα', 'بخش D', 'Seksyen', 'વિભાગ', 'Sekcja', 'Розділ', 'ਅਨੁਭਾਗ', 'Secțiune', 'Abala', 'Sashi'),
(47, 'subject', 'Subject', 'বিষয়', 'Tema', 'موضوع', 'विषय', 'مضمون', '学科', '件名', 'Subject', 'Предмет', 'assujettir', '제목', 'Gegenstand', ' Soggetto', 'เรื่อง', 'Tantárgy', 'Onderwerpen', 'subject', 'Subyek', 'konu', 'Θέμα', 'موضوع', 'Subjek', 'વિષય', 'Przedmiot', 'Тема', 'ਵਿਸ਼ਾ', 'Subiect', 'Koko-ọrọ', 'Subject'),
(48, 'syllabus', 'Syllabus', 'পাঠ্যক্রম', 'Silaba', 'المنهج', 'पाठ्यक्रम', 'نصاب', '教学大纲', 'シラバス', 'Programa de Estudos', 'Учебный план', 'Programme', '강의 계획서', 'Lehrplan', 'Programma', 'หลักสูตร', 'Tanmenet', 'Syllabus', 'Syllabus', 'Silabus', 'Müfredat', 'Περίληψη', 'سرفصل دروس', 'Silibus', 'અભ્યાસક્રમ', 'Konspekt', 'Силабус', 'ਸਿਲੇਬਸ', 'Silabă', 'Syllabus', 'Syllabus'),
(49, 'guardian', 'Guardian', 'অভিভাবক', 'guardián', 'وصي', 'अभिभावक', 'سرپرست', '监护人', 'ガーディアン', 'Guardião', 'блюститель', 'Gardien', '보호자', 'Wächter', 'Custode', 'ผู้ปกครอง', 'Gyám', 'Voogd', 'custos', 'Wali', 'Gardiyan', 'Κηδεμόνας', 'نگهبان', 'Guardian', 'ગાર્ડિયન', 'Opiekun', 'Опікун', 'ਗਾਰਡੀਅਨ', 'paznic', 'Oluṣọ', 'Guardian'),
(50, 'student', 'Student', 'ছাত্র', 'Estudiante', 'طالب علم', 'छात्र', 'طالب علم', '学生', '学生', 'Aluna', 'Студент', 'Étudiant', '학생', 'Schüler', 'Alunno', 'นักเรียน', 'Diák', 'Student', 'Discipulus', 'Mahasiswa', 'Öğrenci', 'Μαθητης σχολειου', 'دانشجو', 'Pelajar', 'વિદ્યાર્થી', 'Student', 'Студентка', 'ਵਿਦਿਆਰਥੀ', 'Student', 'Ọmọ-iwe', 'Student'),
(51, 'attendance', 'Attendance', 'উপস্থিতি', 'Asistencia', 'الحضور', 'उपस्थिति', 'حاضری', '勤', '出席', 'Comparecimento', 'посещаемость', 'Présence', '출석', 'Teilnahme', 'partecipazione', 'การดูแลรักษา', 'Részvétel', 'opkomst', 'attendance', 'Kehadiran', 'katılım', 'Παρουσία', 'حضور', 'Kehadiran', 'હાજરી', 'Frekwencja', 'Відвідуваність', 'ਹਾਜ਼ਰੀ', 'prezență', 'Wiwa', 'Ziyarci'),
(52, 'assignment', 'Assignment', 'এসাইনমেন্ট', 'Asignación', 'مهمة', 'असाइनमेंट', 'تفویض', '分配', '割り当て', 'Tarefa', 'присваивание', 'Affectation', '할당', 'Zuordnung', 'assegnazione', 'การมอบหมาย', 'Feladat', 'toewijzing', 'assignment', 'Tugas', 'atama', 'ΑΝΑΘΕΣΗ ΕΡΓΑΣΙΑΣ', 'وظیفه', 'tugasan', 'સોંપણી', 'Zadanie', 'Назначення', 'ਅਸਾਈਨਮੈਂਟ', 'Misiune', 'Ifiranṣẹ', 'Matsayi'),
(53, 'exam', 'Exam', 'পরীক্ষা', 'Examen', 'امتحان', 'परीक्षा', 'امتحان', '考试', '試験', 'Exame', 'Экзамен', 'Examen', '시험', 'Prüfung', 'Esame', 'การสอบ', 'Vizsga', 'tentamen', 'nito', 'Ujian', 'sınav', 'Εξέταση', 'امتحان', 'Peperiksaan', 'પરીક્ષા', 'Egzamin', 'Іспит', 'ਪ੍ਰੀਖਿਆ', 'Examen', 'Idanwo', 'Binciken'),
(54, 'exam_grade', 'Exam Grade', 'পরীক্ষার গ্রেড', 'Examen de grado', 'امتحان الصف', 'परीक्षा ग्रेड', 'امتحان گریڈ', '考试成绩', '試験グレード', 'Nota da prova', 'Экзамен', 'Grade dexamen', '시험 성적', 'Prüfungsnote', 'Voto desame', 'ระดับการสอบ', 'Vizsga fokozat', 'Examencijfer', 'Romani nito', 'Kelas ujian', 'Sınav Notu', 'Βαθμό εξετάσεων', 'درجه آزمون', 'Gred Peperiksaan', 'પરીક્ષા ગ્રેડ', 'Stopień egzaminu', 'Ступінь іспиту', 'ਐਜੂਕੇਸ਼ਨ ਗ੍ਰੇਡ', 'Gradul de examen', 'Ayẹwo Ipele', 'Binciken Nazari'),
(55, 'exam_term', 'Exam Term', 'পরীক্ষা টার্ম', 'Plazo del examen', 'مدة الامتحان', 'परीक्षा की अवधि', 'امتحان کی مدت', '考试期限', '試験期間', 'Termo do Exame', 'Срок действия экзамена', 'Terme dexamen', '시험 기간', 'Prüfungsdauer', 'Termine desame', 'เงื่อนไขการสอบ', 'Vizsgaidőszak', 'Examen termijn', 'Term nito', 'Ujian Term', 'Sınav Terimi', 'Όρος Εξέτασης', 'شرایط آزمون', 'Tempoh Peperiksaan', 'પરીક્ષાની મુદત', 'Okres egzaminacyjny', 'Термін екзамену', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ', 'Termen de examinare', 'Ayewo Aago', 'Tambaya'),
(56, 'suggestion', 'Suggestion', 'সাজেশন', 'Sugerencia', 'اقتراح', 'सुझाव', 'مشورہ', '建议', '提案', 'Sugestão', 'Предложение', 'Suggestion', '암시', 'Vorschlag', 'Suggerimento', 'ข้อเสนอแนะ', 'Javaslat', 'Suggestie', 'suggestion', 'Saran', 'Öneri', 'Πρόταση', 'پیشنهادی', 'Cadangan', 'સૂચન', 'Sugestia', 'Пропозиція', 'ਸੁਝਾਅ', 'Sugestie', 'Abajade', 'Shawarwarin'),
(57, 'exam_mark', 'Exam Mark', 'পরীক্ষা মার্ক', 'Marca de examen', 'علامة الامتحان', 'परीक्षा चिन्ह', 'امتحان مارک', '考试标志', '試験のマーク', 'Marca de exame', 'Экзамен Mark', 'Marque dexamen', '시험 마크', 'Prüfzeichen', 'Segno dellesame', 'เครื่องหมายการสอบ', 'Vizsga Mark', 'Examenmarkering', 'Mark nito', 'Tanda ujian', 'Sınav işareti', 'Εξετάσεων Εξετάσεων', 'علامت امتحان', 'Ujian Mark', 'પરીક્ષા માર્ક', 'Znak egzaminu', 'Екзаменаційний знак', 'ਐਜੂਕੇਸ਼ਨ ਮਾਰਕ', 'Exam Mark', 'Aami ayẹwo', 'Alamar Duba'),
(58, 'mark_sheet', 'Mark Sheet', 'নাম্বার শিট', 'Hoja de marca', 'علامة ورقة', 'अंक तालिका', 'مارک شیٹ', '标记表', 'マークシート', 'Marca Folha', 'Mark Sheet', 'Feuille de marque', '마크 시트', 'Markierungsblatt', 'Libretto universitario', 'ทำเครื่องหมายแผ่นงาน', 'Mark Sheet', 'Mark Sheet', 'Mark Sheet', 'Lembar penilaian', 'Mark Levha', 'Φυλλάδιο απαντήσεων', 'برگه مارک', 'Mark Sheet', 'માર્ક શીટ', 'Arkusz ocen', 'Марк Лист', 'ਮਾਰਕ ਸ਼ੀਟ', 'Marcați foaia', 'Samisi iwe', 'Mark Sheet'),
(59, 'exam_final_result', 'Exam Final Result', 'পরীক্ষার ফাইনাল ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان کے حتمی نتیجہ', '考试最终结果', '試験最終結果', 'Resultado Final do Exame', 'Экзамен Окончательный результат', 'Résultat final de lexamen', '시험 최종 결과', 'Abschluss der Prüfung', 'Esame Risultato finale', 'ผลสอบปลายภาค', 'Vizsga végeredmény', 'Examen Eindresultaat', 'Nito captorum eventus superae', 'Hasil Ujian Akhir Ujian', 'Sınav Sonucu', 'Τελικό αποτέλεσμα εξέτασης', 'نتیجه نهایی آزمون', 'Keputusan Akhir Peperiksaan', 'પરીક્ષા અંતિમ પરિણામ', 'Egzamin Wynik końcowy', 'Останній результат іспиту', 'ਪ੍ਰੀਖਿਆ ਅੰਤਿਮ ਨਤੀਜੇ', 'Examen Rezultat final', 'Ipari ipari ikẹhin', 'Binciken Ƙarshe na Ƙarshe'),
(60, 'result', 'Result', 'পরীক্ষার ফলাফল', 'Resultado', 'نتيجة', 'परिणाम', 'نتیجہ', '结果', '結果', 'Resultado', 'результат', 'Résultat', '결과', 'Ergebnis', 'Risultato', 'ผล', 'Eredmény', 'Resultaat', 'exitum', 'Hasil', 'Sonuç', 'Αποτέλεσμα', 'نتیجه', 'Keputusan', 'પરિણામ', 'Wynik', 'Результат', 'ਨਤੀਜਾ', 'Rezultat', 'Esi', 'Sakamako'),
(61, 'mark_send_by_sms', 'Mark send by SMS', 'মার্ক পাঠান এসএমএস দিয়ে', 'Marca enviar por SMS', 'علامة إرسال عن طريق الرسائل القصيرة', 'एसएमएस द्वारा भेजें भेजें', 'ایس ایم ایس کے ذریعہ بھیجیں', '标记通过短信发送', 'SMSでマークする', 'Marcar enviar por SMS', 'Отметить отправку по SMS', 'Mark envoyer par SMS', 'SMS로 보내기 표시', 'Markiere per SMS', 'Mark invia tramite SMS', 'ทำเครื่องหมายว่าส่งทาง SMS', 'Jelölje be SMS-ben', 'Markeer per sms', 'Mark a mittere SMS', 'Tandai kirim melalui SMS', 'SMS ile gönderiyi işaretle', 'Σημειώστε την αποστολή μέσω SMS', 'علامت گذاری به عنوان خوانده شده توسط SMS', 'Tandakan hantar melalui SMS', 'એસએમએસ દ્વારા મોકલો માર્ક કરો', 'Oznacz, wyślij przez SMS', 'Марк відправити SMS', 'ਐਸਐਮਐਸ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcare trimite prin SMS', 'Samisi firanṣẹ nipasẹ SMS', 'Alama aika ta SMS'),
(62, 'mark_send_by_email', 'Mark send by Email', 'মার্ক পাঠান ইমেইল দিয়ে', 'Marcar enviar por correo electrónico', 'علامة إرسال عن طريق البريد الإلكتروني', 'ईमेल द्वारा भेजें मार्क', 'ایس ایم ایس کے ذریعہ بھیجیں', '用电子邮件标记发送', '電子メールで送信する', 'Marcar enviar por e-mail', 'Марк отправить по электронной почте', 'Mark envoyer par Email', '전자 메일로 보내기 표시', 'Markiere per Email', 'Mark invia tramite e-mail', 'มาร์คส่งทางอีเมล', 'A feliratkozás e-mailben történik', 'Markeer per e-mail', 'Email a Mark mittere', 'Tandai kirim melalui Email', 'E-postayla gönderi işaretle', 'Σημειώστε στείλτε με Email', 'علامت گذاری به عنوان ارسال از طریق ایمیل', 'Tandakan hantar melalui E-mel', 'ઇમેઇલ દ્વારા મોકલો માર્ક કરો', 'Zaznacz Wyślij przez e-mail', 'Позначити відправити по електронній пошті', 'ਈਮੇਲ ਦੁਆਰਾ ਭੇਜੋ ਮਾਰਕ ਕਰੋ', 'Marcați trimiteți prin e-mail', 'Samisi firanṣẹ nipasẹ Imeeli', 'Alama aika ta Imel'),
(63, 'promotion', 'Promotion', 'প্রমোশন', 'Promoción', 'ترقية وظيفية', 'पदोन्नति', 'فروغ', '提升', 'プロモーション', 'Promoção', 'Продвижение', 'Promotion', '승진', 'Beförderung', 'Promozione', 'การส่งเสริม', 'promóció', 'Bevordering', 'promotio', 'Promosi', 'tanıtım', 'Προβολή', 'ترفیع', 'Promosi', 'પ્રોત્સાહન', 'Awans', 'Просування', 'ਪ੍ਰੋਮੋਸ਼ਨ', 'Promovare', 'Igbega', 'Shawarwarin'),
(64, 'library', 'Library', 'গ্রন্থাগার', 'Biblioteca', 'مكتبة', 'पुस्तकालय', 'لائبریری', '图书馆', 'としょうかん', 'Biblioteca', 'Библиотека', 'Bibliothèque', '도서관', 'Bibliothek', 'Biblioteca', 'ห้องสมุด', 'Könyvtár', 'Bibliotheek', 'Bibliotheca', 'Perpustakaan', 'Kütüphane', 'Βιβλιοθήκη', 'کتابخانه', 'Perpustakaan', 'પુસ્તકાલય', 'Biblioteka', 'Бібліотека', 'ਲਾਇਬ੍ਰੇਰੀ', 'Bibliotecă', 'Iwadi', 'Library'),
(65, 'book', 'Book', 'বই', 'Libro', 'كتاب', 'किताब', 'کتاب', '书', '本', 'Livro', 'Книга', 'Livre', '도서', 'Buch', 'Libro', 'หนังสือ', 'Könyv', 'Boek', 'liber', 'Book', 'Kitap', 'Βιβλίο', 'کتاب', 'Buku', 'પુસ્તક', 'Książka', 'Книга', 'ਬੁੱਕ', 'Carte', 'Iwe', 'Littafin'),
(66, 'member', 'Member', 'সদস্য', 'Miembro', 'عضو', 'सदस्य', 'رکن', '会员', 'メンバー', 'Membro', 'член', 'Membre', '회원', 'Mitglied', 'Membro', 'สมาชิก', 'Tag', 'Lid', 'socius', 'Anggota', 'üye', 'Μέλος', 'عضو', 'Ahli', 'સભ્ય', 'Członek', 'Член', 'ਸਦੱਸ', 'Membru', 'Ẹgbẹ', 'Memba'),
(67, 'issue_and_return', 'Issue & Return', 'ইস্যু এবং রিটার্ন', 'Emisión y devolución', 'الإصدار والعودة', 'अंक और वापसी', 'مسئلہ اور واپسی', '问题和回报', '問題とリターン', 'Problema e retorno', 'Проблема и возврат', 'Emission et retour', '이슈와 리턴', 'Problem und Rückgabe', 'Problema e ritorno', 'การออกและการคืนสินค้า', 'Kiadás és visszatérés', 'Probleem en terugkeer', 'Et exitus Redi', 'Isu dan Kembali', 'Sayı ve İade', 'Έκδοση και επιστροφή', 'مسئله و بازگشت', 'Isu dan Pulangan', 'ઇશ્યૂ અને રીટર્ન', 'Wydanie i zwrot', 'Проблема та повернення', 'ਇਸ਼ੂ ਅਤੇ ਵਾਪਸੀ', 'Eliberare și returnare', 'Oro ati Pada', 'Isar da Komawa'),
(68, 'issue', 'Issue', 'ইস্যু', 'Emisión y devolución...', 'القضية', 'मुद्दा', 'مسئلہ', '问题', '問題', 'Questão', 'вопрос', 'Problème', '발행물', 'Problem', 'Problema', 'ปัญหา', 'Probléma', 'Kwestie', 'exitus', 'Isu', 'Konu', 'Θέμα', 'موضوع', 'Isu', 'મુદ્દો', 'Kwestia', 'Проблема', 'ਮੁੱਦੇ', 'Problema', 'Oro naa', 'Matsalar'),
(69, 'return', 'Return', 'রিটার্ন করা হয়েছে', 'Regreso', 'إرجاع', 'वापसी', 'واپس لو', '返回', '戻る', 'Retorna', 'Вернуть', 'Revenir', '반환', 'Rückkehr', 'Ritorno', 'กลับ', 'Visszatérés', 'terugkeer', 'Redi', 'Kembali', 'Dönüş', 'ΕΠΙΣΤΡΟΦΗ', 'برگشت', 'Kembali', 'પાછા આવો', 'Powrót', 'Повернення', 'ਵਾਪਸੀ', 'Întoarcere', 'Pada', 'Komawa'),
(70, 'issue_date', 'Issue Date', 'ইস্যু তারিখ', 'Fecha de asunto', 'تاريخ الاصدار', 'जारी करने की तिथि', 'تاریخ اجراء', '发行日期', '発行日', 'Data de emissão', 'Дата выпуска', 'Date démission', '발행일', 'Ausgabedatum', 'Data di rilascio', 'วันที่ออก', 'Kiadás dátuma', 'Datum van publicatie', 'exitus Date', 'Tanggal pembuatan', 'Veriliş tarihi', 'Ημερομηνία έκδοσης', 'تاریخ انتشار', 'Tarikh Keluaran', 'અંક તારીખ', 'Data wydania', 'Дата випуску', 'ਜਾਰੀ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data emiterii', 'Ọjọ itẹjade', 'Isowar ranar'),
(71, 'due_date', 'Due Date', 'নির্দিষ্ট তারিখ', 'Fecha de vencimiento', 'تاريخ الاستحقاق', 'नियत तारीख', 'اخری تاریخ', '截止日期', '期日', 'Data de Vencimento', 'Срок', 'Date déchéance', '마감일', 'Geburtstermin', 'Scadenza', 'Due Date', 'Esedékesség', 'Opleveringsdatum', 'ob Date', 'Batas tanggal terakhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ تحویل', 'Tarikh Gagal', 'નિયત તારીખ', 'Termin płatności', 'Термін сплати', 'ਅਦਾਇਗੀ ਤਾਰੀਖ', 'Data scadentă', 'Asiko to ba to', 'Kwanan wata'),
(72, 'return_date', 'Return Date', 'রিটার্ন তারিখ', 'Fecha de regreso', 'تاريخ العودة', 'वापसी की तिथि', 'واپسی کی تاریخ', '归期', '返却日', 'Data de retorno', 'Дата возврата', 'Date de retour', '반환 기일', 'Rückflugdatum', 'Data di ritorno', 'วันที่กลับ', 'Visszatérítési dátum', 'Retourdatum', 'Redi Date', 'Tanggal pengembalian', 'Dönüş tarihi', 'Ημερομηνία επιστροφής', 'تاریخ بازگشت', 'Tarikh Pulang', 'રીટર્ન તારીખ', 'Data powrotu', 'Дата повернення', 'ਵਾਪਸੀ ਦੀ ਤਾਰੀਖ', 'Data retur', 'Ọjọ pada', 'Ranar Koma'),
(73, 'new_issue', 'New Issue', 'নতুন ইস্যু', 'Nueva edición', 'مشكلة جديدة', 'नया मुद्दा', 'نیا مسئلہ', '新问题', '新しい問題', 'Novo problema', 'Новый выпуск', 'Nouveau numéro', '새로운 문제', 'Neues Problem', 'Nuovo problema', 'ฉบับใหม่', 'Új probléma', 'Nieuw probleem', 'New issue', 'Isu Baru', 'Yeni baskı', 'ΝΕΟ ΘΕΜΑ', 'مسئله جدید', 'Isu Baru', 'નવું અંક', 'Nowy problem', 'Новий випуск', 'ਨਵਾਂ ਮਸਲਾ', 'Problemă nouă', 'Oro tuntun', 'Sabon Tambaya'),
(74, 'transport', 'Transport', 'পরিবহন', 'Transporte', 'المواصلات', 'ट्रांसपोर्ट', 'نقل و حمل', '运输', '輸送', 'Transporte', 'Транспорт', 'Transport', '수송', 'Transport', 'Trasporto', 'ขนส่ง', 'Szállítás', 'Vervoer', 'onerariis', 'Mengangkut', 'taşıma', 'Μεταφορά', 'حمل و نقل', 'Pengangkutan', 'પરિવહન', 'Transport', 'Транспорт', 'ਟ੍ਰਾਂਸਪੋਰਟ', 'Transport', 'Ọkọ', 'Mota'),
(75, 'vehicle', 'Vehicle', 'গাড়ী', 'Transporte...', 'مركبة', 'वाहन', 'گاڑی', '车辆', '車両', 'Veículo', 'Средство передвижения', 'Véhicule', '차량', 'Fahrzeug', 'Veicolo', 'พาหนะ', 'Jármű', 'Voertuig', 'vehiculum', 'Kendaraan', 'araç', 'Οχημα', 'وسیله نقلیه', 'Kenderaan', 'વાહન', 'Pojazd', 'Автомобіль', 'ਵਾਹਨ', 'Vehicul', 'Ọkọ', 'Mota'),
(76, 'transport_route', 'Transport Route', 'পরিবহন রাস্তা', 'Ruta de transporte', 'طريق النقل', 'परिवहन मार्ग', 'ٹرانسپورٹ کا راستہ', '运输路线', '輸送ルート', 'Rota dos transportes', 'Транспортный маршрут', 'Route de transport', '운송 경로', 'Transportweg', 'Itinerario di trasporto', 'เส้นทางคมนาคม', 'Szállítási útvonal', 'Transportroute', 'Iter itineris onerariam', 'Rute transportasi', 'Ulaşım Güzergahı', 'Διαδρομή μεταφοράς', 'مسیر حمل و نقل', 'Laluan Pengangkutan', 'પરિવહન માર્ગ', 'Szlak transportowy', 'Транспортний маршрут', 'ਟ੍ਰਾਂਸਪੋਰਟ ਰੂਟ', 'Traseul de transport', 'Ọna itọsọna', 'Hanyar sufuri'),
(77, 'hostel', 'Hostel', 'ছাত্রাবাস', 'Hostal', 'نزل', 'छात्रावास', 'ہاسٹل', '宿舍', 'ホステル', 'Hostel', 'Хостел', 'Hôtel', '호스텔', 'Herberge', 'Ostello', 'ที่พัก', 'Diákszálló', 'Herberg', 'Hostel', 'Asrama', 'Pansiyon', 'Ξενοδοχείο', 'خوابگاه', 'Asrama', 'છાત્રાલય', 'Schronisko', 'Хостел', 'ਹੋਸਟਲ', 'Hostel', 'Agbegbe', 'Dakunan kwanan dalibai'),
(78, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'Ifiranṣẹ', 'Saƙo'),
(80, 'email', 'Email', 'ইমেইল', 'Email', 'البريد الإلكتروني', 'ईमेल', 'ای میل', '电子邮件', 'Eメール', 'O email', 'Эл. адрес', 'Email', '이메일', 'Email', 'E-mail', 'อีเมล์', 'Email', 'E-mail', 'Email', 'E-mail', 'E-posta', 'ΗΛΕΚΤΡΟΝΙΚΗ ΔΙΕΥΘΥΝΣΗ', 'پست الکترونیک', 'E-mel', 'ઇમેઇલ', 'E-mail', 'Електронна пошта', 'ਈ - ਮੇਲ', 'E-mail', 'Imeeli', 'Imel'),
(81, 'sms', 'SMS', 'এসএমএস', 'SMS', 'رسالة قصيرة', 'एसएमएस', 'پیغام', '短信', 'SMS', 'SMS', 'смс', 'SMS', 'SMS', 'SMS', 'sms', 'ข้อความ', 'SMS', 'sms', 'SMS', 'SMS', 'SMS', 'γραπτό μήνυμα', 'پیامک', 'SMS', 'એસએમએસ', 'SMS', 'СМС', 'SMS', 'mesaj', 'SMS', 'SMS'),
(82, 'announcement', 'Announcement', 'ঘোষণা', 'Anuncio', 'إعلان', 'घोषणा', 'اعلان', '公告', '発表', 'Anúncio', 'Объявление', 'Annonce', '발표', 'Ankündigung', 'Annuncio', 'การประกาศ', 'Közlemény', 'Aankondiging', 'denuntiatio', 'Pengumuman', 'duyuru', 'Ανακοίνωση', 'اطلاعیه', 'Pengumuman', 'જાહેરાત', 'Ogłoszenie', 'Оголошення', 'ਘੋਸ਼ਣਾ', 'Anunţ', 'Ikede', 'Sanarwa'),
(83, 'notice', 'Notice', 'বিজ্ঞপ্তি', 'darse cuenta', 'تنويه', 'नोटिस', 'نوٹس', '注意', '通知', 'Aviso prévio', 'уведомление', 'Remarquer', '주의', 'Beachten', 'Avviso', 'แจ้งให้ทราบ', 'Értesítés', 'Merk op', 'notitia', 'Melihat', 'ihbar', 'Ειδοποίηση', 'اطلاع', 'Notis', 'નોટિસ', 'Ogłoszenie', 'Зверніть увагу', 'ਨੋਟਿਸ', 'Înștiințare', 'Akiyesi', 'Lura'),
(84, 'news', 'News', 'সংবাদ', 'Noticias', 'أخبار', 'समाचार', 'خبریں', '新闻', 'ニュース', 'Notícia', 'Новости', 'Nouvelles', '뉴스', 'Nachrichten', 'notizia', 'ข่าว', 'hírek', 'Nieuws', 'News', 'Berita', 'Haber', 'Νέα', 'اخبار', 'Berita', 'સમાચાર', 'Aktualności', 'Новини', 'ਨਿਊਜ਼', 'Știri', 'Awọn iroyin', 'News'),
(85, 'holiday', 'Holiday', 'ছুটির দিন', 'Fiesta', 'يوم الاجازة', 'छुट्टी का दिन', 'چھٹیوں', '假日', '休日', 'Feriado', 'День отдыха', 'Vacances', '휴일', 'Urlaub', 'Vacanza', 'วันหยุด', 'Ünnep', 'Holiday', 'ferias', 'Liburan', 'Tatil', 'Αργία', 'تعطیلات', 'Percutian', 'રજા', 'Święto', 'Свято', 'ਛੁੱਟੀਆਂ', 'Vacanţă', 'Isinmi', 'Holiday'),
(86, 'event', 'Event', 'ইভেন্ট', 'Evento', 'هدف', 'घटना', 'تقریب', '事件', 'イベント', 'Evento', 'Мероприятие', 'un événement', '행사', 'Veranstaltung', 'Evento', 'เหตุการณ์', 'Esemény', 'Evenement', 'res', 'Peristiwa', 'Etkinlik', 'Εκδήλωση', 'رویداد', 'Acara', 'ઇવેન્ટ', 'Zdarzenie', 'Подія', 'ਘਟਨਾ', 'Eveniment', 'Iṣẹ iṣe', 'Event'),
(87, 'visitor_info', 'Visitor Info', 'আগন্তুক তথ্য', 'Información del visitante', 'معلومات الزائر', 'आगंतुक जानकारी', 'وزیٹر کی معلومات', '访客信息', '訪問者の情報', 'Informação do visitante', 'Информация для посетителей', 'Infos visiteurs', '방문자 정보', 'Besucherinfo', 'Informazioni per i visitatori', 'ข้อมูลผู้เยี่ยมชม', 'Látogatóinformációk', 'Bezoekersinformatie', 'visitor Info', 'Info Pengunjung', 'Ziyaretçi Bilgisi', 'Πληροφορίες επισκεπτών', 'اطلاعات بازدید کننده', 'Maklumat Pelawat', 'મુલાકાતી માહિતી', 'Informacje dla odwiedzających', 'Інформація про відвідувачів', 'ਵਿਜ਼ਟਰ ਜਾਣਕਾਰੀ', 'Informații despre vizitatori', 'Alaye Alejo', 'Bayar da Bayani'),
(88, 'accounting', 'Accounting', 'হিসাবরক্ষণ', 'Contabilidad', 'محاسبة', 'लेखांकन', 'اکاؤنٹنگ', '会计', '会計', 'Contabilidade', 'бухгалтерский учет', 'Comptabilité', '회계', 'Buchhaltung', 'Contabilità', 'การบัญชี', 'Számvitel', 'Accounting', 'ratio', 'Akuntansi', 'Muhasebe', 'Λογιστική', 'حسابداری', 'Perakaunan', 'નામું', 'Rachunkowość', 'Бухгалтерський облік', 'ਲੇਿਾਕਾਰੀ', 'Contabilitate', 'Iṣiro', 'Ƙididdiga'),
(89, 'fee_type', 'Fee Type', 'ফি টাইপ', 'Tipo de tarifa', 'نوع الرسوم', 'शुल्क प्रकार', 'فیس قسم', '费用类型', '料金タイプ', 'Tipo de taxa', 'Тип платы', 'Type de frais', '수수료 유형', 'Gebührenart', 'Tipo di commissione', 'ประเภทค่าธรรมเนียม', 'Díj típusa', 'Vergoedingstype', 'feodo Type', 'Jenis Biaya', 'Ücret Türü', 'Τύπος τέλους', 'نوع هزینه', 'Jenis Bayaran', 'ફી પ્રકાર', 'Rodzaj opłaty', 'Плата типу', 'ਫੀਸ ਕਿਸਮ', 'Tip de taxă', 'Iru Ẹri', 'Fee Type'),
(90, 'type', 'Type', 'প্রকার', 'Tipo', 'اكتب', 'प्रकार', 'ٹائپ کریں', '类型', 'タイプ', 'Tipo', 'Тип', 'Type', '유형', 'Art', 'genere', 'ชนิด', 'típus', 'Type', 'genus', 'Mengetik', 'tip', 'Τύπος', 'تایپ کنید', 'Taipkan', 'પ્રકાર', 'Rodzaj', 'Тип', 'ਟਾਈਪ ਕਰੋ', 'Tip', 'Iru', 'Rubuta'),
(91, 'invoice', 'Invoice', 'চালান', 'Factura', 'فاتورة', 'बीजक', 'انوائس', '发票', '請求書', 'Fatura', 'Выставленный счет', 'Facture dachat', '송장', 'Rechnung', 'Fattura', 'ใบแจ้งหนี้', 'Számla', 'Factuur', 'cautionem', 'Faktur', 'Fatura', 'Τιμολόγιο', 'صورتحساب', 'Invois', 'ભરતિયું', 'Faktura', 'Рахунок-фактура', 'ਇਨਵੌਇਸ', 'Factura fiscala', 'Ifiweranṣẹ', 'Invoice'),
(92, 'create', 'Create', 'তৈরী কর', 'Crear', 'خلق', 'सर्जन करना', 'بنانا', '创建', '作成する', 'Crio', 'Создайте', 'Créer', '몹시 떠들어 대다', 'Erstellen', 'Creare', 'สร้าง', 'Teremt', 'creëren', 'Create', 'Membuat', 'yaratmak', 'Δημιουργώ', 'ايجاد كردن', 'Buat', 'બનાવો', 'Stwórz', 'Створити', 'ਬਣਾਓ', 'Crea', 'Ṣẹda', 'Ƙirƙiri'),
(93, 'due_invoice', 'Due Invoice', 'বাকি চালান', 'Factura debida', 'الفاتورة المستحقة', 'कारण चालान', 'وجہ انوائس', '到期发票', '支払請求書', 'Fatura devida', 'Счет-фактура', 'Due Facture', '송장', 'Fällige Rechnung', 'Fattura dovuta', 'ใบแจ้งหนี้ที่ครบกำหนด', 'Esedékes számla', 'Doorlopende factuur', 'ob cautionem', 'Karena Faktur', 'Fatura Faturası', 'Οφειλόμενο τιμολόγιο', 'فاکتور موقت', 'Invois yang Dikehendaki', 'કારણે ભરતિયું', 'Due Faktura', 'Належний рахунок-фактура', 'ਬਕਾਇਆ ਇਨਵੌਇਸ', 'Datorită facturii', 'Fun Iroyin', 'Saboda Bayani'),
(94, 'expenditure', 'Expenditure', 'ব্যয়', 'Gasto', 'المصروفات', 'व्यय', 'خرچ', '支出', '支出', 'Despesa', 'Расход', 'Dépense', '지출', 'Ausgaben', 'Spesa', 'รายจ่าย', 'Kiadás', 'Uitgaven', 'Custus', 'Pengeluaran', 'harcama', 'Δαπάνη', 'هزینه ها', 'Perbelanjaan', 'ખર્ચ', 'Wydatek', 'Витрати', 'ਖਰਚੇ', 'Cheltuieli', 'Isanwo', 'Sakamako'),
(95, 'expenditure_head', 'Expenditure Head', 'ব্যয় হেড', 'Jefe de gastos', 'رئيس النفقات', 'व्यय हेड', 'خرچ سر', '支出负责人', '支出ヘッド', 'Chefe de despesas', 'Руководитель отдела расходов', 'Chef des dépenses', '지출 헤드', 'Ausgabenleiter', 'Capo spese', 'หัวหน้าค่าใช้จ่าย', 'Kiadási vezető', 'Uitgaven Hoofd', 'caput capitis expensi,', 'Kepala Pengeluaran', 'Harcama Kafası', 'Επικεφαλής δαπανών', 'سر هزینه', 'Ketua Perbelanjaan', 'ખર્ચ હેડ', 'Wydatki Kierownik', 'Голова витрат', 'ਖਰਚਾ ਸਿਰ', 'Șef de cheltuieli', 'Oriiye Gbese', 'Shugaban Kuɗi'),
(96, 'income', 'Income', 'আয়', 'Ingresos', 'الإيرادات', 'आय', 'آمدنی', '收入', '所得', 'Renda', 'доход', 'le revenu', '수입', 'Einkommen', 'Reddito', 'เงินได้', 'Jövedelem', 'Inkomen', 'reditus', 'Pendapatan', 'Gelir', 'Εισόδημα', 'درآمد', 'Pendapatan', 'આવક', 'Dochód', 'Дохід', 'ਆਮਦਨੀ', 'Sursa de venit', 'Owo oya', 'Kudin shiga'),
(97, 'income_head', 'Income Head', 'আয় হেড', 'Jefe de ingresos', 'رئيس الدخل', 'आय हेड', 'آمدنی کے سربراہ', '收入负责人', '所得の頭部', 'Chefe de renda', 'Головной доход', 'Tête de revenu', '소득 헤드', 'Einkommen Kopf', 'Capo reddito', 'หัวหน้ารายได้', 'Jövedelemvezető', 'Inkomenskop', 'caput capitis reditus', 'Kepala Penghasilan', 'Gelir Kafası', 'Κεφάλαιο Εισοδήματος', 'سر درآمد', 'Ketua Pendapatan', 'આવક હેડ', 'Głowa dochodów', 'Голова доходів', 'ਇਨਕਮ ਹੈੱਡ', 'Cap de venit', 'owo oya Head', 'Shugaban Asusun'),
(98, 'report', 'Report', 'প্রতিবেদন', 'Informe', 'أبلغ عن', 'रिपोर्ट', 'رپورٹ', '报告', '報告する', 'Relatório', 'отчет', 'rapport', '보고서', 'Bericht', 'rapporto', 'รายงาน', 'Jelentés', 'Verslag doen van', 'Report', 'Melaporkan', 'Rapor', 'Κανω ΑΝΑΦΟΡΑ', 'گزارش', 'Laporan', 'અહેવાલ', 'Raport', 'Звіт', 'ਰਿਪੋਰਟ ਕਰੋ', 'Raport', 'Iroyin', 'Rahoton'),
(99, 'balance', 'Balance', 'হিসাবনিকাশ', 'Equilibrar', 'توازن', 'संतुलन', 'بقیہ', '平衡', 'バランス', 'Equilibrar', 'Баланс', 'Équilibre', '밸런스', 'Balance', 'Equilibrio', 'สมดุล', 'Egyensúly', 'Balans', 'Libra', 'Keseimbangan', 'Denge', 'Ισορροπία', 'تعادل', 'Seimbang', 'બેલેન્સ', 'Saldo', 'Баланс', 'ਬਕਾਇਆ', 'Echilibru', 'Iwontunws.funfun', 'Balance'),
(100, 'profile', 'Profile', 'প্রোফাইল', 'Perfil', 'الملف الشخصي', 'प्रोफाइल', 'پروفائل', '轮廓', 'プロフィール', 'Perfil', 'Профиль', 'Profil', '윤곽', 'Profil', 'Profilo', 'ข้อมูลส่วนตัว', 'Profil', 'Profiel', 'Profile', 'Profil', 'Profil', 'Προφίλ', 'مشخصات', 'Profil', 'પ્રોફાઇલ', 'Profil', 'Профіль', 'ਪ੍ਰੋਫਾਈਲ', 'Profil', 'Profaili', 'Profile'),
(101, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'Mi perfil', 'ملفي', 'मेरी प्रोफाइल', 'میری پروفائل', '我的简历', '私のプロフィール', 'Meu perfil', 'Мой профайл', 'Mon profil', '내 프로필', 'Mein Profil', 'Il mio profilo', 'ประวัติของฉัน', 'A profilom', 'Mijn profiel', 'mea Profile', 'Profil saya', 'Benim profilim', 'Το ΠΡΟΦΙΛ μου', 'پروفایل من', 'Profil saya', 'મારી પ્રોફાઈલ', 'Mój profil', 'Мій профіль', 'ਮੇਰੀ ਪ੍ਰੋਫਾਈਲ', 'Profilul meu', 'Profaili mi', 'My Profile'),
(102, 'logout', 'Log Out', 'প্রস্থান', 'Cerrar sesión', 'الخروج', 'लोग आउट', 'لاگ آوٹ', '登出', 'ログアウト', 'Sair', 'Выйти', 'Connectez - Out', '로그 아웃', 'Ausloggen', 'Disconnettersi', 'ออกจากระบบ', 'Kijelentkezés', 'Uitloggen', 'Ex Log', 'Keluar', 'Çıkış Yap', 'Αποσυνδέση', 'خروج', 'Log keluar', 'લૉગ આઉટ', 'Wyloguj', 'Вийти', 'ਲਾੱਗ ਆਊਟ, ਬਾਹਰ ਆਉਣਾ', 'Deconectați-vă', 'Jade kuro', 'An fita'),
(103, 'login', 'Log In', 'লগইন', 'Iniciar sesión', 'تسجيل الدخول', 'लॉग इन करें', 'میں لاگ ان کریں', '登录', 'ログイン', 'Entrar', 'Авторизоваться', 'Sidentifier', '로그인', 'Einloggen', 'Accesso', 'เข้าสู่ระบบ', 'Belépés', 'Log in', 'Log In', 'Masuk', 'Oturum aç', 'Σύνδεση', 'ورود', 'Log masuk', 'લૉગ ઇન કરો', 'Zaloguj Się', 'Увійти', 'ਲਾਗਿਨ', 'Logare', 'Wo ile', 'Shiga'),
(105, 'school', 'School', 'বিদ্যালয়', 'Colegio', 'مدرسة', 'स्कूल', 'اسکول', '学校', '学校', 'Escola', 'Школа', 'École', '학교', 'Schule', 'Scuola', 'โรงเรียน', 'Iskola', 'School', 'School', 'Sekolah', 'Okul', 'Σχολείο', 'مدرسه', 'Sekolah', 'શાળા', 'Szkoła', 'Школа', 'ਸਕੂਲ', 'Şcoală', 'Ile-iwe', 'Makarantar'),
(106, 'name', 'Name', 'নাম', 'Nombre', 'اسم', 'नाम', 'نام', '名称', '名', 'Nome', 'имя', 'prénom', '이름', 'Name', 'Nome', 'ชื่อ', 'Név', 'Naam', 'nomine', 'Nama', 'isim', 'Ονομα', 'نام', 'Nama', 'નામ', 'Nazwa', 'Імя', 'ਨਾਮ', 'Nume', 'Oruko', 'Sunan'),
(107, 'address', 'Address', 'ঠিকানা', 'Dirección', 'عنوان', 'पता', 'ایڈریس', '地址', '住所', 'Endereço', 'Адрес', 'Adresse', '주소', 'Adresse', 'Indirizzo', 'ที่อยู่', 'Cím', 'Adres', 'oratio', 'Alamat', 'Adres', 'Διεύθυνση', 'نشانی', 'Alamat', 'સરનામું', 'Adres', 'Адреса', 'ਪਤਾ', 'Adresa', 'Adirẹsi', 'Adireshin'),
(108, 'phone', 'Phone', 'ফোন', 'Teléfono', 'هاتف', 'फ़ोन', 'فون', '电话', '電話', 'telefone', 'Телефон', 'Phone', '전화', 'Telefon', 'Telefono', 'โทรศัพท์', 'Telefon', 'Telefoon', 'Phone', 'Telepon', 'Telefon', 'Τηλέφωνο', 'تلفن', 'Telefon', 'ફોન', 'Telefon', 'Телефон', 'ਫੋਨ', 'Telefon', 'Foonu', 'Waya'),
(109, 'footer', 'Footer', 'ওয়েবসাইট ফুটার', 'Pie de página', 'تذييل', 'फ़ुटबाल', 'فوٹر', '页脚', 'フッター', 'Rodapé', 'нижний колонтитул', 'Bas de page', '보행인', 'Fußzeile', 'footer', 'ฟุตบอล', 'Lábjegyzet', 'footer', 'footer', 'Footer', 'Alt Bilgi', 'Υποσέλιδο', 'پاورقی', 'Footer', 'ફૂટર', 'Stopka', 'Нижній колонтитул', 'ਪਦਲੇਰ', 'Subsol', 'Ẹlẹsẹ', 'Hanya'),
(110, 'title', 'Title', 'শিরোনাম', 'Título', 'عنوان', 'शीर्षक', 'عنوان', '标题', 'タイトル', 'Título', 'заглавие', 'Titre', '표제', 'Titel', 'Titolo', 'หัวข้อ', 'Cím', 'Titel', 'titulus', 'Judul', 'Başlık', 'Τίτλος', 'عنوان', 'Tajuk', 'શીર્ષક', 'Tytuł', 'Назва', 'ਟਾਈਟਲ', 'Titlu', 'Akọle', 'Title'),
(111, 'total', 'Total', 'মোট', 'Total', 'مجموع', 'कुल', 'کل', '总', '合計', 'Total', 'Всего', 'Total', '합계', 'Gesamt', 'Totale', 'ทั้งหมด', 'Teljes', 'Totaal', 'summa', 'Total', 'Genel Toplam', 'Σύνολο', 'جمع', 'Jumlah', 'કુલ', 'Całkowity', 'Всього', 'ਕੁੱਲ', 'Total', 'Lapapọ', 'Jimlar'),
(112, 'calendar', 'Calendar', 'পঞ্জিকা', 'Calendario', 'التقويم', 'कैलेंडर', 'کیلنڈر', '日历', 'カレンダー', 'Calendário', 'Календарь', 'Calendrier', '달력', 'Kalender', 'Calendario', 'ปฏิทิน', 'Naptár', 'Kalender', 'Calendar', 'Kalender', 'Takvim', 'Ημερολόγιο', 'تقویم', 'Kalendar', 'કૅલેન્ડર', 'Kalendarz', 'Календар', 'ਕੈਲੰਡਰ', 'Calendar', 'Kalẹnda', 'Kalanda');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(114, 'currency', 'Currency', 'মুদ্রা', 'Moneda', 'دقة', 'मुद्रा', 'کرنسی', '货币', '通貨', 'Moeda', 'валюта', 'Devise', '통화', 'Währung', 'Moneta', 'เงินตรา', 'Valuta', 'Valuta', 'monetæ', 'Mata uang', 'Para birimi', 'Νόμισμα', 'واحد پول', 'Mata wang', 'ચલણ', 'Waluta', 'Валюта', 'ਮੁਦਰਾ', 'Valută', 'Owo', 'Kudin'),
(115, 'currency_symbol', 'Currency Symbol', 'মুদ্রা চিহ্ন', 'Símbolo de moneda', 'رمز العملة', 'मुद्रा चिन्ह', 'کرنسی علامت', '货币符号', '通貨記号', 'Símbolo monetário', 'Символ валюты', 'Symbole de la monnaie', '통화 기호', 'Währungszeichen', 'Simbolo di valuta', 'สัญลักษณ์สกุลเงิน', 'Pénznem szimbólum', 'Symbool van munteenheid', 'monetæ Symbol', 'Simbol mata uang', 'Para Birimi Sembolü', 'Σύμβολο νομίσματος', 'نماد ارز', 'Simbol mata wang', 'કરન્સી પ્રતીક', 'Symbol waluty', 'Символ валюти', 'ਕਰੰਸੀ ਨਿਸ਼ਾਨ', 'Simbolul valutei', 'Aami Owo', 'Alamar Kudin'),
(116, 'note', 'Note', 'মন্তব্য', 'Nota', 'ملحوظة', 'ध्यान दें', 'نوٹ', '注意', '注意', 'Nota', 'Заметка', 'Remarque', '노트', 'Hinweis', 'Nota', 'บันทึก', 'jegyzet', 'Notitie', 'nota', 'Catatan', 'Not', 'Σημείωση', 'توجه داشته باشید', 'Nota', 'નૉૅધ', 'Uwaga', 'Примітка', 'ਨੋਟ', 'Notă', 'Akiyesi', 'Lura'),
(117, 'is_running', 'Is Running?', 'চলছে?', '¿Esta corriendo?', 'يجري؟', 'दौड रहा है?', 'بھاگ رہا ہے؟', '在跑？', 'が走っています？', 'Está correndo?', 'Бежит?', 'Est en cours dexécution?', '달리기?', 'Läuft?', 'È in esecuzione?', 'กำลังวิ่ง?', 'Fut?', 'Is aan het rennen?', 'Is Cursor?', 'Sedang berlari?', 'Çalışıyor?', 'Τρέχει?', 'در حال اجراست؟', 'Adalah berlari?', 'ચાલી રહ્યું છે?', 'Biegnie?', 'Біжить?', 'ਚੱਲ ਰਿਹਾ ਹੈ?', 'Rulează?', 'Nṣiṣẹ?', 'Yana gudana?'),
(118, 'running_year', 'Running Year', 'চলমান বছর', 'Año de ejecución', 'تشغيل السنة', 'वर्ष चल रहा है', 'چل رہا ہے سال', '运行年', 'ランニング・イヤー', 'Ano corrente', 'Бегущий год', 'Année de fonctionnement', '러닝 연도', 'Laufendes Jahr', 'Anno in corso', 'ปีที่ดำเนินการ', 'Futóév', 'Lopend jaar', 'anno currit', 'Tahun berjalan', 'Koşu Yılı', 'Τρέχον έτος', 'در حال اجرا سال', 'Tahun Berjalan', 'વર્ષ ચાલી રહ્યું છે', 'Rok bieżący', 'Біг Рік', 'ਰਨਿੰਗ ਯੀਅਰ', 'Anul de funcționare', 'Nṣiṣẹ Ọdun', 'Gudun Shekara'),
(119, 'is_demo', 'Is Demo?', 'ডেমো কি?', 'Es Demo?', 'هل تجريبي؟', 'डेमो है?', 'ڈیمو ہے؟', '是演示？', 'デモですか？', 'Demo?', 'Есть демо?', 'Est-ce que Demo?', '데모입니까?', 'Ist Demo?', 'È Demo?', 'Demo?', 'A demo?', 'Is demo?', 'Demo est?', 'Apakah demo', 'Demo var mı?', 'Είναι επίδειξη;', 'آیا نسخه ی نمایشی است؟', 'Adakah Demo?', 'ડેમો છે?', 'Czy to demo?', 'Демо?', 'ਡੈਮੋ ਹੈ?', 'Este Demo?', 'Ṣe Demo?', 'Shin Demo?'),
(120, 'is_active', 'Is Active?', 'একটিভ?', '¿Está activo?', 'هل نشط؟', 'सक्रिय है?', 'فعال ہے؟', '活跃？', 'アクティブです？', 'Está ativo?', 'Активен?', 'Cest actif?', '활성?', 'Ist aktiv?', 'È attivo?', 'มีการใช้งานอยู่หรือไม่?', 'Aktív?', 'Is actief?', 'Active est?', 'Aktif?', 'Aktif?', 'Είναι ενεργό?', 'فعال است؟', 'Adalah aktif?', 'સક્રિય છે?', 'Jest aktywny?', 'Активний?', 'ਸਰਗਰਮ ਹੈ?', 'Este activ?', 'Ṣe Iroyin?', 'Yana aiki?'),
(121, 'active', 'Active', 'সক্রিয়', 'Activo', 'نشيط', 'सक्रिय', 'فعال', '活性', 'アクティブ', 'Ativo', 'активный', 'actif', '유효한', 'Aktiv', 'Attivo', 'คล่องแคล่ว', 'Aktív', 'Actief', 'Active', 'Aktif', 'Aktif', 'Ενεργός', 'فعال', 'Aktif', 'સક્રિય', 'Aktywny', 'Активний', 'ਕਿਰਿਆਸ਼ੀਲ', 'Activ', 'Iroyin', 'Aiki'),
(122, 'api_key', 'Api Key', 'এপিআই কী', 'Clave API', 'مفتاح API', 'एपीआई कुंजी', 'اےپی کی کلی', 'Api Key', 'Api Key', 'Chave API', 'Api Key', 'Clé de feu', 'API 키', 'API-Schlüssel', 'Chiave Api', 'คีย์ Api', 'Api Key', 'API sleutel', 'API key', 'Kunci API', 'Api Key', 'Api Key', 'کلید ای پی ای', 'Api Utama', 'API કી', 'Klucz API', 'Api Key', 'ਅਪੀ ਕੁੰਜੀ', 'Api Key', 'Bọtini Api', 'Api Key'),
(123, 'key_salt', 'Key Salt', 'কী সল্ট', 'Key Salt', 'مفتاح الملح', 'कुंजी नमक', 'کلیدی نمک', '关键盐', 'キーソルト', 'Sal chave', 'Основная соль', 'Sel principal', '키 솔트', 'Schlüsselsalz', 'Key Salt', 'เกลือแกง', 'Fő só', 'Key Salt', 'Key salis', 'Garam utama', 'Anahtar Tuz', 'Βασικό αλάτι', 'نمک کلیدی', 'Garam utama', 'કી સોલ્ટ', 'Kluczowa sól', 'Ключові солі', 'ਕੀ ਸਲੌਲ', 'Sare cheie', 'iyọ bọtini', 'Key Salt'),
(124, 'username', 'Username', 'ব্যবহারকারীর নাম', 'Nombre de usuario', 'اسم المستخدم', 'उपयोगकर्ता नाम', 'صارف کا نام', '用户名', 'ユーザー名', 'Nome de usuário', 'имя пользователя', 'Nom dutilisateur', '사용자 이름', 'Nutzername', 'Nome utente', 'ชื่อผู้ใช้', 'Felhasználónév', 'Gebruikersnaam', 'nomen usoris', 'Nama pengguna', 'Kullanıcı adı', 'Όνομα χρήστη', 'نام کاربری', 'Nama pengguna', 'વપરાશકર્તા નામ', 'Nazwa Użytkownika', 'Імя користувача', 'ਯੂਜ਼ਰਨਾਮ', 'Nume de utilizator', 'Orukọ olumulo', 'Sunan mai amfani'),
(125, 'account_sid', 'Account SID', 'একাউন্ট এসআইডি', 'SID de la cuenta', 'حساب سيد', 'अकाउंट एसआईडी', 'اکاؤنٹ SID', '帐户SID', 'アカウントSID', 'SID da conta', 'SID учетной записи', 'Compte SID', '계정 SID', 'Konto SID', 'SID dellaccount', 'บัญชี SID', 'Fiók SID', 'Account SID', 'ratio SID', 'Akun SID', 'Hesap SID', 'Λογαριασμός SID', 'SID حساب', 'SID Akaun', 'એકાઉન્ટ SID', 'Identyfikator konta SID', 'Ідентифікатор облікового запису', 'ਖਾਤਾ SID', 'Cont SID', 'SID iroyin', 'Asusun SID'),
(126, 'auth_token', 'Auth Token', 'অথ টোকেন', 'Token de autenticación', 'الرمز المميز للمصادقة', 'औथ टोकन', 'مصنف ٹوکن', '验证令牌', '認証トークン', 'Token Auth', 'Auth Token', 'Jeton dauthentification', '인증 토큰', 'Auth Token', 'Token di autenticazione', 'Auth Token', 'Hitel Token', 'Auth Token', 'auth Thochen', 'Token Auth', 'Auth Token', 'Auth Token', 'Auth Token', 'Token Auth', 'ઑથ ટોકન', 'token autoryzacji', 'Авт токен', 'Auth ਟੋਕਨ', 'Auth Token', 'auth aami', 'Auth Token'),
(127, 'auth_key', 'Auth Key', 'অথ কী', 'Clave de autenticación', 'مفتاح المصادقة', 'प्रमाणन कुंजी', 'مصنف کلیدی', '授权键', '認証キー', 'Chave de autenticação', 'Auth Key', 'Clé dauthentification', '인증 키', 'Authentifizierungsschlüssel', 'Chiave dautenticazione', 'คีย์การตรวจสอบ', 'Autentikációs kulcs', 'Inlogcode', 'Key auth', 'Kunci otomatis', 'Auth Key', 'Auth Key', 'کلید تایید', 'Auth Key', 'ઑથ કી', 'Klucz autoryzujący', 'Автх ключ', 'ਔਥ ਕੀ', 'Auth Key', 'Bọtini Auth', 'A Key Key'),
(128, 'auth_id', 'Auth ID', 'অথ আইডি', 'ID de autenticación', 'معرف المصادقة', 'ऑथ आईडी', 'مصنف ID', '身份验证ID', '認証ID', 'ID de Autenticação', 'Auth ID', 'Authentification', '인증 ID', 'Authentifizierungs-ID', 'Auth ID', 'รหัสผู้ใช้', 'Hitelazonosító', 'Auth ID', 'id auth', 'ID Auth', 'Kimliği kimliği', 'Auth ID', 'ID Auth', 'ID pengarang', 'ઑથ ID', 'Auth ID', 'Auth ID', 'Auth ID', 'Auth ID', 'Auth ID', 'ID ID'),
(129, 'from_number', 'From Number', 'ফ্রম নম্বর', 'Desde el número', 'من العدد', 'संख्या से', 'نمبر سے', '从数字', '番号から', 'Do número', 'От номера', 'À partir du numéro', '발신 번호', 'Von Nummer', 'Dal numero', 'จากจำนวน', 'A számtól', 'Van nummer', 'Ex Number', 'Dari nomor', 'Numaradan', 'Από τον αριθμό', 'از شماره', 'Daripada Nombor', 'સંખ્યા પ્રતિ', 'Z numeru', 'З числа', 'ਨੰਬਰ ਤੋਂ', 'Din numărul', 'Lati Nọmba', 'Daga Lambar'),
(130, 'sender_id', 'Sender ID', 'প্রেরকের আইডি', 'identificación del remitente', 'هوية المرسل', 'प्रेषक आईडी', 'بھیجنے والے کی شناخت', '发件人ID', '送信者ID', 'ID do remetente', 'Удостоверение личности отправителя', 'Identifiant dexpéditeur', '보낸 사람 ID', 'Absenderidentität', 'identità del mittente', 'ID ผู้ส่ง', 'Sender ID', 'zender ID', 'id mittens', 'ID pengirim', 'Gönderen Kimliği', 'ταυτότητα αποστολέα', 'شناسه فرستنده', 'ID penghantar', 'પ્રેષક ID', 'Identyfikator nadawcy', 'Ідентифікатор відправника', 'ਭੇਜਣ ਵਾਲਾ ID', 'ID-ul expeditorului', 'Olu ID', 'Mai aikawa ID'),
(131, 'activate', 'Activate', 'সক্রিয় করুন', 'Activar', 'تفعيل', 'सक्रिय', 'چالو کریں', '启用', 'アクティブ化する', 'Ativar', 'активировать', 'Activer', '활성화', 'aktivieren Sie', 'Attivare', 'กระตุ้น', 'Aktiválja', 'Activeren', 'strenuus', 'Mengaktifkan', 'etkinleştirmek', 'Θέτω εις ενέργειαν', 'فعالسازی', 'Aktifkan', 'સક્રિય કરો', 'Aktywuj', 'Активувати', 'ਸਰਗਰਮ ਕਰੋ', 'Activati', 'Muu ṣiṣẹ', 'Kunna'),
(132, 'session_year', 'Session Year', 'সেশন বছর', 'Año de la sesión', 'سنة الدورة', 'सत्र वर्ष', 'اجلاس کا سال', '会议年', 'セッション年', 'Ano da sessão', 'Сезонность', 'Année de la session', '세션 연도', 'Sitzungsjahr', 'Anno di sessione', 'ปีการศึกษา', 'Session Year', 'Sessiejaar', 'Anno Sessio', 'Sesi Tahun', 'Oturum Yılı', 'Έτος συνεδρίας', 'سال نشست', 'Tahun Sesi', 'સત્ર વર્ષ', 'Rok sesji', 'Сесія року', 'ਸੈਸ਼ਨ ਸਾਲ', 'Anul Sesiunii', 'Akoko Odun', 'Zama Na Zama'),
(133, 'is_default', 'Is Default?', 'ডিফল্ট কি?', 'Es predeterminado?', 'هل الافتراضي؟', 'डिफ़ॉल्ट है?', 'پہلے سے طے شدہ ہے؟', '是默认的？', 'デフォルトですか？', 'O padrão é?', 'По умолчанию?', 'Est par défaut?', '디폴트인가?', 'Ist Standard?', 'È predefinito?', 'เป็นค่าเริ่มต้นหรือไม่?', 'Alapértelmezés?', 'Is standaard?', 'Default est?', 'Apakah Default?', 'Varsayılan mı?', 'Είναι προεπιλογή;', 'پیش فرض', 'Adakah Default?', 'ડિફૉલ્ટ છે?', 'Czy domyślne?', 'За замовчуванням?', 'ਕੀ ਡਿਫਾਲਟ ਹੈ?', 'Este implicit?', 'Ni aiyipada?', 'Shin Default?'),
(134, 'download', 'Download', 'ডাউনলোড', 'Descargar', 'تحميل', 'डाउनलोड', 'ڈاؤن لوڈ کریں', '下载', 'ダウンロード', 'Download', 'Скачать', 'Télécharger', '다운로드', 'Herunterladen', 'Scaricare', 'ดาวน์โหลด', 'Letöltés', 'Download', 'download', 'Download', 'İndir', 'Κατεβάστε', 'دانلود', 'Muat turun', 'ડાઉનલોડ કરો', 'Pobieranie', 'Завантажити', 'ਡਾਊਨਲੋਡ ਕਰੋ', 'Descarca', 'Gba lati ayelujara', 'Saukewa'),
(135, 'join_date', 'Joining Date', 'যোগদান তারিখ', 'Dia de ingreso', 'تاريخ الانضمام', 'कार्यग्रहण तिथि', 'شامل ہونے کی تاریخ', '入职日期', '参加日', 'Data de ingresso', 'Дата вступления', 'Date dinscription', '가입 날짜', 'Beitrittsdatum', 'Data di adesione', 'วันที่เข้าร่วม', 'Csatlakozási dátum', 'Lid worden van datum', 'Adhaeret Date', 'Tanggal Bergabung', 'Birleştirme Tarihi', 'Ημερομηνία σύνδεσης', 'تاریخ عضویت', 'Menyertai Tarikh', 'તારીખ જોડાયા', 'Data przyłączenia', 'Дата приєднання', 'ਦਾਖਲ ਹੋਣ ਦੀ ਤਾਰੀਖ', 'Data îmbinării', 'Ọjọ Ajọpọ', 'Ranar Jiki'),
(136, 'gender', 'Gender', 'লিঙ্গ', 'Género', 'جنس', 'लिंग', 'صنف', '性别', '性別', 'Gênero', 'Пол', 'Le genre', '성별', 'Geschlecht', 'Genere', 'เพศ', 'nem', 'Geslacht', 'genus', 'Jenis kelamin', 'Cinsiyet', 'Γένος', 'جنسيت', 'Jantina', 'જાતિ', 'Płeć', 'Стать', 'ਲਿੰਗ', 'Gen', 'Iwa', 'Gender'),
(137, 'blood_group', 'Blood Group', 'রক্তের গ্রুপ', 'Grupo sanguíneo', 'فصيلة الدم', 'रक्त समूह', 'خون گروپ', '血型', '血液型', 'Grupo sanguíneo', 'Группа крови', 'Groupe sanguin', '혈액형', 'Blutgruppe', 'Gruppo sanguigno', 'กรุ๊ปเลือด', 'Vércsoport', 'Bloedgroep', 'Sanguine coetus', 'Golongan darah', 'Kan grubu', 'Ομάδα αίματος', 'گروه خونی', 'Kumpulan darah', 'બ્લડ ગ્રુપ', 'Grupa krwi', 'Група крові', 'ਬਲੱਡ ਗਰੁੱਪ', 'Grupa sanguină', 'Ẹgbẹ Ẹjẹ', 'Kungiyar Blood'),
(138, 'group', 'Group', 'গ্রুপ', 'Grupo', 'مجموعة', 'समूह', 'گروپ', '组', 'グループ', 'Grupo', 'группа', 'Groupe', '그룹', 'Gruppe', 'Gruppo', 'กลุ่ม', 'Csoport', 'Groep', 'Group', 'Kelompok', 'grup', 'Ομάδα', 'گروه', 'Kumpulan', 'ગ્રુપ', 'Grupa', 'Група', 'ਗਰੁੱਪ', 'grup', 'Ẹgbẹ', 'Rukuni'),
(139, 'religion', 'Religion', 'ধর্ম', 'Religión', 'دين', 'धर्म', 'مذہب', '宗教', '宗教', 'Religião', 'религия', 'Religion', '종교', 'Religion', 'Religione', 'ศาสนา', 'Vallás', 'Religie', 'religio', 'Agama', 'Din', 'Θρησκεία', 'دین', 'Agama', 'ધર્મ', 'Religia', 'Релігія', 'ਧਰਮ', 'Religie', 'Esin', 'Addini'),
(140, 'birth_date', 'Birth Date', 'জন্ম তারিখ', 'Fecha de nacimiento', 'تاريخ الميلاد', 'जन्म दिन', 'تاریخ پیدائش', '生日', '誕生日', 'Data de nascimento', 'Дата рождения', 'Date de naissance', '생일', 'Geburtsdatum', 'Data di nascita', 'วันที่เกิด', 'Születési dátum', 'Geboortedatum', 'Dies natalis, diei natalis, m', 'Tanggal lahir', 'Doğum günü', 'Ημερομηνία γέννησης', 'تاریخ تولد', 'Tarikh lahir', 'જન્મતારીખ', 'Data urodzenia', 'Дата народження', 'ਜਨਮ ਮਿਤੀ', 'Data nasterii', 'Ojo ibi', 'Ranar haifuwa'),
(141, 'resume', 'Resume', 'জীবনবৃত্তান্ত', 'Currículum', 'استئنف', 'बायोडाटा', 'دوبارہ شروع کریں', '恢复', '履歴書', 'Currículo', 'Продолжить', 'CV', '이력서', 'Fortsetzen', 'Curriculum vitae', 'ประวัติย่อ', 'Önéletrajz', 'Hervat', 'Proin', 'Lanjut', 'Devam et', 'ΒΙΟΓΡΑΦΙΚΟ', 'خلاصه', 'Teruskan', 'ફરી શરુ કરવું', 'Wznawianie', 'Резюме', 'ਮੁੜ ਸ਼ੁਰੂ ਕਰੋ', 'Relua', 'Tun pada', 'Tsayawa'),
(142, 'other_info', 'Other Info', 'অন্যান্য তথ্য', 'Otra información', 'معلومات اخرى', 'अन्य सूचना', 'دیگر معلومات', '其他信息', '他の情報', 'Outras informações', 'Дополнительная информация', 'Autre info', '기타 정보', 'Andere Information', 'Altre informazioni', 'ข้อมูลอื่น ๆ', 'Más információ', 'Andere informatie', 'alii Info', 'Info lain', 'Diğer Bilgiler', 'Άλλες πληροφορίες', 'سایر اطلاعات', 'Maklumat Lain', 'અન્ય માહિતી', 'Inne informacje', 'Інша інформація', 'ਹੋਰ ਜਾਣਕਾਰੀ', 'Alte informații', 'Alaye miiran', 'Sauran Bayanan'),
(143, 'author', 'Author', 'লেখক', 'Autor', 'مؤلف', 'लेखक', 'مصنف', '作者', '著者', 'Autor', 'автор', 'Auteur', '저자', 'Autor', 'Autore', 'ผู้เขียน', 'Szerző', 'Auteur', 'auctor', 'Penulis', 'Yazar', 'Συγγραφέας', 'نویسنده', 'Pengarang', 'લેખક', 'Autor', 'Автор', 'ਲੇਖਕ', 'Autor', 'Onkọwe', 'Mawallafin'),
(144, 'day', 'Day', 'দিন', 'Día', 'يوم', 'दिन', 'دن', '天', '日', 'Dia', 'День', 'Dayjournée', '일', 'Tag', 'Giorno', 'วัน', 'Nap', 'Dag', 'Dies', 'Hari', 'Gün', 'Ημέρα', 'روز', 'Hari', 'દિવસ', 'Dzień', 'День', 'ਦਿਨ', 'Zi', 'Ọjọ', 'Ranar'),
(145, 'start_time', 'Start Time', 'সময় শুরু', 'Hora de inicio', 'وقت البدء', 'समय शुरू', 'وقت آغاز', '开始时间', '始まる時間', 'Hora de início', 'Время начала', 'Heure de début', '시작 시간', 'Startzeit', 'Ora di inizio', 'เวลาเริ่มต้น', 'Kezdési idő', 'Starttijd', 'Satus tempus', 'Waktu mulai', 'Başlama zamanı', 'Ωρα έναρξης', 'زمان شروع', 'Masa mula', 'પ્રારંભ સમય', 'Czas rozpoczęcia', 'Час початку', 'ਸ਼ੁਰੂਆਤੀ ਸਮਾਂ', 'Timpul de începere', 'Aago Ibẹrẹ', 'Fara lokaci'),
(146, 'end_time', 'End Time', 'শেষ সময়', 'Hora de finalización', 'وقت النهاية', 'अंतिम समय', 'آخر وقت', '时间结束', '終了時間', 'Fim do tempo', 'Время окончания', 'Heure de fin', '종료 시간', 'Endzeit', 'Fine del tempo', 'เวลาสิ้นสุด', 'Idő vége', 'Eindtijd', 'finis Tempus', 'Akhir waktu', 'Bitiş zamanı', 'Τέλος χρόνου', 'زمان پایان', 'Masa tamat', 'સમાપ્તિ સમય', 'Koniec czasu', 'Кінець часу', 'ਅੰਤ ਸਮਾਂ', 'Ora de terminare', 'Aago ipari', 'Ƙarshen lokaci'),
(147, 'start_date', 'Start Date', 'শুরুর তারিখ', 'Fecha de inicio', 'تاريخ البدء', 'आरंभ करने की तिथि', 'شروع کرنے کی تاریخ', '开始日期', '開始日', 'Data de início', 'Дата начала', 'Date de début', '시작 날짜', 'Anfangsdatum', 'Data dinizio', 'วันที่เริ่มต้น', 'Kezdő dátum', 'Begin datum', 'Date incipere', 'Mulai tanggal', 'Başlangıç tarihi', 'Ημερομηνία έναρξης', 'تاریخ شروع', 'Tarikh mula', 'પ્રારંભ તારીખ', 'Data rozpoczęcia', 'Дата початку', 'ਤਾਰੀਖ ਸ਼ੁਰੂ', 'Data de început', 'Ọjọ Bẹrẹ', 'Fara Farawa'),
(148, 'end_date', 'End Date', 'শেষ তারিখ', 'Fecha final', 'تاريخ الانتهاء', 'अंतिम तिथि', 'آخری تاریخ', '结束日期', '終了日', 'Data final', 'Дата окончания', 'Date de fin', '종료일', 'Endtermin', 'Data di fine', 'วันที่สิ้นสุด', 'Befejezés dátuma', 'Einddatum', 'finis Date', 'Tanggal akhir', 'Bitiş tarihi', 'Ημερομηνία λήξης', 'تاریخ پایان', 'Tarikh tamat', 'અંતિમ તારીખ', 'Data końcowa', 'Дата закінчення', 'ਅੰਤ ਦੀ ਮਿਤੀ', 'Data de încheiere', 'Ọjọ ipari', 'Ƙarshe Ranar'),
(149, 'profession', 'Profession', 'পেশা', 'Profesión', 'مهنة', 'व्यवसाय', 'پیشہ', '职业', '職業', 'Profissão', 'профессия', 'Métier', '직업', 'Beruf', 'Professione', 'อาชีพ', 'Szakma', 'Beroep', 'professionis', 'Profesi', 'Meslek', 'Επάγγελμα', 'حرفه', 'Profesion', 'વ્યવસાય', 'Zawód', 'Професія', 'ਪੇਸ਼ਾ', 'Profesie', 'Oṣiṣẹ', 'Zama'),
(150, 'roll_no', 'Roll No', 'ক্রমিক নাম্বার', 'Rollo No', 'رول نو', 'अनुक्रमांक', 'رول نمبر نہیں', '卷号', 'ロールNo', 'Roll No', 'Нет', 'Rouler Non', '롤 아니요', 'Rolle Nr', 'Rotolo n', 'ฉบับที่ไม่มี', 'Roll No', 'Roll No', 'Nulla volvunt', 'Roll No', 'Rulo Hayır', 'ρολό αριθ', 'رول نه', 'Roll No', 'રોલ નં', 'Rzuć nr', 'ролл немає', 'ਰੋਲ ਨੰਬਰ ਨਹੀਂ', 'Rola numărul', 'Roll Bẹẹkọ', 'Roll Babu'),
(151, 'registration_no', 'Registration No', 'নিবন্ধন নম্বর', 'Número de registro', 'رقم التسجيل', 'पंजीकरण क्रमांक', 'رجسٹریشن نمبر', '注册号', '登録番号', 'número de registro', 'номер регистрации', 'N ° denregistrement', '등록 번호', 'Registrierungsnr', 'Registrazione N', 'หมายเลขทะเบียน', 'regisztrációs szám', 'Registratienummer', 'No registration', 'Pendaftaran No', 'kayıt numarası', 'αριθμός καταχώρησης', 'شماره ثبت نام', 'Nombor pendaftaran', 'નોંધણી નં', 'Numer rejestracyjny', 'Номер реєстрації', 'ਰਜਿਸਟਰੇਸ਼ਨ ਨੰਬਰ', 'nr. de inregistrare', 'Iforukọ silẹ Ko si', 'Lambar rajista'),
(152, 'present_all', 'Present All', 'উপস্থিত সকল', 'Presente todo', 'الحالي الكل', 'सभी को प्रस्तुत करें', 'سب پیش', '现在所有', 'すべてを表示', 'Presente tudo', 'Представить все', 'Présenter tout', '모두 선물하기', 'Alle präsentieren', 'Presente tutto', 'นำเสนอทั้งหมด', 'Jelenleg mindet', 'Presenteer alles', 'nunc omnes', 'Hadir Semua', 'Hepsini Sunun', 'Παρουσιάστε όλα', 'در حال حاضر همه', 'Hadir Semua', 'બધા હાજર', 'Przedstaw wszystko', 'Подаруй все', 'ਸਭ ਪੇਸ਼ ਕਰੋ', 'Prezentați-vă pe toți', 'Paa Gbogbo', 'Duk Dukkan'),
(153, 'late_all', 'Late All', 'বিলম্বিত সকল', 'Late All', 'أواخر الكل', 'स्वर्गीय सभी', 'دیر سے', '所有的晚', '後期', 'Late All', 'Поздно все', 'Tard tout', '늦게 모두', 'Spät alle', 'Tutto in ritardo', 'ปลายทั้งหมด', 'Késő minden', 'Laat alles', 'late omnes', 'Terlambat semua', 'Hep Geç', 'Αργά Όλα', 'اواخر همه', 'Akhir semua', 'લેટ ઓલ', 'Późno wszystkim', 'Пізно все', 'ਦੇਰ ਸਾਰੇ', 'Totul târziu', 'Paa Gbogbo', 'Late Duk'),
(154, 'absent_all', 'Absent All', 'অনুপস্থিত সকল', 'Ausente todo', 'غائب الجميع', 'सभी अनुपस्थित', 'سب کو مطمئن', '缺席全部', 'すべてが不在', 'Absent All', 'Отсутствует все', 'Absent Tous', '모두 없슴', 'Alles fehlt', 'Assente tutti', 'ขาดทั้งหมด', 'Mindenki hiányzik', 'Afwezig allemaal', 'aberant aegrae', 'Tidak ada', 'Herkesten Yoksun', 'Απουσία όλων', 'همه وجود ندارند', 'Absent All', 'બધા ગેરહાજર', 'Nieobecny', 'Немає всіх', 'ਸਾਰੀ ਗੈਰਹਾਜ਼ਰੀ', 'Absent Toate', 'Ti ko ni Gbogbo', 'Bazuwa Duk'),
(155, 'deadline', 'Deadline', 'শেষ তারিখ', 'Fecha tope', 'الموعد النهائي', 'समयसीमा', 'ڈیڈ لائن', '截止日期', '締め切り', 'Data limite', 'Крайний срок', 'Date limite', '마감 시간', 'Frist', 'Scadenza', 'วันกำหนดส่ง', 'Határidő', 'Deadline', 'deadline', 'Batas waktu', 'Son tarih', 'Προθεσμία', 'ضرب الاجل', 'Tarikh akhir', 'અન્તિમ રેખા', 'Ostateczny termin', 'Термін дії', 'ਡੈੱਡਲਾਈਨ', 'Termen limita', 'Ọjọ ipari', 'Kwanan lokaci'),
(156, 'grade_point', 'Grade Point', 'গ্রেড পয়েন্ট', 'Punto de Grado', 'تراكمي', 'मूल्यांकन', 'گریڈ پوائنٹ', '成绩点', 'グレードポイント', 'Ponto de classificação', 'Точка оценки', 'Grade Point', '학점', 'Notenpunkt', 'Grado', 'Grade Point', 'Grade Point', 'Grade punt', 'gradus punctum', 'Indeks Prestasi', 'Grade Point', 'Σημείο βαθμού', 'نقطه درجه', 'Gred Point', 'ગ્રેડ પોઇન્ટ', 'Punkt Grade', 'Градуйова точка', 'ਗਰੇਡ ਪੁਆਇੰਟ', 'Punct de punctaj', 'Iwe Ipele', 'Alamar Jagora'),
(157, 'mark_from', 'Mark From', 'মার্ক থেকে', 'Marcar de', 'علامة من', 'मार्क से', 'سے نشان زد کریں', '马克从', 'マークする', 'Mark From', 'Отметить от', 'Mark From', '마크부터', 'Mark von', 'Mark From', 'ทำเครื่องหมายจาก', 'Mark From', 'Markeer van', 'Mark ex', 'Mark dari', 'İşaretle', 'Σημειώστε από', 'مارک از', 'Tanda dari', 'માર્ક ફ્રોમ', 'Mark From', 'Позначка з', 'ਮਾਰਕ ਤੋ', 'Marchează din', 'Samisi Lati', 'Alama Daga'),
(158, 'mark_to', 'Mark To', 'মার্ক পর্যন্ত', 'Marcar a', 'مارك تو', 'मार्क टू', 'نشان زد کریں', '标记为', 'マークする', 'Mark To', 'Отметить', 'Mark To', '표시 대상', 'Zu markieren', 'Mark To', 'ทำเครื่องหมายว่าต้องการ', 'Jelölje meg', 'Mark To', 'Mark Ad', 'Mark To', 'Mark To', 'Mark To', 'علامت گذاری به عنوان', 'Mark To', 'માર્ક ટુ', 'Mark To', 'Позначити до', 'ਮਾਰਕ ਕਰਨ ਲਈ', 'Marchează la', 'Samisi Lati', 'Alama Don'),
(159, 'room_no', 'Room No', 'কক্ষ নম্বর', 'Habitación no', 'غرفة رقم', 'कमरा क्रमांक', 'کمرہ نمبر', '房间号', '部屋番号', 'Quarto Não', 'Комната нет', 'Chambre numéro', '객실 번호', 'Raum Nummer', 'Stanza No', 'เบอร์ห้อง', 'Szobaszám', 'Kamer nummer', 'nullus locus', 'Kamar no', 'Oda numarası', 'Αριθμός δωματίου', 'شماره اتاق', 'Nombor bilik', 'રૂમ નં', 'Pokój numer', 'Кімната №', 'ਕਮਰਾ ਨੰਬਰ', 'Cameră nr', 'Yara Bẹẹkọ', 'Room Babu'),
(160, 'attend_all', 'Attend All', 'উপস্থিত সকল', 'Asistir a todos', 'حضور الجميع', 'सभी में शामिल हों', 'Attend All', '全部参加', 'すべてに出席する', 'Participe de todos', 'Все участники', 'Assister à tous', '모두 참석', 'An allen teilnehmen', 'Partecipare a tutti', 'เข้าร่วมทั้งหมด', 'Vegyen részt mindenben', 'Woon iedereen bij', 'adtende omnes', 'Menghadiri Semua', 'Herkese Katıl', 'Παρακολουθήστε όλους', 'حضور در همه', 'Hadiri Semua', 'બધા હાજરી', 'Weź udział w wszystkim', 'Відвідати все', 'ਸਾਰੇ ਹਾਜ਼ਰ ਹੋਵੋ', 'Participați la toate', 'Lọ gbogbo', 'Ku halarci Duk'),
(161, 'remark', 'Remark', 'মন্তব্য', 'Observación', 'تعليق', 'टिप्पणी', 'تبصرہ', '备注', 'リマーク', 'Observação', 'замечание', 'Remarque', '말', 'Anmerkung', 'osservazione', 'ข้อสังเกต', 'Megjegyzés', 'Opmerking', 'Attende', 'Ucapan', 'düşünce', 'Παρατήρηση', 'یادداشت', 'Catatan', 'રીમાર્ક', 'Uwaga', 'Зауваження', 'ਟਿੱਪਣੀ', 'Remarcă', 'Atokasi', 'Alamar'),
(162, 'running_session', 'Running Session', 'চলমান সেশন', 'Sesión en ejecución', 'تشغيل الدورة', 'चल रहा सत्र', 'چل رہا ہے اجلاس', '运行会话', 'ランニングセッション', 'Sessão de corrida', 'Запуск сеанса', 'Session en cours', '러닝 세션', 'Sitzung wird ausgeführt', 'Esecuzione della sessione', 'การเรียกใช้เซสชัน', 'Futtatás', 'Sessie uitvoeren', 'currens Sessio', 'Menjalankan sesi', 'Oturum Devam Ediyor', 'Εκτέλεση συνόδου', 'در حال اجرا', 'Sesi Berjalan', 'સત્ર ચાલી રહ્યું છે', 'Prowadzenie sesji', 'Запуск сесії', 'ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ', 'Sesiunea de desfășurare', 'Ipade Nṣiṣẹ', 'Zangon Zama'),
(163, 'promote_to_session', 'Promote to Session', 'উন্নীতকরণ  সেশন', 'Promover a la sesión', 'الترقية إلى الجلسة', 'सत्र को बढ़ावा देना', 'اجلاس میں فروغ دیں', '促进会议', 'セッションに昇進', 'Promover a Sessão', 'Поощрять сессию', 'Promouvoir à la session', '세션으로 승격', 'Zu einer Sitzung hochstufen', 'Promuovi alla sessione', 'โปรโมตเซสชัน', 'Előmozdítása a munkamenethez', 'Promoten naar sessie', 'Sessio autem Promovere', 'Promosikan untuk Sesi', 'Oturuma Teşvik Et', 'Προωθήστε στη σύνοδο', 'ارتقا به جلسه', 'Menggalakkan Sesi', 'સત્રમાં પ્રમોટ કરો', 'Promuj do sesji', 'Реклама на сеанс', 'ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ', 'Promovați la sesiune', 'Igbelaruge si Ipade', 'Ƙaddamar zuwa Zama'),
(164, 'current_class', 'Current Class', 'বর্তমান শ্রেণী', 'Clase actual', 'الفئة الحالية', 'वर्तमान कक्षा', 'موجودہ کلاس', '当前类', '現在のクラス', 'Classe atual', 'Текущий класс', 'Classe actuelle', '현재 수업', 'Aktuelle Klasse', 'Classe corrente', 'ระดับปัจจุบัน', 'Jelenlegi osztály', 'Huidige klasse', 'Current Paleonemertea Class', 'Kelas sekarang', 'Mevcut Sınıf', 'Τρέχουσα κλάση', 'کلاس کنونی', 'Kelas Semasa', 'વર્તમાન વર્ગ', 'Aktualna klasa', 'Поточний клас', 'ਮੌਜੂਦਾ ਕਲਾਸ', 'Clasa curentă', 'Akoko lọwọlọwọ', 'Kwanan Yanzu'),
(165, 'promote_to_class', 'Promote To Class', 'উন্নীতকরণ  শ্রেণী', 'Promover a clase', 'الترقية إلى الفصل', 'कक्षा को बढ़ावा देना', 'کلاس میں فروغ دیں', '促进上课', 'クラスに昇格', 'Promover para a classe', 'Повысить класс', 'Promouvoir en classe', '클래스로 승격', 'In die Klasse hochstufen', 'Promuovi in classe', 'โปรโมตในชั้นเรียน', 'Promóció az osztályba', 'Promoot Class', 'Promovere Ad Paleonemertea Class', 'Promosikan ke Kelas', 'Sınıfı Tanıyalım', 'Προωθήστε στην κλάση', 'ارتقا به کلاس', 'Menggalakkan Ke Kelas', 'વર્ગ માટે પ્રોત્સાહન', 'Promuj do klasy', 'Реклама в класі', 'ਕਲਾਸ ਨੂੰ ਵਧਾਓ', 'Promovați la clasă', 'Igbelaruge Lati Kilasi', 'Ƙaddamar da Ƙungiya'),
(166, 'next_roll_no', 'Next Roll No', 'পরবর্তী রোল', 'Siguiente rollo No', 'التالي لفة لا', 'अगला रोल नंबर', 'اگلے رول نمبر', '下一卷No', '次のロール番号', 'Next Roll No', 'Следующий ролл Нет', 'Prochain rouleau No', '다음 롤 없음', 'Nächste Rolle Nr', 'Next Roll No', 'ฉบับต่อไป No', 'Következő Roll No.', 'Volgende rol Nee', 'Next Roll No', 'Gulungan Berikutnya No', 'Sonraki Rulo Hayır', 'Επόμενος αριθμός ρόλου', 'بعدی رول نه', 'Rol seterusnya No', 'આગામી રોલ નં', 'Następna rolka nr', 'Наступний рулон немає', 'ਅਗਲਾ ਰੋਲ ਕੋਈ ਨਹੀਂ', 'Următorul Roll Nu', 'Eerun Oke No', 'Nemi na gaba Babu'),
(167, 'promote', 'Promote', 'উন্নীত করা', 'Promover', 'تروج  يشجع  يعزز  ينمى  يطور', 'को बढ़ावा देना', 'فروغ دیں', '促进', 'プロモーション', 'Promover', 'содействовать', 'Promouvoir', '홍보', 'Fördern', 'Promuovere', 'ส่งเสริม', 'Népszerűsít', 'Promoten', 'Promovere', 'Memajukan', 'Desteklemek', 'Προάγω', 'ترویج', 'Menggalakkan', 'પ્રમોટ કરો', 'Promować', 'Рекламувати', 'ਵਧਾਓ', 'Promova', 'Igbelaruge', 'Ƙara'),
(168, 'book_id', 'Book ID', 'বই আইডি', 'ID de libro', 'معرف الكتاب', 'बुक आईडी', 'کتاب کی شناخت', '图书ID', '書籍ID', 'ID do livro', 'Книжный идентификатор', 'ID de livre', '도서 ID', 'Buch-ID', 'ID del libro', 'รหัสหนังสือ', 'Könyvazonosító', 'Boek-ID', 'id libri', 'ID buku', 'Kitap kimliği', 'Αναγνωριστικό βιβλίου', 'شناسه کتاب', 'ID Buku', 'બુક ID', 'Identyfikator książki', 'Ідентифікатор книги', 'ਬੁੱਕ ID', 'Carte de identitate', 'Iwe iD', 'ID ID'),
(169, 'isbn_no', 'ISBN No', 'আইএসবিএন নম্বর', 'ISBN No', 'رقم إيسبن لا', 'आईएसबीएन नहीं', 'ISBN نمبر', '书号', 'ISBNいいえ', 'Número ISBN', 'ISBN Нет', 'ISBN Non', 'ISBN 아니오', 'ISBN Nr', 'ISBN n', 'เลข ISBN', 'ISBN szám', 'ISBN nr', 'ISBN No', 'ISBN No', 'ISBN Hayır', 'Αριθμός ISBN', 'ISBN شماره', 'ISBN No', 'આઇએસબીએન નં', 'Numer ISBN', 'Номер ISBN', 'ISBN ਨਹੀਂ', 'ISBN nr', 'ISBN Bẹẹkọ', 'ISBN Babu'),
(170, 'book_cover', 'Book Cover', 'বইয়ের কভার', 'Tapa del libro', 'غلاف الكتاب', 'पुस्तक आवरण', 'کتاب کاپوشش، کتاب کی جلد', '封面', 'ブックカバー', 'Capa de livro', 'Книжная обложка', 'Couverture de livre', '책 표지', 'Buchumschlag', 'Copertina del libro', 'ปกหนังสือ', 'Könyvborító', 'Boekomslag', 'Libro Cover', 'Sampul buku', 'Kitap kapağı', 'Εξώφυλλο βιβλίου', 'جلد کتاب', 'Kulit buku', 'પુસ્તક કવર', 'Okładka książki', 'Обкладинка книги', 'ਬੁੱਕ ਕਵਰ', 'Coperta cărții', 'Iwe Ideri iwe', 'Rufin Shafin'),
(171, 'price', 'Price', 'মূল্য', 'Precio', 'السعر', 'मूल्य', 'قیمت', '价钱', '価格', 'Preço', 'Цена', 'Prix', '가격', 'Preis', 'Prezzo', 'ราคา', 'Ár', 'Prijs', 'pretium', 'Harga', 'Fiyat', 'Τιμή', 'قیمت', 'Harga', 'કિંમત', 'Cena £', 'Ціна', 'ਕੀਮਤ', 'Preț', 'Iye owo', 'Farashin'),
(172, 'quantity', 'Quantity', 'পরিমাণ', 'Cantidad', 'كمية', 'मात्रा', 'مقدار', '数量', '量', 'Quantidade', 'Количество', 'Quantité', '수량', 'Menge', 'Quantità', 'ปริมาณ', 'Mennyiség', 'Aantal stuks', 'quantitas', 'Kuantitas', 'miktar', 'Ποσότητα', 'مقدار', 'Kuantiti', 'જથ્થો', 'Ilość', 'Кількість', 'ਗਿਣਤੀ', 'Cantitate', 'Opolopo', 'Yawan'),
(173, 'edition', 'Edition', 'সংস্করণ', 'Edición', 'الإصدار', 'संस्करण', 'ایڈیشن', '版', '版', 'Edição', 'Издание', 'Édition', '판', 'Auflage', 'Edizione', 'ฉบับ', 'Kiadás', 'Editie', 'edition', 'Edisi', 'Baskı', 'Εκδοση', 'نسخه', 'Edisi', 'આવૃત્તિ', 'Wydanie', 'Видання', 'ਐਡੀਸ਼ਨ', 'Ediție', 'Itọsọna', 'Edition'),
(174, 'almira_rack', 'Almira No', 'আলমারি নম্বর', 'Almira No', 'ألميرا نو', 'अलमिरा नो', 'الامرا نمبر', 'Almira No', 'Almira No', 'Almira Não', 'Альмира Нет', 'Almira Non', 'Almira No', 'Almira Nein', 'Almira no', 'Almira No', 'Almira No', 'Almira Nee', 'Non Almira', 'Almira No', 'Almira Hayır', 'Αλμίρα Όχι', 'آلمیرا نه', 'Almira No', 'અલમરા ના', 'Almira Nie', 'Альміра №', 'ਅਲਮਾਮਾ ਨੰ', 'Almira nr', 'Almira Bẹẹkọ', 'Almira Babu'),
(175, 'yes', 'Yes', 'হাঁ', 'Sí', 'نعم فعلا', 'हाँ', 'جی ہاں', '是', 'はい', 'sim', 'да', 'Oui', '예', 'Ja', 'sì', 'ใช่', 'Igen', 'Ja', 'Ita', 'iya nih', 'Evet', 'Ναί', 'بله', 'Ya', 'હા', 'tak', 'Так', 'ਹਾਂ', 'da', 'Bẹẹni', 'Ee'),
(176, 'no', 'No', 'না', 'No', 'لا', 'नहीं', 'نہیں', '没有', 'いいえ', 'Não', 'нет', 'Non', '아니', 'Nein', 'No', 'ไม่', 'Nem', 'Nee', 'nullum', 'Tidak', 'Yok hayır', 'Οχι', 'نه', 'Tidak', 'ના', 'Nie', 'Немає', 'ਨਹੀਂ', 'Nu', 'Rara', 'Aa'),
(177, 'library_id', 'Library ID', 'গ্রন্থাগার আইডি', 'ID de biblioteca', 'معرف المكتبة', 'लाइब्रेरी आईडी', 'لائبریری کی شناخت', '库ID', 'ライブラリID', 'ID da biblioteca', 'ИД библиотеки', 'ID de la bibliothèque', '도서관 ID', 'Bibliotheks-ID', 'ID della biblioteca', 'ID ห้องสมุด', 'Könyvtár azonosítója', 'Bibliotheek-ID', 'id bibliothecam', 'ID Perpustakaan', 'Kütüphane kimliği', 'Αναγνωριστικό βιβλιοθήκης', 'شناسه کتابخانه', 'ID Perpustakaan', 'લાઇબ્રેરી ID', 'Identyfikator biblioteki', 'Ідентифікатор бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਆਈਡੀ', 'ID-ul bibliotecii', 'ID ibi ipamọ', 'ID ID'),
(178, 'return_this', 'Return This', 'রিটার্ন করুন', 'Devuelve esto', 'عودة هذا', 'यह वापसी करें', 'واپس لو', '返回这个', 'これを返す', 'Retornar isso', 'Возвращение', 'Retournez ceci', '반환이', 'Gib das zurück', 'Restituire questo', 'กลับนี้', 'Vissza', 'Keer dit terug', 'return haec', 'Kembalikan ini', 'Geri dön', 'Επιστρέψτε αυτό', 'بازگشت این', 'Pulangkan ini', 'આ આવો', 'Wróć to', 'Поверніть це', 'ਇਸ ਨੂੰ ਵਾਪਸ ਕਰੋ', 'Întoarce-te', 'Da eyi pada', 'Koma wannan'),
(179, 'vehicle_model', 'Vehicle Model', 'গাড়ী মডেল', 'Modelo de vehículo', 'نموذج المركبة', 'वाहन मॉडल', 'گاڑی کا ماڈل', '车辆模型', '車両モデル', 'Modelo do veículo', 'Модель транспортного средства', 'Modèle de véhicule', '차량 모델', 'Fahrzeugmodell', 'Modello di veicolo', 'โมเดลรถ', 'Járműmodell', 'Voertuigmodel', 'vehiculum Model', 'Model Kendaraan', 'Araç modeli', 'Μοντέλο οχήματος', 'مدل خودرو', 'Model Kenderaan', 'વાહન મોડેલ', 'model maszyny', 'Модель автомобіля', 'ਵਾਹਨ ਮਾਡਲ', 'Modelul vehiculului', 'Apẹẹrẹ ọkọ ayọkẹlẹ', 'Vehicle Model'),
(180, 'driver', 'Driver', 'চালক', 'Conductor', 'سائق', 'चालक', 'ڈرائیور', '司机', 'ドライバ', 'Motorista', 'Водитель', 'Chauffeur', '운전사', 'Treiber', 'autista', 'คนขับรถ', 'Sofőr', 'Bestuurder', 'agitator', 'Sopir', 'sürücü', 'Οδηγός', 'راننده', 'Pemandu', 'ડ્રાઈવર', 'Kierowca', 'Водій', 'ਡਰਾਇਵਰ', 'Conducător auto', 'Awako', 'Driver'),
(181, 'vehicle_license', 'Vehicle License', 'গাড়ী লাইসেন্স', 'Licencia del vehículo', 'رخصة السيارة', 'वाहन लाइसेंस', 'گاڑیاں لائسنس', '车辆牌照', '車両ライセンス', 'Licença de veículo', 'Лицензия на автомобиль', 'Licence de véhicule', '차량 면허', 'Fahrzeuglizenz', 'Licenza del veicolo', 'ใบขับขี่', 'Gépjármű-engedély', 'Voertuig licentie', 'vehiculum License', 'Lisensi Kendaraan', 'Araç Lisansı', 'Άδεια οχήματος', 'مجوز خودرو', 'Lesen Kenderaan', 'વાહન લાઇસન્સ', 'Licencja pojazdu', 'Ліцензія на автомобіль', 'ਵਾਹਨ ਲਾਇਸੈਂਸ', 'Licența vehiculului', 'Iwe-aṣẹ ọkọ ayọkẹlẹ', 'Takardar Lasin Jirgin'),
(182, 'vehicle_contact', 'Vehicle Contact', 'গাড়ী যোগাযোগ', 'Contacto del vehículo', 'الاتصال مركبة', 'वाहन संपर्क', 'گاڑی سے رابطہ', '车辆接触', '車両の連絡先', 'Contato com o veículo', 'Контакт с автомобилем', 'Contact du véhicule', '차량 연락처', 'Fahrzeugkontakt', 'Contatto del veicolo', 'ติดต่อยานพาหนะ', 'Jármű kapcsolattartó', 'Contactpersoon voor voertuigen', 'Contact vehiculum', 'Kontak Kendaraan', 'Araç Teması', 'Επικοινωνία με το όχημα', 'تماس با خودرو', 'Kenalan Kenderaan', 'વાહન સંપર્ક', 'Kontakt z pojazdem', 'Контакт з транспортним засобом', 'ਵਾਹਨ ਸੰਪਰਕ', 'Contactul vehiculului', 'Ọkọ ọkọ ayọkẹlẹ', 'Sadarwar mota'),
(183, 'route_start', 'Route Start', 'রাস্তা শুরু', 'Ruta de inicio', 'بداية الطريق', 'रूट प्रारंभ करें', 'روٹ شروع', '路线开始', 'ルートスタート', 'Começo da rota', 'Начало маршрута', 'Début de litinéraire', '경로 시작', 'Route starten', 'Route Start', 'เริ่มต้นเส้นทาง', 'Útvonal indítása', 'Route Start', 'Satus route', 'Mulai rute', 'Yol Başlat', 'Έναρξη διαδρομής', 'شروع مسیر', 'Jalankan Permulaan', 'રૂટ પ્રારંભ', 'Rozpocznij trasę', 'Початок маршруту', 'ਰੂਟ ਸਟਾਰਟ', 'Urmați traseul', 'Ibẹrẹ ọna', 'Fara hanya'),
(184, 'route_end', 'Route End', 'রাস্তা শেষ', 'Ruta final', 'نهاية الطريق', 'मार्ग समाप्ति', 'روٹ اختتام', '路线结束', 'ルートエンド', 'Fim da rota', 'Маршрутный конец', 'Fin de la route', '국도 끝', 'Routenende', 'Route End', 'Route End', 'Útvonal vége', 'Route einde', 'iter itineris finis', 'Akhir rute', 'Güzergah sonu', 'Διαδρομή διαδρομής', 'پایان مسیر', 'Laluan Akhir', 'રૂટ એન્ડ', 'Koniec trasy', 'Кінець маршруту', 'ਰੂਟ ਐਂਡ', 'Traseul final', 'Ipari Ipa', 'Ƙare Ƙare'),
(185, 'vehicle_for_route', 'Vehicle for Route', 'রুট যানবাহন', 'Vehículo para la ruta', 'مركبة للطريق', 'मार्ग के लिए वाहन', 'روٹ کے لئے گاڑی', '路线车辆', 'ルートの車両', 'Veículo para rota', 'Автомобиль для маршрута', 'Véhicule pour Route', '국도 용 차량', 'Fahrzeug für die Route', 'Veicolo per il percorso', 'ยานพาหนะสำหรับเส้นทาง', 'Jármű az útvonalhoz', 'Voertuig voor route', 'Vehiculum itineris', 'Kendaraan untuk Rute', 'Güzergah için araç', 'Οχήματος για τη διαδρομή', 'وسیله نقلیه برای مسیر', 'Kenderaan untuk Laluan', 'રૂટ માટે વાહન', 'Pojazd dla trasy', 'Автомобіль для маршруту', 'ਰੂਟ ਲਈ ਵਾਹਨ', 'Vehicul pentru traseu', 'Ọkọ ayọkẹlẹ fun Itọsọna', 'Mota don Hanyar'),
(186, 'stop_name', 'Stop Name', 'স্টপ নাম', 'Nombre de parada', 'اسم التوقف', 'नाम बंद करो', 'نام بند کرو', '停止名称', '停止名', 'Parar Nome', 'Остановить имя', 'Arrêter le nom', '이름 중지', 'Stoppen Sie den Namen', 'Arresta il nome', 'ชื่อหยุด', 'Nevezzen meg nevet', 'Stop Naam', 'nomen subsisto', 'Hentikan Nama', 'Adı Durdur', 'Διακοπή ονόματος', 'نام توقف', 'Hentikan Nama', 'નામ રોકો', 'Zatrzymaj nazwę', 'Зупинити імя', 'ਨਾਂ ਰੋਕੋ', 'Opriți numele', 'Duro Orukọ', 'Tsaya sunan'),
(187, 'stop_km', 'Stop KM', 'স্টপ কে এম', 'Detener KM', 'وقف كم', 'केएम बंद करो', 'KM بند کرو', '停止KM', 'KMを停止', 'Pare KM', 'Стоп КМ', 'Arrêtez KM', 'KM 중지', 'Stoppen Sie KM', 'Stop KM', 'หยุด KM', 'Stop KM', 'Stop KM', 'nolite KM', 'Hentikan KM', 'KM durdur', 'Διακοπή KM', 'توقف KM', 'Hentikan KM', 'KM રોકો', 'Zatrzymaj KM', 'Зупинити КМ', 'KM ਰੋਕੋ', 'Opriți KM', 'Duro KM', 'Tsaya KM'),
(188, 'stop_fare', 'Stop Fare', 'স্টপ ভাড়া', 'Detener la tarifa', 'وقف الأجرة', 'किराया बंद करो', 'کرایہ بند کرو', '停止票价', '運賃を停止する', 'Parar tarifa', 'Остановить тариф', 'Arrêter le tarif', '운임 할인', 'Stop Fare', 'Stop Fare', 'หยุดค่าโดยสาร', 'Stop Fare', 'Stop tarief', 'Bene subsisto', 'Hentikan Tarif', 'Ücreti Durdur', 'Σταματήστε το Φόρεμα', 'کرایه را متوقف کنید', 'Hentikan tambang', 'ભાડું રોકો', 'Stop Fare', 'Зупинити вартість проїзду', 'ਫਾਰ ਰੋਕੋ', 'Opriți tariful', 'Duro Iduro', 'Dakatar da Fare'),
(189, 'add_more', 'Add More', 'আরো যোগ করো', 'Añadir más', 'أضف المزيد', 'अधिक जोड़ें', 'مزید شامل کریں', '添加更多', 'さらに追加', 'Adicione mais', 'Добавить больше', 'Ajouter plus', '더 추가', 'Mehr hinzufügen', 'Aggiungere altro', 'เพิ่มอีก', 'Adj hozzá többet', 'Voeg meer toe', 'Add More', 'Tambahkan Lebih Banyak', 'Daha ekle', 'Πρόσθεσε περισσότερα', 'اضافه کردن بیشتر', 'Tambah lebih banyak', 'વધુ ઉમેરો', 'Dodaj więcej', 'Додати більше', 'ਹੋਰ ਜੋੜੋ', 'Adăuga mai mult', 'Fi Die e sii', 'Ƙara Ƙari'),
(190, 'route_stop_fare', 'Route Stop Fare', 'রুট স্টপ ভাড়া', 'Ruta detener tarifa', 'Route Stop Fare', 'मार्ग बंद किराया', 'روٹ سٹاپ کرایہ', '路线止损票价', 'ルートストップ運賃', 'Tarifa de parada de rota', 'Маршрутная остановка', 'Itinéraire Tarif darrêt', '노선 정지 요금', 'Route Stop Tarif', 'Route Stop Fare', 'หยุดการเดินทาง', 'Útvonal leállítása', 'Route stop tarief', 'Bene nolite route', 'Route Stop Fare', 'Rota Durdurma Ücreti', 'Διακοπή διαδρομής', 'هزینه توقف مسیر', 'Bayaran Henti Laluan', 'રૂટ સ્ટોપ ફેર', 'Cena przejazdu trasy', 'Вартість зупинки маршруту', 'ਰੂਟ ਸਟਾਪ ਫਰਾਈ', 'Traseul opri tariful', 'Ilana Duro Itọsọna', 'fitar da Tsaya Tsaya'),
(191, 'hostel_type', 'Hostel Type', 'ছাত্রাবাস ধরন', 'Tipo de Hostal', 'نوع نزل', 'छात्रावास का प्रकार', 'ہاسٹل کی قسم', '旅馆类型', 'ホステルタイプ', 'Tipo de albergue', 'Тип хостела', 'Type dauberge', '호스텔 유형', 'Herbergsart', 'Tipo di ostello', 'ประเภท Hostel', 'Szálló típusa', 'Hostel type', 'Type Hostel', 'Tipe asrama', 'Pansiyon Türü', 'Τύπος Hostel', 'نوع خوابگاه', 'Jenis Hostel', 'છાત્રાલયનો પ્રકાર', 'Typ hostelu', 'Тип хостелу', 'ਹੋਸਟਲ ਦੀ ਕਿਸਮ', 'Tipul de hostel', 'Agbegbe Iru', 'Dakunan kwanan dalibai'),
(192, 'seat_total', 'Seat Total', 'আসন মোট', 'Asiento total', 'المقعد الكلي', 'सीट कुल', 'سیٹ کل', '座位总数', 'シート合計', 'Total do assento', 'Общее количество сидячих мест', 'Siège Total', '좌석 합계', 'Sitzplatz gesamt', 'Totale del sedile', 'ที่นั่งรวม', 'Seat Total', 'Seat Total', 'sede Summa', 'Kursi Total', 'Koltuk Toplam', 'Θέση Σύνολο', 'صندلی مجموع', 'Jumlah tempat duduk', 'બેઠક કુલ', 'Seat Total', 'Загальна кількість сидінь', 'ਸੀਟ ਕੁੱਲ', 'Seat Total', 'Okun apapọ', 'Tsawon kuɗi'),
(193, 'cost_per_seat', 'Cost per Seat', 'আসন প্রতি খরচ', 'Costo por asiento', 'التكلفة لكل مقعد', 'सीट प्रति सीट', 'فی سیٹ لاگت', '每个座位的成本', '1シートあたりのコスト', 'Custo por assento', 'Стоимость за место', 'Coût par siège', '좌석 당 비용', 'Kosten pro Sitzplatz', 'Costo per posto', 'ต้นทุนต่อที่นั่ง', 'Tartózkodási költség', 'Kosten per stoel', 'Sumptus per propitiatorium,', 'Biaya per Kursi', 'Koltuk Başına Maliyet', 'Κόστος ανά Θέση', 'هزینه هر صندلی', 'Kos setiap Tempat Duduk', 'સીટ દીઠ ખર્ચ', 'Koszt za miejsce', 'Вартість за місце', 'ਪ੍ਰਤੀ ਸੀਟ ਦੀ ਲਾਗਤ', 'Cost pe scaun', 'Iye owo fun ijoko', 'Kudin da Seat'),
(194, 'compose', 'Compose', 'লিখা', 'Componer', 'مؤلف موسيقى', 'लिखना', 'تحریر کریں', '撰写', '作成する', 'Compor', 'компоновать', 'Composer', '짓다', 'Komponieren', 'Comporre', 'แต่ง', 'Összeállít', 'Componeren', 'Componere epistolas', 'Menyusun', 'oluşturmak', 'Συνθέτω', 'ساختن', 'Tuliskan', 'લખો', 'Komponować', 'Скласти', 'ਲਿਖੋ', 'Compune', 'Ṣajọ', 'Shirya'),
(195, 'folder', 'Folder', 'ফোল্ডার', 'Carpeta', 'مجلد', 'फ़ोल्डर', 'فولڈر', '夹', 'フォルダ', 'Pasta', 'скоросшиватель', 'Dossier', '폴더', 'Mappe', 'Cartella', 'โฟลเดอร์', 'Folder', 'Map', 'folder', 'Map', 'Klasör', 'Ντοσιέ', 'پوشه', 'Folder', 'ફોલ્ડર', 'Teczka', 'Папка', 'ਫੋਲਡਰ', 'Pliant', 'Folda', 'Jaka'),
(196, 'inbox', 'Inbox', 'ইনবক্স', 'Bandeja de entrada', 'صندوق الوارد', 'इनबॉक्स', 'ان باکس', '收件箱', '受信トレイ', 'Caixa de entrada', 'входящие', 'Boîte de réception', '받은 편지함', 'Posteingang', 'Posta in arrivo', 'กล่องขาเข้า', 'Bejövő', 'Postvak IN', 'inbuxo', 'Kotak masuk', 'Gelen kutusu', 'Inbox', 'صندوق ورودی', 'Peti masuk', 'ઇનબૉક્સ', 'W pudełku', 'Вхідні', 'ਇਨਬਾਕਸ', 'Inbox', 'Apo-iwọle', 'Inbox'),
(197, 'draft', 'Draft', 'ড্রাফ্ট্', 'Borrador', 'مشروع', 'प्रारूप', 'ڈرافٹ', '草案', 'ドラフト', 'Esboço, projeto', 'Проект', 'Brouillon', '초안', 'Entwurf', 'Bozza', 'ร่าง', 'vázlat', 'Droogte', 'capturam', 'Konsep', 'taslak', 'Προσχέδιο', 'پیش نویس', 'Draf', 'ડ્રાફ્ટ', 'Wersja robocza', 'Чернетка', 'ਡਰਾਫਟ', 'Proiect', 'Ifaworanhan', 'Shafin'),
(198, 'trash', 'Trash', 'ট্র্যাশ', 'Basura', 'قمامة، يدمر، يهدم', 'कचरा', 'ردی کی ٹوکری', '垃圾', 'ごみ', 'Lixo', 'дрянь', 'Poubelle', '폐물', 'Müll', 'Spazzatura', 'ขยะ', 'Szemét', 'uitschot', 'quisquiliae', 'Sampah', 'Çöp', 'Σκουπίδια', 'زباله ها', 'Sampah', 'ટ્રૅશ', 'Śmieci', 'Сміття', 'ਟ੍ਰੈਸ਼', 'Gunoi', 'Idọti', 'Shara'),
(199, 'message', 'Message', 'বার্তা', 'Mensaje', 'رسالة', 'संदेश', 'پیغام', '信息', 'メッセージ', 'mensagem', 'Сообщение', 'Message', '메시지', 'Botschaft', 'Messaggio', 'ข่าวสาร', 'Üzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'Μήνυμα', 'پیام', 'Mesej', 'સંદેશ', 'Wiadomość', 'повідомлення', 'ਸੁਨੇਹਾ', 'Mesaj', 'Ifiranṣẹ', 'Saƙo'),
(200, 'discard', 'Discard', 'বাতিল', 'Descarte', 'تجاهل', 'छोड़ना', 'رکھو', '丢弃', '破棄', 'Descartar', 'отбрасывать', 'Jeter', '포기', 'Verwerfen', 'Scartare', 'ทิ้ง', 'Dobja', 'afdanken', 'Relinquere', 'Membuang', 'ıskarta', 'Απορρίπτω', 'نادیده گرفتن', 'Buang', 'કાઢી નાખો', 'Odrzucać', 'Відхилити', 'ਬਰਖਾਸਤ ਕਰੋ', 'decarta', 'Ṣabọ', 'Zubar da'),
(201, 'receiver_type', 'Receiver Type', 'প্রাপক প্রকার', 'Tipo de receptor', 'نوع جهاز الاستقبال', 'प्राप्तकर्ता प्रकार', 'رسیور کی قسم', '接收器类型', '受信機タイプ', 'Tipo de receptor', 'Тип приемника', 'Type de récepteur', '수신기 유형', 'Empfängertyp', 'Tipo di ricevitore', 'ประเภทตัวรับสัญญาณ', 'Vevőtípus', 'Ontvanger Type', 'Type receptorem', 'Jenis Penerima', 'Alıcı Türü', 'Τύπος δέκτη', 'نوع گیرنده', 'Jenis Penerima', 'રીસીવર પ્રકાર', 'Typ odbiornika', 'Тип приймача', 'ਪ੍ਰਾਪਤਕਰਤਾ ਕਿਸਮ', 'Tip receptor', 'Gbigba Iru', 'Mai karɓa iri'),
(202, 'receiver', 'Receiver', 'প্রাপক', 'Receptor', 'المتلقي', 'रिसीवर', 'وصول کنندہ', '接收器', '受信機', 'Receptor', 'Получатель', 'Destinataire', '리시버', 'Empfänger', 'Ricevitore', 'ผู้รับ', 'Receiver', 'Ontvanger', 'receptor', 'Penerima', 'Alıcı', 'Δέκτης', 'گیرنده', 'Penerima', 'રીસીવર', 'Odbiorca', 'Приймач', 'ਪ੍ਰਾਪਤਕਰਤਾ', 'Receptor', 'olugba', 'Mai karɓar'),
(203, 'time', 'Time', 'সময়', 'Hora', 'زمن', 'पहर', 'وقت', '时间', '時間', 'Tempo', 'Время', 'Temps', '시각', 'Zeit', 'Tempo', 'เวลา', 'Idő', 'Tijd', 'Tempus', 'Waktu', 'Zaman', 'χρόνος', 'زمان', 'Masa', 'સમય', 'Czas', 'Час', 'ਸਮਾਂ', 'Timp', 'Aago', 'Lokaci'),
(204, 'read_message', 'Read Message', 'বার্তা পড়ুন', 'Leer el mensaje', 'اقرأ الرساله', 'संदेश पढ़ना', 'پیغام پڑھیں', '阅读消息', 'メッセージを読む', 'Leia a mensagem', 'Читать сообщение', 'Lire le message', '메시지 읽기', 'Lies die Nachricht', 'Leggi il messaggio', 'อ่านข้อความ', 'Üzenet olvasása', 'Lees bericht', 'Read Nuntius', 'Baca pesan', 'Mesajı oku', 'Διαβάστε το μήνυμα', 'خواندن پیام', 'Baca Mesej', 'સંદેશ વાંચો', 'Czytać wiadomość', 'Читати повідомлення', 'ਸੁਨੇਹਾ ਪੜ੍ਹੋ', 'Citiți mesajul', 'Ka Ifiranṣẹ', 'Karanta Saƙo'),
(205, 'reply', 'Reply', 'উত্তর', 'Respuesta', 'الرد', 'जवाब दे दो', 'جواب دیں', '回复', '応答', 'Resposta', 'Ответить', 'Répondre', '댓글', 'Antworten', 'rispondere', 'ตอบ', 'Válasz', 'Antwoord', 'Respondeo', 'Balasan', 'cevap', 'Απάντηση', 'پاسخ', 'Balas', 'જવાબ આપો', 'Odpowiadać', 'Відповідь', 'ਜਵਾਬ ਦਿਉ', 'Răspuns', 'Idahun', 'Amsa'),
(206, 'attachment', 'Attachment', 'সংযুক্তি', 'Adjunto archivo', 'المرفق', 'आसक्ति', 'منسلکہ', '附件', 'アタッチメント', 'Anexo', 'прикрепление', 'Attachement', '부착', 'Befestigung', 'attaccamento', 'ความผูกพัน', 'Attachment', 'gehechtheid', 'affectum', 'Lampiran', 'Ek dosya', 'Συνημμένο', 'ضمیمه', 'Lampiran', 'જોડાણ', 'Załącznik', 'Вкладення', 'ਅਟੈਚਮੈਂਟ', 'Atașament', 'Asopọ', 'Abin haɗi'),
(207, 'dynamic_tag', 'Dynamic Tag', 'ডায়নামিক ট্যাগ', 'Etiqueta dinámica', 'علامة ديناميكية', 'डायनेमिक टैग', 'متحرک ٹیگ', '动态标签', '動的タグ', 'Tag dinâmico', 'Динамический тег', 'Balise dynamique', '동적 태그', 'Dynamische Markierung', 'Tag dinamico', 'แท็กแบบไดนามิก', 'Dinamikus címke', 'Dynamische tag', 'dynamic Omega', 'Tag Dinamis', 'Dinamik Etiket', 'Δυναμική ετικέτα', 'برچسب پویا', 'Tag Dinamik', 'ડાયનેમિક ટૅગ', 'Tag dynamiczny', 'Динамічний тег', 'ਡਾਇਨਾਮਿਕ ਟੈਗ', 'Etichetă dinamică', 'Atilẹyin Ayika', 'Dynamic Tag'),
(208, 'gateway', 'Gateway', 'গেটওয়ে', 'Puerta', 'بوابة', 'द्वार', 'گیٹ وے', '网关', 'ゲートウェイ', 'Gateway', 'шлюз', 'passerelle', '게이트웨이', 'Tor', 'porta', 'ประตู', 'Gateway', 'poort', 'porta', 'pintu gerbang', 'geçit', 'πύλη', 'دروازه', 'Gateway', 'ગેટવે', 'Przejście', 'Шлюз', 'ਗੇਟਵੇ', 'portal', 'Ẹnu-ọna', 'Ƙofar waje'),
(209, 'email_body', 'Email Body', 'ইমেইল বডি', 'Cuerpo del correo electronico', 'هيئة البريد الإلكتروني', 'ईमेल बॉडी', 'ای میل جسم', '电子邮件正文', 'メール本文', 'Corpo do e-mail', 'Тело письма', 'Corps de le-mail', '이메일 본문', 'Nachrichtentext', 'Email Corpo', 'Email Body', 'Email Body', 'E-mail body', 'Email Corpus', 'Email Tubuh', 'E-posta Gövdesi', 'Σώμα ηλεκτρονικού ταχυδρομείου', 'بدن ایمیل', 'Badan E-mel', 'ઇમેઇલ શારીરિક', 'Treść e-maila', 'Email Body', 'ਈਮੇਲ ਬਾਡੀ', 'Organismul de e-mail', 'Imeeli Ara', 'Jikin Jiki'),
(210, 'notice_for', 'Notice for', 'নোটিশ ফর', 'Aviso para', 'إشعار ل', 'के लिए सूचना', 'نوٹس', '通知', 'お知らせ', 'Aviso para', 'Уведомление для', 'Avis pour', '공지 사항', 'Hinweis für', 'Avviso per', 'แจ้งให้ทราบ', 'Figyelmeztetés', 'Kennisgeving voor', 'notitia est', 'Pemberitahuan untuk', 'Için bildirim', 'Ειδοποίηση για', 'برای', 'Notis untuk', 'માટે નોટિસ', 'Powiadomienie dla', 'Зверніть увагу на', 'ਲਈ ਨੋਟਿਸ', 'Notă pentru', 'Akiyesi fun', 'Lura don'),
(211, 'date', 'Date', 'তারিখ', 'Fecha', 'تاريخ', 'तारीख', 'تاریخ', '日期', '日付', 'Encontro', 'Дата', 'Rendez-vous amoureux', '날짜', 'Datum', 'Data', 'วันที่', 'Dátum', 'Datum', 'Date', 'Tanggal', 'tarih', 'Ημερομηνία', 'تاریخ', 'Tarikh', 'તારીખ', 'Data', 'Дата', 'ਤਾਰੀਖ', 'Data', 'Ọjọ', 'Kwanan wata'),
(212, 'from_date', 'From Date', 'তারিখ হইতে', 'Partir de la fecha', 'من التاريخ', 'तारीख से', 'اس تاریخ سے', '从日期', '日付から', 'Da data', 'С даты', 'Partir de la date', '날짜부터', 'Ab Datum', 'Dalla data', 'จากวันที่', 'Dátumtól', 'Van datum', 'Ex Date', 'Dari tanggal', 'İtibaren', 'Από την ημερομηνία', 'از تاریخ', 'Dari tarikh', 'તારીખથી', 'Od daty', 'Від дати', 'ਮਿਤੀ ਤੋਂ', 'Din data', 'Lati Ọjọ', 'Daga Kwanan wata'),
(213, 'to_date', 'To Date', 'তারিখ পর্যন্ত', 'Hasta la fecha', 'ان يذهب في موعد', 'तारीख तक', 'تاریخ تک', '至今', '現在まで', 'Até a presente data', 'Встретиться1', 'À ce jour', '오늘까지', 'Miteinander ausgehen', 'Ad oggi', 'ถึงวันที่', 'Randizni', 'Daten', 'Ad Date', 'Saat ini', 'Bugüne kadar', 'Μέχρι σήμερα', 'به روز', 'Untuk Tarikh', 'આજ સુધી', 'Spotykać się z kimś', 'До дати', 'ਮਿਤੀ ਤੱਕ', 'La zi', 'Titi di akoko yi', 'Don Kwanan wata'),
(214, 'image', 'Image', 'ইমেজ', 'Imagen', 'صورة', 'छवि', 'تصویر', '图片', '画像', 'Imagem', 'Образ', 'Image', '영상', 'Bild', 'Immagine', 'ภาพ', 'Kép', 'Beeld', 'Image', 'Gambar', 'görüntü', 'Εικόνα', 'تصویر', 'Gambar', 'છબી', 'Obraz', 'Зображення', 'ਚਿੱਤਰ', 'Imagine', 'Aworan', 'Hoton hoto'),
(215, 'event_for', 'Event for', 'ইভেন্ট ফর', 'Evento para', 'حدث ل', 'के लिए घटना', 'کے لئے واقعہ', '事件', 'イベント', 'Evento para', 'Событие для', 'Événement pour', '이벤트', 'Ereignis für', 'Evento per', 'กิจกรรมสำหรับ', 'Esemény', 'Evenement voor', 'res enim', 'Acara untuk', 'Için Etkinlik', 'Εκδήλωση για', 'رویداد برای', 'Acara untuk', 'માટે ઇવેન્ટ', 'Wydarzenie dla', 'Подія для', 'ਲਈ ਇਵੈਂਟ', 'Eveniment pentru', 'Iṣẹlẹ fun', 'Aukuwa don'),
(216, 'event_place', 'Event Place', 'ইভেন্ট স্থান', 'Lugar del evento', 'مكان الحدث', 'इवेंट प्लेस', 'واقعہ کی جگہ', '活动地点', 'イベント会場', 'Lugar do Evento', 'Место проведения мероприятия', 'Lieu de lévénement', '행사 장소', 'Veranstaltungsort', 'Luogo dellevento', 'สถานที่จัดงาน', 'Rendezvényhelyszín', 'Evenementplaats', 'res Locus Iste', 'Tempat acara', 'Etkinlik Yeri', 'Τόπος εκδήλωσης', 'محل برگزاری', 'Tempat Acara', 'ઇવેન્ટ પ્લેસ', 'Miejsce zdarzenia', 'Місце проведення', 'ਇਵੈਂਟ ਸਥਾਨ', 'Locul evenimentului', 'Ibi ti o ṣe', 'Tarihin Lura'),
(217, 'to_meet', 'To Meet', 'যার সাথে দেখা করবে', 'Conocer', 'لكي نلتقي', 'मीलऩा', 'ملنے کے لئے', '见面', '会う', 'Encontrar', 'Встречаться', 'Rencontrer', '만나다', 'Treffen', 'Incontrare', 'พบ', 'Találkozni', 'Ontmoeten', 'Convenire', 'Bertemu', 'Tanışmak', 'Να συναντησω', 'برای دیدار با', 'Berjumpa', 'મળવા', 'Spotkać', 'Зустріти', 'ਮਿਲਣ ਲਈ', 'A întâlni', 'Lati pade', 'Don saduwa'),
(218, 'check_in', 'Check In', 'চেক ইন', 'Registrarse', 'تحقق في', 'चेक इन', 'چیک کریں', '报到', 'チェックイン', 'Check-in', 'Регистрироваться', 'Enregistrement', '체크인', 'Check-In', 'Registrare', 'เช็คอิน', 'Becsekkolás', 'Check in', 'Reprehendo in', 'Mendaftar', 'Giriş', 'Παραδίδω αποσκευές', 'چک کردن', 'Daftar masuk', 'ચેક ઇન કરો', 'Zameldować się', 'Перевірь', 'ਚੈੱਕ ਇਨ ਕਰੋ', 'Verifica', 'Wole sinu', 'Rajistan shiga'),
(219, 'check_out', 'Check Out', 'চেক আউট', 'Revisa', 'الدفع', 'चेक आउट', 'اس کو دیکھو', '查看', 'チェックアウト', 'Confira', 'Проверять, выписываться', 'Check-out', '체크 아웃', 'Auschecken', 'Check-out', 'เช็คเอาท์', 'Kijelentkezés', 'Uitchecken', 'reprehendo de', 'Periksa', 'Çıkış yapmak', 'Ολοκλήρωση αγοράς', 'وارسی', 'Semak Keluar', 'તપાસો', 'Sprawdzić', 'Перевірити', 'ਕਮਰਾ ਛੱਡ ਦਿਓ', 'Verifică', 'Ṣayẹwo', 'Duba Out'),
(220, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', 'كمية', 'रकम', 'رقم', '量', '量', 'Montante', 'Количество', 'Montant', '양', 'Menge', 'Quantità', 'จำนวน', 'Összeg', 'Bedrag', 'tantum', 'Jumlah', 'Miktar', 'Ποσό', 'میزان', 'Jumlah', 'રકમ', 'Ilość', 'Сума', 'ਦੀ ਰਕਮ', 'Cantitate', 'Iye', 'Adadin'),
(221, 'discount', 'Discount', 'ছাড়', 'Descuento', 'خصم', 'छूट', 'ڈسکاؤنٹ', '折扣', 'ディスカウント', 'Desconto', 'скидка', 'Discount', '할인', 'Rabatt', 'Sconto', 'ส่วนลด', 'Kedvezmény', 'Korting', 'Buy', 'Diskon', 'İndirim', 'Εκπτωση', 'تخفیف', 'Diskaun', 'ડિસ્કાઉન્ટ', 'Zniżka', 'Знижка', 'ਛੂਟ', 'Reducere', 'iye owo', 'Dama'),
(222, 'print', 'Print', 'প্রিন্ট', 'Impresión', 'طباعة', 'छाप', 'پرنٹ کریں', '打印', '印刷', 'Impressão', 'Распечатать', 'Impression', '인쇄', 'Drucken', 'Stampare', 'พิมพ์', 'Nyomtatás', 'Afdrukken', 'Print', 'Mencetak', 'baskı', 'Τυπώνω', 'چاپ', 'Cetak', 'છાપો', 'Wydrukować', 'Друк', 'ਛਾਪੋ', 'Imprimare', 'Tẹjade', 'Buga'),
(223, 'paid', 'Paid', 'পরিশোদ', 'Pagado', 'دفع', 'भुगतान किया है', 'ادا کیا', '付费', '有料', 'Pago', 'оплаченный', 'Payé', '유료', 'Bezahlt', 'Pagato', 'ต้องจ่าย', 'Fizetett', 'Betaald', 'pretium', 'Dibayar', 'ödenmiş', 'επί πληρωμή', 'پرداخت شده', 'Dibayar', 'ચૂકવેલ', 'Płatny', 'Оплачений', 'ਦਾ ਭੁਗਤਾਨ', 'Plătit', 'San', 'An biya'),
(224, 'subtotal', 'Subtotal', 'উপমোট', 'Total parcial', 'حاصل الجمع', 'उप-योग', 'ذیلی کل', '小计', '小計', 'Subtotal', 'Промежуточный итог', 'Total', '소계', 'Zwischensumme', 'totale parziale', 'ไม่ทั้งหมด', 'Részösszeg', 'Subtotaal', 'Subtotal', 'Subtotal', 'ara toplam', 'ΜΕΡΙΚΟ ΣΥΝΟΛΟ', 'کل حجم', 'jumlah kecil', 'પેટાસરવાળો', 'Suma częściowa', 'Сумарно', 'ਉਪ-ਕੁੱਲ', 'Subtotal', 'Atokun', 'Subtotal'),
(225, 'remain', 'Remain', 'অবশিষ্ট', 'Permanecer', 'يبقى', 'रहना', 'رہنا', '留', '残っている', 'Permanecer', 'оставаться', 'Rester', '남아있는', 'Bleiben übrig', 'rimanere', 'ยังคง', 'Marad', 'Blijven', 'manent', 'Tetap', 'Kalmak', 'Παραμένει', 'ماندن', 'Kekal', 'રહો', 'Pozostawać', 'Залишитися', 'ਰਹਿਣ ਦਿਓ', 'Rămâne', 'Duro', 'Ku tsaya'),
(226, 'month', 'Month', 'মাস', 'Mes', 'شهر', 'महीना', 'مہینہ', '月', '月', 'Mês', 'Месяц', 'Mois', '달', 'Monat', 'Mese', 'เดือน', 'Hónap', 'Maand', 'mense', 'Bulan', 'Ay', 'Μήνας', 'ماه', 'Bulan', 'માસ', 'Miesiąc', 'Місяць', 'ਮਹੀਨਾ', 'Lună', 'Oṣu', 'Watan'),
(227, 'a_positive', 'A+', 'এ পজিটিভ', 'A +', 'A +', 'A+', 'A+', 'A+', 'A+', 'A+', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +'),
(228, 'a_negative', 'A-', 'এ নেগেটিভ', 'UN-', 'ا-', 'ए-', 'A-', '一个-', 'A-', 'UMA-', 'A-', 'A-', '에이-', 'EIN-', 'UN-', 'A-', 'A-', 'EEN-', 'A-', 'SEBUAH-', 'A-', 'ΕΝΑ-', 'A-', 'A-', 'એ-', 'ZA-', 'A-', 'ਏ-', 'A-', 'A-', 'A-'),
(229, 'b_positive', 'B+', 'বি পজিটিভ', 'B +', 'B +', 'बी +', 'B+', 'B+', 'B+', 'B+', 'B +', 'B+', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +'),
(230, 'b_negative', 'B-', 'বি নেগেটিভ', 'SEGUNDO-', 'ب-', 'बी', 'B-', 'B-', 'B-', 'B-', 'B-', 'B-', '비-', 'B-', 'B-', 'B-', 'B-', 'B-', 'Sed placerat scelerisque', 'B-', 'B-', 'ΣΙ-', 'B-', 'B-', 'બી-', 'B-', 'B-', 'ਬੀ-', 'B-', 'B-', 'B-'),
(231, 'o_positive', 'O+', 'ও পজিটিভ', 'O +', 'O +', 'O+', 'اے +', 'O+', 'O+', 'O+', 'O +', 'O+', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'Domine +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(232, 'o_negative', 'O-', 'ও নেগেটিভ', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', '영형-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'HAI-', 'O-', 'Ο-', 'O-', 'O-', 'ઓ-', 'O-', 'O-', 'ਓ-', 'O-', 'O-', 'O-'),
(233, 'ab_positive', 'AB+', 'এবি পজিটিভ', 'AB +', 'AB +', 'एबी +', 'AB+', 'AB+', 'AB+', 'AB+', 'AB +', 'AB+', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'એબી +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +'),
(234, 'ab_negative', 'AB-', 'এবি নেগেটিভ', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB', 'AB-', 'AB-', 'ΑΒ-', 'AB-', 'AB-', 'એબી-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-'),
(236, 'mandatory', 'Mandatory', 'বাধ্যতামূলক', 'Obligatorio', 'إلزامي', 'अनिवार्य', 'لازمی', '强制性', '必須', 'Obrigatório', 'Обязательное', 'Obligatoire', '필수', 'Verpflichtend', 'Obbligatorio', 'จำเป็น', 'Kötelező', 'Verplicht', 'amet', 'Wajib', 'Zorunlu', 'Επιτακτικός', 'اجباری', 'Mandatori', 'ફરજિયાત', 'Obowiązkowy', 'Обовязковий', 'ਲਾਜ਼ਮੀ', 'Obligatoriu', 'Dandan', 'M'),
(237, 'optional', 'Optional', 'ঐচ্ছিক', 'Opcional', 'اختياري', 'ऐच्छिक', 'اختیاری', '可选的', 'オプション', 'Opcional', 'Необязательный', 'Optionnel', '선택 과목', 'Wahlweise', 'Opzionale', 'ไม่จำเป็น', 'Választható', 'facultatief', 'libitum', 'Pilihan', 'İsteğe bağlı', 'Προαιρετικός', 'اختیاری', 'Pilihan', 'વૈકલ્પિક', 'Opcjonalny', 'Необовязково', 'ਵਿਕਲਪਿਕ', 'facultativ', 'Aṣayan', 'Zabin'),
(241, 'saturday', 'Saturday', 'শনিবার', 'sábado', 'يوم السبت', 'शनिवार', 'ہفتہ', '星期六', '土曜日', 'sábado', 'суббота', 'samedi', '토요일', 'Samstag', 'Sabato', 'วันเสาร์', 'szombat', 'zaterdag', 'Saturni', 'Sabtu', 'Cumartesi', 'Σάββατο', 'شنبه', 'Sabtu', 'શનિવાર', 'sobota', 'Субота', 'ਸ਼ਨੀਵਾਰ', 'sâmbătă', 'Ọjọ Satidee', 'Asabar'),
(242, 'sunday', 'Sunday', 'রবিবার', 'domingo', 'الأحد', 'रविवार', 'اتوار', '星期日', '日曜日', 'domingo', 'Воскресенье', 'dimanche', '일요일', 'Sonntag', 'Domenica', 'วันอาทิตย์', 'vasárnap', 'zondag', 'Solis', 'Minggu', 'Pazar', 'Κυριακή', 'یکشنبه', 'Ahad', 'રવિવાર', 'niedziela', 'Неділя', 'ਐਤਵਾਰ', 'duminică', 'Sunday', 'Lahadi'),
(243, 'monday', 'Monday', 'সোমবার', 'lunes', 'الإثنين', 'सोमवार', 'سوموار', '星期一', '月曜', 'Segunda-feira', 'понедельник', 'Lundi', '월요일', 'Montag', 'Lunedi', 'วันจันทร์', 'hétfő', 'maandag', 'dies Lunae', 'Senin', 'Pazartesi', 'Δευτέρα', 'دوشنبه', 'Isnin', 'સોમવાર', 'poniedziałek', 'Понеділок', 'ਸੋਮਵਾਰ', 'luni', 'Awọn aarọ', 'Litinin'),
(244, 'tuesday', 'Tuesday', 'মঙ্গলবার', 'martes', 'الثلاثاء', 'मंगलवार', 'منگل', '星期二', '火曜日', 'terça', 'вторник', 'Mardi', '화요일', 'Dienstag', 'martedì', 'วันอังคาร', 'kedd', 'dinsdag', 'Martis', 'Selasa', 'Salı', 'Τρίτη', 'سهشنبه', 'Selasa', 'મંગળવારે', 'wtorek', 'Вівторок', 'ਮੰਗਲਵਾਰ', 'marţi', 'Ojoba', 'Talata'),
(245, 'wednesday', 'Wednesday', 'বুধবার', 'miércoles', 'الأربعاء', 'बुधवार', 'بدھ', '星期三', '水曜日', 'Quarta-feira', 'среда', 'Mercredi', '수요일', 'Mittwoch', 'mercoledì', 'วันพุธ', 'szerda', 'woensdag', 'Mercurii', 'Rabu', 'Çarşamba', 'Τετάρτη', 'چهار شنبه', 'Rabu', 'બુધવાર', 'środa', 'Середа', 'ਬੁੱਧਵਾਰ', 'miercuri', 'Ọjọrú', 'Laraba'),
(246, 'thursday', 'Thursday', 'বৃহস্পতিবার', 'jueves', 'الخميس', 'गुरूवार', 'جمعرات', '星期四', '木曜日', 'Quinta-feira', 'Четверг', 'Jeudi', '목요일', 'Donnerstag', 'giovedi', 'วันพฤหัสบดี', 'csütörtök', 'donderdag', 'Iovis', 'Kamis', 'Perşembe', 'Πέμπτη', 'پنج شنبه', 'Khamis', 'ગુરુવાર', 'czwartek', 'Четвер', 'ਵੀਰਵਾਰ', 'joi', 'Ojobo', 'Alhamis'),
(247, 'friday', 'Friday', 'শুক্রবার', 'viernes', 'يوم الجمعة', 'शुक्रवार', 'جمعہ', '星期五', '金曜日', 'Sexta-feira', 'пятница', 'Vendredi', '금요일', 'Freitag', 'Venerdì', 'วันศุกร์', 'péntek', 'vrijdag', 'Veneris', 'Jumat', 'Cuma', 'Παρασκευή', 'جمعه', 'Jumaat', 'શુક્રવાર', 'piątek', 'Пятниця', 'ਸ਼ੁੱਕਰਵਾਰ', 'vineri', 'Ọjọ Ẹtì', 'Jummaa'),
(248, 'january', 'January', 'জানুয়ারী', 'enero', 'كانون الثاني', 'जनवरी', 'جنوری', '一月', '1月', 'janeiro', 'январь', 'janvier', '일월', 'Januar', 'gennaio', 'มกราคม', 'január', 'januari-', 'Ianuarii', 'Januari', 'Ocak', 'Ιανουάριος', 'ژانویه', 'Januari', 'જાન્યુઆરી', 'styczeń', 'Січень', 'ਜਨਵਰੀ', 'ianuarie', 'Oṣù', 'Janairu'),
(249, 'february', 'February', 'ফেব্রুয়ারি', 'febrero', 'شهر فبراير', 'फरवरी', 'فروری', '二月', '2月', 'fevereiro', 'февраль', 'février', '이월', 'Februar', 'febbraio', 'กุมภาพันธ์', 'február', 'februari', 'Februarius', 'Februari', 'Şubat', 'Φεβρουάριος', 'فوریه', 'Februari', 'ફેબ્રુઆરી', 'luty', 'Лютий', 'ਫਰਵਰੀ', 'februarie', 'Kínní', 'Fabrairu'),
(250, 'march', 'March', 'মার্চ', 'marzo', 'مارس', 'मार्च', 'مارچ', '游行', '行進', 'marcha', 'Март', 'Mars', '행진', 'März', 'marzo', 'มีนาคม', 'március', 'maart', 'Martii', 'Maret', 'Mart', 'Μάρτιος', 'مارس', 'Mac', 'કુચ', 'Marsz', 'Березень', 'ਮਾਰਚ', 'Martie', 'Oṣù', 'Maris'),
(251, 'april', 'April', 'এপ্রিল', 'abril', 'أبريل', 'अप्रैल', 'اپریل', '四月', '4月', 'abril', 'апрель', 'avril', '4 월', 'April', 'aprile', 'เมษายน', 'április', 'april', 'Aprilis', 'April', 'Nisan', 'Απρίλιος', 'آوریل', 'April', 'એપ્રિલ', 'kwiecień', 'Квітень', 'ਅਪ੍ਰੈਲ', 'Aprilie', 'Kẹrin', 'Afrilu'),
(252, 'may', 'May', 'মে', 'Mayo', 'قد', 'मई', 'مئی', '可能', '5月', 'Pode', 'май', 'mai', '할 수있다', 'Kann', 'potrebbe', 'อาจ', 'Lehet', 'mei', 'May', 'Mungkin', 'Mayıs ayı', 'Ενδέχεται', 'ممکن است', 'Mungkin', 'મે', 'Może', 'Може', 'ਮਈ', 'Mai', 'Ṣe', 'Mayu'),
(253, 'june', 'June', 'জুন', 'junio', 'يونيو', 'जून', 'جون', '六月', '六月', 'Junho', 'июнь', 'juin', '유월', 'Juni', 'giugno', 'มิถุนายน', 'június', 'juni-', 'June', 'Juni', 'Haziran', 'Ιούνιος', 'ژوئن', 'Jun', 'જૂન', 'czerwiec', 'Червень', 'ਜੂਨ', 'iunie', 'Okudu', 'Yuni'),
(254, 'july', 'July', 'জুলাই', 'julio', 'يوليو', 'जुलाई', 'جولائی', '七月', '7月', 'Julho', 'июль', 'juillet', '칠월', 'Juli', 'luglio', 'กรกฎาคม', 'július', 'juli-', 'Iulii', 'Juli', 'Temmuz', 'Ιούλιος', 'جولای', 'Julai', 'જુલાઈ', 'lipiec', 'Липень', 'ਜੁਲਾਈ', 'iulie', 'Keje', 'Yuli'),
(255, 'august', 'August', 'অগাস্ট', 'agosto', 'أغسطس', 'अगस्त', 'اگست', '八月', '8月', 'agosto', 'августейший', 'août', '팔월', 'August', 'agosto', 'สิงหาคม', 'augusztus', 'augustus', 'August', 'Agustus', 'Ağustos', 'Αύγουστος', 'آگوست', 'Ogos', 'ઓગસ્ટ', 'sierpień', 'Серпень', 'ਅਗਸਤ', 'August', 'Oṣù Kẹjọ', 'Agusta'),
(256, 'september', 'September', 'সেপ্টেম্বর', 'septiembre', 'سبتمبر', 'सितंबर', 'ستمبر', '九月', '9月', 'setembro', 'сентябрь', 'septembre', '구월', 'September', 'settembre', 'กันยายน', 'szeptember', 'september', 'September', 'September', 'Eylül', 'Σεπτέμβριος', 'سپتامبر', 'September', 'સપ્ટેમ્બર', 'wrzesień', 'Вересень', 'ਸਿਤੰਬਰ', 'Septembrie', 'Oṣu Kẹsan', 'Satumba'),
(257, 'october', 'October', 'অক্টোবর', 'octubre', 'شهر اكتوبر', 'अक्टूबर', 'اکتوبر', '十月', '10月', 'Outubro', 'октября', 'octobre', '십월', 'Oktober', 'ottobre', 'ตุลาคม', 'október', 'oktober', 'Octobris', 'Oktober', 'Ekim', 'Οκτώβριος', 'اکتبر', 'Oktober', 'ઓક્ટોબર', 'październik', 'Жовтень', 'ਅਕਤੂਬਰ', 'octombrie', 'Oṣu Kẹwa', 'Oktoba'),
(258, 'november', 'November', 'নভেম্বর', 'noviembre', 'شهر نوفمبر', 'नवंबर', 'نومبر', '十一月', '11月', 'novembro', 'ноябрь', 'novembre', '십일월', 'November', 'novembre', 'พฤศจิกายน', 'november', 'november', 'November', 'November', 'Kasım', 'Νοέμβριος', 'نوامبر', 'November', 'નવેમ્બર', 'listopad', 'Листопад', 'ਨਵੰਬਰ', 'noiembrie', 'Kọkànlá Oṣù', 'Nuwamba'),
(259, 'december', 'December', 'ডিসেম্বর', 'diciembre', 'ديسمبر', 'दिसंबर', 'دسمبر', '十二月', '12月', 'dezembro', 'Декабрь', 'décembre', '12 월', 'Dezember', 'dicembre', 'ธันวาคม', 'december', 'december', 'December', 'Desember', 'Aralık', 'Δεκέμβριος', 'دسامبر', 'Disember', 'ડિસેમ્બર', 'grudzień', 'Грудень', 'ਦਸੰਬਰ', 'decembrie', 'Oṣù Kejìlá', 'Disamba'),
(260, 'boys', 'Boy', 'ছেলে', 'Chico', 'صبي', 'लड़का', 'لڑکا', '男孩', '男の子', 'Garoto', 'мальчик', 'Garçon', '소년', 'Junge', 'Ragazzo', 'เด็กผู้ชาย', 'Fiú', 'Jongen', 'Puer', 'Anak laki-laki', 'Oğlan', 'Αγόρι', 'پسر', 'Budak lelaki', 'બોય', 'Chłopak', 'Хлопчик', 'ਮੁੰਡਾ', 'Băiat', 'Ọmọkunrin', 'Yaro'),
(261, 'girls', 'Girl', 'মেয়ে', 'Niña', 'فتاة', 'लड़की', 'لڑکی', '女孩', '女の子', 'Menina', 'девушка', 'Fille', '소녀', 'Mädchen', 'Ragazza', 'สาว', 'Lány', 'Meisje', 'puella', 'Gadis', 'Kız', 'Κορίτσι', 'دختر', 'Gadis', 'ગર્લ', 'Dziewczyna', 'Дівчина', 'ਕੁੜੀ', 'Fată', 'Ọdọmọbìnrin', 'Yarinya '),
(262, 'combine', 'Combine', 'যৌথ', 'Combinar', 'دمج', 'जोड़ना', 'یکجا', '结合', '結合する', 'Combinar', 'скомбинировать', 'Combiner', '콤바인', 'Kombinieren', 'combinare', 'รวมกัน', 'Kombájn', 'Combineren', 'miscere', 'Menggabungkan', 'birleştirmek', 'Συνδυασμός', 'ترکیب کردن', 'Gabung', 'ભેગું કરો', 'Połączyć', 'Комбінувати', 'ਜੁੜੋ', 'Combina', 'Darapọ', 'Haɗa'),
(263, 'ac', 'AC', 'এসি', 'C.A.', 'AC', 'एसी', 'AC', 'AC', '交流', 'AC', 'переменный ток', 'AC', '교류', 'Wechselstrom', 'AC', 'ไฟฟ้ากระแสสลับ', 'AC', 'AC', 'n:', 'AC', 'AC', 'ΜΕΤΑ ΧΡΙΣΤΟΝ', 'AC', 'AC', 'એસી', 'AC', 'AC', 'AC', 'AC', 'AC', 'AC'),
(264, 'non_ac', 'Non AC', 'নন এসি', 'No AC', 'غير أس', 'गैर एसी', 'غیر AC', '非交流', '非AC', 'Não AC', 'Non AC', 'Pas ca', '비 AC', 'Nicht Wechselstrom', 'Non AC', 'ไม่ใช่ AC', 'Nem AC', 'Niet AC', 'non Passage', 'Non AC', 'AC olmayan', 'Μη AC', 'غیر AC', 'Bukan AC', 'બિન એસી', 'Bez klimatyzacji', 'Не AC', 'ਗੈਰ ਏਸੀ', 'Non AC', 'Ko si AC', 'Ba AC'),
(265, 'male', 'Male', 'পুরুষ', 'Masculino', 'الذكر', 'नर', 'مرد', '男', '男性', 'Masculino', 'мужчина', 'Mâle', '남성', 'Männlich', 'Maschio', 'ชาย', 'Férfi', 'Mannetje', 'Masculum', 'Pria', 'Erkek', 'Αρσενικός', 'نر', 'Lelaki', 'પુરૂષ', 'Męski', 'Чоловік', 'ਮਰਦ', 'Masculin', 'Okunrin', 'Namiji'),
(266, 'female', 'Female', 'মহিলা', 'Hembra', 'إناثا', 'महिला', 'عورت', '女', '女性', 'Fêmea', 'женский', 'Femelle', '여자', 'Weiblich', 'Femmina', 'หญิง', 'Női', 'Vrouw', 'feminam', 'Wanita', 'Kadın', 'Θηλυκός', 'زن', 'Perempuan', 'સ્ત્રી', 'Płeć żeńska', 'Жінка', 'ਔਰਤ', 'Femeie', 'Obinrin', 'Mace'),
(267, 'unpaid', 'Unpaid', 'অপরিশোধিত', 'No pagado', 'غير مدفوع', 'अवैतनिक', 'نام نہاد', '未付', '未払い', 'Não remunerado', 'неоплаченный', 'Non payé', '지불되지 않은', 'Unbezahlt', 'non pagato', 'ยังไม่ได้ชำระ', 'Kifizetetlen', 'onbetaald', 'insolutis', 'Tidak dibayar', 'ödenmemiş', 'Απλήρωτος', 'بدون پرداخت هزینه', 'Tidak dibayar', 'અવેતન', 'Nie zapłacony', 'Несплачені', 'ਅਵੇਤਨਕ', 'neplătit', 'Aisanwo', 'Ba a biya'),
(268, 'partial', 'Partial', 'আংশিক', 'Parcial', 'جزئي', 'आंशिक', 'جزوی', '局部', '部分', 'Parcial', 'частичный', 'Partiel', '부분', 'Teilweise', 'Parziale', 'เป็นบางส่วน', 'Részleges', 'partieel', 'sive partiales', 'Sebagian', 'Kısmi', 'Μερικός', 'جزئي', 'Separa', 'આંશિક', 'Częściowy', 'Частково', 'ਅਧੂਰਾ', 'Parțial', 'Apa kan', 'M'),
(269, 'father', 'Father', 'পিতা', 'Padre', 'الآب', 'पिता', 'باپ', '父亲', 'お父さん', 'Pai', 'Отец', 'Père', '아버지', 'Father', 'Padre', 'พ่อ', 'Apa', 'Vader', 'Pater', 'Ayah', 'baba', 'Πατέρας', 'پدر', 'Bapa', 'પિતા', 'Ojciec', 'Батько', 'ਪਿਤਾ ਜੀ', 'Tată', 'Baba', 'Uba'),
(270, 'mother', 'Mother', 'মাতা', 'Madre', 'أم', 'मां', 'ماں', '母亲', '母', 'Mãe', 'Мама', 'Mère', '어머니', 'Mutter', 'Madre', 'แม่', 'Anya', 'Moeder', 'Mater', 'Ibu', 'anne', 'Μητέρα', 'مادر', 'Ibu', 'મધર', 'Mama', 'Мама', 'ਮਾਤਾ ਜੀ', 'Mamă', 'Iya', 'Uwar'),
(276, 'cash', 'Cash', 'নগদ', 'Efectivo', 'السيولة النقدية', 'कैश', 'نقد', '现金', '現金', 'Dinheiro', 'Денежные средства', 'En espèces', '현금', 'Kasse', 'Contanti', 'เงินสด', 'Készpénz', 'Contant geld', 'Cash', 'Kas', 'Nakit', 'Μετρητά', 'نقدی', 'Tunai', 'કેશ', 'Gotówka', 'Готівка', 'ਨਕਦ', 'Bani gheata', 'Owo owo', 'tsabar kudi'),
(277, 'cheque', 'Cheque', 'চেক', 'Comprobar', 'التحقق من', 'चेक', 'چیک کریں', '检查', 'チェック', 'Verifica', 'Проверить', 'Vérifier', '검사', 'Prüfen', 'Dai unocchiata', 'ตรวจสอบ', 'Jelölje be', 'Controleren', 'represserat', 'Memeriksa', 'Kontrol', 'Ελεγχος', 'بررسی', 'Semak', 'તપાસો', 'Czek', 'Перевірте', 'ਚੈਕ', 'Verifica', 'Ṣayẹwo', 'Duba'),
(278, 'paypal', 'Paypal', 'পেপ্যাল', 'Paypal', 'باي بال', 'Paypal', 'پے پال', '贝宝', 'Paypal', 'Paypal', 'Paypal', 'Pay Pal', '페이팔', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Coin Paypal', 'Paypal', 'Paypal', 'Paypal', 'پی پال', 'Paypal', 'પેપલ', 'Paypal', 'Paypal', 'ਪੇਪਾਲ', 'Paypal', 'PayPal', 'Paypal'),
(279, 'stripe', 'Stripe', 'এস্ট্রিপ', 'Raya', 'شريط', 'पट्टी', 'پٹی', '条纹', 'ストライプ', 'Listra', 'нашивка', 'Bande', '줄무늬', 'Streifen', 'Banda', 'ริ้ว', 'Csík', 'Streep', 'clavo', 'Garis', 'Şerit', 'Ταινία', 'خط خطی', 'Stripe', 'ગેરુનો', 'Naszywka', 'Смуга', 'ਧੱਬਾ', 'Dunga', 'adikala', 'Stripe'),
(280, 'payumoney', 'PayUMoney', 'পে ইউ মানি', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'પેયમની', 'PayUMoney', 'PayUMoney', 'ਪੈਰਾਮਮਨੀ', 'PayUMoney', 'PayIMEMB', 'PayPony'),
(281, 'clicktell', 'Clicktell', 'ক্লিকটেল', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', '클릭', 'Klicken', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'کلیک کنید', 'Clicktell', 'ક્લિકટેલ', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'TẹTẹ', 'Clicktell'),
(282, 'twilio', 'Twilio', 'টুইলিও', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'ટ્વીલો', 'Twilio', 'Твіліо', 'ਟਵਿਲੀਓ', 'Twilio', 'Twilio', 'Twilio'),
(283, 'bulk', 'Bulk', 'বাল্ক', 'Abultar', 'حجم', 'थोक', 'بلک', '块', 'バルク', 'Massa', 'насыпной', 'masse', '대부분', 'Bulk', 'Massa', 'ขนาดใหญ่', 'tömeg', 'massa', 'mole', 'Jumlah besar', 'yığın', 'Ογκος', 'فله', 'Pukal', 'બલ્ક', 'Objętość', 'Масова частка', 'ਬਲਕ', 'masă', 'olopobobo', 'Girma'),
(284, 'msg91', 'MSG91', 'এমএসজি 91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91'),
(285, 'plivo', 'Plivo', 'প্লিবও', 'Plivo', 'Plivo', 'Plivo', 'پلیو', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Pliva', '플라 보', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Πλίβο', 'پلویو', 'Plivo', 'પ્લિવો', 'Plivo', 'Пліво', 'ਪਲਵਾ', 'Plivo', 'Plivo', 'Plivo'),
(286, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', 'كلمه السر', 'पारण शब्द', 'پاس ورڈ', '密码', 'パスワード', 'Senha', 'пароль', 'Mot de passe', '암호', 'Passwort', 'Parola dordine', 'รหัสผ่าน', 'Jelszó', 'Wachtwoord', 'Password', 'Kata sandi', 'Parola', 'Κωδικός πρόσβασης', 'کلمه عبور', 'Kata laluan', 'પાસવર્ડ', 'Hasło', 'Пароль', 'ਪਾਸਵਰਡ', 'Parola', 'Ọrọigbaniwọle', 'Kalmar sirri'),
(287, 'manage_theme', 'Manage Theme', 'থিম পরিচালনা', 'Administrar el tema', 'إدارة الموضوع', 'थीम को प्रबंधित करें', 'تھیم کا نظم کریں', '管理主题', 'テーマを管理する', 'Gerenciar Tema', 'Управление темой', 'Gérer le thème', '테마 관리', 'Thema verwalten', 'Gestisci temi', 'จัดการธีม', 'Téma kezelése', 'Thema beheren', 'curo Natus', 'Kelola Tema', 'Temayı Yönet', 'Διαχείριση Θέματος', 'مدیریت تم', 'Uruskan Tema', 'થીમ સંચાલિત કરો', 'Zarządzaj motywem', 'Управління темою', 'ਥੀਮ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați tema', 'Ṣakoso Akori', 'Sarrafa Jigo'),
(288, 'manage_theme', 'Manage Theme', 'থিম পরিচালনা', 'Administrar el tema', 'إدارة الموضوع', 'थीम को प्रबंधित करें', 'تھیم کا نظم کریں', '管理主题', 'テーマを管理する', 'Gerenciar Tema', 'Управление темой', 'Gérer le thème', '테마 관리', 'Thema verwalten', 'Gestisci temi', 'จัดการธีม', 'Téma kezelése', 'Thema beheren', 'curo Natus', 'Kelola Tema', 'Temayı Yönet', 'Διαχείριση Θέματος', 'مدیریت تم', 'Uruskan Tema', 'થીમ સંચાલિત કરો', 'Zarządzaj motywem', 'Управління темою', 'ਥੀਮ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați tema', 'Ṣakoso Akori', 'Sarrafa Jigo'),
(289, 'manage_language', 'Manage Language', 'ভাষা পরিচালনা করুন', 'Administrar el lenguaje', 'إدارة اللغة', 'भाषा प्रबंधित करें', 'زبان کا نظم کریں', '管理语言', '言語の管理', 'Gerenciar Idioma', 'Управление языком', 'Gérer la langue', '언어 관리', 'Sprache verwalten', 'Gestisci la lingua', 'จัดการภาษา', 'A nyelv kezelése', 'Taal beheren', 'Lingua curo', 'Kelola Bahasa', 'Dili Yönet', 'Διαχείριση γλώσσας', 'مدیریت زبان', 'Uruskan Bahasa', 'ભાષા મેનેજ કરો', 'Zarządzaj językiem', 'Управління мовою', 'ਭਾਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați limba', 'Ṣakoso Ede', 'Sarrafa Harshe'),
(290, 'manage_academic_year', 'Manage Academic Year', 'একাডেমিক বছর পরিচালনা করুন', 'Administrar el año académico', 'إدارة السنة الدراسية', 'अकादमिक वर्ष का प्रबंधन करें', 'تعلیمی سال کا نظم کریں', '管理学年', 'アカデミックイヤーを管理する', 'Gerenciar o Ano Acadêmico', 'Управление учебным годом', 'Gérer lannée académique', '학습 연도 관리', 'Akademisches Jahr verwalten', 'Gestisci lanno accademico', 'จัดการปีการศึกษา', 'Tanulmányi év kezelése', 'Academisch jaar beheren', 'Curo Academic Year', 'Mengelola Tahun Akademik', 'Akademik Yılı Yönet', 'Διαχειριστείτε το ακαδημαϊκό έτος', 'مدیریت سال تحصیلی', 'Urus Tahun Akademik', 'શૈક્ષણિક વર્ષનું સંચાલન કરો', 'Zarządzaj Rokiem akademickim', 'Управління навчальним року', 'ਅਕਾਦਮਿਕ ਸਾਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați anul academic', 'Ṣakoso ọdun ẹkọ', 'Sarrafa Shekarar Kwalejin'),
(291, 'manage_user', 'Manage User', 'ব্যবহারকারী পরিচালনা করুন', 'Administrar usuario', 'إدارة المستخدم', 'उपयोगकर्ता को प्रबंधित करें', 'صارف کا نظم کریں', '管理用户', 'ユーザーを管理する', 'Gerenciar Usuário', 'Управление пользователями', 'Manage User', '사용자 관리', 'Benutzer verwalten', 'Gestisci utente', 'จัดการผู้ใช้', 'Felhasználó kezelése', 'Beheer gebruiker', 'usorum regere', 'Kelola Pengguna', 'Kullanıcıyı Yönet', 'Διαχείριση χρήστη', 'مدیریت کاربر', 'Urus Pengguna', 'વપરાશકર્તાને મેનેજ કરો', 'Zarządzaj Użytkownikiem', 'Керувати користувачем', 'ਯੂਜ਼ਰ ਨੂੰ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați utilizatorul', 'Ṣakoso olumulo', 'Sarrafa Mai amfani'),
(292, 'manage_designation', 'Manage Designation', 'পদবী পরিচালনা করুন', 'Administrar Designación', 'إدارة التعيين', 'पदनाम प्रबंधित करें', 'عہدہ کا انتظام کریں', '管理指定', '指定管理', 'Gerenciar Designação', 'Управление обозначением', 'Gérer la désignation', '지정 관리', 'Benennung verwalten', 'Gestire la designazione', 'จัดการการกำหนด', 'A kijelölés kezelése', 'Aanwijzing beheren', 'curo VOCABULUM', 'Kelola Penunjukan', 'Tanımlamayı Yönetin', 'Διαχείριση ονομασίας', 'مدیریت تعیین', 'Urus Jawatan', 'હોદ્દો મેનેજ કરો', 'Zarządzaj oznaczeniem', 'Керування позначенням', 'ਡਿਜ਼ਾਈਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați desemnarea', 'Ṣakoso awọn Apẹrẹ', 'Sarrafa Zama'),
(293, 'manage_employee', 'Manage Employee', 'কর্মচারী পরিচালনা করুন', 'Administrar Empleado', 'إدارة الموظف', 'कर्मचारी को प्रबंधित करें', 'ملازم کا انتظام کریں', '管理员工', '従業員を管理する', 'Gerenciar Empregado', 'Управление сотрудниками', 'Gérer lemployé', '직원 관리', 'Mitarbeiter verwalten', 'Gestisci dipendente', 'จัดการพนักงาน', 'Alkalmazottak kezelése', 'Beheer werknemer', 'Aliquam curo', 'Mengelola Karyawan', 'Çalışanı Yönet', 'Διαχειριστείτε τον υπάλληλο', 'مدیریت کارمند', 'Urus Pekerja', 'કર્મચારીનું સંચાલન કરો', 'Zarządzaj pracownikiem', 'Управління працівником', 'ਕਰਮਚਾਰੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați angajatul', 'Ṣakoso awọn Abáni', 'Sarrafa Maaikata'),
(294, 'manage_teacher', 'Manage Teacher', 'শিক্ষক পরিচালনা করুন', 'Administra al maestro', 'إدارة المعلم', 'शिक्षक का प्रबंधन करें', 'ٹیچر کا نظم کریں', '管理教师', '教師を管理する', 'Gerenciar professor', 'Управление учителем', 'Gérer lenseignant', '교사 관리', 'Lehrer verwalten', 'Gestisci insegnante', 'จัดการครู', 'Tanár kezelése', 'Beheer de docent', 'curo Teacher', 'Kelola Guru', 'Öğretmen Yönet', 'Διαχειριστείτε τον Δάσκαλο', 'مدیریت معلم', 'Menguruskan Guru', 'શિક્ષકનું સંચાલન કરો', 'Zarządzaj nauczycielem', 'Управління вчителем', 'ਅਧਿਆਪਕ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați învățătorul', 'Ṣakoso awọn Olukọni', 'Sarrafa Malam'),
(295, 'manage_class', 'Manage Class', 'ক্লাস পরিচালনা করুন', 'Administrar clase', 'إدارة الفئة', 'क्लास को प्रबंधित करें', 'کلاس کا نظم کریں', '管理班级', 'クラスを管理する', 'Gerenciar Classe', 'Управление классом', 'Gérer la classe', '수업 관리', 'Klasse verwalten', 'Gestisci classe', 'จัดการ Class', 'Osztály kezelése', 'Beheer klasse', 'curo Paleonemertea Class', 'Kelola Kelas', 'Sınıfı Yönet', 'Διαχείριση της κλάσης', 'مدیریت کلاس', 'Urus Kelas', 'ક્લાસ મેનેજ કરો', 'Zarządzaj klasą', 'Управління класом', 'ਕਲਾਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați clasa', 'Ṣakoso Kilasi', 'Sarrafa Kundin'),
(296, 'manage_section', 'Manage Section', 'শাখা পরিচালনা করুন', 'Administrar la Sección', 'إدارة القسم', 'अनुभाग प्रबंधित करें', 'سیکشن کا نظم کریں', '管理部分', 'セクションを管理する', 'Gerenciar Seção', 'Управление разделами', 'Gérer la section', '섹션 관리', 'Abschnitt verwalten', 'Gestisci sezione', 'จัดการส่วน', 'Szekció kezelése', 'Beheer sectie', 'curo sect', 'Kelola Bagian', 'Bölümü Yönet', 'Διαχείριση της ενότητας', 'مدیریت بخش', 'Urus Seksyen', 'વિભાગ મેનેજ કરો', 'Zarządzaj sekcją', 'Управління розділом', 'ਸੈਕਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați secțiunea', 'Ṣakoso Apakan', 'Sarrafa Sashe'),
(297, 'manage_subject', 'Manage Subject', 'বিষয় পরিচালনা করুন', 'Administrar Asunto', 'إدارة الموضوع', 'विषय प्रबंधित करें', 'موضوع کا نظم کریں', '管理主题', '件名を管理する', 'Gerenciar Assunto', 'Управление предметами', 'Gérer le sujet', '주제 관리', 'Betreff verwalten', 'Gestisci soggetto', 'จัดการหัวเรื่อง', 'Subject kezelése', 'Beheer het onderwerp', 'curo Subject', 'Kelola Subjek', 'Konuyu Yönet', 'Διαχείριση θέματος', 'مدیریت موضوع', 'Uruskan Subjek', 'વિષય સંચાલિત કરો', 'Zarządzaj tematem', 'Керувати темою', 'ਵਿਸ਼ਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați subiectul', 'Ṣakoso Koko-ọrọ', 'Sarrafa Takardar'),
(298, 'manage_syllabus', 'Manage Syllabus', 'সিলেবাস পরিচালনা করুন', 'Administrar plan de estudios', 'إدارة المنهج', 'विषय प्रबंधित करें', 'Syllabus کو منظم کریں', '管理教学大纲', 'シラバスを管理する', 'Gerenciar o Syllabus', 'Управлять программой', 'Gérer le syllabus', '강의 계획서 관리', 'Syllabus verwalten', 'Gestisci il Sillabo', 'จัดการ Syllabus', 'A tanterv kezelése', 'Syllabus beheren', 'curo Syllabus', 'Mengelola Silabus', 'Ders Planını Yönet', 'Διαχείριση της διδακτέας ύλης', 'مدیریت برنامه درسی', 'Uruskan Sukatan pelajaran', 'અભ્યાસક્રમ મેનેજ કરો', 'Zarządzaj programem Syllabus', 'Управління навчальним планом', 'ਸਿਲੇਬਸ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programa', 'Ṣakoso awọn Syllabus', 'Sarrafa Syllabus'),
(299, 'manage_routine', 'Manage Routine', 'রূটিন পরিচালনা করুন', 'Administrar la rutina', 'إدارة الروتينية', 'नियमित रूप से प्रबंधित करें', 'روٹین کا نظم کریں', '管理例程', 'ルーチンを管理する', 'Gerenciar rotina', 'Управление регулярностью', 'Gérer les routines', '루틴 관리', 'Routine verwalten', 'Gestisci routine', 'จัดการประจำ', 'Rutinkezelés', 'Beheer routine', 'curo DEFUNCTORIUS', 'Kelola Rutin', 'Rutini Yönet', 'Διαχείριση της ρουτίνας', 'مدیریت معمول', 'Urus Rutin', 'નિયમિત રૂપે મેનેજ કરો', 'Zarządzaj procedurą', 'Управління звичайним', 'ਰੁਟੀਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rutina', 'Ṣakoso Iṣakoso', 'Sarrafa Gyara'),
(300, 'manage_guardian', 'Manage Guardian', 'অভিভাবক পরিচালনা করুন', 'Administrar Guardian', 'إدارة الجارديان', 'संरक्षक प्रबंधन करें', 'گارڈین کا انتظام کریں', '管理监护人', 'Guardianを管理する', 'Manage Guardian', 'Управление опекуном', 'Manage Guardian', 'Guardian 관리', 'Wächter verwalten', 'Gestisci il guardiano', 'จัดการ Guardian', 'Guardian kezelése', 'Beheer Guardian', 'curo Custodes', 'Mengelola wali', 'Koruyucuyu yönet', 'Διαχειριστείτε τον Κηδεμόνα', 'مدیریت نگهبان', 'Urus Guardian', 'ગાર્ડિયન મેનેજ કરો', 'Zarządzaj opiekunem', 'Управління охоронцем', 'ਗਾਰਡੀਅਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Gardianul', 'Ṣakoso Iṣakoso', 'Sarrafa Guardian'),
(301, 'manage_student', 'Manage Student', 'ছাত্র পরিচালনা করুন', 'Administrar estudiante', 'دارة الطالب', 'छात्र को प्रबंधित करें', 'طالب علم کا انتظام کریں', '管理学生', '学生を管理する', 'Gerenciar aluno', 'Управление Студентом', 'Gérer létudiant', '학생 관리', 'Schüler verwalten', 'Gestisci studente', 'จัดการนักเรียน', 'Diák kezelése', 'Beheer de student', 'Discipulus curo', 'Kelola Siswa', 'Öğrenciyi Yönet', 'Διαχείριση Φοιτητών', 'مدیریت دانش آموز', 'Uruskan Pelajar', 'વિદ્યાર્થીનું સંચાલન કરો', 'Zarządzaj uczniem', 'Управління студентом', 'ਵਿਦਿਆਰਥੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați elevul', 'Ṣakoso awọn ọmọ-iwe', 'Sarrafa dalibi'),
(302, 'manage_assignment', 'Manage Assignment', 'অ্যাসাইনমেন্ট পরিচালনা করুন', 'Administrar la asignación', 'إدارة التعيين', 'असाइनमेंट प्रबंधित करें', 'اہتمام کا نظم کریں', '管理作业', '割り当てを管理する', 'Gerenciar Atribuição', 'Управление назначением', 'Gérer laffectation', '배정 관리', 'Zuordnung verwalten', 'Gestire lincarico', 'จัดการการมอบหมาย', 'Hozzárendelés kezelése', 'Toewijzing beheren', 'curo adsignatione', 'Kelola Penugasan', 'Ödev Yönetimi', 'Διαχείριση της εκχώρησης', 'تخصیص مدیریت', 'Urus Tugasan', 'સોંપણીનું સંચાલન કરો', 'Zarządzaj przypisaniem', 'Управління завданням', 'ਨਿਰਧਾਰਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați asignarea', 'Ṣakoso awọn iṣẹ', 'Sarrafa Ayyukan'),
(303, 'manage_grade', 'Manage Grade', 'গ্রেড পরিচালনা করুন', 'Administrar Grado', 'إدارة الصف', 'ग्रेड प्रबंधित करें', 'گریڈ کا انتظام کریں', '管理成绩', 'グレード管理', 'Gerenciar classificação', 'Управление классом', 'Gérer la note', '학년 관리', 'Klasse verwalten', 'Gestisci Grado', 'จัดการระดับ', 'Kezelje a fokozatot', 'Beheer Grade', 'curo Romani', 'Kelola Grade', 'Sınıfı Yönet', 'Διαχείριση βαθμού', 'مدیریت درجه', 'Urus Gred', 'ગ્રેડ મેનેજ કરો', 'Zarządzaj oceną', 'Управління оцінкою', 'ਗਰੇਡ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați gradul', 'Ṣakoso Iwọn', 'Sarrafa sauti'),
(304, 'manage_exam_term', 'Manage Exam Term', 'পরীক্ষার টার্ম পরিচালনা করুন', 'Administrar el término del examen', 'إدارة مدة الامتحان', 'परीक्षा अवधि का प्रबंधन करें', 'امتحان کی اصطلاح کا انتظام کریں', '管理考试期限', '試験期間を管理する', 'Termo de gerenciamento de exames', 'Управление сроком рассмотрения', 'Gérer le terme dexamen', '시험 기간 관리', 'Prüfungsbedingung verwalten', 'Gestisci il termine dellesame', 'จัดการระยะสอบ', 'Vizsgaidőszak kezelése', 'Beheer examenperiode', 'Curo termino IV', 'Mengelola Ujian Term', 'Sınav Süresini Yönet', 'Διαχειριστείτε τον όρο εξέτασης', 'مدیریت دوره امتحان', 'Mengurus Terma Ujian', 'પરીક્ષા મુદતની વ્યવસ્થા કરો', 'Zarządzaj egzaminem', 'Управління терміном іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați termenul de examinare', 'Ṣakoso akoko Aawo', 'Sarrafa Jarrabawa'),
(305, 'manage_exam_schedule', 'Manage Exam Schedule', 'পরীক্ষার শিডিউল পরিচালনা করুন', 'Administrar el horario del examen', 'إدارة جدول الامتحانات', 'परीक्षा अनुसूची का प्रबंधन करें', 'امتحان شیڈول کا نظم کریں', '管理考试时间表', '試験スケジュールを管理する', 'Manejar o horário do Exame', 'Управление расписанием экзаменов', 'Gérer le calendrier des examens', '시험 일정 관리', 'Prüfungsablauf verwalten', 'Gestisci il calendario degli esami', 'จัดการกำหนดการสอบ', 'A vizsgaütemezés kezelése', 'Beheer examenschema', 'Curo Test Morbi rhoncus', 'Kelola Jadwal Ujian', 'Sınav Takvimini Yönet', 'Διαχειριστείτε το πρόγραμμα εξετάσεων', 'مدیریت برنامه امتحانات', 'Mengurus Jadual Peperiksaan', 'પરીક્ષાનું શેડ્યૂલ મેનેજ કરો', 'Zarządzaj harmonogramem egzaminu', 'Управління розкладом іспитів', 'ਪ੍ਰੀਖਿਆ ਅਨੁਸੂਚੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați programul de examen', 'Ṣakoso Akadii Akadọ', 'Sarrafa Jirgin Nazarin'),
(306, 'manage_suggestion', 'Manage Suggestion', 'সাজেশন পরিচালনা করুন', 'Administrar sugerencia', 'إدارة الاقتراح', 'सुझाव प्रबंधित करें', 'تجویز کا انتظام کریں', '管理建议', '提案を管理する', 'Gerenciar sugestão', 'Управление предложением', 'Gérer la suggestion', '제안 관리', 'Vorschläge verwalten', 'Gestire suggerimenti', 'จัดการคำแนะนำ', 'Javaslat kezelése', 'Suggestie beheren', 'curo Suggestion', 'Kelola Saran', 'Öneriyi Yönet', 'Διαχείριση της πρότασης', 'مدیریت پیشنهادی', 'Uruskan Cadangan', 'સૂચન મેનેજ કરો', 'Zarządzaj sugestią', 'Керувати пропозицією', 'ਸੁਝਾਅ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați sugestiile', 'Ṣakoso Ọrọ', 'Sarrafa Bayani'),
(307, 'manage_exam_attendance', 'Manage Exam Attendance', 'পরীক্ষার উপস্থিতি পরিচালনা করুন', 'Administrar la asistencia al examen', 'إدارة امتحان الحضور', 'परीक्षा उपस्थिति का प्रबंधन करें', 'امتحان کی حاضری کا نظم کریں', '管理考试考勤', '試験出席を管理する', 'Gerenciar atendimento ao exame', 'Управление экзаменом', 'Gérer la présence aux examens', '시험 출석 관리', 'Prüfungsbesuch verwalten', 'Gestisci la frequenza degli esami', 'จัดการการเข้าร่วมการสอบ', 'Vizsgálati részvétel kezelése', 'Beheer examen aanwezigheid', 'Curo IV Attendance', 'Mengelola Kehadiran Ujian', 'Sınav Katılımını Yönet', 'Διαχείριση συμμετοχής στις εξετάσεις', 'مدیریت حضور در آزمون', 'Menguruskan Kehadiran Peperiksaan', 'પરીક્ષા એટેન્ડન્સ મેનેજ કરો', 'Zarządzaj uczestnictwem w egzaminie', 'Керування відвідуванням іспитів', 'ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați participarea la examene', 'Ṣakoso akoko isinwo', 'Sarrafa Harkokin Binciken'),
(308, 'manage_mark', 'Manage Mark', 'মার্ক পরিচালনা করুন', 'Administrar marca', 'إدارة مارك', 'मार्क को प्रबंधित करें', 'مارک کا نظم کریں', '管理标记', 'マークを管理する', 'Gerenciar marca', 'Управление меткой', 'Gérer la marque', '마크 관리', 'Mark verwalten', 'Gestisci Marco', 'จัดการ Mark', 'Mark kezelése', 'Beheer Mark', 'Mark curo', 'Kelola Mark', 'Markı Yönet', 'Διαχείριση σήματος', 'مدیریت علامت گذاری', 'Urus Mark', 'માર્ક મેનેજ કરો', 'Zarządzaj Markem', 'Керувати знаком', 'ਮਾਰਕ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați marca', 'Ṣakoso Samisi', 'Sarrafa Alama'),
(309, 'manage_mark_sheet', 'Manage Mark Sheet', 'মার্ক শীট পরিচালনা করুন', 'Administrar la hoja de marca', 'إدارة علامة ورقة', 'मार्क शीट को प्रबंधित करें', 'مارک شیٹ کا انتظام کریں', '管理标记表', 'マークシートを管理する', 'Manage Mark Sheet', 'Управление меткой', 'Gérer la feuille de marque', '마크 시트 관리', 'Mark Sheet verwalten', 'Gestisci Mark Sheet', 'จัดการแผ่นมาร์ค', 'Márkajelzés kezelése', 'Markeringsblad beheren', 'Curo Mark Sheet', 'Kelola Lembar Mark', 'Marka Sayfasını Yönet', 'Διαχείριση φύλλου σημείων', 'مدیریت برگه علامت گذاری', 'Urus Mark Sheet', 'માર્કશીટ મેનેજ કરો', 'Zarządzaj arkuszem markerów', 'Керування таблицею маркування', 'ਮਾਰਕ ਸ਼ੀਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați foaia de marcă', 'Ṣakoso Ṣiṣisi Marisi', 'Sarrafa Takardar Market'),
(310, 'manage_exam_result', 'Manage Exam Result', 'পরীক্ষার ফলাফল পরিচালনা করুন', 'Administrar el resultado del examen', 'إدارة نتيجة الامتحان', 'परीक्षा परिणाम प्रबंधित करें', 'امتحان کے نتائج کا نظم کریں', '管理考试结果', '試験結果を管理する', 'Gerenciar Resultado do Exame', 'Управлять результатом экзамена', 'Gérer le résultat dexamen', '시험 결과 관리', 'Prüfungsergebnis verwalten', 'Gestisci risultato esame', 'จัดการผลลัพธ์การสอบ', 'Vizsgálati eredmény kezelése', 'Beheer examenresultaat', 'Curo Test Result', 'Mengelola Hasil Ujian', 'Sınav Sonuçlarını Yönet', 'Διαχείριση Αποτέλεσμα Εξετάσεων', 'مدیریت نتیجه آزمون', 'Urus Keputusan Peperiksaan', 'પરીક્ષાનું પરિણામ મેનેજ કરો', 'Zarządzaj wynikami egzaminu', 'Управління результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਨਤੀਜੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul examenului', 'Ṣakoso abajade abajade', 'Sarrafa sakamakon binciken'),
(311, 'manage_promotion', 'Manage Promotion', 'পদোন্নতি পরিচালনা করুন', 'Administrar promoción', 'إدارة الترويج', 'पदोन्नति प्रबंधित करें', 'فروغ کا انتظام کریں', '管理推广', 'プロモーションの管理', 'Gerenciar Promoção', 'Управление продвижением', 'Gérer la promotion', '프로모션 관리', 'Werbung verwalten', 'Gestisci la promozione', 'จัดการโปรโมชัน', 'A promóció kezelése', 'Promotie beheren', 'curo Promotio', 'Kelola Promosi', 'Promosyonu Yönetin', 'Διαχείριση προώθησης', 'مدیریت تبلیغ', 'Uruskan Promosi', 'પ્રમોશન મેનેજ કરો', 'Zarządzaj promocją', 'Керування просуванням', 'ਤਰੱਕੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați promovarea', 'Ṣakoso Ipolowo', 'Sarrafa gabatarwa'),
(312, 'manage_book', 'Manage Book', 'বই পরিচালনা করুন', 'Administrar libro', 'إدارة الكتاب', 'पुस्तक को प्रबंधित करें', 'کتاب کا نظم کریں', '管理书籍', '書籍を管理する', 'Manage Book', 'Управление книгой', 'Gérer le livre', '도서 관리', 'Buch verwalten', 'Gestisci il libro', 'จัดการหนังสือ', 'Könyv kezelése', 'Beheer het boek', 'curo Books', 'Kelola Buku', 'Kitabı Yönet', 'Διαχείριση Βιβλίου', 'مدیریت کتاب', 'Urus Buku', 'બુક મેનેજ કરો', 'Zarządzaj książką', 'Керувати книгою', 'ਬੁੱਕ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cartea', 'Ṣakoso Iwe', 'Sarrafa Littafin'),
(313, 'manage_library_member', 'Manage Library Member', 'লাইব্রেরি সদস্য পরিচালনা করুন', 'Administrar miembro de la biblioteca', 'إدارة عضو المكتبة', 'लाइब्रेरी सदस्य को प्रबंधित करें', 'لائبریری اراکین کو منظم کریں', '管理图书馆成员', '図書館員を管理する', 'Gerenciar Membro da Biblioteca', 'Управление членом библиотеки', 'Gérer un membre de bibliothèque', '도서관 회원 관리', 'Bibliotheksmitglied verwalten', 'Gestisci membro della biblioteca', 'จัดการสมาชิกห้องสมุด', 'A könyvtári tagok kezelése', 'Beheer bibliotheeklid', 'Curo library Member', 'Kelola Anggota Perpustakaan', 'Kütüphane Üyesini Yönet', 'Διαχείριση μέλους μέλους βιβλιοθήκης', 'مدیریت عضو کتابخانه', 'Urus Ahli Perpustakaan', 'લાઇબ્રેરી સભ્ય મેનેજ કરો', 'Zarządzaj członkiem biblioteki', 'Керування членом бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați membrul bibliotecii', 'Ṣakoso awọn Ìkàwé Ẹgbẹ', 'Sarrafa Library Member'),
(314, 'manage_issue_and_return', 'Manage Issue & Return', 'ইস্যু এবং রিটার্ন পরিচালনা করুন', 'Administrar problema y devolución', 'إدارة المشكلة والعودة', 'अंक और वापसी का प्रबंधन करें', 'مسئلہ اور واپسی کا انتظام کریں', '管理问题和退货', '問題とリターンを管理する', 'Gerenciar Problema e Retorno', 'Управление выпуском и возвратом', 'Gérer le problème et le retour', '문제 및 반환 관리', 'Problem und Rückgabe verwalten', 'Gestisci problema e ritorno', 'จัดการปัญหาและการส่งคืน', 'A kibocsátás és a visszatérés kezelése', 'Beheer kwestie en terugkeer', 'Curo Part et Redi', 'Kelola Masalah dan Kembali', 'Sayı ve İadeyi Yönetin', 'Διαχείριση της έκδοσης και της επιστροφής', 'مدیریت مسئله و بازگشت', 'Menguruskan Isu dan Pulangan', 'અંક અને રીટર્ન મેનેજ કરો', 'Zarządzaj problemem i zwrotem', 'Управління проблемою та поверненням', 'ਸਮੱਸਿਆ ਅਤੇ ਵਾਪਸੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați emisiunea și returnarea', 'Ṣakoso oro & Pada', 'Sarrafa Fitawa & Komawa'),
(315, 'manage_vehicle', 'Manage Vehicle', 'যানবাহন পরিচালনা করুন', 'Administrar vehículo', 'إدارة المركبات', 'वाहन को प्रबंधित करें', 'گاڑی کا نظم کریں', '管理车辆', '車両を管理する', 'Gerenciar veículo', 'Управление транспортным средством', 'Gérer le véhicule', '차량 관리', 'Fahrzeug verwalten', 'Gestisci veicolo', 'จัดการยานพาหนะ', 'Jármű kezelése', 'Beheer voertuig', 'curo vehiculum', 'Kelola Kendaraan', 'Aracı Yönet', 'Διαχειριστείτε το όχημα', 'مدیریت خودرو', 'Menguruskan Kenderaan', 'વાહનનું સંચાલન કરો', 'Zarządzaj pojazdem', 'Управління транспортним засобом', 'ਵਾਹਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vehiculul', 'Ṣakoso ọkọ', 'Sarrafa abin hawa'),
(316, 'manage_route', 'Manage Route', 'রুট পরিচালনা করুন', 'Administrar ruta', 'إدارة الطريق', 'रूट प्रबंधित करें', 'روٹ کا نظم کریں', '管理路线', 'ルートを管理する', 'Gerencie a rota', 'Управление маршрутом', 'Gérer la route', '경로 관리', 'Route verwalten', 'Gestisci percorso', 'จัดการเส้นทาง', 'Útvonal kezelése', 'Beheer route', 'curo itineris', 'Kelola Rute', 'Güzergahı Yönet', 'Διαχείριση διαδρομής', 'مدیریت مسیر', 'Urus Laluan', 'રૂટનું સંચાલન કરો', 'Zarządzaj trasą', 'Керувати маршрутом', 'ਰੂਟ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați rută', 'Ṣakoso Itọsọna', 'Sarrafa Hanya'),
(317, 'manage_transport_member', 'Manage Transport Member', 'পরিবহন সদস্য পরিচালনা করুন', 'Administrar miembro de transporte', 'إدارة عضو النقل', 'परिवहन सदस्य को प्रबंधित करें', 'ٹرانسپورٹ اراکین کا انتظام کریں', '管理交通会员', '移送メンバーの管理', 'Gerenciar o Membro do Transporte', 'Управление транспортом', 'Manage Transport Member', '전송 구성원 관리', 'Transportmitglied verwalten', 'Gestisci membro di trasporto', 'จัดการสมาชิกการขนส่ง', 'A közlekedési képviselő kezelése', 'Beheer transportlid', 'Curo onerariam Member', 'Kelola Anggota Transport', 'Taşıyıcı Üyeyi Yönet', 'Διαχειριστείτε το μέλος μεταφοράς', 'مدیریت حمل و نقل', 'Urus Ahli Pengangkutan', 'પરિવહન સભ્યને મેનેજ કરો', 'Zarządzaj członkiem transportu', 'Керувати членом транспорту', 'ਟਰਾਂਸਪੋਰਟ ਮੈਂਬਰ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați transportul membru', 'Ṣakoso awọn Ọkọ-ajo', 'Sarrafa Sanya Manyan'),
(318, 'manage_hostel', 'Manage Hostel', 'ছাত্রাবাস পরিচালনা করুন', 'Administrar Hostel', 'إدارة نزل', 'होस्टल को प्रबंधित करें', 'ہالینڈ کا نظم کریں', '管理旅馆', 'ホステルを管理する', 'Manage Hostel', 'Управление хостелом', 'Gérer lauberge', '호스텔 관리', 'Hostel verwalten', 'Gestisci lostello', 'จัดการ Hostel', 'Kezelheti a Hostelet', 'Beheer Hostel', 'curo Hostel', 'Kelola Hostel', 'Pansiyon Yönet', 'Διαχειριστείτε τον ξενώνα', 'مدیریت خوابگاه', 'Urus Asrama', 'છાત્રાલયનું સંચાલન કરો', 'Zarządzaj Hostelem', 'Управління хостел', 'ਹੋਸਟਲ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Pensiune', 'Ṣakoso awọn ile ayagbe', 'Sarrafa dakunan kwanan dalibai'),
(319, 'manage_room', 'Manage Room', 'কক্ষ পরিচালনা করুন', 'Administrar habitación', 'إدارة الغرفة', 'कक्ष को प्रबंधित करें', 'کمرے کا نظم کریں', '管理室', '部屋を管理する', 'Manage Room', 'Управление комнатой', 'Gérer la pièce', '방 관리', 'Raum verwalten', 'Gestisci stanza', 'จัดการห้อง', 'A szoba kezelése', 'Beheer kamer', 'curo volutpat', 'Kelola Ruang', 'Oda Yönet', 'Διαχείριση δωματίου', 'مدیریت اتاق', 'Urus Bilik', 'રૂમ મેનેજ કરો', 'Zarządzaj pokojem', 'Управління кімнатою', 'ਕਮਰਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați camera', 'Ṣakoso yara', 'Sarrafa dakin'),
(320, 'manage_hostel_member', 'Manage Hostel Member', 'ছাত্রাবাস  সদস্য পরিচালনা করুন', 'Manage Hostel Member', 'إدارة عضو في هوستيل', 'छात्रावास का सदस्य प्रबंधित करें', 'ہالینڈ کے رکن کا انتظام کریں', '管理旅馆会员', 'ホステルメンバーの管理', 'Manage Hostel Member', 'Управление хостелом', 'Gérer le membre dauberge', '호스텔 회원 관리', 'Hostel-Mitglied verwalten', 'Gestisci membro dellostello', 'จัดการสมาชิก Hostel', 'Kezelőtagok kezelése', 'Beheer Hostel Lid', 'Curo Member Hostel', 'Kelola anggota asrama', 'Yönetici Hostel Üyeliği', 'Διαχειριστείτε το μέλος του ξενώνα', 'مدیریت اشتراکی', 'Menguruskan Ahli Asrama', 'છાત્રાલય સભ્યને મેનેજ કરો', 'Zarządzaj Hostelem', 'Керувати членом гуртом', 'ਹੋਸਟਲ ਮੈਂਬਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați un membru al căminului', 'Ṣakoso awọn ọmọ ẹgbẹ ile-ogun', 'Sarrafa Dakunan kwanan dalibai Member'),
(321, 'manage_message', 'Manage Message', 'বার্তা পরিচালনা করুন', 'Administrar mensaje', 'إدارة الرسالة', 'संदेश प्रबंधित करें', 'پیغام کا نظم کریں', '管理消息', 'メッセージを管理する', 'Gerenciar Mensagem', 'Управление сообщением', 'Gérer le message', '메시지 관리', 'Nachricht verwalten', 'Gestisci il messaggio', 'จัดการข้อความ', 'Üzenet kezelése', 'Beheer bericht', 'curo Nuntius', 'Kelola pesan', 'İletiyi Yönet', 'Διαχείριση μηνυμάτων', 'مدیریت پیام', 'Uruskan Mesej', 'સંદેશ મેનેજ કરો', 'Zarządzaj wiadomością', 'Управління повідомленням', 'ਸੁਨੇਹਾ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați mesajul', 'Ṣakoso Ifiranṣẹ', 'Sarrafa Saƙo'),
(322, 'manage_email', 'Manage Email', 'ইমেল পরিচালনা করুন', 'Administrar correo electrónico', 'إدارة البريد الإلكتروني', 'ईमेल प्रबंधित करें', 'ای میل کا انتظام کریں', '管理邮件', 'メールを管理する', 'Gerenciar Email', 'Управление электронной почтой', 'Gérer lemail', '이메일 관리', 'E-Mail verwalten', 'Gestisci email', 'จัดการอีเมล', 'E-mail kezelése', 'Beheer e-mail', 'curo Email', 'Kelola Email', 'E-postayı Yönet', 'Διαχείριση μηνυμάτων ηλεκτρονικού ταχυδρομείου', 'مدیریت ایمیل', 'Urus E-mel', 'ઇમેઇલ સંચાલિત કરો', 'Zarządzaj pocztą e-mail', 'Керувати електронною поштою', 'ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailul', 'Ṣakoso Imeeli', 'Sarrafa Imel'),
(323, 'manage_sms', 'Manage SMS', 'এসএমএস পরিচালনা করুন', 'Administrar SMS', 'إدارة سمز', 'एसएमएस प्रबंधित करें', 'ایس ایم ایس کا نظم کریں', '管理短信', 'SMSの管理', 'Gerenciar SMS', 'Управление SMS', 'Gérer les SMS', 'SMS 관리', 'SMS verwalten', 'Gestisci SMS', 'จัดการ SMS', 'SMS kezelése', 'Beheer SMS', 'curo SMS', 'Kelola SMS', 'SMSi Yönet', 'Διαχείριση SMS', 'مدیریت اس ام اس', 'Uruskan SMS', 'એસએમએસ મેનેજ કરો', 'Zarządzaj SMS-em', 'Управління SMS', 'SMS ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați SMS-ul', 'Ṣakoso SMS', 'Sarrafa SMS'),
(324, 'manage_notice', 'Manage Notice', 'বিজ্ঞপ্তি পরিচালনা করুন', 'Administrar aviso', 'إدارة الإشعار', 'नोटिस प्रबंधित करें', 'نوٹس کا نظم کریں', '管理通知', '通知の管理', 'Gerenciar Aviso', 'Управление уведомлением', 'Gérer lavis', '공지 관리', 'Benachrichtigung verwalten', 'Gestisci avviso', 'จัดการประกาศ', 'Értesítés kezelése', 'Beheer Kennisgeving', 'curo Notitia', 'Mengelola Pemberitahuan', 'Bildirimi Yönet', 'Διαχειριστείτε την ειδοποίηση', 'مدیریت اطلاعیه', 'Urus Notis', 'નોટિસ મેનેજ કરો', 'Zarządzaj zawiadomieniem', 'Керувати повідомленням', 'ਨੋਟਿਸ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați notificarea', 'Ṣakoso Akiyesi', 'Sarrafa sanarwa'),
(325, 'manage_news', 'Manage News', 'সংবাদ পরিচালনা করুন', 'Administrar noticias', 'إدارة الأخبار', 'समाचार प्रबंधित करें', 'خبریں انتظام کریں', '管理新闻', 'ニュースを管理する', 'Gerenciar Notícias', 'Управление новостями', 'Gérer les actualités', '뉴스 관리', 'Nachrichten verwalten', 'Gestisci notizie', 'จัดการข่าวสาร', 'Hírek kezelése', 'Beheer nieuws', 'curo News', 'Kelola Berita', 'Haberleri Yönet', 'Διαχείριση ειδήσεων', 'مدیریت اخبار', 'Urus Berita', 'સમાચાર મેનેજ કરો', 'Zarządzaj wiadomościami', 'Керувати новинами', 'ਖ਼ਬਰਾਂ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați știrile', 'Ṣakoso awọn Iroyin', 'Sarrafa labarai'),
(326, 'manage_holiday', 'Manage Holiday', 'ছুটি পরিচালনা করুন', 'Administrar vacaciones', 'إدارة عطلة', 'छुट्टी का प्रबंधन करें', 'چھٹیوں کا نظم کریں', '管理假期', '休日を管理する', 'Gerenciar férias', 'Управление отдыхом', 'Gérer les vacances', '휴일 관리', 'Feiertage verwalten', 'Gestisci le vacanze', 'จัดการวันหยุด', 'Nyaralás kezelése', 'Vakantie beheren', 'curo Holiday', 'Kelola Liburan', 'Tatili Yönet', 'Διαχείριση Διακοπών', 'مدیریت تعطیلات', 'Urus Percutian', 'હોલિડે મેનેજ કરો', 'Zarządzaj wakacjami', 'Управління відпочинком', 'ਹਾਲੀਆ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați sărbătorile', 'Ṣakoso Isinmi', 'Sarrafa hutu'),
(327, 'manage_event', 'Manage Event', 'ইভেন্ট পরিচালনা করুন', 'Administrar evento', 'إدارة الحدث', 'ईवेंट प्रबंधित करें', 'ایونٹ کا نظم کریں', '管理事件', 'イベントを管理する', 'Gerenciar Evento', 'Управление событием', 'Gérer lévénement', '이벤트 관리', 'Ereignis verwalten', 'Gestisci evento', 'จัดการกิจกรรม', 'Esemény kezelése', 'Beheer evenement', 'curo Vicis', 'Kelola Acara', 'Etkinliği Yönet', 'Διαχείριση του συμβάντος', 'مدیریت رویداد', 'Uruskan Acara', 'ઇવેન્ટ મેનેજ કરો', 'Zarządzaj wydarzeniem', 'Управління подією', 'ਇਵੈਂਟ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați evenimentul', 'Ṣakoso awọn Ti oyan', 'Sarrafa Ayyukan'),
(328, 'manage_visitor', 'Manage Visitor', 'আগন্তুক তথ্য পরিচালনা করুন', 'Administrar visitante', 'إدارة الزائر', 'विज़िटर को प्रबंधित करें', 'وزیٹر کا نظم کریں', '管理访问者', '訪問者を管理する', 'Gerenciar visitantes', 'Управление посетителем', 'Gérer le visiteur', '방문자 관리', 'Besucher verwalten', 'Gestisci visitatore', 'จัดการผู้เข้าชม', 'A látogató kezelése', 'Beheer bezoeker', 'curo Visitor', 'Kelola Pengunjung', 'Ziyaretçiyi Yönet', 'Διαχείριση επισκεπτών', 'مدیریت بازدید کننده', 'Urus Pelawat', 'મુલાકાતીને મેનેજ કરો', 'Zarządzaj odwiedzającym', 'Керувати відвідувачем', 'ਵਿਜ਼ਿਟਰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați vizitatorul', 'Ṣakoso Alejo', 'Sarrafa baƙo'),
(329, 'manage_fee_type', 'Manage Fee Type', 'ফি টাইপ পরিচালনা করুন', 'Administrar tipo de tarifa', 'إدارة نوع الرسوم', 'शुल्क प्रकार का प्रबंधन करें', 'فیس قسم کا انتظام کریں', '管理费用类型', '手数料タイプの管理', 'Gerenciar Tipo de Taxa', 'Управление платежом', 'Gérer le type de frais', '수수료 유형 관리', 'Gebührenart verwalten', 'Gestisci tipo di tariffa', 'จัดการประเภทค่าธรรมเนียม', 'Kezelési díj kezelése', 'Beheer Fee Type', 'Curo Save Type', 'Mengelola Jenis Biaya', 'Ücret Tipini Yönetin', 'Διαχείριση τύπου αμοιβής', 'مدیریت نوع هزینه', 'Urus Jenis Bayaran', 'ફી પ્રકારનું સંચાલન કરો', 'Zarządzaj typem opłaty', 'Управління формами оплати', 'ਫੀਸ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de taxă', 'Ṣakoso awọn iru owo sisan', 'Sarrafa Nauin Farashin'),
(330, 'manage_invoice', 'Manage Invoice', 'চালান পরিচালনা করুন', 'Administrar Factura', 'إدارة الفاتورة', 'चालान प्रबंधित करें', 'انوائس کا انتظام کریں', '管理发票', '請求書の管理', 'Gerenciar Fatura', 'Управление счетом', 'Gérer la facture', '송장 관리', 'Rechnung verwalten', 'Gestisci la fattura', 'จัดการใบแจ้งหนี้', 'Számla kezelése', 'Factuur beheren', 'curo cautionem', 'Kelola Faktur', 'Fatura Yönetimi', 'Διαχείριση τιμολογίου', 'مدیریت فاکتور', 'Urus Invois', 'ઇન્વૉઇસ મેનેજ કરો', 'Zarządzaj fakturą', 'Керувати рахунком-фактурою', 'ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura', 'Ṣakoso Iširo', 'Sarrafa daftari'),
(331, 'manage_due_invoice', 'Manage Due Invoice', 'বাকি চালান পরিচালনা করুন', 'Administrar la factura adeudada', 'إدارة الفاتورة المستحقة', 'नियत चालान प्रबंधित करें', 'ذمہ داری انوائس کا نظم کریں', '管理到期发票', '支払請求の管理', '`Gerenciar a Fatura devida', 'Управление счет-фактурой', 'Gérer la facture due', '송장 처리', 'Fällige Rechnung verwalten', 'Gestire la dovuta fattura', 'จัดการใบแจ้งหนี้ที่ครบกำหนด', 'Betöltési számla kezelése', 'Beheer de verschuldigde factuur', 'Ob cautionem Curo', 'Kelola Tagihan Karena', 'Ödenen Fatura Yönetimi', 'Διαχείριση του οφειλόμενου τιμολογίου', 'مدیریت حساب فوری', 'Urus Invois yang Dikehendaki', 'કારણે ભરતિયું મેનેજ કરો', 'Zarządzaj niezobowiązującą fakturą', 'Керувати належним рахунком-фактурою', 'ਬਾਹਰੀ ਚਲਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați factura datorată', 'Ṣakoso Iširo Ibẹrẹ', 'Sarrafa Ƙari Bayarwa'),
(332, 'manage_expenditure_head', 'Manage Expenditure Head', 'ব্যয় হেড পরিচালনা করুন', 'Administrar Jefe de Gastos', 'إدارة النفقات رئيس', 'व्यय प्रमुख का प्रबंधन करें', 'اخراجات کا انتظام کریں', '管理支出主管', '支出頭を管理する', 'Gerenciar Cabeça de Despesas', 'Управление руководителем расходов', 'Gérer le chef des dépenses', '지출 헤드 관리', 'Ausgabenleiter verwalten', 'Gestisci il capo delle spese', 'จัดการหัวหน้าค่าใช้จ่าย', 'Kezelési költség kezelése', 'Beheer uitgavenhoofd', 'Curo capite sis crustum', 'Mengelola Kepala Biaya', 'Harcama Kafasını Yönet', 'Διαχείριση επικεφαλής δαπανών', 'مدیریت سر هزینه', 'Menguruskan Ketua Perbelanjaan', 'ખર્ચ હેડનું સંચાલન કરો', 'Zarządzaj głową wydatków', 'Управління витратами голови', 'ਖ਼ਰਚੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați șeful cheltuielilor', 'Ṣakoso ori oṣuwọn', 'Sarrafa Shugaban Kuɗi'),
(333, 'manage_expenditure', 'Manage Expenditure', 'ব্যয় পরিচালনা করুন', 'Administrar el gasto', 'إدارة النفقات', 'व्यय प्रबंधित करें', 'اخراجات کا انتظام کریں', '管理支出', '支出の管理', 'Gerenciar Despesas', 'Управление расходами', 'Gérer les dépenses', '지출 관리', 'Ausgaben verwalten', 'Gestisci le spese', 'จัดการค่าใช้จ่าย', 'A kiadások kezelése', 'Uitgaven beheren', 'curo Custus', 'Mengelola Pengeluaran', 'Harcamaları Yönetin', 'Διαχείριση των δαπανών', 'مدیریت هزینه ها', 'Urus Perbelanjaan', 'ખર્ચ મેનેજ કરો', 'Zarządzaj wydatkami', 'Управління витратами', 'ਖਰਚ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cheltuielile', 'Ṣakoso owo sisan', 'Sarrafa Kuɗi'),
(334, 'manage_income_head', 'Manage Income Head', 'আয় হেড পরিচালনা করুন', 'Administrar cabeza de ingresos', 'إدارة رأس الدخل', 'आय हेड प्रबंधन करें', 'انکم سر کا انتظام کریں', '管理收入负责人', '所得管理をする', 'Gerencie o Chefe de Renda', 'Управление доходом', 'Gérer le revenu', '소득 헤드 관리', 'Einkommenskopf verwalten', 'Gestisci il reddito', 'จัดการหัวหน้ารายได้', 'A jövedelemfej kezelése', 'Beheer inkomstenstroom', 'Reditus in caput Curo', 'Mengelola Kepala Pendapatan', 'Gelir Kafasını Yönetin', 'Διαχείριση κεφαλής εισοδήματος', 'مدیریت درآمد سر', 'Urus Ketua Pendapatan', 'ઇન્કમ હેડ મેનેજ કરો', 'Zarządzaj głową przychodów', 'Управління головою доходів', 'ਇਨਕਮ ਹੈਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați capul venitului', 'Ṣakoso Ori-ori Owo Oya', 'Sarrafa Shugaban Asusun'),
(335, 'manage_income', 'Manage Income', 'আয় পরিচালনা করুন', 'Administrar ingresos', 'إدارة الدخل', 'आय प्रबंधित करें', 'آمدنی کا انتظام کریں', '管理收入', '収入を管理する', 'Gerar Renda', 'Управление доходом', 'Gérer le revenu', '소득 관리', 'Einkommen verwalten', 'Gestire il reddito', 'จัดการรายได้', 'Kezelje a jövedelmet', 'Beheer het inkomen', 'curo Reditus', 'Mengelola Penghasilan', 'Geliri Yönet', 'Διαχείριση εσόδων', 'مدیریت درآمد', 'Urus Pendapatan', 'આવકનું સંચાલન કરો', 'Zarządzaj dochodem', 'Управління доходом', 'ਆਮਦਨੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați Venitul', 'Ṣakoso awọn Owo-ori', 'Sarrafa samun kudin shiga'),
(336, 'manage_leave_type', 'Manage Leave Type', 'ছুটির প্রকার পরিচালনা করুন', 'Gestionar tipo de licencia', 'إدارة نوع الإجازة', 'लीव टाइप मैनेज करें', 'چھٹی کی قسم کا انتظام کریں', '管理请假类型', '休暇タイプの管理', 'Gerenciar tipo de licença', 'Управление типом отпуска', 'Gérer le type de congé', '휴가 유형 관리', 'Urlaubstyp verwalten', 'Gestisci tipo di congedo', 'จัดการประเภทการลา', 'Kezelje a szabadság típusát', 'Beheer verloftype', 'Curo discede Type', 'Kelola Tipe Cuti', 'İzin Türünü Yönet', 'Διαχείριση τύπου άδειας', 'مدیریت نوع Type را مدیریت کنید', 'Urus Jenis Cuti', 'રજા પ્રકાર મેનેજ કરો', 'Zarządzaj typem urlopu', 'Керуйте типом відпустки', 'ਛੁੱਟੀ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de concediu', 'Ṣakoso Iru Firanṣẹ', 'Gudanar da nau\'in Hutu'),
(338, 'manage_leave_application', 'Manage Leave Application', 'ছুটির আবেদন পরিচালনা করুন', 'Administrar solicitud de licencia', 'إدارة طلب الإجازة', 'लीव एप्लिकेशन को प्रबंधित करें', 'رخصت کی درخواست کا انتظام کریں', '管理请假申请', '休暇申請の管理', 'Gerenciar licença de aplicação', 'Управление заявкой на выход', 'Gérer la demande de congé', '휴가 신청 관리', 'Urlaubsantrag verwalten', 'Gestisci lasciare l\'applicazione', 'จัดการใบลาออก', 'Kezelje a Leave Application alkalmazást', 'Beheer verlofaanvraag', 'Curo discede Application', 'Kelola Aplikasi Cuti', 'İzin Başvurusunu Yönet', 'Διαχείριση αίτησης άδειας', 'برنامه ترک برنامه را مدیریت کنید', 'Urus Permohonan Cuti', 'રજા એપ્લિકેશન મેનેજ કરો', 'Zarządzaj urlopem', 'Управління відпусткою програми', 'ਲੀਵ ਐਪਲੀਕੇਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați cererea de concediu', 'Ṣakoso ohun elo Fi silẹ', 'Gudanar da Aikace-aikacen barin aiki');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(339, 'manage_approved_application', 'Manage Approved Application', 'অনুমোদিত অ্যাপ্লিকেশন পরিচালনা করুন', 'Gestionar solicitud aprobada', 'إدارة التطبيق المعتمد', 'स्वीकृत आवेदन का प्रबंधन करें', 'منظور شدہ درخواست کا نظم کریں', '管理批准的申请', '承認済みアプリケーションを管理', 'Gerenciar aplicativo aprovado', 'Управление утвержденной заявкой', 'Gérer la demande approuvée', '승인 된 응용 프로그램 관리', 'Genehmigte Anwendung verwalten', 'Gestisci applicazione approvata', 'จัดการแอปพลิเคชันที่ได้รับอนุมัติ', 'A jóváhagyott alkalmazás kezelése', 'Goedgekeurde applicatie beheren', 'Curo probatus Application', 'Kelola Aplikasi yang Disetujui', 'Onaylı Uygulamayı Yönet', 'Διαχείριση εγκεκριμένης εφαρμογής', 'برنامه تأیید شده را مدیریت کنید', 'Urus Permohonan yang Diluluskan', 'માન્ય એપ્લિકેશનનું સંચાલન કરો', 'Zarządzaj zatwierdzoną aplikacją', 'Керуйте затвердженою програмою', 'ਮਨਜੂਰ ਐਪਲੀਕੇਸ਼ਨ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați aplicația aprobată', 'Ṣakoso ohun elo Ti a fọwọsi', 'Sarrafa aikace-aikacen da aka yarda'),
(340, 'manage_decline_application', 'Manage Decline Application', 'অস্বীকার অ্যাপ্লিকেশন পরিচালনা করুন', 'Gestionar solicitud de rechazo', 'إدارة تطبيق رفض', 'Decline Application को Manage करें', 'رد درخواست کا انتظام کریں', '管理拒绝申请', '辞退申請の管理', 'Gerenciar Recusar Aplicativo', 'Управление отклонением заявки', 'Gérer l\'application refusée', '거절 신청 관리', 'Ablehnungsanwendung verwalten', 'Gestisci Rifiuta applicazione', 'จัดการปฏิเสธการสมัคร', 'Kezelje elutasítási kérelmet', 'Beheer weigeringstoepassing', 'Curo Application De Declinatione', 'Kelola Aplikasi Tolak', 'Reddetme Uygulamasını Yönet', 'Διαχείριση αίτησης απόρριψης', 'مدیریت برنامه کاهش را مدیریت کنید', 'Urus Tolak Permohonan', 'ઇનકાર એપ્લિકેશન મેનેજ કરો', 'Zarządzaj odrzuceniem aplikacji', 'Управління програмою відхилення', 'ਅਸਵੀਕਾਰ ਕਾਰਜ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați aplicația de declin', 'Ṣakoso elo Ohun elo idinku', 'Gudanar da Aikace-aikacen ƙi'),
(341, 'manage_waiting_application', 'Manage Waiting Application', 'অপেক্ষার আবেদন পরিচালনা করুন', 'Gestionar solicitud de espera', 'إدارة تطبيق الانتظار', 'प्रतीक्षा आवेदन का प्रबंधन करें', 'انتظار کی درخواست کا نظم کریں', '管理等待中的申请', '待機中のアプリケーションを管理', 'Gerenciar aplicativo em espera', 'Управление ожидающим заявлением', 'Gérer l\'application en attente', '대기중인 응용 프로그램 관리', 'Wartende Anwendung verwalten', 'Gestisci l\'applicazione in attesa', 'จัดการการรอแอปพลิเคชัน', 'Várakozó alkalmazás kezelése', 'Wachtende applicatie beheren', 'Curo Application Notes', 'Kelola Aplikasi yang Menunggu', 'Bekleme Uygulamasını Yönet', 'Διαχείριση εφαρμογής αναμονής', 'برنامه انتظار را مدیریت کنید', 'Uruskan Permohonan Menunggu', 'પ્રતીક્ષા એપ્લિકેશન મેનેજ કરો', 'Zarządzaj aplikacją oczekującą', 'Управління програмою очікування', 'ਉਡੀਕ ਕਾਰਜ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați aplicația în așteptare', 'Ṣakoso ohun elo Idaduro', 'Sarrafa aikace-aikacen jira'),
(343, 'manage_email_template', 'Manage Email Template', 'ইমেল টেম্পলেট পরিচালনা করুন', 'Administrar plantilla de correo electrónico', 'إدارة قالب البريد الإلكتروني', 'ईमेल टेम्पलेट प्रबंधित करें', 'ای میل ٹیمپلیٹ کا نظم کریں', '管理电子邮件模板', 'メールテンプレートの管理', 'Gerenciar modelo de email', 'Управление шаблоном электронной почты', 'Gérer le modèle d\'e-mail', '이메일 템플릿 관리', 'E-Mail-Vorlage verwalten', 'Gestisci modello e-mail', 'จัดการเทมเพลตอีเมล', 'Kezelje az e-mail sablont', 'E-mailsjabloon beheren', 'Formula Manage Email', 'Kelola Template Email', 'E-posta Şablonunu Yönet', 'Διαχείριση προτύπου ηλεκτρονικού ταχυδρομείου', 'مدیریت الگوی ایمیل', 'Urus Templat E-mel', 'ઇમેઇલ Templateાંચો મેનેજ કરો', 'Zarządzaj szablonem e-maila', 'Керуйте шаблоном електронної пошти', 'ਈਮੇਲ ਟੈਪਲੇਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați șablonul de e-mail', 'Ṣakoso Imeeli Awoṣe', 'Gudanar da Shafin imel'),
(344, 'manage_sms_template', 'Manage SMS Template', 'এসএমএস টেম্পলেট পরিচালনা করুন', 'Administrar plantilla de SMS', 'إدارة قالب SMS', 'SMS टेम्पलेट प्रबंधित करें', 'ایس ایم ایس ٹیمپلیٹ کا نظم کریں', '管理短信模板', 'SMSテンプレートを管理', 'Gerenciar modelo de SMS', 'Управление шаблоном SMS', 'Gérer le modèle SMS', 'SMS 템플릿 관리', 'SMS-Vorlage verwalten', 'Gestisci modello SMS', 'จัดการเทมเพลต SMS', 'Kezelje az SMS sablont', 'SMS-sjabloon beheren', 'Curo Formula SMS', 'Kelola Template SMS', 'SMS Şablonunu Yönet', 'Διαχείριση προτύπου SMS', 'مدیریت الگوی پیام کوتاه', 'Urus Templat SMS', 'એસએમએસ Templateાંચો મેનેજ કરો', 'Zarządzaj szablonem SMS', 'Управління шаблоном SMS', 'ਐਸਐਮਐਸ ਟੈਂਪਲੇਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați șablonul SMS', 'Ṣakoso SMS Awoṣe', 'Gudanar da Shafin SMS'),
(345, 'manage_due_fee_email', 'Manage Due Fee Email', 'বাকি ফি ইমেল পরিচালনা করুন', 'Administrar correo electrónico de tarifa debida', 'إدارة البريد الإلكتروني لرسوم الاستحقاق', 'देय शुल्क ईमेल का प्रबंधन करें', 'واجب الادا ای میل کا نظم کریں', '管理到期费用电子邮件', '会費メールの管理', 'Gerenciar e-mail da taxa de vencimento', 'Управление электронной почтой', 'Gérer les e-mails dus', '납부 수수료 이메일 관리', 'E-Mail mit fälliger Gebühr verwalten', 'Gestisci e-mail dovuta', 'จัดการอีเมลค่าธรรมเนียมที่ครบกำหนด', 'Kezelje esedékes e-mail címet', 'Beheer verschuldigde e-mail', 'Curo Ob pretium Email', 'Kelola Email Biaya Hutang', 'Ödenmesi Gereken Ücret E-postasını Yönet', 'Διαχείριση ηλεκτρονικού ταχυδρομείου οφειλόμενης προμήθειας', 'ایمیل پرداخت هزینه را مدیریت کنید', 'Urus E-mel Bayaran Hutang', 'ફી ફી ઇમેઇલ મેનેજ કરો', 'Zarządzaj e-mailem z należną opłatą', 'Управління належною комісією електронної пошти', 'ਬਕਾਇਆ ਫੀਸ ਈਮੇਲ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați e-mail-uri cu taxă', 'Ṣakoso Imeeli isanwo to Daju', 'Gudanar da Lalacewar Biyan Layi'),
(346, 'manage_due_fee_sms', 'Manage Due Fee SMS', 'বাকি ফি এসএমএস পরিচালনা করুন', 'Administrar SMS de tarifa debida', 'إدارة رسوم الرسوم المستحقة', 'देय शुल्क एसएमएस का प्रबंधन करें', 'واجب الادا ایس ایم ایس کا نظم کریں', '管理应付费用短信', '会費SMSの管理', 'Gerenciar SMS de taxa devida', 'Управлять платным SMS', 'Gérer les SMS dus', '납부 수수료 SMS 관리', 'SMS mit fälliger Gebühr verwalten', 'Gestisci SMS a pagamento', 'จัดการค่าบริการ SMS', 'Kezelje esedékes SMS-t', 'Beheer SMS met verschuldigde vergoeding', 'Curo Ob pretium SMS', 'Kelola SMS Biaya Jatuh Tempo', 'Ödenmesi Gereken SMS\'i Yönet', 'Διαχείριση SMS οφειλόμενης προμήθειας', 'پیام کوتاه هزینه پرداخت را مدیریت کنید', 'Urus SMS Bayaran Hutang', 'ફી ફી એસએમએસ મેનેજ કરો', 'Zarządzaj należnymi opłatami SMS', 'Управління SMS з належною комісією', 'ਬਕਾਇਆ ਫੀਸ ਐਸਐਮਐਸ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionarea SMS-urilor cu taxă', 'Ṣakoso Awọn idiyele Fee SMS', 'Gudanar da Sakamakon Ladi na SMS'),
(347, 'manage_absent_email', 'Manage Absent Email', 'অনুপস্থিত ইমেল পরিচালনা করুন', 'Administrar correo electrónico ausente', 'إدارة البريد الإلكتروني الغائب', 'अनुपस्थित ईमेल का प्रबंधन करें', 'غیر حاضر ای میل کا نظم کریں', '管理缺席电子邮件', '不在メールを管理する', 'Gerenciar email ausente', 'Управление отсутствующей электронной почтой', 'Gérer les e-mails absents', '부재 이메일 관리', 'Abwesende E-Mails verwalten', 'Gestisci email assente', 'จัดการอีเมลที่หายไป', 'Kezeli a hiányzó e-maileket', 'Beheer afwezige e-mail', 'Curo abero Email', 'Kelola Email Yang Tidak Ada', 'Eksik E-postayı Yönet', 'Διαχείριση απουσίας email', 'ایمیل غیابی را مدیریت کنید', 'Urus E-mel Tidak Ada', 'ગેરહાજર ઇમેઇલ મેનેજ કરો', 'Zarządzaj nieobecnym adresem e-mail', 'Управління відсутнім електронною поштою', 'ਗੈਰਹਾਜ਼ਰ ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailuri absente', 'Ṣakoso Imeeli Imeeli', 'Gudanar da Wasikar Imel'),
(348, 'manage_absent_sms', 'Manage Absent SMS', 'অনুপস্থিত এসএমএস পরিচালনা করুন', 'Administrar SMS ausentes', 'إدارة SMS الغائب', 'अनुपस्थित एसएमएस का प्रबंधन करें', 'غیر حاضر ایس ایم ایس کا نظم کریں', '管理缺席短信', '不在のSMSを管理する', 'Gerenciar SMS ausente', 'Управление отсутствующими СМС', 'Gérer les SMS absents', '부재중 SMS 관리', 'Abwesende SMS verwalten', 'Gestisci SMS assenti', 'จัดการ SMS ที่หายไป', 'Kezelje a hiányzó SMS-eket', 'Beheer afwezige sms', 'Curo abero SMS', 'Kelola SMS Absen', 'Yok SMS\'i Yönet', 'Διαχείριση απουσίας SMS', 'اس ام اس غایب را مدیریت کنید', 'Urus SMS Tidak Ada', 'ગેરહાજર એસએમએસ મેનેજ કરો', 'Zarządzaj nieobecnymi SMS-ami', 'Управління відсутніми SMS-повідомленнями', 'ਗੈਰਹਾਜ਼ਰ ਐਸ ਐਮ ਐਸ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați SMS-urile absente', 'Ṣakoso SMS asan', 'Sarrafa SMS ba ya nan'),
(350, 'manage_result_email', 'Manage Result Email', 'ফলাফল ইমেল পরিচালনা করুন', 'Gestionar correo electrónico de resultados', 'إدارة البريد الإلكتروني للنتائج', 'परिणाम ईमेल प्रबंधित करें', 'نتیجہ ای میل کا انتظام کریں', '管理结果电子邮件', '結果メールの管理', 'Gerenciar email de resultado', 'Управление электронной почтой результатов', 'Gérer l\'e-mail des résultats', '결과 이메일 관리', 'Ergebnis-E-Mail verwalten', 'Gestisci email risultato', 'จัดการอีเมลผลลัพธ์', 'Kezelje az E-mail címet', 'Beheer resultaat-e-mail', 'Curo Ex Email', 'Kelola Email Hasil', 'Sonuç E-postasını Yönet', 'Διαχείριση email αποτελεσμάτων', 'مدیریت ایمیل نتیجه', 'Urus E-mel Keputusan', 'પરિણામ ઇમેઇલ મેનેજ કરો', 'Zarządzaj wynikami e-mail', 'Управління результатом електронної пошти', 'ਨਤੀਜਾ ਈਮੇਲ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați e-mailul rezultat', 'Ṣakoso Imeeli Esi', 'Gudanar da sakamakon Imel'),
(351, 'manage_result_sms', 'Manage Result SMS', 'ফলাফল এসএমএস পরিচালনা করুন', 'Gestionar SMS de resultados', 'إدارة نتائج الرسائل القصيرة', 'परिणाम एसएमएस का प्रबंधन करें', 'نتیجہ ایس ایم ایس کا نظم کریں', '管理结果短信', '結果SMSを管理', 'Gerenciar SMS de resultado', 'Управление результатом SMS', 'Gérer les SMS de résultat', '결과 SMS 관리', 'Ergebnis-SMS verwalten', 'Gestisci SMS risultato', 'จัดการผลลัพธ์ SMS', 'Kezelje az eredmény SMS-t', 'Beheer resultaat-sms', 'Curo Ex SMS', 'Kelola SMS Hasil', 'Sonuç SMS\'ini Yönet', 'Διαχείριση αποτελεσμάτων SMS', 'پیام کوتاه مدیریت کنید', 'Urus SMS Hasil', 'પરિણામ એસએમએસ મેનેજ કરો', 'Zarządzaj wynikami SMS', 'Управління результатом SMS', 'ਨਤੀਜਾ ਐਸਐਮਐਸ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatele SMS-urilor', 'Ṣakoso awọn Esi Esi', 'Gudanar da Sakamakon Sakamakon sakamako'),
(352, 'manage_study_material', 'Manage Study Material', 'অধ্যয়নের উপাদান পরিচালনা করুন', 'Administrar material de estudio', 'إدارة المواد الدراسية', 'अध्ययन सामग्री का प्रबंधन करें', 'مطالعہ کے مواد کا نظم کریں', '管理学习资料', '学習資料の管理', 'Gerenciar material de estudo', 'Управление учебным материалом', 'Gérer le matériel d\'étude', '학습 자료 관리', 'Studienmaterial verwalten', 'Gestire il materiale di studio', 'จัดการสื่อการเรียน', 'Kezelje tananyag', 'Studiemateriaal beheren', 'Curo Study Material', 'Kelola Bahan Belajar', 'Çalışma Materyallerini Yönet', 'Διαχείριση Υλικού Μελέτης', 'مدیریت مطالب مطالعه', 'Menguruskan Bahan Kajian', 'અભ્યાસ સામગ્રીનું સંચાલન કરો', 'Zarządzaj materiałem do nauki', 'Управління навчальним матеріалом', 'ਅਧਿਐਨ ਸਮੱਗਰੀ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați materialul de studiu', 'Ṣakoso ohun elo Ikẹkọ', 'Gudanar da Abubuwan Nazari'),
(353, 'manage_call_log', 'Manage Call Log', 'কল লগ পরিচালনা করুন', 'Administrar registro de llamadas', 'إدارة سجل المكالمات', 'कॉल लॉग प्रबंधित करें', 'کال لاگ کا انتظام کریں', '管理通话记录', '通話履歴の管理', 'Gerenciar registro de chamadas', 'Управление журналом вызовов', 'Gérer le journal des appels', '통화 기록 관리', 'Anrufliste verwalten', 'Gestisci registro chiamate', 'จัดการบันทึกการโทร', 'Kezelje a hívásnaplót', 'Beheer oproeplog', 'Curo Call Log', 'Kelola Log Panggilan', 'Çağrı Kaydını Yönet', 'Διαχείριση αρχείου καταγραφής κλήσεων', 'ورود به سیستم تماس را مدیریت کنید', 'Urus Log Panggilan', 'ક Callલ લ Manageગ મેનેજ કરો', 'Zarządzaj dziennikiem połączeń', 'Управління журналом викликів', 'ਕਾਲ ਲੌਗ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați jurnalul de apeluri', 'Ṣakoso Wọle Ipe', 'Gudanar da Kira log'),
(354, 'manage_visitor_purpose', 'Manage Visitor Purpose', 'দর্শনার্থীর উদ্দেশ্য পরিচালনা করুন', 'Gestionar el propósito del visitante', 'إدارة الغرض من الزائر', 'आगंतुक उद्देश्य प्रबंधित करें', 'وزیٹر مقصد کا نظم کریں', '管理访客目的', '訪問者の目的を管理する', 'Gerenciar o objetivo do visitante', 'Управление целью посетителя', 'Gérer l\'objectif du visiteur', '방문자 관리 목적', 'Besucherzweck verwalten', 'Gestisci lo scopo del visitatore', 'จัดการวัตถุประสงค์ของผู้เข้าชม', 'Látogatói cél kezelése', 'Beheer bezoekersdoel', 'Curo Visitor Propositum', 'Kelola Tujuan Pengunjung', 'Ziyaretçi Amacını Yönet', 'Διαχείριση σκοπού επισκέπτη', 'هدف بازدید کننده را مدیریت کنید', 'Urus Tujuan Pelawat', 'વિઝિટર હેતુ મેનેજ કરો', 'Zarządzaj celem gościa', 'Управління метою відвідувачів', 'ਵਿਜ਼ਟਰ ਦੇ ਉਦੇਸ਼ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați scopul vizitatorului', 'Ṣakoso Idi Idi Alejo', 'Gudanar da Dalilin Baƙi'),
(355, 'manage_postal_dispatch', 'Manage Postal Dispatch', 'ডাক প্রেরণ পরিচালনা করুন', 'Gestionar envío postal', 'إدارة الإرسال البريدي', 'पोस्टल डिस्पैच का प्रबंधन करें', 'پوسٹل ڈسپیچ کو منظم کریں', '管理邮政派遣', '郵便発送の管理', 'Gerenciar expedição postal', 'Управление почтовой рассылкой', 'Gérer l\'envoi postal', '우편 발송 관리', 'Postversand verwalten', 'Gestire la spedizione postale', 'จัดการส่งไปรษณีย์', 'Kezelje a postai feladást', 'Beheer postverzending', 'Curo Zip Expedite', 'Kelola Pengiriman Pos', 'Posta Dağıtımını Yönetme', 'Διαχείριση ταχυδρομικής αποστολής', 'مدیریت اعزام پستی', 'Urus Penghantaran Pos', 'પોસ્ટલ ડિસ્પેચ મેનેજ કરો', 'Zarządzaj wysyłką pocztową', 'Управління поштовим відправленням', 'ਡਾਕ ਭੇਜਣ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați expedierea poștală', 'Ṣakoso Dispatch ifiweranṣẹ', 'Gudanar da Sanarwar Haraji'),
(356, 'manage_postal_receive', 'Manage Postal Receive', 'ডাক প্রাপ্তি পরিচালনা করুন', 'Administrar recepción postal', 'إدارة الاستلام البريدي', 'पोस्टल रिसीव करें', 'پوسٹل رسید کا انتظام کریں', '管理邮政收据', '郵便受取の管理', 'Gerenciar recebimento postal', 'Управление почтовым получением', 'Gérer la réception postale', '우편 수신 관리', 'Posteingang verwalten', 'Gestisci ricezione postale', 'จัดการการรับไปรษณีย์', 'Kezelje a Postai Fogadást', 'Beheer postontvangst', 'Curo Zip Accipite', 'Kelola Penerimaan Pos', 'Posta Alımını Yönet', 'Διαχείριση ταχυδρομικής λήψης', 'دریافت پستی را مدیریت کنید', 'Urus Terima Pos', 'ટપાલ પ્રાપ્ત કરવાનું મેનેજ કરો', 'Zarządzaj odbiorem pocztowym', 'Управління поштовою квитанцією', 'ਡਾਕ ਪ੍ਰਾਪਤੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați primirea poștală', 'Ṣakoso Gbigba ifiweranṣẹ', 'Gudanar da karɓar Adireshin'),
(357, 'manage_student_type', 'Manage Student Type', 'ছাত্র প্রকার পরিচালনা করুন', 'Administrar tipo de estudiante', 'إدارة نوع الطالب', 'छात्र प्रकार का प्रबंधन करें', 'طلباء کی قسم کا نظم کریں', '管理学生类型', '学生タイプの管理', 'Gerenciar tipo de aluno', 'Управление типом студента', 'Gérer le type d\'élève', '학생 유형 관리', 'Schülertyp verwalten', 'Gestisci il tipo di studente', 'จัดการประเภทนักเรียน', 'Kezelje a hallgatótípust', 'Leerlingtype beheren', 'Discipulus Curo Type', 'Kelola Jenis Siswa', 'Öğrenci Türünü Yönet', 'Διαχείριση τύπου μαθητή', 'نوع دانشجویی را مدیریت کنید', 'Urus Jenis Pelajar', 'વિદ્યાર્થી પ્રકાર મેનેજ કરો', 'Zarządzaj typem ucznia', 'Управління типом студента', 'ਵਿਦਿਆਰਥੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul de student', 'Ṣakoso Iru Ọmọ-iwe', 'Sarrafa Nau\'in Dalibi'),
(358, 'manage_bulk_admission', 'Manage Bulk Admission', 'বাল্ক ভর্তি পরিচালনা করুন', 'Administrar la admisión masiva', 'إدارة القبول الجماعي', 'थोक प्रवेश का प्रबंधन करें', 'بلک داخلہ کا انتظام کریں', '管理批量入场', '一括受付を管理する', 'Gerenciar admissão em massa', 'Управление массовым приемом', 'Gérer l\'admission en masse', '대량 입학 관리', 'Masseneintritt verwalten', 'Gestisci ammissione in blocco', 'จัดการการรับเข้าจำนวนมาก', 'Kezelje a tömeges belépést', 'Beheer bulktoegang', 'Curo mole Praesent', 'Kelola Penerimaan Massal', 'Toplu Kabulü Yönetme', 'Διαχείριση μαζικής εισαγωγής', 'مدیریت پذیرش انبوه', 'Urus Kemasukan Pukal', 'બલ્ક પ્રવેશનું સંચાલન કરો', 'Zarządzaj wstępem masowym', 'Управління масовим доступом', 'ਬਲਕ ਦਾਖਲੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați admiterea în vrac', 'Ṣakoso Gbigba Gbigba', 'Gudanar da Izinin shigowa'),
(359, 'manage_online_admission', 'Manage Online Admission', 'অনলাইন ভর্তি পরিচালনা করুন', 'Administrar la admisión en línea', 'إدارة القبول عبر الإنترنت', 'ऑनलाइन एडमिशन का प्रबंध करें', 'آن لائن داخلے کا انتظام کریں', '管理在线入学', 'オンライン入場を管理する', 'Gerenciar Admissão Online', 'Управление онлайн-входом', 'Gérer l\'admission en ligne', '온라인 입학 관리', 'Online-Zulassung verwalten', 'Gestisci l\'ammissione online', 'จัดการการรับเข้าเรียนออนไลน์', 'Kezelje az online belépést', 'Beheer online toegang', 'Curo Online De admissione', 'Kelola Penerimaan Online', 'Çevrimiçi Kabulü Yönet', 'Διαχείριση διαδικτυακής εισαγωγής', 'پذیرش آنلاین را مدیریت کنید', 'Urus Kemasukan Dalam Talian', 'ઓનલાઇન પ્રવેશ મેનેજ કરો', 'Zarządzaj wstępem online', 'Управління вступом в Інтернет', 'Adਨਲਾਈਨ ਦਾਖਲੇ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați admiterea online', 'Ṣakoso Gbigbawọle Ayelujara', 'Gudanar da Izinin shiga Yanar gizo'),
(360, 'manage_library_member', 'Manage Library Member', 'গ্রন্থাগার সদস্য পরিচালনা করুন', 'Administrar miembro de biblioteca', 'إدارة عضو المكتبة', 'लाइब्रेरी सदस्य प्रबंधित करें', 'لائبریری ممبر کا نظم کریں', '管理图书馆会员', 'ライブラリメンバーの管理', 'Gerenciar membro da biblioteca', 'Управление членом библиотеки', 'Gérer un membre de la bibliothèque', '도서관 회원 관리', 'Bibliotheksmitglied verwalten', 'Gestisci membro della biblioteca', 'จัดการสมาชิกห้องสมุด', 'Kezelje a könyvtártagot', 'Beheer bibliotheeklid', 'Curo library Member', 'Kelola Anggota Perpustakaan', 'Kütüphane Üyesini Yönet', 'Διαχείριση μέλους βιβλιοθήκης', 'عضو کتابخانه را مدیریت کنید', 'Urus Ahli Perpustakaan', 'લાઇબ્રેરી સભ્ય મેનેજ કરો', 'Zarządzaj członkiem biblioteki', 'Управління учасником бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਸਦੱਸ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați membrul bibliotecii', 'Ṣakoso Ẹgbẹ Ile-ikawe', 'Gudanar da Member Library'),
(361, 'manage_merit_list', 'Manage Merit List', 'মেধা তালিকা পরিচালনা করুন', 'Gestionar lista de méritos', 'إدارة قائمة الجدارة', 'मेरिट लिस्ट को मैनेज करें', 'میرٹ لسٹ کا نظم کریں', '管理功绩清单', 'メリットリストの管理', 'Gerenciar lista de mérito', 'Управление списком заслуг', 'Gérer la liste de mérite', '장점 목록 관리', 'Verdienstliste verwalten', 'Gestisci elenco di merito', 'จัดการรายการบุญ', 'Kezelje az érdemlistát', 'Beheer verdienstenlijst', 'Curo quod mereri List', 'Kelola Daftar Jasa', 'Başarı Listesini Yönet', 'Διαχείριση λίστας αξιών', 'مدیریت لیست شایستگی', 'Urus Senarai Nilai', 'મેરિટ સૂચિ મેનેજ કરો', 'Zarządzaj listą zasług', 'Управління списком заслуг', 'ਗੁਣ ਸੂਚੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați lista de merite', 'Ṣakoso akojọ Akojọ', 'Gudanar da Jerin Lissafi'),
(362, 'manage_result_card', 'Manage Result Card', 'ফলাফল কার্ড পরিচালনা করুন', 'Administrar tarjeta de resultados', 'إدارة بطاقة النتيجة', 'परिणाम कार्ड प्रबंधित करें', 'نتیجہ کارڈ کا نظم کریں', '管理结果卡', '結果カードの管理', 'Gerenciar cartão de resultados', 'Управление картой результатов', 'Gérer la carte des résultats', '결과 카드 관리', 'Ergebniskarte verwalten', 'Gestisci scheda risultati', 'จัดการการ์ดผลลัพธ์', 'Kezelje az eredménykártyát', 'Resultaatkaart beheren', 'Result Card Manage', 'Kelola Kartu Hasil', 'Sonuç Kartını Yönet', 'Διαχείριση κάρτας αποτελεσμάτων', 'مدیریت کارت نتیجه', 'Urus Kad Hasil', 'પરિણામ કાર્ડ મેનેજ કરો', 'Zarządzaj kartą wyników', 'Управління карткою результатів', 'ਨਤੀਜਾ ਕਾਰਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cardul de rezultate', 'Ṣakoso kaadi Esi', 'Gudanar da Sakamakon Sakamako'),
(363, 'manage_exam_term_result', 'Manage Exam Term Result', 'পরীক্ষার টার্ম রেজাল্ট পরিচালনা করুন', 'Gestionar resultado del examen', 'إدارة نتيجة مصطلح الامتحان', 'परीक्षा परिणाम का प्रबंधन करें', 'امتحان کی مدت کے نتائج کا نظم کریں', '管理考试学期成绩', '試験期間結果の管理', 'Gerenciar o Resultado do Termo do Exame', 'Управление экзаменом Срок Результат', 'Gérer les résultats des examens', '시험 기간 결과 관리', 'Ergebnis des Prüfungszeitraums verwalten', 'Gestisci risultato termine esame', 'จัดการผลคะแนนสอบ', 'Kezelje a vizsgaidő eredményét', 'Examentermijnresultaat beheren', 'Curo termino Test Result', 'Kelola Hasil Jangka Ujian', 'Sınav Dönemi Sonucunu Yönet', 'Διαχείριση αποτελεσμάτων όρων εξετάσεων', 'نتیجه آزمون آزمون را مدیریت کنید', 'Uruskan Keputusan Jangka Masa Peperiksaan', 'પરીક્ષાનું ટર્મ પરિણામ મેનેજ કરો', 'Zarządzaj wynikiem semestru egzaminu', 'Управління результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦੇ ਨਤੀਜੇ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați rezultatul termenului examenului', 'Ṣakoso esi Akoko Idanwo', 'Gudanar da Sakamakon Gwajin gwaji'),
(364, 'manage_exam_final_result', 'Manage Exam Final Result', 'পরীক্ষার চূড়ান্ত ফলাফল পরিচালনা করুন', 'Gestionar resultado final del examen', 'إدارة النتيجة النهائية للامتحان', 'परीक्षा का अंतिम परिणाम प्रबंधित करें', 'امتحان کے آخری نتائج کا نظم کریں', '管理考试最终结果', '試験の最終結果を管理する', 'Gerenciar o resultado final do exame', 'Управляйте окончательным результатом экзамена', 'Gérer le résultat final de l\'examen', '시험 최종 결과 관리', 'Endergebnis der Prüfung verwalten', 'Gestisci il risultato finale dell\'esame', 'จัดการผลสอบปลายภาค', 'Kezelje a vizsga végleges eredményét', 'Eindresultaat van examen beheren', 'Curo IV captorum eventus superae', 'Kelola Hasil Akhir Ujian', 'Sınav Son Sonucunu Yönet', 'Διαχείριση τελικού αποτελέσματος εξετάσεων', 'نتیجه نهایی آزمون را مدیریت کنید', 'Uruskan Keputusan Akhir Peperiksaan', 'પરીક્ષાનું અંતિમ પરિણામ મેનેજ કરો', 'Zarządzaj końcowym wynikiem egzaminu', 'Управління кінцевим результатом іспиту', 'ਪ੍ਰੀਖਿਆ ਦੇ ਅੰਤਮ ਨਤੀਜੇ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați rezultatul final al examenului', 'Ṣakoso Esi Ikẹhin Idanwo', 'Gudanar da Sakamakon Gwaji na Karshe'),
(365, 'manage_all_result_card', 'Manage All Result Card', 'সমস্ত ফলাফল কার্ড পরিচালনা করুন', 'Administrar toda la tarjeta de resultados', 'إدارة جميع بطاقة النتائج', 'सभी परिणाम कार्ड प्रबंधित करें', 'تمام نتائج کارڈ کا نظم کریں', '管理所有结果卡', 'すべての結果カードを管理', 'Gerenciar cartão de todos os resultados', 'Управление всеми картами результатов', 'Gérer toutes les cartes de résultats', '모든 결과 카드 관리', 'Alle Ergebniskarten verwalten', 'Gestisci tutta la scheda risultato', 'จัดการการ์ดผลลัพธ์ทั้งหมด', 'Kezelje az összes eredménykártyát', 'Beheer alle resultatenkaart', 'Curo Omnia Ex Card', 'Kelola Semua Kartu Hasil', 'Tüm Sonuç Kartını Yönet', 'Διαχείριση όλων των καρτών αποτελεσμάτων', 'تمام کارت نتیجه را مدیریت کنید', 'Urus Semua Keputusan Kad', 'બધા પરિણામ કાર્ડ મેનેજ કરો', 'Zarządzaj wszystkimi kartami wyników', 'Керуйте усіма картками результатів', 'ਸਾਰੇ ਨਤੀਜੇ ਕਾਰਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați toate cardurile de rezultate', 'Ṣakoso Gbogbo Kaadi Esi', 'Sarrafa Duk Sakamakon sakamako'),
(366, 'manage_complain_type', 'Manage Complain Type', 'অভিযোগের ধরণ পরিচালনা করুন', 'Gestionar tipo de queja', 'إدارة نوع الشكوى', 'शिकायत प्रकार प्रबंधित करें', 'شکایت کی قسم کا نظم کریں', '管理投诉类型', '苦情タイプの管理', 'Gerenciar tipo de reclamação', 'Управление типом жалобы', 'Gérer le type de plainte', '불만 유형 관리', 'Beschwerde-Typ verwalten', 'Gestisci il tipo di reclamo', 'จัดการประเภทการร้องเรียน', 'Kezelje a panasz típusát', 'Klachttype beheren', 'Queri administrare Type', 'Kelola Jenis Keluhan', 'Şikayet Türünü Yönet', 'Διαχείριση τύπου παραπόνου', 'مدیریت نوع شکایت', 'Urus Jenis Aduan', 'ફરિયાદ પ્રકાર મેનેજ કરો', 'Zarządzaj typem skargi', 'Керуйте типом скарги', 'ਸ਼ਿਕਾਇਤ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați tipul de reclamație', 'Ṣakoso Iru Complain', 'Gudanar da Nau\'in Kira'),
(367, 'manage_complain', 'Manage Complain', 'অভিযোগ পরিচালনা করুন', 'Gestionar Quejarse', 'إدارة الشكوى', 'शिकायत का प्रबंधन करें', 'شکایت کا انتظام کریں', '管理投诉', '苦情を管理する', 'Gerenciar Reclamação', 'Управление Пожаловаться', 'Gérer les plaintes', '불만 관리', 'Beschwerde verwalten', 'Gestisci Reclami', 'จัดการเรื่องร้องเรียน', 'Kezelje Panasz', 'Klacht beheren', 'Queri administrare', 'Kelola Keluhan', 'Şikayeti Yönet', 'Διαχείριση παραπόνων', 'مدیریت شکایت', 'Uruskan Aduan', 'ફરિયાદ મેનેજ કરો', 'Zarządzaj reklamacją', 'Керуйте скаргою', 'ਸ਼ਿਕਾਇਤ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați plângerea', 'Ṣakoso Ẹdun', 'Gudanar da Kara'),
(368, 'manage_discount', 'Manage Discount', 'ডিসকাউন্ট পরিচালনা করুন', 'Gestionar descuento', 'إدارة الخصم', 'डिस्काउंट प्रबंधित करें', 'ڈسکاؤنٹ کا انتظام کریں', '管理折扣', '割引を管理', 'Gerenciar desconto', 'Управление скидкой', 'Gérer la remise', '할인 관리', 'Rabatt verwalten', 'Gestisci sconto', 'จัดการส่วนลด', 'Kedvezmény kezelése', 'Korting beheren', 'curo Price', 'Kelola Diskon', 'İndirimi Yönet', 'Διαχείριση έκπτωσης', 'مدیریت تخفیف', 'Urus Diskaun', 'ડિસ્કાઉન્ટ મેનેજ કરો', 'Zarządzaj zniżką', 'Управління знижкою', 'ਛੂਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați reducerea', 'Ṣakoso ẹdinwo', 'Gudanar da Ragewa'),
(1231, 'used', 'Used', 'ব্যবহৃত', 'Usó', 'مستخدم', 'उपयोग किया गया', 'استعمال کیا جاتا ہے', '用过的', '中古', 'Usada', 'Использовал', 'Utilisée', '사용 된', 'Gebraucht', 'Usata', 'ใช้แล้ว', 'Használt', 'Gebruikt', 'Used', 'Digunakan', 'Kullanılmış', 'Μεταχειρισμένος', 'استفاده شده', 'terpakai', 'વપરાયેલ', 'Używany', 'Використовується', 'ਵਰਤਿਆ', 'Folosit', 'Lo', 'Amfani'),
(1228, 'unit', 'Unit', 'ইউনিট', 'Unidad', 'وحدة', 'इकाई', 'یونٹ', '单元', '単位', 'Unidade', 'Ед. изм', 'Unité', '단위', 'Einheit', 'Unità', 'หน่วย', 'Mértékegység', 'Eenheid', 'Unitas', 'Satuan', 'Birim', 'Μονάδα', 'واحد', 'Unit', 'એકમ', 'Jednostka', 'одиниця', 'ਯੂਨਿਟ', 'Unitate', 'Ẹyọ', 'Naúrar'),
(1229, 'kg', 'KG', 'কেজি', 'KG', 'كلغ', 'किलोग्राम', 'کلو', '公斤', 'KG', 'KG', 'КГ', 'KG', '킬로그램', 'KG', 'KG', 'กิโลกรัม', 'KG', 'KG', 'KG', 'KG', 'KİLOGRAM', 'ΚΙΛΟ', 'کیلوگرم', 'KG', 'કિલો ગ્રામ', 'KG', 'КГ', 'ਕੇ.ਜੀ', 'KG', 'KG', 'KG'),
(1230, 'piece', 'Piece', 'টুকরা', 'Pieza', 'قطعة', 'टुकड़ा', 'ٹکڑا', '片', 'ピース', 'Peça', 'Кусок', 'Pièce', '조각', 'Stück', 'Pezzo', 'ชิ้นส่วน', 'Darab', 'Deel', 'Piece', 'Bagian', 'Adet', 'Κομμάτι', 'قطعه', 'sekeping', 'પીસ', 'Sztuka', 'шматочок', 'ਟੁਕੜਾ', 'Bucată', 'Nkan', 'Yanki'),
(373, 'manage_user_credential', 'Manage User Credential', 'ব্যবহারকারী ক্রীডেন্শাল পরিচালনা করুন', 'Administrar credencial de usuario', 'إدارة بيانات اعتماد المستخدم', 'उपयोगकर्ता क्रेडेंशियल प्रबंधित करें', 'صارف کے اسناد کا نظم کریں', '管理用户凭证', 'ユーザー資格情報の管理', 'Gerenciar credenciais do usuário', 'Управление учетными данными пользователя', 'Gérer les informations d\'identification de l\'utilisateur', '사용자 자격 증명 관리', 'Benutzeranmeldeinformationen verwalten', 'Gestisci credenziali utente', 'จัดการข้อมูลรับรองผู้ใช้', 'Kezelje a felhasználói hitelesítő adatokat', 'Beheer gebruikersgegevens', 'Curo User Credential', 'Kelola Kredensial Pengguna', 'Kullanıcı Kimlik Bilgilerini Yönet', 'Διαχείριση διαπιστευτηρίων χρήστη', 'اعتبار کاربر را مدیریت کنید', 'Urus Kelayakan Pengguna', 'વપરાશકર્તા ઓળખપત્ર મેનેજ કરો', 'Zarządzaj poświadczeniami użytkowników', 'Керуйте обліковим записом користувача', 'ਉਪਭੋਗਤਾ ਪ੍ਰਮਾਣੀਕਰਣ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionează acreditarea utilizatorului', 'Ṣakoso ijẹrisi Olumulo', 'Gudanar da Shaidar Shaida'),
(374, 'manage_activity_log', 'Manage Activity Log', 'কার্যকলাপ লগ পরিচালনা করুন', 'Administrar registro de actividad', 'إدارة سجل النشاط', 'गतिविधि लॉग प्रबंधित करें', 'سرگرمی لاگ کا انتظام کریں', '管理活动日志', 'アクティビティログの管理', 'Gerenciar log de atividades', 'Управление журналом активности', 'Gérer le journal d\'activité', '활동 로그 관리', 'Aktivitätsprotokoll verwalten', 'Gestisci registro attività', 'จัดการบันทึกกิจกรรม', 'Tevékenységi napló kezelése', 'Activiteitenlogboek beheren', 'Curo Acta confundendi', 'Kelola Log Aktivitas', 'Etkinlik Günlüğünü Yönet', 'Διαχείριση καταγραφής δραστηριότητας', 'مدیریت فعالیت را مدیریت کنید', 'Urus Log Aktiviti', 'પ્રવૃત્તિ લ Manageગ મેનેજ કરો', 'Zarządzaj dziennikiem aktywności', 'Управління журналом активності', 'ਗਤੀਵਿਧੀ ਲੌਗ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați jurnalul de activități', 'Ṣakoso Wọle ṣiṣe', 'Gudanar da Lissafin Aiki'),
(375, 'manage_feedback', 'Manage Feedback', 'প্রতিক্রিয়া পরিচালনা করুন', 'Gestionar Comentarios', 'ادارة الردود', 'प्रतिक्रिया प्रबंधित करें', 'آراء کا نظم کریں', '管理反馈', 'フィードバックの管理', 'Gerenciar comentários', 'Управление обратной связью', 'Gérer les commentaires', '피드백 관리', 'Bewertungen verwalten', 'Gestire feedback', 'จัดการคำติชม', 'visszajelzés kezelése', 'Feedback beheren', 'curo videre', 'Kelola Umpan Balik', 'Geri Bildirimi Yönetin', 'Διαχείριση σχολίων', 'مدیریت بازخورد', 'Urus Maklum Balas', 'પ્રતિસાદ મેનેજ કરો', 'zarządzać informacją zwrotną', 'Управління зворотним зв\'язком', 'ਫੀਡਬੈਕ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'gestionați feedback', 'Ṣakoso Esi', 'Gudanar da Ra\'ayin'),
(376, 'manage_user_role', 'Manage User Role', 'ব্যবহারকারীর ভূমিকা পরিচালনা করুন', 'Administrar rol de usuario', 'إدارة دور المستخدم', 'उपयोगकर्ता भूमिका प्रबंधित करें', 'صارف کے کردار کا نظم کریں', '管理用户角色', 'ユーザー役割の管理', 'Gerenciar função do usuário', 'Управление ролью пользователя', 'Gérer le rôle utilisateur', '사용자 역할 관리', 'Benutzerrolle verwalten', 'Gestisci ruolo utente', 'จัดการบทบาทของผู้ใช้', 'Kezelje a felhasználói szerepet', 'Gebruikersrol beheren', 'Partes quas usorum regere', 'Kelola Peran Pengguna', 'Kullanıcı Rolünü Yönet', 'Διαχείριση ρόλου χρήστη', 'نقش کاربر را مدیریت کنید', 'Urus Peranan Pengguna', 'વપરાશકર્તાની ભૂમિકા મેનેજ કરો', 'Zarządzaj rolą użytkownika', 'Управління роллю користувача', 'ਉਪਭੋਗਤਾ ਦੀ ਭੂਮਿਕਾ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați rolul utilizatorului', 'Ṣakoso ipa olumulo', 'Gudanar da Matsayin Mai amfani'),
(377, 'manage_role_permission', 'Manage Role Permission', 'ভূমিকা অনুমতি পরিচালনা করুন', 'Administrar permisos de roles', 'إدارة إذن الدور', 'भूमिका अनुमति प्रबंधित करें', 'کردار کی اجازت کا انتظام کریں', '管理角色权限', '役割の権限を管理する', 'Gerenciar permissão de função', 'Управление разрешением ролей', 'Gérer les autorisations de rôle', '역할 권한 관리', 'Rollenberechtigung verwalten', 'Gestisci autorizzazione ruolo', 'จัดการการอนุญาตตามบทบาท', 'Kezelje a szerepkör engedélyét', 'Rolrechten beheren', 'Curo munere licentiam', 'Kelola Izin Peran', 'Rol İznini Yönet', 'Διαχείριση άδειας ρόλου', 'مجوز نقش را مدیریت کنید', 'Urus Kebenaran Peranan', 'ભૂમિકા પરવાનગીનું સંચાલન કરો', 'Zarządzaj uprawnieniami roli', 'Управління дозволом на роль', 'ਭੂਮਿਕਾ ਅਨੁਮਤੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionarea permisiunii de rol', 'Ṣakoso igbanilaaye ipa', 'Gudanar da Izinin Matsayi'),
(379, 'manage_e_book', 'Manage E-Book', 'ই-বুক পরিচালনা করুন', 'Administrar libro electrónico', 'إدارة الكتاب الإلكتروني', 'ई-बुक की व्यवस्था करें', 'ای بک کا نظم کریں', '管理电子书', '電子書籍を管理', 'Gerenciar E-Book', 'Управление электронной книгой', 'Gérer le livre électronique', '전자 책 관리', 'E-Book verwalten', 'Gestisci e-book', 'จัดการ E-Book', 'Kezelje az E-könyvet', 'Beheer E-Book', 'Curo E-', 'Kelola E-Book', 'E-Kitabı Yönet', 'Διαχείριση E-Book', 'کتاب الکترونیکی را مدیریت کنید', 'Urus E-Book', 'ઇ-બુક મેનેજ કરો', 'Zarządzaj e-bookiem', 'Керуйте електронною книгою', 'ਈ-ਬੁੱਕ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați e-book', 'Ṣakoso E-Book', 'Gudanar da Littafin E-Book'),
(382, 'manage_activity', 'Manage Activity', 'কার্যকলাপ পরিচালনা করুন', 'Administrar actividad', 'إدارة النشاط', 'गतिविधि प्रबंधित करें', 'سرگرمی کا نظم کریں', '管理活动', 'アクティビティの管理', 'Gerenciar atividade', 'Управление деятельностью', 'Gérer lactivité', '활동 관리', 'Aktivität verwalten', 'Gestisci attività', 'จัดการกิจกรรม', 'Tevékenység kezelése', 'Activiteit beheren', 'curo activitate', 'Kelola Aktivitas', 'Etkinliği Yönet', 'Διαχείριση της δραστηριότητας', 'مدیریت فعالیت', 'Urus Aktiviti', 'પ્રવૃત્તિનું સંચાલન કરો', 'Zarządzaj aktywnością', 'Керування діяльністю', 'ਸਰਗਰਮੀ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați activitatea', 'Ṣakoso Awọn aṣayan iṣẹ', 'Sarrafa Ayyukan'),
(384, 'manage_payment', 'Manage Payment', 'পেমেন্ট পরিচালনা করুন', 'Administrar el pago', 'إدارة الدفع', 'भुगतान प्रबंधित करें', 'ادائیگی کا نظم کریں', '管理付款', 'お支払いの管理', 'Gerenciar Pagamento', 'Управление платежами', 'Gérer le paiement', '지불 관리', 'Zahlung verwalten', 'Gestisci il pagamento', 'จัดการการชำระเงิน', 'Fizetés kezelése', 'Beheer de betaling', 'curo Payment', 'Kelola Pembayaran', 'Ödemeyi Yönet', 'Διαχείριση της πληρωμής', 'مدیریت پرداخت', 'Urus Pembayaran', 'ચુકવણી મેનેજ કરો', 'Zarządzaj płatnością', 'Управління платежами', 'ਭੁਗਤਾਨ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați plata', 'Ṣakoso Isanwo', 'Sarrafa Biyan kuɗi'),
(385, 'manage_slider', 'Manage Slider', 'স্লাইডার পরিচালনা করুন', 'Administrar control deslizante', 'إدارة المتزلج', 'स्लाइडर प्रबंधित करें', 'سلائیڈر کا نظم کریں', '管理滑块', 'スライダーの管理', 'Gerenciar Slider', 'Управление слайдером', 'Gérer le curseur', '슬라이더 관리', 'Schieberegler verwalten', 'Gestisci il dispositivo di scorrimento', 'จัดการ Slider', 'A csúszka kezelése', 'Beheer schuifregelaar', 'curo Slider', 'Kelola Slider', 'Kaydırıcıyı Yönet', 'Διαχειριστείτε το ρυθμιστικό', 'مدیریت لغزان', 'Urus Slider', 'સ્લાઇડર મેનેજ કરો', 'Zarządzaj suwakiem', 'Керувати слайдером', 'ਸਲਾਈਡਰ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați cursorul', 'Ṣakoso awọn igbasẹ', 'Sarrafa Slider'),
(386, 'manage_salary_grade', 'Manage Salary Grade', 'বেতন গ্রেড পরিচালনা', 'Administrar grado de salario', 'إدارة درجة الراتب', 'वेतन ग्रेड को प्रबंधित करें', 'تنخواہ کا انتظام کریں', '管理薪金等级', '給与グレードを管理する', 'Gerenciar o salário', 'Управление зарплатой', 'Gérer le salaire', '급여 등급 관리', 'HistoryManage Gehaltsstufe', 'Gestire il livello di stipendio', 'จัดการระดับเงินเดือน', 'Fizetési fokozat kezelése', 'Beheer salarislijst', 'Curo MERCES Romani', 'Kelola Grade Gaji', 'Maaş Notunu Yönet', 'Διαχειριστείτε το βαθμό μισθοδοσίας', 'مدیریت حقوق و دستمزد', 'Menguruskan Gred Gaji', 'પગાર ગ્રેડ મેનેજ કરો', 'Zarządzaj poziomem wynagrodzeń', 'Управління класом зарплати', 'ਸੈਲਰੀ ਗ੍ਰੇਡ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați gradul de salarizare', 'Ṣakoso awọn Ọya Salaye', 'Sarrafa Takardar Lissafin Kuɗi'),
(387, 'manage_certificate', 'Manage Certificate', 'সার্টিফিকেট পরিচালনা করুন', 'Administrar Certificado', 'إدارة الشهادة', 'प्रमाण पत्र प्रबंधित करें', 'سرٹیفکیٹ کا نظم کریں', '管理证书', '証明書を管理する', 'Gerenciar certificado', 'Управление сертификатом', 'Gérer le certificat', '인증서 관리', 'Zertifikat verwalten', 'Gestisci certificato', 'จัดการใบรับรอง', 'Tanúsítvány kezelése', 'Beheer het certificaat', 'Quisque curo', 'Kelola Sertifikat', 'Sertifikayı Yönet', 'Διαχείριση του πιστοποιητικού', 'مدیریت گواهی', 'Urus Sijil', 'પ્રમાણપત્રનું સંચાલન કરો', 'Zarządzaj certyfikatem', 'Управління сертифікатом', 'ਸਰਟੀਫਿਕੇਟ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați certificatul', 'Ṣakoso Ijẹrisi', 'Sarrafa Takaddun shaida'),
(388, 'manage_gallery', 'Manage Gallery', 'গ্যালারি পরিচালনা করুন', 'Administrar Galería', 'إدارة المعرض', 'गैलरी प्रबंधित करें', ' گیلری کا انتظام کریں', '管理图库', 'ギャラリーを管理する', 'Gerenciar galeria', 'Управление галереей', 'Gérer la galerie', '갤러리 관리', 'Galerie verwalten', 'Gestisci Galleria', 'จัดการแกลเลอรี', 'Galéria kezelése', 'Galerij beheren', 'curo Gallery', 'Kelola Galeri', 'Galeriyi yönet', 'Διαχείριση της Γκαλερί', 'مدیریت گالری', 'Urus Galeri', 'ગેલેરી મેનેજ કરો', 'Zarządzaj galerią', 'Управління галереєю', 'ਗੈਲਰੀ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați galeria', 'Ṣakoso Awọn Aworan', 'Sarrafa hotuna'),
(389, 'manage_frontend_page', 'Manage Frontend Page', 'ফ্রন্টেন্ড পৃষ্ঠা পরিচালনা করুন', 'Administrar la página frontend', 'إدارة صفحة الواجهة الأمامية', 'फ्रंटएण्ड पेज प्रबंधित करें', 'فرنٹ اینڈ پیج کا انتظام کریں', '管理前端页面', 'フロントエンドの管理ページ', 'Gerenciar página front-end', 'Управление страницей Frontend', 'Gérer la page frontend', '프론트 엔드 페이지 관리', 'Frontend-Seite verwalten', 'Gestisci la pagina di frontend', 'จัดการหน้าส่วนหน้า', 'A Frontend oldal kezelése', 'Frontend-pagina beheren', 'Curo Frontend Page', 'Kelola Frontend Page', 'Ön Uç Sayfasını Yönet', 'Διαχείριση Σελίδας Frontend', 'مدیریت صفحه ظاهری', 'Urus Halaman Frontend', 'અગ્ર પેજમાં મેનેજ કરો', 'Zarządzaj stroną frontendową', 'Керування сторінкою інтерфейсу', 'ਫਰੰਟਐਂਡ ਪੰਨਾ ਵਿਵਸਥਿਤ ਕਰੋ', 'Gestionați pagina Frontend', 'Ṣakoso awọn Iwaju oju-iwe', 'Sarrafa Shafin Farko'),
(390, 'manage_gallery_image', 'Manage Gallery Image', 'গ্যালারি চিত্র পরিচালনা করুন', 'Administrar imagen de la galería', 'إدارة صورة المعرض', 'गैलरी छवि प्रबंधित करें', 'گالری کی تصویر کا انتظام', '管理图库图像', 'ギャラリー画像を管理する', 'Gerenciar a imagem da galeria', 'Управление изображением галереи', 'Gérer la galerie', '갤러리 이미지 관리', 'Galeriebild verwalten', 'Gestisci limmagine della galleria', 'จัดการภาพแกลลอรี่', 'Galéria kép kezelése', 'Galerijafbeelding beheren', 'Curo Image Gallery', 'Kelola Gambar Galeri', 'Galeri Resmi Yönet', 'Διαχείριση της εικόνας της γκαλερί', 'مدیریت تصویر گالری', 'Urus Imej Galeri', 'ગેલેરી છબી મેનેજ કરો', 'Zarządzaj obrazem galerii', 'Керувати зображенням галереї', 'ਗੈਲਰੀ ਚਿੱਤਰ ਨੂੰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați imaginea galeriei', 'Ṣakoso awọn Aworan Aworan', 'Sarrafa Hotuna Hotuna'),
(392, 'manage_certificate_type', 'Manage Certificate Type', 'সার্টিফিকেট প্রকার পরিচালনা করুন', 'Administrar tipo de certificado', 'إدارة نوع الشهادة', 'प्रमाणपत्र प्रकार प्रबंधित करें', 'سرٹیفکیٹ کی قسم کا انتظام کریں', '管理证书类型', '証明書タイプの管理', 'Gerenciar tipo de certificado', 'Управление типом сертификата', 'Gérer le type de certificat', '인증서 유형 관리', 'Verwalten Sie den Zertifikatstyp', 'Gestisci tipo di certificato', 'จัดการประเภทใบรับรอง', 'Tanúsítványtípus kezelése', 'Beheer het certificaattype', 'Quisque Curo Type', 'Kelola Jenis Sertifikat', 'Sertifika Türünü yönetin', 'Διαχείριση τύπου πιστοποιητικού', 'مدیریت نوع گواهی', 'Urus Jenis Sijil', 'પ્રમાણપત્રનો પ્રકાર મેનેજ કરો', 'Zarządzaj typem certyfikatu', 'Управління типом сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਦੀ ਕਿਸਮ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați tipul certificatului', 'Ṣakoso awọn Ijẹrisi Iru', 'Sarrafa Takaddun shaida'),
(394, 'new', 'New', 'নতুন', 'Nuevo', 'الجديد', 'नया', 'نئی', '新', '新しい', 'Novo', 'новый', 'Nouveau', '새로운', 'Neu', 'Nuovo', 'ใหม่', 'Új', 'nieuwe', 'novus', 'Baru', 'Yeni', 'Νέος', 'جدید', 'Baru', 'નવું', 'Nowy', 'Новий', 'ਨਵਾਂ', 'Nou', 'Titun', 'sabon'),
(395, 'private_messaging', 'Private Messaging', 'ব্যক্তিগত বার্তা', 'Mensajería privada', 'الرسائل الخاصة', 'निजी मेसेजिंग', 'ذاتی پیغام رسانی', '私人消息', 'プライベートメッセージング', 'Mensagens privadas', 'Частные сообщения', 'Messagerie privée', '비공개 메시지', 'Private Nachrichten', 'Messaggistica privata', 'ข้อความส่วนตัว', 'Privát üzenetküldés', 'Privéberichten', 'Secretum Nuntius', 'Pesan Pribadi', 'Özel Mesajlaşma', 'Ιδιωτικά μηνύματα', 'پیام خصوصی', 'Mesej Persendirian', 'ખાનગી મેસેજિંગ', 'Prywatne wiadomości', 'Приватні повідомлення', 'ਪ੍ਰਾਈਵੇਟ ਸੁਨੇਹਾ', 'Mesageria privată', 'Fifiranṣẹ Aladani', 'Private Saƙo'),
(396, 'activate_now', 'Activate Now', 'সক্রিয় করুন', 'Activar ahora', 'نشط الآن', 'अब सक्रिय करें', 'ابھی چالو کریں', '立即激活', '今すぐアクティブにする', 'Ative agora', 'Активировать сейчас', 'Activer maintenant', '지금 실행 시켜라', 'Jetzt aktivieren', 'Attivare ora', 'เปิดใช้งานเดี๋ยวนี้', 'Aktiváld most', 'Activeer nu', 'Nunc strenuus', 'Sekarang aktif', 'Şimdi aktifleştir', 'Ενεργοποίηση τώρα', 'هم اکنون فعال کن', 'Aktifkan sekarang', 'હમણાં સક્રિય કરો', 'Aktywuj teraz', 'Активувати зараз', 'ਹੁਣ ਸਰਗਰਮ ਕਰੋ', 'Activeaza acum', 'Muu Nisisiyi ṣiṣẹ', 'Kunna Yanzu'),
(397, 'in_activate_now', 'Inactivate Now', 'নিষ্ক্রিয় করুন', 'Inactivate ahora', 'تعطيل الآن', 'अब निष्क्रिय करें', 'اب غیر فعال', '立即停用', '今すぐ非アクティブ化する', 'Inactive agora', 'Инактивировать сейчас', 'Désactiver maintenant', '지금 비활성화', 'Inaktivieren Sie jetzt', 'Inactivate Now', 'ยกเลิกการใช้งานเดี๋ยวนี้', 'Inaktiválás most', 'Inactiveren nu', 'Nunc inactivate', 'Nonaktifkan Sekarang', 'Şimdi devre dışı bırak', 'Απενεργοποιήστε τώρα', 'غیرفعال کن', 'Tidak aktif sekarang', 'હવે નિષ્ક્રિય કરો', 'Dezaktywuj teraz', 'Інактивувати зараз', 'ਹੁਣ ਅਯੋਗ ਕਰੋ', 'Dezactivați acum', 'Inactivate Bayi', 'Ƙasashe Yanzu'),
(398, 'non_member', 'Non Member', 'সদস্য নয়', 'No es miembro', 'غير الأعضاء', 'गैर - सदस्य', 'غیر رکن', '非会员', '非会員', 'Não membro', 'Не участник', 'Non membre', '비 멤버', 'Nicht-Mitglied', 'Non membro', 'ไม่ใช่สมาชิก', 'Nem tag', 'Geen lid', 'non Member', 'Bukan anggota', 'Üye olmayan', 'Μη μέλος', 'غیرعضو', 'Bukan Ahli', 'બિન સભ્ય', 'bez członka', 'Не учасник', 'ਗੈਰ ਮੈਂਬਰ', 'Nu e membru', 'Ko omo', 'Ba Memba'),
(399, 'sender', 'Sender', 'প্রেরক', 'Remitente', 'مرسل', 'प्रेषक', 'مرسل', '所有', '送信者', 'Remetente', 'отправитель', 'Expéditeur', '보내는 사람', 'Absender', 'Mittente', 'ผู้ส่ง', 'Feladó', 'Afzender', 'mittens', 'Pengirim', 'Gönderen', 'Αποστολέας', 'فرستنده', 'Pengirim', 'પ્રેષક', 'Nadawca', 'Відправник', 'ਭੇਜਣ ਵਾਲਾ', 'Expeditor', 'Oluṣẹ', 'Mai aikawa'),
(400, 'all', 'All', 'সকল', 'Todas', 'الكل', 'सब', 'سب', '所有', 'すべて', 'Todos', 'Все', 'Tout', '모든', 'Alle', 'Tutti', 'ทั้งหมด', 'Minden', 'Alle', 'Omnis', 'Semua', 'Herşey', 'Ολα', 'همه', 'Semua', 'બધા', 'Wszystko', 'Все', 'ਸਭ', 'Toate', 'Gbogbo', 'Duk'),
(401, 'first_name', 'First Name', 'নামের প্রথম অংশ', 'Nombre de pila', 'الاسم الاول', 'पहला नाम', 'پہلا نام', '名字', 'ファーストネーム', 'Primeiro nome', 'Имя', 'Prénom', '이름', 'Vorname', 'Nome di battesimo', 'ชื่อจริง', 'Keresztnév', 'Voornaam', 'Praenomen', 'Nama depan', 'İsim', 'Ονομα', 'نام کوچک', 'Nama pertama', 'પ્રથમ નામ', 'Imię', 'Імя', 'ਪਹਿਲਾ ਨਾਂ', 'Nume', 'Orukọ kini', 'Sunan rana'),
(402, 'expire', 'Expire', 'মেয়াদোত্তীর্ণ', 'Expirar', 'تنقضي', 'समय सीमा समाप्त', 'میعاد ختم', '到期', '失効', 'Expirar', 'истекать', 'Expirer', '내쉬다', 'Verfallen', 'scadere', 'หมดอายุ', 'Lejár', 'vervallen', 'exspirare', 'Berakhir', 'sona ermek', 'Εκπνέω', 'Expire', 'Tamat tempoh', 'સમાપ્તિ', 'Wygasać', 'Закінчується', 'ਮਿਆਦ ਖਤਮ', 'Expira', 'Ti pari', 'ya ƙare'),
(403, 'card', 'Card', 'কার্ড', 'Tarjeta', 'بطاقة', 'कार्ड', 'کارڈ', '卡', 'カード', 'Cartão', 'Карта', 'Carte', '카드', 'Karte', 'Carta', 'บัตร', 'Kártya', 'Kaart', 'Card', 'Kartu', 'kart', 'Κάρτα', 'کارت', 'Kad', 'કાર્ડ', 'Karta', 'Карта', 'ਕਾਰਡ', 'Card', 'Kaadi', 'Katin'),
(404, 'cvv', 'CVV', 'সিভিভি', 'CVV', 'CVV', 'सीवीवी', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'સીવીવી', 'CVV', 'CVV', 'ਸੀਵੀਵੀ', 'CVV', 'CVV', 'CVV'),
(405, 'monthly', 'Monthly', 'মাসিক', 'Mensual', 'شهريا', 'महीने के', 'ماہانہ', '每月一次', '毎月', 'Por mês', 'ежемесячно', 'Mensuel', '월간 간행물', 'Monatlich', 'Mensile', 'รายเดือน', 'Havi', 'Maandelijks', 'Vestibulum', 'Bulanan', 'Aylık', 'Μηνιαίος', 'ماهانه', 'Bulanan', 'માસિક', 'Miesięczny', 'Щомісяця', 'ਮਹੀਨਾਵਾਰ', 'Lunar', 'Oṣooṣu', 'Kwanan wata'),
(406, 'group_by_data', 'Group by Data', 'গ্রুপ বাই ডাটা', 'Agrupar por datos', 'المجموعة حسب البيانات', 'समूह द्वारा डेटा', 'ڈیٹا کی طرف سے گروپ', '按数据分组', 'データでグループ化する', 'Agrupar por Dados', 'Группа по данным', 'Grouper par données', '데이터로 그룹화', 'Nach Daten gruppieren', 'Raggruppa per dati', 'จัดกลุ่มตามข้อมูล', 'Csoport adatok szerint', 'Groeperen op gegevens', 'Ordina Data', 'Kelompokkan menurut Data', 'Veri Gruplama', 'Ομαδοποιήστε με Δεδομένα', 'گروه با داده ها', 'Kumpulan mengikut Data', 'ડેટા દ્વારા ગ્રુપ', 'Grupuj według danych', 'Групувати за даними', 'ਡੈਟਾ ਦੁਆਰਾ ਸਮੂਹ', 'Grup după date', 'Agbegbe nipasẹ Data', 'Ƙungiya ta hanyar Data'),
(407, 'resign_date', 'Resign Date', 'পদত্যাগ তারিখ', 'Fecha de renuncia', 'استقالة التاريخ', 'इस्तीफा तारीख', 'استعفی کی تاریخ', '辞职日期', '辞職日', 'Data de rescisão', 'Дата списания', 'Date de démission', '사임 날짜', 'Datum zurückgeben', 'Data di dimettersi', 'ลาออกวันที่', 'Lemondás dátuma', 'Ontslagdatum', 'Date abdicare', 'Tanggal pengunduran diri', 'Ayrılış Tarihi', 'Ημερομηνία παραίτησης', 'تاریخ استعفا', 'Tarikh Mengundurkan', 'રાજીનામું તારીખ', 'Data rezygnacji', 'Дата відставки', 'ਦਾਨ ਕਰਨ ਦੀ ਮਿਤੀ', 'Data renunțării', 'Fi ọjọ silẹ', 'murabus Kwanan wata'),
(408, 'invalid_login', 'Invalid username OR password.', 'ভুল  ব্যবহারকারীর নাম বা পাসওয়ার্ড', 'Usuario o contraseña invalido.', 'خطأ في اسم المستخدم أو كلمة مرور.', 'अमान्य उपयोगकर्ता नाम या पासवर्ड।', 'غلط صارف نام یا پاس ورڈ.', '用户名或密码无效。', 'ユーザー名かパスワードが無効。', 'Nome de usuário ou senha inválidos.', 'Неправильное имя пользователя или пароль.', 'Nom d\'utilisateur OU mot de passe invalide.', '잘못된 사용자 이름 또는 비밀번호입니다.', 'Ungültiger Benutzername oder Passwort.', 'Nome utente o password errati.', 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง.', 'Érvénytelen felhasználónév vagy jelszó.', 'Ongeldige gebruikersnaam of wachtwoord.', 'Nullam Username: Password.', 'Username dan password salah.', 'Geçersiz kullanıcı adı veya şifre.', 'Μη έγκυρο όνομα ή κωδικός.', 'نام کاربری یا کلمه عبور نامعتبر است', 'Nama pengguna atau kata laluan tidak sah.', 'અમાન્ય વપરાશકર્તાનામ અથવા પાસવર્ડ.', 'Nieprawidłowa nazwa użytkownika lub hasło.', 'Неправильне ім\'я користувача або пароль.', 'ਅਵੈਧ ਉਪਯੋਗਕਰਤਾ ਨਾਂ ਜਾਂ ਪਾਸਵਰਡ', 'Nume de utilizator sau parola incorecte.', 'Orukọ olumulo ailewu TABI ọrọigbaniwọle.', 'Sunan mai amfani mara amfani KO kalmar sirri.'),
(409, 'lost_your_password', 'Lost your password?', 'আপনার পাসওয়ার্ড হারিয়েছেন?', '¿Perdiste tu contraseña?', 'فقدت كلمة المرور الخاصة بك؟', 'आपका पासवर्ड खो गया है?', 'اپنا پاس ورڈ بھول گئے؟', '忘记密码？', 'パスワードを忘れましたか？', 'Perdeu sua senha?', 'Забыли пароль?', 'Mot de passe perdu?', '비밀번호를 잊어 버렸습니까?', 'Passwort vergessen?', 'Hai perso la password?', 'ลืมรหัสผ่าน?', 'Elvesztetted a jelszavadat?', 'Wachtwoord vergeten?', 'Perdidit vestri password?', 'Kehilangan password?', 'Şifreni mi unuttun?', 'Έχασες τον κωδικό σου?', 'رمز عبور خود را فراموش کرده اید؟', 'Lupa kata kunci?', 'તમારો પાસવર્ડ ખોવાઈ ગયો?', 'Zgubiłeś hasło?', 'Забули свій пароль?', 'ਤੁਹਾਡਾ ਪਾਸਵਰਡ ਭੁੱਲ ਗਏ ਹੋ?', 'Ti-ai pierdut parola?', 'Ti padanu ọrọ igbaniwọle rẹ?', 'Ka manta kalmarka ta sirri?'),
(410, 'back_to_login', 'Back to Login', 'ব্যাক টু লগইন', 'Atrás para iniciar sesión', 'العودة إلى تسجيل الدخول', 'लॉगिन पर वापस जाएं', 'لاگ ان پر واپس', '回到登入', 'ログインに戻る', 'Volte ao login', 'Вернуться на страницу входа', 'Retour connexion', '로그인으로 돌아 가기', 'Zurück zur Anmeldung', 'Torna al login', 'กลับไปที่ล็อกอิน', 'Vissza a bejelentkezéshez', 'Terug naar Inloggen', 'Back to Login', 'Kembali untuk masuk', 'Giriş sayfasına dön', 'Επιστροφή στην σελίδα εισόδου', 'بازگشت به صفحه ورود', 'Kembali ke Log masuk', 'લૉગિન પર પાછા જાઓ', 'Powrót do logowania', 'Повернутися до Login', 'ਲੌਗਿਨ ਤੇ ਵਾਪਸ', 'Înapoi la autentificare', 'Pada si Wiwọle', 'Komawa zuwa shiga'),
(411, 'instruction', 'Instruction', 'নির্দেশাবলী', 'Instrucción', 'تعليمات', 'अनुदेश', 'ہدایات', '指令', '命令', 'Instrução', 'инструкция', 'Instruction', '교수', 'Anweisung', 'istruzione', 'คำแนะนำ', 'Utasítás', 'Instructie', 'Disciplinam', 'Petunjuk', 'Talimat', 'Εντολή', 'دستورالعمل', 'Arahan', 'સૂચના', 'Instrukcja', 'Інструкція', 'ਨਿਰਦੇਸ਼', 'instrucție', 'Ilana', 'Umarni'),
(412, 'add_employee_instruction', 'Please add Designation before add Employee.', 'কর্মচারী যোগ করার আগে অনুগ্রহপূর্বক পদবী যোগ করুন', 'Agregue Designación antes de agregar Empleado.', 'يرجى إضافة تعيين قبل إضافة موظف.', 'कृपया कर्मचारी जोड़ें जोड़ने से पहले पदनाम जोड़ें।', 'ملازمت کو شامل کرنے سے قبل عہدہ شامل کریں.', '请在添加员工之前添加指定。', '従業員を追加する前に指定を追加してください。', 'Por favor, adicione Designação antes de adicionar Empregado.', 'Пожалуйста, добавьте Обозначение, прежде чем добавить Сотрудника.', 'Veuillez ajouter la désignation avant dajouter un employé.', 'Employee를 추가하기 전에 지정을 추가하십시오.', 'Bitte fügen Sie die Bezeichnung hinzu, bevor Sie Mitarbeiter hinzufügen.', 'Aggiungi la designazione prima di aggiungere un dipendente.', 'โปรดเพิ่มการกำหนดก่อนเพิ่ม Employee', 'Kérjük, add hozzá a jelölést, mielőtt hozzáadja a Munkavállalót.', 'Voeg een aanwijzing toe voordat u werknemer toevoegt.', 'Aliquam VOCABULUM addere placet in conspectu add.', 'Harap tambahkan Penunjukan sebelum menambahkan Karyawan.', 'Lütfen Çalışan eklemeden önce Adlandırma ekleyin.', 'Προσθέστε Προσδιορισμός πριν προσθέσετε Υπάλληλο.', 'قبل از افزودن کارمند لطفا نامگذاری را اضافه کنید.', 'Sila tambah Jawatan sebelum menambah Pekerja.', 'એમ્પ્લોયી ઉમેરો પહેલાં કૃપા કરીને હોદ્દો ઉમેરો.', 'Dodaj Oznaczenie przed dodaniem pracownika.', 'Будь ласка, додайте позначення, перш ніж додати співробітника.', 'ਕਰਮਚਾਰੀ ਨੂੰ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਸ਼ੰਸਾ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați o denumire înainte de a adăuga un angajat.', 'Jowo fi Ami silẹ ṣaaju ki o to fi Abáni ṣiṣẹ.', 'Da fatan a kara Zabin kafin ƙara maaikaci.'),
(413, 'add_class_instruction', 'Please add Teacher before add Class.', 'ক্লাস যোগ করার আগে শিক্ষক যোগ করুন', 'Por favor agregue Maestro antes de agregar Clase.', 'الرجاء إضافة معلم قبل إضافة الفصل الدراسي.', 'कृपया कक्षा जोड़ें से पहले शिक्षक जोड़ें।', 'کلاس شامل کرنے سے قبل ٹیچر شامل کریں.', '请在添加课程之前添加教师', 'クラスを追加する前に教師を追加してください。', 'Adicione o professor antes de adicionar a classe.', 'Пожалуйста, добавьте Учителя перед добавлением класса.', 'Veuillez ajouter un enseignant avant dajouter une classe.', '수업을 추가하기 전에 선생님을 추가하십시오.', 'Bitte fügen Sie den Lehrer hinzu, bevor Sie die Klasse hinzufügen.', 'Aggiungi linsegnante prima di aggiungere la lezione.', 'โปรดเพิ่มครูก่อนเพิ่มระดับ', 'Add hozzá a Tanárt, mielőtt hozzáadná az osztályt.', 'Voeg docent toe voordat u lesgroep toevoegt.', 'Magister add addere placet in conspectu Ps.', 'Tolong tambahkan Guru sebelum menambahkan Kelas.', 'Sınıfı eklemeden önce lütfen Öğretmen ekleyin.', 'Παρακαλούμε προσθέστε Δάσκαλο πριν προσθέσετε την κατηγορία.', 'قبل از افزودن کلاس، لطفا معلم را اضافه کنید.', 'Sila tambahkan Guru sebelum menambah Kelas.', 'ઍડ ક્લાસ પહેલાં શિક્ષક ઉમેરો.', 'Dodaj Nauczyciela przed dodaniem klasy.', 'Будь ласка, додайте Учителя перед додаванням Класу.', 'ਕਿਰਪਾ ਕਰਕੇ ਐਡ ਕਲਾਸ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați profesor înainte de a adăuga Clasa.', 'Jọwọ fi Olukọ ṣaaju ki o to fi Kilasi sii.', 'Da fatan a kara Malam kafin ƙara Class.');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(414, 'add_section_instruction', 'Please add Teacher & Class before add Section.', 'বিভাগ যোগ করার আগে শিক্ষক ও শ্রেণী যোগ করুন', 'Por favor agregue Maestro y Clase antes de agregar la Sección.', 'يرجى إضافة معلم وفئة قبل إضافة قسم.', 'अनुभाग जोड़ने से पहले शिक्षक और कक्षा जोड़ें', 'سیکشن میں شامل کرنے سے قبل ٹیچر اور کلاس شامل کریں.', '在添加部分之前，请添加教师和班级。', 'セクションを追加する前に教師とクラスを追加してください。', 'Por favor, adicione professor e classe antes de adicionar seção.', 'Пожалуйста, добавьте Teacher & Class перед добавлением раздела.', 'Veuillez ajouter lenseignant et la classe avant dajouter la section.', '섹션을 추가하기 전에 교사와 수업을 추가하십시오.', 'Bitte fügen Sie Lehrer und Klasse hinzu, bevor Sie Abschnitt hinzufügen.', 'Aggiungi insegnante e classe prima di aggiungere la sezione.', 'โปรดเพิ่ม Teacher & Class ก่อนเพิ่มส่วน', 'Add add Teacher & Class hozzáadása előtt szekció.', 'Voeg docent en klas toe voordat u sectie toevoegt.', 'Genus: Magister add & sectionem addere velit ante.', 'Tolong tambahkan Guru & Kelas sebelum menambahkan Bagian.', 'Bölüm eklemeden önce lütfen Öğretmen ve Sınıf ekleyin.', 'Παρακαλούμε προσθέστε το δάσκαλο και την τάξη πριν προσθέσετε ενότητα.', 'لطفا قبل از افزودن بخش معلم و کلاس اضافه کنید', 'Sila tambah Guru & Kelas sebelum menambah Seksyen.', 'વિભાગ ઉમેરો પહેલાં શિક્ષક અને વર્ગ ઉમેરો.', 'Dodaj nauczyciela i zajęcia, zanim dodasz sekcję.', 'Додайте розділ ', 'ਕਿਰਪਾ ਕਰਕੇ ਸੈਕਸ਼ਨ ਜੋੜਨ ਤੋਂ ਪਹਿਲਾਂ ਅਧਿਆਪਕ ਅਤੇ ਕਲਾਸ ਸ਼ਾਮਲ ਕਰੋ.', 'Vă rugăm să adăugați un profesor și o clasă înainte de a adăuga secțiunea.', 'Jọwọ fi Olukọ ati Kilasi ṣaaju ki o to fi Abala kan kun.', 'Da fatan a ƙara Malami da Class kafin ƙara Sashe.'),
(415, 'class_add_alert', 'Please add Class', 'ক্লাস যোগ করুন', 'Por favor agrega Clase', 'يرجى إضافة فئة', 'कृपया कक्षा जोड़ें', 'براہ مہربانی کلاس شامل کریں', '请添加Class', 'クラスを追加してください', 'Por favor, adicione Classe', 'Пожалуйста, добавьте класс', 'Veuillez ajouter une classe', '수업을 추가하십시오.', 'Bitte fügen Sie Klasse hinzu', 'Per favore aggiungi Class', 'โปรดเพิ่ม Class', 'Add osztály', 'Voeg alstublieft Klasse toe', 'Placere addere Paleonemertea Class', 'Tolong tambahkan Kelas', 'Lütfen Sınıf ekle', 'Προσθέστε την κλάση', 'لطفا کلاس را اضافه کنید', 'Sila tambah Kelas', 'કૃપા કરીને વર્ગ ઉમેરો', 'Dodaj klasę', 'Будь ласка, додайте клас', 'ਕਲਾਸ ਸ਼ਾਮਿਲ ਕਰੋ ਜੀ', 'Adăugați Clasa', 'Jọwọ fi Kilasi sii', 'Da fatan a kara Class'),
(416, 'add_student_instruction', 'Please add Guardian, Class & Section before add Student.', 'ছাত্র যোগ করার আগে অভিভাবক, ক্লাস এবং বিভাগ যোগ করুন', 'Agregue Guardián, Clase y Sección antes de agregar Estudiante.', 'يرجى إضافة الجارديان، فئة وقسم قبل إضافة طالب.', 'कृपया छात्र जोड़ने से पहले अभिभावक, कक्षा और अनुभाग जोड़ें।', 'برائے مہربانی طالب علم کو شامل کرنے سے پہلے گارڈین، کلاس اور سیکشن شامل کریں.', '添加学生前请添加监护人，课程和科室。', '生徒を追加する前にGuardian、Class＆Sectionを追加してください。', 'Por favor, adicione Guardian, Class & Section antes de adicionar Student.', 'Пожалуйста, добавьте Guardian, Class & Section перед добавлением Студента.', 'Veuillez ajouter Guardian, Class & Section avant dajouter Student.', '학생을 추가하기 전에 Guardian, Class & Section을 추가하십시오.', 'Bitte fügen Sie Guardian, Class & Section hinzu, bevor Sie Student hinzufügen.', 'Aggiungi Guardian, Class & Section prima di aggiungere Student.', 'กรุณาเพิ่ม Guardian, Class & Section ก่อนเพิ่ม Student', 'Add hozzá Guardian, Class & Section hozzáadása előtt Add Student.', 'Voeg Guardian, Class & Section toe voordat je Student toevoegt.', 'Adde sis custos, adde prius Discipulus Class sect.', 'Tolong tambahkan Guardian, Class & Section sebelum menambahkan Student.', 'Öğrenci eklemeden önce lütfen Guardian, Class & Sectionu ekleyin.', 'Παρακαλούμε προσθέστε Guardian, Class & Section πριν προσθέσετε Student.', 'قبل از افزودن دانش آموز، لطفا Guardian، Class & Section را اضافه کنید.', 'Sila tambah Guardian, Kelas & Seksyen sebelum menambah Pelajar.', 'ઉમેરો વિદ્યાર્થી પહેલાં ગાર્ડિયન, વર્ગ અને વિભાગ ઉમેરો.', 'Przed dodaniem ucznia dodaj opiekuna, klasę i sekcję.', 'Перш ніж додати Студент, додайте Guardian, Class & Section.', 'ਕਿਰਪਾ ਕਰਕੇ ਵਿਦਿਆਰਥੀ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਗਾਰਡੀਅਨ, ਕਲਾਸ ਅਤੇ ਸੈਕਸ਼ਨ ਸ਼ਾਮਿਲ ਕਰੋ.', 'Vă rugăm să adăugați Guardian, Class & Section înainte de a adăuga Student.', 'Jowo fi Olutọju, Kilasi & Abala šaaju ki o to fi ọmọ-iwe kun.', 'Da fatan a kara Guardian, Class & Sashe kafin ƙara Student.'),
(417, 'add_assignment_instruction', 'Please add Class & Subject before add Assignment.', 'যোগদান যোগ করার আগে ক্লাস এবং বিষয় যোগ করুন', 'Agregue Clase y Asunto antes de agregar Asignación.', 'الرجاء إضافة الفئة والموضوع قبل إضافة التعيين.', 'कृपया असाइनमेंट जोड़ने से पहले कक्षा और विषय जोड़ें।', 'تفویض شامل کرنے سے پہلے کلاس اور مضمون شامل کریں.', '请在添加作业之前添加课程和主题。', '割り当てを追加する前にクラスと件名を追加してください。', 'Por favor, adicione Class & Subject antes de adicionar Atribuição.', 'Пожалуйста, добавьте Class & Subject перед добавлением Assignment.', 'Veuillez ajouter la classe et le sujet avant dajouter une affectation.', '과제를 추가하기 전에 수업 및 과제를 추가하십시오.', 'Bitte fügen Sie Klasse und Betreff hinzu, bevor Sie die Zuweisung hinzufügen.', 'Per favore aggiungi Class & Subject prima di aggiungere Assignment.', 'โปรดเพิ่ม Class & Subject ก่อนที่จะเพิ่ม Assignment', 'Add hozzá az Osztályt és a témát, mielőtt hozzárendelheti.', 'Voeg Klasse en Onderwerp toe voordat u Toewijzing toevoegt.', 'Class placet, adde prius adsignatione add.', 'Harap tambahkan Kelas & Subjek sebelum menambahkan Penugasan.', 'Ödev eklemek için lütfen Sınıf ve Konuyu ekleyin.', 'Προσθέστε την κλάση και το θέμα πριν προσθέσετε την επιλογή Αντιστοίχιση.', 'لطفا کلاس و موضوع را قبل از اضافه شدن اضافه کنید.', 'Sila tambah Kelas & Subjek sebelum menambah Tugasan.', 'મહેરબાની કરીને ઉમેરતા પહેલા સભા અને વિષય ઉમેરો.', 'Przed dodaniem zadania dodaj klasę i temat.', 'Будь ласка, додайте клас і тему, перш ніж додати асигнування.', 'ਕਿਰਪਾ ਕਰਕੇ ਅਸਾਈਨਮੈਂਟ ਤੋਂ ਪਹਿਲਾਂ ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Adăugați Clasă și Subiect înainte de a adăuga Atribuire.', 'Jọwọ fi Kilasi & Koko ṣaaju ki o to fi iṣẹ-ṣiṣe kun.', 'Da fatan a kara Class & Rubutun kafin ƙara Matsayi.'),
(418, 'add_exam_schedule_instruction', 'Please add Exam, Class & Subject before add Exm Schedule.', 'পরীক্ষার সময়সূচী যোগ করার আগে পরীক্ষা, শ্রেণী ও বস্তু যুক্ত করুন।', 'Agregue Examen, Clase y Objeto antes de agregar el Horario del Examen.', 'الرجاء إضافة امتحان، فئة & كائن قبل إضافة جدول الامتحان.', 'परीक्षा परीक्षा अनुसूची जोड़ें से पहले परीक्षा, कक्षा और वस्तु जोड़ें', 'امتحان شیڈول میں شامل کرنے سے پہلے، امتحان، کلاس اور آبجیکٹ شامل کریں.', '在添加考试时间表之前，请添加考试，课程和对象。', 'Exam Scheduleを追加する前に、Exam、Class＆Objectを追加してください。', 'Por favor, adicione o Exame, Classe e Objeto antes de adicionar o Programa de Exames.', 'Пожалуйста, добавьте Экзамен, Класс и Объект, прежде чем добавить График экзамена.', 'Veuillez ajouter lexamen, la classe et lobjet avant dajouter lhoraire dexamen.', 'Exam Schedule을 추가하기 전에 Exam, Class & Object를 추가하십시오.', 'Bitte fügen Sie Prüfung, Klasse und Objekt hinzu, bevor Sie den Prüfungsplan hinzufügen.', 'Aggiungi esame, classe e oggetto prima di aggiungere la pianificazione degli esami.', 'โปรดเพิ่มการสอบวิชา & วัตถุก่อนเพิ่มตารางการสอบ', 'Add Exam, Class & Object hozzáadása az Exam Schedule hozzáadásához.', 'Voeg Examen, Klasse & Object toe voordat u het Exam Schedule toevoegt.', 'Placere addere IV, addere IV Class Object coram arcu.', 'Harap tambahkan Ujian, Kelas & Objek sebelum menambahkan Jadwal Ujian.', 'Sınav Takvimi eklemeden önce lütfen Sınav, Sınıf ve Nesneyi ekleyin.', 'Παρακαλούμε προσθέστε Εξετάσεις, Τάξη & Αντικείμενο πριν προσθέσετε το Πρόγραμμα Εξετάσεων.', 'قبل از افزودن برنامه آزمون، لطفا امتحان، کلاس و شیء را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Objek sebelum menambah Jadual Peperiksaan.', 'પરીક્ષા શેડ્યૂલ ઉમેરો પહેલાં પરીક્ષાની, વર્ગ અને ઑબ્જેક્ટ ઉમેરો', 'Dodaj egzamin, klasę i obiekt przed dodaniem harmonogramu egzaminu.', 'Додайте іспит, клас і обєкт перед додаванням графіка іспиту.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ ਅਤੇ ਔਬਜੈਕਟ ਸ਼ਾਮਲ ਕਰੋ.', 'Adăugați examen, clasă și obiect înainte de a adăuga programul de examinare.', 'Jọwọ fi kẹhìn, Kilasi & Ohun ṣaaju ki o to ṣayẹwo Akẹkọ Idaduro.', 'Da fatan a kara gwadawa, Class & Object kafin ƙara Nazarin Jarrabawa.'),
(419, 'add_exam_suggestion_instruction', 'Please add Exam, Class & Subject before add Exam Suggestion.', 'পরীক্ষা পরামর্শ যোগ করার আগে পরীক্ষা, শ্রেণী এবং বিষয় যুক্ত করুন।', 'Agregue Examen, Clase y Asunto antes de agregar Exm Sugerencia.', 'يرجى إضافة امتحان، فئة & الموضوع قبل إضافة اقتراح إكسم.', 'Exm सुझाव जोड़ने से पहले परीक्षा, कक्षा और विषय जोड़ें।', 'اے ایم ایم تجاویز کو شامل کرنے سے قبل امتحان، کلاس اور مضمون شامل کریں.', '在添加Exm建议之前，请添加考试，课程和主题。', 'Exm提案を追加する前に、Exam、Class＆Subjectを追加してください。', 'Por favor, adicione Exame, Classe e Assunto antes de adicionar Exm Sugestão.', 'Пожалуйста, добавьте Экзамен, Класс и Тема, прежде чем добавить предложение Exm.', 'Sil vous plaît ajouter lexamen, la classe et le sujet avant dajouter la suggestion dExm.', 'Exm 제안을 추가하기 전에 Exam, Class & Subject를 추가하십시오.', 'Bitte fügen Sie Exam, Class & Subject hinzu, bevor Sie Exm Suggestion hinzufügen.', 'Aggiungi Exam, Class e Subject prima di aggiungere Exm Suggestion.', 'โปรดเพิ่มการสอบวิชา & หัวเรื่องก่อนเพิ่มคำแนะนำ Exm', 'Add Exam, Class & Subject hozzáadása az Exm Suggestion hozzáadásához', 'Voeg examen, klasse en onderwerp toe voordat u Exm-suggestie toevoegt.', 'IV addere placet, adde prius Class Exm Suggestion.', 'Harap tambahkan Ujian, Kelas & Subjek sebelum menambahkan Saran Muka.', 'Exm Öneri eklemeden önce lütfen Sınav, Sınıf ve Konuyu ekleyin.', 'Παρακαλούμε προσθέστε την εξέταση, την κλάση και το θέμα πριν προσθέσετε την πρόταση Exm.', 'لطفا قبل از افزودن پیشنهاد Exm، امتحان، کلاس و موضوع را اضافه کنید.', 'Sila tambah Peperiksaan, Kelas & Subjek sebelum menambah Cadangan Exm.', 'Exm સૂચન ઉમેરતા પહેલાં પરીક્ષા, વર્ગ અને વિષય ઉમેરો.', 'Dodaj Exam, Class & Subject, zanim dodasz Exm Suggestion.', 'Додайте Exm Suggestion, додайте іспит, клас і тему.', 'ਐਕਸਮ ਸੁਝਾਅ ਸ਼ਾਮਲ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਐਗਜ਼ੁਖ, ਕਲਾਸ ਅਤੇ ਵਿਸ਼ਾ ਜੋੜੋ.', 'Vă rugăm să adăugați Exam, Class & Subject înainte de a adăuga Sugestie Exm.', 'Jọwọ fi kẹhìn, Kilasi & Koko ṣaaju ki o to fi Alaye pataki sii.', 'Da fatan a sake gwada jarrabawa, Class & Subject kafin ƙara Exm Shawarwari.'),
(420, 'login_success', 'You have successfully logged In.', 'আপনি সফলভাবে লগ ইন করেছেন.', 'Has iniciado sesión correctamente.', 'لقد قمت بتسجيل الدخول بنجاح.', 'आप सफलता पूर्वक प्रवेश कर चुके हैं।', 'آپ نے کامیابی سے ان میں لاگ ان کیا ہے.', '您已成功登录。', 'あなたは正常にログインしました。', 'Você fez login com sucesso.', 'Вы успешно вошли в.', 'Vous avez réussi à vous connecter', '로그인했습니다.', 'Sie haben sich erfolgreich angemeldet.', 'Hai effettuato il log in con successo.', 'คุณเข้าสู่ระบบเรียบร้อยแล้ว', 'Sikeresen bejelentkezett.', 'Je bent succesvol ingelogd.', 'Et tu bene initium.', 'Anda berhasil masuk', 'Başarıyla giriş yaptınız.', 'Έχετε επιτυχώς συνδεθεί.', 'شما با موفقیت وارد شدید.', 'Anda berjaya melog masuk.', 'તમે સફળતાપૂર્વક લોગ ઇન કર્યું છે.', 'Logowanie zakończone powodzeniem.', 'Ви успішно ввійшли в систему.', 'ਤੁਸੀਂ ਸਫਲਤਾਪੂਰਵਕ ਲਾਗ ਇਨ ਕੀਤਾ ਹੈ.', 'Ați fost conectat (ă) cu succes.', 'O ti wọle Wole ni ilọsiwaju.', 'An samu nasarar shiga cikin.'),
(421, 'unexpected_error', 'Unexpected error occured', 'অপ্রত্যাশিত ত্রুটি ঘটেছে', 'Ocurrió un error inesperado', 'حدث خطأ غير متوقع', 'अनपेक्षित त्रुटि हुई', 'غیر متوقع غلطی ہوئی', '意外的错误发生', '予期しないエラーが発生しました', 'Ocorreu um erro inesperado', 'Произошла непредвиденная ошибка', 'Une erreur inattendue sest produite', '예기치 않은 오류가 발생했습니다.', 'Unerwarteter Fehler ist aufgetreten', 'Si è verificato un errore imprevisto', 'เกิดข้อผิดพลาดที่ไม่คาดคิด', 'Váratlan hiba történt', 'Er is een onverwachte fout opgetreden', 'Error occurrit inopinatum', 'Terjadi kesalahan tak terduga', 'Beklenmedik bir hata oluştu', 'Παρουσιάστηκε μη αναμενόμενο σφάλμα', 'خطای غیرمنتظره رخ داده است', 'Ralat tidak dijangka berlaku', 'અનપેક્ષિત ભૂલ આવી', 'Pojawił się nieoczekiwany błąd', 'Несподівана помилка', 'ਅਚਾਨਕ ਤਰੁੱਟੀ ਉਤਪੰਨ ਹੋਈ', 'A apărut o eroare neașteptată', 'Aṣiṣe airotẹlẹ kan ṣẹlẹ', 'An sami kuskure marar kuskure'),
(422, 'password_reset_error', 'Password length must be 6-12 Character and match with Confirm password', 'পাসওয়ার্ডের দৈর্ঘ্য 6-12 অক্ষর এবং নিশ্চিত পাসওয়ার্ডের সাথে মেলে', 'La longitud de la contraseña debe ser de 6-12 caracteres y coincide con Confirmar contraseña', 'يجب أن يكون طول كلمة المرور 6-12 حرف وتطابق مع تأكيد كلمة المرور', 'पासवर्ड की लंबाई 6-12 वर्ण और पासवर्ड की पुष्टि के साथ मैच होना चाहिए', 'پاس ورڈ کی لمبائی 6-12 ہونا ضروری ہے اور اس کی تصدیق کی پاس ورڈ کے ساتھ میچ ہونا چاہیے', '密码长度必须是6-12个字符并且与确认密码相匹配', 'パスワードの長さは6〜12文字で、パスワードの確認と一致する必要があります', 'O comprimento da senha deve ser de 6 a 12 caracteres e combinar com Confirmar senha', 'Длина пароля должна быть 6-12 символов и соответствовать паролю подтверждения.', 'la longueur du mot de passe doit être comprise entre 6 et 12 caractères et correspondre avec Confirmer le mot de passe', '비밀번호 길이는 6-12 자 여야하며 비밀번호 확인과 일치해야합니다.', 'Die Passwortlänge muss 6-12 Zeichen lang sein und mit Passwort bestätigen übereinstimmen', 'La lunghezza della password deve essere di 6-12 caratteri e corrisponde a Conferma password', 'รหัสผ่านต้องยาว 6-12 ตัวอักษรและตรงกับรหัสยืนยัน', 'A jelszó hosszúságának 6-12 karakterből kell állnia, és meg kell egyeznie a Jelszó megerősítésével', 'Wachtwoordlengte moet 6-12 tekens zijn en overeenkomen met Wachtwoord bevestigen', '6-12 longitudinem esse pares ignoro Character Confirm ignoro', 'Panjang kata sandi harus 6-12 Karakter dan cocok dengan Confirm password', 'Şifre uzunluğu 6-12 karakter olmalıdır ve Parolayı onayla ile eşleşmelidir.', 'Το μήκος του κωδικού πρόσβασης πρέπει να είναι 6-12 χαρακτήρες και να ταιριάζει με τον κωδικό επιβεβαίωσης', 'طول رمز عبور باید 6 تا 12 حرف باشد و با تایید رمز عبور مطابقت دارد', 'Panjang kata laluan mesti 6-12 Watak dan padan dengan Sahkan kata laluan', 'પાસવર્ડની લંબાઈ 6-12 અક્ષર હોવા જોઈએ અને પાસવર્ડની પુષ્ટિ કરો', 'Długość hasła musi wynosić 6-12 Znak i dopasowanie z Potwierdź hasło', 'Довжина пароля повинна бути 6-12 символів і відповідати з підтвердженням пароля', 'ਪਾਸਵਰਡ ਦੀ ਲੰਬਾਈ 6-12 ਅੱਖਰ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ ਅਤੇ ਪਾਸਵਰਡ ਨਾਲ ਪੁਸ਼ਟੀ ਕਰੋ', 'Lungimea parolei trebuie să fie 6-12 Caracter și să se potrivească cu Confirmare parolă', 'Ipari ipari ọrọigbaniwọle gbọdọ jẹ 6-12 Ti ohun kikọ ati baramu pẹlu Jẹrisi ọrọigbaniwọle', 'Dole ne kalmar wucewa ta kasance ta 6-12 Haɗi da wasa tare da Tabbatar da kalmar sirri'),
(423, 'in_active', 'Inactive', 'নিষ্ক্রিয়', 'Inactivo', 'غير نشط', 'निष्क्रिय', 'غیر فعال', '待用', '非アクティブ', 'Inativo', 'Неактивный', 'Inactif', '비활성', 'Inaktiv', 'Inattivo', 'เฉื่อยชา', 'tétlen', 'Inactief', 'Ut ultrices vestibulum', 'Tidak aktif', 'etkisiz', 'Αδρανής', 'غیر فعال', 'Tidak aktif', 'નિષ્ક્રિય', 'Nieaktywny', 'Неактивний', 'ਨਿਸ਼ਕਿਰਿਆ', 'Inactiv', 'Inactive', 'Mai aiki'),
(424, 'fill_out_all_data', 'Please fill up all field data', 'সমস্ত ক্ষেত্রের তথ্য পূরণ করুন দয়া করে', 'Complete todos los datos de campo', 'يرجى ملء جميع البيانات الميدانية', 'कृपया सभी फ़ील्ड डेटा भरें', 'براہ کرم تمام فیلڈ ڈیٹا کو بھریں', '请填写所有的现场数据', 'すべてのフィールドデータを入力してください', 'Complete todos os dados de campo', 'Пожалуйста, заполните все полевые данные', 'Sil vous plaît remplir toutes les données de terrain', '모든 필드 데이터를 입력하십시오.', 'Bitte füllen Sie alle Felddaten aus', 'Si prega di compilare tutti i dati del campo', 'โปรดกรอกข้อมูลฟิลด์ทั้งหมด', 'Kérjük, töltse ki az összes mezőadatot', 'Vul alle veldgegevens in', 'Obsecro, universi agri data fillup', 'Silahkan isi semua data lapangan', 'Lütfen tüm alan verilerini doldurun', 'Παρακαλούμε συμπληρώστε όλα τα δεδομένα πεδίου', 'لطفا تمام اطلاعات فیلد را پر کنید', 'Sila mengisi semua data medan', 'કૃપા કરીને તમામ ફીલ્ડ ડેટા ભરો', 'Proszę odflukować wszystkie dane pola', 'Будь ласка, заповніть всі дані поля', 'ਕਿਰਪਾ ਕਰਕੇ ਸਾਰੇ ਫੀਲਡ ਡਾਟਾ ਭਰ ਦਿਓ', 'Completați toate datele câmpului', 'Jowo fi gbogbo data aaye kun', 'Da fatan a cika dukkan bayanan filin'),
(425, 'email_send_failed', 'Email sent failed. Please try again.', 'ইমেল পাঠানো ব্যর্থ হয়েছে। অনুগ্রহপূর্বক আবার চেষ্টা করুন.', 'El correo electrónico enviado falló. Inténtalo de nuevo.', 'أخفق إرسال البريد الإلكتروني. حاول مرة اخرى.', 'ईमेल भेजा विफल रहा। कृपया पुन: प्रयास करें।', 'ای میل بھیجا گیا. دوبارہ کوشش کریں.', '电子邮件发送失败 请再试一次。', '送信されたメールは失敗しました もう一度お試しください。', 'E-mail enviado falhou. Por favor, tente novamente.', 'Не удалось отправить сообщение по электронной почте. Пожалуйста, попробуйте еще раз.', 'Email envoyé a échoué. Veuillez réessayer.', '전송 된 이메일이 실패했습니다. 다시 시도하십시오.', 'E-Mail sendet fehlgeschlagen. Bitte versuchen Sie es.', 'Email inviata fallita. Per favore riprova.', 'อีเมลที่ส่งล้มเหลว กรุณาลองอีกครั้ง.', 'Az elküldött e-mail nem sikerült. Kérlek próbáld újra.', 'E-mail verzonden mislukt. Probeer het opnieuw.', 'Misimus defecit. Quaero, iterum conare.', 'Email terkirim gagal Silahkan coba lagi', 'E-posta gönderilemedi. Lütfen tekrar deneyin.', 'Το ηλεκτρονικό ταχυδρομείο που στάλθηκε απέτυχε ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'ایمیل ارسال نشد. لطفا دوباره تلاش کنید.', 'E-mel dihantar gagal. Sila cuba lagi.', 'ઇમેઇલ મોકલવામાં નિષ્ફળ થયું. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Nie udało się wysłać e-maila. Proszę spróbuj ponownie.', 'Не вдалося надіслати електронне повідомлення. Будь ласка спробуйте ще раз.', 'ਭੇਜੀ ਗਈ ਈਮੇਲ ਫੇਲ੍ਹ ਹੋਈ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Emailul trimis a eșuat. Vă rugăm să încercați din nou.', 'Ifiranṣẹ imeeli ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'An aika imel da aka aika ya kasa. Da fatan a sake gwadawa.'),
(426, 'email_send_success', 'Email sent successfully', 'ইমেল সফলভাবে পাঠানো হয়েছে', 'Correo electrónico enviado con éxito', 'تم إرسال البريد الإلكتروني بنجاح', 'सफलतापूर्वक भेजा गया ईमेल', 'ای میل کامیابی سے بھیجا گیا', '电子邮件发送成功', '電子メールを正常に送信', 'E-mail enviado com sucesso', 'письмо успешно отправлено', 'E-mail envoyé avec succès', '이메일이 전송되었습니다.', 'Email wurde erfolgreich Versendet', 'email inviata correttamente', 'ส่งอีเมลเรียบร้อยแล้ว', 'Az e-mail sikeresen elküldve', 'E-mail met succes verzonden', 'Email ad bene', 'Email berhasil dikirim', 'e-posta başarıyla gönderildi', 'Το email στάλθηκε με επιτυχία', 'ایمیل با موفقیت ارسال شد', 'E-mel berjaya dihantar', 'ઇમેઇલ સફળતાપૂર્વક મોકલ્યો', 'E-mail wysłany pomyślnie', 'Електронна пошта надійшла успішно', 'ਈਮੇਲ ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Email-ul a fost trimis cu succes', 'Imeeli firanṣẹ ni ifijišẹ', 'Imel da aka aika da nasarar'),
(427, 'sms_send_failed', 'Sms send failed. Please try again', 'এসএমএস পাঠানো ব্যর্থ হয়েছে অনুগ্রহপূর্বক আবার চেষ্টা করুন', 'SMS enviado fallido. Inténtalo de nuevo', 'أرسل الرسائل القصيرة سمز. حاول مرة اخرى', 'एसएमएस भेजना विफल हुआ कृपया पुन: प्रयास करें', 'ایس ایم ایس ناکام ہوگئے. دوبارہ کوشش کریں', '短信发送失败。 请再试一次', 'SMS送信に失敗しました。 もう一度お試しください', 'Sms send falhou. Por favor, tente novamente', 'Ошибка отправки sms не удалась. Пожалуйста, попробуйте еще раз', 'Lenvoi de sms a échoué. Veuillez réessayer', 'SMS 전송에 실패했습니다. 다시 시도하십시오.', 'SMS senden fehlgeschlagen. Bitte versuche es erneut', 'Invio SMS fallito. Per favore riprova', 'ส่ง sms ล้มเหลว กรุณาลองอีกครั้ง', 'A sms küldés nem sikerült. Kérlek próbáld újra', 'Sms verzenden mislukt. Probeer het opnieuw', 'Mittere SMS defecit. Quaero, iterum conare', 'Sms send gagal Silahkan coba lagi', 'SMS göndermek başarısız oldu. Lütfen tekrar deneyin', 'Η αποστολή SMS απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα', 'پیامک ارسال نشد لطفا دوباره تلاش کنید', 'Hantar sms gagal. Sila cuba lagi', 'એસએમએસ મોકલવામાં નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો', 'Nie udało się wysłać SMS-a. Proszę spróbuj ponownie', 'Не вдалося надіслати SMS-повідомлення. Будь ласка спробуйте ще раз', 'ਐਸਐਮਐਸ ਭੇਜਣਾ ਅਸਫਲ ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ', 'Sms-ul trimite nu a reușit. Vă rugăm să încercați din nou', 'Ifiranṣẹ Sms ti kuna. Jọwọ gbiyanju lẹẹkansi', 'Sms aika ya kasa. Da fatan a sake gwadawa'),
(428, 'sms_send_success', 'Sms sent successfully', 'এসএমএস সফলভাবে পাঠানো হয়েছে', 'SMS enviado satisfactoriamente', 'تم إرسال الرسائل القصيرة بنجاح', 'एसएमएस सफलतापूर्वक भेजा गया', 'ایس ایم ایس کامیابی سے بھیجے گئے', '短信发送成功', 'SMSが正常に送信されました', 'SMS enviado com êxito', 'Sms успешно отправлен', 'SMS envoyé avec succès', 'SMS가 성공적으로 보냈습니다.', 'SMS erfolgreich versendet', 'SMS inviato correttamente', 'ส่ง sms เรียบร้อยแล้ว', 'A sms sikeresen elküldve', 'SMS succesvol verzonden', 'SMS misit feliciter', 'Sms berhasil dikirim', 'SMS başarıyla gönderildi', 'Τα SMS αποστέλλονται με επιτυχία', 'اس ام اس با موفقیت ارسال شد', 'Sms dihantar berjaya', 'એસએમએસ સફળતાપૂર્વક મોકલ્યો છે', 'SMS wysłany z powodzeniem', 'СМС успішно відправлено', 'SMS ਸਫਲਤਾਪੂਰਵਕ ਭੇਜਿਆ ਗਿਆ', 'Sms-urile au fost trimise cu succes', 'Sms rán ni ifijišẹ', 'Sms ya aika da nasarar'),
(429, 'clickatell_mo_no', 'Mo Number', 'MO সংখ্যা', 'Número Mo', 'مو عدد', 'मो नंबर', 'مو نمبر', '莫数', 'Mo番号', 'Número Mo', 'Номер Mo', 'Mo Number', '모 번호', 'Mo Nummer', 'Numero Mo', 'จำนวนโม', 'Mo szám', 'Mo-nummer', 'Mo Number', 'Nomor Mo', 'Mo Numarası', 'Αριθμός Mo', 'شماره م', 'Nombor Mo', 'મો સંખ્યા', 'Numer Mo', 'Номер Мо', 'ਮੋ ਨੰਬਰ', 'Numărul Mo', 'Mo Number', 'Mo Number'),
(430, 'setup_your_sms_gateway', 'Please set up your expected sms gateway correctly ', 'অনুগ্রহ করে আপনার প্রত্যাশিত এসএমএস গেটওয়ে সঠিকভাবে সেট আপ করুন', 'Configure su puerta de enlace de SMS esperado correctamente', 'يرجى إعداد بوابة الرسائل القصيرة المتوقعة بشكل صحيح', 'कृपया अपना अपेक्षित एसएमएस गेटवे सही ढंग से सेट करें', 'براہ مہربانی اپنے متوقع ایس ایم ایس گیٹ وے کو صحیح طریقے سے مقرر کریں', '请正确设置您的预期的短信网关', '予想されるSMSゲートウェイを正しく設定してください', 'Configure o seu esperado sms gateway corretamente', 'Правильно настройте свой ожидаемый sms-шлюз', 'Veuillez configurer votre passerelle SMS attendue correctement', '예상되는 SMS 게이트웨이를 올바르게 설정하십시오.', 'Bitte richten Sie Ihr erwartetes SMS-Gateway korrekt ein', 'Si prega di configurare il vostro gateway sms previsto correttamente', 'โปรดตั้งค่าเกตเวย์ sms ที่คุณต้องการโดยถูกต้อง', 'Kérjük, helyesen állítsa be az elvárt sms-átjárót', 'Stel uw verwachte sms-gateway correct in', 'SMS porta quaeso erigas bene sperandum', 'Harap siapkan gateway sms yang Anda harapkan dengan benar', 'Lütfen beklenen sms ağ geçidinizi doğru bir şekilde ayarlayın.', 'Ρυθμίστε σωστά την αναμενόμενη πύλη sms', 'لطفا دروازه مورد انتظار اس ام اس مورد نظر را درست تنظیم کنید', 'Sila buat gerbang sms yang diharapkan', 'કૃપા કરીને તમારા અપેક્ષિત એસએમએસ ગેટવેને યોગ્ય રીતે સેટ કરો', 'Proszę poprawnie skonfigurować oczekiwaną bramę sms', 'Будь ласка, правильно налаштуйте очікуваний шлюз sms', 'ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਉਮੀਦਵਾਰ SMS ਗੇਟਵੇ ਨੂੰ ਸਹੀ ਢੰਗ ਨਾਲ ਸੈਟ ਅਪ ਕਰੋ', 'Vă rugăm să configurați corect poarta de așteptare pentru sms', 'Jowo gbe ọna ẹnu sms ti o ti ṣe yẹ rẹ silẹ tọ', 'Don Allah a kafa hanyar ƙoƙarin sms da ake tsammani a daidai'),
(431, 'already_exist', 'This data already exists in database. Please try another one.', 'এই ডেটা ডাটাবেসে ইতিমধ্যে বিদ্যমান। অন্য একটি চেষ্টা করুন।', 'Esta información ya existe en la base de datos. Por favor prueba con otro.', 'هذه البيانات موجودة بالفعل في قاعدة البيانات. الرجاء محاولة تجربة أخرى.', 'डेटाबेस में यह डेटा पहले से मौजूद है कृपया कोई दूसरा प्रयास करें', 'ڈیٹا بیس میں یہ ڈیٹا پہلے ہی موجود ہے. براہ کرم ایک اور کوشش کریں.', '这个数据已经存在于数据库中。 请尝试另一个。', 'このデータはすでにデータベースに存在します。 別のものをお試しください。', 'Estes dados já existem no banco de dados. Por favor, tente outro.', 'Эти данные уже существуют в базе данных. Попробуйте еще один.', 'Ces données existent déjà dans la base de données. Sil vous plaît essayer un autre.', '이 데이터는 이미 데이터베이스에 있습니다. 다른 것을 시도하십시오.', 'Diese Daten existieren bereits in der Datenbank. Bitte versuchen Sie es mit einem anderen.', 'Questi dati esistono già nel database. Si prega di provare un altro.', 'ข้อมูลนี้มีอยู่แล้วในฐานข้อมูล โปรดลองอีกอันหนึ่ง', 'Ez az adat már létezik az adatbázisban. Próbálj ki egyet.', 'Deze gegevens bestaan al in de database. Probeer een andere.', 'Hoc etiam existit in database notitia. Aliquam alia.', 'Data ini sudah ada di database. Silakan coba yang lain.', 'Bu veriler zaten veritabanında mevcut. Lütfen başka bir tane deneyin.', 'Αυτά τα δεδομένα υπάρχουν ήδη στη βάση δεδομένων. Δοκιμάστε άλλο.', 'این اطلاعات قبلا در پایگاه داده وجود دارد. لطفا یکی دیگر را امتحان کنید', 'Data ini sudah wujud dalam pangkalan data. Sila cuba yang lain.', 'ડેટા ડેટાબેઝમાં આ ડેટા પહેલેથી હાજર છે. કૃપા કરી બીજી કોઈનો પ્રયાસ કરો.', 'Te dane już istnieją w bazie danych. Proszę spróbować innego.', 'Ці дані вже існують у базі даних. Будь ласка, спробуйте інший.', 'ਇਹ ਡੇਟਾ ਡੇਟਾਬੇਸ ਵਿੱਚ ਮੌਜੂਦ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਹੋਰ ਕੋਈ ਕੋਸ਼ਿਸ਼ ਕਰੋ.', 'Aceste date există deja în baza de date. Încearcă altul.', 'Data yi tẹlẹ wa ni ibi ipamọ data. Jọwọ ṣe idanwo miiran.', 'Wannan bayanai sun riga sun kasance a cikin bayanai. Da fatan a gwada wani.'),
(432, 'valid_file_format_doc', 'Document file format: .pdf, .doc/docx, .ppt/pptx  or .txt', 'ডকুমেন্ট ফাইল ফরমেট: পিডিএফ, .ডক, .ডোসিস ওর .টেক্সট', 'Formato de archivo de documento: pdf, .doc, .docx o .txt', 'تنسيق ملف المستند: بدف أو .doc أو .docx أو .txt', 'दस्तावेज़ फ़ाइल प्रारूप: पीडीएफ, .doc, .docx या .txt', 'دستاویز فائل کی شکل: پی ڈی ایف، .doc، .docx یا .txt', '文档文件格式：pdf，.doc，.docx或.txt', 'ドキュメントファイル形式：pdf、.doc、.docx、または.txt', 'Formato do arquivo de documento: pdf, .doc, .docx ou .txt', 'Формат файла документа: pdf, .doc, .docx или .txt', 'Format de fichier de document: pdf, .doc, .docx ou .txt', '문서 파일 형식 : pdf, .doc, .docx 또는 .txt', 'Dokumentdateiformat: pdf, .doc, .docx oder .txt', 'Formato del documento: pdf, .doc, .docx o .txt', 'รูปแบบไฟล์เอกสาร: pdf, .doc, .docx หรือ. txt', 'Dokumentum fájlformátum: pdf, .doc, .docx vagy .txt', 'Document bestandsformaat: pdf, .doc, .docx of .txt', 'Documentum formae q.e.: pdf, .doc, aut .docx .txt', 'Format file dokumen: pdf, .doc, .docx, atau .txt', 'Belge dosyası biçimi: pdf, .doc, .docx veya .txt', 'Μορφή αρχείου εγγράφου: pdf, .doc, .docx ή .txt', 'فرمت فایل اسناد: pdf، .doc، .docx یا .txt', 'Format fail dokumen: pdf, .doc, .docx atau .txt', 'દસ્તાવેજ ફાઇલ ફોર્મેટ: પીડીએફ, .ડોક, ..docx અથવા .txt', 'Format pliku dokumentu: pdf, .doc, .docx lub .txt', 'Формат файлу документа: pdf, .doc, .docx або .txt', 'ਦਸਤਾਵੇਜ਼ ਫਾਈਲ ਫਾਰਮੈਟ: ਪੀ ਡੀ ਐਫ, .ਡੌਕ, .ਡੌਕਸ ਜਾਂ .txt', 'Formatul fișierului documentului: pdf, .doc, .docx sau .txt', 'Faili faili faili: pdf, .doc, .docx or .txt', 'Tsarin fayil na fayil: pdf, .doc, .docx ko .txt'),
(433, 'valid_file_format_img', 'Image file format: .jpg, .jpeg, .png or .gif', 'ইমেজ ফাইল ফরমেট: .জেপিজি, .জেপেগ, .পং ওর .গিফ।', 'Formato de archivo de imagen: .jpg, .jpeg, .png o .gif', 'تنسيق ملف الصورة: .jpg أو .jpeg أو ينغ أو .gif', 'छवि फ़ाइल प्रारूप: .jpg, .jpeg, .png या .gif', 'تصویری فائل کی شکل: .jpg، .jpeg، .png یا .gif', '图像文件格式：.jpg，.jpeg，.png或.gif', '画像ファイル形式：.jpg、.jpeg、.png、.gif', 'Formato do arquivo de imagem: .jpg, .jpeg, .png ou .gif', 'Формат файла изображения: .jpg, .jpeg, .png или .gif', 'Format de fichier image: .jpg, .jpeg, .png ou .gif', '이미지 파일 형식 : .jpg, .jpeg, .png 또는 .gif', 'Bilddateiformat: .jpg, .jpeg, .png oder .gif', 'Formato file immagine: .jpg, .jpeg, .png o .gif', 'รูปแบบไฟล์รูปภาพ: .jpg, .jpeg, .png หรือ. gif', 'Képfájl formátuma: .jpg, .jpeg, .png vagy .gif', 'Afbeeldingsbestandsindeling: .jpg, .jpeg, .png of .gif', 'Image formae q.e.: .jpg, .jpeg, aut png .gif', 'Format file gambar: .jpg, .jpeg, .png, atau .gif', 'Resim dosyası biçimi: .jpg, .jpeg, .png veya .gif', 'Μορφή αρχείου εικόνας: .jpg, .jpeg, .png ή .gif', 'فرمت فایل تصویری: .jpg، .jpeg، .png یا .gif', 'Format fail imej: .jpg, .jpeg, .png atau .gif', 'છબી ફાઇલ ફોર્મેટ: .jpg, .jpeg, .png અથવા .gif', 'Format pliku obrazu: .jpg, .jpeg, .png lub .gif', 'Формат файлу зображень: .jpg, .jpeg, .png або .gif', 'ਚਿੱਤਰ ਫਾਇਲ ਫਾਰਮੈਟ: .jpg, .jpeg, .png ਜਾਂ .gif', 'Formatul fișierului imagine: .jpg, .jpeg, .png sau .gif', 'Aworan faili kika: .jpg, .jpeg, .png tabi .gif', 'Tsarin fayil na hotuna: .jpg, .jpeg, .png ko .gif'),
(434, 'select_valid_file_format', 'Please select a valid file format.', 'একটি ভ্যালিড ফাইল ফরমেট নির্বাচন করুন।', 'Seleccione un formato de archivo válido.', 'الرجاء تحديد تنسيق ملف صالح.', 'कृपया एक वैध फ़ाइल प्रारूप का चयन करें।', 'براہ کرم ایک درست فائل کی شکل منتخب کریں.', '请选择一个有效的文件格式。', '有効なファイル形式を選択してください。', 'Selecione um formato de arquivo válido.', 'Выберите допустимый формат файла.', 'Veuillez sélectionner un format de fichier valide', '유효한 파일 형식을 선택하십시오.', 'Bitte wählen Sie ein gültiges Dateiformat.', 'Si prega di selezionare un formato di file valido.', 'โปรดเลือกรูปแบบไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlformátumot.', 'Selecteer alstublieft een geldig bestandsformaat.', 'Placere eligere formae q.e. valet.', 'Silahkan pilih format file yang valid.', 'Lütfen geçerli bir dosya biçimi seçin.', 'Επιλέξτε μια έγκυρη μορφή αρχείου.', 'لطفا یک فرمت فایل معتبر را انتخاب کنید', 'Sila pilih format fail yang sah.', 'કૃપા કરી કોઈ માન્ય ફાઇલ ફોર્મેટ પસંદ કરો.', 'Wybierz prawidłowy format pliku.', 'Будь ласка, виберіть правильний формат файлу.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਫਾਰਮੈਟ ਚੁਣੋ.', 'Selectați un format de fișier valid.', 'Jọwọ yan ọna kika faili ti o wulo.', 'Da fatan za a zaɓi tsarin fayil mai aiki.'),
(435, 'select_a_file', 'Please select a valid file.', 'দয়া করে একটি ভ্যালিড ফাইল নির্বাচন করুন।', 'Seleccione un archivo válido.', 'الرجاء تحديد ملف صالح.', 'कृपया एक मान्य फ़ाइल चुनें', 'براہ کرم ایک درست فائل منتخب کریں.', '请选择一个有效的文件。', '有効なファイルを選択してください。', 'Selecione um arquivo válido.', 'Выберите действительный файл.', 'Veuillez sélectionner un fichier valide', '올바른 파일을 선택하십시오.', 'Bitte wählen Sie eine gültige Datei.', 'Si prega di selezionare un file valido.', 'โปรดเลือกไฟล์ที่ถูกต้อง', 'Kérjük, válasszon egy érvényes fájlt.', 'Selecteer alstublieft een geldig bestand.', 'Placere eligere file valet.', 'Silahkan pilih file yang valid.', 'Lütfen geçerli bir dosya seçin.', 'Επιλέξτε ένα έγκυρο αρχείο.', 'لطفا یک فایل معتبر را انتخاب کنید', 'Sila pilih fail yang sah.', 'કૃપા કરી કોઈ માન્ય ફાઇલ પસંદ કરો.', 'Proszę wybrać poprawny plik.', 'Будь ласка, виберіть дійсний файл.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਇਲ ਚੁਣੋ.', 'Selectați un fișier valid.', 'Jọwọ yan faili ti o wulo.', 'Da fatan a zaɓi fayil mai aiki.'),
(436, 'input_valid_amount', 'Please input valid amount.', 'দয়া করে ভ্যালিড পরিমাণ ইনপুট করুন।', 'Por favor ingrese un monto válido.', 'الرجاء إدخال مبلغ صالح.', 'कृपया वैध राशि इनपुट करें', 'براہ کرم ان پٹ درست رقم.', '请输入有效金额。', '有効な金額を入力してください。', 'Digite o valor válido.', 'Введите действительную сумму.', 'Veuillez entrer un montant valide', '유효한 금액을 입력하십시오.', 'Bitte geben Sie den gültigen Betrag ein.', 'Si prega di inserire un importo valido.', 'โปรดป้อนจำนวนที่ถูกต้อง', 'Kérem adja meg az érvényes összeget.', 'Voer een geldig bedrag in.', 'Initus placere ratum tantum.', 'Mohon masukan jumlah yang benar.', 'Lütfen geçerli tutarı giriniz.', 'Καταχωρίστε έγκυρο ποσό.', 'لطفا مقدار معتبر وارد کنید', 'Sila masukkan jumlah yang sah.', 'કૃપા કરીને માન્ય રકમ ઇનપુટ કરો.', 'Wprowadź prawidłową kwotę.', 'Будь ласка, введіть дійсну суму.', 'ਕਿਰਪਾ ਕਰਕੇ ਯੋਗ ਰਕਮ ਇੰਪੁੱਟ ਕਰੋ.', 'Introduceți suma validă.', 'Jọwọ iye owo titẹ sii.', 'Da fatan shigar da adadin shigarwa.'),
(437, 'input_valid_payment_setting', 'Please input correct payment setting.', 'প্লিজ ইনপুট কারেক্ট পেমেন্ট সেটিং।', 'Ingrese la configuración de pago correcta.', 'الرجاء إدخال إعداد الدفع الصحيح.', 'कृपया सही भुगतान सेटिंग इनपुट करें।', 'برائے مہربانی درست ادائیگی کی ترتیب میں ان پٹ', '请输入正确的付款设置。', '正しい支払い設定を入力してください。', 'Por favor, insira a configuração de pagamento correta.', 'Введите правильную настройку платежа.', 'Veuillez entrer le paramètre de paiement correct.', '올바른 지불 설정을 입력하십시오.', 'Bitte geben Sie die richtige Zahlungseinstellung ein.', 'Si prega di inserire le impostazioni di pagamento corrette.', 'โปรดป้อนการตั้งค่าการชำระเงินที่ถูกต้อง', 'Kérjük, adja meg a helyes fizetési beállítást.', 'Voer de juiste betalingsinstelling in.', 'Initus bene placent mercedem occasum.', 'Harap masukan pengaturan pembayaran yang benar.', 'Lütfen doğru ödeme ayarını giriniz.', 'Εισαγάγετε τη σωστή ρύθμιση πληρωμής.', 'لطفا تنظیم پرداخت درست را وارد کنید.', 'Sila masukkan tetapan pembayaran yang betul.', 'કૃપા કરીને યોગ્ય ચુકવણી સેટિંગ ઇનપુટ કરો.', 'Wprowadź poprawne ustawienie płatności.', 'Будь ласка, введіть правильний параметр оплати.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਹੀ ਭੁਗਤਾਨ ਸੈਟਿੰਗ ਇਨਪੁਟ ਕਰੋ.', 'Introduceți setarea de plată corectă.', 'Jọwọ ṣe ipinnu eto sisan ti o tọ.', 'Da fatan a shigar da saitin biya daidai.'),
(438, 'in_demo_db_backup', 'In demo database backp is disabled.', 'ডেমো ডেটাবেস ব্যাকআপে বন্ধ করা আছে।', 'En la copia de seguridad de la base de datos demo está desactivado', 'في النسخ الاحتياطي قاعدة البيانات التجريبي معطل.', 'डेमो डेटाबेस बैकअप में अक्षम है', 'ڈیمو ڈیٹا بیس کا بیک اپ غیر فعال ہے.', '在演示数据库中，备份被禁用。', 'デモでは、データベースのバックアップが無効になっています。', 'No backup do banco de dados demo está desativado.', 'В демонстрационной базе данных резервное копирование отключено.', 'Dans la sauvegarde de base de données démo est désactivé.', '데모에서 데이터베이스 백업이 비활성화되었습니다.', 'In der Demo ist die Datenbanksicherung deaktiviert.', 'Nel backup del database demo è disabilitato.', 'ในการสำรองฐานข้อมูลตัวอย่างถูกปิดใช้งาน', 'A demo adatbázis-mentés le van tiltva.', 'In demo-database is back-up uitgeschakeld.', 'In demo database tergum is disabled.', 'Dalam backup database demo dinonaktifkan.', 'Demo veritabanında yedekleme devre dışı bırakıldı.', 'Στην εφεδρική βάση δεδομένων επίδειξης είναι απενεργοποιημένη.', 'در نسخه پشتیبان تهیه نسخه ی نمایشی غیر فعال شده است.', 'Dalam sandaran pangkalan data demo dilumpuhkan.', 'ડેમો ડેટાબેસ બેકઅપ માં અક્ષમ છે.', 'W kopii zapasowej bazy danych demo jest wyłączone.', 'У демо-базі даних резервне копіювання вимкнено.', 'ਡੈਮੋ ਡਾਟਾਬੇਸ ਬੈਕਅੱਪ ਅਯੋਗ ਹੈ.', 'În baza de date demonstrativă, copia de rezervă este dezactivată.', 'Ni ipamọ afẹyinti ipamọ jẹ alaabo.', 'A cikin dimbin bayanan bayanan yanar gizo an kashe.'),
(439, 'this_room_already_allocated', 'This room already allocated at this time.', 'এই রুমে ইতিমধ্যে এই সময়ে বরাদ্দ করা আছে।', 'Esta habitación ya está asignada en este momento.', 'هذه الغرفة المخصصة بالفعل في هذا الوقت.', 'इस कमरे में पहले से ही इस समय आवंटित किया गया है।', 'اس کمرے کو اس وقت پہلے مختص کردیا گیا ہے.', '这个房间已经在这个时候分配了。', 'この部屋はこの時点ですでに割り当てられています。', 'Este quarto já foi alocado neste momento.', 'Эта комната уже выделена в это время.', 'Cette pièce est déjà allouée à ce moment.', '이 방은 이미이 시간에 할당되었습니다.', 'Dieses Zimmer ist zu dieser Zeit bereits vergeben.', 'Questa stanza è già stata assegnata in questo momento.', 'ห้องนี้มีการจัดสรรไว้แล้วในขณะนี้', 'Ez a szoba már kiosztott ebben az időben.', 'Deze kamer is al toegewezen op dit moment.', 'Hic locus iam ante hoc tempus partita imperia.', 'Kamar ini sudah dialokasikan saat ini.', 'Bu oda zaten bu saatte tahsis edilmiş.', 'Αυτό το δωμάτιο έχει ήδη διατεθεί αυτή τη στιγμή.', 'این اتاق در حال حاضر اختصاص داده شده است.', 'Bilik ini sudah diperuntukkan pada masa ini.', 'આ ખંડ પહેલેથી જ આ સમયે ફાળવવામાં આવ્યો છે.', 'Ten pokój został już przydzielony w tym momencie.', 'Цей номер уже виділений в цей час.', 'ਇਹ ਕਮਰਾ ਪਹਿਲਾਂ ਹੀ ਇਸ ਸਮੇਂ ਨਿਰਧਾਰਤ ਕੀਤਾ ਗਿਆ ਹੈ.', 'Această cameră deja alocată în acest moment.', 'Yara yii ti ṣetoto ni akoko yii.', 'Wannan dakin da aka riga aka ba shi a wannan lokaci.'),
(440, 'exam_final_result', 'Exam final result', 'পরীক্ষার চূড়ান্ত ফলাফল', 'Resultado final del examen', 'النتيجة النهائية للامتحان', 'परीक्षा अंतिम परिणाम', 'امتحان حتمی نتیجہ', '考试最终结果', '試験の最終結果', 'Resultado final do exame', 'Окончательный результат экзамена', 'Résultat final de lexamen', '시험 최종 결과', 'Prüfung Endergebnis', 'Esame finale', 'ผลสอบสุดท้าย', 'Vizsga végeredmény', 'Eindresultaat examen', 'Effectus finalis nito', 'Hasil akhir ujian', 'Sınav nihai sonucu', 'Εξέταση τελικού αποτελέσματος', 'نتیجه نهایی آزمون', 'Keputusan akhir peperiksaan', 'પરીક્ષાની અંતિમ પરિણામ', 'Egzamin końcowy egzaminu', 'Останній результат іспиту', 'ਇਮਤਿਹਾਨ ਦੇ ਆਖਰੀ ਨਤੀਜੇ', 'Exam final final', 'Ipari ikẹhin ipari', 'Binciken ƙarshe na binciken'),
(441, 'required_field', 'This field is required.', 'ফিল্ড টি  অবশ্যই পূরণ করতে হবে।', 'Este campo es requerido.', 'هذه الخانة مطلوبه.', 'यह फ़ील्ड आवश्यक है.', 'اس کو پر کرنا ضروری ہے.', '这是必填栏。', 'この項目は必須です。', 'Este campo é obrigatório.', 'Это поле обязательно к заполнению.', 'Ce champ est requis.', '이 입력란은 필수 항목입니다.', 'Dieses Feld wird benötigt.', 'Questo campo è obbligatorio.', 'ต้องระบุข้อมูลนี้', 'Ez a mező kötelező.', 'Dit veld is verplicht.', 'Hic ager requiritur.', 'Bagian ini diperlukan.', 'Bu alan gereklidir.', 'Αυτό το πεδίο απαιτείται.', 'این فیلد مورد نیاز است', 'Bidang ini diperlukan.', 'આ ક્ષેત્ર જરૂરી છે.', 'To pole jest wymagane.', 'Це поле є обовязковим.', 'ਇਸ ਫੀਲਡ ਦੀ ਲੋੜ ਹੈ.', 'Acest câmp este obligatoriu.', 'E ni lati se nkan si aye yi.', 'Wannan fillin ana bukatansa.'),
(442, 'enter_valid_email', 'Please enter a valid email address.', 'একটি ভ্যালিড ইমেইল ঠিকানা লিখুন।', 'Por favor, introduce una dirección de correo electrónico válida.', 'رجاء قم بإدخال بريد الكتروني صحيح.', 'कृपया एक वैध ई - मेल एड्रेस डालें।', 'برائے مہربانی قابل قبول ای میل ایڈریس لکھیں.', '请输入有效的电子邮件地址。', '有効なメールアドレスを入力してください。', 'Por favor insira um endereço de e-mail válido.', 'Пожалуйста, введите действительный адрес электронной почты.', 'Sil vous plaît, mettez une adresse email valide.', '유효한 이메일 주소를 입력하세요.', 'Bitte geben Sie eine gültige E-Mail-Adresse ein.', 'Si prega di inserire un indirizzo email valido.', 'กรุณาใส่อีเมล์ที่ถูกต้อง.', 'Kérjük valós e-mail címet adjon meg!', 'Gelieve een geldig e-mailadres in te geven.', 'Please enter inscriptio electronica valida.', 'Silakan isi alamat email.', 'Geçerli bir e.', 'Παρακαλώ εισάγετε μια έγκυρη διεύθυνση ηλεκτρονικού ταχυδρομείου.', 'لطفا یک آدرس ایمیل معتبر وارد کنید.', 'Sila masukkan alamat emel yang sah.', 'કૃપા કરી કોઈ માન્ય ઇમેઇલ સરનામું દાખલ કરો.', 'Proszę wpisać aktualny adres e-mail.', 'Будь ласка, введіть дійсну адресу електронної пошти.', 'ਇੱਕ ਜਾਇਜ ਈਮੇਲ ਪਤਾ ਦਰਜ ਕਰੋ.', 'Te rog introdu o adresa de email valida.', 'Jowo fun fun wa ni imeli re to je otito.', 'Don Allah shigar da adireshin i-mel mai inganci.'),
(443, 'enter_valid_url', 'Please enter a valid URL.', 'একটি ভ্যালিড ইউআরএল প্রবেশ করুন।', 'Por favor introduzca un URL válido.', 'أدخل رابط صحيح من فضلك.', 'कृपया एक मान्य यूआरएल दर्ज कीजिए।', 'براہ کرم ایک درست URL درج کریں.', '请输入有效网址。', '有効なURLを入力してください。', 'Por favor, insira um URL válido.', 'Пожалуйста, введите корректный адрес.', 'Veuillez entrer une URL valide', '유효한 URL을 입력 해주세요.', 'Bitte geben Sie eine gültige URL ein.', 'Per favore, inserisci un URL valido.', 'โปรดป้อน URL ที่ถูกต้อง.', 'Kérem, írjon be egy érvényes url-t.', 'Voer een geldige URL in.', 'Please enter validum URL.', 'Masukkan URL yang valid', 'Lütfen geçerli bir adres girin.', 'Εισαγάγετε μια έγκυρη διεύθυνση URL.', 'لطفا یک نشانی وب معتبر وارد کنید.', 'Sila masukkan URL yang sah.', 'કૃપા કરી માન્ય URL દાખલ કરો', 'Proszę podać poprawny adres URL.', 'Будь ласка, введіть дійсну URL-адресу.', 'ਇੱਕ ਵੈਧ URL ਦਾਖਲ ਕਰੋ.', 'Introduceți o adresă URL validă.', 'Jowo tẹ URL ti o wulo.', 'Da fatan a shigar da adireshin mai amfani.'),
(444, 'enter_valid_date', 'Please enter a valid date.', 'একটি ভ্যালিড তারিখ লিখুন দয়া করে।', 'Por favor introduzca una fecha valida.', 'ارجوك ادخل تاريخ صحيح.', 'कृपया एक मान्य तिथि प्रविष्ट करें।', 'براہ کرم ایک درست تاریخ درج کریں.', '请输入一个有效的日期。', '有効な日付を入力してください。', 'Por favor insira uma data válida.', 'Пожалуйста, введите правильную дату.', 'Veuillez entrer une date valide.', '유효한 날짜를 입력하십시오.', 'Bitte gib ein korrektes Datum an.', 'Per favore, inserisci una data valida.', 'โปรดป้อนวันที่ที่ถูกต้อง', 'Kérjük, adjon meg egy érvényes dátumot.', 'Vul alstublieft een geldige datum in.', 'Please enter validum diem.', 'Harap masukkan tanggal yang valid.', 'Lütfen geçerli bir tarih giriniz.', 'Παρακαλώ εισάγετε μία έγκυρη ημερομηνία.', 'لطفا یک تاریخ معتبر وارد کنید.', 'Sila masukkan tarikh yang sah.', 'કૃપા કરી માન્ય તારીખ દાખલ કરો.', 'Proszę wprowadź poprawną datę.', 'Будь ласка, введіть дійсну дату.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਤਾਰੀਖ ਦਰਜ ਕਰੋ', 'Vă rugăm să introduceți o dată validă.', 'Jowo tẹ ọjọ ti o wulo.', 'Da fatan a shigar da kwanan wata mai aiki.'),
(445, 'enter_valid_number', 'Please enter a valid number.', 'দয়া করে একটি ভ্যালিড নম্বর লিখুন।', 'Por favor ingrese un número valido.', 'من فضلك أدخل رقما صالحا.', 'कृपया एक सही संख्या डालिये।', 'براہ مہربانی ایک درست نمبر درج کریں.', '请输入一个有效的号码。', '有効な数値を入力してください。', 'por favor insira um número válido.', 'Пожалуйста, введите корректное число.', 'Sil vous plait, entrez un nombre valide.', '올바른 번호를 입력하십시오.', 'Bitte geben Sie eine gültige Nummer ein.', 'Per favore, inserire un numero valido.', 'โปรดป้อนหมายเลขที่ถูกต้อง', 'Kérjük, adjon meg érvényes számot.', 'Voer alstublieft een geldig nummer in.', 'Please enter validum est numerus.', 'Masukkan nomor yang valid', 'Lütfen geçerli bir numara girin.', 'Παρακαλώ εισάγετε έναν έγκυρο αριθμό.', 'لطفا یک شماره تلفن معتبر وارد کنید.', 'Sila masukkan nombor yang sah.', 'કૃપા કરી કોઈ માન્ય નંબર દાખલ કરો.', 'Proszę wprowadzić poprawny numer.', 'Введіть дійсний номер.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਪ੍ਰਮਾਣਿਕ ਸੰਖਿਆ ਦਰਜ ਕਰੋ.', 'Introduceți un număr valid.', 'Jowo tẹ nọmba nọmba kan.', 'Da fatan a shigar da lambar mai aiki.'),
(446, 'enter_only_digit', 'Please enter only digits.', 'অনুগ্রহ করে শুধুমাত্র সংখ্যা প্রবেশ করান।', 'Por favor ingrese solo dígitos.', 'الرجاء إدخال أرقام فقط.', 'कृपया केवल अंक दर्ज करें।', 'صرف ہندسوں درج کریں.', '请只输入数字。', '数字のみ入力して下さい。', 'Digite apenas dígitos.', 'Пожалуйста, вводите только цифры.', 'Merci de nentrer que des chiffres.', '숫자 만 입력하십시오.', 'Bitte gib nur Ziffern ein.', 'Per favore, inserisci solo cifre.', 'โปรดป้อนตัวเลขเท่านั้น', 'Kérem csak számjegyeket adjon meg.', 'Alleen cijfers invoeren a.u.b.', 'PDF nisi constet.', 'Harap masukkan angka saja.', 'Lütfen sadece rakam giriniz.', 'Παρακαλώ εισάγετε μόνο ψηφία.', 'لطفا فقط رقم را وارد کنید', 'Sila masukkan angka sahaja.', 'કૃપા કરીને માત્ર અંકો દાખલ કરો', 'Wprowadź tylko cyfry.', 'Будь ласка, введіть лише цифри.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਰਫ ਅੰਕ ਭਰੋ.', 'Te rog introdu doar cifre.', 'Jọwọ tẹ awọn nọmba nikan sii.', 'Da fatan a shigar da lambobi kawai.'),
(447, 'enter_same_value_again', 'Please enter the same value again.', 'আবার একই ভ্যালু লিখুন দয়া করে।', 'Por favor, introduzca el mismo valor de nuevo.', 'من فظلك ادخل نفس القيمة مرة أخرى.', 'कृपया फिर से वही संख्या डालिये।', 'ایک بار پھر ایک ہی قیمت درج کریں.', '请再次填写同等数值。', 'もう一度同じ値を入力してください。', 'Por favor entre com o mesmo valor novamente.', 'Повторите одно и то же значение.', 'Entrez à nouveau la même valeur sil vous plait.', '다시 동일한 값을 입력하십시오.', 'Bitte geben Sie den gleichen Wert erneut ein.', 'Si prega di inserire di nuovo lo stesso valore.', 'โปรดป้อนค่าเดิมอีกครั้ง', 'Kérem, írja be ugyanazt az értéket újra.', 'Voer dezelfde waarde opnieuw in.', 'PDF simile est.', 'Harap masukkan nilai yang sama lagi.', 'Lütfen aynı değeri tekrar giriniz.', 'Εισαγάγετε ξανά την ίδια τιμή.', 'لطفا مجددا همان مقدار را وارد کنید.', 'Sila masukkan nilai yang sama sekali lagi.', 'કૃપા કરીને ફરીથી સમાન મૂલ્ય દાખલ કરો.', 'Wprowadź ponownie tę samą wartość.', 'Будь ласка, введіть те саме значення знову.', 'ਕਿਰਪਾ ਕਰਕੇ ਦੁਬਾਰਾ ਉਹੀ ਮੁੱਲ ਦਰਜ ਕਰੋ.', 'Introduceți din nou aceeași valoare.', 'Jowo tẹ iye kanna naa lẹẹkansi.', 'Da fatan a sake shigar da wannan darajar.'),
(448, 'pls_fix_this', 'Please fix this field.', 'এইটা ঠিক করুন।', 'Por favor arregla este campo.', 'الرجاء إصلاح هذا الحقل.', 'कृपया यह फ़ील्ड ठीक करें।', 'براہ مہربانی اس فیلڈ کو ٹھیک کریں.', '请修复这一块。', 'このフィールドを直してください。', 'Por favor, corrija este campo.', 'Исправьте это поле.', 'Veuillez corriger ce champ.', '이 항목을 수정하여주십시오.', 'Bitte repariere dieses Feld.', 'Si prega di correggere questo campo.', 'โปรดแก้ไขฟิลด์นี้', 'Kérlek, javítsd ki ezt a mezőt.', 'Corrigeer dit veld.', 'Placere figere ipsa cellula compleatur.', 'Perbaiki bidang ini', 'Bu alanı düzeltin lütfen.', 'Παρακαλώ διορθώστε αυτό το πεδίο.', 'لطفا این فیلد را اصلاح کنید', 'Sila betulkan medan ini.', 'કૃપા કરી આ ફીલ્ડને ઠીક કરો.', 'Proszę poprawić to pole.', 'Виправте це поле.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਖੇਤਰ ਨੂੰ ਠੀਕ ਕਰੋ.', 'Vă rugăm să remediați acest câmp.', 'Jọwọ ṣatunkọ aaye yii.', 'Da fatan a gyara wannan filin.'),
(449, 'permission_denied', 'You have no permission to access this page.', 'আপনি এই পৃষ্ঠা অ্যাক্সেস করার অনুমতি নেই।', 'No tienes permiso para acceder a esta página.', 'ليس لديك إذن للدخول إلى هذه الصفحة.', 'आपको इस पृष्ठ को एक्सेस करने की अनुमति नहीं है।', 'آپ کو اس صفحہ تک رسائی حاصل کرنے کی اجازت نہیں ہے.', '您无权访问此页面。', 'このページにアクセスする権限はありません。', 'Você não tem permissão para acessar esta página.', 'У вас нет разрешения на доступ к этой странице.', 'Vous nêtes pas autorisé à accéder à cette page.', '이 페이지에 액세스 할 수있는 권한이 없습니다.', 'Sie haben keine Berechtigung, auf diese Seite zuzugreifen.', 'Non hai il permesso di accedere a questa pagina.', 'คุณไม่มีสิทธิ์เข้าถึงหน้านี้', 'Nincs engedélye ennek az oldalnak az elérésére.', 'U hebt geen toestemming om deze pagina te openen.', 'Nullas tibi accessere hanc paginam permission.', 'Anda tidak memiliki izin untuk mengakses halaman ini.', 'Bu sayfaya erişmek için herhangi bir iznin yok.', 'Δεν έχετε καμία άδεια πρόσβασης σε αυτήν τη σελίδα.', 'شما اجازه دسترسی به این صفحه ندارید.', 'Anda tidak mempunyai kebenaran untuk mengakses halaman ini.', 'આ પૃષ્ઠને ઍક્સેસ કરવાની તમારી પાસે કોઈ પરવાનગી નથી', 'Nie masz uprawnień dostępu do tej strony.', 'Ви не маєте дозволу на доступ до цієї сторінки.', 'ਤੁਹਾਨੂੰ ਇਸ ਪੇਜ ਨੂੰ ਐਕਸੈਸ ਕਰਨ ਦੀ ਕੋਈ ਅਨੁਮਤੀ ਨਹੀਂ ਹੈ.', 'Nu aveți permisiunea de a accesa această pagină.', 'O ko ni igbanilaaye lati wọle si oju-ewe yii.', 'Ba ku da izini don samun damar wannan shafin.'),
(451, 'payment_success', 'Payment has been successfully.', 'পেমেন্ট সফলভাবে হয়েছে।', 'El pago ha sido exitoso.', 'تم الدفع بنجاح.', 'भुगतान सफलतापूर्वक किया गया है', 'ادائیگی کامیاب ہوگئی ہے.', '付款已成功。', '支払いは正常に完了しました。', 'O pagamento foi feito com sucesso.', 'Оплата прошла успешно.', 'Le paiement a été effectué avec succès.', '지불이 완료되었습니다.', 'Die Zahlung wurde erfolgreich ausgeführt.', 'Il pagamento è andato a buon fine.', 'การชำระเงินสำเร็จแล้ว', 'A kifizetés sikeresen megtörtént.', 'De betaling is succesvol verlopen.', 'Solucionis fuerit feliciter.', 'Pembayaran sudah berhasil', 'Ödeme başarıyla yapıldı.', 'Η πληρωμή ολοκληρώθηκε με επιτυχία.', 'پرداخت با موفقیت انجام شده است', 'Pembayaran telah berjaya.', 'ચુકવણી સફળતાપૂર્વક કરવામાં આવી છે', 'Płatność została pomyślnie.', 'Оплата була успішною.', 'ਭੁਗਤਾਨ ਸਫਲਤਾਪੂਰਵਕ ਕੀਤਾ ਗਿਆ ਹੈ', 'Plata a fost efectuată cu succes.', 'Isanwo ti wa ni ifijišẹ.', 'Biyan bashi ya samu nasarar.'),
(452, 'payment_failed', 'Payment failed. Please try again.', 'পেমেন্ট ব্যর্থ হয়েছে. অনুগ্রহপূর্বক আবার চেষ্টা করুন।', 'Pago fallido. Inténtalo de nuevo.', 'عملية الدفع فشلت. حاول مرة اخرى.', 'भुगतान असफल हुआ। कृपया पुन: प्रयास करें।', 'ادائیگی ناکام ہوگئی. دوبارہ کوشش کریں.', '支付失败。 请再试一次。', '支払いに失敗しました。 もう一度お試しください。', 'Pagamento falhou. Por favor, tente novamente.', 'Платеж не прошел. Пожалуйста, попробуйте еще раз.', 'Paiement échoué. Veuillez réessayer.', '결제 실패. 다시 시도하십시오.', 'Bezahlung fehlgeschlagen. Bitte versuche es erneut.', 'Pagamento fallito. Per favore riprova.', 'การชำระเงินล้มเหลว กรุณาลองอีกครั้ง.', 'Fizetés meghiúsult. Kérlek próbáld újra.', 'Betaling mislukt. Probeer het opnieuw.', 'Payment defecit. Quaero, iterum conare.', 'Pembayaran gagal. Silahkan coba lagi', 'Ödeme başarısız. Lütfen tekrar deneyin.', 'Η πληρωμή απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'پرداخت ناموفق. لطفا دوباره تلاش کنید.', 'Pembayaran gagal. Sila cuba lagi.', 'ચૂકવણી નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Płatność nie powiodła się. Proszę spróbuj ponownie.', 'Оплата не виконана. Будь ласка спробуйте ще раз.', 'ਭੁਗਤਾਨ ਅਸਫਲ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Plata esuata. Vă rugăm să încercați din nou.', 'Isanwo ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'Baya ya biya. Da fatan a sake gwadawa.'),
(453, 'you_have_remain_character', 'You have remain character/ letter ', 'আপনার অক্ষর বাকি আছে।', 'Has quedado personaje / carta', 'لديك حرف / حرف', 'आप चरित्र / पत्र रह गए हैं', 'آپ کا کردار / خط باقی ہے', '你保持字符/字母', 'あなたは文字/文字のままです', 'Você permaneceu caráter / carta', 'У вас есть символ / письмо', 'Vous avez reste caractère / lettre', '문자 / 문자로 남았습니다.', 'Du hast Charakter / Brief behalten', 'Hai carattere / lettera rimasti', 'คุณยังมีตัวอักษร / ตัวอักษร', 'Ön továbbra is karakter / betű marad', 'Je bent karakter / letter gebleven', 'Vos autem manent ingenii / litterae', 'Anda tetap memiliki karakter / huruf', 'Karakter / mektup kalmışsın', 'Έχετε παραμείνει χαρακτήρα / γράμμα', 'شما شخصیت / نامه را باقی میگذارید', 'Anda mempunyai watak / huruf tetap', 'તમે અક્ષર / અક્ષર રહેલા છે', 'Pozostałeś postacią / literą', 'Ви залишитеся символом / листом', 'ਤੁਸੀਂ ਅੱਖਰ / ਪੱਤਰ ਰਹੇ ਹੋ', 'Tu rămâi caracter / scrisoare', 'O ti wa ni iwa / lẹta', 'Ka kasance hali / wasika');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(454, 'privilege_not_setting', 'The Role Permission for this user not yet set.', 'এই ব্যবহারকারীর জন্য ভূমিকা অনুমতি এখনও সেট করা হয়নি।', 'El permiso de función para este usuario aún no se ha establecido.', 'لم يتم تعيين إذن الدور لهذا المستخدم بعد.', 'इस उपयोगकर्ता के लिए भूमिका अनुमति अभी तक सेट नहीं है', 'اس صارف کیلئے ابھی تک کردار کی اجازت نہیں ہے.', '此用户的角色权限尚未设置。', 'このユーザーのロール権限はまだ設定されていません。', 'A Permissão de Função para este usuário ainda não está configurado.', 'Разрешение роли для этого пользователя еще не установлено.', 'Lautorisation de rôle pour cet utilisateur nest pas encore définie.', '이 사용자에 대한 역할 권한이 아직 설정되지 않았습니다.', 'Die Rollenberechtigung für diesen Benutzer wurde noch nicht festgelegt.', 'Autorizzazione ruolo per questo utente non ancora impostato.', 'สิทธิ์การใช้งานบทบาทสำหรับผู้ใช้รายนี้ยังไม่ได้ตั้งค่า', 'A szerepkör engedélye erre a felhasználóra még nincs beállítva.', 'De rolmachtiging voor deze gebruiker is nog niet ingesteld.', 'De munere licentiam concedere quod nondum user set.', 'Izin Peran untuk pengguna ini belum ditetapkan.', 'Bu kullanıcı için Role Permission henüz ayarlanmadı.', 'Η άδεια ρόλου για αυτόν το χρήστη δεν έχει οριστεί ακόμα.', 'مجوز نقش برای این کاربر هنوز تعیین نشده است.', 'Kebenaran Peranan untuk pengguna ini belum ditetapkan.', 'આ વપરાશકર્તા માટે રોલ પરવાનગી હજુ સુધી સેટ નથી.', 'Uprawnienia roli dla tego użytkownika jeszcze nie zostały ustawione.', 'Рольовий дозвіл для цього користувача ще не встановлено.', 'ਇਸ ਉਪਭੋਗਤਾ ਲਈ ਭੂਮਿਕਾ ਦੀ ਅਨੁਮਤੀ ਅਜੇ ਵੀ ਸੈਟ ਨਹੀਂ ਕੀਤੀ ਗਈ.', 'Permisiunea de rol pentru acest utilizator nu a fost încă setată.', 'Igbese Ilana fun olumulo yii ko sibẹsibẹ ṣeto.', 'Ƙungiyar izinin mai amfani ba tukuna an saita ba.'),
(455, 'add_syllabus_instruction', 'Please add academic year before create syllabus.', 'পাঠ্যসূচী তৈরি করার আগে অনুগ্রহপূর্বক  একাডেমিক বছর অ্যাড করুন।', 'Agregue el año académico antes de crear el plan de estudios.', 'يرجى إضافة العام الدراسي قبل إنشاء المنهج.', 'पाठ्यक्रम बनाने से पहले शैक्षणिक वर्ष जोड़ें।', 'نصاب کو تخلیق کرنے سے پہلے تعلیمی سال شامل کریں.', '请在创建教学大纲之前添加学年。', 'シラバスを作成する前に学年を追加してください。', 'Por favor, adicione ano acadêmico antes de criar programas.', 'Пожалуйста, добавьте учебный год до создания учебного плана.', 'Veuillez ajouter une année académique avant de créer un syllabus.', '교과를 만들기 전에 학년을 추가하십시오.', 'Bitte fügen Sie akademisches Jahr vor dem Erstellen des Lehrplans hinzu.', 'Per favore aggiungi lanno accademico prima di creare il programma.', 'กรุณาเพิ่มปีการศึกษาก่อนที่จะสร้างหลักสูตร', 'Kérjük, add meg az egyetemi évet a tanterv létrehozása előtt.', 'Voeg academiejaar toe voordat u een syllabus maakt.', 'Anno ante partum aliter digerere velit academic add.', 'Harap tambahkan tahun akademik sebelum membuat silabus.', 'Müfredat oluşturmadan önce lütfen akademik yıl ekleyin.', 'Παρακαλείσθε να προσθέσετε ακαδημαϊκό έτος πριν δημιουργήσετε το αναλυτικό πρόγραμμα.', 'لطفا سال تحصیلی را قبل از ایجاد برنامه درسی اضافه کنید.', 'Sila tambah tahun akademik sebelum membuat sukatan pelajaran.', 'અભ્યાસક્રમ બનાવવા પહેલાં શૈક્ષણિક વર્ષ ઉમેરો.', 'Dodaj rok akademicki przed utworzeniem sylabusa.', 'Будь ласка, додайте навчальний рік, перш ніж створювати навчальний план.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਿਲੇਬਸ ਬਣਾਉਣ ਤੋਂ ਪਹਿਲਾਂ ਅਕਾਦਮਿਕ ਸਾਲ ਜੋੜੋ', 'Vă rugăm să adăugați un an universitar înainte de a crea programa.', 'Jowo fi ọjọ-ẹkọ ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-ẹkọ-', 'Da fatan za a kara shekara ta ilimi kafin ƙirƙirar salo.'),
(456, 'add_routine_instruction', 'Must be good combination (between room, time, teacher, day & subject) for routine.', 'রুটিনের জন্য ভালো সমন্বয় (রুম, সময়, শিক্ষক, দিন এবং বিষয় মধ্যে) হতে হবে।', 'Debe ser una buena combinación (entre la habitación, el tiempo, el maestro, el día y el tema) para la rutina.', 'يجب أن تكون تركيبة جيدة (بين الغرفة والوقت والمعلم واليوم والموضوع) للروتين.', 'दिनचर्या के लिए अच्छे संयोजन (कमरे, समय, शिक्षक, दिन और विषय के बीच) होना चाहिए।', 'معمول کے لئے اچھا مجموعہ (کمرے، وقت، استاد، دن اور موضوع کے درمیان) ہونا ضروری ہے.', '必须是常规的良好组合（房间，时间，老师，日期和主题）。', 'ルーチンのためには、（部屋、時間、教師、日、テーマの間の）良い組み合わせでなければなりません。', 'Deve ser uma boa combinação (entre sala, tempo, professor, dia e assunto) para a rotina.', 'Должна быть хорошая комбинация (между комнатой, временем, учителем, днем и субъектом) для рутины.', 'Doit être une bonne combinaison (entre la pièce, lheure, lenseignant, le jour et le sujet) pour la routine.', '평소에는 (방, 시간, 선생님, 낮 과목 사이에) 좋은 조합이어야합니다.', 'Muss eine gute Kombination sein (zwischen Raum, Zeit, Lehrer, Tag und Thema) für die Routine.', 'Deve essere una buona combinazione (tra stanza, orario, insegnante, giorno e materia) per la routine.', 'ต้องเป็นชุดที่ดี (ระหว่างห้องเวลาครูวันและเรื่อง) เป็นประจำ', 'Jó kombinációnak kell lennie (helyiség, idő, tanár, nap és téma között) a rutinhoz.', 'Moet een goede combinatie zijn (tussen kamer, tijd, docent, dag en onderwerp) voor routine.', 'Bonum est combination (inter locus, tempus, magister, & re die), pro exercitatione.', 'Harus kombinasi yang baik (antara ruang, waktu, guru, hari & subjek) untuk rutinitas.', 'Rutin için iyi bir kombinasyon (oda, zaman, öğretmen, gün ve konu arasında) olmalı.', 'Πρέπει να είναι καλός συνδυασμός (μεταξύ δωματίου, χρόνου, καθηγητή, μέρα & θέμα) για ρουτίνα.', 'ترکیب مناسب (بین اتاق، زمان، معلم، روز و موضوع) باید به صورت منظم باشد.', 'Harus menjadi kombinasi yang baik (antara bilik, masa, guru, hari & mata pelajaran) untuk rutin.', 'નિત્યક્રમ માટે સારા સંયોજન (ખંડ, સમય, શિક્ષક, દિવસ અને વિષય વચ્ચે) હોવો જોઈએ.', 'Musi to być dobra kombinacja (między pokojem, czasem, nauczycielem, dniem i tematem) dla rutyny.', 'Повинно бути гарною комбінацією (між кімнатою, часом, вчителем, днем та предметом) для звичайної роботи.', 'ਰੁਟੀਨ ਲਈ ਵਧੀਆ ਮਿਸ਼ਰਨ ਹੋਣਾ (ਕਮਰੇ, ਸਮੇਂ, ਅਧਿਆਪਕ, ਦਿਨ ਅਤੇ ਵਿਸ਼ੇ ਵਿਚਕਾਰ).', 'Trebuie să fie o combinație bună (între cameră, timp, profesor, zi și subiect) pentru rutină.', 'Gbọdọ jẹ apapo ti o dara (laarin yara, akoko, olukọ, ọjọ & akori) fun iṣiro.', 'Dole ne ya kasance haɗin hade (tsakanin ɗaki, lokaci, malami, rana da batun) don na yau da kullum.'),
(457, 'exam_attendance_instruction', 'Please create exam schedule for this Exam, Class, Section & Subject.', 'এই পরীক্ষা, ক্লাস, সেকশন ও বিষয়ের জন্য পরীক্ষার সময়সূচী তৈরি করুন।', 'Por favor, cree un cronograma de exámenes para este examen, clase, sección y tema.', 'يرجى إنشاء جدول الامتحانات لهذا الامتحان، فئة، قسم والموضوع.', 'कृपया इस परीक्षा, कक्षा, धारा और विषय के लिए परीक्षा कार्यक्रम बनाएं।', 'برائے مہربانی اس امتحان، کلاس، سیکشن اور موضوع کیلئے امتحان شیڈول بنائیں.', '请为此考试，班级，科目和科目创建考试时间表。', 'この試験、クラス、セクション＆サブジェクトの試験スケジュールを作成してください。', 'Crie um cronograma de exame para este Exame, Classe, Seção e Assunto.', 'Создайте расписание экзаменов для этого экзамена, класса, раздела и темы.', 'Veuillez créer un horaire dexamen pour cet examen, classe, section et sujet.', '이 시험, 클래스, 섹션 및 제목에 대한 시험 일정을 작성하십시오.', 'Bitte erstellen Sie einen Prüfungsplan für diese Prüfung, Klasse, Abschnitt und Thema.', 'Si prega di creare un programma desame per questo esame, classe, sezione e argomento.', 'โปรดสร้างกำหนดการสอบสำหรับการสอบวิชา Class, Section & Subject', 'Kérjük, hozzon létre vizsgaütemezést ehhez a vizsgahoz, osztályhoz, szekcióhoz és tárgyhoz.', 'Maak een examenrooster voor dit examen, de cursus, sectie en onderwerp.', 'Placere creare nito schedule hoc IV: I classis, & Art subiectum.', 'Tolong buat jadwal ujian untuk Ujian, Kelas, Seksi & Subjek ini.', 'Lütfen bu Sınav, Ders, Bölüm ve Konunun sınav takvimini oluşturun.', 'Δημιουργήστε το πρόγραμμα εξετάσεων για αυτήν την εξέταση, κλάση, ενότητα & θέμα.', 'لطفا برنامه آزمون برای این آزمون، کلاس، بخش و موضوع ایجاد کنید.', 'Sila buat jadual peperiksaan untuk Peperiksaan, Kelas, Bahagian & Subjek ini.', 'આ પરીક્ષા, વર્ગ, વિભાગ અને વિષય માટે પરીક્ષા શેડ્યૂલ બનાવો.', 'Utwórz harmonogram egzaminów dla tego egzaminu, klasy, sekcji i przedmiotu.', 'Будь ласка, створіть графік іспитів для цього іспиту, класу, розділу та теми.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਪ੍ਰੀਖਿਆ, ਕਲਾਸ, ਭਾਗ ਅਤੇ ਵਿਸ਼ੇ ਦੇ ਲਈ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਬਣਾਓ.', 'Vă rugăm să creați un program de examen pentru acest examen, clasă, secțiune și subiect.', 'Jowo ṣẹda iṣeto ayẹwo fun Akọwo yii, Kilasi, Abala & Koko.', 'Don Allah a halicci jimillar jarrabawar wannan jarrabawar, Class, Sashe & Sashe.'),
(458, 'exam_mark_instruction', 'Please ensure Exam Schedule and Exam Attendance before Exam Mark Entry.', 'পরীক্ষা মার্ক এণ্ট্রি আগে পরীক্ষার সময়সূচী এবং পরীক্ষা উপস্থিতি নিশ্চিত করুন।', 'Por favor asegúrese de Horario de Examen y Asistencia al Examen antes de la Entrada de la Marca de Examen.', 'يرجى التأكد من جدول الامتحانات وحضور الامتحان قبل دخول علامة الامتحان.', 'परीक्षा मार्क एंट्री से पहले परीक्षा अनुसूची और परीक्षा उपस्थिति सुनिश्चित करें।', 'امتحان مارک انٹری سے پہلے امتحان شیڈول اور امتحان حاضری کو یقینی بنائیں.', '入学考试前，请确保考试时间表和考试出勤。', '試験のマーク入力の前に試験スケジュールと試験出席を確認してください。', 'Por favor, assegure o horário de exame e a participação no exame antes da entrada na marca do exame.', 'Пожалуйста, убедитесь, что экзаменационные экзамены и экзамен посещаемости до сдачи экзамена Марк.', 'Veuillez vous assurer de respecter le calendrier des examens et la participation aux examens avant lentrée à lexamen.', '시험 마크 입력 전에 시험 일정과 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass der Prüfungsplan und die Anwesenheit der Prüfung vor der Eintragung der Prüfungsnote eingehalten werden.', 'Si prega di assicurare la pianificazione degli esami e la frequenza degli esami prima delliscrizione.', 'โปรดตรวจสอบตารางการสอบและการเข้าร่วมการสอบก่อนการสอบของ Mark Entry', 'Kérjük, győződjön meg arról, hogy az Exam Mark Entry és Exam Attendance Exam Mark Entry előtt van.', 'Zorg ervoor dat het examenrooster en het examen aanwezig zijn vóór de inzending van het examen.', 'Test Morbi rhoncus velit, ut et IV ante Attendance Mark Test Entry.', 'Harap pastikan Jadwal Ujian dan Ujian Kehadiran sebelum Entri Tanda Ujian.', 'Sınav işareti girmeden önce lütfen Sınav Takvimi ve Sınav Ekibinden emin olunuz.', 'Βεβαιωθείτε ότι έχετε προγραμματίσει τις εξετάσεις και την εξέταση πριν την εγγραφή.', 'لطفا قبل از امتحان علامت گذاری به عنوان خوانده شده تست برنامه آزمون و حضور در آزمون را تضمین کنید.', 'Sila pastikan Jadual Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Peperiksaan.', 'પરીક્ષા માર્ક એન્ટ્રી પહેલાં પરીક્ષાની સૂચિ અને પરીક્ષા હાજરી નક્કી કરો.', 'Należy upewnić się, że harmonogram egzaminów i udział w egzaminach poprzedzą wejście do egzaminu.', 'Будь ласка, вкажіть час іспиту і відвідуваність іспиту перед початком вступки до іспиту.', 'ਐਜੂਕੇਸ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că ați verificat programul de examen și examenul înainte de înscrierea în examen.', 'Jọwọ ṣe idaniloju Akoko Idaduro ati Akokọ Ibẹwo ṣaaju titẹ Akọsilẹ Akọsilẹ.', 'Da fatan a tabbatar da Gwargwadon Binciken da Jarraba Tambaya kafin jarrabawar Mark Mark.'),
(459, 'mark_sheet_instruction', 'Please ensure Exam Attendance and Exam Mark to find Mark Sheet.', 'মার্ক শিট খুঁজে পেতে পরীক্ষার এ্যাটেনডেন্স এবং পরীক্ষা মার্ক নিশ্চিত করুন।', 'Asegúrate de que la Asistencia al examen y la Marca del examen encuentren la Hoja de calificaciones.', 'يرجى التأكد من امتحان الحضور وامتحان علامة لإيجاد علامة ورقة.', 'मार्क शीट को खोजने के लिए परीक्षा उपस्थिति और परीक्षा अंक को सुनिश्चित करें', 'براہ کرم مارک شیٹ کو تلاش کرنے کے لئے امتحان حاضری اور امتحان مارک کو یقینی بنائیں.', '请确保考试出席和考试标志找到标记表。', 'マークシートを見つけるには、試験出席と試験マークを確認してください。', 'Certifique-se da presença do exame e da marca do exame para encontrar a folha de marca.', 'Пожалуйста, убедитесь, что экзамен посещаемости и экзамен Марк, чтобы найти Mark Sheet.', 'Veuillez vous assurer de la présence à lexamen et de la note dexamen pour trouver la feuille de notes.', '마크 시트를 찾으려면 시험 출석과 시험 마크를 확인하십시오.', 'Bitte stellen Sie sicher, dass die Prüfungsteilnahme und die Prüfungsnote Mark-Sheet finden.', 'Si prega di assicurare la partecipazione agli esami e il marchio dellesame per trovare il foglio dei voti.', 'โปรดตรวจสอบว่ามีผู้เข้าสอบและเครื่องหมายสอบเพื่อหา Mark Sheet', 'Kérjük, hogy az Exam Attendance és a Exam Mark-ot találja meg a Mark Sheet-et.', 'Zorg ervoor dat u een examenformulier en een examencertificaat aantreft om het beoordelingsformulier te vinden.', 'Placere operam ad inveniendum Mark Mark Chapter OMNIBUS June IV Sheet.', 'Harap pastikan Ujian Kehadiran dan Tanda Ujian untuk menemukan Lembar Tandai.', 'Marka Belgesini bulmak için lütfen Sınav Devamını ve Sınav İşaretini sağlayın.', 'Βεβαιωθείτε ότι έχετε παρακολουθήσει την εξέταση και εξετάστε το για να βρείτε το φύλλο σημείωσης.', 'لطفا از بازدید کننده امتحان و علامت آزمون اطمینان حاصل کنید تا علامت ورق را پیدا کنید.', 'Sila pastikan Kehadiran Peperiksaan dan Ujian Peperiksaan untuk mencari Mark Sheet.', 'માર્ક શીટ શોધવા માટે પરીક્ષાની હાજરી અને પરીક્ષા માર્ક કરો.', 'Prosimy o upewnienie się, że obecność na egzaminie i znak egzaminu jest zaznaczona.', 'Будь ласка, впевніться, що відвідувачі іспитів і екзаменаційні квитки знайдете листівки.', 'ਕਿਰਪਾ ਕਰਕੇ ਮਾਰਕ ਸ਼ੀਟ ਨੂੰ ਲੱਭਣ ਲਈ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਅਤੇ ਪ੍ਰੀਖਿਆ ਪੱਤਰ ਨੂੰ ਯਕੀਨੀ ਬਣਾਓ.', 'Asigurați-vă că ați participat la examen și la examen pentru a găsi o coală Mark.', 'Jowo rii daju pe idaduro Ijadii ati Ṣayẹwo Marku lati wa Mark Sheet.', 'Da fatan a tabbatar da Hannun Binciken da Takaddun Mark don neman Mark Sheet.'),
(460, 'exam_result_instruction', 'Please ensure Exam Mark and Exam Attendance before Final Mark Entry.', 'চূড়ান্ত মার্ক এণ্ট্রি আগে পরীক্ষা মার্ক এবং পরীক্ষার উপস্থিতি নিশ্চিত করুন।', 'Por favor, asegúrese de la marca de examen y la asistencia al examen antes de la entrada de la marca final.', 'يرجى التأكد من امتحان علامة وامتحان الحضور قبل علامة النهائي الدخول.', 'अंतिम मार्क प्रविष्टि से पहले परीक्षा मार्क और परीक्षा उपस्थिति सुनिश्चित करें', 'فائن مارک انٹری سے پہلے امتحان کے نشان اور امتحان کی حاضری یقینی بنائیں.', '请在最终标记输入前确保考试标志和考试出勤。', '最終マーク記入前に試験マークと試験出席を確認してください。', 'Certifique-se de Exame da marca e da presença do exame antes da entrada na marca final.', 'Пожалуйста, убедитесь, что экзамен и участие в экзамене перед окончательной записью.', 'Sil vous plaît assurez-vous dexamen et de présence à lexamen avant lentrée de la note finale.', '최종 점수 입력 전에 시험 점수와 시험 출석을 확인하십시오.', 'Bitte stellen Sie sicher, dass Sie die Prüfung und die Teilnahme an der Prüfung vor der endgültigen Noteneingabe erhalten.', 'Si prega di assicurare la certificazione degli esami e la partecipazione agli esami prima della registrazione del voto finale.', 'โปรดตรวจสอบให้แน่ใจว่ามีผู้เข้าร่วมการสอบและการสอบเข้าร่วมการแข่งขันก่อนเข้าร่วมการแข่งขัน Final Mark Entry', 'Kérjük, győződjön meg az Exam Mark és Exam Attendance előtt a végső belépési bejegyzést.', 'Zorg ervoor dat het examen en het examen aanwezig zijn vóór de definitieve inschrijving.', 'Mark quaeso ensure nito et Finalis nito apud Attendance Mark Entry.', 'Harap pastikan Tanda Ujian dan Ujian Kehadiran sebelum Entri Mark Akhir.', 'Nihai İşaret Girişinden önce lütfen Sınav İmzası ve Sınav Ekibinden emin olun.', 'Παρακαλείσθε να βεβαιωθείτε για την εξέταση και την εξέταση πριν την τελική εγγραφή.', 'لطفا قبل از ورود به نشریه نهایی علامت گذاری آزمون و حضور آزمون را تضمین کنید.', 'Sila pastikan Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Akhir.', 'અંતિમ માર્ક એન્ટ્રી પહેલાં પરીક્ષા માર્ક અને પરીક્ષાની હાજરી નિશ્ચિત કરો.', 'Prosimy o upewnienie się, że Egzamin i Egzaminacja Egzaminu odbywają się przed Ostatecznym Wpisem.', 'Ознайомтеся з учасниками іспитів та учасниками іспитів перед початком вступного запису.', 'ਕਿਰਪਾ ਕਰਕੇ ਅੰਤਮ ਮਾਰਕ ਐਂਟਰੀ ਤੋਂ ਪਹਿਲਾਂ ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ ਯਕੀਨੀ ਬਣਾਉ.', 'Asigurați-vă că examinați examenul și examenul înainte de înscrierea în marcajul final.', 'Jọwọ ṣe idaniloju Atilẹkọ Akọsilẹ ati isinwo Iwoye ṣaaju Ṣiṣe Akọsilẹ Titẹ.', 'Da fatan a tabbatar da Takaddun Mark da Takaddama na Aiki kafin shigarwa na karshe.'),
(461, 'promotion_instruction_1', 'Please choose carefully Running Session & Promote Session.', 'দয়া করে সাবধানে চলমান সেশন  এবং প্রমোট সেশন নির্বাচন করুন।', 'Elija cuidadosamente Ejecutar sesión y promover sesión.', 'الرجاء اختيار بعناية تشغيل جلسة وتعزيز الدورة.', 'कृपया सावधानी से चल रहे सत्र और सत्र को बढ़ावा दें चुनें।', 'براہ کرم رننگ سیشن اور سیشن کو فروغ دینے کے لۓ منتخب کریں.', '请谨慎选择运行会议和推广会议。', '慎重に実行セッションとプロモートセッションを選択してください。', 'Por favor, escolha cuidadosamente a Sessão de Sessão e Promoção.', 'Пожалуйста, тщательно выберите «Запуск сеанса» и «Содействие».', 'Sil vous plaît choisir soigneusement session en cours et promouvoir la session.', '신중하게 세션 및 프로모션 세션을 선택하십시오.', 'Bitte wählen Sie sorgfältig ', 'Si prega di scegliere attentamente Running Session & Promoting Session.', 'เลือกเซสชันและเซสชันส่งเสริมการขายอย่างรอบคอบ', 'Kérjük, gondosan válassza a Futtatás és a kampány előmozdítását.', 'Kies zorgvuldig Sessie uitvoeren en sessie promoten.', 'Placere eligere diligenter & Thronus Sessio Promovere Sessio.', 'Harap pilih Session & Promote Session dengan hati-hati.', 'Lütfen dikkatle Çalışmayı Seçin ve Oturumu Tanıtın.', 'Επιλέξτε προσεκτικά την εκτέλεση της συνόδου και την προώθηση της συνόδου.', 'لطفا با دقت در حال اجرا Session & Promote Session را انتخاب کنید.', 'Sila pilih Sesi Berjalan & Sesi Promosi dengan hati-hati.', 'કૃપા કરીને કાળજીપૂર્વક ચાલી રહેલ સત્ર અને પ્રમોશન સત્ર પસંદ કરો.', 'Proszę wybrać ostrożnie Running Session & Promote Session.', 'Будь ласка, обережно вибирайте запуск сеансу та просуньте сеанс.', 'ਕਿਰਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਚੱਲ ਰਹੇ ਸੈਸ਼ਨ ਨੂੰ ਚੁਣੋ ਅਤੇ ਸੈਸ਼ਨ ਨੂੰ ਪ੍ਰਮੋਟ ਕਰੋ.', 'Alegeți cu atenție Rularea sesiunii și promovarea sesiunii.', 'Jowo yan Ṣeto Nilẹ Ikẹkọ ati Igbimọ Ikẹkọ.', 'Da fatan za a zaɓa a zahiri a Gudun Zama da Tsarin Zama.'),
(462, 'promotion_instruction_2', 'Please choose carefully Current Class & Promote to Class.', 'দয়া করে সাবধানে বর্তমান ক্লাস  এবং প্রমোট ক্লাস নির্বাচন করুন।', 'Por favor, elija con cuidado la Clase actual y Promocione a la clase.', 'يرجى اختيار بعناية الفئة الحالية والترقية إلى فئة.', 'कृपया ध्यान दें वर्तमान कक्षा और श्रेणी में प्रचार करें।', 'براہ کرم احتیاط سے موجودہ کلاس کا انتخاب کریں اور کلاس میں فروغ دیں.', '请仔细选择当前课程并提升到课堂。', '慎重に選択してください現在のクラスとクラスへの昇格', 'Por favor, escolha cuidadosamente a classe atual e promova a classe.', 'Пожалуйста, выберите внимательно Текущий класс и продвигайте класс.', 'Sil vous plaît choisir soigneusement classe actuelle et promouvoir à la classe.', '주의 깊게 선택하십시오 Current Class & Class to Promote.', 'Bitte wählen Sie sorgfältig Aktuelle Klasse und Promote to Class.', 'Si prega di scegliere attentamente Classe corrente e promozione in classe.', 'โปรดเลือก Class ปัจจุบันและโปรโมต Class', 'Kérem, gondosan válassza az Aktuális osztály és az előadás osztályba.', 'Gelieve zorgvuldig te kiezen Huidige klasse en promotie naar klas.', 'Placere eligere diligenter Current Class Promovere in Ps.', 'Silakan pilih kelas yang sekarang dengan hati-hati & promosikan ke kelas.', 'Lütfen Geçerli Sınıfı Seçin ve Sınıfı Tanıtın.', 'Επιλέξτε προσεκτικά την τρέχουσα κλάση και την προώθηση στην κλάση.', 'لطفا دقت کلاس فعلی را ارتقا دهید و کلاس را ارتقا دهید.', 'Sila pilih Kelas Semasa & Menggalakkan Kelas dengan berhati-hati.', 'કૃપા કરી કાળજીપૂર્વક વર્તમાન વર્ગ પસંદ કરો અને વર્ગમાં પ્રમોટ કરો.', 'Wybierz ostrożnie Obecna klasa i promuj do klasy.', 'Будь ласка, обережно вибирайте поточний клас та рекламуйте до класу.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਧਿਆਨ ਨਾਲ ਵਰਤਮਾਨ ਕਲਾਸ ਅਤੇ ਪ੍ਰੋਮੋਟ ਤੋਂ ਕਲਾਸ ਚੁਣੋ.', 'Alegeți cu atenție Clasa curentă și promovați în clasă.', 'Jọwọ yan abojuto Kilasi lọwọlọwọ & Igbelaruge si Kilasi.', 'Da fatan za a zaɓa a hankali A halin yanzu Class & Yi Nasara zuwa Class.'),
(463, 'promotion_instruction_3', 'Please complete the process of Exam, Exam Schedule, Exam Attendance, Exam Mark & Final Result.', 'অনুগ্রহপূর্বক পরীক্ষার প্রক্রিয়া, পরীক্ষার সময়সূচী, পরীক্ষার উপস্থিতি, পরীক্ষার চিহ্ন এবং চূড়ান্ত ফলাফল সম্পন্ন করুন।', 'Complete el proceso de Examen, Programa de examen, Asistencia de examen, Marca de examen y Resultado final.', 'يرجى إكمال عملية الامتحان، جدول الامتحانات، امتحان الحضور، علامة الامتحان والنتيجة النهائية.', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم امتحان، امتحان شیڈول، امتحان حاضری، امتحان مارک اور حتمی نتائج کا عمل مکمل کریں.', '请完成考试，考试时间表，考试考勤，考试标志和最终结果的过程。', '試験、試験のスケジュール、試験の出席、試験のマークと最終結果のプロセスを完了してください。', 'Por favor, complete o processo de exame, horário de exames, atendimento ao exame, marca de exame e resultado final.', 'Завершите процесс экзамена, экзаменационного экзамена, экзаменационного экзамена, экзамена и итогового результата.', 'Veuillez compléter le processus dexamen, le programme dexamen, la présence aux examens, la note dexamen et le résultat final.', '시험, 시험 일정, 시험 참석, 시험 점수 및 최종 결과의 과정을 완료하십시오.', 'Bitte führen Sie den Prozess der Prüfung, des Prüfungsplans, der Prüfungsbesuch, der Prüfungsnote und des Abschlussergebnisses durch.', 'Si prega di completare il processo di esame, pianificazione dellesame, partecipazione agli esami, voto dellesame e risultato finale.', 'กรุณากรอกแบบฟอร์มการสอบ, กำหนดการสอบ, เข้าร่วมการสอบ, เครื่องหมายการสอบและผลการทดสอบขั้นสุดท้าย', 'Kérjük, töltse ki a vizsga, az érettségi vizsga, az érettségi, a vizsgajegy és a végeredmény folyamatát.', 'Voltooi het proces van examen, examenroosters, examen, examen en eindresultaat.', 'Placere perficere processus MACROCYTOSIS, Exam Schedule, OMNIBUS June IV: Mark Chapter & exitu rerum.', 'Selesaikan proses Ujian, Jadwal Ujian, Ujian Kehadiran, Tanda Ujian & Hasil Akhir.', 'Lütfen Sınav, Sınav Takvimi, Sınav Katılımı, Sınav Sonucu ve Final Sonuç sürecini tamamlayın.', 'Παρακαλούμε συμπληρώστε τη διαδικασία της εξέτασης, του προγράμματος εξετάσεων, της συμμετοχής στις εξετάσεις, του εξεταστικού σημειώματος και του τελικού αποτελέσματος.', 'لطفا روند امتحان، برنامه امتحان، حضور امتحان، معاینه آزمون و نتیجه نهایی را تکمیل کنید.', 'Sila lengkapkan proses Peperiksaan, Jadual Peperiksaan, Kehadiran Peperiksaan, Peperiksaan Ujian & Keputusan Akhir.', 'પરીક્ષા, પરીક્ષા શેડ્યૂલ, પરીક્ષા હાજરી, પરીક્ષા માર્ક અને અંતિમ પરિણામની પ્રક્રિયા પૂર્ણ કરો.', 'Prosimy o wypełnienie procesu egzaminu, egzaminu, egzaminu, egzaminu i końcowego wyniku.', 'Будь ласка, заповніть процедуру іспиту, графіку іспиту, відвідуваність іспиту, оцінку іспиту та остаточний результат.', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ, ਪ੍ਰੀਖਿਆ ਸ਼ਡਿਊਲ, ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ, ਪ੍ਰੀਖਿਆ ਅੰਕ ਅਤੇ ਅੰਤਿਮ ਨਤੀਜੇ ਦੀ ਪ੍ਰਕਿਰਿਆ ਪੂਰੀ ਕਰੋ.', 'Completați procesul de examen, program de examen, examen, examen și rezultat final.', 'Jọwọ pari awọn ilana ti kẹhìn, Akokọwo Itanwo, Aṣọwo Iwoye, Aṣayẹwo ayẹwo ati Ipari ikẹhin.', 'Don Allah a kammala aikin nazarin, Nazarin Jirgin, Jirgin Tambaya, Alamar Duba & Sakamako na ƙarshe.'),
(464, 'promotion_instruction_4', 'Please double check all Students Total Marks, Obtain Mark, Average Grade Point & Next Class Roll No.', 'দয়া করে সকল শিক্ষার্থীর মোট নম্বর, প্রাপ্ত নম্বর, গড় গ্রেড পয়েন্ট এবং পরবর্তী শ্রেণী রোল নম্বর চেক করুন।', 'Verifique por favor todas las marcas totales de estudiantes, obtenga la marca, el promedio de calificaciones y la siguiente clase.', 'يرجى التحقق مرة أخرى من جميع الطلاب مجموع العلامات، والحصول على علامة، متوسط درجة نقطة و التالي فئة لفة رقم', 'कृपया परीक्षा, परीक्षा अनुसूची, परीक्षा उपस्थिति, परीक्षा अंक और अंतिम परिणाम की प्रक्रिया को पूरा करें।', 'براہ کرم تمام طالب علموں کو کل مارکس چیک کریں، مارک حاصل کریں، اوسط گریڈ پوائنٹ اور اگلے کلاس رول نمبر', '请仔细检查所有学生的总分，获得分数，平均分和下一班的卷号', '生徒の合計標章、標章の取得、平均等級点および次のクラスのロール番号を再度確認してください', 'Por favor, verifique novamente todas as Marcas Total de Estudantes, Obter Marca, Ponto Médico e Próxima Classe Roll No.', 'Пожалуйста, дважды проверьте все учащиеся, общее количество баллов, получите оценку, среднюю оценку и следующий класс.', 'Veuillez vérifier toutes les notes totales des élèves, obtenir la note, la note moyenne et la prochaine classe', '모든 학생 수 표, 점수 획득, 평균 성적 점수 및 다음 등급 롤 수를 다시 확인하십시오.', 'Bitte überprüfen Sie alle Schüler-Gesamtpunkte, erhalten Sie Mark, Durchschnittspunkt und nächste Klasse Roll-Nr.', 'Si prega di ricontrollare tutti gli indicatori Total Marks, Obtain Mark, Average Grade Point e Next Class.', 'โปรดตรวจสอบเครื่องหมายคะแนนนักศึกษาทั้งหมด, ดูเครื่องหมาย, คะแนนเฉลี่ยและลำดับถัดไปเลขที่ม้วน', 'Kérem, ellenőrizze az összes diákok teljes pontszámát, szerezze meg a pontszámot, átlag pontot és a következő osztályú tekercset.', 'Controleer alsjeblieft alle studenten totaalcijfers, cijfer behalen, gemiddelde cijferpunt en volgende klasserol nr.', 'Velit gemino reprehendo omnes alumni Romanum marcas, Mark Alleluia, & mediocris gradus punctum Next Class Roll No.', 'Harap periksa kembali semua Siswa Total Marks, Dapatkan Mark, Rata-rata Nilai Kelas & Gulungan Kelas Berikutnya No.', 'Lütfen tüm Öğrencilerin Toplam İşaretlerini, İşaretle, Ortalama Puan Puanı ve Sonraki Sınıf Rulo Numarasını kontrol edin.', 'Παρακαλώ ελέγξτε διπλά όλους τους μαθητές Σύνολο σημείων, αποκτήστε το σήμα, το μέσο βαθμό βαθμού και το επόμενο κύκλο', 'لطفا تمام دانشجویان کل عالمت ها، علامت گذاری، رتبه متوسط و رول بعدی کلاس را بررسی کنید', 'Sila semak semula semua Markah Jumlah Pelajar, Dapatkan Tanda, Nilai Gred Purata & No.', 'કૃપા કરીને બધાં વિદ્યાર્થીના કુલ ગુણની તપાસ કરો, માર્ક, સરેરાશ ગ્રેડ પોઇન્ટ અને આગળનો વર્ગ રોલ નંબર મેળવો.', 'Sprawdź dokładnie wszystkie oceny uczniów, zdobądź ocenę, średnią ocenę i numer następnej klasy', 'Будь ласка, подвійно перевірте всі студенти загальних знаків, отримайте знак, середню оцінку точки та наступний клас Roll No.', 'ਕ੍ਰਿਪਾ ਕਰਕੇ ਸਾਰੇ ਵਿਦਿਆਰਥੀਆਂ ਦੇ ਕੁੱਲ ਅੰਕ ਪਤਾ ਕਰੋ, ਪ੍ਰਾਪਤ ਕਰੋ ਮਾਰਕ, ਔਸਤ ਗਰੇਡ ਪੁਆਇੰਟ ਅਤੇ ਅਗਲਾ ਕਲਾਸ ਰੋਲ ਨੰਬਰ', 'Verificați dublu toți studenții Mark Total, Obțineți marca, Punctul mediu și următoarea clasă Roll Nr.', 'Jọwọ ṣe ayẹwo lẹẹmeji gbogbo Awọn akẹkọ Awọn ami ni gbogbo, Gba Samisi, Oṣuwọn Ipele Apapọ & Eerun Kọọkan Ibẹkọ No.', 'Don Allah sau biyu duba duk daliban Ƙidaya Ƙididdiga Alamomi, Sami Mark, Matsakaicin Matsayi Bayyana & Kayan Kayan Kira.'),
(465, 'promotion_instruction_5', 'All things are 100% correct Then Promote Students to Next Class.', 'সবকিছুর 100% সঠিক তারপর শিক্ষার্থীদের পরবর্তী শ্রেণীতে উন্নীত করুন।', 'Todas las cosas son 100% correctas. Luego, promueva a los estudiantes a la siguiente clase.', 'جميع الأشياء صحيحة 100٪ ثم تعزيز الطلاب إلى الدرجة التالية.', 'सभी चीजें 100% सही हैं, फिर छात्रों को अगली कक्षा में बढ़ावा देना।', 'تمام چیزیں 100٪ درست ہیں، پھر طلباء کو اگلا کلاس میں فروغ دیں.', '所有的事情都是100％正确的，然后促进学生下一课。', 'すべてのものが100％正しいです。次に、学生を次のクラスに昇格させます。', 'Todas as coisas estão 100% corretas. Em seguida, promova alunos para a próxima classe.', 'Все вещи на 100% правильны. Затем продвигайте студентов в следующий класс.', 'Toutes les choses sont 100% correctes Puis promouvoir les étudiants à la prochaine classe.', '모든 것은 100 % 정확합니다. 그런 다음 학생들을 다음 학급으로 승급하십시오.', 'Alle Dinge sind zu 100% korrekt. Dann fördern Sie die Schüler zur nächsten Klasse.', 'Tutte le cose sono corrette al 100%, quindi promuovi gli studenti alla prossima lezione.', 'ทุกอย่างถูกต้อง 100% แล้วโปรโมตนักเรียนให้เข้าชั้นเรียนถัดไป', 'Minden dolog 100% -ban helyes, majd elősegíti a diákokat a következő osztályba.', 'Alle dingen zijn 100% correct. Promoot vervolgens studenten naar de volgende klas.', 'Et bene omnia sunt, C% Next Promovere studentibus ad generalia Ps.', 'Semua hal 100% benar Lalu Promosikan Siswa ke Kelas Selanjutnya.', 'Her şey% 100 doğrudur Sonra Öğrencileri Bir Sonraki Sınıfta Tanıtın.', 'Όλα τα πράγματα είναι 100% σωστά Στη συνέχεια προωθήστε τους μαθητές στην επόμενη τάξη.', 'همه چیز 100٪ درست است سپس دانش آموزان را به کلاس بعدی ارتقا دهید.', 'Semua perkara adalah 100% betul Kemudian Menggalakkan Pelajar ke Kelas Seterusnya.', 'બધી વસ્તુઓ 100% સાચી છે પછી વિદ્યાર્થીઓને આગામી વર્ગમાં પ્રમોટ કરો.', 'Wszystkie rzeczy są w 100% poprawne Następnie promuj uczniów do następnej klasy.', 'Всі речі правильні на 100%. Потім просувайте студентів до наступного класу.', 'ਸਾਰੀਆਂ ਚੀਜ਼ਾਂ 100% ਠੀਕ ਹਨ. ਫਿਰ ਵਿਦਿਆਰਥੀਆਂ ਨੂੰ ਅਗਲੀ ਕਲਾਸ ਵਿਚ ਉਤਸ਼ਾਹਿਤ ਕਰੋ.', 'Toate lucrurile sunt 100% corecte Apoi promovează elevii în clasa următoare.', 'Gbogbo ohun ni o wa 100% atunṣe Lẹhinna Ṣẹda Awọn Ile-iwe si Kilasi Oju.', 'Dukkanin abubuwa 100% daidai Saan nan kuma ƙaddara ɗaliban zuwa Kashi na gaba.'),
(466, 'average_grade_point', 'GPA', 'জিপিএ', 'GPA', 'المعدل التراكمي', 'जीपीए', 'جی پی اے', '等级点平均值', '平均等級点', 'gpa', 'оценка', 'gpa', '학점', 'gpa', 'gpa', 'เกรดเฉลี่ย', 'gpa', 'gpa', 'gpa', 'gpa', 'not ortalamasını', 'gpa', 'درجه امتیاز', 'gpa', 'જીપા', 'gpa', 'ГПа', 'ਜੀਪੀਏ', 'grad punct', 'gpa', 'gpa'),
(467, 'please_select_a_route', 'Please select a Route.', 'একটি রুট নির্বাচন করুন।', 'Seleccione una ruta.', 'الرجاء تحديد مسار.', 'कृपया एक रूट चुनें', 'براہ راست راستہ منتخب کریں.', '请选择路线。', 'ルートを選択してください。', 'Selecione uma Rota.', 'Выберите маршрут.', 'Veuillez sélectionner un itinéraire.', '경로를 선택하십시오.', 'Bitte wählen Sie eine Route.', 'Si prega di selezionare una rotta.', 'โปรดเลือกเส้นทาง', 'Kérjük, válasszon ki egy útvonalat.', 'Selecteer alstublieft een route.', 'Placere eligere Iter itineris.', 'Silakan pilih Rute.', 'Lütfen bir Güzergah seçin.', 'Επιλέξτε μια διαδρομή.', 'لطفا یک مسیر را انتخاب کنید', 'Sila pilih Laluan.', 'કૃપા કરીને એક રસ્તો પસંદ કરો', 'Wybierz trasę.', 'Будь ласка, виберіть маршрут.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਰੂਟ ਚੁਣੋ.', 'Selectați o rută.', 'Jọwọ yan Itọsọna kan.', 'Da fatan a zaɓi hanyar.'),
(468, 'return_success', 'Book return successfully', 'বই সফলভাবে ফেরত হয়েছে।', 'Libro devuelto con éxito', 'عودة الكتاب بنجاح', 'बुक सफलतापूर्वक वापस', 'کتاب کامیابی سے واپسی', '预订成功', '書籍の返品に成功', 'Livro de retorno com sucesso', 'Успешное возвращение книги', 'Le retour du livre a réussi', '도서 반환 성공', 'Buchen Sie erfolgreich zurück', 'Prenota con successo', 'หนังสือคืนสำเร็จแล้ว', 'A könyv sikeres visszaadása', 'Boek teruggave succesvol', 'Revertetur libro prospere', 'Pesan berhasil kembali', 'Kitap iadesi başarıyla gerçekleştirildi', 'Επαναφορά βιβλίου με επιτυχία', 'بازگشت کتاب با موفقیت', 'Pulangan buku berjaya', 'ચોપડે સફળતાપૂર્વક વળતર', 'Zwrot książki powodzeniem', 'Книга повертається успішно', 'ਕਿਤਾਬ ਸਫਲਤਾਪੂਰਵਕ ਵਾਪਸ ਆਉਂਦੀ ਹੈ', 'Revenirea la carte a reușit', 'Iwe pada ni ifijišẹ', 'Book dawo da nasara'),
(469, 'due_amount', 'Due Amount', 'বাকি টাকা', 'Cantidad debida', 'مبلغ مستحق', 'देय राशि', 'باقی رقم', '到期金额', '金額', 'Valor devedor', 'Надлежащей суммы', 'Montant dû', '만기 금액', 'Fälliger Betrag', 'Importo dovuto', 'จำนวนเงินที่ครบกำหนด', 'Teljes összeg', 'Te betalen bedrag', 'ob Aliquam', 'Jumlah kematian', 'Ödenecek meblağ', 'Οφειλόμενο ποσό', 'مقدار قابل توجه', 'Jumlah terhutang', 'નિયત રકમ', 'Kwota należna', 'Належна сума', 'ਕਮਾਈ ਰਕਮ', 'Suma datorata', 'Fun iye', 'Saboda Adadin'),
(470, 'user_active_status', 'Your account is not active. Please contact with administrator.', 'আপনার অ্যাকাউন্ট সক্রিয় নয়। প্রশাসকের সঙ্গে যোগাযোগ করুন দয়া করে।', 'Su cuenta no está activa. Por favor, póngase en contacto con el administrador.', 'حسابك غير فعال. يرجى الاتصال بالمشرف.', 'आपका खाता सक्रिय नहीं है। कृपया व्यवस्थापक से संपर्क करें', 'آپ کا اکاؤنٹ فعال نہیں ہے. برائے مہربانی منتظم کے ساتھ رابطہ کریں.', '您的帐户不活跃。 请与管理员联系。', 'あなたのアカウントはアクティブではありません。 管理者に連絡してください。', 'Sua conta não está ativa. Entre em contato com o administrador.', 'Ваша учетная запись неактивна. Пожалуйста, свяжитесь с администратором.', 'Votre compte nest pas actif. Sil vous plaît contacter avec ladministrateur.', '귀하의 계정이 활성화되어 있지 않습니다. 관리자에게 문의하십시오.', 'Dein Konto ist nicht aktiv. Bitte kontaktieren Sie den Administrator.', 'Il tuo account non è attivo. Si prega di contattare con lamministratore.', 'บัญชีของคุณไม่ทำงาน โปรดติดต่อผู้ดูแลระบบ', 'Fiókod nem aktív. Kérjük, lépjen kapcsolatba a rendszergazdával.', 'Uw account is niet actief. Neem contact op met de beheerder.', 'Ratio tua est activae. Placere contactus administrator.', 'Akunmu tidak aktif. Silahkan kontak dengan administrator.', 'Hesabınız aktif değil. Lütfen yönetici ile iletişime geçin.', 'Ο λογαριασμός σας δεν είναι ενεργός. Επικοινωνήστε με τον διαχειριστή.', 'حساب شما فعال نیست لطفا با مدیر تماس بگیرید', 'Akaun anda tidak aktif. Sila hubungi dengan pentadbir.', 'તમારું એકાઉન્ટ સક્રિય નથી. સંચાલક સાથે સંપર્ક કરો.', 'Twoje konto nie jest aktywne. Skontaktuj się z administratorem.', 'Ваш обліковий запис не активний. Будь ласка, звяжіться з адміністратором.', 'ਤੁਹਾਡਾ ਖਾਤਾ ਕਿਰਿਆਸ਼ੀਲ ਨਹੀਂ ਹੈ. ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰਬੰਧਕ ਨਾਲ ਸੰਪਰਕ ਕਰੋ', 'Contul dvs. nu este activ. Contactați administratorul.', 'Akoto rẹ ko ṣiṣẹ. Jọwọ kan si pẹlu alakoso.', 'Asusunku ba aiki ba ne. Da fatan a tuntuɓi mai gudanarwa.'),
(471, 'certificate', 'Certificate', 'সার্টিফিকেট', 'Certificado', 'شهادة', 'प्रमाणपत्र', 'سرٹیفیکیٹ', '证书', '証明書', 'Certificado', 'сертификат', 'Certificat', '증명서', 'Zertifikat', 'Certificato', 'ใบรับรอง', 'Bizonyítvány', 'Certificaat', 'libellum', 'Sertifikat', 'sertifika', 'Πιστοποιητικό', 'گواهی', 'Sijil', 'પ્રમાણપત્ર', 'Certyfikat', 'Сертифікат', 'ਸਰਟੀਫਿਕੇਟ', 'Certificat', 'Ijẹrisi', 'Certificate'),
(472, 'main_certificate_text', 'Certificate Text', 'সার্টিফিকেট বিষয়বস্তু', 'Certificado de texto', 'نص الشهادة', 'प्रमाणपत्र पाठ', 'سرٹیفکیٹ متن', '证书文本', '証明書のテキスト', 'Texto do Certificado', 'Текст сертификата', 'Texte du certificat', '인증서 텍스트', 'Zertifikatstext', 'Testo del certificato', 'ข้อความรับรอง', 'Tanúsítványszöveg', 'Certificaattekst', 'libellum Text', 'Teks Sertifikat', 'Sertifika Metni', 'Κείμενο πιστοποιητικού', 'متن گواهی', 'Teks Sijil', 'પ્રમાણપત્ર ટેક્સ્ટ', 'Tekst certyfikatu', 'Текст сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਟੈਕਸਟ', 'Textul certificatului', 'Iwe ijẹrisi', 'Takaddun shaida'),
(473, 'footer_left', 'Footer Left Text', 'ফুটার বাম টেক্সট', 'Texto de pie de página a la izquierda', 'تذييل النص الأيسر', 'पाद लेख वाम पाठ', 'فوٹر بائیں متن', '页脚左边的文字', 'フッター左のテキスト', 'Rodapé do texto à esquerda', 'Нижний левый текст', 'Pied gauche Texte', '꼬리말 왼쪽 텍스트', 'Fußzeile linken Text', 'Testo a piè di pagina a sinistra', 'ข้อความท้ายกระดาษท้าย', 'Footer Left Text', 'Voettekst Linkertekst', 'Reliquit Footer Text', 'Footer Left Text', 'Altbilgi Sol Metin', 'Υποσέλιδο αριστερό κείμενο', 'پاورقی متن چپ', 'Teks Kiri Kaki', 'ફૂટર ડાબે ટેક્સ્ટ', 'Footer Left Text', 'Нижній колонтитул ліворуч', 'ਪਦਲੇਖ ਖੱਬੇ ਪਾਠ', 'Subtitrarea textului din subsol', 'Onkọ Left Ẹsẹ', 'Rubutun Hagu na Hagu'),
(474, 'footer_middle', 'Footer Middle Text', 'ফুটার মধ্যম টেক্সট', 'Texto intermedio del pie de página', 'تذييل الصفحة الوسطى النص', 'पाद लेख मध्य पाठ', 'فوٹر مشرق وسطی', '页脚中间文本', 'フッター中間テキスト', 'Texto do rodapé', 'Нижний текст нижнего колонтитула', 'Pied Moyen Texte', '꼬리말 중간 텍스트', 'Fußzeile mittlerer Text', 'Footer Middle Text', 'ข้อความระดับกลางของท้ายกระดาษ', 'Lábra középső szöveg', 'Voettekst Middelste tekst', 'Medio Footer Text', 'Footer Middle Text', 'Altbilgi Orta Metin', 'Υποσέλιδο Μέσο κείμενο', 'Footer Middle Text', 'Teks Tengah Footer', 'ફૂટર મધ્ય લખાણ', 'Stopka środkowy tekst', 'Нижній колонтитул середній текст', 'ਫੁੱਟਰ ਮੱਧ ਪਾਠ', 'Subtitrarea textului de mijloc', 'Ẹkọ Agbegbe Aarin', 'Rubutun Tsakiyar Tsakiya'),
(475, 'footer_right', 'Footer Right Text', 'ফুটার ডান টেক্সট', 'Texto a la derecha del pie de página', 'تذييل النص الأيمن', 'पाद लेख सही टेक्स्ट', 'فوٹر صحیح متن', '页脚正确的文本', 'フッタ右のテキスト', 'Texto à direita do rodapé', 'Нижний текст нижнего колонтитула', 'Pied droit Texte', '꼬리말 오른쪽 텍스트', 'Fußzeile rechten Text', 'Piè di pagina a destra', 'ข้อความชิดขวา', 'Lábfej jobb szöveg', 'Voettekst juiste tekst', 'Ius Footer Text', 'Footer Right Text', 'Altbilgi Sağ Metin', 'Υποσημείωση κειμένου υποσέλιδου', 'متن سمت راست پاورقی', 'Teks Kanan Footer', 'ફૂટર જમણો ટેક્સ્ટ', 'Stopka Prawy tekst', 'Нижній колонтитул праворуч', 'ਪਦਲੇਖ ਸੱਜੇ ਪਾਠ', 'Footer dreapta text', 'Oro Ọtun Ẹka', 'Rubutattun Kalmomin Tsaida'),
(476, 'background', 'Background', 'ব্যাকগ্রাউন্ড', 'Fondo', 'خلفية', 'पृष्ठभूमि', 'پس منظر', '背景', 'バックグラウンド', 'fundo', 'Задний план', 'Contexte', '배경', 'Hintergrund', 'sfondo', 'พื้นหลัง', 'Háttér', 'Achtergrond', 'Maecenas vitae', 'Latar Belakang', 'Arka fon', 'Ιστορικό', 'زمینه', 'Latar Belakang', 'પૃષ્ઠભૂમિ', 'tło', 'Передумови', 'ਪਿਛੋਕੜ', 'fundal', 'Atilẹhin', 'Bayani'),
(477, 'gallery', 'Gallery', 'গ্যালারি', 'Galería', 'صالة عرض', 'गेलरी', 'نگارخانہ', '画廊', 'ギャラリー', 'Galeria', 'Галерея', 'Galerie', '갱도', 'Galerie', 'Galleria', 'เฉลียง', 'Képtár', 'Galerij', 'gallery', 'Galeri', 'galeri', 'Εκθεσιακός χώρος', 'آلبوم عکس', 'Galeri', 'ગેલેરી', 'Galeria', 'Галерея', 'ਗੈਲਰੀ', 'Galerie', 'Awọn ohun ọgbìn', 'Gallery'),
(478, 'is_view_on_web', 'Is View on Web?', 'ওয়েব দেখুন কি?', '¿Ver en la web?', 'هو عرض على شبكة الإنترنت؟', 'वेब पर देखें क्या है?', 'کیا ویب پر نظر ہے؟', '在网上查看？', 'Web上での表示ですか？', 'Ver na Web?', 'Просмотр в Интернете?', 'Est-ce que View on Web?', '웹에서보기입니까?', 'Ist im Web zu sehen?', 'La vista è sul Web?', 'ดูบนเว็บหรือไม่?', 'Megtekintés a weben?', 'Is View on Web?', 'View in Web est?', 'Apakah Lihat di Web?', 'Webde Görüntüleme mi?', 'Είναι η προβολή στο Web;', 'آیا نمایش در وب است؟', 'Adakah Lihat di Web?', 'વેબ પર જુઓ છો?', 'Czy widok w sieci?', 'Чи є перегляд в Інтернеті?', 'ਕੀ ਵੈਬ ਤੇ ਨਜ਼ਰ ਹੈ?', 'Vizualizați pe Web?', 'Wo ni oju-iwe ayelujara?', 'Shin View a Yanar?'),
(479, 'cover_image', 'Cover Image', 'কভার চিত্র', 'Imagen de portada', 'صورة الغلاف', 'कवर छवि', 'کور تصویر', '封面图片', '表紙画像', 'Imagem de capa', 'Изображение обложки', 'Image de couverture', '표지 이미지', 'Titelbild', 'Immagine di copertina', 'ภาพปก', 'Borítókép', 'Omslagfoto', 'No Cover Image', 'Gambar sampul', 'Kapak resmi', 'Εικόνα εξωφύλλου', 'تصویر روی جلد', 'Cover Image', 'કવર છબી', 'Okładka', 'Обкладинка зображення', 'ਕਵਰ ਚਿੱਤਰ', 'Imagine de copertă', 'Aworan Ideri', 'Rufin Hotuna'),
(480, 'media_gallery', 'Media Gallery', 'মিডিয়া গ্যালারী', 'Galería media', 'معرض الوسائط', 'मीडिया गैलरी', 'میڈیا گیلری', '媒体库', 'メディアギャラリー', 'Galeria de mídia', 'Медиа-галерея', 'Galerie des médias', '미디어 갤러리', 'Medien Gallerie', 'Galleria multimediale', 'Media Gallery', 'Média Galéria', 'media galerij', 'Gallery', 'Galeri media', 'Medya Galerisi', 'Έκθεση μέσων', 'گالری رسانه', 'Galeri Media', 'મીડિયા ગેલેરી', 'Galeria multimediów', 'Медіа галерея', 'ਮੀਡੀਆ ਗੈਲਰੀ', 'Galerie media', 'Media Gallery', 'Media Gallery'),
(481, 'caption', 'Caption', 'ক্যাপশন', 'Subtítulo', 'شرح', 'शीर्षक', 'کیپشن', '标题', 'キャプション', 'Rubrica', 'титр', 'Légende', '표제', 'Bildbeschriftung', 'Didascalia', 'คำบรรยายภาพ', 'Felirat', 'Onderschrift', 'caption', 'Caption', 'altyazı', 'Λεζάντα', 'عنوان', 'Keterangan', 'કૅપ્શન', 'Podpis', 'Підпис', 'ਸੁਰਖੀ', 'Legendă', 'Caption', 'Caption'),
(482, 'school_fax', 'School Fax', 'স্কুল ফ্যাক্স', 'Fax escolar', 'فاكس المدرسة', 'स्कूल फ़ैक्स', 'اسکول فیکس', '学校传真', '学校のファックス', 'Fax escolar', 'Школьный Факс', 'Fax de lécole', '학교 팩스', 'Schulfax', 'Fax della scuola', 'แฟกซ์โรงเรียน', 'Iskolai fax', 'Schoolfax', 'Fax School', 'Faks Sekolah', 'Okul faksı', 'Σχολικό φαξ', 'مدرسه فکس', 'Faks Sekolah', 'શાળા ફેક્સ', 'Faks szkolny', 'Шкільний факс', 'ਸਕੂਲ ਫੈਕਸ', 'Scoala de fax', 'Fax Ile-iwe', 'Fax Fax'),
(1147, 'add_to_exam', 'Add to Exam', 'পরীক্ষায় যোগ করুন', 'Agregar al examen', 'أضف الاختبار', 'परीक्षा जोड़ें', 'امتحان میں شامل کریں۔', '添加到考试', '試験に追加', 'Adicionar ao exame', 'Добавить к экзамену', 'Ajouter à l\'examen', '시험에 추가', 'Zur Prüfung hinzufügen', 'Aggiungi all\'esame', 'เพิ่มในการสอบ', 'Hozzáadás a vizsgához', 'Toevoegen aan examen', 'Add to Exam', 'Tambahkan ke Ujian', 'Sınava Ekle', 'Προσθήκη στην Εξέταση', 'به امتحان اضافه کنید', 'Tambah ke Peperiksaan', 'પરીક્ષામાં ઉમેરો', 'Dodaj do egzaminu', 'Додати до іспиту', 'ਪ੍ਰੀਖਿਆ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați la examen', 'Fi si Idanwo', 'Ƙara zuwa jarrabawa'),
(1148, 'exam_question', 'Exam Question', 'পরীক্ষার প্রশ্ন', 'Pregunta de examen', 'تكلفة الامتحان', 'परीक्षा लागत', 'امتحان کا سوال', '试题', '試験問題', 'Pergunta de exame', 'Экзаменационный вопрос', 'Question d\'examen', '시험 문제', 'Prüfungsfrage', 'Domanda d\'esame', 'คำถามสอบ', 'Vizsgakérdés', 'examen vraag', 'Exam Question', 'Soal Ujian', 'Sınav Sorusu', 'Ερώτηση εξέτασης', 'سوال امتحانی', 'Soalan Peperiksaan', 'પરીક્ષા પ્રશ્ન', 'Pytanie egzaminacyjne', 'Екзаменаційне питання', 'ਪ੍ਰੀਖਿਆ ਸਵਾਲ', 'Întrebare de examen', 'Ibeere idanwo', 'Tambayar jarrabawa'),
(1149, 'question_already_added', 'This Question Already Added', ' এই প্রশ্ন ইতিমধ্যে যোগ করা হয়েছে', 'Esta pregunta ya se agregó', 'هذا التكلفة المضافة بالفعل', 'यह लागत पहले ही जोड़ी जा चुकी है', 'یہ سوال پہلے ہی شامل کر دیا گیا ہے۔', '此问题已添加', 'この質問はすでに追加されています', 'Esta questão já foi adicionada', 'Этот вопрос уже добавлен', 'Cette question a déjà été ajoutée', '이 질문은 이미 추가되었습니다', 'Diese Frage wurde bereits hinzugefügt', 'Questa domanda è già stata aggiunta', 'คำถามนี้ถูกเพิ่มแล้ว', 'Ez a kérdés már felvéve', 'Deze vraag is al toegevoegd', 'Haec quaestio iam adiecit', 'Pertanyaan Ini Sudah Ditambahkan', 'Bu Soru Zaten Eklendi', 'Αυτή η ερώτηση έχει ήδη προστεθεί', 'این سوال قبلا اضافه شده است', 'Soalan Ini Telah Ditambah', 'આ પ્રશ્ન પહેલેથી જ ઉમેરાયેલ છે', 'To pytanie zostało już dodane', 'Це питання вже додано', 'ਇਹ ਸਵਾਲ ਪਹਿਲਾਂ ਹੀ ਸ਼ਾਮਲ ਕੀਤਾ ਗਿਆ ਹੈ', 'Această întrebare a fost deja adăugată', 'Ti ṣafikun Ibeere yii Tẹlẹ', 'An riga an ƙara wannan tambayar'),
(1150, 'question_added_success', 'Question Successfully Added', ' প্রশ্ন সফলভাবে যোগ করা হয়েছে', 'Pregunta agregada con éxito', 'إضافة التكاليف بنجاح', 'लागत सफलतापूर्वक जोड़ी गई', 'سوال کامیابی کے ساتھ شامل کر دیا گیا۔', '问题已成功添加', '質問が正常に追加されました', 'Pergunta adicionada com sucesso', 'Вопрос успешно добавлен', 'Question ajoutée avec succès', '질문이 성공적으로 추가되었습니다', 'Frage erfolgreich hinzugefügt', 'Domanda aggiunta con successo', 'เพิ่มคำถามเรียบร้อยแล้ว', 'A kérdés sikeresen hozzáadva', 'Vraag succesvol toegevoegd', 'Quaestio Feliciter adiecit', 'Pertanyaan Berhasil Ditambah', 'Soru Başarıyla Eklendi', 'Η ερώτηση προστέθηκε με επιτυχία', 'سوال با موفقیت اضافه شد', 'Soalan Berjaya Ditambah', 'પ્રશ્ન સફળતાપૂર્વક ઉમેરાયો', 'Pytanie zostało pomyślnie dodane', 'Питання успішно додано', 'ਸਵਾਲ ਸਫਲਤਾਪੂਰਵਕ ਸ਼ਾਮਲ ਕੀਤਾ ਗਿਆ', 'Întrebarea a fost adăugată cu succes', 'Ti fikun ibeere ni aṣeyọri', 'An Yi Nasarar Ƙara Tambaya'),
(1151, 'question_added_failed', 'Question Added Failed', 'প্রশ্ন যোগ করা ব্যর্থ হয়েছে', 'Pregunta agregada fallida', 'ملف المساعدة بتكلفة', 'लागत से सहायता प्राप्त फ़ाइल', 'سوال شامل کرنا ناکام ہو گیا۔', '问题添加失败', '追加された質問は失敗しました', 'A pergunta adicionada falhou', 'Вопрос добавлен не удалось', 'Échec de la question ajoutée', '질문 추가 실패', 'Frage hinzugefügt fehlgeschlagen', 'Domanda aggiunta non riuscita', 'เพิ่มคำถามล้มเหลว', 'A kérdés hozzáadva sikertelen', 'Vraag toegevoegd mislukt', 'Quaestio adiecit Deficio', 'Pertanyaan Ditambahkan Gagal', 'Soru Eklendi Başarısız', 'Η ερώτηση που προστέθηκε απέτυχε', 'سوال اضافه شد ناموفق بود', 'Soalan Ditambah Gagal', 'પ્રશ્ન ઉમેરવામાં નિષ્ફળ ગયો', 'Pytanie dodane nie powiodło się', 'Питання не додано', 'ਸਵਾਲ ਸ਼ਾਮਲ ਕਰਨਾ ਅਸਫਲ ਰਿਹਾ', 'Întrebarea adăugată a eșuat', 'Fikun ibeere kuna', 'An Kasa Tambayoyi'),
(1152, 'manage_take_exam', 'Manage Take Exam', 'পরীক্ষা পরিচালনা করুন', 'Gestionar Realizar examen', 'إدارة إجراء الامتحان', 'परीक्षा लेने का प्रबंधन करें', 'ٹیک امتحان کا انتظام کریں۔', '管理参加考试', '受験の管理', 'Gerenciar, fazer o exame', 'Управление сдачей экзамена', 'Gérer Passer l\'examen', '시험 응시 관리', 'Prüfung ablegen verwalten', 'Gestisci l\'esame', 'จัดการสอบ', 'Kezelje a vizsgát', 'Examen beheren', 'Curo Exam', 'Kelola Ikuti Ujian', 'Yönet Sınava Gir', 'Διαχειριστείτε τη λήψη εξετάσεων', 'شرکت در آزمون را مدیریت کنید', 'Urus Ambil Peperiksaan', 'પરીક્ષાનું સંચાલન કરોપરીક્ષાનું સંચાલન કરો', 'Zarządzaj Podejmij Egzamin', 'Керуйте складанням іспиту', 'ਪ੍ਰੀਖਿਆ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați susținerea examenului', 'Ṣakoso awọn Ya kẹhìn', 'Sarrafa Taken Jarrabawar'),
(1153, 'start_exam', 'Start Exam', 'পরীক্ষা শুরু করুন', 'Iniciar examen', 'ابدأ الاختبار', 'परीक्षा शुरू करें', 'امتحان شروع کریں۔', '开始考试', '試験開始', 'Iniciar exame', 'Начать экзамен', 'Commencer l\'examen', '시험 시작', 'Prüfung starten', 'Inizia l\'esame', 'เริ่มสอบ', 'Vizsga indítása', 'Examen starten', 'Satus Exam', 'Mulai Ujian', 'Sınavı Başlat', 'Έναρξη Εξετάσεων', 'شروع امتحان', 'Mulakan Peperiksaan', 'પરીક્ષા શરૂ કરો', 'Rozpocznij egzamin', 'Почати іспит', 'ਪ੍ਰੀਖਿਆ ਸ਼ੁਰੂ ਕਰੋ', 'Începe examenul', 'Bẹrẹ Idanwo', 'Fara Jarrabawar'),
(1154, 'remain_time', 'Remain Time', 'অবশিষ্ট সময়', 'Tiempo restante', 'الوقت المتبقى', 'शेष समय', 'باقی وقت', '剩余时间', '残り時間', 'Tempo Restante', 'Оставшееся время', 'Temps restant', '남은 시간', 'Übrige Zeit', 'Tempo rimanente', 'เวลาที่เหลืออยู่', 'Maradandó idő', 'Resterende tijd', 'manet tempus', 'Sisa Waktu', 'Geriye kalan zaman', 'Ώρα παραμονής', 'زمان باقی ماندن', 'Masa Kekal', 'બાકીનો સમય', 'Pozostały czas', 'Залишковий час', 'ਬਾਕੀ ਸਮਾਂ', 'Timpul ramas', 'Akoko Iduro', 'Saura lokaci'),
(1155, 'total_time', 'Total Time', ' মোট সময়', 'Tiempo Total', 'الوقت الكلي', 'कुल समय', 'مکمل وقت', '总时间', '合計時間', 'Tempo total', 'Общее время', 'Temps total', '총 시간', 'Gesamtzeit', 'Tempo totale', 'เวลารวม', 'Teljes idő', 'Totale tijd', 'Total Time', 'Total Waktu', 'Toplam zaman', 'Συνολικός χρόνος', 'زمان کل', 'Jumlah masa', 'કુલ સમય', 'Czas całkowity', 'Загальний час', 'ਕੁੱਲ ਸਮਾਂ', 'Timpul total', 'Lapapọ Akoko', 'Jimlar Lokaci'),
(1156, 'total_answered', 'Total Answered', 'মোট উত্তর', 'Total contestada', 'إجمالي الردود', 'कुल उत्तर', 'کل جواب دیا گیا۔', '回答总数', '総回答数', 'Total respondido', 'Всего ответов', 'Nombre total de réponses', '총 답변', 'Insgesamt beantwortet', 'Risposte totali', 'ตอบทั้งหมด', 'Összesen válaszolt', 'Totaal beantwoord', 'Summa respondit', 'Total Terjawab', 'Toplam Cevaplanan', 'Σύνολο απαντήσεων', 'مجموع پاسخ داده شد', 'Jumlah Dijawab', 'કુલ જવાબ આપ્યો', 'Całkowita liczba odpowiedzi', 'Всього відповіли', 'ਕੁੱਲ ਜਵਾਬ ਦਿੱਤਾ ਗਿਆ', 'Total răspuns', 'Lapapọ Idahun', 'Gabaɗaya Amsa'),
(1157, 'total_not_answer', 'Total not Answered', 'মোট উত্তর দেওয়া হয়নি', 'Total no respondida', 'تم الرد على مجموع الملاحظات', 'उत्तर दिए गए कुल नोट', 'ٹوٹل جواب نہیں دیا گیا۔', '未答复总数', '合計未回答', 'Total não respondido', 'Всего не отвечено', 'Total non répondu', '응답하지 않은 총계', 'Gesamt nicht beantwortet', 'Totale non risposto', 'ไม่ตอบทั้งหมด', 'Összesen nem válaszolt', 'Totaal niet beantwoord', 'Totalis non responderunt', 'Total tidak Terjawab', 'Toplam Cevaplanmadı', 'Σύνολο δεν απαντήθηκε', 'مجموع پاسخ داده نشد', 'Jumlah tidak Dijawab', 'કુલ જવાબ આપ્યો નથી', 'Łącznie brak odpowiedzi', 'Всього не відповіли', 'ਕੁੱਲ ਜਵਾਬ ਨਹੀਂ ਦਿੱਤਾ ਗਿਆ', 'Total fără răspuns', 'Lapapọ ko Dahun', 'Gabaɗaya ba a Amsa ba'),
(1158, 'total_not_visited', 'Total not Visited', ' মোট পরিদর্শন করা হয়নি', 'Total no visitada', 'مجموع الملاحظات التي تمت زيارتها', 'देखे गए कुल नोट', 'کل نہیں دیکھا گیا', '未访问总数', '合計未訪問', 'Total não visitado', 'Всего не посещено', 'Total non visité', '방문하지 않은 총계', 'Insgesamt nicht besucht', 'Totale non visitato', 'ไม่ได้เยี่ยมชมทั้งหมด', 'Összesen nem látogatott', 'Totaal niet bezocht', 'Totalis non visitavit', 'Total tidak Dikunjungi', 'toplam ziyaret edilmemiş', 'Σύνολο μη επίσκεψης', 'مجموع بازدید نشده است', 'Jumlah tidak Dilawati', 'કુલ મુલાકાત લીધી નથી', 'Łącznie nieodwiedzone', 'Всього не відвідано', 'ਕੁੱਲ ਨਹੀਂ ਦੇਖਿਆ ਗਿਆ', 'Total nevizitat', 'Lapapọ ko ṣabẹwo', 'Jimlar ba a Ziyarci ba'),
(1159, 'previous', 'Previous', 'আগে', 'Previa', 'معاينة', 'पूर्वावलोकन', 'پچھلا', '以前的', '前', 'Anterior', 'Предыдущий', 'Précédente', '이전의', 'Vorherige', 'Precedente', 'ก่อนหน้า', 'Előző', 'Vorig', 'Antecedens', 'Sebelumnya', 'Öncesi', 'Προηγούμενος', 'قبلی', 'Sebelumnya', 'અગાઉના', 'Previous', 'Попередній', 'ਪਿਛਲਾ', 'Anterior', 'Ti tẹlẹ', 'A baya'),
(1160, 'total_mark_review', 'Total Mark Review', 'মোট মার্ক পর্যালোচনা', 'Revisión de la calificación total', 'مراجعة العلامة الكاملة', 'टोटल मार्क रिव्यू', 'کل مارک کا جائزہ', '总分审核', 'トータルマークレビュー', 'Revisão de marca total', 'Общий обзор оценок', 'Révision de la note totale', '총점 검토', 'Gesamtpunktzahl-Überprüfung', 'Revisione totale del punteggio', 'คะแนนรวมรีวิว', 'Total Mark Review', 'Totaal aantal beoordelingen', 'Totalis Mark Review', 'Total Mark Ulasan', 'Toplam Not İncelemesi', 'Συνολική Αξιολόγηση Σήμανσης', 'بررسی علامت کل', 'Semakan Jumlah Markah', 'કુલ માર્ક સમીક્ષા', 'Całkowity przegląd oceny', 'Загальна оцінка', 'ਕੁੱਲ ਮਾਰਕ ਸਮੀਖਿਆ', 'Total Mark Review', 'Lapapọ Mark Review', 'Jimlar Alamar Bita'),
(1161, 'mark_review', 'Mark Review', 'মার্ক পর্যালোচনা', 'Marcar revisión', 'مراجعة مارك', 'मार्क रिव्यू', 'مارک ریویو', '马克评论', 'マークレビュー', 'Marcar revisão', 'Отметить обзор', 'Marquer l\'examen', '마크 리뷰', 'Bewertung markieren', 'Segna recensione', 'มาร์ครีวิว', 'Mark Review', 'Beoordeling markeren', 'Mark Review', 'Tandai Ulasan', 'İncelemeyi İşaretle', 'Σημειώστε την κριτική', 'بررسی را علامت گذاری کنید', 'Tandakan Semakan', 'સમીક્ષાને માર્ક કરો', 'Zaznacz recenzję', 'Позначити огляд', 'ਮਾਰਕ ਸਮੀਖਿਆ', 'Mark Review', 'Mark Review', 'Mark Review'),
(1162, 'next', 'Next', 'পরবর্তী', 'Próxima', 'التالي', 'अगला', 'اگلے', '下一个', '次', 'Próxima', 'Следующий', 'Prochaine', '다음', 'Nächste', 'Prossima', 'ต่อไป', 'Következő', 'Volgende', 'deinde', 'Lanjut', 'Sonraki', 'Επόμενο', 'بعد', 'Seterusnya', 'આગળ', 'Następny', 'Далі', 'ਅਗਲਾ', 'Următorul', 'Itele', 'Na gaba'),
(1163, 'reset_answer', 'Reset Answer', 'উত্তর রিসেট করুন', 'Restablecer respuesta', 'إعادة تعيين الأنصار', 'अंसारी रीसेट करें', 'جواب دوبارہ ترتیب دیں۔', '重置答案', '回答をリセット', 'Resetar resposta', 'Сбросить ответ', 'Réinitialiser la réponse', '답변 재설정', 'Antwort zurücksetzen', 'Ripristina risposta', 'รีเซ็ตคำตอบ', 'Reset Answer', 'Antwoord resetten', 'Reset Answer', 'Setel Ulang Jawaban', 'Yanıtı Sıfırla', 'Επαναφορά απάντησης', 'بازنشانی پاسخ', 'Tetapkan Semula Jawapan', 'જવાબ રીસેટ કરો', 'Resetuj odpowiedź', 'Скинути відповідь', 'ਜਵਾਬ ਰੀਸੈਟ ਕਰੋ', 'Resetează răspunsul', 'Tun idahun', 'Sake saita Amsa');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(1164, 'please_answer_all_question', 'Please Answer all Question', 'অনুগ্রহ করে সব প্রশ্নের উত্তর দিন', 'Por favor, responda todas las preguntas', 'كمبيوتر أنصار جميع التكاليف', 'पीसी अंसार ऑल कॉस्टिंग', 'Pease تمام سوالوں کے جواب دیں۔', '皮斯回答所有问题', 'ピーズすべての質問に答える', 'Por favor, responda todas as perguntas', 'Пис ответить на все вопросы', 'Veuillez répondre à toutes les questions', '모든 질문에 답하세요', 'Bitte beantworten Sie alle Fragen', 'Per favore rispondi a tutte le domande', 'Pease ตอบทุกคำถาม', 'Pease Válaszoljon minden kérdésre', 'Beantwoord alle vragen', 'Pease respondendum omnibus quaestionibus', 'Pease Jawab semua Pertanyaan', 'Lütfen Tüm Soruları Cevaplayın', 'Pease Απάντηση σε όλες τις ερωτήσεις', 'سلام به همه سوالات پاسخ دهید', 'Pease Jawab semua Soalan', 'પીઝ બધા પ્રશ્નોના જવાબ આપો', 'Pease Odpowiedz na wszystkie pytania', 'Піз відповісти на всі запитання', 'ਪੀਜ਼ ਸਾਰੇ ਸਵਾਲਾਂ ਦੇ ਜਵਾਬ ਦਿਓ', 'Răspundeți la toate întrebările', 'Pease Dahun gbogbo ibeere', 'Latsa Amsa Duk Tambaya'),
(1165, 'exam_result', 'Exam Result', 'পরীক্ষার ফলাফল', 'Resultado del examen', 'نتائج الامتحانات', 'परीक्षा के परिणाम', 'امتحان کا نتیجہ', '考试成绩', '試験の結果', 'Resultado de exame', 'Результаты экзамена', 'Résultat d\'éxamen', '시험 결과', 'Prüfungsergebnis', 'Risultato dell\'esame', 'ผลสอบ', 'Vizsga eredmény', 'Examenresultaat', 'Exam Result', 'Hasil ujian', 'Sınav sonucu', 'Αποτέλεσμα εξετάσεων', 'نتیجه امتحان', 'Keputusan Peperiksaan', 'પરીક્ષાનું પરિણામ', 'Wynik egazminu', 'Результат іспиту', 'ਪ੍ਰੀਖਿਆ ਦਾ ਨਤੀਜਾ', 'Rezultatul examenului', 'Abajade idanwo', 'Sakamakon Jarabawa'),
(484, 'facebook_url', 'Facebook URL', 'ফেসবুক ইউআরএল', 'Facebook URL', 'URL الفيسبوك', 'फेसबुक युआरएल', 'فیس بک یو آر ایل', 'Facebook网址', 'Facebookの', 'URL Facebook', 'URL-адрес Facebook', 'Ladresse URL de Facebook', 'Facebook URL', 'Facebook URL', 'URL di Facebook', 'URL ของ Facebook', 'Facebook URL', 'Facebook URL', 'Facebook URL', 'URL Facebook', 'Facebook URL', 'Διεύθυνση URL του Facebook', 'URL فیس بوک', 'URL Facebook', 'ફેસબુક URL', 'URL facebooka', 'URL-адреса на Facebook', 'ਫੇਸਬੁੱਕ URL', 'URL-ul Facebook', 'URL URL', 'Facebook URL'),
(485, 'twitter_url', 'Twitter URL', 'টুইটার ইউআরএল', 'URL de Twitter', 'رابط تويتر', 'ट्विटर यूआरएल', 'ٹویٹر یو آر ایل', 'Twitter网址', 'Twitterの', 'URL do Twitter', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL di Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Διεύθυνση URL Twitter', 'URL توییتر', 'URL Twitter', 'ટ્વિટર URL', 'Adres URL Twittera', 'URL-адреса Twitter', 'ਟਵਿੱਟਰ URL', 'URL-ul Twitter', 'Twitter URL', 'Twitter URL'),
(486, 'linkedin_url', 'Linkedin URL', 'লিঙ্কডিন ইউআরএল', 'URL de Linkedin', 'Linkedin URL', 'लिंक्डिन यूआरएल', 'لنکڈین یو آر ایل', 'Linkedin网址', 'リンク先の', 'URL do Linkedin', 'Ссылка на Linkedin', 'URL Linkedin', '링크 된 URL', 'Verknüpfte URL', 'URL di Linkedin', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'LinkedIn URL', 'URL Linkedin', 'Linkedin URLsi', 'Linkedin URL', 'نشانی اینترنتی لینکدین', 'URL Linkedin', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'ਲਿੰਕਡਿਨ ਯੂਆਰਐਲ', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL'),
(487, 'google_plus_url', 'Google Plus URL', 'গুগল প্লাস ইউআরএল', 'URL de Google Plus', 'جوجل بلس URL', 'Google Plus URL', 'Google Plus URL', 'Google Plus网址', 'Google Plusの', 'URL do Google Plus', 'URL-адрес Google Plus', 'URL Google Plus', 'Google 플러스 URL', 'Google Plus-URL', 'URL di Google Plus', 'URL Google Plus', 'Google Plus URL', 'Google Plus URL', 'Google Plus URL', 'URL Google Plus', 'Google Artı URL', 'Διεύθυνση URL Google Plus', 'گوگل پلاس URL', 'URL Google Plus', 'Google Plus URL', 'Adres URL Google Plus', 'URL-адреса Google Plus', 'Google Plus URL', 'Adresa URL Google Plus', 'URL Google Plus', 'Google Plus URL'),
(488, 'youtube_url', 'Youtube URL', 'ইউটিউব ইউআরএল', 'URL de Youtube', 'عنوان URL على Youtube', 'यूथट्यूब यूआरएल', 'یو ٹیوب یو آر ایل', 'YouTube网址', 'YouTubeの', 'URL do Youtube', 'URL Youtube', 'URL Youtube', 'YouTube URL', 'YouTube-URL', 'URL di Youtube', 'URL ของ Youtube', 'Youtube URL', 'YouTube-URL', 'URL Videos', 'URL Youtube', 'Youtube URLsi', 'Youtube URL', 'URL یوتیوب', 'URL Youtube', 'YouTube URL', 'Adres URL w YouTube', 'URL-адреса YouTube', 'ਯੂਟਿਊਬ ਯੂਆਰਐਲ', 'Adresa URL Youtube', 'Youtube URL', 'Youtube URL'),
(489, 'instagram_url', 'Instagram URL', 'ইনস্টাগ্রাম ইউআরএল', 'URL de Instagram', 'عنوان انستغرام', 'Instagram URL', 'Instagram یو آر ایل', 'Instagram网址', 'Instagram URL', 'URL do Instagram', 'URL-адрес Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'URL di Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'Instagram URL', 'URL Instagram', 'Instagram URL', 'Διεύθυνση URL Instagram', 'URL نمایش مشخصات عمومی', 'URL Instagram', 'Instagram URL', 'Adres URL Instagrama', 'URL-адреса Instagram', 'Instagram URL', 'Adresă URL Instagram', 'Instagram URL', 'Instagram URL'),
(490, 'pinterest_url', 'Pinterest URL', 'পিন্টারেস্ট ইউআরএল', 'URL de Pinterest', 'Pinterest URL', 'Pinterest यूआरएल', 'Pinterest یو آر ایل', 'Pinterest网址', 'Pinterest URL', 'URL do Pinterest', 'URL-адрес Pinterest', 'URL de Pinterest', '관심있는 URL', 'Pinterest-URL', 'URL di Pinterest', 'URL Pinterest', 'Pinterest URL', 'Pinterest URL', 'URL Pinterest', 'URL Pinterest', 'Pinterest URL', 'Διεύθυνση URL Pinterest', 'آدرس اینترنتی Pinterest', 'URL Pinterest', 'Pinterest URL', 'URL na Pinterest', 'Pinterest URL', 'Pinterest ਯੂਆਰਐਲ', 'Adresa URL Pinterest', 'Pinterest URL', 'URL din'),
(491, 'page', 'Page', 'পেজ', 'Página', 'صفحة', 'पृष्ठ', 'صفحہ', '页', 'ページ', 'Página', 'страница', 'Page', '페이지', 'Seite', 'Pagina', 'หน้า', 'oldal', 'Pagina', 'page', 'Halaman', 'Sayfa', 'Σελίδα', 'صفحه', 'Halaman', 'પાનું', 'Strona', 'Сторінка', 'ਪੰਨਾ', 'Pagină', 'Page', 'Page'),
(492, 'description', 'Description', 'বিবরণ', 'Descripción', 'وصف', 'विवरण', 'تفصیل', '描述', '説明', 'Descrição', 'Описание', 'La description', '기술', 'Beschreibung', 'Descrizione', 'ลักษณะ', 'Leírás', 'Beschrijving', 'Description', 'Deskripsi', 'Açıklama', 'Περιγραφή', 'شرح', 'Penerangan', 'વર્ણન', 'Opis', 'Опис', 'ਵਰਣਨ', 'Descriere', 'Apejuwe', 'Bayani'),
(493, 'hourly', 'Hourly', 'প্রতি ঘণ্টায়', 'Cada hora', 'باستمرار', 'प्रति घंटा', 'گھنٹہ وار', '每小时', '毎時', 'De hora em hora', 'почасовой', 'Horaire', '매시간', 'Stündlich', 'ogni ora', 'ทุกๆชั่วโมง', 'Óránkénti', 'ieder uur', 'hourly', 'Per jam', 'Saatlik', 'Ωριαίος', 'ساعتی', 'Jam', 'અવરલી', 'Cogodzinny', 'Погодинно', 'ਘੰਟਾ', 'ore', 'Wakati', 'Saa'),
(494, 'payroll', 'Payroll', 'পেরোল', 'Nómina de sueldos', 'كشف رواتب', 'पेरोल', 'پے رول', '工资表', '給与計算', 'Folha de pagamento', 'Начисление заработной платы', 'Paie', '급여', 'Lohn-und Gehaltsabrechnung', 'Libro paga', 'บัญชีเงินเดือน', 'Payroll', 'Loonlijst', 'Mauris scelerisque', 'Daftar gaji', 'Maaş bordrosu', 'Κατάσταση μισθοδοσίας', 'حقوق و دستمزد', 'Penggajian', 'પેરોલ', 'Lista płac', 'Зарплата', 'ਪੇਰੋਲ', 'stat de plată', 'Owo-owo sisan', 'Biyan kuɗi'),
(495, 'salary_grade', 'Salary Grade', 'বেতন গ্রেড', 'Grado de salario', 'راتب', 'वेतन ग्रेड', 'تنخواہ گریڈ', '薪金等级', '給与等級', 'Grau Salarial', 'Уровень зарплаты', 'Grade salarial', '급여 등급', 'Gehaltsstufe', 'Grado di stipendio', 'ระดับเงินเดือน', 'Fizetési fokozat', 'Salarisrang', 'Romani stipendio', 'Grade Gaji', 'Maaş Notu', 'Μισθός βαθμού', 'درجه حقوق و دستمزد', 'Gred Gaji', 'પગાર ગ્રેડ', 'Wynagrodzenie', 'Зарплата', 'ਸੈਲਰੀ ਗ੍ਰੇਡ', 'Gradul de salarizare', 'Iye owo-iwe', 'Salary Salary'),
(496, 'grade_name', 'Grade Name', 'গ্রেড নাম', 'Nombre de grado', 'اسم الصف', 'ग्रेड का नाम', 'گریڈ کا نام', '成绩名称', 'グレード名', 'Nome da classe', 'Имя класса', 'Nom de grade', '학년 이름', 'Benennungsname', 'Nome di qualità', 'ชื่อชั้นเรียน', 'Grade Name', 'Grade naam', 'nomen gradus', 'Nama Kelas', 'Sınıf adı', 'Όνομα βαθμού', 'نام درجه', 'Nama Gred', 'ગ્રેડ નામ', 'Nazwa klasy', 'Назва класу', 'ਗਰੇਡ ਨਾਮ', 'Numele clasei', 'Orukọ Ipele', 'Sunan suna'),
(497, 'basic_salary', 'Basic Salary', 'মূল বেতন', 'Salario base', 'راتب اساسي', 'मूल वेतन', 'بنیادی تنخواہ', '基础工资', '基本給', 'Salário básico', 'Основная зарплата', 'Salaire de base', '기본 급여', 'Grundgehalt', 'Salario di base', 'เงินเดือนทั่วไป', 'Alapilletmény', 'Basis salaris', 'Basic stipendio', 'Gaji pokok', 'Temel maaş', 'Βασικού μισθού', 'حقوق پایه', 'Gaji pokok', 'પ્રાથમિક વેતન', 'Podstawowe wynagrodzenie', 'Основна заробітна плата', 'ਬੇਸਿਕ ਸੈਲਰੀ', 'Salariu de baza', 'Ipilẹ Ipilẹ', 'Salaye na asali'),
(498, 'house_rent', 'House Rent', 'ঘর ভাড়া', 'Alquiler de casa', 'إيجار المنزل', 'घर का किराया', 'گھر کا کرایہ', '房租', '家賃', 'Aluguel de casa', 'Аренда дома', 'Location de maison', '집 임대', 'Hausmiete', 'Affitto della casa', 'บ้านเช่า', 'House Rent', 'Huur', 'HABITATIO', 'Sewa Rumah', 'Ev Kiralama', 'Ενοίκιο σπιτιού', 'اجاره خانه', 'Rumah sewa', 'હાઉસ ભાડું', 'Dom na wynajem', 'Оренда житла', 'ਹਾਊਸ ਰੈਂਟ', 'Chiria casei', 'Ile Iyalo', 'House Rent'),
(499, 'over_time_hourly_rate', 'Over Time Hourly Rate', 'ওভার টাইম ঘন্টায় রেট', 'Sobre la tarifa por hora del tiempo', 'مع مرور الوقت معدل بالساعة', 'समय प्रति घंटा दर से अधिक', 'وقت کے اوقات کی شرح کے دوران', '随时间变化的小时费率', '時間ごとの時間別料金', 'Taxa horária por hora', 'Счастье в час', 'Taux horaire au fil du temps', '시간별 시간당 요금', 'Stundensatz über die Zeit', 'Over Time Rate oraria', 'อัตรารายชั่วโมงต่อชั่วโมง', 'Több mint óránkénti arány', 'Na verloop van tijd uurtarief', 'Per Rate Tempus Hourly', 'Over Time Hourly Rate', 'Zaman İçindekiler Hızı', 'Χρόνος ανά ώρα', 'در طول ساعت به صورت ساعت', 'Lebih Kadar Masa Berkala', 'સમયનો સમય દીઠ દર', 'Ponadgodzinna stawka', 'З часом в годину', 'ਵੱਧ ਸਮਾਂ ਘੰਟਾ ਦਰ', 'Rata orară a timpului', 'Akoko Iwọn Akokọ Oṣuwọn', 'Fiye da Lokaci Na Yau'),
(500, 'provident_fund', 'Provident Fund', 'তহবিল', 'fondo de Previsión', 'صندوق الادخار', 'भविष्य निधि', 'پراویڈنٹ فنڈ', '公积金', '準備基金', 'fundo de previdência', 'резервный фонд', 'Fonds de prévoyance', '프로 비전 기금', 'Vorsorgefonds', 'fondo di previdenza', 'กองทุนสำรองเลี้ยงชีพ', 'segélyalap', 'Provident Fund', 'fiscus provident', 'dana penghematan', 'ihtiyat fonu', 'ταμείο προνοίας', 'صندوق', 'kumpulan Wang Simpanan', 'પ્રોવિડન્ટ ફંડ', 'Fundusz Provident', 'резервного фонду', 'ਪ੍ਰਾਵੀਡੈਂਟ ਫੰਡ', 'Fondul Provident', 'Iwe-iṣowo Pipese', 'Asusun bada'),
(501, 'hourly_rate', 'Hourly Rate', 'প্রতি ঘণ্টার মূল্য', 'Tarifa por hora', 'المعدل بالساعة', 'प्रति घंटा - दर', ' فی گھنٹہ کی شرح', '每小时收费', '時給', 'Taxa horária', 'Часовая ставка', 'Taux horaire', '시간당 요금', 'Stundensatz', 'Tariffa oraria', 'อัตราชั่วโมง', 'Óradíj', 'Uurtarief', 'Hourly rate', 'Tarif per jam', 'Saatlik ücret', 'Ωρομίσθιο', 'نرخ ساعتی', 'Kadar jam', 'અવરલી રેટ', 'Stawka godzinowa', 'Погодинна ставка', 'ਘੰਟੇ ਦੀ ਦਰ', 'Rata orară', 'Oṣuwọn wakati', 'Ranar Saa'),
(502, 'gross_salary', 'Gross Salary', 'মোট বেতন', 'Salario bruto', 'الراتب الكلى', 'सकल वेतन', 'مجموعی تنخواہ', '总薪水', '総給与', 'Salário Bruto', 'Валовая зарплата', 'Salaire brut', '총 급여', 'Bruttogehalt', 'Stipendio lordo', 'เงินเดือนขั้นต้น', 'Bruttó bér', 'Brutosalaris', 'Crassa salarium', 'Gaji kotor', 'Brüt maaş', 'Ακαθάριστο μισθό', 'حقوق و دستمزد ناخالص', 'Gaji kasar', 'કુલ પગાર', 'Wynagrodzenie brutto', 'Зарплата брутто', 'ਕੁੱਲ ਤਨਖ਼ਾਹ', 'Salariu brut', 'Gross Salary', 'Rawan kudi mai yawa'),
(503, 'net_salary', 'Net Salary', 'নেট বেতন', 'Sueldo neto', 'صافي الراتب', 'कुल वेतन', 'نیٹ تنخواہ', '净工资', 'ネット給与', 'Salário líquido', 'Чистая зарплата', 'Salaire net', '순 급여', 'Nettogehalt', 'Salario netto', 'เงินเดือนสุทธิ', 'Nettó bér', 'Netto salaris', 'Net MERCES', 'Gaji bersih', 'Net maaş', 'Καθαρός μισθός', 'حقوق خالص', 'Gaji Bersih', 'નેટ પગાર', 'Wynagrodzenie netto', 'Чиста зарплата', 'Net Salary', 'Salariu net', 'Apapọ owo-ori', 'Raayin Netarwa'),
(504, 'salary_type', 'Salary Type', 'বেতন প্রকার', 'Tipo de salario', 'نوع الراتب', 'वेतन प्रकार', 'تنخواہ کی قسم', '薪资类型', '給与タイプ', 'Tipo salarial', 'Тип зарплаты', 'Type de salaire', '급여 유형', 'Gehaltsart', 'Tipo di stipendio', 'ประเภทเงินเดือน', 'Fizetési típus', 'Salaris Type', 'Type stipendio', 'Tipe Gaji', 'Maaş Türü', 'Τύπος μισθοδοσίας', 'نوع حقوق', 'Jenis Gaji', 'પગાર પ્રકાર', 'Rodzaj wynagrodzenia', 'Тип заробітної плати', 'ਤਨਖਾਹ ਦੀ ਕਿਸਮ', 'Tip de salariu', 'Iyawo Iru', 'Nauin Salary'),
(505, 'payment_to', 'Payment To', 'জাহাকেপেমেন্ট  করা হবে', 'Pago Para', 'دفع ل', 'को भुगतान', 'ادائیگی کرنے کے لئے', '支付', 'への支払い', 'Pagamento para', 'Оплата Для', 'Paiement à', '지불 대상', 'Zahlung an', 'pagamento a', 'ชำระเงินถึง', 'Fizetés ... részére', 'Betaling aan', 'Ad Payment', 'pembayaran untuk', 'Için ödeme', 'Πληρωμή σε', 'پرداخت به', 'bayaran kepada', 'ચુકવણી માટે', 'Płatność Do', 'Оплата до', 'ਭੁਗਤਾਨ ਕਰਨ ਲਈ', 'plata catre', 'Isanwo Lati', 'Biya Don'),
(506, 'over_time_total_hour', 'Over Time Total Hour', 'ওভার টাইম  মোট ঘন্টা', 'Hora total en el tiempo', 'مع مرور الوقت إجمالي ساعة', 'समय कुल घंटे से अधिक', 'کل وقت کے ساتھ', '随着时间的推移', '合計時間', 'Over Time Total Hour', 'С течением времени', 'Au fil du temps Total heure', '시간이 지남에 따라 총 시간', 'Über die Zeit insgesamt Stunde', 'Oltre lora totale', 'เมื่อรวมเวลาทั้งหมด', 'Idő alatt Teljes óra', 'Na verloop van tijd Totaal uur', 'Total super Hour', 'Over Time Total Hour', 'Zamanla Toplam Saat', 'Συνολική ώρα κατά τη διάρκεια του χρόνου', 'در طول زمان کل ساعت', 'Lebih Masa Jumlah Jam', 'સમય કુલ કલાક ઉપર', 'Łączna liczba godzin w czasie', 'З часом загальна година', 'ਟਾਈਮ ਕੁਲ ਘੰਟਾ ਵੱਧ', 'Ora pe oră totală', 'Aago Aago Lapapọ wakati', 'Bayan Lokaci Kayan Saa'),
(507, 'over_time_amount', 'Over Time Amount', 'ওভার টাইম পরিমাণ', 'Sobre el tiempo Monto', 'على مر الزمن المبلغ', 'समय राशि के साथ', 'وقت کی رقم کے دوران', '随着时间的推移', '時間経過に伴う金額', 'Ao longo do tempo', 'Сумма за раз', 'Au fil du temps', '시간 경과에 따른 금액', 'Über Zeit Betrag', 'Over Time Amount', 'เมื่อเวลาผ่านไป', 'Több idő alatt', 'Over tijd Bedrag', 'Per Aliquam tempus', 'Over Time Amount', 'Zamana Göre Tutar', 'Ποσό Over Time', 'بیش از مقدار زمان', 'Jumlah Lebih Masa', 'સમયનો રકમ', 'Kwota w czasie', 'Надмірна сума', 'ਸਮੇਂ ਦੀ ਮਾਤਰਾ ਤੋਂ ਵੱਧ', 'Valoarea peste timp', 'Iye Iye Aago', 'Yawan Lokaci'),
(508, 'total_hour', 'Total Hour', 'মোট ঘন্টা', 'Hora total', 'مجموع الساعة', 'कुल घंटे', 'کل گھنٹے', '总时数', '合計時間', 'Hora Total', 'Общий час', 'Heure totale', '총 시간', 'Gesamtstunde', 'Ora totale', 'รวมชั่วโมง', 'Teljes óra', 'Totaal uur', 'summa Hour', 'Jam Total', 'Toplam Saat', 'Συνολική ώρα', 'ساعت کل', 'Jumlah Jam', 'કુલ કલાક', 'Godzina ogółem', 'Загальна кількість годин', 'ਕੁੱਲ ਘੰਟਾ', 'Ora totală', 'Lapapọ wakati', 'Jimlar Saa'),
(509, 'bonus', 'Bonus', 'বোনাস', 'Prima', 'علاوة', 'बोनस', ' بونس', '奖金', 'ボーナス', 'Bônus', 'бонус', 'Prime', '보너스', 'Bonus', 'indennità', 'โบนัส', 'pótlék', 'Bonus', 'Bonus', 'Bonus', 'Bonus', 'Δώρο', 'جایزه', 'Bonus', 'બોનસ', 'Premia', 'Бонус', 'ਬੋਨਸ', 'Primă', 'Ajeseku', 'Bonus'),
(510, 'penalty', 'Penalty', 'জরিমানা', 'Pena', 'ضربة جزاء', 'दंड', 'جرمانہ', '罚款', 'ペナルティ', 'Pena', 'неустойка', 'Peine', '패널티', 'Elfmeter', 'Pena', 'การลงโทษ', 'Büntetés', 'boete', 'supplicium', 'Penalti', 'Ceza', 'Ποινή', 'مجازات', 'Penalti', 'દંડ', 'Rzut karny', 'Штраф', 'ਪੈਨਲਟੀ', 'Penalizare', 'Ipaba', 'Zama'),
(511, 'gross_amount', 'Gross Amount', 'মোট পরিমাণ', 'Cantidad bruta', 'المبلغ الإجمالي', 'सकल राशि', 'مجموعی رقم', '总额', '総額', 'Quantidade bruta', 'Сумма брутто', 'Montant brut', '총액', 'Bruttobetrag', 'Importo lordo', 'ยอดรวม', 'Bruttó összeg', 'Brutobedrag', 'Crassa pondus', 'Jumlah bruto', 'Brüt miktar', 'Ακαθάριστο ποσό', 'مقدار ناخالص', 'Jumlah kasar', 'કુલ રકમ', 'Kwota brutto', 'Валова сума', 'ਕੁੱਲ ਰਕਮ', 'Valoarea brută', 'Iye nla', 'Babban Asalin'),
(512, 'net_amount', 'Net Amount', 'নেট পরিমাণ', 'Importe neto', 'كمية الشبكة', 'शुद्ध राशि', 'اصل رقم', '净额', '正味金額', 'Valor líquido', 'Чистая сумма', 'Montant net', '순액', 'Netto-Betrag', 'Importo netto', 'ปริมาณสุทธิ', 'Nettó összege', 'Netto bedrag', 'Net amount', 'Jumlah bersih', 'Net tutar', 'Καθαρό ποσό', 'مقدار خالص', 'Jumlah bersih', 'નેટ રકમ', 'Kwota netto', 'Чиста сума', 'ਕੁੱਲ ਰਾਸ਼ੀ', 'Cantitate netă', 'Iye apapọ', 'Babban Asusun'),
(513, 'is_applicable_discount', 'Is Applicable Discount?', 'ডিসকাউন্ট কি প্রযোজ্য?', '¿Es un descuento aplicable?', 'هو الخصم للتطبيق؟', 'लागू छूट है?', 'قابل اطلاق ڈسکاؤنٹ ہے؟', '是否适用折扣？', '適用割引ありますか？', 'É um desconto aplicável?', 'Применимая скидка?', 'Est-ce que le rabais applicable?', '적용 가능한 할인인가?', 'Ist der Rabatt gültig?', 'È lo sconto applicabile?', 'ส่วนลดที่ใช้บังคับหรือไม่?', 'Alkalmazható kedvezmény?', 'Is toepasselijke korting?', 'Price est applicabilis?', 'Apakah Diskon yang Berlaku?', 'Uygulanabilir İndirim mi?', 'Εφαρμόζεται έκπτωση;', 'آیا تخفیف مناسب است؟', 'Adakah Diskaun Berkenaan?', 'લાગુ ડિસ્કાઉન્ટ છે?', 'Czy obowiązuje zniżka?', 'Чи застосовується знижка?', 'ਕੀ ਛੂਟ ਨੂੰ ਲਾਗੂ ਕਰਨਾ ਹੈ?', 'Este o reducere aplicabilă?', 'Ṣe Ṣe Kan Owo?', 'Shin rangwamen da aka dace?'),
(515, 'get_in_touch', 'Get in Touch', 'স্পর্শ করুন', 'Estar en contacto', 'ابقى على تواصل', 'संपर्क में रहो', 'رابطے میں رہنا', '保持联系', '連絡する', 'Entrar em contato', 'Связаться', 'Entrer en contact', '연락하기', 'In Kontakt kommen', 'Mettiti in contatto', 'ได้รับการติดต่อ', 'Felveszi a kapcsolatot', 'Neem contact op', 'Get in Touch', 'Berhubungan', 'Temasta olmak', 'Ερχομαι σε επαφή', 'در تماس بودن', 'Dapatkan Sentuhan', 'સંપર્કમાં રહેવા', 'Bądź w kontakcie', 'Будемо на звязку', 'ਸੰਪਰਕ ਵਿੱਚ ਰਹੇ', 'Intrați în contact', 'Gba ni Fọwọkan', 'Samun shiga'),
(516, 'staff', 'Staff', 'কর্মী', 'Personal', 'العاملين', 'कर्मचारी', 'اسٹاف', '员工', 'スタッフ', 'Funcionários', 'Сотрудники', 'Personnel', '직원', 'Mitarbeiter', 'Personale', 'บุคลากร', 'Személyzet', 'Personeel', 'Staff', 'Staf', 'Personel', 'Προσωπικό', 'کارکنان', 'Kakitangan', 'સ્ટાફ', 'Personel', 'Персонал', 'ਸਟਾਫ਼', 'Personal', 'Oṣiṣẹ', 'Maaikata'),
(517, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'हमसे संपर्क करें', 'ہم سے رابطہ کریں', '联系我们', 'お問い合わせ', 'Contate-Nos', 'Свяжитесь с нами', 'Contactez nous', '연락처', 'Kontaktiere uns', 'Contattaci', 'ติดต่อเรา', 'Lépjen kapcsolatba velünk', 'Neem contact met ons op', 'Nobis loquere', 'Hubungi kami', 'Bizimle iletişime geçin', 'Επικοινωνήστε μαζί μας', 'تماس با ما', 'Hubungi Kami', 'અમારો સંપર્ક કરો', 'Skontaktuj się z nami', 'Звяжіться з нами', 'ਸਾਡੇ ਨਾਲ ਸੰਪਰਕ ਕਰੋ', 'Contacteaza-ne', 'Pe wa', 'Tuntuɓi Mu'),
(518, 'read_more', 'Read More', 'আরও পড়ুন', 'Lee mas', 'اقرأ أكثر', 'और पढो', 'مزید پڑھ', '阅读更多', '続きを読む', 'consulte Mais informação', 'Прочитайте больше', 'Lire la suite', '더 읽기', 'Weiterlesen', 'Leggi di più', 'อ่านเพิ่มเติม', 'Olvass tovább', 'Lees verder', 'Lege plus', 'Baca lebih banyak', 'Daha fazla oku', 'Διαβάστε περισσότερα', 'ادامه مطلب', 'Baca Lebih Lanjut', 'વધુ વાંચો', 'Czytaj więcej', 'Читати далі', 'ਹੋਰ ਪੜ੍ਹੋ', 'Citeste mai mult', 'Ka siwaju', 'Kara karantawa'),
(520, 'admission_form', 'Admission Form', 'ভর্তির ফর্ম', 'Formulario de admisión', 'شكل القبول', 'प्रवेश फार्म', 'داخلہ فارم', '入场表格', '入学式', 'Formulário de admissão', 'Форма приема', 'Formulaire dadmission', '입학 허가서', 'Aufnahmeformular', 'Modulo di ammissione', 'แบบฟอร์มเข้าศึกษา', 'Felvételi űrlap', 'Toelatingsformulier', 'Admission Form', 'Formulir Pendaftaran', 'Kabul formu', 'Έντυπο Εισαγωγής', 'فرم پذیرش', 'Borang Kemasukan', 'પ્રવેશ ફોર્મ', 'Formularz przyjęcia', 'Форма прийому', 'ਦਾਖ਼ਲਾ ਫਾਰਮ', 'Formular de admitere', 'Fọọmu Gbigba', 'Takardar izinin shiga'),
(521, 'home', 'Home', 'হোম', 'Casa', ' الصفحة الرئيسية', 'होम', 'گھر', '家', 'ホーム', 'Casa', 'Главная', 'Accueil', '집', 'Zuhause', 'Casa', 'บ้าน', 'itthon', 'Huis', 'domum', 'Rumah', 'Ev', 'Σπίτι', 'خانه', 'Rumah', 'હોમ', 'Dom', 'Будинок', 'ਘਰ', 'Acasă', 'Ile', 'Home'),
(523, 'school_fax', 'Fax', 'ফ্যাক্স', 'Fax', 'فاكس', 'फैक्स', 'فیکس', '传真', 'ファックス', 'Fax', 'факс', 'Fax', '팩스', 'Fax', 'Fax', 'แฟกซ์', 'Fax', 'Fax', 'Fax', 'Fax', 'Faks', 'Φαξ', 'فکس', 'Faks', 'ફેક્સ', 'Faks', 'Факс', 'ਫੈਕਸ', 'Fax', 'Faksi', 'Fax'),
(524, 'admission', 'Admission', 'ভর্তি', 'Admisión', 'قبول', 'दाखिला', 'داخلہ', '入场', '入場料', 'Admissão', 'вход', 'Admission', '입장', 'Eintritt', 'Ammissione', 'การรับเข้า', 'Belépés', 'Toelating', 'Praesent', 'Penerimaan', 'kabul', 'Αδεια', 'پذیرش', 'Kemasukan', 'પ્રવેશ', 'Wstęp', 'Вхід', 'ਦਾਖ਼ਲਾ', 'Admitere', 'Gbigba wọle', 'Shiga'),
(525, 'check_at_least_one', 'Please check at least one checkbox', 'অন্তত একটি চেকবক্স চেক করুন দয়া করে', 'Por favor marque al menos una casilla', 'يرجى التحقق من مربع اختيار واحد على الأقل', 'कृपया कम से कम एक चेकबॉक्स को चेक करें', 'براہ کرم کم از کم ایک چیک باکس چیک کریں', '请至少检查一个复选框', '少なくとも1つのチェックボックスをオンにしてください', 'Por favor, marque pelo menos uma caixa de seleção', 'Установите хотя бы один флажок', 'Veuillez cocher au moins une case', '하나 이상의 확인란을 선택하십시오.', 'Bitte kreuzen Sie mindestens eine Checkbox an', 'Si prega di verificare almeno una casella di controllo', 'โปรดเลือกช่องทำเครื่องหมายอย่างน้อยหนึ่งรายการ', 'Kérjük, ellenőrizze legalább egy jelölőnégyzetet', 'Controleer minimaal één selectievakje', 'Please saltem reprehendo', 'Silakan periksa setidaknya satu kotak centang', 'Lütfen en az bir onay kutusunu işaretleyin', 'Επιλέξτε τουλάχιστον ένα πλαίσιο ελέγχου', 'لطفا حداقل یک کادر را بررسی کنید', 'Sila semak sekurang-kurangnya satu kotak semak', 'કૃપા કરી ઓછામાં ઓછું એક ચેકબૉક્સ તપાસો', 'Zaznacz co najmniej jedno pole wyboru', 'Перевірте хоча б одну прапорець', 'ਕਿਰਪਾ ਕਰਕੇ ਘੱਟੋ ਘੱਟ ਇੱਕ ਚੈਕਬੌਕਸ ਦੀ ਜਾਂਚ ਕਰੋ', 'Verificați cel puțin o casetă de selectare', 'Jowo ṣayẹwo ṣayẹwo o kere ju apoti kan', 'Da fatan a duba akalla akwati ɗaya'),
(526, 'extra_charge', 'Extra Charge', 'অতিরিক্ত মূল্য', 'Carga extra', 'رسوم اضافية', 'अतिरिक्त प्रभार', 'اضافی چارج', '额外收费', '追加の費用', 'Custo extra', 'Дополнительная плата', 'Supplément', '추가 요금', 'Aufpreis', 'Costo aggiuntivo', 'ค่าบริการพิเศษ', 'Felár', 'Toeslag', 'extra crimen', 'Biaya tambahan', 'Ek ücret', 'Επιπλέον χρέωση', 'هزینه اضافی', 'Caj tambahan', 'વધારાની કિમત', 'Dodatkowa opłata', 'Додатковий збір', 'ਵਾਧੂ ਚਾਰਜ', 'Tarif suplimentar', 'Afikun Afikun', 'Karin caji'),
(527, 'ccavenue', 'CCAvenue', 'সিসি এভিনিউ', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ccavenue', 'CCAvenue', 'CCAvenue', 'Επιπλέον χρέωση', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ibi Ilana', 'Cibiyar'),
(528, 'merchant_key', 'Merchant Key', 'মার্চেন্ট কি', 'Clave del comerciante', 'مفتاح التاجر', 'व्यापारी कुंजी', 'مرچنٹ کلیدی', '商家钥匙', 'マーチャントキー', 'Chave do comerciante', 'Торговый ключ', 'Clé du marchand', '판매자 키', 'Händlerschlüssel', 'Chiave del commerciante', 'Merchant Key', 'Merchant kulcs', 'Verkopersleutel', 'Key mercator', 'Kunci Pedagang', 'Satıcı Anahtarı', 'Εμπορικό κλειδί', 'کلید تجاری', 'Kunci Pedagang', 'વેપારી કી', 'Klucz sprzedawcy', 'Торговельний ключ', 'ਵਪਾਰੀ ਕੁੰਜੀ', 'Cheia comerciantului', 'Oluṣowo Iṣowo', 'Maɓalli mai ciniki'),
(529, 'merchant_mid', 'Merchant MID', 'মার্চেন্ট মিড্', 'Merchant MID', 'Merchant MID', 'व्यापारी एमआईडी', 'مرچنٹ MID', '商家MID', 'Merchant MID', 'Comerciante MID', 'Merchant MID', 'Marchand MID', '판매자 MID', 'Händler-MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'MEDIUS mercator', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'مرچنت MID', 'Merchant MID', 'મર્ચન્ટ MID', 'Merchant MID', 'Merchant MID', 'ਵਪਾਰੀ ਮਿਡ', 'Meridian MID', 'Iṣowo Iṣowo', 'MID M'),
(530, 'paytm', 'PayTM', 'পে টিম', 'PayTM', 'PayTM', 'Paytm', 'پی ٹی ٹی ایم', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'BezahlenTM', 'PayTM', 'Paytm', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'પેટીએમ', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM'),
(531, 'website', 'Website', 'ওয়েবসাইট', 'Sitio web', 'موقع الكتروني', 'वेबसाइट', 'ویب سائٹ', '网站', 'ウェブサイト', 'Local na rede Internet', 'Веб-сайт', 'Site Internet', '웹 사이트', 'Webseite', 'Sito web', 'เว็บไซต์', 'Weboldal', 'Website', 'website', 'Situs web', 'Web sitesi', 'Δικτυακός τόπος', 'سایت اینترنتی', 'Laman web', 'વેબસાઇટ', 'Stronie internetowej', 'Веб-сайт', 'ਵੈੱਬਸਾਇਟ', 'website', 'Aaye ayelujara', 'Yanar Gizo'),
(532, 'text_local', 'Text Local', 'টেক্সট লোকাল', 'Texto local', 'نص محلي', 'पाठ स्थानीय', 'متن مقامی', '文字本地', 'テキストローカル', 'Texto local', 'Текстовые локальные', 'Texte local', '텍스트 로컬', 'Text lokal', 'Testo locale', 'ข้อความ Local', 'Helyi szöveg', 'Tekst Lokaal', 'Locus text', 'Teks Lokal', 'Metin Yerel', 'Κείμενο τοπικό', 'متن محلی', 'Teks Tempatan', 'ટેક્સ્ટ લોકલ', 'Tekst lokalny', 'Текст локально', 'ਟੈਕਸਟ ਸਥਾਨਕ', 'Text local', 'Ọrọ Agbegbe', 'Text Local'),
(533, 'hash_key', 'Hash Key', 'হ্যাশ কী', 'Clave hash', 'مفتاح التجزئة', 'हैश कुंजी', 'ہش کلیدی', '散列键', 'ハッシュキー', 'Chave de hash', 'Хэш-ключ', 'Touche dièse', '해시 키', 'Hash-Schlüssel', 'Tasto cancelletto', 'คีย์แฮช', 'Hash gomb', 'Hash sleutel', 'Key Nullam', 'Kunci Hash', 'Kare tuşu', 'Κλειδί Hash', 'کلید هش', 'Hash Key', 'હેશ કી', 'Klucz skrótu', 'Hash Key', 'ਹੈਸ਼ ਕੁੰਜੀ', 'Tasta Diez', 'Bọtini Iwọn', 'Hash Key'),
(534, 'sms_country', 'SMS Country', 'এস এম এস কান্ট্রি', 'País SMS', 'بلد SMS', 'एसएमएस देश', 'ایس ایم ایس ملک', 'SMS国家', 'SMS国', 'País SMS', 'Страна SMS', 'SMS Pays', 'SMS 국가', 'SMS Land', 'Paese SMS', 'ประเทศ SMS', 'SMS ország', 'SMS-land', 'SMS patriae', 'Negara SMS', 'SMS Ülke', 'SMS Χώρα', 'اس ام اس کشور', 'SMS Negara', 'એસએમએસ દેશ', 'Kraj SMS', 'SMS Країна', 'ਐਸਐਮਐਸ ਦੇਸ਼', 'Țara SMS', 'SMS Latin', 'SMS Country'),
(535, 'school_code', 'School Code', 'স্কুল কোড', 'Código escolar', 'كود مدرسة', 'स्कूल कोड', 'سکول کوڈ', '学号', '学校コード', 'Código escolar', 'Школьный код', 'Code détablissement', '학교 코드', 'Schulcode', 'Codice della scuola', 'รหัสโรงเรียน', 'Iskolák kódja', 'Schoolcode', 'Code School', 'Kode Sekolah', 'Okul Kodu', 'Σχολικός κώδικας', 'کد مدرسه', 'Kod Sekolah', 'શાળા કોડ', 'Kod szkoły', 'Шкільний кодекс', 'ਸਕੂਲ ਕੋਡ', 'Codul școlii', 'Koodu Ile-iwe', 'Lambar Makarantar'),
(536, 'enable_rtl', 'Enable RTL', 'এনাবল আর টি এল', 'Activar RTL', 'تمكين RTL', 'आरटीएल सक्षम करें', 'RTL کو فعال کریں', '启用RTL', 'RTLを有効にする', 'Ativar RTL', 'Включить RTL', 'Activer RTL', 'RTL 사용', 'Aktivieren Sie RTL', 'Abilita RTL', 'เปิดใช้งาน RTL', 'Engedélyezze az RTL engedélyezését', 'Schakel RTL in', 'Admitte License', 'Aktifkan RTL', 'RTLyi etkinleştir', 'Ενεργοποίηση RTL', 'فعال کردن RTL', 'Dayakan RTL', 'RTL સક્ષમ કરો', 'Włącz RTL', 'Увімкнути RTL', 'RTL ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ', 'Activează RTL', 'Mu RTL ṣiṣẹ', 'Enable RTL'),
(537, 'enable_frontend', 'Enable Frontend', 'এনাবল ফ্রন্টএন্ড', 'Habilitar Frontend', 'تمكين الواجهة الأمامية', 'Frontend सक्षम करें', 'فرنٹ اینڈ کو فعال کریں', '启用前端', 'フロントエンドを有効にする', 'Ativar Frontend', 'Включить Frontend', 'Activer le frontend', '프론트 엔드 사용', 'Frontend aktivieren', 'Abilita Frontend', 'เปิดใช้ Frontend', 'Engedélyezze a Frontendet', 'Frontend inschakelen', 'Admitte Frontend', 'Aktifkan Frontend', 'Ön Uçu Etkinleştir', 'Ενεργοποιήστε το Frontend', 'فعال کردن ظاهر', 'Dayakan Frontend', 'અગ્રભાગને સક્ષમ કરો', 'Włącz interfejs użytkownika', 'Увімкнути Frontend', 'ਫਰੰਟਐਂਡ ਨੂੰ ਸਮਰੱਥ ਬਣਾਓ', 'Activați Frontend', 'Mu Frontend ṣiṣẹ', 'Ƙara Farfaɗa'),
(538, 'fee_type_instruction_hostel_1', 'Hostel Fee Amount Will be define in Hostel Room creation time.', 'হোস্টেল ফি হোস্টেল রুম তৈরির সময় নির্ধারণ করা হবে।', 'El importe de la tarifa del albergue se definirá en el tiempo de creación de la habitación del albergue.', 'سيتم تحديد قيمة رسوم Hostel Hostel في وقت إنشاء غرفة Hostel Hostel.', 'हॉस्टल शुल्क राशि हॉस्टल के कमरे के निर्माण समय में परिभाषित की जाएगी।', 'ہاسٹل کی فیس کی رقم ہاسٹل روم تخلیق کے وقت میں متعین کی جائے گی۔', 'Hostel Fee Amount将在Hostel Room创建时间中定义。', 'ホステル料金は、ホステルルームの作成時に定義されます。', 'O valor da taxa do albergue será definido no horário de criação do quarto do albergue.', 'Стоимость хостела будет определена во время создания комнаты хостела.', 'Montant des frais d’auberge Sera défini lors de la création de la chambre d’auberge.', '호스텔 요금 금액은 호스텔 객실 생성 시간으로 정의됩니다.', 'Hostel-Gebührenbetrag Wird in der Erstellungszeit des Hostel-Zimmers definiert.', 'L\'importo della tassa di ostello sarà definito al momento della creazione della stanza dell\'ostello.', 'จำนวนค่าธรรมเนียมของโฮสเทลจะถูกกำหนดในเวลาสร้างห้องโฮสเทล', 'A hosteldíj összegét a Hostel szoba létrehozásának idején határozzuk meg.', 'Hostel Fee Bedrag zal worden bepaald in het creëren van Hostel Room.', 'Hostel hostel volutpat pretium moles erit define creaturae est in tempore.', 'Jumlah Biaya Hostel akan ditentukan dalam waktu pembuatan Kamar Hostel.', 'Hostel Ücreti Tutarı, Hostel Odası oluşturma süresinde tanımlanacaktır.', 'Hostel Χρέωση Ποσό Θα καθοριστεί στην ώρα δημιουργίας δωμάτιο δωμάτιο.', 'میزان هزینه خوابگاه در زمان ایجاد اتاق خواب مشخص خواهد شد.', 'Jumlah Bayaran Kos Asrama Akan ditentukan dalam Asrama Masa penciptaan bilik.', 'છાત્રાલયની ફી બનાવવાની રકમ હોસ્ટેલના રૂમ બનાવટ સમયે નક્કી કરવામાં આવશે.', 'Kwota opłaty za hostel zostanie określona w czasie tworzenia pokoju w hostelu.', 'Сума плати за хостел визначатиметься у часі створення номеру хостелу.', 'ਹੋਸਟਲ ਦੀ ਫੀਸ ਦੀ ਰਕਮ ਹੋਸਟਲ ਦੇ ਕਮਰਾ ਬਣਾਉਣ ਦੇ ਸਮੇਂ ਵਿੱਚ ਪ੍ਰਭਾਸ਼ਿਤ ਕੀਤੀ ਜਾਏਗੀ.', 'Valoarea tarifelor pentru hostel va fi definită în timpul de creare a camerei Hostel.', 'Iye iye ayagbe Ile ayagbe ni yoo ṣe alaye ni akoko ẹda ti Ile ayagbe.', 'Adadin Dakunan kwanan Dakunan kwanan za a ayyana a lokacin ƙirƙirar Room Dakunan kwanan yara.'),
(539, 'fee_type_instruction_hostel_2', 'From here must be create Hostel Fee Title to create Hostel Fee Invoice.', 'হোস্টেল ফি চালান তৈরি করতে অবশ্যই হোস্টেল ফি শিরোনাম তৈরি করতে হবে এখান থেকে।', 'A partir de aquí debe crearse el Título de tarifa de albergue para crear la Factura de tarifa de albergue.', 'من هنا يجب إنشاء عنوان رسوم Hostel Hostel لإنشاء فاتورة Hostel Fee.', 'यहाँ से Hostel Fee Invoice बनाने के लिए Hostel Fee Title बनाना होगा।', 'ہاسٹل فیس انوائس بنانے کے لئے یہاں سے ہاسٹل فیس ٹائٹل بنانا ضروری ہے۔', '从这里必须创建Hostel Fee Title以创建Hostel Fee Invoice。', 'ここから、ホステル料金請求書を作成するために、ホステル料金タイトルを作成する必要があります。', 'A partir daqui, deve ser criado o título da taxa do albergue para criar a fatura da taxa do albergue.', 'Отсюда необходимо создать Hostel Fee Title для создания Hostel Fee Invoice.', 'Créez un titre de taxe d’auberge pour créer une facture de taxe d’auberge.', '여기에서 호스텔 요금 청구서를 작성하려면 호스텔 요금 제목을 작성해야합니다.', 'Von hier aus muss ein Hostelgebührentitel erstellt werden, um eine Hostelgebühr-Rechnung zu erstellen.', 'Da qui è necessario creare il titolo della tariffa dell\'ostello per creare la fattura della quota dell\'ostello.', 'จากที่นี่จะต้องสร้างชื่อค่าธรรมเนียมหอพักเพื่อสร้างใบแจ้งหนี้ค่าธรรมเนียมหอพัก', 'Innentől létre kell hozni a Hostel Díj címét a Hostel Díj számla létrehozásához.', 'Vanaf hier moet Hostel Fee Titel worden gemaakt om Hostel Fee Factuur te maken.', 'Hinc oportet creare hostel hostel pretium pretium Titulus creare cautionem.', 'Dari sini harus dibuat Judul Biaya Hostel untuk membuat Faktur Biaya Hostel.', 'Buradan Pansiyon Ücreti Faturası oluşturmak için Pansiyon Ücreti Başlığı oluşturulmalıdır.', 'Από εδώ πρέπει να δημιουργήσετε τον Τίτλο του Τέλους Hostel για να δημιουργήσετε το Τιμολόγιο Φόρουμ Hostel.', 'از اینجا باید عنوان Hostel Fee عنوان ایجاد کنید تا فاکتور هزینه خوابگاه را تهیه کنید.', 'Dari sini mesti mewujudkan Title Fee Hostel untuk membuat Invois Bayaran Hostel.', 'છાત્રાલય ફી ભરતિયું બનાવવા માટે અહીંથી છાત્રાલય ફીનું શીર્ષક બનાવવું આવશ્યક છે.', 'Stąd należy utworzyć tytuł opłaty za hostel, aby utworzyć fakturę za opłatę za hostel.', 'Звідси потрібно створити назву комісійної комісії, щоб створити рахунок-фактуру за хостел.', 'ਹੋਸਟਲ ਫੀਸ ਇਨਵੌਇਸ ਬਣਾਉਣ ਲਈ ਇੱਥੇ ਤੋਂ ਹੋਸਟਲ ਫੀਸ ਦਾ ਸਿਰਲੇਖ ਹੋਣਾ ਲਾਜ਼ਮੀ ਹੈ.', 'De aici trebuie să se creeze titlul de taxe pentru pensii pentru a crea factura de taxe la hostel.', 'Lati ibi gbọdọ jẹ ṣẹda Akọle ayagbe Ile ayagbe lati ṣẹda Invoice Ile ayagbe hostel.', 'Daga nan dole ne a ƙirƙiri taken Dakunan kwanan Mai ba da izini don ƙirƙirar Injin Dadi Mai masaukin baki.'),
(540, 'fee_type_instruction_transport_1', 'Transport Fee Amount Will be define in Transport Route creation time.', 'পরিবহন রুট তৈরির সময় পরিবহন ফি পরিমাণ নির্ধারণ করা হবে।', 'El importe de la tarifa de transporte se definirá en el tiempo de creación de la ruta de transporte.', 'سيتم تحديد مبلغ رسوم النقل في وقت إنشاء طريق النقل.', 'परिवहन शुल्क राशि परिवहन मार्ग निर्माण समय में परिभाषित की जाएगी।', 'ٹرانسپورٹ روٹ کی تخلیق کے وقت میں ٹرانسپورٹ کی فیس کی رقم متعین کی جائے گی۔', '运输费用金额将在运输路线创建时间中定义。', '輸送料金の金額は、輸送ルートの作成時に定義されます。', 'O valor da taxa de transporte será definido no horário de criação da rota de transporte.', 'Сумма транспортного сбора будет определена во время создания транспортного маршрута.', 'Le montant des frais de transport sera défini dans l\'heure de création de l\'itinéraire de transport.', '운송 비용 금액은 운송 경로 생성 시간에 정의됩니다.', 'Der Betrag der Transportgebühr wird in der Erstellungszeit des Transportwegs definiert.', 'L\'importo della tassa di trasporto verrà definito al momento della creazione della rotta di trasporto.', 'จำนวนค่าธรรมเนียมการขนส่งจะถูกกำหนดในเวลาสร้างเส้นทางการขนส่ง', 'A szállítási díj összegét a szállítási útvonal létrehozási ideje határozza meg.', 'Het bedrag van de transportkosten wordt bepaald in de aanmaaktijd van de transportroute.', 'Aliquam pretium onerariam navem onerariam in define voluntas creaturae Iter itineris est.', 'Jumlah Biaya Transportasi akan ditentukan dalam waktu pembuatan Rute Transportasi.', 'Nakliye Ücreti Tutarı, Nakliye Rotası oluşturma süresinde tanımlanacaktır.', 'Ποσό τέλους μεταφοράς Θα οριστεί στην ώρα δημιουργίας διαδρομής μεταφοράς.', 'مقدار هزینه حمل و نقل در زمان ایجاد مسیر حمل و نقل مشخص خواهد شد.', 'Jumlah Bayaran Pengangkutan Akan ditentukan dalam Masa Penjanaan Laluan Pengangkutan.', 'પરિવહન ફીની રકમ ટ્રાન્સપોર્ટ રૂટ બનાવટના સમયમાં નિર્ધારિત કરવામાં આવશે.', 'Wysokość opłaty transportowej zostanie określona w czasie tworzenia trasy transportowej.', 'Сума транспортної плати визначатиметься у часі створення транспортного маршруту.', 'ਟਰਾਂਸਪੋਰਟ ਫੀਸ ਦੀ ਰਕਮ ਟਰਾਂਸਪੋਰਟ ਰੂਟ ਬਣਾਉਣ ਦੇ ਸਮੇਂ ਵਿੱਚ ਪ੍ਰਭਾਸ਼ਿਤ ਕੀਤੀ ਜਾਏਗੀ.', 'Valoarea tarifelor de transport va fi definită în timpul de creare a traseului de transport.', 'Iye isanwo Irinṣẹ Yoo ṣalaye ni akoko Irinṣẹ Irinṣẹ.', 'Adadin Kudin Sufuri Zai Iya Bayyanawa a Lokacin Hada Jirgin Sama.'),
(541, 'fee_type_instruction_transport_2', 'From here must be create Transport Fee Title to create Transport Fee Invoice.', 'পরিবহন ফি চালান তৈরি করতে এখান থেকে অবশ্যই পরিবহন ফি শিরোনাম তৈরি করতে হবে।', 'A partir de aquí debe crearse el Título de tarifa de transporte para crear la Factura de tarifa de transporte.', 'من هنا يجب إنشاء عنوان رسوم النقل لإنشاء فاتورة رسوم النقل.', 'यहाँ से Transport Fee Invoice बनाने के लिए Transport Fee Title बनाना होगा।', 'ٹرانسپورٹ فیس انوائس بنانے کیلئے یہاں سے ٹرانسپورٹ فیس ٹائٹل بنانا ضروری ہے۔', '从这里必须创建运输费标题以创建运输费发票。', '輸送費請求書を作成するには、ここから輸送費タイトルを作成する必要があります。', 'A partir daqui, deve ser criado o título da taxa de transporte para criar a fatura da taxa de transporte.', 'Отсюда необходимо создать Название транспортной пошлины, чтобы создать Счет на оплату транспортных расходов.', 'À partir de là, vous devez créer un titre de frais de transport pour créer une facture de frais de transport.', '여기에서 운송료 청구서를 작성하려면 운송료 제목을 작성해야합니다.', 'Von hier aus muss der Transportgebührentitel erstellt werden, um die Transportgebührenrechnung zu erstellen.', 'Da qui deve essere creato il titolo della tassa di trasporto per creare la fattura della tassa di trasporto.', 'จากที่นี่จะต้องสร้างชื่อค่าธรรมเนียมการขนส่งเพื่อสร้างใบแจ้งหนี้ค่าขนส่ง', 'Innentől létre kell hozni a szállítási díj címét a szállítási díj számla létrehozásához.', 'Vanaf hier moet u Transporttitel maken om Transportfactuurfactuur te maken.', 'Hinc oportet creare pretium onerariam Titulus creare pretium onerariam cautionem.', 'Dari sini harus dibuat Judul Biaya Transportasi untuk membuat Faktur Biaya Transportasi.', 'Buradan, Taşıma Ücreti Faturası oluşturmak için Taşıma Ücreti Başlığı oluşturulmalıdır.', 'Από εδώ πρέπει να δημιουργηθεί τίτλος τέλους μεταφοράς για να δημιουργηθεί τιμολόγιο μεταφοράς.', 'از اینجا باید عنوان ایجاد هزینه حمل و نقل برای ایجاد فاکتور حمل و نقل هزینه ایجاد کنید.', 'Dari sini mesti mencipta Tajuk Bayaran Pengangkutan untuk membuat Invois Bayaran Pengangkutan.', 'અહીંથી ટ્રાન્સપોર્ટ ફી ઇન્વoiceઇસ બનાવવા માટે પરિવહન ફીનું શીર્ષક બનાવવું આવશ્યક છે.', 'Stąd należy utworzyć tytuł opłaty transportowej, aby utworzyć fakturę opłaty transportowej.', 'Звідси слід створити назву транспортної плати, щоб створити рахунок за транспортну плату.', 'ਇੱਥੇ ਤੋਂ ਟਰਾਂਸਪੋਰਟ ਫੀਸ ਇਨਵੌਇਸ ਬਣਾਉਣ ਲਈ ਟਰਾਂਸਪੋਰਟ ਫੀਸ ਸਿਰਲੇਖ ਹੋਣਾ ਲਾਜ਼ਮੀ ਹੈ.', 'De aici trebuie să se creeze titlul comisionului de transport pentru a crea factura taxelor de transport.', 'Lati ibi gbọdọ wa ni ṣẹda Akọọlẹ owo ọya lati ṣẹda Invoice Fee Invoice.', 'Daga nan dole ne a ƙirƙiri Fati Fee Title don ƙirƙirar Lissafin Kuɗi na Kuɗi.'),
(542, 'caste', 'Caste', 'জাত', 'Casta Casta', 'الطائفة', 'जाति', 'ذات۔', '种姓', 'カースト', 'Casta', 'каста', 'Caste', '카스트', 'Kaste', 'Casta', 'วรรณะ', 'Kaszt', 'Kaste', 'caste', 'Kasta', 'Kast', 'Κοινωνική τάξη', 'کاست', 'Kasta', 'જાતિ', 'Kasta', 'Каста', 'ਜਾਤ', 'Castă', 'Caste', 'Caste'),
(543, 'admission_no', 'Admission  No', 'ভর্তি নম্বর', 'Admisión no', 'رقم القبول', 'प्रवेश संख्या', 'داخلہ نمبر', '入场号', '入場無料', 'Admissão Não', 'Вход Нет', 'Admission No', '입장료 없음', 'Eintritt Nr', 'Ingresso n', 'ค่าเข้าชม', 'Felvételi száma', 'Toegangsnummer', 'Praesent nulla', 'Penerimaan No', 'Giriş No', 'Εισαγωγή αριθ', 'پذیرش شماره', 'Kemasukan No', 'પ્રવેશ નં', 'Miesiąc zakończenia sesji', 'Вхід №', 'ਦਾਖਲਾ ਨੰਬਰ', 'Admitere nr', 'Gbigbawọle Bẹẹkọ', 'Shiga Aa'),
(545, 'transfer', 'Transfer', 'হস্তান্তর', 'Transferir', 'نقل', 'स्थानांतरण', 'منتقلی', '转让', '転送', 'Transferir', 'Перевод', 'Transfert', '이전', 'Transfer', 'Trasferimento', 'โอน', 'Átruházás', 'Overdracht', 'De translatione', 'Transfer', 'Aktar', 'ΜΕΤΑΦΟΡΑ', 'انتقال', 'Pemindahan', 'પરિવહન', 'Transfer', 'Трансфер', 'ਟ੍ਰਾਂਸਫਰ ਕਰੋ', 'Transfer', 'Gbigbe lọ', 'Canja wurin'),
(546, 'health_condition', 'Health Condition', 'স্বাস্থ্যের অবস্থা', 'Estado de salud', 'الحالة الصحية', 'स्वास्थ्य की स्थिति', 'صحت کی کیفیت', '健康状况', '健康状態', 'Condição de saúde', 'Состояние здоровья', 'État de santé', '건강 상태', 'Gesundheitszustand', 'Condizione di salute', 'เงื่อนไขสุขภาพ', 'Egészségi állapot', 'Gezondheid', 'salutem Description', 'Kondisi kesehatan', 'Sağlık durumu', 'Η κατάσταση της υγείας', 'وضعیت سلامتی', 'Keadaan kesihatan', 'આરોગ્યની સ્થિતિ', 'Stan zdrowia', 'Стан здоровя', 'ਸਿਹਤ ਦੀ ਸਥਿਤੀ', 'Starea de sănătate', 'Ipo ilera', 'Yanayin Lafiya'),
(547, 'national_id', 'National ID', 'জাতীয় আইডি', 'Identificación nacional', 'الهوية الوطنية', 'राष्ट्रीय पहचान पत्र', 'قومی شناختی', '国民身份证', '国民ID', 'identidade nacional', 'Национальный идентификатор', 'carte didentité', '국립 ID', 'Personalausweis', 'ID nazionale', 'รหัสประจำตัวประชาชน', 'Nemzeti azonosító', 'Nationaal ID', 'National ID', 'ID Nasional', 'Ulusal Kimliği', 'Εθνική ταυτότητα', 'کد ملی', 'ID kebangsaan', 'રાષ્ટ્રીય ID', 'Dowód osobisty', 'Національний ID', 'ਰਾਸ਼ਟਰੀ ਆਈਡੀ', 'buletin', 'ID orile-ede', 'ID na kasa'),
(548, 'other', 'Other', 'অন্যান্য', 'Otro', 'آخر', 'अन्य', 'دیگر', '其他', 'その他', 'De outros', 'Другие', 'Autre', '다른', 'Andere', 'Altro', 'อื่น ๆ', 'Más', 'anders', 'alius', 'Lain', 'Diğer', 'Αλλα', 'دیگر', 'Lain-lain', 'અન્ય', 'Inny', 'Інший', 'ਹੋਰ', 'Alte', 'Miiran', 'Sauran'),
(551, 'enter_purchase_code', 'Enter Purchase Code', 'ক্রয় কোড লিখুন', 'Ingrese el código de compra', 'أدخل رمز الشراء', 'खरीद कोड दर्ज करें', 'خریداری کوڈ درج کریں', '输入购买代码', '購入コードを入力', 'Digite o código de compra', 'Введите код покупки', 'Entrer le code dachat', '구매 코드 입력', 'Geben Sie den Kaufcode ein', 'Inserisci il codice di acquisto', 'ป้อนรหัสการสั่งซื้อ', 'Írja be a beszerzési kódot', 'Voer de aankoopcode in', 'Enter code Purchase', 'Masukkan Kode Pembelian', 'Satınalma kodunu giriniz', 'Εισαγάγετε τον κωδικό αγοράς', 'کد خرید را وارد کنید', 'Masukkan Kod Pembelian', 'ખરીદી કોડ દાખલ કરો', 'Wprowadź kod zakupu', 'Введіть код покупки', 'ਖਰੀਦ ਕੋਡ ਦਾਖਲ ਕਰੋ', 'Introduceți codul de cumpărare', 'Tẹ koodu rira', 'Shigar da Dokar Siya'),
(552, 'purchase_code', 'Purchase Code', 'ক্রয় কোড', 'Código de compra', 'كود شراء', 'खरीद कोड', 'خریداری کوڈ', '购买代码', '購入コード', 'Código de Compra', 'Код покупки', 'Code dachat', '구매 코드', 'Kaufcode', 'Codice dacquisto', 'รหัสการสั่งซื้อ', 'Vásárlási kód', 'Aankoopcode', 'Purchase Code', 'Kode Pembelian', 'Satın alma kodu', 'Κωδικός αγοράς', 'کد خرید', 'Kod Pembelian', 'ખરીદી કોડ', 'Kup kod', 'Код покупок', 'ਖਰੀਦ ਕੋਡ', 'Codul de cumpărare', 'Koodu rira', 'Katin sayen'),
(554, 'written', 'Written', 'লিখিত', 'Escrito', 'مكتوب', 'लिखा हुआ', 'لکھا ہوا', '书面', '書かれた', 'Escrito', 'написано', 'Écrit', '쓴', 'Geschrieben', 'Scritto', 'เขียน', 'Írott', 'Geschreven', 'Scriptum', 'Tertulis', 'Yazılı', 'Γραπτός', 'نوشته شده است', 'Ditulis', 'લખેલું', 'Pisemny', 'Написано', 'ਲਿਖਿਆ ਗਿਆ', 'Scris', 'Kọwe', 'An rubuta'),
(555, 'practical', 'Practical', 'ব্যবহারিক', 'Práctico', 'عملي', 'व्यावहारिक', 'عملی', '实际的', '実践的', 'Prático', 'практический', 'Pratique', '실용적인', 'Praktisch', 'pratico', 'ประยุกต์', 'Gyakorlati', 'praktisch', 'practical', 'Praktis', 'Pratik', 'Πρακτικός', 'کاربردی', 'Praktikal', 'પ્રાયોગિક', 'Praktyczny', 'Практичний', 'ਵਿਹਾਰਕ', 'Practic', 'Ilowo', 'M'),
(556, 'tutorial', 'Tutorial', 'টিউটরিআল', 'Tutorial', 'الدورة التعليمية', 'ट्यूटोरियल', 'سبق', '教程', 'チュートリアル', 'Tutorial', 'Руководство', 'Didacticiel', '지도 시간', 'Tutorial', 'lezione', 'เกี่ยวกับการสอน', 'oktatói', 'Tutorial', 'doceo', 'Tutorial', 'Eğitimi', 'Φροντιστήριο', 'آموزش', 'Tutorial', 'ટ્યુટોરીયલ', 'Seminarium', 'Підручник', 'ਟਿਊਟੋਰਿਅਲ', 'Tutorial', 'Ibaṣepọ', 'Koyawa'),
(557, 'viva', 'Viva', 'ভাইভা', 'Viva', 'تحيا', 'सलाम', 'زبانی', '欢呼声', 'ビバ', 'Viva', 'да здравствует', 'Viva', '만세', 'Viva', 'Viva', 'ขอให้มีอายุยืนยาว', 'éljen', 'Viva', 'Vivaldi', 'Viva', 'sözlü', 'Viva', 'ویوا', 'Viva', 'વિવા', 'Wiwat', 'Віва', 'ਵਿਵਾ', 'Viva', 'Viva', 'Viva'),
(558, 'mark', 'Mark', 'মার্ক', 'marca', 'علامة', 'निशान', 'مارک', '标记', 'マーク', 'Marca', 'отметка', 'marque', '표', 'Kennzeichen', 'marchio', 'เครื่องหมาย', 'Mark', 'Mark', 'Evangelium secundum Marcum', 'Menandai', 'işaret', 'Σημάδι', 'علامت', 'Mark', 'ચિહ્ન', 'znak', 'Марка', 'ਮਾਰਕ', 'marcă', 'Samisi', 'Mark'),
(559, 'obtain', 'Obtain', 'প্রাপ্ত', 'Obtener', 'الحصول على', 'प्राप्त', 'حاصل کریں', '获得', '入手します', 'Obtivermos', 'получать', 'Obtenir', '얻다', 'Erhalten', 'Ottenere', 'ได้รับ', 'Szerezze', 'Verkrijgen', 'Vitam', 'Memperoleh', 'elde etmek', 'Αποκτώ', 'به دست آوردن', 'Dapatkan', 'મેળવો', 'Uzyskać', 'Отримати', 'ਪ੍ਰਾਪਤ ਕਰੋ', 'Obține', 'Gba', 'Samun'),
(560, 'result_card', 'Result Card', 'ফলাফল কার্ড', 'Tarjeta de resultado', 'بطاقة النتيجة', 'परिणाम कार्ड', 'نتیجہ کارڈ', '结果卡', '結果カード', 'Cartão de Resultado', 'Карта результатов', 'Carte de résultat', '결과 카드', 'Ergebniskarte', 'Scheda dei risultati', 'การ์ดผลลัพธ์', 'Eredménykártya', 'Resultaatkaart', 'effectus Card', 'Kartu Hasil', 'Sonuç Kartı', 'Κάρτα αποτελεσμάτων', 'نتیجه کارت', 'Kad Keputusan', 'પરિણામ કાર્ડ', 'Karta wyników', 'Результат картки', 'ਨਤੀਜਾ ਕਾਰਡ', 'Cardul de rezultate', 'Kaadi Kaadi', 'Katin Amintacce'),
(561, 'bus_stop', 'Bus Stop', 'বাস স্টপ', 'Parada de autobús', 'موقف باص', 'बस स्टॉप', 'بس اسٹاپ', '公交车站', 'バス停', 'Ponto de ônibus', 'Автобусная остановка', 'Arrêt de bus', '버스 정류장', 'Bushaltestelle', 'Fermata dellautobus', 'ป้ายรถเมล์', 'Buszmegálló', 'Bushalte', 'bus Sistere', 'Pemberhentian bus', 'Otobüs durağı', 'Στάση λεωφορείου', 'ایستگاه اتوبوس', 'Perhentian bas', 'બસ સ્ટોપ', 'Przystanek autobusowy', 'Автобусна зупинка', 'ਬੱਸ ਅੱਡਾ', 'Stație de autobuz', 'Ibudo oko', 'Bus Stop'),
(562, 'lowest', 'Lowest', 'সর্বনিম্ন', 'Más bajo', 'أدنى', 'सबसे कम', 'سب سے کم', '最低', '最低', 'Menor', 'низший', 'Le plus bas', '최저', 'Niedrigste', 'minore', 'ต่ำที่สุด', 'A legalacsonyabb', 'laagste', 'lowest', 'Terendah', 'En düşük', 'Χαμηλότερο', 'پایین ترین', 'Terendah', 'ન્યૂનતમ', 'Najniższy', 'Найменший', 'ਸਭ ਤੋਂ ਘੱਟ', 'Cel mai mic', 'Ti o kere julọ', 'Ƙananan'),
(563, 'height', 'Height', 'সর্বোচ্চ', 'Altura', 'ارتفاع', 'ऊंचाई', 'اونچائی', '高度', '高さ', 'Altura', 'Высота', 'la taille', '신장', 'Höhe', 'Altezza', 'ความสูง', 'Magasság', 'Hoogte', 'altitudo', 'Tinggi', 'Yükseklik', 'Υψος', 'ارتفاع', 'Ketinggian', 'ઊંચાઈ', 'Wysokość', 'Висота', 'ਕੱਦ', 'Înălţime', 'Iga', 'Hawan'),
(564, 'position', 'Position', 'অবস্থান', 'Posición', 'موضع', 'पद', 'مقام', '位置', 'Position', 'Posição', 'Должность', 'Position', '위치', 'Position', 'Posizione', 'ตำแหน่ง', 'Pozíció', 'Positie', 'statum', 'Posisi', 'pozisyon', 'Θέση', 'موقعیت', 'Jawatan', 'પોઝિશન', 'Pozycja', 'Позиція', 'ਸਥਿਤੀ', 'Poziţie', 'Ipo', 'Matsayi'),
(565, 'merit_list', 'Merit List', 'মেধা তালিকা', 'Lista de mérito', 'قائمة الاستحقاق', 'मेरिट सूची', 'میرٹ کی فہرست', '优点列表', 'メリットリスト', 'Lista de Mérito', 'Список заслуг', 'Liste de mérite', '장점 목록', 'Leistungsliste', 'Lista dei Meriti', 'รายชื่อบุญ', 'Érdemjegy', 'Merit List', 'merito List', 'Daftar Kelebihan', 'Liyakat listesi', 'Λίστα αξιών', 'فهرست شایستگی', 'Senarai Merit', 'મેરિટ લિસ્ટ', 'Lista zasłużonych', 'Список заслуг', 'ਮੈਰਿਟ ਲਿਸਟ', 'Lista de merit', 'Àtòkọ Ẹrọ', 'Lissafin Ƙasa'),
(566, 'passed', 'Passed', 'উত্তীর্ণ', 'Pasado', 'مرت', 'बीतने के', 'منظور', '通过', '合格', 'Passado', 'Прошло', 'Passé', '합격', 'Bestanden', 'Passato', 'ผ่าน', 'elmúlt', 'Geslaagd', 'transierunt', 'Lulus', 'geçti', 'Πέρασε', 'گذشت', 'Lulus', 'પસાર થઈ', 'Przeszedł', 'Пройдено', 'ਪਾਸ ਹੋਇਆ', 'A trecut', 'Ti kọja', 'An wuce'),
(567, 'failed', 'Failed', 'ব্যর্থ', 'Ha fallado', 'فشل', 'अनुत्तीर्ण होना', 'ناکام', '失败', '失敗', 'Falhou', 'Не смогли', 'Échoué', '실패한', 'Gescheitert', 'mancato', 'ล้มเหลว', 'nem sikerült', 'mislukt', 'Deficio', 'Gagal', 'Başarısız oldu', 'Απέτυχε', 'ناموفق', 'Gagal', 'નિષ્ફળ થયું', 'Nie powiodło się', 'Помилка', 'ਅਸਫਲ', 'A eșuat', 'Kuna', 'Ba a yi nasarar ba'),
(569, 'admitted', 'Admitted', 'ভর্তি', 'Aceptado', 'اعترف', 'स्वीकार किया', 'اعتراف', '承认', '授与された', 'Admitido', 'Допускаются', 'Admis', '수락 한', 'Zugelassen', 'Ammesso', 'ที่ยอมรับ', 'Felvételt nyer', 'toegelaten', 'admissus', 'Mengakui', 'kabul edilmiş', 'Παράδεκτος', 'پذیرفته', 'Diterima', 'સ્વીકૃત', 'Przyznał', 'Прийнято', 'ਦਾਖਲ', 'Admis', 'Ti gba', 'Admitted'),
(571, 'drop_out', 'Drop Out', 'বাদ পরা', 'Abandonar', 'أوقع', 'ड्रॉप आउट', 'باہر چھوڑ', '退出', '脱落', 'Cair fora', 'Выбывать', 'Abandonner', '탈락', 'Aussteigen', 'Buttare fuori', 'ปล่อยออก', 'Kidobni', 'Afvaller', 'EXSTILLO', 'Keluar', 'Bırakmak', 'Εγκαταλείπω', 'رها کردن', 'Tercicir', 'છોડી દીધેલ', 'Wycofać się', 'Викинути', 'ਛੱਡ ਦੇਣਾ', 'Renunța', 'Eniti o ko lati se nkan', 'Daina'),
(572, 'advanced', 'Advanced', 'অগ্রিম', 'Avanzado', 'المتقدمة', 'उन्नत', 'اعلی درجے کی', '高级', '上級', 'Avançado', 'продвинутый', 'Avancée', '많은', 'Fortgeschritten', 'Avanzate', 'สูง', 'Fejlett', 'gevorderd', 'provectus', 'Maju', 'ileri', 'Προχωρημένος', 'پیشرفته', 'Advanced', 'અદ્યતન', 'zaawansowane', 'Розширений', 'ਤਕਨੀਕੀ', 'Avansat', 'Ti ni ilọsiwaju', 'Na ci gaba'),
(573, 'avg_of_all_exam', 'Average of All Exam', 'সব পরীক্ষার গড়', 'Promedio de todos los exámenes', 'متوسط كل الامتحانات', 'सभी परीक्षा का औसत', 'تمام امتحانوں کا اوسط', '所有考试的平均值', 'すべての試験の平均', 'Média de todos os exames', 'Среднее значение всего экзамена', 'Moyenne de tous les examens', '모든 시험의 평균', 'Durchschnitt aller Prüfungen', 'Media di tutti gli esami', 'ค่าเฉลี่ยของการสอบทั้งหมด', 'Átlagos összes vizsgája', 'Gemiddelde van alle examen', 'Omnes mediocris de nito', 'Rata-Rata Semua Ujian', 'Tüm sınavın ortalaması', 'Μέσος όρος όλων των εξετάσεων', 'میانگین امتحانات', 'Purata Semua Peperiksaan', 'તમામ પરીક્ષાનું સરેરાશ', 'Średnia wszystkich egzaminów', 'Середній бал усіх іспитів', 'ਸਭ ਪ੍ਰੀਖਿਆ ਦਾ ਔਸਤ', 'Media tuturor examenelor', 'Iwọn ti Gbogbo Ayẹwo', 'Matsayin Duk Kwara'),
(574, 'only_of_fianl_exam', 'Only Based on Final Exam', 'শুধু ফাইনাল পরীক্ষার ভিত্তিতে', 'Solo basado en el examen final', 'يعتمد فقط على الاختبار النهائي', 'केवल अंतिम परीक्षा के आधार पर', 'صرف حتمی امتحان کی بنیاد پر', '仅基于期末考试', '最終試験のみに基づいて', 'Apenas com base no exame final', 'Только на основе итогового экзамена', 'Seulement basé sur lexamen final', '최종 시험에만 근거 함', 'Nur basierend auf der Abschlussprüfung', 'Solo in base allesame finale', 'ขึ้นอยู่กับการสอบปลายภาค', 'Csak a záróvizsga alapján', 'Alleen gebaseerd op eindexamen', 'Ex tantum Exam', 'Hanya Berdasarkan Ujian Akhir', 'Sadece Final Sınavına Dayalı', 'Βασίζεται μόνο στην τελική εξέταση', 'فقط بر اساس آزمون نهایی', 'Hanya Berdasarkan Peperiksaan Akhir', 'માત્ર અંતિમ પરીક્ષા પર આધારિત', 'Tylko na podstawie egzaminu końcowego', 'Тільки на підставі остаточного іспиту', 'ਕੇਵਲ ਅੰਤਿਮ ਪ੍ਰੀਖਿਆ ਦੇ ਆਧਾਰ ਤੇ', 'Numai pe baza examenului final', 'Nikan Da lori Igbeyewo Ayẹwo', 'Binciken Bincike ne kawai'),
(575, 'template', 'Template', 'টেমপ্লেট', 'Modelo', 'قالب', 'खाका', 'سانچے', '模板', 'テンプレート', 'Modelo', 'шаблон', 'Modèle', '주형', 'Vorlage', 'Modello', 'แบบ', 'Sablon', 'Sjabloon', 'Home', 'Template', 'şablon', 'Πρότυπο', 'قالب', 'Templat', 'ઢાંચો', 'Szablon', 'Шаблон', 'ਟੈਂਪਲੇਟ', 'Format', 'Awoṣe', 'Samfurin'),
(576, 'absent', 'Absent', 'অনুপস্থিত', 'Ausente', 'غائب', 'अनुपस्थित', 'غیر حاضر', '缺席', '不在', 'Ausente', 'Нет на месте', 'Absent', '없는', 'Abwesend', 'Assente', 'ขาด', 'Hiányzó', 'Afwezig', 'absens', 'Tidak hadir', 'Yok', 'Απών', 'غایب', 'Tidak hadir', 'ગેરહાજર', 'Nieobecny', 'Відсутня', 'ਗੈਰਹਾਜ਼ਰੀ', 'Absent', 'Ti ko ni', 'Ba ya nan');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(577, 'activity_log', 'Activity Log', 'কার্য বিবরণ', 'Registro de actividades', 'سجل النشاطات', 'गतिविधि लॉग', 'سرگرمی لاگ ان', '活动日志', '活動記録', 'Registro de atividade', 'Журнал активности', 'Journal dactivité', '활동 로그', 'Aktivitätsprotokoll', 'Registro delle attività', 'บันทึกกิจกรรม', 'Naplót', 'Activiteiten logboek', 'Actio iniuriarum', 'Log aktivitas', 'Etkinlik Günlüğü', 'Αρχείο καταγραφής δραστηριότητας', 'گزارش فعالیت', 'Log aktiviti', 'પ્રવૃત્તિ લૉગ', 'Dziennik aktywności', 'Журнал активності', 'ਸਰਗਰਮੀ ਲਾਗ', 'Jurnalul de activitate', 'Wọle iṣẹ', 'Sabis na Ayyuka'),
(578, 'generate_csv', 'Generate CSV', 'সিএসভি তৈরি করুন', 'Generar CSV', 'إنشاء ملف CSV', 'सीएसवी उत्पन्न करें', 'CSV بنائیں', '生成CSV', 'CSVを生成する', 'Gerar CSV', 'Создание CSV', 'Générer un fichier CSV', 'CSV 생성', 'CSV generieren', 'Genera CSV', 'สร้าง CSV', 'CSV létrehozása', 'CSV genereren', 'CSV generate', 'Hasilkan CSV', 'CSV oluştur', 'Δημιουργία CSV', 'ایجاد CSV', 'Menjana CSV', 'CSV જનરેટ કરો', 'Wygeneruj plik CSV', 'Створити CSV', 'ਸੀਐਸਵੀ ਬਣਾਉ', 'Generați CSV', 'Fi CSV ti o lagbara', 'Samar da CSV'),
(579, 'csv_file', 'CSV File', 'সিএসভি ফাইল', 'Archivo CSV', 'ملف CSV', 'सीएसवी फ़ाइल', 'CSV فائل', 'CSV文件', 'CSVファイル', 'Arquivo CSV', 'Файл CSV', 'Fichier CSV', 'CSV 파일', 'CSV-Datei', 'File CSV', 'ไฟล์ CSV', 'CSV fájl', 'CSV-bestand', 'File CSV', 'File CSV', 'CSV Dosyası', 'Αρχείο CSV', 'فایل CSV', 'Fail CSV', 'CSV ફાઇલ', 'Plik CSV', 'CSV-файл', 'CSV ਫਾਈਲ', 'Fișier CSV', 'Faili CSV', 'Fayil ɗin CSV'),
(1166, 'correct_answer', 'Correct Answer', 'সঠিক উত্তর', 'Respuesta correcta', 'تصحيح الأنصار', 'सही अंसारी', 'درست جواب', '正确答案', '正解', 'Resposta correta', 'Правильный ответ', 'Bonne réponse', '정답', 'Richtige Antwort', 'Risposta corretta', 'คำตอบที่ถูกต้อง', 'Helyes válasz', 'Goed antwoord', 'Recte respondendum est', 'Jawaban yang benar', 'Doğru cevap', 'Σωστή απάντηση', 'پاسخ صحیح', 'Jawapan yang betul', 'સાચો જવાબ', 'Poprawna odpowiedź', 'Правильна відповідь', 'ਸਹੀ ਜਵਾਬ', 'Răspuns corect', 'Idahun ti o tọ', 'Amsa daidai'),
(1167, 'incorrect_answer', 'Incorrect Answer', ' ভুল উত্তর', 'Respuesta incorrecta', 'الأنصار غير صحيح', 'गलत अंसारी', 'غلط جواب', '不正确的答案', '間違った答え', 'Resposta incorreta', 'Неправильный ответ', 'Réponse incorrecte', '오답', 'Falsche Antwort', 'Risposta sbagliata', 'คำตอบที่ไม่ถูกต้อง', 'Helytelen válasz', 'Fout antwoord', 'Recta respondendum est', 'Jawaban yang salah', 'Yanlış cevap', 'Λανθασμένη απάντηση', 'پاسخ نادرست', 'Jawapan salah', 'ખોટો જવાબ', 'Niepoprawna odpowiedź', 'Неправильна відповідь', 'ਗਲਤ ਜਵਾਬ', 'Raspuns gresit', 'Idahun ti ko tọ', 'Amsa mara daidai'),
(1168, 'exam_statistics', 'Exam Statistics', 'পরীক্ষার পরিসংখ্যান', 'Estadísticas del examen', 'إحصائيات الامتحان', 'परीक्षा सांख्यिकी', 'امتحان کے اعدادوشمار', '考试统计', '試験統計', 'Estatísticas do exame', 'Статистика экзамена', 'Statistiques d\'examen', '시험 통계', 'Prüfungsstatistik', 'Statistiche degli esami', 'สถิติการสอบ', 'Vizsgastatisztika', 'Examenstatistieken', 'Exam Statistics', 'Statistik Ujian', 'Sınav İstatistikleri', 'Στατιστικά Εξετάσεων', 'آمار امتحان', 'Statistik Peperiksaan', 'પરીક્ષાના આંકડા', 'Statystyki egzaminu', 'Статистика іспитів', 'ਇਮਤਿਹਾਨ ਦੇ ਅੰਕੜੇ', 'Statistica examenului', 'Awọn iṣiro kẹhìn', 'Kididdigar jarrabawa'),
(1169, 'you_already_reach_max_exam_limit', 'You Already Reach Maximum Exam Limit.', 'আপনি ইতিমধ্যেই সর্বোচ্চ পরীক্ষার সীমাতে পৌঁছেছেন।', 'Ya alcanzó el límite máximo de exámenes.', 'لديك بالفعل الحد الأقصى للاختبار.', 'आपके पास पहले से ही अधिकतम परीक्षा सीमा है।', 'آپ پہلے ہی امتحان کی زیادہ سے زیادہ حد تک پہنچ چکے ہیں۔', '您已达到考试上限。', 'すでに最大試験制限に達しています。', 'Você já atingiu o limite máximo de exames.', 'Вы уже достигли максимального лимита экзаменов.', 'Vous atteignez déjà la limite maximale d\'examen.', '이미 최대 시험 한도에 도달했습니다.', 'Sie erreichen bereits das maximale Prüfungslimit', 'Hai già raggiunto il limite massimo di esami.', 'คุณถึงขีดจำกัดการสอบสูงสุดแล้ว', 'Már elérte a maximális vizsgahatárt.', 'U bereikt al de maximale examenlimiet.', 'Iam Maximum Exam Limit.', 'Anda Sudah Mencapai Batas Maksimum Ujian.', 'zaten maksimum sınav sınırına ulaştınız', 'Φτάσατε ήδη το μέγιστο όριο εξέτασης.', 'شما از قبل به حداکثر حد مجاز امتحان رسیده اید.', 'Anda Sudah Mencapai Had Peperiksaan Maksimum.', 'તમે પહેલેથી જ મહત્તમ પરીક્ષા મર્યાદા સુધી પહોંચી ગયા છો.', 'Osiągnąłeś już maksymalny limit egzaminów.', 'Ви вже досягли максимальної межі іспитів.', 'ਤੁਸੀਂ ਪਹਿਲਾਂ ਹੀ ਅਧਿਕਤਮ ਪ੍ਰੀਖਿਆ ਸੀਮਾ \'ਤੇ ਪਹੁੰਚ ਗਏ ਹੋ।', 'Ați atins deja limita maximă de examen.', 'O ti de opin idanwo ti o pọju.', 'Kun riga kun isa iyakar jarrabawa.'),
(1170, 'advanced_admission', 'Advanced Admission', 'অ্যাডভান্সড ভর্তি', 'Admisión avanzada', 'القبول المتقدم', 'उन्नत प्रवेश', 'ایڈوانسڈ داخلہ', '高级入学', '高度な入場', 'Admissão Avançada', 'Расширенный допуск', 'Admission avancée', '고급 입학', 'Erweiterter Eintritt', 'Ingresso avanzato', 'การรับเข้าเรียนขั้นสูง', 'Haladó felvétel', 'Geavanceerde toelating', 'Provectus admissionis', 'Penerimaan Lanjutan', 'Gelişmiş Kabul', 'Προχωρημένη Είσοδος', 'پذیرش پیشرفته', 'Kemasukan Lanjutan', 'એડવાન્સ એડમિશન', 'Wstęp zaawansowany', 'Розширений прийом', 'ਐਡਵਾਂਸਡ ਦਾਖਲਾ', 'Admitere avansată', 'Gbigbawọle ti ilọsiwaju', 'Babban Admission'),
(1171, 'comment', 'Comment', 'মন্তব্য করুন', 'Comentario', 'تعليقات', 'टिप्पणियाँ', 'تبصرہ', '评论', 'コメント', 'Comente', 'Комментарий', 'Commenter', '논평', 'Kommentar', 'Commento', 'ความคิดเห็น', 'Megjegyzés', 'Opmerking', 'Comment', 'Komentar', 'Yorum Yap', 'Σχόλιο', 'اظهار نظر', 'Komen', 'ટિપ્પણી', 'Komentarz', 'Коментар', 'ਟਿੱਪਣੀ', 'cometariu', 'Idasi', 'Sharhi'),
(1172, 'opening_hour', 'Opening Hour', 'খোলার সময়', 'Hora de apertura', 'ليكون الافتتاح', 'उद्घाटन होना', 'کھلنے کا وقت', '营业时间', '営業時間', 'hora de abertura', 'Часы работы', 'Heure d\'ouverture', '영업시간', 'Öffnungszeit', 'Orario di apertura', 'เวลาเปิดทำการ', 'Nyitva tartás', 'Openingsuur', 'Hora foramen', 'Jam Buka', 'Açılış saati', 'Ώρα Λειτουργίας', 'ساعت افتتاحیه', 'Waktu Buka', 'ઓપનિંગ અવર', 'Godzina otwarcia', 'Година роботи', 'ਖੁੱਲਣ ਦਾ ਸਮਾਂ', 'Ora de deschidere', 'Ṣii wakati', 'Sa\'ar budewa'),
(1173, 'academic', 'Academic', 'একাডেমিক', 'Académica', 'أكاديمي', 'अकादमिक', 'تعلیمی', '学术的', 'アカデミック', 'Acadêmica', 'Академический', 'Académique', '학생', 'Akademikerin', 'Accademica', 'เชิงวิชาการ', 'Akadémiai', 'academisch', 'Academicus', 'Akademik', 'Akademik', 'Ακαδημαϊκός', 'علمی', 'Akademik', 'શૈક્ષણિક', 'Akademicki', 'Академічний', 'ਅਕਾਦਮਿਕ', 'Academic', 'Ile ẹkọ', 'Ilimi'),
(1174, 'manage_faq', 'Manage Faq', 'প্রশ্ন পরিচালনা করুন', 'Gestionar preguntas frecuentes', 'إدارة اللعنة', 'भाड़ में जाओ', 'Faq کا نظم کریں۔', '管理常见问题', 'よくある質問の管理', 'Gerenciar Faq', 'Управление часто задаваемыми вопросами', 'Gérer la FAQ', '자주 묻는 질문 관리', 'Häufig gestellte Fragen verwalten', 'Gestisci Faq', 'จัดการคำถามที่พบบ่อย', 'Manage FAQ', 'Veelgestelde vragen beheren', 'Curo Faq', 'Kelola Pertanyaan Umum', 'SSS\'yi Yönet', 'Διαχείριση συχνών ερωτήσεων', 'مدیریت سوالات متداول', 'Urus Faq', 'Faq મેનેજ કરો', 'Zarządzaj FAQ', 'Керуйте поширеними запитаннями', 'Faq ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați Faq', 'Ṣakoso FAQ', 'Sarrafa Faq'),
(1175, 'leave', 'Leave', 'ছুটি', 'Dejar', 'يترك', 'छोड़ना', 'چھوڑو', '离开', '離れる', 'Sair', 'Оставлять', 'Laisser', '떠나다', 'Verlassen', 'Lasciare', 'ทิ้ง', 'Elhagy', 'Vertrekken', 'Relinquere', 'Meninggalkan', 'Terk etmek', 'Αδεια', 'ترک کردن', 'cuti', 'છોડો', 'Opuszczać', 'Залишати', 'ਛੱਡੋ', 'Părăsi', 'Fi ibikan silẹ', 'Bar'),
(1176, 'communication', 'Communication', 'যোগাযোগ', 'Comunicación', 'تواصل', 'संचार', 'مواصلات', '沟通', 'コミュニケーション', 'Comunicação', 'Коммуникация', 'la communication', '의사 소통', 'Kommunikation', 'Comunicazione', 'การสื่อสาร', 'Kommunikáció', 'Communicatie', 'Communicationis', 'Komunikasi', 'İletişim', 'Επικοινωνία', 'ارتباط', 'Komunikasi', 'કોમ્યુનિકેશન', 'Komunikacja', 'Спілкування', 'ਸੰਚਾਰ', 'Comunicare', 'Ibarapọ', 'Sadarwa'),
(1177, 'add_to_library', 'Add to Library', 'লাইব্রেরিতে যোগ করুন', 'Agregar a la biblioteca', 'الإعلان هو المكتبة', 'विज्ञापन पुस्तकालय है', 'لائبریری میں شامل کریں۔', '添加到库', 'ライブラリに追加', 'Adicionar à biblioteca', 'Добавить в библиотеку', 'Ajouter à la bibliothèque', '라이브러리에 추가', 'Zur Bibliothek hinzufügen', 'Aggiungi alla libreria', 'เพิ่มในห้องสมุด', 'Hozzáadás a könyvtárhoz', 'Toevoegen aan bibliotheek', 'Add to Library', 'Tambahkan ke Perpustakaan', 'Kütüphaneye ekle', 'Προσθήκη στη Βιβλιοθήκη', 'افزودن به کتابخانه', 'Tambahkan ke Perpustakaan', 'લાઇબ્રેરીમાં ઉમેરો', 'Dodaj do biblioteki', 'Додати до бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați la bibliotecă', 'Fi kun si ile-ikawe', 'Ƙara zuwa Laburare'),
(1178, 'frontend', 'Frontend', 'সামনের অংশ', 'Interfaz', 'نهاية المقدمة', 'फ़्रंट एंड', 'فرنٹ اینڈ', '前端', 'フロントエンド', 'A parte dianteira', 'Внешний интерфейс', 'L\'extrémité avant', '프론트엔드', 'Vorderes Ende', 'Fine frontale', 'ส่วนหน้า', 'Frontend', 'Voorkant', 'Frontend', 'Paling depan', 'Başlangıç aşaması', 'Frontend', 'Frontend', 'Bahagian hadapan', 'અગ્રભાગ', 'Frontend', 'Frontend', 'ਅਗਰਾਂਤ', 'În față', 'Software ti o pese atọkun si eto miiran', 'Gaban gaba'),
(1179, 'total_due_fee', 'Total Due Fee', 'মোট বকেয়া ফি', 'Tarifa total adeuda', 'إجمالي رسوم الثنائي', 'कुल युगल शुल्क', 'کل واجب الادا فیس', '总到期费用', '合計支払額', 'Taxa devida total', 'Итого к оплате', 'Total des frais dus', '총 회비', 'Gesamte fällige Gebühr', 'Commissione totale dovuta', 'ค่าธรรมเนียมที่ครบกำหนดทั้งหมด', 'Teljes esedékes díj', 'Totaal verschuldigde vergoeding', 'Totalis debitum pretium', 'Total Biaya Jatuh Tempo', 'Toplam Vade Ücreti', 'Συνολικό Οφειλόμενο Τέλος', 'کل هزینه سررسید', 'Jumlah Yuran Tertunggak', 'કુલ બાકી ફી', 'Całkowita należna opłata', 'Загальна комісія', 'ਕੁੱਲ ਬਕਾਇਆ ਫੀਸ', 'Taxa totală datorată', 'Lapapọ ọya', 'Jimlar Kuɗin Haɗin Kai'),
(1180, 'issue_total', 'Issue Total', 'মোট সংখ্যা', 'Total de la emisión', 'إجمالي العدد', 'कुल अंक', 'شمارہ ٹوٹل', '问题总数', '発行合計', 'Total da edição', 'Итого по выпуску', 'Total du problème', '발행 총계', 'Ausgabe insgesamt', 'Emissione totale', 'ฉบับทั้งหมด', 'Kiadás összesen', 'Probleem totaal', 'Exitus Summa', 'Jumlah Masalah', 'Sayı Toplamı', 'Σύνολο τεύχους', 'مجموع شماره', 'Jumlah Isu', 'અંક કુલ', 'Suma wydania', 'Усього випуску', 'ਅੰਕ ਕੁੱਲ', 'Total problema', 'Afikun lapapọ', 'Jimlar Batu'),
(1181, 'return_total', 'Return Total', 'মোট রিটার্ন', 'Devolución total', 'إجمالي العائد', 'कुल वापसी', 'کل واپسی', '退货总额', '合計を返す', 'Retorno Total', 'Итого по возврату', 'Retour Total', '반환 합계', 'Gesamtrückgabe', 'Ritorno totale', 'ผลตอบแทนรวม', 'Teljes megtérülés', 'Totaal retour', 'Redi Totalis', 'Kembali Total', 'Toplam Dönüş', 'Σύνολο επιστροφών', 'برگرداندن کل', 'Jumlah Pulangan', 'કુલ વળતર', 'Zwróć sumę', 'Повернути Усього', 'ਕੁੱਲ ਵਾਪਸੀ', 'Total randament', 'Pada lapapọ', 'Jimlar dawowa'),
(1182, 'remain_total', 'Remain Total', ' মোট বাকি থাকবে', 'Permanecer total', 'إجمالي Remin', 'रेमिन टोटल', 'ٹوٹل رہیں', '剩余总数', '残り合計', 'Total restante', 'Остаться Итого', 'Rester total', '남은 합계', 'Gesamt bleiben', 'Rimani totale', 'คงเหลือทั้งหมด', 'Maradj Összesen', 'Totaal blijven', 'manet Total', 'Tetap Total', 'Toplam Kalan', 'Παραμένουν Σύνολο', 'کل باقی بماند', 'Kekal Jumlah', 'કુલ રહે', 'Pozostań ogółem', 'Залишитись Тотал', 'ਕੁੱਲ ਰਹੋ', 'Rămâi total', 'Wa ni lapapọ', 'Jimillar Rago'),
(1183, 'our_facilities', 'Our Facilities', 'আমাদের সুবিধা', 'Nuestras facilidades', 'مرافق الساعة', 'घंटे की सुविधा', 'ہماری سہولیات', '我们的设施', '私たちの施設', 'Nossas instalações', 'Наши объекты', 'Nos infrastructures', '시설', 'Unsere Einrichtungen', 'Le nostre strutture', 'สิ่งอำนวยความสะดวกของเรา', 'Létesítményeink', 'Onze faciliteiten', 'Nostrae Facultates', 'Fasilitas Kami', 'Bizim tesisler', 'Οι Εγκαταστάσεις μας', 'امکانات ما', 'Kemudahan Kami', 'અમારી સુવિધાઓ', 'Nasze obiekty', 'Наші засоби', 'ਸਾਡੀਆਂ ਸਹੂਲਤਾਂ', 'Facilitățile noastre', 'Awọn ohun elo wa', 'Kayan aikin mu'),
(1185, 'our_achievement', 'Our Achievement', 'আমাদের অর্জন', 'Nuestro logro', 'إنجازاتنا', 'हमारी उपलब्धि', 'ہماری کامیابی', '我们的成就', '私たちの成果', 'Nossa Conquista', 'Наше достижение', 'notre réalisation', '우리의 성취', 'Unsere Leistung', 'Il nostro successo', 'ความสำเร็จของเรา', 'A mi eredményünk', 'Onze prestatie', 'Noster Achievement', 'Prestasi kami', 'Başarımız', 'Το επίτευγμά μας', 'دستاورد ما', 'Pencapaian Kami', 'અમારી સિદ્ધિ', 'Nasze osiągnięcie', 'Наше досягнення', 'ਸਾਡੀ ਪ੍ਰਾਪਤੀ', 'Realizarea noastră', 'Aṣeyọri wa', 'Nasararmu'),
(1186, 'latest_news', 'Latest News', 'সর্বশেষ সংবাদ', 'Últimas noticias', 'أحدث الأخبار', 'ताज़ा खबर', 'تازہ ترین خبریں', '最新消息', '最新ニュース', 'Últimas notícias', 'Последние новости', 'Dernières nouvelles', '최근 뉴스', 'Neuesten Nachrichten', 'Ultime notizie', 'ข่าวล่าสุด', 'Legfrissebb hírek', 'Laatste nieuws', 'Tardus News', 'Berita Terbaru', 'Son Haberler', 'Τελευταία νέα', 'آخرین خبرها', 'Berita terkini', 'તાજી ખબર', 'Najnowsze wiadomości', 'Останні новини', 'ਤਾਜ਼ਾ ਖ਼ਬਰਾਂ', 'Cele mai recente știri', 'Awọn irohin tuntun', 'Sabbin Labarai'),
(1187, 'apply_now', 'Apply Now', 'এখন আবেদন করুন', 'Aplica ya', 'قدم الآن', 'अभी अप्लाई करें', 'اب لگائیں', '现在申请', '今すぐ申し込む', 'Aplique agora', 'Применить сейчас', 'Appliquer maintenant', '지금 신청', 'Jetzt bewerben', 'Applica ora', 'สมัครตอนนี้', 'Jelentkezz most', 'Nu toepassen', 'Applicare autem', 'Lamar Sekarang', 'Şimdi Uygula', 'Κάνε αίτηση τώρα', 'اکنون درخواست دهید', 'Mohon sekarang', 'હવે અરજી કરો', 'Aplikuj teraz', 'Застосувати зараз', 'ਹੁਣ ਲਾਗੂ ਕਰੋ', 'Aplica acum', 'Waye bayi', 'Aiwatar Yanzu'),
(1188, 'notices', 'Notices', 'নোটিশ', 'Avisos', 'إشعارات', 'नोटिस', 'نوٹس', '通知', '通知', 'Avisos', 'Уведомления', 'Avis', '공지사항', 'Hinweise', 'Avvisi', 'ประกาศ', 'Megjegyzések', 'Mededelingen', 'Notices', 'Pemberitahuan', 'Bildirimler', 'Ειδοποιήσεις', 'اطلاعیه ها', 'Notis', 'નોટિસ', 'Uwagi', 'Повідомлення', 'ਨੋਟਿਸ', 'Notificări', 'Awọn akiyesi', 'Sanarwa'),
(1189, 'latest_notice', 'Latest Notice', 'সর্বশেষ নোটিশ', 'Último aviso', 'أحدث إشعار', 'नवीनतम सूचना', 'تازہ ترین نوٹس', '最新通知', '最新のお知らせ', 'Último Aviso', 'Последнее уведомление', 'Dernier avis', '최신 공지', 'Letzte Mitteilung', 'Ultimo avviso', 'ประกาศล่าสุด', 'Legújabb közlemény', 'Laatste kennisgeving:', 'Tardus Notitia', 'Pemberitahuan Terbaru', 'Son Bildirim', 'Τελευταία ειδοποίηση', 'آخرین اطلاعیه', 'Notis Terkini', 'નવીનતમ સૂચના', 'Ostatnie zawiadomienie', 'Останнє сповіщення', 'ਤਾਜ਼ਾ ਨੋਟਿਸ', 'Ultima notificare', 'Akiyesi tuntun', 'Sabuwar Sanarwa'),
(1190, 'holidays', 'Holidays', 'ছুটির দিন', 'Vacaciones', 'العطل', 'छुट्टियां', 'چھٹیاں', '假期', '休日', 'feriados', 'каникулы', 'Vacances', '휴가', 'Ferien', 'Vacanze', 'วันหยุด', 'Ünnepek', 'Vakantie', 'Feriae', 'Liburan', 'Bayram', 'Διακοπές', 'تعطیلات', 'hari cuti', 'રજાઓ', 'Wakacje', 'Свята', 'ਛੁੱਟੀਆਂ', 'Sărbători', 'Awọn isinmi', 'Hutu'),
(1191, 'latest_holiday', 'Latest Holiday', 'সর্বশেষ ছুটির দিন', 'Últimas vacaciones', 'آخر عطلة', 'नवीनतम छुट्टी', 'تازہ ترین چھٹی', '最近假期', '最新の休日', 'Último feriado', 'Последний праздник', 'Dernières vacances', '최근 휴일', 'Letzter Feiertag', 'Ultime vacanze', 'วันหยุดล่าสุด', 'Legutóbbi ünnep', 'Laatste vakantie', 'Latest Holiday', 'Liburan Terbaru', 'Son Tatil', 'Τελευταίες διακοπές', 'آخرین تعطیلات', 'Cuti Terkini', 'તાજેતરની રજા', 'Ostatnie wakacje', 'Останнє свято', 'ਤਾਜ਼ਾ ਛੁੱਟੀਆਂ', 'Ultima vacanță', 'Isinmi tuntun', 'Sabuwar Hutu'),
(1192, 'to', 'To', 'প্রতি', 'Para', 'وبالتالي', 'इसलिए', 'کو', '到', 'に', 'Para', 'К', 'À', 'NS', 'Zu', 'Per', 'ถึง', 'Nak nek', 'Tot', 'Ad', 'Ke', 'NS', 'Προς το', 'به', 'Kepada', 'પ્રતિ', 'Do', 'До', 'ਨੂੰ', 'La', 'Si', 'Zuwa'),
(1193, 'userid', 'Userid', 'ব্যবহারকারীর আইডি', 'ID de usuario', 'أنت قلت', 'आपने कहा', 'صارف کی شناخت', '用户身份', 'ユーザーID', 'ID do usuário', 'ID пользователя', 'Identifiant d\'utilisateur', '사용자 ID', 'Benutzeridentifikation', 'ID utente', 'รหัสผู้ใช้', 'Felhasználói azonosító', 'Gebruikersnaam', 'Userid', 'Identitas pengguna', 'Kullanıcı kimliği', 'Ταυτότητα χρήστη', 'شناسه کاربری', 'ID Pengguna', 'યુઝરિડ', 'Identyfikator użytkownika', 'Ідентифікатор користувача', 'ਯੂਜਰ ਆਈਡੀ', 'Numele de utilizator', 'Idanimọ olumulo', 'Mai amfani'),
(1194, 'submer_name', 'Submer Name', 'সাবমার নাম', 'Nombre del sumergidor', 'اسم شبهام', 'शुभम का नाम', 'آبدوز کا نام', '潜水器名称', '潜水艦名', 'Nome do submergidor', 'Подводное имя', 'Nom du sous-marin', '잠수함 이름', 'Name des Tauchers', 'Nome del sommergibile', 'ชื่อเรือดำน้ำ', 'Submer neve', 'Naam onderzeeër:', 'Submer Nomen', 'Nama Kapal Selam', 'Denizaltı Adı', 'Όνομα υποβρυχίου', 'نام زیرمرغ', 'Nama Submer', 'સબમર નામ', 'Nazwa podwodnika', 'Ім\'я субмер', 'ਸਬਮਰ ਦਾ ਨਾਮ', 'Nume Submer', 'Oruko alamugba', 'Sunan Submer'),
(1195, 'submer_id', 'Submer ID', 'সাবমার আইডি', 'ID de sumergible', 'عيد شبهام', 'शुभम की ईद', 'سبمر آئی ڈی', '潜水员编号', '潜水艦ID', 'ID do submergidor', 'Подводный ID', 'Identifiant du sous-marin', '잠수함 ID', 'Taucher-ID', 'ID immersione', 'รหัสใต้น้ำ', 'Submer ID', 'Submer-ID', 'Submer ID', 'ID kapal selam', 'denizaltı kimliği', 'Ταυτότητα υποβρυχίου', 'شناسه زیردریایی', 'ID Submer', 'સબમર ID', 'Identyfikator podwodnego', 'Ідентифікатор субмер', 'ਸਬਮਰ ਆਈ.ਡੀ', 'ID-ul submersului', 'ID BARE', 'Submer ID'),
(1196, 'terminal_id', 'Terminal ID', 'টার্মিনাল আইডি', 'ID de terminal', 'عطلة العيد', 'टर्मिनल ईद', 'ٹرمینل ID', '终端标识', 'ターミナルID', 'Terminal ID', 'ID терминала', 'Identifiant du terminal', '단말기 ID', 'Terminal-ID', 'ID terminale', 'รหัสเทอร์มินัล', 'Terminálazonosító', 'Terminal-ID', 'Terminatio ID', 'ID Terminal', 'Terminal Kimliği', 'Ταυτότητα τερματικού', 'شناسه ترمینال', 'ID Terminal', 'ટર્મિનલ ID', 'Identyfikator terminala', 'Ідентифікатор терміналу', 'ਟਰਮੀਨਲ ID', 'ID terminal', 'ID ebute', 'Tasha ID'),
(1197, 'dbbl_card_type', 'DBBL Card Type', 'ডিবিবিএল কার্ডের ধরন', 'Tipo de tarjeta DBBL', 'نوع البطاقة المزدوجة', 'डबल कार्ड प्रकार', 'DBBL کارڈ کی قسم', 'DBBL 卡类型', 'DBBLカードタイプ', 'Tipo de cartão DBBL', 'Тип карты DBBL', 'Type de carte DBBL', 'DBBL 카드 유형', 'DBBL-Kartentyp', 'Tipo di scheda DBBL', 'ประเภทบัตร DBBL', 'DBBL kártya típusa', 'dbbl-kaarttype', 'DBBL Card Type', 'Jenis Kartu DBBL', 'DBBL Kart Tipi', 'Τύπος κάρτας DBBL', 'نوع کارت DBBL', 'Jenis Kad DBBL', 'DBBL કાર્ડનો પ્રકાર', 'Typ karty DBBL', 'Тип карти DBBL', 'DBBL ਕਾਰਡ ਦੀ ਕਿਸਮ', 'Tip card DBBL', 'Iru kaadi DBBL', 'Nau\'in Katin DBBL'),
(1198, 'dbbl', 'DBBL', 'ডিবিবিএল', 'DBBL', 'مزدوج', 'दोहरा', 'ڈی بی بی ایل', '数据库', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'DBBL', 'ડીબીબીએલ', 'DBBL', 'DBBL', 'ਡੀ.ਬੀ.ਬੀ.ਐਲ', 'DBBL', 'DBBL', 'DBBL'),
(581, 'bulk_student_instruction_2', 'At first select the Academic Year, Class and Section', 'সিএসভি ফাইল তৈরি করুন', 'Generar archivo CSV', 'إنشاء ملف CSV', 'सीएसवी फ़ाइल जेनरेट करें', 'CSV فائل بنائیں', '生成CSV文件', 'CSVファイルを生成する', 'Gerar arquivo CSV', 'Создание файла CSV', 'Générer un fichier CSV', 'CSV 파일 생성', 'Generieren Sie eine CSV-Datei', 'Genera file CSV', 'สร้างไฟล์ CSV', 'CSV fájl létrehozása', 'Genereer CSV-bestand', 'CSV lima generate', 'Hasilkan file CSV', 'CSV dosyası oluştur', 'Δημιουργία αρχείου CSV', 'ایجاد فایل CSV', 'Buat fail CSV', 'CSV ફાઇલ જનરેટ કરો', 'Wygeneruj plik CSV', 'Створити файл CSV', 'CSV ਫਾਈਲ ਉਤਪੰਨ ਕਰੋ', 'Generați fișierul CSV', 'Fifẹ CSV faili', 'Samar da fayil CSV'),
(582, 'bulk_student_instruction_3', 'Generate CSV file', 'ডাউনলোড করা সিএসভি ফাইলটি খুলুন এবং ইউনিক ইমেলের মাধ্যমে শিক্ষার্থী তথ্য প্রবেশ করুন', 'Abra el archivo CSV descargado e ingrese la información del estudiante con un nombre de usuario único', 'افتح ملف CSV الذي تم تنزيله وأدخل معلومات الطالب باستخدام اسم مستخدم فريد', 'डाउनलोड की गई CSV फ़ाइल खोलें और अद्वितीय उपयोगकर्ता नाम के साथ छात्र जानकारी दर्ज करें', 'ڈاؤن لوڈ کردہ CSV فائل کو کھولیں اور طالب علم کی معلومات کو منفرد صارف نامہ درج کریں', '打开下载的CSV文件，输入具有唯一用户名的学生信息', 'ダウンロードしたCSVファイルを開き、固有のユーザー名で学生情報を入力します', 'Abra o arquivo CSV baixado e insira as informações do aluno com um nome de usuário exclusivo', 'Откройте загруженный CSV-файл и введите информацию о студенте с уникальным именем пользователя', 'Ouvrez le fichier CSV téléchargé et entrez les informations sur l\'étudiant avec un nom d\'utilisateur unique.', '다운로드 한 CSV 파일을 열고 고유 한 사용자 이름으로 학생 정보를 입력하십시오.', 'Öffnen Sie die heruntergeladene CSV-Datei und geben Sie die Schülerinformationen mit einem eindeutigen Benutzernamen ein', 'Apri il file CSV scaricato e inserisci le informazioni dello studente con un nome utente univoco', 'เปิดไฟล์ CSV ที่ดาวน์โหลดและใส่ข้อมูลของนักเรียนด้วยชื่อผู้ใช้ที่ไม่ซ้ำกัน', 'Nyissa meg a letöltött CSV-fájlt, és adja meg a diákadatokat egyedi felhasználónévvel', 'Open het gedownloade CSV-bestand en geef studentinformatie op met unieke gebruikersnaam', 'Downloaded CSV lima notitia aperire et intrare studiosum cum unique nomen usoris', 'Buka file CSV yang diunduh dan masukkan informasi siswa dengan nama pengguna yang unik', 'İndirilen CSV dosyasını açın ve benzersiz kullanıcı adıyla öğrenci bilgilerini girin', 'Ανοίξτε το αρχείο CSV που κατεβάσατε και εισάγετε τις πληροφορίες σπουδαστών με μοναδικό όνομα χρήστη', 'فایل دانلود شده CSV را باز کنید و اطلاعات دانشجویی را با نام کاربری منحصر به فرد وارد کنید', 'Buka fail CSV yang dimuat turun dan masukkan maklumat pelajar dengan nama pengguna yang unik', 'ડાઉનલોડ કરેલી CSV ફાઇલ ખોલો અને અનન્ય વપરાશકર્તાનામ સાથે વિદ્યાર્થી માહિતી દાખલ કરો', 'Otwórz pobrany plik CSV i wprowadź informacje o uczniu z unikalną nazwą użytkownika', 'Відкрийте скачаний файл CSV та введіть інформацію про учня з унікальним ім\'ям користувача', 'ਡਾਊਨਲੋਡ ਕੀਤੀ CSV ਫਾਈਲ ਖੋਲ੍ਹੋ ਅਤੇ ਵਿਲੱਖਣ ਉਪਭੋਗਤਾ ਨਾਂ ਨਾਲ ਵਿਦਿਆਰਥੀ ਜਾਣਕਾਰੀ ਦਰਜ ਕਰੋ', 'Deschideți fișierul CSV descărcat și introduceți informații despre student cu un nume de utilizator unic', 'Ṣii faili CSV ti a gba lati ayelujara ati tẹ alaye ọmọde pẹlu orukọ olumulo oto', 'Bude fayil din CSV da aka sauke kuma shigar da bayanan dalibai tare da sunan mai amfani na musamman'),
(584, 'bulk_student_instruction_5', 'Save the edited CSV file', 'সম্পাদিত সিএসভি  ফাইল সংরক্ষণ করুন', 'Guarde el archivo CSV editado', 'احفظ ملف CSV الذي تم تحريره', 'संपादित सीएसवी फ़ाइल सहेजें', 'ترمیم شدہ CSV فائل کو محفوظ کریں', '保存已编辑的CSV文件', '編集したCSVファイルを保存する', 'Salve o arquivo CSV editado', 'Сохранить отредактированный файл CSV', 'Enregistrez le fichier CSV modifié', '편집 된 CSV 파일 저장', 'Speichern Sie die bearbeitete CSV-Datei', 'Salva il file CSV modificato', 'บันทึกไฟล์ CSV ที่แก้ไขแล้ว', 'Mentse a szerkesztett CSV fájlt', 'Sla het bewerkte CSV-bestand op', 'CSV lima edited by salvificem', 'Simpan file CSV yang diedit', 'Düzenlenen CSV dosyasını kaydet', 'Αποθηκεύστε το επεξεργασμένο αρχείο CSV', 'فایل CSV ویرایش شده را ذخیره کنید', 'Simpan fail CSV yang diedit', 'સંપાદિત CSV ફાઇલ સાચવો', 'Zapisz edytowany plik CSV', 'Зберегти редагований файл CSV', 'ਸੰਪਾਦਿਤ CSV ਫਾਈਲ ਸੁਰੱਖਿਅਤ ਕਰੋ', 'Salvați fișierul CSV editat', 'Fipamọ faili CSV ti o satunkọ', 'Ajiye fayil ɗin CSV da aka gyara'),
(585, 'bulk_student_instruction_6', 'Upload again CSV file you just edited and submit', 'এডিট করা ফাইলটি আবার আপলোড করুন এবং সাবমিট করুন', 'Sube de nuevo el archivo CSV que acabas de editar y enviar', 'قم بتحميل ملف CSV مرة أخرى قمت بتحريره وإرساله', 'फिर से संपादित और जमा करें CSV फ़ाइल अपलोड करें', 'دوبارہ ترمیم کریں اور جمع کرائیں CSV فائل دوبارہ اپ لوڈ کریں', '再次上传您刚编辑并提交的CSV文件', '編集して送信したCSVファイルを再度アップロードする', 'Carregue novamente o ficheiro CSV que acabou de editar e envie', 'Загрузите снова CSV-файл, который вы только что отредактировали и отправили', 'Téléchargez à nouveau le fichier CSV que vous venez déditer et de soumettre', '방금 수정하고 제출 한 CSV 파일을 다시 업로드하십시오.', 'Laden Sie erneut die CSV-Datei hoch, die Sie gerade bearbeitet und gesendet haben', 'Carica di nuovo il file CSV che hai appena modificato e invia', 'อัปโหลดอีกครั้งไฟล์ CSV ที่คุณเพิ่งแก้ไขและส่ง', 'Töltse meg újra a szerkesztett és benyújtott CSV fájlt', 'Upload opnieuw CSV-bestand dat u zojuist hebt bewerkt en verzendt', 'CSV lima upload denuo edidit et vos iustus submittere', 'Unggah lagi file CSV yang baru saja Anda edit dan kirim', 'Düzenlediğiniz ve gönderdiğiniz yeni CSV dosyasını tekrar yükleyin', 'Ανεβάστε ξανά αρχείο CSV που μόλις επεξεργαστήκατε και υποβάλατε', 'دوباره فایل CSV را که ویرایش کرده اید بارگذاری کنید و ارسال کنید', 'Muat naik fail CSV yang baru sahaja anda edit dan hantar', 'તમે હમણાં સંપાદિત અને સબમિટ કરો છો તે CSV ફાઇલ ફરીથી અપલોડ કરો', 'Prześlij ponownie plik CSV, który właśnie edytowałeś i przesłałeś', 'Завантажте файл CSV, який ви щойно редагували та подали', 'ਦੁਬਾਰਾ CSV ਫਾਈਲ ਅਪਲੋਡ ਕਰੋ ਜੋ ਤੁਸੀਂ ਹੁਣੇ ਸੰਪਾਦਿਤ ਅਤੇ ਪ੍ਰਸਤੁਤ ਕਰਦੇ ਹੋ', 'Încărcați din nou fișierul CSV pe care tocmai l-ați editat și trimis', 'Ṣe atunse faili CSV ti o ṣatunkọ ati firanṣẹ', 'Shigar da fayil ɗin CSV kawai da aka gyara da kuma mika shi'),
(586, 'activity', 'Activity', 'কার্যকলাপ', 'Actividad', 'نشاط', 'गतिविधि', 'سرگرمی', '活动', 'アクティビティ', 'Atividade', 'Мероприятия', 'Activité', '활동', 'Aktivität', 'Attività', 'กิจกรรม', 'Tevékenység', 'Activiteit', 'actio', 'Aktivitas', 'Aktivite', 'Δραστηριότητα', 'فعالیت', 'Aktiviti', 'પ્રવૃત્તિ', 'Czynność', 'Діяльність', 'ਸਰਗਰਮੀ', 'Activitate', 'Iṣẹ', 'Ayyuka'),
(587, 'default_time_zone', 'Default Time Zone', 'ডিফল্ট টাইম জোন', 'Zona horaria predeterminada', 'المنطقة الزمنية الافتراضية', 'डिफ़ॉल्ट समय क्षेत्र', 'ڈیفالٹ ٹائم زون', '默认时区', 'デフォルトのタイムゾーン', 'Fuso horário padrão', 'Часовой пояс по умолчанию', 'Fuseau horaire par défaut', '기본 시간대', 'Standardzeitzone', 'Fuso orario predefinito', 'เขตเวลาเริ่มต้น', 'Alapértelmezett időzóna', 'Standaard tijdzone', 'Default Time Zone', 'Zona Waktu Default', 'Varsayılan Zaman Dilimi', 'Προεπιλεγμένη ζώνη ώρας', 'منطقه زمانی پیش فرض', 'Zon Masa Lalai', 'ડિફૉલ્ટ સમય ઝોન', 'Domyślna strefa czasowa', 'Часовий пояс за замовчуванням', 'ਡਿਫਾਲਟ ਸਮਾਂ ਜ਼ੋਨ', 'Fusul orar implicit', 'Aago Aago Aiyipada', 'Yanayin lokaci na tsohuwar'),
(588, 'check_all', 'Check All', 'সব টিক চিহ্ন দিন', 'Verificar todo', 'تحقق من الكل', 'सभी की जांच करो', 'سب چیک کریں', '选择所有', 'すべてチェック', 'Verificar tudo', 'Отметить все', 'Vérifie tout', '모두 확인', 'Alle überprüfen', 'Seleziona tutto', 'เลือกทั้งหมด', 'Ellenőrizni mind', 'Controleer alles', 'reprehendo omnes', 'Periksa Semua', 'Tümünü Kontrol Et', 'Ελεγξε τα ολα', 'بررسی همه', 'Memeriksa semua', 'બધા તપાસો', 'Zaznacz wszystkie', 'Перевірити все', 'ਸਾਰੇ ਚੈੱਕ ਕਰੋ', 'Selectați toate', 'Ṣayẹwo Gbogbo', 'Duba Duk'),
(589, 'uncheck_all', 'Uncheck All', 'সব টিক চিহ্ন তুলে দিন', 'Desmarcar todo', 'الغاءالكل', 'सब को अचयनित करें', 'سبھی کو نشان زد کریں', '取消所有', 'すべてのチェックを外す', 'Desmarcar todos', 'Снять все', 'Décocher tout', '모두 선택 취소', 'Alle deaktivieren', 'Deseleziona tutto', 'ยกเลิกการเลือกทั้งหมด', 'Minden választás törlése', 'Deselecteer alles', 'omnes Licens', 'Jangan tandai semua', 'Tümünü işaretleme', 'Αποεπιλογή όλων', 'همه موارد را از حالت انتخاب خارج کنید', 'Nyahtanda Semua', 'બધાને અનચેક કરો', 'Odznacz wszystkie', 'Зніміть прапорець біля всіх', 'ਸਭ ਹਟਾਓ', 'Deselecteaza tot', 'Ṣii Gbogbo rẹ', 'Cire Dukkan'),
(590, 'debit', 'Debit', 'ডেবিট', 'Débito', 'مدين', 'नामे', 'ڈیبٹ', '借方', 'デビット', 'Débito', 'Дебет', 'Débit', '차변', 'Lastschrift', 'Addebito', 'หักบัญชี', 'tartozás', 'Debiteren', 'Debita', 'Debet', 'borç', 'Χρέωση', 'بدهی', 'Debit', 'ડેબિટ', 'Obciążyć', 'Дебет', 'ਡੈਬਿਟ', 'Debit', 'Debit', 'Haɗi'),
(591, 'credit', 'Credit', 'ক্রেডিট', 'Crédito', 'ائتمان', 'श्रेय', 'کریڈٹ', '信用', 'クレジット', 'Crédito', 'кредит', 'Crédit', '신용', 'Kredit', 'Credito', 'เครดิต', 'Hitel', 'Credit', 'fidem', 'Kredit', 'Kredi', 'Πίστωση', 'اعتبار', 'Kredit', 'ક્રેડિટ', 'Kredyt', 'Кредит', 'ਕ੍ਰੈਡਿਟ', 'Credit', 'Ike', 'Credit'),
(592, 'reset_user_email', 'Reset User Email', 'ব্যবহারকারীর ইমেল রিসেট করুন', 'Restablecer correo electrónico', 'إعادة تعيين البريد الإلكتروني للمستخدم', 'उपयोगकर्ता ईमेल रीसेट करें', 'صارف ای میل ری سیٹ کریں', '重置用户电子邮件', 'ユーザーの電子メールをリセットする', 'Redefinir email do usuário', 'Сброс электронной почты пользователя', 'Réinitialiser lemail', '사용자 이메일 재설정', 'Benutzer-E-Mail zurücksetzen', 'Reimposta e-mail utente', 'รีเซ็ตอีเมลผู้ใช้', 'Felhasználói e-mail visszaállítása', 'Reset gebruikersmail', 'Mobile Version Email', 'Setel ulang Email Pengguna', 'Kullanıcı e-postasını sıfırla', 'Επαναφορά ηλεκτρονικού ταχυδρομείου χρήστη', 'تنظیم مجدد ایمیل کاربر', 'Tetapkan semula E-mel Pengguna', 'વપરાશકર્તા ઇમેઇલ ફરીથી સેટ કરો', 'Zresetuj e-mail użytkownika', 'Скинути електронну адресу користувача', 'ਰੀਸੈਟ ਯੂਜਰ ਈਮੇਲ', 'Resetați e-mailul utilizatorului', 'Atunto Olumulo Olumulo', 'Sake saitin Imel mai amfani'),
(593, 'reset_email', 'Reset Email', 'ইমেল রিসেট করুন', 'Restablecer Email', 'إعادة تعيين البريد الإلكتروني', 'ईमेल रीसेट करें', 'ای میل ری سیٹ کریں', '重置邮箱', '電子メールをリセットする', 'Redefinir email', 'Сбросить электронную почту', 'Reset Email', '이메일 재설정', 'E-Mail zurücksetzen', 'Ripristina email', 'รีเซ็ตอีเมล', 'E-mail visszaállítása', 'Reset e-mail', 'Reddere praeferentias Email', 'Setel ulang Email', 'E-postayı sıfırla', 'Επαναφορά ηλεκτρονικού ταχυδρομείου', 'تنظیم مجدد ایمیل', 'Tetapkan semula E-mel', 'ઇમેઇલ ફરીથી સેટ કરો', 'Zresetuj email', 'Скидання електронної пошти', 'ਈਮੇਲ ਦੁਬਾਰਾ ਸੈਟ ਕਰੋ', 'Resetați e-mailul', 'Tunto Imeeli', 'Sake saita Imel'),
(594, 'date_format', 'Date Format', 'ডেট ফরমেট', 'Formato de fecha', 'صيغة التاريخ', 'डेटा प्रारूप', 'تاریخ کی شکل', '日期格式', '日付形式', 'Formato de data', 'Формат даты', 'Format de date', '날짜 형식', 'Datumsformat', 'Formato data', 'รูปแบบวันที่', 'Dátum formátum', 'Datumnotatie', 'Forma Date', 'Format tanggal', 'Tarih formatı', 'Μορφή ημερομηνίας', 'فرمت تاریخ', 'Format tarikh', 'તારીખ ફોર્મેટ', 'Format daty', 'Формат дати', 'ਤਾਰੀਖ ਫਾਰਮੈਟ', 'Formatul datei', 'Ọjọ kika', 'Kwanan wata Tsarin'),
(595, 'position_in_class', 'Position in Class', 'ক্লাসে অবস্থান', 'Posición en clase', 'موقف في الصف', 'कक्षा में स्थिति', 'کلاس میں مقام', '在课堂上的位置', 'クラス内の位置', 'Posição na classe', 'Должность в классе', 'Position en classe', '클래스의 위치', 'Position in der Klasse', 'Posizione in classe', 'ตำแหน่งในชั้นเรียน', 'Pozíció az osztályban', 'Positie in de klas', 'Statum Paleonemertea Class', 'Posisi di Kelas', 'Sınıftaki pozisyonu', 'Θέση στην τάξη', 'موقعیت در کلاس', 'Kedudukan dalam Kelas', 'વર્ગમાં સ્થાન', 'Pozycja w klasie', 'Позиція в класі', 'ਕਲਾਸ ਵਿਚ ਸਥਿਤੀ', 'Poziția în clasă', 'Ipo ni Kilasi', 'Matsayi a Class'),
(596, 'position_in_section', 'Position in Section', 'বিভাগে অবস্থান', 'Posición en la Sección', 'موقف في القسم', 'खंड में स्थिति', 'سیکشن میں مقام', '在部分中的位置', 'セクション内の位置', 'Posição na seção', 'Должность в разделе', 'Position dans la section', '섹션의 위치', 'Position im Abschnitt', 'Posizione nella sezione', 'ตำแหน่งในส่วน', 'Pozíció a fejezetben', 'Positie in sectie', 'Situ Art', 'Posisi dalam Bagian', 'Bölümdeki pozisyon', 'Θέση στην Ενότητα', 'موقعیت در بخش', 'Kedudukan dalam Seksyen', 'વિભાગમાં સ્થાન', 'Pozycja w sekcji', 'Позиція в розділі', 'ਸੈਕਸ਼ਨ ਵਿੱਚ ਸਥਿਤੀ', 'Poziția în secțiune', 'Ipo ni Abala', 'Matsayi a Sashi'),
(597, 'percentage', 'Percentage', 'শতকরা হার', 'Porcentaje', 'النسبة المئوية', 'प्रतिशत', 'فی صد', '百分比', 'パーセンテージ', 'Percentagem', 'процент', 'Pourcentage', '백분율', 'Prozentsatz', 'Percentuale', 'ร้อยละ', 'Százalék', 'Percentage', 'CENTESIMA', 'Persentase', 'Yüzde', 'Ποσοστό', 'درصد', 'Peratusan', 'ટકાવારી', 'Odsetek', 'Відсоток', 'ਪ੍ਰਤੀਸ਼ਤ', 'Procent', 'Ogorun', 'Kashi'),
(598, 'principal', 'Principal', 'অধ্যক্ষ', 'Director de escuela', 'المالك', 'प्रधान अध्यापक', 'پرنسپل', '主要', '主要な', 'Diretor', 'принципал', 'Principal', '주요한', 'Schulleiter', 'Principale', 'หลัก', 'Fő', 'principaal', 'principalem', 'Kepala Sekolah', 'anapara', 'ΔΙΕΥΘΥΝΤΡΙΑ σχολειου', 'سرپرست', 'Pengetua', 'આચાર્યશ્રી', 'Dyrektor', 'Головний', 'ਪ੍ਰਿੰਸੀਪਲ', 'Principal', 'Ilana', 'Babban'),
(599, 'feedback', 'Feedback', 'প্রতিক্রিয়া', 'Realimentación', 'ردود الفعل', 'प्रतिक्रिया', 'تاثرات', '反馈', 'フィードバック', 'Comentários', 'Обратная связь', 'Retour d\'information', '피드백', 'Feedback', 'Risposta', 'ผลตอบรับ', 'Visszacsatolás', 'terugkoppeling', 'feedback', 'Umpan balik', 'geri bildirim', 'Ανατροφοδότηση', 'بازخورد', 'Maklumbalas', 'પ્રતિક્રિયા', 'Sprzężenie zwrotne', 'Зворотній зв\'язок', 'ਸੁਝਾਅ', 'Parere', 'Idahun', 'Feedback'),
(601, 'is_publish', 'Is Publish?', 'প্রকাশ করা হয়?', 'Es publicar?', 'هل تنشر؟', 'प्रकाशित है?', 'شائع کیا ہے؟', '发布了吗？', 'パブリッシュですか？', 'É publicar?', 'Опубликован?', 'Est Publier?', '게시 하시겠습니까?', 'Ist Veröffentlichen?', 'È pubblico?', 'เผยแพร่แล้วหรือไม่?', 'Publikál?', 'Is publiceren?', 'Auditum est?', 'Apakah Publikasikan?', 'Yayınlanıyor mu?', 'Είναι η δημοσίευση;', 'انتشار است؟', 'Adakah Terbitkan?', 'પ્રકાશિત છે?', 'Czy publikujesz?', 'Опублікувати?', 'ਕੀ ਪਬਲਿਸ਼ ਹੈ?', 'Este publicat?', 'Ṣe Atọjade?', 'Ana Buga?'),
(602, 'location', 'Location', 'অবস্থান', 'Ubicación', 'موقعك', 'स्थान', 'مقام', '地点', 'ロケーション', 'Localização', 'Место нахождения', 'Emplacement', '위치', 'Ort', 'Posizione', 'ที่ตั้ง', 'Elhelyezkedés', 'Plaats', 'Location', 'Lokasi', 'yer', 'Τοποθεσία', 'محل', 'Lokasi', 'સ્થાન', 'Lokalizacja', 'Розташування', 'ਸਥਾਨ', 'Locație', 'Ipo', 'Yanayi'),
(603, 'google_analytics', 'Google Analytics', 'গুগল এনালিটিক্স', 'Google analitico', 'تحليلات كوكل', 'गूगल विश्लेषिकी', 'گوگل تجزیہ کار', '谷歌分析', 'グーグルアナリティクス', 'Google Analytics', 'Гугл Аналитика', 'Google Analytics', 'Google 애널리틱스', 'Google Analytics', 'statistiche di Google', 'Google Analytics', 'A Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'Google Analytics', 'تجزیه و تحلیل ترافیک گوگل', 'Google Analytics', 'ગૂગલ ઍનલિટિક્સ', 'Google Analytics', 'Google Analytics', 'ਗੂਗਲ ਵਿਸ਼ਲੇਸ਼ਣ', 'Google Analytics', 'Atupale Google', 'Google Analytics'),
(604, 'have_any_question', 'Have you any question?', 'আপনার কোন প্রশ্ন আছে?', '¿Tienes alguna pregunta?', 'هل لديك أي سؤال؟', 'क्या आपका कोई सवाल है?', 'کیا آپ کا کوئی سوال ہے', '你有什么问题吗？', '何か質問ありますか？', 'Você tem alguma pergunta?', 'У вас есть вопрос?', 'Avez-vous une question?', '질문 있니?', 'Hast du eine Frage?', 'Hai qualche domanda?', 'คุณมีคำถามหรือไม่?', 'Kérdése van?', 'Heb je een vraag?', 'Have vos interrogare?', 'Apakah Anda punya pertanyaan?', 'Bir sorunuz var mı?', 'Έχετε κάποια ερώτηση;', 'آیا شما هر گونه سوال', 'Adakah anda mempunyai soalan?', 'શું તમને કોઈ પ્રશ્ન છે?', 'Masz jakieś pytanie?', 'У вас є якесь питання?', 'ਕੀ ਤੁਹਾਨੂੰ ਕੋਈ ਸਵਾਲ ਹੈ?', 'Aveți vreo întrebare?', 'Ṣe o ni eyikeyi ibeere?', 'Shin kuna da wata tambaya?'),
(607, 'welcome_to', 'Welcome to', 'স্বাগতম', 'Bienvenido a', 'مرحبا بك في', 'में स्वागत', 'میں خوش آمدید', '欢迎来到', 'ようこそ', 'Bem-vindo ao', 'Добро пожаловать в', 'Bienvenue à', '에 오신 것을 환영합니다', 'Willkommen zu', 'Benvenuto a', 'ยินดีต้อนรับสู่', 'Isten hozott a', 'Welkom bij', 'gratam', 'Selamat Datang di', 'Hoşgeldiniz', 'Καλωσόρισες στο', 'خوش آمدید به', 'Selamat datang ke', 'સ્વાગત', 'Witamy w', 'Ласкаво просимо до', 'ਸਵਾਗਤ ਹੈ', 'Bun venit la', 'Kaabo si', 'Barka da zuwa'),
(611, 'by', 'By', 'দ্বারা', 'Por', 'بواسطة', 'द्वारा', 'کی طرف سے', '通过', 'によって', 'Por', 'От', 'Par', '으로', 'Durch', 'Di', 'โดย', 'Által', 'Door', 'a', 'Oleh', 'Tarafından', 'Με', 'توسط', 'Oleh', 'દ્વારા', 'Przez', 'По', 'ਨਾਲ', 'De', 'Nipa', 'By'),
(612, 'what_guardian_say', 'What Guardian Say?', 'গার্ডিয়ান কি বলে?', '¿Qué dice el guardián?', 'ما الوصي قل؟', 'क्या गार्जियन कहते हैं?', 'کیا گارڈین کہتے ہیں؟', '卫报怎么说？', 'ガーディアンは何を言っているの？', 'O que o guardião diz?', 'Что сказал Хранитель?', 'Que dit le gardien?', '가디언이 뭐라 구요?', 'Was Wächter sagen?', 'Che cosa dice il guardiano?', 'อะไร Guardian Say?', 'Milyen Guardian mondja?', 'Welke bewaker zegt?', 'Custos, quid dices?', 'Apa yang dikatakan Guardian?', 'Koruyucu ne diyor?', 'Τι λέει ο Guardian;', 'چه گاردی می گوید؟', 'Apa yang dikatakan Guardian?', 'ગાર્ડિયન શું કહે છે?', 'Co mówi strażnik?', 'Що каже гадаю?', 'ਗਾਰਡੀਅਨ ਕੀ ਕਹਿੰਦੇ ਹਨ?', 'Ce spune Guardian?', 'Kini Oluṣọ Kan Sọ?', 'Abin da Guardian Say?'),
(613, 'apply_now_for_your_kid', 'Apply Now for Your Kids', 'আপনার বাচ্চাদের জন্য এখন আবেদন করুন', 'Solicite ahora para sus hijos', 'قدم الآن لأطفالك', 'अपने बच्चों के लिए अभी आवेदन करें', 'اپنے بچوں کے لئے اب درخواست دیں', '立即申请您的孩子', 'あなたの子供たちに今すぐ応募する', 'Inscreva-se agora para seus filhos', 'Применить сейчас для своих детей', 'Appliquez maintenant pour vos enfants', '자녀에게 지금 신청하십시오', 'Bewerben Sie sich jetzt für Ihre Kinder', 'Fai domanda per i tuoi bambini', 'สมัครตอนนี้เพื่อลูกของคุณ', 'Jelentkezz most a gyerekeknek', 'Meld je nu aan voor je kinderen', 'Applicare autem tuus pro Kids', 'Ajukan Sekarang untuk Anak-Anak Anda', 'Çocuklarınız için Şimdi Başvurun', 'Εφαρμόστε τώρα για τα παιδιά σας', 'اکنون برای کودکان خود اعمال کنید', 'Sapukan Sekarang untuk Anak-Anak Anda', 'તમારા બાળકો માટે હવે અરજી કરો', 'Złóż aplikację teraz dla swoich dzieci', 'Застосувати зараз для своїх дітей', 'ਆਪਣੇ ਬੱਚਿਆਂ ਲਈ ਹੁਣੇ ਅਪਲਾਈ ਕਰੋ', 'Aplicați acum pentru copiii dvs.', 'Ṣe Waye Bayi fun Awọn ọmọ wẹwẹ rẹ', 'Nemi Yanzu Don Yaracenku'),
(617, 'pls_remove_child_data', 'Please delete child data before delete this.', 'এই ডাটা  মুছে ফেলার আগে প্লিজ ডিলিট চাইল্ড ডাটা', 'Por favor, elimine los datos secundarios antes de eliminar esto.', 'يرجى حذف البيانات الفرعية قبل حذفها.', 'इसे हटाने से पहले कृपया बाल डेटा हटाएं।', 'براہ کرم اس کو حذف کرنے سے قبل بچے کے ڈیٹا کو حذف کریں.', '删除之前请删除子数据。', '削除する前に子データを削除してください。', 'Por favor, apague os dados da criança antes de deletar isto.', 'Удалите дочерние данные перед удалением.', 'Veuillez supprimer les données enfants avant de supprimer ceci.', '삭제하기 전에 하위 데이터를 삭제하십시오.', 'Bitte löschen Sie untergeordnete Daten, bevor Sie diese löschen.', 'Si prega di cancellare i dati figlio prima di eliminarlo.', 'โปรดลบข้อมูลเด็กก่อนลบข้อมูลนี้', 'Kérjük, törölje a gyermekadatokat a törlés előtt.', 'Wis onderliggende gegevens voordat u deze verwijdert.', 'Delete hoc in conspectu delete notitia puero placet.', 'Hapus data anak sebelum menghapus ini.', 'Lütfen bunu silmeden önce çocuk verilerini silin', 'Διαγράψτε τα δεδομένα παιδιού πριν διαγράψετε αυτό το θέμα.', 'لطفا قبل از حذف این اطلاعات فرزند را حذف کنید.', 'Sila padamkan data kanak-kanak sebelum memadamkannya.', 'કૃપા કરીને આને કાઢી નાખતા પહેલા બાળ ડેટા કાઢી નાખો.', 'Usuń dane podrzędne, zanim je usuniesz.', 'Будь ласка, видаліть дочірні дані, перш ніж видалити це.', 'ਕਿਰਪਾ ਕਰਕੇ ਇਸਨੂੰ ਮਿਟਾਉਣ ਤੋਂ ਪਹਿਲਾਂ ਬੱਚੇ ਦਾ ਡੇਟਾ ਮਿਟਾਓ.', 'Ștergeți datele copilului înainte de a șterge acest lucru.', 'Jọwọ pa awọn ọmọ ọmọkunrin rẹ ṣaaju ki o to paarẹ.', 'Da fatan a share bayanan jariri kafin a share wannan.'),
(1037, 'please_set_language', 'Please activate language for the School.', 'স্কুলের জন্য ভাষা সক্রিয় করুন।', 'Active el idioma de la escuela.', 'يرجى استخدام اللغة النشطة لـ TE SCHOOL.', 'कृपया TE स्कूल के लिए सक्रिय भाषा।', 'براہِ کرم TE اسکول کے لیے فعال زبان۔', '请激活学校的语言。', '学校の言語を有効にしてください。', 'Por favor, ative o idioma da Escola.', 'Пожалуйста, активируйте язык для школы.', 'Veuillez activer la langue pour l\'école.', '학교의 언어를 활성화하십시오.', 'Bitte Sprache für die Schule aktivieren.', 'Si prega di attivare la lingua per la scuola.', 'กรุณาเปิดใช้งานภาษาสำหรับโรงเรียน', 'Kérjük, aktiválja az iskola nyelvét.', 'Activeer de taal voor de school.', 'Quaeso activate linguam pro Schola.', 'Silakan aktifkan bahasa untuk Sekolah.', 'Lütfen okul için dili etkinleştirin.', 'Παρακαλούμε ενεργοποιήστε τη γλώσσα για το Σχολείο.', 'لطفا زبان را برای مدرسه فعال کنید.', 'Sila aktifkan bahasa untuk Sekolah.', 'કૃપા કરીને શાળા માટે ભાષા સક્રિય કરો.', 'Proszę aktywować język dla Szkoły.', 'Будь ласка, активуйте мову для Школи.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਕੂਲ ਲਈ ਭਾਸ਼ਾ ਨੂੰ ਸਰਗਰਮ ਕਰੋ।', 'Vă rugăm să activați limba pentru școală.', 'Jọwọ mu ede ṣiṣẹ fun Ile-iwe naa.', 'Da fatan za a kunna harshe don Makaranta.'),
(1038, 'set_academic_year_for_school', 'Please set academic year for the School.', 'অনুগ্রহ করে স্কুলের জন্য শিক্ষাবর্ষ নির্ধারণ করুন।', 'Establezca el año académico de la escuela.', 'يرجى تعيين Academic Jair لمدرسة الشاي.', 'कृपया टी स्कूल के लिए एकेडमिक जेयर सेट करें।', 'برائے مہربانی ٹی سکول کے لیے اکیڈمک جائر مقرر کریں۔', '请为学校设定学年。', '学校の学年を設定してください。', 'Por favor, defina o ano acadêmico para a escola.', 'Пожалуйста, установите учебный год для школы.', 'Veuillez définir l\'année scolaire pour l\'école.', '학교의 학년을 설정하십시오.', 'Bitte legen Sie das akademische Jahr für die Schule fest.', 'Si prega di impostare l\'anno accademico per la Scuola.', 'โปรดกำหนดปีการศึกษาสำหรับโรงเรียน', 'Kérjük, állítsa be az iskola tanévét.', 'Stel academisch jaar voor de School.', 'Quaeso annum scholasticum pro Schola.', 'Silakan tentukan tahun akademik untuk Sekolah.', 'Lütfen Okulun akademik yılını ayarlayın.', 'Ορίστε ακαδημαϊκό έτος για το Σχολείο.', 'لطفا سال تحصیلی را برای مدرسه تعیین کنید.', 'Sila tetapkan tahun akademik untuk Sekolah.', 'કૃપા કરીને શાળા માટે શૈક્ષણિક વર્ષ સેટ કરો.', 'Proszę ustalić rok akademicki dla Szkoły.', 'Будь ласка, встановіть навчальний рік для школи.', 'ਕਿਰਪਾ ਕਰਕੇ ਸਕੂਲ ਲਈ ਅਕਾਦਮਿਕ ਸਾਲ ਨਿਰਧਾਰਤ ਕਰੋ।', 'Vă rugăm să stabiliți anul universitar pentru școală.', 'ṣeto omowe odun fun ile-iwe', 'Da fatan za a saita shekarar ilimi don Makaranta.'),
(1039, 'department', 'Department', 'বিভাগ', 'Departamento', 'قسم', 'विभाग', 'شعبہ', '部门', 'デパートメント', 'Departamento', 'отделение', 'département', '학과', 'Abteilung', 'Dipartimento', 'สาขา', 'Osztály', 'afdeling', 'Department', 'Departemen', 'departman', 'Τμήμα', 'بخش', 'Jabatan', 'વિભાગ', 'dział', 'відділ', 'ਵਿਭਾਗ', 'Departament', 'Ẹka', 'Sashen'),
(1040, 'manage_department', 'Manage Department', 'বিভাগ পরিচালনা করুন', 'Administrar departamento', 'إدارة القسم', 'विभाग प्रबंधित करें', 'محکمہ کا انتظام کریں۔', '管理部门', '管理部門', 'Gerenciar Departamento', 'Управление отделом', 'Gérer le département', '부서 관리', 'Abteilung verwalten', 'Gestisci dipartimento', 'จัดการแผนก', 'Osztály kezelése', 'Afdeling beheren', 'Curo Department', 'Kelola Departemen', 'Departmanı Yönet', 'Διεύθυνση Τμήματος', 'مدیریت بخش', 'Urus Jabatan', 'વિભાગનું સંચાલન કરો', 'Zarządzaj działem', 'Керувати відділом', 'ਵਿਭਾਗ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează departamentul', 'Ṣakoso awọn Ẹka', 'Sarrafa Sashen'),
(1041, 'manage_rating', 'Manage Rating', ' রেটিং পরিচালনা করুন', 'Administrar calificación', 'إدارة التصنيف', 'रेटिंग प्रबंधित करें', 'درجہ بندی کا نظم کریں۔', '管理评级', '評価の管理', 'Gerenciar classificação', 'Управление рейтингом', 'Gérer l\'évaluation', '평가 관리', 'Bewertung verwalten', 'Gestisci valutazione', 'จัดการเรตติ้ง', 'Értékelés kezelése', 'Beoordeling beheren', 'Curo Rating', 'Kelola Peringkat', 'Derecelendirmeyi Yönet', 'Διαχείριση αξιολόγησης', 'مدیریت رتبه', 'Urus Penilaian', 'રેટિંગ મેનેજ કરો', 'Zarządzaj oceną', 'Керувати рейтингом', 'ਰੇਟਿੰਗ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați evaluarea', 'Ṣakoso awọn Rating', 'Sarrafa Rating'),
(1042, 'rating', 'Rating', 'রেটিং', 'Clasificación', 'تقييم', 'रेटिंग', 'درجہ بندی', '评分', '評価', 'Avaliação', 'Рейтинг', 'Évaluation', '평가', 'Bewertung', 'Valutazione', 'เรตติ้ง', 'Értékelés', 'Beoordeling', 'Rating', 'Peringkat', 'değerlendirme', 'Εκτίμηση', 'رتبه بندی', 'Penilaian', 'રેટિંગ', 'Ocena', 'Рейтинг', 'ਰੇਟਿੰਗ', 'Evaluare', 'Idiwon', 'Rating'),
(1043, 'teacher_rating', 'Teacher Rating', 'শিক্ষক রেটিং', 'Calificación del maestro', 'تصنيف المعلم', 'शिक्षक रेटिंग', 'اساتذہ کی درجہ بندی', '教师评分', '教師の評価', 'Avaliação do professor', 'Рейтинг учителей', 'Évaluation de l\'enseignant', '교사 평가', 'Lehrerbewertung', 'Valutazione dell\'insegnante', 'คะแนนครู', 'Tanári értékelés', 'Beoordeling door docenten', 'Magister Rating', 'Peringkat Guru', 'Öğretmen Değerlendirmesi', 'Βαθμολογία δασκάλου', 'رتبه بندی معلم', 'Penilaian Guru', 'શિક્ષક રેટિંગ', 'Ocena nauczyciela', 'Рейтинг вчителя', 'ਅਧਿਆਪਕ ਰੇਟਿੰਗ', 'Evaluarea profesorului', 'Olukọni Rating', 'Matsayin Malami'),
(1044, 'manage_student_group', 'Manage Student Group', 'ছাত্র গ্রুপ পরিচালনা করুন', 'Administrar grupo de estudiantes', 'إدارة مجموعة الطلاب', 'शिक्षक रेटिंग', 'طلباء گروپ کا نظم کریں۔', '管理学生组', '学生グループの管理', 'Gerenciar Grupo de Alunos', 'Управление студенческой группой', 'Gérer le groupe d\'étudiants', '학생 그룹 관리', 'Studentengruppe verwalten', 'Gestisci gruppo di studenti', 'จัดการกลุ่มนักเรียน', 'Diákcsoport kezelése', 'studentengroep beheren', 'Curo Discipulus Group', 'Kelola Grup Siswa', 'Öğrenci Grubunu Yönet', 'Διαχείριση Ομάδας Φοιτητών', 'مدیریت گروه دانشجویی', 'Mengurus Kumpulan Pelajar', 'વિદ્યાર્થી જૂથનું સંચાલન કરો', 'Zarządzaj grupą studencką', 'Керувати студентською групою', 'ਵਿਦਿਆਰਥੀ ਸਮੂਹ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați grupul de studenți', 'Ṣakoso awọn Akeko Group', 'Sarrafa Ƙungiyar ɗalibai'),
(1045, 'student_group', 'Student Group', 'ছাত্র গ্রুপ ', 'Grupo de estudiantes', 'مجموعة طلابية', 'छात्र समूह', 'طلباء گروپ', '学生组', '学生グループ', 'Grupo de Alunos', 'Студенческая группа', 'Groupe d\'étudiants', '학생 그룹', 'Studentengruppe', 'Gruppo di studenti', 'กลุ่มนักศึกษา', 'Diákcsoport', 'Studentengroep', 'Studiosum Group', 'Kelompok Mahasiswa', 'Öğrenci Grubu', 'Ομάδα Φοιτητών', 'گروه دانشجویی', 'Kumpulan Pelajar', 'વિદ્યાર્થી જૂથ', 'Grupa studencka', 'Студентська група', 'ਵਿਦਿਆਰਥੀ ਸਮੂਹ', 'Grupul de studenți', 'Akeko Group', 'Ƙungiyar ɗalibai'),
(1046, 'manage_advanced_admission', 'Manage Advanced Admission', 'অ্যাডভান্সড ভর্তি পরিচালনা করুন', 'Administrar admisión avanzada', 'القبول المتقدم للإدارة', 'प्रबंधन के लिए उन्नत प्रवेश', 'انتظام کرنے کے لیے ایڈوانسڈ داخلہ', '管理高级入学', '高度な入学を管理する', 'Gerenciar Admissão Avançada', 'Управление расширенным зачислением', 'Gérer l\'admission avancée', '고급 입학 관리', 'Erweiterte Zulassung verwalten', 'Gestisci l\'ammissione avanzata', 'จัดการการรับเข้าเรียนขั้นสูง', 'Haladó felvétel kezelése', 'Beheer geavanceerde toegang', 'Curo Provectus admissionis', 'Kelola Penerimaan Lanjutan', 'Gelişmiş Kabulü Yönet', 'Διαχείριση προχωρημένης εισαγωγής', 'پذیرش پیشرفته را مدیریت کنید', 'Urus Kemasukan Lanjutan', 'એડવાન્સ એડમિશન મેનેજ કરો', 'Zarządzaj wstępem zaawansowanym', 'Керуйте розширеним прийомом', 'ਐਡਵਾਂਸਡ ਦਾਖਲੇ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați admiterea avansată', 'Ṣakoso Gbigbawọle To ti ni ilọsiwaju', 'Sarrafa Babban Admission'),
(1047, 'inventory', 'Inventory', 'ইনভেন্টরি', 'Inventario', 'المخزون', 'सूची', 'انوینٹری', '存货', '在庫', 'Inventário', 'Инвентарь', 'Inventaire', '목록', 'Inventar', 'Inventario', 'รายการสิ่งของ', 'Leltár', 'Inventaris', 'Inventarium', 'Inventaris', 'Envanter', 'Καταγραφή εμπορευμάτων', 'فهرست', 'Inventori', 'ઇન્વેન્ટરી', 'Spis', 'Інвентаризація', 'ਵਸਤੂ ਸੂਚੀ', 'Inventar', 'Oja', 'Kaya'),
(1048, 'supplier', 'Supplier', 'সরবরাহকারী', 'Proveedora', 'سوبليك', 'सप्लिक', 'Suplike', '供应商', 'サプライヤー', 'Fornecedor', 'Поставщик', 'Le fournisseur', '공급업체', 'Anbieterin', 'Fornitrice', 'ผู้ผลิต', 'Támogató', 'Leverancier', 'Supplier', 'pemasok', 'Tedarikçi', 'Προμηθευτής', 'تامین کننده', 'Pembekal', 'સપ્લાયર', 'Dostawca', 'Постачальник', 'ਸਪਲਾਇਰ', 'Furnizor', 'Olupese', 'Mai bayarwa'),
(1049, 'warehouse', 'Warehouse', 'গুদাম', 'Depósito', 'مستودع', 'गोदाम', 'گودام', '仓库', '倉庫', 'Armazém', 'Склад', 'Dépot', '창고', 'Lagerhaus', 'Magazzino', 'คลังสินค้า', 'Raktár', 'Magazijn', 'CELLA', 'Gudang', 'Supplier', 'Αποθήκη', 'انبار', 'Gudang', 'વેરહાઉસ', 'Magazyn', 'Склад', 'ਵੇਅਰਹਾਊਸ', 'Depozit', 'Ile-ipamọ', 'Warehouse'),
(1050, 'category', 'Category', 'শ্রেণী', 'Categoría', 'فئة', 'श्रेणी', 'قسم', '类别', 'カテゴリー', 'Categoria', 'Категория', 'Catégorie', '범주', 'Kategorie', 'Categoria', 'หมวดหมู่', 'Kategória', 'Categorie', 'Categoria', 'Kategori', 'Kategori', 'Κατηγορία', 'دسته بندی', 'kategori', 'શ્રેણી', 'Kategoria', 'Категорія', 'ਸ਼੍ਰੇਣੀ', 'Categorie', 'Ẹka', 'Kashi'),
(1051, 'product', 'Product', 'পণ্য', 'Producto', 'المنتج', 'उत्पाद', 'پروڈکٹ', '产品', '製品', 'produtos', 'Продукт', 'Produit', '제품', 'Produkt', 'Prodotto', 'ผลิตภัณฑ์', 'Termék', 'Product', 'Productum', 'Produk', 'Ürün', 'Προϊόν', 'تولید - محصول', NULL, 'ઉત્પાદન', 'Produkt', 'Продукт', 'ਉਤਪਾਦ', 'Produs', 'Ọja', 'Samfura'),
(1052, 'product_code', 'Product Code', 'পণ্য কোড', 'Código de producto', 'كود المنتج', 'उत्पाद कोड', 'پروڈکٹ کوڈ', '产品代码', '製品コード', 'Código do produto', 'Код продукта', 'Code produit', '제품 코드', 'Produktcode', 'Codice prodotto', 'รหัสสินค้า', 'Termékkód', 'Productcode', 'Product Code', 'Kode Produk', 'Ürün Kodu', 'Κωδικός προϊόντος', 'کد محصول', 'Kod Produk', 'ઉત્પાદન કોડ', 'Kod produktu', 'Код продукту', 'ਉਤਪਾਦ ਕੋਡ', 'Codul produsului', 'koodu ọja', 'Lambar samfur'),
(1053, 'purchase', 'Purchase', 'ক্রয়', 'Compra', 'في الزراعة', 'कृषि में', 'زراعت میں', '购买', '購入', 'Compra', 'Покупка', 'Acheter', '구입', 'Kaufen', 'Acquistare', 'ซื้อ', 'Vásárlás', 'Aankoop', 'Purchase', 'Pembelian', 'Satın almak', 'αγορά', 'خرید', 'Belian', 'ખરીદી', 'Zakup', 'Придбати', 'ਖਰੀਦੋ', 'Cumpărare', 'Ra', 'Sayi'),
(1054, 'sale', 'Sale', 'বিক্রয়', 'Venta', 'في', 'में', 'میں', '销售', 'セール', 'Oferta', 'распродажа', 'Vente', '판매', 'Verkauf', 'Vendita', 'ขาย', 'Eladás', 'Uitverkoop', 'Sale', 'Penjualan', 'Satış', 'Πώληση', 'فروش', 'Jualan', 'વેચાણ', 'Sprzedaż', 'Продаж', 'ਵਿਕਰੀ', 'Vânzare', 'Tita', 'Sale'),
(1055, 'asset', 'Asset', 'সম্পদ', 'Activo', 'أصل', 'संपत्ति', 'اثاثہ', '资产', '資産', 'De ativos', 'Актив', 'Actif', '유산', 'Anlage', 'Risorsa', 'สินทรัพย์', 'Eszköz', 'Bezit', 'Asset', 'Aset', 'Varlık', 'Περιουσιακό στοιχείο', 'دارایی', 'Aset', 'એસેટ', 'Zaleta', 'Актив', 'ਸੰਪਤੀ', 'Atu', 'dukia', 'Kadari'),
(1056, 'vendor', 'Vendor', 'বিক্রেতা', 'Vendedora', 'بائع', 'विक्रेता', 'فروش', '小贩', 'ベンダー', 'Fornecedor', 'Продавец', 'Vendeuse', '공급 업체', 'Verkäuferin', 'Venditrice', 'ผู้ขาย', 'Eladó', 'Leverancier', 'Vendor', 'Penjaja', 'SATICI', 'Προμηθευτής', 'فروشنده', 'Penjual', 'વિક્રેતા', 'Sprzedawca', 'Постачальник', 'ਵਿਕਰੇਤਾ', 'Furnizor', 'Olutaja', 'Mai sayarwa'),
(1057, 'store', 'Store', 'গুদাম', 'Tienda', 'في المتجر', 'दुकान में', 'اسٹور میں', '店铺', '店', 'Armazenar', 'Магазин', 'Boutique', '가게', 'Geschäft', 'Negozio', 'เก็บ', 'Bolt', 'Winkel', 'copia', 'Toko', 'Mağaza', 'Κατάστημα', 'فروشگاه', 'Kedai', 'દુકાન', 'Sklep', 'Магазин', 'ਸਟੋਰ', 'Magazin', 'Itaja', 'Store'),
(1058, 'item', 'Item', 'আইটেম', 'Artículo', 'غرض', 'मद', 'آئٹم', '物品', 'アイテム', 'Item', 'Элемент', 'Article', '안건', 'Artikel', 'Articolo', 'รายการ', 'Tétel', 'Item', 'Item', 'Barang', 'Kalem', 'Είδος', 'مورد', 'item', 'વસ્તુ', 'Przedmiot', 'Пункт', 'ਆਈਟਮ', 'Articol', 'Nkan', 'Abu');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(1059, 'store_keeper', 'Store Keeper', 'স্টোর কিপার', 'Encargada de la tienda', 'حارس في المتجر', 'स्टोर कीपर', 'اسٹور کیپر', '店员', '店主', 'Guardião de loja', 'Хранитель магазина', 'magasinier', '매장지기', 'Ladenbesitzer', 'Custode del negozio', 'ผู้ดูแลร้าน', 'Store Keeper', 'Winkelier', 'Copia custodis', 'Penjaga Toko', 'Mağaza Sorumlusu', 'Καταστηματάρχης', 'نگهدار فروشگاه', 'Penjaga Stor', 'સ્ટોર કીપર', 'Opiekun sklepu', 'Зберігач', 'ਸਟੋਰ ਕੀਪਰ', 'Depozitarul magazinului', 'Itaja Olutọju', 'Ma\'ajiyar ajiya'),
(1060, 'contact_name', 'Contact Name', 'যোগাযোগের নাম', 'Nombre de contacto', 'اسم جهة الاتصال', 'संपर्क नाम', 'رابطے کا نام', '联系人姓名', '連絡先', 'Nome de contato', 'Контактное лицо', 'Nom du contact', '담당자 이름', 'Kontaktname', 'Nome del contatto', 'ชื่อผู้ติดต่อ', 'Kapcsolattartó neve', 'contactnaam', 'Nomen Contangionis', 'Nama Kontak', 'Kişi Adı', 'όνομα επαφής', 'نام تماس', 'Nama Kenalan', 'સંપર્ક નામ', 'Nazwa Kontaktu', 'Контактна Особа', 'ਸੰਪਰਕ ਨਾਮ', 'nume de contact', 'Orukọ olubasọrọ', 'Sunan Tuntuɓi'),
(1061, 'product_sale', 'Product Sale', 'পণ্য বিক্রয়', 'Venta de productos', 'في المنتج', 'उत्पाद में', 'مصنوعات میں', '产品销售', '商品販売', 'Venda de Produto', 'Продажа продуктов', 'Vente de produits', '제품 판매', 'Produktverkauf', 'Vendita del prodotto', 'ขายสินค้า', 'Termék értékesítés', 'Productverkoop:', 'productum venditionis', 'Penjualan Produk', 'Ürün Satışı', 'Πώληση προϊόντος', 'فروش محصول', 'Jualan Produk', 'ઉત્પાદન વેચાણ', 'Wyprzedaż produktu', 'Продаж продукту', 'ਉਤਪਾਦ ਦੀ ਵਿਕਰੀ', 'Vânzare de produse', 'Ọja Tita', 'Sayar da samfur'),
(1062, 'unit_type', 'Unit Type', 'ইউনিটের ধরন', 'Tipo de unidad', 'نوع الوحدة', 'इकाई प्रकार', 'یونٹ کی قسم', '单位类型', 'ユニット型', 'Tipo de unidade', 'Тип устройства', 'Type d\'unité', '단위 유형', 'Gerätetyp', 'Tipo di unità', 'ประเภทหน่วย', 'Egységtípus', 'Eenheidstype', 'Unitas Type', 'Jenis unit', 'Ürün Satışı', 'Τύπος μονάδας', 'نوع واحد', 'Jenis Unit', 'એકમ પ્રકાર', 'Typ jednostki', 'Тип одиниці', 'ਯੂਨਿਟ ਦੀ ਕਿਸਮ', 'Tip de unitate', 'Unit Iru', 'Nau\'in Naúrar'),
(1063, 'unit_price', 'Unit Price', 'ইউনিটের দাম', 'Precio unitario', 'سعر الوحدة', 'यूनिट मूल्य', 'اکائی قیمت', '单价', '単価', 'Preço unitário', 'Цена за единицу', 'Prix unitaire', '단가', 'Stückpreis', 'Prezzo unitario', 'ราคาต่อหน่วย', 'Egységár', 'Stuksprijs', 'Unitas pretium', 'Jenis unit', 'Birim fiyat', 'Τιμή μονάδας', 'قیمت واحد', 'Harga seunit', 'એકમ કિંમત', 'Cena jednostkowa', 'Ціна за одиницю', 'ਯੂਨਿਟ ਮੁੱਲ', 'Preț unitar', 'Oye eyo kan', 'Farashin naúrar'),
(1064, 'total_price', 'Total Price', 'মোট দাম', 'Precio total', 'السعر الكلي', 'कुल कीमत', 'کل قیمت', '总价', '合計金額', 'Preço total', 'Итоговая цена', 'Prix total', '총 가격', 'Gesamtpreis', 'Prezzo totale', 'ราคารวม', 'Teljes ár', 'Totale prijs', 'Totalis Price', 'Total harga', 'Toplam fiyat', 'Συνολικό ποσό', 'قیمت کل', 'Harga keseluruhan', 'કુલ કિંમત', 'Całkowita cena', 'Загальна сума', 'ਕੁੱਲ ਕੀਮਤ', 'Pretul total', 'Lapapọ Iye', 'Jimlar Farashin'),
(1065, 'purchase_date', 'Purchase Date', 'ক্রয় তারিখ', 'Fecha de compra', 'تاريخ الزراعة', 'खेती की तिथि', 'کاشت کی تاریخ', '购买日期', '購入日', 'data de compra', 'Дата покупки', 'date d\'achat', '구입 날짜', 'Kaufdatum', 'Data di acquisto', 'วันที่ซื้อ', 'Vásárlás időpontja', 'aankoopdatum', 'Purchase Date', 'Tanggal Pembelian', 'Satınalma tarihi', 'Ημερομηνία αγοράς', 'تاریخ خرید', 'Tarikh Pembelian', 'ખરીદ તારીખ', 'Data zakupu', 'Дата покупки', 'ਖਰੀਦ ਦੀ ਮਿਤੀ', 'Data cumpărării', 'Ọjọ rira', 'Ranar Sayi'),
(1066, 'expire_date', 'Expire Date', 'মেয়াদ উত্তীর্ণের তারিখ', 'Fecha de caducidad', 'التاريخ في Xperia', 'एक्सपीरिया में तारीख', 'Xperia میں تاریخ', '到期日期', '有効期限', 'Data de validade', 'Годен до', 'Date d\'expiration', '만료일', 'Ablaufdatum', 'Data di scadenza', 'วันที่หมดอายุ', 'Lejárati dátum', 'Vervaldatum', 'Date exspirare', 'Tanggal kadaluarsa', 'son kullanma tarihi', 'Ημερομηνία λήξης', 'تاریخ انقضا', 'Tarikh luput', 'સમાપ્તિ તારીખ', 'Data ważności', 'Дата закінчення терміну', 'ਤਾਰੀਖ ਦੀ ਮਿਆਦ ਖਤਮ', 'Data de expirare', 'Ọjọ Ipari', 'Ranar ƙarewa'),
(1067, 'purchase_by', 'Purchase By', 'যার দ্বারা কেনা হয়েছে', 'Comprar por', 'ب في المشتريات', 'खरीद में बी', 'B Purchashe میں', '购买者', '購入者', 'Compra por', 'Покупка', 'Acheter par', '구매처', 'Kauf von', 'Acquista da', 'ซื้อโดย', 'Vásárlás:', 'Aankoop door', 'Purchase By', 'Beli Oleh', 'Satın Alma Tarihi', 'Αγορά από', 'خرید توسط', 'Pembelian Oleh', 'દ્વારા ખરીદી', 'Kup przez', 'Придбати', 'ਦੁਆਰਾ ਖਰੀਦੋ', 'Cumpărați până la', 'Ra Nipasẹ', 'Siya Ta'),
(1068, 'sale_to_user', 'Sale to User', 'যার কাছে বিক্রয়', 'Venta a la usuaria', 'في المستخدم', 'उपयोगकर्ता में', 'صارف میں', '銷售給用戶', 'ユーザーへの販売', 'Venda para o usuário', 'Продажа пользователю', 'Vente à l\'utilisateur', '사용자에게 판매', 'Verkauf an Benutzer', 'Vendita all\'utente', 'ขายให้กับผู้ใช้', 'Eladás Felhasználónak', 'Verkoop aan gebruiker', 'Venditionis ad User', 'Dijual ke Pengguna', 'Kullanıcıya Satış', 'Πώληση στον χρήστη', 'فروش به کاربر', 'Jualan kepada Pengguna', 'વપરાશકર્તાને વેચાણ', 'Sprzedaż do użytkownika', 'Продаж Користувачеві', 'ਉਪਭੋਗਤਾ ਨੂੰ ਵਿਕਰੀ', 'Vânzare către utilizator', 'Tita si olumulo', 'Sayarwa ga Mai amfani'),
(1069, 'issue_to_user', 'Issue to User', 'যাকে দেওয়া হয়েছে', 'Problema para la usuaria', 'القضية هي المستخدم', 'मुद्दा उपयोगकर्ता है', 'مسئلہ صارف کا ہے۔', '发给用户', 'ユーザーへの発行', 'Problema para o usuário', 'Проблема для пользователя', 'Délivrance à l\'utilisateur', '사용자에 대한 문제', 'Problem für Benutzer', 'Problema all\'utente', 'ปัญหากับผู้ใช้', 'Probléma a felhasználónak', 'Afgifte aan gebruiker', 'Exitus ad User', 'Masalah untuk Pengguna', 'Kullanıcıya Sorun', 'Θέμα για χρήστη', 'مشکل برای کاربر', 'Isu kepada Pengguna', 'વપરાશકર્તાને સમસ્યા', 'Problem do użytkownika', 'Видача для користувача', 'ਉਪਭੋਗਤਾ ਲਈ ਮੁੱਦਾ', 'Problemă pentru utilizator', 'Oro si olumulo', 'Batu ga Mai amfani'),
(1070, 'grand_total', 'Grand Total', 'সর্বমোট', 'Gran total', 'المبلغ الإجمالي', 'कुल योग', 'مجموعی عدد', '累计', '総計', 'Total geral', 'Общая сумма', 'Total', '총계', 'Gesamtsumme', 'Somma totale', 'รวมทั้งหมด', 'Teljes összeg', 'Eindtotaal', 'Summa', 'Total keseluruhan', 'Genel Toplam', 'Σύνολο', 'کل بزرگ', 'Jumlah keseluruhan', 'ગ્રાન્ડ ટોટલ', 'Łączna suma', 'Загальна сума', 'ਸਮੁੱਚੀ ਗਿਣਤੀ', 'Total general', 'Apapọ gbogboogbo', 'Grand Total'),
(1071, 'sale_information', 'Sale Information', 'বিক্রয় তথ্য', 'Información de venta', 'المعلومات في', 'जानकारी', 'میں معلومات', '销售信息', '販売情報', 'Informação de venda', 'Информация о продаже', 'Informations sur la vente', '판매 정보', 'Informationen zum Verkauf', 'Informazioni sulla vendita', 'ข้อมูลการขาย', 'Eladási információk', 'Verkoopinformatie:', 'Venditionis Information', 'Informasi Penjualan', 'Satış Bilgileri', 'Πληροφορίες Πώλησης', 'اطلاعات فروش', 'Maklumat Jualan', 'વેચાણ માહિતી', 'Informacje o sprzedaży', 'Інформація про продаж', 'ਵਿਕਰੀ ਜਾਣਕਾਰੀ', 'Informații despre vânzare', 'Tita Alaye', 'Bayanin Siyarwa'),
(1072, 'item_information', 'Item Information', 'আইটেম তথ্য', 'Información del artículo', 'معلومات البند', 'वस्तु की जानकारी', 'آئٹم کی معلومات', '物品信息', 'アイテム情報', 'Informações sobre o item', 'Информация о товаре', 'Informations sur l\'élément', '아이템 정보', 'Gegenstand Information', 'Informazioni sull\'articolo', 'ข้อมูลรายการ', 'Tétel információ', 'artikel informatie', 'Item Information', 'informasi barang', 'Ürün Bilgileri', 'Πληροφορίες αντικειμένου', 'اطلاعات مورد', 'Maklumat Item', 'આઇટમની માહિતી', 'Informacja dotycząca przedmiotu', 'Інформація про елемент', 'ਆਈਟਮ ਦੀ ਜਾਣਕਾਰੀ', 'Informații despre articol', 'Alaye Nkan', 'Bayanin Abu'),
(1073, 'manage_warehouse', 'Manage Warehouse', 'গুদাম পরিচালনা করুন', 'Gestionar almacén', 'إدارة المستودع', 'गोदाम प्रबंधित करें', 'گودام کا انتظام کریں۔', '管理仓库', '倉庫の管理', 'Gerenciar Armazém', 'Управление складом', 'Gérer l\'entrepôt', '창고 관리', 'Lager verwalten', 'Gestisci magazzinoGestisci magazzino', 'บริหารจัดการคลังสินค้า', 'Raktár kezelése', 'Magazijn beheren', 'Curo CELLA', 'Kelola Gudang', 'Depoyu Yönet', 'Διαχείριση αποθήκης', 'مدیریت انبار', 'Urus Gudang', 'વેરહાઉસ મેનેજ કરો', 'Zarządzaj magazynem', 'Керувати складом', 'ਵੇਅਰਹਾਊਸ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează Depozitul', 'Ṣakoso awọn Warehouse', 'Sarrafa Warehouse'),
(1074, 'warehouse_keeper', 'Warehouse Keeper', 'গুদাম রক্ষক', 'Guardiana de almacén', 'حارس مستودع', 'मालगोदाम का रखवाला', 'گودام کی دیکھ بھال کرنیوالا', '仓库管理员', '倉庫保管人', 'Warehouse Keeper', 'Сторож на складе', 'Entrepôt', '창고지기', 'Lagerhalter', 'Magazziniere', 'คนดูแลโกดัง', 'Raktáros', 'Magazijnbewaarder', 'CELLA custodis', 'Penjaga Gudang', 'Depo bekçisi', 'Αποθηκάριος', 'انباردار', 'Penjaga Gudang', 'વેરહાઉસ કીપર', 'Dozorca magazynu', 'Доглядач складу', 'ਵੇਅਰਹਾਊਸ ਕੀਪਰ', 'Paznicul depozitului', 'Warehouse Olutọju', 'Ma\'ajiyar Warehouse'),
(1075, 'manage_category', 'Manage Category', 'বিভাগ পরিচালনা করুন', 'Administrar categoría', 'إدارة الفئة', 'श्रेणी प्रबंधित करें', 'زمرہ کا نظم کریں۔', '管理类别', 'カテゴリの管理', 'Gerenciar categoria', 'Управление категорией', 'Gérer la catégorie', '카테고리 관리', 'Kategorie verwalten', 'Gestisci categoria', 'จัดการหมวดหมู่', 'Kategória kezelése', 'Categorie beheren', 'Curo Categoria', 'Kelola Kategori', 'Kategoriyi Yönet', 'Διαχείριση Κατηγορίας', 'مدیریت دسته', 'Uruskan Kategori', 'શ્રેણી મેનેજ કરો', 'Zarządzaj kategorią', 'Керувати категорією', 'ਸ਼੍ਰੇਣੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați categoria', 'Ṣakoso Ẹka', 'Sarrafa Rukuni'),
(1076, 'manage_product', 'Manage Product', 'পণ্য পরিচালনা করুন', 'Gestionar producto', 'إدارة المنتج', 'उत्पाद प्रबंधित करें', 'پروڈکٹ کا نظم کریں۔', '管理产品', '製品の管理', 'Gerenciar Produto', 'Управление продуктом', 'Gérer le produit', '제품 관리', 'Produkt verwalten', 'Gestisci prodotto', 'จัดการสินค้า', 'Termék kezelése', 'Product beheren', 'Curo Product', 'Kelola Produk', 'Ürünü Yönet', 'Διαχείριση Προϊόντος', 'مدیریت محصول', 'Uruskan Produk', 'ઉત્પાદન મેનેજ કરો', 'Zarządzaj produktem', 'Керуйте продуктом', 'ਉਤਪਾਦ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați produsul', 'Ṣakoso awọn ọja', 'Sarrafa Samfura'),
(1077, 'manage_purchase', 'Manage Purchase', 'ক্রয় পরিচালনা করুন', 'Gestionar compra', 'إدارة الشراء', 'खरीद प्रबंधित करें', 'خریداری کا انتظام کریں۔', '管理采购', '購入の管理', 'Gerenciar compra', 'Управление покупкой', 'Gérer l\'achat', '구매 관리', 'Kauf verwalten', 'Gestisci l\'acquisto', 'จัดการการซื้อ', 'Vásárlás kezelése', 'Aankoop beheren', 'Curo Purchase', 'Kelola Pembelian', 'Satın Alma Yönetimi', 'Διαχείριση αγοράς', 'مدیریت خرید', 'Uruskan Pembelian', 'ખરીદીનું સંચાલન કરો', 'Zarządzaj zakupem', 'Керувати покупкою', 'ਖਰੀਦਦਾਰੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați achiziția', 'Ṣakoso awọn rira', 'Sarrafa Sayi'),
(1078, 'manage_sale', 'Manage Sale', 'বিক্রয় পরিচালনা করুন', 'Gestionar venta', 'في الإدارة', 'प्रबंधन में', 'انتظام میں', '管理销售', '販売を管理する', 'Gerenciar venda', 'Управление продажами', 'Gérer la vente', '판매 관리', 'Verkauf verwalten', 'Gestisci la vendita', 'จัดการการขาย', 'Eladás kezelése', 'Verkoop beheren', 'Curo Sale', 'Kelola Penjualan', 'Satışı Yönet', 'Διαχείριση Πώλησης', 'مدیریت فروش', 'Urus Jualan', 'વેચાણનું સંચાલન કરો', 'Zarządzaj sprzedażą', 'Керуйте продажем', 'ਵਿਕਰੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați vânzarea', 'Ṣakoso Tita', 'Sarrafa Sale'),
(1079, 'asset_management', 'Asset Management', 'সম্পদ ব্যবস্থাপনা', 'Gestión de activos', 'إدارة الأصول', 'परिसंपत्ति प्रबंधन', 'اثاثہ جات کا انتظام', '资产管理', '資産運用管理', 'Gestão de ativos', 'Управление активами', 'La gestion d\'actifs', '자산 관리', 'Vermögensverwaltung', 'Gestione delle risorse', 'การจัดการสินทรัพย์', 'Vagyonkezelés', 'Vermogensbeheer', 'Asset Management', 'Manajemen aset', 'Varlık Yönetimi', 'Διαχείριση περιουσιακών στοιχείων', 'مدیریت دارایی', 'Pengurusan aset', 'સંપતિ સંચાલન', 'Zarządzanie aktywami', 'Управління активами', 'ਪਰਿਸੰਪੱਤੀ ਪਰਬੰਧਨ', 'Gestionarea activelor', 'Iṣakoso dukia', 'Gudanar da Kadari'),
(1080, 'manage_item', 'Manage Item', 'আইটেম পরিচালনা করুন', 'Gestionar artículo', 'إدارة العناصر', 'आइटम प्रबंधित करें', 'آئٹمز کا نظم کریں۔', '管理项目', 'アイテムの管理', 'Gerenciar item', 'Управление предметом', 'Gérer l\'article', '아이템 관리', 'Artikel verwalten', 'Gestisci elemento', 'จัดการรายการ', 'Elem kezelése', 'Item beheren', 'Curo Item', 'Kelola Barang', 'Öğeyi Yönet', 'Διαχείριση αντικειμένου', 'مدیریت آیتم', 'Urus Item', 'આઇટમ મેનેજ કરો', 'Zarządzaj przedmiotem', 'Керувати елементом', 'ਆਈਟਮ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați elementul', 'Ṣakoso Nkan', 'Sarrafa Abun'),
(1081, 'manage_store', 'Manage Store', 'স্টোর পরিচালনা করুন', 'Administrar tienda', 'إدارة المتجر', 'स्टोर प्रबंधित करें', 'اسٹور کا انتظام کریں۔', '管理店铺', 'ストアの管理', 'Gerenciar loja', 'Управление магазином', 'Gérer le magasin', '매장 관리', 'Shop verwalten', 'Gestisci negozio', 'จัดการร้านค้า', 'Üzlet kezelése', 'Winkel beheren', 'Curo Store', 'Kelola Toko', 'Mağazayı Yönet', 'Διαχείριση καταστήματος', 'مدیریت فروشگاه', 'Urus Kedai', 'સ્ટોર મેનેજ કરો', 'Zarządzaj Sklepem', 'Керувати магазином', 'ਸਟੋਰ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează magazinul', 'Ṣakoso awọn itaja', 'Sarrafa Store'),
(1082, 'manage_vendor', 'Manage Vendor', 'বিক্রেতা পরিচালনা করুন', 'Administrar proveedor', 'إدارة البائع', 'विक्रेता को प्रबंधित करें', 'وینڈر کا نظم کریں۔', '管理供应商', 'ベンダーの管理', 'Gerenciar Fornecedor', 'Управление поставщиком', 'Gérer le fournisseur', '공급업체 관리', 'Anbieter verwalten', 'Gestisci fornitore', 'จัดการผู้ขาย', 'Szállító kezelése', 'Leverancier beheren', 'Curo Vendor', 'Kelola Vendor', 'Satıcıyı Yönet', 'Διαχείριση Πωλητή', 'فروشنده را مدیریت کنید', 'Urus Vendor', 'વેન્ડર મેનેજ કરો', 'Zarządzaj dostawcą', 'Керуйте постачальником', 'ਵਿਕਰੇਤਾ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați furnizorul', 'Ṣakoso awọn ataja', 'Sarrafa Mai siyarwa'),
(1083, 'scholarship', 'Scholarship', 'বৃত্তি', 'Beca', 'منحة دراسية', 'छात्रवृत्ति', 'وظیفہ', '奖学金', '奨学金', 'Bolsa de estudo', 'Стипендия', 'Bourse d\'études', '장학금', 'Stipendium', 'Borsa di studio', 'ทุนการศึกษา', 'Ösztöndíj', 'Studiebeurs', 'Scholarship', 'Beasiswa', 'Burs', 'Υποτροφία', 'بورس تحصیلی', 'biasiswa', 'શિષ્યવૃત્તિ', 'Stypendium', 'Стипендія', 'ਸਕਾਲਰਸ਼ਿਪ', 'Bursa de studiu', 'Sikolashipu', 'Scholarship'),
(620, 'industry_type', 'Industry Type', 'ইন্ডাস্ট্রি টাইপ', 'Tipo de industria', 'نوع الصناعة', 'उद्योग के प्रकार', 'صنعت کی قسم', '行业类型', '業種別', 'tipo industrial', 'Тип промышленности', 'type d\'industrie', '업종', 'Branchentyp', 'Tipo d\'industria', 'ประเภทอุตสาหกรรม', 'Ipari típus', 'industrie type', 'Type Industry', 'Jenis Industri', 'Endüstri Tipi', 'Τύπος βιομηχανίας', 'نوع صنعت', 'Jenis Industri', 'ઉદ્યોગ પ્રકાર', 'typ przemysłu', 'Тип промисловості', 'ਉਦਯੋਗ ਕਿਸਮ', 'tipul industriei', 'Iru iṣẹ Iru', 'Masana\'antu'),
(621, 'char_set', 'Char Set', 'ক্যারেক্টার  সেট', 'Conjunto de char', 'مجموعة تشار', 'चार सेट', 'چار سیٹ۔', '字符集', 'チャーセット', 'Conjunto de caracteres', 'Набор символов', 'Jeu de caractères', '문자 세트', 'Char Set', 'Set di caratteri', 'ชุดถ่าน', 'Char szett', 'Char Set', 'Set char', 'Char Set', 'Char Seti', 'Char Set', 'مجموعه های برجسته', 'Set Caj', 'ચાર સેટ', 'Char Set', 'Набір Чар', 'ਚਾਰ ਸੈੱਟ', 'Char Set', 'Ṣeto Ṣeto', 'Char Saiti'),
(623, 'complain', 'Complain', 'অভিযোগ', 'Quejar', 'تذمر', 'शिकायत', 'شکایت کریں۔', '抱怨', '文句を言う', 'Reclamar', 'Пожаловаться', 'Se plaindre', '불평', 'Beschweren', 'Lamentarsi', 'บ่น', 'Panaszkodik', 'Klagen', 'queri', 'Mengeluh', 'Şikayet', 'κανω παραπονα', 'شكايت كردن', 'Mengadu', 'ફરિયાદ કરો', 'Skarżyć się', 'Поскаржитися', 'ਸ਼ਿਕਾਇਤ', 'plânge', 'Ẹdun ọkan', 'Gunaguni'),
(624, 'material', 'Material', 'উপাদান', 'Material', 'مواد', 'सामग्री', 'مٹیریل۔', '材料', '素材', 'Material', 'материал', 'Matériel', '자료', 'Material', 'Materiale', 'วัสดุ', 'Anyag', 'Materiaal', 'material', 'Bahan', 'Malzeme', 'Υλικό', 'مواد', 'Bahan', 'સામગ્રી', 'Materiał', 'Матеріал', 'ਪਦਾਰਥ', 'Material', 'Ohun elo', 'Kayan aiki'),
(625, 'e_book', 'E-Book', 'ই-বুক', 'Libro electronico', 'الكتاب الاليكتروني', 'ई-बुक', 'ای بک۔', '电子书', '電子書籍', 'E-Book', 'Электронная книга', 'Livre électronique', '전자 책', 'E-Book', 'E-Book', 'E-Book', 'E-Book', 'E-Book', 'E-', 'E-Book', 'E-Kitap', 'Ηλεκτρονικό βιβλίο', 'کتاب الکترونیکی', 'E-Book', 'ઇ-બુક', 'E-Book', 'Електронна книга', 'ਈ-ਬੁੱਕ', 'E-Book', 'Iwe-iwe', 'Littattafai E-Book'),
(626, 'read', 'Read', 'পড়া', 'Leer', 'اقرأ', 'पढ़ना', 'پڑھیں', '读', '読む', 'Ler', 'Читать', 'Lis', '독서', 'Lesen', 'Leggere', 'อ่าน', 'Olvas', 'Lezen', 'Legere', 'Baca baca', 'okumak', 'Ανάγνωση', 'خواندن', 'Baca', 'વાંચવું', 'Czytać', 'Прочитайте', 'ਪੜ੍ਹੋ', 'Citit', 'Ka', 'Karanta'),
(627, 'apply_successful', 'Online application successfully submitted', 'অনলাইন আবেদন সফলভাবে জমা দেওয়া হয়েছে', 'Solicitud en línea enviada con éxito', 'تم تقديم الطلب عبر الإنترنت بنجاح', 'ऑनलाइन आवेदन सफलतापूर्वक सबमिट किया गया', 'آن لائن درخواست کامیابی کے ساتھ جمع کرائی گئی۔', '在线申请成功提交', 'オンライン申請が正常に送信されました', 'Inscrição online enviada com sucesso', 'Онлайн заявка успешно отправлена', 'Demande en ligne soumise avec succès', '온라인 신청서가 성공적으로 제출되었습니다', 'Online-Bewerbung erfolgreich eingereicht', 'Domanda online inviata correttamente', 'ส่งใบสมัครออนไลน์สำเร็จแล้ว', 'Az online jelentkezés sikeresen benyújtva', 'Online aanvraag succesvol ingediend', 'Summitto bene online application', 'Aplikasi online berhasil dikirim', 'Online başvuru başarıyla gönderildi', 'Η ηλεκτρονική αίτηση υποβλήθηκε με επιτυχία', 'برنامه آنلاین با موفقیت ارسال شد', 'Permohonan dalam talian berjaya dihantar', 'Applicationનલાઇન એપ્લિકેશન સફળતાપૂર્વક સબમિટ કરી', 'Aplikacja online została pomyślnie przesłana', 'Онлайн-заявка успішно подана', 'Applicationਨਲਾਈਨ ਅਰਜ਼ੀ ਸਫਲਤਾਪੂਰਵਕ ਦਰਜ ਕੀਤੀ ਗਈ', 'Cererea online a fost trimisă cu succes', 'Ohun elo ori ayelujara ni ifijišẹ silẹ', 'An yi nasarar gabatar da aikace-aikacen kan layi cikin nasara'),
(628, 'apply_failed', 'Online application submitted failed. Please try again.', 'জমা দেওয়া অনলাইন আবেদন ব্যর্থ। অনুগ্রহপূর্বক আবার চেষ্টা করুন.', 'Solicitud en línea enviada fallida. Inténtalo de nuevo.', 'فشل تقديم الطلب عبر الإنترنت. حاول مرة اخرى.', 'ऑनलाइन आवेदन विफल रहा। कृपया पुन: प्रयास करें।', 'آن لائن درخواست جمع کروائی گئی۔ دوبارہ کوشش کریں.', '在线申请提交失败。 请再试一次。', 'オンライン申請が失敗しました。 もう一度試してください。', 'A inscrição online enviada falhou. Por favor, tente novamente.', 'Онлайн-заявка подана не удалось. Пожалуйста, попробуйте еще раз.', 'L\'application en ligne soumise a échoué. Veuillez réessayer.', '온라인 신청이 실패했습니다. 다시 시도하십시오.', 'Online-Bewerbung fehlgeschlagen. Bitte versuche es erneut.', 'Domanda online inviata non riuscita. Per favore riprova.', 'ส่งใบสมัครออนไลน์ล้มเหลว กรุณาลองอีกครั้ง.', 'A benyújtott online pályázat sikertelen. Kérlek próbáld újra.', 'Online aanvraag ingediend is mislukt. Probeer het opnieuw.', 'Online application submitted defecit. Quaero, iterum conare.', 'Aplikasi online yang diajukan gagal. Silakan coba lagi.', 'Gönderilen çevrimiçi başvuru başarısız oldu. Lütfen tekrar deneyin.', 'Η υποβολή ηλεκτρονικής αίτησης απέτυχε. ΠΑΡΑΚΑΛΩ προσπαθησε ξανα.', 'درخواست آنلاین ارسال نشد. لطفا دوباره تلاش کنید.', 'Permohonan dalam talian yang dikemukakan gagal. Sila cuba lagi.', 'સબમિટ થયેલ applicationનલાઇન અરજી નિષ્ફળ. મહેરબાની કરીને ફરીથી પ્રયતન કરો.', 'Złożenie wniosku online nie powiodło się. Proszę spróbuj ponownie.', 'Не вдалося подати онлайн-заявку. Будь ласка спробуйте ще раз.', 'ਜਮ੍ਹਾਂ ਹੋਈ applicationਨਲਾਈਨ ਅਰਜ਼ੀ ਅਸਫਲ ਰਹੀ. ਮੁੜ ਕੋਸ਼ਿਸ ਕਰੋ ਜੀ.', 'Cererea online trimisă nu a reușit. Vă rugăm să încercați din nou.', 'Ohun elo ori ayelujara silẹ ti kuna. Jọwọ gbiyanju lẹẹkansi.', 'Aikace-aikcen kan layi akan kasa sun kasa. Da fatan za a sake gwadawa.'),
(629, 'approve', 'Approve', 'অনুমোদন', 'Aprobar', 'يوافق', 'मंजूर', 'منظور کریں۔', '批准', '承認する', 'Aprovar', 'Утвердить', 'Approuver', '승인', 'Genehmigen', 'Approvare', 'อนุมัติ', 'Jóváhagy', 'Goedkeuren', 'probant', 'Menyetujui', 'onaylamak', 'Εγκρίνω', 'تایید', 'Terima', 'મંજૂર', 'Zatwierdzać', 'Затвердити', 'ਮਨਜ਼ੂਰ', 'Aproba', 'Fi ọwọ si', 'Amincewa'),
(630, 'approved', 'Approved', 'অনুমোদিত', 'Aprobada', 'وافق', 'मंजूर की', 'منظورشدہ', '批准', '承認済み', 'Aprovada', 'Одобренный', 'Approuvée', '승인', 'Genehmigt', 'Approvato', 'ได้รับการอนุมัติ', 'Jóváhagyott', 'aangenomen', 'probatus', 'Disetujui', 'onaylı', 'Εγκρίθηκε', 'تایید شده', 'Diluluskan', 'મંજુર', 'Zatwierdzony', 'Затверджено', 'ਮਨਜ਼ੂਰ', 'Aprobat', 'Ti a fọwọsi', 'An yarda'),
(631, 'decline', 'Decline', 'প্রত্যাখ্যান', 'Disminución', 'انخفاض', 'पतन', 'رد', '下降', '却下', 'Declínio', 'снижение', 'Déclin', '쇠퇴', 'Ablehnen', 'Declino', 'ปฏิเสธ', 'Hanyatlás', 'Afwijzen', 'declines', 'Menurun', 'düşüş', 'Πτώση', 'کاهش می یابد', 'Tolak', 'ઘટી', 'Upadek', 'Спад', 'ਅਸਵੀਕਾਰ', 'Declin', 'Kọ', 'Ragewa'),
(632, 'declined', 'Declined', 'প্রত্যাখান', 'Rechazado', 'رفض', 'इंकार कर दिया', 'رد۔', '下降', '不承認', 'Recusada', 'Отклонено', 'Diminuée', '거부', 'Abgelehnt', 'rifiutato', 'ปรับตัวลดลง', 'Elutasította', 'Afgewezen', 'declinavi ex ea', 'Ditolak', 'Reddedilen', 'Απορρίφθηκε', 'نپذیرفتن', 'Ditolak', 'નકારવું', 'Odrzucony', 'Відхилено', 'ਅਸਵੀਕਾਰ ਕਰ ਦਿੱਤਾ', 'Refuzat', 'Kikọ', 'Ya ki'),
(633, 'favicon_icon', 'Favicon Icon', 'ফ্যাভিকন আইকন', 'Icono de favicon', 'أيقونة فافيكون', 'फ़ेविकॉन आइकन', 'فیویکون آئیکن', 'Favicon图标', 'ファビコンアイコン', 'Favicon Ícone', 'Фавикон Иконка', 'Icône Favicon', 'Favicon 아이콘', 'Favicon Icon', 'Icona Favicon', 'ไอคอน Favicon', 'Favicon ikonra', 'Favicon-pictogram', 'Icon favicon', 'Ikon Favicon', 'Favicon Simgesi', 'Εικονίδιο Favicon', 'نماد Favicon', 'Ikon Favicon', 'ફેવિકોન ચિહ્ન', 'Ikona Favicon', 'Ікона Фавікона', 'ਫੇਵੀਕਨ ਆਈਕਨ', 'Pictograma Favicon', 'Favicon Aami', 'Favicon Icon'),
(634, 'reason', 'Reason', 'কারণ', 'Razón', 'السبب', 'कारण', 'وجہ۔', '原因', '理由', 'Razão', 'причина', 'Raison', '이유', 'Grund', 'Ragionare', 'เหตุผล', 'Ok', 'Reden', 'ratio', 'Alasan', 'neden', 'Λόγος', 'دلیل', 'Sebab', 'કારણ', 'Powód', 'Причина', 'ਕਾਰਨ', 'Motiv', 'Idi', 'Dalili'),
(635, 'applicant', 'Applicant', 'আবেদক', 'Solicitante', 'طالب وظيفة', 'आवेदक', 'درخواست دہندہ۔', '申请人', '応募者', 'Candidato', 'заявитель', 'Demandeur', '응모자', 'Antragsteller', 'Richiedente', 'ผู้ขอ', 'Pályázó', 'aanvrager', 'applicant', 'Pemohon', 'Başvuru sahibi', 'Αιτών', 'درخواست کننده', 'Pemohon', 'અરજદાર', 'Petent', 'Заявник', 'ਬਿਨੈਕਾਰ', 'Solicitant', 'Ibẹwẹ', 'Mai nema'),
(636, 'to_date_must_be_big', 'To date must be greater than From date', 'টু  ডেট  অবশ্যই  ফ্রম  ডেট  থেকে বড় হতে হবে', 'Hasta la fecha debe ser mayor que Desde la fecha', 'يجب أن يكون التاريخ أكبر من تاريخ', 'आज तक की तारीख से अधिक होना चाहिए', 'آج تک تاریخ سے زیادہ ہونا چاہئے۔', '迄今为止必须大于From日期', '終了日は開始日よりも大きくする必要があります', 'Até a data deve ser maior que a partir da data', 'На сегодняшний день должно быть больше, чем с даты', 'À ce jour doit être supérieur à la date de début', '종료 날짜는 시작 날짜보다 커야합니다', 'Bis Datum muss größer als Von Datum sein', 'Ad oggi deve essere maggiore di Da data', 'ถึงวันที่จะต้องมากกว่าวันที่', 'A dátumnak nagyobbnak kell lennie, mint a dátumtól', 'Tot datum moet groter zijn dan vanaf datum', 'Ad date debet esse a major diem', 'Tanggal harus lebih besar dari Tanggal', 'Tarih, Kimden tarihinden büyük olmalı', 'Μέχρι σήμερα πρέπει να είναι μεγαλύτερη από Από την ημερομηνία', 'تا به امروز باید بیشتر از تاریخ باشد', 'Sehingga kini mesti lebih besar dari tarikh Dari', 'આજની તારીખ તારીખથી મોટી હોવી જોઈએ', 'Do tej pory musi być większa niż od daty', 'На сьогоднішній день має бути більше, ніж з дати', 'ਤਾਰੀਖ ਤੋਂ ਤਾਰੀਖ ਤੋਂ ਵੱਡਾ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ', 'Până în prezent trebuie să fie mai mare decât De la dată', 'Lati ọjọ gbọdọ tobi ju Lati ọjọ lọ', 'Zuwa yau dole ne ya fi Na zamani'),
(638, 'front_office', 'Front Office', 'ফ্রন্ট অফিস', 'Oficina frontal', 'مكتب الإستقبال', 'फ्रंट कार्यालय', 'سامنے والا دفتر', '前厅', 'フロントオフィス', 'Front Office', 'Фронт-офис', 'Front Office', '프론트 오피스', 'Vorderbüro', 'Sportello', 'หน้าสำนักงาน', 'Front Office', 'Front Office', 'Fronte officium', 'Kantor depan', 'Ön ofis', 'Μπροστινό γραφείο', 'دفتر جلو', 'Pejabat Depan', 'આગળ ની ઓફિસ', 'Front Office', 'Фронт-офіс', 'ਸਾਹਮਣੇ ਦੇ ਦਫ਼ਤਰ', 'Front office', 'Iwaju Iwaju', 'Ofishin gaba'),
(639, 'call_log', 'Call Log', 'কল লগ', 'Registro de llamadas', 'سجل المكالمات', 'कॉल लॉग', 'کال کی فہرست', '通话记录', '通話記録', 'Registro de chamadas', 'Журнал вызовов', 'Journal d\'appel', '통화 기록', 'Anrufliste', 'Registro chiamate', 'บันทึกการโทร', 'Hívásnapló', 'Oproeplogboek', 'Log voca', 'Laporan panggilan', 'Çağrı geçmişi', 'Μητρώο κλήσεων', 'تماس تلفنی', 'Log panggilan', 'લ Callગ ક Callલ કરો', 'Rejestr połączeń', 'Журнал викликів', 'ਕਾਲ ਲੌਗ', 'Jurnal de Apel', 'Wọle Wọle', 'Kiran Kira'),
(640, 'incoming', 'Incoming', 'ইনকামিং', 'Entrante', 'الوارد', 'आने वाली', 'آنے والی۔', '来', '着信', 'Entrada', 'вступающий', 'Entrante', '들어오는', 'Eingehend', 'in arrivo', 'ขาเข้า', 'Beérkező', 'inkomend', 'ineuntes', 'Masuk', 'Gelen', 'Εισερχόμενος', 'ورودی', 'Masuk', 'ઇનકમિંગ', 'Przychodzące', 'Вхідний', 'ਆਉਣ ਵਾਲੀ', 'care sosește', 'Ti nwọle', 'Mai shigowa'),
(641, 'outgoing', 'Outgoing', 'আউটগোয়িং', 'Saliente', 'المنتهية', 'निवर्तमान', 'سبکدوش ہونے والے', '传出', '発信', 'Extrovertida', 'исходящий', 'Sortante', '나가는', 'Ausgehend', 'Estroversa', 'ขาออก', 'Kimenő', 'uitgaande', 'exitus', 'Keluar', 'Dışına dönük', 'Εξερχόμενος', 'برونگرا', 'Keluar', 'આઉટગોઇંગ', 'Towarzyski', 'Вихідні', 'ਆgoingਟਗੋਇੰਗ', 'De ieșire', 'Ti njade', 'Mai fita'),
(642, 'call_type', 'Call Type', 'কল টাইপ', 'Tipo de llamada', 'نوع الاتصال', 'कॉल प्रकार', 'کال کی قسم', '通话类型', '通話タイプ', 'Tipo de chamada', 'Тип звонка', 'Type d\'appel', '통화 유형', 'Anrufart', 'Tipo di chiamata', 'ประเภทการโทร', 'Hívás típusa', 'Oproeptype', 'vocationem Type', 'Jenis Panggilan', 'Çağrı tipi', 'Τύπος κλήσης', 'نوع تماس', 'Jenis Panggilan', 'ક Callલનો પ્રકાર', 'Rodzaj połączenia', 'Тип дзвінка', 'ਕਾਲ ਦੀ ਕਿਸਮ', 'Tip apel', 'Iru Ipe', 'Nau\'in Kira'),
(643, 'call_duration', 'Call Duration', 'কল সময়কাল', 'Duración de la llamada', 'مدة المكالمة', 'कॉल की अवधि', 'کال کا دورانیہ', '通话时长', '通話時間', 'Duraçao da chamada', 'Длительность звонка', 'Durée d\'appel', '통화 시간', 'Gesprächsdauer', 'Durata della chiamata', 'ระยะเวลาการโทร', 'Hívás időtartam', 'Gespreksduur', 'Duration vocatio', 'Durasi panggilan', 'Çağrı süresi', 'Διάρκεια κλήσης', 'مدت زمان تماس', 'Tempoh Panggilan', 'ક Callલ અવધિ', 'Długość rozmowy', 'Тривалість дзвінка', 'ਕਾਲ ਅੰਤਰਾਲ', 'Durata apelului', 'Akoko Ipe', 'Lokacin Kira'),
(644, 'follow_up', 'Follow Up', 'অনুসরণ', 'Seguir', 'متابعة', 'जाँच करना', 'فالو اپ', '跟进', 'ファローアップ', 'Acompanhamento', 'Следовать за', 'Suivre', '후속 조치', 'Nachverfolgen', 'Azione supplementare', 'ติดตาม', 'Követés', 'Opvolgen', 'INSEQUOR', 'Mengikuti', 'Takip et', 'Ακολουθω', 'پیگیری', 'Mengikuti', 'અનુસરો', 'Zagryźć', 'Слідувати', 'Ran leti', 'Urmare', 'Ran leti', 'Biyo Gaba'),
(645, 'call_date', 'Call Date', 'কল ডেট', 'Fecha de llamada', 'تاريخ الاتصال', 'कॉल की तारीख', 'کال کی تاریخ۔', '通话日期', '呼び出し日', 'Data da chamada', 'Дата звонка', 'Date d\'appel', '전화 날짜', 'Anrufdatum', 'Data della chiamata', 'วันที่โทร', 'Hívás dátuma', 'Oproepdatum', 'vocationem Date', 'Tanggal Panggilan', 'Çağrı tarihi', 'Ημερομηνία κλήσης', 'تاریخ تماس', 'Tarikh Panggilan', 'ક Callલ તારીખ', 'Data połączenia', 'Дата виклику', 'ਕਾਲ ਦੀ ਮਿਤੀ', 'Data apelului', 'Ọjọ', 'Ranar Kira'),
(646, 'waiting', 'Waiting', 'প্রতীক্ষা', 'Esperando', 'انتظار', 'इंतज़ार कर रही', 'انتظار کر رہا ہے۔', '等候', '待っています', 'Esperando', 'ждущий', 'Attendre', '기다리는', 'Warten', 'Inattesa', 'ที่รอคอย', 'Várakozás', 'Aan het wachten', 'exspecto', 'Menunggu', 'bekleme', 'Αναμονή', 'در انتظار', 'Menunggu', 'રાહ જોવી', 'Czekanie', 'Очікування', 'ਉਡੀਕ ਕਰ ਰਿਹਾ ਹੈ', 'Aşteptare', 'Nduro', 'Jiran'),
(647, 'pay_stack', 'Pay Stack', 'পে স্ট্যাক', 'Pila de pago', 'دفع المكدس', 'पे स्टैक', 'تنخواہ', '支付堆栈', '有料スタック', 'Pilha de pagamento', 'Стек оплаты', 'Pile de paie', '지불 스택', 'Zahlen Sie Stapel', 'Pay Stack', 'สแต็คจ่ายเงิน', 'Pay Stack', 'Betaalstapel', 'stipendium Stack', 'Tumpukan pembayaran', 'Yığın öde', 'Στοίβα πληρωμής', 'پشته را پرداخت کنید', 'Stack Pay', 'પે સ્ટેક', 'Pay Stack', 'Сплатити стек', 'ਤਨਖਾਹ ਸਟੈਕ', 'Pay Stack', 'Sanwo Stack', 'Biyan Stack'),
(648, 'secret_key', 'Secret Key', 'সিক্রেট কী', 'Llave secreta', 'المفتاح السري', 'गुप्त कुंजी', 'خفیہ کلید', '密钥', '秘密鍵', 'Chave secreta', 'Секретный ключ', 'Clef secrète', '비밀 키', 'Geheimer Schlüssel', 'Chiave segreta', 'รหัสลับ', 'Titkos kulcs', 'Geheime sleutel', 'Key, secret', 'Kunci rahasia', 'Gizli anahtar', 'Μυστικό κλειδί', 'کلید مخفی', 'Kunci Rahsia', 'ગુપ્ત કી', 'Sekretny klucz', 'Секретний ключ', 'ਗੁਪਤ ਕੁੰਜੀ', 'Cheie secreta', 'Bọtini Asiri', 'Maɓallin Sirri'),
(649, 'public_key', 'Public Key', 'পাবলিক কী', 'Llave pública', 'المفتاح العمومي', 'सार्वजनिक कुंजी', 'عوامی کلید', '公钥', '公開鍵', 'Chave pública', 'Открытый ключ', 'Clé publique', '공개 키', 'Öffentlicher Schlüssel', 'Chiave pubblica', 'กุญแจสาธารณะ', 'Nyilvános kulcs', 'Publieke sleutel', 'Key publica', 'Kunci Publik', 'Genel anahtar', 'Δημόσιο κλειδί', 'کلید عمومی', 'Kunci Awam', 'જાહેર કી', 'Klucz publiczny', 'Публічний ключ', 'ਪਬਲਿਕ ਕੁੰਜੀ', 'Cheia publică', 'Bọtini Gbangba', 'Makullin jama\'a'),
(650, 'beta_sms', 'Beta SMS', 'বিটা  এসএমএস', 'SMS beta', 'بيتا SMS', 'बीटा एसएमएस', 'بیٹا ایس ایم ایس۔', 'Beta短信', 'ベータ版SMS', 'Beta SMS', 'Бета СМС', 'SMS bêta', '베타 SMS', 'Beta SMS', 'Beta SMS', 'SMS Beta', 'Beta SMS', 'Beta sms', 'Beta SMS', 'SMS Beta', 'Beta SMS', 'Beta SMS', 'پیامک بتا', 'SMS Beta', 'બીટા એસ.એમ.એસ.', 'Beta SMS', 'Бета-SMS', 'ਬੀਟਾ ਐਸ ਐਮ ਐਸ', 'SMS-uri beta', 'Beta SMS', 'Beta SMS'),
(651, 'confirm_proceed', 'Are you sure you want to proceed?', 'আপনি কি নিশ্চিত আপনি সামনে এগুতে চান?', '¿Estas seguro que deseas continuar?', 'هل انت متأكد انك تريد المتابعة؟', 'क्या आप सुनिश्चित रूप से आगे बढ़ना चाहते हैं?', 'کیا آپ واقعی آگے بڑھنا چاہتے ہیں؟', '你确定要继续吗？', '続行しますか？', 'Tem certeza de que deseja continuar?', 'Вы уверены, что хотите продолжить?', 'Êtes-vous sur de vouloir continuer?', '계속 하시겠습니까?', 'Sind Sie sicher, dass Sie fortfahren möchten?', 'Sei sicuro di voler procedere?', 'คุณแน่ใจหรือไม่ว่าต้องการดำเนินการต่อ', 'Biztosan folytatni akarja?', 'Weet je zeker dat je verder wilt gaan?', 'Certus es ire velis?', 'Anda yakin ingin melanjutkan?', 'Devam etmek istediğinize emin misiniz?', 'Είστε βέβαιοι ότι θέλετε να προχωρήσετε;', 'آیا مطمئن هستید که می خواهید ادامه دهید؟', 'Adakah anda pasti mahu meneruskan?', 'શું તમે ખરેખર આગળ વધવા માંગો છો?', 'Na pewno chcesz kontynuować?', 'Ви впевнені, що хочете продовжити?', 'ਕੀ ਤੁਸੀਂ ਅੱਗੇ ਵੱਧਣਾ ਚਾਹੁੰਦੇ ਹੋ?', 'Ești sigur că vrei să continui?', 'Ṣe o da ọ loju pe o fẹ tẹsiwaju?', 'Ka tabbata kana son ci gaba?'),
(652, 'session_start', 'Session Start', 'সেশন শুরু', 'Inicio de sesión', 'بدء الجلسة', 'सत्र प्रारंभ', 'سیشن اسٹارٹ۔', '会话开始', 'セッション開始', 'Início da sessão', 'Начало сеанса', 'Début de session', '세션 시작', 'Sitzungsstart', 'Inizio sessione', 'เริ่มเซสชัน', 'Session Start', 'Start sessie', 'Sessio Committitur', 'Mulai Sesi', 'Oturum Başlangıcı', 'Έναρξη περιόδου σύνδεσης', 'جلسه شروع', 'Mula Sesi', 'સત્ર પ્રારંભ', 'Rozpoczęcie sesji', 'Запуск сесії', 'ਸ਼ੈਸ਼ਨ ਅਰੰਭ', 'Începerea sesiunii', 'Ibẹrẹ Ikilọ', 'Zama na Farko'),
(653, 'session_end', 'Session End', 'সেশন সমাপ্তি', 'Fin de sesión', 'نهاية الجلسة', 'सत्र समाप्ति', 'سیشن ختم۔', '会话结束', 'セッション終了', 'Fim da Sessão', 'Коне Success!ц сессии', 'Fin de session', '세션 종료', 'Sitzungsende', 'Fine della sessione', 'สิ้นสุดเซสชัน', 'Munkamenet vége', 'Sessie einde', 'Sessio finis', 'Sesi Berakhir', 'Oturum Sonu', 'Τέλος περιόδου σύνδεσης', 'جلسه پایان', 'Akhir Sesi', 'સત્ર સમાપ્ત', 'Koniec sesji', 'Закінчення сесії', 'ਸੈਸ਼ਨ ਅੰਤ', 'Sfârșitul sesiunii', 'Ipari Igba', 'Zaman Karshe'),
(655, 'school_name', 'School Name', 'স্কুলের নাম', 'Nombre de la escuela', 'اسم المدرسة', 'विद्यालय का नाम', 'اسکول کا نام', '学校名称', '学校名', 'Nome da escola', 'Название школы', 'Nom de l\'école', '학교 이름', 'Schulname', 'Nome della scuola', 'ชื่อโรงเรียน', 'Iskola neve', 'Schoolnaam', 'nomen schola', 'Nama sekolah', 'Okul Adı', 'Ονομα σχολείου', 'نام مدرسه', 'Nama sekolah', 'શાળા નામ', 'Nazwa szkoły', 'Назва школи', 'ਸਕੂਲ ਦਾ ਨਾਮ', 'Numele scolii', 'Orukọ Ile-iwe', 'Sunan Makaranta'),
(658, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'Logotipo', 'شعار العلامة التجارية', 'ब्रांड लोगो', 'برانڈ لوگو', '品牌标志', 'ブランドロゴ', 'Logotipo da marca', 'Логотип бренда', 'Logo de la marque', '브랜드 로고', 'Markenlogo', 'Logo del marchio', 'โลโก้แบรนด์', 'Márka logó', 'Brand logo', 'notam logo', 'Logo Merek', 'Marka logosu', 'Λογότυπο μάρκας', 'آرم مارک', 'Logo Jenama', 'બ્રાન્ડ લોગો', 'Logo marki', 'Логотип торгової марки', 'ਬ੍ਰਾਂਡ ਲੋਗੋ', 'Logo-ul mărcii', 'Logo Brand', 'Brand Logo'),
(660, 'employee_name', 'Employee Name', 'কর্মকর্তার নাম', 'Nombre de empleado', 'اسم الموظف', 'कर्मचारी का नाम', 'ملازم کا نام', '员工姓名', '従業員名', 'nome do empregado', 'Имя сотрудника', 'Nom de l\'employé', '직원 이름', 'Mitarbeitername', 'Nome dipendente', 'ชื่อพนักงาน', 'Alkalmazott Neve', 'Naam werknemer', 'Aliquam nomine', 'nama karyawan', 'Çalışan Adı', 'όνομα υπαλλήλου', 'نام کارمند', 'Nama Pekerja', 'કર્મચારીનું નામ', 'imię i nazwisko pracownika', 'ім\'я працівника', 'ਕਰਮਚਾਰੀ ਦਾ ਨਾਮ', 'numele angajatului', 'Orukọ agbanisiṣẹ', 'Sunan Ma\'aikata'),
(661, 'student_name', 'Student Name', 'শিক্ষার্থীর নাম', 'Nombre del estudiante', 'أسم الطالب', 'छात्र का नाम', 'طالب علم کا نام', '学生姓名', '学生の名前', 'Nome do aluno', 'Имя студента', 'Nom d\'étudiant', '학생 이름', 'Name des Studenten', 'Nome dello studente', 'ชื่อนักเรียน', 'Tanuló név', 'Studenten naam', 'nomen discipulus', 'Nama siswa', 'Öğrenci adı', 'Ονομα μαθητή', 'نام دانش آموز', 'Nama pelajar', 'વિદ્યાર્થીનું નામ', 'Nazwisko studenta', 'Ім\'я студента', 'ਵਿਦਿਆਰਥੀ ਦਾ ਨਾਮ', 'Numele studentului', 'Orukọ ọmọ ile-iwe', 'Dalibin Dalibi'),
(662, 'teacher_name', 'Teacher Name', 'শিক্ষকের নাম', 'Nombre del maestro', 'اسم المعلم', 'अध्यापक का नाम', 'استاد کا نام', '老师的名字', '先生の名前', 'Nome do professor', 'Имя учителя', 'Nom de l\'enseignant', '선생님 성함', 'Name des Lehrers', 'Nome dell\'insegnante', 'ชื่อครู', 'Tanár neve', 'Naam leraar', 'nomen magister', 'Nama guru', 'Öğretmen adı', 'Όνομα δασκάλου', 'نام معلم', 'Nama Guru', 'શિક્ષકનું નામ', 'Imię nauczyciela', 'Ім\'я вчителя', 'ਅਧਿਆਪਕ ਦਾ ਨਾਮ', 'Numele profesorului', 'Orukọ Olukọ', 'Sunan Malami'),
(663, 'module_name', 'Module Name', 'মডিউল নাম', 'Nombre del módulo', 'اسم وحدة', 'मोड्यूल का नाम', 'ماڈیول کا نام', '模块名称', 'モジュール名', 'nome do módulo', 'Имя модуля', 'Nom du module', '모듈 이름', 'Modulname', 'Nome del modulo', 'ชื่อโมดูล', 'Modul neve', 'module naam', 'OMNIBUS nomine', 'Nama Modul', 'Modül Adı', 'Όνομα ενότητας', 'نام ماژول', 'Nama Modul', 'મોડ્યુલ નામ', 'Nazwa modułu', 'Назва модуля', 'ਮੋਡੀuleਲ ਨਾਮ', 'Numele modulului', 'Orukọ Module', 'Sunan Module'),
(665, 'route_name', 'Route Name', 'রুটের নাম', 'Nombre de ruta', 'اسم المسار', 'मार्ग का नाम', 'راستے کا نام', '路线名称', 'ルート名', 'Nome da Rota', 'Название маршрута', 'Nom de l\'itinéraire', '노선 이름', 'Routenname', 'Nome percorso', 'ชื่อเส้นทาง', 'Útvonal neve', 'Route naam', 'nomen iter itineris', 'Nama Rute', 'Güzergah Adı', 'Όνομα διαδρομής', 'نام مسیر', 'Nama Laluan', 'માર્ગનું નામ', 'Nazwa trasy', 'Назва маршруту', 'ਮਾਰਗ ਦਾ ਨਾਮ', 'Numele traseului', 'Orukọ ọna', 'Sunan Hanyar'),
(666, 'user_type', 'User Type', 'ব্যবহারকারীর ধরন', 'Tipo de usuario', 'نوع المستخدم', 'उपयोगकर्ता का प्रकार', 'صارف کی قسم', '用户类型', 'ユーザータイプ', 'Tipo de usuário', 'Тип пользователя', 'Type d\'utilisateur', '사용자 유형', 'Benutzertyp', 'Tipologia di utente', 'ประเภทผู้ใช้', 'Felhasználó típusa', 'Gebruikerstype', 'User Type', 'Tipe Pengguna', 'Kullanıcı tipi', 'Τύπος χρήστη', 'نوع کاربر', 'Jenis pengguna', 'વપરાશકર્તા પ્રકાર', 'Rodzaj użytkownika', 'Тип користувача', 'ਉਪਭੋਗਤਾ ਕਿਸਮ', 'Tip de utilizator', 'Olumulo Iru', 'Nau\'in mai amfani'),
(667, 'meet_user_type', 'Meet User Type', 'সাক্ষাৎ ব্যবহারকারীর ধরন', 'Conoce el tipo de usuario', 'تلبية نوع المستخدم', 'मिलो उपयोगकर्ता प्रकार', 'صارف کی قسم سے ملو', '符合用户类型', 'ユーザータイプに会う', 'Conheça o tipo de usuário', 'Тип пользователя', 'Rencontrez le type d\'utilisateur', '사용자 유형 충족', 'Treffen Sie den Benutzertyp', 'Incontra il tipo di utente', 'พบกับประเภทผู้ใช้', 'Ismerje meg a felhasználói típust', 'Maak kennis met gebruikerstype', 'User occursum Type', 'Temui Jenis Pengguna', 'Kullanıcı Türüyle Tanışın', 'Γνωρίστε τον τύπο χρήστη', 'با نوع کاربری ملاقات کنید', 'Temui Jenis Pengguna', 'વપરાશકર્તા પ્રકાર મળો', 'Poznaj typ użytkownika', 'Знайдіть тип користувача', 'ਉਪਭੋਗਤਾ ਕਿਸਮ ਨੂੰ ਮਿਲੋ', 'Întâlniți tipul de utilizator', 'Pade Iru Olumulo', 'Sadu da nau\'in mai amfani'),
(668, 'user_credential', 'User Credential', 'ব্যবহারকারীর  ক্রীডেন্শাল', 'Credencial de usuario', 'بيانات اعتماد المستخدم', 'उपयोगकर्ता क्रेडेंशियल', 'صارف کی سند', '用户凭证', 'ユーザー資格情報', 'Credencial do usuário', 'Учетные данные пользователя', 'Informations d\'identification de l\'utilisateur', '사용자 자격 증명', 'Benutzeranmeldeinformationen', 'Credenziali dell\'utente', 'ข้อมูลประจำตัวผู้ใช้', 'Felhasználói hitelesítő adatok', 'Gebruikersgegevens', 'User Credential', 'Kredensial Pengguna', 'Kullanıcı Kimlik Bilgileri', 'Διαπιστευτήρια χρήστη', 'اعتبار کاربر', 'Kelayakan Pengguna', 'વપરાશકર્તા ઓળખપત્ર', 'Poświadczenie użytkownika', 'Повноваження користувача', 'ਉਪਭੋਗਤਾ ਪ੍ਰਮਾਣ ਪੱਤਰ', 'Credențial utilizator', 'Ẹri Olumulo', 'Takaddun Mai Amfani'),
(669, 'class_teacher', 'Class Teacher', 'শ্রেণী শিক্ষক', 'Profesor de clase', 'معلم الصف', 'कक्षा अध्यापक', 'کلاس ٹیچر', '班主任', 'クラスの先生', 'Professor da classe', 'Учитель класса', 'Professeur de classe', '수업 교사', 'Klassenlehrer', 'Insegnante', 'ครูประจำชั้น', 'Osztályfőnök', 'Klassen leraar', 'classis Teacher', 'Guru kelas', 'Sınıf öğretmeni', 'Δάσκαλος τάξης', 'معلم کلاس', 'Guru kelas', 'વર્ગ શિક્ષક', 'Wychowawca klasy', 'Викладач класу', 'ਕਲਾਸ ਅਧਿਆਪਕ', 'Profesor', 'Olukọ kilasi', 'Malami na aji'),
(670, 'class_routine', 'Class Routine', 'ক্লাস রুটিন', 'Rutina de clase', 'روتين الفصل', 'क्लास रूटीन', 'کلاس روٹین', '课堂常规', 'クラスルーチン', 'Rotina de Classe', 'Класс рутин', 'Routine de classe', '클래스 루틴', 'Klassenroutine', 'Routine di classe', 'คลาสประจำ', 'Osztályrutin', 'Klassenroutine', 'classis DEFUNCTORIUS', 'Kelas Rutin', 'Sınıf Rutini', 'Ρουτίνα τάξης', 'کلاس معمول', 'Rutin Kelas', 'વર્ગ નિયમિત', 'Rutyna klasowa', 'Клас звичайний', 'ਕਲਾਸ ਰੁਟੀਨ', 'Rutina clasei', 'Ilana Kilasi', 'Tsarin hanya'),
(671, 'previous_school', 'Previous School', 'পূর্ববর্তী স্কুল', 'Antes de la escuela', 'المدرسة السابقة', 'पिछला स्कूल', 'پچھلا اسکول', '以前的学校', '前の学校', 'Escola anterior', 'Предыдущая школа', 'L\'école dernière', '이전 학교', 'Vorherige Schule', 'Scuola precedente', 'โรงเรียนก่อนหน้า', 'Előző iskola', 'Vorige school', 'prior School', 'Sekolah sebelumnya', 'Önceki okul', 'Προηγούμενο σχολείο', 'مدرسه قبلی', 'Sekolah Terdahulu', 'ગત શાળા', 'Poprzednia szkoła', 'Попередня школа', 'ਪਿਛਲਾ ਸਕੂਲ', 'Scoala anterioara', 'Ile-iwe iṣaaju', 'Makaranta ta gabata'),
(672, 'previous_class', 'Previous Class', 'পূর্ববর্তী ক্লাস', 'Clase anterior', 'الفصل السابق', 'पिछली कक्षा', 'پچھلی کلاس', '上一课', '前のクラス', 'Classe Anterior', 'Предыдущий класс', 'Classe précédente', '이전 수업', 'Vorherige Klasse', 'Classe precedente', 'ระดับก่อนหน้า', 'Előző osztály', 'Vorige les', 'Previous Class', 'Kelas Sebelumnya', 'Önceki Sınıf', 'Προηγούμενη τάξη', 'کلاس قبلی', 'Kelas Sebelumnya', 'પાછલો વર્ગ', 'Poprzednia klasa', 'Попередній клас', 'ਪਿਛਲੀ ਕਲਾਸ', 'Clasa anterioară', 'Kilasi iṣaaju', 'Class Na Baya'),
(1224, 'individual', 'Individual', 'স্বতন্ত্র', 'Individual', 'فرد', 'व्यक्ति', 'انفرادی', '个人', '個人', 'Individual', 'Индивидуальный', 'Individuelle', '개인', 'Individuell', 'Individuale', 'รายบุคคล', 'Egyedi', 'Individueel', 'Singula', 'Individu', 'Bireysel', 'Ατομο', 'شخصی', 'individu', 'વ્યક્તિગત', 'Indywidualny', 'Індивідуальний', 'ਵਿਅਕਤੀਗਤ', 'Individual', 'Olukuluku', 'Mutum'),
(1225, 'organization', 'Organization', 'সংগঠন', 'Organización', 'منظمة', 'संगठन', 'تنظیم', '组织', '組織', 'Organização', 'Организация', 'Organisation', '조직', 'Organisation', 'Organizzazione', 'องค์กร', 'Szervezet', 'Organisatie', 'Organization', 'Organisasi', 'organizasyon', 'Οργάνωση', 'سازمان', 'Organisasi', 'સંસ્થા', 'Organizacja', 'Організація', 'ਸੰਗਠਨ', 'Organizare', 'Ajo', 'Ƙungiya'),
(1226, 'winner', 'Winner', 'বিজয়ী', 'Ganadora', 'الفائز', 'विजेता', 'فاتح', '优胜者', '勝者', 'Vencedora', 'Победитель', 'Gagnante', '우승자', 'Gewinnerin', 'Vincitrice', 'ผู้ชนะ', 'Győztes', 'Winnaar', 'Victor', 'Pemenang', 'kazanan', 'Νικητής', 'برنده', 'Pemenang', 'વિજેતા', 'Zwycięzca', 'Переможець', 'ਜੇਤੂ', 'Câştigător', 'Olubori', 'Nasara'),
(1227, 'assign_to', 'Assign To', 'যাকে দেওয়া হয়েছে', 'Asignar a', 'يسند إلى', 'को आवंटित', 'کو سونپا گیا', '分配给', '割りあてる', 'Atribuir a', 'Назначить на', 'Affecter à', '할당 대상', 'Zuweisen', 'Assegnato a', 'มอบหมายให้', 'Hozzárendelni', 'Toewijzen', 'Assignare', 'Ditugaskan kepada', 'Atamak', 'Εκχώρηση σε', 'اختصاص دادن به', 'Tugaskan Kepada', 'માટે સોંપો', 'Przypisać do', 'Призначити', 'ਨੂੰ ਸੌਂਪੋ', 'Atribuiți către', 'Fi si', 'Sanya Zuwa'),
(675, 'frontend_page', 'Frontend Page', 'সম্মুখভাগ পৃষ্ঠা', 'Página Frontend', 'الصفحة الأمامية', 'फ्रंटेंड पेज', 'فرنٹ اینڈ پیج', '前端页面', 'フロントエンドページ', 'Página Frontend', 'Страница интерфейса', 'Page frontend', '프론트 엔드 페이지', 'Frontend-Seite', 'Pagina frontend', 'หน้าส่วนหน้า', 'Frontend oldal', 'Frontend-pagina', 'Page Frontend', 'Halaman Frontend', 'Ön Uç Sayfası', 'Αρχική σελίδα', 'صفحه جلوی', 'Halaman Depan', 'અગ્ર પૃષ્ઠ', 'Frontend Page', 'Frontend Page', 'ਫਰੰਟੈਂਡ ਪੇਜ', 'Frontend Page', 'Oju-iwe Frontend', 'Shafin Farko'),
(677, 'vehicle_number', 'Vehicle Number', 'যানবাহন নম্বর', 'Número de vehículo', 'عدد المركبات', 'वाहन संख्या', 'گاڑی کا نمبر', '车号', '車両番号', 'Número do veículo', 'Номер автомобиля', 'Numéro de véhicule', '차량 번호', 'Fahrzeugnummer', 'Numero del veicolo', 'หมายเลขยานพาหนะ', 'Jármű száma', 'Voertuignummer', 'vehiculum Number', 'Nomor kendaraan', 'Araç numarası', 'Αριθμός οχήματος', 'شماره وسیله نقلیه', 'Nombor Kenderaan', 'વાહન નંબર', 'Numer pojazdu', 'Номер транспортного засобу', 'ਵਾਹਨ ਨੰਬਰ', 'Numărul vehiculului', 'Nọmba ọkọ', 'Lambar Mota'),
(678, 'select_bus_stop', 'Select Bus Stop', 'বাস স্টপ নির্বাচন করুন', 'Seleccionar parada de autobús', 'حدد موقف الحافلات', 'बस स्टॉप का चयन करें', 'بس اسٹاپ کو منتخب کریں', '选择巴士站', 'バス停を選択', 'Selecionar ponto de ônibus', 'Выберите автобусную остановку', 'Sélectionnez l\'arrêt de bus', '버스 정류장 선택', 'Wählen Sie Bushaltestelle', 'Seleziona la fermata dell\'autobus', 'เลือกป้ายรถเมล์', 'Válassza a Bus Stop lehetőséget', 'Selecteer Bushalte', 'Select Bus Stop', 'Pilih Halte Bus', 'Otobüs Durağı Seçin', 'Επιλέξτε Στάση λεωφορείου', 'ایستگاه اتوبوس را انتخاب کنید', 'Pilih Perhentian Bas', 'બસ સ્ટોપ પસંદ કરો', 'Wybierz Przystanek autobusowy', 'Виберіть Автобусна зупинка', 'ਬੱਸ ਸਟਾਪ ਦੀ ਚੋਣ ਕਰੋ', 'Selectați Oprirea autobuzului', 'Yan Duro Duro', 'Zaɓi Tsaya'),
(679, 'add_to_transport', 'Add to Transport', 'পরিবহণ যোগ করুন', 'Agregar al transporte', 'أضف إلى النقل', 'परिवहन में जोड़ें', 'ٹرانسپورٹ میں شامل کریں', '添加到运输', 'トランスポートに追加', 'Adicionar ao transporte', 'Добавить в транспорт', 'Ajouter au transport', '운송에 추가', 'Zum Transport hinzufügen', 'Aggiungi al trasporto', 'เพิ่มในการขนส่ง', 'Adja hozzá a szállításhoz', 'Toevoegen aan transport', 'Addere quod haec transportatio', 'Tambahkan ke Transport', 'Taşınmaya Ekle', 'Προσθήκη στη μεταφορά', 'اضافه کردن به حمل و نقل', 'Tambah ke Pengangkutan', 'પરિવહન ઉમેરો', 'Dodaj do transportu', 'Додати до транспорту', 'ਆਵਾਜਾਈ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați la Transport', 'Fi si Gbe', 'Toara zuwa Sufuri'),
(680, 'login_to_school', 'Login to School', 'স্কুলে লগইন করুন', 'Entrar a la escuela', 'تسجيل الدخول إلى المدرسة', 'स्कूल में लॉगिन करें', 'اسکول میں لاگ ان کریں', '登录学校', '学校にログイン', 'Entrar na escola', 'Вход в школу', 'Connectez-vous à l\'école', '학교에 로그인', 'Logge dich in die Schule ein', 'Accedi a scuola', 'เข้าสู่ระบบโรงเรียน', 'Bejelentkezés az iskolába', 'Log in op school', 'Login to School', 'Login ke Sekolah', 'Okula Giriş', 'Είσοδος στο σχολείο', 'ورود به مدرسه', 'Masuk ke Sekolah', 'શાળા પ્રવેશ કરો', 'Zaloguj się do szkoły', 'Вхід до школи', 'ਸਕੂਲ ਵਿਚ ਲੌਗਇਨ ਕਰੋ', 'Autentificare la școală', 'Buwolu wọle si Ile-iwe', 'Shiga Makaranta'),
(682, 'notice_detail', 'Notice Detail', 'বিস্তারিত বিজ্ঞপ্তি', 'Detalle de aviso', 'إشعار التفاصيل', 'सूचना विस्तार से', 'نوٹس تفصیل', '通知详情', 'お知らせ詳細', 'Detalhe do aviso', 'Обратите внимание на детали', 'Détail de l\'avis', '공지 사항', 'Hinweis Detail', 'Dettaglio avviso', 'ประกาศรายละเอียด', 'Közlemény részlete', 'Let op Detail', 'notitia Detail', 'Detail Pemberitahuan', 'İlan Detayı', 'Λεπτομέρεια ειδοποίησης', 'جزئیات', 'Perincian Notis', 'સૂચના વિગતવાર', 'Szczegóły powiadomienia', 'Повідомте деталі', 'ਨੋਟਿਸ ਵੇਰਵਾ', 'Detaliu de notificare', 'Akiyesi Apejuwe', 'Bayani Dalla-dalla'),
(683, 'news_detail', 'News Detail', 'বিস্তারিত সংবাদ', 'Detalle de noticias', 'تفاصيل الأخبار', 'समाचार विस्तार से', 'خبر کی تفصیل', '新闻详细', 'ニュース詳細', 'Detalhe da notícia', 'Новости подробно', 'Détail des nouvelles', '뉴스 상세', 'News Detail', 'Dettaglio notizie', 'รายละเอียดข่าว', 'Hírek részletei', 'Nieuws Detail', 'News Detail', 'Detail Berita', 'Haber Detayı', 'Λεπτομέρεια ειδήσεων', 'جزئیات اخبار', 'Perincian Berita', 'સમાચાર વિગતવાર', 'Szczegóły wiadomości', 'Деталі новин', 'ਖ਼ਬਰਾਂ ਦਾ ਵੇਰਵਾ', 'Detalii știri', 'Apejuwe Awọn iroyin', 'Cikakkun Labaran'),
(684, 'apply_now', 'Apply Now', 'এখন আবেদন করুন', 'Aplica ya', 'قدم الآن', 'अभी आवेदन करें', 'اب لگائیں', '现在申请', '今すぐ申し込む', 'Aplique agora', 'Применить сейчас', 'Appliquer maintenant', '지금 신청하십시오', 'Jetzt bewerben', 'Applica ora', 'สมัครตอนนี้', 'Jelentkezz most', 'Nu toepassen', 'Applicare autem', 'Ajukan Sekarang', 'Şimdi Uygula', 'Κάνε αίτηση τώρα', 'اکنون درخواست کنید', 'Mohon sekarang', 'હવે અરજી કરો', 'Aplikuj teraz', 'Подати зараз', 'ਹੁਣ ਲਾਗੂ ਕਰੋ', 'Aplica acum', 'Waye Bayi', 'Aiwatar Yanzu'),
(685, 'latest_news', 'Latest News', 'সর্বশেষ সংবাদ', 'Últimas noticias', 'أحدث الأخبار', 'ताज़ा खबर', 'تازہ ترین خبریں', '最新消息', '最新ニュース', 'Últimas notícias', 'Последние новости', 'Dernières nouvelles', '최근 소식', 'Neuesten Nachrichten', 'Ultime notizie', 'ข่าวล่าสุด', 'Legfrissebb hírek', 'Laatste nieuws', 'Latest News', 'Berita Terbaru', 'Son Haberler', 'Τελευταία νέα', 'آخرین خبرها', 'Berita terkini', 'તાજા સમાચાર', 'Najnowsze wiadomości', 'Останні новини', 'ਤਾਜ਼ਾ ਖ਼ਬਰਾਂ', 'Cele mai recente știri', 'Awọn irohin tuntun', 'Sabbin Labarai'),
(686, 'latest_notice', 'Latest Notice', 'সর্বশেষ বিজ্ঞপ্তি', 'Último aviso', 'أحدث إشعار', 'नवीनतम सूचना', 'تازہ ترین نوٹس', '最新通知', '最新のお知らせ', 'Último aviso', 'Последнее уведомление', 'Dernier avis', '최신 공지', 'Letzte Mitteilung', 'Ultimo avviso', 'ประกาศล่าสุด', 'Legfrissebb közlemény', 'Laatste kennisgeving', 'tardus Notitia', 'Pemberitahuan Terbaru', 'Son Bildirim', 'Τελευταία ειδοποίηση', 'آخرین اعلامیه', 'Notis Terkini', 'નવીનતમ સૂચના', 'Najnowsze zawiadomienie', 'Останнє повідомлення', 'ਤਾਜ਼ਾ ਨੋਟਿਸ', 'Ultima notificare', 'Akiyesi Tuntun', 'Sanarwa ta Buga'),
(687, 'latest_holiday', 'Latest Holiday', 'সর্বশেষ ছুটি', 'Últimas vacaciones', 'آخر عطلة', 'नवीनतम अवकाश', 'تازہ ترین چھٹی', '最新假期', '最新の休日', 'Últimas Férias', 'Последний праздник', 'Dernières vacances', '최신 휴일', 'Letzter Urlaub', 'Ultima vacanza', 'วันหยุดล่าสุด', 'Utolsó ünnep', 'Laatste vakantie', 'latest nulla', 'Libur Terbaru', 'Son Tatil', 'Τελευταίες διακοπές', 'آخرین تعطیلات', 'Percutian Terkini', 'નવીનતમ રજા', 'Najnowsze wakacje', 'Останнє свято', 'ਤਾਜ਼ਾ ਛੁੱਟੀਆਂ', 'Ultima vacanță', 'Isinmi tuntun', 'Bikin Holiday'),
(688, 'holiday_detail', 'Holiday Detail', 'ছুটির বিস্তারিত', 'Detalle de vacaciones', 'تفاصيل العطلة', 'छुट्टी का विवरण', 'چھٹیوں کا تفصیل', '假期详情', '休日の詳細', 'Detalhe do feriado', 'Деталь праздника', 'Détail vacances', '휴일 세부 사항', 'Feiertagsdetail', 'Dettaglio vacanza', 'รายละเอียดวันหยุด', 'Nyaralás részletei', 'Vakantie Detail', 'feriatum Detail', 'Detail Liburan', 'Tatil Detayı', 'Λεπτομέρεια διακοπών', 'جزئیات تعطیلات', 'Perincian Percutian', 'રજા વિગતો', 'Szczegóły wakacji', 'Свято докладно', 'ਛੁੱਟੀਆਂ ਦਾ ਵੇਰਵਾ', 'Detaliu de sărbători', 'Apejuwe Isinmi', 'Bayanin Hutu'),
(689, 'latest_event', 'Latest Event', 'সর্বশেষ ইভেন্ট', 'Último Evento', 'الحدث الأخير', 'नवीनतम कार्यक्रम', 'تازہ ترین واقعہ', '最新事件', '最新のイベント', 'Último Evento', 'Последнее событие', 'dernier événement', '최근 사건', 'Letztes Ereignis', 'l\'ultimo evento', 'เหตุการณ์ล่าสุด', 'Legutóbbi Esemény', 'laatste evenement', 'tardus Vicis', 'Acara Terkini', 'En Son etkinlik', 'τελευταίο γεγονός', 'آخرین رخداد', 'acara terbaru', 'નવીનતમ ઇવેન્ટ', 'ostatnie wydarzenie', 'Остання подія', 'ਤਾਜ਼ਾ ਘਟਨਾ', 'Ultimul eveniment', 'Iṣẹlẹ Tuntun', 'Sabbin Balaguro'),
(690, 'event_detail', 'Event Detail', 'ইভেন্ট বিস্তারিত', 'Detalle del evento', 'تفاصيل الحدث', 'घटना का विवरण', 'واقعہ کی تفصیل', '活动详情', 'イベント詳細', 'Detalhe do Evento', 'Деталь события', 'Détail de l\'événement', '이벤트 상세', 'Ereignisdetail', 'Dettaglio dell\'evento', 'รายละเอียดกิจกรรม', 'Esemény részletei', 'Evenementdetail', 'res Detail', 'Detail Acara', 'Etkinlik Ayrıntısı', 'Λεπτομέρεια εκδήλωσης', 'جزئیات رویداد', 'Perincian Acara', 'પ્રસંગની વિગત', 'Szczegóły wydarzenia', 'Деталі події', 'ਘਟਨਾ ਦਾ ਵੇਰਵਾ', 'Detaliu eveniment', 'Apejuwe iṣẹlẹ', 'Cikakken bayanin abin da ya faru'),
(692, 'guardian_name', 'Guardian Name', 'অভিভাবকের নাম', 'Nombre del tutor', 'اسم الوصي', 'अभिभावक का नाम', 'گارڈین کا نام', '监护人姓名', '保護者の名前', 'Nome do guardião', 'Имя опекуна', 'Nom du gardien', '보호자 이름', 'Name des Wächters', 'Nome della guardia', 'ชื่อผู้พิทักษ์', 'Gárda neve', 'Naam voogd', 'custos nomine', 'Nama penjaga', 'Muhafız adı', 'Όνομα κηδεμόνα', 'نام نگهبان', 'Nama Penjaga', 'વાલીનું નામ', 'Nazwisko strażnika', 'Ім\'я опікуна', 'ਸਰਪ੍ਰਸਤ ਦਾ ਨਾਮ', 'Numele tutorelui', 'Orukọ Olutọju', 'Sunan Mai Kula'),
(693, 'guardian_phone', 'Guardian Phone', 'অভিভাবকের ফোন', 'Guardian Phone', 'هاتف الوصي', 'अभिभावक फोन', 'گارڈین فون', '监护人电话', '保護者の電話', 'Telefone do Guardião', 'Guardian Phone', 'Téléphone gardien', '가디언 전화', 'Guardian Telefon', 'Guardian Phone', 'โทรศัพท์การ์เดียน', 'Guardian telefon', 'Guardian-telefoon', 'custos Phone', 'Telepon Pelindung', 'Koruyucu Telefon', 'Τηλέφωνο φύλακα', 'تلفن نگهبان', 'Telefon Penjaga', 'વાલી ફોન', 'Telefon opiekuńczy', 'Телефон опікуна', 'ਸਰਪ੍ਰਸਤ ਫੋਨ', 'Telefon tutore', 'Foonu Olutọju', 'Waya');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(694, 'about_school', 'About School', 'স্কুল সম্পর্কে', 'Acerca de la escuela', 'حول المدرسة', 'विद्यालय के बारे में', 'اسکول کے بارے میں', '关于学校', '学校について', 'Sobre escola', 'Про школу', 'À propos de l\'école', '학교 소개', 'Über die Schule', 'Sulla scuola', 'เกี่ยวกับโรงเรียน', 'Iskoláról', 'Over school', 'De School', 'Tentang sekolah', 'Okul hakkında', 'Σχετικά με το σχολείο', 'درباره مدرسه', 'Mengenai Sekolah', 'શાળા વિશે', 'O szkole', 'Про школу', 'ਸਕੂਲ ਬਾਰੇ', 'Despre școală', 'Nipa Ile-iwe', 'Game da Makaranta'),
(695, 'expire_month', 'Expire Month', 'মেয়াদ শেষ মাস', 'Vence el mes', 'شهر انتهاء الصلاحية', 'माह समाप्त हो रहा है', 'ماہ ختم ہوجائیں', '到期月份', '有効期限', 'Mês de validade', 'Истекает месяц', 'Expirer le mois', '월 만료', 'Monat ablaufen', 'Scade il mese', 'หมดอายุเดือน', 'Lejár hónap', 'Verloopt maand', 'mense exspirare', 'Bulan Kedaluwarsa', 'Sona Erme Ayı', 'Λήξη μήνα', 'ماه Expire', 'Tamat Bulan', 'મહિનો સમાપ્ત થાય છે', 'Wygasać miesiąc', 'Закінчується місяць', 'ਮਹੀਨਾ ਖਤਮ', 'Expira luna', 'Pari oṣu', 'Ireare Watan'),
(696, 'expire_year', 'Expire Year', 'মেয়াদ শেষ বছর', 'Vence el año', 'سنة انتهاء الصلاحية', 'अवसान वर्ष', 'میعاد ختم ہونے والا سال', '到期年份', '有効期限', 'Expiração do ano', 'Истекает год', 'Expirer l\'année', '만료 연도', 'Ablaufjahr', 'Scade l\'anno', 'หมดอายุปี', 'Lejárat éve', 'Vervalt jaar', 'Anno exspirare', 'Tahun Kedaluwarsa', 'Sona Erme Yılı', 'Λήξη έτους', 'سال اعدام', 'Tamat Tahun', 'વર્ષ સમાપ્ત થાય છે', 'Wygaśnij rok', 'Закінчується рік', 'ਸਾਲ ਖਤਮ', 'Expira anul', 'Odun ipari', 'Shekara ta kare'),
(697, 'pay_now', 'Pay Now', 'এখন পরিশোধ করুন', 'Pagar ahora', 'ادفع الآن', 'अब भुगतान करें', 'اب ادا', '现在付款', '今払う', 'Pague agora', 'Заплатить сейчас', 'Payez maintenant', '지금 지불하세요', 'Zahlen Sie jetzt', 'Paga ora', 'จ่ายตอนนี้', 'Fizess most', 'Nu betalen', 'Nunc ergo redde', 'Bayar sekarang', 'Şimdi öde', 'Πλήρωσε τώρα', 'الان پرداخت کن', 'Bayar sekarang', 'હવે પૈસા આપો', 'Zapłać teraz', 'Платити зараз', 'ਹੁਣੇ ਭੁਗਤਾਨ ਕਰੋ', 'Plătește acum', 'Sanwo Bayi', 'Biyan Yanzu'),
(698, 'paid_date', 'Paid Date', 'প্রদত্ত তারিখ', 'Fecha de pago', 'تاريخ المدفوعة', 'भुगतान तिथि', 'ادا کی گئی تاریخ', '支付日期', '支払日', 'Data de pagamento', 'Оплаченная дата', 'La date de paiement', '유료 날짜', 'Bezahltes Datum', 'Data di pagamento', 'วันที่จ่าย', 'Fizetett dátum', 'Betaalde datum', 'solvit Date', 'Tanggal Dibayar', 'Ödenen tarih', 'Ημερομηνία πληρωμής', 'تاریخ پرداخت', 'Tarikh Dibayar', 'ચૂકવેલ તારીખ', 'Data zapłaty', 'Дата сплати', 'ਭੁਗਤਾਨ ਤਾਰੀਖ', 'Data plății', 'Ọjọ ti San', 'Ranar biya'),
(699, 'student_copy', 'Student Copy', 'শিক্ষার্থী অনুলিপি', 'Copia del estudiante', 'نسخة الطالب', 'छात्र कॉपी', 'طالب علم کی کاپی', '学生副本', '学生用コピー', 'Cópia do aluno', 'Студенческая копия', 'Copie de l\'élève', '학생 사본', 'Studentenkopie', 'Copia dello studente', 'สำเนานักเรียน', 'Student Copy', 'Student Copy', 'Exemplar discipulus', 'Copy Pelajar', 'Öğrenci Kopyası', 'Αντίγραφο μαθητή', 'کپی دانشجویی', 'Salinan Pelajar', 'વિદ્યાર્થીની નકલ', 'Kopia studencka', 'Студентська копія', 'ਵਿਦਿਆਰਥੀ ਕਾੱਪੀ', 'Copie student', 'Ẹda Ọmọ ile-iwe', 'Kwafin Dalibi'),
(700, 'fee_amount', 'Fee Amount', 'ফি পরিমাণ', 'Importe de la cuota', 'مبلغ الرسوم', 'शुल्क राशि', 'فیس کی رقم', '收费多少', '手数料の金額', 'Valor da taxa', 'Величина платежа', 'Montant des frais', '요금', 'Gebührenbetrag', 'Importo tassa', 'จำนวนเงินค่าธรรมเนียม', 'Díj összegét', 'Vergoedingsbedrag', 'Aliquam feodo', 'Jumlah biaya', 'Ücret miktarı', 'Προμήθεια', 'مبلغ', 'Jumlah Yuran', 'ફી રકમ', 'Kwota opłaty', 'Сума плати', 'ਫੀਸ ਦੀ ਰਕਮ', 'Suma comisionului', 'Iye owo', 'Adadin kuɗi'),
(701, 'create_bulk_invoice', 'Create Bulk Invoice', 'বাল্ক চালান তৈরি করুন', 'Crear factura masiva', 'إنشاء فاتورة مجمعة', 'थोक चालान बनाएँ', 'بلک انوائس بنائیں', '创建批量发票', '一括請求書を作成', 'Criar fatura em massa', 'Создать массовый счет', 'Créer une facture groupée', '대량 송장 생성', 'Massenrechnung erstellen', 'Crea fattura collettiva', 'สร้างใบแจ้งหนี้จำนวนมาก', 'Hozzon létre tömeges számlát', 'Maak een bulkfactuur', 'Create mole cautionem', 'Buat Faktur Massal', 'Toplu Fatura Oluştur', 'Δημιουργία μαζικού τιμολογίου', 'ایجاد فاکتور فله', 'Buat Invois Pukal', 'બલ્ક ઇન્વ Invઇસ બનાવો', 'Utwórz fakturę zbiorczą', 'Створіть масовий рахунок-фактура', 'ਬਲਕ ਇਨਵੌਇਸ ਬਣਾਓ', 'Creați factură în vrac', 'Ṣẹda Invoice Bulk', 'Voirƙiri Rasis Invoice'),
(702, 'create_invoice', 'Create Invoice', 'চালান তৈরি করুন', 'Crear factura', 'إنشاء فاتورة', 'इनवॉयस बनाएँ', 'انوائس بنائیں', '创建发票', '請求書を作成', 'Criar recibo', 'Создать счет', 'Créer une facture', '송장 생성', 'Rechnung erstellen', 'Crea fattura', 'สร้างใบแจ้งหนี้', 'Számla létrehozása', 'Factuur maken', 'cautionem crea', 'Buat Faktur', 'Fatura oluşturmak', 'Δημιουργία τιμολογίου', 'ایجاد فاکتور', 'Buat Invois', 'ભરતિયું બનાવો', 'Wystaw fakturę', 'Створіть рахунок-фактуру', 'ਚਲਾਨ ਬਣਾਓ', 'Creați factură', 'Ṣẹda Invoice', 'Inirƙiri Invoice'),
(703, 'general_fee', 'General Fee', 'জেনারেল ফি', 'Tarifa general', 'الرسوم العامة', 'सामान्य शुल्क', 'جنرل فیس', '一般费用', '一般料金', 'Taxa Geral', 'Общая плата', 'Frais généraux', '일반 수수료', 'Allgemeine Gebühr', 'Commissione generale', 'ค่าธรรมเนียมทั่วไป', 'Általános díj', 'Algemene vergoeding', 'General pretium', 'Biaya Umum', 'Genel Ücret', 'Γενική χρέωση', 'هزینه عمومی', 'Bayaran Am', 'જનરલ ફી', 'Opłata ogólna', 'Загальна плата', 'ਆਮ ਫੀਸ', 'Comision general', 'Gbogbogbo fee', 'Janar Fee'),
(704, 'due_fee_student', 'Due Fee Student', 'বকেয়া ফি স্টুডেন্ট', 'Cuota debida estudiante', 'طالب الرسوم المستحقة', 'देय छात्र', 'واجب الادا طالب علم', '应付学生费', '学費留学生', 'Estudante devido', 'Студент', 'Étudiant exigible', '학비', 'Fällige Gebühr Student', 'Studente dovuto', 'นักศึกษาค่าธรรมเนียมที่ครบกำหนด', 'Esedékes díj hallgató', 'Due Fee Student', 'Discipulus debita pretium', 'Pelajar Karena Biaya', 'Ödenmesi Gereken Ücretli Öğrenci', 'Φοιτητής οφειλόμενης προμήθειας', 'حق عضویت دانشجویی', 'Pelajar Yuran Hutang', 'ફી ફી વિદ્યાર્થી', 'Opłata studencka', 'Сплата студента', 'ਫੀਸ ਵਿਦਿਆਰਥੀ', 'Taxă cuvenită student', 'Omo ile iwe isanwo to san', 'Sakamakon Karatun dalibi'),
(705, 'Student Promotion', 'Student Promotion', 'ছাত্র পদোন্নতি', 'Promoción estudiantil', 'ترقية الطالب', 'छात्र पदोन्नति', 'طلبا کی تشہیر', '学生升学', '学生プロモーション', 'Promoção de Estudantes', 'Студенческое продвижение', 'Promotion étudiante', '학생 프로모션', 'Studentenförderung', 'Promozione studentesca', 'โปรโมชั่นนักศึกษา', 'Diákösztönzés', 'Promotie voor studenten', 'Promotio discipulus', 'Promosi Mahasiswa', 'Öğrenci Tanıtımı', 'Προώθηση φοιτητών', 'ارتقاء دانشجویی', 'Promosi Pelajar', 'વિદ્યાર્થી બotionતી', 'Promocja studencka', 'Промоція студентів', 'ਵਿਦਿਆਰਥੀ ਤਰੱਕੀ', 'Promovarea studenților', 'Igbega omo ile-iwe', 'Karatun Dalibi'),
(706, 'upload_date', 'Upload Date', 'আপলোড তারিখ', 'Fecha de carga', 'تاريخ الرفع', 'अपलोड की तारीख', 'اپ لوڈ کرنے کی تاریخ', '上传日期', 'アップロード日', 'Data de upload', 'Дата загрузки', 'Date de dépôt', '업로드 날짜', 'Datum des Hochladens', 'Data di caricamento', 'วันที่อัพโหลด', 'Feltöltés dátuma', 'Upload datum', 'Index Date', 'Tanggal Pengunggahan', 'Yükleme tarihi', 'Ημερομηνία ανεβάσματος', 'تاریخ بارگذاری', 'Tarikh muat-naik', 'તારીખ અપલોડ કરો', 'Data przesłania', 'Дата завантаження', 'ਅਪਲੋਡ ਮਿਤੀ', 'Data de incarcare', 'Fa Ọjọ', 'Kwanan Wata'),
(708, 'student_statistics', 'Student Statistics', 'ছাত্র পরিসংখ্যান', 'Estadísticas de estudiantes', 'إحصائيات الطلاب', 'छात्र सांख्यिकी', 'طلباء کے اعدادوشمار', '学生统计', '学生統計', 'Estatísticas dos Alunos', 'Студенческая статистика', 'Statistiques des étudiants', '학생 통계', 'Studentenstatistik', 'Statistica degli studenti', 'สถิตินักศึกษา', 'Hallgatói statisztikák', 'Studentenstatistieken', 'Statistics discipulus', 'Statistik Siswa', 'Öğrenci İstatistikleri', 'Στατιστικές μαθητών', 'آمار دانشجویان', 'Statistik Pelajar', 'વિદ્યાર્થી આંકડા', 'Statystyka studentów', 'Статистика студентів', 'ਵਿਦਿਆਰਥੀ ਅੰਕੜੇ', 'Statisticile studenților', 'Statistiki Ọmọ ile-iwe', 'Isticsididdigar Studentalibai'),
(709, 'mother_information', 'Mother Information', 'মায়ের তথ্য', 'Información de la madre', 'معلومات الأم', 'माँ की जानकारी', 'ماں کی معلومات', '母亲信息', '母親の情報', 'Informações da Mãe', 'Информация Матери', 'Informations sur la mère', '어머니 정보', 'Mutterinformation', 'Informazioni sulla madre', 'ข้อมูลคุณแม่', 'Anya információ', 'Moeder informatie', 'Mater Information', 'Informasi Ibu', 'Ana Bilgi', 'Πληροφορίες για τη μητέρα', 'اطلاعات مادر', 'Maklumat Ibu', 'માતાની માહિતી', 'Informacje o matce', 'Інформація про матір', 'ਮਾਂ ਦੀ ਜਾਣਕਾਰੀ', 'Mama Informații', 'Alaye ti Iya', 'Bayanin Iya'),
(710, 'father_information', 'Father Information', 'বাবার তথ্য', 'Información del padre', 'معلومات الأب', 'पिता की जानकारी', 'والد کی معلومات', '父亲信息', '父の情報', 'Informações do Pai', 'Информация об отце', 'Informations sur le père', '아버지 정보', 'Informationen zum Vater', 'Informazioni sul padre', 'ข้อมูลพ่อ', 'Apák Információ', 'Vader informatie', 'Pater Information', 'Informasi Ayah', 'Baba Bilgileri', 'Πληροφορίες πατέρα', 'اطلاعات پدر', 'Maklumat Bapa', 'પિતાની માહિતી', 'Informacje o ojcu', 'Інформація про батька', 'ਪਿਤਾ ਦੀ ਜਾਣਕਾਰੀ', 'Informații despre părinte', 'Alaye Baba', 'Bayanin Uba'),
(711, 'other_information', 'Other Information', 'অন্যান্য তথ্য', 'Otra información', 'معلومات أخرى', 'अन्य सूचना', 'دوسری معلومات', '其他资讯', 'その他の情報', 'Outra informação', 'Другая информация', 'les autres informations', '기타 정보', 'Andere Informationen', 'Altre informazioni', 'ข้อมูลอื่น ๆ', 'Egyéb információk', 'Andere informatie', 'Alia', 'Informasi lainnya', 'Diğer bilgiler', 'Αλλες πληροφορίες', 'سایر اطلاعات', 'Maklumat lain', 'અન્ય માહિતી', 'Inne informacje', 'Інша інформація', 'ਹੋਰ ਜਾਣਕਾਰੀ', 'Alte informații', 'Alaye miiran', 'Sauran Bayani'),
(712, 'invoice_number', 'Invoice Number', 'চালান নম্বর', 'Numero de factura', 'رقم الفاتورة', 'बीजक संख्या', 'انوائس تعداد', '发票编号', '請求書番号', 'Número da fatura', 'Номер счета', 'Numéro de facture', '송장 번호', 'Rechnungsnummer', 'Numero di fattura', 'เลขใบสั่งของ', 'Számlaszám', 'Factuurnummer', 'cautionem Number', 'Nomor faktur', 'Fatura numarası', 'Αριθμός τιμολογίου', 'شماره فاکتور', 'Nombor invois', 'બીલ નંબર', 'Numer faktury', 'Номер накладної', 'ਚਲਾਨ ਨੰਬਰ', 'Număr de factură', 'Nọmba Invoice', 'Lambar Invoice'),
(714, 'relation_with_guardian', 'Relation With Guardian', 'অভিভাবকের সাথে সম্পর্ক', 'Relación con el tutor', 'العلاقة مع الوصي', 'अभिभावक के साथ संबंध', 'سرپرست کے ساتھ تعلق', '与监护人的关系', '保護者との関係', 'Relação com o Guardião', 'Отношение со Стражем', 'Relation avec Guardian', '보호자와의 관계', 'Beziehung zum Wächter', 'Relazione con il guardiano', 'ความสัมพันธ์กับผู้ปกครอง', 'Kapcsolat a gyámmal', 'Relatie met Guardian', 'In relatione Custodes', 'Hubungan Dengan Wali', 'Vasi ile İlişki', 'Σχέση με τον κηδεμόνα', 'رابطه با نگهبان', 'Perhubungan Dengan Penjaga', 'વાલી સાથે સંબંધ', 'Relacja z opiekunem', 'Зв\'язок із опікуном', 'ਸਰਪ੍ਰਸਤ ਨਾਲ ਸੰਬੰਧ', 'Relația cu gardianul', 'Ifiweranṣẹ Pẹlu Olutọju', 'Siyayya Tare da Guardian'),
(715, 'second_language', 'Second Language', 'দ্বিতীয় ভাষা', 'Segundo lenguaje', 'اللغة الثانية', 'दूसरी भाषा', 'دوسری زبان', '第二语言', '第二言語', 'Segunda língua', 'Второй язык', 'Deuxième langue', '제 2 언어', 'Zweite Sprache', 'Seconda lingua', 'ภาษาที่สอง', 'Második nyelv', 'Tweede taal', 'Lingua secundi', 'Bahasa kedua', 'İkinci dil', 'Δεύτερη γλώσσα', 'زبان دوم', 'Bahasa kedua', 'બીજી ભાષા', 'Drugi język', 'Друга мова', 'ਦੂਜੀ ਭਾਸ਼ਾ', 'A doua limba', 'Ede Keji', 'Harshe Na biyu'),
(716, 'admission_date', 'Admission Date', 'ভর্তির তারিখ', 'Fecha de admisión', 'تاريخ القبول', 'प्रवेश तिथि', 'داخلہ کی تاریخ', '入学日期', '入学日', 'Data de admissão', 'Дата поступления', 'Date d\'admission', '입학 일', 'Aufnahmedatum', 'Data di ammissione', 'วันที่รับสมัคร', 'Felvételi időpont', 'Toelatingsdatum', 'Praesent Date', 'Tanggal Penerimaan', 'Kabul Tarihi', 'Ημερομηνία εισαγωγής', 'تاریخ پذیرش', 'Tarikh Kemasukan', 'પ્રવેશ તારીખ', 'Data przyjęcia', 'Дата прийому', 'ਦਾਖਲਾ ਮਿਤੀ', 'Data admiterii', 'Ọjọ Gbigba', 'Ranar shigowa'),
(718, 'guardian_exist', 'Guardian Exist', 'বিদ্যমান অভিভাবক', 'Guardian Exist', 'الجارديان موجود', 'संरक्षक अस्तित्व', 'سرپرست موجود ہے', '守护者存在', 'ガーディアンの存在', 'O guardião existe', 'Guardian Exist', 'Guardian Exist', '보호자 존재', 'Wächter existiert', 'Esistente guardiano', 'มีการ์เดี้ยนอยู่', 'Guardian létezik', 'Guardian Exist', 'custos est', 'Eksistensi Penjaga', 'Koruyucu Var', 'Υπάρχει φύλακας', 'نگهبان وجود دارد', 'Penjaga Ada', 'વાલી અસ્તિત્વમાં છે', 'Guardian Exist', 'Охоронець існує', 'ਸਰਪ੍ਰਸਤ ਮੌਜੂਦ ਹੈ', 'Gardianul există', 'Oludari Olutọju', 'Mai kula da kasancewar'),
(719, 'is_guardian', 'Is Guardian?', 'অভিভাবক?', 'Es guardián?', 'هل الوصي؟', 'गार्जियन है?', 'گارڈین ہے؟', '是监护人吗？', '保護者ですか？', 'Guardião é?', 'Страж?', 'Est Guardian?', '보호자는?', 'Ist Guardian?', 'Guardian è?', 'เป็นผู้พิทักษ์?', 'Guardian?', 'Is Guardian?', 'Custos est?', 'Apakah Wali?', 'Guardian mı?', 'Είναι ο Guardian;', 'نگهبان است؟', 'Adakah Penjaga?', 'વાલી છે?', 'Czy Guardian?', 'Опікун?', 'ਕੀ ਸਰਪ੍ਰਸਤ ਹੈ?', 'Guardian este?', 'Ṣe Olutọju?', 'Shin Mai Tsaro?'),
(721, 'print_multi_invoice', 'Print Multi Invoice', 'একাধিক চালান মুদ্রণ করুন', 'Imprimir factura múltiple', 'طباعة فاتورة متعددة', 'मल्टी चालान प्रिंट करें', 'ملٹی انوائس پرنٹ کریں', '打印多张发票', 'マルチ請求書を印刷', 'Imprimir fatura múltipla', 'Печать нескольких счетов', 'Imprimer plusieurs factures', '다중 송장 인쇄', 'Multi-Rechnung drucken', 'Stampa fattura multipla', 'พิมพ์ใบแจ้งหนี้หลายใบ', 'Több számla nyomtatása', 'Meerdere facturen afdrukken', 'Multi cautionem Print', 'Cetak Multi Faktur', 'Çoklu Fatura Yazdır', 'Εκτύπωση πολλαπλών τιμολογίων', 'چند فاکتور چاپ کنید', 'Cetak Pelbagai Invois', 'મલ્ટિ ઇન્વોઇસ છાપો', 'Wydrukuj Multi Fakturę', 'Роздрукувати багато рахунків-фактур', 'ਮਲਟੀ ਇਨਵੌਇਸ ਪ੍ਰਿੰਟ ਕਰੋ', 'Tipărire factură multiplu', 'Tẹjade Invoice pupọ', 'Buga Inviice mai yawa'),
(723, 'payment_setting', 'Payment Setting', 'পেমেন্ট সেটিং', 'Configuración de pago', 'إعداد الدفع', 'भुगतान सेटिंग', 'ادائیگی کی ترتیب', '付款设定', 'お支払い設定', 'Configuração de pagamento', 'Настройка оплаты', 'Paramètre de paiement', '결제 설정', 'Zahlungseinstellung', 'Impostazioni di pagamento', 'การตั้งค่าการชำระเงิน', 'Fizetés beállítása', 'Betalingsinstelling', 'Profecti Payment', 'Pengaturan Pembayaran', 'Ödeme Ayarı', 'Ρύθμιση πληρωμής', 'تنظیم پرداخت', 'Tetapan Pembayaran', 'ચુકવણી સેટિંગ', 'Ustawienie płatności', 'Налаштування оплати', 'ਭੁਗਤਾਨ ਸੈਟਿੰਗ', 'Setare de plată', 'Eto Isanwo', 'Saitin Biyan Kuɗi'),
(724, 'sms_setting', 'SMS Setting', 'এসএমএস সেটিং', 'Configuración de SMS', 'إعداد SMS', 'एसएमएस सेटिंग', 'ایس ایم ایس کی ترتیب', '短信设置', 'SMS設定', 'Configuração de SMS', 'Настройка SMS', 'Paramètre SMS', 'SMS 설정', 'SMS-Einstellung', 'Impostazioni SMS', 'การตั้งค่า SMS', 'SMS beállítása', 'SMS-instelling', 'Profecti SMS', 'Pengaturan SMS', 'SMS Ayarı', 'Ρύθμιση SMS', 'تنظیم پیامک', 'Tetapan SMS', 'એસએમએસ સેટિંગ', 'Ustawienia SMS', 'Налаштування SMS', 'ਐਸਐਮਐਸ ਸੈਟਿੰਗ', 'Setare SMS', 'Eto Ṣiṣeto SMS', 'Saitin SMS'),
(725, 'email_setting', 'Email Setting', 'ইমেল সেটিং', 'Configuración de correo electrónico', 'إعداد البريد الإلكتروني', 'ईमेल सेटिंग', 'ای میل کی ترتیب', '电邮设定', 'メール設定', 'Configuração de e-mail', 'Настройка электронной почты', 'Paramètres de messagerie', '이메일 설정', 'E-Mail-Einstellung', 'Impostazioni e-mail', 'การตั้งค่าอีเมล', 'E-mail beállítás', 'E-mailinstellingen', 'Profecti inscriptio', 'Pengaturan Email', 'E-posta Ayarı', 'Ρύθμιση email', 'تنظیم ایمیل', 'Tetapan E-mel', 'ઇમેઇલ સેટિંગ', 'Ustawienia e-mail', 'Налаштування електронної пошти', 'ਈਮੇਲ ਸੈਟਿੰਗ', 'Setare prin e-mail', 'Eto imeeli', 'Saitin Imel'),
(727, 'smtp_host', 'SMTP Host', 'এসএমটিপি হোস্ট', 'Host SMTP', 'مضيف SMTP', 'SMTP होस्ट', 'ایس ایم ٹی پی میزبان', 'SMTP主机', 'SMTPホスト', 'Host SMTP', 'SMTP Host', 'Hôte SMTP', 'SMTP 호스트', 'SMTP-Host', 'Host SMTP', 'โฮสต์ SMTP', 'SMTP Host', 'SMTP-host', 'Populus ESMTP', 'Host SMTP', 'SMTP Ana Bilgisayarı', 'Κεντρικός υπολογιστής SMTP', 'میزبان SMTP', 'Host SMTP', 'એસએમટીપી હોસ્ટ', 'Host SMTP', 'SMTP хост', 'SMTP ਹੋਸਟ', 'Gazdă SMTP', 'Onilejo SMTP', 'SMTP Mai watsa shiri'),
(728, 'smtp_port', 'SMTP Port', 'এসএমটিপি পোর্ট', 'Puerto SMTP', 'منفذ SMTP', 'SMTP पोर्ट', 'ایس ایم ٹی پی پورٹ', 'SMTP端口', 'SMTPポート', 'Porta SMTP', 'Порт SMTP', 'Port SMTP', 'SMTP 포트', 'SMTP-Port', 'Porta SMTP', 'พอร์ต SMTP', 'SMTP-port', 'SMTP-poort', 'Portus ESMTP', 'Port SMTP', 'SMTP Bağlantı Noktası', 'Θύρα SMTP', 'درگاه SMTP', 'Pelabuhan SMTP', 'એસએમટીપી બંદર', 'Port SMTP', 'Порт SMTP', 'ਐਸਐਮਟੀਪੀ ਪੋਰਟ', 'Port SMTP', 'Ibudo SMTP', 'Tashar jiragen ruwa ta SMTP'),
(729, 'smtp_username', 'SMTP Username', 'এসএমটিপি ইউজার নেম', 'Nombre de usuario SMTP', 'اسم مستخدم SMTP', 'SMTP उपयोगकर्ता नाम', 'SMTP صارف نام', 'SMTP用户名', 'SMTPユーザー名', 'Nome de usuário SMTP', 'Имя пользователя SMTP', 'Nom d\'utilisateur SMTP', 'SMTP 사용자 이름', 'SMTP-Benutzername', 'Nome utente SMTP', 'ชื่อผู้ใช้ SMTP', 'SMTP felhasználónév', 'SMTP-gebruikersnaam', 'Username ESMTP', 'Nama Pengguna SMTP', 'SMTP Kullanıcı Adı', 'Όνομα χρήστη SMTP', 'نام کاربری SMTP', 'Nama Pengguna SMTP', 'SMTP વપરાશકર્તા નામ', 'Nazwa użytkownika SMTP', 'Ім\'я користувача SMTP', 'SMTP ਉਪਭੋਗਤਾ ਨਾਮ', 'Nume utilizator SMTP', 'Orukọ olumulo SMTP', 'Sunan Masu amfani da SMTP'),
(730, 'smtp_password', 'SMTP Password', 'এসএমটিপি পাসওয়ার্ড', 'Contraseña SMTP', 'كلمة مرور SMTP', 'SMTP पासवर्ड', 'ایس ایم ٹی پی پاس ورڈ', 'SMTP密码', 'SMTPパスワード', 'Senha SMTP', 'Пароль SMTP', 'Mot de passe SMTP', 'SMTP 비밀번호', 'SMTP-Passwort', 'Password SMTP', 'รหัสผ่าน SMTP', 'SMTP jelszó', 'SMTP-wachtwoord', 'ESMTP Password', 'Kata Sandi SMTP', 'SMTP Parolası', 'Κωδικός πρόσβασης SMTP', 'رمز عبور SMTP', 'Kata Laluan SMTP', 'SMTP પાસવર્ડ', 'Hasło SMTP', 'Пароль SMTP', 'SMTP ਪਾਸਵਰਡ', 'Parola SMTP', 'Ọrọ igbaniwọle SMTP', 'Kalmar sirri ta SMTP'),
(731, 'smtp_security', 'SMTP Security', 'এসএমটিপি সুরক্ষা', 'Seguridad SMTP', 'أمان SMTP', 'SMTP सुरक्षा', 'ایس ایم ٹی پی سیکیورٹی', 'SMTP安全', 'SMTPセキュリティ', 'Segurança SMTP', 'Безопасность SMTP', 'Sécurité SMTP', 'SMTP 보안', 'SMTP-Sicherheit', 'Sicurezza SMTP', 'ความปลอดภัยของ SMTP', 'SMTP biztonság', 'SMTP-beveiliging', 'ESMTP Security', 'Keamanan SMTP', 'SMTP Güvenliği', 'Ασφάλεια SMTP', 'امنیت SMTP', 'Keselamatan SMTP', 'એસએમટીપી સુરક્ષા', 'Bezpieczeństwo SMTP', 'Безпека SMTP', 'SMTP ਸੁਰੱਖਿਆ', 'Securitate SMTP', 'Aabo SMTP', 'SMTP Tsaro'),
(734, 'from_name', 'From Name', 'ফ্রম নাম', 'Del nombre', 'من الاسم', 'नाम से', 'نام سے', '来自名字', '名前から', 'De nome', 'От имени', 'De nom', '이름에서', 'Von Namen', 'Dal nome', 'จากชื่อ', 'Névből', 'Van naam', 'De nomine', 'Dari nama', 'İsimden', 'Από όνομα', 'از نام', 'Dari Nama', 'નામ થી', 'Z nazwy', 'Від Імені', 'ਨਾਮ ਤੋਂ', 'Din Nume', 'Lati Orukọ', 'Daga Suna'),
(735, 'from_email', 'From Email', 'ফ্রম ইমেইল', 'Desde el e-mail', 'من البريد الإلكترونى', 'ई - मेल से', 'ای میل سے', '从电子邮件', 'メールから', 'Do email', 'Из электронной почты', 'De l\'email', '이메일에서', 'Aus der Email', 'Dall\'email', 'จากอีเมล', 'Emailből', 'Van email', 'Email a', 'Dari email', 'E-postadan', 'Από email', 'از ایمیل', 'Dari E-mel', 'ઇમેઇલ દ્વારા', 'Z emaila', 'З електронної пошти', 'ਈਮੇਲ ਤੋਂ', 'De la email', 'Lati Imeeli', 'Daga Imel'),
(736, 'general_setting', 'General Setting', 'সাধারণ সেটিংস', 'Ajustes generales', 'الإعداد العام', 'सामान्य सेटिंग', 'جنرل سیٹنگ', '通用设置', '一般的な設定', 'Configuração geral', 'Общие настройки', 'Réglage général', '일반 설정', 'Allgemeine Einstellung', 'Impostazioni generali', 'การตั้งค่าทั่วไป', 'Általános beállítás', 'Algemene instelling', 'Profecti Generalis', 'Pengaturan umum', 'Genel ayarlar', 'Γενική ρύθμιση', 'تنظیمات عمومی', 'Tetapan Umum', 'જનરલ સેટિંગ', 'Ogólne ustawienia', 'Загальна установка', 'ਜਨਰਲ ਸੈਟਿੰਗ', 'Setări generale', 'Gbogbogbo Eto', 'Janar Saiti'),
(737, 'unpublish_now', 'Unpublish Now', 'এখন অপ্রকাশিত করুন', 'Anular publicación ahora', 'غير منشور الآن', 'अब अप्रकाशित करें', 'ابھی شائع نہیں کریں', '立即取消发布', '今すぐ非公開にする', 'Cancelar publicação agora', 'Отменить публикацию сейчас', 'Annuler la publication maintenant', '지금 게시 취소', 'Jetzt nicht mehr veröffentlichen', 'Non pubblicare ora', 'ยกเลิกการเผยแพร่ตอนนี้', 'Közzététel most', 'Maak de publicatie nu ongedaan', 'Nunc Unpublishway', 'Batalkan publikasi Sekarang', 'Şimdi Yayından Kaldır', 'Κατάργηση δημοσίευσης τώρα', 'اکنون منتشر کنید', 'Nyahterbitkan Sekarang', 'અપ્રકાશિત કરો', 'Cofnij publikację teraz', 'Скасувати публікацію зараз', 'ਹੁਣ ਪ੍ਰਕਾਸ਼ਤ ਨਾ ਕਰੋ', 'Anulează-te acum', 'Kọjade Bayi', 'Bugawa Yanzu'),
(738, 'publish_now', 'Publish Now', 'এখন প্রকাশ করুন', 'Publica ahora', 'نشر الآن', 'अब प्रकाशित करें', 'ابھی شائع کریں', '立即发布', '今すぐ公開', 'Publicar agora', 'Опубликовать сейчас', 'Publier maintenant', '지금 게시', 'Jetzt veröffentlichen', 'Pubblica ora', 'เผยแพร่ตอนนี้', 'Közzététel most', 'Publiceer nu', 'Nunc publish', 'Publikasikan Sekarang', 'Şimdi Yayınla', 'Δημοσίευση τώρα', 'اکنون انتشار دهید', 'Terbitkan Sekarang', 'હમણાં પ્રકાશિત કરો', 'Opublikuj teraz', 'Опублікувати зараз', 'ਹੁਣ ਪਬਲਿਸ਼', 'Publicați acum', 'Ṣe atẹjade Bayi', 'Buga Yanzu'),
(739, 'visitor_purpose', 'Visitor Purpose', 'দর্শনার্থীর উদ্দেশ্য', 'Propósito del visitante', 'غرض الزائر', 'आगंतुक उद्देश्य', 'زائرین کا مقصد', '访客目的', '訪問者の目的', 'Objetivo do visitante', 'Цель посетителя', 'But du visiteur', '방문객 목적', 'Besucherzweck', 'Scopo del visitatore', 'วัตถุประสงค์ของผู้เข้าชม', 'Látogató célja', 'Doel van de bezoeker', 'propositum visitor', 'Tujuan Pengunjung', 'Ziyaretçi Amacı', 'Σκοπός επισκέπτη', 'هدف بازدید کننده', 'Tujuan Pelawat', 'મુલાકાતી હેતુ', 'Cel gościa', 'Мета відвідувача', 'ਵਿਜ਼ਟਰ ਦਾ ਉਦੇਸ਼', 'Scopul vizitatorului', 'Purte Alejo', 'Dalilin Baƙi'),
(740, 'postal_dispatch', 'Postal Dispatch', 'ডাক প্রেরণ', 'Despacho postal', 'الإرسال البريدي', 'डाक डिस्पैच', 'پوسٹل ڈسپیچ', '邮政派遣', '郵便発送', 'Envio postal', 'Почтовая рассылка', 'Envoi postal', '우편 발송', 'Postversand', 'Spedizione postale', 'ส่งไปรษณีย์', 'Postai feladás', 'Postverzending', 'Expedite Zip', 'Pengiriman Pos', 'Posta Gönderimi', 'Ταχυδρομική αποστολή', 'اعزام پستی', 'Penghantaran Pos', 'ટપાલ રવાનગી', 'Wysyłka pocztowa', 'Поштова відправка', 'ਡਾਕ ਭੇਜਣ', 'Expediere poștală', 'Dispatch ifiweranse', 'Sassan Haraji'),
(741, 'postal_receive', 'Postal Receive', 'ডাক প্রাপ্তি', 'Recibir por correo', 'الاستلام البريدي', 'डाक प्राप्त', 'ڈاک وصول', '邮政收据', '郵便受取', 'Recebimento postal', 'Почтовый Получатель', 'Réception postale', '우편 수신', 'Postempfang', 'Ricezione postale', 'รับทางไปรษณีย์', 'Postai fogadás', 'Post ontvangen', 'accipite Zip', 'Menerima Pos', 'Posta Alma', 'Ταχυδρομική λήψη', 'دریافت پستی', 'Pos Terima', 'ટપાલ પ્રાપ્ત', 'Pocztowe Odbieranie', 'Поштова розписка', 'ਡਾਕ ਪ੍ਰਾਪਤ', 'Primire poștală', 'Gbigba ifiweranṣẹ', 'Karɓa Adireshin'),
(742, 'receive_date', 'Receive Date', 'গ্রহণের তারিখ', 'Fecha de recepción', 'تاريخ الإستلام', 'मिली तिथि', 'تاریخ وصول کریں', '收到日期', '受け取り日', 'Data de Recebimento', 'Дата получения', 'date de réception', '수신 일', 'Datum des Empfangens', 'Data di Ricezione', 'รับวันที่', 'Fogadás dátuma', 'Ontvangstdatum', 'accipite Date', 'Terima Tanggal', 'Alış Tarihi', 'Λήψη ημερομηνίας', 'تاریخ دریافت', 'Terima Tarikh', 'તારીખ પ્રાપ્ત કરો', 'Data otrzymania', 'Дата отримання', 'ਮਿਤੀ ਪ੍ਰਾਪਤ ਕਰੋ', 'Data de primire', 'Gba Ọjọ', 'Karɓi Kwanan wata'),
(743, 'leave_type', 'Leave Type', 'ছুটির ধরণ', 'Dejar tipo', 'نوع الإجازة', 'टाइप छोड़ दें', 'رخصتی کی قسم', '休假类型', 'タイプを残す', 'Tipo de licença', 'Тип отпуска', 'Type de congé', '휴가 유형', 'Typ verlassen', 'Lascia il tipo', 'ออกจากประเภท', 'Hagyja típusát', 'Type verlaten', 'Type discede', 'Jenis Cuti', 'İzin Türü', 'Αποχώρηση τύπου', 'Leave Type', 'Jenis Cuti', 'રજા પ્રકાર', 'Zostaw typ', 'Тип відпустки', 'ਛੱਡਣ ਦੀ ਕਿਸਮ', 'Tip de concediu', 'Fi Iru silẹ', 'Barin Nau\'in'),
(744, 'leave_application', 'Leave Application', 'ছুটির আবেদন', 'Deje la aplicación', 'اترك التطبيق', 'छुट्टी की अर्जी', 'چھٹی کی درخواست', '离开应用程序', 'アプリケーションを残す', 'Sair da aplicação', 'Оставить заявку', 'Quitter la demande', '신청서를 남겨주세요', 'Verlassen Anwendung', 'Lascia l\'applicazione', 'ออกจากแอปพลิเคชัน', 'Alkalmazás elhagyása', 'Applicatie verlaten', 'discede Application', 'Tinggalkan Aplikasi', 'Uygulamayı terket', 'Αφήστε την αίτηση', 'برنامه را ترک کنید', 'Permohonan cuti', 'એપ્લિકેશન છોડો', 'Opuść aplikację', 'Залишити заявку', 'ਐਪਲੀਕੇਸ਼ਨ ਛੱਡੋ', 'Aplicația de concediu', 'Fi ohun elo silẹ', 'Bar Aikace-aikacen'),
(745, 'waiting_application', 'Waiting Application', 'অপেক্ষার আবেদন', 'Solicitud de espera', 'انتظار التطبيق', 'प्रतीक्षारत आवेदन', 'انتظار کی درخواست', '等待申请', '待機中のアプリケーション', 'Aguardando inscrição', 'Ожидание Заявки', 'Application en attente', '대기 신청', 'Warten auf Bewerbung', 'Applicazione in attesa', 'รอรับใบสมัคร', 'Várakozó alkalmazás', 'Wachtende applicatie', 'Application Notes', 'Aplikasi Menunggu', 'Bekleyen Başvuru', 'Αίτηση αναμονής', 'در انتظار برنامه', 'Permohonan Menunggu', 'પ્રતીક્ષા પ્રતીક્ષા', 'Aplikacja oczekująca', 'Очікування програми', 'ਉਡੀਕ ਕਾਰਜ', 'Cerere de așteptare', 'Ohun elo durode', 'Aikace-aikacen jira'),
(746, 'approved_application', 'Approved Application', 'অনুমোদিত আবেদন', 'Solicitud aprobada', 'طلب معتمد', 'स्वीकृत आवेदन', 'منظور شدہ درخواست', '批准的申请', '承認されたアプリケーション', 'Inscrição aprovada', 'Утвержденная заявка', 'Demande approuvée', '승인 된 신청', 'Genehmigter Antrag', 'Domanda approvata', 'ใบสมัครที่ได้รับอนุมัติ', 'Jóváhagyott alkalmazás', 'Goedgekeurde aanvraag', 'probatus Application', 'Aplikasi yang Disetujui', 'Onaylı Başvuru', 'Εγκεκριμένη εφαρμογή', 'برنامه تأیید شده', 'Permohonan yang Diluluskan', 'માન્ય એપ્લિકેશન', 'Zatwierdzone zgłoszenie', 'Затверджена заявка', 'ਮਨਜੂਰ ਐਪਲੀਕੇਸ਼ਨ', 'Cerere aprobată', 'Ohun elo ti a fọwọsi', 'Aikace-aikacen da aka yarda'),
(747, 'declined_application', 'Declined Application', 'প্রত্যাখ্যান করা অ্যাপ্লিকেশন', 'Solicitud rechazada', 'التطبيق المرفوض', 'अस्वीकृत आवेदन', 'درخواست مسترد کردی', '申请被拒', '拒否されたアプリケーション', 'Aplicação recusada', 'Отклоненное заявление', 'Demande refusée', '거부 된 신청', 'Abgelehnte Anwendung', 'Applicazione rifiutata', 'ปฏิเสธการสมัคร', 'Elutasított alkalmazás', 'Geweigerde aanvraag', 'Application declinavi ex ea', 'Aplikasi yang Ditolak', 'Reddedilen Uygulama', 'Απορρίφθηκε η αίτηση', 'برنامه رد شد', 'Permohonan Ditolak', 'અરજી નામંજૂર', 'Odrzucona aplikacja', 'Відхилено заявку', 'ਅਸਵੀਕਾਰ ਕਰ ਦਿੱਤਾ', 'Aplicație declinată', 'Ohun elo Kọ', 'Aikace-aikacen da aka ki'),
(748, 'application_date', 'Application Date', 'আবেদনের তারিখ', 'Fecha de aplicacion', 'تاريخ تقديم الطلب', 'आवेदन तिथि', 'تاریخ درخواست', '申请日期', '出願日', 'Data da inscrição', 'Дата подачи заявки', 'Date de la demande', '지원 날짜', 'Antragsdatum', 'Data di applicazione', 'วันรับสมัคร', 'Jelentkezési dátum', 'Aanvraagdatum', 'application Date', 'Tanggal Aplikasi', 'Başvuru tarihi', 'Ημερομηνία αίτησης', 'تاریخ برنامه', 'Tarikh Permohonan', 'અરજી તારીખ', 'Termin składania wniosków', 'Дата подання заявки', 'ਅਰਜ਼ੀ ਦੀ ਮਿਤੀ', 'Data aplicării', 'Ọjọ Ohun elo', 'Kwanan Aikace-aikacen'),
(750, 'student_type', 'Student Type', 'শিক্ষার্থী প্রকার', 'Tipo de estudiante', 'نوع الطالب', 'छात्र प्रकार', 'طالب علم کی قسم', '学生类型', '学生タイプ', 'Tipo de aluno', 'Тип студента', 'Type d\'élève', '학생 유형', 'Schülertyp', 'Tipo di studente', 'ประเภทนักศึกษา', 'Diák típusa', 'Type student', 'Type discipulus', 'Tipe Siswa', 'Öğrenci Türü', 'Τύπος μαθητή', 'نوع دانشجویی', 'Jenis Pelajar', 'વિદ્યાર્થી પ્રકાર', 'Rodzaj studenta', 'Тип студента', 'ਵਿਦਿਆਰਥੀ ਦੀ ਕਿਸਮ', 'Tip de student', 'Ọmọ ile-iwe', 'Nau\'in Dalibi'),
(751, 'student_list', 'Student List', 'ছাত্র তালিকা', 'Lista de estudiantes', 'قائمة الطلاب', 'छात्र सूची', 'طلباء کی فہرست', '学生名单', '学生リスト', 'Lista de Alunos', 'Список студентов', 'Liste des étudiants', '학생 목록', 'Studentenliste', 'Elenco studenti', 'รายชื่อนักเรียน', 'Diáklista', 'Studentenlijst', 'List discipulus', 'Daftar Siswa', 'Öğrenci Listesi', 'Λίστα μαθητών', 'لیست دانشجویان', 'Senarai Pelajar', 'વિદ્યાર્થી યાદી', 'Lista studentów', 'Список студентів', 'ਵਿਦਿਆਰਥੀ ਸੂਚੀ', 'Lista studenților', 'Akojọ ọmọ ile-iwe', 'Jerin Dalibi'),
(752, 'admit_student', 'Admit Student', 'ভর্তি ছাত্র', 'Admitir estudiante', 'قبول الطالب', 'एडमिट स्टूडेंट', 'طالب علم داخل کرو', '录取学生', '学生を認める', 'Admita Aluno', 'Впустить студента', 'Admettre un étudiant', '학생 입학', 'Student aufnehmen', 'Ammetti Studente', 'รับนักศึกษา', 'Adja be a hallgatót', 'Geef student toe', 'Discipulus fateri', 'Akui Siswa', 'Öğrenci Kabulü', 'Αποδοχή μαθητή', 'قبول دانشجو', 'Akui Pelajar', 'વિદ્યાર્થી પ્રવેશ', 'Przyznaj ucznia', 'Прийміть студента', 'ਦਾਖਲਾ ਵਿਦਿਆਰਥੀ', 'Admite student', 'Gba ọmọ ile-iwe gba', 'Yarda da Dalibin'),
(753, 'bulk_admission', 'Bulk Admission', 'বাল্ক ভর্তি', 'Admisión masiva', 'القبول بالجملة', 'थोक प्रवेश', 'بلک داخلہ', '批量入场', '一括入場', 'Admissão em massa', 'Массовый прием', 'Admission en vrac', '대량 입학', 'Masseneintritt', 'Ammissione in blocco', 'การรับเข้าจำนวนมาก', 'Tömeges belépés', 'Bulktoegang', 'Praesent mole', 'Penerimaan Massal', 'Toplu Kabul', 'Μαζική είσοδος', 'پذیرش فله', 'Kemasukan Pukal', 'બલ્ક પ્રવેશ', 'Wstęp masowy', 'Масовий прийом', 'ਥੋਕ ਦਾਖਲਾ', 'Admitere în masă', 'Gbigbani Pupọ', 'Kaddamar da Girma'),
(754, 'online_admission', 'Online Admission', 'অনলাইন ভর্তি', 'Admisión en línea', 'القبول عبر الإنترنت', 'ऑनलाइन प्रवेश', 'آن لائن داخلہ', '网上入场', 'オンライン入場', 'Admissão Online', 'Онлайн прием', 'dmission en ligne', '온라인 입학', 'Online-Zulassung', 'Ammissione online', 'รับสมัครออนไลน์รับสมัครออนไลน์', 'Online belépés', 'Online toelating', 'Praesent Online', 'Pendaftaran Online', 'Online Kabul', 'Ηλεκτρονική είσοδος', 'پذیرش آنلاین', 'Kemasukan Dalam Talian', 'ઓનલાઇન પ્રવેશ', 'Wstęp online', 'Інтернет-прийом', 'ਆਨਲਾਈਨ ਦਾਖਲਾ', 'Admitere online', 'Gbigba wọle lori Ayelujara', 'Kudin shiga yanar gizo'),
(755, 'student_activity', 'Student Activity', 'ছাত্রদের ক্রিয়াকলাপ', 'Actividad estudiantil', 'نشاط الطالب', 'छात्र गतिविधि', 'طلبا کی سرگرمی', '学生活动', '学生の活動', 'Atividade do aluno', 'Студенческая деятельность', 'Activité étudiante', '학생 활동', 'Schüleraktivität', 'Attività studentesca', 'กิจกรรมนักศึกษา', 'Hallgatói tevékenység', 'Student Activiteit', 'Actio discipulus', 'Kegiatan Siswa', 'Öğrenci Etkinliği', 'Δραστηριότητα μαθητή', 'فعالیت دانشجویی', 'Aktiviti Pelajar', 'વિદ્યાર્થી પ્રવૃત્તિ', 'Aktywność studencka', 'Діяльність студентів', 'ਵਿਦਿਆਰਥੀ ਗਤੀਵਿਧੀ', 'Activitatea studenților', 'Iṣẹ-ṣiṣe ọmọ ile-iwe', 'Aikin Dalibi'),
(756, 'student_attendance', 'Student Attendance', 'শিক্ষার্থীদের উপস্থিতি', 'Asistencia estudiantil', 'حضور الطالب', 'छात्र उपस्थिति', 'طلباء کی حاضری', '学生出勤', '学生の出席', 'Participação do aluno', 'Посещаемость студентов', 'Fréquentation des étudiants', '학생 출석', 'Teilnahme von Studenten', 'Frequenza degli studenti', 'การเข้างานของนักเรียน', 'Diákok jelenléte', 'Aanwezigheid van studenten', 'Attendance discipulus', 'Kehadiran Mahasiswa', 'Öğrenci Katılımı', 'Φοιτητική φοίτηση', 'حضور دانشجو', 'Kehadiran Pelajar', 'વિદ્યાર્થીઓની હાજરી', 'Obecność studentów', 'Відвідуваність студентів', 'ਵਿਦਿਆਰਥੀਆਂ ਦੀ ਹਾਜ਼ਰੀ', 'Participarea studenților', 'Wiwa akeko', 'Halartar Dalibi'),
(757, 'teacher_attendance', 'Teacher Attendance', 'শিক্ষক উপস্থিতি', 'Asistencia del maestro', 'حضور المعلم', 'शिक्षक की उपस्थिति', 'اساتذہ کی حاضری', '教师出勤', '教師の出席', 'Participação do Professor', 'Посещаемость учителей', 'Présence des enseignants', '교사 출석', 'Teilnahme des Lehrers', 'Frequenza dell\'insegnante', 'การเข้าร่วมประชุมของครู', 'Tanári jelenlét', 'Aanwezigheid van de leraar', 'magister Attendance', 'Kehadiran Guru', 'Öğretmen Katılımı', 'Παρακολούθηση δασκάλου', 'حضور معلم', 'Kehadiran Guru', 'શિક્ષકની હાજરી', 'Obecność nauczyciela', 'Відвідуваність вчителя', 'ਅਧਿਆਪਕ ਦੀ ਹਾਜ਼ਰੀ', 'Participarea profesorilor', 'Wiwa Olukọ', 'Halartar Malami'),
(758, 'employee_attendance', 'Employee Attendance', 'কর্মচারী উপস্থিতি', 'Asistencia de empleados', 'حضور الموظف', 'कर्मचारी की उपस्थिति', 'ملازمین کی حاضری', '员工出勤', '従業員の出席', 'Participação dos funcionários', 'Посещаемость сотрудника', 'Présence des employés', '직원 출석', 'Mitarbeiterbetreuung', 'Partecipazione dei dipendenti', 'การเข้าร่วมประชุมของพนักงาน', 'Munkavállalói jelenlét', 'Aanwezigheid van werknemers', 'Aliquam Attendance', 'Kehadiran Karyawan', 'Çalışan Katılımı', 'Συμμετοχή εργαζομένων', 'حضور و غیاب کارمندان', 'Kehadiran Pekerja', 'કર્મચારીની હાજરી', 'Obecność pracowników', 'Відвідуваність працівників', 'ਕਰਮਚਾਰੀ ਦੀ ਹਾਜ਼ਰੀ', 'Participarea angajaților', 'Wiwa si Oṣiṣẹ', 'Halartar Ma’aikata'),
(759, 'sms_template', 'SMS Template', 'এসএমএস টেম্পলেট', 'Plantilla de SMS', 'قالب SMS', 'एसएमएस टेम्पलेट', 'ایس ایم ایس ٹیمپلیٹ', '短信模板', 'SMSテンプレート', 'Modelo SMS', 'Шаблон SMS', 'Modèle SMS', 'SMS 템플릿', 'SMS-Vorlage', 'Modello SMS', 'เทมเพลต SMS', 'SMS sablon', 'SMS-sjabloon', 'Formula SMS', 'Template SMS', 'SMS Şablonu', 'Πρότυπο SMS', 'الگوی پیام کوتاه', 'Templat SMS', 'એસએમએસ Templateાંચો', 'Szablon SMS', 'Шаблон SMS', 'ਐਸਐਮਐਸ ਟੈਂਪਲੇਟ', 'Șablon SMS', 'SMS Awoṣe', 'Tsarin SMS'),
(760, 'email_template', 'Email Template', 'ইমেল টেম্পলেট', 'Plantilla de correo electrónico', 'قالب البريد الإلكتروني', 'ईमेल टेम्पलेट', 'ای میل سانچہ', '电子邮件范本', 'メールテンプレート', 'Modelo de email', 'Шаблон электронной почты', 'Modèle d\'e-mail', '이메일 템플릿', 'E-Mail-Vorlage', 'Modello e-mail', 'เทมเพลตอีเมล', 'E-mail sablon', 'Email sjabloon', 'Email Template', 'Template Email', 'E-posta şablonu', 'Πρότυπο ηλεκτρονικού ταχυδρομείου', 'الگوی ایمیل', 'Templat E-mel', 'ઇમેઇલ .ાંચો', 'Szablon e-maila', 'Шаблон електронної пошти', 'ਈਮੇਲ ਟੈਪਲੇਟ', 'Model de e-mail', 'Imeeli Awoṣe', 'Shafin imel'),
(761, 'result_email', 'Result Email', 'ফলাফল ইমেল', 'Correo electrónico de resultados', 'نتيجة البريد الإلكتروني', 'परिणाम ईमेल', 'نتیجہ ای میل', '结果电子邮件', '結果メール', 'E-mail do resultado', 'Электронный адрес результата', 'Courriel du résultat', '결과 이메일', 'Ergebnis E-Mail', 'Risultato Email', 'อีเมลผลลัพธ์', 'E-mail', 'E-mail met resultaat', 'Email result', 'Email Hasil', 'Sonuç E-postası', 'Αποτέλεσμα Email', 'ایمیل نتیجه', 'Hasil E-mel', 'પરિણામ ઇમેઇલ', 'E-mail wynikowy', 'Результат електронної пошти', 'ਨਤੀਜਾ ਈ', 'Rezultat e-mail', 'Esi Esi', 'Sakamakon Sakamakon imel'),
(762, 'result_sms', 'Result SMS', 'ফলাফল এসএমএস', 'SMS de resultado', 'نتيجة SMS', 'परिणाम एसएमएस', 'نتیجہ ایس ایم ایس', '结果短信', '結果SMS', 'Resultado SMS', 'Результат СМС', 'SMS de résultat', '결과 SMS', 'Ergebnis SMS', 'SMS di risultato', 'SMS ผลลัพธ์', 'Eredmény SMS', 'Resultaat sms', 'effectus SMS', 'SMS hasil', 'Sonuç SMS\'i', 'Αποτέλεσμα SMS', 'پیام کوتاه', 'Hasil SMS', 'પરિણામ એસએમએસ', 'Wynikowy SMS', 'Результат SMS', 'ਨਤੀਜਾ ਐਸਐਮਐਸ', 'SMS rezultat', 'Esi Esi', 'Sakamakon Sakamako'),
(763, 'send_email', 'Send Email', 'ইমেইল পাঠান', 'Enviar correo electrónico', 'ارسل بريد الكتروني', 'ईमेल भेजें', 'ای میل بھیجیں', '发电子邮件', 'メールを送る', 'Enviar email', 'Отправить письмо', 'Envoyer un e-mail', '이메일을 보내', 'E-Mail senden', 'Invia una email', 'ส่งอีเมล', 'Küldjön e-mailt', 'E-mail verzenden', 'Mittere email', 'Mengirim email', 'Eposta gönder', 'Να στείλετε e-mail', 'ایمیل بفرست', 'Menghantar e-mel', 'ઈ - મેલ મોકલો', 'Wysłać email', 'Відправити лист', 'ਈਮੇਲ ਭੇਜੋ', 'Trimite email', 'Firanṣẹ Imeeli', 'Aika Imel'),
(764, 'send_sms', 'Send SMS', 'এসএমএস পাঠান', 'Enviar SMS', 'أرسل رسالة نصية قصيرة', 'संदेश भेजो', 'SMS بھیجیں', '发送短信', 'SMSを送信', 'Enviar SMS', 'Отправить смс', 'Envoyer un SMS', '문자를 보내다', 'SMS senden', 'Inviare SMS', 'ส่ง SMS', 'SMS-t küldeni', 'Verstuur sms', 'mittere SMS', 'Kirim SMS', 'SMS gönder', 'Αποστολή SMS', 'ارسال پیامک', 'Hantar SMS', 'એસએમએસ મોકલો', 'Wyślij SMS', 'Надіслати SMS', 'ਐਸਐਮਐਸ ਭੇਜੋ', 'Trimite SMS', 'Firanṣẹ SMS', 'Aika SMS'),
(767, 'due_fee_email', 'Due Fee Email', 'বকেয়া ফি ইমেল', 'Cargo por correo electrónico', 'البريد الإلكتروني لرسوم الاستحقاق', 'देय शुल्क ईमेल', 'واجب الادا ای میل', '应付费用电子邮件', '支払い手数料メール', 'E-mail da taxa devida', 'Электронный адрес', 'E-mail des frais dus', '회비 이메일', 'E-Mail mit fälliger Gebühr', 'Email dovuta', 'อีเมลค่าธรรมเนียมที่ครบกำหนด', 'Esedékes díj e-mail', 'E-mail met verschuldigde vergoeding', 'Ob pretium Email', 'Email Biaya Hutang', 'Ödenmesi Gereken Ücret E-postası', 'Ηλεκτρονικό ταχυδρομείο προθεσμίας', 'ایمیل هزینه پرداختی', 'E-mel Bayaran Hutang', 'ફી ફી ઇમેઇલ', 'E-mail z należną opłatą', 'Належна плата за електронну пошту', 'ਬਕਾਇਆ ਫੀਸ ਈ', 'E-mail cu plată', 'Nitori Imeeli isanwo', 'Sakamakon kudin imel'),
(768, 'due_fee_sms', 'Due Fee SMS', 'পারিশ্রমিক ফি এসএমএস', 'Cuota debida SMS', 'SMS رسوم الرسوم', 'देय शुल्क एसएमएस', 'واجب الادا ایس ایم ایس', '应付费用短信', '会費SMS', 'SMS de taxa de vencimento', 'Причитающаяся плата за SMS', 'SMS à payer', '회비 SMS', 'Fällige Gebühr SMS', 'SMS dovuti', 'ค่าธรรมเนียม SMS', 'Esedékes díj SMS', 'Verschuldigde sms', 'Ob pretium SMS', 'SMS Biaya Jatuh Tempo', 'Ödenmesi Gereken Ücret SMS\'i', 'Προθεσμία SMS', 'اس ام اس موقت', 'SMS Bayaran Hutang', 'ફી ફી એસએમએસ', 'Opłata za SMS', 'Сплата SMS', 'ਫੀਸ ਦੇ ਐਸ.ਐਮ.ਐੱਸ', 'SMS-uri cu taxă', 'Nitori Fee SMS', 'Sakamakon kudin SMS'),
(769, 'absent_email', 'Absent Email', 'অনুপস্থিত ইমেল', 'Correo electrónico ausente', 'البريد الإلكتروني غير موجود', 'ईमेल अनुपस्थित है', 'غیر حاضر ای میل', '缺席电子邮件', 'メールがない', 'E-mail ausente', 'Отсутствующая электронная почта', 'E-mail absent', '결석 이메일', 'Fehlende E-Mail', 'Email assente', 'ไม่มีอีเมล', 'Nincs e-mail', 'Afwezige e-mail', 'absens Email', 'Email Tidak Ada', 'E-posta Yok', 'Απουσία email', 'پست الکترونیکی غایب', 'E-mel Tidak Ada', 'ગેરહાજર ઇમેઇલ', 'Nieobecny e-mail', 'Відсутня електронна пошта', 'ਗੈਰਹਾਜ਼ਰ ਈਮੇਲ', 'E-mail absent', 'Imeeli asan', 'Email ba ya nan'),
(770, 'absent_sms', 'Absent SMS', 'অনুপস্থিত এসএমএস', 'SMS ausentes', 'SMS غائب', 'अनुपस्थित एसएमएस', 'غیر حاضر ایس ایم ایس', '短信缺失', 'SMSがない', 'SMS ausente', 'Отсутствующие СМС', 'SMS absent', '부재중 SMS', 'Fehlende SMS', 'SMS assente', 'ไม่มี SMS', 'Nincs SMS', 'Afwezig SMS', 'absens SMS', 'Tidak ada SMS', 'SMS yok', 'Απουσία SMS', 'پیامک غایب', 'Tidak ada SMS', 'ગેરહાજર એસ.એમ.એસ.', 'Nieobecny SMS', 'Відсутні SMS', 'ਗੈਰਹਾਜ਼ਰ ਐਸ.ਐਮ.ਐਸ.', 'SMS absente', 'Sọrọ SMS', 'SMS ba ya nan'),
(771, 'absent_date', 'Absent Date', 'অনুপস্থিত তারিখ', 'Fecha de ausencia', 'تاريخ غائب', 'अनुपस्थित तिथि', 'غائب تاریخ', '缺席日期', '欠席日', 'Data de ausência', 'Дата отсутствия', 'Date d\'absence', '결석 일', 'Fehlendes Datum', 'Data assente', 'วันที่ไม่มา', 'Hiányzó dátum', 'Afwezige datum', 'absens Date', 'Tanggal Tidak Ada', 'Bitiş Tarihi', 'Απουσία ημερομηνίας', 'تاریخ غایب', 'Tarikh Tidak hadir', 'ગેરહાજર રહેવાની તારીખ', 'Data nieobecności', 'Відсутня дата', 'ਗੈਰਹਾਜ਼ਰ ਤਾਰੀਖ', 'Data absenței', 'Ọjọ isanmọ', 'Kwanan Wata'),
(772, 'exam_schedule', 'Exam Schedule', 'পরীক্ষার সময়সূচী', 'Calendario de exámenes', 'جدول الامتحانات', 'परीक्षा अनुसूची', 'امتحان کا نظام الاوقات', '考试时间表', '試験スケジュール', 'Horário do exame', 'Расписание экзаменов', 'Calendrier des examens', '시험 일정', 'Prüfungsplan', 'Programma degli esami', 'ตารางสอบ', 'Vizsga ütemezése', 'Examenrooster', 'Morbi rhoncus nito', 'Jadwal Ujian', 'Sınav Takvimi', 'Πρόγραμμα εξετάσεων', 'برنامه آزمون', 'Jadual Peperiksaan', 'પરીક્ષાનું સમયપત્રક', 'Harmonogram egzaminów', 'Розклад іспитів', 'ਪ੍ਰੀਖਿਆ ਦਾ ਕਾਰਜਕਾਲ', 'Programul examenelor', 'Iṣeto Idanwo', 'Jadawalin jarrabawa'),
(773, 'exam_suggestion', 'Exam Suggestion', 'পরীক্ষার পরামর্শ', 'Sugerencia de examen', 'اقتراح الامتحان', 'परीक्षा का सुझाव', 'امتحان کی تجویز', '考试建议', '試験の提案', 'Sugestão de exame', 'Предложение экзамена', 'Suggestion d\'examen', '시험 제안', 'Prüfungsvorschlag', 'Suggerimento dell\'esame', 'ข้อแนะนำในการสอบ', 'Vizsgajavaslat', 'Examen suggestie', 'nito Suggestion', 'Saran ujian', 'Sınav Önerisi', 'Πρόταση εξετάσεων', 'پیشنهاد آزمون', 'Cadangan Peperiksaan', 'પરીક્ષાનું સૂચન', 'Sugestia egzaminacyjna', 'Пропозиція до іспиту', 'ਪ੍ਰੀਖਿਆ ਸੁਝਾਅ', 'Sugestie de examen', 'Aba aba ayewo', 'Shawara ta Gwaji'),
(774, 'exam_attendance', 'Exam Attendance', 'পরীক্ষার উপস্থিতি', 'Asistencia al examen', 'حضور الامتحان', 'परीक्षा में उपस्थिति', 'امتحان میں حاضری', '考试参加', '試験出席', 'Participação no Exame', 'Посещаемость экзамена', 'Participation aux examens', '시험 출석', 'Teilnahme an der Prüfung', 'Partecipazione all\'esame', 'การเข้าสอบ', 'Vizsga részvétel', 'Aanwezigheid bij het examen', 'nito Attendance', 'Kehadiran ujian', 'Sınava Katılım', 'Συμμετοχή στις εξετάσεις', 'حضور در آزمون', 'Kehadiran Peperiksaan', 'પરીક્ષાની હાજરી', 'Obecność na egzaminie', 'Навчання на іспиті', 'ਪ੍ਰੀਖਿਆ ਹਾਜ਼ਰੀ', 'Participarea la examene', 'Wiwa wiwa', 'Kasancewa na Jarrabawa'),
(775, 'exam_term_result', 'Exam Term Result', 'পরীক্ষার টার্ম ফলাফল', 'Resultado del examen', 'نتيجة مصطلح الامتحان', 'परीक्षा शब्द का परिणाम', 'امتحان کی مدت کا نتیجہ', '考试学期成绩', '試験期間結果', 'Resultado do Exame', 'Экзамен Срок Результат', 'Résultat de l\'examen', '시험 기간 결과', 'Prüfungssemestergebnis', 'Risultato del termine dell\'esame', 'ผลสอบ', 'Vizsgaidő', 'Examen Term Resultaat', 'Term nito results', 'Hasil Jangka Waktu Ujian', 'Sınav Dönemi Sonucu', 'Αποτέλεσμα της εξέτασης', 'نتیجه ترم آزمون', 'Keputusan Jangka Masa Peperiksaan', 'પરીક્ષાનું ટર્મ પરિણામ', 'Wynik semestru egzaminacyjnego', 'Результат іспиту', 'ਪ੍ਰੀਖਿਆ ਮਿਆਦ ਦੇ ਨਤੀਜੇ', 'Rezultatul termenului examenului', 'Esi Idaduro Akoko', 'Sakamakon Gwajin gwaji'),
(776, 'certificate_type', 'Certificate Type', 'সনদপত্র ধরণ', 'tipo de certificado', 'نوع الشهادة', 'प्रमाणपत्र का प्रकार', 'سند کی قسم', '证书类别', '証明書の種類', 'tipo de certificado', 'Тип сертификата', 'Type de certificat', '증명서 종류', 'Art des Zertifikats', 'Tipo di certificato', 'ประเภทใบรับรอง', 'Tanúsítvány típusa', 'Certificaattype', 'libellum Type', 'Tipe Sertifikat', 'Sertifika Türü', 'Τύπος πιστοποιητικού', 'نوع گواهینامه', 'Jenis Sijil', 'પ્રમાણપત્રનો પ્રકાર', 'Typ Certyfikatu', 'Тип сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਦੀ ਕਿਸਮ', 'Tip de certificat', 'Iru Ijẹrisi', 'Nau\'in Shaida'),
(777, 'certificate_name', 'Certificate Name', 'সনদপত্রের  নাম', 'Nombre del certificado', 'اسم الشهادة', 'प्रमाण - पत्र नाम', 'سند نام', '证书名称', '証明書名', 'nome válido', 'Название сертификата', 'Nom du certificat', '인증서 이름', 'Zertifikatname', 'Nome del certificato', 'ชื่อใบรับรอง', 'Tanúsítvány neve', 'Certificaatnaam', 'libellum nomine', 'Nama sertifikat', 'Sertifika Adı', 'Όνομα πιστοποιητικού', 'نام گواهی', 'Nama Sijil', 'પ્રમાણપત્ર નામ', 'Nazwa certyfikatu', 'Назва сертифіката', 'ਸਰਟੀਫਿਕੇਟ ਦਾ ਨਾਮ', 'Numele certificatului', 'Orukọ ijẹrisi', 'Sunan Takaddun shaida'),
(778, 'generate_certificate', 'Generate Certificate', 'সনদপত্র  তৈরি করুন', 'Generar certificado', 'إنشاء شهادة', 'सर्टिफिकेट जनरेट करें', 'سند بنائیں', '生成证书', '証明書を生成', 'Gerar certificado', 'Создать сертификат', 'Générer un certificat', '인증서 생성', 'Zertifikat generieren', 'Genera certificato', 'สร้างใบรับรอง', 'Létrehoz tanúsítványt', 'Genereer certificaat', 'Quisque generate', 'Hasilkan Sertifikat', 'Sertifika Oluştur', 'Δημιουργία πιστοποιητικού', 'تولید گواهی', 'Hasilkan Sijil', 'પ્રમાણપત્ર બનાવો', 'Wygeneruj certyfikat', 'Створити сертифікат', 'ਸਰਟੀਫਿਕੇਟ ਬਣਾਓ', 'Generați certificatul', 'Ina ijẹrisi', 'Haɓaka Takaddun shaida'),
(779, 'library_member', 'Library Member', 'গ্রন্থাগার সদস্য', 'Miembro de la biblioteca', 'عضو المكتبة', 'पुस्तकालय सदस्य', 'لائبریری ممبر', '图书馆会员', '図書館員', 'Membro da biblioteca', 'Член библиотеки', 'Membre de la bibliothèque', '도서관 회원', 'Bibliotheksmitglied', 'Membro della biblioteca', 'สมาชิกห้องสมุด', 'Könyvtári tag', 'Bibliotheeklid', 'bibliotheca Member', 'Anggota Perpustakaan', 'Kütüphane Üyesi', 'Μέλος βιβλιοθήκης', 'Library Member', 'Ahli Perpustakaan', 'પુસ્તકાલય સભ્ય', 'Członek biblioteki', 'Член бібліотеки', 'ਲਾਇਬ੍ਰੇਰੀ ਮੈਂਬਰ', 'Membru al bibliotecii', 'Ọmọ ẹgbẹ Ile-ikawe', 'Member ɗakin karatu'),
(780, 'transport_member', 'Transport Member', 'পরিবহন সদস্য', 'Miembro de transporte', 'عضو النقل', 'परिवहन सदस्य', 'ٹرانسپورٹ ممبر', '运输会员', '輸送メンバー', 'Membro de transporte', 'Транспортный участник', 'Membre Transport', '운송 회원', 'Transportmitglied', 'Membro dei trasporti', 'สมาชิกขนส่ง', 'Közlekedési tag', 'Transportlid', 'onerariam Member', 'Anggota Transport', 'Nakliye Üyesi', 'Μέλος μεταφοράς', 'عضو حمل و نقل', 'Anggota Pengangkutan', 'પરિવહન સભ્ય', 'Członek transportu', 'Член транспорту', 'ਟਰਾਂਸਪੋਰਟ ਸਦੱਸ', 'Membru Transport', 'Member ọkọ', 'Member Kai Tsaye'),
(781, 'hostel_member', 'Hostel Member', 'ছাত্রাবাস সদস্য', 'Miembro del albergue', 'عضو نزل', 'छात्रावास सदस्य', 'ہاسٹل ممبر', '宿舍会员', 'ホステルメンバー', 'Membro do Hostel', 'Хостел Member', 'Membre de l\'auberge', '호스텔 멤버', 'Hostel Mitglied', 'Membro dell\'ostello', 'สมาชิกหอพัก', 'Hostel tag', 'Lid van het hostel', 'Member Hostel', 'Anggota Hostel', 'Pansiyon Üyesi', 'Μέλος του ξενώνα', 'عضو خوابگاه', 'Ahli Asrama', 'છાત્રાલય સભ્ય', 'Członek Hostelu', 'Член гуртожитку', 'ਹੋਸਟਲ ਮੈਂਬਰ', 'Membru de pensiune', 'Omo egbe Alejo', 'Member Member'),
(782, 'complain_type', 'Complain Type', 'অভিযোগের ধরণ', 'Tipo de queja', 'نوع الشكوى', 'शिकायत प्रकार', 'شکایت کی قسم', '投诉类型', '苦情の種類', 'Tipo de Reclamação', 'Пожаловаться тип', 'Type de plainte', '불만 유형', 'Beschwerde Typ', 'Tipo di reclamo', 'ประเภทร้องเรียน', 'Panasz típusa', 'Klachttype', 'queri Type', 'Jenis Keluhan', 'Şikayet Tipi', 'Τύπος παραπόνου', 'نوع شکایت', 'Jenis Aduan', 'ફરિયાદ પ્રકાર', 'Rodzaj reklamacji', 'Тип скарги', 'ਸ਼ਿਕਾਇਤ ਕਿਸਮ', 'Tip de reclamație', 'Iru Ìráhùn', 'Nau\'in koke'),
(783, 'complain_by', 'Complain By', 'অভিযোগকারী', 'Quejarse por', 'يشكو بواسطة', 'द्वारा शिकायत करें', 'بذریعہ شکایت', '投诉人', '不平', 'Reclamar por', 'Пожаловаться на', 'Se plaindre par', '에 의해 불평', 'Beschweren Sie sich durch', 'Protesta da', 'บ่นโดย', 'Panaszkodó', 'Klagen door', 'per queri', 'Diadukan oleh', 'Şikayetçi', 'Παράπονο από', 'شکایت توسط', 'Mengadu Oleh', 'દ્વારા ફરિયાદ કરો', 'Skarżyć się', 'Поскаржитися на', 'ਦੁਆਰਾ ਸ਼ਿਕਾਇਤ', 'Reclama prin', 'Figagbaga Nipa', 'Gunaguni Ta'),
(784, 'complain_date', 'Complain Date', 'অভিযোগের তারিখ', 'Fecha de queja', 'تاريخ الشكوى', 'शिकायत की तारीख', 'شکایت کی تاریخ', '投诉日期', '苦情の日付', 'Data da Reclamação', 'Пожаловаться на дату', 'Date de plainte', '불만 날짜', 'Beschwerdedatum', 'Data di reclamo', 'วันที่ร้องเรียน', 'Panasz dátuma', 'Klacht Datum', 'queri Date', 'Tanggal Keluhan', 'Şikayet Tarihi', 'Ημερομηνία καταγγελίας', 'تاریخ شکایت', 'Tarikh Aduan', 'ફરિયાદ તારીખ', 'Data złożenia skargi', 'Дата скарги', 'ਸ਼ਿਕਾਇਤ ਦੀ ਮਿਤੀ', 'Data reclamației', 'Ọjọ Ìráhùn', 'Ranar Kara'),
(785, 'action_date', 'Action Date', 'অ্যাকশন তারিখ', 'Fecha de acción', 'تاريخ الإجراء', 'लड़ाई की तारीख', 'کارروائی کی تاریخ', '动作日期', '行動日', 'Data da ação', 'Дата действия', 'Date de l\'action', '행동 날짜', 'Aktionsdatum', 'Data dell\'azione', 'วันที่ดำเนินการ', 'Akció dátuma', 'Actiedatum', 'actio Date', 'Tanggal Aksi', 'İşlem Tarihi', 'Ημερομηνία δράσης', 'تاریخ اقدام', 'Tarikh Tindakan', 'ક્રિયા તારીખ', 'Data działania', 'Дата дії', 'ਕਾਰਵਾਈ ਦੀ ਮਿਤੀ', 'Data acțiunii', 'Ọjọ Ise', 'Ranar Aiki'),
(786, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'Estado de pago', 'حالة السداد', 'भुगतान की स्थिति', 'ادائیگی کی حیثیت', '支付状态', '支払い状況', 'Status do pagamento', 'Статус платежа', 'Statut de paiement', '지불 상태', 'Zahlungsstatus', 'Stato del pagamento', 'สถานะการชำระเงิน', 'Fizetési állapot', 'Betalingsstatus', 'Status Payment', 'Status pembayaran', 'Ödeme Durumu', 'Κατάσταση πληρωμής', 'وضعیت پرداخت', 'Status bayaran', 'ચુકવણીની સ્થિતિ', 'Status płatności', 'Статус платежу', 'ਭੁਗਤਾਨ ਦੀ ਸਥਿਤੀ', 'Starea plății', 'Ipo isanwo', 'Matsayin Biyan'),
(787, 'salary_payment', 'Salary Payment', 'বেতন প্রদান', 'Pago de salario', 'دفع المرتبات', 'तनख्वाह का भुगतान', 'تنخواہ کی ادائیگی', '工资支付', '給与支払い', 'Pagamento de Salário', 'Выплата зарплаты', 'Paiement du salaire', '급여 지불', 'Lohnauszahlung', 'Salario', 'การจ่ายเงินเดือน', 'Fizetés', 'Salaris betaling', 'Payment stipendio', 'Pembayaran Gaji', 'Maaş ödemesi', 'Πληρωμή μισθού', 'پرداخت حقوق', 'Bayaran Gaji', 'પગાર ચુકવણી', 'Wypłata wynagrodzenia', 'Оплата заробітної плати', 'ਤਨਖਾਹ ਅਦਾਇਗੀ', 'Plata salariului', 'Isanwo isanwo', 'Biyan Albashi'),
(788, 'salary_history', 'Salary History', 'বেতন ইতিহাস', 'Historia salarial', 'سجل الرواتب', 'वेतन इतिहास', 'تنخواہ کی تاریخ', '工资历史', '給与履歴', 'Histórico Salarial', 'Зарплата История', 'Historique des salaires', '연혁', 'Gehaltsgeschichte', 'Storia salariale', 'ประวัติเงินเดือน', 'Fizetési előzmények', 'Salaris geschiedenis', 'Historia stipendio', 'Sejarah Gaji', 'Maaş Geçmişi', 'Ιστορικό μισθών', 'تاریخچه حقوق', 'Sejarah Gaji', 'પગારનો ઇતિહાસ', 'Historia wynagrodzeń', 'Історія заробітної плати', 'ਤਨਖਾਹ ਦਾ ਇਤਿਹਾਸ', 'Istoric de salariu', 'Itan owo-ọya', 'Tarihin Albashi'),
(789, 'fee_collection', 'Fee Collection', 'ফি সংগ্রহ', 'Cobro de tarifas', 'تحصيل الرسوم', 'शुल्क संग्रह', 'فیس جمع کرنا', '收费标准', '料金コレクション', 'Cobrança de taxas', 'Сбор платы', 'Collection de frais', '수수료 징수', 'Gebührenerhebung', 'Commissione di riscossione', 'การเก็บค่าธรรมเนียม', 'Díj beszedése', 'Innen van vergoedingen', 'feodo Books', 'Pengumpulan Biaya', 'Ücret Tahsilatı', 'Συλλογή χρεώσεων', 'مجموعه هزینه', 'Kutipan Yuran', 'ફી સંગ્રહ', 'Pobieranie opłat', 'Збір зборів', 'ਫੀਸ ਇਕੱਠਾ ਕਰਨਾ', 'Încasare', 'Gbigba gbigba', 'Kudin tattara'),
(790, 'invoice_receipt', 'Invoice Receipt', 'চালান প্রাপ্তি', 'Recepción de facturas', 'إيصال الفاتورة', 'चालान की रसीद', 'انوائس کی رسید', '发票收据', '請求書受領', 'Recebimento de fatura', 'Квитанция о получении счета', 'Reçu de facture', '송장 영수증', 'Rechnungsbeleg', 'Ricevuta fattura', 'ใบเสร็จรับเงินใบแจ้งหนี้', 'Számla nyugtája', 'Factuurbewijs', 'Medicamentum cautionem', 'Penerimaan faktur', 'Fatura makbuzu', 'Τιμολόγιο', 'صورت حساب', 'Resit invois', 'ભરતિયું રસીદ', 'Potwierdzenie faktury', 'Квитанція про виставлення рахунків', 'ਇਨਵੌਇਸ ਰਸੀਦ', 'Nu stiu', 'Risiti risiti', 'Rashin Kashi'),
(791, 'gallery_image', 'Gallery Image', 'গ্যালারী ইমেজ', 'Imagen de la galería', 'صورة المعرض', 'गैलरी छवि', 'گیلری ، نگارخانہ کی تصویر', '图库图片', 'ギャラリー画像', 'Imagem da Galeria', 'Галерея изображений', 'Image de la galerie', '갤러리 이미지', 'Galerie Bild', 'Galleria immagine', 'แกลเลอรี่ภาพ', 'Galéria kép', 'Galerijafbeelding', 'gallery Image', 'Gambar Galeri', 'Galeri Resmi', 'Εικόνα γκαλερί', 'تصویر گالری', 'Gambar Galeri', 'ગેલેરી છબી', 'Obraz z galerii', 'Зображення галереї', 'ਗੈਲਰੀ ਚਿੱਤਰ', 'Galerie imagine', 'Aworan Gallery', 'Hoton Hoto');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(792, 'detail_information', 'Detail Information', 'বিস্তারিত তথ্য', 'Información detallada', 'معلومات مفصلة', 'विस्तार से जानकारी', 'تفصیل سے معلومات', '详细信息', '詳細情報', 'Informações detalhadas', 'Детальная информация', 'Informations détaillées', '자세한 정보', 'Detail Information', 'Informazioni dettagliate', 'ข้อมูลรายละเอียด', 'Részletes információ', 'Gedetailleerde informatie', 'detail Information', 'Informasi detil', 'Detaylı Bilgi', 'Λεπτομερής πληροφορία', 'جزئیات اطلاعات', 'Maklumat terperinci', 'વિગતવાર માહિતી', 'Szczegółowe informacje', 'Детальна інформація', 'ਵੇਰਵਾ ਜਾਣਕਾਰੀ', 'Informații detaliate', 'Alaye Alaye', 'Cikakken Bayani'),
(793, 'present_address', 'Present Address', 'বর্তমান ঠিকানা', 'La dirección actual', 'العنوان الحالي', 'वर्तमान पता', 'موجودہ پتہ', '现在的住址', '現住所', 'Endereço presente', 'Текущий адрес', 'Adresse actuelle', '현재 주소', 'Aktuelle Adresse', 'Indirizzo attuale', 'ที่อยู่ปัจจุบัน', 'Jelenlegi cím', 'Huidig adres', 'Praesens address', 'Alamat sekarang', 'Güncel adres', 'Παρούσα διεύθυνση', 'آدرس فعلی', 'Alamat terkini', 'હાલનું સરનામું', 'Obecny adres', 'Присутні адреса', 'ਮੌਜੂਦਾ ਪਤਾ', 'Adresa actuala', 'Adirẹsi lọwọlọwọ', 'Adireshin yanzu'),
(794, 'permanent_address', 'Permanent Address', 'স্থায়ী ঠিকানা', 'dirección permanente', 'العنوان الثابت', 'स्थाई पता', 'مستقل پتہ', '永久地址', '本籍地', 'Endereço Permanente', 'адрес постоянного проживания', 'Adresse permanente', '영구 주소', 'fester Wohnsitz', 'Residenza', 'ที่อยู่ถาวร', 'Állandó lakcím', 'Vast Adres', 'Oratio permanent', 'alamat tetap', 'daimi Adres', 'Μόνιμη διεύθυνση', 'آدرس دائمی', 'Alamat tetap', 'કાયમી સરનામુ', 'Stały adres', 'Постійна адреса', 'ਪੱਕਾ ਪਤਾ', 'Adresa Peramanetă', 'Adirẹsi Yẹ', 'adireshin dindindin'),
(795, 'basic_information', 'Basic Information', 'মৌলিক তথ্য', 'Información básica', 'معلومات اساسية', 'मूलभूत जानकारी', 'بنیادی معلومات', '基本信息', '基本情報', 'Informação básica', 'Основная информация', 'Informations de base', '기본 정보', 'Grundinformation', 'Informazioni di base', 'ข้อมูลพื้นฐาน', 'Alapinformációk', 'Basis informatie', 'Basic notitia', 'Informasi dasar', 'Temel Bilgiler', 'Βασικές πληροφορίες', 'اطلاعات اولیه', 'Maklumat asas', 'મૂળભૂત માહિતી', 'Podstawowe informacje', 'Основна інформація', 'ਮੁੱ Informationਲੀ ਜਾਣਕਾਰੀ', 'Informatii de baza', 'Alaye Ipilẹ', 'Bayanai na asali'),
(796, 'contact_information', 'Contact Information', 'যোগাযোগের তথ্য', 'Información del contacto', 'معلومات للتواصل', 'संपर्क जानकारी', 'رابطے کی معلومات', '联系信息', '連絡先', 'Informações de Contato', 'Контакты', 'Informations de contact', '연락 정보', 'Kontakt Informationen', 'Informazioni sui contatti', 'ข้อมูลติดต่อ', 'Elérhetőség', 'Contactgegevens', 'Information Contact', 'Kontak informasi', 'İletişim bilgileri', 'Στοιχεία επικοινωνίας', 'اطلاعات تماس', 'Maklumat perhubungan', 'સંપર્ક માહિતી', 'Informacje kontaktowe', 'Контактна інформація', 'ਸੰਪਰਕ ਜਾਣਕਾਰੀ', 'Informatii de contact', 'Ibi iwifunni', 'Bayanin hulda'),
(797, 'academic_information', 'Academic Information', 'একাডেমিক তথ্য', 'Información Académica', 'معلومات أكاديمية', 'शैक्षणिक सूचना', 'تعلیمی معلومات', '学术信息', '学術情報', 'informação académica', 'Академическая информация', 'Information Académique', '학업 정보', 'Akademische Informationen', 'informazione accademica', 'ข้อมูลวิชาการ', 'Tudományos információk', 'Academische informatie', 'academic Information', 'Informasi Akademik', 'Akademik bilgi', 'Ακαδημαϊκές πληροφορίες', 'اطلاعات علمی', 'Maklumat Akademik', 'શૈક્ષણિક માહિતી', 'Informacje akademickie', 'Наукова інформація', 'ਅਕਾਦਮਿਕ ਜਾਣਕਾਰੀ', 'informatii academice', 'Alaye Ile-iwe', 'Bayanin Ilimin'),
(798, 'guardian_information', 'Guardian Information', 'অভিভাবকের  তথ্য', 'Información del tutor', 'معلومات الوصي', 'संरक्षक सूचना', 'گارڈین کی معلومات', '监护人信息', 'ガーディアン情報', 'Informações do Guardião', 'Хранитель информации', 'Informations sur le gardien', '가디언 정보', 'Guardian Informationen', 'Informazioni sul guardiano', 'ข้อมูลผู้พิทักษ์', 'Guardian információ', 'Guardian-informatie', 'custos Information', 'Informasi Wali', 'Guardian Bilgi', 'Πληροφορίες κηδεμόνα', 'اطلاعات نگهبان', 'Maklumat Penjaga', 'વાલીઓની માહિતી', 'Informacje o opiekunie', 'Інформація опікуна', 'ਸਰਪ੍ਰਸਤ ਦੀ ਜਾਣਕਾਰੀ', 'Informații tutore', 'Alaye Olutọju', 'Bayanin Sirrin'),
(799, 'parent_information', 'Parent Information', 'মাতাপিতার তথ্য', 'Información para padres', 'معلومات الوالدين', 'जनक जानकारी', 'بنیادی معلومات', '家长信息', '親情報', 'Informações aos pais', 'Информация для родителей', 'Information des parents', '부모 정보', 'Übergeordnete Informationen', 'Informazioni sui genitori', 'ข้อมูลผู้ปกครอง', 'Szülői információk', 'Ouderinformatie', 'parens Information', 'Informasi Induk', 'Veli Bilgileri', 'Πληροφορίες γονέα', 'اطلاعات والدین', 'Maklumat Ibu Bapa', 'પેરેંટલ માહિતી', 'Informacje dla rodziców', 'Інформація для батьків', 'ਮਾਪਿਆਂ ਦੀ ਜਾਣਕਾਰੀ', 'Informații despre părinți', 'Alaye ti obi', 'Bayanin Iyaye'),
(800, 'setting_information', 'Setting Information', 'সেটিংস তথ্য', 'Información de configuración', 'إعداد المعلومات', 'सूचना सेट करना', 'معلومات کی ترتیب', '设置信息', '設定情報', 'Informações de configuração', 'Настройка информации', 'Réglage des informations', '설정 정보', 'Informationen einstellen', 'Informazioni sull\'impostazione', 'ข้อมูลการตั้งค่า', 'Beállítási információk', 'Instellingsinformatie', 'profecta Information', 'Pengaturan Informasi', 'Ayar Bilgileri', 'Ρύθμιση πληροφοριών', 'تنظیم اطلاعات', 'Menetapkan Maklumat', 'માહિતી સુયોજિત કરી રહ્યા છે', 'Informacje o ustawieniach', 'Інформація про налаштування', 'ਜਾਣਕਾਰੀ ਸੈੱਟ ਕਰਨਾ', 'Setarea informațiilor', 'Eto alaye', 'Kafa Bayani'),
(801, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar contraseña', 'تأكيد كلمة المرور', 'पासवर्ड की पुष्टि कीजिये', 'پاس ورڈ کی تصدیق کریں', '确认密码', 'パスワードを認証する', 'Confirme a Senha', 'Подтвердите Пароль', 'Confirmez le mot de passe', '비밀번호 확인', 'Kennwort bestätigen', 'conferma password', 'ยืนยันรหัสผ่าน', 'Jelszó megerősítése', 'bevestig wachtwoord', 'Adfirmare Password', 'konfirmasi sandi', 'Şifreyi Onayla', 'Επιβεβαίωση Κωδικού', 'رمز عبور را تأیید کنید', 'Sahkan Kata Laluan', 'પાસવર્ડની પુષ્ટિ કરો', 'Potwierdź hasło', 'Підтвердьте пароль', 'ਪਾਸਵਰਡ ਪੱਕਾ ਕਰੋ', 'Confirmă parola', 'So ni pato orukoabawole re', 'tabbata kalmar shiga'),
(802, 'leave_from', 'Leave From', 'লিভ ফ্রম', 'Salir de', 'يغادر من', 'से चला', 'سے چلے جانا', '离开', 'から出発', 'Sair de', 'Уйди от', 'Partir de', '로부터 떠나다', 'Abfahren von', 'Partire da', 'ออกจาก', 'Indulás', 'Weg gaan van', 'Leave a', 'Pergi dari', 'Dan ayrılmak', 'Αναχώρηση από', 'ترک از', 'Bertolak Dari', 'થી છોડો', 'Wyjdź z', 'Вийти з', 'ਤੋਂ ਛੱਡੋ', 'A pleca din', 'Fi Lati', 'Bar Daga'),
(803, 'leave_to', 'Leave To', 'লিভ টু', 'Dejar', 'اترك إلى', 'पर छोड़ दो', 'چھوڑ دو', '离开', '任します', 'Sair para', 'Покинуть', 'Laisser à', '로 떠나 가다', 'Verlassen, um', 'Lasciare', 'ออกไป', 'Hagyja', 'Laat aan', 'Ad discede', 'Tinggalkan untuk', 'Bırak', 'Αφησε σε', 'ترک به', 'Tinggalkan Ke', 'છોડો', 'Pozostawić do', 'Залишити до', 'ਛੱਡੋ', 'Lasă la', 'Fi Si Lati', 'Bar zuwa'),
(804, 'leave_apply_for', 'Leave Apply for', 'ছুটির জন্য আবেদন', 'Deje Solicitar', 'اترك طلب للحصول على', 'के लिए आवेदन छोड़ दें', 'کے لئے درخواست دیں چھوڑ دیں', '离开申请', '申し込む', 'Deixe Aplicar para', 'Оставьте заявку на', 'Laissez demander', '신청을 남겨주세요', 'Lassen Sie sich bewerben für', 'Lascia fare domanda per', 'ลา สมัครเพื่อ', 'Hagyja jelentkezését', 'Laat solliciteren', 'Applicare pro relinquo', 'Biarkan Berlaku untuk', 'Başvuruyu Bırak', 'Αφήστε την αίτηση για', 'ترک درخواست کنید', 'Tinggalkan Memohon untuk', 'માટે અરજી કરો છોડી દો', 'Pozostaw Złóż wniosek o', 'Залиште подати заявку', 'ਲਈ ਅਰਜ਼ੀ ਛੱਡੋ', 'Lăsați să solicitați', 'Fi Kan Wa fun', 'Bar Aiwatar da'),
(805, 'total_leave', 'Total Leave', 'মোট ছুটি', 'Licencia total', 'إجمالي الإجازة', 'कुल छुट्टी', 'کل رخصت', '总休假', '総休暇', 'Licença Total', 'Общий отпуск', 'Congé total', '총 휴가', 'Gesamturlaub', 'Congedo totale', 'ลาทั้งหมด', 'Teljes szabadság', 'Totaal verlof', 'summa discede', 'Cuti Total', 'Toplam İzin', 'Συνολική άδεια', 'ترک کامل', 'Jumlah Cuti', 'કુલ રજા', 'Całkowity urlop', 'Загальна відпустка', 'ਕੁੱਲ ਛੁੱਟੀ', 'Concediu total', 'Lapapọ Lọ', 'Jimlar iznin'),
(806, 'apply_leave', 'Apply Leave', 'ছুটি প্রয়োগ ', 'Aplicar licencia', 'قم باضافة المغادرة', 'छुट्टी लागू करें', 'رخصت کا اطلاق کریں', '申请请假', '休暇を申請する', 'Aplicar licença', 'Применить Оставить', 'Appliquer congé', '휴가 신청', 'Urlaub anwenden', 'Applica congedo', 'ลางาน', 'Alkalmazza a Leave-t', 'Verlof toepassen', 'Applicare discede', 'Terapkan Cuti', 'İzni Uygula', 'Εφαρμόστε άδεια', 'برگ را اعمال کنید', 'Memohon Cuti', 'રજા લાગુ કરો', 'Zastosuj urlop', 'Застосовуйте Leave', 'ਛੁੱਟੀ ਲਾਗੂ ਕਰੋ', 'Aplicați concediu', 'Waye Lọ', 'Aiwatar izni'),
(807, 'leave_used', 'Leave Used', 'ছুটি ব্যবহৃত', 'Dejar usado', 'اترك المستخدم', 'उपयोग छोड़ दें', 'استعمال کریں چھوڑ دو', '保留使用状态', '使用したままにする', 'Deixar usado', 'Оставьте Использовано', 'Laisser utilisé', '사용 된 상태로 두십시오', 'Gebraucht lassen', 'Lascia usato', 'ปล่อยให้ใช้', 'Hagyja használt', 'Laat gebruikt', 'New relinqueret', 'Biarkan Bekas', 'Kullanılmış Bırak', 'Αφήστε άδεια', 'استفاده را ترک کنید', 'Biarkan Digunakan', 'છોડો વપરાયેલ', 'Pozostaw używane', 'Залиште використане', 'ਛੱਡੋ ਵਰਤਿਆ', 'Lasă-te folosit', 'Fi Lo', 'Bar Amfani da'),
(808, 'leave_remain', 'Leave Remain', 'ছুটি বাকি', 'Dejar permanecer', 'اترك البقاء', 'शेष रहना', 'باقی رہو', '留下来', '残ります', 'Deixar permanecer', 'Оставь Оставаться', 'Laisser rester', '남아', 'Lass bleiben', 'Lasciare rimasto', 'ปล่อยให้คงอยู่', 'Hagyja hátra', 'Laat blijven', 'relinquam sustinete', 'Tinggalkan Tetap', 'Kalan', 'Αφήστε το παραμένον', 'باقی مانده است', 'Tinggalkan Kekal', 'રહેવા દો', 'Zostaw Pozostań', 'Залиште Залишитися', 'ਰਹਿਣ ਦਿਓ', 'Lasă să rămână', 'Fi I silẹ', 'Bar Kasancewa'),
(809, 'applicant_type', 'Applicant Type', 'আবেদনকারী প্রকার', 'Tipo de solicitante', 'نوع مقدم الطلب', 'आवेदक प्रकार', 'درخواست گزار کی قسم', '申请者类型', '応募者タイプ', 'Tipo de requerente', 'Тип заявителя', 'Type de demandeur', '신청자 유형', 'Bewerbertyp', 'Tipo di richiedente', 'ประเภทผู้สมัคร', 'Jelentkező típusa', 'aanvrager Type', 'Type applicant', 'Jenis Pemohon', 'Başvuru Sahibi Türü', 'Τύπος αιτούντος', 'نوع متقاضی', 'Jenis Pemohon', 'અરજદાર પ્રકાર', 'Typ Wnioskodawcy', 'Тип заявника', 'ਬਿਨੈਕਾਰ ਦੀ ਕਿਸਮ', 'Tipul solicitantului', 'Iru Ibẹwẹ', 'Nau\'in nema'),
(810, 'father_name', 'Father Name', 'বাবার নাম', 'Nombre del Padre', 'اسم الأب', 'पिता का नाम', 'والد کا نام', '父亲姓名', '父の名前', 'Nome do pai', 'Имя Отца', 'Nom du père', '아버지의 이름', 'Der Name des Vaters', 'Nome del padre', 'ชื่อบิดา', 'Apa neve', 'Vader naam', 'nomine Patris', 'Nama ayah', 'Baba adı', 'Ονομα πατρός', 'نام پدر', 'Nama bapa', 'પિતાનું નામ', 'Imię Ojca', 'Ім\'я батька', 'ਪਿਤਾ ਦਾ ਨਾਮ', 'Numele tatălui', 'Oruko Baba', 'Sunan Uba'),
(811, 'mother_name', 'Mother Name', 'মায়ের নাম', 'Nombre de la madre', 'اسم الأم', 'मां का नाम', 'ماں کا نام', '母亲名字', '母の名前', 'Nome da mãe', 'Имя матери', 'Nom de la mère', '엄마 이름', 'Name der Mutter', 'Nome della madre', 'ชื่อแม่', 'Anyja neve', 'Naam moeder', 'nomen matris', 'Nama ibu', 'Anne adı', 'Όνομα μητέρας', 'نام مادر', 'Nama Ibu', 'માતાનું નામ', 'Imię matki', 'Ім\'я матері', 'ਮਾਂ ਦਾ ਨਾਮ', 'Numele mamei', 'Orukọ iya', 'Sunan Uwar'),
(812, 'father_phone', 'Father Phone', 'বাবার ফোন', 'Teléfono padre', 'هاتف الأب', 'पिता का फोन', 'فادر فون', '父亲电话', '父の電話', 'Telefone do pai', 'Телефон отца', 'Téléphone du père', '아버지 전화', 'Vater Telefon', 'Father Phone', 'พ่อโฟน', 'Apa telefon', 'Vader telefoon', 'Pater Phone', 'Telepon ayah', 'Baba Telefonu', 'Πατέρα τηλέφωνο', 'تلفن تلفنی', 'Telefon Bapa', 'ફાધર ફોન', 'Telefon Ojca', 'Телефон батька', 'ਪਿਤਾ ਫੋਨ', 'Tatăl Telefon', 'Baba foonu', 'Waya Baba'),
(813, 'mother_phone', 'Mother Phone', 'মায়ের ফোন', 'Teléfono madre', 'هاتف الأم', 'मदर फोन', 'ماں فون', '母电话', '母の電話', 'Telefone Mãe', 'Мать Телефон', 'Téléphone mère', '어머니 전화', 'Muttertelefon', 'Telefono Madre', 'โทรศัพท์แม่', 'Anya telefon', 'Moeder telefoon', 'Mater Phone', 'Telepon ibu', 'Ana Telefon', 'Μητέρα τηλέφωνο', 'تلفن مادر', 'Telefon Ibu', 'મધર ફોન', 'Telefon macierzysty', 'Матері телефон', 'ਮਾਂ ਫੋਨ', 'Telefonul mamei', 'Foonu Iya', 'Wayar Iya'),
(814, 'father_education', 'Father Education', 'বাবার শিক্ষা', 'Padre, educación', 'تعليم الأب', 'पिता की शिक्षा', 'والد کی تعلیم', '父亲教育', '父の教育', 'Educação do Pai', 'Образование Отца', 'Éducation du père', '아버지 교육', 'Vaterbildung', 'Padre Istruzione', 'การศึกษาของพ่อ', 'Apa oktatás', 'Vader Onderwijs', 'Pater Education', 'Pendidikan Ayah', 'Baba Eğitimi', 'Εκπαίδευση πατέρα', 'آموزش پدر', 'Pendidikan Bapa', 'પિતા શિક્ષણ', 'Edukacja Ojca', 'Освіта батька', 'ਪਿਤਾ ਸਿੱਖਿਆ', 'Educația părintelui', 'Baba Eko', 'Uba Ilimi'),
(815, 'mother_education', 'Mother Education', 'মায়ের শিক্ষা', 'Educación de la madre', 'تعليم الأم', 'माता की शिक्षा', 'ماں تعلیم', '母亲教育', '母親の教育', 'Mãe Educação', 'Мать Образование', 'Éducation de la mère', '어머니 교육', 'Muttererziehung', 'Educazione Madre', 'การศึกษาของแม่', 'Anya oktatás', 'Moeder onderwijs', 'Mater Education', 'Pendidikan Ibu', 'Anne Eğitimi', 'Εκπαίδευση στη Μητέρα', 'آموزش مادر', 'Pendidikan Ibu', 'માતા શિક્ષણ', 'Edukacja matek', 'Освіта матері', 'ਮਾਂ ਸਿੱਖਿਆ', 'Educația mamelor', 'Iya Eko', 'Ilimin Uwar'),
(816, 'father_profession', 'Father Profession', 'বাবার পেশা', 'Padre Profesion', 'مهنة الأب', 'पिता का पेशा', 'والد کا پیشہ', '父亲职业', '父の職業', 'Profissão Pai', 'Профессия отца', 'Profession de père', '아버지 직업', 'Vater Beruf', 'Professione del padre', 'อาชีพพ่อ', 'Apa szakma', 'Vader Beroep', 'Pater Sollemnis Professio', 'Profesi Ayah', 'Baba Mesleği', 'Πατέρας επάγγελμα', 'حرفه پدر', 'Profesion Bapa', 'ફાધર પ્રોફેશન', 'Zawód ojca', 'Професія батька', 'ਪਿਤਾ ਪੇਸ਼ੇ', 'Tatăl Profesie', 'Baba oojọ', 'Uba Kwarewa'),
(817, 'father_designation', 'Father Designation', 'বাবার উপাধি', 'Designación de padre', 'تعيين الأب', 'पिता पदनाम', 'والد کا عہدہ', '父亲指定', '父の指定', 'Designação do Pai', 'Обозначение отца', 'Désignation du père', '아버지 지정', 'Vaterbezeichnung', 'Designazione del padre', 'ชื่อพ่อ', 'Apák megnevezése', 'Vader aanwijzing', 'Pater VOCABULUM', 'Penunjukan Ayah', 'Baba Adı', 'Ορισμός του πατέρα', 'نامگذاری پدر', 'Jawatan Bapa', 'ફાધર હોદ્દો', 'Oznaczenie Ojca', 'Призначення батька', 'ਪਿਤਾ ਅਹੁਦਾ', 'Desemnarea părintelui', 'Apẹrẹ Baba', 'Tsarin Uba'),
(818, 'mother_designation', 'Mother Designation', 'মায়ের উপাধি', 'Designación de madre', 'تسمية الأم', 'माँ पदनाम', 'ماں کا عہدہ', '母亲指定', '母の指定', 'Designação Mãe', 'Обозначение матери', 'Désignation de la mère', '어머니 지정', 'Mutterbezeichnung', 'Designazione madre', 'ชื่อแม่', 'Anya jelölése', 'Moeder aanduiding', 'Mater VOCABULUM', 'Penunjukan Ibu', 'Anne Tanımı', 'Ορισμός της μητέρας', 'نامگذاری مادر', 'Jawatan Ibu', 'માતા હોદ્દો', 'Oznaczenie matki', 'Призначення матері', 'ਮਾਂ ਦਾ ਅਹੁਦਾ', 'Desemnarea mamei', 'Apẹrẹ Iya', 'Tsarin Iya'),
(819, 'father_photo', 'Father Photo', 'বাবার ছবি', 'Foto del padre', 'صورة الأب', 'पिता फोटो', 'فادر فوٹو', '父亲照片', '父の写真', 'Foto do pai', 'Фото отца', 'Photo du père', '아버지 사진', 'Vater Foto', 'Foto del padre', 'รูปพ่อ', 'Apa fotó', 'Vader foto', 'Pater Image', 'Foto Ayah', 'Baba Fotoğraf', 'Πατέρα Φωτογραφία', 'عکس پدر', 'Foto Bapa', 'ફાધર ફોટો', 'Zdjęcie ojca', 'Фото батька', 'ਪਿਤਾ ਦੀ ਤਸਵੀਰ', 'Foto tată', 'Fọto baba', 'Uba Hoto'),
(820, 'mother_photo', 'Mother Photo', 'মায়ের ছবি', 'Foto de la madre', 'صور الأم', 'माँ की फोटो', 'ماں تصویر', '母亲照片', '母の写真', 'Mãe Foto', 'Мать фото', 'Photo mère', '어머니 사진', 'Mutter Foto', 'Foto di madre', 'รูปแม่', 'Anya fotó', 'Moeder foto', 'Mater Image', 'Foto Ibu', 'Anne Fotoğraf', 'Μητέρα Φωτογραφία', 'عکس مادر', 'Foto Ibu', 'મધર ફોટો', 'Zdjęcie matki', 'Фото матері', 'ਮਾਂ ਦੀ ਤਸਵੀਰ', 'Mama Foto', 'Fọto Iya', 'Uwar Hoto'),
(821, 'numeric_name', 'Numeric Name', 'সংখ্যার নাম', 'Nombre numérico', 'الاسم الرقمي', 'न्यूमेरिक नाम', 'عددی نام', '数字名称', '数値名', 'Nome numérico', 'Numeric Name', 'Nom numérique', '숫자 이름', 'Numerischer Name', 'Nome numerico', 'ชื่อตัวเลข', 'Numerikus név', 'Numerieke naam', 'Ordo numerorum nomine', 'Nama Numerik', 'Sayısal Ad', 'Αριθμητικό όνομα', 'نام عددی', 'Numerik Nama', 'આંકડાકીય નામ', 'Nazwa numeryczna', 'Числове ім\'я', 'ਸੰਖਿਆਤਮਕ ਨਾਮ', 'Numeric Numeric', 'Orukọ Nọmba', 'Sunaye mai lamba'),
(823, 'subject_code', 'Subject Code', 'বিষয় কোড', 'Código sujeto', 'كود الموضوع', 'विषय कोड', 'موضوع کوڈ', '主题代码', '主題コード', 'Código do Assunto', 'Код темы', 'Code sujet', '주제 코드', 'Betreff Code', 'Codice soggetto', 'รหัสวิชา', 'Tárgy kód', 'Onderwerpcode', 're Code', 'Kode Subjek', 'Konu Kodu', 'Κωδικός θέματος', 'کد موضوع', 'Kod Mata Pelajaran', 'વિષય કોડ', 'Kod przedmiotu', 'Предметний код', 'ਵਿਸ਼ਾ ਕੋਡ', 'Codul subiectului', 'Koodu Koko-ọrọ', 'Lambar Yada Labari'),
(824, 'expenditure_method', 'Expenditure Method', 'ব্যয় পদ্ধতি', 'Método de gastos', 'طريقة الإنفاق', 'व्यय विधि', 'اخراجات کا طریقہ', '支出方式', '支出方法', 'Método de Despesas', 'Метод расходов', 'Méthode de dépenses', '지출 방법', 'Ausgabenmethode', 'Metodo di spesa', 'วิธีการใช้จ่าย', 'Kiadási módszer', 'Uitgavenmethode', 'Custus Ratio', 'Metode Pengeluaran', 'Harcama Yöntemi', 'Μέθοδος δαπανών', 'روش هزینه', 'Kaedah Perbelanjaan', 'ખર્ચની પદ્ધતિ', 'Metoda wydatków', 'Метод витрат', 'ਖਰਚ odੰਗ', 'Metoda cheltuielilor', 'Ọna inawo', 'Hanyar kashe kudi'),
(825, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'Método de pago', 'طريقة الدفع او السداد', 'भुगतान का तरीका', 'ادائیگی کا طریقہ', '付款方法', '支払方法', 'Forma de pagamento', 'Способ оплаты', 'Mode de paiement', '결제 방법', 'Bezahlverfahren', 'Metodo di pagamento', 'วิธีการชำระเงิน', 'Fizetési mód', 'Betalingswijze', 'solucionis methodo', 'Cara Pembayaran', 'Ödeme şekli', 'Μέθοδος πληρωμής', 'روش پرداخت', 'Kaedah Pembayaran', 'ચુકવણી પદ્ધતિ', 'Metoda płatności', 'Спосіб оплати', 'ਭੁਗਤਾਨੇ ਦੇ ਢੰਗ', 'Modalitate de plată', 'Eto isanwo', 'Hanyar Biyan Biya'),
(826, 'income_method', 'Income Method', 'আয়ের পদ্ধতি', 'Método de ingreso', 'طريقة الدخل', 'आय विधि', 'آمدنی کا طریقہ', '收入法', '収入方法', 'Método de Renda', 'Метод дохода', 'Méthode du revenu', '소득 방법', 'Einkommensmethode', 'Metodo del reddito', 'วิธีการสร้างรายได้', 'Jövedelem módszer', 'Inkomen methode', 'Ratio reditus', 'Metode Penghasilan', 'Gelir Yöntemi', 'Μέθοδος εισοδήματος', 'روش درآمد', 'Kaedah Pendapatan', 'આવક પદ્ધતિ', 'Metoda dochodowa', 'Метод доходу', 'ਆਮਦਨੀ ਵਿਧੀ', 'Metoda venitului', 'Ọna Ọya', 'Hanyar shigowa'),
(827, 'bank_name', 'Bank Name', 'ব্যাংকের নাম', 'Nombre del banco', 'اسم البنك', 'बैंक का नाम', 'بینک کا نام', '银行名', '銀行名', 'Nome do banco', 'Название банка', 'Nom de banque', '은행 이름', 'Bank Name', 'Nome della banca', 'ชื่อธนาคาร', 'A bank neve', 'Banknaam', 'nomen Bank', 'Nama Bank', 'Banka adı', 'Ονομα τράπεζας', 'نام بانک', 'Nama bank', 'બેંકનું નામ', 'Nazwa banku', 'Назва банку', 'ਬੈਂਕ ਦਾ ਨਾਮ', 'Numele băncii', 'Orukọ Bank', 'Sunan Banki'),
(828, 'cheque_number', 'Cheque Number', 'চেক নম্বর', 'Número de cheque', 'رقم الشيك', 'चेक नंबर', 'نمبر چیک کریں', '支票号码', 'チェック番号', 'Número do cheque', 'Номер чека', 'Numéro du chèque', '수표 번호', 'Scheck-Nummer', 'Controlla il numero', 'ตรวจสอบหมายเลข', 'Ellenőrző szám', 'Controleer nummer', 'reprehendo Number', 'Periksa Nomor', 'Numarayı kontrol et', 'Έλεγχος αριθμού', 'شماره را بررسی کنید', 'Nombor Periksa', 'નંબર તપાસો', 'Numer czeku', 'Номер перевірки', 'ਚੈੱਕ ਨੰਬਰ', 'Numărul de verificare', 'Nọmba Ṣayẹwo', 'Duba Lamba'),
(829, 'paid_status', 'Paid Status', 'প্রদত্ত  অবস্থা', 'Estado pagado', 'الحالة المدفوعة', 'अदा की स्थिति', 'ادا کی حیثیت', '付费状态', '有料ステータス', 'Status pago', 'Платный статус', 'Statut payé', '유료 상태', 'Bezahlter Status', 'Stato pagato', 'สถานะการชำระเงิน', 'Fizetett állapot', 'Betaalde status', 'Status solvit', 'Status Dibayar', 'Ücretli Durum', 'Κατάσταση επί πληρωμή', 'وضعیت پرداخت شده', 'Status Berbayar', 'ચૂકવેલ સ્થિતિ', 'Status płatny', 'Платний статус', 'ਅਦਾਇਗੀ ਸਥਿਤੀ', 'Stare plătită', 'Ipo Ti San', 'Halin da ake biya'),
(830, 'paid_amount', 'Paid Amount', 'প্রদত্ত পরিমাণ', 'Monto de pago', 'المبلغ المدفوع', 'भरी गई राशि', 'ادا شدہ رقم', '已付金额', '支払金額', 'Quantidade paga', 'Выплаченная сумма', 'Montant payé', '유료 금액', 'Bezahlte Menge', 'Importo pagato', 'จำนวนเงินที่ชำระ', 'Fizetett mennyiség', 'Betaald bedrag', 'Aliquam pretium', 'Jumlah pembayaran', 'Ödenen miktar', 'Πληρωμένο ποσό', 'مقدار پرداخت شده', 'Jumlah bayaran', 'ચૂકવેલ રકમ', 'Zapłacona kwota', 'Сума сплачена', 'ਭੁਗਤਾਨ ਕੀਤੀ ਰਕਮ', 'Suma plătită', 'San isanwo', 'Kudaden da aka biya'),
(831, 'card_number', 'Card Number', 'কার্ড নম্বর', 'Número de tarjeta', 'رقم البطاقة', 'कार्ड नंबर', 'کارڈ نمبر', '卡号', 'カード番号', 'Número do cartão', 'Номер карты', 'Numéro de carte', '카드 번호', 'Kartennummer', 'Numero di carta', 'หมายเลขบัตร', 'Kártyaszám', 'Kaartnummer', 'Numerus chartulae electronicae', 'Nomor kartu', 'Kart numarası', 'Αριθμός κάρτας', 'شماره کارت', 'Nombor kad', 'કાર્ડ ક્રમાંક', 'Numer karty', 'Номер картки', 'ਕਾਰਡ ਨੰਬਰ', 'Număr de card', 'Nomba kaadi', 'Lambar kati'),
(832, 'backup_database', 'Backup Database', 'ব্যাকআপ ডাটাবেস', 'Base de datos de respaldo', 'قاعدة بيانات النسخ الاحتياطي', 'बैकअप डेटाबेस', 'بیک اپ ڈیٹا بیس', '备份资料库', 'データベースのバックアップ', 'Banco de dados de backup', 'Резервная база данных', 'Sauvegarder la base de données', '백업 데이터베이스', 'Backup-Datenbank', 'Database di backup', 'ฐานข้อมูลสำรอง', 'Biztonsági mentési adatbázis', 'Back-updatabase', 'tergum Database', 'Backup Database', 'Yedek veritabanı', 'Εφεδρική βάση δεδομένων', 'بانک اطلاعات پشتیبان', 'Pangkalan Data Sandaran', 'બેકઅપ ડેટાબેસ', 'Zapasowa baza danych', 'Резервне копіювання бази даних', 'ਬੈਕਅਪ ਡਾਟਾਬੇਸ', 'Baza de date de rezervă', 'Aaye data Afẹyinti', 'Bayanan Ajiyayyen'),
(1222, 'answer', 'Answer', 'উত্তর', 'Respuesta', 'إجابة', 'उत्तर', 'جواب دیں۔', '回答', '答え', 'Responder', 'Отвечать', 'Réponse', '답변', 'Antworten', 'Risposta', 'ตอบ', 'Válasz', 'Antwoord geven', 'respondere', 'Menjawab', 'Cevap', 'Απάντηση', 'پاسخ', 'Jawab', 'જવાબ આપો', 'Odpowiedź', 'Відповідь', 'ਜਵਾਬ', 'Răspuns', 'Idahun', 'Amsa'),
(1223, 'option', 'Option', 'বিকল্প', 'Opción', 'خيار', 'विकल्प', 'آپشن', '选项', 'オプション', 'Opção', 'Вариант', 'Option', '옵션', 'Möglichkeit', 'Opzione', 'ตัวเลือก', 'választási lehetőség', 'Optie', 'Option', 'Pilihan', 'Seçenek', 'Επιλογή', 'گزینه', 'Pilihan', 'વિકલ્પ', 'Opcja', 'Варіант', 'ਵਿਕਲਪ', 'Opțiune', 'Aṣayan', 'Zabin'),
(1215, 'fill_in_blank', 'Fill in Blank', 'শূন্যস্থান পূরণ করুন', 'Completar en blanco', 'املاء الفراغ', 'खाली भरें', 'خالی جگہ پر کریں۔', '填空', '空白を埋める', 'Preencher em Branco', 'Заполните пустое поле', 'Remplir vide', '빈칸 채우기', 'Füllen Sie das Feld aus', 'Riempi vuoto', 'เติมช่องว่าง', 'Töltse ki az Üres mezőt', 'Vul blanco in', 'Imple in Blank', 'Isi Kosong', 'Boş Doldur', 'Συμπληρώστε το κενό', 'جای خالی را پر کنید', 'Isi Kosong', 'ખાલી જગ્યા ભરો', 'Wypełnij puste', 'Заповніть пусте поле', 'ਖਾਲੀ ਥਾਂ ਭਰੋ', 'Completați golul', 'Fọwọsi Ofo', 'Cika Blank'),
(1216, 'true_flase', 'True/ Flase', ' সত্য /মিথ্যা', 'Verdadera / falsa', 'خطأ صحيح', 'सही गलत', 'درست غلط', '真假', '真/偽', 'Verdadeiro falso', 'Верно / неверно', 'Vrai faux', '허위 사실', 'Wahr falsch', 'Vero falso', 'ถูกผิด', 'Igaz hamis', 'Waar onwaar', 'Verum falsum', 'Benar salah', 'Doğru yanlış', 'Σωστό Λάθος', 'درست غلط', 'Betul salah', 'સાચું ખોટું', 'Prawda fałsz', 'Правда/Неправда', 'ਸੱਚਾ/ਝੂਠਾ', 'Adevarat fals', 'Otitọ / Eke', 'Gaskiya/Karya'),
(1217, 'easy', 'Easy', 'সহজ', 'Fácil', 'سهل', 'आसान', 'آسان', '简单', '簡単', 'Fácil', 'Легкий', 'Facile', '쉬운', 'Einfach', 'Facile', 'ง่าย', 'Könnyen', 'Eenvoudig', 'Securus', 'Mudah', 'Kolay', 'Ανετα', 'آسان', 'Mudah', 'સરળ', 'Łatwo', 'Легко', 'ਆਸਾਨ', 'Uşor', 'Rọrun', 'Sauƙi'),
(1218, 'medium', 'Medium', 'মধ্যম', 'Medio', 'واسطة', 'मध्यम', 'درمیانہ', '中等的', '中くらい', 'Média', 'Середина', 'Moyen', '중간', 'Mittel', 'medio', 'ปานกลาง', 'Közepes', 'Medium', 'Medium', 'Medium', 'Orta', 'Μεσαίο', 'متوسط', 'Sederhana', 'મધ્યમ', 'Średni', 'Середній', 'ਦਰਮਿਆਨਾ', 'Mediu', 'Alabọde', 'Matsakaici'),
(1219, 'hard', 'Hard', 'কঠিন', 'Dura', 'الصعب', 'मुश्किल', 'سخت', '难的', '難しい', 'Dura', 'Жесткий', 'Dure', '딱딱한', 'Schwer', 'Dura', 'แข็ง', 'Kemény', 'Moeilijk', 'Hard', 'Keras', 'Zor', 'Σκληρός', 'سخت', 'Keras', 'કઠણ', 'Twardy', 'Важко', 'ਸਖ਼ਤ', 'Greu', 'Lile', 'Mai wuya'),
(1220, 'false', 'FALSE', 'মিথ্যা', 'FALSA', 'خاطئة', 'झूठा', 'غلط', '错误的', 'NS', 'FALSA', 'ЛОЖНЫЙ', 'FAUX', '거짓', 'FALSCH', 'FALSA', 'เท็จ', 'HAMIS', 'ONWAAR', 'FALSUS', 'SALAH', 'YANLIŞ', 'ΨΕΥΔΗΣ', 'نادرست', 'SALAH', 'ખોટું', 'FAŁSZYWE', 'ПОМИЛКОВИЙ', 'ਗਲਤ', 'FALS', 'ERO', 'KARYA'),
(1221, 'true', 'TRUE', 'সত্য', 'VERDADERA', 'حقيقية', 'सच', 'سچ ہے۔', '真的', 'NS', 'VERDADE', 'ПРАВДА', 'VRAIE', '진실', 'WAHR', 'VERA', 'จริง', 'IGAZ', 'WAAR', 'VERUM', 'BENAR', 'NS', 'ΑΛΗΘΗΣ', 'درست است، واقعی', 'BENAR', 'સાચું', 'PRAWDA', 'ПРАВДА', 'ਸੱਚ ਹੈ', 'ADEVĂRAT', 'ODODO', 'GASKIYA'),
(1213, 'single_answer', 'Single Answer', 'একক উত্তর', 'Respuesta única', 'إجابة واحدة', 'एकल उत्तर', 'واحد جواب', '单一答案', 'シングルアンサー', 'Resposta Única', 'Единый ответ', 'Réponse unique', '단일 답변', 'Einzelantwort', 'Risposta singola', 'คำตอบเดียว', 'Egyetlen Válasz', 'Eén antwoord', 'Una Answer', 'Jawaban Tunggal', 'Tek Cevap', 'Ενιαία Απάντηση', 'تک جواب', 'Jawapan Tunggal', 'એક જ જવાબ', 'Pojedyncza odpowiedź', 'Єдина відповідь', 'ਸਿੰਗਲ ਜਵਾਬ', 'Un singur răspuns', 'Idahun Nikan', 'Amsa Guda'),
(1214, 'multi_answer', 'Multi Answer', 'একাধিক উত্তর', 'Respuesta múltiple', 'متعدد الإجابات', 'बहु उत्तर', 'کثیر جواب', '多答案', 'マルチアンサー', 'Multi Resposta', 'Множественный ответ', 'Réponse multiple', '다중 응답', 'Mehrfachantwort', 'Risposta multipla', 'หลายคำตอบ', 'Több válasz', 'Meerdere antwoorden', 'Multi Answer', 'Multi Jawaban', 'Çoklu Cevap', 'Πολλαπλή απάντηση', 'چند پاسخ', 'Pelbagai Jawapan', 'બહુવિધ જવાબ', 'Wiele odpowiedzi', 'Багатовідповідь', 'ਮਲਟੀ ਜਵਾਬ', 'Raspuns multiplu', 'Idahun pupọ', 'Amsa da yawa'),
(840, 'paypal_email', 'Paypal Email', 'পেপ্যাল ইমেইল', 'e-mail de Paypal', 'بريد باي بال', 'पे पल ईमेल', 'پے پال ای میل', '贝宝电子邮件', 'Paypalメール', 'Email do Paypal', 'Электронная почта Paypal', 'Email Paypal', '페이팔 이메일', 'Paypal Email', 'Email Paypal', 'อีเมล Paypal', 'Paypal e-mail', 'Paypal E-mail', 'Email Coin Paypal', 'Email Paypal', 'Paypal E-postası', 'Email μέσω Paypal', 'پی پال ایمیل', 'E-mel Paypal', 'પેપલ ઇમેઇલ', 'Paypal email', 'Paypal електронною поштою', 'ਪੇਪਾਲ ਈਮੇਲ', 'E-mail Paypal', 'Imeeli Imeeli', 'Imel na Paypal'),
(841, 'payumoney_key', 'Payumoney Key', 'পে ইউ মানি কী', 'Payumoney Key', 'مفتاح Payumoney', 'पयूमनी की', 'پیومینی کی', '支付密钥', 'Payumoneyキー', 'Chave de Payumoney', 'Payumoney Key', 'Payumoney Key', 'Payumoney 키', 'Payumoney Key', 'Payumoney Key', 'กุญแจพยุมัน', 'Payumoney kulcs', 'Payumoney Key', 'Key Payumoney', 'Payumoney Key', 'Payumoney Anahtarı', 'Κλειδί Payumoney', 'Payumoney Key', 'Kunci Payumoney', 'પેયુમોની કી', 'Klucz Payumoney', 'Ключ Payumoney', 'ਪੇਯੂਮਨੀ ਕੁੰਜੀ', 'Cheia Payumoney', 'Bọtini Payumoney', 'Buga na Payumoney'),
(842, 'ccavenue_key', 'CCavenue Key', 'সি সি এভিনিউ কী', 'Clave CCavenue', 'مفتاح CCavenue', 'CCavenue कुंजी', 'CCavenue کی', 'CCavenue密钥', 'CCavenue Key', 'CCavenue Key', 'CCavenue Key', 'Clé CCavenue', 'CCavenue 키', 'CCavenue-Schlüssel', 'CCavenue Key', 'CCavenue คีย์', 'CCavenue kulcs', 'CCavenue Key', 'Key Ccavenue', 'Kunci CCavenue', 'CCavenue Anahtarı', 'Κλειδί CCavenue', 'کلید CCavenue', 'Kunci CCavenue', 'સીકેવેન્યુ કી', 'CCavenue Key', 'CCavenue Key', 'ਸੀਕਵੇਨਿ Key ਕੁੰਜੀ', 'Cheia CCavenue', 'Bọtini CCavenue', 'Maɓallin CCavenue'),
(843, 'registration_date', 'Registration Date', 'নিবন্ধনের তারিখ', 'Fecha de Registro', 'تاريخ التسجيل', 'पंजीकरण की तारीख', 'داخلے کی تاریخ', '登记日期', '登録日', 'data de registro', 'Дата регистрации', 'Date d\'inscription', '등록 날짜', 'Registrierungsdatum', 'Data di registrazione', 'วันที่ลงทะเบียน', 'Regisztráció dátuma', 'registratie datum', 'Registration Date', 'tanggal registrasi', 'Kayıt Tarihi', 'Ημερομηνία Εγγραφής', 'تاریخ ثبت نام', 'Tarikh pendaftaran', 'નોંધણી તારીખ', 'Data rejestracji', 'Дата Реєстрації', 'ਰਜਿਸਟਰੀਕਰਣ ਦੀ ਮਿਤੀ', 'Data Înregistrării', 'Ọjọ Iforukọsilẹ', 'Ranar Rajista'),
(844, 'final_result_based_on', 'Based on Final Result', 'চূড়ান্ত ফলাফলের ভিত্তিতে', 'Resultado final basado en', 'النتيجة النهائية بناء على', 'अंतिम परिणाम के आधार पर', 'حتمی نتائج پر مبنی', '最终结果基于', 'に基づく最終結果', 'Resultado Final Baseado em', 'Окончательный результат на основе', 'Résultat final basé sur', '최종 결과', 'Endergebnis Basierend auf', 'Risultato finale basato su', 'ขึ้นอยู่กับผลลัพธ์สุดท้าย', 'Végső eredmény:', 'Eindresultaat op basis van', 'Ex captorum eventus superae', 'Hasil Akhir Berdasarkan', 'Son Sonuç Bazında', 'Με βάση το τελικό αποτέλεσμα', 'براساس نتیجه نهایی', 'Berdasarkan Keputusan Akhir', 'અંતિમ પરિણામ પર આધારિત', 'Na podstawie wyniku końcowego', 'На основі кінцевого результату', 'ਅੰਤਮ ਨਤੀਜੇ ਦੇ ਅਧਾਰ ਤੇ', 'Pe baza rezultatului final', 'Da lori Ik Esi', 'An kafa shi ne sakamakon sakamako'),
(846, 'frontend_logo', 'Frontend Logo', 'ফ্রন্টএন্ড লোগো', 'Logotipo frontend', 'شعار الواجهة الأمامية', 'फ्रंटेंड लोगो', 'فرنٹ اینڈ لوگو', '前端徽标', 'フロントエンドのロゴ', 'Logotipo Frontend', 'Логотип внешнего интерфейса', 'Logo frontal', '프론트 엔드 로고', 'Frontend-Logo', 'Logo frontend', 'โลโก้ส่วนหน้า', 'Frontend logó', 'Frontend-logo', 'Search Frontend', 'Logo Frontend', 'Ön Uç Logosu', 'Λογότυπο Frontend', 'آرم جلوی', 'Logo Depan', 'અગ્ર લોગો', 'Logo frontendu', 'Логотип Frontend', 'ਫਰੰਟੈਂਡ ਲੋਗੋ', 'Logo Frontend', 'Logo iwaju', 'Logo na gaba'),
(847, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'Logotipo de administrador', 'شعار المسؤول', 'व्यवस्थापक लोगो', 'ایڈمن لوگو', '管理员徽标', '管理ロゴ', 'Admin Logo', 'Логотип администратора', 'Logo administrateur', '관리자 로고', 'Admin-Logo', 'Logo amministratore', 'โลโก้ผู้ดูแลระบบ', 'Rendszergazda logó', 'Admin Logo', 'Search Maecenas et ipsum', 'Logo Admin', 'Yönetici Logosu', 'Λογότυπο διαχειριστή', 'آرم مدیریت', 'Logo Pentadbir', 'એડમિન લોગો', 'Logo administratora', 'Логотип адміністратора', 'ਐਡਮਿਨ ਲੋਗੋ', 'Logo-ul Admin', 'Abojuto Logo', 'Admin Logo'),
(848, 'total_amount', 'Total Amount', 'সর্বমোট পরিমাণ', 'Cantidad total', 'المبلغ الإجمالي', 'कुल रकम', 'کل رقم', '总金额', '合計金額', 'Valor total', 'Итого', 'Montant total', '총액', 'Gesamtmenge', 'Importo totale', 'จำนวนเงินทั้งหมด', 'Teljes összeg', 'Totaalbedrag', 'Summa', 'Jumlah total', 'Toplam tutar', 'Συνολικό ποσό', 'مقدار کل', 'Jumlah keseluruhan', 'કુલ રકમ', 'Kwota ogółem', 'Загальна кількість', 'ਕੁੱਲ ਮਾਤਰਾ', 'Valoare totală', 'Oye gbo e', 'Jimla'),
(849, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'Fecha de pago', 'موعد الدفع', 'भुगतान तिथि', 'ادائیگی کی تاریخ', '付款日期', '支払期日', 'Data de pagamento', 'Дата оплаты', 'Date de paiement', '지불 일', 'Zahlungsdatum', 'Data di pagamento', 'วันจ่าย', 'Fizetés nap', 'Betaaldatum', 'Payment Date', 'Tanggal pembayaran', 'Ödeme tarihi', 'Ημερομηνία πληρωμής', 'تاریخ پرداخت', 'Tarikh pembayaran', 'ચુકવણીની તારીખ', 'Termin płatności', 'Дата оплати', 'ਭੁਗਤਾਨ ਦੀ ਮਿਤੀ', 'Data de plată', 'Ọjọ isanwo', 'Ranar biya'),
(851, 'total_balance', 'Total Balance', 'মোট ব্যালেন্স', 'Balance total', 'إجمالي الرصيد', 'कुल शेष', 'کل بیلنس', '总余额', '総合収支', 'Balanço total', 'Итоговый баланс', 'Solde total', '전체 균형', 'Gesamtsaldo', 'Saldo totale', 'ยอดรวม', 'Teljes egyensúly', 'Eindbalans', 'summa Libra', 'Total Saldo', 'Toplam Bakiye', 'Συνολικό υπόλοιπο', 'مجموع موجودی', 'Jumlah baki', 'કુલ બેલેન્સ', 'Saldo ogółem', 'Загальний баланс', 'ਕੁਲ ਬਕਾਇਆ', 'Soldul total', 'Apapọ Iwontunws.funfun', 'Jimlar Balaki'),
(852, 'total_subject', 'Total Subject', 'মোট বিষয়', 'Asunto total', 'مجموع الموضوع', 'कुल विषय', 'کل مضمون', '总科目', '総件名', 'Assunto total', 'Общая тема', 'Sujet total', '총 과목', 'Gesamtthema', 'Totale soggetto', 'วิชาทั้งหมด', 'Tárgy összesen', 'Totaal onderwerp', 'summa Subject', 'Subjek total', 'Toplam Konu', 'Σύνολο θέματος', 'موضوع کل', 'Jumlah Subjek', 'કુલ વિષય', 'Przedmiot ogółem', 'Загальний предмет', 'ਕੁੱਲ ਵਿਸ਼ਾ', 'Subiect total', 'Lapapọ Koko-ọrọ', 'Gabaɗaya Batutuwa'),
(853, 'transport_allowance', 'Transport Allowance', 'পরিবহন ভাতা', 'Permiso de transporte', 'بدل النقل', 'परिवहन भत्ता', 'ٹرانسپورٹ الاؤنس', '运输津贴', '輸送手当', 'Subsídio de Transporte', 'Пособие на транспорт', 'Indemnité de transport', '운송 허용량', 'Transportkosten', 'Indennità di trasporto', 'ค่าขนส่ง', 'Szállítási támogatás', 'Transportkostenvergoeding', 'onerariam Allocacio', 'Tunjangan Transportasi', 'Ulaşım Ödeneği', 'Επίδομα μεταφοράς', 'کمک هزینه حمل و نقل', 'Elaun Pengangkutan', 'પરિવહન ભથ્થું', 'Dodatek transportowy', 'Транспортна допомога', 'ਟਰਾਂਸਪੋਰਟ ਭੱਤਾ', 'Indemnizația de transport', 'Gbigbalaaye Irinna', 'Bada izinin sufuri'),
(854, 'medical_allowance', 'Medical Allowance', 'মেডিকেল ভাতা', 'Subsidio médico', 'بدل الطبي', 'चिकित्सा भत्ता', 'میڈیکل الاؤنس', '医疗津贴', '医療手当', 'Subsídio Médico', 'Медицинское пособие', 'Allocation médicale', '의료 수당', 'Medizinische Zulage', 'Indennità medica', 'ค่ารักษาพยาบาล', 'Orvosi ellátás', 'Medische vergoeding', 'Medical Allocacio', 'Tunjangan Medis', 'Tıbbi Yardım', 'Ιατρικό επίδομα', 'کمک هزینه پزشکی', 'Elaun Perubatan', 'તબીબી ભથ્થું', 'Zasiłek medyczny', 'Медична допомога', 'ਮੈਡੀਕਲ ਭੱਤਾ', 'Indemnizație medicală', 'Agbogi Iwosan', 'Izinin likita'),
(855, 'total_allowance', 'Total Allowance', 'মোট ভাতা', 'Subsidio total', 'بدل كلي', 'कुल भत्ता', 'کل الاؤنس', '总津贴', '総手当', 'Provisão Total', 'Общее пособие', 'Allocation totale', '총 수당', 'Gesamtzulage', 'Indennità totale', 'ค่าเผื่อทั้งหมด', 'Teljes juttatás', 'Totale vergoeding', 'summa Allocacio', 'Total Tunjangan', 'Toplam Ödenek', 'Συνολικό επίδομα', 'کمک هزینه کل', 'Jumlah Elaun', 'કુલ ભથ્થું', 'Całkowity zasiłek', 'Загальна допомога', 'ਕੁੱਲ ਭੱਤਾ', 'Indemnizație totală', 'Owo-ifunni lapapọ', 'Jimlar izini'),
(856, 'total_deduction', 'Total Deduction', 'মোট ছাড়', 'Deducción total', 'إجمالي الخصم', 'कुल कटौती', 'کل کٹوتی', '总扣除额', '総控除', 'Dedução total', 'Всего вычетов', 'Déduction totale', '총 공제', 'Gesamtabzug', 'Detrazione totale', 'ยอดหัก', 'Teljes levonás', 'Totale aftrek', 'summa Deductio', 'Potongan Total', 'Toplam kesinti', 'Συνολική έκπτωση', 'کسر کل', 'Potongan Jumlah', 'કુલ કપાત', 'Totalna dedukcja', 'Загальна відрахування', 'ਕੁੱਲ ਕਟੌਤੀ', 'Deducere totală', 'Akopọ Akopọ', 'Gaba daya Rage kudi'),
(858, 'send_date', 'Send Date', 'প্রেরণ তারিখ', 'Fecha de envio', 'تاريخ إرسال', 'तारीख बताएं', 'تاریخ بھیجیں', '发送日期', '送信日', 'Data de envio', 'Дата отправки', 'Envoyer la date', '날짜 보내기', 'Sende Datum', 'Invia data', 'วันที่ส่ง', 'Küldés dátuma', 'Verstuur datum', 'Mitte Date', 'Kirim Tanggal', 'Gönderi tarihi', 'Ημερομηνία αποστολής', 'تاریخ ارسال', 'Tarikh Hantar', 'તારીખ મોકલો', 'Przyślij datę', 'Дата надсилання', 'ਤਾਰੀਖ ਭੇਜੋ', 'Trimite data', 'Firanṣẹ Ọjọ', 'Kwanan Wata'),
(859, 'new_issue', 'New Issue', 'নতুন বিষয়', 'Nueva edición', 'مشكلة جديدة', 'नया मुद्दा', 'نیا شمارہ', '新问题', '新しい問題', 'Novo problema', 'Новый выпуск', 'Nouveau numéro', '새로운 문제', 'Neues Problem', 'Nuovo problema', 'ฉบับใหม่', 'Új probléma', 'Nieuw probleem', 'New issue', 'Masalah Baru', 'Yeni baskı', 'ΝΕΟ ΘΕΜΑ', 'شماره جدید', 'Isu Baru', 'નવો અંક', 'Nowy problem', 'Новий випуск', 'ਨਵਾਂ ਮੁੱਦਾ', 'Problemă nouă', 'Oro tuntun', 'Sabon fitowa'),
(860, 'leave_reason', 'Leave Reason', 'ছুটির কারণ', 'Dejar la razón', 'سبب الإجازة', 'कारण छोड़ो', 'چھوڑ دیں وجہ', '离开原因', '理由を残す', 'Motivo da licença', 'Оставьте причину', 'Laisser la raison', '이유를 떠나', 'Grund verlassen', 'Lascia motivo', 'ทิ้งเหตุผล', 'Hagyja az okot', 'Reden verlaten', 'discede ratio', 'Tinggalkan Alasan', 'Ayrılma Nedeni', 'Αφήστε το λόγο', 'ترک دلیل', 'Tinggalkan Sebab', 'છોડી દો કારણ', 'Zostaw powód', 'Залиште причину', 'ਛੱਡੋ ਕਾਰਨ', 'Lasă rațiunea', 'Fi Idi silẹ', 'Bar Dalili'),
(861, 'update_label', 'Update Label', 'আপডেট লেবেল', 'Actualizar etiqueta', 'تحديث التسمية', 'अद्यतन लेबल', 'اپ ڈیٹ لیبل', '更新标签', 'ラベルを更新', 'Atualizar etiqueta', 'Обновить ярлык', 'Mettre à jour l\'étiquette', '라벨 업데이트', 'Label aktualisieren', 'Etichetta di aggiornamento', 'อัพเดทฉลาก', 'Frissítse a címkét', 'Label bijwerken', 'Update Label', 'Perbarui Label', 'Etiketi Güncelle', 'Ενημέρωση ετικέτας', 'برچسب را به روز کنید', 'Kemas kini Label', 'અપડેટ લેબલ', 'Zaktualizuj etykietę', 'Оновити мітку', 'ਅਪਡੇਟ ਲੇਬਲ', 'Etichetă de actualizare', 'Label Imudojuiwọn', 'Label sabuntawa'),
(862, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre del lenguaje', 'اسم اللغة', 'भाषा का नाम', 'زبان کا نام', '语言名称', '言語名', 'Nome do idioma', 'Название языка', 'Nom de la langue', '언어 이름', 'Sprache Name', 'Nome lingua', 'ชื่อภาษา', 'Nyelv neve', 'Taal naam', 'lingua nomine', 'nama bahasa', 'dil adı', 'Όνομα γλώσσας', 'نام زبان', 'Nama Bahasa', 'ભાષા નામ', 'Nazwa języka', 'Назва мови', 'ਭਾਸ਼ਾ ਦਾ ਨਾਮ', 'Numele limbii', 'Oruko Ede', 'Sunan Harshe'),
(863, 'select_hostel', 'Select Hostel', 'হোস্টেল নির্বাচন করুন', 'Seleccionar albergue', 'حدد Hostel', 'छात्रावास का चयन करें', 'ہاسٹل منتخب کریں', '选择旅馆', 'セレクトホステル', 'Selecione Hostel', 'Выберите Хостел', 'Sélectionnez l\'auberge', '셀렉트 호스텔', 'Wählen Sie Hostel', 'Seleziona ostello', 'ซีเล็ค โฮสเทล', 'Válassza a Hostel lehetőséget', 'Selecteer Hostel', 'Lego Hostel', 'Pilih Hostel', 'Pansiyon Seçiniz', 'Επιλέξτε Ξενώνας', 'خوابگاه را انتخاب کنید', 'Pilih Asrama', 'છાત્રાલય પસંદ કરો', 'Wybierz Hostel', 'Виберіть хостел', 'ਹੋਸਟਲ ਦੀ ਚੋਣ ਕਰੋ', 'Selectați Hostel', 'Yan Ile ayagbe', 'Zaɓi Dakunan kwanan dalibai'),
(864, 'select_room_no', 'Select Room No', 'রুম নম্বর নির্বাচন করুন', 'Seleccionar habitación no', 'حدد رقم الغرفة', 'कक्ष क्रमांक का चयन करें', 'کمرہ نمبر منتخب کریں', '选择房间号', '部屋番号を選択', 'Selecionar quarto Não', 'Выберите номер', 'Sélectionnez la chambre non', '방 번호 선택', 'Wählen Sie Raum-Nr', 'Seleziona la camera n', 'เลือกห้องเลขที่', 'Válassza a Szobát', 'Selecteer kamer nr', 'Select No Comments', 'Pilih Kamar No', 'Oda Seçiniz', 'Επιλέξτε Αρ. Δωματίου', 'اتاق شماره را انتخاب کنید', 'Pilih No Bilik', 'રૂમ નં', 'Wybierz numer pokoju', 'Виберіть номер номер', 'ਕਮਰਾ ਨੰ', 'Selectați camera nr', 'Yan Yara Bẹẹkọ', 'Zaɓi Room Ba'),
(865, 'add_to_hostel', 'Add to Hostel', 'হোস্টেলে যোগ করুন', 'Añadir al albergue', 'أضف إلى نزل', 'छात्रावास में जोड़ें', 'ہاسٹل میں شامل کریں', '添加到旅馆', 'ホステルに追加', 'Adicionar ao Hostel', 'Добавить в хостел', 'Ajouter à l\'auberge', '호스텔에 추가', 'Zum Hostel hinzufügen', 'Aggiungi all\'ostello', 'เพิ่มในโฮสเทล', 'Add hozzá a Hostelhez', 'Toevoegen aan hostel', 'Add to Hostel', 'Tambahkan ke Hostel', 'Hostel\'e ekle', 'Προσθήκη στον ξενώνα', 'اضافه کردن به Hostel', 'Tambah ke Asrama', 'છાત્રાલયમાં ઉમેરો', 'Dodaj do hostelu', 'Додати в хостел', 'ਹੋਸਟਲ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați la Hostel', 'Fi si Ile ayagbe', 'Toara don Dakunan kwanan dalibai'),
(866, 'room_type', 'Room Type', 'কক্ষ ধরণ', 'Tipo de habitación', 'نوع الغرفة', 'कमरे जैसा', 'کمرے کی قسم', '房型', '部屋タイプ', 'Tipo de sala', 'Тип номера', 'Type de chambre', '객실 유형', 'Zimmertyp', 'Tipo di stanza', 'ประเภทห้อง', 'Szoba típus', 'Kamertype', 'locus Type', 'Tipe ruangan', 'Oda tipi', 'Τύπος δωματίου', 'نوع اتاق', 'Jenis bilik', 'ઓરડા નો પ્રકાર', 'Rodzaj pokoju', 'Тип кімнати', 'ਕਮਰੇ ਦੀ ਕਿਸਮ', 'Tipul camerei', 'Iru Yara', 'Nau\'in Room'),
(867, 'to_title', 'To Title', 'টু শিরোনাম', 'Titular', 'إلى العنوان', 'शीर्षक करने के लिए', 'عنوان سے', '到标题', 'タイトルへ', 'Para título', 'К названию', 'Au titre', '제목', 'Zum Titel', 'Al titolo', 'To Title', 'Címhez', 'Naar titel', 'Ad Titulus', 'Untuk Judul', 'Başlığa', 'Στον τίτλο', 'به عنوان', 'kepada tajuk', 'શીર્ષક માટે', 'Do tytułu', 'До заголовка', 'ਸਿਰਲੇਖ ਨੂੰ', 'La titlu', 'Si Akọle', 'Zuwa taken'),
(868, 'from_title', 'From Title', 'থেকে শিরোনাম', 'Del título', 'من العنوان', 'शीर्षक से', 'عنوان سے', '从标题', 'タイトルから', 'Do título', 'Из заголовка', 'Du titre', '제목에서', 'Aus dem Titel', 'Dal titolo', 'จากชื่อเรื่อง', 'Címből', 'Van titel', 'Ex Titulus', 'Dari Title', 'Başlıktan', 'Από τον τίτλο', 'از عنوان', 'Dari Tajuk', 'શીર્ષકમાંથી', 'Z tytułu', 'З назви', 'ਸਿਰਲੇਖ ਤੋਂ', 'Din titlu', 'Lati Akọle', 'Daga Take'),
(869, 'dispatch_date', 'Dispatch Date', 'প্রেরণ  তারিখ', 'Fecha de envio', 'تاريخ الإرسال', 'प्रेषण तारीख', 'بھیجنے کی تاریخ', '发货日期', '発送日', 'Data de expedição', 'Дата отправки', 'Date d\'envoi', '파견 날짜', 'Versanddatum', 'Data di spedizione', 'วันที่จัดส่ง', 'Elküldési dátum', 'Verzendingsdatum', 'expedite Date', 'Tanggal pengiriman', 'Gönderme tarihi', 'Ημερομηνία αποστολής', 'تاریخ اعزام', 'Tarikh penghantaran', 'રવાનગી તારીખ', 'Termin wysyłki', 'Дата відправки', 'ਭੇਜਣ ਦੀ ਮਿਤੀ', 'Data expedierii', 'Ṣọjọ Ọjọ', 'Kwanan Wata'),
(871, 'url_slug', 'Url Slug', 'ইউআরএল স্লাগ', 'Babosa de url', 'عنوان Url Slug', 'उर्ल स्लग', 'یو آر سلگ', '头子弹', 'URLスラッグ', 'Lesma de URL', 'Url Slug', 'Url Slug', 'URL 슬러그', 'URL-Schnecke', 'Url Slug', 'Url Slug', 'Url Slug', 'Url Slug', 'url limax', 'Slug Url', 'URL Slug', 'Url Slug', 'اسلایگ Url', 'Url Slug', 'યુઆરએલ ગોકળગાય', 'Url Slug', 'Url Slug', 'Lਰਲ ਸਲੱਗ', 'Url Slug', 'Bibẹrẹ Url', 'Url slug'),
(872, 'select_student', 'Select Student', 'ছাত্র নির্বাচন করুন', 'Seleccionar estudiante', 'حدد الطالب', 'छात्र का चयन करें', 'طالب علم کو منتخب کریں', '选择学生', '学生を選択', 'Selecionar Aluno', 'Выберите студента', 'Sélectionnez un étudiant', '학생 선택', 'Wählen Sie Student', 'Seleziona studente', 'เลือกนักเรียน', 'Válassza a Hallgató lehetőséget', 'Selecteer Student', 'Discipulus selecta', 'Pilih Siswa', 'Öğrenci Seçin', 'Επιλέξτε Φοιτητής', 'اسلایگ Url', 'Pilih Pelajar', 'વિદ્યાર્થી પસંદ કરો', 'Wybierz Student', 'Виберіть Учень', 'ਵਿਦਿਆਰਥੀ ਦੀ ਚੋਣ ਕਰੋ', 'Selectați Student', 'Yan Ọmọ ile-iwe', 'Zabi Dalibi'),
(873, 'all_result_card', 'All Result Card', 'সমস্ত ফলাফল কার্ড', 'Tarjeta de todos los resultados', 'كل بطاقة النتيجة', 'सभी रिजल्ट कार्ड', 'تمام نتائج کارڈ', '所有结果卡', 'すべての結果カード', 'Cartão de todos os resultados', 'Карта всех результатов', 'Carte de tous les résultats', '모든 결과 카드', 'Alle Ergebniskarte', 'Tutte le carte risultato', 'การ์ดผลลัพธ์ทั้งหมด', 'Minden eredmény kártya', 'Alle resultaatkaart', 'Omnia Ex Card', 'Semua Kartu Hasil', 'Tüm Sonuç Kartı', 'Κάρτα όλων των αποτελεσμάτων', 'تمام کارت نتیجه', 'Semua Keputusan Kad', 'બધા પરિણામ કાર્ડ', 'Karta wyników wszystkich', 'Усі картки результатів', 'ਸਾਰੇ ਨਤੀਜੇ ਕਾਰਡ', 'Cartea cu toate rezultatele', 'Gbogbo Kaadi Esi', 'Duk Katin amsawa'),
(874, 'student_mark', 'Student Mark', 'ছাত্র মার্ক', 'Marca de estudiante', 'مارك الطالب', 'छात्र मार्क', 'طالب علم کا نشان', '学生分数', '学生マーク', 'Student Mark', 'Студенческая марка', 'Étudiant Mark', '학생 마크', 'Student Mark', 'Studente Mark', 'เครื่องหมายนักศึกษา', 'Mark Mark', 'Student Mark', 'Mark discipulus', 'Tanda Mahasiswa', 'Öğrenci İşareti', 'Φοιτητής Mark', 'مارک دانشجویی', 'Markah Pelajar', 'વિદ્યાર્થી માર્ક', 'Mark Student', 'Студентська оцінка', 'ਵਿਦਿਆਰਥੀ ਮਾਰਕ', 'Marcajul studentului', 'Marku Akeko', 'Dalibi Mark'),
(875, 'exam_title', 'Exam Title', 'পরীক্ষার শিরোনাম', 'Título del examen', 'عنوان الامتحان', 'परीक्षा का शीर्षक', 'امتحان کا عنوان', '考试标题', '試験のタイトル', 'Título do exame', 'Название экзамена', 'Titre de l\'examen', '시험 제목', 'Prüfungstitel', 'Titolo dell\'esame', 'ชื่อสอบ', 'Vizsga címe', 'Titel van examen', 'Title nito', 'Judul ujian', 'Sınav Başlığı', 'Τίτλος εξετάσεων', 'عنوان امتحان', 'Tajuk Peperiksaan', 'પરીક્ષાનું શીર્ષક', 'Tytuł egzaminu', 'Назва іспиту', 'ਪ੍ਰੀਖਿਆ ਦਾ ਸਿਰਲੇਖ', 'Titlul examenului', 'Akọle Idanwo', 'Take a jarrabawa'),
(876, 'obtain_mark', 'Obtain Mark', 'প্রাপ্ত মার্ক', 'Obtener Mark', 'احصل على علامة', 'मार्क प्राप्त करें', 'مارک حاصل کریں', '获得标记', 'マークを取得', 'Obter marca', 'Получить марку', 'Obtenir Mark', '마크 획득', 'Mark erhalten', 'Ottieni Mark', 'ได้รับเครื่องหมาย', 'Szerezz be Markot', 'Verkrijg Mark', 'Mark obtain', 'Dapatkan Mark', 'İşaret Al', 'Αποκτήστε το σήμα', 'به دست آوردن مارک', 'Dapatkan Mark', 'માર્ક મેળવો', 'Uzyskaj znak', 'Отримати позначку', 'ਮਾਰਕ ਪ੍ਰਾਪਤ ਕਰੋ', 'Obțineți marca', 'Gba Mark', 'Samu Mark'),
(877, 'total_obtain_mark', 'Total Obtain Mark', 'মোট প্রাপ্তি  মার্ক', 'Total obtener marca', 'إجمالي الحصول على علامة', 'कुल प्राप्त मार्क', 'کل حاصل کریں', '总获得分数', '合計取得マーク', 'Marca de obtenção total', 'Всего Получить Марк', 'Total obtenir la note', '총 획득 마크', 'Total Mark erhalten', 'Punteggio totale ottenuto', 'รวมรับ Mark', 'Összesen szerezzen Mark', 'Total Obtain Mark', 'Vitam Mark summa', 'Total Mendapatkan Tanda', 'Toplam Elde Etme İşareti', 'Σύνολο απόκτησης σήματος', 'علامت گذاری به دست آمده', 'Jumlah Mendapatkan Markah', 'કુલ પ્રાપ્ત માર્ક', 'Łącznie uzyskaj ocenę', 'Загальна оцінка', 'ਕੁੱਲ ਪ੍ਰਾਪਤੀ ਮਾਰਕ', 'Total Obțineți nota', 'Lapapọ Gba Mark', 'Jimlar Samun Alama'),
(878, 'total_mark', 'Total Mark', 'মোট  মার্ক', 'Marca total', 'مجموع مارك', 'कुल निशान', 'کل نشان', '总分', '合計マーク', 'Marca total', 'Общая оценка', 'Marque totale', '총 마크', 'Gesamtnote', 'Punteggio totale', 'คะแนนรวม', 'Összesen Mark', 'Totaal cijfer', 'Mark summa', 'Total Mark', 'Toplam İşaret', 'Συνολικό σήμα', 'کل مارک', 'Jumlah Markah', 'કુલ માર્ક', 'Łączna ocena', 'Загальна оцінка', 'ਕੁੱਲ ਮਾਰਕ', 'Marcaj total', 'Marku lapapọ', 'Jimillar Alama'),
(879, 'exam_date', 'Exam Date', 'পরীক্ষার তারিখ', 'Fecha de examen', 'موعد الامتحان', 'परीक्षा की तारीख', 'امتحان کی تاریخ', '考试日期', '試験日', 'Data do exame', 'Дата экзамена', 'Date de l\'examen', '시험 날짜', 'Prüfungsdatum', 'Data dell\'esame', 'วันสอบ', 'Vizsga dátuma', 'Examendatum', 'nito Date', 'Tanggal ujian', 'Sınav Tarihi', 'Ημερομηνία εξέτασης', 'تاریخ امتحان', 'Tarikh Peperiksaan', 'પરીક્ષાની તારીખ', 'Data egzaminu', 'Дата іспиту', 'ਪ੍ਰੀਖਿਆ ਦੀ ਮਿਤੀ', 'Data examenului', 'Ọjọ kẹhìn', 'Kwanan gwaji'),
(880, 'generate_card', 'Generate Card', 'জেনারেট কার্ড', 'Generar tarjeta', 'إنشاء بطاقة', 'कार्ड जनरेट करें', 'کارڈ بنائیں', '产生卡', 'カードを生成', 'Gerar cartão', 'Создать карту', 'Générer une carte', '카드 생성', 'Karte generieren', 'Genera carta', 'สร้างการ์ด', 'Készítsen kártyát', 'Genereer kaart', 'Card generate', 'Hasilkan Kartu', 'Kart Oluştur', 'Δημιουργία κάρτας', 'ایجاد کارت', 'Hasilkan Kad', 'કાર્ડ બનાવો', 'Wygeneruj kartę', 'Створення картки', 'ਕਾਰਡ ਬਣਾਓ', 'Generați card', 'Ina Kaadi', 'Kirkirar Katin'),
(881, 'id_card_setting', 'ID Card Setting', 'আইডি কার্ড সেটিং', 'Configuración de tarjeta de identificación', 'إعداد بطاقة الهوية', 'आईडी कार्ड सेटिंग', 'شناختی کارڈ کی ترتیب', '身份证设置', 'IDカード設定', 'Configuração do cartão de identificação', 'Настройка удостоверения личности', 'Réglage de la carte d\'identité', 'ID 카드 설정', 'ID-Karteneinstellung', 'Impostazione della carta d\'identità', 'การตั้งค่าบัตรประจำตัวประชาชน', 'Azonosító kártya beállítása', 'ID-kaart instellen', 'Profecti id Card', 'Pengaturan Kartu ID', 'Kimlik Kartı Ayarı', 'Ρύθμιση ταυτότητας', 'تنظیم کارت شناسایی', 'Penetapan Kad Pengenalan', 'આઈડી કાર્ડ સેટિંગ', 'Ustawienie dowodu osobistego', 'Налаштування посвідчення особи', 'ਆਈਡੀ ਕਾਰਡ ਸੈਟਿੰਗ', 'Setarea cărții de identitate', 'Eto Kaadi ID', 'Saitin Katin ID'),
(882, 'admit_card_setting', 'Admit Card Setting', 'এডমিট কার্ড সেটিং', 'Configuración de tarjeta de admisión', 'إعداد بطاقة القبول', 'एडमिट कार्ड सेटिंग', 'کارڈ سیٹنگ', '准卡设置', 'カード設定を認める', 'Configuração do cartão de admissão', 'Настройка карты допуска', 'Admettre le paramètre de la carte', '카드 설정 인정', 'Karteneinstellung zulassen', 'Ammetti impostazione carta', 'รับการตั้งค่าการ์ด', 'Fogadja el a kártya beállítását', 'Kaartinstelling toestaan', 'Profecti Card fateri', 'Pengaturan Kartu Akui', 'Kabul Kartı Ayarı', 'Ρύθμιση κάρτας αποδοχής', 'پذیرفتن تنظیم کارت', 'Tetapkan Kad Admit', 'પ્રવેશ કાર્ડ સેટિંગ', 'Przyznaj ustawienie karty', 'Налаштування картки', 'ਦਾਖਲਾ ਕਾਰਡ ਸੈਟਿੰਗ', 'Admitere Setare card', 'Gbigba Eto Kaadi', 'Sanya Kayan Katin'),
(883, 'teacher_id_card', 'Teacher ID card', 'শিক্ষকের আইডি কার্ড', 'Tarjeta de identificación del maestro', 'بطاقة هوية المعلم', 'टीचर आईडी कार्ड', 'اساتذہ کا شناختی کارڈ', '教师证', '教師IDカード', 'Cartão de identificação do professor', 'Удостоверение личности учителя', 'Carte d\'identité de l\'enseignant', '교사 신분증', 'Lehrerausweis', 'Carta d\'identità dell\'insegnante', 'บัตรประจำตัวครู', 'Tanár személyi igazolványa', 'Docent ID-kaart', 'ID card magister', 'Kartu identitas guru', 'Öğretmen kimlik kartı', 'Δελτίο ταυτότητας δασκάλου', 'شناسنامه معلم', 'Kad pengenalan guru', 'શિક્ષકનું આઈડી કાર્ડ', 'Dowód tożsamości nauczyciela', 'Посвідчення особи вчителя', 'ਅਧਿਆਪਕ ਦਾ ਆਈਡੀ ਕਾਰਡ', 'Cartea de identitate a profesorului', 'ID kaadi olukọ', 'Katin ID na malami'),
(884, 'employee_id_card', 'Employee ID Card', 'কর্মচারী আইডি কার্ড', 'Tarjeta de identificación del empleado', 'بطاقة هوية الموظف', 'कर्मचारी आईडी कार्ड', 'ملازم شناختی کارڈ', '员工身份证', '社員証', 'Cartão de identificação do funcionário', 'Удостоверение личности сотрудника', 'Carte d\'identité d\'employé', '직원 ID 카드', 'Mitarbeiterausweis', 'Carta d\'identità del dipendente', 'บัตรประจำตัวพนักงาน', 'Munkavállalói személyi igazolvány', 'ID-kaart werknemer', 'Aliquam id Card', 'Kartu ID Karyawan', 'Çalışan Kimlik Kartı', 'Κάρτα ταυτότητας υπαλλήλου', 'شناسنامه کارمند', 'Kad Pengenalan Pekerja', 'કર્મચારીનું આઈડી કાર્ડ', 'Dowód osobisty pracownika', 'Посвідчення особи працівника', 'ਕਰਮਚਾਰੀ ਆਈਡੀ ਕਾਰਡ', 'Cartea de identitate a angajaților', 'Kaadi ID agbanisiṣẹ', 'Katin ID na Ma\'aikata'),
(885, 'student_id_card', 'Student ID Card', 'শিক্ষার্থী আইডি কার্ড', 'Credencial de estudiante', 'بطاقة هوية الطالب', 'छात्र आईडी कार्ड', 'طلباء کا شناختی کارڈ', '学生证', '学生証', 'Cartão de identificação de estudante', 'Студенческий билет', 'Carde d\'identité d\'étudiant', '학생증', 'Studentenausweis', 'Carta d\'identità dello studente', 'บัตรประจำตัวนักศึกษา', 'Diák személyi igazolvány', 'Student ID kaart', 'Studiosum ID Card', 'Kartu Identitas Mahasiswa', 'Öğrenci kimlik Kartı', 'Φοιτητική ταυτότητα', 'کارت دانشجویی', 'Kad Pengenalan Pelajar', 'વિદ્યાર્થી આઈડી કાર્ડ', 'Legitymacja studencka', 'Посвідчення особи студента', 'ਵਿਦਿਆਰਥੀ ID ਕਾਰਡ', 'Cartea de identitate a studentului', 'ID kaadi ọmọ ile-iwe', 'Katin ID na dalibi');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(886, 'student_admit_card', 'Student Admit Card', 'শিক্ষার্থী এডমিট কার্ড', 'Tarjeta de admisión de estudiante', 'بطاقة قبول الطالب', 'छात्र एडमिट कार्ड', 'طلباء کا داخلہ کارڈ', '学生录取卡', '学生入学カード', 'Cartão de Admissão de Estudante', 'Студенческий билет', 'Carte d\'admission étudiant', '학생 인정 카드', 'Student Admit Card', 'Student Admit Card', 'บัตรนักศึกษา', 'Hallgató befogadási kártya', 'Student geef kaart toe', 'Tamen scito Card discipulus', 'Kartu Penerimaan Mahasiswa', 'Öğrenci Kabul Kartı', 'Φοιτητική κάρτα αποδοχής', 'کارت اعتراف دانشجویی', 'Kad Pengenalan Pelajar', 'વિદ્યાર્થી પ્રવેશ કાર્ડ', 'Karta wstępu studenckiego', 'Картка прийому студентів', 'ਵਿਦਿਆਰਥੀ ਦਾਖਲਾ ਕਾਰਡ', 'Cartea de admitere a studentului', 'Ọmọ Kaadi Gbigbe', 'Katin Karatun Dalibi'),
(887, 'border_color', 'Border Color', 'বর্ডার কালার', 'Color del borde', 'لون الحدود', 'किनारे का रंग', 'بارڈر کلر', '边框颜色', 'ボーダの色', 'Cor da borda', 'Цвет границы', 'Couleur de la bordure', '테두리 색', 'Randfarbe', 'Colore del bordo', 'เส้นขอบสี', 'Keretszín', 'Rand kleur', 'terminus Colo colui cultum', 'Warna perbatasan', 'Sınır rengi', 'Χρώμα πλαισίου', 'رنگ لبه', 'Warna Sempadan', 'બોર્ડર કલર', 'Kolor ramki', 'Колір кордону', 'ਬਾਰਡਰ ਰੰਗ', 'Culoare de graniță', 'Awọ Aala', 'Launin Kasa'),
(888, 'top_background', 'Top Background', 'টপ ব্যাকগ্রাউন্ড', 'Fondo superior', 'الخلفية العليا', 'शीर्ष पृष्ठभूमि', 'سرفہرست پس منظر', '热门背景', '上の背景', 'Plano de fundo superior', 'Верхний фон', 'Contexte supérieur', '최고 배경', 'Top Hintergrund', 'Sfondo superiore', 'พื้นหลังยอดนิยม', 'Felső háttér', 'Top achtergrond', 'Top nibh', 'Latar Belakang Atas', 'Üst Arka Plan', 'Κορυφαίο φόντο', 'پیش زمینه برتر', 'Latar Belakang Teratas', 'ટોચની પૃષ્ઠભૂમિ', 'Najlepsze tło', 'Топ фону', 'ਚੋਟੀ ਦਾ ਪਿਛੋਕੜ', 'Fundal de sus', 'Ile abẹlẹ', 'Manyan Bango'),
(889, 'card_school_name', 'Card School Name', 'কার্ড স্কুলের নাম', 'Nombre de la escuela de la tarjeta', 'اسم مدرسة البطاقة', 'कार्ड स्कूल का नाम', 'کارڈ اسکول کا نام', '卡片学校名称', 'カードスクール名', 'Nome da escola do cartão', 'Название школы карты', 'Nom de l\'école de cartes', '카드 학교 이름', 'Name der Kartenschule', 'Nome scuola card', 'ชื่อโรงเรียนการ์ด', 'Kártyaiskola neve', 'Naam kaartschool', 'Card nomen School', 'Nama Sekolah Kartu', 'Kart Okulu Adı', 'Όνομα σχολικής κάρτας', 'نام مدرسه کارت', 'Nama Sekolah Kad', 'કાર્ડ શાળા નામ', 'Nazwa szkoły karcianej', 'Назва школи картки', 'ਕਾਰਡ ਸਕੂਲ ਦਾ ਨਾਮ', 'Numele școlii cardului', 'Orukọ Ile-iwe Kaadi', 'Katin Makaranta'),
(890, 'card_logo', 'Card Logo', 'কার্ড লোগো', 'Logotipo de la tarjeta', 'شعار البطاقة', 'कार्ड लोगो', 'کارڈ لوگو', '卡徽标', 'カードのロゴ', 'Logotipo do cartão', 'Логотип карты', 'Logo de la carte', '카드 로고', 'Kartenlogo', 'Logo della carta', 'โลโก้การ์ด', 'Kártya logó', 'Kaart Logo', 'Search Card', 'Logo Kartu', 'Kart Logosu', 'Λογότυπο κάρτας', 'آرم کارت', 'Logo Kad', 'કાર્ડ લોગો', 'Logo karty', 'Картка логотип', 'ਕਾਰਡ ਲੋਗੋ', 'Logo-ul cardului', 'Logo Kaadi', 'Logo Katin'),
(891, 'school_name_font_size', 'School Name Font Size', 'স্কুল নাম ফন্ট সাইজ', 'Nombre de la escuela Tamaño de fuente', 'حجم الخط اسم المدرسة', 'स्कूल का नाम फ़ॉन्ट आकार', 'اسکول کا نام فونٹ سائز', '学校名称字体大小', '学校名のフォントサイズ', 'Nome da escola Tamanho da fonte', 'Название школы Размер шрифта', 'Nom de l\'école Taille de police', '학교 이름 글꼴 크기', 'Schulname Schriftgröße', 'Dimensione carattere nome scuola', 'ชื่อโรงเรียน ขนาดตัวอักษร', 'Iskola neve Betűméret', 'Lettergrootte schoolnaam', 'Nomen schola Font Size', 'Ukuran Font Nama Sekolah', 'Okul Adı Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς Όνομα σχολείου', 'اندازه مدرسه قلم', 'Saiz Fon Nama Sekolah', 'શાળા નામ ફોન્ટ કદ', 'Rozmiar czcionki nazwy szkoły', 'Розмір шрифту назви школи', 'ਸਕੂਲ ਦਾ ਨਾਮ ਫੋਂਟ ਆਕਾਰ', 'Numele școlii Dimensiunea fontului', 'Iwọn Font School', 'Girman sunan Font'),
(892, 'school_name_color', 'School Name Color', 'স্কুল নাম কালার', 'Nombre del colegio Color', 'لون اسم المدرسة', 'स्कूल का नाम रंग', 'اسکول کا نام رنگ', '学校名称颜色', '学校名の色', 'Nome da escola Cor', 'Название школы Цвет', 'Couleur du nom de l\'école', '학교 이름 색상', 'Schulname Farbe', 'Colore nome scuola', 'ชื่อโรงเรียน สี', 'Iskola neve szín', 'Kleur schoolnaam', 'Nomen schola Colo colui cultum', 'Warna Nama Sekolah', 'Okul Adı Renk', 'Χρώμα ονόματος σχολείου', 'نام مدرسه رنگ', 'Warna Nama Sekolah', 'શાળા નામ રંગ', 'Kolor nazwy szkoły', 'Колір назви школи', 'ਸਕੂਲ ਦਾ ਨਾਮ ਰੰਗ', 'Numele școlii', 'Awọ Orukọ Ile-iwe', 'Sunan Makaranta mai launi'),
(893, 'school_address', 'School Address', 'স্কুলের ঠিকানা', 'Dirección de Escuela', 'عنوان المدرسة', 'स्कूल का पता', 'اسکول کا پتہ', '学校地址', '学校の住所', 'Endereço escolar', 'Адрес школы', 'Adresse de l\'école', '학교 주소', 'Schuladresse', 'Indirizzo di scuola', 'ที่อยู่โรงเรียน', 'Iskola címe', 'School adres', 'Oratio School', 'Alamat Sekolah', 'Okul adresi', 'Διεύθυνση σχολείου', 'آدرس مدرسه', 'Alamat Sekolah', 'શાળા સરનામું', 'Adres szkoły', 'Адреса школи', 'ਸਕੂਲ ਦਾ ਪਤਾ', 'Adresa școlii', 'Adirẹsi ile-iwe', 'Adireshin Makaranta'),
(894, 'school_address_color', 'School Address Color', 'স্কুলের ঠিকানা কালার', 'Dirección de escuela Color', 'لون عنوان المدرسة', 'स्कूल का पता रंग', 'اسکول کا پتہ رنگ', '学校地址颜色', '学校の住所の色', 'Cor do endereço da escola', 'Адрес школы Цвет', 'Couleur de l\'adresse de l\'école', '학교 주소 색상', 'Farbe der Schuladresse', 'Colore indirizzo scuola', 'สีที่อยู่โรงเรียน', 'Iskola címének színe', 'Kleur schooladres', 'Oratio schola Colo colui cultum', 'Warna Alamat Sekolah', 'Okul Adresi Rengi', 'Χρώμα διεύθυνσης σχολείου', 'رنگ آدرس مدرسه', 'Warna Alamat Sekolah', 'શાળા સરનામું રંગ', 'Kolor adresu szkoły', 'Колір адреси школи', 'ਸਕੂਲ ਪਤਾ ਰੰਗ', 'Culoarea adresei școlii', 'Awọ Adirẹsi Ile-iwe', 'Launin Adireshin Makaranta'),
(895, 'admit_title_font_size', 'Admit Title Font Size', 'এডমিট টাইটেল ফন্ট সাইজ', 'Admitir título Tamaño de fuente', 'الاعتراف بحجم خط العنوان', 'एडमिट शीर्षक फ़ॉन्ट का आकार', 'عنوان فونٹ سائز داخل کریں', '承认标题字体大小', 'タイトルのフォントサイズを認める', 'Tamanho da fonte do título de admissão', 'Допустить заголовок Размер шрифта', 'Admettre la taille de la police du titre', '제목 글꼴 크기 허용', 'Titel Schriftgröße zulassen', 'Ammetti la dimensione del carattere del titolo', 'ยอมรับชื่อเรื่อง ขนาดอักษร', 'Adja meg a cím betűméretét', 'Geef de lettertypegrootte van de titel toe', 'Font Size Title fateri', 'Akui Ukuran Font Judul', 'Başlık Adı Yazı Tipi Boyutu', 'Παραδοχή τίτλου Μέγεθος γραμματοσειράς', 'اندازه فونت عنوان را قبول کنید', 'Akui Ukuran Fon Tajuk', 'શીર્ષક ફontન્ટ કદ દાખલ કરો', 'Przyznaj rozmiar czcionki tytułu', 'Призначте розмір шрифту заголовка', 'ਸਿਰਲੇਖ ਫੋਂਟ ਆਕਾਰ ਦਾਖਲ ਕਰੋ', 'Admiterea titlului Dimensiunea fontului', 'Gbigbe Akọle Font Iwon', 'Shigar da Girman Harafi'),
(896, 'id_no_font_size', 'ID No Font Size', 'আইডি ফন্ট সাইজ', 'ID sin tamaño de fuente', 'المعرف لا حجم الخط', 'आईडी नंबर फ़ॉन्ट आकार', 'ID کوئی فونٹ سائز نہیں', 'ID号字体大小', 'IDフォントサイズなし', 'ID Sem tamanho da fonte', 'ID без размера шрифта', 'ID Pas de taille de police', 'ID가없는 폰트 크기', 'ID Keine Schriftgröße', 'ID Nessuna dimensione carattere', 'ID No Font Size', 'Azonosító nem betűméret', 'ID Geen lettergrootte', 'Nemo id Font Size', 'ID No Ukuran Huruf', 'Kimlik No Yazı Tipi Boyutu', 'ID No Μέγεθος γραμματοσειράς', 'شناسه بدون اندازه قلم', 'Saiz Font No ID', 'આઈડી નો ફontન્ટ સાઇઝ', 'ID Brak rozmiaru czcionki', 'Ідентифікатор Без розміру шрифту', 'ID ਕੋਈ ਫੋਂਟ ਅਕਾਰ ਨਹੀਂ', 'ID Fără dimensiune font', 'ID Ko si Iwọn Font', 'ID Babu Girman Font'),
(897, 'admit_title_color', 'Admit Title Color', 'এডমিট টাইটেল কালার', 'Admitir color del título', 'قبول لون العنوان', 'एडमिट टाइटल कलर', 'عنوان رنگ داخل کریں', '承认标题颜色', 'タイトルの色を認める', 'Confirmar cor do título', 'Признать цвет заголовка', 'Admettre la couleur du titre', '제목 색상 인정', 'Titelfarbe zugeben', 'Ammetti il colore del titolo', 'ยอมรับชื่อสี', 'Adja meg a cím színét', 'Geef titelkleur toe', 'Title Colo colui cultum fateri', 'Akui Warna Judul', 'Başlık Rengi Kabul Et', 'Εισαγωγή χρώματος τίτλου', 'قبول عنوان رنگ', 'Akui Warna Tajuk', 'શીર્ષકનો રંગ સ્વીકારો', 'Przyznaj kolor tytułu', 'Призначте заголовок кольору', 'ਸਿਰਲੇਖ ਦਾ ਰੰਗ ਸਵੀਕਾਰ', 'Admiteti culoarea titlului', 'Gbigbe Awọ akọle', 'Sanya Launi mai Launi'),
(898, 'id_no_color', 'ID No Color', 'আইডি  কালার', 'ID sin color', 'رقم التعريف لا لون', 'आईडी कोई रंग नहीं', 'شناختی رنگ نہیں', '身份证号码颜色', 'ID色なし', 'ID sem cor', 'ID нет цвета', 'ID Pas de couleur', '아이디 색상 없음', 'ID Keine Farbe', 'ID Nessun colore', 'รหัสไม่มีสี', 'Nem színes', 'ID Geen kleur', 'Nemo id Coloris', 'ID Tidak Berwarna', 'ID Renk Yok', 'Αναγνωριστικό χωρίς χρώμα', 'شناسه بدون رنگ', 'ID Tiada Warna', 'ID નો રંગ', 'Nr ID koloru', 'Ідентифікатор немає кольору', 'ਆਈਡੀ ਦਾ ਕੋਈ ਰੰਗ ਨਹੀਂ', 'ID nr de culoare', 'ID Ko si Awọ', 'ID Babu Launi'),
(899, 'admit_title_background', 'Admit Title Background', 'এডমিট টাইটেল ব্যাকগ্রাউন্ড', 'Admitir fondo del título', 'قبول خلفية العنوان', 'एडमिट टाइटल बैकग्राउंड', 'عنوان کا پس منظر تسلیم کریں', '承认标题背景', 'タイトルの背景を認める', 'Admitir título fundo', 'Допустить название фона', 'Admettre l\'arrière-plan du titre', '제목 배경 인정', 'Titelhintergrund zugeben', 'Ammetti lo sfondo del titolo', 'ยอมรับชื่อพื้นหลัง', 'Fogadja el a háttér hátterét', 'Geef titelachtergrond toe', 'Title fateri Maecenas vitae', 'Akui Latar Belakang Judul', 'Başlık Arka Planını Kabul Et', 'Παρακολούθηση ιστορικού τίτλου', 'پیشینه عنوان را بپذیرید', 'Akui Latar Belakang Tajuk', 'શીર્ષક પૃષ્ઠભૂમિ દાખલ કરો', 'Przyznaj tytuł tła', 'Призначте заголовок фону', 'ਸਿਰਲੇਖ ਦਾ ਪਿਛੋਕੜ ਦਾਖਲ ਕਰੋ', 'Admiteți fundalul titlului', 'Gba akọle abẹlẹ', 'Sanya taken Bango'),
(900, 'id_no_background', 'ID No Background', 'আইডি ব্যাকগ্রাউন্ড', 'ID sin antecedentes', 'رقم التعريف الخلفية', 'आईडी कोई पृष्ठभूमि नहीं', 'ID کا کوئی پس منظر نہیں', '身份证号背景', 'ID背景なし', 'ID sem fundo', 'ID без фона', 'ID sans arrière-plan', '아이디 없음 배경', 'ID Kein Hintergrund', 'ID senza sfondo', 'ID ไม่มีพื้นหลัง', 'Azonosító nem háttér', 'ID Geen achtergrond', 'Non id Maecenas vitae', 'ID No Background', 'Kimlik Arka Plan Yok', 'Αναγνωριστικό χωρίς φόντο', 'شناسه بدون سابقه', 'ID Tiada Latar Belakang', 'ID નો પૃષ્ઠભૂમિ', 'ID Bez tła', 'Ідентифікатор відсутній', 'ID ਕੋਈ ਪਿਛੋਕੜ ਨਹੀਂ', 'ID nr de fundal', 'ID Ko si abẹlẹ', 'ID Babu Fage'),
(901, 'title_font_size', 'Title Font Size', 'টাইটেল ফন্ট সাইজ', 'Tamaño de fuente del título', 'حجم خط العنوان', 'शीर्षक फ़ॉन्ट आकार', 'عنوان فونٹ سائز', '标题字体大小', 'タイトルのフォントサイズ', 'Tamanho da fonte do título', 'Размер шрифта заголовка', 'Taille de la police du titre', '제목 글꼴 크기', 'Titel Schriftgröße', 'Dimensione carattere titolo', 'ขนาดตัวอักษรชื่อเรื่อง', 'Cím betűméret', 'Titel Lettergrootte', 'Font Size Titulus', 'Ukuran Font Judul', 'Başlık Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς τίτλου', 'اندازه فونت عنوان', 'Saiz Fon Tajuk', 'શીર્ષક ફontન્ટ કદ', 'Rozmiar czcionki tytułu', 'Розмір шрифту', 'ਸਿਰਲੇਖ ਫੋਂਟ ਅਕਾਰ', 'Titlu Dimensiunea fontului', 'Iwọn Font Akọle', 'Girman Font'),
(902, 'title_color', 'Title Color', 'টাইটেল কালার', 'Color del título', 'لون العنوان', 'शीर्षक रंग', 'عنوان رنگین', '标题颜色', 'タイトルの色', 'Cor do título', 'Цвет заголовка', 'Couleur du titre', '타이틀 색상', 'Titelfarbe', 'Colore del titolo', 'ชื่อสี', 'Cím színe', 'Titelkleur', 'Title Colo colui cultum', 'Warna Judul', 'Başlık Rengi', 'Χρώμα τίτλου', 'عنوان رنگ', 'Warna Tajuk', 'શીર્ષક રંગ', 'Kolor tytułu', 'Колір заголовка', 'ਸਿਰਲੇਖ ਦਾ ਰੰਗ', 'Culoare titlu', 'Awọ akọle', 'Labaran Cinya'),
(903, 'value_font_size', 'Value Font Size', 'ভ্যালু ফন্ট সাইজ', 'Tamaño de fuente de valor', 'حجم خط القيمة', 'मान फ़ॉन्ट आकार', 'قدر فونٹ کا سائز', '值字体大小', '値のフォントサイズ', 'Valor Tamanho da fonte', 'Значение Размер шрифта', 'Taille de la police de valeur', '값 글꼴 크기', 'Wert Schriftgröße', 'Dimensione carattere valore', 'ขนาดตัวอักษรค่า', 'Érték betűméret', 'Waarde Lettergrootte', 'Font Size pretii', 'Nilai Ukuran Huruf', 'Değer Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς τιμής', 'اندازه قلم ارزش', 'Saiz Fon Nilai', 'મૂલ્ય ફontન્ટનું કદ', 'Wartość Rozmiar czcionki', 'Значення розміру шрифту', 'ਮੁੱਲ ਫੋਂਟ ਆਕਾਰ', 'Valoare Dimensiune font', 'Iwọn Font Iye', 'Girman Font darajar'),
(904, 'value_color', 'Value Color', 'ভ্যালু কালার', 'Color de valor', 'لون القيمة', 'मूल्य रंग', 'قدر کا رنگ', '值颜色', '値の色', 'Valor Cor', 'Значение Цвет', 'Couleur de valeur', '가치 색상', 'Wert Farbe', 'Valore colore', 'ค่าสี', 'Érték szín', 'Waarde kleur', 'Colo colui cultum pretii', 'Nilai Warna', 'Değer Rengi', 'Χρώμα τιμής', 'رنگ ارزش', 'Warna Nilai', 'મૂલ્યનો રંગ', 'Wartość koloru', 'Значення Колір', 'ਮੁੱਲ ਰੰਗ', 'Valoare Culoare', 'Awọ Iye', 'Launin darajar'),
(905, 'signature_background', 'Signature Background', 'স্বাক্ষর ব্যাকগ্রাউন্ড', 'Fondo de firma', 'خلفية التوقيع', 'हस्ताक्षर पृष्ठभूमि', 'دستخط کا پس منظر', '签名背景', '署名の背景', 'Fundo de assinatura', 'Подпись Фон', 'Fond de signature', '서명 배경', 'Unterschrift Hintergrund', 'Sfondo della firma', 'พื้นหลังลายเซ็น', 'Aláírás háttér', 'Handtekening achtergrond', 'Maecenas vitae signature', 'Latar Belakang Tanda Tangan', 'İmza Arka Planı', 'Ιστορικό υπογραφής', 'پیش زمینه امضا', 'Latar Belakang Tandatangan', 'સહી પૃષ્ઠભૂમિ', 'Tło podpisu', 'Фон підпису', 'ਦਸਤਖਤ ਪਿਛੋਕੜ', 'Fundal de semnătură', 'Ibuwọlu abẹlẹ', 'Sa hannu a bango'),
(906, 'bottom_signature', 'Bottom Signature', 'বটম স্বাক্ষর', 'Firma inferior', 'التوقيع السفلي', 'नीचे का हस्ताक्षर', 'نیچے دستخط', '底部签名', '下署名', 'Assinatura inferior', 'Нижняя Подпись', 'Signature du bas', '하단 서명', 'Untere Unterschrift', 'Firma inferiore', 'ลายเซ็นด้านล่าง', 'Alsó aláírás', 'Onderste handtekening', 'imo Subscriptio', 'Tanda Tangan Bawah', 'Alt İmza', 'Κάτω υπογραφή', 'امضای پایین', 'Tandatangan Bawah', 'નીચે સહી', 'Podpis na dole', 'Нижній підпис', 'ਹੇਠਾਂ ਦਸਤਖਤ', 'Semnătura de jos', 'Ibuwọlu Isalẹ', 'Sa hannu ƙasa'),
(907, 'signature_color', 'Signature Color', 'স্বাক্ষর কালার', 'Color de firma', 'لون التوقيع', 'हस्ताक्षर का रंग', 'دستخط کا رنگ', '签名色', '署名色', 'Cor da assinatura', 'Цвет подписи', 'Couleur de signature', '시그니처 컬러', 'Unterschriftenfarbe', 'Colore firma', 'สีลายเซ็น', 'Aláírás színe', 'Kenmerkende kleur', 'subscriptio Colo colui cultum', 'Warna tanda tangan', 'İmza Rengi', 'Χρώμα υπογραφής', 'رنگ امضا', 'Warna Tandatangan', 'સહીનો રંગ', 'Charakterystyczny kolor', 'Колір підпису', 'ਦਸਤਖਤ ਰੰਗ', 'Culoare semnătură', 'Awọ Ibuwọlu', 'Launin Sa hannu'),
(908, 'signature_align', 'Signature Align', 'স্বাক্ষর এলাইন', 'Alineación de firma', 'محاذاة التوقيع', 'हस्ताक्षर संरेखित करें', 'دستخط سیدھ کریں', '签名对齐', '署名の整列', 'Alinhamento de assinatura', 'Подпись Выровнять', 'Signature Align', '서명 정렬', 'Signatur ausrichten', 'Allinea firma', 'ลายเซ็น Align', 'Aláírás igazítás', 'Handtekening uitlijnen', 'subscriptio Conlinis', 'Tanda Tangan Align', 'İmza Hizalama', 'Υπογραφή Ευθυγράμμιση', 'امضا تراز', 'Tandatangan Selaraskan', 'સહી સંરેખિત કરો', 'Signature Align', 'Підпис Вирівняти', 'ਦਸਤਖਤ ਇਕਸਾਰ', 'Aliniere semnătură', 'Iforukọsilẹ Align', 'Sa hannu Align'),
(909, 'exam_title_font_size', 'Exam Title Font Size', 'এক্সাম টাইটেল ফন্ট সাইজ', 'Título del examen Tamaño de fuente', 'حجم خط الامتحان', 'परीक्षा का शीर्षक फ़ॉन्ट आकार', 'امتحان کا عنوان فونٹ سائز', '考试标题字体大小', '試験タイトルのフォントサイズ', 'Tamanho da fonte do título do exame', 'Размер шрифта заголовка экзамена', 'Taille de la police du titre de l\'examen', '시험 제목 글꼴 크기', 'Prüfungstitel Schriftgröße', 'Dimensione carattere titolo esame', 'ชื่อข้อสอบ ขนาดอักษร', 'Vizsga címe Betűméret', 'Tekengrootte examentitel', 'Font Size Title nito', 'Ukuran Font Judul Ujian', 'Sınav Başlığı Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς τίτλου εξέτασης', 'اندازه عنوان قلم امتحان', 'Saiz Fon Tajuk Peperiksaan', 'પરીક્ષાનું શીર્ષક ફontન્ટ કદ', 'Rozmiar czcionki tytułu egzaminu', 'Розмір шрифту заголовка іспиту', 'ਪਰੀਖਿਆ ਦਾ ਸਿਰਲੇਖ ਫੋਂਟ ਆਕਾਰ', 'Titlul examenului Dimensiunea fontului', 'Iwọn Font Title Exam', 'Girman Font jarrabawa'),
(910, 'exam_title_color', 'Exam Title Color', 'এক্সাম টাইটেল কালার', 'Color del título del examen', 'لون عنوان الامتحان', 'परीक्षा का शीर्षक रंग', 'امتحان کا عنوان رنگین', '考试标题颜色', '試験タイトルの色', 'Cor do título do exame', 'Цвет заголовка экзамена', 'Couleur du titre de l\'examen', '시험 제목 색상', 'Prüfungstitel Farbe', 'Colore titolo esame', 'สีชื่อข้อสอบ', 'A vizsga címe színe', 'Kleur van titel van examen', 'Title Colo colui cultum nito', 'Warna Judul Ujian', 'Sınav Başlığı Rengi', 'Χρώμα τίτλου εξέτασης', 'عنوان عنوان آزمون رنگ', 'Warna Tajuk Peperiksaan', 'પરીક્ષાનું શીર્ષક રંગ', 'Kolor tytułu egzaminu', 'Колір іспиту', 'ਪ੍ਰੀਖਿਆ ਦਾ ਸਿਰਲੇਖ ਰੰਗ', 'Culoarea titlului examenului', 'Awọ akọle Ayẹwo', 'Launin Take na Jarrabawa'),
(911, 'subject_font_size', 'Subject Font Size', 'সাবজেক্ট ফন্ট সাইজ', 'Tamaño de fuente del sujeto', 'حجم خط الموضوع', 'विषय फ़ॉन्ट आकार', 'موضوع فونٹ کا سائز', '主题字体大小', '件名のフォントサイズ', 'Tamanho da fonte do assunto', 'Размер шрифта', 'Taille de la police du sujet', '제목 글꼴 크기', 'Schriftgröße des Betreffs', 'Dimensione carattere soggetto', 'หัวเรื่อง ขนาดอักษร', 'Tárgy betűméret', 'Lettergrootte van onderwerp', 'Font Size subiecti', 'Ukuran Huruf Subjek', 'Konu Yazı Tipi Boyutu', 'Μέγεθος γραμματοσειράς θέματος', 'اندازه قلم موضوع', 'Saiz Fon Subjek', 'વિષય ફontન્ટનું કદ', 'Rozmiar czcionki tematu', 'Розмір шрифту предмета', 'ਵਿਸ਼ਾ ਫੋਂਟ ਆਕਾਰ', 'Dimensiunea fontului subiect', 'Iwọn Font Koko-ọrọ', 'Girman Font Girma'),
(912, 'subject_color', 'Subject Color', 'সাবজেক্ট কালার', 'Color sujeto', 'لون الموضوع', 'विषय रंग', 'موضوع رنگین', '主题颜色', '対象色', 'Assunto Cor', 'Цвет предмета', 'Couleur du sujet', '피사체 색', 'Motivfarbe', 'Colore soggetto', 'หัวเรื่อง สี', 'Tárgy színe', 'Onderwerp kleur', 'sub colore', 'Warna Subjek', 'Konu Rengi', 'Χρώμα θέματος', 'رنگ موضوع', 'Warna Subjek', 'વિષયનો રંગ', 'Kolor przedmiotu', 'Колір теми', 'ਵਿਸ਼ਾ ਰੰਗ', 'Culoarea subiectului', 'Awọ Koko-ọrọ', 'Launin Labari'),
(913, 'employee_id', 'Employee ID', 'কর্মচারী আইডি', 'ID de empleado', 'هوية الموظف', 'कर्मचारी कामतत्व', 'ملازم کی ID', '员工ID', '従業員ID', 'ID do Empregado', 'ID сотрудника', 'ID d\'employé', '직원 ID', 'Mitarbeiter-ID', 'Numero Identità dell\'impiegato', 'รหัสพนักงาน', 'munkavállalói azonosító', 'Werknemers-ID', 'Aliquam id', 'identitas pegawai', 'Çalışan kimliği', 'Ταυτότητα Υπαλλήλου', 'شناسه کارمند', 'ID pekerja', 'કર્મચારી આઈ.ડી.', 'dowód pracownika', 'Ідентифікатор працівника', 'ਕਰਮਚਾਰੀ ਆਈ.ਡੀ.', 'card de identitate al angajatului', 'ID agbanisiṣẹ', 'ID na Ma\'aikaci'),
(914, 'teacher_id', 'Teacher ID', 'শিক্ষক আইডি', 'ID del profesor', 'معرف المعلم', 'शिक्षक आईडी', 'اساتذہ کی شناخت', '老师ID', '教師ID', 'ID do professor', 'ID учителя', 'ID enseignant', '교사 ID', 'Lehrerausweis', 'ID insegnante', 'รหัสครู', 'Tanári azonosító', 'Docent-ID', 'id magister', 'ID guru', 'Öğretmen Kimliği', 'Αναγνωριστικό δασκάλου', 'شناسه معلم', 'ID Guru', 'શિક્ષક આઈ.ડી.', 'ID nauczyciela', 'Ідентифікатор вчителя', 'ਅਧਿਆਪਕ ਆਈ.ਡੀ.', 'ID-ul profesorului', 'ID Olukọ', 'IDAN malami'),
(915, 'student_id', 'Student ID', 'শিক্ষার্থী আইডি', 'Identificación del Estudiante', 'هوية الطالب', 'छात्र आईडी', 'طالب علم کی شناخت', '学生卡', '学生証', 'Identidade estudantil', 'Студенческий билет', 'Carte d\'étudiant', '학생 아이디', 'Studenten ID', 'ID studente', 'รหัสนักศึกษา', 'Diákigazolvány', 'Studenten-ID', 'studiosum ID', 'Identitas Siswa', 'Öğrenci Kimliği', 'Αναγνωριστικό μαθητή', 'شناسه دانشجویی', 'ID pelajar', 'વિદ્યાર્થી આઈ.ડી.', 'legitymacja studencka', 'Ідентифікатор студента', 'ਵਿਦਿਆਰਥੀ ID', 'Carnet de student', 'ID akeko', 'Dalibin Dalibi'),
(916, 'generate_employee_id_card', 'Generate Employee ID Card', 'কর্মচারী আইডি কার্ড তৈরি করুন', 'Generar tarjeta de identificación de empleado', 'إنشاء بطاقة هوية الموظف', 'कर्मचारी आईडी कार्ड जनरेट करें', 'ملازم شناختی کارڈ بنائیں', '生成员工身份证', '従業員IDカードを生成', 'Gerar cartão de identificação de funcionário', 'Генерация удостоверения личности сотрудника', 'Générer une carte d\'identité d\'employé', '직원 ID 카드 생성', 'Mitarbeiterausweis erstellen', 'Genera carta d\'identità dei dipendenti', 'ทำบัตรประจำตัวพนักงาน', 'Generáljon munkavállalói igazolványt', 'Genereer werknemer ID-kaart', 'Aliquam id generate Card', 'Hasilkan Kartu ID Karyawan', 'Çalışan Kimlik Kartı Oluşturun', 'Δημιουργία ταυτότητας υπαλλήλου', 'شناسنامه کارمند تولید کنید', 'Jana Kad Pengenalan Pekerja', 'કર્મચારીનું આઈડી કાર્ડ બનાવો', 'Wygeneruj kartę identyfikacyjną pracownika', 'Створення ідентифікаційної картки працівника', 'ਕਰਮਚਾਰੀ ਆਈਡੀ ਕਾਰਡ ਤਿਆਰ ਕਰੋ', 'Generați carte de identitate a angajaților', 'Ina Kaadi ID Kaadi abáni', 'Haɗa Katin Ma\'aikata'),
(917, 'generate_teacher_id_card', 'Generate Teacher ID Card', 'শিক্ষকের আইডি কার্ড তৈরি করুন', 'Generar tarjeta de identificación del maestro', 'إنشاء بطاقة هوية المعلم', 'शिक्षक आईडी कार्ड जनरेट करें', 'اساتذہ کا شناختی کارڈ بنائیں', '生成教师身份证', '教師IDカードを生成', 'Gerar cartão de identificação do professor', 'Создать удостоверение личности учителя', 'Générer une carte d\'identité d\'enseignant', '교사 ID 카드 생성', 'Lehrerausweis erstellen', 'Genera carta d\'identità per insegnante', 'ทำบัตรประจำตัวครู', 'Generáljon tanári személyi igazolványt', 'Genereer leraar ID-kaart', 'Id generate Teacher Card', 'Hasilkan Kartu ID Guru', 'Öğretmen Kimlik Kartı Oluştur', 'Δημιουργία ταυτότητας δασκάλου', 'شناسنامه معلم ایجاد کنید', 'Hasilkan Kad Pengenalan Guru', 'શિક્ષક આઈડી કાર્ડ બનાવો', 'Wygeneruj kartę identyfikacyjną nauczyciela', 'Створити посвідчення особи вчителя', 'ਅਧਿਆਪਕ ID ਕਾਰਡ ਬਣਾਓ', 'Generați carte de identitate pentru profesor', 'Ina kaadi Kaadi ID', 'Haɗa ID Card na Malami'),
(918, 'generate_student_id_card', 'Generate Student ID Card', 'শিক্ষার্থী আইডি কার্ড তৈরি করুন', 'Generar tarjeta de identificación de estudiante', 'إنشاء بطاقة هوية الطالب', 'छात्र आईडी कार्ड जनरेट करें', 'طلباء کا شناختی کارڈ بنائیں', '生成学生证', '学生証を生成する', 'Gerar carteira de estudante', 'Создать студенческий билет', 'Générer une carte d\'étudiant', '학생증 생성', 'Studentenausweis erstellen', 'Genera carta d\'identità per studenti', 'ทำบัตรประจำตัวนักศึกษา', 'Készítsen hallgatói személyi igazolványt', 'Genereer een studentenkaart', 'Generate discipulo ID card', 'Hasilkan Kartu ID Pelajar', 'Öğrenci Kimlik Kartı Oluştur', 'Δημιουργία φοιτητικής ταυτότητας', 'شناسنامه دانشجویی تولید کنید', 'Hasilkan Kad Pengenalan Pelajar', 'વિદ્યાર્થી આઈડી કાર્ડ બનાવો', 'Wygeneruj legitymację studencką', 'Створіть посвідчення студента', 'ਵਿਦਿਆਰਥੀ ID ਕਾਰਡ ਤਿਆਰ ਕਰੋ', 'Generați carte de identitate pentru elev', 'Ina akeko ID Card', 'Haɗa Katin ID ɗin ɗalibi'),
(919, 'generate_student_admit_card', 'Generate Student Admit Card', 'শিক্ষার্থী এডমিট  কার্ড তৈরি করুন', 'Generar tarjeta de admisión de estudiante', 'إنشاء بطاقة قبول الطالب', 'छात्र एडमिट कार्ड जनरेट करें', 'طلباء کا داخلہ کارڈ بنائیں', '生成学生录取卡', '学生許可証を生成', 'Gerar Cartão de Admissão de Estudante', 'Создать студенческий билет', 'Générer une carte d\'admission d\'étudiant', '학생 인정 카드 생성', 'Student Admit Card generieren', 'Genera Student Admit Card', 'สร้างบัตรนักศึกษา', 'Generáljon hallgatói felvételi kártyát', 'Genereer een studentenkaart', 'Discipulus ipse fatebere maius Card generate', 'Hasilkan Kartu Penerimaan Mahasiswa', 'Öğrenci Kabul Kartı Oluştur', 'Δημιουργία φοιτητικής κάρτας αποδοχής', 'کارت اعتراف دانشجویی ایجاد کنید', 'Hasilkan Kad Pengenalan Pelajar', 'વિદ્યાર્થી પ્રવેશ કાર્ડ બનાવો', 'Wygeneruj legitymację studencką', 'Створення картки прийому студентів', 'ਵਿਦਿਆਰਥੀ ਦਾਖਲਾ ਕਾਰਡ ਬਣਾਓ', 'Generați cardul de admitere pentru studenți', 'Ina Kaadi Gbigbawọle Kaadi', 'Haɗa Katin Studentalibin Studentauki'),
(920, 'income_report', 'Income Report', 'আয় রিপোর্ট', 'Informe de ingresos', 'تقرير الدخل', 'आय की रिपोर्ट', 'انکم رپورٹ', '收入报告', '収入レポート', 'Relatório de Renda', 'Отчет о доходах', 'Rapport de revenus', '소득 보고서', 'Einkommensbericht', 'Rapporto sul reddito', 'รายงานรายได้', 'Jövedelemjelentés', 'Inkomensrapport', 'reditus Report', 'Laporan Penghasilan', 'Gelir Raporu', 'Αναφορά εισοδήματος', 'گزارش درآمد', 'Laporan Pendapatan', 'આવક અહેવાલ', 'Raport o dochodach', 'Звіт про доходи', 'ਆਮਦਨੀ ਰਿਪੋਰਟ', 'Raport de venit', 'Ijabọ owo oya', 'Rahoton Mai shigowa'),
(921, 'expenditure_report', 'Expenditure Report', 'ব্যয় রিপোর্ট', 'Informe de gastos', 'تقرير الإنفاق', 'व्यय रिपोर्ट', 'اخراجات کی رپورٹ', '支出报告', '支出レポート', 'Relatório de Despesas', 'Отчет о расходах', 'Rapport de dépenses', '지출 보고서', 'Ausgabenbericht', 'Rapporto di spesa', 'รายงานรายจ่าย', 'Kiadási jelentés', 'Uitgavenverslag', 'Custus Report', 'Laporan Pengeluaran', 'Harcama Raporu', 'Αναφορά εισοδήματος', 'گزارش هزینه', 'Laporan Perbelanjaan', 'ખર્ચ અહેવાલ', 'Raport wydatków', 'Звіт про витрати', 'ਖਰਚਾ ਰਿਪੋਰਟ', 'Raport de cheltuieli', 'Ijabọ inawo', 'Rahoton kashe kudi'),
(922, 'invoice_report', 'Invoice Report', 'চালান রিপোর্ট', 'Informe de factura', 'تقرير الفاتورة', 'चालान रिपोर्ट', 'انوائس رپورٹ', '发票报告', '請求書レポート', 'Relatório de fatura', 'Отчет о счете', 'Rapport de facture', '송장 보고서', 'Rechnungsbericht', 'Rapporto fattura', 'รายงานใบแจ้งหนี้', 'Számlajelentés', 'Factuurrapport', 'cautionem Report', 'Laporan Faktur', 'Fatura Raporu', 'Αναφορά τιμολογίου', 'گزارش فاکتور', 'Laporan Invois', 'ભરતિયું અહેવાલ', 'Raport na fakturze', 'Звіт про рахунок-фактуру', 'ਚਲਾਨ ਦੀ ਰਿਪੋਰਟ', 'Raport factură', 'Ijabọ Invoice', 'Rahoton Invoice'),
(923, 'due_fee_report', 'Due Fee Report', 'বকেয়া ফি রিপোর্ট', 'Informe de honorarios adeudados', 'تقرير الرسوم المستحقة', 'देय शुल्क रिपोर्ट', 'فیس واجبات', '到期费用报告', '会費報告書', 'Relatório de taxas devidas', 'Отчет об оплате', 'Rapport sur les frais dus', '회비 보고서', 'Fälliger Gebührenbericht', 'Rapporto sulle commissioni dovute', 'รายงานค่าธรรมเนียมที่ครบกำหนด', 'Esedékes díjjelentés', 'Due Fee Report', 'Ob pretium Report', 'Laporan Biaya Jatuh Tempo', 'Ödenmesi Gereken Ücret Raporu', 'Αναφορά προθεσμίας', 'گزارش هزینه پرداخت', 'Laporan Bayaran Hutang', 'ફી ફી રિપોર્ટ', 'Raport opłat', 'Звіт про сплату збору', 'ਬਕਾਇਆ ਫੀਸ ਦੀ ਰਿਪੋਰਟ', 'Raport cu taxele scadente', 'Ijabọ Owo isanwo', 'Rahoton Kiyama'),
(924, 'fee_collection_report', 'Fee Collection Report', 'ফি সংগ্রহের রিপোর্ট', 'Informe de cobro de tarifas', 'تقرير تحصيل الرسوم', 'शुल्क संग्रह रिपोर्ट', 'فیس جمع کرنے کی رپورٹ', '收费报告', '料金徴収レポート', 'Relatório de cobrança de taxas', 'Отчет о сборе платежей', 'Rapport de perception des frais', '수수료 징수 보고서', 'Gebührenerhebungsbericht', 'Rapporto sulla riscossione delle commissioni', 'รายงานการเก็บค่าธรรมเนียม', 'Díjbeszedési jelentés', 'Kosteninzamelingsrapport', 'Books feodo Report', 'Laporan Penagihan Biaya', 'Ücret Toplama Raporu', 'Αναφορά συλλογής χρεώσεων', 'گزارش جمع آوری هزینه', 'Laporan Pungutan Yuran', 'ફી કલેક્શન રિપોર્ટ', 'Raport dotyczący pobierania opłat', 'Звіт про стягнення плати', 'ਫੀਸ ਇਕੱਠੀ ਕਰਨ ਦੀ ਰਿਪੋਰਟ', 'Raport de colectare a taxelor', 'Ijabọ Gbigba owo', 'Rahoton tattara kuɗi'),
(925, 'accounting_balance_report', 'Accounting Balance Report', 'অ্যাকাউন্টিং ব্যালেন্স রিপোর্ট', 'Informe de saldo contable', 'تقرير الميزان المحاسبي', 'लेखा संतुलन रिपोर्ट', 'اکاؤنٹنگ بیلنس رپورٹ', 'Accounting Balance Report', '会計残高レポート', 'Relatório de Saldo Contábil', 'Бухгалтерский баланс', 'Rapport sur le solde comptable', '회계 잔액 보고서', 'Bilanzsaldobericht', 'Rapporto sul saldo contabile', 'รายงานยอดดุลบัญชี', 'Számviteli mérleg jelentés', 'Boekhoudsaldo rapport', 'Libra ratio Report', 'Laporan Neraca Akuntansi', 'Muhasebe Dengesi Raporu', 'Αναφορά υπολοίπου λογιστικής', 'گزارش مانده حسابداری', 'Laporan Imbangan Perakaunan', 'એકાઉન્ટિંગ બેલેન્સ રિપોર્ટ', 'Raport bilansu księgowego', 'Звіт про баланс бухгалтерського обліку', 'ਲੇਖਾ ਬਕਾਇਆ ਰਿਪੋਰਟ', 'Raportul soldului contabil', 'Ijabọ Iwontunwosi iṣiro', 'Rahoton Balaguro na Lissafi'),
(926, 'library_report', 'Library Report', 'লাইব্রেরি রিপোর্ট', 'Informe de la biblioteca', 'تقرير المكتبة', 'लाइब्रेरी रिपोर्ट', 'لائبریری رپورٹ', '图书馆报告', 'ライブラリレポート', 'Relatório da Biblioteca', 'Отчет библиотеки', 'Rapport de bibliothèque', '도서관 보고서', 'Bibliotheksbericht', 'Rapporto della biblioteca', 'รายงานห้องสมุด', 'Könyvtári jelentés', 'Bibliotheekrapport', 'bibliotheca Report', 'Laporan Perpustakaan', 'Kütüphane Raporu', 'Αναφορά βιβλιοθήκης', 'گزارش کتابخانه', 'Laporan Perpustakaan', 'પુસ્તકાલય અહેવાલ', 'Raport biblioteczny', 'Звіт про бібліотеку', 'ਲਾਇਬ੍ਰੇਰੀ ਰਿਪੋਰਟ', 'Raport de bibliotecă', 'Ijabọ Ile-ikawe', 'Rahoton Laburare'),
(927, 'student_attendance_report', 'Student Attendance Report', 'ছাত্র উপস্থিতি রিপোর্ট', 'Informe de asistencia estudiantil', 'تقرير حضور الطالب', 'छात्र उपस्थिति रिपोर्ट', 'طلبہ کی حاضری کی رپورٹ', '学生出勤报告', '学生出席レポート', 'Relatório de Participação do Aluno', 'Отчет о посещаемости студентов', 'Rapport de fréquentation scolaire', '학생 출석 보고서', 'Anwesenheitsbericht für Studenten', 'Rapporto sulla partecipazione degli studenti', 'รายงานการเข้างานของนักเรียน', 'Hallgatói jelenléti jelentés', 'Aanwezigheidsrapport voor studenten', 'Attendance discipulus Report', 'Laporan Kehadiran Mahasiswa', 'Öğrenci Devam Raporu', 'Έκθεση παρακολούθησης φοιτητών', 'گزارش حضور و غیاب دانشجویان', 'Laporan Kehadiran Pelajar', 'વિદ્યાર્થી હાજરી અહેવાલ', 'Raport obecności studentów', 'Звіт про відвідування студентів', 'ਵਿਦਿਆਰਥੀ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raport de prezență la elevi', 'Ijabọ Wiwa Ọmọ ile-iwe', 'Rahoton Halartar Dalibi'),
(928, 'student_yearly_attendance_report', 'Student Yearly Attendance Report', 'ছাত্র  বার্ষিক উপস্থিতি রিপোর্ট', 'Informe de asistencia anual del estudiante', 'تقرير الحضور السنوي للطالب', 'छात्र वार्षिक उपस्थिति रिपोर्ट', 'طلبہ کی سالانہ حاضری کی رپورٹ', '学生年度出勤报告', '学生の年次出席レポート', 'Relatório Anual de Participação do Aluno', 'Ежегодный отчет о посещаемости студентов', 'Rapport annuel de fréquentation scolaire', '학생 연간 출석 보고서', 'Jährlicher Anwesenheitsbericht für Studenten', 'Rapporto sulla frequenza annuale degli studenti', 'รายงานการเข้าร่วมงานประจำปีของนักศึกษา', 'A hallgatói éves látogatottsági jelentés', 'Jaarlijks aanwezigheidsrapport voor studenten', 'Quot annis discipulus Attendance Report', 'Laporan Kehadiran Tahunan Siswa', 'Öğrenci Yıllık Devam Raporu', 'Ετήσια έκθεση παρακολούθησης φοιτητών', 'گزارش حضور و غیاب سالانه دانشجویان', 'Laporan Kehadiran Tahunan Pelajar', 'વિદ્યાર્થી વાર્ષિક હાજરી અહેવાલ', 'Raport rocznej frekwencji studenckiej', 'Щорічний звіт про відвідування студентів', 'ਵਿਦਿਆਰਥੀ ਸਾਲਾਨਾ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul de prezență al studenților anual', 'Ijabọ Wiwa wiwa Ọmọ-iwe ti Ọmọ ọdun', 'Rahoton Halarci Studentan Dalibi na shekara'),
(929, 'teacher_attendance_report', 'Teacher Attendance Report', 'শিক্ষক উপস্থিতি রিপোর্ট', 'Informe de asistencia del maestro', 'تقرير حضور المعلم', 'शिक्षक उपस्थिति रिपोर्ट', 'اساتذہ کی حاضری کی رپورٹ', '教师出勤报告', '教師出席レポート', 'Relatório de presença do professor', 'Отчет посещаемости учителей', 'Rapport de présence des enseignants', '교사 출석 보고서', 'Anwesenheitsbericht für Lehrer', 'Rapporto sulla partecipazione degli insegnanti', 'รายงานการเข้างานของครู', 'Tanári jelenléti jelentés', 'Aanwezigheidsrapport voor leerkrachten', 'Magister Attendance Report', 'Laporan Kehadiran Guru', 'Öğretmen Katılım Raporu', 'Αναφορά παρακολούθησης καθηγητών', 'گزارش حضور و غیاب معلمان', 'Laporan Kehadiran Guru', 'શિક્ષકની હાજરી અહેવાલ', 'Raport obecności nauczyciela', 'Звіт про відвідування вчителів', 'ਅਧਿਆਪਕ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul de prezență a profesorilor', 'Ijabọ Wiwa Olukọ', 'Rahoton Halartar Malami'),
(930, 'teacher_yearly_attendance_report', 'Teacher Yearly Attendance Report', 'শিক্ষক বার্ষিক উপস্থিতি রিপোর্ট', 'Informe de asistencia anual del maestro', 'تقرير الحضور السنوي للمعلم', 'शिक्षक वार्षिक उपस्थिति रिपोर्ट', 'اساتذہ کی سالانہ حاضری کی رپورٹ', '教师年度出勤报告', '教師の年次出席レポート', 'Relatório anual de frequência do professor', 'Ежегодный отчет о посещаемости учителя', 'Rapport annuel de présence des enseignants', '교사 연간 출석 보고서', 'Jährlicher Anwesenheitsbericht des Lehrers', 'Rapporto di frequenza annuale dell\'insegnante', 'รายงานการเข้าร่วมประชุมประจำปีของครู', 'Tanári éves jelenléti jelentés', 'Jaarlijks aanwezigheidsrapport voor de leerkracht', 'Magister quotannis exspectare Attendance Report', 'Laporan Kehadiran Guru Tahunan', 'Öğretmen Yıllık Katılım Raporu', 'Ετήσια έκθεση παρακολούθησης δασκάλων', 'گزارش حضور و غیاب سالانه معلمان', 'Laporan Kehadiran Tahunan Guru', 'શિક્ષકનો વાર્ષિક હાજરી અહેવાલ', 'Roczne sprawozdanie z obecności nauczyciela', 'Щорічний звіт про відвідування вчителів', 'ਅਧਿਆਪਕ ਦੀ ਸਾਲਾਨਾ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul de participare anual al profesorului', 'Ijabọ Wiwa wiwa Olukọ lododun', 'Rahoton Halartar Malami na Shekara'),
(931, 'employee_attendance_report', 'Employee Attendance Report', 'কর্মচারী উপস্থিতি রিপোর্ট', 'Informe de asistencia del empleado', 'تقرير حضور الموظف', 'कर्मचारी उपस्थिति रिपोर्ट', 'ملازمین کی حاضری کی رپورٹ', '员工出勤报告', '従業員出席レポート', 'Relatório de presença do funcionário', 'Отчет о посещаемости сотрудников', 'Rapport de présence des employés', '직원 출석 보고서', 'Anwesenheitsbericht der Mitarbeiter', 'Rapporto sulla partecipazione dei dipendenti', 'รายงานการเข้างานของพนักงาน', 'Munkavállalói jelenléti jelentés', 'Aanwezigheidsrapport', 'Aliquam Report Attendance', 'Laporan Kehadiran Karyawan', 'Çalışan Katılım Raporu', 'Έκθεση παρακολούθησης εργαζομένων', 'گزارش حضور و غیاب کارمندان', 'Laporan Kehadiran Pekerja', 'કર્મચારીની હાજરી અહેવાલ', 'Raport obecności pracowników', 'Звіт про відвідування працівників', 'ਕਰਮਚਾਰੀ ਦੀ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raport de prezență a angajaților', 'Ijabọ Wiwa Abáni', 'Rahoton Halartar Ma\'aikata'),
(932, 'employee_yearly_attendance_report', 'Employee Yearly Attendance Report', 'কর্মচারীর বার্ষিক উপস্থিতি প্রতিবেদন', 'Informe de asistencia anual del empleado', 'تقرير الحضور السنوي للموظف', 'कर्मचारी वार्षिक उपस्थिति रिपोर्ट', 'ملازم کی سالانہ حاضری کی رپورٹ', '员工年度出勤报告', '従業員の年次出席レポート', 'Relatório anual de presença do funcionário', 'Ежегодный отчет о посещаемости сотрудников', 'Rapport annuel de présence des employés', '직원 연간 출석 보고서', 'Jährlicher Anwesenheitsbericht der Mitarbeiter', 'Rapporto di frequenza annuale dei dipendenti', 'รายงานการเข้างานประจำปีของพนักงาน', 'Munkavállalói éves jelenléti jelentés', 'Jaarlijks aanwezigheidsrapport werknemer', 'Aliquam Report quotannis exspectare Attendance', 'Laporan Kehadiran Tahunan Karyawan', 'Çalışan Yıllık Katılım Raporu', 'Ετήσια έκθεση παρακολούθησης εργαζομένων', 'گزارش حضور و غیاب سالانه کارمندان', 'Laporan Kehadiran Tahunan Pekerja', 'કર્મચારીનો વાર્ષિક હાજરી અહેવાલ', 'Roczny raport obecności pracowników', 'Щорічний звіт про відвідування працівників', 'ਕਰਮਚਾਰੀ ਦੀ ਸਲਾਨਾ ਹਾਜ਼ਰੀ ਰਿਪੋਰਟ', 'Raportul anual de prezență a angajaților', 'Ijabọ Wiwa wiwa Oṣiṣẹ ti Ọdun', 'Rahoton Halartar Ma\'aikata na Shekara'),
(933, 'student_invoice_report', 'Student Invoice Report', 'ছাত্র চালান রিপোর্ট', 'Informe de factura estudiantil', 'تقرير فاتورة الطالب', 'छात्र चालान रिपोर्ट', 'اسٹوڈنٹ انوائس رپورٹ', '学生发票报告', '学生請求書レポート', 'Relatório da fatura do aluno', 'Отчет о студенческом счете', 'Rapport de facture étudiant', '학생 송장 보고서', 'Studentenrechnungsbericht', 'Rapporto sulla fattura dello studente', 'รายงานใบกำกับสินค้านักเรียน', 'Hallgatói számlajelentés', 'Factuurrapport voor studenten', 'Cautionem discipulus Report', 'Laporan Faktur Mahasiswa', 'Öğrenci Fatura Raporu', 'Αναφορά τιμολογίου μαθητή', 'گزارش فاکتور دانشجویی', 'Laporan Invois Pelajar', 'વિદ્યાર્થી ભરતિયું અહેવાલ', 'Raport faktury studenckiej', 'Звіт про рахунки для студентів', 'ਵਿਦਿਆਰਥੀ ਚਲਾਨ ਰਿਪੋਰਟ', 'Raportul facturilor studenților', 'Ijabọ Invoice ọmọ ile-iwe', 'Rahoton Invoice Student'),
(934, 'payroll_report', 'Payroll Report', 'বেতন তালিকা রিপোর্ট', 'Informe de nómina', 'تقرير كشوف المرتبات', 'पेरोल रिपोर्ट', 'پے رول', '工资报告', '給与レポート', 'Relatório de Folha de Pagamento', 'Отчет о заработной плате', 'Rapport de paie', '급여 보고서', 'Abrechnungsbericht', 'Rapporto sui salari', 'รายงานเงินเดือน', 'Bérszámfejtési jelentés', 'Payroll Report', 'Mauris scelerisque dapibus Report', 'Laporan Penggajian', 'Bordro Raporu', 'Αναφορά μισθοδοσίας', 'گزارش حقوق و دستمزد', 'Laporan Gaji', 'પેરોલ રિપોર્ટ', 'Raport płac', 'Звіт про оплату праці', 'ਤਨਖਾਹ ਰਿਪੋਰਟ', 'Raport de salarizare', 'Ijabọ isanwo', 'Rahoton Biyan Kuɗi'),
(935, 'daily_transaction_report', 'Daily Transaction Report', 'দৈনিক লেনদেন রিপোর্ট', 'Informe diario de transacciones', 'تقرير المعاملات اليومية', 'दैनिक लेन-देन की रिपोर्ट', 'روزانہ لین دین کی رپورٹ', '每日交易报告', '日次トランザクションレポート', 'Relatório diário de transações', 'Ежедневный отчет о транзакциях', 'Rapport de transaction quotidien', '일일 거래 보고서', 'Täglicher Transaktionsbericht', 'Rapporto sulle transazioni giornaliere', 'รายงานธุรกรรมรายวัน', 'Napi tranzakciós jelentés', 'Dagelijks transactierapport', 'Transactionis cotidie Report', 'Laporan Transaksi Harian', 'Günlük İşlem Raporu', 'Ημερήσια έκθεση συναλλαγών', 'گزارش معاملات روزانه', 'Laporan Transaksi Harian', 'દૈનિક વ્યવહાર અહેવાલ', 'Raport codziennych transakcji', 'Щоденний звіт про трансакції', 'ਰੋਜ਼ਾਨਾ ਲੈਣ-ਦੇਣ ਦੀ ਰਿਪੋਰਟ', 'Raport zilnic de tranzacții', 'Ijabọ Iṣowo ojoojumọ', 'Rahoton Kasuwanci na yau da kullun'),
(936, 'daily_statement_report', 'Daily Statemen Report', 'দৈনিক স্টেটমেন রিপোর্ট', 'Informe diario de estado de cuenta', 'تقرير البيان اليومي', 'दैनिक विवरण रिपोर्ट', 'ڈیلی بیان', '每日报表报告', '日次報告書', 'Relatório Diário', 'Ежедневный отчет', 'Rapport de déclaration quotidien', '일일 보고서', 'Täglicher Kontoauszugsbericht', 'Rapporto giornaliero', 'รายงานงบรายวัน', 'Napi jelentés', 'Dagelijks overzichtsrapport', 'Editio cotidie Report', 'Laporan Pernyataan Harian', 'Günlük Bildirim Raporu', 'Αναφορά ημερήσιας δήλωσης', 'گزارش بیانیه روزانه', 'Laporan Penyata Harian', 'દૈનિક નિવેદન અહેવાલ', 'Raport dzienny wyciąg', 'Щоденний звіт про звіт', 'ਰੋਜ਼ਾਨਾ ਬਿਆਨ', 'Raport zilnic de declarații', 'Ijabọ Gbójoojumọ', 'Rahoton sanarwa na yau da kullun'),
(937, 'exam_result_report', 'Exam Result Report', 'পরীক্ষার ফলাফল রিপোর্ট', 'Informe de resultados del examen', 'تقرير نتيجة الامتحان', 'परीक्षा परिणाम की रिपोर्ट', 'امتحان کے نتائج کی رپورٹ', '考试成绩报告', '試験結果レポート', 'Relatório de resultado do exame', 'Отчет о результатах экзамена', 'Rapport des résultats d\'examen', '시험 결과 보고서', 'Prüfungsergebnisbericht', 'Rapporto sui risultati dell\'esame', 'รายงานผลสอบ', 'Vizsga eredményjelentése', 'Onderzoeksresultatenrapport', 'Report nito results', 'Laporan Hasil Ujian', 'Sınav Sonuç Raporu', 'Αναφορά αποτελεσμάτων εξετάσεων', 'گزارش نتیجه آزمون', 'Laporan Keputusan Peperiksaan', 'પરીક્ષાનું પરિણામ અહેવાલ', 'Raport z wyników egzaminu', 'Звіт про результати іспиту', 'ਪ੍ਰੀਖਿਆ ਨਤੀਜੇ ਰਿਪੋਰਟ', 'Raportul rezultatului examenului', 'Ijabọ Esi Iroyin', 'Rahoton Sakamakon jarrabawa'),
(938, 'tabular_report', 'Tabular Report', 'সারণী রিপোর্ট', 'Informe tabular', 'تقرير جدولي', 'सारणीबद्ध रिपोर्ट', 'ٹیبلر رپورٹ', '表格报告', '表形式レポート', 'Relatório tabular', 'Табличный отчет', 'Rapport tabulaire', '테이블 형식 보고서', 'Tabellarischer Bericht', 'Rapporto tabulare', 'รายงานแบบตาราง', 'Táblázatos jelentés', 'Rapport in tabelvorm', 'Expositio canonica Report', 'Laporan Tabular', 'Tablo Raporu', 'Πίνακας αναφοράς', 'گزارش جدول', 'Laporan Jadual', 'કોષ્ટક અહેવાલ', 'Raport tabelaryczny', 'Табличний звіт', 'ਸਾਰਣੀਕ ਰਿਪੋਰਟ', 'Raport tabular', 'Ijabọ Tabular', 'Rahoton Tabular'),
(939, 'graphical_report', 'Graphical Report', 'গ্রাফিকাল রিপোর্ট', 'Informe gráfico', 'تقرير رسومي', 'ग्राफिकल रिपोर्ट', 'گرافیکل رپورٹ', '图形报告', 'グラフィカルレポート', 'Relatório Gráfico', 'Графический отчет', 'Rapport graphique', '그래픽 보고서', 'Grafischer Bericht', 'Rapporto grafico', 'รายงานแบบกราฟิก', 'Grafikus jelentés', 'Grafisch rapport', 'graphical Report', 'Laporan Grafik', 'Grafik Raporu', 'Γραφική αναφορά', 'گزارش گرافیکی', 'Laporan Grafik', 'ગ્રાફિકલ અહેવાલ', 'Raport graficzny', 'Графічний звіт', 'ਗ੍ਰਾਫਿਕਲ ਰਿਪੋਰਟ', 'Raport grafic', 'Iroyin ayaworan', 'Rahoton Zane'),
(940, 'manage_frontend', 'Manage Frontend', 'সম্মুখভাগ পরিচালনা করুন', 'Administrar frontend', 'إدارة الواجهة الأمامية', 'फ्रंटेंड प्रबंधित करें', 'فرنٹ اینڈ کا انتظام کریں', '管理前端', 'フロントエンドを管理', 'Gerenciar Frontend', 'Управление интерфейсом', 'Gérer le frontend', '프론트 엔드 관리', 'Frontend verwalten', 'Gestisci frontend', 'จัดการส่วนหน้า', 'Kezelje a Frontend-et', 'Beheer Frontend', 'curo Frontend', 'Kelola Frontend', 'Kullanıcı Arabirimini Yönet', 'Διαχείριση Frontend', 'مدیریت Frontend', 'Urus Frontend', 'અગ્ર મેનેજ કરો', 'Zarządzaj Frontendem', 'Управління Frontend', 'ਫਰੰਟੈਂਡ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează Frontend', 'Ṣakoso Frontend', 'Sarrafa Frontend'),
(941, 'student_report', 'Student Report', 'ছাত্র রিপোর্ট', 'Informe del alumno', 'تقرير الطالب', 'छात्र की रिपोर्ट', 'طلبہ کی رپورٹ', '学生报告', '学生レポート', 'Relatório do Aluno', 'Студенческий отчет', 'Rapport étudiant', '학생 보고서', 'Studentenbericht', 'Rapporto dello studente', 'รายงานนักศึกษา', 'Hallgatói jelentés', 'Student Report', 'Report discipulus', 'Laporan Siswa', 'Öğrenci Raporu', 'Αναφορά μαθητών', 'گزارش دانشجویی', 'Laporan Pelajar', 'વિદ્યાર્થી અહેવાલ', 'Raport studenta', 'Звіт студентів', 'ਵਿਦਿਆਰਥੀ ਰਿਪੋਰਟ', 'Raport studențesc', 'Iroyin ọmọ ile-iwe', 'Rahoton Dalibi'),
(942, 'student_activity_report', 'Student Activity Report', 'শিক্ষার্থীদের ক্রিয়াকলাপের রিপোর্ট', 'Informe de actividad del alumno', 'تقرير نشاط الطالب', 'छात्र गतिविधि रिपोर्ट', 'طلبا کی سرگرمی کی رپورٹ', '学生活动报告', '学生活動レポート', 'Relatório de Atividades do Aluno', 'Отчет о деятельности студентов', 'Rapport d\'activité des élèves', '학생 활동 보고서', 'Schüleraktivitätsbericht', 'Rapporto sull\'attività degli studenti', 'รายงานกิจกรรมนักศึกษา', 'Hallgatói tevékenységi jelentés', 'Activiteitenrapport voor studenten', 'Actio discipulus Report', 'Laporan Kegiatan Siswa', 'Öğrenci Faaliyet Raporu', 'Αναφορά δραστηριοτήτων μαθητή', 'گزارش فعالیت دانشجویی', 'Laporan Aktiviti Pelajar', 'વિદ્યાર્થી પ્રવૃત્તિ અહેવાલ', 'Raport aktywności studenckiej', 'Звіт про діяльність студентів', 'ਵਿਦਿਆਰਥੀ ਗਤੀਵਿਧੀ ਰਿਪੋਰਟ', 'Raport de activitate a studenților', 'Ijabọ Iṣẹ-ṣiṣe ọmọ ile-iwe', 'Rahoton Ayyukan ɗalibai'),
(943, 'web', 'Web', 'ওয়েব', 'Web', 'الويب', 'वेब', 'ویب', '网页', 'ウェブ', 'Rede', 'Web', 'la toile', '편물', 'Netz', 'ragnatela', 'เว็บ', 'háló', 'Web', 'Web', 'Web', 'ağ', 'Ιστός', 'وب', 'Web', 'વેબ', 'Sieć', 'Веб', 'ਵੈੱਬ', 'Web', 'Oju opo wẹẹbu', 'Yanar gizo'),
(1084, 'candidate', 'Candidate', 'প্রার্থী', 'Candidata', 'مرشح', 'उम्मीदवार', 'امیدوار', '候选人', '候補者', 'Candidato', 'Кандидат', 'Candidate', '후보자', 'Kandidatin', 'Candidata', 'ผู้สมัคร', 'Jelölt', 'Kandidaat', 'Candidatus', 'Calon', 'Aday', 'Υποψήφιος', 'نامزد', 'calon', 'ઉમેદવાર', 'Kandydat', 'Кандидат', 'ਉਮੀਦਵਾਰ', 'Candidat', 'Oludije', 'Dan takara'),
(1085, 'donar', 'Donar', 'ডোনার', 'Donar', 'جهات مانحة', 'दाता', 'ڈونر', '多纳尔', 'ドナー', 'Donar', 'Донар', 'Donar', '도나르', 'Donar', 'donare', 'Donar', 'Donar', 'Donar', 'Donar', 'Donar', 'donar', 'Donar', 'دونار', 'Donar', 'ડોનાર', 'Donar', 'Донар', 'ਡੋਨਰ', 'Donar', 'Donar', 'Donar'),
(1086, 'manage_candidate', 'Manage Candidate', 'প্রার্থী পরিচালনা করুন', 'Administrar candidata', 'إدارة المرشح', 'उम्मीदवार को प्रबंधित करें', 'امیدوار کا انتظام کریں۔', '管理候选人', '候補者を管理する', 'Gerenciar Candidato', 'Управлять кандидатом', 'Gérer le candidat', '후보자 관리', 'Kandidaten verwalten', 'Gestisci candidato', 'จัดการผู้สมัคร', 'A jelölt kezelése', 'Kandidaat beheren', 'Curo Candidatus', 'Kelola Kandidat', 'Adayı Yönet', 'Διαχείριση Υποψηφίου', 'مدیریت نامزد', 'Uruskan Calon', 'ઉમેદવારનું સંચાલન કરો', 'Zarządzaj kandydatem', 'Керувати кандидатом', 'ਉਮੀਦਵਾਰ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează Candidatul', 'Ṣakoso awọn oludije', 'Sarrafa Dan takara'),
(1087, 'manage_donar', 'Manage Donar', 'ডোনার পরিচালনা করুন', 'Administrar Donar', 'إدارة المتبرع', 'दाता को प्रबंधित करें', 'ڈونر کا انتظام کریں۔', '管理唐纳', 'ドナーを管理する', 'Gerenciar Donar', 'Управляйте Донаром', 'Gérer Donar', '도나르 관리', 'Donar verwalten', 'Gestisci donar', 'จัดการ Donar', 'Kezelje Donart', 'Donar beheren', 'Curo Donar', 'Kelola Donar', 'Donar\'ı Yönet', 'Διαχειριστείτε τον Donar', 'Donar را مدیریت کنید', 'Uruskan Donar', 'ડોનારનું સંચાલન કરો', 'Zarządzaj Donarem', 'Керуйте Донаром', 'ਡੋਨਰ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează Donar', 'Ṣakoso Donar', 'Sarrafa Donar'),
(1088, 'donar_type', 'Donar Type', 'ডোনার টাইপ', 'Tipo de Donar', 'نوع المتبرع', 'दाता प्रकार', 'ڈونر کی قسم', '捐助类型', 'ドナータイプ', 'Tipo Donar', 'Донар Тип', 'Type de don', '기부자 유형', 'Donar-Typ', 'Tipo di donatore', 'ประเภทผู้บริจาค', 'Donar típus', 'Donartype', 'Donar Type', 'Tipe Donar', 'Donar Tipi', 'Τύπος Donar', 'نوع دونار', 'Jenis Donar', 'ડોનર પ્રકાર', 'Typ Donara', 'Тип донара', 'ਡੋਨਰ ਦੀ ਕਿਸਮ', 'Tip donator', 'Donar Iru', 'Donar Type'),
(1089, 'donar_name', 'Donar Name', 'ডোনার নাম', 'Donar Nombre', 'اسم المتبرع', 'दाता का नाम', 'ڈونر کا نام', '捐助者姓名', 'ドナー名', 'Nome Donar', 'Донар Имя', 'Nom du donateur', '기부자 이름', 'Donar-Name', 'Nome del donatore', 'ชื่อผู้บริจาค', 'Donar név', 'Donarnaam:', 'Donar Name', 'Nama Donar', 'Donar Adı', 'Όνομα Donar', 'نام دونار', 'Nama Donar', 'ડોનર નામ', 'Imię Donara', 'Ім\'я Донара', 'ਡੋਨਰ ਨਾਮ', 'Numele Donar', 'Orukọ Donar', 'Sunan Donar'),
(1090, 'manage_scholarship', 'Manage Scholarship', ' স্কলারশিপ পরিচালনা করুন', 'Administrar beca', 'إدارة المنحة', 'छात्रवृत्ति प्रबंधित करें', 'اسکالرشپ کا انتظام کریں۔', '管理奖学金', '奨学金を管理する', 'Gerenciar bolsa de estudos', 'Управлять стипендией', 'Gérer la bourse', '장학금 관리', 'Stipendium verwalten', 'Gestisci borsa di studio', 'จัดการทุนการศึกษา', 'Ösztöndíj kezelése', 'Beurs beheren', 'Curo Scholarship', 'Kelola Beasiswa', 'Bursu Yönet', 'Διαχειριστείτε την υποτροφία', 'مدیریت بورسیه', 'Menguruskan Biasiswa', 'શિષ્યવૃત્તિનું સંચાલન કરો', 'Zarządzaj stypendium', 'Керуйте стипендією', 'ਸਕਾਲਰਸ਼ਿਪ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați bursa', 'Ṣakoso awọn sikolashipu', 'Sarrafa Scholarship'),
(1091, 'miscellaneous', 'Miscellaneous', 'বিবিধ', 'Diversa', 'متنوع', 'विविध', 'متفرق', '各种各样的', 'その他', 'Diversas', 'Разное', 'Divers', '여러 가지 잡다한', 'Sonstig', 'Varie', 'เบ็ดเตล็ด', 'Vegyes', 'Diversen', 'Miscellaneous', 'Aneka ragam', 'Çeşitli', 'Διάφορα', 'متفرقه', 'Macam-macam', 'વિવિધ', 'Różnorodny', 'Різне', 'ਫੁਟਕਲ', 'Diverse', 'Oriṣiriṣi', 'Daban-daban'),
(1092, 'manage_award', 'Manage Award', 'পুরষ্কার পরিচালনা করুন', 'Gestionar premio', 'جائزة الإدارة', 'पुरस्कार प्रबंधित करें', 'ایوارڈ کا انتظام کریں۔', '管理奖', '賞を管理する', 'Gerenciar Prêmio', 'Управление наградой', 'Gérer la récompense', '수상 관리', 'Auszeichnung verwalten', 'Gestisci premio', 'จัดการรางวัล', 'Díj kezelése', 'Award beheren', 'Curo Award', 'Kelola Penghargaan', 'Ödülü Yönet', 'Διαχείριση Βραβείου', 'مدیریت جایزه', 'Menguruskan Anugerah', 'એવોર્ડ મેનેજ કરો', 'Zarządzaj nagrodą', 'Премія «Управління».', 'ਅਵਾਰਡ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează premiul', 'Ṣakoso Eye', 'Sarrafa Kyauta'),
(1093, 'manage_todo', 'Manage Todo', ' কাজ পরিচালনা', 'Administrar Todo', 'إدارة ثم', 'फिर प्रबंधित करें', 'پھر انتظام کریں۔', '管理待办事项', 'Todoを管理する', 'Conseguem fazer', 'Справляться', 'Réussir à faire', '하려고한다', 'Schaffen etwas zu machen', 'Riuscire a fare', 'จัดการทำ', 'A Todo kezelése', 'Todo beheren', 'Curo Todo', 'Kelola Todo', 'Yapmaya karar verdi', 'Καταφέρνω να κάνω', 'Todo را مدیریت کنید', 'Urus Todo', 'Todo મેનેજ કરો', 'مدیریت انجام دادن', 'Керуйте Todo', 'ਟੂਡੋ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Reușește să facă', 'Ṣakoso awọn Todo', 'Sarrafa Todo'),
(1094, 'award', 'Award', 'পুরস্কার', 'Otorgar', 'جائزة', 'पुरस्कार', 'ایوارڈ', '奖', '賞', 'Prêmio', 'Награда', 'Prix', '상', 'Vergeben', 'Premio', 'รางวัล', 'Díj', 'Prijs', 'Award', 'menghadiahkan', 'Ödül', 'Βραβείο', 'جایزه', 'Anugerah', 'પુરસ્કાર', 'Nagroda', 'Нагорода', 'ਅਵਾਰਡ', 'Adjudecare', 'Eye', 'Kyauta'),
(1095, 'winner', 'Winner', 'বিজয়ী', 'Ganadora', 'حكيم', 'ढंग', 'عقل مند', '优胜者', '勝者', NULL, 'Победитель', 'Gagnante', '우승자', 'Gewinnerin', 'Vincitrice', 'ผู้ชนะ', 'Győztes', 'Winnaar', 'Victor', 'Pemenang', 'kazanan', 'Νικητής', 'برنده', 'Pemenang', 'વિજેતા', 'Zwycięzca', 'Переможець', 'ਜੇਤੂ', 'Câştigător', 'Olubori', 'Nasara'),
(1096, 'gift', 'Gift', 'উপহার', 'Regalo', 'هدية', 'उपहार', 'تحفہ', '礼物', '贈り物', 'Presente', 'Подарок', 'Cadeau', '선물', 'Geschenk', 'Regalo', 'ของขวัญ', 'Ajándék', 'Geschenk', 'Donum', 'Hadiah', 'Hediye', 'Δώρο', 'هدیه', 'Hadiah', 'ભેટ', 'Prezent', 'Подарунок', 'ਤੋਹਫ਼ਾ', 'Cadou', 'Ẹbun', 'Kyauta'),
(1097, 'todo', 'Todo', 'কাজ', 'Hacer', 'ثم', 'फिर', 'پھر', '去做', 'Todo', 'Pendência', 'Делать', 'À faire', '할 것', 'Machen', 'Da fare', 'ทำ', 'Csinálni', 'Te doen', 'ad como', 'Melakukan', 'Yapmak', 'Να κάνω', 'انجام دادن', 'Todo', 'શું કરવું', 'Do zrobienia', 'Робити', 'ਕਰਨਾ', 'A face', 'Todo', 'Todo'),
(1098, 'start', 'Start', 'শুরু করুন', 'Comienzo', 'يبدأ', 'शुरू', 'شروع کریں۔', '开始', '始める', 'Começar', 'Начинать', 'Début', '시작', 'Start', 'Cominciare', 'เริ่ม', 'Rajt', 'Begin', 'Satus', 'Awal', 'Başlangıç', 'Αρχή', 'شروع کنید', 'Mulakan', 'શરૂઆત', 'Początek', 'Почніть', 'ਸ਼ੁਰੂ ਕਰੋ', 'start', 'Bẹrẹ', 'Fara'),
(1099, 'progress', 'Progress', 'অগ্রগতি', 'Progreso', 'تقدم', 'प्रगति', 'پیش رفت', '进步', '進捗', 'Progresso', 'Прогресс', 'Le progrès', '진전', 'Fortschritt', 'Progresso', 'ความคืบหน้า', 'Előrehalad', 'Voortgang', 'Progressus', 'Kemajuan', 'İlerlemek', 'Πρόοδος', 'پیش رفتن', 'Kemajuan', 'પ્રગતિ', 'Postęp', 'Прогрес', 'ਤਰੱਕੀ', 'Progres', 'Ilọsiwaju', 'Ci gaba'),
(1100, 'pause', 'Pause', 'বিরতি', 'Pausa', 'بوش', 'पौशे', 'پوشے', '暂停', '一時停止', 'Pausa', 'Пауза', 'Pause', '정지시키다', 'Pause', 'Pausa', 'หยุดชั่วคราว', 'Szünet', 'Pauze', 'Pause', 'Berhenti sebentar', 'Duraklat', 'Παύση', 'مکث کنید', 'jeda', 'વિરામ', 'Pauza', 'Пауза', 'ਵਿਰਾਮ', 'Pauză', 'Sinmi', 'Dakata'),
(1101, 'closed', 'Closed', 'বন্ধ', 'Cerrada', 'مغلق', 'बंद किया हुआ', 'بند', '关闭', '閉まっている', 'Fechadas', 'Закрыто', 'Fermée', '닫은', 'Abgeschlossen', 'Chiusa', 'ปิด', 'Zárva', 'Gesloten', 'Clausa', 'Tertutup', 'Kapalı', 'Κλειστό', 'بسته شد', 'tertutup', 'બંધ', 'Zamknięte', 'зачинено', 'ਬੰਦ', 'Închis', 'Pipade', 'An rufe'),
(1102, 'faq', 'Faq', 'প্রশ্ন', 'Preguntas más frecuentes', 'اللعنة', 'लानत है', 'بھاڑ میں جاؤ', '常问问题', 'よくある質問', 'Perguntas frequentes', 'Часто задаваемые вопросы', 'FAQ', '자주하는 질문', 'FAQ', 'FAQ', 'คำถามที่พบบ่อย', 'GYIK', 'FAQ', 'Faq', 'FAQ', 'SSS', 'Συχνές ερωτήσεις', 'فک', 'Faq', 'FAQ', 'FAQ', 'Поширені запитання', 'FAQ', 'FAQ', 'Faq', 'Faq');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(1103, 'assing_to', 'Assing To', 'যাকে বরাদ্দ করা হয়েছে', 'Asignar a', 'سباق', 'दौड़', 'ریسنگ', '分配给', '割りあてる', 'Atribuir a', 'Назначить на', 'Affecter à', '할당 대상', 'Zuweisen', 'Assegnato a', 'มอบหมายให้', 'Hozzárendelni', 'Toewijzen', 'Assignare', 'Ditugaskan kepada', 'Atamak', 'Εκχώρηση σε', 'اختصاص دادن به', 'Tugaskan Kepada', 'માટે સોંપો', 'Przypisać do', 'Призначити', 'ਨੂੰ ਸੌਂਪੋ', 'Atribuiți către', 'Fi si', 'Sanya Zuwa'),
(1104, 'work_status', 'Work Status', 'কাজের অবস্থা', 'Situación laboral', 'حالة العمل', 'काम की स्थिति', 'کام کی حیثیت', '工作状态', '仕事の状態', 'Status de trabalho', 'Рабочий статус', 'Statut de travail', '작업 상태', 'Arbeitsstatus', 'Stato del lavoro', 'สถานะการทำงาน', 'Munka állapot', 'Werk status', 'Opus Status', 'Status pekerjaan', 'İş durumu', 'Εργασιακή κατάσταση', 'وضعیت اشتغال', 'Status Kerja', 'કાર્ય સ્થિતિ', 'Status pracy', 'Статус роботи', 'ਕੰਮ ਦੀ ਸਥਿਤੀ', 'Stare de lucru', 'Ipo Iṣẹ', 'Matsayin Aiki'),
(1105, 'slider', 'Slider', 'স্লাইডার', 'Deslizador', 'المنزلق', 'स्लाइडर', 'سلائیڈر', '滑块', 'スライダー', 'Slider', 'Слайдер', 'Glissière', '슬라이더', 'Schieberegler', 'dispositivo di scorrimento', 'ตัวเลื่อน', 'Csúszka', 'Schuifregelaar', 'Slider', 'Penggeser', 'kaydırıcı', 'Ολισθητής', 'لغزنده', 'peluncur', 'સ્લાઇડર', 'Suwak', 'Повзунок', 'ਸਲਾਈਡਰ', 'Glisor', 'Slider', 'Slider'),
(1106, 'google_map_embed', 'Google Map Embed Code', 'গুগল ম্যাপ এম্বেড কোড', 'Código de inserción del mapa de Google', 'كود خريطة جوجل تضمين', 'Google मानचित्र एम्बेड कोड', 'گوگل میپ ایمبیڈ کوڈ', '谷歌地图嵌入代码', 'グーグルマップ埋め込みコード', 'Código de incorporação do Google Map', 'Код для встраивания карты Google', 'Code d\'intégration de Google Map', 'Google 지도 삽입 코드', 'Einbettungscode für Google Maps', 'Codice di incorporamento di Google Map', 'รหัสฝัง Google Map', 'Google Térkép beágyazási kód', 'Google Map-insluitcode', 'Google Map Embed Code', 'Kode Sematan Google Map', 'Google Harita Gömme Kodu', 'Κώδικας ενσωμάτωσης χάρτη Google', 'کد جاسازی نقشه گوگل', 'Kod Benamkan Peta Google', 'ગૂગલ મેપ એમ્બેડ કોડ', 'Kod do umieszczenia na mapie Google', 'Код для вставки карт Google', 'ਗੂਗਲ ਮੈਪ ਏਮਬੇਡ ਕੋਡ', 'Codul de încorporare Google Map', 'Google Map Code sabe', 'Google Map Code'),
(1107, 'module_name', 'Module Name', 'মডিউল নাম', 'Nombre del módulo', 'اسم وحدة', 'मोड्यूल का नाम', 'ماڈیول کا نام', '模块名称', 'モジュール名', 'nome do módulo', 'Название модуля', 'Nom du module', '모듈 이름', 'Modulname', 'Nome modulo', 'ชื่อโมดูล', 'Modul neve', 'module naam', 'OMNIBUS Nomen', 'Nama Modul', 'Modül Adı', 'Όνομα ενότητας', 'نام ماژول', 'Nama Modul', 'મોડ્યુલ નામ', 'Nazwa modułu', 'Назва модуля', 'ਮੋਡੀਊਲ ਦਾ ਨਾਮ', 'Numele modulului', 'Orukọ module', 'Sunan Module'),
(1108, 'delete_all', 'Delete All', 'সব মুছে ফেলুন', 'Eliminar todos', 'حذف الكل', 'सभी हटा दो', 'تمام حذف کریں', '删除所有', 'すべて削除', 'Apagar tudo', 'Удалить все', 'Tout supprimer', '모두 삭제', 'Alles löschen', 'Cancella tutto', 'ลบทั้งหมด', 'Mindet törölni', 'Verwijder alles', 'Delere All', 'Hapus semua', 'Hepsini sil', 'Διαγραφή όλων', 'حذف همه', 'Memadam semua', 'બધું કાઢી નાંખો', 'Usuń wszystko', 'Видалити всі', 'ਸਭ ਮਿਟਾਓ', 'Sterge tot', 'Pa Gbogbo Rẹ', 'Share Duk'),
(1109, 'pending', 'Pending', 'মুলতুবী', 'Pendiente', 'قيد الانتظار', 'लंबित', 'زیر التواء', '待办的', '保留中', 'Pendente', 'В ожидании', 'En attente', '보류 중', 'Ausstehend', 'In attesa di', 'รอดำเนินการ', 'Függőben levő', 'In afwachting', 'pendente', 'Tertunda', 'Askıda olması', 'εκκρεμής', 'در انتظار', 'Yang belum selesai', 'બાકી છે', 'Aż do', 'Очікується', 'ਬਕਾਇਆ', 'In asteptarea', 'Ni isunmọtosi', 'Ana jiran'),
(1110, 'meeting_url', 'Meeting URL', 'মিটিং URL', 'URL de la reunión', 'عنوان URL للاجتماع', 'मीटिंग यूआरएल', 'میٹنگ URL', '会议网址', '会議のURL', 'URL da reunião', 'URL встречи', 'URL de réunion', '회의 URL', 'Besprechungs-URL', 'URL riunione', 'URL การประชุม', 'Megbeszélés URL-je', 'Vergader-URL', 'occurrens URL', 'URL rapat', 'Toplantı URL\'si', 'URL συνάντησης', 'URL جلسه', 'URL mesyuarat', 'મીટિંગ URL', 'Adres URL spotkania', 'URL-адреса зустрічі', 'ਮੀਟਿੰਗ URL', 'Adresa URL a întâlnirii', 'URL ipade', 'URL na taro'),
(1111, 'submitted', 'Submitted', 'জমা দেওয়া হয়েছে', 'Enviada', 'مقدم', 'प्रस्तुत', 'جمع کرایا', '已提交', '提出済み', 'Submetida', 'Поданный', 'Soumise', '제출 된', 'Eingereicht', 'Inviato', 'ส่ง', 'Beküldve', 'Ingediend', 'summitto', 'Dikirim', 'Gönderilen', 'Υποβλήθηκε', 'ارسال شده', 'diserahkan', 'સબમિટ કર્યું', 'Złożony', 'Подано', 'ਪੇਸ਼ ਕੀਤਾ', 'Trimis', 'Ti fi silẹ', 'An ƙaddamar'),
(1112, 'completed', 'Completed', 'সম্পন্ন', 'Terminada', 'مكتمل', 'पूरा हुआ', 'مکمل', '完全的', '完了', 'Concluída', 'Завершенный', 'Complété', '완전한', 'Vollendet', 'Completato', 'สมบูรณ์', 'Befejezve', 'Voltooid', 'completed', 'Lengkap', 'Tamamlanmış', 'Ολοκληρώθηκε το', 'تکمیل شد', 'Selesai', 'પૂર્ણ થયું', 'Zakończony', 'Завершено', 'ਪੂਰਾ ਹੋਇਆ', 'Efectuat', 'Ti pari', 'An kammala'),
(1113, 'incomplete', 'Incomplete', 'অসম্পূর্ণ', 'Incompleta', 'غير مكتمل', 'अधूरा', 'نامکمل', '不完整', '不完全な', 'Incompleta', 'Неполный', 'Incomplète', '불완전한', 'Unvollständig', 'Incompleta', 'ไม่สมบูรณ์', 'Befejezetlen', 'Incompleet', 'incompletum', 'Tidak lengkap', 'eksik', 'Ατελής', 'ناقص', 'tak lengkap', 'અપૂર્ણ', 'Niekompletny', 'Неповна', 'ਅਧੂਰਾ', 'Incomplet', 'Ti ko pe', 'Bai cika ba'),
(1114, 'resubmitted', 'Resubmitted', 'আবার জমা দেওয়া হয়েছে', 'Reenviada', 'أعيد تقديمها', 'पुन: प्रस्तुत', 'دوبارہ جمع کرایا', '重新提交', '再提出', 'Reenviada', 'Отправлено повторно', 'Resoumis', '다시 제출', 'Erneut eingereicht', 'Inviato di nuovo', 'ส่งอีกครั้ง', 'Újra elküldve', 'Opnieuw ingediend', 'Resubmitted', 'Dikirim ulang', 'yeniden gönderildi', 'Υποβλήθηκε ξανά', 'دوباره ارسال شد', 'Diserahkan semula', 'ફરી સબમિટ કર્યું', 'Przesłano ponownie', 'Подано повторно', 'ਮੁੜ-ਸਪੁਰਦ ਕੀਤਾ', 'Retrimis', 'Ti tun fi silẹ', 'An sake aikawa'),
(1115, 'total_student', 'Total Student', 'মোট ছাত্র', 'Total de estudiantes', 'مجموع الطالب', 'कुल छात्र', 'کل طالب علم', '学生总数', '総学生', 'Aluno Total', 'Всего Студент', 'Total étudiant', '총 학생', 'Gesamtschüler', 'Studente totale', 'นักเรียนทั้งหมด', 'Összes diák', 'Totaal aantal studenten', 'Summa Student', 'Jumlah Siswa', 'Toplam Öğrenci', 'Σύνολο μαθητή', 'کل دانشجو', 'Jumlah Pelajar', 'કુલ વિદ્યાર્થી', 'Razem Uczeń', 'Всього студент', 'ਕੁੱਲ ਵਿਦਿਆਰਥੀ', 'Total Student', 'Apapọ Akeko', 'Jimlar ɗalibi'),
(1116, 'total_submitted', 'Total Submitted', 'মোট জমা', 'Total enviada', 'إجمالي المقدم', 'कुल सबमिट किया गया', 'کل جمع کرایا', '提交总数', '提出された合計', 'Total enviado', 'Всего отправлено', 'Total soumis', '총 제출', 'Insgesamt eingereicht', 'Totale inviato', 'รวมส่ง', 'Összesen beküldve', 'Totaal ingezonden', 'Totalis Submitted', 'Jumlah yang Dikirim', 'Toplam Gönderilen', 'Σύνολο υποβλήθηκε', 'مجموع ارسال شده', 'Jumlah Dihantar', 'કુલ સબમિટ', 'Razem przesłanych', 'Всього подано', 'ਕੁੱਲ ਸਪੁਰਦ ਕੀਤਾ ਗਿਆ', 'Total trimise', 'Lapapọ Ifisilẹ', 'Gabaɗaya An Gabatar'),
(1117, 'total_completed', 'Total Completed', 'মোট সম্পন্ন', 'Total completada', 'إجمالي المنجز', 'कुल पूर्ण', 'کل مکمل', '完成总数', '合計完了', 'Total Completo', 'Всего Завершено', 'Total terminé', '총 완료', 'Gesamt abgeschlossen', 'Totale completato', 'เสร็จสิ้นทั้งหมด', 'Összesen befejezve', 'Totaal ingezonden', 'Totalis Completur', 'Total Selesai', 'Toplam Tamamlanan', 'Συνολικά Ολοκληρώθηκε', 'مجموع تکمیل شد', 'Jumlah Selesai', 'કુલ પૂર્ણ', 'Ukończono łącznie', 'Всього завершено', 'ਕੁੱਲ ਪੂਰਾ ਹੋਇਆ', 'Total finalizat', 'Lapapọ ti Pari', 'Jimlar An Kammala'),
(1118, 'total_incomplete', 'Total Incomplete', 'মোট অসম্পূর্ণ', 'Total incompleta', 'إجمالي غير مكتمل', 'कुल अधूरा', 'مکمل نامکمل', '完全不完整', '完全に不完全', 'Total Incompleto', 'Итого незавершенный', 'Total incomplet', '총 미완료', 'Total unvollständig', 'Totale incompleto', 'ไม่สมบูรณ์ทั้งหมด', 'Teljesen hiányos', 'Totaal onvolledig', 'Totalis imperfecta', 'Total Tidak Lengkap', 'Toplam Eksik', 'Σύνολο ημιτελές', 'مجموع ناقص', 'Jumlah Tidak Lengkap', 'કુલ અપૂર્ણ', 'Całkowite niekompletne', 'Всього неповно', 'ਕੁੱਲ ਅਧੂਰਾ', 'Total incomplet', 'Lapapọ ti ko pari', 'Gabaɗaya bai cika ba'),
(1119, 'sms_notification', 'SMS Notification', 'এসএমএস বিজ্ঞপ্তি', 'Notificación por SMS', 'كل الإخطارات', 'सभी अधिसूचनाएं', 'تمام اطلاعات', '短信通知', 'SMS通知', 'Notificação SMS', 'SMS-уведомление', 'Notification SMS', 'SMS 알림', 'SMS-Benachrichtigung', 'Notifica SMS', 'การแจ้งเตือนทาง SMS', 'SMS értesítés', 'SMS-melding', 'SMS Notification', 'Pemberitahuan SMS', 'SMS Bildirimi', 'Ειδοποίηση SMS', 'اطلاع رسانی پیامکی', 'Pemberitahuan SMS', 'SMS સૂચના', 'Powiadomienie SMS', 'SMS-повідомлення', 'SMS ਸੂਚਨਾ', 'Notificare prin SMS', 'Ifitonileti SMS', 'Sanarwa SMS'),
(1120, 'email_notification', 'Email Notification', 'ইমেল বিজ্ঞপ্তি', 'Notificación de correo electrónico', 'اشعارات البريد الالكتروني', 'ईमेल सूचनाएं', 'ای میل اطلاعات', '电子邮件通知', '電子メール通知', 'Notificação de Email', 'Уведомление по электронной почте', 'Notification par courrier électronique', '이메일 알림', 'Email Benachrichtigung', 'notifica per email', 'การแจ้งเตือนทางอีเมล', 'Email értesítés', 'E-mail notificatie', 'Inscriptio Notification', 'pemberitahuan email', 'Eposta bildirimi', 'Ειδοποίηση ηλεκτρονικού ταχυδρομείου', 'اطلاع رسانی ایمیل', 'Pemberitahuan E-mel', 'ઇમેઇલ સૂચના', 'Powiadomienie e-mail', 'Повідомлення електронною поштою', 'ਈਮੇਲ ਸੂਚਨਾ', 'notificare prin e-mail', 'Ifitonileti Imeeli', 'Sanarwa ta Imel'),
(1121, 'assignment_date', 'Assignment Date', 'অ্যাসাইনমেন্টের তারিখ', 'Fecha de asignación', 'تاريخ التكليف', 'असाइनमेंट की तारीख', 'تفویض کی تاریخ', '分配日期', '割り当て日', 'Data de Atribuição', 'Дата присвоения', 'Date d\'affectation', '할당 날짜', 'Zuweisungsdatum', 'Data di assegnazione', 'วันที่ได้รับมอบหมาย', 'A megbízás dátuma', 'Opdrachtdatum', 'adsignatione Date', 'Tanggal Tugas', 'Atama Tarihi', 'Ημερομηνία ανάθεσης', 'تاریخ تکلیف', 'Tarikh Tugasan', 'સોંપણી તારીખ', 'Data przypisania', 'Дата призначення', 'ਅਸਾਈਨਮੈਂਟ ਦੀ ਮਿਤੀ', 'Data atribuirii', 'Ọjọ iyansilẹ', 'Kwanan Ayyuka'),
(1122, 'submission_date', 'Submission Date', 'জমাদানের তারিখ', 'Día de entrega', 'تاريخ التقديم', 'Submission Date', 'جمع کروانے کی تازیخ', '提交日期', '提出日', 'Data de submissão', 'Дата подачи', 'Date de soumission', '제출 날짜', 'Abgabetermin', 'Data di presentazione', 'วันที่ยื่น', 'Beadási dátum', 'Termijn van inzending', 'Submission Date', 'Tanggal penyerahan', 'Teslim tarihi', 'Ημερομηνία υποβολής', 'تاریخ ارسال', 'Tarikh menghantar', 'સબમિશન તારીખ', 'Termin składania', 'Дата подання', 'ਸਪੁਰਦਗੀ ਦੀ ਮਿਤੀ', 'Data depunerii', 'Ọjọ Ifisilẹ', 'Ranar ƙaddamarwa'),
(1123, 'evaluation_date', 'Evaluation Date', 'মূল্যায়ন তারিখ', 'Fecha de evaluación', 'تاريخ التقييم', 'मूल्यांकन की तारीख', 'تشخیص کی تاریخ', '评估日期', '評価日', 'Data de avaliação', 'Дата оценки', 'Date d\'évaluation', '평가 날짜', 'Bewertungstag', 'Data di valutazione', 'วันที่ประเมิน', 'Értékelés dátuma', 'Evaluatie datum', 'Iudicium Date', 'Tanggal Evaluasi', 'Değerlendirme tarihi', 'Ημερομηνία αξιολόγησης', 'تاریخ ارزیابی', 'Tarikh Penilaian', 'મૂલ્યાંકન તારીખ', 'Data oceny', 'Дата оцінки', 'ਮੁਲਾਂਕਣ ਦੀ ਮਿਤੀ', 'Data Evaluării', 'Ọjọ Igbelewọn', 'Ranar kimantawa'),
(1124, 'evaluation_status', 'Evaluation Status', 'মূল্যায়ন অবস্থা', 'Estado de evaluación', 'حالة التقييم', 'मूल्यांकन की स्थिति', 'تشخیص کی حیثیت', '评估状态', '評価状況', 'Status de avaliação', 'Статус оценки', 'Statut d\'évaluation', '평가현황', 'Bewertungsstatus', 'Stato di valutazione', 'สถานะการประเมิน', 'Értékelés állapota', 'Evaluatiestatus', 'Iudicium Status', 'Status Evaluasi', 'Değerlendirme Durumu', 'Κατάσταση Αξιολόγησης', 'وضعیت ارزیابی', 'Status Penilaian', 'મૂલ્યાંકન સ્થિતિ', 'Status oceny', 'Статус оцінки', 'ਮੁਲਾਂਕਣ ਸਥਿਤੀ', 'Starea de evaluare', 'Ipo Igbelewọn', 'Matsayin Kima'),
(1125, 'guardian_id', 'Guardian ID', 'অভিভাবক আইডি', 'ID de tutor', 'عيد الوصي', 'अभिभावक ईद', 'گارڈین عید', '监护人身份证', 'ガーディアンID', 'ID do Guardião', 'ID опекуна', 'ID du tuteur', '보호자 ID', 'Erziehungsberechtigter-ID', 'ID tutore', 'รหัสผู้พิทักษ์', 'Gyámazonosító', 'Voogd-ID', 'Custos ID', 'ID Wali', 'Veli Kimliği', 'Ταυτότητα κηδεμόνα', 'شناسه نگهبان', 'ID penjaga', 'ગાર્ડિયન આઈડી', 'Identyfikator opiekuna', 'Ідентифікатор опікуна', 'ਸਰਪ੍ਰਸਤ ਆਈ.ਡੀ', 'ID de tutore', 'ID oluso', 'ID mai gadi'),
(1127, 'manage_exam_instruction', 'Manage Exam Instruction', 'পরীক্ষার নির্দেশনা পরিচালনা করুন', 'Administrar la instrucción del examen', 'إدارة تعليمات الامتحان', 'परीक्षा निर्देश प्रबंधित करें', 'امتحان کی ہدایات کا نظم کریں۔', '管理考试指导', '試験指示の管理', 'Gerenciar a instrução do exame', 'Управление инструкциями к экзамену', 'Gérer les instructions d\'examen', '시험 지침 관리', 'Prüfungsanweisung verwalten', 'Gestisci le istruzioni per l\'esame', 'จัดการคำแนะนำในการสอบ', 'Vizsgautasítás kezelése', 'Exameninstructie beheren', 'Curo Exam Instructionem', 'Kelola Instruksi Ujian', 'Sınav Talimatını Yönet', 'Διαχείριση Οδηγιών Εξετάσεων', 'مدیریت دستورالعمل آزمون', 'Menguruskan Arahan Peperiksaan', 'પરીક્ષા સૂચનાનું સંચાલન કરો', 'Zarządzaj instrukcją egzaminacyjną', 'Керуйте інструкцією до іспиту', 'ਇਮਤਿਹਾਨ ਹਦਾਇਤਾਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați instrucțiunile de examen', 'Ṣakoso Itọsọna Idanwo', 'Sarrafa Umarnin jarrabawa'),
(1128, 'manage_online_exam', 'Manage Online Exam', 'অনলাইন পরীক্ষা পরিচালনা করুন', 'Administrar examen en línea', 'إدارة الامتحان عبر الإنترنت', 'ऑनलाइन परीक्षा प्रबंधित करें', 'آن لائن امتحان کا انتظام کریں۔', '管理在线考试', 'オンライン試験の管理', 'Gerenciar exame online', 'Управление онлайн-экзаменом', 'Gérer l\'examen en ligne', '온라인 시험 관리', 'Online-Prüfung verwalten', 'Gestisci esame online', 'จัดการสอบออนไลน์', 'Online vizsga kezelése', 'Online examen beheren', 'Curo Exam', 'Kelola Ujian Online', 'Çevrimiçi Sınavı Yönet', 'Διαχείριση Διαδικτυακών Εξετάσεων', 'مدیریت آزمون آنلاین', 'Uruskan Peperiksaan Dalam Talian', 'ઓનલાઈન પરીક્ષાનું સંચાલન કરો', 'Zarządzaj egzaminem online', 'Керування онлайн-іспитом', 'ਔਨਲਾਈਨ ਪ੍ਰੀਖਿਆ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați examenul online', 'Ṣakoso Idanwo Ayelujara', 'Sarrafa Jarrabawar Kan layi'),
(1129, 'manage_question_bank', 'Manage Question Bank', 'প্রশ্ন ব্যাংক পরিচালনা করুন', 'Gestionar banco de preguntas', 'إدارة بنك التكاليف', 'कॉस्टिंग बैंक प्रबंधित करें', 'کاسٹنگ بینک کا انتظام کریں۔', '管理题库', '質問バンクの管理', 'Gerenciar banco de perguntas', 'Управление банком вопросов', 'Gérer la banque de questions', '문제 은행 관리', 'Fragendatenbank verwalten', 'Gestisci banca delle domande', 'จัดการธนาคารคำถาม', 'Kérdésbank kezelése', 'Vragenbank beheren', 'Quaeritur Bank Curo', 'Kelola Bank Soal', 'Soru Bankasını Yönet', 'Διαχείριση Τράπεζας Ερωτήσεων', 'مدیریت بانک سوالات', 'Menguruskan Bank Soalan', 'પ્રશ્ન બેંક મેનેજ કરો', 'Zarządzaj bankiem pytań', 'Керувати банком запитань', 'ਪ੍ਰਸ਼ਨ ਬੈਂਕ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați Banca de întrebări', 'Ṣakoso Bank Ìbéèrè', 'Sarrafa Bankin Tambaya'),
(1130, 'online_exam', 'Online Exam', 'অনলাইন পরীক্ষা', 'Examen en línea', 'الامتحان عبر الإنترنت', 'ऑनलाइन परीक्षा', 'آن لائن امتحان', '在线考试', 'オンライン試験', 'Exame Online', 'Онлайн-экзамен', 'Examen en ligne', '온라인 시험', 'Online-Prüfung', 'Esame online', 'สอบออนไลน์', 'Online vizsga', 'Online examen', 'Online Exam', 'Ujian Online', 'Çevrimiçi Sınav', 'Διαδικτυακή Εξέταση', 'آزمون آنلاین', 'Peperiksaan Dalam Talian', 'ઓનલાઈન પરીક્ષા', 'Egzamin online', 'Онлайн іспит', 'ਔਨਲਾਈਨ ਪ੍ਰੀਖਿਆ', 'Examen online', 'Idanwo lori ayelujara', 'Jarrabawar Kan layi'),
(1131, 'question', 'Question', 'প্রশ্ন', 'Pregunta', 'التكلفة', 'लागत', 'لاگت', '题', '質問', 'Pergunta', 'Вопрос', 'Question', '질문', 'Frage', 'Domanda', 'คำถาม', 'Kérdés', 'Vraag', 'Quaestione', 'Pertanyaan', 'Soru', 'Ερώτηση', 'سوال', 'soalan', 'પ્રશ્ન', 'Pytanie', 'Питання', 'ਸਵਾਲ', 'Întrebare', 'Ibeere', 'Tambaya'),
(1132, 'question_bank', 'Question Bank', 'প্রশ্ন ব্যাংক', 'Banco de preguntas', 'حساب التكاليف', 'कॉस्टिंग बैंक', 'لاگت کا بینک', '题库', '質問バンク', 'Banco de Perguntas', 'Банк вопросов', 'Banque de questions', '질문 은행', 'Fragendatenbank', 'Banca delle domande', 'ธนาคารคำถาม', 'Kérdés bank', 'Vragenbank', 'Quaestio Bank', 'Bank Soal', 'Soru bankası', 'Τράπεζα Ερωτήσεων', 'بانک سوالات', 'Bank Soalan', 'પ્રશ્ન બેંક', 'Bank pytań', 'Банк питань', 'ਪ੍ਰਸ਼ਨ ਬੈਂਕ', 'Banca de întrebări', 'Bank ibeere', 'Bankin Tambaya'),
(1133, 'take_exam', 'Take Exam', 'পরীক্ষা দাও', 'Tomar examen', 'افحصه', 'उसकी जांच करें', 'اس کی جانچ کرو', '参加考试', '受験', 'Fazer exame', 'Сдавать экзамен', 'Passer un examen', '시험을보다', 'Prüfung ablegen', 'Sostieni l\'esame', 'ทำข้อสอบ', 'Vizsgázni', 'Examen doen', 'Accipe IV', 'Ikuti Ujian', 'Sınava girmek', 'Δίνω εξετάσεις', 'امتحان دادن', 'Ambil Peperiksaan', 'પરીક્ષા લો', 'Bank pytań', 'Скласти іспит', 'ਇਮਤਿਹਾਨ ਲਓ', 'Susține examenul', 'Gba idanwo', 'Yi Jarabawa'),
(1134, 'question_type', 'Question Type', 'প্রশ্নের ধরন', 'tipo de pregunta', 'نوع الصب', 'कास्टिंग प्रकार', 'معدنیات سے متعلق قسم', '问题类型', '質問の種類', 'Tipo de pergunta', 'тип вопроса', 'Type de question', '질문 유형', 'Fragetyp', 'tipo di domanda', 'ประเภทคำถาม', 'Kérdés típusa', 'vraag type', 'Quaeritur Type', 'tipe pertanyaan', 'soru tipi', 'ΕΙΔΟΣ ΕΡΩΤΗΣΗΣ', 'نوع سوال', 'Jenis Soalan', 'પ્રશ્નનો પ્રકાર', 'typ pytania', 'Тип запитання', 'ਸਵਾਲ ਦੀ ਕਿਸਮ', 'tip de întrebare', 'Ibeere Iru', 'Nau\'in Tambaya'),
(1135, 'question_lebel', 'Question Lebel', 'প্রশ্ন লেবেল', 'Etiqueta de pregunta', 'تسمية التكلفة', 'लागत लेबल', 'لاگت کا لیبل', '问题标签', '質問ラベル', 'Etiqueta da pergunta', 'Ярлык вопроса', 'Libellé de la question', '질문 레이블', 'Fragelabel', 'Etichetta domanda', 'ป้ายคำถาม', 'Kérdés címke', 'Vraaglabel', 'Quaestio Label', 'Label Pertanyaan', 'Soru Etiketi', 'Ερώτηση Lebel', 'سوال لبل', 'Soal Lebel', 'પ્રશ્ન લેબલ', 'Pytanie Lebel', 'Питання Лебель', 'ਪ੍ਰਸ਼ਨ ਲੇਬਲ', 'Întrebare Lebel', 'Lebel ibeere', 'Tambaya Lebel'),
(1136, 'total_question', 'Total Question', 'মোট প্রশ্ন', 'Pregunta total', 'التكلفة الإجمالية', 'कुल लागत', 'کل لاگت', '总问题', '質問全体', 'Questão Total', 'Общий вопрос', 'Question totale', '총 질문', 'Gesamtfrage', 'Domanda totale', 'รวมคำถาม', 'Teljes kérdés', 'Totale vraag', 'Summa Quaestio', 'Total Pertanyaan', 'Toplam Soru', 'Συνολική Ερώτηση', 'کل سوال', 'Jumlah Soalan', 'કુલ પ્રશ્ન', 'Razem pytanie', 'Загальне запитання', 'ਕੁੱਲ ਸਵਾਲ', 'Întrebare totală', 'Lapapọ Ibeere', 'Jimlar Tambaya'),
(1137, 'total_option', 'Total Option', 'মোট বিকল্প', 'Opción total', 'إجمالي الخيارات', 'कुल विकल्प', 'کل اختیارات', '总选项', 'トータルオプション', 'Opção Total', 'Общий вариант', 'Option totale', '토탈 옵션', 'Gesamtoption', 'Opzione totale', 'รวมตัวเลือก', 'Teljes opció', 'Totale optie:', 'Totalis Bene', 'Opsi Total', 'Toplam Seçenek', 'Συνολική Επιλογή', 'کل گزینه', 'Jumlah Pilihan', 'કુલ વિકલ્પ', 'Całkowita opcja', 'Повний варіант', 'ਕੁੱਲ ਵਿਕਲਪ', 'Opțiune totală', 'Lapapọ Aṣayan', 'Jimlar Zabin'),
(1138, 'total_answer', 'Total Answer', 'মোট উত্তর', 'Respuesta total', 'مجموع الأنصار', 'कुल अंसारी', 'کل انصار', '总答案', 'トータルアンサー', 'Resposta Total', 'Общий ответ', 'Réponse totale', '총 답변', 'Gesamtantwort', 'Risposta totale', 'คำตอบทั้งหมด', 'Teljes válasz', 'Totaal antwoord', 'Summa Answer', 'Total Jawaban', 'Toplam Cevap', 'Συνολική απάντηση', 'پاسخ کل', 'Jumlah Pilihan', 'કુલ જવાબ', 'Całkowita odpowiedź', 'Повна відповідь', 'ਕੁੱਲ ਜਵਾਬ', 'Răspuns total', 'Lapapọ Idahun', 'Jimlar Amsa'),
(1139, 'mark_type', 'Mark Type', 'মার্ক টাইপ', 'Tipo de marca', 'نوع العلامة', 'मार्क टाइप', 'نشان کی قسم', '标记类型', 'マークタイプ', 'Tipo de Marca', 'Тип отметки', 'Type de marque', '마크 유형', 'Markierungstyp', 'Tipo di contrassegno', 'เครื่องหมายประเภท', 'Jelölés típusa', 'Markeertype', 'Mark Type', 'Tandai Jenis', 'İşaret Türü', 'Τύπος σήμανσης', 'نوع علامت گذاری کنید', 'Jenis Tanda', 'માર્ક પ્રકાર', 'نوع علامت گذاری', 'Тип позначки', 'ਮਾਰਕ ਦੀ ਕਿਸਮ', 'Tipul de marcare', 'Samisi Iru', 'Alama Nau\'in'),
(1140, 'pass_mark', 'Pass Mark', 'পাশ নম্বর', 'Aprobado', 'علامة المرور', 'पास निशान', 'پاس کا نشان', '合格标志', 'パスマーク', 'Pass Mark', 'Проходной балл', 'Moyenne', '합격 표시', 'Mindestpunktzahl', 'Punteggio minimo', 'ผ่านเครื่องหมาย', 'Minimális pontszám', 'Pass Mark', 'Transi Mark', 'Tanda Lulus', 'Geçme notu', 'Pass Mark', 'پاس علامت', 'Tanda Lulus', 'પાસ માર્ક', 'Przekaż znak', 'Пройти позначку', 'ਪਾਸ ਮਾਰਕ', 'Nota de trecere', 'Kọja Mark', 'Wuce Mark'),
(1141, 'duration', 'Duration', 'সময়কাল', 'Duración', 'شرير', 'बुराई', 'برائی', '期间', '間隔', 'Duração', 'Продолжительность', 'Durée', '지속', 'Dauer', 'Durata', 'ระยะเวลา', 'Időtartam', 'Looptijd', 'Duratio', 'Durasi', 'Süre', 'Διάρκεια', 'مدت زمان', 'Tempoh', 'અવધિ', 'Czas trwania', 'Тривалість', 'ਮਿਆਦ', 'Durată', 'Iye akoko', 'Tsawon lokaci'),
(1142, 'fixed', 'Fixed', 'সুনির্দিষ্ট', 'Reparada', 'مثبت', 'फिक्स्ड', 'طے شدہ', '固定的', '修理済み', 'Fixo', 'Фиксированный', 'Fixée', '결정된', 'Fest', 'Fisso', 'แก้ไขแล้ว', 'Rögzített', 'Gemaakt', 'Fixum', 'Tetap', 'Sabit', 'Σταθερός', 'درست شد', 'tetap', 'સ્થિર', 'Naprawiony', 'Виправлено', 'ਸਥਿਰ', 'Fix', 'Ti o wa titi', 'Kafaffen'),
(1143, 'warning', 'Warning !!!', 'সতর্কতা!!!', 'Advertencia !!!', 'تحذير !!!', 'चेतावनी !!!', 'وارننگ!!!', '警告 ！！！', '警告 ！！！', 'Aviso !!!', 'Предупреждение !!!', 'Avertissement !!!', '경고 !!!', 'Warnung !!!', 'Avvertimento !!!', 'คำเตือน !!!', 'Figyelem !!!', 'Waarschuwing!!!', 'Monitum!!!', 'Peringatan !!!', 'Uyarı !!!', 'Προειδοποίηση!!!', 'هشدار!!!', 'Amaran!!!', 'ચેતવણી !!!', 'Ostrzeżenie !!!', 'Увага !!!', 'ਚੇਤਾਵਨੀ !!!', 'Avertizare !!!', 'Ikilo!!!', 'Gargadi !!!'),
(1144, 'don_not_press_back', 'Do Not Press Back in the Browser', 'ব্রাউজারে ব্যাক বোতাম টিপুন না', 'No presione Atrás en el navegador', 'الملاحظات اضغط مرة أخرى في المتصفح', 'नोट्स ब्राउज़र में वापस दबाते हैं', 'براؤزر میں پیچھے نہ دبائیں۔', '不要在浏览器中按回', 'ブラウザで押し戻さないでください', 'Não pressione Voltar no navegador', 'Не нажимайте назад в браузере', 'N\'appuyez pas sur Retour dans le navigateur', '브라우저에서 뒤로 누르지 마십시오', 'Drücken Sie im Browser nicht zurück', 'Non premere indietro nel browser', 'อย่ากดกลับในเบราว์เซอร์', 'Ne nyomja meg a Vissza gombot a böngészőben', 'Druk niet op Terug in de browser', 'Noli premere in Pasco', 'Jangan Tekan Kembali di Browser', 'Tarayıcıda Geri Basmayın', 'Μην πατάτε Πίσω στο πρόγραμμα περιήγησης', 'بازگشت را در مرورگر فشار ندهید', 'Jangan Tekan Kembali dalam Pelayar', 'બ્રાઉઝરમાં પાછા દબાવશો નહીં', 'Nie naciskaj Wstecz w przeglądarce', 'Не натискайте назад у браузері', 'ਬਰਾਊਜ਼ਰ ਵਿੱਚ ਪਿੱਛੇ ਨਾ ਦਬਾਓ', 'Nu apăsați Înapoi în browser', 'Maṣe Tẹ Pada ninu ẹrọ aṣawakiri', 'Kar a danna Baya a cikin Mai lilo'),
(1146, 'add_question', 'Add Question', 'প্রশ্ন যোগ করুন', 'Agregar pregunta', 'تكلفة الإعلان', 'विज्ञापन लागत', 'سوال شامل کریں۔', '添加问题', '質問を追加', 'Adicionar pergunta', 'Добавить вопрос', 'Ajouter une question', '질문 추가', 'Frage hinzufügen', 'Aggiungi domanda', 'เพิ่มคำถาม', 'Kérdés hozzáadása', 'Vraag toevoegen', 'Quaestionem addere', 'Tambahkan Pertanyaan', 'Soru Ekle', 'Προσθήκη ερώτησης', 'اضافه کردن سوال', 'Tambah Soalan', 'પ્રશ્ન ઉમેરો', 'Dodaj pytanie', 'Додати запитання', 'ਸਵਾਲ ਸ਼ਾਮਲ ਕਰੋ', 'Adăugați o întrebare', 'Fi ibeere kun', 'Ƙara Tambaya'),
(946, 'social_information', 'Social Information', 'সামাজিক তথ্য', 'Informacion social', 'المعلومات الاجتماعية', 'सामाजिक जानकारी', 'سماجی معلومات', '社会资讯', '社会情報', 'Informação Social', 'Социальная информация', 'Informations sociales', '사회 정보', 'Soziale Informationen', 'Informazioni sociali', 'เว็บ', 'Társadalmi információk', 'Sociale informatie', 'Social Information', 'Informasi Sosial', 'Sosyal Bilgilendirme', 'Κοινωνικές πληροφορίες', 'اطلاعات اجتماعی', 'Maklumat Sosial', 'સામાજિક માહિતી', 'Informacje społeczne', 'Соціальна інформація', 'ਸਮਾਜਿਕ ਜਾਣਕਾਰੀ', 'Informații sociale', 'Alaye ti Awujọ', 'Bayanin zamantakewa'),
(947, 'address_information', 'Address Information', 'ঠিকানার তথ্য', 'Datos del Domicilio', 'معلومات العنوان', 'पते की जानकारी', 'ایڈریس کی معلومات', '地址信息', '住所情報', 'Informação de Endereço', 'информация об адресе', 'Information sur l\'adresse', '주소 정보', 'Adresse', 'Informazioni sull\'indirizzo', 'ข้อมูลที่อยู่', 'cím információ', 'adres informatie', 'oratio Information', 'Informasi alamat', 'adres bilgisi', 'πληροφορίες διεύθυνσης', 'اطلاعات نشانی', 'Maklumat Alamat', 'સરનામાં માહિતી', 'Informacje adresowe', 'Інформація про адресу', 'ਪਤਾ ਜਾਣਕਾਰੀ', 'infornații despre adresă', 'Alaye adirẹsi', 'Bayanin Adireshin'),
(949, 'daily', 'Daily', 'দৈনন্দিন', 'Diario', 'اليومي', 'रोज', 'روزانہ', '日常', '毎日', 'Diariamente', 'Ежедневно', 'du quotidien', '매일', 'Täglich', 'Quotidiana', 'รายวัน', 'Napi', 'Dagelijks', 'Daily', 'Harian', 'Günlük', 'Καθημερινά', 'روزانه', 'Setiap hari', 'દૈનિક', 'Codziennie', 'Щодня', 'ਰੋਜ਼ਾਨਾ', 'Zilnic', 'Ojoojumọ', 'Kullum'),
(950, 'yearly', 'Yearly', 'বার্ষিক', 'Anual', 'سنوي', 'सालाना', 'سالانہ', '每年', '毎年', 'Anual', 'каждый год', 'Annuelle', '매년', 'Jährlich', 'Annuale', 'รายปี', 'Évi', 'Jaarlijks', 'quot annis', 'Tahunan', 'Yıllık', 'Ετήσια', 'سالانه', 'Tahunan', 'વાર્ષિક', 'Rocznie', 'Щорічно', 'ਸਲਾਨਾ', 'Anual', 'Lododun', 'Kowace shekara'),
(951, 'generate', 'Generate', 'জেনারেট করুন', 'Generar', 'انشاء', 'उत्पन्न', 'پیدا کرنا', '生成', '生む', 'Gerar', 'генерировать', 'produire', '일으키다', 'Generieren', 'creare', 'สร้าง', 'generál', 'Genereer', 'generate', 'Menghasilkan', 'üretmek', 'Παράγω', 'تولید می کنند', 'Menjana', 'પેદા', 'Generować', 'Створювати', 'ਤਿਆਰ ਕਰੋ', 'Genera', 'Ina', 'Haɓaka'),
(952, 'student_promotion', 'Student Promotion', 'ছাত্র পদোন্নতি', 'Promoción estudiantil', 'ترقية الطالب', 'छात्र संवर्धन', 'طلبا کی تشہیر', '学生升学', '学生プロモーション', 'Promoção de Estudantes', 'Студенческое продвижение', 'Promotion étudiante', '학생 프로모션', 'Studentenförderung', 'Promozione studentesca', 'โปรโมชั่นนักศึกษา', 'Diákösztönzés', 'Promotie voor studenten', 'Promotio discipulus', 'Promosi Mahasiswa', 'Öğrenci Tanıtımı', 'Προώθηση φοιτητών', 'ارتقاء دانشجویی', 'Promosi Pelajar', 'વિદ્યાર્થી બotionતી', 'Promocja studencka', 'Промоція студентів', 'ਵਿਦਿਆਰਥੀ ਤਰੱਕੀ', 'Promovarea studenților', 'Igbega omo ile-iwe', 'Karatun Dalibi'),
(953, 'mother_profession', 'Mother Profession', 'মায়ের পেশা', 'Profesión de madre', 'مهنة الأم', 'माता का पेशा', 'ماں کا پیشہ', '母亲职业', '母の職業', 'Profissão Mãe', 'Мать Профессия', 'Profession mère', '어머니 직업', 'Mutterberuf', 'Professione madre', 'อาชีพแม่', 'Anya szakma', 'Moeder Beroep', 'Mater Sollemnis Professio', 'Profesi Ibu', 'Anne Mesleği', 'Μητέρα επάγγελμα', 'حرفه مادر', 'Profesion Ibu', 'માતા વ્યવસાય', 'Zawód matki', 'Професія матері', 'ਮਾਂ ਪੇਸ਼ੇ', 'Mama Profesie', 'Akose iya', 'Mahaifiyar Iya'),
(954, 'router', 'Router', 'রাউটার', 'Enrutador', 'جهاز التوجيه', 'रूटर', 'راؤٹر', '路由器', 'ルーター', 'Roteador', 'маршрутизатор', 'Routeur', '라우터', 'Router', 'Router', 'เราเตอร์', 'Router', 'Router', 'iter itineris', 'Router', 'Yönlendirici', 'Δρομολογητής', 'روتر', 'Penghala', 'રાઉટર', 'Router', 'Маршрутизатор', 'ਰਾterਟਰ', 'Router', 'Olulana', 'Mai ba da hanya tsakanin hanyoyin sadarwa'),
(955, 'bulk_pk', 'Bulk PK', 'বাল্ক পিকে', 'PK a granel', 'PK السائبة', 'थोक पी.के.', 'بلک پی کے', '散装PK', 'バルクPK', 'PK em massa', 'Bulk PK', 'PK en vrac', '벌크 PK', 'Bulk PK', 'Bulk PK', 'PK จำนวนมาก', 'Ömlesztett PK', 'Bulk PK', 'mole PK', 'PK Massal', 'Toplu PK', 'Μαζικό PK', 'فله PK', 'PK Pukal', 'જથ્થાબંધ પી.કે.', 'Luzem PK', 'Навальний ПК', 'ਥੋਕ ਪੀ.ਕੇ.', 'Bulk PK', 'Olopobo PK', 'Babbar PK'),
(956, 'sms_custer', 'SMS Cluster', 'এসএমএস ক্লাস্টার', 'SMS Custer', 'SMS Custer', 'एसएमएस कस्टर', 'ایس ایم ایس کاسٹر', '短信卡斯特', 'SMSカスター', 'SMS Custer', 'СМС Кастер', 'SMS Custer', 'SMS 커 스터', 'SMS Custer', 'SMS Custer', 'คลัสเตอร์ SMS', 'SMS Custer', 'SMS Custer', 'SMS Custodi', 'SMS Custer', 'SMS Kümesi', 'Σύμπλεγμα SMS', 'خوشه پیامکی', 'Kluster SMS', 'એસએમએસ ક્લસ્ટર', 'Klaster SMS', 'Кластер SMS', 'ਐਸਐਮਐਸ ਕਲੱਸਟਰ', 'SMS Cluster', 'Ẹrọ SMS', 'Cluster SMS'),
(957, 'alpha_net', 'Alpha.net', 'আলফা.নেট', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'net alpha', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net', 'Alpha.net'),
(958, 'bd_bulk', 'BD Bulk', 'বিডি বাল্ক', 'BD Bulk', 'BD BD', 'बीडी थोक', 'بی ڈی بلک', 'BD散装', 'BDバルク', 'BD Bulk', 'BD Bulk', 'BD Bulk', 'BD 벌크', 'BD Bulk', 'BD Bulk', 'BD Bulk', 'BD Bulk', 'BD Bulk', 'BD, Volume', 'BD Massal', 'BD Toplu', 'BD χύμα', 'BD فله', 'Pukal BD', 'બીડી બલ્ક', 'BD Bulk', 'BD Насип', 'ਬੀਡੀ ਬਲਕ', 'BD Bulk', 'BD Bulk', 'BD Bulk'),
(959, 'mim_sms', 'Mim SMS', 'মিম এসএমএস', 'Mim SMS', 'ميم SMS', 'मीम एसएमएस', 'Mim SMS', 'Mim短信', 'Mim SMS', 'Mim SMS', 'Мим смс', 'Mim SMS', 'Mim SMS', 'Mim SMS', 'Mim SMS', 'มิม SMS', 'Mim SMS', 'Mim SMS', 'SMS mim', 'Mim SMS', 'Mim SMS', 'Μίμη SMS', 'پیام کوتاه', 'Mim SMS', 'મીમ એસએમએસ', 'Naśladuj SMS', 'Mim SMS', 'ਮਿਮ ਐਸਐਮਐਸ', 'SMS Mim', 'Mim SMS', 'Mim SMS'),
(960, 'sms_type', 'SMS Type', 'এসএমএস প্রকার', 'Tipo de SMS', 'نوع الرسائل القصيرة', 'एसएमएस प्रकार', 'ایس ایم ایس کی قسم', '短信类型', 'SMSタイプ', 'Tipo de SMS', 'Тип СМС', 'Type de SMS', 'SMS 유형', 'SMS-Typ', 'Tipo di SMS', 'ประเภท SMS', 'SMS típus', 'SMS-type', 'SMS Type', 'Jenis SMS', 'SMS Türü', 'Τύπος SMS', 'نوع پیامک', 'Jenis SMS', 'એસએમએસ પ્રકાર', 'Rodzaj SMS', 'Тип SMS', 'ਐਸਐਮਐਸ ਦੀ ਕਿਸਮ', 'Tip SMS', 'SMS Iru', 'Nau\'in SMS'),
(961, 'text', 'Text', 'টেক্সট', 'Texto', 'نص', 'टेक्स्ट', 'متن', '文本', 'テキスト', 'Texto', 'Текст', 'Texte', '본문', 'Text', 'Testo', 'ข้อความ', 'Szöveg', 'Tekst', 'text', 'Teks', 'Metin', 'Κείμενο', 'متن', 'Teks', 'ટેક્સ્ટ', 'Tekst', 'Текст', 'ਟੈਕਸਟ', 'Text', 'Ọrọ', 'Rubutu'),
(962, 'unicode', 'Unicode', 'ইউনিকোড', 'Unicode', 'يونيكود', 'यूनिकोड', 'یونیکوڈ', '统一码', 'Unicode', 'Unicode', 'Unicode', 'Unicode', '유니 코드', 'Unicode', 'Unicode', 'Unicode', 'Unicode', 'Unicode', 'forms', 'Unicode', 'Unicode', 'Unicode', 'یونیکد', 'Unikod', 'યુનિકોડ', 'Unicode', 'Unicode', 'ਯੂਨੀਕੋਡ', 'Unicode', 'Unicode', 'Unicode'),
(963, 'more', 'More', 'অধিক', 'Más', 'أكثر', 'अधिक', 'مزید', '更多', 'もっと', 'Mais', 'Больше', 'Plus', '더', 'Mehr', 'Di Più', 'มากกว่า', 'Több', 'Meer', 'More', 'Lebih', 'Daha', 'Περισσότερο', 'بیشتر', 'Lebih banyak lagi', 'વધુ', 'Więcej', 'Більше', 'ਹੋਰ', 'Mai Mult', 'Diẹ sii', 'Kara'),
(964, 'all_student', 'All Student', 'সমস্ত ছাত্র', 'Todo estudiante', 'جميع الطلاب', 'सभी छात्र', 'تمام طالب علم', '所有学生', 'すべての学生', 'All Student', 'Все ученик', 'Tous les étudiants', '모든 학생', 'Alle Schüler', 'Tutti gli studenti', 'นักเรียนทุกคน', 'Minden hallgató', 'Alle studenten', 'Discipulus omnes', 'Semua Siswa', 'Tüm Öğrenci', 'Όλοι οι μαθητές', 'همه دانش آموزان', 'Semua Pelajar', 'બધા વિદ્યાર્થી', 'Wszyscy studenci', 'Всі Студент', 'ਸਾਰੇ ਵਿਦਿਆਰਥੀ', 'Tot student', 'Gbogbo akeko', 'Duk Dalibi'),
(1211, 'email_protocol', 'Email Protocol', 'ইমেল প্রোটোকল', 'Protocolo de correo electrónico', 'بروتوكول البريد الإلكتروني', 'ईमेल प्रोटोकॉल', 'ای میل پروٹوکول', '电子邮件协议', '電子メールプロトコル', 'Protocolo de Email', 'Протокол электронной почты', 'Protocole de messagerie', '이메일 프로토콜', 'E-Mail-Protokoll', 'Protocollo e-mail', 'โปรโตคอลอีเมล', 'E-mail Protokoll', 'E-mailprotocol', 'Inscriptio Protocol', 'Protokol Email', 'E-posta Protokolü', 'Πρωτόκολλο email', 'پروتکل ایمیل', 'Protokol E-mel', 'ઈમેલ પ્રોટોકોલ', 'Protokół e-mail', 'Протокол електронної пошти', 'ਈਮੇਲ ਪ੍ਰੋਟੋਕੋਲ', 'Protocolul de e-mail', 'Ilana Imeeli', 'Imel Protocol'),
(1212, 'cancelled', 'Cancelled', 'বাতিল', 'Cancelada', 'ألغيت', 'रद्द', 'منسوخ', '取消', 'キャンセル', 'Cancelada', 'Отменено', 'Annulé', '취소 된', 'Abgesagt', 'Annullata', 'ยกเลิก', 'Törölve', 'Geannuleerd', 'Cancellato', 'Dibatalkan', 'İptal edildi', 'Ακυρώθηκε', 'لغو شد', 'Dibatalkan', 'રદ', 'Anulowany', 'Скасовано', 'ਰੱਦ ਕਰ ਦਿੱਤਾ', 'Anulat', 'fagilee', 'An soke'),
(966, 'other', 'Other', 'অন্যান্য', 'Otro', 'آخر', 'अन्य', 'دیگر', '其他', 'その他の', 'De outros', 'Другой', 'Autre', '다른', 'Andere', 'Altra', 'อื่น', 'Egyéb', 'Andere', 'alius', 'Lain', 'Diğer', 'Αλλα', 'دیگر', 'Yang lain', 'અન્ય', 'Inny', 'Інший', 'ਹੋਰ', 'Alte', 'Omiiran', 'Sauran'),
(967, 'same_as_guarduan_address', 'Same as Guarduan Address', 'গার্ডিয়ান ঠিকানা একই', 'Lo mismo que la dirección del tutor', 'نفس عنوان الوصي', 'अभिभावक के पते के रूप में भी', 'گارڈین ایڈریس کی طرح', '与监护人地址相同', '保護者の住所と同じ', 'Igual ao endereço do responsável', 'То же, что и адрес Хранителя', 'Identique à l\'adresse du gardien', '보호자 주소와 동일', 'Entspricht der Guardian-Adresse', 'Come l\'indirizzo del tutore', 'เหมือนกับที่อยู่ของผู้พิทักษ์', 'Ugyanaz, mint a Guardian címe', 'Hetzelfde als Guardian Address', 'Sicut custos Oratio', 'Sama seperti Alamat Wali', 'Guardian Adresi ile aynı', 'Το ίδιο με τη διεύθυνση φύλακα', 'همان آدرس Guardian', 'Sama seperti Alamat Penjaga', 'વાલી સરનામું સમાન', 'Taki sam jak adres opiekuna', 'Те саме, що адреса опікуна', 'ਸਰਪ੍ਰਸਤ ਦੇ ਪਤੇ ਵਾਂਗ ਹੀ', 'La fel ca adresa de gardian', 'Kanna bi Adirẹsi adirẹsi', 'Yayi daidai da Adireshin Dandana'),
(968, 'find_guardian_by_phone', 'Find Guardian by Phone', 'ফোনে অভিভাবক সন্ধান করুন', 'Encuentra Guardian por teléfono', 'البحث عن الوصي عبر الهاتف', 'फोन द्वारा अभिभावक का पता लगाएं', 'فون کے ذریعہ گارڈین تلاش کریں', '通过电话查找监护人', '電話でガーディアンを探す', 'Encontre o Guardian por telefone', 'Найти Стража по телефону', 'Trouver Guardian par téléphone', '전화로 가디언 찾기', 'Finden Sie Guardian per Telefon', 'Trova Guardian per telefono', 'ค้นหาการ์เดียนทางโทรศัพท์', 'Keresse meg a Guardian telefonon', 'Vind Guardian via de telefoon', 'Find a Guardiano Phone', 'Temukan Wali melalui Telepon', 'Telefonla Koruyucu Bul', 'Βρείτε το Guardian μέσω τηλεφώνου', 'Guardian را از طریق تلفن پیدا کنید', 'Cari Penjaga melalui Telefon', 'ફોન દ્વારા વાલી શોધો', 'Znajdź opiekuna przez telefon', 'Знайти опікуна по телефону', 'ਫੋਨ ਦੁਆਰਾ ਸਰਪ੍ਰਸਤ ਲੱਭੋ', 'Găsiți gardianul prin telefon', 'Wa Olutọju nipasẹ Foonu', 'Nemo Guardian ta Waya'),
(969, 'transfer_certificate', 'Transfer Certificate', 'ট্রান্সফার সার্টিফিকেট', 'Certificado de transferencia', 'شهادة نقل', 'स्थानांतरण प्रमाण पत्र', 'سندی سند منتقل کریں', '转让证明', '譲渡証書', 'Certificado de Transferência', 'Сертификат передачи', 'Certificat de transfert', '양도 증명서', 'Überweisungsbescheinigung', 'Certificato di trasferimento', 'ใบรับรองการโอน', 'Átutalási igazolás', 'Overdrachtcertificaat', 'bus Quisque', 'Sertifikat Transfer', 'Transfer Sertifikası', 'Πιστοποιητικό μεταφοράς', 'گواهی انتقال', 'Sijil Pindah', 'ટ્રાન્સફર સર્ટિફિકેટ', 'Przekaż certyfikat', 'Свідоцтво про передачу', 'ਟ੍ਰਾਂਸਫਰ ਸਰਟੀਫਿਕੇਟ', 'Certificat de transfer', 'Ijẹrisi Gbe', 'Canja wurin Takaddun shaida'),
(971, 'transfer', 'Transfer', 'ট্রান্সফার', 'Transferir', 'نقل', 'स्थानांतरण', 'منتقلی', '传递', '転送', 'Transferir', 'Перечислить', 'Transfert', '이전', 'Transfer', 'Trasferimento', 'โอนย้าย', 'Átutalás', 'Overdracht', 'De translatione', 'Transfer', 'Aktar', 'ΜΕΤΑΦΟΡΑ', 'انتقال', 'Pindah', 'સ્થાનાંતરણ', 'Transfer', 'Передача', 'ਟ੍ਰਾਂਸਫਰ', 'Transfer', 'Gbe', 'Canja wuri'),
(972, 'regular', 'Regular', 'নিয়মিত', 'Regular', 'منتظم', 'नियमित', 'باقاعدہ', '定期', '定期的', 'Regular', 'регулярное', 'Ordinaire', '정규병', 'Regulär', 'Regolare', 'ปกติ', 'Szabályos', 'Regelmatig', 'iusto', 'Reguler', 'Düzenli', 'Τακτικός', 'منظم', 'Biasa', 'નિયમિત', 'Regularny', 'Регулярні', 'ਰੋਜਾਨਾ', 'Regulat', 'Deede', 'Kaya'),
(973, 'update_order', 'Update Order', 'আপডেট অর্ডার', 'Orden de actualización', 'أجل التحديث', 'आर्डर का अद्यतन करें', 'آرڈر کو اپ ڈیٹ کریں', '更新顺序', '注文を更新', 'Atualizar pedido', 'Обновить заказ', 'Mise à jour de la commande', '주문 업데이트', 'Bestellung aktualisieren', 'Ordine di aggiornamento', 'อัพเดทคำสั่งซื้อ', 'Frissítse a rendelést', 'Order bijwerken', 'Update Ordinis', 'Perbarui Pesanan', 'Siparişi Güncelle', 'Ενημέρωση παραγγελίας', 'به روزرسانی سفارش', 'Kemas kini Pesanan', 'Updateર્ડર અપડેટ કરો', 'Zaktualizuj zamówienie', 'Оновити замовлення', 'ਅਪਡੇਟ ਆਰਡਰ', 'Comanda de actualizare', 'Bere fun Imudojuiwọn', 'Sabunta Sabuntawa'),
(974, 'display_order', 'Display Order', 'ডিসপ্লে অর্ডার', 'Orden de visualización', 'ترتيب العرض', 'प्रस्तुति का क्रम', 'آرڈر ڈسپلے کریں', '显示顺序', '表示順', 'Ordem de exibição', 'Отобразить заказ', 'Ordre d\'affichage', '주문 표시', 'Bestellung anzeigen', 'Ordine di visualizzazione', 'แสดงลำดับ', 'megjelenítési sorrend', 'Weergavevolgorde', 'display Ordinis', 'Urutan Tampilan', 'Görüntüleme sırası', 'Σειρά εμφάνισης', 'ترتیب نمایش', 'Pesanan Paparan', 'ડિસ્પ્લે ઓર્ડર', 'Kolejność wyświetlania', 'Показати замовлення', 'ਡਿਸਪਲੇਅ ਆਰਡਰ', 'Comanda afișată', 'Bere fun Ifihan', 'Umarni Nuna'),
(975, 'select_class', 'Select Class', 'ক্লাস নির্বাচন করুন', 'Seleccione clase', 'حدد Class', 'कक्षा का चयन करें', 'منتخب کلاس', '选择班级', 'クラスを選択', 'Selecionar classe', 'Выберите класс', 'Sélectionnez la classe', '수업 선택', 'Wählen Sie Klasse', 'Seleziona la classe', 'เลือกชั้นเรียน', 'Válassza az Osztályt', 'Selecteer Klasse', 'Select Class', 'Pilih Kelas', 'Sınıf Seçin', 'Επιλέξτε τάξη', 'کلاس را انتخاب کنید', 'Pilih Kelas', 'વર્ગ પસંદ કરો', 'Wybierz klasę', 'Виберіть Клас', 'ਕਲਾਸ ਚੁਣੋ', 'Selectați clasa', 'Yan Kilasi', 'Zaɓi Class'),
(976, 'you_have_remain_leave', 'You have remain leave', 'আপনার ছুটি রয়েছে', 'Tienes que quedarte', 'لقد بقيت إجازة', 'आप छुट्टी रह गए हैं', 'تمہیں چھٹی باقی ہے', '你有请假', 'あなたは残ります', 'Você permaneceu em licença', 'Вы остались уйти', 'Vous avez rester congé', '당신은 휴가를 남아있다', 'Du bist verlassen geblieben', 'Devi rimanere', 'คุณยังคงออกไป', 'Végig maradsz', 'Je moet verlof blijven', 'Maneant tibi relinquo', 'Anda tetap pergi', 'İzniniz kaldı', 'Έχετε παραμείνει άδεια', 'شما مرخصی مانده اید', 'Anda masih ada cuti', 'તમે રજા બાકી છે', 'Pozostałaś na urlopie', 'У вас залишилися відпустки', 'ਤੁਹਾਨੂੰ ਛੁੱਟੀ ਰਹਿ ਗਈ ਹੈ', 'Ai rămas concediu', 'O ti wa ni isinmi', 'Kun ci gaba da tafiya'),
(977, 'language_name_note', 'No Space, No Capital Letter, No Special Character. Ex: english', 'No Space, No Capital Letter, No Special Character. Ex: english', 'Sin espacio, sin mayúscula, sin caracteres especiales. Ej: inglés', 'بدون مسافة أو حرف كبير أو حرف خاص. مثال: الإنجليزية', 'नो स्पेस, नो कैपिटल लेटर, नो स्पेशल कैरेक्टर। Ex: अंग्रेजी', 'کوئی جگہ نہیں ، کوئی بڑا حرف نہیں ، کوئی خاص حرف نہیں۔ مثال کے طور پر: انگریزی', '没有空格，没有大写字母，没有特殊字符。 例如：英语', 'スペースなし、大文字なし、特殊文字なし。 例：英語', 'Sem espaço, sem letra maiúscula, sem caracteres especiais. Ex: inglês', 'Нет пробела, нет заглавной буквы, нет специального символа. Пример: английский', 'Pas d\'espace, pas de majuscule, pas de caractère spécial. Ex: anglais', '공백 없음, 대문자 없음, 특수 문자 없음. 예 : 영어', 'Kein Leerzeichen, kein Großbuchstabe, kein Sonderzeichen. Beispiel: Englisch', 'Nessuno spazio, nessuna lettera maiuscola, nessun carattere speciale. Es: inglese', 'ไม่มีช่องว่าง ไม่มีตัวพิมพ์ใหญ่ ไม่มีอักขระพิเศษ ตัวอย่าง: ภาษาอังกฤษ', 'Nincs hely, nincs nagybetű, nincs különleges karakter. Pl .: angol', 'Geen spatie, geen hoofdletter, geen speciaal karakter. Vb: Engels', 'Non Rursus locus non Capital has Litteras resumere, non distinguunt. Ex: anglicus', 'Tanpa Spasi, Tanpa Huruf Besar, Tanpa Karakter Khusus. Mis: bahasa Inggris', 'Boşluk Yok, Büyük Harf Yok, Özel Karakter Yok. Örn: İngilizce', 'Χωρίς Διάστημα, Χωρίς Κεφαλαίο Γράμμα, Χωρίς Ειδικό Χαρακτήρα. Π.χ .: Αγγλικά', 'بدون فضا ، بدون نامه سرمایه ، بدون شخصیت خاص. مثال: انگلیسی', 'Tanpa Ruang, Tanpa Huruf Besar, Tidak Ada Perwatakan Khas. Cth: bahasa inggeris', 'કોઈ જગ્યા નહીં, કોઈ મૂડી પત્ર નહીં, વિશેષ પાત્ર નહીં. ઉદા: અંગ્રેજી', 'Bez spacji, bez dużej litery, bez znaków specjalnych. Np .: angielski', 'Ні місця, ні великої літери, ні спеціального персонажа. Наприклад: англійська', 'ਕੋਈ ਸਪੇਸ, ਕੋਈ ਪੂੰਜੀ ਪੱਤਰ, ਕੋਈ ਵਿਸ਼ੇਸ਼ ਅੱਖਰ. ਉਦਾਹਰਣ: ਅੰਗਰੇਜ਼ੀ', 'Fără spațiu, fără literă capitală, fără caracter special. Ex: engleză', 'Ko si aaye, Ko si Lẹta Olu, Ko si Ohun kikọ pataki. Ex: Gẹẹsi', 'Babu Sarari, Babu Harafin Harafi, Babu Babban Harafi. Ex: harshen Turanci'),
(978, 'discount_type', 'Discount Type', 'ছাড়ের ধরণ', 'Tipo de descuento', 'نوع الخصم', 'डिस्काउंट प्रकार', 'ڈسکاؤنٹ کی قسم', '优惠类型', '割引タイプ', 'Tipo de desconto', 'Тип скидки', 'Type de remise', '할인 유형', 'Rabattart', 'Tipo di sconto', 'ประเภทส่วนลด', 'Kedvezmény típusa', 'Kortingstype', 'Buy Type', 'Jenis Diskon', 'İndirim Türü', 'Τύπος έκπτωσης', 'نوع تخفیف', 'Jenis Diskaun', 'ડિસ્કાઉન્ટનો પ્રકાર', 'Rodzaj rabatu', 'Тип знижки', 'ਛੂਟ ਦੀ ਕਿਸਮ', 'Tipul reducerii', 'Iru ẹdinwo', 'Nau\'in Ragewa'),
(979, 'flat_amount', 'Flat Amount', 'ফ্ল্যাট পরিমাণ', 'Cantidad fija', 'مبلغ مقطوع', 'सीधी रकम', 'فلیٹ کی رقم', '固定金额', '定額', 'Quantia fixa', 'Фиксированная сумма', 'Montant forfaitaire', '납작 금액', 'Pauschalbetrag', 'Importo forfettario', 'จำนวนเงินคงที่', 'Lapos összeg', 'Vast bedrag', 'Aliquam flat', 'Jumlah Rata', 'Sabit Tutar', 'Κατ \'αποκοπή ποσό', 'مبلغ تخت', 'Jumlah Rata', 'ફ્લેટ રકમ', 'Wyrównana ilość', 'Плоска сума', 'ਫਲੈਟ ਦੀ ਮਾਤਰਾ', 'Suma plană', 'Iye owo Alapin', 'Adadin kuɗi'),
(980, 'percentage_amount', 'Percentage Amount', 'শতাংশের পরিমাণ', 'Porcentaje Cantidad', 'النسبة المئوية', 'प्रतिशत राशि', 'فیصد رقم', '百分比金额', 'パーセント額', 'Valor percentual', 'Процентная сумма', 'Montant en pourcentage', '백분율 금액', 'Prozentualer Betrag', 'Importo percentuale', 'เปอร์เซ็นต์จำนวนเงิน', 'Százalékos összeg', 'Percentage Bedrag', 'Aliquam CENTESIMA', 'Jumlah Persentase', 'Yüzde Tutarı', 'Ποσοστό ποσοστού', 'مقدار درصد', 'Jumlah Peratusan', 'ટકાવારી રકમ', 'Kwota procentowa', 'Відсоткова сума', 'ਪ੍ਰਤੀਸ਼ਤ ਰਕਮ', 'Suma procentuală', 'Iye ogorun', 'Adadin Kashi dari'),
(981, 'bank_receipt', 'Bank Receipt', 'ব্যাংক রশিদ', 'Recibo del banco', 'إيصال البنك', 'बैंक रसीद', 'بینک کی رسید', '银行单据', '銀行の領収書', 'Recibo bancário', 'Банковская квитанция', 'Reçu de banque', '은행 영수증', 'Bankbeleg', 'Ricevuta bancaria', 'ใบเสร็จธนาคาร', 'Banki átvétel', 'Bankafschrift', 'Medicamentum Bank', 'Tanda Terima Bank', 'Banka dekontu', 'ΑΠΟΔΕΙΞΗ ΤΡΑΠΕΖΑΣ', 'رسید بانک', 'Resit bank', 'બેંક રસીદ', 'Wyciąg z banku', 'Квитанція банку', 'ਬੈਂਕ ਦੀ ਰਸੀਦ', 'Chitanta bancara', 'Ile-ifowopamọ Gba', 'Rashin karɓar banki'),
(982, 'manage_paid_receipt', 'Manage Paid Receipt', 'প্রদত্ত রসিদ পরিচালনা করুন', 'Gestionar recibo pagado', 'إدارة الإيصال المدفوع', 'पेड रसीद का प्रबंधन करें', 'ادا شدہ رسید کا انتظام کریں', '管理收据', '支払い済み領収書を管理する', 'Gerenciar recibo pago', 'Управление оплаченной квитанцией', 'Gérer les reçus payés', '유료 영수증 관리', 'Bezahlte Quittung verwalten', 'Gestisci ricevuta a pagamento', 'จัดการใบเสร็จรับเงิน', 'Fizetett átvétel kezelése', 'Beheer betaald betalingsbewijs', 'Curo Paid Receptio', 'Kelola Tanda Terima Berbayar', 'Ücretli Makbuzu Yönet', 'Διαχείριση απόδειξης επί πληρωμή', 'رسید رسید پرداخت کنید', 'Urus Resit Berbayar', 'ચૂકવેલ રસીદ મેનેજ કરો', 'Zarządzaj płatnym pokwitowaniem', 'Управління оплаченою квитанцією', 'ਭੁਗਤਾਨ ਕੀਤੀ ਰਸੀਦ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați primirea plătită', 'Ṣakoso owo isanwo ti o san', 'Gudanar da Risu Mai biya'),
(983, 'manage_due_receipt', 'Manage Due Receipt', 'প্রাপ্য রসিদ পরিচালনা করুন', 'Gestionar recibo vencido', 'إدارة إيصال الاستحقاق', 'नियत रसीद का प्रबंधन करें', 'موصولہ رسید کا انتظام کریں', '管理到期收据', '期日管理の管理', 'Gerenciar recebimento devido', 'Управлять должным поступлением', 'Gérer le reçu dû', '적법한 영수증 관리', 'Fälligen Beleg verwalten', 'Gestisci ricevuta dovuta', 'จัดการใบเสร็จรับเงินที่ครบกำหนด', 'Az esedékes átvétel kezelése', 'Beheer verschuldigde ontvangst', 'Ob Curo Receptio', 'Kelola Tanda Terima Karena', 'Ödenmesi Alındı Makbuzunu Yönet', 'Διαχείριση οφειλόμενης απόδειξης', 'رسید دریافتی را مدیریت کنید', 'Urus Resit Hutang', 'નિયત રસીદ મેનેજ કરો', 'Zarządzaj należnymi pokwitowaniami', 'Управління належним надходженням', 'ਬਕਾਇਆ ਰਸੀਦ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează primirea cuvenită', 'Ṣakoso gbigba Gbigba', 'Gudanar da Rashin karɓa'),
(984, 'paid_receipt', 'Paid Receipt', 'প্রদত্ত রসিদ', 'Recibo pagado', 'إيصال مدفوع', 'भुगतान की रसीद', 'ادا کی رسید', '收据收据', '有償領収書', 'Recibo pago', 'Оплаченная квитанция', 'Reçu payé', '유료 영수증', 'Bezahlte Quittung', 'Ricevuta a pagamento', 'ใบเสร็จรับเงิน', 'Fizetett átvétel', 'Betaald ontvangstbewijs', 'Medicamentum solvit', 'Kwitansi Dibayar', 'Ücretli Makbuz', 'Πληρωμή απόδειξης', 'رسید پرداخت شده', 'Resit Berbayar', 'ચૂકવેલ રસીદ', 'Płatny pokwitowanie', 'Оплачена квитанція', 'ਭੁਗਤਾਨ ਕੀਤੀ ਰਸੀਦ', 'Primire plătită', 'Isanwo ti o sanwo', 'Kudin da aka biya'),
(985, 'due_receipt', 'Due Receipt', 'প্রাপ্য রসিদ', 'Recibo', 'إيصال مستحق', 'प्राप्ति', 'وصولی', '到期收据', '納期', 'Entrega devido', 'Должная квитанция', 'Réception due', '영수증', 'Fälliger Eingang', 'Ricevuta dovuta', 'ใบเสร็จรับเงิน', 'Esedékes átvétel', 'Verschuldigde ontvangst', 'ob Receptio', 'Tanda terima jatuh tempo', 'Teslim Alındı Belgesi', 'Οφειλόμενη απόδειξη', 'رسید مقرر', 'Resit Mesti', 'મળતી રસીદ', 'Termin wymagalności', 'Належне отримання', 'ਬਕਾਇਆ ਰਸੀਦ', 'Primirea cuvenită', 'Gbigba Gbigba', 'Rashin karɓa'),
(986, 'school_copy', 'School Copy', 'স্কুল কপি', 'Copia de la escuela', 'نسخة مدرسية', 'स्कूल की कॉपी', 'اسکول کاپی', '学校副本', '学校のコピー', 'Cópia da escola', 'Школьная копия', 'Copie de l\'école', '학교 사본', 'Schulkopie', 'Copia di scuola', 'สำเนาโรงเรียน', 'Iskolai másolat', 'School kopie', 'Exemplar School', 'Copy Sekolah', 'Okul Kopyası', 'Αντίγραφο σχολείου', 'کپی مدرسه', 'Salinan Sekolah', 'શાળાની નકલ', 'Szkolna kopia', 'Шкільна копія', 'ਸਕੂਲ ਕਾੱਪੀ', 'Copie școlară', 'Ẹda Ile-iwe', 'Kwafin Makaranta'),
(987, 'bank_copy', 'Bank Copy', 'ব্যাংক কপি', 'Copia bancaria', 'نسخة مصرفية', 'बैंक की प्रति', 'بینک کاپی', '银行副本', '銀行コピー', 'Cópia bancária', 'Банк Копировать', 'Copie bancaire', '은행 복사', 'Bankkopie', 'Copia bancaria', 'สำเนาธนาคาร', 'Bank másolat', 'Bank kopiëren', 'Exemplar Bank', 'Copy Bank', 'Banka Kopyası', 'Αντίγραφο τράπεζας', 'کپی بانک', 'Salinan Bank', 'બેંક ક Copyપિ', 'Kopia banku', 'Копія банку', 'ਬੈਂਕ ਕਾੱਪੀ', 'Copie bancară', 'Daakọ Bank', 'Kwafin Banki'),
(988, 'reference', 'Reference', 'রেফারেন্স', 'Referencia', 'مرجع', 'संदर्भ', 'حوالہ۔', '参考', '参照', 'Referência', 'Ссылка', 'Référence', '참고', 'Referenz', 'Riferimento', 'การอ้างอิง', 'Referencia', 'Referentie', 'Reference', 'Referensi', 'Referans', 'Αναφορά', 'ارجاع', 'Rujukan', 'સંદર્ભ', 'Odniesienie', 'Довідково', 'ਹਵਾਲਾ', 'Referinţă', 'Ifilo', 'Tunani'),
(989, 'submission', 'Submission', 'উপস্থাপন', 'Sumisión', 'تسليم', 'प्रस्तुत करने', 'عرض کرنا', '投稿', '提出', 'Submissão', 'представление', 'Soumission', '제출', 'Einreichung', 'Presentazione', 'ส่ง', 'Benyújtása', 'Inzending', 'submission', 'pengajuan', 'boyun eğme', 'Υποβολή', 'ارسال', 'Penyerahan', 'રજૂઆત', 'Zgłoszenie', 'Подання', 'ਅਧੀਨਗੀ', 'supunere', 'Ifakalẹ', '.Addamarwa'),
(990, 'manage_submission', 'Manage Submission', 'জমা দেওয়ার পরিচালনা করুন', 'Gestionar envío', 'إدارة التقديم', 'सबमिशन प्रबंधित करें', 'جمع کرانے کا انتظام کریں', '管理提交', '提出の管理', 'Gerenciar envio', 'Управление представлением', 'Gérer la soumission', '제출 관리', 'Übermittlung verwalten', 'Gestisci invio', 'จัดการการส่ง', 'A benyújtás kezelése', 'Inzending beheren', 'curo Submission', 'Kelola Pengajuan', 'Gönderimi Yönet', 'Διαχείριση υποβολής', 'مدیریت ارسال را مدیریت کنید', 'Uruskan Penyerahan', 'સબમિશન મેનેજ કરો', 'Zarządzaj przesyłaniem', 'Управління поданням', 'ਅਧੀਨਗੀ ਦਾ ਪ੍ਰਬੰਧ ਕਰੋ', 'Gestionați trimiterea', 'Ṣakoso Ifisilẹ', 'Sarrafa ƙaddamarwa'),
(991, 'submitted_at', 'Submitted At', 'জমা দেওয়া তারিখ', 'Enviado a', 'تم الإرسال في', 'पर प्रस्तुत किया गया', 'پیش کیا گیا', '提交于', '提出日', 'Enviado em', 'Отправлено в', 'Soumis à', '에 제출', 'Eingereicht bei', 'Inviato a', 'ส่งที่', 'Beküldés időpontja:', 'Ingediend bij', 'In summitto', 'Diserahkan pada', 'Gönderme Tarihi', 'Υποβλήθηκε στις', 'ارسال شده در', 'Dihantar pada', 'સબમિટ મુ', 'Przesłano o', 'Надіслано в', 'ਪੇਸ਼ ਕੀਤਾ', 'Înscris la At', 'Silẹ Ni', 'Sallama a'),
(992, 'submitted_by', 'Submitted By', 'জমাদানকারী', 'Presentado por', 'مقدم من', 'द्वारा प्रस्तुत', 'کی طرف سے پیش', '由...所提交', 'から提出された', 'Enviado por', 'Представленный', 'Proposé par', '에 의해 제출 된', 'Eingereicht von', 'Inviato da', 'ส่งมาโดย', 'Által benyújtott', 'Ingediend door', 'Subjuncta', 'Disampaikan oleh', 'Tarafından gönderilmiştir', 'Που υποβάλλονται από', 'ارسال شده توسط', 'Dikemukakan oleh', 'દ્રારા રજુ કરેલ', 'Przesłane przez', 'Представлений', 'ਦੁਆਰਾ ਭੇਜਿਆ', 'Trimis de', 'Silẹ Nipa', 'Tedaddamar da Ta'),
(993, 'video_id', 'Video ID', 'ভিডিও আইডি', 'ID de video', 'معرف الفيديو', 'वीडियो आईडी', 'ویڈیو ID', '影片编号', 'ビデオID', 'ID do vídeo', 'Идентификатор видео', 'ID vidéo', '비디오 ID', 'Video ID', 'ID video', 'รหัสวิดีโอ', 'Videó azonosítója', 'Video-ID', 'id Video', 'ID video', 'Video Kimliği', 'Αναγνωριστικό βίντεο', 'شناسه فیلم', 'ID Video', 'વિડિઓ આઈડી', 'Identyfikator wideo', 'Ідентифікатор відео', 'ਵੀਡੀਓ ਆਈਡੀ', 'ID video', 'ID fidio', 'Bidiyo na Bidiyo'),
(994, 'lecture_ppt', 'Lecture PPT', 'লেকচার পিপিটি', 'Conferencia PPT', 'محاضرة PPT', 'व्याख्यान पीपीटी', 'لیکچر پی پی ٹی', '讲座PPT', '講義PPT', 'Palestra PPT', 'Лекция ППТ', 'Conférence PPT', '강의 PPT', 'Vorlesung PPT', 'Conferenza PPT', 'บรรยาย PPT', 'PPT előadás', 'Lezing PPT', 'Lectio ppt', 'Kuliah PPT', 'Ders PPT', 'Διάλεξη PPT', 'سخنرانی PPT', 'PPT Kuliah', 'વ્યાખ્યાન પીપીટી', 'Wykład PPT', 'Лекція PPT', 'ਲੈਕਚਰ ਪੀ.ਪੀ.ਟੀ.', 'Lectură PPT', 'Ẹkọ PPT', 'Lakcar da PPT'),
(995, 'class_lecture', 'Class Lecture', 'ক্লাস লেকচার', 'Conferencia de clase', 'محاضرة الصف', 'कक्षा व्याख्यान', 'کلاس لیکچر', '课堂讲义', 'クラス講義', 'Aula de Aula', 'Класс Лекция', 'Conférence en classe', '수업 강의', 'Vorlesung', 'Lezione di classe', 'การบรรยายในชั้นเรียน', 'Osztály előadás', 'Klasse Lezing', 'Lectio genus', 'Kuliah Kelas', 'Ders anlatımı', 'Διάλεξη τάξης', 'سخنرانی کلاس', 'Kuliah Kelas', 'વર્ગ વ્યાખ્યાન', 'Wykład klasowy', 'Класна лекція', 'ਕਲਾਸ ਲੈਕਚਰ', 'Curs de curs', 'Kika kilasi', 'Karatun Class');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(996, 'manage_class_lecture', 'Manage Class Lecture', 'ক্লাস লেকচার পরিচালনা করুন', 'Administrar clase', 'إدارة محاضرة الفصل', 'कक्षा व्याख्यान का प्रबंधन करें', 'کلاس لیکچر کا انتظام کریں', '管理课堂演讲', 'クラスの講義を管理する', 'Gerenciar palestra em classe', 'Лекция по классу', 'Gérer la conférence en classe', '수업 강의 관리', 'Klassenvortrag verwalten', 'Gestisci lezione di classe', 'จัดการบรรยายในชั้นเรียน', 'Kezelje az előadást', 'Beheer klassencollege', 'Lectio Curo Paleonemertea Class', 'Kelola Kuliah Kelas', 'Sınıf Dersini Yönet', 'Διαχείριση διαλέξεων τάξης', 'مدیریت سخنرانی کلاس', 'Urus Kuliah Kelas', 'વર્ગ વ્યાખ્યાન મેનેજ કરો', 'Zarządzaj wykładem klasowym', 'Управління лекцією класу', 'ਕਲਾਸ ਲੈਕਚਰ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează cursul clasei', 'Ṣakoso Ẹkọ Kilasi', 'Gudanar da Karatun Class'),
(997, 'lecture_type', 'Lecture Type', ' লেকচার ধরন', 'Tipo de conferencia', 'نوع المحاضرة', 'व्याख्यान प्रकार', 'لیکچر کی قسم', '讲座类型', '講義タイプ', 'Tipo de Palestra', 'Тип лекции', 'Type de conférence', '강의 유형', 'Vorlesungstyp', 'Tipo di lezione', 'ประเภทบรรยาย', 'Előadás típusa', 'Lezingstype', 'Lectio Type', 'Jenis Kuliah', 'Ders Türü', 'Τύπος διάλεξης', 'نوع سخنرانی', 'Jenis Kuliah', 'વ્યાખ્યાન પ્રકાર', 'Rodzaj wykładu', 'Тип лекції', 'ਲੈਕਚਰ ਦੀ ਕਿਸਮ', 'Tipul cursului', 'Iru Ikawe', 'Nau\'in koyarwa'),
(998, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', 'موقع يوتيوب', 'यूट्यूब', 'یوٹیوب', '优酷', 'Youtube', 'Youtube', 'YouTube', 'Youtube', '유튜브', 'Youtube', 'Youtube', 'Youtube', 'Youtube', 'Youtube', 'video', 'Youtube', 'Youtube', 'Youtube', 'یوتیوب', 'Youtube', 'યુટ્યુબ', 'youtube', 'Youtube', 'ਯੂਟਿubeਬ', 'Youtube', 'Youtube', 'Youtube'),
(999, 'vimeo', 'Vimeo', 'ভিমিও', 'Vimeo', 'Vimeo', 'Vimeo', 'Vimeo', 'Vimeo', 'ヴィメオ', 'Vimeo', 'Vimeo', 'Vimeo', '비 메오', 'Vimeo', 'Vimeo', 'Vimeo', 'Vimeo', 'Vimeo', 'Video', 'Vimeo', 'Vimeo', 'Vimeo', 'ویمئو', 'Vimeo', 'Vimeo', 'Vimeo', 'Вімео', 'Vimeo', 'Vimeo', 'Vimeo', 'Vimeo'),
(1000, 'power_point', 'Power Point', 'পাওয়ার পয়েন্ট', 'PowerPoint', 'عرض تقديمي', 'पावर प्वाइंट', 'پاور پوائنٹ', '微软幻灯片软件', 'パワーポイント', 'Power Point', 'Силовая установка', 'Power Point', '파워 포인트', 'Power Point', 'Presa della corrente', 'พาวเวอร์พอยต์', 'Power Point', 'Power Point', 'PunctumPotentiae', 'Power Point', 'Priz', 'Power Point', 'پاورپوینت', 'Titik Kuasa', 'પાવર પોઇન્ટ', 'Power Point', 'Штепсельна розетка', 'ਪਾਵਰ ਪਵਾਇੰਟ', 'Power Point', 'Sọkẹti Ogiri fun ina', 'Wutar Lantarki'),
(1001, 'valid_file_format_lecture', 'Please select a valid file format. Ex: ppt, pptx.', 'একটি বৈধ ফাইল ফর্ম্যাট নির্বাচন করুন। উদাঃ পিটিপি, পিপিটিএক্স', 'Por favor seleccione un formato de archivo válido. Ej: ppt, pptx.', 'يرجى تحديد تنسيق ملف صالح. مثال: ppt ، pptx.', 'कृपया एक मान्य फ़ाइल प्रारूप चुनें। Ex: पीपीटी, पीपीटीएक्स।', 'براہ کرم ایک درست فائل فارمیٹ منتخب کریں۔ مثال کے طور پر: ppt ، pptx', '请选择有效的文件格式。 例如：ppt，pptx。', '有効なファイル形式を選択してください。 例：ppt、pptx。', 'Por favor, selecione um formato de arquivo válido. Ex .: ppt, pptx.', 'Пожалуйста, выберите правильный формат файла. Пример: ppt, pptx.', 'Veuillez sélectionner un format de fichier valide. Ex: ppt, pptx.', '유효한 파일 형식을 선택하십시오. 예 : ppt, pptx.', 'Bitte wählen Sie ein gültiges Dateiformat. Beispiel: ppt, pptx.', 'Seleziona un formato file valido. Es: ppt, pptx.', 'โปรดเลือกรูปแบบไฟล์ที่ถูกต้อง ตัวอย่าง: ppt, pptx.', 'Válasszon érvényes fájlformátumot. Pl .: ppt, pptx.', 'Selecteer een geldig bestandsformaat. Bijvoorbeeld: ppt, pptx.', 'Placere eligere formae q.e. valet. Ex: ppt, PPTX.', 'Silakan pilih format file yang valid. Mis: ppt, pptx.', 'Lütfen geçerli bir dosya biçimi seçin. Örn: ppt, pptx.', 'Επιλέξτε μια έγκυρη μορφή αρχείου. Π.χ .: ppt, pptx.', 'لطفا یک قالب پرونده معتبر انتخاب کنید. مثال: ppt ، pptx.', 'Sila pilih format fail yang sah. Cth: ppt, pptx.', 'કૃપા કરી માન્ય ફાઇલ ફોર્મેટ પસંદ કરો. ભૂતપૂર્વ: ppt, pptx.', 'Wybierz prawidłowy format pliku. Np .: ppt, pptx.', 'Виберіть правильний формат файлу. Наприклад: ppt, pptx.', 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਫਾਈਲ ਫੌਰਮੈਟ ਦੀ ਚੋਣ ਕਰੋ. ਉਦਾਹਰਣ: ppt, pptx.', 'Vă rugăm să selectați un format de fișier valid. Ex: ppt, pptx.', 'Jọwọ yan ọna kika faili to wulo. Mofi: ppt, pptx.', 'Da fatan za a zabi ingataccen tsarin fayil. Ex: ppt, pptx.'),
(1002, 'valid_file_format_submission', 'Valid file format submission. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'বৈধ ফাইল ফর্ম্যাট জমা । উদা: ডক, ডকএক্স, জেপিজি, জেপিগ, পিডিএফ, পিপিটি, পিপিটিএক্স।', 'Envío de formato de archivo válido. Ej: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'إرسال تنسيق ملف صالح. مثال: doc و docx و jpg و jpeg و pdf و ppt و pptx.', 'मान्य फ़ाइल प्रारूप सबमिशन। Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx', 'درست فائل فارمیٹ جمع کرانا۔ مثال کے طور پر: doc ، docx ، jpg ، jpeg ، pdf ، ppt ، pptx', '有效的文件格式提交。 例如：doc，docx，jpg，jpeg，pdf，ppt，pptx。', '有効なファイル形式の送信。 例：doc、docx、jpg、jpeg、pdf、ppt、pptx。', 'Envio de formato de arquivo válido. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Допустимый формат файла представления. Например: документ, документ, JPG, JPEG, PDF, PPT, PPTX.', 'Soumission de format de fichier valide. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', '유효한 파일 형식 제출 예 : doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Gültige Einreichung des Dateiformats. Beispiel: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Invio del formato file valido. Es: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'การส่งรูปแบบไฟล์ที่ถูกต้อง เช่น doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Érvényes fájlformátum-benyújtás. Pl .: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Geldige indiening van bestandsindeling. Bijvoorbeeld: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Verum formae q.e. obediens gauderet exerceri. Ex: doc: docx: jpg JPEG pdf, ppt, PPTX.', 'Pengiriman format file yang valid. Contoh: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Geçerli dosya biçimi gönderimi. Örn: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Έγκυρη υποβολή μορφής αρχείου. Π.χ .: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'ارسال فرمت فایل معتبر است. مثال: doc، docx، jpg، jpeg، pdf، ppt، pptx.', 'Penyerahan format fail yang sah. Cth: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'માન્ય ફાઇલ ફોર્મેટ સબમિશન. દા.ત.: ડ docક, ડ docકએક્સ, જેપીજી, જેપીએજી, પીડીએફ, પીપીટી, પીટીટીએક્સ.', 'Prawidłowy format pliku. Np .: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Дійсне подання формату файлу. Наприклад: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'ਵੈਧ ਫੌਰਮੈਟ ਸਬਮਿਸ਼ਨ. ਉਦਾਹਰਣ: ਡੌਕ, ਡੌਕਸ, ਜੇਪੀਜੀ, ਜੇਪੀਜੀ, ਪੀਡੀਐਫ, ਪੀਟੀਪੀ, ਪੀਟੀਐਫਐਕਸ.', 'Trimitere valabilă în format de fișier. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Ifisilẹ ọna kika faili afọmọ. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.', 'Missionaddamar da tsarin fayil mai inganci. Ex: doc, docx, jpg, jpeg, pdf, ppt, pptx.'),
(1004, 'global_search', 'Global Search', 'গ্লোবাল অনুসন্ধান', 'Búsqueda global', 'البحث العالمي', 'वैश्विक खोज', 'عالمی تلاش', '全球搜寻', 'グローバル検索', 'Pesquisa global', 'Глобальный поиск', 'Recherche globale', '글로벌 검색', 'Globale Suche', 'Ricerca globale', 'ค้นหาทั่วโลก', 'Globális keresés', 'Wereldwijd zoeken', 'Global Quaerere', 'Pencarian Global', 'Global Arama', 'Καθολική αναζήτηση', 'جستجوی جهانی', 'Carian Global', 'વૈશ્વિક શોધ', 'Wyszukiwanie globalne', 'Глобальний пошук', 'ਗਲੋਬਲ ਖੋਜ', 'Căutare globală', 'Wiwa Agbaye', 'Binciken Duniya'),
(1005, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'Ver perfil', 'عرض الصفحة الشخصية', 'प्रोफाइल देखिये', 'پروفائل کا مشاھدہ کریں', '查看资料', 'プロフィールを見る', 'Ver perfil', 'Просмотреть профиль', 'Voir le profil', '프로필보기', 'Profil anzeigen', 'Visualizza profilo', 'ดูประวัติ', 'Profil megtekintése', 'Bekijk profiel', 'View profile', 'Tampilkan profil', 'Profili Görüntüle', 'Εμφάνιση προφίλ', 'مشاهده پروفایل', 'Lihat profil', 'પ્રોફાઇલ જુઓ', 'Zobacz profil', 'Перегляд профілю', 'ਪ੍ਰੋਫਾਈਲ ਵੇਖੋ', 'Vezi profil', 'Wo Profaili', 'Duba Bayanan martaba'),
(1006, 'type_atleast_3_characters', 'Type at least 3 characters', 'কমপক্ষে 3 টি অক্ষর টাইপ করুন', 'Escriba al menos 3 caracteres', 'اكتب 3 أحرف على الأقل', 'कम से कम 3 अक्षर टाइप करें', 'کم از کم 3 حرف ٹائپ کریں', '输入至少3个字符', '3文字以上入力してください', 'Digite pelo menos 3 caracteres', 'Введите не менее 3 символов', 'Tapez au moins 3 caractères', '3 자 이상 입력', 'Geben Sie mindestens 3 Zeichen ein', 'Digita almeno 3 caratteri', 'พิมพ์อย่างน้อย 3 ตัวอักษร', 'Írjon be legalább 3 karaktert', 'Typ minimaal 3 karakters', 'Typus III characters certe', 'Ketik setidaknya 3 karakter', 'En az 3 karakter yazın', 'Πληκτρολογήστε τουλάχιστον 3 χαρακτήρες', 'حداقل 3 کاراکتر تایپ کنید', 'Taip sekurang-kurangnya 3 aksara', 'ઓછામાં ઓછા 3 અક્ષરો લખો', 'Wpisz co najmniej 3 znaki', 'Введіть щонайменше 3 символи', 'ਘੱਟੋ ਘੱਟ 3 ਅੱਖਰ ਟਾਈਪ ਕਰੋ', 'Tastați cel puțin 3 caractere', 'Tẹ o kere 3 ohun kikọ', 'Rubuta aƙalla haruffa 3'),
(1007, 'no_search_result_found', 'No search result found', 'কোন অনুসন্ধান ফলাফল পাওয়া যায় নি', 'No se encontraron resultados de búsqueda', 'لم يتم العثور على نتيجة بحث', 'कोई खोज परिणाम नहीं मिला', 'تلاش کا کوئی نتیجہ نہیں ملا', '找不到搜索结果', '検索結果は見つかりませんでした', 'Nenhum resultado de pesquisa encontrado', 'Результаты поиска не найдены', 'Aucun résultat de recherche trouvé', '검색 결과가 없습니다', 'Kein Suchergebnis gefunden', 'Nessun risultato di ricerca trovato', 'ไม่พบผลการค้นหา', 'Nincs találat', 'Geen zoekresultaat gevonden', 'Quaerere exitum non invenit', 'Tidak ditemukan hasil pencarian', 'Arama sonucu bulunamadı', 'Δεν βρέθηκε αποτέλεσμα αναζήτησης', 'هیچ نتیجه ای یافت نشد', 'Hasil carian tidak dijumpai', 'કોઈ શોધ પરિણામ મળ્યું નથી', 'Nie znaleziono wyników wyszukiwania', 'Не знайдено результатів пошуку', 'ਕੋਈ ਖੋਜ ਨਤੀਜਾ ਨਹੀਂ ਮਿਲਿਆ', 'Nu a fost găsit niciun rezultat al căutării', 'A ko ri abajade wiwa', 'Babu sakamakon bincike'),
(1008, 'search_result_found', 'Search result found', 'অনুসন্ধানের ফলাফল পাওয়া গেছে', 'Resultado de búsqueda encontrado', 'تم العثور على نتيجة البحث', 'खोज परिणाम मिला', 'تلاش کا نتیجہ ملا', '找到搜索结果', '検索結果が見つかりました', 'Resultado da pesquisa encontrado', 'Результат поиска найден', 'Résultat de recherche trouvé', '검색 결과를 찾았습니다', 'Suchergebnis gefunden', 'Risultato della ricerca trovato', 'พบผลการค้นหา', 'Talált keresési eredmény', 'Zoekresultaat gevonden', 'Quaerentis refert found', 'Hasil pencarian ditemukan', 'Arama sonucu bulundu', 'Βρέθηκε το αποτέλεσμα αναζήτησης', 'نتیجه جستجو یافت شد', 'Hasil carian dijumpai', 'શોધ પરિણામ મળ્યું', 'Znaleziono wynik wyszukiwania', 'Знайдено результат пошуку', 'ਖੋਜ ਨਤੀਜਾ ਮਿਲਿਆ', 'Rezultatul căutării a fost găsit', 'Wa abajade wiwa', 'An samo sakamakon nema'),
(1010, 'delete_student_of_this_guardian', 'Delete Student of this Guardian', 'এই অভিভাবকের ছাত্র মুছুন', 'Eliminar estudiante de esta tutora', 'حذف الطالب من هذا الوصي', 'इस अभिभावक के छात्र को हटाएँ', 'اس سرپرست کے طالب علم کو حذف کریں', '删除该监护人的学生', 'この保護者の生徒を削除', 'Excluir aluno deste responsável', 'Удалить ученика этого хранителя', 'Supprimer l\'élève de ce gardien', '이 보호자의 학생 삭제', 'Schüler dieses Wächters löschen', 'Elimina Student of this Guardian', 'ลบนักเรียนของการ์เดี้ยนนี้', 'Törölje a gyám hallgatóját', 'Leerling van deze voogd verwijderen', 'Delete Discipulus autem huius custodis', 'Hapus Siswa dari Wali ini', 'Bu Vasinin Öğrencisini Sil', 'Διαγραφή μαθητή αυτού του κηδεμόνα', 'دانشجو این نگهبان را حذف کنید', 'Padamkan Pelajar Penjaga ini', 'આ વાલીનો વિદ્યાર્થી કા Deleteી નાખો', 'Usuń ucznia tego opiekuna', 'Видалити студента цього Опікуна', 'ਇਸ ਸਰਪ੍ਰਸਤ ਦੇ ਵਿਦਿਆਰਥੀ ਨੂੰ ਮਿਟਾਓ', 'Ștergeți studentul acestui tutore', 'Pa ọmọ ile-iwe ti Olutọju yii', 'Share Dalibin wannan jami’in'),
(1011, 'this_student_have_unpaid_invoice', 'This Student have unpaid Invoice', 'এই শিক্ষার্থীর অপরিশোধিত চালান রয়েছে', 'Este estudiante tiene factura sin pagar', 'هذا الطالب لديه فاتورة غير مدفوعة', 'इस छात्र के पास अवैतनिक चालान है', 'اس طالب علم کے پاس بلا معاوضہ انوائس ہے', '该学生有未付款的发票', 'この学生は未払いの請求書を持っています', 'Este aluno recebeu uma fatura não paga', 'Этот студент имеет неоплаченный счет', 'Cet étudiant a une facture impayée', '이 학생에게는 미지급 인보이스가 있습니다', 'Dieser Student hat eine unbezahlte Rechnung', 'Questo studente ha fattura non pagata', 'นักเรียนคนนี้มีใบแจ้งหนี้ที่ยังไม่ได้ชำระ', 'Ennek a hallgatónak fizetetlen számlája van', 'Deze student heeft een onbetaalde factuur', 'Discipulus Hoc non est constitutus enim cautionem', 'Siswa ini memiliki Faktur yang belum dibayar', 'Bu Öğrencinin ödenmemiş Faturası var', 'Αυτός ο μαθητής έχει απλήρωτο τιμολόγιο', 'این دانشجو دارای فاکتور پرداخت نشده است', 'Pelajar ini mempunyai Invois yang belum dibayar', 'આ વિદ્યાર્થી પાસે અવેતન ચૂકવણી છે', 'Ten uczeń ma niezapłaconą fakturę', 'Цей студент має неоплачені рахунки-фактури', 'ਇਸ ਵਿਦਿਆਰਥੀ ਦਾ ਅਦਾਇਗੀ ਚਲਾਨ ਹੈ', 'Acest student are factură neplătită', 'Omo ile-iwe yii ni Invoice isanwo-ọja', 'Wannan Dalibin yana da Invoice wanda ba\'a biya kudi ba'),
(1013, 'hi', 'Hi', 'ওহে', 'Hola', 'مرحبا', 'नमस्ते', 'ہائے', '你好', 'こんにちは', 'Oi', 'Привет', 'salut', '안녕', 'Hallo', 'Ciao', 'สวัสดี', 'Szia', 'Hoi', 'Salve', 'Hai', 'Selam', 'γεια', 'سلام', 'Hai', 'હાય', 'cześć', 'Привіт', 'ਹਾਇ', 'Salut', 'Bawo', 'Barka dai'),
(1014, 'for', 'For', 'জন্য', 'por', 'إلى عن على', 'के लिये', 'کے لئے', '对于', 'ために', 'Para', 'За', 'Pour', '에 대한', 'Zum', 'Per', 'สำหรับ', 'mert', 'Voor', 'quia', 'Untuk', 'İçin', 'Για', 'برای', 'Untuk', 'માટે', 'Dla', 'Для', 'ਲਈ', 'Pentru', 'Fun', 'Don'),
(1015, 'thank_you', 'Thank you', 'ধন্যবাদ', 'Gracias', 'شكرا لك', 'धन्यवाद', 'شکریہ', '谢谢', 'ありがとうございました', 'Obrigado', 'Спасибо', 'Je vous remercie', '감사합니다', 'Vielen Dank', 'Grazie', 'ขอขอบคุณ', 'Köszönöm', 'Dank u', 'Gratias tibi', 'Terima kasih', 'teşekkür ederim', 'Ευχαριστώ', 'متشکرم', 'Terima kasih', 'આભાર', 'Dziękuję Ci', 'Дякую', 'ਤੁਹਾਡਾ ਧੰਨਵਾਦ', 'Mulțumesc', 'e dupe', 'na gode'),
(1016, 'following_is_your_login_credential', 'Following is your login credential', 'নিম্নলিখিত আপনার লগইন ক্রেডেনশিয়াল', 'La siguiente es su credencial de inicio de sesión', 'فيما يلي بيانات اعتماد تسجيل الدخول الخاصة بك', 'इसके बाद आपका लॉगिन क्रेडेंशियल है', 'مندرجہ ذیل آپ کے لاگ ان کی سند ہے', '以下是您的登录凭证', '以下はログイン認証情報です', 'A seguir está sua credencial de login', 'Ниже приведены ваши учетные данные', 'Voici vos informations de connexion', '다음은 로그인 자격 증명입니다', 'Im Folgenden finden Sie Ihre Anmeldeinformationen', 'Di seguito sono riportate le credenziali di accesso', 'ต่อไปนี้เป็นข้อมูลรับรองการเข้าสู่ระบบของคุณ', 'Az alábbiakban bemutatjuk a bejelentkezési adatait', 'Hieronder volgt uw inloggegevens', 'Post vestri login MANDATUM', 'Berikut ini adalah kredensial masuk Anda', 'Giriş bilgileriniz aşağıdadır', 'Ακολουθεί το διαπιστευτήριο σύνδεσης', 'در زیر اعتبار ورود به سیستم است', 'Berikut adalah kelayakan log masuk anda', 'તમારું લ yourગિન ઓળખપત્ર નીચે આપેલ છે', 'Poniżej znajduje się twoje dane logowania', 'Далі йде ваш обліковий запис для входу', 'ਹੇਠਾਂ ਤੁਹਾਡਾ ਲੌਗਇਨ ਪ੍ਰਮਾਣ ਪੱਤਰ ਹੈ', 'Urmează datele de autentificare', 'Atẹle ni ẹri iwọle rẹ', 'Mai biye shine shaidar shiga'),
(1017, 'to_reset_password', 'To reset your password plese click following url', 'আপনার পাসওয়ার্ড পুনরায় সেট করতে, দয়া করে নিম্নলিখিত url ক্লিক করুন', 'Para restablecer su contraseña, haga clic en la siguiente URL', 'لإعادة تعيين كلمة المرور الخاصة بك ، انقر فوق عنوان url التالي', 'अपना पासवर्ड रीसेट करने के लिए यूआरएल पर क्लिक करें', 'اپنے پاس ورڈ کی درخواست کو دوبارہ ترتیب دینے کے لئے درج ذیل یو آر ایل پر کلک کریں', '要重置密码，请点击以下网址', 'パスワードをリセットするには、次のURLをクリックしてください。', 'Para redefinir sua senha, clique no seguinte URL', 'Чтобы сбросить пароль, пожалуйста, нажмите следующий URL', 'Pour réinitialiser votre mot de passe, cliquez sur l\'URL suivante', '비밀번호를 재설정하려면 다음 URL을 클릭하십시오.', 'Um Ihr Passwort zurückzusetzen, klicken Sie bitte auf folgende URL', 'Per reimpostare la password, fare clic sul seguente URL', 'ในการรีเซ็ตรหัสผ่านของคุณ โปรดคลิกติดตาม url', 'A jelszó visszaállításához kattintson a következő URL-re', 'Klik op de volgende url om uw wachtwoord opnieuw in te stellen', 'Ut reset vestri password placere click sequenti URL', 'Untuk mengatur ulang kata sandi Anda, klik url berikut', 'Parolanızı sıfırlamak için aşağıdaki URL\'yi tıklayın', 'Για να επαναφέρετε τον κωδικό πρόσβασής σας, κάντε κλικ στο ακόλουθο url', 'برای تنظیم مجدد کلمه عبور خود ، روی آدرس اینترنتی زیر کلیک کنید', 'Untuk menetapkan semula kata laluan anda, sila klik url berikut', 'તમારો પાસવર્ડ ફરીથી સેટ કરવા માટે નીચે આપેલ url ને ક્લિક કરો', 'Aby zresetować hasło, kliknij następujący adres URL', 'Щоб скинути пароль, натисніть наступну URL-адресу', 'ਆਪਣੇ ਪਾਸਵਰਡ ਦੀ ਪੁਸ਼ਟੀ ਕਰਨ ਲਈ ਹੇਠਾਂ ਦਿੱਤੇ url ਤੇ ਕਲਿਕ ਕਰੋ', 'Pentru a reseta parola, faceți clic pe următorul URL', 'Lati ṣatunṣe ọrọ igbaniwọle ọrọ igbaniwọle tẹ atẹle url', 'Don sake saita kalmar izinin shiga danna latsa url'),
(1018, 'if_not_request_just_ignore', 'If you did not request to reset your password, Please ignore this email', 'আপনি যদি নিজের পাসওয়ার্ডটি পুনরায় সেট করার অনুরোধ না করেন তবে দয়া করে এই ইমেলটি উপেক্ষা করুন', 'Si no solicitó restablecer su contraseña, Plesae ignorará este correo electrónico', 'إذا لم تطلب إعادة تعيين كلمة المرور الخاصة بك ، فتجاهل Plesae هذا البريد الإلكتروني', 'यदि आपने अपना पासवर्ड रीसेट करने का अनुरोध नहीं किया है, तो इस ईमेल को नजरअंदाज करें', 'اگر آپ نے اپنا پاس ورڈ دوبارہ ترتیب دینے کی درخواست نہیں کی تو پلیسی نے اس ای میل کو نظر انداز کردیا', '如果您不要求重设密码，Plesae将忽略此电子邮件', 'パスワードのリセットをリクエストしていない場合、Plesaeはこのメールを無視します', 'Se você não solicitou a redefinição de sua senha, ignore este e-mail.', 'Если вы не просили сбросить пароль, Plesae игнорирует это письмо', 'Si vous n\'avez pas demandé à réinitialiser votre mot de passe, Plesae ignore cet e-mail', '비밀번호 재설정을 요청하지 않은 경우 Plesae는이 이메일을 무시합니다.', 'Wenn Sie nicht aufgefordert haben, Ihr Passwort zurückzusetzen, ignoriert Plesae diese E-Mail', 'Se non hai richiesto di reimpostare la password, Plesae ignora questa email', 'หากคุณไม่ได้ร้องขอให้รีเซ็ตรหัสผ่านของคุณ โปรดอย่าสนใจอีเมลนี้', 'Ha nem kérte a jelszó visszaállítását, a Plesae figyelmen kívül hagyja ezt az e-mailt', 'Als je niet hebt gevraagd om je wachtwoord opnieuw in te stellen, negeert Plesae deze e-mail', 'f petentibus non reset vestri password huic inscriptioni ignorare Plesae', 'Jika Anda tidak meminta untuk mereset kata sandi Anda, Abaikan email ini', 'Şifrenizi sıfırlamayı istemediyseniz, lütfen bu e-postayı dikkate almayın', 'Εάν δεν ζητήσατε να επαναφέρετε τον κωδικό πρόσβασής σας, αγνοήστε αυτό το μήνυμα ηλεκτρονικού ταχυδρομείου', 'اگر درخواست تنظیم مجدد رمز ورود خود را نکردید ، لطفاً این ایمیل را نادیده بگیرید', 'Sekiranya anda tidak meminta untuk menetapkan semula kata laluan anda, abaikan e-mel ini', 'જો તમે તમારો પાસવર્ડ ફરીથી સેટ કરવાની વિનંતી કરી નથી, તો કૃપા કરીને આ ઇમેઇલને અવગણો', 'Jeśli nie poprosiłeś o zresetowanie hasła, zignoruj ten e-mail', 'Якщо ви не просили скинути свій пароль, проігноруйте цей електронний лист', 'ਜੇ ਤੁਸੀਂ ਆਪਣਾ ਪਾਸਵਰਡ ਰੀਸੈਟ ਕਰਨ ਦੀ ਬੇਨਤੀ ਨਹੀਂ ਕੀਤੀ, ਤਾਂ ਕਿਰਪਾ ਕਰਕੇ ਇਸ ਈਮੇਲ ਨੂੰ ਨਜ਼ਰਅੰਦਾਜ਼ ਕਰੋ', 'Dacă nu ați solicitat să vă resetați parola, ignorați acest e-mail', 'Ti o ko ba beere lati tun ọrọ igbaniwọle rẹ pada, Jọwọ foju imeeli yii', 'Idan bakayi buƙatar sake saita kalmar wucewa ba, Da fatan za a kula da wannan imel ɗin'),
(1019, 'you_have_a_assignment_submission', 'You have a assignment submission from the following student.', 'আপনার নিম্নলিখিত শিক্ষার্থীর কাছ থেকে একটি এসাইনমেন্ট জমা রয়েছে।', 'Tiene una presentación de tarea del siguiente estudiante.', 'لديك تقديم مهمة من الطالب التالي.', 'आपके पास निम्नलिखित छात्र से एक असाइनमेंट जमा है।', 'آپ کے پاس مندرجہ ذیل طالب علم کی طرف سے ایک اسائنمنٹیشن جمع کروانا ہے۔', '您有以下学生提交的作业。', '次の学生からの課題提出があります。', 'Você tem um envio de tarefa do aluno a seguir.', 'У вас есть задание от следующего студента.', 'Vous avez une soumission de travail de l\'étudiant suivant.', '다음 학생의 과제 제출물이 있습니다.', 'Sie haben eine Aufgabenübermittlung vom folgenden Schüler.', 'Hai un compito inviato dal seguente studente.', 'คุณมีการส่งงานจากนักเรียนต่อไปนี้', 'A következő hallgató benyújtja a megbízás benyújtását.', 'Je hebt een opdrachtinzending van de volgende student.', 'Sit tibi munus ab obsequio haec discipulus.', 'Anda memiliki pengajuan tugas dari siswa berikut.', 'Aşağıdaki öğrenciden ödev teslimi var.', 'Έχετε μια υποβολή εργασίας από τον ακόλουθο μαθητή.', 'شما از دانش آموز زیر یک ارسال تکلیف دارید.', 'Anda mempunyai penghantaran tugasan dari pelajar berikut.', 'તમારી પાસે નીચેના વિદ્યાર્થી તરફથી એક સોંપણી સબમિશન છે.', 'Przesłano zadanie od następującego ucznia.', 'У вас є подання завдання від наступного студента.', 'ਤੁਹਾਡੇ ਕੋਲ ਹੇਠਾਂ ਦਿੱਤੇ ਵਿਦਿਆਰਥੀ ਦੁਆਰਾ ਇਕ ਅਸਾਈਨਮੈਂਟ ਸਬਮਿਸ਼ਨ ਹੈ.', 'Aveți o trimitere de sarcini de la următorul student.', 'O ni ifakalẹ iṣẹ iyansilẹ lati ọmọ ile-iwe atẹle.', 'Kuna da ƙaddamar da aiki daga ɗalibin da ke biye.'),
(1023, 'live_class', 'Live Class', 'লাইভ ক্লাস', 'Clase en vivo', 'فئة حية', 'लाइव क्लास', 'براہ راست کلاس', '现场课', 'ライブクラス', 'Live Class', 'Живой класс', 'Cours en direct', '라이브 클래스', 'Live-Klasse', 'Classe dal vivo', 'คลาสสด', 'Élő osztály', 'Live klasse', 'Vivamus Paleonemertea Class', 'Kelas Langsung', 'Canlı Sınıf', 'Ζωντανή τάξη', 'کلاس زنده', 'Kelas Langsung', 'જીવંત વર્ગ', 'Klasa na żywo', 'Живий клас', 'ਲਾਈਵ ਕਲਾਸ', 'Clasa live', 'Kilasi Live', 'Class'),
(1024, 'manage_live_class', 'Manage Live Class', 'লাইভ ক্লাস পরিচালনা করুন', 'Administrar clase en vivo', 'إدارة Live Class', 'लाइव क्लास का प्रबंधन करें', 'لائیو کلاس انتظام کریں', '管理现场课堂', 'ライブクラスの管理', 'Gerenciar classe ao vivo', 'Управлять живым классом', 'Gérer les cours en direct', '라이브 클래스 관리', 'Live-Klasse verwalten', 'Gestisci la lezione dal vivo', 'จัดการคลาสสด', 'Kezelje az élő osztályt', 'Beheer Live Class', 'Curo vive Paleonemertea Class', 'Kelola Kelas Langsung', 'Canlı Sınıfı Yönet', 'Διαχείριση ζωντανής τάξης', 'کلاس زنده را مدیریت کنید', 'Urus Kelas Langsung', 'લાઇવ ક્લાસ મેનેજ કરો', 'Zarządzaj klasą na żywo', 'Управління живим класом', 'ਲਾਈਵ ਕਲਾਸ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați clasa live', 'Ṣakoso kilasi Kilasi', 'Sarrafa Class Class'),
(1025, 'class_date', 'Class Date', 'ক্লাসের তারিখ', 'Fecha de clase', 'تاريخ الفصل', 'कक्षा की तारीख', 'کلاس کی تاریخ', '上课日期', 'クラス日付', 'Data da turma', 'Дата урока', 'Date du cours', '수업 날짜', 'Klassendatum', 'Data della classe', 'วันที่เรียน', 'Osztály dátuma', 'Klasse Datum', 'classis Date', 'Tanggal Kelas', 'Sınıf Tarihi', 'Ημερομηνία τάξης', 'تاریخ کلاس', 'Tarikh Kelas', 'વર્ગ તારીખ', 'Data zajęć', 'Дата заняття', 'ਕਲਾਸ ਦੀ ਤਾਰੀਖ', 'Data clasei', 'Ọjọ Kilasi', 'Kwanan Kwana'),
(1026, 'meeting_id', 'Meeting ID', 'মিটিং আইডি', 'ID de la reunión', 'معرف الاجتماع', 'बैठक आईडी', 'میٹنگ کی شناخت', '会议编号', '会議ID', 'ID da reunião', 'ID встречи', 'ID de réunion', '회의 ID', 'Konferenz-ID', 'ID riunione', 'รหัสการประชุม', 'Találkozóazonosító', 'Meeting ID', 'id testimonii', 'ID Rapat', 'Toplantı kimliği', 'Αναγνωριστικό σύσκεψης', 'شناسه جلسه', 'ID Mesyuarat', 'મીટિંગ આઈડી', 'Identyfikator spotkania', 'Ідентифікатор наради', 'ਮੀਟਿੰਗ ID', 'ID-ul ședinței', 'ID ipade', 'ID gamuwa'),
(1027, 'meeting_password', 'Meeting Password', 'মিটিং পাসওয়ার্ড', 'Contraseña de reunión', 'كلمة مرور الاجتماع', 'बैठक का पासवर्ड', 'میٹنگ پاس ورڈ', '会议密码', '会議パスワード', 'Senha da Reunião', 'Пароль встречи', 'Mot de passe de réunion', '회의 비밀번호', 'Meeting-Passwort', 'Riunione password', 'รหัสผ่านการประชุม', 'Találkozó jelszava', 'Wachtwoord voor vergadering', 'Password testimonii', 'Kata Sandi Rapat', 'Toplantı Şifresi', 'Κωδικός συνάντησης', 'رمز عبور', 'Kata Laluan Mesyuarat', 'મીટિંગ પાસવર્ડ', 'Hasło spotkania', 'Пароль зустрічі', 'ਮੁਲਾਕਾਤ ਪਾਸਵਰਡ', 'Parola de întâlnire', 'Ọrọ igbaniwọle Ipade', 'Kalmar wucewa'),
(1028, 'join_class', 'Join Class', 'ক্লাসে যোগদান করুন', 'Unirse a clase', 'انضم إلى الفصل الدراسي', 'कक्षा में शामिल हों', 'کلاس میں شامل ہوں', '参加课程', 'クラスに参加', 'Participar da aula', 'Присоединиться к классу', 'Rejoignez la classe', '수업 참여', 'Klasse beitreten', 'Unisciti alla classe', 'เข้าร่วมชั้นเรียน', 'Csatlakozzon az osztályhoz', 'Word lid van de klas', 'iungere Paleonemertea Class', 'Bergabunglah dengan Kelas', 'Sınıfa Katılın', 'Εγγραφείτε στην τάξη', 'به کلاس بپیوندید', 'Sertailah Kelas', 'વર્ગ જોડાઓ', 'Dołącz do klasy', 'Приєднуйтесь до класу', 'ਕਲਾਸ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ', 'Alăturați-vă clasei', 'Darapọ mọ Kilasi', 'Hada Class'),
(1029, 'host_class', 'Host Class', 'হোস্ট ক্লাস', 'Clase de anfitrión', 'فئة المضيف', 'मेजबान वर्ग', 'میزبان کلاس', '主机类', 'ホストクラス', 'Classe Host', 'Host Class', 'Classe hôte', '호스트 클래스', 'Host-Klasse', 'Classe host', 'โฮสต์คลาส', 'Host osztály', 'Hostklasse', 'exercitum Paleonemertea Class', 'Kelas Tuan Rumah', 'Ana Bilgisayar Sınıfı', 'Κατηγορία υποδοχής', 'کلاس میزبان', 'Kelas Tuan Rumah', 'યજમાન વર્ગ', 'Klasa gospodarza', 'Хост-клас', 'ਹੋਸਟ ਕਲਾਸ', 'Clasa de gazdă', 'Alejo Gbalejo', 'Mai watsa shiri Class'),
(1030, 'live', 'Live', 'লাইভ', 'En Vivo', 'حي', 'लाइव', 'جیو', '生活', '住む', 'Viver', 'Жить', 'Vivre', '라이브', 'Leben', 'Vivere', 'มีชีวิต', 'Élő', 'Leven', 'vivet', 'Hidup', 'Canlı', 'Ζω', 'زنده', 'Langsung', 'જીવંત', 'Relacja na żywo', 'Наживо', 'ਜੀ', 'Trăi', 'Gbe', 'Rayuwa'),
(1031, 'send_notification', 'Send Notification', 'সেন্ড নোটিফিকেশন', 'Enviar notificación', 'إرسال إشعار', 'अधिसूचना भेजें', 'اطلاع بھیجیں', '发送通知', '通知を送信', 'Enviar notificação', 'Отправить уведомление', 'Envoyer une notification', '알림 보내기', 'Benachrichtigung senden', 'Invia notifica', 'ส่งการแจ้งเตือน', 'Értesítés küldése', 'Melding verzenden', 'mittito', 'Kirim Pemberitahuan', 'Bildirim Gönder', 'Αποστολή ειδοποίησης', 'ارسال اعلان', 'Hantar Pemberitahuan', 'સૂચના મોકલો', 'Wyślij powiadomienie', 'Надіслати повідомлення', 'ਨੋਟੀਫਿਕੇਸ਼ਨ ਭੇਜੋ', 'Trimiteți notificare', 'Firanṣẹ Ifiranṣẹ', 'Aika Sanarwa'),
(1032, 'zoom_api_key', 'Zoom Api Key', 'জুম এপিআই কী', 'Zoom Api Key', 'تكبير مفتاح Api', 'झूम आपी की', 'زوم آپی کی', '缩放Api键', 'ズームAPIキー', 'Zoom Api Key', 'Zoom Api Key', 'Zoom Api Key', '줌 API 키', 'Zoom Api Key', 'Tasto Zoom Api', 'ปุ่ม Zoom Api', 'Zoom Api Key', 'Zoom Api Key', 'API key Romani Zoom', 'Tombol Zoom Api', 'Zoom Api Anahtarı', 'Πλήκτρο ζουμ Api', 'بزرگنمایی کلید API', 'Zum Api Kekunci', 'ઝૂમ અપિ કી', 'Zoom Api Key', 'Кнопка масштабування Api', 'ਜ਼ੂਮ ਆਪਿ ਕੀ', 'Zoom cheie Api', 'Sun-un Api bọtini', 'Matsa Api Key'),
(1033, 'zoom_secret', 'Zoom Secret', 'জুম সিক্রেট', 'Zoom secreto', 'Zoom Secret', 'ज़ूम सीक्रेट', 'زوم راز', '变焦秘密', 'ズームシークレット', 'Zoom Secret', 'Увеличить секрет', 'Zoom secret', '줌 비밀', 'Zoom Secret', 'Zoom segreto', 'ซูมความลับ', 'Titkos zoom', 'Zoom geheim', 'Secret Romani Zoom', 'Rahasia Zoom', 'Gizli Sır', 'Zoom Secret', 'راز بزرگنمایی', 'Zum Rahsia', 'ઝૂમ સિક્રેટ', 'Zoom Secret', 'Збільшити секрет', 'ਜ਼ੂਮ ਸੀਕ੍ਰੇਟ', 'Secretul Zoom-ului', 'Asiri Sisun', 'Sirrin zuƙowa'),
(1034, 'following_is_your_live_class_schedule', 'Following is your live class schedule', 'আপনার লাইভ ক্লাসের শিডিউলটি নীচে দেওয়া হয়েছে', 'El siguiente es su horario de clases en vivo', 'فيما يلي جدول الحصص الحية الخاصة بك', 'निम्नलिखित आपके लाइव क्लास का कार्यक्रम है', 'آپ کا رواں طبقاتی شیڈول مندرجہ ذیل ہے', '以下是您的现场课程表', '以下はあなたのライブクラススケジュールです', 'A seguir, é o seu horário de aula ao vivo', 'Следуйте вашему расписанию в прямом эфире', 'Voici votre horaire de cours en direct', '다음은 라이브 수업 일정입니다', 'Im Folgenden finden Sie Ihren Stundenplan', 'Di seguito è riportato l\'orario delle lezioni dal vivo', 'ต่อไปนี้เป็นตารางเรียนสดของคุณ', 'Az alábbiakban látható az élő óráid', 'Hieronder volgt je live lesrooster', 'Post Vivamus sit amet genus schedule', 'Berikut ini adalah jadwal kelas live Anda', 'Canlı ders programınız aşağıdadır', 'Ακολουθεί το πρόγραμμα ζωντανών μαθημάτων', 'برنامه زیر کلاس زندگی شما است', 'Berikut adalah jadual kelas langsung anda', 'તમારું લાઇવ ક્લાસ શેડ્યૂલ નીચે મુજબ છે', 'Oto harmonogram zajęć na żywo', 'Далі йде ваш графік живих занять', 'ਹੇਠਾਂ ਤੁਹਾਡਾ ਲਾਈਵ ਕਲਾਸ ਸ਼ਡਿ .ਲ ਹੈ', 'Urmează programul clasei tale live', 'Atẹle ni iṣeto kilasi kilasi rẹ', 'Mai biyo baya shine tsarin karatun ku na yau da kullun'),
(1035, 'following_is_your_child_live_class_schedule', 'Following is your child live class schedule', 'আপনার সন্তানের লাইভ ক্লাসের সময়সূচীটি নিম্নলিখিত', 'El siguiente es el horario de clases en vivo de su hijo', 'فيما يلي الجدول الزمني لطفلك الحي', 'निम्नलिखित आपके बच्चे का लाइव क्लास शेड्यूल है', 'آپ کے بچے کا براہ راست کلاس شیڈول مندرجہ ذیل ہے', '以下是您的孩子的现场课程表', '以下はあなたの子供のライブクラススケジュールです', 'A seguir está o horário das aulas ao vivo do seu filho', 'Ниже приводится расписание занятий вашего ребенка', 'Voici l\'horaire des cours en direct de votre enfant', '다음은 자녀의 라이브 수업 일정입니다', 'Im Folgenden finden Sie den Stundenplan für Ihr Kind', 'Di seguito è riportato il programma delle lezioni dal vivo di tuo figlio', 'ต่อไปนี้เป็นตารางเรียนสดของบุตรหลานของคุณ', 'Az alábbiakban látható a gyermek élő órája', 'Hieronder volgt het live lesschema van uw kind', 'Post puer est vivere genus schedule', 'Berikut ini adalah jadwal kelas langsung anak Anda', 'Çocuğunuzun canlı sınıf programı aşağıdadır', 'Ακολουθεί το πρόγραμμα ζωντανής τάξης του παιδιού σας', 'جدول زیر برنامه کلاس زندگی کودک شما است', 'Berikut adalah jadual kelas langsung anak anda', 'તમારા બાળકનું લાઇવ ક્લાસ શેડ્યૂલ નીચે મુજબ છે', 'Oto harmonogram zajęć na żywo dla Twojego dziecka', 'Далі йде розклад живих занять у вашої дитини', 'ਤੁਹਾਡੇ ਬੱਚੇ ਦਾ ਲਾਈਵ ਕਲਾਸ ਦਾ ਸਮਾਂ-ਸਾਰਣੀ ਹੇਠਾਂ ਦਿੱਤਾ ਹੈ', 'Urmează programul clasei în direct pentru copii', 'Atẹle ni iṣeto kilasi laaye ọmọ rẹ', 'Mai zuwa shine jadawalin aji na rayuwar yaran ku'),
(1036, 'live_class_type', 'Live Class Type', 'লাইভ ক্লাস টাইপ', 'Tipo de clase en vivo', 'نوع الفصل المباشر', 'लाइव क्लास टाइप', 'براہ راست کلاس کی قسم', '現場課堂類型', 'ライブクラスタイプ', 'Tipo de classe ao vivo', 'Тип Живого Класса', 'Type de cours en direct', '라이브 클래스 유형', 'Live-Klassentyp', 'Tipo di lezione dal vivo', 'ประเภทคลาสสด', 'Élő osztály típusa', 'Live klassetype', 'Vivamus Type Paleonemertea Class', 'Jenis Kelas Langsung', 'Canlı Sınıf Tipi', 'Τύπος ζωντανής τάξης', 'نوع کلاس زنده', 'Jenis Kelas Langsung', 'જીવંત વર્ગ પ્રકાર', 'Typ klasy na żywo', 'Тип живого класу', 'ਲਾਈਵ ਕਲਾਸ ਦੀ ਕਿਸਮ', 'Tip de clasă în direct', 'Iru Class', 'Nauin Kiran Kira'),
(1199, 'lesson', 'Lesson', 'পাঠ', 'Lección', 'درس', 'सबक', 'استعمال کیا جاتا ہے', '课', 'レッスン', 'Lição', 'Урок', 'Cours', '수업', 'Lektion', 'Lezione', 'บทเรียนหรือสอนหรือการเรียนและเครื่องเตือนสติ', 'Lecke', 'Les', 'Lectio', 'Pelajaran', 'Ders', 'Μάθημα', 'درس', 'pelajaran', 'પાઠ', 'Lekcja', 'Урок', 'ਪਾਠ', 'Lecţie', 'Ikẹkọ', 'Darasi'),
(1200, 'topic', 'Topic', 'বিষয়', 'Tema', 'عنوان', 'विषय', 'موضوع', '话题', 'トピック', 'Tema', 'Тема', 'Sujette', '주제', 'Thema', 'Argomento', 'หัวข้อ', 'Téma', 'Onderwerp', 'Topic', 'Tema', 'Başlık', 'Θέμα', 'موضوع', 'Topik', 'વિષય', 'Temat', 'Тема', 'ਵਿਸ਼ਾ', 'Subiect', 'Akọle', 'Taken'),
(1201, 'lesson_plan', 'Lesson Plan', 'পাঠ পরিকল্পনা', 'Plan de estudios', 'خطة الدرس', 'पाठ योजना', 'سبق کی منصوبہ بندی', '课程计划', 'レッスンプラン', 'Plano de aula', 'План урока', 'Plan de cours', '강의 계획', 'Unterrichtsplan', 'Piano della lezione', 'แผนการเรียน', 'Tanterv', 'Lesplan', 'Lectio Plan', 'Rencana belajar', 'Ders planı', 'Πλάνο μαθήματος', 'طرح درس', 'Pelan pembelajaran', 'પાઠ ની યોજના', 'Plan lekcji', 'План уроку', 'ਪਾਠ ਯੋਜਨਾ', 'Planul lecției', 'Eto ẹkọ', 'Shirin Darasi'),
(1202, 'lesson_time_line', 'Lesson Timeline', 'পাঠের সময়রেখা', 'Cronograma de la lección', 'الجدول الزمني للدرس', 'पाठ समयरेखा', 'سبق کی ٹائم لائن', '课程时间表', 'レッスンのタイムライン', 'Linha do tempo da aula', 'Хронология урока', 'Chronologie de la leçon', '수업 일정', 'Stundenleiste der Lektion', 'Cronologia della lezione', 'เส้นเวลาของบทเรียน', 'Lecke idővonal', 'Lestijdlijn', 'Lectio Timeline', 'Jadwal Pelajaran', 'Ders Zaman Çizelgesi', 'Χρονοδιάγραμμα μαθήματος', 'جدول زمانی درس', 'Garis Masa Pelajaran', 'પાઠ સમયરેખા', 'Oś czasu lekcji', 'Хронологія уроку', 'ਪਾਠ ਦੀ ਸਮਾਂਰੇਖਾ', 'Cronologia lecției', 'Ilana Ago ẹkọ', 'Tsawon Lokaci'),
(1203, 'lesson_status', 'Lesson Status', 'পাঠের অবস্থা', 'Estado de la lección', 'حالة الدرس', 'पाठ की स्थिति', 'سبق کی حیثیت', '课程状态', 'レッスンステータス', 'Status da aula', 'Статус урока', 'Statut de la leçon', '수업 상태', 'Unterrichtsstatus', 'Stato della lezione', 'สถานะบทเรียน', 'Lecke állapota', 'Lesstatus', 'Lectio Status', 'Status Pelajaran', 'Ders Durumu', 'Κατάσταση μαθήματος', 'وضعیت درس', 'Status Pelajaran', 'પાઠ સ્થિતિ', 'Stan lekcji', 'Статус уроку', 'ਪਾਠ ਸਥਿਤੀ', 'Starea lecției', 'Ipo Ẹkọ', 'Matsayin Darasi'),
(1204, 'manage_lesson', 'Manage Lesson', 'পাঠ পরিচালনা করুন', 'Administrar lección', 'إدارة الدرس', 'पाठ प्रबंधित करें', 'سبق کا نظم کریں۔', '管理课程', 'レッスンの管理', 'Gerenciar Aula', 'Управлять уроком', 'Gérer la leçon', '수업 관리', 'Lektion verwalten', 'Gestisci lezione', 'จัดการบทเรียน', 'Lecke kezelése', 'Les beheren', 'Curo Lectio', 'Kelola Pelajaran', 'Dersi Yönet', 'Διαχείριση μαθήματος', 'مدیریت درس', 'Uruskan Pelajaran', 'પાઠ મેનેજ કરો', 'Zarządzaj lekcją', 'Керувати уроком', 'ਪਾਠ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează lecția', 'Ṣakoso Ẹkọ', 'Sarrafa Darasi'),
(1205, 'manage_topic', 'Manage Topic', 'বিষয় পরিচালনা করুন', 'Administrar tema', 'إدارة الموضوع', 'विषय प्रबंधित करें', 'موضوع کا نظم کریں۔', '管理话题', 'トピックの管理', 'Gerenciar Tópico', 'Управление темой', 'Gérer le sujet', '주제 관리', 'Thema verwalten', 'Gestisci argomento', 'จัดการหัวข้อ', 'Téma kezelése', 'Onderwerp beheren', 'Curo Topic', 'Kelola Topik', 'Konuyu Yönet', 'Διαχείριση θέματος', 'موضوع را مدیریت کنید', 'Urus Topik', 'વિષયનું સંચાલન કરો', 'Zarządzaj tematem', 'Керувати темою', 'ਵਿਸ਼ੇ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați subiectul', 'Ṣakoso Koko-ọrọ', 'Sarrafa Taken'),
(1206, 'manage_lesson_plan', 'Manage Lesson Plan', 'পাঠ পরিকল্পনা পরিচালনা করুন', 'Gestionar plan de lecciones', 'إدارة خطة الدرس', 'पाठ योजना प्रबंधित करें', 'سبق کے منصوبے کا نظم کریں۔', '管理课程计划', 'レッスンプランの管理', 'Gerenciar plano de aula', 'Управление планом урока', 'Gérer le plan de cours', '수업 계획 관리', 'Unterrichtsplan verwalten', 'Gestisci il piano delle lezioni', 'จัดการแผนการสอน', 'Óraterv kezelése', 'Lesplan beheren', 'Curo Lectio Plan', 'Kelola Rencana Pelajaran', 'Ders Planını Yönet', 'Διαχείριση σχεδίου μαθήματος', 'مدیریت طرح درس', 'Mengurus Rancangan Pengajaran', 'પાઠ યોજનાનું સંચાલન કરો', 'Zarządzaj planem lekcji', 'Керувати планом уроку', 'ਪਾਠ ਯੋਜਨਾ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați planul de lecție', 'Ṣakoso Eto Ẹkọ', 'Sarrafa Tsarin Darasi'),
(1207, 'manage_lesson_status', 'Manage Lesson Status', 'পাঠের স্থিতি পরিচালনা করুন', 'Administrar el estado de la lección', 'إدارة حالة الدرسإدارة حالة الدرس', 'पाठ स्थिति प्रबंधित करें', 'سبق کی حیثیت کا نظم کریں۔', '管理课程状态', 'レッスンステータスの管理', 'Gerenciar o status da aula', 'Управление статусом урока', 'Gérer le statut de la leçon', '수업 상태 관리', 'Lektionsstatus verwalten', 'Gestisci lo stato della lezione', 'จัดการสถานะบทเรียน', 'Lecke állapotának kezelése', 'Lesstatus beheren', 'Curo Lectio Status', 'Kelola Status Pelajaran', 'Ders Durumunu Yönet', 'Διαχείριση κατάστασης μαθήματος', 'مدیریت وضعیت درس', 'Urus Status Pelajaran', 'પાઠ સ્થિતિ મેનેજ કરો', 'Zarządzaj stanem lekcji', 'Керування статусом уроку', 'ਪਾਠ ਸਥਿਤੀ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionați starea lecției', 'Ṣakoso Ipo Ẹkọ', 'Sarrafa Matsayin Darasi'),
(1208, 'manage_lesson_time_line', 'Manage Lesson Timeline', 'পাঠের টাইমলাইন পরিচালনা করুন', 'Administrar la línea de tiempo de la lección', 'إدارة الجدول الزمني للدرس', 'पाठ समयरेखा प्रबंधित करें', 'سبق کی ٹائم لائن کا نظم کریں۔', '管理课程时间表', 'レッスンのタイムラインを管理する', 'Gerenciar cronograma de aula', 'Управление графиком урока', 'Gérer la chronologie des cours', '수업 일정 관리', 'Stundenleiste verwalten', 'Gestisci la sequenza temporale delle lezioni', 'จัดการไทม์ไลน์ของบทเรียน', 'Lecke idővonal kezelése', 'Lestijdlijn beheren', 'Curo Lectio Timeline', 'Kelola Jadwal Pelajaran', 'Ders Zaman Çizelgesini Yönet', 'Διαχείριση χρονοδιαγράμματος μαθήματος', 'جدول زمانی درس را مدیریت کنید', 'Urus Garis Masa Pelajaran', 'પાઠ સમયરેખા મેનેજ કરો', 'Zarządzaj osią czasu lekcji', 'Керуйте хронологією уроку', 'ਪਾਠ ਸਮਾਂਰੇਖਾ ਪ੍ਰਬੰਧਿਤ ਕਰੋ', 'Gestionați cronologia lecției', 'Ṣakoso Ago Ẹkọ', 'Sarrafa Jadawalin Darasi'),
(1209, 'date_field_should_not_be_empty', 'Date Field should not be Empty', 'তারিখ খালি হওয়া উচিত নয়', 'El campo de fecha no debe estar vacío', 'يجب ألا يكون حقل التاريخ فارغًا', 'दिनांक फ़ील्ड खाली नहीं होना चाहिए', 'تاریخ کا میدان خالی نہیں ہونا چاہیے۔', '日期字段不应为空', '日付フィールドは空であってはなりません', 'O campo de data não deve estar vazio', 'Поле даты не должно быть пустым', 'Le champ de date ne doit pas être vide', '날짜 필드는 비어 있으면 안 됩니다.', 'Datumsfeld darf nicht leer sein', 'Il campo data non deve essere vuoto', 'ช่องวันที่ไม่ควรว่างเปล่า', 'A Dátum mező nem lehet üres', 'Datumveld mag niet leeg zijn', 'Date ager non inanis', 'Bidang Tanggal tidak boleh Kosong', 'Tarih Alanı Boş Bırakılmamalıdır', 'Το πεδίο ημερομηνίας δεν πρέπει να είναι κενό', 'فیلد تاریخ نباید خالی باشد', 'Medan Tarikh tidak boleh Kosong', 'તારીખ ફીલ્ડ ખાલી ન હોવી જોઈએ', 'Pole daty nie powinno być puste', 'Поле дати не повинно бути порожнім', 'ਮਿਤੀ ਖੇਤਰ ਖਾਲੀ ਨਹੀਂ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ', 'Câmpul pentru dată nu trebuie să fie gol', 'Aaye Ọjọ ko yẹ ki o jẹ Sofo', 'Filin kwanan wata bai kamata ya zama fanko ba'),
(1210, 'end_date_must_be_greater_than_start_date', 'End Date must be greater than Start Date', 'শেষ তারিখ শুরুর তারিখের চেয়ে বড় হতে হবে', 'La fecha de finalización debe ser mayor que la fecha de inicio', 'يجب أن يكون تاريخ الانتهاء أكبر من تاريخ البدء', 'समाप्ति तिथि प्रारंभ तिथि से अधिक होनी चाहिए', 'اختتامی تاریخ شروع ہونے کی تاریخ سے زیادہ ہونی چاہیے۔', '结束日期必须大于开始日期', '終了日は開始日より大きくする必要があります', 'A data de término deve ser posterior à data de início', 'Дата окончания должна быть больше даты начала.', 'La date de fin doit être postérieure à la date de début', '종료 날짜는 시작 날짜보다 이후여야 합니다.', 'Das Enddatum muss größer als das Startdatum sein', 'La data di fine deve essere maggiore della data di inizio', 'วันที่สิ้นสุดต้องมากกว่าวันที่เริ่มต้น', 'A befejező dátumnak nagyobbnak kell lennie, mint a kezdő dátum', 'Einddatum moet groter zijn dan Startdatum', 'Finis Date debet esse maior quam Satus Date', 'Tanggal Akhir harus lebih besar dari Tanggal Mulai', 'Bitiş Tarihi, Başlangıç Tarihinden büyük olmalıdır', 'Η ημερομηνία λήξης πρέπει να είναι μεγαλύτερη από την ημερομηνία έναρξης', 'تاریخ شروع', 'Tarikh Tamat mestilah lebih besar daripada Tarikh Mula', 'સમાપ્તિ તારીખ પ્રારંભ તારીખ કરતાં મોટી હોવી આવશ્યક છે', 'Data zakończenia musi być późniejsza niż data rozpoczęcia', 'Дата завершення має бути більшою за дату початку', 'ਸਮਾਪਤੀ ਮਿਤੀ ਸ਼ੁਰੂਆਤੀ ਮਿਤੀ ਤੋਂ ਵੱਧ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ', 'Data de încheiere trebuie să fie mai mare decât data de început', 'Ọjọ ipari gbọdọ tobi ju Ọjọ Ibẹrẹ lọ', 'Ƙarshen Ƙarshen dole ne ya zama mafi girma fiye da ranar farawa'),
(1232, 'donation_amount_already_used', 'Donation amount already used', 'অনুদানের পরিমাণ ইতিমধ্যেই ব্যবহৃত হয়েছে', 'Monto de la donación ya utilizado', 'مبلغ التبرع مستخدم بالفعل', 'दान राशि का पहले ही उपयोग हो चुका है', 'عطیہ کی رقم پہلے ہی استعمال ہو چکی ہے', '已使用捐款金额', 'すでに使用されている寄付金額', 'Valor da doação já usado', 'Сумма пожертвования уже использована', 'Montant du don déjà utilisé', '이미 사용된 기부 금액', 'Spendenbetrag bereits verwendet', 'Importo della donazione già utilizzato', 'ยอดบริจาคใช้ไปแล้ว', 'Az adomány összegét már felhasználták', 'Donatiebedrag al gebruikt', 'Donationem quantum iam usus est', 'Jumlah donasi sudah digunakan', 'Bağış miktarı zaten kullanılmış', 'Το ποσό της δωρεάς έχει ήδη χρησιμοποιηθεί', 'مبلغ اهدایی قبلاً استفاده شده است', 'Jumlah derma sudah digunakan', 'દાનની રકમ પહેલેથી વપરાયેલ છે', 'Kwota darowizny już wykorzystana', 'Сума пожертвування вже використана', 'ਦਾਨ ਦੀ ਰਕਮ ਪਹਿਲਾਂ ਹੀ ਵਰਤੀ ਜਾ ਚੁੱਕੀ ਹੈ', 'Suma donației este deja folosită', 'Iye ẹbun ti a ti lo tẹlẹ', 'Adadin gudummawar da aka riga aka yi amfani da shi'),
(1233, 'insufficient_balance', 'Insufficient Balance', 'অপর্যাপ্ত টাকা', 'Saldo insuficiente', 'رصيد غير كاف', 'अपर्याप्त शेष', 'ناکافی بیلنس', '余额不足', '残高不足です', 'Saldo insuficiente', 'Недостаточный баланс', 'Solde insuffisant', '잔액 불충분', 'Mangelhaftes Gleichgewicht', 'Equilibrio insufficiente', 'ยอดคงเหลือไม่เพียงพอ', 'Fedezethiány', 'Onvoldoende saldo', 'satis Libra', 'Saldo tidak mencukupi', 'Yetersiz bakiye', 'Ανεπαρκές υπόλοιπο', 'تعادل ناکافی', 'Baki Tidak Mencukupi', 'અપર્યાપ્ત બેલેન્સ', 'Niewystarczająca ilość środków', 'Недостатній баланс', 'ਨਾਕਾਫ਼ੀ ਬਕਾਇਆ', 'Echilibru insuficient', 'Aini iwọntunwọnsi', 'Rashin Isasshen Ma\'auni'),
(1234, 'purchase_qty_already_used', 'Purchase quantity already used', 'ক্রয় পরিমাণ ইতিমধ্যে ব্যবহৃত', 'Cantidad de compra ya utilizada', 'كمية الشراء المستخدمة بالفعل', 'पहले से उपयोग की गई खरीद मात्रा', 'خریداری کی مقدار پہلے ہی استعمال ہو چکی ہے۔', '已使用采购数量', 'すでに使用されている購入数量', 'Quantidade de compra já usada', 'Количество покупок уже использовано', 'Quantité d\'achat déjà utilisée', '이미 사용된 구매 수량', 'Abnahmemenge bereits verbraucht', 'Quantità di acquisto già utilizzata', 'ยอดซื้อใช้ไปแล้ว', 'Vásárlási mennyiség már felhasználva', 'Aankoophoeveelheid al gebruikt', 'Purchase quantitas prius usus est', 'Jumlah pembelian sudah digunakan', 'Satın alma miktarı zaten kullanılmış', 'Αγορά ποσότητας που έχει ήδη χρησιμοποιηθεί', 'مقدار خرید قبلا استفاده شده است', 'Kuantiti belian sudah digunakan', 'ખરીદીનો જથ્થો પહેલેથી જ વપરાયેલ છે', 'Ilość zakupu już wykorzystana', 'Купівля вже використана', 'ਖਰੀਦ ਦੀ ਮਾਤਰਾ ਪਹਿਲਾਂ ਹੀ ਵਰਤੀ ਜਾ ਚੁੱਕੀ ਹੈ', 'Cantitatea de cumpărare deja folosită', 'Opoiye rira tẹlẹ ti lo', 'An riga an yi amfani da adadin sayayya'),
(1235, 'insufficient_quantity', 'Insufficient Quantity', 'অপর্যাপ্ত পরিমাণ', 'Cantidad insuficiente', 'كمية غير كافية', 'काफी मात्रा में', 'ناکافی مقدار', '数量不足', '数量が不足しています', 'Quantidade Insuficiente', 'Недостаточное количество', 'Quantité insuffisante', '수량 부족', 'Unzureichende Menge', 'Quantità insufficiente', 'ปริมาณไม่เพียงพอ', 'Elégtelen mennyiség', 'Onvoldoende hoeveelheid', 'Quantitas insufficiens', 'Kuantitas tidak mencukupi', 'Yetersiz Miktar', 'Ανεπαρκής Ποσότητα', 'مقدار ناکافی', 'Kuantiti Tidak Mencukupi', 'અપર્યાપ્ત જથ્થો', 'Niewystarczająca ilość', 'Недостатня кількість', 'ਨਾਕਾਫ਼ੀ ਮਾਤਰਾ', 'Cantitate insuficientă', 'Opoiye ti ko to', 'Rashin wadatar da yawa'),
(1236, 'evaluate', 'Evaluate', 'মূল্যায়ন করুন', 'Evaluar', 'تقييم', 'मूल्यांकन करना', 'اندازہ', '评估', '評価', 'Avalie', 'Оценивать', 'Évaluer', '평가하다', 'Bewerten', 'Valutare', 'ประเมิน', 'Értékelje', 'evalueren', 'Censeo', 'Evaluasi', 'Değerlendirmek', 'Αξιολογώ', 'ارزیابی کنید', 'nilaikan', 'મૂલ્યાંકન કરો', 'Oceniać', 'Оцініть', 'ਪੜਤਾਲ', 'A evalua', 'Ṣe ayẹwo', 'Auna'),
(1237, 'fee_type_instruction_sale_1', 'From here must be create Sale Title to sale Inventory Item', 'এখান থেকে সেল টাইটেল তৈরি করতে হবে ইনভেন্টরি আইটেম বিক্রি করতে', 'Desde aquí debe crearse el título de venta para el artículo de inventario de venta', 'من هنا يجب إنشاء عنوان بيع لبيع عنصر المخزون', 'यहां से क्रिएट करना होगा सेल टाइटल टू सेल इन्वेंटरी आइटम', 'یہاں سے انوینٹری آئٹم کو فروخت کرنے کے لیے سیل ٹائٹل بنانا ہوگا۔', '从这里必须创建销售标题到销售库存项目', 'ここから、販売タイトルから販売在庫アイテムを作成する必要があります', 'A partir daqui deve ser criado o Título de Venda para o Item de Estoque de venda', 'Отсюда необходимо создать заголовок продажи, чтобы продать предмет инвентаря', 'À partir de là, vous devez créer un titre de vente pour vendre l\'article d\'inventaire', '여기에서 인벤토리 항목을 판매하려면 판매 제목을 만들어야 합니다.', 'Von hier aus muss ein Verkaufstitel erstellt werden, um Inventarartikel zu verkaufen', 'Da qui deve essere creato il titolo di vendita per vendere l\'articolo di inventario', 'จากนี้ไปจะต้องสร้าง Sale Title เพื่อขาย Inventory Item', 'Innen kell létrehozni az eladási címet az eladási készletcikkhez', 'Vanaf hier moet Verkooptitel worden gemaakt voor verkoopvoorraaditem', 'Hinc creare debet Titulus venditionis Inventarium Item', 'Dari sini harus dibuat Judul Penjualan untuk menjual Barang Inventaris', 'Buradan Envanter Öğesini satmak için Satış Başlığı oluşturulmalıdır', 'Από εδώ πρέπει να δημιουργήσετε Τίτλος πώλησης σε Στοιχείο αποθέματος πώλησης', 'از اینجا باید عنوان فروش به آیتم موجودی فروش ایجاد شود', 'Dari sini mesti mencipta Tajuk Jualan untuk menjual Item Inventori', 'અહીંથી ઇન્વેન્ટરી આઇટમના વેચાણ માટે વેચાણ શીર્ષક બનાવવું આવશ્યક છે', 'Stąd należy utworzyć tytuł sprzedaży, aby sprzedać przedmiot z magazynu', 'Звідси потрібно створити назву продажу для товару інвентарю', 'ਇੱਥੋਂ ਇਨਵੈਂਟਰੀ ਆਈਟਮ ਨੂੰ ਵੇਚਣ ਲਈ ਸੇਲ ਟਾਈਟਲ ਬਣਾਉਣਾ ਚਾਹੀਦਾ ਹੈ', 'De aici trebuie să creați un titlu de vânzare la articolul de inventar de vânzare', 'Lati ibi gbọdọ ṣẹda Akọle Tita si Ohun-ini Tita Tita', 'Daga nan dole ne a ƙirƙiri Taken Siyarwa don siyar da Abun Kaya'),
(1238, 'manage_onlime_exam', 'Manage Onlime Exam', 'অনলাইম পরীক্ষা পরিচালনা করুন', 'Examen en línea de gerente', 'امتحان المدير عبر الإنترنت', 'प्रबंधक ऑनलाइन परीक्षा', 'مینیجر آن لائن امتحان', '经理在线考试', 'マネージャーオンライン試験', 'Exame online para gerente', 'Онлайн-экзамен на менеджера', 'Examen en ligne de gestionnaire', '관리자 온라인 시험', 'Manager-Online-Prüfung', 'Esame online per manager', 'ผู้จัดการสอบออนไลน์', 'Menedzser online vizsga', 'Manager online examen', 'Procurator Online Exam', 'Ujian Online Manajer', 'Yönetici Çevrimiçi Sınavı', 'Διευθυντής Διαδικτυακής Εξέτασης', 'آزمون آنلاین مدیر', 'Peperiksaan Dalam Talian Pengurus', 'મેનેજર ઓનલાઈન પરીક્ષા', 'Egzamin menedżera online', 'Менеджерський онлайн-іспит', 'ਮੈਨੇਜਰ ਔਨਲਾਈਨ ਪ੍ਰੀਖਿਆ', 'Manager Online Examen', 'Idanwo Online Manager', 'Jarrabawar Kan layi na Manager'),
(1239, 'exam_time_already_expired', 'Exam time already expired', 'পরীক্ষার সময় আগেই শেষ হয়ে গেছে', 'El tiempo del examen ya expiró', 'انتهى وقت الامتحان بالفعل', 'परीक्षा का समय पहले ही समाप्त हो चुका है', 'امتحان کا وقت پہلے ہی ختم ہو چکا ہے۔', '考试时间已过', '試験時間はすでに切れています', 'O tempo do exame já expirou', 'Время экзамена уже истекло', 'L\'heure de l\'examen est déjà expirée', '시험 시간이 이미 만료되었습니다.', 'Prüfungszeit bereits abgelaufen', 'Tempo d\'esame già scaduto', 'หมดเวลาสอบแล้ว', 'A vizsgaidő már lejárt', 'Examentijd al verstreken', 'Exem tempus iam expletis', 'Waktu ujian sudah habis', 'Sınav süresi çoktan doldu', 'Η ώρα των εξετάσεων έχει ήδη λήξει', 'زمان امتحان قبلاً تمام شده است', 'Masa peperiksaan sudah tamat', 'પરીક્ષાનો સમય પહેલેથી જ સમાપ્ત થઈ ગયો છે', 'Czas egzaminu już upłynął', 'Час іспиту вже закінчився', 'ਪ੍ਰੀਖਿਆ ਦਾ ਸਮਾਂ ਪਹਿਲਾਂ ਹੀ ਖਤਮ ਹੋ ਗਿਆ ਹੈ', 'Manager Online Examen', 'Akoko idanwo ti pari tẹlẹ', 'Lokacin jarrabawa ya riga ya ƙare'),
(1240, 'please_wait_for_start_exam', 'Please wait for start Exam', 'পরীক্ষা শুরুর জন্য অনুগ্রহ করে অপেক্ষা করুন', 'Espere a que comience el examen', 'يرجى انتظار بدء الاختبار', 'कृपया परीक्षा शुरू होने की प्रतीक्षा करें', 'براہ کرم امتحان شروع ہونے کا انتظار کریں۔', '请等待开始考试', '試験開始までお待ちください', 'Por favor, aguarde o início do exame', 'Подождите, пока начнется экзамен', 'Veuillez attendre le début de l\'examen', '시험 시작을 기다려주세요', 'Bitte warten Sie, bis die Prüfung beginnt', 'Attendi l\'inizio dell\'esame', 'กรุณารอเพื่อเริ่มการสอบ', 'Kérjük, várja meg a vizsga megkezdését', 'Wacht a.u.b. op start Examen', 'Quaeso exspecta initio IV', 'Harap tunggu untuk memulai Ujian', 'Lütfen sınavın başlamasını bekleyin', 'Περιμένετε να ξεκινήσει η Εξέταση', 'لطفا منتظر شروع امتحان باشید', 'Sila tunggu untuk memulakan Peperiksaan', 'કૃપા કરીને પરીક્ષા શરૂ થવાની રાહ જુઓ', 'Proszę czekać na rozpoczęcie egzaminu', 'Будь ласка, дочекайтеся початку іспиту', 'ਕਿਰਪਾ ਕਰਕੇ ਪ੍ਰੀਖਿਆ ਸ਼ੁਰੂ ਹੋਣ ਦੀ ਉਡੀਕ ਕਰੋ', 'Vă rugăm să așteptați începerea examenului', 'Jọwọ duro fun ibere Idanwo', 'Da fatan za a jira jarrabawar farawa'),
(1241, 'exam_time_already_expired', 'Exam time already Expired', 'পরীক্ষার সময় আগেই শেষ', 'El tiempo del examen ya expiró', 'انتهى وقت الامتحان بالفعل', 'परीक्षा का समय पहले ही समाप्त हो चुका है', 'امتحان کا وقت پہلے ہی ختم ہو چکا ہے۔', '考试时间已过', '試験時間はすでに期限切れです', 'A hora do exame já expirou', 'Время экзамена уже истекло', 'L\'heure de l\'examen est déjà expirée', '시험 시간이 이미 만료되었습니다', 'Prüfungszeit bereits abgelaufen', 'Tempo d\'esame già scaduto', 'หมดเวลาสอบแล้ว', 'A vizsgaidő már lejárt', 'Examentijd al verlopen', 'Exem tempus iam Expiratus', 'Waktu ujian sudah kedaluwarsa', 'Sınav süresi çoktan doldu', 'Η ώρα των εξετάσεων έχει ήδη λήξει', 'زمان امتحان قبلاً تمام شده است', 'Masa peperiksaan sudah Tamat', 'પરીક્ષાનો સમય પહેલેથી જ સમાપ્ત થઈ ગયો છે', 'Czas egzaminu już wygasł', 'Час іспиту вже минув', 'ਪ੍ਰੀਖਿਆ ਦਾ ਸਮਾਂ ਪਹਿਲਾਂ ਹੀ ਖਤਮ ਹੋ ਗਿਆ ਹੈ', 'Timpul examenului a expirat deja', 'Akoko idanwo ti pari tẹlẹ', 'Lokacin jarrabawa ya riga ya ƙare'),
(1243, 'of', 'of', 'অফ', 'de', 'من', 'का', 'کی', '的', 'の', 'de', 'из', 'de', '의', 'von', 'di', 'ของ', 'nak,-nek', 'van', 'of*', 'dari', 'nın-nin', 'του', 'از', 'daripada', 'ના', 'z', 'з', 'ਦੇ', 'de', 'ti', 'na'),
(1244, 'exam_limit_per_student', 'Exam limit per Student', 'শিক্ষার্থী প্রতি পরীক্ষার সীমা', 'Límite de exámenes por alumno', 'حد الامتحان لكل طالب', 'प्रति छात्र परीक्षा सीमा', 'امتحان کی حد فی طالب علم', '每个学生的考试限制', '学生一人当たりの試験制限', 'Limite de exame por aluno', 'Лимит экзаменов на одного студента', 'Limite d\'examen par étudiant', '학생 1인당 시험 한도', 'Prüfungslimit pro Schüler', 'Limite di esami per studente', 'ขีด จำกัด การสอบต่อนักเรียนหนึ่งคน', 'Diákonkénti vizsgakorlát', 'Examenlimiet per student', 'Exem terminum per Student', 'Batas ujian per Siswa', 'Öğrenci başına sınav limiti', 'Όριο εξετάσεων ανά Μαθητή', 'محدودیت امتحان برای هر دانش آموز', 'Had peperiksaan bagi setiap Pelajar', 'વિદ્યાર્થી દીઠ પરીક્ષા મર્યાદા', 'Limit egzaminów na ucznia', 'Ліміт іспитів на одного студента', 'ਪ੍ਰਤੀ ਵਿਦਿਆਰਥੀ ਪ੍ਰੀਖਿਆ ਸੀਮਾ', 'Limită de examen per student', 'Iwọn idanwo fun Ọmọ ile-iwe', 'Iyakar jarrabawa kowane dalibi');
INSERT INTO `languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `yoruba`, `hausa`) VALUES
(1245, 'manage_supplier', 'Manage Supplier', 'সরবরাহকারী পরিচালনা করুন', 'Administrar proveedor', 'إدارة المورد', 'प्रदायक प्रबंधित करें', 'سپلائر کا نظم کریں۔', '管理供应商', 'サプライヤーの管理', 'Gerenciar Fornecedor', 'Управление поставщиком', 'Gérer le fournisseur', '공급업체 관리', 'Lieferanten verwalten', 'Gestisci fornitore', 'จัดการซัพพลายเออร์', 'Szállító kezelése', 'Leverancier beheren', 'Curo Supplier', 'Kelola Pemasok', 'Tedarikçiyi Yönet', 'Διαχείριση Προμηθευτή', 'تامین کننده را مدیریت کنید', 'Uruskan Pembekal', 'સપ્લાયર મેનેજ કરો', 'Zarządzaj dostawcą', 'Керувати постачальником', 'ਸਪਲਾਇਰ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ', 'Gestionează furnizorul', 'Ṣakoso awọn Olupese', 'Sarrafa mai kaya'),
(1246, 'send', 'Send', 'পাঠান', 'Enviar', 'إرسال', 'भेजना', 'بھیجیں', '发送', '送信', 'Mandar', 'Отправлять', 'Envoyer', '보내다', 'Senden', 'Spedire', 'ส่ง', 'Küld', 'Versturen', 'Mitte', 'Mengirim', 'Göndermek', 'Στείλετε', 'ارسال', 'Hantar', 'મોકલો', 'Wysłać', 'Надіслати', 'ਭੇਜੋ', 'Trimite', 'Firanṣẹ', 'Aika');

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_day` int(11) NOT NULL,
  `leave_reason` text,
  `leave_note` text,
  `leave_date` datetime NOT NULL,
  `leave_status` tinyint(1) NOT NULL COMMENT '[0 = new ,1 = waiting, 2 = approved, 3 = decline]',
  `attachment` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL,
  `total_leave` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `library_members`
--

CREATE TABLE `library_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `custom_member_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `live_classes`
--

CREATE TABLE `live_classes` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_type` varchar(50) NOT NULL,
  `meeting_id` varchar(100) NOT NULL,
  `meeting_password` varchar(120) NOT NULL,
  `meeting_url` varchar(255) DEFAULT NULL,
  `class_date` date NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `send_notification` tinyint(1) DEFAULT '0',
  `note` text NOT NULL,
  `class_status` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `lp_lessons`
--

CREATE TABLE `lp_lessons` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `lp_lesson_details`
--

CREATE TABLE `lp_lesson_details` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `complete_status` varchar(50) DEFAULT 'incomplete',
  `complete_date` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `lp_topics`
--

CREATE TABLE `lp_topics` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `lesson_detail_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `lp_topic_details`
--

CREATE TABLE `lp_topic_details` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `complete_status` varchar(50) DEFAULT 'incomplete',
  `complete_date` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `written_mark` int(11) NOT NULL,
  `written_obtain` int(11) NOT NULL,
  `tutorial_mark` int(11) NOT NULL,
  `tutorial_obtain` int(11) NOT NULL,
  `practical_mark` int(11) NOT NULL,
  `practical_obtain` int(11) NOT NULL,
  `viva_mark` int(11) NOT NULL,
  `viva_obtain` int(11) NOT NULL,
  `exam_total_mark` int(11) NOT NULL,
  `obtain_total_mark` int(11) NOT NULL,
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `mark_emails` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `receivers` text CHARACTER SET utf8 NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mark_smses`
--

CREATE TABLE `mark_smses` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sms_gateway` varchar(50) CHARACTER SET utf8 NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `receivers` text CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_at` datetime NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `message_relationships`
--

CREATE TABLE `message_relationships` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_trash` tinyint(1) NOT NULL,
  `is_draft` smallint(1) NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_slug` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_slug`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'Setting', 'setting', 1, '2017-11-13 22:55:19', '2017-11-13 22:57:10', 1, 1),
(2, 'Theme', 'theme', 1, '2017-12-12 13:34:52', '0000-00-00 00:00:00', 1, 0),
(3, 'Language', 'language', 1, '2017-12-12 13:36:11', '0000-00-00 00:00:00', 1, 0),
(4, 'Administrator', 'administrator', 1, '2017-12-12 13:36:35', '0000-00-00 00:00:00', 1, 0),
(5, 'Human Resource', 'hrm', 1, '2017-12-12 13:38:30', '0000-00-00 00:00:00', 1, 0),
(6, 'Teacher', 'teacher', 1, '2017-12-12 13:39:01', '0000-00-00 00:00:00', 1, 0),
(7, 'Academic Activity', 'academic', 1, '2017-12-12 13:42:24', '0000-00-00 00:00:00', 1, 0),
(8, 'Guardian', 'guardian', 1, '2017-12-12 13:43:01', '0000-00-00 00:00:00', 1, 0),
(9, 'Student', 'student', 1, '2017-12-12 13:43:28', '0000-00-00 00:00:00', 1, 0),
(10, 'Attendance', 'attendance', 1, '2017-12-12 13:45:03', '0000-00-00 00:00:00', 1, 0),
(12, 'Exam', 'exam', 1, '2017-12-12 13:46:13', '0000-00-00 00:00:00', 1, 0),
(14, 'Library', 'library', 1, '2017-12-12 13:46:33', '0000-00-00 00:00:00', 1, 0),
(15, 'Transport', 'transport', 1, '2017-12-12 13:46:52', '0000-00-00 00:00:00', 1, 0),
(16, 'Hostel', 'hostel', 1, '2017-12-12 13:47:15', '0000-00-00 00:00:00', 1, 0),
(17, 'Message, Email & SMS', 'message', 1, '2017-12-12 13:47:48', '2017-12-14 08:48:49', 1, 1),
(18, 'Announcement', 'announcement', 1, '2017-12-12 13:48:23', '0000-00-00 00:00:00', 1, 0),
(19, 'Event', 'event', 1, '2017-12-12 13:48:36', '0000-00-00 00:00:00', 1, 0),
(20, 'Front Office', 'frontoffice', 1, '2017-12-12 13:49:05', '2019-08-05 22:41:52', 1, 1),
(21, 'Accounting', 'accounting', 1, '2017-12-12 13:49:32', '0000-00-00 00:00:00', 1, 0),
(22, 'Report', 'report', 1, '2017-12-12 13:51:09', '0000-00-00 00:00:00', 1, 0),
(13, 'Exam Mark', 'exam', 1, '2017-12-14 00:00:00', '2017-12-14 09:07:46', 1, 1),
(23, 'Certificate', 'certificate', 1, '2018-03-17 16:27:14', '0000-00-00 00:00:00', 2, 0),
(24, 'Media Gallery', 'gallery', 1, '2018-03-22 06:46:46', '0000-00-00 00:00:00', 1, 0),
(25, 'Frontend', 'frontend', 1, '2018-03-23 03:40:22', '0000-00-00 00:00:00', 1, 0),
(26, 'Payroll', 'payroll', 1, '2018-03-25 02:07:46', '0000-00-00 00:00:00', 1, 0),
(27, 'Complain', 'complain', 1, '2019-04-10 00:00:00', '2019-04-10 00:00:00', 1, 1),
(28, 'User Complain', 'usercomplain', 1, '2019-07-20 19:39:44', '0000-00-00 00:00:00', 1, 0),
(29, 'User Leave', 'userleave', 1, '2019-07-24 21:53:30', '0000-00-00 00:00:00', 1, 0),
(30, 'Leave Management', 'leave', 1, '2019-07-24 21:53:59', '0000-00-00 00:00:00', 1, 0),
(31, 'ID Card & Admit Card', 'card', 1, '2019-07-28 23:36:16', '0000-00-00 00:00:00', 1, 0),
(32, 'Miscellaneous', 'miscellaneous', 1, '2021-02-11 10:50:47', '2021-02-11 10:50:47', 1, 1),
(33, 'Inventory', 'inventory', 1, '2021-02-21 07:33:49', '2021-02-21 07:33:49', 1, 1),
(34, 'Asset Management', 'asset', 1, '2021-02-23 12:22:11', '2021-02-23 12:22:11', 1, 1),
(35, 'Online Exam', 'onlineexam', 1, '2021-03-03 10:56:31', '2021-03-03 10:56:31', 1, 1),
(36, 'Scholarship', 'scholarship', 1, '2021-03-05 15:44:36', '2021-03-05 15:44:36', 1, 1),
(37, 'Lesson Plan', 'lessonplan', 1, '2021-03-25 06:06:10', '2021-03-25 06:06:10', 1, 1);

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `news` text CHARACTER SET utf8 NOT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `notice` text CHARACTER SET utf8 NOT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `opening_hours`
--

CREATE TABLE `opening_hours` (
  `id` int(11) NOT NULL,
  `monday` varchar(100) DEFAULT NULL,
  `tuesday` varchar(100) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `wednesday` varchar(100) DEFAULT NULL,
  `thursday` varchar(100) DEFAULT NULL,
  `friday` varchar(100) DEFAULT NULL,
  `saturday` varchar(100) DEFAULT NULL,
  `sunday` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opening_hours`
--

INSERT INTO `opening_hours` (`id`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '2:00 AM - 3:45 AM', '12:15 AM - 12:30 AM', '8:30 AM - 12:45 AM', '12:30 AM - 1:00 AM', '1:00 AM - 12:45 AM', '1:00 AM - 1:00 AM', '12:45 AM - 11:45 PM', 1, '2021-03-12 15:31:22', '2021-12-13 08:41:41', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `operation_name` varchar(50) NOT NULL,
  `operation_slug` varchar(50) NOT NULL,
  `is_view_vissible` tinyint(1) DEFAULT '0',
  `is_add_vissible` tinyint(1) DEFAULT '0',
  `is_edit_vissible` tinyint(1) DEFAULT '0',
  `is_delete_vissible` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id`, `module_id`, `operation_name`, `operation_slug`, `is_view_vissible`, `is_add_vissible`, `is_edit_vissible`, `is_delete_vissible`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 'General Setting', 'setting', 1, 1, 1, NULL, 1, '2017-12-12 16:06:25', '2019-09-01 14:22:34', 1, 1),
(2, 1, 'Payment Setting', 'payment', 1, 1, 1, NULL, 1, '2017-12-12 16:06:55', '2019-09-01 14:23:16', 1, 1),
(3, 1, 'SMS Setting', 'sms', 1, 1, 1, NULL, 1, '2017-12-12 16:07:07', '2019-09-01 14:23:01', 1, 1),
(4, 2, 'Theme', 'theme', 1, 0, 1, 0, 1, '2017-12-12 16:08:39', '2018-01-03 07:02:51', 1, 1),
(5, 3, 'Language', 'language', 1, 1, 1, 1, 1, '2017-12-12 16:09:22', '2019-09-01 14:24:07', 1, 1),
(6, 4, 'Academic Year', 'year', 1, 1, 1, 1, 1, '2017-12-12 16:10:34', '2018-01-03 07:03:18', 1, 1),
(7, 4, 'User Role', 'role', 1, 1, 1, 1, 1, '2017-12-12 16:10:55', '2019-09-01 15:07:08', 1, 1),
(8, 4, 'Role Permission', 'permission', 1, NULL, 1, NULL, 1, '2017-12-12 16:12:10', '2019-09-01 14:24:55', 1, 1),
(64, 4, 'Reset User Password', 'password', 0, 0, 1, 0, 1, '2017-12-13 20:14:23', '2018-01-03 07:05:11', 1, 1),
(10, 5, 'Designation', 'designation', 1, 1, 1, 1, 1, '2017-12-12 16:15:38', '2018-01-03 07:07:38', 1, 1),
(11, 5, 'Employee', 'employee', 1, 1, 1, 1, 1, '2017-12-12 16:15:55', '2018-01-03 07:19:54', 1, 1),
(12, 6, 'Teacher', 'teacher', 1, 1, 1, 1, 1, '2017-12-12 16:17:22', '2018-01-03 07:25:07', 1, 1),
(14, 7, 'Classes', 'classes', 1, 1, 1, 1, 1, '2017-12-12 16:19:01', '2018-01-03 07:25:17', 1, 1),
(15, 7, 'Section', 'section', 1, 1, 1, 1, 1, '2017-12-12 16:19:24', '2018-01-03 07:25:24', 1, 1),
(16, 7, 'Subject', 'subject', 1, 1, 1, 1, 1, '2017-12-12 16:19:48', '2018-01-03 07:25:33', 1, 1),
(17, 7, 'Syllabus', 'syllabus', 1, 1, 1, 1, 1, '2017-12-12 16:20:32', '2018-01-03 07:25:54', 1, 1),
(18, 7, 'Class Routine', 'routine', 1, 1, 1, 1, 1, '2017-12-12 16:20:56', '2018-01-03 07:26:13', 1, 1),
(19, 7, 'Promotion', 'promotion', 1, 1, 0, 0, 1, '2017-12-12 16:21:17', '2018-02-09 01:42:57', 1, 1),
(20, 8, 'Guardian', 'guardian', 1, 1, 1, 1, 1, '2017-12-12 16:23:32', '2018-01-03 07:29:06', 1, 1),
(21, 9, 'Student', 'student', 1, 1, 1, 1, 1, '2017-12-12 17:58:56', '2018-01-03 07:29:15', 1, 1),
(65, 4, 'Backup Database', 'backup', 1, NULL, NULL, NULL, 1, '2017-12-13 20:14:39', '2019-09-01 14:28:12', 1, 1),
(23, 10, 'Employee Attendance', 'employee', 1, 1, 1, 0, 1, '2017-12-12 18:00:10', '2018-01-03 07:30:19', 1, 1),
(24, 10, 'Teacher Attendance', 'teacher', 1, 1, 1, 0, 1, '2017-12-12 18:00:51', '2018-01-03 07:29:52', 1, 1),
(25, 10, 'Student Attendance', 'student', 1, 1, 1, 0, 1, '2017-12-12 18:01:17', '2018-01-03 07:30:01', 1, 1),
(28, 12, 'Exam Term', 'exam', 1, 1, 1, 1, 1, '2017-12-12 18:03:30', '2018-02-09 01:49:25', 1, 1),
(29, 12, 'Exam Grade', 'grade', 1, 1, 1, 1, 1, '2017-12-12 18:03:56', '2018-01-03 07:31:56', 1, 1),
(30, 12, 'Exam Schedule', 'schedule', 1, 1, 1, 1, 1, '2017-12-12 18:04:58', '2018-01-03 07:32:14', 1, 1),
(31, 12, 'Exam Suggestion', 'suggestion', 1, 1, 1, 1, 1, '2017-12-12 18:05:18', '2018-01-03 07:32:30', 1, 1),
(32, 12, 'Exam Attendance', 'attendance', 1, 1, 1, 0, 1, '2017-12-12 18:05:43', '2018-01-03 07:32:58', 1, 1),
(33, 13, 'Exam Mark', 'mark', 1, 1, 1, 0, 1, '2017-12-12 18:06:04', '2018-01-03 07:33:16', 1, 1),
(34, 13, 'Mark Sheet', 'marksheet', 1, 1, 1, 0, 1, '2017-12-12 18:06:24', '2018-01-03 07:34:08', 1, 1),
(35, 13, 'Result', 'result', 1, 1, 1, NULL, 1, '2017-12-12 18:06:41', '2018-09-02 12:40:01', 1, 1),
(37, 14, 'Library Book', 'book', 1, 1, 1, 1, 1, '2017-12-12 18:09:17', '2018-01-03 07:36:02', 1, 1),
(38, 14, 'Library Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:09:33', '2018-01-03 07:36:24', 1, 1),
(66, 14, 'Issue & Return', 'issue', 1, 1, 1, 0, 1, '2017-12-14 08:46:37', '2018-01-03 07:37:01', 1, 1),
(40, 15, 'Vehicle', 'vehicle', 1, 1, 1, 1, 1, '2017-12-12 18:10:49', '2018-01-03 07:37:11', 1, 1),
(41, 15, 'Transport Route', 'route', 1, 1, 1, 1, 1, '2017-12-12 18:11:17', '2018-01-03 07:41:27', 1, 1),
(42, 15, 'Transport Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:11:39', '2018-01-03 07:41:46', 1, 1),
(43, 16, 'Hostel', 'hostel', 1, 1, 1, 1, 1, '2017-12-12 18:12:16', '2018-01-03 07:41:55', 1, 1),
(44, 16, 'Hostel Room', 'room', 1, 1, 1, 1, 1, '2017-12-12 18:12:37', '2018-01-03 07:42:02', 1, 1),
(45, 16, 'Hostel Member', 'member', 1, 1, 0, 1, 1, '2017-12-12 18:13:00', '2018-01-03 07:42:23', 1, 1),
(47, 17, 'Email', 'mail', 1, 1, 0, 1, 1, '2017-12-12 18:15:57', '2018-01-03 07:44:16', 1, 1),
(48, 17, 'Text SMS', 'text', 1, 1, 0, 1, 1, '2017-12-12 18:16:17', '2018-01-03 07:44:25', 1, 1),
(50, 18, 'Notice', 'notice', 1, 1, 1, 1, 1, '2017-12-12 18:20:38', '2018-01-03 07:47:39', 1, 1),
(51, 18, 'News', 'news', 1, 1, 1, 1, 1, '2017-12-12 18:20:54', '2018-01-03 07:47:46', 1, 1),
(52, 18, 'Holiday', 'holiday', 1, 1, 1, 1, 1, '2017-12-12 18:21:08', '2018-01-03 07:47:53', 1, 1),
(53, 19, 'Event', 'event', 1, 1, 1, 1, 1, '2017-12-12 18:21:35', '2018-01-03 07:48:00', 1, 1),
(54, 20, 'Visitor', 'visitor', 1, 1, 1, 1, 1, '2017-12-12 18:22:05', '2019-08-05 22:43:00', 1, 1),
(56, 21, 'Expenditure Head', 'exphead', 1, 1, 1, 1, 1, '2017-12-12 18:23:51', '2018-01-03 07:48:23', 1, 1),
(57, 21, 'Expenditure', 'expenditure', 1, 1, 1, 1, 1, '2017-12-12 18:24:14', '2018-01-03 07:48:32', 1, 1),
(58, 21, 'Income Head', 'incomehead', 1, 1, 1, 1, 1, '2017-12-12 18:24:42', '2018-01-03 07:48:39', 1, 1),
(59, 21, 'Income', 'income', 1, 1, 1, 1, 1, '2017-12-12 18:24:54', '2018-01-03 07:48:59', 1, 1),
(60, 21, 'Invoice', 'invoice', 1, 1, 1, 1, 1, '2017-12-12 18:25:16', '2018-01-03 07:49:12', 1, 1),
(61, 21, 'Payment', 'payment', 1, 1, 0, 0, 1, '2017-12-12 18:25:34', '2018-01-03 07:49:47', 1, 1),
(62, 22, 'Report', 'report', 1, 0, 0, 0, 1, '2017-12-12 18:26:16', '2018-01-03 07:50:00', 1, 1),
(63, 4, 'Manage User', 'user', 1, 0, 1, 0, 1, '2017-12-13 20:13:49', '2018-01-03 07:35:43', 1, 1),
(67, 13, 'Mark send by SMS', 'text', 1, 1, 0, 1, 1, '2017-12-14 09:09:58', '2018-01-03 07:34:45', 1, 1),
(68, 13, 'Mark send by Email', 'mail', 1, 1, 0, 1, 1, '2017-12-14 09:10:15', '2018-01-03 07:35:13', 1, 1),
(69, 17, 'message', 'message', 1, 1, 1, 1, 1, '2018-01-13 08:53:53', '2018-01-13 09:06:22', 2, 2),
(70, 23, 'CertificateType', 'type', 1, 1, 1, 1, 1, '2018-03-17 16:28:43', '0000-00-00 00:00:00', 2, 0),
(71, 23, 'Certificate', 'certificate', 1, NULL, NULL, NULL, 1, '2018-03-18 09:06:40', '0000-00-00 00:00:00', 1, 0),
(72, 24, 'Gallery', 'gallery', 1, 1, 1, 1, 1, '2018-03-22 06:47:27', '2018-03-22 06:48:03', 1, 1),
(73, 24, 'Image', 'image', 1, 1, 1, 1, 1, '2018-03-22 06:47:51', '0000-00-00 00:00:00', 1, 0),
(74, 25, 'Frontend', 'frontend', 1, 1, 1, 1, 1, '2018-03-23 05:06:49', '0000-00-00 00:00:00', 1, 0),
(75, 26, 'Salary Grade', 'grade', 1, 1, 1, 1, 1, '2018-03-25 02:08:21', '0000-00-00 00:00:00', 1, 0),
(76, 26, 'Payment', 'payment', 1, 1, 1, 1, 1, '2018-03-25 02:09:05', '0000-00-00 00:00:00', 1, 0),
(77, 25, 'Home Slider', 'slider', 1, 1, 1, 1, 1, '2018-03-27 18:04:48', '0000-00-00 00:00:00', 1, 0),
(78, 26, 'History', 'history', 1, NULL, NULL, NULL, 1, '2018-04-01 00:39:23', '0000-00-00 00:00:00', 1, 0),
(83, 4, 'SMS Template', 'smstemplate', 1, 1, 1, 1, 1, '2018-08-24 18:36:20', '0000-00-00 00:00:00', 1, 0),
(84, 4, 'Email Template', 'emailtemplate', 1, 1, 1, 1, 1, '2018-08-24 18:36:46', '0000-00-00 00:00:00', 1, 0),
(85, 4, 'Activity Log', 'activitylog', 1, NULL, NULL, 1, 1, '2018-08-24 18:42:49', '0000-00-00 00:00:00', 1, 0),
(86, 9, 'Bulk Import', 'bulk', 1, 1, NULL, NULL, 1, '2018-08-28 21:13:45', '0000-00-00 00:00:00', 1, 0),
(87, 9, 'Student Activity', 'activity', 1, 1, 1, 1, 1, '2018-08-28 21:14:33', '0000-00-00 00:00:00', 1, 0),
(88, 10, 'Absent Email', 'absentemail', 1, 1, NULL, 1, 1, '2018-09-01 08:51:33', '0000-00-00 00:00:00', 1, 0),
(89, 10, 'Absent SMS', 'absentsms', 1, 1, NULL, 1, 1, '2018-09-01 08:51:50', '0000-00-00 00:00:00', 1, 0),
(90, 13, 'Exam Result', 'examresult', 1, 1, 1, NULL, 1, '2018-09-02 12:38:31', '0000-00-00 00:00:00', 1, 0),
(91, 13, 'Final Result', 'finalresult', 1, 1, 1, NULL, 1, '2018-09-02 12:41:39', '0000-00-00 00:00:00', 1, 0),
(92, 13, 'Merit List', 'meritlist', 1, NULL, NULL, NULL, 1, '2018-09-02 12:42:23', '0000-00-00 00:00:00', 1, 0),
(93, 13, 'Result Email', 'resultemail', 1, 1, NULL, 1, 1, '2018-09-02 12:43:23', '0000-00-00 00:00:00', 1, 0),
(94, 13, 'Result SMS', 'resultsms', 1, 1, NULL, 1, 1, '2018-09-02 12:43:44', '0000-00-00 00:00:00', 1, 0),
(95, 13, 'Result Card', 'resultcard', 1, NULL, NULL, NULL, 1, '2018-09-02 12:44:43', '0000-00-00 00:00:00', 1, 0),
(96, 21, 'Discount', 'discount', 1, 1, 1, 1, 1, '2018-09-10 12:33:45', '0000-00-00 00:00:00', 1, 0),
(97, 21, 'Fee Type', 'feetype', 1, 1, 1, 1, 1, '2018-09-10 12:37:06', '0000-00-00 00:00:00', 1, 0),
(98, 21, 'Due Fee Email', 'duefeeemail', 1, 1, NULL, 1, 1, '2018-09-10 12:37:40', '0000-00-00 00:00:00', 1, 0),
(99, 21, 'Due Fee SMS', 'duefeesms', 1, 1, NULL, 1, 1, '2018-09-10 12:38:04', '0000-00-00 00:00:00', 1, 0),
(101, 4, 'Guardian Feedback', 'feedback', 1, NULL, 1, 1, 1, '2018-09-14 17:55:09', '0000-00-00 00:00:00', 1, 0),
(102, 8, 'Feedback', 'feedback', 1, 1, 1, 1, 1, '2018-09-14 18:07:45', '0000-00-00 00:00:00', 1, 0),
(104, 25, 'About', 'about', 1, 1, 1, NULL, 1, '2018-10-10 18:16:05', '0000-00-00 00:00:00', 1, 0),
(106, 1, 'Email Setting', 'email', 1, 1, 1, NULL, 1, '2019-04-09 13:58:35', '2019-09-01 14:22:46', 1, 1),
(107, 27, 'Complain', 'complain', 1, 1, 1, 1, 1, '2019-04-10 16:22:48', '0000-00-00 00:00:00', 1, 0),
(108, 7, 'Material', 'material', 1, 1, 1, 1, 1, '2019-07-05 21:41:34', '0000-00-00 00:00:00', 1, 0),
(109, 14, 'e-book', 'ebook', 1, 1, 1, 1, 1, '2019-07-07 00:03:59', '0000-00-00 00:00:00', 1, 0),
(110, 9, 'Online Admission', 'admission', 1, NULL, 1, 1, 1, '2019-07-08 20:14:31', '2019-07-13 14:17:27', 1, 1),
(111, 27, 'Complain Type', 'type', 1, 1, 1, 1, 1, '2019-07-19 17:49:08', '0000-00-00 00:00:00', 1, 0),
(112, 28, 'User Complain', 'usercomplain', 1, 1, 1, 1, 1, '2019-07-20 19:40:21', '2019-09-01 15:06:04', 1, 1),
(113, 29, 'User Leave', 'userleave', 1, 1, 1, 1, 1, '2019-07-24 21:54:41', '2019-09-01 15:05:38', 1, 1),
(115, 30, 'Leave Type', 'type', 1, 1, 1, 1, 1, '2019-07-24 21:55:51', '0000-00-00 00:00:00', 1, 0),
(116, 30, 'Leave Application', 'application', 1, 1, 1, 1, 1, '2019-07-25 16:59:43', '2019-07-25 18:21:20', 1, 1),
(117, 30, 'Waiting Leave', 'waiting', 1, NULL, 1, 1, 1, '2019-07-28 13:21:16', '0000-00-00 00:00:00', 1, 0),
(118, 30, 'Approve Leave', 'approve', 1, NULL, 1, 1, 1, '2019-07-28 13:21:46', '0000-00-00 00:00:00', 1, 0),
(119, 30, 'Decline Leave', 'decline', 1, NULL, 1, 1, 1, '2019-07-28 13:22:11', '0000-00-00 00:00:00', 1, 0),
(120, 31, 'ID & Admit card', 'card', 1, NULL, NULL, NULL, 1, '2019-07-28 23:44:54', '0000-00-00 00:00:00', 1, 0),
(121, 31, 'Teacher ID card', 'teacher', 1, NULL, NULL, NULL, 1, '2019-07-28 23:45:36', '0000-00-00 00:00:00', 1, 0),
(122, 31, 'Employee ID Card', 'employee', 1, NULL, NULL, NULL, 1, '2019-07-28 23:46:01', '0000-00-00 00:00:00', 1, 0),
(123, 31, 'Student ID card', 'student', 1, NULL, NULL, NULL, 1, '2019-07-28 23:46:40', '2019-08-03 15:23:48', 1, 1),
(124, 31, 'ID Card Setting', 'idsetting', 1, 1, 1, 1, 1, '2019-07-30 17:27:20', '2019-09-01 15:02:05', 1, 1),
(125, 31, 'Admit Card Setting', 'admitsetting', 1, 1, 1, 1, 1, '2019-08-03 15:25:20', '2019-09-01 15:01:35', 1, 1),
(126, 31, 'Admit card', 'admit', 1, NULL, NULL, NULL, 1, '2019-08-03 15:25:53', '0000-00-00 00:00:00', 1, 0),
(129, 20, 'Visitor Purpose', 'purpose', 1, 1, 1, 1, 1, '2019-08-05 22:43:33', '0000-00-00 00:00:00', 1, 0),
(130, 20, 'Call Logs', 'calllog', 1, 1, 1, 1, 1, '2019-08-05 22:44:06', '0000-00-00 00:00:00', 1, 0),
(131, 20, 'Postal Dispatch', 'dispatch', 1, 1, 1, 1, 1, '2019-08-05 22:44:49', '0000-00-00 00:00:00', 1, 0),
(132, 20, 'Postal Receive', 'receive', 1, 1, 1, 1, 1, '2019-08-05 22:45:19', '0000-00-00 00:00:00', 1, 0),
(134, 9, 'Student Type', 'type', 1, 1, 1, 1, 1, '2019-08-17 23:11:18', '0000-00-00 00:00:00', 1, 0),
(135, 4, 'User Credential', 'usercredential', 1, NULL, NULL, NULL, 1, '2019-08-18 23:54:14', '2019-09-05 13:47:12', 1, 132),
(136, 4, 'Reset Email', 'email', 1, NULL, 1, NULL, 1, '2019-08-18 23:54:14', '2019-09-05 13:47:12', 1, 132),
(137, 9, 'Group', 'group', 1, 1, 1, 1, 1, '2019-11-02 02:09:45', '2019-11-02 02:09:45', 1, 1),
(138, 25, 'Faqs', 'faq', 1, 1, 1, 1, 1, '2021-02-10 04:56:30', '2021-02-10 04:56:30', 1, 1),
(139, 32, 'Award', 'award', 1, 1, 1, 1, 1, '2021-02-11 04:51:49', '2021-02-11 04:51:49', 1, 1),
(140, 32, 'Todo', 'todo', 1, 1, 1, 1, 1, '2021-02-13 06:43:20', '2021-02-13 06:44:14', 1, 1),
(141, 6, 'Department', 'department', 1, 1, 1, 1, 1, '2021-02-18 04:37:16', '2021-02-18 04:37:16', 1, 1),
(142, 6, 'Rating', 'rating', 1, 1, 1, 1, 1, '2021-02-18 09:52:36', '2021-02-18 09:52:36', 1, 1),
(143, 33, 'Item Category', 'category', 1, 1, 1, 1, 1, '2021-02-21 01:34:40', '2021-02-21 01:34:40', 1, 1),
(144, 33, 'Item Supplier', 'supplier', 1, 1, 1, 1, 1, '2021-02-21 01:35:10', '2021-02-21 01:35:10', 1, 1),
(145, 33, 'Item Warehouse', 'warehouse', 1, 1, 1, 1, 1, '2021-02-21 01:35:52', '2021-02-21 01:35:52', 1, 1),
(146, 33, 'Product', 'product', 1, 1, 1, 1, 1, '2021-02-22 03:37:34', '2021-02-22 03:37:34', 1, 1),
(147, 34, 'Vendor', 'vendor', 1, 1, 1, 1, 1, '2021-02-23 06:44:00', '2021-02-23 06:44:00', 1, 1),
(148, 34, 'Store', 'store', 1, 1, 1, 1, 1, '2021-02-23 06:44:26', '2021-02-23 06:44:26', 1, 1),
(149, 34, 'Category', 'category', 1, 1, 1, 1, 1, '2021-02-23 06:44:55', '2021-02-23 06:44:55', 1, 1),
(150, 34, 'Item', 'item', 1, 1, 1, 1, 1, '2021-02-23 06:45:44', '2021-02-23 06:45:44', 1, 1),
(151, 34, 'Purchase', 'purchase', 1, 1, 1, 1, 1, '2021-02-24 04:10:39', '2021-02-24 04:10:39', 1, 1),
(152, 34, 'Issue', 'issue', 1, 1, 1, 1, 1, '2021-02-24 04:11:33', '2021-02-24 04:11:33', 1, 1),
(153, 33, 'Purchase', 'purchase', 1, 1, 1, 1, 1, '2021-02-28 08:44:36', '2021-02-28 08:44:36', 1, 1),
(154, 33, 'Sale', 'sale', 1, 1, 1, 1, 1, '2021-02-28 08:45:41', '2021-02-28 08:45:41', 1, 1),
(155, 33, 'Issue', 'issue', 1, 1, 1, 1, 1, '2021-02-28 08:46:01', '2021-02-28 08:46:01', 1, 1),
(156, 35, 'Exam Instructions', 'instruction', 1, 1, 1, 1, 1, '2021-03-03 04:57:17', '2021-07-12 08:50:35', 1, 1),
(157, 35, 'Question Bank', 'question', 1, 1, 1, 1, 1, '2021-03-03 04:59:06', '2021-03-03 04:59:06', 1, 1),
(158, 35, 'Online Exam', 'onlineexam', 1, 1, 1, 1, 1, '2021-03-03 05:00:03', '2021-03-03 05:22:12', 1, 1),
(159, 35, 'Take Exam', 'takeexam', 1, 1, NULL, 1, 1, '2021-03-03 05:07:53', '2021-03-03 05:07:53', 1, 1),
(160, 36, 'Candidate', 'candidate', 1, 1, 1, 1, 1, '2021-03-05 09:45:08', '2021-03-05 09:45:08', 1, 1),
(161, 36, 'Donar', 'donar', 1, 1, 1, 1, 1, '2021-03-05 09:45:34', '2021-03-05 09:45:34', 1, 1),
(162, 36, 'Scholarship', 'scholarship', 1, 1, 1, 1, 1, '2021-03-05 09:46:05', '2021-03-05 09:46:05', 1, 1),
(163, 1, 'Opening Hour', 'openinghour', 1, 1, 1, NULL, 1, '2021-03-10 11:54:10', '2021-03-10 11:54:25', 1, 1),
(164, 6, 'Class Lecture', 'lecture', 1, 1, 1, 1, 1, '2021-03-12 04:52:40', '2021-03-12 04:52:40', 1, 1),
(165, 7, 'Live Class', 'liveclass', 1, 1, 1, 1, 1, '2021-03-15 05:40:38', '2021-03-15 05:40:38', 1, 1),
(166, 37, 'Lesson', 'lesson', 1, 1, 1, 1, 1, '2021-03-25 10:08:05', '2021-03-25 10:08:18', 1, 1),
(167, 37, 'Topic', 'topic', 1, 1, 1, 1, 1, '2021-03-25 10:08:47', '2021-03-25 10:08:47', 1, 1),
(168, 37, 'Lesson Plan', 'lessonplan', 1, NULL, NULL, NULL, 1, '2021-03-25 10:10:50', '2021-11-01 09:48:48', 1, 1),
(169, 7, 'Assignment', 'assignment', 1, 1, 1, 1, 1, '2021-06-07 02:44:23', '2021-06-07 02:44:23', 1, 1),
(170, 7, 'Submission', 'submission', 1, 1, 1, 1, 1, '2021-06-07 02:44:50', '2021-06-07 02:44:50', 1, 1),
(171, 21, 'Receipt', 'receipt', 1, NULL, NULL, 1, 1, '2021-06-27 17:18:58', '2021-06-27 17:18:58', 1, 1),
(172, 1, 'Global Search', 'globalsearch', 1, NULL, NULL, NULL, 1, '2021-08-26 10:17:07', '2021-08-26 10:17:07', 1, 1),
(173, 1, 'Global Session Change', 'sessionchange', 1, NULL, NULL, NULL, 1, '2021-08-26 10:17:27', '2021-08-26 10:17:27', 1, 1),
(174, 5, 'Department', 'department', 1, 1, 1, 1, 1, '2021-10-22 09:02:04', '2021-10-22 09:02:04', 1, 1),
(175, 37, 'Timeline', 'timeline', 1, NULL, 1, NULL, 1, '2021-11-01 09:46:36', '2021-11-01 09:46:36', 1, 1),
(176, 37, 'Status', 'status', 1, NULL, 1, NULL, 1, '2021-11-01 09:47:04', '2021-11-01 09:47:04', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_location` varchar(50) CHARACTER SET utf8 NOT NULL,
  `page_slug` varchar(100) CHARACTER SET utf8 NOT NULL,
  `page_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `page_description` text CHARACTER SET utf8,
  `page_image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `paypal_api_username` varchar(100) DEFAULT NULL,
  `paypal_api_password` varchar(100) DEFAULT NULL,
  `paypal_api_signature` varchar(100) DEFAULT NULL,
  `paypal_email` varchar(50) DEFAULT NULL,
  `paypal_demo` tinyint(1) DEFAULT NULL,
  `paypal_extra_charge` double(10,2) NOT NULL,
  `paypal_status` tinyint(1) DEFAULT NULL,
  `stripe_secret` varchar(100) DEFAULT NULL,
  `stripe_demo` tinyint(1) DEFAULT NULL,
  `stripe_extra_charge` double(10,2) NOT NULL,
  `stripe_status` tinyint(1) DEFAULT NULL,
  `payumoney_key` varchar(100) DEFAULT NULL,
  `payumoney_salt` varchar(100) DEFAULT NULL,
  `payumoney_demo` tinyint(1) DEFAULT NULL,
  `payu_extra_charge` double(10,2) NOT NULL,
  `payumoney_status` tinyint(1) DEFAULT NULL,
  `ccavenue_key` varchar(100) DEFAULT NULL,
  `ccavenue_salt` varchar(100) DEFAULT NULL,
  `ccavenue_demo` tinyint(1) NOT NULL DEFAULT '1',
  `ccavenue_extra_charge` double(10,2) NOT NULL,
  `ccavenue_status` tinyint(1) NOT NULL,
  `paytm_merchant_key` varchar(100) DEFAULT NULL,
  `paytm_merchant_mid` varchar(100) DEFAULT NULL,
  `paytm_merchant_website` varchar(255) DEFAULT NULL,
  `paytm_industry_type` varchar(100) DEFAULT NULL,
  `paytm_demo` tinyint(1) NOT NULL,
  `paytm_extra_charge` double(10,2) NOT NULL,
  `paytm_status` tinyint(1) NOT NULL,
  `stack_secret_key` varchar(120) DEFAULT NULL,
  `stack_public_key` varchar(120) DEFAULT NULL,
  `stack_demo` tinyint(1) DEFAULT NULL,
  `stack_extra_charge` double(10,2) DEFAULT NULL,
  `stack_status` tinyint(1) DEFAULT NULL,
  `dbbl_userid` varchar(50) DEFAULT NULL,
  `dbbl_password` varchar(50) DEFAULT NULL,
  `dbbl_submername` varchar(50) DEFAULT NULL,
  `dbbl_submerid` varchar(50) DEFAULT NULL,
  `dbbl_terminalid` varchar(50) DEFAULT NULL,
  `dbbl_extra_charge` double(10,2) NOT NULL,
  `dbbl_demo` tinyint(1) NOT NULL,
  `dbbl_status` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `paypal_api_username`, `paypal_api_password`, `paypal_api_signature`, `paypal_email`, `paypal_demo`, `paypal_extra_charge`, `paypal_status`, `stripe_secret`, `stripe_demo`, `stripe_extra_charge`, `stripe_status`, `payumoney_key`, `payumoney_salt`, `payumoney_demo`, `payu_extra_charge`, `payumoney_status`, `ccavenue_key`, `ccavenue_salt`, `ccavenue_demo`, `ccavenue_extra_charge`, `ccavenue_status`, `paytm_merchant_key`, `paytm_merchant_mid`, `paytm_merchant_website`, `paytm_industry_type`, `paytm_demo`, `paytm_extra_charge`, `paytm_status`, `stack_secret_key`, `stack_public_key`, `stack_demo`, `stack_extra_charge`, `stack_status`, `dbbl_userid`, `dbbl_password`, `dbbl_submername`, `dbbl_submerid`, `dbbl_terminalid`, `dbbl_extra_charge`, `dbbl_demo`, `dbbl_status`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, NULL, NULL, NULL, '', 1, 5.00, 0, NULL, NULL, 0.00, NULL, '', '', 0, 4.00, 0, NULL, NULL, 1, 0.00, 0, '', '', '', '', 0, 5.00, 1, 'test', 'test', 0, 2.00, 1, '', '', '', '', '', 5.00, 0, 0, 1, '2019-09-29 23:39:56', '2021-11-21 18:16:46', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phone_call_logs`
--

CREATE TABLE `phone_call_logs` (
  `id` int(11) NOT NULL,
  `call_type` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `call_duration` varchar(50) DEFAULT NULL,
  `call_date` date DEFAULT NULL,
  `next_follow_up` date DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `postal_dispatches`
--

CREATE TABLE `postal_dispatches` (
  `id` int(11) NOT NULL,
  `to_title` varchar(120) DEFAULT NULL,
  `reference` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `from_title` varchar(120) DEFAULT NULL,
  `dispatch_date` date DEFAULT NULL,
  `attachment` varchar(120) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `postal_receives`
--

CREATE TABLE `postal_receives` (
  `id` int(11) NOT NULL,
  `from_title` varchar(120) DEFAULT NULL,
  `reference` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `receive_date` date DEFAULT NULL,
  `to_title` varchar(120) NOT NULL,
  `attachment` varchar(120) DEFAULT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `is_add` tinyint(1) NOT NULL,
  `is_edit` tinyint(1) NOT NULL,
  `is_view` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(2, 1, 2, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(3, 1, 3, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(4, 1, 4, 0, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(5, 1, 5, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(6, 1, 6, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(7, 1, 7, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(8, 1, 8, 0, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(9, 1, 64, 0, 1, 0, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(10, 1, 65, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(11, 1, 63, 0, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(12, 1, 10, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(13, 1, 11, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(14, 1, 12, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(15, 1, 14, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(16, 1, 15, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(17, 1, 16, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(18, 1, 17, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(19, 1, 18, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(20, 1, 19, 1, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(21, 1, 20, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(22, 1, 21, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(23, 1, 23, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(24, 1, 24, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(25, 1, 25, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(26, 1, 26, 1, 1, 1, 1, 1, '2021-11-01 05:47:25', '2021-11-01 05:47:25', 1, 1),
(27, 1, 27, 1, 1, 1, 1, 1, '2018-01-13 09:07:29', '0000-00-00 00:00:00', 2, 0),
(28, 1, 28, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(29, 1, 29, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(30, 1, 30, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(31, 1, 31, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(32, 1, 32, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(33, 1, 33, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(34, 1, 34, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(35, 1, 35, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(36, 1, 67, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(37, 1, 68, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(38, 1, 37, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(39, 1, 38, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(40, 1, 66, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(41, 1, 40, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(42, 1, 41, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(43, 1, 42, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(44, 1, 43, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(45, 1, 44, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(46, 1, 45, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(47, 1, 46, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(48, 1, 47, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(49, 1, 48, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(50, 1, 50, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(51, 1, 51, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(52, 1, 52, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(53, 1, 53, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(54, 1, 54, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(55, 1, 55, 1, 1, 1, 1, 1, '2017-12-23 22:10:34', '0000-00-00 00:00:00', 1, 0),
(56, 1, 56, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(57, 1, 57, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(58, 1, 58, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(59, 1, 59, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(60, 1, 60, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(61, 1, 61, 1, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(62, 1, 62, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(63, 3, 1, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(64, 3, 2, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(65, 3, 3, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(66, 3, 4, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(67, 3, 5, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(68, 3, 6, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(69, 3, 7, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(70, 3, 8, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(71, 3, 64, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(72, 3, 65, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(73, 3, 63, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(74, 3, 10, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(75, 3, 11, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(76, 3, 12, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(77, 3, 14, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(78, 3, 15, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(79, 3, 16, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(80, 3, 17, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(81, 3, 18, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(82, 3, 19, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(83, 3, 20, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(84, 3, 21, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(85, 3, 23, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(86, 3, 24, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(87, 3, 25, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(88, 3, 26, 0, 0, 1, 0, 1, '2021-02-18 15:53:46', '2021-02-18 15:53:46', 1, 1),
(89, 3, 27, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(90, 3, 28, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(91, 3, 29, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(92, 3, 30, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(93, 3, 31, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(94, 3, 32, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(95, 3, 33, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(96, 3, 34, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(97, 3, 35, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(98, 3, 67, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(99, 3, 68, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(100, 3, 37, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(101, 3, 38, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(102, 3, 66, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(103, 3, 40, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(104, 3, 41, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(105, 3, 42, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(106, 3, 43, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(107, 3, 44, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(108, 3, 45, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(109, 3, 46, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(110, 3, 47, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(111, 3, 48, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(112, 3, 50, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(113, 3, 51, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(114, 3, 52, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(115, 3, 53, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(116, 3, 54, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(117, 3, 55, 1, 1, 0, 1, 1, '2018-01-03 07:12:55', '0000-00-00 00:00:00', 1, 0),
(118, 3, 56, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(119, 3, 57, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(120, 3, 58, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(121, 3, 59, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(122, 3, 60, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(123, 3, 61, 1, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(124, 3, 62, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(125, 1, 69, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(126, 5, 1, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(127, 5, 2, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(128, 5, 3, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(129, 5, 4, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(130, 5, 5, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(131, 5, 6, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(132, 5, 7, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(133, 5, 8, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(134, 5, 64, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(135, 5, 65, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(136, 5, 63, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(137, 5, 10, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(138, 5, 11, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(139, 5, 12, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(140, 5, 14, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(141, 5, 15, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(142, 5, 16, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(143, 5, 17, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(144, 5, 18, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(145, 5, 19, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(146, 5, 20, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(147, 5, 21, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(148, 5, 23, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(149, 5, 24, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(150, 5, 25, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(151, 5, 26, 1, 1, 1, 0, 1, '2021-11-01 05:49:39', '2021-11-01 05:49:39', 1, 1),
(152, 5, 27, 1, 1, 1, 0, 1, '2018-01-13 09:46:35', '0000-00-00 00:00:00', 1, 0),
(153, 5, 28, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(154, 5, 29, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(155, 5, 30, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(156, 5, 31, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(157, 5, 32, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(158, 5, 33, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(159, 5, 34, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(160, 5, 35, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(161, 5, 67, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(162, 5, 68, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(163, 5, 37, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(164, 5, 38, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(165, 5, 66, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(166, 5, 40, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(167, 5, 41, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(168, 5, 42, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(169, 5, 43, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(170, 5, 44, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(171, 5, 45, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(172, 5, 47, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(173, 5, 48, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(174, 5, 69, 1, 1, 1, 1, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(175, 5, 50, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(176, 5, 51, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(177, 5, 52, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(178, 5, 53, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(179, 5, 54, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(180, 5, 56, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(181, 5, 57, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(182, 5, 58, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(183, 5, 59, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(184, 5, 60, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(185, 5, 61, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(186, 5, 62, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(187, 13, 1, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(188, 13, 2, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(189, 13, 3, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(190, 13, 4, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(191, 13, 5, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(192, 13, 6, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(193, 13, 7, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(194, 13, 8, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(195, 13, 64, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(196, 13, 65, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(197, 13, 63, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(198, 13, 10, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(199, 13, 11, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(200, 13, 12, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(201, 13, 14, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(202, 13, 15, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(203, 13, 16, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(204, 13, 17, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(205, 13, 18, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(206, 13, 19, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(207, 13, 20, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(208, 13, 21, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(209, 13, 23, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(210, 13, 24, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(211, 13, 25, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(212, 13, 26, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(213, 13, 27, 0, 0, 0, 0, 1, '2018-02-04 04:46:43', '0000-00-00 00:00:00', 1, 0),
(214, 13, 28, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(215, 13, 29, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(216, 13, 30, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(217, 13, 31, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(218, 13, 32, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(219, 13, 33, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(220, 13, 34, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(221, 13, 35, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(222, 13, 67, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(223, 13, 68, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(224, 13, 37, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(225, 13, 38, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(226, 13, 66, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(227, 13, 40, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(228, 13, 41, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(229, 13, 42, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(230, 13, 43, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(231, 13, 44, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(232, 13, 45, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(233, 13, 47, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(234, 13, 48, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(235, 13, 69, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(236, 13, 50, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(237, 13, 51, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(238, 13, 52, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(239, 13, 53, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(240, 13, 54, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(241, 13, 56, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(242, 13, 57, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(243, 13, 58, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(244, 13, 59, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(245, 13, 60, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(246, 13, 61, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(247, 13, 62, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(248, 3, 69, 1, 1, 1, 1, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(249, 2, 1, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(250, 2, 2, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(251, 2, 3, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(252, 2, 4, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(253, 2, 5, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(254, 2, 6, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(255, 2, 7, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(256, 2, 8, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(257, 2, 64, 0, 1, 0, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(258, 2, 65, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(259, 2, 63, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(260, 2, 10, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(261, 2, 11, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(262, 2, 12, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(263, 2, 14, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(264, 2, 15, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(265, 2, 16, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(266, 2, 17, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(267, 2, 18, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(268, 2, 19, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(269, 2, 20, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(270, 2, 21, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(271, 2, 23, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(272, 2, 24, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(273, 2, 25, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(274, 2, 26, 1, 1, 1, 0, 1, '2021-11-01 05:48:25', '2021-11-01 05:48:25', 1, 1),
(275, 2, 28, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(276, 2, 29, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(277, 2, 30, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(278, 2, 31, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(279, 2, 32, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(280, 2, 33, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(281, 2, 34, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(282, 2, 35, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(283, 2, 67, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(284, 2, 68, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(285, 2, 37, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(286, 2, 38, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(287, 2, 66, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(288, 2, 40, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(289, 2, 41, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(290, 2, 42, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(291, 2, 43, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(292, 2, 44, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(293, 2, 45, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(294, 2, 47, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(295, 2, 48, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(296, 2, 69, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(297, 2, 50, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(298, 2, 51, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(299, 2, 52, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(300, 2, 53, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(301, 2, 54, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(302, 2, 56, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(303, 2, 57, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(304, 2, 58, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(305, 2, 59, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(306, 2, 60, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(307, 2, 61, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(308, 2, 62, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(309, 4, 1, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(310, 4, 2, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(311, 4, 3, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(312, 4, 4, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(313, 4, 5, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(314, 4, 6, 0, 0, 1, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(315, 4, 7, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(316, 4, 8, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(317, 4, 64, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(318, 4, 65, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(319, 4, 63, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(320, 4, 10, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(321, 4, 11, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(322, 4, 12, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(323, 4, 14, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(324, 4, 15, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(325, 4, 16, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(326, 4, 17, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(327, 4, 18, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(328, 4, 19, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(329, 4, 20, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(330, 4, 21, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(331, 4, 23, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(332, 4, 24, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(333, 4, 25, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(334, 4, 26, 0, 0, 1, 0, 1, '2021-11-02 09:12:46', '2021-11-02 09:12:46', 1, 1),
(335, 4, 28, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(336, 4, 29, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(337, 4, 30, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(338, 4, 31, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(339, 4, 32, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(340, 4, 33, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(341, 4, 34, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(342, 4, 35, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(343, 4, 67, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(344, 4, 68, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(345, 4, 37, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(346, 4, 38, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(347, 4, 66, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(348, 4, 40, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(349, 4, 41, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(350, 4, 42, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(351, 4, 43, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(352, 4, 44, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(353, 4, 45, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(354, 4, 47, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(355, 4, 48, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(356, 4, 69, 1, 1, 1, 1, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(357, 4, 50, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(358, 4, 51, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(359, 4, 52, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(360, 4, 53, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(361, 4, 54, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(362, 4, 56, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(363, 4, 57, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(364, 4, 58, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(365, 4, 59, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(366, 4, 60, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(367, 4, 61, 1, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(368, 4, 62, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(369, 6, 1, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(370, 6, 2, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(371, 6, 3, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(372, 6, 4, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(373, 6, 5, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(374, 6, 6, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(375, 6, 7, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(376, 6, 8, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(377, 6, 64, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(378, 6, 65, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(379, 6, 63, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(380, 6, 10, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(381, 6, 11, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(382, 6, 12, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(383, 6, 14, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(384, 6, 15, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(385, 6, 16, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(386, 6, 17, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(387, 6, 18, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(388, 6, 19, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(389, 6, 20, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(390, 6, 21, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(391, 6, 23, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(392, 6, 24, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(393, 6, 25, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(394, 6, 26, 0, 0, 0, 0, 1, '2019-11-10 08:17:41', '2019-11-10 08:17:41', 1, 1),
(395, 6, 28, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(396, 6, 29, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(397, 6, 30, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(398, 6, 31, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(399, 6, 32, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(400, 6, 33, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(401, 6, 34, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(402, 6, 35, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(403, 6, 67, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(404, 6, 68, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(405, 6, 37, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(406, 6, 38, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(407, 6, 66, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(408, 6, 40, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(409, 6, 41, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(410, 6, 42, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(411, 6, 43, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(412, 6, 44, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(413, 6, 45, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(414, 6, 47, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(415, 6, 48, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(416, 6, 69, 1, 1, 1, 1, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(417, 6, 50, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(418, 6, 51, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(419, 6, 52, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(420, 6, 53, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(421, 6, 54, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(422, 6, 56, 1, 1, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(423, 6, 57, 1, 1, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(424, 6, 58, 1, 1, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(425, 6, 59, 1, 1, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(426, 6, 60, 1, 1, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(427, 6, 61, 1, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(428, 6, 62, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(429, 7, 1, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(430, 7, 2, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(431, 7, 3, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(432, 7, 4, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(433, 7, 5, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(434, 7, 6, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(435, 7, 7, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(436, 7, 8, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(437, 7, 64, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(438, 7, 65, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(439, 7, 63, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(440, 7, 10, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(441, 7, 11, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(442, 7, 12, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(443, 7, 14, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(444, 7, 15, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(445, 7, 16, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(446, 7, 17, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(447, 7, 18, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(448, 7, 19, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(449, 7, 20, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(450, 7, 21, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(451, 7, 23, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(452, 7, 24, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(453, 7, 25, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(454, 7, 26, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(455, 7, 28, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(456, 7, 29, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(457, 7, 30, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(458, 7, 31, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(459, 7, 32, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(460, 7, 33, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(461, 7, 34, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(462, 7, 35, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(463, 7, 67, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(464, 7, 68, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(465, 7, 37, 1, 1, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(466, 7, 38, 1, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(467, 7, 66, 1, 1, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(468, 7, 40, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(469, 7, 41, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(470, 7, 42, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(471, 7, 43, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(472, 7, 44, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(473, 7, 45, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(474, 7, 47, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(475, 7, 48, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(476, 7, 69, 1, 1, 1, 1, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(477, 7, 50, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(478, 7, 51, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(479, 7, 52, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(480, 7, 53, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(481, 7, 54, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(482, 7, 56, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(483, 7, 57, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(484, 7, 58, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(485, 7, 59, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(486, 7, 60, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(487, 7, 61, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(488, 7, 62, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(489, 8, 1, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(490, 8, 2, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(491, 8, 3, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(492, 8, 4, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(493, 8, 5, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(494, 8, 6, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(495, 8, 7, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(496, 8, 8, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(497, 8, 64, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(498, 8, 65, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(499, 8, 63, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(500, 8, 10, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(501, 8, 11, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(502, 8, 12, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(503, 8, 14, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(504, 8, 15, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(505, 8, 16, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(506, 8, 17, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(507, 8, 18, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(508, 8, 19, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(509, 8, 20, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(510, 8, 21, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(511, 8, 23, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(512, 8, 24, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(513, 8, 25, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(514, 8, 26, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(515, 8, 28, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(516, 8, 29, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(517, 8, 30, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(518, 8, 31, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(519, 8, 32, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(520, 8, 33, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(521, 8, 34, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(522, 8, 35, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(523, 8, 67, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(524, 8, 68, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(525, 8, 37, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(526, 8, 38, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(527, 8, 66, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(528, 8, 40, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(529, 8, 41, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(530, 8, 42, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(531, 8, 43, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(532, 8, 44, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(533, 8, 45, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(534, 8, 47, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(535, 8, 48, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(536, 8, 69, 1, 1, 1, 1, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(537, 8, 50, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(538, 8, 51, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(539, 8, 52, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(540, 8, 53, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(541, 8, 54, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(542, 8, 56, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(543, 8, 57, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(544, 8, 58, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(545, 8, 59, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(546, 8, 60, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(547, 8, 61, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(548, 8, 62, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(549, 9, 1, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(550, 9, 2, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(551, 9, 3, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(552, 9, 4, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(553, 9, 5, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(554, 9, 6, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(555, 9, 7, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(556, 9, 8, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(557, 9, 64, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(558, 9, 65, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(559, 9, 63, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(560, 9, 10, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(561, 9, 11, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(562, 9, 12, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(563, 9, 14, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(564, 9, 15, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(565, 9, 16, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(566, 9, 17, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(567, 9, 18, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(568, 9, 19, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(569, 9, 20, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(570, 9, 21, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(571, 9, 23, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(572, 9, 24, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(573, 9, 25, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(574, 9, 26, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(575, 9, 28, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(576, 9, 29, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(577, 9, 30, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(578, 9, 31, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(579, 9, 32, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(580, 9, 33, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(581, 9, 34, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(582, 9, 35, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(583, 9, 67, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(584, 9, 68, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(585, 9, 37, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(586, 9, 38, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(587, 9, 66, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(588, 9, 40, 0, 0, 1, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(589, 9, 41, 0, 0, 1, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(590, 9, 42, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(591, 9, 43, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(592, 9, 44, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(593, 9, 45, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(594, 9, 47, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(595, 9, 48, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(596, 9, 69, 1, 1, 1, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(597, 9, 50, 0, 0, 1, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(598, 9, 51, 0, 0, 1, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(599, 9, 52, 0, 0, 1, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(600, 9, 53, 0, 0, 1, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(601, 9, 54, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(602, 9, 56, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(603, 9, 57, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(604, 9, 58, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(605, 9, 59, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(606, 9, 60, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(607, 9, 61, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(608, 9, 62, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(609, 1, 70, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(610, 1, 71, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(611, 1, 72, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(612, 1, 73, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(613, 1, 74, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(614, 1, 75, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(615, 1, 76, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(616, 1, 77, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(617, 1, 78, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(618, 4, 70, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(619, 4, 71, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(620, 4, 72, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(621, 4, 73, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(622, 4, 74, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(623, 4, 77, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(624, 4, 75, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(625, 4, 76, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(626, 4, 78, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(696, 3, 70, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(697, 3, 71, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(698, 3, 72, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(699, 3, 73, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(700, 3, 74, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(701, 3, 77, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1);
INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(702, 3, 75, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(703, 3, 76, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(704, 3, 78, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(705, 9, 70, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(706, 9, 71, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(707, 9, 72, 0, 0, 1, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(708, 9, 73, 0, 0, 1, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(709, 9, 74, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(710, 9, 77, 0, 0, 1, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(711, 9, 75, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(712, 9, 76, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(713, 9, 78, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(714, 8, 70, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(715, 8, 71, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(716, 8, 72, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(717, 8, 73, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(718, 8, 74, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(719, 8, 77, 0, 0, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(720, 8, 75, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(721, 8, 76, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(722, 8, 78, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(723, 7, 70, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(724, 7, 71, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(725, 7, 72, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(726, 7, 73, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(727, 7, 74, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(728, 7, 77, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(729, 7, 75, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(730, 7, 76, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(731, 7, 78, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(732, 6, 70, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(733, 6, 71, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(734, 6, 72, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(735, 6, 73, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(736, 6, 74, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(737, 6, 77, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(738, 6, 75, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(739, 6, 76, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(740, 6, 78, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(741, 2, 70, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(742, 2, 71, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(743, 2, 72, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(744, 2, 73, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(745, 2, 74, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(746, 2, 77, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(747, 2, 75, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(748, 2, 76, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(749, 2, 78, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(750, 13, 70, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(751, 13, 71, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(752, 13, 72, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(753, 13, 73, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(754, 13, 74, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(755, 13, 77, 0, 0, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(756, 13, 75, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(757, 13, 76, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(758, 13, 78, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(759, 5, 70, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(760, 5, 71, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(761, 5, 72, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(762, 5, 73, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(763, 5, 74, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(764, 5, 77, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(765, 5, 75, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(766, 5, 76, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(767, 5, 78, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(768, 1, 79, 1, 1, 1, 1, 1, '2019-09-30 12:22:01', '2019-09-30 12:22:01', 1, 1),
(769, 1, 80, 1, 1, 1, 1, 1, '2019-09-30 12:22:01', '2019-09-30 12:22:01', 1, 1),
(770, 1, 81, 0, 0, 1, 0, 1, '2019-09-30 12:22:01', '2019-09-30 12:22:01', 1, 1),
(771, 1, 82, 1, 1, 1, 0, 1, '2019-09-30 12:22:01', '2019-09-30 12:22:01', 1, 1),
(772, 1, 83, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(773, 1, 84, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(774, 1, 85, 0, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(775, 1, 86, 1, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(776, 1, 87, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(777, 1, 88, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(778, 1, 89, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(779, 1, 90, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(780, 1, 91, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(781, 1, 92, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(796, 1, 93, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(797, 1, 94, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(798, 2, 83, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(799, 2, 84, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(800, 2, 85, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(801, 2, 93, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(802, 2, 86, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(803, 2, 94, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(804, 2, 87, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(805, 2, 88, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(806, 2, 81, 0, 0, 1, 0, 1, '2018-12-07 01:43:14', '0000-00-00 00:00:00', 1, 0),
(807, 2, 82, 1, 1, 1, 0, 1, '2018-12-07 01:43:14', '0000-00-00 00:00:00', 1, 0),
(808, 2, 91, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(809, 2, 92, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(810, 2, 79, 1, 1, 1, 0, 1, '2018-12-07 01:43:14', '0000-00-00 00:00:00', 1, 0),
(811, 2, 80, 1, 1, 1, 0, 1, '2018-12-07 01:43:14', '0000-00-00 00:00:00', 1, 0),
(812, 2, 89, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(813, 2, 90, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(814, 1, 95, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(815, 2, 95, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(816, 3, 83, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(817, 3, 84, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(818, 3, 85, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(819, 3, 93, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(820, 3, 86, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(821, 3, 94, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(822, 3, 87, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(823, 3, 88, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(824, 3, 81, 0, 0, 0, 0, 1, '2018-12-07 01:28:22', '0000-00-00 00:00:00', 1, 0),
(825, 3, 82, 0, 0, 0, 0, 1, '2018-12-07 01:28:22', '0000-00-00 00:00:00', 1, 0),
(826, 3, 91, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(827, 3, 92, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(828, 3, 95, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(829, 3, 79, 0, 0, 0, 0, 1, '2018-12-07 01:28:22', '0000-00-00 00:00:00', 1, 0),
(830, 3, 80, 0, 0, 0, 0, 1, '2018-12-07 01:28:22', '0000-00-00 00:00:00', 1, 0),
(831, 3, 89, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(832, 3, 90, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(833, 4, 83, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(834, 4, 84, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(835, 4, 85, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(836, 4, 93, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(837, 4, 86, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(838, 4, 94, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(839, 4, 87, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(840, 4, 88, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(841, 4, 81, 0, 0, 0, 0, 1, '2018-08-09 17:39:04', '0000-00-00 00:00:00', 1, 0),
(842, 4, 82, 0, 0, 0, 0, 1, '2018-08-09 17:39:04', '0000-00-00 00:00:00', 1, 0),
(843, 4, 91, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(844, 4, 92, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(845, 4, 95, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(846, 4, 79, 0, 0, 0, 0, 1, '2018-08-09 17:39:04', '0000-00-00 00:00:00', 1, 0),
(847, 4, 80, 0, 0, 0, 0, 1, '2018-08-09 17:39:04', '0000-00-00 00:00:00', 1, 0),
(848, 4, 89, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(849, 4, 90, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(850, 5, 83, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(851, 5, 84, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(852, 5, 85, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(853, 5, 93, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(854, 5, 86, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(855, 5, 94, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(856, 5, 87, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(857, 5, 88, 1, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(858, 5, 81, 0, 0, 0, 0, 1, '2018-08-04 14:01:59', '0000-00-00 00:00:00', 1, 0),
(859, 5, 82, 0, 0, 0, 0, 1, '2018-08-04 14:01:59', '0000-00-00 00:00:00', 1, 0),
(860, 5, 91, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(861, 5, 92, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(862, 5, 95, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(863, 5, 79, 0, 0, 0, 0, 1, '2018-08-04 14:01:59', '0000-00-00 00:00:00', 1, 0),
(864, 5, 80, 0, 0, 0, 0, 1, '2018-08-04 14:01:59', '0000-00-00 00:00:00', 1, 0),
(865, 5, 89, 1, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(866, 5, 90, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(867, 6, 83, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(868, 6, 84, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(869, 6, 85, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(870, 6, 93, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(871, 6, 86, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(872, 6, 94, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(873, 6, 87, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(874, 6, 88, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(875, 6, 81, 0, 0, 0, 0, 1, '2018-08-04 14:03:48', '0000-00-00 00:00:00', 1, 0),
(876, 6, 82, 0, 0, 0, 0, 1, '2018-08-04 14:03:48', '0000-00-00 00:00:00', 1, 0),
(877, 6, 91, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(878, 6, 92, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(879, 6, 95, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(880, 6, 79, 1, 1, 1, 0, 1, '2018-08-04 14:03:48', '0000-00-00 00:00:00', 1, 0),
(881, 6, 80, 1, 1, 1, 0, 1, '2018-08-04 14:03:48', '0000-00-00 00:00:00', 1, 0),
(882, 6, 89, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(883, 6, 90, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(884, 7, 83, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(885, 7, 84, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(886, 7, 85, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(887, 7, 93, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(888, 7, 86, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(889, 7, 94, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(890, 7, 87, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(891, 7, 88, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(892, 7, 81, 0, 0, 0, 0, 1, '2018-08-04 14:04:22', '0000-00-00 00:00:00', 1, 0),
(893, 7, 82, 0, 0, 0, 0, 1, '2018-08-04 14:04:22', '0000-00-00 00:00:00', 1, 0),
(894, 7, 91, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(895, 7, 92, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(896, 7, 95, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(897, 7, 79, 0, 0, 0, 0, 1, '2018-08-04 14:04:22', '0000-00-00 00:00:00', 1, 0),
(898, 7, 80, 0, 0, 0, 0, 1, '2018-08-04 14:04:22', '0000-00-00 00:00:00', 1, 0),
(899, 7, 89, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(900, 7, 90, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(901, 8, 83, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(902, 8, 84, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(903, 8, 85, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(904, 8, 93, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(905, 8, 86, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(906, 8, 94, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(907, 8, 87, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(908, 8, 88, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(909, 8, 81, 0, 0, 0, 0, 1, '2018-08-04 14:49:46', '0000-00-00 00:00:00', 1, 0),
(910, 8, 82, 0, 0, 0, 0, 1, '2018-08-04 14:49:46', '0000-00-00 00:00:00', 1, 0),
(911, 8, 91, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(912, 8, 92, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(913, 8, 95, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(914, 8, 79, 0, 0, 0, 0, 1, '2018-08-04 14:49:47', '0000-00-00 00:00:00', 1, 0),
(915, 8, 80, 0, 0, 0, 0, 1, '2018-08-04 14:49:47', '0000-00-00 00:00:00', 1, 0),
(916, 8, 89, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(917, 8, 90, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(918, 9, 83, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(919, 9, 84, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(920, 9, 85, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(921, 9, 93, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(922, 9, 86, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(923, 9, 94, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(924, 9, 87, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(925, 9, 88, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(926, 9, 81, 0, 0, 0, 0, 1, '2018-08-04 14:50:32', '0000-00-00 00:00:00', 1, 0),
(927, 9, 82, 0, 0, 0, 0, 1, '2018-08-04 14:50:32', '0000-00-00 00:00:00', 1, 0),
(928, 9, 91, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(929, 9, 92, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(930, 9, 95, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(931, 9, 79, 0, 0, 0, 0, 1, '2018-08-04 14:50:32', '0000-00-00 00:00:00', 1, 0),
(932, 9, 80, 0, 0, 0, 0, 1, '2018-08-04 14:50:32', '0000-00-00 00:00:00', 1, 0),
(933, 9, 89, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(934, 9, 90, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(935, 13, 83, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(936, 13, 84, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(937, 13, 85, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(938, 13, 93, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(939, 13, 86, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(940, 13, 94, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(941, 13, 87, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(942, 13, 88, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(943, 13, 81, 0, 0, 0, 0, 1, '2018-08-04 14:51:02', '0000-00-00 00:00:00', 1, 0),
(944, 13, 82, 0, 0, 0, 0, 1, '2018-08-04 14:51:02', '0000-00-00 00:00:00', 1, 0),
(945, 13, 91, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(946, 13, 92, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(947, 13, 95, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(948, 13, 79, 0, 0, 0, 0, 1, '2018-08-04 14:51:02', '0000-00-00 00:00:00', 1, 0),
(949, 13, 80, 0, 0, 0, 0, 1, '2018-08-04 14:51:02', '0000-00-00 00:00:00', 1, 0),
(950, 13, 89, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(951, 13, 90, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(952, 1, 96, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(953, 3, 96, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(954, 3, 97, 1, 1, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(955, 1, 97, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(956, 1, 98, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(957, 2, 96, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(958, 2, 97, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(959, 2, 98, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1353, 6, 109, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1352, 6, 137, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1351, 6, 134, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1350, 6, 110, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1349, 6, 102, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1348, 6, 108, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1347, 6, 136, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1346, 6, 135, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1345, 6, 101, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1344, 6, 106, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1343, 5, 126, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1342, 5, 125, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1341, 5, 124, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1340, 5, 123, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1339, 5, 122, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1338, 5, 121, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1337, 5, 120, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1336, 5, 119, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1335, 5, 118, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1334, 5, 117, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1333, 5, 116, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1332, 5, 115, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1115, 1, 137, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1114, 2, 126, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1113, 2, 125, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1112, 2, 124, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1111, 2, 123, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1110, 2, 122, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1109, 2, 121, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1108, 2, 120, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1107, 2, 119, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1106, 2, 118, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1105, 2, 117, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1104, 2, 116, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1103, 2, 115, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1102, 2, 114, 1, 1, 1, 0, 1, '2021-11-01 05:48:25', '2021-11-01 05:48:25', 1, 1),
(1101, 2, 113, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1100, 2, 112, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1099, 2, 111, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1098, 2, 107, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1097, 2, 104, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1096, 2, 99, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1095, 2, 133, 1, 1, 1, 0, 1, '2021-11-01 05:48:25', '2021-11-01 05:48:25', 1, 1),
(1094, 2, 132, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1093, 2, 131, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1092, 2, 130, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1091, 2, 129, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1090, 2, 109, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1089, 2, 134, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1088, 2, 110, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1087, 2, 102, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1086, 2, 108, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1085, 2, 136, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1084, 2, 135, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1083, 2, 101, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1082, 2, 106, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1081, 1, 136, 0, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1080, 1, 126, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1079, 1, 125, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1078, 1, 124, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1077, 1, 123, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1076, 1, 122, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1075, 1, 121, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1074, 1, 120, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1073, 1, 119, 0, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1072, 1, 118, 0, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1071, 1, 117, 0, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1070, 1, 116, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1069, 1, 115, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1068, 1, 114, 1, 1, 1, 1, 1, '2021-11-01 05:47:25', '2021-11-01 05:47:25', 1, 1),
(1067, 1, 113, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1066, 1, 112, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1065, 1, 111, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1064, 1, 107, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1063, 1, 104, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1062, 1, 99, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1061, 1, 133, 1, 1, 1, 1, 1, '2021-11-01 05:47:25', '2021-11-01 05:47:25', 1, 1),
(1060, 1, 132, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1059, 1, 131, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1058, 1, 130, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1057, 1, 129, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1056, 1, 109, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1055, 1, 134, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1054, 1, 110, 0, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1053, 1, 102, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1052, 1, 108, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1051, 1, 135, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1050, 1, 101, 0, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1049, 1, 106, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1331, 5, 114, 0, 0, 0, 0, 1, '2021-11-01 05:49:40', '2021-11-01 05:49:40', 1, 1),
(1330, 5, 113, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1329, 5, 112, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1328, 5, 111, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1327, 5, 107, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1326, 5, 104, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1325, 5, 99, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1324, 5, 98, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1323, 5, 97, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1322, 5, 96, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1321, 5, 133, 0, 0, 0, 0, 1, '2021-11-01 05:49:40', '2021-11-01 05:49:40', 1, 1),
(1320, 5, 132, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1319, 5, 131, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1318, 5, 130, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1317, 5, 129, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1316, 5, 109, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1315, 5, 137, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1314, 5, 134, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1313, 5, 110, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1312, 5, 102, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1311, 5, 108, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1310, 5, 136, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1309, 5, 135, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1308, 5, 101, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1307, 5, 106, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1306, 4, 126, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1305, 4, 125, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1304, 4, 124, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1303, 4, 123, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1302, 4, 122, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1301, 4, 121, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1300, 4, 120, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1299, 4, 119, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1298, 4, 118, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1297, 4, 117, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1296, 4, 116, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1295, 4, 115, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1294, 4, 114, 0, 0, 0, 0, 1, '2021-11-02 09:12:46', '2021-11-02 09:12:46', 1, 1),
(1293, 4, 113, 1, 1, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1292, 4, 112, 1, 1, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1291, 4, 111, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1290, 4, 107, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1289, 4, 104, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1288, 4, 99, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1287, 4, 98, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1286, 4, 97, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1285, 4, 96, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1284, 4, 133, 0, 0, 0, 0, 1, '2021-11-02 09:12:46', '2021-11-02 09:12:46', 1, 1),
(1283, 4, 132, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1282, 4, 131, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1281, 4, 130, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1280, 4, 129, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1279, 4, 109, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1278, 4, 137, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1277, 4, 134, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1276, 4, 110, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1275, 4, 102, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1274, 4, 108, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1273, 4, 136, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1272, 4, 135, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1271, 4, 101, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1270, 4, 106, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(1269, 3, 126, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1268, 3, 125, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1267, 3, 124, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1266, 3, 123, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1265, 3, 122, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1264, 3, 121, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1263, 3, 120, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1262, 3, 119, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1261, 3, 118, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1260, 3, 117, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1259, 3, 116, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1258, 3, 115, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1257, 3, 114, 0, 0, 0, 0, 1, '2021-02-18 15:53:46', '2021-02-18 15:53:46', 1, 1),
(1256, 3, 113, 1, 1, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1255, 3, 112, 1, 1, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1254, 3, 111, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1253, 3, 107, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1252, 3, 104, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1251, 3, 99, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1250, 3, 98, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1249, 3, 133, 0, 0, 0, 0, 1, '2021-02-18 15:53:46', '2021-02-18 15:53:46', 1, 1),
(1248, 3, 132, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1247, 3, 131, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1246, 3, 130, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1245, 3, 129, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1244, 3, 109, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1243, 3, 137, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1242, 3, 134, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1241, 3, 110, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1240, 3, 102, 1, 1, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1239, 3, 108, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1238, 3, 136, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1237, 3, 135, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1236, 3, 101, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1235, 3, 106, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1354, 6, 129, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1355, 6, 130, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1356, 6, 131, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1357, 6, 132, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1358, 6, 133, 0, 0, 0, 0, 1, '2019-11-10 08:17:42', '2019-11-10 08:17:42', 1, 1),
(1359, 6, 96, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1360, 6, 97, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1361, 6, 98, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1362, 6, 99, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1363, 6, 104, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1364, 6, 107, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1365, 6, 111, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1366, 6, 112, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1367, 6, 113, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1368, 6, 114, 0, 0, 0, 0, 1, '2019-11-10 08:17:42', '2019-11-10 08:17:42', 1, 1),
(1369, 6, 115, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1370, 6, 116, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1371, 6, 117, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1372, 6, 118, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1373, 6, 119, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1374, 6, 120, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1375, 6, 121, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1376, 6, 122, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1377, 6, 123, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1378, 6, 124, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1379, 6, 125, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1380, 6, 126, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1381, 7, 106, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1382, 7, 101, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1383, 7, 135, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1384, 7, 136, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1385, 7, 108, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1386, 7, 102, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1387, 7, 110, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1388, 7, 134, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1389, 7, 137, 0, 0, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1390, 7, 109, 1, 1, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1391, 7, 129, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1392, 7, 130, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1393, 7, 131, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1394, 7, 132, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1395, 7, 133, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1396, 7, 96, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1397, 7, 97, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1398, 7, 98, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1399, 7, 99, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1400, 7, 104, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1401, 7, 107, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1402, 7, 111, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1403, 7, 112, 1, 1, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1404, 7, 113, 1, 1, 1, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1405, 7, 114, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1406, 7, 115, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1407, 7, 116, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1408, 7, 117, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1409, 7, 118, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1410, 7, 119, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1411, 7, 120, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1412, 7, 121, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1413, 7, 122, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1414, 7, 123, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1415, 7, 124, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1416, 7, 125, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1417, 7, 126, 0, 0, 0, 0, 1, '2019-11-10 08:18:02', '2019-11-10 08:18:02', 1, 1),
(1418, 8, 106, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1419, 8, 101, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1420, 8, 135, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1421, 8, 136, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1422, 8, 108, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1423, 8, 102, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1424, 8, 110, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1425, 8, 134, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1426, 8, 137, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1427, 8, 109, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1428, 8, 129, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1429, 8, 130, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1430, 8, 131, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1431, 8, 132, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1432, 8, 133, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1433, 8, 96, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1434, 8, 97, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1435, 8, 98, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1436, 8, 99, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1437, 8, 104, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1438, 8, 107, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1439, 8, 111, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1440, 8, 112, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1441, 8, 113, 1, 1, 1, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1442, 8, 114, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1443, 8, 115, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1444, 8, 116, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1445, 8, 117, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1446, 8, 118, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1447, 8, 119, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1448, 8, 120, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1449, 8, 121, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1450, 8, 122, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1451, 8, 123, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1452, 8, 124, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1453, 8, 125, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1454, 8, 126, 0, 0, 0, 0, 1, '2019-11-10 08:18:20', '2019-11-10 08:18:20', 1, 1),
(1455, 9, 106, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1456, 9, 101, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1457, 9, 135, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1458, 9, 136, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1459, 9, 108, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1460, 9, 102, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1461, 9, 110, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1462, 9, 134, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1463, 9, 137, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1464, 9, 109, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1465, 9, 129, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1466, 9, 130, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1467, 9, 131, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1468, 9, 132, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1469, 9, 133, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1470, 9, 96, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1471, 9, 97, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1472, 9, 98, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1473, 9, 99, 0, 0, 0, 0, 1, '2019-11-10 08:19:11', '2019-11-10 08:19:11', 1, 1),
(1474, 9, 104, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1475, 9, 107, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1476, 9, 111, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1477, 9, 112, 1, 1, 1, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1478, 9, 113, 1, 1, 1, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1479, 9, 114, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1480, 9, 115, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1481, 9, 116, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1482, 9, 117, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1483, 9, 118, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1484, 9, 119, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1485, 9, 120, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1486, 9, 121, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1487, 9, 122, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1488, 9, 123, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1489, 9, 124, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1490, 9, 125, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1491, 9, 126, 0, 0, 0, 0, 1, '2019-11-10 08:19:12', '2019-11-10 08:19:12', 1, 1),
(1492, 13, 106, 0, 0, 0, 0, 1, '2019-11-10 08:19:38', '2019-11-10 08:19:38', 1, 1),
(1493, 13, 101, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1494, 13, 135, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1495, 13, 136, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1496, 13, 108, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1497, 13, 102, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1498, 13, 110, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1499, 13, 134, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1500, 13, 137, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1501, 13, 109, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1502, 13, 129, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1503, 13, 130, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1504, 13, 131, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1505, 13, 132, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1506, 13, 133, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1507, 13, 96, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1508, 13, 97, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1509, 13, 98, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1510, 13, 99, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1511, 13, 104, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1512, 13, 107, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1513, 13, 111, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1514, 13, 112, 1, 1, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1515, 13, 113, 1, 1, 1, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1516, 13, 114, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1517, 13, 115, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1518, 13, 116, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1519, 13, 117, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1520, 13, 118, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1521, 13, 119, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1522, 13, 120, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1523, 13, 121, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1524, 13, 122, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1525, 13, 123, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1526, 13, 124, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1527, 13, 125, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1528, 13, 126, 0, 0, 0, 0, 1, '2019-11-10 08:19:39', '2019-11-10 08:19:39', 1, 1),
(1529, 1, 138, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1530, 1, 139, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1531, 1, 140, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1532, 1, 141, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1533, 3, 141, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1534, 3, 142, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1535, 3, 138, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1536, 3, 139, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1537, 3, 140, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1538, 4, 141, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1539, 4, 142, 1, 1, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1540, 4, 138, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1541, 4, 139, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1542, 4, 140, 0, 1, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1543, 1, 142, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1);
INSERT INTO `privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1544, 1, 143, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1545, 1, 144, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1546, 1, 145, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1547, 1, 146, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1548, 1, 147, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1549, 1, 148, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1550, 1, 149, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1551, 1, 150, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1552, 1, 151, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1553, 1, 152, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1554, 1, 153, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1555, 1, 154, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1556, 1, 155, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1557, 1, 156, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1558, 1, 157, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1559, 1, 158, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1560, 1, 159, 1, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1561, 1, 160, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1562, 1, 161, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1563, 1, 162, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1564, 1, 163, 1, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1565, 1, 164, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1566, 1, 165, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1567, 1, 166, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1568, 1, 167, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1569, 1, 168, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1570, 1, 169, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1571, 1, 170, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1572, 1, 171, 0, 0, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1916, 6, 176, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1915, 6, 175, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1914, 6, 168, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1913, 6, 167, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1912, 6, 166, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1911, 6, 162, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1910, 6, 161, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1909, 6, 160, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1908, 6, 159, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1907, 6, 158, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1906, 6, 157, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1905, 6, 156, 0, 0, 0, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1904, 6, 152, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1903, 6, 151, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1902, 6, 150, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1901, 6, 149, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1900, 6, 148, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1899, 6, 147, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1898, 6, 155, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1897, 6, 154, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1896, 6, 153, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1895, 6, 146, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1894, 6, 145, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1893, 6, 144, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1892, 6, 143, 1, 1, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1891, 6, 140, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1890, 6, 139, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1889, 6, 138, 0, 0, 1, 0, 1, '2021-11-23 22:17:27', '2021-11-23 22:17:27', 1, 1),
(1888, 6, 171, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1887, 6, 170, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1886, 6, 169, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1885, 6, 165, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1884, 6, 164, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1883, 6, 142, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1882, 6, 141, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1881, 6, 174, 0, 0, 1, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1880, 6, 173, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1879, 6, 172, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1878, 6, 163, 0, 0, 0, 0, 1, '2021-11-23 22:17:26', '2021-11-23 22:17:26', 1, 1),
(1726, 1, 172, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1727, 1, 173, 0, 0, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1728, 4, 163, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(1729, 4, 172, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(1730, 4, 173, 0, 0, 0, 0, 1, '2021-11-30 21:18:13', '2021-11-30 21:18:13', 1, 1),
(1731, 4, 164, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1732, 4, 165, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1733, 4, 169, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1734, 4, 170, 1, 1, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1735, 4, 171, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1736, 4, 143, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1737, 4, 144, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1738, 4, 145, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1739, 4, 146, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1740, 4, 153, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1741, 4, 154, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1742, 4, 155, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1743, 4, 147, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1744, 4, 148, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1745, 4, 149, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1746, 4, 150, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1747, 4, 151, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1748, 4, 152, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1749, 4, 156, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1750, 4, 157, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1751, 4, 158, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1752, 4, 159, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1753, 4, 160, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1754, 4, 161, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1755, 4, 162, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1756, 4, 166, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1757, 4, 167, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1758, 4, 168, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1759, 1, 174, 1, 1, 1, 1, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1760, 2, 163, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1761, 2, 172, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1762, 2, 173, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1763, 2, 174, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1764, 2, 141, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1765, 2, 142, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1766, 2, 164, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1767, 2, 165, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1768, 2, 169, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1769, 2, 170, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1770, 2, 137, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1771, 2, 171, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1772, 2, 138, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1773, 2, 139, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1774, 2, 140, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1775, 2, 143, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1776, 2, 144, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1777, 2, 145, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1778, 2, 146, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1779, 2, 153, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1780, 2, 154, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1781, 2, 155, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1782, 2, 147, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1783, 2, 148, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1784, 2, 149, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1785, 2, 150, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1786, 2, 151, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1787, 2, 152, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1788, 2, 156, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1789, 2, 157, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1790, 2, 158, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1791, 2, 159, 1, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1792, 2, 160, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1793, 2, 161, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1794, 2, 162, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1795, 2, 166, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1796, 2, 167, 1, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1797, 2, 168, 0, 0, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1798, 1, 175, 0, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1799, 1, 176, 0, 1, 1, 0, 1, '2021-11-30 21:17:37', '2021-11-30 21:17:37', 1, 1),
(1800, 2, 175, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1801, 2, 176, 0, 1, 1, 0, 1, '2021-11-30 21:17:56', '2021-11-30 21:17:56', 1, 1),
(1802, 4, 174, 0, 0, 1, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1803, 4, 175, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1804, 4, 176, 0, 0, 0, 0, 1, '2021-11-30 21:18:14', '2021-11-30 21:18:14', 1, 1),
(1805, 5, 163, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1806, 5, 172, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1807, 5, 173, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1808, 5, 174, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1809, 5, 141, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1810, 5, 142, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1811, 5, 164, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1812, 5, 165, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1813, 5, 169, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1814, 5, 170, 0, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1815, 5, 171, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1816, 5, 138, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1817, 5, 139, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1818, 5, 140, 0, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1819, 5, 143, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1820, 5, 144, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1821, 5, 145, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1822, 5, 146, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1823, 5, 153, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1824, 5, 154, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1825, 5, 155, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1826, 5, 147, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1827, 5, 148, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1828, 5, 149, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1829, 5, 150, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1830, 5, 151, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1831, 5, 152, 0, 0, 0, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1832, 5, 156, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1833, 5, 157, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1834, 5, 158, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1835, 5, 159, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1836, 5, 160, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1837, 5, 161, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1838, 5, 162, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1839, 5, 166, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1840, 5, 167, 1, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1841, 5, 168, 0, 0, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1842, 5, 175, 0, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1843, 5, 176, 0, 1, 1, 0, 1, '2021-11-30 21:18:23', '2021-11-30 21:18:23', 1, 1),
(1844, 3, 163, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1845, 3, 172, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1846, 3, 173, 0, 0, 0, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1847, 3, 174, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1848, 3, 164, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1849, 3, 165, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1850, 3, 169, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1851, 3, 170, 0, 0, 1, 0, 1, '2021-12-11 12:08:32', '2021-12-11 12:08:32', 1, 1),
(1852, 3, 171, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1853, 3, 143, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1854, 3, 144, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1855, 3, 145, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1856, 3, 146, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1857, 3, 153, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1858, 3, 154, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1859, 3, 155, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1860, 3, 147, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1861, 3, 148, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1862, 3, 149, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1863, 3, 150, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1864, 3, 151, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1865, 3, 152, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1866, 3, 156, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1867, 3, 157, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1868, 3, 158, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1869, 3, 159, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1870, 3, 160, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1871, 3, 161, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1872, 3, 162, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1873, 3, 166, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1874, 3, 167, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1875, 3, 168, 0, 0, 1, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1876, 3, 175, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1),
(1877, 3, 176, 0, 0, 0, 0, 1, '2021-12-11 12:08:33', '2021-12-11 12:08:33', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `purchase_code` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text,
  `rating_status` varchar(50) DEFAULT NULL COMMENT 'pending, approved',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `attachment` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '1',
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `note`, `is_default`, `is_super_admin`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin User', 1, 1, 1, '2017-08-13 12:15:17', '2018-02-09 01:58:57', 0, 1),
(2, 'admin', 'Admin', 'Admin User', 1, 0, 1, '2017-08-13 13:01:36', '0000-00-00 00:00:00', 0, 0),
(3, 'guardian', 'Guardian', 'Guardian/Parent User', 1, 0, 1, '2017-08-13 13:02:05', '2018-02-09 01:59:22', 0, 1),
(4, 'student', 'Student', 'Student User', 1, 0, 1, '2017-08-13 13:02:24', '2018-02-09 01:59:34', 0, 1),
(5, 'teacher', 'Teacher', 'Teacher User', 1, 0, 1, '2017-08-13 13:02:51', '2018-02-09 01:59:46', 0, 1),
(6, 'accountant', 'Accountant', 'Accountant User', 1, 0, 1, '2017-08-13 13:04:00', '2018-02-09 02:00:07', 0, 1),
(7, 'librarian', 'Librarian', 'Librarian User', 1, 0, 1, '2017-08-13 13:04:18', '2018-02-09 02:00:22', 0, 1),
(8, 'receptioniast', 'Receptioniast', 'Receptionist/ Front Desk User', 1, 0, 1, '2017-08-13 13:04:36', '2018-02-09 02:02:30', 0, 1),
(9, 'staff', 'Staff', 'General Staff User', 0, 0, 1, '2017-08-13 13:05:01', '2021-12-13 01:40:17', 0, 1),
(13, 'servent', 'Servent', 'Servant User', 0, 0, 1, '2018-02-04 04:40:37', '2018-02-09 02:03:09', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `room_no` varchar(20) CHARACTER SET utf8 NOT NULL,
  `room_type` varchar(10) CHARACTER SET utf8 NOT NULL,
  `total_seat` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `vehicle_ids` varchar(150) CHARACTER SET utf8 NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL,
  `route_start` varchar(255) CHARACTER SET utf8 NOT NULL,
  `route_end` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `route_stops`
--

CREATE TABLE `route_stops` (
  `id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `stop_name` varchar(255) NOT NULL,
  `stop_km` varchar(20) NOT NULL,
  `stop_fare` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `day` varchar(20) CHARACTER SET utf8 NOT NULL,
  `start_time` varchar(20) CHARACTER SET utf8 NOT NULL,
  `end_time` varchar(20) CHARACTER SET utf8 NOT NULL,
  `room_no` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `salary_grades`
--

CREATE TABLE `salary_grades` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) NOT NULL,
  `transport` double(10,2) NOT NULL,
  `medical` double(10,2) NOT NULL,
  `over_time_hourly_rate` double(10,2) NOT NULL,
  `provident_fund` double(10,2) NOT NULL,
  `hourly_rate` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `gross_salary` double(10,2) NOT NULL,
  `net_salary` double(10,2) NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `salary_payments`
--

CREATE TABLE `salary_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `salary_grade_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `expenditure_id` int(11) NOT NULL,
  `salary_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `salary_month` varchar(100) CHARACTER SET utf8 NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) NOT NULL,
  `transport` double(10,2) NOT NULL,
  `medical` double(10,2) NOT NULL,
  `bonus` double(10,2) NOT NULL,
  `over_time_hourly_rate` double(10,2) NOT NULL,
  `over_time_total_hour` double(10,2) NOT NULL,
  `over_time_amount` double(10,2) NOT NULL,
  `provident_fund` double(10,2) NOT NULL,
  `penalty` double(10,2) NOT NULL,
  `hourly_rate` double(10,2) DEFAULT '0.00',
  `total_hour` double(10,2) DEFAULT NULL,
  `gross_salary` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `net_salary` double(10,2) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cheque_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `payment_to` varchar(20) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `school_code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registration_date` date DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8 NOT NULL,
  `currency_symbol` varchar(10) CHARACTER SET utf8 NOT NULL,
  `language` varchar(50) CHARACTER SET utf8 NOT NULL,
  `footer` text CHARACTER SET utf8 NOT NULL,
  `logo` varchar(120) CHARACTER SET utf8 NOT NULL,
  `front_logo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `favicon_icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `brand_logo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `academic_year_id` int(11) DEFAULT NULL,
  `running_year` varchar(50) CHARACTER SET utf8 NOT NULL,
  `school_fax` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `enable_rtl` tinyint(1) NOT NULL DEFAULT '0',
  `enable_frontend` tinyint(1) NOT NULL DEFAULT '1',
  `enable_online_admission` tinyint(1) NOT NULL DEFAULT '1',
  `final_result_type` tinyint(1) DEFAULT '0',
  `default_time_zone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sms_date_format` varchar(100) CHARACTER SET utf8 NOT NULL,
  `zoom_api_key` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `zoom_secret` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `google_analytics` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `google_map` text CHARACTER SET utf8,
  `theme_name` varchar(100) CHARACTER SET utf8 DEFAULT 'radical-red',
  `about_text` text CHARACTER SET utf8,
  `about_image` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pinterest_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `settings` (`id`, `school_code`, `school_name`, `registration_date`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `language`, `footer`, `logo`, `front_logo`, `favicon_icon`, `brand_logo`, `academic_year_id`, `running_year`, `school_fax`, `enable_rtl`, `enable_frontend`, `enable_online_admission`, `final_result_type`, `default_time_zone`, `sms_date_format`, `zoom_api_key`, `zoom_secret`, `google_analytics`, `google_map`, `theme_name`, `about_text`, `about_image`, `facebook_url`, `twitter_url`, `linkedin_url`, `youtube_url`, `instagram_url`, `pinterest_url`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, 'AB-654321', 'Windsor Park High School', '2018-04-05', '10433 Wolverine Way  Bellevue, CA 98456', '01234567895', 'info@gsms.com', 'US', '$', 'english', 'Copyright © Windsor Park High School 2021. All right sreserved.', '1572874215-logo.png', '1636900923-front-logo.png', '1572874564-favicon-icon.png', '1572874463-brand-logo.png', 2, 'January 2021 - December 2021', '123456789', 0, 1, 1, 1, 'America/Caracas', 'M j, Y', 'vbnvn', 'vbnvbns', 'vbnvn', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d26833.95080205923!2d-96.80146536424357!3d32.78579296452468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sbn!2sbd!4v1618690239415!5m2!1sbn!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'dodger-blue', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem..', '1573170779-about-image.jpg', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, '2017-08-23 09:40:28', '2021-12-13 07:44:51', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `clickatell_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_api_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_from_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `clickatell_status` tinyint(1) DEFAULT NULL,
  `twilio_account_sid` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twilio_auth_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `twilio_from_number` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `clickatell_mo_no` varchar(50) CHARACTER SET utf8 NOT NULL,
  `twilio_status` tinyint(1) DEFAULT NULL,
  `bulk_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bulk_password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bulk_status` tinyint(1) DEFAULT NULL,
  `msg91_auth_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `msg91_sender_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `msg91_status` tinyint(1) DEFAULT NULL,
  `plivo_auth_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `plivo_auth_token` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `plivo_from_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `plivo_status` tinyint(1) DEFAULT NULL,
  `textlocal_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `textlocal_hash_key` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `textlocal_sender_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `textlocal_status` tinyint(1) NOT NULL,
  `smscountry_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `smscountry_password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `smscountry_sender_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `smscountry_status` tinyint(1) NOT NULL,
  `betasms_username` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `betasms_password` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `betasms_sender_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `betasms_status` tinyint(1) NOT NULL,
  `bulk_pk_username` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bulk_pk_password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bulk_pk_sender_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bulk_pk_status` tinyint(1) DEFAULT NULL,
  `cluster_auth_key` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cluster_sender_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cluster_router` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cluster_status` tinyint(1) DEFAULT NULL,
  `alpha_username` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `alpha_hash` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `alpha_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `alpha_status` tinyint(1) DEFAULT NULL,
  `bdbulk_hash` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bdbulk_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `bdbulk_status` tinyint(1) DEFAULT NULL,
  `mim_api_key` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mim_type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mim_sender_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mim_status` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `clickatell_username`, `clickatell_password`, `clickatell_api_key`, `clickatell_from_number`, `clickatell_status`, `twilio_account_sid`, `twilio_auth_token`, `twilio_from_number`, `clickatell_mo_no`, `twilio_status`, `bulk_username`, `bulk_password`, `bulk_status`, `msg91_auth_key`, `msg91_sender_id`, `msg91_status`, `plivo_auth_id`, `plivo_auth_token`, `plivo_from_number`, `plivo_status`, `textlocal_username`, `textlocal_hash_key`, `textlocal_sender_id`, `textlocal_status`, `smscountry_username`, `smscountry_password`, `smscountry_sender_id`, `smscountry_status`, `betasms_username`, `betasms_password`, `betasms_sender_id`, `betasms_status`, `bulk_pk_username`, `bulk_pk_password`, `bulk_pk_sender_id`, `bulk_pk_status`, `cluster_auth_key`, `cluster_sender_id`, `cluster_router`, `cluster_status`, `alpha_username`, `alpha_hash`, `alpha_type`, `alpha_status`, `bdbulk_hash`, `bdbulk_type`, `bdbulk_status`, `mim_api_key`, `mim_type`, `mim_sender_id`, `mim_status`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', 1, '', '', '', 0, '', '', '', 0, '', '', '', 1, '', '', '', 0, '', '', '', 1, '', '', '', 0, '', '', 'text', 1, '', 'text', 0, '', 'unicode', '', 0, 1, '2017-08-24 13:22:49', '2021-11-26 16:38:37', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `template` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `ss_balance`
--

CREATE TABLE `ss_balance` (
  `id` int(11) NOT NULL,
  `balance` double(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `ss_candidates`
--

CREATE TABLE `ss_candidates` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `candidate_status` tinyint(1) NOT NULL COMMENT '[1 = applied ,2 = approved, 2 = declined]',
  `note` text,
  `status` tinyint(1) NOT NULL,
  `applied_at` date NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `ss_donars`
--

CREATE TABLE `ss_donars` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `donar_type` varchar(20) NOT NULL,
  `donar_name` varchar(100) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `applied_at` date NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `ss_scholarships`
--

CREATE TABLE `ss_scholarships` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `admission_no` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `admission_date` date NOT NULL,
  `is_guardian` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `guardian_id` int(11) NOT NULL,
  `relation_with` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `registration_no` varchar(50) CHARACTER SET utf8 NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `blood_group` varchar(50) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `caste` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dob` date NOT NULL,
  `age` int(11) DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `other_info` text,
  `is_library_member` tinyint(1) NOT NULL DEFAULT '0',
  `is_hostel_member` tinyint(1) NOT NULL DEFAULT '0',
  `is_transport_member` tinyint(1) NOT NULL DEFAULT '0',
  `discount_id` int(11) NOT NULL,
  `previous_school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `previous_class` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  `transfer_certificate` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `health_condition` text CHARACTER SET utf8,
  `national_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `second_language` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `father_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `father_phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `father_education` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `father_profession` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `father_designation` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `father_photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mother_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mother_phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mother_education` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mother_profession` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mother_designation` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mother_photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `status_type` varchar(50) CHARACTER SET utf8 DEFAULT 'regular' COMMENT 'regular, drop, transfer,passed	',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `student_activities`
--

CREATE TABLE `student_activities` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `activity` text CHARACTER SET utf8 NOT NULL,
  `activity_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `month` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `day_1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` int(11) NOT NULL,
  `group` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `student_types`
--

CREATE TABLE `student_types` (
  `id` int(11) NOT NULL,
  `type` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `study_materials`
--

CREATE TABLE `study_materials` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `material` varchar(120) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(50) CHARACTER SET utf8 NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pass_mark` int(11) NOT NULL,
  `full_mark` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_estonian_ci,
  `suggestion` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `syllabus` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` text CHARACTER SET utf8,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `national_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `salary_grade_id` int(11) NOT NULL,
  `salary_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `department_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `present_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `permanent_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 NOT NULL,
  `blood_group` varchar(10) CHARACTER SET utf8 NOT NULL,
  `religion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dob` date NOT NULL,
  `joining_date` date NOT NULL,
  `resign_date` text,
  `photo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `resume` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `facebook_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `linkedin_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `twitter_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `instagram_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `youtube_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pinterest_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `is_view_on_web` tinyint(1) NOT NULL DEFAULT '0',
  `display_order` int(11) NOT NULL,
  `other_info` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `teacher_attendances`
--

CREATE TABLE `teacher_attendances` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `month` varchar(10) CHARACTER SET utf8 NOT NULL,
  `year` varchar(10) CHARACTER SET utf8 NOT NULL,
  `day_1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_2` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_4` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_5` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_6` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_7` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_8` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_9` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_10` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_11` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_12` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_13` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_14` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_15` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_16` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_17` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_18` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_19` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_20` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_21` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_22` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_23` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_24` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_25` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_26` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_27` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_28` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_29` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_30` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `day_31` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `text_messages`
--

CREATE TABLE `text_messages` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `sender_role_id` int(11) NOT NULL,
  `receivers` text,
  `academic_year_id` int(11) NOT NULL,
  `sms_gateway` varchar(20) CHARACTER SET utf8 NOT NULL,
  `sms_type` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '1. general, 2. Attendance, 3. Due Fee, 4. Result ',
  `absent_date` date NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `color_code` varchar(10) NOT NULL,
  `description` text,
  `is_active` tinyint(1) NOT NULL COMMENT '1 = Active, 0 = Inactive',
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `color_code`, `description`, `is_active`, `status`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(13, 'SlateGray ', 'slate-gray', '#2A3F54', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(2, 'Black ', 'black', '#000000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(14, 'LightSeaGreen ', 'light-sea-green', '#20B2AA', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(4, 'MediumPurple ', 'medium-purple', '#9370DB', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(15, 'Navy Blue', 'navy-blue', '#001f67', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(6, 'RebeccaPurple ', 'rebecca-purple', '#663399', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(16, 'Red', 'red', '#e80000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(8, 'DodgerBlue', 'dodger-blue', '#1E90FF', 'cbcvbced', 1, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(9, 'Maroon', 'maroon', '#800000', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(10, 'DarkOrange', 'dark-orange', '#FF8C00', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(11, 'DeepPink', 'deep-pink', '#FF1493', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(5, 'LimeGreen', 'lime-green', '#32CD32', 'cbcvbced', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(1, 'Jazzberry Jam', 'jazzberry-jam', '#9F134E', 'Jazzberry Jam', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(3, 'Umber', 'umber', '#745D0B', 'Umber', 0, 1, '2017-08-18 12:59:25', '2017-08-18 13:03:43', 0, 0),
(12, 'Trinidad', 'trinidad', '#CC4F26', 'Trinidad', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
(7, 'Radical Red', 'radical-red', '#FB2E50', 'Radical Red', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `comment` text,
  `date` datetime NOT NULL,
  `work` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(20) CHARACTER SET utf8 NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cheque_no` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bank_receipt` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `transaction_id` varchar(100) CHARACTER SET utf8 NOT NULL,
  `stack_reference` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `payment_date` date NOT NULL,
  `pum_first_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pum_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pum_phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `stripe_card_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dbbl_card_type` tinyint(1) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `transport_members`
--

CREATE TABLE `transport_members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `route_stop_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `finger_print` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(255) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `reset_key` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1= Active, 0 = InActive',
  `last_logged_in` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `finger_print`, `unique_id`, `role_id`, `password`, `temp_password`, `email`, `reset_key`, `status`, `last_logged_in`, `created_at`, `modified_at`, `created_by`, `modified_by`) VALUES
(1, '', '', 1, 'e10adc3949ba59abbe56e057f20f883e', 'MTIzNDU2', 'superadmin@gsms.com', NULL, 1, '2021-12-14 06:36:44', '2013-11-15 20:33:03', '2019-11-15 12:05:39', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 NOT NULL,
  `driver` varchar(100) CHARACTER SET utf8 NOT NULL,
  `license` varchar(100) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(20) CHARACTER SET utf8 NOT NULL,
  `is_allocated` tinyint(1) NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `video_lectures`
--

CREATE TABLE `video_lectures` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `lecture_type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_id` varchar(50) DEFAULT NULL,
  `lecture_ppt` varchar(150) DEFAULT NULL,
  `note` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `purpose_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Table structure for table `visitor_purposes`
--

CREATE TABLE `visitor_purposes` (
  `id` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admit_card_settings`
--
ALTER TABLE `admit_card_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_issues`
--
ALTER TABLE `asset_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_items`
--
ALTER TABLE `asset_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_purchases`
--
ALTER TABLE `asset_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_stocks`
--
ALTER TABLE `asset_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_stores`
--
ALTER TABLE `asset_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `asset_vendors`
--
ALTER TABLE `asset_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `complains`
--
ALTER TABLE `complains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_types`
--
ALTER TABLE `complain_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `emp_departments`
--
ALTER TABLE `emp_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_instructions`
--
ALTER TABLE `exam_instructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_online_exams`
--
ALTER TABLE `exam_online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_questions`
--
ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_taken_exams`
--
ALTER TABLE `exam_taken_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `exam_to_questions`
--
ALTER TABLE `exam_to_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `id` (`id`),
  ADD KEY `online_exam_id` (`online_exam_id`) USING BTREE;

--
-- Indexes for table `expenditures`
--
ALTER TABLE `expenditures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `fees_amount`
--
ALTER TABLE `fees_amount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `final_results`
--
ALTER TABLE `final_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `guardian_feedbacks`
--
ALTER TABLE `guardian_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `hostel_members`
--
ALTER TABLE `hostel_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `income_heads`
--
ALTER TABLE `income_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `income_head_id` (`income_head_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item_issues`
--
ALTER TABLE `item_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item_products`
--
ALTER TABLE `item_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item_purchases`
--
ALTER TABLE `item_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item_sales`
--
ALTER TABLE `item_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item_stocks`
--
ALTER TABLE `item_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item_suppliers`
--
ALTER TABLE `item_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `item_warehouses`
--
ALTER TABLE `item_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `label` (`label`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `library_members`
--
ALTER TABLE `library_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `academic_year_id` (`academic_year_id`);

--
-- Indexes for table `lp_lessons`
--
ALTER TABLE `lp_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `lp_lesson_details`
--
ALTER TABLE `lp_lesson_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `lp_topics`
--
ALTER TABLE `lp_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `lesson_detail_id` (`lesson_detail_id`);

--
-- Indexes for table `lp_topic_details`
--
ALTER TABLE `lp_topic_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `mark_emails`
--
ALTER TABLE `mark_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `mark_smses`
--
ALTER TABLE `mark_smses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `message_relationships`
--
ALTER TABLE `message_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `opening_hours`
--
ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_slug` (`page_slug`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_call_logs`
--
ALTER TABLE `phone_call_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `postal_dispatches`
--
ALTER TABLE `postal_dispatches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `postal_receives`
--
ALTER TABLE `postal_receives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `route_stops`
--
ALTER TABLE `route_stops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `salary_grades`
--
ALTER TABLE `salary_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `salary_payments`
--
ALTER TABLE `salary_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ss_balance`
--
ALTER TABLE `ss_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ss_candidates`
--
ALTER TABLE `ss_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ss_donars`
--
ALTER TABLE `ss_donars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ss_scholarships`
--
ALTER TABLE `ss_scholarships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student_activities`
--
ALTER TABLE `student_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `student_types`
--
ALTER TABLE `student_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `text_messages`
--
ALTER TABLE `text_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transport_members`
--
ALTER TABLE `transport_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `video_lectures`
--
ALTER TABLE `video_lectures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `admit_card_settings`
--
ALTER TABLE `admit_card_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `asset_issues`
--
ALTER TABLE `asset_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `asset_items`
--
ALTER TABLE `asset_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `asset_purchases`
--
ALTER TABLE `asset_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `asset_stocks`
--
ALTER TABLE `asset_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `asset_stores`
--
ALTER TABLE `asset_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `asset_vendors`
--
ALTER TABLE `asset_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `assignment_submissions`
--
ALTER TABLE `assignment_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `complains`
--
ALTER TABLE `complains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `complain_types`
--
ALTER TABLE `complain_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `emp_departments`
--
ALTER TABLE `emp_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_attendances`
--
ALTER TABLE `exam_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_instructions`
--
ALTER TABLE `exam_instructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_online_exams`
--
ALTER TABLE `exam_online_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_questions`
--
ALTER TABLE `exam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_taken_exams`
--
ALTER TABLE `exam_taken_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `exam_to_questions`
--
ALTER TABLE `exam_to_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `expenditures`
--
ALTER TABLE `expenditures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `expenditure_heads`
--
ALTER TABLE `expenditure_heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `fees_amount`
--
ALTER TABLE `fees_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `final_results`
--
ALTER TABLE `final_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `guardian_feedbacks`
--
ALTER TABLE `guardian_feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `hostel_members`
--
ALTER TABLE `hostel_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_heads`
--
ALTER TABLE `income_heads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_issues`
--
ALTER TABLE `item_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_products`
--
ALTER TABLE `item_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_purchases`
--
ALTER TABLE `item_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_sales`
--
ALTER TABLE `item_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_stocks`
--
ALTER TABLE `item_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_suppliers`
--
ALTER TABLE `item_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `item_warehouses`
--
ALTER TABLE `item_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1247;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `library_members`
--
ALTER TABLE `library_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `lp_lessons`
--
ALTER TABLE `lp_lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `lp_lesson_details`
--
ALTER TABLE `lp_lesson_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `lp_topics`
--
ALTER TABLE `lp_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `lp_topic_details`
--
ALTER TABLE `lp_topic_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `mark_emails`
--
ALTER TABLE `mark_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mark_smses`
--
ALTER TABLE `mark_smses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `message_relationships`
--
ALTER TABLE `message_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `opening_hours`
--
ALTER TABLE `opening_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phone_call_logs`
--
ALTER TABLE `phone_call_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `postal_dispatches`
--
ALTER TABLE `postal_dispatches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `postal_receives`
--
ALTER TABLE `postal_receives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1917;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `route_stops`
--
ALTER TABLE `route_stops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `salary_grades`
--
ALTER TABLE `salary_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `salary_payments`
--
ALTER TABLE `salary_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `ss_balance`
--
ALTER TABLE `ss_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `ss_candidates`
--
ALTER TABLE `ss_candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `ss_donars`
--
ALTER TABLE `ss_donars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `ss_scholarships`
--
ALTER TABLE `ss_scholarships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `student_activities`
--
ALTER TABLE `student_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `student_types`
--
ALTER TABLE `student_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `teacher_attendances`
--
ALTER TABLE `teacher_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `text_messages`
--
ALTER TABLE `text_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `transport_members`
--
ALTER TABLE `transport_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `video_lectures`
--
ALTER TABLE `video_lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;