CREATE TABLE `guest`
(
    `guest_id`        int(11) NOT NULL AUTO_INCREMENT,
    `name`            varchar(50)  DEFAULT NULL,
    `name_kana`       varchar(50)  DEFAULT NULL,
    `gender`          int(2)       DEFAULT NULL,
    `birth_date`      date         DEFAULT NULL,
    `age`             int(2)       DEFAULT NULL,
    `phone_number`    varchar(40)  DEFAULT NULL,
    `guest_email`     varchar(50)  DEFAULT NULL,
    `postal_code`     varchar(10)  DEFAULT NULL,
    `home_address`    varchar(50)  DEFAULT NULL,
    `create_date`     datetime     DEFAULT current_timestamp(),
    `update_date`     datetime     DEFAULT NULL ON UPDATE current_timestamp(),
    `face_id_azure`   varchar(100) DEFAULT NULL,
    `face_image_path` varchar(100) DEFAULT NULL,
    `stay_count`      int(11)      DEFAULT 0,
    `delete_flag`     tinyint(4)   DEFAULT 0,
    PRIMARY KEY (`guest_id`),
    CONSTRAINT `gender_fk` FOREIGN KEY (`gender`) REFERENCES `gender_master` (`gender_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8;
