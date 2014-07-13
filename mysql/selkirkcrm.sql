-- MySQL dump 10.13  Distrib 5.5.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: selkirkcrm
-- ------------------------------------------------------
-- Server version	5.5.33

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('1052beb3-db07-b98c-3094-5372306cf73e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Project','module',90,0),('1090fcf5-38de-7fd8-4f31-537230b39674','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','jjwg_Areas','module',90,0),('10f7aac1-9ef2-08c3-685e-537230279f21','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Project','module',90,0),('10ff0843-b742-cccd-7318-537230a0abc0','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Documents','module',90,0),('119bc0a4-2835-42a8-5989-5372305ab3fd','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Project','module',90,0),('123e6516-3ca7-068d-98a6-5372308a8e0f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Project','module',90,0),('13680c86-1a12-5196-9d8a-537230cae959','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Users','module',89,0),('151cd0ab-7592-5d3d-304c-5372301466cf','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','jjwg_Address_Cache','module',89,0),('17f3f099-3757-e610-8671-537230acf355','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','ProjectTask','module',89,0),('18762eff-cbb0-5af4-870c-537230e9a0ec','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','jjwg_Address_Cache','module',90,0),('189c28c3-1162-4dcf-1cd7-537230da160d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','ProjectTask','module',90,0),('192754c7-cd59-f7f8-4e31-5372301539cc','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','jjwg_Address_Cache','module',90,0),('193f6aec-fc54-2ecf-64c6-537230cd6cc5','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','ProjectTask','module',90,0),('19d6ef04-abf9-a841-3ab5-537230c52248','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','jjwg_Address_Cache','module',90,0),('19ff8bca-6082-c1cf-5c73-53723063a72f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','ProjectTask','module',90,0),('1a8b3031-85d6-28fc-e04c-53723017262b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','jjwg_Address_Cache','module',90,0),('1aa43029-04b6-c281-0ffb-5372303ed26c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','ProjectTask','module',90,0),('1b4a6b9f-9d34-cb7d-71cc-5372308e4943','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','ProjectTask','module',90,0),('1b592d47-7ec6-4787-d960-537230c231df','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','jjwg_Address_Cache','module',90,0),('1baa0e88-0223-1a2f-61e2-537230335444','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Documents','module',90,0),('1befcabb-2ed3-9c26-d4ed-5372309b9905','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','ProjectTask','module',90,0),('1c0d4478-3bf5-140d-e138-53723013fc38','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','jjwg_Address_Cache','module',90,0),('1c9299a1-d9c8-d35c-6719-537230722db1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','ProjectTask','module',90,0),('1cbf5286-3bb0-a0a0-705e-53723070bb8d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','jjwg_Address_Cache','module',90,0),('1dd905a9-32b5-ea79-62bd-537230539f65','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Users','module',90,0),('1f71ce81-db38-9e9b-3fd6-53723032951b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','EAPM','module',89,0),('20216ae2-a184-0ada-de92-5372309f8441','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','EAPM','module',90,0),('20c4cb52-7346-fb06-1fd1-53723090cb69','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','EAPM','module',90,0),('21689525-eac6-24b4-ca1c-5372302062a6','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','EAPM','module',90,0),('216a01c6-b503-1757-d2d0-5372307cbbb8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','jjwg_Markers','module',89,0),('21882634-1171-717b-db8d-537230e69ade','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Calls_Reschedule','module',89,0),('222956d5-d338-0087-80dd-537230b49fd1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','EAPM','module',90,0),('2236eca9-f82e-e431-427f-5372309769cd','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Calls_Reschedule','module',90,0),('22d02cbb-3772-358c-b315-5372308ad1ed','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','EAPM','module',90,0),('22e9df6d-dde8-7ccd-d692-5372302e35f8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Calls_Reschedule','module',90,0),('237051f8-cee6-72be-63b8-537230c67a06','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','EAPM','module',90,0),('239f9698-622c-8a12-de4a-53723025a2f6','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Calls_Reschedule','module',90,0),('241687f2-43ed-b85b-1478-537230b88a71','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','EAPM','module',90,0),('244f8233-3ecc-26be-05df-53723025da30','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Calls_Reschedule','module',90,0),('2502d535-c107-9def-4767-53723030bf32','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Calls_Reschedule','module',90,0),('25de912c-7d24-3a9c-e7b8-53723013fb1c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Calls_Reschedule','module',90,0),('26939227-606a-d32b-8475-537230fc3535','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Calls_Reschedule','module',90,0),('26e50f97-7333-299c-3163-537230e14292','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Documents','module',90,0),('27a634f0-a909-de4e-c408-53723047086a','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Campaigns','module',89,0),('27f50549-d15c-b472-74bd-537230751f8e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Users','module',90,0),('2850d309-893b-5334-ef91-537230e0618f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Campaigns','module',90,0),('28fe8778-b397-c217-7cbc-537230799919','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Campaigns','module',90,0),('29a7fabc-8aba-596f-81b8-53723018ad75','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Campaigns','module',90,0),('2a4badc5-0f27-d4f0-1035-537230de4977','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Campaigns','module',90,0),('2af88766-a5e8-f886-e417-5372305c0113','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Campaigns','module',90,0),('2b4f2996-aff5-34b3-3b5a-537230db3374','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','SecurityGroups','module',89,0),('2ba01822-95fc-c65e-4a30-537230fe987c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Campaigns','module',90,0),('2bfaef32-6917-e13d-d5ba-5372308d5c88','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','SecurityGroups','module',90,0),('2c3801af-cfbd-d98f-2cbf-537230bbf611','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','jjwg_Markers','module',90,0),('2c48e404-dda7-58d2-22e2-5372303e2b35','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Campaigns','module',90,0),('2ca65a2e-44e7-8eb1-e522-537230f0a589','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','SecurityGroups','module',90,0),('2d533c30-7300-4c51-24de-5372300b36b2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','SecurityGroups','module',90,0),('2e014000-093d-42ba-de0e-537230cb8af2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','SecurityGroups','module',90,0),('2ea8e929-7a02-768f-e66f-537230e62c08','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','FP_events','module',89,0),('2ea90d20-833c-c00c-6a16-5372308ef1ca','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','SecurityGroups','module',90,0),('2f56d593-a298-f92f-179b-53723046c863','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','SecurityGroups','module',90,0),('2f5a8e74-0f9e-f734-6e2a-537230b74866','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','FP_events','module',90,0),('300765b4-4c7f-53db-a77b-537230296a2c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','FP_events','module',90,0),('301a43a0-0b42-3d54-e78d-5372307ed47c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','SecurityGroups','module',90,0),('30b2d26f-8de2-eb9d-4e47-53723083e1a2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','FP_events','module',90,0),('315b5f5e-9305-d8ca-cd31-5372303f368f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','FP_events','module',90,0),('316f0d28-7bcb-01c4-2901-5372302e7623','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Documents','module',90,0),('321ba1a4-06ee-9deb-4b71-537230279a7d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','FP_events','module',90,0),('32de9096-343f-17cc-ca4f-53723075f9bc','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','FP_events','module',90,0),('3387f9f5-044d-5598-9cf3-53723002cea1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','FP_events','module',90,0),('33ae0bfd-0817-da2b-e43a-5372309df805','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Users','module',90,0),('35a1e9a9-9264-869c-196d-5372308005f9','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','ProspectLists','module',89,0),('3651716f-b485-2520-0795-537230d9ab6f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','ProspectLists','module',90,0),('36f19188-137b-b9ea-d0dc-5372300c0e75','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','ProspectLists','module',90,0),('36f30d43-e420-d5ed-c245-537230512dd8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','jjwg_Markers','module',90,0),('37979a9a-db11-8e5c-33a8-537230326c01','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','ProspectLists','module',90,0),('381c54f0-e1d6-c408-65dd-537230c7b38e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','FP_Event_Locations','module',89,0),('383d26ad-d97a-0307-f6f7-537230335d2d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','ProspectLists','module',90,0),('38cc00d4-f957-0642-411d-53723053a04f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','FP_Event_Locations','module',90,0),('38df2fd7-85d8-5504-d218-537230afdfda','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','ProspectLists','module',90,0),('3974c8e7-f658-47b6-cce4-53723065c840','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','FP_Event_Locations','module',90,0),('3985aeb2-8cb1-203c-d3f0-53723074e7fc','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','ProspectLists','module',90,0),('3a1d4f11-a709-1ed5-9abd-5372301bbd01','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','FP_Event_Locations','module',90,0),('3ac6db22-38c5-137c-2d6a-537230ca8928','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','FP_Event_Locations','module',90,0),('3b8f3969-8314-693b-b958-5372304a2b04','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','FP_Event_Locations','module',90,0),('3bfe0a71-799e-4d11-9811-537230ca345b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Documents','module',90,0),('3c20e598-9da9-785e-0d61-537230e7e627','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','ProspectLists','module',90,0),('3c3ac13c-90ce-a9f1-5bd1-537230c271de','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','FP_Event_Locations','module',90,0),('3ce5c869-763f-263c-ff1d-53723062bf0a','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','FP_Event_Locations','module',90,0),('3df803f9-c186-fa40-4a1d-537230331b3b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Users','module',90,0),('41b40e24-207e-ca55-1481-537230096b10','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','jjwg_Markers','module',90,0),('41f376d5-ea2d-266b-85d6-537230535a5a','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Prospects','module',89,0),('4255730b-92fe-cbd5-d8f5-5372308ff507','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOD_IndexEvent','module',89,0),('42a30b87-86bd-b709-d953-537230fcb94f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Prospects','module',90,0),('4309f985-1e0c-9cb1-f068-537230e828be','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOD_IndexEvent','module',90,0),('434f030b-e61c-211e-96d5-537230efb95e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Prospects','module',90,0),('43af2be0-ec23-e795-eb3f-537230948ad2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOD_IndexEvent','module',90,0),('43f964b3-a76f-6024-cb1e-5372305b2560','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Prospects','module',90,0),('4455d58b-0c97-c7c1-4c37-53723063a284','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOD_IndexEvent','module',90,0),('45008596-14fb-9f31-7d3c-53723013f8b0','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOD_IndexEvent','module',90,0),('45af3b61-1d4e-97c0-21a3-53723093eef6','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOD_IndexEvent','module',90,0),('4659e4a2-247f-d56d-5e20-5372306638a7','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOD_IndexEvent','module',90,0),('469b24a0-b382-7914-254f-537230624836','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Prospects','module',90,0),('4717c13c-e6e5-4995-e7de-537230914e84','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOD_IndexEvent','module',90,0),('47464203-f5ba-8586-255c-537230b9be53','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Prospects','module',90,0),('481a7164-a13f-7eb6-713f-53723006c55f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Prospects','module',90,0),('48c63cec-906f-166a-9a90-53723011bc2d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Prospects','module',90,0),('48eb0583-c37b-656e-81b4-5372304b3b5f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Users','module',90,0),('4b96fe7f-49ff-57ab-ea8b-537230e60a1b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOD_Index','module',89,0),('4c3c9ad7-bae4-d6db-ac8d-537230f31405','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOD_Index','module',90,0),('4cb20824-db4c-6681-957b-5372307e882b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','jjwg_Markers','module',90,0),('4ce188f2-1eb0-3b09-643d-5372301eb5f8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOD_Index','module',90,0),('4d9dc9c9-7a54-54bf-3970-53723034d59c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOD_Index','module',90,0),('4e4304dc-b618-bd95-c674-5372301d0236','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOD_Index','module',90,0),('4ee4b6b4-0a55-dbd2-9d13-53723090ebdf','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOD_Index','module',90,0),('4f8a3beb-a848-0450-0e05-537230026424','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOD_Index','module',90,0),('5044c75e-5a9b-ec13-06f5-5372300295dc','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOD_Index','module',90,0),('5312095d-a4c7-0b65-9096-537230f147a0','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Users','module',90,0),('534ee88b-cdaf-2070-942f-537230e9ae2f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','EmailMarketing','module',89,0),('53fc4f7a-3361-06b6-b04d-537230c14e4e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','EmailMarketing','module',90,0),('547604a4-2550-e80e-845b-53723043fc5b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOP_Case_Events','module',89,0),('54a7c129-f3a9-fe21-3446-537230dc0369','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','EmailMarketing','module',90,0),('551dec68-dc34-3500-4e02-537230b7233d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOP_Case_Events','module',90,0),('5551fd45-f21b-66a9-93b6-537230f26e1d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','EmailMarketing','module',90,0),('55bee02d-a70a-67dd-9945-53723070087e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOP_Case_Events','module',90,0),('55f8df98-e070-8b1a-f2d6-537230f1b882','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','EmailMarketing','module',90,0),('56618a65-7b34-6d6a-88e9-5372301b1c63','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOP_Case_Events','module',90,0),('56a2382a-5bfc-4abe-6681-5372302e4643','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','EmailMarketing','module',90,0),('57076995-8a90-c35d-99c3-537230576ded','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOP_Case_Events','module',90,0),('575077ba-52e7-b1ad-1497-537230df1c20','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','EmailMarketing','module',90,0),('57860725-03be-f848-4a03-53723096e934','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','jjwg_Markers','module',90,0),('57a9adfd-b3ad-2dfa-c61b-537230e79524','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOP_Case_Events','module',90,0),('580194e7-5834-35cf-2bdd-53723057b22c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','EmailMarketing','module',90,0),('584c8d67-6ed8-072a-aebe-537230878953','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOP_Case_Events','module',90,0),('58ed7b73-5ea2-26c2-7547-5372304dca48','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOP_Case_Events','module',90,0),('5d400ecf-b21d-90c6-6733-5372304eb62e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Users','module',90,0),('621c025f-ec21-f32c-75ae-537230836e2c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','jjwg_Markers','module',90,0),('6805578e-75c2-c082-003a-537230f46e70','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Contacts','module',89,0),('68b00d32-e6e0-2bda-873b-53723050327f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Documents','module',90,0),('6a8a4a2c-a4e3-a545-a374-537230e98540','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Contacts','module',90,0),('6b2c2a30-4cbd-f8e4-6579-537230f744cb','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Contacts','module',90,0),('6b975d97-e3f8-50f7-d827-537230972cef','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOP_Case_Updates','module',89,0),('6bcf6048-052b-3753-085d-5372308c4c70','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Contacts','module',90,0),('6c40eacf-1131-878a-58cf-53723008156a','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOP_Case_Updates','module',90,0),('6c6fb89a-f88c-cbc3-9d16-537230f2cc4f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Contacts','module',90,0),('6ce5381a-18be-a671-5560-5372303dbd32','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOP_Case_Updates','module',90,0),('6d0f02a2-e7f7-48c3-ac6d-5372308c525b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','jjwg_Markers','module',90,0),('6d165d89-afdd-2f01-c699-537230d5bfcb','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Contacts','module',90,0),('6d91dd98-1efb-e1a3-dea2-537230a8aef1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOP_Case_Updates','module',90,0),('6dbbebe4-d852-bec3-620d-53723045f327','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Contacts','module',90,0),('6e356b6b-8123-684b-3433-5372304d2ce7','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOP_Case_Updates','module',90,0),('6e8a533b-95d9-7848-1691-53723001ef48','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Contacts','module',90,0),('6ed691b7-f8db-20e5-08bd-537230b10b28','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOP_Case_Updates','module',90,0),('6f7b6f2b-6fde-30ce-2401-5372309334c4','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOP_Case_Updates','module',90,0),('7074f9a9-3520-214e-eb4b-5372304fd65e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOP_Case_Updates','module',90,0),('75a234bd-61ac-702f-4444-537230c3e19f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOR_Reports','module',89,0),('764848d7-5181-5d01-bbc3-537230ece043','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOR_Reports','module',90,0),('7719928e-8e4f-eda2-39d7-537230883522','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOR_Reports','module',90,0),('774adf0d-8714-b65a-43e4-537230d885d9','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Accounts','module',89,0),('77c0d25e-4a50-7354-857c-537230fcfec9','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOR_Reports','module',90,0),('77f68acb-897c-1e60-f91d-537230a6f29d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Accounts','module',90,0),('78639578-88cc-e748-6b53-537230298372','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOR_Reports','module',90,0),('78987b76-c0fc-c530-a2ba-537230d1de2e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Accounts','module',90,0),('7908ede6-d26f-e7ba-18c1-537230689251','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOR_Reports','module',90,0),('793cb2d9-caed-758f-d0cd-537230a259ef','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Accounts','module',90,0),('79ad00ce-a3b2-2875-f1df-537230295781','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOR_Reports','module',90,0),('79dd887c-4fa4-17d7-a4db-537230a7508d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Accounts','module',90,0),('7a5098d8-0bf2-e448-3de7-5372307e5012','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOR_Reports','module',90,0),('7a80fa73-e830-6f18-c0a8-5372306bbba4','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Accounts','module',90,0),('7ef9cb87-b994-1475-2b57-537230757501','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Accounts','module',90,0),('7f9cbba2-f287-5919-bd10-5372300e42ef','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Accounts','module',90,0),('87f4a3ba-6e1f-17ef-5065-537230826f1f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOS_Contracts','module',89,0),('889aba6f-236a-05ea-c837-537230b26bda','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOS_Contracts','module',90,0),('893d48f5-8fa7-c4d5-ffce-537230306800','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOS_Contracts','module',90,0),('89f827ac-3a18-cc92-376d-5372301ffe32','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOS_Contracts','module',90,0),('8a9e51f6-d0cd-bf28-a2e1-53723069661c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOS_Contracts','module',90,0),('8b449584-a2f9-73f1-f5be-5372308c3a14','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOS_Contracts','module',90,0),('8be6c50d-10aa-90a4-6ce2-5372308af8d8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOS_Contracts','module',90,0),('8c8d92ff-80c3-2aa7-df9c-537230c68c93','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOS_Contracts','module',90,0),('8cdc95dc-d0da-dd67-6866-53723049d211','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Opportunities','module',89,0),('8d8d2b4f-674b-0453-142a-5372304cb762','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Opportunities','module',90,0),('8e35a6df-b2da-d9d8-ab73-53723037f7f0','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Opportunities','module',90,0),('8ee2277f-7036-52e6-f540-537230d47cda','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Opportunities','module',90,0),('8f8d9c2e-701d-dd08-559a-53723095a23f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Opportunities','module',90,0),('920bcb0a-5d03-b4e1-c35c-537230dbd2bd','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Opportunities','module',90,0),('92b416a4-c3d2-1bc0-4a57-537230af3d67','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Opportunities','module',90,0),('92e5be2b-b9b1-4c95-ad27-5372306934f9','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOS_Invoices','module',89,0),('935e2e74-318d-e00e-10bf-53723033c5fe','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Opportunities','module',90,0),('93a3b178-62fd-fe92-cc4e-53723026d8d7','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOS_Invoices','module',90,0),('944f2532-3587-1703-f1a4-537230ea81a1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOS_Invoices','module',90,0),('94f589ed-d192-0f4b-6e98-537230050a06','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOS_Invoices','module',90,0),('95b48576-f41d-cacb-eaf9-537230ce591d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOS_Invoices','module',90,0),('965d553b-a356-8f65-d9b6-537230da71b8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOS_Invoices','module',90,0),('97051198-ef2a-e06b-9d47-5372308753c1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOS_Invoices','module',90,0),('97ac8055-a57e-7849-ec52-537230cc0cb4','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOS_Invoices','module',90,0),('9c07e75a-ef86-af56-23d8-537230865594','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','EmailTemplates','module',89,0),('9cbbd81c-794c-e5b2-380f-537230598269','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','EmailTemplates','module',90,0),('9cfe3f1b-83c3-9d45-e8ce-537230c5abaf','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOS_PDF_Templates','module',89,0),('9d688af6-a338-913d-c9f1-537230e22530','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','EmailTemplates','module',90,0),('9dab4513-29b8-f97f-b072-5372303770dd','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOS_PDF_Templates','module',90,0),('9e12b3b7-de74-33f1-83fc-537230ecb325','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','EmailTemplates','module',90,0),('9e6bdc75-846d-0e0a-4181-5372302ccbae','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOS_PDF_Templates','module',90,0),('9f4b0ffd-ccd5-9660-b7f7-5372306d9802','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOS_PDF_Templates','module',90,0),('9ff2181f-c171-1209-3671-537230793bb3','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOS_PDF_Templates','module',90,0),('a0a17685-ee24-a90a-a21e-5372301f2123','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOS_PDF_Templates','module',90,0),('a0b2ac9b-0f79-4b59-a890-537230afb435','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','EmailTemplates','module',90,0),('a14a39ed-19f3-adbe-c658-537230a6fb55','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOS_PDF_Templates','module',90,0),('a15c683c-b1aa-5b6e-f4f3-537230f2c862','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','EmailTemplates','module',90,0),('a1f21c39-253e-2970-eaeb-537230d760b3','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOS_PDF_Templates','module',90,0),('a2067eb3-d5d3-43d7-2f23-537230d52d2e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','EmailTemplates','module',90,0),('a2b46fc6-aa45-dfab-53dc-537230f4f1c8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','EmailTemplates','module',90,0),('a5d72a90-934a-4be7-cc52-537230c5fb60','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Notes','module',89,0),('a6788328-e892-34d1-53e5-537230b8815b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOS_Product_Categories','module',89,0),('a70682a0-9696-5215-9113-5372300a3038','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Notes','module',90,0),('a722b846-4a9f-de0f-8ca4-537230ddbacd','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOS_Product_Categories','module',90,0),('a7b100dc-fd02-05c4-02d2-53723053975b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Notes','module',90,0),('a7e1ce1e-1a23-be41-320f-537230801d5b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOS_Product_Categories','module',90,0),('a8598c4e-5f66-2c86-dd9d-5372306b6157','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Notes','module',90,0),('a88a8254-3c6a-20da-cf3b-537230e6def0','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOS_Product_Categories','module',90,0),('a90000cb-1b4c-e48e-f9b8-5372303ee1ff','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Notes','module',90,0),('a93100d8-e2ca-d6bc-4008-53723052fb8e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOS_Product_Categories','module',90,0),('a9a9d220-22bd-273e-61e7-537230b1537d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Notes','module',90,0),('a9da19ba-1b69-0d1f-6c37-537230529783','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOS_Product_Categories','module',90,0),('aa5267b4-b238-aceb-3017-537230b6d374','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Notes','module',90,0),('aa848bf1-965a-b26a-f06f-53723012a5f8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOS_Product_Categories','module',90,0),('aaf63306-aaea-600b-2c77-5372301dc7d1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Notes','module',90,0),('ab288487-ef02-f44e-a156-53723009ae79','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOS_Product_Categories','module',90,0),('b12a1227-d2d4-33c2-8368-537230066eec','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Calls','module',89,0),('b1ee7e08-66f7-644c-4bae-537230df6b3d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Calls','module',90,0),('b296d039-7820-c64a-072a-5372301c1364','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Calls','module',90,0),('b299158d-421e-9693-c599-537230efcded','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOS_Products','module',89,0),('b33e191c-2870-cabd-7d6a-537230c17991','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Calls','module',90,0),('b36239f9-a0a1-ea5d-be36-537230176977','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOS_Products','module',90,0),('b3f1a2ce-b96d-d2b7-afae-5372307bfcaa','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Calls','module',90,0),('b42cf5bd-797c-7b7a-6814-53723023eed7','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOS_Products','module',90,0),('b49b3dc8-56e3-78e2-3dca-5372300af6d4','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Calls','module',90,0),('b4da4f9c-ffec-b173-4c5b-53723022c201','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOS_Products','module',90,0),('b546e4ec-db81-f066-8f77-5372302c0d85','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Calls','module',90,0),('b583accf-2bab-9a82-35e9-5372309c7fba','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOS_Products','module',90,0),('b5f343c1-072f-c187-3a36-53723057346c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Calls','module',90,0),('b62d73c4-8c72-c269-5332-537230df7f52','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOS_Products','module',90,0),('b6d7999a-b654-e17f-6831-53723000ad35','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOS_Products','module',90,0),('b780c4b7-1de5-bd4d-a280-5372305ac709','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOS_Products','module',90,0),('bbfa0f02-b027-6571-a95c-537230e91d85','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','jjwg_Areas','module',89,0),('bca1bf86-52f4-6e88-9e38-5372301a2b96','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Emails','module',89,0),('bd4f5e4e-d19c-b241-6601-537230eec626','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Emails','module',90,0),('bfefc441-95b0-706a-007e-53723092d4a9','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Emails','module',90,0),('c0996606-8bd6-0e51-6bdb-5372303e95da','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Emails','module',90,0),('c142dca7-7c30-a6c2-3372-53723039a660','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Emails','module',90,0),('c1e5144d-1a62-834e-96fd-537230ffb2a1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Emails','module',90,0),('c28b225d-cb3c-7248-2cec-537230efdd79','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Emails','module',90,0),('c3393b62-7d2f-3e8b-3526-537230506114','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Emails','module',90,0),('c6df04d6-7054-f449-6189-53723051f072','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','jjwg_Areas','module',90,0),('cb6548af-30a3-7ce5-d6ea-537230c191b4','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOS_Quotes','module',89,0),('cc4c2e00-83ba-8263-0b40-537230996a69','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOS_Quotes','module',90,0),('ccf5efb1-05ce-5ba1-1e63-5372300e32cf','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOS_Quotes','module',90,0),('cd299829-f778-36c9-a1a9-537230bb428f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Meetings','module',89,0),('cd9f1562-3fb5-e00a-84c7-5372302162ee','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOS_Quotes','module',90,0),('cdd5f7ce-295a-4c7f-7602-537230ac9684','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Meetings','module',90,0),('ce5cb04b-7c68-660d-444c-5372303a81aa','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOS_Quotes','module',90,0),('ce81730a-8ee1-6bed-7e78-53723041d7e2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Meetings','module',90,0),('cf1c3c34-b297-fa04-c100-5372303f81dc','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOS_Quotes','module',90,0),('cf267c39-306f-0279-a802-537230778831','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Meetings','module',90,0),('cfc29884-9d79-ffc2-4b7f-53723027a3d5','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOS_Quotes','module',90,0),('cfcde43d-7f50-8664-5f82-537230995d10','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Meetings','module',90,0),('d02137be-648a-fecf-6474-537230b976b1','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Leads','module',89,0),('d06cc3f4-eb9e-2ba9-b47a-5372304126ce','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOS_Quotes','module',90,0),('d0761b0c-699d-0d9d-e840-537230a21cd8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Meetings','module',90,0),('d1940842-5b4e-6fee-3689-5372300e1b06','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','jjwg_Areas','module',90,0),('d27ef374-7703-06e4-78c9-5372307ce331','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Leads','module',90,0),('d300cb44-7328-9975-1eb3-53723042f2d8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Meetings','module',90,0),('d32d282c-4c1e-b980-3a38-537230429e30','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Leads','module',90,0),('d3adf68f-38b0-3042-449e-53723064e141','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Meetings','module',90,0),('d3db144d-1387-22ef-a62a-5372300a93b5','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Leads','module',90,0),('d4845dd3-1290-0b09-8c81-537230c98413','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Leads','module',90,0),('d526d121-212e-ea46-4775-537230cb21b0','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Leads','module',90,0),('d5cbf911-7b13-044c-e026-537230b44bca','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Leads','module',90,0),('d67004f6-9c13-39d4-810e-5372305de99b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Leads','module',90,0),('d73ff9ae-0f9b-6d9b-95d8-53723011c149','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOW_WorkFlow','module',89,0),('d7f8abd1-17f7-02ac-1b17-537230960931','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOW_WorkFlow','module',90,0),('d8a8ec9d-feeb-42c4-a1af-5372300f6b4c','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOW_WorkFlow','module',90,0),('d95476cd-10c6-9cd7-3fa3-537230ed9383','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOW_WorkFlow','module',90,0),('d9ff7176-dd07-70ac-9e61-537230b9bd92','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOW_WorkFlow','module',90,0),('da1830d9-2d78-b689-4fa6-537230a786a0','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Tasks','module',89,0),('da7f0d9b-dbf1-6f8e-e822-537230b262ab','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Project','module',89,0),('daaaecf3-d921-1055-bbee-537230ce16dc','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOW_WorkFlow','module',90,0),('dac41bd0-85a4-9738-8d58-537230d18b80','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Tasks','module',90,0),('db59722b-7c13-a5b2-7e22-537230d87fec','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOW_WorkFlow','module',90,0),('db6b46fd-8d94-5495-2f8b-537230a9c615','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Tasks','module',90,0),('dc11cefc-2d6b-c6bf-339e-537230977822','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Tasks','module',90,0),('dc19e295-c744-d8ce-f6d5-53723061a319','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOW_WorkFlow','module',90,0),('dc7a082f-a00b-8968-d543-537230cdecef','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','jjwg_Areas','module',90,0),('dcbbb41b-2c45-087d-0538-53723088c1df','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Tasks','module',90,0),('dd63b5b2-1c6f-78d0-99e4-53723059e4d3','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Tasks','module',90,0),('dec5cc21-9ceb-3dd0-e695-5372303ff887','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Cases','module',89,0),('df6bc472-6bb1-5a45-f496-53723091007b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Cases','module',90,0),('dffba8f9-9e8a-7e20-6c9c-537230393a9a','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Tasks','module',90,0),('e0125d3c-36d7-25f8-5877-5372306303af','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Cases','module',90,0),('e0a0b357-bc19-f850-e6cc-53723007b9ad','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Tasks','module',90,0),('e0b980fe-bd9b-5147-c1fe-5372307f835e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Cases','module',90,0),('e161ae82-84c7-da9c-baa4-53723021f855','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Cases','module',90,0),('e191efef-ff0a-4f8c-7e84-537230d94a07','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','AOW_Processed','module',89,0),('e20877b5-18fd-adb0-7583-5372301e5efa','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Cases','module',90,0),('e2433261-789e-42b5-e990-5372305d69ed','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','AOW_Processed','module',90,0),('e2ab4126-7d0f-6c84-fd2e-5372309f1d18','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Cases','module',90,0),('e2ec4980-a036-30ec-59cb-537230c9e130','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','AOW_Processed','module',90,0),('e352a950-05c8-42ea-8d98-53723034a1eb','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Cases','module',90,0),('e39ea8fa-c342-6d19-6c99-537230f15c3f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','AOW_Processed','module',90,0),('e462d84e-0a62-39d6-1863-537230be8471','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','AOW_Processed','module',90,0),('e50f4109-522d-95bf-2288-537230dba1e3','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','AOW_Processed','module',90,0),('e5160a14-ed9a-2fce-f9ae-537230c0d18f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Project','module',90,0),('e5ba6c02-0441-79c0-2b53-5372305b5fee','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','AOW_Processed','module',90,0),('e66654d5-880f-1f8c-73f7-5372306c8bf2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','AOW_Processed','module',90,0),('e72f0dcb-5e96-939a-8651-537230bde1f2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','jjwg_Areas','module',90,0),('e9cbfd24-6c96-8d33-4b2e-53723060689a','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Bugs','module',89,0),('ea717e2b-050f-e822-37f7-5372302b47a9','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Bugs','module',90,0),('eb152cdc-0470-9ffb-cd81-537230ecfe6e','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Bugs','module',90,0),('ebb6ba6e-371d-3795-945a-5372307b7a85','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Bugs','module',90,0),('ec59d9bf-27f3-3ebd-9651-537230715662','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','Bugs','module',90,0),('ecab9fe9-200a-3351-ce22-537230557ee9','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','jjwg_Maps','module',89,0),('ecfbe145-d1c1-e302-8994-537230116e8b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','Bugs','module',90,0),('ed589cb8-57fa-e988-35c5-5372306ad09f','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','jjwg_Maps','module',90,0),('ed9d37a4-6a27-291e-8941-5372307153d4','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','Bugs','module',90,0),('ee432c54-2a32-1915-7f08-537230dfa3da','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','jjwg_Maps','module',90,0),('ee4b83ec-7230-a0f3-36ce-5372301ad92b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','Bugs','module',90,0),('eeef2ea8-31a3-9c18-7c27-537230e34594','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','jjwg_Maps','module',90,0),('ef99c164-0705-5b0a-ec86-5372303e3370','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','delete','jjwg_Maps','module',90,0),('f0425f82-bf0d-3611-6eb7-5372305afe2b','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','jjwg_Maps','module',90,0),('f0c30320-346d-a52a-09ac-5372306cd2c8','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','list','Project','module',90,0),('f0ee3e09-b226-a344-bd6d-53723054e925','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','jjwg_Maps','module',90,0),('f1975a7e-133e-c61d-6e25-537230d484a6','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','massupdate','jjwg_Maps','module',90,0),('f1d704b3-7a9d-7e1f-75d5-537230940c47','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','import','jjwg_Areas','module',90,0),('f32857a3-1aff-c66d-2566-537230ca77fe','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','access','Documents','module',89,0),('f3daafa1-4b4e-ef68-9069-5372306b40a3','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','view','Documents','module',90,0),('fad70193-639d-44ed-63f3-537230b3af20','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','edit','Project','module',90,0),('fe380215-b3e6-19bc-7701-537230029383','2014-05-13 14:47:58','2014-05-13 14:47:58','1','','export','jjwg_Areas','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Create',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SugarCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.16'),('MySettings','tab','YTozMTp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjk6IkNhbXBhaWducyI7aToxMDtzOjU6IkNhbGxzIjtpOjExO3M6ODoiTWVldGluZ3MiO2k6MTI7czo1OiJUYXNrcyI7aToxMztzOjU6Ik5vdGVzIjtpOjE0O3M6MTI6IkFPU19JbnZvaWNlcyI7aToxNTtzOjEzOiJBT1NfQ29udHJhY3RzIjtpOjE2O3M6NToiQ2FzZXMiO2k6MTc7czo5OiJQcm9zcGVjdHMiO2k6MTg7czoxMzoiUHJvc3BlY3RMaXN0cyI7aToxOTtzOjg6IlByb2plY3RzIjtpOjIwO3M6OToiRlBfZXZlbnRzIjtpOjIxO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7aToyMjtzOjEyOiJBT1NfUHJvZHVjdHMiO2k6MjM7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7aToyNDtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7aToyNTtzOjk6Impqd2dfTWFwcyI7aToyNjtzOjEyOiJqandnX01hcmtlcnMiO2k6Mjc7czoxMDoiamp3Z19BcmVhcyI7aToyODtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO2k6Mjk7czoxMToiQU9SX1JlcG9ydHMiO2k6MzA7czoxMjoiQU9XX1dvcmtGbG93Ijt9'),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Contacts','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('notify','allow_default_outbound','2');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('249574bc-7a88-e881-f9de-5372310825dc','24ac4ee4-8868-a616-6c43-537231102a96','1','Users',1,0,'2014-05-13 14:53:29','2014-05-13 14:53:29',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('24ac4ee4-8868-a616-6c43-537231102a96','cbrdi@selkirk.ca','CBRDI@SELKIRK.CA',0,0,'2014-05-13 14:53:29','2014-05-13 14:53:29',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('529008b1-3613-04f1-b637-5372305761a2','2013-05-24 14:31:45','2014-05-13 14:47:58','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'email'),('b069c8c3-a6f9-425a-f6ac-5372300517be','2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('b238c53d-bba5-f266-5254-537230d9eb50','2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('e0fa0ca3-9719-0ea0-bd05-5372304d987d','2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,NULL),('e2c575e1-e12e-2bf4-435b-5372307324d2','2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL),('e6c441da-c1c4-8e1f-b56d-537230bb3c77','2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,NULL),('e9511db2-5be5-bdab-9965-5372309f2db6','2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('eb636ca4-7955-85b5-6898-5372304c4b43','2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2014-05-13 14:47:58',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2014-05-13 14:47:58',0,0,0,0,1,'true','8','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('36777687-d872-c70c-858b-537230e0abd5','system','system','1','SMTP','gmail','localhost',25,'','',0,0);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('1254924d-4bcf-acbd-cdf5-5372301765f1','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12a5ff93-24fc-b5c9-46d4-5372304d7911','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12f6a7c7-ccfb-8710-fe12-537230b73ab9','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13300923-513a-2026-8e97-537230238dcb','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('137fd7f7-56db-bbc3-c249-5372302cfdd7','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('13c8d6f2-11d0-211e-d4b4-537230d9e963','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1412768f-f422-2420-3a9a-537230606132','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1476c8c6-c462-d5c0-4030-537230c86f99','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('14bdaf90-9d6f-67d0-d1ad-537230ae5bea','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14dda03b-a982-787d-8df8-53723035c469','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('150500d3-2cee-4a22-5105-53723088bec3','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1525cda3-06c2-623b-29a0-5372301d45d0','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('154c2bd4-7851-db95-b3d2-53723021e50c','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1594ae2d-7c6d-e404-6ee5-537230ad6b88','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('16ee4630-41cc-182f-f65b-537230281282','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c988358-3705-c6b0-af15-537230744c6b','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ce49dc7-a6d3-4e8b-f4e9-537230676003','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d2a4f35-a97b-2efe-eceb-537230ee48b1','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e988e17-1ccb-79ff-543e-537230f5bf5a','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1eec0136-6b04-45f0-fffd-53723073e225','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f3b4561-087f-5447-c73f-53723000888f','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2001c969-6b9e-75f1-f01a-5372305354a1','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('20b145b4-eb5c-8ffe-1467-537230e79c4a','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('20fae7a3-b584-33f3-504c-537230b79063','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('2143accc-2418-4afb-fdcc-537230692f87','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('218cf196-45da-2671-6a28-537230180b2f','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('23eece85-0e6e-0cec-4ea3-537230887d39','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2445ecb3-51a6-0117-34fd-5372303168d5','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('249551fc-49eb-d50c-c557-537230d544c2','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24fa4e4b-0691-54c8-6c2e-537230a1f7b9','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2542fdbc-e097-5056-b0e1-537230b93354','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('25896868-6ccd-78b2-c118-5372300dd594','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27bbf474-cc72-8e76-3c5b-537230d4a4fc','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2801e2b0-49a2-cce8-8dda-537230cad037','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2848155f-da05-f97d-6ea8-5372306f46c2','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('286ffd50-1287-e2c4-11b3-537230cb92c4','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('28c434fa-d42e-0fbb-f703-537230349064','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('290f5d29-d0de-6536-e2a7-537230c39601','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bef38a6-903a-0f95-e99d-537230c46c2b','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c3896a6-e7fc-edbf-03ff-537230731ee5','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2e1a96bd-bca7-da64-2303-537230972aea','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2e685cd3-aceb-deeb-7e5a-5372305f8481','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2eb2cca7-6159-5ea6-3a7e-537230958d6c','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2efc42c7-c59a-b050-59ba-537230515ff1','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f4a0bcf-e8b9-05c6-0d6d-53723093f3a0','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f9c46e1-e36a-ab81-361a-537230210a80','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2fe478ed-22db-49b4-06f8-5372309cf5b5','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('302fd748-f4fc-1575-0f00-53723095cb9e','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('307b7a95-5f14-b19a-ddd6-5372304eea35','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30c38684-eb1d-1e4a-b435-537230328d65','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('310e1fc5-74fe-c617-ab81-537230789eb8','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31d817cd-2b34-32e1-052a-537230f6927d','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3223bff1-6118-d185-6263-537230a79b95','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3271dfdb-0b3d-52c8-0050-5372300fc7eb','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('334d4236-7f8c-49ca-1fd8-53723079a6ca','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3396f8f5-187a-cc2c-0bbc-5372307eac55','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('354f6a27-d966-fb40-6aeb-537230f93002','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('359b556d-9905-3e7a-8a60-537230b52e16','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35e55509-21da-30a5-06d6-537230145c91','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3765253e-43c6-eacd-ff1f-53723029af56','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('3906298c-5b07-af00-78f9-537230bc76da','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('3cf131cb-b99b-9994-04a5-537230aab557','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ea518f6-d6e1-af51-c277-537230fb373b','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3eefa461-c3b8-d3d7-a825-537230952d2d','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f3b41b9-b233-d936-d33c-53723099ce2d','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f85b020-93d2-8812-9766-537230c9399c','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('3fd12aa2-e16a-bc07-5d84-53723083e502','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('46124f71-28ed-c2de-4455-537230c580d6','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('48f8efab-9109-4a1d-ef47-53723086c2fe','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('494275f0-8e15-bee4-aaf8-53723078dc8a','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('498b5e3b-39b6-7e55-4d35-5372303a1705','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49e63f58-03d5-c452-53bb-537230be7c06','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a35e0e1-b86b-aeab-b178-53723035dc91','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a82099d-5b57-6be8-e899-5372309a8f67','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4ad00254-2c51-86ed-3d04-5372307e1796','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('4b1df6b3-6b49-0a1b-9036-537230cff1c4','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('4b69de6d-d933-f679-ff8e-537230f1026c','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('4c0009a5-5c3a-fd38-1ae5-53723083d0d5','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4da93fa9-4a51-3a4c-ef68-537230a8cd58','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('4df7b28c-5285-3c91-e749-53723060c181','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('4e43a451-66bf-2f52-c89f-5372306589e7','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('4e91d3ea-59c1-ec93-e991-537230bb1b34','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('4edc3d6e-539b-7744-62dd-537230c4bc31','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('50a61ba4-3063-8794-6a67-5372306604f3','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('50ec0287-c815-5614-a703-537230a5ba5e','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51b72c55-9ede-44c3-1679-537230c9499d','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('51e68000-605e-29e6-5919-537230534f14','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5231fb5f-e98b-a8ee-b807-5372309ecc53','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5277967d-77f9-8f76-5a8a-53723075cbd2','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52c41f8e-2222-c0c1-f621-537230404657','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('53e2e241-52ca-9e17-2df4-53723038d3ea','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('551b21eb-25ae-17ad-3bc7-537230b2a631','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('561d03b9-95d2-e6e3-203e-5372301e28d5','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5620a026-7a4b-e317-6cb9-5372307d8879','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('572a86de-a176-d161-def2-537230dda2e8','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('58311155-d4d2-c812-393e-537230b8b9c0','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('59412b84-9571-c5f7-6bf8-537230ac77f1','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('5a4deede-529f-d851-5e10-5372302dc593','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('5ab40110-1637-06ca-154f-5372301f32d0','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ac32d01-f7b7-6681-002e-53723012bce5','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b3ced92-89d8-fb3a-e4ea-537230915d6f','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('5c593200-885d-ebc0-d6ec-537230915926','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('5c6a9d10-e4fc-c483-0858-5372305fab31','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d639d10-0f48-2eb9-eadb-537230eccc27','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('5e68f5c9-06d1-718f-7af6-5372301bf288','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('60d3e9ea-601a-22d6-5936-537230985134','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('61eda3d5-2908-72c7-b8f4-53723067c816','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('62186b31-ffac-8ea4-76fd-537230eb2d14','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('6261471d-dacf-e43e-164e-53723064d15f','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62a55b1c-fc54-5768-a455-53723006eca5','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62ea62c8-4077-5092-bc75-53723037f3c9','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('63df5465-be0d-736d-fe76-537230b70bf7','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('642358d6-059e-35fe-11d6-537230468ed3','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64f7f477-5604-9db6-daef-537230a8d5c8','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('66f2cd55-1b07-3ced-bbdc-5372306bd6f1','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('673e964f-fcc5-4eae-a753-53723070e758','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6786a488-c105-d4a3-9c8b-53723060d871','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67ce607b-8ee9-7238-ee6a-537230f35af5','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ba6308e-4835-72d7-679b-53723043c55f','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('6c04076a-d8f7-3805-d1b8-5372303f0ef8','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6cd430fa-ac31-9ede-cd0d-537230de1de9','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('6d1ed2cc-1cfa-da18-6e2d-537230473c7f','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('6d8d90ad-22de-b0a9-900a-5372309fbf5e','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('6df0ed8c-c619-4bcd-b51a-5372306817d2','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('6e3d5e35-b3a8-c3eb-43c1-537230927ff3','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('6e862bb1-b27d-1142-c2f4-5372303b611a','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('6ecf810d-cc71-e906-a20b-537230da5736','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('6f1864ab-b2bf-171e-199d-537230547ff3','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('708b0680-d4aa-0ea3-d785-5372305ed750','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('7098142f-4120-3f3e-9cca-537230281445','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70df0de4-2b80-5c13-c6e1-5372301a5fd8','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7126bcd0-b86a-e24e-f195-537230cf2cba','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('716d12bc-e85b-544c-263e-53723058d86b','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('71b6875d-7c1c-1bb8-9811-53723042ecef','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('7213f7f7-d15f-4226-8e9c-5372306d5609','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7220e3b3-7f23-f2d1-3adb-537230dc67b3','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('725be70d-3152-71ab-0ad3-537230d697fd','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72688535-12a2-b4bd-592b-537230499824','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72a23347-db0c-4170-b6f4-537230a0a377','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72afcde6-fa54-0151-0451-537230acd083','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72e86a2c-b71c-0a71-f592-5372301d9c7a','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72f63bd0-1904-ee0e-2d65-537230269e97','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('732ddb7b-0082-424b-7b46-53723007c681','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('733b3e4f-e013-7f4a-000a-537230ab5fcb','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('73733cdc-cd84-5660-a5d5-5372306c9c50','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('737e27b3-6121-081f-e4c9-537230240dce','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('739dd1a7-56c4-2535-1773-537230ad6f4d','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('73b86cb3-aa75-e73a-6813-53723015ea48','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('7515015e-d6d3-80ef-429c-5372301793e9','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('75f0362a-8b37-ba99-9b74-537230dd9bc6','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('76100a16-e8e2-150b-f2bf-537230739e67','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77164891-4bee-76d3-d4c9-537230ca47be','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('78226694-32f1-6283-1000-5372307e5450','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('7926e6fd-8625-0a4e-c9cf-5372307d1305','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('7a1be4ee-4271-bf78-ff80-537230a1dc29','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('7b426e26-23ce-21f2-79d0-537230d204b4','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('7bf8482d-d8db-955b-8544-5372302ed42c','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c4170cc-33e2-beba-9876-537230f92fb3','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c4fe741-f484-4916-971a-5372300990c2','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('7cac5fa9-bf75-b81f-82e4-5372304ed658','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cf1b773-37d2-2a98-6ec3-537230ef9860','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_field','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d381a10-6bf2-cd5e-a6bc-5372300a0df1','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7dba5597-36e3-964c-574f-537230a424df','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('7fa6932d-b884-6e53-f31f-5372306e9f89','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8004ac59-f04b-d6d3-679b-537230ce4762','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81946665-9c5a-f991-d660-537230184e3c','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81d5f1d3-114d-85a1-ea5d-537230efa4bb','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81dfe86f-02b5-5d6b-aeb4-537230cc755c','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82157cb0-3499-457e-09fb-5372308ce519','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('8220a5ff-244f-5e26-e119-537230022fdb','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('822a9071-c157-542e-85f1-537230a1142a','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83285ffa-470c-058a-d015-537230a8a254','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('8434ebad-7c5c-98a8-9c64-5372301d7046','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('84579c87-bc47-0bf3-b428-5372305008f5','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('846313b5-e8e3-134f-caa1-53723025b246','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84a0566e-9f52-0d61-c7ed-537230eecb91','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('84aba62d-a9a7-6061-6bf2-5372308fd34b','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84e99f0c-4dec-97d8-b16b-53723015d6cb','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8530d50f-ec68-bcf9-c7ad-537230acd6df','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('856cbd43-014e-de7d-ab30-53723037fc78','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('857758a0-8048-5734-db78-537230102297','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('85bc7e58-2971-5191-2cc2-5372301d027c','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('86823674-40b8-f02b-00ef-537230cc6223','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('878e1147-3557-ddc0-15a0-53723067e6ca','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('8800ba2b-33c2-f167-29a3-537230db078a','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('88482f3f-63d3-b2c3-d4ef-537230e09d46','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('889076a0-928a-5db4-b5d7-537230d9c732','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('88d7a08a-1ab3-de31-7b5b-537230e8814c','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('891c92c5-7fe9-195d-5f81-5372305f1873','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('89554251-063c-be37-f61e-5372302b5de7','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('8a768662-c878-8bb5-14ba-537230bcc1b9','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('8ac1b8ab-e630-59be-9e68-537230d0ea3a','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('8b0a29cc-31e3-82a0-4ee1-537230d7e23a','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('8b529842-4184-e700-ec2f-5372305d4db7','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('8b9b27de-e90e-8ea2-0bb7-53723041a3a3','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('8c100a0c-5164-5bcc-e093-5372309e315b','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d5d9de3-e37d-48df-faba-537230a818ee','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('8e4418ac-e865-3c65-799d-53723010f62c','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('8e70d5f7-7d4e-c872-a566-53723059f226','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ebe7afa-db87-670b-9ca6-537230ca6ba8','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f09d8e2-db1f-4fca-11b4-537230d63015','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f56e4fb-eaf5-6ce7-c218-537230360c14','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('900af428-5485-7780-4f40-537230eec1e5','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('9053711e-4570-426e-ffbf-537230912519','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('909d05d3-90d3-81f9-417a-5372309887c1','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('90ec6698-fd2f-6ef0-d223-5372309e99a7','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('91392260-29ea-7f1d-8ba2-53723034e060','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('9185f20a-8630-5451-6812-537230d63361','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('91d643cb-3dfa-0fce-c636-537230923ac0','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('922408c3-7c83-b326-59eb-537230bf143a','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('92718bcd-a132-3c65-4622-5372301d8a49','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('92d57619-ece3-3731-b69c-537230048ac1','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('9323a083-35c4-50ad-2431-537230afcb21','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('936f6a00-1684-528c-980c-537230710fba','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('93b60c90-7c9b-cac8-b736-5372302ac82d','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('93bd0ebc-7361-3c27-cc7f-53723000d992','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('940d75d4-aa8f-c461-586f-5372304f5435','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('945b8605-f4f1-a21e-b15f-53723084266f','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('94a7a5e0-79b7-7340-3ea3-5372301b7c98','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('94c60ee7-f430-6e53-11c3-53723046baa2','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94f4ccdb-2dbb-8ff7-651f-537230dd2cbc','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('95350946-b052-b858-bbcb-537230e55dd8','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9544977f-eb7c-89d2-9ae9-537230563837','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('95855a01-7490-754d-4fd2-5372306209d5','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('95cd4156-3cc4-27a6-98e9-537230cb9125','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96171b60-f5e0-90b1-f3da-5372309a1c0d','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('965f71c9-d19a-56b2-78e4-537230704636','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('96824960-b884-7203-4106-537230b06389','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('96a8a7a5-3e61-bf74-f95a-5372309fb9e2','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('987b07eb-28a2-6a79-68b4-5372304cb006','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98dd5ec4-75f1-575e-9674-537230f1e606','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('991c0345-c02f-b28f-1730-5372307a7f4c','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('992da25e-3ebd-5f51-0c02-537230b8dea0','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('997a551a-a06b-382f-2df1-5372305653aa','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('999b89f5-f4eb-bf7d-09f3-5372306e49f7','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99c275ed-27ef-45c4-1df4-537230279a53','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99e8857e-0e2d-0c7b-5d44-5372305ff6d6','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a0b0f6f-5b01-6471-5b47-537230061057','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a335d2e-08e5-4685-d301-537230333001','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a7e4771-cd1a-1c03-e1b8-53723015f817','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d8d064d-b1cf-1885-a67e-537230be5d4c','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1e70d9e-0eab-ac94-38bd-53723051b38b','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a37ed523-51e6-2adb-468a-5372300f26be','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3bb4cb6-7aa1-8bf8-d94b-5372309c2e39','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a409858b-f95b-04f6-8da2-53723017db36','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a45552df-1ec0-fff4-d4ce-5372308aa6e3','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a66e0b35-d6ae-1371-2544-537230823c7d','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('abdc3954-e8e8-23d4-34c9-537230694413','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac2d70b1-4d90-cf44-7b9f-5372306d7ae2','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac7b9d79-36b8-16f0-e7f5-537230c10524','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ace4723e-bb84-050f-4f5d-53723009351a','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad2fea76-bb09-a434-aa29-537230c33139','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad7b9e4c-1abd-16fa-6a56-537230efc62e','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('addcd334-77b7-adff-f792-537230d91150','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6ff3f7a-a407-6e48-bcfa-537230e04e6f','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b74c99f9-c724-3c33-a08b-537230331dbe','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b95011ec-8e81-3d85-8cb0-5372309feafc','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9918766-32f1-1bad-9e64-5372308a2400','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9a0648d-0169-6a93-b23f-5372301018a6','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9e08b91-3950-cd70-11ce-53723006a6ba','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('b9ef19a5-bec1-212d-8957-537230f880a9','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba390f70-a3a3-a470-71b3-537230b4f99b','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2464f2b-4c00-c756-700f-537230071c9d','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2991ec4-4426-79c9-0d4d-537230f756b0','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2eefdcd-8e40-349c-63db-537230f8ad94','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3400fc6-802f-cbb7-ab68-537230ac169a','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c42383e2-c6d8-cc78-2f29-5372302e0745','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c64441f6-6a66-fcab-59a1-537230f807e8','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c69210a9-d787-5708-5756-53723073fbb2','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6dd256b-3b3b-36ab-3ab8-5372307700a6','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7042bf1-71a2-d2d4-6daf-537230e843c2','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7274ecf-01d5-20ef-b87c-5372308c331d','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('c7525859-ce1d-cbf4-163b-537230293094','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7722377-b1f8-968a-f1c7-537230980c60','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('c79f3328-759a-831f-dfd4-5372307b9848','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7bd48e3-83ed-929d-1515-537230c8eeb6','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('c80b610f-67cf-81b6-9e76-5372304f0bdf','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d265b013-e96e-22eb-2532-53723073aaf5','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d2b434ad-f35f-ce14-f858-5372302bf8cd','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3001b41-a352-9a9a-ccfd-5372304e0cbd','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d34f5145-8401-ebba-ce37-5372305aa9c8','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4b749e9-10d7-d8ca-7318-537230b4cd88','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d506cfad-a464-f096-1fc6-537230e8e919','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d55173fd-136e-d224-8919-5372300954ee','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d57b343a-03ad-98bf-a8fa-537230a9cf35','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d59afaf0-bcf7-d0a6-95ad-537230f8f2dd','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('d5e05c7b-4a85-bf45-c2c9-5372308f57c8','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d85a3df0-2624-79ec-2e76-5372308da7d1','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8a5ede9-ec5e-3199-44b2-53723095a692','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8edfee0-0f93-8b57-eb75-537230a020b0','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d935660f-a3ae-6abd-982a-537230a04c1e','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('d97d6d22-bf85-cac2-f14c-537230b29e6f','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('d9c4e36e-9222-11e6-8339-53723093d279','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da0b72dd-1bf1-bdf3-e565-537230b3a5c1','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('da521182-8e2a-4824-cba7-537230ff774b','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('da9afe9e-cb4c-bf54-3fed-53723097ae62','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('dae36f35-38f8-19fa-4adb-537230d06933','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('db2b9106-f2ab-2667-ebf6-5372303914bd','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('db71a400-5517-d806-7ad2-537230c17619','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('dde19ec8-1a12-e3ef-039c-5372305ddcd4','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de2fb055-8f5b-067b-8ab4-537230e21dd5','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de7ed84e-15dc-bb84-68d4-537230864641','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('decd5023-4d50-1612-e23c-5372304aa31d','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df174c07-0814-ba7c-34b4-537230eff75e','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df611d4c-d0dd-482f-82d7-537230c9c718','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e19eb0b9-aefe-9c03-794d-537230f98d97','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e1ed0514-d083-428b-6d51-53723047de20','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e23e66b1-a9e5-29aa-3ed6-53723047c1c3','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e288efca-ce5b-4cec-e692-537230a32b32','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e531ac2f-3dc7-4b08-9704-537230a99dde','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e57a9267-eab7-881b-5f4b-5372304a57c2','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e5c14dac-0971-e84e-82c0-537230438daa','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e60745b1-4c79-2254-f0c1-53723076533d','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('e65105af-df80-1476-9a6f-5372306bd2d5','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('e6986987-f0c7-7eab-6a1a-5372308aa605','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('e6e04a90-2f18-8988-e07f-537230c64363','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('e726d37b-6c10-adaf-43e0-53723025d596','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('e74d6cb1-e794-f77c-15bb-5372303685d0','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e79ae4d7-8a29-5ef4-e497-537230316694','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9eb0588-3327-93a8-97fa-53723062270e','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ea374bc7-11a8-415d-7902-537230f30646','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0016c57-7559-349f-7f97-537230a306c4','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0603694-fa34-3297-2242-5372303df2ed','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0a77fc2-3156-33d7-07d5-537230a8b23f','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0ee7c41-c552-c3c5-7122-5372302e89e1','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('f1346738-9233-ba8c-22f5-537230d5f24a','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('f179a012-6125-7148-55da-537230752e15','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('f1c13c5f-e2a4-a3e2-befb-537230c8d657','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('f20b6da8-6eff-6e26-b916-5372301dd247','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('f2531891-96d8-440c-cc1d-537230b4af2a','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f29a9c6f-e608-7992-a11c-5372302a88e9','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f35b689d-61cf-3d30-6768-537230588675','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3a7bf3d-3d26-8752-ddbf-5372301a51ec','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3f3ca73-d5f4-bb7b-9365-5372304f0a2b','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('270b040a-aacc-ff7c-0814-5372304c9658',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Perform Lucene Index','function::aodIndexUnindexed','2005-01-01 11:15:00',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',1),('397307de-ac7b-6930-2897-53723032dbe9',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Optimise AOD Index','function::aodOptimiseIndex','2005-01-01 11:15:00',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',1),('9cd24b5e-7b75-8070-3497-5372306667fa',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 12:30:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('9dd841e1-fc0b-b93f-e7b9-537230436ee6',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 09:45:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Inactive',0),('9e9a4311-5e0c-0d1d-99cc-537230fa958e',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 14:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('9f560db0-a74b-6922-09a0-537230042c93',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 06:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('a0112424-e89a-9c57-1212-537230f3c35c',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 13:30:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('a0ccf4ed-0859-3791-3186-537230fea463',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 19:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('a1886fc3-ed25-f006-f99b-5372308688a2',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 15:30:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('a24439a6-6bf0-857b-21da-537230b58ecf',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 07:45:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('a2fe4ea0-5c31-e053-985c-53723046b020',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 07:45:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('dcfa7f00-2eac-9ff4-1b55-53723022cb42',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Run AOW WorkFlow','function::processAOW_Workflow','2005-01-01 13:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('f3f56c30-5648-4d4b-8664-537230eae610',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','AOP Check Inbound Mailboxes','function::pollMonitoredInboxesCustomAOP','2005-01-01 11:15:00','2020-12-31 00:00:00','*/1::*::*::*::*',NULL,NULL,NULL,'Active',0);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('161c8f43-b58f-d4e9-44fe-537231c69ce4','Home',0,'2014-05-13 14:53:29','2014-05-13 14:54:11','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjQ6e3M6MzY6ImMxYTFhNGFjLTgzYzctNzZmZS0zYTM2LTUzNzIzMWJmOTEyYiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3MToiY3VzdG9tL21vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJjN2RkYmQ0Mi1lOWQ0LWE3Y2UtZDRjZi01MzcyMzFhMWJhNjAiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FsbHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FsbHMvRGFzaGxldHMvTXlDYWxsc0Rhc2hsZXQvTXlDYWxsc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJjOTlmZGY1Ni01ZjBmLWZkNzEtODc3My01MzcyMzExODgxOWIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJjY2FmNjU0Yy03M2RlLTQ4MTgtN2YzZi01MzcyMzFjNTBkZDYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Mzp7aToxO3M6MzY6ImM3ZGRiZDQyLWU5ZDQtYTdjZS1kNGNmLTUzNzIzMWExYmE2MCI7aToyO3M6MzY6ImM5OWZkZjU2LTVmMGYtZmQ3MS04NzczLTUzNzIzMTE4ODE5YiI7aTo0O3M6MzY6ImNjYWY2NTRjLTczZGUtNDgxOC03ZjNmLTUzNzIzMWM1MGRkNiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToxOntpOjA7czozNjoiYzFhMWE0YWMtODNjNy03NmZlLTNhMzYtNTM3MjMxYmY5MTJiIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('19a96465-2bfb-ac1e-83a6-537231d5edd5','Home2_CALL',0,'2014-05-13 14:53:29','2014-05-13 14:53:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1b180215-02cc-5168-dc9d-53723104d259','Home2_MEETING',0,'2014-05-13 14:53:29','2014-05-13 14:53:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1c8d382a-d6de-818f-5bb7-537231471d65','Home2_OPPORTUNITY',0,'2014-05-13 14:53:29','2014-05-13 14:53:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1fdba441-7048-9acb-26a0-537231d09c2f','Home2_ACCOUNT',0,'2014-05-13 14:53:29','2014-05-13 14:53:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('215041ba-3dbd-87da-f897-537231166613','Home2_LEAD',0,'2014-05-13 14:53:29','2014-05-13 14:53:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('22c57d64-e304-74b3-5a92-53723187d592','Home2_SUGARFEED',0,'2014-05-13 14:53:29','2014-05-13 14:53:29','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('254b2b9c-65bb-03ef-e23e-53723179a4d9','ETag',0,'2014-05-13 14:53:29','2014-05-13 14:53:29','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('9bcfd9e9-5a30-136f-784a-5372304368da','global',0,'2014-05-13 14:47:58','2014-05-13 14:53:29','1','YToyNzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjliYTRkNjI3LWRmNjEtYTMxYS03MmEyLTUzNzIzMDViMWFjZCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTc6IkFtZXJpY2EvVmFuY291dmVyIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO30='),('bc749019-e0bf-4069-4373-537232d77b48','Accounts2_ACCOUNT',0,'2014-05-13 14:57:49','2014-05-13 14:57:49','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$1$.Z8Pi8AD$DRapEBO6YOEzQhA17HDez/',0,NULL,NULL,1,'Admin','Administrator',1,0,1,NULL,'2014-05-13 14:47:58','2014-05-13 14:53:29','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('a67489ea-ca3a-bf42-e19c-5372307dd6b2',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Chart Data Cache','3.5.1','3.5.1'),('a721d644-6912-db5c-4ae6-5372300a2ef8',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','htaccess','3.5.1','3.5.1'),('a7c7e5ad-a2b0-4f1c-3e70-537230ae81bc',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Rebuild Relationships','4.0.0','4.0.0'),('a86ec85e-f697-b09f-45ef-537230eac53c',0,'2014-05-13 14:47:58','2014-05-13 14:47:58','1','1','Rebuild Extensions','4.0.0','4.0.0');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-13  8:03:31
