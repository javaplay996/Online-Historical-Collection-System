/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lishiguancangxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lishiguancangxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lishiguancangxitong`;

/*Table structure for table `bowuguan` */

DROP TABLE IF EXISTS `bowuguan`;

CREATE TABLE `bowuguan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `bowuguan_name` varchar(200) DEFAULT NULL COMMENT '博物馆名称  Search111 ',
  `bowuguan_uuid_number` varchar(200) DEFAULT NULL COMMENT '博物馆编号',
  `bowuguan_photo` varchar(200) DEFAULT NULL COMMENT '博物馆照片',
  `bowuguan_address` varchar(200) DEFAULT NULL COMMENT '博物馆地点',
  `bowuguan_types` int(11) DEFAULT NULL COMMENT '博物馆分类 Search111',
  `bowuguan_content` text COMMENT '博物馆介绍 ',
  `bowuguan_kucun_number` int(11) DEFAULT NULL COMMENT '每天最大人数上限',
  `bowuguan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='博物馆';

/*Data for the table `bowuguan` */

insert  into `bowuguan`(`id`,`bowuguan_name`,`bowuguan_uuid_number`,`bowuguan_photo`,`bowuguan_address`,`bowuguan_types`,`bowuguan_content`,`bowuguan_kucun_number`,`bowuguan_delete`,`insert_time`,`create_time`) values (1,'博物馆名称1','1677642669390','upload/bowuguan1.jpg','博物馆地点1',2,'博物馆介绍1',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(2,'博物馆名称2','1677642669378','upload/bowuguan2.jpg','博物馆地点2',3,'博物馆介绍2',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(3,'博物馆名称3','1677642669449','upload/bowuguan3.jpg','博物馆地点3',3,'博物馆介绍3',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(4,'博物馆名称4','1677642669409','upload/bowuguan4.jpg','博物馆地点4',4,'博物馆介绍4',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(5,'博物馆名称5','1677642669440','upload/bowuguan5.jpg','博物馆地点5',3,'博物馆介绍5',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(6,'博物馆名称6','1677642669390','upload/bowuguan6.jpg','博物馆地点6',2,'博物馆介绍6',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(7,'博物馆名称7','1677642669375','upload/bowuguan7.jpg','博物馆地点7',2,'博物馆介绍7',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(8,'博物馆名称8','1677642669418','upload/bowuguan8.jpg','博物馆地点8',3,'博物馆介绍8',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(9,'博物馆名称9','1677642669399','upload/bowuguan9.jpg','博物馆地点9',3,'博物馆介绍9',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(10,'博物馆名称10','1677642669369','upload/bowuguan10.jpg','博物馆地点10',1,'博物馆介绍10',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(11,'博物馆名称11','1677642669415','upload/bowuguan11.jpg','博物馆地点11',3,'博物馆介绍11',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(12,'博物馆名称12','1677642669424','upload/bowuguan12.jpg','博物馆地点12',2,'博物馆介绍12',18,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(13,'博物馆名称13','1677642669370','upload/bowuguan13.jpg','博物馆地点13',2,'<p>博物馆介绍13</p>',23,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(14,'博物馆名称14','1677642669405','upload/bowuguan14.jpg','博物馆地点14',3,'<p>博物馆介绍14</p>',20,1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2023-03-01 13:31:22','2023-03-01 13:31:22'),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,'2023-03-01 13:34:34','2023-03-01 13:34:34');

/*Table structure for table `bowuguan_order` */

DROP TABLE IF EXISTS `bowuguan_order`;

CREATE TABLE `bowuguan_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bowuguan_id` int(11) DEFAULT NULL COMMENT '博物馆',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `bowuguan_order_time` date DEFAULT NULL COMMENT '预约时间',
  `buy_number` int(11) DEFAULT NULL COMMENT '预约人数',
  `bowuguan_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='博物馆预约';

/*Data for the table `bowuguan_order` */

