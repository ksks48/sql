DROP VIEW IF EXISTS `faculty_graduants_scores_exams`;
CREATE VIEW `faculty_graduants_scores_exams`
AS
SELECT 
	`faculty_graduants_scores`.`name`,
	`faculty_graduants_scores`.`compulsory_subject`,
	`faculty_graduants_scores`.`first_name`,
	`faculty_graduants_scores`.`last_name`,
	`faculty_graduants_scores`.`score`,
	`exams`.`min_passing_score`
FROM `faculty_graduants_scores` INNER JOIN `exams`
	ON `faculty_graduants_scores`.`faculty_id` = `exams`.`faculty_id`;
	
SELECT * FROM `faculty_graduants_scores_exams`;

