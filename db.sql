/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - biyeshejichengjiguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`biyeshejichengjiguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `biyeshejichengjiguanli`;

/*Table structure for table `biyeluenwen` */

DROP TABLE IF EXISTS `biyeluenwen`;

CREATE TABLE `biyeluenwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhonggaoshenhe_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `zhonggaoshenhe_file` varchar(200) DEFAULT NULL COMMENT '论文文件',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `biyeluenwen_yesno_types` int(11) DEFAULT NULL COMMENT '打分状态 Search111',
  `biyeluenwen_num` int(11) DEFAULT NULL COMMENT '现阶段分数',
  `biyeluenwen_yesno_text` text COMMENT '评语',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='毕业论文';

/*Data for the table `biyeluenwen` */

insert  into `biyeluenwen`(`id`,`zhonggaoshenhe_name`,`zhonggaoshenhe_file`,`yonghu_id`,`biyeluenwen_yesno_types`,`biyeluenwen_num`,`biyeluenwen_yesno_text`,`create_time`) values (1,'标题1','http://localhost:8080/biyeshejichengjiguanli/upload/1650856729638.rar',1,5,200,'最终得分','2022-04-25 10:38:44'),(2,'标题2','http://localhost:8080/biyeshejichengjiguanli/upload/file.rar',2,1,0,NULL,'2022-04-25 10:38:44'),(3,'标题3','http://localhost:8080/biyeshejichengjiguanli/upload/file.rar',3,1,0,NULL,'2022-04-25 10:38:44');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dabianmishu` */

DROP TABLE IF EXISTS `dabianmishu`;

CREATE TABLE `dabianmishu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `dabianmishu_name` varchar(200) DEFAULT NULL COMMENT '答辩秘书姓名 Search111 ',
  `dabianmishu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `dabianmishu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `dabianmishu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='答辩秘书';

/*Data for the table `dabianmishu` */

insert  into `dabianmishu`(`id`,`username`,`password`,`dabianmishu_name`,`dabianmishu_photo`,`sex_types`,`dabianmishu_phone`,`dabianmishu_email`,`insert_time`,`create_time`) values (1,'a1','123456','答辩秘书姓名1','http://localhost:8080/biyeshejichengjiguanli/upload/dabianmishu1.jpg',2,'17703786901','1@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44'),(2,'a2','123456','答辩秘书姓名2','http://localhost:8080/biyeshejichengjiguanli/upload/dabianmishu2.jpg',1,'17703786902','2@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44'),(3,'a3','123456','答辩秘书姓名3','http://localhost:8080/biyeshejichengjiguanli/upload/dabianmishu3.jpg',1,'17703786903','3@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'biyeluenwen_yesno_types','打分状态',1,'指导教师审核中',NULL,NULL,'2022-04-25 10:33:03'),(2,'biyeluenwen_yesno_types','打分状态',2,'指导教师审核通过',NULL,NULL,'2022-04-25 10:33:03'),(3,'biyeluenwen_yesno_types','打分状态',3,'指导教师审核拒绝',NULL,NULL,'2022-04-25 10:33:03'),(4,'biyeluenwen_yesno_types','打分状态',4,'评阅教师已评分',NULL,NULL,'2022-04-25 10:33:03'),(5,'biyeluenwen_yesno_types','打分状态',5,'最终答辩成绩',NULL,NULL,'2022-04-25 10:33:03'),(6,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-25 10:33:03'),(7,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-25 10:33:03'),(8,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-25 10:33:03'),(9,'sex_types','性别',1,'男',NULL,NULL,'2022-04-25 10:33:03'),(10,'sex_types','性别',2,'女',NULL,NULL,'2022-04-25 10:33:03'),(11,'xueke_types','专业',1,'专业1',NULL,NULL,'2022-04-25 10:33:03'),(12,'xueke_types','专业',2,'专业2',NULL,NULL,'2022-04-25 10:33:03'),(13,'banji_types','班级',1,'班级1',NULL,NULL,'2022-04-25 10:33:03'),(14,'banji_types','班级',2,'班级2',NULL,NULL,'2022-04-25 10:33:03');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/biyeshejichengjiguanli/upload/news1.jpg','2022-04-25 10:38:44','公告详情1','2022-04-25 10:38:44'),(2,'公告标题2',3,'http://localhost:8080/biyeshejichengjiguanli/upload/news2.jpg','2022-04-25 10:38:44','公告详情2','2022-04-25 10:38:44'),(3,'公告标题3',1,'http://localhost:8080/biyeshejichengjiguanli/upload/news3.jpg','2022-04-25 10:38:44','公告详情3','2022-04-25 10:38:44'),(4,'公告标题4',1,'http://localhost:8080/biyeshejichengjiguanli/upload/news4.jpg','2022-04-25 10:38:44','公告详情4','2022-04-25 10:38:44'),(5,'公告标题5',2,'http://localhost:8080/biyeshejichengjiguanli/upload/news5.jpg','2022-04-25 10:38:44','公告详情5','2022-04-25 10:38:44');

/*Table structure for table `pingyuejiaoshi` */

DROP TABLE IF EXISTS `pingyuejiaoshi`;

CREATE TABLE `pingyuejiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `pingyuejiaoshi_name` varchar(200) DEFAULT NULL COMMENT '评阅教师姓名 Search111 ',
  `pingyuejiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `pingyuejiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `pingyuejiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='评阅教师';

/*Data for the table `pingyuejiaoshi` */

insert  into `pingyuejiaoshi`(`id`,`username`,`password`,`pingyuejiaoshi_name`,`pingyuejiaoshi_photo`,`sex_types`,`pingyuejiaoshi_phone`,`pingyuejiaoshi_email`,`insert_time`,`create_time`) values (1,'a1','123456','评阅教师姓名1','http://localhost:8080/biyeshejichengjiguanli/upload/pingyuejiaoshi1.jpg',1,'17703786901','1@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44'),(2,'a2','123456','评阅教师姓名2','http://localhost:8080/biyeshejichengjiguanli/upload/pingyuejiaoshi2.jpg',2,'17703786902','2@qq.com','2022-04-25 11:22:00','2022-04-25 10:38:44'),(3,'a3','123456','评阅教师姓名3','http://localhost:8080/biyeshejichengjiguanli/upload/pingyuejiaoshi3.jpg',1,'17703786903','3@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','3bhwx9uk9ypprv6i90effcw44ubftbyv','2022-04-25 10:45:53','2022-04-25 12:21:40'),(2,1,'a1','yonghu','用户','1jhn70qzdsymw8uwyyz5o91ruuhwr2hg','2022-04-25 10:53:20','2022-04-25 12:21:30'),(3,1,'a1','zhidaojiaoshi','指导教师','kttxvxyesksjw1a8baml5at3iuhx2f7d','2022-04-25 10:53:59','2022-04-25 12:19:27'),(4,1,'a1','pingyuejiaoshi','评阅教师','w8ffoadeo5jbcytcel00bnozke4jowdx','2022-04-25 11:00:01','2022-04-25 12:20:03'),(5,1,'a1','dabianmishu','答辩秘书','2a5bbbmgxzpf3ewdy28fj7angrnl3i21','2022-04-25 11:03:39','2022-04-25 12:20:56');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(255) DEFAULT NULL COMMENT '学号 Search111',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xueke_types` int(11) DEFAULT NULL COMMENT '专业 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_uuid_number`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`xueke_types`,`banji_types`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'16508543243191','a1','123456','用户姓名1','http://localhost:8080/biyeshejichengjiguanli/upload/yonghu1.jpg',2,'17703786901','1@qq.com',2,2,1,'2022-04-25 10:38:44','2022-04-25 10:38:44'),(2,'165085432431936','a2','123456','用户姓名2','http://localhost:8080/biyeshejichengjiguanli/upload/yonghu2.jpg',1,'17703786902','2@qq.com',2,1,1,'2022-04-25 10:38:44','2022-04-25 10:38:44'),(3,'165085432431917','a3','123456','用户姓名3','http://localhost:8080/biyeshejichengjiguanli/upload/yonghu3.jpg',1,'17703786903','3@qq.com',2,1,1,'2022-04-25 10:38:44','2022-04-25 10:38:44');

