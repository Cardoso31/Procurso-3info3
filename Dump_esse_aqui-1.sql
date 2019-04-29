-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: procurso
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campus` (
  `id_campus` int(11) NOT NULL,
  `telefone_campus` varchar(13) DEFAULT NULL,
  `email_campus` varchar(80) DEFAULT NULL,
  `descricao_campus` varchar(300) DEFAULT NULL,
  `nome_campus` varchar(80) DEFAULT NULL,
  `imagem_campus` blob,
  `endereco` int(11) DEFAULT NULL,
  `universidade` int(11) DEFAULT NULL,
  `site_campus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_campus`),
  KEY `endereco` (`endereco`),
  CONSTRAINT `campus_ibfk_1` FOREIGN KEY (`endereco`) REFERENCES `endereco` (`id_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL,
  `nome_cidade` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `usuario` int(11) DEFAULT NULL,
  `curso` int(11) DEFAULT NULL,
  `id_comentario` int(11) NOT NULL,
  `comentario_descricao` varchar(200) DEFAULT NULL,
  `data_hora` date DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `usuario` (`usuario`),
  KEY `curso` (`curso`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`curso`) REFERENCES `curso` (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `descricao_curso` varchar(300) DEFAULT NULL,
  `carga_horaria` varchar(30) DEFAULT NULL,
  `numero_vagas` int(11) DEFAULT NULL,
  `forma_ingresso` int(11) DEFAULT NULL,
  `id_curso` int(11) NOT NULL,
  `turno` int(11) DEFAULT NULL,
  `nome_curso` varchar(80) DEFAULT NULL,
  `modalidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos_campus`
--

DROP TABLE IF EXISTS `cursos_campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos_campus` (
  `curso` int(11) DEFAULT NULL,
  `campus` int(11) DEFAULT NULL,
  KEY `curso` (`curso`),
  KEY `campus` (`campus`),
  CONSTRAINT `cursos_campus_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `cursos_campus_ibfk_2` FOREIGN KEY (`campus`) REFERENCES `campus` (`id_campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos_campus`
--

LOCK TABLES `cursos_campus` WRITE;
/*!40000 ALTER TABLE `cursos_campus` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos_campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id_end` int(11) NOT NULL,
  `logradoruo` varchar(120) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `bairro` varchar(80) DEFAULT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `cidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_end`),
  KEY `cidade` (`cidade`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`cidade`) REFERENCES `cidade` (`id_cidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritar`
--

DROP TABLE IF EXISTS `favoritar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoritar` (
  `usuario` int(11) DEFAULT NULL,
  `curso` int(11) DEFAULT NULL,
  `id_favorito` int(11) NOT NULL,
  PRIMARY KEY (`id_favorito`),
  KEY `curso` (`curso`),
  KEY `usuario` (`usuario`),
  CONSTRAINT `favoritar_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `favoritar_ibfk_2` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritar`
--

LOCK TABLES `favoritar` WRITE;
/*!40000 ALTER TABLE `favoritar` DISABLE KEYS */;
/*!40000 ALTER TABLE `favoritar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universidade`
--

DROP TABLE IF EXISTS `universidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universidade` (
  `id_uni` int(11) NOT NULL,
  `imagem_uni` blob,
  `descricao_universidade` varchar(300) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `nome_universidade` varchar(80) DEFAULT NULL,
  `telefone_universidade` varchar(13) DEFAULT NULL,
  `site_universidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_uni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidade`
--

LOCK TABLES `universidade` WRITE;
/*!40000 ALTER TABLE `universidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `universidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `email_usuario` varchar(80) DEFAULT NULL,
  `nome_usuario` varchar(80) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `sobrenome` varchar(30) DEFAULT NULL,
  `senha` varchar(25) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `tipo_usuario` int(11) DEFAULT NULL,
  `imagem_perfil` blob,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('mateuscardoso3112@gmail.com','Mateus','2001-12-31','Cardoso','cardoso',0,2,'');
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

-- Dump completed on 2019-04-29 16:56:39
