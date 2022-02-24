-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_oftalmologica
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
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'2022-03-21','10:00:00','Particular','Calle Argentina 715','Venir 15 minutos antes',1,1,1),(2,'2022-03-22','10:30:00','Seguro Privado','Calle Argentina 715','Venir 15 minutos ante',2,2,2),(3,'2022-03-22','11:00:00','Particular','Calle Argentina 715','Venir 15 minutos ante',3,3,3),(4,'2022-03-22','11:30:00','Particular','Calle Argentina 715','Venir 15 minutos ante',4,4,4),(5,'2022-03-22','10:30:00','Particular','Calle Argentina 715','Venir 15 minutos ante',5,5,5),(6,'2022-03-22','10:30:00','Seguro Privado','Calle Argentina 715','Venir 15 minutos ante',1,6,6),(7,'2022-03-22','10:30:00','Seguro Privado','Calle Argentina 715','Venir 15 minutos ante',1,1,1),(8,'2022-03-22','10:30:00','Seguro Privado','Calle Argentina 715','Venir 15 minutos ante',1,1,1),(9,'2022-03-22','10:30:00','Particular','Calle Argentina 715','Venir 15 minutos ante',1,1,1),(10,'2022-03-22','10:30:00','Particular','Calle Argentina 715','Venir 15 minutos ante',1,1,1),(11,'2022-03-22','10:30:00','Seguro Privado','Calle Argentina 715','Venir 15 minutos ante',1,1,1),(12,'2022-03-22','10:30:00','Seguro Privado','Calle Argentina 715','Venir 15 minutos ante',1,1,1);
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Isabel','7758','Isabel','Torres','Trevi'),(2,'Sebastian','4554','Sebastian','Camino','Becerra'),(3,'Mauricio','7874','Mauricio','Duarte','Gomez'),(4,'Agustin','7896','Agustin','Picoli','Gomez'),(5,'Jose','8565','Jose','Espinoza','Espinoza'),(6,'Alejandro','7454','Alejandro','Manrique','Bendrola'),(7,'Victor','7865','Victor ','De la Torre','Alaniz');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Cornea, Cataratas y Cirugia Refractiva'),(2,'Oftalmologia General'),(3,'Glaucoma'),(4,'Estrabismo'),(5,'Retina'),(6,'Uveitis');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Francisco',' Clement Fernandez',1),(2,'María Teresa',' Iradier Urrutia',1),(3,'Fernando',' Llovet Osuna',2),(4,'Jose María ','Martínez De La Casa',2),(5,'Francisco José','Muñoz Negrete',3),(6,'Lucía','Perucho González',3),(7,'Miguel a. ','Teus',4),(8,'José m.','Benítez del castillo',4),(9,'José Antonio ','Gegúndez Fernández',5),(10,'Paz ','Rodríguez Ausín',5),(11,'Rosario ','Gómez De Liaño',6),(12,'Gabriel ','Arcos Villegas',6);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22  8:16:44
