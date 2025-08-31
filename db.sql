/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbooted1p6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbooted1p6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbooted1p6`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748755566 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-30 10:02:30',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-30 10:02:30',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-30 10:02:30',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-30 10:02:30',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-30 10:02:30',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-30 10:02:30',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619748755565,'2021-04-30 10:12:34',1619748681704,'广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼','杨洋','13613512522','是');

/*Table structure for table `caipufenlei` */

DROP TABLE IF EXISTS `caipufenlei`;

CREATE TABLE `caipufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipufenlei` varchar(200) NOT NULL COMMENT '菜谱分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipufenlei` (`caipufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748409347 DEFAULT CHARSET=utf8 COMMENT='菜谱分类';

/*Data for the table `caipufenlei` */

insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (31,'2021-04-30 10:02:30','菜谱分类1');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (32,'2021-04-30 10:02:30','菜谱分类2');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (33,'2021-04-30 10:02:30','菜谱分类3');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (34,'2021-04-30 10:02:30','菜谱分类4');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (35,'2021-04-30 10:02:30','菜谱分类5');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (36,'2021-04-30 10:02:30','菜谱分类6');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (1619748376910,'2021-04-30 10:06:15','汤');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (1619748397764,'2021-04-30 10:06:36','粤菜');
insert  into `caipufenlei`(`id`,`addtime`,`caipufenlei`) values (1619748409346,'2021-04-30 10:06:48','湘菜');

/*Table structure for table `caipuxinxi` */

DROP TABLE IF EXISTS `caipuxinxi`;

CREATE TABLE `caipuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinbianhao` varchar(200) DEFAULT NULL COMMENT '菜品编号',
  `caipinmingcheng` varchar(200) DEFAULT NULL COMMENT '菜品名称',
  `caipufenlei` varchar(200) DEFAULT NULL COMMENT '菜谱分类',
  `kouwei` varchar(200) DEFAULT NULL COMMENT '口味',
  `nandu` varchar(200) DEFAULT NULL COMMENT '难度',
  `pengrenshizhang` varchar(200) DEFAULT NULL COMMENT '烹饪时长',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuancailiao` longtext COMMENT '原材料',
  `caipinjieshao` longtext COMMENT '菜品介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caipinbianhao` (`caipinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748489489 DEFAULT CHARSET=utf8 COMMENT='菜谱信息';

/*Data for the table `caipuxinxi` */

insert  into `caipuxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipufenlei`,`kouwei`,`nandu`,`pengrenshizhang`,`tupian`,`yuancailiao`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicknum`) values (41,'2021-04-30 10:02:30','菜品编号1','菜品名称1','菜谱分类1','口味1','简单','烹饪时长1','http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian1.jpg','原材料1','菜品介绍1',1,1,1);
insert  into `caipuxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipufenlei`,`kouwei`,`nandu`,`pengrenshizhang`,`tupian`,`yuancailiao`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicknum`) values (42,'2021-04-30 10:02:30','菜品编号2','菜品名称2','菜谱分类2','口味2','简单','烹饪时长2','http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian2.jpg','原材料2','菜品介绍2',2,2,2);
insert  into `caipuxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipufenlei`,`kouwei`,`nandu`,`pengrenshizhang`,`tupian`,`yuancailiao`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicknum`) values (43,'2021-04-30 10:02:30','菜品编号3','菜品名称3','菜谱分类3','口味3','简单','烹饪时长3','http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian3.jpg','原材料3','菜品介绍3',3,3,3);
insert  into `caipuxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipufenlei`,`kouwei`,`nandu`,`pengrenshizhang`,`tupian`,`yuancailiao`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicknum`) values (44,'2021-04-30 10:02:30','菜品编号4','菜品名称4','菜谱分类4','口味4','简单','烹饪时长4','http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian4.jpg','原材料4','菜品介绍4',4,4,4);
insert  into `caipuxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipufenlei`,`kouwei`,`nandu`,`pengrenshizhang`,`tupian`,`yuancailiao`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicknum`) values (45,'2021-04-30 10:02:30','菜品编号5','菜品名称5','菜谱分类5','口味5','简单','烹饪时长5','http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian5.jpg','原材料5','菜品介绍5',5,5,5);
insert  into `caipuxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipufenlei`,`kouwei`,`nandu`,`pengrenshizhang`,`tupian`,`yuancailiao`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicknum`) values (46,'2021-04-30 10:02:30','菜品编号6','菜品名称6','菜谱分类6','口味6','简单','烹饪时长6','http://localhost:8080/springbooted1p6/upload/caipuxinxi_tupian6.jpg','原材料6','菜品介绍6',6,6,6);
insert  into `caipuxinxi`(`id`,`addtime`,`caipinbianhao`,`caipinmingcheng`,`caipufenlei`,`kouwei`,`nandu`,`pengrenshizhang`,`tupian`,`yuancailiao`,`caipinjieshao`,`thumbsupnum`,`crazilynum`,`clicknum`) values (1619748489488,'2021-04-30 10:08:09','1619748969302','排骨莲藕汤','汤','清淡','中难度','2小时','http://localhost:8080/springbooted1p6/upload/1619748460598.jpg','排骨.莲藕厨艺交流平台','<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src=\"http://localhost:8080/springbooted1p6/upload/1619748485860.jpg\">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>',1,0,3);

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748722426 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbooted1p6/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbooted1p6/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbooted1p6/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage','http://localhost:8080/springbooted1p6/upload/1619748632417.jpg');

