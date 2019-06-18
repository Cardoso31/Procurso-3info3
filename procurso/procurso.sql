-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 18-Jun-2019 às 06:16
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `procurso`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

DROP TABLE IF EXISTS `campus`;
CREATE TABLE IF NOT EXISTS `campus` (
  `id_campus` int(11) NOT NULL AUTO_INCREMENT,
  `telefone_campus` varchar(30) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `campus`
--

INSERT INTO `campus` (`id_campus`, `telefone_campus`, `email_campus`, `descricao_campus`, `nome_campus`, `imagem_campus`, `endereco`, `universidade`, `site_campus`) VALUES
(1027, '49 3236 3100', '', 'Um texto...', 'IFSC - Urupema', 0x6e6f5f66696c65, 1, 1, 'www.urupema.ifsc.edu.br'),
(1028, '49 3441 7900', 'assessoria.xanxere@ifsc.edu.br', 'Um texto...', 'IFSC - Xanxer?', 0x6e6f5f66696c65, 1, 1, 'www.xanxere.ifsc.edu.br'),
(1026, '48 3301 9100', 'gabinete.tub@ifsc.edu.br', 'Um texto...', 'IFSC - Tubar?o', 0x6e6f5f66696c65, 1, 1, 'www.tubarao.ifsc.edu.br'),
(1025, '49 3631 0400', '', 'Um texto...', 'IFSC - S?o Miguel do Oeste', 0x6e6f5f66696c65, 1, 1, 'www.smo.ifsc.edu.br'),
(1024, '49 3344 8595', '', 'Um texto...', 'IFSC - S?o Louren?o do Oeste', 0x6e6f5f66696c65, 1, 1, 'www.slo.ifsc.edu.br'),
(1023, '48 3381 2800', '', 'Um texto...', 'IFSC - S?o Jos?', 0x6e6f5f66696c65, 1, 1, 'www.sj.ifsc.edu.br'),
(1022, '49 3325 4149', '', 'Um texto...', 'IFSC - S?o Carlos', 0x6e6f5f66696c65, 1, 1, 'www.saocarlos.ifsc.edu.br'),
(1021, '48 3341 9700', 'contato.palhoca@ifsc.edu.br', 'Um texto...', 'IFSC - Palho?a Bil?ngue', 0x6e6f5f66696c65, 1, 1, 'www.palhoca.ifsc.edu.br'),
(1020, '49 3221 4243', '', 'Um texto...', 'IFSC - Lages', 0x6e6f5f66696c65, 1, 1, 'www.lages.ifsc.edu.br'),
(1019, '47 3431 5600', 'direcao.joinville@ifsc.edu.br', 'Um texto...', 'IFSC - Joinville', 0x6e6f5f66696c65, 1, 1, 'www.joinville.ifsc.edu.br'),
(1018, '47 3276 9600', 'assessoria.gw@ifsc.edu.br', 'Um texto...', 'IFSC - Jaragu? do Sul - Rau', 0x6e6f5f66696c65, 1, 1, 'www.gw.ifsc.edu.br'),
(1017, '47 3276 8700', 'direcao.jaragua@ifsc.edu.br', 'Um texto...', 'IFSC - Jaragu? do Sul - Centro', 0x6e6f5f66696c65, 1, 1, 'www.jaragua.ifsc.edu.br'),
(1016, '47 3390 1200', '', 'Um texto...', 'IFSC - Itaja?', 0x6e6f5f66696c65, 1, 1, 'www.itajai.ifsc.edu.br'),
(1015, '47 3318 3700', '', 'Um texto...', 'IFSC - Gaspar', 0x6e6f5f66696c65, 1, 1, 'www.gaspar.ifsc.edu.br'),
(1014, '48 3254 7372', '', 'Um texto...', 'IFSC - Garopaba', 0x6e6f5f66696c65, 1, 1, 'www.garopaba.ifsc.edu.br'),
(1013, '48 3877 8419', '', 'Um texto...', 'IFSC - Florian?polis-Continente', 0x6e6f5f66696c65, 1, 1, 'www.continente.ifsc.edu.br\n\n'),
(1012, '48 3211 6000', 'ouvidoriafpolis@ifsc.edu.br', 'Um texto...', 'IFSC - Florian?polis', 0x6e6f5f66696c65, 1, 1, 'www.florianopolis.ifsc.edu.br\n\n'),
(1010, '49 3313 1240', '', 'Um texto...', 'IFSC - Chapec?', 0x6e6f5f66696c65, 1, 1, 'www.chapeco.ifsc.edu.br\n\n'),
(1011, '48 3462 5000', '', 'Um texto...', 'IFSC - Crici?ma', 0x6e6f5f66696c65, 1, 1, 'www.criciuma.ifsc.edu.br'),
(1008, '47 3627 4500', '', 'Um texto...', 'IFSC - Canoinhas', 0x6e6f5f66696c65, 1, 1, 'www.canoinhas.ifsc.edu.br'),
(1009, '49 3561 5700', 'atendimento.cdr@ifsc.edu.br', 'Um texto...', 'IFSC - Ca?ador', 0x6e6f5f66696c65, 1, 1, 'www.cacador.ifsc.edu.br'),
(1007, '48 3311 5000', 'assessoria.ararangua@ifsc.edu.br', 'Um texto...', 'IFSC - Ararangu?', 0x6e6f5f66696c65, 1, 1, 'http://ararangua.ifsc.edu.br/site/'),
(1006, ' 49 2049 2600', 'ascom.re@uffs.edu.br', 'Um texto...', 'UFFS - Chapec?', 0x6e6f5f66696c65, 1, 1, 'https://www.uffs.edu.br/campi/chapeco'),
(1005, '48 3721 9000', 'ascom.re@uffs.edu.br', 'Um texto...', 'UFSC - Florian?polis', 0x6e6f5f66696c65, 1, 1, 'https://ufsc.br/'),
(1004, '48 3721 6455', '', 'Um texto...', 'UFSC - Curitibanos', 0x6e6f5f66696c65, 1, 1, 'http://curitibanos.ufsc.br/'),
(1002, '48 3721 3354', 'blumenau@contato.ufsc.br', 'Um texto...', 'UFSC - Blumenau', 0x6e6f5f66696c65, 1, 1, 'http://blumenau.ufsc.br/'),
(1001, '48 3721 6255', 'comunicacao.ara@contato.ufsc.br', 'Um texto...', 'UFSC - Ararangu?', 0x6e6f5f66696c65, 1, 1, 'http://ararangua.ufsc.br/'),
(1029, '(47) 4002-8922', 'umbrela.contato@outlook.com', 'O campus ? bonito', 'UMBRELA', NULL, 2, 2, 'umbrela.edu.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(80) NOT NULL,
  PRIMARY KEY (`id_cidade`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id_cidade`, `nome_cidade`) VALUES
(1, 'Araquari'),
(2, 'Joinville'),
(3, 'S?o Francisco do Sul'),
(4, 'Rio do Sul'),
(5, 'Rio Negrinho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

DROP TABLE IF EXISTS `comentario`;
CREATE TABLE IF NOT EXISTS `comentario` (
  `usuario` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `comentario_descricao` varchar(200) NOT NULL,
  `data_hora` varchar(80) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `usuario` (`usuario`),
  KEY `curso` (`curso`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

DROP TABLE IF EXISTS `curso`;
CREATE TABLE IF NOT EXISTS `curso` (
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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`id_curso`, `nome_curso`, `descricao_curso`, `carga_horaria`, `numero_vagas`, `forma_ingresso`, `turno`, `modalidade`, `grau`) VALUES
(1, 'Administra??o', 'Um texto...', '9 semestres', 100, 'SiSU', 'Matutino e Noturno', 'Presencial', 'Gradua??o - Bacharelado'),
(2, 'Agronomia', 'Um texto...', '10 semestres', 50, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(3, 'Ci?ncia da Computa??o', 'Um texto...', '8 semestres', 100, 'SiSU', 'Vespertino e Noturno', 'Presencial', 'Gradua??o - Bacharelado'),
(4, 'Ci?ncias Sociais', 'Um texto...', '9 semestres', 50, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(5, 'Enfermagem', 'Um texto...', '10 semestres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(6, 'Pedagogia', 'Um texto...', '9 semestres', 100, 'SiSU', 'Matutino e Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(7, 'Engenharia Ambiental e Sanit?ria', 'Um texto...', '10 semestres', 50, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(8, 'Filosofia', 'Um texto...', '9 semestres', 50, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(9, 'Geografia', 'Um texto...', '9 semestres', 50, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(10, 'Hist?ria', 'Um texto...', '9 semestres', 50, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(11, 'Letras (Portugu?s e Espanhol)', 'Um texto...', '10 semestres', 50, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(12, 'Matem?tica', 'Um texto...', '9 semestres', 50, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(13, 'Medicina', 'Um texto...', '12 semastres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(14, 'Educa??o', 'Um texto...', '12 meses', 20, 'Processo Seletivo', 'Matutino e Vespertino', 'Presencial', 'Mestrado'),
(15, 'Estudos Lingu?sticos', 'Um texto...', '12 meses', 20, 'Processo Seletivo', 'Matutino e Vespertino', 'Presencial', 'Mestrado'),
(16, 'Hist?ria', 'Um texto...', '12 meses', 15, 'Processo Seletivo', 'Integral', 'Presencial', 'Mestrado'),
(17, 'Profissional em Matem?tica em Rede Nacional', 'Um texto...', '12 meses', 20, 'Processo Seletivo', 'Matutino', 'Presencial', 'Mestrado'),
(18, 'Filosofia', 'Um texto...', '24 meses', 15, 'Processo Seletivo', 'Vespertino e Noturno', 'Presencial', 'Mestrado'),
(19, 'Geografia', 'Um texto...', '12 meses', 15, 'Processo Seletivo', 'Integral', 'Presencial', 'Mestrado'),
(20, 'F?sica', 'Um texto...', '8 semestres', 40, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Licenciatura'),
(21, 'Design de Moda', 'Um texto...', '7 semestres', 36, 'SiSU', 'no_value', 'Presencial', 'Tecnologia'),
(22, 'An?lise e Desenvolvimento de Sistemas', 'Um texto...', '6 semestres', 40, 'SiSU', 'Noturno', 'Presencial', 'Tecnologia'),
(23, 'Agronomia', 'Um texto...', '10 semestres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(24, 'Tecnologia em Alimentos', 'Um texto...', '6 semestres', 40, 'SiSU', 'no_value', 'Presencial', 'Tecnologia'),
(25, 'Engenharia de produ??o', 'Um texto...', '10 semestres', 40, 'SiSU', 'Noturno', 'Presencial', 'Gradua??o - Bacharelado'),
(26, 'Sistemas de Informa??o', 'Um texto...', '8 semestres', 40, 'SiSU', 'no_value', 'Presencial', 'Gradua??o - Bacharelado'),
(27, 'Engenharia de Controle e Automa??o', 'Um texto...', '10 semestres', 40, 'SiSU', 'Matutino e Vespertino', 'Presencial', 'Gradua??o - Bacharelado'),
(28, 'Engenharia Civil', 'Um texto...', '10 semestres', 40, 'SiSU', 'no_value', 'Presencial', 'Gradua??o - Bacharelado'),
(29, 'Engenharia Mecatr?nica', 'Um texto...', '10 semestres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(30, 'Qu?mica', 'Um texto...', '8 semestres', 40, 'SiSU', 'no_value', 'Presencial', 'Gradua??o - Licenciatura'),
(31, 'Engenharia Civil', 'Um texto...', '10 semestres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(32, 'Engenharia Eletr?nica', 'Um texto...', '10 semestres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(33, 'Engenharia El?trica', 'Um texto...', '10 semestres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(34, 'Engenharia Mecatr?nica', 'Um texto...', '10 semestres', 40, 'SiSU', 'Integral', 'Presencial', 'Gradua??o - Bacharelado'),
(35, 'Radiologia', 'Um texto...', '7 semestres', 40, 'SiSU', 'Vespertino', 'Presencial', 'Gradua??o - Bacharelado'),
(36, 'Design de Produto', 'Um texto...', '8 semestres', 30, 'SiSU', 'Integral', 'Presencial', 'Tecnologia'),
(37, 'Eletr?nica Industrial', 'Um texto...', '7 semestres', 36, 'SiSU', 'Noturno', 'Presencial', 'Tecnologia'),
(38, 'Gest?o da Tecnologia da Informa??o', 'Um texto...', '6 semestres', 30, 'SiSU', 'no_value', 'Presencial', 'Tecnologia'),
(39, 'Radiologia', 'Um texto...', '7 semestres', 40, 'SiSU', 'Vespertino', 'Presencial', 'Tecnologia'),
(40, 'Sistemas de Energia', 'Um texto...', '6 semestres', 40, 'SiSU', 'Noturno', 'Presencial', 'Tecnologia'),
(41, 'Gest?o Ambiental', 'Um texto...', '6 semestres', 40, 'SiSU', 'Matutino', 'Presencial', 'Tecnologia'),
(42, 'An?lise e Desenvolvimento de Sistemas', 'Um texto...', '6 semestres', 40, 'SiSU', 'Noturno', 'Presencial', 'Tecnologia'),
(43, 'Design de Moda', 'Um texto...', '6 semestres', 40, 'SiSU', 'Noturno', 'Presencial', 'Tecnologia'),
(44, 'Processos Gerenciais', 'Um texto...', '6 semestres', 40, 'SiSU', 'Noturno', 'Presencial', 'Tecnologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos_campus`
--

DROP TABLE IF EXISTS `cursos_campus`;
CREATE TABLE IF NOT EXISTS `cursos_campus` (
  `curso` int(11) NOT NULL,
  `campus` int(11) NOT NULL,
  KEY `curso` (`curso`),
  KEY `campus` (`campus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos_campus`
--

INSERT INTO `cursos_campus` (`curso`, `campus`) VALUES
(1, 1001),
(2, 1005),
(3, 1002),
(4, 1004),
(5, 1007),
(6, 1009);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `id_end` int(11) NOT NULL AUTO_INCREMENT,
  `logradoruo` varchar(120) NOT NULL,
  `cep` varchar(15) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_end`),
  KEY `cidade` (`cidade`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritar`
--

DROP TABLE IF EXISTS `favoritar`;
CREATE TABLE IF NOT EXISTS `favoritar` (
  `usuario` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `id_favorito` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_favorito`),
  KEY `usuario` (`usuario`),
  KEY `curso` (`curso`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `universidade`
--

DROP TABLE IF EXISTS `universidade`;
CREATE TABLE IF NOT EXISTS `universidade` (
  `id_uni` int(11) NOT NULL AUTO_INCREMENT,
  `imagem_uni` blob,
  `descricao_universidade` varchar(300) NOT NULL,
  `email` varchar(80) DEFAULT NULL,
  `nome_universidade` varchar(80) NOT NULL,
  `telefone_universidade` varchar(13) DEFAULT NULL,
  `site_universidade` varchar(120) NOT NULL,
  PRIMARY KEY (`id_uni`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `universidade`
--

INSERT INTO `universidade` (`id_uni`, `imagem_uni`, `descricao_universidade`, `email`, `nome_universidade`, `telefone_universidade`, `site_universidade`) VALUES
(1, NULL, 'Um texto', 'atendimento.setic.ufsc.br', 'UFSC', '48 3721 9000', 'https://ufsc.br/'),
(2, NULL, 'Um texto', 'contato@uffs.edu.br', 'UFFS', '49 2049 3100', 'https://www.uffs.edu.br/'),
(3, NULL, 'Um texto', NULL, 'IFSC', '48 3877 9000', 'https://www.ifsc.edu.br/'),
(4, NULL, 'Um texto', NULL, 'IFC', NULL, 'https://www.ifc.edu.br/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `sobrenome` varchar(30) DEFAULT NULL,
  `nome_usuario` varchar(80) NOT NULL,
  `email_usuario` varchar(80) NOT NULL,
  `data_nascimento` varchar(30) NOT NULL,
  `senha` varchar(25) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `imagem_perfil` blob,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email_usuario` (`email_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=508 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `sobrenome`, `nome_usuario`, `email_usuario`, `data_nascimento`, `senha`, `tipo_usuario`, `imagem_perfil`) VALUES
(505, 'Cardoso', 'Mateus', 'Mateuscardoso311s2@gmail.com', 'data_nula', 'asdfsdf', 0, NULL),
(250, 'Whisonds', 'Ferreira', 'RodrigoSantosFerreira@teleworm.us', '8/21/1947', 'HooF7Ahg7iroh', 0, 0x6e6f5f66696c65),
(251, 'Thall1995', 'Fernandes', 'RafaelCavalcantiFernandes@gustr.com', '11/27/1995', 'ahTh1woogae', 0, 0x6e6f5f66696c65),
(252, 'Anut1960', 'Barbosa', 'CarlaAzevedoBarbosa@superrito.com', '8/18/1960', 'Ko4AecheuP0', 0, 0x6e6f5f66696c65),
(253, 'Wenton', 'Ferreira', 'NicolasDiasFerreira@fleckens.hu', '4/3/1998', 'chei9eiHoo', 0, 0x6e6f5f66696c65),
(254, 'Requithe', 'Barros', 'JoaoRodriguesBarros@armyspy.com', '9/12/1949', 'Oifoow5le', 0, 0x6e6f5f66696c65),
(255, 'Husat1980', 'Carvalho', 'AlineDiasCarvalho@cuvox.de', '12/2/1980', 'iwaa8Ech', 0, 0x6e6f5f66696c65),
(256, 'Torteropaid', 'Correia', 'FabioCarvalhoCorreia@teleworm.us', '6/16/1996', 'oojie2ooJ6Vie', 0, 0x6e6f5f66696c65),
(257, 'Boared', 'Costa', 'LuanaMeloCosta@armyspy.com', '5/14/1962', 'ta6eze2Axai', 0, 0x6e6f5f66696c65),
(258, 'Loored', 'Dias', 'SofiaCorreiaDias@fleckens.hu', '9/12/1950', 'wen2phe0uoX', 0, 0x6e6f5f66696c65),
(259, 'Tratc1993', 'Araujo', 'GuilhermeAzevedoAraujo@rhyta.com', '3/31/1993', 'ooqu8Eet2', 0, 0x6e6f5f66696c65),
(260, 'Vies1990', 'Melo', 'AnnaSouzaMelo@cuvox.de', '4/19/1990', 'Iec5theem0ai', 0, 0x6e6f5f66696c65),
(261, 'Oundeent', 'Ribeiro', 'ClaraBarrosRibeiro@fleckens.hu', '2/6/1970', 'uph4ooKeik0', 0, 0x6e6f5f66696c65),
(262, 'Hinaries', 'Pinto', 'PedroRodriguesPinto@teleworm.us', '11/7/1988', 'Fu0UChoo0ae', 0, 0x6e6f5f66696c65),
(263, 'Sibut1949', 'Azevedo', 'EstevanPereiraAzevedo@rhyta.com', '12/14/1949', 'aa7aax5aeSh', 0, 0x6e6f5f66696c65),
(264, 'Famort', 'Ribeiro', 'ArthurFernandesRibeiro@einrot.com', '12/7/1935', 'utah1Chae', 0, 0x6e6f5f66696c65),
(265, 'Qualt2001', 'Souza', 'SamuelCostaSouza@teleworm.us', '2/24/2001', 'OhqueiP4ie', 0, 0x6e6f5f66696c65),
(266, 'Bossubjectis', 'Cardoso', 'EvelynCarvalhoCardoso@superrito.com', '3/10/1977', 'ohM0jousa', 0, 0x6e6f5f66696c65),
(267, 'Riet1989', 'Barros', 'LeticiaCastroBarros@teleworm.us', '4/27/1989', 'Iezaoj2eif', 0, 0x6e6f5f66696c65),
(268, 'Tage1982', 'Goncalves', 'CarlaBarbosaGoncalves@rhyta.com', '5/29/1982', 'Hai0voh6th', 0, 0x6e6f5f66696c65),
(269, 'Havinhem', 'Souza', 'GiovanaLimaSouza@jourrapide.com', '9/23/1955', 'Boh7fook', 0, 0x6e6f5f66696c65),
(270, 'Hathers', 'Cavalcanti', 'MarisaBarbosaCavalcanti@fleckens.hu', '11/12/1987', 'LeiXei6c', 0, 0x6e6f5f66696c65),
(271, 'Beely1974', 'Azevedo', 'GabriellyRibeiroAzevedo@einrot.com', '11/27/1974', 'phieng9Ee', 0, 0x6e6f5f66696c65),
(272, 'Nestiold', 'Ribeiro', 'EduardoCorreiaRibeiro@dayrep.com', '10/19/1971', 'YiePif8pee', 0, 0x6e6f5f66696c65),
(273, 'Hintailging', 'Carvalho', 'ViniciusSouzaCarvalho@rhyta.com', '10/29/1978', 'quae3Uuf3ae', 0, 0x6e6f5f66696c65),
(274, 'Purnegy', 'Correia', 'LeonorMartinsCorreia@jourrapide.com', '8/19/1982', 'shaisiu2V', 0, 0x6e6f5f66696c65),
(275, 'Oppestands', 'Gomes', 'IgorAlmeidaGomes@jourrapide.com', '5/17/1933', 'theeFaeC8l', 0, 0x6e6f5f66696c65),
(276, 'Blike1969', 'Ferreira', 'MarianaCunhaFerreira@fleckens.hu', '1/21/1969', 'jio9FahJi0ei', 0, 0x6e6f5f66696c65),
(277, 'Sheining', 'Araujo', 'LeticiaSilvaAraujo@gustr.com', '9/11/1960', 'ieg3No6jah4', 0, 0x6e6f5f66696c65),
(278, 'Tivimadaim', 'Dias', 'LarissaAraujoDias@armyspy.com', '3/8/1993', 'Owahx2Isohs', 0, 0x6e6f5f66696c65),
(279, 'Halled', 'Cunha', 'JoseBarrosCunha@dayrep.com', '7/3/1960', 'uapeeMee3', 0, 0x6e6f5f66696c65),
(280, 'Onink1961', 'Gomes', 'BrenoCavalcantiGomes@teleworm.us', '6/27/1961', 'PhohB0phae', 0, 0x6e6f5f66696c65),
(281, 'Afrown', 'Castro', 'TiagoBarrosCastro@cuvox.de', '3/10/1959', 'vah8fe9Ahf', 0, 0x6e6f5f66696c65),
(282, 'Whimenturn', 'Ribeiro', 'MatildeSousaRibeiro@armyspy.com', '10/28/1996', 'eikeiJo9', 0, 0x6e6f5f66696c65),
(283, 'Ciect1953', 'Alves', 'ViniciusLimaAlves@dayrep.com', '10/27/1953', 'jiel5Ein', 0, 0x6e6f5f66696c65),
(284, 'Samintme', 'Rodrigues', 'MiguelLimaRodrigues@cuvox.de', '4/29/1984', 'Ceih9iedoh', 0, 0x6e6f5f66696c65),
(285, 'Thatill1935', 'Cunha', 'AntonioPintoCunha@dayrep.com', '2/4/1935', 'pho6Aich', 0, 0x6e6f5f66696c65),
(286, 'Thiseved', 'Pinto', 'IsabelleAlmeidaPinto@dayrep.com', '3/7/2001', 'nahY9ohr', 0, 0x6e6f5f66696c65),
(287, 'Sixeclog', 'Lima', 'LiviaAzevedoLima@gustr.com', '9/5/1951', 'eneiThei9', 0, 0x6e6f5f66696c65),
(288, 'Halliessed', 'Cardoso', 'TaniaMeloCardoso@jourrapide.com', '9/17/1953', 'aiPh9quooD7', 0, 0x6e6f5f66696c65),
(289, 'Areaccely1951', 'Azevedo', 'RodrigoFerreiraAzevedo@einrot.com', '11/17/1951', 'uSh6jeib', 0, 0x6e6f5f66696c65),
(290, 'Museltook', 'Correia', 'SamuelSousaCorreia@dayrep.com', '6/2/1999', 'ei2Shieth5', 0, 0x6e6f5f66696c65),
(291, 'Morgivy', 'Barros', 'ThaisAlmeidaBarros@superrito.com', '7/9/1967', 'Hae8ooteeyie', 0, 0x6e6f5f66696c65),
(292, 'Hable1977', 'Souza', 'MariaGomesSouza@superrito.com', '11/7/1977', 'Hi6aukohng', 0, 0x6e6f5f66696c65),
(293, 'Nowne1937', 'Alves', 'RebecaSouzaAlves@fleckens.hu', '5/15/1937', 'laiN3caath', 0, 0x6e6f5f66696c65),
(294, 'Musibing96', 'Melo', 'JuliaSantosMelo@cuvox.de', '1/20/1996', 'Ocheehua5ne', 0, 0x6e6f5f66696c65),
(295, 'Submis', 'Barbosa', 'LuanAlmeidaBarbosa@gustr.com', '2/28/1956', 'Wulohvi9Gad', 0, 0x6e6f5f66696c65),
(296, 'Prionat', 'Barbosa', 'BiancaSilvaBarbosa@rhyta.com', '9/19/1983', 'eiJoh9EgeeP5', 0, 0x6e6f5f66696c65),
(297, 'Theract', 'Sousa', 'LeonorCorreiaSousa@fleckens.hu', '10/21/1958', 'pei2ieyaBo3oo', 0, 0x6e6f5f66696c65),
(298, 'Woridence', 'Costa', 'KauanBarrosCosta@rhyta.com', '12/30/1957', 'eit8ooxohG', 0, 0x6e6f5f66696c65),
(299, 'Bespoormsed', 'Correia', 'BrunaAraujoCorreia@fleckens.hu', '2/15/1938', 'iMah6Iengur', 0, 0x6e6f5f66696c65),
(300, 'Ouste1977', 'Cunha', 'SofiaCorreiaCunha@fleckens.hu', '10/15/1977', 'IeSi6airei', 0, 0x6e6f5f66696c65),
(502, 'Cardoso', 'Mateus', 'mateuscardoso3112@gmail.com', '31/12/2001', 'cardoso31', 3, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
