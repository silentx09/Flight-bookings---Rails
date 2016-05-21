-- MySQL dump 10.13  Distrib 5.7.11, for osx10.11 (x86_64)
--
-- Host: localhost    Database: travel_development
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airline` varchar(255) DEFAULT NULL,
  `picture` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (1,'Jet','https://upload.wikimedia.org/wikipedia/en/thumb/e/e4/Jet_Airways_Logo.svg/1280px-Jet_Airways_Logo.svg.png','2016-04-25 08:13:23','2016-04-25 08:13:23'),(2,'Indigo','https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/IndiGo_Airlines_logo.svg/2000px-IndiGo_Airlines_logo.svg.png','2016-04-25 08:14:56','2016-04-25 08:14:56'),(3,'Go Air','https://upload.wikimedia.org/wikipedia/en/8/86/GoAir_Logo.png','2016-04-25 08:16:04','2016-04-25 08:16:04'),(4,'Spice Jet','https://upload.wikimedia.org/wikipedia/en/thumb/9/9c/SpiceJet_logo.svg/1280px-SpiceJet_logo.svg.png','2016-04-25 08:17:20','2016-04-25 08:17:20'),(5,'Air Asia','http://vignette3.wikia.nocookie.net/logopedia/images/f/fa/AirAsia.png/revision/latest?cb=20121214105624','2016-04-25 08:17:56','2016-04-25 08:17:56'),(6,'Air India','https://upload.wikimedia.org/wikipedia/en/thumb/e/e3/Air_India_Logo.svg/1024px-Air_India_Logo.svg.png','2016-04-25 08:20:19','2016-04-25 08:20:19');
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `pnr` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `booking_status` varchar(255) DEFAULT NULL,
  `nominee_mobile` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (4,'Piyush Santwani','psantwani@gmail.com','9029537456',2,'ciWCX','₹ 4000','Booked','9226866454','2016-04-25 12:44:26','2016-04-25 12:44:26'),(5,'Shashank Vaibhav','undertaker123@gmail.com','3452323423',2,'KQjI4','₹ 4000','Booked','4523423443','2016-04-25 12:52:00','2016-04-25 17:02:47'),(7,'Sanchit Jain','sanchitjain@gmail.com','9133408343',2,'mEbTm','₹ 4000','Booked','82340234923','2016-04-25 17:27:01','2016-04-25 17:27:01'),(8,'Dheeraj Prajapati','dprajapati@gmail.com','9045345321',2,'zrDRf','₹ 4000','Booked','8924234233','2016-04-25 17:39:05','2016-04-25 17:39:05'),(9,'Geetika Jain','geetika.jain@gmail.com','932843923',2,'DUOMw','₹ 4000','Booked','7834234193','2016-04-25 17:39:54','2016-04-25 17:39:54'),(10,'Dheeraj Prajapati','dp@gmail.com','924242342454',5,'UyChC','₹ 3090','Booked','932352423423','2016-04-27 10:57:52','2016-04-27 10:57:52'),(11,'Rita Santwani','rsantwani@gmail.com','9226866354',2,'LuFOM','₹ 4000','Booked','9029353434','2016-04-27 13:04:41','2016-04-27 13:04:41');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_airports`
--

DROP TABLE IF EXISTS `city_airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city_airports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `airport` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_airports`
--

