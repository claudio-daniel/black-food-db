ALTER TABLE `black-food-db`.`products` 
ADD COLUMN `name` INT NOT NULL AFTER `price`;
ADD COLUMN `productTypeId` INT NOT NULL AFTER `name`,
ADD INDEX `product_product_type_fk_idx` (`productTypeId` ASC) VISIBLE;
;
ALTER TABLE `black-food-db`.`products` 
ADD CONSTRAINT `product_product_type_fk`
  FOREIGN KEY (`productTypeId`)
  REFERENCES `black-food-db`.`product_types` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


  ALTER TABLE `black-food-db`.`products` 
DROP FOREIGN KEY `product_product_type_fk`;
ALTER TABLE `black-food-db`.`products` 
CHANGE COLUMN `productTypeId` `product_type_id` INT NOT NULL ;
ALTER TABLE `black-food-db`.`products` 
ADD CONSTRAINT `product_product_type_fk`
  FOREIGN KEY (`product_type_id`)
  REFERENCES `black-food-db`.`product_types` (`id`);