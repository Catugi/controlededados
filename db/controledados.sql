-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: controledados
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
--
-- Table structure for table `curso`
--
DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `departamento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `curso`
--
LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */
;
INSERT INTO `curso`
VALUES (1, 'Engenharia Informática', 'TICs');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `disciplina`
--
DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nota_final` double NOT NULL,
  `ano` varchar(10) NOT NULL,
  `semestre` varchar(10) NOT NULL,
  PRIMARY KEY (`id_disciplina`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `disciplina`
--
LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */
;
INSERT INTO `disciplina`
VALUES (6, 'Programação WEB', 14, '4', 'II'),
(7, 'Base de Dados', 15, '2', 'II');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `estudante`
--
DROP TABLE IF EXISTS `estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `estudante` (
  `id_estudante` int(11) NOT NULL AUTO_INCREMENT,
  `nome_estudante` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `b_identidade` varchar(15) NOT NULL,
  `ano_curso` varchar(5) NOT NULL,
  `curso` varchar(45) NOT NULL,
  `grupo` varchar(15) NOT NULL,
  `valo__a_pagar` double NOT NULL,
  `nome_projeto` varchar(45) DEFAULT NULL,
  `ano_assistente` int(11) DEFAULT NULL,
  `disc_assistente` varchar(45) DEFAULT NULL,
  `ano_repetido` varchar(5) DEFAULT NULL,
  `disciplina_repetida` varchar(45) DEFAULT NULL,
  `recebeapoio` varchar(5) NOT NULL,
  PRIMARY KEY (`id_estudante`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `estudante`
--
LOCK TABLES `estudante` WRITE;
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */
;
INSERT INTO `estudante`
VALUES (
    1,
    'Abias',
    'Xavier',
    '000000HO0003',
    '4',
    'Informática',
    'comum',
    10000,
    NULL,
    NULL,
    NULL,
    '3',
    'Programação',
    'Não'
  );
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `projeto`
--
DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `projeto` (
  `id_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `area_atucao` varchar(45) NOT NULL,
  `orientador` varchar(45) NOT NULL,
  PRIMARY KEY (`id_projeto`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `projeto`
--
LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */
;
INSERT INTO `projeto`
VALUES (1, 'Sistema de Gestão', 'Programação', 'Julio');
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `usuario`
--
DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!40101 SET character_set_client = utf8 */
;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = latin1;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `usuario`
--
LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */
;
INSERT INTO `usuario`
VALUES (1, 'root', 'root');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */
;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2021-06-18  8:10:59