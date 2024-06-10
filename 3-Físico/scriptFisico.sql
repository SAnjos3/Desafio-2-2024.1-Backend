-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: DesafioEngNet
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AGENTE_TRANSITO`
--

DROP TABLE IF EXISTS `AGENTE_TRANSITO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AGENTE_TRANSITO` (
  `matricula_funcional` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_contratacao` date NOT NULL,
  `tempo_servico` decimal(10,0) NOT NULL,
  PRIMARY KEY (`matricula_funcional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CATEGORIA`
--

DROP TABLE IF EXISTS `CATEGORIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CATEGORIA` (
  `idCategoria` varchar(2) NOT NULL,
  `nome_categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INFRACAO`
--

DROP TABLE IF EXISTS `INFRACAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INFRACAO` (
  `data_horario` datetime NOT NULL,
  `velocidade_aferida` decimal(10,0) DEFAULT NULL,
  `placa_veiculo` varchar(20) NOT NULL,
  `tipo_infracao` int NOT NULL,
  `latitude` decimal(10,10) NOT NULL,
  `longitude` decimal(10,10) NOT NULL,
  `agente_transito` varchar(100) NOT NULL,
  KEY `agente_transito` (`agente_transito`),
  KEY `tipo_infracao` (`tipo_infracao`),
  KEY `placa_veiculo` (`placa_veiculo`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  CONSTRAINT `INFRACAO_ibfk_3` FOREIGN KEY (`agente_transito`) REFERENCES `AGENTE_TRANSITO` (`matricula_funcional`),
  CONSTRAINT `INFRACAO_ibfk_4` FOREIGN KEY (`tipo_infracao`) REFERENCES `TIPO_INFRACAO` (`id_infracao`),
  CONSTRAINT `INFRACAO_ibfk_5` FOREIGN KEY (`placa_veiculo`) REFERENCES `VEICULO` (`placa`),
  CONSTRAINT `INFRACAO_ibfk_6` FOREIGN KEY (`latitude`) REFERENCES `LOCAL` (`latitude`),
  CONSTRAINT `INFRACAO_ibfk_7` FOREIGN KEY (`longitude`) REFERENCES `LOCAL` (`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOCAL`
--

DROP TABLE IF EXISTS `LOCAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCAL` (
  `valocidade_via` int DEFAULT NULL,
  `latitude` decimal(10,10) NOT NULL,
  `longitude` decimal(10,10) NOT NULL,
  PRIMARY KEY (`longitude`,`latitude`),
  KEY `idx_latitude` (`latitude`),
  KEY `idx_longitude` (`longitude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MODELO`
--

DROP TABLE IF EXISTS `MODELO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MODELO` (
  `idModelo` varchar(6) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`idModelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PROPRIETARIO`
--

DROP TABLE IF EXISTS `PROPRIETARIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROPRIETARIO` (
  `nome` varchar(100) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `idade` int NOT NULL,
  `dataNascimento` date NOT NULL,
  `CPF` char(11) NOT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TELEFONES`
--

DROP TABLE IF EXISTS `TELEFONES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TELEFONES` (
  `idTelefone` int NOT NULL AUTO_INCREMENT,
  `telefone` varchar(100) DEFAULT NULL,
  `CPF` varchar(11) NOT NULL,
  PRIMARY KEY (`idTelefone`,`CPF`),
  UNIQUE KEY `telefone` (`telefone`),
  KEY `CPF` (`CPF`),
  CONSTRAINT `TELEFONES_ibfk_1` FOREIGN KEY (`CPF`) REFERENCES `PROPRIETARIO` (`CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TIPO_INFRACAO`
--

DROP TABLE IF EXISTS `TIPO_INFRACAO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TIPO_INFRACAO` (
  `id_infracao` int NOT NULL,
  `multa` decimal(10,0) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  PRIMARY KEY (`id_infracao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VEICULO`
--

DROP TABLE IF EXISTS `VEICULO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VEICULO` (
  `cor` varchar(20) NOT NULL,
  `chassi` varchar(100) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `ano` int NOT NULL,
  `proprietario_CPF` varchar(11) NOT NULL,
  `categoria` varchar(2) NOT NULL,
  `modelo` varchar(6) NOT NULL,
  PRIMARY KEY (`placa`),
  KEY `proprietario_CPF` (`proprietario_CPF`),
  KEY `modelo` (`modelo`),
  KEY `categoria` (`categoria`),
  CONSTRAINT `VEICULO_ibfk_3` FOREIGN KEY (`proprietario_CPF`) REFERENCES `PROPRIETARIO` (`CPF`),
  CONSTRAINT `VEICULO_ibfk_4` FOREIGN KEY (`modelo`) REFERENCES `MODELO` (`idModelo`),
  CONSTRAINT `VEICULO_ibfk_5` FOREIGN KEY (`modelo`) REFERENCES `MODELO` (`idModelo`),
  CONSTRAINT `VEICULO_ibfk_6` FOREIGN KEY (`modelo`) REFERENCES `MODELO` (`idModelo`),
  CONSTRAINT `VEICULO_ibfk_7` FOREIGN KEY (`categoria`) REFERENCES `CATEGORIA` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-08  5:42:20
