-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tutoria
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
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Facultad` varchar(100) DEFAULT NULL,
  `Creditos` int(11) NOT NULL,
  `Horarios` datetime DEFAULT NULL,
  `Id_Docente` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Materia_Id_Docente` (`Id_Docente`),
  CONSTRAINT `fk_Materia_Id_Docente` FOREIGN KEY (`Id_Docente`) REFERENCES `docente` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Matemáticas Básicas','Facultad de Ciencias',3,'2025-08-25 08:00:00',1),(2,'Álgebra Lineal','Facultad de Ciencias',4,'2025-08-26 10:00:00',2),(3,'Cálculo Diferencial','Facultad de Ciencias',4,'2025-08-27 14:00:00',3),(4,'Cálculo Integral','Facultad de Ciencias',4,'2025-08-28 08:00:00',4),(5,'Estadística I','Facultad de Ciencias',3,'2025-08-29 10:00:00',5),(6,'Estadística II','Facultad de Ciencias',3,'2025-08-30 12:00:00',6),(7,'Física Mecánica','Facultad de Ciencias',4,'2025-09-01 08:00:00',7),(8,'Física Ondas','Facultad de Ciencias',4,'2025-09-02 10:00:00',8),(9,'Química General','Facultad de Ciencias',3,'2025-09-03 14:00:00',9),(10,'Biología Celular','Facultad de Ciencias',3,'2025-09-04 08:00:00',10),(11,'Programación I','Facultad de Ingeniería',4,'2025-09-05 08:00:00',1),(12,'Programación II','Facultad de Ingeniería',4,'2025-09-06 10:00:00',2),(13,'Bases de Datos','Facultad de Ingeniería',3,'2025-09-07 12:00:00',3),(14,'Sistemas Operativos','Facultad de Ingeniería',4,'2025-09-08 14:00:00',4),(15,'Redes de Computadores','Facultad de Ingeniería',3,'2025-09-09 08:00:00',5),(16,'Inteligencia Artificial','Facultad de Ingeniería',4,'2025-09-10 10:00:00',6),(17,'Historia de Colombia','Facultad de Humanidades',2,'2025-09-11 08:00:00',7),(18,'Filosofía Moderna','Facultad de Humanidades',2,'2025-09-12 10:00:00',8),(19,'Literatura Universal','Facultad de Humanidades',2,'2025-09-13 12:00:00',9),(20,'Inglés Avanzado','Facultad de Humanidades',3,'2025-09-14 14:00:00',10);
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-23 15:07:34
