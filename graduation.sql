/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : graduation9

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-06-06 22:11:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `gm_chose`
-- ----------------------------
DROP TABLE IF EXISTS `gm_chose`;
CREATE TABLE `gm_chose` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `ptId` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `iphone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_chose
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_distribution`
-- ----------------------------
DROP TABLE IF EXISTS `gm_distribution`;
CREATE TABLE `gm_distribution` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `research` text COLLATE utf8_bin,
  `introduction` text COLLATE utf8_bin,
  `ask` text COLLATE utf8_bin,
  `information` text COLLATE utf8_bin,
  `num` int(11) DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teacher` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `score` float(11,1) DEFAULT NULL,
  `teacherName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_distribution
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_file`
-- ----------------------------
DROP TABLE IF EXISTS `gm_file`;
CREATE TABLE `gm_file` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `work` text COLLATE utf8_bin,
  `task` text COLLATE utf8_bin,
  `teacher` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `student` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `studentName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teacherName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_file
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_log`
-- ----------------------------
DROP TABLE IF EXISTS `gm_log`;
CREATE TABLE `gm_log` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `userName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `operation` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_log
-- ----------------------------
INSERT INTO `gm_log` VALUES ('00a3d3da7093425ca02ac3c8ea676c63', 'admin', '登录操作', '2020-05-24 10:07:29');
INSERT INTO `gm_log` VALUES ('07b5640b889442d39abb872c6322ff58', '10001', '登录操作', '2020-05-24 19:41:19');
INSERT INTO `gm_log` VALUES ('09300f668c5d44829c3c863ac00f367f', '3160701103', '登录操作', '2020-05-24 20:51:03');
INSERT INTO `gm_log` VALUES ('0b79ded011db4a08a42dc2d11db32b90', '10001', '登录操作', '2020-05-24 20:42:33');
INSERT INTO `gm_log` VALUES ('0c8efdfc977a4f80b63b5184063bc309', 'admin', '修改个人信息', '2020-05-18 11:40:09');
INSERT INTO `gm_log` VALUES ('0c9bef834ca74248a7e6b2cf984da42c', '10001', '登录操作', '2020-05-23 15:15:03');
INSERT INTO `gm_log` VALUES ('0d1b0de385a54adeb6f6e925aaf1456e', 'admin', '登录操作', '2020-05-26 09:30:58');
INSERT INTO `gm_log` VALUES ('0fd18e48195c4131968132d36c41b57c', 'admin', '登录操作', '2020-05-24 09:43:35');
INSERT INTO `gm_log` VALUES ('0ff9ac3976d149b9bfad3c4614dab96c', '10002', '登录操作', '2020-05-18 12:51:04');
INSERT INTO `gm_log` VALUES ('11931b556e4546ac8b92908e3fd65d1e', 'admin', '登录操作', '2020-05-23 15:20:44');
INSERT INTO `gm_log` VALUES ('12c0f05cd3c4495aa517ca3fd0d8eb6a', '10001', '登录操作', '2020-05-24 20:38:29');
INSERT INTO `gm_log` VALUES ('15a57c9d966f4886b09af4d07dbb80ea', 'teacher2', '登录操作', '2020-05-18 11:38:27');
INSERT INTO `gm_log` VALUES ('15d55745e4a1496b812a90dab6c125ac', '10003', '登录操作', '2020-05-24 21:02:16');
INSERT INTO `gm_log` VALUES ('1bc6c4c8b0bd49748e45eca8dc1868f8', '10001', '登录操作', '2020-05-25 10:37:08');
INSERT INTO `gm_log` VALUES ('1c4cf8e16a1545faae207615fccd1b67', 'admin', '修改个人信息', '2020-05-18 11:41:57');
INSERT INTO `gm_log` VALUES ('1d1d8a5a0743495882a3e989a543e9bc', '10003', '登录操作', '2020-05-24 20:58:00');
INSERT INTO `gm_log` VALUES ('1ed4d6b52c9f4f928f228d6a61c227fe', 'admin', '登录操作', '2020-05-20 14:51:05');
INSERT INTO `gm_log` VALUES ('238e54c4fc264eb98ea118ff4cb9797a', 'admin', '登录操作', '2020-05-24 20:36:03');
INSERT INTO `gm_log` VALUES ('24befd56001c44a3825f01afedb839f6', '3160701016', '登录操作', '2020-05-23 22:21:11');
INSERT INTO `gm_log` VALUES ('24db50ca03104d0ba22089d8cf5abb2e', '100001', '登录操作', '2020-05-26 10:57:08');
INSERT INTO `gm_log` VALUES ('291fc5f402ef4334b9c4180b6a77f671', '3160701056', '登录操作', '2020-05-26 09:34:26');
INSERT INTO `gm_log` VALUES ('292270c77d1f44de9d9fa953f2f7a236', '10004', '登录操作', '2020-05-25 10:42:06');
INSERT INTO `gm_log` VALUES ('29edc8680a5c49c4a3cf90190dd5614b', '3160701010', '登录操作', '2020-05-18 18:43:16');
INSERT INTO `gm_log` VALUES ('2a75e61a67d0458dbfd1aba7368bf309', '3160701099', '登录操作', '2020-05-25 10:03:38');
INSERT INTO `gm_log` VALUES ('2bdfa70c53354d728d18f9d63e977884', '10003', '登录操作', '2020-05-25 10:03:23');
INSERT INTO `gm_log` VALUES ('30c022416cad487194e3ae6cd642bec3', '3160701057', '登录操作', '2020-05-26 09:35:11');
INSERT INTO `gm_log` VALUES ('316f2996082b4603b928d79ab2dfd448', '100001', '登录操作', '2020-05-25 10:58:32');
INSERT INTO `gm_log` VALUES ('319c8b0289784380a70418b53963a93d', '10004', '登录操作', '2020-05-25 10:53:36');
INSERT INTO `gm_log` VALUES ('325979e0c28f4f8393bfaf2eb9de2652', 'admin', '登录操作', '2020-05-25 10:29:56');
INSERT INTO `gm_log` VALUES ('346edb4846c64ff98f3ad240e407deb7', '3160701078', '登录操作', '2020-05-25 10:48:21');
INSERT INTO `gm_log` VALUES ('35fb4259b36b4c60b6c2137858e7c361', 'admin', '登录操作', '2020-05-24 16:25:34');
INSERT INTO `gm_log` VALUES ('3998c0f508b041c69385ddd48fec31cd', '3160701016', '登录操作', '2020-05-18 18:21:54');
INSERT INTO `gm_log` VALUES ('3b4cccea745447cc9af6c011121c14ae', '10004', '登录操作', '2020-05-25 10:49:38');
INSERT INTO `gm_log` VALUES ('3be3842b055d4d1c975f4cfb3b4749a8', '3160701010', '登录操作', '2020-05-20 14:57:59');
INSERT INTO `gm_log` VALUES ('3d09365bf8cb4da49bd480ce371783a3', '10001', '登录操作', '2020-05-23 13:07:54');
INSERT INTO `gm_log` VALUES ('3d4ceddc3d994dfc87f9ed7933e04fc5', '3160701012', '登录操作', '2020-05-18 12:49:06');
INSERT INTO `gm_log` VALUES ('4338f10e69ca4149a894a02089a3f056', '3160701058', '登录操作', '2020-05-26 09:36:33');
INSERT INTO `gm_log` VALUES ('435382c48cc8409da4a83d8c86eaf4a0', 'admin', '登录操作', '2020-05-24 12:12:52');
INSERT INTO `gm_log` VALUES ('45171f236ede4e98a0d3626b2d146aeb', '100001', '登录操作', '2020-05-18 11:53:00');
INSERT INTO `gm_log` VALUES ('4682be9680e145f7bfa26fbc1cc9bccf', 'admin', '登录操作', '2020-05-18 11:11:34');
INSERT INTO `gm_log` VALUES ('473bebf6d8874ca8ab5aeed595d42952', '10004', '登录操作', '2020-05-25 11:00:18');
INSERT INTO `gm_log` VALUES ('48d0e1f7e4734e6a9332dd79eb384285', 'admin', '登录操作', '2020-05-24 20:34:39');
INSERT INTO `gm_log` VALUES ('4a051331b9ae47feb2d44d00b33360f9', '3160701079', '登录操作', '2020-05-25 10:56:04');
INSERT INTO `gm_log` VALUES ('4a4169442d1b4ba0a43e0e725d192f95', 'admin', '登录操作', '2020-05-23 21:50:25');
INSERT INTO `gm_log` VALUES ('5227a91a137d4118bcf754c0965697a0', 'admin', '登录操作', '2020-05-24 20:49:25');
INSERT INTO `gm_log` VALUES ('5635b163c8594c378c021b44bac7c85d', 'admin', '登录操作', '2020-05-18 11:18:42');
INSERT INTO `gm_log` VALUES ('564f77140bfa4e0b97a7ab740ef21779', '3160701016', '登录操作', '2020-05-18 18:43:02');
INSERT INTO `gm_log` VALUES ('56badb8f45414b54a6069f6e495742be', '3160701078', '登录操作', '2020-05-25 10:39:58');
INSERT INTO `gm_log` VALUES ('57812fa596fb4e71b206a5e1d7f7a12e', 'admin', '修改个人信息', '2020-05-18 11:49:50');
INSERT INTO `gm_log` VALUES ('590d7c524c5a4b308cc825da8081ef0a', '3160703132', '登录操作', '2020-05-24 20:41:07');
INSERT INTO `gm_log` VALUES ('598722c3962c4d6e87d0b1daa3449d88', '10001', '登录操作', '2020-05-24 09:32:18');
INSERT INTO `gm_log` VALUES ('5a058238bd074b25bea5cd85c0dcd006', '3160701016', '登录操作', '2020-05-18 13:04:11');
INSERT INTO `gm_log` VALUES ('5c168ab090e04a5ea68110fd4e291eac', '100001', '登录操作', '2020-05-25 11:01:05');
INSERT INTO `gm_log` VALUES ('5c4fd56f247c43809157b86118c82bd5', 'admin', '登录操作', '2020-05-25 10:27:47');
INSERT INTO `gm_log` VALUES ('5d58a45d85984571bfdc96c3ecba9a3d', '10003', '登录操作', '2020-05-24 20:50:04');
INSERT INTO `gm_log` VALUES ('5ea4cb3609b44236a440289ca6cad754', 'admin', '登录操作', '2020-05-24 19:42:44');
INSERT INTO `gm_log` VALUES ('5ed8240ab926472fa6e0768ee2f5afb7', '100001', '登录操作', '2020-05-18 12:55:40');
INSERT INTO `gm_log` VALUES ('60c49ee2ead64ede9b65ad7852843a04', '10001', '登录操作', '2020-05-24 20:43:42');
INSERT INTO `gm_log` VALUES ('618106cc470549729a20a06432c58dcc', '3160701010', '登录操作', '2020-05-18 12:45:11');
INSERT INTO `gm_log` VALUES ('61d72a6959f945d7b56368ca7a4180e8', '3160701059', '登录操作', '2020-05-26 09:37:11');
INSERT INTO `gm_log` VALUES ('6218409e23e945d7889cff4bba2cf499', '3160701100', '登录操作', '2020-05-24 20:51:28');
INSERT INTO `gm_log` VALUES ('62cf10e9f7894b928504eaac0aee3118', '3160701100', '登录操作', '2020-05-24 20:40:22');
INSERT INTO `gm_log` VALUES ('6347f2710dd343f5bd0e1ea2d5f16d57', 'admin', '登录操作', '2020-05-25 10:09:44');
INSERT INTO `gm_log` VALUES ('65fbb57eeb374496bc36b2925cef7ce8', '3160701101', '登录操作', '2020-05-24 20:51:41');
INSERT INTO `gm_log` VALUES ('6dd04dd324874d14bf9d55265c7ef493', '3160701011', '登录操作', '2020-05-18 12:20:18');
INSERT INTO `gm_log` VALUES ('6f0651cb6dc047699d217d4dd3655052', '10002', '登录操作', '2020-05-18 13:01:12');
INSERT INTO `gm_log` VALUES ('6fcaef1076dd429f93c04a465be42c87', '3160701061', '登录操作', '2020-05-26 09:38:32');
INSERT INTO `gm_log` VALUES ('7010cbdbfa1a4580b243afa683713ada', '3160701078', '登录操作', '2020-05-25 10:46:34');
INSERT INTO `gm_log` VALUES ('7360eb8297994a69b07895d600aa86c3', '10001', '登录操作', '2020-05-26 10:56:39');
INSERT INTO `gm_log` VALUES ('76f977110a584ed6abe3ba219c8109a6', '10001', '登录操作', '2020-05-25 10:39:32');
INSERT INTO `gm_log` VALUES ('77e00c8034584b48bb7ce453b2357498', '10001', '登录操作', '2020-05-18 12:50:27');
INSERT INTO `gm_log` VALUES ('7b247d7dde354afeaa21296a84bd5310', '3160701079', '登录操作', '2020-05-25 10:49:59');
INSERT INTO `gm_log` VALUES ('7b2aab182ee1427785e14233dd95fe51', '10003', '登录操作', '2020-05-24 20:59:01');
INSERT INTO `gm_log` VALUES ('7b8bad517a8a495882201fd84775b5ca', '10001', '登录操作', '2020-05-24 20:40:42');
INSERT INTO `gm_log` VALUES ('7dc91244231a4844bfe5a9b1bca80d55', 'admin', '登录操作', '2020-05-18 19:00:16');
INSERT INTO `gm_log` VALUES ('7e01c7d6441a48faa4583b44ef56c300', '10005', '登录操作', '2020-05-26 09:46:21');
INSERT INTO `gm_log` VALUES ('7ec9fbdb15904eff86602cbad9c68bd2', '3160701099', '登录操作', '2020-05-25 10:02:42');
INSERT INTO `gm_log` VALUES ('817d260c535d49abba4540f9ff0557a9', 'teacher1', '登录操作', '2020-05-18 11:40:42');
INSERT INTO `gm_log` VALUES ('81e6621de7934620983510e1b355aaa8', '100001', '登录操作', '2020-05-23 22:04:28');
INSERT INTO `gm_log` VALUES ('86e7c5409c45416e8ad3147f9cab81b5', '10001', '登录操作', '2020-05-18 13:02:11');
INSERT INTO `gm_log` VALUES ('875bd361de2e40949abdb64ea0cd8e12', '3160701016', '登录操作', '2020-05-18 13:03:02');
INSERT INTO `gm_log` VALUES ('892c4b37545f47d69b12d514acec902d', 'admin', '登录操作', '2020-05-24 20:29:00');
INSERT INTO `gm_log` VALUES ('89824411798142afa7a878b40435a485', '100001', '登录操作', '2020-05-18 12:55:04');
INSERT INTO `gm_log` VALUES ('91bf77c84bbe44b9a8424502fea7ec0b', '10001', '登录操作', '2020-05-18 11:50:06');
INSERT INTO `gm_log` VALUES ('92f7ce2ec9ff45f1aa1639b71a7dc305', '10001', '登录操作', '2020-05-18 18:58:27');
INSERT INTO `gm_log` VALUES ('931bdc2620fb433bb959c0ee39de4bab', 'admin', '登录操作', '2020-05-26 09:45:19');
INSERT INTO `gm_log` VALUES ('9419a9008c40490ab95fb2c2b0abe9c3', '10002', '登录操作', '2020-05-18 11:52:23');
INSERT INTO `gm_log` VALUES ('97c59990fba84b038c500a23e34fa10e', 'admin', '修改个人信息', '2020-05-18 11:41:32');
INSERT INTO `gm_log` VALUES ('990dd096828a4707ad53e5b1a199b012', '3160701010', '登录操作', '2020-05-18 12:56:15');
INSERT INTO `gm_log` VALUES ('9b7ad5ba83744f1faba4309e99b814b9', 'admin', '登录操作', '2020-05-18 11:41:01');
INSERT INTO `gm_log` VALUES ('9fcd3b68a0e14f16990a60053ca04a66', 'teacher1', '登录操作', '2020-05-18 11:20:59');
INSERT INTO `gm_log` VALUES ('a0e2338ecbd44ba8ab2ad09c91a9bff3', '3160701079', '登录操作', '2020-05-25 10:53:10');
INSERT INTO `gm_log` VALUES ('a9351316a0b44fc0a86bc1587f5eea9e', '10001', '登录操作', '2020-05-18 13:03:52');
INSERT INTO `gm_log` VALUES ('ab692070308742679b3413b7dd745f70', '3160701062', '登录操作', '2020-05-26 09:39:05');
INSERT INTO `gm_log` VALUES ('abc23c96f4eb461f9e165afaf7c709f0', 'admin', '登录操作', '2020-05-24 20:07:32');
INSERT INTO `gm_log` VALUES ('ac66c9f2afbc4bfdafdfb2dc866b3aaf', '10001', '登录操作', '2020-05-24 17:22:40');
INSERT INTO `gm_log` VALUES ('afce78994174409981020902399f90a1', '10002', '登录操作', '2020-05-18 12:55:58');
INSERT INTO `gm_log` VALUES ('aff9e05132b44befa660f86d7c094f2b', '10002', '登录操作', '2020-05-18 12:54:17');
INSERT INTO `gm_log` VALUES ('b0472559a295443aa467b4fdf0ec9ebf', '10001', '登录操作', '2020-05-23 22:00:59');
INSERT INTO `gm_log` VALUES ('b0ad5b4ec28c4b5ca5f65b1da864f9f8', 'admin', '修改个人信息', '2020-05-18 11:43:23');
INSERT INTO `gm_log` VALUES ('b1780f953a134d74928e8b05c5be0906', '10004', '登录操作', '2020-05-25 10:41:04');
INSERT INTO `gm_log` VALUES ('b19a3e7763b249998e8558381f0b897f', '100001', '登录操作', '2020-05-23 22:00:28');
INSERT INTO `gm_log` VALUES ('b2d5ebd0ca064927a63d457d60774354', '3160701016', '登录操作', '2020-05-23 15:15:31');
INSERT INTO `gm_log` VALUES ('b348ea543ed4449dbcc6bff6039ee5ee', 'admin', '修改个人信息', '2020-05-18 11:43:03');
INSERT INTO `gm_log` VALUES ('b6894154431f4147a7e0a002819927c2', 'admin', '修改个人信息', '2020-05-24 17:02:11');
INSERT INTO `gm_log` VALUES ('b6cf15e40de24dc0bc2a2fdbbc151e93', '3160701100', '登录操作', '2020-05-24 20:58:16');
INSERT INTO `gm_log` VALUES ('b74307a83c114c0eb8b672f082d0e87a', 'admin', '登录操作', '2020-05-18 11:16:50');
INSERT INTO `gm_log` VALUES ('b958d65fcee94ac28db66f1c74ba5306', '3160701100', '登录操作', '2020-05-24 20:41:34');
INSERT INTO `gm_log` VALUES ('ba9cd6ffac604202ac1891c5a2b9aa6b', '3160701011', '登录操作', '2020-05-18 12:21:10');
INSERT INTO `gm_log` VALUES ('bb8155a4252144cfbed3220c79dc4e9d', '3160701016', '登录操作', '2020-05-23 15:20:06');
INSERT INTO `gm_log` VALUES ('bc4dedc07be74db489e3ac6186e6bed3', '3160703132', '登录操作', '2020-05-24 20:39:49');
INSERT INTO `gm_log` VALUES ('bc98837a51634fa5a38af34d832d05f2', '10001', '登录操作', '2020-05-18 13:00:13');
INSERT INTO `gm_log` VALUES ('be423d9e852e4309b5099ea5ba2cc3d3', '100001', '登录操作', '2020-05-24 20:39:23');
INSERT INTO `gm_log` VALUES ('be50c1df77f24d6aaf5a1062f78f2804', '3160701079', '登录操作', '2020-05-25 10:42:18');
INSERT INTO `gm_log` VALUES ('bef1935f3d3d40ee9174a343bf0854e1', 'admin', '登录操作', '2020-05-26 09:35:58');
INSERT INTO `gm_log` VALUES ('bf07379ac9a64021898130c9745323e3', '3160701016', '登录操作', '2020-05-23 22:11:34');
INSERT INTO `gm_log` VALUES ('c1408049382c4df49613391dff5e7c38', 'admin', '登录操作', '2020-05-24 10:06:59');
INSERT INTO `gm_log` VALUES ('c1b2b278e7a845feaf8871995a1e7930', '3160701010', '登录操作', '2020-05-18 11:53:20');
INSERT INTO `gm_log` VALUES ('c218b0aedeb6451c86c3348c38f6c67c', '3160701100', '登录操作', '2020-05-24 20:57:13');
INSERT INTO `gm_log` VALUES ('c5e17f67e9e94600b368dd2d72731f43', '100001', '登录操作', '2020-05-24 20:59:27');
INSERT INTO `gm_log` VALUES ('c8d6b25dee634c20a1f1a9235682f2ed', '3160701010', '登录操作', '2020-05-20 15:01:37');
INSERT INTO `gm_log` VALUES ('c8f5432e25ee488bab2c2ff8b1ceaee4', '10004', '登录操作', '2020-05-25 10:50:17');
INSERT INTO `gm_log` VALUES ('c8f677ee6fd4490c9bc778dc7a3fe635', '3160701101', '登录操作', '2020-05-24 20:43:02');
INSERT INTO `gm_log` VALUES ('cb42e10d1a7c45c4b1ebd0457bba4b42', '3160701100', '登录操作', '2020-05-24 20:45:25');
INSERT INTO `gm_log` VALUES ('cd25952e5905494d80cb6a7b8ea6e849', '10004', '登录操作', '2020-05-25 10:55:35');
INSERT INTO `gm_log` VALUES ('cf316664837145abbb457b9a1dd65ce5', 'admin', '登录操作', '2020-05-26 10:44:54');
INSERT INTO `gm_log` VALUES ('d12ea370fe2746d7868d88d2b51d1c3b', 'admin', '登录操作', '2020-05-25 10:03:55');
INSERT INTO `gm_log` VALUES ('d2d2ce6c98bf4ff98e9ce935966a74e9', '10001', '登录操作', '2020-05-20 14:51:47');
INSERT INTO `gm_log` VALUES ('d31a70692dfa4c7fa7c312172ccffe53', 'admin', '登录操作', '2020-05-26 09:50:36');
INSERT INTO `gm_log` VALUES ('d5d789bc49fe4d60a698dff3453139fa', '10004', '登录操作', '2020-05-25 10:58:13');
INSERT INTO `gm_log` VALUES ('dac7903d48bc448295ac3503ac28c945', 'admin', '登录操作', '2020-05-18 11:17:49');
INSERT INTO `gm_log` VALUES ('dbc78b180b344a73b05d30adff0148fb', '3160701077', '登录操作', '2020-05-25 10:38:41');
INSERT INTO `gm_log` VALUES ('de1f7fce34ad4d82a893e998f24daac5', '3160701011', '登录操作', '2020-05-18 12:48:48');
INSERT INTO `gm_log` VALUES ('de4eda1ea34041b09d089ac108512423', '100001', '登录操作', '2020-05-25 10:04:11');
INSERT INTO `gm_log` VALUES ('dedad58c33c349ba90c0a132e890fa3c', 'admin', '登录操作', '2020-05-25 10:34:43');
INSERT INTO `gm_log` VALUES ('e00730e1f47c4916944ceb32e33ac50c', 'admin', '登录操作', '2020-05-26 09:39:52');
INSERT INTO `gm_log` VALUES ('e123edb73d51412c9d7960a43ea24254', '3160701010', '登录操作', '2020-05-25 09:59:12');
INSERT INTO `gm_log` VALUES ('e35eb40b5e1d40919796fbe6f6b635b5', '100001', '登录操作', '2020-05-24 21:00:58');
INSERT INTO `gm_log` VALUES ('e38fcdc8414346cba70aa263b21623c4', '100001', '登录操作', '2020-05-18 18:58:47');
INSERT INTO `gm_log` VALUES ('e58d53c43d7544df8d36a077c62d34ec', '3160701079', '登录操作', '2020-05-25 10:41:41');
INSERT INTO `gm_log` VALUES ('e5c067cf57b04abf94c765f7ed72191e', '10001', '登录操作', '2020-05-24 09:25:22');
INSERT INTO `gm_log` VALUES ('e5c46fe025d44324a30afd0e2a6e523a', '100001', '登录操作', '2020-05-18 12:54:00');
INSERT INTO `gm_log` VALUES ('e698f4df5e5f4f3b98765f6da395d2b1', '3160701013', '登录操作', '2020-05-18 12:49:22');
INSERT INTO `gm_log` VALUES ('e6bc9ccfa7ee41a9987755350eac0462', '10004', '登录操作', '2020-05-25 10:56:55');
INSERT INTO `gm_log` VALUES ('e726f1e53612442aa2aeda6a463cc4d3', '3160701103', '登录操作', '2020-05-24 20:49:02');
INSERT INTO `gm_log` VALUES ('e95a76af4262449b88cad8a66f9d707e', '100001', '登录操作', '2020-05-25 10:38:11');
INSERT INTO `gm_log` VALUES ('e96bd6980c6243bc9a077fa1417e4205', 'admin', '登录操作', '2020-05-18 11:49:36');
INSERT INTO `gm_log` VALUES ('ec3daf5bbb0547baa9387c384ee952b6', '3160701079', '登录操作', '2020-05-25 10:57:27');
INSERT INTO `gm_log` VALUES ('ede6e4862b2149e795e7474cb590eca5', '3160701010', '登录操作', '2020-05-20 14:53:34');
INSERT INTO `gm_log` VALUES ('eefa53b865bd4ec0ba89a0b0c5aa38ae', '3160701062', '登录操作', '2020-05-26 09:43:25');
INSERT INTO `gm_log` VALUES ('f0abf345f7574a43844cf7eede3a2ad7', '10001', '登录操作', '2020-05-23 15:19:08');
INSERT INTO `gm_log` VALUES ('f1a1290987204e5d962436cef50bd302', '3160701060', '登录操作', '2020-05-26 09:37:57');
INSERT INTO `gm_log` VALUES ('f44e2297b71e498d94bf59c4ae2c8518', 'admin', '登录操作', '2020-05-28 15:52:02');
INSERT INTO `gm_log` VALUES ('f610577b38c544ee82f951880e1eeae4', 'admin', '修改个人信息', '2020-05-18 11:49:56');
INSERT INTO `gm_log` VALUES ('f65ca0e826d34973b97863069f9fb8d0', '100001', '登录操作', '2020-05-18 12:58:40');
INSERT INTO `gm_log` VALUES ('f68b4294f1654e50a0a2e86e5b44f5e5', 'admin', '登录操作', '2020-05-18 11:38:49');
INSERT INTO `gm_log` VALUES ('f7c987baf3ad47b1a2eb8dfb3088da04', '3160701078', '登录操作', '2020-05-25 10:39:15');
INSERT INTO `gm_log` VALUES ('f80ccce5d284441cb9cb4212b731c6ee', '10001', '登录操作', '2020-05-23 22:22:16');
INSERT INTO `gm_log` VALUES ('fb829b065d004baf8610edbda6fb60aa', '3160701055', '登录操作', '2020-05-26 09:33:24');
INSERT INTO `gm_log` VALUES ('fc740f0f25c3451bb62540c7c36736fc', '10002', '登录操作', '2020-05-18 12:55:16');
INSERT INTO `gm_log` VALUES ('fdd48b7ff7d8477f86a84b31ab2bb07a', '100001', '登录操作', '2020-05-20 14:54:55');
INSERT INTO `gm_log` VALUES ('ff01d6363163422a958f755b03c43570', '3160701079', '登录操作', '2020-05-25 10:48:38');