/*Table structure for table `discusscaipuxinxi` */

DROP TABLE IF EXISTS `discusscaipuxinxi`;

CREATE TABLE `discusscaipuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='菜谱信息评论表';

/*Data for the table `discusscaipuxinxi` */

insert  into `discusscaipuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-04-30 10:02:30',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusscaipuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (142,'2021-04-30 10:02:30',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusscaipuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (143,'2021-04-30 10:02:30',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusscaipuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (144,'2021-04-30 10:02:30',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusscaipuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (145,'2021-04-30 10:02:30',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusscaipuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (146,'2021-04-30 10:02:30',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjiankangwenzhang` */

DROP TABLE IF EXISTS `discussjiankangwenzhang`;

CREATE TABLE `discussjiankangwenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748848959 DEFAULT CHARSET=utf8 COMMENT='健康文章评论表';

/*Data for the table `discussjiankangwenzhang` */

insert  into `discussjiankangwenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (181,'2021-04-30 10:02:30',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiankangwenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (182,'2021-04-30 10:02:30',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiankangwenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (183,'2021-04-30 10:02:30',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiankangwenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (184,'2021-04-30 10:02:30',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiankangwenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (185,'2021-04-30 10:02:30',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiankangwenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (186,'2021-04-30 10:02:30',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussjiankangwenzhang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619748848958,'2021-04-30 10:14:08',1619748622358,1619748681704,'222','fds fds ',NULL);

/*Table structure for table `discussmeishirizhi` */

DROP TABLE IF EXISTS `discussmeishirizhi`;

CREATE TABLE `discussmeishirizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748856954 DEFAULT CHARSET=utf8 COMMENT='美食日志评论表';

/*Data for the table `discussmeishirizhi` */

insert  into `discussmeishirizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (171,'2021-04-30 10:02:30',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussmeishirizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (172,'2021-04-30 10:02:30',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussmeishirizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (173,'2021-04-30 10:02:30',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussmeishirizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (174,'2021-04-30 10:02:30',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussmeishirizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (175,'2021-04-30 10:02:30',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussmeishirizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (176,'2021-04-30 10:02:30',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussmeishirizhi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619748856953,'2021-04-30 10:14:16',86,1619748681704,'222','fd safds ',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748725477 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (161,'2021-04-30 10:02:30',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (162,'2021-04-30 10:02:30',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (163,'2021-04-30 10:02:30',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (164,'2021-04-30 10:02:30',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (165,'2021-04-30 10:02:30',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (166,'2021-04-30 10:02:30',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619748725476,'2021-04-30 10:12:04',1619748587663,1619748681704,'222','3232',NULL);

/*Table structure for table `discussshicaixinxi` */

DROP TABLE IF EXISTS `discussshicaixinxi`;

CREATE TABLE `discussshicaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748705629 DEFAULT CHARSET=utf8 COMMENT='食材信息评论表';

/*Data for the table `discussshicaixinxi` */

insert  into `discussshicaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-30 10:02:30',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshicaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (152,'2021-04-30 10:02:30',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshicaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (153,'2021-04-30 10:02:30',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshicaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (154,'2021-04-30 10:02:30',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshicaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (155,'2021-04-30 10:02:30',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshicaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (156,'2021-04-30 10:02:30',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshicaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619748705628,'2021-04-30 10:11:45',1619748535300,1619748681704,'222','3232',NULL);

/*Table structure for table `jiankangwenzhang` */

DROP TABLE IF EXISTS `jiankangwenzhang`;

CREATE TABLE `jiankangwenzhang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `wenzhangfengmian` varchar(200) DEFAULT NULL COMMENT '文章封面',
  `wenzhangleixing` varchar(200) DEFAULT NULL COMMENT '文章类型',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `wenzhangneirong` longtext COMMENT '文章内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748622359 DEFAULT CHARSET=utf8 COMMENT='健康文章';

/*Data for the table `jiankangwenzhang` */

insert  into `jiankangwenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfengmian`,`wenzhangleixing`,`fabushijian`,`wenzhangneirong`) values (91,'2021-04-30 10:02:30','文章标题1','http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian1.jpg','饮食常识','2021-04-30 10:02:30','文章内容1');
insert  into `jiankangwenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfengmian`,`wenzhangleixing`,`fabushijian`,`wenzhangneirong`) values (92,'2021-04-30 10:02:30','文章标题2','http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian2.jpg','饮食常识','2021-04-30 10:02:30','文章内容2');
insert  into `jiankangwenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfengmian`,`wenzhangleixing`,`fabushijian`,`wenzhangneirong`) values (93,'2021-04-30 10:02:30','文章标题3','http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian3.jpg','饮食常识','2021-04-30 10:02:30','文章内容3');
insert  into `jiankangwenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfengmian`,`wenzhangleixing`,`fabushijian`,`wenzhangneirong`) values (94,'2021-04-30 10:02:30','文章标题4','http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian4.jpg','饮食常识','2021-04-30 10:02:30','文章内容4');
insert  into `jiankangwenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfengmian`,`wenzhangleixing`,`fabushijian`,`wenzhangneirong`) values (95,'2021-04-30 10:02:30','文章标题5','http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian5.jpg','饮食常识','2021-04-30 10:02:30','文章内容5');
insert  into `jiankangwenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfengmian`,`wenzhangleixing`,`fabushijian`,`wenzhangneirong`) values (96,'2021-04-30 10:02:30','文章标题6','http://localhost:8080/springbooted1p6/upload/jiankangwenzhang_wenzhangfengmian6.jpg','饮食常识','2021-04-30 10:02:30','文章内容6');
insert  into `jiankangwenzhang`(`id`,`addtime`,`wenzhangbiaoti`,`wenzhangfengmian`,`wenzhangleixing`,`fabushijian`,`wenzhangneirong`) values (1619748622358,'2021-04-30 10:10:22','范德萨啊范德萨','http://localhost:8080/springbooted1p6/upload/1619748603588.jpg','饮食常识','2021-04-30 10:19:10','<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src=\"http://localhost:8080/springbooted1p6/upload/1619748614940.jpg\"><img src=\"http://localhost:8080/springbooted1p6/upload/1619748619092.jpg\">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>');

/*Table structure for table `meishirizhi` */

DROP TABLE IF EXISTS `meishirizhi`;

CREATE TABLE `meishirizhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rizhibianhao` varchar(200) DEFAULT NULL COMMENT '日志编号',
  `rizhibiaoti` varchar(200) DEFAULT NULL COMMENT '日志标题',
  `rizhifengmian` varchar(200) DEFAULT NULL COMMENT '日志封面',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `meishirizhi` longtext COMMENT '美食日志',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rizhibianhao` (`rizhibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748905388 DEFAULT CHARSET=utf8 COMMENT='美食日志';

/*Data for the table `meishirizhi` */

insert  into `meishirizhi`(`id`,`addtime`,`rizhibianhao`,`rizhibiaoti`,`rizhifengmian`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`meishirizhi`,`thumbsupnum`,`crazilynum`) values (81,'2021-04-30 10:02:30','日志编号1','日志标题1','http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian1.jpg','用户账号1','用户姓名1','2021-04-30 10:02:30','美食日志1',1,1);
insert  into `meishirizhi`(`id`,`addtime`,`rizhibianhao`,`rizhibiaoti`,`rizhifengmian`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`meishirizhi`,`thumbsupnum`,`crazilynum`) values (82,'2021-04-30 10:02:30','日志编号2','日志标题2','http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian2.jpg','用户账号2','用户姓名2','2021-04-30 10:02:30','美食日志2',2,2);
insert  into `meishirizhi`(`id`,`addtime`,`rizhibianhao`,`rizhibiaoti`,`rizhifengmian`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`meishirizhi`,`thumbsupnum`,`crazilynum`) values (83,'2021-04-30 10:02:30','日志编号3','日志标题3','http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian3.jpg','用户账号3','用户姓名3','2021-04-30 10:02:30','美食日志3',3,3);
insert  into `meishirizhi`(`id`,`addtime`,`rizhibianhao`,`rizhibiaoti`,`rizhifengmian`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`meishirizhi`,`thumbsupnum`,`crazilynum`) values (84,'2021-04-30 10:02:30','日志编号4','日志标题4','http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian4.jpg','用户账号4','用户姓名4','2021-04-30 10:02:30','美食日志4',4,4);
insert  into `meishirizhi`(`id`,`addtime`,`rizhibianhao`,`rizhibiaoti`,`rizhifengmian`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`meishirizhi`,`thumbsupnum`,`crazilynum`) values (85,'2021-04-30 10:02:30','日志编号5','日志标题5','http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian5.jpg','用户账号5','用户姓名5','2021-04-30 10:02:30','美食日志5',5,5);
insert  into `meishirizhi`(`id`,`addtime`,`rizhibianhao`,`rizhibiaoti`,`rizhifengmian`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`meishirizhi`,`thumbsupnum`,`crazilynum`) values (86,'2021-04-30 10:02:30','日志编号6','日志标题6','http://localhost:8080/springbooted1p6/upload/meishirizhi_rizhifengmian6.jpg','用户账号6','用户姓名6','2021-04-30 10:02:30','美食日志6',7,6);
insert  into `meishirizhi`(`id`,`addtime`,`rizhibianhao`,`rizhibiaoti`,`rizhifengmian`,`yonghuzhanghao`,`yonghuxingming`,`fabushijian`,`meishirizhi`,`thumbsupnum`,`crazilynum`) values (1619748905387,'2021-04-30 10:15:05','1619749437343','发VCD撒范德萨啊范德萨','http://localhost:8080/springbooted1p6/upload/1619748896133.jpg','222','杨洋','2021-04-30 10:23:57','<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src=\"http://localhost:8080/springbooted1p6/upload/1619748902633.jpg\">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>',0,0);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748835330 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619748766111,'2021-04-30 10:12:45','2021430102216557188','shangpinxinxi',1619748681704,72,'商品名称2','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian2.jpg',2,99.9,99.9,199.8,199.8,1,'已取消','广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼','13613512522','杨洋');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619748784004,'2021-04-30 10:13:03','202143010221977087302','shangpinxinxi',1619748681704,75,'商品名称5','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian5.jpg',2,99.9,99.9,199.8,199.8,1,'已退款','广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼','13613512522','杨洋');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619748804157,'2021-04-30 10:13:23','202143010223926476632','shangpinxinxi',1619748681704,1619748587663,'洋葱','http://localhost:8080/springbooted1p6/upload/1619748566208.gif',4,10,10,40,40,1,'已支付','广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼','13613512522','杨洋');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619748835329,'2021-04-30 10:13:54','202143010231055321792','shangpinxinxi',1619748681704,73,'商品名称3','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian3.jpg',2,99.9,99.9,199.8,199.8,1,'已完成','广东省梅州市兴宁市刁坊镇罗坝村坜背黄屋26号楼','13613512522','杨洋');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748554779 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (61,'2021-04-30 10:02:30','商品分类1');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (62,'2021-04-30 10:02:30','商品分类2');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (63,'2021-04-30 10:02:30','商品分类3');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (64,'2021-04-30 10:02:30','商品分类4');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (65,'2021-04-30 10:02:30','商品分类5');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (66,'2021-04-30 10:02:30','商品分类6');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1619748544194,'2021-04-30 10:09:04','食材');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1619748554778,'2021-04-30 10:09:14','工具');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748587664 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinbianhao`,`shangpinfenlei`,`tupian`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (71,'2021-04-30 10:02:30','商品名称1','商品编号1','商品分类1','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian1.jpg','商品详情1',99.9,1,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinbianhao`,`shangpinfenlei`,`tupian`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (72,'2021-04-30 10:02:30','商品名称2','商品编号2','商品分类2','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian2.jpg','商品详情2',99.9,2,97);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinbianhao`,`shangpinfenlei`,`tupian`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (73,'2021-04-30 10:02:30','商品名称3','商品编号3','商品分类3','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian3.jpg','商品详情3',99.9,3,97);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinbianhao`,`shangpinfenlei`,`tupian`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (74,'2021-04-30 10:02:30','商品名称4','商品编号4','商品分类4','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian4.jpg','商品详情4',99.9,4,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinbianhao`,`shangpinfenlei`,`tupian`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (75,'2021-04-30 10:02:30','商品名称5','商品编号5','商品分类5','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian5.jpg','商品详情5',99.9,5,97);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinbianhao`,`shangpinfenlei`,`tupian`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (76,'2021-04-30 10:02:30','商品名称6','商品编号6','商品分类6','http://localhost:8080/springbooted1p6/upload/shangpinxinxi_tupian6.jpg','商品详情6',99.9,6,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinbianhao`,`shangpinfenlei`,`tupian`,`shangpinxiangqing`,`price`,`onelimittimes`,`alllimittimes`) values (1619748587663,'2021-04-30 10:09:47','洋葱','1619749114519','食材','http://localhost:8080/springbooted1p6/upload/1619748566208.gif','<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src=\"http://localhost:8080/springbooted1p6/upload/1619748584867.gif\">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>',10,100,996);

/*Table structure for table `shicaifenlei` */

DROP TABLE IF EXISTS `shicaifenlei`;

CREATE TABLE `shicaifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shicaifenlei` varchar(200) NOT NULL COMMENT '食材分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shicaifenlei` (`shicaifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748365056 DEFAULT CHARSET=utf8 COMMENT='食材分类';

/*Data for the table `shicaifenlei` */

insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (11,'2021-04-30 10:02:30','食材分类1');
insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (12,'2021-04-30 10:02:30','食材分类2');
insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (13,'2021-04-30 10:02:30','食材分类3');
insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (14,'2021-04-30 10:02:30','食材分类4');
insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (15,'2021-04-30 10:02:30','食材分类5');
insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (16,'2021-04-30 10:02:30','食材分类6');
insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (1619748351122,'2021-04-30 10:05:51','肉');
insert  into `shicaifenlei`(`id`,`addtime`,`shicaifenlei`) values (1619748365055,'2021-04-30 10:06:04','蔬菜');

/*Table structure for table `shicaixinxi` */

DROP TABLE IF EXISTS `shicaixinxi`;

CREATE TABLE `shicaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shicaimingcheng` varchar(200) DEFAULT NULL COMMENT '食材名称',
  `shicaichandi` varchar(200) DEFAULT NULL COMMENT '食材产地',
  `shicaididian` varchar(200) DEFAULT NULL COMMENT '食材地点',
  `shicaireliang` varchar(200) DEFAULT NULL COMMENT '食材热量',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `shicaifengmian` varchar(200) DEFAULT NULL COMMENT '食材封面',
  `shiyongyiji` longtext COMMENT '食用宜忌',
  `xuangoujiqiao` longtext COMMENT '选购技巧',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748535301 DEFAULT CHARSET=utf8 COMMENT='食材信息';

/*Data for the table `shicaixinxi` */

insert  into `shicaixinxi`(`id`,`addtime`,`shicaimingcheng`,`shicaichandi`,`shicaididian`,`shicaireliang`,`fabushijian`,`shicaifengmian`,`shiyongyiji`,`xuangoujiqiao`,`thumbsupnum`,`crazilynum`) values (51,'2021-04-30 10:02:30','食材名称1','食材产地1','食材地点1','食材热量1','2021-04-30 10:02:30','http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian1.jpg','食用宜忌1','选购技巧1',1,1);
insert  into `shicaixinxi`(`id`,`addtime`,`shicaimingcheng`,`shicaichandi`,`shicaididian`,`shicaireliang`,`fabushijian`,`shicaifengmian`,`shiyongyiji`,`xuangoujiqiao`,`thumbsupnum`,`crazilynum`) values (52,'2021-04-30 10:02:30','食材名称2','食材产地2','食材地点2','食材热量2','2021-04-30 10:02:30','http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian2.jpg','食用宜忌2','选购技巧2',2,2);
insert  into `shicaixinxi`(`id`,`addtime`,`shicaimingcheng`,`shicaichandi`,`shicaididian`,`shicaireliang`,`fabushijian`,`shicaifengmian`,`shiyongyiji`,`xuangoujiqiao`,`thumbsupnum`,`crazilynum`) values (53,'2021-04-30 10:02:30','食材名称3','食材产地3','食材地点3','食材热量3','2021-04-30 10:02:30','http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian3.jpg','食用宜忌3','选购技巧3',5,3);
insert  into `shicaixinxi`(`id`,`addtime`,`shicaimingcheng`,`shicaichandi`,`shicaididian`,`shicaireliang`,`fabushijian`,`shicaifengmian`,`shiyongyiji`,`xuangoujiqiao`,`thumbsupnum`,`crazilynum`) values (54,'2021-04-30 10:02:30','食材名称4','食材产地4','食材地点4','食材热量4','2021-04-30 10:02:30','http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian4.jpg','食用宜忌4','选购技巧4',4,4);
insert  into `shicaixinxi`(`id`,`addtime`,`shicaimingcheng`,`shicaichandi`,`shicaididian`,`shicaireliang`,`fabushijian`,`shicaifengmian`,`shiyongyiji`,`xuangoujiqiao`,`thumbsupnum`,`crazilynum`) values (55,'2021-04-30 10:02:30','食材名称5','食材产地5','食材地点5','食材热量5','2021-04-30 10:02:30','http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian5.jpg','食用宜忌5','选购技巧5',5,5);
insert  into `shicaixinxi`(`id`,`addtime`,`shicaimingcheng`,`shicaichandi`,`shicaididian`,`shicaireliang`,`fabushijian`,`shicaifengmian`,`shiyongyiji`,`xuangoujiqiao`,`thumbsupnum`,`crazilynum`) values (56,'2021-04-30 10:02:30','食材名称6','食材产地6','食材地点6','食材热量6','2021-04-30 10:02:30','http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian6.jpg','食用宜忌6','选购技巧6',6,6);
insert  into `shicaixinxi`(`id`,`addtime`,`shicaimingcheng`,`shicaichandi`,`shicaididian`,`shicaireliang`,`fabushijian`,`shicaifengmian`,`shiyongyiji`,`xuangoujiqiao`,`thumbsupnum`,`crazilynum`) values (1619748535300,'2021-04-30 10:08:54','洋葱','广西','范德萨范德萨','2566','2021-04-30 10:17:30','http://localhost:8080/springbooted1p6/upload/1619748505037.gif','<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台v厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台<img src=\"http://localhost:8080/springbooted1p6/upload/1619748532543.gif\">厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台v</p>','<p>厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台厨艺交流平台</p>',1,0);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748962451 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619748690343,'2021-04-30 10:11:30',1619748681704,1619748489488,'caipuxinxi','排骨莲藕汤','http://localhost:8080/springbooted1p6/upload/1619748460598.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619748698188,'2021-04-30 10:11:38',1619748681704,1619748535300,'shicaixinxi','洋葱','http://localhost:8080/springbooted1p6/upload/1619748505037.gif');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619748717926,'2021-04-30 10:11:57',1619748681704,1619748587663,'shangpinxinxi','洋葱','http://localhost:8080/springbooted1p6/upload/1619748566208.gif');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619748824800,'2021-04-30 10:13:44',1619748681704,53,'shicaixinxi','食材名称3','http://localhost:8080/springbooted1p6/upload/shicaixinxi_shicaifengmian3.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619748842860,'2021-04-30 10:14:02',1619748681704,1619748622358,'jiankangwenzhang','范德萨啊范德萨','http://localhost:8080/springbooted1p6/upload/1619748603588.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619748962450,'2021-04-30 10:16:02',1619748681704,1619748905387,'meishirizhi','发VCD撒范德萨啊范德萨','http://localhost:8080/springbooted1p6/upload/1619748896133.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619748307873,'111','yonghu','用户','e09y1zrat2qdu4swa9cyoyk0wdhp9jdy','2021-04-30 10:05:12','2021-04-30 11:05:13');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1,'abo','users','管理员','h2bzxqvqhykuj1axnl4v3glczo6186wf','2021-04-30 10:05:39','2021-04-30 11:15:20');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619748681704,'222','yonghu','用户','8lrlde0pku00r2a963eavf5q1uj6so5d','2021-04-30 10:11:28','2021-04-30 11:15:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-30 10:02:30');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619748681705 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (21,'2021-04-30 10:02:30','用户1','用户姓名1','123456','男',1,'13823888881','773890001@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (22,'2021-04-30 10:02:30','用户2','用户姓名2','123456','男',2,'13823888882','773890002@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (23,'2021-04-30 10:02:30','用户3','用户姓名3','123456','男',3,'13823888883','773890003@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (24,'2021-04-30 10:02:30','用户4','用户姓名4','123456','男',4,'13823888884','773890004@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (25,'2021-04-30 10:02:30','用户5','用户姓名5','123456','男',5,'13823888885','773890005@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (26,'2021-04-30 10:02:30','用户6','用户姓名6','123456','男',6,'13823888886','773890006@qq.com',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (1619748307873,'2021-04-30 10:05:07','111','胡急','111',NULL,36,'13613512522','55545@qq.com',0);
insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`,`money`) values (1619748681704,'2021-04-30 10:11:21','222','杨洋','222','女',23,'13613613522','121212@qq.com',2973.2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
