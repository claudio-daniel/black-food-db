CREATE TABLE `black-food-db`.`cash` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `turn_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `start_money` DOUBLE NOT NULL,
  `end_money` DOUBLE NOT NULL,
  PRIMARY KEY (`id`));
