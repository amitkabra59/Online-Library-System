-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: agile
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `email` varchar(45) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('amitkabra59@gmail.com','2017-09-21 22:26:06.489188'),('amitkabra59@gmail.com','2017-09-22 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-27 22:00:00.000000'),('amitkabra59@gmail.com','2017-09-28 22:00:00.000000'),('nma@gmail.com','2017-09-28 22:00:00.000000'),('torbjorn.fridenskold@bth.se','2017-09-28 22:00:00.000000'),('amitkabra59@gmail.com','2017-10-05 22:00:00.000000');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-08 18:07:59
