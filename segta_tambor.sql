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
-- Table structure for table `tambor`
--

DROP TABLE IF EXISTS `tambor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tambor` (
  `idTambor` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `senasa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bruto` float NOT NULL,
  `tara` float NOT NULL,
  `neto` float NOT NULL,
  `estado` varchar(45) NOT NULL,
  `idDescarga` int NOT NULL,
  `humedad` float DEFAULT NULL,
  `idProveedor` int NOT NULL,
  `idLote` int DEFAULT NULL,
  `idColor` int DEFAULT NULL,
  `idSector` int DEFAULT NULL,
  `trazabilidad` tinyint DEFAULT NULL,
  `estadoTambor` varchar(20) DEFAULT NULL,
  `observaciones` varchar(50) DEFAULT NULL,
  `idProveedorVenta` int DEFAULT NULL,
  `senasanueva` varchar(20) DEFAULT NULL,
  `remito` varchar(45) DEFAULT NULL,
  `estadoDextrina` varchar(45) DEFAULT NULL,
  `dextrina` float DEFAULT NULL,
  `recepcion` datetime DEFAULT NULL,
  `idPool` int DEFAULT NULL,
  `identificador` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTambor`),
  KEY `idProveedor_idx` (`idProveedor`),
  KEY `idDescargas_idx` (`idDescarga`),
  KEY `idLote_idx` (`idLote`),
  KEY `idColor_idx` (`idColor`),
  KEY `fk_tambor_sector_idx` (`idSector`),
  KEY `fk_tambor_ProveedorVenta` (`idProveedorVenta`),
  KEY `fk_tambor_pool_idx` (`idPool`),
  CONSTRAINT `fk_tambor_color` FOREIGN KEY (`idColor`) REFERENCES `color` (`idColor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tambor_descarga` FOREIGN KEY (`idDescarga`) REFERENCES `descargas` (`idDescargas`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tambor_lote` FOREIGN KEY (`idLote`) REFERENCES `lote` (`idLote`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tambor_pool` FOREIGN KEY (`idPool`) REFERENCES `pool` (`idpool`),
  CONSTRAINT `fk_tambor_proveedor` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`idProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tambor_ProveedorVenta` FOREIGN KEY (`idProveedorVenta`) REFERENCES `proveedor` (`idProveedor`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_tambor_sector` FOREIGN KEY (`idSector`) REFERENCES `sector` (`idSector`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tambor`
--

LOCK TABLES `tambor` WRITE;
/*!40000 ALTER TABLE `tambor` DISABLE KEYS */;
INSERT INTO `tambor` VALUES (11,2000001,'SIN ETIQUETA',219,19,200,'descargado',19,NULL,2,NULL,NULL,5,1,NULL,'',199,NULL,NULL,'0',NULL,NULL,NULL,NULL),(12,2,'SIN ETIQUETA',300,50,250,'despachado',19,96,2,1,7,2,1,NULL,'',1,NULL,NULL,'0',NULL,NULL,NULL,NULL),(13,3,'',250,50,200,'despachado',20,63,2,1,4,2,1,'nuevo','',2,NULL,NULL,'0',NULL,NULL,NULL,NULL),(14,4,'SIN ETIQUETA',626,26,600,'loteado',20,12,1,8,5,2,1,'reacondicionado','',68,NULL,NULL,'0',NULL,NULL,NULL,NULL),(15,5,'64fd',250,50,200,'despachado',20,67,2,3,1,1,1,NULL,'',1,NULL,NULL,'0',NULL,NULL,NULL,NULL),(20,7,'12312312',234,12,222,'loteado',19,98,184,7,1,1,1,'nuevo','Prueba de tambor',68,'995847',NULL,'0',NULL,NULL,NULL,NULL),(22,8,'sdfs',123,12,111,'despachado',20,10,1,13,1,2,1,'nuevo','aaa',1,NULL,NULL,'0',NULL,NULL,NULL,NULL),(34,9,'562',550,50,500,'despachado',32,78,2,6,1,1,0,'nuevo','',3,NULL,NULL,'0',NULL,NULL,NULL,NULL),(35,10,'',620,20,600,'loteado',31,87,184,7,1,1,1,'golpeado','',68,'12345678',NULL,'0',NULL,NULL,NULL,NULL),(36,11,'SIN ETIQUETA',625,52,573,'despachado',31,58,2,2,1,1,1,'nuevo','',1,NULL,NULL,'0',NULL,NULL,NULL,NULL),(37,12,'SIN ETIQUETA',626,52,574,'despachado',20,58,2,2,1,1,1,'reacondicionado','',2,NULL,NULL,'0',NULL,NULL,NULL,NULL),(38,13,'SIN ETIQUETA',250,48,202,'despachado',31,62,2,6,5,1,1,'nuevo','',3,NULL,NULL,'0',NULL,NULL,NULL,NULL),(39,14,'SIN ETIQUETA',456,23,433,'loteado',33,10,184,7,3,2,0,'nuevo','',68,NULL,NULL,'0',NULL,NULL,NULL,NULL),(40,15,'',214,23,191,'loteado',19,12,184,7,3,3,1,'nuevo','',68,'46546546',NULL,'0',NULL,NULL,NULL,NULL),(41,16,NULL,320,16,304,'loteado',22,11,184,8,3,2,0,'nuevo','',68,NULL,NULL,'0',NULL,NULL,NULL,NULL),(43,17,NULL,320,16,304,'despachado',19,11,1,14,1,1,1,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(44,18,NULL,315,15,300,'loteado',41,11,184,16,1,NULL,1,'reacondicionado','sucio',3,NULL,NULL,'0',NULL,NULL,NULL,NULL),(45,19,NULL,325,16,309,'despachado',41,12,3,13,2,4,1,'golpeado','sucio',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(46,20,NULL,317,16,301,'loteado',41,11,145,16,1,NULL,1,'reacondicionado','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(47,21,'1258963',320,15,305,'despachado',41,11,1,17,2,NULL,1,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(48,22,'65465456',312,16.5,295.5,'despachado',41,11,184,14,1,3,1,'nuevo','',198,NULL,NULL,'0',NULL,NULL,NULL,NULL),(49,23,'45648978',320,16.5,303.5,'clasificado',41,11,264,NULL,1,1,1,'nuevo','',145,'PEO',NULL,'0',NULL,NULL,NULL,NULL),(50,24,'654564',320,15,305,'despachado',41,14,184,17,2,NULL,0,'nuevo','aaaaa',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(51,25,'1123123',326,12,314,'despachado',41,14,184,17,2,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(52,26,'123123',316,12,304,'despachado',41,14,184,17,2,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(53,27,'1231231',316,11,305,'despachado',41,14,184,17,2,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(54,28,'43534543',316,12,304,'loteado',41,11,150,16,1,NULL,0,'nuevo','',145,NULL,NULL,'0',NULL,NULL,NULL,NULL),(55,29,'1231311',369,12,357,'descargado',41,NULL,150,NULL,1,1,0,'nuevo','',145,NULL,NULL,NULL,NULL,'2021-08-13 09:10:47',49,''),(56,30,'45646',326,12,314,'descargado',41,NULL,193,NULL,1,1,0,'nuevo','kasdlknaslkdnaksmdlñsadñla',145,NULL,NULL,NULL,NULL,'2021-08-13 09:10:47',49,NULL),(57,31,'5498489',316,16,300,'loteado',41,11,193,11,1,5,0,'nuevo','',145,NULL,NULL,'Negativo',0,'2021-08-13 09:10:47',NULL,NULL),(58,32,NULL,316,12,304,'loteado',41,11,184,16,1,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(59,33,NULL,369,12,357,'loteado',41,8,271,16,3,NULL,0,'nuevo','',49,NULL,NULL,'Negativo',0,'2021-08-13 09:10:47',NULL,NULL),(60,34,'456489',312,15,297,'loteado',41,11,95,16,1,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(61,35,'45689',310,16,294,'loteado',41,11,95,16,1,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(62,36,'4549798',316,15,301,'loteado',41,11,95,16,1,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(63,37,'456789',316,15,301,'loteado',41,11,95,16,1,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(64,38,'4569',316,12,304,'loteado',41,11,95,16,1,NULL,0,'nuevo','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(65,39,'4654564',320,15,305,'loteado',42,11,33,16,1,NULL,0,'golpeado','',NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL),(66,2000002,'123',256,22,234,'loteado',42,5,271,11,1,5,0,'nuevo','',NULL,NULL,NULL,'Positivo',1,'2021-08-13 09:10:47',NULL,NULL),(67,2000003,NULL,285,16,269,'descargado',42,5,69,NULL,1,NULL,0,'nuevo','',NULL,NULL,NULL,'Positivo',1,NULL,NULL,NULL),(68,2100001,NULL,310,12,298,'clasificado',19,85,268,NULL,1,4,0,'nuevo','',NULL,NULL,'','Negativo',0,'2021-12-13 17:07:42',NULL,NULL),(69,2100002,NULL,310,12,298,'clasificado',19,85,269,NULL,3,5,0,'nuevo','',NULL,NULL,'','Negativo',0,'2021-12-13 17:07:42',NULL,NULL),(70,2100003,NULL,350,99,251,'descargado',43,NULL,186,NULL,NULL,NULL,0,'nuevo','',NULL,NULL,'',NULL,NULL,NULL,NULL,''),(72,2100004,NULL,280,15,265,'descargado',45,NULL,68,NULL,NULL,NULL,0,'golpeado','aaaa',NULL,NULL,'',NULL,NULL,NULL,NULL,'345'),(73,2100005,NULL,250,15,235,'descargado',46,NULL,68,NULL,NULL,NULL,0,'nuevo','',NULL,NULL,'',NULL,NULL,NULL,NULL,''),(74,2100006,NULL,280,15,265,'descargado',46,NULL,184,NULL,NULL,NULL,0,'cambio','kkkkkkkkk',NULL,NULL,'',NULL,NULL,NULL,NULL,'4564656546'),(75,2100007,NULL,225,25,200,'descargado',45,NULL,1,NULL,NULL,NULL,0,'reacondicionado','',NULL,NULL,'',NULL,NULL,NULL,NULL,'85'),(76,2100008,NULL,220,20,200,'descargado',32,NULL,145,NULL,NULL,NULL,0,'golpeado','',NULL,NULL,'',NULL,NULL,NULL,NULL,'636'),(77,2100009,NULL,203,20,183,'descargado',33,NULL,4,NULL,NULL,NULL,0,'nuevo','',NULL,NULL,'',NULL,NULL,NULL,NULL,''),(78,2100010,NULL,330,33,297,'descargado',32,NULL,145,NULL,NULL,NULL,0,'nuevo','',NULL,NULL,'',NULL,NULL,NULL,NULL,''),(79,2100011,NULL,220,20,200,'descargado',42,NULL,240,NULL,NULL,NULL,0,'nuevo','',NULL,NULL,'',NULL,NULL,NULL,NULL,'w');
/*!40000 ALTER TABLE `tambor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14 17:35:27
