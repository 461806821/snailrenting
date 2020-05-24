/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : snailrenting

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2020-04-01 09:45:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for snail_admin
-- ----------------------------
DROP TABLE IF EXISTS `snail_admin`;
CREATE TABLE `snail_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role_id` varchar(50) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_admin
-- ----------------------------
INSERT INTO `snail_admin` VALUES ('1', 'admin', '1', null, null, null, null, null, null, '0');

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
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_banner
-- ----------------------------
INSERT INTO `snail_banner` VALUES ('1', '1', '优惠房源', '1', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('2', '1', '优惠房源', '5', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('3', '1', '优惠房源', '8', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('4', '2', '推荐房源', '4', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('5', '2', '推荐房源', '5', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('6', '2', '推荐房源', '6', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_banner` VALUES ('7', '2', '推荐房源', '7', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');

-- ----------------------------
-- Table structure for snail_business
-- ----------------------------
DROP TABLE IF EXISTS `snail_business`;
CREATE TABLE `snail_business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `desp` varchar(255) DEFAULT NULL COMMENT '描述',
  `state` int(1) DEFAULT '0' COMMENT '状态（0待解决，1处理中，2已解决）',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_business
-- ----------------------------
INSERT INTO `snail_business` VALUES ('1', '15', '1', '啊方法方法啊', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '1');
INSERT INTO `snail_business` VALUES ('2', '15', '1', '能否回复', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');

-- ----------------------------
-- Table structure for snail_collection
-- ----------------------------
DROP TABLE IF EXISTS `snail_collection`;
CREATE TABLE `snail_collection` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_collection
-- ----------------------------

-- ----------------------------
-- Table structure for snail_house
-- ----------------------------
DROP TABLE IF EXISTS `snail_house`;
CREATE TABLE `snail_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT '租房类型（0合租，1整租）',
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
  `valid_time` datetime DEFAULT NULL COMMENT '截止日期',
  `desp` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_house
-- ----------------------------
INSERT INTO `snail_house` VALUES ('1', '15', '2', '1', '江河附近环境优美', '1单元101', '8881', '16.jpg', '4', '1', '/static/web/images/6.jpg', '16.jpg', '1', '/static/web/images/6.jpg', '16.jpg', '1', '/static/web/images/6.jpg', '16.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('2', '15', '3', '2', '江河附近环境优美', '2单元102', '8882', '15.jpg', '1', '1', '/static/web/images/7.jpg', '15.jpg', '1', '/static/web/images/7.jpg', '15.jpg', '1', '/static/web/images/7.jpg', '15.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('3', '15', '4', '2', '大窗周围娱乐设施齐全', '3单元3001', '8883', '14.jpg', '1', '1', '/static/web/images/8.jpg', '14.jpg', '1', '/static/web/images/8.jpg', '14.jpg', '1', '/static/web/images/8.jpg', '14.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('4', '15', '2', '1', '江河附近环境优美\r\n江河附近环境优美\r\n江河附近环境优美\r\n江河附近环境优美\r\n大窗周围娱乐设施齐全', '4单元202', '8884', '13.jpg', '2', '1', '/static/web/images/6.jpg', '13.jpg', '1', '/static/web/images/6.jpg', '13.jpg', '1', '/static/web/images/6.jpg', '13.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('7', '15', '2', '1', '江河附近环境优美', '1单元101', '8881', '16.jpg', '4', '1', '/static/web/images/6.jpg', '16.jpg', '1', '/static/web/images/6.jpg', '16.jpg', '1', '/static/web/images/6.jpg', '16.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('8', '15', '3', '2', '江河附近环境优美', '2单元102', '8882', '15.jpg', '1', '1', '/static/web/images/7.jpg', '15.jpg', '1', '/static/web/images/7.jpg', '15.jpg', '1', '/static/web/images/7.jpg', '15.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('9', '15', '4', '2', '大窗周围娱乐设施齐全', '3单元3001', '8883', '14.jpg', '1', '1', '/static/web/images/8.jpg', '14.jpg', '1', '/static/web/images/8.jpg', '14.jpg', '1', '/static/web/images/8.jpg', '14.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_house` VALUES ('10', '15', '2', '1', '江河附近环境优美\r\n江河附近环境优美\r\n江河附近环境优美\r\n江河附近环境优美\r\n大窗周围娱乐设施齐全', '4单元202', '8884', '13.jpg', '2', '1', '/static/web/images/6.jpg', '13.jpg', '1', '/static/web/images/6.jpg', '13.jpg', '1', '/static/web/images/6.jpg', '13.jpg', '2020-03-29 21:05:00', '我们在同一个屋檐下 写着属于我们 未来的诗篇。在这温暖的房间 我于是慢慢发现 相聚其实就是一种缘。多值得纪念 在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间 停在记忆里边最美的画面，因为有你在的每天 在这温暖的房间。我于是慢慢发现 相聚其实就是一种缘，多值得纪念，在这温暖的房间，我们都笑得很甜 一切 停格在一瞬间。', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');

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
-- Table structure for snail_order
-- ----------------------------
DROP TABLE IF EXISTS `snail_order`;
CREATE TABLE `snail_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `pay_money` decimal(2,0) DEFAULT NULL COMMENT '支付总额',
  `discount_money` decimal(2,0) DEFAULT NULL,
  `live_time` datetime DEFAULT NULL COMMENT '租客入住日期',
  `pay_time` datetime DEFAULT NULL COMMENT '租客支付日期',
  `valid_time` datetime DEFAULT NULL COMMENT '租客截止日期',
  `live_day` int(255) DEFAULT NULL COMMENT '租客居住天数',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_order
-- ----------------------------

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
  `prasie` bigint(255) DEFAULT '0',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_room
-- ----------------------------
INSERT INTO `snail_room` VALUES ('1', '1', '江河附近环境优美A室', '1991', '1991', '/static/web/images/6.jpg', '/static/web/images/6.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('2', '1', '江河附近环境优美B室', '1991', '1991', '/static/web/images/7.jpg', '/static/web/images/7.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('3', '1', '江河附近环境优美C室', '1991', '1991', '/static/web/images/8.jpg', '/static/web/images/8.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('4', '1', '江河附近环境优美D室', '1991', '1991', '/static/web/images/6.jpg', '/static/web/images/6.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('5', '2', '大窗周围娱乐设施齐全', '1992', '1992', '/static/web/images/7.jpg', '/static/web/images/7.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('6', '3', '天朝区阳关房', '1993', '1993', '/static/web/images/6.jpg', '/static/web/images/6.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('7', '4', '学校附近1室', '1994', '1994', '/static/web/images/9.jpg', '/static/web/images/9.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('8', '4', '学校附近2室', '1994', '1994', '/static/web/images/8.jpg', '/static/web/images/8.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('12', '5', '江河附近环境优美A室', '1991', '1991', '/static/web/images/6.jpg', '/static/web/images/6.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('13', '5', '江河附近环境优美B室', '1991', '1991', '/static/web/images/7.jpg', '/static/web/images/7.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('14', '5', '江河附近环境优美C室', '1991', '1991', '/static/web/images/8.jpg', '/static/web/images/8.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('15', '5', '江河附近环境优美D室', '1991', '1991', '/static/web/images/6.jpg', '/static/web/images/6.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('16', '6', '大窗周围娱乐设施齐全', '1992', '1992', '/static/web/images/7.jpg', '/static/web/images/7.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('17', '7', '天朝区阳关房', '1993', '1993', '/static/web/images/6.jpg', '/static/web/images/6.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('18', '8', '学校附近1室', '1994', '1994', '/static/web/images/9.jpg', '/static/web/images/9.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');
INSERT INTO `snail_room` VALUES ('19', '8', '学校附近2室', '1994', '1994', '/static/web/images/8.jpg', '/static/web/images/8.jpg', '要用多少个晴天交换多少张相片 。还记得锁在抽屉里面的滴滴点点，小而温馨的空间因为有你在身边 。就不再感觉到害怕大步走向前，一天一月一起一年像不像永远 。我们在 同一个屋檐下，写著属於我们未来的诗篇 ，在这温暖的房间。\r', '0', '0', '15', '15', '2020-03-29 21:05:00', '2020-03-29 21:05:00', '0');

-- ----------------------------
-- Table structure for snail_steward
-- ----------------------------
DROP TABLE IF EXISTS `snail_steward`;
CREATE TABLE `snail_steward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `identity` varchar(18) DEFAULT NULL COMMENT '身份证',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_steward
-- ----------------------------

-- ----------------------------
-- Table structure for snail_user
-- ----------------------------
DROP TABLE IF EXISTS `snail_user`;
CREATE TABLE `snail_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `identity` varchar(18) DEFAULT NULL COMMENT '身份证',
  `certificate` int(1) DEFAULT '0' COMMENT '认证（0普通，1租客，2房东，3已租）',
  `login_num` int(11) DEFAULT '0' COMMENT '登录次数',
  `logint_ime` datetime DEFAULT NULL COMMENT '登陆时间',
  `create_by` int(11) DEFAULT NULL COMMENT '创建人',
  `update_by` int(11) DEFAULT NULL COMMENT '修改人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `del_flag` tinyint(1) DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`) USING BTREE,
  UNIQUE KEY `email_UNIQUE` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snail_user
-- ----------------------------
INSERT INTO `snail_user` VALUES ('8', 'f', 'f', 'f', 'f', 'f', 'f', null, null, '0', '2020-02-11 01:38:53', null, null, null, null, '0');
INSERT INTO `snail_user` VALUES ('10', 'h', 'h', 'h', 'h', 'h', 'h', null, null, '0', '2020-02-11 01:38:53', null, null, null, null, '0');
INSERT INTO `snail_user` VALUES ('11', 'i', 'i', 'i', 'i', 'i', 'i', null, null, '0', '2020-02-11 01:38:53', null, null, null, null, '0');
INSERT INTO `snail_user` VALUES ('12', 'j', 'j', 'j', 'j', 'j', 'j', null, null, '0', '2020-02-11 01:38:53', null, null, null, null, '0');
INSERT INTO `snail_user` VALUES ('13', 'k', 'k', 'k', 'k', 'k', 'k', null, null, '0', '2020-02-11 01:38:53', null, null, null, null, '0');
INSERT INTO `snail_user` VALUES ('14', 'l', 'l', 'l', '', '', '', null, null, '0', '2020-02-11 01:38:53', null, null, null, null, '0');
INSERT INTO `snail_user` VALUES ('15', 'm1', 'm1@qq.com', '1', 'm', '01234567890', '冰岛', '1111111111111', '0', '0', '2020-02-11 01:38:53', null, '15', null, '2020-03-28 20:47:20', '0');
INSERT INTO `snail_user` VALUES ('16', 'n', 'n', 'n', 'n', 'n', '', null, null, '0', '2020-02-11 01:38:53', null, null, null, null, '0');
