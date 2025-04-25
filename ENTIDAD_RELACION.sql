CREATE DATABASE  IF NOT EXISTS `victimas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `victimas`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: victimas
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
-- Table structure for table `acusacion`
--

DROP TABLE IF EXISTS `acusacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acusacion` (
  `id_acusacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_acusacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acusacion`
--

LOCK TABLES `acusacion` WRITE;
/*!40000 ALTER TABLE `acusacion` DISABLE KEYS */;
INSERT INTO `acusacion` VALUES (1,'NO'),(2,'SI');
/*!40000 ALTER TABLE `acusacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atipicidad_inexistencia`
--

DROP TABLE IF EXISTS `atipicidad_inexistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atipicidad_inexistencia` (
  `id_atipicidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_atipicidad`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atipicidad_inexistencia`
--

LOCK TABLES `atipicidad_inexistencia` WRITE;
/*!40000 ALTER TABLE `atipicidad_inexistencia` DISABLE KEYS */;
INSERT INTO `atipicidad_inexistencia` VALUES (1,'NO'),(2,'SI');
/*!40000 ALTER TABLE `atipicidad_inexistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `captura`
--

DROP TABLE IF EXISTS `captura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `captura` (
  `id_captura` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id_captura`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `captura`
--

LOCK TABLES `captura` WRITE;
/*!40000 ALTER TABLE `captura` DISABLE KEYS */;
INSERT INTO `captura` VALUES (1,'NO'),(2,'SI');
/*!40000 ALTER TABLE `captura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casos`
--

DROP TABLE IF EXISTS `casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casos` (
  `id_caso` int(11) NOT NULL AUTO_INCREMENT,
  `id_etapa` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `id_imputacion` int(11) DEFAULT NULL,
  `id_condena` int(11) DEFAULT NULL,
  `id_atipicidad` int(11) DEFAULT NULL,
  `id_acusacion` int(11) DEFAULT NULL,
  `id_captura` int(11) DEFAULT NULL,
  `id_victima` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_caso`),
  KEY `id_etapa` (`id_etapa`),
  KEY `id_municipio` (`id_municipio`),
  KEY `id_imputacion` (`id_imputacion`),
  KEY `id_condena` (`id_condena`),
  KEY `id_atipicidad` (`id_atipicidad`),
  KEY `id_acusacion` (`id_acusacion`),
  KEY `id_captura` (`id_captura`),
  KEY `id_victima` (`id_victima`),
  CONSTRAINT `casos_ibfk_1` FOREIGN KEY (`id_etapa`) REFERENCES `etapa` (`id_etapa`) ON DELETE SET NULL,
  CONSTRAINT `casos_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE CASCADE,
  CONSTRAINT `casos_ibfk_3` FOREIGN KEY (`id_imputacion`) REFERENCES `imputacion` (`id_imputacion`) ON DELETE SET NULL,
  CONSTRAINT `casos_ibfk_4` FOREIGN KEY (`id_condena`) REFERENCES `condena` (`id_condena`) ON DELETE SET NULL,
  CONSTRAINT `casos_ibfk_5` FOREIGN KEY (`id_atipicidad`) REFERENCES `atipicidad_inexistencia` (`id_atipicidad`) ON DELETE SET NULL,
  CONSTRAINT `casos_ibfk_6` FOREIGN KEY (`id_acusacion`) REFERENCES `acusacion` (`id_acusacion`) ON DELETE SET NULL,
  CONSTRAINT `casos_ibfk_7` FOREIGN KEY (`id_captura`) REFERENCES `captura` (`id_captura`) ON DELETE SET NULL,
  CONSTRAINT `casos_ibfk_8` FOREIGN KEY (`id_victima`) REFERENCES `total_victimas` (`id_victima`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casos`
--

LOCK TABLES `casos` WRITE;
/*!40000 ALTER TABLE `casos` DISABLE KEYS */;
INSERT INTO `casos` VALUES (123,1,30,2,2,1,2,2,1),(124,2,3,1,1,1,1,1,1),(125,2,4,1,1,1,1,1,1),(126,2,5,1,1,1,1,1,1),(127,2,5,2,1,1,1,1,1),(128,2,6,1,1,1,1,1,1),(129,2,6,2,1,1,2,2,1),(130,2,7,1,1,1,1,1,1),(131,2,8,1,1,1,1,1,1),(132,2,9,1,1,1,1,1,1),(133,2,10,1,1,1,1,1,1),(134,2,10,1,1,1,1,1,2),(135,2,10,1,1,1,1,1,3),(136,2,10,1,1,2,1,1,1),(137,2,11,1,1,1,1,1,1),(138,2,12,1,1,2,1,1,1),(139,2,12,2,1,1,1,1,2),(140,2,12,2,1,1,1,2,1),(141,2,13,1,1,1,1,1,1),(142,2,13,1,1,1,1,1,2),(143,2,13,1,1,1,1,1,3),(144,2,14,1,1,1,1,1,1),(145,2,16,1,1,1,1,1,2),(146,2,17,1,1,1,1,1,1),(147,2,18,1,1,1,1,1,1),(148,2,18,1,1,1,1,1,2),(149,2,19,1,1,1,1,1,2),(150,2,22,1,1,2,1,1,1),(151,2,23,1,1,1,1,1,1),(152,2,24,1,1,1,1,1,1),(153,2,25,1,1,1,1,1,1),(154,2,26,1,1,1,1,1,1),(155,2,27,1,1,2,1,1,1),(156,2,28,1,1,1,1,1,1),(157,2,29,1,1,2,1,1,1),(158,2,30,1,1,2,1,1,1),(159,2,31,1,1,1,1,1,1),(160,2,31,1,1,1,1,1,2),(161,2,31,1,1,1,1,1,3),(162,2,31,1,1,1,1,1,4),(163,2,31,1,1,1,1,1,5),(164,2,31,1,1,1,1,1,6),(165,2,31,1,1,2,1,1,1),(166,2,31,2,1,1,1,1,1),(167,2,32,1,1,1,1,1,3),(168,2,33,1,1,1,1,1,1),(169,2,33,1,1,1,1,1,2),(170,2,35,1,1,1,1,1,1),(171,2,37,1,1,1,1,1,1),(172,2,38,1,1,1,1,1,1),(173,2,39,1,1,1,1,1,1),(174,2,40,1,1,1,1,1,1),(175,2,41,1,1,1,1,1,1),(176,2,43,1,1,1,1,1,1),(177,2,44,1,1,2,1,1,1),(178,2,45,1,1,1,1,1,1),(179,2,46,1,1,1,1,1,2),(180,2,47,1,1,1,1,1,1),(181,2,48,1,1,1,1,1,1),(182,2,48,1,1,1,1,1,2),(183,2,49,1,1,1,1,1,1),(184,2,50,1,1,1,1,1,2),(185,2,51,1,1,1,1,1,2),(186,2,51,1,1,2,1,1,1),(187,2,53,1,1,1,1,1,1),(188,3,1,2,1,1,2,2,1),(189,3,15,2,1,1,1,1,1),(190,3,18,2,1,1,1,2,1),(191,3,21,2,1,1,2,2,1),(192,3,31,2,1,1,2,2,1),(193,3,33,2,1,1,2,2,2),(194,3,34,2,1,1,1,1,1),(195,4,2,2,1,1,2,1,1),(196,4,10,2,1,1,2,2,1),(197,4,13,2,1,1,2,2,1),(198,4,13,2,1,1,2,2,2),(199,4,13,2,2,1,2,2,1),(200,4,20,2,1,1,2,2,1),(201,4,30,2,1,1,2,2,2),(202,4,31,2,1,1,2,2,1),(203,4,36,2,1,1,2,2,1),(204,4,38,2,1,1,2,2,1),(205,4,42,2,1,1,2,2,2),(206,4,52,2,1,1,2,2,1),(207,5,30,1,1,1,1,1,1);
/*!40000 ALTER TABLE `casos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condena`
--

DROP TABLE IF EXISTS `condena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condena` (
  `id_condena` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_condena`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condena`
--

LOCK TABLES `condena` WRITE;
/*!40000 ALTER TABLE `condena` DISABLE KEYS */;
INSERT INTO `condena` VALUES (1,'NO'),(2,'SI');
/*!40000 ALTER TABLE `condena` ENABLE KEYS */;
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
-- Table structure for table `etapa`
--

