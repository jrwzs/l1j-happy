/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50150
Source Host           : localhost:3306
Source Database       : l1j-cn

Target Server Type    : MYSQL
Target Server Version : 50150
File Encoding         : 65001

Date: 2011-07-12 23:33:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `character_teleport`
-- ----------------------------
DROP TABLE IF EXISTS `character_teleport`;
CREATE TABLE `character_teleport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `locx` int(10) unsigned NOT NULL DEFAULT '0',
  `locy` int(10) unsigned NOT NULL DEFAULT '0',
  `mapid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `key_id` (`char_id`)
) ENGINE=MyISAM AUTO_INCREMENT=271649192 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_teleport
-- ----------------------------
