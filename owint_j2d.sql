-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: owint_j2d
-- ------------------------------------------------------
-- Server version	5.7.32-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_logs`
--

DROP TABLE IF EXISTS `admin_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_logs` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `admin_id` int(100) NOT NULL,
  `work` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_id` int(255) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_logs`
--

LOCK TABLES `admin_logs` WRITE;
/*!40000 ALTER TABLE `admin_logs` DISABLE KEYS */;
INSERT INTO `admin_logs` (`id`, `admin_id`, `work`, `work_id`, `date`, `status`) VALUES (10,1,'card',1,'January 31, 2021 14:41:52','updated'),(11,1,'general_settings',0,'January 31, 2021 14:46:51','updated'),(12,1,'card',2,'January 31, 2021 15:09:27','updated'),(13,1,'card',3,'January 31, 2021 15:09:42','updated'),(14,1,'card',4,'January 31, 2021 15:10:12','updated'),(15,1,'card',5,'January 31, 2021 15:10:25','updated'),(16,1,'card',6,'January 31, 2021 15:10:42','updated'),(17,1,'general_settings',0,'January 31, 2021 15:21:02','updated'),(18,1,'seller_settings',0,'January 31, 2021 15:22:30','updated'),(19,1,'request',1,'January 31, 2021 16:01:13','approved'),(20,1,'seller_settings',0,'January 31, 2021 16:03:56','updated'),(21,1,'general_payment_settings',0,'January 31, 2021 16:20:06','updated'),(22,1,'payoneer_settings',0,'January 31, 2021 16:20:58','updated'),(23,1,'seller_balance',1,'January 31, 2021 16:22:27','updated'),(24,1,'general_settings',0,'January 31, 2021 16:52:51','updated'),(25,1,'general_settings',0,'February 01, 2021 00:36:37','updated'),(26,1,'general_payment_settings',0,'February 01, 2021 00:50:20','updated'),(27,1,'seller_balance',3,'February 01, 2021 11:07:15','updated'),(28,1,'request',2,'February 01, 2021 11:50:19','approved'),(29,1,'seller_settings',0,'February 01, 2021 12:03:17','updated'),(30,1,'seller_balance',3,'February 01, 2021 14:53:22','updated'),(31,1,'seller_balance',1,'February 01, 2021 15:05:56','updated'),(32,1,'seller_balance',2,'February 03, 2021 10:54:24','updated'),(33,1,'order',6,'February 03, 2021 12:03:35','cancelled'),(34,1,'support_request',1,'February 03, 2021 11:10:35','CLOSE'),(35,1,'request',3,'February 03, 2021 22:43:17','unapproved'),(36,1,'site_currency',1,'February 03, 2021 22:48:28','inserted'),(37,1,'general_settings',0,'February 03, 2021 22:52:38','updated'),(38,11,'term',1,'February 05, 2021 01:31:04','updated'),(39,11,'term',1,'February 05, 2021 01:31:45','updated'),(40,11,'term',2,'February 05, 2021 01:32:21','updated');
/*!40000 ALTER TABLE `admin_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_rights`
--

DROP TABLE IF EXISTS `admin_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_rights` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` int(11) NOT NULL,
  `plugins` int(10) NOT NULL,
  `pages` int(11) NOT NULL,
  `blog` int(10) NOT NULL,
  `feedback` int(10) NOT NULL,
  `video_schedules` int(10) NOT NULL,
  `proposals` int(11) NOT NULL,
  `accounting` int(10) NOT NULL,
  `payouts` int(10) NOT NULL,
  `reports` int(11) NOT NULL,
  `inbox` int(11) NOT NULL,
  `reviews` int(11) NOT NULL,
  `buyer_requests` int(11) NOT NULL,
  `restricted_words` int(11) NOT NULL,
  `notifications` int(11) NOT NULL,
  `cats` int(11) NOT NULL,
  `delivery_times` int(11) NOT NULL,
  `seller_languages` int(11) NOT NULL,
  `seller_skills` int(11) NOT NULL,
  `seller_levels` int(10) NOT NULL,
  `customer_support` int(11) NOT NULL,
  `coupons` int(11) NOT NULL,
  `slides` int(11) NOT NULL,
  `terms` int(11) NOT NULL,
  `sellers` int(11) NOT NULL,
  `orders` int(11) NOT NULL,
  `referrals` int(11) NOT NULL,
  `files` int(11) NOT NULL,
  `knowledge_bank` int(10) NOT NULL,
  `currencies` int(10) NOT NULL,
  `languages` int(11) NOT NULL,
  `admins` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_rights`
--

LOCK TABLES `admin_rights` WRITE;
/*!40000 ALTER TABLE `admin_rights` DISABLE KEYS */;
INSERT INTO `admin_rights` (`id`, `admin_id`, `settings`, `plugins`, `pages`, `blog`, `feedback`, `video_schedules`, `proposals`, `accounting`, `payouts`, `reports`, `inbox`, `reviews`, `buyer_requests`, `restricted_words`, `notifications`, `cats`, `delivery_times`, `seller_languages`, `seller_skills`, `seller_levels`, `customer_support`, `coupons`, `slides`, `terms`, `sellers`, `orders`, `referrals`, `files`, `knowledge_bank`, `currencies`, `languages`, `admins`) VALUES (1,'1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(2,'10',1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,0),(3,'11',1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,0),(4,'11',1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,0,1,0);
/*!40000 ALTER TABLE `admin_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_user_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_user_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`, `isS3`) VALUES (1,'Admin','','hello@jobstodo.eu','$2y$10$6SsmzCOPWLL.wpryzzPYze7orM9P/DStebGbesmrZMskrQkCx0XcK','','','','','',0),(10,'Theo','','theo@jobstodo.eu','$2y$10$0ymOG8o4hxbaSpBENWk/iu5tpD.AMLyNxuWrAUEaH/Hiq5ede42KS','Logo_JobsToDo_200X200.png','Theo','Cyprus','Admin','Admin',0),(11,'Hassan','','hassan@owint.org','$2y$10$k3qneYjOxwHyalKud0Tw5Op/6tDfXyGPK9RhFpeVEMKjox6ZwpSIe','emavatar-150x150.jpg','Admin_dev','Earth','Admin_Dev','Admin_Dev',0);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_bar`
--

DROP TABLE IF EXISTS `announcement_bar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_bar` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enable_bar` int(10) NOT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bar_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_bar`
--

