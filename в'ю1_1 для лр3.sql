DROP VIEW IF EXISTS `graduants_faculty`;
CREATE VIEW `graduants_faculty`
AS
SELECT 
	`Graduants`.`graduants_id`,
	`Graduants`.`first_name`,
	`Graduants`.`last_name`,
	`Faculty`.`name`
FROM `Graduants` INNER JOIN `Faculty`
	ON `Graduants`.`faculty_id` = `Faculty`.`faculty_id`;
	
SELECT * FROM `graduants_faculty`;