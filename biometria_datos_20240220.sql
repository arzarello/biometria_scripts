CREATE DATABASE  IF NOT EXISTS `biometria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biometria`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: biometria
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Dumping data for table `httpstatuscodesmessages`
--

LOCK TABLES `httpstatuscodesmessages` WRITE;
/*!40000 ALTER TABLE `httpstatuscodesmessages` DISABLE KEYS */;
INSERT INTO `httpstatuscodesmessages` VALUES (200,'unroll','El usuario %1 fue desenrolado con éxito'),(201,'enroll','El usuario %1 fue enrolado con éxito'),(400,'enroll','Error al enrolar al usuario %1, no se encontró la imagen.'),(400,'identify','Imagen inválida o no se encuentra la imagen'),(400,'unroll','Error al desenrolar al usuario %1, no se encuentra en la base de datos biométrica.'),(500,'enroll','El usuario %1 ya se encuentra enrolado. Error en la operación.'),(500,'identify','No se puede identificar un rosto en la imagen. Pruebe con una nueva imagen.');
/*!40000 ALTER TABLE `httpstatuscodesmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (1,'comprobarIntegridadBases','basesDiferentes','ADVERTENCIA: La cantidad de usuarios de la base de datos biométrica difiere de la base de datos relacional'),(2,'loginModule','servicioBiometrico','Servicio Biométrico OK'),(3,'loginModule','servicioBiometricoError','El servicio biométrico no se encuentra activo'),(4,'verifyUsuario','usuarioDeshabilitado','Su usuario no se encuentra habilitado en el sistema. Por favor, contáctese con el administrador.'),(5,'verifyUsuario','noVerificado','No se puede verificar la identidad del usuario'),(6,'verifyUsuario','deshabilitarUsuario','Su usuario ha sido deshabilitado por intentos fallidos sucesivos de login'),(7,'verifyusuario','usuarioVacio','El nombre de usuario no puede ser vacío'),(8,'verifyUsuario','imagenVacia','La imagen no puede ser vacía'),(9,'loginModule','comprobandoServicio','Comprobando servicio biométrico...'),(10,'controlarParametrosAltaUsuario','nombreVacio','El nombre del usuario es obligatorio'),(11,'controlarParametrosAltaUsuario','nombreUsuarioVacio','El nombre de usuario no puede ser vacío'),(12,'controlarParametrosAltaUsuario','nombreUsuarioRepetido','El nombre de usuario %1 ya se encuentra registrado en el sistema'),(13,'controlarParametrosAltaUsuario','documentoVacio','El documento del usuario no puede ser vacío'),(14,'controlarParametrosAltaUsuario','documentoRepetido','Ya existe un usuario registrado con el documento %1'),(15,'controlarParametrosAltaUsuario','imagenVacia','La imagen del usuario no puede ser vacía'),(16,'controlarParametrosAltaUsuario','contrasenaVacia','La contraseña no puede ser vacía'),(17,'asociarAplicacionUsuario','aplicacionUsuario','Error al asociar al usuario a la aplicación. Ya se enceuntra asociado a la aplicación seleccionada'),(18,'asociarAplicacionUsuario','usuarioValido','Seleccione un usuario válido'),(19,'asociarAplicacionUsuario','aplicacionValida','Seleccione una aplicación válida'),(20,'asociarAplicacionUsuario','rolValido','Seleccione un rol válido'),(21,'asociarAplicacionUsuario','asociadoOK','Usuario asociado correctamente'),(22,'desenrolarUsuario','usuarioVacio','Debe seleccionar un usuario para desenrolar'),(23,'desenrolarUsuario','motivoVacio','El campo motivo no puede estar vacío');
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` VALUES (1,'multimediaPath','C:/Program Files/Apache Software Foundation/Tomcat 10.1/webapps/BiometriaJavaMySQL/PublicTempStorage/multimedia/'),(2,'umbral','0.5'),(3,'token','9F58017193E0942C789855BEC2A9D6D6'),(4,'historialLogin','10'),(8,'testing','s');
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `parametroshttpclient`
--

LOCK TABLES `parametroshttpclient` WRITE;
/*!40000 ALTER TABLE `parametroshttpclient` DISABLE KEYS */;
INSERT INTO `parametroshttpclient` VALUES (1,NULL,'34.67.90.166',80,NULL,NULL,'dsense');
/*!40000 ALTER TABLE `parametroshttpclient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 14:54:47
