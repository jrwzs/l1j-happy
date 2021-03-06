/*
MySQL Data Transfer
Source Host: localhost
Source Database: l1jdb_cn
Target Host: localhost
Target Database: l1jdb_cn
Date: 2011-6-25 ĻĀĪē 12:55:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for petitem
-- ----------------------------
CREATE TABLE `petitem` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(45) NOT NULL DEFAULT '',
  `use_type` varchar(20) NOT NULL DEFAULT '',
  `hitmodifier` int(3) NOT NULL DEFAULT '0',
  `dmgmodifier` int(3) NOT NULL DEFAULT '0',
  `ac` int(3) NOT NULL DEFAULT '0',
  `add_str` int(2) NOT NULL DEFAULT '0',
  `add_con` int(2) NOT NULL DEFAULT '0',
  `add_dex` int(2) NOT NULL DEFAULT '0',
  `add_int` int(2) NOT NULL DEFAULT '0',
  `add_wis` int(2) NOT NULL DEFAULT '0',
  `add_hp` int(10) NOT NULL DEFAULT '0',
  `add_mp` int(10) NOT NULL DEFAULT '0',
  `add_sp` int(10) NOT NULL DEFAULT '0',
  `m_def` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40767 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `petitem` VALUES ('40749', 'ēē¬ä¹ē', 'tooth', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40750', 'ē “ē­ä¹ē', 'tooth', '-3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40751', 'ęē¬ä¹ē', 'tooth', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40752', 'é»éä¹ē', 'tooth', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40753', 'é¾ä¹ē', 'tooth', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40754', 'äøē­ä¹ē', 'tooth', '-2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40755', 'é»ęä¹ē', 'tooth', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0');
INSERT INTO `petitem` VALUES ('40756', 'ē„ä¹ē', 'tooth', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0');
INSERT INTO `petitem` VALUES ('40757', 'é¢éä¹ē', 'tooth', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40758', 'čå©ä¹ē', 'tooth', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40759', 'å® ē©ē„ē¦ēē²', 'armor', '0', '0', '-10', '0', '0', '0', '0', '2', '0', '0', '0', '20');
INSERT INTO `petitem` VALUES ('40760', 'å® ē©åęēē²', 'armor', '0', '0', '-6', '0', '0', '0', '3', '0', '0', '0', '0', '10');
INSERT INTO `petitem` VALUES ('40761', 'å® ē©ē®ēē²', 'armor', '0', '0', '-4', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40762', 'å® ē©éŖ·é«ēē²', 'armor', '0', '0', '-7', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40763', 'å® ē©é¢éēē²', 'armor', '0', '0', '-8', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40764', 'å® ē©ē±³ē“¢čēē²', 'armor', '0', '0', '-12', '0', '0', '0', '1', '1', '0', '0', '0', '10');
INSERT INTO `petitem` VALUES ('40765', 'å® ē©åå­ēē²', 'armor', '0', '0', '-13', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40766', 'å® ē©é¾ē²', 'armor', '0', '0', '-20', '0', '0', '0', '0', '0', '0', '0', '0', '0');
