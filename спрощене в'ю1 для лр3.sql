DROP VIEW IF EXISTS `faculty_graduants`;
CREATE VIEW `faculty_graduants`
AS
SELECT 
	`graduants`.`graduants_id`,
	`faculty`.`name`,
	`faculty`.`compulsory_subject`,
	`graduants`.`first_name`,
	`graduants`.`last_name`,
	`scores`.`score`,
	`exams`.`min_passing_score`
FROM `faculty` INNER JOIN `graduants`
	ON `faculty`.`faculty_id` = `graduants`.`faculty_id` INNER JOIN `scores`
	ON `graduants`.`graduants_id` = `scores`.`graduants_id` INNER JOIN `exams`
	ON `faculty`.`faculty_id` = `exams`.`faculty_id`;
	
SELECT * FROM `faculty_graduants`;