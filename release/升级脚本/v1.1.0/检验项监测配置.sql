/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : cnis

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2016-07-14 09:09:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for searchpageconfig
-- ----------------------------
DROP TABLE IF EXISTS `searchpageconfig`;
CREATE TABLE `searchpageconfig` (
  `search_DBKEY` int(11) NOT NULL AUTO_INCREMENT,
  `link_DBKEY` int(11) DEFAULT NULL,
  `upperLimit` varchar(255) DEFAULT NULL,
  `lowerLimit` varchar(255) DEFAULT NULL,
  `showName` varchar(255) DEFAULT NULL,
  `recommended` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`search_DBKEY`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf16;

-- ----------------------------
-- Records of searchpageconfig
-- ----------------------------
INSERT INTO `searchpageconfig` VALUES ('1', '51', '20', '10', 'K', '10~20');
INSERT INTO `searchpageconfig` VALUES ('2', '53', '15', '10', 'P', '10~15');
INSERT INTO `searchpageconfig` VALUES ('3', '8', '10', '5', '血小板计数（PLT）', '5~10');
INSERT INTO `searchpageconfig` VALUES ('4', '25', '20', '10', '甘油三脂 mmol/L', '10~20');
INSERT INTO `searchpageconfig` VALUES ('5', '19', '20', '10', '血清前白蛋白 mg/dL', '10~20');
INSERT INTO `searchpageconfig` VALUES ('6', '6', '20', '10', '平均红细胞血红蛋白含量（MCH）', '10~20');
