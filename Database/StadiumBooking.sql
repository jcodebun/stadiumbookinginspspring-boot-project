CREATE DATABASE  IF NOT EXISTS `stadiumbokoingsp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `stadiumbokoingsp`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: stadiumbokoingsp
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact` varchar(755) DEFAULT NULL,
  `email` varchar(755) DEFAULT NULL,
  `first_name` varchar(755) DEFAULT NULL,
  `last_name` varchar(755) DEFAULT NULL,
  `number_of_ticket` bigint DEFAULT NULL,
  `stadium_name` varchar(755) DEFAULT NULL,
  `stadium_id` bigint DEFAULT NULL,
  `status` varchar(755) DEFAULT NULL,
  `total_price` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'+1 (435) 871-8581','Admin@gmail.com','admin','Admin',5,'Chinna',3,'Canceled',1500,1),(2,'+1 (556) 959-2357','hulixicoga@mailinator.com','Hamish','Burks',4,'Chinna',3,'Cancel',1200,12);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_number` varchar(755) DEFAULT NULL,
  `email` varchar(755) DEFAULT NULL,
  `expire_date` varchar(755) DEFAULT NULL,
  `name_on_card` varchar(755) DEFAULT NULL,
  `total_price` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'4543535','Admin@gmail.com','2023-05-23','fhdfh',1500),(2,'4543535','hulixicoga@mailinator.com','2023-05-23','gdfg',1200);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadium` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `number_of_seat` bigint DEFAULT NULL,
  `stadium_name` varchar(755) DEFAULT NULL,
  `ticket_price` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (2,35000,'Chepak',500),(3,49991,'Chinna',300);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(755) DEFAULT NULL,
  `first_name` varchar(755) DEFAULT NULL,
  `gender` varchar(755) DEFAULT NULL,
  `last_name` varchar(755) DEFAULT NULL,
  `password` varchar(755) DEFAULT NULL,
  `phone_number` varchar(755) DEFAULT NULL,
  `user_role` varchar(755) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'1974-12-27','Admin@gmail.com','admin','Male','Admin','Pa$$w0rd!','+1 (435) 871-8581','Admin'),(2,'1981-11-22','sekelysoqo@mailinator.com','Riley','Male','Wagner','Pa$$w0rd!','+1 (412) 185-8679','User'),(4,'2017-03-01','jukaradov@mailinator.com','Destiny','Male','Moss','Pa$$w0rd!','+1 (428) 113-3052','User'),(5,'1974-09-18','kebycyhafu@mailinator.com','Jolie','Male','Boyer','Pa$$w0rd!','+1 (327) 772-2484','User'),(6,'2018-02-16','wevazulado@mailinator.com','Meghan','Male','Head','Pa$$w0rd!','+1 (581) 653-2355','User'),(7,'1980-12-23','demuzahefu@mailinator.com','Rebecca','Male','Johns','Pa$$w0rd!','+1 (308) 648-9336','User'),(8,'1979-04-28','potusur@mailinator.com','Denise','Male','Joyner','Pa$$w0rd!','+1 (545) 306-2271','User'),(9,'1984-07-10','buvarola@mailinator.com','Isadora','Male','Le','Pa$$w0rd!','+1 (977) 112-4548','User'),(10,'1995-01-17','hyvesugaqu@mailinator.com','MacKensie','Male','Avery','Pa$$w0rd!','+1 (184) 458-6947','Admin'),(11,'2020-07-16','qikezely@mailinator.com','Amber','Male','Montoya','Pa$$w0rd!','+1 (607) 788-4065','User'),(12,'2020-08-23','hulixicoga@mailinator.com','Hamish','Male','Burks','Pa$$w0rd!','+1 (556) 959-2357','User');
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

-- Dump completed on 2023-05-24 10:13:49
