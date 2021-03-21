-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 192.168.10.10    Database: task
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `level` int NOT NULL,
  `estimated_duration` int NOT NULL,
  `constant_duration_value` int NOT NULL,
  `is_processed` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,3,6,18,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(2,4,6,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(3,3,10,30,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(4,4,4,16,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(5,3,5,15,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(6,1,12,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(7,1,4,4,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(8,5,6,30,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(9,3,8,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(10,1,6,6,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(11,2,10,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(12,1,6,6,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(13,4,11,44,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(14,5,3,15,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(15,1,11,11,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(16,4,6,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(17,5,4,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(18,3,11,33,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(19,2,11,22,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(20,3,8,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(21,3,11,33,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(22,1,5,5,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(23,4,5,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(24,2,7,14,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(25,2,6,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(26,3,9,27,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(27,4,6,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(28,4,7,28,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(29,1,4,4,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(30,4,5,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(31,5,9,45,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(32,2,5,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(33,2,5,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(34,2,6,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(35,5,6,30,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(36,1,10,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(37,1,10,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(38,1,10,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(39,5,12,60,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(40,4,12,48,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(41,2,6,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(42,3,8,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(43,5,10,50,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(44,3,10,30,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(45,5,8,40,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(46,5,9,45,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(47,3,3,9,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(48,4,4,16,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(49,1,12,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(50,1,7,7,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(51,1,4,4,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(52,1,10,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(53,4,8,32,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(54,3,3,9,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(55,4,10,40,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(56,4,12,48,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(57,3,10,30,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(58,2,11,22,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(59,1,7,7,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(60,2,4,8,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(61,3,4,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(62,1,3,3,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(63,1,6,6,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(64,3,3,9,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(65,4,12,48,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(66,2,11,22,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(67,3,10,30,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(68,1,7,7,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(69,3,4,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(70,1,6,6,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(71,5,4,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(72,2,7,14,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(73,5,7,35,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(74,4,5,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(75,2,11,22,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(76,4,12,48,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(77,1,4,4,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(78,2,7,14,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(79,4,3,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(80,3,10,30,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(81,1,3,3,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(82,2,10,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(83,2,12,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(84,3,9,27,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(85,4,9,36,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(86,1,7,7,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(87,4,4,16,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(88,5,4,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(89,4,4,16,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(90,2,5,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(91,5,9,45,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(92,5,12,60,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(93,3,9,27,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(94,2,12,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(95,3,9,27,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(96,1,7,7,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(97,4,4,16,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(98,4,4,16,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(99,1,7,7,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(100,4,7,28,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(101,3,9,27,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(102,2,9,18,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(103,1,9,9,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(104,5,3,15,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(105,4,5,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(106,1,9,9,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(107,5,7,35,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(108,1,6,6,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(109,1,5,5,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(110,5,9,45,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(111,1,9,9,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(112,5,8,40,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(113,5,8,40,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(114,1,9,9,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(115,1,12,12,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(116,1,3,3,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(117,5,7,35,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(118,5,12,60,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(119,1,11,11,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(120,3,7,21,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(121,1,3,3,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(122,4,10,40,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(123,2,11,22,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(124,4,9,36,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(125,3,7,21,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(126,2,4,8,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(127,4,9,36,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(128,2,10,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(129,3,8,24,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(130,1,10,10,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(131,4,11,44,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(132,4,5,20,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(133,3,9,27,0,'2021-03-21 14:21:16','2021-03-21 14:21:16'),(134,1,3,3,0,'2021-03-21 14:21:16','2021-03-21 14:21:16');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-21 18:18:55