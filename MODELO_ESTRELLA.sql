CREATE DATABASE  IF NOT EXISTS `victimas1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `victimas1`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: victimas1
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `casos`
--

DROP TABLE IF EXISTS `casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casos` (
  `id_caso` int(11) NOT NULL AUTO_INCREMENT,
  `id_municipio` int(11) DEFAULT NULL,
  `etapa` varchar(30) DEFAULT NULL,
  `imputacion` varchar(30) DEFAULT NULL,
  `condena` varchar(30) DEFAULT NULL,
  `atipicidad_inexistencia` varchar(30) DEFAULT NULL,
  `acusacion` varchar(30) DEFAULT NULL,
  `captura` varchar(30) DEFAULT NULL,
  `grupo_edad_victima` varchar(30) DEFAULT NULL,
  `total_victima` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_caso`),
  KEY `id_municipio` (`id_municipio`),
  CONSTRAINT `casos_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos`
--

LOCK TABLES `casos` WRITE;
/*!40000 ALTER TABLE `casos` DISABLE KEYS */;
INSERT INTO `casos` VALUES (1,30,'EJECUCION DE PENAS','SI','SI','NO','SI','SI','PRIMERA INFANCIA 0 - 5','1'),(2,3,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(3,4,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(4,5,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(5,5,'INDAGACION','SI','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(6,5,'INDAGACION','SI','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(7,6,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(8,6,'INDAGACION','SI','NO','NO','SI','SI','PRE-ADOLESCENTE 12 - 13','1'),(9,7,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(10,8,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(11,9,'INDAGACION','NO','NO','NO','NO','NO','INFANCIA 6 - 11','1'),(12,9,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(13,9,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(14,10,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(15,10,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','2'),(16,10,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','3'),(17,10,'INDAGACION','NO','NO','NO','NO','NO','ADULTEZ 29 - 59','1'),(18,10,'INDAGACION','NO','NO','NO','NO','NO','INFANCIA 6 - 11','1'),(19,10,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','3'),(20,10,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(21,10,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','3'),(22,10,'INDAGACION','NO','NO','SI','NO','NO','ADOLESCENTE 14 - 17','1'),(23,10,'INDAGACION','NO','NO','SI','NO','NO','INFANCIA 6 - 11','1'),(24,10,'INDAGACION','NO','NO','SI','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(25,10,'INDAGACION','NO','NO','SI','NO','NO','SIN DATO','1'),(26,11,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(27,11,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(28,12,'INDAGACION','NO','NO','SI','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(29,12,'INDAGACION','SI','NO','NO','NO','NO','INFANCIA 6 - 11','2'),(30,12,'INDAGACION','SI','NO','NO','NO','SI','SIN DATO','1'),(31,13,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(32,13,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','3'),(33,13,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(34,13,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(35,13,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','2'),(36,14,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(37,16,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','2'),(38,17,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(39,18,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(40,18,'INDAGACION','NO','NO','NO','NO','NO','INFANCIA 6 - 11','2'),(41,19,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','2'),(42,22,'INDAGACION','NO','NO','SI','NO','NO','ADOLESCENTE 14 - 17','1'),(43,23,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(44,24,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(45,24,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(46,25,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(47,26,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(48,27,'INDAGACION','NO','NO','SI','NO','NO','INFANCIA 6 - 11','1'),(49,28,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(50,29,'INDAGACION','NO','NO','SI','NO','NO','ADOLESCENTE 14 - 17','1'),(51,30,'INDAGACION','NO','NO','SI','NO','NO','ADOLESCENTE 14 - 17','1'),(52,31,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(53,31,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','10'),(54,31,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','12'),(55,31,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','14'),(56,31,'INDAGACION','NO','NO','NO','NO','NO','INFANCIA 6 - 11','1'),(57,31,'INDAGACION','NO','NO','NO','NO','NO','JUVENTUD 18 - 28','1'),(58,31,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(59,31,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','2'),(60,31,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(61,31,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','3'),(62,31,'INDAGACION','NO','NO','SI','NO','NO','SIN DATO','1'),(63,31,'INDAGACION','SI','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(64,32,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','3'),(65,33,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(66,33,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','2'),(67,33,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(68,35,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(69,37,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(70,38,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(71,39,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(72,40,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(73,41,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(74,43,'INDAGACION','NO','NO','NO','NO','NO','PRE-ADOLESCENTE 12 - 13','1'),(75,44,'INDAGACION','NO','NO','SI','NO','NO','ADOLESCENTE 14 - 17','1'),(76,45,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(77,46,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','2'),(78,47,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(79,48,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(80,48,'INDAGACION','NO','NO','NO','NO','NO','INFANCIA 6 - 11','1'),(81,48,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','1'),(82,48,'INDAGACION','NO','NO','NO','NO','NO','SIN DATO','2'),(83,49,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(84,50,'INDAGACION','NO','NO','NO','NO','NO','PRIMERA INFANCIA 0 - 5','2'),(85,51,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','2'),(86,51,'INDAGACION','NO','NO','SI','NO','NO','INFANCIA 6 - 11','1'),(87,53,'INDAGACION','NO','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(88,53,'INDAGACION','NO','NO','NO','NO','NO','INFANCIA 6 - 11','1'),(89,1,'INVESTIGACION','SI','NO','NO','SI','SI','ADOLESCENTE 14 - 17','1'),(90,15,'INVESTIGACION','SI','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(91,18,'INVESTIGACION','SI','NO','NO','NO','SI','ADOLESCENTE 14 - 17','1'),(92,21,'INVESTIGACION','SI','NO','NO','SI','SI','PRE-ADOLESCENTE 12 - 13','1'),(93,31,'INVESTIGACION','SI','NO','NO','SI','SI','PRE-ADOLESCENTE 12 - 13','1'),(94,33,'INVESTIGACION','SI','NO','NO','SI','SI','SIN DATO','2'),(95,34,'INVESTIGACION','SI','NO','NO','NO','NO','ADOLESCENTE 14 - 17','1'),(96,2,'JUICIO','SI','NO','NO','SI','NO','ADOLESCENTE 14 - 17','1'),(97,10,'JUICIO','SI','NO','NO','SI','SI','ADOLESCENTE 14 - 17','1'),(98,10,'JUICIO','SI','NO','NO','SI','SI','INFANCIA 6 - 11','1'),(99,13,'JUICIO','SI','NO','NO','SI','SI','PRE-ADOLESCENTE 12 - 13','1'),(100,13,'JUICIO','SI','NO','NO','SI','SI','PRE-ADOLESCENTE 12 - 13','2'),(101,13,'JUICIO','SI','NO','NO','SI','SI','SIN DATO','1'),(102,13,'JUICIO','SI','SI','NO','SI','SI','SIN DATO','1'),(103,20,'JUICIO','SI','NO','NO','SI','SI','PRE-ADOLESCENTE 12 - 13','1'),(104,30,'JUICIO','SI','NO','NO','SI','SI','PRE-ADOLESCENTE 12 - 13','2'),(105,31,'JUICIO','SI','NO','NO','SI','SI','ADOLESCENTE 14 - 17','1'),(106,36,'JUICIO','SI','NO','NO','SI','SI','SIN DATO','1'),(107,38,'JUICIO','SI','NO','NO','SI','SI','ADOLESCENTE 14 - 17','1'),(108,42,'JUICIO','SI','NO','NO','SI','SI','ADOLESCENTE 14 - 17','2'),(109,52,'JUICIO','SI','NO','NO','SI','SI','ADOLESCENTE 14 - 17','1'),(110,30,'TERMINACION ANTICIPADA','NO','NO','NO','NO','NO','PRIMERA INFANCIA 0 - 5','1');
/*!40000 ALTER TABLE `casos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) NOT NULL,
  `nombre_departamento` varchar(100) NOT NULL,
  PRIMARY KEY (`id_departamento`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais_nacimiento` (`id_pais`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,1,'Antioquia'),(2,1,'Arauca'),(3,1,'Atlantico'),(4,1,'BOGOTA'),(5,1,'Bolivar'),(6,1,'Caldas'),(7,1,'Cauca'),(8,1,'Cesar'),(9,1,'Choco'),(10,1,'Cundinamarca'),(11,2,'Huila'),(12,1,'La Guajira'),(13,1,'Magdalena'),(14,1,'Meta'),(15,3,'Nariño'),(16,1,'Norte de Santander'),(17,1,'Quindio'),(18,1,'Risaralda'),(19,1,'Santander'),(20,1,'Sucre'),(21,2,'Tolima'),(22,1,'Valle del Cauca');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `id_departamento` int(11) NOT NULL,
  `nombre_municipio` varchar(100) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,8,'AGUSTÍN CODAZZI'),(2,1,'APARTADO'),(3,2,'ARAUCA'),(4,17,'ARMENIA'),(5,19,'BARRANCABERMEJA'),(6,3,'BARRANQUILLA'),(7,6,'BELALCAZAR'),(8,18,'BELEN DE UMBRIA'),(9,1,'BELLO'),(10,4,'BOGOTA'),(11,19,'BUCARAMANGA'),(12,22,'CALI'),(13,5,'CARTAGENA'),(14,10,'CHIA'),(15,6,'CHINCHINA'),(16,21,'COELLO'),(17,20,'COROZAL'),(18,16,'CUCUTA'),(19,18,'DOSQUEBRADAS'),(20,1,'EL CARMEN DE VIBORAL'),(21,1,'EL SANTUARIO'),(22,8,'GAMARRA'),(23,1,'GIRARDOTA'),(24,21,'IBAGUE'),(25,15,'IPIALES'),(26,1,'ITAGUI'),(27,16,'LA ESPERANZA'),(28,12,'MAICAO'),(29,3,'MALAMBO'),(30,6,'MANIZALES'),(31,1,'MEDELLIN'),(32,11,'NEIVA'),(33,18,'PEREIRA'),(34,7,'POPAYAN'),(35,19,'PUERTO PARRA'),(36,22,'RESTREPO'),(37,12,'RIOHACHA'),(38,1,'RIONEGRO'),(39,9,'RIOSUCIO'),(40,19,'SABANA DE TORRES'),(41,3,'SABANALARGA'),(42,1,'SABANETA'),(43,6,'SALAMINA'),(44,8,'SAN ALBERTO'),(45,10,'SAN BERNARDO'),(46,16,'SAN CAYETANO'),(47,14,'SAN MARTIN'),(48,13,'SANTA MARTA'),(49,8,'VALLEDUPAR'),(50,6,'VICTORIA'),(51,14,'VILLAVICENCIO'),(52,22,'YOTOCO'),(53,10,'ZIPAQUIRA');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais_nacimiento`
--

DROP TABLE IF EXISTS `pais_nacimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais_nacimiento` (
  `id_pais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais_nacimiento`
--

LOCK TABLES `pais_nacimiento` WRITE;
/*!40000 ALTER TABLE `pais_nacimiento` DISABLE KEYS */;
INSERT INTO `pais_nacimiento` VALUES (1,'Colombia'),(2,'DESCONOCIDO'),(3,'Venezuela');
/*!40000 ALTER TABLE `pais_nacimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-24 19:41:23
