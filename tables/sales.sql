CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cash_id` int NOT NULL,
  `order_id` int NOT NULL,
  `client_id` int NOT NULL,
  `payment_type_id` int NOT NULL,
  `date` date NOT NULL,
  `payment_value` double NOT NULL,
  `returned_value` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_chash_fk_idx` (`cash_id`),
  KEY `sale_order_fk_idx` (`order_id`),
  KEY `sale_client_fk_idx` (`client_id`),
  KEY `sale_payment_type_fk_idx` (`payment_type_id`),
  CONSTRAINT `sale_chash_fk` FOREIGN KEY (`cash_id`) REFERENCES `cashes` (`id`),
  CONSTRAINT `sale_client_fk` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `sale_order_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `sale_payment_type_fk` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`)
)