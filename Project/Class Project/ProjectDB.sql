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
	lesson_id TINYINT UNSIGNED, -- User can only register for one lesson at a time -- 
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
	PRIMARY KEY (admin_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `entity_admin_vh2436779` (`first_name`,`last_name`, `email`, `pass`, `pin`)
VALUES ('Victoria','Hodnett','vhodnett1@student.rcc.edu',SHA1(2436779),1010);


--
-- Table structure for table `entity_lessons_vh2436779`
--

DROP TABLE IF EXISTS `entity_lessons_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE entity_lessons_vh2436779 (
	lesson_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	lesson_type TINYINT[1] NOT NULL,
	duration TINYINT[2] NOT NULL,
	lesson_day TINYINT[1] NOT NULL,
	lesson_time TIME NOT NULL,
	difficulty TINYINT[1] NOT NULL,
	cost FLOAT[3,2] NOT NULL,
	scheduled TINYINT[1] NOT NULL,
	PRIMARY KEY (lesson_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--               --
-- ENUM TABLES   --
--               --

--
-- Table structure for table `enum_level_vh2436779`
--

DROP TABLE IF EXISTS `enum_difficulty_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_difficulty_vh2436779 (
	difficulty_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	difficulty_name VARCHAR(15) NOT NULL,
	PRIMARY KEY (level_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `enum_difficulty_vh2436779` (`name`)
VALUES ('Beginner'),('Intermediate'),('Advanced');

--
-- Table structure for table `enum_lessontype_vh2436779`
--

DROP TABLE IF EXISTS `enum_lessontype_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_lessontype_vh2436779 (
	type_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	type_name VARCHAR(10) NOT NULL,
	PRIMARY KEY (type_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `enum_lessontype_vh2436779` (`name`)
VALUES ('Vocal'),('Guitar'),('Bass'),('Drums'),('Piano');

--
-- Table structure for table `enum_lessonday_vh2436779`
--

DROP TABLE IF EXISTS `enum_lessonday_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_lessonday_vh2436779 (
	day_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	day_name VARCHAR(10) NOT NULL,
	abbreviation VARCHAR(2) NOT NULL,
	PRIMARY KEY (day_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `enum_lessonday_vh2436779` (`name`,`abbreviation`)
VALUES ('Monday','M'),('Tuesday','T'),('Wednesday','W'),('Thursday','TH'),('Friday','F');

--
-- Table structure for table `enum_starttime_vh2436779`
--

DROP TABLE IF EXISTS `enum_starttime_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE enum_starttime_vh2436779 (
	time_id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
	start_time TIME NOT NULL,
	PRIMARY KEY (time_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `enum_starttime_vh2436779` (`start_time`)
VALUES (08:00:00),(08:30:00),(09:00:00),(09:30:00),(10:00:00),(10:30:00),(11:00:00),(11:30:00),(13:00:00),(13:30:00),
		(14:00:00),(14:30:00),(15:00:00),(15:30:00),(16:00:00),(16:30:00),(17:00:00),(17:30:00),(18:00:00),(18:30:00);