
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
DROP TABLE IF EXISTS `mt_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mt_usermeta` WRITE;
/*!40000 ALTER TABLE `mt_usermeta` DISABLE KEYS */;
INSERT INTO `mt_usermeta` VALUES (1,1,'nickname','jrogatis'),(2,1,'first_name','Jean Philip'),(3,1,'last_name','de Rogatis'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','ectoplasm'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'mt_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'mt_user_level','10'),(12,1,'dismissed_wp_pointers','gmb_welcome_pointer,apm_install,aioseop_menu_220,aioseop_welcome_220'),(13,1,'show_welcome_panel','0'),(14,1,'session_tokens','a:1:{s:64:\"a70557eeab6cb2a1d00ce5f8cf162868a0e2a7d3bb0910e464e8fc32cadd76ea\";a:4:{s:10:\"expiration\";i:1472348365;s:2:\"ip\";s:13:\"191.188.16.83\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36\";s:5:\"login\";i:1472175565;}}'),(15,1,'mt_dashboard_quick_press_last_post_id','354'),(16,1,'wporg_favorites',''),(17,1,'mt_user-settings','libraryContent=browse&editor=tinymce&hidetb=1&post_dfw=off&advImgDetails=show&mfold=o&siteorigin_panels_setting_tab=content&imgsize=medium&urlbutton=file'),(18,1,'mt_user-settings-time','1462646756'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),(21,1,'closedpostboxes_page','a:0:{}'),(22,1,'metaboxhidden_page','a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:9:\"authordiv\";}'),(24,1,'mt_recently_edited_template','0'),(25,1,'meta-box-order_admin_page_revisr_new_commit','a:2:{s:4:\"side\";s:33:\"revisr_save_commit,revisr_add_tag\";s:6:\"normal\";s:20:\"revisr_pending_files\";}'),(26,1,'screen_layout_admin_page_revisr_new_commit','2'),(27,1,'closedpostboxes_admin_page_revisr_new_commit','a:0:{}'),(28,1,'metaboxhidden_admin_page_revisr_new_commit','a:0:{}'),(32,1,'mt_media_library_mode','grid'),(33,1,'wp_tab_widget_ignore_notice','true'),(34,1,'closedpostboxes_post','a:1:{i:0;s:12:\"revisionsdiv\";}'),(35,1,'metaboxhidden_post','a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),(36,1,'meta-box-order_post','a:3:{s:4:\"side\";s:73:\"submitdiv,formatdiv,categorydiv,tagsdiv-post_tag,postimagediv,shareaholic\";s:6:\"normal\";s:96:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,authordiv,revisionsdiv,commentsdiv\";s:8:\"advanced\";s:36:\"aiosp_tabbed,catchresponsive-options\";}'),(37,1,'screen_layout_post','2'),(38,1,'meta-box-order_mcm_people','a:3:{s:4:\"side\";s:62:\"submitdiv,tagsdiv-post_tag,mcm_category_peoplediv,postimagediv\";s:6:\"normal\";s:81:\"revisionsdiv,personal-information,resume,postexcerpt,postcustom,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),(39,1,'screen_layout_mcm_people','2'),(40,1,'nav_menu_recently_edited','7'),(41,1,'mt_user_avatar','152'),(42,1,'googleplus',''),(43,2,'nickname','verinogueira'),(44,2,'first_name',''),(45,2,'last_name',''),(46,2,'description',''),(47,2,'rich_editing','true'),(48,2,'comment_shortcuts','false'),(49,2,'admin_color','fresh'),(50,2,'use_ssl','0'),(51,2,'show_admin_bar_front','true'),(52,2,'mt_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(53,2,'mt_user_level','0'),(54,2,'default_password_nag','1'),(55,1,'example_ignore_notice','true'),(56,3,'nickname','DimaKolokolnikov'),(57,3,'first_name',''),(58,3,'last_name',''),(59,3,'description',''),(60,3,'rich_editing','true'),(61,3,'comment_shortcuts','false'),(62,3,'admin_color','fresh'),(63,3,'use_ssl','0'),(64,3,'show_admin_bar_front','true'),(65,3,'mt_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(66,3,'mt_user_level','0'),(67,3,'default_password_nag','1'),(68,1,'wpseo_ignore_tour','1'),(69,1,'wpseo_seen_about_version','3.2.5'),(70,1,'_yoast_wpseo_profile_updated','1462817981'),(71,1,'mt_yoast_notifications','a:1:{i:0;a:2:{s:7:\"message\";s:169:\"Yoast SEO has been updated to version 3.4.2. <a href=\"http://www.metaconexao.com.br/metaconexao/wp-admin/admin.php?page=wpseo_dashboard&intro=1\">Find out what\'s new!</a>\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"updated\";s:2:\"id\";s:19:\"wpseo-dismiss-about\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}'),(72,1,'wpseo-dismiss-about','seen'),(73,4,'nickname','MvolodiyaDock'),(74,4,'first_name',''),(75,4,'last_name',''),(76,4,'description',''),(77,4,'rich_editing','true'),(78,4,'comment_shortcuts','false'),(79,4,'admin_color','fresh'),(80,4,'use_ssl','0'),(81,4,'show_admin_bar_front','true'),(82,4,'mt_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(83,4,'mt_user_level','0'),(84,4,'_yoast_wpseo_profile_updated','1467756866'),(85,4,'default_password_nag','1'),(86,5,'nickname','Thomaspt'),(87,5,'first_name',''),(88,5,'last_name',''),(89,5,'description',''),(90,5,'rich_editing','true'),(91,5,'comment_shortcuts','false'),(92,5,'admin_color','fresh'),(93,5,'use_ssl','0'),(94,5,'show_admin_bar_front','true'),(95,5,'mt_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(96,5,'mt_user_level','0'),(97,5,'_yoast_wpseo_profile_updated','1467834933'),(98,5,'default_password_nag','1'),(99,6,'nickname','Aestepeam'),(100,6,'first_name',''),(101,6,'last_name',''),(102,6,'description',''),(103,6,'rich_editing','true'),(104,6,'comment_shortcuts','false'),(105,6,'admin_color','fresh'),(106,6,'use_ssl','0'),(107,6,'show_admin_bar_front','true'),(108,6,'mt_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(109,6,'mt_user_level','0'),(110,6,'_yoast_wpseo_profile_updated','1468471512'),(111,6,'default_password_nag','1');
/*!40000 ALTER TABLE `mt_usermeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

