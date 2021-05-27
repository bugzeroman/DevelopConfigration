/*
 Navicat Premium Data Transfer

 Source Server         : 10.254.9.82
 Source Server Type    : MySQL
 Source Server Version : 150729
 Source Host           : 10.254.9.82:3306
 Source Schema         : cgw

 Target Server Type    : MySQL
 Target Server Version : 150729
 File Encoding         : 65001

 Date: 25/08/2020 15:35:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_province
-- ----------------------------
DROP TABLE IF EXISTS `tbl_province`;
CREATE TABLE `tbl_province`  (
  `province_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '省份代号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '省份名称',
  `short_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '省份简称',
  `strategy` int(11) NULL DEFAULT NULL COMMENT '省端接入方案：0老流程，1新流程',
  `enabled` int(11) NULL DEFAULT NULL COMMENT '是否启用：0不启用，1正式发布，2.灰度发布，3.老流程正式发布+新流程灰度发布',
  `visible` tinyint(1) NULL DEFAULT NULL COMMENT '是否显示',
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '省份描述',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '省份状态，有上线和下线两种状态，订购时不能选择未上线省份',
  `create_time` timestamp(6) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(6) NULL DEFAULT NULL COMMENT '修改时间',
  `pin_yin` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '省份对应的拼音',
  PRIMARY KEY (`province_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_province
-- ----------------------------
INSERT INTO `tbl_province` VALUES ('000', '有限公司', NULL, NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'youxiangongsi');
INSERT INTO `tbl_province` VALUES ('001', '政企公司', NULL, NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'zhengqigongsi');
INSERT INTO `tbl_province` VALUES ('100', '北京', 'BJ', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'beijingshi');
INSERT INTO `tbl_province` VALUES ('200', '广东', 'GD', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'guangdongsheng');
INSERT INTO `tbl_province` VALUES ('210', '上海', 'SH', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'shanghaishi');
INSERT INTO `tbl_province` VALUES ('220', '天津', 'TJ', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'tianjinshi');
INSERT INTO `tbl_province` VALUES ('230', '重庆', 'CQ', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'chongqingshi');
INSERT INTO `tbl_province` VALUES ('240', '辽宁', 'LN', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'liaoningsheng');
INSERT INTO `tbl_province` VALUES ('250', '江苏', 'JS', 1, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'jiangsusheng');
INSERT INTO `tbl_province` VALUES ('270', '湖北', 'HB', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'hubeisheng');
INSERT INTO `tbl_province` VALUES ('280', '四川', 'SC', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'sichuansheng');
INSERT INTO `tbl_province` VALUES ('290', '陕西', 'SN', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'shanxisheng1');
INSERT INTO `tbl_province` VALUES ('311', '河北', 'HE', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'hebeisheng');
INSERT INTO `tbl_province` VALUES ('351', '山西', 'SX', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'shanxisheng');
INSERT INTO `tbl_province` VALUES ('371', '河南', 'HA', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'henansheng');
INSERT INTO `tbl_province` VALUES ('431', '吉林', 'JL', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'jilinsheng');
INSERT INTO `tbl_province` VALUES ('451', '黑龙江', 'HL', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'heilongjiangsheng');
INSERT INTO `tbl_province` VALUES ('471', '内蒙古', 'NM', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'neimengguzizhiqu');
INSERT INTO `tbl_province` VALUES ('531', '山东', 'SD', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'shandongsheng');
INSERT INTO `tbl_province` VALUES ('551', '安徽', 'AH', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'anhuisheng');
INSERT INTO `tbl_province` VALUES ('571', '浙江', 'ZJ', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'zhejiangsheng');
INSERT INTO `tbl_province` VALUES ('591', '福建', 'FJ', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'fujiansheng');
INSERT INTO `tbl_province` VALUES ('731', '湖南', 'HN', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'hunansheng');
INSERT INTO `tbl_province` VALUES ('771', '广西', 'GX', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'guangxizhuangzuzizhiqu');
INSERT INTO `tbl_province` VALUES ('791', '江西', 'JX', NULL, 1, 1, NULL, 'OFFLINE', NOW(), NULL, 'jiangxisheng');
INSERT INTO `tbl_province` VALUES ('851', '贵州', 'GZ', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'guizhousheng');
INSERT INTO `tbl_province` VALUES ('871', '云南', 'YN', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'yunnansheng');
INSERT INTO `tbl_province` VALUES ('891', '西藏', 'XZ', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'xizangzizhiqu');
INSERT INTO `tbl_province` VALUES ('898', '海南', 'HI', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'hainansheng');
INSERT INTO `tbl_province` VALUES ('931', '甘肃', 'GS', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'gansusheng');
INSERT INTO `tbl_province` VALUES ('951', '宁夏', 'NX', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'ningxiahuisuzizhiqu');
INSERT INTO `tbl_province` VALUES ('971', '青海', 'QH', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'qinghaisheng');
INSERT INTO `tbl_province` VALUES ('991', '新疆', 'XJ', NULL, 0, 1, NULL, 'OFFLINE', NOW(), NULL, 'xinjiangweiwuerzizhiqu');

SET FOREIGN_KEY_CHECKS = 1;
