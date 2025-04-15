/*
 Navicat Premium Dump SQL

 Source Server         : datasets_db
 Source Server Type    : MariaDB
 Source Server Version : 101111 (10.11.11-MariaDB-0ubuntu0.24.04.2)
 Source Host           : 88.99.86.184:3306
 Source Schema         : datasets_db

 Target Server Type    : MariaDB
 Target Server Version : 101111 (10.11.11-MariaDB-0ubuntu0.24.04.2)
 File Encoding         : 65001

 Date: 15/04/2025 12:34:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ev_brands
-- ----------------------------
DROP TABLE IF EXISTS `ev_brands`;
CREATE TABLE `ev_brands`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `short_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`, `short_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 256 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ev_connectors
-- ----------------------------
DROP TABLE IF EXISTS `ev_connectors`;
CREATE TABLE `ev_connectors`  (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ev_sockets
-- ----------------------------
DROP TABLE IF EXISTS `ev_sockets`;
CREATE TABLE `ev_sockets`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_id` int(11) NULL DEFAULT NULL,
  `socket_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `charging_method` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `connector_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `power` double(10, 7) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29075 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ev_stations
-- ----------------------------
DROP TABLE IF EXISTS `ev_stations`;
CREATE TABLE `ev_stations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_number` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `city_id` int(11) NULL DEFAULT NULL,
  `district_id` int(11) NULL DEFAULT NULL,
  `station_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `is_private` tinyint(1) NULL DEFAULT 0,
  `brand_id` int(11) NULL DEFAULT NULL,
  `latitude` double(10, 7) NULL DEFAULT NULL,
  `longitude` double(10, 7) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `station_number`) USING BTREE,
  INDEX `station_no`(`station_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11341 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
