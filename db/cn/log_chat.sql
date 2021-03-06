/*
MySQL Data Transfer
Source Host: localhost
Source Database: l1jdb_cn
Target Host: localhost
Target Database: l1jdb_cn
Date: 2011-6-25 ???? 12:53:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for log_chat
-- ----------------------------
CREATE TABLE `log_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) NOT NULL,
  `char_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `clan_id` int(10) NOT NULL,
  `clan_name` varchar(50) DEFAULT NULL,
  `locx` int(10) NOT NULL,
  `locy` int(10) NOT NULL,
  `mapid` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `target_account_name` varchar(50) DEFAULT NULL,
  `target_id` int(10) DEFAULT '0',
  `target_name` varchar(50) DEFAULT NULL,
  `target_clan_id` int(10) DEFAULT NULL,
  `target_clan_name` varchar(50) DEFAULT NULL,
  `target_locx` int(10) DEFAULT NULL,
  `target_locy` int(10) DEFAULT NULL,
  `target_mapid` int(10) DEFAULT NULL,
  `content` varchar(256) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
