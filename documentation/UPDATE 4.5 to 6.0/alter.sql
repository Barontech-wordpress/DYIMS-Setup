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
-- Table structure for table `admissions`
--
CREATE TABLE `admissions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
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
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebooks`
--
ALTER TABLE `ebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `study_materials`
--
ALTER TABLE `study_materials`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);


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
-- Indexes for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `admit_card_settings`
--
ALTER TABLE `admit_card_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `postal_receives`
--
ALTER TABLE `postal_receives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `postal_dispatches`
--
ALTER TABLE `postal_dispatches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


--
-- Indexes for table `phone_call_logs`
--
ALTER TABLE `phone_call_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


--
-- Indexes for table `student_types`
--
ALTER TABLE `student_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


--
-- Indexes for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);


--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


--
-- AUTO_INCREMENT for table `ebooks`
--
ALTER TABLE `ebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `study_materials`
--
ALTER TABLE `study_materials`
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
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

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
-- AUTO_INCREMENT for table `id_card_settings`
--
ALTER TABLE `id_card_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `admit_card_settings`
--
ALTER TABLE `admit_card_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `postal_receives`
--
ALTER TABLE `postal_receives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `postal_dispatches`
--
ALTER TABLE `postal_dispatches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `phone_call_logs`
--
ALTER TABLE `phone_call_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


--
-- AUTO_INCREMENT for table `student_types`
--
ALTER TABLE `student_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `visitor_purposes`
--
ALTER TABLE `visitor_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;


-- setting---
ALTER TABLE `settings` DROP `session_start_month`, DROP `session_end_month`;
ALTER TABLE `settings` ADD `brand_logo` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `front_logo`;
ALTER TABLE `settings` ADD `enable_online_admission` TINYINT(1) NOT NULL DEFAULT '1' AFTER `enable_frontend`;
ALTER TABLE `settings` ADD `theme_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'radical-red' AFTER `google_analytics`;
ALTER TABLE `settings` ADD `favicon_icon` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL AFTER `front_logo`;

-- payment setting --
ALTER TABLE `payment_settings` ADD `stack_secret_key` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `paytm_status`, ADD `stack_public_key` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `stack_secret_key`, ADD `stack_demo` TINYINT(1) NULL AFTER `stack_public_key`, ADD `stack_extra_charge` DOUBLE(10,2) NULL AFTER `stack_demo`, ADD `stack_status` TINYINT(1) NULL AFTER `stack_extra_charge`;


-- SMS Setting ----
ALTER TABLE `sms_settings` ADD `betasms_username` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `smscountry_status`, ADD `betasms_password` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `betasms_username`, ADD `betasms_sender_id` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `betasms_password`, ADD `betasms_status` TINYINT(1) NOT NULL AFTER `betasms_sender_id`;

-- roles--
ALTER TABLE `roles` ADD `is_super_admin` TINYINT(1) NOT NULL DEFAULT '0' AFTER `is_default`;
UPDATE `roles` SET `is_super_admin` = '1' WHERE `roles`.`id` = 1;


-- exam_instructions Table --

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

ALTER TABLE `exam_instructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `exam_instructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- exam_groups Table --

CREATE TABLE `exam_questions` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `question_type`  varchar(50) NOT NULL,
  `question_level`  varchar(50) NOT NULL,
  `question`  varchar(255) NOT NULL,
  `image`  varchar(150) NULL,
  `mark`   double(10,2) NOT NULL,  
  `total_option` int(11) NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`), 
  ADD KEY `id` (`id`);

ALTER TABLE `exam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- exam_groups Table --

CREATE TABLE `exam_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `answer` varchar(555) NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `id` (`id`);

ALTER TABLE `exam_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- exam_online_exams Table --

CREATE TABLE `exam_online_exams` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `instruction_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,  
  `duration` int(11) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `mark_type` varchar(50) NOT NULL,
  `pass_mark` double(10,2) NOT NULL,
  `exam_limit` int(11) NULL,
  `note` text,
  `is_publish` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `exam_online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `id` (`id`);

ALTER TABLE `exam_online_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- exam_to_questions Table --

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

ALTER TABLE `exam_to_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `online_exam_id` (`online_exam_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `id` (`id`);

