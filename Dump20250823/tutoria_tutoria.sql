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
-- Table structure for table `tutoria`
--

DROP TABLE IF EXISTS `tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutoria` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tema` varchar(50) NOT NULL,
  `FechaHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Cupos` int(11) NOT NULL,
  `Id_Materia` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Tutoria_Id_Materia` (`Id_Materia`),
  CONSTRAINT `fk_Tutoria_Id_Materia` FOREIGN KEY (`Id_Materia`) REFERENCES `materia` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutoria`
--

LOCK TABLES `tutoria` WRITE;
/*!40000 ALTER TABLE `tutoria` DISABLE KEYS */;
INSERT INTO `tutoria` VALUES (1,'Álgebra Básica','2025-09-01 15:00:00',10,1),(2,'Cálculo Integral','2025-09-01 19:00:00',8,2),(3,'Literatura Clásica','2025-09-02 14:00:00',12,3),(4,'Historia Universal','2025-09-02 16:00:00',15,4),(5,'Física Mecánica','2025-09-03 13:30:00',10,5),(6,'Química Orgánica','2025-09-03 18:00:00',9,6),(7,'Programación I','2025-09-04 15:00:00',20,7),(8,'Base de Datos','2025-09-04 20:00:00',18,8),(9,'Estadística','2025-09-05 14:30:00',25,9),(10,'Redes de Computadoras','2025-09-05 19:00:00',15,10),(11,'Derecho Constitucional','2025-09-06 16:00:00',12,11),(12,'Psicología General','2025-09-06 21:00:00',20,12),(13,'Contabilidad I','2025-09-07 13:00:00',18,13),(14,'Marketing Digital','2025-09-07 18:00:00',22,14),(15,'Biología Celular','2025-09-08 14:00:00',15,15),(16,'Sociología','2025-09-08 17:00:00',10,16),(17,'Economía I','2025-09-09 15:30:00',20,17),(18,'Filosofía Moderna','2025-09-09 19:30:00',8,18),(19,'Inglés Técnico','2025-09-10 14:00:00',30,19),(20,'Arte y Cultura','2025-09-10 16:30:00',25,20);
/*!40000 ALTER TABLE `tutoria` ENABLE KEYS */;
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
