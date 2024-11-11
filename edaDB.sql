-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: eda_project
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `APARTMENT_AVG_PRICE_CATEGORY_MONTHLY`
--

DROP TABLE IF EXISTS `APARTMENT_AVG_PRICE_CATEGORY_MONTHLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APARTMENT_AVG_PRICE_CATEGORY_MONTHLY` (
  `YEAR` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `CATEGORY` varchar(8) DEFAULT NULL,
  `PRICE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `APARTMENT_AVG_PRICE_DONG_MONTHLY`
--

DROP TABLE IF EXISTS `APARTMENT_AVG_PRICE_DONG_MONTHLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APARTMENT_AVG_PRICE_DONG_MONTHLY` (
  `YEAR` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `GU` varchar(16) DEFAULT NULL,
  `DONG` varchar(16) DEFAULT NULL,
  `PRICE` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `APARTMENT_AVG_PRICE_SIDO_MONTHLY`
--

DROP TABLE IF EXISTS `APARTMENT_AVG_PRICE_SIDO_MONTHLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APARTMENT_AVG_PRICE_SIDO_MONTHLY` (
  `YEAR` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `SIDO` varchar(16) DEFAULT NULL,
  `PRICE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `APARTMENT_PRICE_GARAK`
--

DROP TABLE IF EXISTS `APARTMENT_PRICE_GARAK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APARTMENT_PRICE_GARAK` (
  `YEAR` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `DONG` varchar(8) DEFAULT NULL,
  `APARTMENT` varchar(20) DEFAULT NULL,
  `SIZE_m2` float DEFAULT NULL,
  `SIZE_평` float DEFAULT NULL,
  `PRICE` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `APARTMENT_PRICE_GARAK2`
--

DROP TABLE IF EXISTS `APARTMENT_PRICE_GARAK2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APARTMENT_PRICE_GARAK2` (
  `YEAR` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `DONG` varchar(8) DEFAULT NULL,
  `APARTMENT` varchar(20) DEFAULT NULL,
  `SIZE_m2` float DEFAULT NULL,
  `SIZE_평` float DEFAULT NULL,
  `PRICE` bigint DEFAULT NULL,
  `address` text,
  `roadAddress` text,
  `mapx` bigint DEFAULT NULL,
  `mapy` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DONG_PRICE`
--

DROP TABLE IF EXISTS `DONG_PRICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DONG_PRICE` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `GU` varchar(16) DEFAULT NULL,
  `DONG` varchar(16) DEFAULT NULL,
  `PRICE` bigint DEFAULT NULL,
  `GROWTH` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DONG_PRICE_NEW`
--

DROP TABLE IF EXISTS `DONG_PRICE_NEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DONG_PRICE_NEW` (
  `id` int NOT NULL,
  `YEAR` int DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `DONG` varchar(8) DEFAULT NULL,
  `GROWTH` double DEFAULT NULL,
  `PRICE_YEAR` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DONG_PRICE_YEARLY`
--

DROP TABLE IF EXISTS `DONG_PRICE_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DONG_PRICE_YEARLY` (
  `gu` varchar(10) DEFAULT NULL,
  `dong` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `price` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FACILITY_INFO`
--

DROP TABLE IF EXISTS `FACILITY_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FACILITY_INFO` (
  `ID` int DEFAULT NULL,
  `NAME` varchar(64) DEFAULT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `DONG` varchar(16) DEFAULT NULL,
  `ADDRESS` varchar(64) DEFAULT NULL,
  `CATEGORY` varchar(8) DEFAULT NULL,
  `EST_YEAR` int DEFAULT NULL,
  KEY `fk_FACILITY_INFO_LATLNG_DONG1_idx` (`DONG`),
  CONSTRAINT `fk_FACILITY_INFO_LATLNG_DONG1` FOREIGN KEY (`DONG`) REFERENCES `LATLNG_DONG` (`DONG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GARAK_APARTMENT`
--

DROP TABLE IF EXISTS `GARAK_APARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GARAK_APARTMENT` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `address` text,
  `road_address` text,
  `mapx` float DEFAULT NULL,
  `mapy` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HANNAM_APARTMENT`
--

DROP TABLE IF EXISTS `HANNAM_APARTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HANNAM_APARTMENT` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DATE` datetime DEFAULT NULL,
  `APARTMENT` varchar(32) DEFAULT NULL,
  `AREA` float DEFAULT NULL,
  `ADDRESS` varchar(64) DEFAULT NULL,
  `LAT` float DEFAULT NULL,
  `LNG` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HOSPITAL_INFO`
--

DROP TABLE IF EXISTS `HOSPITAL_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HOSPITAL_INFO` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(32) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `SIDO` varchar(16) DEFAULT NULL,
  `GU` varchar(16) DEFAULT NULL,
  `DONG` varchar(16) DEFAULT NULL,
  `ADDRESS` varchar(64) DEFAULT NULL,
  `EST_DATE` datetime DEFAULT NULL,
  `DOCTOR` int DEFAULT NULL,
  `LAT` double DEFAULT NULL,
  `LNG` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=89621 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INFLATION_RATE_YEARLY`
--

DROP TABLE IF EXISTS `INFLATION_RATE_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INFLATION_RATE_YEARLY` (
  `YEAR` int DEFAULT NULL,
  `RATE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INTEREST_RATE`
--

DROP TABLE IF EXISTS `INTEREST_RATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INTEREST_RATE` (
  `DATE` date NOT NULL,
  `RATE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `METRO_ADDRESS`
--

DROP TABLE IF EXISTS `METRO_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `METRO_ADDRESS` (
  `COMPANY` varchar(16) DEFAULT NULL,
  `LINE_NAME` varchar(16) DEFAULT NULL,
  `STATION_NAME` varchar(8) DEFAULT NULL,
  `OLD_ADDRESS` varchar(64) DEFAULT NULL,
  `ADDRESS` varchar(64) DEFAULT NULL,
  `extra` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `METRO_DATE`
--

DROP TABLE IF EXISTS `METRO_DATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `METRO_DATE` (
  `COMPANY` varchar(16) DEFAULT NULL,
  `LINE_NAME` varchar(16) DEFAULT NULL,
  `STATION_NAME` varchar(8) DEFAULT NULL,
  `EST_DATE` datetime DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOVEINOUT_BY_GU_REASON_YEARLY`
--

DROP TABLE IF EXISTS `MOVEINOUT_BY_GU_REASON_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVEINOUT_BY_GU_REASON_YEARLY` (
  `gu` varchar(10) DEFAULT NULL,
  `reason` varchar(10) DEFAULT NULL,
  `move_type` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOVEIN_BY_GU_SEOUL_YEARLY`
--

DROP TABLE IF EXISTS `MOVEIN_BY_GU_SEOUL_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVEIN_BY_GU_SEOUL_YEARLY` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` int DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `COUNT` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOVEIN_BY_HOUSEHOLD_YEARLY`
--

DROP TABLE IF EXISTS `MOVEIN_BY_HOUSEHOLD_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVEIN_BY_HOUSEHOLD_YEARLY` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` int NOT NULL,
  `MONTH` int DEFAULT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `HOUSEHOLD` varchar(8) DEFAULT NULL,
  `MOVE_AMOUNT` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28593 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOVEIN_BY_REASON_YEARLY`
--

DROP TABLE IF EXISTS `MOVEIN_BY_REASON_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVEIN_BY_REASON_YEARLY` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` int DEFAULT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `REASON` varchar(64) DEFAULT NULL,
  `COUNT` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1585 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOVEOUT_BY_GU_SEOUL_YEARLY`
--

DROP TABLE IF EXISTS `MOVEOUT_BY_GU_SEOUL_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVEOUT_BY_GU_SEOUL_YEARLY` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` int DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `COUNT` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOVEOUT_BY_HOUSEHOLD_YEARLY`
--

DROP TABLE IF EXISTS `MOVEOUT_BY_HOUSEHOLD_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVEOUT_BY_HOUSEHOLD_YEARLY` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` int NOT NULL,
  `MONTH` int DEFAULT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `HOUSEHOLD` varchar(8) DEFAULT NULL,
  `MOVE_AMOUNT` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28593 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MOVEOUT_BY_REASON_YEARLY`
--

DROP TABLE IF EXISTS `MOVEOUT_BY_REASON_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MOVEOUT_BY_REASON_YEARLY` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` int DEFAULT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `REASON` varchar(64) DEFAULT NULL,
  `COUNT` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1585 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PARK_INFO_BY_GU`
--

DROP TABLE IF EXISTS `PARK_INFO_BY_GU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PARK_INFO_BY_GU` (
  `YEAR` int NOT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `COUNT` int DEFAULT NULL,
  `AREA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PRIVATE_EDU_ENG`
--

DROP TABLE IF EXISTS `PRIVATE_EDU_ENG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRIVATE_EDU_ENG` (
  `ID` int NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `X` int DEFAULT NULL,
  `Y` int DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PRIVATE_EDU_KOREAN`
--

DROP TABLE IF EXISTS `PRIVATE_EDU_KOREAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRIVATE_EDU_KOREAN` (
  `ID` int NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `X` int DEFAULT NULL,
  `Y` int DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PRIVATE_EDU_MATH`
--

DROP TABLE IF EXISTS `PRIVATE_EDU_MATH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRIVATE_EDU_MATH` (
  `ID` int NOT NULL,
  `NAME` varchar(45) DEFAULT NULL,
  `X` int DEFAULT NULL,
  `Y` int DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PUBLIC_SECTOR`
--

DROP TABLE IF EXISTS `PUBLIC_SECTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PUBLIC_SECTOR` (
  `ID` int DEFAULT NULL,
  `NAME` varchar(16) DEFAULT NULL,
  `TYPE` varchar(16) DEFAULT NULL,
  `MINISTRY` varchar(16) DEFAULT NULL,
  `EST_DATE` datetime DEFAULT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `ADDRESS` varchar(64) DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `DONG` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SCHOOL_INFO`
--

DROP TABLE IF EXISTS `SCHOOL_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCHOOL_INFO` (
  `ID` varchar(16) NOT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `GU` varchar(8) DEFAULT NULL,
  `NAME` varchar(32) NOT NULL,
  `SCHOOLTYPE` varchar(16) DEFAULT NULL,
  `SCHOOLLEVEL` varchar(45) DEFAULT NULL,
  `FOUNDDATE` datetime DEFAULT NULL,
  `KESPA` varchar(45) DEFAULT NULL,
  `MAIN_TEL` varchar(16) DEFAULT NULL,
  `ADDRESS` varchar(64) DEFAULT NULL,
  `TOTAL_STUDENTS` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SEOUL_DONG_PRICE_YEARLY`
--

DROP TABLE IF EXISTS `SEOUL_DONG_PRICE_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SEOUL_DONG_PRICE_YEARLY` (
  `YEAR` int DEFAULT NULL,
  `GU` varchar(16) DEFAULT NULL,
  `DONG` varchar(16) DEFAULT NULL,
  `AVG_PRICE` bigint DEFAULT NULL,
  `GROWTH` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SIDO_PUREMOVE_YEARLY`
--

DROP TABLE IF EXISTS `SIDO_PUREMOVE_YEARLY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SIDO_PUREMOVE_YEARLY` (
  `sido` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `move_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SUPPLY_TRENDS_BY_CATEGORY`
--

DROP TABLE IF EXISTS `SUPPLY_TRENDS_BY_CATEGORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLY_TRENDS_BY_CATEGORY` (
  `YEAR` int NOT NULL,
  `MONTH` int NOT NULL,
  `CATEGORY` varchar(16) DEFAULT NULL,
  `SUPPLY_INDEX` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TRANSPORTATION_ACCESSIBILITY`
--

DROP TABLE IF EXISTS `TRANSPORTATION_ACCESSIBILITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANSPORTATION_ACCESSIBILITY` (
  `YEAR` int DEFAULT NULL,
  `SIDO` varchar(8) DEFAULT NULL,
  `GUNGU` varchar(8) DEFAULT NULL,
  `DONG` varchar(8) DEFAULT NULL,
  `CATEGORY` varchar(8) DEFAULT NULL,
  `MODE` varchar(8) DEFAULT NULL,
  `AVG_MINUTE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UNIVERSITY_ADDRESS`
--

DROP TABLE IF EXISTS `UNIVERSITY_ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UNIVERSITY_ADDRESS` (
  `idUNIVERSITY_ADDRESS` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(45) DEFAULT NULL,
  `SEARCHEDNAME` varchar(45) DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  `DONG` varchar(45) DEFAULT NULL,
  `X` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  PRIMARY KEY (`idUNIVERSITY_ADDRESS`)
) ENGINE=InnoDB AUTO_INCREMENT=1891 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UNIVERSITY_INFO`
--

DROP TABLE IF EXISTS `UNIVERSITY_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UNIVERSITY_INFO` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `YEAR` varchar(16) DEFAULT NULL,
  `SCHOOLTYPE` varchar(16) DEFAULT NULL,
  `NAME` varchar(8) DEFAULT NULL,
  `CAMPUS` int DEFAULT NULL,
  `CLASS1` varchar(8) DEFAULT NULL,
  `CLASS2` varchar(8) DEFAULT NULL,
  `CLASS3` varchar(16) DEFAULT NULL,
  `MAJOR` varchar(64) DEFAULT NULL,
  `CAPACITY` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=82268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_type_by_dong_yearly`
--

DROP TABLE IF EXISTS `company_type_by_dong_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_type_by_dong_yearly` (
  `dong` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `company_type` varchar(10) DEFAULT NULL,
  `company_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company_type_by_gu_yearly`
--

DROP TABLE IF EXISTS `company_type_by_gu_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_type_by_gu_yearly` (
  `gu` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `company_type` varchar(10) DEFAULT NULL,
  `company_count` int DEFAULT NULL,
  `worker_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exampletable`
--

DROP TABLE IF EXISTS `exampletable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exampletable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `example` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `garak`
--

DROP TABLE IF EXISTS `garak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apartment` varchar(32) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL,
  `road_address` varchar(64) DEFAULT NULL,
  `mapx` float DEFAULT NULL,
  `mapy` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `household_type_by_sido_yearly`
--

DROP TABLE IF EXISTS `household_type_by_sido_yearly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `household_type_by_sido_yearly` (
  `sido` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `household_count` int DEFAULT NULL,
  `one_person_household_count` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 16:55:54
