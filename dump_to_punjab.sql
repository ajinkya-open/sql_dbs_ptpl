-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.5.57-0+deb8u1

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `message_from` varchar(255) DEFAULT NULL,
  `message_type` varchar(255) DEFAULT NULL,
  `roomname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `panel_id` varchar(255) DEFAULT NULL,
  `sole_command` varchar(255) DEFAULT NULL,
  `target_command` varchar(255) DEFAULT NULL,
  `time_stamp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_details`
--

DROP TABLE IF EXISTS `device_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_details` (
  `device_id` varchar(255) NOT NULL,
  `admin_user` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_details`
--

LOCK TABLES `device_details` WRITE;
/*!40000 ALTER TABLE `device_details` DISABLE KEYS */;
INSERT INTO `device_details` VALUES ('ofb9m',1109);
/*!40000 ALTER TABLE `device_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genie_cam`
--

DROP TABLE IF EXISTS `genie_cam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genie_cam` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `internet_port` varchar(255) DEFAULT NULL,
  `cam_name` varchar(255) DEFAULT NULL,
  `internetip` varchar(255) DEFAULT NULL,
  `localip` varchar(255) DEFAULT NULL,
  `local_port` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genie_cam`
--

LOCK TABLES `genie_cam` WRITE;
/*!40000 ALTER TABLE `genie_cam` DISABLE KEYS */;
/*!40000 ALTER TABLE `genie_cam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home`
--

DROP TABLE IF EXISTS `home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home` (
  `id` bigint(20) NOT NULL,
  `home_name` varchar(255) DEFAULT NULL,
  `is_armed` int(11) DEFAULT NULL,
  `is_blocked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home`
--

LOCK TABLES `home` WRITE;
/*!40000 ALTER TABLE `home` DISABLE KEYS */;
INSERT INTO `home` VALUES (17,'Sumeets Home',0,0);
/*!40000 ALTER TABLE `home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installation_configuration`
--

DROP TABLE IF EXISTS `installation_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installation_configuration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `configuration_string` longtext,
  `created` datetime DEFAULT NULL,
  `secure_password` varchar(255) DEFAULT NULL,
  `secure_ssid` varchar(255) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installation_configuration`
--

LOCK TABLES `installation_configuration` WRITE;
/*!40000 ALTER TABLE `installation_configuration` DISABLE KEYS */;
INSERT INTO `installation_configuration` VALUES (1,'HA1-11-120006-ofb9m,Moto M,Pallavi7,safeuser,safepass,panel1,panel1/in,panel1/out,192.168.1.2,,HA1-12-100006-ofb9m,Moto M,Pallavi7,safeuser,safepass,panel2,panel2/in,panel2/out,192.168.1.2,,BD1-13-100006-ofb9m,Moto M,Pallavi7,safeuser,safepass,panel3,panel3/in,panel3/out,192.168.1.2,,','2018-03-21 06:41:45','safepass','safeuser',NULL);
/*!40000 ALTER TABLE `installation_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iotproduct`
--

DROP TABLE IF EXISTS `iotproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iotproduct` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iot_product_number` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `roomid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qfo3gcucypcoidu49hyusq3vn` (`roomid`),
  CONSTRAINT `FK_qfo3gcucypcoidu49hyusq3vn` FOREIGN KEY (`roomid`) REFERENCES `room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iotproduct`
--

LOCK TABLES `iotproduct` WRITE;
/*!40000 ALTER TABLE `iotproduct` DISABLE KEYS */;
INSERT INTO `iotproduct` VALUES (1,11,'120006','GR',1),(2,12,'100006','GR',1),(3,13,'100006','GR',2);
/*!40000 ALTER TABLE `iotproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `is_read` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `set_sender_image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `switch_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panel`
--

DROP TABLE IF EXISTS `panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panel` (
  `panel_id` int(11) NOT NULL,
  `not_implimented` varchar(255) DEFAULT NULL,
  `panel_command` varchar(255) DEFAULT NULL,
  `panel_ip` varchar(255) DEFAULT NULL,
  `panel_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`panel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panel`
--

LOCK TABLES `panel` WRITE;
/*!40000 ALTER TABLE `panel` DISABLE KEYS */;
INSERT INTO `panel` VALUES (11,'NA','panel1-HA1-11-120006-ofb9m-NA-GR-NA','','panel1'),(12,'NA','panel2-HA1-12-100006-ofb9m-NA-GR-NA','','panel2'),(13,'NA','panel3-BD1-13-100006-ofb9m-NA-GR-NA','','panel3');
/*!40000 ALTER TABLE `panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dimmer_values` varchar(255) DEFAULT NULL,
  `profile_name` varchar(255) DEFAULT NULL,
  `switch_list` varchar(255) DEFAULT NULL,
  `switch_on_off_status` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c1dkiawnlj6uoe6fnlwd6j83j` (`user_id`),
  CONSTRAINT `FK_c1dkiawnlj6uoe6fnlwd6j83j` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remote_details`
--

DROP TABLE IF EXISTS `remote_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remote_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT NULL,
  `model_number` varchar(255) DEFAULT NULL,
  `remote_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remote_details`
--

LOCK TABLES `remote_details` WRITE;
/*!40000 ALTER TABLE `remote_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `remote_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hide_status` varchar(255) DEFAULT NULL,
  `room_identifier` varchar(255) DEFAULT NULL,
  `room_image_id` int(11) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `homeid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kd4wqjqemsmuq1swhlgfott1f` (`homeid`),
  CONSTRAINT `FK_kd4wqjqemsmuq1swhlgfott1f` FOREIGN KEY (`homeid`) REFERENCES `home` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'0','HA1',0,'Hall1','1',17),(2,'0','BD1',0,'Bedroom1','1',17);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type` (
  `id` bigint(20) NOT NULL,
  `room_image` longblob,
  `room_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,NULL,'BedRoom'),(2,NULL,'Hall'),(3,NULL,'Kitchen'),(4,NULL,'Room_A'),(5,NULL,'Room_B'),(6,NULL,'Room_C');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_switch`
--

DROP TABLE IF EXISTS `schedule_switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_switch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dimmer_status` varchar(255) DEFAULT NULL,
  `dimmer_value` varchar(255) DEFAULT NULL,
  `future_date_time` varchar(255) DEFAULT NULL,
  `lock_status` varchar(255) DEFAULT NULL,
  `profile_id` bigint(20) DEFAULT NULL,
  `repeat_status` varchar(255) DEFAULT NULL,
  `repeat_week` varchar(255) DEFAULT NULL,
  `schedule_date_time` varchar(255) DEFAULT NULL,
  `switch_id` bigint(20) DEFAULT NULL,
  `switch_status` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_switch`
--

LOCK TABLES `schedule_switch` WRITE;
/*!40000 ALTER TABLE `schedule_switch` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_control_details`
--

DROP TABLE IF EXISTS `share_control_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_control_details` (
  `email` varchar(255) NOT NULL,
  `admin_user` bigint(20) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_control_details`
--

LOCK TABLES `share_control_details` WRITE;
/*!40000 ALTER TABLE `share_control_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_control_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch`
--

DROP TABLE IF EXISTS `switch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dimmer_status` varchar(255) DEFAULT NULL,
  `dimmer_value` varchar(255) DEFAULT NULL,
  `hide_status` varchar(255) DEFAULT NULL,
  `lock_code` varchar(255) DEFAULT NULL,
  `lock_status` varchar(255) DEFAULT NULL,
  `switch_identifier` varchar(255) DEFAULT NULL,
  `switch_image_id` int(11) DEFAULT NULL,
  `switch_name` varchar(255) DEFAULT NULL,
  `switch_number` int(11) DEFAULT NULL,
  `switch_status` varchar(255) DEFAULT NULL,
  `switch_type` varchar(255) DEFAULT NULL,
  `iotproductid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_r5r8f4ua2xn68wxiiisyiena` (`iotproductid`),
  CONSTRAINT `FK_r5r8f4ua2xn68wxiiisyiena` FOREIGN KEY (`iotproductid`) REFERENCES `iotproduct` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch`
--

LOCK TABLES `switch` WRITE;
/*!40000 ALTER TABLE `switch` DISABLE KEYS */;
INSERT INTO `switch` VALUES (1,'0','0','0',NULL,'0',NULL,0,'Bulb',1,'0','1',1),(2,'0','0','0',NULL,'0',NULL,0,'Bulb',2,'0','2',1),(3,'1','20','0',NULL,'0',NULL,0,'Fan',6,'0','6',1),(4,'0','0','0',NULL,'0',NULL,0,'Bulb',1,'0','1',2),(5,'1','20','0',NULL,'0',NULL,0,'Fan',6,'0','6',2),(6,'0','0','0',NULL,'0',NULL,0,'Bulb',1,'0','1',3),(7,'1','20','0',NULL,'0',NULL,0,'Fan',6,'0','6',3);
/*!40000 ALTER TABLE `switch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `switch_type`
--

DROP TABLE IF EXISTS `switch_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `switch_type` (
  `id` bigint(20) NOT NULL,
  `dimmer_status` varchar(255) DEFAULT NULL,
  `off_image` longblob,
  `on_image` longblob,
  `switch_identifire` varchar(255) DEFAULT NULL,
  `switch_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `switch_type`
--

LOCK TABLES `switch_type` WRITE;
/*!40000 ALTER TABLE `switch_type` DISABLE KEYS */;
INSERT INTO `switch_type` VALUES (1,'0',NULL,NULL,NULL,'simple1'),(2,'0',NULL,NULL,NULL,'power'),(3,'0',NULL,NULL,NULL,'simple2'),(4,'0',NULL,NULL,NULL,'socket'),(5,'0',NULL,NULL,NULL,'Dimmer1'),(6,'0',NULL,NULL,NULL,'Dimmer2');
/*!40000 ALTER TABLE `switch_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tower`
--

DROP TABLE IF EXISTS `tower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tower` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `towerinfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tower`
--

LOCK TABLES `tower` WRITE;
/*!40000 ALTER TABLE `tower` DISABLE KEYS */;
INSERT INTO `tower` VALUES (1,'NA');
/*!40000 ALTER TABLE `tower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` bigint(20) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_email_verified` bit(1) DEFAULT NULL,
  `is_first_login` bit(1) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `homeid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4d9rdl7d52k8x3etihxlaujvh` (`email`),
  KEY `FK_qos0ffgr4l3spfgmvx9b2njge` (`homeid`),
  CONSTRAINT `FK_qos0ffgr4l3spfgmvx9b2njge` FOREIGN KEY (`homeid`) REFERENCES `home` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (0,'',NULL,NULL,'demo.jar@gsmarthome.com','demo',NULL,'',NULL,'jar','genieDemo2dfoGh',NULL,1,NULL),(1109,'02/02/1990','ofb9m','ANDROID','sumeervashisht@hotmail.com','Sumeet',NULL,'','\0','Vashiast','pongo123','9501334339',0,17);
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userotp`
--

DROP TABLE IF EXISTS `userotp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userotp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `otp` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userotp`
--

LOCK TABLES `userotp` WRITE;
/*!40000 ALTER TABLE `userotp` DISABLE KEYS */;
/*!40000 ALTER TABLE `userotp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-21  6:42:26
