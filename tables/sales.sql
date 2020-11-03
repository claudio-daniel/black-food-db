CREATE TABLE `black-food-db`.`sales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `cash_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `client_id` INT NOT NULL,
  `payment_type_id` INT NOT NULL,
  `date` DATE NOT NULL,
  `payment_value` DOUBLE NOT NULL,
  `returned_value` DOUBLE NOT NULL,
  `total` DOUBLE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `sale_chash_fk_idx` (`cash_id` ASC) VISIBLE,
  INDEX `sale_order_fk_idx` (`order_id` ASC) VISIBLE,
  INDEX `sale_client_fk_idx` (`client_id` ASC) VISIBLE,
  INDEX `sale_payment_type_fk_idx` (`payment_type_id` ASC) VISIBLE,
  CONSTRAINT `sale_chash_fk`
    FOREIGN KEY (`cash_id`)
    REFERENCES `black-food-db`.`cash` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sale_order_fk`
    FOREIGN KEY (`order_id`)
    REFERENCES `black-food-db`.`orders` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sale_client_fk`
    FOREIGN KEY (`client_id`)
    REFERENCES `black-food-db`.`clients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `sale_payment_type_fk`
    FOREIGN KEY (`payment_type_id`)
    REFERENCES `black-food-db`.`payment_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
