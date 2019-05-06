drop database if exists ticketing_demo;
create database ticketing_demo;
use ticketing_demo;


-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- ---

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
`id` INT NOT NULL AUTO_INCREMENT,
`uname` VARCHAR(255) NOT NULL,
`pass` VARCHAR(255) NOT NULL,
`fname` VARCHAR(255) NOT NULL,
`lname` VARCHAR(255) NOT NULL,
`qa` BIT DEFAULT 0,
`dev` BIT DEFAULT 0,
PRIMARY KEY (`id`)
);


-- ---
-- Table 'projects'
-- 
-- ---

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
`id` INTEGER NOT NULL AUTO_INCREMENT,
`pname` VARCHAR(255) DEFAULT NULL,
`tl_id` INTEGER NOT NULL,
PRIMARY KEY (`id`)
);

-- ---
-- Table 'tickets'
-- 
-- ---
DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
`id` INTEGER NOT NULL AUTO_iNCREMENT,
`submitted_by` INTEGER NOT NULL,
`project_id` INTEGER NOT  NULL,
`number` VARCHAR(255) NOT NULL ,
`title` VARCHAR(255) NULL,
`category` VARCHAR(255) NOT NULL,
`description` VARCHAR(255) NOT NULL,
`status` VARCHAR(255) NOT NULL,
PRIMARY KEY (`id`)
);

-- ---
-- Table `ticket_seq`
--
-- ---
DROP TABLE IF EXISTS `ticket_seq`;
CREATE TABLE `ticket_seq` (
`project_id` INTEGER NOT NULL,
`ticket_num` INTEGER NOT NULL,
`active` BIT NOT NULL DEFAULT 1
);


-- ---
-- Table `Comments`
--
-- ---
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
`id` INTEGER  NOT NULL auto_increment,
`ticket_id` INTEGER NOT NULL,
`submitted_by` INTEGER NOT NULL,
`comment` TEXT NOT NULL,
primary key(`id`)
);


-- ---
-- Table 'users_projects'
-- 
-- ---

DROP TABLE IF EXISTS `users_projects`;

CREATE TABLE `users_projects` (
`user_id` INTEGER NOT NULL,
`project_id` INTEGER NOT NULL
);

-- ---
-- Table `users_tickets`
--
-- ---

DROP TABLE IF EXISTS `users_tickets`;

CREATE TABLE `users_tickets` (
    `user_id` INTEGER NOT NULL,
    `ticket_id` INTEGER NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    `status` BIT NOT NULL DEFAULT 0
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `users_projects` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
ALTER TABLE `users_projects` ADD FOREIGN KEY (project_id) REFERENCES `projects` (`id`);
ALTER TABLE `users_tickets` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
ALTER TABLE `users_tickets` ADD FOREIGN KEY (ticket_id) REFERENCES `tickets` (`id`);
ALTER TABLE `tickets` ADD FOREIGN KEY (submitted_by) REFERENCES `users` (`id`);
ALTER TABLE `ticket_seq` ADD FOREIGN KEY (project_id) REFERENCES `projects` (`id`);
ALTER TABLE `projects` ADD FOREIGN KEY (tl_id) REFERENCES `users` (`id`);
ALTER TABLE `comments` ADD FOREIGN KEY (ticket_id) REFERENCES `tickets` (`id`);
ALTER TABLE `comments` ADD FOREIGN KEY (submitted_by) REFERENCES `users` (`id`);


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `employees` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `projects` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `employees_projects` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `roles` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `employees` (`id`,`uname`,`pass`,`role_id`) VALUES
-- ('','','','');
-- INSERT INTO `projects` (`id`,`pname`) VALUES
-- ('','');
-- INSERT INTO `employees_projects` (`id`,`employee_id`,`project_id`,`date`,`prod_hours`) VALUES
-- ('','','','','');
-- INSERT INTO `roles` (`id`,`name`) VALUES
-- ('','');