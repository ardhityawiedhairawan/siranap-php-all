/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : siranap

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-07-05 07:49:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bed_monitoring`
-- ----------------------------
DROP TABLE IF EXISTS `bed_monitoring`;
CREATE TABLE `bed_monitoring` (
  `kode_ruang` varchar(4) DEFAULT NULL,
  `tipe_pasien` varchar(4) DEFAULT NULL,
  `total_TT` varchar(4) DEFAULT NULL,
  `terpakai_male` varchar(4) DEFAULT NULL,
  `terpakai_female` varchar(4) DEFAULT NULL,
  `kosong_male` varchar(4) DEFAULT NULL,
  `kosong_female` varchar(4) DEFAULT NULL,
  `waiting` varchar(4) DEFAULT NULL,
  `tgl_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bed_monitoring
-- ----------------------------
INSERT INTO `bed_monitoring` VALUES ('0004', '0014', '18', '1', '3', '0', '10', '12', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0006', '68', '27', '20', '2', '2', '54', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0004', '9', '0', '9', '0', '0', '9', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0002', '0006', '10', '0', '0', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0000', '1', '1', '0', '0', '0', '1', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0013', '4', '1', '1', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0002', '0001', '14', '1', '5', '0', '0', '9', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0015', '6', '0', '1', '2', '3', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0011', '12', '5', '3', '0', '4', '12', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0008', '4', '2', '2', '0', '0', '4', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0002', '0015', '1', '0', '1', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0001', '28', '11', '12', '0', '0', '8', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0023', '4', '0', '4', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0003', '81', '33', '17', '0', '0', '61', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0001', '0006', '20', '0', '0', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0004', '28', '0', '26', '0', '0', '28', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0008', '0000', '12', '4', '4', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0014', '12', '0', '0', '0', '12', '12', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0003', '54', '16', '16', '0', '0', '32', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0000', '21', '3', '6', '0', '0', '7', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0001', '10', '4', '6', '0', '0', '8', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0006', '26', '6', '8', '0', '0', '16', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0015', '12', '1', '0', '6', '5', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0008', '0001', '11', '6', '1', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0002', '0000', '35', '11', '20', '0', '0', '35', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0004', '14', '0', '12', '0', '0', '14', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0014', '6', '2', '0', '0', '2', '4', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0000', '43', '14', '9', '0', '0', '8', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0011', '12', '6', '6', '0', '0', '12', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0011', '3', '0', '2', '0', '1', '3', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0008', '10', '8', '2', '0', '0', '10', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0003', '10', '6', '4', '0', '0', '7', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0006', '65', '23', '10', '5', '7', '51', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0003', '0015', '6', '2', '1', '2', '1', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0001', '0000', '41', '4', '21', '0', '0', '20', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0008', '12', '4', '2', '0', '0', '12', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0008', '0011', '20', '6', '9', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0008', '0006', '7', '4', '3', '0', '0', '0', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0005', '0001', '83', '29', '31', '0', '0', '66', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0004', '0013', '4', '0', '4', '0', '0', '4', '2017-07-04 14:48:09');
INSERT INTO `bed_monitoring` VALUES ('0002', '0014', '2', '1', '1', '0', '0', '0', '2017-07-04 14:48:09');