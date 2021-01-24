/*
 Navicat Premium Data Transfer
 个别字段存在问题，请使用该sql
 Source Server         :
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           :
 Source Schema         : sq_173cms

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 24/01/2021 13:35:30
*/

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sq_173cms` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sq_173cms`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activate_info
-- ----------------------------
DROP TABLE IF EXISTS `activate_info`;
CREATE TABLE `activate_info`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activate_info
-- ----------------------------

-- ----------------------------
-- Table structure for api_info
-- ----------------------------
DROP TABLE IF EXISTS `api_info`;
CREATE TABLE `api_info`  (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `leixing` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `diqu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nianfen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zhuangtai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zifei` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `xingqi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `tag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `select_video` int(11) NULL DEFAULT NULL,
  `kandian` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zongjishu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shangyingnianfen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fengge` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `shengyou` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rank_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cache_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of api_info
-- ----------------------------

-- ----------------------------
-- Table structure for channel_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_info`;
CREATE TABLE `channel_info`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel_info
-- ----------------------------

-- ----------------------------
-- Table structure for collection_info
-- ----------------------------
DROP TABLE IF EXISTS `collection_info`;
CREATE TABLE `collection_info`  (
  `id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection_info
-- ----------------------------

-- ----------------------------
-- Table structure for comment_info
-- ----------------------------
DROP TABLE IF EXISTS `comment_info`;
CREATE TABLE `comment_info`  (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_info
-- ----------------------------

-- ----------------------------
-- Table structure for email_info
-- ----------------------------
DROP TABLE IF EXISTS `email_info`;
CREATE TABLE `email_info`  (
  `id` int(11) NOT NULL,
  `smtp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `port` int(11) NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_info
-- ----------------------------

-- ----------------------------
-- Table structure for field_info
-- ----------------------------
DROP TABLE IF EXISTS `field_info`;
CREATE TABLE `field_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `input_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `var_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_allow_edit` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of field_info
-- ----------------------------
INSERT INTO `field_info` VALUES (7, '海报', 1, 'image', 'haibao', '', 'system', NULL);
INSERT INTO `field_info` VALUES (8, '小封面', 1, 'image', 'fengmian', '', 'system', NULL);
INSERT INTO `field_info` VALUES (12, '简介', 1, 'textarea', 'jianjie', '', 'system', NULL);
INSERT INTO `field_info` VALUES (13, '标题', 1, 'text', 'biaoti', '', 'system', NULL);
INSERT INTO `field_info` VALUES (17, '看点', 1, 'text', 'kandian', '	<div class=\'unit\'>		<div class=\'left\'>			<p class=\'subtitle\'>看点</p>		</div>		<div class=\'right\'>		<input type=\'text\' class=\'text\' name=\'kandian\' value=\'\' />		</div>		<span class=\'clearfix\'></span>	</div>', 'user', NULL);
INSERT INTO `field_info` VALUES (20, '总集数', 2, 'number', 'zongjishu', '	<div class=\'unit\'>		<div class=\'left\'>			<p class=\'subtitle\'>总集数</p>		</div>		<div class=\'right\'>		<input type=\'text\' class=\'text\' name=\'zongjishu\' data-type=\"空|正整数\" error-msg=\"正整数格式错误\" value=\'\' />		</div>		<span class=\'clearfix\'></span>	</div>', 'user', NULL);
INSERT INTO `field_info` VALUES (21, '别名', 1, 'text', 'bieming', '', 'system', NULL);
INSERT INTO `field_info` VALUES (23, '媒体主键', 1, 'text', 'media_id', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (24, '分类id', 1, 'text', 'type_id', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (25, '媒体状态', 1, 'text', 'status', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (26, '更新时间', 1, 'text', 'update_time', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (27, '标签', 1, 'text', 'tag', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (28, '主键', 1, 'text', 'id', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (32, '接口字段', 1, 'text', 'field', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (33, '接口名称', 1, 'text', 'name', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (34, '接口排序', 1, 'text', 'sort', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (35, '接口类型', 1, 'text', 'type', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (45, '大封面', 1, 'image', 'dafengmian', NULL, 'system', NULL);
INSERT INTO `field_info` VALUES (46, '4444', 3, 'textarea', '11111', '	<div class=\'unit\'>		<div class=\'left\'>			<p class=\'subtitle\'>4444</p>		</div>		<div class=\'right\'>			<textarea class=\'desc\' name=\'11111\'></textarea>		</div>		<span class=\'clearfix\'></span>	</div>', 'user', NULL);
INSERT INTO `field_info` VALUES (47, '4444', 3, 'textarea', '777777', '	<div class=\'unit\'>		<div class=\'left\'>			<p class=\'subtitle\'>4444</p>		</div>		<div class=\'right\'>			<textarea class=\'desc\' name=\'777777\'></textarea>		</div>		<span class=\'clearfix\'></span>	</div>', 'user', NULL);
INSERT INTO `field_info` VALUES (48, '4444', 3, 'textarea', '99999', '	<div class=\'unit\'>		<div class=\'left\'>			<p class=\'subtitle\'>4444</p>		</div>		<div class=\'right\'>			<textarea class=\'desc\' name=\'99999\'></textarea>		</div>		<span class=\'clearfix\'></span>	</div>', 'user', NULL);

-- ----------------------------
-- Table structure for field_profile_info
-- ----------------------------
DROP TABLE IF EXISTS `field_profile_info`;
CREATE TABLE `field_profile_info`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of field_profile_info
-- ----------------------------

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `power` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES (1, '管理员', 255, 'system', 1);
INSERT INTO `group_info` VALUES (2, '注册用户', 1, 'system', 3);
INSERT INTO `group_info` VALUES (3, '注册用户1', 1, 'user', 4);

-- ----------------------------
-- Table structure for history_info
-- ----------------------------
DROP TABLE IF EXISTS `history_info`;
CREATE TABLE `history_info`  (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_info
-- ----------------------------

-- ----------------------------
-- Table structure for media_info
-- ----------------------------
DROP TABLE IF EXISTS `media_info`;
CREATE TABLE `media_info`  (
  `media_id` int(11) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `status` int(11) NOT NULL,
  `haibao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fengmian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `biaoti` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kandian` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jianjie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `tag` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `zongjishu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bieming` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `dafengmian` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `has_video` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`media_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of media_info
-- ----------------------------

-- ----------------------------
-- Table structure for nav_info
-- ----------------------------
DROP TABLE IF EXISTS `nav_info`;
CREATE TABLE `nav_info`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `is_index` int(11) NOT NULL,
  `is_use` int(11) NOT NULL,
  `channel_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nav_info
-- ----------------------------
INSERT INTO `nav_info` VALUES (1, '首页', 'portal/index.action', 'system', 0, 1, 1, NULL);

-- ----------------------------
-- Table structure for player_info
-- ----------------------------
DROP TABLE IF EXISTS `player_info`;
CREATE TABLE `player_info`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player_info
-- ----------------------------

-- ----------------------------
-- Table structure for qiniu_info
-- ----------------------------
DROP TABLE IF EXISTS `qiniu_info`;
CREATE TABLE `qiniu_info`  (
  `id` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ak` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bucket` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `compress` int(11) NULL DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `domain` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qiniu_info
-- ----------------------------
INSERT INTO `qiniu_info` VALUES (1, 'haibao', '', '', '', 400, 600, 0, '海报', '');
INSERT INTO `qiniu_info` VALUES (2, 'fengmian', '', '', '', 320, 180, 0, '小封面', '');
INSERT INTO `qiniu_info` VALUES (7, 'content', '', '', '', 0, 0, 0, '照片', '');
INSERT INTO `qiniu_info` VALUES (10, 'touxiang', '', '', '', 200, 200, 0, '头像', '');
INSERT INTO `qiniu_info` VALUES (11, 'dafengmian', '', '', '', 492, 319, 0, '大封面', '');

-- ----------------------------
-- Table structure for reply_info
-- ----------------------------
DROP TABLE IF EXISTS `reply_info`;
CREATE TABLE `reply_info`  (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `to_login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_time` datetime(0) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `video_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply_info
-- ----------------------------

-- ----------------------------
-- Table structure for seo_info
-- ----------------------------
DROP TABLE IF EXISTS `seo_info`;
CREATE TABLE `seo_info`  (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keywords` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seo_info
-- ----------------------------
INSERT INTO `seo_info` VALUES (1, '', '', '', 'index');
INSERT INTO `seo_info` VALUES (2, '', '', '', 'list');
INSERT INTO `seo_info` VALUES (3, '', '', NULL, 'play');
INSERT INTO `seo_info` VALUES (4, '', '', NULL, 'profile');

-- ----------------------------
-- Table structure for slide_info
-- ----------------------------
DROP TABLE IF EXISTS `slide_info`;
CREATE TABLE `slide_info`  (
  `id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `summary` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `thumbnail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slide_info
-- ----------------------------

-- ----------------------------
-- Table structure for star_info
-- ----------------------------
DROP TABLE IF EXISTS `star_info`;
CREATE TABLE `star_info`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `region` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `blood` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `constellation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `occupation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of star_info
-- ----------------------------

-- ----------------------------
-- Table structure for tag_info
-- ----------------------------
DROP TABLE IF EXISTS `tag_info`;
CREATE TABLE `tag_info`  (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tag_info
-- ----------------------------

-- ----------------------------
-- Table structure for template_info
-- ----------------------------
DROP TABLE IF EXISTS `template_info`;
CREATE TABLE `template_info`  (
  `id` int(11) NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of template_info
-- ----------------------------
INSERT INTO `template_info` VALUES (1, 'pc', 'default');
INSERT INTO `template_info` VALUES (2, 'm', 'default');

-- ----------------------------
-- Table structure for type_field
-- ----------------------------
DROP TABLE IF EXISTS `type_field`;
CREATE TABLE `type_field`  (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `is_screen` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_required` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_field
-- ----------------------------

-- ----------------------------
-- Table structure for type_info
-- ----------------------------
DROP TABLE IF EXISTS `type_info`;
CREATE TABLE `type_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `profile_template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `play_template` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type_info
-- ----------------------------
INSERT INTO `type_info` VALUES (1, '222', 1, 'movie', 'dongman');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL,
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass_word` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `register_time` datetime(0) NOT NULL,
  `register_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_login_time` datetime(0) NOT NULL,
  `last_login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'admin', '96e79218965eb72c92a549dd5a330112', '123456@qq.com', '2018-03-07 16:16:00', 'hidden', '2018-03-07 16:16:00', 'hidden', 1);

-- ----------------------------
-- Table structure for user_profile_info
-- ----------------------------
DROP TABLE IF EXISTS `user_profile_info`;
CREATE TABLE `user_profile_info`  (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sign_personal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `point` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_profile_info
-- ----------------------------
INSERT INTO `user_profile_info` VALUES (1, 1, 1, '', '', 0);

-- ----------------------------
-- Table structure for video_info
-- ----------------------------
DROP TABLE IF EXISTS `video_info`;
CREATE TABLE `video_info`  (
  `video_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `player_id` int(11) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `power` int(11) NULL DEFAULT NULL,
  `point` int(11) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `view_count_day` int(11) NULL DEFAULT NULL,
  `view_count_week` int(11) NULL DEFAULT NULL,
  `view_count_month` int(11) NULL DEFAULT NULL,
  `view_count_year` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`video_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_info
-- ----------------------------

-- ----------------------------
-- Table structure for web_info
-- ----------------------------
DROP TABLE IF EXISTS `web_info`;
CREATE TABLE `web_info`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `domain` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `record_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `statistical_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_info
-- ----------------------------
INSERT INTO `web_info` VALUES (NULL, NULL, NULL, NULL, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
