
CREATE TABLE `Faculty`
(
    `faculty_id` INT AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    `contact_number` VARCHAR(25) NOT NULL,
    `compulsory_subject` TEXT NOT NULL,
    `number_of_places` INT,
    PRIMARY KEY (`faculty_id`)
);

CREATE TABLE `Graduants`
(
    `graduants_id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `email` VARCHAR(40),
    `contact_number` VARCHAR(25) NOT NULL,
  	 `adress` VARCHAR(50) NOT NULL,
    `completed_2nd_education` VARCHAR(40),
    `faculty_id` INT NOT NULL,
    `benefits` VARCHAR(60) NOT NULL,
    PRIMARY KEY (`graduants_id`),
    FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
);

CREATE TABLE `Exams_results`(
  `faculty_id` INT NOT NULL,
	`graduants_id` INT NOT NULL,
    `average_score` VARCHAR(40) NOT NULL,
    `status` VARCHAR(40) NOT NULL,    
    FOREIGN KEY (`graduants_id`) REFERENCES `Graduants`(`graduants_id`),
    FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`)
);

CREATE TABLE `Teacher`(
  `teacher_id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(20) NOT NULL,
    `last_name` VARCHAR(20) NOT NULL,
    `subject` VARCHAR(20) NOT NULL,
    `contact_number` VARCHAR(50),
    PRIMARY KEY (`teacher_id`)
);


CREATE TABLE `Exams`(
    `teacher_id` INT NOT NULL,
    `name` VARCHAR(20) NOT NULL,
    `date` DATE NOT NULL,
    `min_passing_score` INT NOT NULL,
    `time` TIME NOT NULL,
    `faculty_id` INT NOT NULL,
    FOREIGN KEY (`faculty_id`) REFERENCES `Faculty` (`faculty_id`),
    FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`teacher_id`)
);

CREATE TABLE `Scores`(
    `graduants_id` INT NOT NULL,
    `date` DATE,
    `score` FLOAT NOT NULL,
    `subject` VARCHAR(30) NOT NULL,
    `teacher_id` INT,
    FOREIGN KEY (`graduants_id`) REFERENCES `Graduants`(`graduants_id`),
    FOREIGN KEY (`teacher_id`) REFERENCES `Teacher` (`teacher_id`)
);
