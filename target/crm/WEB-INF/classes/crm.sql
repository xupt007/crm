/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 20/04/2018 13:08:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_class
-- ----------------------------
DROP TABLE IF EXISTS `crm_class`;
CREATE TABLE `crm_class`  (
  `classId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courseTypeId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `totalCount` int(11) DEFAULT NULL,
  `upgradeCount` int(11) DEFAULT NULL,
  `changeCount` int(11) DEFAULT NULL,
  `runoffCount` int(11) DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  `uploadPath` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uploadFilename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`classId`) USING BTREE,
  INDEX `courseTypeId`(`courseTypeId`) USING BTREE,
  CONSTRAINT `crm_class_ibfk_1` FOREIGN KEY (`courseTypeId`) REFERENCES `crm_course_type` (`courseTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_class
-- ----------------------------
INSERT INTO `crm_class` VALUES ('1caa2824-0075-4bd0-8ca4-4435660214e4', '2c9091c14c78e58b014c78e867b80009', 'WEB1期', '2018-04-01 00:00:00', '2018-08-01 00:00:00', '已开班', 1, 0, 0, 0, '主讲HTML5,javascript css servlet/jsp el表达式', NULL, NULL, NULL);
INSERT INTO `crm_class` VALUES ('2c9091c14c78e58b014c78e9106e000b', '2c9091c14c78e58b014c78e829b70008', 'SE1期', '2018-03-01 00:00:00', '2018-06-30 00:00:00', '已开班', -2, 2, 0, 0, '主讲面向对象,常用类,接口继承,集合', '2018-04-14 00:00:00', NULL, 'java基础班2期课程表.xlsx');
INSERT INTO `crm_class` VALUES ('2c9091c14c78e58b014c78e9601a000c', '2c9091c14c78e58b014c78e829b70008', 'SE2期', '2018-06-01 00:00:00', '2018-10-31 00:00:00', '未开班', 1, 0, 0, 0, '多态,多线程,网络编程 ,项目实战', NULL, NULL, NULL);
INSERT INTO `crm_class` VALUES ('59dcebbe-e86d-4849-ac12-4fc79cd1ab4f', '2c9091c14c78e58b014c78e867b80009', 'WEB2期', '2018-05-01 00:00:00', '2018-10-01 00:00:00', '未开班', 0, 0, 0, 0, '主讲数据库,MVC设计模式,HTTP协议', NULL, NULL, NULL);
INSERT INTO `crm_class` VALUES ('d326ac08-21cc-4e58-9d5a-d1f16de97381', '2c9091c14c78e58b014c78e829b700455', 'EE1期', '2018-03-01 00:00:00', '2018-07-01 00:00:00', '已开班', 0, 0, 0, 0, '主讲 Strust2,hibernate,spring,springmvc,mybatis等开源技术框架', NULL, NULL, NULL);
INSERT INTO `crm_class` VALUES ('df389c72-420b-4ce7-b841-bda011cba8db', '2c9091c14c78e58b014c78e829b700455', 'EE2期', '2018-06-08 00:00:00', '2018-10-01 00:00:00', '未开班', 0, 0, 0, 0, '主讲 springboot,dubbo分布式框架,redis数据库 maven', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for crm_course_type
-- ----------------------------
DROP TABLE IF EXISTS `crm_course_type`;
CREATE TABLE `crm_course_type`  (
  `courseTypeId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courseCost` double DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `courseName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`courseTypeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_course_type
-- ----------------------------
INSERT INTO `crm_course_type` VALUES ('2c9091c14c78e58b014c78e829b70008', 2000, 96, 'javaSE', 'java基础课程');
INSERT INTO `crm_course_type` VALUES ('2c9091c14c78e58b014c78e829b700455', 4000, 96, 'javaEE', 'javaEE企业级课程');
INSERT INTO `crm_course_type` VALUES ('2c9091c14c78e58b014c78e867b80009', 3000, 96, 'javaWeb', 'javaWeb中级课程');

-- ----------------------------
-- Table structure for crm_department
-- ----------------------------
DROP TABLE IF EXISTS `crm_department`;
CREATE TABLE `crm_department`  (
  `depId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `depName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`depId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_department
-- ----------------------------
INSERT INTO `crm_department` VALUES ('2c9091c14c78e58b014c78e67de10001', 'java学院');
INSERT INTO `crm_department` VALUES ('2c9091c14c78e58b014c78e68ded0002', '咨询部');

-- ----------------------------
-- Table structure for crm_follow
-- ----------------------------
DROP TABLE IF EXISTS `crm_follow`;
CREATE TABLE `crm_follow`  (
  `followId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `followTime` datetime DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staffId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `referId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`followId`) USING BTREE,
  INDEX `staffId`(`staffId`) USING BTREE,
  INDEX `referId`(`referId`) USING BTREE,
  CONSTRAINT `crm_follow_ibfk_1` FOREIGN KEY (`staffId`) REFERENCES `crm_staff` (`staffId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_follow_ibfk_2` FOREIGN KEY (`referId`) REFERENCES `crm_refer` (`referId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_follow
-- ----------------------------
INSERT INTO `crm_follow` VALUES ('344acd99-14d2-481e-9703-a77a8151656f', '2018-04-15 00:01:39', '测试一下这个功能', '2c9091c14c78e58b014c78e5c32a0000', '125a0341c41b4f2baf972964c80dc2aa');

-- ----------------------------
-- Table structure for crm_graduate
-- ----------------------------
DROP TABLE IF EXISTS `crm_graduate`;
CREATE TABLE `crm_graduate`  (
  `granduateId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salary` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `post` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`granduateId`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  INDEX `classId`(`classId`) USING BTREE,
  CONSTRAINT `crm_graduate_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `crm_student` (`studentId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_graduate_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `crm_class` (`classId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_graduate
-- ----------------------------
INSERT INTO `crm_graduate` VALUES ('faacdcbd-15ad-4309-a16e-59cdf7fa29b4', '98965f45-1be0-4d87-b43c-4b675c273bdc', '测试小公司', '8888', 'java开发工程师', '2018-04-27 00:00:00', '测试小数据', '1caa2824-0075-4bd0-8ca4-4435660214e4');

-- ----------------------------
-- Table structure for crm_post
-- ----------------------------
DROP TABLE IF EXISTS `crm_post`;
CREATE TABLE `crm_post`  (
  `postId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `depId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`postId`) USING BTREE,
  INDEX `depId`(`depId`) USING BTREE,
  CONSTRAINT `crm_post_ibfk_1` FOREIGN KEY (`depId`) REFERENCES `crm_department` (`depId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_post
-- ----------------------------
INSERT INTO `crm_post` VALUES ('2c9091c14c78e58b014c78e6b34a0003', '总监', '2c9091c14c78e58b014c78e67de10001');
INSERT INTO `crm_post` VALUES ('2c9091c14c78e58b014c78e6d4510004', '讲师', '2c9091c14c78e58b014c78e67de10001');
INSERT INTO `crm_post` VALUES ('2c9091c14c78e58b014c78e6f2340005', '主管', '2c9091c14c78e58b014c78e68ded0002');
INSERT INTO `crm_post` VALUES ('3fc33ec5-75b1-4d69-957b-aa1e2b6f74e6', '部长', '2c9091c14c78e58b014c78e68ded0002');

-- ----------------------------
-- Table structure for crm_refer
-- ----------------------------
DROP TABLE IF EXISTS `crm_refer`;
CREATE TABLE `crm_refer`  (
  `referId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `intentionLevel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `courseTypeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staffId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`referId`) USING BTREE,
  INDEX `courseTypeId`(`courseTypeId`) USING BTREE,
  INDEX `classId`(`classId`) USING BTREE,
  INDEX `staffId`(`staffId`) USING BTREE,
  CONSTRAINT `crm_refer_ibfk_1` FOREIGN KEY (`courseTypeId`) REFERENCES `crm_course_type` (`courseTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_refer_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `crm_class` (`classId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_refer_ibfk_3` FOREIGN KEY (`staffId`) REFERENCES `crm_staff` (`staffId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_refer
-- ----------------------------
INSERT INTO `crm_refer` VALUES ('125a0341c41b4f2baf972964c80dc2aa', '李四', '15611111111', '11111111', 'A', '2c9091c14c78e58b014c78e829b70008', '2c9091c14c78e58b014c78e9106e000b', '西部开源', '2', '测试数据', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-14 15:43:21');
INSERT INTO `crm_refer` VALUES ('2159e925-eb6f-4db0-975e-7a970a62a8cc', '毛毛', '15666666', '45678915', 'B', '2c9091c14c78e58b014c78e829b70008', '2c9091c14c78e58b014c78e9601a000c', '同学介绍', '2', '测试小数据2', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-20 11:33:40');
INSERT INTO `crm_refer` VALUES ('57094588-5395-47fa-80ed-928e779167fd', '赵欢', '456789465', '45645646', 'B', '2c9091c14c78e58b014c78e867b80009', '1caa2824-0075-4bd0-8ca4-4435660214e4', '大街上找的', '2', '测试小数据3', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-20 11:34:37');
INSERT INTO `crm_refer` VALUES ('7027a18a-8283-406e-aa88-1875a5783efd', '刘通', '4467498', '10000000', 'A', '2c9091c14c78e58b014c78e829b70008', '2c9091c14c78e58b014c78e9106e000b', '同学介绍', '1', '测试小数据1', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-20 11:32:54');
INSERT INTO `crm_refer` VALUES ('7582c8ae-fe2b-423f-998c-f8ee927a62f7', '老王', '1515646415', '465456564', 'B', '2c9091c14c78e58b014c78e829b70008', '2c9091c14c78e58b014c78e9106e000b', '随便哪来的', '1', '测试小数据4', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-20 11:35:22');

-- ----------------------------
-- Table structure for crm_runoff
-- ----------------------------
DROP TABLE IF EXISTS `crm_runoff`;
CREATE TABLE `crm_runoff`  (
  `runoffId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staffId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `isRefund` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `refundAmount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`runoffId`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  INDEX `staffId`(`staffId`) USING BTREE,
  CONSTRAINT `crm_runoff_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `crm_student` (`studentId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_runoff_ibfk_2` FOREIGN KEY (`staffId`) REFERENCES `crm_staff` (`staffId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_runoff
-- ----------------------------
INSERT INTO `crm_runoff` VALUES ('1f9b3955-7740-45b9-a22b-e0c95474e6c6', '9a53e329-6e32-445c-b070-c106c8a198b4', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-19 17:08:14', '退款', '1000', '测试数据');

-- ----------------------------
-- Table structure for crm_staff
-- ----------------------------
DROP TABLE IF EXISTS `crm_staff`;
CREATE TABLE `crm_staff`  (
  `staffId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `loginName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `loginPwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staffName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `onDutyDate` date DEFAULT NULL,
  `postId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`staffId`) USING BTREE,
  INDEX `postId`(`postId`) USING BTREE,
  CONSTRAINT `crm_staff_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `crm_post` (`postId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_staff
-- ----------------------------
INSERT INTO `crm_staff` VALUES ('2c9091c14c78e58b014c78e5c32a0000', 'jack', '827ccb0eea8a706c4c34a16891f84e7b', '管理员', NULL, NULL, NULL);
INSERT INTO `crm_staff` VALUES ('2c9091c14c78e58b014c78e759b40006', 'rose', 'ec6a6536ca304edf844d1d248a4f08dc', '肉丝', '女', '2013-04-16', '3fc33ec5-75b1-4d69-957b-aa1e2b6f74e6');
INSERT INTO `crm_staff` VALUES ('2c9091c14c78e58b014c78e7ecd90007', 'tom', '2e99bf4e42962410038bc6fa4ce40d97', '汤姆', '女', '2014-04-24', '2c9091c14c78e58b014c78e6f2340005');
INSERT INTO `crm_staff` VALUES ('639a54a6-3520-4f2e-ba7e-138196902a71', 'wuhongyu', '81dc9bdb52d04dc20036dbd8313ed055', '吴宏宇', '男', '2018-04-10', '2c9091c14c78e58b014c78e6d4510004');
INSERT INTO `crm_staff` VALUES ('cf604f72-bdff-4f41-8469-9c559ec766ed', 'zhaohuan', '81dc9bdb52d04dc20036dbd8313ed055', '赵欢', '男', '2018-04-02', '2c9091c14c78e58b014c78e6f2340005');

-- ----------------------------
-- Table structure for crm_station
-- ----------------------------
DROP TABLE IF EXISTS `crm_station`;
CREATE TABLE `crm_station`  (
  `stationId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `studentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staffId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `beforeClassId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `afterClassId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`stationId`) USING BTREE,
  INDEX `studentId`(`studentId`) USING BTREE,
  INDEX `staffId`(`staffId`) USING BTREE,
  INDEX `beforeClassId`(`beforeClassId`) USING BTREE,
  INDEX `afterClassId`(`afterClassId`) USING BTREE,
  CONSTRAINT `crm_station_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `crm_student` (`studentId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_station_ibfk_2` FOREIGN KEY (`staffId`) REFERENCES `crm_staff` (`staffId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_station_ibfk_3` FOREIGN KEY (`beforeClassId`) REFERENCES `crm_class` (`classId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_station_ibfk_4` FOREIGN KEY (`afterClassId`) REFERENCES `crm_class` (`classId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_station
-- ----------------------------
INSERT INTO `crm_station` VALUES ('62a3e282-a029-41bc-9c40-e317334e21a6', '9a53e329-6e32-445c-b070-c106c8a198b4', '转班', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-19 16:11:47', '2c9091c14c78e58b014c78e9601a000c', '2c9091c14c78e58b014c78e9106e000b');
INSERT INTO `crm_station` VALUES ('87853921-931f-433b-83c3-a4059d3c3a25', '04b49119-bfd2-450e-9253-46429a6d3dd9', '升级', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-20 11:49:07', '2c9091c14c78e58b014c78e9106e000b', '2c9091c14c78e58b014c78e9601a000c');
INSERT INTO `crm_station` VALUES ('fa64823a-9a9f-4a80-8159-d993fc7f117a', '98965f45-1be0-4d87-b43c-4b675c273bdc', '升级', '2c9091c14c78e58b014c78e5c32a0000', '2018-04-20 11:49:59', '2c9091c14c78e58b014c78e9106e000b', '1caa2824-0075-4bd0-8ca4-4435660214e4');

-- ----------------------------
-- Table structure for crm_student
-- ----------------------------
DROP TABLE IF EXISTS `crm_student`;
CREATE TABLE `crm_student`  (
  `studentId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mustTuition` int(255) DEFAULT NULL,
  `actualTuition` int(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `professional` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `identityAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `homeTelephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `homeContact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `classId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `referId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`studentId`) USING BTREE,
  INDEX `classId`(`classId`) USING BTREE,
  INDEX `referId`(`referId`) USING BTREE,
  CONSTRAINT `crm_student_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `crm_class` (`classId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `crm_student_ibfk_2` FOREIGN KEY (`referId`) REFERENCES `crm_refer` (`referId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of crm_student
-- ----------------------------
INSERT INTO `crm_student` VALUES ('04b49119-bfd2-450e-9253-46429a6d3dd9', '毛毛', '15666666', '12345646', '45678915', '男', 2000, 2000, '115646@qq.com', '西安邮电大学', '本科', '信息工程', '西安', '西安', '测试数据1', '556465464', '爸爸', '升级', '2c9091c14c78e58b014c78e9601a000c', '2159e925-eb6f-4db0-975e-7a970a62a8cc', '2018-04-20 11:47:46');
INSERT INTO `crm_student` VALUES ('98965f45-1be0-4d87-b43c-4b675c273bdc', '赵欢', '456789465', '1231332123', '45645646', '男', 2000, 2000, '1115841@qq.com', '西安邮电大学', '本科', '信息工程', '西安', '西安', '测试小数据1', '15465465465', '爸爸', '毕业', '1caa2824-0075-4bd0-8ca4-4435660214e4', '57094588-5395-47fa-80ed-928e779167fd', '2018-04-20 11:48:37');
INSERT INTO `crm_student` VALUES ('9a53e329-6e32-445c-b070-c106c8a198b4', '吴宏宇', '156123456', '211224199611185239', '10000000', '男', 3000, 3000, '111111@qq.com', '西安邮电大学', '本科', '信息工程', '西安', '西安', '测试数据', '123456789', '王五', '退费', '2c9091c14c78e58b014c78e9106e000b', NULL, '2018-04-18 18:59:22');
INSERT INTO `crm_student` VALUES ('ab661f0f-4e8f-479f-a1bc-c22b57a23689', '李四', '15611111111', '1231354674879798', '11111111', '男', 2000, 1000, '45644456@qq.com', '西安邮电大学', '本科', '信息工程', '西安', '西安', '测试小数据', '1321345646', '爸爸', '新生', '2c9091c14c78e58b014c78e9106e000b', '125a0341c41b4f2baf972964c80dc2aa', '2018-04-20 11:36:45');

SET FOREIGN_KEY_CHECKS = 1;
