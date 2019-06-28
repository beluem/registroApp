-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: database_registro
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registro` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `medio` varchar(30) NOT NULL,
  `sistema` varchar(30) NOT NULL,
  `origen_inconveniente` varchar(30) NOT NULL,
  `motivo` varchar(300) DEFAULT NULL,
  `solucion` varchar(300) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_registro`),
  KEY `fk_user` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (2,'Llamada','sistema 2','Error de conexion','No puede acceder al sistema','Se le indica que borre cache y vuelva a probar',NULL,'2019-06-27 19:20:18'),(3,'Llamada','sistema 2','Error de usuario','No encuentra el menu a utilizar','Se le indica donde ingresar',NULL,'2019-06-27 19:21:30'),(4,'Correo','sistema 2','Error de usuario','Prueba','Prueba',NULL,'2019-06-27 19:21:50'),(5,'Correo','sistema 1','Error de sistema','Prueba','Prueba',NULL,'2019-06-27 19:22:09'),(6,'Correo','sistema 2','Error de sistema','PRueba','Prueba',NULL,'2019-06-27 19:22:26'),(7,'Llamada','sistema 2','Error de sistema','No le guarda los datos agregados','Se verifica que hay un error y se realiza los cambios pertinentes',NULL,'2019-06-27 22:38:57'),(8,'Llamada','sistema 2','Error de conexion','No iniciar sesion','Seansfd',NULL,'2019-06-27 23:40:17'),(9,'Correo','sistema 1','Error de sistema','Motivo','Solución',NULL,'2019-06-27 23:44:57'),(10,'Correo','sistema 1','Error de sistema','prueba','prueba',NULL,'2019-06-28 13:43:36'),(11,'Correo','sistema 1','Error de sistema','motivo','solucion',NULL,'2019-06-28 13:43:54'),(12,'Correo','sistema 1','Error de sistema','motivo','solucion',NULL,'2019-06-28 13:44:10'),(13,'Llamada','sistema 2','Error de conexion','Prueba de error','Solución dada',NULL,'2019-06-28 14:13:57');
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-28 13:51:08
