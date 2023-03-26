DROP VIEW IF EXISTS `graduants_faculty_results`;
CREATE VIEW `graduants_faculty_results`
AS
SELECT 
	`graduants_faculty`.`first_name`,
	`graduants_faculty`.`last_name`,
	`graduants_faculty`.`name`,
	`exams_results`.`average_score`,
	`exams_results`.`status`
FROM `graduants_faculty` INNER JOIN `exams_results`
	ON `graduants_faculty`.`graduants_id` = `exams_results`.`graduants_id`;
	
SELECT * FROM `graduants_faculty_results`;