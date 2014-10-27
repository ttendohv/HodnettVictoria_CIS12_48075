--
-- SQL document for Essential Oils Website Project
-- Victoria Hodnett
--

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

--               --
-- ENTITY TABLES --
--               --

--
-- Table structure for table `entity_account_vh2436779`
--

DROP TABLE IF EXISTS `entity_account_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_account_vh2436779 (
	acct_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	first_name VARCHAR(20) NOT NULL, 
	last_name VARCHAR(40) NOT NULL, 
	email VARCHAR(60) NOT NULL, 
	pass CHAR(40) NOT NULL, 
	pin SMALLINT NOT NULL, 
	registration_date DATETIME NOT NULL, 
	PRIMARY KEY (acct_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `entity_oil_vh2436779`
--

DROP TABLE IF EXISTS `entity_oil_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_oil_vh2436779 (
	oil_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	name VARCHAR(20) NOT NULL, 
	properties VARCHAR(40) NOT NULL, 
	health_benefits VARCHAR(60) NOT NULL, 
	application CHAR(40) NOT NULL, 
	uses SMALLINT NOT NULL,  
	PRIMARY KEY (oil_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `entity_question_vh2436779`
--

DROP TABLE IF EXISTS `entity_question_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_question_vh2436779 (
	question_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	question VARCHAR(20) NOT NULL,  
	PRIMARY KEY (question_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `entity_answer_vh2436779`
--

DROP TABLE IF EXISTS `entity_answer_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_answer_vh2436779 (
	answer_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	answer VARCHAR(20) NOT NULL,  
	PRIMARY KEY (answer_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- ENUM TABLES
--

-- 
-- Table structure for table `enum_application_vh2436779`
--

DROP TABLE IF EXISTS `enum_application_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_application_vh2436779 (
	application_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	name VARCHAR(20) NOT NULL,  
	PRIMARY KEY (application_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;