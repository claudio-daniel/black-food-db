--[sale-flux]
ALTER TABLE `black-food-db`.`product_types` 
ADD COLUMN `icon` VARCHAR(24) NOT NULL AFTER `description`;
