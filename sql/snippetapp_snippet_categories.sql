CREATE DATABASE  IF NOT EXISTS `snippetapp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `snippetapp`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: snippetapp
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `snippet_categories`
--

DROP TABLE IF EXISTS `snippet_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snippet_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `inserted_by` int(11) NOT NULL,
  `last_modification` datetime NOT NULL,
  `modificated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippet_categories`
--

LOCK TABLES `snippet_categories` WRITE;
/*!40000 ALTER TABLE `snippet_categories` DISABLE KEYS */;
INSERT INTO `snippet_categories` VALUES (1,'JAVAs',0,0,'2015-05-13 21:40:34',5,'2015-07-31 05:22:40',5),(2,'C',0,0,'2015-05-13 21:50:52',5,'2015-07-31 05:24:54',5),(3,'Python',0,1,'2015-05-13 21:51:03',5,'2015-05-13 21:51:03',5),(4,'C++',0,0,'2015-05-15 19:22:41',5,'2015-07-31 05:27:02',5),(5,'PHP',0,0,'2015-05-15 23:43:42',5,'2015-07-31 05:24:46',5),(6,'.NET',0,1,'2015-05-15 23:45:10',5,'2015-05-15 23:45:10',5),(7,'C#',0,1,'2015-05-15 23:45:40',5,'2015-05-15 23:45:40',5),(8,'Objetive-C',0,1,'2015-05-15 23:45:56',5,'2015-05-15 23:45:56',5),(9,'SQL',0,1,'2015-06-04 04:08:42',5,'2015-06-04 04:08:42',5),(10,'Perl',0,1,'2015-08-16 22:27:22',5,'2015-08-16 22:27:22',5),(11,'Perl',0,1,'2015-08-16 22:27:39',5,'2015-08-16 22:27:39',5),(12,'Perl',0,1,'2015-08-16 23:19:14',5,'2015-08-16 23:19:14',5),(13,'123456',0,1,'2015-08-16 23:29:52',5,'2015-08-16 23:29:52',5),(14,'a',0,1,'2015-08-16 23:35:08',5,'2015-08-16 23:35:08',5),(15,'asd',0,1,'2015-08-16 23:49:44',5,'2015-08-16 23:49:44',5),(16,'pp',0,1,'2015-08-17 01:16:11',5,'2015-08-17 01:16:11',5),(17,'izi',0,1,'2015-08-17 01:29:28',5,'2015-08-17 01:29:28',5),(18,'gg',0,1,'2015-08-17 01:31:52',5,'2015-08-17 01:31:52',5),(19,'asasas',0,1,'2015-08-17 01:32:05',5,'2015-08-17 01:32:05',5),(20,'iis',1,1,'2015-08-17 02:13:52',5,'2015-08-17 02:13:52',5),(21,'plop',0,1,'2015-08-17 02:14:35',5,'2015-08-17 02:14:35',5),(22,'xd',1,1,'2015-08-17 02:30:06',5,'2015-08-17 02:30:06',5);
/*!40000 ALTER TABLE `snippet_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-12 18:44:48
