CREATE DATABASE  IF NOT EXISTS `forum` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `forum`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: forum
-- ------------------------------------------------------
-- Server version	5.6.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `idusuario` varchar(55) DEFAULT NULL,
  `dt_categoria` datetime DEFAULT NULL,
  PRIMARY KEY (`idcategoria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Lorem Ipsum',NULL,NULL),(2,'Mussum Ipsum',NULL,NULL),(3,'Force Ipsum',NULL,NULL),(8,'teste nova categoria','schuncka','2019-07-04 15:17:43'),(9,'teste Nova categoria','schuncka','2019-07-04 16:35:55');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `idforum` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria` int(11) NOT NULL,
  `forum` varchar(255) DEFAULT NULL,
  `idusuario` varchar(45) DEFAULT NULL,
  `dt_forum` datetime DEFAULT NULL,
  PRIMARY KEY (`idforum`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,1,'What is Lorem Ipsum?',NULL,NULL),(2,1,'Where does it come from?',NULL,NULL),(3,3,'Are they away? ',NULL,NULL),(4,3,'What is it?',NULL,NULL),(5,3,'Not a bad bit of rescuing, huh? ',NULL,NULL),(6,2,'Mussum Ipsum, cacilds vidis litro abertis.',NULL,NULL),(7,2,' Suco de cevadiss deixa as pessoas mais interessantis',NULL,NULL),(8,2,'Diuretics paradis num copo é motivis de denguis',NULL,NULL),(9,9,'teste agora vai','schuncka','2019-07-04 17:01:32'),(10,8,'novo forum','schuncka','2019-07-05 16:12:29'),(11,8,'novo forum2','schuncka','2019-07-05 16:12:44'),(12,8,'novo forum close','schuncka','2019-07-05 16:13:52');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `idtopico` int(11) DEFAULT NULL,
  `post` text,
  `idusuario` varchar(50) DEFAULT NULL,
  `dt_post` timestamp NULL DEFAULT NULL,
  `assinatura` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,'1 - dgflkdflkjghjdfghkdfjhglk','1','2019-06-29 03:00:00','Teste'),(2,1,'2 - hgfdgfdytrfbvbvcb','1','2019-06-29 03:00:00','TESTE'),(3,12,'blablablablablablabvla','schunck','2019-06-30 03:00:00','Teste Assinatura'),(4,1,'<p>testes</p>\r\n<strong>sdfgfdsgdfgdfg</strong>\r\nsddsfdfsdfsdf<br>gfdggfg','schunck','2019-06-30 03:00:00','Teste Assinatura'),(5,1,'çpllkçlçl','schuncka','2019-07-03 03:00:00','Teste Assinatura'),(6,16,'testado','schuncka','2019-07-03 03:00:00','Teste Assinatura'),(7,2,'jhjkhkhkjh','schuncka','2019-07-03 03:00:00','Teste Assinatura'),(8,2,'segue a discucao','schuncka','2019-07-03 03:00:00','Teste Assinatura'),(9,17,'ok','schuncka','2019-07-05 03:00:00','Teste Assinatura'),(10,17,'okok','schuncka','2019-07-05 03:00:00','Teste Assinatura'),(11,18,'okokokokokokokokokokmnmnmn','schuncka','2019-07-05 03:00:00','Teste Assinatura');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secao`
--

DROP TABLE IF EXISTS `secao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secao` (
  `idsecao` int(11) NOT NULL AUTO_INCREMENT,
  `secao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idsecao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secao`
--

LOCK TABLES `secao` WRITE;
/*!40000 ALTER TABLE `secao` DISABLE KEYS */;
INSERT INTO `secao` VALUES (1,'secao1'),(2,'secao2'),(3,'secao3'),(4,'secao4'),(5,'secao5');
/*!40000 ALTER TABLE `secao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topico`
--

DROP TABLE IF EXISTS `topico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topico` (
  `idtopico` int(11) NOT NULL AUTO_INCREMENT,
  `idforum` int(11) NOT NULL,
  `topico` varchar(255) DEFAULT NULL,
  `dt_topico` datetime DEFAULT NULL,
  `idusuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtopico`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topico`
--

LOCK TABLES `topico` WRITE;
/*!40000 ALTER TABLE `topico` DISABLE KEYS */;
INSERT INTO `topico` VALUES (1,2,'Topico: What is Lorem Ipsum?',NULL,NULL),(2,1,'Topico: Why do we use it?',NULL,NULL),(3,6,'Mussum Ipsum, cacilds vidis litro abertis. ','2019-07-01 00:00:00','schunck'),(4,4,'Quem num gosta di mim que vai caçá sua turmis!','2019-07-01 00:00:00','schunck'),(5,6,'Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. ','2019-07-03 00:00:00','schunck'),(6,7,'All flight trooper, man your stations',NULL,NULL),(7,7,'So...you got your reward and you\'re just leaving then? ',NULL,NULL),(8,3,'He says the restraining bolt has short circuited his recording system.',NULL,NULL),(9,8,'The Death Star plans are not in the main computer. ',NULL,NULL),(10,5,'Manduma pindureta quium dia nois paga.',NULL,NULL),(12,8,'Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis. Manduma pindureta quium dia nois paga. Mé faiz elementum girarzis, nisi eros vermeio. Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.',NULL,NULL),(13,7,'Topico test do suco de cevada',NULL,NULL),(15,4,'jklhhkjh',NULL,NULL),(16,1,'TESTE NA AULA','2019-07-03 19:32:29','schuncka'),(17,9,'inicio do agora vai','2019-07-04 17:02:01','schuncka'),(18,12,'okokokokok','2019-07-05 16:14:01','schuncka');
/*!40000 ALTER TABLE `topico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `admin_forum` varchar(2) DEFAULT NULL COMMENT 'M = moderador / A = admin / MA = ambos',
  `foto` varchar(45) DEFAULT NULL,
  `dt_nasc` date DEFAULT NULL,
  `assinatura` varchar(45) DEFAULT NULL,
  `tema` varchar(45) DEFAULT NULL,
  `nome_usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Gabriel','Schunck','A',NULL,'1980-11-17','kjhkjh','khkjh',NULL),(3,'Gabriel Schunck','1234','A','.','1980-11-17','Teste Assinatura','#999933','schuncka');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-05 16:19:34
