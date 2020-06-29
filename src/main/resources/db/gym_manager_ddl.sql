CREATE TABLE IF NOT EXISTS `room` (
                                      `room_id` int NOT NULL AUTO_INCREMENT,
                                      `room_building` varchar(45) NOT NULL,
                                      `room_number` char(3) NOT NULL,
                                      `room_size` int DEFAULT NULL,
                                      PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `user` (
                                      `user_name` varchar(50) NOT NULL,
                                      `password` varchar(45) NOT NULL,
                                      `first_name` varchar(45) NOT NULL,
                                      `last_name` varchar(45) NOT NULL,
                                      `birth_date` date NOT NULL,
                                      `email` varchar(45) DEFAULT NULL,
                                      `phone_number` varchar(45) NOT NULL,
                                      PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `gym_pass` (
                                          `pass_id` int NOT NULL AUTO_INCREMENT,
                                          `pass_type` varchar(45) NOT NULL,
                                          `remaining_sessions` varchar(45) DEFAULT NULL,
                                          `valid_from` date NOT NULL,
                                          `expiration` date NOT NULL,
                                          `user_name` varchar(45) NOT NULL,
                                          `price` varchar(45) DEFAULT NULL,
                                          `payment_type` varchar(45) DEFAULT NULL,
                                          `payment_date` date DEFAULT NULL,
                                          PRIMARY KEY (`pass_id`),
                                          KEY `user_name_fk_idx` (`user_name`),
                                          CONSTRAINT `user_name_fk` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `workout` (
                                         `workout_id` int NOT NULL AUTO_INCREMENT,
                                         `workout_type` varchar(45) NOT NULL,
                                         `workout_room_id` int NOT NULL,
                                         `workout_date` datetime NOT NULL,
                                         `workout_coach` varchar(45) DEFAULT NULL,
                                         `workout_max_slot` int DEFAULT NULL,
                                         PRIMARY KEY (`workout_id`),
                                         KEY `workout_room_id_idx` (`workout_room_id`),
                                         KEY `workout_coach_fk_idx` (`workout_coach`),
                                         CONSTRAINT `workout_coach_fk` FOREIGN KEY (`workout_coach`) REFERENCES `user` (`user_name`),
                                         CONSTRAINT `workout_room_id_fk` FOREIGN KEY (`workout_room_id`) REFERENCES `room` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `subscription` (
                                              `user_name` varchar(45) NOT NULL,
                                              `workout_id` int NOT NULL,
                                              KEY `worout_id_fk_idx` (`workout_id`),
                                              KEY `user_id_fk_idx` (`user_name`),
                                              CONSTRAINT `user_id_fk` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`),
                                              CONSTRAINT `worout_id_fk` FOREIGN KEY (`workout_id`) REFERENCES `workout` (`workout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;