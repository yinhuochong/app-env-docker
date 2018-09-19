-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: hongcms
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Current Database: `hongcms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hongcms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hongcms`;

--
-- Table structure for table `hong_acat`
--

DROP TABLE IF EXISTS `hong_acat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_acat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `show_sub` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_en` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `keywords_en` varchar(255) NOT NULL DEFAULT '',
  `desc_cn` text NOT NULL,
  `desc_en` text NOT NULL,
  `counts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `p_id` (`p_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_acat`
--

LOCK TABLES `hong_acat` WRITE;
/*!40000 ALTER TABLE `hong_acat` DISABLE KEYS */;
/*!40000 ALTER TABLE `hong_acat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_admin`
--

DROP TABLE IF EXISTS `hong_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_admin` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `joindate` int(11) NOT NULL DEFAULT '0',
  `lastdate` int(11) NOT NULL DEFAULT '0',
  `joinip` varchar(64) NOT NULL DEFAULT '',
  `lastip` varchar(64) NOT NULL DEFAULT '',
  `loginnum` int(11) NOT NULL DEFAULT '0',
  `nickname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  KEY `joindate` (`joindate`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_admin`
--

LOCK TABLES `hong_admin` WRITE;
/*!40000 ALTER TABLE `hong_admin` DISABLE KEYS */;
INSERT INTO `hong_admin` VALUES (1,1,'admin','21232f297a57a5a743894a0e4a801fc3',1537353710,1537353721,'unknown','172.17.0.1',1,'系统管理员');
/*!40000 ALTER TABLE `hong_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_article`
--

DROP TABLE IF EXISTS `hong_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_article` (
  `a_id` int(30) NOT NULL AUTO_INCREMENT,
  `sort` int(30) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '0',
  `is_best` tinyint(1) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `keywords_en` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`a_id`),
  KEY `sort` (`sort`),
  KEY `created` (`created`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_article`
--

LOCK TABLES `hong_article` WRITE;
/*!40000 ALTER TABLE `hong_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `hong_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_content`
--

DROP TABLE IF EXISTS `hong_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_content` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `keywords_en` varchar(255) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  `r_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `r_id` (`r_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_content`
--

LOCK TABLES `hong_content` WRITE;
/*!40000 ALTER TABLE `hong_content` DISABLE KEYS */;
INSERT INTO `hong_content` VALUES (1,'关于我们','About Us','请在后台管理中自定义关于我们的详细内容.','please edit your content.','关于,我们','about us',1265951785,1),(2,'联系我们','Contact Us','请在后台管理中自定义联系我们的详细内容.','please edit your content.','联系,我们','contact us',1265951785,2),(3,'首页常态内容','Homepage content','请在后台管理中自定义首页常态内容.','please edit your homepage content.','hongcms中英文企业网站系统','hongcms,website system',1265951785,3),(4,'第一个公司','The first Company','请在后台管理常态内容中自定义第一个公司详细介绍.','please edit The first Company content on back-end.','hongcms,website system','hongcms,website system',1265951785,11),(5,'第二个公司','The second Company','请在后台管理常态内容中自定义第二个公司详细介绍.','please edit The second Company content on back-end.','hongcms,website system','hongcms,website system',1265951785,12),(6,'第三个公司','The third Company','请在后台管理常态内容中自定义第三个公司详细介绍.','please edit The third Company content on back-end.','hongcms,website system','hongcms,website system',1265951785,13),(7,'企业文化','Our Culture','请在后台管理常态内容中自定义企业文化详细内容.','please edit Our Culture content on back-end.','hongcms,website system','hongcms,website system',1265951785,14),(8,'组织结构','Organization','请在后台管理常态内容中自定义组织结构详细内容.','please edit Organization content on back-end.','hongcms,website system','hongcms,website system',1265951785,15);
/*!40000 ALTER TABLE `hong_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_gimage`
--

DROP TABLE IF EXISTS `hong_gimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_gimage` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(30) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `path` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`g_id`),
  KEY `pro_id` (`pro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_gimage`
--

LOCK TABLES `hong_gimage` WRITE;
/*!40000 ALTER TABLE `hong_gimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `hong_gimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_news`
--

DROP TABLE IF EXISTS `hong_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_news` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `linkurl` varchar(255) NOT NULL DEFAULT '',
  `linkurl_en` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `keywords_en` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `clicks` int(30) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`n_id`),
  KEY `sort` (`sort`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_news`
--

LOCK TABLES `hong_news` WRITE;
/*!40000 ALTER TABLE `hong_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `hong_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_pcat`
--

DROP TABLE IF EXISTS `hong_pcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_pcat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `show_sub` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `name_en` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `keywords_en` varchar(255) NOT NULL DEFAULT '',
  `desc_cn` text NOT NULL,
  `desc_en` text NOT NULL,
  `counts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `p_id` (`p_id`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_pcat`
--

LOCK TABLES `hong_pcat` WRITE;
/*!40000 ALTER TABLE `hong_pcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `hong_pcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_product`
--

DROP TABLE IF EXISTS `hong_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_product` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `is_best` tinyint(1) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(36) NOT NULL DEFAULT '',
  `price_en` varchar(36) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `title_en` varchar(255) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `keywords_en` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pro_id`),
  KEY `sort` (`sort`),
  KEY `created` (`created`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_product`
--

LOCK TABLES `hong_product` WRITE;
/*!40000 ALTER TABLE `hong_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `hong_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_sessions`
--

DROP TABLE IF EXISTS `hong_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_sessions` (
  `sessionid` char(64) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ipaddress` varchar(64) NOT NULL DEFAULT '',
  `useragent` varchar(255) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `userid` (`userid`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_sessions`
--

LOCK TABLES `hong_sessions` WRITE;
/*!40000 ALTER TABLE `hong_sessions` DISABLE KEYS */;
INSERT INTO `hong_sessions` VALUES ('76db6181d4b53288260480ad2e2c9649',1,'172.17.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.92 Safari/537.36',1537353721,1);
/*!40000 ALTER TABLE `hong_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hong_vvc`
--

DROP TABLE IF EXISTS `hong_vvc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hong_vvc` (
  `vvcid` int(30) NOT NULL AUTO_INCREMENT,
  `code` varchar(9) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vvcid`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hong_vvc`
--

LOCK TABLES `hong_vvc` WRITE;
/*!40000 ALTER TABLE `hong_vvc` DISABLE KEYS */;
/*!40000 ALTER TABLE `hong_vvc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-19 10:43:35
