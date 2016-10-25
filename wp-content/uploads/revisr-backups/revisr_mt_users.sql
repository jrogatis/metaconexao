
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
DROP TABLE IF EXISTS `mt_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mt_users` WRITE;
/*!40000 ALTER TABLE `mt_users` DISABLE KEYS */;
INSERT INTO `mt_users` VALUES (1,'jrogatis','$P$BeYwVjMRGPKNNgVJ7omyFDL6k7muAB1','jrogatis','jrogatis@metaconexao.com.br','http://www.metaconexao.com.br','2016-04-04 15:13:26','',0,'Jean Philip de Rogatis'),(2,'verinogueira','$P$BIv6k9Bomb04Rv9w222LJ2ZScIkJQI/','verinogueira','verinogueira@hotmail.com','','2016-04-29 14:42:55','1461940976:$P$BuzoR5uybZxpKgDiCRetHuwnx/3B3C/',0,'verinogueira'),(3,'DimaKolokolnikov','$P$B5dXSCTaFzZnDFWwp7.h2oI8fDTIVo.','dimakolokolnikov','dmytro@kolokolnikov.info','','2016-05-02 20:08:09','1462219690:$P$BEsn6SQ38sK1mUdUBdeJYF0NGimrJ70',0,'DimaKolokolnikov'),(4,'MvolodiyaDock','$P$B2E5R59kxKxmVJh14A9lhfqkY3ouyH1','mvolodiyadock','misha-gold777@mail.ru','','2016-07-05 22:14:26','1467756866:$P$BH2KFHX35OkPdPNR1cuDfpZ.EGtXzq0',0,'MvolodiyaDock'),(5,'Thomaspt','$P$BIvvQExprWZ6u.E2G8pJz6wc0JsJpZ.','thomaspt','kokorashvili85@mail.ru','','2016-07-06 19:55:33','1467834934:$P$BxoYn.IwP9R0TG8mbYXfj1yNybYbvP/',0,'Thomaspt'),(6,'Aestepeam','$P$BbOFX6WRjICCEgV.ysTj8xCCalQqaS0','aestepeam','step_33anov@hotmail.com','','2016-07-14 04:45:12','1468471513:$P$BVxS2fjVIv80TwPbtMPG1m4VoT/1MI0',0,'Aestepeam');
/*!40000 ALTER TABLE `mt_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

