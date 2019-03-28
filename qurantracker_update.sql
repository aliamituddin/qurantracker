
--
-- Table structure for table `frequencies`
--

CREATE TABLE `frequencies` (
  `id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8,
  `description_sw` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frequencies`
--

INSERT INTO `frequencies` (`id`, `description`, `description_sw`, `status`, `doc`, `dom`, `createdby`, `modifiedby`) VALUES
(1, 'Once a weeks', 'Mara moja', 1, '2019-03-20 09:52:18', '2019-03-26 11:27:44', NULL, 924),
(2, 'Twice a week', 'Mara mbili', 1, '2019-03-20 09:52:26', '2019-03-20 09:53:23', NULL, NULL),
(3, 'Thrice a week', 'Mara tatu', 1, '2019-03-20 09:52:27', '2019-03-20 09:53:26', NULL, NULL),
(4, 'Four times a week', 'Mara nne', 1, '2019-03-20 09:52:33', '2019-03-20 09:53:28', NULL, NULL),
(5, 'Five times a week', 'Mara tano', 1, '2019-03-20 09:52:38', '2019-03-20 09:53:31', NULL, NULL),
(6, 'Six times a week', 'Mara sita', 1, '2019-03-20 09:52:42', '2019-03-20 09:53:33', NULL, NULL),
(7, 'Every day', 'Kila siku', 0, '2019-03-20 09:53:00', '2019-03-27 07:11:34', NULL, NULL),
(8, 'None of the days - except Saturday Madrasah', 'Huhudhuria Madrasah Jumamosi tu', 1, '2019-03-20 09:53:09', '2019-03-20 09:53:44', NULL, NULL);

--
-- Table structure for table `makhrajs`
--

CREATE TABLE `makhrajs` (
  `id` int(11) NOT NULL,
  `description` text CHARACTER SET utf16,
  `description_sw` text CHARACTER SET utf16 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `override` int(11) NOT NULL DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makhrajs`
--

INSERT INTO `makhrajs` (`id`, `description`, `description_sw`, `status`, `override`, `doc`, `dom`, `createdby`, `modifiedby`) VALUES
(1, 'ا', 'ا', 1, 0, '2019-03-20 09:58:41', '2019-03-20 09:58:56', NULL, NULL),
(2, 'ب', 'ب', 1, 0, '2019-03-20 09:58:41', '2019-03-20 09:58:56', NULL, NULL),
(3, 'ت', 'ت', 1, 0, '2019-03-20 09:58:41', '2019-03-20 09:58:56', NULL, NULL),
(4, 'ث', 'ث', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(5, 'ج', 'ج', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(6, 'ح', 'ح', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(7, 'خ', 'خ', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(8, 'د', 'د', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(9, 'ذ', 'ذ', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(10, 'ر', 'ر', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(11, 'ز', 'ز', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(12, 'س', 'س', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(13, 'ش', 'ش', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(14, 'ص', 'ص', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(15, 'ض', 'ض', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(16, 'ط', 'ط', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(17, 'ظ', 'ظ', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(18, 'ع', 'ع', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(19, 'غ', 'غ', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(20, 'ف', 'ف', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(21, 'ق', 'ق', 1, 0, '2019-03-20 09:58:42', '2019-03-20 09:58:56', NULL, NULL),
(22, 'ك', 'ك', 1, 0, '2019-03-20 09:58:43', '2019-03-20 09:58:56', NULL, NULL),
(23, 'ل', 'ل', 1, 0, '2019-03-20 09:58:43', '2019-03-20 09:58:56', NULL, NULL),
(24, 'م', 'م', 1, 0, '2019-03-20 09:58:43', '2019-03-20 09:58:56', NULL, NULL),
(25, 'ن', 'ن', 1, 0, '2019-03-20 09:58:43', '2019-03-20 09:58:56', NULL, NULL),
(26, 'و', 'و', 1, 0, '2019-03-20 09:58:43', '2019-03-20 09:58:56', NULL, NULL),
(27, 'ه', 'ه', 1, 0, '2019-03-20 09:58:43', '2019-03-20 09:58:56', NULL, NULL),
(28, 'ی', 'ی', 1, 0, '2019-03-20 09:58:43', '2019-03-20 09:58:56', NULL, NULL),
(29, 'Sound Origination- Lip letters', 'Satui inapotengenezwa - Herufi za mdomoni', 1, 0, '2019-03-20 09:59:11', '2019-03-20 09:59:58', NULL, NULL),
(30, 'Sound Origination- Tongue letters', 'Satui inapotengenezwa - Herufi za kwenye ulimi', 1, 0, '2019-03-20 09:59:13', '2019-03-20 10:00:03', NULL, NULL),
(31, 'Sound Origination- Throat letters', 'Satui inapotengenezwa - Herufi za kwenye koromeo', 1, 0, '2019-03-20 09:59:34', '2019-03-20 10:00:17', NULL, NULL),
(32, 'Light letters', 'Herufi nyepesi', 1, 0, '2019-03-20 09:59:34', '2019-03-20 10:00:18', NULL, NULL),
(33, 'Heavy letters', 'Herufi nzito', 1, 0, '2019-03-20 09:59:44', '2019-03-20 10:00:24', NULL, NULL),
(34, 'The student\'s Makharij is excellent MashaAllah!', 'Makhraj yake ni nzuri kabisa. Mashallah!', 1, 1, '2019-03-20 09:59:45', '2019-03-27 06:47:49', NULL, 924),
(35, 'Huruf Lin', 'Herufi Lin', 0, 0, '2019-03-27 07:13:04', '2019-03-27 07:13:10', 924, NULL);

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `description` text,
  `description_sw` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `description`, `description_sw`, `status`, `doc`, `dom`, `createdby`, `modifiedby`) VALUES
(1, 'Parent/Guardian at home', 'Na mzazi/mlezi akiwa nyumbani', 1, '2019-03-20 07:56:19', '2019-03-20 09:50:37', NULL, NULL),
(2, 'Maalim comes home', 'Na Maalim akiwa nyumbani', 1, '2019-03-20 07:56:28', '2019-03-20 09:50:43', NULL, NULL),
(3, 'Goes to a Quran teachers home', 'Humfuata mwalimu wa Quran nyumbani kwake', 1, '2019-03-20 07:56:33', '2019-03-20 09:50:50', NULL, NULL),
(4, 'Attends Madrastus Sadiq or other Madrasah', 'Humfuata Madrasatus Sadiq ma Madrasah', 1, '2019-03-20 07:56:41', '2019-03-20 09:50:59', NULL, NULL),
(5, 'Does not recite Quran at home and does not attend other Madrasah', 'Hasomi Quran nyumbani na hahudhurii Madrasah', 1, '2019-03-20 07:56:48', '2019-03-20 09:51:01', NULL, NULL),
(6, 'Haram', 'Haram', 0, '2019-03-27 07:14:15', '2019-03-27 07:14:22', 924, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` int(11) NOT NULL,
  `menuid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenus`
--
DROP TABLE submenus;
INSERT INTO `submenus` (`id`, `menuid`, `name`, `module`, `action`, `sortno`, `status`) VALUES
(1, 2, 'Students', 'users', 'students', 1, 1),
(2, 2, 'Parents', 'users', 'parents', 2, 1),
(3, 2, 'Teachers', 'users', 'teachers', 3, 1),
(4, 2, 'Admins', 'users', 'admins', 4, 1),
(5, 3, 'Madrasahs', 'masters', 'madrasahs', 1, 1),
(6, 3, 'Grades', 'masters', 'grades', 2, 1),
(7, 3, 'Classes', 'masters', 'classes', 3, 1),
(8, 3, 'Terms', 'masters', 'terms', 4, 1),
(9, 3, 'Years', 'masters', 'years', 5, 1),
(10, 3, 'Levels', 'masters', 'levels', 6, 1),
(11, 3, 'Benchmarks', 'masters', 'benchmarks', 7, 1),
(12, 4, 'Student Enrollments', 'allocations', 'enrollments', 1, 1),
(13, 4, 'Teacher Allocations', 'allocations', 'allocations', 2, 1),
(14, 5, 'Modify Level', 'remarks', 'modifications', 1, 1),
(15, 5, 'Yearly Report', 'remarks', 'yearly_reports', 2, 1),
(16, 3, 'Improvements', 'masters', 'improvements', 8, 0),
(17, 3, 'Discipline Remarks', 'masters', 'disciplines', 9, 0),
(18, 3, 'Frequencies', 'masters', 'frequencies', 10, 0),
(19, 3, 'Makhrajs', 'masters', 'makhrajs', 11, 0),
(20, 3, 'Partners', 'masters', 'partners', 12, 0),
(21, 3, 'Tajweeds', 'masters', 'tajweeds', 13, 0),
(22, 6, 'Discipline Remarks', 'reportmasters', 'disciplines', 1, 1),
(23, 6, 'Improvements', 'reportmasters', 'improvements', 2, 1),
(24, 6, 'Frequencies', 'reportmasters', 'frequencies', 3, 1),
(25, 6, 'Makhrajs', 'reportmasters', 'makhrajs', 4, 1),
(26, 6, 'Tajweeds', 'reportmasters', 'tajweeds', 5, 1),
(27, 6, 'Partners', 'reportmasters', 'partners', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tajweeds`
--

CREATE TABLE `tajweeds` (
  `id` int(11) NOT NULL,
  `description` text CHARACTER SET utf16,
  `description_sw` text CHARACTER SET utf16 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `override` int(11) NOT NULL DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tajweeds`
--

INSERT INTO `tajweeds` (`id`, `description`, `description_sw`, `status`, `override`, `doc`, `dom`, `createdby`, `modifiedby`) VALUES
(1, 'Stopping signs', 'Alama za waqf', 1, 0, '2019-03-20 13:40:05', '2019-03-20 13:43:27', NULL, NULL),
(2, 'Rules of Nun Sakin and Tanween', 'Sheria za Nun Sakin na Tanween', 1, 0, '2019-03-20 13:40:14', '2019-03-20 13:43:38', NULL, NULL),
(3, 'Idghaam', 'Idghaam', 1, 0, '2019-03-20 13:40:18', '2019-03-20 13:43:41', NULL, NULL),
(4, 'Idhaar', 'Idhaar', 1, 0, '2019-03-20 13:40:23', '2019-03-20 13:43:42', NULL, NULL),
(5, 'Iqlaab', 'Iqlaab', 1, 0, '2019-03-20 13:40:24', '2019-03-20 13:43:44', NULL, NULL),
(6, 'Ikhfaa', 'Ikhfaa', 1, 0, '2019-03-20 13:40:32', '2019-03-20 13:43:45', NULL, NULL),
(7, 'Rules of Meem Sakin', 'Sheria za Meem Sakin', 1, 0, '2019-03-20 13:40:37', '2019-03-20 13:43:53', NULL, NULL),
(8, 'Qalqala', 'Qalqala', 1, 0, '2019-03-20 13:40:41', '2019-03-20 13:43:54', NULL, NULL),
(9, 'Rules of Raa', 'Sheria za Raa', 1, 0, '2019-03-20 13:40:46', '2019-03-20 13:43:59', NULL, NULL),
(10, 'Rules of Laam', 'Sheria za Laam', 1, 0, '2019-03-20 13:40:50', '2019-03-20 13:44:05', NULL, NULL),
(11, 'Heavy and Light letters', 'Herufi nyepesi na nzito', 1, 0, '2019-03-20 13:40:56', '2019-03-20 13:44:10', NULL, NULL),
(12, 'Maddah', 'Maddah', 0, 0, '2019-03-20 13:40:58', '2019-03-27 07:13:36', NULL, NULL),
(13, 'Shaddah', 'Shaddah', 1, 0, '2019-03-20 13:41:07', '2019-03-20 13:44:15', NULL, NULL),
(14, 'Short/Long vowels', 'Short/Long vowels', 1, 0, '2019-03-20 13:41:07', '2019-03-20 13:44:24', NULL, NULL),
(15, 'Mashallah the student follows all the Tajweed rules well!', 'Mashallah mwanafunzi anafuata sheria zote za tajweed', 1, 1, '2019-03-20 13:41:13', '2019-03-27 06:56:53', NULL, 924),
(16, 'We have not covered all Tajweed rules yet, but those that are covered, the student has grasped them well MashAllah', 'Hatujafundisha sheria za Tajweed', 1, 1, '2019-03-20 13:41:24', '2019-03-27 06:58:21', NULL, 924);

-- --------------------------------------------------------
--
-- Table structure for table `userlevelrights`
--
DROP TABLE userlevelrights;
CREATE TABLE `userlevelrights` (
  `id` int(11) NOT NULL,
  `typeid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `submenuid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlevelrights`
--

INSERT INTO `userlevelrights` (`id`, `typeid`, `menuid`, `submenuid`, `doc`, `dom`, `createdby`, `modifiedby`) VALUES
(18, 3, 1, NULL, '2018-09-03 16:34:19', NULL, NULL, NULL),
(19, 4, 1, NULL, '2018-09-03 16:34:25', NULL, NULL, NULL),
(36, 2, 1, NULL, '2018-09-05 18:47:27', NULL, NULL, NULL),
(37, 2, 5, 14, '2018-09-05 18:47:27', NULL, NULL, NULL),
(38, 2, 5, 15, '2018-09-05 18:47:27', NULL, NULL, NULL),
(110, 1, 1, NULL, '2019-03-26 10:57:09', NULL, NULL, NULL),
(111, 1, 3, 5, '2019-03-26 10:57:09', NULL, NULL, NULL),
(112, 1, 3, 6, '2019-03-26 10:57:09', NULL, NULL, NULL),
(113, 1, 3, 7, '2019-03-26 10:57:09', NULL, NULL, NULL),
(114, 1, 3, 8, '2019-03-26 10:57:09', NULL, NULL, NULL),
(115, 1, 3, 9, '2019-03-26 10:57:09', NULL, NULL, NULL),
(116, 1, 3, 10, '2019-03-26 10:57:09', NULL, NULL, NULL),
(117, 1, 3, 11, '2019-03-26 10:57:09', NULL, NULL, NULL),
(118, 1, 6, 22, '2019-03-26 10:57:09', NULL, NULL, NULL),
(119, 1, 6, 23, '2019-03-26 10:57:09', NULL, NULL, NULL),
(120, 1, 6, 24, '2019-03-26 10:57:09', NULL, NULL, NULL),
(121, 1, 6, 25, '2019-03-26 10:57:09', NULL, NULL, NULL),
(122, 1, 6, 26, '2019-03-26 10:57:09', NULL, NULL, NULL),
(123, 1, 6, 27, '2019-03-26 10:57:09', NULL, NULL, NULL),
(124, 1, 4, 12, '2019-03-26 10:57:09', NULL, NULL, NULL),
(125, 1, 4, 13, '2019-03-26 10:57:09', NULL, NULL, NULL),
(126, 1, 5, 14, '2019-03-26 10:57:09', NULL, NULL, NULL),
(127, 1, 5, 15, '2019-03-26 10:57:09', NULL, NULL, NULL),
(128, 1, 2, 1, '2019-03-26 10:57:09', NULL, NULL, NULL),
(129, 1, 2, 2, '2019-03-26 10:57:09', NULL, NULL, NULL),
(130, 1, 2, 3, '2019-03-26 10:57:09', NULL, NULL, NULL),
(131, 1, 2, 4, '2019-03-26 10:57:09', NULL, NULL, NULL);

-- --------------------------------------------------------

CREATE TABLE `weaknesses` (
  `id` int(11) NOT NULL,
  `description` text CHARACTER SET utf16,
  `description_sw` text CHARACTER SET utf16 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `override` int(11) NOT NULL DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weaknesses`
--

INSERT INTO `weaknesses` (`id`, `description`, `description_sw`, `status`, `override`, `doc`, `dom`, `createdby`, `modifiedby`) VALUES
(1, 'ا', 'ا', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(2, 'ب', 'ب', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(3, 'ت', 'ت', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(4, 'ث', 'ث', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(5, 'ج', 'ج', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(6, 'ح', 'ح', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(7, 'خ', 'خ', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(8, 'د', 'د', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(9, 'ذ', 'ذ', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(10, 'ر', 'ر', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(11, 'ز', 'ز', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(12, 'س', 'س', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(13, 'ش', 'ش', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(14, 'ص', 'ص', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(15, 'ض', 'ض', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(16, 'ط', 'ط', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(17, 'ظ', 'ظ', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(18, 'ع', 'ع', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(19, 'غ', 'غ', 1, 0, '2019-03-20 13:39:03', '2019-03-20 13:39:19', NULL, NULL),
(20, 'ف', 'ف', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(21, 'ق', 'ق', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(22, 'ك', 'ك', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(23, 'ل', 'ل', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(24, 'م', 'م', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(25, 'ن', 'ن', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(26, 'و', 'و', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(27, 'ه', 'ه', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(28, 'ی', 'ی', 1, 0, '2019-03-20 13:39:04', '2019-03-20 13:39:19', NULL, NULL),
(29, 'The student can recognize all the letters well Mashallah!', 'Mwanafunzi ana uwezo wa kutambua herufi zote vizuri kabisa. Mashallah!', 1, 0, '2019-03-22 02:37:06', NULL, NULL, NULL);

-- --------------------------------------------------------
--
-- Indexes for table `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`id`);


--
-- Indexes for table `makhrajs`
--
ALTER TABLE `makhrajs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tajweeds`
--
ALTER TABLE `tajweeds`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `userlevelrights`
--
ALTER TABLE `userlevelrights`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `weaknesses`
--
ALTER TABLE `weaknesses`
  ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for table `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `makhrajs`
--
ALTER TABLE `makhrajs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tajweeds`
--
ALTER TABLE `tajweeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `userlevelrights`
--
ALTER TABLE `userlevelrights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `weaknesses`
--
ALTER TABLE `weaknesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;


ALTER TABLE `studentreports`
ADD COLUMN `flag`  int NULL DEFAULT 0 AFTER `comments`;

ALTER TABLE `students`
ADD COLUMN `gender`  enum('male','female') NULL DEFAULT NULL AFTER `name`;

ALTER TABLE `studentreports`
ADD COLUMN `opartner`  text NULL AFTER `accuracy`;
update studentpartners set partner = 2 where partner = 'maalim';
update studentpartners set partner = 1 where partner = 'parent';
update studentpartners set partner = 3 where partner = 'teacher';
update studentpartners set partner = 4 where partner = 'madressa';
update studentpartners set partner = 5 where partner = 'none';
ALTER TABLE `studentpartners` CHANGE `partner` `partner` VARCHAR(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL;
update studentreports as sr set opartner = (SELECT sp.partner FROM `studentpartners` as sp where sp.partner not in (select id from partners) and sr.id = sp.sreportid);
delete from studentpartners where id in (select id from (select id from studentpartners where partner NOT REGEXP '^[0-9]+$') as x);
ALTER TABLE `studentpartners` CHANGE `partner` `partnerid` INT(11) NULL DEFAULT NULL;

ALTER TABLE `studentreports`  ADD `omakhraj` TEXT NOT NULL  AFTER `opartner`;
ALTER TABLE `studentmakhrajs` CHANGE `makhraj` `makhraj` VARCHAR(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL;
update studentmakhrajs set makhraj = (select m.id from makhrajs as m where m.description = makhraj) where makhraj in (select m.description from makhrajs as m);
update studentmakhrajs set makhraj = 29 where makhraj = 'lip';
update studentmakhrajs set makhraj = 30 where makhraj = 'tongue';
update studentmakhrajs set makhraj = 31 where makhraj = 'throat';
update studentmakhrajs set makhraj = 32 where makhraj = 'light';
update studentmakhrajs set makhraj = 33 where makhraj = 'heavy';
update studentmakhrajs set makhraj = 34 where makhraj = 'none';
update studentreports as sr set omakhraj = (SELECT sm.makhraj FROM `studentmakhrajs` as sm where sm.makhraj not in (select id from makhrajs) and sr.id = sm.sreportid);
delete from studentmakhrajs where makhraj NOT REGEXP '^[0-9]+$';
ALTER TABLE `studentmakhrajs` CHANGE `makhraj` `makhrajid` INT(11) NULL DEFAULT NULL;

ALTER TABLE `studentreports`  ADD `oweakness` TEXT NOT NULL  AFTER `omakhraj`;
ALTER TABLE `studentweaknesses` CHANGE `weakness` `weakness` VARCHAR(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL;
update studentweaknesses set weakness = (select w.id from weaknesses as w where w.description = weakness) where weakness in (select w.description from weaknesses as w);
update studentweaknesses set weakness = 29 where weakness = 'all';
update studentreports as sr set oweakness = (SELECT sw.weakness FROM `studentweaknesses` as sw where sw.weakness not in (select id from weaknesses) and sr.id = sw.sreportid);
delete from studentweaknesses where weakness NOT REGEXP '^[0-9]+$';
ALTER TABLE `studentweaknesses` CHANGE `weakness` `weaknessid` INT(11) NULL DEFAULT NULL;

update `studentreports` set frequency = 8 WHERE frequency = 0;

ALTER TABLE `studentreports`  ADD `otajweed` TEXT NOT NULL  AFTER `omakhraj`;
ALTER TABLE `studenttajweeds` CHANGE `tajweed` `tajweed` VARCHAR(255) CHARACTER SET utf16 COLLATE utf16_general_ci NULL DEFAULT NULL;
update studenttajweeds set tajweed = (select w.id from tajweeds as w where w.description = tajweed) where tajweed in (select w.description from tajweeds as w);
update studenttajweeds set tajweed = 1 where tajweed = 'stop';
update studenttajweeds set tajweed = 2 where tajweed = 'nst';
update studenttajweeds set tajweed = 3 where tajweed = 'idghaam';
update studenttajweeds set tajweed = 4 where tajweed = 'idhaar';
update studenttajweeds set tajweed = 5 where tajweed = 'iqlaab';
update studenttajweeds set tajweed = 6 where tajweed = 'ikhfaa';
update studenttajweeds set tajweed = 7 where tajweed = 'ms';
update studenttajweeds set tajweed = 8 where tajweed = 'qalqala';
update studenttajweeds set tajweed = 9 where tajweed = 'raa';
update studenttajweeds set tajweed = 10 where tajweed = 'laam';
update studenttajweeds set tajweed = 11 where tajweed = 'hll';
update studenttajweeds set tajweed = 12 where tajweed = 'maddah';
update studenttajweeds set tajweed = 13 where tajweed = 'shaddah';
update studenttajweeds set tajweed = 14 where tajweed = 'slvowels';
update studenttajweeds set tajweed = 15 where tajweed = 'none';
update studenttajweeds set tajweed = 16 where tajweed = 'na';
update studentreports as sr set otajweed = (SELECT sw.tajweed FROM `studenttajweeds` as sw where sw.tajweed not in (select id from tajweeds) and sr.id = sw.sreportid);
delete from studenttajweeds where tajweed NOT REGEXP '^[0-9]+$';
ALTER TABLE `studenttajweeds` CHANGE `tajweed` `tajweedid` INT(11) NULL DEFAULT NULL;

ALTER TABLE `disciplines` ADD `status` INT NOT NULL DEFAULT '1' AFTER `description_sw`;
ALTER TABLE `improvements` ADD `status` INT NOT NULL DEFAULT '1' AFTER `description_sw`;
ALTER TABLE `studentreports` CHANGE COLUMN `frequency` `frequencyid`  int(11) NULL DEFAULT NULL AFTER `stageid`;