DROP TABLE IF EXISTS `etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapa` (
  `id_etapa` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_etapa` varchar(100) NOT NULL,
  PRIMARY KEY (`id_etapa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
INSERT INTO `etapa` VALUES (1,'EJECUCION DE PENAS'),(2,'INDAGACION'),(3,'INVESTIGACION'),(4,'JUICIO'),(5,'TERMINACION ANTICIPADA');
/*!40000 ALTER TABLE `etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_edad_victima`
--

DROP TABLE IF EXISTS `grupo_edad_victima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo_edad_victima` (
  `id_grupo_edad` int(11) NOT NULL AUTO_INCREMENT,
  `rango_edad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_grupo_edad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_edad_victima`
--

LOCK TABLES `grupo_edad_victima` WRITE;
/*!40000 ALTER TABLE `grupo_edad_victima` DISABLE KEYS */;
INSERT INTO `grupo_edad_victima` VALUES (1,'ADOLESCENTE 14 - 17'),(2,'ADULTEZ 29 - 59'),(3,'INFANCIA 6 - 11'),(4,'JUVENTUD 18 - 28'),(5,'PRE-ADOLESCENTE 12 - 13'),(6,'PRIMERA INFANCIA 0 - 5'),(7,'SIN DATO');
/*!40000 ALTER TABLE `grupo_edad_victima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imputacion`
--

DROP TABLE IF EXISTS `imputacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imputacion` (
  `id_imputacion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_imputacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imputacion`
--

LOCK TABLES `imputacion` WRITE;
/*!40000 ALTER TABLE `imputacion` DISABLE KEYS */;
INSERT INTO `imputacion` VALUES (1,'NO'),(2,'SI');
/*!40000 ALTER TABLE `imputacion` ENABLE KEYS */;
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

--
-- Table structure for table `total_victimas`
--

DROP TABLE IF EXISTS `total_victimas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_victimas` (
  `id_victima` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_victima`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_victimas`
--

LOCK TABLES `total_victimas` WRITE;
/*!40000 ALTER TABLE `total_victimas` DISABLE KEYS */;
INSERT INTO `total_victimas` VALUES (1,1),(2,2),(3,3),(4,10),(5,12),(6,14);
/*!40000 ALTER TABLE `total_victimas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-24 20:31:37
