SELECT 
	`Graduants`.`first_name`,
	`Graduants`.`last_name`,
	`Faculty`.`name`
FROM `Graduants` INNER JOIN `Faculty`
	ON `Graduants`.`faculty_id` = `Faculty`.`faculty_id`;
	