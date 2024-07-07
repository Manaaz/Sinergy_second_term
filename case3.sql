CREATE DATABASE  IF NOT EXISTS `tourizm` 
USE `tourizm`;

DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `destinations`;
CREATE TABLE `destinations` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `country` int DEFAULT NULL,
  `region` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_idx` (`country`),
  KEY `region_idx` (`region`),
  CONSTRAINT `country` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `region` FOREIGN KEY (`region`) REFERENCES `regions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` longtext,
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL,
  `client` int DEFAULT NULL,
  `service` int DEFAULT NULL,
  `destination` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `date_order` datetime DEFAULT NULL,
  `person_count` int DEFAULT '1',
  `cost` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_idx` (`client`),
  KEY `service_idx` (`service`),
  KEY `destination_idx` (`destination`),
  CONSTRAINT `client` FOREIGN KEY (`client`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `destination` FOREIGN KEY (`destination`) REFERENCES `destinations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `service` FOREIGN KEY (`service`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