insert  into `bowuguan_order`(`id`,`bowuguan_id`,`yonghu_id`,`bowuguan_order_time`,`buy_number`,`bowuguan_order_types`,`insert_time`,`create_time`) values (9,13,1,'2023-03-01',5,103,'2023-03-01 14:00:24','2023-03-01 14:00:24'),(10,13,1,'2023-03-01',9,103,'2023-03-01 14:09:36','2023-03-01 14:09:36'),(11,13,1,'2023-03-01',4,107,'2023-03-01 14:09:36','2023-03-01 14:09:36'),(12,13,1,'2023-03-01',5,102,'2023-03-01 19:11:16','2023-03-01 19:11:16'),(13,12,1,'2023-03-01',4,103,'2023-03-01 19:11:28','2023-03-01 19:11:28'),(14,12,1,'2023-03-01',13,103,'2023-03-01 19:13:45','2023-03-01 19:13:45'),(15,12,1,'2023-03-01',4,107,'2023-03-01 19:14:15','2023-03-01 19:14:15');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-01 11:50:24'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-01 11:50:24'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-01 11:50:24'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-01 11:50:24'),(5,'bowuguan_types','博物馆分类',1,'博物馆分类1',NULL,NULL,'2023-03-01 11:50:24'),(6,'bowuguan_types','博物馆分类',2,'博物馆分类2',NULL,NULL,'2023-03-01 11:50:24'),(7,'bowuguan_types','博物馆分类',3,'博物馆分类3',NULL,NULL,'2023-03-01 11:50:24'),(8,'bowuguan_types','博物馆分类',4,'博物馆分类4',NULL,NULL,'2023-03-01 11:50:24'),(9,'bowuguan_order_types','订单类型',101,'已预约',NULL,NULL,'2023-03-01 11:50:24'),(10,'bowuguan_order_types','订单类型',102,'已取消',NULL,NULL,'2023-03-01 11:50:24'),(11,'bowuguan_order_types','订单类型',103,'已审核',NULL,NULL,'2023-03-01 11:50:24'),(12,'bowuguan_order_types','订单类型',107,'已拒绝',NULL,NULL,'2023-03-01 11:50:24');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-01 11:51:09','公告详情1','2023-03-01 11:51:09'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-01 11:51:09','公告详情2','2023-03-01 11:51:09'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-01 11:51:09','公告详情3','2023-03-01 11:51:09'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-01 11:51:09','公告详情4','2023-03-01 11:51:09'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-01 11:51:09','公告详情5','2023-03-01 11:51:09'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-01 11:51:09','公告详情6','2023-03-01 11:51:09'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-01 11:51:09','公告详情7','2023-03-01 11:51:09'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-01 11:51:09','公告详情8','2023-03-01 11:51:09'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-01 11:51:09','公告详情9','2023-03-01 11:51:09'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-01 11:51:09','公告详情10','2023-03-01 11:51:09'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-01 11:51:09','公告详情11','2023-03-01 11:51:09'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-01 11:51:09','公告详情12','2023-03-01 11:51:09'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-01 11:51:09','公告详情13','2023-03-01 11:51:09'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-01 11:51:09','公告详情14','2023-03-01 11:51:09');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,'留言标题1','留言内容1','2023-03-01 11:51:09','回复信息1','2023-03-01 11:51:09','2023-03-01 11:51:09'),(2,2,'留言标题2','留言内容2','2023-03-01 11:51:09','回复信息2','2023-03-01 11:51:09','2023-03-01 11:51:09'),(3,2,'留言标题3','留言内容3','2023-03-01 11:51:09','回复信息3','2023-03-01 11:51:09','2023-03-01 11:51:09'),(4,1,'留言标题4','留言内容4','2023-03-01 11:51:09','回复信息4','2023-03-01 11:51:09','2023-03-01 11:51:09'),(5,1,'留言标题5','留言内容5','2023-03-01 11:51:09','回复信息5','2023-03-01 11:51:09','2023-03-01 11:51:09'),(6,1,'留言标题6','留言内容6','2023-03-01 11:51:09','回复信息6','2023-03-01 11:51:09','2023-03-01 11:51:09'),(7,3,'留言标题7','留言内容7','2023-03-01 11:51:09','回复信息7','2023-03-01 11:51:09','2023-03-01 11:51:09'),(8,1,'留言标题8','留言内容8','2023-03-01 11:51:09','回复信息8','2023-03-01 11:51:09','2023-03-01 11:51:09'),(9,1,'留言标题9','留言内容9','2023-03-01 11:51:09','回复信息9','2023-03-01 11:51:09','2023-03-01 11:51:09'),(10,3,'留言标题10','留言内容10','2023-03-01 11:51:09','回复信息10','2023-03-01 11:51:09','2023-03-01 11:51:09'),(11,2,'留言标题11','留言内容11','2023-03-01 11:51:09','回复信息11','2023-03-01 11:51:09','2023-03-01 11:51:09'),(12,3,'留言标题12','留言内容12','2023-03-01 11:51:09','回复信息12','2023-03-01 11:51:09','2023-03-01 11:51:09'),(13,2,'留言标题13','留言内容13','2023-03-01 11:51:09','回复信息13','2023-03-01 11:51:09','2023-03-01 11:51:09'),(14,1,'留言标题14','留言内容14','2023-03-01 11:51:09','回复信息14','2023-03-01 11:51:09','2023-03-01 11:51:09'),(15,1,'留言','留言','2023-03-01 19:11:47',NULL,NULL,'2023-03-01 19:11:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','s2whnunc5kwu1nzhofo7u3ds3tjwg5gm','2023-03-01 13:01:46','2023-03-01 20:10:55'),(2,1,'admin','users','管理员','9xd1pi0nq1wnhr8gwf2ch9icdrrrcbyq','2023-03-01 13:14:26','2023-03-01 20:12:05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-01 11:50:24');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-01 11:51:09'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-01 11:51:09'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-01 11:51:09');

