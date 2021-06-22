CREATE TABLE `students` (
  `student_id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(30),
  `last_name` varchar(30),
  `address_street` varchar(30),
  `city` varchar(20),
  `postcode` varchar(10),
  `mobile_number` varchar(30),
  `email` varchar(40),
  `date_of_birth` date(10),
  `gender` varchar(30),
  `category_of_student` varchar(255),
  `nationality` varchar(255),
  `special_needs` varchar(255),
  `current_status` varchar(255),
  `school_affiliation` varchar(255),
  `fk_advisor_id` int
);

CREATE TABLE `advisors` (
  `advisor_id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(30),
  `surname` varchar(30),
  `position` varchar(40),
  `department` varchar(20),
  `internal_telephone_number` varchar(30),
  `email` varchar(50),
  `room_number` int(100)
);

CREATE TABLE `halls_of_residence` (
  `hall_name` varchar(30) PRIMARY KEY,
  `street` varchar(35),
  `city` varchar(20),
  `postcode` varchar(15),
  `telephone_number` varchar(30),
  `hall_manager` varchar(20)
);

CREATE TABLE `student_apartments` (
  `apartment_number` int(100) UNIQUE PRIMARY KEY,
  `street` varchar(30),
  `city` varchar(30),
  `postcode` varchar(15)
);

CREATE TABLE `leasses` (
  `lease_number` int UNIQUE PRIMARY KEY AUTO_INCREMENT,
  `lease_duration` varchar(30),
  `student_first_name` varchar(40),
  `student_last_name` varchar(40),
  `student_id` int(50)
);

CREATE TABLE `school` (
  `school_id` int UNIQUE PRIMARY KEY AUTO_INCREMENT,
  `school_name` varchar(50),
  `principal_contact` varchar(30)
);

ALTER TABLE `students` ADD FOREIGN KEY (`fk_advisor_id`) REFERENCES `advisors` (`advisor_id`) ON DELETE CASCADE ON UPDATE CASCADE;
