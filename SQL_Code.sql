CREATE DATABASE  IF NOT EXISTS `lab_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lab_management`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_assignment4
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accessed_tool`
--

DROP TABLE IF EXISTS `accessed_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accessed_tool` (
  `ID` bigint NOT NULL,
  `Roll_Number` int NOT NULL,
  `Issued_Time` varchar(255) DEFAULT NULL,
  `Return_Time` varchar(255) DEFAULT NULL,
  `Quantity_Issued` int NOT NULL,
  PRIMARY KEY (`ID`,`Roll_Number`),
  KEY `Roll_Number` (`Roll_Number`),
  CONSTRAINT `accessed_tool_fk_1` FOREIGN KEY (`Roll_Number`) REFERENCES `students` (`Roll_Number`) ON UPDATE CASCADE,
  CONSTRAINT `accessed_tool_fk_2` FOREIGN KEY (`ID`) REFERENCES `inventory` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessed_tool`
--

LOCK TABLES `accessed_tool` WRITE;
/*!40000 ALTER TABLE `accessed_tool` DISABLE KEYS */;
INSERT INTO `accessed_tool` VALUES (1071836795,11637578,'2023-01-15 09:00:00','2023-01-20 17:00:00',1),(1075740988,12278656,'2023-02-01 10:30:00','2023-02-08 16:45:00',2),(1255132186,14790536,'2023-01-28 11:15:00','2023-02-10 14:20:00',1),(1327765137,15216734,'2023-01-18 08:45:00','2023-01-25 12:30:00',1),(1408207556,15606155,'2023-02-05 13:20:00','2023-02-15 10:00:00',1),(1518960694,15823784,'2023-01-20 14:00:00','2023-01-25 16:30:00',2),(1646723846,16512225,'2023-02-10 09:45:00','2023-02-20 15:15:00',1),(1752873487,16950074,'2023-02-03 11:10:00','2023-02-15 09:00:00',1),(1863431996,17901162,'2023-01-25 10:00:00','2023-02-01 14:45:00',1),(1946080615,18222390,'2023-02-08 08:30:00','2023-02-18 12:20:00',1),(1981161062,18611564,'2023-01-22 12:15:00','2023-02-05 17:30:00',1),(2026186089,21258441,'2023-01-30 09:00:00','2023-02-10 16:00:00',1),(2153987310,21321656,'2023-02-02 11:30:00','2023-02-12 14:45:00',1),(2647425042,21334196,'2023-01-28 10:00:00','2023-02-08 15:30:00',2),(2733023357,23465720,'2023-02-05 13:45:00','2023-02-15 11:20:00',1),(2805815877,24002624,'2023-01-18 09:30:00','2023-01-28 13:40:00',1),(3578021385,24728224,'2023-02-07 08:15:00','2023-02-20 16:15:00',1),(3698294903,26088398,'2023-01-24 12:30:00','2023-02-05 14:00:00',1),(3887836424,26160676,'2023-02-01 10:00:00','2023-02-10 13:45:00',2),(4012674336,26194497,'2023-01-26 09:15:00','2023-02-05 16:30:00',1),(4058143857,26690114,'2023-02-03 08:45:00','2023-02-13 12:00:00',1),(4092211621,27362381,'2023-01-29 11:30:00','2023-02-08 15:45:00',1),(4168867761,28505383,'2023-01-21 12:00:00','2023-01-28 16:15:00',1),(4681468028,29810599,'2023-02-04 09:30:00','2023-02-15 17:00:00',1),(4744644598,29952133,'2023-01-27 11:15:00','2023-02-08 14:45:00',1),(4837634116,31650436,'2023-02-02 08:30:00','2023-02-12 12:30:00',1),(4943710983,32018957,'2023-01-31 09:45:00','2023-02-10 15:20:00',1),(4984959034,33237899,'2023-02-05 11:00:00','2023-02-15 16:30:00',1);
/*!40000 ALTER TABLE `accessed_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `Course_ID` varchar(255) NOT NULL,
  `Credits` int DEFAULT NULL,
  `Course_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Course_ID`),
  UNIQUE KEY `Course_ID` (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('AQ264',1,'Paramedic'),('AY572',3,'Radio'),('CT740',2,'Researcher'),('EB565',2,'Environmental'),('FG378',2,'Seismologist'),('FN914',3,'Dealer'),('GB578',2,'Quality_Manager'),('GE392',1,'Media'),('ID617',3,'Engineer'),('KM959',4,'Accounts'),('MQ319',1,'Solicitor'),('OR177',1,'Worker'),('PJ264',2,'Advertising'),('UJ495',3,'Mechanical'),('UY580',5,'Lexicographer'),('VH458',3,'Programmer'),('WV691',5,'Engineer'),('WV937',1,'Manager'),('YW710',2,'horticultural'),('ZJ857',1,'electronics');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_slot`
--

DROP TABLE IF EXISTS `course_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course_slot` (
  `Time_ID` varchar(255) NOT NULL,
	`Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  PRIMARY KEY (`Time_ID`,`Lab_Name`),
  KEY `Lab_Name` (`Lab_Name`),
  CONSTRAINT `course_slot_fk_1` FOREIGN KEY (`Time_ID`) REFERENCES `time_slot` (`Time_ID`),
  CONSTRAINT `course_slot_fk_2` FOREIGN KEY (`Lab_Name`) REFERENCES `lab` (`Lab_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_slot`
--

LOCK TABLES `course_slot` WRITE;
/*!40000 ALTER TABLE `course_slot` DISABLE KEYS */;
INSERT INTO `course_slot` VALUES ('A1','Anatomy Lab'),('B2','Anatomy Lab'),('C4','Anatomy Lab'),('D5','Anatomy Lab'),('A1','Biochemistry Lab'),('B3','Biochemistry Lab'),('C4','Biochemistry Lab'),('D6','Biochemistry Lab'),('A2','Biology Lab'),('B3','Biology Lab'),('C5','Biology Lab'),('D6','Biology Lab'),('A2','Botany Lab'),('B4','Botany Lab'),('C5','Botany Lab'),('E1','Botany Lab'),('A3','Chemistry Lab'),('B4','Chemistry Lab'),('C6','Chemistry Lab'),('E1','Chemistry Lab'),('A3','Computer Lab'),('B5','Computer Lab'),('C6','Computer Lab'),('E2','Computer Lab'),('A4','Ecology Lab'),('B5','Ecology Lab'),('D1','Ecology Lab'),('E2','Ecology Lab'),('A4','Engineering Lab'),('B6','Engineering Lab'),('D1','Engineering Lab'),('E3','Engineering Lab'),('A5','Genetics Lab'),('B6','Genetics Lab'),('D2','Genetics Lab'),('E3','Genetics Lab'),('A5','Geology Lab'),('C1','Geology Lab'),('D2','Geology Lab'),('E4','Geology Lab'),('A6','Microbiology Lab'),('C1','Microbiology Lab'),('D3','Microbiology Lab'),('E4','Microbiology Lab'),('A6','Neuroscience Lab'),('C2','Neuroscience Lab'),('D3','Neuroscience Lab'),('E5','Neuroscience Lab'),('B1','Physics Lab'),('C2','Physics Lab'),('D4','Physics Lab'),('E5','Physics Lab'),('B1','Psychology Lab'),('C3','Psychology Lab'),('D4','Psychology Lab'),('E6','Psychology Lab'),('B2','Zoology Lab'),('C3','Zoology Lab'),('D5','Zoology Lab'),('E6','Zoology Lab');
/*!40000 ALTER TABLE `course_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  Dept_Name ENUM('CE', 'CL', 'CSE', 'EE', 'ME', 'MSE') NOT NULL,
  `No_of_Faculties` int DEFAULT '0',
  PRIMARY KEY (`Dept_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('CE',33),('CL',26),('CSE',25),('EE',35),('ME',43),('MSE',16);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grants`
--

DROP TABLE IF EXISTS `grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grants` (
  `ID` int NOT NULL,
   `Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  `Donor` varchar(255) NOT NULL,
  `Donating_Organization` varchar(255) NOT NULL,
  `Amount` float NOT NULL,
  `Receiving_Date` date NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `idx_donating_organization` (`Donating_Organization`),
  KEY `idx_amount` (`Amount`),
  KEY `idx_receiving_date` (`Receiving_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grants`
--

LOCK TABLES `grants` WRITE;
/*!40000 ALTER TABLE `grants` DISABLE KEYS */;
INSERT INTO `grants` VALUES (1,'Anatomy Lab','Tyler Lopez','Green, Johnson and Powell',9633.55,'2024-01-14'),(2,'Anatomy Lab','Vanessa King','Brown-French',3111.92,'2024-02-03'),(3,'Biochemistry Lab','Mary Garza','Delacruz PLC',9745.92,'2024-01-17'),(4,'Biochemistry Lab','Michael Salas','Ross, Williams and Williams',2435.62,'2024-01-23'),(5,'Biochemistry Lab','Michelle Mcmillan','Howard, Martinez and Hernandez',1270.68,'2024-01-15'),(6,'Biology Lab','Brian Davis','Livingston PLC',3402.83,'2024-02-08'),(7,'Biology Lab','Jacqueline Parker','Ayala, Pena and Medina',4366.4,'2024-01-20'),(8,'Biology Lab','James Phillips','Galloway, Gibbs and Erickson',1121.73,'2024-01-11'),(9,'Biology Lab','Kim Holt','Jones-Riley',7286.42,'2024-01-01'),(10,'Biology Lab','Matthew Doyle','Perez-Martin',7320.92,'2024-01-06'),(11,'Biology Lab','Monica Love','Anderson Ltd',2831.02,'2024-02-02'),(12,'Biology Lab','Patricia Graham','Landry-Mullen',5262.97,'2024-01-22'),(13,'Biology Lab','Scott Wilson','Anderson, Horn and Torres',4939.11,'2024-01-12'),(14,'Biology Lab','Stacey Robinson','Rodriguez Inc',4877.95,'2024-02-01'),(15,'Biology Lab','Stephen Castaneda','Johnson PLC',2636.63,'2024-02-08'),(16,'Biology Lab','Tanya Woods','Morgan, Johnson and Gomez',1582.83,'2024-01-28'),(17,'Biology Lab','Virginia Gallegos','Lopez-Gray',9637.23,'2024-01-01'),(18,'Biology Lab','William Moore','Meadows Ltd',2400.14,'2024-01-05'),(19,'Botany Lab','Alexandra Gonzalez','Lutz-Colon',6908.48,'2024-01-03'),(20,'Botany Lab','Katherine Anderson','Adams Inc',9926.12,'2024-01-23'),(21,'Botany Lab','Matthew Harris','Rodriguez, Meadows and Johnson',2594.82,'2024-01-26'),(22,'Chemistry Lab','Amy Frye','Osborne-Schneider',4353.63,'2024-02-04'),(23,'Chemistry Lab','Brian Hill','Hayes, Brown and Lloyd',7473.81,'2024-01-18'),(24,'Chemistry Lab','Laura Sullivan','Miller, Soto and Gonzalez',5943.39,'2024-02-03'),(25,'Chemistry Lab','Nicole Robertson','Scott-Reid',8177.25,'2024-01-18'),(26,'Chemistry Lab','Terri Cervantes','Walton, Arnold and Smith',2913.52,'2024-01-31'),(27,'Computer Lab','Brian Burke','Whitaker, Bates and Thomas',2703.19,'2024-01-07'),(28,'Computer Lab','Chelsea Lee','Hammond, Palmer and Reynolds',1554.87,'2024-02-07'),(29,'Computer Lab','Dustin Miller','Moon Inc',3093.36,'2024-02-01'),(30,'Computer Lab','Erika Davis','Ford Ltd',1302.86,'2024-01-17'),(31,'Computer Lab','Jessica Wright','Duarte-Haynes',4951.7,'2024-01-08'),(32,'Computer Lab','Luis Turner','Sharp, Richards and Keller',9036.96,'2024-01-12'),(33,'Computer Lab','Thomas Vazquez','Wallace, Navarro and Jones',7651.21,'2024-01-30'),(34,'Ecology Lab','Charles Foster','Ellis, Branch and Lee',3101.24,'2024-01-12'),(35,'Engineering Lab','Anna Velasquez','Fry, King and Austin',5032.98,'2024-02-04'),(36,'Engineering Lab','Margaret Meadows','Russell, Owens and Horn',8361.32,'2024-01-30'),(37,'Engineering Lab','Robert Gutierrez','Price Ltd',2577.09,'2024-01-05'),(38,'Engineering Lab','Victoria Porter','Wise, Harvey and Johnson',6813.5,'2024-01-07'),(39,'Genetics Lab','Andrea Bowman','Reynolds Ltd',4470.78,'2024-01-25'),(40,'Genetics Lab','Michael Salazar MD','Barrett Ltd',6295.81,'2024-01-29'),(41,'Geology Lab','Aaron Silva','Vincent, Berry and Chavez',8707.27,'2024-01-10'),(42,'Geology Lab','Vickie Gilmore','Whitney Inc',1947.48,'2024-02-09'),(43,'Microbiology Lab','Julia Davis','Brown PLC',1732.47,'2024-01-22'),(44,'Microbiology Lab','Susan Collins','Young, Robbins and Lewis',9521.14,'2024-02-07'),(45,'Physics Lab','David Mccoy','Owens, Jones and Johnson',5335.93,'2024-01-09'),(46,'Psychology Lab','Clifford Harper','Harris, Dennis and Torres',7944.17,'2024-01-10'),(47,'Psychology Lab','Keith Jensen','Burke PLC',7867,'2024-01-29'),(48,'Psychology Lab','Michelle Ramirez','Alvarez, Davis and Adams',3997.5,'2024-01-01'),(49,'Psychology Lab','Sara Klein','Sloan Group',1202.47,'2024-01-20'),(50,'Zoology Lab','Sherri Moss','Tucker-Saunders',5646.11,'2024-01-17');
/*!40000 ALTER TABLE `grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `instructor` (
  `Course_ID` varchar(255) NOT NULL,
  `Employee_ID` bigint NOT NULL,
  PRIMARY KEY (`Course_ID`,`Employee_ID`),
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `instructor_fk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`),
  CONSTRAINT `instructor_fk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `professor` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES ('AQ264',1349232821),('AY572',1349232821),('CT740',1349232821),('EB565',1435102099),('FG378',1435102099),('FN914',1435102099),('GB578',1435102099),('GE392',1939710942),('ID617',1939710942),('KM959',1939710942),('MQ319',2369578717),('OR177',2480308920),('PJ264',2480308920),('UJ495',2480308920),('UY580',2480308920),('VH458',2480308920),('WV691',2579751326),('WV937',2579751326),('YW710',2579751326),('ZJ857',2779600805),('ZJ857',3027615945);
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `inventory` (
  `ID` bigint NOT NULL,
  `Equipment_Name` varchar(255) NOT NULL,
  `Price` float DEFAULT NULL,
  `Vendor_Address` json DEFAULT NULL,
  `Vendor_Phone_Number` varchar(255) DEFAULT NULL,
  `Manufacturer_Name` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
   `Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

create index Eqp_name on inventory(Equipment_Name);

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1071836795,'Fume Hood',597.55,'{\"Vendor_Add_City\": \"East Charlesmouth\", \"Vendor_Add_Country\": \"Guyana\", \"Vendor_Add_First_Line\": \"6528 Michelle Garden\", \"Vendor_Add_Second_Line\": \"Apt. 015\"}','6386668341','Fernandez, Martin and Thomas','Unavailable','Genetics Lab',30),(1075740988,'Magnetic Stirrer',791.52,'{\"Vendor_Add_City\": \"Lake Stephanieview\", \"Vendor_Add_Country\": \"Central African Republic\", \"Vendor_Add_First_Line\": \"464 Kimberly Via Apt. 217\", \"Vendor_Add_Second_Line\": \"Suite 403\"}','2668096525','Russell-Murray','Available','Psychology Lab',45),(1255132186,'Water Bath',207.82,'{\"Vendor_Add_City\": \"New Sarah\", \"Vendor_Add_Country\": \"Rwanda\", \"Vendor_Add_First_Line\": \"12437 Julie Skyway Suite 201\", \"Vendor_Add_Second_Line\": \"Suite 919\"}','7141576481','Smith-Perkins','Unavailable','Computer Lab',83),(1327765137,'Desiccator',499.39,'{\"Vendor_Add_City\": \"North Conniefort\", \"Vendor_Add_Country\": \"Central African Republic\", \"Vendor_Add_First_Line\": \"8698 Taylor Fords\", \"Vendor_Add_Second_Line\": \"Suite 984\"}','5225542788','Butler, Miranda and Alexander','Available','Zoology Lab',29),(1408207556,'Freezer',903.67,'{\"Vendor_Add_City\": \"Howardstad\", \"Vendor_Add_Country\": \"Afghanistan\", \"Vendor_Add_First_Line\": \"39959 Joshua Loop\", \"Vendor_Add_Second_Line\": \"Suite 446\"}','4841342494','Foster, Kramer and Powell','Available','Ecology Lab',28),(1518960694,'Pipette',596.65,'{\"Vendor_Add_City\": \"Jamiefort\", \"Vendor_Add_Country\": \"Slovenia\", \"Vendor_Add_First_Line\": \"3920 Wood Mountain\", \"Vendor_Add_Second_Line\": \"Apt. 391\"}','5260938371','Castro-Kemp','Unavailable','Genetics Lab',91),(1646723846,'Autoclave',240.25,'{\"Vendor_Add_City\": \"Meaganbury\", \"Vendor_Add_Country\": \"Moldova\", \"Vendor_Add_First_Line\": \"29697 Gregory Parkway Suite 143\", \"Vendor_Add_Second_Line\": \"Suite 884\"}','5700608711','Johnson, Allen and Bryant','Unavailable','Zoology Lab',19),(1752873487,'Gas Chromatograph',498.81,'{\"Vendor_Add_City\": \"North Tylerstad\", \"Vendor_Add_Country\": \"San Marino\", \"Vendor_Add_First_Line\": \"827 Theresa Rapids\", \"Vendor_Add_Second_Line\": \"Suite 750\"}','5272897534','Johnson Group','Unavailable','Biochemistry Lab',68),(1863431996,'Bunsen Burner',987.92,'{\"Vendor_Add_City\": \"Lake Jennifer\", \"Vendor_Add_Country\": \"Kiribati\", \"Vendor_Add_First_Line\": \"6999 David Roads Apt. 356\", \"Vendor_Add_Second_Line\": \"Suite 642\"}','1693836616','Walter Inc','Available','Anatomy Lab',9),(1946080615,'Homogenizer',232.3,'{\"Vendor_Add_City\": \"North Lisa\", \"Vendor_Add_Country\": \"Tokelau\", \"Vendor_Add_First_Line\": \"7697 Matthew Ports\", \"Vendor_Add_Second_Line\": \"Apt. 062\"}','3520484136','Palmer-Bush','Unavailable','Physics Lab',50),(1981161062,'Magnetic Stirrer',486.98,'{\"Vendor_Add_City\": \"Villegaschester\", \"Vendor_Add_Country\": \"Micronesia\", \"Vendor_Add_First_Line\": \"929 Seth Pines Suite 732\", \"Vendor_Add_Second_Line\": \"Apt. 079\"}','2458324650','Jones, Gardner and Lyons','Unavailable','Engineering Lab',2),(2026186089,'Autoclave',869.35,'{\"Vendor_Add_City\": \"Smithchester\", \"Vendor_Add_Country\": \"Antigua and Barbuda\", \"Vendor_Add_First_Line\": \"511 Walter Burg Suite 313\", \"Vendor_Add_Second_Line\": \"Apt. 847\"}','1595489046','Price, Leach and Powell','Unavailable','Anatomy Lab',9),(2153987310,'Rotary Evaporator',223.19,'{\"Vendor_Add_City\": \"West Jessica\", \"Vendor_Add_Country\": \"Netherlands\", \"Vendor_Add_First_Line\": \"3265 Yates Station\", \"Vendor_Add_Second_Line\": \"Apt. 384\"}','7759623525','Richardson-Jackson','Available','Biochemistry Lab',49),(2647425042,'Fume Hood',15.57,'{\"Vendor_Add_City\": \"East Shannonland\", \"Vendor_Add_Country\": \"Falkland Islands (Malvinas)\", \"Vendor_Add_First_Line\": \"35297 Paul Heights Suite 098\", \"Vendor_Add_Second_Line\": \"Apt. 731\"}','7543177152','Estes Group','Available','Computer Lab',63),(2733023357,'Vortex Mixer',178.72,'{\"Vendor_Add_City\": \"New Becky\", \"Vendor_Add_Country\": \"Bouvet Island (Bouvetoya)\", \"Vendor_Add_First_Line\": \"448 Williams Squares\", \"Vendor_Add_Second_Line\": \"Apt. 093\"}','8186792315','Ball-Skinner','Unavailable','Geology Lab',22),(2805815877,'Refrigerator',210.8,'{\"Vendor_Add_City\": \"Port Bridgetmouth\", \"Vendor_Add_Country\": \"British Indian Ocean Territory (Chagos Archipelago)\", \"Vendor_Add_First_Line\": \"3246 Kim Squares\", \"Vendor_Add_Second_Line\": \"Suite 892\"}','9778501986','Ruiz-Wilson','Unavailable','Microbiology Lab',1),(3578021385,'Gel Electrophoresis System',226.37,'{\"Vendor_Add_City\": \"Robertmouth\", \"Vendor_Add_Country\": \"Argentina\", \"Vendor_Add_First_Line\": \"5396 Gabrielle Shoals Apt. 037\", \"Vendor_Add_Second_Line\": \"Apt. 469\"}','6283520023','Weaver and Sons','Available','Ecology Lab',75),(3698294903,'Microtome',496.29,'{\"Vendor_Add_City\": \"New Logan\", \"Vendor_Add_Country\": \"Saudi Arabia\", \"Vendor_Add_First_Line\": \"46838 Donald Crossroad\", \"Vendor_Add_Second_Line\": \"Suite 682\"}','3806626072','Green, Hill and Saunders','Unavailable','Computer Lab',88),(3887836424,'Autoclave',892.58,'{\"Vendor_Add_City\": \"Brookschester\", \"Vendor_Add_Country\": \"Namibia\", \"Vendor_Add_First_Line\": \"9189 Wilson Crest Suite 374\", \"Vendor_Add_Second_Line\": \"Apt. 349\"}','3997395486','Moore, Hebert and Ashley','Available','Anatomy Lab',71),(4012674336,'Spectrophotometer',774.59,'{\"Vendor_Add_City\": \"Lake Jennifer\", \"Vendor_Add_Country\": \"Honduras\", \"Vendor_Add_First_Line\": \"947 Shannon Stream Suite 037\", \"Vendor_Add_Second_Line\": \"Apt. 773\"}','5675236617','Travis-Norton','Unavailable','Botany Lab',59),(4058143857,'Refrigerator',418.63,'{\"Vendor_Add_City\": \"New Paul\", \"Vendor_Add_Country\": \"Netherlands Antilles\", \"Vendor_Add_First_Line\": \"1429 Camacho Island\", \"Vendor_Add_Second_Line\": \"Apt. 468\"}','5607324714','Welch-Simmons','Available','Computer Lab',19),(4092211621,'Autoclave',838.3,'{\"Vendor_Add_City\": \"Laceyview\", \"Vendor_Add_Country\": \"Cocos (Keeling) Islands\", \"Vendor_Add_First_Line\": \"951 Dixon Views Apt. 023\", \"Vendor_Add_Second_Line\": \"Suite 816\"}','1792787383','West Group','Available','Biochemistry Lab',58),(4168867761,'Autoclave',81.93,'{\"Vendor_Add_City\": \"East Michael\", \"Vendor_Add_Country\": \"Thailand\", \"Vendor_Add_First_Line\": \"62595 Raymond Points Apt. 450\", \"Vendor_Add_Second_Line\": \"Suite 701\"}','1900870947','Carlson-Vance','Available','Zoology Lab',84),(4681468028,'Graduated Cylinder',333.36,'{\"Vendor_Add_City\": \"Nicholsland\", \"Vendor_Add_Country\": \"Cape Verde\", \"Vendor_Add_First_Line\": \"66749 White Cove\", \"Vendor_Add_Second_Line\": \"Suite 823\"}','5299040520','Myers, Reyes and Mathis','Available','Engineering Lab',4),(4744644598,'Freezer',106.51,'{\"Vendor_Add_City\": \"Davisburgh\", \"Vendor_Add_Country\": \"Armenia\", \"Vendor_Add_First_Line\": \"491 Drake Prairie\", \"Vendor_Add_Second_Line\": \"Suite 495\"}','5092608480','Terry-Dawson','Unavailable','Genetics Lab',13),(4837634116,'Fume Hood',671.4,'{\"Vendor_Add_City\": \"North Amber\", \"Vendor_Add_Country\": \"Guam\", \"Vendor_Add_First_Line\": \"9922 Mary Overpass Apt. 241\", \"Vendor_Add_Second_Line\": \"Apt. 547\"}','9613475316','Bryant-Wade','Unavailable','Psychology Lab',41),(4943710983,'Beaker',761.46,'{\"Vendor_Add_City\": \"South Marissa\", \"Vendor_Add_Country\": \"Bolivia\", \"Vendor_Add_First_Line\": \"70671 James Shoals\", \"Vendor_Add_Second_Line\": \"Apt. 974\"}','9333946485','Schneider, Howard and Petty','Unavailable','Biology Lab',2),(4984959034,'Beaker',460.94,'{\"Vendor_Add_City\": \"Michaelbury\", \"Vendor_Add_Country\": \"Guatemala\", \"Vendor_Add_First_Line\": \"8967 Erickson Prairie Apt. 063\", \"Vendor_Add_Second_Line\": \"Apt. 502\"}','6568075434','Moss, Payne and Cruz','Available','Biochemistry Lab',20),(5193032396,'Beaker',858.95,'{\"Vendor_Add_City\": \"Jennifermouth\", \"Vendor_Add_Country\": \"Western Sahara\", \"Vendor_Add_First_Line\": \"1398 Cindy Circles\", \"Vendor_Add_Second_Line\": \"Suite 821\"}','6452375334','Valentine, Mccormick and Barber','Unavailable','Genetics Lab',72),(5567675457,'Petri Dish',238.61,'{\"Vendor_Add_City\": \"East Michaelburgh\", \"Vendor_Add_Country\": \"Germany\", \"Vendor_Add_First_Line\": \"50366 Zachary Pines\", \"Vendor_Add_Second_Line\": \"Apt. 085\"}','3247903582','Odom PLC','Available','Anatomy Lab',90),(5659613006,'Incubator',184.18,'{\"Vendor_Add_City\": \"West Benjamin\", \"Vendor_Add_Country\": \"Pitcairn Islands\", \"Vendor_Add_First_Line\": \"339 Simmons Gardens Suite 036\", \"Vendor_Add_Second_Line\": \"Apt. 387\"}','7957219484','Berry, Thompson and Stewart','Unavailable','Zoology Lab',86),(6297464943,'Rotary Evaporator',962.04,'{\"Vendor_Add_City\": \"Christopherfort\", \"Vendor_Add_Country\": \"Costa Rica\", \"Vendor_Add_First_Line\": \"5644 Kimberly Meadows\", \"Vendor_Add_Second_Line\": \"Suite 005\"}','6058034174','Woods, Olson and Richard','Unavailable','Zoology Lab',15),(6552395257,'Water Bath',647.96,'{\"Vendor_Add_City\": \"West Jill\", \"Vendor_Add_Country\": \"Puerto Rico\", \"Vendor_Add_First_Line\": \"9400 Rowland Stravenue\", \"Vendor_Add_Second_Line\": \"Apt. 778\"}','5017997717','Gregory-Gonzalez','Available','Neuroscience Lab',95),(6559760282,'Incubator',99.36,'{\"Vendor_Add_City\": \"West Alyssamouth\", \"Vendor_Add_Country\": \"Denmark\", \"Vendor_Add_First_Line\": \"364 Hale Cliffs Suite 278\", \"Vendor_Add_Second_Line\": \"Suite 046\"}','4445275131','Hickman, Cook and Lopez','Available','Engineering Lab',17),(7339758005,'Microtome',192.3,'{\"Vendor_Add_City\": \"Smithview\", \"Vendor_Add_Country\": \"China\", \"Vendor_Add_First_Line\": \"96410 Jason Views\", \"Vendor_Add_Second_Line\": \"Suite 666\"}','8381256997','Duke-Simpson','Available','Genetics Lab',97),(7538269718,'Incubator',858.23,'{\"Vendor_Add_City\": \"Mirandamouth\", \"Vendor_Add_Country\": \"Bouvet Island (Bouvetoya)\", \"Vendor_Add_First_Line\": \"4876 Berger Manor\", \"Vendor_Add_Second_Line\": \"Apt. 324\"}','8663929178','Mendoza PLC','Available','Ecology Lab',76),(8012085934,'Autoclave',985.33,'{\"Vendor_Add_City\": \"Brandonfort\", \"Vendor_Add_Country\": \"Vanuatu\", \"Vendor_Add_First_Line\": \"737 Carolyn Brooks Apt. 856\", \"Vendor_Add_Second_Line\": \"Apt. 174\"}','9774920690','Williams Group','Unavailable','Microbiology Lab',10),(8027325606,'Centrifuge',459.73,'{\"Vendor_Add_City\": \"East Scotthaven\", \"Vendor_Add_Country\": \"Belgium\", \"Vendor_Add_First_Line\": \"137 Anthony Spring Apt. 567\", \"Vendor_Add_Second_Line\": \"Suite 145\"}','2282931291','Rodriguez-Lee','Available','Ecology Lab',88),(8111566541,'Liquid Handling Robot',746.18,'{\"Vendor_Add_City\": \"Port Cameron\", \"Vendor_Add_Country\": \"Zambia\", \"Vendor_Add_First_Line\": \"9009 Maurice Gardens Apt. 195\", \"Vendor_Add_Second_Line\": \"Apt. 144\"}','3109774893','Walker, Wilkins and Dean','Available','Genetics Lab',37),(8468271867,'Freezer',835.06,'{\"Vendor_Add_City\": \"West Bobby\", \"Vendor_Add_Country\": \"Heard Island and McDonald Islands\", \"Vendor_Add_First_Line\": \"17963 Lori Groves Suite 392\", \"Vendor_Add_Second_Line\": \"Apt. 902\"}','8213382013','Villa-Yates','Available','Microbiology Lab',47),(8584725435,'Incubator',64.07,'{\"Vendor_Add_City\": \"Lake Christopherbury\", \"Vendor_Add_Country\": \"Tokelau\", \"Vendor_Add_First_Line\": \"9021 Sherman Lane\", \"Vendor_Add_Second_Line\": \"Suite 764\"}','4857945626','Peterson and Sons','Available','Zoology Lab',60),(8635039243,'Autoclave',634.29,'{\"Vendor_Add_City\": \"Amberville\", \"Vendor_Add_Country\": \"Holy See (Vatican City State)\", \"Vendor_Add_First_Line\": \"84488 Cynthia Mountains Suite 472\", \"Vendor_Add_Second_Line\": \"Suite 774\"}','4051764444','Jimenez LLC','Unavailable','Ecology Lab',42),(9013616039,'Gel Electrophoresis System',238.08,'{\"Vendor_Add_City\": \"Lake Ronald\", \"Vendor_Add_Country\": \"Sweden\", \"Vendor_Add_First_Line\": \"236 Mcclure Cape\", \"Vendor_Add_Second_Line\": \"Suite 316\"}','9847839476','Washington, Lane and Richardson','Unavailable','Psychology Lab',49),(9021664123,'Desiccator',14.93,'{\"Vendor_Add_City\": \"West Johnmouth\", \"Vendor_Add_Country\": \"Fiji\", \"Vendor_Add_First_Line\": \"374 Eric Wells\", \"Vendor_Add_Second_Line\": \"Suite 271\"}','5555529044','Forbes Group','Available','Anatomy Lab',61),(9092048370,'PCR Machine',422.92,'{\"Vendor_Add_City\": \"East Debraburgh\", \"Vendor_Add_Country\": \"Slovakia (Slovak Republic)\", \"Vendor_Add_First_Line\": \"7145 Steven Radial Suite 006\", \"Vendor_Add_Second_Line\": \"Apt. 743\"}','7325489121','Morgan LLC','Unavailable','Chemistry Lab',25),(9210488013,'Vortex Mixer',543.04,'{\"Vendor_Add_City\": \"Jessicamouth\", \"Vendor_Add_Country\": \"Monaco\", \"Vendor_Add_First_Line\": \"662 Sanchez Well\", \"Vendor_Add_Second_Line\": \"Suite 010\"}','6195387511','Thornton, Duarte and Olson','Available','Biochemistry Lab',25),(9238529921,'Desiccator',115.98,'{\"Vendor_Add_City\": \"Lake Suemouth\", \"Vendor_Add_Country\": \"Swaziland\", \"Vendor_Add_First_Line\": \"18146 Moore Junctions\", \"Vendor_Add_Second_Line\": \"Apt. 697\"}','7379054572','Smith and Sons','Unavailable','Geology Lab',79),(9385345535,'Incubator',611.31,'{\"Vendor_Add_City\": \"East Courtneyfort\", \"Vendor_Add_Country\": \"Guinea\", \"Vendor_Add_First_Line\": \"6664 Jose Forest Apt. 186\", \"Vendor_Add_Second_Line\": \"Apt. 472\"}','1895278681','Stewart Inc','Unavailable','Botany Lab',65),(9476609557,'Hot Plate',131.71,'{\"Vendor_Add_City\": \"North Lisaberg\", \"Vendor_Add_Country\": \"Cuba\", \"Vendor_Add_First_Line\": \"3276 Jacob Trail\", \"Vendor_Add_Second_Line\": \"Suite 101\"}','2098524033','Hurley-Chambers','Available','Chemistry Lab',61),(9483314699,'Water Bath',937.18,'{\"Vendor_Add_City\": \"Wrightborough\", \"Vendor_Add_Country\": \"Guinea\", \"Vendor_Add_First_Line\": \"9631 John Parks Suite 585\", \"Vendor_Add_Second_Line\": \"Apt. 022\"}','7735071227','Taylor, Yang and Cruz','Unavailable','Computer Lab',50),(9509148204,'Hot Plate',376.69,'{\"Vendor_Add_City\": \"Curtisberg\", \"Vendor_Add_Country\": \"Philippines\", \"Vendor_Add_First_Line\": \"18006 Moore Skyway\", \"Vendor_Add_Second_Line\": \"Apt. 048\"}','3509726633','Garrett, Carroll and Carlson','Available','Chemistry Lab',99),(9564217310,'Hot Plate',504.36,'{\"Vendor_Add_City\": \"New Kimberly\", \"Vendor_Add_Country\": \"Bosnia and Herzegovina\", \"Vendor_Add_First_Line\": \"987 Graham Village Suite 913\", \"Vendor_Add_Second_Line\": \"Suite 065\"}','9262543121','Roberts PLC','Available','Biochemistry Lab',52),(9575431490,'Vortex Mixer',215.19,'{\"Vendor_Add_City\": \"Port Travis\", \"Vendor_Add_Country\": \"Cambodia\", \"Vendor_Add_First_Line\": \"1773 Terry Manors Suite 473\", \"Vendor_Add_Second_Line\": \"Apt. 873\"}','6010385717','Ramirez Inc','Available','Physics Lab',73),(9579164456,'Microtome',214.36,'{\"Vendor_Add_City\": \"Lake Paul\", \"Vendor_Add_Country\": \"Fiji\", \"Vendor_Add_First_Line\": \"4411 Michael Loop\", \"Vendor_Add_Second_Line\": \"Suite 152\"}','1162336781','Smith PLC','Available','Biochemistry Lab',35),(9669565122,'PCR Machine',234.41,'{\"Vendor_Add_City\": \"West Reneeburgh\", \"Vendor_Add_Country\": \"Dominican Republic\", \"Vendor_Add_First_Line\": \"3123 Jennifer Extension Suite 038\", \"Vendor_Add_Second_Line\": \"Apt. 540\"}','2094321076','Baker Ltd','Unavailable','Chemistry Lab',36),(9842765120,'Centrifuge',891.47,'{\"Vendor_Add_City\": \"Haleystad\", \"Vendor_Add_Country\": \"Barbados\", \"Vendor_Add_First_Line\": \"34925 Woods Glen\", \"Vendor_Add_Second_Line\": \"Suite 442\"}','3462169651','Alvarado and Sons','Available','Genetics Lab',61),
(1000000051, 'Autoclave', 1159.21, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "123 Main Street", "Vendor_Add_Second_Line": "Suite 101"}', '9872345678', 'BioInnovations Spain', 'Available', 'Physics Lab', 5),
(1000000052, 'Water Bath', 945.14, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "456 Elm Street", "Vendor_Add_Second_Line": "Floor 2"}', '9871234567', 'LabTools Russia', 'Unavailable', 'Biochemistry Lab', 4),
(1000000053, 'Fume Hood', 1979.17, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "789 Oak Avenue", "Vendor_Add_Second_Line": "Building C"}', '9876543210', 'TechScience Italy', 'Available', 'Chemistry Lab', 8),
(1000000054, 'Centrifuge', 1323.71, '{"Vendor_Add_City": "Berlin", "Vendor_Add_Country": "Germany", "Vendor_Add_First_Line": "101 Pine Road", "Vendor_Add_Second_Line": "Unit 3A"}', '9875432109', 'ScienceInnovate Germany', 'Unavailable', 'Zoology Lab', 5),
(1000000055, 'Hot Plate', 497.86, '{"Vendor_Add_City": "London", "Vendor_Add_Country": "UK", "Vendor_Add_First_Line": "321 Cedar Avenue", "Vendor_Add_Second_Line": "Suite B"}', '9874321098', 'LabTech UK', 'Available', 'Neuroscience Lab', 2),
(1000000056, 'PCR Machine', 2079.75, '{"Vendor_Add_City": "Los Angeles", "Vendor_Add_Country": "USA", "Vendor_Add_First_Line": "654 Birch Lane", "Vendor_Add_Second_Line": "Floor 4"}', '9873210987', 'BioInnovate Inc.', 'Available', 'Botany Lab', 8),
(1000000057, 'Rotary Evaporator', 1503.81, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "789 Maple Drive", "Vendor_Add_Second_Line": "Suite 202"}', '9872109876', 'LabMasters Canada', 'Unavailable', 'Computer Lab', 4),
(1000000058, 'Desiccator', 1023.17, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "876 Willow Court", "Vendor_Add_Second_Line": "Unit 5"}', '9871098765', 'TechSolutions S.L.', 'Available', 'Geology Lab', 2),
(1000000059, 'Microtome', 1345.69, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "543 Pineapple Avenue", "Vendor_Add_Second_Line": "Floor 3"}', '9870987654', 'BioTech Italia', 'Unavailable', 'Physics Lab', 5),
(1000000060, 'Liquid Handling Robot', 1122.92, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "210 Oak Street", "Vendor_Add_Second_Line": "Building E"}', '9879876543', 'LabSolutions Russia', 'Available', 'Biology Lab', 3),
(1000000061, 'Autoclave', 1259.21, '{"Vendor_Add_City": "Tokyo", "Vendor_Add_Country": "Japan", "Vendor_Add_First_Line": "123 Main Street", "Vendor_Add_Second_Line": "Suite 101"}', '9878765432', 'BioInnovations Japan', 'Available', 'Physics Lab', 5),
(1000000062, 'Water Bath', 1045.14, '{"Vendor_Add_City": "Sydney", "Vendor_Add_Country": "Australia", "Vendor_Add_First_Line": "456 Elm Street", "Vendor_Add_Second_Line": "Floor 2"}', '9877654321', 'LabTools Australia', 'Unavailable', 'Biochemistry Lab', 3),
(1000000063, 'Fume Hood', 2079.17, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "789 Oak Avenue", "Vendor_Add_Second_Line": "Building C"}', '9876543210', 'TechScience Canada', 'Available', 'Chemistry Lab', 8),
(1000000064, 'Centrifuge', 1423.71, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "101 Pine Road", "Vendor_Add_Second_Line": "Unit 3A"}', '9875432109', 'ScienceInnovate Spain', 'Unavailable', 'Zoology Lab', 5),
(1000000065, 'Hot Plate', 547.86, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "321 Cedar Avenue", "Vendor_Add_Second_Line": "Suite B"}', '9874321098', 'LabTech Italy', 'Available', 'Neuroscience Lab', 2),
(1000000066, 'PCR Machine', 2179.75, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "654 Birch Lane", "Vendor_Add_Second_Line": "Floor 4"}', '9873210987', 'BioTech Russia', 'Available', 'Botany Lab', 8),
(1000000067, 'Rotary Evaporator', 1603.81, '{"Vendor_Add_City": "Paris", "Vendor_Add_Country": "France", "Vendor_Add_First_Line": "789 Maple Drive", "Vendor_Add_Second_Line": "Suite 202"}', '9872109876', 'LabMasters France', 'Unavailable', 'Computer Lab', 4),
(1000000068, 'Desiccator', 1123.17, '{"Vendor_Add_City": "Berlin", "Vendor_Add_Country": "Germany", "Vendor_Add_First_Line": "876 Willow Court", "Vendor_Add_Second_Line": "Unit 5"}', '9871098765', 'TechLab Germany', 'Available', 'Geology Lab', 3),
(1000000069, 'Microtome', 1445.69, '{"Vendor_Add_City": "London", "Vendor_Add_Country": "UK", "Vendor_Add_First_Line": "543 Pineapple Avenue", "Vendor_Add_Second_Line": "Floor 3"}', '9870987654', 'BioTech UK', 'Unavailable', 'Physics Lab', 5),
(1000000070, 'Liquid Handling Robot', 1222.92, '{"Vendor_Add_City": "Los Angeles", "Vendor_Add_Country": "USA", "Vendor_Add_First_Line": "210 Oak Street", "Vendor_Add_Second_Line": "Building E"}', '9879876543', 'LabSolutions Inc.', 'Available', 'Biology Lab', 3),
(1000000071, 'Autoclave', 1359.21, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "123 Main Street", "Vendor_Add_Second_Line": "Suite 101"}', '9878765432', 'BioInnovations Canada', 'Available', 'Physics Lab', 5),
(1000000072, 'Water Bath', 1145.14, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "456 Elm Street", "Vendor_Add_Second_Line": "Floor 2"}', '9877654321', 'LabTools Spain', 'Unavailable', 'Biochemistry Lab', 4),
(1000000073, 'Fume Hood', 2179.17, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "789 Oak Avenue", "Vendor_Add_Second_Line": "Building C"}', '9876543210', 'TechScience Russia', 'Available', 'Chemistry Lab', 8),
(1000000074, 'Centrifuge', 1523.71, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "101 Pine Road", "Vendor_Add_Second_Line": "Unit 3A"}', '9875432109', 'ScienceInnovate Italy', 'Unavailable', 'Zoology Lab', 5),
(1000000075, 'Hot Plate', 597.86, '{"Vendor_Add_City": "Berlin", "Vendor_Add_Country": "Germany", "Vendor_Add_First_Line": "321 Cedar Avenue", "Vendor_Add_Second_Line": "Suite B"}', '9874321098', 'LabTech Germany', 'Available', 'Neuroscience Lab', 2),
(1000000076, 'PCR Machine', 2279.75, '{"Vendor_Add_City": "London", "Vendor_Add_Country": "UK", "Vendor_Add_First_Line": "654 Birch Lane", "Vendor_Add_Second_Line": "Floor 4"}', '9873210987', 'BioInnovate UK', 'Available', 'Botany Lab', 8),
(1000000077, 'Rotary Evaporator', 1703.81, '{"Vendor_Add_City": "Los Angeles", "Vendor_Add_Country": "USA", "Vendor_Add_First_Line": "789 Maple Drive", "Vendor_Add_Second_Line": "Suite 202"}', '9872109876', 'LabMasters Inc.', 'Unavailable', 'Computer Lab', 4),
(1000000078, 'Desiccator', 1223.17, '{"Vendor_Add_City": "Tokyo", "Vendor_Add_Country": "Japan", "Vendor_Add_First_Line": "876 Willow Court", "Vendor_Add_Second_Line": "Unit 5"}', '9871098765', 'TechLab Japan', 'Available', 'Geology Lab', 3),
(1000000079, 'Microtome', 1545.69, '{"Vendor_Add_City": "Sydney", "Vendor_Add_Country": "Australia", "Vendor_Add_First_Line": "543 Pineapple Avenue", "Vendor_Add_Second_Line": "Floor 3"}', '9870987654', 'BioScience Australia', 'Unavailable', 'Physics Lab', 5),
(1000000080, 'Liquid Handling Robot', 1322.92, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "210 Oak Street", "Vendor_Add_Second_Line": "Building E"}', '9879876543', 'LabSolutions Canada', 'Available', 'Biology Lab', 3),
(1000000081, 'Autoclave', 1459.21, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "123 Main Street", "Vendor_Add_Second_Line": "Suite 101"}', '9878765432', 'BioInnovations Spain', 'Available', 'Physics Lab', 5),
(1000000082, 'Water Bath', 1245.14, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "456 Elm Street", "Vendor_Add_Second_Line": "Floor 2"}', '9877654321', 'LabTools Russia', 'Unavailable', 'Biochemistry Lab', 4),
(1000000083, 'Fume Hood', 2279.17, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "789 Oak Avenue", "Vendor_Add_Second_Line": "Building C"}', '9876543210', 'TechScience Italy', 'Available', 'Chemistry Lab', 8),
(1000000084, 'Centrifuge', 1623.71, '{"Vendor_Add_City": "Berlin", "Vendor_Add_Country": "Germany", "Vendor_Add_First_Line": "101 Pine Road", "Vendor_Add_Second_Line": "Unit 3A"}', '9875432109', 'ScienceInnovate Germany', 'Unavailable', 'Zoology Lab', 5),
(1000000085, 'Hot Plate', 647.86, '{"Vendor_Add_City": "London", "Vendor_Add_Country": "UK", "Vendor_Add_First_Line": "321 Cedar Avenue", "Vendor_Add_Second_Line": "Suite B"}', '9874321098', 'LabTech UK', 'Available', 'Neuroscience Lab', 2),
(1000000086, 'PCR Machine', 2379.75, '{"Vendor_Add_City": "Los Angeles", "Vendor_Add_Country": "USA", "Vendor_Add_First_Line": "654 Birch Lane", "Vendor_Add_Second_Line": "Floor 4"}', '9873210987', 'BioInnovate Inc.', 'Available', 'Botany Lab', 8),
(1000000087, 'Rotary Evaporator', 1803.81, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "789 Maple Drive", "Vendor_Add_Second_Line": "Suite 202"}', '9872109876', 'LabMasters Canada', 'Unavailable', 'Computer Lab', 4),
(1000000088, 'Desiccator', 1323.17, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "876 Willow Court", "Vendor_Add_Second_Line": "Unit 5"}', '9871098765', 'TechSolutions S.L.', 'Available', 'Geology Lab', 3),
(1000000089, 'Microtome', 1645.69, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "543 Pineapple Avenue", "Vendor_Add_Second_Line": "Floor 3"}', '9870987654', 'BioTech Italia', 'Unavailable', 'Physics Lab', 5),
(1000000090, 'Liquid Handling Robot', 1422.92, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "210 Oak Street", "Vendor_Add_Second_Line": "Building E"}', '9879876543', 'LabSolutions Russia', 'Available', 'Biology Lab', 3),
(1000000091, 'Autoclave', 1559.21, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "123 Main Street", "Vendor_Add_Second_Line": "Suite 101"}', '9878765432', 'BioInnovations Canada', 'Available', 'Physics Lab', 5),
(1000000092, 'Water Bath', 1345.14, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "456 Elm Street", "Vendor_Add_Second_Line": "Floor 2"}', '9877654321', 'LabTools Spain', 'Unavailable', 'Biochemistry Lab', 4),
(1000000093, 'Fume Hood', 2379.17, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "789 Oak Avenue", "Vendor_Add_Second_Line": "Building C"}', '9876543210', 'TechScience Russia', 'Available', 'Chemistry Lab', 8),
(1000000094, 'Centrifuge', 1723.71, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "101 Pine Road", "Vendor_Add_Second_Line": "Unit 3A"}', '9875432109', 'ScienceInnovate Italy', 'Unavailable', 'Zoology Lab', 5),
(1000000095, 'Hot Plate', 697.86, '{"Vendor_Add_City": "Berlin", "Vendor_Add_Country": "Germany", "Vendor_Add_First_Line": "321 Cedar Avenue", "Vendor_Add_Second_Line": "Suite B"}', '9874321098', 'LabTech Germany', 'Available', 'Neuroscience Lab', 2),
(1000000096, 'PCR Machine', 2479.75, '{"Vendor_Add_City": "London", "Vendor_Add_Country": "UK", "Vendor_Add_First_Line": "654 Birch Lane", "Vendor_Add_Second_Line": "Floor 4"}', '9873210987', 'BioInnovate UK', 'Available', 'Botany Lab', 8),
(1000000097, 'Rotary Evaporator', 1903.81, '{"Vendor_Add_City": "Los Angeles", "Vendor_Add_Country": "USA", "Vendor_Add_First_Line": "789 Maple Drive", "Vendor_Add_Second_Line": "Suite 202"}', '9872109876', 'LabMasters Inc.', 'Unavailable', 'Computer Lab', 4),
(1000000098, 'Desiccator', 1423.17, '{"Vendor_Add_City": "Tokyo", "Vendor_Add_Country": "Japan", "Vendor_Add_First_Line": "876 Willow Court", "Vendor_Add_Second_Line": "Unit 5"}', '9871098765', 'TechLab Japan', 'Available', 'Geology Lab', 3),
(1000000099, 'Microtome', 1745.69, '{"Vendor_Add_City": "Sydney", "Vendor_Add_Country": "Australia", "Vendor_Add_First_Line": "543 Pineapple Avenue", "Vendor_Add_Second_Line": "Floor 3"}', '9870987654', 'BioScience Australia', 'Unavailable', 'Physics Lab', 5),
(1000000100, 'Liquid Handling Robot', 1522.92, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "210 Oak Street", "Vendor_Add_Second_Line": "Building E"}', '9879876543', 'LabSolutions Canada', 'Available', 'Biology Lab', 3),
(1000000111, 'Autoclave', 1759.21, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "123 Main Street", "Vendor_Add_Second_Line": "Suite 101"}', '9878765432', 'BioInnovations Canada', 'Available', 'Physics Lab', 10),
(1000000112, 'Water Bath', 1545.14, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "456 Elm Street", "Vendor_Add_Second_Line": "Floor 2"}', '9877654321', 'LabTools Spain', 'Unavailable', 'Biochemistry Lab', 8),
(1000000113, 'Fume Hood', 2579.17, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "789 Oak Avenue", "Vendor_Add_Second_Line": "Building C"}', '9876543210', 'TechScience Russia', 'Available', 'Chemistry Lab', 12),
(1000000114, 'Centrifuge', 1923.71, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "101 Pine Road", "Vendor_Add_Second_Line": "Unit 3A"}', '9875432109', 'ScienceInnovate Italy', 'Unavailable', 'Zoology Lab', 9),
(1000000115, 'Hot Plate', 797.86, '{"Vendor_Add_City": "Berlin", "Vendor_Add_Country": "Germany", "Vendor_Add_First_Line": "321 Cedar Avenue", "Vendor_Add_Second_Line": "Suite B"}', '9874321098', 'LabTech Germany', 'Available', 'Neuroscience Lab', 6),
(1000000116, 'PCR Machine', 2679.75, '{"Vendor_Add_City": "London", "Vendor_Add_Country": "UK", "Vendor_Add_First_Line": "654 Birch Lane", "Vendor_Add_Second_Line": "Floor 4"}', '9873210987', 'BioInnovate UK', 'Available', 'Botany Lab', 11),
(1000000117, 'Rotary Evaporator', 2103.81, '{"Vendor_Add_City": "Los Angeles", "Vendor_Add_Country": "USA", "Vendor_Add_First_Line": "789 Maple Drive", "Vendor_Add_Second_Line": "Suite 202"}', '9872109876', 'LabMasters Inc.', 'Unavailable', 'Computer Lab', 8),
(1000000118, 'Desiccator', 1623.17, '{"Vendor_Add_City": "Tokyo", "Vendor_Add_Country": "Japan", "Vendor_Add_First_Line": "876 Willow Court", "Vendor_Add_Second_Line": "Unit 5"}', '9871098765', 'TechLab Japan', 'Available', 'Geology Lab', 10),
(1000000119, 'Microtome', 1945.69, '{"Vendor_Add_City": "Sydney", "Vendor_Add_Country": "Australia", "Vendor_Add_First_Line": "543 Pineapple Avenue", "Vendor_Add_Second_Line": "Floor 3"}', '9870987654', 'BioScience Australia', 'Unavailable', 'Physics Lab', 9),
(1000000120, 'Liquid Handling Robot', 1722.92, '{"Vendor_Add_City": "Toronto", "Vendor_Add_Country": "Canada", "Vendor_Add_First_Line": "210 Oak Street", "Vendor_Add_Second_Line": "Building E"}', '9879876543', 'LabSolutions Canada', 'Available', 'Biology Lab', 7),
(1000000121, 'Autoclave', 1859.21, '{"Vendor_Add_City": "Madrid", "Vendor_Add_Country": "Spain", "Vendor_Add_First_Line": "123 Main Street", "Vendor_Add_Second_Line": "Suite 101"}', '9878765432', 'BioInnovations Spain', 'Available', 'Physics Lab', 11),
(1000000122, 'Water Bath', 1645.14, '{"Vendor_Add_City": "Moscow", "Vendor_Add_Country": "Russia", "Vendor_Add_First_Line": "456 Elm Street", "Vendor_Add_Second_Line": "Floor 2"}', '9877654321', 'LabTools Russia', 'Unavailable', 'Biochemistry Lab', 8),
(1000000123, 'Fume Hood', 2679.17, '{"Vendor_Add_City": "Rome", "Vendor_Add_Country": "Italy", "Vendor_Add_First_Line": "789 Oak Avenue", "Vendor_Add_Second_Line": "Building C"}', '9876543210', 'TechScience Italy', 'Available', 'Chemistry Lab', 12),
(1000000124, 'Centrifuge', 2023.71, '{"Vendor_Add_City": "Berlin", "Vendor_Add_Country": "Germany", "Vendor_Add_First_Line": "101 Pine Road", "Vendor_Add_Second_Line": "Unit 3A"}', '9875432109', 'ScienceInnovate Germany', 'Unavailable', 'Zoology Lab', 9);

UNLOCK TABLES;

set profiling=1; 
select * from inventory where Equipment_Name='Centrifuge';
show profile;

SHOW VARIABLES LIKE 'performance_schema';


--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `lab` (
   `Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  `Room_No` int DEFAULT NULL,
  `Block_No` int DEFAULT NULL,
  `Amount_Allocated` float DEFAULT '0',
  `Working_Hours` int DEFAULT NULL,
  `Capacity` int DEFAULT NULL,
  `Email_ID` VARCHAR(255) CHECK (Email_ID REGEXP'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
  `Contact` bigint DEFAULT NULL,
  PRIMARY KEY (`Lab_Name`),
  UNIQUE KEY `Lab_Name` (`Lab_Name`),
  CONSTRAINT `lab_chk_2` CHECK (((`Contact` >= 1000000000) and (`Contact` < 10000000000)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES ('Anatomy Lab',484,6,4034.13,18,49,'anatomylab@example.com',9467853210),('Biochemistry Lab',101,9,3684.54,8,70,'biochemistrylab@example.com',8129467035),('Biology Lab',313,8,1396.74,13,66,'biologylab@example.com',7341582096),('Botany Lab',493,8,9720.5,18,75,'botanylab@example.com',2196754038),('Chemistry Lab',567,10,8154.55,22,60,'chemistrylab@example.com',5309178642),('Computer Lab',465,4,5388.87,17,25,'computerlab@example.com',8023946715),('Ecology Lab',887,10,1399.11,22,19,'ecologylab@example.com',3698120475),('Engineering Lab',678,9,4050.05,8,85,'engineeringlab@example.com',6407912835),('Genetics Lab',375,10,8596.84,12,40,'geneticslab@example.com',5187249036),('Geology Lab',200,6,6725.97,23,62,'geologylab@example.com',9046812573),('Microbiology Lab',482,6,4602.45,10,17,'microbiologylab@example.com',2761948350),('Neuroscience Lab',909,9,6753.61,23,92,'neurosciencelab@example.com',8105273469),('Physics Lab',645,2,2134.6,10,82,'physicslab@example.com',6291480753),('Psychology Lab',508,4,8302.33,18,35,'psychologylab@example.com',4125968370),('Zoology Lab',493,8,2394.3,15,74,'zoologylab@example.com',9580276134);
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_department`
--

DROP TABLE IF EXISTS `lab_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lab_department` (
  `Dept_Name` ENUM('CE', 'CL', 'CSE', 'EE', 'ME', 'MSE') NOT NULL,
   `Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  PRIMARY KEY (`Dept_Name`,`Lab_Name`),
  KEY `lab_department_fk_1` (`Lab_Name`),
  CONSTRAINT `lab_department_fk_1` FOREIGN KEY (`Lab_Name`) REFERENCES `lab` (`Lab_Name`),
  CONSTRAINT `lab_department_fk_2` FOREIGN KEY (`Dept_Name`) REFERENCES `department` (`Dept_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_department`
--

LOCK TABLES `lab_department` WRITE;
/*!40000 ALTER TABLE `lab_department` DISABLE KEYS */;
INSERT INTO `lab_department` VALUES ('CSE','Anatomy Lab'),('ME','Biochemistry Lab'),('MSE','Biology Lab'),('CL','Botany Lab'),('EE','Chemistry Lab'),('CE','Computer Lab'),('CSE','Ecology Lab'),('ME','Engineering Lab'),('MSE','Genetics Lab'),('CL','Geology Lab'),('EE','Microbiology Lab'),('CE','Neuroscience Lab'),('CSE','Physics Lab'),('ME','Psychology Lab'),('MSE','Zoology Lab');
/*!40000 ALTER TABLE `lab_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_grant`
--

DROP TABLE IF EXISTS `lab_grant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lab_grant` (
   `Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  `ID` int NOT NULL,
  `Donating_Organization` varchar(255) DEFAULT NULL,
  `Amount` float NOT NULL,
  `Receiving_Date` date DEFAULT NULL,
  PRIMARY KEY (`Lab_Name`,`ID`),
  KEY `lab_grant_fk_1` (`ID`),
  CONSTRAINT `lab_grant_fk_1` FOREIGN KEY (`ID`) REFERENCES `grants` (`ID`),
  CONSTRAINT `lab_grant_fk_2` FOREIGN KEY (`Lab_Name`) REFERENCES `lab` (`Lab_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_grant`
--

LOCK TABLES `lab_grant` WRITE;
/*!40000 ALTER TABLE `lab_grant` DISABLE KEYS */;
INSERT INTO `lab_grant` VALUES ('Anatomy Lab',1,'Tyler Lopez',9633.55,'2024-01-14'),('Anatomy Lab',2,'Vanessa King',3111.92,'2024-02-03'),('Biochemistry Lab',3,'Mary Garza',9745.92,'2024-01-17'),('Biochemistry Lab',4,'Michael Salas',2435.62,'2024-01-23'),('Biochemistry Lab',5,'Michelle Mcmillan',1270.68,'2024-01-15'),('Biology Lab',6,'Brian Davis',3402.83,'2024-02-08'),('Biology Lab',7,'Jacqueline Parker',4366.4,'2024-01-20'),('Biology Lab',8,'James Phillips',1121.73,'2024-01-11'),('Biology Lab',9,'Kim Holt',7286.42,'2024-01-01'),('Biology Lab',10,'Matthew Doyle',7320.92,'2024-01-06'),('Biology Lab',11,'Monica Love',2831.02,'2024-02-02'),('Biology Lab',12,'Patricia Graham',5262.97,'2024-01-22'),('Biology Lab',13,'Scott Wilson',4939.11,'2024-01-12'),('Biology Lab',14,'Stacey Robinson',4877.95,'2024-02-01'),('Biology Lab',15,'Stephen Castaneda',2636.63,'2024-02-08'),('Biology Lab',16,'Tanya Woods',1582.83,'2024-01-28'),('Biology Lab',17,'Virginia Gallegos',9637.23,'2024-01-01'),('Biology Lab',18,'William Moore',2400.14,'2024-01-05'),('Botany Lab',19,'Alexandra Gonzalez',6908.48,'2024-01-03'),('Botany Lab',20,'Katherine Anderson',9926.12,'2024-01-23'),('Botany Lab',21,'Matthew Harris',2594.82,'2024-01-26'),('Chemistry Lab',22,'Amy Frye',4353.63,'2024-02-04'),('Chemistry Lab',23,'Brian Hill',7473.81,'2024-01-18'),('Chemistry Lab',24,'Laura Sullivan',5943.39,'2024-02-03'),('Chemistry Lab',25,'Nicole Robertson',8177.25,'2024-01-18'),('Chemistry Lab',26,'Terri Cervantes',2913.52,'2024-01-31'),('Computer Lab',27,'Brian Burke',2703.19,'2024-01-07'),('Computer Lab',28,'Chelsea Lee',1554.87,'2024-02-07'),('Computer Lab',29,'Dustin Miller',3093.36,'2024-02-01'),('Computer Lab',30,'Erika Davis',1302.86,'2024-01-17'),('Computer Lab',31,'Jessica Wright',4951.7,'2024-01-08'),('Computer Lab',32,'Luis Turner',9036.96,'2024-01-12'),('Computer Lab',33,'Thomas Vazquez',7651.21,'2024-01-30'),('Ecology Lab',34,'Charles Foster',3101.24,'2024-01-12'),('Engineering Lab',35,'Anna Velasquez',5032.98,'2024-02-04'),('Engineering Lab',36,'Margaret Meadows',8361.32,'2024-01-30'),('Engineering Lab',37,'Robert Gutierrez',2577.09,'2024-01-05'),('Engineering Lab',38,'Victoria Porter',6813.5,'2024-01-07'),('Genetics Lab',39,'Andrea Bowman',4470.78,'2024-01-25'),('Genetics Lab',40,'Michael Salazar MD',6295.81,'2024-01-29'),('Geology Lab',41,'Aaron Silva',8707.27,'2024-01-10'),('Geology Lab',42,'Vickie Gilmore',1947.48,'2024-02-09'),('Microbiology Lab',43,'Julia Davis',1732.47,'2024-01-22'),('Microbiology Lab',44,'Susan Collins',9521.14,'2024-02-07'),('Physics Lab',45,'David Mccoy',5335.93,'2024-01-09'),('Psychology Lab',46,'Clifford Harper',7944.17,'2024-01-10'),('Psychology Lab',47,'Keith Jensen',7867,'2024-01-29'),('Psychology Lab',48,'Michelle Ramirez',3997.5,'2024-01-01'),('Psychology Lab',49,'Sara Klein',1202.47,'2024-01-20'),('Zoology Lab',50,'Sherri Moss',5646.11,'2024-01-17');
/*!40000 ALTER TABLE `lab_grant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lab_tool`
--

DROP TABLE IF EXISTS `lab_tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lab_tool` (
  `ID` bigint NOT NULL,
   `Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  `Procured_Through` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Lab_Name`),
  KEY `Lab_Name` (`Lab_Name`),
  CONSTRAINT `lab_tool_fk_1` FOREIGN KEY (`Lab_Name`) REFERENCES `lab` (`Lab_Name`),
  CONSTRAINT `lab_tool_fk_2` FOREIGN KEY (`ID`) REFERENCES `inventory` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab_tool`
--

LOCK TABLES `lab_tool` WRITE;
/*!40000 ALTER TABLE `lab_tool` DISABLE KEYS */;
/*!40000 ALTER TABLE `lab_tool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_department`
--

DROP TABLE IF EXISTS `prof_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `prof_department` (
  Dept_Name ENUM('CE', 'CL', 'CSE', 'EE', 'ME', 'MSE') NOT NULL,
  `Employee_ID` bigint NOT NULL,
  PRIMARY KEY (`Dept_Name`,`Employee_ID`),
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `prof_department_fk_1` FOREIGN KEY (`Dept_Name`) REFERENCES `department` (`Dept_Name`),
  CONSTRAINT `prof_department_fk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `professor` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_department`
--

LOCK TABLES `prof_department` WRITE;
/*!40000 ALTER TABLE `prof_department` DISABLE KEYS */;
INSERT INTO `prof_department` VALUES ('CSE',1349232821),('ME',1349232821),('ME',1435102099),('MSE',1939710942),('CL',2369578717),('EE',2480308920),('CE',2521357731),('CSE',2579751326),('ME',2779600805),('MSE',3027615945),('CL',3332992255),('EE',3700862491),('CE',3785297203),('CSE',4306752935),('ME',4338445496),('MSE',4374962421),('CL',4796673686),('EE',4959793923),('CE',5029784251),('CSE',5384361224),('ME',5777131516),('MSE',6203654542),('CL',6792847428),('EE',7762433474),('CE',8141357117),('CSE',8584976266),('ME',9148249187),('MSE',9377655617),('CL',9764122064),('EE',9898608727),('CE',9903778029);
/*!40000 ALTER TABLE `prof_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `professor` (
  `Employee_ID` bigint NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Middle_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Grant_Aid` float DEFAULT '0',
  `Office_Number` varchar(255) DEFAULT NULL,
  `Email_ID` VARCHAR(255) CHECK (Email_ID REGEXP'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
  `Contact` bigint DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `professor_chk_2` CHECK (((`Contact` >= 1000000000) and (`Contact` < 10000000000)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

create index Prof_name on professor(First_Name);


--
-- Dumping data for table `professor`
--




LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1349232821,'James',NULL,'Diaz',64824.1,'090','jamesdiaz@example.com',9467853210),(1435102099,'Mike','Alyssa','Phillips',29451.3,'11859','mikephillips@example.com',8129467035),(1939710942,'James',NULL,'Hoffman',46399.1,'86504','jameshoffman@example.com',7341582096),(2369578717,'Julie',NULL,'Mccarthy',92171.9,'66257','juliemccarthy@example.com',2196754038),(2480308920,'Cory',NULL,'Krueger',46693.2,'59211','corykrueger@example.com',5309178642),(2521357731,'Alyssa','Yolanda','Finley',79874.8,'521','alyssafinley@example.com',8023946715),(2579751326,'Vanessa',NULL,'Galloway',86118.8,'892','vanessagalloway@example.com',3698120475),(2779600805,'Justin','Andrew','Taylor',65382.1,'9074','justintaylor@example.com',6407912835),(3027615945,'Timothy','Karen','Martinez',32298.6,'608','timothymartinez@example.com',5187249036),(3332992255,'Jill',NULL,'Edwards',29609,'00526','jilledwards@example.com',9046812573),(3700862491,'Martin',NULL,'Lester',65172.1,'503','martinlester@example.com',2761948350),(3785297203,'Michael',NULL,'Moreno',24430.4,'55261','michaelmoreno@example.com',8105273469),(4306752935,'Carolyn',NULL,'Adams',11660.2,'740','carolynadams@example.com',6291480753),(4338445496,'Mario',NULL,'Fisher',11625.9,'3858','mariofisher@example.com',4125968370),(4374962421,'Gary',NULL,'Clarke',90555.4,'929','garyclarke@example.com',9580276134),(4796673686,'Terrence',NULL,'Raymond',1408.09,'4730','terrenceraymond@example.com',9467853210),(4959793923,'Keith','Carla','Elliott',20428.1,'7637','keithelliott@example.com',8129467035),(5029784251,'Steven',NULL,'Pierce',84355.8,'134','stevenpierce@example.com',7341582096),(5384361224,'Terrence','Lindsey','Burnett',65051.8,'328','terrenceburnett@example.com',2196754038),(5777131516,'Margaret','Chad','West',84398.6,'0457','margaretwest@example.com',5309178642),(6203654542,'Adam',NULL,'Martinez',64234.3,'269','adammartinez@example.com',8023946715),(6792847428,'David',NULL,'Lambert',9513.38,'1025','davidlambert@example.com',3698120475),(7762433474,'Teresa',NULL,'Sheppard',79141.9,'589','teresasheppard@example.com',6407912835),(8141357117,'Nathaniel',NULL,'Smith',17561.3,'1073','nathanielsmith@example.com',5187249036),(8584976266,'Deborah','Russell','Stuart',7096.52,'48213','deborahstuart@example.com',9046812573),(9148249187,'Nicholas',NULL,'Hawkins',39162.6,'0495','nicholashawkins@example.com',2761948350),(9377655617,'Rachel',NULL,'Rivers',40766.1,'3047','rachelrivers@example.com',8105273469),(9764122064,'William',NULL,'Smith',9578.14,'8503','williamsmith@example.com',6291480753),(9898608727,'Sophia','Tonya','Paul',95483.8,'908','sophiapaul@example.com',4125968370),(9903778029,'Charles',NULL,'Parker',40084.4,'7152','charlesparker@example.com',9580276134);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;


select * from professor where First_Name='Charles';
--
-- Table structure for table `proj_taken`
--

DROP TABLE IF EXISTS `proj_taken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proj_taken` (
  `Employee_ID` bigint NOT NULL,
  `Roll_Number` int NOT NULL,
  `Project_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Roll_Number`,`Project_ID`),
  KEY `Roll_Number` (`Roll_Number`),
  KEY `Project_ID` (`Project_ID`),
  CONSTRAINT `proj_taken_fk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `professor` (`Employee_ID`)  ON UPDATE CASCADE,
  CONSTRAINT `proj_taken_fk_2` FOREIGN KEY (`Roll_Number`) REFERENCES `students` (`Roll_Number`)  ON UPDATE CASCADE,
  CONSTRAINT `proj_taken_fk_3` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`Project_ID`)  ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proj_taken`
--

LOCK TABLES `proj_taken` WRITE;
/*!40000 ALTER TABLE `proj_taken` DISABLE KEYS */;
INSERT INTO `proj_taken` VALUES (1349232821,11637578,'AU 236'),(1349232821,11637578,'CN 303'),(1349232821,12278656,'AU 236'),(1349232821,12278656,'CN 303'),(1435102099,12278656,'CN 303'),(1939710942,14790536,'DM 552'),(2369578717,15216734,'DO 566'),(2480308920,15606155,'EJ 327'),(2521357731,15823784,'FK 202'),(2579751326,16512225,'HQ 555'),(2779600805,16950074,'JM 41'),(3027615945,17901162,'JR 484'),(3332992255,18222390,'KF 592'),(3700862491,18611564,'KN 445'),(3785297203,21258441,'NI 931'),(4306752935,21321656,'OI 577'),(4338445496,21334196,'PC 719'),(4374962421,23465720,'PH 783'),(4796673686,24002624,'SO 27'),(4959793923,24728224,'SU 406'),(5029784251,26088398,'TV 115'),(5384361224,26160676,'UJ 938'),(5777131516,26194497,'VK 320'),(6203654542,26690114,'VT 358'),(6792847428,27362381,'WA 835'),(7762433474,28505383,'WK 713'),(8141357117,29810599,'WK 995'),(8584976266,29952133,'WL 941'),(9148249187,31650436,'XO 471'),(9377655617,32018957,'XO 679'),(9764122064,33237899,'YQ 301'),(9898608727,34072887,'YZ 482'),(9903778029,34098469,'ZE 878');
/*!40000 ALTER TABLE `proj_taken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `project` (
  `Project_ID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Grant_Aid` float DEFAULT '0',
  PRIMARY KEY (`Project_ID`),
  UNIQUE KEY `Project_ID` (`Project_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('AU 236','Rock yourself thing skill resource.',7245.26),('CN 303','Attack Democrat prevent everyone.',72820),('DM 552','Either trip fish hand off against man.',13783.5),('DO 566','Fact happy ever yard fire defense about worker.',44271.6),('EJ 327','Study wait purpose white human.',77899.3),('FK 202','Degree pull power either usually expect.',20511),('HQ 555','Research so know allow while.',19743),('JM 41','Current everybody scientist quality out catch.',64850),('JR 484','See receive bring take.',67184.6),('KF 592','Different true rather produce election skill.',66127.1),('KN 445','Support represent allow exist.',40846.7),('NI 931','Light pass thing strong popular he consider me.',94383.5),('OI 577','Film camera morning name onto.',3534.65),('PC 719','While policy record because sing walk.',65326.9),('PH 783','Clearly mean for.',35296),('SO 27','Bring allow story policy community.',66481.6),('SU 406','Fire contain civil enough.',95241.4),('TV 115','Long together dinner matter attorney onto plant.',79218),('UJ 938','Police light politics expert more upon cut.',72918.8),('VK 320','Grow together indicate finally end environment.',3789.39),('VT 358','Be because still bad three.',17755.5),('WA 835','Environment story seem response site.',90646),('WK 713','Performance learn level purpose Congress rule city.',46522.4),('WK 995','Report environment yard business.',4160.82),('WL 941','East amount board seek compare than reality strong.',48847.4),('XO 471','Study sound follow feel teach hotel whether.',87132.1),('XO 679','Southern various do food I clear live.',92153.4),('YQ 301','Herself wear child act next when.',69774.2),('YZ 482','Power fight notice out meeting.',61879.1),('ZE 878','Growth article yard sound else answer family.',5876.43);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staff` (
  `Employee_ID` bigint NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Middle_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Salary` float DEFAULT NULL,
  `Role` enum('Assistant','Researcher','Technician') DEFAULT NULL,
   `Lab_Name` ENUM('Anatomy Lab', 'Biochemistry Lab', 'Biology Lab', 'Botany Lab', 'Chemistry Lab', 'Computer Lab', 'Ecology Lab', 'Engineering Lab', 'Genetics Lab', 'Geology Lab', 'Microbiology Lab', 'Neuroscience Lab', 'Physics Lab', 'Psychology Lab', 'Zoology Lab') NOT NULL, 
  `Email_ID` VARCHAR(255) CHECK (Email_ID REGEXP'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
  `Contact` bigint DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `staff_chk_2` CHECK (((`Contact` >= 1000000000) and (`Contact` < 10000000000))),
  CONSTRAINT `staff_fk_2` FOREIGN KEY (`Lab_Name`) REFERENCES `lab` (`Lab_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

create index staff_name_idx on staff(First_Name);


--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1090324586,'Antonio','Candice','Fritz',21076.4,'Assistant','Anatomy Lab','antoniofritz@example.com',7513498620),(1175259019,'Larry',NULL,'Clark',48988.8,'Researcher','Biochemistry Lab','larryclark@example.com',2385167904),(1357028218,'Cody',NULL,'Lopez',38466.9,'Assistant','Biology Lab','codylopez@example.com',6975814320),(1396986120,'Jessica',NULL,'Frost',71804.4,'Researcher','Botany Lab','jessicafrost@example.com',4297681053),(2252282535,'Christine','Zachary','Baker',89152.1,'Technician','Chemistry Lab','christinebaker@example.com',5196274308),(2764247410,'Alex','Michael','Bailey',99937.1,'Technician','Computer Lab','alexbailey@example.com',6739051842),(2853892818,'Stephen','Karen','Chase',69513,'Assistant','Ecology Lab','stephenchase@example.com',8156497023),(3170365953,'David',NULL,'Mcgee',21578.4,'Assistant','Engineering Lab','davidmcgee@example.com',9205361784),(3406445670,'Jamie',NULL,'Pierce',86842.4,'Researcher','Genetics Lab','jamiepierce@example.com',4287951360),(3450567856,'Philip',NULL,'Smith',31348.6,'Technician','Geology Lab','philipsmith@example.com',6921480753),(3630159773,'Linda',NULL,'Robinson',22609.8,'Researcher','Microbiology Lab','lindarobinson@example.com',5309618472),(3762979011,'Edwin','John','Howard',25057.7,'Technician','Neuroscience Lab','edwinhoward@example.com',7405829613),(3944593488,'Lori','Susan','Erickson',79620.4,'Assistant','Physics Lab','lorierickson@example.com',8129034765),(3986993428,'Wendy',NULL,'Robbins',71580.8,'Researcher','Psychology Lab','wendyrobbins@example.com',3964872051),(3988871171,'Ethan',NULL,'Velasquez',52002.9,'Researcher','Zoology Lab','ethanvelasquez@example.com',5049286137),(4282973843,'Charles',NULL,'Sullivan',71086.1,'Researcher','Anatomy Lab','charlessullivan@example.com',6804529713),(4549854248,'Shawn','Robert','Dunn',89957.3,'Assistant','Biochemistry Lab','shawndunn@example.com',3289651740),(4689717527,'Sara',NULL,'Davis',21342.6,'Assistant','Biology Lab','saradavis@example.com',7205483169),(4949907660,'Robert','Anna','Conley',33290.6,'Researcher','Botany Lab','robertconley@example.com',5184976230),(4997647942,'Justin','Peter','Anderson',96318.4,'Assistant','Chemistry Lab','justinanderson@example.com',9205481673),(5007077667,'Miguel',NULL,'Willis',74525.5,'Researcher','Computer Lab','miguelwillis@example.com',4637819205),(5152950840,'Bonnie','Shawn','Moore',21762.4,'Assistant','Ecology Lab','bonniemoore@example.com',5291876403),(5347013098,'Peter',NULL,'Fleming',59585.1,'Technician','Engineering Lab','peterfleming@example.com',6129408753),(5633355197,'Kevin','Joann','Delacruz',32613.2,'Assistant','Genetics Lab','kevindelacruz@example.com',8392075164),(5788369594,'Gregory',NULL,'Arroyo',67534.6,'Technician','Geology Lab','gregoryarroyo@example.com',9204863175),(5885455588,'Maria',NULL,'Lee',69550.2,'Technician','Microbiology Lab','marialee@example.com',7405892163),(5906677826,'Renee',NULL,'Roy',31086.6,'Assistant','Neuroscience Lab','reneeroy@example.com',4287153906),(5973489830,'Cassandra',NULL,'Rogers',95889.6,'Technician','Physics Lab','cassandrarogers@example.com',5032879156),(5996936127,'Amanda','Melinda','Pena',21838,'Researcher','Psychology Lab','amandapena@example.com',6724308519),(6310327206,'Vickie','Karen','Heath',61088.9,'Assistant','Zoology Lab','vickieheath@example.com',8392075164),(6384582630,'Ronald',NULL,'Mullins',35882.6,'Technician','Anatomy Lab','ronaldmullins@example.com',9204863175),(6534788396,'Jennifer',NULL,'Nguyen',90618,'Researcher','Biochemistry Lab','jennifernguyen@example.com',7405892163),(6678224530,'Arthur','Benjamin','Solis',72135.4,'Assistant','Biology Lab','arthursolis@example.com',4287153906),(6740036722,'Carrie','Lisa','Young',36937.2,'Assistant','Botany Lab','carrieyoung@example.com',5032879156),(6995308646,'Michael',NULL,'Alexander',38721.5,'Researcher','Chemistry Lab','michaelalexander@example.com',6724308519),(7053229337,'Daniel',NULL,'Henderson',88265.2,'Researcher','Computer Lab','danielhenderson@example.com',8392075164),(7688260504,'Jeffrey','Beverly','Harris',61608.9,'Assistant','Ecology Lab','jeffreyharris@example.com',9204863175),(7899965550,'Alfred','Ashley','Rich',26729.5,'Assistant','Engineering Lab','alfredrich@example.com',7405892163),(8131565968,'Darren','Monica','Wood',86926.5,'Assistant','Genetics Lab','darrenwood@example.com',4287153906),(8312679106,'Valerie',NULL,'Campbell',82089.9,'Technician','Geology Lab','valeriecampbell@example.com',5032879156),(8316560268,'Mark','John','Massey',47994.8,'Assistant','Microbiology Lab','markmassey@example.com',6724308519),(8330369631,'Anthony','Jennifer','Hunt',59386.9,'Assistant','Neuroscience Lab','anthonyhunt@example.com',8392075164),(8609786590,'Mark','Janet','Mack',75635.4,'Researcher','Physics Lab','markmack@example.com',9204863175),(8713928981,'Elizabeth',NULL,'Hudson',64752.8,'Technician','Psychology Lab','elizabethhudson@example.com',7405892163),(8845436757,'Shane',NULL,'Morgan',82182.2,'Assistant','Zoology Lab','shanemorgan@example.com',4287153906),(8998327608,'Daniel',NULL,'Lee',46611.4,'Technician','Anatomy Lab','daniellee@example.com',5032879156),(9027632972,'Heather','Cynthia','Diaz',65745.7,'Researcher','Biochemistry Lab','heatherdiaz@example.com',6724308519),(9692617867,'Christopher','Jared','Moore',82079.7,'Researcher','Biology Lab','christophermoore@example.com',8392075164),(9926702178,'Melissa','Kelli','Ali',49754.2,'Researcher','Botany Lab','melissaali@example.com',9204863175),(9968444979,'Joel','Thomas','Zamora',95749.9,'Researcher','Chemistry Lab','joelzamora@example.com',7405892163);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

select * from staff where First_Name='Melissa';

--
-- Table structure for table `student_enrolled`
--

DROP TABLE IF EXISTS `student_enrolled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student_enrolled` (
  `Course_ID` varchar(255) NOT NULL,
  `Roll_Number` int NOT NULL,
  PRIMARY KEY (`Course_ID`,`Roll_Number`),
  KEY `Roll_Number` (`Roll_Number`),
  CONSTRAINT `student_enrolled_fk_1` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`),
  CONSTRAINT `student_enrolled_fk_2` FOREIGN KEY (`Roll_Number`) REFERENCES `students` (`Roll_Number`)  ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_enrolled`
--

LOCK TABLES `student_enrolled` WRITE;
/*!40000 ALTER TABLE `student_enrolled` DISABLE KEYS */;
INSERT INTO `student_enrolled` VALUES ('AQ264',11637578),('AQ264',12278656),('AY572',12278656),('AY572',14790536),('CT740',14790536),('CT740',15216734),('EB565',15216734),('EB565',15606155),('FG378',15606155),('EB565',15823784),('FG378',15823784),('FN914',15823784),('FG378',16512225),('FN914',16512225),('GB578',16512225),('GB578',16950074),('GE392',16950074),('GB578',17901162),('GE392',17901162),('ID617',17901162),('GE392',18222390),('ID617',18222390),('KM959',18222390),('ID617',18611564),('KM959',18611564),('MQ319',18611564),('KM959',21258441),('MQ319',21258441),('OR177',21258441),('MQ319',21321656),('OR177',21321656),('PJ264',21321656),('OR177',21334196),('PJ264',21334196),('UJ495',21334196),('PJ264',23465720),('UJ495',23465720),('UY580',23465720),('UJ495',24002624),('UY580',24002624),('VH458',24002624),('UY580',24728224),('VH458',24728224),('WV691',24728224),('VH458',26088398),('WV691',26088398),('WV937',26088398),('WV691',26160676),('WV937',26160676),('YW710',26160676),('WV937',26194497),('YW710',26194497),('ZJ857',26194497),('AQ264',26690114),('YW710',26690114),('ZJ857',26690114),('AQ264',27362381),('AY572',27362381),('ZJ857',27362381),('AQ264',28505383),('AY572',28505383),('CT740',28505383),('AY572',29810599),('CT740',29810599),('EB565',29810599),('CT740',29952133),('EB565',29952133),('FG378',29952133),('EB565',31650436),('FG378',31650436),('FN914',31650436),('FG378',32018957),('FN914',32018957),('GB578',32018957),('FN914',33237899),('GB578',33237899),('GE392',33237899),('GB578',34072887),('GE392',34072887),('ID617',34072887),('GE392',34098469),('ID617',34098469),('KM959',34098469),('ID617',34979591),('KM959',34979591),('MQ319',34979591),('KM959',35810390),('MQ319',35810390),('OR177',35810390),('MQ319',38126066),('OR177',38126066),('PJ264',38126066),('OR177',38475227),('PJ264',38475227),('UJ495',38475227),('PJ264',39953828),('UJ495',39953828),('UY580',39953828),('UJ495',41405538),('UY580',41405538),('VH458',41405538),('UY580',41639437),('VH458',41639437),('WV691',41639437),('VH458',42702777),('WV691',42702777),('WV937',42702777),('WV691',43783777),('WV937',43783777),('YW710',43783777),('WV937',43987798),('YW710',43987798),('ZJ857',43987798),('AQ264',44059805),('YW710',44059805),('ZJ857',44059805),('AQ264',44228400),('AY572',44228400),('ZJ857',44228400),('AQ264',46362674),('AY572',46362674),('CT740',46362674),('AY572',46509260),('CT740',46509260),('EB565',46509260),('CT740',46834119),('EB565',46834119),('FG378',46834119),('EB565',48245943),('FG378',48245943),('FN914',48245943),('FG378',48882413),('FN914',48882413),('GB578',48882413),('FN914',50751945),('GB578',50751945),('GE392',50751945),('GB578',51179103),('GE392',51179103),('ID617',51179103),('GE392',51710792),('ID617',51710792),('KM959',51710792),('ID617',52047940),('KM959',52047940),('MQ319',52047940),('KM959',53733286),('MQ319',53733286),('OR177',53733286),('MQ319',54105370),('OR177',54105370),('PJ264',54105370),('OR177',57766449),('PJ264',57766449),('UJ495',57766449),('PJ264',58370044),('UJ495',58370044),('UY580',58370044),('UJ495',58808431),('UY580',58808431),('VH458',58808431),('UY580',59054416),('VH458',59054416),('WV691',59054416),('VH458',59731192),('WV691',59731192),('WV937',59731192),('WV691',59992812),('WV937',59992812),('YW710',59992812),('WV937',63945001),('YW710',63945001),('ZJ857',63945001),('AQ264',70681440),('YW710',70681440),('ZJ857',70681440),('AQ264',72619822),('AY572',72619822),('ZJ857',72619822),('AQ264',72937805),('AY572',72937805),('CT740',72937805),('AY572',73781167),('CT740',73781167),('EB565',73781167),('CT740',73954873),('EB565',73954873),('FG378',73954873),('EB565',75648081),('FG378',75648081),('FN914',75648081),('FG378',75851781),('FN914',75851781),('GB578',75851781),('FN914',77942770),('GB578',77942770),('GE392',77942770),('GB578',78656012),('GE392',78656012),('ID617',78656012),('GE392',78999542),('ID617',78999542),('KM959',78999542),('ID617',79348439),('KM959',79348439),('MQ319',79348439),('KM959',79770549),('MQ319',79770549),('OR177',79770549),('MQ319',80594861),('OR177',80594861),('PJ264',80594861),('OR177',83469044),('PJ264',83469044),('UJ495',83469044),('PJ264',83620032),('UJ495',83620032),('UY580',83620032),('UJ495',84747343),('UY580',84747343),('VH458',84747343),('UY580',85192355),('VH458',85192355),('WV691',85192355),('VH458',87526026),('WV691',87526026),('WV937',87526026),('WV691',87529682),('WV937',87529682),('YW710',87529682),('WV937',89597491),('YW710',89597491),('ZJ857',89597491),('AQ264',90585089),('YW710',90585089),('ZJ857',90585089),('AQ264',91860735),('AY572',91860735),('ZJ857',91860735),('AQ264',92309689),('AY572',92309689),('CT740',92309689),('AY572',92656513),('CT740',92656513),('EB565',92656513),('CT740',93049851),('EB565',93049851),('FG378',93049851),('EB565',93677515),('FG378',93677515),('FN914',93677515),('FG378',95804242),('FN914',95804242),('GB578',95804242),('FN914',96226921),('GB578',96226921),('GE392',96226921),('GB578',96290942),('GE392',96290942),('ID617',96290942),('GE392',96640002),('ID617',96640002),('KM959',96640002),('ID617',97274756),('KM959',97274756),('MQ319',97274756),('KM959',97369711),('MQ319',97369711),('OR177',97369711),('MQ319',97704784),('OR177',97704784),('PJ264',97704784),('OR177',99400519),('PJ264',99400519),('UJ495',99400519),('PJ264',99468293),('UJ495',99468293),('UY580',99468293),('UJ495',99823131),('UY580',99823131),('VH458',99823131),('UY580',99849202),('VH458',99849202);
/*!40000 ALTER TABLE `student_enrolled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students` (
  `Roll_Number` int NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Middle_Name` varchar(255) DEFAULT NULL,
  `Last_Name` varchar(255) DEFAULT NULL,
  `Batch` int DEFAULT NULL,
  `Degree` ENUM('MTech','BTech','PhD') NOT NULL,
  `Amount_Due` float DEFAULT '0',
  `Purpose` varchar(255) DEFAULT NULL,
  `Dept_Name` ENUM('CE', 'CL', 'CSE', 'EE', 'ME', 'MSE') NOT NULL,
  `Email_ID` VARCHAR(255) CHECK (Email_ID REGEXP'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
  `Contact` bigint DEFAULT NULL,
  PRIMARY KEY (`Roll_Number`),
  UNIQUE KEY `Roll_Number` (`Roll_Number`),
  CONSTRAINT `students_chk_2` CHECK (((`Contact` >= 1000000000) and (`Contact` < 10000000000))),
  CONSTRAINT `students_fk_2`FOREIGN KEY (`Dept_Name`) REFERENCES `department` (`Dept_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

create index student_name on students(Roll_Number);



--
-- Dumping data for table `students`
--



LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (11637578,'Anthony',NULL,'Marquez',2017,'BTech',0,'Investigation','CSE','anthony.marquez@example.com',1234567890),(12278656,'Angela','Daniel','Martin',2019,'BTech',0,'Documentation','ME','angela.martin@example.com',1234567891),(14790536,'Daniel','Richard','Scott',2021,'MTech',0,'Calibration','MSE','daniel.scott@example.com',1234567892),(15216734,'John','David','Ramirez',2014,'MTech',0,'Examination','CL','john.ramirez@example.com',1234567893),(15606155,'Roy','Michael','Brown',2018,'BTech',0,'Survey','EE','roy.brown@example.com',1234567894),(15823784,'Dominique',NULL,'Torres',2016,'PhD',0,'Experiment','CE','dominique.torres@example.com',1234567895),(16512225,'Sarah',NULL,'Rivera',2016,'BTech',0,'Examination','CSE','sarah.rivera@example.com',1234567896),(16950074,'Daniel',NULL,'Goodman',2012,'PhD',0,'Calibration','ME','daniel.goodman@example.com',1234567897),(17901162,'Erin',NULL,'Hernandez',2019,'PhD',0,'Investigation','MSE','erin.hernandez@example.com',1234567898),(18222390,'Michael',NULL,'Williams',2013,'MTech',0,'Development','CL','michael.williams@example.com',1234567899),(18611564,'Douglas','Tyler','Miles',2010,'BTech',0,'Testing','EE','douglas.miles@example.com',1234567900),(21258441,'Robert',NULL,'Lam',2022,'MTech',0,'Audit','CE','robert.lam@example.com',1234567901),(21321656,'Jorge','Shawn','Sloan',2012,'BTech',0,'Examination','CSE','jorge.sloan@example.com',1234567902),(21334196,'Kathy','Jeremy','Bailey',2018,'BTech',0,'Inspection','ME','kathy.bailey@example.com',1234567903),(23465720,'Sarah','Heather','Jones',2009,'PhD',0,'Analysis','MSE','sarah.jones@example.com',1234567904),(24002624,'William',NULL,'Peters',2013,'MTech',0,'Demonstration','CL','william.peters@example.com',1234567905),(24728224,'Gabriel','Ashley','Morgan',2011,'PhD',0,'Simulation','EE','gabriel.morgan@example.com',1234567906),(26088398,'Darren','Kevin','Maxwell',2017,'PhD',0,'Testing','CE','darren.maxwell@example.com',1234567907),(26160676,'Elizabeth',NULL,'Marshall',2017,'BTech',0,'Development','CSE','elizabeth.marshall@example.com',1234567908),(26194497,'Kevin','Lindsey','Cole',2021,'BTech',0,'Simulation','ME','kevin.cole@example.com',1234567909),(26690114,'Benjamin','Stephanie','Reyes',2013,'BTech',0,'Validation','MSE','benjamin.reyes@example.com',1234567910),(27362381,'Brandon','Susan','Brown',2011,'PhD',0,'Observation','CL','brandon.brown@example.com',1234567911),(28505383,'Lindsey',NULL,'Walker',2013,'BTech',0,'Production','EE','lindsey.walker@example.com',1234567912),(29810599,'Anthony',NULL,'Kemp',2018,'BTech',0,'Presentation','CE','anthony.kemp@example.com',1234567913),(29952133,'Christopher',NULL,'Mann',2023,'MTech',0,'Training','CSE','christopher.mann@example.com',1234567914),(31650436,'Debbie','Christopher','Booth',2009,'MTech',0,'Simulation','ME','debbie.booth@example.com',1234567915),(32018957,'Anthony','Jerry','Smith',2017,'BTech',0,'Monitoring','MSE','anthony.smith@example.com',1234567916),(33237899,'Diana','Christy','Jefferson',2014,'BTech',0,'Production','CL','diana.jefferson@example.com',1234567917),(34072887,'Jorge','Kurt','Martinez',2015,'PhD',0,'Research','EE','jorge.martinez@example.com',1234567918),(34098469,'Anna',NULL,'Morgan',2019,'MTech',0,'Education','CE','anna.morgan@example.com',1234567919),(34114128,'Nicole','Cory','Wilkinson',2021,'MTech',0,'Demonstration','CSE','nicole.wilkinson@example.com',1234567920),(34118235,'Troy','David','Fox',2015,'PhD',0,'Presentation','ME','troy.fox@example.com',1234567921),(34979591,'Micheal','Courtney','Velez',2013,'MTech',0,'Examination','MSE','micheal.velez@example.com',1234567922),(35810390,'Christopher','John','Kennedy',2008,'BTech',0,'Field Work','CL','christopher.kennedy@example.com',1234567923),(38126066,'Christine',NULL,'Clark',2020,'MTech',0,'Audit','EE','christine.clark@example.com',1234567924),(38475227,'Joseph','Kevin','Thornton',2020,'PhD',0,'Sampling','CE','joseph.thornton@example.com',1234567925),(39953828,'Richard','Jessica','Daniels',2012,'MTech',0,'Sampling','CSE','richard.daniels@example.com',1234567926),(41405538,'Laura',NULL,'Hughes',2014,'BTech',0,'Survey','ME','laura.hughes@example.com',1234567927),(41639437,'Terri',NULL,'Wong',2010,'BTech',0,'Survey','MSE','terri.wong@example.com',1234567928),(42702777,'Alexis','Gregory','Jones',2021,'BTech',0,'Documentation','CL','alexis.jones@example.com',1234567929),(43783777,'Russell',NULL,'Mccormick',2010,'PhD',0,'Evaluation','EE','russell.mccormick@example.com',1234567930),(43987798,'Kristin','Jennifer','Dodson',2011,'PhD',0,'Presentation','CE','kristin.dodson@example.com',1234567931),(44059805,'Robert',NULL,'Park',2012,'MTech',0,'Investigation','CSE','robert.park@example.com',1234567932),(44228400,'Ethan',NULL,'Smith',2009,'BTech',0,'Survey','ME','ethan.smith@example.com',1234567933),(46362674,'Deanna',NULL,'Williams',2022,'MTech',0,'Development','MSE','deanna.williams@example.com',1234567934),(46509260,'Jacob',NULL,'Diaz',2016,'PhD',0,'Quality Control','CL','jacob.diaz@example.com',1234567935),(46834119,'Cheyenne',NULL,'Osborn',2016,'PhD',0,'Calibration','EE','cheyenne.osborn@example.com',1234567936),(48245943,'Erica',NULL,'Harris',2023,'PhD',0,'Presentation','CE','erica.harris@example.com',1234567937),(48882413,'Breanna','George','Brown',2015,'MTech',0,'Experiment','CSE','breanna.brown@example.com',1234567938),(50751945,'Robert',NULL,'Rodriguez',2017,'MTech',0,'Training','ME','robert.rodriguez@example.com',1234567939),(51179103,'Timothy','Paul','Long',2022,'PhD',0,'Presentation','MSE','timothy.long@example.com',1234567940),(51710792,'Melissa',NULL,'Cooper',2012,'PhD',0,'Prototype','CL','melissa.cooper@example.com',1234567941),(52047940,'David',NULL,'Lopez',2010,'MTech',0,'Documentation','EE','david.lopez@example.com',1234567942),(52199074,'Richard','Calvin','Smith',2011,'BTech',0,'Sampling','CE','richard.smith@example.com',1234567943),(53733286,'Kaitlyn','Kaitlyn','Andrade',2011,'PhD',0,'Calibration','CSE','kaitlyn.andrade@example.com',1234567944),(54105370,'Matthew',NULL,'Cooper',2011,'BTech',0,'Training','ME','matthew.cooper@example.com',1234567945),(57766449,'Jeffery','Kevin','Parrish',2022,'BTech',0,'Survey','MSE','jeffery.parrish@example.com',1234567946),(58370044,'Karen','Laura','Stewart',2009,'MTech',0,'Documentation','CL','karen.stewart@example.com',1234567947),(58808431,'Michael','Crystal','May',2019,'MTech',0,'Sampling','EE','michael.may@example.com',1234567948),(59054416,'Sara','Anthony','Vasquez',2019,'MTech',0,'Calibration','CE','sara.vasquez@example.com',1234567949),(59731192,'Nathan',NULL,'Morris',2012,'PhD',0,'Testing','CSE','nathan.morris@example.com',1234567950),(59992812,'Jeremy',NULL,'Glover',2022,'MTech',0,'Quality Control','ME','jeremy.glover@example.com',1234567951),(63945001,'Jacob','Melissa','Fletcher',2010,'MTech',0,'Monitoring','MSE','jacob.fletcher@example.com',1234567952),(70681440,'Jessica','Jennifer','Ford',2012,'MTech',0,'Education','CL','jessica.ford@example.com',1234567953),(72619822,'Joseph','Caitlin','Washington',2009,'PhD',0,'Documentation','EE','joseph.washington@example.com',1234567954),(72937805,'Jeffery',NULL,'Griffin',2015,'PhD',0,'Sampling','CE','jeffery.griffin@example.com',1234567955),(73781167,'Steven',NULL,'Maynard',2009,'MTech',0,'Field Work','CSE','steven.maynard@example.com',1234567956),(73954873,'Laura',NULL,'Wagner',2022,'BTech',0,'Presentation','ME','laura.wagner@example.com',1234567957),(75648081,'Alexis',NULL,'Brown',2021,'MTech',0,'Development','MSE','alexis.brown@example.com',1234567958),(75851781,'James',NULL,'Rodriguez',2011,'PhD',0,'Education','EE','james.rodriguez@example.com',1234567959),(77942770,'Matthew',NULL,'Wilson',2010,'PhD',0,'Development','CE','matthew.wilson@example.com',1234567960),(78656012,'Marvin','Destiny','Shepherd',2022,'MTech',0,'Training','CSE','marvin.shepherd@example.com',1234567961),(78999542,'Patricia','William','May',2022,'MTech',0,'Inspection','ME','patricia.may@example.com',1234567962),(79348439,'Jacqueline','Andre','Hudson',2009,'BTech',0,'Survey','MSE','jacqueline.hudson@example.com',1234567963),(79770549,'Jennifer',NULL,'Sullivan',2020,'PhD',0,'Analysis','CL','jennifer.sullivan@example.com',1234567964),(80594861,'Johnny','Phillip','Dudley',2021,'BTech',0,'Field Work','EE','johnny.dudley@example.com',1234567965),(83469044,'Brandon','Jose','Stevenson',2023,'MTech',0,'Audit','CE','brandon.stevenson@example.com',1234567966),(83620032,'John','Jacob','Jackson',2018,'PhD',0,'Research','CSE','john.jackson@example.com',1234567967),(84747343,'Jasmin',NULL,'Bray',2012,'PhD',0,'Evaluation','ME','jasmin.bray@example.com',1234567968),(85192355,'Kendra',NULL,'Huffman',2014,'BTech',0,'Validation','MSE','kendra.huffman@example.com',1234567969),(87526026,'Steven',NULL,'Kline',2010,'BTech',0,'Documentation','CL','steven.kline@example.com',1234567970),(87529682,'Matthew',NULL,'Duran',2018,'PhD',0,'Validation','EE','matthew.duran@example.com',1234567971),(89597491,'Cynthia',NULL,'Davis',2022,'BTech',0,'Production','CE','cynthia.davis@example.com',1234567972),(90585089,'Ryan',NULL,'Washington',2022,'MTech',0,'Presentation','CSE','ryan.washington@example.com',1234567973),(91860735,'Todd',NULL,'Mendoza',2013,'MTech',0,'Survey','ME','todd.mendoza@example.com',1234567974),(92309689,'Michele','Robert','Owens',2009,'PhD',0,'Field Work','MSE','michele.owens@example.com',1234567975),(92656513,'Emily',NULL,'Martin',2017,'MTech',0,'Simulation','CL','emily.martin@example.com',1234567976),(93049851,'Rebecca','Michelle','Ballard',2021,'PhD',0,'Experiment','EE','rebecca.ballard@example.com',1234567977),(93677515,'Gary',NULL,'Vega',2013,'BTech',0,'Review','CE','gary.vega@example.com',1234567978),(95804242,'Laura','William','Perez',2018,'PhD',0,'Validation','CSE','laura.perez@example.com',1234567979),(96226921,'Johnny',NULL,'Kent',2013,'BTech',0,'Observation','ME','johnny.kent@example.com',1234567980),(96290942,'Thomas','Mark','Chavez',2022,'MTech',0,'Prototype','MSE','thomas.chavez@example.com',1234567981),(96640002,'Megan','Kimberly','Brennan',2011,'BTech',0,'Documentation','CL','megan.brennan@example.com',1234567982),(97274756,'John',NULL,'Hubbard',2022,'MTech',0,'Presentation','EE','john.hubbard@example.com',1234567983),(97369711,'Matthew','Michelle','Thomas',2015,'MTech',0,'Testing','CE','matthew.thomas@example.com',1234567984),(97704784,'Laura',NULL,'Ross',2011,'BTech',0,'Audit','CSE','laura.ross@example.com',1234567985),(99400519,'Jason','James','Frost',2023,'PhD',0,'Inspection','ME','jason.frost@example.com',1234567986),(99468293,'Meagan','Brittany','Cortez',2012,'BTech',0,'Documentation','MSE','meagan.cortez@example.com',1234567987),(99823131,'Sandra','Daniel','Mejia',2012,'MTech',0,'Training','CL','sandra.mejia@example.com',1234567988),(99849202,'Brenda','Elijah','Kelly',2009,'BTech',0,'Training','EE','brenda.kelly@example.com',1234567989);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;


INSERT INTO `students` VALUES (11637579,'Ameya',NULL,'Tajne',2021,'BTech',0,'Investigation','CSE','anthony.marquezgmail.com',1234567890);




--
-- Table structure for table `time_slot`
--

select * from students where Contact=2;

DROP TABLE IF EXISTS `time_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `time_slot` (
  `Time_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`Time_ID`),
  UNIQUE KEY `Time_ID` (`Time_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_slot`
--

LOCK TABLES `time_slot` WRITE;
/*!40000 ALTER TABLE `time_slot` DISABLE KEYS */;
INSERT INTO `time_slot` VALUES ('A1'),('A2'),('A3'),('A4'),('A5'),('A6'),('B1'),('B2'),('B3'),('B4'),('B5'),('B6'),('C1'),('C2'),('C3'),('C4'),('C5'),('C6'),('D1'),('D2'),('D3'),('D4'),('D5'),('D6'),('E1'),('E2'),('E3'),('E4'),('E5'),('E6');
/*!40000 ALTER TABLE `time_slot` ENABLE KEYS */;
UNLOCK TABLES;


CREATE TABLE CSE as (select * from students where Dept_Name = 'CSE');
CREATE TABLE EE as (select * from students where Dept_Name = 'EE');
CREATE TABLE ME as (select * from students where Dept_Name = 'ME');
CREATE TABLE CE as (select * from students where Dept_Name = 'CE');
CREATE TABLE CL as (select * from students where Dept_Name = 'CL');
CREATE TABLE MSE as (select * from students where Dept_Name = 'MSE');


select p.salary from professor p
where p.salary not in
(select p2.salary from professor p2 cross join (select * from professor) d where p2.salary < d.salary );


--
-- Dumping events for database 'db_assignment4'
--

--
-- Dumping routines for database 'db_assignment4'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-13  1:47:56
