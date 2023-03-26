SELECT 
	`faculty`.`faculty_id`,
	`graduants`.`graduants_id`,
	`faculty`.`name`,
	`faculty`.`compulsory_subject`,
	`graduants`.`first_name`,
	`graduants`.`last_name`
FROM `faculty` INNER JOIN `graduants`
	ON `faculty`.`faculty_id` = `graduants`.`faculty_id`;
	