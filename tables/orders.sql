CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_order_type_fk_idx` (`order_type_id`),
  CONSTRAINT `order_order_type_fk` FOREIGN KEY (`order_type_id`) REFERENCES `order_types` (`id`)
)