-- ----------------------------
-- Table structure for `gm_news`
-- ----------------------------
DROP TABLE IF EXISTS `gm_news`;
CREATE TABLE `gm_news` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `categoryName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `userName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `digest` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `realName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_news
-- ----------------------------
INSERT INTO `gm_news` VALUES ('1248534af5fb4f83b938332bbc98df34', '通知公告', '关于做好2020届本科毕业设计(论文)工作安排的通知', '2020-05-28 15:53:19', 'admin', 0x3C703E3C6120636C6173733D22696E666F726D2220687265663D22687474703A2F2F616870752E636F2E636E6B692E6E65742F44657461696C732E68746D6C3F64703D636F26616D703B6E6F7469636549643D3826616D703B7479706549643D373122207469746C653D22E585B3E4BA8EE5819AE5A5BD32303230E5B18AE69CACE7A791E6AF95E4B89AE8AEBEE8AEA128E8AEBAE6968729E5B7A5E4BD9CE5AE89E68E92E79A84E9809AE79FA522207461726765743D225F626C616E6B223EE585B3E4BA8EE5819AE5A5BD32303230E5B18AE69CACE7A791E6AF95E4B89AE8AEBEE8AEA128E8AEBAE6968729E5B7A5E4BD9CE5AE89E68E92E79A84E9809AE79FA53C2F613E3C2F703E, '', '关于做好2020届本科毕业设计(论文)工作安排的通知', '管理员');
INSERT INTO `gm_news` VALUES ('1fb2f427a6b848259b020581060f429c', '通知公告', '安徽工程大学本科毕业设计（论文）管理办法', '2020-05-18 11:14:19', 'admin', 0x3C702069643D22704E6F74696365436F6E74656E74223EE5AE89E5BEBDE5B7A5E7A88BE5A4A7E5ADA6E69CACE7A791E6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E7AEA1E79086E58A9EE6B3953C2F703E3C703E3C7370616E20636C6173733D22223E3C2F7370616E3EE4B88BE8BDBDE5AE89E5BEBDE5B7A5E7A88BE5A4A7E5ADA6E69CACE7A791E6AF95E4B89AE8AEBEE8AEA128E8AEBAE6968729E7AEA1E79086E58A9EE6B3952E7064663C2F703E, '', '安徽工程大学本科毕业设计（论文）管理办法下载安徽工程大学本科毕业设计(论文)管理办法.pdf', '管理员');
INSERT INTO `gm_news` VALUES ('2dc7a8acf459453b94d397f577cd5329', '使用手册', '选题阶段------指导教师操作手册', '2020-05-18 11:15:31', 'admin', 0x3C703EE98089E9A298E998B6E6AEB52D2D2D2D2D2DE68C87E5AFBCE69599E5B888E6938DE4BD9CE6898BE5868C3C2F703E3C703E3C62723E3C2F703E, '', '选题阶段------指导教师操作手册', '管理员');
INSERT INTO `gm_news` VALUES ('56e5f341c0274ebdbc943c53ac7d82a4', '通知公告', '关于毕业设计（论文）指导教师评阅打分的操作说明', '2020-05-28 15:52:55', 'admin', 0x3C703E3C6120636C6173733D22696E666F726D2220687265663D22687474703A2F2F616870752E636F2E636E6B692E6E65742F44657461696C732E68746D6C3F64703D636F26616D703B6E6F7469636549643D323526616D703B7479706549643D373122207469746C653D22E585B3E4BA8EE6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E68C87E5AFBCE69599E5B888E8AF84E99885E68993E58886E79A84E6938DE4BD9CE8AFB4E6988E22207461726765743D225F626C616E6B223EE585B3E4BA8EE6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E68C87E5AFBCE69599E5B888E8AF84E99885E68993E58886E79A84E6938DE4BD9CE8AFB4E6988E3C2F613E3C2F703E, '', '关于毕业设计（论文）指导教师评阅打分的操作说明', '管理员');
INSERT INTO `gm_news` VALUES ('6068e18b45894485bff8b7d6a1a6a5fe', '通知公告', '关于做好2020届本科毕业生毕业设计(论文)', '2020-05-18 11:12:42', 'admin', 0x3C7020636C6173733D224D736F4E6F726D616C223EE59084E5ADA6E999A2EFBC9A3C2F703E3C7020636C6173733D224D736F4E6F726D616C223EE6A0B9E68DAEE68891E6A0A1E69599E5ADA6E8AEA1E58892E5AE89E68E92EFBC8C32303230E5B18AE69CACE7A791E6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E5B7A5E4BD9CE58DB3E5B086E5BC80E5A78BE38082E8AFB7E6A0B9E68DAEE5ADA6E999A2E69599E5ADA6E5B7A5E4BD9CE5AE9EE99985E5928CE59084E4B893E4B89AE789B9E782B9EFBC8CE5819AE5A5BD32303230E5B18AE6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E59084E9A1B9E5B7A5E4BD9CE380823C2F703E3C7020636C6173733D224D736F4E6F726D616C223E3C62723E3C2F703E, '', '各学院：根据我校教学计划安排，2020届本科毕业设计（论文）工作即将开始。请根据学院教学工作实际和各专业特点，做好202', '管理员');
INSERT INTO `gm_news` VALUES ('630f3b3210cd46c6b55d86a74abd47a0', '使用手册', '专业负责人（教研室主任）操作手册', '2020-05-28 15:53:41', 'admin', 0x3C68333EE4B893E4B89AE8B49FE8B4A3E4BABAEFBC88E69599E7A094E5AEA4E4B8BBE4BBBBEFBC89E6938DE4BD9CE6898BE5868C3C2F68333E, '', '专业负责人（教研室主任）操作手册', '管理员');
INSERT INTO `gm_news` VALUES ('68fe73f2194744798c9615f575cea2d6', '通知公告', '如何登录系统', '2020-05-18 11:14:44', 'admin', 0x3C702069643D22704E6F74696365436F6E74656E74223EE5A682E4BD95E799BBE5BD95E7B3BBE7BB9F3C2F703E3C703E3C7370616E20636C6173733D22223E3C2F7370616E3EE4B88BE8BDBDE5A682E4BD95E799BBE5BD95E7B3BBE7BB9F2E7064663C2F703E, '', '如何登录系统下载如何登录系统.pdf', '管理员');
INSERT INTO `gm_news` VALUES ('8ba1ba757526476b8b8de755771c49c0', '通知公告', '指导教师后期操作指南（指导教师用）', '2020-05-28 15:52:46', 'admin', 0x3C703E3C6120636C6173733D22696E666F726D2220687265663D22687474703A2F2F616870752E636F2E636E6B692E6E65742F44657461696C732E68746D6C3F64703D636F26616D703B6E6F7469636549643D323426616D703B7479706549643D373122207469746C653D22E68C87E5AFBCE69599E5B888E5908EE69C9FE6938DE4BD9CE68C87E58D97EFBC88E68C87E5AFBCE69599E5B888E794A8EFBC8922207461726765743D225F626C616E6B223EE68C87E5AFBCE69599E5B888E5908EE69C9FE6938DE4BD9CE68C87E58D97EFBC88E68C87E5AFBCE69599E5B888E794A8EFBC893C2F613E3C2F703E, '', '指导教师后期操作指南（指导教师用）', '管理员');
INSERT INTO `gm_news` VALUES ('9174f84e868e407194fe87f90ceb1e1f', '使用手册', '选题阶段----学生操作手册', '2020-05-18 11:15:19', 'admin', 0x3C703E3C7370616E3EE98089E9A298E998B6E6AEB52D2D2D2DE5ADA6E7949FE6938DE4BD9CE6898BE5868C3C2F7370616E3E3C2F703E, '', '选题阶段----学生操作手册', '管理员');
INSERT INTO `gm_news` VALUES ('9a6eed57be9d4bd384f6f903c73fc971', '通知公告', '关于毕业设计（论文）评阅教师打分的操作说明', '2020-05-28 15:53:11', 'admin', 0x3C703E3C6120636C6173733D22696E666F726D2220687265663D22687474703A2F2F616870752E636F2E636E6B692E6E65742F44657461696C732E68746D6C3F64703D636F26616D703B6E6F7469636549643D323626616D703B7479706549643D373122207469746C653D22E585B3E4BA8EE6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E8AF84E99885E69599E5B888E68993E58886E79A84E6938DE4BD9CE8AFB4E6988E22207461726765743D225F626C616E6B223EE585B3E4BA8EE6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E8AF84E99885E69599E5B888E68993E58886E79A84E6938DE4BD9CE8AFB4E6988E3C2F613E3C2F703E, '', '关于毕业设计（论文）评阅教师打分的操作说明', '管理员');
INSERT INTO `gm_news` VALUES ('b50714b2dece4ec58ab9a2536cf52ee8', '通知公告', '通知公告', '2020-05-24 20:38:04', 'admin', 0xE9809AE79FA5E585ACE5918AE4BFA1E681AF, '', '通知公告信息', '管理员');
INSERT INTO `gm_news` VALUES ('f214fef72f7a43da9910b6aa4d1ef0c2', '通知公告', '关于2020届本科毕业设计（论文）查重范围、内容及操作方式的补充说明', '2020-05-28 15:52:35', 'admin', 0x3C68333EE585B3E4BA8E32303230E5B18AE69CACE7A791E6AF95E4B89AE8AEBEE8AEA1EFBC88E8AEBAE69687EFBC89E69FA5E9878DE88C83E59BB4E38081E58685E5AEB9E58F8AE6938DE4BD9CE696B9E5BC8FE79A84E8A1A5E58585E8AFB4E6988E3C2F68333E, '', '关于2020届本科毕业设计（论文）查重范围、内容及操作方式的补充说明', '管理员');

-- ----------------------------
-- Table structure for `gm_newscategory`
-- ----------------------------
DROP TABLE IF EXISTS `gm_newscategory`;
CREATE TABLE `gm_newscategory` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_newscategory
-- ----------------------------
INSERT INTO `gm_newscategory` VALUES ('72976848164b473fbd9a6d9060bcceae', '使用手册');
INSERT INTO `gm_newscategory` VALUES ('7b5a219c167c4d6ca2f15db7717b6c5f', '通知公告');

-- ----------------------------
-- Table structure for `gm_permission`
-- ----------------------------
DROP TABLE IF EXISTS `gm_permission`;
CREATE TABLE `gm_permission` (
  `permissionId` varchar(36) NOT NULL,
  `permissionName` varchar(255) NOT NULL,
  `permissionMark` varchar(255) DEFAULT NULL,
  `permissionType` varchar(255) DEFAULT NULL,
  `parentId` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `lastTime` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_permission
-- ----------------------------
INSERT INTO `gm_permission` VALUES ('3', '系统设置', 'menu:sysSet', 'menu', '1', '/wbem/', '5', '1', '2020-03-03 11:22:50', '2020-03-03 11:22:50', '');
INSERT INTO `gm_permission` VALUES ('5', '资源管理', 'menu:sysSet:org:org', 'menu', '3', '/menu/menuManagerHouse.do', '0', '1', '2020-03-03 11:39:03', '2020-03-03 11:39:03', '');
INSERT INTO `gm_permission` VALUES ('6', '角色管理', 'menu:sysSet:module:module:module', 'menu', '3', '/module/moduleManagerHouse.do', '30', '1', '2020-03-03 11:38:43', '2020-03-03 11:38:43', '');
INSERT INTO `gm_permission` VALUES ('7', '用户管理', 'menu:sysSet:user:user', 'menu', '3', '/user/userManagerHouse.do', '5', '1', '2020-03-03 11:40:30', '2020-03-03 11:40:30', '');
INSERT INTO `gm_permission` VALUES ('1', '菜单顶级', 'subsystem:system', 'subsystem', '0', '', '1000', '1', '2020-03-03 11:41:36', '2020-03-03 11:41:36', 'nothing');
INSERT INTO `gm_permission` VALUES ('4', '日志管理', 'menu:sysSet:log', 'menu', '3', '/log/index.do', null, '1', '2020-03-04 18:34:48', null, null);
INSERT INTO `gm_permission` VALUES ('8', '内容管理', 'menu:info', 'menu', '1', '', null, '1', '2020-03-04 18:55:35', null, null);
INSERT INTO `gm_permission` VALUES ('9', '通知公告', 'menu:info:lunBo', 'menu', '8', '/news/index.do', null, '1', '2020-03-04 18:56:01', null, null);
INSERT INTO `gm_permission` VALUES ('10', '网站设置', 'menu:sysSet:webSite', 'menu', '3', '/wbeSet/wbeParameter.do', null, '1', '2020-03-06 22:21:00', null, null);
INSERT INTO `gm_permission` VALUES ('22', '登录注册', 'menu:exploit:loginReg', 'menu', '21', '/wbeSet/loginReg.do', null, '1', '2020-04-03 14:41:25', null, null);
INSERT INTO `gm_permission` VALUES ('23', '主题设置', 'menu:exploit:arguments', 'menu', '21', '/wbeSet/arguments.do', null, '1', '2020-04-03 15:44:17', null, null);
INSERT INTO `gm_permission` VALUES ('24', '师生双选管理', 'menu:subject', 'menu', '1', null, null, '1', '2020-04-14 12:47:11', null, null);
INSERT INTO `gm_permission` VALUES ('25', '申报课题列表', 'menu:subject:distribution', 'menu', '24', '/distribution/index.do', null, '1', '2020-04-14 12:49:56', null, null);
INSERT INTO `gm_permission` VALUES ('26', '申报课题', 'menu:subject:addDis', 'menu', '24', '/distribution/addPage.do', null, '1', '2020-04-14 12:50:32', null, null);
INSERT INTO `gm_permission` VALUES ('27', '教师新增选题', 'menu:subject:addIsu', 'menu', '24', '/issue/addPage.do', null, '1', '2020-04-14 13:46:59', null, null);
INSERT INTO `gm_permission` VALUES ('28', '选题列表', 'menu:subject:issue', 'menu', '24', '/issue/index.do', null, '1', '2020-04-14 13:57:52', null, null);
INSERT INTO `gm_permission` VALUES ('29', '过程文档管理', 'menu:file', 'menu', '1', null, null, '1', '2020-04-14 16:24:20', null, null);
INSERT INTO `gm_permission` VALUES ('30', '文档列表', 'menu:file:index', 'menu', '29', '/file/index.do', null, '1', '2020-04-14 16:24:51', null, null);
INSERT INTO `gm_permission` VALUES ('31', '提交文档', 'menu:file:add', 'menu', '29', '/file/addPage.do', null, '1', '2020-04-14 16:28:34', null, null);
INSERT INTO `gm_permission` VALUES ('32', '答辩组/成绩管理', 'menu:end', 'menu', '1', null, null, '1', '2020-04-14 17:13:53', null, null);
INSERT INTO `gm_permission` VALUES ('33', '安排答辩组', 'menu:end:addReply', 'menu', '32', '/reply/addPage.do', null, '1', '2020-04-14 17:14:35', null, null);
INSERT INTO `gm_permission` VALUES ('34', '查看答辩组', 'menu:end:indexReply', 'menu', '32', '/reply/index.do', null, '1', '2020-04-14 17:15:12', null, null);
INSERT INTO `gm_permission` VALUES ('35', '查看成绩', 'menu:end:look', 'menu', '32', '/distribution/look.do', null, '1', '2020-04-14 18:42:21', null, null);

-- ----------------------------
-- Table structure for `gm_reply`
-- ----------------------------
DROP TABLE IF EXISTS `gm_reply`;
CREATE TABLE `gm_reply` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `place` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `groupUser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `teachers` text COLLATE utf8_bin,
  `students` text COLLATE utf8_bin,
  `studentsName` text COLLATE utf8_bin,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `gm_role`
