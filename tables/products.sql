CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `name` varchar(45) NOT NULL,
  `product_type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_product_type_fk_idx` (`product_type_id`),
  CONSTRAINT `product_product_type_fk` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`)
)
