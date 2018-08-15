-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: 123wifi
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('0','jhipster','config/liquibase/changelog/00000000000000_initial_schema.xml','2018-05-31 23:44:13',1,'EXECUTED','7:a73e95f19f0ba6dd5cebaae8f8f59ce2','sql','',NULL,'3.5.3',NULL,NULL,'7785053793'),('00000000000001','jhipster','config/liquibase/changelog/00000000000000_initial_schema.xml','2018-05-31 23:44:14',2,'EXECUTED','7:cb931c2b8ee1a3e2195a44c9905fb22e','createTable tableName=jhi_user; createIndex indexName=idx_user_login, tableName=jhi_user; createIndex indexName=idx_user_email, tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableN...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104318-1','jhipster','config/liquibase/changelog/20180112104318_added_entity_Location.xml','2018-05-31 23:44:14',3,'EXECUTED','7:2ce8993206d4bb5d823baa5de21788ea','createTable tableName=location','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180323180539-audit-1','jhipster-entity-audit','config/liquibase/changelog/20180112104318_added_entity_Location.xml','2018-05-31 23:44:14',4,'EXECUTED','7:a047ddb9fbe262e6c31a4958bfcc473f','addColumn tableName=location','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104319-1','jhipster','config/liquibase/changelog/20180112104319_added_entity_AccessPoint.xml','2018-05-31 23:44:14',5,'EXECUTED','7:6d62b8c99bc0faa39bf5e034897a983f','createTable tableName=access_point','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180314165015-audit-1','jhipster-entity-audit','config/liquibase/changelog/20180112104319_added_entity_AccessPoint.xml','2018-05-31 23:44:14',6,'EXECUTED','7:ec0fc1c7d813bb0f23d5968623e0061e','addColumn tableName=access_point','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104320-1','jhipster','config/liquibase/changelog/20180112104320_added_entity_Gateway.xml','2018-05-31 23:44:14',7,'EXECUTED','7:051e8e1173db20f3a2854dcbb3767443','createTable tableName=gateway; createTable tableName=gateway_network; addPrimaryKey tableName=gateway_network','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180323180539-audit-1','jhipster-entity-audit','config/liquibase/changelog/20180112104320_added_entity_Gateway.xml','2018-05-31 23:44:14',8,'EXECUTED','7:c6459a9c1a65f7046c2f2ad689de7b0b','addColumn tableName=gateway','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104321-1','jhipster','config/liquibase/changelog/20180112104321_added_entity_Network.xml','2018-05-31 23:44:14',9,'EXECUTED','7:92ad090c6fca5f70955d41384e3ac607','createTable tableName=network','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104322-1','jhipster','config/liquibase/changelog/20180112104322_added_entity_Wireless.xml','2018-05-31 23:44:14',10,'EXECUTED','7:8f3d90dbe46c9d333b2b59336d9cb5c2','createTable tableName=wireless','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180323180539-audit-1','jhipster-entity-audit','config/liquibase/changelog/20180112104322_added_entity_Wireless.xml','2018-05-31 23:44:14',11,'EXECUTED','7:ffcceb04ab31d3f615b67d0a99350811','addColumn tableName=wireless','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104323-1','jhipster','config/liquibase/changelog/20180112104323_added_entity_WirelessDevice.xml','2018-05-31 23:44:14',12,'EXECUTED','7:50d5a768022dee23b7d78552d37b04e3','createTable tableName=wireless_device; createTable tableName=wireless_device_wireless; addPrimaryKey tableName=wireless_device_wireless','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104324-1','jhipster','config/liquibase/changelog/20180112104324_added_entity_SplashPage.xml','2018-05-31 23:44:14',13,'EXECUTED','7:54f1523696baeba12c3d7413ec578d45','createTable tableName=splash_page; createTable tableName=splash_page_login_type; addPrimaryKey tableName=splash_page_login_type','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104325-1','jhipster','config/liquibase/changelog/20180112104325_added_entity_FieldName.xml','2018-05-31 23:44:14',14,'EXECUTED','7:a55b96dc6f3a137afa36a96e4a9a8b87','createTable tableName=field_name','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104326-1','jhipster','config/liquibase/changelog/20180112104326_added_entity_SplashPageTheme.xml','2018-05-31 23:44:14',15,'EXECUTED','7:f1b4093cc92afa298367e525358ddd74','createTable tableName=splash_page_theme','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104327-1','jhipster','config/liquibase/changelog/20180112104327_added_entity_DetailSplashPage.xml','2018-05-31 23:44:14',16,'EXECUTED','7:e8508882dd68e66168e99cec505f15b9','createTable tableName=detail_splash_page','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104328-1','jhipster','config/liquibase/changelog/20180112104328_added_entity_LoginType.xml','2018-05-31 23:44:14',17,'EXECUTED','7:71d72cd87c24c8bd674201ccc2a9e2b5','createTable tableName=login_type','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104329-1','jhipster','config/liquibase/changelog/20180112104329_added_entity_LoginActivity.xml','2018-05-31 23:44:14',18,'EXECUTED','7:e73d69246d817492dc0ae3955d27bfcb','createTable tableName=login_activity','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180420182250-audit-1','jhipster-entity-audit','config/liquibase/changelog/20180112104329_added_entity_LoginActivity.xml','2018-05-31 23:44:14',19,'EXECUTED','7:61e010f3f8c50d9930abcedaf9c4f646','addColumn tableName=login_activity','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104330-1','jhipster','config/liquibase/changelog/20180112104330_added_entity_PortalUser.xml','2018-05-31 23:44:14',20,'EXECUTED','7:18f1a83e297c4e61fa728deeb3744bde','createTable tableName=portal_user','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104331-1','jhipster','config/liquibase/changelog/20180112104331_added_entity_Organization.xml','2018-05-31 23:44:14',21,'EXECUTED','7:5458c5fa0c38fb3ee3578735ebb4c613','createTable tableName=organization','',NULL,'3.5.3',NULL,NULL,'7785053793'),('00000000000001-2','jhipster','config/liquibase/changelog/00000000000001_added_column_organization_User.xml','2018-05-31 23:44:14',22,'EXECUTED','7:c8966bca0b2896affd4bcaa8a5e61bf1','addColumn tableName=jhi_user; addForeignKeyConstraint baseTableName=jhi_user, constraintName=fk_jhi_user_organization_id, referencedTableName=organization','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180314173229-1','jhipster','config/liquibase/changelog/20180314173229_added_entity_DeviceHardwareInfo.xml','2018-05-31 23:44:14',23,'EXECUTED','7:16ee9c8943b40658273c1bf55dc8853f','createTable tableName=device_hardware_info','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180323180539','jhipster','config/liquibase/changelog/20180323180539_added_entity_EntityAuditEvent.xml','2018-05-31 23:44:14',24,'EXECUTED','7:5a696671965a1033d4021cc98168b228','createTable tableName=jhi_entity_audit_event; createIndex indexName=idx_entity_audit_event_entity_id, tableName=jhi_entity_audit_event; createIndex indexName=idx_entity_audit_event_entity_type, tableName=jhi_entity_audit_event; dropDefaultValue co...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180528031217-1','jhipster','config/liquibase/changelog/20180528031217_added_entity_Voucher.xml','2018-05-31 23:44:14',25,'EXECUTED','7:b46513133a5fbfa554a9486b95e4c1d4','createTable tableName=voucher; dropDefaultValue columnName=active_time, tableName=voucher','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180528032919-audit-1','jhipster-entity-audit','config/liquibase/changelog/20180528031217_added_entity_Voucher.xml','2018-05-31 23:44:15',26,'EXECUTED','7:afdafa1a0bf170aaef4fffeae2c9fdb4','addColumn tableName=voucher','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104318-2','jhipster','config/liquibase/changelog/20180112104318_added_entity_constraints_Location.xml','2018-05-31 23:44:15',27,'EXECUTED','7:bef086a8bf8cde1459371a18a7f62b93','addForeignKeyConstraint baseTableName=location, constraintName=fk_location_organization_id, referencedTableName=organization','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104319-2','jhipster','config/liquibase/changelog/20180112104319_added_entity_constraints_AccessPoint.xml','2018-05-31 23:44:15',28,'EXECUTED','7:4bc91879236068337c21cd0c5ed2b27d','addForeignKeyConstraint baseTableName=access_point, constraintName=fk_access_point_gateway_id, referencedTableName=gateway; addForeignKeyConstraint baseTableName=access_point, constraintName=fk_access_point_organization_id, referencedTableName=org...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104320-2','jhipster','config/liquibase/changelog/20180112104320_added_entity_constraints_Gateway.xml','2018-05-31 23:44:15',29,'EXECUTED','7:c3b5db939683f268336d63ad92eed420','addForeignKeyConstraint baseTableName=gateway, constraintName=fk_gateway_location_id, referencedTableName=location; addForeignKeyConstraint baseTableName=gateway, constraintName=fk_gateway_organization_id, referencedTableName=organization; addFore...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104321-2','jhipster','config/liquibase/changelog/20180112104321_added_entity_constraints_Network.xml','2018-05-31 23:44:15',30,'EXECUTED','7:7e99a4fc24e8b6e9c21219be8cb71a23','addForeignKeyConstraint baseTableName=network, constraintName=fk_network_organization_id, referencedTableName=organization','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104322-2','jhipster','config/liquibase/changelog/20180112104322_added_entity_constraints_Wireless.xml','2018-05-31 23:44:15',31,'EXECUTED','7:cb9d0eb2f53bd8fd23e1c18ff163ef31','addForeignKeyConstraint baseTableName=wireless, constraintName=fk_wireless_splash_page_id, referencedTableName=splash_page; addForeignKeyConstraint baseTableName=wireless, constraintName=fk_wireless_organization_id, referencedTableName=organizatio...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104323-2','jhipster','config/liquibase/changelog/20180112104323_added_entity_constraints_WirelessDevice.xml','2018-05-31 23:44:15',32,'EXECUTED','7:a9728c15580e3ac9cd89b416fbbfaa02','addForeignKeyConstraint baseTableName=wireless_device, constraintName=fk_wireless_device_access_point_id, referencedTableName=access_point; addForeignKeyConstraint baseTableName=wireless_device_wireless, constraintName=fk_wireless_device_wireless_...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104324-2','jhipster','config/liquibase/changelog/20180112104324_added_entity_constraints_SplashPage.xml','2018-05-31 23:44:15',33,'EXECUTED','7:98745a90bfe4e763a7ce0472d2342347','addForeignKeyConstraint baseTableName=splash_page, constraintName=fk_splash_page_theme_id, referencedTableName=splash_page_theme; addForeignKeyConstraint baseTableName=splash_page_login_type, constraintName=fk_splash_page_login_type_splash_pages_i...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104325-2','jhipster','config/liquibase/changelog/20180112104325_added_entity_constraints_FieldName.xml','2018-05-31 23:44:15',34,'EXECUTED','7:067b2bbae942197a1e6d0803337ac7bb','addForeignKeyConstraint baseTableName=field_name, constraintName=fk_field_name_theme_id, referencedTableName=splash_page_theme','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104327-2','jhipster','config/liquibase/changelog/20180112104327_added_entity_constraints_DetailSplashPage.xml','2018-05-31 23:44:15',35,'EXECUTED','7:67e1852e2b874b791bf53cbca4491fef','addForeignKeyConstraint baseTableName=detail_splash_page, constraintName=fk_detail_splash_page_splash_page_id, referencedTableName=splash_page; addForeignKeyConstraint baseTableName=detail_splash_page, constraintName=fk_detail_splash_page_field_na...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104329-2','jhipster','config/liquibase/changelog/20180112104329_added_entity_constraints_LoginActivity.xml','2018-05-31 23:44:15',36,'EXECUTED','7:2cbc586c73e45fb2b954f8e2141c83fa','addForeignKeyConstraint baseTableName=login_activity, constraintName=fk_login_activity_portal_user_id, referencedTableName=portal_user; addForeignKeyConstraint baseTableName=login_activity, constraintName=fk_login_activity_gateway_id, referencedTa...','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104330-2','jhipster','config/liquibase/changelog/20180112104330_added_entity_constraints_PortalUser.xml','2018-05-31 23:44:15',37,'EXECUTED','7:9b3d3d9bded6b7a09a5b24bce69a786e','addForeignKeyConstraint baseTableName=portal_user, constraintName=fk_portal_user_login_type_id, referencedTableName=login_type','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180528031217-2','jhipster','config/liquibase/changelog/20180528031217_added_entity_constraints_Voucher.xml','2018-05-31 23:44:15',38,'EXECUTED','7:ceb403567d41f3714d480bb36a7cf06b','addForeignKeyConstraint baseTableName=voucher, constraintName=fk_voucher_organization_id, referencedTableName=organization','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104326-2','jhipster','config/liquibase/changelog/20180112104326_added_entity_data_SplashPageTheme.xml','2018-05-31 23:44:15',39,'EXECUTED','7:ba7770ac2ce25390702b61735f41f109','loadData tableName=splash_page_theme','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104325-3','jhipster','config/liquibase/changelog/20180112104325_added_entity_data_FieldName.xml','2018-05-31 23:44:15',40,'EXECUTED','7:9b5720430a9b4e9812459af816237b5a','loadData tableName=field_name','',NULL,'3.5.3',NULL,NULL,'7785053793'),('20180112104328-3','jhipster','config/liquibase/changelog/20180112104328_added_entity_data_LoginType.xml','2018-05-31 23:44:15',41,'EXECUTED','7:72e08153622a1cce7822867bd76a35b7','loadData tableName=login_type','',NULL,'3.5.3',NULL,NULL,'7785053793');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_point`
--

DROP TABLE IF EXISTS `access_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_point` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `serial` varchar(64) NOT NULL,
  `mac` varchar(64) NOT NULL,
  `model` varchar(64) NOT NULL,
  `checksum` varchar(64) DEFAULT NULL,
  `fw` varchar(64) NOT NULL,
  `activation_key` varchar(255) DEFAULT NULL,
  `actived` bit(1) DEFAULT NULL,
  `note` longtext,
  `last_active` timestamp NULL DEFAULT NULL,
  `gateway_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_access_point_gateway_id` (`gateway_id`),
  KEY `fk_access_point_organization_id` (`organization_id`),
  CONSTRAINT `fk_access_point_gateway_id` FOREIGN KEY (`gateway_id`) REFERENCES `gateway` (`id`),
  CONSTRAINT `fk_access_point_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_point`
--

LOCK TABLES `access_point` WRITE;
/*!40000 ALTER TABLE `access_point` DISABLE KEYS */;
INSERT INTO `access_point` VALUES (1,'70:4F:57:A4:7C:1B','7bd4d9cc84a88b70a64e67ceffa85375eb7626e2','70:4F:57:A4:7C:1B','TP-Link TL-WR940N v4',NULL,'123Wifi-ap 1.0.1','99954864900828999161','',NULL,'2018-06-01 02:57:09',1,1,'123wifi','2018-06-01 02:43:41','123wifi','2018-06-01 02:43:41');
/*!40000 ALTER TABLE `access_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_splash_page`
--

DROP TABLE IF EXISTS `detail_splash_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_splash_page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jhi_value` varchar(255) DEFAULT NULL,
  `splash_page_id` bigint(20) DEFAULT NULL,
  `field_name_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detail_splash_page_splash_page_id` (`splash_page_id`),
  KEY `fk_detail_splash_page_field_name_id` (`field_name_id`),
  CONSTRAINT `fk_detail_splash_page_field_name_id` FOREIGN KEY (`field_name_id`) REFERENCES `field_name` (`id`),
  CONSTRAINT `fk_detail_splash_page_splash_page_id` FOREIGN KEY (`splash_page_id`) REFERENCES `splash_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_splash_page`
--

LOCK TABLES `detail_splash_page` WRITE;
/*!40000 ALTER TABLE `detail_splash_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_splash_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_hardware_info`
--

DROP TABLE IF EXISTS `device_hardware_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_hardware_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) DEFAULT NULL,
  `fw` varchar(255) DEFAULT NULL,
  `dual_band` bit(1) DEFAULT NULL,
  `device_path_24` varchar(255) DEFAULT NULL,
  `device_path_50` varchar(255) DEFAULT NULL,
  `jhi_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_hardware_info`
