CREATE DATABASE chat;

USE chat;

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Message'
-- 
-- ---

DROP TABLE IF EXISTS `message`;
    
CREATE TABLE `message` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `text` VARCHAR(100) NULL DEFAULT NULL,
  `id_user` TINYINT NULL DEFAULT NULL,
  `id_room` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'User'
-- 
-- ---

DROP TABLE IF EXISTS `user`;
    
CREATE TABLE `user` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Room'
-- 
-- ---

DROP TABLE IF EXISTS `room`;
    
CREATE TABLE `room` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `message` ADD FOREIGN KEY (id_user) REFERENCES `user` (`id`);
ALTER TABLE `message` ADD FOREIGN KEY (id_room) REFERENCES `room` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Message` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `User` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Room` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Message` (`id`,`text`,`id_user`,`id_room`) VALUES
-- ('','','','');
-- INSERT INTO `User` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `Room` (`id`,`name`) VALUES
-- ('','');



/* You can also create more tables, if you need them... */

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql
 *  to create the database and the tables.*/
