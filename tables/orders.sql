CREATE TABLE `black-food-db`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productId` INT NOT NULL,
  `orderTypeId` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `order_order_type_fk_idx` (`orderTypeId` ASC) VISIBLE,
  INDEX `order_product_fk_idx` (`productId` ASC) VISIBLE,
  CONSTRAINT `order_order_type_fk`
    FOREIGN KEY (`orderTypeId`)
    REFERENCES `black-food-db`.`order_types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `order_product_fk`
    FOREIGN KEY (`productId`)
    REFERENCES `black-food-db`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
