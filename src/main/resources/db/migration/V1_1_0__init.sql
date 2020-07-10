CREATE TABLE IF NOT EXISTS `room` (
                                      `room_id` int NOT NULL AUTO_INCREMENT,
                                      `room_building` varchar(45) NOT NULL,
                                      `room_number` char(3) NOT NULL,
                                      `room_size` int DEFAULT NULL,
                                      PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
