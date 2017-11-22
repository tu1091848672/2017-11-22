/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : thinkphp5

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-11-22 16:15:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `think_blog`
-- ----------------------------
DROP TABLE IF EXISTS `think_blog`;
CREATE TABLE `think_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) NOT NULL,
  `blog_author` varchar(50) NOT NULL,
  `blog_content` varchar(255) NOT NULL,
  `blog_create_time` varchar(255) NOT NULL,
  `blog_update_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_blog
-- ----------------------------
INSERT INTO `think_blog` VALUES ('1', '第一篇博客', 'pangPython', '这是一篇博客，使用thinkphp开发：)', '1469020818', '1469020818');
INSERT INTO `think_blog` VALUES ('2', '测试博客', 'admin', '这里是我的内容，哈哈哈哈哈哈', '1469020818', '1469020818');
INSERT INTO `think_blog` VALUES ('3', '正在学习php的孩子们', 'root', '好好学习，天天向上，。PHP是世界上最好的语言！！哈哈', '1469020818', '1469020818');
INSERT INTO `think_blog` VALUES ('4', '今天下大雨了哦哦', 'pangPython', '在看韩剧诶看见很快就拉黑的房间里萨奥斯U盾哦你按速度', '1469020818', '1469020818');
INSERT INTO `think_blog` VALUES ('5', '这是一首简单的下情歌', 'pangPython', '是的范德萨发发呆发个好的法国恢复到韩国的风格程序下载v', '1469020818', '1469020818');
INSERT INTO `think_blog` VALUES ('6', '一场大雨大雨', 'pangPython', '今天又继续下雨了，还是咋喜爱阿萨德加拉斯', '1469020818', '1469020818');

-- ----------------------------
-- Table structure for `think_user`
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_sex` int(11) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_birth` varchar(255) DEFAULT NULL,
  `user_jointime` varchar(255) DEFAULT NULL,
  `user_passwd` varchar(255) DEFAULT NULL,
  `user_signature` varchar(255) DEFAULT NULL,
  `user_hobby` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of think_user
-- ----------------------------
INSERT INTO `think_user` VALUES ('3', 'admin', '1', '15700000000', 'emial@email.com', '山东省济南市****路', '1111111', '111111', 'e10adc3949ba59abbe56e057f20f883e', null, null, '0');
INSERT INTO `think_user` VALUES ('4', '高总', '1', '15926829844', 'asdzxctu@qq.com', '杭州', '2017', null, '123456', '123', '123', '0');
INSERT INTO `think_user` VALUES ('5', '1', '1', '15926829844', 'asdzxctu@qq.com', '喜湖', '11', null, '1', '1', '1', '0');
