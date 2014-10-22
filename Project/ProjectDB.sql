--
-- Database for Victoria Hodnett, Project 1
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
-- Table structure for table `entity_users_vh2436779`
--

DROP TABLE IF EXISTS `entity_users_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_users_vh2436779 (
	user_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	first_name VARCHAR(20) NOT NULL, 
	last_name VARCHAR(40) NOT NULL, 
	email VARCHAR(60) NOT NULL, 
	pass CHAR(40) NOT NULL, 
	pin SMALLINT NOT NULL, 
	registration_date DATETIME NOT NULL, 
	PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `entity_admin_vh2436779`
--

DROP TABLE IF EXISTS `entity_admin_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_admin_vh2436779 (
	admin_id INT UNSIGNED NOT NULL AUTO_INCREMENT, 
	first_name VARCHAR(20) NOT NULL, 
	last_name VARCHAR(40) NOT NULL, 
	email VARCHAR(60) NOT NULL, 
	pass CHAR(40) NOT NULL, 
	pin SMALLINT NOT NULL, 
	PRIMARY KEY (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `entity_lessons_vh2436779`
--

DROP TABLE IF EXISTS `entity_lessons_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_lessons_vh2436779 (
	lesson_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	type TINYINT[1] NOT NULL,
	duration TINYINT[2] NOT NULL,
	day TINYINT[1] NOT NULL,
	time TIME NOT NULL,
	level TINYINT[1] NOT NULL,
	cost FLOAT[3,2] NOT NULL,
	PRIMARY KEY (lesson_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--               --
-- ENUM TABLES   --
--               --

--
-- Table structure for table `enum_level_vh2436779`
--

DROP TABLE IF EXISTS `enum_level_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_level_vh2436779 (
	level_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(15) NOT NULL,
	PRIMARY KEY (level_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `enum_lessontype_vh2436779`
--

DROP TABLE IF EXISTS `enum_lessontype_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_lessontype_vh2436779 (
	type_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL,
	PRIMARY KEY (type_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `enum_lessonday_vh2436779`
--

DROP TABLE IF EXISTS `enum_lessonday_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_lessonday_vh2436779 (
	day_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(10) NOT NULL,
	abbreviation VARCHAR(1) NOT NULL,
	PRIMARY KEY (day_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

