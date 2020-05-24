/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : snailrenting

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2020-05-01 06:56:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for snail_admin
-- ----------------------------
DROP TABLE IF EXISTS `snail_admin`;
CREATE TABLE `snail_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(1) DEFAULT NULL COMMENT '角色（0超级管理员，1管理员，2管家：预约看房，定制房源，3审核员，4维修）',
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `identity` varchar(18) DEFAULT NULL COMMENT '身份证',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_admin
-- ----------------------------
INSERT INTO `snail_admin` VALUES ('1', 'admin', '1', '1', null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `snail_admin` VALUES ('2', '张三', '1', '2', null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for snail_banner
-- ----------------------------
DROP TABLE IF EXISTS `snail_banner`;
CREATE TABLE `snail_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL COMMENT '类型',
  `name` varchar(255) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_banner
-- ----------------------------
INSERT INTO `snail_banner` VALUES ('3', '1', '优惠房源', '5', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('4', '2', '推荐房源', '8', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('5', '2', '推荐房源', '14', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('6', '2', '推荐房源', '15', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('7', '2', '推荐房源', '17', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('8', '1', '优惠房源', '18', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('15', '1', null, '1', '1', '1', '2020-04-17 16:33:16', '2020-04-17 16:33:16', '0');

-- ----------------------------
-- Table structure for snail_business
-- ----------------------------
DROP TABLE IF EXISTS `snail_business`;
CREATE TABLE `snail_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '1报修,2退租,3预约看房,4定制房源,5其他问题 ',
  `desp` varchar(255) DEFAULT NULL COMMENT '描述',
  `state` int(1) DEFAULT '0' COMMENT '状态（0待解决，1处理中，2已解决）',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_business
-- ----------------------------
INSERT INTO `snail_business` VALUES ('1', '15', '1', '啊方法方法啊', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('2', '15', '2', '能否回复', '1', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('3', '15', '3', '啊方法方法啊', '1', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('4', '15', '4', '能否回复', '2', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_business` VALUES ('5', '15', '5', '啊方法方法啊', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_business` VALUES ('6', '15', '1', '能否回复', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('7', '15', '2', '啊方法方法啊', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('8', '15', '3', '能否回复', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_business` VALUES ('9', '15', '4', '能否回复', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_business` VALUES ('10', '15', '5', '啊方法方法啊', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('11', '15', '1', '能否回复', '2', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('12', '15', '1', '啊方法方法啊', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('13', '15', '1', '能否回复鸭', '2', '15', '1', '2020-03-29 21:05:00', '2020-04-05 14:17:03', '0');
INSERT INTO `snail_business` VALUES ('29', '15', '1', 'fadsfsaf', '0', '15', '15', '2020-04-26 11:32:41', '2020-04-26 11:32:41', '1');
INSERT INTO `snail_business` VALUES ('30', '15', '1', '灯坏了', '0', '15', '15', '2020-04-26 11:41:01', '2020-04-26 11:41:01', '0');

-- ----------------------------
-- Table structure for snail_collection
-- ----------------------------
DROP TABLE IF EXISTS `snail_collection`;
CREATE TABLE `snail_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_collection
-- ----------------------------
INSERT INTO `snail_collection` VALUES ('1', '15', '1', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_collection` VALUES ('2', '15', '2', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_collection` VALUES ('3', '15', '3', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_collection` VALUES ('4', '8', '4', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_collection` VALUES ('5', '8', '5', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_collection` VALUES ('6', '16', '6', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_collection` VALUES ('18', '15', '6', '15', '15', '2020-04-29 14:22:54', '2020-04-29 14:22:54', '0');
INSERT INTO `snail_collection` VALUES ('19', '15', '5', '15', '15', '2020-04-05 14:32:27', '2020-04-05 14:32:27', '0');
INSERT INTO `snail_collection` VALUES ('20', '15', '18', '15', '15', '2020-04-05 14:32:51', '2020-04-05 14:32:51', '0');
INSERT INTO `snail_collection` VALUES ('21', '8', '5', '15', '15', '2020-04-05 14:33:11', '2020-04-05 14:33:11', '0');
INSERT INTO `snail_collection` VALUES ('22', '15', '5', '15', '15', '2020-04-05 14:39:24', '2020-04-05 14:39:24', '0');

-- ----------------------------
-- Table structure for snail_house
-- ----------------------------
DROP TABLE IF EXISTS `snail_house`;
CREATE TABLE `snail_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '租房类型（1合租，2整租）',
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `house_price` decimal(10,0) DEFAULT NULL,
  `house_img` varchar(255) DEFAULT NULL,
  `bedroom` int(1) DEFAULT NULL COMMENT '卧室数',
  `bath` int(1) DEFAULT NULL COMMENT '浴室数',
  `bath_img1` varchar(255) DEFAULT NULL COMMENT '浴室数',
  `bath_img2` varchar(255) DEFAULT NULL COMMENT '浴室数',
  `kitchen` int(1) DEFAULT NULL,
  `kitchen_img1` varchar(255) DEFAULT NULL,
  `kitchen_img2` varchar(255) DEFAULT NULL,
  `living` int(1) DEFAULT NULL COMMENT '客厅数',
  `living_img1` varchar(255) DEFAULT NULL COMMENT '客厅数',
  `living_img2` varchar(255) DEFAULT NULL COMMENT '客厅数',
  `vr_img1` varchar(255) DEFAULT NULL COMMENT '浴室数',
  `vr_img2` varchar(255) DEFAULT NULL COMMENT '浴室数',
  `vr_img3` varchar(255) DEFAULT NULL COMMENT '浴室数',
  `valid_time` datetime DEFAULT NULL COMMENT '截止日期',
  `desp` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_house
-- ----------------------------
INSERT INTO `snail_house` VALUES ('1', '15', '2', '1', '江河附近环境优美', '幸福家园小区1单元101', '8811', '\\1587130808652.jpg', '1', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '1', '2020-03-21 21:05:00', '2020-04-18 01:34:32', '0');
INSERT INTO `snail_house` VALUES ('2', '15', '3', '2', '江河附近环境优美', '爱情公寓2单元102', '8882', '\\1587133312146.jpg', '1', '1', '1587133312146.jpg', '1587133312146.jpg', '1', '1587133312146.jpg', '1587133312146.jpg', '1', '1587133312146.jpg', '1587133312146.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-22 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('3', '15', '4', '2', '大窗周围娱乐设施齐全', '阳光小区3单元3001', '8883', '\\1587133874251.jpg', '1', '1', '1587133874251.jpg', '1587133874251.jpg', '1', '1587133874251.jpg', '1587133874251.jpg', '1', '1587133874251.jpg', '1587133874251.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-23 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('4', '15', '2', '1', '江河附近环境优美', '幸福家园4单元202', '8884', '\\1587134612544.jpg', '2', '1', '1587134612544.jpg', '1587134612544.jpg', '1', '1587134612544.jpg', '1587134612544.jpg', '1', '1587134612544.jpg', '1587134612544.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-24 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('5', '15', '2', '1', '江河附近环境优美', '幸福家园小区1单元101', '8881', '\\1587134690100.jpg', '4', '1', '1587134690100.jpg', '1587134690100.jpg', '1', '1587134690100.jpg', '1587134690100.jpg', '1', '1587134690100.jpg', '1587134690100.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-25 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('6', '15', '3', '2', '江河附近环境优美', '爱情公寓2单元102', '8882', '\\1587130808652.jpg', '1', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-26 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('7', '15', '2', '1', '江河附近环境优美', '幸福家园小区1单元101', '8881', '\\1587133312146.jpg', '1', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-27 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('8', '15', '3', '2', '江河附近环境优美', '爱情公寓2单元102', '8882', '\\1587133874251.jpg', '2', '1', '1587133312146.jpg', '1587133312146.jpg', '1', '1587133312146.jpg', '1587133312146.jpg', '1', '1587133312146.jpg', '1587133312146.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-28 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('9', '15', '4', '2', '大窗周围娱乐设施齐全', '好日子社区3单元3001', '8883', '\\1587134612544.jpg', '4', '1', '1587133874251.jpg', '1587133874251.jpg', '1', '1587133874251.jpg', '1587133874251.jpg', '1', '1587133874251.jpg', '1587133874251.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('10', '15', '2', '1', '江河附近环境优美', '夕阳红社区4单元202', '8884', '\\1587134690100.jpg', '1', '1', '1587134612544.jpg', '1587134612544.jpg', '1', '1587134612544.jpg', '1587134612544.jpg', '1', '1587134612544.jpg', '1587134612544.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('16', null, null, '1', 'test1', '中国学院', '7999', '\\1587133312146.jpg', '1', null, '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-04-17 00:00:00', '大窗', null, null, null, null, '0');
INSERT INTO `snail_house` VALUES ('17', null, null, '1', 'test1', '中国学院', '7999', '\\1587133874251.jpg', '1', null, '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', '1', '1587130808652.jpg', '1587130808652.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-04-17 00:00:00', '大窗', null, null, null, null, '0');
INSERT INTO `snail_house` VALUES ('18', null, null, '1', 'test1', '中国学院', '7999', '\\1587134612544.jpg', '1', null, '1587133312146.jpg', '1587133312146.jpg', '1', '1587133312146.jpg', '1587133312146.jpg', '1', '1587133312146.jpg', '1587133312146.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-04-17 00:00:00', '大窗', null, null, null, null, '0');
INSERT INTO `snail_house` VALUES ('19', null, null, '1', 'test1', '中国学院', '7999', '\\1587134690100.jpg', '1', null, '1587133874251.jpg', '1587133874251.jpg', '1', '1587133874251.jpg', '1587133874251.jpg', '1', '1587133874251.jpg', '1587133874251.jpg', 'vrimg1.jpg', 'vrimg2.jpg', 'vrimg3.jpg', '2020-04-17 00:00:00', '大窗', null, null, null, null, '0');

-- ----------------------------
-- Table structure for snail_inform
-- ----------------------------
DROP TABLE IF EXISTS `snail_inform`;
CREATE TABLE `snail_inform` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '通知类型',
  `push_by` int(1) DEFAULT NULL COMMENT '通知人群',
  `push_state` int(1) DEFAULT '0' COMMENT '发送状态',
  `state` int(1) DEFAULT '0' COMMENT '阅读状态',
  `name` varchar(255) DEFAULT NULL COMMENT '通知名称',
  `content` varchar(255) DEFAULT NULL COMMENT '通知内容',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_inform
-- ----------------------------

-- ----------------------------
-- Table structure for snail_location
-- ----------------------------
DROP TABLE IF EXISTS `snail_location`;
CREATE TABLE `snail_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_location
-- ----------------------------
INSERT INTO `snail_location` VALUES ('1', '0', '0', '', '河北省', '', null, null, '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('2', '1', '1', '河北省', ' ', '北京市', '', '', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('3', '1', '1', '北京市', ' ', '北京市', '东城区', '星期五街', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('4', '3', '3', '东城区', ' ', '北京市', '西城区', '星期六街', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('5', '3', '3', '西城区', ' ', '北京市', '朝阳区', '星期日街', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('6', '3', '3', '朝阳区', null, null, null, null, '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('7', '4', '4', '星期五街', null, null, null, null, '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('8', '4', '4', '星期六街', null, null, null, null, '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_location` VALUES ('9', '4', '4', '星期日街', null, null, null, null, '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');

-- ----------------------------
-- Table structure for snail_message
-- ----------------------------
DROP TABLE IF EXISTS `snail_message`;
CREATE TABLE `snail_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '消息类型（0问题，1回复）',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `praise` bigint(255) DEFAULT '0',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_message
-- ----------------------------
INSERT INTO `snail_message` VALUES ('1', '15', '1', '您好', '16', '15', '15', '2020-03-21 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_message` VALUES ('2', '15', '1', '有人吗', '4', '15', '15', '2020-03-22 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_message` VALUES ('3', '15', '1', '求合租', '5', '15', '15', '2020-03-23 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_message` VALUES ('4', '15', '1', '找室友', '3', '15', '15', '2020-03-24 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_message` VALUES ('5', '15', '1', '租房', '3', '15', '15', '2020-03-25 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_message` VALUES ('6', '15', '1', '有人吗？', '4', '15', '15', '2020-03-26 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_message` VALUES ('7', '15', '1', '求合租呀', '3', '15', '15', '2020-03-27 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_message` VALUES ('8', '15', '1', '找室友，', '3', '15', '15', '2020-03-28 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_message` VALUES ('9', '15', null, 'dasda', '0', '15', '15', '2020-05-01 03:31:58', '2020-05-01 03:31:58', '0');

-- ----------------------------
-- Table structure for snail_order
-- ----------------------------
DROP TABLE IF EXISTS `snail_order`;
CREATE TABLE `snail_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `contract` varchar(255) DEFAULT NULL COMMENT '合同号',
  `state` int(1) DEFAULT '0' COMMENT '状态（0审核中，1通过，2未通过）',
  `pay_state` int(1) DEFAULT NULL COMMENT '支付状态(0未支付，1已支付）',
  `pay_money` decimal(10,0) DEFAULT NULL COMMENT '支付总额',
  `discount_money` decimal(10,0) DEFAULT NULL,
  `live_time` datetime DEFAULT NULL COMMENT '租客入住日期',
  `pay_time` datetime DEFAULT NULL COMMENT '租客支付日期',
  `pay_valid_time` datetime DEFAULT NULL COMMENT '支付到截止日期',
  `valid_time` datetime DEFAULT NULL COMMENT '预计截止日期',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_order
-- ----------------------------
INSERT INTO `snail_order` VALUES ('1', '15', '1', '1', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-21 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('3', '3', '1', '3', 'dsada', '2', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-22 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('4', '4', '1', '4', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-23 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('5', '5', '1', '5', 'dsada', '2', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-24 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('6', '6', '1', '6', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-25 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('7', '7', '1', '7', 'dsada', '2', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-26 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('8', '8', '1', '8', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-27 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('9', '9', '1', '9', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-28 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('10', '10', '1', '10', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('11', '11', '1', '11', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-21 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('12', '12', '1', '12', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-22 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('13', '13', '1', '13', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-23 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('14', '14', '1', '14', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-24 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('15', '2', '1', '15', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-25 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('16', '16', '1', '16', 'dsada', '1', '0', '1199', '0', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '15', '15', '2020-03-26 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_order` VALUES ('21', '15', '8', '18', '2020-05-01WW39LNNP', '0', '0', '1994', '1994', '2020-05-06 00:00:00', '2020-05-01 19:48:06', null, '2020-05-09 00:00:00', '15', '15', '2020-05-01 05:48:19', '2020-05-01 05:48:19', '0');

-- ----------------------------
-- Table structure for snail_reply
-- ----------------------------
DROP TABLE IF EXISTS `snail_reply`;
CREATE TABLE `snail_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `praise` bigint(255) DEFAULT '0',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_reply
-- ----------------------------
INSERT INTO `snail_reply` VALUES ('1', '1', '16', '好的', '0', '15', '15', '2020-03-21 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('2', '1', '16', '嗯嗯', '0', '15', '15', '2020-03-22 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('3', '2', '16', '好的', '0', '15', '15', '2020-03-23 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('4', '2', '16', '哦哦', '0', '15', '15', '2020-03-24 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('5', '3', '16', '噢噢', '0', '15', '15', '2020-03-25 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('6', '3', '16', '噢哦', '0', '15', '15', '2020-03-26 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('7', '3', '16', '哦噢', '0', '15', '15', '2020-03-27 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('8', '4', '16', '好的', '0', '15', '15', '2020-03-28 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('9', '4', '16', '好的', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('10', '4', '16', '好的', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('11', '4', '16', '好的', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('12', '5', '16', '好的', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('13', '5', '16', '好的', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('14', '5', '16', '哦哦', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('15', '6', '16', '噢噢', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('16', '7', '16', '噢哦', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('17', '8', '16', '哦噢', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_reply` VALUES ('19', '1', '15', '1w', '0', '15', '15', '2020-05-01 03:23:43', '2020-05-01 03:23:43', '0');
INSERT INTO `snail_reply` VALUES ('20', '1', '15', 'saaaasa', '0', '15', '15', '2020-05-01 03:31:52', '2020-05-01 03:31:52', '0');

-- ----------------------------
-- Table structure for snail_room
-- ----------------------------
DROP TABLE IF EXISTS `snail_room`;
CREATE TABLE `snail_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `sale` decimal(10,0) DEFAULT NULL,
  `bedroom_img1` varchar(255) DEFAULT NULL COMMENT '卧室数',
  `bedroom_img2` varchar(255) DEFAULT NULL COMMENT '客厅数',
  `desp` varchar(255) DEFAULT NULL COMMENT '描述',
  `state` int(1) DEFAULT '0' COMMENT '状态（0出租中，1已租，2停用，3审核中，4装修，5准备签约）',
  `praise` bigint(255) DEFAULT '0',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_room
-- ----------------------------
INSERT INTO `snail_room` VALUES ('1', '1', 'A室', '1991', '1991', '1587130808652.jpg', 'vr5.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r\n', '2', '3', '15', '1', '2020-03-29 21:05:00', '2020-04-18 01:34:32', '0');
INSERT INTO `snail_room` VALUES ('2', '1', 'B室', '1991', '1991', '1587133312146.jpg', '1587133312146.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '4', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('3', '1', 'C室', '1991', '1991', '1587133874251.jpg', '1587133874251.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('4', '1', 'D室', '1991', '1991', '1587134612544.jpg', '1587134612544.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '1', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('5', '2', '阳光房', '1992', '1992', '1587134690100.jpg', '1587134690100.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('6', '3', '阳光房', '1993', '1993', '1587130808652.jpg', '1587130808652.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('7', '4', 'A1室', '1994', '1994', '1587130808652.jpg', '1587130808652.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('8', '4', 'A2室', '1994', '1994', '1587133312146.jpg', '1587133312146.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('12', '5', 'A室', '1991', '1991', '1587133874251.jpg', '1587133874251.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('13', '5', 'B室', '1991', '1991', '1587134612544.jpg', '1587134612544.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('14', '5', 'C室', '1991', '1991', '1587134690100.jpg', '1587134690100.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('15', '5', 'D室', '1991', '1991', '1587130808652.jpg', '1587130808652.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('16', '6', '阳光房', '1992', '1992', '1587130808652.jpg', '1587130808652.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('17', '7', '阳光房', '1993', '1993', '1587133312146.jpg', '1587133312146.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('18', '8', 'A1室', '1994', '1994', '1587133874251.jpg', '1587133874251.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('19', '8', 'A2室', '1994', '1994', '1587133874251.jpg', '1587133874251.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('20', '9', 'A室', '1991', '1991', '1587134612544.jpg', '1587134612544.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('21', '9', 'B室', '1991', '1991', '1587134690100.jpg', '1587134690100.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('22', '9', 'C室', '1991', '1991', '1587130808652.jpg', '1587130808652.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('23', '9', 'D室', '1991', '1991', '1587130808652.jpg', '1587130808652.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('24', '10', '阳光房', '1992', '1992', '1587133312146.jpg', '1587133312146.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('28', '16', '1w', '1122', '1112', '1587134612544.jpg', '1587134612544.jpg', '大壮', '0', '0', null, null, null, null, '0');
INSERT INTO `snail_room` VALUES ('29', '17', '1w', '1122', '1112', '\\1587133874259.jpg', '\\1587133874313.jpg', '大壮', '0', '0', null, null, null, null, '0');
INSERT INTO `snail_room` VALUES ('30', '18', '1w', '1122', '1112', '\\1587134612550.jpg', '\\1587134612551.jpg', '大壮', '0', '0', null, null, null, null, '0');
INSERT INTO `snail_room` VALUES ('31', '19', '1w', '1122', '1112', '\\1587134690109.jpg', '\\1587134690110.jpg', '大壮', '0', '0', null, null, null, null, '0');

-- ----------------------------
-- Table structure for snail_user
-- ----------------------------
DROP TABLE IF EXISTS `snail_user`;
CREATE TABLE `snail_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT '',
  `password` varchar(16) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `sex` int(1) DEFAULT '0' COMMENT '删除状态',
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `identity` varchar(18) DEFAULT NULL COMMENT '身份证',
  `certificate` int(1) DEFAULT '0' COMMENT '认证（0普通，1租客，2房东，3已租）',
  `login_num` int(11) DEFAULT '0' COMMENT '登录次数',
  `login_time` datetime DEFAULT NULL COMMENT '登陆时间',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`) USING BTREE,
  UNIQUE KEY `email_UNIQUE` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_user
-- ----------------------------
INSERT INTO `snail_user` VALUES ('8', 'f', 'f', 'f', 'f', '0', 'f', 'f', '1111111111111', '0', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('10', 'h', 'h', 'h', 'h', '1', 'h', 'h', '1111111111111', '0', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('11', 'i', 'i', 'i', 'i', '0', 'i', 'i', '1111111111111', '0', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('12', 'j', 'j', 'j', 'j', '0', 'j', 'j', '1111111111111', '2', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('13', 'k', 'k', 'k', 'k', '1', 'k', 'k', '1111111111111', '1', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('14', 'l', 'l', 'l', '', '1', '', '', '1111111111111', '1', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('15', 'm1', 'm1@qq.com', '1', 'm', '0', '01234567890', '冰岛', '1111111111111', '0', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('16', 'n', 'n', 'n', 'n', '1', 'n', '', '1111111111111', '0', '0', '2020-02-11 01:38:53', '5', '15', '2020-03-23 23:10:04', '2020-03-23 23:10:04', '0');
INSERT INTO `snail_user` VALUES ('17', null, '', null, null, '0', null, null, null, '0', '0', null, '1', '1', '2020-04-17 16:10:59', '2020-04-17 16:10:59', '0');
