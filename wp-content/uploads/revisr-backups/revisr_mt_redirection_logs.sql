
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
DROP TABLE IF EXISTS `mt_redirection_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_redirection_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_to` mediumtext COLLATE utf8mb4_unicode_ci,
  `agent` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer` mediumtext COLLATE utf8mb4_unicode_ci,
  `redirection_id` int(11) unsigned DEFAULT NULL,
  `ip` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `redirection_id` (`redirection_id`),
  KEY `ip` (`ip`),
  KEY `group_id` (`group_id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mt_redirection_logs` WRITE;
/*!40000 ALTER TABLE `mt_redirection_logs` DISABLE KEYS */;
INSERT INTO `mt_redirection_logs` VALUES (1,'2016-05-07 19:02:28','/mobile','www.metaconexao.com.br','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36',NULL,2,'191.188.16.83',0,1),(2,'2016-05-07 19:03:02','/mobile','/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36',NULL,2,'191.188.16.83',0,1),(3,'2016-05-07 19:05:43','/m','/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36',NULL,3,'191.188.16.83',0,1),(4,'2016-05-07 21:10:30','/mobile','/','Mozilla/5.0 (compatible; Shareaholicbot/1.0; +http://www.shareaholic.com/bot)',NULL,2,'54.82.156.32',0,1),(5,'2016-05-09 11:06:49','/o-mundo-tech-esta-a-beira-de-mais-uma-revolucao/','/mundo-tech-revolucao/','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',NULL,4,'66.249.64.90',0,1),(6,'2016-05-11 01:25:49','/o-mundo-tech-esta-a-beira-de-mais-uma-revolucao/','/mundo-tech-revolucao/','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',NULL,4,'157.55.39.101',0,1),(7,'2016-05-26 09:20:34','/mobile','/','Mozilla/5.0 (Windows NT 10.0; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0',NULL,2,'54.197.121.149',0,1),(8,'2016-05-27 12:07:12','/o-mundo-tech-esta-a-beira-de-mais-uma-revolucao/','/mundo-tech-revolucao/','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',NULL,4,'207.46.13.130',0,1),(9,'2016-06-06 14:50:35','/o-mundo-tech-esta-a-beira-de-mais-uma-revolucao/','/mundo-tech-revolucao/','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',NULL,4,'66.249.64.80',0,1),(10,'2016-06-29 09:44:16','/o-mundo-tech-esta-a-beira-de-mais-uma-revolucao/','/mundo-tech-revolucao/','Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)',NULL,4,'68.180.230.115',0,1),(11,'2016-07-05 12:35:12','/o-mundo-tech-esta-a-beira-de-mais-uma-revolucao/','/mundo-tech-revolucao/','Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)',NULL,4,'157.55.39.180',0,1),(12,'2016-08-09 21:35:39','/o-mundo-tech-esta-a-beira-de-mais-uma-revolucao/','/mundo-tech-revolucao/','Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)',NULL,4,'66.249.64.48',0,1);
/*!40000 ALTER TABLE `mt_redirection_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

