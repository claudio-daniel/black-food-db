CREATE TABLE `black-food-db`.`clients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NULL,
  `adress` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));