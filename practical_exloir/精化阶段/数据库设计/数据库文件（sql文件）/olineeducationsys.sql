/*
 Navicat Premium Data Transfer

 Source Server         : aaa
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : olineeducationsys

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 10/07/2020 16:45:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answers_info
-- ----------------------------
DROP TABLE IF EXISTS `answers_info`;
CREATE TABLE `answers_info`  (
  `answers_id` int(11) NOT NULL AUTO_INCREMENT,
  `answers_course` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answers_isAnswer` tinyint(1) NOT NULL,
  PRIMARY KEY (`answers_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for assignment_info
-- ----------------------------
DROP TABLE IF EXISTS `assignment_info`;
CREATE TABLE `assignment_info`  (
  `assignment_id` int(11) NOT NULL AUTO_INCREMENT,
  `assignment——orgnization` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assignment_condition` tinyint(1) NOT NULL,
  `assignment_stuname` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `assignment_course` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`assignment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for case1
-- ----------------------------
DROP TABLE IF EXISTS `case1`;
CREATE TABLE `case1`  (
  `caseId` int(11) NOT NULL AUTO_INCREMENT,
  `case1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`caseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for case1andplan
-- ----------------------------
DROP TABLE IF EXISTS `case1andplan`;
CREATE TABLE `case1andplan`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `case1_id` int(15) NULL DEFAULT NULL,
  `plan_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channel_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_info`;
CREATE TABLE `channel_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channelandclass
-- ----------------------------
DROP TABLE IF EXISTS `channelandclass`;
CREATE TABLE `channelandclass`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `channel_id` int(15) NULL DEFAULT NULL,
  `class_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_class` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_intro` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes`  (
  `classId` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `startDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`classId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for classesandplan
-- ----------------------------
DROP TABLE IF EXISTS `classesandplan`;
CREATE TABLE `classesandplan`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `classes_id` int(15) NULL DEFAULT NULL,
  `plan_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for classinfo
-- ----------------------------
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo`  (
  `classInfoId` int(15) NOT NULL AUTO_INCREMENT,
  `satrtDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`classInfoId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for classinfoandclasses
-- ----------------------------
DROP TABLE IF EXISTS `classinfoandclasses`;
CREATE TABLE `classinfoandclasses`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `classinfo_id` int(15) NULL DEFAULT NULL,
  `classes_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for content_info
-- ----------------------------
DROP TABLE IF EXISTS `content_info`;
CREATE TABLE `content_info`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for contentandchannel
-- ----------------------------
DROP TABLE IF EXISTS `contentandchannel`;
CREATE TABLE `contentandchannel`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `content_id` int(15) NULL DEFAULT NULL,
  `channel_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coomment
-- ----------------------------
DROP TABLE IF EXISTS `coomment`;
CREATE TABLE `coomment`  (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_class` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for courseandfolder
-- ----------------------------
DROP TABLE IF EXISTS `courseandfolder`;
CREATE TABLE `courseandfolder`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `course_id` int(15) NULL DEFAULT NULL,
  `folder_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for courseandprofession
-- ----------------------------
DROP TABLE IF EXISTS `courseandprofession`;
CREATE TABLE `courseandprofession`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `course_id` int(15) NULL DEFAULT NULL,
  `profession_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo`  (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_period` int(11) NOT NULL,
  `course_classify` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_isAllot` tinyint(1) NOT NULL,
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dictionary_info
-- ----------------------------
DROP TABLE IF EXISTS `dictionary_info`;
CREATE TABLE `dictionary_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_iteam` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `symbol` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_sort` tinyint(1) NOT NULL,
  `value_sort` int(11) NOT NULL,
  `note` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exam_info
-- ----------------------------
DROP TABLE IF EXISTS `exam_info`;
CREATE TABLE `exam_info`  (
  `examName` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `examHour` bigint(20) NULL DEFAULT NULL,
  `beginTime` date NULL DEFAULT NULL,
  `endTime` date NULL DEFAULT NULL,
  `passGrade` int(11) NULL DEFAULT NULL,
  `createType` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scoreSet` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `peopleNum` int(11) NULL DEFAULT NULL,
  `examStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `examCreater` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eUpdateDate` date NULL DEFAULT NULL,
  `retakeNum` int(11) NULL DEFAULT NULL,
  `examNote` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `examType` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`examName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_isValid` tinyint(1) NOT NULL,
  `jurisdiction_id` int(11) NOT NULL,
  `file_fatherClass` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_isCollect` tinyint(1) NOT NULL,
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fileandjurisdiction
-- ----------------------------
DROP TABLE IF EXISTS `fileandjurisdiction`;
CREATE TABLE `fileandjurisdiction`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `file_id` int(15) NULL DEFAULT NULL,
  `jurisdiction_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for folder_info
-- ----------------------------
DROP TABLE IF EXISTS `folder_info`;
CREATE TABLE `folder_info`  (
  `folder_id` int(11) NOT NULL AUTO_INCREMENT,
  `folder_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `folder_isValid` tinyint(1) NOT NULL,
  `folder_fatherClass` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `folder_isCollect` tinyint(1) NOT NULL,
  `jurisdiction_id` int(11) NOT NULL,
  PRIMARY KEY (`folder_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for folderandfile
-- ----------------------------
DROP TABLE IF EXISTS `folderandfile`;
CREATE TABLE `folderandfile`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `folder_id` int(15) NULL DEFAULT NULL,
  `file_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for folderandjurisdiction
-- ----------------------------
DROP TABLE IF EXISTS `folderandjurisdiction`;
CREATE TABLE `folderandjurisdiction`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `folder_id` int(15) NULL DEFAULT NULL,
  `jurisdiction_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for issue
-- ----------------------------
DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue`  (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `headline` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `com_name` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state_time` time(0) NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jurisdiction_info
-- ----------------------------
DROP TABLE IF EXISTS `jurisdiction_info`;
CREATE TABLE `jurisdiction_info`  (
  `jurisdiction_id` int(11) NOT NULL AUTO_INCREMENT,
  `jurisdiction_isDownload` tinyint(1) NULL DEFAULT NULL,
  `jurisdiction_isPreview` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`jurisdiction_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for know_info
-- ----------------------------
DROP TABLE IF EXISTS `know_info`;
CREATE TABLE `know_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_class` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowandquestion
-- ----------------------------
DROP TABLE IF EXISTS `knowandquestion`;
CREATE TABLE `knowandquestion`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `know_id` int(15) NOT NULL,
  `question_id` int(15) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `kno_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kno_time` time(0) NULL DEFAULT NULL,
  `hits` int(11) NULL DEFAULT NULL,
  `headline` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applystate` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kno_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledgeandcoomment
-- ----------------------------
DROP TABLE IF EXISTS `knowledgeandcoomment`;
CREATE TABLE `knowledgeandcoomment`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `knowledge_id` int(15) NULL DEFAULT NULL,
  `coomment_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for live_info
-- ----------------------------
DROP TABLE IF EXISTS `live_info`;
CREATE TABLE `live_info`  (
  `live_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_time` time(0) NOT NULL,
  `live_status` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `live_teacher` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `live_organization` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `live_course` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`live_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for logininfo
-- ----------------------------
DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo`  (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `loginDate` date NULL DEFAULT NULL,
  `logoutDate` date NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`loginId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lost_info
-- ----------------------------
DROP TABLE IF EXISTS `lost_info`;
CREATE TABLE `lost_info`  (
  `lostId` int(11) NOT NULL AUTO_INCREMENT,
  `lastDate` date NULL DEFAULT NULL,
  `reason` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`lostId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization`  (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_organ` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` int(11) NULL DEFAULT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`org_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for paln_category
-- ----------------------------
DROP TABLE IF EXISTS `paln_category`;
CREATE TABLE `paln_category`  (
  `catNum` int(11) NOT NULL AUTO_INCREMENT,
  `catName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catNum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for palncategoryandplan
-- ----------------------------
DROP TABLE IF EXISTS `palncategoryandplan`;
CREATE TABLE `palncategoryandplan`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `palncategory_id` int(15) NULL DEFAULT NULL,
  `plan_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `per_` int(11) NOT NULL AUTO_INCREMENT,
  `per_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` int(11) NULL DEFAULT NULL,
  `sex` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `nickname` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`per_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personandorganization
-- ----------------------------
DROP TABLE IF EXISTS `personandorganization`;
CREATE TABLE `personandorganization`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `person_id` int(15) NULL DEFAULT NULL,
  `organization_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pigeonhole_info
-- ----------------------------
DROP TABLE IF EXISTS `pigeonhole_info`;
CREATE TABLE `pigeonhole_info`  (
  `pigeonhole_id` int(11) NOT NULL AUTO_INCREMENT,
  `score_id` int(11) NULL DEFAULT NULL,
  `plan_id` int(11) NULL DEFAULT NULL,
  `trainer_id` int(11) NULL DEFAULT NULL,
  `signs_id` int(11) NULL DEFAULT NULL,
  `answers_id` int(11) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  `live_id` int(11) NULL DEFAULT NULL,
  `assignment_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`pigeonhole_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plan
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan`  (
  `planId` int(11) NOT NULL AUTO_INCREMENT,
  `planName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `satrtDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`planId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plan_cateinfo
-- ----------------------------
DROP TABLE IF EXISTS `plan_cateinfo`;
CREATE TABLE `plan_cateinfo`  (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `plan_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plan_use` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plan_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `plan_isAllot` tinyint(1) NOT NULL,
  PRIMARY KEY (`plan_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plan_info
-- ----------------------------
DROP TABLE IF EXISTS `plan_info`;
CREATE TABLE `plan_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_class` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for plancateinfoandtrainer
-- ----------------------------
DROP TABLE IF EXISTS `plancateinfoandtrainer`;
CREATE TABLE `plancateinfoandtrainer`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `plancateinfo_id` int(15) NULL DEFAULT NULL,
  `trainer_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for planinfo
-- ----------------------------
DROP TABLE IF EXISTS `planinfo`;
CREATE TABLE `planinfo`  (
  `palnInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `startDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`palnInfoId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for planinfoandplan
-- ----------------------------
DROP TABLE IF EXISTS `planinfoandplan`;
CREATE TABLE `planinfoandplan`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `planinfo_id` int(15) NULL DEFAULT NULL,
  `plan_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for profession_info
-- ----------------------------
DROP TABLE IF EXISTS `profession_info`;
CREATE TABLE `profession_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for projects_info
-- ----------------------------
DROP TABLE IF EXISTS `projects_info`;
CREATE TABLE `projects_info`  (
  `projects_id` int(11) NOT NULL AUTO_INCREMENT,
  `projects_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_author` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_uploader` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_credit` int(11) NOT NULL,
  `projects_period` int(11) NOT NULL,
  `projects_isValid` tinyint(1) NOT NULL,
  `projects_updateTime` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `projects_cost` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `projects_description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`projects_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for projectsandcourse
-- ----------------------------
DROP TABLE IF EXISTS `projectsandcourse`;
CREATE TABLE `projectsandcourse`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `projects_id` int(15) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for question_info
-- ----------------------------
DROP TABLE IF EXISTS `question_info`;
CREATE TABLE `question_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `father_class` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jurisdiction` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role_info
-- ----------------------------
DROP TABLE IF EXISTS `role_info`;
CREATE TABLE `role_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userRole` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phoneNum` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_info
-- ----------------------------
INSERT INTO `role_info` VALUES (1, '刘杰', '2442613603', 'manager', '15383466428', '123456', 1, '2020-07-10');
INSERT INTO `role_info` VALUES (2, '洛少雄', '2287464558', 'manager_resource', '11111111111', '123456', 1, '2020-07-10');
INSERT INTO `role_info` VALUES (3, '李慧琴', '1726602829', 'teacher_exmine', '11111111111', '123456', 1, '2020-07-10');
INSERT INTO `role_info` VALUES (4, '王敏泽', '1404963301', 'paper_make', '11111111111', '123456', 1, '2020-07-10');
INSERT INTO `role_info` VALUES (5, '成肇娣', '971531564', 'user', '11111111111', '123456', 1, '2020-07-10');

-- ----------------------------
-- Table structure for roleandperson
-- ----------------------------
DROP TABLE IF EXISTS `roleandperson`;
CREATE TABLE `roleandperson`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `role_id` int(15) NULL DEFAULT NULL,
  `person_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for schedul_info
-- ----------------------------
DROP TABLE IF EXISTS `schedul_info`;
CREATE TABLE `schedul_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_up` time(0) NOT NULL,
  `time_down` time(0) NOT NULL,
  `time` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for schedulandcourse
-- ----------------------------
DROP TABLE IF EXISTS `schedulandcourse`;
CREATE TABLE `schedulandcourse`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `schedul_id` int(15) NULL DEFAULT NULL,
  `course_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for score_info
-- ----------------------------
DROP TABLE IF EXISTS `score_info`;
CREATE TABLE `score_info`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `score` bigint(20) NULL DEFAULT NULL,
  `retry` int(11) NULL DEFAULT NULL,
  `paperStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paperDetails` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `markStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scoreandexam
-- ----------------------------
DROP TABLE IF EXISTS `scoreandexam`;
CREATE TABLE `scoreandexam`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `score_id` int(15) NULL DEFAULT NULL,
  `exam_name` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scoreinfo
-- ----------------------------
DROP TABLE IF EXISTS `scoreinfo`;
CREATE TABLE `scoreinfo`  (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `score_score` int(11) NOT NULL,
  `score_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for signs_info
-- ----------------------------
DROP TABLE IF EXISTS `signs_info`;
CREATE TABLE `signs_info`  (
  `signs_id` int(11) NOT NULL AUTO_INCREMENT,
  `signs_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signs_organization` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `signs_time` date NOT NULL,
  `signs_condition` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`signs_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `tem_id` int(11) NOT NULL AUTO_INCREMENT,
  `tem_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tem_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_info
-- ----------------------------
DROP TABLE IF EXISTS `test_info`;
CREATE TABLE `test_info`  (
  `testClassId` int(11) NOT NULL AUTO_INCREMENT,
  `testClass` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kName` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kNote` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kCreater` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kCreaterDate` date NULL DEFAULT NULL,
  `kUpdateDate` date NULL DEFAULT NULL,
  `testTopic` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testType` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `testSatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `optionNum` int(11) NULL DEFAULT NULL,
  `referencePoint` bigint(20) NULL DEFAULT NULL,
  `optionPoint` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`testClassId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for testandexam
-- ----------------------------
DROP TABLE IF EXISTS `testandexam`;
CREATE TABLE `testandexam`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `test_id` int(15) NULL DEFAULT NULL,
  `exam_name` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trainer_info
-- ----------------------------
DROP TABLE IF EXISTS `trainer_info`;
CREATE TABLE `trainer_info`  (
  `trainer_id` int(11) NOT NULL AUTO_INCREMENT,
  `trainer_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_direction` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_title` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_duty` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_highest_edu` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_teach_time` int(11) NULL DEFAULT NULL,
  `trainer_hierarchy` int(11) NOT NULL,
  `trainer_description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_nation` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_nationality` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_birthday` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`trainer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trainerandcourseinfo
-- ----------------------------
DROP TABLE IF EXISTS `trainerandcourseinfo`;
CREATE TABLE `trainerandcourseinfo`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `trainer_id` int(15) NULL DEFAULT NULL,
  `courseinfo_id` int(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for two_manager
-- ----------------------------
DROP TABLE IF EXISTS `two_manager`;
CREATE TABLE `two_manager`  (
  `two_id` int(11) NOT NULL AUTO_INCREMENT,
  `man_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`two_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for userandexam
-- ----------------------------
DROP TABLE IF EXISTS `userandexam`;
CREATE TABLE `userandexam`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NULL DEFAULT NULL,
  `exam_name` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