LOCK TABLES `city_airports` WRITE;
/*!40000 ALTER TABLE `city_airports` DISABLE KEYS */;
INSERT INTO `city_airports` VALUES (1,'Mumbai','BOM','Chhatrapati Shivaji terminus','2016-04-21 06:22:08','2016-04-21 18:31:03','http://localhost:3000/assets/mumbai.jpg'),(2,'Banglore','BLR','Kempegowda International airport','2016-04-21 06:22:54','2016-04-21 18:31:12','http://localhost:3000/assets/banglore.jpg'),(3,'New Delhi','DEL','Indira Gandhi airport','2016-04-21 06:25:07','2016-04-21 18:31:19','http://localhost:3000/assets/delhi.jpg'),(4,'Jaipur','JAI','Jaipur International airport','2016-04-21 06:26:43','2016-04-21 18:31:26','http://localhost:3000/assets/jaipur.jpg'),(5,'Kolkata','CCU','Netaji SC Bose airport','2016-04-21 11:15:25','2016-04-21 18:31:33','http://localhost:3000/assets/kolkata.jpg'),(6,'Hyderabad','HYD','Rajiv Gandhi Int airport','2016-04-21 11:16:05','2016-04-21 18:31:39','http://localhost:3000/assets/hyderabad.jpg');
/*!40000 ALTER TABLE `city_airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `airline` varchar(255) DEFAULT NULL,
  `departure_airport` varchar(255) DEFAULT NULL,
  `arrival_airport` varchar(255) DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `flight_status` varchar(255) DEFAULT NULL,
  `rev_departure_time` datetime DEFAULT NULL,
  `rev_arrival_time` datetime DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'Jet','Banglore','Mumbai','2016-04-23 01:50:00','2016-04-23 03:50:00','On Time','2016-04-23 10:50:00','2016-04-23 10:50:00',0,'2016-04-23 10:50:00','2016-04-25 16:11:57','2200'),(2,'Indigo','Banglore','Mumbai','2016-04-23 05:52:00','2016-04-23 07:52:00','On Time','2016-04-23 10:52:00','2016-04-23 10:52:00',0,'2016-04-23 10:52:00','2016-04-25 16:11:48','3200'),(3,'Go Air','Banglore','Mumbai','2016-04-23 10:53:00','2016-04-23 12:53:00','On Time','2016-04-23 10:53:00','2016-04-23 10:53:00',0,'2016-04-23 10:53:00','2016-04-25 16:11:39','3500'),(4,'Spice Jet','Banglore','Mumbai','2016-04-23 14:58:00','2016-04-23 17:53:00','On Time','2016-04-23 10:58:00','2016-04-23 10:58:00',0,'2016-04-23 10:58:00','2016-04-25 16:12:09','2650'),(5,'Air Asia','Banglore','Mumbai','2016-04-23 17:15:00','2016-04-23 19:54:00','On Time','2016-04-23 11:00:00','2016-04-23 11:00:00',0,'2016-04-23 11:00:00','2016-04-25 16:12:18','3090'),(6,'Spice Jet','Banglore','Mumbai','2016-04-23 20:01:00','2016-04-23 22:21:00','On Time','2016-04-23 23:01:00','2016-04-23 11:01:00',0,'2016-04-23 11:01:00','2016-04-25 16:12:28','2070'),(7,'Indigo','Banglore','Mumbai','2016-04-23 21:02:00','2016-04-23 23:10:00','On Time','2016-04-23 11:02:00','2016-04-23 11:02:00',0,'2016-04-23 11:02:00','2016-04-25 16:12:37','4000'),(8,'Air India','Banglore','Mumbai','2016-04-23 04:04:00','2016-04-23 07:04:00','On Time','2016-04-25 07:04:00','2016-04-25 07:04:00',0,'2016-04-25 07:04:00','2016-04-25 16:12:45','5000');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `popular_destinations`
--

DROP TABLE IF EXISTS `popular_destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `popular_destinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `city_code` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `destination_code` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `popular_destinations`
--

LOCK TABLES `popular_destinations` WRITE;
/*!40000 ALTER TABLE `popular_destinations` DISABLE KEYS */;
INSERT INTO `popular_destinations` VALUES (1,'Banglore','BLR','New Delhi','DEL',0,'2016-04-20 18:14:00','2016-04-20 18:18:21'),(2,'Banglore','BLR','Mumbai','BOM',0,'2016-04-20 18:18:00','2016-04-20 18:18:50');
/*!40000 ALTER TABLE `popular_destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20160420125651'),('20160420181133'),('20160421061938'),('20160421142655'),('20160423105023'),('20160423111000'),('20160425081159'),('20160425114840');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trending_places`
--

DROP TABLE IF EXISTS `trending_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trending_places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trending_places`
--

LOCK TABLES `trending_places` WRITE;
/*!40000 ALTER TABLE `trending_places` DISABLE KEYS */;
INSERT INTO `trending_places` VALUES (1,'Mumbai','mumbai.jpg',0,'2016-04-20 12:57:00','2016-04-20 12:57:56'),(2,'New Delhi','delhi.jpg',0,'2016-04-20 12:58:00','2016-04-21 06:25:40'),(3,'Banglore','banglore.jpg',0,'2016-04-20 12:58:00','2016-04-20 12:58:28'),(4,'Jaipur','jaipur.jpg',0,'2016-04-20 12:58:00','2016-04-20 12:58:44'),(5,'Kolkata','kolkata.jpg',0,'2016-04-20 12:58:00','2016-04-20 12:59:01'),(6,'Hyderabad','hyderabad.jpg',0,'2016-04-20 12:59:00','2016-04-20 12:59:19');
/*!40000 ALTER TABLE `trending_places` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-21 15:40:40
