-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: fecshop_trace
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advertise_id` varchar(50) DEFAULT NULL COMMENT '广告id',
  `fec_source` varchar(50) DEFAULT NULL COMMENT '渠道',
  `fec_medium` varchar(50) DEFAULT NULL COMMENT '子渠道',
  `fec_campaign` varchar(50) DEFAULT NULL COMMENT '活动',
  `fec_content` varchar(50) DEFAULT NULL COMMENT '员工',
  `fec_design` varchar(50) DEFAULT NULL COMMENT '美工',
  `url` varchar(255) DEFAULT NULL COMMENT '原始的推广url',
  `advertise_cost` decimal(12,2) DEFAULT NULL COMMENT '广告花费',
  `remark` varchar(255) DEFAULT NULL COMMENT '广告备注',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建user id',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  `advertise_begin_date` int(20) DEFAULT NULL COMMENT '广告预计开始时间',
  `market_group` int(20) DEFAULT NULL COMMENT '创建人所属的广告小组',
  `own_id` int(20) DEFAULT NULL COMMENT '拥有者，也就是common admin id',
  `advertise_url` varchar(500) DEFAULT NULL COMMENT '按照各个参数生成后的广告url',
  PRIMARY KEY (`id`),
  KEY `fec_source` (`fec_source`,`own_id`),
  KEY `fec_medium` (`fec_medium`,`own_id`),
  KEY `advertise_id` (`advertise_id`),
  KEY `advertise_id_2` (`advertise_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertise`
--

LOCK TABLES `advertise` WRITE;
/*!40000 ALTER TABLE `advertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_channel_info`
--

DROP TABLE IF EXISTS `base_channel_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_channel_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT '拥有者id',
  `channel` varchar(150) DEFAULT NULL COMMENT '渠道名称',
  `channel_child` varchar(150) DEFAULT NULL COMMENT '子渠道名称',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT '更新时间',
  `status` int(5) DEFAULT NULL COMMENT '状态，1代表激活，2代表关闭',
  PRIMARY KEY (`id`),
  UNIQUE KEY `own_id` (`own_id`,`channel`,`channel_child`),
  KEY `owner_id` (`own_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_channel_info`
--

LOCK TABLES `base_channel_info` WRITE;
/*!40000 ALTER TABLE `base_channel_info` DISABLE KEYS */;
INSERT INTO `base_channel_info` VALUES (3,93,'Facebook','PPC',15,1522296453,1525925761,NULL),(5,93,'Google','Adwords',15,1522296486,1522296486,NULL),(6,93,'Facebook','Adwords',93,1525924954,1525924954,NULL),(7,93,'Facebook','Share',93,1525924970,1525924970,NULL),(10,93,'Facebook','Click',93,1525925751,1525925751,NULL),(11,93,'EDM','click',93,1527060027,1527060027,NULL),(12,102,'111','222',102,1529633052,1529633052,NULL);
/*!40000 ALTER TABLE `base_channel_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_market_group`
--

DROP TABLE IF EXISTS `base_market_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_market_group` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `created_at` int(20) DEFAULT NULL,
  `updated_at` int(20) DEFAULT NULL,
  `created_customer_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_market_group`
--

LOCK TABLES `base_market_group` WRITE;
/*!40000 ALTER TABLE `base_market_group` DISABLE KEYS */;
INSERT INTO `base_market_group` VALUES (1,93,'SEM小组',1519978844,1522211577,93),(2,93,'GOOGLE adwords小组',1519978859,1519978859,93),(3,93,'Facebook',1522217184,1522217942,15);
/*!40000 ALTER TABLE `base_market_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_website_info`
--

DROP TABLE IF EXISTS `base_website_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_website_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT '网站拥有者id',
  `site_name` varchar(150) DEFAULT NULL COMMENT '网站名称',
  `domain` varchar(150) DEFAULT NULL COMMENT '网站域名',
  `trace_js_url` varchar(255) DEFAULT NULL,
  `trace_api_url` varchar(255) DEFAULT NULL COMMENT 'trace api url，用于服务端通过api发送给trace系统数据',
  `site_uid` varchar(150) DEFAULT NULL COMMENT '网站的唯一标示，创建后不可改变',
  `access_token` varchar(255) DEFAULT NULL COMMENT '用户的token，用于通信',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `status` int(5) DEFAULT NULL COMMENT '状态，1代表激活，2代表关闭',
  `created_at` int(20) DEFAULT NULL,
  `updated_at` int(20) DEFAULT NULL,
  `payment_end_time` int(20) DEFAULT '0' COMMENT '付费用户的到期时间',
  `website_day_max_count` int(20) DEFAULT '500' COMMENT '每个站点单日接收的数据的最大数',
  `sku_image_api_url` varchar(255) DEFAULT NULL COMMENT 'sku产品，获取图片的url，譬如：http://fecshop.appfront.fancyecommerce.com/catalog/product/image',
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_uid` (`site_uid`),
  UNIQUE KEY `domain` (`domain`),
  UNIQUE KEY `site_name` (`site_name`),
  KEY `owner_id` (`own_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_website_info`
--

LOCK TABLES `base_website_info` WRITE;
/*!40000 ALTER TABLE `base_website_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_website_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `type` int(5) DEFAULT NULL COMMENT '账户的类型，1为super admin，2为common admin，3为common user',
  `parent_id` int(5) DEFAULT NULL COMMENT '子账户对应的主账号的id，只有type=3的用户才需要填写这个值',
  `password` varchar(100) DEFAULT NULL,
  `created_at` int(30) DEFAULT NULL,
  `updated_at` int(30) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sex` int(5) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `access_token` varchar(200) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `remark` text,
  `birth_date` int(20) DEFAULT NULL COMMENT '出生年月',
  `market_group_id` int(20) DEFAULT NULL COMMENT '营销小组id',
  `job_type` int(20) DEFAULT NULL COMMENT '员工类别',
  `payment_end_time` int(20) DEFAULT '0' COMMENT '付费用户的到期时间',
  `website_count` int(20) DEFAULT '0' COMMENT '用户站点的最大数',
  `website_day_max_count` int(20) DEFAULT '0' COMMENT '每个站点单日接收的数据的最大数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (15,'admin',1,NULL,'0192023a7bbd73250516f069df18b500',1519978859,1521334376,'zqy234@126.com','Terry',2,'1855343432',NULL,1,32,'<!DOCTYPE html><br /><html><br /><head><br /></head><br /><body>\nFecshop 创始人\n</body><br /></html>',534096000,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_role`
--

DROP TABLE IF EXISTS `customer_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) NOT NULL COMMENT '拥有者id',
  `customer_id` int(20) NOT NULL COMMENT '用户id',
  `role_id` int(20) NOT NULL COMMENT '权限id',
  `created_customer_id` int(20) NOT NULL COMMENT '创建人id',
  `created_at` int(20) NOT NULL COMMENT '创建时间',
  `updated_at` int(20) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `own_id` (`own_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_role`
--

LOCK TABLES `customer_role` WRITE;
/*!40000 ALTER TABLE `customer_role` DISABLE KEYS */;
INSERT INTO `customer_role` VALUES (16,93,94,6,93,1522076713,1522076713),(17,93,94,7,93,1522076713,1522076713),(18,93,96,7,93,1528097385,1528097385),(19,93,101,7,93,1528097389,1528097389);
/*!40000 ALTER TABLE `customer_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_website`
--

DROP TABLE IF EXISTS `customer_website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_website` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) NOT NULL,
  `customer_id` int(20) NOT NULL,
  `website_id` varchar(100) NOT NULL,
  `created_customer_id` int(20) NOT NULL,
  `created_at` int(20) NOT NULL,
  `updated_at` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_website`
--

LOCK TABLES `customer_website` WRITE;
/*!40000 ALTER TABLE `customer_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT '资源名称',
  `url_key` varchar(255) DEFAULT NULL COMMENT '资源url路径',
  `request_method` int(5) DEFAULT NULL COMMENT '资源请求方式',
  `group_id` varchar(150) DEFAULT NULL COMMENT '资源分组',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (9,'更新账户密码','/v1/customer/updatepassword',3,'5',15,1521856759,1522048599),(10,'子账户列表','/v1/customer/child/list',1,'6',15,1521857602,1522048605),(11,'账户列表','/v1/customer/list',1,'5',93,1522048890,1522049156),(12,'初始化','/v1/whole/advertise/init',1,'7',15,1526026434,1526026434),(13,'生成广告链接','/v1/whole/advertise/generateurl',1,'7',15,1526026454,1526026454),(14,'批量生成广告','/v1/whole/advertise/generatemutiladvertise',2,'8',15,1526439127,1526439357),(15,'广告列表','/v1/whole/advertise/list',1,'10',15,1526439156,1526439361),(16,'生成多链接广告','/v1/whole/advertise/generatemutillinkadvertise',2,'9',15,1526452569,1526452569),(17,'网站列表','/v1/common/website/list',1,'11',15,1528084484,1528084484),(18,'增加网站','/v1/common/website/addone',2,'11',15,1528084507,1528084507),(19,'网站更新','/v1/common/website/updateone',3,'11',15,1528084538,1528084538),(20,'网站删除','/v1/common/website/deleteone',4,'11',15,1528084565,1528084608),(21,'网站批量删除','/v1/common/website/deletebatch',4,'11',15,1528084594,1528084594),(22,'渠道列表','/v1/common/channel/list',1,'12',15,1528084692,1528084692),(23,'渠道新增','/v1/common/channel/addone',2,'12',15,1528084725,1528084725),(24,'渠道更新','/v1/common/channel/updateone',3,'12',15,1528084770,1528084770),(25,'渠道删除','/v1/common/channel/deleteone',4,'12',15,1528084798,1528084798),(26,'渠道批量删除','/v1/common/channel/deletebatch',4,'12',15,1528084828,1528084828),(27,'小组列表','/v1/common/marketgroup/list',1,'13',15,1528084886,1528084886),(28,'小组新增','/v1/common/marketgroup/addone',2,'13',15,1528084930,1528084930),(29,'小组更新','/v1/common/marketgroup/updateone',3,'13',15,1528084969,1528084969),(30,'小组删除','/v1/common/marketgroup/deleteone',4,'13',15,1528084998,1528084998),(31,'小组批量删除','/v1/common/marketgroup/deletebatch',4,'13',15,1528085022,1528085022),(32,'员工列表','/v1/customer/child/list',1,'14',15,1528085088,1528085088),(33,'员工新增','/v1/customer/child/addone',2,'14',15,1528085111,1528085111),(34,'员工更新','/v1/customer/child/updateone',3,'14',15,1528085626,1528085626),(35,'员工删除','/v1/customer/child/deleteone',4,'14',15,1528085645,1528085645),(36,'员工批量删除','/v1/customer/child/deletebatch',4,'14',15,1528085666,1528085666),(37,'员工权限获取','/v1/customer/child/role/allandselected',1,'14',15,1528085774,1528085774),(38,'员工权限更新','/v1/customer/child/role/updateone',3,'14',15,1528085799,1528085799),(39,'站点列表','/v1/whole/site/list',1,'15',15,1528093410,1528093410),(40,'站点趋势','/whole/site/fetchtrendinfo',1,'15',15,1528093434,1528093434),(41,'App入口列表','/v1/whole/app/list',1,'16',15,1528093483,1528093483),(42,'App入口趋势','/v1/whole/app/fetchtrendinfo',1,'16',15,1528093507,1528093507),(43,'来源列表','/v1/whole/refer/list',1,'17',15,1528093542,1528093542),(44,'来源趋势','/v1/whole/refer/fetchtrendinfo',1,'17',15,1528093574,1528093574),(45,'Sku列表','/v1/whole/sku/list',1,'18',15,1528093614,1528093614),(46,'Sku趋势','/v1/whole/sku/fetchtrendinfo',1,'18',15,1528093636,1528093636),(47,'Sku Refer 列表','/v1/whole/skurefer/list',1,'19',15,1528093676,1528093676),(48,'Sku Refer 趋势','/v1/whole/skurefer/fetchtrendinfo',1,'19',15,1528093705,1528093705),(49,'搜索列表','/v1/whole/search/list',1,'20',15,1528093759,1528093759),(50,'搜索趋势','/v1/whole/search/fetchtrendinfo',1,'20',15,1528093777,1528093777),(51,'搜索语言列表','/v1/whole/searchlang/list',1,'21',15,1528093827,1528093827),(52,'搜索语言趋势','/v1/whole/searchlang/fetchtrendinfo',1,'21',15,1528093847,1528093847),(53,'着陆URL列表','/v1/whole/firsturl/list',1,'22',15,1528093877,1528093877),(54,'着陆url趋势','/v1/whole/firsturl/fetchtrendinfo',1,'22',15,1528093910,1528093910),(55,'URL列表','/v1/whole/url/list',1,'23',15,1528093940,1528093940),(56,'URL趋势','/v1/whole/url/fetchtrendinfo',1,'23',15,1528093962,1528093977),(57,'分类列表','/v1/whole/category/list',1,'24',15,1528094098,1528094098),(58,'分类趋势','/v1/whole/category/fetchtrendinfo',1,'24',15,1528094142,1528094142),(59,'设备列表','/v1/whole/devide/list',1,'25',15,1528094169,1528094169),(60,'设备趋势','/v1/whole/devide/fetchtrendinfo',1,'25',15,1528094205,1528094205),(61,'国家列表','/v1/whole/country/list',1,'26',15,1528094233,1528094233),(62,'国家趋势','/v1/whole/country/fetchtrendinfo',1,'26',15,1528094264,1528094264),(63,'浏览器列表','/v1/whole/browser/list',1,'27',15,1528094297,1528094297),(64,'浏览器趋势','/whole/browser/fetchtrendinfo',1,'27',15,1528094328,1528094328),(65,'广告列表','/v1/advertise/fid/list',1,'28',15,1528094359,1528094359),(66,'广告趋势','/v1/advertise/fid/fetchtrendinfo',1,'28',15,1528094392,1528094392),(67,'广告员列表','/v1/advertise/content/list',1,'29',15,1528094417,1528094417),(68,'广告员趋势','/advertise/content/fetchtrendinfo',1,'29',15,1528094438,1528094438),(69,'广告小组列表','/v1/advertise/marketgroup/list',1,'30',15,1528096169,1528096169),(70,'广告小组趋势','/v1/advertise/marketgroup/fetchtrendinfo',1,'30',15,1528096195,1528096195),(71,'广告美工列表','/v1/advertise/design/list',1,'31',15,1528096231,1528096231),(72,'广告美工趋势','/advertise/design/fetchtrendinfo',1,'31',15,1528096254,1528096254),(73,'广告活动列表','/v1/advertise/campaign/list',1,'32',15,1528096290,1528096290),(74,'广告活动趋势','/v1/advertise/campaign/fetchtrendinfo',1,'32',15,1528096317,1528096317),(75,'广告子渠道列表','/v1/advertise/medium/list',1,'33',15,1528096350,1528096350),(76,'广告子渠道趋势','/v1/advertise/medium/fetchtrendinfo',1,'33',15,1528096375,1528096400),(77,'广告渠道列表','/v1/advertise/source/list',1,'34',15,1528096432,1528096469),(78,'广告渠道趋势','/v1/advertise/source/fetchtrendinfo',1,'34',15,1528096457,1528096457),(79,'EDM列表','/v1/advertise/edm/list',1,'35',15,1528096499,1528096499),(80,'EDM趋势','/v1/advertise/edm/fetchtrendinfo',1,'35',15,1528096521,1528096521),(81,'用户数据列表','/v1/customer/uuid/list',1,'36',15,1528096570,1528096570),(82,'用户数据趋势','/v1/customer/uuid/fetchtrendinfo',1,'36',15,1528100043,1528100043),(83,'用户数据 - 详细数据','/v1/customer/uuid/one',1,'36',15,1528100077,1528100077);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_group`
--

DROP TABLE IF EXISTS `resource_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_group` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL COMMENT '资源分组名称',
  `created_at` int(20) DEFAULT NULL COMMENT '资源组创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT '资源组更新时间',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '资源组创建人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_group`
--

LOCK TABLES `resource_group` WRITE;
/*!40000 ALTER TABLE `resource_group` DISABLE KEYS */;
INSERT INTO `resource_group` VALUES (5,'控制面板 - 我的账户',1521856717,1521856717,15),(6,'控制面板 - 子账户管理',1521857443,1521857443,15),(7,'广告管理 - 生成广告',1526026387,1526026398,15),(8,'广告管理 - 批量生成广告',1526439049,1526439049,15),(9,'广告管理 - 多链接广告',1526439063,1526439063,15),(10,'广告管理 - 生成广告查看',1526439077,1526439077,15),(11,'基础信息 - 网站管理',1528083912,1528083912,15),(12,'基础信息 - 渠道管理',1528083922,1528083922,15),(13,'基础信息 - 营销小组',1528083933,1528083933,15),(14,'基础信息 - 员工管理',1528083942,1528083942,15),(15,'全部流量统计 - 站点',1528085910,1528085910,15),(16,'全部流量统计 - App入口',1528085918,1528085918,15),(17,'全部流量统计 - 来源',1528085923,1528085923,15),(18,'全部流量统计 - Sku',1528085931,1528085931,15),(19,'全部流量统计 - SkuRefer',1528085940,1528085940,15),(20,'全部流量统计 - 搜索',1528085946,1528085946,15),(21,'全部流量统计 - 搜索语言',1528085952,1528085952,15),(22,'全部流量统计 - 着陆URL',1528085959,1528085959,15),(23,'全部流量统计 - Url',1528085964,1528085964,15),(24,'全部流量统计 - 分类',1528085969,1528085969,15),(25,'全部流量统计 - 设备',1528085974,1528085974,15),(26,'全部流量统计 - 国家',1528085980,1528085980,15),(27,'全部流量统计 - 浏览器',1528085987,1528085987,15),(28,'广告维度统计 - 广告',1528086012,1528086012,15),(29,'广告维度统计 - 广告员',1528086017,1528086017,15),(30,'广告维度统计 - 广告小组',1528086023,1528086023,15),(31,'广告维度统计 - 广告美工',1528086053,1528086053,15),(32,'广告维度统计 - 活动',1528086059,1528086059,15),(33,'广告维度统计 - 子渠道',1528086064,1528086064,15),(34,'广告维度统计 - 渠道',1528086070,1528086070,15),(35,'广告维度统计 - EDM',1528086074,1528086074,15),(36,'用户数据',1528096540,1528096540,15);
/*!40000 ALTER TABLE `resource_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_info`
--

DROP TABLE IF EXISTS `role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT 'role的拥有人',
  `name` varchar(150) DEFAULT NULL COMMENT 'role的名称',
  `created_at` int(20) DEFAULT NULL COMMENT 'role的创建时间',
  `updated_at` int(20) DEFAULT NULL COMMENT 'role的更新时间',
  `created_customer_id` int(20) DEFAULT NULL COMMENT 'role的创建人',
  PRIMARY KEY (`id`),
  KEY `own_id` (`own_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_info`
--

LOCK TABLES `role_info` WRITE;
/*!40000 ALTER TABLE `role_info` DISABLE KEYS */;
INSERT INTO `role_info` VALUES (6,93,'营销主管',1521856907,1521856907,15),(7,93,'广告员',1521944700,1521944700,15);
/*!40000 ALTER TABLE `role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_resource`
--

DROP TABLE IF EXISTS `role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_resource` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `own_id` int(20) DEFAULT NULL COMMENT '拥有者id',
  `role_id` int(20) DEFAULT NULL COMMENT '权限id',
  `resource_id` int(20) DEFAULT NULL COMMENT '资源id',
  `created_customer_id` int(20) DEFAULT NULL COMMENT '创建人id',
  `updated_at` int(20) DEFAULT NULL COMMENT '更新时间',
  `created_at` int(20) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_resource`
--

LOCK TABLES `role_resource` WRITE;
/*!40000 ALTER TABLE `role_resource` DISABLE KEYS */;
INSERT INTO `role_resource` VALUES (26,93,1,1,15,1521799583,1521799583),(27,93,1,4,15,1521799583,1521799583),(28,93,1,5,15,1521799583,1521799583),(29,93,1,6,15,1521799583,1521799583),(30,93,1,7,15,1521799583,1521799583),(31,93,1,8,15,1521799583,1521799583),(32,93,2,1,15,1521799695,1521799695),(33,93,2,4,15,1521799695,1521799695),(34,93,2,5,15,1521799696,1521799696),(74,93,7,16,93,1526452613,1526452613),(75,93,7,14,93,1526452613,1526452613),(76,93,7,12,93,1526452613,1526452613),(77,93,7,13,93,1526452613,1526452613),(78,93,7,15,93,1526452613,1526452613),(79,93,7,10,93,1526452613,1526452613),(80,93,7,9,93,1526452614,1526452614),(81,93,7,11,93,1526452614,1526452614),(185,93,6,41,93,1528100604,1528100604),(186,93,6,42,93,1528100604,1528100604),(187,93,6,45,93,1528100604,1528100604),(188,93,6,46,93,1528100604,1528100604),(189,93,6,47,93,1528100604,1528100604),(190,93,6,48,93,1528100604,1528100604),(191,93,6,55,93,1528100604,1528100604),(192,93,6,56,93,1528100604,1528100604),(193,93,6,57,93,1528100604,1528100604),(194,93,6,58,93,1528100604,1528100604),(195,93,6,61,93,1528100604,1528100604),(196,93,6,62,93,1528100604,1528100604),(197,93,6,49,93,1528100604,1528100604),(198,93,6,50,93,1528100604,1528100604),(199,93,6,51,93,1528100604,1528100604),(200,93,6,52,93,1528100604,1528100604),(201,93,6,43,93,1528100604,1528100604),(202,93,6,44,93,1528100604,1528100604),(203,93,6,63,93,1528100604,1528100604),(204,93,6,64,93,1528100604,1528100604),(205,93,6,53,93,1528100604,1528100604),(206,93,6,54,93,1528100605,1528100605),(207,93,6,39,93,1528100605,1528100605),(208,93,6,40,93,1528100605,1528100605),(209,93,6,59,93,1528100605,1528100605),(210,93,6,60,93,1528100605,1528100605),(211,93,6,32,93,1528100605,1528100605),(212,93,6,33,93,1528100605,1528100605),(213,93,6,34,93,1528100605,1528100605),(214,93,6,35,93,1528100605,1528100605),(215,93,6,36,93,1528100605,1528100605),(216,93,6,37,93,1528100605,1528100605),(217,93,6,38,93,1528100605,1528100605),(218,93,6,22,93,1528100605,1528100605),(219,93,6,23,93,1528100605,1528100605),(220,93,6,24,93,1528100605,1528100605),(221,93,6,25,93,1528100605,1528100605),(222,93,6,26,93,1528100605,1528100605),(223,93,6,17,93,1528100605,1528100605),(224,93,6,18,93,1528100605,1528100605),(225,93,6,19,93,1528100605,1528100605),(226,93,6,20,93,1528100605,1528100605),(227,93,6,21,93,1528100605,1528100605),(228,93,6,27,93,1528100605,1528100605),(229,93,6,28,93,1528100605,1528100605),(230,93,6,29,93,1528100605,1528100605),(231,93,6,30,93,1528100605,1528100605),(232,93,6,31,93,1528100605,1528100605),(233,93,6,16,93,1528100605,1528100605),(234,93,6,14,93,1528100605,1528100605),(235,93,6,12,93,1528100605,1528100605),(236,93,6,13,93,1528100605,1528100605),(237,93,6,15,93,1528100605,1528100605),(238,93,6,79,93,1528100605,1528100605),(239,93,6,80,93,1528100605,1528100605),(240,93,6,75,93,1528100605,1528100605),(241,93,6,76,93,1528100605,1528100605),(242,93,6,65,93,1528100605,1528100605),(243,93,6,66,93,1528100605,1528100605),(244,93,6,67,93,1528100605,1528100605),(245,93,6,68,93,1528100605,1528100605),(246,93,6,69,93,1528100605,1528100605),(247,93,6,70,93,1528100605,1528100605),(248,93,6,71,93,1528100605,1528100605),(249,93,6,72,93,1528100605,1528100605),(250,93,6,73,93,1528100605,1528100605),(251,93,6,74,93,1528100605,1528100605),(252,93,6,77,93,1528100605,1528100605),(253,93,6,78,93,1528100605,1528100605),(254,93,6,10,93,1528100605,1528100605),(255,93,6,9,93,1528100605,1528100605),(256,93,6,11,93,1528100605,1528100605),(257,93,6,81,93,1528100605,1528100605),(258,93,6,82,93,1528100605,1528100605),(259,93,6,83,93,1528100605,1528100605);
/*!40000 ALTER TABLE `role_resource` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-26  9:27:12
