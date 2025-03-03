/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - fanzhapingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fanzhapingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fanzhapingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/fanzhapingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/fanzhapingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/fanzhapingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'fanzhashipin_types','视频类型',1,'视频类型1',NULL,NULL,'2022-02-16 20:13:40'),(66,'fanzhashipin_types','视频类型',2,'视频类型2',NULL,NULL,'2022-02-16 20:13:40'),(67,'fanzhashipin_types','视频类型',3,'视频类型3',NULL,NULL,'2022-02-16 20:13:40'),(68,'fanzhashipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-16 20:13:40'),(69,'fanzhashipin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2022-02-16 20:13:40'),(70,'fanzhashipin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2022-02-16 20:13:40'),(71,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-16 20:13:40'),(72,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-16 20:13:40'),(73,'news_types','案例分析类型',1,'案例分析类型1',NULL,NULL,'2022-02-16 20:13:40'),(74,'news_types','案例分析类型',2,'案例分析类型2',NULL,NULL,'2022-02-16 20:13:40'),(75,'news_types','案例分析类型',3,'案例分析类型3',NULL,NULL,'2022-02-16 20:13:40'),(76,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-02-16 20:13:40'),(77,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-02-16 20:13:40');

/*Table structure for table `fanzhashipin` */

DROP TABLE IF EXISTS `fanzhashipin`;

CREATE TABLE `fanzhashipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fanzhashipin_name` varchar(200) DEFAULT NULL COMMENT '视频标题 Search111 ',
  `fanzhashipin_types` int(11) DEFAULT NULL COMMENT '视频类型 Search111',
  `fanzhashipin_photo` varchar(200) DEFAULT NULL COMMENT '视频封面',
  `fanzhashipin_video` varchar(255) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT '0' COMMENT '赞',
  `cai_number` int(11) DEFAULT '0' COMMENT '踩',
  `fanzhashipin_content` text COMMENT '项目详情',
  `fanzhashipin_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='反诈视频';

/*Data for the table `fanzhashipin` */

insert  into `fanzhashipin`(`id`,`fanzhashipin_name`,`fanzhashipin_types`,`fanzhashipin_photo`,`fanzhashipin_video`,`zan_number`,`cai_number`,`fanzhashipin_content`,`fanzhashipin_delete`,`create_time`) values (1,'视频标题1',2,'http://localhost:8080/fanzhapingtai/upload/1645015389712.jpg','http://localhost:8080/fanzhapingtai/upload/1645015848357.mp4',307,377,'<p>项目详情1</p>',1,'2022-02-16 20:14:40'),(2,'视频标题2',2,'http://localhost:8080/fanzhapingtai/upload/1645015381926.jpg','http://localhost:8080/fanzhapingtai/upload/1645015840641.mp4',488,121,'<p>项目详情2</p>',1,'2022-02-16 20:14:40'),(3,'视频标题3',3,'http://localhost:8080/fanzhapingtai/upload/1645015375027.jpg','http://localhost:8080/fanzhapingtai/upload/1645015831353.mp4',175,117,'<p>项目详情3</p>',1,'2022-02-16 20:14:40'),(4,'视频标题4',3,'http://localhost:8080/fanzhapingtai/upload/1645015366107.jpg','http://localhost:8080/fanzhapingtai/upload/1645015821535.mp4',40,138,'<p>项目详情4</p>',1,'2022-02-16 20:14:40');

/*Table structure for table `fanzhashipin_collection` */

DROP TABLE IF EXISTS `fanzhashipin_collection`;

CREATE TABLE `fanzhashipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fanzhashipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fanzhashipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='预约项目收藏';

/*Data for the table `fanzhashipin_collection` */