/*Table structure for table `zhanpin` */

DROP TABLE IF EXISTS `zhanpin`;

CREATE TABLE `zhanpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `bowuguan_id` int(11) DEFAULT NULL COMMENT '博物馆',
  `zhanpin_name` varchar(200) DEFAULT NULL COMMENT '展品名称  Search111 ',
  `zhanpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '展品编号',
  `zhanpin_photo` varchar(200) DEFAULT NULL COMMENT '展品照片',
  `zhanpin_chuchu` varchar(200) DEFAULT NULL COMMENT '展品出处',
  `zhanpin_content` text COMMENT '展品介绍 ',
  `jieru_time` timestamp NULL DEFAULT NULL COMMENT '展品借入时间',
  `yanghu_time` timestamp NULL DEFAULT NULL COMMENT '展品养护时间',
  `zhanpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='展品';

/*Data for the table `zhanpin` */

insert  into `zhanpin`(`id`,`bowuguan_id`,`zhanpin_name`,`zhanpin_uuid_number`,`zhanpin_photo`,`zhanpin_chuchu`,`zhanpin_content`,`jieru_time`,`yanghu_time`,`zhanpin_delete`,`insert_time`,`create_time`) values (1,1,'展品名称1','1677642669535','upload/zhanpin1.jpg','展品出处1','展品介绍1','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(2,2,'展品名称2','1677642669512','upload/zhanpin2.jpg','展品出处2','展品介绍2','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(3,3,'展品名称3','1677642669503','upload/zhanpin3.jpg','展品出处3','展品介绍3','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(4,4,'展品名称4','1677642669546','upload/zhanpin4.jpg','展品出处4','展品介绍4','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(5,5,'展品名称5','1677642669555','upload/zhanpin5.jpg','展品出处5','展品介绍5','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(6,6,'展品名称6','1677642669479','upload/zhanpin6.jpg','展品出处6','展品介绍6','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(7,7,'展品名称7','1677642669482','upload/zhanpin7.jpg','展品出处7','展品介绍7','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(8,8,'展品名称8','1677642669534','upload/zhanpin8.jpg','展品出处8','展品介绍8','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(9,9,'展品名称9','1677642669495','upload/zhanpin9.jpg','展品出处9','展品介绍9','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(10,10,'展品名称10','1677642669548','upload/zhanpin10.jpg','展品出处10','展品介绍10','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(11,11,'展品名称11','1677642669507','upload/zhanpin11.jpg','展品出处11','展品介绍11','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(12,12,'展品名称12','1677642669465','upload/zhanpin12.jpg','展品出处12','展品介绍12','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(13,13,'展品名称13','1677642669556','upload/zhanpin13.jpg','展品出处13','展品介绍13','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09'),(14,14,'展品名称14','1677642669463','upload/zhanpin14.jpg','展品出处14','展品介绍14','2023-03-01 11:51:09','2023-03-01 11:51:09',1,'2023-03-01 11:51:09','2023-03-01 11:51:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
