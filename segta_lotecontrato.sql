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
-- Table structure for table `lotecontrato`
--

DROP TABLE IF EXISTS `lotecontrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lotecontrato` (
  `idloteContrato` int NOT NULL AUTO_INCREMENT,
  `color` varchar(45) NOT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `cantLotes` int DEFAULT NULL,
  `maxTambores` int DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `idContrato` int NOT NULL,
  `item` int DEFAULT NULL,
  PRIMARY KEY (`idloteContrato`),
  KEY `fk_loteContrato_Contrato_idx` (`idContrato`),
  CONSTRAINT `fk_loteContrato_Contrato` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lotecontrato`
--

LOCK TABLES `lotecontrato` WRITE;
/*!40000 ALTER TABLE `lotecontrato` DISABLE KEYS */;
INSERT INTO `lotecontrato` VALUES (1,'Light Amber (50-85 nm)','cerrado',36,40,'2020-08-27',1,NULL),(2,'Extra Light Amber(34-50 nm)','abierto',20,48,'0021-02-01',1,NULL),(7,'White (17-34 nm)','abierto',10,80,'0020-09-03',10,NULL),(8,'Extra Light Amber(34-50 nm)','abierto',12,80,'0020-09-03',10,NULL),(9,'Amber (85-114 nm)','abierto',12,19000,'0020-12-01',1,NULL),(10,'White (17-34 nm)','abierto',1,20000,'0020-10-15',11,1),(11,'Light Amber (50-85 nm)','abierto',3,20000,'0020-11-26',11,1);
/*!40000 ALTER TABLE `lotecontrato` ENABLE KEYS */;
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
