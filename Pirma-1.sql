-- 1.
CREATE TABLE `sportas`.`new_table` (
  `idnew_table` INT NOT NULL,
  `new_tablecol` VARCHAR(45) NOT NULL,
  `new_tablecol1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idnew_table`, `new_tablecol`, `new_tablecol1`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

-- 2.
ALTER TABLE `sportas`.`new_table` 
DROP COLUMN `new_tablecol1`,
DROP COLUMN `new_tablecol`,
CHANGE COLUMN `idnew_table` `id` INT(11) NOT NULL AUTO_INCREMENT ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);
;

-- 3.
ALTER TABLE `sportas`.`new_table` 
RENAME TO  `sportas`.`scooter` ;

-- 4.
ALTER TABLE `sportas`.`scooter` 
ADD COLUMN `registration_code` CHAR(8) NOT NULL AFTER `id`,
ADD COLUMN `is_busy` TINYINT(1) NOT NULL AFTER `registration_code`,
ADD COLUMN `last_use_time` DATE NOT NULL AFTER `is_busy`,
ADD COLUMN `total_ride_kilometres` DECIMAL(6,2) NOT NULL AFTER `last_use_time`;

-- 5.
INSERT INTO `sportas`.`scooter` (`id`, `registration_code`, `is_busy`, `last_use_time`, `total_ride_kilometres`) VALUES ('1', '4654646', '32', '2021-10-13 6:20', '230');

-- 6.
INSERT INTO `sportas`.`scooter` (`registration_code`, `is_busy`, `last_use_time`, `total_ride_kilometres`) VALUES ('5776986', '86', '2021-11-13', '200');

-- 7.
INSERT INTO `sportas`.`scooter` (`registration_code`, `is_busy`, `last_use_time`, `total_ride_kilometres`) VALUES ('7766899', '23', '2021-10-11', '160');