LOCK TABLES `announcement_bar` WRITE;
/*!40000 ALTER TABLE `announcement_bar` DISABLE KEYS */;
INSERT INTO `announcement_bar` (`id`, `enable_bar`, `bg_color`, `text_color`, `bar_text`, `last_updated`, `language_id`) VALUES (1,0,'#1c26b5','#ffffff','\n','1612393728',1);
/*!40000 ALTER TABLE `announcement_bar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_settings`
--

DROP TABLE IF EXISTS `api_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enable_s3` int(10) NOT NULL,
  `s3_access_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_access_sceret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_bucket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s3_domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_settings`
--

LOCK TABLES `api_settings` WRITE;
/*!40000 ALTER TABLE `api_settings` DISABLE KEYS */;
INSERT INTO `api_settings` (`id`, `enable_s3`, `s3_access_key`, `s3_access_sceret`, `s3_bucket`, `s3_region`, `s3_domain`) VALUES (1,0,'','','','','');
/*!40000 ALTER TABLE `api_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_info`
--

DROP TABLE IF EXISTS `app_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_info` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_info`
--

LOCK TABLES `app_info` WRITE;
/*!40000 ALTER TABLE `app_info` DISABLE KEYS */;
INSERT INTO `app_info` (`id`, `version`, `r_date`) VALUES (1,'1.5.4','25 December 2020');
/*!40000 ALTER TABLE `app_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_license`
--

DROP TABLE IF EXISTS `app_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_license` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `purchase_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_license`
--

LOCK TABLES `app_license` WRITE;
/*!40000 ALTER TABLE `app_license` DISABLE KEYS */;
INSERT INTO `app_license` (`id`, `purchase_code`, `license_type`, `website`) VALUES (1,'95d95d5c-b579-4167-a1f5-e73bd4301c13','Regular License','j2d.owint.org');
/*!40000 ALTER TABLE `app_license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_messages`
--

DROP TABLE IF EXISTS `archived_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_messages`
--

LOCK TABLES `archived_messages` WRITE;
/*!40000 ALTER TABLE `archived_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_cat`
--

DROP TABLE IF EXISTS `article_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_cat` (
  `article_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `article_cat_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`article_cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_cat`
--

LOCK TABLES `article_cat` WRITE;
/*!40000 ALTER TABLE `article_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer_requests`
--

DROP TABLE IF EXISTS `buyer_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer_requests` (
  `request_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `request_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_budget` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer_requests`
--

LOCK TABLES `buyer_requests` WRITE;
/*!40000 ALTER TABLE `buyer_requests` DISABLE KEYS */;
INSERT INTO `buyer_requests` (`request_id`, `seller_id`, `cat_id`, `child_id`, `request_title`, `request_description`, `request_file`, `delivery_time`, `request_budget`, `request_date`, `request_status`, `isS3`) VALUES (1,1,6,56,'Full Stack Developer','I am looking for a full stack developer to design a web application for me','','7 Days','500','January 31, 2021','active',0),(2,1,6,56,'Full Stack Developer','Looking for a full stack developer to redesign my website','','7 Days','500','February 01, 2021','active',0),(3,1,3,34,'I need a logo designed','I need a logo designed','','6 Days','50','February 03, 2021','unapproved',0);
/*!40000 ALTER TABLE `buyer_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buyer_reviews`
--

DROP TABLE IF EXISTS `buyer_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buyer_reviews` (
  `review_id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `review_buyer_id` int(10) NOT NULL,
  `buyer_rating` int(10) NOT NULL,
  `buyer_review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review_seller_id` int(10) NOT NULL,
  `review_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer_reviews`
--

LOCK TABLES `buyer_reviews` WRITE;
/*!40000 ALTER TABLE `buyer_reviews` DISABLE KEYS */;
INSERT INTO `buyer_reviews` (`review_id`, `proposal_id`, `order_id`, `review_buyer_id`, `buyer_rating`, `buyer_review`, `review_seller_id`, `review_date`) VALUES (1,2,1,1,5,'fast delivery - great job',2,'Jan 31 2021'),(2,4,3,3,5,'You are a superstar, over 5 stars.',1,'Feb 01 2021'),(3,7,5,1,5,'super fast delivery\r\ngreat job',3,'Feb 01 2021');
/*!40000 ALTER TABLE `buyer_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `proposal_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `proposal_qty` int(10) NOT NULL,
  `video` int(10) NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_used` int(100) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_extras`
--

DROP TABLE IF EXISTS `cart_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_extras` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_extras`
--

LOCK TABLES `cart_extras` WRITE;
/*!40000 ALTER TABLE `cart_extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_featured` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` int(10) NOT NULL,
  `reminder_emails` int(10) NOT NULL,
  `missed_session_emails` int(10) NOT NULL,
  `warning_message` int(10) NOT NULL,
  `enable_watermark` int(10) NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`cat_id`, `cat_url`, `cat_image`, `cat_featured`, `video`, `reminder_emails`, `missed_session_emails`, `warning_message`, `enable_watermark`, `isS3`) VALUES (1,'graphics-design','p1.png','yes',0,0,0,0,0,0),(2,'digital-marketing','p2.png','yes',0,0,0,0,0,0),(3,'writing-translation','p3.png','yes',0,0,0,0,0,0),(4,'video-animation','p4.png','yes',0,0,0,0,0,0),(6,'programming-tech','p5.png','yes',0,0,0,0,0,0),(7,'business','p6.png','yes',0,0,0,0,0,0),(8,'fun-lifestyle','p7.png','yes',0,0,0,0,0,0),(9,'music-audio','p8.png','yes',0,0,0,0,0,0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_children`
--

DROP TABLE IF EXISTS `categories_children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_children` (
  `child_id` int(10) NOT NULL AUTO_INCREMENT,
  `child_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_parent_id` int(10) NOT NULL,
  `video` int(10) NOT NULL,
  `reminder_emails` int(10) NOT NULL,
  `missed_session_emails` int(10) NOT NULL,
  `warning_message` int(255) NOT NULL,
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_children`
--

LOCK TABLES `categories_children` WRITE;
/*!40000 ALTER TABLE `categories_children` DISABLE KEYS */;
INSERT INTO `categories_children` (`child_id`, `child_url`, `child_parent_id`, `video`, `reminder_emails`, `missed_session_emails`, `warning_message`) VALUES (1,'logo-design',1,0,0,0,0),(2,'business-cards-amp-stationery',1,0,0,0,0),(3,'illustration',1,0,0,0,0),(4,'cartoons-caricatures',1,0,0,0,0),(5,'flyers-posters',1,0,0,0,0),(6,'book-covers-packaging',1,0,0,0,0),(7,'web-amp-mobile-design',1,0,0,0,0),(8,'social-media-design',1,0,0,0,0),(9,'banner-ads',1,0,0,0,0),(10,'social-media-marketing',2,0,0,0,0),(11,'wordpress',6,0,0,0,0),(12,'photoshop-editing',1,0,0,0,0),(13,'3d-2d-models',1,0,0,0,0),(14,'t-shirts',1,0,0,0,0),(15,'presentation-design',1,0,0,0,0),(16,'other',1,0,0,0,0),(17,'seo',2,0,0,0,0),(18,'web-traffic',2,0,0,0,0),(19,'content-marketing',2,0,0,0,0),(20,'video-marketing',2,0,0,0,0),(21,'email-marketing',2,0,0,0,0),(22,'search-display-marketing',2,0,0,0,0),(23,'marketing-strategy',2,0,0,0,0),(24,'web-analytics',2,0,0,0,0),(25,'influencer-marketing',2,0,0,0,0),(26,'local-listings',2,0,0,0,0),(27,'domain-research',2,0,0,0,0),(28,'e-commerce-marketing',2,0,0,0,0),(29,'mobile-advertising',2,0,0,0,0),(30,'resumes-cover-letters',3,0,0,0,0),(31,'proofreading-editing',3,0,0,0,0),(32,'translation',3,0,0,0,0),(33,'creative-writing',3,0,0,0,0),(34,'business-copywriting',3,0,0,0,0),(35,'research-summaries',3,0,0,0,0),(36,'articles-blog-posts',3,0,0,0,0),(37,'press-releases',3,0,0,0,0),(38,'transcription',3,0,0,0,0),(39,'legal-writing',3,0,0,0,0),(40,'other',3,0,0,0,0),(41,'whiteboard-explainer-videos',4,0,0,0,0),(42,'intros-animated-logos',4,0,0,0,0),(43,'promotional-brand-videos',4,0,0,0,0),(44,'editing-post-production',4,0,0,0,0),(45,'lyric-music-videos',4,0,0,0,0),(46,'spokespersons-testimonials',4,0,0,0,0),(48,'other',4,0,0,0,0),(49,'voice-over',9,0,0,0,0),(50,'mixing-mastering',9,0,0,0,0),(51,'producers-composers',9,0,0,0,0),(52,'singer-songwriters',9,0,0,0,0),(53,'session-musicians-singers',9,0,0,0,0),(54,'jingles-drops',9,0,0,0,0),(55,'sound-effects',9,0,0,0,0),(56,'web-programming',6,0,0,0,0),(58,'website-builders-cms',6,0,0,0,0),(60,'ecommerce',6,0,0,0,0),(61,'mobile-apps-web',6,0,0,0,0),(62,'desktop-applications',6,0,0,0,0),(63,'support-it',6,0,0,0,0),(64,'chatbots',6,0,0,0,0),(65,'data-analysis-reports',6,0,0,0,0),(66,'convert-files',6,0,0,0,0),(67,'databases',6,0,0,0,0),(68,'user-testing',6,0,0,0,0),(69,'other',6,0,0,0,0),(70,'virtual-assistant',7,0,0,0,0),(71,'market-research',7,0,0,0,0),(72,'business-plans',7,0,0,0,0),(73,'branding-services',7,0,0,0,0),(74,'legal-consulting',7,0,0,0,0),(75,'financial-consulting',7,0,0,0,0),(76,'business-tips',7,0,0,0,0),(77,'presentations',7,0,0,0,0),(78,'career-advice',7,0,0,0,0),(79,'flyer-distribution',7,0,0,0,0),(80,'other',7,0,0,0,0),(81,'online-lessons',8,0,0,0,0),(82,'arts-crafts',8,0,0,0,0),(83,'relationship-advice',8,0,0,0,0),(84,'health-nutrition-fitness',8,0,0,0,0),(85,'astrology-readings',8,0,0,0,0),(86,'spiritual-healing',8,0,0,0,0),(87,'family-genealogy',8,0,0,0,0),(88,'collectibles',8,0,0,0,0),(89,'greeting-cards-videos',8,0,0,0,0),(91,'viral-videos',8,0,0,0,0),(92,'pranks-stunts',8,0,0,0,0),(93,'celebrity-impersonators',8,0,0,0,0),(94,'other',8,0,0,0,0);
/*!40000 ALTER TABLE `categories_children` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cats_meta`
--

DROP TABLE IF EXISTS `cats_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cats_meta` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `cat_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cats_meta`
--

LOCK TABLES `cats_meta` WRITE;
/*!40000 ALTER TABLE `cats_meta` DISABLE KEYS */;
INSERT INTO `cats_meta` (`id`, `cat_id`, `language_id`, `cat_title`, `cat_desc`) VALUES (1,1,1,'Graphics & Design','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(2,2,1,'Digital Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),(3,3,1,'Writing & Translation','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),(4,4,1,'Video & Animation\r\n','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),(5,6,1,'Programming & Tech\r\n','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),(6,7,1,'Business\r\n','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),(7,8,1,'Fun & Lifestyle\r\n','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),(8,9,1,'Music & Audio','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ');
/*!40000 ALTER TABLE `cats_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_type_status`
--

DROP TABLE IF EXISTS `chat_type_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_type_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `call_id` int(10) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_type_status`
--

LOCK TABLES `chat_type_status` WRITE;
/*!40000 ALTER TABLE `chat_type_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_type_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child_cats_meta`
--

DROP TABLE IF EXISTS `child_cats_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `child_cats_meta` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `child_id` int(10) NOT NULL,
  `child_parent_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `child_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child_cats_meta`
--

LOCK TABLES `child_cats_meta` WRITE;
/*!40000 ALTER TABLE `child_cats_meta` DISABLE KEYS */;
INSERT INTO `child_cats_meta` (`id`, `child_id`, `child_parent_id`, `language_id`, `child_title`, `child_desc`) VALUES (1,1,1,1,'Logo Design','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(2,2,1,1,'Business Cards &amp; Stationery','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(3,3,1,1,'Illustration','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(4,4,1,1,'Cartoons Caricatures','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(5,5,1,1,'Flyers Posters','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(6,6,1,1,'Book Covers & Packaging','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(7,7,1,1,'Web &amp; Mobile Design','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(8,8,1,1,'Social Media Design','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(9,9,1,1,'Banner Ads','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(10,10,2,1,'Social Media Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(11,11,6,1,'WordPress','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(12,12,1,1,'Photoshop Editing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(13,13,1,1,'3D & 2D Models','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(14,14,1,1,'T-Shirts','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(15,15,1,1,'Presentation Design','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(16,16,1,1,'Other','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(17,17,2,1,'SEO','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(18,18,2,1,'Web Traffic','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(19,19,2,1,'Content Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(20,20,2,1,'Video Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(21,21,2,1,'Email Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(22,22,2,1,'Search & Display Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(23,23,2,1,'Marketing Strategy','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(24,24,2,1,'Web Analytics','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(25,25,2,1,'Influencer Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(26,26,2,1,'Local Listings','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(27,27,2,1,'Domain Research','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(28,28,2,1,'E-Commerce Marketing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(29,29,2,1,'Mobile Advertising','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(30,30,3,1,'Resumes & Cover Letters','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(31,31,3,1,'Proofreading & Editing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(32,32,3,1,'Translation','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(33,33,3,1,'Creative Writing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(34,34,3,1,'Business Copywriting','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(35,35,3,1,'Research & Summaries','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(36,36,3,1,'Articles & Blog Posts','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(37,37,3,1,'Press Releases','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(38,38,3,1,'Transcription','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(39,39,3,1,'Legal Writing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(40,40,3,1,'Other','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(41,41,4,1,'Whiteboard & Explainer Videos','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(42,42,4,1,'Intros & Animated Logos','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(43,43,4,1,'Promotional & Brand Videos','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(44,44,4,1,'Editing & Post Production','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(45,45,4,1,'Lyric & Music Videos','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(46,46,4,1,'Spokespersons & Testimonials','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(47,48,4,1,'Other','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(48,49,9,1,'Voice Over','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(49,50,9,1,'Mixing & Mastering','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(50,51,9,1,'Producers & Composers','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(51,52,9,1,'Singer-Songwriters','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(52,53,9,1,'Session Musicians & Singers','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(53,54,9,1,'Jingles & Drops','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(54,55,9,1,'Sound Effects','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(55,56,6,1,'Web Programming','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(56,58,6,1,'Website Builders & CMS','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(57,60,6,1,'Ecommerce','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(58,61,6,1,'Mobile Apps & Web','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(59,62,6,1,'Desktop applications','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(60,63,6,1,'Support & IT','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(61,64,6,1,'Chatbots','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(62,65,6,1,'Data Analysis & Reports','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(63,66,6,1,'Convert Files','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(64,67,6,1,'Databases','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(65,68,6,1,'User Testing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(66,69,6,1,'Other','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(67,70,7,1,'Virtual Assistant','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(68,71,7,1,'Market Research','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(69,72,7,1,'Business Plans','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(70,73,7,1,'Branding Services','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(71,74,7,1,'Legal Consulting','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(72,75,7,1,'Financial Consulting','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(73,76,7,1,'Business Tips','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(74,77,7,1,'Presentations','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(75,78,7,1,'Career Advice','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(76,79,7,1,'Flyer Distribution','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(77,80,7,1,'Other','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(78,81,8,1,'Online Lessons','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(79,82,8,1,'Arts & Crafts','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(80,83,8,1,'Relationship Advice','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(81,84,8,1,'Health, Nutrition & Fitness','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(82,85,8,1,'Astrology & Readings','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(83,86,8,1,'Spiritual & Healing','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(84,87,8,1,'Family & Genealogy','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(85,88,8,1,'Collectibles','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(86,89,8,1,'Greeting Cards & Videos','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(87,91,8,1,'Viral Videos','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(88,92,8,1,'Pranks & Stunts','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(89,93,8,1,'Celebrity Impersonators','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'),(90,94,8,1,'Other','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.');
/*!40000 ALTER TABLE `child_cats_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idea_id` int(100) NOT NULL,
  `seller_id` int(100) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_support`
--

DROP TABLE IF EXISTS `contact_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_support` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_support`
--

LOCK TABLES `contact_support` WRITE;
/*!40000 ALTER TABLE `contact_support` DISABLE KEYS */;
INSERT INTO `contact_support` (`contact_id`, `contact_email`) VALUES (1,'admin-demo@pixinal.com');
/*!40000 ALTER TABLE `contact_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_support_meta`
--

DROP TABLE IF EXISTS `contact_support_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_support_meta` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `contact_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_support_meta`
--

LOCK TABLES `contact_support_meta` WRITE;
/*!40000 ALTER TABLE `contact_support_meta` DISABLE KEYS */;
INSERT INTO `contact_support_meta` (`id`, `language_id`, `contact_heading`, `contact_desc`) VALUES (1,1,'Submit A Support Request','If you have any questions, please feel free to contact us, Our customer service center is online 24/7.\r\n\r\n');
/*!40000 ALTER TABLE `contact_support_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `name`, `code`) VALUES (1,'Afghanistan',93),(2,'Aland Islands',0),(3,'Albania',355),(4,'Algeria',213),(5,'American Samoa',1684),(6,'Andorra',376),(7,'Angola',244),(8,'Anguilla',1264),(9,'Antarctica',0),(10,'Antigua And Barbuda',1268),(11,'Argentina',54),(12,'Armenia',374),(13,'Aruba',297),(14,'Australia',61),(15,'Austria',43),(16,'Azerbaijan',994),(17,'Bahamas',1242),(18,'Bahrain',973),(19,'Bangladesh',880),(20,'Barbados',1246),(21,'Belarus',375),(22,'Belgium',32),(23,'Belize',501),(24,'Benin',229),(25,'Bermuda',1441),(26,'Bhutan',975),(27,'Bolivia',591),(28,'Bosnia And Herzegovina',387),(29,'Botswana',267),(30,'Bouvet Island',0),(31,'Brazil',55),(32,'British Indian Ocean Territory',246),(33,'Brunei Darussalam',673),(34,'Bulgaria',359),(35,'Burkina Faso',226),(36,'Burundi',257),(37,'Cambodia',855),(38,'Cameroon',237),(39,'Canada',1),(40,'Cape Verde',238),(41,'Cayman Islands',1345),(42,'Central African Republic',236),(43,'Chad',235),(44,'Chile',56),(45,'China',86),(46,'Christmas Island',61),(47,'Cocos (keeling) Islands',672),(48,'Colombia',57),(49,'Comoros',269),(50,'Congo',242),(51,'Congo, The Democratic Republic Of',0),(52,'Cook Islands',682),(53,'Costa Rica',506),(54,'Cote D\'ivoire',225),(55,'Croatia',385),(56,'Cuba',53),(57,'Cyprus',357),(58,'Czech Republic',420),(59,'Denmark',45),(60,'Djibouti',253),(61,'Dominica',1767),(62,'Dominican Republic',1809),(63,'Ecuador',593),(64,'Egypt',20),(65,'El Salvador',503),(66,'Equatorial Guinea',240),(67,'Eritrea',291),(68,'Estonia',372),(69,'Ethiopia',251),(70,'Falkland Islands (malvinas)',500),(71,'Faroe Islands',298),(72,'Fiji',679),(73,'Finland',358),(74,'France',33),(75,'French Guiana',594),(76,'French Polynesia',689),(77,'French Southern Territories',0),(78,'Gabon',241),(79,'Gambia',220),(80,'Georgia',995),(81,'Germany',49),(82,'Ghana',233),(83,'Gibraltar',350),(84,'Greece',30),(85,'Greenland',299),(86,'Grenada',1473),(87,'Guadeloupe',590),(88,'Guam',1671),(89,'Guatemala',502),(90,'Guernsey',0),(91,'Guinea',224),(92,'Guinea-bissau',245),(93,'Guyana',592),(94,'Haiti',509),(95,'Heard Island And Mcdonald Islands',0),(96,'Holy See (vatican City State)',39),(97,'Honduras',504),(98,'Hong Kong',852),(99,'Hungary',36),(100,'Iceland',354),(101,'India',91),(102,'Indonesia',62),(103,'Iran, Islamic Republic Of',98),(104,'Iraq',964),(105,'Ireland',353),(106,'Isle Of Man',0),(107,'Israel',972),(108,'Italy',39),(109,'Jamaica',1876),(110,'Japan',81),(111,'Jersey',0),(112,'Jordan',962),(113,'Kazakhstan',7),(114,'Kenya',254),(115,'Kiribati',686),(116,'Korea, Democratic People\'s Republic Of',850),(117,'Korea, Republic Of',82),(118,'Kuwait',965),(119,'Kyrgyzstan',996),(120,'Lao People\'s Democratic Republic',856),(121,'Latvia',371),(122,'Lebanon',961),(123,'Lesotho',266),(124,'Liberia',231),(125,'Libyan Arab Jamahiriya',218),(126,'Liechtenstein',423),(127,'Lithuania',370),(128,'Luxembourg',352),(129,'Macao',853),(130,'North Macedonia',0),(131,'Madagascar',261),(132,'Malawi',265),(133,'Malaysia',60),(134,'Maldives',960),(135,'Mali',223),(136,'Malta',356),(137,'Marshall Islands',692),(138,'Martinique',596),(139,'Mauritania',222),(140,'Mauritius',230),(141,'Mayotte',269),(142,'Mexico',52),(143,'Micronesia, Federated States Of',691),(144,'Moldova, Republic Of',373),(145,'Monaco',377),(146,'Mongolia',976),(147,'Montserrat',1664),(148,'Morocco',212),(149,'Mozambique',258),(150,'Myanmar',95),(151,'Namibia',264),(152,'Nauru',674),(153,'Nepal',977),(154,'Netherlands',31),(155,'Netherlands Antilles',599),(156,'New Caledonia',687),(157,'New Zealand',64),(158,'Nicaragua',505),(159,'Niger',227),(160,'Nigeria',234),(161,'Niue',683),(162,'Norfolk Island',672),(163,'Northern Mariana Islands',1670),(164,'Norway',47),(165,'Oman',968),(166,'Pakistan',92),(167,'Palau',680),(168,'Palestinian Territory, Occupied',970),(169,'Panama',507),(170,'Papua New Guinea',675),(171,'Paraguay',595),(172,'Peru',51),(173,'Philippines',63),(174,'Pitcairn',0),(175,'Poland',48),(176,'Portugal',351),(177,'Puerto Rico',1787),(178,'Qatar',974),(179,'Reunion',262),(180,'Romania',40),(181,'Russian Federation',70),(182,'Rwanda',250),(183,'Saint Helena',290),(184,'Saint Kitts And Nevis',1869),(185,'Saint Lucia',1758),(186,'Saint Pierre And Miquelon',508),(187,'Saint Vincent And The Grenadines',1784),(188,'Samoa',684),(189,'San Marino',378),(190,'Sao Tome And Principe',239),(191,'Saudi Arabia',966),(192,'Senegal',221),(193,'Serbia And Montenegro',381),(194,'Seychelles',248),(195,'Sierra Leone',232),(196,'Singapore',65),(197,'Slovakia',421),(198,'Slovenia',386),(199,'Solomon Islands',677),(200,'Somalia',252),(201,'South Africa',27),(202,'South Georgia And The South Sandwich Islands',0),(203,'Spain',34),(204,'Sri Lanka',94),(205,'Sudan',249),(206,'Suriname',597),(207,'Svalbard And Jan Mayen',47),(208,'Swaziland',268),(209,'Sweden',46),(210,'Switzerland',41),(211,'Syrian Arab Republic',963),(212,'Taiwan, Province Of China',886),(213,'Tajikistan',992),(214,'Tanzania, United Republic Of',255),(215,'Thailand',66),(216,'Timor-leste',670),(217,'Togo',228),(218,'Tokelau',690),(219,'Tonga',676),(220,'Trinidad And Tobago',1868),(221,'Tunisia',216),(222,'Turkey',90),(223,'Turkmenistan',7370),(224,'Turks And Caicos Islands',1649),(225,'Tuvalu',688),(226,'Uganda',256),(227,'Ukraine',380),(228,'United Arab Emirates',971),(229,'United Kingdom',44),(230,'United States',1),(231,'United States Minor Outlying Islands',1),(232,'Uruguay',598),(233,'Uzbekistan',998),(234,'Vanuatu',678),(235,'Venezuela',58),(236,'Viet Nam',84),(237,'Virgin Islands, British',1284),(238,'Virgin Islands, U.S.',1340),(239,'Wallis And Futuna',681),(240,'Western Sahara',212),(241,'Yemen',967),(242,'Zambia',260),(243,'Zimbabwe',263),(245,'Myanmar (Burma)',0);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `coupon_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_limit` int(10) NOT NULL,
  `coupon_used` int(10) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons_used`
--

DROP TABLE IF EXISTS `coupons_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons_used` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `proposal_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons_used`
--

LOCK TABLES `coupons_used` WRITE;
/*!40000 ALTER TABLE `coupons_used` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons_used` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `name`, `symbol`) VALUES (1,'Afghan afghani','&#065;&#102;'),(2,'Albanian lek','&#076;&#101;&#107;'),(3,'Algerian dinar','&#1583;&#1580;'),(4,'Euro','&#8364;'),(5,'Angolan kwanza','&#075;&#122;'),(6,'East Caribbean dollar','&#036;'),(7,'Argentine peso','&#036;'),(8,'Armenian dram','AMD'),(9,'Aruban florin','&#402;'),(10,'Australian dollar','&#036;'),(11,'Azerbaijani manat','&#1084;&#1072;&#1085;'),(12,'Bahamian dollar','&#036;'),(13,'Bahraini dinar','.&#1583;.&#1576;'),(14,'Bangladeshi taka','&#2547;'),(15,'Barbadian dollar','&#036;'),(16,'Belarusian ruble','&#112;&#046;'),(17,'Belizean dollar','&#066;&#090;&#036;'),(18,'West African CFA franc','CFA'),(19,'Bermudian dollar','&#036;'),(20,'Bhutanese ngultrum','&#078;&#117;&#046;'),(21,'Bolivian boliviano','&#036;&#098;'),(22,'US dollar','&#036;'),(23,'Bosnia and Herzegovina convertible mark','&#075;&#077;'),(24,'Botswana pula','&#080;'),(25,'Brazilian real','&#082;&#036;'),(26,'Brunei dollar','&#036;'),(27,'Bulgarian lev','&#1083;&#1074;'),(28,'Burmese kyat','&#075;'),(29,'Burundian franc','&#070;&#066;&#117;'),(30,'Cambodian riel','&#6107;'),(31,'Central African CFA franc','&#070;&#067;&#070;&#065;'),(32,'Canadian dollar','&#036;'),(33,'Cape Verdean escudo','&#036;'),(34,'Cayman Islands dollar','&#036;'),(35,'Chilean peso','&#036;'),(36,'Chinese renminbi','&#165;'),(37,'Colombian peso','&#036;'),(38,'Comorian franc','&#067;&#070;'),(39,'Congolese franc','&#070;&#067;'),(40,'New Zealand dollar','NZ&#036;'),(41,'Costa Rican colón','&#8353;'),(42,'Croatian kuna','&#107;&#110;'),(43,'Cuban peso','&#8369;'),(44,'Netherlands Antilles guilder','&#402;'),(45,'Czech koruna','&#075;&#269;'),(46,'Danish krone','&#107;&#114;'),(47,'Djiboutian franc','&#070;&#100;&#106;'),(48,'Dominican peso','&#082;&#068;&#036;'),(49,'Egyptian pound','EGP'),(50,'Salvadoran colón','&#036;'),(51,'Eritrean nakfa','Nfk'),(52,'Ethiopian birr','&#066;&#114;'),(53,'Falkland Islands pound','&#163;'),(54,'Fijian dollar','&#036;'),(55,'CFP franc','&#070;'),(56,'Gambian dalasi','&#068;'),(57,'Georgian lari','&#4314;'),(58,'Ghanian cedi','&#162;'),(59,'Gibraltar pound','&#163;'),(60,'Guatemalan quetzal','&#081;'),(61,'British pound','&#163;'),(62,'Guinean franc','&#070;&#071;'),(63,'Guyanese dollar','&#036;'),(64,'Haitian gourde','&#071;'),(65,'Honduran lempira','&#076;'),(66,'Hong Kong dollar','&#036;'),(67,'Hungarian forint','&#070;&#116;'),(68,'Icelandic króna','&#107;&#114;'),(69,'Indian rupee','&#8377;'),(70,'Indonesian rupiah','&#082;&#112;'),(71,'Iranian rial','&#65020;'),(72,'Iraqi dinar','&#1593;.&#1583;'),(73,'Israeli new sheqel','&#8362;'),(74,'Jamaican dollar','&#074;&#036;'),(75,'Japanese yen ','&#165;'),(76,'Jordanian dinar','&#074;&#068;'),(77,'Kazakhstani tenge','&#1083;&#1074;'),(78,'Kenyan shilling','&#075;&#083;&#104;'),(79,'North Korean won','&#8361;'),(80,'Kuwaiti dinar','&#1583;.&#1603;'),(81,'Kyrgyzstani som','&#1083;&#1074;'),(82,'South Korean won','&#8361;'),(83,'Lao kip','&#8365;'),(84,'Latvian lats','&#076;&#115;'),(85,'Lebanese pound','&#163;'),(86,'Lesotho loti','&#076;'),(87,'Liberian dollar','&#036;'),(88,'Libyan dinar','?.?'),(89,'Swiss franc','&#067;&#072;&#070;'),(90,'Lithuanian litas','&#076;&#116;'),(91,'Macanese pataca','&#077;&#079;&#080;&#036;'),(92,'Macedonian denar','&#1076;&#1077;&#1085;'),(93,'Malagasy ariary','&#065;&#114;'),(94,'Malawian kwacha','&#077;&#075;'),(95,'Malaysian ringgit','&#082;&#077;'),(96,'Maldivian rufiyaa','.&#1923;'),(97,'Mauritanian ouguiya','&#085;&#077;'),(98,'Mauritian rupee','&#8360;'),(99,'Mexican peso','&#036;'),(100,'Moldovan leu','&#076;'),(101,'Mongolian tugrik','&#8366;'),(102,'Moroccan dirham','&#1583;.&#1605;.'),(103,'Mozambican metical','&#077;&#084;'),(104,'Namibian dollar','&#036;'),(105,'Nepalese rupee','&#8360;'),(106,'Nicaraguan córdoba','&#067;&#036;'),(107,'Nigerian naira','&#8358;'),(108,'Norwegian krone','&#107;&#114;'),(109,'Omani rial','&#65020;'),(110,'Pakistani rupee','&#8360;'),(111,'Panamanian balboa','&#066;&#047;&#046;'),(112,'Papua New Guinea kina','&#075;'),(113,'Paraguayan guarani','&#071;&#115;'),(114,'Peruvian nuevo sol','&#083;&#047;&#046;'),(115,'Philippine peso','&#8369;'),(116,'Polish zloty','&#122;&#322;'),(117,'Qatari riyal','&#65020;'),(118,'Romanian leu','&#108;&#101;&#105;'),(119,'Russian ruble','&#1088;&#1091;&#1073;'),(120,'Rwandan franc','&#1585;.&#1587;'),(121,'Samoan t?l?','&#087;&#083;&#036;'),(122,'São Tomé and Príncipe dobra','&#068;&#098;'),(123,'Saudi riyal','&#65020;'),(124,'Serbian dinar','&#1044;&#1080;&#1085;&#046;'),(125,'Seychellois rupee','&#8360;'),(126,'Sierra Leonean leone','&#076;&#101;'),(127,'Singapore dollar','S&#036;'),(128,'Solomon Islands dollar','&#036;'),(129,'Somali shilling','&#083;'),(130,'South African rand','&#082;'),(131,'Sri Lankan rupee','&#8360;'),(132,'St. Helena pound','&#163;'),(133,'Sudanese pound','&#163;'),(134,'Surinamese dollar','&#036;'),(135,'Swazi lilangeni','&#076;'),(136,'Swedish krona','&#107;&#114;'),(137,'Syrian pound','&#163;'),(138,'New Taiwan dollar','&#078;&#084;&#036;'),(139,'Tajikistani somoni','&#084;&#074;&#083;'),(140,'Tanzanian shilling','Sh'),(141,'Thai baht ','&#3647;'),(142,'Tongan pa’anga','&#084;&#036;'),(143,'Trinidad and Tobago dollar','&#036;'),(144,'Tunisian dinar','&#1583;.&#1578;'),(145,'Turkish lira','&#x20BA;'),(146,'Turkmenistani manat','&#109;'),(147,'Ugandan shilling','&#085;&#083;&#104;'),(148,'Ukrainian hryvnia','&#8372;'),(149,'United Arab Emirates dirham','&#1583;.&#1573;'),(150,'Uruguayan peso','&#036;&#085;'),(151,'Uzbekistani som','&#1083;&#1074;'),(152,'Vanuatu vatu','&#086;&#084;'),(153,'Venezuelan bolivar','&#066;&#115;'),(154,'Vietnamese dong','&#8363;'),(155,'Yemeni rial','&#65020;'),(156,'Zambian kwacha','&#090;&#075;'),(157,'Zimbabwean dollar','&#090;&#036;'),(158,'Jersey pound','&#163;'),(159,'Libyan dinar','&#1604;.&#1583;');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_converter_settings`
--

DROP TABLE IF EXISTS `currency_converter_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_converter_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `enable` int(10) NOT NULL,
  `api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `server` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_converter_settings`
--

LOCK TABLES `currency_converter_settings` WRITE;
/*!40000 ALTER TABLE `currency_converter_settings` DISABLE KEYS */;
INSERT INTO `currency_converter_settings` (`id`, `enable`, `api_key`, `main_currency`, `server`) VALUES (1,0,'','','');
/*!40000 ALTER TABLE `currency_converter_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_times`
--

DROP TABLE IF EXISTS `delivery_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_times` (
  `delivery_id` int(10) NOT NULL AUTO_INCREMENT,
  `delivery_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_proposal_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_times`
--

LOCK TABLES `delivery_times` WRITE;
/*!40000 ALTER TABLE `delivery_times` DISABLE KEYS */;
INSERT INTO `delivery_times` (`delivery_id`, `delivery_title`, `delivery_proposal_title`) VALUES (1,'Up to 24 hours','1 Day'),(2,'Up to 2 Days','2 Days'),(3,'Up to 3 Days','3 Days'),(4,'Up to 4 Days','4 Days'),(5,'Up to 5 Days','5 Days'),(6,'Up to 6 Days','6 Days'),(7,'Up to 7 Days','7 Days');
/*!40000 ALTER TABLE `delivery_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dusupay_orders`
--

DROP TABLE IF EXISTS `dusupay_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dusupay_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int(10) NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dusupay_orders`
--

LOCK TABLES `dusupay_orders` WRITE;
/*!40000 ALTER TABLE `dusupay_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `dusupay_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry_types`
--

DROP TABLE IF EXISTS `enquiry_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry_types` (
  `enquiry_id` int(10) NOT NULL AUTO_INCREMENT,
  `enquiry_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry_types`
--

LOCK TABLES `enquiry_types` WRITE;
/*!40000 ALTER TABLE `enquiry_types` DISABLE KEYS */;
INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES (1,'Order Support '),(2,'Review Removal '),(3,'Account Support'),(4,'Report A Bug \r\n');
/*!40000 ALTER TABLE `enquiry_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expenses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,1) NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `favourite_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  PRIMARY KEY (`favourite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured_proposals`
--

DROP TABLE IF EXISTS `featured_proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featured_proposals` (
  `featured_id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `end_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`featured_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_proposals`
--

LOCK TABLES `featured_proposals` WRITE;
/*!40000 ALTER TABLE `featured_proposals` DISABLE KEYS */;
/*!40000 ALTER TABLE `featured_proposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer_links`
--

DROP TABLE IF EXISTS `footer_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footer_links` (
  `link_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_section` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer_links`
--

LOCK TABLES `footer_links` WRITE;
/*!40000 ALTER TABLE `footer_links` DISABLE KEYS */;
INSERT INTO `footer_links` (`link_id`, `language_id`, `icon_class`, `link_title`, `link_url`, `link_section`) VALUES (1,1,'','Graphics &amp; Design','https://j2d.owint.org/categories/graphics-design','categories'),(2,1,'','Digital Marketing','/categories/digital-marketing','categories'),(3,1,'','Writing & Translation\r\n','/categories/writing-translation','categories'),(4,1,'','Video & Animation\r\n','/categories/video-animation','categories'),(5,1,'','Music & Audio\r\n','/categories/music-audio','categories'),(6,1,'','Programming & Tech\r\n','/categories/programming-tech','categories'),(7,1,'','Business\r\n','/categories/business','categories'),(8,1,'','Fun & Lifestyle\r\n','/categories/fun-lifestyle','categories'),(9,1,'fa-file-text-o','Terms & Conditions','/terms_and_conditions','about'),(10,1,'fa-google-plus-official','fa-google-plus-official','#','follow'),(11,1,'fa-twitter','','#','follow'),(12,1,'fa-facebook','','#','follow'),(13,1,'fa-linkedin','','#','follow'),(14,1,'fa-pinterest','','#','follow'),(15,1,'fa fa-life-ring','Customer Support','/customer_support','about'),(16,1,'fa-question-circle','How It Works','/how-it-works','about'),(17,1,'fa-book','Knowledge Bank','/knowledge_bank/','about'),(18,1,'fa-rss','Blog','/blog/','about'),(19,1,'fa fa-comments-o','Feedback','/feedback/','about');
/*!40000 ALTER TABLE `footer_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `site_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_www` int(10) NOT NULL,
  `site_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_mobile_logo` int(10) NOT NULL,
  `site_mobile_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_favicon_s3` int(10) NOT NULL,
  `site_logo_image_s3` int(10) NOT NULL,
  `site_mobile_logo_s3` int(10) NOT NULL,
  `site_logo_s3` int(10) NOT NULL,
  `site_watermark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_hover_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_border_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_email_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_switcher` int(10) NOT NULL,
  `enable_google_translate` int(10) NOT NULL,
  `tinymce_api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apple_app_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_social_login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_app_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_app_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `g_client_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jwplayer_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_one_rating` int(10) NOT NULL,
  `level_one_orders` int(10) NOT NULL,
  `level_two_rating` int(10) NOT NULL,
  `level_two_orders` int(10) NOT NULL,
  `level_top_rating` int(10) NOT NULL,
  `level_top_orders` int(10) NOT NULL,
  `approve_proposals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edited_proposals` int(10) NOT NULL,
  `disable_local_video` int(10) NOT NULL,
  `proposal_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisions_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_unlimited_revisions` int(10) NOT NULL,
  `signup_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `relevant_requests` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_referrals` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `knowledge_bank` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `referral_money` int(10) NOT NULL,
  `site_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_format` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_maintenance_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `make_phone_number_required` int(10) NOT NULL,
  `order_auto_complete` int(10) NOT NULL,
  `wish_do_manual_payouts` int(10) NOT NULL,
  `payouts_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payouts_anyday` int(10) NOT NULL,
  `opentok_api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opentok_api_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_websocket` int(10) NOT NULL,
  `websocket_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobileApp_apiKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` (`id`, `site_title`, `site_www`, `site_name`, `site_favicon`, `site_logo_type`, `site_logo_text`, `site_logo_image`, `enable_mobile_logo`, `site_mobile_logo`, `site_logo`, `site_favicon_s3`, `site_logo_image_s3`, `site_mobile_logo_s3`, `site_logo_s3`, `site_watermark`, `google_analytics`, `site_color`, `site_hover_color`, `site_border_color`, `site_desc`, `site_keywords`, `site_author`, `site_url`, `site_email_address`, `site_copyright`, `site_timezone`, `language_switcher`, `enable_google_translate`, `tinymce_api_key`, `recaptcha_site_key`, `recaptcha_secret_key`, `google_app_link`, `apple_app_link`, `enable_social_login`, `fb_app_id`, `fb_app_secret`, `g_client_id`, `g_client_secret`, `jwplayer_code`, `level_one_rating`, `level_one_orders`, `level_two_rating`, `level_two_orders`, `level_top_rating`, `level_top_orders`, `approve_proposals`, `edited_proposals`, `disable_local_video`, `proposal_email`, `revisions_list`, `enable_unlimited_revisions`, `signup_email`, `relevant_requests`, `enable_referrals`, `knowledge_bank`, `referral_money`, `site_currency`, `currency_position`, `currency_format`, `enable_maintenance_mode`, `make_phone_number_required`, `order_auto_complete`, `wish_do_manual_payouts`, `payouts_date`, `payouts_anyday`, `opentok_api_key`, `opentok_api_secret`, `enable_websocket`, `websocket_address`, `mobileApp_apiKey`) VALUES (1,'JobsToDo',1,'JobsToDo','favicon.ico','image','','Logo_JobsToDo.png',1,'Logo_JobsToDo.png','Logo_JobsToDo.png',0,0,0,0,'Logo_JobsToDo_watermark.png','','#1737b7','#2821ad','#3c28a6','Jobstodo','freelance, gig, jobs, job, work, remote','Jobstodo by OTI','https://www.j2d.owint.org','hello@jobstodo.eu','JobsToDo','Europe/Paris',1,0,'','','','','','no','','','','','',85,10,95,25,100,50,'no',0,0,'yes','',0,'yes','yes','yes','yes',1,'4','left','us','no',0,4,1,'',0,'','',0,'','');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hide_seller_messages`
--

DROP TABLE IF EXISTS `hide_seller_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hide_seller_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hider_id` int(10) NOT NULL,
  `hide_seller_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hide_seller_messages`
--

LOCK TABLES `hide_seller_messages` WRITE;
/*!40000 ALTER TABLE `hide_seller_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `hide_seller_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_cards`
--

DROP TABLE IF EXISTS `home_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_cards` (
  `card_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `card_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_cards`
--

LOCK TABLES `home_cards` WRITE;
/*!40000 ALTER TABLE `home_cards` DISABLE KEYS */;
INSERT INTO `home_cards` (`card_id`, `language_id`, `card_title`, `card_desc`, `card_link`, `card_image`, `isS3`) VALUES (1,1,'Logo Design','Build Your Brand','/categories/graphics-design/logo-design','1.jpg',0),(2,1,'Social Media','Reach More Customers','/categories/digital-marketing/social-media-marketing','2.jpg',0),(3,1,'Voice Talent','The Perfect Voiceover','/categories/video-animation','7.jpg',0),(4,1,'Translation','Go Global.','/categories/writing-translation/translation','4.jpg',0),(5,1,'Illustration','Color Your Dreams','/categories/graphics-design/illustration','5.jpg',0),(6,1,'Photoshop Expert','Hire A Designer','/categories/graphics-design/photoshop-editing','6.jpg',0);
/*!40000 ALTER TABLE `home_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_section`
--

DROP TABLE IF EXISTS `home_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_section` (
  `section_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `section_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_short_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_section`
--

LOCK TABLES `home_section` WRITE;
/*!40000 ALTER TABLE `home_section` DISABLE KEYS */;
INSERT INTO `home_section` (`section_id`, `language_id`, `section_heading`, `section_short_heading`) VALUES (1,1,'DON\'T JUST DREAM, DO.','Freelance Services. On Demand.');
/*!40000 ALTER TABLE `home_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_section_slider`
--

DROP TABLE IF EXISTS `home_section_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_section_slider` (
  `slide_id` int(100) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_section_slider`
--

LOCK TABLES `home_section_slider` WRITE;
/*!40000 ALTER TABLE `home_section_slider` DISABLE KEYS */;
INSERT INTO `home_section_slider` (`slide_id`, `slide_name`, `slide_image`, `isS3`) VALUES (1,'Slide 1','main.png',0),(2,'Slide 2','1.png',0),(3,'Slide 3','2.jpg',0),(4,'Slide 4','3.jpg',0);
/*!40000 ALTER TABLE `home_section_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ideas`
--

DROP TABLE IF EXISTS `ideas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ideas` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `seller_id` int(100) NOT NULL,
  `votes` int(100) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ideas`
--

LOCK TABLES `ideas` WRITE;
/*!40000 ALTER TABLE `ideas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ideas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox_messages`
--

DROP TABLE IF EXISTS `inbox_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox_messages` (
  `message_id` int(10) NOT NULL AUTO_INCREMENT,
  `message_group_id` int(10) NOT NULL,
  `message_sender` int(10) NOT NULL,
  `message_receiver` int(10) NOT NULL,
  `message_offer_id` int(10) NOT NULL,
  `message_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateAgo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox_messages`
--

LOCK TABLES `inbox_messages` WRITE;
/*!40000 ALTER TABLE `inbox_messages` DISABLE KEYS */;
INSERT INTO `inbox_messages` (`message_id`, `message_group_id`, `message_sender`, `message_receiver`, `message_offer_id`, `message_desc`, `message_file`, `message_date`, `dateAgo`, `bell`, `message_status`, `isS3`) VALUES (1,711991229,1,2,0,'\nhi I saw your offer<div></div>\n','','10:12: January 31, 2021','2021-01-31 10:12:07','over','read',0),(2,711991229,2,1,0,'\nis it cool?\n','','10:12: January 31, 2021','2021-01-31 10:12:30','over','read',0),(3,711991229,1,2,0,'\nare you a full stack developer?\n','','10:13: January 31, 2021','2021-01-31 10:13:01','over','read',0),(4,711991229,2,1,1,'','','10:13: January 31, 2021','2021-01-31 10:13:06','over','read',0),(5,711991229,2,1,0,'\nyes i can also do partialstack\n','','10:13: January 31, 2021','2021-01-31 10:13:47','over','read',0),(6,711991229,2,1,0,'\nfghddfhdfhdfhdfhdfh\n','','10:15: January 31, 2021','2021-01-31 10:15:47','over','read',0),(7,711991229,1,2,0,'\ndo you accept paypal or direct payment <div></div>\n','','10:16: January 31, 2021','2021-01-31 10:16:57','over','read',0),(8,711991229,2,1,0,'\npaypal theo@otinternational.org\n','','10:17: January 31, 2021','2021-01-31 10:17:31','over','read',0),(9,711991229,1,2,0,'\noops what did I type?\n','','10:17: January 31, 2021','2021-01-31 10:17:49','over','read',0),(10,711991229,1,2,0,'\nare you there?\n','','10:42: January 31, 2021','2021-01-31 10:42:48','over','read',0),(11,711991229,2,1,0,'\nyes\n','','01:57: February 01, 2021','2021-02-01 01:57:03','over','read',0),(12,1968365122,3,1,0,'\nhello<div></div>\n','','11:58: February 01, 2021','2021-02-01 11:58:06','over','read',0),(13,1968365122,1,3,0,'\nhello\n','','11:58: February 01, 2021','2021-02-01 11:58:28','over','read',0),(14,1968365122,1,3,0,'\nok here is where you can discuss with the seller if you want custom job<div></div>\n','','11:59: February 01, 2021','2021-02-01 11:59:12','over','read',0),(15,1968365122,3,1,0,'\nhere, you are seller, I am buyer?\n','','12:00: February 01, 2021','2021-02-01 12:00:02','over','read',0),(16,1968365122,3,1,0,'\nhere, you are a seller, I am a buyer?\n','','12:00: February 01, 2021','2021-02-01 12:00:17','over','read',0),(17,1968365122,3,1,0,'\nthe chat is slow a little.\n','','12:01: February 01, 2021','2021-02-01 12:01:12','over','read',0),(18,1968365122,1,3,0,'\nif you are happy with what is offered you could just buy it directly and the job will start<div></div>but if you want custom you can discuss with seller and from chat they can make you an offer\n','','12:01: February 01, 2021','2021-02-01 12:01:16','over','read',0),(19,1968365122,1,3,0,'\nif you are happy with what is offered you could just buy it directly and the job will start<div></div>but if you want custom you can discuss with seller and from chat they can make you an offer\n','','12:01: February 01, 2021','2021-02-01 12:01:44','over','read',0),(20,1968365122,1,3,2,'','','12:02: February 01, 2021','2021-02-01 12:02:40','over','read',0),(21,1968365122,1,3,0,'\nbased on my service, I made a custom offer for you<div></div>\n','','12:04: February 01, 2021','2021-02-01 12:04:04','over','read',0),(22,1968365122,3,1,0,'\nhow can I accept offer?<div></div>\n','','12:05: February 01, 2021','2021-02-01 12:05:44','over','read',0),(23,1968365122,1,3,0,'\nif you accept the job the timer will start, since i said 3 days delivery, it will count down 3 days for me to finish the job<div></div>\n','','12:06: February 01, 2021','2021-02-01 12:06:27','over','read',0),(24,1968365122,1,3,0,'\nappect my proposal so you can see\n','','12:07: February 01, 2021','2021-02-01 12:07:46','over','read',0),(25,1968365122,3,1,0,'\nI see<div></div>\n','','12:07: February 01, 2021','2021-02-01 12:07:51','over','read',0),(26,1968365122,3,1,0,'\nhello<div></div>\n','','03:27: February 01, 2021','2021-02-01 15:27:40','over','read',0),(27,1968365122,1,3,0,'\nhello<div></div>\n','','03:28: February 01, 2021','2021-02-01 15:28:26','over','read',0),(28,1968365122,1,3,0,'\nactually now it is working faster I think&nbsp;\n','','03:28: February 01, 2021','2021-02-01 15:28:45','over','read',0),(29,1968365122,3,1,0,'\nreally?\n','','03:28: February 01, 2021','2021-02-01 15:28:58','over','read',0),(30,1968365122,3,1,0,'\nI don\'t know yet.\n','','03:29: February 01, 2021','2021-02-01 15:29:24','over','read',0),(31,1968365122,1,3,0,'\nit seems faster on my side :) <img alt=\"&#128513;\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f601.png\">\n','','03:30: February 01, 2021','2021-02-01 15:30:01','over','read',0),(32,1968365122,1,3,0,'\ncan I make a new site for you, I will give you super discount<div></div>\n','','03:32: February 01, 2021','2021-02-01 15:32:35','over','read',0),(33,1968365122,1,3,3,'','','03:32: February 01, 2021','2021-02-01 15:32:57','over','read',0),(34,1968365122,1,3,0,'\nWhy don\'t you accept my offer?\n','','03:34: February 01, 2021','2021-02-01 15:34:49','over','read',0),(35,1968365122,3,1,0,'\nI cant accept it.\n','','03:37: February 01, 2021','2021-02-01 15:37:45','over','read',0),(36,1968365122,1,3,0,'\nok I will make discount for you because you are a nice guy<div></div>\n','','03:39: February 01, 2021','2021-02-01 15:39:27','over','read',0),(37,1968365122,1,3,4,'','','03:39: February 01, 2021','2021-02-01 15:39:45','over','read',0),(38,1968365122,3,1,0,'\nhow can I accept it?<div></div>\n','','03:47: February 01, 2021','2021-02-01 15:47:14','over','read',0),(39,1968365122,1,3,0,'\njust click accept and pay with your balance\n','','03:51: February 01, 2021','2021-02-01 15:51:41','over','read',0),(40,1968365122,1,3,0,'\nhello<div>I just saw your service</div><div></div>\n','','04:53: February 01, 2021','2021-02-01 16:53:18','over','read',0),(41,1968365122,3,1,5,'','','04:55: February 01, 2021','2021-02-01 16:55:10','over','read',0),(42,1968365122,1,3,0,'\ndid you see the timer?<div></div>\n','','04:56: February 01, 2021','2021-02-01 16:56:37','over','read',0),(43,1968365122,3,1,0,'\nI didn\'t see the timer.\n','','05:02: February 01, 2021','2021-02-01 17:02:59','over','read',0),(44,1968365122,3,1,6,'','','05:04: February 01, 2021','2021-02-01 17:04:21','over','read',0),(45,711991229,2,1,0,'\nhi<div></div>\n','','11:48: February 03, 2021','2021-02-03 11:48:46','over','read',0),(46,711991229,2,1,0,'\nim here\n','','11:48: February 03, 2021','2021-02-03 11:48:52','over','read',0),(47,711991229,2,1,0,'\nasl?\n','','11:48: February 03, 2021','2021-02-03 11:48:59','over','read',0),(48,711991229,1,2,0,'\nyou are late delivering my job\n','','11:49: February 03, 2021','2021-02-03 11:49:11','over','read',0),(49,711991229,2,1,0,'\ni was on time \n','','11:49: February 03, 2021','2021-02-03 11:49:33','over','read',0),(50,711991229,1,2,0,'\nyou said 1 day delivery and it has been 3 days.&nbsp; Sorry but i have to give you a bad review\n','','11:49: February 03, 2021','2021-02-03 11:49:56','over','read',0),(51,711991229,2,1,0,'\nwell.... too late, u already gave me 5 stars b#$%\n','','11:50: February 03, 2021','2021-02-03 11:50:42','over','read',0),(52,711991229,1,2,7,'','','11:50: February 03, 2021','2021-02-03 11:50:43','over','read',0),(53,711991229,1,2,0,'\nhello are you there?&nbsp;\n','','05:41: February 03, 2021','2021-02-03 17:41:38','over','read',0),(54,711991229,1,2,0,'\nhello\n','','05:45: February 03, 2021','2021-02-03 17:45:31','over','read',0),(55,711991229,2,1,0,'\nyes im here\n','','05:45: February 03, 2021','2021-02-03 17:45:49','over','read',0),(56,711991229,1,2,0,'\nHello\n','','11:36: February 04, 2021','2021-02-04 11:36:36','over','read',0),(57,711991229,2,1,0,'\nhi<div></div>\n','','11:36: February 04, 2021','2021-02-04 11:36:51','over','read',0),(58,711991229,1,2,0,'\nhow are you&nbsp;\n','','11:36: February 04, 2021','2021-02-04 11:36:54','over','read',0),(59,711991229,2,1,0,'\nim fine, how are you?\n','','11:37: February 04, 2021','2021-02-04 11:37:10','over','read',0),(60,711991229,1,2,8,'','','11:38: February 04, 2021','2021-02-04 11:38:25','over','read',0),(61,711991229,1,2,0,'\nhello how are you?\n','','12:12: February 04, 2021','2021-02-04 12:12:41','over','unread',0),(62,711991229,2,1,0,'\nIm fine, how are you?\n','','12:12: February 04, 2021','2021-02-04 12:12:59','over','read',0),(63,711991229,1,2,9,'','','12:13: February 04, 2021','2021-02-04 12:13:36','over','unread',0),(64,1251571971,6,1,0,'\nhello sir <div></div>\n','','06:58: February 09, 2021','2021-02-09 06:58:52','active','unread',0);
/*!40000 ALTER TABLE `inbox_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox_sellers`
--

DROP TABLE IF EXISTS `inbox_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox_sellers` (
  `inbox_seller_id` int(10) NOT NULL AUTO_INCREMENT,
  `message_group_id` int(10) NOT NULL,
  `message_id` int(10) NOT NULL,
  `offer_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `popup` int(10) NOT NULL,
  `time` int(11) NOT NULL,
  `message_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`inbox_seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox_sellers`
--

LOCK TABLES `inbox_sellers` WRITE;
/*!40000 ALTER TABLE `inbox_sellers` DISABLE KEYS */;
INSERT INTO `inbox_sellers` (`inbox_seller_id`, `message_group_id`, `message_id`, `offer_id`, `sender_id`, `receiver_id`, `popup`, `time`, `message_status`) VALUES (1,711991229,63,0,1,2,0,1612437216,'unread'),(2,1968365122,44,0,3,1,0,1612195461,'read'),(3,1268221203,0,0,4,2,0,0,'empty'),(4,1251571971,64,0,6,1,1,1612850332,'unread');
/*!40000 ALTER TABLE `inbox_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instant_deliveries`
--

DROP TABLE IF EXISTS `instant_deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instant_deliveries` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `enable` int(10) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `watermark` int(10) NOT NULL,
  `watermark_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instant_deliveries`
--

LOCK TABLES `instant_deliveries` WRITE;
/*!40000 ALTER TABLE `instant_deliveries` DISABLE KEYS */;
INSERT INTO `instant_deliveries` (`id`, `proposal_id`, `enable`, `message`, `watermark`, `watermark_file`, `file`, `isS3`) VALUES (164,1,0,'',0,'','',0),(165,2,0,'',0,'','',0),(166,3,0,'My Message',0,'','',0),(167,4,0,'',0,'','',0),(168,5,0,'Delivery Message',0,'','man-1352025_1280_1612192282.png',0),(169,6,0,'',0,'','',0),(170,7,0,'',0,'','',0),(171,8,0,'',0,'','',0),(172,9,0,'',0,'','',0),(173,10,0,'',0,'','',0);
/*!40000 ALTER TABLE `instant_deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledge_bank`
--

DROP TABLE IF EXISTS `knowledge_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge_bank` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `article_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bottom_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `right_image_s3` int(10) NOT NULL,
  `top_image_s3` int(10) NOT NULL,
  `bottom_image_s3` int(10) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge_bank`
--

LOCK TABLES `knowledge_bank` WRITE;
/*!40000 ALTER TABLE `knowledge_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `knowledge_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_lang` int(10) NOT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` (`id`, `title`, `image`, `default_lang`, `direction`, `template_folder`, `isS3`) VALUES (1,'English','english.png',1,'left','en',0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages_relation`
--

DROP TABLE IF EXISTS `languages_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages_relation` (
  `relation_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `language_id` int(11) NOT NULL,
  `language_level` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages_relation`
--

LOCK TABLES `languages_relation` WRITE;
/*!40000 ALTER TABLE `languages_relation` DISABLE KEYS */;
INSERT INTO `languages_relation` (`relation_id`, `seller_id`, `language_id`, `language_level`) VALUES (1,6,1,'Conversational');
/*!40000 ALTER TABLE `languages_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages_offers`
--

DROP TABLE IF EXISTS `messages_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages_offers` (
  `offer_id` int(10) NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages_offers`
--

LOCK TABLES `messages_offers` WRITE;
/*!40000 ALTER TABLE `messages_offers` DISABLE KEYS */;
INSERT INTO `messages_offers` (`offer_id`, `sender_id`, `proposal_id`, `order_id`, `description`, `delivery_time`, `amount`, `status`) VALUES (1,2,2,1,'Thi is my new oofer in the chat','1 Day','1200','accepted'),(2,1,4,3,'custom website','3 Days','500','accepted'),(3,1,4,0,'new super website','1 Day','250000','active'),(4,1,4,4,'Custom Website','1 Day','500','accepted'),(5,3,7,5,'I will fix your current issues within 1 day.','1 Day','200','accepted'),(6,3,7,6,'timer_test','1 Day','5','accepted'),(7,1,4,7,'Custom web site so you are never late with your jobs','3 Days','5000','accepted'),(8,1,4,9,'custom website','4 Days','5','accepted'),(9,1,4,0,'custom website','1 Day','100','active');
/*!40000 ALTER TABLE `messages_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missed_calls`
--

DROP TABLE IF EXISTS `missed_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `missed_calls` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `call_id` int(100) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `sendTime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missed_calls`
--

LOCK TABLES `missed_calls` WRITE;
/*!40000 ALTER TABLE `missed_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `missed_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_buyers`
--

DROP TABLE IF EXISTS `my_buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_buyers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `completed_orders` int(10) NOT NULL,
  `amount_spent` int(10) NOT NULL,
  `last_order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_buyers`
--

LOCK TABLES `my_buyers` WRITE;
/*!40000 ALTER TABLE `my_buyers` DISABLE KEYS */;
INSERT INTO `my_buyers` (`id`, `seller_id`, `buyer_id`, `completed_orders`, `amount_spent`, `last_order_date`) VALUES (1,2,1,1,10,'February 03, 2021'),(2,1,3,2,1000,'February 01, 2021'),(3,3,1,2,205,'February 01, 2021'),(4,1,2,2,5005,'February 04, 2021');
/*!40000 ALTER TABLE `my_buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_sellers`
--

DROP TABLE IF EXISTS `my_sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_sellers` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `completed_orders` int(10) NOT NULL,
  `amount_spent` int(10) NOT NULL,
  `last_order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_sellers`
--

LOCK TABLES `my_sellers` WRITE;
/*!40000 ALTER TABLE `my_sellers` DISABLE KEYS */;
INSERT INTO `my_sellers` (`id`, `buyer_id`, `seller_id`, `completed_orders`, `amount_spent`, `last_order_date`) VALUES (1,1,2,1,10,'February 03, 2021'),(2,3,1,2,1000,'February 01, 2021'),(3,1,3,2,205,'February 01, 2021'),(4,2,1,2,5005,'February 04, 2021');
/*!40000 ALTER TABLE `my_sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notification_id` int(10) NOT NULL AUTO_INCREMENT,
  `receiver_id` int(10) NOT NULL,
  `sender_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bell` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcm_notification_status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` (`notification_id`, `receiver_id`, `sender_id`, `order_id`, `reason`, `date`, `bell`, `status`, `fcm_notification_status`) VALUES (1,1,'admin_1',1,'approved_request','January 31, 2021','over','read',NULL),(2,1,'2',1,'offer','January 31, 2021','over','read',NULL),(3,2,'1',1,'order','January 31, 2021','over','read',NULL),(4,1,'2',1,'order_delivered','January 31, 2021','over','read',NULL),(5,2,'1',1,'order_completed','January 31, 2021','over','read',NULL),(6,2,'1',1,'buyer_order_review','January 31, 2021','over','read',NULL),(7,1,'2',1,'seller_order_review','January 31, 2021','over','read',NULL),(8,2,'1',2,'order','January 31, 2021','over','read',NULL),(9,1,'3',3,'order','February 01, 2021','over','read',NULL),(14,1,'3',3,'order_message','12:50: February 01, 2021','over','read',NULL),(15,1,'3',3,'order_message','12:50: February 01, 2021','over','read',NULL),(16,1,'admin_1',2,'approved_request','February 01, 2021','over','read',NULL),(17,3,'1',3,'order_delivered','February 01, 2021','over','read',NULL),(18,1,'3',3,'order_completed','February 01, 2021','over','read',NULL),(19,1,'3',3,'buyer_order_review','February 01, 2021','over','read',NULL),(20,3,'1',3,'seller_order_review','February 01, 2021','over','read',NULL),(21,1,'3',4,'order','February 01, 2021','over','read',NULL),(22,3,'1',4,'order_message','04:02: February 01, 2021','over','read',NULL),(23,3,'1',5,'order','February 01, 2021','over','read',NULL),(24,1,'3',5,'order_message','04:55: February 01, 2021','over','read',NULL),(25,3,'1',5,'order_message','04:56: February 01, 2021','over','read',NULL),(26,1,'3',5,'order_message','04:56: February 01, 2021','over','read',NULL),(27,1,'3',5,'order_delivered','February 01, 2021','over','read',NULL),(28,1,'3',5,'order_message','04:57: February 01, 2021','over','read',NULL),(29,3,'1',5,'order_message','04:57: February 01, 2021','over','unread',NULL),(30,1,'3',5,'order_message','04:58: February 01, 2021','over','read',NULL),(31,3,'1',5,'order_completed','February 01, 2021','over','read',NULL),(32,3,'1',5,'buyer_order_review','February 01, 2021','over','read',NULL),(33,1,'3',5,'seller_order_review','February 01, 2021','over','read',NULL),(34,3,'1',6,'order','February 01, 2021','over','read',NULL),(35,3,'1',6,'order_message','05:08: February 01, 2021','over','unread',NULL),(36,3,'1',6,'cancellation_request','February 03, 2021','over','read',NULL),(37,1,'2',7,'order','February 03, 2021','over','read',NULL),(38,2,'1',7,'order_message','11:58: February 03, 2021','over','read',NULL),(39,1,'3',6,'decline_cancellation_request','February 03, 2021','over','read',NULL),(40,1,'2',7,'order_message','12:03: February 03, 2021','over','read',NULL),(41,3,'1',6,'cancelled_by_customer_support','February 03, 2021','active','unread',NULL),(42,2,'1',2,'cancellation_request','February 03, 2021','over','read',NULL),(43,2,'1',7,'order_delivered','February 03, 2021','over','read',NULL),(44,1,'2',2,'accept_cancellation_request','February 03, 2021','over','read',NULL),(45,2,'1',8,'order','February 03, 2021','over','read',NULL),(46,2,'1',8,'order_message','05:47: February 03, 2021','over','read',NULL),(47,1,'admin_1',3,'unapproved_request','February 03, 2021','over','read',NULL),(48,1,'2',9,'order','February 04, 2021','over','read',NULL),(49,1,'2',9,'order_message','11:46: February 04, 2021','over','read',NULL);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_conversations`
--

DROP TABLE IF EXISTS `order_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_conversations` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `watermark` int(10) NOT NULL,
  `watermark_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_conversations`
--

LOCK TABLES `order_conversations` WRITE;
/*!40000 ALTER TABLE `order_conversations` DISABLE KEYS */;
INSERT INTO `order_conversations` (`c_id`, `order_id`, `sender_id`, `message`, `file`, `date`, `reason`, `status`, `watermark`, `watermark_file`, `isS3`) VALUES (1,1,2,'yo here it is','Screenshot 2021-01-31 at 2.06.24 PM_1612110197.png','10:01: January 31 2021','','message',0,'',0),(2,3,1,'I set that you must upload a file, so you must upload something for the job to start','','12:09: February 01, 2021','','message',0,'',0),(3,3,3,'You can start working now.','description6067_CA_1612180205.pdf','12:50: February 01, 2021','','message',0,'',0),(4,3,3,'You can start working now.','description6067_CA_1612180207.pdf','12:50: February 01, 2021','','message',0,'',0),(5,3,3,'You can start working now.','description6067_CA_1612180208.pdf','12:50: February 01, 2021','','message',0,'',0),(6,3,3,'You can start working now.','description6067_CA_1612180208.pdf','12:50: February 01, 2021','','message',0,'',0),(7,3,3,'You can start working now.','description6067_CA_1612180208.pdf','12:50: February 01, 2021','','message',0,'',0),(8,3,1,'job is completed please give me 6 star rating','','03:02: February 01 2021','','message',0,'',0),(9,4,1,'because I set up this job saying that i require a file to start the job, the system wont start the job until you send me a message.  THis is a bit wrong because if you just say ok and send the timer will start, so one of the things we will fix is to set up the system to say that a file is required during setup','','04:02: February 01, 2021','','message',0,'',0),(10,5,3,'','','04:55: February 01, 2021','','message',0,'',0),(11,5,1,'ok here is my script \r\n\r\n&lt;!-- This Source Code Form is subject to the terms of the Mozilla Public\r\n   - License, v. 2.0. If a copy of the MPL was not distributed with this file,\r\n   - You can obtain one at http://mozilla.org/MPL/2.0/. --&gt;\r\n\r\n&lt;!doctype html&gt;\r\n&lt;html&gt;\r\n  &lt;head&gt;\r\n    &lt;meta charset=&quot;utf-8&quot;&gt;\r\n    &lt;meta http-equiv=&quot;Content-Security-Policy&quot; content=&quot;default-src \'none\'; object-src \'none\'; script-src resource: chrome:; connect-src https:; img-src https: data: blob:; style-src \'unsafe-inline\';&quot;&gt;\r\n    &lt;title data-l10n-id=&quot;newtab-page-title&quot;&gt;&lt;/title&gt;\r\n    &lt;link rel=&quot;icon&quot; type=&quot;image/png&quot; href=&quot;chrome://branding/content/icon32.png&quot;/&gt;\r\n    &lt;link rel=&quot;localization&quot; href=&quot;branding/brand.ftl&quot; /&gt;\r\n    &lt;link rel=&quot;localization&quot; href=&quot;browser/branding/brandings.ftl&quot; /&gt;\r\n    &lt;link rel=&quot;localization&quot; href=&quot;browser/newtab/newtab.ftl&quot; /&gt;\r\n    &lt;link rel=&quot;stylesheet&quot; href=&quot;chrome://browser/content/contentSearchUI.css&quot; /&gt;\r\n    &lt;link rel=&quot;stylesheet&quot; href=&quot;chrome://activity-stream/content/css/activity-stream.css&quot; /&gt;\r\n  &lt;/head&gt;\r\n  &lt;body class=&quot;activity-stream&quot;&gt;\r\n    &lt;div id=&quot;root&quot;&gt;&lt;/div&gt;\r\n    &lt;div id=&quot;footer-asrouter-container&quot; role=&quot;presentation&quot;&gt;&lt;/div&gt;\r\n  &lt;/body&gt;\r\n&lt;/html&gt;\r\n','','04:56: February 01, 2021','','message',0,'',0),(12,5,3,'lol, I see\r\n','','04:56: February 01, 2021','','message',0,'',0),(13,5,3,'Done','','04:02: February 01 2021','','message',0,'',0),(14,5,3,'Are you ok?','','04:57: February 01, 2021','','message',0,'',0),(15,5,1,'where is the script?  I do not accept I will complain :) ','','04:57: February 01, 2021','','message',0,'',0),(16,5,3,'lol','','04:58: February 01, 2021','','message',0,'',0),(17,6,1,'here is the script','','05:08: February 01, 2021','','message',0,'',0),(18,6,1,'testing dispute\r\n\r\nJob was not done','','11:52: Feb 03, 2021','Seller is not responding.','decline_cancellation_request',0,'',0),(19,7,1,'You will need to upload a file or send some text in the box for the job to start as I set it as a requirement','','11:58: February 03, 2021','','message',0,'',0),(20,7,2,'here is the logo','OTI_Education_Logo_inv_1612350203.png','12:03: February 03, 2021','','message',0,'',0),(21,6,1,'Order Cancelled By Customer Support','','12:03: Feb 03, 2021','','cancelled_by_customer_support',0,'',0),(22,2,1,'Please complete job or accept cancellation\r\nTesting Resolution center','','12:05: Feb 03, 2021','Seller is not responding.','accept_cancellation_request',0,'',0),(23,7,1,'done enjoy your site','','12:02: February 03 2021','','delivered',0,'',0),(24,8,1,'ok here is file','','05:47: February 03, 2021','','message',0,'',0),(25,9,2,'ok','','11:46: February 04, 2021','','message',0,'',0);
/*!40000 ALTER TABLE `order_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_extend_time`
--

DROP TABLE IF EXISTS `order_extend_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_extend_time` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `extended_minutes` int(10) NOT NULL,
  `price_per_minute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customAmount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyerExtended` int(10) NOT NULL,
  `sellerExtended` int(10) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_extend_time`
--

LOCK TABLES `order_extend_time` WRITE;
/*!40000 ALTER TABLE `order_extend_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_extend_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_extras`
--

DROP TABLE IF EXISTS `order_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_extras` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_extras`
--

LOCK TABLES `order_extras` WRITE;
/*!40000 ALTER TABLE `order_extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_schedules`
--

DROP TABLE IF EXISTS `order_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_schedules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` int(10) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_schedules`
--

LOCK TABLES `order_schedules` WRITE;
/*!40000 ALTER TABLE `order_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tips`
--

DROP TABLE IF EXISTS `order_tips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_tips` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tips`
--

LOCK TABLES `order_tips` WRITE;
/*!40000 ALTER TABLE `order_tips` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_tips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_minutes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extended_minutes` int(10) NOT NULL,
  `extended_minutes_price` int(10) NOT NULL,
  `order_revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_revisions_used` int(10) NOT NULL,
  `order_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` int(10) NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `order_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_qty` int(10) NOT NULL,
  `order_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `order_active` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complete_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`order_id`, `order_number`, `order_duration`, `order_time`, `order_date`, `order_minutes`, `extended_minutes`, `extended_minutes_price`, `order_revisions`, `order_revisions_used`, `order_description`, `seller_id`, `buyer_id`, `proposal_id`, `order_price`, `order_qty`, `order_fee`, `order_active`, `complete_time`, `order_status`) VALUES (1,'625846764','1 Day','Feb 01, 2021 16:22:42','January 31, 2021','',0,0,'0',0,'',2,1,2,'1200',1,'0','no','Feb 02, 2021 10:23:17','completed'),(2,'1982290058','1 Day','Feb 01, 2021 16:59:11','January 31, 2021','',0,0,'0',0,'',2,1,2,'5',1,'0','no','','cancelled'),(3,'117460179','3 Days','Feb 04, 2021 11:50:05','February 01, 2021','',0,0,'0',0,'',1,3,4,'500',1,'0','no','Feb 05, 2021 15:29:36','completed'),(4,'2095157753','1 Day','Feb 02, 2021 14:53:48','February 01, 2021','',0,0,'0',0,'',1,3,4,'500',1,'0','yes','','pending'),(5,'1875420040','1 Day','Feb 02, 2021 15:56:01','February 01, 2021','',0,0,'0',0,'',3,1,7,'200',1,'0','no','Feb 05, 2021 16:56:58','completed'),(6,'115725896','1 Day','Feb 02, 2021 16:08:49','February 01, 2021','',0,0,'0',0,'',3,1,7,'5',1,'0','no','','cancelled'),(7,'1227496633','3 Days','Feb 06, 2021 11:03:23','February 03, 2021','',0,0,'0',0,'',1,2,4,'5000',1,'0','yes','Feb 07, 2021 12:05:32','delivered'),(8,'2063535306','1 Day','Feb 04, 2021 16:46:59','February 03, 2021','',0,0,'0',0,'',2,1,2,'10',1,'0','yes','','progress'),(9,'1901586880','4 Days','Feb 08, 2021 10:46:02','February 04, 2021','',0,0,'0',0,'',1,2,4,'5',1,'0','yes','','progress');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_attributes`
--

DROP TABLE IF EXISTS `package_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package_attributes` (
  `attribute_id` int(100) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(100) NOT NULL,
  `package_id` int(100) NOT NULL,
  `attribute_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_attributes`
--

LOCK TABLES `package_attributes` WRITE;
/*!40000 ALTER TABLE `package_attributes` DISABLE KEYS */;
INSERT INTO `package_attributes` (`attribute_id`, `proposal_id`, `package_id`, `attribute_name`, `attribute_value`) VALUES (1,5,13,'new_attribute',''),(2,5,14,'new_attribute',''),(3,5,15,'new_attribute','');
/*!40000 ALTER TABLE `package_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_meta`
--

DROP TABLE IF EXISTS `pages_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_meta`
--

LOCK TABLES `pages_meta` WRITE;
/*!40000 ALTER TABLE `pages_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `min_proposal_price` int(10) NOT NULL,
  `comission_percentage` int(10) NOT NULL,
  `days_before_withdraw` int(10) NOT NULL,
  `withdrawal_limit` int(10) NOT NULL,
  `featured_fee` int(10) NOT NULL,
  `featured_duration` int(10) NOT NULL,
  `featured_proposal_while_creating` int(10) NOT NULL,
  `processing_feeType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_fee` int(10) NOT NULL,
  `enable_paypal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_app_client_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_app_client_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_sandbox` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_payoneer` int(10) NOT NULL,
  `enable_stripe` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_publishable_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_webhook_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_dusupay` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_sandbox` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_webhook_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_payout_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dusupay_payout_provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_payza` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payza_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payza_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payza_test` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_coinpayments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_merchant_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_withdrawal_fee` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_private_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coinpayments_ipn_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_paystack` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_bank_transfer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_moneygram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moneygram_id_types` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_2checkout` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_publishable_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_private_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_secret_word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_sandbox` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_mercadopago` int(10) NOT NULL,
  `mercadopago_access_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_sandbox` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` (`id`, `min_proposal_price`, `comission_percentage`, `days_before_withdraw`, `withdrawal_limit`, `featured_fee`, `featured_duration`, `featured_proposal_while_creating`, `processing_feeType`, `processing_fee`, `enable_paypal`, `paypal_email`, `paypal_currency_code`, `paypal_app_client_id`, `paypal_app_client_secret`, `paypal_sandbox`, `enable_payoneer`, `enable_stripe`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_webhook_key`, `stripe_currency_code`, `enable_dusupay`, `dusupay_sandbox`, `dusupay_currency_code`, `dusupay_api_key`, `dusupay_secret_key`, `dusupay_webhook_hash`, `dusupay_method`, `dusupay_provider_id`, `dusupay_payout_method`, `dusupay_payout_provider_id`, `enable_payza`, `payza_email`, `payza_currency_code`, `payza_test`, `enable_coinpayments`, `coinpayments_merchant_id`, `coinpayments_currency_code`, `coinpayments_withdrawal_fee`, `coinpayments_public_key`, `coinpayments_private_key`, `coinpayments_ipn_secret`, `enable_paystack`, `paystack_public_key`, `paystack_secret_key`, `enable_bank_transfer`, `enable_moneygram`, `moneygram_id_types`, `enable_2checkout`, `checkout_number`, `checkout_publishable_key`, `checkout_private_key`, `checkout_secret_word`, `checkout_currency_code`, `checkout_sandbox`, `enable_mercadopago`, `mercadopago_access_token`, `mercadopago_currency`, `mercadopago_sandbox`) VALUES (1,10,12,10,100,10,3,1,'percentage',3,'no','','','','','on',0,'no','','','','','no','on','','','','','','','','','no','','USD','off','no','','','sender','','','','no','','','no','no','Passport,National Id,Drivers License','no','','','','','','off',0,'','',0);
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payouts`
--

DROP TABLE IF EXISTS `payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payouts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `seller_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payouts`
--

LOCK TABLES `payouts` WRITE;
/*!40000 ALTER TABLE `payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` (`id`, `name`, `description`, `folder`, `version`, `author`, `author_url`, `status`) VALUES (11,'Payment Gateway Plugin','Gateway plugin that allows payment via 2Checkout, Withdrawal via Bank Account and/or Moneygram. Display video with either YouTube, Vimeo or upload an MP4.','paymentGateway','1.1','Pixinal Studio','https://www.pixinal.com/',1),(12,'Video Plugin','This gigtodo script video plugin is for sellers who have video tutorials.','videoPlugin','1.1','Pixinal Studio','https://www.pixinal.com/',1);
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories_meta`
--

DROP TABLE IF EXISTS `post_categories_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `cat_creator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories_meta`
--

LOCK TABLES `post_categories_meta` WRITE;
/*!40000 ALTER TABLE `post_categories_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_categories_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(100) NOT NULL,
  `seller_id` int(100) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comments`
--

LOCK TABLES `post_comments` WRITE;
/*!40000 ALTER TABLE `post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_meta`
--

DROP TABLE IF EXISTS `posts_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_meta`
--

LOCK TABLES `posts_meta` WRITE;
/*!40000 ALTER TABLE `posts_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal_modifications`
--

DROP TABLE IF EXISTS `proposal_modifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposal_modifications` (
  `modification_id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `modification_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal_modifications`
--

LOCK TABLES `proposal_modifications` WRITE;
/*!40000 ALTER TABLE `proposal_modifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `proposal_modifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal_packages`
--

DROP TABLE IF EXISTS `proposal_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposal_packages` (
  `package_id` int(100) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(100) NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal_packages`
--

LOCK TABLES `proposal_packages` WRITE;
/*!40000 ALTER TABLE `proposal_packages` DISABLE KEYS */;
INSERT INTO `proposal_packages` (`package_id`, `proposal_id`, `package_name`, `description`, `revisions`, `delivery_time`, `price`) VALUES (1,1,'Basic','','','','5'),(2,1,'Standard','','','','10'),(3,1,'Advance','','','','15'),(4,2,'Basic','','0','1','5'),(5,2,'Standard','','0','1','10'),(6,2,'Advance','','0','1','15'),(7,3,'Basic','','','','5'),(8,3,'Standard','','','','10'),(9,3,'Advance','','','','15'),(10,4,'Basic','simple joomla site','1','2','50'),(11,4,'Standard','Advanced Joomla Site','2','3','100'),(12,4,'Advance','Custom Joomla site','4','5','250'),(13,5,'Basic','Basic Description','2','','50'),(14,5,'Standard','Standard Description','4','2','100'),(15,5,'Advance','Advance Description','6','3','150'),(16,6,'Basic','Simple laravel site','1','1','150'),(17,6,'Standard','Laravel site with user authentification','2','2','250'),(18,6,'Advance','Laravel site with CRM','4','3','400'),(19,7,'Basic','meng_basic','1','1','300'),(20,7,'Standard','meng_standard','2','3','500'),(21,7,'Advance','meng_advance','3','5','1000'),(22,8,'Basic','test','0','1','10'),(23,8,'Standard','test','0','1','10'),(24,8,'Advance','test','0','1','15'),(25,9,'Basic','testing','0','1','10'),(26,9,'Standard','testing','0','1','10'),(27,9,'Advance','testing','0','1','15'),(28,10,'Basic','test','0','1','10'),(29,10,'Standard','test','0','1','10'),(30,10,'Advance','test','0','1','15');
/*!40000 ALTER TABLE `proposal_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal_referrals`
--

DROP TABLE IF EXISTS `proposal_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposal_referrals` (
  `referral_id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `order_id` int(100) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `referrer_id` int(10) NOT NULL,
  `buyer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`referral_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal_referrals`
--

LOCK TABLES `proposal_referrals` WRITE;
/*!40000 ALTER TABLE `proposal_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `proposal_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal_videosettings`
--

DROP TABLE IF EXISTS `proposal_videosettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposal_videosettings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `enable` int(10) NOT NULL,
  `price_per_minute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days_within_scheduled` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal_videosettings`
--

LOCK TABLES `proposal_videosettings` WRITE;
/*!40000 ALTER TABLE `proposal_videosettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `proposal_videosettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposals`
--

DROP TABLE IF EXISTS `proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposals` (
  `proposal_id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_cat_id` int(10) NOT NULL,
  `proposal_child_id` int(10) NOT NULL,
  `proposal_price` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img4` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_video_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_img1_s3` int(10) NOT NULL,
  `proposal_img2_s3` int(10) NOT NULL,
  `proposal_img3_s3` int(10) NOT NULL,
  `proposal_img4_s3` int(10) NOT NULL,
  `proposal_video_s3` int(10) NOT NULL,
  `proposal_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_enable_referrals` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_referral_money` int(10) NOT NULL,
  `proposal_referral_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_featured` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_toprated` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `proposal_seller_id` int(10) NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `proposal_revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `proposal_rating` int(11) NOT NULL,
  `proposal_views` int(10) NOT NULL,
  `proposal_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`proposal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposals`
--

LOCK TABLES `proposals` WRITE;
/*!40000 ALTER TABLE `proposals` DISABLE KEYS */;
INSERT INTO `proposals` (`proposal_id`, `proposal_title`, `proposal_url`, `proposal_cat_id`, `proposal_child_id`, `proposal_price`, `proposal_img1`, `proposal_img2`, `proposal_img3`, `proposal_img4`, `proposal_video_type`, `proposal_video`, `proposal_img1_s3`, `proposal_img2_s3`, `proposal_img3_s3`, `proposal_img4_s3`, `proposal_video_s3`, `proposal_desc`, `buyer_instruction`, `proposal_tags`, `proposal_enable_referrals`, `proposal_referral_money`, `proposal_referral_code`, `proposal_featured`, `proposal_toprated`, `proposal_seller_id`, `delivery_id`, `proposal_revisions`, `level_id`, `language_id`, `proposal_rating`, `proposal_views`, `proposal_status`) VALUES (1,'I am looking for a full stack developer','i-am-looking-for-a-full-stack-developer',6,56,'0','','','','','','',0,0,0,0,0,'','','laravel, php,mysql,.','no',0,'','no','',1,1,'',1,0,0,0,'draft'),(2,'I will create custom puppets','i-will-create-custom-puppets',4,41,'0','Screenshot 2021-01-31 at 2.06.24 PM_1612109341.png','','','','','',0,0,0,0,0,'\n<p>yeah</p>\n','','puppet,adobe character animator','no',0,'','no','',2,1,'0',1,0,5,10,'active'),(3,'My Proposal Title','my-proposal-title',6,61,'0','','','','','','',0,0,0,0,0,'','','mytag','yes',50,'','no','',3,1,'',1,0,0,0,'draft'),(4,'Professional Website Design','professional-website-design',6,58,'0','emavatar-150x150_1612176841.png','','','','','',0,0,0,0,0,'\n<p>I will design and setup your website&nbsp;</p>\n','send me your logo','website,php,mysql,html,joomla,wordpress','no',0,'','no','',1,1,'0',1,0,5,7,'active'),(5,'Full-stack Web Developer','full-stack-web-developer',6,61,'0','','','','','','',0,0,0,0,0,'','','#tag123','yes',50,'','no','',3,1,'0',1,0,0,0,'draft'),(6,'I will make custom Laravel website for you','i-will-make-custom-laravel-website-for-you',6,56,'0','emavatar-150x150_1612193429.png','','','','','',0,0,0,0,0,'\n<p>I will make a custom laravel website for you choose form the different options I have for you</p>\n','For me to start on the job, I need to know your domain name, please send me your domain name and i will start creating your site.','php,laravel,mysql,website','no',0,'','no','',1,1,'0',1,0,0,1,'active'),(7,'meng_proposal_title','mengproposaltitle',6,61,'0','man-1352025_1280_1612194178.png','','','','','',0,0,0,0,0,'\n<p>meng_project_description</p>\n','Please provide me your current script code and I will implement the laravel script based on your original script you will send me.','react,redux,vue,laravel,php,CI,HTML5/CSS3','no',0,'','no','',3,1,'0',1,0,5,7,'active'),(8,'I will design your logo','i-will-design-your-logo',1,1,'0','','','','','','',0,0,0,0,0,'\n<p>test description</p>\n','in order for me to start, please send me your logo','adobe photoshop, graphics, logo ','no',0,'','no','',1,1,'0',1,0,0,0,'draft'),(9,'I will design a website for you','i-will-design-a-website-for-you',6,56,'0','','','','','','',0,0,0,0,0,'\n<p>design a website for you</p>\n','please give me cpanel access and domain name','php, laravel, html ','no',0,'','no','',1,1,'0',1,0,0,0,'draft'),(10,'custom website','custom-website',1,2,'0','','','','','','',0,0,0,0,0,'\n<p>custom website</p>\n','','website','no',0,'','no','',1,1,'0',1,0,0,0,'draft');
/*!40000 ALTER TABLE `proposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposals_extras`
--

DROP TABLE IF EXISTS `proposals_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposals_extras` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposals_extras`
--

LOCK TABLES `proposals_extras` WRITE;
/*!40000 ALTER TABLE `proposals_extras` DISABLE KEYS */;
INSERT INTO `proposals_extras` (`id`, `proposal_id`, `name`, `price`) VALUES (1,5,'phantom',500),(2,6,'Hosing for 1 year',99),(3,7,'Support for 1 years',1000);
/*!40000 ALTER TABLE `proposals_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposals_faq`
--

DROP TABLE IF EXISTS `proposals_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proposals_faq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposals_faq`
--

LOCK TABLES `proposals_faq` WRITE;
/*!40000 ALTER TABLE `proposals_faq` DISABLE KEYS */;
INSERT INTO `proposals_faq` (`id`, `proposal_id`, `title`, `content`) VALUES (1,5,'Faq title','Faq content'),(2,6,'DO you also offer hosting?','Yes, you can buy this as an extra, I offer 1 year hosting packages');
/*!40000 ALTER TABLE `proposals_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `purchase_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_fee` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` (`purchase_id`, `seller_id`, `order_id`, `reason`, `amount`, `processing_fee`, `method`, `date`) VALUES (1,1,1,'order','1200','','shopping_balance','January 31, 2021'),(2,1,2,'order','5','','shopping_balance','January 31, 2021'),(3,3,3,'order','500','','shopping_balance','February 01, 2021'),(4,3,4,'order','500','','shopping_balance','February 01, 2021'),(5,1,5,'order','200','','shopping_balance','February 01, 2021'),(6,1,6,'order','5','','shopping_balance','February 01, 2021'),(7,2,7,'order','5000','','shopping_balance','February 03, 2021'),(8,1,6,'','5','','order_cancellation','February 03, 2021'),(9,1,2,'','5','','order_cancellation','February 03, 2021'),(10,1,8,'order','10','','shopping_balance','February 03, 2021'),(11,2,9,'order','5','','shopping_balance','February 04, 2021');
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recent_proposals`
--

DROP TABLE IF EXISTS `recent_proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recent_proposals` (
  `recent_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  PRIMARY KEY (`recent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recent_proposals`
--

LOCK TABLES `recent_proposals` WRITE;
/*!40000 ALTER TABLE `recent_proposals` DISABLE KEYS */;
INSERT INTO `recent_proposals` (`recent_id`, `seller_id`, `proposal_id`) VALUES (5,3,4),(6,1,7),(7,3,2),(9,1,2),(10,6,4);
/*!40000 ALTER TABLE `recent_proposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referrals` (
  `referral_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `referred_id` int(10) NOT NULL,
  `comission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`referral_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reporter_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `content_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenues`
--

DROP TABLE IF EXISTS `revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenues` (
  `revenue_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`revenue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenues`
--

LOCK TABLES `revenues` WRITE;
/*!40000 ALTER TABLE `revenues` DISABLE KEYS */;
INSERT INTO `revenues` (`revenue_id`, `seller_id`, `order_id`, `reason`, `amount`, `date`, `end_date`, `status`) VALUES (1,2,1,'order','960','February 10, 2021','February 10, 2021 10:23:56','pending'),(2,1,3,'order','425','February 11, 2021','February 11, 2021 15:30:22','pending'),(3,3,5,'order','170','February 11, 2021','February 11, 2021 16:59:11','pending');
/*!40000 ALTER TABLE `revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(10) NOT NULL,
  `work_id` int(10) NOT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processing_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`id`, `buyer_id`, `work_id`, `payment_method`, `amount`, `profit`, `processing_fee`, `action`, `date`) VALUES (1,1,1,'shopping_balance','1200','0','0','order','2021-01-31'),(2,1,1,'shopping_balance','1200','240','0','order_completed','2021-01-31'),(3,1,2,'shopping_balance','5','0','0','order','2021-01-31'),(4,3,3,'shopping_balance','500','0','0','order','2021-02-01'),(5,3,3,'shopping_balance','500','75','0','order_completed','2021-02-01'),(6,3,4,'shopping_balance','500','0','0','order','2021-02-01'),(7,1,5,'shopping_balance','200','0','0','order','2021-02-01'),(8,1,5,'shopping_balance','200','30','0','order_completed','2021-02-01'),(9,1,6,'shopping_balance','5','0','0','order','2021-02-01'),(10,2,7,'shopping_balance','5000','0','0','order','2021-02-03'),(11,1,8,'shopping_balance','10','0','0','order','2021-02-03'),(12,2,9,'shopping_balance','5','0','0','order','2021-02-04');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_boxes`
--

DROP TABLE IF EXISTS `section_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section_boxes` (
  `box_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `box_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `box_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `box_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`box_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_boxes`
--

LOCK TABLES `section_boxes` WRITE;
/*!40000 ALTER TABLE `section_boxes` DISABLE KEYS */;
INSERT INTO `section_boxes` (`box_id`, `language_id`, `box_title`, `box_desc`, `box_image`, `isS3`) VALUES (4,1,'Your Terms','Whatever you need to simplify your to do list, no&lt;br&gt; matter your budget.\r\n','time.png',0),(5,1,'Your Timeline','Find services based on your goals and deadlines,&lt;br&gt; its that simple.','desk.png',0),(6,1,'Your Safety','Your payment is always secure, GigToDo is built to protect your peace of mind.','tv.png',0);
/*!40000 ALTER TABLE `section_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_accounts`
--

DROP TABLE IF EXISTS `seller_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_accounts` (
  `account_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `withdrawn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `current_balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `used_purchases` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pending_clearance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `month_earnings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_accounts`
--

LOCK TABLES `seller_accounts` WRITE;
/*!40000 ALTER TABLE `seller_accounts` DISABLE KEYS */;
INSERT INTO `seller_accounts` (`account_id`, `seller_id`, `withdrawn`, `current_balance`, `used_purchases`, `pending_clearance`, `month_earnings`) VALUES (1,1,'0','14795','1410','425','425'),(2,2,'0','4995','5005','960','960'),(3,3,'0','15','1000','170','170'),(4,4,'0','0','0','0','0'),(5,5,'0','0','0','0','0'),(6,6,'0','0','0','0','0');
/*!40000 ALTER TABLE `seller_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_languages`
--

DROP TABLE IF EXISTS `seller_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_languages` (
  `language_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_languages`
--

LOCK TABLES `seller_languages` WRITE;
/*!40000 ALTER TABLE `seller_languages` DISABLE KEYS */;
INSERT INTO `seller_languages` (`language_id`, `language_title`) VALUES (1,'English');
/*!40000 ALTER TABLE `seller_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_levels`
--

DROP TABLE IF EXISTS `seller_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_levels` (
  `level_id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_levels`
--

LOCK TABLES `seller_levels` WRITE;
/*!40000 ALTER TABLE `seller_levels` DISABLE KEYS */;
INSERT INTO `seller_levels` (`level_id`) VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `seller_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_levels_meta`
--

DROP TABLE IF EXISTS `seller_levels_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_levels_meta` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `level_id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_levels_meta`
--

LOCK TABLES `seller_levels_meta` WRITE;
/*!40000 ALTER TABLE `seller_levels_meta` DISABLE KEYS */;
INSERT INTO `seller_levels_meta` (`id`, `language_id`, `level_id`, `title`) VALUES (1,1,1,'New Seller'),(2,1,2,'Level One'),(3,1,3,'Level Two'),(4,1,4,'Top Rated A');
/*!40000 ALTER TABLE `seller_levels_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_payment_settings`
--

DROP TABLE IF EXISTS `seller_payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_payment_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `level_id` int(10) NOT NULL,
  `commission_percentage` int(10) NOT NULL,
  `payout_day` int(100) NOT NULL,
  `payout_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payout_anyday` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_payment_settings`
--

LOCK TABLES `seller_payment_settings` WRITE;
/*!40000 ALTER TABLE `seller_payment_settings` DISABLE KEYS */;
INSERT INTO `seller_payment_settings` (`id`, `level_id`, `commission_percentage`, `payout_day`, `payout_time`, `payout_anyday`) VALUES (1,1,15,26,'15:00',1),(2,2,15,20,'01:00',1),(3,3,14,15,'01:00',1),(4,4,12,1,'03:00',1);
/*!40000 ALTER TABLE `seller_payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_reviews`
--

DROP TABLE IF EXISTS `seller_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_reviews` (
  `review_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `review_seller_id` int(10) NOT NULL,
  `seller_rating` int(10) NOT NULL,
  `seller_review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_reviews`
--

LOCK TABLES `seller_reviews` WRITE;
/*!40000 ALTER TABLE `seller_reviews` DISABLE KEYS */;
INSERT INTO `seller_reviews` (`review_id`, `order_id`, `review_seller_id`, `seller_rating`, `seller_review`) VALUES (1,1,2,5,'She was very good in communication and everything was clear!'),(2,3,1,5,'it was nice working with Meng \r\n'),(3,5,3,5,'10+ stars');
/*!40000 ALTER TABLE `seller_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_settings`
--

DROP TABLE IF EXISTS `seller_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_settings` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `id_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferred_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_state_province_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iban_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `swift_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_settings`
--

LOCK TABLES `seller_settings` WRITE;
/*!40000 ALTER TABLE `seller_settings` DISABLE KEYS */;
INSERT INTO `seller_settings` (`id`, `seller_id`, `id_type`, `id_file`, `full_name`, `address`, `mobile_no`, `preferred_currency`, `bank_name`, `bank_country`, `bank_state_province_region`, `bank_city`, `account_name`, `account_no`, `iban_number`, `swift_code`) VALUES (17,1,'','','','','','','','','','','','','',''),(18,2,'','','','','','','','','','','','','',''),(19,3,'','','','','','','','','','','','','',''),(20,4,'','','','','','','','','','','','','',''),(21,5,'','','','','','','','','','','','','',''),(22,6,'','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `seller_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_skills`
--

DROP TABLE IF EXISTS `seller_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_skills` (
  `skill_id` int(10) NOT NULL AUTO_INCREMENT,
  `skill_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_skills`
--

LOCK TABLES `seller_skills` WRITE;
/*!40000 ALTER TABLE `seller_skills` DISABLE KEYS */;
INSERT INTO `seller_skills` (`skill_id`, `skill_title`) VALUES (1,'logo designing'),(2,'Graphic Designing');
/*!40000 ALTER TABLE `seller_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_type_status`
--

DROP TABLE IF EXISTS `seller_type_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller_type_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `message_group_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_type_status`
--

LOCK TABLES `seller_type_status` WRITE;
/*!40000 ALTER TABLE `seller_type_status` DISABLE KEYS */;
INSERT INTO `seller_type_status` (`id`, `seller_id`, `message_group_id`, `time`, `status`) VALUES (1,1,'711991229','2021-02-04 12:12:41','untyping'),(2,2,'711991229','2021-02-04 12:12:58','untyping'),(3,3,'1968365122','2021-02-01 17:02:58','untyping'),(4,1,'1968365122','2021-02-01 16:56:36','untyping'),(5,6,'1251571971','2021-02-09 06:58:50','untyping');
/*!40000 ALTER TABLE `seller_type_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellers` (
  `seller_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_wallet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_payouts` int(100) NOT NULL,
  `seller_paypal_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_payoneer_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_m_account_number` bigint(100) NOT NULL,
  `seller_m_account_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_pass` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_cover_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_image_s3` int(10) NOT NULL,
  `seller_cover_image_s3` int(10) NOT NULL,
  `seller_country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_headline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_level` int(10) NOT NULL,
  `seller_language` int(10) NOT NULL,
  `seller_recent_delivery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_rating` int(10) NOT NULL,
  `seller_offers` int(10) NOT NULL,
  `seller_referral` int(10) NOT NULL,
  `seller_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_verification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_vacation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_vacation_reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_vacation_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_register_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_sound` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `enable_notifications` int(10) NOT NULL DEFAULT '1',
  `seller_activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_timezone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_token` int(10) NOT NULL,
  `inbox_push_notification_status` tinyint(1) NOT NULL,
  `order_message_push_notification_status` tinyint(1) NOT NULL,
  `order_update_push_notification_status` tinyint(1) NOT NULL,
  `buyer_req_push_notification_status` tinyint(1) NOT NULL,
  `myproposal_push_notification_status` tinyint(1) NOT NULL,
  `myaccount_push_notification_status` int(11) NOT NULL,
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` (`seller_id`, `seller_name`, `seller_user_name`, `seller_email`, `seller_wallet`, `seller_phone`, `seller_payouts`, `seller_paypal_email`, `seller_payoneer_email`, `seller_m_account_number`, `seller_m_account_name`, `seller_pass`, `seller_image`, `seller_cover_image`, `seller_image_s3`, `seller_cover_image_s3`, `seller_country`, `seller_city`, `seller_headline`, `seller_about`, `seller_level`, `seller_language`, `seller_recent_delivery`, `seller_rating`, `seller_offers`, `seller_referral`, `seller_ip`, `seller_verification`, `seller_vacation`, `seller_vacation_reason`, `seller_vacation_message`, `seller_register_date`, `enable_sound`, `enable_notifications`, `seller_activity`, `seller_timezone`, `seller_status`, `device_type`, `device_token`, `inbox_push_notification_status`, `order_message_push_notification_status`, `order_update_push_notification_status`, `buyer_req_push_notification_status`, `myproposal_push_notification_status`, `myaccount_push_notification_status`) VALUES (1,'Michelle','Michelle','michelle@jobstodo.eu','','',0,'','',0,'','$2y$10$hp9GLnQYlrQMrtoaGmCQ3uXZY03NkyCD86hh583xRFgxncfzDTETO','','',0,0,'Cyprus','','','',1,0,'February 01, 2021',100,10,1121519082,'216.241.139.69','ok','off','','','January 31, 2021','yes',1,'2021-02-04 18:56:47','Europe/London','online','',0,0,0,0,0,0,0),(2,'Theo','Mavrosavva','thmavrosavva@gmail.com','','',0,'','',0,'','$2y$10$vJde2Xip9RJ7fLLTIL/T0epOfPwgOHMYK9ZLU3p1MloNZRubROKpO','','',0,0,'Cyprus','','','',1,0,'January 31, 2021',100,9,920003627,'216.241.139.69','ok','off','','','January 31, 2021','yes',1,'2021-02-04 15:13:57','Europe/Helsinki','online','',0,0,0,0,0,0,0),(3,'Meng Lu','Meng','menglu95120@gmail.com','','',0,'','',0,'','$2y$10$Tc3coqiS2iOcprF1FeQoPuW/vfWMHGMl5C/LEdvYSL/q1Fg6Gf6dG','','',0,0,'United States','','','',1,0,'February 01, 2021',100,10,488107039,'198.255.66.27','ok','off','','','January 31, 2021','yes',1,'2021-02-03 12:02:07','Asia/Shanghai','online','',0,0,0,0,0,0,0),(4,'hello world','asd','gibay51018@200cai.com','','',0,'','',0,'','$2y$10$h/1AcWdADKU9v5gTFqHJ0utI3z28z7xGsFfz93tkM5GA49wZ7iytS','','',0,0,'Singapore','','','',1,0,'none',0,10,1186821205,'202.55.87.8','ok','off','','','February 03, 2021','yes',1,'2021-02-03 13:01:03','Asia/Shanghai','online','',0,0,0,0,0,0,0),(5,'Sourabh S','sourabhs','hashsourabh@gmail.com','','',0,'','',0,'','$2y$10$mqeMohBwlihBJxpiJbL9iOGsHAD.yNUMEn7.qv6ZtYFj/aIsitq4e','','',0,0,'India','','','',1,0,'none',0,10,499893327,'101.0.49.125','1394828032','off','','','February 05, 2021','yes',1,'2021-02-05 04:24:54','Asia/Kolkata','online','',0,0,0,0,0,0,0),(6,'Ali Mughal','alimughal','alimughal5566@gmail.com','','',0,'','',0,'','$2y$10$pP5MFduHYWBaB9SGTOCDge9nNUSCGdZj4zBC4Eet0TkNZA7dhtFny','','',0,0,'Pakistan','','','',1,0,'none',0,10,63490835,'72.255.58.2','ok','off','','','February 09, 2021','yes',1,'2021-02-09 11:55:18','Asia/Karachi','online','',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_offers`
--

DROP TABLE IF EXISTS `send_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_offers` (
  `offer_id` int(10) NOT NULL AUTO_INCREMENT,
  `request_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_offers`
--

LOCK TABLES `send_offers` WRITE;
/*!40000 ALTER TABLE `send_offers` DISABLE KEYS */;
INSERT INTO `send_offers` (`offer_id`, `request_id`, `sender_id`, `proposal_id`, `description`, `delivery_time`, `amount`, `status`) VALUES (1,1,2,2,'hi although i','1 Day','1500','active');
/*!40000 ALTER TABLE `send_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_currencies`
--

DROP TABLE IF EXISTS `site_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_currencies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_currencies`
--

LOCK TABLES `site_currencies` WRITE;
/*!40000 ALTER TABLE `site_currencies` DISABLE KEYS */;
INSERT INTO `site_currencies` (`id`, `currency_id`, `code`, `position`, `format`, `rate`) VALUES (1,4,'EUR','left','us','');
/*!40000 ALTER TABLE `site_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_relation`
--

DROP TABLE IF EXISTS `skills_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills_relation` (
  `relation_id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `skill_id` int(10) NOT NULL,
  `skill_level` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_relation`
--

LOCK TABLES `skills_relation` WRITE;
/*!40000 ALTER TABLE `skills_relation` DISABLE KEYS */;
INSERT INTO `skills_relation` (`relation_id`, `seller_id`, `skill_id`, `skill_level`) VALUES (1,6,1,'Expert'),(2,6,2,'Expert');
/*!40000 ALTER TABLE `skills_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `slide_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slide_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` (`slide_id`, `language_id`, `slide_name`, `slide_desc`, `slide_image`, `slide_url`, `isS3`) VALUES (27,1,'','','cover-boy.png','https://www.pixinal.com',0),(32,1,'','','art-artist-canvas-374054.jpg','https://www.pixinal.com',0),(33,1,'','','art-dark-ethnic-1038041.jpg','https://www.gigtodo.com',0);
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smtp_settings`
--

DROP TABLE IF EXISTS `smtp_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smtp_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `library` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_smtp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secure` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smtp_settings`
--

LOCK TABLES `smtp_settings` WRITE;
/*!40000 ALTER TABLE `smtp_settings` DISABLE KEYS */;
INSERT INTO `smtp_settings` (`id`, `library`, `enable_smtp`, `host`, `port`, `secure`, `username`, `password`) VALUES (1,'php_mailer','no','','','','','');
/*!40000 ALTER TABLE `smtp_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spam_words`
--

DROP TABLE IF EXISTS `spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spam_words` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spam_words`
--

LOCK TABLES `spam_words` WRITE;
/*!40000 ALTER TABLE `spam_words` DISABLE KEYS */;
INSERT INTO `spam_words` (`id`, `word`) VALUES (1,'PayPal'),(2,'payoneer'),(3,'pay'),(4,'mobile'),(5,'contact'),(6,'email'),(7,'skype'),(8,'number'),(9,'.com'),(10,'direct'),(12,'Pay'),(13,'Poop'),(15,'bad word'),(16,'siva'),(17,'Machi'),(18,'city'),(19,'facebook');
/*!40000 ALTER TABLE `spam_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starred_messages`
--

DROP TABLE IF EXISTS `starred_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `starred_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starred_messages`
--

LOCK TABLES `starred_messages` WRITE;
/*!40000 ALTER TABLE `starred_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `starred_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_conversations`
--

DROP TABLE IF EXISTS `support_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` text NOT NULL,
  `attachment` text,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_conversations`
--

LOCK TABLES `support_conversations` WRITE;
/*!40000 ALTER TABLE `support_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_tickets` (
  `ticket_id` int(10) NOT NULL AUTO_INCREMENT,
  `enquiry_id` int(10) NOT NULL,
  `number` int(11) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_rule` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isS3` int(10) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_tickets`
--

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
INSERT INTO `support_tickets` (`ticket_id`, `enquiry_id`, `number`, `sender_id`, `subject`, `message`, `order_number`, `order_rule`, `attachment`, `date`, `status`, `isS3`) VALUES (1,1,0,1,'Seller wont cancel order even though he has not completed it on time','Seller wont cancel order even though he has not completed it on time','#115725896','Buyer','_1612350123.','12:02 Feb 03, 2021','CLOSE',0);
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_extras`
--

DROP TABLE IF EXISTS `temp_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_extras` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `item_id` int(10) NOT NULL,
  `proposal_id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_extras`
--

LOCK TABLES `temp_extras` WRITE;
/*!40000 ALTER TABLE `temp_extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_orders`
--

DROP TABLE IF EXISTS `temp_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyer_id` int(10) NOT NULL,
  `content_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_id` int(10) NOT NULL,
  `revisions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int(10) NOT NULL,
  `video` int(10) NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_orders`
--

LOCK TABLES `temp_orders` WRITE;
/*!40000 ALTER TABLE `temp_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL AUTO_INCREMENT,
  `language_id` int(10) NOT NULL,
  `term_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `term_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms`
--

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` (`term_id`, `language_id`, `term_title`, `term_link`, `term_description`) VALUES (1,1,'Terms And Conditions','Legal-Notice','\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p><p><br></p><p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p><br></p><p>The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p><br></p><p>ABc</p><p>lorem</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p>abc</p><p><br></p><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</p><p><br></p><p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p><br></p><p>The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p><p><br></p><p>ABc</p><p>lorem</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p><br></p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.</p><p>abc</p>\n'),(2,1,'Refunds Policy','refund','\n<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p><p><span style=\"color: rgb(0, 0, 0);\">abc</span></p><p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p><p><span style=\"color: rgb(0, 0, 0);\">xyz</span></p><p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p><p><span style=\"color: rgb(0, 0, 0);\">abc</span></p><p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p><p><span style=\"color: rgb(0, 0, 0);\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p><p><span style=\"color: rgb(0, 0, 0);\">Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></p><p><br></p>\n');
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_proposals`
--

DROP TABLE IF EXISTS `top_proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_proposals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `proposal_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_proposals`
--

LOCK TABLES `top_proposals` WRITE;
/*!40000 ALTER TABLE `top_proposals` DISABLE KEYS */;
/*!40000 ALTER TABLE `top_proposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unread_messages`
--

DROP TABLE IF EXISTS `unread_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unread_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `message_group_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unread_messages`
--

LOCK TABLES `unread_messages` WRITE;
/*!40000 ALTER TABLE `unread_messages` DISABLE KEYS */;
INSERT INTO `unread_messages` (`id`, `seller_id`, `message_group_id`) VALUES (1,2,711991229);
/*!40000 ALTER TABLE `unread_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_call_messages`
--

DROP TABLE IF EXISTS `video_call_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_call_messages` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `call_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_call_messages`
--

LOCK TABLES `video_call_messages` WRITE;
/*!40000 ALTER TABLE `video_call_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_call_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_calls`
--

DROP TABLE IF EXISTS `video_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_calls` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `call_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_calls`
--

LOCK TABLES `video_calls` WRITE;
/*!40000 ALTER TABLE `video_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_schedules`
--

DROP TABLE IF EXISTS `video_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_schedules` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_schedules`
--

LOCK TABLES `video_schedules` WRITE;
/*!40000 ALTER TABLE `video_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdrawals` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `seller_id` int(10) NOT NULL,
  `method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'owint_j2d'
--

--
-- Dumping routines for database 'owint_j2d'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-09 11:55:18
