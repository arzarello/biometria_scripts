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
-- Table structure for table `aplicacion`
--

DROP TABLE IF EXISTS `aplicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacion` (
  `AplicacionId` bigint NOT NULL AUTO_INCREMENT,
  `AplicacionNombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AplicacionURL` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `AplicacionHabilitada` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`AplicacionId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aplicacionrol`
--

DROP TABLE IF EXISTS `aplicacionrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aplicacionrol` (
  `AplicacionId` bigint NOT NULL,
  `RolId` bigint NOT NULL,
  PRIMARY KEY (`AplicacionId`,`RolId`),
  KEY `IAPLICACIONROL1` (`RolId`),
  CONSTRAINT `IAPLICACIONROL1` FOREIGN KEY (`RolId`) REFERENCES `rol` (`RolId`),
  CONSTRAINT `IAPLICACIONROL2` FOREIGN KEY (`AplicacionId`) REFERENCES `aplicacion` (`AplicacionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria` (
  `AuditoriaId` bigint NOT NULL AUTO_INCREMENT,
  `AuditoriaFecha` datetime NOT NULL,
  `AuditoriaUsuario` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AuditoriaEvento` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `AuditoriaDescripcion` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`AuditoriaId`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `httpstatuscodesmessages`
--

DROP TABLE IF EXISTS `httpstatuscodesmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `httpstatuscodesmessages` (
  `HSCMCode` int NOT NULL,
  `HSCMService` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `HSCMMessage` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`HSCMCode`,`HSCMService`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje` (
  `MensajeId` bigint NOT NULL,
  `MensajePrograma` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MensajeCodigo` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MensajeTexto` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`MensajeId`,`MensajePrograma`,`MensajeCodigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parametros` (
  `ParametrosId` bigint NOT NULL AUTO_INCREMENT,
  `ParametrosNombre` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ParametrosValor` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`ParametrosId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parametroshttpclient`
--

DROP TABLE IF EXISTS `parametroshttpclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parametroshttpclient` (
  `ParametrosHTTPClientId` bigint NOT NULL AUTO_INCREMENT,
  `ParametrosHTTPClientBaseURL` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ParametrosHTTPClientHost` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `ParametrosHTTPClientPort` bigint DEFAULT NULL,
  `ParametrosHTTPClientSecure` bigint DEFAULT NULL,
  `ParametrosHTTPClientTimeOut` bigint DEFAULT NULL,
  `ParametrosHTTPClientServicio` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ParametrosHTTPClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `RolId` bigint NOT NULL AUTO_INCREMENT,
  `RolDescripcion` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`RolId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `UsuarioId` bigint NOT NULL AUTO_INCREMENT,
  `UsuarioNombre` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsuarioApellido` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsuarioFechaNacimiento` date DEFAULT NULL,
  `UsuarioCelular` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsuarioDireccion` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsuarioDocumento` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsuarioNombreUsuario` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsuarioContrasena` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `UsuarioImagen` longblob,
  `UsuarioImagen_GXI` varchar(2048) DEFAULT NULL,
  `UsuarioHabilitado` tinyint(1) DEFAULT NULL,
  `UsuarioEliminado` tinyint(1) NOT NULL,
  `UsuarioEliminadoFecha` datetime DEFAULT NULL,
  `UsuarioEliminadoMotivo` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`UsuarioId`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuarioaplicacionrol`
--

DROP TABLE IF EXISTS `usuarioaplicacionrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarioaplicacionrol` (
  `UsuarioId` bigint NOT NULL,
  `AplicacionId` bigint NOT NULL,
  `RolId` bigint NOT NULL,
  PRIMARY KEY (`UsuarioId`,`AplicacionId`),
  KEY `IUSUARIOAPLICACIONROL1` (`AplicacionId`,`RolId`),
  CONSTRAINT `IUSUARIOAPLICACIONROL1` FOREIGN KEY (`AplicacionId`, `RolId`) REFERENCES `aplicacionrol` (`AplicacionId`, `RolId`),
  CONSTRAINT `IUSUARIOAPLICACIONROL2` FOREIGN KEY (`UsuarioId`) REFERENCES `usuario` (`UsuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuariologin`
--

DROP TABLE IF EXISTS `usuariologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariologin` (
  `UsuarioLoginId` bigint NOT NULL AUTO_INCREMENT,
  `UsuarioId` bigint NOT NULL,
  `UsuarioLoginImagen` longblob NOT NULL,
  `UsuarioLoginImagen_GXI` varchar(2048) NOT NULL,
  `UsuarioLoginFecha` datetime NOT NULL,
  `UsuarioLoginScore` decimal(17,8) NOT NULL,
  `UsuarioLoginImagenBase64` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `UsuarioLoginIP` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`UsuarioLoginId`),
  KEY `IUSUARIOLOGIN1` (`UsuarioId`),
  CONSTRAINT `IUSUARIOLOGIN1` FOREIGN KEY (`UsuarioId`) REFERENCES `usuario` (`UsuarioId`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 14:54:03
