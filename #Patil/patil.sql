-- MySQL dump 10.13  Distrib 5.6.27, for Win64 (x86_64)
--
-- Host: localhost    Database: patil
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangelog` (
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
  `LIQUIBASE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangelog`
--

LOCK TABLES `databasechangelog` WRITE;
/*!40000 ALTER TABLE `databasechangelog` DISABLE KEYS */;
INSERT INTO `databasechangelog` VALUES ('Manually create the hibernate auto-increment table for OO','hibernate','META-INF/database/changes.xml','2016-02-23 11:46:19',1,'EXECUTED','7:6389ca4eac535728ac03577c0f06a463','createTable, insert','',NULL,'3.3.0'),('create OO_BRANCH_CONTEXTS','engine','META-INF/database/broker.changes.xml','2016-02-23 11:46:21',2,'EXECUTED','7:5d68e9bfe0a4d579f38e2d1edaa38ac1','createTable, createIndex','',NULL,'3.3.0'),('create OO_RUNNING_EXECUTION_PLANS','engine','META-INF/database/broker.changes.xml','2016-02-23 11:46:23',3,'EXECUTED','7:cfaaac3a835287a5d8cdf7af6a416cd7','createTable','',NULL,'3.3.0'),('create OO_RUNTIME_VALUE_STORE','engine','META-INF/database/broker.changes.xml','2016-02-23 11:46:26',4,'EXECUTED','7:c16d45b215e1450a4631d3a21cf62d51','createTable, createIndex','',NULL,'3.3.0'),('create OO_USER_REFS','central','META-INF/database/central.changes.xml','2016-02-23 11:46:28',5,'EXECUTED','7:ef9be31cd568941c1c6aa2ede0b7f1f2','createTable','',NULL,'3.3.0'),('create OO_TASKS','central','META-INF/database/central.changes.xml','2016-02-23 11:46:29',6,'EXECUTED','7:cf8f9aded85ef4e155edfefbe500b32e','createTable, createIndex','',NULL,'3.3.0'),('create OO_FLOW_INPUTS','central','META-INF/database/central.changes.xml','2016-02-23 11:46:33',7,'EXECUTED','7:5fe26877c56d54a7374d193b8bb40cb1','createTable, addForeignKeyConstraint, addUniqueConstraint','',NULL,'3.3.0'),('create OO_CONFIG_ITEMS','central','META-INF/database/central.changes.xml','2016-02-23 11:46:33',8,'EXECUTED','7:7de16a410ddff63e6205188939044ffc','createTable','',NULL,'3.3.0'),('create OO_CONFIG_ITEM_VALUES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:34',9,'EXECUTED','7:1132b06244668536c7985358dd68a099','createTable','',NULL,'3.3.0'),('create OO_DEP_ENTITY_DEP_ENTITIES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:37',10,'EXECUTED','7:dcb92253d2e366012b80bdf9a0c708b7','createTable, addPrimaryKey, createIndex','',NULL,'3.3.0'),('create OO_CONTENT_PACKS','central','META-INF/database/central.changes.xml','2016-02-23 11:46:38',11,'EXECUTED','7:96200954820ffc01d992dda2fa09e4df','createTable, createIndex','',NULL,'3.3.0'),('create OO_DEPLOYED_ENTITIES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:40',12,'EXECUTED','7:7a86b7bfe5ea6672a8773863d0b05b55','createTable, createIndex','',NULL,'3.3.0'),('create OO_CACHED_EXECUTION_PLANS','central','META-INF/database/central.changes.xml','2016-02-23 11:46:41',13,'EXECUTED','7:50c2cee00b7e905eeafc6efc0c7173c6','createTable, addUniqueConstraint','',NULL,'3.3.0'),('create OO_FLOW_EVENT','central','META-INF/database/central.changes.xml','2016-02-23 11:46:41',14,'EXECUTED','7:1e7a38a4490e8cc5a30e0abc8de17d5e','createTable','',NULL,'3.3.0'),('create OO_FORM_ITEM','central','META-INF/database/central.changes.xml','2016-02-23 11:46:43',15,'EXECUTED','7:61ed9d59605eff2849d7579bc5f13256','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('FK OO_DEP_ENTITY_DEP_ENTITIES->OO_DEPLOYED_ENTITIES 1','central','META-INF/database/central.changes.xml','2016-02-23 11:46:44',16,'EXECUTED','7:b52a762ae41517c69b809dadcf6638e3','addForeignKeyConstraint','',NULL,'3.3.0'),('FK OO_DEP_ENTITY_DEP_ENTITIES->OO_DEPLOYED_ENTITIES 2','central','META-INF/database/central.changes.xml','2016-02-23 11:46:46',17,'EXECUTED','7:88248c4fff6a8bc03c607aee80b227aa','addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_SELECTION_LIST_VALUES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:48',18,'EXECUTED','7:816593b426f67d4ed1167d317214a926','createTable, addUniqueConstraint','',NULL,'3.3.0'),('create OO_DOMAIN_TERM_VALUES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:49',19,'EXECUTED','7:464e55e46954958ed90886c3bdac4e6b','createTable, addUniqueConstraint','',NULL,'3.3.0'),('FK OO_DOMAIN_TERM_VALUES->OO_DEPLOYED_ENTITIES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:51',20,'EXECUTED','7:9e8d4a86ab12917713a719dd970dded1','addForeignKeyConstraint','',NULL,'3.3.0'),('FK OO_SELECTION_LIST_VALUES->OO_DEPLOYED_ENTITIES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:52',21,'EXECUTED','7:9669bd21bbe6ab945cbce10a34d1f7e5','addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_DEPLOYMENT_LOCK','central','META-INF/database/central.changes.xml','2016-02-23 11:46:53',22,'EXECUTED','7:59cd8ce435634bcffca84d086cfbe5b8','createTable','',NULL,'3.3.0'),('create OO_CONTENT_PACKS_FILES','central','META-INF/database/central.changes.xml','2016-02-23 11:46:55',23,'EXECUTED','7:0893e537c7f5e0e948a9030abfa14a30','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_CONTENT_CONFIG_ITEM','central','META-INF/database/central.changes.xml','2016-02-23 11:46:58',24,'EXECUTED','7:a2aa505ea55b4750f7532be2d59e0d73','createTable, addUniqueConstraint, addForeignKeyConstraint (x2)','',NULL,'3.3.0'),('create OO_CANCELLED_EXECUTIONS','central','META-INF/database/central.changes.xml','2016-02-23 11:46:59',25,'EXECUTED','7:f3fe757339ab25fa5089666a4d114791','createTable','',NULL,'3.3.0'),('create OO_TASKS_EXECUTIONS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:00',26,'EXECUTED','7:784372135ff92499b8f68f00b9131c7b','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_FLOW_L10N_DATA','central','META-INF/database/central.changes.xml','2016-02-23 11:47:02',27,'EXECUTED','7:ecbff2657494dd32b84c16ed535d71fc','createTable, addUniqueConstraint, createIndex','',NULL,'3.3.0'),('create OO_JOB_DETAILS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:02',28,'EXECUTED','7:be4c96d7d16a55066c771e0758f9c03c','createTable','',NULL,'3.3.0'),('create OO_TRIGGERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:04',29,'EXECUTED','7:62f712a3dc626b8e3fe0c3e404a495d3','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_CALENDARS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:04',30,'EXECUTED','7:e0a1490c13b81bc959beab1fab0e32f8','createTable','',NULL,'3.3.0'),('create OO_CRON_TRIGGERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:06',31,'EXECUTED','7:7f1522ae2730222395f1ac5c33a962ee','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_FIRED_TRIGGERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:06',32,'EXECUTED','7:c29f090c5232e4ef8ada31ba4674a394','createTable','',NULL,'3.3.0'),('create OO_PAUSED_TRIGGER_GRPS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:07',33,'EXECUTED','7:94dbcac5d4826c50f92915040a5dd48d','createTable','',NULL,'3.3.0'),('create OO_SCHEDULER_STATE','central','META-INF/database/central.changes.xml','2016-02-23 11:47:07',34,'EXECUTED','7:8142b59546939e7631bc892133841f95','createTable','',NULL,'3.3.0'),('create OO_LOCKS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:08',35,'EXECUTED','7:0609da7e5c65140aea1b54ea5b163f41','createTable, insert (x6)','',NULL,'3.3.0'),('create OO_JOB_LISTENERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:10',36,'EXECUTED','7:ef9a159d15af465ba18619650f836672','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_SIMPLE_TRIGGERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:12',37,'EXECUTED','7:cfe89ef9834a7748ade18bec42abdbb0','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_BLOB_TRIGGERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:13',38,'EXECUTED','7:ac4980b5be2675c7c541fc6e96aecfed','createTable','',NULL,'3.3.0'),('create OO_TRIGGER_LISTENERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:19',39,'EXECUTED','7:1a6ae48cdd0a2a1838527663774da675','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_FLOW_SCHEDULES','central','META-INF/database/central.changes.xml','2016-02-23 11:47:24',40,'EXECUTED','7:7b1c22dfd157ebcb41109d5f541ba8c6','createTable, addForeignKeyConstraint (x2)','',NULL,'3.3.0'),('Create table OO_SYSTEM_ACCOUNTS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:25',41,'EXECUTED','7:4647f3a31518ce2523574efc1e3e83f4','createTable','',NULL,'3.3.0'),('create OO_GROUP_ALIASES','central','META-INF/database/central.changes.xml','2016-02-23 11:47:25',42,'EXECUTED','7:13d72561b54beb9805d9b3dc4a378b4d','createTable, createIndex','',NULL,'3.3.0'),('create OO_DEPENDENCIES_MAPPING','central','META-INF/database/central.changes.xml','2016-02-23 11:47:26',43,'EXECUTED','7:71829a605eaa409883dfab5c6e4f8fa9','createTable','',NULL,'3.3.0'),('UQ_DEPENDENCIES_MAPPING','central','META-INF/database/central.changes.xml','2016-02-23 11:47:26',44,'EXECUTED','7:26b6d77a93bcae7157bce6867d9b896a','addUniqueConstraint','',NULL,'3.3.0'),('create OO_ROLES_MANAGEMENT','central','META-INF/database/central.changes.xml','2016-02-23 11:47:27',45,'EXECUTED','7:ff445fde06fedffc78fd59a18a00843e','createTable','',NULL,'3.3.0'),('create OO_ENTITLEMENTS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:33',46,'EXECUTED','7:848b5ce9c5882714d597e3e030e5177e','createTable, addUniqueConstraint, addForeignKeyConstraint (x2), createIndex','',NULL,'3.3.0'),('create OO_ENTITLEMENTS_PRIVILEGES','central','META-INF/database/central.changes.xml','2016-02-23 11:47:36',47,'EXECUTED','7:ecfc9cccbe2015c2ff99adb33b330a8c','createTable, addUniqueConstraint, createIndex','',NULL,'3.3.0'),('create OO_ROLES_GROUPS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:38',48,'EXECUTED','7:52c51a98dbe9e8cc8ad1f92e83a7be23','createTable, addUniqueConstraint, createIndex','',NULL,'3.3.0'),('create OO_ROLES_PERMISSIONS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:39',49,'EXECUTED','7:617272b0576df37bd69a5df4b6571c53','createTable, addUniqueConstraint, createIndex','',NULL,'3.3.0'),('create AUDIT Tables','central','META-INF/database/central.changes.xml','2016-02-23 11:47:42',50,'EXECUTED','7:9c32f47119c12a570ffb3ab93104c57d','createTable, addPrimaryKey, createTable, addPrimaryKey, createTable (x2), addPrimaryKey','',NULL,'3.3.0'),('create AUDIT generator Table for MSSQL','central','META-INF/database/central.changes.xml','2016-02-23 11:47:43',51,'EXECUTED','7:49b02c4bcb9acd314252f7ee84f8646e','createTable (x2), insert','',NULL,'3.3.0'),('create OO_USERS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:43',52,'EXECUTED','7:e2ec41d366beba456fe88a2409bc9373','createTable','',NULL,'3.3.0'),('create OO_USERS_ROLES','central','META-INF/database/central.changes.xml','2016-02-23 11:47:44',53,'EXECUTED','7:ee707ce424a63e89c4b8e158e46563cf','createTable, addUniqueConstraint, createIndex','',NULL,'3.3.0'),('create OO_9_UPGRADE_PERMISSIONS','central','META-INF/database/central.changes.xml','2016-02-23 11:47:45',54,'EXECUTED','7:31c740302561406b0c9118313921c820','createTable, addUniqueConstraint','',NULL,'3.3.0'),('create OO_9_UPGRADE_RUN_HISTORY','central upgrade','META-INF/database/central.changes.xml','2016-02-23 11:47:46',55,'EXECUTED','7:dee5ab672dee4e05be15fc4dfec6f2ba','createTable','',NULL,'3.3.0'),('create OO_9_UPGRADE_RUN_HISTORY_ERR','central upgrade','META-INF/database/central.changes.xml','2016-02-23 11:47:46',56,'EXECUTED','7:428ba4922c90b97b34bc6df787a49baa','createTable','',NULL,'3.3.0'),('create OO_BKP9 tables','central upgrade','META-INF/database/central.changes.xml','2016-02-23 11:47:53',57,'EXECUTED','7:553fcc07148a0c00e74953c870e31344','createTable (x6), addPrimaryKey, createTable (x2), addPrimaryKey, createTable, addPrimaryKey, createTable, addPrimaryKey, createTable (x2)','',NULL,'3.3.0'),('create OO_EXEC_CONF_VERSION','central','META-INF/database/central.changes.xml','2016-02-23 11:47:53',58,'EXECUTED','7:b1ca90f6b91e1df1868606e9747e82da','createTable','',NULL,'3.3.0'),('create OO_BKP9 history tables','central upgrade','META-INF/database/central.changes.xml','2016-02-23 11:47:55',59,'EXECUTED','7:aa7389cbfa9915ee2b86b2e753f68019','createTable (x4)','',NULL,'3.3.0'),('create OO_SYSINFO','central','META-INF/database/sysinfo.changes.xml','2016-02-23 11:47:55',60,'EXECUTED','7:1d05c296e7a3305e6af6f0c835fe5e7f','createTable, insert (x5)','',NULL,'3.3.0'),('create OO_PARTITION_GROUPS table','engine','META-INF/database/engine.changes.xml','2016-02-23 11:47:55',61,'EXECUTED','7:d95bbcbe50abb5478591c1ac05b8a88d','createTable','',NULL,'3.3.0'),('create OO_EXECUTION_STATES','engine','META-INF/database/engine.changes.xml','2016-02-23 11:47:57',62,'EXECUTED','7:15e8ee955e1ce1b07026e938c302d66b','createTable (x4)','',NULL,'3.3.0'),('create OO_EXECUTION_QUEUES','engine','META-INF/database/engine.changes.xml','2016-02-23 11:47:59',63,'EXECUTED','7:b15d57ee84b854098214dca8287425de','createTable (x4)','',NULL,'3.3.0'),('add index to OO_EXECUTION_QUEUES tables','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:01',64,'EXECUTED','7:48f4ea5424520d3904dd669da86824cc','createIndex (x8)','',NULL,'3.3.0'),('create OO_WORKER_NODES','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:03',65,'EXECUTED','7:1ee3664688d66617b5cf8c76cb9ca7ce','createTable (x2), addPrimaryKey','',NULL,'3.3.0'),('create OO_ARTIFACTS','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:03',66,'EXECUTED','7:e94ad4b7dd3360a4f03de1f698a69190','createTable','',NULL,'3.3.0'),('create table OO_EXECUTION_EVENTS','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:04',67,'EXECUTED','7:45250cd84a366a8da02eed708962e20c','createTable, createIndex (x2)','',NULL,'3.3.0'),('create OO_EXECUTION_EVENTS partition #1','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:05',68,'EXECUTED','7:aae4c655aacec36fe355bb36e4cc2497','createTable, createIndex (x2)','',NULL,'3.3.0'),('create OO_EXECUTION_EVENTS partition #2','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:06',69,'EXECUTED','7:0711b6dddb34392bbd318f8e5793485b','createTable, createIndex (x2)','',NULL,'3.3.0'),('create OO_EXECUTION_EVENTS partition #3','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:06',70,'EXECUTED','7:d692863eb5864fdd58476b5ec6ff2eaf','createTable, createIndex (x2)','',NULL,'3.3.0'),('create OO_EXECUTION_EVENTS partition #4','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:07',71,'EXECUTED','7:321021fad1c8d4d319f1be6cacd62afb','createTable, createIndex (x2)','',NULL,'3.3.0'),('Create OO_EXECUTION_SUMMARY','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:08',72,'EXECUTED','7:4054540cf19a8dd28f1694cb57cecb1a','createTable, addUniqueConstraint','',NULL,'3.3.0'),('add indexes to OO_EXECUTION_SUMMARY table','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:09',73,'EXECUTED','7:42751013a606440f26d2b5915eb1a435','createIndex (x3)','',NULL,'3.3.0'),('Create OO_EXECUTION_BOUND_INPUTS','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:09',74,'EXECUTED','7:f6da11e3c55a4c327f118a681ae60470','createTable, addUniqueConstraint','',NULL,'3.3.0'),('Create OO_EXECUTION_BOUND_INPUTS_IDS','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:10',75,'EXECUTED','7:f64a35c4a865ba2f827de0a1d89738fc','createTable','',NULL,'3.3.0'),('Create OO_RUNNING_EXEC_CONFIGS','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:10',76,'EXECUTED','7:4dd086eb3a045fe4ed0987570e00e3f5','createTable','',NULL,'3.3.0'),('Create OO_EXECUTION_INTERRUPTS','engine','META-INF/database/engine.changes.xml','2016-02-23 11:48:11',77,'EXECUTED','7:07a0a95aebc121bace95498e520438c2','createTable, addUniqueConstraint','',NULL,'3.3.0'),('update OO_SYSINFO for 10.01','central','META-INF/database/sysinfo-platypus.changes.xml','2016-02-23 11:48:11',78,'EXECUTED','7:f08829aa68928543a3b49a45ea11d5a2','update (x5)','',NULL,'3.3.0'),('create OO_CACHED_GRAPHS','central','META-INF/database/central-platypus.changes.xml','2016-02-23 11:48:11',79,'EXECUTED','7:040f2e7c84ddaa253c1bf2891f125849','createTable, addUniqueConstraint','',NULL,'3.3.0'),('nullable SELECTION_LIST_VALUE','central','META-INF/database/central-platypus.changes.xml','2016-02-23 11:48:12',80,'EXECUTED','7:b489b56f8667a2bfeef7db7f8102a7aa','dropNotNullConstraint','',NULL,'3.3.0'),('add column LINE_NUMBER to OO_FLOW_L10N_DATA','central','META-INF/database/central-platypus.changes.xml','2016-02-23 11:48:13',81,'EXECUTED','7:13e198b5189ecb1c02c0e42ab0e4d3ee','addColumn, dropUniqueConstraint, addUniqueConstraint','',NULL,'3.3.0'),('add column LINE_NUMBER to OO_FLOW_L10N_DATA_AUD','central','META-INF/database/central-platypus.changes.xml','2016-02-23 11:48:14',82,'EXECUTED','7:d2d89049419d157a1369f1e8c19bb2c2','addColumn','',NULL,'3.3.0'),('dashboardRead permission','central','META-INF/database/central-platypus.changes.xml','2016-02-23 11:48:14',83,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'3.3.0'),('add dashboardRead permission to ADMINISTRATOR','central','META-INF/database/central-platypus.changes.xml','2016-02-23 11:48:14',84,'MARK_RAN','7:16f616fd6f9eefa6f5a27176aec64928','sql','',NULL,'3.3.0'),('fix index for Execution events table','engine','META-INF/database/engine-platypus.changes.xml','2016-02-23 11:48:17',85,'EXECUTED','7:8c30c74e91e98d8884d919623eeda9c4','dropIndex (x10), createIndex (x5)','',NULL,'3.3.0'),('add index for Execution Summary table','engine','META-INF/database/engine-platypus.changes.xml','2016-02-23 11:48:18',86,'EXECUTED','7:7b2000af3291b3650c0e961e8f1c4944','createIndex (x2)','',NULL,'3.3.0'),('alter tables remove update trigger','engine','META-INF/database/engine-platypus.changes.xml','2016-02-23 11:48:18',87,'EXECUTED','7:e631de9566ae11cc062f60ffc3e39dba','sql (x4)','',NULL,'3.3.0'),('add duration column to Execution Summary table','engine','META-INF/database/engine-platypus.changes.xml','2016-02-23 11:48:19',88,'EXECUTED','7:cfb5441c7808a8ef2e346d7e5d138dbe','addColumn, sql','',NULL,'3.3.0'),('delete assigner job from quartz','Quartz','META-INF/database/platypus-patch.changes.xml','2016-02-23 11:48:19',89,'EXECUTED','7:c44b5e0b472fb09e9585ffdb87769e54','sql (x3)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.01.0001','central','META-INF/database/sysinfo-platypus-patch.changes.xml','2016-02-23 11:48:19',90,'EXECUTED','7:6f694216c1696b0a8af018ab3139025f','update (x5)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.02','central','META-INF/database/sysinfo-krembo.changes.xml','2016-02-23 11:48:19',91,'EXECUTED','7:789c75080ed861c5f918026274cabc0f','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.02','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:20',92,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('add calendar name','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:20',93,'EXECUTED','7:ea089c93aafdc4d87b6a04ce960bd15f','update','',NULL,'3.3.0'),('add Entry to OO_LOCKS','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:20',94,'EXECUTED','7:d8f635493be7be10c2d3716ccca81098','insert','',NULL,'3.3.0'),('create OO_DEPLOYMENT_PROCESS_LOCK','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:20',95,'EXECUTED','7:f8af8d600e2b5066b19701511bd4dc02','createTable','',NULL,'3.3.0'),('add Entry to OO_DEPLOYMENT_PROCESS_LOCK','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:20',96,'EXECUTED','7:c09f22abd560a81951ac4e3dc1b977e9','insert','',NULL,'3.3.0'),('create OO_DEPLOYMENT_PROCESSES','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:20',97,'EXECUTED','7:c9c52888151c5829a64acfbec8404f03','createTable','',NULL,'3.3.0'),('create OO_DEPLOYMENT_CP_FILES','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:21',98,'EXECUTED','7:16b161afdd7293a3f74efd02436e863b','createTable, addUniqueConstraint, addForeignKeyConstraint','',NULL,'3.3.0'),('create OO_DEPLOYMENT_RUN_STATE','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:22',99,'EXECUTED','7:bf4f821140dd81b6ffd596a55f032f49','createTable','',NULL,'3.3.0'),('drop RELATED_ENTITY_ID column','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:22',100,'EXECUTED','7:25bb58c8b806007d1951765bc5f10754','dropForeignKeyConstraint, dropColumn','',NULL,'3.3.0'),('System Accounts to Config Items and vice versa','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:23',101,'EXECUTED','7:b274ea8fbfaeac37772a00efad073167','customChange','',NULL,'3.3.0'),('delete purger job from quartz','Quartz','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:23',102,'EXECUTED','7:61cba11a879fa2ff6c64deb322692630','sql (x3)','',NULL,'3.3.0'),('drop UQ of uuid in OO_CACHED_EXECUTION_PLANS','central','META-INF/database/central-krembo.changes.xml','2016-02-23 11:48:23',103,'EXECUTED','7:bcfe7143e84221e9b06a8c87d5b52a2f','dropUniqueConstraint','',NULL,'3.3.0'),('clean execution queue 1 and execution state 1,2','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:24',104,'EXECUTED','7:0553fbe5711ae0c26f76679ca39e89c7','sql (x3)','',NULL,'3.3.0'),('drop tables of execution queues 2,3,4 and execution states 3,4','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:26',105,'EXECUTED','7:3684eef24d9b892e8762ff064b5dac8f','dropIndex (x6), dropTable (x5)','',NULL,'3.3.0'),('Update partition groups table','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:26',106,'EXECUTED','7:03482b8c1f5f116989318418e99f8ede','delete','',NULL,'3.3.0'),('add EVENT_INDEX column to OO_EXECUTION_EVENTS tables','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:29',107,'EXECUTED','7:b3f1492e92605a5e6097642e919baef9','addColumn (x5)','',NULL,'3.3.0'),('Create OO_EXECUTION_EVENTS_INDEX','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:29',108,'EXECUTED','7:960c4b175e4ab699a40b8a86366237fc','createTable, addUniqueConstraint','',NULL,'3.3.0'),('alter OO_EXECUTION_STATES PAYLOAD column','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:31',109,'EXECUTED','7:5114e1b0631acb4ea03291e946e665e4','sql (x2)','',NULL,'3.3.0'),('Create OO_SUSPENDED_EXECUTIONS','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:32',110,'EXECUTED','7:e7e9efea612b7ebdf2a94f0bfa4ed64e','createTable, addUniqueConstraint','',NULL,'3.3.0'),('Create OO_FINISHED_BRANCHES','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:33',111,'EXECUTED','7:6c9cd4af03039d9730bf2acd1736fb3f','createTable, addUniqueConstraint, addForeignKeyConstraint','',NULL,'3.3.0'),('add IS_DELETED column to OO_WORKER_NODES table','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:34',112,'EXECUTED','7:8aa13023ccb288752dd8114fa8bb56a2','addColumn','',NULL,'3.3.0'),('add MSG_VERSION column to OO_EXECUTION_QUEUES_1 table','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:35',113,'EXECUTED','7:65388ef2a02da6fc561e93c5507c52f5','addColumn','',NULL,'3.3.0'),('add table OO_VERSION_COUNTERS','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:37',114,'EXECUTED','7:2e0dffa6b444d681bc056a826227def9','createTable, addUniqueConstraint, insert','',NULL,'3.3.0'),('add ACK_VERSION column to OO_WORKER_NODES table','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:38',115,'EXECUTED','7:40b3d7819fbeec1f35e6132cdc64ff75','addColumn, update','',NULL,'3.3.0'),('revert BRANCH_PAUSED status','engine','META-INF/database/engine-krembo.changes.xml','2016-02-23 11:48:38',116,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'3.3.0'),('delete rolling jobs from quartz','Quartz','META-INF/database/krembo.changes.xml','2016-02-23 11:48:38',117,'EXECUTED','7:ad4d4c65584f4f40408285fa282ad753','sql (x9)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.02 CE','central','META-INF/database/sysinfo-krembo-ce.changes.xml','2016-02-23 11:48:39',118,'EXECUTED','7:2aa54751998c0df462b79edeaa4e2eb0','update (x5)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.10','central','META-INF/database/sysinfo-halva.changes.xml','2016-02-23 11:48:39',119,'EXECUTED','7:82257f892ca221ecce548d0c7c81fd87','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.10','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:40',120,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('add OO_FLOW_GRAPH table','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:41',121,'EXECUTED','7:5f7e09cc99cc8995a15ba7b97bad89c3','createTable','',NULL,'3.3.0'),('add OO_LATEST_FLOW_GRAPH table','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:43',122,'EXECUTED','7:11ddbcf6ed472e4c59bcda67971b139f','createTable, addForeignKeyConstraint','',NULL,'3.3.0'),('add OO_EXECUTED_FLOW_GRAPH table','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:46',123,'EXECUTED','7:a7ad32e0fbf5783394e00292d9126fc0','createTable, addUniqueConstraint, addForeignKeyConstraint','',NULL,'3.3.0'),('add sourcedata_mod to OO_DEPLOYED_ENTITIES_AUD','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:47',124,'EXECUTED','7:b24a6d5c20bdd74f0ed05778c2a5e27a','addColumn','',NULL,'3.3.0'),('add UUID, PUBLISHER and DEPLOYMENT_DATE to OO_CONTENT_PACKS','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:49',125,'EXECUTED','7:57a15c262197771b4fcfe8bce409d104','addColumn (x3)','',NULL,'3.3.0'),('add UUID, PUBLISHER and DEPLOYMENT_DATE to OO_CONTENT_PACKS_AUD','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:54',126,'EXECUTED','7:64f63d33b091420c35049adde13ef7a7','addColumn (x3)','',NULL,'3.3.0'),('Generating UUID for CONTENT_PACKS','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:48:55',127,'EXECUTED','7:846c78812895812a6024f3b317238d72','customChange','',NULL,'3.3.0'),('UUID: addNotNullConstraint and createIndex in OO_CONTENT_PACKS','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:01',128,'EXECUTED','7:6b1a6cbf8f1764e844909e483627c5d5','addNotNullConstraint, createIndex','',NULL,'3.3.0'),('Upgrading LDAP 10.02 configurations to 10.10','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:01',129,'EXECUTED','7:cb0f910c99f9383112c370651915e9c6','customChange','',NULL,'3.3.0'),('Adding domain id and input prompt use blank','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:03',130,'EXECUTED','7:441312b06193a2a986d7e4728ff70574','addColumn (x2)','',NULL,'3.3.0'),('update value of IS_INPUT_PROMPT_USE_BLANK','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:03',131,'EXECUTED','7:fb746712929c40555d57c863131db322','update','',NULL,'3.3.0'),('create OO_CP_FILES_FOR_DELETE','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:06',132,'EXECUTED','7:025769658f89a70a6a1ac7948fdf8931','createTable, addUniqueConstraint, addForeignKeyConstraint','',NULL,'3.3.0'),('Reformat username to be login name','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:06',133,'EXECUTED','7:6cc5154cd1f0dd356cf8066888ddbb67','customChange','',NULL,'3.3.0'),('RemoveFlowDebugPermission','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:06',134,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'3.3.0'),('add CREATION_DATE to OO_DEPLOYMENT_PROCESSES','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:07',135,'EXECUTED','7:3cac4737a5f7bd8010e71908dc6c617b','addColumn','',NULL,'3.3.0'),('empty change set for downgrade to delete new quartz jobs','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:07',136,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'3.3.0'),('replace the xss.policy from slashdot to antisamy','central','META-INF/database/central-halva.changes.xml','2016-02-23 11:49:07',137,'EXECUTED','7:9a32649582e767a13bd541d139f0fa61','update','',NULL,'3.3.0'),('clean states of all currently running executions','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:09',138,'EXECUTED','7:1c2522b619122310d484f78b78f17f4e','sql (x2), delete, sql (x3)','',NULL,'3.3.0'),('create table OO_STEP_LOG_BINDINGS','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:09',139,'EXECUTED','7:20a015ce7c87f7c3203e19257b1f7249','createTable, createIndex','',NULL,'3.3.0'),('add source column for OO_EXECUTION_SUMMARY','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:10',140,'EXECUTED','7:036c7cb966bbc4db7c48a8eca5a87c45','addColumn','',NULL,'3.3.0'),('create table OO_PAUSE_DATA','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:11',141,'EXECUTED','7:63d361971ef90dc66f15a1f0d5dfc280','createTable','',NULL,'3.3.0'),('create table OO_STEP_LOG_STARTED','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:11',142,'EXECUTED','7:24f471ee6353181a7e8204007fc4e4be','createTable, createIndex','',NULL,'3.3.0'),('Mysql create path index for OO_STEP_LOG_STARTED','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:12',143,'EXECUTED','7:628fa04854615c52f379d1c293077301','createIndex (x2)','',NULL,'3.3.0'),('create table OO_STEP_LOG_ENDED','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:13',144,'EXECUTED','7:8a7a1d58e4fbf7666a94b6e7f3219a10','createTable, createIndex','',NULL,'3.3.0'),('create table OO_STEP_LOG_STATUSES','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:15',145,'EXECUTED','7:55ee9f29af8559da4ef68f61850252e5','createTable, createIndex (x4)','',NULL,'3.3.0'),('reset index of OO_EXECUTION_STATES in OO_PARTITION_GROUPS','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:15',146,'EXECUTED','7:98d8f4908430e4df4696a49c5b2237f5','update','',NULL,'3.3.0'),('Create OO_EXECUTION_BOUND_OUTPUTS','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:16',147,'EXECUTED','7:38f7d98233768f1f463cfdfe7f43c0c9','createTable','',NULL,'3.3.0'),('Drop OO_EXECUTION_BOUND_INPUTS unique constraint','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:16',148,'EXECUTED','7:34937ad877a3289d093a88457cd2fd1c','dropUniqueConstraint','',NULL,'3.3.0'),('Increase OO_EXECUTION_BOUND_INPUTS value size','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:18',149,'EXECUTED','7:d8e838a8965efe5390dd3238877bfb74','dropColumn, addColumn (x2)','',NULL,'3.3.0'),('Create OO_EXECUTION_BOUND_OUTPUTS_IDS','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:18',150,'EXECUTED','7:d4f424b07c1afb1d4c9d69ab167e9e74','createTable','',NULL,'3.3.0'),('delete upgrade flag in OO_CONFIG_ITEMS','engine','META-INF/database/engine-halva.changes.xml','2016-02-23 11:49:18',151,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'3.3.0'),('update OO_SYSINFO for 10.20','central','META-INF/database/sysinfo-oo1020.changes.xml','2016-02-23 11:49:18',152,'EXECUTED','7:65a9353f8a2e544473f8eaa340997f2c','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.20','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:19',153,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('drop constraints for configuration item names','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:19',154,'EXECUTED','7:28b5d990e916b82f73feeb5ef1b0927e','dropUniqueConstraint, dropIndex','',NULL,'3.3.0'),('add PATH and DEPLOYED_ENTITY_ID to configuration items','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:22',155,'EXECUTED','7:1625aefad83f518cf4d483a1851e8180','addColumn, addForeignKeyConstraint, addColumn, addForeignKeyConstraint','',NULL,'3.3.0'),('set paths for existing configuration items','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:22',156,'EXECUTED','7:64f6b7db38b0e331b7dc71a7acc4fb15','customChange','',NULL,'3.3.0'),('set deployed entities for existing configuration items','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:22',157,'EXECUTED','7:e7075de95dcd893cc49f9f6ebdf7082b','sql (x2)','',NULL,'3.3.0'),('create constraints and indices for configuration item paths','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:25',158,'EXECUTED','7:96b0a7d07c9679505b9236baee2a7fc3','addNotNullConstraint, createIndex, addNotNullConstraint, createIndex','',NULL,'3.3.0'),('set default entitlements for existing system accounts','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:25',159,'EXECUTED','7:e1b405b2b3c7599c8202b3d5a9fe47f8','customChange','',NULL,'3.3.0'),('delete OO_EXECUTION_EVENTS_INDEX entry from OO_LOCKS','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:25',160,'EXECUTED','7:46dcb73cccb30f0c67b347fbbee48e1c','delete','',NULL,'3.3.0'),('add OO_AUDIT table','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:26',161,'EXECUTED','7:b9e85d8dcb9192862e5fba11febf3a34','createTable, createIndex (x3)','',NULL,'3.3.0'),('add OO_AUDIT_CONFIG table','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:27',162,'EXECUTED','7:b7d103a9851f204afce1be835872ed53','createTable, addUniqueConstraint','',NULL,'3.3.0'),('insert audit init configurations','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:27',163,'EXECUTED','7:766234b5ade2c3f28608efc803e2f62f','customChange','',NULL,'3.3.0'),('add description key to deployed entity','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:29',164,'EXECUTED','7:a5d5df8b599ebe74a63011cebde2217b','addColumn (x2)','',NULL,'3.3.0'),('set description key for deployed entities','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:29',165,'EXECUTED','7:a2858ca1ce7ed5e28d0342d5e80c93ef','customChange','',NULL,'3.3.0'),('add SOURCE_FILE to OO_DEPLOYED_ENTITIES','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:34',166,'EXECUTED','7:c389531fd7466682426929e9aee2b883','addColumn (x2)','',NULL,'3.3.0'),('add sourcefile_mod to OO_DEPLOYED_ENTITIES_AUD','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:35',167,'EXECUTED','7:a851be72a50645efcf2d8da64283c06a','addColumn, sql, dropColumn','',NULL,'3.3.0'),('add DEPENDED_UUID index in OO_DEPENDENCIES_MAPPING table','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:35',168,'EXECUTED','7:ea8d037de91f79e92429055558203a93','createIndex','',NULL,'3.3.0'),('RemoveAuditAndDataCleanupPermissions','central','META-INF/database/central-oo1020.changes.xml','2016-02-23 11:49:35',169,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'3.3.0'),('clean execution states for 10.20','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:49:36',170,'EXECUTED','7:fcb4c58176028707c7790d47d7d31f5c','sql, delete, sql (x4)','',NULL,'3.3.0'),('Create OO_EXECUTION_STATE','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:49:36',171,'EXECUTED','7:186f026a06eee889f093ed67169efe1e','createTable, addUniqueConstraint','',NULL,'3.3.0'),('Add columns to OO_STEP_LOG_STARTED and OO_STEP_LOG_ENDED','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:49:38',172,'EXECUTED','7:25289d5caab10e7d0369246482fb1d40','addColumn (x2)','',NULL,'3.3.0'),('update new step log columns and delete OO_STEP_LOG_STATUSES','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:49:44',173,'EXECUTED','7:e3806789a913a08a4bb17c046f9fbd98','sql (x2), dropTable, addColumn (x2), sql (x2), dropPrimaryKey (x2), dropColumn (x2), addNotNullConstraint (x2), addPrimaryKey (x2)','',NULL,'3.3.0'),('Change Data Types to OO_STEP_LOG_BINDINGS and OO_STEP_LOG_ENDED','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:06',174,'EXECUTED','7:39fb339617dc8bd38b7a2333ad91993e','addColumn (x4)','',NULL,'3.3.0'),('delete execution_obj column from OO_EXECUTION_SUMMARY','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:07',175,'EXECUTED','7:af78202f41289da844fdce35f7ac275f','dropColumn','',NULL,'3.3.0'),('Drop OO_EXECUTION_EVENTS_INDEX','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:07',176,'EXECUTED','7:1dc7b5d7b765f4ac85537b6803600290','dropTable','',NULL,'3.3.0'),('create OO_DEBUGGER_EVENTS_GENERATOR for MSSQL and MySQL','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:08',177,'EXECUTED','7:ab8759e32def8aedc43d356168082eee','createTable, createIndex, createTable, insert, createTable','',NULL,'3.3.0'),('Add columns to OO_WORKER_NODES','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:08',178,'EXECUTED','7:ca7d44cd9767feb2e691ebbd37ac2012','addColumn','',NULL,'3.3.0'),('Add column WRV to OO_WORKER_NODES','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:09',179,'EXECUTED','7:c0bf9be0f9ab880bb18f504851fa85b6','addColumn','',NULL,'3.3.0'),('create OO_WORKER_LOCKS','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:09',180,'EXECUTED','7:d8eefd9a31d411d2a297024ab933fa98','createTable','',NULL,'3.3.0'),('insert worker locks','central','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:09',181,'EXECUTED','7:b8c2e8ac4c975c4cbfb2a7280aa349c7','customChange','',NULL,'3.3.0'),('drop OO_BRANCH_CONTEXTS table','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:09',182,'EXECUTED','7:9182dbc4c968e3e73ec6dfbddd67e6b5','dropTable','',NULL,'3.3.0'),('drop foreign key FK_OO_FINISHED_BRANCHES','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:09',183,'EXECUTED','7:f3c5d303f5963d3a525d30c749d13d26','dropForeignKeyConstraint','',NULL,'3.3.0'),('upgrade OO_EXECUTION_BOUND_INPUTS on mysql','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:10',184,'EXECUTED','7:c479b48ea06567f4564a5879a20e57c4','addColumn, sql (x2), dropTable','',NULL,'3.3.0'),('adapt bound outputs tables for purging MYSQL','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:11',185,'EXECUTED','7:0e3079dfb4225137dc82b7b44050a1de','addColumn, sql (x2), dropTable','',NULL,'3.3.0'),('add indexing for execution_id column on mysql','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:11',186,'EXECUTED','7:31d3cf86dbf5f215a42d9ff84727ee1e','sql (x2)','',NULL,'3.3.0'),('alter OO_EXECUTION_STATES PAYLOAD column','engine','META-INF/database/engine-oo1020.changes.xml','2016-02-23 11:50:13',187,'EXECUTED','7:e4a9f38a78b87bd06d0ec0ecae41a0ac','sql (x2)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.21','central','META-INF/database/sysinfo-oo1021.changes.xml','2016-02-23 11:50:13',188,'EXECUTED','7:57122f3c8fdce91bd36d3d83800973be','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.21','central','META-INF/database/central-oo1021.changes.xml','2016-02-23 11:50:13',189,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('clean execution states for 10.21','engine','META-INF/database/engine-oo1021.changes.xml','2016-02-23 11:50:14',190,'EXECUTED','7:a5765dca70d43172363ecefb40edea93','sql, delete, sql (x4)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.21.0001','central','META-INF/database/sysinfo-oo10210001.changes.xml','2016-02-23 11:50:18',191,'EXECUTED','7:6119f1540a9d8120a62b2c42a0c5da1f','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.21.0001','central','META-INF/database/central-oo10210001.changes.xml','2016-02-23 11:50:19',192,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('clean execution states for 10.21.0001','engine','META-INF/database/engine-oo10210001.changes.xml','2016-02-23 11:50:20',193,'EXECUTED','7:a5765dca70d43172363ecefb40edea93','sql, delete, sql (x4)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.22','central','META-INF/database/sysinfo-oo1022.changes.xml','2016-02-23 11:50:20',194,'EXECUTED','7:ee8b98b3c0e7b83b8a5a674c19af4318','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.22','central','META-INF/database/central-oo1022.changes.xml','2016-02-23 11:50:21',195,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('add OO_DB_STATISTICS table','central','META-INF/database/central-oo1022.changes.xml','2016-02-23 11:50:21',196,'EXECUTED','7:dad211493f838fff927d279b2c11740a','createTable, addPrimaryKey','',NULL,'3.3.0'),('Update LOG_LEVEL value of flow schedules','central','META-INF/database/central-oo1022.changes.xml','2016-02-23 11:50:21',197,'EXECUTED','7:248cf5aa3711a1a194fd6f6de9d6a77b','update','',NULL,'3.3.0'),('add logLevel column to OO_DEPLOYED_ENTITIES','central','META-INF/database/central-oo1022.changes.xml','2016-02-23 11:50:22',198,'EXECUTED','7:28dbc8368510bd5c3a62fb69b58e56d3','addColumn','',NULL,'3.3.0'),('add logLevel column to OO_DEPLOYED_ENTITIES_AUD','central','META-INF/database/central-oo1022.changes.xml','2016-02-23 11:50:23',199,'EXECUTED','7:790307e4b8c324655db58f3c446f271c','addColumn','',NULL,'3.3.0'),('clean execution states for 10.22','engine','META-INF/database/engine-oo1022.changes.xml','2016-02-23 11:50:24',200,'EXECUTED','7:b174bf40269cfdd76ac0c2c1ccd88470','sql, delete, sql (x5)','',NULL,'3.3.0'),('update quartz jobs for 10.22','engine','META-INF/database/engine-oo1022.changes.xml','2016-02-23 11:50:24',201,'EXECUTED','7:d41d8cd98f00b204e9800998ecf8427e','Empty','',NULL,'3.3.0'),('add LOG_LEVEL to OO_EXECUTION_SUMMARY','engine','META-INF/database/engine-oo1022.changes.xml','2016-02-23 11:50:25',202,'EXECUTED','7:9a32710dc5cc9713da75be39556dd947','addColumn','',NULL,'3.3.0'),('update OO_SYSINFO for 10.22.0001','central','META-INF/database/sysinfo-oo10220001.changes.xml','2016-02-23 11:50:25',203,'EXECUTED','7:b50e6bb4bc1e7a3190702d5b67c18588','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.22.0001','central','META-INF/database/central-oo10220001.changes.xml','2016-02-23 11:50:25',204,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('clean execution states for 10.22.0001','engine','META-INF/database/engine-oo10220001.changes.xml','2016-02-23 11:50:27',205,'EXECUTED','7:b174bf40269cfdd76ac0c2c1ccd88470','sql, delete, sql (x5)','',NULL,'3.3.0'),('update OO_SYSINFO for 10.50','central','META-INF/database/sysinfo-oo1050.changes.xml','2016-02-23 11:50:27',206,'EXECUTED','7:ef601ea31227742541e2eebbc82f6112','update (x5)','',NULL,'3.3.0'),('clean execution plans for 10.50','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:27',207,'EXECUTED','7:65ca23149ce489fa917a89794b5307ca','sql (x2)','',NULL,'3.3.0'),('add dependency and properties files columns','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:28',208,'EXECUTED','7:899855c3ced05982fd341151a1c9d92b','addColumn','',NULL,'3.3.0'),('add SCM_TAG column to OO_CONTENT_PACKS','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:29',209,'EXECUTED','7:9e83447d3e5002c3bff1957e4ea28654','addColumn','',NULL,'3.3.0'),('add SCM_TAG column to OO_CONTENT_PACKS_AUD','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:30',210,'EXECUTED','7:7c4324bd49dba4cd43ff518a33a4d8f5','addColumn','',NULL,'3.3.0'),('add signing columns to OO_DEPLOYMENT_CP_FILES','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:30',211,'EXECUTED','7:d6a593311cb4a32718bc55af36323ae4','addColumn','',NULL,'3.3.0'),('add signing columns to OO_CONTENT_PACKS','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:31',212,'EXECUTED','7:5d697e8b452f114a97b218367187d050','addColumn','',NULL,'3.3.0'),('add signing columns to OO_CONTENT_PACKS_AUD','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:32',213,'EXECUTED','7:3dbd5f2798c52878acce73a295706587','addColumn','',NULL,'3.3.0'),('add proprietaryType columns to OO_DEPLOYED_ENTITIES','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:32',214,'EXECUTED','7:02b29c99678217b47f12d20f4042ff1f','addColumn','',NULL,'3.3.0'),('add proprietaryType columns to OO_DEPLOYED_ENTITIES_AUD','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:33',215,'EXECUTED','7:cd15cd2d3ac4a41b21eb8bcc2d8f1c43','addColumn','',NULL,'3.3.0'),('add OO_CP_STATISTICS table','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:33',216,'EXECUTED','7:0deeb318f11e0cbaf6e3a0406a2f14d4','createTable, addPrimaryKey','',NULL,'3.3.0'),('change size of OO_DEPENDENCIES_MAPPING.UUID column','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:34',217,'EXECUTED','7:32b6f9a230fd83cacf3e37d52b1ccf0f','modifyDataType','',NULL,'3.3.0'),('change size of OO_DEPENDENCIES_MAPPING.DEPENDED_UUID column','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:35',218,'EXECUTED','7:042151f903c1ea95ba98a9abc932ac0e','modifyDataType','',NULL,'3.3.0'),('re-add not-null constraints for dependency UUIDs','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:36',219,'EXECUTED','7:d2441883374f892676175af229a7a1ce','addNotNullConstraint (x2)','',NULL,'3.3.0'),('add cpname_mod to OO_DEPLOYED_ENTITIES_AUD','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:36',220,'EXECUTED','7:2db8deec58f78de53143345c646d83bf','addColumn','',NULL,'3.3.0'),('add salt to OO_USERS','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:37',221,'EXECUTED','7:76103c52109d97122481c7c2e6975c7b','addColumn','',NULL,'3.3.0'),('add default_role columns to OO_ROLES_MANAGEMENT','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:38',222,'EXECUTED','7:f2b1c50ace7fc4672a09d9e52cadf433','addColumn, update','',NULL,'3.3.0'),('add REFERENCED_ID to OO_CONTENT_CONFIG_ITEM with unique index','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:39',223,'EXECUTED','7:ca2cdbac8293d6a9de88a1f0cfbcd74f','addColumn, sql (x3), addNotNullConstraint, createIndex','',NULL,'3.3.0'),('add REFERENCED_ID to OO_GROUP_ALIASES with unique index','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:41',224,'EXECUTED','7:5b169909b17b1c403ed078bbc049d10c','addColumn, sql (x3), addNotNullConstraint, createIndex','',NULL,'3.3.0'),('delete license date','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:41',225,'EXECUTED','7:3c5ca1f2013766b76c9f939f113e2d7c','delete','',NULL,'3.3.0'),('delete license capcaity','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:41',226,'EXECUTED','7:bbd57433ccc99ea55189edbf20d045f3','delete','',NULL,'3.3.0'),('enable CSRF protection','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:41',227,'EXECUTED','7:2eb4a46eab14cc123ee702e371b91f92','update','',NULL,'3.3.0'),('update CloudSland entity type','central','META-INF/database/central-oo1050.changes.xml','2016-02-23 11:50:41',228,'EXECUTED','7:55686d31d6e447023a3dc84e05fd77f6','sql','',NULL,'3.3.0'),('clean execution states for 10.50','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:42',229,'EXECUTED','7:b174bf40269cfdd76ac0c2c1ccd88470','sql, delete, sql (x5)','',NULL,'3.3.0'),('update quartz jobs for 10.50','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:42',230,'EXECUTED','7:f27ac09d94bb48e47b49b47e8f686ba6','sql (x6)','',NULL,'3.3.0'),('DROP_OLD_QUARTZ_TABLES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:42',231,'EXECUTED','7:24dd365c3f6759e3980c93877e90a139','dropTable (x2)','',NULL,'3.3.0'),('DROP_OLD_QUARTZ_COLUMNSS','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:45',232,'EXECUTED','7:c310ccc5bc424006fe496d1b9417f32c','dropColumn (x3)','',NULL,'3.3.0'),('OO_FIRED_TRIGGERS_QUARTZ_2_CHANGES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:45',233,'EXECUTED','7:4647216389bf30c45c9a77ac57b5284b','addColumn','',NULL,'3.3.0'),('UPDATE_OO_FIRED_TRIGGERS_QUARTZ_2_CHANGES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:45',234,'EXECUTED','7:167b717233807394ca33cfb3123b0359','sql (x3), dropColumn','',NULL,'3.3.0'),('OO_JOB_DETAILS_QUARTZ_2_CHANGES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:46',235,'EXECUTED','7:f33b9b75c2eaa4e6e4b4ca7b253ea6eb','addColumn','',NULL,'3.3.0'),('UPDATE_OO_JOB_DETAILS_QUARTZ_2_CHANGES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:46',236,'EXECUTED','7:2b55380d24978e2dccb829f22b3edd8d','sql (x2), dropColumn','',NULL,'3.3.0'),('OO_ADD_SCHED_NAME_2_QUARTZ_TABLES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:52',237,'EXECUTED','7:3419e6791a6e449cb16b2a93a2441a1e','addColumn (x11)','',NULL,'3.3.0'),('OO_DROP_QUARTZ_PRIMARY_FOREIGN_KEY','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:58',238,'EXECUTED','7:66f254a2153cf55b2fb258c7282406ac','dropForeignKeyConstraint (x3), dropPrimaryKey (x8), dropForeignKeyConstraint, dropPrimaryKey','',NULL,'3.3.0'),('OO_DROP_QUARTZ_FOREIGN_KEY_MYSQL','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:50:59',239,'EXECUTED','7:c05feabbae885d8ca9e77d18314aff77','dropIndex (x2)','',NULL,'3.3.0'),('OO_ADD_QUARTZ_PRIMARY_FOREIGN_KEY','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:08',240,'EXECUTED','7:b3d26e3cb45637ee3725428e65f560c6','addPrimaryKey (x2), addForeignKeyConstraint, addPrimaryKey, addForeignKeyConstraint, addPrimaryKey, addForeignKeyConstraint, addPrimaryKey, addForeignKeyConstraint, addPrimaryKey (x5), addForeignKeyConstraint, addNotNullConstraint','',NULL,'3.3.0'),('CREATE_OO_SIMPROP_TRIGGERS','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:09',241,'EXECUTED','7:5cbe677c7ca2927b2b42b041847ee4c1','createTable, addPrimaryKey, addForeignKeyConstraint','',NULL,'3.3.0'),('CREATE_INDEX_ON_QUARTZ','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:15',242,'EXECUTED','7:2623b450ecdfeede568fc830d302f3f8','createIndex (x19)','',NULL,'3.3.0'),('CREATE_WORKER_MONITORS','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:16',243,'EXECUTED','7:1499d632f206a9052af0844613c42b46','createTable, addPrimaryKey','',NULL,'3.3.0'),('add INVOKED_UUIDS to OO_STEP_LOG_STARTED','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:16',244,'EXECUTED','7:132e356b655d34398751354c950ae68f','addColumn','',NULL,'3.3.0'),('change size of OO_EXECUTION_SUMMARY.FLOW_UUID column','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:17',245,'EXECUTED','7:5be87836f3b7faf615689f1e695dc48c','modifyDataType','',NULL,'3.3.0'),('change size of OO_STEP_LOG_STARTED.FLOW_UUID column','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:18',246,'EXECUTED','7:e1789fefd9b871ea80259b37a78ebaf9','modifyDataType','',NULL,'3.3.0'),('re-add not-null constraint for OO_EXECUTION_SUMMARY.FLOW_UUID','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:19',247,'EXECUTED','7:a20fa68cbb78b25ccb0d14e352b15188','addNotNullConstraint','',NULL,'3.3.0'),('create OO_EXECUTION_STATES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:19',248,'EXECUTED','7:9cb166892618f5a61b8896463b027236','createTable','',NULL,'3.3.0'),('alter OO_EXECUTION_STATES PAYLOAD column','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:20',249,'EXECUTED','7:6f4c1115be14d0ac49ab58b8a0c163c7','sql','',NULL,'3.3.0'),('create OO_EXECUTION_QUEUES','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:21',250,'EXECUTED','7:8c4f4a23ada11845661612fcf6d7ddf4','createTable, addColumn, createIndex (x2), addUniqueConstraint','',NULL,'3.3.0'),('add RUNNING_CONF_VERSION column to OO_EXECUTION_SUMMARY table','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:22',251,'EXECUTED','7:ad4b15322db392b780c389a9455a5654','addColumn','',NULL,'3.3.0'),('add HASH_ID index to OO_STEP_LOG_STARTED','engine','META-INF/database/engine-oo1050.changes.xml','2016-02-23 11:51:22',252,'EXECUTED','7:e168fb154002a9d4faa4bfef4ba46f61','createIndex','',NULL,'3.3.0');
/*!40000 ALTER TABLE `databasechangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `databasechangeloglock`
--

