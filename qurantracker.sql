/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 100134
Source Host           : localhost:3306
Source Database       : qurantracker

Target Server Type    : MYSQL
Target Server Version : 100134
File Encoding         : 65001

Date: 2018-09-06 01:02:03
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
INSERT INTO `admins` VALUES ('1', 'Adminstrator', null, null, '1', '2018-09-03 21:08:18', '2018-09-03 21:10:04', '1', null);

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
INSERT INTO `classes` VALUES ('1', 'A', '2017-12-03 00:31:38', '2018-09-03 21:18:37', '1', '1');
INSERT INTO `classes` VALUES ('2', 'B', '2017-12-03 00:31:41', null, '1', null);
INSERT INTO `classes` VALUES ('3', 'C', '2017-12-03 00:31:42', null, '1', null);

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
  `status` int(11) DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of enrollments
-- ----------------------------
INSERT INTO `enrollments` VALUES ('1', '4', '2', '1', '3', '1', '2018-09-03 21:58:46', '2018-09-03 21:59:19', '1', '1');
INSERT INTO `enrollments` VALUES ('2', '3', '1', '2', '3', '1', '2018-09-03 21:58:56', null, '1', null);
INSERT INTO `enrollments` VALUES ('3', '2', '3', '1', '3', '1', '2018-09-03 21:59:10', null, '1', null);
INSERT INTO `enrollments` VALUES ('4', '1', '3', '1', '3', '1', '2018-09-03 21:59:10', null, '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gradebenchlevels
-- ----------------------------
INSERT INTO `gradebenchlevels` VALUES ('1', '1', '1', '2018-08-25 00:11:14', null, null, null);
INSERT INTO `gradebenchlevels` VALUES ('2', '2', '1', '2018-08-25 00:11:24', null, null, null);
INSERT INTO `gradebenchlevels` VALUES ('3', '3', '2', '2018-08-25 00:11:32', null, null, null);
INSERT INTO `gradebenchlevels` VALUES ('4', '4', '2', '2018-08-25 00:11:37', null, null, null);
INSERT INTO `gradebenchlevels` VALUES ('5', '5', '3', '2018-08-25 00:11:46', null, null, null);
INSERT INTO `gradebenchlevels` VALUES ('6', '6', '4', '2018-08-25 00:11:52', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gradebenchmarks
-- ----------------------------
INSERT INTO `gradebenchmarks` VALUES ('1', '1', '1', '2018-08-25 00:11:14', null, '1', null);
INSERT INTO `gradebenchmarks` VALUES ('2', '2', '1', '2018-08-25 00:11:24', null, '1', null);
INSERT INTO `gradebenchmarks` VALUES ('3', '3', '1', '2018-08-25 00:11:31', null, '1', null);
INSERT INTO `gradebenchmarks` VALUES ('4', '4', '1', '2018-08-25 00:11:37', null, '1', null);
INSERT INTO `gradebenchmarks` VALUES ('5', '5', '1', '2018-08-25 00:11:46', null, '1', null);
INSERT INTO `gradebenchmarks` VALUES ('6', '6', '1', '2018-08-25 00:11:52', null, '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gradebenchremarks
-- ----------------------------
INSERT INTO `gradebenchremarks` VALUES ('4', '2', '1', 'Good start', '2018-08-25 00:12:58', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('5', '2', '2', 'Very good start', '2018-08-25 00:12:58', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('6', '2', '3', 'Excellent', '2018-08-25 00:12:58', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('7', '3', '-1', 'Still starting', '2018-08-25 00:13:23', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('8', '3', '1', 'Working hard', '2018-08-25 00:13:23', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('9', '3', '2', 'Perfect', '2018-08-25 00:13:24', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('10', '4', '-1', 'Needs work', '2018-08-25 00:13:39', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('11', '4', '1', 'Wonderful', '2018-08-25 00:13:39', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('12', '4', '2', 'Excellent', '2018-08-25 00:13:39', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('13', '5', '-1', 'Needs more work', '2018-08-25 00:14:13', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('14', '5', '-2', 'Starting to read', '2018-08-25 00:14:14', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('15', '5', '1', 'Perfect', '2018-08-25 00:14:14', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('16', '6', '-1', 'Working hard', '2018-08-25 00:14:42', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('17', '6', '-2', 'Not enough', '2018-08-25 00:14:42', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('18', '6', '-3', 'Very basic understanding', '2018-08-25 00:14:42', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('19', '1', '1', 'Good Start', '2018-09-03 21:19:19', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('20', '1', '2', 'Very Good Start', '2018-09-03 21:19:19', null, '1', null);
INSERT INTO `gradebenchremarks` VALUES ('21', '1', '3', 'Excellence', '2018-09-03 21:19:19', null, '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES ('1', '1', '2017-07-17 02:23:54', '2017-07-17 02:24:20', '1', '1');
INSERT INTO `grades` VALUES ('2', '2', '2017-07-17 02:23:58', null, '1', null);
INSERT INTO `grades` VALUES ('3', '3', '2017-07-17 02:24:03', null, '1', null);
INSERT INTO `grades` VALUES ('4', '4', '2017-07-17 02:24:06', null, '1', null);
INSERT INTO `grades` VALUES ('5', '5', '2017-07-17 02:24:08', null, '1', null);
INSERT INTO `grades` VALUES ('6', '6', '2017-07-17 02:24:10', null, '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'Kids', '1', '3', '1', '2018-09-03 22:07:45', '2018-09-03 22:10:52', '1', '1');
INSERT INTO `groups` VALUES ('2', 'Teens', '2', '3', '1', '2018-09-03 22:11:12', null, '1', null);
INSERT INTO `groups` VALUES ('3', 'Extra Class', '1', '3', '1', '2018-09-03 22:11:40', null, '1', null);

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
  `name` varchar(50) DEFAULT NULL,
  `altname` varchar(255) DEFAULT NULL,
  `description` text,
  `sortno` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of levels
-- ----------------------------
INSERT INTO `levels` VALUES ('1', '0', 'Beginners', '', '0', '2017-12-03 00:37:06', '2018-09-03 21:19:07', '1', '1');
INSERT INTO `levels` VALUES ('2', '1', 'Small Quran', '', '1', '2017-12-03 00:37:15', '2018-08-25 00:10:24', '1', '1');
INSERT INTO `levels` VALUES ('3', '2', 'Big Quran Beginner', '', '2', '2017-12-03 00:37:24', '2018-08-25 00:10:54', '1', '1');
INSERT INTO `levels` VALUES ('4', '3', 'Big Quran Advanced', '', '3', '2017-12-03 00:37:29', '2018-08-25 00:11:00', '1', '1');

-- ----------------------------
-- Table structure for levelstages
-- ----------------------------
DROP TABLE IF EXISTS `levelstages`;
CREATE TABLE `levelstages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `levelid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of levelstages
-- ----------------------------
INSERT INTO `levelstages` VALUES ('1', '10 Suras', '0', '2', '2018-09-03 23:05:05', '2018-09-03 23:07:39', '1', '1');
INSERT INTO `levelstages` VALUES ('2', '20 Suras', '1', '2', '2018-09-03 23:05:10', '2018-09-03 23:07:40', '1', '1');
INSERT INTO `levelstages` VALUES ('3', '30 Suras', '2', '2', '2018-09-03 23:05:51', '2018-09-03 23:07:40', '1', '1');
INSERT INTO `levelstages` VALUES ('4', 'Basic', '0', '1', '2018-09-04 23:07:21', '2018-09-04 23:07:25', '1', '1');
INSERT INTO `levelstages` VALUES ('5', 'Simpler', '1', '1', '2018-09-04 23:07:25', null, '1', '1');

-- ----------------------------
-- Table structure for madrasahs
-- ----------------------------
DROP TABLE IF EXISTS `madrasahs`;
CREATE TABLE `madrasahs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of madrasahs
-- ----------------------------
INSERT INTO `madrasahs` VALUES ('1', 'HMBS', '2017-12-03 00:31:02', null, '1', null);
INSERT INTO `madrasahs` VALUES ('2', 'Imam Sadiq (a)', '2018-08-25 00:09:43', '2018-09-03 21:11:45', '1', '1');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'Home', 'home', 'index', '1', '1');
INSERT INTO `menus` VALUES ('2', 'Users', '', '', '9', '1');
INSERT INTO `menus` VALUES ('3', 'Masters', '', null, '2', '1');
INSERT INTO `menus` VALUES ('4', 'Allocations', null, null, '3', '1');
INSERT INTO `menus` VALUES ('5', 'Progress Records', null, null, '4', '1');

-- ----------------------------
-- Table structure for parents
-- ----------------------------
DROP TABLE IF EXISTS `parents`;
CREATE TABLE `parents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parents
-- ----------------------------
INSERT INTO `parents` VALUES ('1', 'Shabbir Moledina', '0684618381', 'shabbir@gmail.com', 'm', '3', '2018-09-03 21:25:28', null, '1', null);
INSERT INTO `parents` VALUES ('2', 'Chandni Moledina', '0638827321', 'chandni@gmail.com', 'f', '4', '2018-09-03 21:28:31', null, '1', null);
INSERT INTO `parents` VALUES ('3', 'Sajjad Moledina', '0637137212', 'sajjad@gmail.com', 'm', '5', '2018-09-03 21:36:50', null, '1', null);
INSERT INTO `parents` VALUES ('4', 'Rukaiya Moledina', '0547717371', 'rukaiya@gmail.com', 'f', '6', '2018-09-03 21:37:33', null, '1', null);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `details` text,
  `logo` varchar(255) DEFAULT NULL,
  `yearid` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'HMGS Quran', 'Husayni Madrasah Girls Section', 'logo.png', '3', '1', '2017-07-13 17:07:51', '2018-09-03 22:25:11', '1', '1');

-- ----------------------------
-- Table structure for studentmakhrajs
-- ----------------------------
DROP TABLE IF EXISTS `studentmakhrajs`;
CREATE TABLE `studentmakhrajs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sreportid` int(11) DEFAULT NULL,
  `makhraj` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentmakhrajs
-- ----------------------------

-- ----------------------------
-- Table structure for studentpartners
-- ----------------------------
DROP TABLE IF EXISTS `studentpartners`;
CREATE TABLE `studentpartners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sreportid` int(11) DEFAULT NULL,
  `partner` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentpartners
-- ----------------------------

-- ----------------------------
-- Table structure for studentremarks
-- ----------------------------
DROP TABLE IF EXISTS `studentremarks`;
CREATE TABLE `studentremarks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacherid` int(11) DEFAULT NULL,
  `yearid` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `enrollid` int(11) DEFAULT NULL,
  `flevelid` int(11) DEFAULT NULL,
  `tlevelid` int(11) DEFAULT NULL,
  `fstageid` int(11) DEFAULT NULL,
  `tstageid` int(11) DEFAULT NULL,
  `remarks` text,
  `comments` text,
  `approvedby` int(11) DEFAULT '0',
  `process` int(11) DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentremarks
-- ----------------------------
INSERT INTO `studentremarks` VALUES ('1', '1', '3', '1', '1', '0', '2', '0', '1', '', '', '1', '1', '2018-09-04 23:11:24', '2018-09-04 23:11:24', '1', null);
INSERT INTO `studentremarks` VALUES ('2', '1', '3', '1', '2', '0', '1', '0', '4', '', '', '1', '1', '2018-09-04 23:11:24', '2018-09-04 23:11:25', '1', null);
INSERT INTO `studentremarks` VALUES ('3', '1', '3', '1', '2', '1', '1', '4', '5', 'Not bad', 'Starting', '1', '1', '2018-09-04 23:15:39', '2018-09-04 23:15:40', '1', null);
INSERT INTO `studentremarks` VALUES ('4', '1', '3', '1', '3', '0', '2', '0', '1', '', '', '2', '1', '2018-09-04 23:19:37', '2018-09-04 23:19:38', '2', null);

-- ----------------------------
-- Table structure for studentreports
-- ----------------------------
DROP TABLE IF EXISTS `studentreports`;
CREATE TABLE `studentreports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enrollid` int(11) DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL,
  `yearid` int(11) DEFAULT NULL,
  `levelid` int(11) DEFAULT '0',
  `stageid` int(11) DEFAULT '0',
  `frequency` int(11) DEFAULT NULL,
  `makhraj` int(11) DEFAULT NULL,
  `fluency` int(11) DEFAULT NULL,
  `tajweed` int(11) DEFAULT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `discipline` varchar(255) DEFAULT NULL,
  `improvement` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentreports
-- ----------------------------

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `fparentid` int(11) DEFAULT NULL,
  `mparentid` int(11) DEFAULT NULL,
  `madrasahid` int(11) DEFAULT '0',
  `userid` int(11) DEFAULT NULL,
  `levelid` int(11) DEFAULT '0',
  `stageid` int(11) DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'Mohammad Abbas Moledina', '1', '2', '1', '7', '0', '0', '2018-09-03 21:38:04', '2018-09-04 22:56:51', '1', null);
INSERT INTO `students` VALUES ('2', 'Husayn Moledina', '3', '4', '1', '8', '2', '1', '2018-09-03 21:39:17', '2018-09-04 23:19:37', '1', null);
INSERT INTO `students` VALUES ('3', 'Alireza Moledina', '3', '4', '2', '10', '1', '5', '2018-09-03 21:41:10', '2018-09-04 23:15:39', '1', '1');
INSERT INTO `students` VALUES ('4', 'Ali Akbar Moledina', '1', '2', '2', '11', '2', '1', '2018-09-03 21:41:25', '2018-09-04 23:11:24', '1', null);

-- ----------------------------
-- Table structure for studenttajweeds
-- ----------------------------
DROP TABLE IF EXISTS `studenttajweeds`;
CREATE TABLE `studenttajweeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sreportid` int(11) DEFAULT NULL,
  `tajweed` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studenttajweeds
-- ----------------------------

-- ----------------------------
-- Table structure for studentweaknesses
-- ----------------------------
DROP TABLE IF EXISTS `studentweaknesses`;
CREATE TABLE `studentweaknesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sreportid` int(11) DEFAULT NULL,
  `weakness` varchar(255) CHARACTER SET utf16 COLLATE utf16_unicode_ci DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentweaknesses
-- ----------------------------

-- ----------------------------
-- Table structure for submenus
-- ----------------------------
DROP TABLE IF EXISTS `submenus`;
CREATE TABLE `submenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `sortno` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of submenus
-- ----------------------------
INSERT INTO `submenus` VALUES ('1', '2', 'Students', 'users', 'students', '1', '1');
INSERT INTO `submenus` VALUES ('2', '2', 'Parents', 'users', 'parents', '2', '1');
INSERT INTO `submenus` VALUES ('3', '2', 'Teachers', 'users', 'teachers', '3', '1');
INSERT INTO `submenus` VALUES ('4', '2', 'Admins', 'users', 'admins', '4', '1');
INSERT INTO `submenus` VALUES ('5', '3', 'Madrasahs', 'masters', 'madrasahs', '1', '1');
INSERT INTO `submenus` VALUES ('6', '3', 'Grades', 'masters', 'grades', '2', '1');
INSERT INTO `submenus` VALUES ('7', '3', 'Classes', 'masters', 'classes', '3', '1');
INSERT INTO `submenus` VALUES ('8', '3', 'Terms', 'masters', 'terms', '4', '1');
INSERT INTO `submenus` VALUES ('9', '3', 'Years', 'masters', 'years', '5', '1');
INSERT INTO `submenus` VALUES ('10', '3', 'Levels', 'masters', 'levels', '6', '1');
INSERT INTO `submenus` VALUES ('11', '3', 'Benchmarks', 'masters', 'benchmarks', '7', '1');
INSERT INTO `submenus` VALUES ('12', '4', 'Student Enrollments', 'allocations', 'enrollments', '1', '1');
INSERT INTO `submenus` VALUES ('13', '4', 'Teacher Allocations', 'allocations', 'allocations', '2', '1');
INSERT INTO `submenus` VALUES ('14', '5', 'Modify Level', 'remarks', 'modifications', '1', '1');
INSERT INTO `submenus` VALUES ('15', '5', 'Yearly Report', 'remarks', 'yearly_reports', '2', '1');

-- ----------------------------
-- Table structure for teacherallocations
-- ----------------------------
DROP TABLE IF EXISTS `teacherallocations`;
CREATE TABLE `teacherallocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enrollid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacherallocations
-- ----------------------------
INSERT INTO `teacherallocations` VALUES ('11', '1', '1', '1', '2018-09-03 22:10:52', null, null, null);
INSERT INTO `teacherallocations` VALUES ('12', '2', '1', '1', '2018-09-03 22:10:52', null, null, null);
INSERT INTO `teacherallocations` VALUES ('13', '3', '2', '1', '2018-09-03 22:11:12', null, null, null);
INSERT INTO `teacherallocations` VALUES ('14', '4', '2', '1', '2018-09-03 22:11:12', null, null, null);
INSERT INTO `teacherallocations` VALUES ('15', '2', '3', '1', '2018-09-03 22:11:40', null, null, null);
INSERT INTO `teacherallocations` VALUES ('16', '3', '3', '1', '2018-09-03 22:11:40', null, null, null);

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mteacher` int(11) DEFAULT '0',
  `maxlevelid` int(11) DEFAULT NULL,
  `remarks` text,
  `userid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('1', 'Maisam Versi', '0684727217', 'maisam@gmail.com', '1', '4', 'Good teacher\r\n', '2', '2018-09-03 21:21:01', null, '1', null);
INSERT INTO `teachers` VALUES ('2', 'Mohd Baqir Virani', '0746166361', 'baqir@gmail.com', '0', '4', '', '9', '2018-09-03 21:39:57', null, '1', null);

-- ----------------------------
-- Table structure for terms
-- ----------------------------
DROP TABLE IF EXISTS `terms`;
CREATE TABLE `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of terms
-- ----------------------------
INSERT INTO `terms` VALUES ('1', 'Term 1', '2017-12-03 00:32:00', null, '1', null);
INSERT INTO `terms` VALUES ('2', 'Term 2', '2018-08-25 00:09:55', '2018-09-03 21:18:45', '1', '1');

-- ----------------------------
-- Table structure for userlevelrights
-- ----------------------------
DROP TABLE IF EXISTS `userlevelrights`;
CREATE TABLE `userlevelrights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `submenuid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userlevelrights
-- ----------------------------
INSERT INTO `userlevelrights` VALUES ('18', '3', '1', null, '2018-09-03 21:04:19', null, null, null);
INSERT INTO `userlevelrights` VALUES ('19', '4', '1', null, '2018-09-03 21:04:25', null, null, null);
INSERT INTO `userlevelrights` VALUES ('20', '1', '1', null, '2018-09-05 23:17:20', null, null, null);
INSERT INTO `userlevelrights` VALUES ('21', '1', '3', '5', '2018-09-05 23:17:20', null, null, null);
INSERT INTO `userlevelrights` VALUES ('22', '1', '3', '6', '2018-09-05 23:17:20', null, null, null);
INSERT INTO `userlevelrights` VALUES ('23', '1', '3', '7', '2018-09-05 23:17:20', null, null, null);
INSERT INTO `userlevelrights` VALUES ('24', '1', '3', '8', '2018-09-05 23:17:20', null, null, null);
INSERT INTO `userlevelrights` VALUES ('25', '1', '3', '9', '2018-09-05 23:17:20', null, null, null);
INSERT INTO `userlevelrights` VALUES ('26', '1', '3', '10', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('27', '1', '3', '11', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('28', '1', '4', '12', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('29', '1', '4', '13', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('30', '1', '5', '14', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('31', '1', '5', '15', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('32', '1', '2', '1', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('33', '1', '2', '2', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('34', '1', '2', '3', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('35', '1', '2', '4', '2018-09-05 23:17:21', null, null, null);
INSERT INTO `userlevelrights` VALUES ('36', '2', '1', null, '2018-09-05 23:17:27', null, null, null);
INSERT INTO `userlevelrights` VALUES ('37', '2', '5', '14', '2018-09-05 23:17:27', null, null, null);
INSERT INTO `userlevelrights` VALUES ('38', '2', '5', '15', '2018-09-05 23:17:27', null, null, null);

-- ----------------------------
-- Table structure for userrights
-- ----------------------------
DROP TABLE IF EXISTS `userrights`;
CREATE TABLE `userrights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `submenuid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userrights
-- ----------------------------
INSERT INTO `userrights` VALUES ('8', '2', '1', '0', '2018-09-03 22:46:00', null, '1', null);
INSERT INTO `userrights` VALUES ('9', '2', '5', '14', '2018-09-03 22:46:00', null, '1', null);
INSERT INTO `userrights` VALUES ('10', '9', '1', '0', '2018-09-03 22:46:04', null, '1', null);
INSERT INTO `userrights` VALUES ('11', '9', '5', '14', '2018-09-03 22:46:05', null, '1', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `color` varchar(255) DEFAULT 'olive',
  `utypeid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', null, 'admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '1', '1', '2018-09-03 21:06:02', '2018-09-03 21:08:09', null, null);
INSERT INTO `users` VALUES ('2', null, 'maisam', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '2', '1', '2018-09-03 21:21:01', '2018-09-03 21:31:51', null, null);
INSERT INTO `users` VALUES ('3', null, 'shabbir', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '4', '1', '2018-09-03 21:25:28', '2018-09-03 21:37:10', null, null);
INSERT INTO `users` VALUES ('4', null, 'chandni', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '4', '1', '2018-09-03 21:28:31', '2018-09-03 21:37:10', null, null);
INSERT INTO `users` VALUES ('5', null, 'sajjad', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '4', '1', '2018-09-03 21:36:50', null, null, null);
INSERT INTO `users` VALUES ('6', null, 'rukaiya', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '4', '1', '2018-09-03 21:37:33', null, null, null);
INSERT INTO `users` VALUES ('7', null, 'mohdabbas', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '3', '1', '2018-09-03 21:38:04', null, null, null);
INSERT INTO `users` VALUES ('8', null, 'husayn', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '3', '1', '2018-09-03 21:39:17', null, null, null);
INSERT INTO `users` VALUES ('9', null, 'baqir', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '2', '1', '2018-09-03 21:39:57', null, null, null);
INSERT INTO `users` VALUES ('10', null, 'alireza', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '3', '1', '2018-09-03 21:41:10', null, null, null);
INSERT INTO `users` VALUES ('11', null, 'aliakbar', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '3', '1', '2018-09-03 21:41:25', null, null, null);

-- ----------------------------
-- Table structure for usertypes
-- ----------------------------
DROP TABLE IF EXISTS `usertypes`;
CREATE TABLE `usertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usertypes
-- ----------------------------
INSERT INTO `usertypes` VALUES ('1', 'admin', '2018-07-12 00:02:16', '2018-07-12 00:02:19', '1', null);
INSERT INTO `usertypes` VALUES ('2', 'teacher', '2018-07-12 00:02:18', '2018-09-03 21:03:28', '1', null);
INSERT INTO `usertypes` VALUES ('3', 'student', '2018-09-03 21:03:30', null, null, null);
INSERT INTO `usertypes` VALUES ('4', 'parent', '2018-09-03 21:03:33', null, null, null);

-- ----------------------------
-- Table structure for years
-- ----------------------------
DROP TABLE IF EXISTS `years`;
CREATE TABLE `years` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of years
-- ----------------------------
INSERT INTO `years` VALUES ('1', '2016', '2017-12-03 00:32:07', '2018-09-03 21:18:58', '1', '1');
INSERT INTO `years` VALUES ('2', '2017', '2017-12-03 00:32:16', null, '1', null);
INSERT INTO `years` VALUES ('3', '2018', '2018-08-25 00:10:04', null, '1', null);
