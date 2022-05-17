ALTER TABLE `it_marketplace`.`developers` 
ADD COLUMN `salary` INT NULL AFTER `last_name`;

UPDATE `it_marketplace`.`developers` SET `salary` = '5500' WHERE (`id` = '1');
UPDATE `it_marketplace`.`developers` SET `salary` = '5500' WHERE (`id` = '2');
UPDATE `it_marketplace`.`developers` SET `salary` = '1500' WHERE (`id` = '3');
UPDATE `it_marketplace`.`developers` SET `salary` = '7000' WHERE (`id` = '4');
UPDATE `it_marketplace`.`developers` SET `salary` = '4000' WHERE (`id` = '5');
UPDATE `it_marketplace`.`developers` SET `salary` = '3500' WHERE (`id` = '6');
UPDATE `it_marketplace`.`developers` SET `salary` = '7000' WHERE (`id` = '7');
UPDATE `it_marketplace`.`developers` SET `salary` = '1000' WHERE (`id` = '8');
