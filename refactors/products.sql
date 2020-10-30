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