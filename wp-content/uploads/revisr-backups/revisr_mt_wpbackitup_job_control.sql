
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
DROP TABLE IF EXISTS `mt_wpbackitup_job_control`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_wpbackitup_job_control` (
  `job_id` bigint(20) NOT NULL,
  `job_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_run_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_meta` longtext COLLATE utf8mb4_unicode_ci,
  `job_start` datetime DEFAULT NULL,
  `job_end` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `job_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mt_wpbackitup_job_control` WRITE;
/*!40000 ALTER TABLE `mt_wpbackitup_job_control` DISABLE KEYS */;
INSERT INTO `mt_wpbackitup_job_control` VALUES (1462939658,'backup','manual','www.metaconexao.com_.br_1462939658','a:1:{s:16:\"backup_zip_files\";a:6:{s:150:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1462939658/www.metaconexao.com_.br_1462939658-backupset-1462939844.zip\";d:25569;s:145:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1462939658/www.metaconexao.com_.br_1462939658-main-1462939789.zip\";d:186;s:147:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1462939658/www.metaconexao.com_.br_1462939658-others-1462939813.zip\";d:402;s:148:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1462939658/www.metaconexao.com_.br_1462939658-plugins-1462939799.zip\";d:16435;s:147:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1462939658/www.metaconexao.com_.br_1462939658-themes-1462939794.zip\";d:2438;s:148:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1462939658/www.metaconexao.com_.br_1462939658-uploads-1462939809.zip\";d:6893;}}','2016-05-11 04:07:43','2016-05-11 04:11:09','2016-05-11 04:07:38','2016-05-11 04:11:09','complete'),(1464093826,'backup','manual','www.metaconexao.com_.br_1464093826','a:1:{s:16:\"backup_zip_files\";a:6:{s:150:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1464093826/www.metaconexao.com_.br_1464093826-backupset-1464094006.zip\";d:25601;s:145:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1464093826/www.metaconexao.com_.br_1464093826-main-1464093956.zip\";d:190;s:147:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1464093826/www.metaconexao.com_.br_1464093826-others-1464093976.zip\";d:402;s:148:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1464093826/www.metaconexao.com_.br_1464093826-plugins-1464093966.zip\";d:16435;s:147:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1464093826/www.metaconexao.com_.br_1464093826-themes-1464093961.zip\";d:2436;s:148:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1464093826/www.metaconexao.com_.br_1464093826-uploads-1464093971.zip\";d:6924;}}','2016-05-24 12:43:51','2016-05-24 12:47:11','2016-05-24 12:43:46','2016-05-24 12:47:11','complete'),(1466411596,'backup','manual','www.metaconexao.com_.br_1466411596','a:1:{s:16:\"backup_zip_files\";a:6:{s:150:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1466411596/www.metaconexao.com_.br_1466411596-backupset-1466411777.zip\";d:25637;s:145:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1466411596/www.metaconexao.com_.br_1466411596-main-1466411727.zip\";d:197;s:147:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1466411596/www.metaconexao.com_.br_1466411596-others-1466411747.zip\";d:402;s:148:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1466411596/www.metaconexao.com_.br_1466411596-plugins-1466411737.zip\";d:16435;s:147:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1466411596/www.metaconexao.com_.br_1466411596-themes-1466411732.zip\";d:2436;s:148:\"/var/www/html/metaconexao/wp-content/wpbackitup_backups/www.metaconexao.com_.br_1466411596/www.metaconexao.com_.br_1466411596-uploads-1466411742.zip\";d:6953;}}','2016-06-20 08:33:21','2016-06-20 08:36:43','2016-06-20 08:33:16','2016-06-20 08:36:43','complete'),(1472222777,'cleanup','scheduled','cleanup_1472222777',NULL,'2016-08-26 14:46:19','2016-08-26 14:46:19','2016-08-26 14:46:17','2016-08-26 14:46:19','complete'),(1472228069,'cleanup','scheduled','cleanup_1472228069',NULL,'2016-08-26 16:14:30','2016-08-26 16:14:30','2016-08-26 16:14:29','2016-08-26 16:14:30','complete'),(1472241930,'cleanup','scheduled','cleanup_1472241930',NULL,'2016-08-26 20:05:31','2016-08-26 20:05:32','2016-08-26 20:05:30','2016-08-26 20:05:32','complete');
/*!40000 ALTER TABLE `mt_wpbackitup_job_control` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

