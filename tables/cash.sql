CREATE TABLE `cashes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `turn_id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_money` double NOT NULL,
  `end_money` double NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
)
