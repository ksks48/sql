SELECT 
	`Teacher`.`first_name`,
	`Teacher`.`last_name`,
	`Teacher`.`subject`,
	`scores`.`score`
FROM `Teacher` INNER JOIN `scores`
	ON `Teacher`.`teacher_id` = `scores`.`teacher_id`;
	