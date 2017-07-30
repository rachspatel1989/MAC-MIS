/*
Navicat MySQL Data Transfer

Source Server         : Database-Project
Source Server Version : 50528
Source Host           : 204.93.216.11:3306
Source Database       : gautam18_skf

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-07-30 14:50:25
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_details
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of certification_details
-- ----------------------------

-- ----------------------------
-- Table structure for `company_details`
-- ----------------------------
DROP TABLE IF EXISTS `company_details`;
CREATE TABLE `company_details` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_address` varchar(255) DEFAULT NULL,
  `company_city` varchar(255) DEFAULT 'Windsor',
  `company_province` varchar(255) DEFAULT 'Ontario',
  `company_postalcode` varchar(255) DEFAULT NULL,
  `company_country` varchar(255) DEFAULT 'Canada',
  `company_contact_fname` varchar(255) DEFAULT NULL,
  `company_contact_lname` varchar(255) DEFAULT NULL,
  `company_contact_position` varchar(255) DEFAULT NULL,
  `company_phone` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_website` varchar(255) DEFAULT NULL,
  `company_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_details
-- ----------------------------

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
  `degree_start_month` varchar(255) DEFAULT NULL,
  `degree_end_month` varchar(255) DEFAULT NULL,
  `degree_start_year` varchar(255) DEFAULT NULL,
  `degree_end_year` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education_details
-- ----------------------------

-- ----------------------------
-- Table structure for `internship_type`
-- ----------------------------
DROP TABLE IF EXISTS `internship_type`;
CREATE TABLE `internship_type` (
  `internship_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `internship_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`internship_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of internship_type
-- ----------------------------

-- ----------------------------
-- Table structure for `job_details`
-- ----------------------------
DROP TABLE IF EXISTS `job_details`;
CREATE TABLE `job_details` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group_id` int(11) DEFAULT NULL,
  `job_company_id` int(11) DEFAULT NULL,
  `job_internship_type_id` int(11) DEFAULT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `job_description` varchar(255) DEFAULT NULL,
  `job_salary` decimal(10,0) DEFAULT NULL,
  `job_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_details
-- ----------------------------

-- ----------------------------
-- Table structure for `job_groups`
-- ----------------------------
DROP TABLE IF EXISTS `job_groups`;
CREATE TABLE `job_groups` (
  `job_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`job_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `job_requirements`
-- ----------------------------
DROP TABLE IF EXISTS `job_requirements`;
CREATE TABLE `job_requirements` (
  `job_req_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_req_desc` varchar(255) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_requirements
-- ----------------------------

-- ----------------------------
-- Table structure for `job_responsibilities`
-- ----------------------------
DROP TABLE IF EXISTS `job_responsibilities`;
CREATE TABLE `job_responsibilities` (
  `job_resp_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_resp_desc` varchar(255) DEFAULT NULL,
  `job_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_resp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of job_responsibilities
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of semester_registered
-- ----------------------------

-- ----------------------------
-- Table structure for `student_details`
-- ----------------------------
DROP TABLE IF EXISTS `student_details`;
CREATE TABLE `student_details` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_fname` varchar(255) DEFAULT NULL,
  `student_mname` varchar(255) DEFAULT NULL,
  `student_lname` varchar(255) DEFAULT NULL,
  `student_email` varchar(255) DEFAULT NULL,
  `student_phone` varchar(255) DEFAULT NULL,
  `student_gender` varchar(255) DEFAULT NULL,
  `student_status` varchar(255) DEFAULT NULL,
  `student_current_past` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_details
-- ----------------------------

-- ----------------------------
-- Table structure for `student_internship_details`
-- ----------------------------
DROP TABLE IF EXISTS `student_internship_details`;
CREATE TABLE `student_internship_details` (
  `stu_internship_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`stu_internship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_internship_details
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_type
-- ----------------------------
