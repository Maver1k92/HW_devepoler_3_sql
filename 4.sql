ALTER TABLE `it_marketplace`.`projects` 
ADD COLUMN `cost` INT NULL AFTER `project_description`;

UPDATE `it_marketplace`.`projects` SET `cost` = '100' WHERE (`id` = '1');
UPDATE `it_marketplace`.`projects` SET `cost` = '500' WHERE (`id` = '2');
UPDATE `it_marketplace`.`projects` SET `cost` = '600' WHERE (`id` = '3');
UPDATE `it_marketplace`.`projects` SET `cost` = '1000' WHERE (`id` = '4');
UPDATE `it_marketplace`.`projects` SET `cost` = '200' WHERE (`id` = '5');
UPDATE `it_marketplace`.`projects` SET `cost` = '700' WHERE (`id` = '6');
UPDATE `it_marketplace`.`projects` SET `cost` = '800' WHERE (`id` = '7');