--

LOCK TABLES `device_hardware_info` WRITE;
/*!40000 ALTER TABLE `device_hardware_info` DISABLE KEYS */;
INSERT INTO `device_hardware_info` VALUES (1,'TP-Link TL-WR940N v4','123Wifi-ap 1.0.1','\0','platform/qca956x_wmac',NULL,'ACCESSPOINT');
/*!40000 ALTER TABLE `device_hardware_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_name`
--

DROP TABLE IF EXISTS `field_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_name` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `jhi_type` varchar(255) DEFAULT NULL,
  `theme_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_field_name_theme_id` (`theme_id`),
  CONSTRAINT `fk_field_name_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `splash_page_theme` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_name`
--

LOCK TABLES `field_name` WRITE;
/*!40000 ALTER TABLE `field_name` DISABLE KEYS */;
INSERT INTO `field_name` VALUES (1,'image','IMAGE',1),(2,'title','TEXT',2),(3,'image','IMAGE',2);
/*!40000 ALTER TABLE `field_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateway`
--

DROP TABLE IF EXISTS `gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gateway` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `serial` varchar(64) NOT NULL,
  `mac` varchar(64) NOT NULL,
  `model` varchar(64) NOT NULL,
  `checksum` varchar(64) DEFAULT NULL,
  `fw` varchar(64) DEFAULT NULL,
  `activation_key` varchar(255) DEFAULT NULL,
  `actived` bit(1) DEFAULT NULL,
  `note` longtext,
  `last_active` timestamp NULL DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_gateway_location_id` (`location_id`),
  KEY `fk_gateway_organization_id` (`organization_id`),
  CONSTRAINT `fk_gateway_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `fk_gateway_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateway`
--

LOCK TABLES `gateway` WRITE;
/*!40000 ALTER TABLE `gateway` DISABLE KEYS */;
INSERT INTO `gateway` VALUES (1,'18:A6:F7:9D:A0:40','b29b1bb03b2f3f9665bbe2dd7ce656b33439154d','18:A6:F7:9D:A0:40','TP-Link TL-WR1043N/ND v3',NULL,'123Wifi-gw 1.0.1','07422700744787607223','',NULL,'2018-06-01 02:56:55',1,1,'123wifi','2018-05-31 16:45:36','123wifi','2018-05-31 16:45:36');
/*!40000 ALTER TABLE `gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateway_network`
--

DROP TABLE IF EXISTS `gateway_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gateway_network` (
  `networks_id` bigint(20) NOT NULL,
  `gateways_id` bigint(20) NOT NULL,
  PRIMARY KEY (`gateways_id`,`networks_id`),
  KEY `fk_gateway_network_networks_id` (`networks_id`),
  CONSTRAINT `fk_gateway_network_gateways_id` FOREIGN KEY (`gateways_id`) REFERENCES `gateway` (`id`),
  CONSTRAINT `fk_gateway_network_networks_id` FOREIGN KEY (`networks_id`) REFERENCES `network` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateway_network`
--

LOCK TABLES `gateway_network` WRITE;
/*!40000 ALTER TABLE `gateway_network` DISABLE KEYS */;
/*!40000 ALTER TABLE `gateway_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_authority`
--

DROP TABLE IF EXISTS `jhi_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_authority`
--

LOCK TABLES `jhi_authority` WRITE;
/*!40000 ALTER TABLE `jhi_authority` DISABLE KEYS */;
INSERT INTO `jhi_authority` VALUES ('ROLE_ADMIN'),('ROLE_LOCAL_ADMIN'),('ROLE_USER');
/*!40000 ALTER TABLE `jhi_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_entity_audit_event`
--

DROP TABLE IF EXISTS `jhi_entity_audit_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_entity_audit_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `entity_id` bigint(20) NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `action` varchar(20) NOT NULL,
  `entity_value` longtext,
  `commit_version` int(11) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `modified_date` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_entity_audit_event_entity_id` (`entity_id`),
  KEY `idx_entity_audit_event_entity_type` (`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_entity_audit_event`
--

LOCK TABLES `jhi_entity_audit_event` WRITE;
/*!40000 ALTER TABLE `jhi_entity_audit_event` DISABLE KEYS */;
INSERT INTO `jhi_entity_audit_event` VALUES (1,1,'com.vng.gbc.cloudwifi.domain.Location','CREATE','{\n  \"createdBy\" : \"anonymousUser\",\n  \"createdDate\" : \"2018-05-31T16:44:33.578Z\",\n  \"lastModifiedBy\" : \"anonymousUser\",\n  \"lastModifiedDate\" : \"2018-05-31T16:44:33.578Z\",\n  \"id\" : 1,\n  \"name\" : \"Địa điểm 1\",\n  \"longitude\" : 0.0,\n  \"latitude\" : 0.0,\n  \"note\" : null,\n  \"organization\" : {\n    \"id\" : 1,\n    \"name\" : \"VNG\",\n    \"address\" : \"182 Le Dai Hanh\"\n  }\n}',1,'anonymousUser','2018-05-31 16:44:34'),(2,5,'com.vng.gbc.cloudwifi.domain.User','CREATE','{\n  \"createdBy\" : \"anonymousUser\",\n  \"createdDate\" : \"2018-05-31T16:44:33.828Z\",\n  \"lastModifiedBy\" : \"anonymousUser\",\n  \"lastModifiedDate\" : \"2018-05-31T16:44:33.828Z\",\n  \"id\" : 5,\n  \"login\" : \"123wifi\",\n  \"firstName\" : null,\n  \"lastName\" : null,\n  \"email\" : \"123wifi.vn@gmail.com\",\n  \"activated\" : true,\n  \"langKey\" : \"vi\",\n  \"imageUrl\" : null,\n  \"resetDate\" : null,\n  \"organization\" : {\n    \"id\" : 1,\n    \"name\" : \"VNG\",\n    \"address\" : \"182 Le Dai Hanh\"\n  }\n}',1,'anonymousUser','2018-05-31 16:44:34'),(3,1,'com.vng.gbc.cloudwifi.domain.Gateway','CREATE','{\n  \"createdBy\" : \"123wifi\",\n  \"createdDate\" : \"2018-05-31T16:45:36.463Z\",\n  \"lastModifiedBy\" : \"123wifi\",\n  \"lastModifiedDate\" : \"2018-05-31T16:45:36.463Z\",\n  \"id\" : 1,\n  \"name\" : \"18:A6:F7:9D:A0:40\",\n  \"serial\" : \"b29b1bb03b2f3f9665bbe2dd7ce656b33439154d\",\n  \"mac\" : \"18:A6:F7:9D:A0:40\",\n  \"model\" : \"TP-Link TL-WR1043N/ND v3\",\n  \"checksum\" : null,\n  \"fw\" : \"123Wifi-gw 1.0.1\",\n  \"activationKey\" : \"07422700744787607223\",\n  \"actived\" : true,\n  \"note\" : null,\n  \"lastActive\" : null,\n  \"location\" : {\n    \"createdBy\" : \"anonymousUser\",\n    \"createdDate\" : \"2018-05-31T16:44:34Z\",\n    \"lastModifiedBy\" : \"anonymousUser\",\n    \"lastModifiedDate\" : \"2018-05-31T16:44:34Z\",\n    \"id\" : 1,\n    \"name\" : \"Địa điểm 1\",\n    \"longitude\" : 0.0,\n    \"latitude\" : 0.0,\n    \"note\" : null,\n    \"organization\" : {\n      \"id\" : 1,\n      \"name\" : \"VNG\",\n      \"address\" : \"182 Le Dai Hanh\"\n    }\n  },\n  \"organization\" : {\n    \"id\" : 1,\n    \"name\" : \"VNG\",\n    \"address\" : \"182 Le Dai Hanh\"\n  },\n  \"networks\" : [ ],\n  \"online\" : false,\n  \"configurationStatus\" : null\n}',1,'123wifi','2018-05-31 16:45:36'),(4,1,'com.vng.gbc.cloudwifi.domain.AccessPoint','CREATE','{\n  \"createdBy\" : \"123wifi\",\n  \"createdDate\" : \"2018-06-01T02:43:41.104Z\",\n  \"lastModifiedBy\" : \"123wifi\",\n  \"lastModifiedDate\" : \"2018-06-01T02:43:41.104Z\",\n  \"id\" : 1,\n  \"name\" : \"70:4F:57:A4:7C:1B\",\n  \"serial\" : \"7bd4d9cc84a88b70a64e67ceffa85375eb7626e2\",\n  \"mac\" : \"70:4F:57:A4:7C:1B\",\n  \"model\" : \"TP-Link TL-WR940N v4\",\n  \"checksum\" : null,\n  \"fw\" : \"123Wifi-ap 1.0.1\",\n  \"activationKey\" : \"99954864900828999161\",\n  \"actived\" : true,\n  \"note\" : null,\n  \"lastActive\" : null,\n  \"gateway\" : {\n    \"createdBy\" : \"123wifi\",\n    \"createdDate\" : \"2018-05-31T16:45:36Z\",\n    \"lastModifiedBy\" : \"123wifi\",\n    \"lastModifiedDate\" : \"2018-05-31T16:45:36Z\",\n    \"id\" : 1,\n    \"name\" : \"18:A6:F7:9D:A0:40\",\n    \"serial\" : \"b29b1bb03b2f3f9665bbe2dd7ce656b33439154d\",\n    \"mac\" : \"18:A6:F7:9D:A0:40\",\n    \"model\" : \"TP-Link TL-WR1043N/ND v3\",\n    \"checksum\" : null,\n    \"fw\" : \"123Wifi-gw 1.0.1\",\n    \"activationKey\" : \"07422700744787607223\",\n    \"actived\" : true,\n    \"note\" : null,\n    \"lastActive\" : \"2018-06-01T02:40:54Z\",\n    \"location\" : {\n      \"createdBy\" : \"anonymousUser\",\n      \"createdDate\" : \"2018-05-31T16:44:34Z\",\n      \"lastModifiedBy\" : \"anonymousUser\",\n      \"lastModifiedDate\" : \"2018-05-31T16:44:34Z\",\n      \"id\" : 1,\n      \"name\" : \"Địa điểm 1\",\n      \"longitude\" : 0.0,\n      \"latitude\" : 0.0,\n      \"note\" : null,\n      \"organization\" : {\n        \"id\" : 1,\n        \"name\" : \"VNG\",\n        \"address\" : \"182 Le Dai Hanh\"\n      }\n    },\n    \"organization\" : {\n      \"id\" : 1,\n      \"name\" : \"VNG\",\n      \"address\" : \"182 Le Dai Hanh\"\n    },\n    \"networks\" : [ ],\n    \"online\" : true,\n    \"configurationStatus\" : \"UNKNOWN\"\n  },\n  \"organization\" : {\n    \"id\" : 1,\n    \"name\" : \"VNG\",\n    \"address\" : \"182 Le Dai Hanh\"\n  },\n  \"online\" : false,\n  \"configurationStatus\" : null\n}',1,'123wifi','2018-06-01 02:43:41');
/*!40000 ALTER TABLE `jhi_entity_audit_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_persistent_audit_event`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) NOT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `idx_persistent_audit_event` (`principal`,`event_date`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_persistent_audit_event`
--

LOCK TABLES `jhi_persistent_audit_event` WRITE;
/*!40000 ALTER TABLE `jhi_persistent_audit_event` DISABLE KEYS */;
INSERT INTO `jhi_persistent_audit_event` VALUES (1,'123wifi','2018-05-31 16:44:42','AUTHENTICATION_SUCCESS'),(2,'123wifi','2018-05-31 16:50:05','AUTHENTICATION_SUCCESS'),(3,'123wifi','2018-05-31 18:36:41','AUTHENTICATION_SUCCESS'),(4,'123wifi','2018-06-01 02:31:36','AUTHENTICATION_SUCCESS'),(5,'admin','2018-06-01 02:42:29','AUTHENTICATION_SUCCESS');
/*!40000 ALTER TABLE `jhi_persistent_audit_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_persistent_audit_evt_data`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`name`),
  KEY `idx_persistent_audit_evt_data` (`event_id`),
  CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_persistent_audit_evt_data`
--

LOCK TABLES `jhi_persistent_audit_evt_data` WRITE;
/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_user`
--

DROP TABLE IF EXISTS `jhi_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(6) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_user_login` (`login`),
  UNIQUE KEY `idx_user_login` (`login`),
  UNIQUE KEY `ux_user_email` (`email`),
  UNIQUE KEY `idx_user_email` (`email`),
  KEY `fk_jhi_user_organization_id` (`organization_id`),
  CONSTRAINT `fk_jhi_user_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_user`
--

LOCK TABLES `jhi_user` WRITE;
/*!40000 ALTER TABLE `jhi_user` DISABLE KEYS */;
INSERT INTO `jhi_user` VALUES (1,'system','$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG','System','System','system@localhost','','','vi',NULL,NULL,'system','2018-05-31 16:44:14',NULL,'system',NULL,NULL),(2,'anonymoususer','$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO','Anonymous','User','anonymous@localhost','','','vi',NULL,NULL,'system','2018-05-31 16:44:14',NULL,'system',NULL,NULL),(3,'admin','$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC','Administrator','Administrator','admin@localhost','','','vi',NULL,NULL,'system','2018-05-31 16:44:14',NULL,'system',NULL,NULL),(4,'user','$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K','User','User','user@localhost','','','vi',NULL,NULL,'system','2018-05-31 16:44:14',NULL,'system',NULL,NULL),(5,'123wifi','$2a$10$n4xJy0cA5xkqWsdZbq0E1OojNelAbkqO5FscJ7zdwjViisjoFJ83.',NULL,NULL,'123wifi.vn@gmail.com',NULL,'','vi','97216069458954957918',NULL,'anonymousUser','2018-05-31 16:44:34',NULL,'anonymousUser','2018-05-31 16:44:34',1);
/*!40000 ALTER TABLE `jhi_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_user_authority`
--

DROP TABLE IF EXISTS `jhi_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`authority_name`),
  KEY `fk_authority_name` (`authority_name`),
  CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_user_authority`
--

LOCK TABLES `jhi_user_authority` WRITE;
/*!40000 ALTER TABLE `jhi_user_authority` DISABLE KEYS */;
INSERT INTO `jhi_user_authority` VALUES (1,'ROLE_ADMIN'),(3,'ROLE_ADMIN'),(5,'ROLE_LOCAL_ADMIN'),(1,'ROLE_USER'),(3,'ROLE_USER'),(4,'ROLE_USER'),(5,'ROLE_USER');
/*!40000 ALTER TABLE `jhi_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `note` longtext,
  `organization_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_location_organization_id` (`organization_id`),
  CONSTRAINT `fk_location_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Địa điểm 1',0,0,NULL,1,'anonymousUser','2018-05-31 16:44:34','anonymousUser','2018-05-31 16:44:34');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_activity`
--

DROP TABLE IF EXISTS `login_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `portal_user_id` bigint(20) DEFAULT NULL,
  `gateway_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_login_activity_portal_user_id` (`portal_user_id`),
  KEY `fk_login_activity_gateway_id` (`gateway_id`),
  CONSTRAINT `fk_login_activity_gateway_id` FOREIGN KEY (`gateway_id`) REFERENCES `gateway` (`id`),
  CONSTRAINT `fk_login_activity_portal_user_id` FOREIGN KEY (`portal_user_id`) REFERENCES `portal_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_activity`
--

LOCK TABLES `login_activity` WRITE;
/*!40000 ALTER TABLE `login_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_type`
--

DROP TABLE IF EXISTS `login_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_type`
--

LOCK TABLES `login_type` WRITE;
/*!40000 ALTER TABLE `login_type` DISABLE KEYS */;
INSERT INTO `login_type` VALUES (1,'CLICK'),(2,'FACEBOOK'),(3,'ZALO'),(4,'GOOGLE');
/*!40000 ALTER TABLE `login_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `network` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `jhi_start` int(11) DEFAULT NULL,
  `jhi_limit` int(11) DEFAULT NULL,
  `lease_time` int(11) DEFAULT NULL,
  `bandwidth` int(11) DEFAULT NULL,
  `vlan_id` int(11) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_network_organization_id` (`organization_id`),
  CONSTRAINT `fk_network_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES (1,'lan','192.168.1.1',NULL,NULL,NULL,NULL,NULL,1),(2,'priv_lan','192.168.99.1',NULL,NULL,NULL,NULL,NULL,1),(3,'pub_lan','172.16.0.1',NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'VNG','182 Le Dai Hanh');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portal_user`
--

DROP TABLE IF EXISTS `portal_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portal_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(255) DEFAULT NULL,
  `provider_user_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `profile_url` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `login_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_portal_user_login_type_id` (`login_type_id`),
  CONSTRAINT `fk_portal_user_login_type_id` FOREIGN KEY (`login_type_id`) REFERENCES `login_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portal_user`
--

LOCK TABLES `portal_user` WRITE;
/*!40000 ALTER TABLE `portal_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `portal_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splash_page`
--

DROP TABLE IF EXISTS `splash_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `splash_page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `check_interval` int(11) NOT NULL,
  `client_timeout` int(11) NOT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `trust_device` varchar(255) DEFAULT NULL,
  `auth_server` varchar(255) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `jhi_ssl` bit(1) DEFAULT NULL,
  `theme_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_splash_page_theme_id` (`theme_id`),
  CONSTRAINT `fk_splash_page_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `splash_page_theme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `splash_page`
--

LOCK TABLES `splash_page` WRITE;
/*!40000 ALTER TABLE `splash_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `splash_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splash_page_login_type`
--

DROP TABLE IF EXISTS `splash_page_login_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `splash_page_login_type` (
  `login_types_id` bigint(20) NOT NULL,
  `splash_pages_id` bigint(20) NOT NULL,
  PRIMARY KEY (`splash_pages_id`,`login_types_id`),
  KEY `fk_splash_page_login_type_login_types_id` (`login_types_id`),
  CONSTRAINT `fk_splash_page_login_type_login_types_id` FOREIGN KEY (`login_types_id`) REFERENCES `login_type` (`id`),
  CONSTRAINT `fk_splash_page_login_type_splash_pages_id` FOREIGN KEY (`splash_pages_id`) REFERENCES `splash_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `splash_page_login_type`
--

LOCK TABLES `splash_page_login_type` WRITE;
/*!40000 ALTER TABLE `splash_page_login_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `splash_page_login_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splash_page_theme`
--

DROP TABLE IF EXISTS `splash_page_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `splash_page_theme` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `html_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `splash_page_theme`
--

LOCK TABLES `splash_page_theme` WRITE;
/*!40000 ALTER TABLE `splash_page_theme` DISABLE KEYS */;
INSERT INTO `splash_page_theme` VALUES (1,'Basic','theme_basic'),(2,'Social','theme_social');
/*!40000 ALTER TABLE `splash_page_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voucher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `active_time` timestamp NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_voucher_organization_id` (`organization_id`),
  CONSTRAINT `fk_voucher_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wireless`
--

DROP TABLE IF EXISTS `wireless`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wireless` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ssid` varchar(64) NOT NULL,
  `encryption` varchar(64) NOT NULL,
  `jhi_key` varchar(255) DEFAULT NULL,
  `max_inactivity` int(11) DEFAULT NULL,
  `block_device` varchar(255) DEFAULT NULL,
  `isolate` bit(1) DEFAULT NULL,
  `disabled` bit(1) DEFAULT NULL,
  `splash_page_id` bigint(20) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL,
  `network_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_wireless_splash_page_id` (`splash_page_id`),
  KEY `fk_wireless_organization_id` (`organization_id`),
  KEY `fk_wireless_network_id` (`network_id`),
  CONSTRAINT `fk_wireless_network_id` FOREIGN KEY (`network_id`) REFERENCES `network` (`id`),
  CONSTRAINT `fk_wireless_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`),
  CONSTRAINT `fk_wireless_splash_page_id` FOREIGN KEY (`splash_page_id`) REFERENCES `splash_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wireless`
--

LOCK TABLES `wireless` WRITE;
/*!40000 ALTER TABLE `wireless` DISABLE KEYS */;
/*!40000 ALTER TABLE `wireless` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wireless_device`
--

DROP TABLE IF EXISTS `wireless_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wireless_device` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(64) NOT NULL,
  `htmode` varchar(64) NOT NULL,
  `jhi_type` varchar(255) DEFAULT NULL,
  `max_assoc` int(11) DEFAULT NULL,
  `txpower` int(11) DEFAULT NULL,
  `access_point_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_wireless_device_access_point_id` (`access_point_id`),
  CONSTRAINT `fk_wireless_device_access_point_id` FOREIGN KEY (`access_point_id`) REFERENCES `access_point` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wireless_device`
--

LOCK TABLES `wireless_device` WRITE;
/*!40000 ALTER TABLE `wireless_device` DISABLE KEYS */;
INSERT INTO `wireless_device` VALUES (1,'11','HT20','BAND24G',20,15,1);
/*!40000 ALTER TABLE `wireless_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wireless_device_wireless`
--

DROP TABLE IF EXISTS `wireless_device_wireless`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wireless_device_wireless` (
  `wirelesses_id` bigint(20) NOT NULL,
  `wireless_devices_id` bigint(20) NOT NULL,
  PRIMARY KEY (`wireless_devices_id`,`wirelesses_id`),
  KEY `fk_wireless_device_wireless_wirelesses_id` (`wirelesses_id`),
  CONSTRAINT `fk_wireless_device_wireless_wireless_devices_id` FOREIGN KEY (`wireless_devices_id`) REFERENCES `wireless_device` (`id`),
  CONSTRAINT `fk_wireless_device_wireless_wirelesses_id` FOREIGN KEY (`wirelesses_id`) REFERENCES `wireless` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wireless_device_wireless`
--

LOCK TABLES `wireless_device_wireless` WRITE;
/*!40000 ALTER TABLE `wireless_device_wireless` DISABLE KEYS */;
/*!40000 ALTER TABLE `wireless_device_wireless` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-01  9:57:50
