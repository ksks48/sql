DROP VIEW IF EXISTS `teacher_scores`;
CREATE VIEW `teacher_scores`
AS
SELECT 
	`Teacher`.`first_name`,
	`Teacher`.`last_name`,
	`Teacher`.`subject`,
	`scores`.`score`
FROM `Teacher` INNER JOIN `scores`
	ON `Teacher`.`teacher_id` = `scores`.`teacher_id`;
	
	
SELECT * FROM `teacher_scores`;