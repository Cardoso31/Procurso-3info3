CREATE DATABASE  IF NOT EXISTS `procurso` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `procurso`;
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
  `id_campus` int(11) NOT NULL AUTO_INCREMENT,
  `telefone_campus` varchar(13) DEFAULT NULL,
  `email_campus` varchar(80) DEFAULT NULL,
  `descricao_campus` text NOT NULL,
  `nome_campus` varchar(80) NOT NULL,
  `imagem_campus` blob,
  `endereco` int(11) NOT NULL,
  `universidade` int(11) NOT NULL,
  `site_campus` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_campus`),
  KEY `universidade` (`universidade`),
  KEY `endereco` (`endereco`)
) ENGINE=MyISAM AUTO_INCREMENT=1029 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1027,'49 3236 3100','','Um texto...','IFSC - Urupema',_binary 'no_file',1,1,'www.urupema.ifsc.edu.br'),(1028,'49 3441 7900','assessoria.xanxere@ifsc.edu.br','Um texto...','IFSC - Xanxerê',_binary 'no_file',1,1,'www.xanxere.ifsc.edu.br'),(1026,'48 3301 9100','gabinete.tub@ifsc.edu.br','Um texto...','IFSC - Tubarão',_binary 'no_file',1,1,'www.tubarao.ifsc.edu.br'),(1025,'49 3631 0400','','Um texto...','IFSC - São Miguel do Oeste',_binary 'no_file',1,1,'www.smo.ifsc.edu.br'),(1024,'49 3344 8595','','Um texto...','IFSC - São Lourenço do Oeste',_binary 'no_file',1,1,'www.slo.ifsc.edu.br'),(1023,'48 3381 2800','','Um texto...','IFSC - São José',_binary 'no_file',1,1,'www.sj.ifsc.edu.br'),(1022,'49 3325 4149','','Um texto...','IFSC - São Carlos',_binary 'no_file',1,1,'www.saocarlos.ifsc.edu.br'),(1021,'48 3341 9700','contato.palhoca@ifsc.edu.br','Um texto...','IFSC - Palhoça Bilíngue',_binary 'no_file',1,1,'www.palhoca.ifsc.edu.br'),(1020,'49 3221 4243','','Um texto...','IFSC - Lages',_binary 'no_file',1,1,'www.lages.ifsc.edu.br'),(1019,'47 3431 5600','direcao.joinville@ifsc.edu.br','Um texto...','IFSC - Joinville',_binary 'no_file',1,1,'www.joinville.ifsc.edu.br'),(1018,'47 3276 9600','assessoria.gw@ifsc.edu.br','Um texto...','IFSC - Jaraguá do Sul - Rau',_binary 'no_file',1,1,'www.gw.ifsc.edu.br'),(1017,'47 3276 8700','direcao.jaragua@ifsc.edu.br','Um texto...','IFSC - Jaraguá do Sul - Centro',_binary 'no_file',1,1,'www.jaragua.ifsc.edu.br'),(1016,'47 3390 1200','','Um texto...','IFSC - Itajaí',_binary 'no_file',1,1,'www.itajai.ifsc.edu.br'),(1015,'47 3318 3700','','Um texto...','IFSC - Gaspar',_binary 'no_file',1,1,'www.gaspar.ifsc.edu.br'),(1014,'48 3254 7372','','Um texto...','IFSC - Garopaba',_binary 'no_file',1,1,'www.garopaba.ifsc.edu.br'),(1013,'48 3877 8419','','Um texto...','IFSC - Florianópolis-Continente',_binary 'no_file',1,1,'www.continente.ifsc.edu.br\n\n'),(1012,'48 3211 6000','ouvidoriafpolis@ifsc.edu.br','Um texto...','IFSC - Florianópolis',_binary 'no_file',1,1,'www.florianopolis.ifsc.edu.br\n\n'),(1010,'49 3313 1240','','Um texto...','IFSC - Chapecó',_binary 'no_file',1,1,'www.chapeco.ifsc.edu.br\n\n'),(1011,'48 3462 5000','','Um texto...','IFSC - Criciúma',_binary 'no_file',1,1,'www.criciuma.ifsc.edu.br'),(1008,'47 3627 4500','','Um texto...','IFSC - Canoinhas',_binary 'no_file',1,1,'www.canoinhas.ifsc.edu.br'),(1009,'49 3561 5700','atendimento.cdr@ifsc.edu.br','Um texto...','IFSC - Caçador',_binary 'no_file',1,1,'www.cacador.ifsc.edu.br'),(1007,'48 3311 5000','assessoria.ararangua@ifsc.edu.br','Um texto...','IFSC - Araranguá',_binary 'no_file',1,1,'http://ararangua.ifsc.edu.br/site/'),(1006,' 49 2049 2600','ascom.re@uffs.edu.br','Um texto...','UFFS - Chapecó',_binary 'no_file',1,1,'https://www.uffs.edu.br/campi/chapeco'),(1005,'48 3721 9000','ascom.re@uffs.edu.br','Um texto...','UFSC - Florianópolis',_binary 'no_file',1,1,'https://ufsc.br/'),(1004,'48 3721 6455','','Um texto...','UFSC - Curitibanos',_binary 'no_file',1,1,'http://curitibanos.ufsc.br/'),(1002,'48 3721 3354','blumenau@contato.ufsc.br','Um texto...','UFSC - Blumenau',_binary 'no_file',1,1,'http://blumenau.ufsc.br/'),(1001,'48 3721 6255','comunicacao.ara@contato.ufsc.br','Um texto...','UFSC - Araranguá',_binary 'no_file',1,1,'http://ararangua.ufsc.br/');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(80) NOT NULL,
  PRIMARY KEY (`id_cidade`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Araquari'),(2,'Joinville'),(3,'São Francisco do Sul'),(4,'Rio do Sul'),(5,'Rio Negrinho');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `usuario` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `comentario_descricao` varchar(200) NOT NULL,
  `data_hora` varchar(80) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `usuario` (`usuario`),
  KEY `curso` (`curso`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,1,1,'Olha essa descrição','12/05/2017-16:52'),(2,2,2,'Olha essa descrição','12/05/2017-16:52'),(3,3,3,'Olha essa descrição','12/05/2017-16:52'),(4,4,4,'Olha essa descrição','12/05/2017-16:52'),(5,5,5,'Olha essa descrição','12/05/2017-16:52'),(6,6,6,'Olha essa descrição','12/05/2017-16:52');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(80) NOT NULL,
  `descricao_curso` varchar(300) NOT NULL,
  `carga_horaria` varchar(30) DEFAULT NULL,
  `numero_vagas` int(11) NOT NULL,
  `forma_ingresso` varchar(40) NOT NULL,
  `turno` varchar(40) NOT NULL,
  `modalidade` varchar(40) NOT NULL,
  `grau` varchar(30) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Administração','Um texto...','9 semestres',100,'SiSU','Matutino e Noturno','Presencial','Graduação - Bacharelado'),(2,'Agronomia','Um texto...','10 semestres',50,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(3,'Ciência da Computação','Um texto...','8 semestres',100,'SiSU','Vespertino e Noturno','Presencial','Graduação - Bacharelado'),(4,'Ciências Sociais','Um texto...','9 semestres',50,'SiSU','Noturno','Presencial','Graduação - Licenciatura'),(5,'Enfermagem','Um texto...','10 semestres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(6,'Pedagogia','Um texto...','9 semestres',100,'SiSU','Matutino e Noturno','Presencial','Graduação - Licenciatura'),(7,'Engenharia Ambiental e Sanitária','Um texto...','10 semestres',50,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(8,'Filosofia','Um texto...','9 semestres',50,'SiSU','Noturno','Presencial','Graduação - Licenciatura'),(9,'Geografia','Um texto...','9 semestres',50,'SiSU','Noturno','Presencial','Graduação - Licenciatura'),(10,'História','Um texto...','9 semestres',50,'SiSU','Noturno','Presencial','Graduação - Licenciatura'),(11,'Letras (Português e Espanhol)','Um texto...','10 semestres',50,'SiSU','Noturno','Presencial','Graduação - Licenciatura'),(12,'Matemática','Um texto...','9 semestres',50,'SiSU','Noturno','Presencial','Graduação - Licenciatura'),(13,'Medicina','Um texto...','12 semastres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(14,'Educação','Um texto...','12 meses',20,'Processo Seletivo','Matutino e Vespertino','Presencial','Mestrado'),(15,'Estudos Linguísticos','Um texto...','12 meses',20,'Processo Seletivo','Matutino e Vespertino','Presencial','Mestrado'),(16,'História','Um texto...','12 meses',15,'Processo Seletivo','Integral','Presencial','Mestrado'),(17,'Profissional em Matemática em Rede Nacional','Um texto...','12 meses',20,'Processo Seletivo','Matutino','Presencial','Mestrado'),(18,'Filosofia','Um texto...','24 meses',15,'Processo Seletivo','Vespertino e Noturno','Presencial','Mestrado'),(19,'Geografia','Um texto...','12 meses',15,'Processo Seletivo','Integral','Presencial','Mestrado'),(20,'Física','Um texto...','8 semestres',40,'SiSU','Noturno','Presencial','Graduação - Licenciatura'),(21,'Design de Moda','Um texto...','7 semestres',36,'SiSU','no_value','Presencial','Tecnologia'),(22,'Análise e Desenvolvimento de Sistemas','Um texto...','6 semestres',40,'SiSU','Noturno','Presencial','Tecnologia'),(23,'Agronomia','Um texto...','10 semestres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(24,'Tecnologia em Alimentos','Um texto...','6 semestres',40,'SiSU','no_value','Presencial','Tecnologia'),(25,'Engenharia de produção','Um texto...','10 semestres',40,'SiSU','Noturno','Presencial','Graduação - Bacharelado'),(26,'Sistemas de Informação','Um texto...','8 semestres',40,'SiSU','no_value','Presencial','Graduação - Bacharelado'),(27,'Engenharia de Controle e Automação','Um texto...','10 semestres',40,'SiSU','Matutino e Vespertino','Presencial','Graduação - Bacharelado'),(28,'Engenharia Civil','Um texto...','10 semestres',40,'SiSU','no_value','Presencial','Graduação - Bacharelado'),(29,'Engenharia Mecatrônica','Um texto...','10 semestres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(30,'Química','Um texto...','8 semestres',40,'SiSU','no_value','Presencial','Graduação - Licenciatura'),(31,'Engenharia Civil','Um texto...','10 semestres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(32,'Engenharia Eletrônica','Um texto...','10 semestres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(33,'Engenharia Elétrica','Um texto...','10 semestres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(34,'Engenharia Mecatrônica','Um texto...','10 semestres',40,'SiSU','Integral','Presencial','Graduação - Bacharelado'),(35,'Radiologia','Um texto...','7 semestres',40,'SiSU','Vespertino','Presencial','Graduação - Bacharelado'),(36,'Design de Produto','Um texto...','8 semestres',30,'SiSU','Integral','Presencial','Tecnologia'),(37,'Eletrônica Industrial','Um texto...','7 semestres',36,'SiSU','Noturno','Presencial','Tecnologia'),(38,'Gestão da Tecnologia da Informação','Um texto...','6 semestres',30,'SiSU','no_value','Presencial','Tecnologia'),(39,'Radiologia','Um texto...','7 semestres',40,'SiSU','Vespertino','Presencial','Tecnologia'),(40,'Sistemas de Energia','Um texto...','6 semestres',40,'SiSU','Noturno','Presencial','Tecnologia'),(41,'Gestão Ambiental','Um texto...','6 semestres',40,'SiSU','Matutino','Presencial','Tecnologia'),(42,'Análise e Desenvolvimento de Sistemas','Um texto...','6 semestres',40,'SiSU','Noturno','Presencial','Tecnologia'),(43,'Design de Moda','Um texto...','6 semestres',40,'SiSU','Noturno','Presencial','Tecnologia'),(44,'Processos Gerenciais','Um texto...','6 semestres',40,'SiSU','Noturno','Presencial','Tecnologia');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos_campus`