/*Table structure for table `zhidaojiaoshi` */

DROP TABLE IF EXISTS `zhidaojiaoshi`;

CREATE TABLE `zhidaojiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhidaojiaoshi_name` varchar(200) DEFAULT NULL COMMENT '指导教师姓名 Search111 ',
  `zhidaojiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `zhidaojiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `zhidaojiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='指导教师';

/*Data for the table `zhidaojiaoshi` */

insert  into `zhidaojiaoshi`(`id`,`username`,`password`,`zhidaojiaoshi_name`,`zhidaojiaoshi_photo`,`sex_types`,`zhidaojiaoshi_phone`,`zhidaojiaoshi_email`,`insert_time`,`create_time`) values (1,'a1','123456','指导教师姓名1','http://localhost:8080/biyeshejichengjiguanli/upload/zhidaojiaoshi1.jpg',2,'17703786901','1@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44'),(2,'a2','123456','指导教师姓名2','http://localhost:8080/biyeshejichengjiguanli/upload/zhidaojiaoshi2.jpg',2,'17703786902','2@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44'),(3,'a3','123456','指导教师姓名3','http://localhost:8080/biyeshejichengjiguanli/upload/zhidaojiaoshi3.jpg',1,'17703786903','3@qq.com','2022-04-25 10:38:44','2022-04-25 10:38:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
