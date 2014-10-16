
-- MySQL dump 10.13  Distrib 5.6.11, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: test
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
-- Table structure for table `entity_assignment`
--

DROP TABLE IF EXISTS `entity_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_assignment` (
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
-- Dumping data for table `entity_assignment`
--


/*!40000 ALTER TABLE `entity_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_assignment` ENABLE KEYS */;


--
-- Table structure for table `entity_class`
--

DROP TABLE IF EXISTS `entity_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_class` (
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
-- Dumping data for table `entity_class`
--


/*!40000 ALTER TABLE `entity_class` DISABLE KEYS */;
INSERT INTO `entity_class` VALUES (48075,'08:00:00',4,200,3,4),(48076,'09:25:00',4,200,3,4),(48113,'11:10:00',4,200,10,4),(48597,'06:00:00',4,204,8,4);
/*!40000 ALTER TABLE `entity_class` ENABLE KEYS */;


--
-- Table structure for table `entity_course`
--

DROP TABLE IF EXISTS `entity_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_course` (
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
-- Dumping data for table `entity_course`
--


/*!40000 ALTER TABLE `entity_course` DISABLE KEYS */;
INSERT INTO `entity_course` VALUES (1,'PHP',12,NULL,'Introduction to dynamic web site programming using PHP, featuring database-driven applications such as user registration, content management, and e-commerce.','Introduction to dynamic web site programming using PHP, featuring database-driven applications such as user registration, content management, and e-commerce.'),(2,'Javascript',14,'A','Introduction to JavaScript programming with World Wide Web applications including image rollovers, browser windows, forms, cookies and Dynamic HTML. ','Fundamentals of JavaScript programming for the world wide web \nfor students already familiar with the fundamentals of \nprogramming and HTML. Language features will include control \nstructures, functions, arrays, JavaScript objects, browser objects \nand events. Web applications will include image rollovers, user \ninteractivity, manipulating browser windows, form validation and \nprocessing, cookies, creating dynamic content and Dynamic \nHTML programming.'),(3,'C++',17,'B','This is an advanced programming course in C++ suitable for complex business, and gaming applications.','This is an advanced C++ programming course for students \nfamiliar with object-oriented programming and utilization of basic \ngraphical interface techniques. An emphasis will be placed on \nadvanced concepts associated with complex Business and Gaming \napplications that utilize exception handling, multithreading, \nmultimedia, and database connectivity'),(4,'Dreamweaver',76,'B','Learn to design and administer industry-standard personal and business websites using Dreamweaver.','Provides students with the knowledge and skills required to \nquickly design and implement webpages and to administer and \nupdate existing websites using Dreamweaver. The course uses \nDreamweaver to streamline and automate website management on \na website. ');
/*!40000 ALTER TABLE `entity_course` ENABLE KEYS */;


--
-- Table structure for table `entity_instructor`
--

DROP TABLE IF EXISTS `entity_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_instructor` (
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
-- Dumping data for table `entity_instructor`
--


/*!40000 ALTER TABLE `entity_instructor` DISABLE KEYS */;
INSERT INTO `entity_instructor` VALUES (1010101,'Scott','W','McLeod','scott.mcleod@rcc.edu',951,2228310,4,220,1,1),(1150258,'Mark','E','Lehr','mark.lehr@rcc.edu',951,2228260,4,222,1,1);
/*!40000 ALTER TABLE `entity_instructor` ENABLE KEYS */;


--
-- Table structure for table `entity_student`
--

DROP TABLE IF EXISTS `entity_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_student` (
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
-- Dumping data for table `entity_student`
--


/*!40000 ALTER TABLE `entity_student` DISABLE KEYS */;
INSERT INTO `entity_student` VALUES (2436779,'Victoria','M','Hodnett','vhodnett1@student.rcc.edu',951,4736476,1);
/*!40000 ALTER TABLE `entity_student` ENABLE KEYS */;


--
-- Table structure for table `enum_bldg`
--

DROP TABLE IF EXISTS `enum_bldg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_bldg` (
  `bldg_id` tinyint(3) unsigned NOT NULL,
  `bldg` varchar(20) DEFAULT NULL,
  `mneumonic` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bldg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enum_bldg`
--


/*!40000 ALTER TABLE `enum_bldg` DISABLE KEYS */;
INSERT INTO `enum_bldg` VALUES (4,'Business Education','BE'),(12,'Math and Science','MTSC');
/*!40000 ALTER TABLE `enum_bldg` ENABLE KEYS */;


--
-- Table structure for table `enum_day`
--

DROP TABLE IF EXISTS `enum_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_day` (
  `day_id` tinyint(3) unsigned NOT NULL,
  `day` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enum_day`
--


/*!40000 ALTER TABLE `enum_day` DISABLE KEYS */;
INSERT INTO `enum_day` VALUES (1,'SN'),(2,'M'),(3,'MW'),(4,'MWF'),(5,'MTWTHF'),(6,'T'),(7,'TTH'),(8,'W'),(9,'WF'),(10,'TH'),(11,'F'),(12,'ST');
/*!40000 ALTER TABLE `enum_day` ENABLE KEYS */;


--
-- Table structure for table `enum_department`
--

DROP TABLE IF EXISTS `enum_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_department` (
  `dept_id` tinyint(3) unsigned NOT NULL,
  `department` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enum_department`
--


/*!40000 ALTER TABLE `enum_department` DISABLE KEYS */;
INSERT INTO `enum_department` VALUES (1,'Business Information Systems'),(2,'English');
/*!40000 ALTER TABLE `enum_department` ENABLE KEYS */;


--
-- Table structure for table `enum_discipline`
--

DROP TABLE IF EXISTS `enum_discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_discipline` (
  `discipline_id` tinyint(3) unsigned NOT NULL,
  `discipline` varchar(25) DEFAULT NULL,
  `mneumonic` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`discipline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enum_discipline`
--


/*!40000 ALTER TABLE `enum_discipline` DISABLE KEYS */;
INSERT INTO `enum_discipline` VALUES (1,'Computer Science','CSC');
/*!40000 ALTER TABLE `enum_discipline` ENABLE KEYS */;


--
-- Table structure for table `enum_major`
--

DROP TABLE IF EXISTS `enum_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_major` (
  `major_id` tinyint(3) unsigned NOT NULL,
  `major` varchar(20) DEFAULT NULL,
  `mneumonic` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enum_major`
--


/*!40000 ALTER TABLE `enum_major` DISABLE KEYS */;
INSERT INTO `enum_major` VALUES (1,'Computer Science','CS');
/*!40000 ALTER TABLE `enum_major` ENABLE KEYS */;


--
-- Table structure for table `enum_semester`
--

DROP TABLE IF EXISTS `enum_semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enum_semester` (
  `semester_id` tinyint(3) unsigned NOT NULL,
  `semester` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enum_semester`
--


/*!40000 ALTER TABLE `enum_semester` DISABLE KEYS */;
INSERT INTO `enum_semester` VALUES (1,'WINTER'),(2,'SPRING'),(3,'SUMMER'),(4,'FALL');
/*!40000 ALTER TABLE `enum_semester` ENABLE KEYS */;


--
-- Table structure for table `xref_class_assign`
--

DROP TABLE IF EXISTS `xref_class_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_class_assign` (
  `xref_class_assign` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  `assignment_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`xref_class_assign`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xref_class_assign`
--


/*!40000 ALTER TABLE `xref_class_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `xref_class_assign` ENABLE KEYS */;


--
-- Table structure for table `xref_class_course`
--

DROP TABLE IF EXISTS `xref_class_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_class_course` (
  `xref_class_course` int(10) unsigned NOT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  `course_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`xref_class_course`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xref_class_course`
--


/*!40000 ALTER TABLE `xref_class_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `xref_class_course` ENABLE KEYS */;


--
-- Table structure for table `xref_instr_class`
--

DROP TABLE IF EXISTS `xref_instr_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_instr_class` (
  `xref_instr_class` int(10) unsigned NOT NULL,
  `instructor_id` int(10) unsigned DEFAULT NULL,
  `class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`xref_instr_class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xref_instr_class`
--


/*!40000 ALTER TABLE `xref_instr_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `xref_instr_class` ENABLE KEYS */;


--
-- Table structure for table `xref_stu_assign`
--

DROP TABLE IF EXISTS `xref_stu_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xref_stu_assign` (
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
-- Dumping data for table `xref_stu_assign`
--


/*!40000 ALTER TABLE `xref_stu_assign` DISABLE KEYS */;
/*!40000 ALTER TABLE `xref_stu_assign` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-09 13:03:33
