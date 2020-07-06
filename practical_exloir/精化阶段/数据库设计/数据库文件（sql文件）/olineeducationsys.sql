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

 Date: 06/07/2020 17:53:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answers_info
-- ----------------------------
DROP TABLE IF EXISTS `answers_info`;
CREATE TABLE `answers_info`  (
  `answers_id` int(11) NOT NULL,
  `answers_course` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answers_isAnswer` tinyint(1) NOT NULL,
  PRIMARY KEY (`answers_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for assignment_info
-- ----------------------------
DROP TABLE IF EXISTS `assignment_info`;
CREATE TABLE `assignment_info`  (
  `assignment_id` int(11) NOT NULL,
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
  `caseId` int(11) NOT NULL,
  `case1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`caseId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for channel_info
-- ----------------------------
DROP TABLE IF EXISTS `channel_info`;
CREATE TABLE `channel_info`  (
  `id` int(11) NOT NULL,
  `channel_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `id` int(11) NOT NULL,
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
  `classId` int(11) NOT NULL,
  `className` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `startDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`classId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for classinfo
-- ----------------------------
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo`  (
  `classInfoId` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `satrtDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`classInfoId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coomment
-- ----------------------------
DROP TABLE IF EXISTS `coomment`;
CREATE TABLE `coomment`  (
  `com_id` int(11) NOT NULL,
  `com_name` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`com_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `id` int(11) NOT NULL,
  `father_class` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo`  (
  `course_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL,
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
-- Table structure for examperson
-- ----------------------------
DROP TABLE IF EXISTS `examperson`;
CREATE TABLE `examperson`  (
  `id11` int(11) NOT NULL,
  `name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userRole` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phoneNum` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id11`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for examperson2
-- ----------------------------
DROP TABLE IF EXISTS `examperson2`;
CREATE TABLE `examperson2`  (
  `id11` int(11) NOT NULL,
  `name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userRole` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phoneNum` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id11`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for examperson3
-- ----------------------------
DROP TABLE IF EXISTS `examperson3`;
CREATE TABLE `examperson3`  (
  `id11` int(11) NOT NULL,
  `name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userRole` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phoneNum` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id11`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`  (
  `file_id` int(11) NOT NULL,
  `file_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_isValid` tinyint(1) NOT NULL,
  `jurisdiction_id` int(11) NOT NULL,
  `file_fatherClass` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file_isCollect` tinyint(1) NOT NULL,
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for folder_info
-- ----------------------------
DROP TABLE IF EXISTS `folder_info`;
CREATE TABLE `folder_info`  (
  `folder_id` int(11) NOT NULL,
  `folder_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `folder_isValid` tinyint(1) NOT NULL,
  `folder_fatherClass` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `folder_isCollect` tinyint(1) NOT NULL,
  `jurisdiction_id` int(11) NOT NULL,
  PRIMARY KEY (`folder_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for issue
-- ----------------------------
DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue`  (
  `com_id` int(11) NOT NULL,
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
  `jurisdiction_id` int(11) NOT NULL,
  `jurisdiction_isDownload` tinyint(1) NULL DEFAULT NULL,
  `jurisdiction_isPreview` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`jurisdiction_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for know_info
-- ----------------------------
DROP TABLE IF EXISTS `know_info`;
CREATE TABLE `know_info`  (
  `id` int(11) NOT NULL,
  `father_class` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `kno_id` int(11) NOT NULL,
  `author` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kno_time` time(0) NULL DEFAULT NULL,
  `hits` int(11) NULL DEFAULT NULL,
  `headline` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applystate` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kno_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for live_info
-- ----------------------------
DROP TABLE IF EXISTS `live_info`;
CREATE TABLE `live_info`  (
  `live_id` int(11) NOT NULL,
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
  `loginId` int(11) NOT NULL,
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
  `lostId` int(11) NULL DEFAULT NULL,
  `lastDate` date NULL DEFAULT NULL,
  `reason` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manager_info
-- ----------------------------
DROP TABLE IF EXISTS `manager_info`;
CREATE TABLE `manager_info`  (
  `id` int(11) NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_Role` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phone_number` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creat_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for organization
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization`  (
  `org_id` int(11) NOT NULL,
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
  `catNum` int(11) NOT NULL,
  `catName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catNum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `per_` int(11) NOT NULL,
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
-- Table structure for pigeonhole_info
-- ----------------------------
DROP TABLE IF EXISTS `pigeonhole_info`;
CREATE TABLE `pigeonhole_info`  (
  `pigeonhole_id` int(11) NOT NULL,
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
  `planId` int(11) NOT NULL,
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
  `plan_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL,
  `father_class` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for planinfo
-- ----------------------------
DROP TABLE IF EXISTS `planinfo`;
CREATE TABLE `planinfo`  (
  `palnInfoId` int(11) NOT NULL,
  `startDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  PRIMARY KEY (`palnInfoId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for profession_info
-- ----------------------------
DROP TABLE IF EXISTS `profession_info`;
CREATE TABLE `profession_info`  (
  `id` int(11) NOT NULL,
  `name` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for projects_info
-- ----------------------------
DROP TABLE IF EXISTS `projects_info`;
CREATE TABLE `projects_info`  (
  `projects_id` int(11) NOT NULL,
  `projects_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_author` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_uploader` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `projects_credit` int(11) NOT NULL,
  `projects_period` int(11) NOT NULL,
  `projects_isValid` tinyint(1) NOT NULL,
  `projects_updateTime` date NOT NULL,
  `course_id2` int(11) NOT NULL,
  `projects_cost` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `projects_description` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`projects_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for question_info
-- ----------------------------
DROP TABLE IF EXISTS `question_info`;
CREATE TABLE `question_info`  (
  `id` int(11) NOT NULL,
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
  `role_id` int(11) NOT NULL,
  `role_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jurisdiction` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for schedul_info
-- ----------------------------
DROP TABLE IF EXISTS `schedul_info`;
CREATE TABLE `schedul_info`  (
  `id` int(11) NOT NULL,
  `time_up` time(0) NOT NULL,
  `time_down` time(0) NOT NULL,
  `time` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for score_info
-- ----------------------------
DROP TABLE IF EXISTS `score_info`;
CREATE TABLE `score_info`  (
  `user_id` int(11) NOT NULL,
  `score` bigint(20) NULL DEFAULT NULL,
  `retry` int(11) NULL DEFAULT NULL,
  `paperStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paperDetails` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `markStatus` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scoreinfo
-- ----------------------------
DROP TABLE IF EXISTS `scoreinfo`;
CREATE TABLE `scoreinfo`  (
  `score_id` int(11) NOT NULL,
  `score_score` int(11) NOT NULL,
  `score_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`score_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for signs_info
-- ----------------------------
DROP TABLE IF EXISTS `signs_info`;
CREATE TABLE `signs_info`  (
  `signs_id` int(11) NOT NULL,
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
  `tem_id` int(11) NOT NULL,
  `tem_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tem_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for test_info
-- ----------------------------
DROP TABLE IF EXISTS `test_info`;
CREATE TABLE `test_info`  (
  `testClassId` int(11) NOT NULL,
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
-- Table structure for trainer_info
-- ----------------------------
DROP TABLE IF EXISTS `trainer_info`;
CREATE TABLE `trainer_info`  (
  `trainer_id` int(11) NOT NULL,
  `trainer_name2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_type2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_direction2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_title2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_duty2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trainer_highest_edu2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_teach_time2` int(11) NULL DEFAULT NULL,
  `trainer_hierarchy2` int(11) NOT NULL,
  `trainer_description2` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_nation2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_nationality2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `trainer_birthday2` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`trainer_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for two_manager
-- ----------------------------
DROP TABLE IF EXISTS `two_manager`;
CREATE TABLE `two_manager`  (
  `two_id` int(11) NOT NULL,
  `man_name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`two_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `name` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userRole` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phoneNum` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
