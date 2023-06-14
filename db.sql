-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: chuyendecs
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject_id` varchar(255) DEFAULT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `semester_id` varchar(255) DEFAULT NULL,
  `createdat` timestamp NULL DEFAULT NULL,
  `updatedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `department_id` bigint NOT NULL,
  `semester_id` bigint DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Khóa lập trình web',2,1,1),(2,'Khóa hoọc toán',2,1,1);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdat` timestamp NULL DEFAULT NULL,
  `updatedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_departments_code_key` (`code`),
  UNIQUE KEY `uc_departments_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'AT','An Toàn Thông Tin',NULL,NULL),(2,'CT','Công Nghệ Thông Tin',NULL,NULL),(3,'DT','Điện Tử Viễn Thông',NULL,NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `subject_id` varchar(255) NOT NULL,
  `grade1` double DEFAULT NULL,
  `grade2` double DEFAULT NULL,
  `exam1` double DEFAULT NULL,
  `average1` double DEFAULT NULL,
  `letter1` varchar(255) DEFAULT NULL,
  `exam2` double DEFAULT NULL,
  `average2` double DEFAULT NULL,
  `letter2` varchar(255) DEFAULT NULL,
  `createdat` timestamp NOT NULL,
  `updatedat` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kmaclasses`
--

DROP TABLE IF EXISTS `kmaclasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kmaclasses` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL,
  `updatedat` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_kmaclasses_code_key` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kmaclasses`
--

LOCK TABLES `kmaclasses` WRITE;
/*!40000 ALTER TABLE `kmaclasses` DISABLE KEYS */;
/*!40000 ALTER TABLE `kmaclasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_symbol` varchar(255) DEFAULT '0',
  `createdat` timestamp NULL DEFAULT NULL,
  `updatedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN','',NULL,NULL),(2,'DAO_TAO','',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `courses_id` bigint NOT NULL,
  `semester_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `teacher_id` bigint DEFAULT NULL,
  `total_class` bigint DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  PRIMARY KEY (`courses_id`,`semester_id`,`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,1,1,1,6,1),(2,3,3,5,5,14);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schoolyears`
--

DROP TABLE IF EXISTS `schoolyears`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schoolyears` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) DEFAULT NULL,
  `createdat` timestamp NOT NULL,
  `updatedat` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_schoolyears_display_name_key` (`display_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolyears`
--

LOCK TABLES `schoolyears` WRITE;
/*!40000 ALTER TABLE `schoolyears` DISABLE KEYS */;
/*!40000 ALTER TABLE `schoolyears` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semesters` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `start_at` varchar(255) DEFAULT NULL,
  `end_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semesters`
--

LOCK TABLES `semesters` WRITE;
/*!40000 ALTER TABLE `semesters` DISABLE KEYS */;
INSERT INTO `semesters` VALUES (1,'Kì 1','13/06/2018','13/06/2019'),(3,'Kì 2','13/06/2020','13/06/2021');
/*!40000 ALTER TABLE `semesters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `bank_number` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `school_year_id` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `identify_number` varchar(255) DEFAULT NULL,
  `identify_date` varchar(255) DEFAULT NULL,
  `identify_address` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `ward` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `ethnic` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `wish` varchar(255) DEFAULT NULL,
  `graduation_year` varchar(255) DEFAULT NULL,
  `family` varchar(255) DEFAULT NULL,
  `training_object` varchar(255) DEFAULT NULL,
  `affiliates` varchar(255) DEFAULT NULL,
  `personal_phone` varchar(255) DEFAULT NULL,
  `family_phone` varchar(255) DEFAULT NULL,
  `office_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `news_to_person` varchar(255) DEFAULT NULL,
  `news_to_address` varchar(255) DEFAULT NULL,
  `date_join_union` varchar(255) DEFAULT NULL,
  `date_join_party` varchar(255) DEFAULT NULL,
  `entry_date` varchar(255) DEFAULT NULL,
  `graduation_date` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `laudatory` varchar(255) DEFAULT NULL,
  `discipline` varchar(255) DEFAULT NULL,
  `createdat` timestamp NULL DEFAULT NULL,
  `updatedat` timestamp NULL DEFAULT NULL,
  `position` varchar(225) DEFAULT NULL,
  `birthday` varchar(225) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'AT170228','Nguyễn Quang Huy',NULL,'AT17B','123456','MB','1','Học viên','Nghệ An','0978362','23','Nghệ An','Nghệ An','Vinh','Lê Lợi','Việt Nam','Kinh','Không','1','2020','Viên chức','Đối tượng đào tạo 1','Đơn vị liên kết 1','0965124613','098765432','981236452','quanghuynr23@gamil.com','Mẹ','Nghệ An','23',NULL,'20','','k','k','k',NULL,NULL,NULL,NULL,NULL),(2,'AT170233','Nguyễn Thế Long',NULL,'AT17B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` bigint NOT NULL,
  `alls` int NOT NULL,
  `theory` int NOT NULL,
  `practice` int DEFAULT NULL,
  `exercise` int NOT NULL,
  `createdat` timestamp NULL DEFAULT NULL,
  `updatedat` timestamp NULL DEFAULT NULL,
  `course_load` int NOT NULL,
  `semester` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'ABCXYZ','Lập trình web',1,3,3,3,4,NULL,NULL,3,NULL),(14,'DSDS32','Lập trình mạng',3,3,3,3,3,NULL,NULL,3,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `department_id` bigint NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `createdat` timestamp NULL DEFAULT NULL,
  `updatedat` timestamp NULL DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_teachers_code_key` (`code`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'TTTV','Thái Thị Thanh update','',1,'097263512','2202-02-02','Van@gamil.com',NULL,NULL,'Vân','1'),(2,'ád','Vinh',NULL,1,'098635271','2202-02-02','quan@gmail.com',NULL,NULL,'cu','1'),(5,'AT172s','Huy',NULL,1,'083472323','2002-02-02','sdf@gmail.com',NULL,NULL,'Quang','1'),(6,'At17','Huýa',NULL,1,'03842734','2002-02-02','asda@gmail.com',NULL,NULL,'áda','2'),(7,'adasd','dŨNG',NULL,1,'092371231','2002-02-02','asda@gmail.com',NULL,NULL,'tHẦY','2'),(8,'a123','áda',NULL,3,'09123123','2002-02-02','asd@gmail.com',NULL,NULL,'áda','2'),(10,'DSFWSF313','Cuong','/template/upload/teacher/mail.png',2,'23123213213','2023-06-14','cuong@mail.com',NULL,NULL,'Pham','1');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rolesid` bigint NOT NULL DEFAULT '0',
  `createdat` timestamp NULL DEFAULT NULL,
  `updatedat` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_email_key` (`email`),
  KEY `rolesid` (`rolesid`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rolesid`) REFERENCES `roles` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`rolesid`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyễn Quang Huy','quanghuynr23@gmail.com','123456',1,NULL,NULL),(2,'Lê Hà','leha@gmail.com','123456',2,NULL,NULL),(3,'sadas','ddasdas@mail.com','123456',1,NULL,NULL),(4,'Cuong Pham','cuong@mail.com','123456',1,NULL,NULL),(5,'Nam','name@mail.com','123456',2,NULL,NULL),(6,'nddaaa','sadasd@mail.com','123456',2,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 22:25:31