ALTER TABLE `exam_to_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- exam_taken_exams Table --

CREATE TABLE `exam_taken_exams` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NULL,
  `subject_id` int(11) NULL,
  `total_question` int(11) NULL,
  `total_answer` int(11) NULL,
  `total_mark` int(11) NULL,
  `total_correct_answer` int(11) NULL,
  `total_incorrect_answer` int(11) NULL,
  `total_obtain_mark` int(11) NULL,
  `obtain_mark_percent` double(10,2) NOT NULL,
  `result_status` varchar(50) NULL COMMENT 'passed, failed', 
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `exam_taken_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `exam_taken_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;



-- Lesson plan --

-- lp_subjects --
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


ALTER TABLE `lp_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`);

ALTER TABLE `lp_lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- lp_lesson_details --
CREATE TABLE `lp_lesson_details` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `complete_status`  varchar(50) NULL DEFAULT 'incomplete',
  `complete_date` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE `lp_lesson_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

ALTER TABLE `lp_lesson_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- lp_topics --
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

ALTER TABLE `lp_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `subject_id` (`subject_id`), 
  ADD KEY `lesson_detail_id` (`lesson_detail_id`);

ALTER TABLE `lp_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- lp_topic_details --
CREATE TABLE `lp_topic_details` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `end_date` varchar(50) NOT NULL,
  `complete_status` varchar(50) NULL DEFAULT 'incomplete',
  `complete_date` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,  
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE `lp_topic_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

ALTER TABLE `lp_topic_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- Table structure for table `live_classes`

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
  `meeting_url` varchar(255) NOT NULL,
  `class_date` date NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `send_notification` tinyint(1) DEFAULT '0',
  `note` text NOT NULL,
  `class_status` varchar(50) NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
-- AUTO_INCREMENT for table `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


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
-- AUTO_INCREMENT for table `video_lectures`
--
ALTER TABLE `video_lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- OPENING Hour Table --

