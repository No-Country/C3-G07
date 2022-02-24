CREATE DATABASE IF NOT EXISTS `clinica_oftalmologica`
/*!40100 DEFAULT CHARACTER SET utf8 */
/*!80016 DEFAULT ENCRYPTION='N' */;
USE `clinica_oftalmologica`;
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
-- Table structure for table `cita`
--
DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita` (
  `id_cita` int NOT NULL AUTO_INCREMENT,
  `fecha_cita` date NOT NULL,
  `horario` time NOT NULL,
  `cobertura_cita` varchar(200) NOT NULL,
  `direccion_clinica` varchar(200) NOT NULL,
  `observaciones_cita` varchar(200) NOT NULL,
  `cliente_id` int DEFAULT NULL,
  `medicos_id` int DEFAULT NULL,
  `especialidad_id_especialidad` int DEFAULT NULL,
  PRIMARY KEY (`id_cita`),
  KEY `fk_cita_cliente_idx` (`cliente_id`),
  KEY `fk_cita_medicos1_idx` (`medicos_id`),
  KEY `fk_cita_especialidad1_idx` (`especialidad_id_especialidad`),
  CONSTRAINT `fk_cita_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_cita_especialidad1` FOREIGN KEY (`especialidad_id_especialidad`) REFERENCES `especialidad` (`id_especialidad`),
  CONSTRAINT `fk_cita_medicos1` FOREIGN KEY (`medicos_id`) REFERENCES `medicos` (`id_medicos`)
) ENGINE = InnoDB AUTO_INCREMENT = 66 DEFAULT CHARSET = utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `cita`
--
LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO
  `cita`
VALUES
  (
    1,
    '2022-03-21',
    '10:00:00',
    'Particular',
    'Calle Argentina 715',
    'Venir 15 minutos antes',
    1,
    1,
    1
  ),(
    2,
    '2022-03-22',
    '10:30:00',
    'Seguro Privado',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    2,
    2,
    2
  ),(
    3,
    '2022-03-22',
    '11:00:00',
    'Particular',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    3,
    3,
    3
  ),(
    4,
    '2022-03-22',
    '11:30:00',
    'Particular',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    4,
    4,
    4
  ),(
    5,
    '2022-03-22',
    '10:30:00',
    'Particular',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    5,
    5,
    5
  ),(
    6,
    '2022-03-22',
    '10:30:00',
    'Seguro Privado',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    1,
    6,
    6
  ),(
    7,
    '2022-03-22',
    '10:30:00',
    'Seguro Privado',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    1,
    1,
    1
  ),(
    8,
    '2022-03-22',
    '10:30:00',
    'Seguro Privado',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    1,
    1,
    1
  ),(
    9,
    '2022-03-22',
    '10:30:00',
    'Particular',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    1,
    1,
    1
  ),(
    10,
    '2022-03-22',
    '10:30:00',
    'Particular',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    1,
    1,
    1
  ),(
    11,
    '2022-03-22',
    '10:30:00',
    'Seguro Privado',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    1,
    1,
    1
  ),(
    12,
    '2022-03-22',
    '10:30:00',
    'Seguro Privado',
    'Calle Argentina 715',
    'Venir 15 minutos ante',
    1,
    1,
    1
  );
  /*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;
--
  -- Table structure for table `cliente`
  --
  DROP TABLE IF EXISTS `cliente`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
    `id_cliente` int NOT NULL AUTO_INCREMENT,
    `usuario` varchar(45) NOT NULL,
    `password` varchar(45) NOT NULL,
    `nombre_paciente` varchar(100) NOT NULL,
    `apellido_materno` varchar(100) NOT NULL,
    `apellido_paterno` varchar(100) NOT NULL,
    PRIMARY KEY (`id_cliente`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARSET = utf8mb3;
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `cliente`
  --
  LOCK TABLES `cliente` WRITE;
  /*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO
  `cliente`
VALUES
  (1, 'Isabel', '7758', 'Isabel', 'Torres', 'Trevi'),(
    2,
    'Sebastian',
    '4554',
    'Sebastian',
    'Camino',
    'Becerra'
  ),(3, 'Mauricio', '7874', 'Mauricio', 'Duarte', 'Gomez'),(4, 'Agustin', '7896', 'Agustin', 'Picoli', 'Gomez'),(5, 'Jose', '8565', 'Jose', 'Espinoza', 'Espinoza'),(
    6,
    'Alejandro',
    '7454',
    'Alejandro',
    'Manrique',
    'Bendrola'
  ),(
    7,
    'Victor',
    '7865',
    'Victor ',
    'De la Torre',
    'Alaniz'
  );
  /*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
--
  -- Table structure for table `especialidad`
  --
  DROP TABLE IF EXISTS `especialidad`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
    `id_especialidad` int NOT NULL AUTO_INCREMENT,
    `nombre_especialidad` varchar(100) NOT NULL,
    PRIMARY KEY (`id_especialidad`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb3;
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `especialidad`
  --
  LOCK TABLES `especialidad` WRITE;
  /*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO
  `especialidad`
VALUES
  (1, 'Cornea, Cataratas y Cirugia Refractiva'),(2, 'Oftalmologia General'),(3, 'Glaucoma'),(4, 'Estrabismo'),(5, 'Retina'),(6, 'Uveitis');
  /*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;
--
  -- Table structure for table `medicos`
  --
  DROP TABLE IF EXISTS `medicos`;
  /*!40101 SET @saved_cs_client     = @@character_set_client */;
  /*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
    `id_medicos` int NOT NULL AUTO_INCREMENT,
    `nombre_medico` varchar(45) NOT NULL,
    `apellidos_medico` varchar(45) NOT NULL,
    `especialidad_id` int NOT NULL,
    PRIMARY KEY (`id_medicos`),
    KEY `fk_medicos_especialidad1_idx` (`especialidad_id`)
  ) ENGINE = InnoDB AUTO_INCREMENT = 13 DEFAULT CHARSET = utf8mb3;
  /*!40101 SET character_set_client = @saved_cs_client */;
--
  -- Dumping data for table `medicos`
  --
  LOCK TABLES `medicos` WRITE;
  /*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO
  `medicos`
VALUES
  (1, 'Francisco', ' Clement Fernandez', 1),(2, 'María Teresa', ' Iradier Urrutia', 1),(3, 'Fernando', ' Llovet Osuna', 2),(4, 'Jose María ', 'Martínez De La Casa', 2),(5, 'Francisco José', 'Muñoz Negrete', 3),(6, 'Lucía', 'Perucho González', 3),(7, 'Miguel a. ', 'Teus', 4),(8, 'José m.', 'Benítez del castillo', 4),(9, 'José Antonio ', 'Gegúndez Fernández', 5),(10, 'Paz ', 'Rodríguez Ausín', 5),(11, 'Rosario ', 'Gómez De Liaño', 6),(12, 'Gabriel ', 'Arcos Villegas', 6);
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
-- Dump completed on 2022-02-24 16:56:32