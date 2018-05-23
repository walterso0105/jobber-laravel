/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 10.1.21-MariaDB : Database - forge
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`forge` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `forge`;

/*Table structure for table `change_message` */

DROP TABLE IF EXISTS `change_message`;

CREATE TABLE `change_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quote_id` int(11) DEFAULT NULL,
  `message` text,
  `send_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `change_message` */

/*Table structure for table `client_attachments` */

DROP TABLE IF EXISTS `client_attachments`;

CREATE TABLE `client_attachments` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_check` int(1) DEFAULT '-1',
  `job_check` int(1) DEFAULT '-1',
  `invoice_check` int(1) DEFAULT '-1',
  `alias` text NOT NULL,
  `path` text NOT NULL,
  `note` text,
  `created_at` text,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `client_attachments` */

/*Table structure for table `clients` */

DROP TABLE IF EXISTS `clients`;

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` text NOT NULL,
  `last_name` text,
  `company` text,
  `use_company` int(1) DEFAULT '-1',
  `user_id` int(11) NOT NULL,
  `tag` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `clients` */

insert  into `clients`(`client_id`,`first_name`,`last_name`,`company`,`use_company`,`user_id`,`tag`,`created_at`) values (1,'John','Maker','Company',-1,2,NULL,'2018-03-08 16:46:00'),(23,'f','ff',NULL,0,5,NULL,'2018-03-08 17:11:23'),(24,'d','d',NULL,0,2,NULL,'2018-03-10 16:27:31'),(25,'df','ff',NULL,0,2,NULL,'2018-03-11 11:31:30'),(26,'A','Aaaa',NULL,0,2,NULL,'2018-03-12 03:03:43'),(27,'sdfg','sdfg',NULL,0,2,NULL,'2018-03-14 07:30:17'),(28,'asdfa','sdf',NULL,0,2,NULL,'2018-03-14 07:32:36'),(29,'eeee','yyyyy',NULL,0,2,NULL,'2018-03-14 07:58:30'),(30,'f','gdfg',NULL,0,2,NULL,'2018-03-14 09:17:45'),(31,'ghjk','ghjkg','hjk',0,2,NULL,'2018-03-14 11:00:17'),(32,'asdf','asdfa',NULL,0,2,NULL,'2018-03-14 11:01:40'),(33,'test','test111',NULL,0,2,NULL,'2018-03-14 11:06:13');

/*Table structure for table `clients_contact` */

DROP TABLE IF EXISTS `clients_contact`;

CREATE TABLE `clients_contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `type` int(1) DEFAULT '1',
  `option` int(11) NOT NULL,
  `value` text,
  `is_primary` int(1) DEFAULT '-1',
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `clients_contact` */

insert  into `clients_contact`(`contact_id`,`client_id`,`type`,`option`,`value`,`is_primary`) values (1,25,1,1,'123123123',1),(3,23,1,1,'123123123',1);

/*Table structure for table `clients_login` */

DROP TABLE IF EXISTS `clients_login`;

CREATE TABLE `clients_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `password` text,
  `logged_in` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clients_login` */

/*Table structure for table `clients_properties` */

DROP TABLE IF EXISTS `clients_properties`;