CREATE TABLE `opening_hours` (
  `id` int(11) NOT NULL,
  `monday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tuesday` varchar(100) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL,
  `wednesday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `thursday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `friday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `saturday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sunday` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `opening_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `opening_hours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- FAQS Table --

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

ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- Award Table --

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

ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- Todos Table --

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

ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- emp_departments Table --
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

ALTER TABLE `emp_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `emp_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- departments Table --

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

ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- ratings Table --
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL, 
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text,
  `rating_status` varchar(50) NULL COMMENT 'pending, approved', 
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;




-- item_suppliers Table --

CREATE TABLE `item_suppliers` (
  `id` int(11) NOT NULL,
  `company` varchar(120) NOT NULL,
  `contact` varchar(120) NOT NULL,
  `email` varchar(120) NULL,
  `phone` varchar(120) NULL,
  `address` varchar(120) NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `item_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- item_warehouses Table --

CREATE TABLE `item_warehouses` (
  `id` int(11) NOT NULL,  
  `name` varchar(120) NOT NULL,
  `keeper` varchar(120) NULL,
  `email` varchar(120) NULL,
  `phone` varchar(120) NULL,
  `address` varchar(120) NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `item_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- item_categories Table --

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

ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- item_products Table --

CREATE TABLE `item_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `code` varchar(50) NULL,
  `name` varchar(120) NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `item_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- item_purchases Table --

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

ALTER TABLE `item_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- item_stocks Table --

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

ALTER TABLE `item_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- item_issues Table --

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
  `return_date` date NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `item_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- item_sales Table --

CREATE TABLE `item_sales` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL, 
  `income_head_id` int(11) NOT NULL, 
  `invoice_type`  varchar(120) NULL COMMENT 'sale',
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

ALTER TABLE `item_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `item_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- asset_vendors Table --

CREATE TABLE `asset_vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(120) NOT NULL,
  `contact` varchar(120) NULL,
  `address` varchar(255) NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `asset_vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `asset_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- asset_stores Table --

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

ALTER TABLE `asset_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `asset_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- asset_categories Table --

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

ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `asset_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- asset_items Table --

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

ALTER TABLE `asset_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `asset_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- asset_purchases Table --

CREATE TABLE `asset_purchases` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
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

ALTER TABLE `asset_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `asset_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

-- asset_stocks Table --

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

ALTER TABLE `asset_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `asset_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- asset_issues Table --

CREATE TABLE `asset_issues` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,  
  `item_id` int(11) NOT NULL,  
  `class_id` int(11) NOT NULL,  
  `role_id` int(11) NOT NULL,  
  `user_id` int(11) NOT NULL,  
  `qty` int(11) NOT NULL, 
  `issue_date` date NOT NULL,
  `check_in_date` date NULL,
  `check_out_date` date NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `asset_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `asset_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- ss_candidates -----------

CREATE TABLE `ss_candidates` (
  `id` int(11) NOT NULL, 
  `class_id` int(11) NOT NULL,  
  `section_id` int(11) NOT NULL,  
  `student_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `candidate_status` tinyint(1) NOT NULL COMMENT '[1 = applied ,2 = approved, 3 = declined]',
  `note` text,
  `status` tinyint(1) NOT NULL,
  `applied_at` date NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `ss_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `ss_candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- ss_donars -----------

CREATE TABLE `ss_donars` (
  `id` int(11) NOT NULL, 
  `academic_year_id` int(11) NOT NULL,
  `donar_type` varchar(20) NOT NULL,  
  `donar_name` varchar(100) NOT NULL,  
  `contact_name` varchar(50) NOT NULL,  
  `email` varchar(50) NOT NULL,  
  `phone` varchar(20) NOT NULL,  
  `address` varchar(255) NOT NULL,  
  `amount`  double(10,2) NOT NULL,  
  `note` text,
  `status` tinyint(1) NOT NULL,
  `applied_at` date NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `ss_donars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `ss_donars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- ss_balance -----------
CREATE TABLE `ss_balance` (
  `id` int(11) NOT NULL,
  `balance` double(10,2) NOT NULL, 
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `ss_balance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `ss_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- ss_scholarships -----------

CREATE TABLE `ss_scholarships` (
  `id` int(11) NOT NULL, 
  `candidate_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL, 
  `amount`  double(10,2) NOT NULL,  
  `payment_date` date NOT NULL,
  `note` text,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `ss_scholarships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `ss_scholarships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;



-- assignment_submissions ----------- 
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
  `evaluation_status` varchar(20) NOT NULL,
  `remark` varchar(255) NULL,
  `note` text NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


ALTER TABLE `assignment_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `assignment_id` (`assignment_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `student_id` (`student_id`);

ALTER TABLE `assignment_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Table structure for table `invoice_detail`
--
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `income_head_id` int(11) NOT NULL,
  `invoice_type` varchar(20) DEFAULT NULL COMMENT 'income, fee, sale, hostel, transport',
  `gross_amount` float NOT NULL,
  `discount` float NOT NULL,
  `net_amount` float NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `income_head_id` (`income_head_id`);

ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-- alter sql ----
ALTER TABLE `teachers` CHANGE `responsibility` `department_id` INT(11) NOT NULL;
ALTER TABLE `settings` DROP `google_plus_url`;

ALTER TABLE `sms_settings` ADD `bulk_pk_username` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `betasms_status`, ADD `bulk_pk_password` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `bulk_pk_username`, ADD `bulk_pk_sender_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `bulk_pk_password`, ADD `bulk_pk_status` TINYINT(1) NULL AFTER `bulk_pk_sender_id`;
ALTER TABLE `sms_settings` ADD `cluster_auth_key` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `bulk_pk_status`, ADD `cluster_sender_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `cluster_auth_key`, ADD `cluster_router` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `cluster_sender_id`, ADD `cluster_status` TINYINT(1) NULL AFTER `cluster_router`;
ALTER TABLE `sms_settings` ADD `alpha_username` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `cluster_status`, ADD `alpha_hash` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `alpha_username`, ADD `alpha_status` TINYINT(1) NULL AFTER `alpha_hash`;
ALTER TABLE `sms_settings` ADD `alpha_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `alpha_hash`;
ALTER TABLE `sms_settings` ADD `bdbulk_hash` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `alpha_status`, ADD `bdbulk_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `bdbulk_hash`, ADD `bdbulk_status` TINYINT(1) NULL AFTER `bdbulk_type`;
ALTER TABLE `sms_settings` ADD `mim_api_key` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `bdbulk_status`, ADD `mim_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `mim_api_key`, ADD `mim_status` TINYINT(1) NULL AFTER `mim_type`;
ALTER TABLE `sms_settings` ADD `mim_sender_id` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `mim_type`;

ALTER TABLE `settings` ADD `zoom_api_key` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `map_api_key`, ADD `zoom_secret` VARCHAR(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `zoom_api_key`;

ALTER TABLE `payment_settings` ADD `dbbl_userid` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `stack_status`, ADD `dbbl_password` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `dbbl_userid`, ADD `dbbl_submername` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `dbbl_password`, ADD `dbbl_submerid` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `dbbl_submername`, ADD `dbbl_terminalid` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `dbbl_submerid`, ADD `dbbl_extra_charge` DOUBLE(10,2) NOT NULL AFTER `dbbl_terminalid`, ADD `dbbl_demo` TINYINT(1) NOT NULL AFTER `dbbl_extra_charge`, ADD `dbbl_status` TINYINT(1) NOT NULL AFTER `dbbl_demo`;


ALTER TABLE `languages` DROP `telugu`;
ALTER TABLE `languages` DROP `tamil`;
ALTER TABLE `languages` DROP `burmese`;

ALTER TABLE `employees` DROP `google_plus_url`;
ALTER TABLE `employees` ADD `display_order` INT(11) NOT NULL AFTER `is_view_on_web`;
ALTER TABLE `teachers` ADD `display_order` INT(11) NOT NULL AFTER `is_view_on_web`;
ALTER TABLE `teachers` DROP `google_plus_url`;


ALTER TABLE `assignments` ADD `assigment_date` DATETIME NULL AFTER `title`, ADD `submission_date` DATETIME NULL AFTER `assigment_date`;
ALTER TABLE `assignments` ADD `sms_notification` TINYINT(1) NULL DEFAULT '0' AFTER `submission_date`;
ALTER TABLE `assignments` ADD `email_notification` TINYINT(1) NULL DEFAULT '0' AFTER `sms_notification`;
ALTER TABLE `assignments` DROP `deadline`;
ALTER TABLE `discounts` ADD `discount_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `title`;
ALTER TABLE `income_heads` CHANGE `head_type` `head_type` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT 'fee, sale, income, hostel, transport';
ALTER TABLE `invoices` DROP `income_head_id`;
ALTER TABLE `invoices` CHANGE `invoice_type` `invoice_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'income,invoice';
ALTER TABLE `invoices` ADD `role_id` INT(11) NOT NULL AFTER `id`;
ALTER TABLE `invoices` CHANGE `student_id` `user_id` INT(11) NOT NULL COMMENT 'invoice: profile_id, sale: user_id';
ALTER TABLE `students` ADD `status_type` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'regular' COMMENT 'regular, drop_out, transfer, passed ' AFTER `status`;
ALTER TABLE `transactions` ADD `bank_receipt` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `cheque_no`;
ALTER TABLE `invoices` CHANGE `invoice_type` `invoice_type` VARCHAR(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'income,invoice, sale';
ALTER TABLE `transactions` ADD `dbbl_card_type` TINYINT(1) NULL AFTER `stripe_card_number`;

ALTER TABLE `settings` DROP `school_lat`, DROP `school_lng`, DROP `map_api_key`;
ALTER TABLE `settings` ADD `google_map` TEXT CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `google_analytics`;
ALTER TABLE `teachers` CHANGE `resign_date` `resign_date` TEXT NULL DEFAULT NULL;
ALTER TABLE `employees` ADD `department_id` INT(11) NOT NULL DEFAULT '0' AFTER `designation_id`;


--
-- Table structure for table `themes`
--
DROP TABLE `themes`;
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

ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


--
-- Table structure for table `modules`
--
DROP TABLE `modules`;
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

ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;


--
-- Table structure for table `operations`
--
DROP TABLE `operations`;
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

ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;


--
-- Table structure for table `privileges`
--
DROP TABLE `privileges`;
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

ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1917;