-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) NOT NULL,
  `phone` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (7,'1991/12/09','sample phone','sample email');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'referer inc','54322342342');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edmundsvisit`
--

DROP TABLE IF EXISTS `edmundsvisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `edmundsvisit` (
  `Subject` varchar(50) NOT NULL,
  `LastVisit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edmundsvisit`
--

LOCK TABLES `edmundsvisit` WRITE;
/*!40000 ALTER TABLE `edmundsvisit` DISABLE KEYS */;
/*!40000 ALTER TABLE `edmundsvisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `make` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `VpicID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (1,'Acura',475),(2,'Alfa Romeo',493),(3,'Audi',582),(4,'BMW',452),(5,'BYD Auto',1104),(6,'Cadillac',469),(7,'Chevrolet',467),(8,'Chrysler',477),(9,'Daewoo',1077),(10,'Daihatsu',847),(11,'Datsun',5657),(12,'Dodge',476),(13,'Fiat',492),(14,'Ford',460),(15,'GMC',472),(16,'Geely',527),(17,'Genesis',5083),(18,'Honda',474),(19,'Hummer',951),(20,'Hyundai',498),(21,'Infiniti',480),(22,'Isuzu',542),(23,'Jaguar',442),(24,'Jeep',483),(25,'Kia',499),(26,'Land Rover',444),(27,'Lexus',515),(28,'Lincoln',464),(29,'MINI',456),(30,'Mazda',473),(31,'Mercedes-Benz',449),(32,'Mercury',465),(33,'Mitsubishi',481),(34,'Nissan',478),(35,'Oldsmobile',4162),(36,'Opel',471),(37,'Peugeot',5554),(38,'Plymouth',2409),(39,'Pontiac',536),(40,'Porsche',584),(41,'SAAB',572),(42,'Subaru',523),(43,'Suzuki',509),(44,'Toyota',448),(45,'Volkswagen',482),(46,'Volvo',485);
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure`
--

DROP TABLE IF EXISTS `measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `measure` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `TrimName` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure`
--

LOCK TABLES `measure` WRITE;
/*!40000 ALTER TABLE `measure` DISABLE KEYS */;
/*!40000 ALTER TABLE `measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `TrimName` varchar(50) DEFAULT NULL,
  `MakeID` int(11) NOT NULL,
  `VpicID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `_idx1` (`MakeID`),
  CONSTRAINT `Model_MakeID` FOREIGN KEY (`MakeID`) REFERENCES `make` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (1,'Opel Astra','Astra',37,123),(2,'BMW X5','X5',4,453);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelyear`
--

DROP TABLE IF EXISTS `modelyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modelyear` (
  `ID` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `CarDetailsJSON` varchar(5000) DEFAULT NULL,
  `ScheduleJSON` varchar(5000) DEFAULT NULL,
  `ModelID` int(11) NOT NULL,
  `VpicID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `model_idx` (`ModelID`),
  CONSTRAINT `ModelYear_ModelID` FOREIGN KEY (`ModelID`) REFERENCES `model` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelyear`
--

LOCK TABLES `modelyear` WRITE;
/*!40000 ALTER TABLE `modelyear` DISABLE KEYS */;
INSERT INTO `modelyear` VALUES (1,2014,NULL,NULL,1,123),(2,2018,NULL,NULL,2,453);
/*!40000 ALTER TABLE `modelyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `ID` int(11) NOT NULL,
  `OrderStatusID` int(11) NOT NULL,
  `Price` double NOT NULL,
  `CreationDate` varchar(100) NOT NULL,
  `ChangeDate` varchar(100) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `ModelYearId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dv_idx2` (`OrderStatusID`),
  KEY `Order_CustomerID_idx` (`CustomerID`),
  KEY `ModelYear_idx` (`ModelYearId`),
  CONSTRAINT `ModelYear` FOREIGN KEY (`ModelYearId`) REFERENCES `modelyear` (`id`),
  CONSTRAINT `Order_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`id`),
  CONSTRAINT `Order_OrderStatusID` FOREIGN KEY (`OrderStatusID`) REFERENCES `orderstatus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,3,76656,'2005','1993',2,1),(2,1,5464,'2012','2002',2,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderpart`
--

DROP TABLE IF EXISTS `orderpart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderpart` (
  `ID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `PartID` int(11) NOT NULL,
  `OrderPartStatusID` int(11) NOT NULL,
  `PartProviderID` int(11) NOT NULL,
  `PurchasePrice` float NOT NULL,
  `Price` float NOT NULL,
  `Count` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `hg_idx5` (`OrderID`),
  KEY `dv_idx6` (`OrderPartStatusID`),
  KEY `fb_idx7` (`PartID`),
  KEY `fb_idx8` (`PartProviderID`),
  CONSTRAINT `OrderPart_OrderID` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`),
  CONSTRAINT `OrderPart_OrderPartStatusID` FOREIGN KEY (`OrderPartStatusID`) REFERENCES `orderpartstatus` (`id`),
  CONSTRAINT `OrderPart_PartID` FOREIGN KEY (`PartID`) REFERENCES `part` (`id`),
  CONSTRAINT `OrderPart_PartProviderID` FOREIGN KEY (`PartProviderID`) REFERENCES `partprovider` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderpart`
--

LOCK TABLES `orderpart` WRITE;
/*!40000 ALTER TABLE `orderpart` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderpart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderpartstatus`
--

DROP TABLE IF EXISTS `orderpartstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderpartstatus` (
  `ID` int(11) NOT NULL,
  `myKey` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderpartstatus`
--

LOCK TABLES `orderpartstatus` WRITE;
/*!40000 ALTER TABLE `orderpartstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderpartstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderstatus` (
  `ID` int(11) NOT NULL,
  `myKey` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
INSERT INTO `orderstatus` VALUES (1,'waitpay','неопачен'),(2,'paid','оплачен'),(3,'closed','закрыт');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `part` (
  `ID` int(11) NOT NULL,
  `Quantity` float NOT NULL,
  `MeasureID` int(11) NOT NULL,
  `MakeID` int(11) NOT NULL,
  `PartTypeID` int(11) NOT NULL,
  `SerialNumber` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `dv_idx3` (`MakeID`),
  KEY `fb_idx3` (`MeasureID`),
  KEY `fb_idx4` (`PartTypeID`),
  CONSTRAINT `Part_MakeID` FOREIGN KEY (`MakeID`) REFERENCES `make` (`id`),
  CONSTRAINT `Part_MeasureID` FOREIGN KEY (`MeasureID`) REFERENCES `measure` (`id`),
  CONSTRAINT `Part_PartTypeID` FOREIGN KEY (`PartTypeID`) REFERENCES `parttype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partmodelyear`
--

DROP TABLE IF EXISTS `partmodelyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `partmodelyear` (
  `ID` int(11) NOT NULL,
  `ModelYearID` int(11) NOT NULL,
  `PartTypeID` int(11) NOT NULL,
  `MeasureID` int(11) NOT NULL,
  `OEMSerialNumber` varchar(50) NOT NULL,
  `Labour` float NOT NULL,
  `Quantity` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `dv_idx11` (`MeasureID`),
  KEY `dv_idx12` (`ModelYearID`),
  KEY `dv_idx13` (`PartTypeID`),
  CONSTRAINT `PartModelYear_MeasureID` FOREIGN KEY (`MeasureID`) REFERENCES `measure` (`id`),
  CONSTRAINT `PartModelYear_ModelYearID` FOREIGN KEY (`ModelYearID`) REFERENCES `modelyear` (`id`),
  CONSTRAINT `PartModelYear_PartTypeID` FOREIGN KEY (`PartTypeID`) REFERENCES `parttype` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partmodelyear`
--

LOCK TABLES `partmodelyear` WRITE;
/*!40000 ALTER TABLE `partmodelyear` DISABLE KEYS */;
/*!40000 ALTER TABLE `partmodelyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partprovider`
--

DROP TABLE IF EXISTS `partprovider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `partprovider` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `URL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partprovider`
--

LOCK TABLES `partprovider` WRITE;
/*!40000 ALTER TABLE `partprovider` DISABLE KEYS */;
/*!40000 ALTER TABLE `partprovider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parttype`
--

DROP TABLE IF EXISTS `parttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `parttype` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parttype`
--

LOCK TABLES `parttype` WRITE;
/*!40000 ALTER TABLE `parttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `parttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replaceability`
--

DROP TABLE IF EXISTS `replaceability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `replaceability` (
  `ID` int(11) NOT NULL,
  `PartID` int(11) NOT NULL,
  `PartModelYearID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `dv_idx14` (`PartID`),
  KEY `dv_idx15` (`PartModelYearID`),
  CONSTRAINT `Replaceability_PartID` FOREIGN KEY (`PartID`) REFERENCES `part` (`id`),
  CONSTRAINT `Replaceability_PartModelYearID` FOREIGN KEY (`PartModelYearID`) REFERENCES `partmodelyear` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replaceability`
--

LOCK TABLES `replaceability` WRITE;
/*!40000 ALTER TABLE `replaceability` DISABLE KEYS */;
/*!40000 ALTER TABLE `replaceability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedule` (
  `ID` int(11) NOT NULL,
  `ModelYearID` int(11) NOT NULL,
  `PartModelYearID` int(11) NOT NULL,
  `Mileage` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `dv_idx16` (`ModelYearID`),
  KEY `dv_idx17` (`PartModelYearID`),
  CONSTRAINT `Schedule_ModelYearID` FOREIGN KEY (`ModelYearID`) REFERENCES `modelyear` (`id`),
  CONSTRAINT `Schedule_PartModelYearID` FOREIGN KEY (`PartModelYearID`) REFERENCES `partmodelyear` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulerequest`
--

DROP TABLE IF EXISTS `schedulerequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `schedulerequest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(50) NOT NULL,
  `VINID` int(11) NOT NULL,
  `Mileage` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `dv_idx19` (`VINID`),
  CONSTRAINT `ScheduleRequest_VINID` FOREIGN KEY (`VINID`) REFERENCES `vin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulerequest`
--

LOCK TABLES `schedulerequest` WRITE;
/*!40000 ALTER TABLE `schedulerequest` DISABLE KEYS */;
INSERT INTO `schedulerequest` VALUES (1,'1234445',1,12233,'13:00 - 13:45'),(2,'4466633',2,45333,'21:15 - 22:30'),(5,'',1,0,'13:00 - 13:45');
/*!40000 ALTER TABLE `schedulerequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `modelId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `modelId11_idx` (`modelId`),
  CONSTRAINT `modelId11` FOREIGN KEY (`modelId`) REFERENCES `model` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Замена масла',1),(2,'Замена свечей',2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spare`
--

DROP TABLE IF EXISTS `spare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `spare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `costOrigin` int(11) DEFAULT NULL,
  `costReplacement` int(11) DEFAULT NULL,
  `replacementProduction` varchar(1000) DEFAULT NULL,
  `originDuration` int(11) DEFAULT NULL,
  `replacementDuration` int(11) DEFAULT NULL,
  `serviceId` int(11) NOT NULL,
  `applicationId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serviceId_idx` (`serviceId`),
  KEY `applicationId_idx` (`applicationId`),
  KEY `orderId_idx` (`orderId`),
  CONSTRAINT `applicationId` FOREIGN KEY (`applicationId`) REFERENCES `application` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderId` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`),
  CONSTRAINT `serviceId` FOREIGN KEY (`serviceId`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spare`
--

LOCK TABLES `spare` WRITE;
/*!40000 ALTER TABLE `spare` DISABLE KEYS */;
INSERT INTO `spare` VALUES (10,'Свечи',1000,600,'China',2,6,1,7,2),(11,'Ремень ГРМ',2300,1200,'Turkey',1,12,2,7,2);
/*!40000 ALTER TABLE `spare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Sasha','+1-202-555-0186','E10ADC3949BA59ABBE56E057F20F883E','user'),(3,'Gendy','202-555-0138','E10ADC3949BA59ABBE56E057F20F883E','user'),(4,'Slava','202-555-0156','E10ADC3949BA59ABBE56E057F20F883E','user'),(5,'Johna','202-555-0143','E10ADC3949BA59ABBE56E057F20F883E','user'),(6,'admin','3 4 544 5 54','21232F297A57A5A743894A0E4A801FC3','Admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vin`
--

DROP TABLE IF EXISTS `vin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vin` (
  `ID` int(11) NOT NULL,
  `VIN` varchar(20) NOT NULL,
  `ModelYearID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `dv_idx18` (`ModelYearID`),
  CONSTRAINT `VIN_ModelYearID` FOREIGN KEY (`ModelYearID`) REFERENCES `modelyear` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vin`
--

LOCK TABLES `vin` WRITE;
/*!40000 ALTER TABLE `vin` DISABLE KEYS */;
INSERT INTO `vin` VALUES (1,'45ПА344777',1),(2,'87УК223889',2);
/*!40000 ALTER TABLE `vin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'mydb'
--

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-25 22:00:05
