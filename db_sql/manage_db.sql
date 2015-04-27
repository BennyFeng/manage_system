-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: manage
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','123456','0000-00-00 00:00:00','2015-04-24 16:21:13'),(2,NULL,'123456','2015-04-24 17:50:15','2015-04-24 17:50:15'),(3,NULL,'123456','2015-04-24 17:54:18','2015-04-24 17:54:18');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announces`
--

DROP TABLE IF EXISTS `announces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tittle` varchar(255) DEFAULT NULL,
  `post` text,
  `author` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announces`
--

LOCK TABLES `announces` WRITE;
/*!40000 ALTER TABLE `announces` DISABLE KEYS */;
INSERT INTO `announces` VALUES (8,'this is my introduction','恶气喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂喂','小陌陌','2015-04-24 11:16:39','2015-04-24 11:16:39'),(13,'this is my introduction','this is my introduction','this is my introduction','2015-04-24 11:17:38','2015-04-24 11:17:38'),(14,'this is my introduction','this is my introduction','this is my introduction','2015-04-24 11:17:47','2015-04-24 11:17:47'),(15,'this is my introduction','this is my introduction','this is my introduction','2015-04-24 11:17:57','2015-04-24 11:17:57'),(16,'this is my introduction','this is my introduction','Benfeng','2015-04-24 11:18:23','2015-04-24 11:18:23'),(17,'this is my introduction','this is my introduction','this is my introduction','2015-04-24 11:18:33','2015-04-24 11:18:33'),(18,'这是测试公告','this is my introduction','Benfeng','2015-04-24 11:18:43','2015-04-24 11:18:43'),(19,'这是测试公告','this is my introduction','小陌陌','2015-04-24 11:18:53','2015-04-24 11:18:53'),(20,'this is my introduction','this is my introduction','Benfeng','2015-04-24 11:19:02','2015-04-24 11:19:02'),(22,'这是测试公告','this is my introduction','小陌陌','2015-04-24 13:09:33','2015-04-24 13:09:33'),(23,'this is my introduction','小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌小陌陌','小陌陌','2015-04-24 13:47:51','2015-04-24 13:47:51'),(24,'this is my introduction','this is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introductionthis is my introduction','小陌陌','2015-04-24 13:48:34','2015-04-24 13:48:34'),(25,'this is my introduction','this is my introductionthis is my introductionthis is my introductionthis is my introduction','小陌陌','2015-04-24 13:48:46','2015-04-24 13:48:46'),(26,'this is my introduction','this is my introductionthis is my introductionthis is my introduction','Benfeng','2015-04-24 13:49:03','2015-04-24 13:49:03'),(27,'this is my introduction','this is my introduction','小陌陌','2015-04-24 13:49:11','2015-04-24 13:49:11'),(28,'这是测试公告','this is my introduction','小陌陌','2015-04-24 13:49:21','2015-04-24 13:49:21'),(29,'this is my introduction','this is my introduction','小陌陌','2015-04-24 13:49:32','2015-04-24 13:49:32');
/*!40000 ALTER TABLE `announces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basics`
--

DROP TABLE IF EXISTS `basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_number` varchar(255) DEFAULT NULL,
  `emo_name` varchar(255) DEFAULT NULL,
  `emp_sex` varchar(255) DEFAULT NULL,
  `emp_birth` datetime DEFAULT NULL,
  `emp_card` varchar(255) DEFAULT NULL,
  `emp_phone` varchar(255) DEFAULT NULL,
  `emp_address` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basics`
--

LOCK TABLES `basics` WRITE;
/*!40000 ALTER TABLE `basics` DISABLE KEYS */;
INSERT INTO `basics` VALUES (31,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:03','2015-04-24 16:51:03','123456'),(32,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:03','2015-04-24 16:51:03','123456'),(33,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:09','2015-04-24 16:51:09','123456'),(34,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:09','2015-04-24 16:51:09','123456'),(35,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:09','2015-04-24 16:51:09','123456'),(36,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:10','2015-04-24 16:51:10','123456'),(37,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:10','2015-04-24 16:51:10','123456'),(38,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:10','2015-04-24 16:51:10','123456'),(39,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:51:10','2015-04-24 16:51:10','123456'),(40,'02041201014','插皮皮','1','2015-04-15 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:52:25','2015-04-24 16:52:25','123456'),(41,'0204120','插皮皮','1','2015-04-08 00:00:00','440101011010101011','12345678977','','2015-04-24 16:53:32','2015-04-24 16:53:32','123456'),(42,'020412','小陌陌','1','2015-04-08 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:54:36','2015-04-24 16:54:36','123456'),(43,'02041201014','插皮皮','1','2015-04-14 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:57:06','2015-04-24 16:57:06','123456'),(44,'020','插皮皮','1','2015-04-15 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 16:57:28','2015-04-24 16:57:28','123456'),(45,'0204120','插皮皮','1','2015-04-08 00:00:00','440101011010101010','12345678977','美国芝加哥','2015-04-24 16:58:22','2015-04-24 16:58:22','123456'),(46,'0204120','插皮皮','1','2015-04-08 00:00:00','440101011010101011','12345678977','美国芝加哥','2015-04-24 17:00:17','2015-04-24 17:00:17','123456');
/*!40000 ALTER TABLE `basics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laborages`
--

DROP TABLE IF EXISTS `laborages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laborages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_month` varchar(255) DEFAULT NULL,
  `emp_number` varchar(255) DEFAULT NULL,
  `pay_basic` int(11) DEFAULT NULL,
  `pay_prize` int(11) DEFAULT NULL,
  `pay_overtime` int(11) DEFAULT NULL,
  `pay_payable` int(11) DEFAULT NULL,
  `pay_paymoney` int(11) DEFAULT NULL,
  `basic_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pay_recoup` int(11) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_laborages_on_basic_id` (`basic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laborages`
--

LOCK TABLES `laborages` WRITE;
/*!40000 ALTER TABLE `laborages` DISABLE KEYS */;
/*!40000 ALTER TABLE `laborages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_sets`
--

DROP TABLE IF EXISTS `message_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `private` int(11) DEFAULT NULL,
  `sick` int(11) DEFAULT NULL,
  `late` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_sets`
--

LOCK TABLES `message_sets` WRITE;
/*!40000 ALTER TABLE `message_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150408021752'),('20150408022528'),('20150408023202'),('20150408023453'),('20150408052942'),('20150408054104'),('20150422062400'),('20150422075444'),('20150422082934'),('20150422083309'),('20150423053530'),('20150423053858');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `emp_number` int(11) DEFAULT NULL,
  `emp_holiday` int(11) DEFAULT NULL,
  `emp_private_date` date DEFAULT NULL,
  `emp_private_money` int(11) DEFAULT NULL,
  `emp_lateleave_money` int(11) DEFAULT NULL,
  `basic_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `lateleave` int(11) DEFAULT NULL,
  `lateleave_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_works_on_basic_id` (`basic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-27 15:16:20