--

DROP TABLE IF EXISTS `cursos_campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos_campus` (
  `curso` int(11) NOT NULL,
  `campus` int(11) NOT NULL,
  KEY `curso` (`curso`),
  KEY `campus` (`campus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos_campus`
--

LOCK TABLES `cursos_campus` WRITE;
/*!40000 ALTER TABLE `cursos_campus` DISABLE KEYS */;
INSERT INTO `cursos_campus` VALUES (1,1001),(2,1005),(3,1002),(4,1004),(5,1007),(6,1009);
/*!40000 ALTER TABLE `cursos_campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id_end` int(11) NOT NULL AUTO_INCREMENT,
  `logradoruo` varchar(120) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_end`),
  KEY `cidade` (`cidade`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `usuario` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `id_favorito` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_favorito`),
  KEY `usuario` (`usuario`),
  KEY `curso` (`curso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
  `id_uni` int(11) NOT NULL AUTO_INCREMENT,
  `imagem_uni` blob,
  `descricao_universidade` varchar(300) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `nome_universidade` varchar(80) NOT NULL,
  `telefone_universidade` varchar(13) DEFAULT NULL,
  `site_universidade` varchar(120) NOT NULL,
  PRIMARY KEY (`id_uni`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universidade`
--

LOCK TABLES `universidade` WRITE;
/*!40000 ALTER TABLE `universidade` DISABLE KEYS */;
INSERT INTO `universidade` VALUES (1,NULL,'Um texto','atendimento.setic.ufsc.br','UFSC','48 3721 9000','https://ufsc.br/'),(2,NULL,'Um texto','contato@uffs.edu.br','UFFS','49 2049 3100','https://www.uffs.edu.br/'),(3,NULL,'Um texto',NULL,'IFSC','48 3877 9000','https://www.ifsc.edu.br/'),(4,NULL,'Um texto',NULL,'IFC',NULL,'https://www.ifc.edu.br/');
/*!40000 ALTER TABLE `universidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `sobrenome` varchar(30) NOT NULL,
  `nome_usuario` varchar(80) NOT NULL,
  `email_usuario` varchar(80) NOT NULL,
  `data_nascimento` varchar(30) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `imagem_perfil` blob,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email_usuario` (`email_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=501 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Hithorable1981','Oliveira','BeatrizMeloOliveira@superrito.com','2/8/1981','yaeTh9Vai',1,_binary 'no_file'),(2,'Therhold','Souza','AnnaSilvaSouza@armyspy.com','1/26/1980','Iegh1ite5',1,_binary 'no_file'),(3,'Nuesconjou','Cunha','BrunaLimaCunha@gustr.com','12/11/1971','hah1Ai3Ie',1,_binary 'no_file'),(4,'Youreave1966','Correia','CauaCunhaCorreia@rhyta.com','1/5/1966','xahy8Daequ',1,_binary 'no_file'),(5,'Youren58','Correia','CamilaSilvaCorreia@cuvox.de','4/27/1958','Eizoo9Vee',1,_binary 'no_file'),(6,'Wishe1952','Araujo','CarlaMartinsAraujo@einrot.com','7/6/1952','EiGhood9s',1,_binary 'no_file'),(7,'Drabland','Correia','LaraSantosCorreia@cuvox.de','9/19/1990','Joi7ohphai',1,_binary 'no_file'),(8,'Shadeopleil1970','Santos','SophiaGomesSantos@armyspy.com','12/24/1970','Oosh3Naek7oo',1,_binary 'no_file'),(9,'Boxistaken','Rodrigues','ThaisAraujoRodrigues@armyspy.com','4/6/1948','oic0Oom0eej',1,_binary 'no_file'),(10,'Tirs1964','Fernandes','RafaelaRodriguesFernandes@superrito.com','12/23/1964','xeej4FaeT4',1,_binary 'no_file'),(11,'Ging1978','Oliveira','MatheusPintoOliveira@superrito.com','6/26/1978','Geet6lai8',1,_binary 'no_file'),(12,'Sacent','Carvalho','KauaGomesCarvalho@armyspy.com','1/19/1986','ieGu0ea3cho',1,_binary 'no_file'),(13,'Hemplife84','Silva','MariaCavalcantiSilva@fleckens.hu','5/4/1984','Ib6moshoh3oh',1,_binary 'no_file'),(14,'Wournig','Cavalcanti','LeilaAlmeidaCavalcanti@cuvox.de','9/9/1982','Aig7ohohB4M',1,_binary 'no_file'),(15,'Doemse','Almeida','LeonorCorreiaAlmeida@jourrapide.com','2/23/1981','dahPh3see',1,_binary 'no_file'),(16,'Whinare','Araujo','SamuelCardosoAraujo@armyspy.com','2/4/1943','chee0Eiw3',1,_binary 'no_file'),(17,'Ying1944','Cavalcanti','DiegoAzevedoCavalcanti@fleckens.hu','2/29/1944','eeShai7EuFi',1,_binary 'no_file'),(18,'Bage1978','Pereira','DouglasBarrosPereira@armyspy.com','5/2/1978','ohPhooThe0',1,_binary 'no_file'),(19,'Cappencond','Alves','GabrielaLimaAlves@armyspy.com','12/9/1936','chuir7oTh7',1,_binary 'no_file'),(20,'Mudis1962','Pereira','ArthurSousaPereira@superrito.com','1/14/1962','zahyaeB6rai',1,_binary 'no_file'),(21,'Reut2001','Cavalcanti','FelipeCunhaCavalcanti@einrot.com','1/27/2001','moo2MaTi',1,_binary 'no_file'),(22,'Satilly1978','Oliveira','JuliaSilvaOliveira@einrot.com','7/27/1978','doo0Iewae',1,_binary 'no_file'),(23,'Thopherch','Gomes','EduardoRodriguesGomes@cuvox.de','8/30/1969','ahk3Phooc',1,_binary 'no_file'),(24,'Musings','Santos','IsabelleAlvesSantos@jourrapide.com','12/23/1970','peeNeiXoh4',1,_binary 'no_file'),(25,'Befecon45','Ferreira','GabrielaMeloFerreira@armyspy.com','8/24/1945','ugooRohp8u',1,_binary 'no_file'),(26,'Themp1962','Sousa','MartimSilvaSousa@teleworm.us','9/8/1962','quaengu3oJ',1,_binary 'no_file'),(27,'Tallean','Costa','KauaRodriguesCosta@gustr.com','12/31/1968','eiph4Dob1O',1,_binary 'no_file'),(28,'Affavent1944','Rocha','ThaisAlvesRocha@gustr.com','6/7/1944','piQu2uGhu8',1,_binary 'no_file'),(29,'Namintaid','Pinto','IsabellaFernandesPinto@teleworm.us','10/28/1947','eeHeequ6ishei',1,_binary 'no_file'),(30,'Youlad','Ferreira','FernandaGoncalvesFerreira@superrito.com','6/30/1991','eeBohquo3A',0,_binary 'no_file'),(31,'Agartherm','Araujo','RodrigoLimaAraujo@cuvox.de','8/5/1950','yie0eBaek',0,_binary 'no_file'),(32,'Iiii1957','Almeida','NicolashRibeiroAlmeida@teleworm.us','6/17/1957','esum6aeHee',0,_binary 'no_file'),(33,'Gres1933','Cunha','CaioSousaCunha@dayrep.com','12/6/1933','kieJi1vie',0,_binary 'no_file'),(34,'Heinink','Dias','LeilaCarvalhoDias@jourrapide.com','12/5/2000','ri0foejeeNg',0,_binary 'no_file'),(35,'Ressen','Dias','LiviaCavalcantiDias@superrito.com','10/22/1982','Ier5ielahgh',0,_binary 'no_file'),(36,'Atill1980','Ferreira','LeticiaCostaFerreira@teleworm.us','3/1/1980','io6eiph9juCiaph',0,_binary 'no_file'),(37,'Cerecrever56','Rodrigues','JulianBarbosaRodrigues@fleckens.hu','12/30/1956','ai3leiWo1',0,_binary 'no_file'),(38,'Enver1961','Barbosa','EvelynCunhaBarbosa@cuvox.de','7/19/1961','sooTaib4iiY',0,_binary 'no_file'),(39,'Mospe1986','Cavalcanti','TiagoCarvalhoCavalcanti@gustr.com','12/22/1986','ei8aeShi7',0,_binary 'no_file'),(40,'Rabliand','Azevedo','VitorSouzaAzevedo@dayrep.com','7/13/1933','iDo9eemoo',0,_binary 'no_file'),(41,'Befousped96','Cunha','LaraCavalcantiCunha@einrot.com','12/21/1996','aiX1ou9Ah',0,_binary 'no_file'),(42,'Comilly90','Pereira','MarcosAlmeidaPereira@teleworm.us','3/27/1990','fa1Ke4joo3',0,_binary 'no_file'),(43,'Shichal','Silva','MarisaGomesSilva@einrot.com','5/28/1958','ueThuow1go',0,_binary 'no_file'),(44,'Alithe','Barbosa','AnnaSilvaBarbosa@armyspy.com','8/17/1948','Aith8teco8',0,_binary 'no_file'),(45,'Sitch1978','Lima','YasminAzevedoLima@teleworm.us','6/30/1978','ahsohK9AhGee',0,_binary 'no_file'),(46,'Therromes','Almeida','MiguelLimaAlmeida@cuvox.de','11/18/1969','nei6Niem',0,_binary 'no_file'),(47,'Opeashom','Azevedo','BrendaCorreiaAzevedo@superrito.com','4/22/1953','Ahge7basee',0,_binary 'no_file'),(48,'Tings1972','Lima','LeilaRochaLima@einrot.com','5/13/1972','oPheegh1eid',0,_binary 'no_file'),(49,'Thatia','Barbosa','LeilaGoncalvesBarbosa@cuvox.de','8/7/1951','aSh3hutah',0,_binary 'no_file'),(50,'Ancion96','Martins','GustavoGoncalvesMartins@superrito.com','11/12/1996','Pai1Ohwaeth',0,_binary 'no_file'),(51,'Blentoreaday','Araujo','RafaelPereiraAraujo@armyspy.com','11/19/1981','dicuveo8iR',0,_binary 'no_file'),(52,'Nouty1956','Rocha','BeatriceSantosRocha@gustr.com','7/21/1956','yieyejaes3Oo',0,_binary 'no_file'),(53,'Luter1967','Silva','GabrielleLimaSilva@superrito.com','4/20/1967','EehooY0doi',0,_binary 'no_file'),(54,'Lieve1997','Costa','MarcosRochaCosta@dayrep.com','7/7/1997','sahTh8Shea',0,_binary 'no_file'),(55,'Quamblus','Cardoso','DiogoSousaCardoso@gustr.com','6/18/1956','EeLujie2oh',0,_binary 'no_file'),(56,'Shish2000','Sousa','GiovannaSantosSousa@dayrep.com','10/12/2000','Maifeboo1yo',0,_binary 'no_file'),(57,'Befor1986','Melo','GabrielDiasMelo@gustr.com','3/28/1986','ool0faeSa',0,_binary 'no_file'),(58,'Aved1949','Carvalho','DiogoCorreiaCarvalho@fleckens.hu','2/2/1949','Eiche4ox',0,_binary 'no_file'),(59,'Whowlead','Rocha','ViniciusCardosoRocha@armyspy.com','4/3/1966','Iefai1oboocoo',0,_binary 'no_file'),(60,'Gendisgrow','Cavalcanti','CarlosCarvalhoCavalcanti@gustr.com','11/12/1971','Dofu0yufae',0,_binary 'no_file'),(61,'Therhold','Cardoso','GiovanaMeloCardoso@armyspy.com','3/27/1983','oopaKu4gahm',0,_binary 'no_file'),(62,'Stratiout','Sousa','ErickAraujoSousa@superrito.com','8/15/1981','Uedihoh3',0,_binary 'no_file'),(63,'Rookencepor96','Alves','MarcosBarbosaAlves@cuvox.de','9/15/1996','ahGh9eevi',0,_binary 'no_file'),(64,'Aniffeepull','Lima','NicolasMeloLima@cuvox.de','2/22/1941','Na7ohreiSh6',0,_binary 'no_file'),(65,'Fighall2000','Costa','LeticiaCavalcantiCosta@superrito.com','7/24/2000','Gaphe7eFo1Ee',0,_binary 'no_file'),(66,'Mads1944','Cavalcanti','MarisaCarvalhoCavalcanti@teleworm.us','12/4/1944','eiV4ooyuabie',0,_binary 'no_file'),(67,'Tichours','Pereira','KauanDiasPereira@gustr.com','10/29/1964','voh2eeVeeth',0,_binary 'no_file'),(68,'Theirth1985','Azevedo','NicolashGoncalvesAzevedo@superrito.com','10/12/1985','eiph7heuC',0,_binary 'no_file'),(69,'Equirt','Barbosa','KaueSantosBarbosa@superrito.com','8/27/1961','eem7Me8Kae',0,_binary 'no_file'),(70,'Witimmote1972','Cunha','ClaraAlvesCunha@dayrep.com','6/27/1972','uKae1pupei6ae',0,_binary 'no_file'),(71,'Thavizings','Costa','GiovanaRodriguesCosta@jourrapide.com','5/24/1964','Thooth7Aeth',0,_binary 'no_file'),(72,'Strel1974','Gomes','YasminAzevedoGomes@dayrep.com','4/6/1974','ce2ohGh2',0,_binary 'no_file'),(73,'Roadvine','Almeida','ErickRibeiroAlmeida@rhyta.com','2/18/1990','Ochail5ae',0,_binary 'no_file'),(74,'Lorts1951','Melo','BrunoMartinsMelo@dayrep.com','7/6/1951','ao8EweeR4O',0,_binary 'no_file'),(75,'Sple1973','Ribeiro','KauanMeloRibeiro@gustr.com','6/30/1973','quaiX8EeXai',0,_binary 'no_file'),(76,'Oveass1958','Gomes','CarolinaCostaGomes@einrot.com','9/13/1958','Jaengoh2',0,_binary 'no_file'),(77,'Niatand','Araujo','RodrigoAlvesAraujo@fleckens.hu','7/22/2000','diat1Gahfes',0,_binary 'no_file'),(78,'Crioul','Alves','YasminRodriguesAlves@dayrep.com','9/25/1962','Jeef2loothoh',0,_binary 'no_file'),(79,'Extrahmethe','Ferreira','AndreCostaFerreira@teleworm.us','2/25/1983','vig8Gooqua',0,_binary 'no_file'),(80,'Comenis','Martins','LuisSousaMartins@jourrapide.com','2/26/1961','Pe9ger2me',0,_binary 'no_file'),(81,'Hurn1933','Souza','VitoriaFernandesSouza@fleckens.hu','11/12/1933','af7aed3haiS',0,_binary 'no_file'),(82,'Hiselosting','Silva','FelipeDiasSilva@rhyta.com','7/23/1973','yeePh4bab',0,_binary 'no_file'),(83,'Blocared1954','Almeida','YasminAlvesAlmeida@gustr.com','12/21/1954','daZih2heipoo',0,_binary 'no_file'),(84,'Shelles','Goncalves','JulianCastroGoncalves@gustr.com','9/2/1979','tieVeis3t',0,_binary 'no_file'),(85,'Hispis','Ferreira','MateusDiasFerreira@armyspy.com','8/14/1975','ahZ0eiPhoo',0,_binary 'no_file'),(86,'Twoun1945','Pinto','MuriloAlmeidaPinto@jourrapide.com','4/29/1945','thonuuqu3Pu',0,_binary 'no_file'),(87,'Thatures','Cardoso','PedroPintoCardoso@rhyta.com','2/17/1985','Ahb3ae4ee',0,_binary 'no_file'),(88,'Mold1990','Almeida','EstevanSouzaAlmeida@rhyta.com','2/21/1990','Eatu3pe0aiW',0,_binary 'no_file'),(89,'Aptantion','Carvalho','CarlosGomesCarvalho@armyspy.com','6/7/1961','ahwie0OoBae0',0,_binary 'no_file'),(90,'Facke1982','Correia','MateusGomesCorreia@einrot.com','7/25/1982','Fu8lo2eiYie',0,_binary 'no_file'),(91,'Squithrilve','Silva','GiovanaFerreiraSilva@cuvox.de','4/13/1941','uch0kaiViphai',0,_binary 'no_file'),(92,'Hisna1935','Souza','BiancaRochaSouza@gustr.com','4/9/1935','nae0ieH3Aeng',0,_binary 'no_file'),(93,'Alannow','Oliveira','MatheusRibeiroOliveira@einrot.com','11/4/1941','Ahgh5aug7',0,_binary 'no_file'),(94,'Thelle','Carvalho','AndrePintoCarvalho@armyspy.com','8/13/1982','hoGel5zae',0,_binary 'no_file'),(95,'Asherettle','Santos','PauloBarrosSantos@armyspy.com','4/30/1998','ohL4chei',0,_binary 'no_file'),(96,'Yoursider','Martins','CarlaBarrosMartins@fleckens.hu','6/6/1974','oi7geiY6',0,_binary 'no_file'),(97,'Tookins','Goncalves','RodrigoAlmeidaGoncalves@superrito.com','5/1/1974','ido9Lood5',0,_binary 'no_file'),(98,'Slown1970','Rodrigues','LeticiaSantosRodrigues@jourrapide.com','12/22/1970','ahNeiqu4g',0,_binary 'no_file'),(99,'Pleaus','Silva','VitorLimaSilva@einrot.com','4/24/1958','shue8Aip',0,_binary 'no_file'),(100,'Drecur','Lima','YasminAzevedoLima@fleckens.hu','6/5/1933','iKo7eiz6a',0,_binary 'no_file'),(101,'Evence','Barbosa','LuanaFerreiraBarbosa@dayrep.com','10/23/1956','sewe8Ohth',0,_binary 'no_file'),(102,'Blative','Alves','MarinaGomesAlves@jourrapide.com','6/25/1936','ofiepheeMij3',0,_binary 'no_file'),(103,'Crom1988','Pereira','DaniloLimaPereira@fleckens.hu','4/23/1988','ohngaePhi3e',0,_binary 'no_file'),(104,'Faing1941','Gomes','FabioAlvesGomes@dayrep.com','7/23/1941','iujai2Eeng9',0,_binary 'no_file'),(105,'Frou1972','Cardoso','MarinaBarbosaCardoso@superrito.com','6/8/1972','ux6rioFee',0,_binary 'no_file'),(106,'Abbecit','Alves','LuanaCorreiaAlves@armyspy.com','12/23/1989','eghati6ue4Ka',0,_binary 'no_file'),(107,'Sarry1965','Rocha','IgorSouzaRocha@gustr.com','12/27/1965','ieP6quaing',0,_binary 'no_file'),(108,'Beirt1969','Santos','NicolashFernandesSantos@cuvox.de','11/19/1969','chohchiej1J',0,_binary 'no_file'),(109,'Youl1968','Souza','SamuelCorreiaSouza@rhyta.com','9/2/1968','aeyeiSeiy0ei',0,_binary 'no_file'),(110,'Moull1965','Goncalves','AntonioMartinsGoncalves@gustr.com','6/3/1965','ooxeme3Ohwoo',0,_binary 'no_file'),(111,'Whalmoselity','Lima','IgorBarbosaLima@armyspy.com','2/24/1991','Meyeo0joo',0,_binary 'no_file'),(112,'Beele1938','Rodrigues','CauaCunhaRodrigues@rhyta.com','6/23/1938','thif2Ooc',0,_binary 'no_file'),(113,'Gabout','Ribeiro','MarianaCostaRibeiro@teleworm.us','8/30/1958','zeineiv1Ei',0,_binary 'no_file'),(114,'Thadmories','Azevedo','AnaCorreiaAzevedo@cuvox.de','1/9/1992','tah9wunee6Ei',0,_binary 'no_file'),(115,'Humne1935','Alves','NicolasPereiraAlves@cuvox.de','2/15/1935','yiet1Eca9',0,_binary 'no_file'),(116,'Withed','Ribeiro','EduardaCorreiaRibeiro@fleckens.hu','10/24/1937','Saigo3fe9',0,_binary 'no_file'),(117,'Spones','Martins','CauaSilvaMartins@armyspy.com','8/7/1933','ohD6YooGhah',0,_binary 'no_file'),(118,'Kated1997','Alves','KauaRibeiroAlves@einrot.com','2/26/1997','Ohpha6kieng',0,_binary 'no_file'),(119,'Dowentere','Cavalcanti','FelipePereiraCavalcanti@jourrapide.com','4/19/1959','Ohd8KaiJ',0,_binary 'no_file'),(120,'Wicis1995','Santos','JoaoCunhaSantos@dayrep.com','2/4/1995','sa3eYie3g',0,_binary 'no_file'),(121,'Lowas1942','Castro','ArthurRochaCastro@cuvox.de','7/23/1942','aeDae1uawei1',0,_binary 'no_file'),(122,'Dencloge','Correia','LuanSouzaCorreia@armyspy.com','3/5/1954','Iepeish1x',0,_binary 'no_file'),(123,'Layse1962','Fernandes','VitoriaCorreiaFernandes@einrot.com','12/19/1962','tuThuk3ahg',0,_binary 'no_file'),(124,'Whicephas','Araujo','JulietaFerreiraAraujo@fleckens.hu','5/29/1942','aeQuaikeic3',0,_binary 'no_file'),(125,'Reptefor','Pereira','DiegoCastroPereira@cuvox.de','3/12/1995','du8Eet5EiW',0,_binary 'no_file'),(126,'Agentic','Correia','LauraAlmeidaCorreia@jourrapide.com','7/29/1940','aequaiQu5',0,_binary 'no_file'),(127,'Ughted','Alves','SarahMartinsAlves@gustr.com','2/12/1968','ohW1aijee',0,_binary 'no_file'),(128,'Firastr','Ferreira','LarissaDiasFerreira@cuvox.de','3/5/1936','nai4Tiewiet',0,_binary 'no_file'),(129,'Frookes','Lima','DaniloOliveiraLima@rhyta.com','7/27/1938','xohxaiGieg1',0,_binary 'no_file'),(130,'Fehourempard','Goncalves','CarolinaCorreiaGoncalves@cuvox.de','5/1/1997','shoshu0Ti',0,_binary 'no_file'),(131,'Lationd','Silva','RafaelaAlvesSilva@superrito.com','1/14/1940','Ohsh3ai3oo',0,_binary 'no_file'),(132,'Wassittelly','Sousa','LiviaFernandesSousa@gustr.com','10/26/1995','Eepe6hae8oo',0,_binary 'no_file'),(133,'Lant1986','Castro','ArthurCostaCastro@jourrapide.com','6/26/1986','Phae4tahph',0,_binary 'no_file'),(134,'Havid1964','Barros','PauloFernandesBarros@gustr.com','2/17/1964','Hoh3aes3shei',0,_binary 'no_file'),(135,'Wharned','Oliveira','AntonioLimaOliveira@superrito.com','1/7/1983','Gou9aiS2Oh',0,_binary 'no_file'),(136,'Nowed1936','Silva','EmilyAraujoSilva@teleworm.us','5/13/1936','goo1iFooqu3',0,_binary 'no_file'),(137,'Ringich1974','Costa','CarlaLimaCosta@dayrep.com','5/27/1974','uoLahd2Nah',0,_binary 'no_file'),(138,'Therlon1978','Cunha','AnaFernandesCunha@armyspy.com','4/4/1978','Achu2ahji',0,_binary 'no_file'),(139,'Thadox','Ribeiro','BeatriceSantosRibeiro@superrito.com','9/27/1981','ChasoosuL1cei',0,_binary 'no_file'),(140,'Theactiones','Cavalcanti','LaraOliveiraCavalcanti@jourrapide.com','6/23/1967','iaK6Eezi',0,_binary 'no_file'),(141,'Warobare','Dias','JoaoAlmeidaDias@jourrapide.com','9/13/1936','siichah3Uh',0,_binary 'no_file'),(142,'Awas1940','Alves','CauaAzevedoAlves@armyspy.com','5/21/1940','phaexae3ieSh',0,_binary 'no_file'),(143,'Shentle','Costa','RafaelaLimaCosta@dayrep.com','6/19/1994','aefa4Iejo',0,_binary 'no_file'),(144,'Cand1971','Alves','AnnaSouzaAlves@armyspy.com','2/24/1971','ahBei3Ieg8',0,_binary 'no_file'),(145,'Wormily1945','Oliveira','AliceRodriguesOliveira@cuvox.de','3/3/1945','iBeng5ogh',0,_binary 'no_file'),(146,'Racrat1939','Barros','LuisSantosBarros@armyspy.com','5/7/1939','Cooya7thopo',0,_binary 'no_file'),(147,'Hiciand','Castro','MarcosAlvesCastro@rhyta.com','10/5/1943','aesoh2Vof7a',0,_binary 'no_file'),(148,'Wiche1947','Sousa','SofiaFerreiraSousa@superrito.com','2/4/1947','aecooT2ah',0,_binary 'no_file'),(149,'Benty1996','Almeida','RyanBarrosAlmeida@cuvox.de','2/6/1996','iesh8eeGh',0,_binary 'no_file'),(150,'Senessobling','Cunha','ClaraFernandesCunha@superrito.com','3/23/1999','cu7iaFeeng',0,_binary 'no_file'),(151,'Hishismand','Oliveira','MatheusPintoOliveira@dayrep.com','2/7/1981','uj2Shooshae',0,_binary 'no_file'),(152,'Operin','Fernandes','AntonioDiasFernandes@superrito.com','7/10/1993','yothahX9g',0,_binary 'no_file'),(153,'Camir1985','Rocha','FabioAraujoRocha@einrot.com','8/9/1985','Uo6ieCh9ie',0,_binary 'no_file'),(154,'Uselp2000','Pinto','VictorSilvaPinto@fleckens.hu','3/11/2000','quah4iMaFo5',0,_binary 'no_file'),(155,'Nuad1991','Azevedo','SamuelCarvalhoAzevedo@gustr.com','6/11/1991','phei6Wix5',0,_binary 'no_file'),(156,'Giceins','Correia','VitorAlvesCorreia@dayrep.com','10/30/1990','Ji1leehoh',0,_binary 'no_file'),(157,'Stalow','Fernandes','KauaAlmeidaFernandes@teleworm.us','3/19/1941','cue9Mi4ech',0,_binary 'no_file'),(158,'Theept','Silva','RaissaGoncalvesSilva@teleworm.us','8/30/1945','Xiex3chahth',0,_binary 'no_file'),(159,'Beeirekee','Oliveira','ViniciusMeloOliveira@fleckens.hu','1/5/1944','hie0yi3Pai5',0,_binary 'no_file'),(160,'Mersed86','Correia','ClaraLimaCorreia@superrito.com','6/10/1986','Paez5ab2',0,_binary 'no_file'),(161,'Thic1989','Azevedo','MatildeSouzaAzevedo@fleckens.hu','7/17/1989','no6eePhai',0,_binary 'no_file'),(162,'Casent','Azevedo','LuizSousaAzevedo@einrot.com','4/12/1979','oChoob0eiB',0,_binary 'no_file'),(163,'Hationers','Araujo','AnnaBarrosAraujo@superrito.com','9/27/1984','cahJ3iug',0,_binary 'no_file'),(164,'Expromights','Fernandes','PedroRodriguesFernandes@fleckens.hu','5/30/1968','ooghai6E',0,_binary 'no_file'),(165,'Malame1997','Carvalho','RaissaGoncalvesCarvalho@teleworm.us','6/16/1997','so6keba1Th',0,_binary 'no_file'),(166,'Zeks1996','Martins','AlineMeloMartins@rhyta.com','3/13/1996','ao2zeeTh5v',0,_binary 'no_file'),(167,'Trand1941','Dias','NicolasSouzaDias@cuvox.de','11/4/1941','HaiGaev6',0,_binary 'no_file'),(168,'Winget','Araujo','MatildeMartinsAraujo@jourrapide.com','12/4/1958','eaGhieG3ei',0,_binary 'no_file'),(169,'Hodauld','Costa','NicolasCastroCosta@fleckens.hu','8/15/1944','Tohwe7gee',0,_binary 'no_file'),(170,'Wisess','Almeida','MarcosFerreiraAlmeida@rhyta.com','9/26/1936','Peith3ShoGhoh',0,_binary 'no_file'),(171,'Ract1972','Cavalcanti','CamilaFernandesCavalcanti@rhyta.com','6/25/1972','ahfueFei0',0,_binary 'no_file'),(172,'Buttrought','Pinto','EstevanAlvesPinto@rhyta.com','12/11/1977','IuXana8oo',0,_binary 'no_file'),(173,'Twereent','Costa','BiancaGoncalvesCosta@cuvox.de','4/18/1993','iefah3poP9Ie',0,_binary 'no_file'),(174,'Thating49','Cavalcanti','CarlaFerreiraCavalcanti@einrot.com','4/30/1949','Thei7Hies',0,_binary 'no_file'),(175,'Ornat1948','Pereira','IgorMartinsPereira@einrot.com','5/18/1948','uogh7aoBoh',0,_binary 'no_file'),(176,'Hisiblim','Carvalho','MarisaMartinsCarvalho@rhyta.com','10/16/1934','oa0wei7uJ9',0,_binary 'no_file'),(177,'Twonen','Cunha','ViniciusCardosoCunha@cuvox.de','3/3/1962','paediewae3uK1',0,_binary 'no_file'),(178,'Suffiever','Souza','VitoriaGomesSouza@armyspy.com','7/2/1975','yeezoh1Iu',0,_binary 'no_file'),(179,'Whate1949','Barbosa','AntonioGomesBarbosa@superrito.com','5/16/1949','zoo8Thee',0,_binary 'no_file'),(180,'Hentitivinge','Pereira','RafaelaMartinsPereira@einrot.com','8/17/1969','ohPhao5ooHai',0,_binary 'no_file'),(181,'Reame2001','Souza','IsabelleCunhaSouza@armyspy.com','4/12/2001','Keiwaefo3',0,_binary 'no_file'),(182,'Fames1958','Goncalves','ThaisBarbosaGoncalves@dayrep.com','7/23/1958','iet0Heep3ah',0,_binary 'no_file'),(183,'Ciflithis','Barbosa','MartimCorreiaBarbosa@jourrapide.com','11/6/1934','koc3xueQu7',0,_binary 'no_file'),(184,'Theyony','Melo','LuanaFerreiraMelo@teleworm.us','1/20/1941','Oa9ooy9ceo',0,_binary 'no_file'),(185,'Hercerays','Pereira','EduardaAlvesPereira@gustr.com','6/3/1978','keiT3air',0,_binary 'no_file'),(186,'Whiscoget','Alves','MarianaFerreiraAlves@jourrapide.com','5/17/1966','faif4eiNohb',0,_binary 'no_file'),(187,'Saight','Almeida','AmandaLimaAlmeida@rhyta.com','5/27/1988','Iiwahlae9vai',0,_binary 'no_file'),(188,'Wheird','Costa','DaniloDiasCosta@dayrep.com','11/11/2000','er2naj2ahNg',0,_binary 'no_file'),(189,'Alitill','Gomes','ThiagoPereiraGomes@dayrep.com','3/1/1968','AhCaeP9ahcae',0,_binary 'no_file'),(190,'Gess1997','Carvalho','IsabellaAlmeidaCarvalho@dayrep.com','11/11/1997','ieT5eig0Ee',0,_binary 'no_file'),(191,'Darphe','Carvalho','DouglasCardosoCarvalho@teleworm.us','12/2/1984','eeLei1qu',0,_binary 'no_file'),(192,'Suchic1976','Dias','BrunaRibeiroDias@fleckens.hu','1/29/1976','Mai0ue4Echi',0,_binary 'no_file'),(193,'Wiltoped','Martins','CarlosRibeiroMartins@cuvox.de','5/20/1993','fi8CaeGhiequ',0,_binary 'no_file'),(194,'Phisiber','Araujo','KauanFernandesAraujo@teleworm.us','3/5/1977','Ooj5soik',0,_binary 'no_file'),(195,'Maidne','Pereira','ThaisLimaPereira@jourrapide.com','3/31/1940','Iequ1Eequ',0,_binary 'no_file'),(196,'Weented','Barros','RyanLimaBarros@cuvox.de','9/1/1969','aey8jeeRoo',0,_binary 'no_file'),(197,'Andeld','Rocha','BiancaAlvesRocha@einrot.com','9/12/1998','ree1ieBoh7Agah',0,_binary 'no_file'),(198,'Althiche','Costa','AlexOliveiraCosta@cuvox.de','11/23/1971','Noothain7l',0,_binary 'no_file'),(199,'Outte1957','Martins','ManuelaFerreiraMartins@teleworm.us','2/28/1957','iCu8eihee',0,_binary 'no_file'),(200,'Derearthe47','Correia','OtavioBarrosCorreia@teleworm.us','12/27/1947','ahquoh7C',0,_binary 'no_file'),(201,'Witurnpled40','Rodrigues','LuizFernandesRodrigues@gustr.com','7/12/1940','yuuJ1ahZohy',0,_binary 'no_file'),(202,'Conage1934','Rocha','MariaCastroRocha@fleckens.hu','1/28/1934','ku3gevoh8Zae',0,_binary 'no_file'),(203,'Ingle1948','Melo','BiancaGomesMelo@fleckens.hu','2/29/1948','ahfei6eRee',0,_binary 'no_file'),(204,'Ablencesee','Santos','CarlosDiasSantos@teleworm.us','3/11/1972','Cah4boon8aesh',0,_binary 'no_file'),(205,'Arding','Gomes','TaniaSouzaGomes@teleworm.us','5/7/1956','ephei3aS',0,_binary 'no_file'),(206,'Tromphe40','Silva','SarahDiasSilva@armyspy.com','9/23/1940','iej7buGoh',0,_binary 'no_file'),(207,'Kinary','Gomes','YasminAzevedoGomes@jourrapide.com','4/29/1997','Lufoo6Mae',0,_binary 'no_file'),(208,'Donsagovive','Lima','LiviaCostaLima@gustr.com','2/3/1975','eiy4Eetoh',0,_binary 'no_file'),(209,'Aplues','Rodrigues','DaviMeloRodrigues@teleworm.us','12/28/1942','ooChoo5aen9',0,_binary 'no_file'),(210,'Whismucrept','Sousa','LaraPereiraSousa@dayrep.com','7/16/1952','loan7gaeXai',0,_binary 'no_file'),(211,'Coldstost','Carvalho','SamuelPintoCarvalho@fleckens.hu','4/15/1979','Mae7caich',0,_binary 'no_file'),(212,'Laccand','Souza','ThiagoSantosSouza@teleworm.us','1/25/1945','queifohGh3',0,_binary 'no_file'),(213,'Whatinat1942','Carvalho','AntonioSilvaCarvalho@gustr.com','10/18/1942','Eim3xaesh',0,_binary 'no_file'),(214,'Wavers','Barros','JulietaCavalcantiBarros@jourrapide.com','12/11/1946','eeV8ee1O',0,_binary 'no_file'),(215,'Therecting','Barros','LaraAzevedoBarros@dayrep.com','1/23/1971','Ucieru3s',0,_binary 'no_file'),(216,'Entless','Alves','EnzoGoncalvesAlves@jourrapide.com','12/28/1968','guGh7ahtoh',0,_binary 'no_file'),(217,'Signtearame','Rodrigues','LuizaCastroRodrigues@fleckens.hu','6/21/1940','Ooh1ophoo8Ai',0,_binary 'no_file'),(218,'Seensled','Dias','ArthurFerreiraDias@gustr.com','7/6/1975','chah8urohNg',0,_binary 'no_file'),(219,'Whanimped','Sousa','IsabelleCostaSousa@teleworm.us','2/21/1998','Sodiebai9',0,_binary 'no_file'),(220,'Nowily','Castro','LeilaSantosCastro@rhyta.com','1/13/1969','aeyuJ5iash',0,_binary 'no_file'),(221,'Solow1984','Costa','MiguelRibeiroCosta@einrot.com','12/30/1984','ShaicuWa2i',0,_binary 'no_file'),(222,'Caravered','Sousa','GabriellyAraujoSousa@gustr.com','7/3/1940','Ohke9oifei6',0,_binary 'no_file'),(223,'Crin1961','Correia','ThiagoPintoCorreia@armyspy.com','1/23/1961','weecaehau5Ai',0,_binary 'no_file'),(224,'Expal1993','Cardoso','JulianAlmeidaCardoso@jourrapide.com','3/19/1993','iz0ahv9Boo9',0,_binary 'no_file'),(225,'Prilifigh','Carvalho','NicolePintoCarvalho@jourrapide.com','2/4/1983','Iev6lee8moo',0,_binary 'no_file'),(226,'Consy1948','Barbosa','TiagoGomesBarbosa@fleckens.hu','7/22/1948','abei7aeHai',0,_binary 'no_file'),(227,'Millikesse49','Oliveira','IgorGoncalvesOliveira@jourrapide.com','6/10/1949','eev3uPh4do',0,_binary 'no_file'),(228,'Hily1941','Correia','RodrigoMartinsCorreia@fleckens.hu','5/27/1941','Ahb1eithoo',0,_binary 'no_file'),(229,'Pealis73','Pinto','TomasBarbosaPinto@einrot.com','7/18/1973','ith7ooThah',0,_binary 'no_file'),(230,'Busert','Azevedo','ThaisOliveiraAzevedo@dayrep.com','9/21/1941','phuiBex6',0,_binary 'no_file'),(231,'Forall','Oliveira','CauaAzevedoOliveira@gustr.com','1/1/1975','AeVohdie7qu',0,_binary 'no_file'),(232,'Viscruend','Sousa','LeonorCorreiaSousa@armyspy.com','7/26/1967','mei3Lo7phai',0,_binary 'no_file'),(233,'Awask1974','Correia','RafaelaRochaCorreia@gustr.com','6/20/1974','Zu6XieYoFie',0,_binary 'no_file'),(234,'Prient','Martins','EmillySousaMartins@einrot.com','3/17/1956','gae8KaCh',0,_binary 'no_file'),(235,'Likessurbaus','Costa','BiancaBarrosCosta@fleckens.hu','9/5/1963','aix6paiMei',0,_binary 'no_file'),(236,'Quiptair1934','Cardoso','ViniciusRodriguesCardoso@einrot.com','1/26/1934','Daitiez2ah',0,_binary 'no_file'),(237,'Casent','Araujo','GuilhermeLimaAraujo@dayrep.com','3/23/1971','Ahme2oof',0,_binary 'no_file'),(238,'Andla1970','Ribeiro','IsabellaCostaRibeiro@cuvox.de','7/1/1970','Zidotae4fah',0,_binary 'no_file'),(239,'Mily2001','Martins','VitoriaSousaMartins@armyspy.com','4/7/2001','ieQuahgae3x',0,_binary 'no_file'),(240,'Mays1959','Ferreira','DaviAlvesFerreira@armyspy.com','1/20/1959','oof6Diequoh',0,_binary 'no_file'),(241,'Deadied','Ferreira','GiovannaCunhaFerreira@cuvox.de','4/6/1994','OhYoaT9ezoh',0,_binary 'no_file'),(242,'Tanot1996','Martins','AliceCorreiaMartins@rhyta.com','9/11/1996','aiYaero7',0,_binary 'no_file'),(243,'Foult1981','Sousa','GabrielleAraujoSousa@superrito.com','9/13/1981','ahnai0Foe',0,_binary 'no_file'),(244,'Stions','Pereira','NicoleSilvaPereira@dayrep.com','4/19/1956','Coh8aiw0',0,_binary 'no_file'),(245,'Andisho','Silva','EduardaAraujoSilva@teleworm.us','2/18/1958','AhJee0xa6qu',0,_binary 'no_file'),(246,'Hantimpok','Barros','TaniaMartinsBarros@dayrep.com','4/2/1946','liewa3Ohs1Ai',0,_binary 'no_file'),(247,'Waing1967','Oliveira','VitorAlvesOliveira@gustr.com','2/27/1967','Eiw3phae',0,_binary 'no_file'),(248,'Whanifeceas','Rodrigues','DaviFerreiraRodrigues@superrito.com','4/3/1947','zeeBong4n',0,_binary 'no_file'),(249,'Methery1998','Azevedo','ThiagoRibeiroAzevedo@einrot.com','1/12/1998','coceVejee1',0,_binary 'no_file'),(250,'Whisonds','Ferreira','RodrigoSantosFerreira@teleworm.us','8/21/1947','HooF7Ahg7iroh',0,_binary 'no_file'),(251,'Thall1995','Fernandes','RafaelCavalcantiFernandes@gustr.com','11/27/1995','ahTh1woogae',0,_binary 'no_file'),(252,'Anut1960','Barbosa','CarlaAzevedoBarbosa@superrito.com','8/18/1960','Ko4AecheuP0',0,_binary 'no_file'),(253,'Wenton','Ferreira','NicolasDiasFerreira@fleckens.hu','4/3/1998','chei9eiHoo',0,_binary 'no_file'),(254,'Requithe','Barros','JoaoRodriguesBarros@armyspy.com','9/12/1949','Oifoow5le',0,_binary 'no_file'),(255,'Husat1980','Carvalho','AlineDiasCarvalho@cuvox.de','12/2/1980','iwaa8Ech',0,_binary 'no_file'),(256,'Torteropaid','Correia','FabioCarvalhoCorreia@teleworm.us','6/16/1996','oojie2ooJ6Vie',0,_binary 'no_file'),(257,'Boared','Costa','LuanaMeloCosta@armyspy.com','5/14/1962','ta6eze2Axai',0,_binary 'no_file'),(258,'Loored','Dias','SofiaCorreiaDias@fleckens.hu','9/12/1950','wen2phe0uoX',0,_binary 'no_file'),(259,'Tratc1993','Araujo','GuilhermeAzevedoAraujo@rhyta.com','3/31/1993','ooqu8Eet2',0,_binary 'no_file'),(260,'Vies1990','Melo','AnnaSouzaMelo@cuvox.de','4/19/1990','Iec5theem0ai',0,_binary 'no_file'),(261,'Oundeent','Ribeiro','ClaraBarrosRibeiro@fleckens.hu','2/6/1970','uph4ooKeik0',0,_binary 'no_file'),(262,'Hinaries','Pinto','PedroRodriguesPinto@teleworm.us','11/7/1988','Fu0UChoo0ae',0,_binary 'no_file'),(263,'Sibut1949','Azevedo','EstevanPereiraAzevedo@rhyta.com','12/14/1949','aa7aax5aeSh',0,_binary 'no_file'),(264,'Famort','Ribeiro','ArthurFernandesRibeiro@einrot.com','12/7/1935','utah1Chae',0,_binary 'no_file'),(265,'Qualt2001','Souza','SamuelCostaSouza@teleworm.us','2/24/2001','OhqueiP4ie',0,_binary 'no_file'),(266,'Bossubjectis','Cardoso','EvelynCarvalhoCardoso@superrito.com','3/10/1977','ohM0jousa',0,_binary 'no_file'),(267,'Riet1989','Barros','LeticiaCastroBarros@teleworm.us','4/27/1989','Iezaoj2eif',0,_binary 'no_file'),(268,'Tage1982','Goncalves','CarlaBarbosaGoncalves@rhyta.com','5/29/1982','Hai0voh6th',0,_binary 'no_file'),(269,'Havinhem','Souza','GiovanaLimaSouza@jourrapide.com','9/23/1955','Boh7fook',0,_binary 'no_file'),(270,'Hathers','Cavalcanti','MarisaBarbosaCavalcanti@fleckens.hu','11/12/1987','LeiXei6c',0,_binary 'no_file'),(271,'Beely1974','Azevedo','GabriellyRibeiroAzevedo@einrot.com','11/27/1974','phieng9Ee',0,_binary 'no_file'),(272,'Nestiold','Ribeiro','EduardoCorreiaRibeiro@dayrep.com','10/19/1971','YiePif8pee',0,_binary 'no_file'),(273,'Hintailging','Carvalho','ViniciusSouzaCarvalho@rhyta.com','10/29/1978','quae3Uuf3ae',0,_binary 'no_file'),(274,'Purnegy','Correia','LeonorMartinsCorreia@jourrapide.com','8/19/1982','shaisiu2V',0,_binary 'no_file'),(275,'Oppestands','Gomes','IgorAlmeidaGomes@jourrapide.com','5/17/1933','theeFaeC8l',0,_binary 'no_file'),(276,'Blike1969','Ferreira','MarianaCunhaFerreira@fleckens.hu','1/21/1969','jio9FahJi0ei',0,_binary 'no_file'),(277,'Sheining','Araujo','LeticiaSilvaAraujo@gustr.com','9/11/1960','ieg3No6jah4',0,_binary 'no_file'),(278,'Tivimadaim','Dias','LarissaAraujoDias@armyspy.com','3/8/1993','Owahx2Isohs',0,_binary 'no_file'),(279,'Halled','Cunha','JoseBarrosCunha@dayrep.com','7/3/1960','uapeeMee3',0,_binary 'no_file'),(280,'Onink1961','Gomes','BrenoCavalcantiGomes@teleworm.us','6/27/1961','PhohB0phae',0,_binary 'no_file'),(281,'Afrown','Castro','TiagoBarrosCastro@cuvox.de','3/10/1959','vah8fe9Ahf',0,_binary 'no_file'),(282,'Whimenturn','Ribeiro','MatildeSousaRibeiro@armyspy.com','10/28/1996','eikeiJo9',0,_binary 'no_file'),(283,'Ciect1953','Alves','ViniciusLimaAlves@dayrep.com','10/27/1953','jiel5Ein',0,_binary 'no_file'),(284,'Samintme','Rodrigues','MiguelLimaRodrigues@cuvox.de','4/29/1984','Ceih9iedoh',0,_binary 'no_file'),(285,'Thatill1935','Cunha','AntonioPintoCunha@dayrep.com','2/4/1935','pho6Aich',0,_binary 'no_file'),(286,'Thiseved','Pinto','IsabelleAlmeidaPinto@dayrep.com','3/7/2001','nahY9ohr',0,_binary 'no_file'),(287,'Sixeclog','Lima','LiviaAzevedoLima@gustr.com','9/5/1951','eneiThei9',0,_binary 'no_file'),(288,'Halliessed','Cardoso','TaniaMeloCardoso@jourrapide.com','9/17/1953','aiPh9quooD7',0,_binary 'no_file'),(289,'Areaccely1951','Azevedo','RodrigoFerreiraAzevedo@einrot.com','11/17/1951','uSh6jeib',0,_binary 'no_file'),(290,'Museltook','Correia','SamuelSousaCorreia@dayrep.com','6/2/1999','ei2Shieth5',0,_binary 'no_file'),(291,'Morgivy','Barros','ThaisAlmeidaBarros@superrito.com','7/9/1967','Hae8ooteeyie',0,_binary 'no_file'),(292,'Hable1977','Souza','MariaGomesSouza@superrito.com','11/7/1977','Hi6aukohng',0,_binary 'no_file'),(293,'Nowne1937','Alves','RebecaSouzaAlves@fleckens.hu','5/15/1937','laiN3caath',0,_binary 'no_file'),(294,'Musibing96','Melo','JuliaSantosMelo@cuvox.de','1/20/1996','Ocheehua5ne',0,_binary 'no_file'),(295,'Submis','Barbosa','LuanAlmeidaBarbosa@gustr.com','2/28/1956','Wulohvi9Gad',0,_binary 'no_file'),(296,'Prionat','Barbosa','BiancaSilvaBarbosa@rhyta.com','9/19/1983','eiJoh9EgeeP5',0,_binary 'no_file'),(297,'Theract','Sousa','LeonorCorreiaSousa@fleckens.hu','10/21/1958','pei2ieyaBo3oo',0,_binary 'no_file'),(298,'Woridence','Costa','KauanBarrosCosta@rhyta.com','12/30/1957','eit8ooxohG',0,_binary 'no_file'),(299,'Bespoormsed','Correia','BrunaAraujoCorreia@fleckens.hu','2/15/1938','iMah6Iengur',0,_binary 'no_file'),(300,'Ouste1977','Cunha','SofiaCorreiaCunha@fleckens.hu','10/15/1977','IeSi6airei',0,_binary 'no_file');
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

-- Dump completed on 2019-05-14 16:51:44
