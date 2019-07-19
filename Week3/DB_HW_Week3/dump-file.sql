-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: todo
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client
= utf8mb4 ;
CREATE TABLE `items`
(
  `Item_ID` int
(5) NOT NULL AUTO_INCREMENT,
  `List_ID` int
(5) NOT NULL,
  `Item_Name` varchar
(30) NOT NULL,
  `Completed` varchar
(10) DEFAULT 'Not Done',
  `Remarks` varchar
(100) DEFAULT NULL,
  PRIMARY KEY
(`Item_ID`),
  KEY `FK_items`
(`List_ID`),
  CONSTRAINT `FK_items` FOREIGN KEY
(`List_ID`) REFERENCES `lists`
(`List_ID`),
  CONSTRAINT `CHK_items_Completed` CHECK
(((`Completed` = _cp850'Done') or
(`Completed` = _cp850'Not Done')))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `
items`
VALUES
  (1, 1, 'Apple', 'Done', 'Red and fresh'),
  (2, 2, 'Pindakaas', 'Not Done', 'one pieces and LIDL'),
  (3, 2, 'Pindakaas', 'Not Done', 'one pieces and LIDL'),
  (4, 2, 'Pindakaas', 'Not Done', 'one pieces and LIDL'),
  (5, 2, 'Pindakaas', 'Not Done', 'one pieces and LIDL');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client
= utf8mb4 ;
CREATE TABLE `lists`
(
  `List_ID` int
(5) NOT NULL AUTO_INCREMENT,
  `User_ID` int
(5) NOT NULL,
  `List_Name` varchar
(30) NOT NULL,
  `Reminder` datetime DEFAULT NULL,
  PRIMARY KEY
(`List_ID`),
  KEY `FK_lists`
(`User_ID`),
  CONSTRAINT `FK_lists` FOREIGN KEY
(`User_ID`) REFERENCES `users`
(`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `
lists`
VALUES
  (1, 1, 'Shopping', NULL),
  (2, 1, 'Cooking', NULL),
  (3, 1, 'Working', NULL),
  (4, 3, 'Travelling', NULL),
  (5, 3, 'Party', NULL),
  (7, 4, 'Lego', NULL),
  (8, 5, 'Hot Weels', NULL),
  (10, 3, 'Playing', NULL),
  (11, 9, 'Arts Fair', NULL),
  (12, 3, 'Banking', '2001-01-20 20:00:00');
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS 'users';
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client
= utf8mb4 ;
CREATE TABLE `users`
(
  `User_ID` int
(5) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar
(50) NOT NULL,
  `User_Password` varchar
(20) NOT NULL,
  PRIMARY KEY
(`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `
users`
VALUES
  (1, 'Ramazan', '123'),
  (3, 'Nesibe', '123'),
  (4, 'Okhan', '123'),
  (5, 'Orhan', '123'),
  (6, 'Mustafa', '123'),
  (7, 'Omer', '123'),
  (8, 'Mehmet', '123'),
  (9, 'Nuriye', '123'),
  (11, 'Ramazan', '123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-19  7:34:01
