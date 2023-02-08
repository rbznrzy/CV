ALTER TABLE `qa-test-students`.`homeworks` 
ADD COLUMN `important` TINYINT NOT NULL AFTER `score`;
UPDATE `qa-test-students`.`homeworks` SET `important` = '1' WHERE (`idhomeworks` = '1');
UPDATE `qa-test-students`.`homeworks` SET `important` = '1' WHERE (`idhomeworks` = '2');
UPDATE `qa-test-students`.`homeworks` SET `important` = '1' WHERE (`idhomeworks` = '4');
SELECT * FROM `qa-test-students`.homeworks;