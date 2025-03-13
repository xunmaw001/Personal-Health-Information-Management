-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmcs7b8
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611305982022 DEFAULT CHARSET=utf8 COMMENT='健康咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-22 08:52:36',1,1,'提问1','回复1',1),(82,'2021-01-22 08:52:36',2,2,'提问2','回复2',2),(83,'2021-01-22 08:52:36',3,3,'提问3','回复3',3),(84,'2021-01-22 08:52:36',4,4,'提问4','回复4',4),(85,'2021-01-22 08:52:36',5,5,'提问5','回复5',5),(86,'2021-01-22 08:52:36',6,6,'提问6','回复6',6),(1611305982021,'2021-01-22 08:59:42',1611305958717,NULL,'咨询',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmcs7b8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmcs7b8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmcs7b8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiankangzhishi`
--

DROP TABLE IF EXISTS `discussjiankangzhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiankangzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='健康知识评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiankangzhishi`
--

LOCK TABLES `discussjiankangzhishi` WRITE;
/*!40000 ALTER TABLE `discussjiankangzhishi` DISABLE KEYS */;
INSERT INTO `discussjiankangzhishi` VALUES (111,'2021-01-22 08:52:36',1,1,'评论内容1','回复内容1'),(112,'2021-01-22 08:52:36',2,2,'评论内容2','回复内容2'),(113,'2021-01-22 08:52:36',3,3,'评论内容3','回复内容3'),(114,'2021-01-22 08:52:36',4,4,'评论内容4','回复内容4'),(115,'2021-01-22 08:52:36',5,5,'评论内容5','回复内容5'),(116,'2021-01-22 08:52:36',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussjiankangzhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangpinggu`
--

DROP TABLE IF EXISTS `jiankangpinggu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangpinggu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `zhenduanbaogao` longtext COMMENT '诊断报告',
  `shujufenxi` longtext COMMENT '数据分析',
  `dengjiriqi` datetime DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='健康评估';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangpinggu`
--

LOCK TABLES `jiankangpinggu` WRITE;
/*!40000 ALTER TABLE `jiankangpinggu` DISABLE KEYS */;
INSERT INTO `jiankangpinggu` VALUES (61,'2021-01-22 08:52:36','账号1','姓名1','','健康','诊断报告1','数据分析1','2021-01-22 16:52:36'),(62,'2021-01-22 08:52:36','账号2','姓名2','','健康','诊断报告2','数据分析2','2021-01-22 16:52:36'),(63,'2021-01-22 08:52:36','账号3','姓名3','','健康','诊断报告3','数据分析3','2021-01-22 16:52:36'),(64,'2021-01-22 08:52:36','账号4','姓名4','','健康','诊断报告4','数据分析4','2021-01-22 16:52:36'),(65,'2021-01-22 08:52:36','账号5','姓名5','','健康','诊断报告5','数据分析5','2021-01-22 16:52:36'),(66,'2021-01-22 08:52:36','账号6','姓名6','','健康','诊断报告6','数据分析6','2021-01-22 16:52:36');
/*!40000 ALTER TABLE `jiankangpinggu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangxinxi`
--

DROP TABLE IF EXISTS `jiankangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `yaowei` varchar(200) DEFAULT NULL COMMENT '腰围',
  `xueya` varchar(200) DEFAULT NULL COMMENT '血压',
  `xinlv` varchar(200) DEFAULT NULL COMMENT '心率',
  `gengxin` datetime DEFAULT NULL COMMENT '更新',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='健康信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangxinxi`
--

LOCK TABLES `jiankangxinxi` WRITE;
/*!40000 ALTER TABLE `jiankangxinxi` DISABLE KEYS */;
INSERT INTO `jiankangxinxi` VALUES (51,'2021-01-22 08:52:36','账号1','姓名1','性别1','年龄1','体重1','腰围1','血压1','心率1','2021-01-22 16:52:36'),(52,'2021-01-22 08:52:36','账号2','姓名2','性别2','年龄2','体重2','腰围2','血压2','心率2','2021-01-22 16:52:36'),(53,'2021-01-22 08:52:36','账号3','姓名3','性别3','年龄3','体重3','腰围3','血压3','心率3','2021-01-22 16:52:36'),(54,'2021-01-22 08:52:36','账号4','姓名4','性别4','年龄4','体重4','腰围4','血压4','心率4','2021-01-22 16:52:36'),(55,'2021-01-22 08:52:36','账号5','姓名5','性别5','年龄5','体重5','腰围5','血压5','心率5','2021-01-22 16:52:36'),(56,'2021-01-22 08:52:36','账号6','姓名6','性别6','年龄6','体重6','腰围6','血压6','心率6','2021-01-22 16:52:36');
/*!40000 ALTER TABLE `jiankangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangzhishi`
--

DROP TABLE IF EXISTS `jiankangzhishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangzhishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `neirong` longtext COMMENT '内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='健康知识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangzhishi`
--

LOCK TABLES `jiankangzhishi` WRITE;
/*!40000 ALTER TABLE `jiankangzhishi` DISABLE KEYS */;
INSERT INTO `jiankangzhishi` VALUES (71,'2021-01-22 08:52:36','标题1','健康指南','http://localhost:8080/ssmcs7b8/upload/jiankangzhishi_fengmian1.jpg','2021-01-22','内容1',1,1),(72,'2021-01-22 08:52:36','标题2','健康指南','http://localhost:8080/ssmcs7b8/upload/jiankangzhishi_fengmian2.jpg','2021-01-22','内容2',2,2),(73,'2021-01-22 08:52:36','标题3','健康指南','http://localhost:8080/ssmcs7b8/upload/jiankangzhishi_fengmian3.jpg','2021-01-22','内容3',3,3),(74,'2021-01-22 08:52:36','标题4','健康指南','http://localhost:8080/ssmcs7b8/upload/jiankangzhishi_fengmian4.jpg','2021-01-22','内容4',4,4),(75,'2021-01-22 08:52:36','标题5','健康指南','http://localhost:8080/ssmcs7b8/upload/jiankangzhishi_fengmian5.jpg','2021-01-22','内容5',5,5),(76,'2021-01-22 08:52:36','标题6','健康指南','http://localhost:8080/ssmcs7b8/upload/jiankangzhishi_fengmian6.jpg','2021-01-22','内容6',6,6);
/*!40000 ALTER TABLE `jiankangzhishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-01-22 08:52:36','标题1','简介1','http://localhost:8080/ssmcs7b8/upload/news_picture1.jpg','内容1'),(102,'2021-01-22 08:52:36','标题2','简介2','http://localhost:8080/ssmcs7b8/upload/news_picture2.jpg','内容2'),(103,'2021-01-22 08:52:36','标题3','简介3','http://localhost:8080/ssmcs7b8/upload/news_picture3.jpg','内容3'),(104,'2021-01-22 08:52:36','标题4','简介4','http://localhost:8080/ssmcs7b8/upload/news_picture4.jpg','内容4'),(105,'2021-01-22 08:52:36','标题5','简介5','http://localhost:8080/ssmcs7b8/upload/news_picture5.jpg','内容5'),(106,'2021-01-22 08:52:36','标题6','简介6','http://localhost:8080/ssmcs7b8/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1611305958717,'001','yonghu','用户','2pgl80rqa1vednryx2b9vpgdbeobjr8p','2021-01-22 08:59:24','2021-01-22 09:59:24'),(2,1611306036462,'001','yishi','管理员','0gzj2xxeopg7mu8njl4qqlmzxv3gl53z','2021-01-22 09:00:41','2021-01-22 10:00:42');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-22 08:52:36');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yinshijilu`
--

DROP TABLE IF EXISTS `yinshijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yinshijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shanshi` longtext COMMENT '膳食',
  `sheruliang` varchar(200) DEFAULT NULL COMMENT '摄入量',
  `jilu` date DEFAULT NULL COMMENT '记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611305996320 DEFAULT CHARSET=utf8 COMMENT='饮食记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yinshijilu`
--

LOCK TABLES `yinshijilu` WRITE;
/*!40000 ALTER TABLE `yinshijilu` DISABLE KEYS */;
INSERT INTO `yinshijilu` VALUES (31,'2021-01-22 08:52:36','账号1','姓名1','早餐','膳食1','摄入量1','2021-01-22'),(32,'2021-01-22 08:52:36','账号2','姓名2','早餐','膳食2','摄入量2','2021-01-22'),(33,'2021-01-22 08:52:36','账号3','姓名3','早餐','膳食3','摄入量3','2021-01-22'),(34,'2021-01-22 08:52:36','账号4','姓名4','早餐','膳食4','摄入量4','2021-01-22'),(35,'2021-01-22 08:52:36','账号5','姓名5','早餐','膳食5','摄入量5','2021-01-22'),(36,'2021-01-22 08:52:36','账号6','姓名6','早餐','膳食6','摄入量6','2021-01-22'),(1611305996319,'2021-01-22 08:59:56','001','张三','早餐','测试','20','2021-01-22');
/*!40000 ALTER TABLE `yinshijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yishi`
--

DROP TABLE IF EXISTS `yishi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yishi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yisheng` varchar(200) NOT NULL COMMENT '医生',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611306036463 DEFAULT CHARSET=utf8 COMMENT='医师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yishi`
--

LOCK TABLES `yishi` WRITE;
/*!40000 ALTER TABLE `yishi` DISABLE KEYS */;
INSERT INTO `yishi` VALUES (21,'2021-01-22 08:52:36','医师1','123456','医生1','医师','男',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmcs7b8/upload/yishi_zhaopian1.jpg'),(22,'2021-01-22 08:52:36','医师2','123456','医生2','医师','男',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmcs7b8/upload/yishi_zhaopian2.jpg'),(23,'2021-01-22 08:52:36','医师3','123456','医生3','医师','男',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmcs7b8/upload/yishi_zhaopian3.jpg'),(24,'2021-01-22 08:52:36','医师4','123456','医生4','医师','男',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmcs7b8/upload/yishi_zhaopian4.jpg'),(25,'2021-01-22 08:52:36','医师5','123456','医生5','医师','男',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmcs7b8/upload/yishi_zhaopian5.jpg'),(26,'2021-01-22 08:52:36','医师6','123456','医生6','医师','男',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmcs7b8/upload/yishi_zhaopian6.jpg'),(1611306036462,'2021-01-22 09:00:36','001','001','李四',NULL,NULL,23,'13800000000','123@qq.com','441400000000000000',NULL);
/*!40000 ALTER TABLE `yishi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611305958718 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-22 08:52:36','用户1','123456','姓名1','男','身高1','体重1',1,'13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmcs7b8/upload/yonghu_zhaopian1.jpg'),(12,'2021-01-22 08:52:36','用户2','123456','姓名2','男','身高2','体重2',2,'13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmcs7b8/upload/yonghu_zhaopian2.jpg'),(13,'2021-01-22 08:52:36','用户3','123456','姓名3','男','身高3','体重3',3,'13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmcs7b8/upload/yonghu_zhaopian3.jpg'),(14,'2021-01-22 08:52:36','用户4','123456','姓名4','男','身高4','体重4',4,'13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmcs7b8/upload/yonghu_zhaopian4.jpg'),(15,'2021-01-22 08:52:36','用户5','123456','姓名5','男','身高5','体重5',5,'13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmcs7b8/upload/yonghu_zhaopian5.jpg'),(16,'2021-01-22 08:52:36','用户6','123456','姓名6','男','身高6','体重6',6,'13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmcs7b8/upload/yonghu_zhaopian6.jpg'),(1611305958717,'2021-01-22 08:59:18','001','001','张三',NULL,'162','65',23,'13800000000','123@qq.com','441400000000000000',NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yundongjilu`
--

DROP TABLE IF EXISTS `yundongjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yundongjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yundong` varchar(200) DEFAULT NULL COMMENT '运动',
  `shizhang` varchar(200) DEFAULT NULL COMMENT '时长',
  `xiaohao` varchar(200) DEFAULT NULL COMMENT '消耗',
  `jilu` date DEFAULT NULL COMMENT '记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='运动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yundongjilu`
--

LOCK TABLES `yundongjilu` WRITE;
/*!40000 ALTER TABLE `yundongjilu` DISABLE KEYS */;
INSERT INTO `yundongjilu` VALUES (41,'2021-01-22 08:52:36','账号1','姓名1','有氧运动','运动1','时长1','消耗1','2021-01-22'),(42,'2021-01-22 08:52:36','账号2','姓名2','有氧运动','运动2','时长2','消耗2','2021-01-22'),(43,'2021-01-22 08:52:36','账号3','姓名3','有氧运动','运动3','时长3','消耗3','2021-01-22'),(44,'2021-01-22 08:52:36','账号4','姓名4','有氧运动','运动4','时长4','消耗4','2021-01-22'),(45,'2021-01-22 08:52:36','账号5','姓名5','有氧运动','运动5','时长5','消耗5','2021-01-22'),(46,'2021-01-22 08:52:36','账号6','姓名6','有氧运动','运动6','时长6','消耗6','2021-01-22');
/*!40000 ALTER TABLE `yundongjilu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-23 10:21:31
