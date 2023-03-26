DROP VIEW IF EXISTS `faculty_graduants`;
CREATE VIEW `faculty_graduants`
AS
SELECT 
	`faculty`.`faculty_id`,
	`graduants`.`graduants_id`,
	`faculty`.`name`,
	`faculty`.`compulsory_subject`,
	`graduants`.`first_name`,
	`graduants`.`last_name`
FROM `faculty` INNER JOIN `graduants`
	ON `faculty`.`faculty_id` = `graduants`.`faculty_id`;
	
SELECT * FROM `faculty_graduants`;