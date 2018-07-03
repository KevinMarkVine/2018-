/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.32-log : Database - news
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`news` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `news`;

/*Table structure for table `news_category` */

DROP TABLE IF EXISTS `news_category`;

CREATE TABLE `news_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='新闻分类表';

/*Data for the table `news_category` */

insert  into `news_category`(`id`,`name`,`createDate`) values (1,'国内','2014-09-16 14:41:24'),(2,'国际','2014-09-16 14:42:58'),(3,'娱乐','2014-09-16 14:42:58'),(4,'军事','2014-09-16 14:42:58'),(5,'财经','2014-09-16 14:42:58'),(6,'天气','2014-09-16 14:42:58');

/*Table structure for table `news_comment` */

DROP TABLE IF EXISTS `news_comment`;

CREATE TABLE `news_comment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `newsId` bigint(10) DEFAULT NULL COMMENT '评论新闻id',
  `content` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论内容',
  `author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论者',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论ip',
  `createDate` datetime DEFAULT NULL COMMENT '发表时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='新闻评论表';

/*Data for the table `news_comment` */

/*Table structure for table `news_detail` */

DROP TABLE IF EXISTS `news_detail`;

CREATE TABLE `news_detail` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `categoryId` bigint(10) DEFAULT NULL COMMENT '新闻类别id',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新闻标题',
  `summary` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新闻摘要',
  `content` text COLLATE utf8_unicode_ci COMMENT '新闻内容',
  `picPath` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新闻图片路径',
  `author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发表者',
  `createDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='新闻明细表';

/*Data for the table `news_detail` */

insert  into `news_detail`(`id`,`categoryId`,`title`,`summary`,`content`,`picPath`,`author`,`createDate`,`modifyDate`) values (1,2,'尼日利亚一架客机坠毁','尼日利亚一架客机坠毁，伤亡惨重','尼日利亚一架客机坠毁，伤亡惨重,10人重伤','','admin','2014-09-16 14:43:53','2014-09-16 14:43:53'),(2,1,'谈北京精神','北京是一座拥有灿烂文明的古城','北京是一座拥有灿烂文明的古城，厚重的历史积淀，涵育了辉煌的北京文化。而这种融贯北京万众情怀、铸造北京城市特质、传沿北京文化基因、孕育北京创新灵魂的文化精髓，就是北京精神。侯仁之先生在谈到北京的城市建设时曾经提到过3个里程碑：紫禁城，天安门广场和国家奥林匹克体育中心、亚运村。侯先生认为，紫禁城是封建社会宫殿建筑中最有代表性的一组建筑群，是历史上封建皇权统治的中心，无论在文化上还是古迹上都举世闻名。新中国把天安门广场这样一个旧时代的宫廷广场，改造成人民的广场，给北京带来了一个全新的景象，这在北京城市建设发展史上具有重要意义。国家奥林匹克体育中心和亚运村的建设是对北京城传统中轴线的延伸，代表着北京走向国际、走向世界。北京的城市建设和建筑是与民族的兴衰联系在一起的，就像北京的中轴线，从北京厚重的历史中出发，奔向充满光明、充满希望的未来，奔向广阔的世界、无垠的宇宙。北京有着3000多年的建城史，800多年的建都史。从西周时期到辽金时期，北京作为地方首府，城市的中心点和中轴线不断改变。直到元代，蒙古铁骑扫荡了华夏四方，北京才真正成为全国的政治中心，中轴线也确定下来。中轴线在北京城市规划上具有重要意义，它就像一条奔涌着民族血液的动脉，为我们的民族、我们的国家、我们的北京时刻输送着营养和活力。中轴线凝聚了北京人民的爱国情怀，显示了北京的宽容、厚重与博大，也体现了北京的吸纳与创新。纵观世界，多少历史古城在浩瀚的风云中固守而亡，而北京几经磨难，依然能迈着豪迈的步伐，坚定自信地向充满希望的未来走去，我们不能不为北京的吸纳与创新而自豪！ ',NULL,'admin','2014-09-16 14:43:53','2014-09-16 14:43:53');

/*Table structure for table `news_user` */

DROP TABLE IF EXISTS `news_user`;

CREATE TABLE `news_user` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email',
  `userType` int(5) DEFAULT NULL COMMENT '用户类型  0：管理员 1：普通用户',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `news_user` */

insert  into `news_user`(`id`,`userName`,`password`,`email`,`userType`) values (1,'admin','admin','admin@bdqn.cn',0),(2,'user','user','user@bdqn.cn',1),(3,'test','test','test@bdqn.cn',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
