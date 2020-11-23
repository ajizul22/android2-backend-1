-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: hire_ark
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(150) DEFAULT NULL,
  `project_desc` varchar(80) DEFAULT NULL,
  `project_type` int DEFAULT NULL,
  `project_image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (6,'Aplikasi Website Pendeteksi Penyakit Asam Urat','Pendeteksi Penyakit Asam Urat',1,NULL),(7,'Aplikasi Android Pendeteksi Penyakit Asam Urat','Pendeteksi Penyakit Maag',2,NULL),(8,'Aplikasi Android Pendeteksi Pegal Linu','Membuat Aplikasi Android Pendeteksi Pegal Linu',NULL,NULL),(9,'Aplikasi Android Pendeteksi Pegal Linu','Membuat Aplikasi Android Pendeteksi Pegal Linu',0,NULL),(10,'Aplikasi Android Pendeteksi Pegal Linu','Membuat Aplikasi Android Pendeteksi Pegal Linu',0,NULL),(11,'Aplikasi Android Pendeteksi Pegal Linu','Membuat Aplikasi Android Pendeteksi Pegal Linu',0,NULL),(12,'Aplikasi Android Pendeteksi Pegal Linu','Membuat Aplikasi Android Pendeteksi Pegal Linu',0,NULL),(13,'Aplikasi Android Pendeteksi Pegal Linu','Membuat Aplikasi Android Pendeteksi Pegal Linu',0,'filname.jpg'),(14,'Aplikasi Android Pendeteksi Pegal Linu','Membuat Aplikasi Android Pendeteksi Pegal Linu',0,'projectImage-1605596547159.png'),(15,'Aplikasi Android Arkademy','Membuat Aplikasi Android Arkademy',2,'projectImage-1605596816234.png'),(16,'Aplikasi Android Arkademy','Membuat Aplikasi Android Arkademy',2,'projectImage-1605597223752.jpg'),(17,'Aplikasi Android Arkademy','Membuat Aplikasi Android Arkademy',2,'projectImage-1605597272567.jpg'),(18,'Aplikasi Android Arkademy','Membuat Aplikasi Android Arkademy',2,'projectImage-1605597320639.jpg'),(19,'Aplikasi Android Arkademy','Membuat Aplikasi Android Arkademy',2,''),(20,'Aplikasi Android Arkademy','Membuat Aplikasi Android Arkademy',2,''),(21,'Aplikasi Android Arkademy','Membuat Aplikasi Android Arkademy',2,'projectImage-1605597438702.png');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_skill`
--

DROP TABLE IF EXISTS `tb_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_skill` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(30) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_skill`
--

LOCK TABLES `tb_skill` WRITE;
/*!40000 ALTER TABLE `tb_skill` DISABLE KEYS */;
INSERT INTO `tb_skill` VALUES (5,'Devops');
/*!40000 ALTER TABLE `tb_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_skill_engineer`
--

DROP TABLE IF EXISTS `tb_skill_engineer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_skill_engineer` (
  `skill_id_eng` int NOT NULL AUTO_INCREMENT,
  `skill_id` int DEFAULT NULL,
  `eng_name` varchar(50) NOT NULL,
  PRIMARY KEY (`skill_id_eng`),
  KEY `skill_id` (`skill_id`),
  CONSTRAINT `tb_skill_engineer_ibfk_1` FOREIGN KEY (`skill_id`) REFERENCES `tb_skill` (`skill_id`) ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_skill_engineer`
--

LOCK TABLES `tb_skill_engineer` WRITE;
/*!40000 ALTER TABLE `tb_skill_engineer` DISABLE KEYS */;
INSERT INTO `tb_skill_engineer` VALUES (5,NULL,'Rini'),(6,5,'Tono');
/*!40000 ALTER TABLE `tb_skill_engineer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(100) NOT NULL,
  `user_password` longtext NOT NULL,
  `user_level` int NOT NULL,
  `user_online` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'erdin@gmail.com','$2b$10$aouJuUQ92Z.E3ndoUV4nleCVFMlftwNf653Y0ZglikirOVSit84Q2',1,NULL,'2020-11-17 03:48:02','2020-11-17 03:48:02'),(2,'erdin1@gmail.com','$2b$10$YXAdQS/42ulVof8Mt04jTeXydvE3keXFQncln/iaoIlSiysYh.oYi',0,NULL,'2020-11-17 03:52:24','2020-11-17 03:52:24'),(3,'erdin2@gmail.com','$2b$10$83qX5p65JY5L6u7YNS7BTuInvUUEHnGLNxFKY779GqQOoQ8bpUFra',1,NULL,'2020-11-17 03:53:37','2020-11-17 03:53:37');
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

-- Dump completed on 2020-11-23  8:56:24