LOCK TABLES `databasechangeloglock` WRITE;
/*!40000 ALTER TABLE `databasechangeloglock` DISABLE KEYS */;
INSERT INTO `databasechangeloglock` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `databasechangeloglock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `fb` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('hi pavan how are you??'),('hiiii'),('fhhg'),('i visted hotel last time it was good '),('i visted hotel last time it was good '),('hiiii i am '),('hiiii i am '),('the hotel was good'),('the hotel experience was good'),('hi vijay'),('hghghg'),('i am in meeting'),('hi i am going out\r\n'),('i am going to gandi bazar'),('i am checking for insertion'),('hi i am eating apple'),('hiiiiii'),('ffhfhh');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback1`
--

DROP TABLE IF EXISTS `feedback1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback1` (
  `name` varchar(50) DEFAULT NULL,
  `fb` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback1`
--

LOCK TABLES `feedback1` WRITE;
/*!40000 ALTER TABLE `feedback1` DISABLE KEYS */;
INSERT INTO `feedback1` VALUES ('Shylesh','The experience was good'),('Patil','very good website'),('Sumit','the experience was very good');
/*!40000 ALTER TABLE `feedback1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_9_upgrade_permissions`
--

DROP TABLE IF EXISTS `oo_9_upgrade_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_9_upgrade_permissions` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `UUID` varchar(144) DEFAULT NULL,
  `PATH` varchar(512) NOT NULL,
  `ROLE_NAME` varchar(110) NOT NULL,
  `IS_FOLDER` bit(1) DEFAULT NULL,
  `IS_READ` bit(1) DEFAULT NULL,
  `IS_EXECUTE` bit(1) DEFAULT NULL,
  `IS_SYNC` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_OO_9_UPGRADE_PERMISSIONS` (`ROLE_NAME`,`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_9_upgrade_permissions`
--

LOCK TABLES `oo_9_upgrade_permissions` WRITE;
/*!40000 ALTER TABLE `oo_9_upgrade_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_9_upgrade_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_9_upgrade_run_history`
--

DROP TABLE IF EXISTS `oo_9_upgrade_run_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_9_upgrade_run_history` (
  `ID` bigint(20) NOT NULL,
  `FLOW_UUID` varchar(40) DEFAULT NULL,
  `FROM_OID` bigint(20) DEFAULT NULL,
  `TO_OID` bigint(20) DEFAULT NULL,
  `IS_COMPLETED` bit(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_9_upgrade_run_history`
--

LOCK TABLES `oo_9_upgrade_run_history` WRITE;
/*!40000 ALTER TABLE `oo_9_upgrade_run_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_9_upgrade_run_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_9_upgrade_run_history_err`
--

DROP TABLE IF EXISTS `oo_9_upgrade_run_history_err`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_9_upgrade_run_history_err` (
  `ID` bigint(20) NOT NULL,
  `OID` bigint(20) DEFAULT NULL,
  `FLOW_UUID` varchar(40) DEFAULT NULL,
  `CREATED_TIME` timestamp NULL DEFAULT NULL,
  `ERR_MSG` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_9_upgrade_run_history_err`
--

LOCK TABLES `oo_9_upgrade_run_history_err` WRITE;
/*!40000 ALTER TABLE `oo_9_upgrade_run_history_err` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_9_upgrade_run_history_err` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_artifacts`
--

DROP TABLE IF EXISTS `oo_artifacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_artifacts` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(1024) DEFAULT NULL,
  `DATA_` longblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_artifacts`
--

LOCK TABLES `oo_artifacts` WRITE;
/*!40000 ALTER TABLE `oo_artifacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_artifacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_audit`
--

DROP TABLE IF EXISTS `oo_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_audit` (
  `ID` bigint(20) NOT NULL,
  `TIME` bigint(20) NOT NULL,
  `AUDIT_TYPE` int(11) NOT NULL,
  `AUDIT_GROUP` int(11) NOT NULL,
  `SUBJECT` varchar(256) NOT NULL,
  `OUTCOME` int(11) NOT NULL,
  `DATA` longtext,
  PRIMARY KEY (`ID`),
  KEY `TIME_OO_AUDIT_IDX` (`TIME`),
  KEY `AUDIT_TYPE_OO_AUDIT_IDX` (`AUDIT_TYPE`),
  KEY `AUDIT_GROUP_OO_AUDIT_IDX` (`AUDIT_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_audit`
--

LOCK TABLES `oo_audit` WRITE;
/*!40000 ALTER TABLE `oo_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_audit_config`
--

DROP TABLE IF EXISTS `oo_audit_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_audit_config` (
  `ID` bigint(20) NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `VALUE` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_AUDIT_CONFIG_UQ` (`KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_audit_config`
--

LOCK TABLES `oo_audit_config` WRITE;
/*!40000 ALTER TABLE `oo_audit_config` DISABLE KEYS */;
INSERT INTO `oo_audit_config` VALUES (100600001,'enabled','\0');
/*!40000 ALTER TABLE `oo_audit_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_build_info`
--

DROP TABLE IF EXISTS `oo_bkp9_build_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_build_info` (
  `VERSION` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `BLOB_DATA` longtext,
  `DRI_TIME` datetime DEFAULT NULL,
  `LANGUAGE` varchar(64) DEFAULT NULL,
  `REGION` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_build_info`
--

LOCK TABLES `oo_bkp9_build_info` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_build_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_build_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_dashboard_def`
--

DROP TABLE IF EXISTS `oo_bkp9_dashboard_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_dashboard_def` (
  `OID` decimal(19,0) NOT NULL,
  `UUID` varchar(40) DEFAULT NULL,
  `XML_BLOB` longtext,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_dashboard_def`
--

LOCK TABLES `oo_bkp9_dashboard_def` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_dashboard_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_dashboard_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_flow_metrics`
--

DROP TABLE IF EXISTS `oo_bkp9_flow_metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_flow_metrics` (
  `OID` decimal(19,0) NOT NULL,
  `DLM_TIME` datetime DEFAULT NULL,
  `DIAGNOSED_COUNT` int(11) DEFAULT NULL,
  `ERROR_COUNT` int(11) DEFAULT NULL,
  `FAILED_COUNT` int(11) DEFAULT NULL,
  `FLOW_UUID` varchar(36) DEFAULT NULL,
  `FLOW_VERSION` decimal(19,0) DEFAULT NULL,
  `NO_ACTION_COUNT` int(11) DEFAULT NULL,
  `RESOLVED_COUNT` int(11) DEFAULT NULL,
  `CUMULATIVE_TIME` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_flow_metrics`
--

LOCK TABLES `oo_bkp9_flow_metrics` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_flow_metrics` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_flow_metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_flow_vars`
--

DROP TABLE IF EXISTS `oo_bkp9_flow_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_flow_vars` (
  `OID` decimal(19,0) NOT NULL,
  `RUN_ID` decimal(19,0) DEFAULT NULL,
  `FLOW_UUID` varchar(36) DEFAULT NULL,
  `VAR_KEY` varchar(255) DEFAULT NULL,
  `TSTAMP` datetime DEFAULT NULL,
  `VAR_VALUE` longtext,
  `IS_ENCRYPTED` int(11) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_flow_vars`
--

LOCK TABLES `oo_bkp9_flow_vars` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_flow_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_flow_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_groups`
--

DROP TABLE IF EXISTS `oo_bkp9_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_groups` (
  `OID` decimal(19,0) NOT NULL,
  `DLM_TIME` datetime DEFAULT NULL,
  `UUID` varchar(36) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ANNOTATION` longtext,
  `MAPPINGS` longtext,
  `IS_ENCRYPTED` int(11) DEFAULT NULL,
  `CAPS` decimal(19,0) DEFAULT NULL,
  `DRI_TIME` datetime DEFAULT NULL,
  `BUILT_IN` int(11) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_groups`
--

LOCK TABLES `oo_bkp9_groups` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_groupset`
--

DROP TABLE IF EXISTS `oo_bkp9_groupset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_groupset` (
  `USER_OID` decimal(19,0) NOT NULL,
  `GROUP_OID` decimal(19,0) NOT NULL,
  PRIMARY KEY (`USER_OID`,`GROUP_OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_groupset`
--

LOCK TABLES `oo_bkp9_groupset` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_groupset` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_groupset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_keyval`
--

DROP TABLE IF EXISTS `oo_bkp9_keyval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_keyval` (
  `OID` decimal(19,0) NOT NULL,
  `DISCRIMINATOR` varchar(10) DEFAULT NULL,
  `PARTITION` varchar(64) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `META` longtext,
  `VALUE` longtext,
  `FLAGS` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_keyval`
--

LOCK TABLES `oo_bkp9_keyval` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_keyval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_keyval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_log_record`
--

DROP TABLE IF EXISTS `oo_bkp9_log_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_log_record` (
  `OID` decimal(19,0) NOT NULL,
  `ITEM_TYPE` varchar(255) DEFAULT NULL,
  `ITEM_NAME` varchar(127) DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `ITEM_VALUE` varchar(255) DEFAULT NULL,
  `RUN_HIST_ID` decimal(19,0) DEFAULT NULL,
  `RUNSTEP_HIST_ID` decimal(19,0) DEFAULT NULL,
  `IS_ERROR` int(11) DEFAULT NULL,
  `ERROR_MSG` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_log_record`
--

LOCK TABLES `oo_bkp9_log_record` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_log_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_log_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_property_history`
--

DROP TABLE IF EXISTS `oo_bkp9_property_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_property_history` (
  `OID` decimal(19,0) NOT NULL,
  `RUN_HIST_ID` decimal(19,0) DEFAULT NULL,
  `PROPERTY_NAME` varchar(64) DEFAULT NULL,
  `VALUE1` varchar(64) DEFAULT NULL,
  `VALUE2` varchar(96) DEFAULT NULL,
  `VALUE3` varchar(127) DEFAULT NULL,
  `VALUE4` varchar(900) DEFAULT NULL,
  `PROPERTY_TYPE` int(11) DEFAULT NULL,
  `IS_LOG_RECORD` int(11) DEFAULT NULL,
  `RUNSTEP_HIST_ID` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_property_history`
--

LOCK TABLES `oo_bkp9_property_history` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_property_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_property_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `oo_bkp9_qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_qrtz_cron_triggers` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `CRON_EXPRESSION` varchar(80) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_qrtz_cron_triggers`
--

LOCK TABLES `oo_bkp9_qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_qrtz_job_details`
--

DROP TABLE IF EXISTS `oo_bkp9_qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_qrtz_job_details` (
  `JOB_NAME` varchar(80) NOT NULL,
  `JOB_GROUP` varchar(80) NOT NULL,
  `DESCRIPTION` varchar(120) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(128) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_VOLATILE` varchar(1) NOT NULL,
  `IS_STATEFUL` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_qrtz_job_details`
--

LOCK TABLES `oo_bkp9_qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `oo_bkp9_qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_qrtz_simple_triggers` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_qrtz_simple_triggers`
--

LOCK TABLES `oo_bkp9_qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_qrtz_triggers`
--

DROP TABLE IF EXISTS `oo_bkp9_qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_qrtz_triggers` (
  `TRIGGER_NAME` varchar(80) NOT NULL,
  `TRIGGER_GROUP` varchar(80) NOT NULL,
  `JOB_NAME` varchar(80) NOT NULL,
  `JOB_GROUP` varchar(80) NOT NULL,
  `IS_VOLATILE` varchar(1) NOT NULL,
  `DESCRIPTION` varchar(120) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(80) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_qrtz_triggers`
--

LOCK TABLES `oo_bkp9_qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_run_history`
--

DROP TABLE IF EXISTS `oo_bkp9_run_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_run_history` (
  `OID` decimal(19,0) NOT NULL,
  `FLOW_DLM_TIME` datetime DEFAULT NULL,
  `RUN_ID` decimal(19,0) DEFAULT NULL,
  `RUN_TYPE` int(11) DEFAULT NULL,
  `RUN_NAME` varchar(255) DEFAULT NULL,
  `FLOW_NAME` varchar(255) DEFAULT NULL,
  `FLOW_LAST_MODIFIED_BY` varchar(36) DEFAULT NULL,
  `FLOW_REVISION` varchar(64) DEFAULT NULL,
  `FLOW_PATH` varchar(1024) DEFAULT NULL,
  `FLOW_UUID` varchar(36) DEFAULT NULL,
  `FLOW_VERSION` decimal(19,0) DEFAULT NULL,
  `HAS_PARALLEL_STEPS` int(11) DEFAULT NULL,
  `RUN_TIME_MILLIS` double DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STEP_COUNT` int(11) DEFAULT NULL,
  `DIRECT_STEP_COUNT` int(11) DEFAULT NULL,
  `USER_ID` varchar(64) DEFAULT NULL,
  `FLOW_DESCRIPTION` varchar(1064) DEFAULT NULL,
  `EXECUTION_STATE` int(11) DEFAULT NULL,
  `COMMAND_STATE` int(11) DEFAULT NULL,
  `RUN_VALUE` double DEFAULT NULL,
  `PARENT_ID` decimal(19,0) DEFAULT NULL,
  `PARALLEL_MODE` int(11) DEFAULT NULL,
  `SCHEDULED_BY` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_run_history`
--

LOCK TABLES `oo_bkp9_run_history` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_run_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_run_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_runstep_history`
--

DROP TABLE IF EXISTS `oo_bkp9_runstep_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_runstep_history` (
  `OID` decimal(19,0) NOT NULL,
  `PARENT_HIST_ID` decimal(19,0) DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STEP_NAME` varchar(255) DEFAULT NULL,
  `STEP_DESCRIPTION` varchar(1064) DEFAULT NULL,
  `OPERATION_NAME` varchar(255) DEFAULT NULL,
  `OPERATION_PATH` varchar(512) DEFAULT NULL,
  `OPERATION_TYPE` varchar(64) DEFAULT NULL,
  `PARENT_FLOW_NAME` varchar(255) DEFAULT NULL,
  `PARENT_FLOW_PATH` varchar(512) DEFAULT NULL,
  `RESPONSE_STRING` varchar(128) DEFAULT NULL,
  `RESULT_STRING` longtext,
  `SCRIPTLET_RESULT_STRING` longtext,
  `RUN_TIME_MILLIS` double DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `STEP_NUMBER` int(11) DEFAULT NULL,
  `TREE_LEVEL` int(11) DEFAULT NULL,
  `IS_SIMPLE` int(11) DEFAULT NULL,
  `BOUND_INPUTS` longtext,
  `TRANSITION_LABEL` varchar(255) DEFAULT NULL,
  `TRANSITION_STRING` longtext,
  `TRANSITION_VALUE` double DEFAULT NULL,
  `USER_ID` varchar(64) DEFAULT NULL,
  `EXCEPTION_MESSAGE` varchar(255) DEFAULT NULL,
  `EXCEPTION_TRACE` longtext,
  `RETURN_CODE` int(11) DEFAULT NULL,
  `RESPONSE_TYPE` int(11) DEFAULT NULL,
  `UUID` varchar(36) DEFAULT NULL,
  `PARALLEL_MODE` int(11) DEFAULT NULL,
  `ROOT_HIST_ID` decimal(19,0) DEFAULT NULL,
  `PATH_ENC` varchar(512) DEFAULT NULL,
  `RUN_HISTORY_ID` decimal(19,0) DEFAULT NULL,
  `STEP_POS` int(11) DEFAULT NULL,
  `STEP_CONTEXT` longblob,
  `STEP_UUID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_runstep_history`
--

LOCK TABLES `oo_bkp9_runstep_history` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_runstep_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_runstep_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_bkp9_users`
--

DROP TABLE IF EXISTS `oo_bkp9_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_bkp9_users` (
  `OID` decimal(19,0) NOT NULL,
  `DLM_TIME` datetime DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `PASS` varchar(255) DEFAULT NULL,
  `ENABLED` int(11) DEFAULT NULL,
  `INTERNAL` int(11) DEFAULT NULL,
  `DRI_TIME` datetime DEFAULT NULL,
  `XML_BLOB` longtext,
  `BUILT_IN` int(11) DEFAULT NULL,
  PRIMARY KEY (`OID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_bkp9_users`
--

LOCK TABLES `oo_bkp9_users` WRITE;
/*!40000 ALTER TABLE `oo_bkp9_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_bkp9_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_blob_triggers`
--

DROP TABLE IF EXISTS `oo_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_blob_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `OO_BLOB_TRIGGERS_TRGGRS_FK` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `oo_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_blob_triggers`
--

LOCK TABLES `oo_blob_triggers` WRITE;
/*!40000 ALTER TABLE `oo_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_cached_execution_plans`
--

DROP TABLE IF EXISTS `oo_cached_execution_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_cached_execution_plans` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_PLAN` longtext,
  `ENTITY_VERSION` bigint(20) DEFAULT NULL,
  `UUID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_cached_execution_plans`
--

LOCK TABLES `oo_cached_execution_plans` WRITE;
/*!40000 ALTER TABLE `oo_cached_execution_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_cached_execution_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_cached_graphs`
--

DROP TABLE IF EXISTS `oo_cached_graphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_cached_graphs` (
  `ID` bigint(20) NOT NULL,
  `GRAPH` longtext,
  `ENTITY_VERSION` bigint(20) DEFAULT NULL,
  `UUID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_CACHED_GRAPHS_UQ` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_cached_graphs`
--

LOCK TABLES `oo_cached_graphs` WRITE;
/*!40000 ALTER TABLE `oo_cached_graphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_cached_graphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_calendars`
--

DROP TABLE IF EXISTS `oo_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_calendars` (
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_calendars`
--

LOCK TABLES `oo_calendars` WRITE;
/*!40000 ALTER TABLE `oo_calendars` DISABLE KEYS */;
INSERT INTO `oo_calendars` VALUES ('schedulerCalendar','¬í\0sr\0*com.hp.oo.scheduler.impl.SchedulerCalendar-@=CKæI\0\0xr\0%org.quartz.impl.calendar.BaseCalendar+ñ†ãßï\0L\0baseCalendart\0Lorg/quartz/Calendar;L\0descriptiont\0Ljava/lang/String;L\0timeZonet\0Ljava/util/TimeZone;xpppp','local-scheduler-persisted');
/*!40000 ALTER TABLE `oo_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_cancelled_executions`
--

DROP TABLE IF EXISTS `oo_cancelled_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_cancelled_executions` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_UUID` varchar(255) NOT NULL,
  `CANCELLATION_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EXECUTION_UUID` (`EXECUTION_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_cancelled_executions`
--

LOCK TABLES `oo_cancelled_executions` WRITE;
/*!40000 ALTER TABLE `oo_cancelled_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_cancelled_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_config_item_values`
--

DROP TABLE IF EXISTS `oo_config_item_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_config_item_values` (
  `ID` bigint(20) NOT NULL,
  `CLOB_VALUE` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_config_item_values`
--

LOCK TABLES `oo_config_item_values` WRITE;
/*!40000 ALTER TABLE `oo_config_item_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_config_item_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_config_items`
--

DROP TABLE IF EXISTS `oo_config_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_config_items` (
  `ID` bigint(20) NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_CONFIG_ITEMS_UQ` (`KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_config_items`
--

LOCK TABLES `oo_config_items` WRITE;
/*!40000 ALTER TABLE `oo_config_items` DISABLE KEYS */;
INSERT INTO `oo_config_items` VALUES (100900002,'data.upgrade.status.20141200.UpgradeDeployedData','EXECUTED'),(100900003,'data.upgrade.status.20141200.UpgradeStepLogEnded','EXECUTED'),(100900004,'data.upgrade.status.20141200.UpgradeStepLogBindings','EXECUTED'),(100900005,'data.upgrade.status.20150800.UpdateRunPersistenceTask','EXECUTED'),(100900006,'data.upgrade.status.20151000.AddProprietaryTypeToDeployedEntity','EXECUTED'),(100900007,'data.upgrade.status.20151000.DeleteEmptyContentPacksTask','EXECUTED'),(100900008,'data.upgrade.status.20151000.PopulateReferencedIdForConfigItemsTask','EXECUTED'),(100900009,'data.upgrade.status.20151000.PopulateReferencedIdForGroupAliasesTask','EXECUTED'),(104900001,'content.statistics.update.interval','600000'),(104900002,'audit.clean.old.records.interval','432000000'),(104900003,'l10n.clean.old.records.interval','86400000'),(104900004,'deploy.process.keepAlive','300000'),(104900005,'deployment.process.clean.interval','86400000'),(104900006,'upgrade.execution.events.invoked','TRUE'),(104900007,'upgrade.execution.events.status','Summary total executions : 0, succeeded: 0, failed: 0'),(104900008,'lic','<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<RawLicense type=\"OvKey4\">AASG C99A H9PA KHXZ URA5 H6SV Y9JL KMPL B89H MZVU DXAU 2CSM GHTG L762 7X9Y UJ5Y LNVT D5K9 GFRW DQ5J N6CJ 6KGC J8RM LG88 SPLV 4XA2 WPNH MCFY TM3Q DBEV X6YR PW9D B9TS XFXC LL4U R4WA V886 FCY3 ERPL JGM7 4NM9 98AB\"OO Instant On Community License with 100 capacity\"</RawLicense>'),(104900009,'lic_capacity','{ENCRYPTED}iOURru3d4tv6JIFlSCZYFQ=='),(104900010,'lic_date','{ENCRYPTED}CkiWlNE5OfYxxjYxFnXI5g=='),(104900011,'saml.proxy.host',' '),(104900012,'saml.proxy.port',' '),(104900013,'saml.idp.url','http://dummy.idp.host.xml'),(104900014,'key.store.password','{ENCRYPTED}98ER92rjB6D794+koLczeg=='),(104900015,'key.store.private.key.alias.name','tomcat'),(104900016,'key.store.private.key.alias.password','{ENCRYPTED}98ER92rjB6D794+koLczeg=='),(104900017,'saml.key.store.idp.alias.name','idp'),(104900018,'saml.key.store.idp.alias.password','{ENCRYPTED}98ER92rjB6D794+koLczeg=='),(104900019,'saml.enabled','false'),(104900020,'saml.sp.entity.id','ooentityid'),(104900021,'saml.attribute.name.username','username'),(104900022,'saml.attribute.name.groups','groups'),(104900023,'saml.groups.delimiter',','),(104900024,'roi.description',' '),(104900025,'user.entitled.flows.max.count','50'),(104900026,'capture.loggedin.user.credentials','false'),(104900027,'csrf.protection.enabled','true'),(104900028,'external.url',' '),(104900029,'security.banner.enable','false'),(104900030,'security.banner','default.security.banner.text'),(104900031,'x509.certificate.policy.enabled','false'),(104900032,'x509.certificate.policy.list',' '),(104900033,'ldaps.limit','50'),(104900034,'ldaps.groups.maxNumberOfGroupsPerRootDn','1000'),(104900035,'ldaps.search.timeoutMs','8000'),(104900036,'ldaps.trustAllCertificates','true'),(104900037,'ldaps.connection.timeoutMs','15000'),(104900038,'ldaps.referral.hop.limit','5'),(104900039,'internalUsers.domain','Internal'),(104900040,'run.persist.level','STANDARD'),(104900041,'x509.subject.principal.regex','CN=(.*?),');
/*!40000 ALTER TABLE `oo_config_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_content_config_item`
--

DROP TABLE IF EXISTS `oo_content_config_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_content_config_item` (
  `ID` bigint(20) NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `TYPE_` varchar(255) NOT NULL,
  `DEFAULT_VALUE_ID` bigint(20) DEFAULT NULL,
  `CUSTOM_VALUE_ID` bigint(20) DEFAULT NULL,
  `PATH` varchar(255) NOT NULL,
  `DEPLOYED_ENTITY_ID` bigint(20) DEFAULT NULL,
  `REFERENCED_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_PATH_OO_CONTENT_CONFIG_ITEM` (`PATH`),
  UNIQUE KEY `UQ_RFID_OO_CONTENT_CNFG_ITEM` (`REFERENCED_ID`,`TYPE_`),
  KEY `DEFAULT_VALUE_ID_FK` (`DEFAULT_VALUE_ID`),
  KEY `CUSTOM_VALUE_ID_FK` (`CUSTOM_VALUE_ID`),
  KEY `FK_CONFIG_ITEM_DEPLOYED_ENTITY` (`DEPLOYED_ENTITY_ID`),
  CONSTRAINT `CUSTOM_VALUE_ID_FK` FOREIGN KEY (`CUSTOM_VALUE_ID`) REFERENCES `oo_config_item_values` (`ID`),
  CONSTRAINT `DEFAULT_VALUE_ID_FK` FOREIGN KEY (`DEFAULT_VALUE_ID`) REFERENCES `oo_config_item_values` (`ID`),
  CONSTRAINT `FK_CONFIG_ITEM_DEPLOYED_ENTITY` FOREIGN KEY (`DEPLOYED_ENTITY_ID`) REFERENCES `oo_deployed_entities` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_content_config_item`
--

LOCK TABLES `oo_content_config_item` WRITE;
/*!40000 ALTER TABLE `oo_content_config_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_content_config_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_content_packs`
--

DROP TABLE IF EXISTS `oo_content_packs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_content_packs` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `CP_VERSION` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `CONTENT_PACK_ZIP` longblob,
  `DESCRIPTION` longtext,
  `CP_FILE_ID` bigint(20) DEFAULT NULL,
  `UUID` varchar(255) NOT NULL,
  `PUBLISHER` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_DATE` bigint(20) DEFAULT NULL,
  `SCM_TAG` varchar(255) DEFAULT NULL,
  `SCM_REVISION` varchar(255) DEFAULT NULL,
  `SIGN_STATUS` varchar(30) DEFAULT 'na',
  `SIGNED_BY` varchar(255) DEFAULT NULL,
  `SIGN_DETAILS` longtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_NAME_OO_CONTENT_PACKS` (`NAME`),
  UNIQUE KEY `UQ_UUID_OO_CONTENT_PACKS` (`UUID`),
  KEY `FK_CP_FILES_CP_ID` (`CP_FILE_ID`),
  CONSTRAINT `FK_CP_FILES_CP_ID` FOREIGN KEY (`CP_FILE_ID`) REFERENCES `oo_content_packs_files` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_content_packs`
--

LOCK TABLES `oo_content_packs` WRITE;
/*!40000 ALTER TABLE `oo_content_packs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_content_packs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_content_packs_aud`
--

DROP TABLE IF EXISTS `oo_content_packs_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_content_packs_aud` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `CP_VERSION` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `CONTENT_PACK_ZIP` longblob,
  `DESCRIPTION` longtext,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  `PUBLISHER` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_DATE` bigint(20) DEFAULT NULL,
  `SCM_TAG` varchar(255) DEFAULT NULL,
  `SCM_REVISION` varchar(255) DEFAULT NULL,
  `SIGN_STATUS` varchar(30) DEFAULT 'na',
  `SIGNED_BY` varchar(255) DEFAULT NULL,
  `SIGN_DETAILS` longtext,
  PRIMARY KEY (`REV`,`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_content_packs_aud`
--

LOCK TABLES `oo_content_packs_aud` WRITE;
/*!40000 ALTER TABLE `oo_content_packs_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_content_packs_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_content_packs_files`
--

DROP TABLE IF EXISTS `oo_content_packs_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_content_packs_files` (
  `ID` bigint(20) NOT NULL,
  `CONTENT_PACK_ZIP` longblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_content_packs_files`
--

LOCK TABLES `oo_content_packs_files` WRITE;
/*!40000 ALTER TABLE `oo_content_packs_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_content_packs_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_cp_files_for_delete`
--

DROP TABLE IF EXISTS `oo_cp_files_for_delete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_cp_files_for_delete` (
  `DEPLOYMENT_PROCESS_ID` bigint(20) NOT NULL,
  `CONTENT_PACK_UUID` varchar(255) NOT NULL,
  UNIQUE KEY `UQ_CP_FILES_FOR_DELETE` (`DEPLOYMENT_PROCESS_ID`,`CONTENT_PACK_UUID`),
  CONSTRAINT `FK_OO_CP_FILES_FOR_DELETE` FOREIGN KEY (`DEPLOYMENT_PROCESS_ID`) REFERENCES `oo_deployment_processes` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_cp_files_for_delete`
--

LOCK TABLES `oo_cp_files_for_delete` WRITE;
/*!40000 ALTER TABLE `oo_cp_files_for_delete` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_cp_files_for_delete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_cp_statistics`
--

DROP TABLE IF EXISTS `oo_cp_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_cp_statistics` (
  `ID` bigint(20) NOT NULL,
  `CP_NAME` varchar(255) NOT NULL,
  `MONTH` tinyint(4) NOT NULL,
  `YEAR` smallint(6) NOT NULL,
  `NUM_OF_RUNS` bigint(20) NOT NULL,
  PRIMARY KEY (`CP_NAME`,`MONTH`,`YEAR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_cp_statistics`
--

LOCK TABLES `oo_cp_statistics` WRITE;
/*!40000 ALTER TABLE `oo_cp_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_cp_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_cron_triggers`
--

DROP TABLE IF EXISTS `oo_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_cron_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `OO_CRON_TRGGRS_FK` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `oo_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_cron_triggers`
--

LOCK TABLES `oo_cron_triggers` WRITE;
/*!40000 ALTER TABLE `oo_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_db_statistics`
--

DROP TABLE IF EXISTS `oo_db_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_db_statistics` (
  `ID` bigint(20) NOT NULL,
  `OO_TOTAL_USAGE` bigint(20) NOT NULL,
  `EXECUTION_USAGE` bigint(20) NOT NULL,
  `DEBUGGER_USAGE` bigint(20) NOT NULL,
  `AUDIT_USAGE` bigint(20) NOT NULL,
  `DAY` tinyint(4) NOT NULL,
  `MONTH` tinyint(4) NOT NULL,
  `YEAR` smallint(6) NOT NULL,
  PRIMARY KEY (`DAY`,`MONTH`,`YEAR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_db_statistics`
--

LOCK TABLES `oo_db_statistics` WRITE;
/*!40000 ALTER TABLE `oo_db_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_db_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_debugger_events`
--

DROP TABLE IF EXISTS `oo_debugger_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_debugger_events` (
  `EXECUTION_ID` varchar(64) NOT NULL,
  `EVENT_INDEX` bigint(20) NOT NULL,
  `EVENT_TYPE` varchar(24) NOT NULL,
  `PUBLISH_TIME` bigint(20) NOT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `DATA1` varchar(255) DEFAULT NULL,
  `DATA2` varchar(2048) DEFAULT NULL,
  `DATA4` longtext,
  PRIMARY KEY (`EVENT_INDEX`),
  KEY `OO_DEBUGGER_EVENTS_IDX` (`EXECUTION_ID`,`EVENT_INDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_debugger_events`
--

LOCK TABLES `oo_debugger_events` WRITE;
/*!40000 ALTER TABLE `oo_debugger_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_debugger_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_debugger_events_generator`
--

DROP TABLE IF EXISTS `oo_debugger_events_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_debugger_events_generator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_debugger_events_generator`
--

LOCK TABLES `oo_debugger_events_generator` WRITE;
/*!40000 ALTER TABLE `oo_debugger_events_generator` DISABLE KEYS */;
INSERT INTO `oo_debugger_events_generator` VALUES (1);
/*!40000 ALTER TABLE `oo_debugger_events_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_debugger_locks`
--

DROP TABLE IF EXISTS `oo_debugger_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_debugger_locks` (
  `EXECUTION_ID` varchar(64) NOT NULL,
  PRIMARY KEY (`EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_debugger_locks`
--

LOCK TABLES `oo_debugger_locks` WRITE;
/*!40000 ALTER TABLE `oo_debugger_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_debugger_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_dep_entity_dep_entities`
--

DROP TABLE IF EXISTS `oo_dep_entity_dep_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_dep_entity_dep_entities` (
  `CONTAINER_DEPLOYED_ENTITY_ID` bigint(20) NOT NULL,
  `CONTAINED_DEPLOYED_ENTITY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CONTAINER_DEPLOYED_ENTITY_ID`,`CONTAINED_DEPLOYED_ENTITY_ID`),
  KEY `U_CONTAINED_DEPLOYED_ENTITY_ID` (`CONTAINED_DEPLOYED_ENTITY_ID`),
  CONSTRAINT `FK_OO_DEP_ENTITY_DEP_ENTITIES1` FOREIGN KEY (`CONTAINED_DEPLOYED_ENTITY_ID`) REFERENCES `oo_deployed_entities` (`ID`),
  CONSTRAINT `FK_OO_DEP_ENTITY_DEP_ENTITIES2` FOREIGN KEY (`CONTAINER_DEPLOYED_ENTITY_ID`) REFERENCES `oo_deployed_entities` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_dep_entity_dep_entities`
--

LOCK TABLES `oo_dep_entity_dep_entities` WRITE;
/*!40000 ALTER TABLE `oo_dep_entity_dep_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_dep_entity_dep_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_dependencies_mapping`
--

DROP TABLE IF EXISTS `oo_dependencies_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_dependencies_mapping` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(255) NOT NULL,
  `DEPENDED_UUID` varchar(255) NOT NULL,
  `DEPLOYED_ENTITY_TYPE` varchar(128) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_DEPENDENCIES_MAPPING` (`UUID`,`DEPENDED_UUID`),
  KEY `U_DEPENDED_UUID` (`DEPENDED_UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_dependencies_mapping`
--

LOCK TABLES `oo_dependencies_mapping` WRITE;
/*!40000 ALTER TABLE `oo_dependencies_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_dependencies_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployed_entities`
--

DROP TABLE IF EXISTS `oo_deployed_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployed_entities` (
  `DEPLOYED_ENTITY_TYPE` varchar(31) NOT NULL,
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(255) NOT NULL,
  `INPUT_FORMAT` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `SOURCE_DATA` longtext,
  `SYSTEM_ACCOUNT_TOKEN` varchar(1000) DEFAULT NULL,
  `SYSTEM_PROPERTY_VALUE` longtext,
  `PARENT_OP_ID` bigint(20) DEFAULT NULL,
  `CP_NAME` varchar(255) NOT NULL,
  `DESCRIPTION_KEY` varchar(255) DEFAULT NULL,
  `SOURCE_FILE` longblob,
  `LOG_LEVEL` varchar(50) DEFAULT NULL,
  `PROPRIETARY_TYPE` varchar(255) NOT NULL DEFAULT 'na',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `FLOW_DATA_UQ` (`UUID`),
  KEY `PATH_OO_DEPLOYED_ENTITIES` (`PATH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployed_entities`
--

LOCK TABLES `oo_deployed_entities` WRITE;
/*!40000 ALTER TABLE `oo_deployed_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_deployed_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployed_entities_aud`
--

DROP TABLE IF EXISTS `oo_deployed_entities_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployed_entities_aud` (
  `DEPLOYED_ENTITY_TYPE` varchar(31) DEFAULT NULL,
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  `INPUT_FORMAT` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `SOURCE_DATA` longtext,
  `SYSTEM_ACCOUNT_TOKEN` varchar(1000) DEFAULT NULL,
  `SYSTEM_PROPERTY_VALUE` longtext,
  `PARENT_OP_ID` bigint(20) DEFAULT NULL,
  `CP_NAME` varchar(255) DEFAULT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `DESCRIPTION_KEY` varchar(255) DEFAULT NULL,
  `SOURCE_FILE` longblob,
  `sourcefile_mod` bit(1) DEFAULT NULL,
  `LOG_LEVEL` varchar(50) DEFAULT NULL,
  `PROPRIETARY_TYPE` varchar(255) DEFAULT 'na',
  `cpname_mod` bit(1) DEFAULT NULL,
  PRIMARY KEY (`REV`,`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployed_entities_aud`
--

LOCK TABLES `oo_deployed_entities_aud` WRITE;
/*!40000 ALTER TABLE `oo_deployed_entities_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_deployed_entities_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployment_cp_files`
--

DROP TABLE IF EXISTS `oo_deployment_cp_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployment_cp_files` (
  `ID` bigint(20) NOT NULL,
  `DEPLOYMENT_PROCESS_ID` bigint(20) NOT NULL,
  `CONTENT_PACK_FILE_NAME` varchar(255) NOT NULL,
  `FILE_SIZE` int(11) NOT NULL,
  `FILE_CONTENT` longblob,
  `DEPENDENCY_FILE` longtext,
  `PROPERTIES_FILE` longtext,
  `SIGN_STATUS` varchar(30) DEFAULT 'na',
  `SIGNED_BY` varchar(255) DEFAULT NULL,
  `SIGN_DETAILS` longtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_DEPLOYMENT_CP_FILE` (`DEPLOYMENT_PROCESS_ID`,`CONTENT_PACK_FILE_NAME`),
  CONSTRAINT `FK_OO_DEPLOYMENT_CP_FILES` FOREIGN KEY (`DEPLOYMENT_PROCESS_ID`) REFERENCES `oo_deployment_processes` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployment_cp_files`
--

LOCK TABLES `oo_deployment_cp_files` WRITE;
/*!40000 ALTER TABLE `oo_deployment_cp_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_deployment_cp_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployment_lock`
--

DROP TABLE IF EXISTS `oo_deployment_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployment_lock` (
  `ID` bigint(20) NOT NULL,
  `ENTITY_VERSION` bigint(20) DEFAULT NULL,
  `DEPLOYMENT_COUNTER` bigint(20) DEFAULT NULL,
  `IS_ROLLBACK` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployment_lock`
--

LOCK TABLES `oo_deployment_lock` WRITE;
/*!40000 ALTER TABLE `oo_deployment_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_deployment_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployment_lock_aud`
--

DROP TABLE IF EXISTS `oo_deployment_lock_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployment_lock_aud` (
  `ID` bigint(20) DEFAULT NULL,
  `ENTITY_VERSION` bigint(20) DEFAULT NULL,
  `DEPLOYMENT_COUNTER` bigint(20) DEFAULT NULL,
  `IS_ROLLBACK` bit(1) DEFAULT b'0',
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployment_lock_aud`
--

LOCK TABLES `oo_deployment_lock_aud` WRITE;
/*!40000 ALTER TABLE `oo_deployment_lock_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_deployment_lock_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployment_process_lock`
--

DROP TABLE IF EXISTS `oo_deployment_process_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployment_process_lock` (
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployment_process_lock`
--

LOCK TABLES `oo_deployment_process_lock` WRITE;
/*!40000 ALTER TABLE `oo_deployment_process_lock` DISABLE KEYS */;
INSERT INTO `oo_deployment_process_lock` VALUES ('OO_DEPLOYMENT_PROCESS');
/*!40000 ALTER TABLE `oo_deployment_process_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployment_processes`
--

DROP TABLE IF EXISTS `oo_deployment_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployment_processes` (
  `ID` bigint(20) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `CURRENT_CP_NAME` varchar(255) DEFAULT NULL,
  `CURRENT_PHASE` varchar(255) DEFAULT NULL,
  `CURRENT_STEP_NUM` int(11) DEFAULT NULL,
  `NUM_OF_SUB_STEPS` bigint(20) DEFAULT NULL,
  `CURRENT_SUB_STEP` bigint(20) DEFAULT NULL,
  `KEEP_ALIVE` bigint(20) NOT NULL,
  `DEPLOYMENT_RESULT` longtext,
  `CREATION_DATE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployment_processes`
--

LOCK TABLES `oo_deployment_processes` WRITE;
/*!40000 ALTER TABLE `oo_deployment_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_deployment_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_deployment_run_state`
--

DROP TABLE IF EXISTS `oo_deployment_run_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_deployment_run_state` (
  `ID` bigint(20) NOT NULL,
  `DEPLOYMENT_PROCESS_ID` bigint(20) DEFAULT NULL,
  `KEEP_ALIVE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_deployment_run_state`
--

LOCK TABLES `oo_deployment_run_state` WRITE;
/*!40000 ALTER TABLE `oo_deployment_run_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_deployment_run_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_domain_term_values`
--

DROP TABLE IF EXISTS `oo_domain_term_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_domain_term_values` (
  `DOMAIN_TERM_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` longtext,
  UNIQUE KEY `UQ_DOMAIN_TERM_VALUES` (`DOMAIN_TERM_ID`,`NAME`),
  CONSTRAINT `FK_DOMAIN_TERM_VALUES_ID` FOREIGN KEY (`DOMAIN_TERM_ID`) REFERENCES `oo_deployed_entities` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_domain_term_values`
--

LOCK TABLES `oo_domain_term_values` WRITE;
/*!40000 ALTER TABLE `oo_domain_term_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_domain_term_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_entitlements`
--

DROP TABLE IF EXISTS `oo_entitlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_entitlements` (
  `ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  `RELATED_ENTITY_UUID` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) NOT NULL,
  `IS_IMPLICIT` bit(1) DEFAULT NULL,
  `RESOLVED` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_OO_ENTITLEMENTS` (`ROLE_ID`,`PATH`),
  KEY `U_OO_ENTITLEMENTS_PATH_INDEX` (`PATH`),
  CONSTRAINT `FK_OO_ENTITLEMENT_OO_ROLE_MGMT` FOREIGN KEY (`ROLE_ID`) REFERENCES `oo_roles_management` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_entitlements`
--

LOCK TABLES `oo_entitlements` WRITE;
/*!40000 ALTER TABLE `oo_entitlements` DISABLE KEYS */;
INSERT INTO `oo_entitlements` VALUES (106200001,104400001,NULL,'Library','',''),(106200002,104400001,NULL,'Configuration','',''),(106200003,104400002,NULL,'Library','',''),(106200004,104400002,NULL,'Configuration','',''),(106200005,104400003,NULL,'Library','',''),(106200006,104400003,NULL,'Configuration','',''),(106200007,104400004,NULL,'Library','',''),(106200008,104400004,NULL,'Configuration','',''),(106200009,104400005,NULL,'Library','',''),(106200010,104400005,NULL,'Configuration','','');
/*!40000 ALTER TABLE `oo_entitlements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_entitlements_privileges`
--

DROP TABLE IF EXISTS `oo_entitlements_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_entitlements_privileges` (
  `ENTITLEMENT_ID` bigint(20) NOT NULL,
  `PRIVILEGE_NAME` varchar(255) DEFAULT NULL,
  UNIQUE KEY `UQ_OO_ENT_PRIV` (`ENTITLEMENT_ID`,`PRIVILEGE_NAME`),
  KEY `U_OO_ENT_PRIV_INDEX` (`ENTITLEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_entitlements_privileges`
--

LOCK TABLES `oo_entitlements_privileges` WRITE;
/*!40000 ALTER TABLE `oo_entitlements_privileges` DISABLE KEYS */;
INSERT INTO `oo_entitlements_privileges` VALUES (106200001,'RUN'),(106200001,'VIEW'),(106200002,'VIEW_EXECUTE'),(106200005,'RUN'),(106200005,'VIEW'),(106200006,'VIEW_EXECUTE');
/*!40000 ALTER TABLE `oo_entitlements_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_exec_conf_version`
--

DROP TABLE IF EXISTS `oo_exec_conf_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_exec_conf_version` (
  `ID` bigint(20) NOT NULL,
  `CONFIGURATION_VERSION` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_exec_conf_version`
--

LOCK TABLES `oo_exec_conf_version` WRITE;
/*!40000 ALTER TABLE `oo_exec_conf_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_exec_conf_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_executed_flow_graph`
--

DROP TABLE IF EXISTS `oo_executed_flow_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_executed_flow_graph` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` bigint(20) NOT NULL,
  `FLOW_UUID` varchar(64) NOT NULL,
  `FLOW_GRAPH_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_EXECUTION_AND_FLOW` (`EXECUTION_ID`,`FLOW_UUID`),
  KEY `FK_EXECUTED_FLOW_GRAPH_GRAPH` (`FLOW_GRAPH_ID`),
  CONSTRAINT `FK_EXECUTED_FLOW_GRAPH_GRAPH` FOREIGN KEY (`FLOW_GRAPH_ID`) REFERENCES `oo_flow_graph` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_executed_flow_graph`
--

LOCK TABLES `oo_executed_flow_graph` WRITE;
/*!40000 ALTER TABLE `oo_executed_flow_graph` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_executed_flow_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_bound_inputs`
--

DROP TABLE IF EXISTS `oo_execution_bound_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_bound_inputs` (
  `ID` bigint(20) NOT NULL,
  `INPUT_NAME` varchar(255) NOT NULL,
  `DOMAIN_TERM_NAME` varchar(255) DEFAULT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `BIG_VALUE` longtext,
  `EXECUTION_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXEC_BND_INPUTS_EXEC_ID` (`EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_bound_inputs`
--

LOCK TABLES `oo_execution_bound_inputs` WRITE;
/*!40000 ALTER TABLE `oo_execution_bound_inputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_bound_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_bound_outputs`
--

DROP TABLE IF EXISTS `oo_execution_bound_outputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_bound_outputs` (
  `ID` bigint(20) NOT NULL,
  `OUTPUT_NAME` varchar(255) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `BIG_VALUE` longtext,
  `EXECUTION_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXEC_BND_OUTPUTS_EXEC_ID` (`EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_bound_outputs`
--

LOCK TABLES `oo_execution_bound_outputs` WRITE;
/*!40000 ALTER TABLE `oo_execution_bound_outputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_bound_outputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_events`
--

DROP TABLE IF EXISTS `oo_execution_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_events` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(64) NOT NULL,
  `EVENT_TYPE` varchar(64) NOT NULL,
  `PUBLISH_TIME` datetime NOT NULL,
  `DATA1` varchar(255) DEFAULT NULL,
  `DATA2` varchar(2048) DEFAULT NULL,
  `DATA3` bigint(20) DEFAULT NULL,
  `DATA4` longtext,
  `SEQUENCE_ORDER` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `EVENT_INDEX` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXEC_EVENTS_EXECID_TYPE_IDX` (`EXECUTION_ID`,`EVENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_events`
--

LOCK TABLES `oo_execution_events` WRITE;
/*!40000 ALTER TABLE `oo_execution_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_events_1`
--

DROP TABLE IF EXISTS `oo_execution_events_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_events_1` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(64) NOT NULL,
  `EVENT_TYPE` varchar(64) NOT NULL,
  `PUBLISH_TIME` datetime NOT NULL,
  `DATA1` varchar(255) DEFAULT NULL,
  `DATA2` varchar(2048) DEFAULT NULL,
  `DATA3` bigint(20) DEFAULT NULL,
  `DATA4` longtext,
  `SEQUENCE_ORDER` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `EVENT_INDEX` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXEC_EVENTS_1_EXECID_TYPE_IDX` (`EXECUTION_ID`,`EVENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_events_1`
--

LOCK TABLES `oo_execution_events_1` WRITE;
/*!40000 ALTER TABLE `oo_execution_events_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_events_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_events_2`
--

DROP TABLE IF EXISTS `oo_execution_events_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_events_2` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(64) NOT NULL,
  `EVENT_TYPE` varchar(64) NOT NULL,
  `PUBLISH_TIME` datetime NOT NULL,
  `DATA1` varchar(255) DEFAULT NULL,
  `DATA2` varchar(2048) DEFAULT NULL,
  `DATA3` bigint(20) DEFAULT NULL,
  `DATA4` longtext,
  `SEQUENCE_ORDER` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `EVENT_INDEX` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXEC_EVENTS_2_EXECID_TYPE_IDX` (`EXECUTION_ID`,`EVENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_events_2`
--

LOCK TABLES `oo_execution_events_2` WRITE;
/*!40000 ALTER TABLE `oo_execution_events_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_events_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_events_3`
--

DROP TABLE IF EXISTS `oo_execution_events_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_events_3` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(64) NOT NULL,
  `EVENT_TYPE` varchar(64) NOT NULL,
  `PUBLISH_TIME` datetime NOT NULL,
  `DATA1` varchar(255) DEFAULT NULL,
  `DATA2` varchar(2048) DEFAULT NULL,
  `DATA3` bigint(20) DEFAULT NULL,
  `DATA4` longtext,
  `SEQUENCE_ORDER` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `EVENT_INDEX` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXEC_EVENTS_3_EXECID_TYPE_IDX` (`EXECUTION_ID`,`EVENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_events_3`
--

LOCK TABLES `oo_execution_events_3` WRITE;
/*!40000 ALTER TABLE `oo_execution_events_3` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_events_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_events_4`
--

DROP TABLE IF EXISTS `oo_execution_events_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_events_4` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(64) NOT NULL,
  `EVENT_TYPE` varchar(64) NOT NULL,
  `PUBLISH_TIME` datetime NOT NULL,
  `DATA1` varchar(255) DEFAULT NULL,
  `DATA2` varchar(2048) DEFAULT NULL,
  `DATA3` bigint(20) DEFAULT NULL,
  `DATA4` longtext,
  `SEQUENCE_ORDER` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) DEFAULT NULL,
  `EVENT_INDEX` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXEC_EVENTS_4_EXECID_TYPE_IDX` (`EXECUTION_ID`,`EVENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_events_4`
--

LOCK TABLES `oo_execution_events_4` WRITE;
/*!40000 ALTER TABLE `oo_execution_events_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_events_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_interrupts`
--

DROP TABLE IF EXISTS `oo_execution_interrupts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_interrupts` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(255) NOT NULL,
  `TYPE` varchar(32) NOT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EXECUTION_INTERRUPT_REGISTRY` longblob NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_EXECUTION_INTERRUPTS_UC` (`EXECUTION_ID`,`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_interrupts`
--

LOCK TABLES `oo_execution_interrupts` WRITE;
/*!40000 ALTER TABLE `oo_execution_interrupts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_interrupts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_queues`
--

DROP TABLE IF EXISTS `oo_execution_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_queues` (
  `ID` bigint(20) NOT NULL,
  `EXEC_STATE_ID` bigint(20) NOT NULL,
  `ASSIGNED_WORKER` varchar(40) DEFAULT NULL,
  `EXEC_GROUP` varchar(255) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `MSG_SEQ_ID` int(11) NOT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `MSG_VERSION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_EXECUTION_QUEUES_CONSTRAINT` (`EXEC_STATE_ID`,`MSG_SEQ_ID`),
  KEY `OO_Q_EXEC_STATE_IDX` (`EXEC_STATE_ID`),
  KEY `OO_Q_CREATE_TIME_IDX` (`CREATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_queues`
--

LOCK TABLES `oo_execution_queues` WRITE;
/*!40000 ALTER TABLE `oo_execution_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_queues_1`
--

DROP TABLE IF EXISTS `oo_execution_queues_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_queues_1` (
  `ID` bigint(20) NOT NULL,
  `EXEC_STATE_ID` bigint(20) NOT NULL,
  `ASSIGNED_WORKER` varchar(40) DEFAULT NULL,
  `EXEC_GROUP` varchar(255) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `MSG_SEQ_ID` int(11) NOT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  `MSG_VERSION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `OO_Q_EXEC_STATE_1_IDX` (`EXEC_STATE_ID`),
  KEY `OO_Q_CREATE_TIME_1_IDX` (`CREATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_queues_1`
--

LOCK TABLES `oo_execution_queues_1` WRITE;
/*!40000 ALTER TABLE `oo_execution_queues_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_queues_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_state`
--

DROP TABLE IF EXISTS `oo_execution_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_state` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` bigint(20) NOT NULL,
  `BRANCH_ID` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `EXECUTION_OBJECT` longblob,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_EXECUTION_STATE_UC` (`EXECUTION_ID`,`BRANCH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_state`
--

LOCK TABLES `oo_execution_state` WRITE;
/*!40000 ALTER TABLE `oo_execution_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_states`
--

DROP TABLE IF EXISTS `oo_execution_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_states` (
  `ID` bigint(20) NOT NULL,
  `MSG_ID` varchar(255) NOT NULL,
  `PAYLOAD` longblob NOT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_states`
--

LOCK TABLES `oo_execution_states` WRITE;
/*!40000 ALTER TABLE `oo_execution_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_states_1`
--

DROP TABLE IF EXISTS `oo_execution_states_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_states_1` (
  `ID` bigint(20) NOT NULL,
  `MSG_ID` varchar(255) NOT NULL,
  `PAYLOAD` longblob NOT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_states_1`
--

LOCK TABLES `oo_execution_states_1` WRITE;
/*!40000 ALTER TABLE `oo_execution_states_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_states_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_states_2`
--

DROP TABLE IF EXISTS `oo_execution_states_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_states_2` (
  `ID` bigint(20) NOT NULL,
  `MSG_ID` varchar(255) NOT NULL,
  `PAYLOAD` longblob NOT NULL,
  `CREATE_TIME` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_states_2`
--

LOCK TABLES `oo_execution_states_2` WRITE;
/*!40000 ALTER TABLE `oo_execution_states_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_states_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_execution_summary`
--

DROP TABLE IF EXISTS `oo_execution_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_execution_summary` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(255) NOT NULL,
  `BRANCH_ID` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `START_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `END_TIME` timestamp NULL DEFAULT NULL,
  `FLOW_UUID` varchar(255) NOT NULL,
  `FLOW_PATH` varchar(255) DEFAULT NULL,
  `RESULT_STATUS_TYPE` varchar(255) DEFAULT NULL,
  `RESULT_STATUS_NAME` varchar(255) DEFAULT NULL,
  `PAUSE_REASON` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) NOT NULL,
  `TRIGGERED_BY` varchar(255) NOT NULL,
  `EXECUTION_NAME` varchar(255) DEFAULT NULL,
  `ROI` double DEFAULT NULL,
  `DURATION` bigint(20) DEFAULT NULL,
  `TRIGGER_SOURCE` varchar(20) DEFAULT NULL,
  `LOG_LEVEL` varchar(50) DEFAULT NULL,
  `RUNNING_CONF_VERSION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_EXECUTION_SUMMARY_UC` (`EXECUTION_ID`,`BRANCH_ID`),
  KEY `OO_EXEC_SUMMARY_START_TIME_IDX` (`START_TIME`),
  KEY `OO_EXEC_SUMMARY_STATUS_IDX` (`STATUS`),
  KEY `OO_EXEC_SUMMARY_FLOW_UUID_IDX` (`FLOW_UUID`),
  KEY `EXEC_SUMMARY_END_TIME_IDX` (`END_TIME`),
  KEY `EXEC_SUMMARY_UUID_END_TIME_IDX` (`FLOW_UUID`,`END_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_execution_summary`
--

LOCK TABLES `oo_execution_summary` WRITE;
/*!40000 ALTER TABLE `oo_execution_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_execution_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_finished_branches`
--

DROP TABLE IF EXISTS `oo_finished_branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_finished_branches` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(255) NOT NULL,
  `BRANCH_ID` varchar(255) NOT NULL,
  `SPLIT_ID` varchar(255) NOT NULL,
  `BRANCH_EXCEPTION` longtext,
  `BRANCH_CONTEXT` longblob,
  `SUSPENDED_EXECUTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_FINISHED_BRANCHES_UC` (`BRANCH_ID`,`SPLIT_ID`),
  KEY `FK_OO_FINISHED_BRANCHES` (`SUSPENDED_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_finished_branches`
--

LOCK TABLES `oo_finished_branches` WRITE;
/*!40000 ALTER TABLE `oo_finished_branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_finished_branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_fired_triggers`
--

DROP TABLE IF EXISTS `oo_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_fired_triggers` (
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `REQUESTS_RECOVERY` bit(1) DEFAULT NULL,
  `SCHED_TIME` bigint(20) NOT NULL,
  `IS_NONCONCURRENT` bit(1) DEFAULT NULL,
  `IS_UPDATE_DATA` bit(1) DEFAULT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `idx_qrtz_ft_trig_inst_name` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `idx_qrtz_ft_inst_job_req_rcvry` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_ft_j_g` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_ft_t_g` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_ft_tg` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_fired_triggers`
--

LOCK TABLES `oo_fired_triggers` WRITE;
/*!40000 ALTER TABLE `oo_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_flow_event`
--

DROP TABLE IF EXISTS `oo_flow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_flow_event` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(255) NOT NULL,
  `EXECUTION_ID` varchar(255) NOT NULL,
  `EVENT_TYPE` varchar(255) NOT NULL,
  `MODIFIED` datetime NOT NULL,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_flow_event`
--

LOCK TABLES `oo_flow_event` WRITE;
/*!40000 ALTER TABLE `oo_flow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_flow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_flow_graph`
--

DROP TABLE IF EXISTS `oo_flow_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_flow_graph` (
  `ID` bigint(20) NOT NULL,
  `GRAPH` longtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_flow_graph`
--

LOCK TABLES `oo_flow_graph` WRITE;
/*!40000 ALTER TABLE `oo_flow_graph` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_flow_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_flow_inputs`
--

DROP TABLE IF EXISTS `oo_flow_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_flow_inputs` (
  `TASK_ID` bigint(20) NOT NULL,
  `INPUT_NAME` varchar(255) NOT NULL,
  `INPUT_VALUE` varchar(4000) DEFAULT NULL,
  `ID` bigint(20) NOT NULL,
  `IS_EDITABLE` bit(1) DEFAULT NULL,
  `IS_HIDDEN` bit(1) DEFAULT NULL,
  UNIQUE KEY `UQ_TASKS_FLOW_INPUTS` (`TASK_ID`,`INPUT_NAME`),
  CONSTRAINT `OO_TASKS_INPUTS_FK` FOREIGN KEY (`TASK_ID`) REFERENCES `oo_tasks` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_flow_inputs`
--

LOCK TABLES `oo_flow_inputs` WRITE;
/*!40000 ALTER TABLE `oo_flow_inputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_flow_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_flow_l10n_data`
--

DROP TABLE IF EXISTS `oo_flow_l10n_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_flow_l10n_data` (
  `ID` bigint(20) NOT NULL,
  `SEQUENCE_ID` bigint(20) NOT NULL,
  `MESSAGE_KEY` varchar(200) NOT NULL,
  `LOCALE` varchar(20) NOT NULL,
  `MESSAGE_VALUE` varchar(4000) DEFAULT NULL,
  `LINE_NUMBER` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `MESSAGE_KEY_LOCALE_UQ` (`MESSAGE_KEY`,`LOCALE`,`LINE_NUMBER`,`SEQUENCE_ID`),
  KEY `SEQUENCE_ID_OO_FLOW_L10N_DATA` (`SEQUENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_flow_l10n_data`
--

LOCK TABLES `oo_flow_l10n_data` WRITE;
/*!40000 ALTER TABLE `oo_flow_l10n_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_flow_l10n_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_flow_l10n_data_aud`
--

DROP TABLE IF EXISTS `oo_flow_l10n_data_aud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_flow_l10n_data_aud` (
  `ID` bigint(20) NOT NULL,
  `SEQUENCE_ID` bigint(20) DEFAULT NULL,
  `MESSAGE_KEY` varchar(200) DEFAULT NULL,
  `LOCALE` varchar(20) DEFAULT NULL,
  `MESSAGE_VALUE` varchar(4000) DEFAULT NULL,
  `REV` int(11) NOT NULL,
  `REVTYPE` tinyint(4) DEFAULT NULL,
  `LINE_NUMBER` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`REV`,`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_flow_l10n_data_aud`
--

LOCK TABLES `oo_flow_l10n_data_aud` WRITE;
/*!40000 ALTER TABLE `oo_flow_l10n_data_aud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_flow_l10n_data_aud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_flow_schedules`
--

DROP TABLE IF EXISTS `oo_flow_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_flow_schedules` (
  `ID` bigint(20) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `TASK_ID` bigint(20) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `LOG_LEVEL` varchar(50) DEFAULT NULL,
  `DOMAIN_ID` varchar(255) DEFAULT NULL,
  `IS_INPUT_PROMPT_USE_BLANK` bit(1) DEFAULT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`ID`),
  KEY `OO_FLOW_SCHDL_TASKS_FK` (`TASK_ID`),
  KEY `OO_FLOW_SCHDL_TRIGGRS_FK` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `OO_FLOW_SCHDL_TASKS_FK` FOREIGN KEY (`TASK_ID`) REFERENCES `oo_tasks` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `OO_FLOW_SCHDL_TRIGGRS_FK` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `oo_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_flow_schedules`
--

LOCK TABLES `oo_flow_schedules` WRITE;
/*!40000 ALTER TABLE `oo_flow_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_flow_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_form_items`
--

DROP TABLE IF EXISTS `oo_form_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_form_items` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FLOW_DATA_ID` bigint(20) NOT NULL,
  `VALUE_DELIMITER` varchar(200) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  `IS_ENCRYPTED` bit(1) DEFAULT NULL,
  `IS_MULTI_VALUE` bit(1) DEFAULT NULL,
  `IS_MANDATORY` bit(1) DEFAULT NULL,
  `SOURCE` varchar(200) DEFAULT NULL,
  `TYPE` varchar(200) NOT NULL,
  `VALIDATION_ID` varchar(200) DEFAULT NULL,
  `DEFAULT_VALUE` longtext,
  `UUID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_FORM_ITEMS_FLOW_DATA` (`FLOW_DATA_ID`),
  CONSTRAINT `FK_FORM_ITEMS_FLOW_DATA` FOREIGN KEY (`FLOW_DATA_ID`) REFERENCES `oo_deployed_entities` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_form_items`
--

LOCK TABLES `oo_form_items` WRITE;
/*!40000 ALTER TABLE `oo_form_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_form_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_group_aliases`
--

DROP TABLE IF EXISTS `oo_group_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_group_aliases` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(128) NOT NULL,
  `DESCRIPTION` varchar(256) DEFAULT NULL,
  `GROUP_NAME` varchar(255) DEFAULT NULL,
  `PATH` varchar(255) NOT NULL,
  `DEPLOYED_ENTITY_ID` bigint(20) DEFAULT NULL,
  `REFERENCED_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_PATH_OO_GROUP_ALIASES` (`PATH`),
  UNIQUE KEY `UQ_RFID_OO_GROUP_ALIASES` (`REFERENCED_ID`),
  KEY `FK_GROUP_ALIAS_DEPLOYED_ENTITY` (`DEPLOYED_ENTITY_ID`),
  CONSTRAINT `FK_GROUP_ALIAS_DEPLOYED_ENTITY` FOREIGN KEY (`DEPLOYED_ENTITY_ID`) REFERENCES `oo_deployed_entities` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_group_aliases`
--

LOCK TABLES `oo_group_aliases` WRITE;
/*!40000 ALTER TABLE `oo_group_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_group_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_hilo`
--

DROP TABLE IF EXISTS `oo_hilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_hilo` (
  `NEXT_HI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_hilo`
--

LOCK TABLES `oo_hilo` WRITE;
/*!40000 ALTER TABLE `oo_hilo` DISABLE KEYS */;
INSERT INTO `oo_hilo` VALUES (1124);
/*!40000 ALTER TABLE `oo_hilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_job_details`
--

DROP TABLE IF EXISTS `oo_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_job_details` (
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` bit(1) NOT NULL,
  `REQUESTS_RECOVERY` bit(1) NOT NULL,
  `JOB_DATA` longblob,
  `IS_NONCONCURRENT` bit(1) DEFAULT NULL,
  `IS_UPDATE_DATA` bit(1) DEFAULT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_j_req_recovery` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `idx_qrtz_j_grp` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_job_details`
--

LOCK TABLES `oo_job_details` WRITE;
/*!40000 ALTER TABLE `oo_job_details` DISABLE KEYS */;
INSERT INTO `oo_job_details` VALUES ('auditDataPurgerJob','DEFAULT',NULL,'com.hp.oo.deployment.services.audit.AuditDataPurgerJob','','\0','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','\0','\0','local-scheduler-persisted'),('contentStatisticsJob','DEFAULT',NULL,'com.hp.oo.content.management.jobs.ContentStatisticsJob','','\0','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted'),('dbSizeStatisticsJob','DEFAULT',NULL,'com.hp.oo.sysinfo.jobs.DBSizeStatisticsJob','','\0','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted'),('deploymentKeepAliveJob','DEFAULT',NULL,'com.hp.oo.deployment.services.process.DeploymentKeepAliveJob','','\0','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted'),('jobDetail','DEFAULT',NULL,'com.hp.oo.scheduler.job.FlowScheduleJob','','','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','\0','\0','local-scheduler-persisted'),('l10nDataCleanJob','DEFAULT',NULL,'com.hp.oo.i18n.services.impl.L10nDataCleanJob','','\0','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','\0','\0','local-scheduler-persisted'),('oldDeploymentProcessesCleanJob','DEFAULT',NULL,'com.hp.oo.deployment.services.process.DeploymentProcessPurgeJob','','\0','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted'),('queueCleanerJob','DEFAULT',NULL,'com.hp.oo.engine.queue.services.cleaner.QueueCleanerJob','','','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted'),('queueRecoveryJob','DEFAULT',NULL,'com.hp.oo.engine.queue.services.recovery.ExecutionRecoveryJob','','','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted'),('recoveryVersionJob','DEFAULT',NULL,'com.hp.oo.engine.queue.services.recovery.RecoveryVersionJob','','','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted'),('splitJoinJob','DEFAULT',NULL,'com.hp.oo.orchestrator.services.SplitJoinJob','','','¬í\0sr\0org.quartz.JobDataMapŸ°ƒè¿©°Ë\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap‚èÃûÅ](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMapæ.­(v\nÎ\0Z\0dirtyL\0mapt\0Ljava/util/Map;xp\0sr\0java.util.HashMapÚÁÃ`Ñ\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0\0x\0','','\0','local-scheduler-persisted');
/*!40000 ALTER TABLE `oo_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_latest_flow_graph`
--

DROP TABLE IF EXISTS `oo_latest_flow_graph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_latest_flow_graph` (
  `ID` bigint(20) NOT NULL,
  `FLOW_UUID` varchar(64) NOT NULL,
  `FLOW_GRAPH_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_LATEST_FLOW_GRAPH_GRAPH` (`FLOW_GRAPH_ID`),
  CONSTRAINT `FK_LATEST_FLOW_GRAPH_GRAPH` FOREIGN KEY (`FLOW_GRAPH_ID`) REFERENCES `oo_flow_graph` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_latest_flow_graph`
--

LOCK TABLES `oo_latest_flow_graph` WRITE;
/*!40000 ALTER TABLE `oo_latest_flow_graph` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_latest_flow_graph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_locks`
--

DROP TABLE IF EXISTS `oo_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_locks` (
  `LOCK_NAME` varchar(40) NOT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_locks`
--

LOCK TABLES `oo_locks` WRITE;
/*!40000 ALTER TABLE `oo_locks` DISABLE KEYS */;
INSERT INTO `oo_locks` VALUES ('CALENDAR_ACCESS','local-scheduler-persisted'),('JOB_ACCESS','local-scheduler-persisted'),('MISFIRE_ACCESS','local-scheduler-persisted'),('OO_QUEUE_ASSIGNER','local-scheduler-persisted'),('STATE_ACCESS','local-scheduler-persisted'),('TRIGGER_ACCESS','local-scheduler-persisted');
/*!40000 ALTER TABLE `oo_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_partition_groups`
--

DROP TABLE IF EXISTS `oo_partition_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_partition_groups` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(27) NOT NULL,
  `GROUP_SIZE` int(11) NOT NULL,
  `TIME_THRESHOLD` bigint(20) NOT NULL,
  `SIZE_THRESHOLD` bigint(20) NOT NULL,
  `ACTIVE_PARTITION` int(11) NOT NULL,
  `LAST_ROLL_TIME` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_PARTITION_GROUPS_TABLE_UQ` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_partition_groups`
--

LOCK TABLES `oo_partition_groups` WRITE;
/*!40000 ALTER TABLE `oo_partition_groups` DISABLE KEYS */;
INSERT INTO `oo_partition_groups` VALUES (106700001,'OO_EXECUTION_EVENTS',4,-1,1000000,1,1456208555776);
/*!40000 ALTER TABLE `oo_partition_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_pause_data`
--

DROP TABLE IF EXISTS `oo_pause_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_pause_data` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(255) NOT NULL,
  `BRANCH_ID` varchar(255) DEFAULT NULL,
  `PAUSE_DATA` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_pause_data`
--

LOCK TABLES `oo_pause_data` WRITE;
/*!40000 ALTER TABLE `oo_pause_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_pause_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_paused_trigger_grps`
--

DROP TABLE IF EXISTS `oo_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_paused_trigger_grps` (
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_paused_trigger_grps`
--

LOCK TABLES `oo_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `oo_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_rev_info`
--

DROP TABLE IF EXISTS `oo_rev_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_rev_info` (
  `REVTSTMP` bigint(20) DEFAULT NULL,
  `REV` int(11) NOT NULL,
  PRIMARY KEY (`REV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_rev_info`
--

LOCK TABLES `oo_rev_info` WRITE;
/*!40000 ALTER TABLE `oo_rev_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_rev_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_revision_generator`
--

DROP TABLE IF EXISTS `oo_revision_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_revision_generator` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_revision_generator`
--

LOCK TABLES `oo_revision_generator` WRITE;
/*!40000 ALTER TABLE `oo_revision_generator` DISABLE KEYS */;
INSERT INTO `oo_revision_generator` VALUES (1);
/*!40000 ALTER TABLE `oo_revision_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_roles_groups`
--

DROP TABLE IF EXISTS `oo_roles_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_roles_groups` (
  `ROLES_ID` bigint(20) NOT NULL,
  `GROUPS_NAMES` varchar(255) DEFAULT NULL,
  UNIQUE KEY `UQ_GROUPS_NAMES` (`ROLES_ID`,`GROUPS_NAMES`),
  KEY `U_OO_ROLES_GROUPS` (`ROLES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_roles_groups`
--

LOCK TABLES `oo_roles_groups` WRITE;
/*!40000 ALTER TABLE `oo_roles_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_roles_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_roles_management`
--

DROP TABLE IF EXISTS `oo_roles_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_roles_management` (
  `ID` bigint(20) NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(2000) DEFAULT NULL,
  `DEFAULT_ROLE` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ROLE_NAME` (`ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_roles_management`
--

LOCK TABLES `oo_roles_management` WRITE;
/*!40000 ALTER TABLE `oo_roles_management` DISABLE KEYS */;
INSERT INTO `oo_roles_management` VALUES (104400001,'ADMINISTRATOR','Administration Role','\0'),(104400002,'EVERYBODY','Everybody Role','\0'),(104400003,'PROMOTER','Promoter Role','\0'),(104400004,'SYSTEM_ADMIN','System Administrator Role','\0'),(104400005,'END_USER','End User Role','\0');
/*!40000 ALTER TABLE `oo_roles_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_roles_permissions`
--

DROP TABLE IF EXISTS `oo_roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_roles_permissions` (
  `ROLES_ID` bigint(20) NOT NULL,
  `PERMISSION_NAME` varchar(250) DEFAULT NULL,
  UNIQUE KEY `UQ_PERMISSIONS_NAMES` (`ROLES_ID`,`PERMISSION_NAME`),
  KEY `U_OO_ROLES_PERMISSIONS` (`ROLES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_roles_permissions`
--

LOCK TABLES `oo_roles_permissions` WRITE;
/*!40000 ALTER TABLE `oo_roles_permissions` DISABLE KEYS */;
INSERT INTO `oo_roles_permissions` VALUES (104400001,'auditRead'),(104400001,'configurationItemManage'),(104400001,'configurationItemRead'),(104400001,'cpManage'),(104400001,'cpRead'),(104400001,'dashboardRead'),(104400001,'dataCleanupManage'),(104400001,'flowDebug'),(104400001,'flowPermissionManage'),(104400001,'othersRunsManage'),(104400001,'scheduleManage'),(104400001,'scheduleRead'),(104400001,'securityConfigManage'),(104400001,'securityConfigRead'),(104400001,'systemSettingsManage'),(104400001,'systemSettingsRead'),(104400001,'topologyManage'),(104400001,'topologyRead'),(104400003,'configurationItemManage'),(104400003,'configurationItemRead'),(104400003,'cpManage'),(104400003,'cpRead'),(104400003,'flowPermissionManage'),(104400004,'auditRead'),(104400004,'dataCleanupManage'),(104400004,'securityConfigManage'),(104400004,'securityConfigRead'),(104400004,'systemSettingsManage'),(104400004,'systemSettingsRead'),(104400004,'topologyManage'),(104400004,'topologyRead');
/*!40000 ALTER TABLE `oo_roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_running_exec_configs`
--

DROP TABLE IF EXISTS `oo_running_exec_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_running_exec_configs` (
  `ID` bigint(20) NOT NULL,
  `CHECKSUM` varchar(32) NOT NULL,
  `EXECUTION_CONFIGURATION` longblob NOT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_running_exec_configs`
--

LOCK TABLES `oo_running_exec_configs` WRITE;
/*!40000 ALTER TABLE `oo_running_exec_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_running_exec_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_running_execution_plans`
--

DROP TABLE IF EXISTS `oo_running_execution_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_running_execution_plans` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(255) NOT NULL,
  `EXECUTION_PLAN` longtext,
  `RESULT` longtext,
  `EXECUTION_PLAN_ZIPPED` longblob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_running_execution_plans`
--

LOCK TABLES `oo_running_execution_plans` WRITE;
/*!40000 ALTER TABLE `oo_running_execution_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_running_execution_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_runtime_value_store`
--

DROP TABLE IF EXISTS `oo_runtime_value_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_runtime_value_store` (
  `ID` bigint(20) NOT NULL,
  `KEY_` varchar(255) NOT NULL,
  `VALUE` varchar(4000) DEFAULT NULL,
  `OWNER_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_OO_RUNTIME_VALUE_STORE_KEY` (`KEY_`),
  KEY `OID_OO_RUNTIME_VALUE_STORE` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_runtime_value_store`
--

LOCK TABLES `oo_runtime_value_store` WRITE;
/*!40000 ALTER TABLE `oo_runtime_value_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_runtime_value_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_scheduler_state`
--

DROP TABLE IF EXISTS `oo_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_scheduler_state` (
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_scheduler_state`
--

LOCK TABLES `oo_scheduler_state` WRITE;
/*!40000 ALTER TABLE `oo_scheduler_state` DISABLE KEYS */;
INSERT INTO `oo_scheduler_state` VALUES ('PATIL1456208547482',1456209729119,20000,'local-scheduler-persisted');
/*!40000 ALTER TABLE `oo_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_selection_list_values`
--

DROP TABLE IF EXISTS `oo_selection_list_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_selection_list_values` (
  `SELECTION_LIST_ID` bigint(20) NOT NULL,
  `SELECTION_LIST_VALUE` varchar(255) DEFAULT NULL,
  UNIQUE KEY `UQ_SELECTION_VALUES` (`SELECTION_LIST_ID`,`SELECTION_LIST_VALUE`),
  CONSTRAINT `FK_SELECTION_LIST_VALUES_ID` FOREIGN KEY (`SELECTION_LIST_ID`) REFERENCES `oo_deployed_entities` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_selection_list_values`
--

LOCK TABLES `oo_selection_list_values` WRITE;
/*!40000 ALTER TABLE `oo_selection_list_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_selection_list_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_simple_triggers`
--

DROP TABLE IF EXISTS `oo_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_simple_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `OO_SMPL_TRGGRS_FK` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `oo_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_simple_triggers`
--

LOCK TABLES `oo_simple_triggers` WRITE;
/*!40000 ALTER TABLE `oo_simple_triggers` DISABLE KEYS */;
INSERT INTO `oo_simple_triggers` VALUES ('auditDataPurgerTrigger','DEFAULT',-1,432000000,1,'local-scheduler-persisted'),('contentStatisticsTrigger','DEFAULT',-1,600000,2,'local-scheduler-persisted'),('dbSizeStatisticsTrigger','DEFAULT',-1,86400000,1,'local-scheduler-persisted'),('deploymentKeepAliveJobTrigger','DEFAULT',-1,300000,4,'local-scheduler-persisted'),('l10nDataCleanTrigger','DEFAULT',-1,86400000,1,'local-scheduler-persisted'),('oldDeploymentProcessesCleanTrigger','DEFAULT',-1,86400000,1,'local-scheduler-persisted'),('queueCleanerTrigger','DEFAULT',-1,60000,18,'local-scheduler-persisted'),('queueRecoveryTrigger','DEFAULT',-1,120000,9,'local-scheduler-persisted'),('recoveryVersionTrigger','DEFAULT',-1,30000,40,'local-scheduler-persisted'),('splitJoinTrigger','DEFAULT',-1,1000,1182,'local-scheduler-persisted');
/*!40000 ALTER TABLE `oo_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_simprop_triggers`
--

DROP TABLE IF EXISTS `oo_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` bit(1) DEFAULT NULL,
  `BOOL_PROP_2` bit(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `OO_SIMPROP_TRIGGERS_TRGGRS_FK` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `oo_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_simprop_triggers`
--

LOCK TABLES `oo_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `oo_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_step_log_bindings`
--

DROP TABLE IF EXISTS `oo_step_log_bindings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_step_log_bindings` (
  `STEP_LOG_ENDED_ID` bigint(20) NOT NULL,
  `BINDING_TYPE` varchar(16) NOT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  `BINDING_VALUE` varchar(4000) DEFAULT NULL,
  `BINDING_BIG_VALUE` longtext,
  `BINDING_TERM_NAME` varchar(255) DEFAULT NULL,
  `ID` bigint(20) NOT NULL,
  `BINDING_BIG_C_VALUE` longtext,
  PRIMARY KEY (`ID`),
  KEY `FK_ID` (`STEP_LOG_ENDED_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_step_log_bindings`
--

LOCK TABLES `oo_step_log_bindings` WRITE;
/*!40000 ALTER TABLE `oo_step_log_bindings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_step_log_bindings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_step_log_ended`
--

DROP TABLE IF EXISTS `oo_step_log_ended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_step_log_ended` (
  `OPERATION_GROUP` varchar(64) DEFAULT NULL,
  `WORKER_UUID` varchar(64) DEFAULT NULL,
  `END_TIME` bigint(20) NOT NULL,
  `EXECUTION_TIME` bigint(20) DEFAULT NULL,
  `RESPONSE_TYPE` varchar(16) DEFAULT NULL,
  `RESPONSE_NAME` varchar(255) DEFAULT NULL,
  `TRANSITION_NAME` varchar(255) DEFAULT NULL,
  `TRANSITION_DESCRIPTION` varchar(4000) DEFAULT NULL,
  `TRANSITION_DESCRIPTION_BIG` longtext,
  `TRANSITION_VALUE` double DEFAULT NULL,
  `PRIMARY_RESULT` varchar(4000) DEFAULT NULL,
  `PRIMARY_RESULT_BIG` longtext,
  `ERROR_LIST` longtext,
  `STEP_ENDED_HASH_ID` varchar(42) NOT NULL,
  `STEP_STATUS` varchar(16) DEFAULT NULL,
  `ID` bigint(20) NOT NULL,
  `ERROR_LIST_C` longtext,
  `PRIMARY_RESULT_BIG_C` longtext,
  `TRANSITION_DESCRIPTION_BIG_C` longtext,
  PRIMARY KEY (`ID`),
  KEY `STEP_LOG_EN_HASH` (`STEP_ENDED_HASH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_step_log_ended`
--

LOCK TABLES `oo_step_log_ended` WRITE;
/*!40000 ALTER TABLE `oo_step_log_ended` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_step_log_ended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_step_log_started`
--

DROP TABLE IF EXISTS `oo_step_log_started`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_step_log_started` (
  `ID` bigint(20) NOT NULL,
  `STEP_HASH_ID` varchar(42) NOT NULL,
  `EXECUTION_ID` varchar(64) NOT NULL,
  `STEP_PATH` varchar(4000) NOT NULL,
  `STEP_SEQ_ORDER` varchar(765) NOT NULL,
  `STEP_NAME` varchar(255) DEFAULT NULL,
  `STEP_UUID` varchar(64) NOT NULL,
  `STEP_TYPE` varchar(16) NOT NULL,
  `FLOW_UUID` varchar(255) DEFAULT NULL,
  `FLOW_NAME` varchar(255) DEFAULT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `IS_PAUSED` bit(1) DEFAULT NULL,
  `RUNNING_USER` varchar(64) DEFAULT NULL,
  `PUBLISH_TIME` bigint(20) DEFAULT NULL,
  `INVOKED_UUIDS` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STEP_LG_ST_EXC_IDX` (`EXECUTION_ID`),
  KEY `STEP_LOG_ST_SQ` (`STEP_SEQ_ORDER`(255)),
  KEY `STEP_LOG_PATH_SQ` (`STEP_PATH`(255)),
  KEY `STEP_LOG_ST_HASH` (`STEP_HASH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_step_log_started`
--

LOCK TABLES `oo_step_log_started` WRITE;
/*!40000 ALTER TABLE `oo_step_log_started` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_step_log_started` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_suspended_executions`
--

DROP TABLE IF EXISTS `oo_suspended_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_suspended_executions` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` varchar(255) NOT NULL,
  `SPLIT_ID` varchar(255) NOT NULL,
  `NUMBER_OF_BRANCHES` int(11) NOT NULL,
  `EXECUTION_OBJECT` longblob NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_SUSPENDED_EXECUTIONS_UC` (`SPLIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_suspended_executions`
--

LOCK TABLES `oo_suspended_executions` WRITE;
/*!40000 ALTER TABLE `oo_suspended_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_suspended_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_sysinfo`
--

DROP TABLE IF EXISTS `oo_sysinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_sysinfo` (
  `KEY_` varchar(255) NOT NULL,
  `VALUE` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_sysinfo`
--

LOCK TABLES `oo_sysinfo` WRITE;
/*!40000 ALTER TABLE `oo_sysinfo` DISABLE KEYS */;
INSERT INTO `oo_sysinfo` VALUES ('build ID','2015-09-06_13-14-26'),('build job name','10-50-product'),('build number','69'),('revision','75223'),('version','10.50');
/*!40000 ALTER TABLE `oo_sysinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_system_accounts`
--

DROP TABLE IF EXISTS `oo_system_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_system_accounts` (
  `ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(4000) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_SYS_ACCT_NAME_UQ` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_system_accounts`
--

LOCK TABLES `oo_system_accounts` WRITE;
/*!40000 ALTER TABLE `oo_system_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_system_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_tasks`
--

DROP TABLE IF EXISTS `oo_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_tasks` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(2000) DEFAULT NULL,
  `ICON_NAME` varchar(60) NOT NULL,
  `LAST_EXECUTED` bigint(20) DEFAULT NULL,
  `IS_EDITABLE` bit(1) DEFAULT NULL,
  `IS_HIDDEN` bit(1) DEFAULT NULL,
  `IS_DELETED` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`),
  KEY `NAME_OO_TASKS` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_tasks`
--

LOCK TABLES `oo_tasks` WRITE;
/*!40000 ALTER TABLE `oo_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_tasks_executions`
--

DROP TABLE IF EXISTS `oo_tasks_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_tasks_executions` (
  `ID` bigint(20) NOT NULL,
  `EXECUTION_ID` bigint(20) NOT NULL,
  `TASK_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UQ_TASKS_EXECUTIONS` (`EXECUTION_ID`),
  KEY `OO_TASKS_ID_FK` (`TASK_ID`),
  CONSTRAINT `OO_TASKS_ID_FK` FOREIGN KEY (`TASK_ID`) REFERENCES `oo_tasks` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_tasks_executions`
--

LOCK TABLES `oo_tasks_executions` WRITE;
/*!40000 ALTER TABLE `oo_tasks_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_tasks_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_triggers`
--

DROP TABLE IF EXISTS `oo_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_triggers` (
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) NOT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(6) DEFAULT NULL,
  `JOB_DATA` longblob,
  `SCHED_NAME` varchar(120) NOT NULL DEFAULT 'local-scheduler-persisted',
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `OO_TRIGGRS_JOB_DETAILS_FK` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_jg` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `idx_qrtz_t_c` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `idx_qrtz_t_g` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `idx_qrtz_t_state` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_state` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_n_g_state` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_next_fire_time` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `idx_qrtz_t_nft_st_misfire` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `idx_qrtz_t_nft_st_misfire_grp` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `OO_TRIGGRS_JOB_DETAILS_FK` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `oo_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_triggers`
--

LOCK TABLES `oo_triggers` WRITE;
/*!40000 ALTER TABLE `oo_triggers` DISABLE KEYS */;
INSERT INTO `oo_triggers` VALUES ('auditDataPurgerTrigger','DEFAULT','auditDataPurgerJob','DEFAULT',NULL,1456640548117,-1,0,'WAITING','SIMPLE',1456208548117,0,NULL,0,'','local-scheduler-persisted'),('contentStatisticsTrigger','DEFAULT','contentStatisticsJob','DEFAULT',NULL,1456209807050,-1,0,'WAITING','SIMPLE',1456208607050,0,NULL,0,'','local-scheduler-persisted'),('dbSizeStatisticsTrigger','DEFAULT','dbSizeStatisticsJob','DEFAULT',NULL,1456295007057,-1,0,'WAITING','SIMPLE',1456208607057,0,NULL,0,'','local-scheduler-persisted'),('deploymentKeepAliveJobTrigger','DEFAULT','deploymentKeepAliveJob','DEFAULT',NULL,1456209748257,-1,0,'WAITING','SIMPLE',1456208548257,0,NULL,0,'','local-scheduler-persisted'),('l10nDataCleanTrigger','DEFAULT','l10nDataCleanJob','DEFAULT',NULL,1456294948199,-1,0,'WAITING','SIMPLE',1456208548199,0,NULL,0,'','local-scheduler-persisted'),('oldDeploymentProcessesCleanTrigger','DEFAULT','oldDeploymentProcessesCleanJob','DEFAULT',NULL,1456294948325,-1,0,'WAITING','SIMPLE',1456208548325,0,NULL,0,'','local-scheduler-persisted'),('queueCleanerTrigger','DEFAULT','queueCleanerJob','DEFAULT',NULL,1456209746333,-1,0,'WAITING','SIMPLE',1456208666333,0,NULL,0,'','local-scheduler-persisted'),('queueRecoveryTrigger','DEFAULT','queueRecoveryJob','DEFAULT',NULL,1456209746435,-1,0,'WAITING','SIMPLE',1456208666435,0,NULL,0,'','local-scheduler-persisted'),('recoveryVersionTrigger','DEFAULT','recoveryVersionJob','DEFAULT',NULL,1456209752473,-1,0,'WAITING','SIMPLE',1456208552473,0,NULL,0,'','local-scheduler-persisted'),('splitJoinTrigger','DEFAULT','splitJoinJob','DEFAULT',NULL,1456209729455,-1,0,'WAITING','SIMPLE',1456208547455,0,NULL,0,'','local-scheduler-persisted');
/*!40000 ALTER TABLE `oo_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_user_refs`
--

DROP TABLE IF EXISTS `oo_user_refs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_user_refs` (
  `ID` bigint(20) NOT NULL,
  `REF` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_USER_REF_UQ` (`REF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_user_refs`
--

LOCK TABLES `oo_user_refs` WRITE;
/*!40000 ALTER TABLE `oo_user_refs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_user_refs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_users`
--

DROP TABLE IF EXISTS `oo_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_users` (
  `ID` bigint(20) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `ENABLED` bit(1) DEFAULT NULL,
  `SALT` varchar(255) DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_users`
--

LOCK TABLES `oo_users` WRITE;
/*!40000 ALTER TABLE `oo_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_users_roles`
--

DROP TABLE IF EXISTS `oo_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_users_roles` (
  `USER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) DEFAULT NULL,
  UNIQUE KEY `UQ_ROLES_NAMES` (`USER_ID`,`ROLE_ID`),
  KEY `U_OO_USERS_ROLES` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_users_roles`
--

LOCK TABLES `oo_users_roles` WRITE;
/*!40000 ALTER TABLE `oo_users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `oo_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_version_counters`
--

DROP TABLE IF EXISTS `oo_version_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_version_counters` (
  `ID` bigint(20) NOT NULL,
  `COUNTER_VERSION` bigint(20) DEFAULT NULL,
  `COUNTER_NAME` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `OO_COUNTER_NAME_UI` (`COUNTER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_version_counters`
--

LOCK TABLES `oo_version_counters` WRITE;
/*!40000 ALTER TABLE `oo_version_counters` DISABLE KEYS */;
INSERT INTO `oo_version_counters` VALUES (0,0,'MSG_RECOVERY_VERSION');
/*!40000 ALTER TABLE `oo_version_counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_worker_groups`
--

DROP TABLE IF EXISTS `oo_worker_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_worker_groups` (
  `WORKER_ID` bigint(20) NOT NULL,
  `GROUP_NAME` varchar(64) NOT NULL,
  PRIMARY KEY (`WORKER_ID`,`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_worker_groups`
--

LOCK TABLES `oo_worker_groups` WRITE;
/*!40000 ALTER TABLE `oo_worker_groups` DISABLE KEYS */;
INSERT INTO `oo_worker_groups` VALUES (104200001,'RAS_Operator_Path');
/*!40000 ALTER TABLE `oo_worker_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_worker_locks`
--

DROP TABLE IF EXISTS `oo_worker_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_worker_locks` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(48) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UUID` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_worker_locks`
--

LOCK TABLES `oo_worker_locks` WRITE;
/*!40000 ALTER TABLE `oo_worker_locks` DISABLE KEYS */;
INSERT INTO `oo_worker_locks` VALUES (105100001,'dab4bc51-c9de-45ea-b50d-3b20405bb148');
/*!40000 ALTER TABLE `oo_worker_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_worker_monitor`
--

DROP TABLE IF EXISTS `oo_worker_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_worker_monitor` (
  `WORKER_ID` varchar(120) NOT NULL,
  `MONITOR_START_TIME` bigint(20) NOT NULL,
  `MONITOR_END_TIME` bigint(20) NOT NULL,
  `MONITOR_INFO` longtext NOT NULL,
  PRIMARY KEY (`WORKER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_worker_monitor`
--

LOCK TABLES `oo_worker_monitor` WRITE;
/*!40000 ALTER TABLE `oo_worker_monitor` DISABLE KEYS */;
INSERT INTO `oo_worker_monitor` VALUES ('dab4bc51-c9de-45ea-b50d-3b20405bb148',1456209187564,1456209487689,'{\"EXECUTION_THREADS_AMOUNT\":20,\"TOTAL_MEMORY\":694681600,\"OUTBUFFER_CAPACITY\":7500,\"MONITOR_END_TIME\":1456209487689,\"INBUFFER_CAPACITY\":200,\"FREE_MOMORY\":290605616,\"MAX_MOMORY\":954728448,\"WROKER_ID\":\"dab4bc51-c9de-45ea-b50d-3b20405bb148\",\"INBUFFER_SIZE_AVERAGE\":0,\"OUTBUDDER_SIZE_AVERAGE\":0,\"RUNNING_TASKS_AVERAGE\":0,\"MONITOR_START_TIME\":1456209187564}');
/*!40000 ALTER TABLE `oo_worker_monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oo_worker_nodes`
--

DROP TABLE IF EXISTS `oo_worker_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oo_worker_nodes` (
  `ID` bigint(20) NOT NULL,
  `UUID` varchar(48) NOT NULL,
  `STATUS` int(11) NOT NULL,
  `IS_ACTIVE` bit(1) NOT NULL,
  `HOST_NAME` varchar(128) NOT NULL,
  `INSTALL_PATH` varchar(256) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(80) NOT NULL,
  `OS` varchar(64) DEFAULT NULL,
  `JVM` varchar(64) DEFAULT NULL,
  `DOT_NET_VERSION` varchar(16) DEFAULT NULL,
  `ACK_TIME` timestamp NULL DEFAULT NULL,
  `IS_DELETED` bit(1) DEFAULT NULL,
  `ACK_VERSION` bigint(20) DEFAULT NULL,
  `BULK_NUMBER` varchar(48) DEFAULT NULL,
  `WRV` varchar(48) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UUID` (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oo_worker_nodes`
--

LOCK TABLES `oo_worker_nodes` WRITE;
/*!40000 ALTER TABLE `oo_worker_nodes` DISABLE KEYS */;
INSERT INTO `oo_worker_nodes` VALUES (104200001,'dab4bc51-c9de-45ea-b50d-3b20405bb148',2,'','PATIL.asiapacific.hpqcorp.net','C:\\Users\\pavijaya\\Desktop\\HP\\HP OO\\central','dab4bc51-c9de-45ea-b50d-3b20405bb148','b24412549a40b5651feeb27f281654cdb20208cbfd1dd96b8b9bf2843f4eb780',NULL,NULL,NULL,NULL,'\0',0,NULL,NULL);
/*!40000 ALTER TABLE `oo_worker_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `email` varchar(20) NOT NULL,
  `DOB` varchar(20) DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('akhil','2016-02-03','Jaipur','akhil'),('asdagsf','asdfasdf','dsfasfsf','sfgasfgasdf'),('bhimu@rcr','25/1/1993','Raichur','nandyal'),('dk11','dk11','dk11','dk11'),('jjdt','grgr','fggg','ffff'),('praj','praj','praj','praj'),('Raghu@cs.com','1988-09-23','Koppal','raghu'),('raghu@patil.com','09888','koppal','88767'),('ranju','2016-03-15','RCR','rcr'),('sagar','09/5/1976','Pune','sagar'),('sjsj','jgg','jgjg','jgjg'),('suman@hp','02/01/1994','Anekal','suman'),('sumit@hp','2016-04-05','Banglore','sumit'),('vijay@hp','09','Hassan','vijay'),('vijay@hp.com','2016-02-17','Hassan','vijay'),('vinay@m','09','RNR','vinay'),('vmp1@hp','09','vmp','vmp'),('vmp@hp','09','Raichur','vmp'),('vmpv@gmail.com','09/03/1993','Koppal','9945199735'),('vmpvijju@gmail.com','09/03/1993','Koppal','9945199735'),('vmvmnm','mnmn','mmm','mbm');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `try`
--

DROP TABLE IF EXISTS `try`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `try` (
  `fb` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `try`
--

LOCK TABLES `try` WRITE;
/*!40000 ALTER TABLE `try` DISABLE KEYS */;
/*!40000 ALTER TABLE `try` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-06 17:44:00
