-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: segta
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `analisisdeterminacion`
--

DROP TABLE IF EXISTS `analisisdeterminacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analisisdeterminacion` (
  `idAnalisisDeterminacion` int NOT NULL AUTO_INCREMENT,
  `idAnalisis` int NOT NULL,
  `idDeterminacion` int NOT NULL,
  `valor` varchar(20) NOT NULL,
  PRIMARY KEY (`idAnalisisDeterminacion`),
  KEY `fk_analisisDeterminacion_analisis_idx` (`idAnalisis`),
  KEY `fk_analisisDeterminacion_determinacion_idx` (`idDeterminacion`),
  CONSTRAINT `fk_analisisDeterminacion_analisis` FOREIGN KEY (`idAnalisis`) REFERENCES `analisis` (`idAnalisis`),
  CONSTRAINT `fk_analisisDeterminacion_determinacion` FOREIGN KEY (`idDeterminacion`) REFERENCES `determinacion` (`idDeterminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analisisdeterminacion`
--

LOCK TABLES `analisisdeterminacion` WRITE;
/*!40000 ALTER TABLE `analisisdeterminacion` DISABLE KEYS */;
INSERT INTO `analisisdeterminacion` VALUES (2,1,6,'45'),(6,2,2,'34'),(7,2,2,'3'),(8,2,1,'150'),(11,2,7,'125'),(12,3,1,'123'),(13,3,5,'11'),(14,4,1,'123'),(15,4,5,'1234'),(16,5,3,'122'),(17,5,6,'455'),(18,6,1,'123'),(19,6,5,'23'),(20,6,8,'3456'),(21,6,4,'123'),(22,7,6,''),(23,7,1,''),(24,7,6,''),(25,7,1,'456'),(26,7,6,'POSITIVO'),(27,8,1,'25'),(28,8,4,'25'),(29,8,6,'123'),(30,9,6,'458');
/*!40000 ALTER TABLE `analisisdeterminacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14 17:35:29
