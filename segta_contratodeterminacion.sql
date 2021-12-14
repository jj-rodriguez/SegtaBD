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
-- Table structure for table `contratodeterminacion`
--

DROP TABLE IF EXISTS `contratodeterminacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contratodeterminacion` (
  `idContratoDeterminacion` int NOT NULL AUTO_INCREMENT,
  `idContrato` int DEFAULT NULL,
  `idDeterminacion` int DEFAULT NULL,
  PRIMARY KEY (`idContratoDeterminacion`),
  KEY `fk_ContratoDeterminacion_Determinacion` (`idDeterminacion`),
  KEY `fk_ContratoDeterminacion_Contrato` (`idContrato`),
  CONSTRAINT `fk_ContratoDeterminacion_Contrato` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_ContratoDeterminacion_Determinacion` FOREIGN KEY (`idDeterminacion`) REFERENCES `determinacion` (`idDeterminacion`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratodeterminacion`
--

LOCK TABLES `contratodeterminacion` WRITE;
/*!40000 ALTER TABLE `contratodeterminacion` DISABLE KEYS */;
INSERT INTO `contratodeterminacion` VALUES (8,2,4),(11,1,2),(12,1,5),(13,1,8),(14,1,6),(15,10,1),(16,10,5),(17,10,8),(18,10,4),(19,11,1),(20,11,6),(21,11,7),(22,12,1),(23,12,5),(24,12,4);
/*!40000 ALTER TABLE `contratodeterminacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14 17:35:28
