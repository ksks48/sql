DROP VIEW IF EXISTS `faculty_graduants_scores`;
CREATE VIEW `faculty_graduants_scores`
AS
SELECT 
	`faculty_graduants`.`faculty_id`,
	`faculty_graduants`.`name`,
	`faculty_graduants`.`compulsory_subject`,
	`faculty_graduants`.`first_name`,
	`faculty_graduants`.`last_name`,
	`scores`.`score`
FROM `faculty_graduants` INNER JOIN `scores`
	ON `faculty_graduants`.`graduants_id` = `scores`.`graduants_id`;
	
SELECT * FROM `faculty_graduants_scores`;

