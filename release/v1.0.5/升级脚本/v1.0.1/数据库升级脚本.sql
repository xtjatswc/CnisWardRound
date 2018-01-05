
CREATE UNIQUE INDEX `Disease_DBKEY_Unique` ON `diseaseicd10`(`Disease_DBKEY`) USING BTREE ;
CREATE INDEX `SysCode_Normal` ON `syscode`(`SysCode`) USING BTREE ;
CREATE INDEX `SystemCodeTypeName_Normal` ON `syscode`(`SystemCodeTypeName`) USING BTREE ;

-- ----------------------------
-- Table structure for questiondetailtype
-- ----------------------------
DROP TABLE IF EXISTS `questiondetailtype`;
CREATE TABLE `questiondetailtype` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `propertyName` varchar(30) DEFAULT NULL,
  `propertyValue` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `questiondetailtype_propertyValue_unique` (`propertyValue`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16;

-- ----------------------------
-- Records of questiondetailtype
-- ----------------------------
INSERT INTO `questiondetailtype` VALUES ('1', 'NRS2002', '1', '1');
INSERT INTO `questiondetailtype` VALUES ('2', 'PG-SGA', '2', '2');