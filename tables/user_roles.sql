CREATE TABLE `black-food-db`.`users_roles` (
  `user_id` INT NOT NULL,
  `rol_id` INT NOT NULL,
  PRIMARY KEY (`user_id`, `rol_id`),
  INDEX `user_role_role_fk_idx` (`rol_id` ASC) VISIBLE,
  CONSTRAINT `user_role_user_fk`
    FOREIGN KEY (`user_id`)
    REFERENCES `black-food-db`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `user_role_role_fk`
    FOREIGN KEY (`rol_id`)
    REFERENCES `black-food-db`.`roles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
