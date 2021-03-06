/*
MySQL Data Transfer
Source Host: localhost
Source Database: l1jdb_cn
Target Host: localhost
Target Database: l1jdb_cn
Date: 2011-6-25 ĻĀĪē 12:57:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for shop_sell_price
-- ----------------------------
CREATE TABLE `shop_sell_price` (
  `item_id` int(10) unsigned NOT NULL,
  `name` char(64) DEFAULT NULL,
  `sell_price` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `shop_sell_price` VALUES ('52', 'åęå', '1800');
INSERT INTO `shop_sell_price` VALUES ('100', 'č¦äøå„„éåé²ę ¹ēč§', '96000');
INSERT INTO `shop_sell_price` VALUES ('101', 'ęęÆå”å·“å¾·ē', '1');
INSERT INTO `shop_sell_price` VALUES ('102', 'é²č„æé¤', '100');
INSERT INTO `shop_sell_price` VALUES ('103', 'ę', '100');
INSERT INTO `shop_sell_price` VALUES ('104', 'ę³äø', '4000');
INSERT INTO `shop_sell_price` VALUES ('105', 'č±”ēå”éæē', '1');
INSERT INTO `shop_sell_price` VALUES ('106', 'č“å”åé', '5000');
INSERT INTO `shop_sell_price` VALUES ('107', 'ę·±ēŗ¢éæē', '25000');
INSERT INTO `shop_sell_price` VALUES ('108', 'å¤±å»é­åēę¶é­é°å', '10');
INSERT INTO `shop_sell_price` VALUES ('109', 'å¤±å»é­åēå·“é£ē¹é­ę', '10');
INSERT INTO `shop_sell_price` VALUES ('110', 'å¤±å»é­åēå·“åęÆé­ę', '10');
INSERT INTO `shop_sell_price` VALUES ('111', 'å¤±å»é­åēå°ä¹å„³ēé­ę', '10');
INSERT INTO `shop_sell_price` VALUES ('115', 'ę°“ę¶é­ę', '200');
INSERT INTO `shop_sell_price` VALUES ('116', 'é»ę³åøä¹ę', '200');
INSERT INTO `shop_sell_price` VALUES ('117', 'č¾éé­ę', '4950');
INSERT INTO `shop_sell_price` VALUES ('118', 'ę¼é»ę°“ę¶ē', '11000');
INSERT INTO `shop_sell_price` VALUES ('119', 'ę¶é­é°å', '10000');
INSERT INTO `shop_sell_price` VALUES ('120', 'č±”ēå”é­ę', '14351');
INSERT INTO `shop_sell_price` VALUES ('121', 'å°ä¹å„³ēé­ę', '10000');
INSERT INTO `shop_sell_price` VALUES ('122', 'ęęÆå”å·“å¾·é­ę', '14351');
INSERT INTO `shop_sell_price` VALUES ('123', 'å·“åęÆé­ę', '1');
INSERT INTO `shop_sell_price` VALUES ('124', 'å·“é£ē¹é­ę', '22222');
INSERT INTO `shop_sell_price` VALUES ('125', 'å·«ęÆé­ę³ę', '2500');
INSERT INTO `shop_sell_price` VALUES ('126', 'ēé£é­ę', '22222');
INSERT INTO `shop_sell_price` VALUES ('127', 'é¢éēé£é­ę', '22222');
INSERT INTO `shop_sell_price` VALUES ('128', 'ę©”ęØé­ę³ę', '100');
INSERT INTO `shop_sell_price` VALUES ('129', 'ē¾åŗé­ę³ę', '500');
INSERT INTO `shop_sell_price` VALUES ('130', 'ēŗ¢ę°“ę¶é­ę', '2500');
INSERT INTO `shop_sell_price` VALUES ('131', 'åéé­ę³ę', '330');
INSERT INTO `shop_sell_price` VALUES ('132', 'ē„å®é­ę', '2750');
INSERT INTO `shop_sell_price` VALUES ('133', 'å¤ä»£äŗŗēęŗę§', '15000');
INSERT INTO `shop_sell_price` VALUES ('134', 'å£ę¶é­ę', '15000');
INSERT INTO `shop_sell_price` VALUES ('135', 'äøäøŗäŗŗē„ēę§', '3000');
INSERT INTO `shop_sell_price` VALUES ('136', 'ę§', '1');
INSERT INTO `shop_sell_price` VALUES ('137', 'äŗčæ', '1');
INSERT INTO `shop_sell_price` VALUES ('138', 'ęØę£', '1');
INSERT INTO `shop_sell_price` VALUES ('139', 'å¼č±å°', '22');
INSERT INTO `shop_sell_price` VALUES ('140', 'éé¤', '17');
INSERT INTO `shop_sell_price` VALUES ('141', 'ęé¤', '33');
INSERT INTO `shop_sell_price` VALUES ('142', 'é¶ę§', '44');
INSERT INTO `shop_sell_price` VALUES ('143', 'ęę§', '99');
INSERT INTO `shop_sell_price` VALUES ('144', 'ä¾åéę§', '500');
INSERT INTO `shop_sell_price` VALUES ('145', 'ēęå£«ę§', '500');
INSERT INTO `shop_sell_price` VALUES ('146', 'ęµęé¤', '770');
INSERT INTO `shop_sell_price` VALUES ('147', 'č±”ēå”ę§å¤“', '500');
INSERT INTO `shop_sell_price` VALUES ('148', 'å·Øę§', '5000');
INSERT INTO `shop_sell_price` VALUES ('149', 'ēäŗŗę§å¤“', '3850');
INSERT INTO `shop_sell_price` VALUES ('150', 'å¤©ē¶ä¹ę', '1');
INSERT INTO `shop_sell_price` VALUES ('151', 'ę¶é­ę§å¤“', '14300');
INSERT INTO `shop_sell_price` VALUES ('152', 'ééé¢ēŖ', '100');
INSERT INTO `shop_sell_price` VALUES ('153', 'é¢éé¢ēŖ', '1470');
INSERT INTO `shop_sell_price` VALUES ('154', 'ęå½±é¢ēŖ', '10000');
INSERT INTO `shop_sell_price` VALUES ('155', 'é­å½åēä¹ēŖ', '1000');
INSERT INTO `shop_sell_price` VALUES ('156', 'č±”ēå”é¢ēŖ', '2');
INSERT INTO `shop_sell_price` VALUES ('157', 'é¶åé¢ēŖ', '2500');
INSERT INTO `shop_sell_price` VALUES ('158', 'é»ęé¢ēŖ', '15000');
INSERT INTO `shop_sell_price` VALUES ('159', 'ē­é¢ēŖ', '1');
INSERT INTO `shop_sell_price` VALUES ('160', 'å½ēé¢ēŖ', '3000');
INSERT INTO `shop_sell_price` VALUES ('161', 'å¤§é©¬å£«é©é¢ēŖ', '1000');
INSERT INTO `shop_sell_price` VALUES ('162', 'å¹½ęé¢ēŖ', '1500');
INSERT INTO `shop_sell_price` VALUES ('163', 'å·“å°å”é¢ēŖ', '1500');
INSERT INTO `shop_sell_price` VALUES ('164', 'ęé»é¢ēŖ', '1500');
INSERT INTO `shop_sell_price` VALUES ('165', 'ę¶é­é¢ēŖ', '1500');
INSERT INTO `shop_sell_price` VALUES ('166', 'ęØä¹é¢ēŖ', '2500');
INSERT INTO `shop_sell_price` VALUES ('167', 'åå°å° č¢«éåæēå¼©ęŖ', '120000');
INSERT INTO `shop_sell_price` VALUES ('168', 'é»ęåå­å¼', '2000');
INSERT INTO `shop_sell_price` VALUES ('169', 'ēäŗŗä¹å¼', '2500');
INSERT INTO `shop_sell_price` VALUES ('170', 'ē²¾ēµå¼', '1');
INSERT INTO `shop_sell_price` VALUES ('171', 'ę¬§č„æęÆå¼', '1');
INSERT INTO `shop_sell_price` VALUES ('172', 'å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('173', 'ē­å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('174', 'č±”ēå”ē³å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('175', 'č±”ēå”éæå¼', '1');
INSERT INTO `shop_sell_price` VALUES ('176', 'ęęÆå”å·“å¾·å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('177', 'å¹½ęåå­å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('178', 'åÆéåå­å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('179', 'å¤ä»£å¦ē²¾å¼©ęŖ', '9500');
INSERT INTO `shop_sell_price` VALUES ('180', 'åå­å¼', '2500');
INSERT INTO `shop_sell_price` VALUES ('181', 'å°¤ē±³å¼', '3000');
INSERT INTO `shop_sell_price` VALUES ('182', 'å¤čēå¼©ęŖ', '10000');
INSERT INTO `shop_sell_price` VALUES ('183', 'å¹»č±”ä¹å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('184', 'čµ¤ē°ä¹å¼', '3000');
INSERT INTO `shop_sell_price` VALUES ('185', 'ę¶é­åå­å¼', '3500');
INSERT INTO `shop_sell_price` VALUES ('186', 'ēäŗå¾åå­å¼', '2500');
INSERT INTO `shop_sell_price` VALUES ('187', 'ęęÆå”å·“å¾·åå­å¼', '10000');
INSERT INTO `shop_sell_price` VALUES ('188', 'ęęÆå”å·“å¾·éåå­å¼', '10000');
INSERT INTO `shop_sell_price` VALUES ('189', 'ęé»åå­å¼', '10000');
INSERT INTO `shop_sell_price` VALUES ('190', 'ę²åä¹å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('191', 'ę°“ä¹ē«ē“', '1');
INSERT INTO `shop_sell_price` VALUES ('192', 'ę°“ē²¾ēµä¹å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('193', 'éęē²', '1');
INSERT INTO `shop_sell_price` VALUES ('194', 'ēéęē²', '1');
INSERT INTO `shop_sell_price` VALUES ('206', 'é»ęē²¾ēµä¹å', '1');
INSERT INTO `shop_sell_price` VALUES ('208', 'é­ę³ē²¾ēµē­å', '1');
INSERT INTO `shop_sell_price` VALUES ('209', 'ä½č“Øē²¾ēµē­å', '1000');
INSERT INTO `shop_sell_price` VALUES ('211', 'ē¬č§å½ä¹č§', '2');
INSERT INTO `shop_sell_price` VALUES ('214', 'IDļ¼å¦ē²¾å¼', '2');
INSERT INTO `shop_sell_price` VALUES ('215', 'ęę·ē²¾ēµå¼', '2');
INSERT INTO `shop_sell_price` VALUES ('216', 'å¦ē²¾ä¹å¼', '2');
INSERT INTO `shop_sell_price` VALUES ('219', 'é©¬ę®åēę©ē½', '2');
INSERT INTO `shop_sell_price` VALUES ('220', 'ę³åøä¹ę', '2');
INSERT INTO `shop_sell_price` VALUES ('223', 'ē„ē§é­ę', '2');
INSERT INTO `shop_sell_price` VALUES ('224', 'č±”ēå”é­ę', '2');
INSERT INTO `shop_sell_price` VALUES ('225', 'ēęä¹å', '2');
INSERT INTO `shop_sell_price` VALUES ('226', 'éŖå£«ä¹å', '2');
INSERT INTO `shop_sell_price` VALUES ('228', 'å£ęå£«ä¹å', '0');
INSERT INTO `shop_sell_price` VALUES ('230', 'å± ęēč”č²å·Øå', '0');
INSERT INTO `shop_sell_price` VALUES ('20003', 'é¢éå¤“ē', '2500');
INSERT INTO `shop_sell_price` VALUES ('20006', 'éŖå£«é¢ē²', '2500');
INSERT INTO `shop_sell_price` VALUES ('20011', 'ęé­ę³å¤“ē', '1500');
INSERT INTO `shop_sell_price` VALUES ('20013', 'ęę·é­ę³å¤“ē', '11000');
INSERT INTO `shop_sell_price` VALUES ('20014', 'ę²»ęé­ę³å¤“ē', '7500');
INSERT INTO `shop_sell_price` VALUES ('20015', 'åéé­ę³å¤“ē', '9000');
INSERT INTO `shop_sell_price` VALUES ('20018', 'é©¬åŗå°ä¹åø½', '5000');
INSERT INTO `shop_sell_price` VALUES ('20019', 'ēå ', '1000');
INSERT INTO `shop_sell_price` VALUES ('20020', 'ę­¦å®å¤“ē', '15000');
INSERT INTO `shop_sell_price` VALUES ('20021', 'ē²¾ēµęę·å¤“ē', '1');
INSERT INTO `shop_sell_price` VALUES ('20022', 'å·“å°å”å¤“ē', '2500');
INSERT INTO `shop_sell_price` VALUES ('20023', 'é£ä¹å¤“ē', '2500');
INSERT INTO `shop_sell_price` VALUES ('20024', 'åēå¤“ē', '2500');
INSERT INTO `shop_sell_price` VALUES ('20025', 'å·“åēä¹åø½', '2500');
INSERT INTO `shop_sell_price` VALUES ('20026', 'å¤ä¹č§é', '110');
INSERT INTO `shop_sell_price` VALUES ('20027', 'ēŗ¢éŖå£«å¤“å·¾', '2500');
INSERT INTO `shop_sell_price` VALUES ('20028', 'č±”ēå”ē®å¤“ē', '0');
INSERT INTO `shop_sell_price` VALUES ('20029', 'č„æēä¹åø½', '2500');
INSERT INTO `shop_sell_price` VALUES ('20030', 'ē„å®å¤“é„°', '3000');
INSERT INTO `shop_sell_price` VALUES ('20031', 'ē«ē°ä¹å½±å¤“ē', '2500');
INSERT INTO `shop_sell_price` VALUES ('20032', 'é»ęå¤“é„°', '2500');
INSERT INTO `shop_sell_price` VALUES ('20033', 'č¾å°ē©ēē„ē¦', '5000');
INSERT INTO `shop_sell_price` VALUES ('20034', 'ę¬§č„æęÆå¤“ē', '10');
INSERT INTO `shop_sell_price` VALUES ('20035', 'ē²¾ēµē®ē', '3000');
INSERT INTO `shop_sell_price` VALUES ('20036', 'å¤č§å¤“ē', '6700');
INSERT INTO `shop_sell_price` VALUES ('20037', 'ēå®ēé¢å·', '30');
INSERT INTO `shop_sell_price` VALUES ('20038', 'é¶éē®åø½', '0');
INSERT INTO `shop_sell_price` VALUES ('20039', 'ē²¾ēµä½č“Øå¤“ē', '30');
INSERT INTO `shop_sell_price` VALUES ('20040', 'å”å£«ä¼Æä¹åø½', '2500');
INSERT INTO `shop_sell_price` VALUES ('20041', 'åē¹å¤“ē', '15000');
INSERT INTO `shop_sell_price` VALUES ('20042', 'čµå°¼ęÆå¤“ē®', '15000');
INSERT INTO `shop_sell_price` VALUES ('20043', 'é¢ē', '100');
INSERT INTO `shop_sell_price` VALUES ('20044', 'čęµ·č“¼å¤“å·¾', '15000');
INSERT INTO `shop_sell_price` VALUES ('20045', 'éŖ·é«å¤“ē', '0');
INSERT INTO `shop_sell_price` VALUES ('20046', 'åēåø½', '0');
INSERT INTO `shop_sell_price` VALUES ('20047', 'åēå¤“å„', '0');
INSERT INTO `shop_sell_price` VALUES ('20048', 'ę··ę²å¤“ē', '1000');
INSERT INTO `shop_sell_price` VALUES ('20049', 'å·Øčå„³ēēéēæč', '1000');
INSERT INTO `shop_sell_price` VALUES ('20050', 'å·Øčå„³ēēé¶ēæč', '1000');
INSERT INTO `shop_sell_price` VALUES ('20051', 'åäø»ēåØäø„', '2500');
INSERT INTO `shop_sell_price` VALUES ('20052', 'ä¾åęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('20053', 'ē¼ē®ęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('20054', 'å°å±ę§ęēÆ·', '25000');
INSERT INTO `shop_sell_price` VALUES ('20055', 'ēé£ęēÆ·', '2500');
INSERT INTO `shop_sell_price` VALUES ('20056', 'ęé­ę³ęēÆ·', '200');
INSERT INTO `shop_sell_price` VALUES ('20057', 'å„ę³åēęēÆ·', '25000');
INSERT INTO `shop_sell_price` VALUES ('20058', 'ę­¦å®ęēÆ·', '25000');
INSERT INTO `shop_sell_price` VALUES ('20059', 'ę°“å±ę§ęēÆ·', '25000');
INSERT INTO `shop_sell_price` VALUES ('20060', 'čęµ·č“¼ęēÆ·', '15000');
INSERT INTO `shop_sell_price` VALUES ('20061', 'é£å±ę§ęēÆ·', '15000');
INSERT INTO `shop_sell_price` VALUES ('20062', 'ēé­ēč”åęēÆ·', '35000');
INSERT INTO `shop_sell_price` VALUES ('20063', 'äæę¤čęēÆ·', '15000');
INSERT INTO `shop_sell_price` VALUES ('20064', 'ēŗ¢éŖå£«ä¹ęēÆ·', '2000');
INSERT INTO `shop_sell_price` VALUES ('20065', 'ēŗ¢č²ęēÆ·', '1000');
INSERT INTO `shop_sell_price` VALUES ('20066', 'é»čē®ęēÆ·', '1000');
INSERT INTO `shop_sell_price` VALUES ('20067', 'ē„å®ęēÆ·', '150000');
INSERT INTO `shop_sell_price` VALUES ('20068', 'äŗäøéŖå£«å¢ę«č©', '15000');
INSERT INTO `shop_sell_price` VALUES ('20069', 'ē«ē°ä¹å½±ęēÆ·', '10000');
INSERT INTO `shop_sell_price` VALUES ('20070', 'é»ęęēÆ·', '20000');
INSERT INTO `shop_sell_price` VALUES ('20071', 'ē«å±ę§ęēÆ·', '15000');
INSERT INTO `shop_sell_price` VALUES ('20072', 'ę¬§č„æęÆęēÆ·', '10');
INSERT INTO `shop_sell_price` VALUES ('20073', 'ē²¾ēµęēÆ·', '500');
INSERT INTO `shop_sell_price` VALUES ('20074', 'é¶åęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('20075', 'ę­»äŗ”ęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('20076', 'å č½ęēÆ·', '25000');
INSERT INTO `shop_sell_price` VALUES ('20077', 'éčŗ«ęēÆ·', '15000');
INSERT INTO `shop_sell_price` VALUES ('20078', 'ę··ę²ęēÆ·', '25000');
INSERT INTO `shop_sell_price` VALUES ('20079', 'åøč”é¬¼ęēÆ·', '25000');
INSERT INTO `shop_sell_price` VALUES ('20080', 'ä½ē§»ęēÆ·', '5000');
INSERT INTO `shop_sell_price` VALUES ('20081', 'ę²¹åøęēÆ·', '400');
INSERT INTO `shop_sell_price` VALUES ('20082', 'č±”ēå”Tę¤', '0');
INSERT INTO `shop_sell_price` VALUES ('20083', 'ē«ē°ä¹å½±č”¬č”«', '1000');
INSERT INTO `shop_sell_price` VALUES ('20084', 'ē²¾ēµTę¤', '1300');
INSERT INTO `shop_sell_price` VALUES ('20085', 'Tę¤', '500');
INSERT INTO `shop_sell_price` VALUES ('20086', 'ęŗåTę¤', '50000');
INSERT INTO `shop_sell_price` VALUES ('20087', 'ęę·Tę¤', '50000');
INSERT INTO `shop_sell_price` VALUES ('20088', 'åéTę¤', '50000');
INSERT INTO `shop_sell_price` VALUES ('20089', 'å°č¤ē²', '100');
INSERT INTO `shop_sell_price` VALUES ('20090', 'ē®čåæ', '1');
INSERT INTO `shop_sell_price` VALUES ('20091', 'é¢ééå±ēē²', '35000');
INSERT INTO `shop_sell_price` VALUES ('20092', 'å¤čēē®ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20093', 'å¤čēéæč¢', '15000');
INSERT INTO `shop_sell_price` VALUES ('20094', 'å¤čēé³ē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20095', 'å¤čēéå±ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20096', 'ēÆē²', '100');
INSERT INTO `shop_sell_price` VALUES ('20097', 'ęØē²', '600');
INSERT INTO `shop_sell_price` VALUES ('20098', 'é»ęę ęčēē²', '1000');
INSERT INTO `shop_sell_price` VALUES ('20099', 'ę¶é­ēē²', '2500');
INSERT INTO `shop_sell_price` VALUES ('20100', 'ę­»äŗ”éŖå£«ēē²', '5000');
INSERT INTO `shop_sell_price` VALUES ('20101', 'ē®ē²', '6250');
INSERT INTO `shop_sell_price` VALUES ('20102', 'ęęÆå”å·“å¾·ē®ēē²', '750');
INSERT INTO `shop_sell_price` VALUES ('20103', 'ęęÆå”å·“å¾·éæč¢', '750');
INSERT INTO `shop_sell_price` VALUES ('20104', 'ęęÆå”å·“å¾·é¶éē®ēē²', '500');
INSERT INTO `shop_sell_price` VALUES ('20105', 'ęęÆå”å·“å¾·é¾ē²', '2500');
INSERT INTO `shop_sell_price` VALUES ('20106', 'č¾ééæč¢', '1');
INSERT INTO `shop_sell_price` VALUES ('20107', 'å·«å¦ęēÆ·', '6000');
INSERT INTO `shop_sell_price` VALUES ('20108', 'å¤ä»£é£é¾é³ēē²', '10000');
INSERT INTO `shop_sell_price` VALUES ('20109', 'ę³ä»¤åēéæč¢', '10000');
INSERT INTO `shop_sell_price` VALUES ('20110', 'ęé­ę³é¾ē²', '4000');
INSERT INTO `shop_sell_price` VALUES ('20111', 'ę³åøéæč¢', '2500');
INSERT INTO `shop_sell_price` VALUES ('20112', 'ę¼ę³¢å¤å„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20113', 'ę­¦å®ę¤é ', '15000');
INSERT INTO `shop_sell_price` VALUES ('20114', 'ē»µč“Øéæč¢', '500');
INSERT INTO `shop_sell_price` VALUES ('20115', 'č¤ē²', '1000');
INSERT INTO `shop_sell_price` VALUES ('20116', 'å·“å°å”ēē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('20117', 'å·“é£ē¹ēē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('20118', 'åēēē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('20119', 'å¤ä»£ē«é¾é³ēē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('20120', 'ē®ēē²', '1000');
INSERT INTO `shop_sell_price` VALUES ('20121', 'é»ę³åøéæč¢', '0');
INSERT INTO `shop_sell_price` VALUES ('20122', 'é³ē²', '1000');
INSERT INTO `shop_sell_price` VALUES ('20123', 'å¤å½åøéæč¢', '1000');
INSERT INTO `shop_sell_price` VALUES ('20124', 'éŖ·é«ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('20125', 'é¾ē²', '3000');
INSERT INTO `shop_sell_price` VALUES ('20126', 'č±”ēå”ē®ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('20127', 'ę°“é¾é³ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20128', 'ę°“ę¶ēē²', '3500');
INSERT INTO `shop_sell_price` VALUES ('20129', 'ē„å®ę³č¢', '15000');
INSERT INTO `shop_sell_price` VALUES ('20130', 'å¤ä»£å°é¾é³ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20131', 'ē«ē°ä¹å½±ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20132', 'é»ęę«č©', '450');
INSERT INTO `shop_sell_price` VALUES ('20133', 'é»ęę§č”čéå±ēē²', '5000');
INSERT INTO `shop_sell_price` VALUES ('20134', 'å°ä¹å„³ēé­åē¤¼ę', '5000');
INSERT INTO `shop_sell_price` VALUES ('20135', 'ę¬§č„æęÆēÆē²', '100');
INSERT INTO `shop_sell_price` VALUES ('20136', 'ę¬§č„æęÆé¾ē²', '400');
INSERT INTO `shop_sell_price` VALUES ('20137', 'ē²¾ēµé¾ē²', '3000');
INSERT INTO `shop_sell_price` VALUES ('20138', 'ē²¾ēµéå±ēē²', '9000');
INSERT INTO `shop_sell_price` VALUES ('20139', 'ē²¾ēµę¤čøéå±ęæ', '1040');
INSERT INTO `shop_sell_price` VALUES ('20140', 'č¢«éåæēē®ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('20141', 'č¢«éåæēéæč¢', '0');
INSERT INTO `shop_sell_price` VALUES ('20142', 'č¢«éåæēé³ē²', '0');
INSERT INTO `shop_sell_price` VALUES ('20143', 'č¢«éåæēéå±ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('20144', 'ę­»äŗ”ēē²', '5000');
INSERT INTO `shop_sell_price` VALUES ('20145', 'ē”¬ē®čåæ', '1');
INSERT INTO `shop_sell_price` VALUES ('20146', 'å°é¾é³ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20147', 'é¶éē®ē²', '150');
INSERT INTO `shop_sell_price` VALUES ('20148', 'é¶éē®čåæ', '1');
INSERT INTO `shop_sell_price` VALUES ('20149', 'ééēē²', '8000');
INSERT INTO `shop_sell_price` VALUES ('20150', 'åē¹ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20151', 'čµå°¼ęÆęēÆ·', '15000');
INSERT INTO `shop_sell_price` VALUES ('20152', 'å č½éæč¢', '15000');
INSERT INTO `shop_sell_price` VALUES ('20153', 'å¤ä»£ę°“é¾é³ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20154', 'éå±ēē²', '18500');
INSERT INTO `shop_sell_price` VALUES ('20155', 'čęµ·č“¼ē®ēē²', '1500');
INSERT INTO `shop_sell_price` VALUES ('20156', 'é£é¾é³ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20157', 'éå±čč£ē®ēē²', '5000');
INSERT INTO `shop_sell_price` VALUES ('20158', 'ę··ę²ę³č¢', '15000');
INSERT INTO `shop_sell_price` VALUES ('20159', 'ē«é¾é³ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20160', 'é»éæčéæč¢', '15000');
INSERT INTO `shop_sell_price` VALUES ('20161', 'å¹»č±”ēē²', '15000');
INSERT INTO `shop_sell_price` VALUES ('20162', 'ē®ęå„', '200');
INSERT INTO `shop_sell_price` VALUES ('20163', 'é¢éęå„', '25000');
INSERT INTO `shop_sell_price` VALUES ('20164', 'å½±å­ęå„', '2500');
INSERT INTO `shop_sell_price` VALUES ('20165', 'ę¶é­ęå„', '2555');
INSERT INTO `shop_sell_price` VALUES ('20166', 'ę­»äŗ”éŖå£«ęå„', '5000');
INSERT INTO `shop_sell_price` VALUES ('20167', 'č„č“ēęå„', '2500');
INSERT INTO `shop_sell_price` VALUES ('20168', 'ę­¦å®ęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20169', 'å·“å°å”ęå„', '5000');
INSERT INTO `shop_sell_price` VALUES ('20170', 'åēęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20171', 'äæę¤čęå„', '4500');
INSERT INTO `shop_sell_price` VALUES ('20172', 'ę°“ēµęå„', '2500');
INSERT INTO `shop_sell_price` VALUES ('20173', 'č±”ēå”ē®ęå„', '0');
INSERT INTO `shop_sell_price` VALUES ('20174', 'éŖäŗŗęå„', '5000');
INSERT INTO `shop_sell_price` VALUES ('20175', 'ę°“ę¶ęå„', '2500');
INSERT INTO `shop_sell_price` VALUES ('20176', 'ē„å®ęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20177', 'å°ēµęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20178', 'ęęåēęå„', '10000');
INSERT INTO `shop_sell_price` VALUES ('20179', 'ē«ē°ä¹å½±ęå„', '10000');
INSERT INTO `shop_sell_price` VALUES ('20180', 'é»ęęå„', '10000');
INSERT INTO `shop_sell_price` VALUES ('20181', 'ē«ēµęå„', '10000');
INSERT INTO `shop_sell_price` VALUES ('20182', 'ęå„', '1500');
INSERT INTO `shop_sell_price` VALUES ('20183', 'ę­»äŗ”ęå„', '10000');
INSERT INTO `shop_sell_price` VALUES ('20184', 'åē¹ęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20185', 'čµå°¼ęÆęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20186', 'å č½ęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20187', 'ęåēéæęå„', '15000');
INSERT INTO `shop_sell_price` VALUES ('20188', 'čęµ·č“¼ęå„', '1500');
INSERT INTO `shop_sell_price` VALUES ('20189', 'é£ēµęå„', '2500');
INSERT INTO `shop_sell_price` VALUES ('20190', 'ę··ę²ęå„', '2351');
INSERT INTO `shop_sell_price` VALUES ('20191', 'čē²', '3500');
INSERT INTO `shop_sell_price` VALUES ('20192', 'ē®éæé“', '1000');
INSERT INTO `shop_sell_price` VALUES ('20193', 'ē®åé', '200');
INSERT INTO `shop_sell_price` VALUES ('20194', 'é¢ééæé“', '6800');
INSERT INTO `shop_sell_price` VALUES ('20195', 'å½±å­éæé“', '2500');
INSERT INTO `shop_sell_price` VALUES ('20196', 'é»ęę ęčéæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20197', 'ę¶é­éæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20198', 'ę­»äŗ”éŖå£«éæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20199', 'ęęÆå”å·“å¾·éæé“', '1000');
INSERT INTO `shop_sell_price` VALUES ('20200', 'é­å½åēéæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20201', 'ę­¦å®éæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20202', 'å·“å°å”éæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20203', 'åēéæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20204', 'å·“åęÆéæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20205', 'éæé“', '1250');
INSERT INTO `shop_sell_price` VALUES ('20206', 'č±”ēå”ē®åé', '0');
INSERT INTO `shop_sell_price` VALUES ('20207', 'ę·±ę°“éæé“', '2500');
INSERT INTO `shop_sell_price` VALUES ('20208', 'ē„å®éæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20209', 'ē«ē°ä¹å½±éæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('20210', 'é»ęéæé“', '2500');
INSERT INTO `shop_sell_price` VALUES ('20211', 'å°ä¹å„³ēé­ååé', '10000');
INSERT INTO `shop_sell_price` VALUES ('20212', 'é¶éē®åé', '452');
INSERT INTO `shop_sell_price` VALUES ('20213', 'ē­ē»é“', '150');
INSERT INTO `shop_sell_price` VALUES ('20214', 'åē¹éæé“', '15000');
INSERT INTO `shop_sell_price` VALUES ('20215', 'čµå°¼ęÆéæé“', '15000');
INSERT INTO `shop_sell_price` VALUES ('20216', 'å č½éæé“', '15000');
INSERT INTO `shop_sell_price` VALUES ('20217', 'čęµ·č“¼éæé“', '2500');
INSERT INTO `shop_sell_price` VALUES ('20218', 'é»éæčåé', '3500');
INSERT INTO `shop_sell_price` VALUES ('20219', 'ē®ē¾ē', '1');
INSERT INTO `shop_sell_price` VALUES ('20220', 'é¢éē¾ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('20221', 'éŖ·é«ē¾ē', '1000');
INSERT INTO `shop_sell_price` VALUES ('20222', 'ęØē¾', '30');
INSERT INTO `shop_sell_price` VALUES ('20223', 'ä¾ååē¾', '100');
INSERT INTO `shop_sell_price` VALUES ('20224', 'ęęÆå”å·“å¾·åē¾', '500');
INSERT INTO `shop_sell_price` VALUES ('20225', 'ēé£ę°“ę¶ē', '5647');
INSERT INTO `shop_sell_price` VALUES ('20226', 'é­ę³č½éä¹ä¹¦', '5647');
INSERT INTO `shop_sell_price` VALUES ('20227', 'ę¢ęčē¾ē', '10000');
INSERT INTO `shop_sell_price` VALUES ('20228', 'ę­¦å®ä¹ē¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20229', 'åå°ä¹ē¾', '5000');
INSERT INTO `shop_sell_price` VALUES ('20230', 'ēŗ¢éŖå£«ē¾ē', '5000');
INSERT INTO `shop_sell_price` VALUES ('20231', 'å”ē¾', '3500');
INSERT INTO `shop_sell_price` VALUES ('20232', 'č±”ēå”ē®ē¾ē', '0');
INSERT INTO `shop_sell_price` VALUES ('20233', 'ē„å®é­ę³ä¹¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20234', 'äæ”åæµä¹ē¾', '2500');
INSERT INTO `shop_sell_price` VALUES ('20235', 'ä¼åØä¹ē¾', '2500');
INSERT INTO `shop_sell_price` VALUES ('20236', 'ē²¾ēµē¾ē', '2500');
INSERT INTO `shop_sell_price` VALUES ('20237', 'éæåęµ·ē¾ē', '60');
INSERT INTO `shop_sell_price` VALUES ('20238', 'é¶éŖå£«ä¹ē¾', '15000');
INSERT INTO `shop_sell_price` VALUES ('20239', 'å°ē¾ē', '30');
INSERT INTO `shop_sell_price` VALUES ('20240', 'ę­»äŗ”ä¹ē¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20241', 'é¶éē®ē¾', '1');
INSERT INTO `shop_sell_price` VALUES ('20242', 'å¤§ē¾ē', '600');
INSERT INTO `shop_sell_price` VALUES ('20243', 'éčä¹č°·é”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('20244', 'å°åé­åé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20245', 'å°åęę·é”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20246', 'å°ååéé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20247', 'å°åęŗåé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20248', 'å°åē²¾ē„é”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20249', 'å°åä½č“Øé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20250', 'åå½¢ęŖé¦é¢é”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20251', 'é½ä½©ę°čÆŗēé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20252', 'č¾éé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20253', 'ę³ä»¤åēä¹ē¼', '10000');
INSERT INTO `shop_sell_price` VALUES ('20254', 'é­åé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20255', 'å„ę³åēä¹ę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20256', 'ęę·é”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20257', 'é»ę³åøé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20258', 'å¤å½åøé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20259', 'ę­å±ä¹å²é”¹é¾', '50');
INSERT INTO `shop_sell_price` VALUES ('20260', 'č¾čäøé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20261', 'ē«ē°ä¹å½±é”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20262', 'č„å»ę»”åéé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20263', 'å¦é­ęå£«ę¤čŗ«ē¬¦', '2500');
INSERT INTO `shop_sell_price` VALUES ('20264', 'åéé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20265', 'ēµé­ēå°č®°', '2500');
INSERT INTO `shop_sell_price` VALUES ('20266', 'ęŗåé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20267', 'ē²¾ē„é”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20268', 'ä½č“Øé”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20269', 'éŖ·é«é”¹é¾', '10000');
INSERT INTO `shop_sell_price` VALUES ('20270', 'é½ä½©ę°čÆŗēé”¹é¾1', '10000');
INSERT INTO `shop_sell_price` VALUES ('20277', 'åå½¢ęŖé¦é¢ä¹ę(å³)', '10000');
INSERT INTO `shop_sell_price` VALUES ('20278', 'åå½¢ęŖé¦é¢ä¹ę(å·¦)', '10000');
INSERT INTO `shop_sell_price` VALUES ('20279', 'č¾éęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20280', 'ē­é­ęę', '5000');
INSERT INTO `shop_sell_price` VALUES ('20281', 'åå½¢ę§å¶ęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20282', 'č±”ēå”ęę', '1');
INSERT INTO `shop_sell_price` VALUES ('20284', 'å¬å¤ę§å¶ęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20285', 'ę°“ēµęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20286', 'å®ę¤å¢ęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20287', 'å®ę¤čēęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20288', 'ä¼ éę§å¶ęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20289', 'ę·±ęøęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20290', 'ē«ē°ä¹å½±ęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20291', 'č„å»ę»”åéęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20293', 'åčÆåēé»ē³ęę', '2500');
INSERT INTO `shop_sell_price` VALUES ('20294', 'åčÆåēēŗ¢å®ē³ęę', '2500');
INSERT INTO `shop_sell_price` VALUES ('20295', 'åčÆåēčå®ē³ęę', '2500');
INSERT INTO `shop_sell_price` VALUES ('20296', 'åčÆåēē»æå®ē³ęę', '2500');
INSERT INTO `shop_sell_price` VALUES ('20297', 'ē²¾ē„ēå°č®°', '2500');
INSERT INTO `shop_sell_price` VALUES ('20298', 'ę“å°¼ęÆęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20299', 'ę­»äŗ”ēčŖēŗ¦', '2500');
INSERT INTO `shop_sell_price` VALUES ('20300', 'å°ēµęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20301', 'čŗ«ä½ēå°č®°', '2500');
INSERT INTO `shop_sell_price` VALUES ('20302', 'é£ēµęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20303', 'ęé­ęę', '2500');
INSERT INTO `shop_sell_price` VALUES ('20304', 'ē«ēµęę', '2500');
INSERT INTO `shop_sell_price` VALUES ('20305', 'ęäŗŗęę', '2500');
INSERT INTO `shop_sell_price` VALUES ('20306', 'å°åčŗ«ä½č°åø¦', '5000');
INSERT INTO `shop_sell_price` VALUES ('20307', 'å°åēµé­č°åø¦', '5000');
INSERT INTO `shop_sell_price` VALUES ('20308', 'å°åē²¾ē„č°åø¦', '5000');
INSERT INTO `shop_sell_price` VALUES ('20309', 'åęčŗ«ä½č°åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20310', 'åęēµé­č°åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20311', 'åęē²¾ē„č°åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20312', 'čŗ«ä½č°åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20313', 'é»ęč°åø¦', '1000');
INSERT INTO `shop_sell_price` VALUES ('20314', 'å¤ä»£å·Øäŗŗęę', '10000');
INSERT INTO `shop_sell_price` VALUES ('20315', 'č„å»ę»”åéč°åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20316', 'ēµé­č°åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20317', 'ę¬§åē®åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20318', 'åę¢ē®åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20319', 'ē²¾ē„č°åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20320', 'ę³°å¦ē®åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20321', 'å¤ē½ē®åø¦', '10000');
INSERT INTO `shop_sell_price` VALUES ('20322', 'ē®å¤¹å', '10');
INSERT INTO `shop_sell_price` VALUES ('20342', 'ę­»ē„ę«č©', '0');
INSERT INTO `shop_sell_price` VALUES ('20343', 'ę¼ę³¢ååø½', '0');
INSERT INTO `shop_sell_price` VALUES ('20344', 'ę¼ę³¢ååø½', '0');
INSERT INTO `shop_sell_price` VALUES ('20345', 'ęÆå©ēé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('20346', 'ęµ£ēēé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('20347', 'é©ę', '0');
INSERT INTO `shop_sell_price` VALUES ('20348', 'åę', '0');
INSERT INTO `shop_sell_price` VALUES ('20349', 'ēē¬é”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('20350', 'éŖäŗŗēé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('20351', 'éŖäŗŗēč”čå', '0');
INSERT INTO `shop_sell_price` VALUES ('20352', 'éŖäŗŗēé“å­', '0');
INSERT INTO `shop_sell_price` VALUES ('20353', 'å£ęå£«ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('20354', 'å£ęå£«éæé“', '0');
INSERT INTO `shop_sell_price` VALUES ('20355', 'å£ęå£«ęå„', '0');
INSERT INTO `shop_sell_price` VALUES ('20356', 'å£ęå£«å¤“ē', '0');
INSERT INTO `shop_sell_price` VALUES ('20357', 'å£ęå£«ē¾ē', '0');
INSERT INTO `shop_sell_price` VALUES ('30001', 'čÆåēę­»äŗ”éŖå£«å¤“ē', '10000');
INSERT INTO `shop_sell_price` VALUES ('30002', 'čÆåēę­»äŗ”éŖå£«ēē²', '10000');
INSERT INTO `shop_sell_price` VALUES ('30003', 'čÆåēę­»äŗ”éŖå£«ęå„', '10000');
INSERT INTO `shop_sell_price` VALUES ('30004', 'čÆåēę­»äŗ”éŖå£«éæé“', '10000');
INSERT INTO `shop_sell_price` VALUES ('30005', 'čē„éŖå£«å¤“ē', '0');
INSERT INTO `shop_sell_price` VALUES ('30006', 'čē„éŖå£«ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('30007', 'čē„éŖå£«ęå„', '0');
INSERT INTO `shop_sell_price` VALUES ('30008', 'čē„éŖå£«éæé“', '0');
INSERT INTO `shop_sell_price` VALUES ('40001', 'ēÆ', '5');
INSERT INTO `shop_sell_price` VALUES ('40002', 'ēÆē¬¼', '50');
INSERT INTO `shop_sell_price` VALUES ('40003', 'ēÆę²¹', '15');
INSERT INTO `shop_sell_price` VALUES ('40006', 'åé ęŖē©é­ę', '1000');
INSERT INTO `shop_sell_price` VALUES ('40007', 'éŖēµé­ę', '1000');
INSERT INTO `shop_sell_price` VALUES ('40008', 'åå½¢é­ę', '1000');
INSERT INTO `shop_sell_price` VALUES ('40009', 'é©±éé­ę', '150');
INSERT INTO `shop_sell_price` VALUES ('40010', 'ę²»ęčÆę°“', '18');
INSERT INTO `shop_sell_price` VALUES ('40011', 'å¼ŗåę²»ęčÆę°“', '100');
INSERT INTO `shop_sell_price` VALUES ('40012', 'ē»ęę²»ęčÆę°“', '300');
INSERT INTO `shop_sell_price` VALUES ('40013', 'čŖęå éčÆę°“', '100');
INSERT INTO `shop_sell_price` VALUES ('40014', 'åę¢čÆę°“', '400');
INSERT INTO `shop_sell_price` VALUES ('40015', 'å éé­ååå¤čÆę°“', '700');
INSERT INTO `shop_sell_price` VALUES ('40016', 'ęéčÆę°“', '300');
INSERT INTO `shop_sell_price` VALUES ('40017', 'č§£ęÆčÆę°“', '35');
INSERT INTO `shop_sell_price` VALUES ('40018', 'å¼ŗå ē»æč²čÆę°“', '750');
INSERT INTO `shop_sell_price` VALUES ('40019', 'ęµē¼©ä½åę¢å¤å', '27');
INSERT INTO `shop_sell_price` VALUES ('40020', 'ęµē¼©å¼ŗåä½åę¢å¤å', '150');
INSERT INTO `shop_sell_price` VALUES ('40021', 'ęµē¼©ē»ęä½åę¢å¤å', '450');
INSERT INTO `shop_sell_price` VALUES ('40022', 'å¤ä»£ä½åę¢å¤å', '31');
INSERT INTO `shop_sell_price` VALUES ('40023', 'å¤ä»£å¼ŗåä½åę¢å¤å', '187');
INSERT INTO `shop_sell_price` VALUES ('40024', 'å¤ä»£ē»ęä½åę¢å¤å', '495');
INSERT INTO `shop_sell_price` VALUES ('40025', 'å¤±ęčÆę°“', '1');
INSERT INTO `shop_sell_price` VALUES ('40032', 'ä¼åØēē„ē¦', '150');
INSERT INTO `shop_sell_price` VALUES ('40044', 'é»ē³', '500');
INSERT INTO `shop_sell_price` VALUES ('40045', 'ēŗ¢å®ē³', '500');
INSERT INTO `shop_sell_price` VALUES ('40046', 'čå®ē³', '500');
INSERT INTO `shop_sell_price` VALUES ('40047', 'ē»æå®ē³', '500');
INSERT INTO `shop_sell_price` VALUES ('40048', 'åč“Øé»ē³', '1000');
INSERT INTO `shop_sell_price` VALUES ('40049', 'åč“Øēŗ¢å®ē³', '1000');
INSERT INTO `shop_sell_price` VALUES ('40050', 'åč“Øčå®ē³', '1000');
INSERT INTO `shop_sell_price` VALUES ('40051', 'åč“Øē»æå®ē³', '1000');
INSERT INTO `shop_sell_price` VALUES ('40052', 'é«åč“Øé»ē³', '5000');
INSERT INTO `shop_sell_price` VALUES ('40053', 'é«åč“Øēŗ¢å®ē³', '5000');
INSERT INTO `shop_sell_price` VALUES ('40054', 'é«åč“Øčå®ē³', '5000');
INSERT INTO `shop_sell_price` VALUES ('40055', 'é«åč“Øē»æå®ē³', '5000');
INSERT INTO `shop_sell_price` VALUES ('40057', 'ę¼ęµ®ä¹ē¼č', '100');
INSERT INTO `shop_sell_price` VALUES ('40059', null, '2');
INSERT INTO `shop_sell_price` VALUES ('40060', null, '3');
INSERT INTO `shop_sell_price` VALUES ('40061', null, '3');
INSERT INTO `shop_sell_price` VALUES ('40062', null, '3');
INSERT INTO `shop_sell_price` VALUES ('40064', null, '3');
INSERT INTO `shop_sell_price` VALUES ('40065', null, '2');
INSERT INTO `shop_sell_price` VALUES ('40069', null, '3');
INSERT INTO `shop_sell_price` VALUES ('40072', null, '10');
INSERT INTO `shop_sell_price` VALUES ('40074', null, '15500');
INSERT INTO `shop_sell_price` VALUES ('40079', null, '60');
INSERT INTO `shop_sell_price` VALUES ('40087', null, '37500');
INSERT INTO `shop_sell_price` VALUES ('40088', null, '650');
INSERT INTO `shop_sell_price` VALUES ('40089', null, '500');
INSERT INTO `shop_sell_price` VALUES ('40100', 'ē¬é“ē§»åØå·č½“', '35');
INSERT INTO `shop_sell_price` VALUES ('40101', 'ęå®ä¼ éå·č½“(éčä¹č°·)', '500');
INSERT INTO `shop_sell_price` VALUES ('40102', 'äŗäøęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40103', 'ę¬§ēęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40104', 'å²ę¢ä¹å”ē§»åØå·č½“(11F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40105', 'å²ę¢ä¹å”ē§»åØå·č½“(21F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40106', 'å²ę¢ä¹å”ē§»åØå·č½“(31F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40107', 'å²ę¢ä¹å”ē§»åØå·č½“(41F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40108', 'å²ę¢ä¹å”ē§»åØå·č½“(51F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40109', 'å²ę¢ä¹å”ē§»åØå·č½“(61F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40110', 'å²ę¢ä¹å”ē§»åØå·č½“(71F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40111', 'å²ę¢ä¹å”ē§»åØå·č½“(81F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40112', 'å²ę¢ä¹å”ē§»åØå·č½“(91F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40113', 'å²ę¢ä¹å”ē§»åØå·č½“(100F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40114', 'å¦ę£®ęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40115', 'é£ęØęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40116', 'åØé”æęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40117', 'é¶éŖå£«ęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40118', 'ééčęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40119', 'č§£é¤ååēå·č½“', '50');
INSERT INTO `shop_sell_price` VALUES ('40120', 'ęµęåęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40121', 'ęå®ä¼ é(ēæē©ę“ē©“)', '500');
INSERT INTO `shop_sell_price` VALUES ('40122', 'čÆē¹ęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40123', 'ęµ·é³ęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40124', 'č”ēä¼ éå·č½“', '60');
INSERT INTO `shop_sell_price` VALUES ('40125', 'ēę³ęåŗęå®ä¼ éå·č½“', '500');
INSERT INTO `shop_sell_price` VALUES ('40126', 'é“å®å·č½“', '25');
INSERT INTO `shop_sell_price` VALUES ('40127', 'åÆ¹ēē²ę½ę³ēå¹»č±”å·č½“', '0');
INSERT INTO `shop_sell_price` VALUES ('40128', 'åÆ¹ę­¦åØę½ę³ēå¹»č±”å·č½“', '0');
INSERT INTO `shop_sell_price` VALUES ('40129', 'å„å®ēå·č½“', '0');
INSERT INTO `shop_sell_price` VALUES ('40130', 'éä¾ēå·č½“', '0');
INSERT INTO `shop_sell_price` VALUES ('40131', 'ēå°å¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('40132', 'é£é²å å¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('40133', 'é½č¾¾ēęå¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('40134', 'ē½å­å¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('40135', 'éæåå·“å¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('40136', '3čæåēē«', '460');
INSERT INTO `shop_sell_price` VALUES ('40137', '6čæåēē«', '2180');
INSERT INTO `shop_sell_price` VALUES ('40138', 'é«ēŗ§6čæåēē«', '1050');
INSERT INTO `shop_sell_price` VALUES ('40139', 'čč²2ę®µēē«', '350');
INSERT INTO `shop_sell_price` VALUES ('40140', 'čč²ä»å„³ę£', '40');
INSERT INTO `shop_sell_price` VALUES ('40141', 'čč²ēē«', '87');
INSERT INTO `shop_sell_price` VALUES ('40142', 'čč²åæåēē«', '175');
INSERT INTO `shop_sell_price` VALUES ('40143', 'ēŗ¢č²2ę®µēē«', '350');
INSERT INTO `shop_sell_price` VALUES ('40144', 'ēŗ¢č²ä»å„³ę£', '42');
INSERT INTO `shop_sell_price` VALUES ('40145', 'ēŗ¢č²ēē«', '87');
INSERT INTO `shop_sell_price` VALUES ('40146', 'ēŗ¢č²åæåēē«', '145');
INSERT INTO `shop_sell_price` VALUES ('40147', 'ē»æč²2ę®µåå½¢ēē«', '350');
INSERT INTO `shop_sell_price` VALUES ('40148', 'ē»æč²2ę®µēē«', '350');
INSERT INTO `shop_sell_price` VALUES ('40149', 'čč²åå½¢ēē«', '175');
INSERT INTO `shop_sell_price` VALUES ('40150', 'ē»æč²ä»å„³ę£', '43');
INSERT INTO `shop_sell_price` VALUES ('40151', 'ę·”ē»æč²ēē«', '82');
INSERT INTO `shop_sell_price` VALUES ('40152', 'ē»æč²ēē«', '82');
INSERT INTO `shop_sell_price` VALUES ('40153', 'ē»æč²åæåēē«', '175');
INSERT INTO `shop_sell_price` VALUES ('40154', 'å£čÆēē«', '500');
INSERT INTO `shop_sell_price` VALUES ('40155', 'é»č²2ę®µåå½¢ēē«', '350');
INSERT INTO `shop_sell_price` VALUES ('40156', 'é»č²2ę®µēē«', '350');
INSERT INTO `shop_sell_price` VALUES ('40157', 'é»č²åå½¢ēē«', '350');
INSERT INTO `shop_sell_price` VALUES ('40158', 'é»č²ä»å„³ę£', '43');
INSERT INTO `shop_sell_price` VALUES ('40159', 'é»č²ēē«', '87');
INSERT INTO `shop_sell_price` VALUES ('40160', 'ę·”é»č²ēē«', '87');
INSERT INTO `shop_sell_price` VALUES ('40161', 'é»č²åæåēē«', '175');
INSERT INTO `shop_sell_price` VALUES ('40162', 'é«ä»ä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40163', 'é»éé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40164', 'ęęÆä¹¦(å²å»ä¹ę)', '20000');
INSERT INTO `shop_sell_price` VALUES ('40165', 'ęęÆä¹¦(å¢å¹é²å¾”)', '20000');
INSERT INTO `shop_sell_price` VALUES ('40166', 'ęęÆä¹¦(å°åŗēē²)', '20000');
INSERT INTO `shop_sell_price` VALUES ('40167', 'å¤čē®č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('40168', 'å¤čäøč¢', '0');
INSERT INTO `shop_sell_price` VALUES ('40169', 'é£é¾ä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40170', 'é­ę³ä¹¦(ēē§ēē«ē)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40171', 'é­ę³ä¹¦(éēę°čęÆ)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40172', 'é­ę³ä¹¦(åē©ęÆ)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40173', 'é­ę³ä¹¦(åøč”é¬¼ä¹å»)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40174', 'é­ę³ä¹¦(ē¼éęÆ)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40175', 'é­ę³ä¹¦(é­ę³å±é)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40176', 'é­ę³ä¹¦(å„ę³ęÆ)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40177', 'é­ę³ä¹¦(å²©ē¢)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40178', 'é­ę³ä¹¦(ęØä¹ä¼ēčÆå)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40179', 'é­ę³ä¹¦(ęéč½é·)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40180', 'é­ę³ä¹¦(é«ēŗ§ę²»ęęÆ)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40181', 'é­ę³ä¹¦(čæ·é­ęÆ)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40182', 'é­ę³ä¹¦(å£ę“ä¹å)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40183', 'é­ę³ä¹¦(å°é„)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40184', 'é­ę³ä¹¦(é­åå¤ŗå)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40185', 'é­ę³ä¹¦(é»?ä¹å½±)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40186', 'é­ę³ä¹¦(é å°øęÆ)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40187', 'é­ę³ä¹¦(ä½é­å¼ŗå„ęÆ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40188', 'é­ę³ä¹¦(å éęÆ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40189', 'é­ę³ä¹¦(é­ę³ēøę¶ęÆ)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40190', 'é­ę³ä¹¦(å°č£ęÆ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40191', 'é­ę³ä¹¦(ēēęÆ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40192', 'é­ę³ä¹¦(å¼±åęÆ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40193', 'é­ę³ä¹¦(ē„ē¦é­ę³ę­¦åØ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40194', 'é­ę³ä¹¦(ä½ååå¤ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40195', 'é­ę³ä¹¦(å°ēå“ēÆ±)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40196', 'é­ę³ä¹¦(å¬å¤ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40197', 'é­ę³ä¹¦(ē„å£ē¾čµ°)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40198', 'é­ę³ä¹¦(é¾å·é£)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40199', 'é­ę³ä¹¦(å¼ŗåå éęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40200', 'é­ę³ä¹¦(ēę“ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40201', 'é­ę³ä¹¦(ē¾ēęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40202', 'é­ę³ä¹¦(åØéØę²»ęęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40203', 'é­ę³ä¹¦(ē«ē¢)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40204', 'é­ę³ä¹¦(å°éŖę“)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40205', 'é­ę³ä¹¦(éčŗ«ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40206', 'é­ę³ä¹¦(čæēęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40207', 'é­ę³ä¹¦(éč£ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40208', 'é­ę³ä¹¦(ę²»ęč½éé£ę“)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40209', 'é­ę³ä¹¦(é­ę³å°å°)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40210', 'é­ę³ä¹¦(é·éé£ę“)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40211', 'é­ę³ä¹¦(ę²ē”ä¹é¾)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40212', 'é­ę³ä¹¦(åå½¢ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40213', 'é­ę³ä¹¦(å£ē»ē)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40214', 'é­ę³ä¹¦(éä½ä¼ éęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40215', 'é­ę³ä¹¦(ē«é£ę“)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40216', 'é­ę³ä¹¦(čÆę°“éåęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40217', 'é­ę³ä¹¦(å¼ŗåę ęéå½¢ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40218', 'é­ę³ä¹¦(åé é­ę³ę­¦åØ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40219', 'é­ę³ä¹¦(ęµęéØ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40220', 'é­ę³ä¹¦(ē»ęčæēęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40221', 'é­ę³ä¹¦(éä½ē¼éęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40222', 'é­ę³ä¹¦(ē©¶ęåč£ęÆ)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40223', 'é­ę³ä¹¦(ē»åÆ¹å±é)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40224', 'é­ę³ä¹¦(ēµé­åå)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40225', 'é­ę³ä¹¦(å°éŖé£é£)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40226', 'é­ę³ä¹¦(ē²¾åē®ę )', '14850');
INSERT INTO `shop_sell_price` VALUES ('40227', 'é­ę³ä¹¦(ęæå±å£«ę°)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40228', 'é­ę³ä¹¦(å¼å¤ēå)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40229', 'é­ę³ä¹¦(é¢éå£«ę°)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40230', 'é­ę³ä¹¦(å²å»å£«ę°)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40231', 'é­ę³ä¹¦(ę“ę¤ēå)', '14850');
INSERT INTO `shop_sell_price` VALUES ('40232', 'ē²¾ēµę°“ę¶(é­ę³é²å¾”)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40233', 'ē²¾ēµę°“ę¶(åæēµč½¬ę¢)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40234', 'ē²¾ēµę°“ę¶(äøēę ēå¼å¤)', '1650');
INSERT INTO `shop_sell_price` VALUES ('40235', 'ē²¾ēµę°“ę¶(ååē²¾ē„)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40236', 'ē²¾ēµę°“ę¶(å±ę§é²å¾”)', '4125');
INSERT INTO `shop_sell_price` VALUES ('40237', 'ē²¾ēµę°“ę¶(éę¾åē“ )', '4125');
INSERT INTO `shop_sell_price` VALUES ('40238', 'ē²¾ēµę°“ę¶(é­ä½č½¬ę¢)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40239', 'ē²¾ēµę°“ę¶(åå±ę§é²å¾”)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40240', 'ē²¾ēµę°“ę¶(äøéē¢)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40241', 'ē²¾ēµę°“ę¶(å¼±åå±ę§)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40242', 'ē²¾ēµę°“ę¶(é­ę³ę¶é¤)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40243', 'ē²¾ēµę°“ę¶(å¬å¤å±ę§ē²¾ēµ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40244', 'ē²¾ēµę°“ę¶(å°å°ē¦å°)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40245', 'ē²¾ēµę°“ę¶(å¬å¤å¼ŗåå±ę§ē²¾ēµ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40246', 'ē²¾ēµę°“ę¶(éåå°)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40247', 'ē²¾ēµę°“ę¶(å¤§å°é²ę¤)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40248', 'ē²¾ēµę°“ę¶(å°é¢éē¢)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40249', 'ē²¾ēµę°“ę¶(å¤§å°å±é)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40250', 'ē²¾ēµę°“ę¶(å¤§å°ēē„ē¦)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40251', 'ē²¾ēµę°“ę¶(é¢éé²ę¤)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40252', 'ē²¾ēµę°“ę¶(ä½č½ęæå)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40253', 'ē²¾ēµę°“ę¶(ę°“ä¹åę°)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40254', 'ē²¾ēµę°“ę¶(ēå½ä¹ę³)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40255', 'ē²¾ēµę°“ę¶(ēå½ēē„ē¦)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40256', 'ē²¾ēµę°“ę¶(ē«ē°ę­¦åØ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40257', 'ē²¾ēµę°“ę¶(ēēę°ęÆ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40258', 'ē²¾ēµę°“ę¶(ēēę­¦åØ)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40259', 'ē²¾ēµę°“ę¶(å±ę§ä¹ē«)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40260', 'ē²¾ēµę°“ę¶(é£ä¹ē„å°)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40261', 'ē²¾ēµę°“ę¶(é£ä¹ē¾čµ°)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40262', 'ē²¾ēµę°“ę¶(ę“é£ä¹ē¼)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40263', 'ē²¾ēµę°“ę¶(ę“é£ē„å°)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40264', 'ē²¾ēµę°“ę¶(é£ä¹ę·é)', '2000');
INSERT INTO `shop_sell_price` VALUES ('40265', 'é»ęē²¾ēµę°“ę¶(ęéęÆ)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40266', 'é»ęē²¾ēµę°“ę¶(éå å§ęÆ)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40267', 'é»ęē²¾ēµę°“ę¶(å½±ä¹é²ę¤)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40268', 'é»ęē²¾ēµę°“ę¶(ęē¼é­ē³)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40269', 'é»ęē²¾ēµę°“ę¶(åéęå)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40270', 'é»ęē²¾ēµę°“ę¶(č”čµ°å é)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40271', 'é»ęē²¾ēµę°“ę¶(ēē§ęåæ)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40272', 'é»ęē²¾ēµę°“ę¶(ęé»ē²å)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40273', 'é»ęē²¾ēµę°“ę¶(ęÆę§ęµę)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40274', 'é»ęē²¾ēµę°“ę¶(ęę·ęå)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40275', 'é»ęē²¾ēµę°“ę¶(åéē “å)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40276', 'é»ęē²¾ēµę°“ę¶(ęå½±éŖéæ)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40277', 'é»ęē²¾ēµę°“ę¶(ęå½±ä¹ē)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40278', 'é»ęē²¾ēµę°“ę¶(ä¼åæäøå»)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40279', 'é»ęē²¾ēµę°“ę¶(éŖéæęå)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40280', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(11F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40281', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(21F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40282', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(31F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40283', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(41F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40284', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(51F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40285', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(61F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40286', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(71F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40287', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(81F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40288', 'å°å°ēå²ę¢ä¹å”ä¼ éē¬¦(91F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40289', 'å²ę¢ä¹å”ä¼ éē¬¦(11F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40290', 'å²ę¢ä¹å”ä¼ éē¬¦(21F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40291', 'å²ę¢ä¹å”ä¼ éē¬¦(31F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40292', 'å²ę¢ä¹å”ä¼ éē¬¦(41F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40293', 'å²ę¢ä¹å”ä¼ éē¬¦(51F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40294', 'å²ę¢ä¹å”ä¼ éē¬¦(61F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40295', 'å²ę¢ä¹å”ä¼ éē¬¦(71F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40296', 'å²ę¢ä¹å”ä¼ éē¬¦(81F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40297', 'å²ę¢ä¹å”ä¼ éē¬¦(91F)', '500');
INSERT INTO `shop_sell_price` VALUES ('40298', 'å¾čÆ“čÆä¹å²ēč¹ē„Ø', '150');
INSERT INTO `shop_sell_price` VALUES ('40299', 'å¾å¤é²äøēč¹ē„Ø', '150');
INSERT INTO `shop_sell_price` VALUES ('40300', 'éåæä¹å²č¹ē„Ø', '150');
INSERT INTO `shop_sell_price` VALUES ('40301', 'ęµ·é³ęøÆå£č¹ē„Ø', '150');
INSERT INTO `shop_sell_price` VALUES ('40302', 'ęµ·č“¼å²č¹ē„Ø', '345');
INSERT INTO `shop_sell_price` VALUES ('40303', 'éčęøÆå£č¹ē„Ø', '345');
INSERT INTO `shop_sell_price` VALUES ('40304', 'é©¬ę®åä¹ē³', '525');
INSERT INTO `shop_sell_price` VALUES ('40305', 'åøę ¼éå„„ä¹ē³', '525');
INSERT INTO `shop_sell_price` VALUES ('40306', 'ä¼åØä¹ē³', '525');
INSERT INTO `shop_sell_price` VALUES ('40307', 'ę²åä¹ē³', '525');
INSERT INTO `shop_sell_price` VALUES ('40308', 'éåø', '0');
INSERT INTO `shop_sell_price` VALUES ('40309', 'é£äŗŗå¦ē²¾ē«čµē„Ø', '0');
INSERT INTO `shop_sell_price` VALUES ('40310', 'äæ”ēŗø', '17');
INSERT INTO `shop_sell_price` VALUES ('40311', 'č”ēēäæ”ēŗø', '40');
INSERT INTO `shop_sell_price` VALUES ('40312', 'ęé¦é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40313', 'é¶é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40314', 'é”¹å', '0');
INSERT INTO `shop_sell_price` VALUES ('40315', 'åØå­', '250');
INSERT INTO `shop_sell_price` VALUES ('40316', 'é«ē­å® ē©é”¹å', '0');
INSERT INTO `shop_sell_price` VALUES ('40317', 'ē£Øåē³', '15');
INSERT INTO `shop_sell_price` VALUES ('40318', 'é­ę³å®ē³', '100');
INSERT INTO `shop_sell_price` VALUES ('40319', 'ē²¾ēµē', '100');
INSERT INTO `shop_sell_price` VALUES ('40320', 'äøēŗ§é»é­ē³', '100');
INSERT INTO `shop_sell_price` VALUES ('40321', 'äŗēŗ§é»é­ē³', '200');
INSERT INTO `shop_sell_price` VALUES ('40322', 'äøēŗ§é»é­ē³', '400');
INSERT INTO `shop_sell_price` VALUES ('40323', 'åēŗ§é»é­ē³', '800');
INSERT INTO `shop_sell_price` VALUES ('40324', 'äŗēŗ§é»é­ē³', '1600');
INSERT INTO `shop_sell_price` VALUES ('40325', 'äŗę®µå¼é­ę³éŖ°å­', '5000');
INSERT INTO `shop_sell_price` VALUES ('40326', 'äøę®µå¼é­ę³éŖ°å­', '5000');
INSERT INTO `shop_sell_price` VALUES ('40327', 'åę®µå¼é­ę³éŖ°å­', '5000');
INSERT INTO `shop_sell_price` VALUES ('40328', 'å­ę®µå¼é­ę³éŖ°å­', '5000');
INSERT INTO `shop_sell_price` VALUES ('40329', 'åä½ę°å¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('40330', 'ę éē®­ē­', '5000');
INSERT INTO `shop_sell_price` VALUES ('40331', 'čÆē¹åå£«ä¹å', '0');
INSERT INTO `shop_sell_price` VALUES ('40332', 'čÆē¹å°ęä¹å¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40333', 'čÆē¹ę³åøé­ę', '0');
INSERT INTO `shop_sell_price` VALUES ('40334', 'čÆē¹åŗå®¢åå', '0');
INSERT INTO `shop_sell_price` VALUES ('40335', 'čÆē¹ęå£«ę§å¤“', '0');
INSERT INTO `shop_sell_price` VALUES ('40336', 'čÆē¹å¾½ē« éæé“', '0');
INSERT INTO `shop_sell_price` VALUES ('40337', 'čÆē¹å¾½ē« ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('40338', 'čÆē¹å¾½ē« ęå„', '0');
INSERT INTO `shop_sell_price` VALUES ('40339', 'čÆē¹å¾½ē« ē¾ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40340', 'čÆē¹å¾½ē« å¤“ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40341', 'å®å”ēęÆä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('40342', 'å®å”ēęÆä¹ēŖ', '0');
INSERT INTO `shop_sell_price` VALUES ('40343', 'å®å”ēęÆä¹ē¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40344', 'å®å”ēęÆä¹č”', '0');
INSERT INTO `shop_sell_price` VALUES ('40345', 'å®å”ēęÆä¹č', '0');
INSERT INTO `shop_sell_price` VALUES ('40346', 'å®å”ēęÆä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40347', 'å®å”ēęÆä¹éŖØ', '0');
INSERT INTO `shop_sell_price` VALUES ('40348', 'å®å”ēęÆä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40349', 'å·“ęå”ęÆä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('40350', 'å·“ęå”ęÆä¹ēŖ', '0');
INSERT INTO `shop_sell_price` VALUES ('40351', 'å·“ęå”ęÆä¹ē¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40352', 'å·“ęå”ęÆä¹č”', '0');
INSERT INTO `shop_sell_price` VALUES ('40353', 'å·“ęå”ęÆä¹č', '0');
INSERT INTO `shop_sell_price` VALUES ('40354', 'å·“ęå”ęÆä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40355', 'å·“ęå”ęÆä¹éŖØ', '0');
INSERT INTO `shop_sell_price` VALUES ('40356', 'å·“ęå”ęÆä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40357', 'ę³å©ęä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('40358', 'ę³å©ęä¹ēŖ', '0');
INSERT INTO `shop_sell_price` VALUES ('40359', 'ę³å©ęä¹ē¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40360', 'ę³å©ęä¹č”', '0');
INSERT INTO `shop_sell_price` VALUES ('40361', 'ę³å©ęä¹č', '0');
INSERT INTO `shop_sell_price` VALUES ('40362', 'ę³å©ęä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40363', 'ę³å©ęä¹éŖØ', '0');
INSERT INTO `shop_sell_price` VALUES ('40364', 'ę³å©ęä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40365', 'ęå¾·ęå°ä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('40366', 'ęå¾·ęå°ä¹ēŖ', '0');
INSERT INTO `shop_sell_price` VALUES ('40367', 'ęå¾·ęå°ä¹ē¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40368', 'ęå¾·ęå°ä¹č”', '0');
INSERT INTO `shop_sell_price` VALUES ('40369', 'ęå¾·ęå°ä¹č', '0');
INSERT INTO `shop_sell_price` VALUES ('40370', 'ęå¾·ęå°ä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40371', 'ęå¾·ęå°ä¹éŖØ', '0');
INSERT INTO `shop_sell_price` VALUES ('40372', 'ęå¾·ęå°ä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40373', 'å°å¾:å¤§éåØå¾', '500');
INSERT INTO `shop_sell_price` VALUES ('40374', 'å°å¾:čÆ“čÆä¹å²', '30');
INSERT INTO `shop_sell_price` VALUES ('40375', 'å°å¾:å¤é²äø', '43');
INSERT INTO `shop_sell_price` VALUES ('40376', 'å°å¾:čÆē¹å', '43');
INSERT INTO `shop_sell_price` VALUES ('40377', 'å°å¾:å¦é­åå ”', '33');
INSERT INTO `shop_sell_price` VALUES ('40378', 'å°å¾:å¦ē²¾ę£®ę', '33');
INSERT INTO `shop_sell_price` VALUES ('40379', 'å°å¾:é£ęØä¹å', '33');
INSERT INTO `shop_sell_price` VALUES ('40380', 'å°å¾:é¶éŖå£«ęåŗ', '31');
INSERT INTO `shop_sell_price` VALUES ('40381', 'å°å¾:é¾ä¹č°·', '43');
INSERT INTO `shop_sell_price` VALUES ('40382', 'å°å¾:å„å²©', '41');
INSERT INTO `shop_sell_price` VALUES ('40383', 'å°å¾:ę­å±ä¹å²', '38');
INSERT INTO `shop_sell_price` VALUES ('40384', 'å°å¾:éčä¹č°·', '36');
INSERT INTO `shop_sell_price` VALUES ('40385', 'å°å¾:ęµ·é³', '33');
INSERT INTO `shop_sell_price` VALUES ('40386', 'å°å¾:ē«é¾ēŖ', '31');
INSERT INTO `shop_sell_price` VALUES ('40387', 'å°å¾:ę¬§ē', '43');
INSERT INTO `shop_sell_price` VALUES ('40388', 'å°å¾:äŗäø', '41');
INSERT INTO `shop_sell_price` VALUES ('40389', 'å°å¾:ę²é»ę“ē©“', '39');
INSERT INTO `shop_sell_price` VALUES ('40390', 'å°å¾:ęµ·č“¼å²', '25');
INSERT INTO `shop_sell_price` VALUES ('40391', 'č®”ē®åØ', '35');
INSERT INTO `shop_sell_price` VALUES ('40392', 'č¶čÆę ', '33');
INSERT INTO `shop_sell_price` VALUES ('40393', 'ē«é¾é³', '50');
INSERT INTO `shop_sell_price` VALUES ('40394', 'é£é¾é³', '100');
INSERT INTO `shop_sell_price` VALUES ('40395', 'ę°“é¾é³', '100');
INSERT INTO `shop_sell_price` VALUES ('40396', 'å°é¾é³', '100');
INSERT INTO `shop_sell_price` VALUES ('40397', 'å„ē¾ęä¹ē®(é¾)', '100');
INSERT INTO `shop_sell_price` VALUES ('40398', 'å„ē¾ęä¹ē®(å±±ē¾)', '100');
INSERT INTO `shop_sell_price` VALUES ('40399', 'å„ē¾ęä¹ē®(ē®å­)', '100');
INSERT INTO `shop_sell_price` VALUES ('40400', 'å„ē¾ęä¹ē®(č)', '100');
INSERT INTO `shop_sell_price` VALUES ('40401', 'čÆåēē®é©(ē«)', '100');
INSERT INTO `shop_sell_price` VALUES ('40402', 'čÆåēē®é©(ę°“)', '100');
INSERT INTO `shop_sell_price` VALUES ('40403', 'čÆåēē®é©(é£)', '100');
INSERT INTO `shop_sell_price` VALUES ('40404', 'čÆåēē®é©(å°)', '100');
INSERT INTO `shop_sell_price` VALUES ('40405', 'ē®é©', '2');
INSERT INTO `shop_sell_price` VALUES ('40406', 'é«ēŗ§ē®é©', '20');
INSERT INTO `shop_sell_price` VALUES ('40407', 'éŖØå¤“ē¢ē', '10');
INSERT INTO `shop_sell_price` VALUES ('40408', 'éå±å', '20');
INSERT INTO `shop_sell_price` VALUES ('40409', 'äøę­»éøä¹åæ', '980');
INSERT INTO `shop_sell_price` VALUES ('40410', 'é»ęå®ē¹ēę ē®', '45');
INSERT INTO `shop_sell_price` VALUES ('40411', 'é»ęå®ē¹ēę°“ę', '123');
INSERT INTO `shop_sell_price` VALUES ('40412', 'é»ęå®ē¹ēę ę', '2');
INSERT INTO `shop_sell_price` VALUES ('40413', 'å°ä¹å„³ēä¹åæ', '341');
INSERT INTO `shop_sell_price` VALUES ('40414', 'ē¼éęÆä¹ē³', '231');
INSERT INTO `shop_sell_price` VALUES ('40415', 'éē©č¢å­', '546');
INSERT INTO `shop_sell_price` VALUES ('40416', 'čÆåä¹č”', '552');
INSERT INTO `shop_sell_price` VALUES ('40417', 'ē²¾ēµē»ę¶', '465');
INSERT INTO `shop_sell_price` VALUES ('40418', 'å č½ēč“¢ē©', '451');
INSERT INTO `shop_sell_price` VALUES ('40419', 'å·Øå¤§č«å¦®äŗččäø', '451');
INSERT INTO `shop_sell_price` VALUES ('40420', 'å¤ä»£äŗŗēåęÆä¹¦1å', '50');
INSERT INTO `shop_sell_price` VALUES ('40421', 'å¤ä»£äŗŗēåęÆä¹¦2å', '50');
INSERT INTO `shop_sell_price` VALUES ('40422', 'å¤ä»£äŗŗēåęÆä¹¦3å', '50');
INSERT INTO `shop_sell_price` VALUES ('40423', 'å¤ä»£äŗŗēåęÆä¹¦4å', '50');
INSERT INTO `shop_sell_price` VALUES ('40424', 'ē¼ē®', '341');
INSERT INTO `shop_sell_price` VALUES ('40425', 'é»ęę ęččÆę°“', '345');
INSERT INTO `shop_sell_price` VALUES ('40426', 'é»ęę ęčęę', '1410');
INSERT INTO `shop_sell_price` VALUES ('40427', 'é»ęå¦ē²¾č¢å­', '576');
INSERT INTO `shop_sell_price` VALUES ('40428', 'ęåä¹ę³Ŗ', '341');
INSERT INTO `shop_sell_price` VALUES ('40429', 'å¤§ę“ē©“å·č½“ē¢ē', '50');
INSERT INTO `shop_sell_price` VALUES ('40430', 'å¤§ę“ē©“ę°“ę¶', '45');
INSERT INTO `shop_sell_price` VALUES ('40431', 'é¼¹é¼ ēē®', '98');
INSERT INTO `shop_sell_price` VALUES ('40432', 'å¤§ę“ē©“å·č½“ē¢ē', '50');
INSERT INTO `shop_sell_price` VALUES ('40433', 'ē°ē³ä¹ēŖ', '98');
INSERT INTO `shop_sell_price` VALUES ('40434', 'ē°ē³ēå°¾å·“', '45');
INSERT INTO `shop_sell_price` VALUES ('40435', 'ę·±ęøä¹č±ēč±č', '213');
INSERT INTO `shop_sell_price` VALUES ('40436', 'ę·±ęøä¹č±ēę ¹', '241');
INSERT INTO `shop_sell_price` VALUES ('40437', 'ę·±ęøč±ęę”', '23');
INSERT INTO `shop_sell_price` VALUES ('40438', 'čč ä¹ē', '212');
INSERT INTO `shop_sell_price` VALUES ('40439', 'ē½ééå±ęæ', '231');
INSERT INTO `shop_sell_price` VALUES ('40440', 'ē½é', '456');
INSERT INTO `shop_sell_price` VALUES ('40441', 'ē½éåē³', '25');
INSERT INTO `shop_sell_price` VALUES ('40442', 'åøęä¼Æēčę¶²', '235');
INSERT INTO `shop_sell_price` VALUES ('40443', 'é»č²ē±³ē“¢č', '451');
INSERT INTO `shop_sell_price` VALUES ('40444', 'é»č²ē±³ē“¢čåē³', '546');
INSERT INTO `shop_sell_price` VALUES ('40445', 'é»č²ē±³ē“¢čéå±ęæ', '235');
INSERT INTO `shop_sell_price` VALUES ('40446', 'é»ę³åøęę', '1456');
INSERT INTO `shop_sell_price` VALUES ('40447', 'é»čēē®', '351');
INSERT INTO `shop_sell_price` VALUES ('40448', 'é»čēēŖ', '124');
INSERT INTO `shop_sell_price` VALUES ('40449', 'é»čēē', '341');
INSERT INTO `shop_sell_price` VALUES ('40450', 'é»ęå®ē¹ēę ę', '341');
INSERT INTO `shop_sell_price` VALUES ('40451', 'é»čä¹åæ', '560');
INSERT INTO `shop_sell_price` VALUES ('40452', 'å¤å½åøęę', '1657');
INSERT INTO `shop_sell_price` VALUES ('40453', 'å¤å½åøéæé­', '1345');
INSERT INTO `shop_sell_price` VALUES ('40454', 'é©Æå½åøęę', '1653');
INSERT INTO `shop_sell_price` VALUES ('40455', 'čč²åøę', '100');
INSERT INTO `shop_sell_price` VALUES ('40456', 'ēŗ¢č²åøę', '100');
INSERT INTO `shop_sell_price` VALUES ('40457', 'ē½č²åøę', '100');
INSERT INTO `shop_sell_price` VALUES ('40458', 'åęēé³ē', '54');
INSERT INTO `shop_sell_price` VALUES ('40459', 'ęÆčä¹ē®', '87');
INSERT INTO `shop_sell_price` VALUES ('40460', 'éæč„æå”åŗå„„ēē°ē¬', '165');
INSERT INTO `shop_sell_price` VALUES ('40461', 'ę¶é­ēé»č²čé£', '12');
INSERT INTO `shop_sell_price` VALUES ('40462', 'ę¶é­ēēŗ¢č²čé£', '34');
INSERT INTO `shop_sell_price` VALUES ('40463', 'ę¶é­ēčč²čé£', '54');
INSERT INTO `shop_sell_price` VALUES ('40464', 'ę¶é­ēē½č²čé£', '43');
INSERT INTO `shop_sell_price` VALUES ('40465', 'ē²¾ēµä½æęę', '451');
INSERT INTO `shop_sell_price` VALUES ('40466', 'é¾ä¹åæ', '4526');
INSERT INTO `shop_sell_price` VALUES ('40467', 'é¶', '341');
INSERT INTO `shop_sell_price` VALUES ('40468', 'é¶åē³', '23');
INSERT INTO `shop_sell_price` VALUES ('40469', 'é¶éå±ęæ', '65');
INSERT INTO `shop_sell_price` VALUES ('40470', 'åē³ē¢ē', '32');
INSERT INTO `shop_sell_price` VALUES ('40471', 'ē²¾ēµē¢ē', '54');
INSERT INTO `shop_sell_price` VALUES ('40472', 'å°ē±ē¬ä¹ē®', '65');
INSERT INTO `shop_sell_price` VALUES ('40473', 'å č½é°å', '774');
INSERT INTO `shop_sell_price` VALUES ('40474', 'å č½ä¹ęÆ', '768');
INSERT INTO `shop_sell_price` VALUES ('40475', 'å č½é¦ēŗ§', '0');
INSERT INTO `shop_sell_price` VALUES ('40476', 'å č½ä¹ę', '546');
INSERT INTO `shop_sell_price` VALUES ('40477', 'å č½ēę¶é­ä¹¦1å', '50');
INSERT INTO `shop_sell_price` VALUES ('40478', 'å č½ēę¶é­ä¹¦2å', '50');
INSERT INTO `shop_sell_price` VALUES ('40479', 'å č½ēę¶é­ä¹¦3å', '50');
INSERT INTO `shop_sell_price` VALUES ('40480', 'å č½ēę¶é­ä¹¦4å', '50');
INSERT INTO `shop_sell_price` VALUES ('40481', 'å č½ä¹ē', '546');
INSERT INTO `shop_sell_price` VALUES ('40482', 'å č½ä¹č', '541');
INSERT INTO `shop_sell_price` VALUES ('40483', 'éå±čč£ēē®', '234');
INSERT INTO `shop_sell_price` VALUES ('40484', 'éå±čč£ēęÆę¶²', '464');
INSERT INTO `shop_sell_price` VALUES ('40485', 'éå±čč£ēē', '341');
INSERT INTO `shop_sell_price` VALUES ('40486', 'ē«å±±ē°', '351');
INSERT INTO `shop_sell_price` VALUES ('40487', 'é»ééå±ęæ', '682');
INSERT INTO `shop_sell_price` VALUES ('40488', 'é»é', '264');
INSERT INTO `shop_sell_price` VALUES ('40489', 'é»éåē³', '543');
INSERT INTO `shop_sell_price` VALUES ('40490', 'é»ęåē“ ē³', '874');
INSERT INTO `shop_sell_price` VALUES ('40491', 'ę ¼å©č¬ē¾½ęÆ', '674');
INSERT INTO `shop_sell_price` VALUES ('40492', 'ē»æę°“ę¶', '24');
INSERT INTO `shop_sell_price` VALUES ('40493', 'é­ę³ē¬å­', '657');
INSERT INTO `shop_sell_price` VALUES ('40494', 'ēŗÆē²¹ēē±³ē“¢čå', '231');
INSERT INTO `shop_sell_price` VALUES ('40495', 'ē±³ē“¢čēŗæ', '541');
INSERT INTO `shop_sell_price` VALUES ('40496', 'ē²ē³ēē±³ē“¢čå', '879');
INSERT INTO `shop_sell_price` VALUES ('40497', 'ē±³ē“¢čéå±ęæ', '546');
INSERT INTO `shop_sell_price` VALUES ('40498', 'é£ä¹ę³Ŗ', '431');
INSERT INTO `shop_sell_price` VALUES ('40499', 'ččę±', '76');
INSERT INTO `shop_sell_price` VALUES ('40500', 'ē“«ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40501', 'ēŗ¢ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40502', 'ēŗæ', '25');
INSERT INTO `shop_sell_price` VALUES ('40503', 'č®åå¦®ēē½', '314');
INSERT INTO `shop_sell_price` VALUES ('40504', 'č®åå¦®ēčē®', '652');
INSERT INTO `shop_sell_price` VALUES ('40505', 'å®ē¹ä¹ę ē®', '431');
INSERT INTO `shop_sell_price` VALUES ('40506', 'å®ē¹ēę°“ę', '765');
INSERT INTO `shop_sell_price` VALUES ('40507', 'å®ē¹ēę ę', '1');
INSERT INTO `shop_sell_price` VALUES ('40508', 'å„„éåé²ę ¹', '454');
INSERT INTO `shop_sell_price` VALUES ('40509', 'å„„éåé²ę ¹éå±ęæ', '985');
INSERT INTO `shop_sell_price` VALUES ('40510', 'ę±”ęµå®ē¹ēę ē®', '0');
INSERT INTO `shop_sell_price` VALUES ('40511', 'ę±”ęµå®ē¹ēę°“ę', '0');
INSERT INTO `shop_sell_price` VALUES ('40512', 'ę±”ęµå®ē¹ēę ę', '0');
INSERT INTO `shop_sell_price` VALUES ('40513', 'é£äŗŗå·Øé­ēč”', '643');
INSERT INTO `shop_sell_price` VALUES ('40514', 'ē²¾ēµä¹ę³Ŗ', '1000');
INSERT INTO `shop_sell_price` VALUES ('40515', 'åē“ ē³', '431');
INSERT INTO `shop_sell_price` VALUES ('40516', 'č“Øéē»æę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40517', 'č“Øéēŗ¢ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40518', 'č“Øéčę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40519', 'ę½ēé¬ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40520', 'ē²¾ēµē²ę«', '0');
INSERT INTO `shop_sell_price` VALUES ('40521', 'ē²¾ēµē¾½ēæ¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40522', 'čę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40523', 'ē½ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40524', 'é»č²č”ē', '786');
INSERT INTO `shop_sell_price` VALUES ('40525', 'ę ¼å°čÆä¹ę³Ŗ', '0');
INSERT INTO `shop_sell_price` VALUES ('40526', 'čéå±ęæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40527', 'éå¤“', '0');
INSERT INTO `shop_sell_price` VALUES ('40528', 'å®ę¤ē„ä¹č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('40529', 'ęč°¢äæ”', '50');
INSERT INTO `shop_sell_price` VALUES ('40530', 'å¤ä»£ēęēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40531', 'å¤ä»£éŖå£«ēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40532', 'å¤ä»£ę³åøēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40533', 'å¤ä»£é„å(äøåéØ)', '0');
INSERT INTO `shop_sell_price` VALUES ('40534', 'å¤ä»£é„å(äøåéØ)', '0');
INSERT INTO `shop_sell_price` VALUES ('40535', 'å¤ä»£å¦ē²¾ēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40536', 'å¤ä»£ę¶é­ēč®°č½½', '50');
INSERT INTO `shop_sell_price` VALUES ('40537', 'å¤ä»£ēéē©', '0');
INSERT INTO `shop_sell_price` VALUES ('40538', 'é£å°øé¬¼ēęē²', '341');
INSERT INTO `shop_sell_price` VALUES ('40539', 'é£å°øé¬¼ēēé½æ', '214');
INSERT INTO `shop_sell_price` VALUES ('40540', 'å¤čēäŗ¤ęęä»¶', '50');
INSERT INTO `shop_sell_price` VALUES ('40541', 'é»ęä¹ę', '0');
INSERT INTO `shop_sell_price` VALUES ('40542', 'åå½¢ęŖēč”', '0');
INSERT INTO `shop_sell_price` VALUES ('40543', 'čå„³ęæé“é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40544', 'čå„³ä¹é³', '452');
INSERT INTO `shop_sell_price` VALUES ('40545', 'ä¼¦å¾ä¹č¢', '50');
INSERT INTO `shop_sell_price` VALUES ('40546', 'é©¬ę²ä¹č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('40547', 'ęę°ēéē©', '0');
INSERT INTO `shop_sell_price` VALUES ('40548', 'å¤ä»£äŗ”ēµä¹č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('40549', 'ēé­ä¹å', '0');
INSERT INTO `shop_sell_price` VALUES ('40550', 'ēé­ä¹ē¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40551', 'ēé­ä¹ēŖ', '0');
INSERT INTO `shop_sell_price` VALUES ('40552', 'ēé­ä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('40553', 'åøé²čæŖå”ä¹č¢', '50');
INSERT INTO `shop_sell_price` VALUES ('40554', 'ē§åÆåå', '50');
INSERT INTO `shop_sell_price` VALUES ('40555', 'åÆå®¤é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40556', 'ęęååä¹č¢', '50');
INSERT INTO `shop_sell_price` VALUES ('40557', 'ęęåå(å¤é²äøę)', '50');
INSERT INTO `shop_sell_price` VALUES ('40558', 'ęęåå(å„å²©ę)', '50');
INSERT INTO `shop_sell_price` VALUES ('40559', 'ęęåå(äŗäøåé)', '50');
INSERT INTO `shop_sell_price` VALUES ('40560', 'ęęåå(é£ęØę)', '50');
INSERT INTO `shop_sell_price` VALUES ('40561', 'ęęåå(čÆē¹ę)', '50');
INSERT INTO `shop_sell_price` VALUES ('40562', 'ęęåå(ęµ·é³ę)', '50');
INSERT INTO `shop_sell_price` VALUES ('40563', 'ęęåå(ēę³ę)', '50');
INSERT INTO `shop_sell_price` VALUES ('40564', 'ēå½ēå·č½“', '50');
INSERT INTO `shop_sell_price` VALUES ('40565', 'ęē“¢ē¶', '50');
INSERT INTO `shop_sell_price` VALUES ('40566', 'ē„ē§č“å£³', '0');
INSERT INTO `shop_sell_price` VALUES ('40567', 'ē„ē§ę°“ę¶ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40568', 'ē„ē§ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40569', 'ē„ē§é­ę', '0');
INSERT INTO `shop_sell_price` VALUES ('40570', 'č¾čäŗēåę„', '0');
INSERT INTO `shop_sell_price` VALUES ('40571', 'åŗå®¢é¦é¢ēē®±å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40572', 'åŗå®¢ä¹čÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40573', 'ēµé­ä¹čÆ', '50');
INSERT INTO `shop_sell_price` VALUES ('40574', 'ēµé­ä¹čÆ', '50');
INSERT INTO `shop_sell_price` VALUES ('40575', 'ēµé­ä¹čÆ', '50');
INSERT INTO `shop_sell_price` VALUES ('40576', 'ēµé­ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40577', 'ēµé­ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40578', 'ēµé­ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40579', 'äøę­»ęēéŖØå¤“', '0');
INSERT INTO `shop_sell_price` VALUES ('40580', 'äøę­»ęēéŖØå¤“ē¢ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40581', 'äøę­»ęēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40582', 'å®čæŖäŗä¹č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('40583', 'å®čæŖäŗä¹äæ”', '50');
INSERT INTO `shop_sell_price` VALUES ('40584', 'éŖęŖé¦ēŗ§', '0');
INSERT INTO `shop_sell_price` VALUES ('40585', 'å¦é­éæčé¦ēŗ§', '0');
INSERT INTO `shop_sell_price` VALUES ('40586', 'ēęå¾½ē« ēē¢ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40587', 'ēęå¾½ē« ēē¢ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40588', 'å¦ē²¾ęå®ē©', '0');
INSERT INTO `shop_sell_price` VALUES ('40589', 'ęęēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40590', 'ęØęéę©ä¹ēŖ', '760');
INSERT INTO `shop_sell_price` VALUES ('40591', 'åčÆåēé­ę³ä¹¦', '50');
INSERT INTO `shop_sell_price` VALUES ('40592', 'åčÆåēē²¾ēµä¹¦', '50');
INSERT INTO `shop_sell_price` VALUES ('40593', 'č°ę„ē°æēē¼ŗé”µ', '50');
INSERT INTO `shop_sell_price` VALUES ('40594', 'åµå°øé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40595', 'ę­»äŗ”ä¹čÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40596', 'ę­»äŗ”čŖēŗ¦', '50');
INSERT INTO `shop_sell_price` VALUES ('40597', 'ē “ęēč°ę„ē°æ', '50');
INSERT INTO `shop_sell_price` VALUES ('40598', 'åŗ·ä¹č¢', '50');
INSERT INTO `shop_sell_price` VALUES ('40599', 'å”ęęÆēé­ę³č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('40600', 'å č½é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40601', 'é¾é¾ē²', '451');
INSERT INTO `shop_sell_price` VALUES ('40602', 'čč²éæē¬', '0');
INSERT INTO `shop_sell_price` VALUES ('40603', 'ččęÆę¶²', '50');
INSERT INTO `shop_sell_price` VALUES ('40604', 'éŖ·é«é„å', '210');
INSERT INTO `shop_sell_price` VALUES ('40605', 'éŖ·é«å¤“', '760');
INSERT INTO `shop_sell_price` VALUES ('40606', 'ę··ę²é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40607', 'čæēčÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('40608', 'é»éŖå£«ēčŖēŗ¦', '100');
INSERT INTO `shop_sell_price` VALUES ('40609', 'ēå°å¦é­é­ę³ä¹¦', '100');
INSERT INTO `shop_sell_price` VALUES ('40610', 'é£é²å å¦é­é­ę³ä¹¦', '100');
INSERT INTO `shop_sell_price` VALUES ('40611', 'é½č¾¾ēęå¦é­é­ę³ä¹¦', '100');
INSERT INTO `shop_sell_price` VALUES ('40612', 'éæåå·“å¦é­é­ę³ä¹¦', '100');
INSERT INTO `shop_sell_price` VALUES ('40613', 'é»é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40614', 'ēæē©ę¶éęä»¶', '50');
INSERT INTO `shop_sell_price` VALUES ('40615', 'ęå½±ē„ę®æ2ę„¼é„å', '50');
INSERT INTO `shop_sell_price` VALUES ('40616', 'ęå½±ē„ę®æ3ę„¼é„å', '50');
INSERT INTO `shop_sell_price` VALUES ('40617', 'ę°“ę¶ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40618', 'åä¹ę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40619', 'äøę¹ēē±é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40620', 'ē¬¬äŗčæ·å®«é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40621', 'å¾·é·åé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40622', 'é£é¾ēēŖå­', '0');
INSERT INTO `shop_sell_price` VALUES ('40623', 'å¤é²å1äøä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40624', 'å¤é²å2äøä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40625', 'å¤é²å3äøä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40626', 'å¤é²å4äøä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40627', 'å¤é²å5äøä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40628', 'å¤é²å6äøä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40629', 'å¤é²å7äøä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40630', 'čæŖå„ēę§ę„č®°', '50');
INSERT INTO `shop_sell_price` VALUES ('40631', 'č±ęÆå”ēęę', '0');
INSERT INTO `shop_sell_price` VALUES ('40632', 'é·å„„ēŗ³ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40633', 'č„č“äŗŗēę„å', '50');
INSERT INTO `shop_sell_price` VALUES ('40634', 'č„č“äŗŗēå®ē©', '0');
INSERT INTO `shop_sell_price` VALUES ('40635', 'ę³ä»¤åå¢å°č®°', '0');
INSERT INTO `shop_sell_price` VALUES ('40636', 'ę³ä»¤åēå°č®°ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40637', 'ēåå·“ēäæ”', '50');
INSERT INTO `shop_sell_price` VALUES ('40638', 'é­å½åå¢å°č®°', '0');
INSERT INTO `shop_sell_price` VALUES ('40639', 'é­å½åēå°č®°ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40640', 'å„ę³åēå°č®°ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40641', 'čÆ“čÆå·č½“', '50');
INSERT INTO `shop_sell_price` VALUES ('40642', 'å„ę³åå¢å°č®°', '0');
INSERT INTO `shop_sell_price` VALUES ('40643', 'ę°“ä¹ę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40644', 'čæ·å®«ęé å¾', '50');
INSERT INTO `shop_sell_price` VALUES ('40645', 'é£ä¹ę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40646', 'č„č“ēč§', '0');
INSERT INTO `shop_sell_price` VALUES ('40647', 'čå®å¾ē¢ē', '50');
INSERT INTO `shop_sell_price` VALUES ('40648', 'ēéēåŗå®¢ä¹å', '0');
INSERT INTO `shop_sell_price` VALUES ('40649', 'äøåę¹ēē±é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40650', 'åę¹ēē±é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40651', 'ē«ä¹ę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40652', 'ēē§ēē®', '0');
INSERT INTO `shop_sell_price` VALUES ('40653', 'ēŗ¢é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40654', 'ē¬¬äøčæ·å®«é„å', '0');
INSERT INTO `shop_sell_price` VALUES ('40655', 'ę°“ę¶ä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40656', 'čÆē¼ä¹åA', '0');
INSERT INTO `shop_sell_price` VALUES ('40657', 'čÆē¼ä¹åB', '0');
INSERT INTO `shop_sell_price` VALUES ('40658', 'čÆē¼ä¹åC', '0');
INSERT INTO `shop_sell_price` VALUES ('40659', 'čÆē¼ä¹åD', '0');
INSERT INTO `shop_sell_price` VALUES ('40660', 'čÆē¼å·č½“', '50');
INSERT INTO `shop_sell_price` VALUES ('40661', 'åæå­ēééŖø', '0');
INSERT INTO `shop_sell_price` VALUES ('40662', 'åæå­ēčåē»', '50');
INSERT INTO `shop_sell_price` VALUES ('40663', 'åæå­ēäæ”', '50');
INSERT INTO `shop_sell_price` VALUES ('40664', 'éæęęÆēę¤čŗ«ē¬¦', '50');
INSERT INTO `shop_sell_price` VALUES ('40665', 'éæęęÆēäæ”', '50');
INSERT INTO `shop_sell_price` VALUES ('40666', 'ę ę³å¾ē„ēä¼ å®¶ä¹å®', '0');
INSERT INTO `shop_sell_price` VALUES ('40667', 'ęęåå¢å°č®°', '0');
INSERT INTO `shop_sell_price` VALUES ('40668', 'ęęåēå°č®°ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40669', 'ē«ē°ä¹å½±čéŖØ', '0');
INSERT INTO `shop_sell_price` VALUES ('40670', 'ē«ē°ä¹å½±å°¾å·“', '0');
INSERT INTO `shop_sell_price` VALUES ('40671', 'ē«ē°ä¹å½±éŖØēæ¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40672', 'ē«ē°ä¹å½±čę¤', '0');
INSERT INTO `shop_sell_price` VALUES ('40673', 'ē«ē°ä¹å½±é¦ēŗ§', '0');
INSERT INTO `shop_sell_price` VALUES ('40674', 'ē«ē°ä¹å½±ęē²', '0');
INSERT INTO `shop_sell_price` VALUES ('40675', 'é»ęēæē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40676', '?ä¹ę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40677', 'é»ęēæē³éøå', '0');
INSERT INTO `shop_sell_price` VALUES ('40678', 'ēµé­ē³ē¢ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40679', 'ę±”ęµēéē²', '0');
INSERT INTO `shop_sell_price` VALUES ('40680', 'ę±”ęµęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('40681', 'ę±”ęµēé¢é“', '0');
INSERT INTO `shop_sell_price` VALUES ('40682', 'ę±”ęµēčē²', '0');
INSERT INTO `shop_sell_price` VALUES ('40683', 'ę±”ęµēå¤“ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40684', 'ę±”ęµēå¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40685', 'ęŖē£Øåēéå', '0');
INSERT INTO `shop_sell_price` VALUES ('40686', 'å®ęåēéå', '0');
INSERT INTO `shop_sell_price` VALUES ('40687', 'å„„å§ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40688', 'ęŖäøę¼ēéå', '0');
INSERT INTO `shop_sell_price` VALUES ('40689', 'ęŖē²¾éēéå', '0');
INSERT INTO `shop_sell_price` VALUES ('40690', 'ęŖäæ®č”„ēéå', '0');
INSERT INTO `shop_sell_price` VALUES ('40691', 'åęåēéå', '0');
INSERT INTO `shop_sell_price` VALUES ('40692', 'å®ęēčå®å¾', '50');
INSERT INTO `shop_sell_price` VALUES ('40693', 'čæå¾ééē²', '0');
INSERT INTO `shop_sell_price` VALUES ('40694', 'čæå¾éęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('40695', 'čæå¾éé¢é“', '0');
INSERT INTO `shop_sell_price` VALUES ('40696', 'čæå¾éēéē©', '0');
INSERT INTO `shop_sell_price` VALUES ('40697', 'čæå¾éčē²', '0');
INSERT INTO `shop_sell_price` VALUES ('40698', 'čæå¾éå¤“ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40699', 'čæå¾éå¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40700', 'é¶ē¬', '0');
INSERT INTO `shop_sell_price` VALUES ('40701', 'å°čå®å¾', '50');
INSERT INTO `shop_sell_price` VALUES ('40702', 'å°č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40703', 'åæēµęÆéē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40704', 'ę­»äŗ”å°¾éŖØ', '0');
INSERT INTO `shop_sell_price` VALUES ('40705', 'ę­»äŗ”å·Øę§', '0');
INSERT INTO `shop_sell_price` VALUES ('40706', 'ę­»äŗ”ęé¤', '0');
INSERT INTO `shop_sell_price` VALUES ('40707', 'ę­»äŗ”é¦ēŗ§', '0');
INSERT INTO `shop_sell_price` VALUES ('40708', 'ę­»äŗ”éæē', '0');
INSERT INTO `shop_sell_price` VALUES ('40709', 'ę­»äŗ”ä¹å', '0');
INSERT INTO `shop_sell_price` VALUES ('40710', 'ęåēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40711', 'å”å¾ē©ęÆé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('40712', 'å”ē«ę®ēé«ēŗ§č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40713', 'å”ē«ę®ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40714', 'čå°¾č„č“ä¹ē®', '0');
INSERT INTO `shop_sell_price` VALUES ('40715', 'ē®å°ęÆēē¤¼ē©', '0');
INSERT INTO `shop_sell_price` VALUES ('40716', 'ē·ē·ēå®ē©', '1240');
INSERT INTO `shop_sell_price` VALUES ('40717', 'å¼ē»ēęä¹¦', '50');
INSERT INTO `shop_sell_price` VALUES ('40718', 'č”ē³ē¢ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40719', 'ę··ę²é¦ēŗ§', '0');
INSERT INTO `shop_sell_price` VALUES ('40720', 'é»ęä¹ēæ¼', '0');
INSERT INTO `shop_sell_price` VALUES ('40721', 'å·Øå¤§åēē§å­', '0');
INSERT INTO `shop_sell_price` VALUES ('40722', 'éåē', '990');
INSERT INTO `shop_sell_price` VALUES ('40723', 'é¶åē', '1000');
INSERT INTO `shop_sell_price` VALUES ('40724', 'éåē', '1010');
INSERT INTO `shop_sell_price` VALUES ('40725', 'åēē³ę', '1020');
INSERT INTO `shop_sell_price` VALUES ('40726', 'åēē§å­', '1030');
INSERT INTO `shop_sell_price` VALUES ('40727', 'ē»æē­č¢', '1040');
INSERT INTO `shop_sell_price` VALUES ('40728', 'ēŗ¢ē­č¢', '1050');
INSERT INTO `shop_sell_price` VALUES ('40729', 'éč¢å­', '1060');
INSERT INTO `shop_sell_price` VALUES ('40730', 'å£čÆå”ē', '1070');
INSERT INTO `shop_sell_price` VALUES ('40731', 'ęäŗŗčå”ē', '1080');
INSERT INTO `shop_sell_price` VALUES ('40732', 'ē½č²ęäŗŗčå”ē', '1090');
INSERT INTO `shop_sell_price` VALUES ('40733', 'åčŖč“§åø', '1100');
INSERT INTO `shop_sell_price` VALUES ('40734', 'äæ”čµč“§åø', '1110');
INSERT INTO `shop_sell_price` VALUES ('40735', 'åę°č“§åø', '1120');
INSERT INTO `shop_sell_price` VALUES ('40736', 'ęŗę§č“§åø', '1130');
INSERT INTO `shop_sell_price` VALUES ('40737', 'čå®ē®±', '50');
INSERT INTO `shop_sell_price` VALUES ('40738', 'é¶é£å', '0');
INSERT INTO `shop_sell_price` VALUES ('40739', 'é£å', '0');
INSERT INTO `shop_sell_price` VALUES ('40740', 'éé£å', '0');
INSERT INTO `shop_sell_price` VALUES ('40741', 'å„„éåé²ę ¹éééŖØē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40742', 'å¤ä»£ä¹ē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40743', 'ē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40744', 'é¶ē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40745', 'é»éē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40746', 'ē±³ē“¢čē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40747', 'é»č²ē±³ē“¢čē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40748', 'å„„éåé²ę ¹ē®­', '0');
INSERT INTO `shop_sell_price` VALUES ('40749', 'ēē¬ä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40750', 'ē “ē­ä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40751', 'ęē¬ä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40752', 'é»éä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40753', 'ēē¬ä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40754', 'ēē¬ä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40755', 'ēē¬ä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40756', 'ē„ä¹ē', '25000');
INSERT INTO `shop_sell_price` VALUES ('40757', 'é¢éä¹ē', '45000');
INSERT INTO `shop_sell_price` VALUES ('40758', 'čå©ä¹ē', '45000');
INSERT INTO `shop_sell_price` VALUES ('40759', 'ēē¬ä¹ē', '45000');
INSERT INTO `shop_sell_price` VALUES ('40760', 'ēē¬ä¹ē', '45000');
INSERT INTO `shop_sell_price` VALUES ('40761', 'å® ē©ē®ēē²', '7500');
INSERT INTO `shop_sell_price` VALUES ('40762', 'å® ē©éŖ·é«ēē²', '7500');
INSERT INTO `shop_sell_price` VALUES ('40763', 'å® ē©é¢éēē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('40764', 'å® ē©ē±³ē“¢čēē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('40765', 'å® ē©åå­ēē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('40766', 'å® ē©é¾ē²', '25000');
INSERT INTO `shop_sell_price` VALUES ('40778', 'ē®åø¦', '1');
INSERT INTO `shop_sell_price` VALUES ('40779', 'é¢éå', '1');
INSERT INTO `shop_sell_price` VALUES ('40801', 'ęå®ä¼ é(é»ęå±±č)', '500');
INSERT INTO `shop_sell_price` VALUES ('40802', 'ęå®ä¼ é(å„å²©ē«ęåŗ)', '500');
INSERT INTO `shop_sell_price` VALUES ('40803', 'ęå®ä¼ é(éå­ę£®ę)', '500');
INSERT INTO `shop_sell_price` VALUES ('40804', 'ęå®ä¼ é(å·“ęå”ęÆę ęÆå°)', '500');
INSERT INTO `shop_sell_price` VALUES ('40805', 'ęå®ä¼ é(ę³å©ęę ęÆå°)', '500');
INSERT INTO `shop_sell_price` VALUES ('40806', 'ęå®ä¼ é(ęå¾·ęå°ę ęÆå°)', '500');
INSERT INTO `shop_sell_price` VALUES ('40807', 'ęå®ä¼ é(ęµ·é³ę“ē©“3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40808', 'ęå®ä¼ é(ęµ·é³ę“ē©“4F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40809', 'ęå®ä¼ é(ē«ēŖ)', '200');
INSERT INTO `shop_sell_price` VALUES ('40810', 'ęå®ä¼ é(é¾ä¹č°·å„å£)', '500');
INSERT INTO `shop_sell_price` VALUES ('40811', 'ęå®ä¼ é(ę²ę¼ )', '200');
INSERT INTO `shop_sell_price` VALUES ('40812', 'ęå®ä¼ é(ę¬§ē)', '200');
INSERT INTO `shop_sell_price` VALUES ('40813', 'ęå®ä¼ é(čæå¤ęåŗ)', '200');
INSERT INTO `shop_sell_price` VALUES ('40814', 'ęå®ä¼ é(é£å°øå°)', '200');
INSERT INTO `shop_sell_price` VALUES ('40815', 'ęå®ä¼ é(é£ęØå°ē1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40816', 'ęå®ä¼ é(é£ęØå°ē2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40817', 'ęå®ä¼ é(å·Øčę“ē©“)', '200');
INSERT INTO `shop_sell_price` VALUES ('40818', 'ęå®ä¼ é(å·Øčę“ē©“)', '200');
INSERT INTO `shop_sell_price` VALUES ('40819', 'ęå®ä¼ é(å·Øčå„³ēę ęÆå°)', '200');
INSERT INTO `shop_sell_price` VALUES ('40820', 'ęå®ä¼ é(č±”ēå”5F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40821', 'ęå®ä¼ é(č±”ēå”6F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40822', 'ęå®ä¼ é(č±”ēå”7F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40823', 'ęå®ä¼ é(č±”ēå”8F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40824', 'ęå®ä¼ é(éŖå£«ę“ē©“2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40825', 'ęå®ä¼ é(éŖå£«ę“ē©“3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40826', 'ęå®ä¼ é(éŖå£«ę“ē©“4F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40827', 'ęå®ä¼ é(å„å²©å°ē2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40828', 'ęå®ä¼ é(å„å²©å°ē3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40829', 'ęå®ä¼ é(å„å²©å°ē4F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40830', 'ęå®ä¼ é(å¤é²äøå°ē3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40831', 'ęå®ä¼ é(å¤é²äøå°ē4F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40832', 'ęå®ä¼ é(å¤é²äøå°ē5F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40833', 'ęå®ä¼ é(å¤é²äøå°ē6F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40834', 'ęå®ä¼ é(å¤é²äøå°ē7F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40835', 'ęå®ä¼ é(é¾ä¹č°·å°ē1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40836', 'ęå®ä¼ é(é¾ä¹č°·å°ē2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40837', 'ęå®ä¼ é(é¾ä¹č°·å°ē3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40838', 'ęå®ä¼ é(é¾ä¹č°·å°ē4F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40839', 'ęå®ä¼ é(é¾ä¹č°·å°ē5F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40840', 'ęå®ä¼ é(é¾ä¹č°·å°ē6F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40841', 'ęå®ä¼ é(å®å”ēęÆę ęÆå°)', '200');
INSERT INTO `shop_sell_price` VALUES ('40842', 'ęå®ä¼ é(é£ęØå)', '200');
INSERT INTO `shop_sell_price` VALUES ('40843', 'ęå®ä¼ é(é£ęØę²ę¼ )', '200');
INSERT INTO `shop_sell_price` VALUES ('40844', 'ęå®ä¼ é(åøé²čæŖå”ę“)', '200');
INSERT INTO `shop_sell_price` VALUES ('40845', 'ęå®ä¼ é(ę²é»ę“ē©“)', '200');
INSERT INTO `shop_sell_price` VALUES ('40846', 'ęå®ä¼ é(ęęÆå”å·“å¾·å°äøę“ē©“1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40847', 'ęå®ä¼ é(ęęÆå”å·“å¾·å°äøę“ē©“2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40848', 'ęå®ä¼ é(ęęÆå”å·“å¾·å°äøę“ē©“3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40849', 'ęå®ä¼ é(å¤ä»£äŗŗē©ŗé“1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40850', 'ęå®ä¼ é(å¤ä»£äŗŗē©ŗé“2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40851', 'ęå®ä¼ é(å¤ä»£äŗŗē©ŗé“4F)', '200');
INSERT INTO `shop_sell_price` VALUES ('40852', 'ęå®ä¼ é(å„„å§å°ē)', '200');
INSERT INTO `shop_sell_price` VALUES ('40853', 'ęå®ä¼ é(å¤§ę“ē©“ęµęåå°åŗ)', '200');
INSERT INTO `shop_sell_price` VALUES ('40854', 'ęå®ä¼ é(é­ęē„ę®æ)', '200');
INSERT INTO `shop_sell_price` VALUES ('40855', 'ęå®ä¼ é(ē²¾ēµå¢ē©“)', '200');
INSERT INTO `shop_sell_price` VALUES ('40856', 'ęå®ä¼ é(ęµ·č“¼å²)', '200');
INSERT INTO `shop_sell_price` VALUES ('40857', 'ęå®ä¼ é(ęęÆå”å·“å¾·ę­£éØ)', '200');
INSERT INTO `shop_sell_price` VALUES ('40858', 'äŗŗå¤“é©¬ē½å°å°XO', '200');
INSERT INTO `shop_sell_price` VALUES ('40859', 'é­ę³å·č½“(åēŗ§ę²»ęęÆ)', '20');
INSERT INTO `shop_sell_price` VALUES ('40860', 'é­ę³å·č½“(ę„åęÆ)', '20');
INSERT INTO `shop_sell_price` VALUES ('40861', 'é­ę³å·č½“(äæę¤ē½©)', '20');
INSERT INTO `shop_sell_price` VALUES ('40862', 'é­ę³å·č½“(åē®­)', '20');
INSERT INTO `shop_sell_price` VALUES ('40863', 'é­ę³å·č½“(ęå®ä¼ é)', '20');
INSERT INTO `shop_sell_price` VALUES ('40864', 'é­ę³å·č½“(å°ē®­)', '20');
INSERT INTO `shop_sell_price` VALUES ('40865', 'é­ę³å·č½“(é£å)', '20');
INSERT INTO `shop_sell_price` VALUES ('40866', 'é­ę³å·č½“(ē„å£ę­¦åØ)', '20');
INSERT INTO `shop_sell_price` VALUES ('40867', 'é­ę³å·č½“(č§£ęÆęÆ)', '40');
INSERT INTO `shop_sell_price` VALUES ('40868', 'é­ę³å·č½“(åÆå·ęę )', '40');
INSERT INTO `shop_sell_price` VALUES ('40869', 'é­ę³å·č½“(ęÆå)', '40');
INSERT INTO `shop_sell_price` VALUES ('40870', 'é­ę³å·č½“(ęä¼¼é­ę³ę­¦åØ)', '40');
INSERT INTO `shop_sell_price` VALUES ('40871', 'é­ę³å·č½“(ę ęéå½¢ęÆ)', '40');
INSERT INTO `shop_sell_price` VALUES ('40872', 'é­ę³å·č½“(č“éå¼ŗå)', '40');
INSERT INTO `shop_sell_price` VALUES ('40873', 'é­ę³å·č½“(ē«ē®­)', '40');
INSERT INTO `shop_sell_price` VALUES ('40874', 'é­ę³å·č½“(å°ē±ä¹ē)', '40');
INSERT INTO `shop_sell_price` VALUES ('40875', 'é­ę³å·č½“(ęåé·ēµ)', '80');
INSERT INTO `shop_sell_price` VALUES ('40876', 'é­ę³å·č½“(čµ·ę­»åēęÆ)', '80');
INSERT INTO `shop_sell_price` VALUES ('40877', 'é­ę³å·č½“(äø­ēŗ§ę²»ęęÆ)', '80');
INSERT INTO `shop_sell_price` VALUES ('40878', 'é­ę³å·č½“(?ē²åęÆ)', '80');
INSERT INTO `shop_sell_price` VALUES ('40879', 'é­ę³å·č½“(é ē²ę¤ę)', '80');
INSERT INTO `shop_sell_price` VALUES ('40880', 'é­ę³å·č½“(åÆå°ę°ęÆ)', '80');
INSERT INTO `shop_sell_price` VALUES ('40881', 'é­ę³å·č½“(č½éęęµ)', '80');
INSERT INTO `shop_sell_price` VALUES ('40883', 'é­ę³å·č½“(ēē§ēē«ē)', '160');
INSERT INTO `shop_sell_price` VALUES ('40884', 'é­ę³å·č½“(éēę°čęÆ)', '160');
INSERT INTO `shop_sell_price` VALUES ('40885', 'é­ę³å·č½“(åē©ęÆ)', '160');
INSERT INTO `shop_sell_price` VALUES ('40886', 'é­ę³å·č½“(åøč”é¬¼ä¹å»)', '160');
INSERT INTO `shop_sell_price` VALUES ('40887', 'é­ę³å·č½“(ē¼éęÆ)', '160');
INSERT INTO `shop_sell_price` VALUES ('40888', 'é­ę³å·č½“(å²©ē¢)', '160');
INSERT INTO `shop_sell_price` VALUES ('40889', 'é­ę³å·č½“(é­ę³å±é)', '160');
INSERT INTO `shop_sell_price` VALUES ('40890', 'é­ę³å·č½“(å„ę³ęÆ)', '160');
INSERT INTO `shop_sell_price` VALUES ('40891', 'é­ę³å·č½“(ęØä¹ä¼ēčÆå)', '320');
INSERT INTO `shop_sell_price` VALUES ('40892', 'é­ę³å·č½“(ęéč½é·)', '320');
INSERT INTO `shop_sell_price` VALUES ('40893', 'é­ę³å·č½“(é«ēŗ§ę²»ęęÆ)', '320');
INSERT INTO `shop_sell_price` VALUES ('40894', 'é­ę³å·č½“(čæ·é­ęÆ)', '320');
INSERT INTO `shop_sell_price` VALUES ('40895', 'é­ę³å·č½“(å£ę“ä¹å)', '3000');
INSERT INTO `shop_sell_price` VALUES ('40896', 'é­ę³å·č½“(å°é„)', '3000');
INSERT INTO `shop_sell_price` VALUES ('40897', 'é­ę³å·č½“(é­åå¤ŗå)', '320');
INSERT INTO `shop_sell_price` VALUES ('40898', 'é­ę³å·č½“(é»?ä¹å½±)', '320');
INSERT INTO `shop_sell_price` VALUES ('40899', 'é¢éåē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40901', 'ē»å©ęę(é¶)', '2500');
INSERT INTO `shop_sell_price` VALUES ('40902', 'ē»å©ęę(é)', '5000');
INSERT INTO `shop_sell_price` VALUES ('40903', 'ē»å©ęę(čå®ē³)', '2500');
INSERT INTO `shop_sell_price` VALUES ('40904', 'ē»å©ęę(ē»æå®ē³)', '2500');
INSERT INTO `shop_sell_price` VALUES ('40905', 'ē»å©ęę(ēŗ¢å®ē³)', '2500');
INSERT INTO `shop_sell_price` VALUES ('40906', 'ē»å©ęę(é»ē³)', '2500');
INSERT INTO `shop_sell_price` VALUES ('40907', 'č„æēęę', '0');
INSERT INTO `shop_sell_price` VALUES ('40908', 'ę¬§ęęę', '0');
INSERT INTO `shop_sell_price` VALUES ('40929', 'åé¶ē„ē§čÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('40930', 'ē¤č', '0');
INSERT INTO `shop_sell_price` VALUES ('40931', 'ē²¾å·„ēčå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40932', 'ē²¾å·„ēåč“Øčå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40933', 'ē²¾å·„ēé«åč“Øčå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40934', 'ē²¾å·„ēęåčå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40935', 'ē²¾å·„ēē»æå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40936', 'ē²¾å·„ēåč“Øē»æå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40937', 'ē²¾å·„ēé«åč“Øē»æå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40938', 'ē²¾å·„ēęåē»æå®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40939', 'ē²¾å·„ēēŗ¢å®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40940', 'ē²¾å·„ēåč“Øēŗ¢å®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40941', 'ē²¾å·„ēé«åč“Øēŗ¢å®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40942', 'ē²¾å·„ēęåēŗ¢å®ē³', '0');
INSERT INTO `shop_sell_price` VALUES ('40943', 'ē²¾å·„ēåä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40944', 'ē²¾å·„ēåč“Øåä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40945', 'ē²¾å·„ēé«åč“Øåä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40946', 'ē²¾å·„ēęååä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40947', 'ē²¾å·„ēę°“ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40948', 'ē²¾å·„ēåč“Øę°“ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40949', 'ē²¾å·„ēé«åč“Øę°“ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40950', 'ē²¾å·„ēęåę°“ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40951', 'ē²¾å·„ēē«ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40952', 'ē²¾å·„ēåč“Øē«ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40953', 'ē²¾å·„ēé«åč“Øē«ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40954', 'ē²¾å·„ēęåē«ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40955', 'ē²¾å·„ēé£ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40956', 'ē²¾å·„ēåč“Øé£ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40957', 'ē²¾å·„ēé«åč“Øé£ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40958', 'ē²¾å·„ēęåé£ä¹é»', '0');
INSERT INTO `shop_sell_price` VALUES ('40959', 'å„ę³åēå¾½å°', '0');
INSERT INTO `shop_sell_price` VALUES ('40960', 'ę³ä»¤åēå¾½å°', '0');
INSERT INTO `shop_sell_price` VALUES ('40961', 'é­å½åēå¾½å°', '0');
INSERT INTO `shop_sell_price` VALUES ('40962', 'ęęåēå¾½å°', '0');
INSERT INTO `shop_sell_price` VALUES ('40964', 'é»é­ę³ē²', '0');
INSERT INTO `shop_sell_price` VALUES ('40965', 'ęęÆå”å·“å¾·å¶ä½ę­¦åØē§ē¬', '0');
INSERT INTO `shop_sell_price` VALUES ('40966', 'ēļ¼å„ēå¶ä½é²å·ē§ē¬', '0');
INSERT INTO `shop_sell_price` VALUES ('40967', 'å£å°éē©', '0');
INSERT INTO `shop_sell_price` VALUES ('40968', 'äæ®č”čē»åø', '0');
INSERT INTO `shop_sell_price` VALUES ('40969', 'é»ęå¦ē²¾ēēµé­ę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('40970', 'å®å ęÆēå°¾å·“', '0');
INSERT INTO `shop_sell_price` VALUES ('40971', 'å®å ęÆä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40972', 'å·“čØęÆēę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40973', 'å·“čØęÆēēæč', '0');
INSERT INTO `shop_sell_price` VALUES ('40974', 'ēé«ēč”', '0');
INSERT INTO `shop_sell_price` VALUES ('40975', 'ēé«ēé³', '0');
INSERT INTO `shop_sell_price` VALUES ('40976', 'ę²', '0');
INSERT INTO `shop_sell_price` VALUES ('40977', 'ęč”ēę²', '0');
INSERT INTO `shop_sell_price` VALUES ('40978', 'å°ä¹å®ę¤čēå°¾å·“', '0');
INSERT INTO `shop_sell_price` VALUES ('40979', 'ę°“ä¹å®ę¤čēå°¾å·“', '0');
INSERT INTO `shop_sell_price` VALUES ('40980', 'ē«ä¹å®ę¤čēå°¾å·“', '0');
INSERT INTO `shop_sell_price` VALUES ('40981', 'é£ä¹å®ę¤čēå°¾å·“', '0');
INSERT INTO `shop_sell_price` VALUES ('40982', 'å°ä¹å®ę¤čēē®', '0');
INSERT INTO `shop_sell_price` VALUES ('40983', 'ę°“ä¹å®ę¤čēē®', '0');
INSERT INTO `shop_sell_price` VALUES ('40984', 'ē«ä¹å®ę¤čēē®', '0');
INSERT INTO `shop_sell_price` VALUES ('40985', 'é£ä¹å®ę¤čēē®', '0');
INSERT INTO `shop_sell_price` VALUES ('40986', 'å®ę¤čä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40987', 'åčÆåēé»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40988', 'åčÆåēé»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40989', 'åčÆåēé»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('40990', 'ēé­ēēæč', '0');
INSERT INTO `shop_sell_price` VALUES ('40991', 'ēé­åęå', '0');
INSERT INTO `shop_sell_price` VALUES ('40992', 'ēé­ēå¤“', '0');
INSERT INTO `shop_sell_price` VALUES ('40993', 'ēé­ēč§', '0');
INSERT INTO `shop_sell_price` VALUES ('40994', 'ēé­ä¹č', '0');
INSERT INTO `shop_sell_price` VALUES ('40995', 'ēé­ä¹ę', '0');
INSERT INTO `shop_sell_price` VALUES ('40996', 'ēé­ēåæč', '0');
INSERT INTO `shop_sell_price` VALUES ('40997', 'ēé­ä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('40998', 'ēé­ä¹čŗ', '0');
INSERT INTO `shop_sell_price` VALUES ('40999', 'é»ęå¦ē²¾å£«åµå¾½ē« ', '0');
INSERT INTO `shop_sell_price` VALUES ('41000', 'é»ęå¦ē²¾å°åå¾½ē« ', '0');
INSERT INTO `shop_sell_price` VALUES ('41001', 'ę„åæé', '0');
INSERT INTO `shop_sell_price` VALUES ('41002', 'ēæē©č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41003', 'ē½ä¼ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41004', 'ęåøē½ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41005', 'å¤ę“»äøę°øēä¹čŖēŗ¦ä¹¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41006', 'ęä¼Æåēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41007', 'ä¼čäøēå½ä»¤ä¹¦ļ¼ēµé­ä¹å®ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41008', 'ä¼čäøēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41009', 'ä¼čäøēå½ä»¤ä¹¦ļ¼åēä¹ęåæ', '0');
INSERT INTO `shop_sell_price` VALUES ('41010', 'ä¼čäøēęØčå½', '0');
INSERT INTO `shop_sell_price` VALUES ('41011', 'å°å°ēåå²ä¹¦ē¬¬1é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41012', 'å°å°ēåå²ä¹¦ē¬¬2é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41013', 'å°å°ēåå²ä¹¦ē¬¬3é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41014', 'å°å°ēåå²ä¹¦ē¬¬4é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41015', 'å°å°ēåå²ä¹¦ē¬¬5é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41016', 'å°å°ēåå²ä¹¦ē¬¬6é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41017', 'å°å°ēåå²ä¹¦ē¬¬7é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41018', 'å°å°ēåå²ä¹¦ē¬¬8é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41019', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬1é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41020', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬2é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41021', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬3é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41022', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬4é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41023', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬5é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41024', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬6é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41025', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬7é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41026', 'ęęÆå”å·“å¾·åå²ä¹¦ē¬¬8é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41027', 'å®ę“ēęęÆå”å·“å¾·åå²ä¹¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41028', 'ę­»äŗ”éŖå£«ä¹ä¹¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41029', 'å¬å¤ēä¹ę ø', '0');
INSERT INTO `shop_sell_price` VALUES ('41030', 'å¬å¤ēē¢ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41031', 'äøé¶ę®µå¬å¤ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41032', 'äŗé¶ę®µå¬å¤ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41033', 'äøé¶ę®µå¬å¤ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41034', 'åé¶ę®µå¬å¤ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41035', 'å®ę“ēå¬å¤ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41036', 'č¶ę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41037', 'äøå®ę“ēčŖęµ·ę„åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('41038', 'čŖęµ·ę„åæē¬¬1é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41039', 'čŖęµ·ę„åæē¬¬2é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41040', 'čŖęµ·ę„åæē¬¬3é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41041', 'čŖęµ·ę„åæē¬¬4é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41042', 'čŖęµ·ę„åæē¬¬5é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41043', 'čŖęµ·ę„åæē¬¬6é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41044', 'čŖęµ·ę„åæē¬¬7é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41045', 'čŖęµ·ę„åæē¬¬8é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41046', 'čŖęµ·ę„åæē¬¬9é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41047', 'čŖęµ·ę„åæē¬¬10é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41048', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬1é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41049', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬2é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41050', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬3é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41051', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬4é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41052', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬5é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41053', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬6é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41054', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬7é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41055', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬8é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41056', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬9é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41057', 'ę¶ēč¶ę°“ēčŖęµ·ę„åæē¬¬10é”µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41058', 'å®ę“ēčŖęµ·ę„åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('41059', 'čŖęµ·å£«ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41060', 'čÆŗę¼éæåå·“ēäæ”', '0');
INSERT INTO `shop_sell_price` VALUES ('41061', 'å¦ē²¾č°ę„ä¹¦ļ¼å”éŗ¦é½č¾¾ēę', '0');
INSERT INTO `shop_sell_price` VALUES ('41062', 'äŗŗē±»č°ę„ä¹¦ļ¼å·“åŗę©é£é²å ', '0');
INSERT INTO `shop_sell_price` VALUES ('41063', 'ē²¾ēµč°ę„ä¹¦ļ¼åÆę®é½č¾¾ēę', '0');
INSERT INTO `shop_sell_price` VALUES ('41064', 'å¦é­č°ę„ä¹¦ļ¼å¼§é¬ēé£é²å ', '0');
INSERT INTO `shop_sell_price` VALUES ('41065', 'ę­»äŗ”ä¹ę č°ę„ä¹¦ļ¼čÆŗäŗéæåå·“', '0');
INSERT INTO `shop_sell_price` VALUES ('41066', 'ę±”ęµēę ¹', '0');
INSERT INTO `shop_sell_price` VALUES ('41067', 'ę±”ęµēę ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41068', 'ę±”ęµēē®', '0');
INSERT INTO `shop_sell_price` VALUES ('41069', 'ę±”ęµēé¬ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41070', 'ę±”ęµēē²¾ēµē¾½ēæ¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41071', 'é¶ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41072', 'é¶ēå°', '0');
INSERT INTO `shop_sell_price` VALUES ('41073', 'å¼ŗēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('41074', 'å¼ŗēēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41075', 'ę±”ęµēå¤“å', '0');
INSERT INTO `shop_sell_price` VALUES ('41076', 'åę øę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('41077', 'ę°“ę øę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('41078', 'ē«ę øę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('41079', 'é£ę øę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('41080', 'ē²¾ēµę øę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('41081', 'å¦é­å°ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41082', 'å¦é­å°ēé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41083', 'åęÆē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41084', 'å¹»č§ä¹ē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41085', 'é¢čØå®¶ēē ', '0');
INSERT INTO `shop_sell_price` VALUES ('41086', 'ę ē²¾ēę ¹', '0');
INSERT INTO `shop_sell_price` VALUES ('41087', 'ę ē²¾ēę ē®', '0');
INSERT INTO `shop_sell_price` VALUES ('41088', 'ę ē²¾ēå¶å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41089', 'ę ē²¾ēę ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41090', 'é£é²å å¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41091', 'é½č¾¾ēęå¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41092', 'éæåå·“å¾č¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41093', 'ę¢¦å¹»ēēåØåØ', '0');
INSERT INTO `shop_sell_price` VALUES ('41094', 'čÆ±ęēé¦ę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41095', 'ę¼äŗ®ēę“č£', '0');
INSERT INTO `shop_sell_price` VALUES ('41096', 'åäø½ēęę', '0');
INSERT INTO `shop_sell_price` VALUES ('41097', 'ē±ēä¼ēåæ', '0');
INSERT INTO `shop_sell_price` VALUES ('41098', 'č±éä¼ č®°', '0');
INSERT INTO `shop_sell_price` VALUES ('41099', 'ę¶é«¦ēåø½å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41100', 'é«ēŗ§ēŗ¢é', '0');
INSERT INTO `shop_sell_price` VALUES ('41101', 'ē„ē§ēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('41102', 'ä¼ę£®ä¹åæ', '0');
INSERT INTO `shop_sell_price` VALUES ('41103', 'ē³å¤“å', '250');
INSERT INTO `shop_sell_price` VALUES ('41104', 'éēæē³', '500');
INSERT INTO `shop_sell_price` VALUES ('41105', 'ē«å±±å²©', '500');
INSERT INTO `shop_sell_price` VALUES ('41106', 'ēä¾å„“ēå°¾å·“ęÆ', '250');
INSERT INTO `shop_sell_price` VALUES ('41107', 'ēē²ē', '250');
INSERT INTO `shop_sell_price` VALUES ('41108', 'é»ē³åē³', '250');
INSERT INTO `shop_sell_price` VALUES ('41109', 'ēä¾å„“å¤éØēå°¾å·“ęÆ', '250');
INSERT INTO `shop_sell_price` VALUES ('41110', 'éē©č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('41111', 'ē “ę§ēéē©č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('41112', 'ę§éē©č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('41113', 'č¤Ŗč²ęę', '0');
INSERT INTO `shop_sell_price` VALUES ('41114', 'ęč”ēęåø', '0');
INSERT INTO `shop_sell_price` VALUES ('41115', 'ęč”ēęä»¶', '0');
INSERT INTO `shop_sell_price` VALUES ('41116', 'č¤Ŗč²é”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41117', 'ē “ę§ēé±å', '0');
INSERT INTO `shop_sell_price` VALUES ('41118', 'ęč”ēåé¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41119', 'éå¤±ēé„å', '0');
INSERT INTO `shop_sell_price` VALUES ('41120', 'ēéēé­ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41121', 'ē«ē°ä¹å½±ēå„ēŗ¦ä¹¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41122', 'ē«ē°ä¹å½±ēå„ēŗ¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41123', 'ē«ē°ä¹å½±ēå č½ē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41124', 'ē«ē°ä¹å½±ēę åē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41125', 'ē«ē°ä¹å½±ēę§ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41126', 'ēé­ēå č½äŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41127', 'ēé­ēę åäŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41128', 'ēé­ēę§ēäŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41129', 'ēé­ēäŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41130', 'ēé­ēå„ēŗ¦ä¹¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41131', 'ēé­å„ēå„ēŗ¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41132', 'ēé­ēå č½ē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41133', 'ēé­ēę åē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41134', 'ēé­ēę§ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41135', 'ē«ē°ä¹å½±ēå č½äŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41136', 'ē«ē°ä¹å½±ēę åäŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41137', 'ē«ē°ä¹å½±ēę§ēäŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41138', 'ē«ē°ä¹å½±ēäŗę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41139', 'äøčµ·ē¼ēå¤čé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41140', 'å¤åēå¤čé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41141', 'ē„ē§ēä½åčÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41142', 'ē„ē§ēé­åčÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41143', 'ęµ·č“¼éŖ·é«é¦é¢åčŗ«čÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41144', 'ęµ·č“¼éŖ·é«å£«åµåčŗ«čÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41145', 'ęµ·č“¼éŖ·é«åęåčŗ«čÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41146', '$10001', '0');
INSERT INTO `shop_sell_price` VALUES ('41147', 'ęęÆä¹¦(ååŗé²ę¤)', '0');
INSERT INTO `shop_sell_price` VALUES ('41148', 'ęęÆä¹¦(åå»å±é)', '0');
INSERT INTO `shop_sell_price` VALUES ('41149', 'ē²¾ēµę°“ę¶(ēē°ä¹é­)', '0');
INSERT INTO `shop_sell_price` VALUES ('41150', 'ē²¾ēµę°“ę¶(č½éęæå)', '0');
INSERT INTO `shop_sell_price` VALUES ('41151', 'ē²¾ēµę°“ę¶(ę°“ä¹é²ę¤)', '0');
INSERT INTO `shop_sell_price` VALUES ('41152', 'ē²¾ēµę°“ę¶(ę±”ęµä¹ę°“)', '0');
INSERT INTO `shop_sell_price` VALUES ('41153', 'ē²¾ēµę°“ę¶(ē²¾åå°å»)', '0');
INSERT INTO `shop_sell_price` VALUES ('41154', 'ęä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('41155', 'ē«ä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('41156', 'åä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('41157', 'ęØä¹é³', '0');
INSERT INTO `shop_sell_price` VALUES ('41158', 'ēéēę°“ę¶ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41159', 'ē„ē§ēē¾½ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41160', 'å® ē©å¬å¤ē¬', '0');
INSERT INTO `shop_sell_price` VALUES ('41161', 'é»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41162', 'é»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41163', 'é»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41164', 'ē„ē§ēé»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41165', 'ē„ē§ēé»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41166', 'ē„ē§ēé»č²č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41167', 'ęå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41168', 'ē„ē§ēęå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41169', 'ē°č²ęå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41170', 'ē„ē§ēē°č²ęå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41171', 'ē½č²ęå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41172', 'ē„ē§ēē½č²ęå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41173', 'éŖå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41174', 'ē„ē§ēéŖå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41175', 'ē°č²éŖå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41176', 'ē„ē§ēē°č²éŖå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41177', 'ē½č²éŖå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41178', 'ē„ē§ēē½č²éŖå£«č³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41179', 'ę³åøč³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41180', 'ē„ē§ēę³åøč³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41181', 'ē°č²ę³åøč³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41182', 'ē„ē§ēē°č²ę³åøč³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41183', 'ē½č²ę³åøč³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41184', 'ē„ē§ēē½č²ę³åøč³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41185', 'ē²¾č“ēé£ēµęę(ē·ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41186', 'ē²¾č“ēé£ēµęę(å¬ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41187', 'ē²¾č“ēé£ēµęę(ä¼Æēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41188', 'ē²¾č“ēé£ēµęę(č±é)', '0');
INSERT INTO `shop_sell_price` VALUES ('41189', 'ē²¾č“ēå°ēµęę(ē·ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41190', 'ē²¾č“ēå°ēµęę(å¬ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41191', 'ē²¾č“ēå°ēµęę(ä¼Æēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41192', 'ē²¾č“ēå°ēµęę(č±é)', '0');
INSERT INTO `shop_sell_price` VALUES ('41193', 'ē²¾č“ēē«ēµęę(ē·ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41194', 'ē²¾č“ēē«ēµęę(å¬ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41195', 'ē²¾č“ēē«ēµęę(ä¼Æēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41196', 'ē²¾č“ēē«ēµęę(č±é)', '0');
INSERT INTO `shop_sell_price` VALUES ('41197', 'ē²¾č“ēę°“ēµęę(ē·ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41198', 'ē²¾č“ēę°“ēµęę(å¬ēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41199', 'ē²¾č“ēę°“ēµęę(ä¼Æēµ)', '0');
INSERT INTO `shop_sell_price` VALUES ('41200', 'ē²¾č“ēę°“ēµęę(č±é)', '0');
INSERT INTO `shop_sell_price` VALUES ('41201', 'éŖå£«ä¹é­', '0');
INSERT INTO `shop_sell_price` VALUES ('41202', 'å¦ē²¾ä¹é­', '0');
INSERT INTO `shop_sell_price` VALUES ('41203', 'ēęä¹é­', '0');
INSERT INTO `shop_sell_price` VALUES ('41204', 'é»å¦ä¹é­', '0');
INSERT INTO `shop_sell_price` VALUES ('41205', 'ę³åøä¹é­', '0');
INSERT INTO `shop_sell_price` VALUES ('41206', 'å°äŗååēę­¦åØ', '250');
INSERT INTO `shop_sell_price` VALUES ('41207', 'č¹åéä½', '0');
INSERT INTO `shop_sell_price` VALUES ('41208', 'å¾®å¼±ēēµé­', '0');
INSERT INTO `shop_sell_price` VALUES ('41209', '$10002', '0');
INSERT INTO `shop_sell_price` VALUES ('41210', '$10003', '0');
INSERT INTO `shop_sell_price` VALUES ('41211', 'é¦č', '0');
INSERT INTO `shop_sell_price` VALUES ('41212', '$10005', '0');
INSERT INTO `shop_sell_price` VALUES ('41213', '$10006', '0');
INSERT INTO `shop_sell_price` VALUES ('41214', '$10012', '0');
INSERT INTO `shop_sell_price` VALUES ('41215', '$10010', '0');
INSERT INTO `shop_sell_price` VALUES ('41216', '$10011', '0');
INSERT INTO `shop_sell_price` VALUES ('41217', '$10028', '0');
INSERT INTO `shop_sell_price` VALUES ('41218', '$10029', '0');
INSERT INTO `shop_sell_price` VALUES ('41219', '$10030', '0');
INSERT INTO `shop_sell_price` VALUES ('41220', '$10031', '0');
INSERT INTO `shop_sell_price` VALUES ('41221', 'é»ęå¦ē²¾č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41222', '$10008', '0');
INSERT INTO `shop_sell_price` VALUES ('41223', '$10007', '0');
INSERT INTO `shop_sell_price` VALUES ('41224', '$10009', '0');
INSERT INTO `shop_sell_price` VALUES ('41225', '$10013', '0');
INSERT INTO `shop_sell_price` VALUES ('41226', '$10014', '0');
INSERT INTO `shop_sell_price` VALUES ('41227', '$10033', '0');
INSERT INTO `shop_sell_price` VALUES ('41228', '$10034', '0');
INSERT INTO `shop_sell_price` VALUES ('41229', '$10025', '0');
INSERT INTO `shop_sell_price` VALUES ('41230', '$10020', '0');
INSERT INTO `shop_sell_price` VALUES ('41231', '$10021', '0');
INSERT INTO `shop_sell_price` VALUES ('41232', '$10016', '0');
INSERT INTO `shop_sell_price` VALUES ('41233', '$10017', '0');
INSERT INTO `shop_sell_price` VALUES ('41234', '$10023', '0');
INSERT INTO `shop_sell_price` VALUES ('41235', '$10024', '0');
INSERT INTO `shop_sell_price` VALUES ('41236', '$10026', '0');
INSERT INTO `shop_sell_price` VALUES ('41237', '$10027', '0');
INSERT INTO `shop_sell_price` VALUES ('41238', '$10017', '0');
INSERT INTO `shop_sell_price` VALUES ('41239', '$10018', '0');
INSERT INTO `shop_sell_price` VALUES ('41240', '$10022', '0');
INSERT INTO `shop_sell_price` VALUES ('41241', '$10015', '0');
INSERT INTO `shop_sell_price` VALUES ('41242', 'å¦é­å®ē©č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('41243', 'ęęÆå”å·“å¾·č”„ē»č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('41244', 'ęęÆå”å·“å¾·č”„ē»ē®±', '0');
INSERT INTO `shop_sell_price` VALUES ('41245', 'ęŗ¶č§£å', '0');
INSERT INTO `shop_sell_price` VALUES ('41246', 'é­ę³ē»ę¶ä½', '0');
INSERT INTO `shop_sell_price` VALUES ('41247', 'é­ę³åØåØēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41248', 'é­ę³åØåØļ¼č„č„', '0');
INSERT INTO `shop_sell_price` VALUES ('41249', 'é­ę³åØåØļ¼å°ęåå·“', '0');
INSERT INTO `shop_sell_price` VALUES ('41250', 'é­ę³åØåØļ¼éē¼å®å®', '0');
INSERT INTO `shop_sell_price` VALUES ('41251', 'éŖ·é«å£ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41252', 'ēå„ēä¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41253', 'ēå®«ęēåøēč°å³ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41254', 'čå©ēå¾½ē« ', '0');
INSERT INTO `shop_sell_price` VALUES ('41255', 'ęēä¹¦ļ¼1é¶ę®µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41256', 'ęēä¹¦ļ¼2é¶ę®µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41257', 'ęēä¹¦ļ¼3é¶ę®µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41258', 'ęēä¹¦ļ¼4é¶ę®µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41259', 'ęēä¹¦ļ¼5é¶ę®µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41260', 'ę“ē«', '150');
INSERT INTO `shop_sell_price` VALUES ('41261', 'é„­å¢', '0');
INSERT INTO `shop_sell_price` VALUES ('41262', 'éø”čäø²ē§', '0');
INSERT INTO `shop_sell_price` VALUES ('41263', 'å¤Ŗé³č±ē±½', '0');
INSERT INTO `shop_sell_price` VALUES ('41264', 'é¢ē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41265', 'čč', '0');
INSERT INTO `shop_sell_price` VALUES ('41266', 'čč', '0');
INSERT INTO `shop_sell_price` VALUES ('41267', 'čµ·å£«', '0');
INSERT INTO `shop_sell_price` VALUES ('41268', 'å°ęÆčØ', '0');
INSERT INTO `shop_sell_price` VALUES ('41269', 'ē¤ēē±³', '0');
INSERT INTO `shop_sell_price` VALUES ('41271', 'ēē±³č±', '0');
INSERT INTO `shop_sell_price` VALUES ('41272', 'ēäøč¾£', '0');
INSERT INTO `shop_sell_price` VALUES ('41273', 'ę¾é„¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41274', 'čččæ', '0');
INSERT INTO `shop_sell_price` VALUES ('41275', 'ēč', '0');
INSERT INTO `shop_sell_price` VALUES ('41276', 'å±±ēŖč', '0');
INSERT INTO `shop_sell_price` VALUES ('41277', 'ę¼ęµ®ä¹ē¼čę', '0');
INSERT INTO `shop_sell_price` VALUES ('41278', 'ē¤ēč', '0');
INSERT INTO `shop_sell_price` VALUES ('41279', 'ēé„¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41280', 'ē¤čččæčµ·åø', '0');
INSERT INTO `shop_sell_price` VALUES ('41281', 'ę°“ęę²ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41282', 'ę°“ęē³éč', '0');
INSERT INTO `shop_sell_price` VALUES ('41283', 'ē¤å±±ēŖčäø²', '0');
INSERT INTO `shop_sell_price` VALUES ('41284', 'ččę±¤', '0');
INSERT INTO `shop_sell_price` VALUES ('41285', 'ē¹å«ēę¼ęµ®ä¹ē¼čę', '0');
INSERT INTO `shop_sell_price` VALUES ('41286', 'ē¹å«ēē¤ēč', '0');
INSERT INTO `shop_sell_price` VALUES ('41287', 'ē¹å«ēēé„¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41288', 'ē¹å«ēē¤čččæčµ·åø', '0');
INSERT INTO `shop_sell_price` VALUES ('41289', 'ē¹å«ēę°“ęę²ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41290', 'ē¹å«ēę°“ęē³éč', '0');
INSERT INTO `shop_sell_price` VALUES ('41291', 'ē¹å«ēē¤å±±ēŖčäø²', '0');
INSERT INTO `shop_sell_price` VALUES ('41292', 'ē¹å«ēččę±¤', '0');
INSERT INTO `shop_sell_price` VALUES ('41293', 'éæéē«æ', '0');
INSERT INTO `shop_sell_price` VALUES ('41294', 'ē­éē«æ', '0');
INSERT INTO `shop_sell_price` VALUES ('41295', 'é„µ', '0');
INSERT INTO `shop_sell_price` VALUES ('41296', 'é²·é±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41297', 'é²é±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41298', 'é³é±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41299', 'čē­åø¦é±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41300', 'é²é±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41301', 'åēŗ¢åēé±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41302', 'åē»æåēé±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41303', 'åčåēé±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41304', 'åē½åēé±¼', '0');
INSERT INTO `shop_sell_price` VALUES ('41305', 'ē “ē¢ēč³ēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41306', 'ē “ē¢ēęę', '0');
INSERT INTO `shop_sell_price` VALUES ('41307', 'ē “ē¢ēé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('41308', 'åčēåēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('41309', 'å® ē©ęéē', '0');
INSERT INTO `shop_sell_price` VALUES ('41310', 'čå©ęå®', '0');
INSERT INTO `shop_sell_price` VALUES ('41311', 'ęåē®±', '0');
INSERT INTO `shop_sell_price` VALUES ('41312', 'å ęęÆåøēē®', '0');
INSERT INTO `shop_sell_price` VALUES ('41313', 'å ęęÆåøēēµé­ē', '0');
INSERT INTO `shop_sell_price` VALUES ('41314', 'å ęęÆåøēē¬¦å', '0');
INSERT INTO `shop_sell_price` VALUES ('41315', 'å£ę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('41316', 'ē„å£ēē±³ē“¢čē²', '0');
INSERT INTO `shop_sell_price` VALUES ('41317', 'ęē½ę£®ēęØčä¹¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41318', 'åÆę©ēä¾æę”ēŗø', '0');
INSERT INTO `shop_sell_price` VALUES ('41319', 'čč±č±ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41320', 'é»č„æč±ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41321', 'ē«ē°č±ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41322', 'å”ęč±ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41323', 'å¤Ŗé³č±č±ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41324', 'å°čå°č±ę', '0');
INSERT INTO `shop_sell_price` VALUES ('41325', 'åå£«ä¹čÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41326', 'åå£«ä¹čÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41327', 'å¹½ēµä¹ę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41328', 'åčēę°ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41329', 'ę ę¬å¶ä½å§ęä¹¦', '0');
INSERT INTO `shop_sell_price` VALUES ('41330', 'ē©ēččä¹čÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('41331', 'ē©ēēä¹čÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('42001', 'ęå®ä¼ é(GMęå¾å®¤)', '200');
INSERT INTO `shop_sell_price` VALUES ('42002', 'ęå®ä¼ é(ę°“ę¶ę“ē©“1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42003', 'ęå®ä¼ é(ę°“ę¶ę“ē©“2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42004', 'ęå®ä¼ é(ę°“ę¶ę“ē©“3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42005', 'ęå®ä¼ é(č±”ēå”1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42006', 'ęå®ä¼ é(čÆē¹å°ē1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42007', 'ęå®ä¼ é(éåæä¹å²)', '200');
INSERT INTO `shop_sell_price` VALUES ('42008', 'ęå®ä¼ é(čÆē¹å°ē2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42009', 'ęå®ä¼ é(čÆē¹å°ē3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42010', 'ęå®ä¼ é(čÆē¹å°ē4F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42011', 'ęå®ä¼ é(éä¼åŗ1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42012', 'ęå®ä¼ é(ēŖå»éč®­ē»åŗ1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42013', 'ęå®ä¼ é(é­å½åēåå¬å®¤1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42014', 'ęå®ä¼ é(éå½ęē»å®¤1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42016', 'ęå®ä¼ é(é­å½č®­ē»åŗ1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42017', 'ęå®ä¼ é(ę¢¦å¹»ä¹å²)', '200');
INSERT INTO `shop_sell_price` VALUES ('42018', 'ęå®ä¼ é(é­å½å¬å¤å®¤1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42019', 'ęå®ä¼ é(é»ęēē»ē1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42020', 'ęå®ä¼ é(é»é­ę³äæ®ē¼åŗ2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42021', 'ęå®ä¼ é(å¤ä»£å·Øäŗŗä¹å¢)', '200');
INSERT INTO `shop_sell_price` VALUES ('42022', 'ęå®ä¼ é(äŗäøåå)', '200');
INSERT INTO `shop_sell_price` VALUES ('42023', 'ęå®ä¼ é(GMęæé“)', '200');
INSERT INTO `shop_sell_price` VALUES ('42024', 'ęå®ä¼ é(ę­£ä¹ē„ę®æ)', '200');
INSERT INTO `shop_sell_price` VALUES ('42025', 'ęå®ä¼ é(éŖę¶ē„ę®æ)', '200');
INSERT INTO `shop_sell_price` VALUES ('42026', 'ęå®ä¼ é(åēčÆę©ę ęÆå°)', '200');
INSERT INTO `shop_sell_price` VALUES ('42027', 'ęå®ä¼ é(é¶éŖå£«ęåŗ)', '60');
INSERT INTO `shop_sell_price` VALUES ('42028', 'ęå®ä¼ é(å¤é²äøå°ē7F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42029', 'å²ę¢ä¹å”ē§»åØå·č½“(100F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42030', 'ęå®ä¼ é(å²ę¢ä¹å”90F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42031', 'ęå®ä¼ é(å²ę¢ä¹å”80F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42032', 'ęå®ä¼ é(å²ę¢ä¹å”70F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42033', 'ęå®ä¼ é(å²ę¢ä¹å”60F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42035', 'ęå®ä¼ é(å²ę¢ä¹å”50F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42036', 'ęå®ä¼ é(å²ę¢ä¹å”40F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42037', 'ęå®ä¼ é(å²ę¢ä¹å”30F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42038', 'ęå®ä¼ é(å²ę¢ä¹å”20F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42039', 'ęå®ä¼ é(å²ę¢ä¹å”10F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42040', 'ęå®ä¼ é(ęµ·č“¼å²å°ē1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42041', 'ęå®ä¼ é(ęµ·č“¼å²å°ē2F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42042', 'ęå®ä¼ é(ęµ·č“¼å²å°ē3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42043', 'ęå®ä¼ é(å°åŗę¹)', '200');
INSERT INTO `shop_sell_price` VALUES ('42044', 'ęå®ä¼ é(čÆ“čÆå²ē»ååŗ)', '200');
INSERT INTO `shop_sell_price` VALUES ('42045', 'ęå®ä¼ é(č”ēå°å±)', '200');
INSERT INTO `shop_sell_price` VALUES ('42046', 'ęå®ä¼ é(č”ēå°å±)', '200');
INSERT INTO `shop_sell_price` VALUES ('42047', 'ęå®ä¼ é(å¤ä»£äŗŗē©ŗé“3F)', '200');
INSERT INTO `shop_sell_price` VALUES ('42048', 'ęå®ä¼ é(å„„å§å°ē)', '200');
INSERT INTO `shop_sell_price` VALUES ('42049', 'ęå®ä¼ é(éåæä¹å²)', '200');
INSERT INTO `shop_sell_price` VALUES ('42050', 'å°ē±å„åŗå·', '200');
INSERT INTO `shop_sell_price` VALUES ('42051', 'ęå®ä¼ é(å½±ä¹ē„ę®æå¤éØ)', '200');
INSERT INTO `shop_sell_price` VALUES ('42052', 'ęå®ä¼ é(å½±ä¹ē„ę®æ1F)', '200');
INSERT INTO `shop_sell_price` VALUES ('43000', 'čæēčÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('45000', 'é­ę³ä¹¦(åēŗ§ę²»ęęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45001', 'é­ę³ä¹¦(ę„åęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45002', 'é­ę³ä¹¦(äæę¤ē½©)', '50');
INSERT INTO `shop_sell_price` VALUES ('45003', 'é­ę³ä¹¦(åē®­)', '50');
INSERT INTO `shop_sell_price` VALUES ('45004', 'é­ę³ä¹¦(ęå®ä¼ é)', '50');
INSERT INTO `shop_sell_price` VALUES ('45005', 'é­ę³ä¹¦(å°ē®­)', '50');
INSERT INTO `shop_sell_price` VALUES ('45006', 'é­ę³ä¹¦(é£å)', '50');
INSERT INTO `shop_sell_price` VALUES ('45007', 'é­ę³ä¹¦(ē„å£ę­¦åØ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45008', 'é­ę³ä¹¦(č§£ęÆęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45009', 'é­ę³ä¹¦(åÆå·ęę )', '50');
INSERT INTO `shop_sell_price` VALUES ('45010', 'é­ę³ä¹¦(ęÆå)', '50');
INSERT INTO `shop_sell_price` VALUES ('45011', 'é­ę³ä¹¦(ęä¼¼é­ę³ę­¦åØ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45012', 'é­ę³ä¹¦(ę ęéå½¢ęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45013', 'é­ę³ä¹¦(č“éå¼ŗå)', '50');
INSERT INTO `shop_sell_price` VALUES ('45014', 'é­ę³ä¹¦(å°ē±ä¹ē)', '50');
INSERT INTO `shop_sell_price` VALUES ('45015', 'é­ę³ä¹¦(ē«ē®­)', '50');
INSERT INTO `shop_sell_price` VALUES ('45016', 'é­ę³ä¹¦(ęåé·ēµ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45017', 'é­ę³ä¹¦(åÆå°ę°ęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45018', 'é­ę³ä¹¦(äø­ēŗ§ę²»ęęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45019', 'é­ę³ä¹¦(?ē²åęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45020', 'é­ę³ä¹¦(é ē²ę¤ę)', '50');
INSERT INTO `shop_sell_price` VALUES ('45021', 'é­ę³ä¹¦(čµ·ę­»åēęÆ)', '50');
INSERT INTO `shop_sell_price` VALUES ('45022', 'é­ę³ä¹¦(č½éęęµ)', '50');
INSERT INTO `shop_sell_price` VALUES ('49005', 'å”ē«ę®ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49006', 'å”ē«ę®ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49007', 'å”ē«ę®ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49008', 'å”ē«ę®ēč¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49009', 'å”ē«ę®ēé«ēŗ§č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49010', 'å”ē«ę®ēé«ēŗ§č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49011', 'å”ē«ę®ēé«ēŗ§č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49012', 'å”ē«ę®ēé«ēŗ§č¢å­', '0');
INSERT INTO `shop_sell_price` VALUES ('49013', 'é­ęēå·č½“', '50000');
INSERT INTO `shop_sell_price` VALUES ('49014', 'ēµé­ä¹ē', '0');
INSERT INTO `shop_sell_price` VALUES ('49015', 'é»č²ē±³ē“¢čęŗ¶ę¶²', '0');
INSERT INTO `shop_sell_price` VALUES ('49103', null, '1000');
INSERT INTO `shop_sell_price` VALUES ('49104', null, '1000');
INSERT INTO `shop_sell_price` VALUES ('49108', null, '4500');
INSERT INTO `shop_sell_price` VALUES ('49109', null, '4500');
INSERT INTO `shop_sell_price` VALUES ('49117', null, '750');
INSERT INTO `shop_sell_price` VALUES ('49118', null, '750');
INSERT INTO `shop_sell_price` VALUES ('49119', null, '750');
INSERT INTO `shop_sell_price` VALUES ('49120', null, '750');
INSERT INTO `shop_sell_price` VALUES ('49122', null, '2000');
INSERT INTO `shop_sell_price` VALUES ('49124', null, '2000');
INSERT INTO `shop_sell_price` VALUES ('49125', null, '2000');
INSERT INTO `shop_sell_price` VALUES ('49127', null, '4500');
INSERT INTO `shop_sell_price` VALUES ('49129', null, '4500');
INSERT INTO `shop_sell_price` VALUES ('49156', null, '150');
INSERT INTO `shop_sell_price` VALUES ('49157', null, '250');
INSERT INTO `shop_sell_price` VALUES ('49158', null, '250');
INSERT INTO `shop_sell_price` VALUES ('60003', 'é«ēŗ§ē„­åøå¬å¤ē', '0');
INSERT INTO `shop_sell_price` VALUES ('60101', 'é„µ (10)', '0');
INSERT INTO `shop_sell_price` VALUES ('60102', 'é„µ (100)', '0');
INSERT INTO `shop_sell_price` VALUES ('60103', 'ęŗ¶č§£å (10)', '0');
INSERT INTO `shop_sell_price` VALUES ('60104', 'ęŗ¶č§£å (100)', '0');
INSERT INTO `shop_sell_price` VALUES ('60105', 'é”¹å[Lv.10 ē§ē¾ē¬]', '0');
INSERT INTO `shop_sell_price` VALUES ('60106', 'é”¹å[Lv.10 ē«]', '0');
INSERT INTO `shop_sell_price` VALUES ('60107', 'é”¹å[Lv.10 ē]', '0');
INSERT INTO `shop_sell_price` VALUES ('60108', 'é”¹å[Lv.10 ęå®¾ē]', '0');
INSERT INTO `shop_sell_price` VALUES ('60109', 'é”¹å[Lv.10 ē¼]', '0');
INSERT INTO `shop_sell_price` VALUES ('60110', 'é”¹å[Lv.10 ęµ£ē]', '0');
INSERT INTO `shop_sell_price` VALUES ('60111', 'é”¹å[Lv.10 å°ēē¬]', '0');
INSERT INTO `shop_sell_price` VALUES ('60112', 'é”¹å[Lv.10 å£ä¼Æēŗ³ē¬]', '0');
INSERT INTO `shop_sell_price` VALUES ('60113', 'é”¹å[Lv.10 ēēø]', '0');
INSERT INTO `shop_sell_price` VALUES ('60114', 'é”¹å[Lv.10 ę“čµ°å]', '0');
INSERT INTO `shop_sell_price` VALUES ('60115', 'é”¹å[Lv.10 åå£«å„]', '0');
INSERT INTO `shop_sell_price` VALUES ('60116', 'é”¹å[Lv.10 ęÆå©]', '0');
INSERT INTO `shop_sell_price` VALUES ('60201', 'ē¬é“ē§»åØęę', '0');
INSERT INTO `shop_sell_price` VALUES ('60202', 'å® ē©ęēÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('60203', 'é­ę³ē¬¦č¢', '0');
INSERT INTO `shop_sell_price` VALUES ('60204', 'é­ę³åØåØļ¼éæč', '0');
INSERT INTO `shop_sell_price` VALUES ('60205', 'é­ę³åØåØļ¼å„ęÆå¦äæ®', '0');
INSERT INTO `shop_sell_price` VALUES ('60206', 'é­ę³åØåØļ¼ē³å¤“é«ä»', '0');
INSERT INTO `shop_sell_price` VALUES ('60207', 'č£å¤é“å®å·č½“', '0');
INSERT INTO `shop_sell_price` VALUES ('60208', 'č£å¤å¼ŗåę°“ę¶', '0');
INSERT INTO `shop_sell_price` VALUES ('60209', 'ååæč”ē', '0');
INSERT INTO `shop_sell_price` VALUES ('60210', 'å·ēŖ„å”', '0');
INSERT INTO `shop_sell_price` VALUES ('60211', 'åå·ēŖ„å”', '0');
INSERT INTO `shop_sell_price` VALUES ('60212', 'ē¬é“ē§»åØęę', '0');
INSERT INTO `shop_sell_price` VALUES ('60213', 'éēčÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('60301', 'å® ē©ę“»åčÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('60302', 'å® ē©é­åčÆę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('60401', 'é­ę³å¾½ē« ', '0');
INSERT INTO `shop_sell_price` VALUES ('62001', 'ē²¾ēµēē„ē¦å¾”å®', '0');
INSERT INTO `shop_sell_price` VALUES ('62002', 'ē²¾ēµēē„ē¦ē­¾čÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('62003', 'åå²å¤ä¹¦(äøå)', '0');
INSERT INTO `shop_sell_price` VALUES ('62004', 'åå²å¤ä¹¦(äøå)', '0');
INSERT INTO `shop_sell_price` VALUES ('62005', 'åå²å¤ä¹¦(åØ)', '0');
INSERT INTO `shop_sell_price` VALUES ('62006', 'å¤ä»£ēē¾½ęÆē¬', '0');
INSERT INTO `shop_sell_price` VALUES ('62007', 'åē„ē¦ēę³ę°“', '0');
INSERT INTO `shop_sell_price` VALUES ('62008', 'å¤ä»£ę ¼å©č¬ēē¾½ęÆ', '0');
INSERT INTO `shop_sell_price` VALUES ('70000', 'č§£å”ē¹ę»åØę”(é¶éŖå£«ę)', '250');
INSERT INTO `shop_sell_price` VALUES ('75000', 'é±å', '0');
INSERT INTO `shop_sell_price` VALUES ('100004', 'åé¦', '8');
INSERT INTO `shop_sell_price` VALUES ('100008', 'ē±³ē“¢čē­å', '1');
INSERT INTO `shop_sell_price` VALUES ('100009', 'å„„éåé²ę ¹ē­å', '1');
INSERT INTO `shop_sell_price` VALUES ('100025', 'é¶å', '750');
INSERT INTO `shop_sell_price` VALUES ('100027', 'å¼Æå', '650');
INSERT INTO `shop_sell_price` VALUES ('100029', 'é¶éæå', '950');
INSERT INTO `shop_sell_price` VALUES ('100037', 'å¤§é©¬å£«é©å', '5500');
INSERT INTO `shop_sell_price` VALUES ('100041', 'ę­¦å£«å', '5500');
INSERT INTO `shop_sell_price` VALUES ('100042', 'ē»å', '1');
INSERT INTO `shop_sell_price` VALUES ('100049', 'ę­¦å®ä¹å', '1');
INSERT INTO `shop_sell_price` VALUES ('100052', 'åęå', '7800');
INSERT INTO `shop_sell_price` VALUES ('100057', 'ēé²åŗä¹å', '8100');
INSERT INTO `shop_sell_price` VALUES ('100062', 'ę­¦å®åęå', '1');
INSERT INTO `shop_sell_price` VALUES ('100064', 'å·Øå', '1');
INSERT INTO `shop_sell_price` VALUES ('100074', 'é¶ååå', '1');
INSERT INTO `shop_sell_price` VALUES ('100084', 'ęé»åå', '1');
INSERT INTO `shop_sell_price` VALUES ('100095', 'ē', '66');
INSERT INTO `shop_sell_price` VALUES ('100098', 'éē', '385');
INSERT INTO `shop_sell_price` VALUES ('100099', 'ē²¾ēµä¹ē', '1');
INSERT INTO `shop_sell_price` VALUES ('100102', 'é²č„æé¤', '650');
INSERT INTO `shop_sell_price` VALUES ('100103', 'ę', '650');
INSERT INTO `shop_sell_price` VALUES ('100107', 'ę·±ēŗ¢éæē', '1');
INSERT INTO `shop_sell_price` VALUES ('100132', 'ē„å®é­ę', '1');
INSERT INTO `shop_sell_price` VALUES ('100143', 'ęę§', '770');
INSERT INTO `shop_sell_price` VALUES ('100151', 'ę¶é­ę§å¤“', '1');
INSERT INTO `shop_sell_price` VALUES ('100164', 'ęé»é¢ēŖ', '1');
INSERT INTO `shop_sell_price` VALUES ('100169', 'ēäŗŗä¹å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('100172', 'å¼', '55');
INSERT INTO `shop_sell_price` VALUES ('100189', 'ęé»åå­å¼', '1');
INSERT INTO `shop_sell_price` VALUES ('120011', 'ęé­ę³å¤“ē', '250');
INSERT INTO `shop_sell_price` VALUES ('120016', 'ę¼ę³¢åø½å­', '0');
INSERT INTO `shop_sell_price` VALUES ('120043', 'é¢ē', '200');
INSERT INTO `shop_sell_price` VALUES ('120056', 'ęé­ę³ęēÆ·', '100');
INSERT INTO `shop_sell_price` VALUES ('120074', 'é¶åęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('120077', 'éčŗ«ęēÆ·', '0');
INSERT INTO `shop_sell_price` VALUES ('120085', 'Tę¤', '0');
INSERT INTO `shop_sell_price` VALUES ('120101', 'ē®ē²', '5500');
INSERT INTO `shop_sell_price` VALUES ('120112', 'ę¼ę³¢å¤å„', '0');
INSERT INTO `shop_sell_price` VALUES ('120128', 'ę°“ę¶ēē²', '0');
INSERT INTO `shop_sell_price` VALUES ('120137', 'ē²¾ēµé¾ē²', '0');
INSERT INTO `shop_sell_price` VALUES ('120149', 'ééēē²', '5500');
INSERT INTO `shop_sell_price` VALUES ('120154', 'éå±ēē²', '5500');
INSERT INTO `shop_sell_price` VALUES ('120182', 'ęå„', '0');
INSERT INTO `shop_sell_price` VALUES ('120242', 'å¤§ē¾ē', '1200');
INSERT INTO `shop_sell_price` VALUES ('120244', 'å°åé­åé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120245', 'å°åęę·é”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120246', 'å°ååéé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120247', 'å°åęŗåé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120248', 'å°åē²¾ē„é”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120249', 'å°åä½č“Øé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120254', 'é­åé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120256', 'ęę·é”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120264', 'åéé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120266', 'ęŗåé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120267', 'ē²¾ē„é”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120268', 'ä½č“Øé”¹é¾', '0');
INSERT INTO `shop_sell_price` VALUES ('120280', 'ē­é­ęę', '0');
INSERT INTO `shop_sell_price` VALUES ('120285', 'ę°“ēµęę', '0');
INSERT INTO `shop_sell_price` VALUES ('120289', 'ę·±ęøęę', '0');
INSERT INTO `shop_sell_price` VALUES ('120300', 'å°ēµęę', '0');
INSERT INTO `shop_sell_price` VALUES ('120302', 'é£ēµęę', '0');
INSERT INTO `shop_sell_price` VALUES ('120304', 'ē«ēµęę', '0');
INSERT INTO `shop_sell_price` VALUES ('120306', 'å°åčŗ«ä½č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120307', 'å°åēµé­č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120308', 'å°åē²¾ē„č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120309', 'åęčŗ«ä½č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120310', 'åęēµé­č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120311', 'åęē²¾ē„č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120312', 'čŗ«ä½č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120316', 'ēµé­č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120317', 'ę¬§åē®åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120319', 'ē²¾ē„č°åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120320', 'ę³°å¦ē®åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('120321', 'å¤ē½ē®åø¦', '0');
INSERT INTO `shop_sell_price` VALUES ('140006', 'åé ęŖē©é­ę', '650');
INSERT INTO `shop_sell_price` VALUES ('140008', 'åčŗ«é­ę', '650');
INSERT INTO `shop_sell_price` VALUES ('140010', 'ę²»ęčÆę°“', '64');
INSERT INTO `shop_sell_price` VALUES ('140011', 'å¼ŗåę²»ęčÆę°“', '212');
INSERT INTO `shop_sell_price` VALUES ('140012', 'ē»ęę²»ęčÆę°“', '990');
INSERT INTO `shop_sell_price` VALUES ('140013', 'čŖęå éčÆę°“', '412');
INSERT INTO `shop_sell_price` VALUES ('140014', 'åę¢čÆę°“', '920');
INSERT INTO `shop_sell_price` VALUES ('140015', 'å éé­åę¢å¤čÆę°“', '777');
INSERT INTO `shop_sell_price` VALUES ('140016', 'ęéčÆę°“', '990');
INSERT INTO `shop_sell_price` VALUES ('140018', 'å¼ŗåčŖęå éčÆę°“', '2722');
INSERT INTO `shop_sell_price` VALUES ('140061', 'ę ęŖ¬', '9');
INSERT INTO `shop_sell_price` VALUES ('140062', 'é¦č', '9');
INSERT INTO `shop_sell_price` VALUES ('140065', 'ē³ę', '6');
INSERT INTO `shop_sell_price` VALUES ('140068', 'ē²¾ēµé„¼å¹²', '1250');
INSERT INTO `shop_sell_price` VALUES ('140069', 'ę©å­', '9');
INSERT INTO `shop_sell_price` VALUES ('140072', 'ē¤čé„¼', '33');
INSERT INTO `shop_sell_price` VALUES ('140074', 'åÆ¹ēē²ę½ę³ēå·č½“', '80000');
INSERT INTO `shop_sell_price` VALUES ('140087', 'åÆ¹ę­¦åØę½ę³ēå·č½“', '40000');
INSERT INTO `shop_sell_price` VALUES ('140088', 'åå½¢å·č½“', '2422');
INSERT INTO `shop_sell_price` VALUES ('140089', 'å¤ę“»å·č½“', '2134');
INSERT INTO `shop_sell_price` VALUES ('140100', 'ē¬é“ē§»åØå·č½“', '50');
INSERT INTO `shop_sell_price` VALUES ('140119', 'č§£é¤ååēå·č½“', '100');
INSERT INTO `shop_sell_price` VALUES ('140506', 'å®ē¹ēę°“ę', '0');
INSERT INTO `shop_sell_price` VALUES ('200001', 'ę¬§č„æęÆåé¦', '32');
INSERT INTO `shop_sell_price` VALUES ('200002', 'éŖ°å­åé¦', '240');
INSERT INTO `shop_sell_price` VALUES ('200027', 'å¼Æå', '1320');
INSERT INTO `shop_sell_price` VALUES ('200032', 'ä¾µē„čä¹å', '2750');
INSERT INTO `shop_sell_price` VALUES ('200041', 'ę­¦å£«å', '22000');
INSERT INTO `shop_sell_price` VALUES ('200052', 'åęå', '19800');
INSERT INTO `shop_sell_price` VALUES ('200171', 'ę¬§č„æęÆå¼', '100');
INSERT INTO `shop_sell_price` VALUES ('220034', 'ę¬§č„æęÆå¤“ē', '150');
INSERT INTO `shop_sell_price` VALUES ('220043', 'é¢ē', '200');
INSERT INTO `shop_sell_price` VALUES ('220056', 'ęé­ę³ęēÆ·', '100');
INSERT INTO `shop_sell_price` VALUES ('220101', 'ē®ē²', '1000');
INSERT INTO `shop_sell_price` VALUES ('220115', 'č¤ē²', '1000');
INSERT INTO `shop_sell_price` VALUES ('220122', 'é³ē²', '2000');
INSERT INTO `shop_sell_price` VALUES ('220125', 'é¾ē²', '6000');
INSERT INTO `shop_sell_price` VALUES ('220135', 'ę¬§č„æęÆēÆē²', '200');
INSERT INTO `shop_sell_price` VALUES ('220136', 'ę¬§č„æęÆé¾ē²', '800');
INSERT INTO `shop_sell_price` VALUES ('220147', 'é¶éē®ē²', '300');
INSERT INTO `shop_sell_price` VALUES ('220154', 'éå±ēē²', '37000');
INSERT INTO `shop_sell_price` VALUES ('220213', 'ē­ē»é“', '300');
INSERT INTO `shop_sell_price` VALUES ('220237', 'éæåęµ·ē¾ē', '90');
INSERT INTO `shop_sell_price` VALUES ('240010', 'ę²»ęčÆę°“', '64');
INSERT INTO `shop_sell_price` VALUES ('240074', 'åÆ¹ēē²ę½ę³ēå·č½“', '34510');
INSERT INTO `shop_sell_price` VALUES ('240087', 'åÆ¹ę­¦åØę½ę³ēå·č½“', '75220');
