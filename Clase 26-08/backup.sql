-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: tutoria
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdTipoDocumento` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_TipoDocumento_Id_Docente` (`IdTipoDocumento`),
  CONSTRAINT `fk_TipoDocumento_Id_Docente` FOREIGN KEY (`IdTipoDocumento`) REFERENCES `tipodocumento` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'Carlos','Ramírez','c.ramirez@colegio.edu','Cra 10 #45-23','3104567890',1),(2,'María','González','m.gonzalez@colegio.edu','Cl 20 #15-33','3129876543',1),(3,'Andrés','López','a.lopez@colegio.edu','Cra 5 #12-55','3156789012',2),(4,'Paula','Martínez','p.martinez@colegio.edu','Cl 45 #67-89','3004567891',1),(5,'Jorge','Torres','j.torres@colegio.edu','Cra 7 #34-21','3025678901',3),(6,'Lucía','Hernández','l.hernandez@colegio.edu','Cl 30 #40-50','3201234567',1),(7,'Ricardo','Castro','r.castro@colegio.edu','Cra 15 #25-10','3012345678',2),(8,'Ana','Morales','a.morales@colegio.edu','Cl 12 #9-14','3048765432',1),(9,'Felipe','Suárez','f.suarez@colegio.edu','Cra 8 #20-18','3162345678',3),(10,'Carolina','Vargas','c.vargas@colegio.edu','Cl 60 #70-22','3187654321',1);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Direccion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Carrera` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `IdTipoDocumento` int NOT NULL,
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

--
-- Table structure for table `estudiante_materia`
--

DROP TABLE IF EXISTS `estudiante_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante_materia` (
  `Id_Estudiante` int NOT NULL,
  `Id_Materia` int NOT NULL,
  PRIMARY KEY (`Id_Estudiante`,`Id_Materia`),
  KEY `fk_Materia_Id_Estudiante_Materia` (`Id_Materia`),
  CONSTRAINT `fk_Estudiante_Id_Estudiante_Materia` FOREIGN KEY (`Id_Estudiante`) REFERENCES `estudiante` (`Id`),
  CONSTRAINT `fk_Materia_Id_Estudiante_Materia` FOREIGN KEY (`Id_Materia`) REFERENCES `materia` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante_materia`
--

LOCK TABLES `estudiante_materia` WRITE;
/*!40000 ALTER TABLE `estudiante_materia` DISABLE KEYS */;
INSERT INTO `estudiante_materia` VALUES (1,1),(2,1),(5,1),(7,1),(10,1),(1,2),(3,2),(6,2),(8,2),(2,3),(4,3),(7,3),(9,3),(3,4),(5,4),(8,4),(10,4),(4,5),(6,5),(9,5);
/*!40000 ALTER TABLE `estudiante_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante_tutoria`
--

DROP TABLE IF EXISTS `estudiante_tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante_tutoria` (
  `Id_Estudiante` int NOT NULL,
  `Id_Tutoria` int NOT NULL,
  PRIMARY KEY (`Id_Estudiante`,`Id_Tutoria`),
  KEY `fk_Tutoria_Id_Estudiante_Tutoria` (`Id_Tutoria`),
  CONSTRAINT `fk_Estudiante_Id_Estudiante_Tutoria` FOREIGN KEY (`Id_Estudiante`) REFERENCES `estudiante` (`Id`),
  CONSTRAINT `fk_Tutoria_Id_Estudiante_Tutoria` FOREIGN KEY (`Id_Tutoria`) REFERENCES `tutoria` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante_tutoria`
--

LOCK TABLES `estudiante_tutoria` WRITE;
/*!40000 ALTER TABLE `estudiante_tutoria` DISABLE KEYS */;
INSERT INTO `estudiante_tutoria` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `estudiante_tutoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Facultad` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Creditos` int NOT NULL,
  `Horarios` datetime DEFAULT NULL,
  `Id_Docente` int NOT NULL,
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

--
-- Table structure for table `sesion`
--

DROP TABLE IF EXISTS `sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sesion` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `FechaHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Comentario` text COLLATE utf8mb4_general_ci,
  `Id_Tutoria` int NOT NULL,
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

--
-- Table structure for table `tipodocumento`
--

DROP TABLE IF EXISTS `tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodocumento` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodocumento`
--

LOCK TABLES `tipodocumento` WRITE;
/*!40000 ALTER TABLE `tipodocumento` DISABLE KEYS */;
INSERT INTO `tipodocumento` VALUES (1,'Cédula de Ciudadanía'),(2,'Tarjeta de Identidad'),(3,'Cédula de Extranjería'),(4,'Pasaporte'),(5,'Registro Civil'),(6,'NIT'),(7,'Licencia de Conducción'),(8,'Carné Institucional'),(9,'Permiso Especial de Permanencia'),(10,'Otro');
/*!40000 ALTER TABLE `tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutoria`
--

DROP TABLE IF EXISTS `tutoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutoria` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Tema` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `FechaHora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Cupos` int NOT NULL,
  `Id_Materia` int NOT NULL,
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

-- Dump completed on 2025-08-26 21:28:42
