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
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Carrera` varchar(50) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `IdTipoDocumento` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_TipoDocumento_Id_Estudiante` (`IdTipoDocumento`),
  CONSTRAINT `fk_TipoDocumento_Id_Estudiante` FOREIGN KEY (`IdTipoDocumento`) REFERENCES `tipodocumento` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Juan','Pérez','juan.perez1@example.com','Calle 1 #12-34','Ingeniería de Sistemas','3001111111',1),(2,'María','Gómez','maria.gomez2@example.com','Carrera 2 #23-45','Administración','3002222222',2),(3,'Carlos','López','carlos.lopez3@example.com','Avenida 3 #34-56','Derecho','3003333333',1),(4,'Ana','Martínez','ana.martinez4@example.com','Calle 4 #45-67','Psicología','3004444444',3),(5,'Pedro','Ramírez','pedro.ramirez5@example.com','Carrera 5 #56-78','Ingeniería Civil','3005555555',1),(6,'Laura','Fernández','laura.fernandez6@example.com','Avenida 6 #67-89','Contaduría','3006666666',2),(7,'Andrés','Torres','andres.torres7@example.com','Calle 7 #78-90','Medicina','3007777777',3),(8,'Sofía','Hernández','sofia.hernandez8@example.com','Carrera 8 #89-12','Arquitectura','3008888888',1),(9,'Miguel','Castro','miguel.castro9@example.com','Avenida 9 #90-13','Enfermería','3009999999',2),(10,'Camila','Vargas','camila.vargas10@example.com','Calle 10 #12-23','Ingeniería de Sistemas','3010000000',3),(11,'Felipe','Mendoza','felipe.mendoza11@example.com','Carrera 11 #23-34','Administración','3011111111',1),(12,'Paula','Ríos','paula.rios12@example.com','Avenida 12 #34-45','Derecho','3012222222',2),(13,'Diego','Morales','diego.morales13@example.com','Calle 13 #45-56','Psicología','3013333333',3),(14,'Valentina','Ortiz','valentina.ortiz14@example.com','Carrera 14 #56-67','Ingeniería Civil','3014444444',1),(15,'Julián','Guerrero','julian.guerrero15@example.com','Avenida 15 #67-78','Contaduría','3015555555',2),(16,'Isabella','Jiménez','isabella.jimenez16@example.com','Calle 16 #78-89','Medicina','3016666666',3),(17,'David','Suárez','david.suarez17@example.com','Carrera 17 #89-90','Arquitectura','3017777777',1),(18,'Daniela','Córdoba','daniela.cordoba18@example.com','Avenida 18 #90-12','Enfermería','3018888888',2),(19,'Santiago','Muñoz','santiago.munoz19@example.com','Calle 19 #12-34','Ingeniería de Sistemas','3019999999',3),(20,'Natalia','Reyes','natalia.reyes20@example.com','Carrera 20 #23-45','Administración','3020000000',1),(21,'Tomás','García','tomas.garcia21@example.com','Avenida 21 #34-56','Derecho','3021111111',2),(22,'Lucía','Mejía','lucia.mejia22@example.com','Calle 22 #45-67','Psicología','3022222222',3),(23,'Mateo','Castaño','mateo.castano23@example.com','Carrera 23 #56-78','Ingeniería Civil','3023333333',1),(24,'Gabriela','Salazar','gabriela.salazar24@example.com','Avenida 24 #67-89','Contaduría','3024444444',2),(25,'Esteban','Montoya','esteban.montoya25@example.com','Calle 25 #78-90','Medicina','3025555555',3),(26,'Manuela','Ruiz','manuela.ruiz26@example.com','Carrera 26 #89-12','Arquitectura','3026666666',1),(27,'Sebastián','Pardo','sebastian.pardo27@example.com','Avenida 27 #90-13','Enfermería','3027777777',2),(28,'Carolina','Cruz','carolina.cruz28@example.com','Calle 28 #12-23','Ingeniería de Sistemas','3028888888',3),(29,'Alejandro','Gómez','alejandro.gomez29@example.com','Carrera 29 #23-34','Administración','3029999999',1),(30,'Martina','Herrera','martina.herrera30@example.com','Avenida 30 #34-45','Derecho','3030000000',2),(31,'Samuel','Moreno','samuel.moreno31@example.com','Calle 31 #45-56','Psicología','3031111111',3),(32,'Juliana','Molina','juliana.molina32@example.com','Carrera 32 #56-67','Ingeniería Civil','3032222222',1),(33,'Nicolás','Arango','nicolas.arango33@example.com','Avenida 33 #67-78','Contaduría','3033333333',2),(34,'Sara','Valencia','sara.valencia34@example.com','Calle 34 #78-89','Medicina','3034444444',3),(35,'Emilio','Cárdenas','emilio.cardenas35@example.com','Carrera 35 #89-90','Arquitectura','3035555555',1),(36,'Fernanda','Peña','fernanda.pena36@example.com','Avenida 36 #90-12','Enfermería','3036666666',2),(37,'Jorge','Silva','jorge.silva37@example.com','Calle 37 #12-34','Ingeniería de Sistemas','3037777777',3),(38,'Adriana','Martínez','adriana.martinez38@example.com','Carrera 38 #23-45','Administración','3038888888',1),(39,'Cristian','Lara','cristian.lara39@example.com','Avenida 39 #34-56','Derecho','3039999999',2),(40,'Daniela','Pérez','daniela.perez40@example.com','Calle 40 #45-67','Psicología','3040000000',3),(41,'Oscar','Vega','oscar.vega41@example.com','Carrera 41 #56-78','Ingeniería Civil','3041111111',1),(42,'Mariana','Campos','mariana.campos42@example.com','Avenida 42 #67-89','Contaduría','3042222222',2),(43,'Hernán','Rojas','hernan.rojas43@example.com','Calle 43 #78-90','Medicina','3043333333',3),(44,'Claudia','Navarro','claudia.navarro44@example.com','Carrera 44 #89-12','Arquitectura','3044444444',1),(45,'Álvaro','Cifuentes','alvaro.cifuentes45@example.com','Avenida 45 #90-13','Enfermería','3045555555',2),(46,'Patricia','Quintero','patricia.quintero46@example.com','Calle 46 #12-23','Ingeniería de Sistemas','3046666666',3),(47,'Mauricio','Patiño','mauricio.patino47@example.com','Carrera 47 #23-34','Administración','3047777777',1),(48,'Verónica','Serrano','veronica.serrano48@example.com','Avenida 48 #34-45','Derecho','3048888888',2),(49,'Ricardo','Osorio','ricardo.osorio49@example.com','Calle 49 #45-56','Psicología','3049999999',3),(50,'Ángela','Zapata','angela.zapata50@example.com','Carrera 50 #56-67','Ingeniería Civil','3050000000',1);
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
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