insert  into `fanzhashipin_collection`(`id`,`fanzhashipin_id`,`yonghu_id`,`fanzhashipin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-02-16 20:14:40','2022-02-16 20:14:40'),(3,3,3,1,'2022-02-16 20:14:40','2022-02-16 20:14:40'),(4,4,1,1,'2022-02-16 20:14:40','2022-02-16 20:14:40'),(15,3,1,1,'2022-02-16 20:57:42','2022-02-16 20:57:42');

/*Table structure for table `fanzhashipin_liuyan` */

DROP TABLE IF EXISTS `fanzhashipin_liuyan`;

CREATE TABLE `fanzhashipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fanzhashipin_id` int(11) DEFAULT NULL COMMENT '视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fanzhashipin_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='视频留言';

/*Data for the table `fanzhashipin_liuyan` */

insert  into `fanzhashipin_liuyan`(`id`,`fanzhashipin_id`,`yonghu_id`,`fanzhashipin_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'留言内容1','回复信息1','2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(2,2,2,'留言内容2','回复信息2','2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(3,3,2,'留言内容3','回复信息3','2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(4,4,2,'留言内容4','回复信息4','2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(12,4,1,'用户留言后管理可以回复','管理回复','2022-02-16 20:56:53','2022-02-16 20:59:45','2022-02-16 20:14:40');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(4,'帖子标题4',3,NULL,'发布内容4',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(6,'帖子标题6',2,NULL,'发布内容6',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(7,'帖子标题7',1,NULL,'发布内容7',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(8,'帖子标题8',3,NULL,'发布内容8',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(9,'帖子标题9',3,NULL,'发布内容9',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(10,'帖子标题10',3,NULL,'发布内容10',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(11,'帖子标题11',1,NULL,'发布内容11',NULL,1,'2022-02-16 20:14:40','2022-02-16 20:14:40','2022-02-16 20:14:40'),(12,NULL,1,NULL,'用户评论',11,2,'2022-02-16 20:57:19',NULL,'2022-02-16 20:57:19'),(13,NULL,NULL,1,'管理评论',11,2,'2022-02-16 21:00:02',NULL,'2022-02-16 21:00:02');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '案例分析标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '案例分析类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '案例分析图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '案例分析时间',
  `news_content` text COMMENT '案例分析详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='案例分析';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'案例分析标题1',3,'http://localhost:8080/fanzhapingtai/upload/1645015505383.jpg','2022-02-16 20:14:40','<p>案例分析详情1</p>',1,'2022-02-16 20:14:40'),(2,'案例分析标题2',1,'http://localhost:8080/fanzhapingtai/upload/1645015497762.jpg','2022-02-16 20:14:40','<p>案例分析详情2</p>',1,'2022-02-16 20:14:40'),(3,'案例分析标题3',3,'http://localhost:8080/fanzhapingtai/upload/1645015490558.jpg','2022-02-16 20:14:40','<p>案例分析详情3</p>',1,'2022-02-16 20:14:40'),(4,'案例分析标题4',3,'http://localhost:8080/fanzhapingtai/upload/1645015482516.webp','2022-02-16 20:14:40','<p>案例分析详情4</p>',1,'2022-02-16 20:14:40'),(5,'案例分析标题5',1,'http://localhost:8080/fanzhapingtai/upload/1645015474891.jpg','2022-02-16 20:14:40','<p>案例分析详情5</p>',1,'2022-02-16 20:14:40'),(6,'案例分析标题6',2,'http://localhost:8080/fanzhapingtai/upload/1645015467190.jpg','2022-02-16 20:14:40','<p>案例分析详情6</p>',1,'2022-02-16 20:14:40');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','81qnvcp4thagqujivvithont4ep7b2h2','2022-02-16 20:39:44','2022-02-16 22:09:38'),(2,1,'a1','yonghu','用户','z48nm8uc36f3pmui7mg15hs4tttifu8c','2022-02-16 20:53:17','2022-02-16 22:00:25');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'410224199610232001','17703786901','http://localhost:8080/fanzhapingtai/upload/1645015428141.jpg',1,'2022-02-16 20:14:40'),(2,'a2','123456','用户姓名2',1,'410224199610232002','17703786902','http://localhost:8080/fanzhapingtai/upload/1645015420937.jpg',1,'2022-02-16 20:14:40'),(3,'a3','123456','用户姓名3',2,'410224199610232003','17703786903','http://localhost:8080/fanzhapingtai/upload/1645015413843.webp',1,'2022-02-16 20:14:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
