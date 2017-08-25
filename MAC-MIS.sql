/*
Navicat MySQL Data Transfer

Source Server         : Database-Project
Source Server Version : 50528
Source Host           : 204.93.216.11:3306
Source Database       : gautam18_skf

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-08-25 17:43:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address_details`
-- ----------------------------
DROP TABLE IF EXISTS `address_details`;
CREATE TABLE `address_details` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `current_address` varchar(255) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `current_province` varchar(255) DEFAULT NULL,
  `current_country` varchar(255) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `mailing_city` varchar(255) DEFAULT NULL,
  `mailing_state` varchar(255) DEFAULT NULL,
  `mailing_country` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_details
-- ----------------------------
INSERT INTO `address_details` VALUES ('1', 'Howard', 'Windsor', 'Ontario', 'Canada', 'Rosedale', 'Vadodara', 'Gujarat', 'India', '1');
INSERT INTO `address_details` VALUES ('2', 'Randolph', 'Windsor', 'Ontario', 'Canada', 'Vasna', 'Ahemdabad', 'Gujarat', 'India', '2');
INSERT INTO `address_details` VALUES ('3', 'Randolph', 'Windsor', 'Ontario', 'Canada', '47 DEERFIELD DRIVE, 207', 'OTTAWA', 'Ontario', 'Canada', '3');

-- ----------------------------
-- Table structure for `certification_details`
-- ----------------------------
DROP TABLE IF EXISTS `certification_details`;
CREATE TABLE `certification_details` (
  `certi_id` int(11) NOT NULL AUTO_INCREMENT,
  `certi_title` varchar(255) DEFAULT NULL,
  `certi_body` varchar(255) DEFAULT NULL,
  `degree_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`certi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of certification_details
-- ----------------------------
INSERT INTO `certification_details` VALUES ('1', 'CCNA,SQL', 'Cisco,Oracle', '1');
INSERT INTO `certification_details` VALUES ('2', 'CCNA,Sql', 'Cisco,Oracle', '2');
INSERT INTO `certification_details` VALUES ('3', 'Java', 'Oracle', '3');
INSERT INTO `certification_details` VALUES ('4', 'CCNA', 'Cisco', '4');

-- ----------------------------
-- Table structure for `company_details`
-- ----------------------------
DROP TABLE IF EXISTS `company_details`;
CREATE TABLE `company_details` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `company_city` varchar(255) DEFAULT 'Windsor',
  `company_province` varchar(255) DEFAULT 'Ontario',
  `company_postalcode` varchar(255) DEFAULT NULL,
  `company_country` varchar(255) DEFAULT 'Canada',
  `company_contact_fname` varchar(255) DEFAULT NULL,
  `company_contact_lname` varchar(255) DEFAULT NULL,
  `company_contact_position` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) NOT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `company_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_details
-- ----------------------------
INSERT INTO `company_details` VALUES ('1', 'University Of Windsor', 'Sunset Avenue', 'Windsor', 'Ontario', 'N7E1$G', 'Canada', 'Dr. Stephanos  ', 'Mavromoustakos', 'Project Manager', '245-577-5678', 'stephano@uwindsor.ca', 'http://www.uwindsor.ca/', 'Test');
INSERT INTO `company_details` VALUES ('2', 'BlackBerry Limited', 'Waterloo', 'Toronto', 'Ontario', 'K2J6D8', 'Canada', 'James', 'Stan', 'HR Manager', '566-668-6778', 'james.stan@gmail.com', 'https://ca.blackberry.com', 'Test');

-- ----------------------------
-- Table structure for `education_details`
-- ----------------------------
DROP TABLE IF EXISTS `education_details`;
CREATE TABLE `education_details` (
  `degree_id` int(11) NOT NULL AUTO_INCREMENT,
  `degree_name` varchar(255) DEFAULT NULL,
  `degree_title` varchar(255) DEFAULT NULL,
  `degree_cgpa` varchar(255) DEFAULT NULL,
  `degree_university` varchar(255) DEFAULT NULL,
  `degree_university_location` varchar(255) DEFAULT NULL,
  `degree_start_month_year` varchar(255) DEFAULT NULL,
  `degree_end_month_year` varchar(255) DEFAULT NULL,
  `degree_status` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education_details
-- ----------------------------
INSERT INTO `education_details` VALUES ('1', 'Undergraduate', 'Bachelor of Engineering', '8.91', 'Gujarat Technological University', 'India', '2010-08', '2013-06', 'Previous', '1');
INSERT INTO `education_details` VALUES ('2', 'Graduate', 'Masters of Applied Computing', '8.55', 'University of Windsor', 'Canada', '2017-01', '2018-04', 'Current', '1');
INSERT INTO `education_details` VALUES ('3', 'Undergraduate', 'Bachelor of Engineering', '8.55', 'Gujarat Technological University', 'India', '2013-08', '2015-06', 'Previous', '2');
INSERT INTO `education_details` VALUES ('4', 'Graduate', 'Masters of Applied Computing', '8.20', 'University of Windsor', 'Canada', '2016-09', '2017-04', 'Current', '3');

-- ----------------------------
-- Table structure for `internship_type`
-- ----------------------------
DROP TABLE IF EXISTS `internship_type`;
CREATE TABLE `internship_type` (
  `internship_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `internship_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`internship_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of internship_type
-- ----------------------------
INSERT INTO `internship_type` VALUES ('1', 'Industry');
INSERT INTO `internship_type` VALUES ('2', 'MAC Project');
INSERT INTO `internship_type` VALUES ('3', 'Other');

-- ----------------------------
-- Table structure for `job_details`
-- ----------------------------
DROP TABLE IF EXISTS `job_details`;
CREATE TABLE `job_details` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group_id` varchar(11) DEFAULT NULL,
  `job_company_id` varchar(11) DEFAULT NULL,
  `job_internship_type_id` varchar(11) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `job_description` varchar(255) DEFAULT NULL,
  `job_salary` decimal(10,0) DEFAULT NULL,
  `job_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_details
-- ----------------------------
INSERT INTO `job_details` VALUES ('1', '1', '1', '2', 'Web Developer', 'Develop the MAC Management Information System.', '0', 'Open');
INSERT INTO `job_details` VALUES ('2', '5', '2', '1', 'Network Administrator', 'System Administration', '40000', 'Open');

-- ----------------------------
-- Table structure for `job_groups`
-- ----------------------------
DROP TABLE IF EXISTS `job_groups`;
CREATE TABLE `job_groups` (
  `job_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_groups
-- ----------------------------
INSERT INTO `job_groups` VALUES ('1', 'Web Development');
INSERT INTO `job_groups` VALUES ('2', 'Mobile Development');
INSERT INTO `job_groups` VALUES ('3', 'System Development');
INSERT INTO `job_groups` VALUES ('4', 'Technical Support');
INSERT INTO `job_groups` VALUES ('5', 'Networking');
INSERT INTO `job_groups` VALUES ('6', 'Data Analysis');
INSERT INTO `job_groups` VALUES ('7', 'Testing');
INSERT INTO `job_groups` VALUES ('8', 'Security');
INSERT INTO `job_groups` VALUES ('9', 'Data Management');

-- ----------------------------
-- Table structure for `job_requirements`
-- ----------------------------
DROP TABLE IF EXISTS `job_requirements`;
CREATE TABLE `job_requirements` (
  `job_req_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_req_desc` varchar(255) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_requirements
-- ----------------------------
INSERT INTO `job_requirements` VALUES ('1', 'PHP/MySQL', '1');
INSERT INTO `job_requirements` VALUES ('2', 'TCP/IP Network', '2');

-- ----------------------------
-- Table structure for `job_responsibilities`
-- ----------------------------
DROP TABLE IF EXISTS `job_responsibilities`;
CREATE TABLE `job_responsibilities` (
  `job_resp_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_resp_desc` varchar(255) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_resp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_responsibilities
-- ----------------------------
INSERT INTO `job_responsibilities` VALUES ('1', 'Develop,Design,Analyze', '1');
INSERT INTO `job_responsibilities` VALUES ('2', 'Maintain', '2');

-- ----------------------------
-- Table structure for `semester_registered`
-- ----------------------------
DROP TABLE IF EXISTS `semester_registered`;
CREATE TABLE `semester_registered` (
  `semester_id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` varchar(255) DEFAULT NULL,
  `semester_year` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of semester_registered
-- ----------------------------
INSERT INTO `semester_registered` VALUES ('1', 'Winter', '2017', '1');
INSERT INTO `semester_registered` VALUES ('2', 'Fall', '2016', '2');
INSERT INTO `semester_registered` VALUES ('3', 'Winter', '2016', '3');

-- ----------------------------
-- Table structure for `student_details`
-- ----------------------------
DROP TABLE IF EXISTS `student_details`;
CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_number` varchar(255) DEFAULT NULL,
  `student_fname` varchar(255) DEFAULT NULL,
  `student_mname` varchar(255) DEFAULT NULL,
  `student_lname` varchar(255) DEFAULT NULL,
  `student_uname` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `student_phone` varchar(255) DEFAULT NULL,
  `student_gender` varchar(255) DEFAULT NULL,
  `student_status` varchar(255) DEFAULT NULL,
  `student_current_past` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_details
-- ----------------------------
INSERT INTO `student_details` VALUES ('1', '104704646', 'Rachana', 'Kamleshbhai', 'Patel', 'rachspatel1989', 'rachspatel1989@gmail.com', '255-566-5678', 'Female', 'International', 'Current');
INSERT INTO `student_details` VALUES ('2', '104656282', 'Bansari', 'Pragnesh', 'Shah', 'bansushah', 'shahbansu94@gmail.com', '344-678-6788', 'Female', 'International', 'Current');
INSERT INTO `student_details` VALUES ('3', '104705681', 'Charmi', 'Nilesh', 'Shah', 'charmishah', 'charmishah0829@gmail.com', '345-678-3456', 'Female', 'International', 'Current');

-- ----------------------------
-- Table structure for `student_internship_details`
-- ----------------------------
DROP TABLE IF EXISTS `student_internship_details`;
CREATE TABLE `student_internship_details` (
  `stu_internship_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stu_internship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_internship_details
-- ----------------------------
INSERT INTO `student_internship_details` VALUES ('1', '1', '2', 'Unpaid');
INSERT INTO `student_internship_details` VALUES ('2', '2', '1', 'Paid');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(255) DEFAULT NULL,
  `user_lname` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Admin', 'Test', 'admin123', 'admin@gmail.com', 'admin123', '1');
INSERT INTO `user` VALUES ('2', 'Faculty', 'Test', 'faculty', 'faculty@gmail.com', 'faculty123', '2');
INSERT INTO `user` VALUES ('3', 'Rachana', 'Patel', 'rachspatel1989', 'rachspatel1989@gmail.com', 'rachs123', '3');
INSERT INTO `user` VALUES ('4', 'Bansari', 'Shah', 'bansushah', 'shahbansu94@gmail.com', 'bansu123', '3');
INSERT INTO `user` VALUES ('5', 'Charmi', 'Shah', 'charmishah', 'charmishah0829@gmail.com', 'charmi123', '3');

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', 'staff');
INSERT INTO `user_type` VALUES ('2', 'faculty');
INSERT INTO `user_type` VALUES ('3', 'student');
