/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-09-17 21:27:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `BID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOKNAME` varchar(100) NOT NULL,
  `B_PRICE` varchar(10) NOT NULL,
  `IMAGE` varchar(200) NOT NULL,
  `STOCK` int(11) NOT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('27', '泰戈尔诗集', '18.00', 'images/book/book_01.gif', '979');
INSERT INTO `books` VALUES ('28', '痕记', '22.80', 'images/book/book_02.gif', '977');
INSERT INTO `books` VALUES ('29', '天堂之旅', '25.00', 'images/book/book_03.gif', '989');
INSERT INTO `books` VALUES ('30', '钱钟书集', '332.50', 'images/book/book_04.gif', '998');
INSERT INTO `books` VALUES ('31', '赵俪生高昭—夫妻回忆录', '38.00', 'images/book/book_05.gif', '998');
INSERT INTO `books` VALUES ('32', '无聊斋', '28.00', 'images/book/book_06.gif', '997');
INSERT INTO `books` VALUES ('33', '一颗热土豆是一张温馨的床', '38.00', 'images/book/book_07.gif', '999');
INSERT INTO `books` VALUES ('34', '李戡戡乱记', '22.00', 'images/book/book_08.gif', '999');
INSERT INTO `books` VALUES ('35', '生生世世未了缘', '17.50', 'images/book/book_09.gif', '999');
INSERT INTO `books` VALUES ('36', '一生有多少爱', '17.50', 'images/book/book_10.gif', '997');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `IID` int(11) NOT NULL AUTO_INCREMENT,
  `OID` int(11) NOT NULL,
  `BID` int(11) NOT NULL,
  `CREATEDATE` varchar(50) NOT NULL,
  `COUNT` int(11) NOT NULL,
  `PRICE` varchar(50) NOT NULL,
  `STATE` int(11) NOT NULL,
  `TOTAL_PRICE` varchar(50) NOT NULL,
  PRIMARY KEY (`IID`),
  KEY `OID` (`OID`),
  KEY `BID` (`BID`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `OID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`OID`),
  KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=1007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('test', 'test', 'test@test.com');
