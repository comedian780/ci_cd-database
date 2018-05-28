CREATE DATABASE parcel;
USE parcel;

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


LOCK TABLES `sizes` WRITE;
INSERT INTO `sizes` VALUES (1,'XS',0,35),(2,'S',35,50),(3,'M',50,65),(4,'L',65,80),(5,'XL',80,300);
UNLOCK TABLES;

GRANT SELECT ON `parcel`.* TO 'parcel'@'%' IDENTIFIED BY 'parcelpassword';
FLUSH PRIVILEGES;
