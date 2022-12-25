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
  `employee_id` int(20) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `administrator` */

insert  into `administrator`(`employee_id`,`employee_name`,`employee_email`,`employee_password`) values 
(1,'56','324','234');

/*Table structure for table `cinemas` */

DROP TABLE IF EXISTS `cinemas`;

CREATE TABLE `cinemas` (
  `cinema_id` int(20) NOT NULL AUTO_INCREMENT,
  `cinema_location` varchar(255) NOT NULL,
  `screen_number` varchar(255) NOT NULL,
  `cinema_type` varchar(255) NOT NULL,
  PRIMARY KEY (`cinema_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `cinemas` */

/*Table structure for table `movies` */

DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `movie_id` int(20) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(255) NOT NULL,
  `director_name` varchar(255) NOT NULL,
  `cast` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `classification_age` varchar(255) NOT NULL,
  `movie_language` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `rate` decimal(10,0) NOT NULL,
  `cinema_id` int(20) NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `cinema_id_forigin` (`cinema_id`),
  CONSTRAINT `cinema_id_forigin` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`cinema_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `movies` */

/*Table structure for table `shows` */

DROP TABLE IF EXISTS `shows`;

CREATE TABLE `shows` (
  `show_id` int(20) NOT NULL AUTO_INCREMENT,
  `show_time` time NOT NULL,
  `show_date` date NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`show_id`),
  KEY `movie_id_forigin` (`movie_id`),
  CONSTRAINT `movie_id_forigin` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

/*Data for the table `shows` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