-- ----------------------------
DROP TABLE IF EXISTS `gm_role`;
CREATE TABLE `gm_role` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `role` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_role
-- ----------------------------
INSERT INTO `gm_role` VALUES ('1', '管理员', '所拥有权限由超级管理员决定');
INSERT INTO `gm_role` VALUES ('2', '学生', null);
INSERT INTO `gm_role` VALUES ('3', '教师', null);
INSERT INTO `gm_role` VALUES ('4', '专业负责人', null);

-- ----------------------------
-- Table structure for `gm_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `gm_role_permission`;
CREATE TABLE `gm_role_permission` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `permissionId` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_role_permission
-- ----------------------------
INSERT INTO `gm_role_permission` VALUES ('1', '1', '1');
INSERT INTO `gm_role_permission` VALUES ('2', '1', '2');
INSERT INTO `gm_role_permission` VALUES ('3', '1', '3');
INSERT INTO `gm_role_permission` VALUES ('4', '1', '4');
INSERT INTO `gm_role_permission` VALUES ('6', '1', '6');
INSERT INTO `gm_role_permission` VALUES ('7', '1', '7');
INSERT INTO `gm_role_permission` VALUES ('586', '1', '10');
INSERT INTO `gm_role_permission` VALUES ('588', '1', '12');
INSERT INTO `gm_role_permission` VALUES ('589', '1', '13');
INSERT INTO `gm_role_permission` VALUES ('590', '1', '14');
INSERT INTO `gm_role_permission` VALUES ('596', '1', '16');
INSERT INTO `gm_role_permission` VALUES ('597', '1', '19');
INSERT INTO `gm_role_permission` VALUES ('599', '1', '8');
INSERT INTO `gm_role_permission` VALUES ('602', '1', '15');
INSERT INTO `gm_role_permission` VALUES ('603', '1', '18');
INSERT INTO `gm_role_permission` VALUES ('605', '1', '22');
INSERT INTO `gm_role_permission` VALUES ('606', '1', '23');
INSERT INTO `gm_role_permission` VALUES ('616', '1', '9');
INSERT INTO `gm_role_permission` VALUES ('619', '1', '25');
INSERT INTO `gm_role_permission` VALUES ('620', '1', '26');
INSERT INTO `gm_role_permission` VALUES ('621', '1', '24');
INSERT INTO `gm_role_permission` VALUES ('622', '2', '24');
INSERT INTO `gm_role_permission` VALUES ('623', '2', '25');
INSERT INTO `gm_role_permission` VALUES ('624', '2', '26');
INSERT INTO `gm_role_permission` VALUES ('625', '3', '24');
INSERT INTO `gm_role_permission` VALUES ('626', '3', '25');
INSERT INTO `gm_role_permission` VALUES ('627', '1', '27');
INSERT INTO `gm_role_permission` VALUES ('628', '3', '27');
INSERT INTO `gm_role_permission` VALUES ('629', '1', '28');
INSERT INTO `gm_role_permission` VALUES ('630', '2', '28');
INSERT INTO `gm_role_permission` VALUES ('631', '3', '28');
INSERT INTO `gm_role_permission` VALUES ('632', '4', '24');
INSERT INTO `gm_role_permission` VALUES ('633', '4', '28');
INSERT INTO `gm_role_permission` VALUES ('634', '2', '29');
INSERT INTO `gm_role_permission` VALUES ('635', '2', '30');
INSERT INTO `gm_role_permission` VALUES ('636', '2', '31');
INSERT INTO `gm_role_permission` VALUES ('637', '3', '29');
INSERT INTO `gm_role_permission` VALUES ('638', '3', '30');
INSERT INTO `gm_role_permission` VALUES ('639', '4', '29');
INSERT INTO `gm_role_permission` VALUES ('640', '4', '30');
INSERT INTO `gm_role_permission` VALUES ('641', '1', '29');
INSERT INTO `gm_role_permission` VALUES ('642', '1', '30');
INSERT INTO `gm_role_permission` VALUES ('643', '1', '31');
INSERT INTO `gm_role_permission` VALUES ('644', '1', '32');
INSERT INTO `gm_role_permission` VALUES ('645', '1', '33');
INSERT INTO `gm_role_permission` VALUES ('646', '1', '34');
INSERT INTO `gm_role_permission` VALUES ('647', '2', '32');
INSERT INTO `gm_role_permission` VALUES ('648', '2', '34');
INSERT INTO `gm_role_permission` VALUES ('649', '3', '32');
INSERT INTO `gm_role_permission` VALUES ('650', '3', '34');
INSERT INTO `gm_role_permission` VALUES ('651', '4', '32');
INSERT INTO `gm_role_permission` VALUES ('652', '4', '33');
INSERT INTO `gm_role_permission` VALUES ('653', '4', '34');
INSERT INTO `gm_role_permission` VALUES ('654', '1', '35');
INSERT INTO `gm_role_permission` VALUES ('655', '2', '35');
INSERT INTO `gm_role_permission` VALUES ('656', '3', '35');
INSERT INTO `gm_role_permission` VALUES ('657', '4', '35');
INSERT INTO `gm_role_permission` VALUES ('658', '2', '1');
INSERT INTO `gm_role_permission` VALUES ('659', '3', '1');
INSERT INTO `gm_role_permission` VALUES ('660', '4', '1');
INSERT INTO `gm_role_permission` VALUES ('661', '4', '9');
INSERT INTO `gm_role_permission` VALUES ('662', '4', '8');

-- ----------------------------
-- Table structure for `gm_user`
-- ----------------------------
DROP TABLE IF EXISTS `gm_user`;
CREATE TABLE `gm_user` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `userName` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `iphone` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0表示已删除',
  `realName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `imgUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_user
-- ----------------------------
INSERT INTO `gm_user` VALUES ('00004b961fa445a8bc90767422ac3552', '10039', '123456', '15555330342', '10039@ahpu.cn', '2020-05-25 10:35:07', null, '1', '姚菲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('00463e9b63ae4c319dc76fc761acff3a', '3160701080', '123456', '15555330376', '3160701080@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '何嘉茂', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('00824a9114c742ffaf653e8748f0c697', '3160701088', '123456', '15555330384', '3160701088@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '孙茂德', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0130a9e313f54a90bbc4548001aa31ec', '3160704054', '123456', '17775482017', '3160704054@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '何飞航', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('014054d6b70d4e6dafbd9d58bdd7215b', '10033', '123456', '15555330336', '10033@ahpu.cn', '2020-05-25 10:35:07', null, '1', '唐毓', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0540a3bebe68418c8bec658943f8e1ff', '3160701089', '123456', '15555330385', '3160701089@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '邵昂然', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0555993799e649d48e8673f1c61abd6e', '3160701233', '123456', '16666330328', '3160701233@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '顾水风', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('062e59c6c0e241a29059607cde5c6b21', '10063', '123456', '15555330366', '10063@ahpu.cn', '2020-05-25 10:35:07', null, '1', '姚念', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('06dc4a93737b488c8881120c432084bf', '3160701010', '123456', '15555330306', '3160701010@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-25 09:59:12', '1', '董博厚', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('06fa33b3443f444188c46db56d368595', '3160701234', '123456', '16666330329', '3160701234@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '马冰月', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('076bbc0234074218ae999afa6c8dfb19', '3160704007', '123456', '17775481970', '3160704007@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '姚康裕', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('096cdb1d421d4927bfe4285566e73072', '10001', '123456', '15555330306', '1@qq.com', '2020-04-14 13:00:37', '2020-05-26 10:56:39', '1', '段宾白', '男', '安徽省芜湖市', '/resource/image/default.png');
INSERT INTO `gm_user` VALUES ('09e140be6f444de8957205f6d599acec', '3160701103', '123456', '15555330399', '3160701103@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-24 20:51:03', '1', '乔和韵', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0adf1b40b73945f4a953355ff234fa7d', '3160701097', '123456', '15555330393', '3160701097@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '董良骥', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0b5fa2968fc84f38a562c22020fdb948', '3160704027', '123456', '17775481990', '3160704027@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '朱明辉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0b9889ae92bf480cba9f826d3615a769', '3160704019', '123456', '17775481982', '3160704019@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '毛景铄', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0c76260274e54a2da93f5c37b8d885b2', '10080', '123456', '15555330383', '10080@ahpu.cn', '2020-05-25 10:35:07', null, '1', '马菡', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0cd989bfaf704e8bab1bcaedac4a6072', '3160701244', '123456', '16666330339', '3160701244@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '袁萧曼', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0d46924e24504c12b82b0b2d41a4a257', '3160704076', '123456', '17775482039', '3160704076@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '董靖琪', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0df95f0b5d0b47d6bc4c38002f94911d', '3160704025', '123456', '17775481988', '3160704025@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '熊逸仙', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0e02f8d8ba224fb98d86d55fd5d5454b', '3160701280', '123456', '16666330375', '3160701280@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '薛菁菁', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0ec418e9a84e4ff18b1285dfc017eea3', '3160701025', '123456', '15555330321', '3160701025@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-13 10:40:09', '1', '萧修永', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('0fad34721a9e4a49b315e16ac58c4bf4', '10062', '123456', '15555330365', '10062@ahpu.cn', '2020-05-25 10:35:07', null, '1', '赖悦', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1', 'admin', 'admin', '15555330306', '1@qq.com', '2020-03-13 17:07:35', '2020-05-28 15:52:02', '1', '管理员', '男', '安徽省芜湖市', '/image/timg (2).jpg');
INSERT INTO `gm_user` VALUES ('10747a843b1b4bdb9ec1b4c6eb52d2ba', '3160701013', '123456', '15555330309', '3160701013@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-18 12:49:22', '1', '周英达', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('10d8ff5bdf2a4756b27b092f44594ac1', '3160704045', '123456', '17775482008', '3160704045@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '熊阳嘉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('12024193600b433f908f5a0c6b3bce50', '3160701310', '123456', '16666330405', '3160701310@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '程莞尔', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('12b498c9a8ab49a4a01180698092f663', '3160701055', '123456', '15555330351', '3160701055@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:33:24', '1', '潘正青', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('135a40e2241a4c2e86f1da21974fa632', '3160701081', '123456', '15555330377', '3160701081@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '戴正初', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1379c98cce704b1a9677f10c958d902d', '3160701266', '123456', '16666330361', '3160701266@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '乔肖倩', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1379e4eaeb9f4be6b992a620b9947044', '3160704065', '123456', '17775482028', '3160704065@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '许元洲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('149cc5c1d8cc4701be231020c994ac1f', '3160704094', '123456', '17775482057', '3160704094@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '戴修雅', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('14c8d713556c4ec79d5ea213ad80b3e4', '3160701219', '123456', '16666330314', '3160701219@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '龙以蓝', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('14e75fe6e8324e128e5489c1fc506b36', '3160701091', '123456', '15555330387', '3160701091@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '赵俊艾', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('14f0980f8dd8497cb56b0556c7722f99', '3160701249', '123456', '16666330344', '3160701249@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '陆赫然', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('15321371ffad40b9b3d2d2b2c15d0c5c', '3160701094', '123456', '15555330390', '3160701094@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '钱星阑', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('154a9335102e4f4ea503d10941ece8b8', '3160701093', '123456', '15555330389', '3160701093@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '张华容', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1590b89a749c4ce8a903b24743873e17', '3160704008', '123456', '17775481971', '3160704008@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '姜英武', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('15e737f65b724bc6a1cc21ea8fad96bd', '10089', '123456', '15555330392', '10089@ahpu.cn', '2020-05-25 10:35:07', null, '1', '贺卿', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('17cb887f8c9a482096bbfde4febba5b5', '3160704089', '123456', '17775482052', '3160704089@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '贺高卓', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1930cb0666e94d3c8c0572a35b4c9e86', '3160701018', '123456', '15555330314', '3160701018@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-12 16:54:29', '1', '潘良朋', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1983daa321ec4c4fb41721414fe5a949', '3160701268', '123456', '16666330363', '3160701268@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '余寻雪', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1a62e430f5b54c7d846c33520e0b3492', '3160701049', '123456', '15555330345', '3160701049@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '郭宏旷', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1ad71da1bee14af79629825897405791', '3160704055', '123456', '17775482018', '3160704055@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '马涵育', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1bb1ca818f454537b70e5bbbded5a412', '3160701290', '123456', '16666330385', '3160701290@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '冯丹秋', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1ce028afad92452fb365908d13a88ff1', '3160701291', '123456', '16666330386', '3160701291@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '康安茹', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1ce8c65dc0c14ceca3795af7baa821d8', '10066', '123456', '15555330369', '10066@ahpu.cn', '2020-05-25 10:35:07', null, '1', '冯娉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('1f366b59db8942928bd59b348bd1f2f2', '100003', '123456', '17775481963', '417600203@qq.com', '2020-05-25 10:35:27', null, '1', '王老师', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('201cbe98b8794e70a0047f8d011328a6', '3160704020', '123456', '17775481983', '3160704020@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '万乐音', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('21e3f7841c194484b88446c2a169330f', '10002', '123456', '15555330306', '1@qq.com', '2020-04-14 13:00:49', '2020-05-18 13:01:12', '1', '杜可', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('22b542c7f05d442cb3a059be4eca049d', '3160701224', '123456', '16666330319', '3160701224@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '侯正平', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('249ba27db80b40299755ff3a5e6d4db9', '10008', '123456', '15555330311', '10008@ahpu.cn', '2020-05-25 10:35:06', null, '1', '龚芝', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('24c925051c064f29b5eaa1cf6e86d278', '3160704066', '123456', '17775482029', '3160704066@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '赖文石', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2557033b1c15457aa8509927f4306892', '3160701066', '123456', '15555330362', '3160701066@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '邓欣可', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('25593c83195c49e5aa429c707fed5756', '3160701269', '123456', '16666330364', '3160701269@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '石飞兰', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('25a6d7cc5ecd48cb8affd6b4da6b0c2d', '10061', '123456', '15555330364', '10061@ahpu.cn', '2020-05-25 10:35:07', null, '1', '卢珆', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2610ae2c3ec941ab99875907daff20e8', '3160704023', '123456', '17775481986', '3160704023@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '萧康平', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('270c3096df1b426db36b803dff6656cf', '10037', '123456', '15555330340', '10037@ahpu.cn', '2020-05-25 10:35:07', null, '1', '潘汇', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('270f0c32c9224aec9cc4fc7a3e52f3c7', '3160701016', '123456', '15555330312', '3160701016@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-23 22:21:11', '1', '史力言', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('283ed83f6e4841a0938c8f8a29ec01ce', '10059', '123456', '15555330362', '10059@ahpu.cn', '2020-05-25 10:35:07', null, '1', '谢薇', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('29c7c9fdb97b469b82c8dcbeb760505c', '3160701014', '123456', '15555330310', '3160701014@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-13 22:52:32', '1', '冯高扬', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('29eeca9306f740caab1f3afdc6a267ba', '10021', '123456', '15555330324', '10021@ahpu.cn', '2020-05-25 10:35:06', null, '1', '白平', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2a231cadf7674a078a749755ac0a2262', '3160704014', '123456', '17775481977', '3160704014@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '林鸿宝', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2acba612f2dc4f4c9e7b40faeaa2d8d7', '3160701083', '123456', '15555330379', '3160701083@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '姚力勤', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2b6f4875f4024f2d9d357c18495b8122', '10057', '123456', '15555330360', '10057@ahpu.cn', '2020-05-25 10:35:07', null, '1', '卢桂', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2bbd73d968a548c998bd3583f4105c2b', '10028', '123456', '15555330331', '10028@ahpu.cn', '2020-05-25 10:35:07', null, '1', '周珠', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2c55a023713d453f9014fe446f99e252', '3160701246', '123456', '16666330341', '3160701246@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '董荇怡', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2c7830c30d824d769c249b91ad707097', '3160701032', '123456', '15555330328', '3160701032@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '赵冠宇', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2cc8e2c757c642d2a438f6ed57a43d7f', '3160704035', '123456', '17775481998', '3160704035@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '沈锐意', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2cfd345cf9504c0295024620dc5e9523', '3160701239', '123456', '16666330334', '3160701239@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '任葱娟', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2d7bc2a3d8704d5fa6ac4722c39f89b5', '3160701217', '123456', '16666330312', '3160701217@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '金杭英', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2d8eed517dc045e39875aa8e066d013d', '3160701262', '123456', '16666330357', '3160701262@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '赖琳淼', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2ddc707e6fbd4bf88e3f960dacc64f82', '3160701100', '123456', '15555330396', '3160701100@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-24 20:58:16', '1', '王文光', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2dde60cec72b40c4a225af994cc20ed0', '10035', '123456', '15555330338', '10035@ahpu.cn', '2020-05-25 10:35:07', null, '1', '谢冉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2e0046749c774d40bc6b98b0667d6831', '3160704024', '123456', '17775481987', '3160704024@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '赵坚秉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2e1ff987499449cba9c5051ffb6da6c5', '3160701067', '123456', '15555330363', '3160701067@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '黎建安', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2e9808e6622b46bdafafc9190f3c5bf9', '3160704011', '123456', '17775481974', '3160704011@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '董成双', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2ec11f2221e94737899a1ca03eba05c4', '10004', '123456', '15555330307', '10004@ahpu.cn', '2020-05-25 10:35:06', '2020-05-25 11:00:18', '1', '吕璐', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('2f9f82d12a3641a684b1200f842d76f0', '10016', '123456', '15555330319', '10016@ahpu.cn', '2020-05-25 10:35:06', null, '1', '丁颜', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3162370f39314a1a85df30602db9ae75', '3160704046', '123456', '17775482009', '3160704046@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '周力勤', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('31836b68875a4d599dc1b98ead2f4264', '3160701273', '123456', '16666330368', '3160701273@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '蒋绮文', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3238cb6f5b0e43269eb57ab6f40d6f80', '10095', '123456', '15555330398', '10095@ahpu.cn', '2020-05-25 10:35:07', null, '1', '江凰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3299f3efb28846a682dc7995857b5cb2', '3160701024', '123456', '15555330320', '3160701024@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-12 18:00:01', '1', '何涵映', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3352e992b01a4ce98c7201621c8e0e7b', '3160701101', '123456', '15555330397', '3160701101@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-24 20:51:41', '1', '郝宏壮', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('336e4555765d454eb78629062e455634', '3160701229', '123456', '16666330324', '3160701229@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '史布欣', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('33af4aaafbdd49d9b94e6b1e8907f12e', '10091', '123456', '15555330394', '10091@ahpu.cn', '2020-05-25 10:35:07', null, '1', '曾亚', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('34d67330624f47c38c0eb60d69ad8ff9', '3160704060', '123456', '17775482023', '3160704060@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '杨建华', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('350f9328a1be4a21ba5fa4aa69c3be51', '10052', '123456', '15555330355', '10052@ahpu.cn', '2020-05-25 10:35:07', null, '1', '杜姣', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('355d9417ce164c1d9e6e7404e7146139', '3160701059', '123456', '15555330355', '3160701059@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:37:11', '1', '戴兴怀', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('35b7fba17ad545d1944e563fd8057dc1', '3160701263', '123456', '16666330358', '3160701263@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '吕布欣', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('35bed44990164cc5b21b91e1f1e8cf7d', '3160701069', '123456', '15555330365', '3160701069@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '黄永嘉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('35ff3970006a4b1b92f606fbfd06b19e', '3160701282', '123456', '16666330377', '3160701282@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '郝秦澈', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3603d8abd05049ecb7ab301b24caf28a', '3160701301', '123456', '16666330396', '3160701301@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '孟锦凡', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('36348346167243acb97914abf5867961', '10087', '123456', '15555330390', '10087@ahpu.cn', '2020-05-25 10:35:07', null, '1', '蒋瓶', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('363f970db36e4bfb97bed3964dec3257', '3160701060', '123456', '15555330356', '3160701060@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:37:57', '1', '邹建中', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('37ae6a9fd9694f3591a101c8e28d47a0', '3160704021', '123456', '17775481984', '3160704021@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '史高扬', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('392987b7417541bbb44f9df4c70b5916', '10025', '123456', '15555330328', '10025@ahpu.cn', '2020-05-25 10:35:06', null, '1', '徐玉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('39356767308343989f838a44cc582c5b', '3160701033', '123456', '15555330329', '3160701033@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '苏乐水', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3a036a6f9d064ad486096e52d45b8c9d', '3160701061', '123456', '15555330357', '3160701061@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:38:32', '1', '顾康德', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3ae0c8054bd34fee8abe4d94c78b70cc', '3160701232', '123456', '16666330327', '3160701232@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '黄访蕊', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3b7e7d70229246e2b6919538599038b4', '3160704009', '123456', '17775481972', '3160704009@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '刘睿思', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3bf0d8a05a6b4de79a057bebfaa32961', '3160701236', '123456', '16666330331', '3160701236@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '郭千山', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3cb08648fdab41e6a9450803f0aaa32f', '10075', '123456', '15555330378', '10075@ahpu.cn', '2020-05-25 10:35:07', null, '1', '林嘉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3d7efa27648d4adf97727af2cc17479c', '10069', '123456', '15555330372', '10069@ahpu.cn', '2020-05-25 10:35:07', null, '1', '江娅', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3d92f4dc9dea49b5a79585b8377e6a0b', '3160704028', '123456', '17775481991', '3160704028@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '程乐音', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3e38ec7d130641a8aa57e3abea05c11a', '3160704038', '123456', '17775482001', '3160704038@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '汤乐天', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('3e479294cff44562b275b34122d9d512', '3160701281', '123456', '16666330376', '3160701281@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '王柯拉', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('402f093fb58448189fcb7da848f789e9', '3160701052', '123456', '15555330348', '3160701052@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '康苑博', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('40b075be049c4c7faf850a2b042c7bf5', '10078', '123456', '15555330381', '10078@ahpu.cn', '2020-05-25 10:35:07', null, '1', '苏心', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4207602b0d8d48d692f4e3c9ee823454', '3160701086', '123456', '15555330382', '3160701086@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '潘向阳', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('421bc78ffc8a4bb594c87c5d51d3b0e5', '10099', '123456', '15555330402', '10099@ahpu.cn', '2020-05-25 10:35:07', null, '1', '孙冰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('449df34c3dc944ca8080d803f7ff0678', '100002', '123456', '15555330306', '3160701210@qq.com', '2020-05-13 17:07:05', null, '1', '于平', '男', 'anhui', null);
INSERT INTO `gm_user` VALUES ('44eafd84d914484f8467671d7623011a', '3160704062', '123456', '17775482025', '3160704062@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '孔和顺', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('465717ee161740e2a031ba48f95c7acf', '3160701223', '123456', '16666330318', '3160701223@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '许倡文', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('47aba1d0719d4c0f9cc5535def5d50e6', '3160701082', '123456', '15555330378', '3160701082@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '郑彭越', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('47b51156e50e438cbb622b80801d0d72', '3160701011', '123456', '15555330307', '3160701011@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-18 12:48:48', '1', '蒋博赡', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('485601d693d1478ca4b7cc9511cc824a', '3160701227', '123456', '16666330322', '3160701227@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '唐金玉', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('48d4ec7d13df4206addb4291709a0ccd', '3160701030', '123456', '15555330326', '3160701030@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '罗志强', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4a65532138b640d68a1aee2ddeeeebf5', '3160704029', '123456', '17775481992', '3160704029@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '于烨伟', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4b4a05ee0388453c8fce20f84125e86c', '3160701027', '123456', '15555330323', '3160701027@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '杨飞鸿', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4b80fb44bc88454fa0e2b6d0f5b6cc47', '10034', '123456', '15555330337', '10034@ahpu.cn', '2020-05-25 10:35:07', null, '1', '金巧', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4c42339438d74c0ca4c4340f00470500', '3160704079', '123456', '17775482042', '3160704079@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '顾乐人', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4c9bd5a433784429b8aeaac83a58008c', '10014', '123456', '15555330317', '10014@ahpu.cn', '2020-05-25 10:35:06', null, '1', '叶珊', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4d446149634a402392f1760827853ff3', '3160701302', '123456', '16666330397', '3160701302@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '万兰娜', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4d6960b403be4cf087efbf37852b4de8', '3160701023', '123456', '15555330319', '3160701023@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-12 17:32:35', '1', '余作人', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4ebb0cc62fd14f0786eaf0f4164d6560', '3160701213', '123456', '16666330308', '3160701213@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '邱忆之', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('4ec85d4cc08048b8be19d708fe2e09e3', '3160701218', '123456', '16666330313', '3160701218@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '康书南', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('500711f94c964e8099efa5b01c4daae9', '10023', '123456', '15555330326', '10023@ahpu.cn', '2020-05-25 10:35:06', null, '1', '邱萱', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5017930e22b641fba2f4df5096a7d40d', '3160701283', '123456', '16666330378', '3160701283@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '徐碧琳', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('50276bd275e245b98c613c5c062d813e', '3160704056', '123456', '17775482019', '3160704056@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '乔文昌', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('502fc3ea767949fe8bde6c5d6084aa76', '3160701254', '123456', '16666330349', '3160701254@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '邱斐斐', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5042155f9e0245709ff006b2f0f5587c', '3160701276', '123456', '16666330371', '3160701276@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '贺绮兰', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('50a62e3b8b2f482fbee025efdad4a402', '10098', '123456', '15555330401', '10098@ahpu.cn', '2020-05-25 10:35:07', null, '1', '杜滟', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('512094eb60534ee99c0f85ae00428334', '3160701286', '123456', '16666330381', '3160701286@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '金闲华', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('514aee902eea433cbe96d653e46f3d6d', '10055', '123456', '15555330358', '10055@ahpu.cn', '2020-05-25 10:35:07', null, '1', '曹琳', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('529d615a5beb4a6fa316ee616cc3f86c', '3160704074', '123456', '17775482037', '3160704074@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '苏文翰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('52f7f830bfbf4cefb7b3655bff126cbb', '10030', '123456', '15555330333', '10030@ahpu.cn', '2020-05-25 10:35:07', null, '1', '侯婉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('53afb0a07a1447a7811b99d2acb3c729', '10020', '123456', '15555330323', '10020@ahpu.cn', '2020-05-25 10:35:06', null, '1', '廖梅', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5510525c29444ea8a99acb6983ffffd9', '10068', '123456', '15555330371', '10068@ahpu.cn', '2020-05-25 10:35:07', null, '1', '贾莲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('556b1518084c49bf9b4ddb81083c60ac', '10101', '123456', '15555330404', '10101@ahpu.cn', '2020-05-25 10:35:07', null, '1', '武爽', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5642b3cdd17844829aa655f6f1e0694f', '3160701068', '123456', '15555330364', '3160701068@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '黎永逸', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('56f0305fc8e3434f8d7e32ee20d58ff1', '3160701307', '123456', '16666330402', '3160701307@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '林夜山', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5758b10d7ebf4d91876111c8f28a44eb', '3160701047', '123456', '15555330343', '3160701047@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '吕宇航', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5761719a29564f1f9d0475c9c6344269', '3160704064', '123456', '17775482027', '3160704064@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '白睿好', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5767e60fc96848cca4d31c749ec08520', '3160701056', '123456', '15555330352', '3160701056@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:34:26', '1', '崔波光', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('58646f176d6143c9b54b69476c5da2de', '3160704075', '123456', '17775482038', '3160704075@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '万光赫', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('59404793dda24d82859f96ad88ca29d1', '3160704044', '123456', '17775482007', '3160704044@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '郭承恩', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5988bc75400b463dbf00af237e099047', '3160701105', '123456', '15555330401', '3160701105@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-11 17:40:19', '1', '龚英耀', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5a5a6827c36445a0881c74b723728a42', '3160701267', '123456', '16666330362', '3160701267@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '陆善玲', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5a6717b2691c46b189c012648c6d54df', '10019', '123456', '15555330322', '10019@ahpu.cn', '2020-05-25 10:35:06', null, '1', '武冰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5cc120313147424d9aea5ec4cc94db42', '10084', '123456', '15555330387', '10084@ahpu.cn', '2020-05-25 10:35:07', null, '1', '傅曼', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5e06d5c69fb74db7aabc221aa7685d8c', '10006', '123456', '15555330309', '10006@ahpu.cn', '2020-05-25 10:35:06', null, '1', '刘佳', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5ecb0b9dad3849bc9d5abcf7d8947a12', '3160701289', '123456', '16666330384', '3160701289@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '赖靖雁', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('5ffdb0314edc433aac1eb40a6558ffe8', '10077', '123456', '15555330380', '10077@ahpu.cn', '2020-05-25 10:35:07', null, '1', '林枫', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('603aeea9d67846488e8ad7a102eadefe', '3160701107', '123456', '15555330403', '3160701107@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '程丰茂', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('60d7d945869341be99eee6ebf2acd331', '3160704034', '123456', '17775481997', '3160704034@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '丁英武', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6137142036614b659750c7fec84e6936', '3160701070', '123456', '15555330366', '3160701070@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '曾明达', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('618d9586e01b41bebadd0f6e86e36900', '10097', '123456', '15555330400', '10097@ahpu.cn', '2020-05-25 10:35:07', null, '1', '贺菡', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('62bb084e5601478a8eef7c9db939f514', '3160701287', '123456', '16666330382', '3160701287@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '罗晴波', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('62e6ea59256642fe8048c2f6bb7f9362', '3160704049', '123456', '17775482012', '3160704049@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '王阳曦', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('62ecb275678d4b9ca729b3ee57b4491d', '3160701051', '123456', '15555330347', '3160701051@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '刘浩歌', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6398b4b2f1824d378282258820d40bb6', '3160701028', '123456', '15555330324', '3160701028@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '王文赋', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('63f097f6428e47b9abc01a1c65c66a70', '3160704047', '123456', '17775482010', '3160704047@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '梁伟茂', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('64c8abcbcf684426b9d7141d394c14ab', '3160701092', '123456', '15555330388', '3160701092@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '方永望', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('652566edc59149ca889c6c782b28ebd8', '3160701257', '123456', '16666330352', '3160701257@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '邵香梅', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('668beea5ca2942d9b0ffc56deda16611', '3160701261', '123456', '16666330356', '3160701261@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '沈清佳', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('680c2e10021647b6bd0990ab292ec15f', '3160701271', '123456', '16666330366', '3160701271@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '邹丽泽', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('684f774354e246bbb84d324fa553a9ed', '3160701243', '123456', '16666330338', '3160701243@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '彭小雨', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6881a300600c498d9020117d98232e64', '10050', '123456', '15555330353', '10050@ahpu.cn', '2020-05-25 10:35:07', null, '1', '邓念', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('68aadd02acbd4e20a805ddaad3dc4f19', '3160701045', '123456', '15555330341', '3160701045@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '江乐语', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('68cf0aede7984e45a6a22e30a10a17f1', '3160704052', '123456', '17775482015', '3160704052@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '汪荣轩', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('68f32c14e15f4081b3e6fa00320f8179', '3160704002', '123456', '17775481965', '3160704002@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '彭明达', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6991ac6b700d490a92c4aaba26d28688', '3160701037', '123456', '15555330333', '3160701037@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '薛宜年', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6b955078daf14175ada88b09ebf2481a', '3160704058', '123456', '17775482021', '3160704058@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '康良弼', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6ba54339ff1e440da1307004e9aae317', '10017', '123456', '15555330320', '10017@ahpu.cn', '2020-05-25 10:35:06', null, '1', '姜霓', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6bd987ca96ea43d5a503f4769f3a5516', '3160701212', '123456', '16666330307', '3160701212@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '唐语薇', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6c0ec1f76d334451814cf1254e6c0192', '10024', '123456', '15555330327', '10024@ahpu.cn', '2020-05-25 10:35:06', null, '1', '蒋钗', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6c16306596084b309c7da09ac82a471b', '10031', '123456', '15555330334', '10031@ahpu.cn', '2020-05-25 10:35:07', null, '1', '方梦', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6c42e21a983541678dedf60ccfaac192', '3160704061', '123456', '17775482024', '3160704061@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '熊俊语', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6c63c769c706452f8e843125fde3b861', '3160701057', '123456', '15555330353', '3160701057@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:35:11', '1', '陈自怡', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6d034971ffb94fad947fa5856ab2fc14', '10044', '123456', '15555330347', '10044@ahpu.cn', '2020-05-25 10:35:07', null, '1', '康俞', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6d4ed9abd20142619cdb1b97a6ed0b42', '3160704051', '123456', '17775482014', '3160704051@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '廖修杰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6d5cc422ee03466ebbe78f5dc2c2ea3f', '3160704095', '123456', '17775482058', '3160704095@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '蒋英资', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6e4f35f96f83412cbe2a2500099b3bc7', '10085', '123456', '15555330388', '10085@ahpu.cn', '2020-05-25 10:35:07', null, '1', '曹屏', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6f32220870e04bb39c8a419722159745', '3160701297', '123456', '16666330392', '3160701297@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '秦英莉', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('6fb8b7ffa47f42e0b7cc7261506ebd17', '3160704071', '123456', '17775482034', '3160704071@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '邱阳冰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('70938e078b264fb5aba1085ae6729c85', '3160701039', '123456', '15555330335', '3160701039@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '傅项明', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('70d8737d34fa4113aaad70e0608dfd60', '3160704063', '123456', '17775482026', '3160704063@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '郝天逸', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('70f814b90a224de0b92ad34fffae7ee0', '3160701108', '123456', '15555330404', '3160701108@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '高子明', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('71fac68306a1406d82337a2539ece590', '3160704036', '123456', '17775481999', '3160704036@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '宋嘉澍', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7217a65e005e4505ba6bc8a64d366cbf', '10045', '123456', '15555330348', '10045@ahpu.cn', '2020-05-25 10:35:07', null, '1', '毛毓', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('725dc349ae1a48d1847f13451e67e3db', '10047', '123456', '15555330350', '10047@ahpu.cn', '2020-05-25 10:35:07', null, '1', '易玲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('72810d41611142b7aefcb85cf2f9b079', '3160701074', '123456', '15555330370', '3160701074@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '萧理全', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('73065cc7b8e64502b0934243eaa89fd0', '10049', '123456', '15555330352', '10049@ahpu.cn', '2020-05-25 10:35:07', null, '1', '周儿', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('745d765c5d0c44f982edcf06ba2abef2', '3160701048', '123456', '15555330344', '3160701048@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '程宏爽', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('74cc7b9846fb4b58b56e2d2c5305c373', '3160704017', '123456', '17775481980', '3160704017@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '龙鸿德', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('75186c79e2d44ba0abf574dfb5cbe1e5', '3160701247', '123456', '16666330342', '3160701247@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '何丝琪', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('75b3aded3443454eb96befd8546841c3', '10090', '123456', '15555330393', '10090@ahpu.cn', '2020-05-25 10:35:07', null, '1', '尹妍', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7760ce7b35f94bb389b8bf73043125b6', '3160704077', '123456', '17775482040', '3160704077@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '曹高原', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('77b5a2bbf3cc438c988f678d15a74989', '3160701077', '123456', '15555330373', '3160701077@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-25 10:38:41', '1', '龚天华', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('78ed5a02ba334029a6b4bc288cae6bbf', '3160701053', '123456', '15555330349', '3160701053@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '苏意蕴', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('79112e46e3c942bc86502ba1ae1446aa', '100001', '123456', '15555330306', '1@qq.com', '2020-04-14 15:13:52', '2020-05-26 10:57:08', '1', '陆艺', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('797c2f91798644beb712db40af2488b0', '10093', '123456', '15555330396', '10093@ahpu.cn', '2020-05-25 10:35:07', null, '1', '谢华', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('79ca9a4eb0ce4a62b90fc824172adb4a', '3160704096', '123456', '17775482059', '3160704096@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '孔宏胜', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7a46c4feb0364957befd2122b3b4d8fb', '10070', '123456', '15555330373', '10070@ahpu.cn', '2020-05-25 10:35:07', null, '1', '侯彤', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7a5c047c94e743259f86aac7ccf4d7a5', '3160701222', '123456', '16666330317', '3160701222@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '董新语', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7ab46edd64484c359ad58d4258f0a945', '3160701240', '123456', '16666330335', '3160701240@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '方芷蕾', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7b625d89f6fd428a884c746beee033e2', '3160701299', '123456', '16666330394', '3160701299@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '郭献仪', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7c544ea2880c4982aa418b5b2564a12e', '3160704087', '123456', '17775482050', '3160704087@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '孟凯定', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7ca03333ac5441d39f41d82ab77b30c9', '3160704091', '123456', '17775482054', '3160704091@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '林天佑', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('7e286c9b9ec143b1a3afd7ab54e39271', '3160701260', '123456', '16666330355', '3160701260@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '王秀媚', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('803bd92685a941b587f918ae5583ac1a', '10043', '123456', '15555330346', '10043@ahpu.cn', '2020-05-25 10:35:07', null, '1', '孟飘', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('8067a1cafbf8484ba230447a08fa2ab8', '3160701295', '123456', '16666330390', '3160701295@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '赵浩丽', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('807751f5c41d4d60868398c575c65e40', '3160701226', '123456', '16666330321', '3160701226@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '蒋瑜璟', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('818b40c6b6934885b922c6c7a7106ede', '3160701062', '123456', '15555330358', '3160701062@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:43:25', '1', '吴英达', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('82f7c4d8cea4419c93dc076a4c8b51b2', '3160704022', '123456', '17775481985', '3160704022@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '金阳冰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('83bd8adb6afd43ce8e8b6cea6d3c2988', '3160701216', '123456', '16666330311', '3160701216@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '谢桐华', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('8595d90fb32f494fb33a0961a3839f91', '3160701292', '123456', '16666330387', '3160701292@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '林春芳', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('85c9157a58b54aa9b57602d40dc302b3', '3160701237', '123456', '16666330332', '3160701237@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '崔晓凡', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('87ce0c15cac34764a8735e5bb34cbbef', '10094', '123456', '15555330397', '10094@ahpu.cn', '2020-05-25 10:35:07', null, '1', '戴筠', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('884eb65726cd4e90bfe6cda69b25eef2', '3160701090', '123456', '15555330386', '3160701090@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '范锐泽', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('88d09fabf1a1469890bed9e1d64005ee', '10027', '123456', '15555330330', '10027@ahpu.cn', '2020-05-25 10:35:07', null, '1', '苏漩', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('88ec704edd9c4e41b60a65f76b60e9a2', '10079', '123456', '15555330382', '10079@ahpu.cn', '2020-05-25 10:35:07', null, '1', '廖晓', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('8a5b92bb0e044ab398f4f69e67af6bc3', '3160701272', '123456', '16666330367', '3160701272@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '范郁蓝', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('8b2d831b64144b39ab7465e9e8cb797f', '3160701274', '123456', '16666330369', '3160701274@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '秦含双', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('8cd4458081854eba8066a76facb7dcc5', '3160701264', '123456', '16666330359', '3160701264@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '蔡友蕊', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('8efc70e2cb7049a89a39c165b3ddfdd8', '3160704086', '123456', '17775482049', '3160704086@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '胡国安', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('8fc7b4d3a32d4569a07091ae9272e2e5', '3160701073', '123456', '15555330369', '3160701073@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '张鹏翼', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9031e493167b48e1984a9d147b8d010f', '3160704098', '123456', '17775482061', '3160704098@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '孙自珍', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('90804d87319044e199ee86703bda24a0', '3160701304', '123456', '16666330399', '3160701304@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '李欣可', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('913e9c3f38bd4516bbc4290ca5a43d72', '3160701015', '123456', '15555330311', '3160701015@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-13 22:52:52', '1', '余烨然', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('94f1b88a20b04bccb9d5b52c8964e1cc', '10009', '123456', '15555330312', '10009@ahpu.cn', '2020-05-25 10:35:06', null, '1', '田叶', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('963a99d97e9d477a882980e5abcab4bb', '10007', '123456', '15555330310', '10007@ahpu.cn', '2020-05-25 10:35:06', null, '1', '熊苑', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9671d94db8864fc4a30dfe9c1f77851d', '10041', '123456', '15555330344', '10041@ahpu.cn', '2020-05-25 10:35:07', null, '1', '彭菲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9672f311215545559f4f792054f65285', '3160704015', '123456', '17775481978', '3160704015@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '孔浩旷', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('97c8cee0c79f484591cdba547e14c5ed', '3160701078', '123456', '15555330374', '3160701078@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-25 10:48:21', '1', '廖安怡', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9888e068394f4dc380cb838cf6bb0ffe', '3160704006', '123456', '17775481969', '3160704006@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '杨兴言', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('98fcf0f81e4042a68d1ea28a0ee08e49', '3160704053', '123456', '17775482016', '3160704053@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '孟飞章', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('991f90d76a924088be48f5867d704bcd', '10003', '123456', '15555330306', '10003@ahpu.cn', '2020-05-25 10:35:06', null, '1', '韩柔', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('99223572b27647eb9cd9ba55815aa6f8', '3160704018', '123456', '17775481981', '3160704018@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '宋嘉誉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('99889b89bf054b7db38ca95f115ddac0', '3160704001', '123456', '17775481964', '3160704001@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '于文虹', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9af066a551414635a881ff833e8cf8b0', '3160701064', '123456', '15555330360', '3160701064@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '胡玉宸', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9d4f4f05adce4b68b526bf39417a64a4', '3160704039', '123456', '17775482002', '3160704039@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '黄元甲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9e7e1e3783474e4286aa68c5fc4aa197', '3160704084', '123456', '17775482047', '3160704084@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '乔俊迈', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9e870ed18c5b4eb8a566c2149b6b52b1', '3160701211', '123456', '16666330306', '3160701211@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '熊梦秋', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9e9955e57fc34e5092fea6cb1b8ae578', '3160701044', '123456', '15555330340', '3160701044@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-15 23:06:04', '1', '万茂彦', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9f43aa9eb4304ca4830f602ec4ae1dd6', '10018', '123456', '15555330321', '10018@ahpu.cn', '2020-05-25 10:35:06', null, '1', '姜咏', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('9f82618cc2444427ae03344c7c084e8e', '3160704067', '123456', '17775482030', '3160704067@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '傅高超', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a00b32ba24c447758af315fa7f570469', '3160701063', '123456', '15555330359', '3160701063@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '丁宏茂', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a18ae63a7c7d41449a6d1bfd3cef558b', '3160704013', '123456', '17775481976', '3160704013@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '邓俊达', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a1a4e0fe2714443eb0ca7178ce8cd385', '3160701026', '123456', '15555330322', '3160701026@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '周立人', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a2611d5970fe48f0b05dceeba0207c02', '3160704082', '123456', '17775482045', '3160704082@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '任学义', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a2cf16919858412da6b12aba2c857930', '10046', '123456', '15555330349', '10046@ahpu.cn', '2020-05-25 10:35:07', null, '1', '邱韵', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a39d3997526c4408b8c84a445b89d3e0', '3160704092', '123456', '17775482055', '3160704092@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '贺烨赫', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a3c9178dd98a46aba8c4f40b302a31c8', '3160701265', '123456', '16666330360', '3160701265@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '梁小晨', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a3d97a32b1774096a14d0c1c71882874', '3160701104', '123456', '15555330400', '3160701104@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-11 18:23:42', '1', '董哲圣', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a4f86d32fe6d490b8f85033da90cc94c', '3160704081', '123456', '17775482044', '3160704081@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '郑才艺', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a50f1cf05a9f45aa912c465e1d6aa59a', '3160701251', '123456', '16666330346', '3160701251@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '周芷茹', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a58e2f7aeda1490c89af8e401267d969', '3160701017', '123456', '15555330313', '3160701017@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-12 17:27:59', '1', '苏和洽', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a6410f4f6c5049b39e1988a783747ad4', '10076', '123456', '15555330379', '10076@ahpu.cn', '2020-05-25 10:35:07', null, '1', '邓婵', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a734342b0f0442158854102579c895e4', '3160701065', '123456', '15555330361', '3160701065@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '萧宜人', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a83ab909d59a4fc3b9411dbe5d01ff84', '10100', '123456', '15555330403', '10100@ahpu.cn', '2020-05-25 10:35:07', null, '1', '宋娘', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a88042aae667408884fb7e87926cc798', '3160704078', '123456', '17775482041', '3160704078@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '康子民', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a8e02209b02c42e0922810464ad6903e', '3160704040', '123456', '17775482003', '3160704040@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '漕鹤轩', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a96fc46b9b6940828923f16a188ec7d8', '3160701043', '123456', '15555330339', '3160701043@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '贾安晏', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('a9e313df1e894ca5889459656a9df5a8', '10086', '123456', '15555330389', '10086@ahpu.cn', '2020-05-25 10:35:07', null, '1', '徐风', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('aa0c2e9c369a429692adb254a8e6b15b', '3160704043', '123456', '17775482006', '3160704043@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '薛弘扬', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('aa581b1961e743d98a51b5534a7fcdda', '3160704088', '123456', '17775482051', '3160704088@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '江宏毅', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('aa859725eb86411a995dd234654a4c3a', '10036', '123456', '15555330339', '10036@ahpu.cn', '2020-05-25 10:35:07', null, '1', '徐娅', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('abb66cd3a2324a618465f027c1700157', '3160704004', '123456', '17775481967', '3160704004@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '曾承平', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ac0a1e9a6960437aa721826735d8a182', '10015', '123456', '15555330318', '10015@ahpu.cn', '2020-05-25 10:35:06', null, '1', '梁勤', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ac1dedad0598477e87927ebe0b850270', '3160701293', '123456', '16666330388', '3160701293@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '顾秀艳', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ad517a8ff9fc46ecbbf2e1260936dbd3', '3160701084', '123456', '15555330380', '3160701084@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '何烨赫', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ae0a16779bef401da575ee14e64cdb6a', '3160704070', '123456', '17775482033', '3160704070@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '汤俊贤', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ae35085f05cf4299ba9a0682fc6f5a5b', '3160701019', '123456', '15555330315', '3160701019@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '袁永安', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('aecbb25071874231a45ac1b536e80fe0', '10054', '123456', '15555330357', '10054@ahpu.cn', '2020-05-25 10:35:07', null, '1', '姜鸾', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('aed81b9849534a188e2a3d447a921aa1', '3160704080', '123456', '17775482043', '3160704080@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '曾鸿羲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('af3008307996456eb33bb1139e69c925', '10058', '123456', '15555330361', '10058@ahpu.cn', '2020-05-25 10:35:07', null, '1', '吴玉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b09ade2f718244fb8624b05b3e623d01', '10038', '123456', '15555330341', '10038@ahpu.cn', '2020-05-25 10:35:07', null, '1', '郑娥', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b10624774c3c4341ac4583869d9b5d7c', '10088', '123456', '15555330391', '10088@ahpu.cn', '2020-05-25 10:35:07', null, '1', '姜晓', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b130ba94eb124ebcbf09484b5bcfa5a2', '3160701231', '123456', '16666330326', '3160701231@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '文慕凝', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b1a051ef9f884e23a1d793da2e1625d7', '3160704099', '123456', '17775482062', '3160704099@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '朱理全', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b25fc5ffc7924bfb9c52de2ed0079c11', '3160701102', '123456', '15555330398', '3160701102@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-11 18:25:16', '1', '邱国安', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b2b0797e0c2146c6a21133be01c9eeed', '10053', '123456', '15555330356', '10053@ahpu.cn', '2020-05-25 10:35:07', null, '1', '吴平', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b3aa57ae002a489ea1f4897a525c8256', '3160701248', '123456', '16666330343', '3160701248@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '罗昕葳', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b3c37fbd4167461a8bc18fb43740a14b', '10081', '123456', '15555330384', '10081@ahpu.cn', '2020-05-25 10:35:07', null, '1', '郝英', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b552623bf23b48c49522cc31b7d0d5cf', '3160701275', '123456', '16666330370', '3160701275@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '谢悦淇', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b8045c50c03a49588b2d83505226b48b', '3160701087', '123456', '15555330383', '3160701087@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '潘兴腾', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('b98d4f6c0d2f497583a33300e243f6d5', '10026', '123456', '15555330329', '10026@ahpu.cn', '2020-05-25 10:35:06', null, '1', '郭怜', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bb52f6d1b5f94050b0991eccf577a102', '3160701099', '123456', '15555330395', '3160701099@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-25 10:03:38', '1', '陆伟志', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bb98373a3c2946d99bc1b11f99339ede', '10013', '123456', '15555330316', '10013@ahpu.cn', '2020-05-25 10:35:06', null, '1', '吕融', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bba461fe1b0f4ec88ecb43f5396e46a8', '3160701252', '123456', '16666330347', '3160701252@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '曹向梦', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bc6cef72096744db9244b59791a813ee', '3160701220', '123456', '16666330315', '3160701220@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '郑柏文', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bda54e6c1a7a45d9bcb86845c6a23d3a', '3160701235', '123456', '16666330330', '3160701235@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '赖琰琬', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bde548cdbef3452c82ce70f5ed07b775', '3160701288', '123456', '16666330383', '3160701288@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '乔亦旋', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bf160999f1604b7a9aa068426fc916ee', '10010', '123456', '15555330313', '10010@ahpu.cn', '2020-05-25 10:35:06', null, '1', '江婵', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('bf86332204b34aa783cc92d73ccdfe12', '3160704085', '123456', '17775482048', '3160704085@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '赵浩然', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c0c069971caf4f65a43e2cf1a033b46c', '3160701279', '123456', '16666330374', '3160701279@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '胡玲然', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c10f17c1e41041e99e70db4e7198de77', '3160701284', '123456', '16666330379', '3160701284@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '姜韶容', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c1b3d9cbefe84393b3eb1e1a6c12d578', '3160701258', '123456', '16666330353', '3160701258@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '黎谷菱', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c282fad29d954d3ea2444640feab9ad0', '3160701277', '123456', '16666330372', '3160701277@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '彭芬芬', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c2ab4d23d65f48a6bf7aab5af5297db8', '3160701079', '123456', '15555330375', '3160701079@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-25 10:57:27', '1', '潘文斌', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c37453c04fb44fbea9591eb094a27911', '3160704072', '123456', '17775482035', '3160704072@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '汪兴言', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c48428b51f54467188ebccb05d49f0b9', '3160701096', '123456', '15555330392', '3160701096@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '常良弼', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c59d006d8db24c1daf78a5e5dc89f0e4', '3160701071', '123456', '15555330367', '3160701071@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '江光远', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c5e3c23cd4634780959b03078022128a', '3160701042', '123456', '15555330338', '3160701042@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '黎飞飙', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c67bac71155046a9b858415db27e765d', '10056', '123456', '15555330359', '10056@ahpu.cn', '2020-05-25 10:35:07', null, '1', '邱妙', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c7b2a4bdc0ec4aae885d7113463eb30f', '3160701041', '123456', '15555330337', '3160701041@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '沈天干', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c8118efd3e3d4bf1ba4f3375b599f7d1', '3160704000', '123456', '17775481963', '3160704000@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '顾天佑', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c81fd38e90f04ab58297acd53ab37229', '3160704010', '123456', '17775481973', '3160704010@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '苏德明', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('c9b254327cf64317809d638c4821d885', '3160704048', '123456', '17775482011', '3160704048@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '赖绍元', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cb68550a915d4f069053be8b132fbb0e', '10042', '123456', '15555330345', '10042@ahpu.cn', '2020-05-25 10:35:07', null, '1', '田冉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cbae3eb651b34aa490f78a337ba1c23d', '3160704041', '123456', '17775482004', '3160704041@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '王景铄', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cc2d07d1d6e042cd92d05811def9bb6d', '3160704083', '123456', '17775482046', '3160704083@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '萧伟茂', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cd2cee7171544491b937035cc32ee09f', '3160704030', '123456', '17775481993', '3160704030@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '谭涵润', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cdff4241e75c480785715080a2702318', '3160701309', '123456', '16666330404', '3160701309@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '钱雪儿', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ce4861efced949e88c87fae1617bc535', '3160704037', '123456', '17775482000', '3160704037@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '白子真', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cead1eb568574f1badb5f78fd340e7e2', '3160704068', '123456', '17775482031', '3160704068@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '康明轩', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cef5984dbc44460f8bba888570c71001', '3160701228', '123456', '16666330323', '3160701228@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '傅盼山', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cf7bf2bfaa124b2889d0fe5a04a20b8a', '3160701012', '123456', '15555330308', '3160701012@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-18 12:49:06', '1', '沈安然', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('cfe7f78995b54ce880eaa4e69d6903c9', '3160701076', '123456', '15555330372', '3160701076@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '徐凯风', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d001340489fa40c296a202feadb114d5', '3160704003', '123456', '17775481966', '3160704003@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '何修谨', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d0dcbf96271c4792bc46c4567bc004fc', '3160701075', '123456', '15555330371', '3160701075@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '黎高洁', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d1747b1836c4413480bb9166c9a2dd49', '3160701298', '123456', '16666330393', '3160701298@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '余暄嫣', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d260b8b2a539454bac2f522403734964', '3160701050', '123456', '15555330346', '3160701050@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '杜锐精', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d273e66f6cd544939dff5c48aa5d1ae8', '3160704059', '123456', '17775482022', '3160704059@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '汤冠宇', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d31370a8068b43a4a252c57a3b9ac5d4', '10048', '123456', '15555330351', '10048@ahpu.cn', '2020-05-25 10:35:07', null, '1', '于俪', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d3eafcdee36944b1b70037e21400810f', '3160701031', '123456', '15555330327', '3160701031@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '何宏逸', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d42de197c9f74c92bcd0a0cf3b0aa198', '3160704042', '123456', '17775482005', '3160704042@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '汪圣杰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d610092cd0d042b48701537b6427a297', '3160701038', '123456', '15555330334', '3160701038@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '薛景辉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d7df90e9c4234c139e0f249efdccd1cc', '10096', '123456', '15555330399', '10096@ahpu.cn', '2020-05-25 10:35:07', null, '1', '阎草', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d9b29d5874ff4fa7a0137bd36edb7bf9', '10074', '123456', '15555330377', '10074@ahpu.cn', '2020-05-25 10:35:07', null, '1', '魏玟', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d9d7c0dcccb448c780d76fdc1ca29b66', '3160704093', '123456', '17775482056', '3160704093@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '田宾鸿', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('d9e8fc3cc41b434b88c3107a2b2f6112', '3160701085', '123456', '15555330381', '3160701085@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '秦光亮', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('da57d8249db64ebaa07196283782d978', '10005', '123456', '15555330308', '10005@ahpu.cn', '2020-05-25 10:35:06', '2020-05-26 09:46:21', '1', '毛珆', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('da84fd567a8447ff9e9752d71536ca25', '3160704033', '123456', '17775481996', '3160704033@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '金新霁', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('db100c5880b749cca74c37feae6a482f', '3160701029', '123456', '15555330325', '3160701029@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '潘曾琪', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('db15b1102d9e49989b941a3b6da4bc60', '3160701054', '123456', '15555330350', '3160701054@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '马德庸', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('db179f86830243f48aa366883f272cde', '10051', '123456', '15555330354', '10051@ahpu.cn', '2020-05-25 10:35:07', null, '1', '朱渺', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('db1fafd008764505a307501a06e0a282', '10082', '123456', '15555330385', '10082@ahpu.cn', '2020-05-25 10:35:07', null, '1', '朱慧', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('dbcbdd2551ee414a8aa03bef267622a2', '3160701072', '123456', '15555330368', '3160701072@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '何锐立', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('dcde081ef805476ba3624117142371ab', '3160701294', '123456', '16666330389', '3160701294@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '廖海萍', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('dd9dbc00e4864a9e8710dec97af4e450', '10060', '123456', '15555330363', '10060@ahpu.cn', '2020-05-25 10:35:07', null, '1', '张霭', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ddbf80ce65ab4f359687aab0e8e6456f', '3160701036', '123456', '15555330332', '3160701036@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '林逸明', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('de12ff0e81174a879960ecda4149a2fa', '3160704073', '123456', '17775482036', '3160704073@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '姜昊乾', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('de1ceb8735bd4f9ca942db88dc7aba61', '3160701285', '123456', '16666330380', '3160701285@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '魏娜娜', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e01380407c4044b09b054e2a53768697', '3160704057', '123456', '17775482020', '3160704057@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '范绍钧', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e01b030cf69348aa91045b9493956903', '3160704097', '123456', '17775482060', '3160704097@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '萧永福', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e02fdf5022394eaa948ea1ee9b1dab19', '10067', '123456', '15555330370', '10067@ahpu.cn', '2020-05-25 10:35:07', null, '1', '孔莓', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e03787915b134bf09908f599abd07bfe', '10012', '123456', '15555330315', '10012@ahpu.cn', '2020-05-25 10:35:06', null, '1', '赵娜', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e075d619ec4248c69239f08456881d75', '3160704032', '123456', '17775481995', '3160704032@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '刘德义', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e0a9323b1dd04c319c3ea697ad58077a', '3160701225', '123456', '16666330320', '3160701225@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '谭婉仪', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e1f7cfd40acc4d6c9c5c9ccceee456c7', '3160704016', '123456', '17775481979', '3160704016@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '邹弘大', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e27bf45de5314336bf18b7300e8ec682', '10040', '123456', '15555330343', '10040@ahpu.cn', '2020-05-25 10:35:07', null, '1', '余萍', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e35de8ae26244b47a19489f03fd629d5', '3160701241', '123456', '16666330336', '3160701241@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '余绿柳', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e3f183b951d44457ad607553162af014', '3160701305', '123456', '16666330400', '3160701305@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '毛献玉', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e4041d565f384c5083c2d23ae5e7ceab', '3160701020', '123456', '15555330316', '3160701020@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '易高峰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e457054dfaa242898c4880bfe03f7df9', '10029', '123456', '15555330332', '10029@ahpu.cn', '2020-05-25 10:35:07', null, '1', '蔡琰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e49c4bb3131643428a835cc9e8e1c6c9', '10064', '123456', '15555330367', '10064@ahpu.cn', '2020-05-25 10:35:07', null, '1', '常涵', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e4ba1343184f4d57903c3e1c840cb22d', '10073', '123456', '15555330376', '10073@ahpu.cn', '2020-05-25 10:35:07', null, '1', '赵心', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e4cbf8c6acb64dc6baf68a1a36ac2f12', '3160701255', '123456', '16666330350', '3160701255@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '金秀颖', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e4d57275f07b4c1487ec1678f9958b79', '3160701270', '123456', '16666330365', '3160701270@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '蔡翠丝', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e4fe3a1135154cc7b2ea35e9cd39edb9', '3160701034', '123456', '15555330330', '3160701034@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-12 18:00:47', '1', '刘安易', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e54f19c9e012423cb6eb320cd62e7883', '3160701259', '123456', '16666330354', '3160701259@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '邱桂芳', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e560754c73ce443eb7779a193739f7f3', '3160701308', '123456', '16666330403', '3160701308@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '孙银玲', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e5c26f055fb8419bbe0b7ff90ce12e06', '3160701296', '123456', '16666330391', '3160701296@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '罗雁芙', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e67f5bd4749447a3a243ca4584774da9', '3160701300', '123456', '16666330395', '3160701300@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '朱笑雯', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e7cf65986276436aba11e6a5ba23f0db', '10102', '123456', '15555330405', '10102@ahpu.cn', '2020-05-25 10:35:07', null, '1', '钟莲', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e818cc87835b431cb4ce9eab1b329bdf', '3160701370', '123456', '16666330365', '3160701370@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '孟悦', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e8893693c68b41c9b1082cb125f4e992', '3160701278', '123456', '16666330373', '3160701278@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '萧天韵', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('e975ea02b537403eae65d3ef79ef4cea', '10083', '123456', '15555330386', '10083@ahpu.cn', '2020-05-25 10:35:07', null, '1', '王可', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ea389d141fa0466781c0b4bc1aa667d0', '3160701250', '123456', '16666330345', '3160701250@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '何湛娟', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ea51f02bcefc472eb7b713153cd16fe6', '3160701035', '123456', '15555330331', '3160701035@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '曾子平', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('eadba67514f1449e82b98e742a032289', '10072', '123456', '15555330375', '10072@ahpu.cn', '2020-05-25 10:35:07', null, '1', '康娥', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('eadf7284aa7e48e993c1f66bfd1e28ab', '3160704026', '123456', '17775481989', '3160704026@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '乔涵润', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('eaed591d08d744b98dee813e4ebafb5b', '3160701306', '123456', '16666330401', '3160701306@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '陈芬菲', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('eb72c2eb7fa64a14be6800472b48bf69', '3160701022', '123456', '15555330318', '3160701022@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-13 22:59:26', '1', '宋文星', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ec2edb6f4875425999b3697368dee291', '3160701346', '123456', '16666330341', '3160701346@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '孟鑫', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ec52e73bafdf4fe7ba7e5404556aeed9', '3160701215', '123456', '16666330310', '3160701215@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '曾凝海', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ec9ba8ee0fda447db60def4dbb2ca3f9', '3160701408', '123456', '16666330403', '3160701408@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '曹康', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('edcd536ca7df4fbfb8a797866432ff33', '10092', '123456', '15555330395', '10092@ahpu.cn', '2020-05-25 10:35:07', null, '1', '袁茗', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('edcec09f73984132af62c0442e4b94ae', '3160701095', '123456', '15555330391', '3160701095@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '杜文昌', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ee03530439ac47a688f0892052fc2128', '10071', '123456', '15555330374', '10071@ahpu.cn', '2020-05-25 10:35:07', null, '1', '陈潇', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('eebf9fc02c3c451daf2bfae8e94363c1', '3160701329', '123456', '16666330324', '3160701329@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '姜寒', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('eeff4cf0e79d48dfb547fa479e0e9969', '3160701109', '123456', '15555330405', '3160701109@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '许宏茂', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f0553743560342cd935e60847765c7f3', '3160701098', '123456', '15555330394', '3160701098@stu.ahpu.cn', '2020-05-11 16:33:27', null, '1', '刘天骄', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f05592e762864671b84963cd84869f1d', '3160701230', '123456', '16666330325', '3160701230@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '汤月悦', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f05b78c6d67d482fb5960fdb3c357303', '3160701311', '123456', '16666330306', '3160701311@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '魏沅', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f06782aa39d247ad96636336c8bad0f4', '3160704005', '123456', '17775481968', '3160704005@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '梁子琪', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f08ad4c0c8344a74b80f8871761425b7', '3160701374', '123456', '16666330369', '3160701374@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '邹村', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f15b6372a8484615a681a3cba4684e38', '10032', '123456', '15555330335', '10032@ahpu.cn', '2020-05-25 10:35:07', null, '1', '苏兰', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f2b95a8cb77b4c74a8ebd6cf0be0f2da', '3160701040', '123456', '15555330336', '3160701040@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '钟德辉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f36e3a25478f426facfafabfe34ecad5', '3160701242', '123456', '16666330337', '3160701242@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '蒋惜玉', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f37e2b9dfd5040d7af74f23fda5631b2', '3160701256', '123456', '16666330351', '3160701256@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '吴叶农', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f3831ccd9a66416a95f03da0f39ef4f0', '3160704012', '123456', '17775481975', '3160704012@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '赵伟懋', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f475d02633e44efa9c170fdf7cf1e6c1', '3160701403', '123456', '16666330398', '3160701403@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '余绮', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f4b06a5a455a4f2388bef9da801cbf9f', '3160701214', '123456', '16666330309', '3160701214@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '张北辰', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f4bfcaf064844176b261254ee78da083', '3160701238', '123456', '16666330333', '3160701238@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '萧妍玲', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f55901c97323473bb66510c5c739c515', '3160704031', '123456', '17775481994', '3160704031@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '朱玉泉', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f572767fd4b94446a1d2248c43756fa9', '3160701021', '123456', '15555330317', '3160701021@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '袁永安', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f6822d75806f4ab59af686730c7df962', '3160704069', '123456', '17775482032', '3160704069@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '周嘉言', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f716e7831465423caf7c0b5a1cfa60f6', '10065', '123456', '15555330368', '10065@ahpu.cn', '2020-05-25 10:35:07', null, '1', '邓飘', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f8d87c2efa73412684dd3750a3f8fecd', '3160701058', '123456', '15555330354', '3160701058@stu.ahpu.cn', '2020-05-11 16:33:26', '2020-05-26 09:36:33', '1', '唐宏阔', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('f9abc5d9c71c473ab0bde815ad7d632d', '3160701046', '123456', '15555330342', '3160701046@stu.ahpu.cn', '2020-05-11 16:33:26', null, '1', '龙和雅', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fa6014cd0e6a462e819b26729a845c0f', '3160701394', '123456', '16666330389', '3160701394@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '侯僳', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fad2d02e96454222b0fcc152af2d7932', '3160701303', '123456', '16666330398', '3160701303@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '萧丽玉', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fb4b940ec0fe45d5affc819356004acb', '3160704090', '123456', '17775482053', '3160704090@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '易烨煜', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fbcc644bce464a268122ecc853246829', '3160701360', '123456', '16666330355', '3160701360@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '武星', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fc025192502c4c9288c38ba8c9e7e4b0', '3160701221', '123456', '16666330316', '3160701221@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '唐代荷', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fc9e3cb5844a46e4b0bfd33b12140db7', '3160701106', '123456', '15555330402', '3160701106@stu.ahpu.cn', '2020-05-11 16:33:27', '2020-05-11 17:35:46', '1', '戴欣然', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fd6dd3e5bbc5467fbed64914aa6cff11', '10011', '123456', '15555330314', '10011@ahpu.cn', '2020-05-25 10:35:06', null, '1', '万真', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fd904a75ad3a4d78ade8f978f9159289', '3160701253', '123456', '16666330348', '3160701253@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '萧柔惠', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fdb91e77c6694b9eb2860bffdb002af8', '3160704050', '123456', '17775482013', '3160704050@stu.F3ahpu.cn', '2020-05-25 10:34:59', null, '1', '袁嘉志', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('fdd13d2b76344528a9231a549337cbad', '3160701382', '123456', '16666330377', '3160701382@stu.ahpu.cn', '2020-05-24 19:43:06', null, '1', '郑劻', '男', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ff754b069957492ea24494c518d7b304', '3160701245', '123456', '16666330340', '3160701245@stu.ahpu.cn', '2020-05-24 12:13:08', null, '1', '杨柔洁', '女', '安徽省芜湖市', null);
INSERT INTO `gm_user` VALUES ('ffcd96044db54f49a85a5944c2a0808e', '10022', '123456', '15555330325', '10022@ahpu.cn', '2020-05-25 10:35:06', null, '1', '杨娥', '男', '安徽省芜湖市', null);

-- ----------------------------
-- Table structure for `gm_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `gm_user_role`;
CREATE TABLE `gm_user_role` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `userId` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `roleId` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1752 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_user_role
-- ----------------------------
INSERT INTO `gm_user_role` VALUES ('72', '1', '1');
INSERT INTO `gm_user_role` VALUES ('81', '096cdb1d421d4927bfe4285566e73072', '3');
INSERT INTO `gm_user_role` VALUES ('84', '79112e46e3c942bc86502ba1ae1446aa', '4');
INSERT INTO `gm_user_role` VALUES ('132', '06dc4a93737b488c8881120c432084bf', '2');
INSERT INTO `gm_user_role` VALUES ('133', '47b51156e50e438cbb622b80801d0d72', '2');
INSERT INTO `gm_user_role` VALUES ('134', 'cf7bf2bfaa124b2889d0fe5a04a20b8a', '2');
INSERT INTO `gm_user_role` VALUES ('135', '10747a843b1b4bdb9ec1b4c6eb52d2ba', '2');
INSERT INTO `gm_user_role` VALUES ('136', '29c7c9fdb97b469b82c8dcbeb760505c', '2');
INSERT INTO `gm_user_role` VALUES ('137', '913e9c3f38bd4516bbc4290ca5a43d72', '2');
INSERT INTO `gm_user_role` VALUES ('138', '270f0c32c9224aec9cc4fc7a3e52f3c7', '2');
INSERT INTO `gm_user_role` VALUES ('139', 'a58e2f7aeda1490c89af8e401267d969', '2');
INSERT INTO `gm_user_role` VALUES ('140', '1930cb0666e94d3c8c0572a35b4c9e86', '2');
INSERT INTO `gm_user_role` VALUES ('141', 'ae35085f05cf4299ba9a0682fc6f5a5b', '2');
INSERT INTO `gm_user_role` VALUES ('142', 'e4041d565f384c5083c2d23ae5e7ceab', '2');
INSERT INTO `gm_user_role` VALUES ('143', 'f572767fd4b94446a1d2248c43756fa9', '2');
INSERT INTO `gm_user_role` VALUES ('144', 'eb72c2eb7fa64a14be6800472b48bf69', '2');
INSERT INTO `gm_user_role` VALUES ('145', '4d6960b403be4cf087efbf37852b4de8', '2');
INSERT INTO `gm_user_role` VALUES ('146', '3299f3efb28846a682dc7995857b5cb2', '2');
INSERT INTO `gm_user_role` VALUES ('147', '0ec418e9a84e4ff18b1285dfc017eea3', '2');
INSERT INTO `gm_user_role` VALUES ('148', 'a1a4e0fe2714443eb0ca7178ce8cd385', '2');
INSERT INTO `gm_user_role` VALUES ('149', '4b4a05ee0388453c8fce20f84125e86c', '2');
INSERT INTO `gm_user_role` VALUES ('150', '6398b4b2f1824d378282258820d40bb6', '2');
INSERT INTO `gm_user_role` VALUES ('151', 'db100c5880b749cca74c37feae6a482f', '2');
INSERT INTO `gm_user_role` VALUES ('152', '48d4ec7d13df4206addb4291709a0ccd', '2');
INSERT INTO `gm_user_role` VALUES ('153', 'd3eafcdee36944b1b70037e21400810f', '2');
INSERT INTO `gm_user_role` VALUES ('154', '2c7830c30d824d769c249b91ad707097', '2');
INSERT INTO `gm_user_role` VALUES ('155', '39356767308343989f838a44cc582c5b', '2');
INSERT INTO `gm_user_role` VALUES ('156', 'e4fe3a1135154cc7b2ea35e9cd39edb9', '2');
INSERT INTO `gm_user_role` VALUES ('157', 'ea51f02bcefc472eb7b713153cd16fe6', '2');
INSERT INTO `gm_user_role` VALUES ('158', 'ddbf80ce65ab4f359687aab0e8e6456f', '2');
INSERT INTO `gm_user_role` VALUES ('159', '6991ac6b700d490a92c4aaba26d28688', '2');
INSERT INTO `gm_user_role` VALUES ('160', 'd610092cd0d042b48701537b6427a297', '2');
INSERT INTO `gm_user_role` VALUES ('161', '70938e078b264fb5aba1085ae6729c85', '2');
INSERT INTO `gm_user_role` VALUES ('162', 'f2b95a8cb77b4c74a8ebd6cf0be0f2da', '2');
INSERT INTO `gm_user_role` VALUES ('163', 'c7b2a4bdc0ec4aae885d7113463eb30f', '2');
INSERT INTO `gm_user_role` VALUES ('164', 'c5e3c23cd4634780959b03078022128a', '2');
INSERT INTO `gm_user_role` VALUES ('165', 'a96fc46b9b6940828923f16a188ec7d8', '2');
INSERT INTO `gm_user_role` VALUES ('166', '9e9955e57fc34e5092fea6cb1b8ae578', '2');
INSERT INTO `gm_user_role` VALUES ('167', '68aadd02acbd4e20a805ddaad3dc4f19', '2');
INSERT INTO `gm_user_role` VALUES ('168', 'f9abc5d9c71c473ab0bde815ad7d632d', '2');
INSERT INTO `gm_user_role` VALUES ('169', '5758b10d7ebf4d91876111c8f28a44eb', '2');
INSERT INTO `gm_user_role` VALUES ('170', '745d765c5d0c44f982edcf06ba2abef2', '2');
INSERT INTO `gm_user_role` VALUES ('171', '1a62e430f5b54c7d846c33520e0b3492', '2');
INSERT INTO `gm_user_role` VALUES ('172', 'd260b8b2a539454bac2f522403734964', '2');
INSERT INTO `gm_user_role` VALUES ('173', '62ecb275678d4b9ca729b3ee57b4491d', '2');
INSERT INTO `gm_user_role` VALUES ('174', '402f093fb58448189fcb7da848f789e9', '2');
INSERT INTO `gm_user_role` VALUES ('175', '78ed5a02ba334029a6b4bc288cae6bbf', '2');
INSERT INTO `gm_user_role` VALUES ('176', 'db15b1102d9e49989b941a3b6da4bc60', '2');
INSERT INTO `gm_user_role` VALUES ('177', '12b498c9a8ab49a4a01180698092f663', '2');
INSERT INTO `gm_user_role` VALUES ('178', '5767e60fc96848cca4d31c749ec08520', '2');
INSERT INTO `gm_user_role` VALUES ('179', '6c63c769c706452f8e843125fde3b861', '2');
INSERT INTO `gm_user_role` VALUES ('180', 'f8d87c2efa73412684dd3750a3f8fecd', '2');
INSERT INTO `gm_user_role` VALUES ('181', '355d9417ce164c1d9e6e7404e7146139', '2');
INSERT INTO `gm_user_role` VALUES ('182', '363f970db36e4bfb97bed3964dec3257', '2');
INSERT INTO `gm_user_role` VALUES ('183', '3a036a6f9d064ad486096e52d45b8c9d', '2');
INSERT INTO `gm_user_role` VALUES ('184', '818b40c6b6934885b922c6c7a7106ede', '2');
INSERT INTO `gm_user_role` VALUES ('185', 'a00b32ba24c447758af315fa7f570469', '2');
INSERT INTO `gm_user_role` VALUES ('186', '9af066a551414635a881ff833e8cf8b0', '2');
INSERT INTO `gm_user_role` VALUES ('187', 'a734342b0f0442158854102579c895e4', '2');
INSERT INTO `gm_user_role` VALUES ('188', '2557033b1c15457aa8509927f4306892', '2');
INSERT INTO `gm_user_role` VALUES ('189', '2e1ff987499449cba9c5051ffb6da6c5', '2');
INSERT INTO `gm_user_role` VALUES ('190', '5642b3cdd17844829aa655f6f1e0694f', '2');
INSERT INTO `gm_user_role` VALUES ('191', '35bed44990164cc5b21b91e1f1e8cf7d', '2');
INSERT INTO `gm_user_role` VALUES ('192', '6137142036614b659750c7fec84e6936', '2');
INSERT INTO `gm_user_role` VALUES ('193', 'c59d006d8db24c1daf78a5e5dc89f0e4', '2');
INSERT INTO `gm_user_role` VALUES ('194', 'dbcbdd2551ee414a8aa03bef267622a2', '2');
INSERT INTO `gm_user_role` VALUES ('195', '8fc7b4d3a32d4569a07091ae9272e2e5', '2');
INSERT INTO `gm_user_role` VALUES ('196', '72810d41611142b7aefcb85cf2f9b079', '2');
INSERT INTO `gm_user_role` VALUES ('197', 'd0dcbf96271c4792bc46c4567bc004fc', '2');
INSERT INTO `gm_user_role` VALUES ('198', 'cfe7f78995b54ce880eaa4e69d6903c9', '2');
INSERT INTO `gm_user_role` VALUES ('199', '77b5a2bbf3cc438c988f678d15a74989', '2');
INSERT INTO `gm_user_role` VALUES ('200', '97c8cee0c79f484591cdba547e14c5ed', '2');
INSERT INTO `gm_user_role` VALUES ('201', 'c2ab4d23d65f48a6bf7aab5af5297db8', '2');
INSERT INTO `gm_user_role` VALUES ('202', '00463e9b63ae4c319dc76fc761acff3a', '2');
INSERT INTO `gm_user_role` VALUES ('203', '135a40e2241a4c2e86f1da21974fa632', '2');
INSERT INTO `gm_user_role` VALUES ('204', '47aba1d0719d4c0f9cc5535def5d50e6', '2');
INSERT INTO `gm_user_role` VALUES ('205', '2acba612f2dc4f4c9e7b40faeaa2d8d7', '2');
INSERT INTO `gm_user_role` VALUES ('206', 'ad517a8ff9fc46ecbbf2e1260936dbd3', '2');
INSERT INTO `gm_user_role` VALUES ('207', 'd9e8fc3cc41b434b88c3107a2b2f6112', '2');
INSERT INTO `gm_user_role` VALUES ('208', '4207602b0d8d48d692f4e3c9ee823454', '2');
INSERT INTO `gm_user_role` VALUES ('209', 'b8045c50c03a49588b2d83505226b48b', '2');
INSERT INTO `gm_user_role` VALUES ('210', '00824a9114c742ffaf653e8748f0c697', '2');
INSERT INTO `gm_user_role` VALUES ('211', '0540a3bebe68418c8bec658943f8e1ff', '2');
INSERT INTO `gm_user_role` VALUES ('212', '884eb65726cd4e90bfe6cda69b25eef2', '2');
INSERT INTO `gm_user_role` VALUES ('213', '14e75fe6e8324e128e5489c1fc506b36', '2');
INSERT INTO `gm_user_role` VALUES ('214', '64c8abcbcf684426b9d7141d394c14ab', '2');
INSERT INTO `gm_user_role` VALUES ('215', '154a9335102e4f4ea503d10941ece8b8', '2');
INSERT INTO `gm_user_role` VALUES ('216', '15321371ffad40b9b3d2d2b2c15d0c5c', '2');
INSERT INTO `gm_user_role` VALUES ('217', 'edcec09f73984132af62c0442e4b94ae', '2');
INSERT INTO `gm_user_role` VALUES ('218', 'c48428b51f54467188ebccb05d49f0b9', '2');
INSERT INTO `gm_user_role` VALUES ('219', '0adf1b40b73945f4a953355ff234fa7d', '2');
INSERT INTO `gm_user_role` VALUES ('220', 'f0553743560342cd935e60847765c7f3', '2');
INSERT INTO `gm_user_role` VALUES ('221', 'bb52f6d1b5f94050b0991eccf577a102', '2');
INSERT INTO `gm_user_role` VALUES ('222', '2ddc707e6fbd4bf88e3f960dacc64f82', '2');
INSERT INTO `gm_user_role` VALUES ('223', '3352e992b01a4ce98c7201621c8e0e7b', '2');
INSERT INTO `gm_user_role` VALUES ('224', 'b25fc5ffc7924bfb9c52de2ed0079c11', '2');
INSERT INTO `gm_user_role` VALUES ('225', '09e140be6f444de8957205f6d599acec', '2');
INSERT INTO `gm_user_role` VALUES ('226', 'a3d97a32b1774096a14d0c1c71882874', '2');
INSERT INTO `gm_user_role` VALUES ('227', '5988bc75400b463dbf00af237e099047', '2');
INSERT INTO `gm_user_role` VALUES ('228', 'fc9e3cb5844a46e4b0bfd33b12140db7', '2');
INSERT INTO `gm_user_role` VALUES ('229', '603aeea9d67846488e8ad7a102eadefe', '2');
INSERT INTO `gm_user_role` VALUES ('230', '70f814b90a224de0b92ad34fffae7ee0', '2');
INSERT INTO `gm_user_role` VALUES ('231', 'eeff4cf0e79d48dfb547fa479e0e9969', '2');
INSERT INTO `gm_user_role` VALUES ('232', '449df34c3dc944ca8080d803f7ff0678', '4');
INSERT INTO `gm_user_role` VALUES ('233', '9e870ed18c5b4eb8a566c2149b6b52b1', '2');
INSERT INTO `gm_user_role` VALUES ('234', '6bd987ca96ea43d5a503f4769f3a5516', '2');
INSERT INTO `gm_user_role` VALUES ('235', '4ebb0cc62fd14f0786eaf0f4164d6560', '2');
INSERT INTO `gm_user_role` VALUES ('236', 'f4b06a5a455a4f2388bef9da801cbf9f', '2');
INSERT INTO `gm_user_role` VALUES ('237', 'ec52e73bafdf4fe7ba7e5404556aeed9', '2');
INSERT INTO `gm_user_role` VALUES ('238', '83bd8adb6afd43ce8e8b6cea6d3c2988', '2');
INSERT INTO `gm_user_role` VALUES ('239', '2d7bc2a3d8704d5fa6ac4722c39f89b5', '2');
INSERT INTO `gm_user_role` VALUES ('240', '4ec85d4cc08048b8be19d708fe2e09e3', '2');
INSERT INTO `gm_user_role` VALUES ('241', '14c8d713556c4ec79d5ea213ad80b3e4', '2');
INSERT INTO `gm_user_role` VALUES ('242', 'bc6cef72096744db9244b59791a813ee', '2');
INSERT INTO `gm_user_role` VALUES ('243', 'fc025192502c4c9288c38ba8c9e7e4b0', '2');
INSERT INTO `gm_user_role` VALUES ('244', '7a5c047c94e743259f86aac7ccf4d7a5', '2');
INSERT INTO `gm_user_role` VALUES ('245', '465717ee161740e2a031ba48f95c7acf', '2');
INSERT INTO `gm_user_role` VALUES ('246', '22b542c7f05d442cb3a059be4eca049d', '2');
INSERT INTO `gm_user_role` VALUES ('247', 'e0a9323b1dd04c319c3ea697ad58077a', '2');
INSERT INTO `gm_user_role` VALUES ('248', '807751f5c41d4d60868398c575c65e40', '2');
INSERT INTO `gm_user_role` VALUES ('249', '485601d693d1478ca4b7cc9511cc824a', '2');
INSERT INTO `gm_user_role` VALUES ('250', 'cef5984dbc44460f8bba888570c71001', '2');
INSERT INTO `gm_user_role` VALUES ('251', '336e4555765d454eb78629062e455634', '2');
INSERT INTO `gm_user_role` VALUES ('252', 'f05592e762864671b84963cd84869f1d', '2');
INSERT INTO `gm_user_role` VALUES ('253', 'b130ba94eb124ebcbf09484b5bcfa5a2', '2');
INSERT INTO `gm_user_role` VALUES ('254', '3ae0c8054bd34fee8abe4d94c78b70cc', '2');
INSERT INTO `gm_user_role` VALUES ('255', '0555993799e649d48e8673f1c61abd6e', '2');
INSERT INTO `gm_user_role` VALUES ('256', '06fa33b3443f444188c46db56d368595', '2');
INSERT INTO `gm_user_role` VALUES ('257', 'bda54e6c1a7a45d9bcb86845c6a23d3a', '2');
INSERT INTO `gm_user_role` VALUES ('258', '3bf0d8a05a6b4de79a057bebfaa32961', '2');
INSERT INTO `gm_user_role` VALUES ('259', '85c9157a58b54aa9b57602d40dc302b3', '2');
INSERT INTO `gm_user_role` VALUES ('260', 'f4bfcaf064844176b261254ee78da083', '2');
INSERT INTO `gm_user_role` VALUES ('261', '2cfd345cf9504c0295024620dc5e9523', '2');
INSERT INTO `gm_user_role` VALUES ('262', '7ab46edd64484c359ad58d4258f0a945', '2');
INSERT INTO `gm_user_role` VALUES ('263', 'e35de8ae26244b47a19489f03fd629d5', '2');
INSERT INTO `gm_user_role` VALUES ('264', 'f36e3a25478f426facfafabfe34ecad5', '2');
INSERT INTO `gm_user_role` VALUES ('265', '684f774354e246bbb84d324fa553a9ed', '2');
INSERT INTO `gm_user_role` VALUES ('266', '0cd989bfaf704e8bab1bcaedac4a6072', '2');
INSERT INTO `gm_user_role` VALUES ('267', 'ff754b069957492ea24494c518d7b304', '2');
INSERT INTO `gm_user_role` VALUES ('268', '2c55a023713d453f9014fe446f99e252', '2');
INSERT INTO `gm_user_role` VALUES ('269', '75186c79e2d44ba0abf574dfb5cbe1e5', '2');
INSERT INTO `gm_user_role` VALUES ('270', 'b3aa57ae002a489ea1f4897a525c8256', '2');
INSERT INTO `gm_user_role` VALUES ('271', '14f0980f8dd8497cb56b0556c7722f99', '2');
INSERT INTO `gm_user_role` VALUES ('272', 'ea389d141fa0466781c0b4bc1aa667d0', '2');
INSERT INTO `gm_user_role` VALUES ('273', 'a50f1cf05a9f45aa912c465e1d6aa59a', '2');
INSERT INTO `gm_user_role` VALUES ('274', 'bba461fe1b0f4ec88ecb43f5396e46a8', '2');
INSERT INTO `gm_user_role` VALUES ('275', 'fd904a75ad3a4d78ade8f978f9159289', '2');
INSERT INTO `gm_user_role` VALUES ('276', '502fc3ea767949fe8bde6c5d6084aa76', '2');
INSERT INTO `gm_user_role` VALUES ('277', 'e4cbf8c6acb64dc6baf68a1a36ac2f12', '2');
INSERT INTO `gm_user_role` VALUES ('278', 'f37e2b9dfd5040d7af74f23fda5631b2', '2');
INSERT INTO `gm_user_role` VALUES ('279', '652566edc59149ca889c6c782b28ebd8', '2');
INSERT INTO `gm_user_role` VALUES ('280', 'c1b3d9cbefe84393b3eb1e1a6c12d578', '2');
INSERT INTO `gm_user_role` VALUES ('281', 'e54f19c9e012423cb6eb320cd62e7883', '2');
INSERT INTO `gm_user_role` VALUES ('282', '7e286c9b9ec143b1a3afd7ab54e39271', '2');
INSERT INTO `gm_user_role` VALUES ('283', '668beea5ca2942d9b0ffc56deda16611', '2');
INSERT INTO `gm_user_role` VALUES ('284', '2d8eed517dc045e39875aa8e066d013d', '2');
INSERT INTO `gm_user_role` VALUES ('285', '35b7fba17ad545d1944e563fd8057dc1', '2');
INSERT INTO `gm_user_role` VALUES ('286', '8cd4458081854eba8066a76facb7dcc5', '2');
INSERT INTO `gm_user_role` VALUES ('287', 'a3c9178dd98a46aba8c4f40b302a31c8', '2');
INSERT INTO `gm_user_role` VALUES ('288', '1379c98cce704b1a9677f10c958d902d', '2');
INSERT INTO `gm_user_role` VALUES ('289', '5a5a6827c36445a0881c74b723728a42', '2');
INSERT INTO `gm_user_role` VALUES ('290', '1983daa321ec4c4fb41721414fe5a949', '2');
INSERT INTO `gm_user_role` VALUES ('291', '25593c83195c49e5aa429c707fed5756', '2');
INSERT INTO `gm_user_role` VALUES ('292', 'e4d57275f07b4c1487ec1678f9958b79', '2');
INSERT INTO `gm_user_role` VALUES ('293', '680c2e10021647b6bd0990ab292ec15f', '2');
INSERT INTO `gm_user_role` VALUES ('294', '8a5b92bb0e044ab398f4f69e67af6bc3', '2');
INSERT INTO `gm_user_role` VALUES ('295', '31836b68875a4d599dc1b98ead2f4264', '2');
INSERT INTO `gm_user_role` VALUES ('296', '8b2d831b64144b39ab7465e9e8cb797f', '2');
INSERT INTO `gm_user_role` VALUES ('297', 'b552623bf23b48c49522cc31b7d0d5cf', '2');
INSERT INTO `gm_user_role` VALUES ('298', '5042155f9e0245709ff006b2f0f5587c', '2');
INSERT INTO `gm_user_role` VALUES ('299', 'c282fad29d954d3ea2444640feab9ad0', '2');
INSERT INTO `gm_user_role` VALUES ('300', 'e8893693c68b41c9b1082cb125f4e992', '2');
INSERT INTO `gm_user_role` VALUES ('301', 'c0c069971caf4f65a43e2cf1a033b46c', '2');
INSERT INTO `gm_user_role` VALUES ('302', '0e02f8d8ba224fb98d86d55fd5d5454b', '2');
INSERT INTO `gm_user_role` VALUES ('303', '3e479294cff44562b275b34122d9d512', '2');
INSERT INTO `gm_user_role` VALUES ('304', '35ff3970006a4b1b92f606fbfd06b19e', '2');
INSERT INTO `gm_user_role` VALUES ('305', '5017930e22b641fba2f4df5096a7d40d', '2');
INSERT INTO `gm_user_role` VALUES ('306', 'c10f17c1e41041e99e70db4e7198de77', '2');
INSERT INTO `gm_user_role` VALUES ('307', 'de1ceb8735bd4f9ca942db88dc7aba61', '2');
INSERT INTO `gm_user_role` VALUES ('308', '512094eb60534ee99c0f85ae00428334', '2');
INSERT INTO `gm_user_role` VALUES ('309', '62bb084e5601478a8eef7c9db939f514', '2');
INSERT INTO `gm_user_role` VALUES ('310', 'bde548cdbef3452c82ce70f5ed07b775', '2');
INSERT INTO `gm_user_role` VALUES ('311', '5ecb0b9dad3849bc9d5abcf7d8947a12', '2');
INSERT INTO `gm_user_role` VALUES ('312', '1bb1ca818f454537b70e5bbbded5a412', '2');
INSERT INTO `gm_user_role` VALUES ('313', '1ce028afad92452fb365908d13a88ff1', '2');
INSERT INTO `gm_user_role` VALUES ('314', '8595d90fb32f494fb33a0961a3839f91', '2');
INSERT INTO `gm_user_role` VALUES ('315', 'ac1dedad0598477e87927ebe0b850270', '2');
INSERT INTO `gm_user_role` VALUES ('316', 'dcde081ef805476ba3624117142371ab', '2');
INSERT INTO `gm_user_role` VALUES ('317', '8067a1cafbf8484ba230447a08fa2ab8', '2');
INSERT INTO `gm_user_role` VALUES ('318', 'e5c26f055fb8419bbe0b7ff90ce12e06', '2');
INSERT INTO `gm_user_role` VALUES ('319', '6f32220870e04bb39c8a419722159745', '2');
INSERT INTO `gm_user_role` VALUES ('320', 'd1747b1836c4413480bb9166c9a2dd49', '2');
INSERT INTO `gm_user_role` VALUES ('321', '7b625d89f6fd428a884c746beee033e2', '2');
INSERT INTO `gm_user_role` VALUES ('322', 'e67f5bd4749447a3a243ca4584774da9', '2');
INSERT INTO `gm_user_role` VALUES ('323', '3603d8abd05049ecb7ab301b24caf28a', '2');
INSERT INTO `gm_user_role` VALUES ('324', '4d446149634a402392f1760827853ff3', '2');
INSERT INTO `gm_user_role` VALUES ('325', 'fad2d02e96454222b0fcc152af2d7932', '2');
INSERT INTO `gm_user_role` VALUES ('326', '90804d87319044e199ee86703bda24a0', '2');
INSERT INTO `gm_user_role` VALUES ('327', 'e3f183b951d44457ad607553162af014', '2');
INSERT INTO `gm_user_role` VALUES ('328', 'eaed591d08d744b98dee813e4ebafb5b', '2');
INSERT INTO `gm_user_role` VALUES ('329', '56f0305fc8e3434f8d7e32ee20d58ff1', '2');
INSERT INTO `gm_user_role` VALUES ('330', 'e560754c73ce443eb7779a193739f7f3', '2');
INSERT INTO `gm_user_role` VALUES ('331', 'cdff4241e75c480785715080a2702318', '2');
INSERT INTO `gm_user_role` VALUES ('332', '12024193600b433f908f5a0c6b3bce50', '2');
INSERT INTO `gm_user_role` VALUES ('336', 'f05b78c6d67d482fb5960fdb3c357303', '2');
INSERT INTO `gm_user_role` VALUES ('354', 'eebf9fc02c3c451daf2bfae8e94363c1', '2');
INSERT INTO `gm_user_role` VALUES ('371', 'ec2edb6f4875425999b3697368dee291', '2');
INSERT INTO `gm_user_role` VALUES ('385', 'fbcc644bce464a268122ecc853246829', '2');
INSERT INTO `gm_user_role` VALUES ('395', 'e818cc87835b431cb4ce9eab1b329bdf', '2');
INSERT INTO `gm_user_role` VALUES ('399', 'f08ad4c0c8344a74b80f8871761425b7', '2');
INSERT INTO `gm_user_role` VALUES ('407', 'fdd13d2b76344528a9231a549337cbad', '2');
INSERT INTO `gm_user_role` VALUES ('419', 'fa6014cd0e6a462e819b26729a845c0f', '2');
INSERT INTO `gm_user_role` VALUES ('428', 'f475d02633e44efa9c170fdf7cf1e6c1', '2');
INSERT INTO `gm_user_role` VALUES ('433', 'ec9ba8ee0fda447db60def4dbb2ca3f9', '2');
INSERT INTO `gm_user_role` VALUES ('1551', 'c8118efd3e3d4bf1ba4f3375b599f7d1', '2');
INSERT INTO `gm_user_role` VALUES ('1552', '99889b89bf054b7db38ca95f115ddac0', '2');
INSERT INTO `gm_user_role` VALUES ('1553', '68f32c14e15f4081b3e6fa00320f8179', '2');
INSERT INTO `gm_user_role` VALUES ('1554', 'd001340489fa40c296a202feadb114d5', '2');
INSERT INTO `gm_user_role` VALUES ('1555', 'abb66cd3a2324a618465f027c1700157', '2');
INSERT INTO `gm_user_role` VALUES ('1556', 'f06782aa39d247ad96636336c8bad0f4', '2');
INSERT INTO `gm_user_role` VALUES ('1557', '9888e068394f4dc380cb838cf6bb0ffe', '2');
INSERT INTO `gm_user_role` VALUES ('1558', '076bbc0234074218ae999afa6c8dfb19', '2');
INSERT INTO `gm_user_role` VALUES ('1559', '1590b89a749c4ce8a903b24743873e17', '2');
INSERT INTO `gm_user_role` VALUES ('1560', '3b7e7d70229246e2b6919538599038b4', '2');
INSERT INTO `gm_user_role` VALUES ('1561', 'c81fd38e90f04ab58297acd53ab37229', '2');
INSERT INTO `gm_user_role` VALUES ('1562', '2e9808e6622b46bdafafc9190f3c5bf9', '2');
INSERT INTO `gm_user_role` VALUES ('1563', 'f3831ccd9a66416a95f03da0f39ef4f0', '2');
INSERT INTO `gm_user_role` VALUES ('1564', 'a18ae63a7c7d41449a6d1bfd3cef558b', '2');
INSERT INTO `gm_user_role` VALUES ('1565', '2a231cadf7674a078a749755ac0a2262', '2');
INSERT INTO `gm_user_role` VALUES ('1566', '9672f311215545559f4f792054f65285', '2');
INSERT INTO `gm_user_role` VALUES ('1567', 'e1f7cfd40acc4d6c9c5c9ccceee456c7', '2');
INSERT INTO `gm_user_role` VALUES ('1568', '74cc7b9846fb4b58b56e2d2c5305c373', '2');
INSERT INTO `gm_user_role` VALUES ('1569', '99223572b27647eb9cd9ba55815aa6f8', '2');
INSERT INTO `gm_user_role` VALUES ('1570', '0b9889ae92bf480cba9f826d3615a769', '2');
INSERT INTO `gm_user_role` VALUES ('1571', '201cbe98b8794e70a0047f8d011328a6', '2');
INSERT INTO `gm_user_role` VALUES ('1572', '37ae6a9fd9694f3591a101c8e28d47a0', '2');
INSERT INTO `gm_user_role` VALUES ('1573', '82f7c4d8cea4419c93dc076a4c8b51b2', '2');
INSERT INTO `gm_user_role` VALUES ('1574', '2610ae2c3ec941ab99875907daff20e8', '2');
INSERT INTO `gm_user_role` VALUES ('1575', '2e0046749c774d40bc6b98b0667d6831', '2');
INSERT INTO `gm_user_role` VALUES ('1576', '0df95f0b5d0b47d6bc4c38002f94911d', '2');
INSERT INTO `gm_user_role` VALUES ('1577', 'eadf7284aa7e48e993c1f66bfd1e28ab', '2');
INSERT INTO `gm_user_role` VALUES ('1578', '0b5fa2968fc84f38a562c22020fdb948', '2');
INSERT INTO `gm_user_role` VALUES ('1579', '3d92f4dc9dea49b5a79585b8377e6a0b', '2');
INSERT INTO `gm_user_role` VALUES ('1580', '4a65532138b640d68a1aee2ddeeeebf5', '2');
INSERT INTO `gm_user_role` VALUES ('1581', 'cd2cee7171544491b937035cc32ee09f', '2');
INSERT INTO `gm_user_role` VALUES ('1582', 'f55901c97323473bb66510c5c739c515', '2');
INSERT INTO `gm_user_role` VALUES ('1583', 'e075d619ec4248c69239f08456881d75', '2');
INSERT INTO `gm_user_role` VALUES ('1584', 'da84fd567a8447ff9e9752d71536ca25', '2');
INSERT INTO `gm_user_role` VALUES ('1585', '60d7d945869341be99eee6ebf2acd331', '2');
INSERT INTO `gm_user_role` VALUES ('1586', '2cc8e2c757c642d2a438f6ed57a43d7f', '2');
INSERT INTO `gm_user_role` VALUES ('1587', '71fac68306a1406d82337a2539ece590', '2');
INSERT INTO `gm_user_role` VALUES ('1588', 'ce4861efced949e88c87fae1617bc535', '2');
INSERT INTO `gm_user_role` VALUES ('1589', '3e38ec7d130641a8aa57e3abea05c11a', '2');
INSERT INTO `gm_user_role` VALUES ('1590', '9d4f4f05adce4b68b526bf39417a64a4', '2');
INSERT INTO `gm_user_role` VALUES ('1591', 'a8e02209b02c42e0922810464ad6903e', '2');
INSERT INTO `gm_user_role` VALUES ('1592', 'cbae3eb651b34aa490f78a337ba1c23d', '2');
INSERT INTO `gm_user_role` VALUES ('1593', 'd42de197c9f74c92bcd0a0cf3b0aa198', '2');
INSERT INTO `gm_user_role` VALUES ('1594', 'aa0c2e9c369a429692adb254a8e6b15b', '2');
INSERT INTO `gm_user_role` VALUES ('1595', '59404793dda24d82859f96ad88ca29d1', '2');
INSERT INTO `gm_user_role` VALUES ('1596', '10d8ff5bdf2a4756b27b092f44594ac1', '2');
INSERT INTO `gm_user_role` VALUES ('1597', '3162370f39314a1a85df30602db9ae75', '2');
INSERT INTO `gm_user_role` VALUES ('1598', '63f097f6428e47b9abc01a1c65c66a70', '2');
INSERT INTO `gm_user_role` VALUES ('1599', 'c9b254327cf64317809d638c4821d885', '2');
INSERT INTO `gm_user_role` VALUES ('1600', '62e6ea59256642fe8048c2f6bb7f9362', '2');
INSERT INTO `gm_user_role` VALUES ('1601', 'fdb91e77c6694b9eb2860bffdb002af8', '2');
INSERT INTO `gm_user_role` VALUES ('1602', '6d4ed9abd20142619cdb1b97a6ed0b42', '2');
INSERT INTO `gm_user_role` VALUES ('1603', '68cf0aede7984e45a6a22e30a10a17f1', '2');
INSERT INTO `gm_user_role` VALUES ('1604', '98fcf0f81e4042a68d1ea28a0ee08e49', '2');
INSERT INTO `gm_user_role` VALUES ('1605', '0130a9e313f54a90bbc4548001aa31ec', '2');
INSERT INTO `gm_user_role` VALUES ('1606', '1ad71da1bee14af79629825897405791', '2');
INSERT INTO `gm_user_role` VALUES ('1607', '50276bd275e245b98c613c5c062d813e', '2');
INSERT INTO `gm_user_role` VALUES ('1608', 'e01380407c4044b09b054e2a53768697', '2');
INSERT INTO `gm_user_role` VALUES ('1609', '6b955078daf14175ada88b09ebf2481a', '2');
INSERT INTO `gm_user_role` VALUES ('1610', 'd273e66f6cd544939dff5c48aa5d1ae8', '2');
INSERT INTO `gm_user_role` VALUES ('1611', '34d67330624f47c38c0eb60d69ad8ff9', '2');
INSERT INTO `gm_user_role` VALUES ('1612', '6c42e21a983541678dedf60ccfaac192', '2');
INSERT INTO `gm_user_role` VALUES ('1613', '44eafd84d914484f8467671d7623011a', '2');
INSERT INTO `gm_user_role` VALUES ('1614', '70d8737d34fa4113aaad70e0608dfd60', '2');
INSERT INTO `gm_user_role` VALUES ('1615', '5761719a29564f1f9d0475c9c6344269', '2');
INSERT INTO `gm_user_role` VALUES ('1616', '1379e4eaeb9f4be6b992a620b9947044', '2');
INSERT INTO `gm_user_role` VALUES ('1617', '24c925051c064f29b5eaa1cf6e86d278', '2');
INSERT INTO `gm_user_role` VALUES ('1618', '9f82618cc2444427ae03344c7c084e8e', '2');
INSERT INTO `gm_user_role` VALUES ('1619', 'cead1eb568574f1badb5f78fd340e7e2', '2');
INSERT INTO `gm_user_role` VALUES ('1620', 'f6822d75806f4ab59af686730c7df962', '2');
INSERT INTO `gm_user_role` VALUES ('1621', 'ae0a16779bef401da575ee14e64cdb6a', '2');
INSERT INTO `gm_user_role` VALUES ('1622', '6fb8b7ffa47f42e0b7cc7261506ebd17', '2');
INSERT INTO `gm_user_role` VALUES ('1623', 'c37453c04fb44fbea9591eb094a27911', '2');
INSERT INTO `gm_user_role` VALUES ('1624', 'de12ff0e81174a879960ecda4149a2fa', '2');
INSERT INTO `gm_user_role` VALUES ('1625', '529d615a5beb4a6fa316ee616cc3f86c', '2');
INSERT INTO `gm_user_role` VALUES ('1626', '58646f176d6143c9b54b69476c5da2de', '2');
INSERT INTO `gm_user_role` VALUES ('1627', '0d46924e24504c12b82b0b2d41a4a257', '2');
INSERT INTO `gm_user_role` VALUES ('1628', '7760ce7b35f94bb389b8bf73043125b6', '2');
INSERT INTO `gm_user_role` VALUES ('1629', 'a88042aae667408884fb7e87926cc798', '2');
INSERT INTO `gm_user_role` VALUES ('1630', '4c42339438d74c0ca4c4340f00470500', '2');
INSERT INTO `gm_user_role` VALUES ('1631', 'aed81b9849534a188e2a3d447a921aa1', '2');
INSERT INTO `gm_user_role` VALUES ('1632', 'a4f86d32fe6d490b8f85033da90cc94c', '2');
INSERT INTO `gm_user_role` VALUES ('1633', 'a2611d5970fe48f0b05dceeba0207c02', '2');
INSERT INTO `gm_user_role` VALUES ('1634', 'cc2d07d1d6e042cd92d05811def9bb6d', '2');
INSERT INTO `gm_user_role` VALUES ('1635', '9e7e1e3783474e4286aa68c5fc4aa197', '2');
INSERT INTO `gm_user_role` VALUES ('1636', 'bf86332204b34aa783cc92d73ccdfe12', '2');
INSERT INTO `gm_user_role` VALUES ('1637', '8efc70e2cb7049a89a39c165b3ddfdd8', '2');
INSERT INTO `gm_user_role` VALUES ('1638', '7c544ea2880c4982aa418b5b2564a12e', '2');
INSERT INTO `gm_user_role` VALUES ('1639', 'aa581b1961e743d98a51b5534a7fcdda', '2');
INSERT INTO `gm_user_role` VALUES ('1640', '17cb887f8c9a482096bbfde4febba5b5', '2');
INSERT INTO `gm_user_role` VALUES ('1641', 'fb4b940ec0fe45d5affc819356004acb', '2');
INSERT INTO `gm_user_role` VALUES ('1642', '7ca03333ac5441d39f41d82ab77b30c9', '2');
INSERT INTO `gm_user_role` VALUES ('1643', 'a39d3997526c4408b8c84a445b89d3e0', '2');
INSERT INTO `gm_user_role` VALUES ('1644', 'd9d7c0dcccb448c780d76fdc1ca29b66', '2');
INSERT INTO `gm_user_role` VALUES ('1645', '149cc5c1d8cc4701be231020c994ac1f', '2');
INSERT INTO `gm_user_role` VALUES ('1646', '6d5cc422ee03466ebbe78f5dc2c2ea3f', '2');
INSERT INTO `gm_user_role` VALUES ('1647', '79ca9a4eb0ce4a62b90fc824172adb4a', '2');
INSERT INTO `gm_user_role` VALUES ('1648', 'e01b030cf69348aa91045b9493956903', '2');
INSERT INTO `gm_user_role` VALUES ('1649', '9031e493167b48e1984a9d147b8d010f', '2');
INSERT INTO `gm_user_role` VALUES ('1650', 'b1a051ef9f884e23a1d793da2e1625d7', '2');
INSERT INTO `gm_user_role` VALUES ('1651', '991f90d76a924088be48f5867d704bcd', '3');
INSERT INTO `gm_user_role` VALUES ('1652', '2ec11f2221e94737899a1ca03eba05c4', '3');
INSERT INTO `gm_user_role` VALUES ('1653', 'da57d8249db64ebaa07196283782d978', '3');
INSERT INTO `gm_user_role` VALUES ('1654', '5e06d5c69fb74db7aabc221aa7685d8c', '3');
INSERT INTO `gm_user_role` VALUES ('1655', '963a99d97e9d477a882980e5abcab4bb', '3');
INSERT INTO `gm_user_role` VALUES ('1656', '249ba27db80b40299755ff3a5e6d4db9', '3');
INSERT INTO `gm_user_role` VALUES ('1657', '94f1b88a20b04bccb9d5b52c8964e1cc', '3');
INSERT INTO `gm_user_role` VALUES ('1658', 'bf160999f1604b7a9aa068426fc916ee', '3');
INSERT INTO `gm_user_role` VALUES ('1659', 'fd6dd3e5bbc5467fbed64914aa6cff11', '3');
INSERT INTO `gm_user_role` VALUES ('1660', 'e03787915b134bf09908f599abd07bfe', '3');
INSERT INTO `gm_user_role` VALUES ('1661', 'bb98373a3c2946d99bc1b11f99339ede', '3');
INSERT INTO `gm_user_role` VALUES ('1662', '4c9bd5a433784429b8aeaac83a58008c', '3');
INSERT INTO `gm_user_role` VALUES ('1663', 'ac0a1e9a6960437aa721826735d8a182', '3');
INSERT INTO `gm_user_role` VALUES ('1664', '2f9f82d12a3641a684b1200f842d76f0', '3');
INSERT INTO `gm_user_role` VALUES ('1665', '6ba54339ff1e440da1307004e9aae317', '3');
INSERT INTO `gm_user_role` VALUES ('1666', '9f43aa9eb4304ca4830f602ec4ae1dd6', '3');
INSERT INTO `gm_user_role` VALUES ('1667', '5a6717b2691c46b189c012648c6d54df', '3');
INSERT INTO `gm_user_role` VALUES ('1668', '53afb0a07a1447a7811b99d2acb3c729', '3');
INSERT INTO `gm_user_role` VALUES ('1669', '29eeca9306f740caab1f3afdc6a267ba', '3');
INSERT INTO `gm_user_role` VALUES ('1670', 'ffcd96044db54f49a85a5944c2a0808e', '3');
INSERT INTO `gm_user_role` VALUES ('1671', '500711f94c964e8099efa5b01c4daae9', '3');
INSERT INTO `gm_user_role` VALUES ('1672', '6c0ec1f76d334451814cf1254e6c0192', '3');
INSERT INTO `gm_user_role` VALUES ('1673', '392987b7417541bbb44f9df4c70b5916', '3');
INSERT INTO `gm_user_role` VALUES ('1674', 'b98d4f6c0d2f497583a33300e243f6d5', '3');
INSERT INTO `gm_user_role` VALUES ('1675', '88d09fabf1a1469890bed9e1d64005ee', '3');
INSERT INTO `gm_user_role` VALUES ('1676', '2bbd73d968a548c998bd3583f4105c2b', '3');
INSERT INTO `gm_user_role` VALUES ('1677', 'e457054dfaa242898c4880bfe03f7df9', '3');
INSERT INTO `gm_user_role` VALUES ('1678', '52f7f830bfbf4cefb7b3655bff126cbb', '3');
INSERT INTO `gm_user_role` VALUES ('1679', '6c16306596084b309c7da09ac82a471b', '3');
INSERT INTO `gm_user_role` VALUES ('1680', 'f15b6372a8484615a681a3cba4684e38', '3');
INSERT INTO `gm_user_role` VALUES ('1681', '014054d6b70d4e6dafbd9d58bdd7215b', '3');
INSERT INTO `gm_user_role` VALUES ('1682', '4b80fb44bc88454fa0e2b6d0f5b6cc47', '3');
INSERT INTO `gm_user_role` VALUES ('1683', '2dde60cec72b40c4a225af994cc20ed0', '3');
INSERT INTO `gm_user_role` VALUES ('1684', 'aa859725eb86411a995dd234654a4c3a', '3');
INSERT INTO `gm_user_role` VALUES ('1685', '270c3096df1b426db36b803dff6656cf', '3');
INSERT INTO `gm_user_role` VALUES ('1686', 'b09ade2f718244fb8624b05b3e623d01', '3');
INSERT INTO `gm_user_role` VALUES ('1687', '00004b961fa445a8bc90767422ac3552', '3');
INSERT INTO `gm_user_role` VALUES ('1688', 'e27bf45de5314336bf18b7300e8ec682', '3');
INSERT INTO `gm_user_role` VALUES ('1689', '9671d94db8864fc4a30dfe9c1f77851d', '3');
INSERT INTO `gm_user_role` VALUES ('1690', 'cb68550a915d4f069053be8b132fbb0e', '3');
INSERT INTO `gm_user_role` VALUES ('1691', '803bd92685a941b587f918ae5583ac1a', '3');
INSERT INTO `gm_user_role` VALUES ('1692', '6d034971ffb94fad947fa5856ab2fc14', '3');
INSERT INTO `gm_user_role` VALUES ('1693', '7217a65e005e4505ba6bc8a64d366cbf', '3');
INSERT INTO `gm_user_role` VALUES ('1694', 'a2cf16919858412da6b12aba2c857930', '3');
INSERT INTO `gm_user_role` VALUES ('1695', '725dc349ae1a48d1847f13451e67e3db', '3');
INSERT INTO `gm_user_role` VALUES ('1696', 'd31370a8068b43a4a252c57a3b9ac5d4', '3');
INSERT INTO `gm_user_role` VALUES ('1697', '73065cc7b8e64502b0934243eaa89fd0', '3');
INSERT INTO `gm_user_role` VALUES ('1698', '6881a300600c498d9020117d98232e64', '3');
INSERT INTO `gm_user_role` VALUES ('1699', 'db179f86830243f48aa366883f272cde', '3');
INSERT INTO `gm_user_role` VALUES ('1700', '350f9328a1be4a21ba5fa4aa69c3be51', '3');
INSERT INTO `gm_user_role` VALUES ('1701', 'b2b0797e0c2146c6a21133be01c9eeed', '3');
INSERT INTO `gm_user_role` VALUES ('1702', 'aecbb25071874231a45ac1b536e80fe0', '3');
INSERT INTO `gm_user_role` VALUES ('1703', '514aee902eea433cbe96d653e46f3d6d', '3');
INSERT INTO `gm_user_role` VALUES ('1704', 'c67bac71155046a9b858415db27e765d', '3');
INSERT INTO `gm_user_role` VALUES ('1705', '2b6f4875f4024f2d9d357c18495b8122', '3');
INSERT INTO `gm_user_role` VALUES ('1706', 'af3008307996456eb33bb1139e69c925', '3');
INSERT INTO `gm_user_role` VALUES ('1707', '283ed83f6e4841a0938c8f8a29ec01ce', '3');
INSERT INTO `gm_user_role` VALUES ('1708', 'dd9dbc00e4864a9e8710dec97af4e450', '3');
INSERT INTO `gm_user_role` VALUES ('1709', '25a6d7cc5ecd48cb8affd6b4da6b0c2d', '3');
INSERT INTO `gm_user_role` VALUES ('1710', '0fad34721a9e4a49b315e16ac58c4bf4', '3');
INSERT INTO `gm_user_role` VALUES ('1711', '062e59c6c0e241a29059607cde5c6b21', '3');
INSERT INTO `gm_user_role` VALUES ('1712', 'e49c4bb3131643428a835cc9e8e1c6c9', '3');
INSERT INTO `gm_user_role` VALUES ('1713', 'f716e7831465423caf7c0b5a1cfa60f6', '3');
INSERT INTO `gm_user_role` VALUES ('1714', '1ce8c65dc0c14ceca3795af7baa821d8', '3');
INSERT INTO `gm_user_role` VALUES ('1715', 'e02fdf5022394eaa948ea1ee9b1dab19', '3');
INSERT INTO `gm_user_role` VALUES ('1716', '5510525c29444ea8a99acb6983ffffd9', '3');
INSERT INTO `gm_user_role` VALUES ('1717', '3d7efa27648d4adf97727af2cc17479c', '3');
INSERT INTO `gm_user_role` VALUES ('1718', '7a46c4feb0364957befd2122b3b4d8fb', '3');
INSERT INTO `gm_user_role` VALUES ('1719', 'ee03530439ac47a688f0892052fc2128', '3');
INSERT INTO `gm_user_role` VALUES ('1720', 'eadba67514f1449e82b98e742a032289', '3');
INSERT INTO `gm_user_role` VALUES ('1721', 'e4ba1343184f4d57903c3e1c840cb22d', '3');
INSERT INTO `gm_user_role` VALUES ('1722', 'd9b29d5874ff4fa7a0137bd36edb7bf9', '3');
INSERT INTO `gm_user_role` VALUES ('1723', '3cb08648fdab41e6a9450803f0aaa32f', '3');
INSERT INTO `gm_user_role` VALUES ('1724', 'a6410f4f6c5049b39e1988a783747ad4', '3');
INSERT INTO `gm_user_role` VALUES ('1725', '5ffdb0314edc433aac1eb40a6558ffe8', '3');
INSERT INTO `gm_user_role` VALUES ('1726', '40b075be049c4c7faf850a2b042c7bf5', '3');
INSERT INTO `gm_user_role` VALUES ('1727', '88ec704edd9c4e41b60a65f76b60e9a2', '3');
INSERT INTO `gm_user_role` VALUES ('1728', '0c76260274e54a2da93f5c37b8d885b2', '3');
INSERT INTO `gm_user_role` VALUES ('1729', 'b3c37fbd4167461a8bc18fb43740a14b', '3');
INSERT INTO `gm_user_role` VALUES ('1730', 'db1fafd008764505a307501a06e0a282', '3');
INSERT INTO `gm_user_role` VALUES ('1731', 'e975ea02b537403eae65d3ef79ef4cea', '3');
INSERT INTO `gm_user_role` VALUES ('1732', '5cc120313147424d9aea5ec4cc94db42', '3');
INSERT INTO `gm_user_role` VALUES ('1733', '6e4f35f96f83412cbe2a2500099b3bc7', '3');
INSERT INTO `gm_user_role` VALUES ('1734', 'a9e313df1e894ca5889459656a9df5a8', '3');
INSERT INTO `gm_user_role` VALUES ('1735', '36348346167243acb97914abf5867961', '3');
INSERT INTO `gm_user_role` VALUES ('1736', 'b10624774c3c4341ac4583869d9b5d7c', '3');
INSERT INTO `gm_user_role` VALUES ('1737', '15e737f65b724bc6a1cc21ea8fad96bd', '3');
INSERT INTO `gm_user_role` VALUES ('1738', '75b3aded3443454eb96befd8546841c3', '3');
INSERT INTO `gm_user_role` VALUES ('1739', '33af4aaafbdd49d9b94e6b1e8907f12e', '3');
INSERT INTO `gm_user_role` VALUES ('1740', 'edcd536ca7df4fbfb8a797866432ff33', '3');
INSERT INTO `gm_user_role` VALUES ('1741', '797c2f91798644beb712db40af2488b0', '3');
INSERT INTO `gm_user_role` VALUES ('1742', '87ce0c15cac34764a8735e5bb34cbbef', '3');
INSERT INTO `gm_user_role` VALUES ('1743', '3238cb6f5b0e43269eb57ab6f40d6f80', '3');
INSERT INTO `gm_user_role` VALUES ('1744', 'd7df90e9c4234c139e0f249efdccd1cc', '3');
INSERT INTO `gm_user_role` VALUES ('1745', '618d9586e01b41bebadd0f6e86e36900', '3');
INSERT INTO `gm_user_role` VALUES ('1746', '50a62e3b8b2f482fbee025efdad4a402', '3');
INSERT INTO `gm_user_role` VALUES ('1747', '421bc78ffc8a4bb594c87c5d51d3b0e5', '3');
INSERT INTO `gm_user_role` VALUES ('1748', 'a83ab909d59a4fc3b9411dbe5d01ff84', '3');
INSERT INTO `gm_user_role` VALUES ('1749', '556b1518084c49bf9b4ddb81083c60ac', '3');
INSERT INTO `gm_user_role` VALUES ('1750', 'e7cf65986276436aba11e6a5ba23f0db', '3');
INSERT INTO `gm_user_role` VALUES ('1751', '1f366b59db8942928bd59b348bd1f2f2', '4');

-- ----------------------------
-- Table structure for `gm_wbeparameter`
-- ----------------------------
DROP TABLE IF EXISTS `gm_wbeparameter`;
CREATE TABLE `gm_wbeparameter` (
  `id` varchar(36) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `iphone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gm_wbeparameter
-- ----------------------------
INSERT INTO `gm_wbeparameter` VALUES ('1', '毕业设计管理系统', '0553-2871221', '@ahpu.edu.cn');
