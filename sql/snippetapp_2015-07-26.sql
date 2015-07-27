# ************************************************************
# Sequel Pro SQL dump
# Versión 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38-0ubuntu0.12.04.1)
# Base de datos: snippetapp
# Tiempo de Generación: 2015-07-27 03:54:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla snippet_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `snippet_categories`;

CREATE TABLE `snippet_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `is_active` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `inserted_by` int(11) NOT NULL,
  `last_modification` datetime NOT NULL,
  `modificated_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `snippet_categories` WRITE;
/*!40000 ALTER TABLE `snippet_categories` DISABLE KEYS */;

INSERT INTO `snippet_categories` (`id`, `name`, `is_active`, `date_created`, `inserted_by`, `last_modification`, `modificated_by`)
VALUES
	(1,'JAVA',1,'2015-05-13 21:40:34',5,'2015-05-13 21:40:34',5),
	(2,'C',0,'2015-05-13 21:50:52',5,'2015-05-13 21:50:52',5),
	(3,'Python',1,'2015-05-13 21:51:03',5,'2015-05-13 21:51:03',5),
	(4,'C++',1,'2015-05-15 19:22:41',5,'2015-05-15 19:22:41',5),
	(5,'PHP',1,'2015-05-15 23:43:42',5,'2015-05-15 23:43:42',5),
	(6,'.NET',1,'2015-05-15 23:45:10',5,'2015-05-15 23:45:10',5),
	(7,'C#',1,'2015-05-15 23:45:40',5,'2015-05-15 23:45:40',5),
	(8,'Objetive-C',1,'2015-05-15 23:45:56',5,'2015-05-15 23:45:56',5),
	(9,'SQL',1,'2015-06-04 04:08:42',5,'2015-06-04 04:08:42',5);

/*!40000 ALTER TABLE `snippet_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla snippet_subcategories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `snippet_subcategories`;

CREATE TABLE `snippet_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `is_active` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `inserted_by` int(11) NOT NULL,
  `last_modification` datetime NOT NULL,
  `modicated_by` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_to_subcategory` (`id_category`),
  CONSTRAINT `category_to_subcategory` FOREIGN KEY (`id_category`) REFERENCES `snippet_categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Volcado de tabla users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(75) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL,
  `date_born` date NOT NULL,
  `password` varchar(300) NOT NULL DEFAULT '',
  `is_active` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `access`, `name`, `lastname`, `email`, `phone`, `date_born`, `password`, `is_active`, `date_created`)
VALUES
	(5,1,'Eduardo','Rojas Robles','eduardo.utc@gmail.com','8888 88 88','1989-08-27','$2y$10$Ejy6LMcm04v89gcV7bSx9OSMGleEDYuMbpTJi7N3Jq36cz8nVLOh2',1,'2015-05-07 22:55:30'),
	(6,3,'Jorge','Santana Rojas','jorgesantana395@gmail.com','+506 888888888','1988-11-10','$2y$10$o.gzVtJqJR12cQuH4UdSq.CLuB/YHnBcEEHNF1yRdG.OFOV/b6rvm',1,'2015-05-08 13:49:58');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
