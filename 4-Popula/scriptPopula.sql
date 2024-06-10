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
-- Dumping data for table `AGENTE_TRANSITO`
--

LOCK TABLES `AGENTE_TRANSITO` WRITE;
/*!40000 ALTER TABLE `AGENTE_TRANSITO` DISABLE KEYS */;
INSERT INTO `AGENTE_TRANSITO` VALUES ('231024345','Maria','2000-02-02',23),('231026625','Gabriel','2000-12-31',24),('231035670','Nalu','1999-06-03',26),('231076587','Belle','2010-05-28',14),('231098563','Enzo','2004-12-04',20);
/*!40000 ALTER TABLE `AGENTE_TRANSITO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CATEGORIA`
--

LOCK TABLES `CATEGORIA` WRITE;
/*!40000 ALTER TABLE `CATEGORIA` DISABLE KEYS */;
INSERT INTO `CATEGORIA` VALUES ('11','AUTOMÓVEL'),('12','MOTOCICLETA'),('13','CAMINHÃO'),('14','ÔNIBUS'),('15','CARROÇA');
/*!40000 ALTER TABLE `CATEGORIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `INFRACAO`
--

LOCK TABLES `INFRACAO` WRITE;
/*!40000 ALTER TABLE `INFRACAO` DISABLE KEYS */;
INSERT INTO `INFRACAO` VALUES ('2024-06-01 09:30:00',80,'ABC1234',1,0.0001000000,0.0002000000,'231024345'),('2024-06-02 12:45:00',95,'DEF5678',2,0.0002000000,0.0003000000,'231026625'),('2024-06-03 15:20:00',60,'GHI9101',3,0.0003000000,0.0004000000,'231035670'),('2024-06-04 17:10:00',70,'JKL2345',4,0.0004000000,0.0005000000,'231076587'),('2024-06-05 20:00:00',90,'MNO6789',5,0.0005000000,0.0006000000,'231098563');
/*!40000 ALTER TABLE `INFRACAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `LOCAL`
--

LOCK TABLES `LOCAL` WRITE;
/*!40000 ALTER TABLE `LOCAL` DISABLE KEYS */;
INSERT INTO `LOCAL` VALUES (60,0.0001000000,0.0002000000),(70,0.0002000000,0.0003000000),(80,0.0003000000,0.0004000000),(90,0.0004000000,0.0005000000),(100,0.0005000000,0.0006000000);
/*!40000 ALTER TABLE `LOCAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `MODELO`
--

LOCK TABLES `MODELO` WRITE;
/*!40000 ALTER TABLE `MODELO` DISABLE KEYS */;
INSERT INTO `MODELO` VALUES ('012345','GOL MI'),('123456','GOL 1.8'),('234567','UNO CS'),('345678','FIESTA'),('456789','COROLLA');
/*!40000 ALTER TABLE `MODELO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PROPRIETARIO`
--

LOCK TABLES `PROPRIETARIO` WRITE;
/*!40000 ALTER TABLE `PROPRIETARIO` DISABLE KEYS */;
INSERT INTO `PROPRIETARIO` VALUES ('Mylena','feminino','gama','brasília','DF',19,'2005-04-15','06518345984'),('Gabriel','masculino','guará','brasília','DF',19,'2004-12-03','06519510114'),('DAVI','masculino','taguatinga','brasília','DF',18,'2000-11-23','06519545644'),('Lud','feminino','taguatinga','brasília','DF',19,'2005-01-13','06718345984'),('Maria','feminino','gama','brasília','DF',19,'2005-08-08','12131367679');
/*!40000 ALTER TABLE `PROPRIETARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `TELEFONES`
--

LOCK TABLES `TELEFONES` WRITE;
/*!40000 ALTER TABLE `TELEFONES` DISABLE KEYS */;
INSERT INTO `TELEFONES` VALUES (11,'12385011234]','12131367679'),(10,'12385012314','06718345984'),(9,'61985012314','06519545644'),(7,'61985053474','06518345984'),(8,'61985055342','06519545644'),(5,'61985056474','06519510114'),(6,'61991969466','06518345984');
/*!40000 ALTER TABLE `TELEFONES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `TIPO_INFRACAO`
--

LOCK TABLES `TIPO_INFRACAO` WRITE;
/*!40000 ALTER TABLE `TIPO_INFRACAO` DISABLE KEYS */;
INSERT INTO `TIPO_INFRACAO` VALUES (1,100,'Avanço de sinal vermelho'),(2,150,'Excesso de velocidade'),(3,200,'Estacionamento em local proibido'),(4,120,'Dirigir usando celular'),(5,180,'Ultrapassagem em local proibido');
/*!40000 ALTER TABLE `TIPO_INFRACAO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `VEICULO`
--

LOCK TABLES `VEICULO` WRITE;
/*!40000 ALTER TABLE `VEICULO` DISABLE KEYS */;
INSERT INTO `VEICULO` VALUES ('Preto','ABC123456789','ABC1234',2018,'06518345984','11','012345'),('Azul','DEF123456789','DEF5678',2020,'06519510114','11','123456'),('Branco','GHI123456789','GHI9101',2019,'06519545644','11','234567'),('Prata','JKL123456789','JKL2345',2017,'06519510114','11','345678'),('Vermelho','MNO123456789','MNO6789',2015,'12131367679','11','456789');
/*!40000 ALTER TABLE `VEICULO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-08  5:44:09
