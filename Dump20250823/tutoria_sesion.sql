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
-- Table structure for table `sesion`
--

DROP TABLE IF EXISTS `sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaHora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Comentario` text DEFAULT NULL,
  `Id_Tutoria` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Sesion_Id_Tutoria` (`Id_Tutoria`),
  CONSTRAINT `fk_Sesion_Id_Tutoria` FOREIGN KEY (`Id_Tutoria`) REFERENCES `tutoria` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sesion`
--

LOCK TABLES `sesion` WRITE;
/*!40000 ALTER TABLE `sesion` DISABLE KEYS */;
INSERT INTO `sesion` VALUES (1,'2025-01-15 14:00:00','Primera sesión de la tutoría, presentación general.',1),(2,'2025-01-17 19:00:00','Resolución de dudas sobre los primeros temas.',2),(3,'2025-01-20 16:30:00','Revisión de ejercicios prácticos.',3),(4,'2025-01-22 15:00:00','Discusión sobre conceptos clave de la materia.',4),(5,'2025-01-25 21:00:00','Avance en los proyectos grupales.',5),(6,'2025-01-28 13:30:00','Aclaración de dudas sobre el parcial próximo.',6),(7,'2025-02-02 14:15:00','Retroalimentación de tareas.',7),(8,'2025-02-04 18:00:00','Práctica guiada en laboratorio.',8),(9,'2025-02-07 20:45:00','Revisión de notas y seguimiento académico.',9),(10,'2025-02-10 22:00:00','Discusión sobre temas avanzados de la asignatura.',10),(11,'2025-02-12 14:30:00','Consultas previas al examen parcial.',11),(12,'2025-02-14 19:30:00','Análisis de casos prácticos en grupo.',12),(13,'2025-02-17 15:45:00','Revisión de calificaciones parciales.',13),(14,'2025-02-20 17:00:00','Sesión de preparación para la exposición.',14),(15,'2025-02-23 13:00:00','Aclaración de conceptos fundamentales.',15),(16,'2025-02-25 21:30:00','Trabajo en equipo con ejercicios aplicados.',16),(17,'2025-02-28 16:00:00','Consultoría sobre proyecto final.',17),(18,'2025-03-02 18:45:00','Revisión de avances individuales.',18),(19,'2025-03-05 14:00:00','Simulación de examen para retroalimentación.',19),(20,'2025-03-08 20:00:00','Cierre de la tutoría y entrega de informes.',20);
/*!40000 ALTER TABLE `sesion` ENABLE KEYS */;
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
