/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t324`;
CREATE DATABASE IF NOT EXISTS `t324` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t324`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(4, 2, '收货人4', '17703786904', '地址4', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(5, 2, '收货人5', '17703786905', '地址5', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(6, 1, '收货人6', '17703786906', '地址6', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(7, 1, '收货人7', '17703786907', '地址7', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(8, 3, '收货人8', '17703786908', '地址8', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(9, 3, '收货人9', '17703786909', '地址9', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(10, 2, '收货人10', '17703786910', '地址10', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(11, 1, '收货人11', '17703786911', '地址11', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(12, 1, '收货人12', '17703786912', '地址12', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(13, 1, '收货人13', '17703786913', '地址13', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(14, 3, '收货人14', '17703786914', '地址14', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-03-04 08:04:29'),
	(2, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-03-04 08:04:29'),
	(3, 'shangpin_types', '商品类型', 1, '商品类型1', NULL, NULL, '2023-03-04 08:04:29'),
	(4, 'shangpin_types', '商品类型', 2, '商品类型2', NULL, NULL, '2023-03-04 08:04:29'),
	(5, 'shangpin_types', '商品类型', 3, '商品类型3', NULL, NULL, '2023-03-04 08:04:29'),
	(6, 'shangpin_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-03-04 08:04:29'),
	(7, 'shangpin_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-03-04 08:04:29'),
	(8, 'shangpin_order_types', '订单类型', 103, '已发货', NULL, NULL, '2023-03-04 08:04:29'),
	(9, 'shangpin_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-03-04 08:04:29'),
	(10, 'shangpin_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-03-04 08:04:29'),
	(11, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-04 08:04:29'),
	(12, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-04 08:04:29'),
	(13, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2023-03-04 08:04:29'),
	(14, 'sex_types', '性别', 1, '男', NULL, NULL, '2023-03-04 08:04:29'),
	(15, 'sex_types', '性别', 2, '女', NULL, NULL, '2023-03-04 08:04:29'),
	(16, 'forum_types', '帖子类型', 1, '考公/国考', NULL, NULL, '2023-03-04 08:04:30'),
	(17, 'forum_types', '帖子类型', 2, '考公/省考', NULL, NULL, '2023-03-04 08:04:30'),
	(18, 'forum_types', '帖子类型', 3, '考教师编', NULL, NULL, '2023-03-04 08:04:30'),
	(19, 'forum_types', '帖子类型', 4, '考研', NULL, NULL, '2023-03-04 08:04:30'),
	(20, 'forum_types', '帖子类型', 3, '考研', NULL, NULL, '2023-03-04 08:04:30'),
	(21, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-04 08:04:30'),
	(22, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-04 08:04:30');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COMMENT='经验交流平台';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_types`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, 3, '发布内容1', 25, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(2, '帖子标题2', 1, NULL, 4, '发布内容2', 418, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(3, '帖子标题3', 2, NULL, 2, '发布内容3', 457, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(4, '帖子标题4', 1, NULL, 1, '发布内容4', 266, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(5, '帖子标题5', 1, NULL, 3, '发布内容5', 499, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(6, '帖子标题6', 3, NULL, 3, '发布内容6', 235, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(7, '帖子标题7', 3, NULL, 1, '发布内容7', 95, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(8, '帖子标题8', 3, NULL, 3, '发布内容8', 191, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(9, '帖子标题9', 1, NULL, 2, '发布内容9', 473, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(10, '帖子标题10', 1, NULL, 4, '发布内容10', 476, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(11, '帖子标题11', 2, NULL, 1, '发布内容11', 338, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(12, '帖子标题12', 2, NULL, 1, '发布内容12', 456, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(13, '帖子标题13', 2, NULL, 4, '发布内容13', 449, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(14, '帖子标题14', 3, NULL, 4, '发布内容14', 376, 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(35, '1111', 1, NULL, 4, '<p><img src="upload/1677923419150.jpg" /></p>', NULL, 1, '2023-03-04 09:50:37', NULL, '2023-03-04 09:50:37'),
	(36, '123', 1, NULL, 3, '<p><img src="upload/1677928617674.jpg" /></p>', NULL, 1, '2023-03-04 11:17:02', NULL, '2023-03-04 11:17:02'),
	(37, NULL, 1, NULL, NULL, '1111', 36, 2, '2023-03-04 11:17:09', NULL, '2023-03-04 11:17:09'),
	(38, NULL, NULL, 1, NULL, '1231312', 36, 2, '2023-03-04 11:23:10', NULL, '2023-03-04 11:23:10'),
	(39, NULL, 1, NULL, NULL, '122', 36, 2, '2024-08-04 01:49:13', NULL, '2024-08-04 01:49:13');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'upload/news1.jpg', '2023-03-04 08:04:49', '公告详情1', '2023-03-04 08:04:49'),
	(2, '公告标题2', 3, 'upload/news2.jpg', '2023-03-04 08:04:49', '公告详情2', '2023-03-04 08:04:49'),
	(3, '公告标题3', 3, 'upload/news3.jpg', '2023-03-04 08:04:49', '公告详情3', '2023-03-04 08:04:49'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-03-04 08:04:49', '公告详情4', '2023-03-04 08:04:49'),
	(5, '公告标题5', 3, 'upload/news5.jpg', '2023-03-04 08:04:49', '公告详情5', '2023-03-04 08:04:49'),
	(6, '公告标题6', 3, 'upload/news6.jpg', '2023-03-04 08:04:49', '公告详情6', '2023-03-04 08:04:49'),
	(7, '公告标题7', 3, 'upload/news7.jpg', '2023-03-04 08:04:49', '公告详情7', '2023-03-04 08:04:49'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-03-04 08:04:49', '公告详情8', '2023-03-04 08:04:49'),
	(9, '公告标题9', 3, 'upload/news9.jpg', '2023-03-04 08:04:49', '公告详情9', '2023-03-04 08:04:49'),
	(10, '公告标题10', 2, 'upload/news10.jpg', '2023-03-04 08:04:49', '公告详情10', '2023-03-04 08:04:49'),
	(11, '公告标题11', 2, 'upload/news11.jpg', '2023-03-04 08:04:49', '公告详情11', '2023-03-04 08:04:49'),
	(12, '公告标题12', 3, 'upload/news12.jpg', '2023-03-04 08:04:49', '公告详情12', '2023-03-04 08:04:49'),
	(13, '公告标题13', 3, 'upload/news13.jpg', '2023-03-04 08:04:49', '公告详情13', '2023-03-04 08:04:49'),
	(14, '公告标题14', 1, 'upload/news14.jpg', '2023-03-04 08:04:49', '公告详情14', '2023-03-04 08:04:49');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int DEFAULT NULL COMMENT '热度',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='跳蚤市场';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangpin_uuid_number`, `shangpin_name`, `shangpin_photo`, `shangpin_types`, `shangpin_kucun_number`, `shangpin_old_money`, `shangpin_new_money`, `shangpin_clicknum`, `yonghu_id`, `shangpin_content`, `shangpin_delete`, `insert_time`, `create_time`) VALUES
	(1, '1677917089694', '商品名称1', 'upload/shangpin1.jpg', 3, 100, 652.94, 237.00, 428, 3, '商品介绍1', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(2, '1677917089641', '商品名称2', 'upload/shangpin2.jpg', 3, 102, 592.38, 298.93, 7, 3, '商品介绍2', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(3, '1677917089657', '商品名称3', 'upload/shangpin3.jpg', 3, 103, 838.24, 87.03, 147, 3, '商品介绍3', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(4, '1677917089717', '商品名称4', 'upload/shangpin4.jpg', 1, 104, 873.33, 358.04, 315, 3, '商品介绍4', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(5, '1677917089678', '商品名称5', 'upload/shangpin5.jpg', 3, 105, 842.06, 73.80, 171, 1, '商品介绍5', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(6, '1677917089662', '商品名称6', 'upload/shangpin6.jpg', 1, 106, 584.67, 205.77, 154, 1, '商品介绍6', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(7, '1677917089718', '商品名称7', 'upload/shangpin7.jpg', 1, 106, 773.93, 472.53, 340, 1, '商品介绍7', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(8, '1677917089697', '商品名称 8', 'upload/shangpin8.jpg', 1, 108, 518.94, 236.08, 69, 2, '商品介绍8', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(9, '1677917089634', '商品名称9', 'upload/shangpin9.jpg', 2, 109, 546.64, 489.58, 401, 2, '商品介绍9', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(10, '1677917089691', '商品名称10', 'upload/shangpin10.jpg', 1, 1010, 554.38, 115.64, 27, 2, '商品介绍10', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(11, '1677917089656', '商品名称11', 'upload/shangpin11.jpg', 1, 1011, 647.75, 338.55, 173, 2, '商品介绍11', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(12, '1677917089635', '商品名称12', 'upload/shangpin12.jpg', 2, 1012, 812.99, 337.41, 247, 3, '商品介绍12', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(13, '1677917089631', '商品名称13', 'upload/shangpin13.jpg', 2, 1013, 965.19, 306.15, 371, 2, '商品介绍13', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(14, '1677917089651', '商品名称14', 'upload/shangpin14.jpg', 1, 1014, 933.54, 154.69, 97, 2, '商品介绍14', 1, '2023-03-04 08:04:49', '2023-03-04 08:04:49');

DROP TABLE IF EXISTS `shangpin_liuyan`;
CREATE TABLE IF NOT EXISTS `shangpin_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='商品留言';

DELETE FROM `shangpin_liuyan`;
INSERT INTO `shangpin_liuyan` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2023-03-04 08:04:49', '回复信息1', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(2, 2, 2, '留言内容2', '2023-03-04 08:04:49', '回复信息2', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(3, 3, 2, '留言内容3', '2023-03-04 08:04:49', '回复信息3', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(4, 4, 1, '留言内容4', '2023-03-04 08:04:49', '回复信息4', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(5, 5, 3, '留言内容5', '2023-03-04 08:04:49', '回复信息5', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(6, 6, 1, '留言内容6', '2023-03-04 08:04:49', '回复信息6', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(7, 7, 1, '留言内容7', '2023-03-04 08:04:49', '回复信息7', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(8, 8, 1, '留言内容8', '2023-03-04 08:04:49', '回复信息8', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(9, 9, 2, '留言内容9', '2023-03-04 08:04:49', '回复信息9', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(10, 10, 2, '留言内容10', '2023-03-04 08:04:49', '回复信息10', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(11, 11, 3, '留言内容11', '2023-03-04 08:04:49', '回复信息11', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(12, 12, 1, '留言内容12', '2023-03-04 08:04:49', '回复信息12', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(13, 13, 3, '留言内容13', '2023-03-04 08:04:49', '回复信息13', '2023-03-04 08:04:49', '2023-03-04 08:04:49'),
	(14, 14, 3, '留言内容14', '2023-03-04 08:04:49', '回复信息14', '2023-03-04 08:04:49', '2023-03-04 08:04:49');

DROP TABLE IF EXISTS `shangpin_order`;
CREATE TABLE IF NOT EXISTS `shangpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `shangpin_order`;
INSERT INTO `shangpin_order` (`id`, `shangpin_order_uuid_number`, `address_id`, `shangpin_id`, `yonghu_id`, `buy_number`, `shangpin_order_true_price`, `shangpin_order_types`, `shangpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1677928429753', 2, 1, 1, 1, 237.00, 104, 1, '2023-03-04 11:13:50', '2023-03-04 11:13:50'),
	(2, '1722736168708', 7, 7, 1, 1, 472.53, 101, 1, '2024-08-04 01:49:29', '2024-08-04 01:49:29');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'iye4lsgn535uhy1h0xp356w5k56ia52o', '2023-03-04 08:07:39', '2024-08-04 02:49:01'),
	(2, 1, 'admin', 'users', '管理员', 'rhw17fu5wsluletok61yid92w13uxj9d', '2023-03-04 09:17:06', '2024-08-04 02:48:00'),
	(3, 2, 'a2', 'yonghu', '用户', 'c2h15kdhef7r1ppupiti077mqxar2pww', '2023-03-04 11:21:50', '2023-03-04 12:21:51'),
	(4, 3, 'a3', 'yonghu', '用户', 'djk23kmo9bcggpnqmyppdp3b6h7j0hqa', '2023-03-04 11:21:59', '2023-03-04 12:21:59');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-04 08:04:29');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `sex_types`, `yonghu_photo`, `yonghu_id_number`, `yonghu_phone`, `yonghu_email`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 1, 'upload/yonghu1.jpg', '410224199010102001', '17703786901', '1@qq.com', 10208.73, 1, '2023-03-04 08:04:49'),
	(2, '用户2', '123456', '用户姓名2', 2, 'upload/yonghu2.jpg', '410224199010102002', '17703786902', '2@qq.com', 832.46, 1, '2023-03-04 08:04:49'),
	(3, '用户3', '123456', '用户姓名3', 1, 'upload/yonghu3.jpg', '410224199010102003', '17703786903', '3@qq.com', 398.32, 1, '2023-03-04 08:04:49');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
