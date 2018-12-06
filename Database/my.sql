-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: basic
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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
-- Table structure for table `FORM`
--

DROP TABLE IF EXISTS `FORM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FORM` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `Secondname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `TEXT` varchar(15000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORM`
--

LOCK TABLES `FORM` WRITE;
/*!40000 ALTER TABLE `FORM` DISABLE KEYS */;
INSERT INTO `FORM` VALUES (1,'Terry','Herold','grites@gmail.com','+7 (980) 876-23-23','123456789101234567891012345678910123456789101234567891012345678910123456789101234567891012345678910123456789101234567891012345678910'),(2,'Гоша','Валуев','grti@gmail.com','+7 (987) 654-12-45','123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890'),(3,'Василий','Куретов','terfe@gmail.com','+7 (981) 654-12-32','122323232323232323231223232323232323232312232323232323232323122323232323232323231223232323232323232312232323232323232323122323232323232323231223232323232323232312232'),(4,'Tamir','Belomir','retah@yandex.ru','+7 (879) 987-12-32','123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212'),(5,'Reva','Беломор','Geredsdsasd@gmail.com','+7 (878) 654-23-43','123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212123456789121212'),(6,'Georgy','Baletov','terydgs@gmail.com','+7 (987) 876-12-43','12345678912121234567891212123456789121212345678912121234567891212123456789121212345678912121234567891212123456789121212345678912121234567891212'),(7,'Григорий','Васильев','getfujrjd@gmail.com','+7 (879) 543-23-34','1223rewfergergfefewdfewfew1223rewfergergfefewdfewfew1223rewfergergfefewdfewfew1223rewfergergfefewdfewfew1223rewfergergfefewdfewfew1223rewfergergfefewdfewfew1223rewfergergfefewdfewfew'),(8,'Петр','Куретов','getrtdg@gmail.com','+7 (987) 765-12-32','wqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfew'),(9,'Петр','Куретов','getrtdg@gmail.com','+7 (987) 765-12-32','wqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfewwqwefwefvewfewdfwedfew');
/*!40000 ALTER TABLE `FORM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('AU','Australia',24016400),('BR','Brazil',205722000),('CA','Canada',35985751),('CN','China',1375210000),('DE','Germany',81459000),('FR','France',64513242),('GB','United Kingdom',65097000),('IN','India',1285400000),('RU','Russia',146519759),('US','United States',322976000);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'terfdgd','$2y$13$QxXyXO/2QcxRy7DZm2nVcuRxlm2z8Gl5jx3Xe1kyHeJaMfTjJ9Uem','user'),(2,'test','$2y$13$YebhkweLygrJ4s6kn8tsd.aDlcx5ntSMRdRSlfjRhruZDQwWOGh86','user'),(3,'gibi','$2y$13$9wbs0uefIXWSboSTf8FH/Oztgr1y3KHDvREGviEpd8mhZRItlqQoa','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-06 16:10:59
