/*
SQLyog Trial v12.2.6 (32 bit)
MySQL - 10.4.27-MariaDB : Database - poly_cinema
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`poly_cinema` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;

USE `poly_cinema`;

/*Table structure for table `administrator` */

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `emplyee_name` varchar(255) DEFAULT NULL,
  `employee_email` varchar(255) DEFAULT NULL,
  `employee_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `administrator` */

insert  into `administrator`(`id`,`emplyee_name`,`employee_email`,`employee_password`) values 
(1,'aaa','aaa','aaa'),
(2,'aaa','aaa','aaa'),
(3,'1111','1111','1111');

/*Table structure for table `cinemas` */

DROP TABLE IF EXISTS `cinemas`;

CREATE TABLE `cinemas` (
  `cinema_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cinema_location` varchar(255) DEFAULT NULL,
  `screen_number` int(255) DEFAULT NULL,
  `cinema_type` varchar(255) DEFAULT NULL,
  `View movie` varchar(255) DEFAULT NULL,
  `Delete movie` varchar(255) DEFAULT NULL,
  `Update movie` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cinema_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `cinemas` */

insert  into `cinemas`(`cinema_id`,`cinema_location`,`screen_number`,`cinema_type`,`View movie`,`Delete movie`,`Update movie`) values 
(1,'wef',23,'23',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
