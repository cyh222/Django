/*
Navicat MySQL Data Transfer

Source Server         : cyh
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-29 23:03:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `advice`
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `advice` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of advice
-- ----------------------------
INSERT INTO `advice` VALUES ('1', '123@163.com', 'cyh', '二手房', '随时随地为客户服务');
INSERT INTO `advice` VALUES ('2', 'aaa@qq.com', 'cyh', '交易过程部分', '交易时，应该注意合同是否应该正确有效，满足客户的需求。');

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 用户', '7', 'add_users');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 用户', '7', 'change_users');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 用户', '7', 'delete_users');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 用户', '7', 'view_users');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 二手房', '8', 'add_oldhouse');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 二手房', '8', 'change_oldhouse');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 二手房', '8', 'delete_oldhouse');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 二手房', '8', 'view_oldhouse');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 新房', '9', 'add_newhouse');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 新房', '9', 'change_newhouse');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 新房', '9', 'delete_newhouse');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 新房', '9', 'view_newhouse');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 租房', '10', 'add_renthouse');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 租房', '10', 'change_renthouse');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 租房', '10', 'delete_renthouse');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 租房', '10', 'view_renthouse');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 小区', '11', 'add_village');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 小区', '11', 'change_village');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 小区', '11', 'delete_village');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 小区', '11', 'view_village');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 经纪人', '12', 'add_person');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 经纪人', '12', 'change_person');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 经纪人', '12', 'delete_person');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 经纪人', '12', 'view_person');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 委托记录', '13', 'add_entrust');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 委托记录', '13', 'change_entrust');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 委托记录', '13', 'delete_entrust');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 委托记录', '13', 'view_entrust');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 交易记录', '14', 'add_trade');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 交易记录', '14', 'change_trade');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 交易记录', '14', 'delete_trade');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 交易记录', '14', 'view_trade');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 反馈建议', '15', 'add_advice');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 反馈建议', '15', 'change_advice');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 反馈建议', '15', 'delete_advice');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 反馈建议', '15', 'view_advice');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$120000$MMgtVD8yq2WX$uF0qJFJaQBBtEbQR2xMe48YCXGicRca5EcdCZp78Ra0=', '2019-04-14 07:19:13.380541', '1', 'cyh', '', '', '', '1', '1', '2019-03-29 11:17:19.502022');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-03-29 11:20:41.579346', '1', '二手房', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-03-29 11:29:08.994916', '2', '二手房', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-03-29 11:30:21.460766', '3', '二手房', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-03-29 15:58:47.498135', '2', '二手房', '2', '[{\"changed\": {\"fields\": [\"picture\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-03-29 16:00:27.457602', '1', '二手房', '2', '[{\"changed\": {\"fields\": [\"picture\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-03-30 12:46:35.541281', '1', '新房', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-03-30 12:48:06.882813', '2', '新房', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-03-30 12:49:43.769668', '3', '新房', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-03-30 12:50:55.674338', '2', '新房', '2', '[{\"changed\": {\"fields\": [\"area\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-03-30 12:50:55.774331', '1', '新房', '2', '[{\"changed\": {\"fields\": [\"area\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-03-30 13:02:42.042863', '2', '新房', '2', '[{\"changed\": {\"fields\": [\"point2\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-03-30 13:03:01.606787', '3', '新房', '2', '[{\"changed\": {\"fields\": [\"point2\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-03-30 13:03:18.550050', '1', '新房', '2', '[{\"changed\": {\"fields\": [\"point2\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-03-30 13:41:55.179788', '1', '租房', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-03-30 13:44:01.930180', '2', '租房', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-03-30 13:45:43.550500', '3', '租房', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-03-30 13:46:01.745353', '1', '租房', '2', '[{\"changed\": {\"fields\": [\"area\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-04-02 08:38:51.917108', '1', '小区', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2019-04-02 08:40:38.789142', '2', '小区', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2019-04-02 08:41:48.785187', '3', '小区', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2019-04-03 06:31:58.975183', '4', '新房', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2019-04-03 06:37:24.429218', '4', '新房', '2', '[{\"changed\": {\"fields\": [\"picture\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2019-04-03 07:21:46.700942', '4', '二手房', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2019-04-03 07:29:18.944267', '4', '租房', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2019-04-03 07:32:39.599019', '4', '小区', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2019-04-11 12:36:06.888065', '1', '杨幂', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2019-04-11 13:14:50.331741', '1', '杨幂', '2', '[{\"changed\": {\"fields\": [\"point\"]}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2019-04-11 13:18:49.487272', '2', '刘亦菲', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2019-04-11 13:19:49.221694', '3', '杨洋', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2019-04-11 13:21:37.884406', '4', '黄晓明', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2019-04-12 08:56:46.662361', '5', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2019-04-12 08:56:46.787290', '4', 'pzm', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2019-04-12 08:56:46.875366', '3', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2019-04-12 08:56:46.953390', '2', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2019-04-12 08:56:47.083021', '1', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2019-04-13 07:57:46.068581', '1', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2019-04-13 07:58:27.451626', '7', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2019-04-13 07:58:27.551709', '1', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2019-04-13 15:19:07.878467', '7', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2019-04-13 15:43:52.226700', '9', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2019-04-14 06:47:24.468200', '10', 'cyh', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '13', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'index', 'advice');
INSERT INTO `django_content_type` VALUES ('13', 'index', 'entrust');
INSERT INTO `django_content_type` VALUES ('9', 'new_house', 'newhouse');
INSERT INTO `django_content_type` VALUES ('8', 'old_house', 'oldhouse');
INSERT INTO `django_content_type` VALUES ('12', 'person', 'person');
INSERT INTO `django_content_type` VALUES ('14', 'record', 'trade');
INSERT INTO `django_content_type` VALUES ('10', 'rent_house', 'renthouse');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'userinfo', 'users');
INSERT INTO `django_content_type` VALUES ('11', 'village', 'village');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-03-29 10:50:32.120214');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-03-29 10:50:42.491108');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-03-29 10:50:44.242079');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-03-29 10:50:44.298758');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-03-29 10:50:44.371910');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-03-29 10:50:45.898655');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-03-29 10:50:46.670164');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-03-29 10:50:47.482978');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-03-29 10:50:47.522997');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-03-29 10:50:48.222935');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-03-29 10:50:48.252951');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-03-29 10:50:48.293564');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-03-29 10:50:49.055501');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-03-29 10:50:49.856655');
INSERT INTO `django_migrations` VALUES ('15', 'old_house', '0001_initial', '2019-03-29 10:50:50.959337');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2019-03-29 10:50:51.706978');
INSERT INTO `django_migrations` VALUES ('17', 'userinfo', '0001_initial', '2019-03-29 10:50:52.186929');
INSERT INTO `django_migrations` VALUES ('18', 'new_house', '0001_initial', '2019-03-30 11:41:02.210491');
INSERT INTO `django_migrations` VALUES ('19', 'rent_house', '0001_initial', '2019-03-30 13:38:13.810995');
INSERT INTO `django_migrations` VALUES ('20', 'village', '0001_initial', '2019-04-02 08:29:43.678755');
INSERT INTO `django_migrations` VALUES ('21', 'person', '0001_initial', '2019-04-11 12:26:54.917399');
INSERT INTO `django_migrations` VALUES ('23', 'index', '0001_initial', '2019-04-12 07:39:54.580608');
INSERT INTO `django_migrations` VALUES ('25', 'record', '0001_initial', '2019-04-12 09:53:33.847204');
INSERT INTO `django_migrations` VALUES ('26', 'index', '0002_advice', '2019-04-12 10:50:16.606895');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('05qo44bricmrci6jp0gklw21nuudouo4', 'M2MwZWY3Mzk0YWU4NDM5OGFjYWIwNWE2Y2Q5NDA3Y2U3NGM1MGVmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4In0=', '2019-03-30 13:57:14.218943');
INSERT INTO `django_session` VALUES ('09ozi4ws5ycp2682lfog72pmqqr0l57a', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 14:25:26.566179');
INSERT INTO `django_session` VALUES ('0nmynluhbf39ilhmahrqqaluwkukhgmp', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 09:57:14.243695');
INSERT INTO `django_session` VALUES ('3gvmwfrgf9v9fvnk83cfd9iqrfzz5ail', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-18 11:21:24.029601');
INSERT INTO `django_session` VALUES ('4an32hrx85egcxyrhovwgi00soxbse3g', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-11 11:48:27.318942');
INSERT INTO `django_session` VALUES ('4lj00vzbg8s6yo0zwa7t2ajs65nmrc0q', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-14 05:35:33.485836');
INSERT INTO `django_session` VALUES ('5kplg59kvktsnn0vh820p3vh706eolvi', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-03-30 14:32:29.861110');
INSERT INTO `django_session` VALUES ('6aem9xshzr8b3rrq97lhqxzn2no5eqxi', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 07:16:16.242880');
INSERT INTO `django_session` VALUES ('8s98ibcphu2872jebih5u9pqaf288jfo', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 09:24:22.004133');
INSERT INTO `django_session` VALUES ('8x0pcunpe8b9oqi7ayfl5dxkwbsqcilp', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-10 05:15:46.020500');
INSERT INTO `django_session` VALUES ('9le5tocoskfd5jdagq9rhwues2h0fvfk', 'M2MwZWY3Mzk0YWU4NDM5OGFjYWIwNWE2Y2Q5NDA3Y2U3NGM1MGVmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4In0=', '2019-04-13 15:48:48.877129');
INSERT INTO `django_session` VALUES ('9y9gnlpce32mnxm8tmlc5piuye76lfa4', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 15:27:55.939469');
INSERT INTO `django_session` VALUES ('b3z3h7rvg2xps517pbndvlyt6nyvlyvm', 'NjcwOGJkZmY0MGNkNDQ1YmMyYmMxYjAwYTY2NGI1ZTcwZWIzOGZjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4IiwidWlkIjoxLCJ1bmFtZSI6ImN5aCJ9', '2019-03-29 16:34:05.359619');
INSERT INTO `django_session` VALUES ('bewwuu4qyw5q7ule0ciydtgca1muqwye', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-04-12 07:32:40.958266');
INSERT INTO `django_session` VALUES ('bglwiwsj2vrf51pczx1hinyl1lvb3sji', 'NjcwOGJkZmY0MGNkNDQ1YmMyYmMxYjAwYTY2NGI1ZTcwZWIzOGZjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4IiwidWlkIjoxLCJ1bmFtZSI6ImN5aCJ9', '2019-04-11 14:02:25.195523');
INSERT INTO `django_session` VALUES ('bvclo4xx0djddcko9lvmkp77g1tymau4', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-11 10:01:17.408353');
INSERT INTO `django_session` VALUES ('c87e8ojgfo6dcda4gp5p7jnjxi9fc16x', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 11:42:14.075231');
INSERT INTO `django_session` VALUES ('cgzatijgso7184g8oqubq7959bhxiur1', 'ZTkwNmE0ZWU0MDE0ZTdkNzA1OWY1NGMyYTBiMGUxZjI4YTg2NjAwOTp7fQ==', '2019-03-30 10:47:46.081364');
INSERT INTO `django_session` VALUES ('cql1d0pdp6vbw402mznyiudtiu7r0861', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 13:51:45.733167');
INSERT INTO `django_session` VALUES ('cs9vo58zhpve94ohpu2nple8kfn19zu2', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 09:26:01.201859');
INSERT INTO `django_session` VALUES ('d3s1z24e9qqoika66vvmqppt0t4gp4rt', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 10:26:42.094686');
INSERT INTO `django_session` VALUES ('d6xli7e14plo7zpf5lm9gjyr2re3loa4', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-04-09 13:41:33.107795');
INSERT INTO `django_session` VALUES ('diaxjjro9t308ei8vj0mtjfiz05a2os4', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 08:30:21.507203');
INSERT INTO `django_session` VALUES ('dzcy96tusp7wa20wge02g4xwegzwujpf', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-03-31 05:17:24.421401');
INSERT INTO `django_session` VALUES ('e54k7bsdbj72cfe8epwiwitncj6pa0oi', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-26 07:27:59.215034');
INSERT INTO `django_session` VALUES ('efwq8rirlh4m1y0b88eebbudupb16cvi', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-10 09:47:29.143450');
INSERT INTO `django_session` VALUES ('epm067yjehqj7s50q23hr5k4ucullyrk', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 12:25:50.000615');
INSERT INTO `django_session` VALUES ('f8s6c28k11lyqvj3v9ag4u3cmk9pmy7a', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 04:58:48.099151');
INSERT INTO `django_session` VALUES ('fldg67mb1ch463e82kcroke8lhrghx1w', 'ZTkwNmE0ZWU0MDE0ZTdkNzA1OWY1NGMyYTBiMGUxZjI4YTg2NjAwOTp7fQ==', '2019-04-18 13:09:30.757842');
INSERT INTO `django_session` VALUES ('fqf3yyrt0suyqdxv9i87034jr67yjjla', 'ZTkwNmE0ZWU0MDE0ZTdkNzA1OWY1NGMyYTBiMGUxZjI4YTg2NjAwOTp7fQ==', '2019-04-12 13:28:01.063040');
INSERT INTO `django_session` VALUES ('fv7gi74swreujieq0eaqes69q7oenp0h', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-27 02:09:42.442729');
INSERT INTO `django_session` VALUES ('g7xgv6fpyvwkplohec2ur7xcs2xaxyzd', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 11:22:52.084311');
INSERT INTO `django_session` VALUES ('g989ytqzl960h07yc1ccnjubz1s4zude', 'ZTkwNmE0ZWU0MDE0ZTdkNzA1OWY1NGMyYTBiMGUxZjI4YTg2NjAwOTp7fQ==', '2019-03-29 12:30:52.592637');
INSERT INTO `django_session` VALUES ('gv2d5mpsugrkuot7za8xhpi8surym6rw', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-04-11 12:58:33.185067');
INSERT INTO `django_session` VALUES ('h66nqvsp9bysl8izxhl0g29j0c47h9wx', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 13:32:44.494706');
INSERT INTO `django_session` VALUES ('hc8ug3cp6o35gqaduwqifopsl3077kx5', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-04-12 09:26:16.925030');
INSERT INTO `django_session` VALUES ('hnkr325kyx4bpnjqgl234cg37j8ywka2', 'NjcwOGJkZmY0MGNkNDQ1YmMyYmMxYjAwYTY2NGI1ZTcwZWIzOGZjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4IiwidWlkIjoxLCJ1bmFtZSI6ImN5aCJ9', '2019-04-02 09:43:54.006202');
INSERT INTO `django_session` VALUES ('iia5gx2uvhanvy7bt9e3n9osxenyiwrf', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 06:59:03.574062');
INSERT INTO `django_session` VALUES ('isp8jglf87cpamqrrz1hekkvu9hy1vo4', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 05:43:55.733565');
INSERT INTO `django_session` VALUES ('k035g8h8wyjk49slfgnekelefvn4fgvz', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-14 06:41:11.886576');
INSERT INTO `django_session` VALUES ('k5m7d6ertfhlm82kbrbfv5iicpurvhus', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-03 05:52:01.633414');
INSERT INTO `django_session` VALUES ('khtznsxlkgyrjtd9nn8q7pr68j7n1sx3', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-04-05 10:47:57.071613');
INSERT INTO `django_session` VALUES ('ksia4p7xa2i7maybrnft35wu8cwjxtia', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-25 13:50:44.621466');
INSERT INTO `django_session` VALUES ('l4kmfcs6u1muevxi3s7k988d5cf5238a', 'ZTkwNmE0ZWU0MDE0ZTdkNzA1OWY1NGMyYTBiMGUxZjI4YTg2NjAwOTp7fQ==', '2019-04-13 16:15:30.611228');
INSERT INTO `django_session` VALUES ('l6h2i8vz8o6kwzehbu05e3c8bdhizolj', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 09:34:16.182821');
INSERT INTO `django_session` VALUES ('lf728yb85n706j5nvx4qb629kneaootd', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 13:19:47.864160');
INSERT INTO `django_session` VALUES ('lv4fxra2c9v9idkhb742l2hvzmuvnn8v', 'ZTkwNmE0ZWU0MDE0ZTdkNzA1OWY1NGMyYTBiMGUxZjI4YTg2NjAwOTp7fQ==', '2019-04-11 11:40:40.054804');
INSERT INTO `django_session` VALUES ('lxmjog6jfceliay850389po5ilqmkl5h', 'M2MwZWY3Mzk0YWU4NDM5OGFjYWIwNWE2Y2Q5NDA3Y2U3NGM1MGVmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4In0=', '2019-04-14 07:49:13.408525');
INSERT INTO `django_session` VALUES ('mkt71kiemkq0x0k1trrc6cq9oxucvhu9', 'M2MwZWY3Mzk0YWU4NDM5OGFjYWIwNWE2Y2Q5NDA3Y2U3NGM1MGVmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4In0=', '2019-04-03 08:20:35.996013');
INSERT INTO `django_session` VALUES ('mugvkr1ldccddfhpvys5rt4loutkdcm9', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-11 14:30:07.026686');
INSERT INTO `django_session` VALUES ('n77dmh5fvjnzks23ymeftebaopvcdrza', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 12:50:07.720706');
INSERT INTO `django_session` VALUES ('nb8f3bh4ae8rg5sss4hhm23vat12iv9u', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 14:57:16.763279');
INSERT INTO `django_session` VALUES ('niftlouibnvey3vm7squb1xjitpvzwx5', 'M2MwZWY3Mzk0YWU4NDM5OGFjYWIwNWE2Y2Q5NDA3Y2U3NGM1MGVmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4In0=', '2019-03-30 12:11:46.072432');
INSERT INTO `django_session` VALUES ('nosni28acxzr99849aly1whqunwon87s', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 12:39:52.725489');
INSERT INTO `django_session` VALUES ('nukzxz1quwtz368bo8pecbqkb12o3boq', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-03-30 09:46:05.519977');
INSERT INTO `django_session` VALUES ('nxt14kpevk7rnw5h4xikrjj8bli1ah73', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-04-14 07:16:59.612347');
INSERT INTO `django_session` VALUES ('o27ioqb5pi80rdw464qa3zdkjksiupu6', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-03-29 11:47:56.783120');
INSERT INTO `django_session` VALUES ('o6rgkxg8f3wiv434fb92k6ysyzitohlw', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-11 16:56:55.929724');
INSERT INTO `django_session` VALUES ('ogaszyk71fccgf2dg8bax5lx5ql382no', 'MmI3NmFiYTliMWI4ZTBlNTNiYjI2ZGZjNWU2NGY5ZWY5NjQ3NWQ0ZTp7InVpZCI6MSwidW5hbWUiOiJjeWgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGYwM2ViNGEyNmU4MTg3MDlhZjg1MDQzZTk5ZmM4ZjQ0YWI1MGM3OCJ9', '2019-04-13 08:27:22.481994');
INSERT INTO `django_session` VALUES ('oj8gnybygkpw0r1qtzw6u3029q4ll5uc', 'M2MwZWY3Mzk0YWU4NDM5OGFjYWIwNWE2Y2Q5NDA3Y2U3NGM1MGVmMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZjAzZWI0YTI2ZTgxODcwOWFmODUwNDNlOTlmYzhmNDRhYjUwYzc4In0=', '2019-04-03 06:59:22.708422');
INSERT INTO `django_session` VALUES ('onkiffq4jm13okko3iugfwzu6xfbuv3u', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 04:42:56.236332');
INSERT INTO `django_session` VALUES ('pflq0vnzh3bzel0ib9it0dwmygh9y32l', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-10 13:26:23.883615');
INSERT INTO `django_session` VALUES ('puavrh313iy29d5d9y44r2tuvmdjkhfz', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-18 11:28:43.001590');
INSERT INTO `django_session` VALUES ('q7f7rc69evaw24kf9c0b8kdax3ykhj8f', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 10:52:26.862441');
INSERT INTO `django_session` VALUES ('qukp53bdzaen2hiydlshup75xq6slv66', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-03-30 15:49:30.332057');
INSERT INTO `django_session` VALUES ('rqyirkevc7zulhno396pl1oiiqeltgdu', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 12:13:39.272804');
INSERT INTO `django_session` VALUES ('s6f9x3l5og1ce28749voclx5ysm9f5tu', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-03 05:48:13.207305');
INSERT INTO `django_session` VALUES ('smu6xah86toh6km7aqw5cm4ew5be9d9a', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-03 09:10:08.608551');
INSERT INTO `django_session` VALUES ('tdfy57vsoidenh53ofqq59psjum3g2ih', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 14:18:26.263985');
INSERT INTO `django_session` VALUES ('vbc7cpqd7b1nukfeaaql65rt4jjjf6aw', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-02 08:00:43.061641');
INSERT INTO `django_session` VALUES ('vuwt802jlxnvt1yf5nvnej3plp50vkfv', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 08:12:31.127349');
INSERT INTO `django_session` VALUES ('wa570g32y1jjimrv3z2hgmfca36gwfrr', 'ZTkwNmE0ZWU0MDE0ZTdkNzA1OWY1NGMyYTBiMGUxZjI4YTg2NjAwOTp7fQ==', '2019-04-10 08:51:23.652361');
INSERT INTO `django_session` VALUES ('wdx59kn95s1xee2xllhb3nkqz6prdwrs', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 06:39:29.629521');
INSERT INTO `django_session` VALUES ('wvtm7nr6f4uududyrbmqflqfx3joi4t6', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 11:24:04.943513');
INSERT INTO `django_session` VALUES ('wz51abd4bctehrmevie3eevyf6cmubrn', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 03:46:13.862718');
INSERT INTO `django_session` VALUES ('xd8fzh9ajqej99h72abdlcj3ztb5i6yg', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 10:06:17.342955');
INSERT INTO `django_session` VALUES ('xt3dcnpdojgfpnr0rsy9gpcdz1eogjqr', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-12 06:25:26.281543');
INSERT INTO `django_session` VALUES ('zb35iop6yu91ckgetbgwdnwrjazfmqfx', 'ZDA5NWY3MTMxMDlkYTNhNWQyZGJlNjZhNzExZTU1MThmZWRiNGYyYTp7InVpZCI6MSwidW5hbWUiOiJjeWgifQ==', '2019-04-13 11:53:30.875367');
INSERT INTO `django_session` VALUES ('zxcu9rg7t9v8irsqkzclwrkyz4ai2rg6', 'ZWM1OGQ0NGI2OTI3MWIwOGNiNTRhZTAwYzA5NjVkODA4YzE3YzZjODp7InVpZCI6MiwidW5hbWUiOiJwem0ifQ==', '2019-04-12 10:53:08.259980');

-- ----------------------------
-- Table structure for `entrust`
-- ----------------------------
DROP TABLE IF EXISTS `entrust`;
CREATE TABLE `entrust` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `person` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `entrust` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of entrust
-- ----------------------------
INSERT INTO `entrust` VALUES ('1', 'cyh', '15703031610', '二手房', '可看江 正规两室 精装修 保养很好', '成都', '锦绣江南', '2019-04-14T03:57', '杨幂', '看房预约', '处理中');
INSERT INTO `entrust` VALUES ('2', 'cyh', '15703031610', '二手房', '沙滨路 精装两房 保养很好 朝向安静 采光好', '上海', '江枫美岸', '2019-04-14T14:06', '刘亦菲', '看房预约', '处理中');
INSERT INTO `entrust` VALUES ('3', 'cyh', '15703031610', '小区', '龙湖源著北区', '重庆', '协信城', '2019-04-10T14:15', '杨洋', '看房预约', '处理中');
INSERT INTO `entrust` VALUES ('4', 'pzm', '15703031613', '二手房', '新牌坊 金城地豪，跃层装修大两房客厅挑高', '杭州', '荷塘月色', '2019-04-28T09:10', '杨洋', '看房预约', '处理中');
INSERT INTO `entrust` VALUES ('5', 'cyh', '15703031610', '小区', '世茂茂悦府一二期高层', '重庆', '照母山', '2019-04-14T05:56', '刘亦菲', '看房预约', '处理中');
INSERT INTO `entrust` VALUES ('6', 'cyh', '15703031610', '小区', '阳光100国际新城', '重庆', '国际新城', '2019-04-28T04:07', '刘亦菲', '看房预约', '处理中');
INSERT INTO `entrust` VALUES ('7', 'cyh', '15703031610', '二手房', '龙湖U城一组团 1室0厅', '重庆', '龙湖时代', '2019-04-19T02:58', '杨幂', '卖房/出租申请', '已发布');
INSERT INTO `entrust` VALUES ('8', 'cyh', '15703031610', '二手房', '黄泥磅郑家院子轻轨，正规两房，户型方正，朝南，精装。', '重庆', '两代一家', '2019-04-19T04:03', '杨洋', '看房预约', '处理中');
INSERT INTO `entrust` VALUES ('9', 'cyh', '15703031610', '租房', '整租 · 龙湖春森彼岸 3室2厅', '北京', '华宇锦绣', '2019-04-28T01:06', '杨洋', '卖房/出租申请', '已发布');
INSERT INTO `entrust` VALUES ('10', 'cyh', '15703031610', '新房', '保利N+公寓 · 重庆保利N+翠云小院青年社区B', '杭州', '协信城', '2019-04-20T04:05', '黄晓明', '卖房/出租申请', '已发布');
INSERT INTO `entrust` VALUES ('11', 'cyh', '15703031611', '二手房', '黄泥磅郑家院子轻轨，正规两房，户型方正，朝南，精装。', '重庆', '两代一家', '2019-04-20T06:54', '黄晓明', '看房预约', '处理中');

-- ----------------------------
-- Table structure for `new_house`
-- ----------------------------
DROP TABLE IF EXISTS `new_house`;
CREATE TABLE `new_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(11) NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `addr` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `standard` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `direction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `elevator` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor_stand` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bulid_time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point1` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point3` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of new_house
-- ----------------------------
INSERT INTO `new_house` VALUES ('1', '新房', '200', 'static/images/oldhouse/04d5cae8-3621-4086-9274-f9a5717a93ce.250x182.jpg', '协信城立方端头户型三室精装修业主诚心出售', '重庆', '协信城', '2室2厅', '100平米', '北', '有', '高', '25', '2018', '近地铁', '环境优美', '随时看房');
INSERT INTO `new_house` VALUES ('2', '新房', '250', 'static/images/oldhouse/81acd25a-9fc5-43d7-8d90-5b8c16a845d0.250x182.jpg', '华宇锦绣花城二期 高层清水住房 业主诚售', '北京', '华宇锦绣', '3室2厅', '120.65平米', '南', '有', '高', '30', '2018', '近地铁', '环境优美', '随时看房');
INSERT INTO `new_house` VALUES ('3', '新房', '190', 'static/images/oldhouse/c23f6cc1-ab7a-45c1-880c-f73e38d36c06.jpg.296x216.jpg', '渝北照母山 品质楼盘约克郡悦水岸 清水四房', '重庆', '照母山', '2室2厅', '90.75平米', '南', '有', '高', '25', '2009', '近地铁', '环境优美', '随时看房');
INSERT INTO `new_house` VALUES ('4', '新房', '300', 'static/images/oldhouse/63436e42-84f6-49b3-bc88-9005a7ae7b73.jpg.296x216.jpg', '长安锦绣城', '重庆', '华宇锦绣', '3室2厅', '90.75平米', '南', '有', '高', '20', '2015', '近地铁', '环境优美', '随时看房');
INSERT INTO `new_house` VALUES ('6', '新房', '135', 'static/images/oldhouse/65e119006943dcda7076329a07aa0447.jpg.250x182.jpg', '保利N+公寓 · 重庆保利N+翠云小院青年社区B', '杭州', '协信城', '3室2厅', '90.75平米 ', '东南', '有', '高', '20', '2015', '近地铁', '环境优美', '随时看房');

-- ----------------------------
-- Table structure for `old_house`
-- ----------------------------
DROP TABLE IF EXISTS `old_house`;
CREATE TABLE `old_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(11) NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `addr` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `standard` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `direction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `elevator` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor_stand` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bulid_time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point1` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point3` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of old_house
-- ----------------------------
INSERT INTO `old_house` VALUES ('1', '二手房', '100', 'static/images/oldhouse/05fbc16c-0acf-4d70-8aad-0d6020205133.jpg.296x216.jpg', '黄泥磅郑家院子轻轨，正规两房，户型方正，朝南，精装。', '重庆', '两代一家', '2室1厅', '76.75平米', '南', '有', '高', '20', '2009', '近地铁', '房本满五年', '随时看房');
INSERT INTO `old_house` VALUES ('2', '二手房', '120', 'static/images/oldhouse/7d580c59-0b68-4840-9997-008b7d1fa634.jpg.296x216.jpg', '可看江 正规两室 精装修 保养很好', '成都', '锦绣江南', '2室2厅', '80.75平米', '北', '有', '高', '20', '2015', '近地铁', '房本满五年', '随时看房');
INSERT INTO `old_house` VALUES ('3', '二手房', '150', 'static/images/oldhouse/prod-bc114ffa-5e35-4511-800c-862716ffe216.jpg.296x216.jpg', '新牌坊 金城地豪，跃层装修大两房客厅挑高', '杭州', '荷塘月色', '2室1厅', '90.75平米', '南', '有', '高', '20', '2018', '近地铁', '房本满五年', '随时看房');
INSERT INTO `old_house` VALUES ('4', '二手房', '112', 'static/images/oldhouse/d7015f34-cc01-4529-878b-53fe602ecb29.JPG.296x216.jpg', '沙滨路 精装两房 保养很好 朝向安静 采光好', '上海', '江枫美岸', '2室1厅', '79.44平米', '东南', '有', '高', '20', '2018', '近地铁', '环境优美', '随时看房');
INSERT INTO `old_house` VALUES ('5', '二手房', '100', 'static/images/oldhouse/b6da80e265e0a109cc3ef26c91711782.jpg.250x182.jpg', '龙湖U城一组团 1室0厅', '重庆', '龙湖时代', '2室1厅', '76.75平米 ', '东南', '有', '高', '20', '2018', '近地铁', '环境优美', '随时看房');

-- ----------------------------
-- Table structure for `person`
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1', '杨幂', '15703031610', 'static/images/person/cab2ffa9671805985e30b6f5fe47f5fa.jpeg', '重庆渝北区', '高级经纪人', '9.8', '能根据用户的需求提供服务，专业知识丰富。');
INSERT INTO `person` VALUES ('2', '刘亦菲', '15703031611', 'static/images/person/6c4caf64e28571c9694bf5ffbd95c8f0.jpg', '杭州西湖', '高级经纪人', '9.7', '能根据用户的需求提供服务，专业知识丰富。');
INSERT INTO `person` VALUES ('3', '杨洋', '15703031612', 'static/images/person/0b73e3d27d8a0e414d48974211a0bd89.jpeg', '上海浦东', '高级经纪人', '9.6', '能根据用户的需求提供服务，专业知识丰富。');
INSERT INTO `person` VALUES ('4', '黄晓明', '15703031613', 'static/images/person/8a03769c829d206ac7892eba98a40516.jpg', '深圳龙湖区', '高级经纪人', '9.5', '能根据用户的需求提供服务，专业知识丰富。');

-- ----------------------------
-- Table structure for `rent_house`
-- ----------------------------
DROP TABLE IF EXISTS `rent_house`;
CREATE TABLE `rent_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(11) NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `addr` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `standard` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `direction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `elevator` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor_stand` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bulid_time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point1` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point3` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rent_house
-- ----------------------------
INSERT INTO `rent_house` VALUES ('1', '租房', '5900', 'static/images/renthouse/2ec4e467-c954-403d-a7a2-730e12651d28.250x182.jpg', '魔方公寓 · 深圳南山科技园店', '深圳', '魔方公寓', '1室1厅1卫', '45平米', '东南', '有', '高', '20', '2018', '近地铁', '环境优美', '拎包入住');
INSERT INTO `rent_house` VALUES ('2', '租房', '11000', 'static/images/renthouse/e3ede30a-3d3c-4855-8d68-2151abaa5e0a.jpg.250x182.jpg', '星河盛世5房家私齐全 白石龙地铁近 视野开阔', '深圳', '星河盛世', '5室1厅2卫', '133平米', '南', '有', '高', '30', '2015', '近地铁', '环境优美', '拎包入住');
INSERT INTO `rent_house` VALUES ('3', '租房', '23000', 'static/images/renthouse/prod-06e9519a-433c-4494-a964-d5de9644c23f.jpg.250x182.jpg', '双地铁口 梅林的繁华地段 闹中取静', '成都', '梅林', '5室1厅4卫', '145平米', '东南', '有', '高', '25', '2018', '近地铁', '环境优美', '拎包入住');
INSERT INTO `rent_house` VALUES ('4', '租房', '2999', 'static/images/renthouse/07f65e63-a45b-4e06-89f2-c009fd371094.250x182.jpg', '整租 · 佳华北宸里 2室2厅', '上海', '佳华北宸里', '2室2厅', '80.75平米', '南', '有', '高', '20', '2015', '近地铁', '环境优美', '随时看房');
INSERT INTO `rent_house` VALUES ('5', '租房', '3000', 'static/images/renthouse/0c5bf8c8-8371-41cd-9767-02ada450c667.250x182.jpg', '整租 · 龙湖春森彼岸 3室2厅', '北京', '华宇锦绣', '3室2厅', '90.75平米 ', '南', '有', '高', '30', '2018', '近地铁', '环境优美', '拎包入住');

-- ----------------------------
-- Table structure for `trade`
-- ----------------------------
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `card` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime(6) NOT NULL,
  `person` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `entrust` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of trade
-- ----------------------------
INSERT INTO `trade` VALUES ('1', 'cyh', '15703031610', '500224199606296936', '租房', '星河盛世5房家私齐全 白石龙地铁近 视野开阔', '深圳', '星河盛世', '2019-04-12 09:55:47.001865', '杨洋', '交易申请', '交易中');
INSERT INTO `trade` VALUES ('2', 'cyh', '15703031610', '500224199606296936', '小区', '亚太商谷', '北京', '两代一家', '2019-04-12 10:06:15.113548', '杨幂', '交易申请', '交易中');
INSERT INTO `trade` VALUES ('3', 'cyh', '15703031610', '500224199606296936', '租房', '魔方公寓 · 深圳南山科技园店', '深圳', '魔方公寓', '2019-04-12 10:08:12.614238', '杨幂', '交易申请', '交易中');
INSERT INTO `trade` VALUES ('4', 'cyh', '15703031610', '500224199606296936', '租房', '整租 · 佳华北宸里 2室2厅', '上海', '佳华北宸里', '2019-04-12 10:13:24.172273', '杨洋', '交易申请', '交易中');
INSERT INTO `trade` VALUES ('5', 'pzm', '15703031611', '500224199606296966', '二手房', '新牌坊 金城地豪，跃层装修大两房客厅挑高', '杭州', '荷塘月色', '2019-04-12 10:23:42.462079', '杨幂', '交易申请', '交易中');
INSERT INTO `trade` VALUES ('6', 'cyh', '15703031610', '500224199606296966', '二手房', '新牌坊 金城地豪，跃层装修大两房客厅挑高', '杭州', '荷塘月色', '2019-04-14 07:08:13.408671', '杨幂', '交易申请', '交易中');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `uemail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `upwd` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'cyh', 'ccc@qq.com', 'cyh_1996');
INSERT INTO `user` VALUES ('2', 'pzm', '123@163.com', 'pzm_1996');

-- ----------------------------
-- Table structure for `village`
-- ----------------------------
DROP TABLE IF EXISTS `village`;
CREATE TABLE `village` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(11) NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describe` longtext COLLATE utf8_unicode_ci NOT NULL,
  `addr` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `village` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `standard` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `direction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `elevator` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor_stand` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `floor` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bulid_time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `charge` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bulids` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `point1` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `point3` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of village
-- ----------------------------
INSERT INTO `village` VALUES ('1', '小区', '15890', 'static/images/renthouse/4bacf4d8-6eaf-49a7-8161-4204829c720e.JPG.232x174.jpg', '世茂茂悦府一二期高层', '重庆', '照母山', '3室2厅', '90.75平米', '南', '有', '高', '20', '2016', '上海南京世贸物业服务公司', '2.8', '14', '3173', '近地铁', '环境优美', '随时看房');
INSERT INTO `village` VALUES ('2', '小区', '13260', 'static/images/renthouse/4f50703c-df81-4be3-97aa-36801ad39a95.jpg.232x174.jpg', '亚太商谷', '北京', '两代一家', '3室2厅', '76.75平米', '东南', '有', '高', '30', '2009', '上海南京世贸物业服务公司', '2.8', '14', '8256', '近地铁', '环境优美', '随时看房');
INSERT INTO `village` VALUES ('3', '小区', '18369', 'static/images/renthouse/dc9c883e-ddfd-4792-9f1c-ed1eb6812863.jpg.232x174.jpg', '龙湖源著北区', '重庆', '协信城', '2室2厅', '80.75平米', '东南', '有', '高', '30', '2018', '上海南京世贸物业服务公司', '2.8', '40', '5123', '近地铁', '环境优美', '随时看房');
INSERT INTO `village` VALUES ('4', '小区', '15608', 'static/images/renthouse/e6e14aee-e59e-43f9-8121-17c21253a5d0.jpg.232x174.jpg', '阳光100国际新城', '重庆', '国际新城', '2室1厅', '76.75平米', '南', '有', '高', '20', '2018', '重庆渝能物业管理公司', '2.8', '19', '4399', '近地铁', '环境优美', '随时看房');
