/*
MySQL Data Transfer
Source Host: localhost
Source Database: l1jdb_cn
Target Host: localhost
Target Database: l1jdb_cn
Date: 2011-7-3 ���� 12:56:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for william_shop_backup
-- ----------------------------
CREATE TABLE `william_shop_backup` (
  `npc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `selling_price` int(10) NOT NULL DEFAULT '-1',
  `pack_count` int(10) unsigned NOT NULL DEFAULT '0',
  `purchasing_price` int(10) NOT NULL DEFAULT '-1',
  `YB` int(10) NOT NULL DEFAULT '-1',
  `EnchantLevel` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc_id`,`item_id`,`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `william_shop_backup` VALUES ('99000', '60', '0', '-1', '0', '-1', '1', '100');
INSERT INTO `william_shop_backup` VALUES ('99001', '5009', '0', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5010', '1', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5011', '2', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5012', '3', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5013', '4', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5015', '5', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5016', '6', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5017', '7', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5018', '8', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5019', '9', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5020', '10', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5021', '11', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5022', '12', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5023', '13', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5027', '14', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5028', '15', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5029', '16', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5030', '17', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5031', '18', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5032', '19', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5033', '20', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5034', '21', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5035', '22', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5036', '23', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5037', '24', '-1', '0', '-1', '1', '0');
INSERT INTO `william_shop_backup` VALUES ('99001', '5038', '25', '-1', '0', '-1', '1', '0');