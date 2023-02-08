-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: qa-test-students
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `homeworks`
--

DROP TABLE IF EXISTS `homeworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homeworks` (
  `idhomeworks` int NOT NULL,
  `score` int NOT NULL,
  `important` tinyint NOT NULL,
  PRIMARY KEY (`idhomeworks`),
  UNIQUE KEY `idhomeworks_UNIQUE` (`idhomeworks`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='1 is important\\n0 is optional';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeworks`
--

LOCK TABLES `homeworks` WRITE;
/*!40000 ALTER TABLE `homeworks` DISABLE KEYS */;
INSERT INTO `homeworks` VALUES (1,50,0),(2,60,0),(3,80,0),(4,40,0),(5,90,0);
/*!40000 ALTER TABLE `homeworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hw_progress`
--

DROP TABLE IF EXISTS `hw_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hw_progress` (
  `idhw_progress` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(60) NOT NULL,
  `hw_num` varchar(45) NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`idhw_progress`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb3 COMMENT='1 - pass\\n0- not pass';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hw_progress`
--

LOCK TABLES `hw_progress` WRITE;
/*!40000 ALTER TABLE `hw_progress` DISABLE KEYS */;
INSERT INTO `hw_progress` VALUES (1,'A$AP Rocky','1',1),(2,'A$AP Rocky','2',1),(3,'A$AP Rocky','3',1),(4,'A$AP Rocky','4',1),(5,'A$AP Rocky','5',1),(22,'A$AP Ferg','1',1),(23,'A$AP Ferg','2',1),(24,'A$AP Ferg','3',1),(25,'A$AP Ferg','4',1),(26,'A$AP Ferg','5',0),(27,'A$AP Yams','1',0),(28,'A$AP Yams','2',0),(29,'A$AP Yams','3',0),(30,'A$AP Yams','4',0),(31,'A$AP Yams','5',0),(32,'A$AP Dom','1',0),(33,'A$AP Dom','2',0),(34,'A$AP Dom','3',0),(35,'A$AP Dom','4',0),(36,'A$AP Dom','5',0),(37,'A$AP Ant','1',1),(38,'A$AP Ant','2',1),(39,'A$AP Ant','3',0),(40,'A$AP Ant','4',1),(41,'A$AP Ant','5',0),(42,'A$AP Nast','1',1),(43,'A$AP Nast','2',1),(44,'A$AP Nast','3',1),(45,'A$AP Nast','4',1),(46,'A$AP Nast','5',1),(47,'A$AP TyY','1',1),(48,'A$AP TyY','2',1),(49,'A$AP TyY','3',0),(50,'A$AP TyY','4',1),(51,'A$AP TyY','5',0),(52,'A$AP Bari','1',1),(53,'A$AP Bari','2',1),(54,'A$AP Bari','3',1),(55,'A$AP Bari','4',1),(56,'A$AP Bari','5',0),(57,'A$AP Press','1',0),(58,'A$AP Press','2',0),(59,'A$AP Press','3',0),(60,'A$AP Press','4',0),(61,'A$AP Press','5',0),(62,'A$AP Snacks','1',0),(63,'A$AP Snacks','2',0),(64,'A$AP Snacks','3',0),(65,'A$AP Snacks','4',0),(66,'A$AP Snacks','5',0),(67,'A$AP Twelvvy','1',1),(68,'A$AP Twelvvy','2',1),(69,'A$AP Twelvvy','3',0),(70,'A$AP Twelvvy','4',0),(71,'A$AP Twelvvy','5',0),(72,'A$AP Relli','1',0),(73,'A$AP Relli','2',0),(74,'A$AP Relli','3',0),(75,'A$AP Relli','4',0),(76,'A$AP Relli','5',0),(77,'A$AP Baller','1',0),(78,'A$AP Baller','2',0),(79,'A$AP Baller','3',0),(80,'A$AP Baller','4',0),(81,'A$AP Baller','5',0),(82,'A$AP Josh','1',1),(83,'A$AP Josh','2',1),(84,'A$AP Josh','3',0),(85,'A$AP Josh','4',0),(86,'A$AP Josh','5',0),(87,'A$AP Illz','1',1),(88,'A$AP Illz','2',0),(89,'A$AP Illz','3',0),(90,'A$AP Illz','4',0),(91,'A$AP Illz','5',0);
/*!40000 ALTER TABLE `hw_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `idstudents` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `group_num` int NOT NULL,
  PRIMARY KEY (`idstudents`),
  UNIQUE KEY `idstudents_UNIQUE` (`idstudents`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'A$AP Rocky',1),(2,'A$AP Ferg',1),(3,'A$AP Yams',1),(4,'A$AP Dom',1),(5,'A$AP Ant',1),(6,'A$AP Nast',2),(7,'A$AP TyY',2),(8,'A$AP Bari',2),(9,'A$AP Press',2),(10,'A$AP Snacks',2),(11,'A$AP Twelvvy',3),(12,'A$AP Relli',3),(13,'A$AP Baller',3),(14,'A$AP Josh',3),(15,'A$AP Illz',3);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_groups`
--

DROP TABLE IF EXISTS `students_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_groups` (
  `idgroup` int NOT NULL,
  `date_start` date NOT NULL,
  `date_finish` date NOT NULL,
  PRIMARY KEY (`idgroup`),
  UNIQUE KEY `idgroup_UNIQUE` (`idgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_groups`
--

LOCK TABLES `students_groups` WRITE;
/*!40000 ALTER TABLE `students_groups` DISABLE KEYS */;
INSERT INTO `students_groups` VALUES (1,'2022-09-21','2022-11-21'),(2,'2022-11-21','2023-01-21'),(3,'2023-01-21','2023-03-21');
/*!40000 ALTER TABLE `students_groups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 12:03:51
