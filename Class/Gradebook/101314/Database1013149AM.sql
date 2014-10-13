CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.11

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
-- Table structure for table `xref_stu_assign_vh2436779`
--

DROP TABLE IF EXISTS `xref_stu_assign_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_stu_assign_vh2436779` (
  `xref_stu_assign` int(10) unsigned NOT NULL,
  `student_id` int(10) unsigned DEFAULT NULL,
  `assignment_id` int(10) unsigned DEFAULT NULL,
  `score` tinyint(3) unsigned DEFAULT NULL,
  `grade` char(2) DEFAULT NULL,
  `comments` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`xref_stu_assign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enum_department_vh2436779`
--

DROP TABLE IF EXISTS `enum_department_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_department_vh2436779` (
  `dept_id` tinyint(3) unsigned NOT NULL,
  `department` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_class_vh2436779`
--

DROP TABLE IF EXISTS `entity_class_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_class_vh2436779` (
  `section_id` int(10) unsigned NOT NULL,
  `time` time DEFAULT NULL,
  `bldg` tinyint(3) unsigned DEFAULT NULL,
  `room` smallint(5) unsigned DEFAULT NULL,
  `day_of_Week` tinyint(3) unsigned DEFAULT NULL,
  `semester` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enum_discipline_vh2436779`
--

DROP TABLE IF EXISTS `enum_discipline_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_discipline_vh2436779` (
  `discipline_id` tinyint(3) unsigned NOT NULL,
  `discipline` varchar(25) DEFAULT NULL,
  `mneumonic` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`discipline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xref_class_assign_vh2436779`
--

DROP TABLE IF EXISTS `xref_class_assign_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_class_assign_vh2436779` (
  `xref_class_assign` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  `assignment_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`xref_class_assign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_instructor_vh2436779`
--

DROP TABLE IF EXISTS `entity_instructor_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_instructor_vh2436779` (
  `instructor_id` int(10) NOT NULL COMMENT 'Primary Key',
  `first_name` varchar(15) DEFAULT NULL,
  `middle_initial` char(1) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `area_code` smallint(5) unsigned DEFAULT NULL,
  `phone_number` int(10) unsigned DEFAULT NULL,
  `office_bldg_id` tinyint(3) unsigned DEFAULT NULL,
  `office_number` smallint(5) unsigned DEFAULT NULL,
  `department_id` tinyint(3) unsigned DEFAULT NULL,
  `discipline_id` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xref_class_course_vh2436779`
--

DROP TABLE IF EXISTS `xref_class_course_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_class_course_vh2436779` (
  `xref_class_course` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  `course_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`xref_class_course`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_student_vh2436779`
--

DROP TABLE IF EXISTS `entity_student_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_student_vh2436779` (
  `student_id` int(10) NOT NULL COMMENT 'Primary Key',
  `first_name` varchar(15) DEFAULT NULL,
  `middle_initial` char(1) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `area_code` smallint(5) unsigned DEFAULT NULL,
  `phone_number` int(10) unsigned DEFAULT NULL,
  `major` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_assignment_vh2436779`
--

DROP TABLE IF EXISTS `entity_assignment_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_assignment_vh2436779` (
  `assignment_id` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `points_possible` tinyint(3) unsigned DEFAULT NULL,
  `weight` tinyint(3) unsigned DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enum_semester_vh2436779`
--

DROP TABLE IF EXISTS `enum_semester_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_semester_vh2436779` (
  `semester_id` tinyint(3) unsigned NOT NULL,
  `semester` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enum_bldg_vh2436779`
--

DROP TABLE IF EXISTS `enum_bldg_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_bldg_vh2436779` (
  `bldg_id` tinyint(3) unsigned NOT NULL,
  `bldg` varchar(20) DEFAULT NULL,
  `mneumonic` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bldg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `entity_course_vh2436779`
--

DROP TABLE IF EXISTS `entity_course_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_course_vh2436779` (
  `course_id` int(10) unsigned NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `number` tinyint(3) unsigned DEFAULT NULL,
  `series_letter` char(1) DEFAULT NULL,
  `short_description` text,
  `description` mediumtext,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xref_instr_class_vh2436779`
--

DROP TABLE IF EXISTS `xref_instr_class_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_instr_class_vh2436779` (
  `xref_instr_class` int(10) unsigned NOT NULL,
  `instructor_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`xref_instr_class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enum_major_vh2436779`
--

DROP TABLE IF EXISTS `enum_major_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_major_vh2436779` (
  `major_id` tinyint(3) unsigned NOT NULL,
  `major` varchar(20) DEFAULT NULL,
  `mneumonic` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enum_day_vh2436779`
--

DROP TABLE IF EXISTS `enum_day_vh2436779`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_day_vh2436779` (
  `day_id` tinyint(3) unsigned NOT NULL,
  `day` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-13  9:13:40
