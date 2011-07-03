/*
MySQL Data Transfer
Source Host: localhost
Source Database: l1jdb_cn
Target Host: localhost
Target Database: l1jdb_cn
Date: 2011-6-25 ���� 12:49:51
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for armor_set
-- ----------------------------
CREATE TABLE `armor_set` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `note` varchar(45) DEFAULT NULL,
  `sets` varchar(1000) NOT NULL,
  `polyid` int(10) NOT NULL DEFAULT '0',
  `ac` int(2) NOT NULL DEFAULT '0',
  `hp` int(5) NOT NULL DEFAULT '0',
  `mp` int(5) NOT NULL DEFAULT '0',
  `hpr` int(5) NOT NULL DEFAULT '0',
  `mpr` int(5) NOT NULL DEFAULT '0',
  `mr` int(5) NOT NULL DEFAULT '0',
  `str` int(2) NOT NULL DEFAULT '0',
  `dex` int(2) NOT NULL DEFAULT '0',
  `con` int(2) NOT NULL DEFAULT '0',
  `wis` int(2) NOT NULL DEFAULT '0',
  `cha` int(2) NOT NULL DEFAULT '0',
  `intl` int(2) NOT NULL DEFAULT '0',
  `hit_modifier` int(2) NOT NULL DEFAULT '0',
  `dmg_modifier` int(2) NOT NULL DEFAULT '0',
  `bow_hit_modifier` int(2) NOT NULL DEFAULT '0',
  `bow_dmg_modifier` int(2) NOT NULL DEFAULT '0',
  `sp` int(2) NOT NULL,
  `defense_water` int(2) NOT NULL DEFAULT '0',
  `defense_wind` int(2) NOT NULL DEFAULT '0',
  `defense_fire` int(2) NOT NULL DEFAULT '0',
  `defense_earth` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `armor_set` VALUES ('1', '恶魔套装', '20009,20099,20165,20197', '3889', '-2', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('2', '死亡骑士套装', '20010,20100,20166,20198', '6137', '-4', '0', '0', '-7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('3', '反王套装', '20024,20118,20170,20203', '3903', '-3', '0', '0', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('4', '克特套装', '20041,20150,20184,20214', '3101', '-4', '0', '0', '-7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('5', '赛尼斯套装', '20042,20151,20185,20215', '3902', '-2', '0', '100', '0', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('6', '南瓜头套', '20047', '2501', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('7', '吸血鬼斗篷', '20079', '3952', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('8', '死神披肩', '20342', '2388', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('9', '曼波兔帽', '20343', '4767', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('10', '曼波兔帽(萝卜)', '20344', '4769', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('11', '变形怪首领之戒(左)', '20278', '2374', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('12', '变形怪首领之戒(右)', '20277', '3864', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('13', '变形怪首领项练', '20250', '3865', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('14', '柯利的项练', '20345', '4928', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('15', '浣熊的项练', '20346', '4929', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('16', '韩服', '20347', '4227', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('17', '和服', '20348', '3750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('18', '猎犬项练', '20349', '938', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('19', '雪人的项练', '20350', '2064', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('20', '雪人套装', '20351,20352', '2064', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('21', '招财猫头巾', '20420', '5719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('22', '红色面具', '20382', '6010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('23', '德雷克头巾', '20452', '6089', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('24', '艾莉斯变身头巾', '20453', '4001', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('25', '骑士范德头巾', '20454', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('26', '思克巴女皇变身头巾', '20455', '4004', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('27', '红色足球衣', '20456', '5184', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('28', '蓝色足球衣', '20457', '5186', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('29', '红色妖魔面具', '20458', '6010', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('30', '军马头盔', '20383', '6080', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('31', '南瓜魔法帽', '20380', '6400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('32', '高等熊项练', '20419', '5976', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('33', '皮制套装', '20001,20090,20193,20219', '-1', '-3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('34', '欧西斯套装', '20034,20072,20135,20237', '-1', '-3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('35', '侏儒套装', '20007,20052,20223', '-1', '-1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('36', '银钉皮制套装', '20038,20148,20241,20212', '-1', '-3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('37', '骷髅套装', '20045,20124,20221', '-1', '-2', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('38', '妖精套装', '20389,20393,20401,20409,20406', '-1', '-2', '15', '10', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('39', '法师套装', '20012,20111', '-1', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('40', '钢铁套装', '20003,20091,20163,20194,20220', '-1', '-3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('41', '蓝海贼套装', '20044,20155,20188,20217', '-1', '-1', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('42', '火焰之影套装', '20031,20069,20083,20131,20179,20209,20290,20261', '-1', '-88', '100', '100', '15', '15', '0', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('43', '四大军王套装', '20057,20109,20178,20200', '-1', '0', '30', '30', '10', '10', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('44', '真?冥皇套装', '20390,20395,20402,20410,20408', '-1', '-20', '100', '20', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('45', '泡水套装(头具)', '21051,21052,21053,21054,21055', '-1', '-10', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0');
INSERT INTO `armor_set` VALUES ('46', '希望套装', '20413,20428', '-1', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('47', '幸运套装', '20414,20430', '-1', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('48', '热情套装', '20415,20429', '-1', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('49', '真实套装', '20416,20431', '-1', '0', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('50', '奇迹套装', '20417,20432', '-1', '0', '15', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('51', '慈爱?勇气套装', '20418,20433', '-1', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('52', '红色诅咒饰品', '20423,21019', '-1', '0', '0', '0', '0', '0', '0', '2', '0', '-2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('53', '蓝色诅咒饰品', '20424,21019', '-1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-2', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('54', '绿色诅咒饰品', '20425,21019', '-1', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '-2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('55', '男幽灵假装セット', '21061', '5484', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('56', '女幽灵假装セット', '21062', '5412', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('57', '男性水着：ブリ－フ', '21063', '6746', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('58', '男性水着：トランクス', '21064', '6747', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('59', '女性水着：ワンピ－ス', '21065', '6749', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('60', '女性水着：ビキニ', '21066', '6750', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('61', '泡水套装(帽子)', '21140,21052,21053,21054,21055', '-1', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '2', '0', '0', '1', '0', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('62', '泡水套装(头巾)', '21141,21052,21053,21054,21055', '-1', '0', '0', '50', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0');
INSERT INTO `armor_set` VALUES ('63', '柑橘变身帽', '21142', '8719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
