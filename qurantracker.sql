/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : qurantracker

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-12-04 00:21:46
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
INSERT INTO `admins` VALUES ('1', 'Administrator', '2131332', 'hmbs@gmail.com', '1', '2017-07-13 19:44:19', '2017-12-03 01:39:28', '1', '1');

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
INSERT INTO `classes` VALUES ('1', 'A', '2017-12-03 01:01:38', null, '1', null);
INSERT INTO `classes` VALUES ('2', 'B', '2017-12-03 01:01:41', null, '1', null);
INSERT INTO `classes` VALUES ('3', 'C', '2017-12-03 01:01:42', null, '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES ('1', 'black', '2016-11-16 17:38:10', null, null, null);
INSERT INTO `colors` VALUES ('2', 'lime', '2016-11-16 17:38:10', null, null, null);
INSERT INTO `colors` VALUES ('3', 'green', '2016-11-16 17:38:12', null, null, null);
INSERT INTO `colors` VALUES ('4', 'emerald', '2016-11-16 17:38:13', null, null, null);
INSERT INTO `colors` VALUES ('5', 'teal', '2016-11-16 17:38:20', null, null, null);
INSERT INTO `colors` VALUES ('6', 'blue', '2016-11-16 17:38:21', null, null, null);
INSERT INTO `colors` VALUES ('7', 'cyan', '2016-11-16 17:38:23', null, null, null);
INSERT INTO `colors` VALUES ('8', 'cobalt', '2016-11-16 17:38:24', null, null, null);
INSERT INTO `colors` VALUES ('9', 'indigo', '2016-11-16 17:38:26', null, null, null);
INSERT INTO `colors` VALUES ('10', 'violet', '2016-11-16 17:38:27', null, null, null);
INSERT INTO `colors` VALUES ('11', 'pink', '2016-11-16 17:38:28', null, null, null);
INSERT INTO `colors` VALUES ('12', 'magenta', '2016-11-16 17:38:30', null, null, null);
INSERT INTO `colors` VALUES ('13', 'crimson', '2016-11-16 17:38:32', null, null, null);
INSERT INTO `colors` VALUES ('14', 'red', '2016-11-16 17:38:32', null, null, null);
INSERT INTO `colors` VALUES ('15', 'orange', '2016-11-16 17:38:34', null, null, null);
INSERT INTO `colors` VALUES ('16', 'amber', '2016-11-16 17:38:35', null, null, null);
INSERT INTO `colors` VALUES ('17', 'yellow', '2016-11-16 17:38:37', null, null, null);
INSERT INTO `colors` VALUES ('18', 'brown', '2016-11-16 17:38:38', null, null, null);
INSERT INTO `colors` VALUES ('19', 'olive', '2016-11-16 17:38:40', null, null, null);
INSERT INTO `colors` VALUES ('20', 'steel', '2016-11-16 17:38:41', null, null, null);
INSERT INTO `colors` VALUES ('21', 'mauve', '2016-11-16 17:38:43', null, null, null);
INSERT INTO `colors` VALUES ('22', 'taupe', '2016-11-16 17:38:46', null, null, null);
INSERT INTO `colors` VALUES ('23', 'gray', '2016-11-16 17:38:47', null, null, null);
INSERT INTO `colors` VALUES ('24', 'dark', '2016-11-16 17:38:49', null, null, null);
INSERT INTO `colors` VALUES ('25', 'darker', '2016-11-16 17:38:50', null, null, null);
INSERT INTO `colors` VALUES ('26', 'darkBrown', '2016-11-16 17:38:59', null, null, null);
INSERT INTO `colors` VALUES ('27', 'darkCrimson', '2016-11-16 17:39:03', null, null, null);
INSERT INTO `colors` VALUES ('28', 'darkMagenta', '2016-11-16 17:39:06', null, null, null);
INSERT INTO `colors` VALUES ('29', 'darkIndigo', '2016-11-16 17:39:08', null, null, null);
INSERT INTO `colors` VALUES ('30', 'darkCyan', '2016-11-16 17:39:10', null, null, null);
INSERT INTO `colors` VALUES ('31', 'darkCobalt', '2016-11-16 17:39:12', null, null, null);
INSERT INTO `colors` VALUES ('32', 'darkTeal', '2016-11-16 17:39:14', null, null, null);
INSERT INTO `colors` VALUES ('33', 'darkEmerald', '2016-11-16 17:39:18', null, null, null);
INSERT INTO `colors` VALUES ('34', 'darkGreen', '2016-11-16 17:39:21', null, null, null);
INSERT INTO `colors` VALUES ('35', 'darkOrange', '2016-11-16 17:39:23', null, null, null);
INSERT INTO `colors` VALUES ('36', 'darkRed', '2016-11-16 17:39:26', null, null, null);
INSERT INTO `colors` VALUES ('37', 'darkPink', '2016-11-16 17:39:27', null, null, null);
INSERT INTO `colors` VALUES ('38', 'darkViolet', '2016-11-16 17:39:31', null, null, null);
INSERT INTO `colors` VALUES ('39', 'darkBlue', '2016-11-16 17:39:32', null, null, null);
INSERT INTO `colors` VALUES ('40', 'lightBlue', '2016-11-16 17:39:35', null, null, null);
INSERT INTO `colors` VALUES ('41', 'lightRed', '2016-11-16 17:39:39', null, null, null);
INSERT INTO `colors` VALUES ('42', 'lightGreen', '2016-11-16 17:39:43', null, null, null);
INSERT INTO `colors` VALUES ('43', 'lighterBlue', '2016-11-16 17:39:48', null, null, null);
INSERT INTO `colors` VALUES ('44', 'lightTeal', '2016-11-16 17:39:52', null, null, null);
INSERT INTO `colors` VALUES ('45', 'lightOlive', '2016-11-16 17:39:55', null, null, null);
INSERT INTO `colors` VALUES ('46', 'lightOrange', '2016-11-16 17:39:57', null, null, null);
INSERT INTO `colors` VALUES ('47', 'lightPink', '2016-11-16 17:40:00', null, null, null);
INSERT INTO `colors` VALUES ('48', 'grayDark', '2016-11-16 17:40:02', null, null, null);
INSERT INTO `colors` VALUES ('49', 'grayDarker', '2016-11-16 17:40:05', null, null, null);
INSERT INTO `colors` VALUES ('50', 'grayLight', '2016-11-16 17:40:06', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of enrollments
-- ----------------------------
INSERT INTO `enrollments` VALUES ('1', '1', '1', '1', '1', '0', '2017-12-03 01:52:55', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('2', '2', '1', '1', '1', '0', '2017-12-03 01:53:31', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('3', '3', '1', '1', '1', '0', '2017-12-03 01:53:31', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('4', '4', '1', '1', '1', '0', '2017-12-03 01:53:31', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('5', '5', '1', '1', '1', '0', '2017-12-03 01:53:31', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('6', '6', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('7', '7', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('8', '8', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('9', '9', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('10', '10', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('11', '11', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('12', '12', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('13', '13', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('14', '14', '1', '1', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('15', '15', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('16', '16', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('17', '17', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('18', '18', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('19', '19', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('20', '20', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('21', '21', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('22', '22', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('23', '23', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('24', '24', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('25', '25', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('26', '26', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('27', '27', '1', '2', '1', '0', '2017-12-03 01:53:32', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('28', '28', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('29', '29', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('30', '30', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('31', '31', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('32', '32', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('33', '33', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('34', '34', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('35', '35', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('36', '36', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('37', '37', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('38', '38', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('39', '39', '1', '3', '1', '0', '2017-12-03 01:53:33', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('40', '40', '2', '1', '1', '0', '2017-12-03 01:56:36', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('41', '41', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('42', '42', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('43', '43', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('44', '44', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('45', '45', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('46', '46', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('47', '47', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('48', '48', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('49', '49', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('50', '50', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('51', '51', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('52', '52', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('53', '53', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('54', '54', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('55', '55', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('56', '56', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('57', '57', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('58', '58', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('59', '59', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('60', '60', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('61', '61', '2', '1', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('62', '62', '2', '2', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('63', '63', '2', '2', '1', '0', '2017-12-03 01:56:37', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('64', '64', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('65', '65', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('66', '66', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('67', '67', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('68', '68', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('69', '69', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('70', '70', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('71', '71', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('72', '72', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('73', '73', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('74', '74', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('75', '75', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('76', '76', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('77', '77', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('78', '78', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('79', '79', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('80', '80', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('81', '81', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('82', '82', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('83', '83', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('84', '84', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('85', '85', '2', '2', '1', '0', '2017-12-03 01:56:38', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('86', '86', '2', '2', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('87', '87', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('88', '88', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('89', '89', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('90', '90', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('91', '91', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('92', '92', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('93', '93', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('94', '94', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('95', '95', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('96', '96', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('97', '97', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('98', '98', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('99', '99', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('100', '100', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('101', '101', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('102', '102', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('103', '103', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('104', '104', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('105', '105', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('106', '106', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('107', '107', '2', '3', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('108', '108', '3', '1', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('109', '109', '3', '1', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('110', '110', '3', '1', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('111', '111', '3', '1', '1', '0', '2017-12-03 01:56:39', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('112', '112', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('113', '113', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('114', '114', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('115', '115', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('116', '116', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('117', '117', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('118', '118', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('119', '119', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('120', '120', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('121', '121', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('122', '122', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('123', '123', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('124', '124', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('125', '125', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('126', '126', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('127', '127', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('128', '128', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('129', '129', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('130', '130', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('131', '131', '3', '1', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('132', '132', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('133', '133', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('134', '134', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('135', '135', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('136', '136', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('137', '137', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('138', '138', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('139', '139', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('140', '140', '3', '2', '1', '0', '2017-12-03 01:56:40', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('141', '141', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('142', '142', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('143', '143', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('144', '144', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('145', '145', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('146', '146', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('147', '147', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('148', '148', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('149', '149', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('150', '150', '3', '2', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('151', '151', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('152', '152', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('153', '153', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('154', '154', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('155', '155', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('156', '156', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('157', '157', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('158', '158', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('159', '159', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('160', '160', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('161', '161', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('162', '162', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('163', '163', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('164', '164', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('165', '165', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('166', '166', '4', '1', '1', '0', '2017-12-03 01:56:41', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('167', '167', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('168', '168', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('169', '169', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('170', '170', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('171', '171', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('172', '172', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('173', '173', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('174', '174', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('175', '175', '4', '1', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('176', '176', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('177', '177', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('178', '178', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('179', '179', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('180', '180', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('181', '181', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('182', '182', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('183', '183', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('184', '184', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('185', '185', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('186', '186', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('187', '187', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('188', '188', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('189', '189', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('190', '190', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('191', '191', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('192', '192', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('193', '193', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('194', '194', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('195', '195', '4', '2', '1', '0', '2017-12-03 01:56:42', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('196', '196', '4', '2', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('197', '197', '4', '2', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('198', '198', '4', '2', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('199', '199', '4', '2', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('200', '200', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('201', '201', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('202', '202', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('203', '203', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('204', '204', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('205', '205', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('206', '206', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('207', '207', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('208', '208', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('209', '209', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('210', '210', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('211', '211', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('212', '212', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('213', '213', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('214', '214', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('215', '215', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('216', '216', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('217', '217', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('218', '218', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('219', '219', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('220', '220', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('221', '221', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('222', '222', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('223', '223', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('224', '224', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('225', '225', '5', '1', '1', '0', '2017-12-03 01:56:43', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('226', '226', '5', '1', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('227', '227', '5', '1', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('228', '228', '5', '1', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('229', '229', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('230', '230', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('231', '231', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('232', '232', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('233', '233', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('234', '234', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('235', '235', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('236', '236', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('237', '237', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('238', '238', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('239', '239', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('240', '240', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('241', '241', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('242', '242', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('243', '243', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('244', '244', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('245', '245', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('246', '246', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('247', '247', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('248', '248', '5', '2', '1', '0', '2017-12-03 01:56:44', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('249', '249', '5', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('250', '250', '5', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('251', '251', '5', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('252', '252', '5', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('253', '253', '5', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('254', '254', '5', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('255', '255', '5', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('256', '256', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('257', '257', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('258', '258', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('259', '259', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('260', '260', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('261', '261', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('262', '262', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('263', '263', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('264', '264', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('265', '265', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('266', '266', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('267', '267', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('268', '268', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('269', '269', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('270', '270', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('271', '271', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('272', '272', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('273', '273', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('274', '274', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('275', '275', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('276', '276', '6', '1', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('277', '277', '6', '2', '1', '0', '2017-12-03 01:56:45', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('278', '278', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('279', '279', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('280', '280', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('281', '281', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('282', '282', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('283', '283', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('284', '284', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('285', '285', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('286', '286', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('287', '287', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('288', '288', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('289', '289', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('290', '290', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('291', '291', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('292', '292', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('293', '293', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('294', '294', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('295', '295', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('296', '296', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);
INSERT INTO `enrollments` VALUES ('297', '297', '6', '2', '1', '0', '2017-12-03 01:56:46', '2017-12-04 00:21:37', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grades
-- ----------------------------
INSERT INTO `grades` VALUES ('1', '1', '2017-07-17 03:53:54', '2017-07-17 03:54:20', '1', '1');
INSERT INTO `grades` VALUES ('2', '2', '2017-07-17 03:53:58', null, '1', null);
INSERT INTO `grades` VALUES ('3', '3', '2017-07-17 03:54:03', null, '1', null);
INSERT INTO `grades` VALUES ('4', '4', '2017-07-17 03:54:06', null, '1', null);
INSERT INTO `grades` VALUES ('5', '5', '2017-07-17 03:54:08', null, '1', null);
INSERT INTO `grades` VALUES ('6', '6', '2017-07-17 03:54:10', null, '1', null);

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `teacherid` int(11) DEFAULT NULL,
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
INSERT INTO `levels` VALUES ('1', '0', '', '', '0', '2017-12-03 01:07:06', '2017-12-03 01:07:44', '1', '1');
INSERT INTO `levels` VALUES ('2', '1', '', '', '1', '2017-12-03 01:07:15', '2017-12-03 01:07:35', '1', '1');
INSERT INTO `levels` VALUES ('3', '2', '', '', '2', '2017-12-03 01:07:24', '2017-12-03 01:07:40', '1', '1');
INSERT INTO `levels` VALUES ('4', '3', '', '', '3', '2017-12-03 01:07:29', '2017-12-03 01:07:48', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of madrasahs
-- ----------------------------
INSERT INTO `madrasahs` VALUES ('1', 'HMBS', '2017-12-03 01:01:02', null, '1', null);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parents
-- ----------------------------

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
INSERT INTO `settings` VALUES ('1', 'HMGS', 'Husayni Madrasah Girls Section', 'logo.png', '2', '1', '2017-07-13 18:37:51', '2017-07-17 04:07:36', '1', '1');

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
  `remarks` text,
  `comments` text,
  `approvedby` int(11) DEFAULT '0',
  `process` int(11) DEFAULT '0',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentremarks
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
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=298 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'Ali Hussein Alibhai', null, null, '1', '19', '1', '2017-12-03 01:30:22', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('2', 'Ali Abbas Dinani', null, null, '1', '20', '1', '2017-12-03 01:30:22', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('3', 'HaiderAli Ahmed Virjee', null, null, '1', '21', '1', '2017-12-03 01:30:22', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('4', 'AbbasAli Jaffer Raza', null, null, '1', '22', '1', '2017-12-03 01:30:22', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('5', 'Mahdi Abbas Ansar ', null, null, '1', '23', '1', '2017-12-03 01:30:22', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('6', 'Mohammed Ayaan Lalji', null, null, '1', '24', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('7', 'Mesam Ali Sayyed*', null, null, '1', '25', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('8', 'Hassan AbbasHussein Rattansi', null, null, '1', '26', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('9', 'Mohammad Mehdi Vakil', null, null, '1', '27', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('10', 'Minhal Misam  Fazal', null, null, '1', '28', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('11', 'Mahdi Imtiyaz GulamHussein', null, null, '1', '29', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('12', 'Taqi Reza Abdi', null, null, '1', '30', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('13', 'Zaheer Abbas Roshan Mehboob', null, null, '1', '31', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('14', 'Hussein Mohammed Datoo', null, null, '1', '32', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('15', 'Mustafa Imran Dewji', null, null, '1', '33', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('16', 'Irfan Ali Mahmood Dewji', null, null, '1', '34', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('17', 'Zameen Elyas Ramin', null, null, '1', '35', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('18', 'Mahdi Abbas Dinani', null, null, '1', '36', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('19', 'Aliasgher MohamedRaza Jivraj', null, null, '1', '37', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('20', 'Hassan Aliasgher Raza Rattansi', null, null, '1', '38', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('21', 'Muhammed Shahid Jaffer', null, null, '1', '39', '1', '2017-12-03 01:30:23', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('22', 'Matteen Hussein Esmail', null, null, '1', '40', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('23', 'Ali Haider Jamal', null, null, '1', '41', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('24', 'Adil Abbas Dewji', null, null, '1', '42', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('25', 'AbbasAli Shabbir Esmail', null, null, '1', '43', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('26', 'AbbasAli Riyaz Meghji', null, null, '1', '44', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('27', 'Ayaan Sameer Jaffer', null, null, '1', '45', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('28', 'Zayyan Zamur Sumar', null, null, '1', '46', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('29', 'Salman Datoo', null, null, '1', '47', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('30', 'Sajjad Muntazir Dinani', null, null, '1', '48', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('31', 'Raza Abbas Mohammed Bharvani', null, null, '1', '49', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('32', 'Mahdi Mohammed Dewji', null, null, '1', '50', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('33', 'Hassan Mazaher Abbas', null, null, '1', '51', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('34', 'Hassan Hadi Mohammed Ali', null, null, '1', '52', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('35', 'Ebrahim Ashraf Sumra', null, null, '1', '53', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('36', 'AliAkbar Shabbir Moledina', null, null, '1', '54', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('37', 'Akram Kumail Moti', null, null, '1', '55', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('38', 'Muntazir Mehboob Visram', null, null, '1', '56', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('39', 'Ali Murtaza Parpia', null, null, '1', '57', '1', '2017-12-03 01:30:24', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('40', 'Abbas Mohamed Dewji', null, null, '1', '58', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('41', 'Minhal Yasin Yusuf', null, null, '1', '59', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('42', 'Sameer Adnan Mahmuod', null, null, '1', '60', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('43', 'Ramzan Mahdi Mohamed', null, null, '1', '61', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('44', 'Alijawad Abbas Alimohdraza', null, null, '1', '62', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('45', 'Armaanhussein Murtaza Moledina', null, null, '1', '63', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('46', 'Salman Viqarhussein Murji', null, null, '1', '64', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('47', 'Mohammedrafiq Arif Jaffer', null, null, '1', '65', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('48', 'Mustafa M.A. Rashid', null, null, '1', '66', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('49', 'Aliakbar Syed', null, null, '1', '67', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('50', 'Mujtaba Kazimraza Kanadia', null, null, '1', '68', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('51', 'Farhan Rahim', null, null, '1', '69', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('52', 'Shaneabbas Sherally Versi', null, null, '1', '70', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('53', 'Hani Azim Shivji', null, null, '1', '71', '1', '2017-12-03 01:31:31', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('54', 'Kazim Mustafa Ladha', null, null, '1', '72', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('55', 'Farhan Eliyas Ramin', null, null, '1', '73', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('56', 'Abbas Ali Khimji', null, null, '1', '74', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('57', 'Abbas Salim Kermali', null, null, '1', '75', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('58', 'Abbasali Mohamedraza Tejani', null, null, '1', '76', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('59', 'Hasan Bhalloo', null, null, '1', '77', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('60', 'Mahdi Abbas Rajani', null, null, '1', '78', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('61', 'Mikaeel Nasirullah Alidina ', null, null, '1', '79', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('62', 'Ali Abdulkassim Remtullah', null, null, '1', '80', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('63', 'Alihasan Nathani', null, null, '1', '81', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('64', 'Maahir Aarif Shariff', null, null, '1', '82', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('65', 'Abbasali Shabbir Sikiladha', null, null, '1', '83', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('66', 'Hussein Mahmood Ladak', null, null, '1', '84', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('67', 'Abbas Ali Damji', null, null, '1', '85', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('68', 'Syed Mustafa Imam', null, null, '1', '86', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('69', 'Mujtaba Abdulrahim', null, null, '1', '87', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('70', 'Syed Ataa Abbas', null, null, '1', '88', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('71', 'Imran Sameer Mawji', null, null, '1', '89', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('72', 'Armaanally Abdulhussein Hasham', null, null, '1', '90', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('73', 'Farhanabbas Fidahussein Merali', null, null, '1', '91', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('74', 'Hussein Mahmood Ladak*', null, null, '1', '92', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('75', 'Kadhim Hassan Hussein', null, null, '1', '93', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('76', 'Mohamed Abbas Iqbal Esmail', null, null, '1', '94', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('77', 'Alimurtaza Mohamed Chandoo ', null, null, '1', '95', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('78', 'Muhammadkumayl Pirmohammed', null, null, '1', '96', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('79', 'Meisum Abbas Basharat Mawji', null, null, '1', '97', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('80', 'Rehaanali Mohammed Jaffer', null, null, '1', '98', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('81', 'Alijawad Altaaf Nanji', null, null, '1', '99', '1', '2017-12-03 01:31:32', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('82', 'Amirhussein Minhal Kassam', null, null, '1', '100', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('83', 'Muhammedmahdi Khaki', null, null, '1', '101', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('84', 'Mahdi Fazleabbas Hussein ', null, null, '1', '102', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('85', 'Hussein Rashid Mohammed', null, null, '1', '103', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('86', 'Mohammedabbas Pirbhai', null, null, '1', '104', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('87', 'Abbas Dilawar Dhalla', null, null, '1', '105', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('88', 'Khalil Kamaal Sheriff', null, null, '1', '106', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('89', 'Mohammed Hasnain Moti', null, null, '1', '107', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('90', 'Mohammedraza Moosa Muraj', null, null, '1', '108', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('91', 'Mujahid Fazleabbas Dungersi', null, null, '1', '109', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('92', 'Zaynul Hussein Datoo', null, null, '1', '110', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('93', 'Alihussain Moustafa Khataw', null, null, '1', '111', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('94', 'Fuad Faiyyaz Alloo', null, null, '1', '112', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('95', 'Mehdi Murtaza Chatoo', null, null, '1', '113', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('96', 'Qaisali Sibtain Karim', null, null, '1', '114', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('97', 'Salman Ismail Khan', null, null, '1', '115', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('98', 'Ali Saleem Jiwan', null, null, '1', '116', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('99', 'Asgher Hussein  Surani', null, null, '1', '117', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('100', 'Mahdi Shabbir Alarakia', null, null, '1', '118', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('101', 'Mohammed Kazim Haji', null, null, '1', '119', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('102', 'Shaheedali H. Datoo*', null, null, '1', '120', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('103', 'Abbasali Hanee Mohamed', null, null, '1', '121', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('104', 'Hassan M Hamza', null, null, '1', '122', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('105', 'Mohamedali F Dhirani', null, null, '1', '123', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('106', 'Mohammed Asgher Datoo*', null, null, '1', '124', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('107', 'Saheel Sameer Modessa', null, null, '1', '125', '1', '2017-12-03 01:31:33', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('108', 'AliRedha Shabbar Kermali', null, null, '1', '126', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('109', 'Hassan Fuad Jaksi', null, null, '1', '127', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('110', 'Husayn Abbas Dinani', null, null, '1', '128', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('111', 'Ali Kamaal Sheriff', null, null, '1', '129', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('112', 'Muhammad Shafiq AbdulRasul', null, null, '1', '130', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('113', 'Abbas Aliasgher Kassam', null, null, '1', '131', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('114', 'AliAbbas Firoz Bandali', null, null, '1', '132', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('115', 'AliHussein Abbas Lalji', null, null, '1', '133', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('116', 'Hadee Mazaher Yusuf', null, null, '1', '134', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('117', 'Subhaan Kassam', null, null, '1', '135', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('118', 'Mohamedabbas Moledina', null, null, '1', '136', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('119', 'AliAsger Hassan Najafi', null, null, '1', '137', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('120', 'AzherAbbas Hasnain Jivraj* (ABS FROM BEG)', null, null, '1', '138', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('121', 'Mohsin Zoulfikar AsgarAly', null, null, '1', '139', '1', '2017-12-03 01:32:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('122', 'RehanAli Hasnein Rattansi* (ABS FROM BEG)', null, null, '1', '140', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('123', 'Zishan Shivji', null, null, '1', '141', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('124', 'Yasir Mohamed Rahim', null, null, '1', '142', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('125', 'Haider Ali Virani', null, null, '1', '143', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('126', 'Hussein MohamedMurtaza Chagani', null, null, '1', '144', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('127', 'Mohammed Asgher Akil', null, null, '1', '145', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('128', 'Azher Abbas', null, null, '1', '146', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('129', 'Mohamed Rashid', null, null, '1', '147', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('130', 'Mujahid Hassanali Alarakhia', null, null, '1', '148', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('131', 'Rehan Ali', null, null, '1', '149', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('132', 'AbbasAli Hasnain Meghji', null, null, '1', '150', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('133', 'HusseinAli NoorelAin Shariff', null, null, '1', '151', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('134', 'Mohammed HaiderAli Sumar*', null, null, '1', '152', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('135', 'Mohammed Hussein Sadiq Bachoo', null, null, '1', '153', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('136', 'Muhammad Jawaad Ridhwaan Pingili', null, null, '1', '154', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('137', 'AliAsgher Naushad Manji', null, null, '1', '155', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('138', 'Hussain Akil Ahmed', null, null, '1', '156', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('139', 'Mohammed Raza Ali Dharamsi', null, null, '1', '157', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('140', 'Hassan Sameer Moledina', null, null, '1', '158', '1', '2017-12-03 01:33:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('141', 'AliAbbas Komail Moti', null, null, '1', '159', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('142', 'Arham Raza Virjee', null, null, '1', '160', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('143', 'Ayaan Aashiq Shariff', null, null, '1', '161', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('144', 'Mohsin Ali Ebrahim Khalfan', null, null, '1', '162', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('145', 'Rihaan Ali Merali', null, null, '1', '163', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('146', 'Ali Mohd Raza Merali', null, null, '1', '164', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('147', 'AliJawad Elyas Ramin', null, null, '1', '165', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('148', 'Mikael Hanif AbdulRasul', null, null, '1', '166', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('149', 'MohamedAbbas Khalil Sherali', null, null, '1', '167', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('150', 'Mudathir Abdul Mohd Jaffer', null, null, '1', '168', '1', '2017-12-03 01:33:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('151', 'Abbasali Kassamali Alarakhia', null, null, '1', '169', '1', '2017-12-03 01:34:08', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('152', 'Ali Mahmood Ladak', null, null, '1', '170', '1', '2017-12-03 01:34:08', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('153', 'Ali Muntazir Sikiladha', null, null, '1', '171', '1', '2017-12-03 01:34:08', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('154', 'Alijawad Mohamedraza Jetha', null, null, '1', '172', '1', '2017-12-03 01:34:08', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('155', 'AlyHusayn Mahmood Manji', null, null, '1', '173', '1', '2017-12-03 01:34:08', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('156', 'Ammarali Aqeel Khaki', null, null, '1', '174', '1', '2017-12-03 01:34:08', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('157', 'Hasnain Salmin Sumar', null, null, '1', '175', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('158', 'Imranali Shafiqali Khaki', null, null, '1', '176', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('159', 'MohammedAbbas Mahmood Versi*', null, null, '1', '177', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('160', 'Mohdhusain Safderali Fazel', null, null, '1', '178', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('161', 'Ammar Shabbir Mohammedali', null, null, '1', '179', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('162', 'Sadiq Afzal Peera', null, null, '1', '180', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('163', 'Syed Mohammad Yusha Rizvi', null, null, '1', '181', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('164', 'Aly Jarrie Abbas', null, null, '1', '182', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('165', 'Mohammed Farhan Pirani', null, null, '1', '183', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('166', 'Raahil Ali Chandoo', null, null, '1', '184', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('167', 'Aashiq Ali Aarif Panjwani', null, null, '1', '185', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('168', 'Abbas Mohamemd Khatau', null, null, '1', '186', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('169', 'Aliakber Sajjad Mohammed', null, null, '1', '187', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('170', 'Hassan Imranali Kassam', null, null, '1', '188', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('171', 'Imaad Sheni Bandali', null, null, '1', '189', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('172', 'Miqdad Mahmood Rajvani', null, null, '1', '190', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('173', 'Muhammad Jawad Alavi', null, null, '1', '191', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('174', 'Abbas Hasnain Taki*', null, null, '1', '192', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('175', 'Muhammad Hadi Mohammedali', null, null, '1', '193', '1', '2017-12-03 01:34:09', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('176', 'Abbas Abdul Virjee', null, null, '1', '194', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('177', 'HassanAli Abbas Hussain', null, null, '1', '195', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('178', 'Hilaal Asif Jeraj', null, null, '1', '196', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('179', 'Imran Aftab Manji', null, null, '1', '197', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('180', 'Mohamed Jawaad Irfan', null, null, '1', '198', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('181', 'MaisamAbbas KalbeHussein Rashid', null, null, '1', '199', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('182', 'Mohammed Jawwad Zevraj*', null, null, '1', '200', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('183', 'Mohammed Razahussein Velani', null, null, '1', '201', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('184', 'Raihaan Aliakber Kassam', null, null, '1', '202', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('185', 'Abbas Jaffer Dharsee', null, null, '1', '203', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('186', 'Abbas Yusuf Nanji', null, null, '1', '204', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('187', 'Ali Muhammed Damji', null, null, '1', '205', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('188', 'Aliabbas Tanveer Khimji', null, null, '1', '206', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('189', 'Sadiq Hussein Sadikali Muraj', null, null, '1', '207', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('190', 'Ammar Hassanali Dhalla', null, null, '1', '208', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('191', 'Murtaza Ali Yousuf Pirmohamad', null, null, '1', '209', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('192', 'Rayyan Ali Esmail', null, null, '1', '210', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('193', 'Zackaria Zoeb Bora', null, null, '1', '211', '1', '2017-12-03 01:34:10', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('194', 'Ali Akber Manji', null, null, '1', '212', '1', '2017-12-03 01:34:11', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('195', 'Aliraza Abbas SadikAli', null, null, '1', '213', '1', '2017-12-03 01:34:11', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('196', 'Farhan Nasirullah Alidina', null, null, '1', '214', '1', '2017-12-03 01:34:11', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('197', 'Hasnein Murtaza Nazarali', null, null, '1', '215', '1', '2017-12-03 01:34:11', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('198', 'Miqdad Mohamedarif Suleman', null, null, '1', '216', '1', '2017-12-03 01:34:11', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('199', 'Rehaan Zulfikar Ismail', null, null, '1', '217', '1', '2017-12-03 01:34:11', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('200', 'Abbas Murad Mohsin', null, null, '1', '218', '1', '2017-12-03 01:34:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('201', 'Hassan Murtaza Hassan', null, null, '1', '219', '1', '2017-12-03 01:34:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('202', 'Kumail Iqbal Ramin', null, null, '1', '220', '1', '2017-12-03 01:34:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('203', 'Mehdi Riyaz Sheriff', null, null, '1', '221', '1', '2017-12-03 01:34:59', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('204', 'Mohammedtaqi Sameerali Virani', null, null, '1', '222', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('205', 'Sajjadali Kazim Juma', null, null, '1', '223', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('206', 'Ali Sajjad Gulamali', null, null, '1', '224', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('207', 'Aliasgher Rizwan Manji', null, null, '1', '225', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('208', 'Hadee Mohamed Panjwani', null, null, '1', '226', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('209', 'Hussain Abbas Hamza', null, null, '1', '227', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('210', 'Moiz Muffadal Abdullah', null, null, '1', '228', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('211', 'Kumail Iqbal Ramim', null, null, '1', '229', '1', '2017-12-03 01:35:00', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('212', 'Abbas Altaf Hussein Yusuf', null, null, '1', '230', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('213', 'Alinaqi Fazal-Abbas Rajani', null, null, '1', '231', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('214', 'Aunali Aliasger Fazal', null, null, '1', '232', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('215', 'Mohammed Mehdi Nazerali', null, null, '1', '233', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('216', 'Mustafa Mazaher Bandali', null, null, '1', '234', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('217', 'Maher Nasir Jaffer', null, null, '1', '235', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('218', 'Sadiq Mohammed Lakha', null, null, '1', '236', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('219', 'Mohamed Hasnain Meghji', null, null, '1', '237', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('220', 'Muhammad Haiderali Jaffer', null, null, '1', '238', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('221', 'Zainaabbas Aliraza Manji', null, null, '1', '239', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('222', 'Faheem Fazleabbas Dungersi', null, null, '1', '240', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('223', 'Shahzebali Shakeel Rabani', null, null, '1', '241', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('224', 'Ali Akber Mohamed Karim', null, null, '1', '242', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('225', 'Ali Asgher Hussain Dewji', null, null, '1', '243', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('226', 'Syed Muhammad Abbas Rizvi', null, null, '1', '244', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('227', 'Ali Zuheir Mehdi Pirmohamed', null, null, '1', '245', '1', '2017-12-03 01:35:01', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('228', 'Zainul Abedin Haiderali H Gulamali*', null, null, '1', '246', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('229', 'Ahsan Kazim Rashid', null, null, '1', '247', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('230', 'Ali Haider Gulamabbas Hassan', null, null, '1', '248', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('231', 'Hadee Mohammed Fayyaz Jaffer', null, null, '1', '249', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('232', 'Maysam Mohamed Shamji', null, null, '1', '250', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('233', 'Syed Shazan Saeed Rizvi', null, null, '1', '251', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('234', 'Mohammedabbas Salmin Sumar', null, null, '1', '252', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('235', 'Zainul Hasnein Bandali', null, null, '1', '253', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('236', 'Sahil Fazleabbas Safdar', null, null, '1', '254', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('237', 'Ali Sameer Muhamad', null, null, '1', '255', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('238', 'Ali Alkarim Damani', null, null, '1', '256', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('239', 'Eliya Fadi Amro', null, null, '1', '257', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('240', 'Sajjadali Riyaz Dewji', null, null, '1', '258', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('241', 'Mehdi Elyas Ramin', null, null, '1', '259', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('242', 'Meisam Ali Chandoo', null, null, '1', '260', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('243', 'Ali Mohamed Pardhan', null, null, '1', '261', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('244', 'Abbas Mohammed Dewji', null, null, '1', '262', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('245', 'Mohammed Mehdi Punjwani', null, null, '1', '263', '1', '2017-12-03 01:35:02', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('246', 'Jawad Jabir Habib', null, null, '1', '264', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('247', 'Nabeel Riyaz Takim', null, null, '1', '265', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('248', 'Mohamedabbas Aunali Rashid', null, null, '1', '266', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('249', 'Murtaza Hasan Rizvi', null, null, '1', '267', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('250', 'Gulamhussein Hasnain Pirbhai', null, null, '1', '268', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('251', 'Farhan Firoz Dhalla', null, null, '1', '269', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('252', 'Shaneb Al-Junaid Hasham', null, null, '1', '270', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('253', 'Hassan Mohamed Datoo', null, null, '1', '271', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('254', 'Kumail Asgher Bandali', null, null, '1', '272', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('255', 'Arif Abdulnasser Okera', null, null, '1', '273', '1', '2017-12-03 01:35:03', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('256', 'Ali Hasnain Meghji', null, null, '1', '274', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('257', 'Aliakbar Mohammadraza A Panjwani', null, null, '1', '275', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('258', 'Aliasgher Shabbar Mussa', null, null, '1', '276', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('259', 'Aliridha Amir Abdulrasul', null, null, '1', '277', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('260', 'MohamedMohsin Akber Versi', null, null, '1', '278', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('261', 'Sajjad Virjee', null, null, '1', '279', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('262', 'Qaimali Shakil Dharamsi', null, null, '1', '280', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('263', 'Haiderali Pirmohamed', null, null, '1', '281', '1', '2017-12-03 01:35:52', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('264', 'Hassan Mohamed Dhalla', null, null, '1', '282', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('265', 'Iqbal Kausarali Rajani', null, null, '1', '283', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('266', 'Salmaan Aarif Shariff', null, null, '1', '284', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('267', 'Muhammedhassan Irfanali Jivraj', null, null, '1', '285', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('268', 'Aliabbas Hasnein Noorali', null, null, '1', '286', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('269', 'Mohamed Kashif Damani', null, null, '1', '287', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('270', 'Hasnen Rizwan Ismail', null, null, '1', '288', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('271', 'Mohammed Kazeem Mirza', null, null, '1', '289', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('272', 'Zulfikarali M. Shermohd', null, null, '1', '290', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('273', 'Mahdi Fuad Jaksi', null, null, '1', '291', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('274', 'Aadil Ebrahim Ali', null, null, '1', '292', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('275', 'Mudatthir Hussein Jaffer', null, null, '1', '293', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('276', 'Sadiq Sajjad Mohammed', null, null, '1', '294', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('277', 'Aliabid Rizwan Sheriff', null, null, '1', '295', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('278', 'Muhammed Hasnain Pyarali', null, null, '1', '296', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('279', 'Subhan Mohammad Mahmoud', null, null, '1', '297', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('280', 'Sadiq Shabbir Meghji', null, null, '1', '298', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('281', 'Imran Mahmood Damji', null, null, '1', '299', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('282', 'Haani Jaabir Rajani ', null, null, '1', '300', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('283', 'Sakalayn Mohsin Versi', null, null, '1', '301', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('284', 'Alijawad Aliraza Rajani', null, null, '1', '302', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('285', 'Kazim Haider', null, null, '1', '303', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('286', 'Mustafa Abdulrahim', null, null, '1', '304', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('287', 'Aliasgher Muraj*', null, null, '1', '305', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('288', 'Hajji Mohamed Zowange', null, null, '1', '306', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('289', 'Sahil Abbas Bhojani', null, null, '1', '307', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('290', 'Aasim Kaiz Haji', null, null, '1', '308', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('291', 'Mohamed M. Hasham', null, null, '1', '309', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('292', 'Ali Jawad Mussa', null, null, '1', '310', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('293', 'Miqdad Fazleabbas Hussein', null, null, '1', '311', '1', '2017-12-03 01:35:53', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('294', 'Aliabbas Hasnain Mussa', null, null, '1', '312', '1', '2017-12-03 01:35:54', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('295', 'Mohammedhussein Zuheir Bachoo', null, null, '1', '313', '1', '2017-12-03 01:35:54', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('296', 'Salman Mohammedraza Nagji', null, null, '1', '314', '1', '2017-12-03 01:35:54', '2017-12-03 01:40:22', null, null);
INSERT INTO `students` VALUES ('297', 'Jawaad Mohamedgulam Pyarali', null, null, '1', '315', '1', '2017-12-03 01:35:54', '2017-12-03 01:40:22', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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

-- ----------------------------
-- Table structure for teacherallocations
-- ----------------------------
DROP TABLE IF EXISTS `teacherallocations`;
CREATE TABLE `teacherallocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enrollid` int(11) DEFAULT NULL,
  `groupid` int(11) DEFAULT NULL,
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacherallocations
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO `teachers` VALUES ('1', 'FATEMA ALIMOHAMED', '', '', '1', '4', '', '2', '2017-12-03 01:04:15', '2017-12-03 01:08:36', '1', '1');
INSERT INTO `teachers` VALUES ('2', 'FATEMA MULLA', '', '', '1', '4', '', '3', '2017-12-03 01:08:57', null, '1', null);
INSERT INTO `teachers` VALUES ('3', 'SUHAILA KHALFAN', '', '', '1', '4', '', '4', '2017-12-03 01:09:36', null, '1', null);
INSERT INTO `teachers` VALUES ('4', 'ZAKIYA HASSAN', '', '', '1', '4', '', '5', '2017-12-03 01:09:55', null, '1', null);
INSERT INTO `teachers` VALUES ('5', 'ZAHRA KARMALI', '', '', '1', '4', '', '6', '2017-12-03 01:10:14', null, '1', null);
INSERT INTO `teachers` VALUES ('6', 'HASINA DHALLA', '', '', '1', '4', '', '7', '2017-12-03 01:10:34', null, '1', null);
INSERT INTO `teachers` VALUES ('7', 'ZEENAT SOMJI', '', '', '1', '4', '', '8', '2017-12-03 01:10:51', null, '1', null);
INSERT INTO `teachers` VALUES ('8', 'MOHADISSA DHALLA', '', '', '1', '4', '', '9', '2017-12-03 01:11:06', null, '1', null);
INSERT INTO `teachers` VALUES ('9', 'KHUDAIJA MEGHJI', '', '', '1', '4', '', '10', '2017-12-03 01:11:26', null, '1', null);
INSERT INTO `teachers` VALUES ('10', 'MAALIM MIQDAAD', '', '', '1', '4', '', '11', '2017-12-03 01:11:40', null, '1', null);
INSERT INTO `teachers` VALUES ('11', 'MAALIM DAUD', '', '', '1', '4', '', '12', '2017-12-03 01:11:52', null, '1', null);
INSERT INTO `teachers` VALUES ('12', 'MAALIM HASSAN', '', '', '1', '4', '', '13', '2017-12-03 01:12:28', null, '1', null);
INSERT INTO `teachers` VALUES ('13', 'MAALIM ABDULAZIZ', '', '', '1', '4', '', '14', '2017-12-03 01:12:43', null, '1', null);
INSERT INTO `teachers` VALUES ('14', 'MAALIM YASSIN', '', '', '1', '4', '', '15', '2017-12-03 01:13:04', null, '1', null);
INSERT INTO `teachers` VALUES ('15', 'KHADIJA ALLY', '', '', '1', '4', '', '16', '2017-12-03 01:13:16', null, '1', null);
INSERT INTO `teachers` VALUES ('16', 'MAALIM IDDI', '', '', '1', '4', '', '17', '2017-12-03 01:13:26', null, '1', null);
INSERT INTO `teachers` VALUES ('17', 'M. MAISAM VERSI', '', '', '1', '4', '', '18', '2017-12-03 01:13:38', null, '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of terms
-- ----------------------------
INSERT INTO `terms` VALUES ('1', 'Term 1', '2017-12-03 01:02:00', null, '1', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `color` varchar(255) DEFAULT 'olive',
  `status` int(11) DEFAULT '1',
  `doc` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `dom` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createdby` int(11) DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'olive', '1', '2017-12-03 00:40:46', '2017-12-03 22:45:46', null, null);
INSERT INTO `users` VALUES ('2', 'falimohamed', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:04:15', null, null, null);
INSERT INTO `users` VALUES ('3', 'fmulla', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:08:57', null, null, null);
INSERT INTO `users` VALUES ('4', 'skhalfan', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:09:36', null, null, null);
INSERT INTO `users` VALUES ('5', 'zhassan', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:09:55', null, null, null);
INSERT INTO `users` VALUES ('6', 'zkarmali', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:10:14', null, null, null);
INSERT INTO `users` VALUES ('7', 'hdhalla', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:10:34', null, null, null);
INSERT INTO `users` VALUES ('8', 'zsomji', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:10:51', null, null, null);
INSERT INTO `users` VALUES ('9', 'mdhalla', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:11:06', null, null, null);
INSERT INTO `users` VALUES ('10', 'kmeghji', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:11:26', null, null, null);
INSERT INTO `users` VALUES ('11', 'mmiqdaad', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:11:39', null, null, null);
INSERT INTO `users` VALUES ('12', 'mdaud', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:11:52', null, null, null);
INSERT INTO `users` VALUES ('13', 'mhassan', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:12:28', null, null, null);
INSERT INTO `users` VALUES ('14', 'mabdulaziz', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:12:43', null, null, null);
INSERT INTO `users` VALUES ('15', 'myassin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:13:04', null, null, null);
INSERT INTO `users` VALUES ('16', 'kally', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:13:16', null, null, null);
INSERT INTO `users` VALUES ('17', 'middi', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:13:26', null, null, null);
INSERT INTO `users` VALUES ('18', 'mversi', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'blue', '1', '2017-12-03 01:13:38', null, null, null);
INSERT INTO `users` VALUES ('19', 'alihusseinalibhai', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('20', 'aliabbasdinani', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('21', 'haideraliahmedvirjee', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('22', 'abbasalijafferraza', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('23', 'mahdiabbasansar', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('24', 'mohammedayaanlalji', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('25', 'mesamalisayyed*', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('26', 'hassanabbashusseinrattansi', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('27', 'mohammadmehdivakil', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('28', 'minhalmisamfazal', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('29', 'mahdiimtiyazgulamhussein', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('30', 'taqirezaabdi', '', 'blue', '1', '2017-12-03 01:27:25', null, null, null);
INSERT INTO `users` VALUES ('31', 'zaheerabbasroshanmehboob', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('32', 'husseinmohammeddatoo', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('33', 'mustafaimrandewji', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('34', 'irfanalimahmooddewji', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('35', 'zameenelyasramin', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('36', 'mahdiabbasdinani', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('37', 'aliasghermohamedrazajivraj', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('38', 'hassanaliasgherrazarattansi', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('39', 'muhammedshahidjaffer', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('40', 'matteenhusseinesmail', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('41', 'alihaiderjamal', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('42', 'adilabbasdewji', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('43', 'abbasalishabbiresmail', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('44', 'abbasaliriyazmeghji', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('45', 'ayaansameerjaffer', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('46', 'zayyanzamursumar', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('47', 'salmandatoo', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('48', 'sajjadmuntazirdinani', '', 'blue', '1', '2017-12-03 01:27:26', null, null, null);
INSERT INTO `users` VALUES ('49', 'razaabbasmohammedbharvani', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('50', 'mahdimohammeddewji', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('51', 'hassanmazaherabbas', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('52', 'hassanhadimohammedali', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('53', 'ebrahimashrafsumra', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('54', 'aliakbarshabbirmoledina', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('55', 'akramkumailmoti', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('56', 'muntazirmehboobvisram', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('57', 'alimurtazaparpia', '', 'blue', '1', '2017-12-03 01:27:27', null, null, null);
INSERT INTO `users` VALUES ('58', 'abbasmohameddewji', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('59', 'minhalyasinyusuf', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('60', 'sameeradnanmahmuod', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('61', 'ramzanmahdimohamed', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('62', 'alijawadabbasalimohdraza', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('63', 'armaanhusseinmurtazamoledina', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('64', 'salmanviqarhusseinmurji', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('65', 'mohammedrafiqarifjaffer', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('66', 'mustafam.a.rashid', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('67', 'aliakbarsyed', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('68', 'mujtabakazimrazakanadia', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('69', 'farhanrahim', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('70', 'shaneabbassherallyversi', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('71', 'haniazimshivji', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('72', 'kazimmustafaladha', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('73', 'farhaneliyasramin', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('74', 'abbasalikhimji', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('75', 'abbassalimkermali', '', 'blue', '1', '2017-12-03 01:31:28', null, null, null);
INSERT INTO `users` VALUES ('76', 'abbasalimohamedrazatejani', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('77', 'hasanbhalloo', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('78', 'mahdiabbasrajani', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('79', 'mikaeelnasirullahalidina', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('80', 'aliabdulkassimremtullah', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('81', 'alihasannathani', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('82', 'maahiraarifshariff', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('83', 'abbasalishabbirsikiladha', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('84', 'husseinmahmoodladak', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('85', 'abbasalidamji', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('86', 'syedmustafaimam', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('87', 'mujtabaabdulrahim', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('88', 'syedataaabbas', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('89', 'imransameermawji', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('90', 'armaanallyabdulhusseinhasham', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('91', 'farhanabbasfidahusseinmerali', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('92', 'husseinmahmoodladak*', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('93', 'kadhimhassanhussein', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('94', 'mohamedabbasiqbalesmail', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('95', 'alimurtazamohamedchandoo', '', 'blue', '1', '2017-12-03 01:31:29', null, null, null);
INSERT INTO `users` VALUES ('96', 'muhammadkumaylpirmohammed', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('97', 'meisumabbasbasharatmawji', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('98', 'rehaanalimohammedjaffer', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('99', 'alijawadaltaafnanji', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('100', 'amirhusseinminhalkassam', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('101', 'muhammedmahdikhaki', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('102', 'mahdifazleabbashussein', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('103', 'husseinrashidmohammed', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('104', 'mohammedabbaspirbhai', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('105', 'abbasdilawardhalla', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('106', 'khalilkamaalsheriff', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('107', 'mohammedhasnainmoti', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('108', 'mohammedrazamoosamuraj', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('109', 'mujahidfazleabbasdungersi', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('110', 'zaynulhusseindatoo', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('111', 'alihussainmoustafakhataw', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('112', 'fuadfaiyyazalloo', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('113', 'mehdimurtazachatoo', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('114', 'qaisalisibtainkarim', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('115', 'salmanismailkhan', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('116', 'alisaleemjiwan', '', 'blue', '1', '2017-12-03 01:31:30', null, null, null);
INSERT INTO `users` VALUES ('117', 'asgherhusseinsurani', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('118', 'mahdishabbiralarakia', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('119', 'mohammedkazimhaji', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('120', 'shaheedalih.datoo*', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('121', 'abbasalihaneemohamed', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('122', 'hassanmhamza', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('123', 'mohamedalifdhirani', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('124', 'mohammedasgherdatoo*', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('125', 'saheelsameermodessa', '', 'blue', '1', '2017-12-03 01:31:31', null, null, null);
INSERT INTO `users` VALUES ('126', 'aliredhashabbarkermali', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('127', 'hassanfuadjaksi', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('128', 'husaynabbasdinani', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('129', 'alikamaalsheriff', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('130', 'muhammadshafiqabdulrasul', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('131', 'abbasaliasgherkassam', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('132', 'aliabbasfirozbandali', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('133', 'alihusseinabbaslalji', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('134', 'hadeemazaheryusuf', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('135', 'subhaankassam', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('136', 'mohamedabbasmoledina', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('137', 'aliasgerhassannajafi', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('138', 'azherabbashasnainjivraj*(absfrombeg)', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('139', 'mohsinzoulfikarasgaraly', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('140', 'rehanalihasneinrattansi*(absfrombeg)', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('141', 'zishanshivji', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('142', 'yasirmohamedrahim', '', 'blue', '1', '2017-12-03 01:32:57', null, null, null);
INSERT INTO `users` VALUES ('143', 'haideralivirani', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('144', 'husseinmohamedmurtazachagani', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('145', 'mohammedasgherakil', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('146', 'azherabbas', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('147', 'mohamedrashid', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('148', 'mujahidhassanalialarakhia', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('149', 'rehanali', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('150', 'abbasalihasnainmeghji', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('151', 'husseinalinoorelainshariff', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('152', 'mohammedhaideralisumar*', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('153', 'mohammedhusseinsadiqbachoo', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('154', 'muhammadjawaadridhwaanpingili', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('155', 'aliasghernaushadmanji', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('156', 'hussainakilahmed', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('157', 'mohammedrazaalidharamsi', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('158', 'hassansameermoledina', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('159', 'aliabbaskomailmoti', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('160', 'arhamrazavirjee', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('161', 'ayaanaashiqshariff', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('162', 'mohsinaliebrahimkhalfan', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('163', 'rihaanalimerali', '', 'blue', '1', '2017-12-03 01:32:58', null, null, null);
INSERT INTO `users` VALUES ('164', 'alimohdrazamerali', '', 'blue', '1', '2017-12-03 01:32:59', null, null, null);
INSERT INTO `users` VALUES ('165', 'alijawadelyasramin', '', 'blue', '1', '2017-12-03 01:32:59', null, null, null);
INSERT INTO `users` VALUES ('166', 'mikaelhanifabdulrasul', '', 'blue', '1', '2017-12-03 01:32:59', null, null, null);
INSERT INTO `users` VALUES ('167', 'mohamedabbaskhalilsherali', '', 'blue', '1', '2017-12-03 01:32:59', null, null, null);
INSERT INTO `users` VALUES ('168', 'mudathirabdulmohdjaffer', '', 'blue', '1', '2017-12-03 01:32:59', null, null, null);
INSERT INTO `users` VALUES ('169', 'abbasalikassamalialarakhia', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('170', 'alimahmoodladak', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('171', 'alimuntazirsikiladha', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('172', 'alijawadmohamedrazajetha', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('173', 'alyhusaynmahmoodmanji', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('174', 'ammaraliaqeelkhaki', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('175', 'hasnainsalminsumar', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('176', 'imranalishafiqalikhaki', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('177', 'mohammedabbasmahmoodversi*', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('178', 'mohdhusainsafderalifazel', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('179', 'ammarshabbirmohammedali', '', 'blue', '1', '2017-12-03 01:34:06', null, null, null);
INSERT INTO `users` VALUES ('180', 'sadiqafzalpeera', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('181', 'syedmohammadyusharizvi', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('182', 'alyjarrieabbas', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('183', 'mohammedfarhanpirani', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('184', 'raahilalichandoo', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('185', 'aashiqaliaarifpanjwani', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('186', 'abbasmohamemdkhatau', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('187', 'aliakbersajjadmohammed', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('188', 'hassanimranalikassam', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('189', 'imaadshenibandali', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('190', 'miqdadmahmoodrajvani', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('191', 'muhammadjawadalavi', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('192', 'abbashasnaintaki*', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('193', 'muhammadhadimohammedali', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('194', 'abbasabdulvirjee', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('195', 'hassanaliabbashussain', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('196', 'hilaalasifjeraj', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('197', 'imranaftabmanji', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('198', 'mohamedjawaadirfan', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('199', 'maisamabbaskalbehusseinrashid', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('200', 'mohammedjawwadzevraj*', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('201', 'mohammedrazahusseinvelani', '', 'blue', '1', '2017-12-03 01:34:07', null, null, null);
INSERT INTO `users` VALUES ('202', 'raihaanaliakberkassam', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('203', 'abbasjafferdharsee', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('204', 'abbasyusufnanji', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('205', 'alimuhammeddamji', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('206', 'aliabbastanveerkhimji', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('207', 'sadiqhusseinsadikalimuraj', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('208', 'ammarhassanalidhalla', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('209', 'murtazaaliyousufpirmohamad', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('210', 'rayyanaliesmail', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('211', 'zackariazoebbora', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('212', 'aliakbermanji', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('213', 'alirazaabbassadikali', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('214', 'farhannasirullahalidina', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('215', 'hasneinmurtazanazarali', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('216', 'miqdadmohamedarifsuleman', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('217', 'rehaanzulfikarismail', '', 'blue', '1', '2017-12-03 01:34:08', null, null, null);
INSERT INTO `users` VALUES ('218', 'abbasmuradmohsin', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('219', 'hassanmurtazahassan', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('220', 'kumailiqbalramin', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('221', 'mehdiriyazsheriff', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('222', 'mohammedtaqisameeralivirani', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('223', 'sajjadalikazimjuma', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('224', 'alisajjadgulamali', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('225', 'aliasgherrizwanmanji', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('226', 'hadeemohamedpanjwani', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('227', 'hussainabbashamza', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('228', 'moizmuffadalabdullah', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('229', 'kumailiqbalramim', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('230', 'abbasaltafhusseinyusuf', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('231', 'alinaqifazal-abbasrajani', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('232', 'aunalialiasgerfazal', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('233', 'mohammedmehdinazerali', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('234', 'mustafamazaherbandali', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('235', 'mahernasirjaffer', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('236', 'sadiqmohammedlakha', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('237', 'mohamedhasnainmeghji', '', 'blue', '1', '2017-12-03 01:34:57', null, null, null);
INSERT INTO `users` VALUES ('238', 'muhammadhaideralijaffer', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('239', 'zainaabbasalirazamanji', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('240', 'faheemfazleabbasdungersi', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('241', 'shahzebalishakeelrabani', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('242', 'aliakbermohamedkarim', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('243', 'aliasgherhussaindewji', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('244', 'syedmuhammadabbasrizvi', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('245', 'alizuheirmehdipirmohamed', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('246', 'zainulabedinhaideralihgulamali*', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('247', 'ahsankazimrashid', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('248', 'alihaidergulamabbashassan', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('249', 'hadeemohammedfayyazjaffer', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('250', 'maysammohamedshamji', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('251', 'syedshazansaeedrizvi', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('252', 'mohammedabbassalminsumar', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('253', 'zainulhasneinbandali', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('254', 'sahilfazleabbassafdar', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('255', 'alisameermuhamad', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('256', 'alialkarimdamani', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('257', 'eliyafadiamro', '', 'blue', '1', '2017-12-03 01:34:58', null, null, null);
INSERT INTO `users` VALUES ('258', 'sajjadaliriyazdewji', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('259', 'mehdielyasramin', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('260', 'meisamalichandoo', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('261', 'alimohamedpardhan', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('262', 'abbasmohammeddewji', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('263', 'mohammedmehdipunjwani', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('264', 'jawadjabirhabib', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('265', 'nabeelriyaztakim', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('266', 'mohamedabbasaunalirashid', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('267', 'murtazahasanrizvi', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('268', 'gulamhusseinhasnainpirbhai', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('269', 'farhanfirozdhalla', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('270', 'shanebal-junaidhasham', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('271', 'hassanmohameddatoo', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('272', 'kumailasgherbandali', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('273', 'arifabdulnasserokera', '', 'blue', '1', '2017-12-03 01:34:59', null, null, null);
INSERT INTO `users` VALUES ('274', 'alihasnainmeghji', '', 'blue', '1', '2017-12-03 01:35:50', null, null, null);
INSERT INTO `users` VALUES ('275', 'aliakbarmohammadrazaapanjwani', '', 'blue', '1', '2017-12-03 01:35:50', null, null, null);
INSERT INTO `users` VALUES ('276', 'aliasghershabbarmussa', '', 'blue', '1', '2017-12-03 01:35:50', null, null, null);
INSERT INTO `users` VALUES ('277', 'aliridhaamirabdulrasul', '', 'blue', '1', '2017-12-03 01:35:50', null, null, null);
INSERT INTO `users` VALUES ('278', 'mohamedmohsinakberversi', '', 'blue', '1', '2017-12-03 01:35:50', null, null, null);
INSERT INTO `users` VALUES ('279', 'sajjadvirjee', '', 'blue', '1', '2017-12-03 01:35:50', null, null, null);
INSERT INTO `users` VALUES ('280', 'qaimalishakildharamsi', '', 'blue', '1', '2017-12-03 01:35:50', null, null, null);
INSERT INTO `users` VALUES ('281', 'haideralipirmohamed', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('282', 'hassanmohameddhalla', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('283', 'iqbalkausaralirajani', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('284', 'salmaanaarifshariff', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('285', 'muhammedhassanirfanalijivraj', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('286', 'aliabbashasneinnoorali', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('287', 'mohamedkashifdamani', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('288', 'hasnenrizwanismail', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('289', 'mohammedkazeemmirza', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('290', 'zulfikaralim.shermohd', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('291', 'mahdifuadjaksi', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('292', 'aadilebrahimali', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('293', 'mudatthirhusseinjaffer', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('294', 'sadiqsajjadmohammed', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('295', 'aliabidrizwansheriff', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('296', 'muhammedhasnainpyarali', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('297', 'subhanmohammadmahmoud', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('298', 'sadiqshabbirmeghji', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('299', 'imranmahmooddamji', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('300', 'haanijaabirrajani', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('301', 'sakalaynmohsinversi', '', 'blue', '1', '2017-12-03 01:35:51', null, null, null);
INSERT INTO `users` VALUES ('302', 'alijawadalirazarajani', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('303', 'kazimhaider', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('304', 'mustafaabdulrahim', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('305', 'aliasghermuraj*', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('306', 'hajjimohamedzowange', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('307', 'sahilabbasbhojani', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('308', 'aasimkaizhaji', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('309', 'mohamedm.hasham', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('310', 'alijawadmussa', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('311', 'miqdadfazleabbashussein', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('312', 'aliabbashasnainmussa', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('313', 'mohammedhusseinzuheirbachoo', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('314', 'salmanmohammedrazanagji', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);
INSERT INTO `users` VALUES ('315', 'jawaadmohamedgulampyarali', '', 'blue', '1', '2017-12-03 01:35:52', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of years
-- ----------------------------
INSERT INTO `years` VALUES ('1', '2016', '2017-12-03 01:02:07', null, '1', null);
INSERT INTO `years` VALUES ('2', '2017', '2017-12-03 01:02:16', null, '1', null);
