DROP VIEW IF EXISTS `graduants_faculty`;
CREATE VIEW `graduants_faculty`
AS
SELECT 
	`Graduants`.`first_name`,
	`Graduants`.`last_name`,
	`Faculty`.`name`,
	`exams_results`.`average_score`,
	`exams_results`.`status`
FROM `Graduants` INNER JOIN `Faculty`
	ON `Graduants`.`faculty_id` = `Faculty`.`faculty_id` INNER JOIN `exams_results`
	ON `graduants`.`graduants_id` = `exams_results`.`graduants_id`;
	
SELECT * FROM `graduants_faculty`;