/*
Navicat MySQL Data Transfer

Source Server         : HMGS
Source Server Version : 50641
Source Host           : hmgs.ac.tz:3306
Source Database       : hmgsac_qurantracker

Target Server Type    : MYSQL
Target Server Version : 50641
File Encoding         : 65001

Date: 2019-04-12 21:53:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'Adminstrator', '0683926819', 'quranhmgs@gmail.com', '924', '2018-09-03 21:08:18', '2019-04-08 10:38:34', '1', '924');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', 'A', '2018-09-06 23:12:14', null, null, null);
INSERT INTO `classes` VALUES ('2', 'B', '2018-09-06 23:12:15', null, null, null);
INSERT INTO `classes` VALUES ('3', 'C', '2018-09-06 23:12:16', null, null, null);

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES ('1', 'lime', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('2', 'green', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('3', 'emerald', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('4', 'blue', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('5', 'teal', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('6', 'cyan', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('7', 'cobalt', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('8', 'indigo', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('9', 'violet', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('10', 'pink', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('11', 'magenta', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('12', 'crimson', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('13', 'red', '2018-07-08 23:33:33', null, null, null);
INSERT INTO `colors` VALUES ('14', 'orange', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('15', 'amber', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('16', 'yellow', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('17', 'brown', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('18', 'olive', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('19', 'steel', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('20', 'mauve', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('21', 'taupe', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('22', 'gray', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('23', 'grayBlue', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('24', 'lightLime', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('25', 'lightGreen', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('26', 'lightEmerald', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('27', 'lightBlue', '2018-07-08 23:33:34', null, null, null);
INSERT INTO `colors` VALUES ('28', 'lightTeal', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('29', 'lightCyan', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('30', 'lightCobalt', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('31', 'lightIndigo', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('32', 'lightViolet', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('33', 'lightPink', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('34', 'lightMagenta', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('35', 'lightCrimson', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('36', 'lightRed', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('37', 'lightOrange', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('38', 'lightAmber', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('39', 'lightYellow', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('40', 'lightBrown', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('41', 'lightOlive', '2018-07-08 23:33:35', null, null, null);
INSERT INTO `colors` VALUES ('42', 'lightSteel', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('43', 'lightMauve', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('44', 'lightTaupe', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('45', 'lightGray', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('46', 'lightGrayBlue', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('47', 'darkLime', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('48', 'darkGreen', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('49', 'darkEmerald', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('50', 'darkBlue', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('51', 'darkTeal', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('52', 'darkCyan', '2018-07-08 23:33:36', null, null, null);
INSERT INTO `colors` VALUES ('53', 'darkCobalt', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('54', 'darkIndigo', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('55', 'darkViolet', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('56', 'darkPink', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('57', 'darkMagenta', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('58', 'darkCrimson', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('59', 'darkRed', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('60', 'darkOrange', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('61', 'darkAmber', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('62', 'darkYellow', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('63', 'darkBrown', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('64', 'darkOlive', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('65', 'darkSteel', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('66', 'darkMauve', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('67', 'darkTaupe', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('68', 'darkGray', '2018-07-08 23:33:37', null, null, null);
INSERT INTO `colors` VALUES ('69', 'darkGrayBlue', '2018-07-08 23:33:37', null, null, null);

-- ----------------------------
-- Table structure for disciplines
-- ----------------------------
DROP TABLE IF EXISTS `disciplines`;
CREATE TABLE `disciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `description_sw` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of disciplines
-- ----------------------------
INSERT INTO `disciplines` VALUES ('1', 'is an enthusiastic learner who has shown great progress throughout the term.', 'Ni mwanafunzi mwenye ari aliyeonyesha maendeleo mazuri wakati wote wa muhula', '1', '2018-09-08 01:21:20', '2019-04-05 19:10:15', null, '924');
INSERT INTO `disciplines` VALUES ('2', 'is a cheerful and capable student and has demonstrated good progress this year.', 'Ni mchangamfu na mwenye uwezo na ameonyesha maendeleo mazuri mwaka huu', '1', '2018-09-08 01:21:20', '2019-04-06 19:44:07', null, '924');
INSERT INTO `disciplines` VALUES ('3', 'is a determined learner who takes keen effort while reciting the Holy Quran.', 'Ni mwanafunzi aliyedhamiria na kuonyesha juhudi kwenye usomaji wa Quran Takatifu', '1', '2018-09-08 01:21:20', '2019-04-06 19:44:15', null, '924');
INSERT INTO `disciplines` VALUES ('4', 'is a disciplined student who consistently works hard to improve recitation.', 'Ni mwanafunzi mwenye heshima ambaye mara zote anajitahidi kuongeza juhudi ili kuboresha usomaji wa Quran', '1', '2018-09-08 01:21:20', '2019-04-06 19:44:24', null, '924');
INSERT INTO `disciplines` VALUES ('5', 'is an active and cheerful learner and has demonstrated good progress this year.', 'Ni mchangamvu na mwenye furaha na ameonyesha maendeleo mazuri mwaka huu', '1', '2018-09-08 01:21:20', '2019-04-06 19:44:37', null, '924');
INSERT INTO `disciplines` VALUES ('6', 'is an enthusiastic student and has demonstrated excellent progress.', 'Ni mwenye nguvu na ameonyesha maendeleo mazuri', '1', '2018-09-08 01:21:21', '2019-04-06 19:43:56', null, '924');
INSERT INTO `disciplines` VALUES ('7', 'is a very hardworking and calm student and has shown remarkable progress.', 'Ni mchapakazi na mpole na ameonyesha maendeleo mazuri', '1', '2018-09-08 01:21:21', '2019-04-06 19:43:44', null, '924');
INSERT INTO `disciplines` VALUES ('8', 'grasps new concepts quickly and recites very fluently. A great achievement mashA!', 'Huelewa vitu vipya haraka sana na kusoma Quran kwa urahisi. Ana mafanikio makubwa sana', '1', '2018-09-08 01:21:21', '2019-04-06 19:45:07', null, '924');
INSERT INTO `disciplines` VALUES ('9', 'is a polite and disciplined student.', 'Ni mpole na mwenye nidhamu', '1', '2018-09-08 01:21:21', '2019-04-06 19:43:32', null, '924');
INSERT INTO `disciplines` VALUES ('10', 'is a cheerful and well-behaved learner who enjoys reciting the Qur’an.', 'Ni mwenye furaha anayejiheshimu na kupenda kusoma Quran', '1', '2018-09-08 01:21:21', '2019-04-06 19:43:18', null, '924');
INSERT INTO `disciplines` VALUES ('11', 'is a well behaved child and recites the Quran very carefully.', 'Ni mwanafunzi mwenye tabia nzuri na husoma Quran kwa uangalifu sana', '1', '2018-09-08 01:21:21', '2019-04-06 19:44:50', null, '924');
INSERT INTO `disciplines` VALUES ('12', 'has great potential to recite very well!', 'Naona uwezekano mkubwa sana kwa yeye kusoma Quran vizuri', '1', '2018-09-08 01:21:21', '2019-04-06 19:45:49', null, '924');
INSERT INTO `disciplines` VALUES ('13', 'is a well-mannered student who has shown good progress.', 'Ni mwanafunzi mwenye tabia nzuri aliyeonyesha maendeleo mazuri', '1', '2018-09-08 01:21:21', '2019-04-06 19:46:02', null, '924');
INSERT INTO `disciplines` VALUES ('14', 'has worked tremendously to improve letter recognition, reading fluently, and pronounciation of heavy letters.', 'Amefanya kwa bidi sana na kuboresha ugunduzi wa sauti, kusoma vizuri matamshi ya herufi nzito', '1', '2018-09-08 01:21:21', '2019-04-06 19:50:36', null, '924');
INSERT INTO `disciplines` VALUES ('15', 'grasps concepts quickly and recites very fluently and implements all the rules of level 3/4 and will soon be ready to start the big Quran.', 'Mwanafunzi anaelewa haraka sana kusoma kwa urahisi na kutekeleza sheria zote za hatua ya 3/4 na muda sio mrefu ataanza Quran kubwa', '1', '2018-09-08 01:21:21', '2019-04-06 19:50:27', null, '924');
INSERT INTO `disciplines` VALUES ('16', 'shows great interest and affection for the recitation of the Holy Quran and recites well and carefully.', 'Mwanafunzi ameonyesha kupendezwa sana na kuwa na mapenzi ya kusoma Quran kwa uangalifu mkubwa sana', '1', '2018-09-08 01:21:21', '2019-04-06 19:50:17', null, '924');
INSERT INTO `disciplines` VALUES ('17', 'is a cooperative child who enjoys socializing with peers.', 'Ni mwanafunzi anayependa kushirikiana na kujichanganya na wenzake', '1', '2018-09-08 01:21:21', '2019-04-06 19:50:07', null, '924');
INSERT INTO `disciplines` VALUES ('18', 'is a keen student who enjoys reading Quran.', 'Ni mwanafunzi anayependa sana kusoma Quran', '1', '2018-09-08 01:21:21', '2019-04-06 19:49:57', null, '924');
INSERT INTO `disciplines` VALUES ('19', 'is an active group member and enjoys participating in discussions with peers.', 'Ni mwanafunzi mchangamfu na anayefurahia kushirikiana na wenzake kwenye masomo', '1', '2018-09-08 01:21:22', '2019-04-06 19:49:47', null, '924');
INSERT INTO `disciplines` VALUES ('20', 'is a well-mannered and hard working child and can recognize all the Arabic letters very well.', 'Ni mwanafunzi mwenye tabia nzuri na ana uwezo wa kutambua herufi zote za Kiarabu', '1', '2018-09-08 01:21:22', '2019-04-06 19:49:37', null, '924');
INSERT INTO `disciplines` VALUES ('21', 'is a calm and enthusiastic learner who enjoys learning the Arabic letters.', 'Ni mwanafunzi aliyetulia na mwenye tabia bidii ya kujifunza herufi za Kiarabu', '1', '2018-09-08 01:21:22', '2019-04-06 19:46:45', null, '924');
INSERT INTO `disciplines` VALUES ('22', 'is an active and cheerful student who puts in good effort to read Quran and recognize the letters.', 'Ni mwanafunzi aliyechangamka, mwenye furaha na anayeweka juhudi katika kusoma Quran', '1', '2018-09-08 01:21:22', '2019-04-06 19:46:34', null, '924');
INSERT INTO `disciplines` VALUES ('23', 'is an enthusiastic learner who enjoys Quran recitation and has made great progress.', 'Ni mwanafunzi mwenye juhudi ya kusoma Quran na ameonyesha maendeleo makubwa', '1', '2018-09-08 01:21:22', '2019-04-06 19:46:19', null, '924');

-- ----------------------------
-- Table structure for dummy
-- ----------------------------
DROP TABLE IF EXISTS `dummy`;
CREATE TABLE `dummy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dummy
-- ----------------------------

-- ----------------------------
-- Table structure for enrollments
-- ----------------------------
DROP TABLE IF EXISTS `enrollments`;
CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) DEFAULT NULL,
  `gradeid` int(11) DEFAULT NULL,
  `classid` int(11) DEFAULT NULL,
  `yearid` int(11) DEFAULT NULL,
  `referenceno` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentid` (`studentid`,`gradeid`,`classid`,`yearid`)
) ENGINE=InnoDB AUTO_INCREMENT=865 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of enrollments
-- ----------------------------
INSERT INTO `enrollments` VALUES ('1', '1', '1', '1', '1', '1', '1', '2018-09-28 15:43:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('2', '2', '1', '1', '1', '2', '1', '2018-09-28 15:43:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('3', '3', '1', '1', '1', '3', '1', '2018-09-28 15:43:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('4', '4', '1', '1', '1', '4', '1', '2018-09-28 15:43:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('5', '5', '1', '1', '1', '5', '1', '2018-09-28 15:43:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('6', '6', '1', '1', '1', '6', '1', '2018-09-28 15:43:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('7', '7', '1', '1', '1', '7', '1', '2018-09-28 15:43:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('8', '8', '1', '1', '1', '8', '1', '2018-09-28 15:43:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('9', '9', '1', '1', '1', '9', '1', '2018-09-28 15:43:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('10', '10', '1', '1', '1', '10', '1', '2018-09-28 15:43:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('11', '11', '1', '1', '1', '11', '0', '2018-09-28 15:43:02', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('12', '12', '1', '1', '1', '12', '1', '2018-09-28 15:43:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('13', '13', '1', '1', '1', '13', '1', '2018-09-28 15:43:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('14', '14', '1', '1', '1', '14', '1', '2018-09-28 15:43:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('15', '15', '1', '1', '1', '15', '1', '2018-09-28 15:43:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('16', '16', '1', '1', '1', '16', '1', '2018-09-28 15:43:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('17', '17', '1', '1', '1', '17', '0', '2018-09-28 15:43:04', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('18', '18', '1', '1', '1', '18', '1', '2018-09-28 15:43:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('19', '19', '1', '1', '1', '19', '1', '2018-09-28 15:43:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('20', '20', '1', '1', '1', '20', '1', '2018-09-28 15:43:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('21', '21', '1', '2', '1', '1', '1', '2018-09-28 15:43:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('22', '22', '1', '2', '1', '2', '1', '2018-09-28 15:43:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('23', '23', '1', '2', '1', '3', '1', '2018-09-28 15:43:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('24', '24', '1', '2', '1', '4', '0', '2018-09-28 15:43:05', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('25', '25', '1', '2', '1', '5', '1', '2018-09-28 15:43:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('26', '26', '1', '2', '1', '6', '1', '2018-09-28 15:43:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('27', '27', '1', '2', '1', '7', '1', '2018-09-28 15:43:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('28', '28', '1', '2', '1', '8', '1', '2018-09-28 15:43:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('29', '29', '1', '2', '1', '9', '1', '2018-09-28 15:43:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('30', '30', '1', '2', '1', '10', '1', '2018-09-28 15:43:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('31', '31', '1', '2', '1', '11', '1', '2018-09-28 15:43:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('32', '32', '1', '2', '1', '12', '0', '2018-09-28 15:43:06', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('33', '33', '1', '2', '1', '13', '0', '2018-09-28 15:43:06', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('34', '34', '1', '2', '1', '14', '1', '2018-09-28 15:43:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('35', '35', '1', '2', '1', '15', '1', '2018-09-28 15:43:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('36', '36', '1', '2', '1', '16', '1', '2018-09-28 15:43:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('37', '37', '1', '2', '1', '17', '1', '2018-09-28 15:43:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('38', '38', '1', '2', '1', '18', '1', '2018-09-28 15:43:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('39', '39', '1', '2', '1', '19', '1', '2018-09-28 15:43:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('40', '40', '1', '2', '1', '20', '1', '2018-09-28 15:43:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('41', '41', '1', '2', '1', '21', '0', '2018-09-28 15:43:08', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('42', '42', '1', '3', '1', '1', '1', '2018-09-28 15:43:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('43', '43', '1', '3', '1', '2', '1', '2018-09-28 15:43:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('44', '44', '1', '3', '1', '3', '1', '2018-09-28 15:43:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('45', '45', '1', '3', '1', '4', '1', '2018-09-28 15:43:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('46', '46', '1', '3', '1', '5', '1', '2018-09-28 15:43:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('47', '47', '1', '3', '1', '6', '1', '2018-09-28 15:43:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('48', '48', '1', '3', '1', '7', '1', '2018-09-28 15:43:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('49', '49', '1', '3', '1', '8', '1', '2018-09-28 15:43:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('50', '50', '1', '3', '1', '9', '1', '2018-09-28 15:43:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('51', '51', '1', '3', '1', '10', '1', '2018-09-28 15:43:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('52', '52', '1', '3', '1', '11', '1', '2018-09-28 15:43:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('53', '53', '1', '3', '1', '12', '1', '2018-09-28 15:43:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('54', '54', '1', '3', '1', '13', '1', '2018-09-28 15:43:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('55', '55', '1', '3', '1', '14', '1', '2018-09-28 15:43:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('56', '56', '1', '3', '1', '15', '1', '2018-09-28 15:43:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('57', '57', '1', '3', '1', '16', '1', '2018-09-28 15:43:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('58', '58', '1', '3', '1', '17', '1', '2018-09-28 15:43:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('59', '59', '1', '3', '1', '18', '1', '2018-09-28 15:43:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('60', '60', '1', '3', '1', '19', '1', '2018-09-28 15:43:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('61', '61', '2', '1', '1', '1', '1', '2018-09-28 15:43:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('62', '62', '2', '1', '1', '2', '1', '2018-09-28 15:43:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('63', '63', '2', '1', '1', '3', '1', '2018-09-28 15:43:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('64', '64', '2', '1', '1', '4', '1', '2018-09-28 15:43:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('65', '65', '2', '1', '1', '5', '1', '2018-09-28 15:43:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('66', '66', '2', '1', '1', '6', '0', '2018-09-28 15:43:12', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('67', '67', '2', '1', '1', '7', '1', '2018-09-28 15:43:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('68', '68', '2', '1', '1', '8', '1', '2018-09-28 15:43:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('69', '69', '2', '1', '1', '9', '1', '2018-09-28 15:43:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('70', '70', '2', '1', '1', '10', '1', '2018-09-28 15:43:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('71', '71', '2', '1', '1', '11', '1', '2018-09-28 15:43:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('72', '72', '2', '1', '1', '12', '1', '2018-09-28 15:43:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('73', '73', '2', '1', '1', '13', '1', '2018-09-28 15:43:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('74', '74', '2', '1', '1', '14', '1', '2018-09-28 15:43:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('75', '75', '2', '1', '1', '15', '1', '2018-09-28 15:43:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('76', '76', '2', '1', '1', '16', '1', '2018-09-28 15:43:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('77', '77', '2', '1', '1', '17', '1', '2018-09-28 15:43:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('78', '78', '2', '1', '1', '18', '0', '2018-09-28 15:43:14', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('79', '79', '2', '1', '1', '19', '0', '2018-09-28 15:43:14', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('80', '80', '2', '2', '1', '1', '1', '2018-09-28 15:43:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('81', '81', '2', '2', '1', '2', '1', '2018-09-28 15:43:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('82', '82', '2', '2', '1', '3', '1', '2018-09-28 15:43:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('83', '83', '2', '2', '1', '4', '1', '2018-09-28 15:43:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('84', '84', '2', '2', '1', '5', '0', '2018-09-28 15:43:15', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('85', '85', '2', '2', '1', '6', '1', '2018-09-28 15:43:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('86', '86', '2', '2', '1', '7', '1', '2018-09-28 15:43:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('87', '87', '2', '2', '1', '8', '1', '2018-09-28 15:43:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('88', '88', '2', '2', '1', '9', '1', '2018-09-28 15:43:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('89', '89', '2', '2', '1', '10', '1', '2018-09-28 15:43:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('90', '90', '2', '2', '1', '11', '1', '2018-09-28 15:43:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('91', '91', '2', '2', '1', '12', '1', '2018-09-28 15:43:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('92', '92', '2', '2', '1', '13', '1', '2018-09-28 15:43:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('93', '93', '2', '2', '1', '14', '1', '2018-09-28 15:43:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('94', '94', '2', '2', '1', '15', '1', '2018-09-28 15:43:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('95', '95', '2', '2', '1', '16', '1', '2018-09-28 15:43:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('96', '96', '2', '2', '1', '17', '1', '2018-09-28 15:43:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('97', '97', '2', '2', '1', '18', '0', '2018-09-28 15:43:18', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('98', '98', '2', '3', '1', '1', '1', '2018-09-28 15:43:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('99', '99', '2', '3', '1', '2', '1', '2018-09-28 15:43:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('100', '100', '2', '3', '1', '3', '1', '2018-09-28 15:43:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('101', '101', '2', '3', '1', '4', '1', '2018-09-28 15:43:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('102', '102', '2', '3', '1', '5', '0', '2018-09-28 15:43:18', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('103', '103', '2', '3', '1', '6', '1', '2018-09-28 15:43:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('104', '104', '2', '3', '1', '7', '1', '2018-09-28 15:43:19', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('105', '105', '2', '3', '1', '8', '1', '2018-09-28 15:43:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('106', '106', '2', '3', '1', '9', '1', '2018-09-28 15:43:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('107', '107', '2', '3', '1', '10', '1', '2018-09-28 15:43:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('108', '108', '2', '3', '1', '11', '1', '2018-09-28 15:43:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('109', '109', '2', '3', '1', '12', '1', '2018-09-28 15:43:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('110', '110', '2', '3', '1', '13', '1', '2018-09-28 15:43:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('111', '111', '2', '3', '1', '14', '1', '2018-09-28 15:43:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('112', '112', '2', '3', '1', '15', '1', '2018-09-28 15:43:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('113', '113', '2', '3', '1', '16', '1', '2018-09-28 15:43:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('114', '114', '2', '3', '1', '17', '0', '2018-09-28 15:43:21', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('115', '115', '2', '3', '1', '18', '1', '2018-09-28 15:43:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('116', '116', '2', '3', '1', '19', '1', '2018-09-28 15:43:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('117', '117', '3', '1', '1', '1', '1', '2018-09-28 15:43:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('118', '118', '3', '1', '1', '2', '1', '2018-09-28 15:43:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('119', '119', '3', '1', '1', '3', '1', '2018-09-28 15:43:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('120', '120', '3', '1', '1', '4', '1', '2018-09-28 15:43:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('121', '121', '3', '1', '1', '5', '1', '2018-09-28 15:43:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('122', '122', '3', '1', '1', '6', '1', '2018-09-28 15:43:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('123', '123', '3', '1', '1', '7', '1', '2018-09-28 15:43:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('124', '124', '3', '1', '1', '8', '1', '2018-09-28 15:43:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('125', '125', '3', '1', '1', '9', '1', '2018-09-28 15:43:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('126', '126', '3', '1', '1', '10', '1', '2018-09-28 15:43:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('127', '127', '3', '1', '1', '11', '1', '2018-09-28 15:43:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('128', '128', '3', '1', '1', '12', '1', '2018-09-28 15:43:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('129', '129', '3', '1', '1', '13', '1', '2018-09-28 15:43:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('130', '130', '3', '1', '1', '14', '1', '2018-09-28 15:43:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('131', '131', '3', '1', '1', '15', '1', '2018-09-28 15:43:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('132', '132', '3', '1', '1', '16', '1', '2018-09-28 15:43:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('133', '133', '3', '1', '1', '17', '1', '2018-09-28 15:43:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('134', '134', '3', '1', '1', '18', '1', '2018-09-28 15:43:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('135', '135', '3', '2', '1', '1', '1', '2018-09-28 15:43:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('136', '136', '3', '2', '1', '2', '1', '2018-09-28 15:43:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('137', '137', '3', '2', '1', '3', '1', '2018-09-28 15:43:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('138', '138', '3', '2', '1', '4', '1', '2018-09-28 15:43:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('139', '139', '3', '2', '1', '5', '1', '2018-09-28 15:43:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('140', '140', '3', '2', '1', '6', '1', '2018-09-28 15:43:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('141', '141', '3', '2', '1', '7', '1', '2018-09-28 15:43:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('142', '142', '3', '2', '1', '8', '1', '2018-09-28 15:43:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('143', '143', '3', '2', '1', '9', '1', '2018-09-28 15:43:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('144', '144', '3', '2', '1', '10', '1', '2018-09-28 15:43:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('145', '145', '3', '2', '1', '11', '1', '2018-09-28 15:43:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('146', '146', '3', '2', '1', '12', '1', '2018-09-28 15:43:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('147', '147', '3', '2', '1', '13', '1', '2018-09-28 15:43:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('148', '148', '3', '2', '1', '14', '1', '2018-09-28 15:43:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('149', '149', '3', '2', '1', '15', '1', '2018-09-28 15:43:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('150', '150', '3', '2', '1', '16', '1', '2018-09-28 15:43:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('151', '151', '3', '2', '1', '17', '1', '2018-09-28 15:43:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('152', '152', '3', '3', '1', '1', '1', '2018-09-28 15:43:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('153', '153', '3', '3', '1', '2', '1', '2018-09-28 15:43:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('154', '154', '3', '3', '1', '3', '1', '2018-09-28 15:43:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('155', '155', '3', '3', '1', '4', '1', '2018-09-28 15:43:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('156', '156', '3', '3', '1', '5', '0', '2018-09-28 15:43:28', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('157', '157', '3', '3', '1', '6', '1', '2018-09-28 15:43:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('158', '158', '3', '3', '1', '7', '1', '2018-09-28 15:43:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('159', '159', '3', '3', '1', '8', '1', '2018-09-28 15:43:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('160', '160', '3', '3', '1', '9', '1', '2018-09-28 15:43:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('161', '161', '3', '3', '1', '10', '1', '2018-09-28 15:43:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('162', '162', '3', '3', '1', '11', '1', '2018-09-28 15:43:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('163', '163', '3', '3', '1', '12', '1', '2018-09-28 15:43:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('164', '164', '3', '3', '1', '13', '1', '2018-09-28 15:43:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('165', '165', '3', '3', '1', '14', '1', '2018-09-28 15:43:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('166', '166', '3', '3', '1', '15', '1', '2018-09-28 15:43:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('167', '167', '3', '3', '1', '16', '1', '2018-09-28 15:43:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('168', '168', '4', '1', '1', '1', '1', '2018-09-28 15:43:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('169', '169', '4', '1', '1', '2', '1', '2018-09-28 15:43:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('170', '170', '4', '1', '1', '3', '1', '2018-09-28 15:43:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('171', '171', '4', '1', '1', '4', '1', '2018-09-28 15:43:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('172', '172', '4', '1', '1', '5', '1', '2018-09-28 15:43:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('173', '173', '4', '1', '1', '6', '1', '2018-09-28 15:43:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('174', '174', '4', '1', '1', '7', '1', '2018-09-28 15:43:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('175', '175', '4', '1', '1', '8', '1', '2018-09-28 15:43:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('176', '176', '4', '1', '1', '9', '1', '2018-09-28 15:43:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('177', '177', '4', '1', '1', '10', '1', '2018-09-28 15:43:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('178', '178', '4', '1', '1', '11', '1', '2018-09-28 15:43:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('179', '179', '4', '1', '1', '12', '1', '2018-09-28 15:43:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('180', '180', '4', '1', '1', '13', '1', '2018-09-28 15:43:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('181', '181', '4', '1', '1', '14', '1', '2018-09-28 15:43:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('182', '182', '4', '1', '1', '15', '1', '2018-09-28 15:43:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('183', '183', '4', '1', '1', '16', '1', '2018-09-28 15:43:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('184', '184', '4', '1', '1', '17', '1', '2018-09-28 15:43:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('185', '185', '4', '1', '1', '18', '1', '2018-09-28 15:43:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('186', '186', '4', '1', '1', '19', '1', '2018-09-28 15:43:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('187', '187', '4', '1', '1', '20', '1', '2018-09-28 15:43:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('188', '188', '4', '1', '1', '21', '1', '2018-09-28 15:43:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('189', '189', '4', '2', '1', '1', '1', '2018-09-28 15:43:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('190', '190', '4', '2', '1', '2', '1', '2018-09-28 15:43:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('191', '191', '4', '2', '1', '3', '1', '2018-09-28 15:43:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('192', '192', '4', '2', '1', '4', '1', '2018-09-28 15:43:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('193', '193', '4', '2', '1', '5', '1', '2018-09-28 15:43:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('194', '194', '4', '2', '1', '6', '1', '2018-09-28 15:43:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('195', '195', '4', '2', '1', '7', '1', '2018-09-28 15:43:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('196', '196', '4', '2', '1', '8', '0', '2018-09-28 15:43:35', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('197', '197', '4', '2', '1', '9', '1', '2018-09-28 15:43:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('198', '198', '4', '2', '1', '10', '1', '2018-09-28 15:43:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('199', '199', '4', '2', '1', '11', '1', '2018-09-28 15:43:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('200', '200', '4', '2', '1', '12', '1', '2018-09-28 15:43:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('201', '201', '4', '2', '1', '13', '1', '2018-09-28 15:43:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('202', '202', '4', '2', '1', '14', '1', '2018-09-28 15:43:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('203', '203', '4', '2', '1', '15', '1', '2018-09-28 15:43:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('204', '204', '4', '2', '1', '16', '1', '2018-09-28 15:43:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('205', '205', '4', '2', '1', '17', '1', '2018-09-28 15:43:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('206', '206', '4', '2', '1', '18', '1', '2018-09-28 15:43:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('207', '207', '4', '2', '1', '19', '1', '2018-09-28 15:43:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('208', '208', '4', '2', '1', '20', '1', '2018-09-28 15:43:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('209', '209', '4', '2', '1', '21', '1', '2018-09-28 15:43:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('210', '210', '4', '2', '1', '22', '1', '2018-09-28 15:43:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('211', '211', '4', '3', '1', '1', '1', '2018-09-28 15:43:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('212', '212', '4', '3', '1', '2', '1', '2018-09-28 15:43:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('213', '213', '4', '3', '1', '3', '1', '2018-09-28 15:43:38', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('214', '214', '4', '3', '1', '4', '1', '2018-09-28 15:43:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('215', '215', '4', '3', '1', '5', '1', '2018-09-28 15:43:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('216', '216', '4', '3', '1', '6', '1', '2018-09-28 15:43:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('217', '217', '4', '3', '1', '7', '1', '2018-09-28 15:43:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('218', '218', '4', '3', '1', '8', '1', '2018-09-28 15:43:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('219', '219', '4', '3', '1', '9', '1', '2018-09-28 15:43:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('220', '220', '4', '3', '1', '10', '1', '2018-09-28 15:43:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('221', '221', '4', '3', '1', '11', '1', '2018-09-28 15:43:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('222', '222', '4', '3', '1', '12', '1', '2018-09-28 15:43:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('223', '223', '4', '3', '1', '13', '1', '2018-09-28 15:43:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('224', '224', '4', '3', '1', '14', '1', '2018-09-28 15:43:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('225', '225', '4', '3', '1', '15', '1', '2018-09-28 15:43:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('226', '226', '4', '3', '1', '16', '1', '2018-09-28 15:43:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('227', '227', '4', '3', '1', '17', '1', '2018-09-28 15:43:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('228', '228', '4', '3', '1', '18', '1', '2018-09-28 15:43:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('229', '229', '4', '3', '1', '19', '1', '2018-09-28 15:43:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('230', '230', '4', '3', '1', '20', '1', '2018-09-28 15:43:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('231', '231', '4', '3', '1', '21', '1', '2018-09-28 15:43:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('232', '232', '5', '1', '1', '1', '1', '2018-09-28 15:43:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('233', '233', '5', '1', '1', '2', '1', '2018-09-28 15:43:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('234', '234', '5', '1', '1', '3', '1', '2018-09-28 15:43:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('235', '235', '5', '1', '1', '4', '1', '2018-09-28 15:43:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('236', '236', '5', '1', '1', '5', '1', '2018-09-28 15:43:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('237', '237', '5', '1', '1', '6', '1', '2018-09-28 15:43:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('238', '238', '5', '1', '1', '7', '1', '2018-09-28 15:43:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('239', '239', '5', '1', '1', '8', '1', '2018-09-28 15:43:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('240', '240', '5', '1', '1', '9', '1', '2018-09-28 15:43:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('241', '241', '5', '1', '1', '10', '1', '2018-09-28 15:43:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('242', '242', '5', '1', '1', '11', '1', '2018-09-28 15:43:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('243', '243', '5', '1', '1', '12', '1', '2018-09-28 15:43:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('244', '244', '5', '1', '1', '13', '1', '2018-09-28 15:43:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('245', '245', '5', '1', '1', '14', '1', '2018-09-28 15:43:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('246', '246', '5', '1', '1', '15', '1', '2018-09-28 15:43:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('247', '247', '5', '1', '1', '16', '1', '2018-09-28 15:43:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('248', '248', '5', '1', '1', '17', '1', '2018-09-28 15:43:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('249', '249', '5', '1', '1', '18', '1', '2018-09-28 15:43:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('250', '250', '5', '1', '1', '19', '1', '2018-09-28 15:43:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('251', '251', '5', '1', '1', '20', '0', '2018-09-28 15:43:44', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('252', '252', '5', '1', '1', '21', '1', '2018-09-28 15:43:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('253', '253', '5', '1', '1', '22', '1', '2018-09-28 15:43:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('254', '254', '5', '1', '1', '23', '0', '2018-09-28 15:43:45', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('255', '255', '5', '2', '1', '1', '1', '2018-09-28 15:43:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('256', '256', '5', '2', '1', '2', '1', '2018-09-28 15:43:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('257', '257', '5', '2', '1', '3', '1', '2018-09-28 15:43:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('258', '258', '5', '2', '1', '4', '1', '2018-09-28 15:43:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('259', '259', '5', '2', '1', '5', '1', '2018-09-28 15:43:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('260', '260', '5', '2', '1', '6', '1', '2018-09-28 15:43:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('261', '261', '5', '2', '1', '7', '1', '2018-09-28 15:43:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('262', '262', '5', '2', '1', '8', '1', '2018-09-28 15:43:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('263', '263', '5', '2', '1', '9', '1', '2018-09-28 15:43:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('264', '264', '5', '2', '1', '10', '1', '2018-09-28 15:43:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('265', '265', '5', '2', '1', '11', '1', '2018-09-28 15:43:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('266', '266', '5', '2', '1', '12', '1', '2018-09-28 15:43:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('267', '267', '5', '2', '1', '13', '1', '2018-09-28 15:43:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('268', '268', '5', '2', '1', '14', '1', '2018-09-28 15:43:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('269', '269', '5', '2', '1', '15', '1', '2018-09-28 15:43:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('270', '270', '5', '2', '1', '16', '1', '2018-09-28 15:43:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('271', '271', '5', '2', '1', '17', '1', '2018-09-28 15:43:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('272', '272', '5', '2', '1', '18', '1', '2018-09-28 15:43:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('273', '273', '5', '2', '1', '19', '1', '2018-09-28 15:43:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('274', '274', '5', '2', '1', '20', '1', '2018-09-28 15:43:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('275', '275', '5', '2', '1', '21', '1', '2018-09-28 15:43:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('276', '276', '6', '1', '1', '1', '1', '2018-09-28 15:43:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('277', '277', '6', '1', '1', '2', '1', '2018-09-28 15:43:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('278', '278', '6', '1', '1', '3', '1', '2018-09-28 15:43:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('279', '279', '6', '1', '1', '4', '1', '2018-09-28 15:43:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('280', '280', '6', '1', '1', '5', '1', '2018-09-28 15:43:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('281', '281', '6', '1', '1', '6', '1', '2018-09-28 15:43:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('282', '282', '6', '1', '1', '7', '1', '2018-09-28 15:43:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('283', '283', '6', '1', '1', '8', '1', '2018-09-28 15:43:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('284', '284', '6', '1', '1', '9', '1', '2018-09-28 15:43:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('285', '285', '6', '1', '1', '10', '1', '2018-09-28 15:43:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('286', '286', '6', '1', '1', '11', '1', '2018-09-28 15:43:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('287', '287', '6', '1', '1', '12', '1', '2018-09-28 15:43:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('288', '288', '6', '1', '1', '13', '1', '2018-09-28 15:43:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('289', '289', '6', '1', '1', '14', '1', '2018-09-28 15:43:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('290', '290', '6', '1', '1', '15', '1', '2018-09-28 15:43:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('291', '291', '6', '1', '1', '16', '1', '2018-09-28 15:43:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('292', '292', '6', '1', '1', '17', '1', '2018-09-28 15:43:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('293', '293', '6', '1', '1', '18', '1', '2018-09-28 15:43:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('294', '294', '6', '1', '1', '19', '1', '2018-09-28 15:43:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('295', '295', '6', '1', '1', '20', '1', '2018-09-28 15:43:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('296', '296', '6', '1', '1', '21', '1', '2018-09-28 15:43:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('297', '297', '6', '1', '1', '22', '1', '2018-09-28 15:43:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('298', '298', '6', '1', '1', '23', '1', '2018-09-28 15:43:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('299', '299', '6', '2', '1', '1', '1', '2018-09-28 15:43:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('300', '300', '6', '2', '1', '2', '1', '2018-09-28 15:43:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('301', '301', '6', '2', '1', '3', '1', '2018-09-28 15:43:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('302', '302', '6', '2', '1', '4', '1', '2018-09-28 15:43:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('303', '303', '6', '2', '1', '5', '1', '2018-09-28 15:43:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('304', '304', '6', '2', '1', '6', '1', '2018-09-28 15:43:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('305', '305', '6', '2', '1', '7', '1', '2018-09-28 15:43:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('306', '306', '6', '2', '1', '8', '1', '2018-09-28 15:43:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('307', '307', '6', '2', '1', '9', '1', '2018-09-28 15:43:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('308', '308', '6', '2', '1', '10', '1', '2018-09-28 15:43:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('309', '309', '6', '2', '1', '11', '1', '2018-09-28 15:43:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('310', '310', '6', '2', '1', '12', '1', '2018-09-28 15:43:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('311', '311', '6', '2', '1', '13', '0', '2018-09-28 15:43:55', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('312', '312', '6', '2', '1', '14', '1', '2018-09-28 15:43:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('313', '313', '6', '2', '1', '15', '1', '2018-09-28 15:43:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('314', '314', '6', '2', '1', '16', '1', '2018-09-28 15:43:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('315', '315', '6', '2', '1', '17', '1', '2018-09-28 15:43:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('316', '316', '6', '2', '1', '18', '0', '2018-09-28 15:43:56', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('317', '317', '6', '2', '1', '19', '1', '2018-09-28 15:43:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('318', '318', '6', '2', '1', '20', '1', '2018-09-28 15:43:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('319', '319', '6', '2', '1', '21', '1', '2018-09-28 15:43:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('320', '320', '6', '2', '1', '22', '1', '2018-09-28 15:43:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('321', '321', '6', '2', '1', '23', '1', '2018-09-28 15:43:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('322', '322', '6', '2', '1', '24', '0', '2018-09-28 15:43:57', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('323', '323', '7', '1', '1', '1', '1', '2018-09-28 15:51:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('324', '324', '7', '1', '1', '2', '1', '2018-09-28 15:51:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('325', '325', '7', '1', '1', '3', '1', '2018-09-28 15:51:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('326', '326', '7', '1', '1', '4', '1', '2018-09-28 15:51:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('327', '327', '7', '1', '1', '5', '1', '2018-09-28 15:51:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('328', '328', '7', '1', '1', '6', '1', '2018-09-28 15:51:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('329', '329', '7', '1', '1', '7', '1', '2018-09-28 15:51:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('330', '330', '7', '1', '1', '8', '1', '2018-09-28 15:51:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('331', '331', '7', '1', '1', '9', '1', '2018-09-28 15:51:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('332', '332', '7', '1', '1', '10', '1', '2018-09-28 15:51:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('333', '333', '7', '1', '1', '11', '1', '2018-09-28 15:51:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('334', '334', '7', '1', '1', '12', '1', '2018-09-28 15:51:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('335', '335', '7', '1', '1', '13', '1', '2018-09-28 15:51:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('336', '336', '7', '1', '1', '14', '1', '2018-09-28 15:51:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('337', '337', '7', '1', '1', '15', '1', '2018-09-28 15:51:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('338', '338', '7', '1', '1', '16', '1', '2018-09-28 15:51:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('339', '339', '7', '1', '1', '17', '1', '2018-09-28 15:51:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('340', '340', '7', '1', '1', '18', '1', '2018-09-28 15:51:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('341', '341', '7', '1', '1', '19', '1', '2018-09-28 15:51:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('342', '342', '7', '1', '1', '20', '1', '2018-09-28 15:51:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('343', '343', '7', '2', '1', '1', '1', '2018-09-28 15:51:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('344', '344', '7', '2', '1', '2', '1', '2018-09-28 15:51:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('345', '345', '7', '2', '1', '3', '1', '2018-09-28 15:51:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('346', '346', '7', '2', '1', '4', '1', '2018-09-28 15:51:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('347', '347', '7', '2', '1', '5', '1', '2018-09-28 15:51:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('348', '348', '7', '2', '1', '6', '1', '2018-09-28 15:51:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('349', '349', '7', '2', '1', '7', '1', '2018-09-28 15:51:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('350', '350', '7', '2', '1', '8', '1', '2018-09-28 15:51:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('351', '351', '7', '2', '1', '9', '1', '2018-09-28 15:51:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('352', '352', '7', '2', '1', '10', '1', '2018-09-28 15:51:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('353', '353', '7', '2', '1', '11', '1', '2018-09-28 15:51:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('354', '354', '7', '2', '1', '12', '1', '2018-09-28 15:51:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('355', '355', '7', '2', '1', '13', '1', '2018-09-28 15:51:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('356', '356', '7', '2', '1', '14', '1', '2018-09-28 15:51:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('357', '357', '7', '2', '1', '15', '1', '2018-09-28 15:51:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('358', '358', '7', '2', '1', '16', '1', '2018-09-28 15:51:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('359', '359', '7', '2', '1', '17', '1', '2018-09-28 15:51:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('360', '360', '7', '2', '1', '18', '1', '2018-09-28 15:51:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('361', '361', '8', '1', '1', '1', '1', '2018-09-28 15:51:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('362', '362', '8', '1', '1', '2', '1', '2018-09-28 15:51:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('363', '363', '8', '1', '1', '3', '1', '2018-09-28 15:51:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('364', '364', '8', '1', '1', '4', '1', '2018-09-28 15:51:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('365', '365', '8', '1', '1', '5', '1', '2018-09-28 15:51:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('366', '366', '8', '1', '1', '6', '1', '2018-09-28 15:51:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('367', '367', '8', '1', '1', '7', '1', '2018-09-28 15:51:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('368', '368', '8', '1', '1', '8', '1', '2018-09-28 15:52:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('369', '369', '8', '1', '1', '9', '1', '2018-09-28 15:52:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('370', '370', '8', '1', '1', '10', '1', '2018-09-28 15:52:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('371', '371', '8', '1', '1', '11', '1', '2018-09-28 15:52:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('372', '372', '8', '1', '1', '12', '1', '2018-09-28 15:52:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('373', '373', '8', '1', '1', '13', '1', '2018-09-28 15:52:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('374', '374', '8', '1', '1', '14', '1', '2018-09-28 15:52:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('375', '375', '8', '1', '1', '15', '1', '2018-09-28 15:52:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('376', '376', '8', '1', '1', '16', '1', '2018-09-28 15:52:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('377', '377', '8', '1', '1', '17', '1', '2018-09-28 15:52:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('378', '378', '8', '1', '1', '18', '1', '2018-09-28 15:52:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('379', '379', '8', '2', '1', '1', '1', '2018-09-28 15:52:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('380', '380', '8', '2', '1', '2', '1', '2018-09-28 15:52:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('381', '381', '8', '2', '1', '3', '1', '2018-09-28 15:52:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('382', '382', '8', '2', '1', '4', '1', '2018-09-28 15:52:02', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('383', '383', '8', '2', '1', '5', '0', '2018-09-28 15:52:02', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('384', '384', '8', '2', '1', '6', '1', '2018-09-28 15:52:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('385', '385', '8', '2', '1', '7', '1', '2018-09-28 15:52:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('386', '386', '8', '2', '1', '8', '1', '2018-09-28 15:52:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('387', '387', '8', '2', '1', '9', '1', '2018-09-28 15:52:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('388', '388', '8', '2', '1', '10', '1', '2018-09-28 15:52:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('389', '389', '8', '2', '1', '11', '1', '2018-09-28 15:52:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('390', '390', '8', '2', '1', '12', '1', '2018-09-28 15:52:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('391', '391', '8', '2', '1', '13', '1', '2018-09-28 15:52:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('392', '392', '8', '2', '1', '14', '1', '2018-09-28 15:52:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('393', '393', '8', '2', '1', '15', '1', '2018-09-28 15:52:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('394', '394', '8', '2', '1', '16', '1', '2018-09-28 15:52:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('395', '395', '8', '2', '1', '17', '1', '2018-09-28 15:52:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('396', '396', '8', '2', '1', '18', '1', '2018-09-28 15:52:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('397', '397', '8', '2', '1', '19', '1', '2018-09-28 15:52:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('398', '398', '8', '3', '1', '1', '1', '2018-09-28 15:52:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('399', '399', '8', '3', '1', '2', '1', '2018-09-28 15:52:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('400', '400', '8', '3', '1', '3', '1', '2018-09-28 15:52:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('401', '401', '8', '3', '1', '4', '0', '2018-09-28 15:52:05', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('402', '402', '8', '3', '1', '5', '1', '2018-09-28 15:52:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('403', '403', '8', '3', '1', '6', '1', '2018-09-28 15:52:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('404', '404', '8', '3', '1', '7', '1', '2018-09-28 15:52:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('405', '405', '8', '3', '1', '8', '1', '2018-09-28 15:52:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('406', '406', '8', '3', '1', '9', '1', '2018-09-28 15:52:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('407', '407', '8', '3', '1', '10', '1', '2018-09-28 15:52:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('408', '408', '8', '3', '1', '11', '1', '2018-09-28 15:52:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('409', '409', '8', '3', '1', '12', '0', '2018-09-28 15:52:06', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('410', '410', '8', '3', '1', '13', '1', '2018-09-28 15:52:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('411', '411', '8', '3', '1', '14', '1', '2018-09-28 15:52:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('412', '412', '8', '3', '1', '15', '1', '2018-09-28 15:52:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('413', '413', '8', '3', '1', '16', '1', '2018-09-28 15:52:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('414', '414', '8', '3', '1', '17', '1', '2018-09-28 15:52:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('415', '415', '9', '1', '1', '1', '1', '2018-09-28 15:52:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('416', '416', '9', '1', '1', '2', '1', '2018-09-28 15:52:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('417', '417', '9', '1', '1', '3', '1', '2018-09-28 15:52:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('418', '418', '9', '1', '1', '4', '1', '2018-09-28 15:52:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('419', '419', '9', '1', '1', '5', '0', '2018-09-28 15:52:08', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('420', '420', '9', '1', '1', '6', '1', '2018-09-28 15:52:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('421', '421', '9', '1', '1', '7', '1', '2018-09-28 15:52:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('422', '422', '9', '1', '1', '8', '1', '2018-09-28 15:52:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('423', '423', '9', '1', '1', '9', '1', '2018-09-28 15:52:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('424', '424', '9', '1', '1', '10', '1', '2018-09-28 15:52:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('425', '425', '9', '1', '1', '11', '1', '2018-09-28 15:52:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('426', '426', '9', '1', '1', '12', '1', '2018-09-28 15:52:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('427', '427', '9', '1', '1', '13', '1', '2018-09-28 15:52:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('428', '428', '9', '1', '1', '14', '1', '2018-09-28 15:52:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('429', '429', '9', '1', '1', '15', '1', '2018-09-28 15:52:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('430', '430', '9', '1', '1', '16', '1', '2018-09-28 15:52:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('431', '431', '9', '1', '1', '17', '1', '2018-09-28 15:52:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('432', '432', '9', '1', '1', '18', '1', '2018-09-28 15:52:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('433', '433', '9', '2', '1', '1', '1', '2018-09-28 15:52:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('434', '434', '9', '2', '1', '2', '1', '2018-09-28 15:52:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('435', '435', '9', '2', '1', '3', '0', '2018-09-28 15:52:11', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('436', '436', '9', '2', '1', '4', '1', '2018-09-28 15:52:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('437', '437', '9', '2', '1', '5', '1', '2018-09-28 15:52:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('438', '438', '9', '2', '1', '6', '1', '2018-09-28 15:52:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('439', '439', '9', '2', '1', '7', '1', '2018-09-28 15:52:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('440', '440', '9', '2', '1', '8', '1', '2018-09-28 15:52:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('441', '441', '9', '2', '1', '9', '1', '2018-09-28 15:52:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('442', '442', '9', '2', '1', '10', '1', '2018-09-28 15:52:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('443', '443', '9', '2', '1', '11', '1', '2018-09-28 15:52:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('444', '444', '9', '2', '1', '12', '1', '2018-09-28 15:52:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('445', '445', '9', '2', '1', '13', '1', '2018-09-28 15:52:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('446', '446', '9', '2', '1', '14', '1', '2018-09-28 15:52:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('447', '447', '9', '2', '1', '15', '1', '2018-09-28 15:52:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('448', '448', '9', '2', '1', '16', '1', '2018-09-28 15:52:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('449', '449', '9', '2', '1', '17', '1', '2018-09-28 15:52:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('450', '450', '9', '2', '1', '18', '1', '2018-09-28 15:52:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('451', '451', '9', '2', '1', '19', '1', '2018-09-28 15:52:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('452', '452', '9', '2', '1', '20', '1', '2018-09-28 15:52:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('453', '453', '9', '3', '1', '1', '1', '2018-09-28 15:52:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('454', '454', '9', '3', '1', '2', '1', '2018-09-28 15:52:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('455', '455', '9', '3', '1', '3', '1', '2018-09-28 15:52:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('456', '456', '9', '3', '1', '4', '0', '2018-09-28 15:52:15', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('457', '457', '9', '3', '1', '5', '1', '2018-09-28 15:52:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('458', '458', '9', '3', '1', '6', '1', '2018-09-28 15:52:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('459', '459', '9', '3', '1', '7', '1', '2018-09-28 15:52:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('460', '460', '9', '3', '1', '8', '1', '2018-09-28 15:52:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('461', '461', '9', '3', '1', '9', '1', '2018-09-28 15:52:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('462', '462', '9', '3', '1', '10', '1', '2018-09-28 15:52:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('463', '463', '9', '3', '1', '11', '1', '2018-09-28 15:52:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('464', '464', '9', '3', '1', '12', '1', '2018-09-28 15:52:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('465', '465', '9', '3', '1', '13', '1', '2018-09-28 15:52:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('466', '466', '9', '3', '1', '14', '1', '2018-09-28 15:52:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('467', '467', '9', '3', '1', '15', '1', '2018-09-28 15:52:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('468', '468', '9', '3', '1', '16', '1', '2018-09-28 15:52:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('469', '469', '9', '3', '1', '17', '1', '2018-09-28 15:52:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('470', '470', '9', '3', '1', '18', '1', '2018-09-28 15:52:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('471', '471', '9', '3', '1', '19', '1', '2018-09-28 15:52:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('472', '472', '10', '1', '1', '1', '1', '2018-09-28 15:52:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('473', '473', '10', '1', '1', '2', '1', '2018-09-28 15:52:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('474', '474', '10', '1', '1', '3', '1', '2018-09-28 15:52:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('475', '475', '10', '1', '1', '4', '1', '2018-09-28 15:52:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('476', '476', '10', '1', '1', '5', '1', '2018-09-28 15:52:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('477', '477', '10', '1', '1', '6', '1', '2018-09-28 15:52:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('478', '478', '10', '1', '1', '7', '1', '2018-09-28 15:52:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('479', '479', '10', '1', '1', '8', '1', '2018-09-28 15:52:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('480', '480', '10', '1', '1', '9', '1', '2018-09-28 15:52:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('481', '481', '10', '1', '1', '10', '1', '2018-09-28 15:52:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('482', '482', '10', '1', '1', '11', '1', '2018-09-28 15:52:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('483', '483', '10', '1', '1', '12', '1', '2018-09-28 15:52:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('484', '484', '10', '1', '1', '13', '1', '2018-09-28 15:52:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('485', '485', '10', '1', '1', '14', '1', '2018-09-28 15:52:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('486', '486', '10', '1', '1', '15', '1', '2018-09-28 15:52:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('487', '487', '10', '1', '1', '16', '1', '2018-09-28 15:52:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('488', '488', '10', '1', '1', '17', '1', '2018-09-28 15:52:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('489', '489', '10', '1', '1', '18', '1', '2018-09-28 15:52:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('490', '490', '10', '1', '1', '19', '1', '2018-09-28 15:52:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('491', '491', '10', '1', '1', '20', '1', '2018-09-28 15:52:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('492', '492', '10', '1', '1', '21', '1', '2018-09-28 15:52:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('493', '493', '10', '1', '1', '22', '1', '2018-09-28 15:52:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('494', '494', '10', '1', '1', '23', '1', '2018-09-28 15:52:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('495', '495', '10', '1', '1', '24', '1', '2018-09-28 15:52:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('496', '496', '10', '2', '1', '1', '1', '2018-09-28 15:52:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('497', '497', '10', '2', '1', '2', '1', '2018-09-28 15:52:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('498', '498', '10', '2', '1', '3', '1', '2018-09-28 15:52:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('499', '499', '10', '2', '1', '4', '1', '2018-09-28 15:52:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('500', '500', '10', '2', '1', '5', '1', '2018-09-28 15:52:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('501', '501', '10', '2', '1', '6', '1', '2018-09-28 15:52:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('502', '502', '10', '2', '1', '7', '1', '2018-09-28 15:52:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('503', '503', '10', '2', '1', '8', '1', '2018-09-28 15:52:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('504', '504', '10', '2', '1', '9', '1', '2018-09-28 15:52:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('505', '505', '10', '2', '1', '10', '1', '2018-09-28 15:52:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('506', '506', '10', '2', '1', '11', '1', '2018-09-28 15:52:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('507', '507', '10', '2', '1', '12', '1', '2018-09-28 15:52:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('508', '508', '10', '2', '1', '13', '1', '2018-09-28 15:52:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('509', '509', '10', '2', '1', '14', '1', '2018-09-28 15:52:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('510', '510', '10', '2', '1', '15', '1', '2018-09-28 15:52:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('511', '511', '10', '2', '1', '16', '1', '2018-09-28 15:52:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('512', '512', '10', '2', '1', '17', '1', '2018-09-28 15:52:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('513', '513', '10', '2', '1', '18', '1', '2018-09-28 15:52:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('514', '514', '10', '2', '1', '19', '1', '2018-09-28 15:52:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('515', '515', '10', '2', '1', '20', '1', '2018-09-28 15:52:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('516', '516', '10', '2', '1', '21', '1', '2018-09-28 15:52:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('517', '517', '10', '2', '1', '22', '1', '2018-09-28 15:52:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('518', '518', '10', '2', '1', '23', '1', '2018-09-28 15:52:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('519', '519', '10', '3', '1', '1', '1', '2018-09-28 15:52:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('520', '520', '10', '3', '1', '2', '1', '2018-09-28 15:52:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('521', '521', '10', '3', '1', '3', '1', '2018-09-28 15:52:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('522', '522', '10', '3', '1', '4', '1', '2018-09-28 15:52:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('523', '523', '10', '3', '1', '5', '1', '2018-09-28 15:52:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('524', '524', '10', '3', '1', '6', '1', '2018-09-28 15:52:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('525', '525', '10', '3', '1', '7', '1', '2018-09-28 15:52:26', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('526', '526', '10', '3', '1', '8', '1', '2018-09-28 15:52:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('527', '527', '10', '3', '1', '9', '1', '2018-09-28 15:52:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('528', '528', '10', '3', '1', '10', '0', '2018-09-28 15:52:27', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('529', '529', '10', '3', '1', '11', '1', '2018-09-28 15:52:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('530', '530', '10', '3', '1', '12', '1', '2018-09-28 15:52:27', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('531', '531', '10', '3', '1', '13', '0', '2018-09-28 15:52:27', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('532', '532', '10', '3', '1', '14', '1', '2018-09-28 15:52:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('533', '533', '10', '3', '1', '15', '1', '2018-09-28 15:52:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('534', '534', '10', '3', '1', '16', '1', '2018-09-28 15:52:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('535', '535', '10', '3', '1', '17', '1', '2018-09-28 15:52:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('536', '536', '10', '3', '1', '18', '1', '2018-09-28 15:52:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('537', '537', '10', '3', '1', '19', '1', '2018-09-28 15:52:28', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('538', '538', '10', '3', '1', '20', '1', '2018-09-28 15:52:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('539', '539', '10', '3', '1', '21', '1', '2018-09-28 15:52:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('540', '540', '10', '3', '1', '22', '1', '2018-09-28 15:52:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('541', '541', '10', '3', '1', '23', '1', '2018-09-28 15:52:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('542', '542', '11', '1', '1', '1', '1', '2018-09-28 15:52:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('543', '543', '11', '1', '1', '2', '1', '2018-09-28 15:52:29', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('544', '544', '11', '1', '1', '3', '1', '2018-09-28 15:52:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('545', '545', '11', '1', '1', '4', '1', '2018-09-28 15:52:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('546', '546', '11', '1', '1', '5', '1', '2018-09-28 15:52:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('547', '547', '11', '1', '1', '6', '1', '2018-09-28 15:52:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('548', '548', '11', '1', '1', '7', '1', '2018-09-28 15:52:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('549', '549', '11', '1', '1', '8', '1', '2018-09-28 15:52:30', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('550', '550', '11', '1', '1', '9', '1', '2018-09-28 15:52:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('551', '551', '11', '1', '1', '10', '1', '2018-09-28 15:52:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('552', '552', '11', '1', '1', '11', '1', '2018-09-28 15:52:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('553', '553', '11', '1', '1', '12', '1', '2018-09-28 15:52:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('554', '554', '11', '1', '1', '13', '1', '2018-09-28 15:52:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('555', '555', '11', '1', '1', '14', '1', '2018-09-28 15:52:31', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('556', '556', '11', '1', '1', '15', '1', '2018-09-28 15:52:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('557', '557', '11', '1', '1', '16', '1', '2018-09-28 15:52:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('558', '558', '11', '1', '1', '17', '1', '2018-09-28 15:52:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('559', '559', '11', '1', '1', '18', '1', '2018-09-28 15:52:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('560', '560', '11', '1', '1', '19', '1', '2018-09-28 15:52:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('561', '561', '11', '1', '1', '20', '1', '2018-09-28 15:52:32', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('562', '562', '11', '1', '1', '21', '1', '2018-09-28 15:52:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('563', '563', '11', '1', '1', '22', '1', '2018-09-28 15:52:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('564', '564', '11', '1', '1', '23', '1', '2018-09-28 15:52:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('565', '565', '11', '1', '1', '24', '1', '2018-09-28 15:52:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('566', '566', '11', '1', '1', '25', '1', '2018-09-28 15:52:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('567', '567', '11', '1', '1', '26', '1', '2018-09-28 15:52:33', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('568', '568', '11', '2', '1', '1', '1', '2018-09-28 15:52:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('569', '569', '11', '2', '1', '2', '1', '2018-09-28 15:52:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('570', '570', '11', '2', '1', '3', '1', '2018-09-28 15:52:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('571', '571', '11', '2', '1', '4', '1', '2018-09-28 15:52:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('572', '572', '11', '2', '1', '5', '1', '2018-09-28 15:52:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('573', '573', '11', '2', '1', '6', '1', '2018-09-28 15:52:34', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('574', '574', '11', '2', '1', '7', '1', '2018-09-28 15:52:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('575', '575', '11', '2', '1', '8', '1', '2018-09-28 15:52:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('576', '576', '11', '2', '1', '9', '1', '2018-09-28 15:52:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('577', '577', '11', '2', '1', '10', '1', '2018-09-28 15:52:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('578', '578', '11', '2', '1', '11', '1', '2018-09-28 15:52:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('579', '579', '11', '2', '1', '12', '1', '2018-09-28 15:52:35', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('580', '580', '11', '2', '1', '13', '1', '2018-09-28 15:52:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('581', '581', '11', '2', '1', '14', '1', '2018-09-28 15:52:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('582', '582', '11', '2', '1', '15', '1', '2018-09-28 15:52:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('583', '583', '11', '2', '1', '16', '1', '2018-09-28 15:52:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('584', '584', '11', '2', '1', '17', '1', '2018-09-28 15:52:36', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('585', '585', '11', '2', '1', '18', '1', '2018-09-28 15:52:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('586', '586', '11', '2', '1', '19', '1', '2018-09-28 15:52:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('587', '587', '11', '2', '1', '20', '1', '2018-09-28 15:52:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('588', '588', '11', '2', '1', '21', '1', '2018-09-28 15:52:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('589', '589', '11', '2', '1', '22', '1', '2018-09-28 15:52:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('590', '590', '11', '2', '1', '23', '1', '2018-09-28 15:52:37', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('591', '591', '11', '2', '1', '24', '1', '2018-09-28 15:52:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('592', '592', '11', '2', '1', '25', '1', '2018-09-28 15:52:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('593', '593', '11', '2', '1', '26', '1', '2018-09-28 15:52:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('594', '594', '12', '1', '1', '1', '1', '2018-09-28 15:52:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('595', '595', '12', '1', '1', '2', '0', '2018-09-28 15:52:38', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('596', '596', '12', '1', '1', '3', '1', '2018-09-28 15:52:38', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('597', '597', '12', '1', '1', '4', '1', '2018-09-28 15:52:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('598', '598', '12', '1', '1', '5', '1', '2018-09-28 15:52:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('599', '599', '12', '1', '1', '6', '1', '2018-09-28 15:52:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('600', '600', '12', '1', '1', '7', '1', '2018-09-28 15:52:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('601', '601', '12', '1', '1', '8', '1', '2018-09-28 15:52:39', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('602', '602', '12', '1', '1', '9', '1', '2018-09-28 15:52:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('603', '603', '12', '1', '1', '10', '1', '2018-09-28 15:52:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('604', '604', '12', '1', '1', '11', '1', '2018-09-28 15:52:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('605', '605', '12', '1', '1', '12', '1', '2018-09-28 15:52:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('606', '606', '12', '1', '1', '13', '1', '2018-09-28 15:52:40', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('607', '607', '12', '1', '1', '14', '1', '2018-09-28 15:52:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('608', '608', '12', '1', '1', '15', '1', '2018-09-28 15:52:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('609', '609', '12', '1', '1', '16', '1', '2018-09-28 15:52:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('610', '610', '12', '1', '1', '17', '1', '2018-09-28 15:52:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('611', '611', '12', '1', '1', '18', '1', '2018-09-28 15:52:41', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('612', '612', '12', '1', '1', '19', '1', '2018-09-28 15:52:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('613', '613', '12', '1', '1', '20', '1', '2018-09-28 15:52:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('614', '614', '12', '1', '1', '21', '1', '2018-09-28 15:52:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('615', '615', '12', '1', '1', '22', '1', '2018-09-28 15:52:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('616', '616', '12', '1', '1', '23', '1', '2018-09-28 15:52:42', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('617', '617', '12', '1', '1', '24', '1', '2018-09-28 15:52:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('618', '618', '12', '1', '1', '25', '1', '2018-09-28 15:52:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('619', '619', '12', '1', '1', '26', '1', '2018-09-28 15:52:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('620', '620', '12', '2', '1', '1', '1', '2018-09-28 15:52:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('621', '621', '12', '2', '1', '2', '1', '2018-09-28 15:52:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('622', '622', '12', '2', '1', '3', '1', '2018-09-28 15:52:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('623', '623', '12', '2', '1', '4', '1', '2018-09-28 15:52:43', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('624', '624', '12', '2', '1', '5', '1', '2018-09-28 15:52:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('625', '625', '12', '2', '1', '6', '1', '2018-09-28 15:52:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('626', '626', '12', '2', '1', '7', '1', '2018-09-28 15:52:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('627', '627', '12', '2', '1', '8', '1', '2018-09-28 15:52:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('628', '628', '12', '2', '1', '9', '1', '2018-09-28 15:52:44', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('629', '629', '12', '2', '1', '10', '1', '2018-09-28 15:52:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('630', '630', '12', '2', '1', '11', '1', '2018-09-28 15:52:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('631', '631', '12', '2', '1', '12', '1', '2018-09-28 15:52:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('632', '632', '12', '2', '1', '13', '1', '2018-09-28 15:52:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('633', '633', '12', '2', '1', '14', '1', '2018-09-28 15:52:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('634', '634', '12', '2', '1', '15', '1', '2018-09-28 15:52:45', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('635', '635', '12', '2', '1', '16', '1', '2018-09-28 15:52:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('636', '636', '12', '2', '1', '17', '1', '2018-09-28 15:52:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('637', '637', '12', '2', '1', '18', '1', '2018-09-28 15:52:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('638', '638', '12', '2', '1', '19', '1', '2018-09-28 15:52:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('639', '639', '12', '2', '1', '20', '1', '2018-09-28 15:52:46', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('640', '640', '12', '2', '1', '21', '1', '2018-09-28 15:52:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('641', '641', '12', '2', '1', '22', '1', '2018-09-28 15:52:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('642', '642', '12', '2', '1', '23', '1', '2018-09-28 15:52:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('643', '643', '12', '2', '1', '24', '1', '2018-09-28 15:52:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('644', '644', '12', '2', '1', '25', '1', '2018-09-28 15:52:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('645', '645', '12', '2', '1', '26', '1', '2018-09-28 15:52:47', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('646', '646', '13', '1', '1', '1', '1', '2018-09-28 15:52:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('647', '647', '13', '1', '1', '2', '1', '2018-09-28 15:52:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('648', '648', '13', '1', '1', '3', '1', '2018-09-28 15:52:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('649', '649', '13', '1', '1', '4', '1', '2018-09-28 15:52:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('650', '650', '13', '1', '1', '5', '1', '2018-09-28 15:52:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('651', '651', '13', '1', '1', '6', '1', '2018-09-28 15:52:48', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('652', '652', '13', '1', '1', '7', '1', '2018-09-28 15:52:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('653', '653', '13', '1', '1', '8', '1', '2018-09-28 15:52:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('654', '654', '13', '1', '1', '9', '1', '2018-09-28 15:52:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('655', '655', '13', '1', '1', '10', '1', '2018-09-28 15:52:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('656', '656', '13', '1', '1', '11', '1', '2018-09-28 15:52:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('657', '657', '13', '1', '1', '12', '1', '2018-09-28 15:52:49', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('658', '658', '13', '1', '1', '13', '1', '2018-09-28 15:52:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('659', '659', '13', '1', '1', '14', '1', '2018-09-28 15:52:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('660', '660', '13', '1', '1', '15', '1', '2018-09-28 15:52:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('661', '661', '13', '1', '1', '16', '1', '2018-09-28 15:52:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('662', '662', '13', '1', '1', '17', '1', '2018-09-28 15:52:50', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('663', '663', '13', '1', '1', '18', '1', '2018-09-28 15:52:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('664', '664', '13', '1', '1', '19', '1', '2018-09-28 15:52:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('665', '665', '13', '1', '1', '20', '1', '2018-09-28 15:52:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('666', '666', '13', '1', '1', '21', '1', '2018-09-28 15:52:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('667', '667', '13', '1', '1', '22', '1', '2018-09-28 15:52:51', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('668', '668', '13', '1', '1', '23', '1', '2018-09-28 15:52:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('669', '669', '13', '1', '1', '24', '1', '2018-09-28 15:52:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('670', '670', '13', '1', '1', '25', '1', '2018-09-28 15:52:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('671', '671', '13', '2', '1', '1', '1', '2018-09-28 15:52:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('672', '672', '13', '2', '1', '2', '1', '2018-09-28 15:52:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('673', '673', '13', '2', '1', '3', '1', '2018-09-28 15:52:52', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('674', '674', '13', '2', '1', '4', '1', '2018-09-28 15:52:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('675', '675', '13', '2', '1', '5', '1', '2018-09-28 15:52:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('676', '676', '13', '2', '1', '6', '1', '2018-09-28 15:52:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('677', '677', '13', '2', '1', '7', '1', '2018-09-28 15:52:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('678', '678', '13', '2', '1', '8', '1', '2018-09-28 15:52:53', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('679', '679', '13', '2', '1', '9', '0', '2018-09-28 15:52:53', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('680', '680', '13', '2', '1', '10', '1', '2018-09-28 15:52:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('681', '681', '13', '2', '1', '11', '1', '2018-09-28 15:52:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('682', '682', '13', '2', '1', '12', '1', '2018-09-28 15:52:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('683', '683', '13', '2', '1', '13', '1', '2018-09-28 15:52:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('684', '684', '13', '2', '1', '14', '1', '2018-09-28 15:52:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('685', '685', '13', '2', '1', '15', '1', '2018-09-28 15:52:54', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('686', '686', '13', '2', '1', '16', '1', '2018-09-28 15:52:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('687', '687', '13', '2', '1', '17', '1', '2018-09-28 15:52:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('688', '688', '13', '2', '1', '18', '1', '2018-09-28 15:52:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('689', '689', '13', '2', '1', '19', '1', '2018-09-28 15:52:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('690', '690', '13', '2', '1', '20', '1', '2018-09-28 15:52:55', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('691', '691', '13', '2', '1', '21', '1', '2018-09-28 15:52:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('692', '692', '14', '1', '1', '1', '1', '2018-09-28 15:52:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('693', '693', '14', '1', '1', '2', '1', '2018-09-28 15:52:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('694', '694', '14', '1', '1', '3', '1', '2018-09-28 15:52:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('695', '695', '14', '1', '1', '4', '1', '2018-09-28 15:52:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('696', '696', '14', '1', '1', '5', '1', '2018-09-28 15:52:56', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('697', '697', '14', '1', '1', '6', '1', '2018-09-28 15:52:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('698', '698', '14', '1', '1', '7', '1', '2018-09-28 15:52:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('699', '699', '14', '1', '1', '8', '1', '2018-09-28 15:52:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('700', '700', '14', '1', '1', '9', '1', '2018-09-28 15:52:57', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('701', '701', '14', '1', '1', '10', '1', '2018-09-28 15:52:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('702', '702', '14', '1', '1', '11', '1', '2018-09-28 15:52:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('703', '703', '14', '1', '1', '12', '1', '2018-09-28 15:52:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('704', '704', '14', '1', '1', '13', '1', '2018-09-28 15:52:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('705', '705', '14', '1', '1', '14', '1', '2018-09-28 15:52:58', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('706', '706', '14', '1', '1', '15', '1', '2018-09-28 15:52:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('707', '707', '14', '1', '1', '16', '1', '2018-09-28 15:52:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('708', '708', '14', '1', '1', '17', '1', '2018-09-28 15:52:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('709', '709', '14', '1', '1', '18', '1', '2018-09-28 15:52:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('710', '710', '14', '1', '1', '19', '1', '2018-09-28 15:52:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('711', '711', '14', '2', '1', '1', '1', '2018-09-28 15:52:59', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('712', '712', '14', '2', '1', '2', '1', '2018-09-28 15:53:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('713', '713', '14', '2', '1', '3', '1', '2018-09-28 15:53:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('714', '714', '14', '2', '1', '4', '1', '2018-09-28 15:53:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('715', '715', '14', '2', '1', '5', '1', '2018-09-28 15:53:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('716', '716', '14', '2', '1', '6', '1', '2018-09-28 15:53:00', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('717', '717', '14', '2', '1', '7', '1', '2018-09-28 15:53:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('718', '718', '14', '2', '1', '8', '1', '2018-09-28 15:53:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('719', '719', '14', '2', '1', '9', '1', '2018-09-28 15:53:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('720', '720', '14', '2', '1', '10', '1', '2018-09-28 15:53:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('721', '721', '14', '2', '1', '11', '1', '2018-09-28 15:53:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('722', '722', '14', '2', '1', '12', '0', '2018-09-28 15:53:01', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('723', '723', '14', '2', '1', '13', '1', '2018-09-28 15:53:01', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('724', '724', '14', '2', '1', '14', '1', '2018-09-28 15:53:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('725', '725', '14', '2', '1', '15', '1', '2018-09-28 15:53:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('726', '726', '14', '2', '1', '16', '1', '2018-09-28 15:53:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('727', '727', '14', '2', '1', '17', '1', '2018-09-28 15:53:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('728', '728', '14', '2', '1', '18', '1', '2018-09-28 15:53:02', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('729', '729', '14', '2', '1', '19', '1', '2018-09-28 15:53:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('730', '730', '14', '2', '1', '20', '1', '2018-09-28 15:53:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('731', '731', '14', '2', '1', '21', '1', '2018-09-28 15:53:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('732', '732', '15', '1', '1', '1', '1', '2018-09-28 15:53:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('733', '733', '15', '1', '1', '2', '1', '2018-09-28 15:53:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('734', '734', '15', '1', '1', '3', '1', '2018-09-28 15:53:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('735', '735', '15', '1', '1', '4', '1', '2018-09-28 15:53:03', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('736', '736', '15', '1', '1', '5', '0', '2018-09-28 15:53:04', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('737', '737', '15', '1', '1', '6', '1', '2018-09-28 15:53:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('738', '738', '15', '1', '1', '7', '1', '2018-09-28 15:53:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('739', '739', '15', '1', '1', '8', '1', '2018-09-28 15:53:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('740', '740', '15', '1', '1', '9', '1', '2018-09-28 15:53:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('741', '741', '15', '1', '1', '10', '1', '2018-09-28 15:53:04', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('742', '742', '15', '1', '1', '11', '1', '2018-09-28 15:53:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('743', '743', '15', '1', '1', '12', '1', '2018-09-28 15:53:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('744', '744', '15', '1', '1', '13', '1', '2018-09-28 15:53:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('745', '745', '15', '1', '1', '14', '1', '2018-09-28 15:53:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('746', '746', '15', '1', '1', '15', '1', '2018-09-28 15:53:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('747', '747', '15', '1', '1', '16', '1', '2018-09-28 15:53:05', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('748', '748', '15', '1', '1', '17', '1', '2018-09-28 15:53:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('749', '749', '15', '1', '1', '18', '1', '2018-09-28 15:53:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('750', '750', '15', '1', '1', '19', '1', '2018-09-28 15:53:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('751', '751', '15', '2', '1', '1', '1', '2018-09-28 15:53:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('752', '752', '15', '2', '1', '2', '1', '2018-09-28 15:53:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('753', '753', '15', '2', '1', '3', '1', '2018-09-28 15:53:06', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('754', '754', '15', '2', '1', '4', '1', '2018-09-28 15:53:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('755', '755', '15', '2', '1', '5', '1', '2018-09-28 15:53:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('756', '756', '15', '2', '1', '6', '1', '2018-09-28 15:53:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('757', '757', '15', '2', '1', '7', '1', '2018-09-28 15:53:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('758', '758', '15', '2', '1', '8', '1', '2018-09-28 15:53:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('759', '759', '15', '2', '1', '9', '1', '2018-09-28 15:53:07', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('760', '760', '15', '2', '1', '10', '1', '2018-09-28 15:53:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('761', '761', '15', '2', '1', '11', '0', '2018-09-28 15:53:08', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('762', '762', '15', '2', '1', '12', '1', '2018-09-28 15:53:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('763', '763', '15', '2', '1', '13', '1', '2018-09-28 15:53:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('764', '764', '15', '2', '1', '14', '1', '2018-09-28 15:53:08', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('765', '765', '15', '2', '1', '15', '1', '2018-09-28 15:53:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('766', '766', '15', '2', '1', '16', '1', '2018-09-28 15:53:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('767', '767', '15', '2', '1', '17', '1', '2018-09-28 15:53:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('768', '768', '15', '2', '1', '18', '1', '2018-09-28 15:53:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('769', '769', '16', '1', '1', '1', '1', '2018-09-28 15:53:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('770', '770', '16', '1', '1', '2', '1', '2018-09-28 15:53:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('771', '771', '16', '1', '1', '3', '1', '2018-09-28 15:53:09', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('772', '772', '16', '1', '1', '4', '1', '2018-09-28 15:53:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('773', '773', '16', '1', '1', '5', '1', '2018-09-28 15:53:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('774', '774', '16', '1', '1', '6', '1', '2018-09-28 15:53:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('775', '775', '16', '1', '1', '7', '1', '2018-09-28 15:53:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('776', '776', '16', '1', '1', '8', '1', '2018-09-28 15:53:10', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('777', '777', '16', '1', '1', '9', '1', '2018-09-28 15:53:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('778', '778', '16', '1', '1', '10', '1', '2018-09-28 15:53:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('779', '779', '16', '1', '1', '11', '1', '2018-09-28 15:53:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('780', '780', '16', '1', '1', '12', '1', '2018-09-28 15:53:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('781', '781', '16', '1', '1', '13', '1', '2018-09-28 15:53:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('782', '782', '16', '1', '1', '14', '1', '2018-09-28 15:53:11', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('783', '783', '16', '1', '1', '15', '1', '2018-09-28 15:53:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('784', '784', '16', '1', '1', '16', '1', '2018-09-28 15:53:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('785', '785', '16', '1', '1', '17', '1', '2018-09-28 15:53:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('786', '786', '16', '1', '1', '18', '1', '2018-09-28 15:53:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('787', '787', '16', '1', '1', '19', '1', '2018-09-28 15:53:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('788', '788', '16', '1', '1', '20', '1', '2018-09-28 15:53:12', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('789', '789', '16', '1', '1', '21', '1', '2018-09-28 15:53:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('790', '790', '16', '1', '1', '22', '1', '2018-09-28 15:53:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('791', '791', '16', '1', '1', '23', '1', '2018-09-28 15:53:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('792', '792', '16', '1', '1', '24', '1', '2018-09-28 15:53:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('793', '793', '16', '1', '1', '25', '1', '2018-09-28 15:53:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('794', '794', '16', '1', '1', '26', '1', '2018-09-28 15:53:13', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('795', '795', '16', '2', '1', '1', '1', '2018-09-28 15:53:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('796', '796', '16', '2', '1', '2', '1', '2018-09-28 15:53:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('797', '797', '16', '2', '1', '3', '1', '2018-09-28 15:53:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('798', '798', '16', '2', '1', '4', '1', '2018-09-28 15:53:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('799', '799', '16', '2', '1', '5', '1', '2018-09-28 15:53:14', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('800', '800', '16', '2', '1', '6', '1', '2018-09-28 15:53:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('801', '801', '16', '2', '1', '7', '1', '2018-09-28 15:53:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('802', '802', '16', '2', '1', '8', '1', '2018-09-28 15:53:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('803', '803', '16', '2', '1', '9', '1', '2018-09-28 15:53:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('804', '804', '16', '2', '1', '10', '1', '2018-09-28 15:53:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('805', '805', '16', '2', '1', '11', '1', '2018-09-28 15:53:15', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('806', '806', '16', '2', '1', '12', '1', '2018-09-28 15:53:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('807', '807', '16', '2', '1', '13', '1', '2018-09-28 15:53:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('808', '808', '16', '2', '1', '14', '1', '2018-09-28 15:53:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('809', '809', '16', '2', '1', '15', '1', '2018-09-28 15:53:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('810', '810', '16', '2', '1', '16', '1', '2018-09-28 15:53:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('811', '811', '16', '2', '1', '17', '1', '2018-09-28 15:53:16', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('812', '812', '16', '2', '1', '18', '1', '2018-09-28 15:53:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('813', '813', '16', '2', '1', '19', '1', '2018-09-28 15:53:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('814', '814', '16', '2', '1', '20', '1', '2018-09-28 15:53:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('815', '815', '16', '2', '1', '21', '1', '2018-09-28 15:53:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('816', '816', '16', '2', '1', '22', '1', '2018-09-28 15:53:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('817', '817', '16', '2', '1', '23', '1', '2018-09-28 15:53:17', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('818', '818', '16', '2', '1', '24', '1', '2018-09-28 15:53:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('819', '819', '16', '2', '1', '25', '1', '2018-09-28 15:53:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('820', '820', '17', '1', '1', '1', '1', '2018-09-28 15:53:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('821', '821', '17', '1', '1', '2', '0', '2018-09-28 15:53:18', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('822', '822', '17', '1', '1', '3', '1', '2018-09-28 15:53:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('823', '823', '17', '1', '1', '4', '1', '2018-09-28 15:53:18', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('824', '824', '17', '1', '1', '5', '1', '2018-09-28 15:53:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('825', '825', '17', '1', '1', '6', '1', '2018-09-28 15:53:19', '2019-04-12 17:22:18', null, '924');
INSERT INTO `enrollments` VALUES ('826', '826', '17', '1', '1', '7', '1', '2018-09-28 15:53:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('827', '827', '17', '1', '1', '8', '1', '2018-09-28 15:53:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('828', '828', '17', '1', '1', '9', '1', '2018-09-28 15:53:19', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('829', '829', '17', '1', '1', '10', '1', '2018-09-28 15:53:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('830', '830', '17', '1', '1', '11', '1', '2018-09-28 15:53:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('831', '831', '17', '1', '1', '12', '1', '2018-09-28 15:53:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('832', '832', '17', '1', '1', '13', '1', '2018-09-28 15:53:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('833', '833', '17', '1', '1', '14', '1', '2018-09-28 15:53:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('834', '834', '17', '1', '1', '15', '1', '2018-09-28 15:53:20', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('835', '835', '17', '1', '1', '16', '1', '2018-09-28 15:53:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('836', '836', '17', '1', '1', '17', '1', '2018-09-28 15:53:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('837', '837', '17', '1', '1', '18', '1', '2018-09-28 15:53:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('838', '838', '17', '1', '1', '19', '1', '2018-09-28 15:53:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('839', '839', '17', '1', '1', '20', '1', '2018-09-28 15:53:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('840', '840', '17', '1', '1', '21', '1', '2018-09-28 15:53:21', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('841', '841', '17', '1', '1', '22', '1', '2018-09-28 15:53:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('842', '842', '17', '2', '1', '1', '1', '2018-09-28 15:53:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('843', '843', '17', '2', '1', '2', '1', '2018-09-28 15:53:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('844', '844', '17', '2', '1', '3', '1', '2018-09-28 15:53:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('845', '845', '17', '2', '1', '4', '1', '2018-09-28 15:53:22', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('846', '846', '17', '2', '1', '5', '1', '2018-09-28 15:53:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('847', '847', '17', '2', '1', '6', '1', '2018-09-28 15:53:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('848', '848', '17', '2', '1', '7', '1', '2018-09-28 15:53:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('849', '849', '17', '2', '1', '8', '1', '2018-09-28 15:53:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('850', '850', '17', '2', '1', '9', '1', '2018-09-28 15:53:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('851', '851', '17', '2', '1', '10', '1', '2018-09-28 15:53:23', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('852', '852', '17', '2', '1', '11', '1', '2018-09-28 15:53:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('853', '853', '17', '2', '1', '12', '1', '2018-09-28 15:53:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('854', '854', '17', '2', '1', '13', '1', '2018-09-28 15:53:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('855', '855', '17', '2', '1', '14', '1', '2018-09-28 15:53:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('856', '856', '17', '2', '1', '15', '1', '2018-09-28 15:53:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('857', '857', '17', '2', '1', '16', '1', '2018-09-28 15:53:24', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('858', '858', '17', '2', '1', '17', '1', '2018-09-28 15:53:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('859', '859', '17', '2', '1', '18', '1', '2018-09-28 15:53:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('860', '860', '17', '2', '1', '19', '1', '2018-09-28 15:53:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('861', '861', '17', '2', '1', '20', '1', '2018-09-28 15:53:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('862', '862', '17', '2', '1', '21', '1', '2018-09-28 15:53:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('863', '863', '17', '2', '1', '22', '1', '2018-09-28 15:53:25', '2019-04-12 17:22:18', null, null);
INSERT INTO `enrollments` VALUES ('864', '864', '3', '1', '1', '864', '1', '2018-10-09 11:24:02', '2019-04-12 17:22:18', '924', null);

-- ----------------------------
-- Table structure for frequencies
-- ----------------------------
DROP TABLE IF EXISTS `frequencies`;
CREATE TABLE `frequencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8,
  `description_sw` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of frequencies
-- ----------------------------
INSERT INTO `frequencies` VALUES ('1', 'Once a week', 'Mara moja', '1', '2019-03-20 09:52:18', '2019-04-01 19:46:29', null, '924');
INSERT INTO `frequencies` VALUES ('2', 'Twice a week', 'Mara mbili', '1', '2019-03-20 09:52:26', '2019-03-20 09:53:23', null, null);
INSERT INTO `frequencies` VALUES ('3', 'Thrice a week', 'Mara tatu', '1', '2019-03-20 09:52:27', '2019-03-20 09:53:26', null, null);
INSERT INTO `frequencies` VALUES ('4', 'Four times a week', 'Mara nne', '1', '2019-03-20 09:52:33', '2019-03-20 09:53:28', null, null);
INSERT INTO `frequencies` VALUES ('5', 'Five times a week', 'Mara tano', '1', '2019-03-20 09:52:38', '2019-03-20 09:53:31', null, null);
INSERT INTO `frequencies` VALUES ('6', 'Six times a week', 'Mara sita', '1', '2019-03-20 09:52:42', '2019-03-20 09:53:33', null, null);
INSERT INTO `frequencies` VALUES ('7', 'Every day', 'Kila siku', '1', '2019-03-20 09:53:00', '2019-04-06 19:52:09', null, null);
INSERT INTO `frequencies` VALUES ('8', 'None of the days - except Saturday Madrasah', 'Huhudhuria Madrasah Jumamosi tu', '0', '2019-03-20 09:53:09', '2019-04-05 19:12:15', null, null);

-- ----------------------------
-- Table structure for gradebenchlevels
-- ----------------------------
DROP TABLE IF EXISTS `gradebenchlevels`;
CREATE TABLE `gradebenchlevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gbenchid` int(11) DEFAULT NULL,
  `levelid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gradebenchlevels
-- ----------------------------

-- ----------------------------
-- Table structure for gradebenchmarks
-- ----------------------------
DROP TABLE IF EXISTS `gradebenchmarks`;
CREATE TABLE `gradebenchmarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gradeid` int(11) DEFAULT NULL,
  `yearid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gradebenchmarks
-- ----------------------------

-- ----------------------------
-- Table structure for gradebenchremarks
-- ----------------------------
DROP TABLE IF EXISTS `gradebenchremarks`;
CREATE TABLE `gradebenchremarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gbenchid` int(11) DEFAULT NULL,
  `variance` int(11) DEFAULT NULL,
  `remarks` text,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gradebenchremarks
-- ----------------------------

-- ----------------------------
-- Table structure for grades
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES ('1', 'Boys 1', '2018-09-06 23:11:02', null, null, null);
INSERT INTO `grades` VALUES ('2', 'Boys 2', '2018-09-06 23:11:04', null, null, null);
INSERT INTO `grades` VALUES ('3', 'Boys 3', '2018-09-06 23:11:06', null, null, null);
INSERT INTO `grades` VALUES ('4', 'Boys 4', '2018-09-06 23:11:07', null, null, null);
INSERT INTO `grades` VALUES ('5', 'Boys 5', '2018-09-06 23:11:09', null, null, null);
INSERT INTO `grades` VALUES ('6', 'Boys 6', '2018-09-06 23:11:12', null, null, null);
INSERT INTO `grades` VALUES ('7', 'Girls 1', '2018-09-06 23:11:19', null, null, null);
INSERT INTO `grades` VALUES ('8', 'Girls 2', '2018-09-06 23:11:21', null, null, null);
INSERT INTO `grades` VALUES ('9', 'Girls 3', '2018-09-06 23:11:22', null, null, null);
INSERT INTO `grades` VALUES ('10', 'Girls 4', '2018-09-06 23:11:24', null, null, null);
INSERT INTO `grades` VALUES ('11', 'Girls 5', '2018-09-06 23:11:26', null, null, null);
INSERT INTO `grades` VALUES ('12', 'Girls 6', '2018-09-06 23:11:27', null, null, null);
INSERT INTO `grades` VALUES ('13', 'Girls 7', '2018-09-06 23:11:30', null, null, null);
INSERT INTO `grades` VALUES ('14', 'Girls 8', '2018-09-06 23:11:32', null, null, null);
INSERT INTO `grades` VALUES ('15', 'Girls 9', '2018-09-06 23:11:34', null, null, null);
INSERT INTO `grades` VALUES ('16', 'Girls 10', '2018-09-06 23:11:37', null, null, null);
INSERT INTO `grades` VALUES ('17', 'Girls 11', '2018-09-06 23:11:40', null, null, null);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `yearid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for improvements
-- ----------------------------
DROP TABLE IF EXISTS `improvements`;
CREATE TABLE `improvements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `description_sw` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of improvements
-- ----------------------------
INSERT INTO `improvements` VALUES ('1', 'Practicing regularly at home will enable the student to make a swift progress in Quran recitation. Thank you for your ongoing support and effort.', 'Kufanya mazoezi mara kwa mara kutamfanya mwanafunzi apate maendeleo mazuri katika kusoma Quran. Asante sana kwa nguvu za mara zote na kutuunga mkono', '1', '2018-09-08 01:21:34', null, null, null);
INSERT INTO `improvements` VALUES ('2', 'Regular practice will enable the student to improve on fluency and progress to the next level.', 'Mazoezi ya mara kwa mara yatamwezesha mwanafunzi aweze kusoma vizuri na kuendelea kwenye hatua inayofuata', '1', '2018-09-08 01:21:34', null, null, null);
INSERT INTO `improvements` VALUES ('3', 'Regular practice will enable the student to improve on fluency and excel in recitation. Keep up the determined spirit!', 'Mazoezi ya mara kwa mara yatawasaidia kuboresha na kufanya vyema kwenye usomaji.  Endelea na moyo wako huu', '1', '2018-09-08 01:21:34', null, null, null);
INSERT INTO `improvements` VALUES ('4', 'The student finds it difficult to stay focused on recitation and prefers working with hands-on Quran activities. With more practice and encouragement, the student will be able to achieve even more.', 'Mwanafunzi anapata ugumu kutulia kwenye kusoma na anapendelea zaidi kufanya mazoezi ya vitendo zaidi kwenye Quran. Kwa mazoezi zaidi na kumtia moyo mwanafunzi atafanya vyema zaidi', '1', '2018-09-08 01:21:34', null, null, null);
INSERT INTO `improvements` VALUES ('5', 'Tends to confuse some letters but with more practice will be able to learn the letters fluently. I see great potential in the student. All the best!', 'Anaonekana kuchanganya baadhi ya herufi ila kwa mazoezi ya kutosha ataweza kujifunza herufi vizuri. Naona kipaji ndani yake. Nakutakia mafanikio!', '1', '2018-09-08 01:21:34', null, null, null);
INSERT INTO `improvements` VALUES ('6', 'Practicing regularly at home will greatly improve recognition and fluency skills as the student has the potential to do well in Quran.', 'Kufanya mazoezi mara kwa mara nyumbani kutasaidia kuboresha usomaji wake kwa vile inaonekana mwanafunzi ana uwezo mkubwa na kufanya vizuri kwenye Quran', '1', '2018-09-08 01:21:34', null, null, null);
INSERT INTO `improvements` VALUES ('7', 'The student has good fluency and has worked on improving makharij but struggles with the pronounciation of some heavy letters. Please continue practice at home to excel at Quran recitation.', 'Mwanafunzi anasoma vizuri na amefanya kwa biddi kuboresha Makharij ila bado ana shia kwneye baadhi ya matamshi ya baadhi ya herufi nzito. Tafadhali endelea kufanya mazoezi ya kusoma Quran nyumbani ili kuboresha usomaji wako', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('8', 'Performs better when recites on one to one basis. With regular practice and encouragement, the student will be able to achieve even more.', 'Anafanya vizuri anapofanya yey mwenyewe bila wenzake. Kwa mazoezi ya kutosha na kumtia moyo mwanafunzi anaweza kufanya vizuri zaidi', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('9', 'Due to frequent absenteeism, the student has missed out on many Quran lessons. Please encourage the child to attend madressa regularly and to practice at home to excel at Quran recitation.', 'Kutokana na kutokuhudhuria masomo mara kwa mara mwanafunzi amekosa vipindi vingi sana vya Quran. Tafadhali mtie moyo mtoto kuhudhuria Madrasah mara kwa mara na kufanya mazoezi ya kusoma Quran nyumbani', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('10', 'Due to frequent absenteeism, it has been difficult to track the students progress. With more practice and encouragement, the student will be able to achieve even more.', 'Kutokana na kutukuhudhuria masomo mara kwa mara, imekuwa na vigumu kufuatilia maendeleo ya mwanafunzi. Kwa mazoezi zaidi na kumtia moyo mwanafunzi ataweza kufanya vizuri zaidi', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('11', 'The student has improved makharij and needs to work on long/short vowels and maddahs. Please continue encouraging practice at home to excel at Quran recitation.', 'Mwanafunzi amefanya vizuri Makharij na anahitaji kufanyia kazi vowel fupi na ndefu na maddah. Tafadhali endelea kumtia moyo aendelee zaidi kufanya mazoezi ya kusoma Quran', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('12', 'The student has good fluency and letter recognition and has worked on improving makharij and needs to now work on the application of tajweed rules. Please continue encouraging practice at home to excel at Quran recitation.', 'Mwanafunzi anajua na anauwezo wa kutambua herufi na amejitahidi sana kurekebisha Makharij na anatakiwa sasa aanze kutumia sheria za Tajweed. Tafadhali endelea kumtia moyo aendelee zaidi kufanya mazoezi ya kusoma Quran', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('13', 'The student finds words with shaddah slightly challenging and needs to practice to overcome this. With continuous practice, the student can become an excellent reciter!', 'Mwanafunzi anapata shida na maneno yenye Shaddah na anahitaji kulishinda hili. Kwa mazoezi ya mara kwa mara mwanafunzi ataweza kuwa msomaji mzuri sana', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('14', 'With more practice and encouragement, the student can learn the letters fluently. I see great potential to learn the Qur’an in the best way possible.', 'Kwa mazoezi zaidi kumtia moyo mwanafunzi , anaweza kusoma herufi kwa urahisi. Naona uwezekano mkubwa sana wa kusoma Quran katika njia iliyo bora zaidi', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('15', 'With continuous practice, the student can excel in recitation and avoid occasional mistakes in accuracy. All the best!', 'Kwa mazoezi endelevu, mwanafunzi atafanikiwa kwenye kusoma Quran na kuachana na yale makosa madogo kwenye usahihi. Nakutakia mafaniko.', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('16', 'Regular practice will build fluency and help improve on heavy letters. Please encourage your child to practice daily at home for enhancing Quran recitation.', 'Mazoezi ya mara kwa mara yatasaidia kujenga uwezo wa kusoma kwa urahisi. na kuboresha usomaji wa herufi nzito. Tafadhali mtie moyo mwanafunzi asome sana Quran akiwa nyumbani', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('17', 'With more practice and encouragement, the student will be able to achieve even more.', 'Kwa mazoezi zaidi na kumpa moyo, mwanafunzi ataweza kufanikiwa zaidi', '1', '2018-09-08 01:21:35', null, null, null);
INSERT INTO `improvements` VALUES ('18', 'Additional practice will enable the student to achieve even more. All the best!', 'Kwa mazoezi ziada yatamfanya mwanafunzi afanikiwe zaidi. Nakutakia mafanikio!', '1', '2018-09-08 01:21:36', null, null, null);
INSERT INTO `improvements` VALUES ('19', 'With regular practice, the student has great potential to learn the Qur’an in the best way possible.', 'Kwa mazoezi ya mara kwa mara mwanafunzi ana nafasi ya kujifunza Quran kwa njia iliyobora zaidi', '1', '2018-09-08 01:21:36', null, null, null);
INSERT INTO `improvements` VALUES ('20', 'Practicing every day will help to improve fluency and build confidence. All the best!', 'Mazoezi ya kila siku yatasaidia kukujengea kujiamini. Nakutakia mafanikio!', '1', '2018-09-08 01:21:36', null, null, null);
INSERT INTO `improvements` VALUES ('21', 'Has the potential to greatly improve Qur\'an recitation, however needs more guidance and supervision during recitation.', 'Mwanafunzi ana uwezo mkubwa wa kuweza kukariri,ingawaje anahitaji uangalizi na usimamizi wakati wa kukariri.', '1', '2019-04-06 20:25:00', '2019-04-09 09:16:08', '924', '924');
INSERT INTO `improvements` VALUES ('22', 'I strongly encourage your child to attend Madrasah Sadiq or recite with a maalim at home to improve fluency and Qur\'an recitation.', 'Nashauri na kumtia moyo mwanafunzi ahudhurie Madrasah Sadiq ama kukariri  Quran akiwa na Maalim nyumbani kumfanya aweze kuelewa vizuri', '1', '2019-04-06 20:25:19', '2019-04-09 09:15:42', '924', '924');
INSERT INTO `improvements` VALUES ('23', 'Needs to be more attentive in bringing the H/W card for keeping records so the student can practice Qur\'an recitation at home.', 'Mwanafunzi awe makini Zaidi katika kuleta kadi ya kazi za nyumbani (homework) kwa ajili ya kumbukumbu na kumwezesha aweze kufanya mazoezi ya Quaran', '1', '2019-04-06 20:25:38', '2019-04-09 09:15:09', '924', '924');
INSERT INTO `improvements` VALUES ('24', 'Tends to confuse dotted letters when in joint form but with more practice, the student will be able to improve.', 'Mwanafunzi huchanganya herufi zenye vidoti doti kwenye joint form lakini akifanya mazoezi ya kutosha ataweze kubadilika na kufanya vizuri.', '1', '2019-04-06 20:25:52', '2019-04-09 09:14:26', '924', '924');
INSERT INTO `improvements` VALUES ('25', 'Tends to make occasional mistakes in accuracy and overlooks vowels and harakats. Please continue encouraging practice at home to excel at Qur\'an recitation.', 'Mara kadhaa mwanafunzi hukosa usahihi na kupitiwa kwenye kuona vowels na harakats.Tafadhali endelea kumtia moyo kufanya mazoezi ya Quaran nyumbani', '1', '2019-04-06 20:26:08', '2019-04-09 09:13:49', '924', '924');
INSERT INTO `improvements` VALUES ('26', 'The student frequently forgets bringing the manuals to Madrasah that greatly affects progress. Please ensure your child brings their Qur\'an manual every week as I see great potential in the student to do well in Qur\'an. ', 'Mwanafunzi husahau mara nyingi sana kuja na vitabu( miongozo).Hii inathiri sana maendeleo yake ya Madrasah .Tafadhali hakikisha mtoto wako anakuja na kitabu chake  kila wiki.Ninaona uwezo na uwezekano wa mtoto kufanya vyema kwenye Quran', '1', '2019-04-06 20:26:24', '2019-04-09 09:12:36', '924', '924');
INSERT INTO `improvements` VALUES ('27', 'The student recites very fast and tends to make accuracy mistakes. Daily practice will help in maintaining an appropriate pace which will greatly improve Qur\'an recitation. ', 'Mwanafunzi hukariri kwa haraka sana na hushindwa kuwa sahihi.Mazoezi ya kila siku yatamsaidia kuendeleza spid ya kukariri Quran', '1', '2019-04-06 20:26:39', '2019-04-09 09:11:51', '924', '924');

-- ----------------------------
-- Table structure for letters
-- ----------------------------
DROP TABLE IF EXISTS `letters`;
CREATE TABLE `letters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of letters
-- ----------------------------
INSERT INTO `letters` VALUES ('1', 'ا', '2018-09-06 00:26:21', '2018-09-06 00:26:46', null, null);
INSERT INTO `letters` VALUES ('2', 'ب', '2018-09-06 00:26:48', null, null, null);
INSERT INTO `letters` VALUES ('3', 'ت', '2018-09-06 00:26:49', null, null, null);
INSERT INTO `letters` VALUES ('4', 'ث', '2018-09-06 00:26:50', null, null, null);
INSERT INTO `letters` VALUES ('5', 'ج', '2018-09-06 00:26:52', null, null, null);
INSERT INTO `letters` VALUES ('6', 'ح', '2018-09-06 00:26:52', null, null, null);
INSERT INTO `letters` VALUES ('7', 'خ', '2018-09-06 00:26:54', null, null, null);
INSERT INTO `letters` VALUES ('8', 'د', '2018-09-06 00:26:55', null, null, null);
INSERT INTO `letters` VALUES ('9', 'ذ', '2018-09-06 00:26:55', null, null, null);
INSERT INTO `letters` VALUES ('10', 'ر', '2018-09-06 00:26:56', null, null, null);
INSERT INTO `letters` VALUES ('11', 'ز', '2018-09-06 00:26:57', null, null, null);
INSERT INTO `letters` VALUES ('12', 'س', '2018-09-06 00:26:58', null, null, null);
INSERT INTO `letters` VALUES ('13', 'ش', '2018-09-06 00:26:58', null, null, null);
INSERT INTO `letters` VALUES ('14', 'ص', '2018-09-06 00:26:59', null, null, null);
INSERT INTO `letters` VALUES ('15', 'ض', '2018-09-06 00:26:59', null, null, null);
INSERT INTO `letters` VALUES ('16', 'ط', '2018-09-06 00:27:00', null, null, null);
INSERT INTO `letters` VALUES ('17', 'ظ', '2018-09-06 00:27:01', null, null, null);
INSERT INTO `letters` VALUES ('18', 'ع', '2018-09-06 00:27:02', null, null, null);
INSERT INTO `letters` VALUES ('19', 'غ', '2018-09-06 00:27:02', null, null, null);
INSERT INTO `letters` VALUES ('20', 'ف', '2018-09-06 00:27:04', null, null, null);
INSERT INTO `letters` VALUES ('21', 'ق', '2018-09-06 00:27:04', null, null, null);
INSERT INTO `letters` VALUES ('22', 'ك', '2018-09-06 00:27:16', null, null, null);
INSERT INTO `letters` VALUES ('23', 'ل', '2018-09-06 00:27:17', null, null, null);
INSERT INTO `letters` VALUES ('24', 'م', '2018-09-06 00:27:18', null, null, null);
INSERT INTO `letters` VALUES ('25', 'ن', '2018-09-06 00:27:18', null, null, null);
INSERT INTO `letters` VALUES ('26', 'و', '2018-09-06 00:27:20', null, null, null);
INSERT INTO `letters` VALUES ('27', 'ه', '2018-09-06 00:27:20', null, null, null);
INSERT INTO `letters` VALUES ('28', 'ی', '2018-09-06 00:27:22', null, null, null);

-- ----------------------------
-- Table structure for levels
-- ----------------------------
DROP TABLE IF EXISTS `levels`;
CREATE TABLE `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `altname` varchar(255) DEFAULT NULL,
  `name_sw` varchar(255) DEFAULT NULL,
  `description` text,
  `sortno` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of levels
-- ----------------------------
INSERT INTO `levels` VALUES ('1', 'Manual 1', null, 'Kitabu 1', null, null, '2018-09-07 00:12:05', '2018-09-27 17:56:34', null, null);
INSERT INTO `levels` VALUES ('2', 'Manual 2', null, 'Kitabu 2', null, null, '2018-09-07 00:12:08', '2018-09-27 17:56:36', null, null);
INSERT INTO `levels` VALUES ('3', 'Manual 3', null, 'Kitabu 3', null, null, '2018-09-07 00:12:10', '2018-09-27 17:56:39', null, null);
INSERT INTO `levels` VALUES ('4', 'Manual 4', null, 'Kitabu 4', null, null, '2018-09-07 00:12:13', '2018-09-27 17:56:41', null, null);
INSERT INTO `levels` VALUES ('5', 'Big Quran', null, 'Quran Kubwa', null, null, '2018-09-07 00:12:15', '2018-09-27 17:56:46', null, null);

-- ----------------------------
-- Table structure for levelstages
-- ----------------------------
DROP TABLE IF EXISTS `levelstages`;
CREATE TABLE `levelstages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `name_sw` varchar(255) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `levelid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of levelstages
-- ----------------------------
INSERT INTO `levelstages` VALUES ('1', 'Level 1- Letter recognition', 'Hatua 1 - Kutambua herufi', '0', '1', '2018-09-07 00:12:28', '2018-09-27 18:02:25', null, null);
INSERT INTO `levelstages` VALUES ('2', 'Level 1- Joint letters', 'Hatua 1 - Joint letters', '1', '1', '2018-09-07 00:12:29', '2018-09-27 18:16:40', null, null);
INSERT INTO `levelstages` VALUES ('3', 'Level 2- Haraka', 'Hatua 2 - Haraka', '0', '2', '2018-09-07 00:12:31', '2018-09-27 17:59:07', null, null);
INSERT INTO `levelstages` VALUES ('4', 'Level 3- Sukoon', 'Hatua 3 - Sukoon', '0', '3', '2018-09-07 00:12:32', '2018-09-27 17:59:13', null, null);
INSERT INTO `levelstages` VALUES ('5', 'Level 3- Long vowels', 'Hatua 3 - Vowel ndefu', '1', '3', '2018-09-07 00:12:33', '2018-09-27 17:59:30', null, null);
INSERT INTO `levelstages` VALUES ('6', 'Level 3- Hamzah', 'Hatua 3 - Hamzah\r\n', '2', '3', '2018-09-07 00:12:36', '2018-09-27 17:59:39', null, null);
INSERT INTO `levelstages` VALUES ('7', 'Level 3- Maddah', 'Hatua 3 - Maddah', '3', '3', '2018-09-07 00:12:36', '2018-09-27 17:59:50', null, null);
INSERT INTO `levelstages` VALUES ('8', 'Level 3- Silent letters', 'Hatua 3 - Silent letters', '4', '3', '2018-09-07 00:12:37', '2018-09-27 18:16:35', null, null);
INSERT INTO `levelstages` VALUES ('9', 'Level 3- Tashdeed', 'Hatua 3 - Tashdeed', '5', '3', '2018-09-07 00:12:38', '2018-09-27 18:00:25', null, null);
INSERT INTO `levelstages` VALUES ('10', 'Level 4- Tanween', 'Hatua 4 - Tanween', '0', '4', '2018-09-07 00:12:42', '2018-09-27 18:00:40', null, null);
INSERT INTO `levelstages` VALUES ('11', 'Level 4- Tanween and Shaddah', 'Hatua 4 - Tanween na Shaddah', '1', '4', '2018-09-07 00:12:42', '2018-09-27 18:01:20', null, null);
INSERT INTO `levelstages` VALUES ('12', 'Level 4- Sukoon followed by Shaddah', 'Hatua 4 - Sukoon kufuatiwa na Shaddah', '2', '4', '2018-09-07 00:12:43', '2018-09-27 18:10:12', null, null);
INSERT INTO `levelstages` VALUES ('13', 'Level 4- Muqatta\'aat', 'Hatua 4 - Muqatta\'aat', '3', '4', '2018-09-07 00:12:43', '2018-09-27 18:00:59', null, null);
INSERT INTO `levelstages` VALUES ('14', 'Level 4- Nun Al Qutni', 'Hatua 4 - Nun Al Qutni', '4', '4', '2018-09-07 00:12:44', '2018-09-27 18:01:04', null, null);
INSERT INTO `levelstages` VALUES ('15', 'Level 4- Stop signs', 'Hatua 4 - Alama za Waqf', '5', '4', '2018-09-07 00:12:44', '2018-09-27 18:14:47', null, null);
INSERT INTO `levelstages` VALUES ('16', 'Big Quran- Beginner', 'Quran Kubwa - Ngazi ya awali', '0', '5', '2018-09-07 00:12:50', '2018-09-27 17:58:31', null, null);
INSERT INTO `levelstages` VALUES ('17', 'Big Quran- Intermediate', 'Quran Kubwa - Ngazi ya kati', '1', '5', '2018-09-07 00:12:51', '2018-09-27 17:58:35', null, null);
INSERT INTO `levelstages` VALUES ('18', 'Big Quran- Advanced', 'Quran Kubwa - Ngazi ya juu', '2', '5', '2018-09-07 00:12:51', '2018-09-27 17:58:40', null, null);