CREATE TABLE `clients_properties` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `street1` text,
  `street2` text,
  `city` text,
  `state` text,
  `zip_code` text,
  `country` text,
  `type` int(1) NOT NULL DEFAULT '1',
  `tax` double(10,2) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  PRIMARY KEY (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `clients_properties` */

insert  into `clients_properties`(`property_id`,`client_id`,`street1`,`street2`,`city`,`state`,`zip_code`,`country`,`type`,`tax`,`longitude`,`latitude`) values (36,1,'dongcheng',NULL,'beijing','2 ho',NULL,'China',1,NULL,116.416357,39.928353),(37,1,'dongcheng',NULL,'beijing','2 ho',NULL,'China',-1,NULL,18.643501,60.128161),(38,23,'sxsxs','sxs',NULL,'sxsxs',NULL,'united states',-1,0.00,NULL,NULL),(39,23,'ssss',NULL,NULL,NULL,NULL,'United States',1,0.20,NULL,NULL),(40,24,NULL,NULL,'Dddd',NULL,NULL,'united states',1,0.00,NULL,NULL),(41,25,'ff','ff',NULL,NULL,NULL,'united states',1,0.00,NULL,NULL),(42,25,'ff','ff',NULL,NULL,NULL,'united states',-1,0.00,NULL,NULL),(43,26,'Aa',NULL,NULL,NULL,NULL,'Albania',1,NULL,NULL,NULL),(44,26,'Aa',NULL,NULL,NULL,NULL,'Albania',-1,0.00,NULL,NULL),(45,23,'zzz','zzz',NULL,NULL,NULL,'United States',1,0.20,NULL,NULL),(46,23,'zz',NULL,NULL,NULL,NULL,'United States',1,0.20,NULL,NULL),(47,27,NULL,NULL,NULL,'sdfg','sdfg','united states',1,0.00,NULL,NULL),(48,27,NULL,NULL,NULL,'sdfg','sdfg','united states',-1,0.00,NULL,NULL),(49,28,NULL,NULL,NULL,NULL,NULL,'united states',-1,0.00,NULL,NULL),(50,28,'wewe','wewewe',NULL,NULL,NULL,'United States',1,0.20,NULL,NULL),(51,29,'hhhhhh',NULL,NULL,NULL,NULL,'united states',1,0.00,NULL,NULL),(52,29,'hhhhhh',NULL,NULL,NULL,NULL,'united states',-1,0.00,NULL,NULL),(53,30,'dfgdfgdf',NULL,NULL,NULL,NULL,'united states',1,0.00,NULL,NULL),(54,30,'dfgdfgdf',NULL,NULL,NULL,NULL,'united states',-1,0.00,NULL,NULL),(55,31,NULL,'ghjkghjk',NULL,NULL,NULL,'united states',1,0.00,NULL,NULL),(56,31,NULL,'ghjkghjk',NULL,NULL,NULL,'united states',-1,0.00,NULL,NULL),(57,32,'sdfasdfas','dfasdfasdfa','sdfasdfasdf',NULL,NULL,'united states',1,0.00,NULL,NULL),(58,32,'sdfasdfas','dfasdfasdfa','sdfasdfasdf',NULL,NULL,'united states',-1,0.00,NULL,NULL),(59,33,'6526 Yount St',NULL,'Yountville','CA','94599','united states',1,0.00,-122.3604337,38.4031642),(60,33,'6526 Yount St',NULL,'Yountville','CA','94599','united states',-1,0.00,-122.3604337,38.4031642);

/*Table structure for table `completes` */

DROP TABLE IF EXISTS `completes`;

CREATE TABLE `completes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `completed_id` int(10) DEFAULT NULL,
  `completed_type` varchar(20) DEFAULT NULL,
  `completed_date` date DEFAULT NULL,
  `closed_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `completes` */

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `note` text,
  `allday` int(10) DEFAULT '-1',
  `repeat` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `client_id` int(10) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `is_completed` int(1) DEFAULT '-1',
  `completed_by` int(10) DEFAULT NULL,
  `completed_at` date DEFAULT NULL,
  `property_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `events` */

/*Table structure for table `invoice_reminder` */

DROP TABLE IF EXISTS `invoice_reminder`;

CREATE TABLE `invoice_reminder` (
  `invoice_reminder_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `member_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`invoice_reminder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invoice_reminder` */

/*Table structure for table `invoices` */

DROP TABLE IF EXISTS `invoices`;

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text,
  `client_message` text,
  `discount` double(10,2) DEFAULT NULL,
  `discount_percent` int(1) DEFAULT '1',
  `tax` double(10,2) DEFAULT NULL,
  `deposit` double(10,2) DEFAULT NULL,
  `deposit_percent` int(1) DEFAULT '1',
  `job_ids` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `issue_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `pay_due_type` int(11) DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `sendmail_date` date DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `invoices` */

insert  into `invoices`(`invoice_id`,`client_id`,`property_id`,`user_id`,`description`,`client_message`,`discount`,`discount_percent`,`tax`,`deposit`,`deposit_percent`,`job_ids`,`status`,`issue_date`,`payment_date`,`pay_due_type`,`created_at`,`received_date`,`sendmail_date`) values (1,1,36,2,'For Services Rendered','test',0.00,1,0.00,0.00,1,'9',1,NULL,NULL,3,'2018-03-10',NULL,NULL),(2,1,36,2,'Invoices for John Maker',NULL,0.00,1,0.20,0.00,1,'',3,'2018-03-16',NULL,3,'2018-03-14',NULL,'2018-03-16');

/*Table structure for table `invoices_attachments` */

DROP TABLE IF EXISTS `invoices_attachments`;

CREATE TABLE `invoices_attachments` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `note` text,
  `alias` text NOT NULL,
  `path` text NOT NULL,
  `created_at` text NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `invoices_attachments` */

/*Table structure for table `invoices_services` */

DROP TABLE IF EXISTS `invoices_services`;

CREATE TABLE `invoices_services` (
  `invoice_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_name` text,
  `service_description` text,
  `quantity` int(11) DEFAULT NULL,
  `cost` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`invoice_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `invoices_services` */

insert  into `invoices_services`(`invoice_service_id`,`invoice_id`,`service_id`,`service_name`,`service_description`,`quantity`,`cost`) values (2,2,1,'Free lancer','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(3,2,2,'Free lancer','Service 2Service 2Service 2Service 2Service 2',1,200.00);

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `quote_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `description` text,
  `type` int(1) NOT NULL,
  `unscheduled` int(1) NOT NULL DEFAULT '0',
  `visit_frequence` int(11) DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `date_ended` date DEFAULT NULL,
  `time_started` time DEFAULT NULL,
  `time_ended` time DEFAULT NULL,
  `internal_notes` text,
  `invoicing` int(1) DEFAULT '1',
  `duration` int(11) DEFAULT NULL,
  `duration_unit` int(11) DEFAULT NULL,
  `billing_frequency` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `closed_at` date DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

/*Data for the table `jobs` */

insert  into `jobs`(`job_id`,`client_id`,`property_id`,`quote_id`,`user_id`,`description`,`type`,`unscheduled`,`visit_frequence`,`date_started`,`date_ended`,`time_started`,`time_ended`,`internal_notes`,`invoicing`,`duration`,`duration_unit`,`billing_frequency`,`status`,`created_at`,`closed_at`) values (35,26,43,NULL,2,'Water Damage (accidental discharge or overflow) due to all other water damage loss',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 02:35:17',NULL),(36,24,40,NULL,2,'Air conditioner Leak',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:17:49',NULL),(37,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:27:05',NULL),(38,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:29:09',NULL),(39,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:29:37',NULL),(40,1,36,NULL,2,'Water Damage (accidental discharge or overflow) due to all other water damage loss',1,0,1,'2018-03-14','2018-03-15','10:00:00','12:00:00',NULL,1,NULL,NULL,5,1,'2018-03-14 03:31:10',NULL),(41,24,40,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:31:37',NULL),(42,24,40,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:38:25',NULL),(43,25,41,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:43:53',NULL),(44,25,41,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,0,1,'2018-03-14','2018-03-15','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:44:27',NULL),(45,25,41,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:46:12',NULL),(46,25,41,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:47:34',NULL),(47,25,41,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 03:49:05',NULL),(48,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:09:18',NULL),(49,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:14:55',NULL),(50,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:20:59',NULL),(51,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:23:00',NULL),(52,1,36,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:25:38',NULL),(53,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:26:54',NULL),(54,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:28:18',NULL),(55,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:29:18',NULL),(56,27,47,NULL,2,'afafafafaf',1,0,1,'2018-03-14','2018-03-28','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:30:52',NULL),(57,28,50,NULL,2,'afafafafaf',1,0,1,'2018-03-06','2018-03-20','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:35:00',NULL),(58,28,50,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:55:38',NULL),(59,29,51,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 07:58:59',NULL),(60,25,41,NULL,2,'Accidental Death',1,0,1,'2018-03-13','2018-03-20','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 08:10:00',NULL),(61,25,41,NULL,2,'Accidental Death',1,0,1,'2018-03-13','2018-03-22','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 08:10:27',NULL),(62,24,40,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 08:11:45',NULL),(63,24,40,NULL,2,'Accidental Death',1,0,1,'2018-03-06','2018-03-26','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 08:14:19',NULL),(64,24,40,NULL,2,'All other Losses (including Vandalism and Malicious Mischief)',1,0,1,'2018-03-06','2018-03-26','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 08:14:54',NULL),(65,28,50,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 08:17:35',NULL),(66,1,36,NULL,2,'Accidental Death',1,0,1,'2018-03-13','2018-03-14','15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 08:23:55',NULL),(67,26,43,NULL,2,'Accidental Death',1,1,1,NULL,NULL,'15:00:00','15:30:00','',1,NULL,NULL,NULL,1,'2018-03-14 11:00:49',NULL),(68,1,36,NULL,2,'Accidental Death',1,0,1,'2018-03-14','2018-03-14',NULL,NULL,NULL,1,NULL,NULL,5,1,'2018-03-14 06:48:20',NULL),(69,1,36,NULL,2,'Accidental Death',1,0,1,'2018-03-14','2018-03-14',NULL,NULL,NULL,1,NULL,NULL,5,1,'2018-03-14 06:49:41',NULL),(70,1,36,NULL,2,'Accidental Death',1,0,1,'2018-03-14','2018-03-14',NULL,NULL,NULL,1,NULL,NULL,5,1,'2018-03-14 06:50:17',NULL),(71,1,36,NULL,2,'Description',1,0,1,'2018-03-21','2018-03-21','00:00:00','00:00:00',NULL,1,NULL,NULL,5,1,'2018-03-16 00:48:40',NULL),(72,1,36,NULL,2,'Description',1,0,1,'2018-03-16','2018-03-16',NULL,NULL,NULL,1,NULL,NULL,5,1,'2018-03-16 03:15:50',NULL),(73,1,36,NULL,2,'Description',1,0,1,'2018-03-29','2018-04-06',NULL,NULL,NULL,1,NULL,NULL,5,1,'2018-03-29 22:34:18',NULL),(74,1,36,NULL,2,'Description',1,0,1,'2018-03-29','2018-03-31',NULL,NULL,NULL,1,NULL,NULL,5,1,'2018-03-29 22:44:09',NULL);

/*Table structure for table `jobs_attachments` */

DROP TABLE IF EXISTS `jobs_attachments`;

CREATE TABLE `jobs_attachments` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `alias` text NOT NULL,
  `filepath` text NOT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jobs_attachments` */

/*Table structure for table `jobs_notes` */

DROP TABLE IF EXISTS `jobs_notes`;

CREATE TABLE `jobs_notes` (
  `note_id` int(10) NOT NULL AUTO_INCREMENT,
  `job_id` int(10) DEFAULT NULL,
  `service_perform` text,
  `remark` text,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jobs_notes` */

/*Table structure for table `jobs_services` */

DROP TABLE IF EXISTS `jobs_services`;

CREATE TABLE `jobs_services` (
  `job_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_name` text,
  `service_description` text,
  `quantity` int(11) DEFAULT NULL,
  `cost` double(10,2) DEFAULT NULL,
  `quoted` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

/*Data for the table `jobs_services` */

insert  into `jobs_services`(`job_service_id`,`job_id`,`service_id`,`service_name`,`service_description`,`quantity`,`cost`,`quoted`) values (28,39,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',0,100.00,NULL),(30,41,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(31,42,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(32,42,3,'teew','dafadfadf',0,1231.00,NULL),(33,43,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',0,100.00,NULL),(34,44,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',0,100.00,NULL),(35,48,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(36,48,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(37,49,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(38,49,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(39,50,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(40,50,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(41,50,3,'teew','dafadfadf',10,1231.00,NULL),(42,51,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(43,51,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(44,51,3,'teew','dafadfadf',10,1231.00,NULL),(45,52,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(46,52,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(47,54,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(48,54,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(51,55,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00,NULL),(52,55,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',100,200.00,NULL),(65,58,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(66,58,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00,NULL),(71,59,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(72,59,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',2,200.00,NULL),(73,40,NULL,'1010','1010',1,20.00,NULL),(79,56,1,'aaaa','sssss',0,0.00,NULL),(80,60,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00,NULL),(82,61,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',100,100.00,NULL),(84,62,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',100,200.00,NULL),(85,63,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00,NULL),(88,64,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',100,200.00,NULL),(91,66,1,'Service 1+++','Service 1Service 1Service 1Service 1Service 1Service 1',100,100.00,NULL),(92,68,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00,NULL),(93,69,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00,NULL),(94,70,NULL,'Service 2',NULL,1,200.00,NULL),(95,71,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00,NULL),(96,72,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00,NULL),(97,73,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00,NULL),(98,74,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00,NULL);

/*Table structure for table `jobs_team` */

DROP TABLE IF EXISTS `jobs_team`;

CREATE TABLE `jobs_team` (
  `job_team_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `member_id` text NOT NULL,
  PRIMARY KEY (`job_team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `jobs_team` */

insert  into `jobs_team`(`job_team_id`,`job_id`,`member_id`) values (20,44,'2'),(21,44,'6'),(22,44,'4'),(23,44,'2'),(24,64,'4'),(25,64,'2'),(26,66,'2'),(27,66,'4'),(28,66,'7'),(29,68,'5'),(30,69,'5'),(31,73,'4,5,6');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `amount` double(10,2) NOT NULL,
  `note` text,
  `created_at` date DEFAULT NULL,
  `applied_to` int(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `client_id` int(10) NOT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

/*Table structure for table `quotes` */

DROP TABLE IF EXISTS `quotes`;

CREATE TABLE `quotes` (
  `quote_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text,
  `rate_opportunity` int(1) NOT NULL DEFAULT '0',
  `client_message` text,
  `discount` double(10,2) DEFAULT NULL,
  `discount_percent` int(1) DEFAULT '-1',
  `tax` double(10,2) DEFAULT NULL,
  `deposit` double(10,2) DEFAULT NULL,
  `deposit_percent` int(1) DEFAULT '-1',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date NOT NULL,
  `related_job_id` int(11) DEFAULT NULL,
  `sendmail_date` date DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `quotes` */

insert  into `quotes`(`quote_id`,`client_id`,`property_id`,`user_id`,`description`,`rate_opportunity`,`client_message`,`discount`,`discount_percent`,`tax`,`deposit`,`deposit_percent`,`status`,`created_at`,`related_job_id`,`sendmail_date`,`approved_date`) values (2,26,43,2,NULL,5,'',NULL,NULL,0.20,NULL,NULL,2,'2018-03-13',NULL,'2018-03-16',NULL),(3,1,36,2,NULL,4,NULL,0.00,1,0.20,0.00,1,1,'2018-03-20',NULL,NULL,NULL);

/*Table structure for table `quotes_attachments` */

DROP TABLE IF EXISTS `quotes_attachments`;

CREATE TABLE `quotes_attachments` (
  `attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `note` text,
  `alias` text NOT NULL,
  `path` text NOT NULL,
  `invoice_check` int(1) DEFAULT '-1',
  `job_check` int(1) DEFAULT '-1',
  `created_at` text,
  `quote_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quotes_attachments` */

/*Table structure for table `quotes_internalnotes` */

DROP TABLE IF EXISTS `quotes_internalnotes`;

CREATE TABLE `quotes_internalnotes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `quote_id` int(11) NOT NULL,
  `note_content` text,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quotes_internalnotes` */

/*Table structure for table `quotes_services` */

DROP TABLE IF EXISTS `quotes_services`;

CREATE TABLE `quotes_services` (
  `quote_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_name` text,
  `service_description` text,
  `quantity` int(11) DEFAULT NULL,
  `cost` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`quote_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `quotes_services` */

insert  into `quotes_services`(`quote_service_id`,`quote_id`,`service_id`,`service_name`,`service_description`,`quantity`,`cost`) values (2,2,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',0,100.00),(3,3,1,'Free lancer','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00);

/*Table structure for table `required_deposit` */

DROP TABLE IF EXISTS `required_deposit`;

CREATE TABLE `required_deposit` (
  `require_deposit_id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `deposit_require` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `state` int(1) DEFAULT '-1',
  PRIMARY KEY (`require_deposit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `required_deposit` */

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `description` text,
  `cost` double(10,2) NOT NULL DEFAULT '0.00',
  `exempt` int(1) NOT NULL DEFAULT '-1',
  `user_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `services` */

insert  into `services`(`service_id`,`name`,`type`,`description`,`cost`,`exempt`,`user_id`,`sort`) values (1,'Service 1',1,'Service 1Service 1Service 1Service 1Service 1Service 1',100.00,-1,2,1),(2,'Service 2',1,'Service 2Service 2Service 2Service 2Service 2',200.00,-1,2,2),(3,'teew',2,'dafadfadf',1231.00,-1,2,3);

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `date_started` date DEFAULT NULL,
  `time_started` time DEFAULT NULL,
  `date_ended` date DEFAULT NULL,
  `time_ended` time DEFAULT NULL,
  `is_allday` int(1) NOT NULL DEFAULT '-1',
  `repeat` int(1) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `member_id` varchar(20) DEFAULT NULL,
  `is_complete` int(1) NOT NULL DEFAULT '-1',
  `date_completed` date DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  `client_id` int(10) DEFAULT NULL,
  `property_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `tasks` */

insert  into `tasks`(`task_id`,`title`,`description`,`date_started`,`time_started`,`date_ended`,`time_ended`,`is_allday`,`repeat`,`user_id`,`member_id`,`is_complete`,`date_completed`,`job_id`,`client_id`,`property_id`) values (6,'asdfa','sdf','2018-03-13','18:30:00','2018-03-13','18:30:00',-1,1,2,'',1,'2018-03-14',35,NULL,NULL),(7,'qwerrrrrrrrrrrrrrrrrrrrrrrr','qwerwqer','2018-03-07','00:00:00','2018-03-07','23:00:00',-1,2,2,'4,5,6',-1,NULL,40,NULL,NULL),(8,'123123','1231231','2018-03-04','00:00:00','2018-03-04','23:00:00',1,1,2,'4,5,6',-1,NULL,71,NULL,NULL),(10,'234234','234234','2018-03-05','00:00:00','2018-03-05','23:00:00',1,1,2,'4,5,6',-1,NULL,71,NULL,NULL),(11,'qwe','qwe','2018-03-29','00:00:00','2018-03-29','23:00:00',1,1,2,NULL,-1,NULL,71,NULL,NULL),(12,'rwe','erw','2018-03-29','00:00:00','2018-03-29','23:00:00',1,1,2,NULL,-1,NULL,35,NULL,NULL);

/*Table structure for table `taxes` */

DROP TABLE IF EXISTS `taxes`;

CREATE TABLE `taxes` (
  `tax_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text,
  `value` double(10,2) NOT NULL DEFAULT '0.00',
  `is_default` int(1) NOT NULL DEFAULT '-1',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `taxes` */

insert  into `taxes`(`tax_id`,`name`,`description`,`value`,`is_default`,`user_id`) values (1,'tax1',NULL,0.20,1,2);

/*Table structure for table `teams` */

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `team_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `fullname` text,
  `email` text,
  `phone` text,
  `photo` text,
  `street` text,
  `city` text,
  `state` text,
  `zip_code` text,
  `country` text,
  `permission` text,
  PRIMARY KEY (`team_member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

/*Data for the table `teams` */

insert  into `teams`(`team_member_id`,`owner_id`,`fullname`,`email`,`phone`,`photo`,`street`,`city`,`state`,`zip_code`,`country`,`permission`) values (2,2,'Free lancer','admin@me.com',NULL,NULL,'asfasf','Florstadt','Södermanlands län','61197','Sweden','1'),(4,2,'limited worker','limitedworker@me.com',NULL,NULL,'dongcheng','beijing','2 ho','123234','China','3'),(5,2,'worker','worker@me.com',NULL,NULL,'Chaoyang','beijing','2 ho','123234','China','4'),(6,2,'dispatcher','dispatcher@me.com',NULL,NULL,'Tongzhou','beijing',NULL,'61197','China','5'),(7,2,'mamager','manager@me.com',NULL,NULL,'asfasf','Florstadt','Södermanlands län','61197','Sweden','6'),(8,7,'d','d',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(9,8,'d','d@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(10,9,'d','dasdfasdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(11,10,'a','a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(12,11,'as','s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(13,12,'D','DSDFSDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(14,13,'d','dasddddfasdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(15,14,'sdf','asdfasdfasdf@me.coma',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(16,15,'asdf','222@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(17,16,'efasd','asfefasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(18,17,'asdfasdfasdf','afeafe@asdf.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(19,18,'eee','eee@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(20,19,'fff','fff@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(21,20,'101010','101010',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(22,21,'asdfasdfasdf','asdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(23,22,'444','444@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(24,23,'555 555','555@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(25,24,'d','dasddddfa000sdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(26,25,'d','dasddddfa000000sdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(27,26,'d','dasddddfa0000000sdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(28,27,'666 666','666@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(29,28,'d','dasddddfa0000000000sdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(30,29,'d','dasddddfa0000000000ddsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(31,30,'d','dasddddfa0000000000dssdsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(32,31,'d','dasddddfa000000dssdsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(33,32,'d','dasddddfa00000-0dssdsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(34,33,'d','dasddddfa00000--0dssdsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(35,34,'d','dasddddfa00000---0dssdsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(36,35,'d','dasddddfa00000----0dssdsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1'),(37,36,'d','dasddddfa00000-----0dssdsdfasdf@me.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1');

/*Table structure for table `timesheets` */

DROP TABLE IF EXISTS `timesheets`;

CREATE TABLE `timesheets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `category` varchar(250) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `save_date` date DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `approve` int(1) NOT NULL DEFAULT '-1',
  `member_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `timesheets` */

insert  into `timesheets`(`id`,`category`,`start_time`,`end_time`,`duration`,`save_date`,`note`,`created_at`,`user_id`,`approve`,`member_id`,`visit_id`) values (1,'General','18:06:00',NULL,NULL,NULL,NULL,NULL,5,-1,2,NULL),(2,'General','18:06:00',NULL,NULL,NULL,NULL,NULL,4,-1,2,NULL),(3,'General','18:06:00',NULL,NULL,NULL,NULL,NULL,6,-1,2,NULL);

/*Table structure for table `timesheets_approve` */

DROP TABLE IF EXISTS `timesheets_approve`;

CREATE TABLE `timesheets_approve` (
  `approve_id` int(1) NOT NULL AUTO_INCREMENT,
  `timesheets_id` int(1) NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hours` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `expenses` double(10,2) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '-1',
  `user_id` int(1) NOT NULL,
  `save_date` date DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`approve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `timesheets_approve` */

/*Table structure for table `user_position` */

DROP TABLE IF EXISTS `user_position`;

CREATE TABLE `user_position` (
  `user_id` int(11) NOT NULL,
  `longitude` double NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_position` */

insert  into `user_position`(`user_id`,`longitude`,`latitude`) values (4,116.34535,39.345345),(5,115.67757,39.9676),(6,115.9967,39.42342);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci,
  `owner` int(1) NOT NULL DEFAULT '-1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_id` int(10) DEFAULT '0',
  `device_id` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`fullname`,`company`,`password`,`remember_token`,`api_token`,`owner`,`created_at`,`updated_at`,`team_id`,`device_id`) values (2,'Free lancer','admin@me.com',NULL,'Golden Age','$2y$10$5UOWTl/boolUWGvbB/U9QuP3UyTz8sw3hX9qvyxIFsYkPF62HGLfW','9GELjLLfWlNFx8JEgswgAZo1DmJkD2CP9RIgITQU0eVa37irwLDpjcsS8u6h','ZZGJt60dM8TEM1XKNggJFOqkL8wKTcaIquqsdYVFz6JAmRsUVHcT5Bwde2y8aYRk',-1,'2018-03-07 09:02:35','2018-03-15 07:03:21',2,'\"undefined\"'),(3,'limited worker','limitedworker@me.com',NULL,'golden age','$2y$10$AMvvpKyCMxB37UtYYON3Sux2rkaDLkN3X6twoQEDXdOJ.D.4HQFFe','iJZpxoqIeUNSPX8eWTSc1oSRNvsSv5BJ7d46fFkat5JGPGpGdIBobMpkWgbp','KQGktZyL5ZI3jcFhmtn2W8hri1o38w9ZGqwQD7ZHfpw9cFAjJJ8KyWFyT88ltFZd',-1,'2018-03-09 09:21:42','2018-03-09 10:09:29',4,NULL),(4,'worker','worker@me.com',NULL,'golden age','$2y$10$i434aFqYWoFsTjktHLm40eI/l2tP/VlZ9v1OwYa8ojfivEWfkXgKu','lxb8WWI7IogGMUlZWgMh244qKb8go24hPczdGacHT0bLdC62gLj5ZAhWPtdB','1sZLYPeCx7Secp9tUjNF9T1FULxOC1zXgfPqjyx4Kvqe0dGM5i41rNLO3lwvn1xW',-1,'2018-03-09 09:22:08','2018-03-09 10:08:33',5,NULL),(5,'dispatcher','dispatcher@me.com',NULL,'golden age','$2y$10$jWWdCY7v3pcP/lyxP4.0MuRNnAxYwpMQKH3/tWmuq/FBf2yRH.oSG','JR4En6Z1Ahx1ulDxIJsJ05dPaVUOK3FWqCM9JeXFhH9xShgsbknnIhrAvwls','uoeJGCj0gdcDXwnHYnNO28V3mDK1FdINbIOZBuvGboLuBK2u6ojgoH3VHue3K7jL',-1,'2018-03-09 09:22:29','2018-03-09 10:18:13',6,NULL),(6,'mamager','manager@me.com',NULL,'golden age','$2y$10$Fvey90jLJkymddF61E2C/.rZqIdMpPtKSwGK0lmK5SoIgXONbRx0C','2SPDPMnGKNCKykgizbtZh0llZ5Pr1FeJEoa44sCYm1WLYCl7JiXnDFLZBuw6','SAFvM1EoP7FD86xbiHDvo8LA26jSjP5lN2rtCXeeliN44gYZoB6qqv2mJH7fqqc5',-1,'2018-03-09 09:22:48','2018-03-09 09:25:43',7,NULL),(7,'d','d',NULL,'d','$2y$10$/omExp2Gw7QpgHaqiLjMaOGCLFJjtuYcEvhJnQi1iMaZbH7An8mKO',NULL,NULL,1,'2018-03-14 17:11:53','2018-03-14 17:11:53',0,NULL),(8,'d','d@me.com',NULL,'d','$2y$10$lYCzdTvi0oiBQpMfApWlhOYfgjDdL6OPTDeHV/8tVgKZPoa8vK8vm',NULL,NULL,1,'2018-03-14 17:12:11','2018-03-14 17:12:11',0,NULL),(9,'d','dasdfasdfasdf@me.com',NULL,'d','$2y$10$HU7T0jingguNyIJZmRh.buUYkObHiQW/Kq95qps4P8nLpw7MnsTD2',NULL,NULL,1,'2018-03-14 17:13:51','2018-03-14 17:13:51',0,NULL),(10,'a','a',NULL,'a','$2y$10$NHydzR.XXrzDvQbA8YakC.uQgLsV5SrLy/w0SIq0aGak.prKKt0t2',NULL,NULL,1,'2018-03-14 17:17:51','2018-03-14 17:17:51',0,NULL),(11,'as','s',NULL,'s','$2y$10$M7s5n.9RyCvS3iUifvqcP.q6zpKsRWJ5pgQu.4BumW75fJITedsO2',NULL,NULL,1,'2018-03-14 17:24:22','2018-03-14 17:24:22',0,NULL),(12,'D','DSDFSDF',NULL,'D','$2y$10$g5NtGUquKBBCPc1/0JZpze2fev9qCt2mNcDKaAryT6k9DxK1aTspy',NULL,NULL,1,'2018-03-14 17:42:23','2018-03-14 17:42:23',0,NULL),(13,'d','dasddddfasdfasdf@me.com',NULL,'d','$2y$10$imc/WChY8H0GyZxzjM1JMu.cJAhcltqDk/EB9nscfzu4u6ocmu95u',NULL,NULL,1,'2018-03-14 17:51:41','2018-03-14 17:51:41',0,NULL),(14,'sdf','asdfasdfasdf@me.coma',NULL,'asdf','$2y$10$Q5qChouViEGNXJr7wwkFN.fyK03AcrDha/f.aJsOzkMfxK6cY/Sza',NULL,NULL,1,'2018-03-14 17:53:46','2018-03-14 17:53:46',0,NULL),(15,'asdf','222@me.com',NULL,'asdfasda','$2y$10$C.gr5lXl/Q2gfNk/a0I1o.M8kO37faQrgMxLLFXqzgD.8C7wVGyFi',NULL,NULL,1,'2018-03-14 17:56:07','2018-03-14 17:56:07',0,NULL),(16,'efasd','asfefasdf@me.com',NULL,'zxcvzxcvzxcv','$2y$10$TYasSI0/XSokhfKo4IZo9e5ySqzUHjnRoSSm6wHDGHRrmIITDFU0S',NULL,NULL,1,'2018-03-14 17:58:31','2018-03-14 17:58:31',0,NULL),(17,'asdfasdfasdf','afeafe@asdf.com',NULL,'asdfasdfasdf','$2y$10$CxKaCeLdsEDXUlMJ7DnvcepwR6VzqueW0dBLWqk3y0NTmVMzNHXXi',NULL,NULL,1,'2018-03-14 17:59:28','2018-03-14 17:59:28',0,NULL),(18,'eee','eee@me.com',NULL,'eee','$2y$10$npI0avWL.jJu3uq/QfS/eOsrTBcQmRz.4GM0ULqGUd8fmJ3C3NnLq',NULL,'rques3b2zxmSS6PIYsW1WPxLoWYqpZ6WAIeN1keYiysVwBICicnxGyhDjoLofVGL',1,'2018-03-14 18:01:30','2018-03-14 18:01:30',0,NULL),(19,'fff','fff@me.com',NULL,'fff','$2y$10$YNDOTqr9KYxgo5ktIgs8neREjsCnp99geJzQHnC84aKuuWPEjDeBK',NULL,'TRZnuRMLPgWYwLOsEAebOsxD7BBL9IK3Z2Osfh9s0FC1SUwCVdKcLkBgurXKGi99',1,'2018-03-14 18:02:21','2018-03-14 18:02:21',0,NULL),(20,'101010','101010',NULL,'101010','$2y$10$ZJpW5WLPjoweNzoMjkLAU.DBCwkSe6FA2PZ6.W5X0aJVfjTgbV5Be',NULL,'dutZfOPCCgSxr1uIiPZBhUea0YzTxePJtpmbVI0btT6cd9veKcyJ9f6E22tuuNxc',1,'2018-03-14 18:32:23','2018-03-14 18:32:23',0,NULL),(21,'asdfasdfasdf','asdf@me.com',NULL,'asdfasdfasdfa','$2y$10$9R6J14vHlczIeFpaWDGfRuTMM/SBxpPo6eaRAC2mkFNKURcfN/gUa',NULL,'bdaj7qIDp2jpS1AmQRCHcvZ8fqOTRAFImtFMC2nQWLU6cCQhJ3iBn3QMt5A1S674',1,'2018-03-14 18:34:29','2018-03-14 18:34:29',0,NULL),(22,'444','444@me.com',NULL,'444','$2y$10$Ql0SE.waOhXFqNQB6cB52.pKbzZzUiKWI6.1QPbzxOGJFX5gtvcCK',NULL,'cLDywRxLblwp1dbenUAr6qkKwdwovgL4o1710tdXI475lNr9f6glgZboKTiwxNdr',1,'2018-03-15 06:51:23','2018-03-15 06:51:24',0,NULL),(23,'555 555','555@me.com',NULL,'555','$2y$10$VshEpBQ3xbzQ5yjPs9odbOR4RbRrJQXjTSu1x419TUUJpkoofD1DW',NULL,'X9ZnSXf2CF5E3f4Wvbj7PppUlqswVb2FTaeA7kFZU9q58A5C87KMKI1ijQYoHseM',1,'2018-03-15 06:56:06','2018-03-15 06:56:06',0,NULL),(24,'d','dasddddfa000sdfasdf@me.com',NULL,'d','$2y$10$X947wz/RVKeuMep1BzZIX.A3XHkFDy/ovl5flcMAQG9tGdTMdkwcS',NULL,'d3RGJzsOzu8pANta8Wyj2T0yF7S8PBNLUNREIGDwBIeAqSeAwDKIIWmHoi9LmDKC',1,'2018-03-15 06:57:31','2018-03-15 06:57:31',0,'0'),(25,'d','dasddddfa000000sdfasdf@me.com',NULL,'d','$2y$10$GiCg6rsQNhky45tu6iLJve3VvzZ8g9qqgOQ.QATHPj8tg/TqoC9y2',NULL,'Yreu4Ga60PGEDQmSgciZLS5IukOgfw4mpWYdOx5yNNwAdGS3oEe9cGbBXfPDwiMX',1,'2018-03-15 06:58:01','2018-03-15 06:58:01',0,'0'),(26,'d','dasddddfa0000000sdfasdf@me.com',NULL,'d','$2y$10$O5HyW2MhxIrpfYZznf3cwetn85f1iFzjCd4EgVGcAuynrvdJ.5NKS',NULL,'ek5NVhnSXEKoaoL5TYxbZmFmN1eSaWQrpAAgpT34unk5uY11Mad5aUw01G10btiN',1,'2018-03-15 06:58:33','2018-03-15 06:58:33',0,'0'),(27,'666 666','666@me.com',NULL,'666','$2y$10$sWo8lr1KW8STFlRnWAzvvewPDm2FXVWMlvABp1AnKuKa0JRiml67i',NULL,'fSy2kIdZJXXojzlXq1vVTh0Z4PWnOCVOr82vOkScgGx5E9BSidbP4QRCiuJvP9na',1,'2018-03-15 07:32:00','2018-03-15 07:32:00',0,NULL),(28,'d','dasddddfa0000000000sdfasdf@me.com',NULL,'d','$2y$10$3u7kbLfpRKNHUoGkFYvppen2yEUdFLh3tAAAc6Kt162hm8fd2khQ2',NULL,'0gURFPVhahvDlCfGyhfBCg58T2SvdxcpWha4UblesLQ4qWflbeFgxzHwRrpnZOpv',1,'2018-03-15 07:32:17','2018-03-15 07:32:17',0,'0'),(29,'d','dasddddfa0000000000ddsdfasdf@me.com',NULL,'d','$2y$10$xpmp.nlaN6FcXd5yEGFJrOZqztCKatrS1Qmn0Jw6161Aga9/Naf9G',NULL,'g9Mawq8376yoT9DTb3tNQKFNdJj78YYuXUM8vxiK9kEzIfpjyKFcwO1VVTAKEZVm',1,'2018-03-15 07:32:47','2018-03-15 07:32:47',0,'0'),(30,'d','dasddddfa0000000000dssdsdfasdf@me.com',NULL,'d','$2y$10$7enGK1Fy7bS6bOZ2809gqOxdSmJzIWNXSAUlPKfo7zqgADbJkuez2',NULL,'1x9YSxQkyq6DVcxCjjdtzJKW1WefxTf5s3THBpLMlpWzv23MrL9DZxRQvQgCOEWH',1,'2018-03-15 07:33:16','2018-03-15 07:33:16',0,'0'),(31,'d','dasddddfa000000dssdsdfasdf@me.com',NULL,'d','$2y$10$Ue77IPTVBnm7AoySYel5be/2.bMqsnTjMSqRjlci4fpErNfCvcmr.',NULL,'gq0hI936vgansKWPW4sFNdlBlDFRsj1bsGvKdLIj2ZK4NkcKPg9zYLcfzirZtPtx',1,'2018-03-15 07:34:14','2018-03-15 07:34:15',0,'0'),(32,'d','dasddddfa00000-0dssdsdfasdf@me.com',NULL,'d','$2y$10$COueTPCxYzNC9y6ijxTGaeVrO6D7SHJcrLjgJLglysDUWppMkrweu',NULL,'1Pn64fLoWAIDvNPx4lclwcqLaQAZSeiLYPCjjCble334A8QdHhD0rv198f7RDvuS',1,'2018-03-15 07:34:36','2018-03-15 07:34:36',0,'0'),(33,'d','dasddddfa00000--0dssdsdfasdf@me.com',NULL,'d','$2y$10$3fLwkhtzUW4R06GcSpicq.Ot7/aqqlJyZ.I1ZRsVspuh6hvER1sXK',NULL,'hIfpVRYaTpLn2leLH6rxKG0pux1CME3RYtenUY8SVDRzRqZb5NCWpJmycHieiF0I',1,'2018-03-15 07:36:28','2018-03-15 07:36:28',0,'0'),(34,'d','dasddddfa00000---0dssdsdfasdf@me.com',NULL,'d','$2y$10$mGUtiLdlczF/ZSIef6D3RuHf5VJfMnLmFupdj5rr0RnDO6HGnk/8e',NULL,'26BdgYGrkJjD4n7tQmbdtF5ziKWJczkstBlW0PBT7IazEdDEYO7nTtcsMEY7sl24',1,'2018-03-15 07:36:56','2018-03-15 07:36:57',0,'0'),(35,'d','dasddddfa00000----0dssdsdfasdf@me.com',NULL,'d','$2y$10$TQ5sNgTTP553DUTlfOt5NuHzuNV7QyI5IAd.NKk4fUXXHFibMuSKq',NULL,'iZtw7zTehznnCVwHt8qpG9FdCrnm6Z6yufYZBbyqOiX4WvMClk6jRHwRQ69u7vyU',1,'2018-03-15 07:37:17','2018-03-15 07:37:17',0,'0'),(36,'d','dasddddfa00000-----0dssdsdfasdf@me.com',NULL,'d','$2y$10$kyNKT6gpjrf/MOkvhI39peXUAb6WkYog2oO8uSLLN3owY2FLEFipy',NULL,'3nQltGBvITVCEYppBoa5p8LnrEiuwUn8Zn5yH31s0mg3Jjq5elBKlrmLp3Pmhbzf',1,'2018-03-15 07:39:43','2018-03-15 07:39:43',37,'0');

/*Table structure for table `visits` */

DROP TABLE IF EXISTS `visits`;

CREATE TABLE `visits` (
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `member_id` text,
  `title` text,
  `details` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `visit_reminder` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `completed_by` int(11) DEFAULT NULL,
  `completed_on` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `anytime` int(1) DEFAULT '-1',
  PRIMARY KEY (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

/*Data for the table `visits` */

insert  into `visits`(`visit_id`,`job_id`,`member_id`,`title`,`details`,`start_date`,`end_date`,`start_time`,`end_time`,`visit_reminder`,`status`,`completed_by`,`completed_on`,`created_at`,`updated_at`,`anytime`) values (52,40,NULL,'John Maker - Water Damage (accidental discharge or overflow) due to all other water damage loss',NULL,'2018-03-14','2018-03-14','10:00:00','12:00:00',0,1,NULL,NULL,'2018-03-14 19:31:10','2018-03-14 19:31:10',-1),(53,40,NULL,'John Maker - Water Damage (accidental discharge or overflow) due to all other water damage loss',NULL,'2018-03-15','2018-03-15','10:00:00','12:00:00',0,1,NULL,NULL,'2018-03-14 19:31:10','2018-03-14 19:31:10',-1),(54,44,'2,6,4,2','','All other Losses (including Vandalism and Malicious Mischief)','2018-03-14','2018-03-14','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 19:44:28','2018-03-14 19:44:28',-1),(55,44,'2,6,4,2','','All other Losses (including Vandalism and Malicious Mischief)','2018-03-15','2018-03-15','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 19:44:28','2018-03-14 19:44:28',-1),(56,56,'','','Accidental Death','2018-03-14','2018-03-14','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 23:30:52','2018-03-15 01:11:00',-1),(57,56,'','','Accidental Death','2018-03-21','2018-03-21','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 23:30:53','2018-03-14 23:30:53',-1),(58,56,'','','Accidental Death','2018-03-28','2018-03-28','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 23:30:53','2018-03-14 23:30:53',-1),(59,57,'','','Air conditioner Leak','2018-03-06','2018-03-06','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 23:35:00','2018-03-14 23:35:00',-1),(60,57,'','','Air conditioner Leak','2018-03-13','2018-03-13','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 23:35:00','2018-03-14 23:35:00',-1),(61,57,'','','Air conditioner Leak','2018-03-20','2018-03-20','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-14 23:35:00','2018-03-14 23:35:00',-1),(62,60,'','','Accidental Death','2018-03-13','2018-03-13','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:10:00','2018-03-15 00:10:00',-1),(63,60,'','','Accidental Death','2018-03-20','2018-03-20','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:10:00','2018-03-15 00:10:00',-1),(64,61,'','','Accidental Death','2018-03-13','2018-03-13','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:10:27','2018-03-15 00:10:27',-1),(65,61,'','','Accidental Death','2018-03-21','2018-03-21','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:10:27','2018-03-15 00:10:27',-1),(66,61,'','','Accidental Death','2018-03-22','2018-03-22','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:10:27','2018-03-15 00:10:27',-1),(67,63,'','','Accidental Death','2018-03-06','2018-03-06','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:19','2018-03-15 00:14:19',-1),(68,63,'','','Accidental Death','2018-03-12','2018-03-12','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:19','2018-03-15 00:14:19',-1),(69,63,'','','Accidental Death','2018-03-13','2018-03-13','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:19','2018-03-15 00:14:19',-1),(70,63,'','','Accidental Death','2018-03-14','2018-03-14','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:20','2018-03-15 00:14:20',-1),(71,63,'','','Accidental Death','2018-03-19','2018-03-19','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:20','2018-03-15 00:14:20',-1),(72,63,'','','Accidental Death','2018-03-26','2018-03-26','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:20','2018-03-15 00:14:20',-1),(73,64,'4,2','','Accidental Death','2018-03-06','2018-03-06','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:54','2018-03-15 00:14:54',-1),(74,64,'4,2','','Accidental Death','2018-03-12','2018-03-12','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:54','2018-03-15 00:14:54',-1),(75,64,'4,2','','Accidental Death','2018-03-13','2018-03-13','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:54','2018-03-15 01:11:35',-1),(76,64,'4,2','','Accidental Death','2018-03-14','2018-03-14','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:54','2018-03-15 00:14:54',-1),(77,64,'4,2','','Accidental Death','2018-03-19','2018-03-19','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:54','2018-03-15 00:14:54',-1),(78,64,'4,2','','Accidental Death','2018-03-26','2018-03-26','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:14:54','2018-03-15 00:14:54',-1),(79,66,'2,4,7','','Accidental Death','2018-03-13','2018-03-13','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:23:55','2018-03-15 00:23:55',-1),(80,66,'2,4,7','','Accidental Death','2018-03-14','2018-03-14','15:00:00','15:30:00',NULL,1,NULL,NULL,'2018-03-15 00:23:55','2018-03-15 00:23:55',-1),(81,68,'5','John Maker - Accidental Death',NULL,'2018-03-14','2018-03-14','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-14 22:48:22','2018-03-14 22:48:22',-1),(82,69,'5','John Maker - Accidental Death',NULL,'2018-03-14','2018-03-14','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-14 22:49:41','2018-03-14 22:49:41',-1),(83,70,NULL,'John Maker - Accidental Death',NULL,'2018-03-14','2018-03-14','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-14 22:50:17','2018-03-14 22:50:17',-1),(93,72,'4,5','John Maker - Description',NULL,'2018-03-16','2018-03-16','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-16 19:24:04','2018-03-16 19:24:04',-1),(94,71,'4,5,6','John Maker - Description',NULL,'2018-03-20','2018-03-20','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-20 20:29:46','2018-03-20 20:29:46',-1),(95,71,'4,5,6','John Maker - Description',NULL,'2018-03-21','2018-03-21','00:00:00','00:00:00',0,1,NULL,NULL,'2018-03-20 20:29:46','2018-03-31 17:05:00',-1),(96,71,'4,5','John Maker - Description',NULL,'2018-03-22','2018-03-22','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-20 20:29:46','2018-03-20 20:29:46',-1),(97,73,'4,5,6','John Maker - Description',NULL,'2018-03-29','2018-03-29','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(98,73,'4,5,6','John Maker - Description',NULL,'2018-03-30','2018-03-30','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(99,73,'4,5,6','John Maker - Description',NULL,'2018-03-31','2018-03-31','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(100,73,'4,5,6','John Maker - Description',NULL,'2018-04-01','2018-04-01','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(101,73,'4,5,6','John Maker - Description',NULL,'2018-04-02','2018-04-02','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(102,73,'4,5,6','John Maker - Description',NULL,'2018-04-03','2018-04-03','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(103,73,'4,5,6','John Maker - Description',NULL,'2018-04-04','2018-04-04','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(104,73,'4,5,6','John Maker - Description',NULL,'2018-04-05','2018-04-05','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(105,73,'4,5,6','John Maker - Description',NULL,'2018-04-06','2018-04-06','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:34:19','2018-03-30 14:34:19',-1),(106,74,NULL,'John Maker - Description',NULL,'2018-03-29','2018-03-29','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:44:09','2018-03-30 14:44:09',-1),(107,74,NULL,'John Maker - Description',NULL,'2018-03-30','2018-03-30','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:44:09','2018-03-30 14:44:09',-1),(108,74,NULL,'John Maker - Description',NULL,'2018-03-31','2018-03-31','00:00:00','24:00:00',0,1,NULL,NULL,'2018-03-30 14:44:09','2018-03-30 14:44:09',-1);

/*Table structure for table `visits_services` */

DROP TABLE IF EXISTS `visits_services`;

CREATE TABLE `visits_services` (
  `visit_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `visit_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `service_name` text,
  `service_description` text,
  `quantity` int(11) DEFAULT NULL,
  `cost` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`visit_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

/*Data for the table `visits_services` */

insert  into `visits_services`(`visit_service_id`,`visit_id`,`service_id`,`service_name`,`service_description`,`quantity`,`cost`) values (39,52,NULL,NULL,NULL,1,0.00),(40,53,NULL,NULL,NULL,1,0.00),(41,54,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',0,100.00),(42,55,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',0,100.00),(43,56,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(44,56,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(45,57,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(46,57,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(47,58,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(48,58,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(49,59,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(50,59,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(51,60,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(52,60,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(53,61,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(54,61,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(55,62,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00),(56,63,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00),(57,64,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00),(58,65,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00),(59,66,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00),(60,67,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(61,68,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(62,69,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(63,70,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(64,71,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(65,72,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(66,73,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(67,74,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(68,75,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(69,76,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(70,77,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(71,78,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',10,200.00),(72,79,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00),(73,80,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',10,100.00),(74,81,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(75,82,2,'Service 2','Service 2Service 2Service 2Service 2Service 2',1,200.00),(76,83,NULL,'Service 2',NULL,1,200.00),(86,93,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(87,94,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(88,95,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(89,96,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(90,97,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(91,98,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(92,99,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(93,100,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(94,101,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(95,102,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(96,103,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(97,104,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(98,105,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(99,106,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(100,107,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00),(101,108,1,'Service 1','Service 1Service 1Service 1Service 1Service 1Service 1',1,100.00);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
