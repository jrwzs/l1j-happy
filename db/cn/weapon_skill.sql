/*
MySQL Data Transfer
Source Host: localhost
Source Database: l1jdb_cn
Target Host: localhost
Target Database: l1jdb_cn
Date: 2011-6-25 ���� 12:59:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for weapon_skill
-- ----------------------------
CREATE TABLE `weapon_skill` (
  `weapon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT NULL,
  `probability` int(11) unsigned NOT NULL DEFAULT '0',
  `fix_damage` int(11) unsigned NOT NULL DEFAULT '0',
  `random_damage` int(11) unsigned NOT NULL DEFAULT '0',
  `area` int(11) NOT NULL DEFAULT '0',
  `skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_time` int(11) unsigned NOT NULL DEFAULT '0',
  `effect_id` int(11) unsigned NOT NULL DEFAULT '0',
  `effect_target` int(11) unsigned NOT NULL DEFAULT '0',
  `arrow_type` int(11) unsigned NOT NULL DEFAULT '0',
  `attr` int(11) unsigned NOT NULL DEFAULT '0',
  `gfx_id` int(11) unsigned NOT NULL DEFAULT '0',
  `gfx_id_target` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`weapon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=500016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `weapon_skill` VALUES ('47', '沉默之剑', '2', '0', '0', '0', '64', '16', '2177', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('54', '克特之剑', '15', '35', '25', '0', '0', '0', '10', '0', '0', '8', '0', '1');
INSERT INTO `weapon_skill` VALUES ('58', '死亡骑士烈炎之剑', '7', '75', '15', '0', '0', '0', '1811', '0', '0', '2', '0', '1');
INSERT INTO `weapon_skill` VALUES ('76', '伦得双刀', '15', '35', '25', '0', '0', '0', '1805', '0', '0', '1', '0', '1');
INSERT INTO `weapon_skill` VALUES ('121', '冰之女王魔杖', '25', '95', '55', '0', '0', '0', '1810', '0', '0', '4', '0', '1');
INSERT INTO `weapon_skill` VALUES ('203', '炎魔的双手剑', '15', '90', '90', '2', '0', '0', '762', '0', '0', '2', '0', '1');
INSERT INTO `weapon_skill` VALUES ('205', '炽炎天使弓', '5', '8', '0', '0', '0', '0', '6288', '0', '1', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('256', '万圣节南瓜长剑', '8', '35', '25', '0', '0', '0', '2750', '0', '0', '1', '0', '1');
INSERT INTO `weapon_skill` VALUES ('257', '万圣节长剑', '8', '35', '25', '0', '0', '0', '2750', '0', '0', '1', '0', '1');
INSERT INTO `weapon_skill` VALUES ('258', '终极万圣节南瓜长剑', '8', '35', '25', '0', '0', '0', '2750', '0', '0', '1', '0', '1');
INSERT INTO `weapon_skill` VALUES ('301', '耀武短剑', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('302', '耀武双手剑', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('303', '耀武双刀', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('304', '耀武之弩', '8', '65', '30', '0', '0', '0', '129', '0', '1', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('305', '耀武魔杖', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('306', '特制的耀武短剑', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('307', '特制的耀武双手剑', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('308', '特制的耀武双刀', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('309', '特制的耀武之弩', '8', '65', '30', '0', '0', '0', '129', '0', '1', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('310', '特制的耀武魔杖', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('311', '超特制的耀武短剑', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('312', '超特制的耀武双手剑', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('313', '超特制的耀武双刀', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('314', '超特制的耀武之弩', '8', '65', '30', '0', '0', '0', '129', '0', '1', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('315', '超特制的耀武魔杖', '8', '65', '30', '0', '0', '0', '129', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('613', '巴拉卡斯双手剑', '20', '20', '10', '3', '0', '0', '245', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('614', '吉尔塔斯单手剑', '25', '40', '25', '3', '0', '0', '5306', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('615', '安塔瑞斯双刀', '20', '15', '7', '3', '0', '0', '1119', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('616', '法利昂魔杖', '20', '10', '5', '3', '0', '0', '5010', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('617', '林德拜尔之弓', '20', '20', '15', '3', '0', '0', '5893', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('618', '终极双手剑', '25', '20', '10', '3', '0', '0', '245', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('619', '终极单手剑', '28', '50', '30', '3', '0', '0', '5306', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('620', '终极双刀', '25', '20', '10', '3', '0', '0', '1119', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('621', '终极魔杖', '25', '25', '15', '3', '0', '0', '5010', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('622', '终极之弓', '25', '25', '18', '3', '0', '0', '5893', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('200300', '天赐单手剑', '1', '30', '30', '1', '0', '0', '1262', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('200301', '天赐双手剑', '1', '30', '30', '1', '0', '0', '1320', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('200302', '天赐魔杖', '1', '30', '30', '1', '0', '0', '395', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('200303', '天赐妖弓', '1', '30', '30', '1', '0', '0', '1593', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('200304', '天赐妖剑', '1', '30', '30', '1', '0', '0', '1608', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('200305', '天赐双刀', '1', '30', '30', '1', '0', '0', '1609', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('623', '底比斯欧西里斯单手剑', '10', '35', '20', '5', '0', '0', '4546', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('624', '底比斯欧西里斯双刀', '10', '10', '5', '5', '0', '0', '4546', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('625', '底比斯欧西里斯双手剑', '10', '15', '10', '5', '0', '0', '4546', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('626', '底比斯欧西里斯弓', '10', '10', '5', '5', '0', '0', '4546', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('627', '底比斯欧西里斯魔杖', '10', '5', '2', '5', '0', '0', '4546', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('628', '底比斯欧西里斯单手剑', '10', '35', '20', '5', '0', '0', '4546', '0', '0', '0', '6985', '1');
INSERT INTO `weapon_skill` VALUES ('265', '底比斯欧西里斯双刀', '10', '10', '5', '3', '0', '0', '4591', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('266', '底比斯欧西里斯双手剑', '10', '15', '10', '3', '0', '0', '4591', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('267', '底比斯欧西里斯弓', '10', '10', '5', '3', '0', '0', '4591', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('268', '底比斯欧西里斯魔杖', '10', '5', '2', '3', '0', '0', '4591', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('606', '战神之仗', '20', '20', '10', '0', '0', '0', '5261', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('607', '战神之弓', '20', '20', '10', '0', '0', '0', '5261', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('608', '战神单手剑', '20', '20', '10', '0', '0', '0', '5261', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('609', '战神双刀', '20', '20', '10', '0', '0', '0', '5261', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('610', '战神双手剑', '20', '20', '10', '0', '0', '0', '5261', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('611', '战神古奇爪', '20', '20', '10', '0', '0', '0', '5261', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('612', '战神锁链剑', '20', '20', '10', '0', '0', '0', '5261', '0', '0', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('100004', '祝福的匕首', '10', '35', '10', '0', '0', '0', '0', '0', '0', '0', '1809', '1');
