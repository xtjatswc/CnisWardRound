/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50536
Source Host           : 127.0.0.1:3306
Source Database       : cnis_hx

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2016-01-27 16:24:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for optiondetail
-- ----------------------------
DROP TABLE IF EXISTS `optiondetail`;
CREATE TABLE `optiondetail` (
  `QuestionOption_DBKey` int(11) NOT NULL COMMENT '问题选项DBKey',
  `QuestionnaireQuestion_DBKey` int(11) DEFAULT NULL COMMENT '问卷问题_DBKey',
  `OptionCode` varchar(32) DEFAULT NULL COMMENT '选项编号',
  `OptionOrderIndex` int(11) DEFAULT NULL COMMENT '选项序号',
  `OptionContent` varchar(512) DEFAULT NULL COMMENT '选项详细',
  `OptionPoint` int(11) DEFAULT NULL COMMENT '选项分值',
  `CreateBy` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `CreateProgram` varchar(32) DEFAULT NULL COMMENT '创建程序',
  `CreateIP` varchar(32) DEFAULT NULL COMMENT '创建人IP',
  `UpdateBy` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UpdateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdateProgram` varchar(32) DEFAULT NULL COMMENT '更新程序',
  `UpdateIP` varchar(32) DEFAULT NULL COMMENT '更新人IP',
  PRIMARY KEY (`QuestionOption_DBKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='调查问题选项';

-- ----------------------------
-- Records of optiondetail
-- ----------------------------
INSERT INTO `optiondetail` VALUES ('1', '1', '1', '1', '骨盆骨折 或者 慢性病患者合并有以下疾病：肝硬化、慢性阻塞性肺病、长期血液透析、糖尿病、肿瘤 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('2', '1', '2', '2', '腹部重大手术、中风、重症肺炎、血液系统肿瘤 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('3', '1', '3', '3', '颅脑损伤、骨髓抑制、加护病患（APACHE>10分） （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('4', '2', '1', '1', '正常营养状态 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('5', '2', '2', '2', '3个月内体重减轻>5%或最近1个星期进食量（与需要量相比）减少20%~50% （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('6', '2', '3', '3', '2个月内体重减轻>5%或最近1个星期进食量（与需要量相比）减少50%~75%或BMI18.5~20.5 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('7', '2', '4', '4', '1个月内体重减轻>5%（或3个月内减轻>15%）或最近1个星期进食量（与需要量相比）减少70%~100%或BMI＜18.5（或血清白蛋白＜35g/L） （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('8', '3', '1', '1', '否 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('9', '3', '2', '2', '是 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('10', '4', '1', '1', '1个月体重丢失10%或6个月体重丢失20% （4分）', '4', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('11', '4', '2', '2', '1个月体重丢失5-9.9%或6个月体重丢失10-19.9% （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('12', '4', '3', '3', '1个月体重丢失3-4.9%或6个月体重丢失6-9.9% （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('13', '4', '4', '4', '1个月体重丢失2-2.9%或6个月体重丢失2-5.9% （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('14', '4', '5', '5', '1个月体重丢失0-1.9%或6个月体重丢失0-1.9% （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('15', '5', '1', '1', '减轻 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('16', '5', '2', '2', '没变化 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('17', '5', '3', '3', '增加 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('18', '6', '1', '1', '没变化 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('19', '6', '2', '2', '比以往多 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('20', '6', '3', '3', '比以往少 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('21', '7', '1', '1', '正常饮食 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('22', '7', '2', '2', '正常饮食，但比正常情况少 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('23', '7', '3', '5', '少量固体食物 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('24', '7', '4', '6', '只能进食流食 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('25', '7', '5', '8', '几乎吃不下什么 （4分）', '4', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('26', '7', '6', '9', '只能通过管饲进食或静脉营养 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('27', '8', '1', '1', '吃饭没有问题 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('28', '8', '2', '3', '恶心 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('29', '8', '3', '6', '便秘 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('30', '8', '4', '8', '口干 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('31', '8', '5', '9', '食物没有味道或味道不好 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('32', '8', '6', '6', '其它如抑郁、经济问题或牙齿问题 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('33', '8', '7', '5', '口腔溃疡 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('34', '8', '8', '8', '吞咽困难 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('35', '8', '9', '2', '没有食欲，不想吃 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('36', '8', '10', '4', '呕吐 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('37', '8', '11', '7', '腹泻 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('38', '8', '12', '12', '疼痛 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('39', '9', '1', '1', '正常，无限制 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('40', '9', '2', '2', '不像往常，但还能起床进行适当活动 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('41', '9', '3', '3', '多数时候不想起床，但卧床或坐椅时间不超过半天 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('42', '9', '4', '4', '几乎做不了什么，一天大多数时候都卧床或在椅子上 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('43', '9', '5', '5', '几乎完全卧床，无法起床 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('44', '10', '1', '1', '癌症 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('45', '10', '2', '2', 'AIDS （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('46', '10', '3', '3', '呼吸或心脏病恶病质 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('47', '10', '4', '4', '存在开放性伤口或肠瘘或压疮 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('48', '10', '5', '5', '创伤 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('49', '10', '6', '6', '年龄超过65岁 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('50', '11', '1', '1', '无 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('51', '11', '2', '2', '37.2-38.3℃ （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('52', '11', '3', '3', '38.3-38.8℃ （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('53', '11', '4', '4', '>38.8℃ （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('54', '12', '1', '1', '无 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('55', '12', '2', '2', '<72小时 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('56', '12', '3', '3', '72小时 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('57', '12', '4', '4', '>72小时 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('58', '13', '1', '1', '无 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('59', '13', '2', '2', '低剂量（<10mg/天强的松或相当剂量的其它激素） （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('60', '13', '3', '3', '中剂量（10-30mg/天强的松或相当剂量的其它激素 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('61', '13', '4', '4', '大剂量（>30mg/天强的松或相当剂量的其它激素） （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('62', '14', '1', '1', '眼眶无凹陷，眉弓不突出 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('63', '14', '2', '2', '眼眶轻度凹陷，眉弓轻度突出 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('64', '14', '3', '3', '介于轻度和重度异常之间 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('65', '14', '4', '4', '眼窝凹陷明显，皮肤松弛，眉弓突出 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('66', '15', '1', '1', '大量脂肪组织 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('67', '15', '2', '2', '感觉比正常人略少 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('68', '15', '3', '3', '介于轻度和重度异常之间 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('69', '15', '4', '4', '两指间空隙很少，甚至紧贴 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('70', '16', '1', '1', '两指间很厚，看到不肋骨 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('71', '16', '2', '2', '与正常人相差无几，看到肋骨轮廓 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('72', '16', '3', '3', '介于轻度和重度异常之间 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('73', '16', '4', '4', '两指间空隙很少，甚至紧贴，下肋骨明显突出 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('74', '17', '1', '1', '看不到明显凹陷 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('75', '17', '2', '2', '轻度凹陷 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('76', '17', '3', '3', '凹陷 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('77', '17', '4', '4', '显著凹陷 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('78', '18', '1', '1', '男：看不到锁骨，女：看到但不突出 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('79', '18', '2', '2', '部分凸出 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('80', '18', '3', '3', '凸出 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('81', '18', '4', '4', '明显凸出 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('82', '19', '1', '1', '圆形 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('83', '19', '2', '2', '肩缝轻度凸出 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('84', '19', '3', '3', '介于轻度和重度异常之间 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('85', '19', '4', '4', '肩锁关节方形，骨骼凸出 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('86', '20', '1', '1', '肩胛骨不凸出，内侧不凹陷 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('87', '20', '2', '2', '肩胛骨轻度凸出，肋、肩胛、肩、脊柱间轻度凹陷 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('88', '20', '3', '3', '肩胛骨凸出，肋、肩胛、肩、脊柱间凹陷 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('89', '20', '4', '4', '肩胛骨明显凸出，肋、肩胛、肩、脊柱间显著凹陷 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('90', '21', '1', '1', '拇指和食指对捏时肌肉凸出，女性可平坦 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('91', '21', '2', '2', '平坦 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('92', '21', '3', '3', '轻微凹陷 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('93', '21', '4', '4', '明显凹陷 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('94', '22', '1', '1', '圆润，张力明显 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('95', '22', '2', '2', '轻度消瘦，肌力较弱 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('96', '22', '3', '3', '介于轻度和重度异常之间 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('97', '22', '4', '4', '大腿明显消瘦，几乎无张力 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('98', '23', '1', '1', '肌肉发达 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('99', '23', '2', '2', '消瘦，有肌肉轮廓 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('100', '23', '3', '3', '消瘦，肌肉轮廓模糊 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('101', '23', '4', '4', '消瘦，无肌肉轮廓，肌肉松垮无力 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('102', '24', '1', '1', '无凹陷 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('103', '24', '2', '2', '轻微凹陷 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('104', '24', '3', '3', '介于轻度和重度之间 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('105', '24', '4', '4', '凹陷非常明显，不回弹 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('106', '25', '1', '1', '无凹陷 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('107', '25', '2', '2', '轻微凹陷 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('108', '25', '3', '3', '介于轻度和重度之间 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('109', '25', '4', '4', '凹陷非常明显，不能回弹 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('110', '26', '1', '1', '无移动性浊音，无振水音、腹围无增大 （0分）', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('111', '26', '2', '2', '左右侧卧时有移动性浊音 （1分）', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('112', '26', '3', '3', '患者平卧时有振水音 （2分）', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('113', '26', '4', '4', '患者感到腹胀明显，腹围增大 （3分）', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('114', '7', '7', '7', '只能口服营养制剂 (3分)', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('115', '7', '8', '3', '软饭 (2分)', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('116', '7', '9', '4', '流食 (3分)', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('117', '8', '13', '13', '腹胀 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('118', '8', '14', '14', '气味不好 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('119', '8', '15', '15', '一会儿就饱胀了 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('120', '8', '16', '16', '乏力 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('121', '8', '17', '17', '其它 (1分)', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('122', '27', '1', '1', '>20 (0分)', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('123', '27', '2', '2', '18.5-20 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('124', '27', '3', '3', '<18.5 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('125', '28', '1', '1', '<5% ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('126', '28', '2', '2', '5%-10% ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('127', '28', '3', '3', '>10% ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('128', '29', '1', '1', '无 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('129', '29', '2', '2', '>=5天 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('130', '30', '1', '1', '无 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('131', '30', '2', '2', '不确定 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('132', '31', '1', '1', '1-5 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('133', '31', '2', '2', '6-10 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('134', '31', '3', '3', '11-15 ( 3分 )', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('135', '31', '4', '4', '>15 ( 4分 )', '4', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('136', '32', '1', '1', '没有 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('137', '32', '2', '2', '是 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('138', '33', '1', '1', '食量严重减少 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('139', '33', '2', '2', '食量中度减少 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('140', '33', '3', '3', '食量没有减少 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('141', '34', '1', '1', '体重下降大于3kg ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('142', '34', '2', '2', '不知道 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('143', '34', '3', '3', '体重过下降1-3kg ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('144', '34', '4', '4', '体重没有下降 ( 3分 )', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('145', '35', '1', '1', '需要长期卧床或坐轮椅 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('146', '35', '2', '2', '可以下床或离开轮椅，但不能外出 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('147', '35', '3', '3', '可以外出 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('148', '36', '1', '1', '有 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('149', '36', '2', '2', '没有 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('150', '37', '1', '1', '严重痴呆或抑郁 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('151', '37', '2', '2', '轻度痴呆 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('152', '37', '3', '3', '没有精神心理问题 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('153', '38', '1', '1', 'BMI低于9 ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('154', '38', '2', '2', 'BMI19-21 ( 1分 )', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('155', '38', '3', '3', 'BMI21-23 ( 2分 )', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('156', '38', '4', '4', 'BMI>=23 ( 3分 )', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('157', '39', '1', '1', 'CC低于31cm ( 0分 )', '0', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('158', '39', '2', '2', 'CC》=31cm ( 3分 )', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('159', '41', '1', '1', 'A、体重变化 <5%；或5-10%，但正在改善', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('160', '41', '2', '2', 'B、持续减少5-10%，或由10%升至5-10%', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('161', '41', '3', '3', 'C、持续减少 >10%', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('162', '42', '1', '1', 'A、无变化，正常体重或恢复到', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('163', '42', '2', '2', 'B、稳定，但低于理想或通常体重；部分恢复但不完全', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('164', '42', '3', '3', 'C、减少/降低', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('165', '43', '1', '1', 'A、好，无变化，轻度、短期变化', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('166', '43', '2', '2', 'B、正常下限但在减少；差但在增加', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('167', '43', '3', '3', 'C、差但在减少；差，无变化', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('168', '44', '1', '1', 'A、<2周，变化少或无变化', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('169', '44', '2', '2', 'B、>2周，轻－中度低于理想摄食量', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('170', '44', '3', '3', 'C、>2周，不能进食，饥饿', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('171', '45', '1', '1', 'A、少有', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('172', '45', '2', '2', 'B、部分症状，>2周；严重、持续的症状，但在改善', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('173', '45', '3', '3', 'C、部分或所有症状，频繁或每天，>2周', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('174', '46', '1', '1', 'A、无受损，力气/精力无改变或轻－中度下降但在改善', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('175', '46', '2', '2', 'B、力气/精力中度下降但在改善；通常的活动部分减少；严重下降但在改善', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('176', '46', '3', '3', 'C、力气/精力严重下降，卧床', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('177', '47', '1', '1', 'A、无应激', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('178', '47', '2', '2', 'B、低水平应激', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('179', '47', '3', '3', 'C、中度-高度应激', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('180', '48', '1', '1', 'A、轻度凸出的脂肪垫', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('181', '48', '2', '2', 'B、正常', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('182', '48', '3', '3', 'C、黑眼圈，眼窝凹陷，皮肤松弛', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('183', '49', '1', '1', 'A、大量脂肪组织', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('184', '49', '2', '2', 'B、正常', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('185', '49', '3', '3', 'C、两指间空隙很少，甚至紧贴', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('186', '50', '1', '1', 'A、看不到明显的肌肉', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('187', '50', '2', '2', 'B、轻度凹陷', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('188', '50', '3', '3', 'C、凹陷', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('189', '51', '1', '1', 'A、男性看不到，女性看到但不凸出', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('190', '51', '2', '2', 'B、部分凸出', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('191', '51', '3', '3', 'C、凸出', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('192', '52', '1', '1', 'A、圆形', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('193', '52', '2', '2', 'B、肩峰轻度凸出', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('194', '52', '3', '3', 'C、肩索关节方形，骨骼凸出', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('195', '53', '1', '1', 'A、不凸出，不凹陷', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('196', '53', '2', '2', 'B、骨轻度凸出，肋、肩胛、肩、脊柱间轻度凹陷', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('197', '53', '3', '3', 'C、骨凸出，肋、肩胛、肩、脊柱间凹陷', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('198', '54', '1', '1', 'A、肌肉凸出，女性可平坦', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('199', '54', '2', '2', 'B、轻度', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('200', '54', '3', '3', 'C、平坦或凹陷', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('201', '55', '1', '1', 'A、肌肉凸出，骨不凸出', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('202', '55', '2', '2', 'B、正常', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('203', '55', '3', '3', 'C、骨凸出', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('204', '56', '1', '1', 'A、圆形，无凹陷', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('205', '56', '2', '2', 'B、轻度凹陷，瘦', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('206', '56', '3', '3', 'C、大腿内部凹陷，明显消瘦', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('207', '57', '1', '1', 'A、肌肉发达', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('208', '57', '2', '2', 'B、正常', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('209', '57', '3', '3', 'C、瘦，无肌肉轮廓', '3', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('210', '58', '1', '1', 'A、无', '1', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('211', '58', '2', '2', 'B、轻－中度', '2', null, null, null, null, null, null, null, null);
INSERT INTO `optiondetail` VALUES ('212', '58', '3', '3', 'C、明显', '3', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for questiondetail
-- ----------------------------
DROP TABLE IF EXISTS `questiondetail`;
CREATE TABLE `questiondetail` (
  `QuestionnaireQuestion_DBKey` int(11) NOT NULL COMMENT '问卷问题_DBKey',
  `QuestionNo` varchar(32) DEFAULT NULL COMMENT '问题编号',
  `QuestionTitle` varchar(64) DEFAULT NULL COMMENT '问题标题',
  `QuestionContent` varchar(1024) DEFAULT NULL COMMENT '问题详述',
  `QuestionType` varchar(32) DEFAULT NULL COMMENT '问题类型 1:单选,2:多选',
  `QuestionProperty` int(11) DEFAULT NULL COMMENT '问题属性 0:自定义,1:NRS2002,2:PG-SGA',
  `CreateBy` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `CreateProgram` varchar(32) DEFAULT NULL COMMENT '创建程序',
  `CreateIP` varchar(32) DEFAULT NULL COMMENT '创建人IP',
  `UpdateBy` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UpdateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdateProgram` varchar(32) DEFAULT NULL COMMENT '更新程序',
  `UpdateIP` varchar(32) DEFAULT NULL COMMENT '更新人IP',
  PRIMARY KEY (`QuestionnaireQuestion_DBKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='调查问题';

-- ----------------------------
-- Records of questiondetail
-- ----------------------------
INSERT INTO `questiondetail` VALUES ('1', 'NRS2002-1', 'NRS2002-1 疾病状态', '疾病状态', '2', '1', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('2', 'NRS2002-2', 'NRS2002-2 营养状态', '营养状态', '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('3', 'NRS2002-3', 'NRS2002-3 年龄年龄≥70岁', '年龄≥70岁', '1', '1', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('4', 'PG-SGA-1', 'PG-SGA-1 体重丢失情况', '1个月体重或6个月丢失情况', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('5', 'PG-SGA-2', 'PG-SGA-2 过去两周我的体重', '过去两周我的体重', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('6', 'PG-SGA-3', 'PG-SGA-3 在过去1个月里，我的进食情况与平时相比', '在过去1个月里，我的进食情况与平时相比', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('7', 'PG-SGA-4', 'PG-SGA-4 我目前进食', '我目前进食', '2', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('8', 'PG-SGA-5', 'PG-SGA-5 近2周来，我有以下问题，影响我的进食', '近2周来，我有以下问题，影响我的进食（偶尔出现的症状不能作为选择）', '2', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('9', 'PG-SGA-6', 'PG-SGA-6 过去1个月，您的活动', '过去1个月，您的活动', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('10', 'PG-SGA-7', 'PG-SGA-7 疾病', '疾病', '2', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('11', 'PG-SGA-8', 'PG-SGA-8 发热', '发热', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('12', 'PG-SGA-9', 'PG-SGA-9 发热持续时间', '发热持续时间', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('13', 'PG-SGA-10', 'PG-SGA-10 是否使用激素', '是否使用激素', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('14', 'PG-SGA-11', 'PG-SGA-11 眼眶脂肪', '眼眶脂肪', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('15', 'PG-SGA-12', 'PG-SGA-12 三头肌皮褶厚度', '三头肌皮褶厚度', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('16', 'PG-SGA-13', 'PG-SGA-13 下肋脂肪厚度', '下肋脂肪厚度', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('17', 'PG-SGA-14', 'PG-SGA-14 颞部（颞肌）', '颞部（颞肌）', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('18', 'PG-SGA-15', 'PG-SGA-15 锁骨部位（胸部三角肌）', '锁骨部位（胸部三角肌）', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('19', 'PG-SGA-16', 'PG-SGA-16 肩部（三角肌）', '肩部（三角肌）', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('20', 'PG-SGA-17', 'PG-SGA-17 肩胛骨（背阔肌、斜方肌、三角肌）', '肩胛骨（背阔肌、斜方肌、三角肌）', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('21', 'PG-SGA-18', 'PG-SGA-18 骨间肌', '骨间肌', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('22', 'PG-SGA-19', 'PG-SGA-19 大腿（骨四头肌）', '大腿（骨四头肌）', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('23', 'PG-SGA-20', 'PG-SGA-20 小腿（腓肠肌）', '小腿（腓肠肌）', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('24', 'PG-SGA-21', 'PG-SGA-21 踝水肿', '踝水肿', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('25', 'PG-SGA-22', 'PG-SGA-22 骶部水肿', '骶部水肿', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('26', 'PG-SGA-23', 'PG-SGA-23 腹水', '腹水', '1', '2', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('27', 'MUST-1', 'MUST-1 体质指数BMI', '体质指数BMI', '1', '3', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('28', 'MUST-2', 'MUST-2 过去3个月体重下降程度', '过去3个月体重下降程度', '1', '3', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('29', 'MUST-3', 'MUST-3 由于疾病的原因导致近期近视时间可能', '由于疾病的原因导致近期近视时间可能', '1', '3', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('30', 'MST-1', 'MST-1 近期有无非自主的体重丢失', '近期有无非自主的体重丢失', '1', '4', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('31', 'MST-2', 'MST-2 如果有，丢失了多少体重(kg)', '如果有，丢失了多少体重(kg)', '1', '4', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('32', 'MST-3', 'MST-3 是否因为食欲降低而饮食减少', '是否因为食欲降低而饮食减少', '1', '4', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('33', 'MNA-SF-A', 'A、过去三个月内有没有因为食欲不振、消化不良、咀嚼或吞咽困难而减少食量？', 'A、过去三个月内有没有因为食欲不振、消化不良、咀嚼或吞咽困难而减少食量？', '1', '5', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('34', 'MNA-SF-B', 'B、过去三个月，体重下降的情况', 'B、过去三个月，体重下降的情况', '1', '5', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('35', 'MNA-SF-C', 'C、活动能力', 'C、活动能力', '1', '5', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('36', 'MNA-SF-D', 'D、过去三个月内有没有收到心理创伤或患急性疾病', 'D、过去三个月内有没有收到心理创伤或患急性疾病', '1', '5', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('37', 'MNA-SF-E', 'E、精神心理问题', 'E、精神心理问题', '1', '5', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('38', 'MNA-SF-F1', 'F1、体质指数（BMI）', 'F1、体质指数（BMI）', '1', '5', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('39', 'MNA-SF-F2', 'F2、小腿围CC（cm）', 'F2、小腿围CC（cm）', '1', '5', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('40', 'NRI-1', 'NRI-1', 'NRI', '3', '6', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('41', 'SGA-1.1', 'SGA-1.1 体重改变：6个月内体重变化情况', '体重改变：6个月内体重变化情况', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('42', 'SGA-1.2', 'SGA-1.2 体重改变：2周内体重变化', '体重改变：2周内体重变化', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('43', 'SGA-2.1', 'SGA-2.1 进食：摄食变化', '进食：摄食变化', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('44', 'SGA-2.2', 'SGA-2.2 进食：摄食变化的时间', '进食：摄食变化的时间', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('45', 'SGA-3', 'SGA-3 胃肠道症状（没有食欲、腹泻、恶心等）', '胃肠道症状（没有食欲、腹泻、恶心等）', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('46', 'SGA-4', 'SGA-4 活动能力', '活动能力', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('47', 'SGA-5', 'SGA-5 疾病和相关营养需求', '疾病和相关营养需求', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('48', 'SGA-6.1', 'SGA-6.1 皮下脂肪：下眼睑', '皮下脂肪：下眼睑', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('49', 'SGA-6.2', 'SGA-6.2 皮下脂肪：二/三头肌（臂弯曲）', '皮下脂肪：二/三头肌（臂弯曲）', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('50', 'SGA-7.1', 'SGA-7.1 肌肉消耗：颞部（直接观察，让病人头转向一边）', '肌肉消耗：颞部（直接观察，让病人头转向一边）', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('51', 'SGA-7.2', 'SGA-7.2 肌肉消耗：锁骨（看锁骨是否凸出）', '肌肉消耗：锁骨（看锁骨是否凸出）', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('52', 'SGA-7.3', 'SGA-7.3 肌肉消耗：肩（看骨是否凸出、形状，手下垂）', '肌肉消耗：肩（看骨是否凸出、形状，手下垂）', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('53', 'SGA-7.4', 'SGA-7.4 肌肉消耗：肩胛骨(病人双手前推，看骨是否凸出)', '肌肉消耗：肩胛骨(病人双手前推，看骨是否凸出)', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('54', 'SGA-7.5', 'SGA-7.5 肌肉消耗：骨间肌(手背，前后活动，拇指和食指)', '肌肉消耗：骨间肌(手背，前后活动，拇指和食指)', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('55', 'SGA-7.6', 'SGA-7.6 肌肉消耗：膝盖（病人坐着，腿支撑在矮板凳上）', '肌肉消耗：膝盖（病人坐着，腿支撑在矮板凳上）', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('56', 'SGA-7.7', 'SGA-7.7 肌肉消耗：骨四头肌（不如上肢敏感）', '肌肉消耗：骨四头肌（不如上肢敏感）', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('57', 'SGA-7.8', 'SGA-7.8 肌肉消耗：腓肠肌', '肌肉消耗：腓肠肌', '1', '7', null, null, null, null, null, null, null, null);
INSERT INTO `questiondetail` VALUES ('58', 'SGA-8', 'SGA-8 肌肉消耗：水肿/腹水 （活动受限的病人检查骶部）', '肌肉消耗：水肿/腹水 （活动受限的病人检查骶部）', '1', '7', null, null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf16;

-- ----------------------------
-- Records of questiondetailtype
-- ----------------------------
INSERT INTO `questiondetailtype` VALUES ('1', 'NRS2002', '1', '1');
INSERT INTO `questiondetailtype` VALUES ('2', 'PG-SGA', '2', '2');
INSERT INTO `questiondetailtype` VALUES ('3', 'MUST', '3', '3');
INSERT INTO `questiondetailtype` VALUES ('4', 'MST', '4', '4');
INSERT INTO `questiondetailtype` VALUES ('5', 'MNA-SF', '5', '5');
INSERT INTO `questiondetailtype` VALUES ('6', 'NRI', '6', '6');
INSERT INTO `questiondetailtype` VALUES ('7', 'SGA', '7', '7');
